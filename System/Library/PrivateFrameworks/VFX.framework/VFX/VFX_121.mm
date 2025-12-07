uint64_t sub_1AFA5B748(void *a1, uint64_t (*a2)(void))
{
  v3 = v2;
  v5 = a2(0);
  *(v3 + v5[10]) = 1;
  v6 = v5[11];
  v7 = *(v3 + v6);
  v8 = a1;

  *(v3 + v6) = a1;
  v9 = a1;
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    v10 = v32;
    v11 = v33;
    if (v36 == 1)
    {
      v12 = (v3 + v5[12]);

      *v12 = v32;
      v12[1] = v33;
      if (v35)
      {
        v13 = sub_1AF458208(v34, v35);
        v15 = v14;

LABEL_10:
        v20 = v13;
        goto LABEL_20;
      }

LABEL_18:
      v20 = 0;
      goto LABEL_19;
    }

    sub_1AF456D9C(v32, v33, v34, v35, v36);
  }

  v16 = a1;
  if (swift_dynamicCast())
  {
    if (v36 == 2)
    {
      swift_getErrorValue();
      v10 = sub_1AFDFF1D8();
      v11 = v17;
      v18 = (v3 + v5[12]);

      *v18 = v10;
      v18[1] = v11;
      if (v34)
      {
        v13 = sub_1AF458208(v33, v34);
        v15 = v19;

        goto LABEL_10;
      }

      goto LABEL_18;
    }

    sub_1AF456D9C(v32, v33, v34, v35, v36);
  }

  v21 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v10 = v32;
  v11 = v33;
  if (v36 != 3)
  {
    sub_1AF456D9C(v32, v33, v34, v35, v36);
LABEL_15:
    swift_getErrorValue();
    v10 = sub_1AFDFF1D8();
    v11 = v22;
  }

  v23 = (v3 + v5[12]);

  v20 = 0;
  *v23 = v10;
  v23[1] = v11;
LABEL_19:
  v15 = 1;
LABEL_20:
  v24 = sub_1AF458308(v10, v11, v20, v15 & 1);
  v25 = v5[13];

  *(v3 + v25) = v24;
  v27 = v3[6];
  if (v27)
  {
    v28 = v3[7];
    v30 = v3[1];
    v29 = v3[2];
    sub_1AF0FBD8C(v27, v28);
    v31 = sub_1AF458B0C(v30, v29);
    v27(v24, v31);

    return sub_1AF0FB8EC(v27, v28);
  }

  return result;
}

uint64_t sub_1AFA5BA44(void *a1)
{
  v2 = v1;
  sub_1AF5B25A4(0);
  v5 = v4;
  *(v2 + *(v4 + 40)) = 1;
  v6 = *(v4 + 44);
  v7 = *(v2 + v6);
  v8 = a1;

  *(v2 + v6) = a1;
  v9 = a1;
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  if (swift_dynamicCast())
  {
    v10 = v33;
    v11 = v34;
    if (v37 == 1)
    {
      v12 = (v2 + *(v5 + 48));

      *v12 = v33;
      v12[1] = v34;
      if (v36)
      {
        v13 = sub_1AF458208(v35, v36);
        v15 = v14;

LABEL_10:
        v20 = v13;
        goto LABEL_20;
      }

LABEL_18:
      v20 = 0;
      goto LABEL_19;
    }

    sub_1AF456D9C(v33, v34, v35, v36, v37);
  }

  v16 = a1;
  if (swift_dynamicCast())
  {
    if (v37 == 2)
    {
      swift_getErrorValue();
      v10 = sub_1AFDFF1D8();
      v11 = v17;
      v18 = (v2 + *(v5 + 48));

      *v18 = v10;
      v18[1] = v11;
      if (v35)
      {
        v13 = sub_1AF458208(v34, v35);
        v15 = v19;

        goto LABEL_10;
      }

      goto LABEL_18;
    }

    sub_1AF456D9C(v33, v34, v35, v36, v37);
  }

  v21 = a1;
  if (!swift_dynamicCast())
  {
    goto LABEL_15;
  }

  v10 = v33;
  v11 = v34;
  if (v37 != 3)
  {
    sub_1AF456D9C(v33, v34, v35, v36, v37);
LABEL_15:
    swift_getErrorValue();
    v10 = sub_1AFDFF1D8();
    v11 = v22;
  }

  v23 = (v2 + *(v5 + 48));

  v20 = 0;
  *v23 = v10;
  v23[1] = v11;
LABEL_19:
  v15 = 1;
LABEL_20:
  v24 = sub_1AF458308(v10, v11, v20, v15 & 1);
  v25 = *(v5 + 52);

  *(v2 + v25) = v24;
  result = type metadata accessor for EmitterScript(0);
  v27 = (v2 + *(result + 36));
  v28 = *v27;
  if (*v27)
  {
    v29 = v27[1];
    v31 = *(v2 + 8);
    v30 = *(v2 + 16);
    sub_1AF0FBD8C(*v27, v29);
    v32 = sub_1AF458B0C(v31, v30);
    v28(v24, v32);

    return sub_1AF0FB8EC(v28, v29);
  }

  return result;
}

void sub_1AFA5BD4C(uint64_t a1@<X8>)
{
  *a1 = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 32) = MEMORY[0x1E69E7CC0];
  *(a1 + 40) = 0;
  inited = type metadata accessor for ParticleInitScript(0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v4 = *(inited + 40);
  v5 = type metadata accessor for ScriptIndex(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + 16) = 0x80000001AFF2B900;
  *(a1 + 24) = &unk_1F24FDAB0;
  *(a1 + 8) = 0xD0000000000000BFLL;
  sub_1AF5B234C(0);
  v7 = a1 + v6[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  *(a1 + v6[10]) = 0;
  *(a1 + v6[11]) = 0;
  v8 = (a1 + v6[12]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(a1 + v6[13]) = v2;
}

void sub_1AFA5BE44(uint64_t a1@<X8>)
{
  *(a1 + 16) = 2;
  v2 = type metadata accessor for ShaderScript(0);
  v3 = v2[6];
  v4 = type metadata accessor for ScriptIndex(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  *(a1 + v2[8]) = &unk_1F24FDAE0;
  *a1 = 0;
  *(a1 + 8) = 0xE000000000000000;
  sub_1AF5B23C4(0);
  v7 = a1 + v6[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  *(a1 + v6[10]) = 0;
  *(a1 + v6[11]) = 0;
  v8 = (a1 + v6[12]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(a1 + v6[13]) = MEMORY[0x1E69E7CC0];
}

void sub_1AFA5BF30(uint64_t a1@<X8>)
{
  *(a1 + 16) = 2;
  v2 = type metadata accessor for MetalFunctionScript(0);
  v3 = v2[6];
  v4 = type metadata accessor for ScriptIndex(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + v2[7]);
  *v5 = 0;
  v5[1] = 0;
  *(a1 + v2[9]) = 0;
  *(a1 + v2[8]) = &unk_1F24FDB20;
  *a1 = 0xD000000000000129;
  *(a1 + 8) = 0x80000001AFF455A0;
  sub_1AF5B243C(0);
  v7 = a1 + v6[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  *(a1 + v6[10]) = 0;
  *(a1 + v6[11]) = 0;
  v8 = (a1 + v6[12]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(a1 + v6[13]) = MEMORY[0x1E69E7CC0];
}

void sub_1AFA5C03C(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = &unk_1F24FDB50;
  *(a1 + 32) = 3;
  v3 = type metadata accessor for SimpleScript(0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v4 = *(v3 + 40);
  v5 = type metadata accessor for ScriptIndex(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  sub_1AF5B24B4(0);
  v7 = a1 + v6[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  *(a1 + v6[10]) = 0;
  *(a1 + v6[11]) = 0;
  v8 = (a1 + v6[12]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(a1 + v6[13]) = v2;
}

void sub_1AFA5C124(uint64_t a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  *(a1 + 8) = 0;
  *(a1 + 16) = 0xE000000000000000;
  *(a1 + 24) = 3;
  *(a1 + 32) = &unk_1F24FDB80;
  *(a1 + 40) = 0;
  v3 = type metadata accessor for GraphScript(0);
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  v4 = *(v3 + 44);
  v5 = type metadata accessor for ScriptIndex(0);
  (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  sub_1AF5B252C(0);
  v7 = a1 + v6[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  *(a1 + v6[10]) = 0;
  *(a1 + v6[11]) = 0;
  v8 = (a1 + v6[12]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(a1 + v6[13]) = v2;
}

void sub_1AFA5C210(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 32) = 0;
  v2 = type metadata accessor for EmitterScript(0);
  v3 = *(v2 + 32);
  v4 = type metadata accessor for ScriptIndex(0);
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  v5 = (a1 + *(v2 + 36));
  *v5 = 0;
  v5[1] = 0;
  *(a1 + 16) = 0x80000001AFF2B740;
  *(a1 + 24) = &unk_1F24FDBB0;
  *(a1 + 8) = 0xD0000000000000C0;
  sub_1AF5B25A4(0);
  v7 = a1 + v6[9];
  *v7 = 0;
  *(v7 + 8) = 1;
  *(a1 + v6[10]) = 0;
  *(a1 + v6[11]) = 0;
  v8 = (a1 + v6[12]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(a1 + v6[13]) = MEMORY[0x1E69E7CC0];
}

unint64_t sub_1AFA5C310(uint64_t a1, uint64_t a2)
{
  if (a2 > 1)
  {
    if (a2 != 2)
    {
      if (a2 == 3)
      {
        return 0xD000000000000015;
      }

      goto LABEL_8;
    }

    return 0xD000000000000027;
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        return 0xD000000000000018;
      }

LABEL_8:
      sub_1AFDFE218();

      MEMORY[0x1B2718AE0](a1, a2);
      return 0xD000000000000018;
    }

    return 0xD00000000000002DLL;
  }
}

uint64_t sub_1AFA5C43C()
{
  v1 = *v0;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v1);
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

uint64_t sub_1AFA5C4A8()
{
  MEMORY[0x1B271ACB0](*v0);
  sub_1AFDFF2C8();
  return sub_1AFDFF2C8();
}

uint64_t sub_1AFA5C4F0(uint64_t a1)
{
  v2 = *v1;
  sub_1AFDFF288();
  MEMORY[0x1B271ACB0](v2);
  sub_1AFDFF2C8();
  sub_1AFDFF2C8();
  return sub_1AFDFF2F8();
}

BOOL sub_1AFA5C558(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return *(a1 + 8) == *(a2 + 8) && *(a1 + 12) == *(a2 + 12);
}

uint64_t sub_1AFA5C588(double a1)
{
  v2 = v1;
  v3 = sub_1AFDFCAC8();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = sub_1AFDFDAF8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = sub_1AFDFDAC8();
  MEMORY[0x1EEE9AC00](v8 - 8);
  sub_1AF615168();
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  sub_1AFDFDAB8();
  (*(v5 + 104))(v7, *MEMORY[0x1E69E8098], v4);
  sub_1AFDFCAA8();
  *(v1 + 32) = sub_1AFDFDB28();
  *(v1 + 40) = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v1 + 48) = "CompilationResult";
  *(v1 + 56) = 17;
  *(v1 + 64) = 2;
  *(v1 + 72) = v9;
  v10 = MEMORY[0x1E69E7CC0];
  *(v2 + 80) = sub_1AF43E270(MEMORY[0x1E69E7CC0]);
  *(v2 + 88) = sub_1AF43E3B4(v10);
  sub_1AFA5EDF4(v15);
  memcpy((v2 + 96), v15, 0x148uLL);
  sub_1AFA5F378(v16);
  memcpy((v2 + 424), v16, 0x148uLL);
  sub_1AFA5F8FC(v17);
  memcpy((v2 + 752), v17, 0x148uLL);
  sub_1AFA5FE80(v18);
  memcpy((v2 + 1080), v18, 0x148uLL);
  sub_1AFA60404(v19);
  memcpy((v2 + 1408), v19, 0x148uLL);
  sub_1AFA60988(v20);
  memcpy((v2 + 1736), v20, 0x148uLL);
  sub_1AFA60F0C(v21);
  memcpy((v2 + 2064), v21, 0x148uLL);
  sub_1AFA61490(v22);
  memcpy((v2 + 2392), v22, 0x148uLL);
  sub_1AFA61A14(v23);
  memcpy((v2 + 2720), v23, 0x148uLL);
  v11 = [objc_opt_self() standardUserDefaults];
  v12 = sub_1AFDFCEC8();
  LOBYTE(v7) = [v11 BOOLForKey_];

  *(v2 + 3048) = v7 ^ 1;
  [*(v2 + 40) setUnderlyingQueue_];
  [*(v2 + 40) setMaxConcurrentOperationCount_];
  return v2;
}

uint64_t sub_1AFA5C924()
{
  MEMORY[0x1B271DEA0](*(v0 + 72), -1, -1);

  memcpy(__dst, (v0 + 96), sizeof(__dst));
  sub_1AFA9A458(__dst, &unk_1EB633F28, type metadata accessor for EmitterScript, &off_1F255B720, &off_1ED72CA10);
  memcpy(v3, (v0 + 424), sizeof(v3));
  sub_1AFA9A458(v3, &unk_1EB633F60, type metadata accessor for GraphScript, &off_1F255B548, &off_1ED72D7D8);
  memcpy(v4, (v0 + 752), sizeof(v4));
  sub_1AFA9A458(v4, &unk_1EB633F38, type metadata accessor for SimpleScript, &off_1F255B808, &off_1ED72CD00);
  memcpy(v5, (v0 + 1080), sizeof(v5));
  sub_1AFA9A458(v5, &qword_1EB633F80, type metadata accessor for MetalFunctionScript, &off_1F255B630, &off_1ED729C40);
  memcpy(v6, (v0 + 1408), sizeof(v6));
  sub_1AFA9A458(v6, &qword_1EB633F48, type metadata accessor for ShaderScript, &off_1F255B8D0, &off_1ED72CE68);
  memcpy(v7, (v0 + 1736), sizeof(v7));
  sub_1AFA9A458(v7, &unk_1EB633F50, type metadata accessor for HeaderScript, &off_1F2542220, &off_1ED725B90);
  memcpy(v8, (v0 + 2064), sizeof(v8));
  sub_1AFA9A458(v8, qword_1EB633F88, type metadata accessor for ParticleInitScript, &off_1F255B9C0, &off_1ED72A368);
  memcpy(v9, (v0 + 2392), sizeof(v9));
  sub_1AFA9A458(v9, &unk_1EB633F70, type metadata accessor for ParticleUpdateScript, &off_1F255BAD0, &off_1ED728EB8);
  memcpy(v10, (v0 + 2720), sizeof(v10));
  sub_1AFA9A458(v10, &unk_1EB633F18, type metadata accessor for TriggerScript, &off_1F255BBC8, &off_1ED72C298);
  return v0;
}

double sub_1AFA5CBE0()
{
  sub_1AFA5C924();

  swift_deallocClassInstance();
  return result;
}

uint64_t sub_1AFA5CC38()
{
}

uint64_t sub_1AFA5CCA4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v3;
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;
  v5 = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v6;
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v7 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v7;
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  v8 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v8;
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = *(a2 + 176);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v9 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v9;
  v10 = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 216) = v10;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  v11 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v11;
  v12 = *(a2 + 256);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 256) = v12;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  v13 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v13;
  v14 = *(a2 + 296);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 296) = v14;
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);

  return a1;
}

uint64_t sub_1AFA5CE64(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);

  v4 = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 16) = v4;
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  v5 = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 56) = v5;
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = *(a2 + 88);

  v6 = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 96) = v6;
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = *(a2 + 128);

  v7 = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 136) = v7;
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  v8 = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 176) = v8;
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  v9 = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 216) = v9;
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);

  v10 = *(a2 + 256);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 256) = v10;
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = *(a2 + 288);

  v11 = *(a2 + 296);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 296) = v11;
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  return a1;
}

uint64_t sub_1AFA5D0A4(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 16) = *(a2 + 16);
  *(a1 + 20) = *(a2 + 20);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v4;

  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);
  v5 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v5;

  *(a1 + 96) = *(a2 + 96);
  *(a1 + 100) = *(a2 + 100);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 112) = *(a2 + 112);
  v6 = *(a2 + 128);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 128) = v6;

  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 152) = *(a2 + 152);
  v7 = *(a2 + 168);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = v7;

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 180) = *(a2 + 180);
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v8 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v8;

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  v9 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v9;

  *(a1 + 256) = *(a2 + 256);
  *(a1 + 260) = *(a2 + 260);
  *(a1 + 264) = *(a2 + 264);
  *(a1 + 272) = *(a2 + 272);
  v10 = *(a2 + 288);
  *(a1 + 280) = *(a2 + 280);
  *(a1 + 288) = v10;

  *(a1 + 296) = *(a2 + 296);
  *(a1 + 300) = *(a2 + 300);
  *(a1 + 304) = *(a2 + 304);
  *(a1 + 312) = *(a2 + 312);
  *(a1 + 320) = *(a2 + 320);
  return a1;
}

uint64_t sub_1AFA5D254(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1AFA5D29C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s18CachedBuildResultsV6ResultOwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 40);
  if (v3 >= 2)
  {
    v3 = *a2 + 2;
  }

  v4 = v3 == 1;
  v5 = *(a2 + 24);
  *(a1 + 24) = v5;
  (**(v5 - 8))(a1);
  *(a1 + 40) = v4;
  return a1;
}

uint64_t _s18CachedBuildResultsV6ResultOwca(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
    v4 = *(a2 + 40);
    if (v4 >= 2)
    {
      v4 = *a2 + 2;
    }

    v5 = v4 == 1;
    v6 = *(a2 + 24);
    *(a1 + 24) = v6;
    *(a1 + 32) = *(a2 + 32);
    (**(v6 - 8))(a1, a2);
    *(a1 + 40) = v5;
  }

  return a1;
}

void *_s18CachedBuildResultsV6ResultOwta(void *result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = result;
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(result);
    v4 = *(a2 + 40);
    if (v4 >= 2)
    {
      v4 = *a2 + 2;
    }

    v5 = *(a2 + 16);
    result = v3;
    *v3 = *a2;
    *(v3 + 1) = v5;
    v3[4] = *(a2 + 32);
    *(v3 + 40) = v4 == 1;
  }

  return result;
}

uint64_t _s18CachedBuildResultsV6ResultOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t _s18CachedBuildResultsV6ResultOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AFA5D564(uint64_t a1)
{
  result = *(a1 + 40);
  if (result >= 2)
  {
    return (*a1 + 2);
  }

  return result;
}

uint64_t sub_1AFA5D580(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

void destroy for CompilationStatus(uint64_t a1)
{
  v1 = *(a1 + 88);
  if (v1 >= 3)
  {
    v1 = *a1 + 3;
  }

  if (v1)
  {
    if (v1 == 2)
    {
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      v3 = *(a1 + 32);
    }

    else
    {
      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

      _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((a1 + 56));
    }
  }
}

uint64_t initializeWithCopy for CompilationStatus(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 88);
  if (v3 >= 3)
  {
    v3 = *a2 + 3;
  }

  if (v3 == 2)
  {
    v10 = *(a2 + 24);
    *(a1 + 24) = v10;
    (**(v10 - 8))(a1);
    v12 = *(a2 + 32);
    v13 = v12;
    *(a1 + 32) = v12;
    v9 = 2;
  }

  else if (v3 == 1)
  {
    v4 = *(a2 + 24);
    *(a1 + 24) = v4;
    (**(v4 - 8))(a1);
    v6 = *(a2 + 40);
    *(a1 + 32) = *(a2 + 32);
    *(a1 + 40) = v6;
    *(a1 + 48) = *(a2 + 48);
    v7 = *(a2 + 80);
    *(a1 + 80) = v7;
    v8 = **(v7 - 8);

    v8(a1 + 56, a2 + 56, v7);
    v9 = 1;
  }

  else
  {
    v9 = 0;
    *a1 = *a2;
  }

  *(a1 + 88) = v9;
  return a1;
}

uint64_t assignWithCopy for CompilationStatus(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *(a1 + 88);
    if (v4 >= 3)
    {
      v4 = *a1 + 3;
    }

    if (v4)
    {
      if (v4 == 2)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);
      }

      else
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(a1);

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((a1 + 56));
      }
    }

    v5 = *(a2 + 88);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      v10 = *(a2 + 24);
      *(a1 + 24) = v10;
      (**(v10 - 8))(a1, a2);
      v11 = *(a2 + 32);
      v12 = v11;
      *(a1 + 32) = v11;
      v9 = 2;
    }

    else if (v5 == 1)
    {
      v6 = *(a2 + 24);
      *(a1 + 24) = v6;
      (**(v6 - 8))(a1, a2);
      *(a1 + 32) = *(a2 + 32);
      *(a1 + 40) = *(a2 + 40);
      *(a1 + 48) = *(a2 + 48);
      v7 = *(a2 + 80);
      *(a1 + 80) = v7;
      v8 = **(v7 - 8);

      v8(a1 + 56, a2 + 56, v7);
      v9 = 1;
    }

    else
    {
      v9 = 0;
      *a1 = *a2;
    }

    *(a1 + 88) = v9;
  }

  return a1;
}

__n128 initializeWithTake for CompilationStatus(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 73) = *(a2 + 73);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t assignWithTake for CompilationStatus(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v3 = *(result + 88);
    if (v3 >= 3)
    {
      v3 = *result + 3;
    }

    if (v3)
    {
      v4 = result;
      if (v3 == 2)
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(result);
      }

      else
      {
        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(result);

        _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0((v4 + 56));
      }

      result = v4;
    }

    v5 = *(a2 + 88);
    if (v5 >= 3)
    {
      v5 = *a2 + 3;
    }

    if (v5 == 2)
    {
      v9 = *(a2 + 16);
      *result = *a2;
      *(result + 16) = v9;
      *(result + 32) = *(a2 + 32);
      v8 = 2;
    }

    else if (v5 == 1)
    {
      v6 = *(a2 + 48);
      *(result + 32) = *(a2 + 32);
      *(result + 48) = v6;
      *(result + 64) = *(a2 + 64);
      *(result + 80) = *(a2 + 80);
      v7 = *(a2 + 16);
      v8 = 1;
      *result = *a2;
      *(result + 16) = v7;
    }

    else
    {
      v8 = 0;
      *result = *a2;
    }

    *(result + 88) = v8;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CompilationStatus(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 89))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 88);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for CompilationStatus(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 73) = 0u;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t sub_1AFA5DB3C(uint64_t a1)
{
  result = *(a1 + 88);
  if (result >= 3)
  {
    return (*a1 + 3);
  }

  return result;
}

uint64_t sub_1AFA5DB58(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    v2 = a2 - 3;
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    LOBYTE(a2) = 3;
    *result = v2;
  }

  *(result + 88) = a2;
  return result;
}

char *sub_1AFA5DBA8(uint64_t a1, uint64_t *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    *a1 = *a2;
    *(a1 + 1) = *(a2 + 1);
    v7 = a3[7];
    v8 = sub_1AFDFC128();
    v9 = *(v8 - 8);
    if ((*(v9 + 48))(a2 + v7, 1, v8))
    {
      sub_1AF0D0FCC(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
      memcpy(&v4[v7], a2 + v7, *(*(v10 - 8) + 64));
    }

    else
    {
      (*(v9 + 16))(&v4[v7], a2 + v7, v8);
      (*(v9 + 56))(&v4[v7], 0, 1, v8);
    }

    v12 = a3[9];
    *&v4[a3[8]] = *(a2 + a3[8]);
    *&v4[v12] = *(a2 + v12);
  }

  return v4;
}

uint64_t sub_1AFA5DD50(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 28);
  v4 = sub_1AFDFC128();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(a1 + v3, 1, v4))
  {
    (*(v5 + 8))(a1 + v3, v4);
  }
}

uint64_t sub_1AFA5DE28(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v6 = a3[7];
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    sub_1AF0D0FCC(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 16))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v10) = *(a2 + v10);

  return a1;
}

_BYTE *sub_1AFA5DF84(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  v6 = a3[7];
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 24))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    sub_1AF0D0FCC(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 16))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  *&a1[a3[8]] = *&a2[a3[8]];

  *&a1[a3[9]] = *&a2[a3[9]];
  return a1;
}

uint64_t sub_1AFA5E164(uint64_t a1, uint64_t a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v6 = a3[7];
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(a2 + v6, 1, v7))
  {
    sub_1AF0D0FCC(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy((a1 + v6), (a2 + v6), *(*(v9 - 8) + 64));
  }

  else
  {
    (*(v8 + 32))(a1 + v6, a2 + v6, v7);
    (*(v8 + 56))(a1 + v6, 0, 1, v7);
  }

  v10 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v10) = *(a2 + v10);
  return a1;
}

_BYTE *sub_1AFA5E2BC(_BYTE *a1, _BYTE *a2, int *a3)
{
  *a1 = *a2;
  a1[1] = a2[1];
  a1[2] = a2[2];
  v6 = a3[7];
  v7 = sub_1AFDFC128();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (!v10)
  {
    if (!v11)
    {
      (*(v8 + 40))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v8 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v11)
  {
LABEL_6:
    sub_1AF0D0FCC(0, &qword_1ED7315E0, MEMORY[0x1E6968FB0], MEMORY[0x1E69E6720]);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 32))(&a1[v6], &a2[v6], v7);
  (*(v8 + 56))(&a1[v6], 0, 1, v7);
LABEL_7:
  *&a1[a3[8]] = *&a2[a3[8]];

  *&a1[a3[9]] = *&a2[a3[9]];
  return a1;
}

void sub_1AFA5E4BC(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for ScriptingConfiguration(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AFA9E3C8(v6 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig, v9, type metadata accessor for ScriptingConfiguration);
  if (v9[2] != 1)
  {
    goto LABEL_27;
  }

  if (!swift_unknownObjectRetain())
  {
    v2[3] = CFXMTLCreateSystemDefaultDevice();
  }

  swift_unknownObjectRelease();
  if (!swift_unknownObjectRetain())
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v17 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v22 = v17;
      swift_once();
      v17 = v22;
    }

    *v47 = 0;
    sub_1AF0D4F18(v17, v47, 0xD000000000000029, 0x80000001AFF453A0);
    goto LABEL_27;
  }

  swift_unknownObjectRelease();
  sub_1AF7D5A90(v6, 1, 0);
  v10 = *&v9[*(v7 + 32)];
  v2[2] = v6;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v12 = dispatch_group_create();

  dispatch_group_enter(v12);
  memcpy(v47, v2 + 12, sizeof(v47));
  sub_1AFA70744(v2, v10, v12, 1, v4, 0, v47, v11, v2);
  memcpy(v46, v2 + 53, sizeof(v46));
  sub_1AFA74E78(v2, v10, v12, 1, v4, 0, v46, v11, v2);
  memcpy(v45, v2 + 94, sizeof(v45));
  sub_1AFA7959C(v2, v10, v12, 1, v4, 0, v45, v11, v2);
  memcpy(v44, v2 + 135, sizeof(v44));
  sub_1AFA7E50C(v2, v10, v12, 1, v4, 0, v44, v11, v2);
  memcpy(v43, v2 + 176, sizeof(v43));
  sub_1AFA833C4(v2, v10, v12, 1, v4, 0, v43, v11, v2);
  memcpy(v42, v2 + 258, sizeof(v42));
  sub_1AFA87AFC(v2, v10, v12, 1, v4, 0, v42, v11, v2);
  memcpy(v41, v2 + 299, sizeof(v41));
  sub_1AFA8C234(v2, v10, v12, 1, v4, 0, v41, v11, v2);
  memcpy(v40, v2 + 340, sizeof(v40));
  sub_1AFA90A30(v2, v10, v12, 1, v4, 0, v40, v11, v2);
  memcpy(v39, v2 + 217, sizeof(v39));
  sub_1AFA967B8(v2, v10, v12, 1, v4, 0, v39, v11, v2);
  dispatch_group_leave(v12);
  sub_1AFDFDAA8();
  dispatch_group_enter(v12);
  memcpy(v38, v2 + 12, sizeof(v38));
  sub_1AFA70744(v2, v10, v12, 1, v4, 0, v38, v11, v2);
  memcpy(v37, v2 + 53, sizeof(v37));
  sub_1AFA74E78(v2, v10, v12, 1, v4, 0, v37, v11, v2);
  memcpy(v36, v2 + 94, sizeof(v36));
  sub_1AFA7959C(v2, v10, v12, 1, v4, 0, v36, v11, v2);
  memcpy(v35, v2 + 135, sizeof(v35));
  sub_1AFA7E50C(v2, v10, v12, 1, v4, 0, v35, v11, v2);
  memcpy(v34, v2 + 176, sizeof(v34));
  sub_1AFA833C4(v2, v10, v12, 1, v4, 0, v34, v11, v2);
  memcpy(v33, v2 + 258, sizeof(v33));
  sub_1AFA87AFC(v2, v10, v12, 1, v4, 0, v33, v11, v2);
  memcpy(v32, v2 + 299, sizeof(v32));
  sub_1AFA8C234(v2, v10, v12, 1, v4, 0, v32, v11, v2);
  memcpy(v31, v2 + 340, sizeof(v31));
  sub_1AFA90A30(v2, v10, v12, 1, v4, 0, v31, v11, v2);
  memcpy(v30, v2 + 217, sizeof(v30));
  sub_1AFA967B8(v2, v10, v12, 1, v4, 0, v30, v11, v2);
  dispatch_group_leave(v12);
  v13 = *(v11 + 16);
  if (!v13)
  {

LABEL_27:
    sub_1AFA9E8FC(v9, type metadata accessor for ScriptingConfiguration);
    return;
  }

  swift_willThrow();
  v14 = v13;

  v29[0] = v13;
  v15 = v13;
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_22:

    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v27 = 0;
    v28 = 0xE000000000000000;
    sub_1AFDFE218();

    v27 = 0xD00000000000001FLL;
    v28 = 0x80000001AFF453D0;
    swift_getErrorValue();
    v18 = sub_1AFDFF1D8();
    MEMORY[0x1B2718AE0](v18);

    v20 = v27;
    v19 = v28;
    v21 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v23 = v21;
      swift_once();
      v21 = v23;
    }

    v27 = 0;
    sub_1AF0D4F18(v21, &v27, v20, v19);

    goto LABEL_27;
  }

  if (v28 != 2)
  {
    sub_1AFA9A444(v27, v28);
    goto LABEL_22;
  }

  if (*v9 == 1)
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v16 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v24 = v16;
      swift_once();
      v16 = v24;
    }

    v26[0] = 0;
    sub_1AF0D4F18(v16, v26, 0xD000000000000032, 0x80000001AFF453F0);
  }

  sub_1AFA9E8FC(v9, type metadata accessor for ScriptingConfiguration);
}

uint64_t sub_1AFA5EDF4@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for EmitterScript(0);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v110 = qword_1ED73B840;
  v111 = 0;
  v112 = 2;
  v113 = 0;
  v114 = 2;
  v115 = 0;
  sub_1AF5B25A4(0);
  v4 = v3;
  sub_1AFCC4F20(1, 3, v58);
  sub_1AF0D0FCC(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  sub_1AF5B2568(0);
  *(inited + 32) = v6;
  *(inited + 40) = &off_1F2558F10;
  sub_1AF5D1EC0(inited);
  v56 = v59;
  v54 = v61;
  v55 = v60;
  v53 = v62;
  v52 = v63;
  v51 = v64;
  sub_1AFA9E8FC(v58, sub_1AFA9E82C);
  swift_setDeallocating();
  sub_1AF70473C(1, v65);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = v2;
  *(v7 + 40) = &off_1F255B668;
  sub_1AF5D1EC0(v7);
  v50 = v66;
  v48 = v68;
  v49 = v67;
  v47 = v69;
  v46 = v70;
  v45 = v71;
  sub_1AFA9E8FC(v65, sub_1AF6FCABC);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF828CF0(v72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = v2;
  *(v8 + 40) = &off_1F255B668;
  sub_1AF5D1EC0(v8);
  v39 = v73;
  v40 = v74;
  v41 = v75;
  v42 = v76;
  v43 = v77;
  v44 = v78;
  sub_1AFA9E8FC(v72, sub_1AFA9E95C);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF828EDC(v79);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = v2;
  *(v9 + 40) = &off_1F255B668;
  sub_1AF5D1EC0(v9);
  v38 = v80;
  v36 = v82;
  v37 = v81;
  v35 = v83;
  v34 = v84;
  v33 = v85;
  sub_1AFA9C6A0(v79);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF704984(1, v86);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  *(v10 + 32) = v4;
  *(v10 + 40) = &off_1F250F288;
  sub_1AF5D1EC0(v10);
  v57 = v87;
  v31 = v89;
  v32 = v88;
  v30 = v90;
  v29 = v91;
  v28 = v92;
  sub_1AFA9E8FC(v86, sub_1AF81F8AC);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AFCC4F20(1, 3, &v93);
  v24 = v95;
  v25 = v94;
  v26 = v93;
  v27 = v97;
  v11 = v96 | 6;
  sub_1AFCC3A60(1, 2, &v98);
  v12 = v98;
  v13 = v99;
  v14 = v100;
  v15 = v101;
  LOBYTE(inited) = v102;
  v16 = v103;
  result = sub_1AF703280(3, &v104);
  *a1 = v2;
  *(a1 + 8) = v56;
  *(a1 + 16) = v55;
  *(a1 + 20) = v54;
  *(a1 + 24) = v53;
  *(a1 + 32) = v52;
  *(a1 + 40) = v51;
  *(a1 + 48) = v50;
  *(a1 + 56) = v49;
  *(a1 + 60) = v48;
  *(a1 + 64) = v47;
  *(a1 + 72) = v46;
  *(a1 + 80) = v45;
  *(a1 + 88) = v39;
  v18 = v104;
  *(a1 + 96) = v40;
  v19 = v105;
  *(a1 + 100) = v41;
  v20 = v106;
  *(a1 + 104) = v42;
  v21 = v107;
  *(a1 + 112) = v43;
  v22 = v108;
  *(a1 + 120) = v44;
  *(a1 + 128) = v38;
  v23 = v109;
  *(a1 + 136) = v37;
  *(a1 + 140) = v36;
  *(a1 + 144) = v35;
  *(a1 + 152) = v34;
  *(a1 + 160) = v33;
  *(a1 + 168) = v57;
  *(a1 + 176) = v32;
  *(a1 + 180) = v31;
  *(a1 + 184) = v30;
  *(a1 + 192) = v29;
  *(a1 + 200) = v28;
  *(a1 + 208) = v26;
  *(a1 + 216) = v25;
  *(a1 + 220) = v24;
  *(a1 + 224) = v11;
  *(a1 + 232) = 2;
  *(a1 + 240) = v27;
  *(a1 + 248) = v12;
  *(a1 + 256) = v13;
  *(a1 + 260) = v14;
  *(a1 + 264) = v15;
  *(a1 + 272) = inited;
  *(a1 + 280) = v16;
  *(a1 + 288) = v18;
  *(a1 + 296) = v19;
  *(a1 + 300) = v20;
  *(a1 + 304) = v21;
  *(a1 + 312) = v22;
  *(a1 + 320) = v23;
  return result;
}

uint64_t sub_1AFA5F378@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for GraphScript(0);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v110 = qword_1ED73B840;
  v111 = 0;
  v112 = 2;
  v113 = 0;
  v114 = 2;
  v115 = 0;
  sub_1AF5B252C(0);
  v4 = v3;
  sub_1AFCC4CE4(1, 3, v58);
  sub_1AF0D0FCC(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  sub_1AF5B24F0(0);
  *(inited + 32) = v6;
  *(inited + 40) = &off_1F2558F10;
  sub_1AF5D1EC0(inited);
  v56 = v59;
  v54 = v61;
  v55 = v60;
  v53 = v62;
  v52 = v63;
  v51 = v64;
  sub_1AFA9E8FC(v58, sub_1AFA9E7B4);
  swift_setDeallocating();
  sub_1AF703884(1, v65);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = v2;
  *(v7 + 40) = &off_1F255B490;
  sub_1AF5D1EC0(v7);
  v50 = v66;
  v48 = v68;
  v49 = v67;
  v47 = v69;
  v46 = v70;
  v45 = v71;
  sub_1AFA9E8FC(v65, sub_1AF6FCB70);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF828918(v72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = v2;
  *(v8 + 40) = &off_1F255B490;
  sub_1AF5D1EC0(v8);
  v39 = v73;
  v40 = v74;
  v41 = v75;
  v42 = v76;
  v43 = v77;
  v44 = v78;
  sub_1AFA9E8FC(v72, sub_1AFA9E7F0);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF828B04(v79);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = v2;
  *(v9 + 40) = &off_1F255B490;
  sub_1AF5D1EC0(v9);
  v38 = v80;
  v36 = v82;
  v37 = v81;
  v35 = v83;
  v34 = v84;
  v33 = v85;
  sub_1AFA9C7F0(v79);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF70335C(1, v86);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  *(v10 + 32) = v4;
  *(v10 + 40) = &off_1F250F288;
  sub_1AF5D1EC0(v10);
  v57 = v87;
  v31 = v89;
  v32 = v88;
  v30 = v90;
  v29 = v91;
  v28 = v92;
  sub_1AFA9E8FC(v86, sub_1AF81FD74);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AFCC4CE4(1, 3, &v93);
  v24 = v95;
  v25 = v94;
  v26 = v93;
  v27 = v97;
  v11 = v96 | 6;
  sub_1AFCC3A60(1, 2, &v98);
  v12 = v98;
  v13 = v99;
  v14 = v100;
  v15 = v101;
  LOBYTE(inited) = v102;
  v16 = v103;
  result = sub_1AF703280(3, &v104);
  *a1 = v2;
  *(a1 + 8) = v56;
  *(a1 + 16) = v55;
  *(a1 + 20) = v54;
  *(a1 + 24) = v53;
  *(a1 + 32) = v52;
  *(a1 + 40) = v51;
  *(a1 + 48) = v50;
  *(a1 + 56) = v49;
  *(a1 + 60) = v48;
  *(a1 + 64) = v47;
  *(a1 + 72) = v46;
  *(a1 + 80) = v45;
  *(a1 + 88) = v39;
  v18 = v104;
  *(a1 + 96) = v40;
  v19 = v105;
  *(a1 + 100) = v41;
  v20 = v106;
  *(a1 + 104) = v42;
  v21 = v107;
  *(a1 + 112) = v43;
  v22 = v108;
  *(a1 + 120) = v44;
  *(a1 + 128) = v38;
  v23 = v109;
  *(a1 + 136) = v37;
  *(a1 + 140) = v36;
  *(a1 + 144) = v35;
  *(a1 + 152) = v34;
  *(a1 + 160) = v33;
  *(a1 + 168) = v57;
  *(a1 + 176) = v32;
  *(a1 + 180) = v31;
  *(a1 + 184) = v30;
  *(a1 + 192) = v29;
  *(a1 + 200) = v28;
  *(a1 + 208) = v26;
  *(a1 + 216) = v25;
  *(a1 + 220) = v24;
  *(a1 + 224) = v11;
  *(a1 + 232) = 2;
  *(a1 + 240) = v27;
  *(a1 + 248) = v12;
  *(a1 + 256) = v13;
  *(a1 + 260) = v14;
  *(a1 + 264) = v15;
  *(a1 + 272) = inited;
  *(a1 + 280) = v16;
  *(a1 + 288) = v18;
  *(a1 + 296) = v19;
  *(a1 + 300) = v20;
  *(a1 + 304) = v21;
  *(a1 + 312) = v22;
  *(a1 + 320) = v23;
  return result;
}

uint64_t sub_1AFA5F8FC@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SimpleScript(0);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v110 = qword_1ED73B840;
  v111 = 0;
  v112 = 2;
  v113 = 0;
  v114 = 2;
  v115 = 0;
  sub_1AF5B24B4(0);
  v4 = v3;
  sub_1AFCC4AA8(1, 3, v58);
  sub_1AF0D0FCC(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  sub_1AF5B2478(0);
  *(inited + 32) = v6;
  *(inited + 40) = &off_1F2558F10;
  sub_1AF5D1EC0(inited);
  v56 = v59;
  v54 = v61;
  v55 = v60;
  v53 = v62;
  v52 = v63;
  v51 = v64;
  sub_1AFA9E8FC(v58, sub_1AFA9E73C);
  swift_setDeallocating();
  sub_1AF7044D4(1, v65);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = v2;
  *(v7 + 40) = &off_1F255B788;
  sub_1AF5D1EC0(v7);
  v50 = v66;
  v48 = v68;
  v49 = v67;
  v47 = v69;
  v46 = v70;
  v45 = v71;
  sub_1AFA9E8FC(v65, sub_1AF6FCB34);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF828540(v72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = v2;
  *(v8 + 40) = &off_1F255B788;
  sub_1AF5D1EC0(v8);
  v39 = v73;
  v40 = v74;
  v41 = v75;
  v42 = v76;
  v43 = v77;
  v44 = v78;
  sub_1AFA9E8FC(v72, sub_1AFA9E778);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF82872C(v79);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = v2;
  *(v9 + 40) = &off_1F255B788;
  sub_1AF5D1EC0(v9);
  v38 = v80;
  v36 = v82;
  v37 = v81;
  v35 = v83;
  v34 = v84;
  v33 = v85;
  sub_1AFA9C79C(v79);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF70471C(1, v86);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  *(v10 + 32) = v4;
  *(v10 + 40) = &off_1F250F288;
  sub_1AF5D1EC0(v10);
  v57 = v87;
  v31 = v89;
  v32 = v88;
  v30 = v90;
  v29 = v91;
  v28 = v92;
  sub_1AFA9E8FC(v86, sub_1AF81FC5C);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AFCC4AA8(1, 3, &v93);
  v24 = v95;
  v25 = v94;
  v26 = v93;
  v27 = v97;
  v11 = v96 | 6;
  sub_1AFCC3A60(1, 2, &v98);
  v12 = v98;
  v13 = v99;
  v14 = v100;
  v15 = v101;
  LOBYTE(inited) = v102;
  v16 = v103;
  result = sub_1AF703280(3, &v104);
  *a1 = v2;
  *(a1 + 8) = v56;
  *(a1 + 16) = v55;
  *(a1 + 20) = v54;
  *(a1 + 24) = v53;
  *(a1 + 32) = v52;
  *(a1 + 40) = v51;
  *(a1 + 48) = v50;
  *(a1 + 56) = v49;
  *(a1 + 60) = v48;
  *(a1 + 64) = v47;
  *(a1 + 72) = v46;
  *(a1 + 80) = v45;
  *(a1 + 88) = v39;
  v18 = v104;
  *(a1 + 96) = v40;
  v19 = v105;
  *(a1 + 100) = v41;
  v20 = v106;
  *(a1 + 104) = v42;
  v21 = v107;
  *(a1 + 112) = v43;
  v22 = v108;
  *(a1 + 120) = v44;
  *(a1 + 128) = v38;
  v23 = v109;
  *(a1 + 136) = v37;
  *(a1 + 140) = v36;
  *(a1 + 144) = v35;
  *(a1 + 152) = v34;
  *(a1 + 160) = v33;
  *(a1 + 168) = v57;
  *(a1 + 176) = v32;
  *(a1 + 180) = v31;
  *(a1 + 184) = v30;
  *(a1 + 192) = v29;
  *(a1 + 200) = v28;
  *(a1 + 208) = v26;
  *(a1 + 216) = v25;
  *(a1 + 220) = v24;
  *(a1 + 224) = v11;
  *(a1 + 232) = 2;
  *(a1 + 240) = v27;
  *(a1 + 248) = v12;
  *(a1 + 256) = v13;
  *(a1 + 260) = v14;
  *(a1 + 264) = v15;
  *(a1 + 272) = inited;
  *(a1 + 280) = v16;
  *(a1 + 288) = v18;
  *(a1 + 296) = v19;
  *(a1 + 300) = v20;
  *(a1 + 304) = v21;
  *(a1 + 312) = v22;
  *(a1 + 320) = v23;
  return result;
}

uint64_t sub_1AFA5FE80@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for MetalFunctionScript(0);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v110 = qword_1ED73B840;
  v111 = 0;
  v112 = 2;
  v113 = 0;
  v114 = 2;
  v115 = 0;
  sub_1AF5B243C(0);
  v4 = v3;
  sub_1AFCC486C(1, 3, v58);
  sub_1AF0D0FCC(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  sub_1AF5B2400(0);
  *(inited + 32) = v6;
  *(inited + 40) = &off_1F2558F10;
  sub_1AF5D1EC0(inited);
  v56 = v59;
  v54 = v61;
  v55 = v60;
  v53 = v62;
  v52 = v63;
  v51 = v64;
  sub_1AFA9E8FC(v58, sub_1AFA9E6C4);
  swift_setDeallocating();
  sub_1AF70426C(1, v65);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = v2;
  *(v7 + 40) = &off_1F255B5B0;
  sub_1AF5D1EC0(v7);
  v50 = v66;
  v48 = v68;
  v49 = v67;
  v47 = v69;
  v46 = v70;
  v45 = v71;
  sub_1AFA9E8FC(v65, sub_1AF6FCAF8);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF828168(v72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = v2;
  *(v8 + 40) = &off_1F255B5B0;
  sub_1AF5D1EC0(v8);
  v39 = v73;
  v40 = v74;
  v41 = v75;
  v42 = v76;
  v43 = v77;
  v44 = v78;
  sub_1AFA9E8FC(v72, sub_1AFA9E700);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF828354(v79);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = v2;
  *(v9 + 40) = &off_1F255B5B0;
  sub_1AF5D1EC0(v9);
  v38 = v80;
  v36 = v82;
  v37 = v81;
  v35 = v83;
  v34 = v84;
  v33 = v85;
  sub_1AFA9C748(v79);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF7044B4(1, v86);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  *(v10 + 32) = v4;
  *(v10 + 40) = &off_1F250F288;
  sub_1AF5D1EC0(v10);
  v57 = v87;
  v31 = v89;
  v32 = v88;
  v30 = v90;
  v29 = v91;
  v28 = v92;
  sub_1AFA9E8FC(v86, sub_1AF81FB10);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AFCC486C(1, 3, &v93);
  v24 = v95;
  v25 = v94;
  v26 = v93;
  v27 = v97;
  v11 = v96 | 6;
  sub_1AFCC3A60(1, 2, &v98);
  v12 = v98;
  v13 = v99;
  v14 = v100;
  v15 = v101;
  LOBYTE(inited) = v102;
  v16 = v103;
  result = sub_1AF703280(3, &v104);
  *a1 = v2;
  *(a1 + 8) = v56;
  *(a1 + 16) = v55;
  *(a1 + 20) = v54;
  *(a1 + 24) = v53;
  *(a1 + 32) = v52;
  *(a1 + 40) = v51;
  *(a1 + 48) = v50;
  *(a1 + 56) = v49;
  *(a1 + 60) = v48;
  *(a1 + 64) = v47;
  *(a1 + 72) = v46;
  *(a1 + 80) = v45;
  *(a1 + 88) = v39;
  v18 = v104;
  *(a1 + 96) = v40;
  v19 = v105;
  *(a1 + 100) = v41;
  v20 = v106;
  *(a1 + 104) = v42;
  v21 = v107;
  *(a1 + 112) = v43;
  v22 = v108;
  *(a1 + 120) = v44;
  *(a1 + 128) = v38;
  v23 = v109;
  *(a1 + 136) = v37;
  *(a1 + 140) = v36;
  *(a1 + 144) = v35;
  *(a1 + 152) = v34;
  *(a1 + 160) = v33;
  *(a1 + 168) = v57;
  *(a1 + 176) = v32;
  *(a1 + 180) = v31;
  *(a1 + 184) = v30;
  *(a1 + 192) = v29;
  *(a1 + 200) = v28;
  *(a1 + 208) = v26;
  *(a1 + 216) = v25;
  *(a1 + 220) = v24;
  *(a1 + 224) = v11;
  *(a1 + 232) = 2;
  *(a1 + 240) = v27;
  *(a1 + 248) = v12;
  *(a1 + 256) = v13;
  *(a1 + 260) = v14;
  *(a1 + 264) = v15;
  *(a1 + 272) = inited;
  *(a1 + 280) = v16;
  *(a1 + 288) = v18;
  *(a1 + 296) = v19;
  *(a1 + 300) = v20;
  *(a1 + 304) = v21;
  *(a1 + 312) = v22;
  *(a1 + 320) = v23;
  return result;
}

uint64_t sub_1AFA60404@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ShaderScript(0);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v110 = qword_1ED73B840;
  v111 = 0;
  v112 = 2;
  v113 = 0;
  v114 = 2;
  v115 = 0;
  sub_1AF5B23C4(0);
  v4 = v3;
  sub_1AFCC4630(1, 3, v58);
  sub_1AF0D0FCC(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  sub_1AF5B2388(0);
  *(inited + 32) = v6;
  *(inited + 40) = &off_1F2558F10;
  sub_1AF5D1EC0(inited);
  v56 = v59;
  v54 = v61;
  v55 = v60;
  v53 = v62;
  v52 = v63;
  v51 = v64;
  sub_1AFA9E8FC(v58, sub_1AFA9E610);
  swift_setDeallocating();
  sub_1AF704004(1, v65);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = v2;
  *(v7 + 40) = &off_1F255B850;
  sub_1AF5D1EC0(v7);
  v50 = v66;
  v48 = v68;
  v49 = v67;
  v47 = v69;
  v46 = v70;
  v45 = v71;
  sub_1AFA9E8FC(v65, sub_1AFA9E64C);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF827D90(v72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = v2;
  *(v8 + 40) = &off_1F255B850;
  sub_1AF5D1EC0(v8);
  v39 = v73;
  v40 = v74;
  v41 = v75;
  v42 = v76;
  v43 = v77;
  v44 = v78;
  sub_1AFA9E8FC(v72, sub_1AFA9E688);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF827F7C(v79);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = v2;
  *(v9 + 40) = &off_1F255B850;
  sub_1AF5D1EC0(v9);
  v38 = v80;
  v36 = v82;
  v37 = v81;
  v35 = v83;
  v34 = v84;
  v33 = v85;
  sub_1AFA9C6F4(v79);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF70424C(1, v86);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  *(v10 + 32) = v4;
  *(v10 + 40) = &off_1F250F288;
  sub_1AF5D1EC0(v10);
  v57 = v87;
  v31 = v89;
  v32 = v88;
  v30 = v90;
  v29 = v91;
  v28 = v92;
  sub_1AFA9E8FC(v86, sub_1AF81F9C4);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AFCC4630(1, 3, &v93);
  v24 = v95;
  v25 = v94;
  v26 = v93;
  v27 = v97;
  v11 = v96 | 6;
  sub_1AFCC3A60(1, 2, &v98);
  v12 = v98;
  v13 = v99;
  v14 = v100;
  v15 = v101;
  LOBYTE(inited) = v102;
  v16 = v103;
  result = sub_1AF703280(3, &v104);
  *a1 = v2;
  *(a1 + 8) = v56;
  *(a1 + 16) = v55;
  *(a1 + 20) = v54;
  *(a1 + 24) = v53;
  *(a1 + 32) = v52;
  *(a1 + 40) = v51;
  *(a1 + 48) = v50;
  *(a1 + 56) = v49;
  *(a1 + 60) = v48;
  *(a1 + 64) = v47;
  *(a1 + 72) = v46;
  *(a1 + 80) = v45;
  *(a1 + 88) = v39;
  v18 = v104;
  *(a1 + 96) = v40;
  v19 = v105;
  *(a1 + 100) = v41;
  v20 = v106;
  *(a1 + 104) = v42;
  v21 = v107;
  *(a1 + 112) = v43;
  v22 = v108;
  *(a1 + 120) = v44;
  *(a1 + 128) = v38;
  v23 = v109;
  *(a1 + 136) = v37;
  *(a1 + 140) = v36;
  *(a1 + 144) = v35;
  *(a1 + 152) = v34;
  *(a1 + 160) = v33;
  *(a1 + 168) = v57;
  *(a1 + 176) = v32;
  *(a1 + 180) = v31;
  *(a1 + 184) = v30;
  *(a1 + 192) = v29;
  *(a1 + 200) = v28;
  *(a1 + 208) = v26;
  *(a1 + 216) = v25;
  *(a1 + 220) = v24;
  *(a1 + 224) = v11;
  *(a1 + 232) = 2;
  *(a1 + 240) = v27;
  *(a1 + 248) = v12;
  *(a1 + 256) = v13;
  *(a1 + 260) = v14;
  *(a1 + 264) = v15;
  *(a1 + 272) = inited;
  *(a1 + 280) = v16;
  *(a1 + 288) = v18;
  *(a1 + 296) = v19;
  *(a1 + 300) = v20;
  *(a1 + 304) = v21;
  *(a1 + 312) = v22;
  *(a1 + 320) = v23;
  return result;
}

uint64_t sub_1AFA60988@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for HeaderScript(0);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v110 = qword_1ED73B840;
  v111 = 0;
  v112 = 2;
  v113 = 0;
  v114 = 2;
  v115 = 0;
  sub_1AF5B21E4(0);
  v4 = v3;
  sub_1AFCC43F4(1, 3, v58);
  sub_1AF0D0FCC(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  sub_1AF5B21A8(0);
  *(inited + 32) = v6;
  *(inited + 40) = &off_1F2558F10;
  sub_1AF5D1EC0(inited);
  v56 = v59;
  v54 = v61;
  v55 = v60;
  v53 = v62;
  v52 = v63;
  v51 = v64;
  sub_1AFA9E8FC(v58, sub_1AFA9E598);
  swift_setDeallocating();
  sub_1AF703D9C(1, v65);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = v2;
  *(v7 + 40) = &off_1F25421A0;
  sub_1AF5D1EC0(v7);
  v50 = v66;
  v48 = v68;
  v49 = v67;
  v47 = v69;
  v46 = v70;
  v45 = v71;
  sub_1AFA9E8FC(v65, sub_1AF6FC9CC);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF8279B8(v72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = v2;
  *(v8 + 40) = &off_1F25421A0;
  sub_1AF5D1EC0(v8);
  v39 = v73;
  v40 = v74;
  v41 = v75;
  v42 = v76;
  v43 = v77;
  v44 = v78;
  sub_1AFA9E8FC(v72, sub_1AFA9E5D4);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF827BA4(v79);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = v2;
  *(v9 + 40) = &off_1F25421A0;
  sub_1AF5D1EC0(v9);
  v38 = v80;
  v36 = v82;
  v37 = v81;
  v35 = v83;
  v34 = v84;
  v33 = v85;
  sub_1AFA9C550(v79);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF703FE4(1, v86);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  *(v10 + 32) = v4;
  *(v10 + 40) = &off_1F250F288;
  sub_1AF5D1EC0(v10);
  v57 = v87;
  v31 = v89;
  v32 = v88;
  v30 = v90;
  v29 = v91;
  v28 = v92;
  sub_1AFA9E8FC(v86, sub_1AF8BDC30);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AFCC43F4(1, 3, &v93);
  v24 = v95;
  v25 = v94;
  v26 = v93;
  v27 = v97;
  v11 = v96 | 6;
  sub_1AFCC3A60(1, 2, &v98);
  v12 = v98;
  v13 = v99;
  v14 = v100;
  v15 = v101;
  LOBYTE(inited) = v102;
  v16 = v103;
  result = sub_1AF703280(3, &v104);
  *a1 = v2;
  *(a1 + 8) = v56;
  *(a1 + 16) = v55;
  *(a1 + 20) = v54;
  *(a1 + 24) = v53;
  *(a1 + 32) = v52;
  *(a1 + 40) = v51;
  *(a1 + 48) = v50;
  *(a1 + 56) = v49;
  *(a1 + 60) = v48;
  *(a1 + 64) = v47;
  *(a1 + 72) = v46;
  *(a1 + 80) = v45;
  *(a1 + 88) = v39;
  v18 = v104;
  *(a1 + 96) = v40;
  v19 = v105;
  *(a1 + 100) = v41;
  v20 = v106;
  *(a1 + 104) = v42;
  v21 = v107;
  *(a1 + 112) = v43;
  v22 = v108;
  *(a1 + 120) = v44;
  *(a1 + 128) = v38;
  v23 = v109;
  *(a1 + 136) = v37;
  *(a1 + 140) = v36;
  *(a1 + 144) = v35;
  *(a1 + 152) = v34;
  *(a1 + 160) = v33;
  *(a1 + 168) = v57;
  *(a1 + 176) = v32;
  *(a1 + 180) = v31;
  *(a1 + 184) = v30;
  *(a1 + 192) = v29;
  *(a1 + 200) = v28;
  *(a1 + 208) = v26;
  *(a1 + 216) = v25;
  *(a1 + 220) = v24;
  *(a1 + 224) = v11;
  *(a1 + 232) = 2;
  *(a1 + 240) = v27;
  *(a1 + 248) = v12;
  *(a1 + 256) = v13;
  *(a1 + 260) = v14;
  *(a1 + 264) = v15;
  *(a1 + 272) = inited;
  *(a1 + 280) = v16;
  *(a1 + 288) = v18;
  *(a1 + 296) = v19;
  *(a1 + 300) = v20;
  *(a1 + 304) = v21;
  *(a1 + 312) = v22;
  *(a1 + 320) = v23;
  return result;
}

uint64_t sub_1AFA60F0C@<X0>(uint64_t a1@<X8>)
{
  inited = type metadata accessor for ParticleInitScript(0);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v110 = qword_1ED73B840;
  v111 = 0;
  v112 = 2;
  v113 = 0;
  v114 = 2;
  v115 = 0;
  sub_1AF5B234C(0);
  v4 = v3;
  sub_1AFCC41B8(1, 3, v58);
  sub_1AF0D0FCC(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  v5 = swift_initStackObject();
  *(v5 + 16) = xmmword_1AFE431C0;
  sub_1AF5B2310(0);
  *(v5 + 32) = v6;
  *(v5 + 40) = &off_1F2558F10;
  sub_1AF5D1EC0(v5);
  v56 = v59;
  v54 = v61;
  v55 = v60;
  v53 = v62;
  v52 = v63;
  v51 = v64;
  sub_1AFA9E8FC(v58, sub_1AFA9E520);
  swift_setDeallocating();
  sub_1AF7033F4(1, v65);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = inited;
  *(v7 + 40) = &off_1F255B908;
  sub_1AF5D1EC0(v7);
  v50 = v66;
  v48 = v68;
  v49 = v67;
  v47 = v69;
  v46 = v70;
  v45 = v71;
  sub_1AFA9E8FC(v65, sub_1AF6FCA80);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF8275E0(v72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = inited;
  *(v8 + 40) = &off_1F255B908;
  sub_1AF5D1EC0(v8);
  v39 = v73;
  v40 = v74;
  v41 = v75;
  v42 = v76;
  v43 = v77;
  v44 = v78;
  sub_1AFA9E8FC(v72, sub_1AFA9E55C);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF8277CC(v79);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = inited;
  *(v9 + 40) = &off_1F255B908;
  sub_1AF5D1EC0(v9);
  v38 = v80;
  v36 = v82;
  v37 = v81;
  v35 = v83;
  v34 = v84;
  v33 = v85;
  sub_1AFA9C64C(v79);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF703D7C(1, v86);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  *(v10 + 32) = v4;
  *(v10 + 40) = &off_1F250F288;
  sub_1AF5D1EC0(v10);
  v57 = v87;
  v31 = v89;
  v32 = v88;
  v30 = v90;
  v29 = v91;
  v28 = v92;
  sub_1AFA9E8FC(v86, sub_1AF81F794);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AFCC41B8(1, 3, &v93);
  v24 = v95;
  v25 = v94;
  v26 = v93;
  v27 = v97;
  v11 = v96 | 6;
  sub_1AFCC3A60(1, 2, &v98);
  v12 = v98;
  v13 = v99;
  v14 = v100;
  v15 = v101;
  LOBYTE(v5) = v102;
  v16 = v103;
  result = sub_1AF703280(3, &v104);
  *a1 = inited;
  *(a1 + 8) = v56;
  *(a1 + 16) = v55;
  *(a1 + 20) = v54;
  *(a1 + 24) = v53;
  *(a1 + 32) = v52;
  *(a1 + 40) = v51;
  *(a1 + 48) = v50;
  *(a1 + 56) = v49;
  *(a1 + 60) = v48;
  *(a1 + 64) = v47;
  *(a1 + 72) = v46;
  *(a1 + 80) = v45;
  *(a1 + 88) = v39;
  v18 = v104;
  *(a1 + 96) = v40;
  v19 = v105;
  *(a1 + 100) = v41;
  v20 = v106;
  *(a1 + 104) = v42;
  v21 = v107;
  *(a1 + 112) = v43;
  v22 = v108;
  *(a1 + 120) = v44;
  *(a1 + 128) = v38;
  v23 = v109;
  *(a1 + 136) = v37;
  *(a1 + 140) = v36;
  *(a1 + 144) = v35;
  *(a1 + 152) = v34;
  *(a1 + 160) = v33;
  *(a1 + 168) = v57;
  *(a1 + 176) = v32;
  *(a1 + 180) = v31;
  *(a1 + 184) = v30;
  *(a1 + 192) = v29;
  *(a1 + 200) = v28;
  *(a1 + 208) = v26;
  *(a1 + 216) = v25;
  *(a1 + 220) = v24;
  *(a1 + 224) = v11;
  *(a1 + 232) = 2;
  *(a1 + 240) = v27;
  *(a1 + 248) = v12;
  *(a1 + 256) = v13;
  *(a1 + 260) = v14;
  *(a1 + 264) = v15;
  *(a1 + 272) = v5;
  *(a1 + 280) = v16;
  *(a1 + 288) = v18;
  *(a1 + 296) = v19;
  *(a1 + 300) = v20;
  *(a1 + 304) = v21;
  *(a1 + 312) = v22;
  *(a1 + 320) = v23;
  return result;
}

uint64_t sub_1AFA61490@<X0>(uint64_t a1@<X8>)
{
  updated = type metadata accessor for ParticleUpdateScript(0);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v110 = qword_1ED73B840;
  v111 = 0;
  v112 = 2;
  v113 = 0;
  v114 = 2;
  v115 = 0;
  sub_1AF5B22D4(0);
  v4 = v3;
  sub_1AFCC3F7C(1, 3, v58);
  sub_1AF0D0FCC(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  sub_1AF5B2298(0);
  *(inited + 32) = v6;
  *(inited + 40) = &off_1F2558F10;
  sub_1AF5D1EC0(inited);
  v56 = v59;
  v54 = v61;
  v55 = v60;
  v53 = v62;
  v52 = v63;
  v51 = v64;
  sub_1AFA9E8FC(v58, sub_1AFA9E4A8);
  swift_setDeallocating();
  sub_1AF70363C(1, v65);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = updated;
  *(v7 + 40) = &off_1F255BA18;
  sub_1AF5D1EC0(v7);
  v50 = v66;
  v48 = v68;
  v49 = v67;
  v47 = v69;
  v46 = v70;
  v45 = v71;
  sub_1AFA9E8FC(v65, sub_1AF6FCA44);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF827208(v72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = updated;
  *(v8 + 40) = &off_1F255BA18;
  sub_1AF5D1EC0(v8);
  v39 = v73;
  v40 = v74;
  v41 = v75;
  v42 = v76;
  v43 = v77;
  v44 = v78;
  sub_1AFA9E8FC(v72, sub_1AFA9E4E4);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF8273F4(v79);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = updated;
  *(v9 + 40) = &off_1F255BA18;
  sub_1AF5D1EC0(v9);
  v38 = v80;
  v36 = v82;
  v37 = v81;
  v35 = v83;
  v34 = v84;
  v33 = v85;
  sub_1AFA9C5F8(v79);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF703D5C(1, v86);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  *(v10 + 32) = v4;
  *(v10 + 40) = &off_1F250F288;
  sub_1AF5D1EC0(v10);
  v57 = v87;
  v31 = v89;
  v32 = v88;
  v30 = v90;
  v29 = v91;
  v28 = v92;
  sub_1AFA9E8FC(v86, sub_1AF81F67C);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AFCC3F7C(1, 3, &v93);
  v24 = v95;
  v25 = v94;
  v26 = v93;
  v27 = v97;
  v11 = v96 | 6;
  sub_1AFCC3A60(1, 2, &v98);
  v12 = v98;
  v13 = v99;
  v14 = v100;
  v15 = v101;
  LOBYTE(inited) = v102;
  v16 = v103;
  result = sub_1AF703280(3, &v104);
  *a1 = updated;
  *(a1 + 8) = v56;
  *(a1 + 16) = v55;
  *(a1 + 20) = v54;
  *(a1 + 24) = v53;
  *(a1 + 32) = v52;
  *(a1 + 40) = v51;
  *(a1 + 48) = v50;
  *(a1 + 56) = v49;
  *(a1 + 60) = v48;
  *(a1 + 64) = v47;
  *(a1 + 72) = v46;
  *(a1 + 80) = v45;
  *(a1 + 88) = v39;
  v18 = v104;
  *(a1 + 96) = v40;
  v19 = v105;
  *(a1 + 100) = v41;
  v20 = v106;
  *(a1 + 104) = v42;
  v21 = v107;
  *(a1 + 112) = v43;
  v22 = v108;
  *(a1 + 120) = v44;
  *(a1 + 128) = v38;
  v23 = v109;
  *(a1 + 136) = v37;
  *(a1 + 140) = v36;
  *(a1 + 144) = v35;
  *(a1 + 152) = v34;
  *(a1 + 160) = v33;
  *(a1 + 168) = v57;
  *(a1 + 176) = v32;
  *(a1 + 180) = v31;
  *(a1 + 184) = v30;
  *(a1 + 192) = v29;
  *(a1 + 200) = v28;
  *(a1 + 208) = v26;
  *(a1 + 216) = v25;
  *(a1 + 220) = v24;
  *(a1 + 224) = v11;
  *(a1 + 232) = 2;
  *(a1 + 240) = v27;
  *(a1 + 248) = v12;
  *(a1 + 256) = v13;
  *(a1 + 260) = v14;
  *(a1 + 264) = v15;
  *(a1 + 272) = inited;
  *(a1 + 280) = v16;
  *(a1 + 288) = v18;
  *(a1 + 296) = v19;
  *(a1 + 300) = v20;
  *(a1 + 304) = v21;
  *(a1 + 312) = v22;
  *(a1 + 320) = v23;
  return result;
}

uint64_t sub_1AFA61A14@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for TriggerScript(0);
  if (qword_1ED72D720 != -1)
  {
    swift_once();
  }

  v110 = qword_1ED73B840;
  v111 = 0;
  v112 = 2;
  v113 = 0;
  v114 = 2;
  v115 = 0;
  sub_1AF5B225C(0);
  v4 = v3;
  sub_1AFCC3D40(1, 3, v58);
  sub_1AF0D0FCC(0, &qword_1ED7269A0, sub_1AF5C5300, MEMORY[0x1E69E6F90]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1AFE431C0;
  sub_1AF5B2220(0);
  *(inited + 32) = v6;
  *(inited + 40) = &off_1F2558F10;
  sub_1AF5D1EC0(inited);
  v56 = v59;
  v54 = v61;
  v55 = v60;
  v53 = v62;
  v52 = v63;
  v51 = v64;
  sub_1AFA9E8FC(v58, sub_1AFA9E430);
  swift_setDeallocating();
  sub_1AF703AF4(1, v65);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1AFE431C0;
  *(v7 + 32) = v2;
  *(v7 + 40) = &off_1F255BB48;
  sub_1AF5D1EC0(v7);
  v50 = v66;
  v48 = v68;
  v49 = v67;
  v47 = v69;
  v46 = v70;
  v45 = v71;
  sub_1AFA9E8FC(v65, sub_1AF6FCA08);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF826E30(v72);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1AFE431C0;
  *(v8 + 32) = v2;
  *(v8 + 40) = &off_1F255BB48;
  sub_1AF5D1EC0(v8);
  v39 = v73;
  v40 = v74;
  v41 = v75;
  v42 = v76;
  v43 = v77;
  v44 = v78;
  sub_1AFA9E8FC(v72, sub_1AFA9E46C);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF82701C(v79);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1AFE431C0;
  *(v9 + 32) = v2;
  *(v9 + 40) = &off_1F255BB48;
  sub_1AF5D1EC0(v9);
  v38 = v80;
  v36 = v82;
  v37 = v81;
  v35 = v83;
  v34 = v84;
  v33 = v85;
  sub_1AFA9C5A4(v79);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AF703D3C(1, v86);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1AFE431C0;
  *(v10 + 32) = v4;
  *(v10 + 40) = &off_1F250F288;
  sub_1AF5D1EC0(v10);
  v57 = v87;
  v31 = v89;
  v32 = v88;
  v30 = v90;
  v29 = v91;
  v28 = v92;
  sub_1AFA9E8FC(v86, sub_1AF81F514);
  swift_setDeallocating();
  swift_deallocClassInstance();
  sub_1AFCC3D40(1, 3, &v93);
  v24 = v95;
  v25 = v94;
  v26 = v93;
  v27 = v97;
  v11 = v96 | 6;
  sub_1AFCC3A60(1, 2, &v98);
  v12 = v98;
  v13 = v99;
  v14 = v100;
  v15 = v101;
  LOBYTE(inited) = v102;
  v16 = v103;
  result = sub_1AF703280(3, &v104);
  *a1 = v2;
  *(a1 + 8) = v56;
  *(a1 + 16) = v55;
  *(a1 + 20) = v54;
  *(a1 + 24) = v53;
  *(a1 + 32) = v52;
  *(a1 + 40) = v51;
  *(a1 + 48) = v50;
  *(a1 + 56) = v49;
  *(a1 + 60) = v48;
  *(a1 + 64) = v47;
  *(a1 + 72) = v46;
  *(a1 + 80) = v45;
  *(a1 + 88) = v39;
  v18 = v104;
  *(a1 + 96) = v40;
  v19 = v105;
  *(a1 + 100) = v41;
  v20 = v106;
  *(a1 + 104) = v42;
  v21 = v107;
  *(a1 + 112) = v43;
  v22 = v108;
  *(a1 + 120) = v44;
  *(a1 + 128) = v38;
  v23 = v109;
  *(a1 + 136) = v37;
  *(a1 + 140) = v36;
  *(a1 + 144) = v35;
  *(a1 + 152) = v34;
  *(a1 + 160) = v33;
  *(a1 + 168) = v57;
  *(a1 + 176) = v32;
  *(a1 + 180) = v31;
  *(a1 + 184) = v30;
  *(a1 + 192) = v29;
  *(a1 + 200) = v28;
  *(a1 + 208) = v26;
  *(a1 + 216) = v25;
  *(a1 + 220) = v24;
  *(a1 + 224) = v11;
  *(a1 + 232) = 2;
  *(a1 + 240) = v27;
  *(a1 + 248) = v12;
  *(a1 + 256) = v13;
  *(a1 + 260) = v14;
  *(a1 + 264) = v15;
  *(a1 + 272) = inited;
  *(a1 + 280) = v16;
  *(a1 + 288) = v18;
  *(a1 + 296) = v19;
  *(a1 + 300) = v20;
  *(a1 + 304) = v21;
  *(a1 + 312) = v22;
  *(a1 + 320) = v23;
  return result;
}

double sub_1AFA61F98(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  if (!swift_unknownObjectRetain())
  {
    if (a2)
    {
      v4 = CFXGPUDeviceGetMTLDevice(*(a2 + 16));
    }

    else
    {
      v4 = 0;
    }

    *(v2 + 24) = v4;
  }

  swift_unknownObjectRelease();
  return result;
}

void sub_1AFA61FF8(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t, char *, __n128))
{
  v31 = 0;
  v6 = *(v3 + 24);
  v46[0] = *(v3 + 8);
  v46[1] = v6;
  v47 = *(v3 + 40);

  sub_1AF6B06C0(v7, v46, 0x200000000, &v32);
  v27 = v32;
  if (v32)
  {
    v8 = v35;
    v9 = v36;
    v10 = v38;
    v40 = v33;
    v41 = v34;
    v25 = v39;
    v26 = v37;
    if (v39 < 1)
    {

      sub_1AFA9BF94(&v32, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    else if (v36)
    {
      v11 = *(v38 + 32);
      v12 = *(v37 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);

      sub_1AFA9C3FC(&v32, v50, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFA9D6A4);
      v13 = (v8 + 24);
      v23 = a1;
      v24 = a2;
      v22 = v12;
      do
      {
        v15 = *(v13 - 6);
        v14 = *(v13 - 5);
        v16 = *(v13 - 4);
        v17 = *(v13 - 1);
        v18 = v13[2];
        v29 = v13[1];
        v30 = *v13;
        if (v12)
        {
          v19 = *(v18 + 376);

          os_unfair_lock_lock(v19);
          os_unfair_lock_lock(*(v18 + 344));
        }

        else
        {
        }

        ecs_stack_allocator_push_snapshot(v11);
        v20 = *(v10 + 64);
        v48[0] = *(v10 + 48);
        v48[1] = v20;
        v49 = *(v10 + 80);
        v21 = *(*(*(*(v18 + 40) + 16) + 32) + 16) + 1;
        *(v10 + 48) = ecs_stack_allocator_allocate(*(v10 + 32), 48 * v21, 8);
        *(v10 + 56) = v21;
        *(v10 + 72) = 0;
        *(v10 + 80) = 0;
        *(v10 + 64) = 0;
        LOBYTE(v45) = 1;
        v50[0] = v26;
        v50[1] = v18;
        v50[2] = v10;
        v50[3] = v16;
        v50[4] = (v14 - v15 + v16);
        v50[5] = v25;
        v50[6] = v15;
        v50[7] = v14;
        v50[8] = 0;
        v50[9] = 0;
        v51 = 1;
        v52 = v17;
        v53 = v30;
        v54 = v29;

        (a3)(v50, v24, v23, &v31);

        v42 = v27;
        v43 = v40;
        v44 = v41;
        sub_1AF630994(v10, &v42, v48);
        sub_1AF62D29C(v18);
        ecs_stack_allocator_pop_snapshot(v11);
        v12 = v22;
        if (v22)
        {
          os_unfair_lock_unlock(*(v18 + 344));
          os_unfair_lock_unlock(*(v18 + 376));
        }

        v13 += 6;
        --v9;
      }

      while (v9);

      sub_1AFA9BF94(&v32, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(&v32, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    else
    {

      sub_1AFA9BF94(&v32, &qword_1ED725EA0, &type metadata for QueryResult);
    }
  }

  else
  {
  }
}

uint64_t sub_1AFA62400(uint64_t result)
{
  if (*(result + 56) == 1)
  {
    v2 = result;
    *(v1 + 16) = result;
    v3 = *(result + 184);

    v4 = sub_1AF6D53D4(&type metadata for DiagnosticsTrackerInstance, &off_1F2537498, v3);

    if (v4)
    {
      swift_unknownObjectRelease();
      v11[0] = sub_1AF43EA74(MEMORY[0x1E69E7CC0]);
      sub_1AFA6ED20(v11, sub_1AF828B04, sub_1AFA9C7F0, sub_1AF706B6C, sub_1AF5B252C, type metadata accessor for GraphScript);
      sub_1AFA6ED20(v11, sub_1AF82872C, sub_1AFA9C79C, sub_1AF706AB0, sub_1AF5B24B4, type metadata accessor for SimpleScript);
      sub_1AFA6ED20(v11, sub_1AF828354, sub_1AFA9C748, sub_1AF7069F4, sub_1AF5B243C, type metadata accessor for MetalFunctionScript);
      sub_1AFA6ED20(v11, sub_1AF827F7C, sub_1AFA9C6F4, sub_1AF706938, sub_1AF5B23C4, type metadata accessor for ShaderScript);
      sub_1AFA6ED20(v11, sub_1AF828EDC, sub_1AFA9C6A0, sub_1AF70687C, sub_1AF5B25A4, type metadata accessor for EmitterScript);
      sub_1AFA6ED20(v11, sub_1AF8277CC, sub_1AFA9C64C, sub_1AF7067C0, sub_1AF5B234C, type metadata accessor for ParticleInitScript);
      sub_1AFA6ED20(v11, sub_1AF8273F4, sub_1AFA9C5F8, sub_1AF706704, sub_1AF5B22D4, type metadata accessor for ParticleUpdateScript);
      sub_1AFA6ED20(v11, sub_1AF82701C, sub_1AFA9C5A4, sub_1AF706648, sub_1AF5B225C, type metadata accessor for TriggerScript);
      sub_1AFA6ED20(v11, sub_1AF827BA4, sub_1AFA9C550, sub_1AF70658C, sub_1AF5B21E4, type metadata accessor for HeaderScript);
      v5 = v11[0];
      v6 = *(v2 + 184);

      v7 = sub_1AF6D53D4(&type metadata for DiagnosticsTrackerInstance, &off_1F2537498, v6);
      v9 = v8;

      if (v7)
      {
        ObjectType = swift_getObjectType();
        (*(v9 + 16))(v2, v5, ObjectType, v9);
        swift_unknownObjectRelease();
      }
    }
  }

  return result;
}

void sub_1AFA628DC(char *a1@<X1>, unsigned __int8 *a2@<X2>, unint64_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X6>, uint64_t a6@<X7>, uint64_t *a7@<X8>, uint64_t a8)
{
  v137 = a3;
  v128 = a4;
  v129 = a6;
  v130 = a1;
  v131 = a5;
  v127 = a7;
  v9 = MEMORY[0x1E69E6720];
  sub_1AF0D0FCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v136 = v117 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v140 = v117 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v117 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = (v117 - v18);
  v20 = *(type metadata accessor for HeaderScript(0) + 32);
  v141 = a2;
  v134 = v20;
  sub_1AFA9C3FC(&a2[v20], v16, qword_1ED730680, type metadata accessor for ScriptIndex, v9, sub_1AF0D0FCC);
  v21 = type metadata accessor for ScriptIndex(0);
  v22 = *(v21 - 8);
  v24 = v22 + 48;
  v23 = *(v22 + 48);
  v25 = v23(v16, 1, v21);
  v139 = a8;
  v133 = v23;
  if (v25 == 1)
  {
    *v19 = a8;
    swift_storeEnumTagMultiPayload();
    if (v23(v16, 1, v21) != 1)
    {
      sub_1AFA9C470(v16, qword_1ED730680, type metadata accessor for ScriptIndex);
    }
  }

  else
  {
    sub_1AFA9E320(v16, v19, type metadata accessor for ScriptIndex);
  }

  v28 = *(v22 + 56);
  v26 = v22 + 56;
  v27 = v28;
  v28(v19, 0, 1, v21);
  v29 = v138;
  v30 = v141;
  v31 = sub_1AF8BAE54(v137, v144);
  if (v29)
  {
    sub_1AFA9C470(v19, qword_1ED730680, type metadata accessor for ScriptIndex);
    return;
  }

  v135 = v21;
  v124 = v27;
  v125 = v24;
  v126 = v26;
  v33 = v144[0];
  v32 = v144[1];
  v34 = v144[2];
  MEMORY[0x1EEE9AC00](v31);
  v117[-6] = 0;
  v117[-5] = 0xE000000000000000;
  v35 = v139;
  LODWORD(v117[-4]) = v139;
  HIDWORD(v117[-4]) = v36;
  v122 = v36;
  v117[-3] = 0x726564616568;
  v117[-2] = 0xE600000000000000;
  v117[-1] = v19;
  sub_1AFBFBEF0(sub_1AFA9C4E0, &v117[-8], v33);
  v138 = 0;

  v123 = sub_1AFAF8B58(v32, v34, 0, 0xE000000000000000, v35, 0x726564616568uLL, 0xE600000000000000, v19);
  v38 = v37;

  sub_1AFA9C470(v19, qword_1ED730680, type metadata accessor for ScriptIndex);
  v39 = *v30;
  v132 = v39;
  v40 = v30;
  if (v39 > 2)
  {
    v41 = v136;
    v42 = v140;
    if (v39 == 3)
    {
      type metadata accessor for SwiftCodeLoader();
    }

    else
    {
      type metadata accessor for JavaScriptCodeLoader();
    }

    swift_allocObject();
  }

  else
  {
    v41 = v136;
    v42 = v140;
    if (v39 >= 2)
    {
      type metadata accessor for MetalAPICodeLoader(0);
      v43 = swift_allocObject();
      v44 = OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL;
      v45 = sub_1AFDFC128();
      (*(*(v45 - 8) + 56))(v43 + v44, 1, 1, v45);
      sub_1AF45207C();
      v46 = v130;
      v47 = *(v130 + 3);
      v49 = v48;
      *(v48 + 48) = v47;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      if (v47)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v73 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v116 = v73;
          swift_once();
          v73 = v116;
        }

        v144[0] = 0;
        sub_1AF0D4F18(v73, v144, 0xD000000000000024, 0x80000001AFF45460);
      }

      v74 = *(v46 + 2);

      if (v74)
      {
        v75 = *(v74 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
        v76 = *(v74 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
        v77 = v76;
      }

      else
      {
        v75 = 0;
        v76 = 0;
      }

      v78 = *(v49 + 64);
      *(v49 + 56) = v75;
      *(v49 + 64) = v76;

      goto LABEL_17;
    }

    type metadata accessor for CCodeLoader();
    *(swift_allocObject() + 128) = v132;
  }

  v50.n128_f64[0] = sub_1AF45207C();
  v49 = v51;
LABEL_17:
  if ((*(*v49 + 376))(v50))
  {
    LOWORD(v144[0]) = 512;
    type metadata accessor for XcodeCommandBuilder();
    swift_allocObject();
    v52 = sub_1AF45D418(v144);
    if (!v52)
    {

      sub_1AF81F330();
      swift_allocError();
      *v71 = 0;
      v71[1] = 0;
      swift_willThrow();

      return;
    }

    v53 = v52;
    v54 = *(v52 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v53 + 32) = v54;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v54 = sub_1AF420554(0, *(v54 + 2) + 1, 1, v54);
      *(v53 + 32) = v54;
    }

    v57 = *(v54 + 2);
    v56 = *(v54 + 3);
    if (v57 >= v56 >> 1)
    {
      v54 = sub_1AF420554(v56 > 1, v57 + 1, 1, v54);
    }

    *(v54 + 2) = v57 + 1;
    v58 = &v54[16 * v57];
    *(v58 + 4) = 5785174;
    *(v58 + 5) = 0xE300000000000000;
    *(v53 + 32) = v54;
    if (v131)
    {
      *(v53 + 26) = v128 & 1;

      sub_1AF48FAF8(v59);

      sub_1AF48FAF8(v60);
    }

    *(v49 + 120) = v53;

    v42 = v140;
  }

  v61 = v138;
  v62 = (*(*v49 + 480))(v123, v38);
  if (v61)
  {
    v144[0] = v61;
    v66 = v61;
    sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
    type metadata accessor for MTLLibraryError(0);
    if (swift_dynamicCast())
    {
      v67 = v145;
      v143 = v145;
      sub_1AFA9C4F8();
      sub_1AFDFBF18();
      if (v142 == 3)
      {

        sub_1AF4563A0();
        swift_allocError();
        v68 = v123;
        *v69 = v67;
        *(v69 + 8) = v68;
        *(v69 + 16) = v38;
        *(v69 + 24) = 0;
        *(v69 + 32) = 2;
        swift_willThrow();

LABEL_35:

        return;
      }
    }

    else
    {
    }

    goto LABEL_35;
  }

  v70 = v63;
  v120 = v64;
  v121 = v62;
  v129 = v65;
  (*(*v49 + 464))();
  v119 = v38;
  if (v132 == 2)
  {
    sub_1AFA9D6A4(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
    v79 = swift_allocObject();
    *(v79 + 1) = xmmword_1AFE431C0;
    *(v79 + 4) = sub_1AFB12464(0, 0, 0);
    *(v79 + 5) = v72;
    v79[48] = 0;
  }

  else
  {
    v79 = &unk_1F2506FC8;
  }

  v118 = v70;
  v117[0] = 0;
  v128 = v49;
  v80 = *(v79 + 2);
  v117[1] = v79;
  v81 = MEMORY[0x1E69E7CC0];
  if (!v80)
  {
    v130 = MEMORY[0x1E69E7CC0];
LABEL_80:

    v106 = v127;
    v107 = v118;
    *v127 = v121;
    v106[1] = v107;
    v108 = v129;
    v106[2] = v120;
    v106[3] = v108;
    v109 = v119;
    v106[4] = v123;
    v106[5] = v109;
    v110 = v130;
    v106[6] = v128;
    v106[7] = v110;
    v106[8] = v81;
    return;
  }

  v82 = (v79 + 48);
  v130 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v137 = v80;
    v138 = v81;
    v87 = *(v82 - 2);
    v88 = *(v82 - 1);
    LODWORD(v131) = *v82;
    sub_1AFA9C3FC(&v40[v134], v41, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720], sub_1AF0D0FCC);
    v89 = v135;
    v90 = v133;
    if (v133(v41, 1, v135) == 1)
    {
      v91 = v139;
      v92 = v122;
      *v42 = v139;
      v42[1] = v92;
      swift_storeEnumTagMultiPayload();
      v93 = v90(v41, 1, v89);

      if (v93 != 1)
      {
        sub_1AFA9C470(v41, qword_1ED730680, type metadata accessor for ScriptIndex);
      }
    }

    else
    {
      sub_1AFA9E320(v41, v42, type metadata accessor for ScriptIndex);

      v91 = v139;
    }

    v124(v42, 0, 1, v135);
    v94 = sub_1AFAF8B58(v87, v88, 0, 0xE000000000000000, v91, 0x726564616568uLL, 0xE600000000000000, v42);
    v96 = v95;
    sub_1AFA9C470(v42, qword_1ED730680, type metadata accessor for ScriptIndex);
    v97 = v132;
    if (v132 == 2)
    {

      goto LABEL_51;
    }

    v98 = sub_1AFDFEE28();

    if (v98)
    {

      v41 = v136;
LABEL_51:
      v81 = v138;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v81 = sub_1AF4246B0(0, *(v81 + 2) + 1, 1, v81);
      }

      v40 = v141;
      goto LABEL_54;
    }

    v81 = v138;
    if (v97 < 4)
    {
      break;
    }

LABEL_69:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v81 = sub_1AF4246B0(0, *(v81 + 2) + 1, 1, v81);
    }

    v40 = v141;
    v41 = v136;
LABEL_54:
    v84 = *(v81 + 2);
    v83 = *(v81 + 3);
    if (v84 >= v83 >> 1)
    {
      v81 = sub_1AF4246B0(v83 > 1, v84 + 1, 1, v81);
    }

    *(v81 + 2) = v84 + 1;
    v85 = &v81[24 * v84];
    *(v85 + 4) = v94;
    *(v85 + 5) = v96;
    v85[48] = v131;
    v86 = v137;
LABEL_57:
    v82 += 24;
    v80 = v86 - 1;
    v42 = v140;
    if (!v80)
    {
      goto LABEL_80;
    }
  }

  v99 = sub_1AFDFEE28();

  if (v99)
  {
    goto LABEL_69;
  }

  v100 = *(v128 + 80);
  if (!v100)
  {
    v111 = 0xD000000000000017;
    v112 = 0x80000001AFF45490;
    v113 = 4;
    goto LABEL_83;
  }

  v101 = sub_1AFDFCFB8();
  v102 = dlsym(v100, (v101 + 32));

  if (v102)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v130 = sub_1AF42469C(0, *(v130 + 2) + 1, 1, v130);
    }

    v40 = v141;
    v41 = v136;
    v86 = v137;
    v104 = *(v130 + 2);
    v103 = *(v130 + 3);
    if (v104 >= v103 >> 1)
    {
      v130 = sub_1AF42469C(v103 > 1, v104 + 1, 1, v130);
    }

    v105 = v130;
    *(v130 + 2) = v104 + 1;
    *&v105[8 * v104 + 32] = v102;
    goto LABEL_57;
  }

  dlerror();
  v111 = sub_1AFDFD0E8();
  v112 = v114;
  v113 = 6;
LABEL_83:
  sub_1AF4563A0();
  swift_allocError();
  *v115 = v111;
  *(v115 + 8) = v112;
  *(v115 + 16) = 0;
  *(v115 + 24) = 0;
  *(v115 + 32) = v113;
  swift_willThrow();
}

void sub_1AFA6385C(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unint64_t a10)
{
  v142 = a8;
  v145 = a7;
  v141 = a6;
  v149 = a5;
  v144 = a2;
  v139 = a1;
  v140 = a9;
  v12 = MEMORY[0x1E69E6720];
  sub_1AF0D0FCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v152 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v151 = &v125 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v125 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v125 - v21);
  v23 = *(type metadata accessor for TriggerScript(0) + 44);
  v154 = a3;
  v147 = v23;
  sub_1AFA9C3FC(a3 + v23, v19, qword_1ED730680, type metadata accessor for ScriptIndex, v12, sub_1AF0D0FCC);
  v24 = type metadata accessor for ScriptIndex(0);
  v25 = *(v24 - 8);
  v26 = v25 + 48;
  v27 = *(v25 + 48);
  v28 = v27(v19, 1, v24);
  v153 = a10;
  v148 = HIDWORD(a10);
  if (v28 == 1)
  {
    *v22 = a10;
    swift_storeEnumTagMultiPayload();
    if (v27(v19, 1, v24) != 1)
    {
      sub_1AFA9C470(v19, qword_1ED730680, type metadata accessor for ScriptIndex);
    }
  }

  else
  {
    sub_1AFA9E320(v19, v22, type metadata accessor for ScriptIndex);
  }

  v31 = *(v25 + 56);
  v29 = v25 + 56;
  v30 = v31;
  v31(v22, 0, 1, v24);
  v32 = v150;
  v33 = v154;
  sub_1AFABEDE4(a4, v149, v157);
  if (v32)
  {
    sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
    return;
  }

  v146 = v24;
  v135 = v30;
  v136 = v27;
  v137 = v26;
  v138 = v29;
  v36 = v157[0];
  v35 = v157[1];
  v37 = v157[2];
  v132 = v157[5];
  v133 = v157[6];
  MEMORY[0x1EEE9AC00](v34);
  *(&v125 - 6) = 0;
  *(&v125 - 5) = 0xE000000000000000;
  v38 = v153;
  v39 = v148;
  *(&v125 - 8) = v153;
  *(&v125 - 7) = v39;
  *(&v125 - 3) = 0x72656767697274;
  *(&v125 - 2) = 0xE700000000000000;
  *(&v125 - 1) = v22;
  sub_1AFBFBEF0(sub_1AFA9EB54, (&v125 - 8), v36);
  v150 = 0;

  v134 = sub_1AFAF8B58(v35, v37, 0, 0xE000000000000000, v38, 0x72656767697274uLL, 0xE700000000000000, v22);
  v41 = v40;

  sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
  v42 = *(v33 + 24);
  v143 = v42;
  if (v42 > 2)
  {
    v44 = v151;
    v43 = v152;
    if (v42 == 3)
    {
      type metadata accessor for SwiftCodeLoader();
    }

    else
    {
      type metadata accessor for JavaScriptCodeLoader();
    }

    swift_allocObject();
  }

  else
  {
    v44 = v151;
    v43 = v152;
    if (v42 >= 2)
    {
      v45 = v41;
      type metadata accessor for MetalAPICodeLoader(0);
      v46 = swift_allocObject();
      v47 = OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL;
      v48 = sub_1AFDFC128();
      (*(*(v48 - 8) + 56))(v46 + v47, 1, 1, v48);
      sub_1AF45207C();
      v50 = v49;
      v51 = v144;
      v52 = *(v144 + 24);
      *(v49 + 48) = v52;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      v53 = v153;
      v54 = v146;
      if (v52)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v80 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v124 = v80;
          swift_once();
          v80 = v124;
        }

        v157[0] = 0;
        sub_1AF0D4F18(v80, v157, 0xD000000000000024, 0x80000001AFF45460);
      }

      v81 = *(v51 + 16);

      if (v81)
      {
        v82 = *(v81 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
        v83 = *(v81 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
        v84 = v83;
      }

      else
      {
        v82 = 0;
        v83 = 0;
      }

      v85 = *(v50 + 64);
      *(v50 + 56) = v82;
      *(v50 + 64) = v83;

      v41 = v45;
      v43 = v152;
      goto LABEL_17;
    }

    type metadata accessor for CCodeLoader();
    *(swift_allocObject() + 128) = v42;
  }

  v55.n128_f64[0] = sub_1AF45207C();
  v50 = v56;
  v53 = v153;
  v54 = v146;
LABEL_17:
  if ((*(*v50 + 376))(v55))
  {
    LOWORD(v157[0]) = 512;
    type metadata accessor for XcodeCommandBuilder();
    swift_allocObject();
    v57 = sub_1AF45D418(v157);
    if (!v57)
    {

      sub_1AF81F330();
      swift_allocError();
      *v77 = 0;
      v77[1] = 0;
      swift_willThrow();

      goto LABEL_33;
    }

    v58 = v57;
    v59 = *(v57 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v58 + 32) = v59;
    v61 = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = sub_1AF420554(0, *(v59 + 2) + 1, 1, v59);
      *(v58 + 32) = v59;
    }

    v63 = *(v59 + 2);
    v62 = *(v59 + 3);
    if (v63 >= v62 >> 1)
    {
      v59 = sub_1AF420554(v62 > 1, v63 + 1, 1, v59);
    }

    *(v59 + 2) = v63 + 1;
    v64 = &v59[16 * v63];
    *(v64 + 4) = 5785174;
    *(v64 + 5) = 0xE300000000000000;
    *(v58 + 32) = v59;
    if (v145)
    {
      *(v58 + 26) = v141 & 1;

      sub_1AF48FAF8(v65);

      sub_1AF48FAF8(v66);
    }

    *(v50 + 120) = v58;

    v43 = v152;
    v53 = v153;
    v41 = v61;
    v44 = v151;
  }

  v67 = v150;
  v68 = (*(*v50 + 480))(v134, v41);
  if (v67)
  {
    v157[0] = v67;
    v72 = v67;
    sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
    type metadata accessor for MTLLibraryError(0);
    if (swift_dynamicCast())
    {
      v73 = v158;
      v156 = v158;
      sub_1AFA9C4F8();
      sub_1AFDFBF18();
      if (v155 == 3)
      {

        sub_1AF4563A0();
        swift_allocError();
        v74 = v134;
        *v75 = v73;
        *(v75 + 8) = v74;
        *(v75 + 16) = v41;
        *(v75 + 24) = 0;
        *(v75 + 32) = 2;
        swift_willThrow();

LABEL_36:

        return;
      }
    }

    else
    {
    }

    goto LABEL_36;
  }

  v76 = v69;
  v131 = v71;
  v129 = v70;
  v128 = v68;
  (*(*v50 + 464))();
  v127 = v41;
  if (v143 == 2)
  {
    sub_1AFA9D6A4(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1AFE431C0;
    *(v78 + 32) = sub_1AFB12464(0, 0, 0);
    *(v78 + 40) = v79;
    v130 = v78;
    *(v78 + 48) = 0;
  }

  else
  {
    v130 = &unk_1F2507000;
  }

  v126 = v76;
  v86 = *(v130 + 2);
  if (!v86)
  {
    v87 = MEMORY[0x1E69E7CC0];
    v141 = MEMORY[0x1E69E7CC0];
LABEL_75:

    v112 = v139;
    v113 = v133;
    *v139 = v132;
    v112[1] = v113;
    v114 = v140;
    v115 = v126;
    *v140 = v128;
    v114[1] = v115;
    v116 = v131;
    v114[2] = v129;
    v114[3] = v116;
    v117 = v127;
    v114[4] = v134;
    v114[5] = v117;
    v118 = v141;
    v114[6] = v50;
    v114[7] = v118;
    v114[8] = v87;
    return;
  }

  v87 = MEMORY[0x1E69E7CC0];
  v88 = (v130 + 48);
  v141 = MEMORY[0x1E69E7CC0];
  v144 = v50;
  v142 = 0;
  while (1)
  {
    v149 = v86;
    v150 = v87;
    v90 = *(v88 - 2);
    v91 = *(v88 - 1);
    LODWORD(v145) = *v88;
    sub_1AFA9C3FC(v154 + v147, v43, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720], sub_1AF0D0FCC);
    v92 = v54;
    v93 = v54;
    v94 = v136;
    if (v136(v43, 1, v92) == 1)
    {
      v95 = v148;
      *v44 = v53;
      v44[1] = v95;
      swift_storeEnumTagMultiPayload();
      v96 = v94(v43, 1, v93);

      if (v96 != 1)
      {
        sub_1AFA9C470(v43, qword_1ED730680, type metadata accessor for ScriptIndex);
      }
    }

    else
    {
      sub_1AFA9E320(v43, v44, type metadata accessor for ScriptIndex);
    }

    v54 = v146;
    v135(v44, 0, 1, v146);
    v97 = sub_1AFAF8B58(v90, v91, 0, 0xE000000000000000, v53, 0x72656767697274uLL, 0xE700000000000000, v44);
    v99 = v98;
    sub_1AFA9C470(v44, qword_1ED730680, type metadata accessor for ScriptIndex);
    v100 = v143;
    if (v143 != 2)
    {
      v101 = sub_1AFDFEE28();

      if (v101)
      {
        goto LABEL_60;
      }

      if (v100 < 4)
      {
        break;
      }
    }

LABEL_60:

    v87 = v150;
LABEL_61:
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v144;
    if ((v102 & 1) == 0)
    {
      v87 = sub_1AF4246B0(0, *(v87 + 2) + 1, 1, v87);
    }

    v104 = *(v87 + 2);
    v103 = *(v87 + 3);
    if (v104 >= v103 >> 1)
    {
      v87 = sub_1AF4246B0(v103 > 1, v104 + 1, 1, v87);
    }

    *(v87 + 2) = v104 + 1;
    v89 = &v87[24 * v104];
    *(v89 + 4) = v97;
    *(v89 + 5) = v99;
    v89[48] = v145;
    v44 = v151;
LABEL_52:
    v88 += 24;
    v86 = v149 - 1;
    v43 = v152;
    v53 = v153;
    if (v149 == 1)
    {
      goto LABEL_75;
    }
  }

  v87 = v150;
  v105 = sub_1AFDFEE28();

  if (v105)
  {
    goto LABEL_61;
  }

  v50 = v144;
  v106 = *(v144 + 80);
  if (!v106)
  {
    v119 = 0xD000000000000017;
    v120 = 0x80000001AFF45490;
    v121 = 4;
    goto LABEL_78;
  }

  v107 = sub_1AFDFCFB8();
  v108 = dlsym(v106, (v107 + 32));

  if (v108)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v141 = sub_1AF42469C(0, *(v141 + 2) + 1, 1, v141);
    }

    v44 = v151;
    v110 = *(v141 + 2);
    v109 = *(v141 + 3);
    if (v110 >= v109 >> 1)
    {
      v141 = sub_1AF42469C(v109 > 1, v110 + 1, 1, v141);
    }

    v111 = v141;
    *(v141 + 2) = v110 + 1;
    *&v111[8 * v110 + 32] = v108;
    goto LABEL_52;
  }

  dlerror();
  v119 = sub_1AFDFD0E8();
  v120 = v122;
  v121 = 6;
LABEL_78:
  sub_1AF4563A0();
  swift_allocError();
  *v123 = v119;
  *(v123 + 8) = v120;
  *(v123 + 16) = 0;
  *(v123 + 24) = 0;
  *(v123 + 32) = v121;
  swift_willThrow();

LABEL_33:
}

void sub_1AFA648B8(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unint64_t a10)
{
  v143 = a8;
  v146 = a7;
  v142 = a6;
  v150 = a5;
  v145 = a2;
  v140 = a1;
  v141 = a9;
  v12 = MEMORY[0x1E69E6720];
  sub_1AF0D0FCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v153 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v152 = &v126 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v126 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v126 - v21);
  v23 = *(type metadata accessor for ParticleUpdateScript(0) + 40);
  v155 = a3;
  v148 = v23;
  sub_1AFA9C3FC(a3 + v23, v19, qword_1ED730680, type metadata accessor for ScriptIndex, v12, sub_1AF0D0FCC);
  v24 = type metadata accessor for ScriptIndex(0);
  v25 = *(v24 - 8);
  v26 = v25 + 48;
  v27 = *(v25 + 48);
  v28 = v27(v19, 1, v24);
  v154 = a10;
  v149 = HIDWORD(a10);
  if (v28 == 1)
  {
    *v22 = a10;
    swift_storeEnumTagMultiPayload();
    if (v27(v19, 1, v24) != 1)
    {
      sub_1AFA9C470(v19, qword_1ED730680, type metadata accessor for ScriptIndex);
    }
  }

  else
  {
    sub_1AFA9E320(v19, v22, type metadata accessor for ScriptIndex);
  }

  v31 = *(v25 + 56);
  v29 = v25 + 56;
  v30 = v31;
  v32.n128_f64[0] = (v31)(v22, 0, 1, v24);
  v33 = v151;
  v34 = v155;
  v35 = sub_1AFAA3C54(a4, v150, v158, v32);
  if (v33)
  {
    sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
    return;
  }

  v147 = v24;
  v136 = v30;
  v137 = v27;
  v138 = v26;
  v139 = v29;
  v37 = v158[0];
  v36 = v158[1];
  v38 = v158[2];
  v151 = v158[4];
  v133 = v158[5];
  v134 = v158[6];
  MEMORY[0x1EEE9AC00](v35);
  *(&v126 - 6) = 0;
  *(&v126 - 5) = 0xE000000000000000;
  v39 = v154;
  v40 = v149;
  *(&v126 - 8) = v154;
  *(&v126 - 7) = v40;
  strcpy(&v126 - 24, "particleUpdate");
  *(&v126 - 9) = -18;
  *(&v126 - 1) = v22;
  sub_1AFBFBEF0(sub_1AFA9EB54, (&v126 - 8), v37);
  v150 = 0;

  v135 = sub_1AFAF8B58(v36, v38, 0, 0xE000000000000000, v39, 0x656C636974726170uLL, 0xEE00657461647055, v22);
  v42 = v41;

  sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
  v43 = *(v34 + 24);
  v144 = v43;
  if (v43 > 2)
  {
    v45 = v152;
    v44 = v153;
    if (v43 == 3)
    {
      type metadata accessor for SwiftCodeLoader();
    }

    else
    {
      type metadata accessor for JavaScriptCodeLoader();
    }

    swift_allocObject();
  }

  else
  {
    v45 = v152;
    v44 = v153;
    if (v43 >= 2)
    {
      v46 = v42;
      type metadata accessor for MetalAPICodeLoader(0);
      v47 = swift_allocObject();
      v48 = OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL;
      v49 = sub_1AFDFC128();
      (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
      sub_1AF45207C();
      v51 = v50;
      v52 = v145;
      v53 = *(v145 + 24);
      *(v50 + 48) = v53;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      v54 = v154;
      v55 = v147;
      if (v53)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v81 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v125 = v81;
          swift_once();
          v81 = v125;
        }

        v158[0] = 0;
        sub_1AF0D4F18(v81, v158, 0xD000000000000024, 0x80000001AFF45460);
      }

      v82 = *(v52 + 16);

      if (v82)
      {
        v83 = *(v82 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
        v84 = *(v82 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
        v85 = v84;
      }

      else
      {
        v83 = 0;
        v84 = 0;
      }

      v86 = *(v51 + 64);
      *(v51 + 56) = v83;
      *(v51 + 64) = v84;

      v42 = v46;
      v44 = v153;
      goto LABEL_17;
    }

    type metadata accessor for CCodeLoader();
    *(swift_allocObject() + 128) = v43;
  }

  v56.n128_f64[0] = sub_1AF45207C();
  v51 = v57;
  v54 = v154;
  v55 = v147;
LABEL_17:
  if ((*(*v51 + 376))(v56))
  {
    LOWORD(v158[0]) = 512;
    type metadata accessor for XcodeCommandBuilder();
    swift_allocObject();
    v58 = sub_1AF45D418(v158);
    if (!v58)
    {

      sub_1AF81F330();
      swift_allocError();
      *v78 = 0;
      v78[1] = 0;
      swift_willThrow();

      goto LABEL_33;
    }

    v59 = v58;
    v60 = *(v58 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v59 + 32) = v60;
    v62 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = sub_1AF420554(0, *(v60 + 2) + 1, 1, v60);
      *(v59 + 32) = v60;
    }

    v64 = *(v60 + 2);
    v63 = *(v60 + 3);
    if (v64 >= v63 >> 1)
    {
      v60 = sub_1AF420554(v63 > 1, v64 + 1, 1, v60);
    }

    *(v60 + 2) = v64 + 1;
    v65 = &v60[16 * v64];
    *(v65 + 4) = 5785174;
    *(v65 + 5) = 0xE300000000000000;
    *(v59 + 32) = v60;
    if (v146)
    {
      *(v59 + 26) = v142 & 1;

      sub_1AF48FAF8(v66);

      sub_1AF48FAF8(v67);
    }

    *(v51 + 120) = v59;

    v44 = v153;
    v54 = v154;
    v42 = v62;
    v45 = v152;
  }

  v68 = v150;
  v69 = (*(*v51 + 480))(v135, v42);
  if (v68)
  {
    v158[0] = v68;
    v73 = v68;
    sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
    type metadata accessor for MTLLibraryError(0);
    if (swift_dynamicCast())
    {
      v74 = v159;
      v157 = v159;
      sub_1AFA9C4F8();
      sub_1AFDFBF18();
      if (v156 == 3)
      {

        sub_1AF4563A0();
        swift_allocError();
        v75 = v135;
        *v76 = v74;
        *(v76 + 8) = v75;
        *(v76 + 16) = v42;
        *(v76 + 24) = 0;
        *(v76 + 32) = 2;
        swift_willThrow();

LABEL_36:

        return;
      }
    }

    else
    {
    }

    goto LABEL_36;
  }

  v77 = v70;
  v132 = v72;
  v130 = v71;
  v129 = v69;
  (*(*v51 + 464))();
  v128 = v42;
  if (v144 == 2)
  {
    sub_1AFA9D6A4(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1AFE431C0;
    *(v79 + 32) = sub_1AFB12464(0, 0, 0);
    *(v79 + 40) = v80;
    v131 = v79;
    *(v79 + 48) = 0;
  }

  else
  {
    v131 = &unk_1F2507038;
  }

  v127 = v77;
  v87 = *(v131 + 2);
  if (!v87)
  {
    v88 = MEMORY[0x1E69E7CC0];
    v142 = MEMORY[0x1E69E7CC0];
LABEL_75:

    v113 = v140;
    v114 = v134;
    *v140 = v133;
    v113[1] = v114;
    v115 = v141;
    v116 = v127;
    *v141 = v129;
    v115[1] = v116;
    v117 = v132;
    v115[2] = v130;
    v115[3] = v117;
    v118 = v128;
    v115[4] = v135;
    v115[5] = v118;
    v119 = v142;
    v115[6] = v51;
    v115[7] = v119;
    v115[8] = v88;
    return;
  }

  v88 = MEMORY[0x1E69E7CC0];
  v89 = (v131 + 48);
  v142 = MEMORY[0x1E69E7CC0];
  v145 = v51;
  v143 = 0;
  while (1)
  {
    v150 = v87;
    v151 = v88;
    v91 = *(v89 - 2);
    v92 = *(v89 - 1);
    LODWORD(v146) = *v89;
    sub_1AFA9C3FC(v155 + v148, v44, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720], sub_1AF0D0FCC);
    v93 = v55;
    v94 = v55;
    v95 = v137;
    if (v137(v44, 1, v93) == 1)
    {
      v96 = v149;
      *v45 = v54;
      v45[1] = v96;
      swift_storeEnumTagMultiPayload();
      v97 = v95(v44, 1, v94);

      if (v97 != 1)
      {
        sub_1AFA9C470(v44, qword_1ED730680, type metadata accessor for ScriptIndex);
      }
    }

    else
    {
      sub_1AFA9E320(v44, v45, type metadata accessor for ScriptIndex);
    }

    v55 = v147;
    v136(v45, 0, 1, v147);
    v98 = sub_1AFAF8B58(v91, v92, 0, 0xE000000000000000, v54, 0x656C636974726170uLL, 0xEE00657461647055, v45);
    v100 = v99;
    sub_1AFA9C470(v45, qword_1ED730680, type metadata accessor for ScriptIndex);
    v101 = v144;
    if (v144 != 2)
    {
      v102 = sub_1AFDFEE28();

      if (v102)
      {
        goto LABEL_60;
      }

      if (v101 < 4)
      {
        break;
      }
    }

LABEL_60:

    v88 = v151;
LABEL_61:
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v145;
    if ((v103 & 1) == 0)
    {
      v88 = sub_1AF4246B0(0, *(v88 + 2) + 1, 1, v88);
    }

    v105 = *(v88 + 2);
    v104 = *(v88 + 3);
    if (v105 >= v104 >> 1)
    {
      v88 = sub_1AF4246B0(v104 > 1, v105 + 1, 1, v88);
    }

    *(v88 + 2) = v105 + 1;
    v90 = &v88[24 * v105];
    *(v90 + 4) = v98;
    *(v90 + 5) = v100;
    v90[48] = v146;
    v45 = v152;
LABEL_52:
    v89 += 24;
    v87 = v150 - 1;
    v44 = v153;
    v54 = v154;
    if (v150 == 1)
    {
      goto LABEL_75;
    }
  }

  v88 = v151;
  v106 = sub_1AFDFEE28();

  if (v106)
  {
    goto LABEL_61;
  }

  v51 = v145;
  v107 = *(v145 + 80);
  if (!v107)
  {
    v120 = 0xD000000000000017;
    v121 = 0x80000001AFF45490;
    v122 = 4;
    goto LABEL_78;
  }

  v108 = sub_1AFDFCFB8();
  v109 = dlsym(v107, (v108 + 32));

  if (v109)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v142 = sub_1AF42469C(0, *(v142 + 2) + 1, 1, v142);
    }

    v45 = v152;
    v111 = *(v142 + 2);
    v110 = *(v142 + 3);
    if (v111 >= v110 >> 1)
    {
      v142 = sub_1AF42469C(v110 > 1, v111 + 1, 1, v142);
    }

    v112 = v142;
    *(v142 + 2) = v111 + 1;
    *&v112[8 * v111 + 32] = v109;
    goto LABEL_52;
  }

  dlerror();
  v120 = sub_1AFDFD0E8();
  v121 = v123;
  v122 = 6;
LABEL_78:
  sub_1AF4563A0();
  swift_allocError();
  *v124 = v120;
  *(v124 + 8) = v121;
  *(v124 + 16) = 0;
  *(v124 + 24) = 0;
  *(v124 + 32) = v122;
  swift_willThrow();

LABEL_33:
}

void sub_1AFA65930(char **a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unint64_t a10)
{
  v143 = a8;
  v146 = a7;
  v142 = a6;
  v150 = a5;
  v145 = a2;
  v140 = a1;
  v141 = a9;
  v12 = MEMORY[0x1E69E6720];
  sub_1AF0D0FCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v153 = &v126 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v152 = &v126 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v126 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v126 - v21);
  v23 = *(type metadata accessor for ParticleInitScript(0) + 40);
  v155 = a3;
  v148 = v23;
  sub_1AFA9C3FC(&a3[v23], v19, qword_1ED730680, type metadata accessor for ScriptIndex, v12, sub_1AF0D0FCC);
  v24 = type metadata accessor for ScriptIndex(0);
  v25 = *(v24 - 8);
  v26 = v25 + 48;
  v27 = *(v25 + 48);
  v28 = v27(v19, 1, v24);
  v154 = a10;
  v149 = HIDWORD(a10);
  if (v28 == 1)
  {
    *v22 = a10;
    swift_storeEnumTagMultiPayload();
    if (v27(v19, 1, v24) != 1)
    {
      sub_1AFA9C470(v19, qword_1ED730680, type metadata accessor for ScriptIndex);
    }
  }

  else
  {
    sub_1AFA9E320(v19, v22, type metadata accessor for ScriptIndex);
  }

  v31 = *(v25 + 56);
  v29 = v25 + 56;
  v30 = v31;
  v32.n128_f64[0] = (v31)(v22, 0, 1, v24);
  v33 = v151;
  v34 = v155;
  v35 = sub_1AFAA2CD8(a4, v150, v158, v32);
  if (v33)
  {
    sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
    return;
  }

  v147 = v24;
  v136 = v30;
  v137 = v27;
  v138 = v26;
  v139 = v29;
  v37 = v158[0];
  v36 = v158[1];
  v38 = v158[2];
  v151 = v158[4];
  v133 = v158[5];
  v134 = v158[6];
  MEMORY[0x1EEE9AC00](v35);
  *(&v126 - 6) = 0;
  *(&v126 - 5) = 0xE000000000000000;
  v39 = v154;
  v40 = v149;
  *(&v126 - 8) = v154;
  *(&v126 - 7) = v40;
  strcpy(&v126 - 24, "particleInit");
  *(&v126 - 11) = 0;
  *(&v126 - 5) = -5120;
  *(&v126 - 1) = v22;
  sub_1AFBFBEF0(sub_1AFA9EB54, (&v126 - 8), v37);
  v150 = 0;

  v135 = sub_1AFAF8B58(v36, v38, 0, 0xE000000000000000, v39, 0x656C636974726170uLL, 0xEC00000074696E49, v22);
  v42 = v41;

  sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
  v43 = *v34;
  v144 = v43;
  if (v43 > 2)
  {
    v45 = v152;
    v44 = v153;
    if (v43 == 3)
    {
      type metadata accessor for SwiftCodeLoader();
    }

    else
    {
      type metadata accessor for JavaScriptCodeLoader();
    }

    swift_allocObject();
  }

  else
  {
    v45 = v152;
    v44 = v153;
    if (v43 >= 2)
    {
      v46 = v42;
      type metadata accessor for MetalAPICodeLoader(0);
      v47 = swift_allocObject();
      v48 = OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL;
      v49 = sub_1AFDFC128();
      (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
      sub_1AF45207C();
      v51 = v50;
      v52 = v145;
      v53 = *(v145 + 24);
      *(v50 + 48) = v53;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      v54 = v154;
      v55 = v147;
      if (v53)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v81 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v125 = v81;
          swift_once();
          v81 = v125;
        }

        v158[0] = 0;
        sub_1AF0D4F18(v81, v158, 0xD000000000000024, 0x80000001AFF45460);
      }

      v82 = *(v52 + 16);

      if (v82)
      {
        v83 = *(v82 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
        v84 = *(v82 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
        v85 = v84;
      }

      else
      {
        v83 = 0;
        v84 = 0;
      }

      v86 = *(v51 + 64);
      *(v51 + 56) = v83;
      *(v51 + 64) = v84;

      v42 = v46;
      v44 = v153;
      goto LABEL_17;
    }

    type metadata accessor for CCodeLoader();
    *(swift_allocObject() + 128) = v43;
  }

  v56.n128_f64[0] = sub_1AF45207C();
  v51 = v57;
  v54 = v154;
  v55 = v147;
LABEL_17:
  if ((*(*v51 + 376))(v56))
  {
    LOWORD(v158[0]) = 512;
    type metadata accessor for XcodeCommandBuilder();
    swift_allocObject();
    v58 = sub_1AF45D418(v158);
    if (!v58)
    {

      sub_1AF81F330();
      swift_allocError();
      *v78 = 0;
      v78[1] = 0;
      swift_willThrow();

      goto LABEL_33;
    }

    v59 = v58;
    v60 = *(v58 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v59 + 32) = v60;
    v62 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = sub_1AF420554(0, *(v60 + 2) + 1, 1, v60);
      *(v59 + 32) = v60;
    }

    v64 = *(v60 + 2);
    v63 = *(v60 + 3);
    if (v64 >= v63 >> 1)
    {
      v60 = sub_1AF420554(v63 > 1, v64 + 1, 1, v60);
    }

    *(v60 + 2) = v64 + 1;
    v65 = &v60[16 * v64];
    *(v65 + 4) = 5785174;
    *(v65 + 5) = 0xE300000000000000;
    *(v59 + 32) = v60;
    if (v146)
    {
      *(v59 + 26) = v142 & 1;

      sub_1AF48FAF8(v66);

      sub_1AF48FAF8(v67);
    }

    *(v51 + 120) = v59;

    v44 = v153;
    v54 = v154;
    v42 = v62;
    v45 = v152;
  }

  v68 = v150;
  v69 = (*(*v51 + 480))(v135, v42);
  if (v68)
  {
    v158[0] = v68;
    v73 = v68;
    sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
    type metadata accessor for MTLLibraryError(0);
    if (swift_dynamicCast())
    {
      v74 = v159;
      v157 = v159;
      sub_1AFA9C4F8();
      sub_1AFDFBF18();
      if (v156 == 3)
      {

        sub_1AF4563A0();
        swift_allocError();
        v75 = v135;
        *v76 = v74;
        *(v76 + 8) = v75;
        *(v76 + 16) = v42;
        *(v76 + 24) = 0;
        *(v76 + 32) = 2;
        swift_willThrow();

LABEL_36:

        return;
      }
    }

    else
    {
    }

    goto LABEL_36;
  }

  v77 = v70;
  v132 = v72;
  v130 = v71;
  v129 = v69;
  (*(*v51 + 464))();
  v128 = v42;
  if (v144 == 2)
  {
    sub_1AFA9D6A4(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1AFE431C0;
    *(v79 + 32) = sub_1AFB12464(0, 0, 0);
    *(v79 + 40) = v80;
    v131 = v79;
    *(v79 + 48) = 0;
  }

  else
  {
    v131 = &unk_1F2507070;
  }

  v127 = v77;
  v87 = *(v131 + 2);
  if (!v87)
  {
    v88 = MEMORY[0x1E69E7CC0];
    v142 = MEMORY[0x1E69E7CC0];
LABEL_75:

    v113 = v140;
    v114 = v134;
    *v140 = v133;
    v113[1] = v114;
    v115 = v141;
    v116 = v127;
    *v141 = v129;
    v115[1] = v116;
    v117 = v132;
    v115[2] = v130;
    v115[3] = v117;
    v118 = v128;
    v115[4] = v135;
    v115[5] = v118;
    v119 = v142;
    v115[6] = v51;
    v115[7] = v119;
    v115[8] = v88;
    return;
  }

  v88 = MEMORY[0x1E69E7CC0];
  v89 = (v131 + 48);
  v142 = MEMORY[0x1E69E7CC0];
  v145 = v51;
  v143 = 0;
  while (1)
  {
    v150 = v87;
    v151 = v88;
    v91 = *(v89 - 2);
    v92 = *(v89 - 1);
    LODWORD(v146) = *v89;
    sub_1AFA9C3FC(&v155[v148], v44, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720], sub_1AF0D0FCC);
    v93 = v55;
    v94 = v55;
    v95 = v137;
    if (v137(v44, 1, v93) == 1)
    {
      v96 = v149;
      *v45 = v54;
      v45[1] = v96;
      swift_storeEnumTagMultiPayload();
      v97 = v95(v44, 1, v94);

      if (v97 != 1)
      {
        sub_1AFA9C470(v44, qword_1ED730680, type metadata accessor for ScriptIndex);
      }
    }

    else
    {
      sub_1AFA9E320(v44, v45, type metadata accessor for ScriptIndex);
    }

    v55 = v147;
    v136(v45, 0, 1, v147);
    v98 = sub_1AFAF8B58(v91, v92, 0, 0xE000000000000000, v54, 0x656C636974726170uLL, 0xEC00000074696E49, v45);
    v100 = v99;
    sub_1AFA9C470(v45, qword_1ED730680, type metadata accessor for ScriptIndex);
    v101 = v144;
    if (v144 != 2)
    {
      v102 = sub_1AFDFEE28();

      if (v102)
      {
        goto LABEL_60;
      }

      if (v101 < 4)
      {
        break;
      }
    }

LABEL_60:

    v88 = v151;
LABEL_61:
    v103 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v145;
    if ((v103 & 1) == 0)
    {
      v88 = sub_1AF4246B0(0, *(v88 + 2) + 1, 1, v88);
    }

    v105 = *(v88 + 2);
    v104 = *(v88 + 3);
    if (v105 >= v104 >> 1)
    {
      v88 = sub_1AF4246B0(v104 > 1, v105 + 1, 1, v88);
    }

    *(v88 + 2) = v105 + 1;
    v90 = &v88[24 * v105];
    *(v90 + 4) = v98;
    *(v90 + 5) = v100;
    v90[48] = v146;
    v45 = v152;
LABEL_52:
    v89 += 24;
    v87 = v150 - 1;
    v44 = v153;
    v54 = v154;
    if (v150 == 1)
    {
      goto LABEL_75;
    }
  }

  v88 = v151;
  v106 = sub_1AFDFEE28();

  if (v106)
  {
    goto LABEL_61;
  }

  v51 = v145;
  v107 = *(v145 + 80);
  if (!v107)
  {
    v120 = 0xD000000000000017;
    v121 = 0x80000001AFF45490;
    v122 = 4;
    goto LABEL_78;
  }

  v108 = sub_1AFDFCFB8();
  v109 = dlsym(v107, (v108 + 32));

  if (v109)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v142 = sub_1AF42469C(0, *(v142 + 2) + 1, 1, v142);
    }

    v45 = v152;
    v111 = *(v142 + 2);
    v110 = *(v142 + 3);
    if (v111 >= v110 >> 1)
    {
      v142 = sub_1AF42469C(v110 > 1, v111 + 1, 1, v142);
    }

    v112 = v142;
    *(v142 + 2) = v111 + 1;
    *&v112[8 * v111 + 32] = v109;
    goto LABEL_52;
  }

  dlerror();
  v120 = sub_1AFDFD0E8();
  v121 = v123;
  v122 = 6;
LABEL_78:
  sub_1AF4563A0();
  swift_allocError();
  *v124 = v120;
  *(v124 + 8) = v121;
  *(v124 + 16) = 0;
  *(v124 + 24) = 0;
  *(v124 + 32) = v122;
  swift_willThrow();

LABEL_33:
}

void sub_1AFA669A0(char **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char *a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v148 = a5;
  v142 = a6;
  v143 = a8;
  v144 = a2;
  v145 = a7;
  v140 = a1;
  v141 = a9;
  v12 = MEMORY[0x1E69E6720];
  sub_1AF0D0FCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v151 = v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v150 = v125 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = v125 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (v125 - v21);
  v23 = *(type metadata accessor for ShaderScript(0) + 24);
  v153 = a3;
  v147 = v23;
  sub_1AFA9C3FC(a3 + v23, v19, qword_1ED730680, type metadata accessor for ScriptIndex, v12, sub_1AF0D0FCC);
  v24 = type metadata accessor for ScriptIndex(0);
  v25 = *(v24 - 8);
  v27 = v25 + 48;
  v26 = *(v25 + 48);
  v28 = v26(v19, 1, v24);
  v152 = a10;
  v146 = v26;
  if (v28 == 1)
  {
    *v22 = a10;
    swift_storeEnumTagMultiPayload();
    if (v26(v19, 1, v24) != 1)
    {
      sub_1AFA9C470(v19, qword_1ED730680, type metadata accessor for ScriptIndex);
    }
  }

  else
  {
    sub_1AFA9E320(v19, v22, type metadata accessor for ScriptIndex);
  }

  v31 = *(v25 + 56);
  v29 = v25 + 56;
  v30 = v31;
  v31(v22, 0, 1, v24);
  v32 = a4;
  v33 = v149;
  v34 = v24;
  v35 = v153;
  v36 = sub_1AFAAADB4(v32, v148, v156);
  if (v33)
  {
    sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
    return;
  }

  v148 = v34;
  v137 = v30;
  v138 = v27;
  v139 = v29;
  v37 = v156[0];
  v38 = v156[1];
  v39 = v156[2];
  v135 = v156[5];
  v134 = v156[6];
  MEMORY[0x1EEE9AC00](v36);
  v125[-6] = 0;
  v125[-5] = 0xE000000000000000;
  v40 = v152;
  LODWORD(v125[-4]) = v152;
  HIDWORD(v125[-4]) = v41;
  v133 = v41;
  v125[-3] = 0x726564616873;
  v125[-2] = 0xE600000000000000;
  v125[-1] = v22;
  sub_1AFBFBEF0(sub_1AFA9EB54, &v125[-8], v37);
  v149 = 0;

  v136 = sub_1AFAF8B58(v38, v39, 0, 0xE000000000000000, v40, 0x726564616873uLL, 0xE600000000000000, v22);
  v43 = v42;

  sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
  v44 = *(v35 + 16);
  v45 = v35;
  if (v44 > 2)
  {
    v46 = v150;
    v47 = v151;
    if (v44 == 3)
    {
      type metadata accessor for SwiftCodeLoader();
    }

    else
    {
      type metadata accessor for JavaScriptCodeLoader();
    }

    swift_allocObject();
    goto LABEL_16;
  }

  v46 = v150;
  v47 = v151;
  if (v44 < 2)
  {
    type metadata accessor for CCodeLoader();
    *(swift_allocObject() + 128) = v44;
LABEL_16:
    v57.n128_f64[0] = sub_1AF45207C();
    v53 = v58;
    v56 = v152;
    goto LABEL_17;
  }

  v48 = v43;
  type metadata accessor for MetalAPICodeLoader(0);
  v49 = swift_allocObject();
  v50 = OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL;
  v51 = sub_1AFDFC128();
  (*(*(v51 - 8) + 56))(v49 + v50, 1, 1, v51);
  sub_1AF45207C();
  v53 = v52;
  v54 = v144;
  v55 = *(v144 + 24);
  *(v52 + 48) = v55;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  v56 = v152;
  if (v55)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v106 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v124 = v106;
      swift_once();
      v106 = v124;
    }

    v156[0] = 0;
    sub_1AF0D4F18(v106, v156, 0xD000000000000024, 0x80000001AFF45460);
    v54 = v144;
  }

  v107 = *(v54 + 16);

  if (v107)
  {
    v108 = *(v107 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
    v109 = *(v107 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    v110 = v109;
  }

  else
  {
    v108 = 0;
    v109 = 0;
  }

  v111 = *(v53 + 64);
  *(v53 + 56) = v108;
  *(v53 + 64) = v109;

  v43 = v48;
  v46 = v150;
  v45 = v35;
LABEL_17:
  if ((*(*v53 + 376))(v57))
  {
    v59 = v45;
    LOWORD(v156[0]) = 512;
    type metadata accessor for XcodeCommandBuilder();
    swift_allocObject();
    v60 = sub_1AF45D418(v156);
    if (!v60)
    {

      sub_1AF81F330();
      swift_allocError();
      *v80 = 0;
      v80[1] = 0;
      swift_willThrow();

      goto LABEL_33;
    }

    v61 = v60;
    v62 = *(v60 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v61 + 32) = v62;
    v64 = v43;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v62 = sub_1AF420554(0, *(v62 + 2) + 1, 1, v62);
      *(v61 + 32) = v62;
    }

    v66 = *(v62 + 2);
    v65 = *(v62 + 3);
    if (v66 >= v65 >> 1)
    {
      v62 = sub_1AF420554(v65 > 1, v66 + 1, 1, v62);
    }

    *(v62 + 2) = v66 + 1;
    v67 = &v62[16 * v66];
    *(v67 + 4) = 5785174;
    *(v67 + 5) = 0xE300000000000000;
    *(v61 + 32) = v62;
    if (v145)
    {
      *(v61 + 26) = v142 & 1;

      sub_1AF48FAF8(v68);

      sub_1AF48FAF8(v69);
    }

    *(v53 + 120) = v61;

    v43 = v64;
    v56 = v152;
    v46 = v150;
    v45 = v59;
  }

  v70 = v149;
  v71 = (*(*v53 + 480))(v136, v43);
  if (!v70)
  {
    v79 = v72;
    v129 = v73;
    v130 = v71;
    v142 = v74;
    (*(*v53 + 464))();
    v126 = v79;
    v125[1] = 0;
    v127 = v43;
    v128 = sub_1AFABA41C();
    v81 = *(v128 + 2);
    if (!v81)
    {
      v149 = MEMORY[0x1E69E7CC0];
      v143 = MEMORY[0x1E69E7CC0];
LABEL_74:

      v112 = v140;
      v113 = v134;
      *v140 = v135;
      v112[1] = v113;
      v114 = v141;
      v115 = v126;
      *v141 = v130;
      v114[1] = v115;
      v116 = v142;
      v114[2] = v129;
      v114[3] = v116;
      v117 = v127;
      v114[4] = v136;
      v114[5] = v117;
      v118 = v143;
      v114[6] = v53;
      v114[7] = v118;
      v114[8] = v149;
      return;
    }

    v82 = v47;
    v83 = (v128 + 48);
    v149 = MEMORY[0x1E69E7CC0];
    v143 = MEMORY[0x1E69E7CC0];
    v131 = v53;
    v132 = v44;
    while (1)
    {
      v145 = v81;
      v86 = *(v83 - 2);
      v87 = *(v83 - 1);
      LODWORD(v144) = *v83;
      sub_1AFA9C3FC(v45 + v147, v82, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720], sub_1AF0D0FCC);
      v88 = v148;
      v89 = v146;
      if (v146(v82, 1, v148) == 1)
      {
        v90 = v133;
        *v46 = v56;
        v46[1] = v90;
        swift_storeEnumTagMultiPayload();
        v91 = v89(v82, 1, v88);

        if (v91 != 1)
        {
          sub_1AFA9C470(v82, qword_1ED730680, type metadata accessor for ScriptIndex);
        }
      }

      else
      {
        sub_1AFA9E320(v82, v46, type metadata accessor for ScriptIndex);
      }

      v137(v46, 0, 1, v148);
      v92 = sub_1AFAF8B58(v86, v87, 0, 0xE000000000000000, v56, 0x726564616873uLL, 0xE600000000000000, v46);
      v94 = v93;
      sub_1AFA9C470(v46, qword_1ED730680, type metadata accessor for ScriptIndex);
      v95 = v132;
      if (v132 == 2)
      {
        break;
      }

      v96 = sub_1AFDFEE28();

      if (v96)
      {
        goto LABEL_49;
      }

      v45 = v153;
      v82 = v151;
      if (v95 >= 4)
      {

LABEL_50:
        v53 = v131;
LABEL_51:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v149 = sub_1AF4246B0(0, *(v149 + 2) + 1, 1, v149);
        }

        v98 = *(v149 + 2);
        v97 = *(v149 + 3);
        if (v98 >= v97 >> 1)
        {
          v149 = sub_1AF4246B0(v97 > 1, v98 + 1, 1, v149);
        }

        v84 = v149;
        *(v149 + 2) = v98 + 1;
        v85 = &v84[24 * v98];
        *(v85 + 4) = v92;
        *(v85 + 5) = v94;
        v85[48] = v144;
        goto LABEL_39;
      }

      v99 = sub_1AFDFEE28();

      v45 = v153;
      v82 = v151;
      v53 = v131;
      if (v99)
      {
        goto LABEL_51;
      }

      v100 = *(v131 + 80);
      if (!v100)
      {
        v119 = 0xD000000000000017;
        v120 = 0x80000001AFF45490;
        v121 = 4;
        goto LABEL_77;
      }

      v101 = sub_1AFDFCFB8();
      v102 = dlsym(v100, (v101 + 32));

      if (!v102)
      {
        dlerror();
        v119 = sub_1AFDFD0E8();
        v120 = v122;
        v121 = 6;
LABEL_77:
        sub_1AF4563A0();
        swift_allocError();
        *v123 = v119;
        *(v123 + 8) = v120;
        *(v123 + 16) = 0;
        *(v123 + 24) = 0;
        *(v123 + 32) = v121;
        swift_willThrow();

LABEL_33:

        return;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v143 = sub_1AF42469C(0, *(v143 + 2) + 1, 1, v143);
      }

      v104 = *(v143 + 2);
      v103 = *(v143 + 3);
      if (v104 >= v103 >> 1)
      {
        v143 = sub_1AF42469C(v103 > 1, v104 + 1, 1, v143);
      }

      v105 = v143;
      *(v143 + 2) = v104 + 1;
      *&v105[8 * v104 + 32] = v102;
LABEL_39:
      v83 += 24;
      v81 = v145 - 1;
      v56 = v152;
      v46 = v150;
      if (v145 == 1)
      {
        goto LABEL_74;
      }
    }

LABEL_49:

    v45 = v153;
    v82 = v151;
    goto LABEL_50;
  }

  v156[0] = v70;
  v75 = v70;
  sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
  type metadata accessor for MTLLibraryError(0);
  if (swift_dynamicCast())
  {
    v76 = v157;
    v155 = v157;
    sub_1AFA9C4F8();
    sub_1AFDFBF18();
    if (v154 == 3)
    {

      sub_1AF4563A0();
      swift_allocError();
      v77 = v136;
      *v78 = v76;
      *(v78 + 8) = v77;
      *(v78 + 16) = v43;
      *(v78 + 24) = 0;
      *(v78 + 32) = 2;
      swift_willThrow();

      return;
    }
  }

  else
  {
  }
}

void sub_1AFA67994(uint64_t a1@<X1>, uint64_t a2@<X2>, void (*a3)(_DWORD *, void, uint64_t, uint64_t)@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t *a8@<X8>, uint64_t a9)
{
  v139 = a7;
  v142 = a6;
  v138 = a5;
  v144 = a3;
  v145 = a4;
  v140 = a1;
  v132 = a8;
  v10 = MEMORY[0x1E69E6720];
  sub_1AF0D0FCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v136 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v134 = (&v127 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v127 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v127 - v19);
  v141 = type metadata accessor for MetalFunctionScript(0);
  v21 = v141[6];
  v147 = a2;
  v133 = v21;
  sub_1AFA9C3FC(a2 + v21, v17, qword_1ED730680, type metadata accessor for ScriptIndex, v10, sub_1AF0D0FCC);
  v22 = type metadata accessor for ScriptIndex(0);
  v23 = *(v22 - 8);
  v24 = *(v23 + 48);
  v25 = v24(v17, 1, v22);
  v143 = a9;
  v135 = v23 + 48;
  v137 = v24;
  if (v25 == 1)
  {
    *v20 = a9;
    swift_storeEnumTagMultiPayload();
    v26 = v22;
    if (v24(v17, 1, v22) != 1)
    {
      sub_1AFA9C470(v17, qword_1ED730680, type metadata accessor for ScriptIndex);
    }
  }

  else
  {
    v26 = v22;
    sub_1AFA9E320(v17, v20, type metadata accessor for ScriptIndex);
  }

  v29 = *(v23 + 56);
  v28 = v23 + 56;
  v27 = v29;
  v30 = v26;
  v29(v20, 0, 1, v26);
  v31 = v146;
  v32 = sub_1AFAA98BC(v144, v145, v152);
  if (v31)
  {
    sub_1AFA9C470(v20, qword_1ED730680, type metadata accessor for ScriptIndex);
    return;
  }

  v144 = v27;
  v145 = v28;
  v33 = v152[0];
  v34 = v152[1];
  v35 = v152[2];
  MEMORY[0x1EEE9AC00](v32);
  *(&v127 - 6) = 0;
  *(&v127 - 5) = 0xE000000000000000;
  v36 = v143;
  *(&v127 - 8) = v143;
  *(&v127 - 7) = v37;
  v130 = v37;
  *(&v127 - 3) = 0x6C656E72656BLL;
  *(&v127 - 2) = 0xE600000000000000;
  *(&v127 - 1) = v20;
  sub_1AFBFBEF0(sub_1AFA9EB54, (&v127 - 8), v33);
  v146 = 0;

  v38 = sub_1AFAF8B58(v34, v35, 0, 0xE000000000000000, v36, 0x6C656E72656BuLL, 0xE600000000000000, v20);
  v40 = v39;
  v41 = v147;

  sub_1AFA9C470(v20, qword_1ED730680, type metadata accessor for ScriptIndex);
  v42 = *(v41 + 16);
  v131 = v42;
  if (v42 > 2)
  {
    if (v42 == 3)
    {
      type metadata accessor for SwiftCodeLoader();
    }

    else
    {
      type metadata accessor for JavaScriptCodeLoader();
    }

    swift_allocObject();
    goto LABEL_16;
  }

  if (v42 < 2)
  {
    type metadata accessor for CCodeLoader();
    *(swift_allocObject() + 128) = v42;
LABEL_16:
    v50.n128_f64[0] = sub_1AF45207C();
    v47 = v51;
    goto LABEL_17;
  }

  type metadata accessor for MetalAPICodeLoader(0);
  v43 = swift_allocObject();
  v44 = OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL;
  v45 = sub_1AFDFC128();
  (*(*(v45 - 8) + 56))(v43 + v44, 1, 1, v45);
  sub_1AF45207C();
  v47 = v46;
  v48 = v140;
  v49 = *(v140 + 24);
  *(v46 + 48) = v49;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  if (v49)
  {
    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1ED730EA0 != -1)
    {
      swift_once();
    }

    v77 = sub_1AFDFDA08();
    if (qword_1ED731058 != -1)
    {
      v126 = v77;
      swift_once();
      v77 = v126;
    }

    v152[0] = 0;
    sub_1AF0D4F18(v77, v152, 0xD000000000000024, 0x80000001AFF45460);
  }

  v78 = *(v48 + 16);

  if (v78)
  {
    v79 = *(v78 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
    v80 = *(v78 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
    v81 = v80;
  }

  else
  {
    v79 = 0;
    v80 = 0;
  }

  v82 = *(v47 + 64);
  *(v47 + 56) = v79;
  *(v47 + 64) = v80;

LABEL_17:
  if ((*(*v47 + 376))(v50))
  {
    LOWORD(v152[0]) = 512;
    type metadata accessor for XcodeCommandBuilder();
    swift_allocObject();
    v52 = sub_1AF45D418(v152);
    if (!v52)
    {

      sub_1AF81F330();
      swift_allocError();
      *v72 = 0;
      v72[1] = 0;
      swift_willThrow();

      return;
    }

    v53 = v52;
    v54 = *(v52 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v53 + 32) = v54;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v54 = sub_1AF420554(0, *(v54 + 2) + 1, 1, v54);
      *(v53 + 32) = v54;
    }

    v57 = *(v54 + 2);
    v56 = *(v54 + 3);
    if (v57 >= v56 >> 1)
    {
      v54 = sub_1AF420554(v56 > 1, v57 + 1, 1, v54);
    }

    *(v54 + 2) = v57 + 1;
    v58 = &v54[16 * v57];
    *(v58 + 4) = 5785174;
    *(v58 + 5) = 0xE300000000000000;
    *(v53 + 32) = v54;
    if (v142)
    {
      *(v53 + 26) = v138 & 1;

      sub_1AF48FAF8(v59);

      sub_1AF48FAF8(v60);
    }

    *(v47 + 120) = v53;

    v41 = v147;
  }

  v61 = v146;
  v62 = (*(*v47 + 480))(v38, v40);
  if (v61)
  {
    v152[0] = v61;
    v66 = v61;
    sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
    type metadata accessor for MTLLibraryError(0);
    if (swift_dynamicCast())
    {
      v67 = v153;
      v151 = v153;
      sub_1AFA9C4F8();
      sub_1AFDFBF18();
      if (v150 == 3)
      {

        sub_1AF4563A0();
        swift_allocError();
        *v68 = v67;
        *(v68 + 8) = v38;
        *(v68 + 16) = v40;
        *(v68 + 24) = 0;
        *(v68 + 32) = 2;
        swift_willThrow();

LABEL_35:

        return;
      }
    }

    else
    {
    }

    goto LABEL_35;
  }

  v69 = v63;
  v70 = v65;
  v146 = v64;
  v71 = v62;
  (*(*v47 + 464))();
  v139 = v71;
  v140 = v69;
  v73 = *(v41 + v141[8]);
  v74 = v73[2];
  v129 = v40;
  v128 = v38;
  if (v74)
  {
    v76 = v73[4];
    v75 = v73[5];
  }

  else
  {
    v76 = 0;
    v75 = 0;
  }

  v142 = v70;
  v83 = sub_1AFB08DA4(v76, v75, 0, 0xE000000000000000, 1, 1);
  v85 = v84;

  v86 = v141[9];
  v87 = v147;
  v88 = *(v147 + v86);
  v89 = sub_1AFB12464(v83, v85, *(v147 + v86));
  v91 = v90;

  v141 = v89;
  v148[0] = v89;
  v148[1] = v91;
  LODWORD(v138) = v88;
  v149 = v88;
  v92 = v136;
  sub_1AFA9C3FC(v87 + v133, v136, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720], sub_1AF0D0FCC);
  if (v137(v92, 1, v30) == 1)
  {
    v93 = v143;
    v94 = v134;
    v95 = v130;
    *v134 = v143;
    v94[1] = v95;
    swift_storeEnumTagMultiPayload();
    v96 = v137(v92, 1, v30);

    if (v96 != 1)
    {
      sub_1AFA9C470(v92, qword_1ED730680, type metadata accessor for ScriptIndex);
    }
  }

  else
  {
    v94 = v134;
    sub_1AFA9E320(v92, v134, type metadata accessor for ScriptIndex);

    v93 = v143;
  }

  v144(v94, 0, 1, v30);
  v97 = sub_1AFAF8B58(v141, v91, 0, 0xE000000000000000, v93, 0x6C656E72656BuLL, 0xE600000000000000, v94);
  v147 = v98;
  sub_1AFA9C470(v94, qword_1ED730680, type metadata accessor for ScriptIndex);
  v99 = v131;
  if (v131 <= 1)
  {
    v101 = v97;
  }

  else
  {
    v100 = v142;
    v101 = v97;
    if (v131 == 2)
    {

      goto LABEL_59;
    }
  }

  v102 = sub_1AFDFEE28();

  if (v102)
  {

    v100 = v142;
LABEL_59:
    v103 = MEMORY[0x1E69E7CC0];
    v104 = swift_isUniquelyReferenced_nonNull_native();
    v105 = v129;
    if ((v104 & 1) == 0)
    {
      v103 = sub_1AF4246B0(0, *(v103 + 2) + 1, 1, v103);
    }

    v107 = *(v103 + 2);
    v106 = *(v103 + 3);
    v108 = v107 + 1;
    if (v107 < v106 >> 1)
    {
      goto LABEL_62;
    }

    goto LABEL_70;
  }

  if (v99 >= 4)
  {

    v105 = v129;
    goto LABEL_67;
  }

  v115 = sub_1AFDFEE28();

  v105 = v129;
  if (v115)
  {
LABEL_67:
    v103 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_1AF4246B0(0, *(v103 + 2) + 1, 1, v103);
    }

    v107 = *(v103 + 2);
    v106 = *(v103 + 3);
    v108 = v107 + 1;
    v100 = v142;
    if (v107 < v106 >> 1)
    {
      goto LABEL_62;
    }

LABEL_70:
    v103 = sub_1AF4246B0(v106 > 1, v108, 1, v103);
LABEL_62:
    v109 = v138;
    *(v103 + 2) = v108;
    v110 = &v103[24 * v107];
    v111 = v147;
    *(v110 + 4) = v101;
    *(v110 + 5) = v111;
    v110[48] = v109;
    v112 = MEMORY[0x1E69E7CC0];
LABEL_63:
    sub_1AFA9D650(v148);
    v113 = v132;
    v114 = v140;
    *v132 = v139;
    v113[1] = v114;
    v113[2] = v146;
    v113[3] = v100;
    v113[4] = v128;
    v113[5] = v105;
    v113[6] = v47;
    v113[7] = v112;
    v113[8] = v103;
    return;
  }

  v116 = *(v47 + 80);
  if (v116)
  {
    v117 = sub_1AFDFCFB8();
    v118 = dlsym(v116, (v117 + 32));

    if (v118)
    {

      v112 = MEMORY[0x1E69E7CC0];
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_1AF42469C(0, *(v112 + 2) + 1, 1, v112);
      }

      v120 = *(v112 + 2);
      v119 = *(v112 + 3);
      if (v120 >= v119 >> 1)
      {
        v112 = sub_1AF42469C(v119 > 1, v120 + 1, 1, v112);
      }

      *(v112 + 2) = v120 + 1;
      *&v112[8 * v120 + 32] = v118;
      v103 = MEMORY[0x1E69E7CC0];
      v100 = v142;
      goto LABEL_63;
    }

    dlerror();
    v121 = sub_1AFDFD0E8();
    v122 = v124;
    v123 = 6;
  }

  else
  {
    v121 = 0xD000000000000017;
    v122 = 0x80000001AFF45490;
    v123 = 4;
  }

  sub_1AF4563A0();
  swift_allocError();
  *v125 = v121;
  *(v125 + 8) = v122;
  *(v125 + 16) = 0;
  *(v125 + 24) = 0;
  *(v125 + 32) = v123;
  swift_willThrow();

  sub_1AFA9D650(v148);
  swift_bridgeObjectRelease_n();
}

void sub_1AFA68950(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unint64_t a10)
{
  v147 = a8;
  v150 = a7;
  v146 = a6;
  v154 = a5;
  v149 = a2;
  v144 = a1;
  v145 = a9;
  v12 = MEMORY[0x1E69E6720];
  sub_1AF0D0FCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v156 = &v130 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v157 = &v130 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v130 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v130 - v21);
  v23 = *(type metadata accessor for SimpleScript(0) + 40);
  v159 = a3;
  v152 = v23;
  sub_1AFA9C3FC(a3 + v23, v19, qword_1ED730680, type metadata accessor for ScriptIndex, v12, sub_1AF0D0FCC);
  v24 = type metadata accessor for ScriptIndex(0);
  v25 = *(v24 - 8);
  v26 = v25 + 48;
  v27 = *(v25 + 48);
  v28 = v27(v19, 1, v24);
  v158 = a10;
  v153 = HIDWORD(a10);
  if (v28 == 1)
  {
    *v22 = a10;
    swift_storeEnumTagMultiPayload();
    if (v27(v19, 1, v24) != 1)
    {
      sub_1AFA9C470(v19, qword_1ED730680, type metadata accessor for ScriptIndex);
    }
  }

  else
  {
    sub_1AFA9E320(v19, v22, type metadata accessor for ScriptIndex);
  }

  v31 = *(v25 + 56);
  v29 = v25 + 56;
  v30 = v31;
  v32.n128_f64[0] = (v31)(v22, 0, 1, v24);
  v33 = v155;
  v34 = v159;
  sub_1AFAA86E4(a4, v154, v162, v32);
  if (v33)
  {
    sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
    return;
  }

  v151 = v24;
  v140 = v30;
  v141 = v27;
  v142 = v26;
  v143 = v29;
  v37 = v162[0];
  v36 = v162[1];
  v38 = v162[2];
  v137 = v162[5];
  v138 = v162[6];
  MEMORY[0x1EEE9AC00](v35);
  *(&v130 - 6) = 0;
  *(&v130 - 5) = 0xE000000000000000;
  v39 = v158;
  v40 = v153;
  *(&v130 - 8) = v158;
  *(&v130 - 7) = v40;
  *(&v130 - 3) = 0x656C706D6973;
  *(&v130 - 2) = 0xE600000000000000;
  *(&v130 - 1) = v22;
  sub_1AFBFBEF0(sub_1AFA9EB54, (&v130 - 8), v37);
  v155 = 0;

  v139 = sub_1AFAF8B58(v36, v38, 0, 0xE000000000000000, v39, 0x656C706D6973uLL, 0xE600000000000000, v22);
  v42 = v41;

  sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
  v43 = *(v34 + 32);
  v148 = v43;
  if (v43 > 2)
  {
    v45 = v156;
    v44 = v157;
    if (v43 == 3)
    {
      type metadata accessor for SwiftCodeLoader();
    }

    else
    {
      type metadata accessor for JavaScriptCodeLoader();
    }

    swift_allocObject();
  }

  else
  {
    v45 = v156;
    v44 = v157;
    if (v43 >= 2)
    {
      v46 = v42;
      type metadata accessor for MetalAPICodeLoader(0);
      v47 = swift_allocObject();
      v48 = OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL;
      v49 = sub_1AFDFC128();
      (*(*(v49 - 8) + 56))(v47 + v48, 1, 1, v49);
      sub_1AF45207C();
      v51 = v50;
      v52 = v149;
      v53 = *(v149 + 24);
      *(v50 + 48) = v53;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      v54 = v158;
      v55 = v151;
      if (v53)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v81 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v129 = v81;
          swift_once();
          v81 = v129;
        }

        v162[0] = 0;
        sub_1AF0D4F18(v81, v162, 0xD000000000000024, 0x80000001AFF45460);
      }

      v82 = *(v52 + 16);

      if (v82)
      {
        v83 = *(v82 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
        v84 = *(v82 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
        v85 = v84;
      }

      else
      {
        v83 = 0;
        v84 = 0;
      }

      v86 = *(v51 + 64);
      *(v51 + 56) = v83;
      *(v51 + 64) = v84;

      v42 = v46;
      v44 = v157;
      goto LABEL_17;
    }

    type metadata accessor for CCodeLoader();
    *(swift_allocObject() + 128) = v43;
  }

  v56.n128_f64[0] = sub_1AF45207C();
  v51 = v57;
  v54 = v158;
  v55 = v151;
LABEL_17:
  if ((*(*v51 + 376))(v56))
  {
    LOWORD(v162[0]) = 512;
    type metadata accessor for XcodeCommandBuilder();
    swift_allocObject();
    v58 = sub_1AF45D418(v162);
    if (!v58)
    {

      sub_1AF81F330();
      swift_allocError();
      *v78 = 0;
      v78[1] = 0;
      swift_willThrow();

      goto LABEL_33;
    }

    v59 = v58;
    v60 = *(v58 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v59 + 32) = v60;
    v62 = v42;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v60 = sub_1AF420554(0, *(v60 + 2) + 1, 1, v60);
      *(v59 + 32) = v60;
    }

    v64 = *(v60 + 2);
    v63 = *(v60 + 3);
    if (v64 >= v63 >> 1)
    {
      v60 = sub_1AF420554(v63 > 1, v64 + 1, 1, v60);
    }

    *(v60 + 2) = v64 + 1;
    v65 = &v60[16 * v64];
    *(v65 + 4) = 5785174;
    *(v65 + 5) = 0xE300000000000000;
    *(v59 + 32) = v60;
    if (v150)
    {
      *(v59 + 26) = v146 & 1;

      sub_1AF48FAF8(v66);

      sub_1AF48FAF8(v67);
    }

    *(v51 + 120) = v59;

    v44 = v157;
    v54 = v158;
    v42 = v62;
    v45 = v156;
  }

  v68 = v155;
  v69 = (*(*v51 + 480))(v139, v42);
  if (v68)
  {
    v162[0] = v68;
    v73 = v68;
    sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
    type metadata accessor for MTLLibraryError(0);
    if (swift_dynamicCast())
    {
      v74 = v163;
      v161 = v163;
      sub_1AFA9C4F8();
      sub_1AFDFBF18();
      if (v160 == 3)
      {

        sub_1AF4563A0();
        swift_allocError();
        v75 = v139;
        *v76 = v74;
        *(v76 + 8) = v75;
        *(v76 + 16) = v42;
        *(v76 + 24) = 0;
        *(v76 + 32) = 2;
        swift_willThrow();

LABEL_36:

        return;
      }
    }

    else
    {
    }

    goto LABEL_36;
  }

  v77 = v70;
  v136 = v72;
  v134 = v71;
  v133 = v69;
  (*(*v51 + 464))();
  v132 = v42;
  if (v148 == 2)
  {
    sub_1AFA9D6A4(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
    v79 = swift_allocObject();
    *(v79 + 16) = xmmword_1AFE431C0;
    *(v79 + 32) = sub_1AFB12464(0, 0, 0);
    *(v79 + 40) = v80;
    v135 = v79;
    *(v79 + 48) = 0;
  }

  else
  {
    v135 = &unk_1F25070A8;
  }

  v131 = v77;
  v87 = *(v135 + 2);
  if (!v87)
  {
    v155 = MEMORY[0x1E69E7CC0];
    v146 = MEMORY[0x1E69E7CC0];
LABEL_77:

    v117 = v144;
    v118 = v138;
    *v144 = v137;
    v117[1] = v118;
    v119 = v145;
    v120 = v131;
    *v145 = v133;
    v119[1] = v120;
    v121 = v136;
    v119[2] = v134;
    v119[3] = v121;
    v122 = v132;
    v119[4] = v139;
    v119[5] = v122;
    v123 = v146;
    v119[6] = v51;
    v119[7] = v123;
    v119[8] = v155;
    return;
  }

  v88 = (v135 + 48);
  v155 = MEMORY[0x1E69E7CC0];
  v146 = MEMORY[0x1E69E7CC0];
  v149 = v51;
  v147 = 0;
  while (1)
  {
    v154 = v87;
    v91 = *(v88 - 2);
    v92 = *(v88 - 1);
    LODWORD(v150) = *v88;
    sub_1AFA9C3FC(v159 + v152, v45, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720], sub_1AF0D0FCC);
    v93 = v45;
    v94 = v55;
    v95 = v45;
    v96 = v55;
    v97 = v141;
    if (v141(v93, 1, v94) == 1)
    {
      v98 = v153;
      *v44 = v54;
      v44[1] = v98;
      swift_storeEnumTagMultiPayload();
      v99 = v97(v95, 1, v96);

      if (v99 != 1)
      {
        sub_1AFA9C470(v95, qword_1ED730680, type metadata accessor for ScriptIndex);
      }
    }

    else
    {
      sub_1AFA9E320(v95, v44, type metadata accessor for ScriptIndex);
    }

    v55 = v151;
    v140(v44, 0, 1, v151);
    v100 = sub_1AFAF8B58(v91, v92, 0, 0xE000000000000000, v54, 0x656C706D6973uLL, 0xE600000000000000, v44);
    v101 = v44;
    v102 = v100;
    v104 = v103;
    sub_1AFA9C470(v101, qword_1ED730680, type metadata accessor for ScriptIndex);
    v105 = v148;
    if (v148 == 2)
    {
      goto LABEL_62;
    }

    v106 = sub_1AFDFEE28();

    if ((v106 & 1) == 0)
    {
      break;
    }

LABEL_65:
    v108 = swift_isUniquelyReferenced_nonNull_native();
    v51 = v149;
    if ((v108 & 1) == 0)
    {
      v155 = sub_1AF4246B0(0, *(v155 + 2) + 1, 1, v155);
    }

    v110 = *(v155 + 2);
    v109 = *(v155 + 3);
    if (v110 >= v109 >> 1)
    {
      v155 = sub_1AF4246B0(v109 > 1, v110 + 1, 1, v155);
    }

    v89 = v155;
    *(v155 + 2) = v110 + 1;
    v90 = &v89[24 * v110];
    *(v90 + 4) = v102;
    *(v90 + 5) = v104;
    v90[48] = v150;
    v45 = v156;
LABEL_52:
    v88 += 24;
    v87 = v154 - 1;
    v44 = v157;
    v54 = v158;
    if (v154 == 1)
    {
      goto LABEL_77;
    }
  }

  if (v105 >= 4)
  {
LABEL_62:

    goto LABEL_65;
  }

  v107 = sub_1AFDFEE28();

  if (v107)
  {
    goto LABEL_65;
  }

  v51 = v149;
  v111 = *(v149 + 80);
  if (!v111)
  {
    v124 = 0xD000000000000017;
    v125 = 0x80000001AFF45490;
    v126 = 4;
    goto LABEL_80;
  }

  v112 = sub_1AFDFCFB8();
  v113 = dlsym(v111, (v112 + 32));

  if (v113)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v146 = sub_1AF42469C(0, *(v146 + 2) + 1, 1, v146);
    }

    v45 = v156;
    v115 = *(v146 + 2);
    v114 = *(v146 + 3);
    if (v115 >= v114 >> 1)
    {
      v146 = sub_1AF42469C(v114 > 1, v115 + 1, 1, v146);
    }

    v116 = v146;
    *(v146 + 2) = v115 + 1;
    *&v116[8 * v115 + 32] = v113;
    goto LABEL_52;
  }

  dlerror();
  v124 = sub_1AFDFD0E8();
  v125 = v127;
  v126 = 6;
LABEL_80:
  sub_1AF4563A0();
  swift_allocError();
  *v128 = v124;
  *(v128 + 8) = v125;
  *(v128 + 16) = 0;
  *(v128 + 24) = 0;
  *(v128 + 32) = v126;
  swift_willThrow();

LABEL_33:
}

void sub_1AFA699C0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unint64_t a10)
{
  v142 = a8;
  v145 = a7;
  v141 = a6;
  v149 = a5;
  v144 = a2;
  v139 = a1;
  v140 = a9;
  v12 = MEMORY[0x1E69E6720];
  sub_1AF0D0FCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v152 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v151 = &v125 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v125 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v125 - v21);
  v23 = *(type metadata accessor for GraphScript(0) + 44);
  v154 = a3;
  v147 = v23;
  sub_1AFA9C3FC(a3 + v23, v19, qword_1ED730680, type metadata accessor for ScriptIndex, v12, sub_1AF0D0FCC);
  v24 = type metadata accessor for ScriptIndex(0);
  v25 = *(v24 - 8);
  v26 = v25 + 48;
  v27 = *(v25 + 48);
  v28 = v27(v19, 1, v24);
  v153 = a10;
  v148 = HIDWORD(a10);
  if (v28 == 1)
  {
    *v22 = a10;
    swift_storeEnumTagMultiPayload();
    if (v27(v19, 1, v24) != 1)
    {
      sub_1AFA9C470(v19, qword_1ED730680, type metadata accessor for ScriptIndex);
    }
  }

  else
  {
    sub_1AFA9E320(v19, v22, type metadata accessor for ScriptIndex);
  }

  v31 = *(v25 + 56);
  v29 = v25 + 56;
  v30 = v31;
  v31(v22, 0, 1, v24);
  v32 = v150;
  v33 = v154;
  sub_1AFAA650C(a4, v149, v157);
  if (v32)
  {
    sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
    return;
  }

  v146 = v24;
  v135 = v30;
  v136 = v27;
  v137 = v26;
  v138 = v29;
  v36 = v157[0];
  v35 = v157[1];
  v37 = v157[2];
  v132 = v157[5];
  v133 = v157[6];
  MEMORY[0x1EEE9AC00](v34);
  *(&v125 - 6) = 0;
  *(&v125 - 5) = 0xE000000000000000;
  v38 = v153;
  v39 = v148;
  *(&v125 - 8) = v153;
  *(&v125 - 7) = v39;
  *(&v125 - 3) = 0x6870617267;
  *(&v125 - 2) = 0xE500000000000000;
  *(&v125 - 1) = v22;
  sub_1AFBFBEF0(sub_1AFA9EB54, (&v125 - 8), v36);
  v150 = 0;

  v134 = sub_1AFAF8B58(v35, v37, 0, 0xE000000000000000, v38, 0x6870617267uLL, 0xE500000000000000, v22);
  v41 = v40;

  sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
  v42 = *(v33 + 24);
  v143 = v42;
  if (v42 > 2)
  {
    v44 = v151;
    v43 = v152;
    if (v42 == 3)
    {
      type metadata accessor for SwiftCodeLoader();
    }

    else
    {
      type metadata accessor for JavaScriptCodeLoader();
    }

    swift_allocObject();
  }

  else
  {
    v44 = v151;
    v43 = v152;
    if (v42 >= 2)
    {
      v45 = v41;
      type metadata accessor for MetalAPICodeLoader(0);
      v46 = swift_allocObject();
      v47 = OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL;
      v48 = sub_1AFDFC128();
      (*(*(v48 - 8) + 56))(v46 + v47, 1, 1, v48);
      sub_1AF45207C();
      v50 = v49;
      v51 = v144;
      v52 = *(v144 + 24);
      *(v49 + 48) = v52;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      v53 = v153;
      v54 = v146;
      if (v52)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v80 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v124 = v80;
          swift_once();
          v80 = v124;
        }

        v157[0] = 0;
        sub_1AF0D4F18(v80, v157, 0xD000000000000024, 0x80000001AFF45460);
      }

      v81 = *(v51 + 16);

      if (v81)
      {
        v82 = *(v81 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
        v83 = *(v81 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
        v84 = v83;
      }

      else
      {
        v82 = 0;
        v83 = 0;
      }

      v85 = *(v50 + 64);
      *(v50 + 56) = v82;
      *(v50 + 64) = v83;

      v41 = v45;
      v43 = v152;
      goto LABEL_17;
    }

    type metadata accessor for CCodeLoader();
    *(swift_allocObject() + 128) = v42;
  }

  v55.n128_f64[0] = sub_1AF45207C();
  v50 = v56;
  v53 = v153;
  v54 = v146;
LABEL_17:
  if ((*(*v50 + 376))(v55))
  {
    LOWORD(v157[0]) = 512;
    type metadata accessor for XcodeCommandBuilder();
    swift_allocObject();
    v57 = sub_1AF45D418(v157);
    if (!v57)
    {

      sub_1AF81F330();
      swift_allocError();
      *v77 = 0;
      v77[1] = 0;
      swift_willThrow();

      goto LABEL_33;
    }

    v58 = v57;
    v59 = *(v57 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v58 + 32) = v59;
    v61 = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = sub_1AF420554(0, *(v59 + 2) + 1, 1, v59);
      *(v58 + 32) = v59;
    }

    v63 = *(v59 + 2);
    v62 = *(v59 + 3);
    if (v63 >= v62 >> 1)
    {
      v59 = sub_1AF420554(v62 > 1, v63 + 1, 1, v59);
    }

    *(v59 + 2) = v63 + 1;
    v64 = &v59[16 * v63];
    *(v64 + 4) = 5785174;
    *(v64 + 5) = 0xE300000000000000;
    *(v58 + 32) = v59;
    if (v145)
    {
      *(v58 + 26) = v141 & 1;

      sub_1AF48FAF8(v65);

      sub_1AF48FAF8(v66);
    }

    *(v50 + 120) = v58;

    v43 = v152;
    v53 = v153;
    v41 = v61;
    v44 = v151;
  }

  v67 = v150;
  v68 = (*(*v50 + 480))(v134, v41);
  if (v67)
  {
    v157[0] = v67;
    v72 = v67;
    sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
    type metadata accessor for MTLLibraryError(0);
    if (swift_dynamicCast())
    {
      v73 = v158;
      v156 = v158;
      sub_1AFA9C4F8();
      sub_1AFDFBF18();
      if (v155 == 3)
      {

        sub_1AF4563A0();
        swift_allocError();
        v74 = v134;
        *v75 = v73;
        *(v75 + 8) = v74;
        *(v75 + 16) = v41;
        *(v75 + 24) = 0;
        *(v75 + 32) = 2;
        swift_willThrow();

LABEL_36:

        return;
      }
    }

    else
    {
    }

    goto LABEL_36;
  }

  v76 = v69;
  v131 = v71;
  v129 = v70;
  v128 = v68;
  (*(*v50 + 464))();
  v127 = v41;
  if (v143 == 2)
  {
    sub_1AFA9D6A4(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1AFE431C0;
    *(v78 + 32) = sub_1AFB12464(0, 0, 0);
    *(v78 + 40) = v79;
    v130 = v78;
    *(v78 + 48) = 0;
  }

  else
  {
    v130 = &unk_1F25070E0;
  }

  v126 = v76;
  v86 = *(v130 + 2);
  if (!v86)
  {
    v87 = MEMORY[0x1E69E7CC0];
    v141 = MEMORY[0x1E69E7CC0];
LABEL_75:

    v112 = v139;
    v113 = v133;
    *v139 = v132;
    v112[1] = v113;
    v114 = v140;
    v115 = v126;
    *v140 = v128;
    v114[1] = v115;
    v116 = v131;
    v114[2] = v129;
    v114[3] = v116;
    v117 = v127;
    v114[4] = v134;
    v114[5] = v117;
    v118 = v141;
    v114[6] = v50;
    v114[7] = v118;
    v114[8] = v87;
    return;
  }

  v87 = MEMORY[0x1E69E7CC0];
  v88 = (v130 + 48);
  v141 = MEMORY[0x1E69E7CC0];
  v144 = v50;
  v142 = 0;
  while (1)
  {
    v149 = v86;
    v150 = v87;
    v90 = *(v88 - 2);
    v91 = *(v88 - 1);
    LODWORD(v145) = *v88;
    sub_1AFA9C3FC(v154 + v147, v43, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720], sub_1AF0D0FCC);
    v92 = v54;
    v93 = v54;
    v94 = v136;
    if (v136(v43, 1, v92) == 1)
    {
      v95 = v148;
      *v44 = v53;
      v44[1] = v95;
      swift_storeEnumTagMultiPayload();
      v96 = v94(v43, 1, v93);

      if (v96 != 1)
      {
        sub_1AFA9C470(v43, qword_1ED730680, type metadata accessor for ScriptIndex);
      }
    }

    else
    {
      sub_1AFA9E320(v43, v44, type metadata accessor for ScriptIndex);
    }

    v54 = v146;
    v135(v44, 0, 1, v146);
    v97 = sub_1AFAF8B58(v90, v91, 0, 0xE000000000000000, v53, 0x6870617267uLL, 0xE500000000000000, v44);
    v99 = v98;
    sub_1AFA9C470(v44, qword_1ED730680, type metadata accessor for ScriptIndex);
    v100 = v143;
    if (v143 != 2)
    {
      v101 = sub_1AFDFEE28();

      if (v101)
      {
        goto LABEL_60;
      }

      if (v100 < 4)
      {
        break;
      }
    }

LABEL_60:

    v87 = v150;
LABEL_61:
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v144;
    if ((v102 & 1) == 0)
    {
      v87 = sub_1AF4246B0(0, *(v87 + 2) + 1, 1, v87);
    }

    v104 = *(v87 + 2);
    v103 = *(v87 + 3);
    if (v104 >= v103 >> 1)
    {
      v87 = sub_1AF4246B0(v103 > 1, v104 + 1, 1, v87);
    }

    *(v87 + 2) = v104 + 1;
    v89 = &v87[24 * v104];
    *(v89 + 4) = v97;
    *(v89 + 5) = v99;
    v89[48] = v145;
    v44 = v151;
LABEL_52:
    v88 += 24;
    v86 = v149 - 1;
    v43 = v152;
    v53 = v153;
    if (v149 == 1)
    {
      goto LABEL_75;
    }
  }

  v87 = v150;
  v105 = sub_1AFDFEE28();

  if (v105)
  {
    goto LABEL_61;
  }

  v50 = v144;
  v106 = *(v144 + 80);
  if (!v106)
  {
    v119 = 0xD000000000000017;
    v120 = 0x80000001AFF45490;
    v121 = 4;
    goto LABEL_78;
  }

  v107 = sub_1AFDFCFB8();
  v108 = dlsym(v106, (v107 + 32));

  if (v108)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v141 = sub_1AF42469C(0, *(v141 + 2) + 1, 1, v141);
    }

    v44 = v151;
    v110 = *(v141 + 2);
    v109 = *(v141 + 3);
    if (v110 >= v109 >> 1)
    {
      v141 = sub_1AF42469C(v109 > 1, v110 + 1, 1, v141);
    }

    v111 = v141;
    *(v141 + 2) = v110 + 1;
    *&v111[8 * v110 + 32] = v108;
    goto LABEL_52;
  }

  dlerror();
  v119 = sub_1AFDFD0E8();
  v120 = v122;
  v121 = 6;
LABEL_78:
  sub_1AF4563A0();
  swift_allocError();
  *v123 = v119;
  *(v123 + 8) = v120;
  *(v123 + 16) = 0;
  *(v123 + 24) = 0;
  *(v123 + 32) = v121;
  swift_willThrow();

LABEL_33:
}

void sub_1AFA6AA14(void *a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, unint64_t a10)
{
  v142 = a8;
  v145 = a7;
  v141 = a6;
  v149 = a5;
  v144 = a2;
  v139 = a1;
  v140 = a9;
  v12 = MEMORY[0x1E69E6720];
  sub_1AF0D0FCC(0, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v152 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v151 = &v125 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v125 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = (&v125 - v21);
  v23 = *(type metadata accessor for EmitterScript(0) + 32);
  v154 = a3;
  v147 = v23;
  sub_1AFA9C3FC(&a3[v23], v19, qword_1ED730680, type metadata accessor for ScriptIndex, v12, sub_1AF0D0FCC);
  v24 = type metadata accessor for ScriptIndex(0);
  v25 = *(v24 - 8);
  v26 = v25 + 48;
  v27 = *(v25 + 48);
  v28 = v27(v19, 1, v24);
  v153 = a10;
  v148 = HIDWORD(a10);
  if (v28 == 1)
  {
    *v22 = a10;
    swift_storeEnumTagMultiPayload();
    if (v27(v19, 1, v24) != 1)
    {
      sub_1AFA9C470(v19, qword_1ED730680, type metadata accessor for ScriptIndex);
    }
  }

  else
  {
    sub_1AFA9E320(v19, v22, type metadata accessor for ScriptIndex);
  }

  v31 = *(v25 + 56);
  v29 = v25 + 56;
  v30 = v31;
  v31(v22, 0, 1, v24);
  v32 = v150;
  v33 = v154;
  v34 = sub_1AFAA7344(a4, v149, v157);
  if (v32)
  {
    sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
    return;
  }

  v146 = v24;
  v135 = v30;
  v136 = v27;
  v137 = v26;
  v138 = v29;
  v36 = v157[0];
  v35 = v157[1];
  v37 = v157[2];
  v132 = v157[5];
  v133 = v157[6];
  MEMORY[0x1EEE9AC00](v34);
  *(&v125 - 6) = 0;
  *(&v125 - 5) = 0xE000000000000000;
  v38 = v153;
  v39 = v148;
  *(&v125 - 8) = v153;
  *(&v125 - 7) = v39;
  *(&v125 - 3) = 0x72657474696D65;
  *(&v125 - 2) = 0xE700000000000000;
  *(&v125 - 1) = v22;
  sub_1AFBFBEF0(sub_1AFA9EB54, (&v125 - 8), v36);
  v150 = 0;

  v134 = sub_1AFAF8B58(v35, v37, 0, 0xE000000000000000, v38, 0x72657474696D65uLL, 0xE700000000000000, v22);
  v41 = v40;

  sub_1AFA9C470(v22, qword_1ED730680, type metadata accessor for ScriptIndex);
  v42 = *v33;
  v143 = v42;
  if (v42 > 2)
  {
    v44 = v151;
    v43 = v152;
    if (v42 == 3)
    {
      type metadata accessor for SwiftCodeLoader();
    }

    else
    {
      type metadata accessor for JavaScriptCodeLoader();
    }

    swift_allocObject();
  }

  else
  {
    v44 = v151;
    v43 = v152;
    if (v42 >= 2)
    {
      v45 = v41;
      type metadata accessor for MetalAPICodeLoader(0);
      v46 = swift_allocObject();
      v47 = OBJC_IVAR____TtC3VFXP33_C4E2DBBBFC07D2822B3288C0270C06A818MetalAPICodeLoader_sourceURL;
      v48 = sub_1AFDFC128();
      (*(*(v48 - 8) + 56))(v46 + v47, 1, 1, v48);
      sub_1AF45207C();
      v50 = v49;
      v51 = v144;
      v52 = *(v144 + 24);
      *(v49 + 48) = v52;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRelease();
      v53 = v153;
      v54 = v146;
      if (v52)
      {
        swift_unknownObjectRelease();
      }

      else
      {
        if (qword_1ED730EA0 != -1)
        {
          swift_once();
        }

        v80 = sub_1AFDFDA08();
        if (qword_1ED731058 != -1)
        {
          v124 = v80;
          swift_once();
          v80 = v124;
        }

        v157[0] = 0;
        sub_1AF0D4F18(v80, v157, 0xD000000000000024, 0x80000001AFF45460);
      }

      v81 = *(v51 + 16);

      if (v81)
      {
        v82 = *(v81 + OBJC_IVAR____TtC3VFX13EntityManager_isInPrepare);
        v83 = *(v81 + OBJC_IVAR____TtC3VFX13EntityManager_shaderArchive);
        v84 = v83;
      }

      else
      {
        v82 = 0;
        v83 = 0;
      }

      v85 = *(v50 + 64);
      *(v50 + 56) = v82;
      *(v50 + 64) = v83;

      v41 = v45;
      v43 = v152;
      goto LABEL_17;
    }

    type metadata accessor for CCodeLoader();
    *(swift_allocObject() + 128) = v42;
  }

  v55.n128_f64[0] = sub_1AF45207C();
  v50 = v56;
  v53 = v153;
  v54 = v146;
LABEL_17:
  if ((*(*v50 + 376))(v55))
  {
    LOWORD(v157[0]) = 512;
    type metadata accessor for XcodeCommandBuilder();
    swift_allocObject();
    v57 = sub_1AF45D418(v157);
    if (!v57)
    {

      sub_1AF81F330();
      swift_allocError();
      *v77 = 0;
      v77[1] = 0;
      swift_willThrow();

      goto LABEL_33;
    }

    v58 = v57;
    v59 = *(v57 + 32);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v58 + 32) = v59;
    v61 = v41;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v59 = sub_1AF420554(0, *(v59 + 2) + 1, 1, v59);
      *(v58 + 32) = v59;
    }

    v63 = *(v59 + 2);
    v62 = *(v59 + 3);
    if (v63 >= v62 >> 1)
    {
      v59 = sub_1AF420554(v62 > 1, v63 + 1, 1, v59);
    }

    *(v59 + 2) = v63 + 1;
    v64 = &v59[16 * v63];
    *(v64 + 4) = 5785174;
    *(v64 + 5) = 0xE300000000000000;
    *(v58 + 32) = v59;
    if (v145)
    {
      *(v58 + 26) = v141 & 1;

      sub_1AF48FAF8(v65);

      sub_1AF48FAF8(v66);
    }

    *(v50 + 120) = v58;

    v43 = v152;
    v53 = v153;
    v41 = v61;
    v44 = v151;
  }

  v67 = v150;
  v68 = (*(*v50 + 480))(v134, v41);
  if (v67)
  {
    v157[0] = v67;
    v72 = v67;
    sub_1AF5C5358(0, &qword_1ED7268D0, MEMORY[0x1E69E7280]);
    type metadata accessor for MTLLibraryError(0);
    if (swift_dynamicCast())
    {
      v73 = v158;
      v156 = v158;
      sub_1AFA9C4F8();
      sub_1AFDFBF18();
      if (v155 == 3)
      {

        sub_1AF4563A0();
        swift_allocError();
        v74 = v134;
        *v75 = v73;
        *(v75 + 8) = v74;
        *(v75 + 16) = v41;
        *(v75 + 24) = 0;
        *(v75 + 32) = 2;
        swift_willThrow();

LABEL_36:

        return;
      }
    }

    else
    {
    }

    goto LABEL_36;
  }

  v76 = v69;
  v131 = v71;
  v129 = v70;
  v128 = v68;
  (*(*v50 + 464))();
  v127 = v41;
  if (v143 == 2)
  {
    sub_1AFA9D6A4(0, &qword_1ED721EB8, &type metadata for ScriptFunction, MEMORY[0x1E69E6F90]);
    v78 = swift_allocObject();
    *(v78 + 16) = xmmword_1AFE431C0;
    *(v78 + 32) = sub_1AFB12464(0, 0, 0);
    *(v78 + 40) = v79;
    v130 = v78;
    *(v78 + 48) = 0;
  }

  else
  {
    v130 = &unk_1F2507118;
  }

  v126 = v76;
  v86 = *(v130 + 2);
  if (!v86)
  {
    v87 = MEMORY[0x1E69E7CC0];
    v141 = MEMORY[0x1E69E7CC0];
LABEL_75:

    v112 = v139;
    v113 = v133;
    *v139 = v132;
    v112[1] = v113;
    v114 = v140;
    v115 = v126;
    *v140 = v128;
    v114[1] = v115;
    v116 = v131;
    v114[2] = v129;
    v114[3] = v116;
    v117 = v127;
    v114[4] = v134;
    v114[5] = v117;
    v118 = v141;
    v114[6] = v50;
    v114[7] = v118;
    v114[8] = v87;
    return;
  }

  v87 = MEMORY[0x1E69E7CC0];
  v88 = (v130 + 48);
  v141 = MEMORY[0x1E69E7CC0];
  v144 = v50;
  v142 = 0;
  while (1)
  {
    v149 = v86;
    v150 = v87;
    v90 = *(v88 - 2);
    v91 = *(v88 - 1);
    LODWORD(v145) = *v88;
    sub_1AFA9C3FC(&v154[v147], v43, qword_1ED730680, type metadata accessor for ScriptIndex, MEMORY[0x1E69E6720], sub_1AF0D0FCC);
    v92 = v54;
    v93 = v54;
    v94 = v136;
    if (v136(v43, 1, v92) == 1)
    {
      v95 = v148;
      *v44 = v53;
      v44[1] = v95;
      swift_storeEnumTagMultiPayload();
      v96 = v94(v43, 1, v93);

      if (v96 != 1)
      {
        sub_1AFA9C470(v43, qword_1ED730680, type metadata accessor for ScriptIndex);
      }
    }

    else
    {
      sub_1AFA9E320(v43, v44, type metadata accessor for ScriptIndex);
    }

    v54 = v146;
    v135(v44, 0, 1, v146);
    v97 = sub_1AFAF8B58(v90, v91, 0, 0xE000000000000000, v53, 0x72657474696D65uLL, 0xE700000000000000, v44);
    v99 = v98;
    sub_1AFA9C470(v44, qword_1ED730680, type metadata accessor for ScriptIndex);
    v100 = v143;
    if (v143 != 2)
    {
      v101 = sub_1AFDFEE28();

      if (v101)
      {
        goto LABEL_60;
      }

      if (v100 < 4)
      {
        break;
      }
    }

LABEL_60:

    v87 = v150;
LABEL_61:
    v102 = swift_isUniquelyReferenced_nonNull_native();
    v50 = v144;
    if ((v102 & 1) == 0)
    {
      v87 = sub_1AF4246B0(0, *(v87 + 2) + 1, 1, v87);
    }

    v104 = *(v87 + 2);
    v103 = *(v87 + 3);
    if (v104 >= v103 >> 1)
    {
      v87 = sub_1AF4246B0(v103 > 1, v104 + 1, 1, v87);
    }

    *(v87 + 2) = v104 + 1;
    v89 = &v87[24 * v104];
    *(v89 + 4) = v97;
    *(v89 + 5) = v99;
    v89[48] = v145;
    v44 = v151;
LABEL_52:
    v88 += 24;
    v86 = v149 - 1;
    v43 = v152;
    v53 = v153;
    if (v149 == 1)
    {
      goto LABEL_75;
    }
  }

  v87 = v150;
  v105 = sub_1AFDFEE28();

  if (v105)
  {
    goto LABEL_61;
  }

  v50 = v144;
  v106 = *(v144 + 80);
  if (!v106)
  {
    v119 = 0xD000000000000017;
    v120 = 0x80000001AFF45490;
    v121 = 4;
    goto LABEL_78;
  }

  v107 = sub_1AFDFCFB8();
  v108 = dlsym(v106, (v107 + 32));

  if (v108)
  {

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v141 = sub_1AF42469C(0, *(v141 + 2) + 1, 1, v141);
    }

    v44 = v151;
    v110 = *(v141 + 2);
    v109 = *(v141 + 3);
    if (v110 >= v109 >> 1)
    {
      v141 = sub_1AF42469C(v109 > 1, v110 + 1, 1, v141);
    }

    v111 = v141;
    *(v141 + 2) = v110 + 1;
    *&v111[8 * v110 + 32] = v108;
    goto LABEL_52;
  }

  dlerror();
  v119 = sub_1AFDFD0E8();
  v120 = v122;
  v121 = 6;
LABEL_78:
  sub_1AF4563A0();
  swift_allocError();
  *v123 = v119;
  *(v123 + 8) = v120;
  *(v123 + 16) = 0;
  *(v123 + 24) = 0;
  *(v123 + 32) = v121;
  swift_willThrow();

LABEL_33:
}

void sub_1AFA6BA70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(uint64_t a1), uint64_t a8, unsigned __int8 *a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v71 = a8;
  v69 = a7;
  v76 = a6;
  v77 = a5;
  v75 = a4;
  sub_1AF5B21E4(0);
  v73 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v58[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1AFDFC548();
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v58[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = sub_1AFDFC4F8();
  *&v70 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v58[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v72 = swift_projectBox();
  os_unfair_lock_lock(*(a1 + 72));
  v28 = *(a1 + 80);
  if (!*(v28 + 16) || (v29 = sub_1AF41ACD4(a2, a3), (v30 & 1) == 0))
  {
    v88 = 0;
    v86 = 0u;
    memset(v87, 0, sizeof(v87));
    v85 = 0u;
    v89 = -1;
    goto LABEL_7;
  }

  v67 = a3;
  v68 = a2;
  sub_1AF85B3D4(*(v28 + 56) + 96 * v29, &v85);
  if (v89 == 255)
  {
LABEL_7:
    sub_1AFA9BF94(&v85, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_8;
  }

  sub_1AF85B3D4(&v85, &v81);
  sub_1AFA9BF94(&v85, &qword_1EB642590, &type metadata for CompilationStatus);
  *(v80 + 9) = *(&v84[1] + 9);
  v79[2] = v83;
  v79[3] = v84[0];
  v80[0] = v84[1];
  v79[0] = v81;
  v79[1] = v82;
  if (BYTE8(v84[2]))
  {
    sub_1AFA9C0C8(v79);
LABEL_8:
    os_unfair_lock_unlock(*(a1 + 72));
LABEL_9:
    sub_1AF81F330();
    v31 = swift_allocError();
    *v32 = xmmword_1AFE4C400;
    v77();

    return;
  }

  v33 = *&v79[0];
  os_unfair_lock_unlock(*(a1 + 72));
  if (v33 != v75)
  {
    goto LABEL_9;
  }

  v66 = a14;
  v65 = a13;
  v64 = a12;
  v63 = a11;
  v62 = a10;
  v61 = a9;
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v60 = a15;
  v34 = sub_1AFDFC538();
  sub_1AF477C68(v34, qword_1ED73B608);
  v35 = sub_1AFDFC528();
  sub_1AFDFC558();
  v59 = sub_1AFDFDB78();
  if (sub_1AFDFDCE8())
  {

    sub_1AFDFC588();

    if ((*(v22 + 88))(v24, v21) == *MEMORY[0x1E69E93E8])
    {
      v36 = "[Error] Interval already ended";
    }

    else
    {
      (*(v22 + 8))(v24, v21);
      v36 = "";
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v35, v59, v38, "buildScript", v36, v37, 2u);
    MEMORY[0x1B271DEA0](v37, -1, -1);
  }

  (*(v70 + 8))(v27, v25);
  sub_1AFA628DC(a1, v61, v63, v64, v65, v66, &v81, v60);
  v39 = v82;
  v40 = v83;
  v71 = *&v84[0];
  v70 = *(v84 + 8);
  v69 = sub_1AF5B21E4;
  v41 = v74;
  sub_1AFA9E3C8(v72, v74, sub_1AF5B21E4);
  v42 = v73;
  v41[*(v73 + 40)] = 1;
  v43 = sub_1AF458208(v40, *(&v40 + 1));
  v45 = sub_1AF458308(v39, *(&v39 + 1), v43, v44 & 1);

  v46 = *(v42 + 52);

  *&v41[v46] = v45;
  *(&v86 + 1) = v42;
  v47 = sub_1AF585714(&v85);
  sub_1AFA9E3C8(v41, v47, v69);
  *(v87 + 8) = v70;
  *&v87[0] = v71;
  v88 = &type metadata for CodableVoid;
  sub_1AFA9E8FC(v41, sub_1AF5B21E4);
  v48 = v68;
  v89 = 1;
  os_unfair_lock_lock(*(a1 + 72));
  v49 = *(a1 + 80);
  v50 = v67;
  if (*(v49 + 16))
  {
    v51 = sub_1AF41ACD4(v48, v67);
    if (v52)
    {
      sub_1AF85B3D4(*(v49 + 56) + 96 * v51, &v81);
      sub_1AF85B3D4(&v81, v79);
      if (BYTE8(v80[1]))
      {
        sub_1AFA9C0C8(v79);
LABEL_29:
        os_unfair_lock_unlock(*(a1 + 72));
        sub_1AF81F330();
        v56 = swift_allocError();
        *v57 = xmmword_1AFE4C400;
        v77();

        sub_1AFA9C0C8(&v81);
        sub_1AFA9C0C8(&v85);
        return;
      }

      if (*&v79[0] != v75)
      {
        goto LABEL_29;
      }

      sub_1AF85B3D4(&v85, v79);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = *(a1 + 80);
      *(a1 + 80) = 0x8000000000000000;
      sub_1AF855F54(v79, v48, v50, isUniquelyReferenced_nonNull_native);
      sub_1AFA9C0C8(&v81);
      *(a1 + 80) = v78;
    }
  }

  os_unfair_lock_unlock(*(a1 + 72));
  sub_1AF85B3D4(&v85, &v81);
  if (BYTE8(v84[2]) == 1)
  {

    (v77)(0);
    sub_1AFA9C0C8(&v85);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v84 + 1);
LABEL_28:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v81);
    return;
  }

  if (BYTE8(v84[2]) == 2)
  {
    v54 = v83;
    v55 = v83;
    (v77)(v54);

    sub_1AFA9C0C8(&v85);
    goto LABEL_28;
  }

  sub_1AFDFE518();
  __break(1u);
}

void sub_1AFA6C520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(uint64_t a1), uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, uint64_t a16)
{
  v72 = a8;
  v70 = a7;
  v77 = a6;
  v78 = a5;
  v76 = a4;
  sub_1AF5B23C4(0);
  v74 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v57[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1AFDFC548();
  v69 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_1AFDFC4F8();
  *&v71 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = swift_projectBox();
  os_unfair_lock_lock(*(a1 + 72));
  v27 = *(a1 + 80);
  v68 = a1 + 80;
  if (!*(v27 + 16) || (v28 = sub_1AF41ACD4(a2, a3), (v29 & 1) == 0))
  {
    v88 = 0;
    v86 = 0u;
    memset(v87, 0, sizeof(v87));
    v85 = 0u;
    v89 = -1;
    goto LABEL_7;
  }

  v66 = a2;
  v67 = a3;
  sub_1AF85B3D4(*(v27 + 56) + 96 * v28, &v85);
  if (v89 == 255)
  {
LABEL_7:
    sub_1AFA9BF94(&v85, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_8;
  }

  sub_1AF85B3D4(&v85, &v81);
  sub_1AFA9BF94(&v85, &qword_1EB642590, &type metadata for CompilationStatus);
  *(v80 + 9) = *&v84[25];
  v79[2] = v83;
  v79[3] = *v84;
  v80[0] = *&v84[16];
  v79[0] = v81;
  v79[1] = v82;
  if (v84[40])
  {
    sub_1AFA9C0C8(v79);
LABEL_8:
    os_unfair_lock_unlock(*(a1 + 72));
LABEL_9:
    sub_1AF81F330();
    v30 = swift_allocError();
    *v31 = xmmword_1AFE4C400;
    v78();

    return;
  }

  v32 = *&v79[0];
  os_unfair_lock_unlock(*(a1 + 72));
  if (v32 != v76)
  {
    goto LABEL_9;
  }

  v59 = a14;
  v65 = a13;
  v64 = a12;
  v63 = a11;
  v62 = a10;
  v61 = a9;
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v60 = a15;
  v33 = sub_1AFDFC538();
  sub_1AF477C68(v33, qword_1ED73B608);
  v34 = sub_1AFDFC528();
  sub_1AFDFC558();
  v58 = sub_1AFDFDB78();
  if (sub_1AFDFDCE8())
  {

    sub_1AFDFC588();

    v35 = v69;
    if ((*(v69 + 88))(v23, v21) == *MEMORY[0x1E69E93E8])
    {
      v36 = "[Error] Interval already ended";
    }

    else
    {
      (*(v35 + 8))(v23, v21);
      v36 = "";
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v34, v58, v38, "buildScript", v36, v37, 2u);
    MEMORY[0x1B271DEA0](v37, -1, -1);
  }

  (*(v71 + 8))(v26, v24);
  sub_1AFA669A0(v79, a1, v61, v62, v63, v64, v65, v59, &v81, v60);
  v39 = v82;
  v40 = v83;
  v72 = *v84;
  v71 = *&v84[8];
  v70 = sub_1AF5B23C4;
  v41 = v75;
  sub_1AFA9E3C8(v73, v75, sub_1AF5B23C4);
  v42 = v74;
  v41[*(v74 + 40)] = 1;
  v43 = sub_1AF458208(v40, *(&v40 + 1));
  v45 = sub_1AF458308(v39, *(&v39 + 1), v43, v44 & 1);

  v46 = *(v42 + 52);

  *&v41[v46] = v45;
  *(&v86 + 1) = v42;
  v47 = sub_1AF585714(&v85);
  sub_1AFA9E3C8(v41, v47, v70);
  *&v87[1] = v71;
  v87[0] = v72;
  v88 = &type metadata for ShaderScriptRuntime;
  *&v87[3] = v79[0];
  sub_1AFA9E8FC(v41, sub_1AF5B23C4);
  v89 = 1;
  v48 = v66;
  os_unfair_lock_lock(*(a1 + 72));
  v49 = *(a1 + 80);
  v50 = v67;
  if (*(v49 + 16))
  {
    v51 = sub_1AF41ACD4(v48, v67);
    if (v52)
    {
      sub_1AF85B3D4(*(v49 + 56) + 96 * v51, &v81);
      sub_1AF85B3D4(&v81, v79);
      if (BYTE8(v80[1]))
      {
        sub_1AFA9C0C8(v79);
LABEL_29:
        os_unfair_lock_unlock(*(a1 + 72));
        sub_1AF81F330();
        v55 = swift_allocError();
        *v56 = xmmword_1AFE4C400;
        v78();

        sub_1AFA9C0C8(&v81);
        sub_1AFA9C0C8(&v85);
        return;
      }

      if (*&v79[0] != v76)
      {
        goto LABEL_29;
      }

      sub_1AF85B3D4(&v85, v79);
      sub_1AF825824(v79, v48, v50);
      sub_1AFA9C0C8(&v81);
    }
  }

  os_unfair_lock_unlock(*(a1 + 72));
  sub_1AF85B3D4(&v85, &v81);
  if (v84[40] == 1)
  {

    (v78)(0);
    sub_1AFA9C0C8(&v85);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v84[8]);
LABEL_28:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v81);
    return;
  }

  if (v84[40] == 2)
  {
    v53 = v83;
    v54 = v83;
    (v78)(v53);

    sub_1AFA9C0C8(&v85);
    goto LABEL_28;
  }

  sub_1AFDFE518();
  __break(1u);
}

void sub_1AFA6CFE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, void (*a7)(uint64_t a1), uint64_t a8, uint64_t a9, void (*a10)(_DWORD *, void, uint64_t, uint64_t), unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v72 = a8;
  v70 = a7;
  v77 = a6;
  v78 = a5;
  v76 = a4;
  sub_1AF5B243C(0);
  v74 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v75 = &v57[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = sub_1AFDFC548();
  v69 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v57[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = sub_1AFDFC4F8();
  *&v71 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v57[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v73 = swift_projectBox();
  os_unfair_lock_lock(*(a1 + 72));
  v27 = *(a1 + 80);
  v68 = a1 + 80;
  if (!*(v27 + 16) || (v28 = sub_1AF41ACD4(a2, a3), (v29 & 1) == 0))
  {
    v88 = 0;
    v86 = 0u;
    memset(v87, 0, sizeof(v87));
    v85 = 0u;
    v89 = -1;
    goto LABEL_7;
  }

  v66 = a2;
  v67 = a3;
  sub_1AF85B3D4(*(v27 + 56) + 96 * v28, &v85);
  if (v89 == 255)
  {
LABEL_7:
    sub_1AFA9BF94(&v85, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_8;
  }

  sub_1AF85B3D4(&v85, &v81);
  sub_1AFA9BF94(&v85, &qword_1EB642590, &type metadata for CompilationStatus);
  *(v80 + 9) = *&v84[25];
  v79[2] = v83;
  v79[3] = *v84;
  v80[0] = *&v84[16];
  v79[0] = v81;
  v79[1] = v82;
  if (v84[40])
  {
    sub_1AFA9C0C8(v79);
LABEL_8:
    os_unfair_lock_unlock(*(a1 + 72));
LABEL_9:
    sub_1AF81F330();
    v30 = swift_allocError();
    *v31 = xmmword_1AFE4C400;
    v78();

    return;
  }

  v32 = *&v79[0];
  os_unfair_lock_unlock(*(a1 + 72));
  if (v32 != v76)
  {
    goto LABEL_9;
  }

  v59 = a14;
  v65 = a13;
  v64 = a12;
  v63 = a11;
  v62 = a10;
  v61 = a9;
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v60 = a15;
  v33 = sub_1AFDFC538();
  sub_1AF477C68(v33, qword_1ED73B608);
  v34 = sub_1AFDFC528();
  sub_1AFDFC558();
  v58 = sub_1AFDFDB78();
  if (sub_1AFDFDCE8())
  {

    sub_1AFDFC588();

    v35 = v69;
    if ((*(v69 + 88))(v23, v21) == *MEMORY[0x1E69E93E8])
    {
      v36 = "[Error] Interval already ended";
    }

    else
    {
      (*(v35 + 8))(v23, v21);
      v36 = "";
    }

    v37 = swift_slowAlloc();
    *v37 = 0;
    v38 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v34, v58, v38, "buildScript", v36, v37, 2u);
    MEMORY[0x1B271DEA0](v37, -1, -1);
  }

  (*(v71 + 8))(v26, v24);
  sub_1AFA67994(a1, v61, v62, v63, v64, v65, v59, &v81, v60);
  v39 = v82;
  v40 = v83;
  v72 = *v84;
  v71 = *&v84[8];
  v69 = *(&v81 + 1);
  v70 = sub_1AF5B243C;
  v41 = v75;
  sub_1AFA9E3C8(v73, v75, sub_1AF5B243C);
  v42 = v74;
  v41[*(v74 + 40)] = 1;
  v43 = sub_1AF458208(v40, *(&v40 + 1));
  v45 = sub_1AF458308(v39, *(&v39 + 1), v43, v44 & 1);

  v46 = *(v42 + 52);

  *&v41[v46] = v45;
  *(&v86 + 1) = v42;
  v47 = sub_1AF585714(&v85);
  sub_1AFA9E3C8(v41, v47, v70);
  *(v87 + 8) = v71;
  *&v87[0] = v72;
  v88 = &type metadata for CodableVoid;
  sub_1AFA9E8FC(v41, sub_1AF5B243C);
  v48 = v66;
  v89 = 1;
  os_unfair_lock_lock(*(a1 + 72));
  v49 = *(a1 + 80);
  v50 = v67;
  if (*(v49 + 16))
  {
    v51 = sub_1AF41ACD4(v48, v67);
    if (v52)
    {
      sub_1AF85B3D4(*(v49 + 56) + 96 * v51, &v81);
      sub_1AF85B3D4(&v81, v79);
      if (BYTE8(v80[1]))
      {
        sub_1AFA9C0C8(v79);
LABEL_29:
        os_unfair_lock_unlock(*(a1 + 72));
        sub_1AF81F330();
        v55 = swift_allocError();
        *v56 = xmmword_1AFE4C400;
        v78();

        sub_1AFA9C0C8(&v81);
        sub_1AFA9C0C8(&v85);
        return;
      }

      if (*&v79[0] != v76)
      {
        goto LABEL_29;
      }

      sub_1AF85B3D4(&v85, v79);
      sub_1AF825824(v79, v48, v50);
      sub_1AFA9C0C8(&v81);
    }
  }

  os_unfair_lock_unlock(*(a1 + 72));
  sub_1AF85B3D4(&v85, &v81);
  if (v84[40] == 1)
  {

    (v78)(0);
    sub_1AFA9C0C8(&v85);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v84[8]);
LABEL_28:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v81);
    return;
  }

  if (v84[40] == 2)
  {
    v53 = v83;
    v54 = v83;
    (v78)(v53);

    sub_1AFA9C0C8(&v85);
    goto LABEL_28;
  }

  sub_1AFDFE518();
  __break(1u);
}

void sub_1AFA6DA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6, uint64_t a7, void (*a8)(_BYTE *), uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t (*a17)(void), void (*a18)(__int128 *__return_ptr, __int128 *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a19)(_BYTE *, uint64_t *), void (*a20)(_BYTE *))
{
  v79 = a8;
  *&v77 = a7;
  v84 = a6;
  v85 = a5;
  v83 = a4;
  v81 = a17(0);
  MEMORY[0x1EEE9AC00](v81);
  v82 = &v62[-v23];
  v24 = sub_1AFDFC548();
  v76 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v62[-((v25 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v27 = sub_1AFDFC4F8();
  v78 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v62[-((v28 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v80 = swift_projectBox();
  os_unfair_lock_lock(*(a1 + 72));
  v30 = *(a1 + 80);
  v75 = a1 + 80;
  if (!*(v30 + 16) || (v31 = sub_1AF41ACD4(a2, a3), (v32 & 1) == 0))
  {
    v95 = 0;
    v93 = 0u;
    memset(v94, 0, sizeof(v94));
    v92 = 0u;
    v96 = -1;
    goto LABEL_7;
  }

  v73 = a2;
  v74 = a3;
  sub_1AF85B3D4(*(v30 + 56) + 96 * v31, &v92);
  if (v96 == 255)
  {
LABEL_7:
    sub_1AFA9BF94(&v92, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_8;
  }

  sub_1AF85B3D4(&v92, &v88);
  sub_1AFA9BF94(&v92, &qword_1EB642590, &type metadata for CompilationStatus);
  *(v87 + 9) = *(&v91[1] + 9);
  v86[2] = v90;
  v86[3] = v91[0];
  v87[0] = v91[1];
  v86[0] = v88;
  v86[1] = v89;
  if (BYTE8(v91[2]))
  {
    sub_1AFA9C0C8(v86);
LABEL_8:
    os_unfair_lock_unlock(*(a1 + 72));
LABEL_9:
    sub_1AF81F330();
    v33 = swift_allocError();
    *v34 = xmmword_1AFE4C400;
    v85();

    return;
  }

  v35 = *&v86[0];
  os_unfair_lock_unlock(*(a1 + 72));
  if (v35 != v83)
  {
    goto LABEL_9;
  }

  v64 = a18;
  v71 = a14;
  v70 = a13;
  v69 = a12;
  v68 = a11;
  v67 = a10;
  v66 = a9;
  if (qword_1ED7270F0 != -1)
  {
    swift_once();
  }

  v72 = a19;
  v65 = a15;
  v36 = sub_1AFDFC538();
  sub_1AF477C68(v36, qword_1ED73B608);
  v37 = sub_1AFDFC528();
  sub_1AFDFC558();
  v63 = sub_1AFDFDB78();
  if (sub_1AFDFDCE8())
  {

    sub_1AFDFC588();

    v38 = v76;
    if ((*(v76 + 88))(v26, v24) == *MEMORY[0x1E69E93E8])
    {
      v39 = "[Error] Interval already ended";
    }

    else
    {
      (*(v38 + 8))(v26, v24);
      v39 = "";
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = sub_1AFDFC4E8();
    _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v37, v63, v41, "buildScript", v39, v40, 2u);
    MEMORY[0x1B271DEA0](v40, -1, -1);
  }

  (*(v78 + 8))(v29, v27);
  v64(&v88, v86, a1, v66, v67, v68, v69, v70, v71, v65);
  v42 = v89;
  v76 = *(&v88 + 1);
  v43 = *(&v89 + 1);
  v44 = v90;
  v78 = *&v91[0];
  v79 = a20;
  v77 = *(v91 + 8);
  v45 = v82;
  v46 = v72;
  v72(v80, v82);
  v47 = v81;
  v45[*(v81 + 40)] = 1;
  v48 = sub_1AF458208(v44, *(&v44 + 1));
  v50 = sub_1AF458308(v42, v43, v48, v49 & 1);

  v51 = *(v47 + 52);

  *&v45[v51] = v50;
  *(&v93 + 1) = v47;
  v52 = sub_1AF585714(&v92);
  v46(v45, v52);
  *(v94 + 8) = v77;
  *&v94[0] = v78;
  *(&v94[1] + 8) = v86[0];
  v95 = &type metadata for BasicScriptRuntime;
  v79(v45);
  v96 = 1;
  v53 = v73;
  os_unfair_lock_lock(*(a1 + 72));
  v54 = *(a1 + 80);
  v55 = v74;
  if (*(v54 + 16))
  {
    v56 = sub_1AF41ACD4(v53, v74);
    if (v57)
    {
      sub_1AF85B3D4(*(v54 + 56) + 96 * v56, &v88);
      sub_1AF85B3D4(&v88, v86);
      if (BYTE8(v87[1]))
      {
        sub_1AFA9C0C8(v86);
LABEL_29:
        os_unfair_lock_unlock(*(a1 + 72));
        sub_1AF81F330();
        v60 = swift_allocError();
        *v61 = xmmword_1AFE4C400;
        v85();

        sub_1AFA9C0C8(&v88);
        sub_1AFA9C0C8(&v92);
        return;
      }

      if (*&v86[0] != v83)
      {
        goto LABEL_29;
      }

      sub_1AF85B3D4(&v92, v86);
      sub_1AF825824(v86, v53, v55);
      sub_1AFA9C0C8(&v88);
    }
  }

  os_unfair_lock_unlock(*(a1 + 72));
  sub_1AF85B3D4(&v92, &v88);
  if (BYTE8(v91[2]) == 1)
  {

    (v85)(0);
    sub_1AFA9C0C8(&v92);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v91 + 1);
LABEL_28:
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(&v88);
    return;
  }

  if (BYTE8(v91[2]) == 2)
  {
    v58 = v90;
    v59 = v90;
    (v85)(v58);

    sub_1AFA9C0C8(&v92);
    goto LABEL_28;
  }

  sub_1AFDFE518();
  __break(1u);
}

void sub_1AFA6E520(void *a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16))
  {
    v4 = 1;
  }

  else
  {
    v4 = a1 == 0;
  }

  if (!v4)
  {
    v6 = *(a3 + 72);
    v9 = a1;
    os_unfair_lock_lock(v6);
    v10 = *(a2 + 16);
    *(a2 + 16) = a1;
    v11 = a1;

    os_unfair_lock_unlock(*(a3 + 72));
  }
}

uint64_t sub_1AFA6E5A8(uint64_t a1, void (*a2)(void *__return_ptr, void), uint64_t (*a3)(void), void (*a4)(uint64_t, void *), uint64_t (*a5)(void))
{
  if (qword_1ED72D720 != -1)
  {
    v75 = a2;
    swift_once();
    a2 = v75;
  }

  v132 = qword_1ED73B840;
  v133 = 0;
  v134 = 2;
  v135 = 0;
  v136 = 2;
  v137 = 0;
  a2(&v98, 1);
  v126 = v98;
  v127 = v99;
  v128 = v100;
  v129 = v101 | 1;
  v130 = v102;
  v131 = v103;
  sub_1AF6B06C0(a1, &v126, 0x200000000, v104);
  v94 = *&v104[32];
  v95 = v105;
  v96 = v106;
  v97 = v107;
  v92 = *v104;
  v93 = *&v104[16];
  result = sub_1AFA9E8FC(&v98, a3);
  if (*v104)
  {
    v80 = v107;
    if (v107 >= 1)
    {
      v79 = *(&v105 + 1);
      if (*(&v105 + 1))
      {
        v78 = *&v104[40];
        v77 = v106;
        v8 = *(v106 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v85 = *(*(&v106 + 1) + 32);
        v86 = *(&v106 + 1);
        v108 = *v104;
        v109 = *&v104[8];
        v110 = *&v104[24];
        v91[2] = v94;
        v91[3] = v95;
        v91[4] = v96;
        v91[5] = v97;
        v91[0] = v92;
        v91[1] = v93;
        sub_1AF5DD298(v91, v113);
        v9 = 0;
        v10 = 0;
        v76 = v8;
        do
        {
          v11 = (v78 + 48 * v9);
          v12 = *v11;
          v13 = v11[1];
          v14 = v11[2];
          v15 = *(v11 + 2);
          v16 = *(v11 + 3);
          v17 = *(v11 + 5);
          v82 = *(v11 + 4);
          v84 = v9;
          if (v8)
          {
            v18 = *(v17 + 376);

            os_unfair_lock_lock(v18);
            os_unfair_lock_lock(*(v17 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v85);
          v19 = *(v86 + 64);
          v111[0] = *(v86 + 48);
          v111[1] = v19;
          v112 = *(v86 + 80);
          v20 = *(*(*(*(v17 + 40) + 16) + 32) + 16) + 1;
          *(v86 + 48) = ecs_stack_allocator_allocate(*(v86 + 32), 48 * v20, 8);
          *(v86 + 56) = v20;
          *(v86 + 72) = 0;
          *(v86 + 80) = 0;
          *(v86 + 64) = 0;
          LOBYTE(v88) = 1;
          v113[0] = v77;
          v113[1] = v17;
          v114 = v86;
          v115 = v14;
          v116 = (v13 - v12 + v14);
          v117 = v80;
          v118 = v12;
          v119 = v13;
          v120 = 0;
          v121 = 0;
          v122 = 1;
          v123 = v15;
          v124 = v16;
          v125 = v82;
          a4(v17, v113);
          v21 = v123;
          v83 = v10;
          if (v123)
          {
            v22 = v125;
            if (v125)
            {
              v23 = 0;
              v24 = v114;
              do
              {
                v25 = *(v21 + 8 * v23);
                v26 = *(v17 + 192);

                if (v26)
                {
                  v27 = *(v17 + 208);
                  *(v26 + 8 * (v25 >> 6)) |= 1 << v25;
                  *(v27 + 8 * (v25 >> 6)) &= ~(1 << v25);
                }

                if (*(*(v17 + 40) + 213) == 1)
                {
                  v28 = *(v17 + 48);
                  v29 = (v28 + 32);
                  v30 = *(v28 + 16) + 1;
                  while (--v30)
                  {
                    v31 = v29 + 5;
                    v32 = *v29;
                    v29 += 5;
                    if (v32 == &type metadata for PropagateDirtiness)
                    {
                      v33 = *(v31 - 2);
                      goto LABEL_23;
                    }
                  }

                  v33 = 0;
LABEL_23:
                  v34 = *(v17 + 128);

                  if (*(v17 + 184))
                  {
                    goto LABEL_60;
                  }

                  v36 = v34 + v33;
                  v37 = *(*(v17 + 168) + 4 * v25);
                  v38 = (v36 + 8 * v25);
                  v39 = *(*(v35 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v37 + 8);

                  v40 = *v38;
                  v41 = v38[1];
                  if (v40 != -1 || v41 != 0)
                  {
                    sub_1AF70D248(&v88, v37 | (v39 << 32), v40 | (v41 << 32));
                  }
                }

                v43 = a5(0);
                v44 = *(*(v17 + 40) + 16);
                v45 = *(v44 + 128);
                if (*(v45 + 16))
                {
                  v46 = v43;
                  v47 = sub_1AF449CB8(v43);
                  if ((v48 & 1) != 0 && *(*(v44 + 24) + 16 * *(*(v45 + 56) + 8 * v47) + 32) == v46)
                  {
                    v88 = v46;
                    v89 = &off_1F250F310;
                    v90 = 1;

                    sub_1AF6304E8(v24 + 104, &v88, v25, 0, v17, v24);

                    sub_1AF635250(&v88);
                  }
                }

                ++v23;
              }

              while (v23 != v22);
            }
          }

          else
          {
            v49 = v118;
            v50 = v119;
            if (v118 != v119)
            {
              v51 = v114;
              do
              {
                v52 = *(v17 + 192);

                if (v52)
                {
                  v53 = *(v17 + 208);
                  *(v52 + 8 * (v49 >> 6)) |= 1 << v49;
                  *(v53 + 8 * (v49 >> 6)) &= ~(1 << v49);
                }

                if (*(*(v17 + 40) + 213) == 1)
                {
                  v54 = *(v17 + 48);
                  v55 = (v54 + 32);
                  v56 = *(v54 + 16) + 1;
                  while (--v56)
                  {
                    v57 = v55 + 5;
                    v58 = *v55;
                    v55 += 5;
                    if (v58 == &type metadata for PropagateDirtiness)
                    {
                      v59 = *(v57 - 2);
                      goto LABEL_46;
                    }
                  }

                  v59 = 0;
LABEL_46:
                  v60 = *(v17 + 128);

                  if (*(v17 + 184))
                  {
LABEL_60:
                    result = sub_1AFDFE518();
                    __break(1u);
                    return result;
                  }

                  v62 = v60 + v59;
                  v63 = *(*(v17 + 168) + 4 * v49);
                  v64 = (v62 + 8 * v49);
                  v65 = *(*(v61 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v63 + 8);

                  v66 = *v64;
                  v67 = v64[1];
                  if (v66 != -1 || v67 != 0)
                  {
                    sub_1AF70D248(&v88, v63 | (v65 << 32), v66 | (v67 << 32));
                  }
                }

                v69 = a5(0);
                v70 = *(*(v17 + 40) + 16);
                v71 = *(v70 + 128);
                if (*(v71 + 16))
                {
                  v72 = v69;
                  v73 = sub_1AF449CB8(v69);
                  if ((v74 & 1) != 0 && *(*(v70 + 24) + 16 * *(*(v71 + 56) + 8 * v73) + 32) == v72)
                  {
                    v88 = v72;
                    v89 = &off_1F250F310;
                    v90 = 1;

                    sub_1AF6304E8(v51 + 104, &v88, v49, 0, v17, v51);

                    sub_1AF635250(&v88);
                  }
                }

                ++v49;
              }

              while (v49 != v50);
            }
          }

          v10 = v83;
          sub_1AF630994(v86, &v108, v111);
          sub_1AF62D29C(v17);
          ecs_stack_allocator_pop_snapshot(v85);
          v8 = v76;
          if (v76)
          {
            os_unfair_lock_unlock(*(v17 + 344));
            os_unfair_lock_unlock(*(v17 + 376));
          }

          v9 = v84 + 1;
        }

        while (v84 + 1 != v79);
        sub_1AFA9BF94(v104, &qword_1ED725EA0, &type metadata for QueryResult);
      }
    }

    return sub_1AFA9BF94(v104, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  return result;
}

uint64_t sub_1AFA6ED20(void *a1, void (*a2)(void *__return_ptr), void (*a3)(_OWORD *), uint64_t (*a4)(uint64_t, void *), uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  if (qword_1ED72D720 != -1)
  {
    v80 = a2;
    swift_once();
    a2 = v80;
  }

  v132 = qword_1ED73B840;
  v133 = 0;
  v134 = 2;
  v135 = 0;
  v136 = 2;
  v137 = 0;
  a2(v110);
  v119[0] = v110[0];
  v119[1] = v110[1];
  v120 = v111;

  sub_1AF6B06C0(v7, v119, 0x200000000, v112);
  if (!*v112)
  {

    return (a3)(v110);
  }

  v89 = v115;
  if (v115 < 1 || (v88 = *(&v113 + 1)) == 0)
  {
    sub_1AFA9C3FC(v112, v123, &qword_1ED725EA0, &type metadata for QueryResult, MEMORY[0x1E69E6720], sub_1AFA9D6A4);

    a3(v110);
LABEL_53:
    sub_1AFA9BF94(v112, &qword_1ED725EA0, &type metadata for QueryResult);
    return sub_1AFA9BF94(v112, &qword_1ED725EA0, &type metadata for QueryResult);
  }

  v81 = a3;
  v87 = *&v112[40];
  v8 = *(&v114 + 1);
  v86 = v114;
  v9 = *(v114 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  v10 = *(*(&v114 + 1) + 32);
  v116 = *v112;
  v117 = *&v112[8];
  v118 = *&v112[24];
  v109[2] = *&v112[32];
  v109[3] = v113;
  v109[4] = v114;
  v109[5] = v115;
  v109[0] = *v112;
  v109[1] = *&v112[16];
  sub_1AF5DD298(v109, v123);
  v11 = 0;
  v12 = 0;
  v84 = v9;
  v85 = v8;
  v83 = v10;
  while (1)
  {
    v103 = v12;
    v92 = v11;
    v13 = (v87 + 48 * v11);
    v14 = *v13;
    v15 = v13[1];
    v16 = v13[2];
    v17 = *(v13 + 2);
    v18 = *(v13 + 3);
    v19 = *(v13 + 4);
    v20 = *(v13 + 5);
    if (v9)
    {
      v21 = *(v20 + 376);

      os_unfair_lock_lock(v21);
      os_unfair_lock_lock(*(v20 + 344));
    }

    else
    {
    }

    ecs_stack_allocator_push_snapshot(v10);
    v22 = *(v8 + 4);
    v121[0] = *(v8 + 3);
    v121[1] = v22;
    v122 = v8[10];
    v23 = *(*(*(*(v20 + 40) + 16) + 32) + 16) + 1;
    v8[6] = ecs_stack_allocator_allocate(v8[4], 48 * v23, 8);
    v8[7] = v23;
    v8[9] = 0;
    v8[10] = 0;
    v8[8] = 0;
    v123[0] = v86;
    v123[1] = v20;
    v123[2] = v8;
    v123[3] = v16;
    v123[4] = (v15 - v14 + v16);
    v123[5] = v89;
    v124 = v14;
    v125 = v15;
    v126 = 0;
    v127 = 0;
    v128 = 1;
    v129 = v17;
    v130 = v18;
    v131 = v19;
    v24 = a4(v20, v123);
    v25 = v129;
    v100 = v20;
    v91 = v103;
    if (!v129)
    {
      break;
    }

    v26 = v131;
    if (v131)
    {
      v27 = a5(0);
      v93 = v27;
      v94 = *(*(v27 - 1) + 72);
      do
      {
        v31 = *v25++;
        v30 = v31;

        if (*(v20 + 184))
        {
          goto LABEL_54;
        }

        v33 = *(*(v20 + 168) + 4 * v30);
        v34 = *(*(v32 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v33 + 8);

        v35 = a6(0);
        if (*(v24 + v27[10]))
        {
          v36 = *(v24 + v27[11]);
          v37 = *(v24 + v27[13]);
          if (v36)
          {
            v38 = v36 | 0x4000000000000000;
            v39 = v36;

            v40 = v36;
          }

          else
          {

            v38 = 0;
          }

          v101 = v38;
          v104 = v37;
        }

        else
        {
          v101 = 0x8000000000000000;
          v104 = 0;
        }

        v96 = v33;
        v41 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v107 = *a1;
        v98 = v34;
        v43 = v41 | (v34 << 32);
        v44 = sub_1AF41AE38(v43, v35);
        v46 = v45;
        v47 = v107[2] + ((v45 & 1) == 0);
        if (v107[3] >= v47)
        {
          v48 = v35;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1AF84B17C();
          }
        }

        else
        {
          sub_1AF838ABC(v47, isUniquelyReferenced_nonNull_native);
          v48 = v35;
          v49 = sub_1AF41AE38(v43, v35);
          if ((v46 & 1) != (v50 & 1))
          {
            goto LABEL_55;
          }

          v44 = v49;
        }

        v27 = v93;
        if (v46)
        {
          v51 = (v107[7] + 16 * v44);
          v52 = *v51;
          v53 = v51[1];
          *v51 = v104;
          v51[1] = v101;
          sub_1AF70077C(v52, v53);
        }

        else
        {
          v107[(v44 >> 6) + 8] |= 1 << v44;
          v28 = v107[6] + 16 * v44;
          *v28 = v96;
          *(v28 + 4) = v98;
          *(v28 + 8) = v48;
          v29 = (v107[7] + 16 * v44);
          *v29 = v104;
          v29[1] = v101;
          ++v107[2];
        }

        sub_1AF70077C(v104, v101);
        *a1 = v107;
        v24 += v94;
        --v26;
        v20 = v100;
      }

      while (v26);
    }

LABEL_31:
    v8 = v85;
    v12 = v91;
    sub_1AF630994(v85, &v116, v121);
    sub_1AF62D29C(v20);
    v10 = v83;
    ecs_stack_allocator_pop_snapshot(v83);
    v9 = v84;
    if (v84)
    {
      os_unfair_lock_unlock(*(v20 + 344));
      os_unfair_lock_unlock(*(v20 + 376));
    }

    v11 = v92 + 1;
    if (v92 + 1 == v88)
    {

      v81(v110);
      goto LABEL_53;
    }
  }

  v54 = v124;
  v102 = v125;
  if (v124 == v125)
  {
    goto LABEL_31;
  }

  v55 = a5(0);
  v97 = v55;
  v99 = *(*(v55 - 1) + 72);
  v56 = v24 + v99 * v54;
  while (1)
  {

    if (*(v20 + 184))
    {
      break;
    }

    v60 = *(*(v20 + 168) + 4 * v54);
    v61 = *(*(v59 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v60 + 8);

    v62 = a6(0);
    if (*(v56 + v55[10]))
    {
      v63 = *(v56 + v55[11]);
      v64 = *(v56 + v55[13]);
      if (v63)
      {
        v65 = v63 | 0x4000000000000000;
        v66 = v63;

        v67 = v63;
      }

      else
      {

        v65 = 0;
      }
    }

    else
    {
      v64 = 0;
      v65 = 0x8000000000000000;
    }

    v68 = swift_isUniquelyReferenced_nonNull_native();
    v108 = *a1;
    v105 = v61;
    v69 = v60 | (v61 << 32);
    v70 = sub_1AF41AE38(v69, v62);
    v72 = v71;
    v73 = v108[2] + ((v71 & 1) == 0);
    if (v108[3] >= v73)
    {
      if ((v68 & 1) == 0)
      {
        v78 = v70;
        sub_1AF84B17C();
        v70 = v78;
      }
    }

    else
    {
      sub_1AF838ABC(v73, v68);
      v70 = sub_1AF41AE38(v69, v62);
      if ((v72 & 1) != (v74 & 1))
      {
        goto LABEL_55;
      }
    }

    v20 = v100;
    v55 = v97;
    if (v72)
    {
      v75 = (v108[7] + 16 * v70);
      v76 = *v75;
      v77 = v75[1];
      *v75 = v64;
      v75[1] = v65;
      sub_1AF70077C(v76, v77);
    }

    else
    {
      v108[(v70 >> 6) + 8] |= 1 << v70;
      v57 = v108[6] + 16 * v70;
      *v57 = v60;
      *(v57 + 4) = v105;
      *(v57 + 8) = v62;
      v58 = (v108[7] + 16 * v70);
      *v58 = v64;
      v58[1] = v65;
      ++v108[2];
    }

    ++v54;
    sub_1AF70077C(v64, v65);
    *a1 = v108;
    v56 += v99;
    if (v102 == v54)
    {
      goto LABEL_31;
    }
  }

LABEL_54:
  sub_1AFDFE518();
  __break(1u);
LABEL_55:
  result = sub_1AFDFF1A8();
  __break(1u);
  return result;
}

uint64_t sub_1AFA6F5BC()
{
  v0 = swift_allocObject();
  sub_1AFA5C588(v1);
  return v0;
}

double sub_1AFA6F608(uint64_t a1)
{
  *(v1 + 16) = a1;
  *(v1 + 24) = CFXMTLCreateSystemDefaultDevice();

  swift_unknownObjectRelease();
  return result;
}

uint64_t sub_1AFA6F638@<X0>(int *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 2) = 1;
  v4 = a1[7];
  v5 = sub_1AFDFC128();
  result = (*(*(v5 - 8) + 56))(a2 + v4, 1, 1, v5);
  v7 = a1[9];
  *(a2 + a1[8]) = 0;
  *(a2 + v7) = 0;
  return result;
}

unint64_t sub_1AFA6F6C4()
{
  result = qword_1ED728DA8;
  if (!qword_1ED728DA8)
  {
    result = swift_getWitnessTable(aA_9, &type metadata for ScriptCompilerSystem.CompilationHandle, v0, v1);
    atomic_store(result, &qword_1ED728DA8);
  }

  return result;
}

uint64_t sub_1AFA6F718(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1AFA6F884(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1AFA6FA4C(v10, v6, v4, a2);
  result = MEMORY[0x1B271DEA0](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1AFA6F884(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v25 = 0;
  v7 = 0;
  v8 = 1 << *(a3 + 32);
  v9 = *(a3 + 64);
  v10 = -1;
  if (v8 < 64)
  {
    v10 = ~(-1 << v8);
  }

  v11 = v10 & v9;
  v12 = (v8 + 63) >> 6;
  if ((v10 & v9) != 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v15 = v7 << 6;
  while (1)
  {
    v16 = v7 + 1;
    if (v7 + 1 >= v12)
    {
      return sub_1AF8FB72C(a1, a2, v25, a3);
    }

    v17 = *(a3 + 8 * v7 + 72);
    v15 += 64;
    ++v7;
    if (v17)
    {
      v11 = (v17 - 1) & v17;
      v14 = __clz(__rbit64(v17)) + v15;
      v7 = v16;
      while (2)
      {
        v18 = *(*(a3 + 48) + 16 * v14);
        sub_1AF85B3D4(*(a3 + 56) + 96 * v14, v24);
        if (v18 != a4(0))
        {
          goto LABEL_16;
        }

        sub_1AF85B3D4(v24, v21);
        if (v23 == 1)
        {

          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v22);
LABEL_6:
          _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v21);
          sub_1AFA9C0C8(v24);
          if (!v11)
          {
            goto LABEL_8;
          }
        }

        else
        {
          if (v23 == 2)
          {

            goto LABEL_6;
          }

LABEL_16:
          sub_1AFA9C0C8(v24);
          *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
          ++v25;
          if (!v11)
          {
            goto LABEL_8;
          }
        }

LABEL_7:
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v14 = v13 | (v7 << 6);
        continue;
      }
    }
  }
}

uint64_t sub_1AFA6FA4C(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2)
  {
    v5 = a1;
    v6 = a2;
    v7 = a4;
    bzero(a1, 8 * a2);
    a1 = v5;
    a2 = v6;
    a4 = v7;
  }

  v8 = sub_1AFA6F884(a1, a2, a3, a4);

  return v8;
}

uint64_t sub_1AFA6FACC(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v82 = a7;
  v67 = a6;
  v66 = a5;
  v65 = a4;
  v64 = a3;
  sub_1AF5B25A4(0);
  v11 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for EmitterScript(0);
  MEMORY[0x1EEE9AC00](v14);
  v63 = &v55 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF5B2568(0);
  v17 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v55 - v21;
  sub_1AF85B3D4(a2, v76);
  if (!v81)
  {
    goto LABEL_18;
  }

  if (v81 != 1)
  {
    sub_1AFA9E388(a1);

    sub_1AF449D40(v76, v75);
    sub_1AF0D5A54(v75, &v69);
    swift_dynamicCast();
    v72 = v11;
    v73 = &off_1F250F310;
    v42 = sub_1AF585714(&v69);
    sub_1AFA9E2F0(a1, v42, v43);
    v74 = 1;
    sub_1AF8259D0(&v69, v66, v67);
    _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v75);
    goto LABEL_18;
  }

  v56 = v19;
  v57 = v13;
  v58 = a2;
  v59 = v7;
  v61 = a1;
  sub_1AFA9E388(a1);
  v23 = v77;
  v62 = v78;
  v60 = v79;
  sub_1AF449D40(v76, v75);
  sub_1AF449D40(&v80, v68);
  *v22 = 0;
  v22[32] = 0;
  v24 = *(v14 + 32);
  v25 = type metadata accessor for ScriptIndex(0);
  (*(*(v25 - 8) + 56))(&v22[v24], 1, 1, v25);
  v26 = &v22[*(v14 + 36)];
  *v26 = 0;
  *(v26 + 1) = 0;
  *(v22 + 2) = 0x80000001AFF2B740;
  *(v22 + 3) = &unk_1F2503050;
  *(v22 + 1) = 0xD0000000000000C0;
  v27 = &v22[v11[9]];
  *v27 = 0;
  v27[8] = 1;
  v22[v11[10]] = 0;
  *&v22[v11[11]] = 0;
  v28 = &v22[v11[12]];
  *v28 = 0;
  *(v28 + 1) = 0xE000000000000000;
  *&v22[v11[13]] = MEMORY[0x1E69E7CC0];
  v30 = v17[9];
  v29 = v17[10];
  v31 = v17[11];
  *&v22[v17[12]] = 0;
  v22[v17[13]] = 0;
  v32 = &v22[v17[14]];
  *v32 = 0;
  v32[8] = 1;
  v33 = &v22[v17[15]];
  *v33 = 0;
  v33[1] = 0;
  sub_1AF0D5A54(v75, &v69);
  sub_1AFA9E388(v22);
  swift_dynamicCast();
  *&v22[v30] = v23;
  *&v22[v31] = v60;
  *&v22[v29] = v62;
  v34 = *v33;
  v35 = v33[1];
  v62 = v23;

  sub_1AF919DAC(v34, v35);
  sub_1AF0D5A54(v68, &v69);
  swift_dynamicCast();
  sub_1AFA9E2F0(v22, v61, v36);
  if (v64)
  {
    v37 = v65;
    v38 = *(v65 + OBJC_IVAR____TtC3VFX13EntityManager_replicationStream);
    v39 = v67;
    v40 = v57;
    if (v38)
    {
      v41 = *(v38 + 80);
      swift_unknownObjectWeakLoadStrong();
      v38 = *(v38 + 56);
    }

    else
    {
      v41 = 0;
    }

    v64 = v41;
    v71 = 0;
    swift_unknownObjectUnownedInit();
    v69 = v37;
    v71 = v38;
    swift_unknownObjectUnownedAssign();
    swift_unownedRetain();
    swift_unknownObjectRelease();
    LOBYTE(v72) = v41;
    v46 = v56;
    sub_1AFA9E3C8(v22, v56, sub_1AF5B2568);
    v47 = v63;
    sub_1AFA9E3C8(v46, v63, type metadata accessor for EmitterScript);
    sub_1AFA9E8FC(v46, sub_1AF5B2568);
    sub_1AF5AEB28(v47, v39);
    sub_1AFA9E8FC(v47, type metadata accessor for EmitterScript);
    sub_1AFA9E2F0(v22, v40, v48);
    sub_1AF5AECB8(v40, v39);
    sub_1AFA9E388(v40);
    sub_1AFA9E3C8(v22, v46, sub_1AF5B2568);
    sub_1AF5AEE48(v46, v39);
    v44 = v65;
    sub_1AFA9E8FC(v46, sub_1AF5B2568);
    sub_1AF579490(&v69);
    v45 = v66;
    if (v64)
    {
      v49 = [objc_opt_self() immediateMode];
      sub_1AF6C5E30(v49 ^ 1);
    }
  }

  else
  {
    v39 = v67;
    v44 = v65;
    sub_1AFBFE1BC(v22, v67);
    v45 = v66;
  }

  v72 = v17;
  v73 = &off_1F2558F90;
  v50 = sub_1AF585714(&v69);
  sub_1AFA9E3C8(v22, v50, sub_1AF5B2568);
  v74 = 0;
  sub_1AF8259D0(&v69, v45, v39);
  v51 = sub_1AF3CB548(v39);
  if (v51)
  {
    sub_1AFD08440(v44, v51, v52);
  }

  sub_1AF0D5A54(v68, &v69);
  if (swift_dynamicCast())
  {

    v69 = MEMORY[0x1E69E7CC0];
    v70 = MEMORY[0x1E69E7CC0];
    sub_1AFD5541C();

    sub_1AFBFE1D4(v69, v70, v39);
LABEL_16:

    goto LABEL_17;
  }

  sub_1AF0D5A54(v68, &v69);
  if (swift_dynamicCast())
  {
    goto LABEL_16;
  }

LABEL_17:
  a2 = v58;
  sub_1AF678B44(v39, v53);

  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v68);
  _s3VFX14_BinaryDecoderC16SingleValueStoreVwxx_0(v75);
  sub_1AFA9E8FC(v22, sub_1AF5B2568);
LABEL_18:
  result = sub_1AF85B3D4(a2, v76);
  if (v81)
  {
    return sub_1AFA9C0C8(v76);
  }

  return result;
}

uint64_t sub_1AFA702F0(uint64_t a1, char a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 72);

  os_unfair_lock_lock(v4);
  v5 = *(a1 + 80);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v41 = (v3 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v42 = v3;
  v9 = (v6 + 63) >> 6;

  v10 = 0;
LABEL_5:
  if (v8)
  {
    goto LABEL_9;
  }

LABEL_6:
  while (1)
  {
    v11 = v10 + 1;
    if (v10 + 1 >= v9)
    {
      break;
    }

    v8 = *(v5 + 72 + 8 * v10++);
    if (v8)
    {
      v10 = v11;
LABEL_9:
      while (1)
      {
        v12 = __clz(__rbit64(v8)) | (v10 << 6);
        v13 = *(v5 + 48) + 16 * v12;
        v14 = *v13;
        v15 = *(v13 + 12);
        v16 = *(v13 + 8);
        sub_1AF85B3D4(*(v5 + 56) + 96 * v12, &v43);
        if (v44 == 255)
        {
          goto LABEL_34;
        }

        v8 &= v8 - 1;
        if (v14 == type metadata accessor for EmitterScript(0))
        {
          v17 = v16 == -1 && v15 == 0;
          if (v17 || (v16 & 0x80000000) != 0 || v41[1] <= v16 || (v15 != -1 ? (v18 = *(*v41 + 12 * v16 + 8) == v15) : (v18 = 1), !v18 || (v39 = (*v41 + 12 * v16), sub_1AF5B25A4(0), v20 = *(*(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16) + 128), !*(v20 + 16)) || (v37 = *(*(*(v42 + 88) + 8 * *(v39 + 3) + 32) + 16), v38 = v19, v21 = sub_1AF449CB8(v19), (v22 & 1) == 0) || *(*(v37 + 24) + 16 * *(*(v20 + 56) + 8 * v21) + 32) != v38))
          {
            sub_1AFA9C0C8(&v43);
            goto LABEL_5;
          }

          if (*(*(v38 - 8) + 64))
          {
            v23 = *(*(v38 - 8) + 72);
          }

          else
          {
            v23 = 0;
          }

          v24 = *(*(v42 + 144) + 8 * *v39 + 32);
          v25 = *(v24 + 48);
          v26 = (v25 + 32);
          v27 = *(v25 + 16) + 1;
          while (--v27)
          {
            v28 = v26 + 5;
            v29 = *v26;
            v26 += 5;
            if (v29 == v38)
            {
              sub_1AFA6FACC(*(v24 + 128) + *(v28 - 2) + v23 * *(v39 + 2), &v43, a2 & 1, v42, v14, v16 | (v15 << 32), a1);
              goto LABEL_11;
            }
          }

          sub_1AFDFE218();
          MEMORY[0x1B2718AE0](0x20797469746E45, 0xE700000000000000);
          v36 = sub_1AF656F38();
          MEMORY[0x1B2718AE0](v36);

          MEMORY[0x1B2718AE0](0xD000000000000019, 0x80000001AFF2E980);
          MEMORY[0x1B2718AE0](0xD000000000000023, 0x80000001AFF45760);
          MEMORY[0x1B2718AE0](0xD000000000000010, 0x80000001AFF2E9A0);
          result = sub_1AFDFE518();
          __break(1u);
          return result;
        }

LABEL_11:
        sub_1AFA9C0C8(&v43);
        if (!v8)
        {
          goto LABEL_6;
        }
      }
    }
  }

LABEL_34:

  v30 = *(*(a1 + 80) + 16);
  if (v30)
  {

    v32 = sub_1AFA6F718(v31, type metadata accessor for EmitterScript);

    *(a1 + 80) = v32;

    v33 = *(*(a1 + 80) + 16);
  }

  else
  {
    v33 = 0;
  }

  v34 = v30 != v33;
  os_unfair_lock_unlock(*(a1 + 72));

  return v34;
}

uint64_t sub_1AFA70744(uint64_t a1, NSObject *a2, NSObject *a3, int a4, uint64_t a5, int a6, _OWORD *a7, uint64_t a8, uint64_t a9)
{
  LODWORD(v515) = a6;
  v513 = a2;
  v514 = a5;
  v509 = a4;
  v520 = 0;
  v532 = type metadata accessor for EmitterScript(0);
  v510 = *(v532 - 8);
  MEMORY[0x1EEE9AC00](v532);
  v506 = v13;
  v522 = &v485 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1AF0D0FCC(0, &qword_1EB633050, MEMORY[0x1E69E93B8], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v489 = &v485 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v502 = &v485 - v17;
  v18 = sub_1AFDFC4F8();
  v505 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v511 = &v485 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v508 = &v485 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v517 = &v485 - v23;
  v24 = swift_allocObject();
  *(v24 + 16) = a8;
  *(v24 + 24) = a9;
  v25 = *(a1 + 16);

  v530 = a8;

  v512 = a9;

  dispatch_group_enter(a3);
  v26 = *(a7 + 184);
  v615[0] = *(a7 + 168);
  v615[1] = v26;
  v616 = *(a7 + 25);
  v516 = OBJC_IVAR____TtC3VFX13EntityManager_queryManager;
  v501 = v25;
  sub_1AF6B06C0(v25, v615, 0x200000000, v574);
  v540 = a1;
  v541 = a3;
  v528 = v18;
  v529 = v24;
  v523 = a7;
  if (*&v574[0])
  {
    if (v578 < 1)
    {
      sub_1AFA9BF94(v574, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 0;
    }

    else if (*(&v576 + 1))
    {
      v27 = *(&v575 + 1);
      v28 = *(&v577 + 1);
      v29 = *(&v575 + 1) + 48 * *(&v576 + 1);
      sub_1AF5B25A4(0);
      v534 = v30;
      v554 = v575;
      v555 = v576;
      v556 = v577;
      v557 = v578;
      v552 = v574[0];
      v553 = v574[1];
      sub_1AF5DD298(&v552, &v621);
      v538 = v28;
      v519 = v29;
      do
      {
        v31 = *(v27 + 40);
        v32 = *(v31 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v32);
        os_unfair_lock_lock(*(v31 + 344));
        v33 = *(v31 + 24);

        v623 = 0;
        v621 = 0u;
        v622 = 0u;
        memset(v597, 0, 40);
        v34 = sub_1AF65A4B4(v33, v534, &off_1F250F310, 0, 0, &v621, v597);

        sub_1AFA9E8FC(v597, sub_1AF5C4448);
        sub_1AFA9E8FC(&v621, sub_1AF5C4448);
        if (sub_1AF649CEC(v34))
        {
          sub_1AF649D40(v34, v28);
        }

        else
        {
          v533 = v27;
          v36 = *(v31 + 232);
          v35 = *(v31 + 240);
          v37 = *(v31 + 120);
          v524 = *(v31 + 28);
          v38 = *(v31 + 32);
          v539 = *(v31 + 16);
          v39 = *(v31 + 40);
          v40 = v39[200];
          v41 = *(v539[11] + 8 * v34 + 32);

          if ((v40 & 1) != 0 || *(v41 + 200) == 1)
          {
            *(v539 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v39 = *(v31 + 40);
          }

          v42 = v39[212];
          LODWORD(v531) = v37;
          LODWORD(v525) = v34;
          if (v42)
          {
            LODWORD(v527) = 0;
          }

          else
          {
            LODWORD(v527) = *(v41 + 212);
          }

          v28 = v538;
          LODWORD(v526) = v39[208];
          v537 = *(v31 + 128);
          v43 = *(v31 + 256);
          v44 = v35;
          v45 = v520;
          sub_1AF5B4FCC(v39, v36, v44, 0, v31);
          v520 = v45;
          v535 = *(v31 + 256);
          v536 = v43;
          v46 = v535 - v43;
          if (v535 == v43)
          {
            v47 = 0;
          }

          else
          {
            v47 = v43;
          }

          v48 = v47;
          *&v597[0] = v47;
          v49 = *(*(v31 + 40) + 24);
          v50 = *(v49 + 16);
          if (v50)
          {
            LODWORD(v521) = v38;
            v51 = v49 + 32;

            v52 = 0;
            v53 = v537;
            v54 = v41;
            do
            {
              v55 = (v51 + 40 * v52);
              if ((v55[4] & 1) == 0)
              {
                v56 = *v55;
                v58 = v55[2];
                v57 = v55[3];
                v59 = *(v54 + 24);
                v60 = *(v59 + 16);
                if (v60)
                {
                  v61 = (v59 + 32);
                  while (*v61 != v56)
                  {
                    v61 += 5;
                    if (!--v60)
                    {
                      goto LABEL_19;
                    }
                  }
                }

                else
                {
LABEL_19:
                  sub_1AF640BC8(v53 + v58 * v48 + v57, v46);
                  v54 = v41;
                  v53 = v537;
                }
              }

              ++v52;
            }

            while (v52 != v50);

            v28 = v538;
            LOBYTE(v38) = v521;
          }

          if (*(v539 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v539 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v31 + 72) * v46);
          }

          if (*(v31 + 184))
          {
            v62 = 0;
          }

          else
          {
            v62 = *(v31 + 168);
          }

          *&v592[0] = 0;

          DWORD2(v622) = -1;
          v623 = v536;
          v624 = v535;
          v625 = v536;
          v626 = v535;
          *&v621 = v536;
          *(&v621 + 1) = v535;
          *&v622 = v62;
          if (v46 < 1)
          {
          }

          else
          {
            *&v521 = &v485;

            v63 = v41;

            v64 = v531;
            v65 = v527;
            v66 = v524;
            v67 = v525;
            v68 = v526;
            v69 = v537;
            do
            {

              LOBYTE(v584) = v38;
              LOBYTE(v484) = v68;
              sub_1AF626158(v67, v66 | (v38 << 32), v64, v539, &v621, v66 | (v38 << 32), v31, v63, 0, 0, 0, 0, v597, v69, v592, v484, v67, v65, v538);
            }

            while ((*(&v621 + 1) - v621) > 0);

            v28 = v538;
          }

          v70 = *(v31 + 192);
          v24 = v529;
          v27 = v533;
          if (v70)
          {
            v71 = *(v31 + 208);
            v72 = v536;
            v73 = v28;
            v74 = v535;
            sub_1AF75D364(v536, v535, v70);
            v75 = v74;
            v28 = v73;
            sub_1AF75D364(v72, v75, v71);
          }

          v29 = v519;
        }

        v27 += 48;
        os_unfair_lock_unlock(*(v31 + 344));
        os_unfair_lock_unlock(*(v31 + 376));
      }

      while (v27 != v29);
      sub_1AFA9BF94(v574, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v574, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
      a7 = v523;
    }

    else
    {
      sub_1AFA9BF94(v574, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
    }
  }

  else
  {
    v76 = 0;
  }

  v77 = a7[4];
  v613[0] = a7[3];
  v613[1] = v77;
  v614 = *(a7 + 10);
  sub_1AF6B06C0(v501, v613, 0x200000000, v579);
  if (*&v579[0])
  {
    if (v583 >= 1 && *(&v581 + 1))
    {
      v78 = *(&v580 + 1);
      v79 = *(&v582 + 1);
      v80 = *(&v580 + 1) + 48 * *(&v581 + 1);
      sub_1AF5B2568(0);
      v534 = v81;
      v554 = v580;
      v555 = v581;
      v556 = v582;
      v557 = v583;
      v552 = v579[0];
      v553 = v579[1];
      sub_1AF5DD298(&v552, &v621);
      v538 = v79;
      v519 = v80;
      do
      {
        v82 = *(v78 + 40);
        v83 = *(v82 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v83);
        os_unfair_lock_lock(*(v82 + 344));
        v84 = *(v82 + 24);

        v623 = 0;
        v621 = 0u;
        v622 = 0u;
        memset(v597, 0, 40);
        v85 = sub_1AF65A4B4(v84, 0, 0, v534, &off_1F2558F90, &v621, v597);

        sub_1AFA9E8FC(v597, sub_1AF5C4448);
        sub_1AFA9E8FC(&v621, sub_1AF5C4448);
        if (sub_1AF649CEC(v85))
        {
          sub_1AF649D40(v85, v79);
        }

        else
        {
          v533 = v78;
          v87 = *(v82 + 232);
          v86 = *(v82 + 240);
          v88 = *(v82 + 120);
          v524 = *(v82 + 28);
          v89 = *(v82 + 32);
          v539 = *(v82 + 16);
          v90 = *(v82 + 40);
          v91 = v90[200];
          v92 = *(v539[11] + 8 * v85 + 32);

          if ((v91 & 1) != 0 || *(v92 + 200) == 1)
          {
            *(v539 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v90 = *(v82 + 40);
          }

          v93 = v90[212];
          LODWORD(v531) = v88;
          LODWORD(v525) = v85;
          if (v93)
          {
            LODWORD(v527) = 0;
          }

          else
          {
            LODWORD(v527) = *(v92 + 212);
          }

          v79 = v538;
          LODWORD(v526) = v90[208];
          v537 = *(v82 + 128);
          v94 = *(v82 + 256);
          v95 = v86;
          v96 = v520;
          sub_1AF5B4FCC(v90, v87, v95, 0, v82);
          v520 = v96;
          v535 = *(v82 + 256);
          v536 = v94;
          v97 = v535 - v94;
          if (v535 == v94)
          {
            v98 = 0;
          }

          else
          {
            v98 = v94;
          }

          v99 = v98;
          *&v597[0] = v98;
          v100 = *(*(v82 + 40) + 24);
          v101 = *(v100 + 16);
          if (v101)
          {
            LODWORD(v521) = v89;
            v102 = v100 + 32;

            v103 = 0;
            v104 = v537;
            v105 = v92;
            do
            {
              v106 = (v102 + 40 * v103);
              if ((v106[4] & 1) == 0)
              {
                v107 = *v106;
                v109 = v106[2];
                v108 = v106[3];
                v110 = *(v105 + 24);
                v111 = *(v110 + 16);
                if (v111)
                {
                  v112 = (v110 + 32);
                  while (*v112 != v107)
                  {
                    v112 += 5;
                    if (!--v111)
                    {
                      goto LABEL_63;
                    }
                  }
                }

                else
                {
LABEL_63:
                  sub_1AF640BC8(v104 + v109 * v99 + v108, v97);
                  v105 = v92;
                  v104 = v537;
                }
              }

              ++v103;
            }

            while (v103 != v101);

            v79 = v538;
            LOBYTE(v89) = v521;
          }

          if (*(v539 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v539 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v82 + 72) * v97);
          }

          if (*(v82 + 184))
          {
            v113 = 0;
          }

          else
          {
            v113 = *(v82 + 168);
          }

          *&v592[0] = 0;

          DWORD2(v622) = -1;
          v623 = v536;
          v624 = v535;
          v625 = v536;
          v626 = v535;
          *&v621 = v536;
          *(&v621 + 1) = v535;
          *&v622 = v113;
          if (v97 < 1)
          {
          }

          else
          {
            *&v521 = &v485;

            v114 = v92;

            v115 = v531;
            v116 = v527;
            v117 = v524;
            v118 = v525;
            v119 = v526;
            v120 = v537;
            do
            {

              LOBYTE(v584) = v89;
              LOBYTE(v484) = v119;
              sub_1AF626158(v118, v117 | (v89 << 32), v115, v539, &v621, v117 | (v89 << 32), v82, v114, 0, 0, 0, 0, v597, v120, v592, v484, v118, v116, v538);
            }

            while ((*(&v621 + 1) - v621) > 0);

            v79 = v538;
          }

          v121 = *(v82 + 192);
          v24 = v529;
          v78 = v533;
          if (v121)
          {
            v122 = *(v82 + 208);
            v123 = v536;
            v124 = v79;
            v125 = v535;
            sub_1AF75D364(v536, v535, v121);
            v126 = v125;
            v79 = v124;
            sub_1AF75D364(v123, v126, v122);
          }

          v80 = v519;
        }

        v78 += 48;
        os_unfair_lock_unlock(*(v82 + 344));
        os_unfair_lock_unlock(*(v82 + 376));
      }

      while (v78 != v80);
      sub_1AFA9BF94(v579, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v579, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
      a7 = v523;
    }

    else
    {
      sub_1AFA9BF94(v579, &qword_1ED725EA0, &type metadata for QueryResult);
      v76 = 1;
    }
  }

  LODWORD(v519) = v76;
  v127 = *(a7 + 104);
  v611[0] = *(a7 + 88);
  v611[1] = v127;
  v612 = *(a7 + 15);
  sub_1AF6B06C0(v501, v611, 0x200000000, &v584);
  if (v584)
  {
    v534 = v591;
    v128 = v520;
    if (v591 >= 1)
    {
      v533 = v588;
      if (v588)
      {
        v129 = 0;
        v531 = v587;
        v527 = v589;
        v130 = *(&v589->isa + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
        v538 = v590[4];
        v539 = v590;
        v601 = v584;
        v602 = v585;
        v603 = v586;
        LODWORD(v526) = v130;
        do
        {
          v520 = v128;
          v537 = v129;
          v131 = &v531[12 * v129];
          v132 = *v131;
          v133 = v131[1];
          v134 = v131[2];
          v135 = *(v131 + 2);
          v136 = *(v131 + 3);
          v138 = *(v131 + 4);
          v137 = *(v131 + 5);
          if (v130)
          {
            v139 = *(v137 + 376);

            os_unfair_lock_lock(v139);
            os_unfair_lock_lock(*(v137 + 344));
          }

          else
          {
          }

          ecs_stack_allocator_push_snapshot(v538);
          v140 = v539;
          v141 = *(v539 + 4);
          v619[0] = *(v539 + 3);
          v619[1] = v141;
          v620 = v539[10];
          v142 = *(*(*(*(v137 + 40) + 16) + 32) + 16) + 1;
          v140[6] = ecs_stack_allocator_allocate(v539[4], 48 * v142, 8);
          v140[7] = v142;
          v140[9] = 0;
          v140[10] = 0;
          v140[8] = 0;
          LOBYTE(v552) = 1;
          *&v621 = v527;
          *(&v621 + 1) = v137;
          *&v622 = v140;
          *(&v622 + 1) = v134;
          v623 = (v133 - v132 + v134);
          v624 = v534;
          v625 = v132;
          v626 = v133;
          v627 = 0;
          v628 = 0;
          v629 = 1;
          v630 = v135;
          v631 = v136;
          v632 = v138;
          v143 = v520;
          v144 = sub_1AF706F6C(v137, &v621);
          v145 = v630;
          v536 = v143;
          if (v630)
          {
            v146 = v632;
            if (v632)
            {
              v535 = v622;
              v147 = (v144 + 8);
              do
              {
                v145 += 8;
                v148 = *(v147 - 1);
                v149 = *v147;

                sub_1AFD08440(v150, v148, v149);

                sub_1AF6FCDC8(0);
                v152 = *(*(v137 + 40) + 16);
                v153 = *(v152 + 128);
                if (*(v153 + 16))
                {
                  v154 = v151;
                  v155 = sub_1AF449CB8(v151);
                  if ((v156 & 1) != 0 && *(*(v152 + 24) + 16 * *(*(v153 + 56) + 8 * v155) + 32) == v154)
                  {
                    *&v552 = v154;
                    *(&v552 + 1) = &off_1F2559388;
                    BYTE8(v554) = 1;
                    MEMORY[0x1EEE9AC00](v155);
                    v484 = v137;

                    sub_1AF63023C(0, v137, sub_1AFA9EC24);

                    sub_1AF635250(&v552);
                  }
                }

                v147 += 2;
                --v146;
              }

              while (v146);
            }
          }

          else
          {
            v157 = v625;
            v158 = v626;
            if (v625 != v626)
            {
              v159 = &v144[16 * v625 + 8];
              do
              {
                v160 = *(v159 - 1);
                v161 = *v159;

                sub_1AFD08440(v162, v160, v161);

                sub_1AF6FCDC8(0);
                v164 = *(*(v137 + 40) + 16);
                v165 = *(v164 + 128);
                if (*(v165 + 16))
                {
                  v166 = v163;
                  v167 = sub_1AF449CB8(v163);
                  if ((v168 & 1) != 0 && *(*(v164 + 24) + 16 * *(*(v165 + 56) + 8 * v167) + 32) == v166)
                  {
                    *&v552 = v166;
                    *(&v552 + 1) = &off_1F2559388;
                    BYTE8(v554) = 1;
                    MEMORY[0x1EEE9AC00](v167);
                    v484 = v137;

                    sub_1AF63023C(0, v137, sub_1AFA9EC24);

                    sub_1AF635250(&v552);
                  }
                }

                ++v157;
                v159 += 2;
              }

              while (v158 != v157);
            }
          }

          v128 = v536;
          sub_1AF630994(v539, &v601, v619);
          sub_1AF62D29C(v137);
          ecs_stack_allocator_pop_snapshot(v538);
          v130 = v526;
          if (v526)
          {
            os_unfair_lock_unlock(*(v137 + 344));
            os_unfair_lock_unlock(*(v137 + 376));
          }

          v129 = v537 + 1;
        }

        while (v537 + 1 != v533);
      }
    }

    sub_1AFA9BF94(&v584, &qword_1ED725EA0, &type metadata for QueryResult);
    v24 = v529;
  }

  else
  {
    v128 = v520;
  }

  v169 = v523[9];
  v609[0] = v523[8];
  v609[1] = v169;
  v610 = *(v523 + 20);
  sub_1AF6B06C0(v501, v609, 0x200000000, v592);
  if (*&v592[0])
  {
    v170 = v596;
    if (v596 >= 1 && *(&v594 + 1))
    {
      v507 = v596;
      v171 = *(&v593 + 1);
      v538 = *(&v595 + 1);
      v172 = *(&v593 + 1) + 48 * *(&v594 + 1);
      sub_1AF5B25A4(0);
      v534 = v173;
      v554 = v593;
      v555 = v594;
      v556 = v595;
      v557 = v596;
      v552 = v592[0];
      v553 = v592[1];
      sub_1AF5DD298(&v552, v597);
      v518 = v172;
      do
      {
        v174 = *(v171 + 40);
        v175 = *(v174 + 376);
        swift_retain_n();
        os_unfair_lock_lock(v175);
        os_unfair_lock_lock(*(v174 + 344));
        v176 = *(v174 + 24);

        memset(v597, 0, 40);
        *&v570 = 0;
        v569 = 0u;
        v568 = 0u;
        v177 = sub_1AF65A4B4(v176, 0, 0, v534, &off_1F250F310, v597, &v568);

        sub_1AFA9E8FC(&v568, sub_1AF5C4448);
        sub_1AFA9E8FC(v597, sub_1AF5C4448);
        if (sub_1AF649CEC(v177))
        {
          sub_1AF649D40(v177, v538);
        }

        else
        {
          v533 = v171;
          v520 = v128;
          v179 = *(v174 + 232);
          v178 = *(v174 + 240);
          LODWORD(v531) = *(v174 + 120);
          v525 = *(v174 + 28);
          v180 = *(v174 + 32);
          v181 = *(v174 + 16);
          v182 = *(v174 + 40);
          v183 = v182[200];

          if ((v183 & 1) != 0 || *(v184 + 200) == 1)
          {
            *(v181 + OBJC_IVAR____TtC3VFX13EntityManager_shouldNotifyEntityEvent) = 1;
            v182 = *(v174 + 40);
          }

          v185 = v182[212];
          v186 = v184;
          v539 = v181;
          LODWORD(v526) = v177;
          if (v185)
          {
            LODWORD(v527) = 0;
          }

          else
          {
            LODWORD(v527) = *(v184 + 212);
          }

          v187 = v182[208];
          v537 = *(v174 + 128);
          v188 = *(v174 + 256);
          v189 = v178;
          v190 = v520;
          sub_1AF5B4FCC(v182, v179, v189, 0, v174);
          v520 = v190;
          v535 = *(v174 + 256);
          v536 = v188;
          v191 = v535 - v188;
          if (v535 == v188)
          {
            v192 = 0;
          }

          else
          {
            v192 = v188;
          }

          v193 = v192;
          *&v568 = v192;
          v194 = *(*(v174 + 40) + 24);
          v195 = *(v194 + 16);
          if (v195)
          {
            LODWORD(v521) = v180;
            LODWORD(v524) = v187;
            v196 = v194 + 32;

            v197 = 0;
            v198 = v537;
            v199 = v191;
            v200 = v186;
            do
            {
              v201 = (v196 + 40 * v197);
              if ((v201[4] & 1) == 0)
              {
                v202 = *v201;
                v204 = v201[2];
                v203 = v201[3];
                v205 = *(v200 + 24);
                v206 = *(v205 + 16);
                if (v206)
                {
                  v207 = (v205 + 32);
                  while (*v207 != v202)
                  {
                    v207 += 5;
                    if (!--v206)
                    {
                      goto LABEL_132;
                    }
                  }
                }

                else
                {
LABEL_132:
                  sub_1AF640BC8(v198 + v204 * v193 + v203, v199);
                  v200 = v186;
                  v199 = v191;
                  v198 = v537;
                }
              }

              ++v197;
            }

            while (v197 != v195);
            v191 = v199;

            LOBYTE(v187) = v524;
            LOBYTE(v180) = v521;
          }

          if (*(v539 + OBJC_IVAR____TtC3VFX13EntityManager_counters))
          {
            vfx_counters.add(_:_:)(*(v539 + OBJC_IVAR____TtC3VFX13EntityManager_counters + 68), *(v174 + 72) * v191);
          }

          if (*(v174 + 184))
          {
            v208 = 0;
          }

          else
          {
            v208 = *(v174 + 168);
          }

          *&v547 = 0;

          *&v597[1] = v208;
          DWORD2(v597[1]) = -1;
          *&v597[2] = v536;
          *(&v597[2] + 1) = v535;
          *&v598 = v536;
          *(&v598 + 1) = v535;
          *&v597[0] = v536;
          *(&v597[0] + 1) = v535;
          if (v191 < 1)
          {
          }

          else
          {
            v524 = &v485;

            v209 = v186;

            v210 = v531;
            v211 = v525;
            v212 = v526;
            v213 = v187;
            v214 = v527;
            v215 = v537;
            do
            {

              LOBYTE(v542) = v180;
              LOBYTE(v484) = v213;
              sub_1AF626158(v212, v211 | (v180 << 32), v210, v539, v597, v211 | (v180 << 32), v174, v209, 0, 0, 0, 0, &v568, v215, &v547, v484, v212, v214, v538);
            }

            while ((*(&v597[0] + 1) - *&v597[0]) > 0);
          }

          v216 = *(v174 + 192);
          v24 = v529;
          v128 = v520;
          if (v216)
          {
            v217 = *(v174 + 208);
            v219 = v535;
            v218 = v536;
            sub_1AF75D364(v536, v535, v216);
            sub_1AF75D364(v218, v219, v217);
          }

          v171 = v533;
          v172 = v518;
        }

        v171 += 48;
        os_unfair_lock_unlock(*(v174 + 344));
        os_unfair_lock_unlock(*(v174 + 376));
      }

      while (v171 != v172);
      sub_1AFA9BF94(v592, &qword_1ED725EA0, &type metadata for QueryResult);
      sub_1AFA9BF94(v592, &qword_1ED725EA0, &type metadata for QueryResult);
      v170 = v507;
    }

    else
    {
      sub_1AFA9BF94(v592, &qword_1ED725EA0, &type metadata for QueryResult);
    }

    v220 = v519;
    if (v170 > 0)
    {
      v220 = 1;
    }

    LODWORD(v519) = v220;
  }

  if (v513)
  {
    sub_1AFA61FF8(v540, v513, sub_1AFD2AB08);
    LODWORD(v519) = v519 | v221;
  }

  if (v514)
  {
    Strong = swift_unknownObjectUnownedLoadStrong();
  }

  else
  {
    Strong = 0;
  }

  v223 = v540;
  v224 = sub_1AFA702F0(v540, v515 & 1);

  v225 = *(v223 + 16);

  v520 = v128;
  if (v225)
  {
    v507 = sub_1AF8BB88C();
    v518 = v226;
  }

  else
  {
    v507 = 0;
    v518 = 0xE000000000000000;
  }

  v227 = v519 | v224;
  v228 = v523[14];
  v607[0] = v523[13];
  v607[1] = v228;
  v608 = *(v523 + 30);
  sub_1AF6B06C0(v501, v607, 0x200000000, v597);
  v229 = *&v597[0];
  if (!*&v597[0])
  {

    if ((v227 & 1) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_318;
  }

  if (v600 <= 0 || (v488 = *(&v598 + 1)) == 0)
  {

    sub_1AFA9BF94(v597, &qword_1ED725EA0, &type metadata for QueryResult);
    if ((v227 & 1) == 0)
    {
      goto LABEL_319;
    }

    goto LABEL_318;
  }

  v487 = *(&v597[2] + 1);
  v494 = *(&v599 + 1);
  v493 = *(*(&v599 + 1) + 32);
  v492 = *(v599 + OBJC_IVAR____TtC3VFX13EntityManager_lockChunksOnQueryForEach);
  sub_1AF5B25A4(0);
  v231 = v230;
  v604 = v229;
  v605 = *(v597 + 8);
  v606 = *(&v597[1] + 8);
  v524 = (v501 + OBJC_IVAR____TtC3VFX13EntityManager__entries);
  v570 = v597[2];
  v571 = v598;
  v572 = v599;
  v573 = v600;
  v568 = v597[0];
  v569 = v597[1];
  sub_1AF5DD298(&v568, &v552);
  v232 = 0;
  v531 = v231;
  v486 = v231 - 8;
  v519 = (v505 + 2);
  v499 = (v505 + 4);
  v490 = (v505 + 6);
  v506 += 7;
  v496 = &v548;
  v504 = (v505 + 7);
  ++v505;
  v495 = &v553;
  v497 = xmmword_1AFE21110;
  v521 = xmmword_1AFE72020;
LABEL_172:
  v491 = v232;
  v233 = (v487 + 48 * v232);
  v234 = *v233;
  v526 = v233[1];
  v235 = *(v233 + 3);
  v534 = *(v233 + 2);
  v236 = *(v233 + 4);
  v237 = *(v233 + 5);
  if (v492)
  {
    v238 = *(v237 + 376);

    os_unfair_lock_lock(v238);
    os_unfair_lock_lock(*(v237 + 344));
  }

  else
  {
  }

  ecs_stack_allocator_push_snapshot(v493);
  v239 = v494;
  v240 = *(v494 + 4);
  v617[0] = *(v494 + 3);
  v617[1] = v240;
  v618 = v494[10];
  v241 = *(*(*(*(v237 + 40) + 16) + 32) + 16) + 1;
  v239[6] = ecs_stack_allocator_allocate(v494[4], 48 * v241, 8);
  v239[7] = v241;
  v239[9] = 0;
  v239[10] = 0;
  v239[8] = 0;
  v242 = v534;
  v538 = sub_1AF64B110(v532, &off_1F255B720, v534, v235, v236, v239);
  v539 = sub_1AF64B110(v531, &off_1F250F310, v242, v235, v236, v239);
  if (v242)
  {
    if (!v236)
    {
      goto LABEL_315;
    }

    v526 = *(v510 + 72);
    v525 = *(*v486 + 72);
    v503 = v237;
    while (1)
    {
      v246 = *v534;
      v533 = v236;
      ++v534;

      if (*(v237 + 184))
      {
        goto LABEL_324;
      }

      v248 = *(*(v237 + 168) + 4 * v246);
      v249 = *(*(v247 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v248 + 8);

      v250 = v248 == -1 && v249 == 0;
      if (v250 || (v248 & 0x80000000) != 0 || v524[1] <= v248)
      {
        break;
      }

      v251 = *v524 + 12 * v248;
      if (v249 != -1 && *(v251 + 8) != v249)
      {
        break;
      }

      v253 = *(*(*(v501 + 88) + 8 * *(v251 + 6) + 32) + 16);
      v254 = *(v253 + 128);
      if (!*(v254 + 16))
      {
        break;
      }

      v255 = sub_1AF449CB8(&type metadata for Tombstone);
      if ((v256 & 1) == 0 || *(*(v253 + 24) + 16 * *(*(v254 + 56) + 8 * v255) + 32) != &type metadata for Tombstone)
      {
        break;
      }

LABEL_181:
      v539 = (v539 + v525);
      v538 += v526;
      v236 = v533 - 1;
      if (v533 == 1)
      {
        goto LABEL_314;
      }
    }

    dispatch_group_enter(v541);
    v257 = *(v237 + 64);
    v258 = *(v237 + 80);
    v562 = *(v237 + 112);
    v260 = *(v237 + 80);
    v259 = *(v237 + 96);
    v560 = v258;
    v561 = v259;
    v261 = *(v237 + 64);
    v558 = *(v237 + 48);
    v559 = v257;
    v262 = *(v237 + 96);
    v554 = v260;
    v555 = v262;
    LOBYTE(v556) = *(v237 + 112);
    v552 = *(v237 + 48);
    v553 = v261;
    v263 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v265 = v264;
    v565 = v554;
    v566 = v555;
    v567 = v556;
    v564 = v553;
    v563 = v552;

    sub_1AF5DD36C(&v558, &v547);
    sub_1AF5DD3C8(&v563);
    if (v265)
    {

      v536 = 0;
      v266 = 0;
      v267 = 0;
    }

    else
    {
      v268 = *(v237 + 128);

      v269 = (v268 + v263 + 24 * v246);
      v536 = *v269;
      v266 = *(v269 + 1);
      v267 = *(v269 + 2);
    }

    if (*(v237 + 184))
    {
      goto LABEL_324;
    }

    v535 = v266;
    v271 = *(*(v237 + 168) + 4 * v246);
    v272 = *(*(v270 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v271 + 8);

    v273 = swift_allocObject();
    v273[2] = sub_1AFA9EC2C;
    v273[3] = v24;
    v537 = v273;
    v274 = v540;
    v273[4] = v541;
    v275 = *(v274 + 16);

    if (v275)
    {
      v276 = *(v275 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v277 = v541;

      if ((v276 & 1) == 0 || *(v540 + 3048) != 1)
      {
        sub_1AF81F330();
        v279 = swift_allocError();
        v280 = v279;
        *v281 = v521;
        if (!*(v530 + 16))
        {
          v282 = v512;
          v283 = *(v512 + 72);
          v284 = v279;
          os_unfair_lock_lock(v283);
          v285 = *(v530 + 16);
          *(v530 + 16) = v280;
          v286 = v280;

          os_unfair_lock_unlock(*(v282 + 72));
        }

        dispatch_group_leave(v277);

        goto LABEL_207;
      }
    }

    else
    {
      swift_retain_n();
      v287 = v541;
    }

    v288 = sub_1AFAA71FC(v278);
    v289 = v540;
    v290 = v539 + v531[9];
    v291 = *v290;
    LOBYTE(v290) = v290[8];
    v527 = v288;
    v292 = v290 | (v288 != v291);
    os_unfair_lock_lock(*(v540 + 72));
    v293 = *(v289 + 80);
    if (*(v293 + 16) && (v294 = sub_1AF41ACD4(v532, v271 | (v272 << 32)), (v295 & 1) != 0))
    {
      sub_1AF85B3D4(*(v293 + 56) + 96 * v294, &v552);
      if (BYTE8(v557) != 255)
      {
        sub_1AF85B3D4(&v552, &v547);
        sub_1AFA9BF94(&v552, &qword_1EB642590, &type metadata for CompilationStatus);
        *(v546 + 9) = *(v551 + 9);
        v544 = v549;
        v545 = v550;
        v546[0] = v551[0];
        v542 = v547;
        v543 = v548;
        if (!BYTE8(v551[1]))
        {
          v343 = v542;
          v344 = (v542 != v527) | v292;
          os_unfair_lock_unlock(*(v540 + 72));
          if (v344)
          {
            if (v343 == v527)
            {
              v277 = v541;
              dispatch_group_leave(v541);
LABEL_207:

              v24 = v529;
LABEL_179:

              v244 = v535;
              v243 = v536;
              v245 = v267;
LABEL_180:
              sub_1AF487074(v243, v244, v245);
              goto LABEL_181;
            }

LABEL_217:
            v514 = v271;
            v516 = v267;
            v296 = v531;
            v515 = swift_allocBox();
            v298 = v297;
            sub_1AFA5C210(v297);
            v299 = v298 + *(v296 + 36);
            v300 = v527;
            *v299 = v527;
            *(v299 + 8) = 0;
            sub_1AFA9DE54(v538, v298, type metadata accessor for EmitterScript);
            sub_1AFA9DE54(v298, v539, sub_1AF5B25A4);
            v301 = v540;
            os_unfair_lock_lock(*(v540 + 72));
            *&v552 = v300;
            BYTE8(v557) = 0;
            sub_1AF825824(&v552, v532, v271 | (v272 << 32));
            os_unfair_lock_unlock(*(v301 + 72));
            v302 = *(v301 + 16);

            if (v302)
            {
              v303 = v502;
              v304 = v528;
              (*v519)(v502, v302 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v528);

              (*v504)(v303, 0, 1, v304);
              v305 = v517;
              (*v499)(v517, v303, v304);
            }

            else
            {
              v306 = v502;
              (*v504)(v502, 1, 1, v528);
              v305 = v517;
              if (qword_1ED7270F0 != -1)
              {
                swift_once();
              }

              v307 = sub_1AFDFC538();
              sub_1AF477C68(v307, qword_1ED73B608);
              sub_1AFDFC528();
              sub_1AFDFC4D8();
              if ((*v490)(v306, 1, v528) != 1)
              {
                sub_1AFA9C470(v306, &qword_1EB633050, MEMORY[0x1E69E93B8]);
              }
            }

            if (qword_1ED7270F0 != -1)
            {
              swift_once();
            }

            v513 = v272;
            v308 = sub_1AFDFC538();
            sub_1AF477C68(v308, qword_1ED73B608);
            v309 = sub_1AFDFC528();
            v310 = sub_1AFDFDB88();
            if (sub_1AFDFDCE8())
            {
              v311 = swift_slowAlloc();
              *v311 = 0;
              v312 = sub_1AFDFC4E8();
              _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v309, v310, v312, "buildScript", "", v311, 2u);
              MEMORY[0x1B271DEA0](v311, -1, -1);
            }

            (*v519)(v508, v305, v528);
            sub_1AFDFC578();
            swift_allocObject();
            v313 = sub_1AFDFC568();
            sub_1AFA9E3C8(v538, v522, type metadata accessor for EmitterScript);
            v314 = (*(v510 + 80) + 400) & ~*(v510 + 80);
            v315 = (v506 + v314) & 0xFFFFFFFFFFFFFFF8;
            v316 = (v315 + 23) & 0xFFFFFFFFFFFFFFF8;
            v317 = (v316 + 27) & 0xFFFFFFFFFFFFFFF8;
            v318 = swift_allocObject();
            v319 = v532;
            *(v318 + 16) = v540;
            *(v318 + 24) = v319;
            v321 = v513;
            v320 = v514;
            *(v318 + 32) = v514;
            *(v318 + 36) = v321;
            *(v318 + 40) = v527;
            *(v318 + 48) = sub_1AFA9EC20;
            *(v318 + 56) = v537;
            *(v318 + 64) = v313;
            v527 = v313;
            memcpy((v318 + 72), v523, 0x148uLL);
            sub_1AFA9E320(v522, v318 + v314, type metadata accessor for EmitterScript);
            v322 = (v318 + v315);
            v323 = v518;
            *v322 = v507;
            v322[1] = v323;
            v324 = (v318 + v316);
            v325 = v535;
            v326 = v536;
            *v324 = v536;
            v324[1] = v325;
            v327 = v516;
            v324[2] = v516;
            v328 = (v318 + v317);
            *v328 = v320;
            v328[1] = v321;
            *(v318 + ((v317 + 15) & 0xFFFFFFFFFFFFFFF8)) = v515;
            if ((v509 & 1) == 0)
            {
              v513 = *(v540 + 32);
              v337 = swift_allocObject();
              *(v337 + 16) = sub_1AFA9EB8C;
              *(v337 + 24) = v318;
              v338 = v337;
              v514 = v337;
              v339 = swift_allocObject();
              *(v339 + 16) = sub_1AFA9EB90;
              *(v339 + 24) = v338;
              *&v549 = sub_1AF6D25EC;
              *(&v549 + 1) = v339;
              *&v547 = MEMORY[0x1E69E9820];
              *(&v547 + 1) = 1107296256;
              *&v548 = sub_1AF6F662C;
              *(&v548 + 1) = &unk_1F255B170;
              v340 = _Block_copy(&v547);
              v536 = v326;
              v341 = v340;

              sub_1AFA9C054(v523, &v552, &unk_1EB633F28, type metadata accessor for EmitterScript, &off_1F255B720, &off_1ED72CA10);

              v342 = v535;
              sub_1AF487F80(v326, v535, v327);

              dispatch_sync(v513, v341);
              _Block_release(v341);

              (*v505)(v517, v528);
              swift_isEscapingClosureAtFileLocation();

              v24 = v529;

              sub_1AF487074(v536, v342, v327);
              v237 = v503;
              goto LABEL_181;
            }

            v513 = *(v540 + 40);
            v329 = swift_allocObject();
            *(v329 + 16) = sub_1AFA9EB8C;
            *(v329 + 24) = v318;
            v514 = v329;

            sub_1AFA9C054(v523, &v552, &unk_1EB633F28, type metadata accessor for EmitterScript, &off_1F255B720, &off_1ED72CA10);

            sub_1AF487F80(v326, v325, v327);
            v330 = qword_1ED730EA0;

            v331 = v327;
            v237 = v503;
            if (v330 != -1)
            {
              swift_once();
            }

            if (qword_1ED731058 != -1)
            {
              swift_once();
            }

            v332 = qword_1ED73B8A0;
            v333 = swift_allocObject();
            v334 = v514;
            *(v333 + 16) = sub_1AFA9EB90;
            *(v333 + 24) = v334;
            v335 = swift_allocObject();
            v335[2] = v332;
            v335[3] = sub_1AF6CC3F0;
            v335[4] = v333;
            *&v554 = sub_1AFA9EC30;
            *(&v554 + 1) = v335;
            *&v552 = MEMORY[0x1E69E9820];
            *(&v552 + 1) = 1107296256;
            *&v553 = sub_1AFCDA044;
            *(&v553 + 1) = &unk_1F255B210;
            v336 = _Block_copy(&v552);
            swift_retain_n();

            [v513 addOperationWithBlock:v336];
            _Block_release(v336);

            (*v505)(v517, v528);

            v24 = v529;

            v244 = v535;
            v243 = v536;
            v245 = v331;
            goto LABEL_180;
          }

LABEL_237:
          v345 = v541;
          v346 = v539;
          sub_1AFA9DE54(v538, v539, type metadata accessor for EmitterScript);
          v347 = v531;
          v348 = *(v532 + 36);
          v349 = *(v346 + v348);
          if (v349)
          {
            v350 = v539;
            v351 = *(v539 + v348 + 8);
            v352 = v539[1];
            v353 = v539[2];

            v354 = sub_1AF458B0C(v352, v353);
            v349(*(v350 + v347[13]), v354);

            sub_1AF0FB8EC(v349, v351);
          }

          if (*(v539 + v347[10]) == 1)
          {
            v355 = *(v539 + v347[11]);
            v356 = v355;
          }

          else
          {
            sub_1AF81F330();
            v355 = swift_allocError();
            *v357 = v497;
          }

          v24 = v529;
          if (!*(v530 + 16) && v355)
          {
            v358 = v512;
            v359 = *(v512 + 72);
            v360 = v355;
            os_unfair_lock_lock(v359);
            v361 = *(v530 + 16);
            *(v530 + 16) = v355;
            v362 = v355;

            os_unfair_lock_unlock(*(v358 + 72));
          }

          dispatch_group_leave(v345);

          goto LABEL_179;
        }

        sub_1AFA9C0C8(&v542);
LABEL_216:
        os_unfair_lock_unlock(*(v540 + 72));
        if (v292)
        {
          goto LABEL_217;
        }

        goto LABEL_237;
      }
    }

    else
    {
      *&v557 = 0;
      v555 = 0u;
      v556 = 0u;
      v553 = 0u;
      v554 = 0u;
      v552 = 0u;
      BYTE8(v557) = -1;
    }

    sub_1AFA9BF94(&v552, &qword_1EB642590, &type metadata for CompilationStatus);
    goto LABEL_216;
  }

  if (v234 == v526)
  {
    goto LABEL_315;
  }

  v363 = *(v510 + 72);
  v516 = *(*v486 + 72);
  v539 = (v539 + v516 * v234);
  v537 = 24 * v234;
  v538 += v363 * v234;
  v498 = v363;
  while (1)
  {

    if (*(v237 + 184))
    {
      break;
    }

    v368 = *(*(v237 + 168) + 4 * v234);
    v369 = *(*(v367 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v368 + 8);

    v370 = v368 == -1 && v369 == 0;
    if (!v370 && (v368 & 0x80000000) == 0 && v524[1] > v368)
    {
      v371 = *v524 + 12 * v368;
      if (v369 == -1 || *(v371 + 8) == v369)
      {
        v373 = *(*(*(v501 + 88) + 8 * *(v371 + 6) + 32) + 16);
        v374 = *(v373 + 128);
        if (*(v374 + 16))
        {
          v375 = sub_1AF449CB8(&type metadata for Tombstone);
          if ((v376 & 1) != 0 && *(*(v373 + 24) + 16 * *(*(v374 + 56) + 8 * v375) + 32) == &type metadata for Tombstone)
          {
            goto LABEL_249;
          }
        }
      }
    }

    dispatch_group_enter(v541);
    v377 = *(v237 + 64);
    v378 = *(v237 + 80);
    v562 = *(v237 + 112);
    v380 = *(v237 + 80);
    v379 = *(v237 + 96);
    v560 = v378;
    v561 = v379;
    v381 = *(v237 + 64);
    v558 = *(v237 + 48);
    v559 = v377;
    v382 = *(v237 + 96);
    v554 = v380;
    v555 = v382;
    LOBYTE(v556) = *(v237 + 112);
    v552 = *(v237 + 48);
    v553 = v381;
    v383 = sub_1AF64FB24(&type metadata for ScriptCompileOptions);
    v385 = v384;
    v565 = v554;
    v566 = v555;
    v567 = v556;
    v564 = v553;
    v563 = v552;

    sub_1AF5DD36C(&v558, &v547);
    sub_1AF5DD3C8(&v563);
    if (v385)
    {

      v536 = 0;
      v386 = 0;
      v387 = 0;
    }

    else
    {
      v388 = *(v237 + 128);

      v389 = (v388 + v537 + v383);
      v536 = *v389;
      v386 = *(v389 + 1);
      v387 = *(v389 + 2);
    }

    v534 = v386;

    if (*(v237 + 184))
    {
      break;
    }

    v535 = v387;
    v391 = *(v237 + 168);
    v533 = v234;
    v392 = *(v391 + 4 * v234);
    v527 = *(*(v390 + OBJC_IVAR____TtC3VFX13EntityManager__entries) + 12 * v392 + 8);

    v393 = swift_allocObject();
    v393[2] = sub_1AFA9EC2C;
    v393[3] = v24;
    v394 = v540;
    v393[4] = v541;
    v395 = *(v394 + 16);

    if (v395)
    {
      v396 = *(v395 + OBJC_IVAR____TtC3VFX13EntityManager_scriptingConfig);
      swift_retain_n();
      v397 = v541;

      if ((v396 & 1) == 0 || *(v540 + 3048) != 1)
      {
        sub_1AF81F330();
        v399 = swift_allocError();
        v400 = v399;
        *v401 = v521;
        if (!*(v530 + 16))
        {
          v402 = v512;
          v403 = *(v512 + 72);
          v404 = v399;
          os_unfair_lock_lock(v403);
          v405 = *(v530 + 16);
          *(v530 + 16) = v400;
          v406 = v400;

          v363 = v498;
          os_unfair_lock_unlock(*(v402 + 72));
        }

        dispatch_group_leave(v397);

        goto LABEL_275;
      }
    }

    else
    {
      swift_retain_n();
      v407 = v541;
    }

    v408 = v392;
    v409 = sub_1AFAA71FC(v398);
    v410 = v540;
    v411 = v539 + v531[9];
    v412 = *v411;
    LOBYTE(v411) = v411[8];
    v525 = v409;
    v413 = v411 | (v409 != v412);
    os_unfair_lock_lock(*(v540 + 72));
    v414 = *(v410 + 80);
    if (!*(v414 + 16) || (v415 = sub_1AF41ACD4(v532, v392 | (v527 << 32)), (v416 & 1) == 0))
    {
      *&v557 = 0;
      v555 = 0u;
      v556 = 0u;
      v553 = 0u;
      v554 = 0u;
      v552 = 0u;
      BYTE8(v557) = -1;
LABEL_283:
      sub_1AFA9BF94(&v552, &qword_1EB642590, &type metadata for CompilationStatus);
LABEL_284:
      v417 = v540;
      os_unfair_lock_unlock(*(v540 + 72));
      if ((v413 & 1) == 0)
      {
        goto LABEL_306;
      }

      goto LABEL_285;
    }

    sub_1AF85B3D4(*(v414 + 56) + 96 * v415, &v552);
    if (BYTE8(v557) == 255)
    {
      goto LABEL_283;
    }

    sub_1AF85B3D4(&v552, &v547);
    sub_1AFA9BF94(&v552, &qword_1EB642590, &type metadata for CompilationStatus);
    *(v546 + 9) = *(v551 + 9);
    v544 = v549;
    v545 = v550;
    v546[0] = v551[0];
    v542 = v547;
    v543 = v548;
    if (BYTE8(v551[1]))
    {
      sub_1AFA9C0C8(&v542);
      goto LABEL_284;
    }

    v461 = v542;
    v462 = (v542 != v525) | v413;
    v417 = v540;
    os_unfair_lock_unlock(*(v540 + 72));
    if ((v462 & 1) == 0)
    {
LABEL_306:
      v464 = v539;
      sub_1AFA9DE54(v538, v539, type metadata accessor for EmitterScript);
      v465 = v531;
      v466 = *(v532 + 36);
      v467 = *(v464 + v466);
      if (v467)
      {
        v468 = *(v464 + v466 + 8);
        v469 = v464[1];
        v470 = v539[2];

        v471 = v470;
        v464 = v539;
        v472 = sub_1AF458B0C(v469, v471);
        v467(*(v464 + v465[13]), v472);

        sub_1AF0FB8EC(v467, v468);
      }

      if (*(v464 + v465[10]) == 1)
      {
        v473 = *(v464 + v465[11]);
        v474 = v473;
      }

      else
      {
        sub_1AF81F330();
        v473 = swift_allocError();
        *v475 = v497;
      }

      v24 = v529;
      if (*(v530 + 16) || !v473)
      {
        v364 = v363;
      }

      else
      {
        v364 = v363;
        v476 = v512;
        v477 = *(v512 + 72);
        v478 = v473;
        os_unfair_lock_lock(v477);
        v479 = *(v530 + 16);
        *(v530 + 16) = v473;
        v480 = v473;

        os_unfair_lock_unlock(*(v476 + 72));
      }

      v234 = v533;
      v365 = v534;
      v366 = v541;
      dispatch_group_leave(v541);

      sub_1AF487074(v536, v365, v535);
      v363 = v364;
      goto LABEL_249;
    }

    if (v461 == v525)
    {
      v463 = v541;
      dispatch_group_leave(v541);

      v24 = v529;
LABEL_275:

      goto LABEL_301;
    }

LABEL_285:
    v513 = v392;
    v418 = v531;
    v419 = swift_allocBox();
    v421 = v420;
    sub_1AFA5C210(v420);
    v422 = v421 + *(v418 + 36);
    v423 = v525;
    *v422 = v525;
    *(v422 + 8) = 0;
    sub_1AFA9DE54(v538, v421, type metadata accessor for EmitterScript);
    sub_1AFA9DE54(v421, v539, sub_1AF5B25A4);
    os_unfair_lock_lock(*(v417 + 72));
    *&v552 = v423;
    BYTE8(v557) = 0;
    sub_1AF825824(&v552, v532, v408 | (v527 << 32));
    os_unfair_lock_unlock(*(v417 + 72));
    v424 = *(v417 + 16);

    if (v424)
    {
      v425 = v489;
      v426 = v528;
      (*v519)(v489, v424 + OBJC_IVAR____TtC3VFX13EntityManager_signpostID, v528);

      (*v504)(v425, 0, 1, v426);
      (*v499)(v511, v425, v426);
    }

    else
    {
      v427 = v489;
      (*v504)(v489, 1, 1, v528);
      if (qword_1ED7270F0 != -1)
      {
        swift_once();
      }

      v428 = sub_1AFDFC538();
      sub_1AF477C68(v428, qword_1ED73B608);
      sub_1AFDFC528();
      sub_1AFDFC4D8();
      if ((*v490)(v427, 1, v528) != 1)
      {
        sub_1AFA9C470(v427, &qword_1EB633050, MEMORY[0x1E69E93B8]);
      }
    }

    if (qword_1ED7270F0 != -1)
    {
      swift_once();
    }

    v514 = v419;
    v515 = v393;
    v429 = sub_1AFDFC538();
    sub_1AF477C68(v429, qword_1ED73B608);
    v430 = sub_1AFDFC528();
    v431 = sub_1AFDFDB88();
    if (sub_1AFDFDCE8())
    {
      v432 = swift_slowAlloc();
      *v432 = 0;
      v433 = sub_1AFDFC4E8();
      _os_signpost_emit_with_name_impl(&dword_1AF0CE000, v430, v431, v433, "buildScript", "", v432, 2u);
      MEMORY[0x1B271DEA0](v432, -1, -1);
    }

    (*v519)(v508, v511, v528);
    sub_1AFDFC578();
    swift_allocObject();
    v434 = sub_1AFDFC568();
    sub_1AFA9E3C8(v538, v522, type metadata accessor for EmitterScript);
    v435 = (*(v510 + 80) + 400) & ~*(v510 + 80);
    v436 = (v506 + v435) & 0xFFFFFFFFFFFFFFF8;
    v437 = (v436 + 23) & 0xFFFFFFFFFFFFFFF8;
    v438 = (v437 + 27) & 0xFFFFFFFFFFFFFFF8;
    v500 = (v438 + 15) & 0xFFFFFFFFFFFFFFF8;
    v439 = swift_allocObject();
    v440 = v532;
    *(v439 + 16) = v540;
    *(v439 + 24) = v440;
    v441 = v513;
    v442 = v527;
    *(v439 + 32) = v513;
    *(v439 + 36) = v442;
    *(v439 + 40) = v525;
    *(v439 + 48) = sub_1AFA9EC20;
    *(v439 + 56) = v515;
    *(v439 + 64) = v434;
    v525 = v434;
    memcpy((v439 + 72), v523, 0x148uLL);
    sub_1AFA9E320(v522, v439 + v435, type metadata accessor for EmitterScript);
    v443 = (v439 + v436);
    v444 = v518;
    *v443 = v507;
    v443[1] = v444;
    v445 = (v439 + v437);
    v446 = v535;
    v447 = v536;
    v448 = v534;
    *v445 = v536;
    v445[1] = v448;
    v445[2] = v446;
    v449 = (v439 + v438);
    *v449 = v441;
    v449[1] = v442;
    *(v439 + v500) = v514;
    if ((v509 & 1) == 0)
    {
      v527 = *(v540 + 32);
      v456 = v446;
      v457 = swift_allocObject();
      *(v457 + 16) = sub_1AFA9DEBC;
      *(v457 + 24) = v439;
      v458 = swift_allocObject();
      *(v458 + 16) = sub_1AFA9EB90;
      *(v458 + 24) = v457;
      *&v549 = sub_1AF6D25EC;
      *(&v549 + 1) = v458;
      *&v547 = MEMORY[0x1E69E9820];
      *(&v547 + 1) = 1107296256;
      *&v548 = sub_1AF6F662C;
      *(&v548 + 1) = &unk_1F255B008;
      v459 = _Block_copy(&v547);
      v536 = v447;
      v460 = v459;
      v513 = *(&v549 + 1);

      sub_1AFA9C054(v523, &v552, &unk_1EB633F28, type metadata accessor for EmitterScript, &off_1F255B720, &off_1ED72CA10);

      sub_1AF487F80(v447, v448, v456);

      dispatch_sync(v527, v460);
      _Block_release(v460);

      (*v505)(v511, v528);
      swift_isEscapingClosureAtFileLocation();

      v24 = v529;

      sub_1AF487074(v536, v448, v456);
      v234 = v533;
      v363 = v498;
      goto LABEL_249;
    }

    v527 = *(v540 + 40);
    v450 = swift_allocObject();
    *(v450 + 16) = sub_1AFA9DEBC;
    *(v450 + 24) = v439;

    sub_1AFA9C054(v523, &v552, &unk_1EB633F28, type metadata accessor for EmitterScript, &off_1F255B720, &off_1ED72CA10);

    sub_1AF487F80(v447, v448, v446);
    v451 = qword_1ED730EA0;

    v363 = v498;
    if (v451 != -1)
    {
      swift_once();
    }

    if (qword_1ED731058 != -1)
    {
      swift_once();
    }

    v452 = qword_1ED73B8A0;
    v453 = swift_allocObject();
    *(v453 + 16) = sub_1AFA9EB90;
    *(v453 + 24) = v450;
    v454 = swift_allocObject();
    v454[2] = v452;
    v454[3] = sub_1AF6CC3F0;
    v454[4] = v453;
    *&v554 = sub_1AFA9EC30;
    *(&v554 + 1) = v454;
    *&v552 = MEMORY[0x1E69E9820];
    *(&v552 + 1) = 1107296256;
    *&v553 = sub_1AFCDA044;
    *(&v553 + 1) = &unk_1F255B0A8;
    v455 = _Block_copy(&v552);
    swift_retain_n();

    [v527 addOperationWithBlock:v455];
    _Block_release(v455);

    (*v505)(v511, v528);

    v24 = v529;

LABEL_301:

    sub_1AF487074(v536, v534, v535);
    v234 = v533;
LABEL_249:
    ++v234;
    v539 = (v539 + v516);
    v537 += 24;
    v538 += v363;
    if (v526 == v234)
    {
LABEL_314:
      v227 = 1;
LABEL_315:
      v481 = v520;
      sub_1AF630994(v494, &v604, v617);
      v520 = v481;
      sub_1AF62D29C(v237);
      ecs_stack_allocator_pop_snapshot(v493);
      if (v492)
      {
        os_unfair_lock_unlock(*(v237 + 344));
        os_unfair_lock_unlock(*(v237 + 376));
      }

      v232 = v491 + 1;
      if (v491 + 1 != v488)
      {
        goto LABEL_172;
      }

      sub_1AFA9BF94(v597, &qword_1ED725EA0, &type metadata for QueryResult);

      sub_1AFA9BF94(v597, &qword_1ED725EA0, &type metadata for QueryResult);
      if ((v227 & 1) == 0)
      {
LABEL_319:
        dispatch_group_leave(v541);
      }

LABEL_318:

      sub_1AFA62400(v482);

      goto LABEL_319;
    }
  }

LABEL_324:

  result = sub_1AFDFE518();
  __break(1u);
  return result;
}