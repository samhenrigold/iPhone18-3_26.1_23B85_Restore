uint64_t sub_1A41AFF88()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1A41B0558;
  }

  else
  {
    v2 = sub_1A41B009C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A41B009C(uint64_t a1)
{
  v45 = v1;
  if ((sub_1A524CDC4() & 1) == 0 && sub_1A41AF290(v1[35], v2, v3, v4))
  {
    v40 = v1[45];
    v42 = v1[44];
    v43 = v1[43];
    v5 = v1[42];
    v41 = v1[41];
    v7 = v1[39];
    v6 = v1[40];
    v8 = v1[37];
    v9 = v1[38];
    v10 = v1[35];
    v11 = v1[33];
    v12 = swift_allocObject();
    v13 = *(v7 + 80);
    *(v12 + 16) = v13;
    v14 = *(v7 + 88);
    *(v12 + 24) = v14;
    *(v12 + 32) = v10;
    *(v12 + 40) = v11;
    *(v12 + 48) = v8;
    *(v12 + 56) = v9;
    v15 = *(v1 + 21);
    *(v12 + 64) = *(v1 + 19);
    *(v12 + 80) = v15;
    *(v12 + 96) = *(v1 + 92);
    v1[12] = sub_1A41B6728;
    v1[13] = v12;
    v1[8] = MEMORY[0x1E69E9820];
    v1[9] = 1107296256;
    v1[10] = sub_1A3C2E0D0;
    v1[11] = &block_descriptor_69_1;
    v16 = _Block_copy(v1 + 8);
    swift_unknownObjectRetain();

    v18 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(0, v13, v14, v17);
    v19 = *(v18 - 8);
    (*(v19 + 16))(v1 + 24, v1 + 19, v18);
    sub_1A524BF14();
    v1[31] = MEMORY[0x1E69E7CC0];
    sub_1A4059F40();
    sub_1A3C564D0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v40, v5, v16);
    _Block_release(v16);
    (*(v19 + 8))(v1 + 19, v18);
    (*(v41 + 8))(v5, v6);
    (*(v42 + 8))(v40, v43);

    v20 = v1[46];
    sub_1A41AF658(v1[35], v21, v22, v23);

LABEL_8:

    v39 = v1[1];

    return v39();
  }

  v24 = sub_1A524D264();
  v25 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v25, v24))
  {
    v35 = v1[46];
    v36 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(0, *(v1[39] + 80), *(v1[39] + 88), v26);
    v37 = *(*(v36 - 8) + 8);
    swift_unknownObjectRetain();
    v38 = v25;
    v37(v1 + 19, v36);

    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v27 = v1[35];
  v28 = v1[33];
  swift_unknownObjectRetain();
  v25;
  v29 = swift_slowAlloc();
  v44 = swift_slowAlloc();
  *v29 = 134349314;
  *(v29 + 4) = v27;
  *(v29 + 12) = 2082;
  v30 = [v28 uuid];
  result = swift_unknownObjectRelease();
  if (v30)
  {
    v32 = sub_1A524C674();
    v34 = v33;

    sub_1A3C2EF94(v32, v34, &v44);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41B0558(uint64_t a1)
{
  v34 = v1;
  if (sub_1A524CDC4())
  {
    v2 = *(v1 + 368);

LABEL_7:

    v30 = *(v1 + 8);

    return v30();
  }

  v3 = sub_1A524D264();
  v4 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v4, v3))
  {
    v16 = *(v1 + 384);
    v17 = *(v1 + 360);
    v18 = *(v1 + 352);
    v32 = *(v1 + 344);
    v20 = *(v1 + 328);
    v19 = *(v1 + 336);
    v21 = *(v1 + 320);
    v22 = *(v1 + 296);
    v23 = *(v1 + 304);
    v24 = swift_allocObject();
    v24[2] = v22;
    v24[3] = v23;
    v24[4] = v16;
    *(v1 + 48) = sub_1A41B65D4;
    *(v1 + 56) = v24;
    *(v1 + 16) = MEMORY[0x1E69E9820];
    *(v1 + 24) = 1107296256;
    *(v1 + 32) = sub_1A3C2E0D0;
    *(v1 + 40) = &block_descriptor_62;
    v25 = _Block_copy((v1 + 16));

    v26 = v16;
    sub_1A524BF14();
    *(v1 + 240) = MEMORY[0x1E69E7CC0];
    sub_1A4059F40();
    sub_1A3C564D0(0, &qword_1EB12B1C0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E62F8]);
    sub_1A3C5DE88();
    sub_1A524E224();
    MEMORY[0x1A5908800](0, v17, v19, v25);
    _Block_release(v25);

    (*(v20 + 8))(v19, v21);
    (*(v18 + 8))(v17, v32);

    v2 = *(v1 + 368);
    sub_1A41AF658(*(v1 + 280), v27, v28, v29);
    goto LABEL_7;
  }

  v5 = *(v1 + 384);
  v6 = *(v1 + 280);
  v7 = *(v1 + 264);
  swift_unknownObjectRetain();
  v4;
  v8 = v5;
  v9 = swift_slowAlloc();
  swift_slowAlloc();
  v33 = swift_slowAlloc();
  *v9 = 134349570;
  *(v9 + 4) = v6;
  *(v9 + 12) = 2082;
  v10 = [v7 uuid];
  v11 = *(v1 + 384);
  if (v10)
  {
    v12 = v10;

    swift_unknownObjectRelease();
    v13 = sub_1A524C674();
    v15 = v14;

    sub_1A3C2EF94(v13, v15, &v33);
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_1A41B0958(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a1;
  v12 = OneUpSharePlaySessionMediaProvider.requestImageData(for:options:resultHandler:)(a3, a4, sub_1A41B5C04, v9);
  swift_unknownObjectRelease();

  return v12;
}

void sub_1A41B0A14(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = a4;
  if (a2 >> 60 != 15)
  {
    v11 = sub_1A5240E84();
    if (!v10)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v11 = 0;
  if (a4)
  {
LABEL_5:
    v10 = sub_1A524C634();
  }

LABEL_6:
  if (a6)
  {
    v12 = sub_1A524C3D4();
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;
  (*(a7 + 16))(a7, v11, v10, a5);
}

uint64_t sub_1A41B0B0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a8;
  v8[6] = v14;
  v8[3] = a6;
  v8[4] = a7;
  v8[2] = a5;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  v8[7] = swift_task_alloc();
  v11 = swift_task_alloc();
  v8[8] = v11;
  *v11 = v8;
  v11[1] = sub_1A41B0C2C;

  return sub_1A4348308(a5, a6);
}

uint64_t sub_1A41B0C2C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 72) = a1;
  *(v3 + 80) = v1;

  if (v1)
  {
    v4 = sub_1A41B0FF4;
  }

  else
  {
    v4 = sub_1A41B0D40;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A41B0D40(uint64_t a1)
{
  v31 = v1;
  if ((sub_1A524CDC4() & 1) == 0 && sub_1A41AF290(*(v1 + 24), v2, v3, v4))
  {
    v5 = *(v1 + 72);
    v7 = *(v1 + 48);
    v6 = *(v1 + 56);
    v8 = *(v1 + 40);
    v9 = *(v1 + 16);
    v10 = *(v1 + 24);
    v11 = sub_1A524CCB4();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    sub_1A524CC54();
    swift_unknownObjectRetain();

    v12 = v5;
    v13 = sub_1A524CC44();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v10;
    v14[5] = v9;
    v14[6] = v8;
    v14[7] = v7;
    v14[8] = v12;
    sub_1A3D4D930(0, 0, v6, &unk_1A5322538, v14);

    sub_1A41AF658(*(v1 + 24), v16, v17, v18);
LABEL_8:

    v29 = *(v1 + 8);

    return v29();
  }

  v19 = sub_1A524D264();
  v20 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v20, v19))
  {

    goto LABEL_8;
  }

  v22 = *(v1 + 16);
  v21 = *(v1 + 24);
  swift_unknownObjectRetain();
  v20;
  v23 = swift_slowAlloc();
  v30 = swift_slowAlloc();
  *v23 = 134349314;
  *(v23 + 4) = v21;
  *(v23 + 12) = 2082;
  v24 = [v22 uuid];
  result = swift_unknownObjectRelease();
  if (v24)
  {
    v26 = sub_1A524C674();
    v28 = v27;

    sub_1A3C2EF94(v26, v28, &v30);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41B0FF4(uint64_t a1)
{
  if (sub_1A524CDC4())
  {
  }

  else
  {
    v2 = *(v1 + 80);
    v4 = *(v1 + 48);
    v3 = *(v1 + 56);
    v5 = *(v1 + 40);
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = sub_1A524CCB4();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_1A524CC54();
    swift_unknownObjectRetain();

    v9 = v2;
    v10 = sub_1A524CC44();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v7;
    v11[5] = v6;
    v11[6] = v2;
    v11[7] = v5;
    v11[8] = v4;
    sub_1A3D4D930(0, 0, v3, &unk_1A5322528, v11);

    sub_1A41AF658(*(v1 + 24), v13, v14, v15);
  }

  v16 = *(v1 + 8);

  return v16();
}

uint64_t sub_1A41B116C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  sub_1A524CC54();
  v8[7] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41B120C, v10, v9);
}

uint64_t sub_1A41B120C()
{
  v13 = v0;

  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = *(v0 + 16);
    v4 = *(v0 + 24);
    v2;
    swift_unknownObjectRetain();
    v5 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v5 = 134349314;
    *(v5 + 4) = v3;
    *(v5 + 12) = 2082;
    v6 = [v4 uuid];
    result = swift_unknownObjectRelease();
    if (v6)
    {
      v8 = sub_1A524C674();
      v10 = v9;

      sub_1A3C2EF94(v8, v10, &v12);
    }

    __break(1u);
  }

  else
  {
    (*(v0 + 32))(*(v0 + 48), 0);
    v11 = *(v0 + 8);

    return v11();
  }

  return result;
}

uint64_t sub_1A41B13B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[24] = a7;
  v8[25] = a8;
  v8[22] = a5;
  v8[23] = a6;
  v8[21] = a4;
  sub_1A524CC54();
  v8[26] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41B1458, v10, v9);
}

uint64_t sub_1A41B1458()
{
  v25 = v0;

  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v4 = v0[22];
    v3 = v0[23];
    v5 = v0[21];
    v2;
    swift_unknownObjectRetain();
    v6 = v3;
    v7 = swift_slowAlloc();
    swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v7 = 134349570;
    *(v7 + 4) = v5;
    *(v7 + 12) = 2082;
    v8 = [v4 uuid];
    v9 = v0[23];
    if (v8)
    {
      v10 = v8;

      swift_unknownObjectRelease();
      v11 = sub_1A524C674();
      v13 = v12;

      sub_1A3C2EF94(v11, v13, &v24);
    }

    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    v14 = v0[24];
    v15 = MEMORY[0x1E69E69B8];
    sub_1A3C5D688(0, &qword_1EB1261A0, &qword_1EB126530, MEMORY[0x1E69E69B8]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    v0[18] = sub_1A524C674();
    v0[19] = v17;
    sub_1A524E384();
    swift_getErrorValue();
    v18 = v0[15];
    v19 = v0[16];
    *(inited + 96) = v19;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
    (*(*(v19 - 8) + 16))(boxed_opaque_existential_1, v18, v19);
    v21 = sub_1A3DAED90(inited);
    swift_setDeallocating();
    sub_1A41B6C90(inited + 32, &qword_1EB126530, v15);
    v14(0, v21);

    v22 = v0[1];

    return v22();
  }

  return result;
}

uint64_t sub_1A41B17A0(void *a1, int a2, void *a3, void *a4, void *aBlock)
{
  v8 = _Block_copy(aBlock);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  swift_unknownObjectRetain();
  v10 = a4;
  v11 = a1;
  v12 = sub_1A41B53C8(a3, sub_1A41B786C, v9);
  swift_unknownObjectRelease();

  return v12;
}

uint64_t sub_1A41B1864(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 64) = v16;
  *(v10 + 72) = v17;
  *(v10 + 48) = a1;
  *(v10 + 56) = a2;
  *(v10 + 32) = a9;
  *(v10 + 40) = a10;
  *(v10 + 16) = a7;
  *(v10 + 24) = a8;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  *(v10 + 80) = swift_task_alloc();
  v13 = swift_task_alloc();
  *(v10 + 88) = v13;
  *v13 = v10;
  v13[1] = sub_1A41B1988;

  return sub_1A4351188(a7, a8);
}

uint64_t sub_1A41B1988(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 96) = a1;
  *(v3 + 104) = v1;

  if (v1)
  {
    v4 = sub_1A41B1D48;
  }

  else
  {
    v4 = sub_1A41B1A9C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A41B1A9C(uint64_t a1)
{
  v35 = v1;
  if ((sub_1A524CDC4() & 1) == 0 && sub_1A41AF290(v1[3], v2, v3, v4))
  {
    v5 = v1[12];
    v7 = v1[9];
    v6 = v1[10];
    v8 = v1[8];
    v10 = v1[6];
    v9 = v1[7];
    v11 = v1[5];
    v12 = v1[2];
    v13 = v1[3];
    v14 = sub_1A524CCB4();
    (*(*(v14 - 8) + 56))(v6, 1, 1, v14);
    sub_1A524CC54();
    swift_unknownObjectRetain();

    v15 = sub_1A524CC44();
    v16 = swift_allocObject();
    v17 = MEMORY[0x1E69E85E0];
    v16[2] = v15;
    v16[3] = v17;
    v16[4] = v11;
    v16[5] = v5;
    v16[6] = v10;
    v16[7] = v9;
    v16[8] = v13;
    v16[9] = v12;
    v16[10] = v8;
    v16[11] = v7;
    sub_1A3D4D930(0, 0, v6, &unk_1A5322508, v16);
    v18 = v1[3];

    sub_1A41AF658(v18, v19, v20, v21);
LABEL_7:

    v33 = v1[1];

    return v33();
  }

  v22 = sub_1A524D264();
  v23 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v23, v22))
  {
    goto LABEL_7;
  }

  v25 = v1[2];
  v24 = v1[3];
  swift_unknownObjectRetain();
  v26 = v23;
  v27 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  *v27 = 134349314;
  *(v27 + 4) = v24;
  *(v27 + 12) = 2082;
  v28 = [v25 uuid];
  result = swift_unknownObjectRelease();
  if (v28)
  {
    v30 = sub_1A524C674();
    v32 = v31;

    sub_1A3C2EF94(v30, v32, &v34);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41B1D48(uint64_t a1)
{
  if (sub_1A524CDC4())
  {
  }

  else
  {
    v2 = *(v1 + 104);
    v4 = *(v1 + 72);
    v3 = *(v1 + 80);
    v5 = *(v1 + 64);
    v6 = *(v1 + 16);
    v7 = *(v1 + 24);
    v8 = sub_1A524CCB4();
    (*(*(v8 - 8) + 56))(v3, 1, 1, v8);
    sub_1A524CC54();
    swift_unknownObjectRetain();

    v9 = v2;
    v10 = sub_1A524CC44();
    v11 = swift_allocObject();
    v12 = MEMORY[0x1E69E85E0];
    v11[2] = v10;
    v11[3] = v12;
    v11[4] = v7;
    v11[5] = v6;
    v11[6] = v2;
    v11[7] = v5;
    v11[8] = v4;
    sub_1A3D4D930(0, 0, v3, &unk_1A53224F8, v11);

    v13 = *(v1 + 24);

    sub_1A41AF658(v13, v14, v15, v16);
  }

  v17 = *(v1 + 8);

  return v17();
}

uint64_t sub_1A41B1EC4(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  *(v10 + 112) = a10;
  *(v10 + 120) = v15;
  *(v10 + 96) = a8;
  *(v10 + 104) = a9;
  *(v10 + 80) = a1;
  *(v10 + 88) = a2;
  *(v10 + 64) = a6;
  *(v10 + 72) = a7;
  sub_1A524CC54();
  *(v10 + 128) = sub_1A524CC44();
  v12 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41B1F70, v12, v11);
}

uint64_t sub_1A41B1F70()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(v0 + 64);
  v12 = *(v0 + 104);

  v6 = objc_opt_self();
  sub_1A5240E64();
  v7 = sub_1A524CA14();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v12;
  *(v8 + 40) = v1;
  *(v0 + 48) = sub_1A41B5F60;
  *(v0 + 56) = v8;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1A4044608;
  *(v0 + 40) = &block_descriptor_117;
  v9 = _Block_copy((v0 + 16));
  swift_unknownObjectRetain();

  [v6 requestLivePhotoWithResourceFileURLs:v7 placeholderImage:0 targetSize:v5 contentMode:1 prefersHDR:v9 resultHandler:{v4, v3}];
  _Block_release(v9);

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A41B210C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[28] = a7;
  v8[29] = a8;
  v8[26] = a5;
  v8[27] = a6;
  v8[25] = a4;
  sub_1A524CC54();
  v8[30] = sub_1A524CC44();
  v10 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41B21AC, v10, v9);
}

uint64_t sub_1A41B21AC()
{
  v26 = v0;

  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v4 = v0[26];
    v3 = v0[27];
    v5 = v0[25];
    v6 = v2;
    swift_unknownObjectRetain();
    v7 = v3;
    v8 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v8 = 134349570;
    *(v8 + 4) = v5;
    *(v8 + 12) = 2082;
    v9 = [v4 uuid];
    v10 = v0[27];
    if (v9)
    {
      v11 = v9;

      swift_unknownObjectRelease();
      v12 = sub_1A524C674();
      v14 = v13;

      sub_1A3C2EF94(v12, v14, &v25);
    }

    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    v15 = v0[28];
    v16 = MEMORY[0x1E69E69B8];
    sub_1A3C5D688(0, &qword_1EB1261A0, &qword_1EB126530, MEMORY[0x1E69E69B8]);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1A52F8E10;
    v0[21] = sub_1A524C674();
    v0[22] = v18;
    sub_1A524E384();
    swift_getErrorValue();
    v19 = v0[15];
    v20 = v0[16];
    *(inited + 96) = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v19, v20);
    v22 = sub_1A3DAED90(inited);
    swift_setDeallocating();
    sub_1A41B6C90(inited + 32, &qword_1EB126530, v16);
    v15(0, v22);

    v23 = v0[1];

    return v23();
  }

  return result;
}

uint64_t sub_1A41B24D0(void *a1, int a2, void *a3, uint64_t a4, void *a5, void *aBlock, double a7, double a8)
{
  v14 = _Block_copy(aBlock);
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  swift_unknownObjectRetain();
  v16 = a5;
  v17 = a1;
  v18 = sub_1A41B56E8(a3, a4, sub_1A41B5BE8, v15, a7, a8);
  swift_unknownObjectRelease();

  return v18;
}

void sub_1A41B25AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v5 = sub_1A524C3D4();
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;
  (*(a3 + 16))(a3, a1);
}

Swift::Void __swiftcall OneUpSharePlaySessionMediaProvider.cancelImageRequest(_:)(Swift::Int a1)
{
  v3 = sub_1A524D264();
  v4 = *sub_1A486DB9C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = v4;
    v6 = swift_slowAlloc();
    *v6 = 134349056;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_1A3C1C000, v5, v3, "MediaProvider: [%{public}ld] Cancelling request", v6, 0xCu);
    MEMORY[0x1A590EEC0](v6, -1, -1);
  }

  v7 = *(v1 + qword_1EB134210);

  v8 = v7[2];
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request(255, *(*v7 + 80), *(*v7 + 88), v9);
  sub_1A524C454();
  sub_1A3C564D0(0, &qword_1EB140920, MEMORY[0x1E695BF10], MEMORY[0x1E69E6720]);
  v10 = (*(*v8 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v8 + v10));
  sub_1A41B5C0C(v11, &v12);
  os_unfair_lock_unlock((v8 + v10));
  if (v12)
  {

    sub_1A5247884();
  }
}

void sub_1A41B2840(void *a1, uint64_t a2, Swift::Int a3)
{
  v4 = a1;
  OneUpSharePlaySessionMediaProvider.cancelImageRequest(_:)(a3);
}

id OneUpSharePlaySessionMediaProvider.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OneUpSharePlaySessionMediaProvider.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double sub_1A41B297C()
{

  return result;
}

void sub_1A41B29C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v32 = a3;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  v8 = v7;
  v9 = *(v7 - 8);
  v31 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v29 - v10;
  v30 = &v29 - v10;
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  v13 = v12;
  v14 = *(v12 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v17 = &v29 - v16;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v29 - v19;
  v21 = sub_1A524CCB4();
  (*(*(v21 - 8) + 56))(v20, 1, 1, v21);
  (*(v14 + 16))(v17, a2, v13);
  v22 = v8;
  (*(v9 + 16))(v11, a1, v8);
  v23 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v24 = (v15 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
  v25 = (*(v9 + 80) + v24 + 24) & ~*(v9 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v26 + 24) = 0;
  (*(v14 + 32))(v26 + v23, v17, v13);
  v27 = (v26 + v24);
  v28 = v33;
  *v27 = v32;
  v27[1] = v28;
  v27[2] = v34;
  (*(v9 + 32))(v26 + v25, v30, v22);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41B2D18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[12] = a7;
  v8[13] = a8;
  v8[10] = a5;
  v8[11] = a6;
  v8[9] = a4;
  sub_1A41B6A28(0, &qword_1EB1342E8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E8780]);
  v8[14] = v9;
  v8[15] = *(v9 - 8);
  v8[16] = swift_task_alloc();
  sub_1A41B6A28(0, &unk_1EB1342F0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87B8]);
  v8[17] = v10;
  v8[18] = *(v10 - 8);
  v8[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A41B2E84, 0, 0);
}

uint64_t sub_1A41B2E84()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  sub_1A524CD24();
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1A41B2F6C;
  v2 = *(v0 + 136);

  return MEMORY[0x1EEE6DB90](v0 + 16, 0, 0, v2, v0 + 48);
}

uint64_t sub_1A41B2F6C()
{

  if (v0)
  {
    v1 = sub_1A41B32D4;
  }

  else
  {
    v1 = sub_1A41B307C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A41B307C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_1A524D264();
    v3 = sub_1A486DB9C();
    if (os_log_type_enabled(*v3, v2))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v7 = *(v0 + 128);
    v6 = *(v0 + 136);
    v8 = *(v0 + 112);
    v9 = *(v0 + 120);
    *(v0 + 32) = v1;
    *(v0 + 40) = 0;
    sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
    sub_1A524CE74();
    (*(v9 + 8))(v7, v8);
    (*(v5 + 8))(v4, v6);
  }

  else
  {
    (*(*(v0 + 144) + 8))(*(v0 + 152), *(v0 + 136));
  }

  *(v0 + 64) = 0;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  sub_1A524CE84();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_1A41B32D4()
{
  (*(v0[18] + 8))(v0[19], v0[17]);
  v1 = v0[6];
  v2 = sub_1A524D264();
  v3 = sub_1A486DB9C();
  if (os_log_type_enabled(*v3, v2))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v0[7] = v1;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  sub_1A524CE84();

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A41B3514(uint64_t a1)
{
  sub_1A41B6A28(0, &qword_1EB1342D8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E8798]);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9[-v4];
  v6 = *(v1 + 2);
  v10 = a1;
  v11 = *v1;
  v12 = v6;
  (*(v7 + 104))(v5, *MEMORY[0x1E69E8790]);
  return sub_1A524CEC4();
}

uint64_t sub_1A41B364C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[28] = a5;
  v6[29] = a6;
  v6[27] = a4;
  sub_1A41B6A28(0, &qword_1EB1342E8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E8780]);
  v6[30] = v7;
  v6[31] = *(v7 - 8);
  v6[32] = swift_task_alloc();
  sub_1A41B6A28(0, &unk_1EB1342F0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87B8]);
  v6[33] = v8;
  v6[34] = *(v8 - 8);
  v6[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A41B37B4, 0, 0);
}

uint64_t sub_1A41B37B4()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  sub_1A524CD24();
  v1 = swift_task_alloc();
  *(v0 + 288) = v1;
  *v1 = v0;
  v1[1] = sub_1A41B389C;
  v2 = *(v0 + 264);

  return MEMORY[0x1EEE6DB90](v0 + 160, 0, 0, v2, v0 + 192);
}

uint64_t sub_1A41B389C()
{

  if (v0)
  {
    v1 = sub_1A41B3E94;
  }

  else
  {
    v1 = sub_1A41B39AC;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A41B39AC()
{
  if (*(v0 + 160))
  {
    [*(v0 + 160) size];
    sub_1A524DA74();
  }

  (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  *(v0 + 208) = 0;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  sub_1A524CE84();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A41B3E94()
{
  v12 = v0;
  (*(v0[34] + 8))(v0[35], v0[33]);
  v1 = v0[24];
  v2 = sub_1A524D264();
  v3 = *sub_1A486DB9C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[28];
    v5 = v4[1];
    v6 = v4[2];
    sub_1A41B7270(v4, (v0 + 2));
    v7 = v3;
    v8 = swift_slowAlloc();
    swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v8 = 134349570;
    *(v8 + 4) = *v4;
    sub_1A41B72A8(v4);
    *(v8 + 12) = 2082;
    sub_1A3C2EF94(v5, v6, &v11);
  }

  v0[25] = v1;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  sub_1A524CE84();

  v9 = v0[1];

  return v9();
}

void sub_1A41B40F4(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  v32 = a3;
  v33 = a5;
  v30 = a2;
  v31 = a4;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  v7 = v6;
  v28 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v28 - v9;
  v29 = &v28 - v9;
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  v12 = v11;
  v13 = *(v11 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v16 = &v28 - v15;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v28 - v18;
  v20 = sub_1A524CCB4();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  (*(v13 + 16))(v16, v30, v12);
  (*(v8 + 16))(v10, a1, v7);
  v21 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v22 = (v14 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = (*(v8 + 80) + v22 + 48) & ~*(v8 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  *(v24 + 24) = 0;
  (*(v13 + 32))(v24 + v21, v16, v12);
  v25 = (v24 + v22);
  v26 = v32;
  v27 = v32[1];
  *v25 = *v32;
  v25[1] = v27;
  v25[2] = v26[2];
  (*(v8 + 32))(v24 + v23, v29, v28);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41B442C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a5;
  v6[23] = a6;
  v6[21] = a4;
  sub_1A41B6A28(0, &qword_1EB1342E8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E8780]);
  v6[24] = v7;
  v6[25] = *(v7 - 8);
  v6[26] = swift_task_alloc();
  sub_1A41B6A28(0, &unk_1EB1342F0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87B8]);
  v6[27] = v8;
  v6[28] = *(v8 - 8);
  v6[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A41B4594, 0, 0);
}

uint64_t sub_1A41B4594()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  sub_1A524CD24();
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_1A41B467C;
  v2 = *(v0 + 216);

  return MEMORY[0x1EEE6DB90](v0 + 112, 0, 0, v2, v0 + 144);
}

uint64_t sub_1A41B467C()
{

  if (v0)
  {
    v1 = sub_1A41B4B3C;
  }

  else
  {
    v1 = sub_1A41B478C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1A41B478C()
{
  if (*(v0 + 112))
  {
    [*(v0 + 112) size];
    sub_1A524DA74();
  }

  (*(*(v0 + 224) + 8))(*(v0 + 232), *(v0 + 216));
  *(v0 + 160) = 0;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  sub_1A524CE84();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A41B4B3C()
{
  v12 = v0;
  (*(v0[28] + 8))(v0[29], v0[27]);
  v1 = v0[18];
  v2 = sub_1A524D264();
  v3 = *sub_1A486DB9C();
  if (os_log_type_enabled(v3, v2))
  {
    v4 = v0[22];
    v5 = v4[1];
    v6 = v4[2];
    sub_1A41B7644(v4, (v0 + 2));
    v7 = v3;
    v8 = swift_slowAlloc();
    swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v8 = 134349570;
    *(v8 + 4) = *v4;
    sub_1A41B767C(v4);
    *(v8 + 12) = 2082;
    sub_1A3C2EF94(v5, v6, &v11);
  }

  v0[19] = v1;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  sub_1A524CE84();

  v9 = v0[1];

  return v9();
}

uint64_t sub_1A41B4D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1A41B6A28(0, &qword_1EB1342D8, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E8798]);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v4[1];
  v14[0] = *v4;
  v14[1] = v8;
  v14[2] = v4[2];
  v12 = a1;
  v13 = v14;
  (*(v9 + 104))(&v11[-v7], *MEMORY[0x1E69E8790]);
  return sub_1A524CEC4();
}

id sub_1A41B4ECC(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = qword_1EB134210;
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker(0, *((*MEMORY[0x1E69E7D40] & *v1) + 0x50), *((*MEMORY[0x1E69E7D40] & *v1) + 0x58), v5);
  *(v1 + v4) = sub_1A41ACC88();
  *(v1 + qword_1EB134218) = *(a1 + *(*a1 + 896));
  v7.receiver = v1;
  v7.super_class = ObjectType;

  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1A41B4FA8(void *a1, void *a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v41 = a3;
  v42 = a2;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v40 - v13;
  v15 = qword_1EB134210;

  v20 = sub_1A41ACDEC(v16, v17, v18, v19);

  v21 = sub_1A524D264();
  v22 = *sub_1A486DB9C();
  if (os_log_type_enabled(v22, v21))
  {
    v40[1] = a4;
    v40[2] = v15;
    v40[0] = v22;
    swift_unknownObjectRetain();
    v23 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    *v23 = 134349826;
    *(v23 + 4) = v20;
    *(v23 + 12) = 2082;
    v24 = [a1 uuid];
    result = swift_unknownObjectRelease();
    if (v24)
    {
      v26 = sub_1A524C674();
      v28 = v27;

      sub_1A3C2EF94(v26, v28, &v43);
    }

    __break(1u);
  }

  else
  {
    v29 = sub_1A524CCB4();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    v30 = *(v7 + qword_1EB134218);
    v31 = *(v7 + v15);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    v34 = v41;
    v33 = v42;
    *(v32 + 32) = v42;
    *(v32 + 40) = a1;
    *(v32 + 48) = v20;
    *(v32 + 56) = a5;
    *(v32 + 64) = a6;
    *(v32 + 72) = v30;
    *(v32 + 80) = v31;
    *(v32 + 88) = v34;
    *(v32 + 96) = a4;
    v35 = v33;

    swift_unknownObjectRetain();

    v36 = sub_1A3D4D930(0, 0, v14, &unk_1A5322550, v32);
    v37 = sub_1A3EE1368(v36, MEMORY[0x1E69E7CA8] + 8);

    sub_1A41AF744(v20, v37, v38, v39);

    return v20;
  }

  return result;
}

uint64_t sub_1A41B52F8()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41AFC34(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A41B53C8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v33 = a2;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v32 - v8;
  v10 = qword_1EB134210;

  v15 = sub_1A41ACDEC(v11, v12, v13, v14);

  v16 = sub_1A524D264();
  v17 = *sub_1A486DB9C();
  if (os_log_type_enabled(v17, v16))
  {
    v32[2] = v10;
    v32[3] = a3;
    v32[1] = v17;
    swift_unknownObjectRetain();
    v18 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    *v18 = 134349314;
    *(v18 + 4) = v15;
    *(v18 + 12) = 2082;
    v19 = [a1 uuid];
    result = swift_unknownObjectRelease();
    if (v19)
    {
      v21 = sub_1A524C674();
      v23 = v22;

      sub_1A3C2EF94(v21, v23, &v34);
    }

    __break(1u);
  }

  else
  {
    v24 = sub_1A524CCB4();
    (*(*(v24 - 8) + 56))(v9, 1, 1, v24);
    v25 = *(v4 + qword_1EB134218);
    v26 = *(v4 + v10);
    v27 = swift_allocObject();
    v27[2] = 0;
    v27[3] = 0;
    v27[4] = v25;
    v27[5] = a1;
    v27[6] = v15;
    v27[7] = v26;
    v27[8] = v33;
    v27[9] = a3;
    swift_unknownObjectRetain();

    v28 = sub_1A3D4D930(0, 0, v9, &unk_1A5322518, v27);
    v29 = sub_1A3EE1368(v28, MEMORY[0x1E69E7CA8] + 8);

    sub_1A41AF744(v15, v29, v30, v31);

    return v15;
  }

  return result;
}

uint64_t sub_1A41B56E8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  v7 = v6;
  v39 = a2;
  v40 = a3;
  sub_1A3C564D0(0, &qword_1EB12B270, MEMORY[0x1E69E85F0], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = v38 - v13;
  v15 = qword_1EB134210;

  v20 = sub_1A41ACDEC(v16, v17, v18, v19);

  v21 = sub_1A524D264();
  v22 = *sub_1A486DB9C();
  if (os_log_type_enabled(v22, v21))
  {
    v38[1] = v15;
    v38[2] = a4;
    v38[0] = v22;
    swift_unknownObjectRetain();
    v23 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    *v23 = 134349826;
    *(v23 + 4) = v20;
    *(v23 + 12) = 2082;
    v24 = [a1 uuid];
    result = swift_unknownObjectRelease();
    if (v24)
    {
      v26 = sub_1A524C674();
      v28 = v27;

      sub_1A3C2EF94(v26, v28, &v41);
    }

    __break(1u);
  }

  else
  {
    v29 = sub_1A524CCB4();
    (*(*(v29 - 8) + 56))(v14, 1, 1, v29);
    v30 = *(v7 + qword_1EB134218);
    v31 = *(v7 + v15);
    v32 = swift_allocObject();
    *(v32 + 16) = 0;
    *(v32 + 24) = 0;
    *(v32 + 32) = v30;
    *(v32 + 40) = a1;
    *(v32 + 48) = v20;
    *(v32 + 56) = v31;
    v33 = v40;
    *(v32 + 64) = v39;
    *(v32 + 72) = a5;
    *(v32 + 80) = a6;
    *(v32 + 88) = v33;
    *(v32 + 96) = a4;
    swift_unknownObjectRetain();

    v34 = sub_1A3D4D930(0, 0, v14, &unk_1A53224E8, v32);
    v35 = sub_1A3EE1368(v34, MEMORY[0x1E69E7CA8] + 8);

    sub_1A41AF744(v20, v35, v36, v37);

    return v20;
  }

  return result;
}

uint64_t sub_1A41B5B6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void *sub_1A41B5C0C@<X0>(uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request(0, *(v3 + 16), *(v3 + 24), a2);
  result = sub_1A524C484();
  v6 = 0;
  if (v7 != 1)
  {
    sub_1A524C454();
    result = sub_1A524C494();
    v6 = v7;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1A41B5CE8()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 8);
  v7 = v0[9];
  v8 = v0[10];
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A3CA8098;

  return sub_1A41B1864(v7, v8, v9, v10, v11, v2, v3, v4, v5, v6);
}

uint64_t sub_1A41B5DCC()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41B210C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A41B5E88()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = v0[6];
  v5 = v0[7];
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = *(v0 + 10);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A3CA8098;

  return sub_1A41B1EC4(v4, v5, v9, v10, v11, v2, v3, v6, v7, v8);
}

uint64_t sub_1A41B5F60(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  v8 = sub_1A524D264();
  v9 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v9, v8))
  {
    return v7(a1, a2);
  }

  v17 = a2;
  v10 = v9;
  swift_unknownObjectRetain();
  v11 = swift_slowAlloc();
  v18 = swift_slowAlloc();
  *v11 = 134349314;
  *(v11 + 4) = v6;
  *(v11 + 12) = 2082;
  v12 = [v5 uuid];
  result = swift_unknownObjectRelease();
  if (v12)
  {
    v14 = sub_1A524C674();
    v16 = v15;

    sub_1A3C2EF94(v14, v16, &v18);
  }

  __break(1u);
  return result;
}

void sub_1A41B60E8(uint64_t a2@<X3>, BOOL *a3@<X8>)
{
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request(0, *(v3 + 16), *(v3 + 24), a2);
  sub_1A524C484();
  if (v5 != 1)
  {
    sub_1A41B617C(v5);
  }

  *a3 = v5 != 1;
}

double sub_1A41B617C(uint64_t a1)
{
  if (a1 != 1)
  {
  }

  return result;
}

uint64_t sub_1A41B618C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request(255, *(v4 + 16), *(v4 + 24), a4);
  sub_1A524C454();
  return sub_1A524C494();
}

uint64_t sub_1A41B6210()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41B0B0C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A41B6324()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41B13B8(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A41B63E0()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41B116C(v7, v8, v9, v2, v3, v4, v5, v6);
}

uint64_t sub_1A41B649C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  sub_1A3CB69F0(0, a2, a3, a4, a5);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A41B64F8(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request(0, *(v4 + 16), *(v4 + 24), a4);
  sub_1A524C484();
  if (v6 == 1)
  {
    return sub_1A5247884();
  }

  sub_1A41B617C(v6);
  sub_1A524C454();

  return sub_1A524C494();
}

double sub_1A41B65D4()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E69B8];
  sub_1A3C5D688(0, &qword_1EB1261A0, &qword_1EB126530, MEMORY[0x1E69E69B8]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  v8 = sub_1A524C674();
  v9 = v4;
  sub_1A524E384();
  swift_getErrorValue();
  *(inited + 96) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v8, v9);
  v6 = sub_1A3DAED90(inited);
  swift_setDeallocating();
  sub_1A41B6C90(inited + 32, &qword_1EB126530, v2);
  v1(0, 0xF000000000000000, 0, 0, 0, v6);

  return result;
}

uint64_t sub_1A41B6728()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[6];
  v4 = sub_1A524D264();
  v5 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v5, v4))
  {
    return v3(v0[8], v0[9], v0[10], v0[11], 0, 0);
  }

  v6 = v5;
  swift_unknownObjectRetain();
  v7 = swift_slowAlloc();
  v13 = swift_slowAlloc();
  *v7 = 134349314;
  *(v7 + 4) = v2;
  *(v7 + 12) = 2082;
  v8 = [v1 uuid];
  result = swift_unknownObjectRelease();
  if (v8)
  {
    v10 = sub_1A524C674();
    v12 = v11;

    sub_1A3C2EF94(v10, v12, &v13);
  }

  __break(1u);
  return result;
}

uint64_t sub_1A41B68AC@<X0>(uint64_t a1@<X3>, uint64_t *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = qword_1EB134200++;
  type metadata accessor for OneUpSharePlaySessionMediaProvider.RequestTracker.Request(255, v4, v5, a1);
  sub_1A524C454();
  result = sub_1A524C494();
  *a2 = v6;
  return result;
}

uint64_t sub_1A41B6944()
{
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = v0[7];
  v6 = v0[8];
  v7 = *(v0 + 9);
  v8 = *(v0 + 10);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1A3CA8098;

  return sub_1A41ACEE0(v5, v6, v9, v10, v11, v2, v3, v4, v7, v8);
}

void sub_1A41B6A28(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v8 = sub_1A3C34400(255, &qword_1EB126160, MEMORY[0x1E69E7280]);
    v9 = a4(a1, a3, v8, MEMORY[0x1E69E7288]);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroy_58Tm()
{

  return swift_deallocObject();
}

double sub_1A41B6AE8()
{
  v1 = *(v0 + 16);
  v2 = MEMORY[0x1E69E69B8];
  sub_1A3C5D688(0, &qword_1EB1261A0, &qword_1EB126530, MEMORY[0x1E69E69B8]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  v8 = sub_1A524C674();
  v9 = v4;
  sub_1A524E384();
  swift_getErrorValue();
  *(inited + 96) = v9;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 72));
  (*(*(v9 - 8) + 16))(boxed_opaque_existential_1, v8, v9);
  v6 = sub_1A3DAED90(inited);
  swift_setDeallocating();
  sub_1A41B6C90(inited + 32, &qword_1EB126530, v2);
  v1(0, v6);

  return result;
}

void sub_1A41B6C2C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A41B6C90(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  sub_1A41B6C2C(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_1A41B6CEC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v19 = *(v0 + 56);
  v6 = MEMORY[0x1E69E6158];
  sub_1A3C5D688(0, &qword_1EB1261F0, &qword_1EB126F70, MEMORY[0x1E69E6158]);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A52F8E10;
  *(inited + 32) = sub_1A524C674();
  *(inited + 40) = v8;
  *(inited + 72) = MEMORY[0x1E69E6370];
  *(inited + 48) = v2;
  v9 = sub_1A3C5D7A8(inited);
  swift_setDeallocating();
  sub_1A41B6C90(inited + 32, &qword_1EB126F70, v6);
  v10 = sub_1A524D264();
  v11 = *sub_1A486DB9C();
  if (!os_log_type_enabled(v11, v10))
  {
    sub_1A41AF384(v9);
  }

  v12 = v1;
  v13 = v11;
  swift_unknownObjectRetain();
  v14 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  *v14 = 134349570;
  *(v14 + 4) = v3;
  *(v14 + 12) = 2082;
  v15 = [v4 uuid];
  swift_unknownObjectRelease();
  if (v15)
  {
    v16 = sub_1A524C674();
    v18 = v17;

    sub_1A3C2EF94(v16, v18, &v20);
  }

  __break(1u);
}

void sub_1A41B6F54(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    v5 = sub_1A524E7A4();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A41B6FD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A41B7020(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1A41B70EC()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  v6 = (v4 + *(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41B364C(v7, v8, v9, v0 + v3, v0 + v4, v0 + v6);
}

uint64_t objectdestroy_130Tm()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  v2 = v1;
  v3 = *(v1 - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  v7 = v6;
  v8 = *(v6 - 8);
  v9 = (v5 + *(v8 + 80) + 48) & ~*(v8 + 80);
  swift_unknownObjectRelease();
  (*(v3 + 8))(v0 + v4, v2);

  (*(v8 + 8))(v0 + v9, v7);

  return swift_deallocObject();
}

uint64_t sub_1A41B74C0()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  v6 = (v4 + *(*(v5 - 8) + 80) + 48) & ~*(*(v5 - 8) + 80);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1A3CA8098;

  return sub_1A41B442C(v7, v8, v9, v0 + v3, v0 + v4, v0 + v6);
}

uint64_t sub_1A41B76B8()
{
  sub_1A41B6A28(0, &unk_1EB1342C0, &type metadata for OneUpSharePlayImageLoadResult, MEMORY[0x1E69E87C8]);
  v3 = (*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80);
  v4 = (*(*(v2 - 8) + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A41B6A28(0, &qword_1EB1342E0, &type metadata for ImageRequestChooserResult, MEMORY[0x1E69E87A0]);
  v6 = (v4 + *(*(v5 - 8) + 80) + 24) & ~*(*(v5 - 8) + 80);
  v7 = v0 + v4;
  v8 = *(v0 + v4);
  v9 = *(v7 + 8);
  v10 = *(v7 + 16);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1A3D60150;

  return sub_1A41B2D18(v11, v12, v13, v0 + v3, v8, v9, v10, v0 + v6);
}

void *sub_1A41B7884@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = a1;
  sub_1A41B78D0(0);
  result = SendableTransfer.init(wrappedValue:)(&v5, v3, &v6);
  *a2 = v6;
  return result;
}

void sub_1A41B78D0(uint64_t a1)
{
  if (!qword_1EB1265A0)
  {
    sub_1A41B7928();
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1265A0);
    }
  }
}

unint64_t sub_1A41B7928()
{
  result = qword_1EB1265B0;
  if (!qword_1EB1265B0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB1265B0);
  }

  return result;
}

uint64_t sub_1A41B798C()
{
  if (*v0 && ([*v0 respondsToSelector_] & 1) != 0)
  {
    v1 = [swift_unknownObjectRetain_n() uniqueGadgetIdentifier];
    v2 = sub_1A524C674();
    swift_unknownObjectRelease_n();

    return v2;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

unint64_t sub_1A41B7A70()
{
  result = qword_1EB12AE10;
  if (!qword_1EB12AE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AE10);
  }

  return result;
}

unint64_t sub_1A41B7AC8()
{
  result = qword_1EB12AE08;
  if (!qword_1EB12AE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12AE08);
  }

  return result;
}

unint64_t sub_1A41B7B20()
{
  result = qword_1EB12ADF0;
  if (!qword_1EB12ADF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ADF0);
  }

  return result;
}

void sub_1A41B7B78(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 && ([v2 respondsToSelector_] & 1) != 0)
  {
    v4 = [swift_unknownObjectRetain() uniqueGadgetIdentifier];
    v5 = sub_1A524C674();
    v7 = v6;
    swift_unknownObjectRelease();

    *a1 = v5;
    a1[1] = v7;
  }

  else
  {
    sub_1A524E6E4();
    __break(1u);
  }
}

void sub_1A41B7C58()
{
  sub_1A41B7CE0();

    ;
  }
}

void sub_1A41B7C94()
{
  sub_1A41B7CE0();

    ;
  }
}

unint64_t sub_1A41B7CE0()
{
  result = qword_1EB12ADF8;
  if (!qword_1EB12ADF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB12ADF8);
  }

  return result;
}

uint64_t LemonadeCurationKind.description.getter()
{
  v1 = *v0;
  v2 = 0x74726F6873;
  v3 = 0x6D6F74737563;
  v4 = 0x6169726F74696465;
  if (v1 != 4)
  {
    v4 = 7105633;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D756964656DLL;
  if (v1 != 1)
  {
    v5 = 1735290732;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t LemonadeCurationKind.hashValue.getter()
{
  v1 = *v0;
  sub_1A524EC94();
  MEMORY[0x1A590A010](v1);
  return sub_1A524ECE4();
}

uint64_t sub_1A41B7E80()
{
  v1 = *v0;
  v2 = 0x74726F6873;
  v3 = 0x6D6F74737563;
  v4 = 0x6169726F74696465;
  if (v1 != 4)
  {
    v4 = 7105633;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D756964656DLL;
  if (v1 != 1)
  {
    v5 = 1735290732;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t LemonadeCurationKind.representativeSystemImageName.getter()
{
  v1 = *v0;
  if (v1 < 4)
  {
    return 0;
  }

  v3 = sub_1A524C8D4();
  sub_1A524C7D4();
  return v3;
}

unint64_t LemonadeCurationKind.listedSystemImageName.getter(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_1A3C7E8B0(0, a2);
  v4 = [swift_getObjCClassFromMetadata() sharedInstance];
  v5 = [v4 enableSolariumDetailsView];

  if (v5)
  {
    if (v3 >= 4)
    {
      v8 = sub_1A524C8D4();
      sub_1A524C7D4();
      return v8;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v7 = 0xD000000000000012;
    if (v3 != 4)
    {
      v7 = 0x672E657261757173;
    }

    if (v3 >= 4)
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }
}

uint64_t sub_1A41B8178()
{
  v1 = *v0;
  v2 = 0x74726F6853;
  v3 = 0x6D6F74737543;
  v4 = 0x6169726F74696445;
  if (v1 != 4)
  {
    v4 = 7105601;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6D756964654DLL;
  if (v1 != 1)
  {
    v5 = 1735290700;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t LemonadeCurationKind.accessibilityLabelString.getter()
{
  v1 = *v0;
  if (v1 < 4)
  {
    return 0;
  }

  if (v1 == 4)
  {
    v3 = 0xD000000000000021;
  }

  else
  {
    v3 = 0xD00000000000001ELL;
  }

  return sub_1A3C38BD4(v3);
}

unint64_t sub_1A41B828C()
{
  result = qword_1EB134300;
  if (!qword_1EB134300)
  {
    sub_1A41B82E4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134300);
  }

  return result;
}

void sub_1A41B82E4()
{
  if (!qword_1EB126F38)
  {
    v0 = sub_1A524CB74();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB126F38);
    }
  }
}

uint64_t sub_1A41B8384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A41B8404@<X0>(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  sub_1A41BB70C(0, a2);
  v5 = v4;
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for SharedLibraryInvitationViewModel(0);
  sub_1A41B8384(&qword_1EB134310, type metadata accessor for SharedLibraryInvitationViewModel, &protocol conformance descriptor for SharedLibraryInvitationViewModel);
  v8 = sub_1A5247EB4();
  v9 = (*(*v8 + 112))(v8);

  if (v9 & 1) != 0 || (type metadata accessor for SharedAlbumsInvitationsViewModel(0), sub_1A41B8384(&qword_1EB134318, type metadata accessor for SharedAlbumsInvitationsViewModel, &protocol conformance descriptor for SharedAlbumsInvitationsViewModel), v10 = sub_1A5247EB4(), v11 = (*(*v10 + 120))(v10), , (v11))
  {
    *v7 = sub_1A5249574();
    *(v7 + 1) = 0;
    v7[16] = 1;
    sub_1A41C597C(0, &qword_1EB1343C8, sub_1A41BB7A0, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1A41B86D8(v2, &v7[*(v12 + 44)]);
    sub_1A41C437C(v7, a1, sub_1A41BB70C);
    return (*(v16 + 56))(a1, 0, 1, v5);
  }

  else
  {
    v14 = *(v16 + 56);

    return v14(a1, 1, 1, v5);
  }
}

uint64_t sub_1A41B86D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v74 = a2;
  sub_1A41BBB88(0);
  v71 = v3;
  v70 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v66 = v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41BBB54(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v73 = v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v72 = v63 - v8;
  sub_1A41BB8E8(0);
  v65 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v63 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41BB8A0(0);
  v68 = v12;
  v67 = *(v12 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v64 = v63 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41BB808(0, v13);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v69 = v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v63 - v18;
  v20 = *a1;
  type metadata accessor for SharedLibraryInvitationViewModel(0);
  sub_1A41B8384(&qword_1EB134310, type metadata accessor for SharedLibraryInvitationViewModel, &protocol conformance descriptor for SharedLibraryInvitationViewModel);
  v21 = sub_1A5247EB4();
  v22 = (*(*v21 + 112))(v21);

  if (v22)
  {
    v63[1] = v20;
    v23 = sub_1A5247EB4();
    v24 = (*(*v23 + 136))();

    sub_1A524BC74();
    sub_1A5248AD4();
    sub_1A41BB910(0);
    v26 = &v11[*(v25 + 36)];
    v27 = *(sub_1A5248A14() + 20);
    v28 = *MEMORY[0x1E697F468];
    v29 = sub_1A52494A4();
    (*(*(v29 - 8) + 104))(&v26[v27], v28, v29);
    __asm { FMOV            V0.2D, #25.0 }

    *v26 = _Q0;
    sub_1A3E42C88(0);
    *&v26[*(v35 + 36)] = 256;
    v36 = v78;
    *(v11 + 56) = v79;
    v37 = v81;
    *(v11 + 72) = v80;
    *(v11 + 88) = v37;
    *(v11 + 104) = v82;
    v38 = v77;
    *(v11 + 8) = v76;
    *(v11 + 24) = v38;
    *v11 = v24;
    *(v11 + 40) = v36;
    v39 = [objc_opt_self() blackColor];
    v40 = [v39 colorWithAlphaComponent_];

    v41 = sub_1A524B284();
    v42 = &v11[*(v65 + 36)];
    *v42 = v41;
    *(v42 + 8) = xmmword_1A5322920;
    *(v42 + 3) = 0x4020000000000000;
    v83 = *(a1 + 3);
    v84 = *(a1 + 40);
    v43 = swift_allocObject();
    v44 = *(a1 + 1);
    *(v43 + 16) = *a1;
    *(v43 + 32) = v44;
    *(v43 + 48) = *(a1 + 2);
    *(v43 + 64) = a1[6];
    sub_1A41C612C();
    sub_1A41C6134(&v83, v75, sub_1A41C619C);
    sub_1A41BB9A4();
    swift_unknownObjectRetain();
    v45 = v64;
    sub_1A524AA84();

    sub_1A41C2C70(v11, sub_1A41BB8E8);
    v46 = v67;
    v47 = v68;
    (*(v67 + 32))(v19, v45, v68);
    (*(v46 + 56))(v19, 0, 1, v47);
  }

  else
  {
    (*(v67 + 56))(v19, 1, 1, v68);
  }

  v48 = v19;
  type metadata accessor for SharedAlbumsInvitationsViewModel(0);
  sub_1A41B8384(&qword_1EB134318, type metadata accessor for SharedAlbumsInvitationsViewModel, &protocol conformance descriptor for SharedAlbumsInvitationsViewModel);
  v49 = sub_1A5247EB4();
  v50 = (*(*v49 + 120))(v49);

  if (v50)
  {
    v51 = sub_1A5247EB4();
    v52 = (*(*v51 + 144))(v51);

    *&v76 = v52;
    swift_getKeyPath();
    sub_1A41BBCB0(0);
    sub_1A41BBD04(0, &qword_1EB1343A0, sub_1A41BBD68, MEMORY[0x1E697E288]);
    sub_1A41B8384(&qword_1EB1343B0, sub_1A41BBCB0, MEMORY[0x1E69E6338]);
    sub_1A41B8384(&qword_1EB1343B8, type metadata accessor for SharedAlbumInvitation, &unk_1A5323290);
    sub_1A41C5EA4();
    v53 = v66;
    sub_1A524B9B4();
    v54 = v70;
    v55 = v72;
    v56 = v71;
    (*(v70 + 32))(v72, v53, v71);
    v57 = 0;
  }

  else
  {
    v57 = 1;
    v55 = v72;
    v56 = v71;
    v54 = v70;
  }

  (*(v54 + 56))(v55, v57, 1, v56);
  v58 = v69;
  sub_1A41C5E3C(v48, v69, sub_1A41BB808);
  v59 = v73;
  sub_1A41C6134(v55, v73, sub_1A41BBB54);
  v60 = v74;
  sub_1A41C5E3C(v58, v74, sub_1A41BB808);
  sub_1A41BB7D4(0);
  sub_1A41C6134(v59, v60 + *(v61 + 48), sub_1A41BBB54);
  sub_1A41C2C70(v55, sub_1A41BBB54);
  sub_1A41C59E8(v48, sub_1A41BB808);
  sub_1A41C2C70(v59, sub_1A41BBB54);
  return sub_1A41C59E8(v58, sub_1A41BB808);
}

void sub_1A41B9090(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A41BBD68(0);
  v5 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v7 = (v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *a1;

  v9 = sub_1A524C634();
  v10 = [objc_opt_self() systemImageNamed_];

  if (v10)
  {
    sub_1A41C27C0(sub_1A41C6230, v8, v30);
    v11 = v7 + *(v5 + 36);
    v12 = *(sub_1A5248A14() + 20);
    v13 = *MEMORY[0x1E697F468];
    v14 = sub_1A52494A4();
    (*(*(v14 - 8) + 104))(&v11[v12], v13, v14);
    __asm { FMOV            V0.2D, #25.0 }

    *v11 = _Q0;
    sub_1A3E42C88(0);
    *&v11[*(v20 + 36)] = 256;
    v21 = v30[7];
    v7[6] = v30[6];
    v7[7] = v21;
    v7[8] = v30[8];
    v22 = v30[3];
    v7[2] = v30[2];
    v7[3] = v22;
    v23 = v30[5];
    v7[4] = v30[4];
    v7[5] = v23;
    v24 = v30[1];
    *v7 = v30[0];
    v7[1] = v24;
    v25 = [objc_opt_self() blackColor];
    v26 = [v25 colorWithAlphaComponent_];

    v27 = sub_1A524B284();
    sub_1A41C6238(v7, a2);
    sub_1A41BBD04(0, &qword_1EB1343A0, sub_1A41BBD68, MEMORY[0x1E697E288]);
    v29 = a2 + *(v28 + 36);
    *v29 = v27;
    *(v29 + 8) = xmmword_1A5322920;
    *(v29 + 24) = 0x4020000000000000;
  }

  else
  {
    __break(1u);
  }
}

id sub_1A41B92E4(uint64_t a1, void *a2)
{
  v3 = [objc_allocWithZone(PXSharedLibraryInvitationView) init];
  v4 = objc_opt_self();
  v5 = v3;
  v6 = [v4 secondarySystemBackgroundColor];
  [v5 setBackgroundColor_];

  v7 = [a2 invitation];
  if (v7)
  {
    v8 = [v7 owner];
    swift_unknownObjectRelease();
  }

  else
  {
    v8 = 0;
  }

  [v5 setOwner_];

  swift_unknownObjectRelease();
  return v5;
}

uint64_t sub_1A41B93E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A41C5690();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A41B944C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A41C5690();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A41B94B0(uint64_t a1)
{
  sub_1A41C5690();
  sub_1A52496F4();
  __break(1u);
}

uint64_t sub_1A41B94D8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result & 1;
  return result;
}

void sub_1A41B95C0(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = swift_getKeyPath();
  *(v4 + 48) = swift_getKeyPath();
  *(v4 + 32) = v1;

  sub_1A41C2940();
  sub_1A5245704();
}

id sub_1A41B9688()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32SharedLibraryInvitationViewModel_sharedLibraryStatusProvider;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

void sub_1A41B96DC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore32SharedLibraryInvitationViewModel_sharedLibraryStatusProvider;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1A41B97D4(void *a1)
{
  sub_1A41C2B38(0, &qword_1EB1343D8, type metadata accessor for SharedLibraryInvitationViewModel, sub_1A41C2940);
  MEMORY[0x1EEE9AC00](v1);
  type metadata accessor for SharedLibraryInvitationViewModel(0);
  sub_1A41C2940();
  sub_1A5245754();
}

uint64_t SharedLibraryInvitationViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32SharedLibraryInvitationViewModel__shouldDisplay;
  sub_1A41C2B38(0, &qword_1EB1343D8, type metadata accessor for SharedLibraryInvitationViewModel, sub_1A41C2940);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();
  return v0;
}

uint64_t SharedLibraryInvitationViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32SharedLibraryInvitationViewModel__shouldDisplay;
  sub_1A41C2B38(0, &qword_1EB1343D8, type metadata accessor for SharedLibraryInvitationViewModel, sub_1A41C2940);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1A41B9C0C@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore32SharedLibraryInvitationViewModel_observable);
  *a1 = v2;
  return v2;
}

uint64_t sub_1A41B9C80@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SharedLibraryInvitationViewModel(0);
  result = sub_1A52478D4();
  *a2 = result;
  return result;
}

uint64_t sub_1A41B9CEC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result & 1;
  return result;
}

void sub_1A41B9DAC(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  a3(KeyPath);

  sub_1A5245714();
}

void sub_1A41B9E68(char a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  swift_getKeyPath();
  KeyPath = swift_getKeyPath();
  a4(KeyPath);

  sub_1A5245724();
}

void sub_1A41B9EF4(uint64_t *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = swift_getKeyPath();
  *(v4 + 48) = swift_getKeyPath();
  *(v4 + 32) = v1;

  sub_1A41C2A9C();
  sub_1A5245704();
}

void sub_1A41B9FC0(void *a1)
{
  v1 = *a1;
  (*(*a1 + 56))(*a1, 0);

  free(v1);
}

uint64_t sub_1A41BA030()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A41BA0A4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41BA144(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void (*sub_1A41BA1B4(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t sub_1A41BA258()
{
  swift_beginAccess();
  sub_1A41BB83C(0, &qword_1EB1343E8, sub_1A41BBCB0, MEMORY[0x1E695C070]);
  sub_1A52479B4();
  return swift_endAccess();
}

uint64_t sub_1A41BA2F0(uint64_t a1, __n128 a2)
{
  sub_1A41BB83C(0, &qword_1EB1343F0, sub_1A41BBCB0, MEMORY[0x1E695C060]);
  v4 = v3;
  v5 = *(v3 - 8);
  v6 = MEMORY[0x1EEE9AC00](v3);
  (*(v5 + 16))(&v9 - v7, a1, v4, v6);
  swift_beginAccess();
  sub_1A41BB83C(0, &qword_1EB1343E8, sub_1A41BBCB0, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v5 + 8))(a1, v4);
}

uint64_t (*sub_1A41BA46C(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41BB83C(0, &qword_1EB1343F0, sub_1A41BBCB0, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__invitations;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41BB83C(0, &qword_1EB1343E8, sub_1A41BBCB0, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

uint64_t sub_1A41BA638@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  return result;
}

void (*sub_1A41BA6EC(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t sub_1A41BA7B4(uint64_t a1)
{
  sub_1A41C2AD0(0, &qword_1EB134408, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134400, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_1A41BA934(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C2AD0(0, &qword_1EB134408, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__feedManager;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134400, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

void sub_1A41BAAE4()
{
  v6 = sub_1A52413E4();
  MEMORY[0x1EEE9AC00](v6);
  v5[11] = v5 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D9C6F4(0);
  MEMORY[0x1EEE9AC00](v1);
  v2 = sub_1A52414C4();
  v5[2] = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5[3] = v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41C2B38(0, &qword_1EB134410, type metadata accessor for SharedAlbumsInvitationsViewModel, sub_1A41C2A9C);
  MEMORY[0x1EEE9AC00](v4);
  LOBYTE(v7) = 0;
  v8 = 1;
  type metadata accessor for SharedAlbumsInvitationsViewModel(0);
  sub_1A41C2A9C();
  sub_1A5245754();
}

void sub_1A41BB70C(uint64_t a1, __n128 a2)
{
  if (!qword_1EB134320)
  {
    sub_1A41BB7A0(255, a2);
    sub_1A41B8384(&qword_1EB1343C0, sub_1A41BB7A0, MEMORY[0x1E6981F48]);
    v2 = sub_1A524B894();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB134320);
    }
  }
}

void sub_1A41BB83C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A41BB910(uint64_t a1)
{
  if (!qword_1EB134350)
  {
    sub_1A41C3728(255, &qword_1EB134358, &type metadata for SharedLibraryInvitationView, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A3E42C88(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134350);
    }
  }
}

unint64_t sub_1A41BB9A4()
{
  result = qword_1EB134360;
  if (!qword_1EB134360)
  {
    sub_1A41BB8E8(255);
    sub_1A41C5F78(&qword_1EB134368, sub_1A41BB910, sub_1A41BBA54);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134360);
  }

  return result;
}

unint64_t sub_1A41BBA54()
{
  result = qword_1EB134370;
  if (!qword_1EB134370)
  {
    sub_1A41C3728(255, &qword_1EB134358, &type metadata for SharedLibraryInvitationView, MEMORY[0x1E697EC00], MEMORY[0x1E697E830]);
    sub_1A41BBB00();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134370);
  }

  return result;
}

unint64_t sub_1A41BBB00()
{
  result = qword_1EB134378;
  if (!qword_1EB134378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134378);
  }

  return result;
}

void sub_1A41BBB88(uint64_t a1)
{
  if (!qword_1EB134390)
  {
    sub_1A41BBCB0(255);
    type metadata accessor for SharedAlbumInvitation(255);
    sub_1A41BBD04(255, &qword_1EB1343A0, sub_1A41BBD68, MEMORY[0x1E697E288]);
    sub_1A41B8384(&qword_1EB1343B0, sub_1A41BBCB0, MEMORY[0x1E69E6338]);
    sub_1A41B8384(&qword_1EB1343B8, type metadata accessor for SharedAlbumInvitation, &unk_1A5323290);
    v1 = sub_1A524B9D4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134390);
    }
  }
}

void sub_1A41BBD04(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  if (!*a2)
  {
    a3(255);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A41BBD68(uint64_t a1)
{
  if (!qword_1EB1343A8)
  {
    sub_1A3E42C88(255);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1343A8);
    }
  }
}

void sub_1A41BBDC8(void *a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  swift_allocObject();
  swift_beginAccess();
  sub_1A3C52C70(0, &qword_1EB126AC0, 0x1E6978650);
  v6 = a1;
  sub_1A52479A4();
  swift_endAccess();
  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

void sub_1A41BC120(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(v4 + *a1);
  v8 = swift_allocObject();
  swift_weakInit();
  v10[4] = a3;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1A3DC72D4;
  v10[3] = a4;
  v9 = _Block_copy(v10);

  [v7 performChanges_];
  _Block_release(v9);
}

uint64_t SharedAlbumsInvitationsViewModel.deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__shouldDisplay;
  sub_1A41C2B38(0, &qword_1EB134410, type metadata accessor for SharedAlbumsInvitationsViewModel, sub_1A41C2A9C);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__invitations;
  sub_1A41BB83C(0, &qword_1EB1343E8, sub_1A41BBCB0, MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__feedManager;
  sub_1A41C2AD0(0, &qword_1EB134400, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C070]);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_unknownObjectRelease();

  return v0;
}

uint64_t SharedAlbumsInvitationsViewModel.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__shouldDisplay;
  sub_1A41C2B38(0, &qword_1EB134410, type metadata accessor for SharedAlbumsInvitationsViewModel, sub_1A41C2A9C);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__invitations;
  sub_1A41BB83C(0, &qword_1EB1343E8, sub_1A41BBCB0, MEMORY[0x1E695C070]);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel__feedManager;
  sub_1A41C2AD0(0, &qword_1EB134400, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C070]);
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

id sub_1A41BC580@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + OBJC_IVAR____TtC12PhotosUICore32SharedAlbumsInvitationsViewModel_observable);
  *a1 = v2;
  return v2;
}

uint64_t sub_1A41BC5F4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SharedAlbumsInvitationsViewModel(0);
  result = sub_1A52478D4();
  *a2 = result;
  return result;
}

void sub_1A41BC660(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  (a5)(0, a2, a3, a4);
  a6();

  sub_1A5245C54();
}

uint64_t sub_1A41BC6E4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 128))();
  *a2 = result;
  return result;
}

void (*sub_1A41BC798(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F60710;
}

uint64_t sub_1A41BC860(uint64_t a1)
{
  sub_1A41C2AD0(0, &unk_1EB134420, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134418, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_1A41BC9E0(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C2AD0(0, &unk_1EB134420, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__sharedAlbum;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134418, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41BCB90;
}

uint64_t sub_1A41BCB94()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1A52479E4();

  return v1;
}

uint64_t sub_1A41BCC08@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 176))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1A41BCCBC(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void (*sub_1A41BCD38(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t sub_1A41BCDF8(void *a1, unint64_t *a2, uint64_t a3)
{
  swift_beginAccess();
  sub_1A41C57B0(0, a2, a3, MEMORY[0x1E695C070]);
  sub_1A52479B4();
  return swift_endAccess();
}

uint64_t sub_1A41BCEAC(uint64_t a1, unint64_t *a2, uint64_t a3, void *a4, unint64_t *a5, __n128 a6)
{
  sub_1A41C57B0(0, a2, a3, MEMORY[0x1E695C060]);
  v10 = v9;
  v11 = *(v9 - 8);
  v12 = MEMORY[0x1EEE9AC00](v9);
  (*(v11 + 16))(&v15 - v13, a1, v10, v12);
  swift_beginAccess();
  sub_1A41C57B0(0, a5, a3, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v11 + 8))(a1, v10);
}

uint64_t (*sub_1A41BD00C(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C57B0(0, &qword_1EB134430, MEMORY[0x1E69E6158], MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__albumTitle;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C57B0(0, &qword_1EB1249C8, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

uint64_t sub_1A41BD1C0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 224))();
  *a2 = result;
  return result;
}

void (*sub_1A41BD274(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t sub_1A41BD33C(uint64_t a1)
{
  sub_1A41C2AD0(0, &unk_1EB134440, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134438, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_1A41BD4BC(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C2AD0(0, &unk_1EB134440, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__inviter;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134438, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

uint64_t sub_1A41BD680@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 272))();
  *a2 = result & 1;
  return result;
}

void (*sub_1A41BD73C(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t (*sub_1A41BD820(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C57B0(0, &qword_1EB134450, MEMORY[0x1E69E6370], MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__ownerIsVetted;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C57B0(0, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

uint64_t sub_1A41BD9D4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 320))();
  *a2 = result;
  return result;
}

uint64_t sub_1A41BDA98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void (*sub_1A41BDB04(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t sub_1A41BDBCC(void *a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  swift_beginAccess();
  sub_1A41C2AD0(0, a2, a3, a4, MEMORY[0x1E695C070]);
  sub_1A52479B4();
  return swift_endAccess();
}

uint64_t sub_1A41BDC64(uint64_t a1)
{
  sub_1A41C2AD0(0, &qword_1EB134460, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E695C060]);
  v3 = v2;
  v4 = *(v2 - 8);
  v5 = MEMORY[0x1EEE9AC00](v2);
  (*(v4 + 16))(&v8 - v6, a1, v3, v5);
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134458, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E695C070]);
  sub_1A52479C4();
  swift_endAccess();
  return (*(v4 + 8))(a1, v3);
}

uint64_t (*sub_1A41BDDE4(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C2AD0(0, &qword_1EB134460, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__avatarImage;
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C2AD0(0, &qword_1EB134458, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

uint64_t sub_1A41BDFA8@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 368))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_1A41BE064(char a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1A52479F4();
}

void (*sub_1A41BE0D0(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x38uLL);
  }

  v3 = v2;
  *a1 = v2;
  *(v2 + 32) = swift_getKeyPath();
  *(v3 + 40) = swift_getKeyPath();
  *(v3 + 48) = sub_1A52479D4();
  return sub_1A3F62748;
}

uint64_t (*sub_1A41BE1B4(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  sub_1A41C57B0(0, &qword_1EB134450, MEMORY[0x1E69E6370], MEMORY[0x1E695C060]);
  v5[10] = v6;
  v7 = *(v6 - 8);
  v5[11] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v8);
    v9 = malloc(v8);
  }

  v10 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__stateChange[0];
  v5[14] = v9;
  v5[15] = v10;
  swift_beginAccess();
  sub_1A41C57B0(0, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
  v5[16] = v11;
  sub_1A52479B4();
  swift_endAccess();
  return sub_1A41C62D8;
}

void sub_1A41BE354(uint64_t a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 88) + 16);
  v4(*(*a1 + 104), v3[14], v3[10]);
  v5 = v3[13];
  v11 = v3[14];
  v7 = v3[11];
  v6 = v3[12];
  v8 = v3[10];
  if (a2)
  {
    v4(v3[12], v5, v3[10]);
    swift_beginAccess();
    sub_1A52479C4();
    swift_endAccess();
    v9 = *(v7 + 8);
    v9(v5, v8);
    v10 = v11;
    v9(v11, v8);
  }

  else
  {
    swift_beginAccess();
    sub_1A52479C4();
    swift_endAccess();
    v10 = v11;
    (*(v7 + 8))(v11, v8);
  }

  free(v10);
  free(v5);
  free(v6);

  free(v3);
}

double sub_1A41BE4BC(uint64_t a1)
{
  v2 = (*(*v1 + 128))();
  v3 = [v2 uuid];

  sub_1A524C674();
  sub_1A524C794();

  return result;
}

uint64_t sub_1A41BE560()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__sharedAlbum;
  v2 = MEMORY[0x1E695C070];
  sub_1A41C2AD0(0, &qword_1EB134418, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E695C070]);
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__albumTitle;
  v5 = MEMORY[0x1E695C070];
  sub_1A41C57B0(0, &qword_1EB1249C8, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
  (*(*(v6 - 8) + 8))(v0 + v4, v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__inviter;
  sub_1A41C2AD0(0, &qword_1EB134438, &qword_1EB12C1B0, off_1E771F698, v2);
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__ownerIsVetted;
  sub_1A41C57B0(0, &qword_1EB128B30, MEMORY[0x1E69E6370], v5);
  v11 = v10;
  v12 = *(*(v10 - 8) + 8);
  v12(v0 + v9, v10);
  v13 = OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__avatarImage;
  sub_1A41C2AD0(0, &qword_1EB134458, &qword_1EB126630, 0x1E69DCAB8, v2);
  (*(*(v14 - 8) + 8))(v0 + v13, v14);
  v12(v0 + OBJC_IVAR____TtC12PhotosUICore21SharedAlbumInvitation__stateChange[0], v11);

  return swift_deallocClassInstance();
}

uint64_t sub_1A41BE7D0()
{
  sub_1A524EC94();
  (*(*v0 + 424))(v2);
  return sub_1A524ECE4();
}

uint64_t sub_1A41BE8D0(uint64_t a1)
{
  sub_1A524EC94();
  (*(**v1 + 424))(v3);
  return sub_1A524ECE4();
}

uint64_t sub_1A41BE938(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = (*(**a1 + 128))();
  v4 = [v3 uuid];

  v5 = sub_1A524C674();
  v7 = v6;

  v8 = (*(*v2 + 128))();
  v9 = [v8 uuid];

  v10 = sub_1A524C674();
  v12 = v11;

  if (v5 == v10 && v7 == v12)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1A524EAB4();
  }

  return v14 & 1;
}

uint64_t sub_1A41BEA60@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for SharedAlbumInvitation(0);
  result = sub_1A52478D4();
  *a2 = result;
  return result;
}

uint64_t sub_1A41BEAA0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  sub_1A41C2CD0(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A41C4110(0);
  v8 = v7;
  v18 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation, &unk_1A53232F8);
  v9 = *sub_1A5247EB4();
  v10 = (*(v9 + 368))();

  if ((v10 & 1) == 0)
  {
    *v6 = sub_1A524BC74();
    v6[1] = v13;
    sub_1A41C597C(0, &qword_1EB134640, sub_1A41C2DC0, MEMORY[0x1E697E330], MEMORY[0x1E697E320]);
    v15 = v6 + *(v14 + 44);
    *v15 = sub_1A5249584();
    *(v15 + 1) = 0;
    v15[16] = 1;
    sub_1A41C597C(0, &unk_1EB134648, sub_1A41C2E54, MEMORY[0x1E697E300], MEMORY[0x1E697E2F8]);
    sub_1A41BEFA4(v2, &v15[*(v16 + 44)]);
  }

  v11 = *(v18 + 56);

  return v11(a1, 1, 1, v8);
}

void sub_1A41BEFA4(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v15 = a2;
  sub_1A41C3E14(0);
  v14 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v20 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  sub_1A41C3320(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v16 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v13 = sub_1A524B9A4();
  v19 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v18 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v17 = &v12 - v11;
  v21 = sub_1A5249314();
  v23 = 1;
  sub_1A41BF6F0(a1, &v22);
}

void sub_1A41BF6F0(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = sub_1A524B554();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v55 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 3);
  v56 = a1;
  v77 = v7;
  sub_1A41C2AD0(0, &qword_1EB134470, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  sub_1A524B524();
  (*(v4 + 104))(v6, *MEMORY[0x1E6981630], v3);
  v63 = sub_1A524B5C4();

  (*(v4 + 8))(v6, v3);
  sub_1A524BC74();
  sub_1A52481F4();
  LOBYTE(v77) = 1;
  *&v66[3] = v67;
  *&v66[11] = v68;
  *&v66[19] = v69;
  v62 = sub_1A5249584();
  v65 = 1;
  *&v77 = sub_1A3C38BD4(0xD000000000000022);
  *(&v77 + 1) = v8;
  v57 = sub_1A3D5F9DC();
  v9 = sub_1A524DFA4();
  v11 = v10;

  *&v75 = v9;
  *(&v75 + 1) = v11;
  v12 = sub_1A524A464();
  v14 = v13;
  LOBYTE(v11) = v15;
  sub_1A524B3D4();
  v16 = sub_1A524A364();
  v18 = v17;
  LOBYTE(v4) = v19;

  sub_1A3E04DF4(v12, v14, v11 & 1);

  sub_1A524A1A4();
  v20 = sub_1A524A344();
  v22 = v21;
  LOBYTE(v11) = v23;
  sub_1A3E04DF4(v16, v18, v4 & 1);

  sub_1A524A244();
  v24 = sub_1A524A3C4();
  v59 = v25;
  v60 = v24;
  v58 = v26;
  v61 = v27;

  sub_1A3E04DF4(v20, v22, v11 & 1);

  v28 = sub_1A3C38BD4(0xD000000000000028);
  v55[2] = v29;
  v55[3] = v28;
  sub_1A41BB83C(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1A52FC9F0;
  v55[1] = *v56;
  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation, &unk_1A53232F8);
  v31 = sub_1A5247EB4();
  v32 = (*(*v31 + 224))(v31);

  v33 = [v32 displayNameWithAddressAppended_];

  v34 = sub_1A524C674();
  v36 = v35;

  *(v30 + 56) = MEMORY[0x1E69E6158];
  v37 = sub_1A3D710E8();
  *(v30 + 64) = v37;
  *(v30 + 32) = v34;
  *(v30 + 40) = v36;
  v38 = sub_1A5247EB4();
  v39 = (*(*v38 + 176))(v38);
  v41 = v40;

  *(v30 + 96) = MEMORY[0x1E69E6158];
  *(v30 + 104) = v37;
  *(v30 + 72) = v39;
  *(v30 + 80) = v41;
  v42 = sub_1A524C6B4();
  v44 = v43;

  *&v77 = v42;
  *(&v77 + 1) = v44;
  v45 = sub_1A524A464();
  v47 = v46;
  LOBYTE(v37) = v48;
  sub_1A524A0E4();
  v49 = sub_1A524A3C4();
  v51 = v50;
  LOBYTE(v36) = v52;
  v54 = v53;

  sub_1A3E04DF4(v45, v47, v37 & 1);

  sub_1A524BC04();
  sub_1A52481F4();
  *&v75 = v49;
  *(&v75 + 1) = v51;
  v76[0] = v36 & 1;
  *&v76[1] = v70;
  *&v76[4] = *(&v70 + 3);
  *&v76[8] = v54;
  *&v76[16] = v71;
  *&v76[32] = v72;
  *&v76[48] = *v73;
  v81 = *v76;
  v80 = v75;
  v84 = *v73;
  v83 = v72;
  v82 = v71;
  v74 = v58 & 1;
  *&v76[64] = 256;
  v85 = 256;
  *&v77 = v49;
  *(&v77 + 1) = v51;
  v78 = v36 & 1;
  *(v79 + 3) = *(&v70 + 3);
  v79[0] = v70;
  *(&v79[1] + 3) = v54;
  *(&v79[7] + 3) = v72;
  *(&v79[11] + 3) = *v73;
  *(&v79[3] + 3) = v71;
  *(&v79[15] + 3) = 256;
  sub_1A3E75E68(v60, v59, v58 & 1);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41C0258@<X0>(_OWORD *a1@<X0>, void *a2@<X8>)
{
  v123 = a2;
  sub_1A41C3C98(0);
  v121 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v108[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = MEMORY[0x1E6981198];
  sub_1A41C4180(0, &qword_1EB1345A0, sub_1A41C3C98, sub_1A41C3D74, MEMORY[0x1E6981198]);
  v122 = v7;
  v127 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v120 = &v108[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v125 = &v108[-v10];
  sub_1A41C34F4(0);
  v111 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v108[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A41C4180(0, &qword_1EB134528, sub_1A41C34F4, sub_1A41C37E8, v6);
  v119 = v14;
  v126 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v108[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v16);
  v124 = &v108[-v17];
  v130 = sub_1A3C38BD4(0xD00000000000002ELL);
  v131 = v18;
  v19 = swift_allocObject();
  v20 = a1[7];
  v19[7] = a1[6];
  v19[8] = v20;
  v19[9] = a1[8];
  v21 = a1[3];
  v19[3] = a1[2];
  v19[4] = v21;
  v22 = a1[5];
  v19[5] = a1[4];
  v19[6] = v22;
  v23 = a1[1];
  v19[1] = *a1;
  v19[2] = v23;
  sub_1A41C43E4(a1, v129);
  v117 = sub_1A3D5F9DC();
  sub_1A524B754();
  LOBYTE(v6) = sub_1A524A054();
  sub_1A5247BC4();
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  sub_1A41C369C(0);
  v116 = v32;
  v33 = &v13[*(v32 + 36)];
  *v33 = v6;
  *(v33 + 1) = v25;
  *(v33 + 2) = v27;
  *(v33 + 3) = v29;
  *(v33 + 4) = v31;
  v33[40] = 0;
  LOBYTE(v6) = sub_1A524A0C4();
  sub_1A5247BC4();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_1A41C3674(0);
  v114 = v42;
  v43 = &v13[*(v42 + 36)];
  *v43 = v6;
  *(v43 + 1) = v35;
  *(v43 + 2) = v37;
  *(v43 + 3) = v39;
  *(v43 + 4) = v41;
  v43[40] = 0;
  sub_1A41BBD04(0, &qword_1EB134550, sub_1A41C3674, MEMORY[0x1E697EBE8]);
  v113 = v44;
  *&v13[*(v44 + 36)] = 256;
  v45 = sub_1A524B3C4();
  v46 = sub_1A524A064();
  sub_1A41C35BC(0);
  v115 = v47;
  v48 = &v13[*(v47 + 36)];
  *v48 = v45;
  v48[8] = v46;
  v49 = *(a1 + 16);
  sub_1A41C30BC(0, &qword_1EB134540, sub_1A41C35BC, sub_1A3E42C88);
  v112 = v50;
  v51 = &v13[*(v50 + 36)];
  v110 = sub_1A5248A14();
  v52 = *(v110 + 20);
  v109 = *MEMORY[0x1E697F468];
  v53 = v109;
  v54 = sub_1A52494A4();
  v55 = *(*(v54 - 8) + 104);
  v55(&v51[v52], v53, v54);
  *v51 = v49;
  *(v51 + 1) = v49;
  sub_1A3E42C88(0);
  v57 = v56;
  *&v51[*(v56 + 36)] = 256;
  v58 = sub_1A524B434();
  KeyPath = swift_getKeyPath();
  sub_1A41C3598(0);
  v61 = &v13[*(v60 + 36)];
  *v61 = KeyPath;
  v61[1] = v58;
  v62 = sub_1A524A0E4();
  v63 = swift_getKeyPath();
  v64 = &v13[*(v111 + 36)];
  *v64 = v63;
  v64[1] = v62;
  sub_1A524A1A4();
  sub_1A41C37E8();
  v65 = v124;
  sub_1A524A8F4();
  sub_1A41C2C70(v13, sub_1A41C34F4);
  v130 = sub_1A3C38BD4(0xD00000000000002FLL);
  v131 = v66;
  v67 = swift_allocObject();
  v68 = a1[7];
  v67[7] = a1[6];
  v67[8] = v68;
  v67[9] = a1[8];
  v69 = a1[3];
  v67[3] = a1[2];
  v67[4] = v69;
  v70 = a1[5];
  v67[5] = a1[4];
  v67[6] = v70;
  v71 = a1[1];
  v67[1] = *a1;
  v67[2] = v71;
  sub_1A41C43E4(a1, v129);
  sub_1A524B754();
  LOBYTE(v13) = sub_1A524A054();
  sub_1A5247BC4();
  v72 = &v5[*(v116 + 36)];
  *v72 = v13;
  *(v72 + 1) = v73;
  *(v72 + 2) = v74;
  *(v72 + 3) = v75;
  *(v72 + 4) = v76;
  v72[40] = 0;
  LOBYTE(v13) = sub_1A524A0C4();
  sub_1A5247BC4();
  v77 = &v5[*(v114 + 36)];
  *v77 = v13;
  *(v77 + 1) = v78;
  *(v77 + 2) = v79;
  *(v77 + 3) = v80;
  *(v77 + 4) = v81;
  v77[40] = 0;
  *&v5[*(v113 + 36)] = 256;
  v82 = [objc_opt_self() secondarySystemFillColor];
  v83 = sub_1A524B284();
  v84 = sub_1A524A064();
  v85 = &v5[*(v115 + 36)];
  *v85 = v83;
  v85[8] = v84;
  v86 = &v5[*(v112 + 36)];
  v55(&v86[*(v110 + 20)], v109, v54);
  *v86 = v49;
  *(v86 + 1) = v49;
  *&v86[*(v57 + 36)] = 256;
  v87 = sub_1A524A0E4();
  v88 = swift_getKeyPath();
  v89 = &v5[*(v121 + 36)];
  *v89 = v88;
  v89[1] = v87;
  sub_1A524A1A4();
  sub_1A41C3D74();
  v90 = v125;
  sub_1A524A8F4();
  sub_1A41C2C70(v5, sub_1A41C3C98);
  v129[0] = 1;
  v91 = *(v126 + 16);
  v92 = v118;
  v93 = v119;
  v91(v118, v65, v119);
  LOBYTE(v130) = 1;
  v94 = *(v127 + 16);
  v95 = v120;
  v96 = v122;
  v94(v120, v90, v122);
  v128 = 1;
  v97 = v129[0];
  v98 = v123;
  *v123 = 0;
  *(v98 + 8) = v97;
  sub_1A41C33E8(0);
  v100 = v99;
  v91(v98 + v99[12], v92, v93);
  v101 = v98 + v100[16];
  v102 = v130;
  *v101 = 0;
  v101[8] = v102;
  v94(v98 + v100[20], v95, v96);
  v103 = v98 + v100[24];
  v104 = v128;
  *v103 = 0;
  v103[8] = v104;
  v105 = *(v127 + 8);
  v105(v125, v96);
  v106 = *(v126 + 8);
  v106(v124, v93);
  v105(v95, v96);
  return (v106)(v92, v93);
}

void sub_1A41C0BE4(char a1, id a2)
{
  if (a1)
  {
    v4 = [a2 photoLibrary];
    if (v4)
    {
      v5 = v4;
      v6 = objc_opt_self();
      v7 = [v6 sharedAlbumsEnabledForPhotoLibrary_];

      if (!v7)
      {
        v40 = v2[5];
        LOBYTE(aBlock) = 0;
        v17 = MEMORY[0x1E6981790];
        sub_1A41C57B0(0, &unk_1EB134658, &type metadata for SharedAlbumInvitationView.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
        sub_1A524B6B4();
        v40 = *(v2 + 40);
        LOBYTE(aBlock) = 1;
        sub_1A41C57B0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v17);
        sub_1A524B6B4();
        return;
      }

      v8 = [a2 photoLibrary];
      if (v8)
      {
        v9 = v8;
        v10 = [v6 hasReachedLimitOfAcceptedSharedAlbumsInPhotoLibrary_];

        if ((v10 & 1) == 0)
        {
          v18 = swift_allocObject();
          v19 = v2[7];
          v18[7] = v2[6];
          v18[8] = v19;
          v18[9] = v2[8];
          v20 = v2[3];
          v18[3] = v2[2];
          v18[4] = v20;
          v21 = v2[5];
          v18[5] = v2[4];
          v18[6] = v21;
          v22 = v2[1];
          v18[1] = *v2;
          v18[2] = v22;
          v45 = sub_1A41C441C;
          v46 = v18;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v43 = sub_1A3D6084C;
          v44 = &block_descriptor_60_3;
          v23 = _Block_copy(&aBlock);
          sub_1A41C43E4(v2, &v40);

          [v6 acceptInvitationToSharedAlbum:a2 completionHandler:v23];
          _Block_release(v23);
          type metadata accessor for SharedAlbumInvitation(0);
          sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation, &unk_1A53232F8);
          v24 = sub_1A5247EB4();
          v25 = *sub_1A5247EB4();
          v26 = (*(v25 + 368))();

          (*(*v24 + 376))((v26 & 1) == 0);

          return;
        }

        v11 = v2;
        PHCollection.title.getter();
        if (v12)
        {
          v13 = sub_1A524C634();
        }

        else
        {
          v13 = 0;
        }

        v27 = [objc_opt_self() errorForReachingMaxSubscriptionLimitWithAlbumTitle_];

        if (v27)
        {
          sub_1A41BB83C(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
          v28 = swift_allocObject();
          *(v28 + 16) = xmmword_1A52F8E10;
          v29 = sub_1A5240B74();
          *(v28 + 56) = sub_1A3C52C70(0, &qword_1EB12C740, 0x1E696ABC0);
          *(v28 + 64) = sub_1A3C3A220(&unk_1EB134668, &qword_1EB12C740, 0x1E696ABC0, MEMORY[0x1E69E81C8]);
          *(v28 + 32) = v29;
          sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
          v30 = sub_1A524DED4();
          v31 = sub_1A524D264();
          sub_1A5246DE4("ERROR: Cannot accept invitation %@", 34, 2, &dword_1A3C1C000, v30, v31, v28);

          v40 = v11[5];
          LOBYTE(aBlock) = 1;
          v32 = MEMORY[0x1E6981790];
          sub_1A41C57B0(0, &unk_1EB134658, &type metadata for SharedAlbumInvitationView.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
          sub_1A524B6B4();
          v40 = *(v11 + 40);
          LOBYTE(aBlock) = 1;
          sub_1A41C57B0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v32);
          sub_1A524B6B4();
          swift_getErrorValue();
          v33 = sub_1A524EBE4();
          v40 = *(v11 + 56);
          v34 = *(v11 + 9);
          aBlock = v40;
          v47 = v34;
          v41 = v34;
          v39[2] = v33;
          v39[3] = v35;
          sub_1A3F30668(&aBlock, v39);
          v36 = MEMORY[0x1E69E6158];
          sub_1A41C56E4(&v47, v39, &qword_1EB134678, &unk_1EB134680, MEMORY[0x1E69E6158], v37);
          sub_1A41C57B0(0, &unk_1EB13A670, v36, v32);
          sub_1A524B6B4();

          sub_1A3C651B8(&aBlock);
          sub_1A41C46C4(&v47, v38);
          return;
        }

LABEL_19:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_19;
  }

  [objc_opt_self() declineInvitationToSharedAlbum:a2 completionHandler:0];
  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation, &unk_1A53232F8);
  v14 = sub_1A5247EB4();
  v15 = *sub_1A5247EB4();
  v16 = (*(v15 + 368))();

  (*(*v14 + 376))((v16 & 1) == 0);
}

void sub_1A41C1334(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A41C3728(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v60 = v4;
  v62 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v52 = &v51 - v5;
  sub_1A41C3F80(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v59 = &v51 - v9;
  sub_1A3C38BD4(0xD000000000000030);
  sub_1A41BB83C(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1A52F8E10;
  v11 = a1[1];
  v57 = *a1;
  v56 = v11;
  v55 = *(a1 + 16);
  v54 = type metadata accessor for SharedAlbumInvitation(0);
  v53 = sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation, &unk_1A53232F8);
  v12 = sub_1A5247EB4();
  v13 = (*(*v12 + 224))(v12);

  v14 = [v13 displayAddress];

  v15 = sub_1A524C674();
  v17 = v16;

  *(v10 + 56) = MEMORY[0x1E69E6158];
  *(v10 + 64) = sub_1A3D710E8();
  *(v10 + 32) = v15;
  *(v10 + 40) = v17;
  v18 = sub_1A524C6B4();
  v20 = v19;

  v63[0] = v18;
  v63[1] = v20;
  v51 = sub_1A3D5F9DC();
  v21 = sub_1A524A464();
  v23 = v22;
  v25 = v24;
  v26 = [objc_opt_self() secondaryLabelColor];
  sub_1A524B284();
  v27 = sub_1A524A364();
  v29 = v28;
  v58 = v30;
  v32 = v31;

  v33 = v25 & 1;
  v34 = v59;
  sub_1A3E04DF4(v21, v23, v33);
  v35 = v60;

  v36 = *sub_1A5247EB4();
  LOBYTE(v11) = (*(v36 + 272))();

  v37 = 1;
  if ((v11 & 1) == 0)
  {
    v63[18] = sub_1A3C38BD4(0xD00000000000002CLL);
    v63[19] = v38;
    v39 = swift_allocObject();
    v40 = *(a1 + 7);
    v39[7] = *(a1 + 6);
    v39[8] = v40;
    v39[9] = *(a1 + 8);
    v41 = *(a1 + 3);
    v39[3] = *(a1 + 2);
    v39[4] = v41;
    v42 = *(a1 + 5);
    v39[5] = *(a1 + 4);
    v39[6] = v42;
    v43 = *(a1 + 1);
    v39[1] = *a1;
    v39[2] = v43;
    sub_1A41C43E4(a1, v63);
    v44 = v52;
    sub_1A524B754();
    (*(v62 + 32))(v34, v44, v35);
    v37 = 0;
  }

  (*(v62 + 56))(v34, v37, 1, v35);
  v45 = v61;
  sub_1A41C6134(v34, v61, sub_1A41C3F80);
  *a2 = 0;
  *(a2 + 8) = 1;
  *(a2 + 16) = v27;
  *(a2 + 24) = v29;
  v46 = v58 & 1;
  *(a2 + 32) = v58 & 1;
  *(a2 + 40) = v32;
  sub_1A41C3EFC(0, v47);
  v49 = v48;
  sub_1A41C6134(v45, a2 + *(v48 + 64), sub_1A41C3F80);
  v50 = a2 + *(v49 + 80);
  *v50 = 0;
  *(v50 + 8) = 1;
  sub_1A3E75E68(v27, v29, v46);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A41C194C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1A524B274();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v52 - v9;
  sub_1A41BB83C(0, &qword_1EB1347B0, MEMORY[0x1E697D628], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v52 - v12;
  v57 = *(a1 + 5);
  sub_1A41C57B0(0, &unk_1EB134658, &type metadata for SharedAlbumInvitationView.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6A4();
  if (v56)
  {
    if (v56 == 1)
    {
      v57 = *(a1 + 7);
      v58 = a1[9];
      sub_1A41C57B0(0, &unk_1EB13A670, MEMORY[0x1E69E6158], MEMORY[0x1E6981790]);
      sub_1A524B6A4();
      v57 = v56;
      sub_1A3D5F9DC();
      sub_1A524A464();
      (*(v5 + 56))(v13, 1, 1, v4);
      return sub_1A524B224();
    }

    *&v57 = sub_1A3C38BD4(0xD00000000000003FLL);
    *(&v57 + 1) = v38;
    sub_1A3D5F9DC();
    v55 = sub_1A524A464();
    v54 = v39;
    v53 = v40;
    *&v57 = sub_1A3C38BD4(0xD000000000000044);
    *(&v57 + 1) = v41;
    v42 = sub_1A524A464();
    v44 = v43;
    v46 = v45;
    v47 = swift_allocObject();
    v48 = *(a1 + 7);
    v47[7] = *(a1 + 6);
    v47[8] = v48;
    v47[9] = *(a1 + 8);
    v49 = *(a1 + 3);
    v47[3] = *(a1 + 2);
    v47[4] = v49;
    v50 = *(a1 + 5);
    v47[5] = *(a1 + 4);
    v47[6] = v50;
    v51 = *(a1 + 1);
    v47[1] = *a1;
    v47[2] = v51;
    sub_1A41C43E4(a1, &v57);
    sub_1A524B244();

    sub_1A3E04DF4(v42, v44, v46 & 1);

    sub_1A524B254();
  }

  else
  {
    v53 = sub_1A3C38BD4(0xD000000000000035);
    v52[1] = v15;
    sub_1A41BB83C(0, &qword_1EB12B110, sub_1A3D78B5C, MEMORY[0x1E69E6F90]);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_1A52FC9F0;
    v55 = a2;
    type metadata accessor for SharedAlbumInvitation(0);
    sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation, &unk_1A53232F8);
    v17 = sub_1A5247EB4();
    v18 = (*(*v17 + 224))(v17);
    v54 = v7;
    v19 = v18;

    v20 = [v19 displayNameWithAddressAppended_];

    v21 = sub_1A524C674();
    v52[0] = v10;
    v22 = v21;
    v24 = v23;

    *(v16 + 56) = MEMORY[0x1E69E6158];
    v25 = sub_1A3D710E8();
    *(v16 + 64) = v25;
    *(v16 + 32) = v22;
    *(v16 + 40) = v24;
    v26 = sub_1A5247EB4();
    v27 = (*(*v26 + 176))(v26);
    v29 = v28;

    *(v16 + 96) = MEMORY[0x1E69E6158];
    *(v16 + 104) = v25;
    *(v16 + 72) = v27;
    *(v16 + 80) = v29;
    v30 = sub_1A524C6B4();
    v32 = v31;

    *&v57 = v30;
    *(&v57 + 1) = v32;
    sub_1A3D5F9DC();
    sub_1A524A464();
    *&v57 = sub_1A3C38BD4(0xD00000000000003CLL);
    *(&v57 + 1) = v33;
    v34 = sub_1A524A464();
    v36 = v35;
    LOBYTE(v29) = v37;
    sub_1A524B264();
    sub_1A3E04DF4(v34, v36, v29 & 1);

    sub_1A524B254();
  }

  return sub_1A524B234();
}

id sub_1A41C2084(uint64_t a1, uint64_t a2)
{
  v2 = objc_opt_self();

  return [v2 navigateToDestination:4 completion:0];
}

void sub_1A41C20C4(double *a1)
{
  v2 = sub_1A5249234();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1[12];
  v33 = v6;
  v34 = *(a1 + 104);
  if (v34 == 1)
  {
    v7 = v6;
  }

  else
  {

    v8 = sub_1A524D254();
    v9 = sub_1A524A014();
    sub_1A5246DF4(v8, &dword_1A3C1C000, v9, "Accessing Environment's value outside of being installed on a View. This will always read the default value and will not update.", 128, 2, MEMORY[0x1E69E7CC0]);

    sub_1A5249224();
    swift_getAtKeyPath();
    sub_1A41C5754(&v33, &qword_1EB124830, MEMORY[0x1E69E7DE0], MEMORY[0x1E697DCC0], v10);
    (*(v3 + 8))(v5, v2);
    v7 = v31[0];
  }

  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation, &unk_1A53232F8);
  v11 = sub_1A5247EB4();
  v12 = (*(*v11 + 224))(v11);

  v13 = [v12 displayAddress];

  if (!v13)
  {
    sub_1A524C674();
    v13 = sub_1A524C634();
  }

  PXDisplayCollectionDetailedCountsMake();
  v15 = v14;
  v17 = v16;
  v30 = objc_opt_self();
  v18 = sub_1A5247EB4();
  v19 = (*(*v18 + 224))(v18);

  v20 = [v19 firstName];

  v21 = sub_1A5247EB4();
  v22 = (*(*v21 + 224))(v21);

  v23 = [v22 lastName];

  v24 = swift_allocObject();
  v25 = *(a1 + 7);
  v24[7] = *(a1 + 6);
  v24[8] = v25;
  v24[9] = *(a1 + 8);
  v26 = *(a1 + 3);
  v24[3] = *(a1 + 2);
  v24[4] = v26;
  v27 = *(a1 + 5);
  v24[5] = *(a1 + 4);
  v24[6] = v27;
  v28 = *(a1 + 1);
  v24[1] = *a1;
  v24[2] = v28;
  aBlock[4] = sub_1A41C5800;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A41C254C;
  aBlock[3] = &block_descriptor_110_1;
  v29 = _Block_copy(aBlock);
  sub_1A41C43E4(a1, v31);

  [v30 requestPersonImageWithTargetSize:0 displayScale:v13 isRTL:0 matchingEmail:v20 orPhone:v23 withFirstName:1 lastName:v15 prefersPhotosImage:v17 withCompletion:{v7, v29}];
  _Block_release(v29);
}

void sub_1A41C254C(uint64_t a1, void *a2, void *a3, void *a4, double a5, double a6, double a7, double a8)
{
  v15 = *(a1 + 32);

  v18 = a2;
  v16 = a3;
  v17 = a4;
  v15(a2, a3, a4, a5, a6, a7, a8);
}

void sub_1A41C2678(uint64_t a1, void *a2)
{
  v3 = *(*a1 + 136);
  v4 = v3();
  v5 = [v4 invitation];

  if (v5)
  {
    v6 = v3();
    v8 = sub_1A524C634();
    PXSharedLibraryViewInvitation(v6, v5, 0, a2, v8, 0);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
    v8 = sub_1A524DED4();
    v7 = sub_1A524D264();
    sub_1A5246DE4("ERROR: No Shared Library invitation to view", 43, 2, &dword_1A3C1C000, v8, v7, MEMORY[0x1E69E7CC0]);
  }
}

double sub_1A41C27C0@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  sub_1A3C52C70(0, &qword_1EB126630, 0x1E69DCAB8);
  sub_1A524B694();
  sub_1A524B694();
  sub_1A524B694();
  sub_1A524B694();
  KeyPath = swift_getKeyPath();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = 0;
  *(a4 + 17) = v9;
  *(a4 + 20) = *(&v9 + 3);
  *(a4 + 24) = v9;
  *(a4 + 40) = v9;
  *(a4 + 41) = 0;
  *(a4 + 44) = 0;
  *(a4 + 48) = *(&v9 + 1);
  *(a4 + 56) = v9;
  *(a4 + 72) = v10;
  *(a4 + 80) = v9;
  *(a4 + 84) = *&v12[3];
  *(a4 + 81) = *v12;
  *(a4 + 88) = *(&v9 + 1);
  *(a4 + 96) = KeyPath;
  *(a4 + 104) = 0;
  *(a4 + 105) = *v11;
  *(a4 + 108) = *&v11[3];
  result = 60.0;
  *(a4 + 112) = xmmword_1A5322930;
  *(a4 + 128) = xmmword_1A5322940;
  return result;
}

double sub_1A41C2974()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(*Strong + 192))(Strong);
  }

  return result;
}

double sub_1A41C29E8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (*(*Strong + 136))(Strong);
    ShouldDisplayInvitation = PXSharedLibraryShouldDisplayInvitation(v3);

    (*(*v2 + 120))(ShouldDisplayInvitation);
  }

  return result;
}

void sub_1A41C2AD0(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v8 = sub_1A3C52C70(255, a3, a4);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

void sub_1A41C2B38(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    a4();
    sub_1A5245764();
  }
}

double sub_1A41C2BB0()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = (*(*Strong + 192))(Strong);
    v4 = [v3 numberOfInvitationsReceived];

    (*(*v2 + 128))(v4 > 0);
  }

  return result;
}

uint64_t sub_1A41C2C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A41C2D2C(uint64_t a1)
{
  if (!qword_1EB134488)
  {
    sub_1A41C2DC0(255);
    sub_1A41B8384(&qword_1EB1345F8, sub_1A41C2DC0, MEMORY[0x1E6981870]);
    v1 = sub_1A524B8B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134488);
    }
  }
}

void sub_1A41C2DC0(uint64_t a1)
{
  if (!qword_1EB134490)
  {
    sub_1A41C2E54(255);
    sub_1A41B8384(&qword_1EB1345F0, sub_1A41C2E54, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134490);
    }
  }
}

void sub_1A41C2E88(uint64_t a1)
{
  if (!qword_1EB1344A0)
  {
    sub_1A41C2F1C(255);
    sub_1A524B9A4();
    sub_1A41C3320(255);
    sub_1A41C3E14(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1344A0);
    }
  }
}

void sub_1A41C2F44(uint64_t a1)
{
  if (!qword_1EB1344B0)
  {
    sub_1A41C2FD8(255);
    sub_1A41B8384(&qword_1EB134508, sub_1A41C2FD8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1344B0);
    }
  }
}

void sub_1A41C3040(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v7)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A41C30BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    v6 = sub_1A5248804();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A41C3130(uint64_t a1)
{
  if (!qword_1EB1344D0)
  {
    sub_1A41C31C4(255);
    sub_1A41B8384(&qword_1EB134500, sub_1A41C31C4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1344D0);
    }
  }
}

void sub_1A41C31F8(uint64_t a1)
{
  if (!qword_1EB1344E0)
  {
    sub_1A41C3728(255, &qword_1EB128710, MEMORY[0x1E6981148], MEMORY[0x1E697EBE8], MEMORY[0x1E697E830]);
    sub_1A41C3294(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB1344E0);
    }
  }
}

void sub_1A41C3294(uint64_t a1)
{
  if (!qword_1EB1344F0)
  {
    sub_1A41C3728(255, &qword_1EB140F90, MEMORY[0x1E6981148], MEMORY[0x1E697E048], MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1344F0);
    }
  }
}

void sub_1A41C3320(uint64_t a1)
{
  if (!qword_1EB134510)
  {
    sub_1A41C33B4(255);
    sub_1A41B8384(&qword_1EB1345B8, sub_1A41C33B4, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134510);
    }
  }
}

void sub_1A41C33E8(uint64_t a1)
{
  if (!qword_1EB134520)
  {
    v1 = MEMORY[0x1E6981198];
    sub_1A41C4180(255, &qword_1EB134528, sub_1A41C34F4, sub_1A41C37E8, MEMORY[0x1E6981198]);
    sub_1A41C4180(255, &qword_1EB1345A0, sub_1A41C3C98, sub_1A41C3D74, v1);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB134520);
    }
  }
}

void sub_1A41C3514(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A41C377C(255, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50], v4);
    v5 = sub_1A5248804();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1A41C35BC(uint64_t a1)
{
  if (!qword_1EB134548)
  {
    sub_1A41BBD04(255, &qword_1EB134550, sub_1A41C3674, MEMORY[0x1E697EBE8]);
    sub_1A41C3728(255, &qword_1EB127B10, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980460]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134548);
    }
  }
}

void sub_1A41C369C(uint64_t a1)
{
  if (!qword_1EB134560)
  {
    sub_1A41C3728(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134560);
    }
  }
}

void sub_1A41C3728(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A41C377C(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, __n128 a5)
{
  if (!*a2)
  {
    sub_1A41C57B0(255, a3, a4, MEMORY[0x1E69E6720]);
    v6 = sub_1A5249F44();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A41C37E8()
{
  result = qword_1EB134568;
  if (!qword_1EB134568)
  {
    sub_1A41C34F4(255);
    sub_1A41C38B8(&qword_1EB134570, sub_1A41C3598, sub_1A41C395C);
    sub_1A41C3C48(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50], v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134568);
  }

  return result;
}

uint64_t sub_1A41C38B8(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A41C3C48(&qword_1EB127800, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0], v6);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41C395C()
{
  result = qword_1EB134578;
  if (!qword_1EB134578)
  {
    sub_1A41C30BC(255, &qword_1EB134540, sub_1A41C35BC, sub_1A3E42C88);
    sub_1A41C3A3C();
    sub_1A41B8384(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134578);
  }

  return result;
}

unint64_t sub_1A41C3A3C()
{
  result = qword_1EB134580;
  if (!qword_1EB134580)
  {
    sub_1A41C35BC(255);
    sub_1A41C3ABC();
    sub_1A3D6D4B0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134580);
  }

  return result;
}

unint64_t sub_1A41C3ABC()
{
  result = qword_1EB134588;
  if (!qword_1EB134588)
  {
    sub_1A41BBD04(255, &qword_1EB134550, sub_1A41C3674, MEMORY[0x1E697EBE8]);
    sub_1A41C3B90(&qword_1EB134590, sub_1A41C3674, sub_1A41C3C14);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134588);
  }

  return result;
}

uint64_t sub_1A41C3B90(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A41C3C48(unint64_t *a1, unint64_t *a2, unint64_t *a3, uint64_t a4, __n128 a5)
{
  result = *a1;
  if (!result)
  {
    sub_1A41C377C(255, a2, a3, a4, a5);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1A41C3CBC(uint64_t a1, unint64_t *a2, unint64_t *a3, unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    sub_1A41C30BC(255, &qword_1EB134540, sub_1A41C35BC, sub_1A3E42C88);
    sub_1A41C377C(255, a3, a4, a5, v9);
    v10 = sub_1A5248804();
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A41C3D74()
{
  result = qword_1EB1345B0;
  if (!qword_1EB1345B0)
  {
    sub_1A41C3C98(255);
    sub_1A41C395C();
    sub_1A41C3C48(&qword_1EB127830, &qword_1EB127820, &qword_1EB1276A0, MEMORY[0x1E6980F50], v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1345B0);
  }

  return result;
}

void sub_1A41C3E34(uint64_t a1)
{
  if (!qword_1EB1345C8)
  {
    sub_1A41C3EC8(255);
    sub_1A41B8384(&qword_1EB1345E8, sub_1A41C3EC8, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1345C8);
    }
  }
}

void sub_1A41C3EFC(uint64_t a1, double a2)
{
  if (!qword_1EB1345D8)
  {
    sub_1A41C3F80(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB1345D8);
    }
  }
}

void sub_1A41C3F80(uint64_t a1)
{
  if (!qword_1EB127470)
  {
    sub_1A41C3728(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB127470);
    }
  }
}

void sub_1A41C4004(uint64_t a1, __n128 a2)
{
  if (!qword_1EB134600)
  {
    sub_1A41C4098(255, a2);
    sub_1A41C38B8(&qword_1EB1284B0, sub_1A41C4098, sub_1A3E43880);
    v2 = sub_1A5249724();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB134600);
    }
  }
}

void sub_1A41C4098(uint64_t a1, __n128 a2)
{
  if (!qword_1EB1284A8)
  {
    sub_1A41C377C(255, &qword_1EB1277F0, &qword_1EB127560, MEMORY[0x1E69815C0], a2);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB1284A8);
    }
  }
}

void sub_1A41C4180(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void), uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    a4();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v8)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

unint64_t sub_1A41C420C()
{
  result = qword_1EB134620;
  if (!qword_1EB134620)
  {
    sub_1A41C2CD0(255);
    sub_1A41C42BC();
    sub_1A41B8384(&qword_1EB134638, sub_1A41C4004, MEMORY[0x1E697F940]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134620);
  }

  return result;
}

unint64_t sub_1A41C42BC()
{
  result = qword_1EB134628;
  if (!qword_1EB134628)
  {
    sub_1A41C2D04(255);
    sub_1A41B8384(&qword_1EB134630, sub_1A41C2D2C, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134628);
  }

  return result;
}

uint64_t sub_1A41C437C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A41C441C(int a1, id a2)
{
  if (a2)
  {
    v4 = a2;
    v5 = sub_1A524D244();
    v6 = *sub_1A3CAA3FC();
    if (os_log_type_enabled(v6, v5))
    {
      v7 = v6;
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      *v8 = 138412290;
      v10 = a2;
      v11 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 4) = v11;
      *v9 = v11;
      _os_log_impl(&dword_1A3C1C000, v7, v5, "Failed to subscribe to shared stream: %@", v8, 0xCu);
      sub_1A3CB65E4(v9);
      MEMORY[0x1A590EEC0](v9, -1, -1);
      MEMORY[0x1A590EEC0](v8, -1, -1);
    }

    v19 = *(v2 + 96);
    v18.n128_u8[0] = 1;
    v12 = MEMORY[0x1E6981790];
    sub_1A41C57B0(0, &unk_1EB134658, &type metadata for SharedAlbumInvitationView.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    v13 = sub_1A3C38BD4(0xD000000000000046);
    v19 = *(v2 + 72);
    v20 = *(v2 + 88);
    v18.n128_u64[0] = v13;
    v18.n128_u64[1] = v14;
    sub_1A41C57B0(0, &unk_1EB13A670, MEMORY[0x1E69E6158], v12);
    sub_1A524B6B4();
    v18 = *(v2 + 56);
    v19 = v18;
    v17[15] = 1;
    v21 = v18.n128_u64[1];
    v15 = MEMORY[0x1E69E6370];
    sub_1A41C56E4(&v21, v17, &qword_1EB1248C0, &unk_1EB1248D0, MEMORY[0x1E69E6370], v18);
    sub_1A41C57B0(0, &qword_1EB1274B0, v15, v12);
    sub_1A524B6B4();

    sub_1A41C5754(&v19, &qword_1EB1274B0, v15, v12, v16);
  }
}

void sub_1A41C4658(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, __n128 a5)
{
  if (!*a2)
  {
    sub_1A41C57B0(255, a3, a4, MEMORY[0x1E697DB98]);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A41C46C4(uint64_t a1, __n128 a2)
{
  sub_1A41C4658(0, &qword_1EB134678, &unk_1EB134680, MEMORY[0x1E69E6158], a2);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A41C475C()
{
  result = qword_1EB134690;
  if (!qword_1EB134690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134690);
  }

  return result;
}

unint64_t sub_1A41C47B4()
{
  result = qword_1EB134698;
  if (!qword_1EB134698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134698);
  }

  return result;
}

unint64_t sub_1A41C480C()
{
  result = qword_1EB1346A0;
  if (!qword_1EB1346A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346A0);
  }

  return result;
}

unint64_t sub_1A41C4864()
{
  result = qword_1EB1346A8;
  if (!qword_1EB1346A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346A8);
  }

  return result;
}

unint64_t sub_1A41C48BC()
{
  result = qword_1EB1346B0;
  if (!qword_1EB1346B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346B0);
  }

  return result;
}

unint64_t sub_1A41C495C()
{
  result = qword_1EB1346C0;
  if (!qword_1EB1346C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346C0);
  }

  return result;
}

unint64_t sub_1A41C49B4()
{
  result = qword_1EB1346C8;
  if (!qword_1EB1346C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346C8);
  }

  return result;
}

unint64_t sub_1A41C4A0C()
{
  result = qword_1EB1346D0;
  if (!qword_1EB1346D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346D0);
  }

  return result;
}

unint64_t sub_1A41C4A64()
{
  result = qword_1EB1346D8;
  if (!qword_1EB1346D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346D8);
  }

  return result;
}

unint64_t sub_1A41C4ABC()
{
  result = qword_1EB1346E0;
  if (!qword_1EB1346E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346E0);
  }

  return result;
}

unint64_t sub_1A41C4B14()
{
  result = qword_1EB1346E8;
  if (!qword_1EB1346E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346E8);
  }

  return result;
}

unint64_t sub_1A41C4BF8()
{
  result = qword_1EB1346F8;
  if (!qword_1EB1346F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1346F8);
  }

  return result;
}

unint64_t sub_1A41C4C98()
{
  result = qword_1EB134708;
  if (!qword_1EB134708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134708);
  }

  return result;
}

uint64_t sub_1A41C4D08(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A41C4D50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1A41C4DC4(uint64_t a1)
{
  sub_1A41C2B38(319, &qword_1EB1343D8, type metadata accessor for SharedLibraryInvitationViewModel, sub_1A41C2940);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A41C4F38(uint64_t a1)
{
  sub_1A41C2B38(319, &qword_1EB134410, type metadata accessor for SharedAlbumsInvitationsViewModel, sub_1A41C2A9C);
  if (v1 <= 0x3F)
  {
    sub_1A41BB83C(319, &qword_1EB1343E8, sub_1A41BBCB0, MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      sub_1A41C2AD0(319, &qword_1EB134400, &qword_1EB1343F8, off_1E771DDB0, MEMORY[0x1E695C070]);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_1A41C51A8(uint64_t a1)
{
  sub_1A41C2AD0(319, &qword_1EB134418, &qword_1EB126AC0, 0x1E6978650, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    sub_1A41C57B0(319, &qword_1EB1249C8, MEMORY[0x1E69E6158], MEMORY[0x1E695C070]);
    if (v2 <= 0x3F)
    {
      sub_1A41C2AD0(319, &qword_1EB134438, &qword_1EB12C1B0, off_1E771F698, MEMORY[0x1E695C070]);
      if (v3 <= 0x3F)
      {
        sub_1A41C57B0(319, &qword_1EB128B30, MEMORY[0x1E69E6370], MEMORY[0x1E695C070]);
        if (v4 <= 0x3F)
        {
          sub_1A41C2AD0(319, &qword_1EB134458, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E695C070]);
          if (v5 <= 0x3F)
          {
            swift_updateClassMetadata2();
          }
        }
      }
    }
  }
}

uint64_t sub_1A41C53FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 144))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1A41C5444(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 136) = 0;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 144) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 144) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A41C5530(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41C55E0()
{
  result = qword_1EB134798;
  if (!qword_1EB134798)
  {
    sub_1A41C4110(255);
    sub_1A41C2CD0(255);
    sub_1A41C420C();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134798);
  }

  return result;
}

unint64_t sub_1A41C5690()
{
  result = qword_1EB1347A0;
  if (!qword_1EB1347A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1347A0);
  }

  return result;
}

uint64_t sub_1A41C56E4(uint64_t a1, uint64_t a2, unint64_t *a3, unint64_t *a4, uint64_t a5, __n128 a6)
{
  sub_1A41C4658(0, a3, a4, a5, a6);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  return a2;
}

uint64_t sub_1A41C5754(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t), __n128 a5)
{
  sub_1A41C57B0(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

void sub_1A41C57B0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void *sub_1A41C5800(void *result)
{
  if (result)
  {
    v1 = result;
    sub_1A41C2AD0(0, &qword_1EB134470, &qword_1EB126630, 0x1E69DCAB8, MEMORY[0x1E6981790]);
    v2 = v1;
    return sub_1A524B6B4();
  }

  return result;
}

void sub_1A41C5888()
{
  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation, &unk_1A53232F8);
  v0 = sub_1A5247EB4();
  v1 = (*(*v0 + 128))(v0);

  [objc_opt_self() markInvitationToSharedAlbumAsSpam:v1 completionHandler:0];
}

void sub_1A41C597C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    v6 = sub_1A52483B4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t sub_1A41C59E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A41C5A48()
{
  v0 = MEMORY[0x1E6981790];
  sub_1A41C57B0(0, &unk_1EB134658, &type metadata for SharedAlbumInvitationView.SharedAlbumActiveAlert, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A41C57B0(0, &qword_1EB1274B0, MEMORY[0x1E69E6370], v0);
  return sub_1A524B6B4();
}

void sub_1A41C5B04()
{
  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation, &unk_1A53232F8);
  v0 = sub_1A5247EB4();
  v1 = (*(*v0 + 128))(v0);

  sub_1A41C0BE4(1, v1);
}

uint64_t objectdestroy_53Tm()
{
  sub_1A3C333F8(*(v0 + 16), *(v0 + 24));

  sub_1A3DD15BC(*(v0 + 112), *(v0 + 120));

  return swift_deallocObject();
}

void sub_1A41C5C6C()
{
  type metadata accessor for SharedAlbumInvitation(0);
  sub_1A41B8384(&qword_1EB134468, type metadata accessor for SharedAlbumInvitation, &unk_1A53232F8);
  v0 = sub_1A5247EB4();
  v4 = (*(*v0 + 128))(v0);

  [objc_opt_self() declineInvitationToSharedAlbum:v4 completionHandler:0];
  v1 = sub_1A5247EB4();
  v2 = *sub_1A5247EB4();
  v3 = (*(v2 + 368))();

  (*(*v1 + 376))((v3 & 1) == 0);
}

uint64_t sub_1A41C5E3C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A41C5EA4()
{
  result = qword_1EB1347C8;
  if (!qword_1EB1347C8)
  {
    sub_1A41BBD04(255, &qword_1EB1343A0, sub_1A41BBD68, MEMORY[0x1E697E288]);
    sub_1A41C5F78(&qword_1EB1347D0, sub_1A41BBD68, sub_1A41C602C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1347C8);
  }

  return result;
}

uint64_t sub_1A41C5F78(unint64_t *a1, uint64_t (*a2)(uint64_t), void (*a3)(void))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    a3();
    sub_1A41B8384(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41C602C()
{
  result = qword_1EB1347D8;
  if (!qword_1EB1347D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1347D8);
  }

  return result;
}

double sub_1A41C6080()
{
  type metadata accessor for SharedLibraryInvitationViewModel(0);
  sub_1A41B8384(&qword_1EB134310, type metadata accessor for SharedLibraryInvitationViewModel, &protocol conformance descriptor for SharedLibraryInvitationViewModel);
  v1 = sub_1A5247EB4();
  sub_1A41C2678(v1, *(v0 + 64));

  return result;
}

uint64_t sub_1A41C6134(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A41C619C(uint64_t a1)
{
  if (!qword_1EB1347E0)
  {
    type metadata accessor for SharedAlbumsInvitationsViewModel(255);
    sub_1A41B8384(&qword_1EB134318, type metadata accessor for SharedAlbumsInvitationsViewModel, &protocol conformance descriptor for SharedAlbumsInvitationsViewModel);
    v1 = sub_1A5247ED4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1347E0);
    }
  }
}

uint64_t sub_1A41C6238(uint64_t a1, uint64_t a2)
{
  sub_1A41BBD68(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A41C62E0(uint64_t a1, uint64_t a2)
{
  result = qword_1EB1347F0;
  if (!qword_1EB1347F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB1347F0);
  }

  return result;
}

uint64_t sub_1A41C634C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(v2 + 8);
  sub_1A41C62E0(0, a2);
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = v3;
  v7 = v4;

  return sub_1A52481D4();
}

void sub_1A41C63F4(uint64_t a1, uint64_t a2)
{
  if (!qword_1EB134800)
  {
    sub_1A41C62E0(255, a2);
    v2 = sub_1A52481E4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB134800);
    }
  }
}

void type metadata accessor for AVLayerVideoGravity()
{
  if (!qword_1EB134808)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1EB134808);
    }
  }
}

uint64_t sub_1A41C649C(uint64_t a1)
{
  sub_1A41C6630(&qword_1EB134828, type metadata accessor for AVLayerVideoGravity, &unk_1A5323938);
  sub_1A41C6630(&qword_1EB134830, type metadata accessor for AVLayerVideoGravity, &unk_1A53238D8);

  return sub_1A524E7E4();
}

uint64_t sub_1A41C6630(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1A41C6678(void *a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  [a1 setPlayer_];

  return [a1 setVideoGravity_];
}

double sub_1A41C66CC()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  return v0[2];
}

void sub_1A41C67E0(double a1)
{
  swift_beginAccess();
  if (v1[2] == a1)
  {
    v1[2] = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 264))(v4);
  }
}

uint64_t (*sub_1A41C68E4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28PXModelDeliveryProgressState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A41CBAA0(&qword_1EB134838, type metadata accessor for PXModelDeliveryProgressState, &unk_1A5323B70);
  sub_1A52415F4();

  v4[7] = sub_1A3E0A030(v4);
  return sub_1A41C6A34;
}

uint64_t sub_1A41C6A60()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  return v0[3];
}

uint64_t sub_1A41C6AE0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 184))();
  *a2 = result;
  return result;
}

double sub_1A41C6B74(uint64_t a1)
{
  swift_beginAccess();
  if (v1[3] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 264))(v5);
  }

  return result;
}

uint64_t (*sub_1A41C6C6C(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28PXModelDeliveryProgressState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A41CBAA0(&qword_1EB134838, type metadata accessor for PXModelDeliveryProgressState, &unk_1A5323B70);
  sub_1A52415F4();

  v4[7] = sub_1A3DE36A4(v4);
  return sub_1A41C6DBC;
}

uint64_t sub_1A41C6DC8()
{
  swift_getKeyPath();
  (*(*v0 + 256))();

  swift_beginAccess();
  return v0[4];
}

uint64_t sub_1A41C6E48@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 232))();
  *a2 = result;
  return result;
}

double sub_1A41C6EDC(uint64_t a1)
{
  swift_beginAccess();
  if (v1[4] != a1)
  {
    KeyPath = swift_getKeyPath();
    v5.n128_f64[0] = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 264))(v5);
  }

  return result;
}

uint64_t (*sub_1A41C6FD4(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  KeyPath = swift_getKeyPath();
  (*(*v1 + 256))(KeyPath);

  v4[5] = OBJC_IVAR____TtC12PhotosUICore28PXModelDeliveryProgressState___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A41CBAA0(&qword_1EB134838, type metadata accessor for PXModelDeliveryProgressState, &unk_1A5323B70);
  sub_1A52415F4();

  v4[7] = sub_1A4197AC8(v4);
  return sub_1A41C7124;
}

uint64_t sub_1A41C7270()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore28PXModelDeliveryProgressState___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void *sub_1A41C730C()
{
  v0 = swift_allocObject();
  v0[3] = 0;
  v0[4] = 0;
  v0[2] = 0;
  sub_1A5241604();
  return v0;
}

void sub_1A41C7358()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1AE678);
  __swift_project_value_buffer(v0, qword_1EB1AE678);
  sub_1A5246EF4();
}

uint64_t sub_1A41C73C8@<X0>(uint64_t a1@<X8>)
{
  sub_1A41CB7A4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15[-v7];
  v9 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController____lazy_storage___progressView;
  swift_beginAccess();
  sub_1A41CB7F8(v1 + v9, v8, sub_1A41CB7A4);
  v10 = type metadata accessor for PXModelDeliveryProgressView(0);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return sub_1A41CB8C4(v8, a1);
  }

  sub_1A41CB98C(v8, sub_1A41CB7A4);
  swift_beginAccess();
  v12 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressConfiguration;
  swift_beginAccess();
  LOBYTE(v12) = *(v1 + v12);

  sub_1A41C75EC(v13, v12, a1);
  sub_1A41CB7F8(a1, v5, type metadata accessor for PXModelDeliveryProgressView);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1A41CB860(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t sub_1A41C75EC@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1A3E75D84(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A524C634();
  v10 = PELocalizedString();

  v11 = sub_1A524C674();
  v13 = v12;

  *(a3 + 16) = v11;
  *(a3 + 24) = v13;
  v14 = sub_1A524C634();
  v15 = PELocalizedString();

  v16 = sub_1A524C674();
  v18 = v17;

  *(a3 + 32) = v16;
  *(a3 + 40) = v18;
  *(a3 + 48) = PFOSVariantHasInternalUI();
  v19 = [objc_opt_self() px_dynamicHighlightColor];
  *(a3 + 56) = sub_1A524B284();
  *(a3 + 64) = sub_1A524A254();
  sub_1A524A184();
  v20 = sub_1A524A154();
  (*(*(v20 - 8) + 56))(v8, 1, 1, v20);
  v21 = sub_1A524A1B4();
  sub_1A41CB98C(v8, sub_1A3E75D84);
  *(a3 + 72) = v21;
  v22 = *(type metadata accessor for PXModelDeliveryProgressView(0) + 48);
  *(a3 + v22) = swift_getKeyPath();
  sub_1A41CB928(0, &qword_1EB128A70, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCB8]);
  result = swift_storeEnumTagMultiPayload();
  *a3 = a1;
  *(a3 + 8) = a2;
  return result;
}

uint64_t sub_1A41C7838(uint64_t a1)
{
  sub_1A41CB7A4(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CB8C4(a1, v5);
  v6 = type metadata accessor for PXModelDeliveryProgressView(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  v7 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController____lazy_storage___progressView;
  swift_beginAccess();
  sub_1A41CB860(v5, v1 + v7);
  return swift_endAccess();
}

void (*sub_1A41C7928(uint64_t *a1))(uint64_t **a1, char a2, __n128 a3)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 48) = v1;
  sub_1A41CB7A4(0);
  v7 = *(*(v6 - 8) + 64);
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(v7);
  }

  v5[7] = v8;
  v9 = type metadata accessor for PXModelDeliveryProgressView(0);
  v5[8] = v9;
  v10 = *(v9 - 8);
  v5[9] = v10;
  if (v3)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(*(v10 + 64));
  }

  v5[10] = v11;
  sub_1A41C73C8(v11);
  return sub_1A41C7A3C;
}

void sub_1A41C7A3C(uint64_t **a1, char a2, __n128 a3)
{
  v3 = *a1;
  v4 = ((*a1)[9] + 56);
  v5 = (*a1)[10];
  v6 = (*a1)[7];
  v7 = (*a1)[8];
  v8 = (*a1)[6];
  if (a2)
  {
    sub_1A41CB7F8(v3[10], v3[7], type metadata accessor for PXModelDeliveryProgressView);
    (*v4)(v6, 0, 1, v7);
    v9 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController____lazy_storage___progressView;
    swift_beginAccess();
    sub_1A41CB860(v6, v8 + v9);
    swift_endAccess();
    sub_1A41CB98C(v5, type metadata accessor for PXModelDeliveryProgressView);
  }

  else
  {
    sub_1A41CB8C4(v3[10], v3[7]);
    (*v4)(v6, 0, 1, v7);
    v10 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController____lazy_storage___progressView;
    swift_beginAccess();
    sub_1A41CB860(v6, v8 + v10);
    swift_endAccess();
  }

  free(v5);
  free(v6);

  free(v3);
}

void sub_1A41C7BA0()
{
  v1 = v0;
  v2 = sub_1A5249F84();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = type metadata accessor for PXModelDeliveryProgressView(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = UIViewController.pxView.getter();
  v10 = [objc_opt_self() clearColor];
  [v9 setBackgroundColor_];

  if (qword_1EB1AE670 != -1)
  {
    swift_once();
  }

  v11 = sub_1A5246F24();
  __swift_project_value_buffer(v11, qword_1EB1AE678);
  v12 = sub_1A5246F04();
  v13 = sub_1A524D234();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1A3C1C000, v12, v13, "setupProgressView", v14, 2u);
    MEMORY[0x1A590EEC0](v14, -1, -1);
  }

  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x70))();
  sub_1A41CBA0C(0);
  sub_1A41CB7F8(v8, v5, type metadata accessor for PXModelDeliveryProgressView);
  v15 = PXSwiftUIHostingViewController.__allocating_init(rootView:)(v5);
  sub_1A41CB98C(v8, type metadata accessor for PXModelDeliveryProgressView);
  v16 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressHostingViewController;
  swift_beginAccess();
  v17 = *(v1 + v16);
  *(v1 + v16) = v15;
  v18 = v15;

  v19 = v18;
  v20 = UIViewController.pxView.getter();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v9;
  v22 = v20;
  v23 = v9;
  UIViewController.px_addChild(_:constraints:)(v19, sub_1A41CBAE8);

  v24 = [v19 view];

  if (v24)
  {
    [v24 invalidateIntrinsicContentSize];

    v25 = v19;
    sub_1A5249F64();
    sub_1A52495E4();

    [v23 setTranslatesAutoresizingMaskIntoConstraints_];
  }

  else
  {
    __break(1u);
  }
}

void sub_1A41C7F80(uint64_t a1, double a2)
{
  v3 = v2;
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressState;
  swift_beginAccess();
  v10 = *&v2[v9];
  v11 = 0.0;
  v12 = 1.0;
  if (a2 <= 1.0)
  {
    v12 = a2;
  }

  if (a2 >= 0.0)
  {
    v11 = v12;
  }

  if (a1 == 1)
  {
    v13 = -1.0;
  }

  else
  {
    v13 = v11;
  }

  v14 = *(*v10 + 144);

  v14(v15, v13);

  v16 = *(**&v3[v9] + 192);

  v16(a1);

  v17 = sub_1A524CCB4();
  (*(*(v17 - 8) + 56))(v8, 1, 1, v17);
  sub_1A524CC54();
  v18 = v3;
  v19 = sub_1A524CC44();
  v20 = swift_allocObject();
  v21 = MEMORY[0x1E69E85E0];
  v20[2] = v19;
  v20[3] = v21;
  v20[4] = v18;
  sub_1A3EA52F4(0, 0, v8, &unk_1A5323A80, v20);
}

uint64_t sub_1A41C8178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[9] = a1;
  v4[10] = a4;
  v4[11] = sub_1A524CC54();
  v4[12] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v4[13] = v6;
  v4[14] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A41C8214, v6, v5);
}

uint64_t sub_1A41C8214()
{
  swift_unknownObjectWeakInit();

  return MEMORY[0x1EEE6DFA0](sub_1A41C8280, 0, 0);
}

uint64_t sub_1A41C8280(__n128 a1)
{
  *(v1 + 120) = sub_1A524CC44();
  v3 = sub_1A524CBC4();

  return MEMORY[0x1EEE6DFA0](sub_1A41C830C, v3, v2);
}

uint64_t sub_1A41C830C()
{

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    v3 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressHostingViewController;
    swift_beginAccess();
    v4 = *&v2[v3];
    v5 = v4 == 0;
    if (v4)
    {
      v6 = v4;

      v2 = [v6 view];
      if (!v2)
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v7, v8, v9);
      }

      [v2 invalidateIntrinsicContentSize];
    }
  }

  else
  {
    v5 = 1;
  }

  **(v0 + 72) = v5;
  MEMORY[0x1A590F020](v0 + 64);
  v8 = *(v0 + 104);
  v9 = *(v0 + 112);
  v7 = sub_1A41C8428;

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1A41C8428()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A41C84EC(char a1)
{
  v2 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressConfiguration;
  v3 = (a1 & 1) != 0;
  swift_beginAccess();
  *(v1 + v2) = v3;
  v4 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressHostingViewController;
  swift_beginAccess();
  v5 = *(v1 + v4);
  if (v5)
  {
    v6 = [v5 view];
    if (v6)
    {
      v7 = v6;
      [v6 invalidateIntrinsicContentSize];
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1A41C85F4(uint64_t a1)
{
  v2 = v1;
  if (qword_1EB1AE670 != -1)
  {
    swift_once();
  }

  v4 = sub_1A5246F24();
  __swift_project_value_buffer(v4, qword_1EB1AE678);
  v5 = sub_1A5246F04();
  v6 = sub_1A524D234();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134217984;
    *(v7 + 4) = a1;
    _os_log_impl(&dword_1A3C1C000, v5, v6, "setErrorState: %ld", v7, 0xCu);
    MEMORY[0x1A590EEC0](v7, -1, -1);
  }

  v8 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressState;
  swift_beginAccess();
  v9 = *(**(v2 + v8) + 240);

  v9(a1);

  v10 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressHostingViewController;
  swift_beginAccess();
  v11 = *(v2 + v10);
  if (v11)
  {
    v12 = [v11 view];
    if (v12)
    {
      v13 = v12;
      [v12 invalidateIntrinsicContentSize];
    }

    else
    {
      __break(1u);
    }
  }
}

id sub_1A41C87F0(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController____lazy_storage___progressView;
  v7 = type metadata accessor for PXModelDeliveryProgressView(0);
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v8 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressState;
  type metadata accessor for PXModelDeliveryProgressState(0);
  v9 = swift_allocObject();
  v9[3] = 0;
  v9[4] = 0;
  v9[2] = 0;
  sub_1A5241604();
  *&v3[v8] = v9;
  v3[OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressConfiguration] = 0;
  *&v3[OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressHostingViewController] = 0;
  if (a2)
  {
    v10 = sub_1A524C634();
  }

  else
  {
    v10 = 0;
  }

  v13.receiver = v3;
  v13.super_class = type metadata accessor for PXModelDeliveryProgressViewController(0);
  v11 = objc_msgSendSuper2(&v13, sel_initWithNibName_bundle_, v10, a3);

  return v11;
}

id sub_1A41C8984(void *a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController____lazy_storage___progressView;
  v4 = type metadata accessor for PXModelDeliveryProgressView(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  v5 = OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressState;
  type metadata accessor for PXModelDeliveryProgressState(0);
  v6 = swift_allocObject();
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  sub_1A5241604();
  *&v1[v5] = v6;
  v1[OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressConfiguration] = 0;
  *&v1[OBJC_IVAR____TtC12PhotosUICore37PXModelDeliveryProgressViewController_progressHostingViewController] = 0;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for PXModelDeliveryProgressViewController(0);
  v7 = objc_msgSendSuper2(&v9, sel_initWithCoder_, a1);

  if (v7)
  {
  }

  return v7;
}

id sub_1A41C8AB4(uint64_t a1, uint64_t a2)
{
  v4.receiver = v2;
  v4.super_class = type metadata accessor for PXModelDeliveryProgressViewController(0);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1A41C8B5C(uint64_t a1@<X8>)
{
  v2 = v1;
  v20[3] = a1;
  sub_1A41CBDE8(0);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A41CCF4C(0);
  v5 = *(v4 - 8);
  v20[1] = v4;
  v20[2] = v5;
  MEMORY[0x1EEE9AC00](v4);
  sub_1A41CBE24(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = (*(**v1 + 232))(v7);
  v12 = sub_1A41C8FAC(v10, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;
  *v9 = sub_1A5249574();
  *(v9 + 1) = 0;
  v9[16] = 1;
  sub_1A41CD34C(0);
  sub_1A41C9184(v2, v12, v14, v16, v18, &v9[*(v19 + 44)]);
}

id sub_1A41C8FAC(uint64_t a1, __n128 a2)
{
  if (a1 <= 2)
  {
    if (a1 != 1)
    {
      v2 = 0;
      if (a1 != 2)
      {
        return v2;
      }
    }

    goto LABEL_11;
  }

  if (a1 != 3)
  {
    v2 = 0;
    if (a1 != 4)
    {
      return v2;
    }

LABEL_11:
    v5 = sub_1A524C634();
    v6 = PELocalizedString();

    v2 = sub_1A524C674();
    v7 = sub_1A524C634();
    v8 = PELocalizedString();

    sub_1A524C674();
    return v2;
  }

  result = MobileGestalt_get_current_device();
  if (result)
  {
    v4 = result;
    MobileGestalt_get_wapiCapability();

    goto LABEL_11;
  }

  __break(1u);
  return result;
}

void sub_1A41C9184(uint64_t **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v116 = a4;
  v117 = a5;
  *&v115 = a2;
  *(&v115 + 1) = a3;
  v126 = a6;
  v127 = a1;
  v6 = MEMORY[0x1E697F948];
  sub_1A41CBEFC(0, &qword_1EB134A28, sub_1A41CC40C, sub_1A41CCB04, MEMORY[0x1E697F948]);
  v119 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v121 = &v82 - v8;
  sub_1A41CC40C(0);
  v120 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v105 = &v82 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A52498E4();
  v101 = *(v11 - 8);
  v102 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v100 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CCAB0(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v98 = *(v13 - 8);
  v99 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v95 = &v82 - v15;
  sub_1A41CC9B0(0, v14);
  v96 = *(v16 - 8);
  v97 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v94 = &v82 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CC91C(0, v17);
  v93 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v92 = &v82 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CC8D4(0);
  v91 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v103 = &v82 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v90 = &v82 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v104 = &v82 - v26;
  sub_1A41CC3C4(0);
  v125 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v118 = &v82 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CBEFC(0, &qword_1EB134A30, sub_1A41CBF80, sub_1A41CC3C4, v6);
  v122 = v29;
  MEMORY[0x1EEE9AC00](v29);
  v124 = &v82 - v30;
  sub_1A41CBF80(0);
  v123 = v31;
  MEMORY[0x1EEE9AC00](v31);
  v113 = (&v82 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v111 = sub_1A5249B14();
  v87 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v86 = &v82 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CC170(0);
  v112 = v34;
  v88 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v114 = &v82 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CBEFC(0, &qword_1EB134A38, sub_1A41CC06C, sub_1A41CC170, v6);
  v108 = v36;
  MEMORY[0x1EEE9AC00](v36);
  v110 = &v82 - v37;
  v109 = sub_1A5249CC4();
  v84 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v82 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A411848C();
  v40 = v39;
  v107 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v82 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CC06C(0);
  v44 = v43;
  v85 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v46 = &v82 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41CC024(0);
  MEMORY[0x1EEE9AC00](v47 - 8);
  v49 = &v82 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = MEMORY[0x1EEE9AC00](v50);
  v53 = &v82 - v52;
  v54 = *v127;
  v55 = **v127;
  v56 = *(v55 + 232);
  v57 = v55 + 232;
  if ((v56)(v51))
  {
    if (v56() == 1)
    {
      v114 = sub_1A5249314();
      v129 = v115;
      sub_1A3D5F9DC();
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v112 = v57;
    v113 = v56;
    v89 = v54;
    v114 = sub_1A5249314();
    v129 = v115;
    sub_1A3D5F9DC();
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v58 = v106;
  v83 = v46;
  v59 = v114;
  v119 = v44;
  v120 = v49;
  v121 = v53;
  v60 = (*(*v54 + 184))();
  v89 = v54;
  if (v60 == 1)
  {
    sub_1A5248074();
    v61 = v58;
    sub_1A5249CB4();
    v62 = sub_1A41CBAA0(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
    v63 = sub_1A41CBAA0(&qword_1EB134898, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
    v64 = v83;
    v65 = v40;
    v66 = v109;
    sub_1A524A8B4();
    (*(v84 + 8))(v61, v66);
    (*(v107 + 8))(v42, v65);
    v67 = v85;
    v68 = v119;
    (*(v85 + 16))(v110, v64, v119);
    swift_storeEnumTagMultiPayload();
    *&v129 = v65;
    *(&v129 + 1) = v66;
    *&v130 = v62;
    *(&v130 + 1) = v63;
    swift_getOpaqueTypeConformance2();
    v69 = sub_1A41CBAA0(&qword_1EB1348A8, MEMORY[0x1E697C8B8], MEMORY[0x1E697C8B0]);
    *&v129 = v65;
    *(&v129 + 1) = v111;
    *&v130 = v62;
    *(&v130 + 1) = v69;
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    (*(v67 + 8))(v83, v68);
    v70 = v127;
  }

  else
  {
    *&v129 = (*(*v54 + 136))();
    BYTE8(v129) = 0;
    v128[0] = 0x3FF0000000000000;
    sub_1A3F93828();
    v71 = v42;
    sub_1A5248064();
    v70 = v127;

    v72 = v86;
    sub_1A5249B04();
    v117 = sub_1A41CBAA0(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
    v118 = sub_1A41CBAA0(&qword_1EB1348A8, MEMORY[0x1E697C8B8], MEMORY[0x1E697C8B0]);
    v73 = v59;
    v74 = v111;
    sub_1A524A8B4();
    (*(v87 + 8))(v72, v74);
    (*(v107 + 8))(v71, v40);
    v75 = v88;
    v76 = v112;
    (*(v88 + 16))(v110, v73, v112);
    swift_storeEnumTagMultiPayload();
    v77 = sub_1A41CBAA0(&qword_1EB134898, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
    *&v129 = v40;
    *(&v129 + 1) = v109;
    v78 = v117;
    *&v130 = v117;
    *(&v130 + 1) = v77;
    swift_getOpaqueTypeConformance2();
    *&v129 = v40;
    *(&v129 + 1) = v74;
    v130 = __PAIR128__(v118, v78);
    swift_getOpaqueTypeConformance2();
    sub_1A5249744();
    (*(v75 + 8))(v114, v76);
  }

  v79 = sub_1A524BC74();
  v118 = v80;
  v119 = v79;
  v81 = v70[3];
  *&v129 = v70[2];
  *(&v129 + 1) = v81;
  sub_1A3D5F9DC();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

id sub_1A41CB310()
{
  if (qword_1EB1AE670 != -1)
  {
    swift_once();
  }

  v0 = sub_1A5246F24();
  __swift_project_value_buffer(v0, qword_1EB1AE678);
  v1 = sub_1A5246F04();
  v2 = sub_1A524D234();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1A3C1C000, v1, v2, "Launching storage panel by request of user", v3, 2u);
    MEMORY[0x1A590EEC0](v3, -1, -1);
  }

  v4 = objc_opt_self();

  return [v4 navigateToDestination:2 completion:0];
}

void sub_1A41CB418(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a1;
  v3 = sub_1A524BBA4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A524BB94();
  sub_1A41CD068(0);
  v8 = a2 + *(v7 + 36);
  sub_1A524BBC4();
  (*(v4 + 8))(v6, v3);
  sub_1A41CD0B0(0);
  v10 = v9;
  v11 = (v8 + *(v9 + 52));
  v12 = sub_1A5248A14();
  v13 = *(v12 + 20);
  v14 = *MEMORY[0x1E697F468];
  v15 = sub_1A52494A4();
  v16 = *(*(v15 - 8) + 104);
  v16(&v11[v13], v14, v15);
  __asm { FMOV            V0.2D, #20.0 }

  v25 = _Q0;
  *v11 = _Q0;
  *(v8 + *(v10 + 56)) = 256;
  sub_1A41CDB10(v26, a2, sub_1A41CBDE8);
  sub_1A41CBEFC(0, &qword_1EB1349B8, sub_1A41CD068, sub_1A3E42C88, MEMORY[0x1E697E830]);
  v23 = (a2 + *(v22 + 36));
  v16(&v23[*(v12 + 20)], v14, v15);
  *v23 = v25;
  sub_1A3E42C88(0);
  *&v23[*(v24 + 36)] = 256;
}

void sub_1A41CB648(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1A41CD44C(0);
  v5 = a2 + *(v4 + 36);
  sub_1A524BBB4();
  v6 = sub_1A524A064();
  sub_1A41CD494(0);
  *(v5 + *(v7 + 36)) = v6;
  sub_1A41CCF4C(0);
  (*(*(v8 - 8) + 16))(a2, a1, v8);
  sub_1A41CBEFC(0, &qword_1EB1349F8, sub_1A41CD44C, sub_1A3E42C88, MEMORY[0x1E697E830]);
  v10 = (a2 + *(v9 + 36));
  v11 = *(sub_1A5248A14() + 20);
  v12 = *MEMORY[0x1E697F468];
  v13 = sub_1A52494A4();
  (*(*(v13 - 8) + 104))(&v10[v11], v12, v13);
  __asm { FMOV            V0.2D, #20.0 }

  *v10 = _Q0;
  sub_1A3E42C88(0);
  *&v10[*(v19 + 36)] = 256;
}

uint64_t sub_1A41CB7F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41CB860(uint64_t a1, uint64_t a2)
{
  sub_1A41CB7A4(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A41CB8C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PXModelDeliveryProgressView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A41CB928(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1A41CB98C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A41CBA0C(uint64_t a1)
{
  if (!qword_1EB134848)
  {
    v2 = type metadata accessor for PXModelDeliveryProgressView(255);
    v3 = sub_1A41CBAA0(&qword_1EB134850, type metadata accessor for PXModelDeliveryProgressView, &unk_1A5323B20);
    v5 = type metadata accessor for PXSwiftUIHostingViewController(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1EB134848);
    }
  }
}

uint64_t sub_1A41CBAA0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A41CBAE8()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  sub_1A41CDBE0(0, &qword_1EB126180, MEMORY[0x1E69E7C98] + 8, MEMORY[0x1E69E6F90]);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1A531C940;
  v4 = [v2 topAnchor];
  v5 = [v1 safeAreaLayoutGuide];
  v6 = [v5 topAnchor];

  v7 = [v4 constraintEqualToAnchor_];
  *(v3 + 32) = v7;
  v8 = [v2 rightAnchor];
  v9 = [v1 safeAreaLayoutGuide];
  v10 = [v9 rightAnchor];

  v11 = [v8 constraintEqualToAnchor_];
  *(v3 + 40) = v11;
  v12 = [v2 leftAnchor];
  v13 = [v1 safeAreaLayoutGuide];
  v14 = [v13 leftAnchor];

  v15 = [v12 constraintEqualToAnchor_];
  *(v3 + 48) = v15;
  v16 = [v2 bottomAnchor];
  v17 = [v1 safeAreaLayoutGuide];
  v18 = [v17 bottomAnchor];

  v19 = [v16 constraintEqualToAnchor_];
  *(v3 + 56) = v19;
  return v3;
}

uint64_t sub_1A41CBD48(uint64_t a1)
{
  v4 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1A3D60150;

  return sub_1A41C8178(a1, v5, v6, v4);
}

void sub_1A41CBE54(uint64_t a1)
{
  if (!qword_1EB134868)
  {
    sub_1A41CBEFC(255, &qword_1EB134870, sub_1A41CBF80, sub_1A41CC3C4, MEMORY[0x1E697F960]);
    sub_1A41CCD7C();
    v1 = sub_1A524B894();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134868);
    }
  }
}

void sub_1A41CBEFC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A41CBFB4(uint64_t a1, double a2)
{
  if (!qword_1EB134880)
  {
    sub_1A41CC024(255);
    sub_1A41CC274(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v3)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB134880);
    }
  }
}

void sub_1A41CC06C(uint64_t a1)
{
  if (!qword_1EB134890)
  {
    sub_1A411848C();
    sub_1A5249CC4();
    sub_1A41CBAA0(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
    sub_1A41CBAA0(&qword_1EB134898, MEMORY[0x1E697C9C8], MEMORY[0x1E697C9B0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB134890);
    }
  }
}

void sub_1A41CC170(uint64_t a1)
{
  if (!qword_1EB1348A0)
  {
    sub_1A411848C();
    sub_1A5249B14();
    sub_1A41CBAA0(&qword_1EB1289A0, sub_1A411848C, MEMORY[0x1E697BF38]);
    sub_1A41CBAA0(&qword_1EB1348A8, MEMORY[0x1E697C8B8], MEMORY[0x1E697C8B0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1348A0);
    }
  }
}

void sub_1A41CC2EC(uint64_t a1)
{
  if (!qword_1EB1348C0)
  {
    sub_1A41CBEFC(255, &qword_1EB1348C8, sub_1A4137648, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    sub_1A41CCAB0(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1348C0);
    }
  }
}

void sub_1A41CC40C(uint64_t a1)
{
  if (!qword_1EB1348D8)
  {
    sub_1A41CCBA0(255, &qword_1EB1348E0, sub_1A41CC4A8, sub_1A41CC700, sub_1A41CC8D4);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1348D8);
    }
  }
}

void sub_1A41CC4D8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t a5)
{
  if (!*a2)
  {
    a3(255);
    sub_1A41CDBE0(255, a4, a5, MEMORY[0x1E6980A08]);
    v8 = sub_1A5248804();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_1A41CC5D8(uint64_t a1)
{
  if (!qword_1EB134900)
  {
    sub_1A41CC66C(255);
    sub_1A41CBAA0(&qword_1EB134918, sub_1A41CC66C, MEMORY[0x1E6981F48]);
    v1 = sub_1A524B784();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134900);
    }
  }
}

void sub_1A41CC6A0()
{
  if (!qword_1EB134910)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB134910);
    }
  }
}

void sub_1A41CC784(uint64_t a1)
{
  if (!qword_1EB134930)
  {
    sub_1A41CC800(255, &qword_1EB134938, sub_1A41CC898);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134930);
    }
  }
}

void sub_1A41CC800(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_1A41CCAB0(255, &qword_1EB127AE0, MEMORY[0x1E697FE80], MEMORY[0x1E697FE70], MEMORY[0x1E6980480]);
    v4 = sub_1A5248804();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_1A41CC91C(uint64_t a1, double a2)
{
  if (!qword_1EB134950)
  {
    sub_1A41CC9B0(255, a2);
    sub_1A41CCAB0(255, &qword_1EB127AD0, MEMORY[0x1E69815C0], MEMORY[0x1E6981568], MEMORY[0x1E6980480]);
    v2 = sub_1A5248804();
    if (!v3)
    {
      atomic_store(v2, &qword_1EB134950);
    }
  }
}

void sub_1A41CC9B0(uint64_t a1, double a2)
{
  if (!qword_1EB134958)
  {
    sub_1A41CCAB0(255, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
    sub_1A52498E4();
    sub_1A3D6E520();
    sub_1A41CBAA0(&qword_1EB141DF0, MEMORY[0x1E697C720], MEMORY[0x1E697C718]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v3)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB134958);
    }
  }
}

void sub_1A41CCAB0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1A41CCB04(uint64_t a1)
{
  if (!qword_1EB134960)
  {
    sub_1A41CCBA0(255, &qword_1EB134968, sub_1A41CC590, sub_1A41CCC3C, sub_1A41CCCE0);
    v1 = sub_1A524BE24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134960);
    }
  }
}

void sub_1A41CCBA0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    a4(255);
    a5(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v9)
    {
      atomic_store(TupleTypeMetadata3, a2);
    }
  }
}

void sub_1A41CCC3C(uint64_t a1)
{
  if (!qword_1EB134970)
  {
    sub_1A41CBEFC(255, &qword_1EB134978, sub_1A41CC898, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134970);
    }
  }
}

void sub_1A41CCCE0(uint64_t a1)
{
  if (!qword_1EB134980)
  {
    sub_1A41CBEFC(255, &qword_1EB134978, sub_1A41CC898, sub_1A3EC18C4, MEMORY[0x1E697E830]);
    v1 = sub_1A524DF24();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134980);
    }
  }
}

unint64_t sub_1A41CCD7C()
{
  result = qword_1EB134988;
  if (!qword_1EB134988)
  {
    sub_1A41CBEFC(255, &qword_1EB134870, sub_1A41CBF80, sub_1A41CC3C4, MEMORY[0x1E697F960]);
    sub_1A41CBAA0(&qword_1EB134990, sub_1A41CBF80, MEMORY[0x1E6981F48]);
    sub_1A41CCE70();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134988);
  }

  return result;
}

unint64_t sub_1A41CCE70()
{
  result = qword_1EB134998;
  if (!qword_1EB134998)
  {
    sub_1A41CC3C4(255);
    v1 = MEMORY[0x1E6981F48];
    sub_1A41CBAA0(&qword_1EB1349A0, sub_1A41CC40C, MEMORY[0x1E6981F48]);
    sub_1A41CBAA0(&qword_1EB1349A8, sub_1A41CCB04, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134998);
  }

  return result;
}

void sub_1A41CCF4C(uint64_t a1)
{
  if (!qword_1EB1349B0)
  {
    sub_1A41CBDE8(255);
    sub_1A41CBEFC(255, &qword_1EB1349B8, sub_1A41CD068, sub_1A3E42C88, MEMORY[0x1E697E830]);
    sub_1A41CD16C();
    sub_1A41CD53C(&qword_1EB1349E0, &qword_1EB1349B8, sub_1A41CD068, sub_1A41CD29C);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB1349B0);
    }
  }
}

void sub_1A41CD0B0(uint64_t a1)
{
  if (!qword_1EB122090)
  {
    sub_1A524BBF4();
    sub_1A5248A14();
    sub_1A41CBAA0(&qword_1EB128090, MEMORY[0x1E697EAF0], MEMORY[0x1E697EAD0]);
    v1 = sub_1A5249FC4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB122090);
    }
  }
}

unint64_t sub_1A41CD16C()
{
  result = qword_1EB1349C8;
  if (!qword_1EB1349C8)
  {
    sub_1A41CBDE8(255);
    sub_1A41CD1EC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1349C8);
  }

  return result;
}

unint64_t sub_1A41CD1EC()
{
  result = qword_1EB1349D0;
  if (!qword_1EB1349D0)
  {
    sub_1A41CBE24(255);
    sub_1A41CBAA0(&qword_1EB1349D8, sub_1A41CBE54, MEMORY[0x1E6981870]);
    sub_1A4010C90();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1349D0);
  }

  return result;
}

unint64_t sub_1A41CD29C()
{
  result = qword_1EB1349E8;
  if (!qword_1EB1349E8)
  {
    sub_1A41CD068(255);
    sub_1A41CD16C();
    sub_1A41CBAA0(&qword_1EB122098, sub_1A41CD0B0, MEMORY[0x1E6980BA8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1349E8);
  }

  return result;
}

void sub_1A41CD34C(uint64_t a1)
{
  if (!qword_1EB1349F0)
  {
    sub_1A41CBEFC(255, &qword_1EB134870, sub_1A41CBF80, sub_1A41CC3C4, MEMORY[0x1E697F960]);
    v1 = sub_1A52483B4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1349F0);
    }
  }
}

void sub_1A41CD4D0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a5(a1, v9, a4);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

uint64_t sub_1A41CD53C(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t), void (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1A41CBEFC(255, a2, a3, sub_1A3E42C88, MEMORY[0x1E697E830]);
    a4();
    sub_1A41CBAA0(&qword_1EB128A00, sub_1A3E42C88, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41CD614()
{
  result = qword_1EB134A10;
  if (!qword_1EB134A10)
  {
    sub_1A41CD44C(255);
    sub_1A41CBDE8(255);
    sub_1A41CBEFC(255, &qword_1EB1349B8, sub_1A41CD068, sub_1A3E42C88, MEMORY[0x1E697E830]);
    sub_1A41CD16C();
    sub_1A41CD53C(&qword_1EB1349E0, &qword_1EB1349B8, sub_1A41CD068, sub_1A41CD29C);
    swift_getOpaqueTypeConformance2();
    sub_1A41CBAA0(&qword_1EB127B08, sub_1A41CD494, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134A10);
  }

  return result;
}

uint64_t sub_1A41CD78C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A41CD7F0()
{
  result = qword_1EB134A18;
  if (!qword_1EB134A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134A18);
  }

  return result;
}

uint64_t sub_1A41CD868(uint64_t a1)
{
  result = sub_1A5241614();
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

void sub_1A41CD924(uint64_t a1)
{
  sub_1A41CB7A4(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1A41CD9FC(uint64_t a1)
{
  type metadata accessor for PXModelDeliveryProgressState(319);
  if (v1 <= 0x3F)
  {
    sub_1A41CB928(319, &qword_1EB128A30, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1A41CDB10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A41CDB78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1A41CDBE0(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A41CDC30()
{
  sub_1A3C52C70(0, &qword_1EB12B140, 0x1E69E9BF8);
  sub_1A524C814();
  result = sub_1A524DEE4();
  qword_1EB1EBBE8 = result;
  return result;
}

uint64_t sub_1A41CDC9C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1EBBF0);
  __swift_project_value_buffer(v0, qword_1EB1EBBF0);
  if (qword_1EB1AEA10 != -1)
  {
    swift_once();
  }

  v1 = qword_1EB1EBBE8;
  return sub_1A5246F34();
}

uint64_t sub_1A41CDD60()
{
  v0 = sub_1A5246F24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5246E94();
  __swift_allocate_value_buffer(v4, qword_1EB1EBC08);
  __swift_project_value_buffer(v4, qword_1EB1EBC08);
  if (qword_1EB1AEA18 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EB1EBBF0);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1A5246E64();
}

uint64_t sub_1A41CDED4(void *a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4)
{
  if (*a1 == -1)
  {
    v5 = a2(0);
  }

  else
  {
    swift_once();
    v5 = a2(0);
  }

  return __swift_project_value_buffer(v5, a3);
}

id ParallaxImageViewWrapper.makeUIView(context:)()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DD250]) initWithFrame_];

  v4 = [v3 layer];
  [v4 setContents_];

  if (v1)
  {
    sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);

    v5 = sub_1A524DBC4();
    [v3 setBackgroundColor_];
  }

  return v3;
}

void ParallaxImageViewWrapper.updateUIView(_:context:)(void *a1)
{
  v4 = *v1;
  v3 = v1[1];

  v5 = [a1 layer];
  [v5 setContents_];

  if (v3)
  {
    sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);

    v6 = sub_1A524DBC4();
    [a1 setBackgroundColor_];
  }
}

uint64_t sub_1A41CE0F4@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t sub_1A41CE100()
{
  result = qword_1EB134A40;
  if (!qword_1EB134A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134A40);
  }

  return result;
}

void sub_1A41CE158(void *a1)
{
  v4 = *v1;
  v3 = v1[1];

  v5 = [a1 layer];
  [v5 setContents_];

  if (v3)
  {
    sub_1A3C52C70(0, &qword_1EB1205C0, 0x1E69DC888);

    v6 = sub_1A524DBC4();
    [a1 setBackgroundColor_];
  }
}

uint64_t sub_1A41CE238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A41CE348();

  return MEMORY[0x1EEDDAA28](a1, a2, a3, v6);
}

uint64_t sub_1A41CE29C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A41CE348();

  return MEMORY[0x1EEDDA9B8](a1, a2, a3, v6);
}

void sub_1A41CE300(uint64_t a1)
{
  sub_1A41CE348();
  sub_1A52496F4();
  __break(1u);
}

unint64_t sub_1A41CE348()
{
  result = qword_1EB134A48;
  if (!qword_1EB134A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134A48);
  }

  return result;
}

unint64_t sub_1A41CE3A8()
{
  result = sub_1A41D2A40(MEMORY[0x1E69E7CC0]);
  qword_1EB167BF8 = result;
  return result;
}

uint64_t sub_1A41CE3DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  sub_1A3D6CDE0(0);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D2FBC(0, &qword_1EB122D40, sub_1A3D6CE98, sub_1A3D6CDE0, MEMORY[0x1E697F948]);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  sub_1A3D6CE98(0);
  v12 = v11;
  v13 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (shouldUseNewCollectionsLayout()())
  {
    v18 = a1;
    sub_1A3CA3BA4(0, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
    sub_1A3CA39F8(&qword_1EB1290D0, MEMORY[0x1E69C24A0]);
    sub_1A3CA39F8(&qword_1EB124D98, MEMORY[0x1E69C2488]);

    sub_1A5242894();
    (*(v13 + 16))(v10, v15, v12);
    swift_storeEnumTagMultiPayload();
    sub_1A41D2ED0(&unk_1EB124EA0, sub_1A3D6CE98, MEMORY[0x1E69C1FE0]);
    sub_1A41D2ED0(&qword_1EB128FF8, sub_1A3D6CDE0, MEMORY[0x1E69C28F8]);
    sub_1A5249744();
    return (*(v13 + 8))(v15, v12);
  }

  else
  {
    v18 = a1;
    sub_1A3CA3BA4(0, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
    sub_1A3CA39F8(&qword_1EB1290D0, MEMORY[0x1E69C24A0]);

    sub_1A5243E44();
    (*(v5 + 16))(v10, v7, v4);
    swift_storeEnumTagMultiPayload();
    sub_1A41D2ED0(&unk_1EB124EA0, sub_1A3D6CE98, MEMORY[0x1E69C1FE0]);
    sub_1A41D2ED0(&qword_1EB128FF8, sub_1A3D6CDE0, MEMORY[0x1E69C28F8]);
    sub_1A5249744();
    return (*(v5 + 8))(v7, v4);
  }
}

void sub_1A41CE888(uint64_t a1@<X0>, uint64_t a2@<X2>, char a3@<W3>, void *a4@<X8>)
{
  if (MEMORY[0x1A590D320]())
  {
    v8 = *(a1 + 16);
    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(a4);
  }

  v10 = a2;
  v11 = a3;
  v9 = sub_1A3C4433C();
  sub_1A3C66934(&v10, &type metadata for LemonadeMediaTypesFeature.ShelfProvider, v9);

  LemonadePhotosPagingAssetCollectionGridConfiguration.init(itemListManager:initialItem:defaultSectionBodyStyle:selectionCoordinator:)(a4);
}

void sub_1A41CE9A0(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  if ([a1 px_isMediaTypesFolder])
  {
    v9 = sub_1A42E6C64(a3, a4);
    *a5 = a2;
    a5[1] = v9;
    a5[2] = v10;
    v11 = type metadata accessor for LemonadeNavigationDestination(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v11 - 8) + 56))(a5, 0, 1, v11);
  }

  else
  {
    v12 = type metadata accessor for LemonadeNavigationDestination(0);
    v13 = *(*(v12 - 8) + 56);

    v13(a5, 1, 1, v12);
  }
}

double sub_1A41CEADC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v6 = sub_1A42E6C64(a2, a3);
  *a4 = a1;
  a4[1] = v6;
  a4[2] = v7;
  v8 = type metadata accessor for LemonadeNavigationDestination(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(a4, 0, 1, v8);

  return result;
}

uint64_t sub_1A41CEB94()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D2F18(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  PhotosObservableListCellModel.keyAsset.getter(v7);
  memset(v10, 0, sizeof(v10));
  v11 = 1;
  v8 = sub_1A52429A4();
  (*(*(v8 - 8) + 56))(v6, 1, 1, v8);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
  return sub_1A5243ED4();
}

uint64_t sub_1A41CEDCC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A3CA3924(&qword_1EB125C60, &qword_1EB12A800, type metadata accessor for PhotoKitItem, &protocol conformance descriptor for PhotoKitItem<A>);

  return sub_1A4201830(a1, a2, a3, v6);
}

void sub_1A41CEE7C(uint64_t *a1)
{
  v3 = type metadata accessor for LemonadeNavigationDestination(0);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A41CE888(*a1, *v1, *(v1 + 8), (&v5 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0)));
}

unint64_t sub_1A41CEFE0(uint64_t a1)
{
  v2 = sub_1A3C442E8();

  return sub_1A42E6E80(a1, v2);
}

id sub_1A41CF01C(uint64_t a1)
{
  v1 = [*(a1 + 16) px_virtualCollections];
  v2 = [v1 mediaTypesCollectionList];

  return v2;
}

uint64_t sub_1A41CF074@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  *a2 = v3;
  v4 = *(type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0) + 20);
  v5 = v3;
  v6 = sub_1A437C480();
  return sub_1A437C488(v6, a2 + v4);
}

uint64_t sub_1A41CF0C0()
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext(0, v0);
  sub_1A41D2ED0(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A41CF170(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LemonadePhotoLibraryContext(0, a2);
  sub_1A41D2ED0(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  return sub_1A524C794();
}

uint64_t sub_1A41CF218(uint64_t a1)
{
  sub_1A524EC94();
  type metadata accessor for LemonadePhotoLibraryContext(0, v1);
  sub_1A41D2ED0(&qword_1EB12B6F8, type metadata accessor for LemonadePhotoLibraryContext, &protocol conformance descriptor for LemonadePhotoLibraryContext);
  sub_1A524C4B4();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A41CF2C4@<X0>(uint64_t a1@<X0>, void *a2@<X2>, uint64_t a3@<X8>)
{
  sub_1A41D4A48(0, &qword_1EB134A50, MEMORY[0x1E69C2098]);
  MEMORY[0x1EEE9AC00](v6 - 8);
  sub_1A41D2F9C(0);
  v30 = v7;
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D2FBC(0, &qword_1EB134A60, sub_1A41D3040, sub_1A41D2F9C, MEMORY[0x1E697F948]);
  v27 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v29 = v25 - v11;
  v12 = sub_1A5243284();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D3040(0);
  v28 = v16;
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v25 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    v20 = *((*MEMORY[0x1E69E7D40] & *a2) + 0x540);
    v25[1] = a3;
    v26 = a2;
    v20();
    v31 = a1;

    sub_1A52426E4();
    (*(v13 + 104))(v15, *MEMORY[0x1E69C23E0], v12);

    sub_1A3D6CB10(MEMORY[0x1E69E7CC0]);
    sub_1A3CA3BA4(0, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    sub_1A5243EC4();
    sub_1A3D6ECFC();
    sub_1A41D2ED0(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    sub_1A5242AA4();
    v21 = v28;
    (*(v17 + 16))(v29, v19, v28);
    swift_storeEnumTagMultiPayload();
    sub_1A41D2ED0(&qword_1EB134A70, sub_1A41D3040, MEMORY[0x1E69C20C8]);
    sub_1A41D2ED0(&qword_1EB134A78, sub_1A41D2F9C, MEMORY[0x1E69C20A8]);
    sub_1A5249744();

    return (*(v17 + 8))(v19, v21);
  }

  else
  {
    v31 = a1;
    sub_1A3CA3BA4(0, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    sub_1A5243EC4();
    sub_1A3D6EC6C();
    sub_1A3D6ECFC();
    sub_1A41D2ED0(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);

    sub_1A5242A24();

    sub_1A5242A34();
    v23 = v26;
    v24 = v30;
    (v26[2])(v29, v9, v30);
    swift_storeEnumTagMultiPayload();
    sub_1A41D2ED0(&qword_1EB134A70, sub_1A41D3040, MEMORY[0x1E69C20C8]);
    sub_1A41D2ED0(&qword_1EB134A78, sub_1A41D2F9C, MEMORY[0x1E69C20A8]);
    sub_1A5249744();
    return (v23[1])(v9, v24);
  }
}

uint64_t sub_1A41CF9D0()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D2F18(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v9 - v5;
  PhotosObservableAlbum.keyAsset.getter();
  memset(v9, 0, sizeof(v9));
  v10 = 1;
  v7 = sub_1A52429A4();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
  return sub_1A5243ED4();
}

uint64_t sub_1A41CFBB4@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 8))
  {
    v6 = sub_1A437C79C();
    return sub_1A3CA5F64(v6, a1, type metadata accessor for LemonadeFeedBodyStyle);
  }

  else
  {
    v8 = sub_1A43A1D44();
    sub_1A3CA5F64(v8, v5, type metadata accessor for LemonadeItemsLayoutSpec.Style);
    v9 = sub_1A3DC1AF8();
    return sub_1A437C3B8(v5, 5, v9, v10 & 1, a1);
  }
}

uint64_t sub_1A41CFCF4()
{
  sub_1A41D4294();

  return sub_1A3C47918();
}

void sub_1A41CFD30(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = a1;
  sub_1A3CA3BA4(0, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
  sub_1A3CA39F8(&qword_1EB1290D0, MEMORY[0x1E69C24A0]);

  v24 = a2;
  sub_1A5243E44();
  KeyPath = swift_getKeyPath();
  sub_1A41D2FBC(0, &qword_1EB1242C8, sub_1A3D6CDE0, sub_1A3D6D7F4, MEMORY[0x1E697E830]);
  v9 = (a2 + *(v8 + 36));
  sub_1A3D6D7F4(0);
  v22 = *(v10 + 28);
  v11 = v2;
  sub_1A3CA5F64(v2, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
  sub_1A524CC54();
  v12 = sub_1A524CC44();
  v13 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v14 = swift_allocObject();
  v15 = MEMORY[0x1E69E85E0];
  *(v14 + 16) = v12;
  *(v14 + 24) = v15;
  sub_1A3CA2558(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
  sub_1A3CA5F64(v2, &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
  v16 = sub_1A524CC44();
  v17 = swift_allocObject();
  *(v17 + 16) = v16;
  *(v17 + 24) = MEMORY[0x1E69E85E0];
  sub_1A3CA2558(&v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v13, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
  sub_1A524BB24();
  v18 = v22;
  sub_1A524B944();
  sub_1A3D6D85C(0);
  (*(*(v19 - 8) + 56))(v9 + v18, 0, 1, v19);
  *v9 = KeyPath;
  v20 = sub_1A41D2C60(*v11);
  LOBYTE(v13) = (*(*v20 + 152))(v20);

  sub_1A41D346C(0);
  *(v24 + *(v21 + 36)) = (v13 & 1) == 0;
}

double sub_1A41D00B4(uint64_t a1, void **a2)
{
  v3 = sub_1A524BB24();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A41D2C60(*a2);
  (*(v4 + 104))(v6, *MEMORY[0x1E697D708], v3);
  v8 = sub_1A524BB04();
  (*(v4 + 8))(v6, v3);
  (*(*v7 + 160))(v8 & 1);

  return result;
}

void sub_1A41D01F4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (MEMORY[0x1A590D320]())
  {
    v7 = *(a1 + 16);
    v8 = *(a2 + 40);
    if (v8)
    {
      (*((*MEMORY[0x1E69E7D40] & *v8) + 0x2D0))(v7);
    }

    else
    {
      v13 = v7;
    }

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(a3);
  }

  v9 = type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0);
  v10 = sub_1A41D2ED0(&qword_1EB129D90, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider, &unk_1A532404C);
  v11 = sub_1A3C66934(v3, v9, v10);
  v12 = *(a2 + 40);
  if (v12)
  {
    (*((*MEMORY[0x1E69E7D40] & *v12) + 0x2D0))(v11);
  }

  LemonadePhotosPagingAssetCollectionGridConfiguration.init(itemListManager:initialItem:defaultSectionBodyStyle:selectionCoordinator:)(a3);
}

uint64_t sub_1A41D039C@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v22 = a1;
  v24 = a2;
  sub_1A41D4EB8(0, &qword_1EB12B708, sub_1A3D6DDB0, sub_1A3D6E940);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v21 - v4;
  sub_1A3D6E940(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A52498B4();
  MEMORY[0x1EEE9AC00](v11 - 8);
  sub_1A3D6DDB0(0);
  v13 = v12;
  v14 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5249834();
  v27 = v2;
  sub_1A41D2FBC(0, &qword_1EB12B718, sub_1A3D6DE64, sub_1A3D6E100, MEMORY[0x1E697F960]);
  sub_1A3D6E5A4();
  sub_1A5247F24();
  sub_1A5249824();
  v25 = v2;
  v26 = v22;
  sub_1A3C37060(0, &qword_1EB12B780, &type metadata for LemonadeTransientCollectionSortingUtilities.ResetButton, MEMORY[0x1E69E6720]);
  sub_1A3D6E9D4();
  sub_1A5247F24();
  v17 = *(v23 + 48);
  (*(v14 + 16))(v5, v16, v13);
  (*(v8 + 16))(&v5[v17], v10, v7);
  v18 = v24;
  sub_1A52495D4();
  (*(v8 + 8))(v10, v7);
  (*(v14 + 8))(v16, v13);
  sub_1A3D6EB9C(0);
  return (*(*(v19 - 8) + 56))(v18, 0, 1, v19);
}

uint64_t sub_1A41D075C@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v82 = a2;
  sub_1A41D4214(0, &qword_1EB127480, MEMORY[0x1E6981148], MEMORY[0x1E6981138], MEMORY[0x1E697D670]);
  v69 = *(v3 - 8);
  v70 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v68 = &v62 - v4;
  sub_1A3D6E2C8(0);
  v73 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v62 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D3848(0);
  v76 = v7;
  v74 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v72 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6E100(0);
  v81 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D2FBC(0, &qword_1EB12B8D8, sub_1A3D6DE64, sub_1A3D6E100, MEMORY[0x1E697F948]);
  v79 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v80 = &v62 - v12;
  v13 = type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0);
  v77 = *(v13 - 8);
  v14 = *(v77 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = sub_1A5247B54();
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v62 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DF58(0);
  v19 = v18;
  v63 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v62 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DF10(0);
  v64 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v62 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D3708(0);
  v67 = v25;
  v65 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v62 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3D6DE64(0);
  v78 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v66 = &v62 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1A41D2C60(*a1);
  v31 = (*(*v30 + 152))(v30);

  if (v31)
  {
    sub_1A5247B44();
    sub_1A3CA5F64(a1, &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
    v32 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v33 = swift_allocObject();
    sub_1A3CA2558(&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v33 + v32, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
    MEMORY[0x1A5906A80](v17, sub_1A41D4BD0, v33);
    v83 = sub_1A3C38BD4(0xD00000000000001DLL);
    v84 = v34;
    sub_1A41D2ED0(&qword_1EB121B60, sub_1A3D6DF58, MEMORY[0x1E697D680]);
    sub_1A3D5F9DC();
    sub_1A524AC94();

    (*(v63 + 8))(v21, v19);
    sub_1A41D3988(0, &qword_1EB12B738, sub_1A3D6DF10, sub_1A3D6E020);
    v36 = v35;
    v37 = sub_1A3D6E020();
    v38 = sub_1A5243474();
    v39 = sub_1A41D2ED0(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    v40 = v64;
    v83 = v64;
    v84 = v38;
    v85 = v37;
    v86 = v39;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    sub_1A524A4C4();
    sub_1A3CA5F04(v24, sub_1A3D6DF10);
    v83 = v40;
    v84 = v36;
    v85 = v37;
    v86 = OpaqueTypeConformance2;
    swift_getOpaqueTypeConformance2();
    v43 = v66;
    v42 = v67;
    sub_1A524AA94();
    (*(v65 + 8))(v27, v42);
    v44 = sub_1A3D6DE64;
    sub_1A41D4DF0(v43, v80, sub_1A3D6DE64);
  }

  else
  {
    v83 = sub_1A3C38BD4(0xD000000000000019);
    v84 = v45;
    sub_1A3CA5F64(a1, &v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
    v46 = (*(v77 + 80) + 16) & ~*(v77 + 80);
    v47 = swift_allocObject();
    sub_1A3CA2558(&v62 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v47 + v46, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider);
    sub_1A3D5F9DC();
    v48 = v68;
    sub_1A524B754();
    v83 = sub_1A3C38BD4(0xD000000000000019);
    v84 = v49;
    sub_1A3D6E520();
    v50 = v70;
    v51 = v71;
    sub_1A524AC94();

    (*(v69 + 8))(v48, v50);
    sub_1A41D3988(0, &qword_1EB12B758, sub_1A3D6E2C8, sub_1A3D6E470);
    v53 = v52;
    v54 = sub_1A3D6E470();
    v55 = sub_1A5243474();
    v56 = sub_1A41D2ED0(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    v57 = v73;
    v83 = v73;
    v84 = v55;
    v85 = v54;
    v86 = v56;
    v58 = swift_getOpaqueTypeConformance2();
    v59 = v72;
    sub_1A524A4C4();
    sub_1A3CA5F04(v51, sub_1A3D6E2C8);
    v83 = v57;
    v84 = v53;
    v85 = v54;
    v86 = v58;
    swift_getOpaqueTypeConformance2();
    v43 = v75;
    v60 = v76;
    sub_1A524AA94();
    (*(v74 + 8))(v59, v60);
    v44 = sub_1A3D6E100;
    sub_1A41D4DF0(v43, v80, sub_1A3D6E100);
  }

  swift_storeEnumTagMultiPayload();
  sub_1A3D6E668();
  sub_1A3D6E7D4();
  sub_1A5249744();
  return sub_1A41D4E58(v43, v44);
}

uint64_t sub_1A41D12F4(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v5 = sub_1A5243474();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A5247D74();
  a2(0);
  a3();
  sub_1A41D2ED0(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
  sub_1A524A944();
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1A41D1440(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __n128 a7)
{
  v8 = a3;
  sub_1A524CC44();

  swift_task_getMainExecutor();
  if (swift_task_isCurrentExecutor())
  {
    v11 = swift_allocObject();
    *(v11 + 16) = a1;
    *(v11 + 24) = a2;
    sub_1A3E565A8(v16);
    if (v7)
    {
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return v8 & 1;
      }

      __break(1u);
    }

    v8 = v16[0];
    v13 = swift_isEscapingClosureAtFileLocation();

    if ((v13 & 1) == 0)
    {
      return v8 & 1;
    }

    __break(1u);
  }

  v16[0] = 0;
  v16[1] = 0xE000000000000000;
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD00000000000003FLL, 0x80000001A53B42C0);
  v15 = sub_1A524EEF4();
  MEMORY[0x1A5907B60](v15);

  MEMORY[0x1A5907B60](46, 0xE100000000000000);
  result = sub_1A524E6E4();
  __break(1u);
  return result;
}

double sub_1A41D15F8(void **a1)
{
  v1 = sub_1A41D2C60(*a1);
  v2 = (*(*v1 + 168))(v5);
  *v3 = !*v3;
  v2(v5, 0);

  return result;
}

uint64_t sub_1A41D1688(uint64_t a1)
{
  sub_1A3CA3BA4(0, &qword_1EB1290B8, &qword_1EB12A840, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C2470]);
  sub_1A3CA39F8(&qword_1EB1290D0, MEMORY[0x1E69C24A0]);

  return sub_1A5243E44();
}

uint64_t sub_1A41D1750()
{
  sub_1A524CC54();
  v4 = v0;
  return sub_1A41D1440(sub_1A41D50C0, &v3, "PhotosUICore/LemonadeMediaTypesFeature.swift", 44, 2, 394, v1) & 1;
}

uint64_t sub_1A41D17C8()
{
  sub_1A41D2ED0(&qword_1EB129D88, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider, &unk_1A5324014);

  return sub_1A3C47918();
}

uint64_t sub_1A41D1894(uint64_t a1)
{
  sub_1A41D4A48(0, &qword_1EB134A50, MEMORY[0x1E69C2098]);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1A3CA3BA4(0, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
  sub_1A5243EC4();
  sub_1A3D6EC6C();
  sub_1A3D6ECFC();
  sub_1A41D2ED0(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);

  sub_1A5242A24();

  return sub_1A5242A34();
}

uint64_t sub_1A41D1A6C()
{
  sub_1A41D2ED0(&qword_1EB134AA0, type metadata accessor for LemonadeMediaTypesFeature.MacFeedProvider, &unk_1A5324068);

  return sub_1A3C47918();
}

unint64_t sub_1A41D1AD8()
{
  v0 = sub_1A5243834();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D2F18(0, &unk_1EB129180, MEMORY[0x1E69C2060], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v12 - v5;
  result = sub_1A5242704();
  if (result >> 62)
  {
    v9 = result;
    v10 = sub_1A524E2B4();
    result = v9;
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

    memset(v12, 0, sizeof(v12));
    v13 = 1;
    v11 = sub_1A52429A4();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    (*(v1 + 104))(v3, *MEMORY[0x1E69C2678], v0);
    return sub_1A5243ED4();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1A59097F0](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

void sub_1A41D1D40(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  v14 = MEMORY[0x1A590D320]();
  if (v14)
  {
    v16 = *(a1 + 16);
    v17 = *(a2 + 40);
    if (v17)
    {
      (*((*MEMORY[0x1E69E7D40] & *v17) + 0x2D0))(v16);
    }

    else
    {
      v21 = v16;
    }

    LemonadePhotosPagingAssetCollectionGridConfiguration.init(collection:defaultSectionBodyStyle:viewConfiguration:assetsFetchResultProvider:selectionCoordinator:)(a7);
  }

  v22[0] = a3;
  v22[1] = a4;
  v18 = a5(v14, v15);
  v19 = sub_1A3C66934(v22, a6, v18);
  v20 = *(a2 + 40);
  if (v20)
  {
    (*((*MEMORY[0x1E69E7D40] & *v20) + 0x2D0))(v19);
  }

  LemonadePhotosPagingAssetCollectionGridConfiguration.init(itemListManager:initialItem:defaultSectionBodyStyle:selectionCoordinator:)(a7);
}

void sub_1A41D1EE0(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *a1;
  type metadata accessor for LemonadeMediaTypesItemListManager(0);
  v10 = v9;

  sub_1A4A19AF0(v10, a2, a5, a6);
}

uint64_t sub_1A41D1F54(uint64_t a1, double a2)
{
  sub_1A41D2F18(0, &qword_1EB134A80, sub_1A41D3DBC, MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v8 - v4;
  v8[1] = a1;
  sub_1A3CA3BA4(0, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
  sub_1A5243EC4();
  sub_1A3D6EC6C();
  sub_1A3D6ECFC();
  sub_1A41D2ED0(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);

  sub_1A5242A44();
  sub_1A41D3DBC(0);
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);

  return sub_1A5242A54();
}

uint64_t sub_1A41D21A8()
{
  sub_1A41D473C();

  return sub_1A3C47918();
}

id sub_1A41D21E4()
{
  v1 = [*(v0 + 16) px_virtualCollections];
  v2 = [v1 mediaTypesCollectionList];

  return v2;
}

void sub_1A41D223C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1A41D4F34(0);
  v40 = v4;
  v10 = sub_1A524E774();
  v11 = v10;
  if (*(v9 + 16))
  {
    v44 = v8;
    v36 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = (v6 + 16);
    v38 = v6;
    v41 = (v6 + 32);
    v18 = v10 + 64;
    v39 = v9;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v43 = *(v6 + 72);
      v25 = v24 + v43 * v23;
      if (v40)
      {
        (*v41)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v37)(v44, v25, v5);
        v42 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1A41D2ED0(&qword_1EB126058, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      v26 = sub_1A524C4A4();
      v27 = -1 << *(v11 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v41)((*(v11 + 48) + v43 * v19), v44, v5);
      *(*(v11 + 56) + 8 * v19) = v42;
      ++*(v11 + 16);
      v6 = v38;
      v9 = v39;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v36;
      goto LABEL_34;
    }

    v34 = 1 << *(v9 + 32);
    v3 = v36;
    if (v34 >= 64)
    {
      bzero(v13, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v34;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
}

void sub_1A41D2608(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_1A5240E64();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_1A3D6B1D0(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 < v17 || (a3 & 1) == 0)
  {
    if (v19 >= v17 && (a3 & 1) == 0)
    {
      sub_1A41D27D4();
      goto LABEL_7;
    }

    sub_1A41D223C(v17, a3 & 1);
    v21 = sub_1A3D6B1D0(a2);
    if ((v18 & 1) == (v22 & 1))
    {
      v14 = v21;
      v20 = *v4;
      if (v18)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v11, a2, v8);
      sub_1A3D6B910(v14, v11, a1, v20);
      return;
    }

LABEL_15:
    sub_1A524EB84();
    __break(1u);
    return;
  }

LABEL_7:
  v20 = *v4;
  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  *(v20[7] + 8 * v14) = a1;
}

void sub_1A41D27D4()
{
  v1 = v0;
  v31 = sub_1A5240E64();
  v33 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A41D4F34(0);
  v3 = *v0;
  v4 = sub_1A524E764();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = (v3 + 64);
    if (v5 != v3 || v6 >= v3 + 64 + 8 * v7)
    {
      memmove(v6, v27, 8 * v7);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_17:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;

        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_21;
      }

      v17 = *(v27 + v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v5;
  }
}

unint64_t sub_1A41D2A40(uint64_t a1)
{
  sub_1A41D4EB8(0, &qword_1EB126040, MEMORY[0x1E6968FB0], type metadata accessor for LemonadeMediaTypesEditableListModel);
  v3 = v2;
  v4 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1A41D4F34(0);
    v8 = sub_1A524E794();
    v9 = *(v3 + 48);
    v10 = a1 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
    v11 = *(v4 + 72);

    while (1)
    {
      sub_1A41D4FE0(v10, v6, &qword_1EB126040, MEMORY[0x1E6968FB0], type metadata accessor for LemonadeMediaTypesEditableListModel);
      result = sub_1A3D6B1D0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1A5240E64();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A41D2C60(void *a1)
{
  v2 = sub_1A5240E64();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  if (qword_1EB167BF0 != -1)
  {
    swift_once();
  }

  v7 = [a1 photoLibraryURL];
  sub_1A5240DE4();

  swift_beginAccess();
  v8 = qword_1EB167BF8;
  if (!*(qword_1EB167BF8 + 16) || (v9 = sub_1A3D6B1D0(v6), (v10 & 1) == 0))
  {
    swift_endAccess();
    (*(v3 + 8))(v6, v2);
    type metadata accessor for LemonadeMediaTypesEditableListModel(0);
    sub_1A4A1BA84(a1);
  }

  v11 = *(*(v8 + 56) + 8 * v9);
  swift_endAccess();
  v12 = *(v3 + 8);

  v12(v6, v2);
  return v11;
}

uint64_t sub_1A41D2ED0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A41D2F18(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1A41D2FBC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t), uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3(255);
    v10 = a4(255);
    v11 = a5(a1, v9, v10);
    if (!v12)
    {
      atomic_store(v11, a2);
    }
  }
}

void sub_1A41D3040(uint64_t a1)
{
  if (!qword_1EB134A68)
  {
    sub_1A3CA3BA4(255, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    sub_1A5243EC4();
    sub_1A3D6ECFC();
    sub_1A41D2ED0(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    v1 = sub_1A5242A94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB134A68);
    }
  }
}

unint64_t sub_1A41D313C()
{
  result = qword_1EB129D80;
  if (!qword_1EB129D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129D80);
  }

  return result;
}

uint64_t sub_1A41D3190@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0) - 8);
  v4 = sub_1A41D2C60(*(v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80))));
  v5 = (*(*v4 + 152))(v4);

  v6 = sub_1A524BB24();
  v7 = *(*(v6 - 8) + 104);
  v8 = MEMORY[0x1E697D708];
  if ((v5 & 1) == 0)
  {
    v8 = MEMORY[0x1E697D710];
  }

  v9 = *v8;

  return v7(a1, v9, v6);
}

uint64_t objectdestroyTm_32()
{
  v1 = (type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  swift_unknownObjectRelease();

  v3 = v0 + v2 + v1[7];
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3D6D890(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v3 + 24), *(v3 + 32), *(v3 + 40));
    sub_1A3C47A98(0);
    v6 = *(v5 + 64);
    v7 = sub_1A5242C84();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    if (*(v3 + 40) >= 3uLL)
    {
    }

    if (*(v3 + 56) >= 3uLL)
    {
    }

    sub_1A3C4208C(*(v3 + 72), *(v3 + 80), *(v3 + 88));
  }

  return swift_deallocObject();
}

double sub_1A41D33FC(uint64_t a1)
{
  v3 = *(type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0) - 8);
  v4 = (v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80)));

  return sub_1A41D00B4(a1, v4);
}

void sub_1A41D346C(uint64_t a1)
{
  if (!qword_1EB12B700)
  {
    sub_1A41D2FBC(255, &qword_1EB1242C8, sub_1A3D6CDE0, sub_1A3D6D7F4, MEMORY[0x1E697E830]);
    v1 = sub_1A5248804();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB12B700);
    }
  }
}

uint64_t sub_1A41D3510()
{
  v0 = sub_1A524C624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A5243424();
  if (!v6)
  {
    v5 = sub_1A3C38BD4(0xD000000000000032);
  }

  v7 = v5;
  v8 = sub_1A5243414();
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    sub_1A524C5F4();
    sub_1A524C5E4();
    sub_1A524C5D4();

    sub_1A524C5E4();
    v12[1] = v10;
    sub_1A524C5C4();
    sub_1A524C5E4();
    sub_1A524C614();
    v7 = sub_1A524C774();
    (*(v1 + 8))(v3, v0);
  }

  return v7;
}

void sub_1A41D3708(uint64_t a1)
{
  if (!qword_1EB12B728)
  {
    sub_1A3D6DF10(255);
    sub_1A41D3988(255, &qword_1EB12B738, sub_1A3D6DF10, sub_1A3D6E020);
    sub_1A3D6E020();
    sub_1A5243474();
    sub_1A41D2ED0(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12B728);
    }
  }
}

void sub_1A41D3848(uint64_t a1)
{
  if (!qword_1EB12B750)
  {
    sub_1A3D6E2C8(255);
    sub_1A41D3988(255, &qword_1EB12B758, sub_1A3D6E2C8, sub_1A3D6E470);
    sub_1A3D6E470();
    sub_1A5243474();
    sub_1A41D2ED0(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    swift_getOpaqueTypeConformance2();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB12B750);
    }
  }
}

void sub_1A41D3988(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if (!*a2)
  {
    a3(255);
    sub_1A5243474();
    a4();
    sub_1A41D2ED0(&qword_1EB124D90, MEMORY[0x1E69C24C8], MEMORY[0x1E69C24C0]);
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v7)
    {
      atomic_store(OpaqueTypeMetadata2, a2);
    }
  }
}

void sub_1A41D3A70(void *a1@<X8>)
{
  v3 = *(v1 + 24);
  v4 = **(v1 + 16);
  v5 = sub_1A41D2C60(v4);
  v6 = (*(*v5 + 152))(v5);

  if (v6)
  {
    v7 = [v4 px_virtualCollections];
    v8 = [v7 mediaTypesCollectionList];

    v9 = v3;
    PXDisplayCollectionDetailedCountsMake();
  }

  else
  {
    v10 = 0;
    v11 = 0;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_1A41D3BC0()
{
  v0 = sub_1A524C624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A52426E4();
  if (!v6)
  {
    v5 = sub_1A3C38BD4(0xD000000000000034);
  }

  v7 = v5;
  sub_1A3D71010();
  v8 = sub_1A5242724();
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    sub_1A524C5F4();
    sub_1A524C5E4();
    sub_1A524C5D4();

    sub_1A524C5E4();
    v12[1] = v10;
    sub_1A524C5C4();
    sub_1A524C5E4();
    sub_1A524C614();
    v7 = sub_1A524C774();
    (*(v1 + 8))(v3, v0);
  }

  return v7;
}

uint64_t sub_1A41D3DDC()
{
  v0 = sub_1A524C624();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A524C604();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A52426E4();
  if (!v6)
  {
    v5 = sub_1A3C38BD4(0xD000000000000032);
  }

  v7 = v5;
  sub_1A3D71010();
  v8 = sub_1A5242724();
  if ((v9 & 1) == 0)
  {
    v10 = v8;
    sub_1A524C5F4();
    sub_1A524C5E4();
    sub_1A524C5D4();

    sub_1A524C5E4();
    v12[1] = v10;
    sub_1A524C5C4();
    sub_1A524C5E4();
    sub_1A524C614();
    v7 = sub_1A524C774();
    (*(v1 + 8))(v3, v0);
  }

  return v7;
}

unint64_t sub_1A41D3FD8()
{
  result = qword_1EB134A90;
  if (!qword_1EB134A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134A90);
  }

  return result;
}

uint64_t sub_1A41D40B0(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A3C37A4C(255, a2, &qword_1EB126CD0, 0x1E6978758, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1A41D41C0()
{
  result = qword_1EB134A98;
  if (!qword_1EB134A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134A98);
  }

  return result;
}

void sub_1A41D4214(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = a5(0, a3, a4);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A41D4294()
{
  result = qword_1EB129D78;
  if (!qword_1EB129D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB129D78);
  }

  return result;
}

unint64_t sub_1A41D4314(uint64_t a1)
{
  result = sub_1A41D313C();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A41D444C(uint64_t a1)
{
  result = sub_1A41D2ED0(&qword_1EB129D90, type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider, &unk_1A532404C);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A41D4604(uint64_t a1)
{
  result = sub_1A41D2ED0(&qword_1EB134AA8, type metadata accessor for LemonadeMediaTypesFeature.MacFeedProvider, &unk_1A5324084);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A41D473C()
{
  result = qword_1EB134AB0;
  if (!qword_1EB134AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134AB0);
  }

  return result;
}

unint64_t sub_1A41D47BC(uint64_t a1)
{
  result = sub_1A41D3FD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A41D4904()
{
  result = qword_1EB134AB8;
  if (!qword_1EB134AB8)
  {
    sub_1A41D2FBC(255, &qword_1EB134AC0, sub_1A41D3040, sub_1A41D2F9C, MEMORY[0x1E697F960]);
    sub_1A41D2ED0(&qword_1EB134A70, sub_1A41D3040, MEMORY[0x1E69C20C8]);
    sub_1A41D2ED0(&qword_1EB134A78, sub_1A41D2F9C, MEMORY[0x1E69C20A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB134AB8);
  }

  return result;
}

void sub_1A41D4A48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    sub_1A3CA3BA4(255, &qword_1EB1291F8, &qword_1EB12A830, &protocol conformance descriptor for <> PhotoKitItem<A>, MEMORY[0x1E69C1F50]);
    v9[0] = v6;
    v9[1] = sub_1A5243EC4();
    v9[2] = sub_1A3D6EC6C();
    v9[3] = sub_1A3D6ECFC();
    v9[4] = sub_1A41D2ED0(&qword_1EB128FE0, MEMORY[0x1E69C2928], MEMORY[0x1E69C2920]);
    v7 = a3(a1, v9);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

void sub_1A41D4B58(_BYTE *a1@<X8>)
{
  v3 = sub_1A41D2C60(**(v1 + 16));
  v4 = (*(*v3 + 152))(v3);

  *a1 = v4 & 1;
}

uint64_t objectdestroy_101Tm()
{
  v1 = (type metadata accessor for LemonadeMediaTypesFeature.ListFeedProvider(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);

  v3 = v0 + v2 + v1[7];
  type metadata accessor for LemonadeItemsLayoutSpec.Style(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1A3D6D890(*v3, *(v3 + 8), *(v3 + 16));
  if (EnumCaseMultiPayload == 1)
  {
    sub_1A3C4208C(*(v3 + 24), *(v3 + 32), *(v3 + 40));
    sub_1A3C47A98(0);
    v6 = *(v5 + 64);
    v7 = sub_1A5242C84();
    (*(*(v7 - 8) + 8))(v3 + v6, v7);
  }

  else
  {
    if (*(v3 + 40) >= 3uLL)
    {
    }

    if (*(v3 + 56) >= 3uLL)
    {
    }

    sub_1A3C4208C(*(v3 + 72), *(v3 + 80), *(v3 + 88));
  }

  return swift_deallocObject();
}