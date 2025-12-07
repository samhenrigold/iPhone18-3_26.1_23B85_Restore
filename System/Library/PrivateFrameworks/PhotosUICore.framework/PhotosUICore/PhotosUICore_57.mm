uint64_t sub_1A43520EC()
{
  v28 = v0;
  v1 = v0[37];
  v3 = v0[33];
  v2 = v0[34];
  v4 = v0[24];
  v5 = sub_1A524D264();
  v6 = sub_1A486DB9C();
  v0[38] = v6;
  v7 = *v6;
  v8 = *(v2 + 16);
  v0[39] = v8;
  v0[40] = (v2 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v8(v1, v4, v3);
  v9 = os_log_type_enabled(v7, v5);
  v10 = v0[37];
  v12 = v0[33];
  v11 = v0[34];
  if (v9)
  {
    v14 = v0[29];
    v13 = v0[30];
    v25 = v0[28];
    v7;
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v15 = 136446466;
    swift_getAssociatedConformanceWitness();
    sub_1A524E424();
    (*(v11 + 8))(v10, v12);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = sub_1A524EA44();
    v18 = v17;
    (*(v14 + 8))(v13, v25);
    sub_1A3C2EF94(v16, v18, &v27);
  }

  v19 = *(v11 + 8);
  v19(v0[37], v0[33]);
  v0[41] = v19;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v0[42] = AssociatedConformanceWitness;
  v26 = (*(AssociatedConformanceWitness + 16) + **(AssociatedConformanceWitness + 16));
  v21 = swift_task_alloc();
  v0[43] = v21;
  v22 = sub_1A435CB54();
  *v21 = v0;
  v21[1] = sub_1A4352478;
  v23 = v0[33];

  return v26(v0 + 10, &type metadata for OneUpSharePlayLivePhotoItem, &type metadata for OneUpSharePlayLivePhotoItem, v22, v23, AssociatedConformanceWitness);
}

uint64_t sub_1A4352478()
{
  *(*v1 + 352) = v0;

  if (v0)
  {
    v2 = sub_1A4352E6C;
  }

  else
  {
    v2 = sub_1A435258C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A435258C(uint64_t a1)
{
  v46 = v1;
  v2 = *(v1 + 352);
  v3 = *(v1 + 96);
  *(v1 + 16) = *(v1 + 80);
  *(v1 + 32) = v3;
  v4 = *(v1 + 128);
  *(v1 + 48) = *(v1 + 112);
  *(v1 + 64) = v4;
  sub_1A524CDD4();
  if (v2)
  {
    sub_1A435CBA8(v1 + 16);
    *(v1 + 384) = v2;
    v5 = *(v1 + 312);
    v6 = *(v1 + 304);
    v7 = *(v1 + 280);
    v8 = *(v1 + 264);
    v9 = *(v1 + 192);
    v10 = sub_1A524D244();
    v11 = *v6;
    v5(v7, v9, v8);
    if (os_log_type_enabled(v11, v10))
    {
      v12 = *(v1 + 280);
      v43 = *(v1 + 328);
      v13 = *(v1 + 264);
      v15 = *(v1 + 232);
      v14 = *(v1 + 240);
      v16 = *(v1 + 224);
      v11;
      v17 = swift_slowAlloc();
      swift_slowAlloc();
      v45[0] = swift_slowAlloc();
      *v17 = 136446722;
      sub_1A524E424();
      v43(v12, v13);
      sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v18 = sub_1A524EA44();
      v20 = v19;
      (*(v15 + 8))(v14, v16);
      sub_1A3C2EF94(v18, v20, v45);
    }

    (*(v1 + 328))(*(v1 + 280), *(v1 + 264));
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    *(v1 + 392) = Strong;
    if (Strong)
    {

      return MEMORY[0x1EEE6DFA0](sub_1A4352D6C, Strong, 0);
    }

    goto LABEL_16;
  }

  v21 = *(v1 + 312);
  v22 = *(v1 + 304);
  v23 = *(v1 + 288);
  v24 = *(v1 + 264);
  v25 = *(v1 + 192);
  v26 = sub_1A524D264();
  v27 = *v22;
  v21(v23, v25, v24);
  if (os_log_type_enabled(v27, v26))
  {
    v28 = *(v1 + 288);
    v29 = *(v1 + 264);
    v44 = *(v1 + 328);
    v30 = *(v1 + 232);
    v31 = *(v1 + 240);
    v32 = *(v1 + 224);
    v27;
    v33 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v33 = 136446466;
    sub_1A524E424();
    v44(v28, v29);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v34 = sub_1A524EA44();
    v36 = v35;
    (*(v30 + 8))(v31, v32);
    sub_1A3C2EF94(v34, v36, v45);
  }

  (*(v1 + 328))(*(v1 + 288), *(v1 + 264));
  swift_beginAccess();
  v38 = swift_weakLoadStrong();
  *(v1 + 360) = v38;
  if (!v38)
  {
    sub_1A435CBA8(v1 + 16);
LABEL_16:

    v41 = *(v1 + 8);

    return v41();
  }

  v39 = swift_task_alloc();
  *(v1 + 368) = v39;
  *v39 = v1;
  v39[1] = sub_1A4352BC0;

  return sub_1A4353568((v1 + 16), v40);
}

uint64_t sub_1A4352BC0()
{
  *(*v1 + 376) = v0;

  if (v0)
  {
    v2 = sub_1A43531E0;
  }

  else
  {

    v2 = sub_1A4352CDC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A4352CDC()
{
  sub_1A435CBA8(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4352D6C(double a1)
{
  sub_1A4353ED8(*(v1 + 384), a1);

  return MEMORY[0x1EEE6DFA0](sub_1A4352DDC, 0, 0);
}

uint64_t sub_1A4352DDC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4352E6C(uint64_t a1)
{
  v24 = v1;
  v2 = v1[44];
  v1[48] = v2;
  v3 = v1[39];
  v4 = v1[38];
  v5 = v1[35];
  v6 = v1[33];
  v7 = v1[24];
  v8 = sub_1A524D244();
  v9 = *v4;
  v3(v5, v7, v6);
  if (os_log_type_enabled(v9, v8))
  {
    v10 = v1[35];
    v22 = v1[41];
    v11 = v1[33];
    v13 = v1[29];
    v12 = v1[30];
    v14 = v1[28];
    v9;
    v15 = swift_slowAlloc();
    swift_slowAlloc();
    v23 = swift_slowAlloc();
    *v15 = 136446722;
    sub_1A524E424();
    v22(v10, v11);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = sub_1A524EA44();
    v18 = v17;
    (*(v13 + 8))(v12, v14);
    sub_1A3C2EF94(v16, v18, &v23);
  }

  (v1[41])(v1[35], v1[33]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v1[49] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4352D6C, Strong, 0);
  }

  else
  {

    v20 = v1[1];

    return v20();
  }
}

uint64_t sub_1A43531E0()
{
  v23 = v0;
  sub_1A435CBA8((v0 + 2));

  v1 = v0[47];
  v0[48] = v1;
  v2 = v0[39];
  v3 = v0[38];
  v4 = v0[35];
  v5 = v0[33];
  v6 = v0[24];
  v7 = sub_1A524D244();
  v8 = *v3;
  v2(v4, v6, v5);
  if (os_log_type_enabled(v8, v7))
  {
    v9 = v0[35];
    v21 = v0[41];
    v10 = v0[33];
    v12 = v0[29];
    v11 = v0[30];
    v13 = v0[28];
    v8;
    v14 = swift_slowAlloc();
    swift_slowAlloc();
    v22 = swift_slowAlloc();
    *v14 = 136446722;
    sub_1A524E424();
    v21(v9, v10);
    sub_1A435C7C0(&qword_1EB126020, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v15 = sub_1A524EA44();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    sub_1A3C2EF94(v15, v17, &v22);
  }

  (v0[41])(v0[35], v0[33]);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[49] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A4352D6C, Strong, 0);
  }

  else
  {

    v19 = v0[1];

    return v19();
  }
}

uint64_t sub_1A4353568(uint64_t *a1, double a2)
{
  v3[12] = a1;
  v3[13] = v2;
  sub_1A4359F54(0);
  v3[14] = v5;
  v3[15] = swift_task_alloc();
  sub_1A3EE53E0(0);
  v3[16] = swift_task_alloc();
  v6 = swift_task_alloc();
  v3[17] = v6;
  v7 = *a1;
  v8 = a1[1];
  v10 = a1[2];
  v9 = a1[3];
  v11 = swift_task_alloc();
  v3[18] = v11;
  *v11 = v3;
  v11[1] = sub_1A4353698;

  return sub_1A4354228(v6, v7, v8, v10, v9);
}

uint64_t sub_1A4353698()
{
  v2 = *(*v1 + 104);
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = sub_1A4353DD8;
  }

  else
  {
    v3 = sub_1A43537C0;
  }

  return MEMORY[0x1EEE6DFA0](v3, v2, 0);
}

uint64_t sub_1A43537C0()
{
  v1 = v0[17];
  v3 = v0[12];
  v2 = v0[13];
  v4 = sub_1A5240E64();
  v0[20] = v4;
  v5 = *(v4 - 8);
  v6 = *(v5 + 56);
  v0[21] = v6;
  v0[22] = (v5 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v6(v1, 0, 1, v4);
  v7 = qword_1EB1B8798;
  swift_beginAccess();
  sub_1A435CBFC(v1, v2 + v7, sub_1A3EE53E0);
  swift_endAccess();
  v9 = v3[4];
  v8 = v3[5];
  v10 = v3[6];
  v11 = v3[7];
  v12 = swift_task_alloc();
  v0[23] = v12;
  *v12 = v0;
  v12[1] = sub_1A435391C;
  v13 = v0[16];

  return sub_1A4354228(v13, v9, v8, v10, v11);
}

uint64_t sub_1A435391C()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = sub_1A4353E58;
  }

  else
  {
    v4 = sub_1A4353A48;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

void sub_1A4353A48()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 104);
  v27 = *(v0 + 112);
  (*(v0 + 168))(v1, 0, 1, *(v0 + 160));
  v3 = qword_1EB1B87A0;
  swift_beginAccess();
  sub_1A435CBFC(v1, v2 + v3, sub_1A3EE53E0);
  swift_endAccess();
  *(v2 + qword_1EB1B87A8) = 1;
  v4 = qword_1EB1B87B8;
  swift_beginAccess();
  v25 = v4;
  v26 = v2;
  v5 = *(v2 + v4);
  v6 = v5 + 64;
  v7 = -1;
  v8 = -1 << *(v5 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v5 + 64);
  v10 = (63 - v8) >> 6;
  v28 = v5;
  swift_bridgeObjectRetain_n();
  v11 = 0;
  while (v9)
  {
LABEL_10:
    v14 = *(v0 + 120);
    v15 = __clz(__rbit64(v9)) | (v11 << 6);
    v16 = *(v28 + 56);
    v17 = *(*(v28 + 48) + 8 * v15);
    sub_1A4359E34(0);
    (*(*(v18 - 8) + 16))(&v14[*(v27 + 48)], v16 + *(*(v18 - 8) + 72) * v15, v18);
    *v14 = v17;
    v19 = sub_1A4354968();
    v20 = sub_1A524D264();
    v21 = *sub_1A486DB9C();
    if (os_log_type_enabled(v21, v20))
    {
      v22 = v21;
      v23 = swift_slowAlloc();
      *v23 = 134349056;
      *(v23 + 4) = v17;
      _os_log_impl(&dword_1A3C1C000, v22, v20, "Journal: [%{public}ld] Satisfying live photo", v23, 0xCu);
      MEMORY[0x1A590EEC0](v23, -1, -1);
    }

    v9 &= v9 - 1;
    v12 = *(v0 + 120);
    *(v0 + 88) = v19;
    sub_1A524CBE4();
    sub_1A435C808(v12, sub_1A4359F54);
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v13 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v13);
    ++v11;
    if (v9)
    {
      v11 = v13;
      goto LABEL_10;
    }
  }

  *(v26 + v25) = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A4359E14, sub_1A4359ED4, sub_1A4359F3C, sub_1A4359E34);

  v24 = *(v0 + 8);

  v24();
}

uint64_t sub_1A4353DD8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4353E58()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1A4353ED8(void *a1, double a2)
{
  v44 = a1;
  sub_1A4359F54(0);
  v4 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v6 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = qword_1EB1B87B8;
  swift_beginAccess();
  v37 = v7;
  v38 = v2;
  v8 = *(v2 + v7);
  v11 = *(v8 + 64);
  v10 = v8 + 64;
  v9 = v11;
  v12 = 1 << *(*(v2 + v7) + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  v43 = *(v2 + v7);
  swift_bridgeObjectRetain_n();
  v16 = 0;
  *&v17 = 134349314;
  v39 = v17;
  v40 = v4;
  v42 = v6;
  while (v14)
  {
LABEL_10:
    v20 = __clz(__rbit64(v14)) | (v16 << 6);
    v21 = *(v43 + 56);
    v22 = *(*(v43 + 48) + 8 * v20);
    sub_1A4359E34(0);
    v24 = *(v23 - 8);
    v25 = v21 + *(v24 + 72) * v20;
    v26 = *(v4 + 48);
    (*(v24 + 16))(v6 + v26, v25, v23);
    *v6 = v22;
    v27 = sub_1A524D264();
    v28 = *sub_1A486DB9C();
    if (os_log_type_enabled(v28, v27))
    {
      v29 = v28;
      v30 = swift_slowAlloc();
      v41 = v26;
      v31 = v30;
      v32 = swift_slowAlloc();
      *v31 = v39;
      *(v31 + 4) = v22;
      *(v31 + 12) = 2112;
      v33 = v44;
      v34 = _swift_stdlib_bridgeErrorToNSError();
      *(v31 + 14) = v34;
      *v32 = v34;
      _os_log_impl(&dword_1A3C1C000, v29, v27, "Journal: Failure for live photo requestID: %{public}ld | error: %@", v31, 0x16u);
      sub_1A435C808(v32, sub_1A3D3F118);
      v35 = v32;
      v4 = v40;
      MEMORY[0x1A590EEC0](v35, -1, -1);
      MEMORY[0x1A590EEC0](v31, -1, -1);
    }

    v14 &= v14 - 1;
    v45 = v44;
    v18 = v44;
    v6 = v42;
    sub_1A524CBD4();
    sub_1A435C808(v6, sub_1A4359F54);
  }

  while (1)
  {
    v19 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v19 >= v15)
    {

      v36 = sub_1A4359C40(MEMORY[0x1E69E7CC0], sub_1A4359E14, sub_1A4359ED4, sub_1A4359F3C, sub_1A4359E34);
      *(v38 + v37) = v36;

      return;
    }

    v14 = *(v10 + 8 * v19);
    ++v16;
    if (v14)
    {
      v16 = v19;
      goto LABEL_10;
    }
  }

  __break(1u);
}

uint64_t sub_1A4354228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *v5;
  v7 = sub_1A5240E64();
  v6[9] = v7;
  v6[10] = *(v7 - 8);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A4354330, v5, 0);
}

uint64_t sub_1A4354330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v45 = v4;
  v5 = v4[6];
  v6 = v4[2];
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library(0, *(v4[8] + 80), *(v4[8] + 88), a4);
  sub_1A4341E08(v5, v6);
  v7 = v4[13];
  v9 = v4[9];
  v8 = v4[10];
  v10 = v4[7];
  v11 = v4[2];
  v12 = *(v10 + 112);
  v13 = *(v10 + 120);
  v14 = sub_1A524D264();
  v41 = sub_1A486DB9C();
  v15 = *v41;
  v42 = *(v8 + 16);
  v42(v7, v11, v9);
  v40 = v12;
  if (os_log_type_enabled(v15, v14))
  {
    v16 = v15;
    v17 = swift_slowAlloc();
    v44[0] = swift_slowAlloc();
    *v17 = 136446466;
    sub_1A3C2EF94(v12, v13, v44);
  }

  v43 = *(v4[10] + 8);
  v43(v4[13], v4[9]);
  v18 = [objc_opt_self() defaultManager];
  sub_1A5240E04();
  v19 = sub_1A524C634();

  v20 = sub_1A5240E84();
  v21 = [v18 createFileAtPath:v19 contents:v20 attributes:0];

  v22 = v4[9];
  v23 = v4[2];
  if (v21)
  {
    v24 = v4[12];
    v25 = sub_1A524D264();
    v26 = *v41;
    v42(v24, v23, v22);
    v27 = os_log_type_enabled(v26, v25);
    v28 = v4[12];
    v29 = v4[9];
    if (v27)
    {
      v30 = v26;
      v31 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v31 = 136446466;
      sub_1A3C2EF94(v40, v13, v44);
    }
  }

  else
  {
    v32 = v4[11];
    v33 = sub_1A524D244();
    v34 = *v41;
    v42(v32, v23, v22);
    v35 = os_log_type_enabled(v34, v33);
    v28 = v4[11];
    v29 = v4[9];
    if (v35)
    {
      v36 = v34;
      v37 = swift_slowAlloc();
      v44[0] = swift_slowAlloc();
      *v37 = 136446466;
      sub_1A3C2EF94(v40, v13, v44);
    }
  }

  v43(v28, v29);

  v38 = v4[1];

  return v38();
}

char *sub_1A4354968()
{
  v1 = sub_1A5240E64();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3EE53E0(0);
  v38 = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v33 - v11;
  sub_1A3C566A4(0, &qword_1EB138670, sub_1A3EE53E0, MEMORY[0x1E69E6F90]);
  v13 = *(v6 + 72);
  v14 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v35 = swift_allocObject();
  v15 = v35 + v14;
  v16 = qword_1EB1B8798;
  swift_beginAccess();
  sub_1A4359F74(v0 + v16, v15, sub_1A3EE53E0);
  v17 = qword_1EB1B87A0;
  swift_beginAccess();
  v18 = v0 + v17;
  v19 = v1;
  sub_1A4359F74(v18, v15 + v13, sub_1A3EE53E0);
  sub_1A4359F74(v15, v12, sub_1A3EE53E0);
  sub_1A435B0E8(v12, v9, sub_1A3EE53E0);
  v20 = (v2 + 32);
  v37 = v2;
  v21 = *(v2 + 48);
  v22 = v21(v9, 1, v19);
  v36 = v4;
  if (v22 == 1)
  {
    sub_1A435C808(v9, sub_1A3EE53E0);
    v23 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v33 = *v20;
    v34 = v19;
    v33(v4, v9, v19);
    v23 = MEMORY[0x1E69E7CC0];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1A3ECD488(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1A3ECD488((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v26 = &v23[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v25];
    v19 = v34;
    v33(v26, v36, v34);
  }

  sub_1A4359F74(v15 + v13, v12, sub_1A3EE53E0);
  sub_1A435B0E8(v12, v9, sub_1A3EE53E0);
  if (v21(v9, 1, v19) == 1)
  {
    sub_1A435C808(v9, sub_1A3EE53E0);
  }

  else
  {
    v27 = *v20;
    v28 = v36;
    (*v20)(v36, v9, v19);
    v29 = v19;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1A3ECD488(0, *(v23 + 2) + 1, 1, v23);
    }

    v31 = *(v23 + 2);
    v30 = *(v23 + 3);
    if (v31 >= v30 >> 1)
    {
      v23 = sub_1A3ECD488((v30 > 1), v31 + 1, 1, v23);
    }

    *(v23 + 2) = v31 + 1;
    v27(&v23[((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v31], v28, v29);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v23;
}

uint64_t sub_1A4354E48(uint64_t a1, void *a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v3[5] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1A4354E90, a2, 0);
}

uint64_t sub_1A4354E90(uint64_t a1)
{
  sub_1A524CDD4();
  v2 = v1[4];
  v3 = v1[3];
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LivePhotoEntry(255, *(v1[5] + 80), *(v1[5] + 88), v4);
  WitnessTable = swift_getWitnessTable();
  v6 = swift_task_alloc();
  v1[6] = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v2;
  v7 = swift_task_alloc();
  v1[7] = v7;
  sub_1A3C566A4(0, &qword_1EB138600, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
  v9 = v8;
  *v7 = v1;
  v7[1] = sub_1A434F148;
  v10 = v1[2];

  return MEMORY[0x1EEE6DE38](v10, v3, WitnessTable, 0xD00000000000001BLL, 0x80000001A53D2B50, sub_1A435AAA0, v6, v9);
}

uint64_t sub_1A435503C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A435AA6C(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a2 + qword_1EB1B87A8);
  v10 = sub_1A524D264();
  v11 = *sub_1A486DB9C();
  v12 = os_log_type_enabled(v11, v10);
  if (v9 == 1)
  {
    if (v12)
    {
      v13 = v11;
      v14 = swift_slowAlloc();
      *v14 = 134349056;
      *(v14 + 4) = a3;
      _os_log_impl(&dword_1A3C1C000, v13, v10, "Journal: [%{public}ld] Live photo resources immediately available", v14, 0xCu);
      MEMORY[0x1A590EEC0](v14, -1, -1);
    }

    v21[1] = sub_1A4354968();
    sub_1A4359E34(0);
    return sub_1A524CBE4();
  }

  else
  {
    if (v12)
    {
      v16 = v11;
      v17 = swift_slowAlloc();
      *v17 = 134349056;
      *(v17 + 4) = a3;
      _os_log_impl(&dword_1A3C1C000, v16, v10, "Journal: [%{public}ld] Live photo resources not available yet. Queuing request", v17, 0xCu);
      MEMORY[0x1A590EEC0](v17, -1, -1);
    }

    sub_1A4359E34(0);
    v19 = v18;
    v20 = *(v18 - 8);
    (*(v20 + 16))(v8, a1, v18);
    (*(v20 + 56))(v8, 0, 1, v19);
    swift_beginAccess();
    sub_1A433F5DC(v8, a3);
    return swift_endAccess();
  }
}

uint64_t sub_1A43552A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A43552C4, 0, 0);
}

uint64_t sub_1A43552C4()
{
  v1 = sub_1A524D264();
  v2 = *sub_1A486DB9C();
  if (os_log_type_enabled(v2, v1))
  {
    v3 = v0[5];
    v4 = v2;
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = v3;
    _os_log_impl(&dword_1A3C1C000, v4, v1, "Journal: [%{public}ld] Live photo request cancelled", v5, 0xCu);
    MEMORY[0x1A590EEC0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[7] = Strong;
  if (Strong)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A435540C, Strong, 0);
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1A435540C()
{
  sub_1A4355478(*(v0 + 40));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A4355478(uint64_t a1)
{
  sub_1A435AA6C(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4359E34(0);
  v7 = v6;
  v8 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v20 - v12;
  v14 = qword_1EB1B87B8;
  swift_beginAccess();
  v15 = *(v1 + v14);
  if (!*(v15 + 16))
  {
    return swift_endAccess();
  }

  v16 = sub_1A3CAB9BC(a1);
  if ((v17 & 1) == 0)
  {
    return swift_endAccess();
  }

  (*(v8 + 16))(v10, *(v15 + 56) + *(v8 + 72) * v16, v7);
  (*(v8 + 32))(v13, v10, v7);
  swift_endAccess();
  (*(v8 + 56))(v5, 1, 1, v7);
  swift_beginAccess();
  sub_1A433F5DC(v5, a1);
  swift_endAccess();
  sub_1A524CC04();
  sub_1A435C7C0(&qword_1EB138668, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v18 = swift_allocError();
  sub_1A524C394();
  v20[1] = v18;
  sub_1A524CBD4();
  return (*(v8 + 8))(v13, v7);
}

char *sub_1A435570C()
{

  v1 = *(*v0 + 136);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_1A43557E4()
{
  sub_1A435570C();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t OneUpSharePlaySessionRecipientJournal.deinit()
{
  v1 = *(*v0 + 96);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);

  return v0;
}

uint64_t OneUpSharePlaySessionRecipientJournal.__deallocating_deinit()
{
  OneUpSharePlaySessionRecipientJournal.deinit();

  return swift_deallocClassInstance();
}

uint64_t OneUpSharePlayVideoSupportError.hashValue.getter()
{
  sub_1A524EC94();
  MEMORY[0x1A590A010](0);
  return sub_1A524ECE4();
}

char *sub_1A43559F4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A3C4D548(0, &qword_1EB1386A8, &type metadata for OneUpSharePlayImageLoadResult);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A4355B04(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1A52411C4();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1A524C4A4();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1A435C7C0(&unk_1EB12AFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1A524C594();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1A4356134(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

void sub_1A4355DE4(uint64_t a1)
{
  v2 = v1;
  v37 = sub_1A52411C4();
  v3 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  sub_1A435CC64(0);
  v6 = sub_1A524E3B4();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    v32 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v35 = v3 + 32;
    v14 = v6 + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v33 = *(v3 + 72);
      v34 = v20;
      v20(v36, v19, v37);
      sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = sub_1A524C4A4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v34(*(v7 + 48) + v15 * v33, v36, v37);
      ++*(v7 + 16);
      v5 = v32;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v5 + 32);
    if (v29 >= 64)
    {
      bzero(v9, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    v2 = v31;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
}

uint64_t sub_1A4356134(uint64_t a1, unint64_t a2, char a3)
{
  v32 = a1;
  v6 = sub_1A52411C4();
  v7 = *(v6 - 8);
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  v30 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1A4355DE4(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1A43563D8();
      goto LABEL_12;
    }

    sub_1A4356600(v11 + 1);
  }

  v13 = *v3;
  sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v14 = sub_1A524C4A4();
  v15 = v13 + 56;
  v31 = v13;
  v16 = -1 << *(v13 + 32);
  a2 = v14 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v20 = *(v7 + 16);
    v19 = v7 + 16;
    v18 = v20;
    v21 = *(v19 + 56);
    do
    {
      v18(v10, *(v31 + 48) + v21 * a2, v6);
      sub_1A435C7C0(&unk_1EB12AFB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v22 = sub_1A524C594();
      (*(v19 - 8))(v10, v6);
      if (v22)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v15 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v23 = v30;
  v24 = *v29;
  *(v24 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v23 + 32))(*(v24 + 48) + *(v23 + 72) * a2, v32, v6, v8);
  v26 = *(v24 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v24 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1A524EB74();
  __break(1u);
  return result;
}

void sub_1A43563D8()
{
  v1 = v0;
  v2 = sub_1A52411C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A435CC64(0);
  v6 = *v0;
  v7 = sub_1A524E3A4();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    v9 = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || v9 >= v6 + 56 + 8 * v10)
    {
      memmove(v9, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    v24 = v3 + 16;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
      (*(v3 + 32))(*(v8 + 48) + v20, v5, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }
}

void sub_1A4356600(uint64_t a1)
{
  v2 = v1;
  v34 = sub_1A52411C4();
  v3 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  sub_1A435CC64(0);
  v7 = sub_1A524E3B4();
  v8 = v6;
  if (*(v6 + 16))
  {
    v29 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v32 = v3 + 16;
    v33 = v3;
    v15 = v7 + 56;
    v30 = (v3 + 32);
    v31 = v8;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v33 + 72);
      (*(v33 + 16))(v5, *(v8 + 48) + v20 * (v17 | (v9 << 6)), v34);
      sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v21 = sub_1A524C4A4();
      v22 = -1 << *(v7 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v15 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v15 + 8 * v24);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v23) & ~*(v15 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v30)(*(v7 + 48) + v16 * v20, v5, v34);
      ++*(v7 + 16);
      v8 = v31;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v29;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }
}

void sub_1A4356910(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), void (*a4)(void, __n128))
{
  v6 = v4;
  v7 = a2;
  v44 = a3(0);
  v8 = *(v44 - 8);
  v9.n128_f64[0] = MEMORY[0x1EEE9AC00](v44);
  v43 = &v39 - v10;
  v11 = *v4;
  a4(0, v9);
  v42 = v7;
  v12 = sub_1A524E774();
  v13 = v12;
  if (*(v11 + 16))
  {
    v39 = v6;
    v14 = 0;
    v15 = (v11 + 64);
    v16 = 1 << *(v11 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v11 + 64);
    v19 = (v16 + 63) >> 6;
    v40 = (v8 + 16);
    v41 = v8;
    v20 = (v8 + 32);
    v21 = v12 + 64;
    while (v18)
    {
      v23 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
LABEL_15:
      v26 = v23 | (v14 << 6);
      v27 = *(*(v11 + 48) + 8 * v26);
      v28 = *(v8 + 72);
      v29 = *(v11 + 56) + v28 * v26;
      if (v42)
      {
        (*v20)(v43, v29, v44);
      }

      else
      {
        (*v40)(v43, v29, v44);
      }

      v30 = sub_1A524EC84();
      v31 = -1 << *(v13 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v21 + 8 * v33);
          if (v37 != -1)
          {
            v22 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return;
      }

      v22 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      *(*(v13 + 48) + 8 * v22) = v27;
      (*v20)((*(v13 + 56) + v28 * v22), v43, v44);
      ++*(v13 + 16);
      v8 = v41;
    }

    v24 = v14;
    while (1)
    {
      v14 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v14 >= v19)
      {
        break;
      }

      v25 = v15[v14];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v18 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v42 & 1) == 0)
    {

      v6 = v39;
      goto LABEL_34;
    }

    v38 = 1 << *(v11 + 32);
    v6 = v39;
    if (v38 >= 64)
    {
      bzero((v11 + 64), ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v15 = -1 << v38;
    }

    *(v11 + 16) = 0;
  }

LABEL_34:
  *v6 = v13;
}

unint64_t sub_1A4356C58(unint64_t result, uint64_t a2, uint64_t (*a3)(void), __n128 a4)
{
  v5 = result;
  v6 = a2 + 64;
  v7 = -1 << *(a2 + 32);
  v8 = (result + 1) & ~v7;
  if ((*(a2 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v10 = ~v7;
    v11 = (sub_1A524E244() + 1) & ~v7;
    do
    {
      v12 = *(a2 + 48);
      v13 = (v12 + 8 * v8);
      result = sub_1A524EC84();
      v14 = result & v10;
      if (v5 >= v11)
      {
        if (v14 < v11 || v5 < v14)
        {
          goto LABEL_5;
        }
      }

      else if (v14 < v11 && v5 < v14)
      {
        goto LABEL_5;
      }

      v17 = (v12 + 8 * v5);
      if (v5 != v8 || v17 >= v13 + 1)
      {
        *v17 = *v13;
      }

      v18 = *(a2 + 56);
      v19 = *(*(a3(0) - 8) + 72);
      v20 = v19 * v5;
      result = v18 + v19 * v5;
      v21 = v19 * v8;
      v22 = v18 + v19 * v8 + v19;
      if (v20 < v21 || result >= v22)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v5 = v8;
        if (v20 == v21)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v5 = v8;
LABEL_5:
      v8 = (v8 + 1) & v10;
    }

    while (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  *(v6 + ((v5 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v5) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1A4356E0C(uint64_t a1, uint64_t a2, char a3, uint64_t (*a4)(void), void (*a5)(void, __n128), uint64_t (*a6)(void))
{
  v10 = v6;
  v14 = *v6;
  v16 = sub_1A3CAB9BC(a2);
  v17 = v14[2];
  v18 = (v15 & 1) == 0;
  v19 = v17 + v18;
  if (__OFADD__(v17, v18))
  {
    __break(1u);
    goto LABEL_15;
  }

  v20 = v15;
  v21 = v14[3];
  if (v21 < v19 || (a3 & 1) == 0)
  {
    if (v21 >= v19 && (a3 & 1) == 0)
    {
      sub_1A4357048(a4, a5);
      goto LABEL_7;
    }

    sub_1A4356910(v19, a3 & 1, a4, a5);
    v30 = sub_1A3CAB9BC(a2);
    if ((v20 & 1) == (v31 & 1))
    {
      v16 = v30;
      v22 = *v10;
      if (v20)
      {
        goto LABEL_8;
      }

      return sub_1A4356F98(v16, a2, a1, v22, a4);
    }

LABEL_15:
    result = sub_1A524EB84();
    __break(1u);
    return result;
  }

LABEL_7:
  v22 = *v10;
  if ((v20 & 1) == 0)
  {
    return sub_1A4356F98(v16, a2, a1, v22, a4);
  }

LABEL_8:
  v23 = v22[7];
  v24 = a6(0);
  v25 = *(v24 - 8);
  v26 = *(v25 + 40);
  v27 = v24;
  v28 = v23 + *(v25 + 72) * v16;

  return v26(v28, a1, v27);
}

uint64_t sub_1A4356F98(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v8 = a4[7];
  v9 = a5(0);
  result = (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a3, v9);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

void sub_1A4357048(uint64_t (*a1)(void), void (*a2)(void, double))
{
  v4 = v2;
  v31 = a1(0);
  v33 = *(v31 - 8);
  v5 = MEMORY[0x1EEE9AC00](v31);
  v30 = v29 - v6;
  a2(0, v5);
  v7 = *v2;
  v8 = sub_1A524E764();
  v9 = v8;
  if (*(v7 + 16))
  {
    v29[0] = v4;
    v10 = (v8 + 64);
    v11 = ((1 << *(v9 + 32)) + 63) >> 6;
    if (v9 != v7 || v10 >= v7 + 64 + 8 * v11)
    {
      memmove(v10, (v7 + 64), 8 * v11);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v32 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v29[1] = v33 + 32;
    v29[2] = v33 + 16;
    if (v17)
    {
      do
      {
        v19 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
LABEL_17:
        v22 = v19 | (v13 << 6);
        v23 = *(*(v7 + 48) + 8 * v22);
        v24 = v33;
        v25 = *(v33 + 72) * v22;
        v27 = v30;
        v26 = v31;
        (*(v33 + 16))(v30, *(v7 + 56) + v25, v31);
        v28 = v32;
        *(*(v32 + 48) + 8 * v22) = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v27, v26);
        v17 = v34;
      }

      while (v34);
    }

    v20 = v13;
    while (1)
    {
      v13 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v4 = v29[0];
        v9 = v32;
        goto LABEL_21;
      }

      v21 = *(v7 + 64 + 8 * v13);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v34 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v9;
  }
}

void sub_1A43572B0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1A524EA34();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1A524CAC4();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_1A43574F0(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_1A43573A8(0, v2, 1, a1);
  }
}

void sub_1A43573A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 16 * a3 + 9;
    v6 = a1 - a3;
LABEL_5:
    v25 = v5;
    v26 = a3;
    v7 = v6;
    while (1)
    {
      v8 = (v5 - 9);
      v9 = *(v5 - 25);
      v10 = *(v5 - 9);
      v11 = v9;
      [v10 size];
      v13 = v12;
      [v10 size];
      v15 = v13 * v14;
      [v11 size];
      v17 = v16;
      [v11 size];
      v19 = v18;

      if (v15 >= v17 * v19)
      {
LABEL_4:
        a3 = v26 + 1;
        v5 = v25 + 16;
        --v6;
        if (v26 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v20 = *(v5 - 25);
      *(v5 - 16) = *v5;
      v5 -= 16;
      v21 = *(v5 + 7);
      v22 = *(v5 + 15);
      *v8 = v20;
      *(v5 - 9) = v21;
      *(v5 - 1) = v22;
      if (__CFADD__(v7++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1A43574F0(void **a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_93:
    v5 = v7;
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v10 = sub_1A3D86884(v10);
    }

    v117 = *(v10 + 2);
    if (v117 >= 2)
    {
      while (*v5)
      {
        v118 = v10;
        v10 = (v117 - 1);
        v119 = *&v118[16 * v117];
        v120 = *&v118[16 * v117 + 24];
        sub_1A4357C40((*v5 + 16 * v119), (*v5 + 16 * *&v118[16 * v117 + 16]), (*v5 + 16 * v120), v7);
        if (v6)
        {
          goto LABEL_103;
        }

        if (v120 < v119)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v118 = sub_1A3D86884(v118);
        }

        if (v117 - 2 >= *(v118 + 2))
        {
          goto LABEL_119;
        }

        v121 = &v118[16 * v117];
        *v121 = v119;
        *(v121 + 1) = v120;
        sub_1A3D867F8(v117 - 1);
        v10 = v118;
        v117 = *(v118 + 2);
        if (v117 <= 1)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_129;
    }

LABEL_103:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v12 >= v8)
    {
      v8 = v12;
    }

    else
    {
      v124 = v10;
      v13 = *(*v7 + 16 * v12);
      v10 = (16 * v11);
      v14 = (*v7 + 16 * v11);
      v16 = *v14;
      v15 = v14 + 4;
      v5 = v13;
      v17 = v16;
      [v5 size];
      v19 = v18;
      [v5 size];
      v21 = v19 * v20;
      [v17 size];
      v23 = v22;
      [v17 size];
      v25 = v24;

      v26 = v23 * v25;
      v27 = v11 + 2;
      while (v8 != v27)
      {
        v28 = v8;
        v29 = *(v15 - 2);
        v5 = *v15;
        v30 = v29;
        [v5 size];
        v32 = v31;
        [v5 size];
        v34 = v32 * v33;
        [v30 size];
        v36 = v35;
        v8 = v28;
        [v30 size];
        v38 = v37;

        ++v27;
        v15 += 2;
        if (v21 < v26 == v34 >= v36 * v38)
        {
          v8 = v27 - 1;
          break;
        }
      }

      v7 = a3;
      if (v21 < v26)
      {
        if (v8 < v11)
        {
          goto LABEL_122;
        }

        if (v11 < v8)
        {
          v39 = 16 * v8 - 16;
          v40 = v8;
          v41 = v11;
          do
          {
            if (v41 != --v40)
            {
              v43 = *a3;
              if (!*a3)
              {
                goto LABEL_128;
              }

              v44 = &v10[v43];
              v45 = (v43 + v39);
              v46 = *&v10[v43];
              v47 = v10[v43 + 8];
              v48 = v10[v43 + 9];
              if (v10 != v39 || v44 >= v45 + 16)
              {
                *v44 = *v45;
              }

              v42 = v43 + v39;
              *v42 = v46;
              *(v42 + 8) = v47;
              *(v42 + 9) = v48;
            }

            ++v41;
            v39 -= 16;
            v10 += 16;
          }

          while (v41 < v40);
        }
      }

      v10 = v124;
    }

    v49 = v7[1];
    if (v8 < v49)
    {
      if (__OFSUB__(v8, v11))
      {
        goto LABEL_121;
      }

      if (v8 - v11 < a4)
      {
        if (__OFADD__(v11, a4))
        {
          goto LABEL_123;
        }

        if (v11 + a4 >= v49)
        {
          v50 = v7[1];
        }

        else
        {
          v50 = v11 + a4;
        }

        if (v50 < v11)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v8 != v50)
        {
          break;
        }
      }
    }

    v51 = v8;
    if (v8 < v11)
    {
      goto LABEL_120;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1A3D8598C(0, *(v10 + 2) + 1, 1, v10);
    }

    v53 = *(v10 + 2);
    v52 = *(v10 + 3);
    v54 = v53 + 1;
    if (v53 >= v52 >> 1)
    {
      v10 = sub_1A3D8598C((v52 > 1), v53 + 1, 1, v10);
    }

    *(v10 + 2) = v54;
    v55 = &v10[16 * v53];
    *(v55 + 4) = v11;
    *(v55 + 5) = v51;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    v127 = v51;
    if (v53)
    {
      while (1)
      {
        v56 = v54 - 1;
        if (v54 >= 4)
        {
          break;
        }

        if (v54 == 3)
        {
          v57 = *(v10 + 4);
          v58 = *(v10 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_52:
          if (v60)
          {
            goto LABEL_109;
          }

          v73 = &v10[16 * v54];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_112;
          }

          v79 = &v10[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_116;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v54 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v83 = &v10[16 * v54];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_66:
        if (v78)
        {
          goto LABEL_111;
        }

        v86 = &v10[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_114;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_73:
        v94 = v56 - 1;
        if (v56 - 1 >= v54)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*v7)
        {
          goto LABEL_127;
        }

        v95 = *&v10[16 * v94 + 32];
        v96 = *&v10[16 * v56 + 40];
        sub_1A4357C40((*v7 + 16 * v95), (*v7 + 16 * *&v10[16 * v56 + 32]), (*v7 + 16 * v96), v5);
        if (v6)
        {
          goto LABEL_103;
        }

        if (v96 < v95)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_1A3D86884(v10);
        }

        if (v94 >= *(v10 + 2))
        {
          goto LABEL_106;
        }

        v97 = &v10[16 * v94];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        sub_1A3D867F8(v56);
        v54 = *(v10 + 2);
        if (v54 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v10[16 * v54 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_107;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_108;
      }

      v68 = &v10[16 * v54];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_110;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_113;
      }

      if (v72 >= v64)
      {
        v90 = &v10[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_117;
        }

        if (v59 < v93)
        {
          v56 = v54 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v127;
    if (v127 >= v8)
    {
      goto LABEL_93;
    }
  }

  v125 = v10;
  v98 = *v7;
  v99 = v98 + 16 * v8 + 9;
  v100 = v11 - v8;
  v128 = v50;
LABEL_84:
  v129 = v99;
  v130 = v8;
  v101 = v100;
  while (1)
  {
    v102 = (v99 - 9);
    v103 = *(v99 - 25);
    v5 = *(v99 - 9);
    v104 = v103;
    [v5 size];
    v106 = v105;
    [v5 size];
    v108 = v106 * v107;
    [v104 size];
    v110 = v109;
    [v104 size];
    v112 = v111;

    if (v108 >= v110 * v112)
    {
LABEL_83:
      v8 = v130 + 1;
      v99 = v129 + 16;
      --v100;
      v51 = v128;
      if (v130 + 1 != v128)
      {
        goto LABEL_84;
      }

      v7 = a3;
      v10 = v125;
      if (v128 < v11)
      {
        goto LABEL_120;
      }

      goto LABEL_33;
    }

    if (!v98)
    {
      break;
    }

    v113 = *(v99 - 25);
    *(v99 - 16) = *v99;
    v99 -= 16;
    v114 = *(v99 + 7);
    v115 = *(v99 + 15);
    *v102 = v113;
    *(v99 - 9) = v114;
    *(v99 - 1) = v115;
    if (__CFADD__(v101++, 1))
    {
      goto LABEL_83;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
}

uint64_t sub_1A4357C40(void **__dst, void **__src, id *a3, void **a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src - __dst;
  v8 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v8 = __src - __dst;
  }

  v9 = v8 >> 4;
  v10 = a3 - __src;
  v11 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v11 = a3 - __src;
  }

  v12 = v11 >> 4;
  if (v9 >= v12)
  {
    v30 = 2 * v12;
    v29 = __src;
    if (a4 != __src || &__src[v30] <= a4)
    {
      memmove(a4, __src, 16 * v12);
    }

    v15 = &v4[v30];
    if (v10 >= 16 && v29 > v6)
    {
LABEL_25:
      v49 = v29;
      v31 = v29 - 2;
      v5 -= 2;
      v32 = v15;
      do
      {
        v33 = v5 + 2;
        v34 = *(v32 - 2);
        v32 -= 2;
        v35 = v31;
        v36 = *v31;
        v37 = v34;
        v38 = v36;
        [v37 size];
        v40 = v39;
        [v37 size];
        v42 = v40 * v41;
        [v38 size];
        v44 = v43;
        [v38 size];
        v46 = v45;

        if (v42 < v44 * v46)
        {
          if (v33 != v49)
          {
            *v5 = *v35;
          }

          if (v15 <= v4 || (v29 = v35, v35 <= v6))
          {
            v29 = v35;
            goto LABEL_36;
          }

          goto LABEL_25;
        }

        if (v33 != v15)
        {
          *v5 = *v32;
        }

        v5 -= 2;
        v15 = v32;
        v31 = v35;
      }

      while (v32 > v4);
      v15 = v32;
      v29 = v49;
    }
  }

  else
  {
    v13 = __src;
    v14 = 2 * v9;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 8);
    }

    v15 = &v4[v14];
    if (v7 >= 16 && v13 < v5)
    {
      while (1)
      {
        v16 = *v4;
        v17 = *v13;
        v18 = v16;
        [v17 size];
        v20 = v19;
        [v17 size];
        v22 = v20 * v21;
        [v18 size];
        v24 = v23;
        [v18 size];
        v26 = v25;

        if (v22 >= v24 * v26)
        {
          break;
        }

        v27 = v13;
        v28 = v6 == v13;
        v13 += 2;
        if (!v28)
        {
          goto LABEL_16;
        }

LABEL_17:
        v6 += 2;
        if (v4 >= v15 || v13 >= v5)
        {
          goto LABEL_19;
        }
      }

      v27 = v4;
      v28 = v6 == v4;
      v4 += 2;
      if (v28)
      {
        goto LABEL_17;
      }

LABEL_16:
      *v6 = *v27;
      goto LABEL_17;
    }

LABEL_19:
    v29 = v6;
  }

LABEL_36:
  v47 = (v15 - v4 + (v15 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0;
  if (v29 != v4 || v29 >= (v4 + v47))
  {
    memmove(v29, v4, v47);
  }

  return 1;
}

uint64_t *sub_1A4357F7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v23 = a2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v21 = *(AssociatedTypeWitness - 8);
  v22 = AssociatedTypeWitness;
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v20 = &v20 - v8;
  v9 = swift_getAssociatedTypeWitness();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  *(v2 + *(v4 + 112)) = 0;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 56);
  v15 = swift_unknownObjectRetain();
  v14(v15, v9, AssociatedConformanceWitness);
  (*(v10 + 32))(v3 + *(*v3 + 96), v12, v9);
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library(0, v6, v5, v16);
  v17 = v20;
  (*(v21 + 16))(v20, v23, v22);
  v18 = swift_allocObject();
  sub_1A433D92C(v17);
  *(v3 + *(*v3 + 104)) = v18;
  sub_1A433BEF8();
  return v3;
}

uint64_t sub_1A4358214()
{
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3D60150;

  return sub_1A433C578(v5, v6, v7, v0 + v3, v4);
}

uint64_t sub_1A4358328()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3CA8098;

  return sub_1A433C2E0(v3, v4, v5, v2);
}

unint64_t sub_1A4358408()
{
  result = qword_1EB1385E8;
  if (!qword_1EB1385E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1385E8);
  }

  return result;
}

uint64_t sub_1A435845C(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t sub_1A4358548(uint64_t a1)
{
  result = swift_getAssociatedTypeWitness();
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

uint64_t sub_1A4358624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1A4358674(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 34))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A43586D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_1A43587B8(uint64_t a1)
{
  sub_1A43588E0(319);
  if (v3 <= 0x3F)
  {
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat(255, *(a1 + 80), *(a1 + 88), v2);
    sub_1A3DBD9A0();
    sub_1A524ECF4();
    sub_1A524DF24();
    if (v4 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

void sub_1A435892C(uint64_t a1)
{
  sub_1A3EE53E0(319);
  if (v1 <= 0x3F)
  {
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    swift_getTupleTypeMetadata2();
    sub_1A524DF24();
    if (v2 <= 0x3F)
    {
      swift_initClassMetadata2();
    }
  }
}

uint64_t sub_1A4358AC8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore37OneUpSharePlaySessionRecipientJournalC7LibraryC9LoadErrorOyx__G(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A4358B1C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A4358B70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1A4358C08(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 10))
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

uint64_t sub_1A4358C50(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 10) = 1;
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

    *(result + 10) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A4358CA0(uint64_t a1)
{
  result = sub_1A5240E64();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4358D0C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A4358E00(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(*(AssociatedTypeWitness - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (v8 < a2)
  {
    v10 = ((v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 43;
    v11 = (((v9 + 7) & 0xFFFFFFF8) + 43) & 0xFFFFFFFB;
    v12 = v11 == 3 ? ((a2 - v8 + 0xFFFFFF) >> 24) + 1 : 2;
    v13 = v12 < 0x100 ? 1 : 2;
    v14 = v12 >= 2 ? v13 : 0;
    if (v14)
    {
      if (v14 == 2)
      {
        v15 = *(a1 + v10);
        if (v15)
        {
LABEL_18:
          v16 = (v15 << 24) - 0x1000000;
          if (v11 == 3)
          {
            v20 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v16 = 0;
            v20 = *a1;
          }

          return v8 + (v20 | v16) + 1;
        }
      }

      else
      {
        v15 = *(a1 + v10);
        if (v15)
        {
          goto LABEL_18;
        }
      }
    }
  }

  if (v7 < 0x7FFFFFFF)
  {
    v19 = *(((a1 + v9 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v19 >= 0xFFFFFFFF)
    {
      LODWORD(v19) = -1;
    }

    return (v19 + 1);
  }

  else
  {
    v18 = *(v6 + 48);

    return v18(a1);
  }
}

double sub_1A4359000(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = *(v7 + 84);
  v10 = *(v7 + 64);
  if (v9 <= 0x7FFFFFFF)
  {
    v11 = 0x7FFFFFFF;
  }

  else
  {
    v11 = *(v7 + 84);
  }

  v12 = ((v10 + 7) & 0xFFFFFFFFFFFFFFF8) + 43;
  if (((v10 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v13 = ((a3 - v11 + 0xFFFFFF) >> 24) + 1;
  }

  else
  {
    v13 = 2;
  }

  if (v13 < 0x100)
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  if (v13 >= 2)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  if (v11 < a3)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  if (v11 >= a2)
  {
    if (v16)
    {
      if (v16 != 2)
      {
        a1[v12] = 0;
        if (!a2)
        {
          return result;
        }

LABEL_32:
        if (v9 < 0x7FFFFFFF)
        {
          v20 = &a1[v10 + 7] & 0xFFFFFFFFFFFFFFF8;
          if ((a2 & 0x80000000) != 0)
          {
            result = 0.0;
            *(v20 + 8) = 0u;
            *(v20 + 24) = 0u;
            *v20 = a2 & 0x7FFFFFFF;
          }

          else
          {
            *(v20 + 8) = (a2 - 1);
          }
        }

        else
        {
          v19 = *(v7 + 56);

          v19(a1, a2);
        }

        return result;
      }

      *&a1[v12] = 0;
    }

    if (!a2)
    {
      return result;
    }

    goto LABEL_32;
  }

  v17 = ~v11 + a2;
  bzero(a1, v12);
  if (v12 == 3)
  {
    v18 = HIBYTE(v17) + 1;
  }

  else
  {
    v18 = 1;
  }

  if (v12 == 3)
  {
    *a1 = v17;
    a1[2] = BYTE2(v17);
    if (!v16)
    {
      return result;
    }
  }

  else
  {
    *a1 = v17;
    if (!v16)
    {
      return result;
    }
  }

  if (v16 == 2)
  {
    *&a1[v12] = v18;
  }

  else
  {
    a1[v12] = v18;
  }

  return result;
}

uint64_t sub_1A4359254(uint64_t a1)
{
  v2 = sub_1A52411C4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = MEMORY[0x1A59082D0](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v5, v15, v2);
      sub_1A4355B04(v8, v5);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

void sub_1A43593F0(uint64_t a1)
{
  v3 = *v1;
  v22 = *(*v1 + 88);
  v21 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v20 - v7;
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = v11;
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = v1[15];
  v20[0] = v1[14];
  (*(v5 + 16))(v8, a1, AssociatedTypeWitness);
  v15 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = v22;
  *(v17 + 4) = v21;
  *(v17 + 5) = v18;
  (*(v5 + 32))(&v17[v15], v8, AssociatedTypeWitness);
  v19 = &v17[v16];
  *v19 = v20[0];
  *(v19 + 1) = v14;
  *&v17[(v16 + 23) & 0xFFFFFFFFFFFFFFF8] = v13;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43596F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v46[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1A5240E64();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat(0, a2, a3, v8);
  v45 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v41 - v13;
  sub_1A3DBD9A0();
  v14 = sub_1A524ECF4();
  v15 = sub_1A524DF24();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v41 - v17;
  v19 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v23);
  v26 = &v41 - v25;
  (*(v16 + 16))(v18, a1, v15, v24);
  if ((*(v19 + 48))(v18, 1, v14) == 1)
  {
    return (*(v16 + 8))(v18, v15);
  }

  (*(v19 + 32))(v26, v18, v14);
  (*(v19 + 16))(v22, v26, v14);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *(v19 + 8);
    v28(v26, v14);
    return (v28)(v22, v14);
  }

  else
  {
    v30 = v44;
    v29 = v45;
    (*(v45 + 32))(v44, v22, v9);
    (*(v29 + 16))(v11, v30, v9);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v32 = v41;
      v31 = v42;
      (*(v41 + 32))(v43, v11, v42);
      v33 = [objc_opt_self() defaultManager];
      v34 = sub_1A5240D44();
      v46[0] = 0;
      v35 = [v33 removeItemAtURL:v34 error:v46];

      if (v35)
      {
        v36 = v46[0];
      }

      else
      {
        v38 = v46[0];
        v39 = sub_1A5240B84();

        swift_willThrow();
      }

      v40 = v45;
      (*(v32 + 8))(v43, v31);
      (*(v40 + 8))(v44, v9);
      return (*(v19 + 8))(v26, v14);
    }

    else
    {
      v37 = *(v29 + 8);
      v37(v30, v9);
      (*(v19 + 8))(v26, v14);
      return (v37)(v11, v9);
    }
  }
}

unint64_t sub_1A4359C40(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void, double), void (*a4)(uint64_t, uint64_t *), uint64_t (*a5)(void))
{
  v28 = a5;
  v8 = a2(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = (&v27 - v11);
  v13 = *(a1 + 16);
  if (v13)
  {
    a3(0, v10);
    v14 = sub_1A524E794();
    v15 = *(v8 + 48);
    v16 = a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v17 = *(v9 + 72);
    while (1)
    {
      a4(v16, v12);
      v18 = *v12;
      result = sub_1A3CAB9BC(*v12);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v14[6] + 8 * result) = v18;
      v22 = v14[7];
      v23 = v28(0);
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v12 + v15, v23);
      v24 = v14[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v14[2] = v26;
      v16 += v17;
      if (!--v13)
      {
        return v14;
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

void sub_1A4359E34(uint64_t a1)
{
  if (!qword_1EB1385F8)
  {
    sub_1A3C566A4(255, &qword_1EB138600, MEMORY[0x1E6968FB0], MEMORY[0x1E69E62F8]);
    sub_1A3DBD9A0();
    v1 = sub_1A524CBF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1385F8);
    }
  }
}

void sub_1A4359ED4(uint64_t a1)
{
  if (!qword_1EB138608)
  {
    sub_1A4359E34(255);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138608);
    }
  }
}

uint64_t sub_1A4359F74(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4359FDC(uint64_t a1)
{
  v3 = *v1;
  v22 = *(*v1 + 88);
  v21 = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = v20 - v7;
  sub_1A3DB4F20(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[1] = v11;
  v12 = sub_1A524CCB4();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = swift_allocObject();
  swift_weakInit();
  v14 = v1[15];
  v20[0] = v1[14];
  (*(v5 + 16))(v8, a1, AssociatedTypeWitness);
  v15 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v16 = (v6 + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v17 = swift_allocObject();
  *(v17 + 2) = 0;
  *(v17 + 3) = 0;
  v18 = v22;
  *(v17 + 4) = v21;
  *(v17 + 5) = v18;
  (*(v5 + 32))(&v17[v15], v8, AssociatedTypeWitness);
  v19 = &v17[v16];
  *v19 = v20[0];
  *(v19 + 1) = v14;
  *&v17[(v16 + 23) & 0xFFFFFFFFFFFFFFF8] = v13;
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A435A2D8(uint64_t a1)
{
  v17[1] = *MEMORY[0x1E69E9840];
  sub_1A3EE53E0(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v16[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_1A5240E64();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1A4359F74(a1, v4, sub_1A3EE53E0);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    return sub_1A435C808(v4, sub_1A3EE53E0);
  }

  (*(v6 + 32))(v8, v4, v5);
  v10 = [objc_opt_self() defaultManager];
  v11 = sub_1A5240D44();
  v17[0] = 0;
  v12 = [v10 removeItemAtURL:v11 error:v17];

  if (v12)
  {
    v13 = v17[0];
  }

  else
  {
    v14 = v17[0];
    v15 = sub_1A5240B84();

    swift_willThrow();
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1A435A544(uint64_t a1)
{
  if (!qword_1EB138620)
  {
    sub_1A3C52C70(255, &qword_1EB138628, 0x1E69880B0);
    sub_1A3DBD9A0();
    v1 = sub_1A524CBF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138620);
    }
  }
}

void sub_1A435A5C4(uint64_t a1)
{
  if (!qword_1EB138630)
  {
    sub_1A435A544(255);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138630);
    }
  }
}

void sub_1A435A684(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_1A435A6E8(uint64_t a1)
{
  if (!qword_1EB138648)
  {
    sub_1A3DBD9A0();
    v1 = sub_1A524CE94();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138648);
    }
  }
}

void sub_1A435A750(uint64_t a1)
{
  if (!qword_1EB138650)
  {
    sub_1A435A6E8(255);
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138650);
    }
  }
}

void sub_1A435A7F0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

double sub_1A435A880(void *result, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_1A435A898(result, a2, a3, a4, a5, BYTE2(a5) & 1);
  }

  return v5;
}

double sub_1A435A898(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (a6)
  {
  }

  else
  {
    sub_1A3C59280(a1, a2);
  }

  return result;
}

uint64_t sub_1A435A8E4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3CA8098;

  return sub_1A4354E48(a1, v5, v4);
}

uint64_t sub_1A435A9D4()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A43552A4(v4, v5, v6, v2, v3);
}

uint64_t sub_1A435AAA8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1A3CA8098;

  return sub_1A434EF74(a1, v5, v4);
}

uint64_t sub_1A435AB98()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4350150(v4, v5, v6, v2, v3);
}

uint64_t sub_1A435AC6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat(0, v4[4], v4[5], a4) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_1A435A544(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = v4[6];
  v12 = v4[7];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1A3CA8098;

  return sub_1A434F8F0(v13, v14, v15, v11, v12, v4 + v7, v4 + v10);
}

unint64_t sub_1A435ADB0()
{
  result = qword_1EB138680;
  if (!qword_1EB138680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138680);
  }

  return result;
}

uint64_t sub_1A435AE64(void *a1, uint64_t a2, void *a3)
{
  sub_1A435A544(0);
  if (a1)
  {
    v7 = a1;
    return sub_1A524CBE4();
  }

  else
  {
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError(0, *(v3 + 16), *(v3 + 24), v6);
    swift_getWitnessTable();
    swift_allocError();
    *v9 = a3;
    v10 = a3;
    return sub_1A524CBD4();
  }
}

uint64_t objectdestroy_78Tm()
{
  sub_1A435A544(0);
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 32) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1A435AFF0(void *a1, void *a2)
{
  sub_1A435A544(0);
  if (a1)
  {
    v6 = a1;
    return sub_1A524CBE4();
  }

  else
  {
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.LoadError(0, *(v2 + 16), *(v2 + 24), v5);
    swift_getWitnessTable();
    swift_allocError();
    *v8 = a2;
    v9 = a2;
    return sub_1A524CBD4();
  }
}

uint64_t sub_1A435B0E8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A435B150()
{
  v2 = *(type metadata accessor for OneUpSharePlayStreamingVideoItem.Format(0) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v0 + 48);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A3CA8098;

  return sub_1A43505C4(v5, v6, v7, v4, v0 + v3);
}

void sub_1A435B234(uint64_t a1)
{
  if (!qword_1EB138688)
  {
    sub_1A3DBD9A0();
    v1 = sub_1A524CBF4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138688);
    }
  }
}

void sub_1A435B2A0(uint64_t a1)
{
  if (!qword_1EB138690)
  {
    sub_1A435B310(255, &qword_1EB138698, MEMORY[0x1E69E6158], MEMORY[0x1E69E6370]);
    v1 = sub_1A524EA54();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138690);
    }
  }
}

void sub_1A435B310(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A435B368(uint64_t a1)
{
  sub_1A435B310(0, &qword_1EB138698, MEMORY[0x1E69E6158], MEMORY[0x1E69E6370]);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A435B3DC(char a1, void *a2)
{
  v5 = *(sub_1A5240E64() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_1A435B234(0);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = v2 + ((v6 + v7 + *(*(v8 - 8) + 80)) & ~*(*(v8 - 8) + 80));

  return sub_1A434DE28(a1, a2, v9, v10, v2 + v6, v11);
}

void sub_1A435B4C4(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (!*a2)
  {
    v6 = sub_1A524E7A4();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

uint64_t objectdestroy_68Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat(0, *(v4 + 32), *(v4 + 40), a4) - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  sub_1A435A544(0);
  v9 = v8;
  v10 = *(v8 - 8);
  v11 = *(v10 + 80);
  swift_unknownObjectRelease();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2 || EnumCaseMultiPayload == 1)
  {
    v13 = sub_1A5240E64();
    (*(*(v13 - 8) + 8))(v4 + v6, v13);
  }

  else if (!EnumCaseMultiPayload)
  {
    sub_1A3C59280(*(v4 + v6), *(v4 + v6 + 8));
  }

  (*(v10 + 8))(v4 + ((v6 + v7 + v11) & ~v11), v9);

  return swift_deallocObject();
}

uint64_t sub_1A435B708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.StreamingVideoEntry.StreamingFormat(0, v4[4], v4[5], a4) - 8);
  v7 = (*(v6 + 80) + 64) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  sub_1A435A544(0);
  v10 = (v7 + v8 + *(*(v9 - 8) + 80)) & ~*(*(v9 - 8) + 80);
  v11 = v4[6];
  v12 = v4[7];
  v13 = swift_task_alloc();
  *(v5 + 16) = v13;
  *v13 = v5;
  v13[1] = sub_1A3CA8098;

  return sub_1A434C7C0(v13, v14, v15, v11, v12, v4 + v7, v4 + v10);
}

uint64_t sub_1A435B84C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 33);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A3D60150;

  return sub_1A4346DA0(a1, v4, v5, v6, v7);
}

uint64_t sub_1A435B954()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A43473C4(v4, v5, v6, v2, v3);
}

uint64_t sub_1A435B9EC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 33);
  if (*(v4 + 170) == 255)
  {
    v7 = sub_1A524D264();
    v8 = *sub_1A486DB9C();
    if (os_log_type_enabled(v8, v7))
    {
      v9 = v8;
      v10 = swift_slowAlloc();
      *v10 = 134349312;
      *(v10 + 4) = v3;
      *(v10 + 12) = 1024;
      *(v10 + 14) = v6;
      _os_log_impl(&dword_1A3C1C000, v9, v7, "Journal: [%{public}ld] No image data available; Queuing continuation. requiresFullResolution: %{BOOL}d", v10, 0x12u);
      MEMORY[0x1A590EEC0](v10, -1, -1);
    }

    sub_1A4347144(v3, a1, v5, v6);
  }

  v11 = *v4;
  v13 = v4[17];
  v12 = v4[18];
  v14 = v4[19];
  v15 = v4[20];
  v16 = *(v4 + 84) | (*(v4 + 170) << 16);
  if (((*(v4 + 170) << 16) & 0x10000) != 0)
  {
    sub_1A435BEE0(v13, v12, v14, v15, v16, 1);
    type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(255, *(v11 + 80), *(v11 + 88), v24);
    sub_1A3DBD9A0();
    sub_1A524CBF4();
    return sub_1A524CBD4();
  }

  v35 = v4[19];
  if (v4[21])
  {
    sub_1A435BEE0(v13, v12, v14, v15, v16, 0);
    v17 = sub_1A524D264();
    v18 = *sub_1A486DB9C();
    if (os_log_type_enabled(v18, v17))
    {
      v20 = v18;
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      *(v21 + 4) = v3;
      v22 = "Journal: [%{public}ld] Image data request immediately available via spatial data";
      v23 = v17;
LABEL_18:
      _os_log_impl(&dword_1A3C1C000, v20, v23, v22, v21, 0xCu);
      MEMORY[0x1A590EEC0](v21, -1, -1);
    }
  }

  else
  {
    if (v4[21] & 0x100) == 0 || (v5)
    {
      v34 = v4[18];
      sub_1A435BEE0(v13, v12, v14, v15, v16, 0);
      v32 = sub_1A524D264();
      log = *sub_1A486DB9C();
      v28 = os_log_type_enabled(log, v32);
      if (v6 & 1) != 0 || (v5)
      {
        v33 = v15;
        if (v28)
        {
          sub_1A435BF2C(v13, v34, v35, v15, v16);
          loga = log;
          v29 = swift_slowAlloc();
          *v29 = 134350080;
          *(v29 + 4) = v3;
          *(v29 + 12) = 1024;
          *(v29 + 14) = 0;
          *(v29 + 18) = 1024;
          *(v29 + 20) = v5;
          *(v29 + 24) = 1024;
          *(v29 + 26) = (v16 & 0x100) >> 8;
          sub_1A435A880(v13, v34, v35, v33, v16);
          *(v29 + 30) = 1024;
          *(v29 + 32) = v6;
          _os_log_impl(&dword_1A3C1C000, loga, v32, "Journal: [%{public}ld] Image data request not satisfied by currently available image data; Queuing for incoming asset. [isSpatial=%{BOOL}d, request=%{BOOL}d] [isFull=%{BOOL}d, request=%{BOOL}d]", v29, 0x24u);
          MEMORY[0x1A590EEC0](v29, -1, -1);
        }

        sub_1A4347144(v3, a1, v5, v6);
      }

      if (!v28)
      {
        goto LABEL_19;
      }

      v20 = log;
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      *(v21 + 4) = v3;
      v22 = "Journal: [%{public}ld] Image data request immediately available via high quality data";
      v23 = v32;
      goto LABEL_18;
    }

    sub_1A435BEE0(v13, v12, v14, v15, v16, 0);
    v26 = sub_1A524D264();
    v27 = *sub_1A486DB9C();
    if (os_log_type_enabled(v27, v26))
    {
      v20 = v27;
      v21 = swift_slowAlloc();
      *v21 = 134349056;
      *(v21 + 4) = v3;
      v22 = "Journal: [%{public}ld] Image data request immediately available via mono data";
      v23 = v26;
      goto LABEL_18;
    }
  }

LABEL_19:
  type metadata accessor for OneUpSharePlaySessionRecipientJournal.Library.ImageDataLoadResult(255, *(v11 + 80), *(v11 + 88), v19);
  sub_1A3DBD9A0();
  sub_1A524CBF4();
  return sub_1A524CBE4();
}

double sub_1A435BEE0(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if ((a6 & 1) == 0)
  {
    sub_1A3D602A8(a1, a2);

    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v7 = a1;
  return result;
}

double sub_1A435BF2C(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (BYTE2(a5) != 255)
  {
    return sub_1A435BEE0(a1, a2, a3, a4, a5, BYTE2(a5) & 1);
  }

  return result;
}

uint64_t sub_1A435BFF4()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2 = *(swift_getAssociatedTypeWitness() - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 26) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *(v6 + 8);
  v18 = *v6;
  v8 = *(v6 + 16);
  if (*(v6 + 18))
  {
    v9 = 0x10000;
  }

  else
  {
    v9 = 0;
  }

  if (*(v6 + 17))
  {
    v10 = 256;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 | v8;
  v12 = *(v0 + v5);
  v13 = swift_task_alloc();
  *(v1 + 16) = v13;
  *v13 = v1;
  v13[1] = sub_1A3CA8098;

  return sub_1A4342EC8(v13, v14, v15, v0 + v3, v18, v7, v11 | v9, v12);
}

unint64_t sub_1A435C204()
{
  result = qword_1EB139250;
  if (!qword_1EB139250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139250);
  }

  return result;
}

void sub_1A435C264(uint64_t a1)
{
  if (!qword_1EB1386A0)
  {
    sub_1A3DBD9A0();
    v1 = sub_1A524CE44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1386A0);
    }
  }
}

void sub_1A435C30C(uint64_t a1)
{
  if (!qword_1EB1386B8)
  {
    sub_1A3DBD9A0();
    v1 = sub_1A524CE64();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1386B8);
    }
  }
}

uint64_t objectdestroy_49Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1A435C400()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A3CA8098;

  return sub_1A4347FB4(v4, v5, v6, v2, v3);
}

uint64_t sub_1A435C498()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_1A524E424();
}

unint64_t sub_1A435C580()
{
  result = qword_1EB1386C0;
  if (!qword_1EB1386C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1386C0);
  }

  return result;
}

unint64_t sub_1A435C5D4()
{
  result = qword_1EB1391D0;
  if (!qword_1EB1391D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1391D0);
  }

  return result;
}

uint64_t sub_1A435C628()
{
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v0 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v6);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1A3CA8098;

  return sub_1A4348FF8(v11, v12, v13, v0 + v4, v8, v9, v10, v2);
}

uint64_t sub_1A435C7C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A435C808(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_158Tm()
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, AssociatedTypeWitness);

  return swift_deallocObject();
}

uint64_t sub_1A435C9BC()
{
  v2 = *(v0 + 32);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v3 = *(swift_getAssociatedTypeWitness() - 8);
  v4 = (*(v3 + 80) + 48) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v0 + v5);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v0 + v6);
  v11 = swift_task_alloc();
  *(v1 + 16) = v11;
  *v11 = v1;
  v11[1] = sub_1A3CA8098;

  return sub_1A4351F3C(v11, v12, v13, v0 + v4, v8, v9, v10, v2);
}

unint64_t sub_1A435CB54()
{
  result = qword_1EB139230;
  if (!qword_1EB139230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB139230);
  }

  return result;
}

uint64_t sub_1A435CBFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

void sub_1A435CC64(uint64_t a1)
{
  if (!qword_1EB1386C8)
  {
    sub_1A52411C4();
    sub_1A435C7C0(&unk_1EB12AFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1A524E3E4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1386C8);
    }
  }
}

uint64_t *sub_1A435CD88(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = *(a1 + 8);
  *&v2[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___player] = 0;
  *&v2[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___contentPlayerView] = 0;
  v7 = &v2[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_placeholderKenBurnsEffect];
  type metadata accessor for LemonadeInlineStoryPlayer(0);
  *v7 = sub_1A41F5728();
  *(v7 + 1) = v8;
  v7[16] = v9 & 1;
  *&v2[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___placeholderView] = 1;
  v10 = *sub_1A4758804();
  v28 = v5;
  v29 = v6;
  v27 = 1;

  j___s12PhotosUICore0A23CollectionPreviewPlayerC13ConfigurationV7defaultAEvgZ_0(&v21);
  v15 = v21;
  v16 = v22;
  v17 = v23;
  v18 = v24;
  v19 = v25;
  v20 = v26;
  v11 = (*(*v10 + 96))(&v28, &v15, &v27);
  swift_unknownObjectRelease();
  *&v3[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_underlyingPlayer] = v11;
  *&v3[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_keyAsset] = a2;
  v14.receiver = v3;
  v14.super_class = type metadata accessor for LemonadeInlineStoryPlayerUIView();
  swift_unknownObjectRetain();
  v12 = objc_msgSendSuper2(&v14, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v12 setClipsToBounds_];

  swift_unknownObjectRelease();

  return v12;
}

void sub_1A435D024()
{
  v4.receiver = v0;
  v4.super_class = type metadata accessor for LemonadeInlineStoryPlayerUIView();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v1 = sub_1A435D52C();
  [v0 bounds];
  [v1 setFrame_];

  if (sub_1A435D6D4())
  {
    [v0 bounds];
    sub_1A524D9E4();
  }

  v2 = *&v0[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___placeholderView];
  if (v2)
  {
    v3 = v2;
    [v0 bounds];
    [v3 setBounds_];
    sub_1A41ACC68(v2);
  }
}

uint64_t sub_1A435D150()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___player;
  if (*(v0 + OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___player))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___player);
  }

  else
  {
    type metadata accessor for LemonadeInlineStoryPlayer(0);
    v3 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v4 = swift_allocObject();
    swift_unknownObjectWeakInit();

    v2 = sub_1A41F569C(v5, sub_1A435DBD8, v3, sub_1A435DBE0, v4);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1A435D258(uint64_t a1)
{
  v2 = sub_1A524BEE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1A524BF64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3C52C70(0, &qword_1EB12B180, 0x1E69E9610);
  v10 = sub_1A524D474();
  aBlock[4] = sub_1A435DE5C;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A3C2E0D0;
  aBlock[3] = &block_descriptor_18_3;
  v11 = _Block_copy(aBlock);

  sub_1A524BF14();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1A435E03C(&qword_1EB12B1E0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A3C38394(0);
  sub_1A435E03C(&qword_1EB12B1B0, sub_1A3C38394, MEMORY[0x1E69E6328]);
  sub_1A524E224();
  MEMORY[0x1A5908800](0, v9, v5, v11);
  _Block_release(v11);

  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

char *sub_1A435D52C()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___contentPlayerView;
  v2 = *&v0[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___contentPlayerView];
  if (v2)
  {
    v3 = *&v0[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___contentPlayerView];
  }

  else
  {
    v4 = v0;
    sub_1A435D150();
    v5 = type metadata accessor for LemonadeInlineStoryContentPlayerUIView();
    v6 = objc_allocWithZone(v5);
    type metadata accessor for PhotosCollectionPreviewPlayerUIView(0, v7);
    *&v6[OBJC_IVAR____TtC12PhotosUICoreP33_D5BBB978DC5D9E9CCAD66E47379B868438LemonadeInlineStoryContentPlayerUIView_collectionPreviewPlayerView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v20.receiver = v6;
    v20.super_class = v5;
    v8 = objc_msgSendSuper2(&v20, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
    v9 = OBJC_IVAR____TtC12PhotosUICoreP33_D5BBB978DC5D9E9CCAD66E47379B868438LemonadeInlineStoryContentPlayerUIView_collectionPreviewPlayerView;
    v10 = *&v8[OBJC_IVAR____TtC12PhotosUICoreP33_D5BBB978DC5D9E9CCAD66E47379B868438LemonadeInlineStoryContentPlayerUIView_collectionPreviewPlayerView];
    v11 = *((*MEMORY[0x1E69E7D40] & *v10) + 0x68);
    v12 = v8;
    v13 = v10;

    v11(v14);

    [v12 addSubview_];

    v15 = sub_1A435D6D4();
    if (v15)
    {
      v16 = v15;
      [v4 insertSubview:v12 belowSubview:v15];
    }

    else
    {
      [v4 addSubview_];
    }

    v17 = *&v4[v1];
    *&v4[v1] = v12;
    v3 = v12;

    v2 = 0;
  }

  v18 = v2;
  return v3;
}

id sub_1A435D6D4()
{
  v1 = OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___placeholderView;
  v2 = *&v0[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView____lazy_storage___placeholderView];
  v3 = v2;
  if (v2 == 1)
  {
    if (*&v0[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_keyAsset])
    {
      objc_opt_self();
      v3 = swift_dynamicCastObjCClass();
      if (v3)
      {
        v4 = objc_allocWithZone(PXPhotoKitAssetView);
        swift_unknownObjectRetain();
        v5 = [v4 initWithFrame:1 options:{0.0, 0.0, 0.0, 0.0}];
        [v5 setAsset_];
        v3 = v5;
        [v3 setContentMode_];
        [v0 addSubview_];
        PXDisplayCollectionDetailedCountsMake();
        v7 = v6;
        PXDisplayCollectionDetailedCountsMake();
        CGAffineTransformMakeScale(&v19, v7, v8);
        [v3 setTransform_];
        sub_1A3C52C70(0, &qword_1EB126A10, off_1E771E328);
        v9 = [swift_getObjCClassFromMetadata() sharedInstance];
        v10 = [v9 alwaysFilterPlaceholder];

        if (v10)
        {
          v11 = [v3 layer];
          v12 = [objc_opt_self() yellowColor];
          v13 = [v12 colorWithAlphaComponent_];

          v14 = [v13 CGColor];
          [v11 setBorderColor_];

          v15 = [v3 layer];
          [v15 setBorderWidth_];
        }

        swift_unknownObjectRelease();
      }
    }

    else
    {
      v3 = 0;
    }

    v16 = *&v0[v1];
    *&v0[v1] = v3;
    v17 = v3;
    sub_1A41ACC68(v16);
  }

  sub_1A41ACC6C(v2);
  return v3;
}

id sub_1A435DB6C(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A435DBE0(char a1, uint64_t a2, unsigned int a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    *(v8 + 24) = a1 & 1;
    if ((a3 >> 8))
    {
      v10 = v7;
      v11 = sub_1A435D6D4();
      if (v11)
      {
        v12 = 0.0;
        if (a1)
        {
          v12 = 1.0;
        }

        v13 = v11;
        [v11 setAlpha_];
      }
    }

    else if (a3)
    {
      sub_1A3C52C70(0, &qword_1EB12B170, 0x1E69DD250);
      v9 = v7;
      sub_1A524DB44();
    }

    else
    {
      v14 = *&a2;
      v15 = objc_opt_self();
      aBlock[4] = sub_1A435DDE0;
      aBlock[5] = v8;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_162;
      v16 = _Block_copy(aBlock);
      v17 = v7;

      [v15 animateWithDuration:v16 animations:v14];

      _Block_release(v16);
    }
  }
}

void sub_1A435DDE0()
{
  v1 = *(v0 + 24);
  v2 = sub_1A435D6D4();
  if (v2)
  {
    v3 = 0.0;
    if (v1)
    {
      v3 = 1.0;
    }

    v4 = v2;
    [v2 setAlpha_];
  }
}

void sub_1A435DE5C()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    v2 = sub_1A435D6D4();
    v3 = *&v1[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_placeholderKenBurnsEffect];
    v4 = *&v1[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_placeholderKenBurnsEffect + 8];
    v5 = v1[OBJC_IVAR____TtC12PhotosUICore31LemonadeInlineStoryPlayerUIView_placeholderKenBurnsEffect + 16];
    v6 = swift_allocObject();
    *(v6 + 16) = v2;
    *(v6 + 24) = v3;
    *(v6 + 32) = v4;
    *(v6 + 40) = v5;
    if (v5)
    {
      sub_1A3C52C70(0, &qword_1EB12B170, 0x1E69DD250);
      v7 = v2;
      sub_1A524DB44();
    }

    else
    {
      v8 = v4;
      v9 = objc_opt_self();
      aBlock[4] = sub_1A435E084;
      aBlock[5] = v6;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1A3C2E0D0;
      aBlock[3] = &block_descriptor_24_2;
      v10 = _Block_copy(aBlock);
      v11 = v2;

      [v9 animateWithDuration:v10 animations:v8];

      _Block_release(v10);
    }
  }
}

uint64_t sub_1A435E03C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1A435E084()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = sub_1A41F7694();
    v3 = sub_1A41F7694();
    CGAffineTransformMakeScale(&v5, v2, v3);
    return [v1 setTransform_];
  }

  return result;
}

uint64_t sub_1A435E10C(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_1A435E158(a1, v2 + OBJC_IVAR____TtC12PhotosUICore50LemonadeGenerativeMemoriesEventDisambiguationModel_item);
  return v2;
}

uint64_t sub_1A435E158(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A435E1BC@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore50LemonadeGenerativeMemoriesEventDisambiguationModel_item;
  swift_beginAccess();
  return sub_1A435E214(v1 + v3, a1);
}

uint64_t sub_1A435E214(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A435E278(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12PhotosUICore50LemonadeGenerativeMemoriesEventDisambiguationModel_item;
  swift_beginAccess();
  sub_1A435E2D8(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_1A435E2D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A435E39C()
{
  v1 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem(0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(*v0 + 96))(v2);
  v5 = sub_1A4965B3C();
  sub_1A435E450(v4);
  return v5;
}

uint64_t sub_1A435E450(uint64_t a1)
{
  v2 = type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A435E4AC()
{
  sub_1A435E450(v0 + OBJC_IVAR____TtC12PhotosUICore50LemonadeGenerativeMemoriesEventDisambiguationModel_item);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for LemonadeGenerativeMemoriesEventDisambiguationModel(uint64_t a1)
{
  result = qword_1EB1B8D40;
  if (!qword_1EB1B8D40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void (*sub_1A435E690(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 112))();
  return sub_1A3D3D728;
}

uint64_t sub_1A435E768(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A435E7B4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 120))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1A435E808(uint64_t a1, double a2)
{
  result = type metadata accessor for GenerativeStoryEventSuggestion(319);
  if (v3 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1A435E89C@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, void *a4@<X3>, void *a5@<X8>)
{
  v17 = a1;
  v10 = sub_1A3C52C70(0, &unk_1EB138730, off_1E771D698);
  v11 = a1;
  SendableTransfer.init(wrappedValue:)(&v17, v10, &v18);
  *a5 = v18;
  v17 = a2;
  sub_1A435EA24(0, &qword_1EB126BC0, &qword_1EB12B190, &protocolRef_PXDisplayAsset, sub_1A3C5D0E8);
  v13 = v12;
  swift_unknownObjectRetain();
  SendableTransfer.init(wrappedValue:)(&v17, v13, &v18);
  a5[1] = v18;
  v17 = a3;
  v14 = sub_1A3C5D0E8(0, &qword_1EB120790, &protocolRef_PXDisplayAssetCollection);
  swift_unknownObjectRetain();
  SendableTransfer.init(wrappedValue:)(&v17, v14, &v18);
  a5[2] = v18;
  v17 = a4;
  sub_1A435EA24(0, &unk_1EB138740, &qword_1EB126D00, 0x1E69D3810, sub_1A3C52C70);
  SendableTransfer.init(wrappedValue:)(&v17, v15, &v18);

  swift_unknownObjectRelease();
  result = swift_unknownObjectRelease();
  a5[3] = v18;
  return result;
}

void sub_1A435EA24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    a5(255, a3, a4);
    v6 = sub_1A524DF24();
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

unint64_t sub_1A435EA80()
{
  result = qword_1EB138750;
  if (!qword_1EB138750)
  {
    result = swift_getMetatypeMetadata();
    atomic_store(result, &qword_1EB138750);
  }

  return result;
}

uint64_t sub_1A435EACC()
{
  v1 = [objc_msgSend(*v0 assetCollection)];
  swift_unknownObjectRelease();
  v2 = sub_1A524C674();

  return v2;
}

unint64_t sub_1A435EB4C()
{
  result = qword_1EB138758;
  if (!qword_1EB138758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138758);
  }

  return result;
}

unint64_t sub_1A435EBA4()
{
  result = qword_1EB138760;
  if (!qword_1EB138760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138760);
  }

  return result;
}

unint64_t sub_1A435EBF8()
{
  result = qword_1EB138768;
  if (!qword_1EB138768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138768);
  }

  return result;
}

unint64_t sub_1A435EC50()
{
  result = qword_1EB138770[0];
  if (!qword_1EB138770[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB138770);
  }

  return result;
}

void sub_1A435ECE0(uint64_t *a1@<X8>)
{
  v3 = [objc_msgSend(*v1 assetCollection)];
  swift_unknownObjectRelease();
  v4 = sub_1A524C674();
  v6 = v5;

  *a1 = v4;
  a1[1] = v6;
}

id sub_1A435ED78(uint64_t a1)
{
  sub_1A3C7D0D8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v40 - v3;
  sub_1A3C7D0D8(0, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = v40 - v9;
  result = sub_1A524C634();
  v12 = *(a1 + 24);
  if (v12 < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v13 = *(a1 + 32);
  if (v13 < -32768)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v13 >= 0x8000)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v14 = *(a1 + 56);
  if ((*&v14 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v14 <= -9.22337204e18)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v14 >= 9.22337204e18)
  {
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  v15 = *(a1 + 64);
  if ((*&v15 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if (v15 <= -9.22337204e18)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  if (v15 >= 9.22337204e18)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v16 = result;
  v52 = *(a1 + 32);
  v17 = *(a1 + 16);
  v50 = *(a1 + 40);
  v18 = *(a1 + 48);
  v48 = v17;
  v49 = v18;
  v19 = *(a1 + 72);
  if (*(a1 + 84))
  {
    v20 = 0.0;
  }

  else
  {
    v20 = *(a1 + 80);
  }

  v21 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  *&v22 = v20;
  v47 = [v21 initWithFloat_];
  if (*(a1 + 92))
  {
    v46 = 0;
  }

  else
  {
    v46 = sub_1A524CF14();
  }

  v23 = *(a1 + 100);
  v51 = v4;
  if (v23)
  {
    v45 = 0;
  }

  else
  {
    v45 = sub_1A524CF14();
  }

  v44 = *(a1 + 104);
  v24 = *(a1 + 112);
  v25 = *(a1 + 128);
  v43 = *(a1 + 120);
  v42 = v25;
  v26 = *(a1 + 136);
  v41 = *(a1 + 144);
  v27 = *(type metadata accessor for OneUpSharePlayAssetMetadata(0) + 68);
  sub_1A435F3F4(a1 + v27, v10, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  v28 = type metadata accessor for OneUpSharePlayTitleInfo(0);
  v29 = *(*(v28 - 8) + 48);
  if (v29(v10, 1, v28) != 1)
  {
    v40[1] = v12;
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A43643AC(v10, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  sub_1A435F3F4(a1 + v27, v7, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  if (v29(v7, 1, v28) == 1)
  {
    sub_1A43643AC(v7, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
    v30 = sub_1A5241144();
    (*(*(v30 - 8) + 56))(v51, 1, 1, v30);
    v31 = 0;
  }

  else
  {
    v32 = v51;
    sub_1A435F3F4(&v7[*(v28 + 20)], v51, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    sub_1A435F460(v7, type metadata accessor for OneUpSharePlayTitleInfo);
    v33 = sub_1A5241144();
    v34 = *(v33 - 8);
    v31 = 0;
    if ((*(v34 + 48))(v32, 1, v33) != 1)
    {
      v31 = sub_1A5241074();
      (*(v34 + 8))(v32, v33);
    }
  }

  v35 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v54[1] = v24;
  v54[2] = v43;
  v53[0] = v42;
  v53[1] = v26;
  v53[2] = v41;
  v54[0] = v44;
  v36 = v45;
  v37 = v46;
  v38 = v47;
  v39 = [v35 initWithUUID:v16 mediaType:v48 mediaSubtypes:v12 spatialMediaType:v52 isSpatialPresentation:v50 playbackStyle:v49 pixelWidth:v19 pixelHeight:v14 duration:v15 hdrGain:v47 focalLength:v46 focalLengthIn35mm:v45 photoIrisStillDisplayTime:v54 photoIrisVideoDuration:v53 localizedGeoDescription:0 creationDate:v31];

  sub_1A435F460(a1, type metadata accessor for OneUpSharePlayAssetMetadata);
  return v39;
}

uint64_t sub_1A435F3F4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C7D0D8(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1A435F460(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A435F4CC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x65756C6176;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7367616C66;
    }

    else
    {
      v4 = 0x68636F7065;
    }

    v5 = 0xE500000000000000;
  }

  else
  {
    if (a1)
    {
      v4 = 0x6C616373656D6974;
    }

    else
    {
      v4 = 0x65756C6176;
    }

    if (v3)
    {
      v5 = 0xE900000000000065;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  v6 = 0xE500000000000000;
  v7 = 0x7367616C66;
  if (a2 != 2)
  {
    v7 = 0x68636F7065;
  }

  if (a2)
  {
    v2 = 0x6C616373656D6974;
    v6 = 0xE900000000000065;
  }

  if (a2 <= 1u)
  {
    v8 = v2;
  }

  else
  {
    v8 = v7;
  }

  if (a2 <= 1u)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE500000000000000;
  }

  if (v4 == v8 && v5 == v9)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1A524EAB4();
  }

  return v10 & 1;
}

uint64_t sub_1A435F604()
{
  sub_1A524EC94();
  sub_1A524C794();
  return sub_1A524ECE4();
}

uint64_t sub_1A435F660(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();
  return sub_1A524ECE4();
}

void sub_1A435F6A8(BOOL *a2@<X8>)
{
  v3 = sub_1A524E824();

  *a2 = v3 != 0;
}

void sub_1A435F720(BOOL *a3@<X8>)
{
  v4 = sub_1A524E824();

  *a3 = v4 != 0;
}

uint64_t sub_1A435F778(uint64_t a1)
{
  v2 = sub_1A435FFB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A435F7B4(uint64_t a1)
{
  v2 = sub_1A435FFB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A435F7FC()
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

double sub_1A435F8B8(uint64_t a1)
{
  sub_1A524C794();

  return result;
}

uint64_t sub_1A435F960(uint64_t a1)
{
  sub_1A524EC94();
  sub_1A524C794();

  return sub_1A524ECE4();
}

unint64_t sub_1A435FA18@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1A4362788(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1A435FA48(uint64_t *a1@<X8>)
{
  v2 = 0xE500000000000000;
  v3 = 0x65756C6176;
  v4 = 0x7367616C66;
  if (*v1 != 2)
  {
    v4 = 0x68636F7065;
  }

  if (*v1)
  {
    v3 = 0x6C616373656D6974;
    v2 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v5 = v3;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = 0xE500000000000000;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_1A435FAC0()
{
  v1 = 0x65756C6176;
  v2 = 0x7367616C66;
  if (*v0 != 2)
  {
    v2 = 0x68636F7065;
  }

  if (*v0)
  {
    v1 = 0x6C616373656D6974;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1A435FB34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1A4362788(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1A435FB5C(uint64_t a1)
{
  v2 = sub_1A435FF60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A435FB98(uint64_t a1)
{
  v2 = sub_1A435FF60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OneUpSharePlayCMTime.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v21 = a2;
  v4 = MEMORY[0x1E69E6F48];
  sub_1A4363300(0, &qword_1EB138790, sub_1A435FF60, &type metadata for OneUpSharePlayCMTime.CMTimeCodingKeys, MEMORY[0x1E69E6F48]);
  v6 = v5;
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v24 = &v18[-v7];
  sub_1A4363300(0, &qword_1EB138798, sub_1A435FFB4, &type metadata for OneUpSharePlayCMTime.CodingKeys, v4);
  v9 = v8;
  v22 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18[-v10];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A435FFB4();
  sub_1A524ED14();
  if (!v2)
  {
    v13 = v22;
    v12 = v23;
    sub_1A435FF60();
    sub_1A524E844();
    v29 = 0;
    v20 = sub_1A524E904();
    v28 = 1;
    v25 = sub_1A524E8F4();
    v27 = 2;
    v19 = sub_1A524E914();
    v26 = 3;
    v15 = sub_1A524E904();
    (*(v12 + 8))(v24, v6);
    (*(v13 + 8))(v11, v9);
    v16 = v21;
    *v21 = v20;
    v17 = v19;
    *(v16 + 2) = v25;
    *(v16 + 3) = v17;
    v16[2] = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_1A435FF60()
{
  result = qword_1EB1B9050;
  if (!qword_1EB1B9050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B9050);
  }

  return result;
}

unint64_t sub_1A435FFB4()
{
  result = qword_1EB1B9058;
  if (!qword_1EB1B9058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1B9058);
  }

  return result;
}

uint64_t OneUpSharePlayCMTime.encode(to:)(void *a1)
{
  v3 = MEMORY[0x1E69E6F58];
  sub_1A4363300(0, &qword_1EB1387A0, sub_1A435FF60, &type metadata for OneUpSharePlayCMTime.CMTimeCodingKeys, MEMORY[0x1E69E6F58]);
  v5 = v4;
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  sub_1A4363300(0, &unk_1EB1387A8, sub_1A435FFB4, &type metadata for OneUpSharePlayCMTime.CodingKeys, v3);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = *(v1 + 12);
  v25 = *(v1 + 8);
  v22 = v11;
  v21 = *(v1 + 16);
  v12 = a1[3];
  v13 = a1;
  v15 = &v21 - v14;
  __swift_project_boxed_opaque_existential_1(v13, v12);
  sub_1A435FFB4();
  v16 = v9;
  v17 = v5;
  sub_1A524ED34();
  sub_1A435FF60();
  sub_1A524E944();
  v29 = 0;
  v18 = v24;
  sub_1A524E9F4();
  if (v18)
  {
    (*(v23 + 8))(v7, v5);
  }

  else
  {
    v19 = v23;
    v28 = 1;
    sub_1A524E9E4();
    v27 = 2;
    sub_1A524EA04();
    v26 = 3;
    sub_1A524E9F4();
    (*(v19 + 8))(v7, v17);
  }

  return (*(v10 + 8))(v15, v16);
}

uint64_t OneUpSharePlayTitleInfo.init(localizedGeoDescription:creationDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = a1;
  a4[1] = a2;
  v6 = type metadata accessor for OneUpSharePlayTitleInfo(0);
  return sub_1A43631D4(a3, a4 + *(v6 + 20), &qword_1EB12AFE0, MEMORY[0x1E6969530]);
}

void OneUpSharePlayTitleInfo.description.getter()
{
  sub_1A3C7D0D8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v0);
  sub_1A524E404();
  MEMORY[0x1A5907B60](0xD000000000000033, 0x80000001A53D3050);
  sub_1A3C39898(0, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A43605F8()
{
  if (*v0)
  {
    return 0x6E6F697461657263;
  }

  else
  {
    return 0xD000000000000017;
  }
}

void sub_1A4360640(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001A5331E90 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x6E6F697461657263 && a2 == 0xEC00000065746144)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1A524EAB4();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1A436072C(uint64_t a1)
{
  v2 = sub_1A4363090();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4360768(uint64_t a1)
{
  v2 = sub_1A4363090();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OneUpSharePlayTitleInfo.encode(to:)(void *a1)
{
  sub_1A4363300(0, &qword_1EB1387B8, sub_1A4363090, &type metadata for OneUpSharePlayTitleInfo.CodingKeys, MEMORY[0x1E69E6F58]);
  v4 = v3;
  v5 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4363090();
  sub_1A524ED34();
  v11 = 0;
  sub_1A524E954();
  if (!v1)
  {
    type metadata accessor for OneUpSharePlayTitleInfo(0);
    v10 = 1;
    sub_1A5241144();
    sub_1A43630E4(&qword_1EB1387C0, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1A524E984();
  }

  return (*(v5 + 8))(v7, v4);
}

void OneUpSharePlayTitleInfo.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  sub_1A3C7D0D8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - v4;
  sub_1A4363300(0, &qword_1EB1387C8, sub_1A4363090, &type metadata for OneUpSharePlayTitleInfo.CodingKeys, MEMORY[0x1E69E6F48]);
  v16 = *(v6 - 8);
  v17 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for OneUpSharePlayTitleInfo(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4363090();
  v12 = v18;
  sub_1A524ED14();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v18 = a1;
    v13 = v16;
    v20 = 0;
    *v11 = sub_1A524E864();
    v11[1] = v14;
    sub_1A5241144();
    v19 = 1;
    sub_1A43630E4(&qword_1EB1387D0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1A524E894();
    (*(v13 + 8))(v8, v17);
    sub_1A43631D4(v5, v11 + *(v9 + 20), &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    sub_1A43633BC(v11, v15, type metadata accessor for OneUpSharePlayTitleInfo);
    __swift_destroy_boxed_opaque_existential_0(v18);
    sub_1A435F460(v11, type metadata accessor for OneUpSharePlayTitleInfo);
  }
}

double OneUpSharePlayAssetMetadata.photoIrisStillDisplayTime.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = *(v1 + 104);
  result = *(v1 + 112);
  *(a1 + 8) = result;
  *(a1 + 16) = v2;
  return result;
}

double OneUpSharePlayAssetMetadata.photoIrisVideoDuration.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 144);
  *a1 = *(v1 + 128);
  result = *(v1 + 136);
  *(a1 + 8) = result;
  *(a1 + 16) = v2;
  return result;
}

void OneUpSharePlayAssetMetadata.init(asset:includingTitleInfo:)(void **a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_1A3C7D0D8(0, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = (&v59 - v7);
  v9 = *a1;
  v10 = a1[1];
  KeyPath = swift_getKeyPath();
  v59 = v9;
  v60 = v10;
  OneUpSharePlayOverridableAsset.subscript.getter(KeyPath, &v65);

  v12 = v66;
  *a3 = v65;
  *(a3 + 8) = v12;
  v13 = swift_getKeyPath();
  v59 = v9;
  v60 = v10;
  OneUpSharePlayOverridableAsset.subscript.getter(v13, &v65);

  *(a3 + 16) = v65;
  v14 = swift_getKeyPath();
  v59 = v9;
  v60 = v10;
  OneUpSharePlayOverridableAsset.subscript.getter(v14, &v65);

  if ((v65 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(a3 + 24) = v65;
    v15 = swift_getKeyPath();
    v59 = v9;
    v60 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v15, &v65);

    *(a3 + 32) = v65 & 1;
    v16 = swift_getKeyPath();
    v59 = v9;
    v60 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v16, &v65);

    *(a3 + 40) = v65 & 1;
    v17 = swift_getKeyPath();
    v59 = v9;
    v60 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v17, &v65);

    v18 = v65;
    if (v66)
    {
      v18 = 0;
    }

    *(a3 + 48) = v18;
    v19 = swift_getKeyPath();
    v59 = v9;
    v60 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v19, &v64);

    v20 = v64;
    v21 = swift_getKeyPath();
    v65 = v9;
    v66 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v21, &v63);

    v22 = v63;
    *(a3 + 56) = v20;
    *(a3 + 64) = v22;
    v23 = swift_getKeyPath();
    v59 = v9;
    v60 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v23, &v65);

    v24 = *&v65;
    if (v66)
    {
      v24 = 0.0;
    }

    *(a3 + 72) = v24;
    v25 = swift_getKeyPath();
    v59 = v9;
    v60 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v25, &v65);

    v26 = v65;
    if (v65)
    {
      [v65 floatValue];
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }

    *(a3 + 80) = v28;
    *(a3 + 84) = v26 == 0;
    v29 = swift_getKeyPath();
    v59 = v9;
    v60 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v29, &v65);

    v30 = v65;
    v31 = 1;
    if (v65 >= 2)
    {
      LODWORD(v64) = 0;
      BYTE4(v64) = 1;
      MEMORY[0x1A5908290](v65, &v64);
      sub_1A3C327F4(v30);
      v32 = v64;
      v31 = BYTE4(v64);
    }

    else
    {
      v32 = 0;
    }

    *(a3 + 88) = v32;
    *(a3 + 92) = v31;
    v33 = swift_getKeyPath();
    v59 = v9;
    v60 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v33, &v65);

    v34 = v65;
    v35 = 1;
    if (v65 >= 2)
    {
      LODWORD(v64) = 0;
      BYTE4(v64) = 1;
      MEMORY[0x1A5908290](v65, &v64);
      sub_1A3C327F4(v34);
      v36 = v64;
      v35 = BYTE4(v64);
    }

    else
    {
      v36 = 0;
    }

    *(a3 + 96) = v36;
    *(a3 + 100) = v35;
    v37 = swift_getKeyPath();
    v59 = v9;
    v60 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v37, &v65);

    if ((v65 & 8) != 0)
    {
      v42 = swift_getKeyPath();
      v65 = v9;
      v66 = v10;
      OneUpSharePlayOverridableAsset.subscript.getter(v42, &v59);

      v43 = MEMORY[0x1E6960C70];
      if (v62)
      {
        v44 = *(MEMORY[0x1E6960C70] + 8);
        v45 = *(MEMORY[0x1E6960C70] + 12);
        v46 = MEMORY[0x1E6960C70];
        v47 = *(MEMORY[0x1E6960C70] + 16);
      }

      else
      {
        v47 = v61;
        v46 = &v59;
        v44 = v60;
        v45 = HIDWORD(v60);
      }

      *(a3 + 104) = *v46;
      *(a3 + 112) = v44;
      *(a3 + 116) = v45;
      *(a3 + 120) = v47;
      v48 = swift_getKeyPath();
      v65 = v9;
      v66 = v10;
      OneUpSharePlayOverridableAsset.subscript.getter(v48, &v59);

      if (v62)
      {
        v39 = *(v43 + 2);
        v40 = *(v43 + 3);
        v41 = v43[2];
      }

      else
      {
        v41 = v61;
        v43 = &v59;
        v39 = v60;
        v40 = HIDWORD(v60);
      }

      v38 = *v43;
    }

    else
    {
      v38 = *MEMORY[0x1E6960C70];
      v39 = *(MEMORY[0x1E6960C70] + 8);
      v40 = *(MEMORY[0x1E6960C70] + 12);
      v41 = *(MEMORY[0x1E6960C70] + 16);
      *(a3 + 104) = *MEMORY[0x1E6960C70];
      *(a3 + 112) = v39;
      *(a3 + 116) = v40;
      *(a3 + 120) = v41;
    }

    *(a3 + 128) = v38;
    *(a3 + 136) = v39;
    *(a3 + 140) = v40;
    *(a3 + 144) = v41;
    if (a2)
    {
      v49 = swift_getKeyPath();
      v59 = v9;
      v60 = v10;
      OneUpSharePlayOverridableAsset.subscript.getter(v49, &v65);

      if (v66 >= 2)
      {
        v50 = v65;
      }

      else
      {
        v50 = 0;
      }

      if (v66 >= 2)
      {
        v51 = v66;
      }

      else
      {
        v51 = 0;
      }

      v52 = swift_getKeyPath();
      v59 = v9;
      v60 = v10;
      v53 = type metadata accessor for OneUpSharePlayTitleInfo(0);
      OneUpSharePlayOverridableAsset.subscript.getter(v52, v8 + *(v53 + 20));

      *v8 = v50;
      v8[1] = v51;
      (*(*(v53 - 8) + 56))(v8, 0, 1, v53);
      v54 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
      sub_1A43631D4(v8, a3 + *(v54 + 68), &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
    }

    else
    {
      v54 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
      v55 = *(v54 + 68);
      v56 = type metadata accessor for OneUpSharePlayTitleInfo(0);
      (*(*(v56 - 8) + 56))(a3 + v55, 1, 1, v56);
    }

    v57 = swift_getKeyPath();
    v59 = v9;
    v60 = v10;
    OneUpSharePlayOverridableAsset.subscript.getter(v57, &v65);

    swift_unknownObjectRelease();

    v58 = v65 & 1;
    type metadata accessor for OneUpSharePlayAssetMetadata(0);
    *(a3 + *(v54 + 72)) = v58;
  }
}

void sub_1A43614EC(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = [*a1 uuid];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1A524C674();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0;
  }

  *a2 = v5;
  a2[1] = v7;
}

id sub_1A4361554@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaType];
  *a2 = result;
  return result;
}

id sub_1A4361588@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 mediaSubtypes];
  *a2 = result;
  return result;
}

uint64_t sub_1A43615D4@<X0>(id *a1@<X0>, SEL *a2@<X3>, _BYTE *a3@<X8>)
{
  v5 = *a1;
  if ([*a1 respondsToSelector_])
  {
    result = [v5 *a2];
  }

  else
  {
    result = 2;
  }

  *a3 = result;
  return result;
}

id sub_1A4361634@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = [*a1 respondsToSelector_];
  if (v4)
  {
    result = [v3 playbackStyle];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  *(a2 + 8) = (v4 & 1) == 0;
  return result;
}

id sub_1A43616A4@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pixelWidth];
  *a2 = result;
  return result;
}

id sub_1A43616D8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 pixelHeight];
  *a2 = result;
  return result;
}

id sub_1A436170C@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  result = [*a1 respondsToSelector_];
  v5 = result;
  v6 = 0;
  if (result)
  {
    result = [v3 duration];
  }

  *a2 = v6;
  *(a2 + 8) = (v5 & 1) == 0;
  return result;
}

id sub_1A4361778@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 respondsToSelector_])
  {
    result = [v3 hdrGain];
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t sub_1A43617F8@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  if ([*a1 respondsToSelector_])
  {
    result = [v5 *a2];
  }

  else
  {
    result = 1;
  }

  *a3 = result;
  return result;
}

id sub_1A4361878@<X0>(id *a1@<X0>, SEL *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  result = [*a1 respondsToSelector_];
  v7 = result;
  if (result)
  {
    result = [v5 *a2];
    v8 = v10;
    v9 = v11;
  }

  else
  {
    v9 = 0;
    v8 = 0uLL;
  }

  *a3 = v8;
  *(a3 + 16) = v9;
  *(a3 + 24) = (v7 & 1) == 0;
  return result;
}

void sub_1A4361904(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if ([*a1 respondsToSelector_])
  {
    v4 = [v3 localizedGeoDescription];
    if (v4)
    {
      v5 = v4;
      v6 = sub_1A524C674();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }
  }

  else
  {
    v6 = 0;
    v8 = 1;
  }

  *a2 = v6;
  a2[1] = v8;
}

uint64_t sub_1A4361994@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result & 1;
  return result;
}

unint64_t sub_1A43619F4(char a1)
{
  result = 1684632949;
  switch(a1)
  {
    case 1:
      result = 0x707954616964656DLL;
      break;
    case 2:
      result = 0x627553616964656DLL;
      break;
    case 3:
      result = 0xD000000000000010;
      break;
    case 4:
      v3 = 5;
      goto LABEL_6;
    case 5:
      result = 0x6B63616279616C70;
      break;
    case 6:
      result = 0x7A69536C65786970;
      break;
    case 7:
      result = 0x6E6F697461727564;
      break;
    case 8:
      result = 0x6E696147726468;
      break;
    case 9:
      result = 0x6E654C6C61636F66;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      v3 = 9;
LABEL_6:
      result = v3 | 0xD000000000000010;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0x666E49656C746974;
      break;
    case 14:
      result = 0xD000000000000017;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A4361BD4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A4363DCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A4361BFC(uint64_t a1)
{
  v2 = sub_1A4363258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A4361C38(uint64_t a1)
{
  v2 = sub_1A4363258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t OneUpSharePlayAssetMetadata.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1A4363300(0, &qword_1EB1387D8, sub_1A4363258, &type metadata for OneUpSharePlayAssetMetadata.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v16 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A4363258();
  sub_1A524ED34();
  LOBYTE(v16) = 0;
  sub_1A524E994();
  if (!v2)
  {
    LOBYTE(v16) = 1;
    sub_1A524E9C4();
    LOBYTE(v16) = 2;
    sub_1A524E9C4();
    LOBYTE(v16) = 3;
    sub_1A524E9C4();
    LOBYTE(v16) = 4;
    sub_1A524E9A4();
    LOBYTE(v16) = 5;
    sub_1A524E9C4();
    v16 = *(v3 + 56);
    v18 = 6;
    type metadata accessor for CGSize(0);
    sub_1A43630E4(&qword_1EB1387E0, type metadata accessor for CGSize, MEMORY[0x1E695EF88]);
    sub_1A524E9D4();
    LOBYTE(v16) = 7;
    sub_1A524E9B4();
    v11 = *(v3 + 84);
    LOBYTE(v16) = 8;
    v18 = v11;
    sub_1A524E974();
    v12 = *(v3 + 92);
    LOBYTE(v16) = 9;
    v18 = v12;
    sub_1A524E974();
    v13 = *(v3 + 100);
    LOBYTE(v16) = 10;
    v18 = v13;
    sub_1A524E974();
    v14 = *(v3 + 120);
    v16 = *(v3 + 104);
    v17 = v14;
    v18 = 11;
    sub_1A43632AC();
    sub_1A524E9D4();
    v15 = *(v3 + 144);
    v16 = *(v3 + 128);
    v17 = v15;
    v18 = 12;
    sub_1A524E9D4();
    type metadata accessor for OneUpSharePlayAssetMetadata(0);
    LOBYTE(v16) = 13;
    type metadata accessor for OneUpSharePlayTitleInfo(0);
    sub_1A43630E4(&qword_1EB1387F0, type metadata accessor for OneUpSharePlayTitleInfo, &protocol conformance descriptor for OneUpSharePlayTitleInfo);
    sub_1A524E984();
    LOBYTE(v16) = 14;
    sub_1A524E964();
  }

  return (*(v7 + 8))(v9, v6);
}

void OneUpSharePlayAssetMetadata.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  sub_1A3C7D0D8(0, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v24 - v4;
  sub_1A4363300(0, &qword_1EB1387F8, sub_1A4363258, &type metadata for OneUpSharePlayAssetMetadata.CodingKeys, MEMORY[0x1E69E6F48]);
  v27 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - v8;
  v10 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1A4363258();
  v26 = v9;
  v14 = v28;
  sub_1A524ED14();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_0(v29);
  }

  else
  {
    LOBYTE(v30) = 0;
    *v12 = sub_1A524E8A4();
    *(v12 + 1) = v15;
    LOBYTE(v30) = 1;
    *(v12 + 2) = sub_1A524E8D4();
    LOBYTE(v30) = 2;
    *(v12 + 3) = sub_1A524E8D4();
    LOBYTE(v30) = 3;
    *(v12 + 4) = sub_1A524E8D4();
    LOBYTE(v30) = 4;
    v12[40] = sub_1A524E8B4() & 1;
    LOBYTE(v30) = 5;
    *(v12 + 6) = sub_1A524E8D4();
    type metadata accessor for CGSize(0);
    v28 = v16;
    v32 = 6;
    sub_1A43630E4(&qword_1EB138800, type metadata accessor for CGSize, MEMORY[0x1E695EFA0]);
    sub_1A524E8E4();
    *(v12 + 56) = v30;
    LOBYTE(v30) = 7;
    sub_1A524E8C4();
    *(v12 + 9) = v17;
    LOBYTE(v30) = 8;
    v18 = sub_1A524E884();
    *(v12 + 20) = v18;
    v12[84] = BYTE4(v18) & 1;
    LOBYTE(v30) = 9;
    v19 = sub_1A524E884();
    *(v12 + 22) = v19;
    v12[92] = BYTE4(v19) & 1;
    LOBYTE(v30) = 10;
    v20 = sub_1A524E884();
    *(v12 + 24) = v20;
    v12[100] = BYTE4(v20) & 1;
    v32 = 11;
    sub_1A4363368();
    sub_1A524E8E4();
    v21 = v31;
    *(v12 + 104) = v30;
    *(v12 + 15) = v21;
    v32 = 12;
    sub_1A524E8E4();
    v22 = v31;
    *(v12 + 8) = v30;
    *(v12 + 18) = v22;
    type metadata accessor for OneUpSharePlayTitleInfo(0);
    LOBYTE(v30) = 13;
    sub_1A43630E4(&unk_1EB138810, type metadata accessor for OneUpSharePlayTitleInfo, &protocol conformance descriptor for OneUpSharePlayTitleInfo);
    sub_1A524E894();
    sub_1A43631D4(v5, &v12[*(v10 + 68)], &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
    LOBYTE(v30) = 14;
    v23 = sub_1A524E874();
    (*(v7 + 8))(v26, v27);
    v12[*(v10 + 72)] = v23;
    sub_1A43633BC(v12, v25, type metadata accessor for OneUpSharePlayAssetMetadata);
    __swift_destroy_boxed_opaque_existential_0(v29);
    sub_1A435F460(v12, type metadata accessor for OneUpSharePlayAssetMetadata);
  }
}

unint64_t sub_1A4362788(uint64_t a1, uint64_t a2)
{
  v2 = sub_1A524E824();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

BOOL _s12PhotosUICore27OneUpSharePlayAssetMetadataV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayTitleInfo(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = (&v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A3C7D0D8(0, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v29 - v9);
  sub_1A4364348(0, &qword_1EB138848, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
  v12 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  if (*a1 != *a2 && (sub_1A524EAB4() & 1) == 0 || *(a1 + 16) != *(a2 + 16) || *(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  result = 0;
  if (*(a1 + 56) == *(a2 + 56) && *(a1 + 64) == *(a2 + 64))
  {
    if (*(a1 + 72) != *(a2 + 72))
    {
      return 0;
    }

    v16 = *(a2 + 84);
    if (*(a1 + 84))
    {
      if (!*(a2 + 84))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 80) != *(a2 + 80))
      {
        v16 = 1;
      }

      if (v16)
      {
        return 0;
      }
    }

    v17 = *(a2 + 92);
    if (*(a1 + 92))
    {
      if (!*(a2 + 92))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 88) != *(a2 + 88))
      {
        v17 = 1;
      }

      if (v17)
      {
        return 0;
      }
    }

    v18 = *(a2 + 100);
    if (*(a1 + 100))
    {
      if (!*(a2 + 100))
      {
        return 0;
      }
    }

    else
    {
      if (*(a1 + 96) != *(a2 + 96))
      {
        v18 = 1;
      }

      if (v18)
      {
        return 0;
      }
    }

    if ((sub_1A524DAB4() & 1) == 0 || (sub_1A524DAB4() & 1) == 0)
    {
      return 0;
    }

    v30 = type metadata accessor for OneUpSharePlayAssetMetadata(0);
    v19 = *(v30 + 68);
    v20 = *(v12 + 48);
    sub_1A435F3F4(a1 + v19, v14, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
    v21 = a2 + v19;
    v22 = v20;
    sub_1A435F3F4(v21, &v14[v20], &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
    v23 = *(v5 + 48);
    if (v23(v14, 1, v4) == 1)
    {
      if (v23(&v14[v22], 1, v4) == 1)
      {
        sub_1A43643AC(v14, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
LABEL_40:
        v26 = *(v30 + 72);
        v27 = *(a1 + v26);
        v28 = *(a2 + v26);
        if (v27 != 2)
        {
          return v28 != 2 && ((v28 ^ v27) & 1) == 0;
        }

        return v28 == 2;
      }
    }

    else
    {
      sub_1A435F3F4(v14, v10, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
      if (v23(&v14[v22], 1, v4) != 1)
      {
        sub_1A43642E4(&v14[v22], v7);
        v25 = _s12PhotosUICore23OneUpSharePlayTitleInfoV2eeoiySbAC_ACtFZ_0(v10, v7);
        sub_1A435F460(v7, type metadata accessor for OneUpSharePlayTitleInfo);
        sub_1A435F460(v10, type metadata accessor for OneUpSharePlayTitleInfo);
        sub_1A43643AC(v14, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
        if (!v25)
        {
          return 0;
        }

        goto LABEL_40;
      }

      sub_1A435F460(v10, type metadata accessor for OneUpSharePlayTitleInfo);
    }

    sub_1A4364288(v14, &qword_1EB138848, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo, v24);
    return 0;
  }

  return result;
}

BOOL _s12PhotosUICore23OneUpSharePlayTitleInfoV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v4 = sub_1A5241144();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E6969530];
  sub_1A3C7D0D8(0, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v28 - v10;
  sub_1A4364348(0, &qword_1EB12AFD0, &qword_1EB12AFE0, v8);
  v13 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v28 - v14;
  v16 = a1[1];
  v17 = a2[1];
  if (v16)
  {
    if (!v17 || (*a1 != *a2 || v16 != v17) && (sub_1A524EAB4() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v17)
  {
    return 0;
  }

  v29 = v7;
  v18 = *(type metadata accessor for OneUpSharePlayTitleInfo(0) + 20);
  v19 = *(v13 + 48);
  v20 = v5;
  v21 = MEMORY[0x1E6969530];
  sub_1A435F3F4(a1 + v18, v15, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  sub_1A435F3F4(a2 + v18, &v15[v19], &qword_1EB12AFE0, v21);
  v22 = *(v20 + 48);
  if (v22(v15, 1, v4) == 1)
  {
    if (v22(&v15[v19], 1, v4) == 1)
    {
      sub_1A43643AC(v15, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
      return 1;
    }

    goto LABEL_13;
  }

  sub_1A435F3F4(v15, v11, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  if (v22(&v15[v19], 1, v4) == 1)
  {
    v23 = (*(v20 + 8))(v11, v4);
LABEL_13:
    sub_1A4364288(v15, &qword_1EB12AFD0, &qword_1EB12AFE0, MEMORY[0x1E6969530], v23);
    return 0;
  }

  v25 = v29;
  (*(v20 + 32))(v29, &v15[v19], v4);
  sub_1A43630E4(&unk_1EB12AFF0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v26 = sub_1A524C594();
  v27 = *(v20 + 8);
  v27(v25, v4);
  v27(v11, v4);
  sub_1A43643AC(v15, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
  return (v26 & 1) != 0;
}

unint64_t sub_1A4363090()
{
  result = qword_1EB1B9060[0];
  if (!qword_1EB1B9060[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B9060);
  }

  return result;
}

uint64_t sub_1A43630E4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A43631D4(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1A3C7D0D8(0, a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A4363258()
{
  result = qword_1EB1B90F0[0];
  if (!qword_1EB1B90F0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B90F0);
  }

  return result;
}

unint64_t sub_1A43632AC()
{
  result = qword_1EB1387E8;
  if (!qword_1EB1387E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1387E8);
  }

  return result;
}

void sub_1A4363300(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

unint64_t sub_1A4363368()
{
  result = qword_1EB138808;
  if (!qword_1EB138808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138808);
  }

  return result;
}

uint64_t sub_1A43633BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

void sub_1A4363470(uint64_t a1)
{
  sub_1A3C39898(319, &qword_1EB126FA0, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    sub_1A3C7D0D8(319, &qword_1EB12AFE0, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A436355C(uint64_t a1)
{
  type metadata accessor for CGSize(319);
  if (v1 <= 0x3F)
  {
    sub_1A3C39898(319, &qword_1EB120B50, MEMORY[0x1E69E6448], MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1A3C7D0D8(319, &qword_1EB138788, type metadata accessor for OneUpSharePlayTitleInfo);
      if (v3 <= 0x3F)
      {
        sub_1A3C39898(319, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for OneUpSharePlayAssetMetadata.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF2)
  {
    goto LABEL_17;
  }

  if (a2 + 14 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 14) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 14;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 14;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xF;
  v8 = v6 - 15;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for OneUpSharePlayAssetMetadata.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 14 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 14) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF2)
  {
    v4 = 0;
  }

  if (a2 > 0xF1)
  {
    v5 = ((a2 - 242) >> 8) + 1;
    *result = a2 + 14;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 14;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1A4363890()
{
  result = qword_1EB1B97A0[0];
  if (!qword_1EB1B97A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B97A0);
  }

  return result;
}

unint64_t sub_1A43638E8()
{
  result = qword_1EB1B9A30[0];
  if (!qword_1EB1B9A30[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B9A30);
  }

  return result;
}

unint64_t sub_1A4363940()
{
  result = qword_1EB1B9C40[0];
  if (!qword_1EB1B9C40[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1B9C40);
  }

  return result;
}

unint64_t sub_1A4363AB8()
{
  result = qword_1EB1BA0D0[0];
  if (!qword_1EB1BA0D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BA0D0);
  }

  return result;
}

unint64_t sub_1A4363B10()
{
  result = qword_1EB1BA1E0;
  if (!qword_1EB1BA1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BA1E0);
  }

  return result;
}

unint64_t sub_1A4363B68()
{
  result = qword_1EB1BA1E8[0];
  if (!qword_1EB1BA1E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BA1E8);
  }

  return result;
}

unint64_t sub_1A4363BC0()
{
  result = qword_1EB1BA270;
  if (!qword_1EB1BA270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BA270);
  }

  return result;
}

unint64_t sub_1A4363C18()
{
  result = qword_1EB1BA278;
  if (!qword_1EB1BA278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BA278);
  }

  return result;
}

unint64_t sub_1A4363C70()
{
  result = qword_1EB1BA300;
  if (!qword_1EB1BA300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BA300);
  }

  return result;
}

unint64_t sub_1A4363CC8()
{
  result = qword_1EB1BA308[0];
  if (!qword_1EB1BA308[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BA308);
  }

  return result;
}

unint64_t sub_1A4363D20()
{
  result = qword_1EB1BA390;
  if (!qword_1EB1BA390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BA390);
  }

  return result;
}

unint64_t sub_1A4363D78()
{
  result = qword_1EB1BA398;
  if (!qword_1EB1BA398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1BA398);
  }

  return result;
}

uint64_t sub_1A4363DCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1684632949 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A524EAB4() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x707954616964656DLL && a2 == 0xE900000000000065 || (sub_1A524EAB4() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x627553616964656DLL && a2 == 0xED00007365707974 || (sub_1A524EAB4() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A53D30B0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A5331CB0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6B63616279616C70 && a2 == 0xED0000656C797453 || (sub_1A524EAB4() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7A69536C65786970 && a2 == 0xE900000000000065 || (sub_1A524EAB4() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E696147726468 && a2 == 0xE700000000000000 || (sub_1A524EAB4() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6E654C6C61636F66 && a2 == 0xEB00000000687467 || (sub_1A524EAB4() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A5331E20 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001A53D30D0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001A53D30F0 == a2 || (sub_1A524EAB4() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0x666E49656C746974 && a2 == 0xE90000000000006FLL || (sub_1A524EAB4() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001A53D3110 == a2)
  {

    return 14;
  }

  else
  {
    v6 = sub_1A524EAB4();

    if (v6)
    {
      return 14;
    }

    else
    {
      return 15;
    }
  }
}

uint64_t sub_1A4364288(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t), double a5)
{
  sub_1A4364348(0, a2, a3, a4);
  (*(*(v6 - 8) + 8))(a1, v6);
  return a1;
}

uint64_t sub_1A43642E4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OneUpSharePlayTitleInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1A4364348(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  if (!*a2)
  {
    sub_1A3C7D0D8(255, a3, a4);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_1A43643AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1A3C7D0D8(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_1A4364408(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1A43650E4(a1);

  return v2;
}

double sub_1A4364454(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = v2[3] == a1 && v2[4] == a2;
  if (v5 || (sub_1A524EAB4() & 1) != 0)
  {
    v2[3] = a1;
    v2[4] = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v8 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v2 + 232))(v8);
  }

  return result;
}

double sub_1A4364574(uint64_t a1)
{
  swift_beginAccess();
  if (v1[2] == a1)
  {

    v7 = *((*(*v1 + 144))(v6) + 16);

    v8 = [v7 name];

    v9 = sub_1A524C674();
    v11 = v10;

    (*(*v1 + 200))(v9, v11);
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v4 = MEMORY[0x1EEE9AC00](KeyPath);
    (*(*v1 + 232))(v4);
  }

  return result;
}

uint64_t sub_1A4364718()
{
  (*(*v0 + 144))();
  v1 = ImportSourceItem.id.getter();

  return v1;
}

uint64_t (*sub_1A4364780(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1A43647D4;
}

uint64_t sub_1A43647D4(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);
    v6 = *((*(*v5 + 144))(result) + 16);

    v7 = [v6 name];

    v8 = sub_1A524C674();
    v10 = v9;

    return (*(*v5 + 200))(v8, v10);
  }

  return result;
}

double sub_1A43648A8()
{
  swift_getKeyPath();
  (*(*v0 + 224))();

  swift_beginAccess();

  return result;
}

uint64_t sub_1A4364924@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  return result;
}

uint64_t sub_1A4364970(uint64_t a1, uint64_t a2)
{
  v2 = *(**a2 + 152);

  return v2(v3);
}

uint64_t (*sub_1A43649C4(uint64_t *a1))()
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
  swift_getKeyPath();
  (*(*v1 + 224))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeImportSourceModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A436544C(&qword_1EB129DC8, type metadata accessor for LemonadeImportSourceModel, &unk_1A5332A38);
  sub_1A52415F4();

  v4[7] = sub_1A4364780(v4);
  return sub_1A4364B00;
}

void sub_1A4364B0C()
{
  swift_getKeyPath();
  (*(*v0 + 224))();

  swift_beginAccess();
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A4364B94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t (*sub_1A4364C48(uint64_t *a1))()
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
  swift_getKeyPath();
  (*(*v1 + 224))();

  v4[5] = OBJC_IVAR____TtC12PhotosUICore25LemonadeImportSourceModel___observationRegistrar;
  *v4 = v1;
  swift_getKeyPath();
  v4[6] = sub_1A436544C(&qword_1EB129DC8, type metadata accessor for LemonadeImportSourceModel, &unk_1A5332A38);
  sub_1A52415F4();

  v4[7] = sub_1A3F2894C(v4);
  return sub_1A4364D84;
}

uint64_t sub_1A4364ED0()
{

  v1 = OBJC_IVAR____TtC12PhotosUICore25LemonadeImportSourceModel___observationRegistrar;
  v2 = sub_1A5241614();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1A4364F94@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*v1 + 144))();
  *a1 = result;
  return result;
}

void (*sub_1A4365004(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = (*(*v1 + 160))();
  return sub_1A3D3D728;
}

uint64_t sub_1A4365098@<X0>(uint64_t *a1@<X8>)
{
  result = (*(**v1 + 112))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

void *sub_1A43650E4(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = 0xE000000000000000;
  sub_1A5241604();
  v1[2] = a1;
  v3 = *(*v1 + 144);

  v5 = *(v3(v4) + 16);

  v6 = [v5 name];

  v7 = sub_1A524C674();
  v9 = v8;

  (*(*v1 + 200))(v7, v9);
  return v1;
}

uint64_t sub_1A43651D0()
{
  v1 = v0;
  v2 = *(v0 + 16);
  v3 = *(v1 + 24);
  swift_beginAccess();
  v2[2] = v3;

  v5 = *((*(*v2 + 144))(v4) + 16);

  v6 = [v5 name];

  v7 = sub_1A524C674();
  v9 = v8;

  return (*(*v2 + 200))(v7, v9);
}

uint64_t type metadata accessor for LemonadeImportSourceModel(uint64_t a1)
{
  result = qword_1EB183310;
  if (!qword_1EB183310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A436544C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A436549C(uint64_t a1)
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

uint64_t sub_1A4365548@<X0>(uint64_t a1@<X8>)
{
  v32 = a1;
  sub_1A3F1EA2C(0);
  v3 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A4365968(0);
  v33 = v6;
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 16);
  *v40 = *v1;
  *&v40[16] = v10;
  *&v40[32] = *(v1 + 32);
  v11 = swift_allocObject();
  v12 = *(v1 + 16);
  *(v11 + 16) = *v1;
  *(v11 + 32) = v12;
  *(v11 + 48) = *(v1 + 32);
  sub_1A4365E70(v40, v38);
  sub_1A524B704();
  v13 = sub_1A43F2548();
  KeyPath = swift_getKeyPath();
  v15 = &v5[*(v3 + 36)];
  *v15 = KeyPath;
  v15[1] = v13;
  if (*v40)
  {
    v16 = (*(**v40 + 1040))() & 1;
  }

  else
  {
    v16 = 2;
  }

  LOBYTE(v35) = v16;
  v17 = swift_allocObject();
  v18 = *&v40[16];
  *(v17 + 16) = *v40;
  *(v17 + 32) = v18;
  *(v17 + 48) = *&v40[32];
  sub_1A4365E70(v40, v38);
  sub_1A4366440(0, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
  v20 = v19;
  v21 = sub_1A3F1EC00();
  v22 = sub_1A4365A30();
  sub_1A524B144();

  sub_1A43660A4(v5);
  v35 = *&v40[8];
  v36 = *&v40[24];
  sub_1A4366100(0, &qword_1EB121C58, &qword_1EB125C80, &type metadata for TTRWorkflow, MEMORY[0x1E6981790]);
  sub_1A524B6C4();
  v35 = v38[0];
  v36 = v38[1];
  v37 = v39;
  v23 = swift_allocObject();
  v24 = *&v40[16];
  *(v23 + 16) = *v40;
  *(v23 + 32) = v24;
  *(v23 + 48) = *&v40[32];
  sub_1A4365E70(v40, v34);
  v34[0] = v3;
  v34[1] = v20;
  v34[2] = v21;
  v34[3] = v22;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v26 = v33;
  View.tapToRadar(workflow:completion:)(&v35, sub_1A43661D0, v23, v33, OpaqueTypeConformance2, v32);

  v27 = v36;
  v28 = v37;

  v29 = sub_1A3DAECB8(v27, *(&v27 + 1), v28);
  return (*(v7 + 8))(v9, v26, v29);
}

void sub_1A4365968(uint64_t a1)
{
  if (!qword_1EB138850)
  {
    sub_1A3F1EA2C(255);
    sub_1A4366440(255, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    sub_1A3F1EC00();
    sub_1A4365A30();
    OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
    if (!v2)
    {
      atomic_store(OpaqueTypeMetadata2, &qword_1EB138850);
    }
  }
}

unint64_t sub_1A4365A30()
{
  result = qword_1EB126DE8;
  if (!qword_1EB126DE8)
  {
    sub_1A4366440(255, &qword_1EB126DF0, MEMORY[0x1E69E6370], MEMORY[0x1E69E6720]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB126DE8);
  }

  return result;
}

double sub_1A4365AC4()
{
  sub_1A4365B84(&v8);
  v1 = *(v0 + 40);
  v10[0] = *(v0 + 24);
  v10[1] = v1;
  v2 = *(v0 + 40);
  v6 = *(v0 + 24);
  v7 = v2;
  v4[2] = v8;
  v5 = v9;
  sub_1A4366490(v10, v4);
  sub_1A4366100(0, &qword_1EB121C58, &qword_1EB125C80, &type metadata for TTRWorkflow, MEMORY[0x1E6981790]);
  sub_1A524B6B4();
  sub_1A3DAECB8(v6, *(&v6 + 1), v7);

  return result;
}

double sub_1A4365B84@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  if (v3)
  {
    v4 = *(*v3 + 1304);

    v6 = v4(v5);
    if (v6 == 1)
    {
      v7 = (*(*v3 + 1088))();
      (*(*v3 + 1960))(0, 0xD000000000000023, 0x80000001A53D3160, v7);
    }

    else
    {
      sub_1A3DB9B78(v6);
    }

    v9 = (*(*v3 + 1304))(v10);
    v8 = (*(*v3 + 1376))();
    v11 = (*(*v3 + 992))();
    v12 = (*(*v3 + 416))(v11);
    (*(*v3 + 440))(v12);
  }

  else
  {
    v8 = 0;
    v9 = 5;
  }

  type metadata accessor for GenerativeStoryTTRWorkflowBuilder();
  sub_1A48DA3E0(v9, v8 & 1, &v14);

  sub_1A4366520(v9);

  *a1 = v14;
  result = *&v15;
  *(a1 + 8) = v15;
  return result;
}

double sub_1A4365E50@<D0>(uint64_t a1@<X8>)
{
  *&result = 0x7261646152;
  *a1 = xmmword_1A5332AB0;
  *(a1 + 16) = 0;
  *(a1 + 24) = MEMORY[0x1E69E7CC0];
  return result;
}

double sub_1A4365EA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = a1;
  sub_1A4366440(0, &qword_1EB125C80, &type metadata for TTRWorkflow, MEMORY[0x1E69E6720]);
  sub_1A524B694();
  result = *&v4;
  *(a2 + 8) = v4;
  *(a2 + 24) = v5;
  return result;
}

uint64_t sub_1A4365F28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1A5249204();
  *a1 = result;
  return result;
}

double sub_1A4365F80(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = v2;
  v4 = *a1;
  v5 = *a2;
  if (v4 == 2)
  {
    if (v5 == 2)
    {
      return result;
    }
  }

  else if (v5 == 2 || (v4 & 1) != 0)
  {
    return result;
  }

  if (v5)
  {
    v6 = *(v2 + 16);
    if (v6)
    {
      (*(*v6 + 1048))(0);
    }

    sub_1A4365B84(&v14);
    v7 = *(v3 + 40);
    v16[0] = *(v3 + 24);
    v16[1] = v7;
    v8 = *(v3 + 40);
    v12 = *(v3 + 24);
    v13 = v8;
    v10[2] = v14;
    v11 = v15;
    sub_1A4366490(v16, v10);
    sub_1A4366100(0, &qword_1EB121C58, &qword_1EB125C80, &type metadata for TTRWorkflow, MEMORY[0x1E6981790]);
    sub_1A524B6B4();
    sub_1A3DAECB8(v12, *(&v12 + 1), v13);
  }

  return result;
}

uint64_t sub_1A43660A4(uint64_t a1)
{
  sub_1A3F1EA2C(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1A4366100(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    sub_1A4366440(255, a3, a4, MEMORY[0x1E69E6720]);
    v9 = a5(a1, v8);
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t objectdestroyTm_46()
{

  if (*(v0 + 32))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1A43661D0(void *a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D40];
  if (*(v2 + 16))
  {
    v5 = *((*MEMORY[0x1E69E7D40] & *a1) + 0x1F0);

    v5(v6);
  }

  sub_1A4366440(0, &qword_1EB12B260, MEMORY[0x1E69E6158], MEMORY[0x1E69E6F90]);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1A52F8E10;
  *(v7 + 32) = sub_1A524C674();
  *(v7 + 40) = v8;
  (*((*v4 & *a1) + 0x1F8))(v7);

  return (*((*v4 & *a1) + 0x200))(0);
}

uint64_t get_enum_tag_for_layout_string_12PhotosUICore11TTRWorkflowVSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A4366378(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A43663D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1A4366440(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1A4366490(uint64_t a1, uint64_t a2)
{
  sub_1A4366100(0, &qword_1EB121C58, &qword_1EB125C80, &type metadata for TTRWorkflow, MEMORY[0x1E6981790]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1A4366520(id a1)
{
  if (a1 != 5)
  {
    sub_1A3DB9B78(a1);
  }
}

void LemonadePreviewableCollectionCurationContext.__allocating_init(collection:environmentValues:)(uint64_t *a1, uint64_t a2)
{
  v3 = swift_allocObject();
  v4 = *a1;
  LOBYTE(a1) = *(a1 + 8);
  swift_defaultActor_initialize();
  *(v3 + 128) = 1;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_isPrepared) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__currentCurationKind) = 6;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__availableCurationKinds) = 0;
  *(v3 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_cachedAssetsByCurationKind) = MEMORY[0x1E69E7CC8];
  *(v3 + 112) = v4;
  *(v3 + 120) = a1;
  sub_1A5245BA4();
}

void LemonadePreviewableCollectionCurationContext.init(collection:environmentValues:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  swift_defaultActor_initialize();
  *(v2 + 128) = 1;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_isPrepared) = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__currentCurationKind) = 6;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__availableCurationKinds) = 0;
  *(v2 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_cachedAssetsByCurationKind) = MEMORY[0x1E69E7CC8];
  *(v2 + 112) = v3;
  *(v2 + 120) = v4;
  sub_1A5245BA4();
}

double sub_1A43666DC@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  *(a1 + 24) = &type metadata for PhotosPreviewableCollection;
  *a1 = v2;
  *(a1 + 8) = v3;
  swift_unknownObjectRetain();
  return result;
}

uint64_t sub_1A43666FC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = swift_task_alloc();
  v2[4] = v3;
  *v3 = v2;
  v3[1] = sub_1A436678C;

  return sub_1A43670B8();
}

uint64_t sub_1A436678C()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1A436689C, v1, 0);
}

uint64_t sub_1A436689C()
{
  v1 = *(*(v0 + 24) + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__currentCurationKind);
  if (v1 == 6)
  {
    return sub_1A524E6E4();
  }

  **(v0 + 16) = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1A436696C()
{
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1A43669FC;

  return sub_1A43670B8();
}

uint64_t sub_1A43669FC()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1A4366B0C, v1, 0);
}

uint64_t sub_1A4366B0C()
{
  if (*(*(v0 + 16) + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__availableCurationKinds))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  return sub_1A524E6E4();
}

uint64_t sub_1A4366BE4(_BYTE *a1)
{
  *(v2 + 40) = v1;
  *(v2 + 64) = *a1;
  v5 = (*(*v1 + 168) + **(*v1 + 168));
  v3 = swift_task_alloc();
  *(v2 + 48) = v3;
  *v3 = v2;
  v3[1] = sub_1A4366D00;

  return v5();
}

uint64_t sub_1A4366D00(uint64_t a1)
{
  v2 = *(*v1 + 40);
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A4366E18, v2, 0);
}

uint64_t sub_1A4366E18()
{
  v1 = sub_1A408F39C(*(v0 + 64), *(v0 + 56));

  if (v1)
  {
    v2 = *(v0 + 40);
    v3 = OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_cachedAssetsByCurationKind;
    swift_beginAccess();
    if (*(*(v2 + v3) + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    sub_1A4367804();
    swift_allocError();
    v5 = 6;
  }

  else
  {
    sub_1A4367804();
    swift_allocError();
    v5 = *(v0 + 64);
  }

  *v4 = v5;
  swift_willThrow();
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A4366F90(uint64_t a1, char *a2)
{
  v4 = OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_cachedAssetsByCurationKind;
  v5 = *a2;
  swift_beginAccess();
  swift_unknownObjectRetain();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v2 + v4);
  *(v2 + v4) = 0x8000000000000000;
  swift_getObjectType();
  sub_1A4368610(a1, v5, isUniquelyReferenced_nonNull_native, &v8);
  *(v2 + v4) = v8;
  return swift_endAccess();
}

id sub_1A436703C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *(v2 + 128);
  v5 = v4;
  if (v4 == 1)
  {
    v5 = sub_1A4910738();
    v6 = *(v3 + 128);
    *(v3 + 128) = v5;
    v7 = v5;
    sub_1A3C327F4(v6);
  }

  sub_1A3C327E4(v4);
  return v5;
}

uint64_t sub_1A43670D8()
{
  v1 = *(v0 + 64);
  if ((*(v1 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_isPrepared) & 1) == 0)
  {
    v13 = swift_allocObject();
    *(v13 + 16) = MEMORY[0x1E69E7CC0];
    v2 = OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_cachedAssetsByCurationKind;
    swift_beginAccess();
    if (*(*(v1 + v2) + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    if (qword_1EB1BA3C0 != -1)
    {
      swift_once();
    }

    v3 = sub_1A5246F24();
    __swift_project_value_buffer(v3, qword_1EB1BA3C8);
    v4 = sub_1A5246F04();
    v5 = sub_1A524D244();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1A3C1C000, v4, v5, "No implicit curation provided, falling back gracefully", v6, 2u);
      MEMORY[0x1A590EEC0](v6, -1, -1);
    }

    v7 = static LemonadeCurationKind.allCases.getter();
    v8 = v7[2];
    if (v8)
    {
      v9 = 32;
      sub_1A3F5F320();
      do
      {
        *(v0 + 16) = *(v7 + v9);
        *(v0 + 72) = 5;
        if ((sub_1A524C594() & 1) == 0 && *(*(v1 + v2) + 16))
        {
          _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
        }

        ++v9;
        --v8;
      }

      while (v8);
    }

    if (*(*(v1 + v2) + 16))
    {
      _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
    }

    v10 = *(v0 + 64);
    *(v10 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__currentCurationKind) = 3;
    swift_beginAccess();
    *(v10 + OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext__availableCurationKinds) = *(v13 + 16);
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  v11 = *(v0 + 8);

  return v11();
}

unint64_t sub_1A4367804()
{
  result = qword_1EB1BA3E8[0];
  if (!qword_1EB1BA3E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB1BA3E8);
  }

  return result;
}

void sub_1A4367858(void *a1)
{
  v1 = [a1 photoLibrary];
  if (v1)
  {
    v3 = v1;
    type metadata accessor for PhotoKitFetcher(0, v2);
    PhotoKitFetcher.__allocating_init(_:)(v3);
    PhotosEnvironmentValues.photosCurationContext.getter();
  }

  __break(1u);
  __break(1u);
}

void LemonadePreviewableCollectionCurationContext.deinit()
{
  swift_unknownObjectRelease();
  sub_1A3C327F4(*(v0 + 128));
  sub_1A5245BA4();
}

void LemonadePreviewableCollectionCurationContext.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  sub_1A3C327F4(*(v0 + 128));
  sub_1A5245BA4();
}

uint64_t sub_1A4367AD4(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3FBB594;

  return v6(a1);
}

uint64_t sub_1A4367C18(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return v6(a1);
}

uint64_t sub_1A4367D3C()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3E64928;

  return v4();
}

uint64_t sub_1A4367E4C()
{
  v0 = sub_1A5246F24();
  __swift_allocate_value_buffer(v0, qword_1EB1BA3C8);
  __swift_project_value_buffer(v0, qword_1EB1BA3C8);
  sub_1A524C814();
  return sub_1A5246F14();
}

char *sub_1A4367EC4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1A3C4D548(0, &qword_1EB138880, &type metadata for LemonadeCurationKind);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

unint64_t sub_1A4367FBC(char a1)
{
  sub_1A4368E5C();
  v1 = sub_1A524C4A4();
  return sub_1A4368024(a1, v1);
}

unint64_t sub_1A4368024(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    sub_1A4368EB0();
    do
    {
      if (sub_1A524C594())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void sub_1A43680EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A4368DF0(0);
  v32 = v4;
  v6 = sub_1A524E774();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v2;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = v6 + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        swift_unknownObjectRetain();
      }

      sub_1A4368E5C();
      v22 = sub_1A524C4A4();
      v23 = -1 << *(v7 + 32);
      v24 = v22 & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    if ((v32 & 1) == 0)
    {

      v3 = v31;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v31;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
}

void sub_1A4368378()
{
  v1 = v0;
  sub_1A4368DF0(0);
  v2 = *v0;
  v3 = sub_1A524E764();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 8 * v17) = v18;
        swift_unknownObjectRetain();
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }
}

uint64_t sub_1A43684C8(char *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *a1;
  swift_beginAccess();
  v9 = *(a3 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a3 + 16) = v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = sub_1A4367EC4(0, *(v9 + 2) + 1, 1, v9);
    *(a3 + 16) = v9;
  }

  v12 = *(v9 + 2);
  v11 = *(v9 + 3);
  if (v12 >= v11 >> 1)
  {
    v9 = sub_1A4367EC4((v11 > 1), v12 + 1, 1, v9);
  }

  *(v9 + 2) = v12 + 1;
  v9[v12 + 32] = v8;
  *(a3 + 16) = v9;
  swift_endAccess();
  v13 = OBJC_IVAR____TtC12PhotosUICore44LemonadePreviewableCollectionCurationContext_cachedAssetsByCurationKind;
  swift_beginAccess();
  swift_unknownObjectRetain();
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(a4 + v13);
  *(a4 + v13) = 0x8000000000000000;
  sub_1A4368610(a2, v8, v14, &v16);
  *(a4 + v13) = v16;
  return swift_endAccess();
}

unint64_t sub_1A4368610(uint64_t a1, char a2, char a3, void *a4)
{
  v8 = *a4;
  result = sub_1A4367FBC(a2);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = v8[3];
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      sub_1A43680EC(v14, a3 & 1);
      result = sub_1A4367FBC(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = sub_1A524EB84();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      sub_1A4368378();
      result = v17;
    }
  }

  v19 = *a4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;

  return swift_unknownObjectRelease();
}

uint64_t sub_1A436875C(uint64_t a1)
{
  result = sub_1A4368830(&qword_1EB129350, &protocol conformance descriptor for LemonadePreviewableCollectionCurationContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata accessor for LemonadePreviewableCollectionCurationContext(uint64_t a1)
{
  result = qword_1EB177150;
  if (!qword_1EB177150)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A43687EC(uint64_t a1)
{
  result = sub_1A4368830(&qword_1EB129358, &protocol conformance descriptor for LemonadePreviewableCollectionCurationContext);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A4368830(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for LemonadePreviewableCollectionCurationContext(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t dispatch thunk of LemonadePreviewableCollectionCurationContext.currentCurationKind.getter(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return v6(a1);
}

uint64_t dispatch thunk of LemonadePreviewableCollectionCurationContext.availableCurationKinds.getter()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1A3E64928;

  return v4();
}

uint64_t dispatch thunk of LemonadePreviewableCollectionCurationContext.assets(for:)(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D43A98;

  return v6(a1);
}

uint64_t getEnumTagSinglePayload for LemonadeAssetCollectionCurationKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_20;
  }

  v2 = a2 + 6;
  if (a2 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 6;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 6;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 6;
  v9 = v7 - 6;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A4368DBC(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 6)
  {
    return v1 - 5;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1A4368DD0(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 5;
  }

  return result;
}

void sub_1A4368DF0(uint64_t a1)
{
  if (!qword_1EB138860)
  {
    sub_1A40091D8();
    sub_1A4368E5C();
    v1 = sub_1A524E7A4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB138860);
    }
  }
}

unint64_t sub_1A4368E5C()
{
  result = qword_1EB138870;
  if (!qword_1EB138870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138870);
  }

  return result;
}

unint64_t sub_1A4368EB0()
{
  result = qword_1EB138878;
  if (!qword_1EB138878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB138878);
  }

  return result;
}

void *sub_1A4368F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  sub_1A52411B4();
  sub_1A5241604();
  v10[4] = a1;
  v10[5] = a2;
  v10[6] = a3;
  v10[2] = a4;
  v10[3] = a5;
  if (a3 < 0)
  {
  }

  else
  {
    a1 = 0;
  }

  v10[7] = a1;
  return v10;
}

void *sub_1A4368FA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_1A52411B4();
  sub_1A5241604();
  v5[4] = a1;
  v5[5] = a2;
  v5[6] = a3;
  v5[2] = a4;
  v5[3] = a5;
  if (a3 < 0)
  {
  }

  else
  {
    a1 = 0;
  }

  v5[7] = a1;
  return v5;
}

uint64_t type metadata accessor for PhotosViewPersonBannerModel(uint64_t a1)
{
  result = qword_1EB1BA680;
  if (!qword_1EB1BA680)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

char *sub_1A43691B4()
{

  sub_1A4369270(v0[4], v0[5], v0[6]);

  v1 = OBJC_IVAR____TtC12PhotosUICore27PhotosViewPersonBannerModel_id;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore27PhotosViewPersonBannerModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

double sub_1A4369270(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x8000000000000000) == 0)
  {

    v3 = vars8;
  }

  return result;
}

uint64_t sub_1A43692BC()
{

  sub_1A4369270(v0[4], v0[5], v0[6]);

  v1 = OBJC_IVAR____TtC12PhotosUICore27PhotosViewPersonBannerModel_id;
  v2 = sub_1A52411C4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC12PhotosUICore27PhotosViewPersonBannerModel___observationRegistrar;
  v4 = sub_1A5241614();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_1A43693B4(uint64_t a1)
{
  result = sub_1A436949C(&qword_1EB138890, type metadata accessor for PhotosViewPersonBannerModel, &unk_1A5332DCC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1A436949C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A43694E8@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12PhotosUICore27PhotosViewPersonBannerModel_id;
  v5 = sub_1A52411C4();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_1A436956C(uint64_t a1)
{
  result = sub_1A52411C4();
  if (v2 <= 0x3F)
  {
    result = sub_1A5241614();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1A4369668(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFF && *(a1 + 24))
  {
    return (*a1 + 0x3FFF);
  }

  v3 = (((*(a1 + 16) >> 50) >> 13) | (2 * ((*(a1 + 16) >> 50) & 0x1C00 | ((*(a1 + 16) & 7) << 7) | (*(a1 + 8) >> 57) & 0x78 | *(a1 + 8) & 7))) ^ 0x3FFF;
  if (v3 >= 0x3FFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A43696E0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x3FFF;
    if (a3 >= 0x3FFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 1) & 0x1FFF | ((-a2 & 0x3FFF) << 13);
      *result = 0;
      *(result + 8) = (v3 | (v3 << 57)) & 0xF000000000000007;
      *(result + 16) = ((v3 >> 7) | (v3 << 50)) & 0xF000000000000007;
    }
  }

  return result;
}

uint64_t sub_1A4369764(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16) & 0xFFFFFFFFFFFFFF8 | (a2 << 63);
  *(result + 8) &= 0xFFFFFFFFFFFFFF8uLL;
  *(result + 16) = v2;
  return result;
}

uint64_t sub_1A4369794()
{
  v0 = sub_1A5240BA4();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = sub_1A5240BB4();
  __swift_allocate_value_buffer(v6, qword_1EB1BA698);
  __swift_project_value_buffer(v6, qword_1EB1BA698);
  sub_1A524C5B4();
  sub_1A5241244();
  (*(v1 + 104))(v3, *MEMORY[0x1E6968DF0], v0);
  return sub_1A5240BC4();
}

uint64_t (*static DeleteAssetsIntent.title.modify(uint64_t a1, double a2))(uint64_t a1)
{
  if (qword_1EB1BA690 != -1)
  {
    swift_once();
  }

  v2 = sub_1A5240BB4();
  __swift_project_value_buffer(v2, qword_1EB1BA698);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_1A4369A84@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB1BA690 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1BA698);
  swift_beginAccess();
  return (*(*(v3 - 8) + 16))(a1, v4, v3);
}

uint64_t sub_1A4369B44(uint64_t a1, double a2)
{
  if (qword_1EB1BA690 != -1)
  {
    swift_once();
  }

  v3 = sub_1A5240BB4();
  v4 = __swift_project_value_buffer(v3, qword_1EB1BA698);
  swift_beginAccess();
  (*(*(v3 - 8) + 24))(v4, a1, v3);
  return swift_endAccess();
}

uint64_t static DeleteAssetsIntent.parameterSummary.getter()
{
  sub_1A436B3E0(0, &qword_1EB1388A0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v0 - 8);
  sub_1A436B3E0(0, &qword_1EB1388B0, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v1);
  sub_1A4369DD0();
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4369E48(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

unint64_t sub_1A4369DD0()
{
  result = qword_1EB1388A8;
  if (!qword_1EB1388A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1388A8);
  }

  return result;
}

void sub_1A4369E48(uint64_t a1)
{
  if (!qword_1EB1388B8)
  {
    sub_1A3F57E84(255);
    v1 = sub_1A524ED44();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB1388B8);
    }
  }
}

uint64_t DeleteAssetsIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v1 = sub_1A5240334();
  v24 = *(v1 - 8);
  v25 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v23 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1A5240184();
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v22 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A3DB3480(0, v4);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v21 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1A5240BA4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A5241284();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v13 = sub_1A524C624();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v20[0] = sub_1A5240BB4();
  v14 = *(v20[0] - 8);
  MEMORY[0x1EEE9AC00](v20[0]);
  sub_1A3F57E84(0);
  v20[1] = v15;
  sub_1A524C5B4();
  sub_1A5241244();
  v16 = *MEMORY[0x1E6968DF0];
  v17 = *(v9 + 104);
  v17(v11, v16, v8);
  sub_1A5240BC4();
  sub_1A524C5B4();
  sub_1A5241244();
  v17(v11, v16, v8);
  v18 = v21;
  sub_1A5240BC4();
  (*(v14 + 56))(v18, 0, 1, v20[0]);
  v27 = 0;
  sub_1A5240174();
  (*(v24 + 104))(v23, *MEMORY[0x1E695A500], v25);
  sub_1A3F587A8();
  sub_1A3F58824();
  result = sub_1A5240034();
  *v26 = result;
  return result;
}

uint64_t DeleteAssetsIntent.perform()(uint64_t a1)
{
  v3 = *v1;
  v2[4] = a1;
  v2[5] = v3;
  sub_1A524CC54();
  v2[6] = sub_1A524CC44();
  v5 = sub_1A524CBC4();
  v2[7] = v5;
  v2[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1A436A3B4, v5, v4);
}

uint64_t sub_1A436A3B4()
{
  v0[2] = v0[5];
  sub_1A523FF44();
  v1 = *(v0[3] + 16);

  v2 = swift_task_alloc();
  v0[9] = v2;
  sub_1A4369DD0();
  *v2 = v0;
  v2[1] = sub_1A3DB3750;
  v3 = v0[4];

  return AppIntent.px_performWithLoggingAndAnalytics(intentName:category:count:_:)(v3, 0, 0, 0, 0, v1, 0, &unk_1A5332F98);
}

uint64_t sub_1A436A4F4(uint64_t a1, uint64_t a2)
{
  v2[9] = a1;
  v2[10] = a2;
  sub_1A524CC54();
  v2[11] = sub_1A524CC44();
  v4 = sub_1A524CBC4();
  v2[12] = v4;
  v2[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1A436A58C, v4, v3);
}

uint64_t sub_1A436A58C()
{
  v1 = v0[10];
  sub_1A523FF44();
  v2 = v0[7];
  v0[14] = v2;
  v0[8] = v1;
  v3 = sub_1A4369DD0();
  v4 = AppIntent.px_intentName.getter(&type metadata for DeleteAssetsIntent);
  v6 = v5;
  v0[15] = v5;
  v0[2] = v1;
  v0[5] = &type metadata for DeleteAssetsIntent;
  v0[6] = v3;

  v7 = swift_task_alloc();
  v0[16] = v7;
  *v7 = v0;
  v7[1] = sub_1A3DB3B20;

  return sub_1A436AB58(v2, v4, v6);
}

uint64_t sub_1A436A6B4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A3D60150;

  return sub_1A436A4F4(a1, v1);
}

uint64_t sub_1A436A750(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1A3CA8098;

  return (sub_1A436AB58)(a1, a2, a3, a4);
}

void (*DeleteAssetsIntent.entities.modify(uint64_t *a1))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_1A523FF34();
  return sub_1A3DB3FF0;
}

uint64_t sub_1A436A8C4(uint64_t a1, uint64_t a2)
{
  sub_1A436B3E0(0, &qword_1EB1388A0, MEMORY[0x1E695A4A8]);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1A436B3E0(0, &qword_1EB1388B0, MEMORY[0x1E695A4A0]);
  MEMORY[0x1EEE9AC00](v3);
  sub_1A5240314();
  sub_1A5240304();
  swift_getKeyPath();
  sub_1A4369E48(0);
  sub_1A52402F4();

  sub_1A5240304();
  sub_1A5240324();
  return sub_1A52402E4();
}

uint64_t sub_1A436AA80(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A3D60150;

  return DeleteAssetsIntent.perform()(a1);
}

uint64_t sub_1A436AB1C(uint64_t a1)
{
  v2 = sub_1A4369DD0();

  return MEMORY[0x1EEDB2D90](a1, v2);
}

uint64_t sub_1A436AB58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  v4 = sub_1A5246F24();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  sub_1A524CC54();
  v3[8] = sub_1A524CC44();
  v6 = sub_1A524CBC4();
  v3[9] = v6;
  v3[10] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1A436AC50, v6, v5);
}

void sub_1A436AC50()
{
  v1 = v0;
  if (!(PXAppIntentsAssets(for:)(*(v0 + 16)) >> 62))
  {
    _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
  }

  sub_1A3C52C70(0, &qword_1EB1265D0, 0x1E6978958);
  _s12PhotosUICore13SpriteBuilderV11buildEither5firstSayAA0C13Configuration_pGAG_tFZ_0();
}

uint64_t sub_1A436B018()
{
  v2 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1A436B1B8;
  }

  else
  {

    v3 = *(v2 + 72);
    v4 = *(v2 + 80);
    v5 = sub_1A436B134;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1A436B134()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1A436B1B8()
{
  v1 = v0[11];
  v2 = v0[12];

  v3 = v0[1];

  return v3();
}

unint64_t sub_1A436B238()
{
  result = qword_1EB1388C0;
  if (!qword_1EB1388C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1388C0);
  }

  return result;
}

unint64_t sub_1A436B294()
{
  result = qword_1EB1388C8;
  if (!qword_1EB1388C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1388C8);
  }

  return result;
}

unint64_t sub_1A436B2EC()
{
  result = qword_1EB1388D0;
  if (!qword_1EB1388D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1388D0);
  }

  return result;
}

unint64_t sub_1A436B36C()
{
  result = qword_1EB1388D8;
  if (!qword_1EB1388D8)
  {
    sub_1A436B3E0(255, &qword_1EB1388E0, MEMORY[0x1E695A488]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB1388D8);
  }

  return result;
}

void sub_1A436B3E0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, ValueMetadata *, unint64_t))
{
  if (!*a2)
  {
    v6 = sub_1A4369DD0();
    v7 = a3(a1, &type metadata for DeleteAssetsIntent, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

id sub_1A436B45C(void *a1)
{
  v1 = a1;
  v2 = [v1 appContentController];
  v3 = [v2 eventTracker];

  return v3;
}

id sub_1A436B4D4(void *a1)
{
  v1 = a1;
  v2 = [v1 appContentController];
  v3 = [v2 numberOfItemsToPlayInline];

  return v3;
}

void sub_1A436B534(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v4 = [v5 appContentController];
  [v4 setNumberOfItemsToPlayInline_];
}

id sub_1A436B5A4(void *a1)
{
  v1 = a1;
  if ([v1 contentControllerHelper])
  {

    objc_opt_self();
    v2 = swift_dynamicCastObjCClassUnconditional();

    return v2;
  }

  else
  {
    result = sub_1A524E6E4();
    __break(1u);
  }

  return result;
}

id sub_1A436B67C(void *a1, uint64_t a2, SEL *a3)
{
  v4 = a1;
  v5 = [v4 appContentController];
  v6 = [v5 *a3];

  return v6;
}