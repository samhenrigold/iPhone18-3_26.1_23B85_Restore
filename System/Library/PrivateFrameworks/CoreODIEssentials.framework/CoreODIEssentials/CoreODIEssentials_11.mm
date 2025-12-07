uint64_t sub_1DB017C58()
{
  v24 = v0;
  if (qword_1ECC0E058 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = v0[11];
  v4 = qword_1ECC25C08;
  v3 = unk_1ECC25C10;
  v5 = byte_1ECC25C18;
  v6 = qword_1ECC25C20;
  v7 = byte_1ECC25C28;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[8];
  sub_1DAF5F604(v0[11], v0[12]);
  v12 = sub_1DB016F7C(v11);
  if (*(v12 + 16))
  {
    v13 = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E258, &qword_1DB0B2710);
    v14 = sub_1DB09DFF4();
    v12 = v13;
  }

  else
  {
    v14 = MEMORY[0x1E69E7CC8];
  }

  v23 = v14;
  sub_1DB01F8E0(v12, 1, &v23);
  v0[13] = v23;

  sub_1DB05673C(v15);
  v17 = v16;
  v0[14] = v16;
  if ((v16 & 0xC000000000000001) != 0)
  {
    if (sub_1DB09DD44())
    {
LABEL_11:
      v18 = swift_task_alloc();
      v0[15] = v18;
      *v18 = v0;
      v18[1] = sub_1DB017FA8;

      return sub_1DB018720(v17);
    }
  }

  else if (*(v16 + 16))
  {
    goto LABEL_11;
  }

  v20 = sub_1DAF3FA54(MEMORY[0x1E69E7CC0]);
  v21 = v0[12];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DAF60868(v21);

  v22 = v0[1];

  return v22(v20);
}

uint64_t sub_1DB017FA8()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1DB0180D4, v1, 0);
}

uint64_t sub_1DB0180D4()
{
  v1 = *(v0 + 104);
  v2 = *(v1 + 32);
  *(v0 + 168) = v2;
  v3 = -1;
  v4 = -1 << v2;
  v5 = *(v1 + 64);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  *(v0 + 128) = MEMORY[0x1E69E7CC8];
  v6 = v3 & v5;
  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 136) = v6;
    *(v0 + 144) = v7;
    v10 = __clz(__rbit64(v6)) | (v7 << 6);
    *(v0 + 169) = *(*(v1 + 48) + v10);
    v11 = *(*(v1 + 56) + 8 * v10);
    *(v0 + 152) = v11;
    v12 = v11;
    v13 = swift_task_alloc();
    *(v0 + 160) = v13;
    *v13 = v0;
    v13[1] = sub_1DB01829C;

    return sub_1DB01E7EC(v12);
  }

  else
  {
    v8 = 0;
    v9 = ((63 - v4) >> 6) - 1;
    while (v9 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v1 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v15 = *(v0 + 128);
    v16 = *(v0 + 96);
    sub_1DB09DC04();
    sub_1DB09D464();
    sub_1DAF60868(v16);

    v17 = *(v0 + 8);

    return v17(v15);
  }
}

uint64_t sub_1DB01829C(uint64_t a1, uint64_t a2, char a3)
{
  v4 = *v3;
  v5 = *v3;
  *(v5 + 40) = a3;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 16) = v3;
  v6 = *(v4 + 72);
  *(v5 + 170) = a3;

  return MEMORY[0x1EEE6DFA0](sub_1DB0183BC, v6, 0);
}

void sub_1DB0183BC()
{
  if (*(v1 + 170))
  {
    v3 = (v1 + 128);
    v2 = *(v1 + 128);
    v4 = sub_1DAF35670(*(v1 + 169));
    if ((v5 & 1) == 0)
    {

      v20 = *(v1 + 144);
      v21 = (*(v1 + 136) - 1) & *(v1 + 136);
      if (!v21)
      {
        goto LABEL_12;
      }

LABEL_23:
      v23 = *(v1 + 104);
LABEL_24:
      *(v1 + 136) = v21;
      *(v1 + 144) = v20;
      v30 = __clz(__rbit64(v21)) | (v20 << 6);
      *(v1 + 169) = *(*(v23 + 48) + v30);
      v31 = *(*(v23 + 56) + 8 * v30);
      *(v1 + 152) = v31;
      v32 = v31;
      v33 = swift_task_alloc();
      *(v1 + 160) = v33;
      *v33 = v1;
      v33[1] = sub_1DB01829C;

      sub_1DB01E7EC(v32);
      return;
    }

    v0 = v4;
    v2 = (v1 + 48);
    v6 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 48) = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_32;
  }

  v10 = *(v1 + 24);
  v9 = *(v1 + 32);
  v2 = *(v1 + 128);
  v0 = *(v1 + 169);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 56) = v2;
  v12 = sub_1DAF35670(v0);
  v14 = v2[2];
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
LABEL_31:
    __break(1u);
LABEL_32:
    sub_1DAF3D6AC();
    v3 = v2;
LABEL_4:
    v2 = *v3;
    v8 = *(v1 + 152);
    sub_1DB080DAC(v0, *v3);

    goto LABEL_22;
  }

  v0 = v13;
  if (*(*(v1 + 128) + 24) >= v17)
  {
    if ((v11 & 1) == 0)
    {
      v37 = v12;
      sub_1DAF3D6AC();
      v12 = v37;
    }
  }

  else
  {
    v18 = *(v1 + 169);
    sub_1DAF3A09C(v17, v11);
    v12 = sub_1DAF35670(v18);
    if ((v0 & 1) != (v19 & 1))
    {

      sub_1DB09E2E4();
      return;
    }
  }

  v2 = *(v1 + 56);
  v24 = *(v1 + 152);
  if (v0)
  {
    v25 = (v2[7] + 16 * v12);
    *v25 = v10;
    v25[1] = v9;
  }

  else
  {
    v26 = *(v1 + 169);
    v2[(v12 >> 6) + 8] |= 1 << v12;
    *(v2[6] + v12) = v26;
    v27 = (v2[7] + 16 * v12);
    *v27 = v10;
    v27[1] = v9;

    v28 = v2[2];
    v16 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (v16)
    {
      __break(1u);
      return;
    }

    v2[2] = v29;
  }

LABEL_22:
  v20 = *(v1 + 144);
  v21 = (*(v1 + 136) - 1) & *(v1 + 136);
  *(v1 + 128) = v2;
  if (v21)
  {
    goto LABEL_23;
  }

  while (1)
  {
LABEL_12:
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    v23 = *(v1 + 104);
    if (v22 >= (((1 << *(v1 + 168)) + 63) >> 6))
    {
      break;
    }

    v21 = *(v23 + 8 * v22 + 64);
    ++v20;
    if (v21)
    {
      v20 = v22;
      goto LABEL_24;
    }
  }

  v34 = *(v1 + 128);
  v35 = *(v1 + 96);
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DAF60868(v35);

  v36 = *(v1 + 8);

  v36(v34);
}

uint64_t sub_1DB018720(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB0187EC, v1, 0);
}

uint64_t sub_1DB0187EC()
{
  v1 = *(v0 + 24);
  v2 = sub_1DB0222F8();
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  *v3 = v0;
  v3[1] = sub_1DB0188D4;
  v4 = *(v0 + 24);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v3, v1, v2, 0xD000000000000020, 0x80000001DB0CA570, sub_1DB022834, v4, v5);
}

uint64_t sub_1DB0188D4()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1DB0189E4, v1, 0);
}

uint64_t sub_1DB0189E4()
{
  *(v0[3] + 152) = 1;
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_1DB018A84;
  v2 = v0[2];

  return sub_1DB018E40(v2);
}

uint64_t sub_1DB018A84()
{
  v1 = *(*v0 + 24);

  return MEMORY[0x1EEE6DFA0](sub_1DB018B94, v1, 0);
}

uint64_t sub_1DB018B94()
{
  v1 = v0[3];
  v2 = *(v1 + 160);
  *(v1 + 152) = 0;
  if (*(v2 + 16))
  {
    v4 = v0[5];
    v3 = v0[6];
    v5 = v0[4];
    (*(v4 + 16))(v3, v2 + ((*(v4 + 80) + 32) & ~*(v4 + 80)), v5);
    sub_1DB0226F4(0, 1);
    sub_1DB09D9B4();
    (*(v4 + 8))(v3, v5);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1DB018C74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a2 + 152) != 1)
  {
    return sub_1DB09D9B4();
  }

  (*(v5 + 16))(v7, a1, v4);
  v8 = *(a2 + 160);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 160) = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1DAF736D4(0, v8[2] + 1, 1, v8);
    *(a2 + 160) = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1DAF736D4((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v11, v7, v4);
  *(a2 + 160) = v8;
  return result;
}

uint64_t sub_1DB018E40(uint64_t a1)
{
  v2[48] = a1;
  v2[49] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E510, &qword_1DB0A2780);
  v2[50] = v3;
  v2[51] = *(v3 - 8);
  v2[52] = swift_task_alloc();
  v4 = sub_1DB09D154();
  v2[53] = v4;
  v2[54] = *(v4 - 8);
  v2[55] = swift_task_alloc();
  v2[56] = swift_task_alloc();
  v2[57] = swift_task_alloc();
  v2[58] = swift_task_alloc();
  v2[59] = swift_task_alloc();
  v2[60] = type metadata accessor for ODISignpost(0);
  v2[61] = swift_task_alloc();
  v2[62] = swift_task_alloc();
  v2[63] = swift_task_alloc();
  v2[64] = swift_task_alloc();
  v2[65] = swift_task_alloc();
  v2[66] = swift_task_alloc();
  v2[67] = swift_task_alloc();
  v2[68] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB01901C, v1, 0);
}

uint64_t sub_1DB01901C()
{
  if (qword_1ECC0E028 != -1)
  {
    swift_once();
  }

  v1 = v0[67];
  v2 = v0[60];
  v4 = qword_1ECC25B18;
  v3 = unk_1ECC25B20;
  v5 = byte_1ECC25B28;
  v6 = qword_1ECC25B30;
  v7 = byte_1ECC25B38;
  *(v1 + 32) = "enableTelemetry=YES";
  *(v1 + 40) = 19;
  *(v1 + 48) = 2;
  *v1 = v4;
  *(v1 + 8) = v3;
  *(v1 + 16) = v5;
  *(v1 + 24) = v6;
  v8 = *(v2 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v1 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  v11 = v0[48];
  sub_1DAF5F604(v0[67], v0[68]);
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = sub_1DB09DD44();
  }

  else
  {
    v12 = *(v0[48] + 16);
  }

  v13 = v0[49];
  swift_beginAccess();
  v14 = *(v13 + 168);
  v15 = __OFADD__(v14, v12);
  v16 = v14 + v12;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    *(v13 + 168) = v16;
    if (qword_1ECC0E030 == -1)
    {
      goto LABEL_11;
    }
  }

  swift_once();
LABEL_11:
  v17 = v0[65];
  v19 = qword_1ECC25B40;
  v18 = *algn_1ECC25B48;
  v20 = byte_1ECC25B50;
  v21 = qword_1ECC25B58;
  v22 = byte_1ECC25B60;
  *(v17 + 40) = 19;
  *(v17 + 48) = 2;
  *v17 = v19;
  *(v17 + 8) = v18;
  *(v17 + 16) = v20;
  *(v17 + 24) = v21;
  *(v17 + 32) = "enableTelemetry=YES";
  v23 = *(v2 + 28);
  v24 = v21;
  sub_1DB09D474();
  v25 = sub_1DB09DC14();
  if (v22 == 1)
  {
    LOBYTE(v28) = 2;
    sub_1DB09D454(v25, &dword_1DAF16000, v24, v19, v18, v20, v17 + v23, "enableTelemetry=YES", 19, v28, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v0[65], v0[66]);
  if (qword_1ECC0E110 != -1)
  {
    swift_once();
  }

  v26 = qword_1ECC0F4A8;
  v0[69] = qword_1ECC0F4A8;

  return MEMORY[0x1EEE6DFA0](sub_1DB019338, v26, 0);
}

uint64_t sub_1DB019338()
{
  v1 = v0[69];
  v2 = v0[48] & 0xC000000000000001;
  swift_beginAccess();
  v3 = *(v1 + 112);
  v4 = v0[48];

  if (v2)
  {
    v5 = sub_1DB09DD44();
    v6 = swift_unknownObjectRetain();
    v4 = sub_1DB01FC5C(v6, v5);
  }

  else
  {
  }

  v7 = v0[49];
  v0[70] = sub_1DB020D88(v3, v4);

  return MEMORY[0x1EEE6DFA0](sub_1DB019430, v7, 0);
}

uint64_t sub_1DB019430()
{
  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v1 = sub_1DB09D4B4();
  *(v0 + 568) = __swift_project_value_buffer(v1, qword_1EE30A128);

  v2 = sub_1DB09D494();
  v3 = sub_1DB09DB54();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v0 + 560);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 134349312;
    if ((v5 & 0xC000000000000001) != 0)
    {
      v7 = sub_1DB09DD44();
    }

    else
    {
      v7 = *(*(v0 + 560) + 16);
    }

    v8 = *(v0 + 384) & 0xC000000000000001;
    *(v6 + 4) = v7;

    *(v6 + 12) = 2050;
    if (v8)
    {
      v9 = sub_1DB09DD44();
    }

    else
    {
      v9 = *(*(v0 + 384) + 16);
    }

    *(v6 + 14) = v9;

    _os_log_impl(&dword_1DAF16000, v2, v3, "fillCoordinateMap - %{public}ld of %{public}ld addresses need looking up", v6, 0x16u);
    MEMORY[0x1E1281810](v6, -1, -1);
  }

  else
  {
  }

  v10 = *(v0 + 384) & 0xC000000000000001;
  sub_1DB09DC04();
  sub_1DB09D464();
  if (v10)
  {
    v11 = sub_1DB09DD44();
  }

  else
  {
    v11 = *(*(v0 + 384) + 16);
  }

  v12 = *(v0 + 560);
  v13 = v12 & 0xC000000000000001;
  if ((v12 & 0xC000000000000001) != 0)
  {
    v14 = sub_1DB09DD44();
    v15 = v11 - v14;
    if (!__OFSUB__(v11, v14))
    {
      goto LABEL_17;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = *(v12 + 16);
  v15 = v11 - v14;
  if (__OFSUB__(v11, v14))
  {
    goto LABEL_23;
  }

LABEL_17:
  v16 = *(v0 + 392);
  v17 = *(v16 + 176);
  v18 = __OFADD__(v17, v15);
  v19 = v17 + v15;
  if (v18)
  {
    __break(1u);
    goto LABEL_36;
  }

  *(v16 + 176) = v19;
  v14 = *(v0 + 560);
  if (v13)
  {
    if (sub_1DB09DD44())
    {
      v20 = sub_1DB09DD44();
      goto LABEL_25;
    }

    goto LABEL_28;
  }

LABEL_24:
  v20 = *(v14 + 16);
  if (v20)
  {
LABEL_25:
    *(v0 + 576) = v20;
    *(v0 + 584) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
    if (qword_1ECC0E038 == -1)
    {
LABEL_26:
      v21 = *(v0 + 504);
      v22 = *(v0 + 480);
      v24 = qword_1ECC25B68;
      v23 = unk_1ECC25B70;
      v25 = byte_1ECC25B78;
      v26 = qword_1ECC25B80;
      v27 = byte_1ECC25B88;
      *(v21 + 32) = "enableTelemetry=YES";
      *(v21 + 40) = 19;
      *(v21 + 48) = 2;
      *v21 = v24;
      *(v21 + 8) = v23;
      *(v21 + 16) = v25;
      *(v21 + 24) = v26;
      v28 = *(v22 + 28);
      v29 = v26;
      sub_1DB09D474();
      v30 = sub_1DB09DC14();
      if (v27 == 1)
      {
        sub_1DB09D454(v30, &dword_1DAF16000, v29, v24, v23, v25, v21 + v28, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
      }

      else
      {
        sub_1DB09D464();
      }

      v34 = *(v0 + 560);
      v35 = *(v0 + 392);
      sub_1DAF5F604(*(v0 + 504), *(v0 + 512));
      sub_1DAF3523C(v35 + 112, v0 + 64);
      sub_1DAF3523C(v0 + 64, v0 + 104);
      v36 = swift_allocObject();
      *(v0 + 592) = v36;
      sub_1DAF332B8((v0 + 104), v36 + 16);
      *(v36 + 56) = v34;

      return MEMORY[0x1EEE6DFA0](sub_1DB019964, 0, 0);
    }

LABEL_36:
    swift_once();
    goto LABEL_26;
  }

LABEL_28:
  sub_1DAF60868(*(v0 + 528));

  v31 = *(v0 + 544);
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DAF60868(v31);

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1DB019964()
{
  v1 = v0[74];
  v2 = swift_task_alloc();
  v0[75] = v2;
  v2[2] = 100000000;
  v2[3] = &unk_1DB0B2688;
  v2[4] = v1;
  v2[5] = &unk_1DB0B2690;
  v2[6] = 0;
  v3 = swift_task_alloc();
  v0[76] = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4C0, &unk_1DB0B26A8);
  *v3 = v0;
  v3[1] = sub_1DB019A9C;

  return MEMORY[0x1EEE6DE38](v0 + 45, 0, 0, 0xD000000000000038, 0x80000001DB0C29C0, sub_1DB022410, v2, v4);
}

uint64_t sub_1DB019A9C()
{
  v2 = *v1;
  *(*v1 + 616) = v0;

  if (v0)
  {
    v3 = sub_1DB01A484;
    v4 = 0;
  }

  else
  {
    v5 = v2[49];

    v2[78] = v2[45];
    v3 = sub_1DB019BE0;
    v4 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v3, v4, 0);
}

uint64_t sub_1DB019BE0()
{

  v1 = sub_1DB09D494();
  v2 = sub_1DB09DB54();
  v3 = os_log_type_enabled(v1, v2);
  v4 = *(v0 + 624);
  if (v3)
  {
    v5 = swift_slowAlloc();
    *v5 = 134349056;
    *(v5 + 4) = *(v4 + 16);

    _os_log_impl(&dword_1DAF16000, v1, v2, "%{public}ld results from asd cache", v5, 0xCu);
    MEMORY[0x1E1281810](v5, -1, -1);
  }

  else
  {
  }

  v6 = *(v0 + 624);
  *(v0 + 632) = v6;
  v7 = *(v0 + 560);
  v8 = *(v0 + 464);
  v9 = *(v0 + 424);
  v10 = *(v0 + 432);

  *(v0 + 640) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(v0 + 368) = v7;
  sub_1DB09D134();
  sub_1DB09D0E4();
  v11 = *(v10 + 8);
  *(v0 + 648) = v11;
  *(v0 + 656) = (v10 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v11(v8, v9);
  sub_1DB09D134();
  sub_1DB09D0E4();
  v11(v8, v9);

  v12 = sub_1DB09D494();
  v13 = sub_1DB09DB54();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = *(v0 + 576);
    v15 = swift_slowAlloc();
    *v15 = 134349312;
    v16 = *(v6 + 16);

    *(v15 + 4) = v16;

    *(v15 + 12) = 2050;
    *(v15 + 14) = v14;
    _os_log_impl(&dword_1DAF16000, v12, v13, "fillCoordinateMap - %{public}ld of %{public}ld found in asd cache", v15, 0x16u);
    MEMORY[0x1E1281810](v15, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v17 = *(v6 + 16);
  *(v0 + 664) = v17;
  if (v17)
  {
    v18 = *(v0 + 432);
    v19 = *(v0 + 408);
    v20 = *(v0 + 416);
    v21 = *(*(v0 + 400) + 64);
    *(v0 + 792) = v21;
    v22 = *(v19 + 80);
    *(v0 + 796) = v22;
    *(v0 + 672) = 0u;
    *(v0 + 688) = 0u;
    *(v0 + 704) = 0u;
    *(v0 + 720) = 0;
    v23 = *(v0 + 632);
    if (*(v23 + 16))
    {
      v24 = *(v0 + 448);
      v25 = *(v0 + 424);
      sub_1DAF40A84(v23 + ((v22 + 32) & ~v22), v20, &qword_1ECC0E510, &qword_1DB0A2780);
      *(v0 + 728) = *v20;
      v26 = *(v20 + 1);
      *(v0 + 736) = v26;
      (*(v18 + 32))(v24, &v20[v21], v25);
      if (v26)
      {
        [v26 coordinate];
      }

      else
      {
        v27 = 0;
        v28 = 0;
      }

      *(v0 + 752) = v28;
      *(v0 + 744) = v27;
      v45 = *(v0 + 552);

      return MEMORY[0x1EEE6DFA0](sub_1DB01AD74, v45, 0);
    }

    __break(1u);
    goto LABEL_28;
  }

  v29 = *(v0 + 640);
  v30 = *(v0 + 584);
  v31 = *(v0 + 576);

  v32 = sub_1DB09D6B4();
  v33 = swift_allocObject();
  v33[2] = 0;
  v33[3] = v31;
  v33[4] = 0;
  v33[5] = 0;
  v33[6] = v29;
  v33[7] = v30;
  *(v0 + 48) = sub_1DB0222D0;
  *(v0 + 56) = v33;
  *(v0 + 16) = MEMORY[0x1E69E9820];
  *(v0 + 24) = 1107296256;
  *(v0 + 32) = sub_1DAFD2A28;
  *(v0 + 40) = &block_descriptor_13;
  v34 = _Block_copy((v0 + 16));

  AnalyticsSendEventLazy();
  _Block_release(v34);

  sub_1DB09DC04();
  sub_1DB09D464();
  if (qword_1ECC0E040 != -1)
  {
LABEL_28:
    swift_once();
  }

  v66 = v0 + 368;
  v35 = *(v0 + 480);
  v36 = *(v0 + 488);
  v37 = qword_1ECC25B90;
  v38 = *algn_1ECC25B98;
  v39 = byte_1ECC25BA0;
  v40 = qword_1ECC25BA8;
  v41 = byte_1ECC25BB0;
  *(v36 + 32) = "enableTelemetry=YES";
  *(v36 + 40) = 19;
  *(v36 + 48) = 2;
  *v36 = v37;
  *(v36 + 8) = v38;
  *(v36 + 16) = v39;
  *(v36 + 24) = v40;
  v42 = *(v35 + 28);
  v43 = v40;
  sub_1DB09D474();
  v44 = sub_1DB09DC14();
  if (v41 == 1)
  {
    sub_1DB09D454(v44, &dword_1DAF16000, v43, v37, v38, v39, v36 + v42, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(*(v0 + 488), *(v0 + 496));
  v46 = sub_1DB09D494();
  v47 = sub_1DB09DB54();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 134349056;
    swift_beginAccess();
    if ((*v66 & 0xC000000000000001) != 0)
    {

      v49 = sub_1DB09DD44();
    }

    else
    {
      v49 = *(*v66 + 16);
    }

    *(v48 + 4) = v49;
    _os_log_impl(&dword_1DAF16000, v46, v47, "fillCoordinateMap - Attempting to geocode %{public}ld addresses", v48, 0xCu);
    MEMORY[0x1E1281810](v48, -1, -1);
  }

  v50 = *(v0 + 392);

  sub_1DAF3523C(v0 + 64, v0 + 144);
  v51 = *(v0 + 168);
  v52 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 144, v51);
  v53 = *(v51 - 8);
  v54 = swift_task_alloc();
  (*(v53 + 16))(v54, v52, v51);
  v55 = *v54;
  v56 = type metadata accessor for DIPODNHelper();
  *(v0 + 208) = v56;
  *(v0 + 216) = &off_1F56C8200;
  *(v0 + 184) = v55;
  type metadata accessor for GeoCoder.GeocodeCompletionState();
  v57 = swift_allocObject();
  *(v0 + 760) = v57;
  v58 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 184, v56);
  v59 = *(v56 - 8);
  v60 = swift_task_alloc();
  (*(v59 + 16))(v60, v58, v56);
  v61 = *v60;
  *(v0 + 248) = v56;
  *(v0 + 256) = &off_1F56C8200;
  *(v0 + 224) = v61;
  swift_defaultActor_initialize();
  *(v57 + 112) = MEMORY[0x1E69E7CC0];
  *(v57 + 120) = 0;
  sub_1DAF332B8((v0 + 224), v57 + 128);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

  sub_1DB0222F8();
  v62 = swift_task_alloc();
  *(v0 + 768) = v62;
  v62[2] = v66;
  v62[3] = v50;
  v62[4] = v57;
  v63 = swift_task_alloc();
  *(v0 + 776) = v63;
  *v63 = v0;
  v63[1] = sub_1DB01B810;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1DB01A484()
{
  v1 = *(v0 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1DB01A4FC, v1, 0);
}

uint64_t sub_1DB01A4FC(uint64_t a1)
{
  v2 = sub_1DB09D494();
  v3 = sub_1DB09DB64();
  v4 = os_log_type_enabled(v2, v3);
  v5 = *(v1 + 616);
  if (v4)
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DAF16000, v2, v3, "Gecode cache fetch timeout", v6, 2u);
    MEMORY[0x1E1281810](v6, -1, -1);
  }

  v7 = MEMORY[0x1E69E7CC0];
  *(v1 + 632) = MEMORY[0x1E69E7CC0];
  v8 = *(v1 + 560);
  v9 = *(v1 + 464);
  v10 = *(v1 + 424);
  v11 = *(v1 + 432);
  *(v1 + 640) = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  *(v1 + 368) = v8;
  sub_1DB09D134();
  sub_1DB09D0E4();
  v12 = *(v11 + 8);
  *(v1 + 648) = v12;
  *(v1 + 656) = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v12(v9, v10);
  sub_1DB09D134();
  sub_1DB09D0E4();
  v12(v9, v10);

  v13 = sub_1DB09D494();
  v14 = sub_1DB09DB54();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = *(v1 + 576);
    v16 = swift_slowAlloc();
    *v16 = 134349312;
    v17 = *(v7 + 16);

    *(v16 + 4) = v17;

    *(v16 + 12) = 2050;
    *(v16 + 14) = v15;
    _os_log_impl(&dword_1DAF16000, v13, v14, "fillCoordinateMap - %{public}ld of %{public}ld found in asd cache", v16, 0x16u);
    MEMORY[0x1E1281810](v16, -1, -1);
  }

  else
  {
    swift_bridgeObjectRelease_n();
  }

  v18 = *(v7 + 16);
  *(v1 + 664) = v18;
  if (v18)
  {
    v19 = *(v1 + 432);
    v20 = *(v1 + 408);
    v21 = *(v1 + 416);
    v22 = *(*(v1 + 400) + 64);
    *(v1 + 792) = v22;
    v23 = *(v20 + 80);
    *(v1 + 796) = v23;
    *(v1 + 672) = 0u;
    *(v1 + 688) = 0u;
    *(v1 + 704) = 0u;
    *(v1 + 720) = 0;
    v24 = *(v1 + 632);
    if (*(v24 + 16))
    {
      v25 = *(v1 + 448);
      v26 = *(v1 + 424);
      sub_1DAF40A84(v24 + ((v23 + 32) & ~v23), v21, &qword_1ECC0E510, &qword_1DB0A2780);
      *(v1 + 728) = *v21;
      v27 = *(v21 + 1);
      *(v1 + 736) = v27;
      (*(v19 + 32))(v25, &v21[v22], v26);
      if (v27)
      {
        [v27 coordinate];
      }

      else
      {
        v28 = 0;
        v29 = 0;
      }

      *(v1 + 752) = v29;
      *(v1 + 744) = v28;
      v46 = *(v1 + 552);

      return MEMORY[0x1EEE6DFA0](sub_1DB01AD74, v46, 0);
    }

    __break(1u);
    goto LABEL_27;
  }

  v30 = *(v1 + 640);
  v31 = *(v1 + 584);
  v32 = *(v1 + 576);

  v33 = sub_1DB09D6B4();
  v34 = swift_allocObject();
  v34[2] = 0;
  v34[3] = v32;
  v34[4] = 0;
  v34[5] = 0;
  v34[6] = v30;
  v34[7] = v31;
  *(v1 + 48) = sub_1DB0222D0;
  *(v1 + 56) = v34;
  *(v1 + 16) = MEMORY[0x1E69E9820];
  *(v1 + 24) = 1107296256;
  *(v1 + 32) = sub_1DAFD2A28;
  *(v1 + 40) = &block_descriptor_13;
  v35 = _Block_copy((v1 + 16));

  AnalyticsSendEventLazy();
  _Block_release(v35);

  sub_1DB09DC04();
  sub_1DB09D464();
  if (qword_1ECC0E040 != -1)
  {
LABEL_27:
    swift_once();
  }

  v67 = v1 + 368;
  v36 = *(v1 + 480);
  v37 = *(v1 + 488);
  v38 = qword_1ECC25B90;
  v39 = *algn_1ECC25B98;
  v40 = byte_1ECC25BA0;
  v41 = qword_1ECC25BA8;
  v42 = byte_1ECC25BB0;
  *(v37 + 32) = "enableTelemetry=YES";
  *(v37 + 40) = 19;
  *(v37 + 48) = 2;
  *v37 = v38;
  *(v37 + 8) = v39;
  *(v37 + 16) = v40;
  *(v37 + 24) = v41;
  v43 = *(v36 + 28);
  v44 = v41;
  sub_1DB09D474();
  v45 = sub_1DB09DC14();
  if (v42 == 1)
  {
    sub_1DB09D454(v45, &dword_1DAF16000, v44, v38, v39, v40, v37 + v43, "enableTelemetry=YES", 19, 2, v7);
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(*(v1 + 488), *(v1 + 496));
  v47 = sub_1DB09D494();
  v48 = sub_1DB09DB54();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    *v49 = 134349056;
    swift_beginAccess();
    if ((*v67 & 0xC000000000000001) != 0)
    {

      v50 = sub_1DB09DD44();
    }

    else
    {
      v50 = *(*v67 + 16);
    }

    *(v49 + 4) = v50;
    _os_log_impl(&dword_1DAF16000, v47, v48, "fillCoordinateMap - Attempting to geocode %{public}ld addresses", v49, 0xCu);
    MEMORY[0x1E1281810](v49, -1, -1);
  }

  v51 = *(v1 + 392);

  sub_1DAF3523C(v1 + 64, v1 + 144);
  v52 = *(v1 + 168);
  v53 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 144, v52);
  v54 = *(v52 - 8);
  v55 = swift_task_alloc();
  (*(v54 + 16))(v55, v53, v52);
  v56 = *v55;
  v57 = type metadata accessor for DIPODNHelper();
  *(v1 + 208) = v57;
  *(v1 + 216) = &off_1F56C8200;
  *(v1 + 184) = v56;
  type metadata accessor for GeoCoder.GeocodeCompletionState();
  v58 = swift_allocObject();
  *(v1 + 760) = v58;
  v59 = __swift_mutable_project_boxed_opaque_existential_1(v1 + 184, v57);
  v60 = *(v57 - 8);
  v61 = swift_task_alloc();
  (*(v60 + 16))(v61, v59, v57);
  v62 = *v61;
  *(v1 + 248) = v57;
  *(v1 + 256) = &off_1F56C8200;
  *(v1 + 224) = v62;
  swift_defaultActor_initialize();
  *(v58 + 112) = MEMORY[0x1E69E7CC0];
  *(v58 + 120) = 0;
  sub_1DAF332B8((v1 + 224), v58 + 128);
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 184));

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 144));

  sub_1DB0222F8();
  v63 = swift_task_alloc();
  *(v1 + 768) = v63;
  v63[2] = v67;
  v63[3] = v51;
  v63[4] = v58;
  v64 = swift_task_alloc();
  *(v1 + 776) = v64;
  *v64 = v1;
  v64[1] = sub_1DB01B810;

  return MEMORY[0x1EEE6DBF8]();
}

uint64_t sub_1DB01AD74()
{
  v1 = v0[91];
  v2 = v0[69];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v2 + 112);
  v0[47] = v4;
  *(v2 + 112) = 0x8000000000000000;
  v5 = sub_1DAF35620(v1);
  v8 = *(v4 + 16);
  v9 = (v6 & 1) == 0;
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
    __break(1u);
LABEL_16:
    v26 = v5;
    sub_1DAF3D538();
    v5 = v26;
LABEL_8:
    v14 = v0[47];
    v15 = v0[94];
    v16 = v0[93];
    v17 = v0[92];
    if (v1)
    {
      v18 = v14[7] + 24 * v5;
      *v18 = v16;
      *(v18 + 8) = v15;
      *(v18 + 16) = v17 == 0;
    }

    else
    {
      v19 = v0[91];
      v14[(v5 >> 6) + 8] |= 1 << v5;
      *(v14[6] + 8 * v5) = v19;
      v20 = v14[7] + 24 * v5;
      *v20 = v16;
      *(v20 + 8) = v15;
      *(v20 + 16) = v17 == 0;
      v21 = v14[2];
      v10 = __OFADD__(v21, 1);
      v22 = v21 + 1;
      if (v10)
      {
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v5, v6, v7);
      }

      v23 = v0[91];
      v14[2] = v22;
      v24 = v23;
    }

    v25 = v0[49];
    *(v0[69] + 112) = v14;
    swift_endAccess();
    v5 = sub_1DB01AF70;
    v6 = v25;
    v7 = 0;

    return MEMORY[0x1EEE6DFA0](v5, v6, v7);
  }

  LOBYTE(v1) = v6;
  if (*(v4 + 24) >= v11)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

  v12 = v0[91];
  sub_1DAF39E18(v11, isUniquelyReferenced_nonNull_native);
  v5 = sub_1DAF35620(v12);
  if ((v1 & 1) == (v6 & 1))
  {
    goto LABEL_8;
  }

  sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);

  return sub_1DB09E2E4();
}

uint64_t sub_1DB01AF70()
{
  if (*(v0 + 736))
  {
    v1 = (v0 + 472);
  }

  else
  {
    v1 = (v0 + 456);
  }

  (*(*(v0 + 432) + 16))(*(v0 + 440), *v1, *(v0 + 424));
  v2 = sub_1DB09D0D4();
  v3 = sub_1DB09D494();
  v4 = sub_1DB09DB54();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 67240192;
    *(v5 + 4) = v2 & 1;
    _os_log_impl(&dword_1DAF16000, v3, v4, "fillCoordinateMap address needs refresh - %{BOOL,public}d", v5, 8u);
    MEMORY[0x1E1281810](v5, -1, -1);
  }

  v6 = *(v0 + 736);
  v7 = *(v0 + 728);
  if (v2)
  {
    v8 = *(v0 + 696);
    v9 = *(v0 + 648);
    v11 = *(v0 + 440);
    v10 = *(v0 + 448);
    v12 = *(v0 + 424);

    v9(v11, v12);
    v9(v10, v12);
    v13 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
      goto LABEL_37;
    }

    v14 = *(v0 + 712);
    v15 = *(v0 + 704);
    v16 = *(v0 + 680);
    v17 = *(v0 + 672);
    v18 = vdupq_n_s64(v13);
  }

  else
  {
    v19 = *(v0 + 648);
    v21 = *(v0 + 440);
    v20 = *(v0 + 448);
    v22 = *(v0 + 424);
    v23 = sub_1DB0216E8(*(v0 + 728));

    v19(v21, v22);
    v19(v20, v22);
    if (v6)
    {
      v24 = *(v0 + 392);

      v25 = *(v24 + 184);
      v26 = __OFADD__(v25, 1);
      v27 = v25 + 1;
      if (v26)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      v28 = *(v0 + 712);
      *(*(v0 + 392) + 184) = v27;
      v16 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      v15 = *(v0 + 704);
      v18 = *(v0 + 688);
      v14 = v28 + 1;
      v17 = *(v0 + 672);
    }

    else
    {
      v29 = *(v0 + 392);
      v30 = *(v29 + 208);
      v26 = __OFADD__(v30, 1);
      v31 = v30 + 1;
      if (v26)
      {
LABEL_41:
        __break(1u);
        goto LABEL_42;
      }

      v32 = *(v0 + 704);
      *(v29 + 208) = v31;
      v17 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
LABEL_42:
        __break(1u);
        return MEMORY[0x1EEE6DBF8]();
      }

      v14 = *(v0 + 712);
      v18 = *(v0 + 688);
      v15 = v32 + 1;
      v16 = *(v0 + 680);
    }
  }

  v33 = *(v0 + 720) + 1;
  if (v33 == *(v0 + 664))
  {
    v81 = v0 + 368;
    v34 = *(v0 + 640);
    v35 = *(v0 + 584);
    v36 = *(v0 + 576);
    v79 = v18.i64[0];

    v37 = sub_1DB09D6B4();
    v38 = swift_allocObject();
    v38[2] = v79;
    v38[3] = v36;
    v38[4] = v16;
    v38[5] = v17;
    v38[6] = v34;
    v38[7] = v35;
    *(v0 + 48) = sub_1DB0222D0;
    *(v0 + 56) = v38;
    *(v0 + 16) = MEMORY[0x1E69E9820];
    *(v0 + 24) = 1107296256;
    *(v0 + 32) = sub_1DAFD2A28;
    *(v0 + 40) = &block_descriptor_13;
    v39 = _Block_copy((v0 + 16));

    AnalyticsSendEventLazy();
    _Block_release(v39);

    sub_1DB09DC04();
    sub_1DB09D464();
    if (qword_1ECC0E040 == -1)
    {
LABEL_18:
      v40 = *(v0 + 480);
      v41 = *(v0 + 488);
      v42 = qword_1ECC25B90;
      v43 = *algn_1ECC25B98;
      v44 = byte_1ECC25BA0;
      v45 = qword_1ECC25BA8;
      v46 = byte_1ECC25BB0;
      *(v41 + 32) = "enableTelemetry=YES";
      *(v41 + 40) = 19;
      *(v41 + 48) = 2;
      *v41 = v42;
      *(v41 + 8) = v43;
      *(v41 + 16) = v44;
      *(v41 + 24) = v45;
      v47 = *(v40 + 28);
      v48 = v45;
      sub_1DB09D474();
      v49 = sub_1DB09DC14();
      if (v46 == 1)
      {
        sub_1DB09D454(v49, &dword_1DAF16000, v48, v42, v43, v44, v41 + v47, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
      }

      else
      {
        sub_1DB09D464();
      }

      sub_1DAF5F604(*(v0 + 488), *(v0 + 496));
      v59 = sub_1DB09D494();
      v60 = sub_1DB09DB54();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 134349056;
        swift_beginAccess();
        if ((*v81 & 0xC000000000000001) != 0)
        {

          v62 = sub_1DB09DD44();
        }

        else
        {
          v62 = *(*v81 + 16);
        }

        *(v61 + 4) = v62;
        _os_log_impl(&dword_1DAF16000, v59, v60, "fillCoordinateMap - Attempting to geocode %{public}ld addresses", v61, 0xCu);
        MEMORY[0x1E1281810](v61, -1, -1);
      }

      v64 = *(v0 + 392);

      sub_1DAF3523C(v0 + 64, v0 + 144);
      v65 = *(v0 + 168);
      v66 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 144, v65);
      v67 = *(v65 - 8);
      v68 = swift_task_alloc();
      (*(v67 + 16))(v68, v66, v65);
      v69 = *v68;
      v70 = type metadata accessor for DIPODNHelper();
      *(v0 + 208) = v70;
      *(v0 + 216) = &off_1F56C8200;
      *(v0 + 184) = v69;
      type metadata accessor for GeoCoder.GeocodeCompletionState();
      v71 = swift_allocObject();
      *(v0 + 760) = v71;
      v72 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 184, v70);
      v73 = *(v70 - 8);
      v74 = swift_task_alloc();
      (*(v73 + 16))(v74, v72, v70);
      v75 = *v74;
      *(v0 + 248) = v70;
      *(v0 + 256) = &off_1F56C8200;
      *(v0 + 224) = v75;
      swift_defaultActor_initialize();
      *(v71 + 112) = MEMORY[0x1E69E7CC0];
      *(v71 + 120) = 0;
      sub_1DAF332B8((v0 + 224), v71 + 128);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 184));

      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));

      sub_1DB0222F8();
      v76 = swift_task_alloc();
      *(v0 + 768) = v76;
      v76[2] = v81;
      v76[3] = v64;
      v76[4] = v71;
      v77 = swift_task_alloc();
      *(v0 + 776) = v77;
      *v77 = v0;
      v77[1] = sub_1DB01B810;

      return MEMORY[0x1EEE6DBF8]();
    }

LABEL_37:
    swift_once();
    goto LABEL_18;
  }

  *(v0 + 720) = v33;
  *(v0 + 712) = v14;
  *(v0 + 704) = v15;
  *(v0 + 688) = v18;
  *(v0 + 680) = v16;
  *(v0 + 672) = v17;
  v50 = *(v0 + 632);
  if (v33 >= *(v50 + 16))
  {
    __break(1u);
    goto LABEL_39;
  }

  v51 = *(v0 + 792);
  v52 = *(v0 + 448);
  v53 = *(v0 + 424);
  v54 = *(v0 + 432);
  v55 = *(v0 + 416);
  sub_1DAF40A84(v50 + ((*(v0 + 796) + 32) & ~*(v0 + 796)) + *(*(v0 + 408) + 72) * v33, v55, &qword_1ECC0E510, &qword_1DB0A2780);
  *(v0 + 728) = *v55;
  v56 = *(v55 + 1);
  *(v0 + 736) = v56;
  (*(v54 + 32))(v52, &v55[v51], v53);
  if (v56)
  {
    [v56 coordinate];
  }

  else
  {
    v57 = 0;
    v58 = 0;
  }

  *(v0 + 752) = v58;
  *(v0 + 744) = v57;
  v63 = *(v0 + 552);

  return MEMORY[0x1EEE6DFA0](sub_1DB01AD74, v63, 0);
}

uint64_t sub_1DB01B810()
{
  v1 = *(*v0 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1DB01B93C, v1, 0);
}

uint64_t sub_1DB01B93C(uint64_t a1)
{
  sub_1DB09DC04();
  sub_1DB09D464();
  v2 = swift_task_alloc();
  *(v1 + 784) = v2;
  *v2 = v1;
  v2[1] = sub_1DB01B9F8;

  return sub_1DB01ECC4();
}

uint64_t sub_1DB01B9F8()
{
  v1 = *(*v0 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1DB01BB08, v1, 0);
}

uint64_t sub_1DB01BB08()
{
  v1 = v0[81];
  v2 = v0[66];
  v3 = v0[64];
  v4 = v0[62];
  v5 = v0[59];
  v6 = v0[57];
  v7 = v0[53];

  v1(v6, v7);
  v1(v5, v7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);
  sub_1DAF60868(v4);
  sub_1DAF60868(v3);
  sub_1DAF60868(v2);

  v8 = v0[68];
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DAF60868(v8);

  v9 = v0[1];

  return v9();
}

uint64_t sub_1DB01BCB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1DB01BCD8, 0, 0);
}

uint64_t sub_1DB01BCD8()
{
  v1 = sub_1DAFF75F0(v0[3]);
  v0[4] = v1;
  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_1DB01BD8C;

  return sub_1DAF60B00(v1);
}

uint64_t sub_1DB01BD8C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1DB01BF00, 0, 0);
  }
}

id sub_1DB01BF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB80, &unk_1DB0B26F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0AB780;
  strcpy((inited + 32), "expiredCount");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x80000001DB0CA550;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 80) = 0x6F4C646568636163;
  *(inited + 88) = 0xEF736E6F69746163;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 104) = 0x6F4E646568636163;
  *(inited + 112) = 0xEF73646E756F4674;
  result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  *(inited + 120) = result;
  *(inited + 128) = 0x6E6F697461727564;
  *(inited + 136) = 0xE800000000000000;
  if (a5 < a6)
  {
    __break(1u);
  }

  else
  {
    result = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *(inited + 144) = result;
    strcpy((inited + 152), "isAllResolved");
    *(inited + 166) = -4864;
    if (!__OFADD__(a3, a4))
    {
      v14 = a3 + a4;
      *(inited + 168) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
      v15 = sub_1DAF3F518(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB88, &unk_1DB0AB610);
      swift_arrayDestroy();
      return v15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB01C18C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[21] = a4;
  v5[22] = a5;
  v5[19] = a2;
  v5[20] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0ECE0, &unk_1DB0A21D0);
  v5[23] = swift_task_alloc();
  v5[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB01C23C, a4, 0);
}

void *sub_1DB01C23C()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {

    sub_1DB09DD34();
    sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
    sub_1DAFF7D64();
    result = sub_1DB09DB04();
    v2 = *(v0 + 16);
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v4 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);

    v6 = 0;
  }

  v11 = (v5 + 64) >> 6;
  v35 = v4;
  v36 = v2;
  v34 = v11;
  while (v2 < 0)
  {
    v19 = sub_1DB09DD64();
    if (!v19 || (*(v0 + 144) = v19, sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60), swift_dynamicCast(), v18 = *(v0 + 136), v16 = v6, v17 = v7, !v18))
    {
LABEL_27:
      sub_1DAF333A4(v2);

      v33 = *(v0 + 8);

      return v33();
    }

LABEL_19:
    v40 = v17;
    v20 = *(v0 + 192);
    v38 = *(v0 + 184);
    v21 = *(v0 + 168);
    v22 = *(v0 + 176);
    v37 = v18;
    v23 = v18;
    v24 = sub_1DB09DA24();
    v25 = *(v24 - 8);
    (*(v25 + 56))(v20, 1, 1, v24);
    v26 = swift_allocObject();
    v26[2] = 0;
    v26[3] = 0;
    v26[4] = v23;
    v26[5] = v21;
    v26[6] = v22;
    sub_1DAF40A84(v20, v38, &qword_1ECC0ECE0, &unk_1DB0A21D0);
    LODWORD(v23) = (*(v25 + 48))(v38, 1, v24);
    v39 = v37;

    v27 = *(v0 + 184);
    if (v23 == 1)
    {
      sub_1DAF40AEC(*(v0 + 184), &qword_1ECC0ECE0, &unk_1DB0A21D0);
    }

    else
    {
      sub_1DB09DA14();
      (*(v25 + 8))(v27, v24);
    }

    if (v26[2])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v28 = sub_1DB09D984();
      v30 = v29;
      swift_unknownObjectRelease();
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    v2 = v36;
    v31 = **(v0 + 152);
    v32 = swift_allocObject();
    *(v32 + 16) = &unk_1DB0B26C0;
    *(v32 + 24) = v26;

    if (v30 | v28)
    {
      v12 = v0 + 56;
      *(v0 + 56) = 0;
      *(v0 + 64) = 0;
      *(v0 + 72) = v28;
      *(v0 + 80) = v30;
    }

    else
    {
      v12 = 0;
    }

    v11 = v34;
    v4 = v35;
    v13 = *(v0 + 192);
    *(v0 + 112) = 1;
    *(v0 + 120) = v12;
    *(v0 + 128) = v31;
    swift_task_create();

    result = sub_1DAF40AEC(v13, &qword_1ECC0ECE0, &unk_1DB0A21D0);
    v6 = v16;
    v7 = v40;
  }

  v14 = v6;
  v15 = v7;
  v16 = v6;
  if (v7)
  {
LABEL_15:
    v17 = (v15 - 1) & v15;
    v18 = *(*(v2 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v15)))));
    if (!v18)
    {
      goto LABEL_27;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v16 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v16 >= v11)
    {
      goto LABEL_27;
    }

    v15 = *(v4 + 8 * v16);
    ++v14;
    if (v15)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB01C6F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[55] = a5;
  v6[56] = a6;
  v6[54] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4C8, &qword_1DB0B26D8);
  v6[57] = v7;
  v6[58] = *(v7 - 8);
  v6[59] = swift_task_alloc();
  v6[60] = type metadata accessor for ODISignpost(0);
  v6[61] = swift_task_alloc();
  v6[62] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB01C804, 0, 0);
}

uint64_t sub_1DB01C804()
{
  if (qword_1ECC0E048 != -1)
  {
    swift_once();
  }

  v1 = v0[60];
  v2 = v0[61];
  v4 = qword_1ECC25BB8;
  v3 = unk_1ECC25BC0;
  v5 = byte_1ECC25BC8;
  v6 = qword_1ECC25BD0;
  v7 = byte_1ECC25BD8;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v0[61], v0[62]);
  v0[63] = [objc_allocWithZone(MEMORY[0x1E695FBC8]) init];
  if (qword_1EE301DC0 != -1)
  {
    swift_once();
  }

  v12 = v0[54];
  v11 = v0[55];
  v13 = sub_1DB09D4B4();
  v14 = __swift_project_value_buffer(v13, qword_1EE30A128);
  v0[64] = v14;
  v15 = v12;
  sub_1DB016824(v14, v15);

  return MEMORY[0x1EEE6DFA0](sub_1DB01CA08, v11, 0);
}

uint64_t sub_1DB01CA08()
{
  v1 = *(v0 + 440);
  v2 = swift_beginAccess();
  v5 = *(v1 + 200);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 200) = v7;
    v2 = sub_1DB01CA94;
    v3 = 0;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1DB01CA94(uint64_t a1)
{
  v2 = sub_1DB09D494();
  v3 = sub_1DB09DB54();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1DAF16000, v2, v3, "Requesting geocode", v4, 2u);
    MEMORY[0x1E1281810](v4, -1, -1);
  }

  v5 = v1[58];
  v6 = v1[59];
  v7 = v1[57];
  v10 = v1[54];
  v11 = v1[63];

  v1[65] = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  v1[2] = v1;
  v1[7] = v1 + 51;
  v1[3] = sub_1DB01CCDC;
  swift_continuation_init();
  v1[17] = v7;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v1 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4D0, &qword_1DB0B26E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
  sub_1DB09D994();
  (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
  v1[10] = MEMORY[0x1E69E9820];
  v1[11] = 1107296256;
  v1[12] = sub_1DB01E47C;
  v1[13] = &block_descriptor_79;
  [v11 geocodePostalAddress:v10 completionHandler:v1 + 10];
  (*(v5 + 8))(boxed_opaque_existential_0, v7);

  return MEMORY[0x1EEE6DEC8](v1 + 2);
}

uint64_t sub_1DB01CCDC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 528) = v1;
  if (v1)
  {
    v2 = sub_1DB01D830;
  }

  else
  {
    v2 = sub_1DB01CDEC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB01CDEC()
{
  v43 = v1;
  v5 = *(v1 + 520);
  v6 = *(v1 + 408);
  v7 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (v7 < v5)
  {
    __break(1u);
    goto LABEL_26;
  }

  *(v1 + 536) = v7 - v5;

  v5 = sub_1DB09D494();
  v0 = sub_1DB09DB54();

  v4 = v6 >> 62;
  if (!os_log_type_enabled(v5, v0))
  {
    goto LABEL_13;
  }

  v2 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v42 = v3;
  *v2 = 136315138;
  if (v4)
  {
    goto LABEL_35;
  }

  v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_11;
  }

LABEL_5:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x1E1280530](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v10, v8, v9);
    }

    v11 = *(v6 + 32);
  }

  v12 = v11;
  v13 = [v11 location];

  if (v13)
  {
    v14 = [v13 description];

    v15 = sub_1DB09D6C4();
    v17 = v16;

    v10 = v15;
    goto LABEL_12;
  }

  v10 = 0;
  while (1)
  {
LABEL_11:
    v17 = 0xE000000000000000;
LABEL_12:
    v18 = sub_1DB015E84(v10, v17, &v42);

    *(v2 + 4) = v18;
    _os_log_impl(&dword_1DAF16000, v5, v0, "Geocode Result %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1E1281810](v3, -1, -1);
    MEMORY[0x1E1281810](v2, -1, -1);
LABEL_13:

    if (v4)
    {
LABEL_26:
      if (!sub_1DB09DD44())
      {
LABEL_27:

        goto LABEL_28;
      }
    }

    else if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    if ((v6 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v19 = *(v6 + 32);
      goto LABEL_18;
    }

    __break(1u);
LABEL_35:
    v10 = sub_1DB09DD44();
    if (v10)
    {
      goto LABEL_5;
    }
  }

  v19 = MEMORY[0x1E1280530](0, v6);
LABEL_18:
  v20 = v19;
  *(v1 + 544) = v19;

  v21 = [v20 location];
  *(v1 + 552) = v21;
  if (v21)
  {
    v22 = sub_1DB09D494();
    v23 = sub_1DB09DB54();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_1DAF16000, v22, v23, "fillCoordinateMap - geo coded address", v24, 2u);
      MEMORY[0x1E1281810](v24, -1, -1);
    }

    v25 = *(v1 + 440);

    v10 = sub_1DB01D2AC;
    v8 = v25;
    v9 = 0;

    return MEMORY[0x1EEE6DFA0](v10, v8, v9);
  }

LABEL_28:
  v26 = sub_1DB09D494();
  v27 = sub_1DB09DB64();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&dword_1DAF16000, v26, v27, "fillCoordinateMap - no geo coded address found but no error", v28, 2u);
    MEMORY[0x1E1281810](v28, -1, -1);
  }

  v29 = *(v1 + 496);
  v30 = *(v1 + 480);

  v31 = sub_1DB09DC04();
  v32 = *(v29 + 8);
  v40 = *v29;
  v41 = *(v29 + 24);
  v33 = *(v30 + 28);
  v34 = *(v29 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v35 = swift_allocObject();
  *(v35 + 16) = xmmword_1DB0A04E0;
  v36 = MEMORY[0x1E69E63A8];
  *(v35 + 56) = MEMORY[0x1E69E6370];
  *(v35 + 64) = v36;
  v37 = *(v1 + 496);
  *(v35 + 32) = 0;
  sub_1DB09D454(v31, &dword_1DAF16000, v41, v40, v32, v34, v29 + v33, "r=%{public}d", 12, 2, v35);

  sub_1DAF60868(v37);

  v38 = *(v1 + 8);

  return v38();
}

uint64_t sub_1DB01D2AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 440);
  v5 = *(v4 + 192);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  else
  {
    *(v4 + 192) = v7;
    return MEMORY[0x1EEE6DFA0](sub_1DB01D2E0, 0, 0);
  }
}

uint64_t sub_1DB01D2E0()
{
  if (qword_1ECC0E110 != -1)
  {
    swift_once();
  }

  v1 = v0[69];
  v2 = qword_1ECC0F4A8;
  v0[70] = qword_1ECC0F4A8;
  [v1 coordinate];
  v0[71] = v3;
  v0[72] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1DB01D398, v2, 0);
}

uint64_t sub_1DB01D398()
{
  v1 = v0[72];
  v2 = v0[71];
  v3 = v0[70];
  v4 = v0[69];
  v5 = v0[54];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + 112);
  *(v3 + 112) = 0x8000000000000000;
  sub_1DAF3BCC0(v2, v1, 0, v5, isUniquelyReferenced_nonNull_native);
  *(v3 + 112) = v10;
  swift_endAccess();
  v7 = swift_task_alloc();
  v0[73] = v7;
  *v7 = v0;
  v7[1] = sub_1DB01D4B8;
  v8 = v0[54];

  return sub_1DB01F1B0(v8, v4);
}

uint64_t sub_1DB01D4B8(char a1)
{
  v2 = *(*v1 + 552);
  *(*v1 + 624) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB01D5D4, 0, 0);
}

uint64_t sub_1DB01D5D4()
{
  v1 = *(v0 + 624);
  v2 = v0[69];
  v3 = v0[68];
  v4 = v0[63];
  v5 = v0[67] / 1000000000.0;
  v6 = sub_1DB09D6B4();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v5;
  v0[34] = sub_1DB022810;
  v0[35] = v7;
  v0[30] = MEMORY[0x1E69E9820];
  v0[31] = 1107296256;
  v0[32] = sub_1DAFD2A28;
  v0[33] = &block_descriptor_99;
  v8 = _Block_copy(v0 + 30);

  AnalyticsSendEventLazy();

  _Block_release(v8);
  v9 = v0[62];
  v10 = v0[60];
  LOBYTE(v3) = v0[66] == 0;
  v11 = sub_1DB09DC04();
  v21 = *v9;
  v22 = *(v9 + 24);
  v20 = *(v9 + 8);
  v12 = *(v10 + 28);
  v13 = *(v9 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB0A04E0;
  v15 = MEMORY[0x1E69E63A8];
  *(v14 + 56) = MEMORY[0x1E69E6370];
  *(v14 + 64) = v15;
  v16 = v0[62];
  *(v14 + 32) = v3;
  v19 = 2;
  sub_1DB09D454(v11, &dword_1DAF16000, v22, v21, v20, v13, v9 + v12, "r=%{public}d", 12, v19, v14);

  sub_1DAF60868(v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DB01D830(uint64_t a1)
{
  v45 = v1;
  v2 = *(v1 + 528);
  swift_willThrow();
  v3 = v2;
  v4 = sub_1DB09D494();
  v5 = sub_1DB09DB54();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v44[0] = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DB09E324();
    v10 = sub_1DB015E84(v8, v9, v44);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DAF16000, v4, v5, "Geocode error: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E1281810](v7, -1, -1);
    MEMORY[0x1E1281810](v6, -1, -1);
  }

  v11 = *(v1 + 520);
  v12 = clock_gettime_nsec_np(_CLOCK_MONOTONIC_RAW);
  if (v12 < v11)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v12, v13, v14);
  }

  *(v1 + 592) = v12 - v11;
  v15 = sub_1DB09CE64();
  *(v1 + 600) = v15;
  v16 = [v15 domain];
  v17 = sub_1DB09D6C4();
  v19 = v18;

  if (v17 == sub_1DB09D6C4() && v19 == v20)
  {
  }

  else
  {
    v22 = sub_1DB09E254();

    if ((v22 & 1) == 0)
    {
      goto LABEL_15;
    }
  }

  if ([v15 code] == 8)
  {
    v23 = sub_1DB09D494();
    v24 = sub_1DB09DB54();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1DAF16000, v23, v24, "fillCoordinateMap - address not found - caching as not found", v25, 2u);
      MEMORY[0x1E1281810](v25, -1, -1);
    }

    v26 = *(v1 + 440);

    v12 = sub_1DB01DCC4;
    v13 = v26;
    goto LABEL_20;
  }

LABEL_15:
  v27 = *(v1 + 432);
  v28 = sub_1DB09D494();
  v29 = sub_1DB09DB64();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = *(v1 + 432);
    v31 = swift_slowAlloc();
    v32 = swift_slowAlloc();
    *v31 = 138477827;
    *(v31 + 4) = v30;
    *v32 = v30;
    v33 = v30;
    _os_log_impl(&dword_1DAF16000, v28, v29, "Ignoring error occurred in geocoding address: %{private}@", v31, 0xCu);
    sub_1DAF40AEC(v32, &qword_1ECC0F4D8, &qword_1DB0B26E8);
    MEMORY[0x1E1281810](v32, -1, -1);
    MEMORY[0x1E1281810](v31, -1, -1);
  }

  v34 = *(v1 + 528);

  v35 = v34;
  v36 = sub_1DB09D494();
  v37 = sub_1DB09DB64();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v44[0] = v39;
    *v38 = 136315138;
    swift_getErrorValue();
    v40 = sub_1DB09E324();
    v42 = sub_1DB015E84(v40, v41, v44);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1DAF16000, v36, v37, "    ignored : %s", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    MEMORY[0x1E1281810](v39, -1, -1);
    MEMORY[0x1E1281810](v38, -1, -1);
  }

  v13 = *(v1 + 440);
  v12 = sub_1DB01E1F4;
LABEL_20:
  v14 = 0;

  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1DB01DCC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 440);
  v5 = *(v4 + 216);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  else
  {
    *(v4 + 216) = v7;
    return MEMORY[0x1EEE6DFA0](sub_1DB01DCF8, 0, 0);
  }
}

uint64_t sub_1DB01DCF8()
{
  if (qword_1ECC0E110 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECC0F4A8;
  *(v0 + 608) = qword_1ECC0F4A8;

  return MEMORY[0x1EEE6DFA0](sub_1DB01DD90, v1, 0);
}

uint64_t sub_1DB01DD90()
{
  v1 = v0[76];
  v2 = v0[54];
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + 112);
  *(v1 + 112) = 0x8000000000000000;
  sub_1DAF3BCC0(0, 0, 1, v2, isUniquelyReferenced_nonNull_native);
  *(v1 + 112) = v7;
  swift_endAccess();
  v4 = swift_task_alloc();
  v0[77] = v4;
  *v4 = v0;
  v4[1] = sub_1DB01DE94;
  v5 = v0[54];

  return sub_1DB01F1B0(v5, 0);
}

uint64_t sub_1DB01DE94(char a1)
{
  *(*v1 + 625) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1DB01DF94, 0, 0);
}

uint64_t sub_1DB01DF94()
{
  v1 = *(v0 + 625);
  v2 = v0[75];
  v3 = v0[66];
  v4 = v0[63];
  v5 = v0[74] / 1000000000.0;
  v6 = sub_1DB09D6B4();
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = v5;
  v0[28] = sub_1DB0227EC;
  v0[29] = v7;
  v0[24] = MEMORY[0x1E69E9820];
  v0[25] = 1107296256;
  v0[26] = sub_1DAFD2A28;
  v0[27] = &block_descriptor_92;
  v8 = _Block_copy(v0 + 24);

  AnalyticsSendEventLazy();

  _Block_release(v8);
  v9 = v0[62];
  v10 = v0[60];
  LOBYTE(v8) = v0[66] == 0;
  v11 = sub_1DB09DC04();
  v21 = *v9;
  v22 = *(v9 + 24);
  v20 = *(v9 + 8);
  v12 = *(v10 + 28);
  v13 = *(v9 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DB0A04E0;
  v15 = MEMORY[0x1E69E63A8];
  *(v14 + 56) = MEMORY[0x1E69E6370];
  *(v14 + 64) = v15;
  v16 = v0[62];
  *(v14 + 32) = v8;
  v19 = 2;
  sub_1DB09D454(v11, &dword_1DAF16000, v22, v21, v20, v13, v9 + v12, "r=%{public}d", 12, v19, v14);

  sub_1DAF60868(v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1DB01E1F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 440);
  v5 = *(v4 + 224);
  v6 = __OFADD__(v5, 1);
  v7 = v5 + 1;
  if (v6)
  {
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  else
  {
    *(v4 + 224) = v7;
    return MEMORY[0x1EEE6DFA0](sub_1DB01E228, 0, 0);
  }
}

uint64_t sub_1DB01E228()
{
  v1 = v0[75];
  v2 = v0[66];
  v3 = v0[62];
  v4 = v0[63];
  v5 = v0[60];
  v6 = v0[74] / 1000000000.0;
  v7 = sub_1DB09D6B4();
  v8 = swift_allocObject();
  *(v8 + 16) = v2;
  *(v8 + 24) = v6;
  v0[22] = sub_1DB0227E0;
  v0[23] = v8;
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1DAFD2A28;
  v0[21] = &block_descriptor_85;
  v9 = _Block_copy(v0 + 18);
  v10 = v2;

  AnalyticsSendEventLazy();
  _Block_release(v9);

  v11 = sub_1DB09DC04();
  v12 = *(v3 + 8);
  v21 = *v3;
  v22 = *(v3 + 24);
  v13 = *(v5 + 28);
  v14 = *(v3 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EEE0, &qword_1DB0A21E0);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1DB0A04E0;
  v16 = MEMORY[0x1E69E63A8];
  *(v15 + 56) = MEMORY[0x1E69E6370];
  *(v15 + 64) = v16;
  v17 = v0[62];
  *(v15 + 32) = 0;
  v20 = 2;
  sub_1DB09D454(v11, &dword_1DAF16000, v22, v21, v12, v14, v3 + v13, "r=%{public}d", 12, v20, v15);

  sub_1DAF60868(v17);

  v18 = v0[1];

  return v18();
}

void sub_1DB01E47C(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4C8, &qword_1DB0B26D8);
    sub_1DB09D9A4();
  }

  else
  {
    sub_1DAF4062C(0, &qword_1ECC0F4E0, 0x1E695FC20);
    sub_1DB09D934();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4C8, &qword_1DB0B26D8);
    sub_1DB09D9B4();
  }
}

unint64_t sub_1DB01E544(double a1)
{
  v2 = sub_1DB09CE64();
  v3 = [v2 code];
  v4 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB80, &unk_1DB0B26F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A0500;
  *(inited + 32) = 0x646F43726F727265;
  *(inited + 40) = 0xE900000000000065;
  *(inited + 48) = v4;
  *(inited + 56) = 0x6E6F697461727564;
  *(inited + 64) = 0xE800000000000000;
  v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v7 = v4;
  *(inited + 72) = [v6 initWithDouble_];
  v8 = sub_1DAF3F518(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB88, &unk_1DB0AB610);
  swift_arrayDestroy();

  return v8;
}

unint64_t sub_1DB01E694(char a1, char a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB80, &unk_1DB0B26F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DB0A5000;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x80000001DB0CA530;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 56) = 0x656D69546E4F7369;
  *(inited + 64) = 0xE800000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 80) = 0x6E6F697461727564;
  *(inited + 88) = 0xE800000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v7 = sub_1DAF3F518(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB88, &unk_1DB0AB610);
  swift_arrayDestroy();
  return v7;
}

uint64_t sub_1DB01E7EC(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for ODISignpost(0);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB01E88C, v1, 0);
}

uint64_t sub_1DB01E88C()
{
  if (qword_1ECC0E050 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[8];
  v4 = qword_1ECC25BE0;
  v3 = *algn_1ECC25BE8;
  v5 = byte_1ECC25BF0;
  v6 = qword_1ECC25BF8;
  v7 = byte_1ECC25C00;
  *(v2 + 32) = "enableTelemetry=YES";
  *(v2 + 40) = 19;
  *(v2 + 48) = 2;
  *v2 = v4;
  *(v2 + 8) = v3;
  *(v2 + 16) = v5;
  *(v2 + 24) = v6;
  v8 = *(v1 + 28);
  v9 = v6;
  sub_1DB09D474();
  v10 = sub_1DB09DC14();
  if (v7 == 1)
  {
    sub_1DB09D454(v10, &dword_1DAF16000, v9, v4, v3, v5, v2 + v8, "enableTelemetry=YES", 19, 2, MEMORY[0x1E69E7CC0]);
  }

  else
  {
    sub_1DB09D464();
  }

  sub_1DAF5F604(v0[8], v0[9]);
  if (qword_1ECC0E110 != -1)
  {
    swift_once();
  }

  v11 = qword_1ECC0F4A8;
  v0[10] = qword_1ECC0F4A8;

  return MEMORY[0x1EEE6DFA0](sub_1DB01EA44, v11, 0);
}

uint64_t sub_1DB01EA44()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 112);
  if (*(v2 + 16))
  {
    v3 = *(v0 + 40);

    v4 = sub_1DAF35620(v3);
    v5 = *(v0 + 48);
    if (v6)
    {
      v7 = *(v2 + 56) + 24 * v4;
      *(v0 + 88) = *v7;
      *(v0 + 96) = *(v7 + 8);
      *(v0 + 104) = *(v7 + 16);

      v8 = sub_1DB01EBF4;
    }

    else
    {

      v8 = sub_1DB022848;
    }

    v10 = v8;
    v9 = v5;
  }

  else
  {
    v9 = *(v0 + 48);
    v10 = sub_1DB01EB44;
  }

  return MEMORY[0x1EEE6DFA0](v10, v9, 0);
}

uint64_t sub_1DB01EB44(uint64_t a1)
{
  v2 = *(v1 + 72);
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DAF60868(v2);

  v3 = *(v1 + 8);

  return v3(0, 0, 1);
}

uint64_t sub_1DB01EBF4(uint64_t a1)
{
  v2 = *(v1 + 104);
  if (v2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v3 = *(v1 + 88);
    v4 = *(v1 + 96);
  }

  v5 = *(v1 + 72);
  sub_1DB09DC04();
  sub_1DB09D464();
  sub_1DAF60868(v5);

  v6 = *(v1 + 8);

  return v6(v3, v4, v2);
}

uint64_t sub_1DB01ECE4()
{
  v1 = v0[9];
  *(v1 + 120) = 1;
  swift_beginAccess();
  v2 = *(*(v1 + 112) + 16);
  if (v2)
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v3 = sub_1DB09D4B4();
    v0[10] = __swift_project_value_buffer(v3, qword_1EE30A128);
    v4 = sub_1DB09D494();
    v5 = sub_1DB09DB54();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 134349056;
      *(v6 + 4) = v2;
      _os_log_impl(&dword_1DAF16000, v4, v5, "fillCoordinateMap - %{public}ld new/updated addresses to store to cache", v6, 0xCu);
      MEMORY[0x1E1281810](v6, -1, -1);
    }

    v7 = v0[9];

    v8 = *(v1 + 112);
    v0[11] = v8;
    __swift_project_boxed_opaque_existential_1((v7 + 128), *(v7 + 152));

    v9 = swift_task_alloc();
    v0[12] = v9;
    *v9 = v0;
    v9[1] = sub_1DB01EED4;

    return sub_1DAF510D4(v8);
  }

  else
  {
    v11 = v0[1];

    return v11();
  }
}

uint64_t sub_1DB01EED4()
{
  v2 = *v1;
  v2[13] = v0;

  if (v0)
  {
    v3 = v2[9];

    return MEMORY[0x1EEE6DFA0](sub_1DB01F030, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1DB01F030()
{
  v15 = v0;
  v1 = *(v0 + 104);
  v2 = v1;
  v3 = sub_1DB09D494();
  v4 = sub_1DB09DB64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 104);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DB09E324();
    v10 = sub_1DB015E84(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DAF16000, v3, v4, "Error thrown trying to cache geocodes to asd: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E1281810](v7, -1, -1);
    MEMORY[0x1E1281810](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 104);
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1DB01F1B0(uint64_t a1, uint64_t a2)
{
  v3[16] = a2;
  v3[17] = v2;
  v3[15] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB01F1D4, v2, 0);
}

uint64_t sub_1DB01F1D4()
{
  v35 = v0;
  v1 = *(v0 + 136);
  v2 = *(v1 + 120);
  *(v0 + 176) = v2;
  if (v2 == 1)
  {
    if (qword_1EE301DC0 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 128);
    v4 = sub_1DB09D4B4();
    *(v0 + 144) = __swift_project_value_buffer(v4, qword_1EE30A128);
    v5 = v3;
    v6 = sub_1DB09D494();
    v7 = sub_1DB09DB54();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = *(v0 + 128);
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136315138;
      if (v8)
      {
        v11 = 0x746C75736572;
      }

      else
      {
        v11 = 0x6E756F6620746F6ELL;
      }

      if (v8)
      {
        v12 = 0xE600000000000000;
      }

      else
      {
        v12 = 0xE900000000000064;
      }

      v13 = sub_1DB015E84(v11, v12, &v34);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1DAF16000, v6, v7, "Send late geocode %s to asd cache", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1E1281810](v10, -1, -1);
      MEMORY[0x1E1281810](v9, -1, -1);
    }

    v14 = *(v0 + 128);
    v15 = *(v0 + 120);
    __swift_project_boxed_opaque_existential_1((*(v0 + 136) + 128), *(*(v0 + 136) + 152));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6E0, &unk_1DB0A45F0);
    inited = swift_initStackObject();
    *(v0 + 152) = inited;
    *(inited + 16) = xmmword_1DB0A04E0;
    *(inited + 32) = v15;
    *(inited + 40) = v14;
    v17 = v5;
    v18 = v15;
    v19 = swift_task_alloc();
    *(v0 + 160) = v19;
    *v19 = v0;
    v19[1] = sub_1DB01F520;

    return sub_1DAF510D4(inited);
  }

  else
  {
    v22 = *(v0 + 120);
    v21 = *(v0 + 128);
    swift_beginAccess();
    v23 = *(v1 + 112);
    v24 = v21;
    v25 = v22;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v1 + 112) = v23;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v23 = sub_1DAF73B38(0, v23[2] + 1, 1, v23);
      *(v1 + 112) = v23;
    }

    v28 = v23[2];
    v27 = v23[3];
    if (v28 >= v27 >> 1)
    {
      v23 = sub_1DAF73B38((v27 > 1), v28 + 1, 1, v23);
    }

    v30 = *(v0 + 120);
    v29 = *(v0 + 128);
    v23[2] = v28 + 1;
    v31 = &v23[2 * v28];
    v31[4] = v30;
    v31[5] = v29;
    *(v1 + 112) = v23;
    swift_endAccess();
    v32 = *(v0 + 8);
    v33 = *(v0 + 176);

    return v32(v33);
  }
}

uint64_t sub_1DB01F520()
{
  v2 = *v1;
  v3 = *(*v1 + 152);
  v4 = *v1;
  *(*v1 + 168) = v0;

  swift_setDeallocating();
  sub_1DAF40AEC(v3 + 32, &qword_1ECC0E6E8, &unk_1DB0B2670);
  if (v0)
  {
    v5 = *(v2 + 136);

    return MEMORY[0x1EEE6DFA0](sub_1DB01F6A0, v5, 0);
  }

  else
  {
    v6 = *(v4 + 8);
    v7 = *(v2 + 176);

    return v6(v7);
  }
}

uint64_t sub_1DB01F6A0()
{
  v16 = v0;
  v1 = *(v0 + 168);
  v2 = v1;
  v3 = sub_1DB09D494();
  v4 = sub_1DB09DB64();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 168);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v15 = v7;
    *v6 = 136315138;
    swift_getErrorValue();
    v8 = sub_1DB09E324();
    v10 = sub_1DB015E84(v8, v9, &v15);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1DAF16000, v3, v4, "Error storing result to geocode cache: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1E1281810](v7, -1, -1);
    MEMORY[0x1E1281810](v6, -1, -1);
  }

  else
  {
    v11 = *(v0 + 168);
  }

  v12 = *(v0 + 8);
  v13 = *(v0 + 176);

  return v12(v13);
}

uint64_t sub_1DB01F824()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 128));
  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

uint64_t GeoCoder.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GeoCoder.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));

  swift_defaultActor_destroy();

  return swift_defaultActor_deallocate();
}

void sub_1DB01F8E0(uint64_t a1, char a2, void *a3)
{
  v43 = *(a1 + 16);
  if (!v43)
  {
    goto LABEL_23;
  }

  v6 = *(a1 + 40);
  v5 = *(a1 + 32);
  v7 = *a3;
  v8 = sub_1DAF35670(v5);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];
  v16 = v6;
  if (v15 >= v12)
  {
    if (a2)
    {
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_1DAF3D7FC();
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();

    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0ECF0, &unk_1DB0A1310);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

  sub_1DAF3A328(v12, a2 & 1);
  v17 = sub_1DAF35670(v5);
  if ((v14 & 1) != (v18 & 1))
  {
LABEL_28:
    sub_1DB09E2E4();
    __break(1u);
LABEL_29:
    sub_1DB09DE44();
    MEMORY[0x1E127FE90](0xD00000000000001BLL, 0x80000001DB0CA620);
    sub_1DB09DF94();
    MEMORY[0x1E127FE90](39, 0xE100000000000000);
    sub_1DB09DFA4();
    __break(1u);
    return;
  }

  v13 = v17;
  if (v14)
  {
    goto LABEL_9;
  }

LABEL_12:
  v21 = *a3;
  *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
  *(v21[6] + v13) = v5;
  *(v21[7] + 8 * v13) = v16;
  v22 = v21[2];
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21[2] = v24;
  if (v43 != 1)
  {
    v25 = (a1 + 56);
    v26 = 1;
    while (v26 < *(a1 + 16))
    {
      v28 = *v25;
      v27 = *(v25 - 8);
      v29 = *a3;
      v30 = sub_1DAF35670(v27);
      v32 = v29[2];
      v33 = (v31 & 1) == 0;
      v34 = v32 + v33;
      if (__OFADD__(v32, v33))
      {
        goto LABEL_25;
      }

      v35 = v30;
      v36 = v31;
      v37 = v29[3];
      v16 = v28;
      if (v37 < v34)
      {
        sub_1DAF3A328(v34, 1);
        v38 = sub_1DAF35670(v27);
        if ((v36 & 1) != (v39 & 1))
        {
          goto LABEL_28;
        }

        v35 = v38;
      }

      if (v36)
      {
        goto LABEL_9;
      }

      v40 = *a3;
      *(*a3 + 8 * (v35 >> 6) + 64) |= 1 << v35;
      *(v40[6] + v35) = v27;
      *(v40[7] + 8 * v35) = v16;
      v41 = v40[2];
      v23 = __OFADD__(v41, 1);
      v42 = v41 + 1;
      if (v23)
      {
        goto LABEL_26;
      }

      ++v26;
      v40[2] = v42;
      v25 += 2;
      if (v43 == v26)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_27;
  }

LABEL_23:
}

uint64_t sub_1DB01FC5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4E8, &unk_1DB0B2700);
    v2 = sub_1DB09DDE4();
    v15 = v2;
    sub_1DB09DD34();
    if (sub_1DB09DD64())
    {
      sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1DB02030C(v9 + 1);
        }

        v2 = v15;
        result = sub_1DB09DC24();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1DB09DD64());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1DB01FE4C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4F8, &unk_1DB0B2720);
  result = sub_1DB09DDD4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1DB09E3A4();
      sub_1DB09D794();
      result = sub_1DB09E3E4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB0200AC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F500, &qword_1DB0BB1B0);
  result = sub_1DB09DDD4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1DB09E3A4();
      sub_1DB09D044();
      result = sub_1DB09E3E4();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB02030C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4E8, &unk_1DB0B2700);
  result = sub_1DB09DDD4();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1DB09DC24();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1DB02055C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1DB09DDD4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + (v16 | (v8 << 6)));
      sub_1DB09E3A4();
      MEMORY[0x1E1280A80](v19);
      result = sub_1DB09E3E4();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v19;
      ++*(v7 + 16);
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

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t sub_1DB0207A4(uint64_t a1, uint64_t a2)
{
  sub_1DB09DC24();
  result = sub_1DB09DD24();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void *sub_1DB020828()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4F8, &unk_1DB0B2720);
  v2 = *v0;
  v3 = sub_1DB09DDC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

void *sub_1DB020984()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F500, &qword_1DB0BB1B0);
  v2 = *v0;
  v3 = sub_1DB09DDC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_1DAF40674(v18, *(&v18 + 1));
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

id sub_1DB020AE0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4E8, &unk_1DB0B2700);
  v2 = *v0;
  v3 = sub_1DB09DDC4();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

  return result;
}

void *sub_1DB020C58(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *v2;
  v5 = sub_1DB09DDC4();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_1DB020D88(uint64_t a1, uint64_t a2)
{
  v6 = a2;
  v67 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v8 = a1 + 64;
  v7 = *(a1 + 64);
  v9 = -1 << *(a1 + 32);
  v57 = ~v9;
  if (-v9 < 64)
  {
    v10 = ~(-1 << -v9);
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 & v7;
  v12 = (63 - v9) >> 6;
  v62 = (a2 + 56);

  v15 = 0;
  v59 = v13;
  v60 = v8;
  for (i = v12; ; v12 = i)
  {
    if (!v11)
    {
      v16 = v15;
      do
      {
        v17 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_43;
        }

        if (v17 >= v12)
        {
          goto LABEL_40;
        }

        v11 = *(v8 + 8 * v17);
        ++v16;
      }

      while (!v11);
      v15 = v17;
    }

    v18 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v19 = *(v13 + 48);
    v61 = v15;
    v20 = *(v19 + ((v15 << 9) | (8 * v18)));
    v21 = sub_1DB09DC24();
    v22 = -1 << *(v6 + 32);
    v3 = v21 & ~v22;
    v2 = v3 >> 6;
    v4 = 1 << v3;
    if (((1 << v3) & v62[v3 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v13 = v59;
    v8 = v60;
    v15 = v61;
  }

  v5 = ~v22;
  sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
  while (1)
  {
    v23 = *(*(v6 + 48) + 8 * v3);
    v24 = sub_1DB09DC34();

    if (v24)
    {
      break;
    }

    v3 = (v3 + 1) & v5;
    v2 = v3 >> 6;
    v4 = 1 << v3;
    if (((1 << v3) & v62[v3 >> 6]) == 0)
    {
      goto LABEL_6;
    }
  }

  v25 = v60;
  v26 = v61;
  v64 = v57;
  v65 = v61;
  v66 = v11;
  v5 = v59;
  v63[0] = v59;
  v63[1] = v60;

  v28 = *(v6 + 32);
  v53 = ((1 << v28) + 63) >> 6;
  v14 = 8 * v53;
  if ((v28 & 0x3Fu) > 0xD)
  {
    goto LABEL_44;
  }

  while (2)
  {
    v54 = &v52;
    MEMORY[0x1EEE9AC00](v27);
    v3 = &v52 - ((v29 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v3, v62, v29);
    v30 = *(v3 + 8 * v2) & ~v4;
    v31 = *(v6 + 16);
    v56 = v3;
    *(v3 + 8 * v2) = v30;
    v32 = v31 - 1;
    v33 = i;
LABEL_21:
    v55 = v32;
    while (v11)
    {
LABEL_29:
      v36 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v37 = *(v5 + 48);
      v61 = v26;
      v38 = *(v37 + ((v26 << 9) | (8 * v36)));
      v39 = sub_1DB09DC24();
      v3 = -1 << *(v6 + 32);
      v40 = v39 & ~v3;
      v2 = v40 >> 6;
      v4 = 1 << v40;
      if (((1 << v40) & v62[v40 >> 6]) == 0)
      {
        goto LABEL_22;
      }

      v41 = *(*(v6 + 48) + 8 * v40);
      v42 = sub_1DB09DC34();

      if (v42)
      {
LABEL_34:

        v45 = v56[v2];
        v56[v2] = v45 & ~v4;
        v5 = v59;
        v25 = v60;
        v26 = v61;
        v33 = i;
        if ((v45 & v4) != 0)
        {
          v32 = v55 - 1;
          if (__OFSUB__(v55, 1))
          {
            __break(1u);
          }

          if (v55 == 1)
          {

            v6 = MEMORY[0x1E69E7CD0];
            goto LABEL_39;
          }

          goto LABEL_21;
        }
      }

      else
      {
        v3 = ~v3;
        while (1)
        {
          v40 = (v40 + 1) & v3;
          v2 = v40 >> 6;
          v4 = 1 << v40;
          if (((1 << v40) & v62[v40 >> 6]) == 0)
          {
            break;
          }

          v43 = *(*(v6 + 48) + 8 * v40);
          v44 = sub_1DB09DC34();

          if (v44)
          {
            goto LABEL_34;
          }
        }

LABEL_22:

        v5 = v59;
        v25 = v60;
        v26 = v61;
        v33 = i;
      }
    }

    v34 = v26;
    while (1)
    {
      v35 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v35 >= v33)
      {
        v6 = sub_1DB0214F4(v56, v53, v55, v6);
        goto LABEL_39;
      }

      v11 = *(v25 + 8 * v35);
      ++v34;
      if (v11)
      {
        v26 = v35;
        goto LABEL_29;
      }
    }

    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v47 = v14;

    v48 = v47;
    if (swift_stdlib_isStackAllocationSafe())
    {

      v25 = v60;
      v26 = v61;
      continue;
    }

    break;
  }

  v49 = swift_slowAlloc();
  memcpy(v49, v62, v48);
  sub_1DB0212B8(v49, v53, v6, v3, v63);
  v51 = v50;

  MEMORY[0x1E1281810](v49, -1, -1);
  v5 = v63[0];
  v57 = v64;
  v6 = v51;
LABEL_39:
  v13 = v5;
LABEL_40:
  sub_1DAF333A4(v13);
  return v6;
}

void sub_1DB0212B8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v5 = a5;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v32 = a3 + 56;
  while (2)
  {
    v29 = v8;
    do
    {
      while (1)
      {
        v9 = v5[3];
        v10 = v5[4];
        if (!v10)
        {
          v12 = (v5[2] + 64) >> 6;
          v13 = v5[3];
          while (1)
          {
            v11 = v13 + 1;
            if (__OFADD__(v13, 1))
            {
              __break(1u);
              goto LABEL_24;
            }

            if (v11 >= v12)
            {
              break;
            }

            v10 = *(v5[1] + 8 * v11);
            ++v13;
            if (v10)
            {
              goto LABEL_10;
            }
          }

          if (v12 <= v9 + 1)
          {
            v27 = v9 + 1;
          }

          else
          {
            v27 = (v5[2] + 64) >> 6;
          }

          v5[3] = v27 - 1;
          v5[4] = 0;

          sub_1DB0214F4(a1, a2, v29, a3);
          return;
        }

        v11 = v5[3];
LABEL_10:
        v14 = *(*(*v5 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));
        v5[3] = v11;
        v5[4] = (v10 - 1) & v10;
        v15 = v14;
        v16 = sub_1DB09DC24();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v32 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
      v21 = *(*(a3 + 48) + 8 * v18);
      v22 = sub_1DB09DC34();

      if ((v22 & 1) == 0)
      {
        v23 = ~v17;
        do
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v32 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          v24 = *(*(a3 + 48) + 8 * v18);
          v25 = sub_1DB09DC34();
        }

        while ((v25 & 1) == 0);
      }

      v5 = a5;

      v26 = a1[v19];
      a1[v19] = v26 & ~v20;
    }

    while ((v26 & v20) == 0);
    v8 = v29 - 1;
    if (__OFSUB__(v29, 1))
    {
LABEL_24:
      __break(1u);
    }

    else if (v29 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1DB0214F4(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F4E8, &unk_1DB0B2700);
  result = sub_1DB09DDF4();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    result = sub_1DB09DC24();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1DB0216E8(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1DB09DD74();

    if (v6)
    {
      v7 = sub_1DB021880(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
  v10 = sub_1DB09DC24();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1DB09DC34();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DB020AE0();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1DB0219E8(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1DB021880(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1DB09DD44();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1DB01FC5C(v5, v4);
  v15 = v6;

  v7 = sub_1DB09DC24();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1DAF4062C(0, &qword_1ECC0E240, 0x1E695CF60);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1DB09DC34();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_1DB0219E8(v9);
  result = sub_1DB09DC34();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1DB0219E8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DB09DD14();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1DB09DC24();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

uint64_t _s17CoreODIEssentials15GeoCoderAddressV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v6 = a1[3];
  v5 = a1[4];
  v7 = a1[5];
  v8 = a1[6];
  v10 = a1[7];
  v9 = a1[8];
  v11 = a1[9];
  v79 = a1[10];
  v13 = a1[11];
  v12 = a1[12];
  v81 = a1[13];
  v14 = a2[1];
  v15 = a2[2];
  v17 = a2[3];
  v16 = a2[4];
  v19 = a2[5];
  v18 = a2[6];
  v20 = a2[7];
  v21 = a2[8];
  v23 = a2[9];
  v22 = a2[10];
  v24 = a2[11];
  v78 = a2[12];
  v80 = a2[13];
  if (v3)
  {
    if (!v14)
    {
      return 0;
    }

    if (*a1 != *a2 || v3 != v14)
    {
      v72 = a2[6];
      v75 = a2[7];
      v62 = a1[11];
      v63 = a2[11];
      v68 = a1[4];
      v70 = a1[12];
      v64 = a2[4];
      v66 = a2[5];
      v25 = a2[10];
      v26 = a1[8];
      v27 = a1[9];
      v60 = a2[2];
      v61 = a1[2];
      v28 = a2[8];
      v29 = a1[7];
      v30 = a1[5];
      v31 = sub_1DB09E254();
      v7 = v30;
      v18 = v72;
      v20 = v75;
      v10 = v29;
      v21 = v28;
      v15 = v60;
      v4 = v61;
      v11 = v27;
      v9 = v26;
      v22 = v25;
      v19 = v66;
      v5 = v68;
      v12 = v70;
      v13 = v62;
      v24 = v63;
      v16 = v64;
      if ((v31 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v14)
  {
    return 0;
  }

  if (v6)
  {
    if (!v17)
    {
      return 0;
    }

    if (v4 != v15 || v6 != v17)
    {
      v73 = v18;
      v76 = v20;
      v69 = v5;
      v71 = v12;
      v65 = v16;
      v67 = v19;
      v32 = v22;
      v33 = v9;
      v34 = v11;
      v35 = v23;
      v36 = v21;
      v37 = v10;
      v38 = v7;
      v39 = sub_1DB09E254();
      v7 = v38;
      v18 = v73;
      v20 = v76;
      v10 = v37;
      v21 = v36;
      v23 = v35;
      v11 = v34;
      v9 = v33;
      v16 = v65;
      v22 = v32;
      v19 = v67;
      v5 = v69;
      v12 = v71;
      if ((v39 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v17)
  {
    return 0;
  }

  if (v7)
  {
    if (!v19)
    {
      return 0;
    }

    if (v5 != v16 || v7 != v19)
    {
      v74 = v18;
      v77 = v20;
      v40 = v12;
      v41 = v22;
      v42 = v9;
      v43 = v11;
      v44 = v23;
      v45 = v21;
      v46 = v10;
      v47 = sub_1DB09E254();
      v18 = v74;
      v20 = v77;
      v10 = v46;
      v21 = v45;
      v23 = v44;
      v11 = v43;
      v9 = v42;
      v22 = v41;
      v12 = v40;
      if ((v47 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v19)
  {
    return 0;
  }

  if (v10)
  {
    if (!v20)
    {
      return 0;
    }

    if (v8 != v18 || v10 != v20)
    {
      v48 = v12;
      v49 = v22;
      v50 = v9;
      v51 = v11;
      v52 = v21;
      v53 = sub_1DB09E254();
      v21 = v52;
      v11 = v51;
      v9 = v50;
      v22 = v49;
      v12 = v48;
      if ((v53 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v20)
  {
    return 0;
  }

  if (v11)
  {
    if (!v23)
    {
      return 0;
    }

    if (v9 != v21 || v11 != v23)
    {
      v54 = v12;
      v55 = v22;
      v56 = sub_1DB09E254();
      v22 = v55;
      v12 = v54;
      if ((v56 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v23)
  {
    return 0;
  }

  if (v13)
  {
    if (!v24)
    {
      return 0;
    }

    if (v79 != v22 || v13 != v24)
    {
      v57 = v12;
      v58 = sub_1DB09E254();
      v12 = v57;
      if ((v58 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v24)
  {
    return 0;
  }

  if (v81)
  {
    if (v80 && (v12 == v78 && v81 == v80 || (sub_1DB09E254() & 1) != 0))
    {
      return 1;
    }
  }

  else if (!v80)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_1DB021F0C()
{
  result = qword_1ECC0F4B0;
  if (!qword_1ECC0F4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F4B0);
  }

  return result;
}

uint64_t sub_1DB021F60(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB021F80(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 64) = v3;
  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1DB021FF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1DB02204C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for GeoCoder.LocationResult(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 17))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for GeoCoder.LocationResult(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 17) = v3;
  return result;
}

uint64_t sub_1DB0221D8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DB0221F4(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  else
  {
    *(result + 16) = 0;
  }

  return result;
}

uint64_t sub_1DB022224(uint64_t a1)
{
  v4 = *(v1 + 56);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF63DEC;

  return sub_1DB01BCB8(a1, v1 + 16, v4);
}

uint64_t block_copy_helper_13(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1DB0222F8()
{
  result = qword_1ECC0F4B8;
  if (!qword_1ECC0F4B8)
  {
    type metadata accessor for GeoCoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F4B8);
  }

  return result;
}

uint64_t sub_1DB02234C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1DAF62CC4;

  return sub_1DB01C18C(a1, a2, v6, v7, v8);
}

uint64_t sub_1DB022420(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1DAF63DEC;

  return sub_1DB01C6F8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1DB0224E8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1DAF63DEC;

  return sub_1DAF5F30C(a1, v4);
}

unint64_t sub_1DB0225A0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E6F8, &qword_1DB0AF5C0);
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_1DB0226F4(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_1DAF736D4(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_1DB0225A0(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_1DB022858(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = v2[33];
  v7 = v2[34];
  __swift_project_boxed_opaque_existential_1(v2 + 30, v6);
  v8 = (*(v7 + 16))(0xD00000000000001ALL, 0x80000001DB0CA640, v6, v7);
  if (!v9 || (v10 = sub_1DB022DDC(v8, v9), v10 == 5))
  {
    if (v2[29])
    {
      v11 = v2[29];
      v12 = *(v2 + 280);
      if (*(v2 + 280))
      {
        goto LABEL_5;
      }
    }

    else
    {
      v11 = sub_1DAF3EE1C(MEMORY[0x1E69E7CC0]);
      v12 = *(v2 + 280);
      if (*(v2 + 280))
      {
LABEL_5:
        if (v12 == 1)
        {

          v13 = 3;
        }

        else
        {

          v13 = 4;
        }

        goto LABEL_11;
      }
    }

    LOBYTE(v23) = 1;

    v18 = sub_1DAFFF15C(&v23, a1, a2, v11);

    v13 = (v18 & 1) == 0;
LABEL_11:
    v19 = v3[1];
    v23 = *v3;
    v24 = v19;

    sub_1DB09DE44();

    v21 = 0xD00000000000001BLL;
    v22 = 0x80000001DB0CA660;
    MEMORY[0x1E127FE90](qword_1DB0B2948[v13], 0xE100000000000000);

    v15 = 0xD00000000000001BLL;
    v16 = 0x80000001DB0CA660;
    v17 = 1;
    goto LABEL_12;
  }

  v13 = v10;
  v14 = v2[1];
  v23 = *v2;
  v24 = v14;
  v21 = 0;
  v22 = 0xE000000000000000;

  sub_1DB09DE44();
  MEMORY[0x1E127FE90](0xD00000000000001ALL, 0x80000001DB0CA680);
  sub_1DB09DF94();
  MEMORY[0x1E127FE90](0xD000000000000015, 0x80000001DB0CA6A0);
  v15 = 0;
  v16 = 0xE000000000000000;
  v17 = 14;
LABEL_12:
  LOBYTE(v21) = v17;
  CoreODILogger.debug(_:category:)(v15, v16, &v21);

  return v13;
}

uint64_t sub_1DB022AE0()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB022B34(uint64_t a1)
{
  sub_1DB09D794();
}

uint64_t sub_1DB022B6C()
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

unint64_t sub_1DB022BBC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DB022DDC(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1DB022C00()
{
  result = os_variant_allows_internal_security_policies();
  v1 = result;
  if (result)
  {
    v3 = 0x657261685369646FLL;
    v4 = 0xEF726567676F4C64;
    v2 = 0;
    CoreODILogger.debug(_:category:)(0xD000000000000017, 0x80000001DB0CA6E0, &v2);
  }

  byte_1EE30A140 = v1;
  return result;
}

void sub_1DB022C94()
{
  if (qword_1EE301DD8 != -1)
  {
    swift_once();
  }

  if (byte_1EE30A140 != 1)
  {
    goto LABEL_8;
  }

  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = sub_1DB09D6B4();
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    goto LABEL_8;
  }

  v3 = v2;
  v4 = sub_1DB09D6B4();
  v5 = [v3 stringForKey_];

  if (!v5)
  {

LABEL_8:
    v6 = 0;
    v8 = 0;
    goto LABEL_9;
  }

  v6 = sub_1DB09D6C4();
  v8 = v7;

LABEL_9:
  qword_1EE309EE0 = v6;
  qword_1EE309EE8 = v8;
}

unint64_t sub_1DB022DDC(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DB09E004();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DB022E40(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 281))
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

uint64_t sub_1DB022E88(uint64_t result, int a2, int a3)
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
    *(result + 280) = 0;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 281) = 1;
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

    *(result + 281) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB022F28()
{
  result = qword_1ECC0F518;
  if (!qword_1ECC0F518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F518);
  }

  return result;
}

unint64_t sub_1DB022FA0()
{
  result = qword_1ECC0F520;
  if (!qword_1ECC0F520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F520);
  }

  return result;
}

uint64_t type metadata accessor for RavioliRequestFactory(uint64_t a1)
{
  result = qword_1EE300F30;
  if (!qword_1EE300F30)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1DB023068(uint64_t a1)
{
  sub_1DB09CF64();
  if (v1 <= 0x3F)
  {
    sub_1DB023164(319, &qword_1ECC0F528, &protocol descriptor for DeviceInformationProvider);
    if (v2 <= 0x3F)
    {
      sub_1DB023164(319, &qword_1ECC0F530, &protocol descriptor for AccountRequestHeaderProvider);
      if (v3 <= 0x3F)
      {
        sub_1DB023164(319, &qword_1ECC0F538, &protocol descriptor for UDIDProvider);
        if (v4 <= 0x3F)
        {
          sub_1DAFEA7E8();
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

uint64_t sub_1DB023164(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1DB0231C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_1DB09CBF4();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1DB09CF64();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v4[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1DB0232EC, 0, 0);
}

uint64_t sub_1DB0232EC()
{
  v1 = v0[5];
  (*(v0[10] + 16))(v0[12], v1, v0[9]);
  v2 = type metadata accessor for RavioliRequestFactory(0);
  v0[13] = v2;
  if (*(v1 + *(v2 + 32) + 8))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E5F0, &unk_1DB0B29A0);
    sub_1DB09CC94();
    *(swift_allocObject() + 16) = xmmword_1DB0A04E0;
    sub_1DB09CC84();
    sub_1DB09CF14();
  }

  v3 = v0[5];
  sub_1DB09CEF4();
  sub_1DB09CBB4();
  sub_1DB09CBD4();
  v4 = (v3 + *(v2 + 20));
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v9 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1DB0235A4;

  return v9(v5, v6);
}

uint64_t sub_1DB0235A4(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 120) = a1;
  *(v3 + 128) = a2;

  return MEMORY[0x1EEE6DFA0](sub_1DB0236A4, 0, 0);
}

uint64_t sub_1DB0236A4()
{
  v1 = v0[13];
  v2 = v0[5];
  sub_1DB09CBD4();

  v3 = (v2 + *(v1 + 24));
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  v10 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_1DB023818;
  v7 = v0[8];
  v8 = v0[2];

  return v10(v8, v7, v4, v5);
}

uint64_t sub_1DB023818()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_1DB0239EC;
  }

  else
  {
    v2 = sub_1DB02392C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1DB02392C()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1DB0239EC()
{
  v1 = v0[12];
  v2 = v0[9];
  v3 = v0[10];
  (*(v0[7] + 8))(v0[8], v0[6]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
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

uint64_t sub_1DB023AC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 34))
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

uint64_t sub_1DB023B08(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 34) = 1;
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

    *(result + 34) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DB023B70()
{
  result = qword_1ECC0F540;
  if (!qword_1ECC0F540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0F540);
  }

  return result;
}

void *sub_1DB023BC8()
{
  type metadata accessor for DistributedNotificationsAsyncSequence.Iterator.Handler();
  swift_allocObject();
  result = sub_1DB023C08();
  qword_1EE300BB0 = result;
  return result;
}

void *sub_1DB023C08()
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v2 = MEMORY[0x1E69E7CC8];
  v0[2] = v1;
  v0[3] = v2;
  v0[4] = 0;
  v5[4] = sub_1DB02532C;
  v6 = v0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_1DB024014;
  v5[3] = &block_descriptor_14;
  v3 = _Block_copy(v5);

  xpc_set_event_stream_handler("com.apple.distnoted.matching", 0, v3);
  _Block_release(v3);
  return v0;
}

uint64_t sub_1DB023CF4(uint64_t a1)
{
  v2 = sub_1DB09D4B4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  if (swift_conformsToProtocol2() && a1)
  {
    v6 = swift_unknownObjectRetain();
    sub_1DB023ED4(v6);

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1DB09D4A4();
    v8 = sub_1DB09D494();
    v9 = sub_1DB09DB74();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1DAF16000, v8, v9, "Failed to cast XPC object to Sendable", v10, 2u);
      MEMORY[0x1E1281810](v10, -1, -1);
    }

    return (*(v3 + 8))(v5, v2);
  }
}

id sub_1DB023ED4(uint64_t a1)
{
  v3 = *(v1 + 16);
  [v3 lock];
  swift_beginAccess();
  v4 = *(v1 + 24);
  *(v1 + 24) = MEMORY[0x1E69E7CC8];
  result = [v3 unlock];
  v6 = 0;
  v7 = 1 << *(v4 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(v4 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
    v13 = *(*(v4 + 56) + ((v6 << 9) | (8 * v12)));
    if (v13)
    {
      **(*(v13 + 64) + 40) = a1;
      swift_unknownObjectRetain();
      result = swift_continuation_resume();
    }
  }

  while (1)
  {
    v11 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v11 >= v10)
    {
    }

    v9 = *(v4 + 64 + 8 * v11);
    ++v6;
    if (v9)
    {
      v6 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1DB024014(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id sub_1DB024074(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v2 + 16);
  [v6 lock];
  swift_beginAccess();
  v7 = *(v2 + 24);
  if (*(v7 + 16) && (v8 = sub_1DAF356DC(a2), (v9 & 1) != 0) && !*(*(v7 + 56) + 8 * v8))
  {
    swift_endAccess();
    swift_beginAccess();
    sub_1DB07FB18(a2);
    swift_endAccess();
    [v6 unlock];
    **(*(a1 + 64) + 40) = 0;
    return swift_continuation_resume();
  }

  else
  {
    swift_endAccess();
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    sub_1DAF3BE58(a1, a2, isUniquelyReferenced_nonNull_native);
    *(v3 + 24) = v12;
    swift_endAccess();
    return [v6 unlock];
  }
}

id sub_1DB0241D0(uint64_t a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  [v4 lock];
  swift_beginAccess();
  v5 = sub_1DB07FB18(a1);
  swift_endAccess();
  if (v5 == 1)
  {
    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v2 + 24);
    *(v2 + 24) = 0x8000000000000000;
    sub_1DAF3BE58(0, a1, isUniquelyReferenced_nonNull_native);
    *(v2 + 24) = v8;
    swift_endAccess();
    return [v4 unlock];
  }

  else
  {
    result = [v4 unlock];
    if (v5)
    {
      **(*(v5 + 64) + 40) = 0;
      return swift_continuation_resume();
    }
  }

  return result;
}

uint64_t sub_1DB0242E8()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1DB024348(uint64_t a1)
{
  if (sub_1DB09DA64())
  {
    v2 = *(v1 + 8);

    return v2(0);
  }

  else
  {
    v4 = **(v1 + 24);
    v5 = [*(v4 + 16) lock];
    v13 = *(v4 + 32);
    if (__OFADD__(v13, 1))
    {
      __break(1u);
    }

    else
    {
      *(v4 + 32) = v13 + 1;
      [*(v4 + 16) unlock];
      v14 = swift_task_alloc();
      *(v1 + 32) = v14;
      *(v14 + 16) = v4;
      *(v14 + 24) = v13;
      v15 = swift_task_alloc();
      *(v1 + 40) = v15;
      *(v15 + 16) = v4;
      *(v15 + 24) = v13;
      v16 = swift_task_alloc();
      *(v1 + 48) = v16;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F548, qword_1DB0B2B40);
      *v16 = v1;
      v16[1] = sub_1DB0244DC;
      v6 = &unk_1DB0B2B30;
      v8 = sub_1DB0248C0;
      v5 = (v1 + 16);
      v7 = v14;
      v9 = v15;
      v10 = 0;
      v11 = 0;
    }

    return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
  }
}

void sub_1DB0244DC()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1DB024620, 0, 0);
  }
}

uint64_t sub_1DB024638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[12] = a2;
  v3[13] = a3;
  v3[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1DB02465C, 0, 0);
}

uint64_t sub_1DB02465C()
{
  v1 = v0[13];
  v0[2] = v0;
  v0[7] = v0 + 10;
  v0[3] = sub_1DB024704;
  v2 = swift_continuation_init();
  sub_1DB024074(v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1DB024704()
{
  v3 = *v0;
  **(*v0 + 88) = *(*v0 + 80);
  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1DB024814(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAF63DEC;

  return sub_1DB024638(a1, v5, v4);
}

uint64_t sub_1DB0248E8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_1DB024978;

  return DistributedNotificationsAsyncSequence.Iterator.next()();
}

uint64_t sub_1DB024978(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  *v3 = a1;
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1DB024A8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1DB024B48;

  return sub_1DB024C6C();
}

uint64_t sub_1DB024B48(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t sub_1DB024C8C(uint64_t a1)
{
  if (sub_1DB09DA64())
  {
    v2 = *(v1 + 8);

    return v2(0);
  }

  else
  {
    v4 = **(v1 + 24);
    v5 = [*(v4 + 16) lock];
    v13 = *(v4 + 32);
    if (__OFADD__(v13, 1))
    {
      __break(1u);
    }

    else
    {
      *(v4 + 32) = v13 + 1;
      [*(v4 + 16) unlock];
      v14 = swift_task_alloc();
      *(v1 + 32) = v14;
      *(v14 + 16) = v4;
      *(v14 + 24) = v13;
      v15 = swift_task_alloc();
      *(v1 + 40) = v15;
      *(v15 + 16) = v4;
      *(v15 + 24) = v13;
      v16 = swift_task_alloc();
      *(v1 + 48) = v16;
      v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0F548, qword_1DB0B2B40);
      *v16 = v1;
      v16[1] = sub_1DB024E24;
      v6 = &unk_1DB0B2C98;
      v8 = sub_1DB02534C;
      v5 = (v1 + 16);
      v7 = v14;
      v9 = v15;
      v10 = 0;
      v11 = 0;
    }

    return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
  }
}

void sub_1DB024E24()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1DB024F68, 0, 0);
  }
}

uint64_t DistributedNotificationsAsyncSequence.makeAsyncIterator()@<X0>(void *a1@<X8>)
{
  if (qword_1EE300BA8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EE300BB0;
}

unint64_t sub_1DB025004()
{
  result = qword_1EE300BA0;
  if (!qword_1EE300BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE300BA0);
  }

  return result;
}

uint64_t sub_1DB025058@<X0>(void *a1@<X8>)
{
  if (qword_1EE300BA8 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  *a1 = qword_1EE300BB0;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for DistributedNotificationsAsyncSequence.Iterator.Handler.State(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DistributedNotificationsAsyncSequence.Iterator.Handler.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1DB025258(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DB025280(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1DAF62CC4;

  return sub_1DB024638(a1, v5, v4);
}

uint64_t block_copy_helper_14(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t ODIAnalyticsEvent.name.getter()
{
  if (*v0 < 0)
  {
    return 0xD000000000000049;
  }

  else
  {
    return 0xD00000000000003ELL;
  }
}

unint64_t ODIAnalyticsEvent.fields.getter()
{
  if ((*v0 & 0x8000000000000000) != 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB80, &unk_1DB0B26F0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DB0A0500;
    *(inited + 32) = 0xD000000000000012;
    *(inited + 40) = 0x80000001DB0C62E0;
    *(inited + 48) = sub_1DB09DAE4();
    *(inited + 56) = 0x646F43726F727265;
    *(inited + 64) = 0xE900000000000065;
    *(inited + 72) = sub_1DB09DB14();
    v2 = sub_1DAF3F518(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB88, &unk_1DB0AB610);
    swift_arrayDestroy();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0EB80, &unk_1DB0B26F0);
    v1 = swift_initStackObject();
    *(v1 + 16) = xmmword_1DB0A04E0;
    *(v1 + 32) = 0xD000000000000012;
    *(v1 + 40) = 0x80000001DB0C62E0;
    *(v1 + 48) = sub_1DB09DAE4();
    v2 = sub_1DAF3F518(v1);
    swift_setDeallocating();
    sub_1DAFB8900(v1 + 32);
  }

  return v2;
}

unint64_t sub_1DB025508()
{
  if (*v0 < 0)
  {
    return 0xD000000000000049;
  }

  else
  {
    return 0xD00000000000003ELL;
  }
}

uint64_t getEnumTagSinglePayload for ODIAnalyticsEvent(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
  {
    return *a1 + 0x80000000;
  }

  HIDWORD(v3) = *(a1 + 4);
  LODWORD(v3) = HIDWORD(v3);
  v2 = v3 >> 31;
  if (v2 > 0x80000000)
  {
    v4 = ~v2;
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ODIAnalyticsEvent(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      HIDWORD(v3) = -a2;
      LODWORD(v3) = -a2;
      *result = (v3 >> 1) << 32;
      *(result + 8) = 0;
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DB02563C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x64756F6C4369;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v3 = 1684628325;
    }

    else
    {
      v3 = 1869903201;
    }

    v4 = 0xE400000000000000;
  }

  else
  {
    if (a1)
    {
      v3 = 0x73656E755469;
    }

    else
    {
      v3 = 0x64756F6C4369;
    }

    v4 = 0xE600000000000000;
  }

  v5 = 1684628325;
  if (a2 != 2)
  {
    v5 = 1869903201;
  }

  if (a2)
  {
    v2 = 0x73656E755469;
  }

  if (a2 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v5;
  }

  if (a2 <= 1u)
  {
    v7 = 0xE600000000000000;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  if (v3 == v6 && v4 == v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1DB09E254();
  }

  return v8 & 1;
}

uint64_t sub_1DB025754(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 == a2)
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_1DB09E254();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_1DB0257B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE0064656B636F4CLL;
  v3 = 0x6563697665447369;
  v4 = a1;
  v5 = 0x614C656E6F687069;
  v6 = 0xEE0065676175676ELL;
  if (a1 != 4)
  {
    v5 = 0x7365727574616566;
    v6 = 0xE800000000000000;
  }

  if (a1 == 3)
  {
    v7 = 0xD000000000000011;
  }

  else
  {
    v7 = v5;
  }

  if (a1 == 3)
  {
    v6 = 0x80000001DB0C1320;
  }

  v8 = 0x80000001DB0C1300;
  if (a1 == 1)
  {
    v9 = 0xD000000000000014;
  }

  else
  {
    v9 = 0xD000000000000012;
  }

  if (a1 != 1)
  {
    v8 = 0x80000001DB0C0FC0;
  }

  if (!a1)
  {
    v9 = 0x6563697665447369;
    v8 = 0xEE0064656B636F4CLL;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v7;
  }

  if (v4 <= 2)
  {
    v11 = v8;
  }

  else
  {
    v11 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v2 = 0x80000001DB0C1320;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_37;
      }
    }

    else if (a2 == 4)
    {
      v2 = 0xEE0065676175676ELL;
      if (v10 != 0x614C656E6F687069)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v2 = 0xE800000000000000;
      if (v10 != 0x7365727574616566)
      {
        goto LABEL_37;
      }
    }
  }

  else
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v2 = 0x80000001DB0C1300;
        if (v10 != 0xD000000000000014)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      v2 = 0x80000001DB0C0FC0;
      v3 = 0xD000000000000012;
    }

    if (v10 != v3)
    {
LABEL_37:
      v12 = sub_1DB09E254();
      goto LABEL_38;
    }
  }

LABEL_34:
  if (v11 != v2)
  {
    goto LABEL_37;
  }

  v12 = 1;
LABEL_38:

  return v12 & 1;
}

uint64_t sub_1DB0259A0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x64757469676E6F6CLL;
    }

    else
    {
      v3 = 0x656475746974616CLL;
    }

    if (v2)
    {
      v4 = 0xE900000000000065;
    }

    else
    {
      v4 = 0xE800000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x80000001DB0C1160;
    v3 = 0xD000000000000012;
  }

  else if (a1 == 3)
  {
    v3 = 0xD000000000000010;
    v4 = 0x80000001DB0C1180;
  }

  else
  {
    v3 = 0x6564757469746C61;
    v4 = 0xE800000000000000;
  }

  if (a2 <= 1u)
  {
    v5 = 0xE800000000000000;
    v7 = 0xE900000000000065;
    v8 = a2 == 0;
    if (a2)
    {
      v9 = 0x64757469676E6F6CLL;
    }

    else
    {
      v9 = 0x656475746974616CLL;
    }
  }

  else
  {
    v5 = 0x80000001DB0C1160;
    v6 = 0x6564757469746C61;
    if (a2 == 3)
    {
      v6 = 0xD000000000000010;
      v7 = 0x80000001DB0C1180;
    }

    else
    {
      v7 = 0xE800000000000000;
    }

    v8 = a2 == 2;
    if (a2 == 2)
    {
      v9 = 0xD000000000000012;
    }

    else
    {
      v9 = v6;
    }
  }

  if (v8)
  {
    v10 = v5;
  }

  else
  {
    v10 = v7;
  }

  if (v3 == v9 && v4 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1DB09E254();
  }

  return v11 & 1;
}

uint64_t sub_1DB025B28(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF65647574697461;
  v3 = 0xD000000000000017;
  v4 = a1;
  if (a1 > 3u)
  {
    v11 = 0x80000001DB0C1110;
    v12 = 0xD000000000000016;
    if (a1 != 6)
    {
      v12 = 0xD000000000000017;
      v11 = 0x80000001DB0C1130;
    }

    v13 = 0x80000001DB0C10D0;
    if (a1 == 4)
    {
      v14 = 0xD000000000000017;
    }

    else
    {
      v14 = 0xD000000000000018;
    }

    if (a1 != 4)
    {
      v13 = 0x80000001DB0C10F0;
    }

    if (a1 <= 5u)
    {
      v9 = v14;
    }

    else
    {
      v9 = v12;
    }

    if (v4 <= 5)
    {
      v10 = v13;
    }

    else
    {
      v10 = v11;
    }
  }

  else
  {
    v5 = 0x80000001DB0C1090;
    v6 = 0xD000000000000012;
    if (a1 != 2)
    {
      v6 = 0xD000000000000013;
      v5 = 0x80000001DB0C10B0;
    }

    v7 = 0x80000001DB0C1070;
    v8 = 0xD000000000000010;
    if (!a1)
    {
      v8 = 0x4C73736572646461;
      v7 = 0xEF65647574697461;
    }

    if (a1 <= 1u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v6;
    }

    if (v4 <= 1)
    {
      v10 = v7;
    }

    else
    {
      v10 = v5;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001DB0C1110;
        v3 = 0xD000000000000016;
        goto LABEL_41;
      }

      v15 = "billingAddressLongitude";
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0x80000001DB0C10F0;
        v3 = 0xD000000000000018;
        goto LABEL_41;
      }

      v15 = "shippingAddressLatitude";
    }

    v2 = (v15 - 32) | 0x8000000000000000;
    goto LABEL_41;
  }

  if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x80000001DB0C1090;
      v3 = 0xD000000000000012;
    }

    else
    {
      v2 = 0x80000001DB0C10B0;
      v3 = 0xD000000000000013;
    }
  }

  else if (a2)
  {
    v2 = 0x80000001DB0C1070;
    v3 = 0xD000000000000010;
  }

  else
  {
    v3 = 0x4C73736572646461;
  }

LABEL_41:
  if (v9 == v3 && v10 == v2)
  {
    v16 = 1;
  }

  else
  {
    v16 = sub_1DB09E254();
  }

  return v16 & 1;
}

uint64_t sub_1DB025D60(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEB0000000064695FLL;
  v3 = 0x776F6C666B726F77;
  v4 = a1;
  v5 = 0x80000001DB0C1480;
  v6 = 0xD000000000000017;
  if (a1 == 5)
  {
    v6 = 0xD000000000000010;
    v5 = 0x80000001DB0C1460;
  }

  v7 = 0x80000001DB0C1420;
  v8 = 0xD000000000000026;
  if (a1 != 3)
  {
    v8 = 0x5F64616F6C796170;
    v7 = 0xEE006572756E6574;
  }

  if (a1 > 4u)
  {
    v8 = v6;
    v7 = v5;
  }

  v9 = 0x80000001DB0C13C0;
  v10 = 0xD000000000000033;
  if (a1 == 1)
  {
    v10 = 0xD000000000000010;
  }

  else
  {
    v9 = 0x80000001DB0C13E0;
  }

  if (a1)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0x776F6C666B726F77;
  }

  if (!v4)
  {
    v9 = 0xEB0000000064695FLL;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v11 = v8;
    v12 = v7;
  }

  if (a2 > 2u)
  {
    if (a2 <= 4u)
    {
      if (a2 == 3)
      {
        v2 = 0x80000001DB0C1420;
        if (v11 != 0xD000000000000026)
        {
          goto LABEL_37;
        }

        goto LABEL_34;
      }

      v3 = 0x5F64616F6C796170;
      v2 = 0xEE006572756E6574;
      goto LABEL_33;
    }

    if (a2 != 5)
    {
      v2 = 0x80000001DB0C1480;
      if (v11 != 0xD000000000000017)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0x80000001DB0C1460;
LABEL_28:
    if (v11 != 0xD000000000000010)
    {
      goto LABEL_37;
    }

    goto LABEL_34;
  }

  if (a2)
  {
    if (a2 != 1)
    {
      v2 = 0x80000001DB0C13E0;
      if (v11 != 0xD000000000000033)
      {
        goto LABEL_37;
      }

      goto LABEL_34;
    }

    v2 = 0x80000001DB0C13C0;
    goto LABEL_28;
  }

LABEL_33:
  if (v11 != v3)
  {
LABEL_37:
    v13 = sub_1DB09E254();
    goto LABEL_38;
  }

LABEL_34:
  if (v12 != v2)
  {
    goto LABEL_37;
  }

  v13 = 1;
LABEL_38:

  return v13 & 1;
}

uint64_t sub_1DB025F58(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x42656C69666F7270;
  v6 = 0xED00007465536761;
  if (a1 != 4)
  {
    v5 = 0x49656C69666F7270;
    v6 = 0xEB000000006F666ELL;
  }

  if (a1 == 3)
  {
    v5 = 0x42656C69666F7270;
    v6 = 0xEF64497465536761;
  }

  if (a1 == 1)
  {
    v4 = 0xD000000000000010;
    v3 = 0x80000001DB0C1F20;
  }

  if (!a1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x80000001DB0C1F00;
  }

  if (a1 <= 2u)
  {
    v7 = v4;
  }

  else
  {
    v7 = v5;
  }

  if (v2 <= 2)
  {
    v8 = v3;
  }

  else
  {
    v8 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v9 = 0xEF64497465536761;
      if (v7 != 0x42656C69666F7270)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v9 = 0xED00007465536761;
      if (v7 != 0x42656C69666F7270)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v9 = 0xEB000000006F666ELL;
      if (v7 != 0x49656C69666F7270)
      {
LABEL_33:
        v10 = sub_1DB09E254();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v9 = 0x80000001DB0C1F20;
      if (v7 != 0xD000000000000010)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v9 = 0xE200000000000000;
      if (v7 != 25705)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v9 = 0x80000001DB0C1F00;
    if (v7 != 0xD000000000000012)
    {
      goto LABEL_33;
    }
  }

  if (v8 != v9)
  {
    goto LABEL_33;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1DB026178(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6382182;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 6383472;
    }

    else
    {
      v4 = 6385763;
    }

    v5 = 0xE300000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 6382448;
    v5 = 0xE300000000000000;
  }

  else
  {
    if (a1 == 3)
    {
      v4 = 6382182;
    }

    else
    {
      v4 = 0x73656C6966;
    }

    if (v3 == 3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = 6383472;
    }

    else
    {
      v7 = 6385763;
    }

    v6 = 0xE300000000000000;
    if (v4 != v7)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  if (a2 == 2)
  {
    v2 = 6382448;
  }

  else if (a2 != 3)
  {
    v6 = 0xE500000000000000;
    if (v4 != 0x73656C6966)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v6 = 0xE300000000000000;
  if (v4 != v2)
  {
LABEL_28:
    v8 = sub_1DB09E254();
    goto LABEL_29;
  }

LABEL_26:
  if (v5 != v6)
  {
    goto LABEL_28;
  }

  v8 = 1;
LABEL_29:

  return v8 & 1;
}

uint64_t sub_1DB0262AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v3 = 0x656C69666F7270;
    }

    else
    {
      v3 = 0xD000000000000010;
    }

    if (v2)
    {
      v4 = 0xE700000000000000;
    }

    else
    {
      v4 = 0x80000001DB0C1F20;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0x49656C69666F7270;
    v4 = 0xEB000000006F666ELL;
  }

  else
  {
    if (a1 == 3)
    {
      v3 = 0x49656C69666F7270;
    }

    else
    {
      v3 = 0x6E6F6973726576;
    }

    if (v2 == 3)
    {
      v4 = 0xE900000000000064;
    }

    else
    {
      v4 = 0xE700000000000000;
    }
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = 0x656C69666F7270;
    }

    else
    {
      v6 = 0xD000000000000010;
    }

    if (a2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0x80000001DB0C1F20;
    }

    if (v3 != v6)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 2)
  {
    v5 = 0xEB000000006F666ELL;
    if (v3 != 0x49656C69666F7270)
    {
      goto LABEL_34;
    }
  }

  else if (a2 == 3)
  {
    v5 = 0xE900000000000064;
    if (v3 != 0x49656C69666F7270)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v5 = 0xE700000000000000;
    if (v3 != 0x6E6F6973726576)
    {
LABEL_34:
      v7 = sub_1DB09E254();
      goto LABEL_35;
    }
  }

  if (v4 != v5)
  {
    goto LABEL_34;
  }

  v7 = 1;
LABEL_35:

  return v7 & 1;
}

uint64_t sub_1DB026468(unsigned __int8 a1, unsigned __int8 a2)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v2 = 0x73656E755469;
    }

    else
    {
      v2 = 0x64756F6C4369;
    }

    v4 = 0xE600000000000000;
  }

  else if (a1 == 2)
  {
    v4 = 0xE600000000000000;
    v2 = 0x64726143656DLL;
  }

  else
  {
    if (a1 == 3)
    {
      v2 = 0x6D754E656E6F6870;
      v3 = 7497058;
    }

    else
    {
      v2 = 0x726F707075736E75;
      v3 = 6579572;
    }

    v4 = v3 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 0x73656E755469;
    }

    else
    {
      v9 = 0x64756F6C4369;
    }

    v8 = 0xE600000000000000;
    if (v2 != v9)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v5 = 0x6D754E656E6F6870;
    v6 = 0xEB00000000726562;
    if (a2 != 3)
    {
      v5 = 0x726F707075736E75;
      v6 = 0xEB00000000646574;
    }

    if (a2 == 2)
    {
      v7 = 0x64726143656DLL;
    }

    else
    {
      v7 = v5;
    }

    if (a2 == 2)
    {
      v8 = 0xE600000000000000;
    }

    else
    {
      v8 = v6;
    }

    if (v2 != v7)
    {
      goto LABEL_29;
    }
  }

  if (v4 != v8)
  {
LABEL_29:
    v10 = sub_1DB09E254();
    goto LABEL_30;
  }

  v10 = 1;
LABEL_30:

  return v10 & 1;
}

uint64_t sub_1DB0265FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 2u)
  {
    v9 = 0xEF64756F6C43692ELL;
    if (a1 != 1)
    {
      v9 = 0xEF73656E7554692ELL;
    }

    if (a1)
    {
      v8 = v9;
    }

    else
    {
      v8 = 0xE800000000000000;
    }

    v7 = 0x73746E756F636341;
  }

  else
  {
    v3 = 0xE600000000000000;
    v4 = 0x64726143654DLL;
    if (a1 != 5)
    {
      v4 = 0x726F707075736E75;
      v3 = 0xEB00000000646574;
    }

    v5 = 0x656C655465726F43;
    v6 = 0xED0000796E6F6870;
    if (a1 != 3)
    {
      v5 = 0x797469746E656449;
      v6 = 0xE800000000000000;
    }

    if (a1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (v2 <= 4)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }
  }

  if (a2 <= 2u)
  {
    v11 = 0xEF64756F6C43692ELL;
    if (a2 != 1)
    {
      v11 = 0xEF73656E7554692ELL;
    }

    if (a2)
    {
      v10 = v11;
    }

    else
    {
      v10 = 0xE800000000000000;
    }

    if (v7 != 0x73746E756F636341)
    {
      goto LABEL_41;
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x64726143654DLL;
    }

    else
    {
      v12 = 0x726F707075736E75;
    }

    if (a2 == 5)
    {
      v10 = 0xE600000000000000;
    }

    else
    {
      v10 = 0xEB00000000646574;
    }

    if (v7 != v12)
    {
      goto LABEL_41;
    }
  }

  else if (a2 == 3)
  {
    v10 = 0xED0000796E6F6870;
    if (v7 != 0x656C655465726F43)
    {
      goto LABEL_41;
    }
  }

  else
  {
    v10 = 0xE800000000000000;
    if (v7 != 0x797469746E656449)
    {
LABEL_41:
      v13 = sub_1DB09E254();
      goto LABEL_42;
    }
  }

  if (v8 != v10)
  {
    goto LABEL_41;
  }

  v13 = 1;
LABEL_42:

  return v13 & 1;
}

uint64_t sub_1DB02681C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6574617473;
  v3 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 0x42676E697373696DLL;
    }

    else
    {
      v4 = 0x6574617473;
    }

    if (v3)
    {
      v5 = 0xEF73676E69646E69;
    }

    else
    {
      v5 = 0xE500000000000000;
    }
  }

  else if (a1 == 2)
  {
    v4 = 0x42746E6572727563;
    v5 = 0xEF73676E69646E69;
  }

  else if (a1 == 3)
  {
    v4 = 0x646F43726F727265;
    v5 = 0xE900000000000065;
  }

  else
  {
    v4 = 0x616E696D6F4E7369;
    v5 = 0xEB00000000646574;
  }

  if (a2 <= 1u)
  {
    v6 = 0xE500000000000000;
    v7 = 0x42676E697373696DLL;
    v8 = 0xEF73676E69646E69;
    v9 = a2 == 0;
  }

  else
  {
    v2 = 0x42746E6572727563;
    v6 = 0xEF73676E69646E69;
    v7 = 0x646F43726F727265;
    v8 = 0xE900000000000065;
    if (a2 != 3)
    {
      v7 = 0x616E696D6F4E7369;
      v8 = 0xEB00000000646574;
    }

    v9 = a2 == 2;
  }

  if (v9)
  {
    v10 = v2;
  }

  else
  {
    v10 = v7;
  }

  if (v9)
  {
    v11 = v6;
  }

  else
  {
    v11 = v8;
  }

  if (v4 == v10 && v5 == v11)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_1DB09E254();
  }

  return v12 & 1;
}

uint64_t sub_1DB0269DC(unsigned __int8 a1)
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB026B04(unsigned __int8 a1)
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB026C24(uint64_t a1, unsigned __int8 a2)
{
  sub_1DB09D794();
}

uint64_t sub_1DB026D6C(uint64_t a1, unsigned __int8 a2)
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB026E88(uint64_t a1, unsigned __int8 a2)
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB026FE4(uint64_t a1, unsigned __int8 a2)
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB027128(uint64_t a1, unsigned __int8 a2)
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t sub_1DB02724C(uint64_t a1, unsigned __int8 a2)
{
  sub_1DB09E3A4();
  sub_1DB09D794();

  return sub_1DB09E3E4();
}

uint64_t DsidType.rawValue.getter()
{
  v1 = 0x64756F6C4369;
  v2 = 1684628325;
  if (*v0 != 2)
  {
    v2 = 1869903201;
  }

  if (*v0)
  {
    v1 = 0x73656E755469;
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

uint64_t sub_1DB0273D4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v27 = *(v0 + 56);
  v6 = *(v0 + 57);

  sub_1DB042B1C(v3, v4, v5);
  v7 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B440(v1, v2, 0x696669746E656469, 0xEA00000000007265, isUniquelyReferenced_nonNull_native);
  if ((v5 & 1) == 0)
  {
    v3 = ArmandDeviceDataFieldName.rawValue.getter();
    v4 = v9;
  }

  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B440(v3, v4, 0x6D614E646C656966, 0xE900000000000065, v10);
  v11 = ArmandDataSource.rawValue.getter();
  v13 = v12;
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B440(v11, v13, 0x656372756F73, 0xE600000000000000, v14);
  v15 = sub_1DB09E1D4();
  v17 = v16;
  v18 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B440(v15, v17, 0x797469726F697270, 0xE800000000000000, v18);
  if (v6)
  {
    v19 = 1702195828;
  }

  else
  {
    v19 = 0x65736C6166;
  }

  if (v6)
  {
    v20 = 0xE400000000000000;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B440(v19, v20, 0x67656C6976697270, 0xEA00000000006465, v21);
  if ((v27 & 1) == 0)
  {
    v22 = sub_1DB09E1D4();
    v24 = v23;
    v25 = swift_isUniquelyReferenced_nonNull_native();
    sub_1DAF3B440(v22, v24, 0x4D74756F656D6974, 0xEC000000696C6C69, v25);
  }

  return v7;
}

unint64_t DeviceDataField.init(from:)@<X0>(const char *a1@<X0>, char *a2@<X8>)
{
  v3 = a1;
  v5 = sub_1DB0416A8(0, a1);
  if (v2)
  {
  }

  v7 = v5;
  v8 = v6;

  v9 = sub_1DB0416A8(1u, v3);
  v12 = v11;
  v13 = v9;

  v14 = sub_1DB0416A8(2u, v3);
  v16 = v15;

  v17._countAndFlagsBits = v14;
  v17._object = v16;
  ArmandDataSource.init(rawValue:)(v17);
  if (v96 != 15)
  {
    LODWORD(v94) = v96;

    v29._countAndFlagsBits = v13;
    v29._object = v12;
    ArmandDeviceDataFieldName.init(rawValue:)(v29);
    v30 = v96;
    if (v13 == 1145652037 && v12 == 0xE400000000000000 || (sub_1DB09E254() & 1) != 0)
    {

      v12 = 0;
      v99 = 0;
      v30 = 4;
    }

    else if (v96 == 19)
    {
      v99 = 1;
      v30 = v13;
    }

    else
    {

      v12 = 0;
      v99 = 0;
    }

    v31 = sub_1DB0416A8(3u, v3);
    v33 = v32;
    v34 = HIBYTE(v32) & 0xF;
    v35 = v31 & 0xFFFFFFFFFFFFLL;
    if ((v33 & 0x2000000000000000) != 0)
    {
      v36 = v34;
    }

    else
    {
      v36 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v36)
    {
      goto LABEL_85;
    }

    if ((v33 & 0x1000000000000000) != 0)
    {
      LOBYTE(v95[0]) = 0;
      v69 = v31;

      v39 = sub_1DB04059C(v69, v33, 10);
      v93 = v70;

      if (v93)
      {
        goto LABEL_85;
      }

      goto LABEL_98;
    }

    if ((v33 & 0x2000000000000000) != 0)
    {
      *&v96 = v31;
      *(&v96 + 1) = v33 & 0xFFFFFFFFFFFFFFLL;
      if (v31 == 43)
      {
        if (v34)
        {
          if (--v34)
          {
            v39 = 0;
            v49 = &v96 + 1;
            while (1)
            {
              v50 = *v49 - 48;
              if (v50 > 9)
              {
                break;
              }

              v51 = 10 * v39;
              if ((v39 * 10) >> 64 != (10 * v39) >> 63)
              {
                break;
              }

              v39 = v51 + v50;
              if (__OFADD__(v51, v50))
              {
                break;
              }

              ++v49;
              if (!--v34)
              {
                goto LABEL_84;
              }
            }
          }

          goto LABEL_83;
        }

LABEL_124:
        __break(1u);
        goto LABEL_125;
      }

      if (v31 != 45)
      {
        if (v34)
        {
          v39 = 0;
          v54 = &v96;
          while (1)
          {
            v55 = *v54 - 48;
            if (v55 > 9)
            {
              break;
            }

            v56 = 10 * v39;
            if ((v39 * 10) >> 64 != (10 * v39) >> 63)
            {
              break;
            }

            v39 = v56 + v55;
            if (__OFADD__(v56, v55))
            {
              break;
            }

            ++v54;
            if (!--v34)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_83;
      }

      if (v34)
      {
        if (--v34)
        {
          v39 = 0;
          v43 = &v96 + 1;
          while (1)
          {
            v44 = *v43 - 48;
            if (v44 > 9)
            {
              break;
            }

            v45 = 10 * v39;
            if ((v39 * 10) >> 64 != (10 * v39) >> 63)
            {
              break;
            }

            v39 = v45 - v44;
            if (__OFSUB__(v45, v44))
            {
              break;
            }

            ++v43;
            if (!--v34)
            {
              goto LABEL_84;
            }
          }
        }

        goto LABEL_83;
      }
    }

    else
    {
      if ((v31 & 0x1000000000000000) != 0)
      {
        v37 = ((v33 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      else
      {
        v37 = sub_1DB09DEC4();
      }

      v38 = *v37;
      if (v38 == 43)
      {
        if (v35 >= 1)
        {
          v34 = v35 - 1;
          if (v35 != 1)
          {
            v39 = 0;
            if (v37)
            {
              v46 = v37 + 1;
              while (1)
              {
                v47 = *v46 - 48;
                if (v47 > 9)
                {
                  goto LABEL_83;
                }

                v48 = 10 * v39;
                if ((v39 * 10) >> 64 != (10 * v39) >> 63)
                {
                  goto LABEL_83;
                }

                v39 = v48 + v47;
                if (__OFADD__(v48, v47))
                {
                  goto LABEL_83;
                }

                ++v46;
                if (!--v34)
                {
                  goto LABEL_84;
                }
              }
            }

            goto LABEL_75;
          }

          goto LABEL_83;
        }

        goto LABEL_123;
      }

      if (v38 != 45)
      {
        if (v35)
        {
          v39 = 0;
          if (v37)
          {
            while (1)
            {
              v52 = *v37 - 48;
              if (v52 > 9)
              {
                goto LABEL_83;
              }

              v53 = 10 * v39;
              if ((v39 * 10) >> 64 != (10 * v39) >> 63)
              {
                goto LABEL_83;
              }

              v39 = v53 + v52;
              if (__OFADD__(v53, v52))
              {
                goto LABEL_83;
              }

              ++v37;
              if (!--v35)
              {
                goto LABEL_75;
              }
            }
          }

          goto LABEL_75;
        }

LABEL_83:
        v39 = 0;
        LOBYTE(v34) = 1;
LABEL_84:
        LOBYTE(v95[0]) = v34;
        if (v34)
        {
LABEL_85:

          v94 = v30;
          if (qword_1EE301E08 != -1)
          {
            swift_once();
          }

          v57 = MEMORY[0x1E69E7CC0];
          v58 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
          if (*(v58 + 16))
          {
            v59 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
            if (v60)
            {
              sub_1DAF409DC(*(v58 + 56) + 32 * v59, &v96);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
              if (swift_dynamicCast())
              {
                v57 = *&v95[0];
              }
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v57 = sub_1DAF72EC0(0, *(v57 + 2) + 1, 1, v57);
          }

          v62 = *(v57 + 2);
          v61 = *(v57 + 3);
          v63 = v62 + 1;
          if (v62 >= v61 >> 1)
          {
            v91 = sub_1DAF72EC0((v61 > 1), v62 + 1, 1, v57);
            v63 = v62 + 1;
            v57 = v91;
          }

          *(v57 + 2) = v63;
          v64 = &v57[56 * v62];
          *(v64 + 4) = 0xD000000000000040;
          *(v64 + 5) = 0x80000001DB0CA860;
          *(v64 + 6) = 0xD000000000000023;
          *(v64 + 7) = 0x80000001DB0CA830;
          *(v64 + 8) = 0x6F72662874696E69;
          *(v64 + 9) = 0xEB00000000293A6DLL;
          *(v64 + 10) = 1029;
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          *&v96 = v57;
          sub_1DAF40D20(&v96, v95);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1DAF3B11C(v95, 0x636F766E4949444FLL, 0xEE00736E6F697461, isUniquelyReferenced_nonNull_native);
          v66 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v67 = sub_1DB09D6B4();
LABEL_96:
          v68 = sub_1DB09D604();
          [v66 initWithDomain:v67 code:-3183 userInfo:v68];

          swift_willThrow();

          return sub_1DB041AD8(v94, v12, v99);
        }

LABEL_98:
        v71 = sub_1DB0416A8(5u, v3);
        if (v71 == 1702195828 && v72 == 0xE400000000000000 || (v73 = v71, v74 = v72, (sub_1DB09E254() & 1) != 0))
        {
          v75 = 1;
          if (!*(v3 + 2))
          {
            goto LABEL_108;
          }

          goto LABEL_102;
        }

        if (v73 == 0x65736C6166 && v74 == 0xE500000000000000 || (sub_1DB09E254() & 1) != 0)
        {
          v75 = 0;
          if (!*(v3 + 2))
          {
            goto LABEL_108;
          }

LABEL_102:
          v76 = sub_1DAF35210(0x4D74756F656D6974, 0xEC000000696C6C69);
          if (v77)
          {
            v78 = (*(v3 + 7) + 16 * v76);
            v79 = v78[1];
            v92 = *v78;

            result = sub_1DB0284B0(v92, v79);
LABEL_109:
            v98 = v80 & 1;
            v81 = v99;
            *a2 = v7;
            *(a2 + 1) = v8;
            *(a2 + 2) = v30;
            *(a2 + 3) = v12;
            a2[32] = v81;
            a2[33] = v94;
            *(a2 + 5) = v39;
            *(a2 + 6) = result;
            a2[56] = v80 & 1;
            a2[57] = v75;
            return result;
          }

LABEL_108:

          result = 0;
          v80 = 1;
          goto LABEL_109;
        }

        v94 = v30;

        v3 = "Unable to initialize DeviceDataField from dict, invalid privileged";
        a2 = "CoreODIEssentials/JSONObjects.swift";
        if (qword_1EE301E08 == -1)
        {
LABEL_111:
          v82 = v3 - 32;
          v83 = MEMORY[0x1E69E7CC0];
          v84 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
          if (*(v84 + 16))
          {
            v85 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
            if (v86)
            {
              sub_1DAF409DC(*(v84 + 56) + 32 * v85, &v96);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
              if (swift_dynamicCast())
              {
                v83 = *&v95[0];
              }
            }
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v83 = sub_1DAF72EC0(0, *(v83 + 2) + 1, 1, v83);
          }

          v88 = *(v83 + 2);
          v87 = *(v83 + 3);
          if (v88 >= v87 >> 1)
          {
            v83 = sub_1DAF72EC0((v87 > 1), v88 + 1, 1, v83);
          }

          *(v83 + 2) = v88 + 1;
          v89 = &v83[56 * v88];
          *(v89 + 4) = 0xD000000000000042;
          *(v89 + 5) = v82 | 0x8000000000000000;
          *(v89 + 6) = 0xD000000000000023;
          *(v89 + 7) = (a2 - 32) | 0x8000000000000000;
          *(v89 + 8) = 0x6F72662874696E69;
          *(v89 + 9) = 0xEB00000000293A6DLL;
          *(v89 + 10) = 1034;
          v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
          *&v96 = v83;
          sub_1DAF40D20(&v96, v95);
          v90 = swift_isUniquelyReferenced_nonNull_native();
          sub_1DAF3B11C(v95, 0x636F766E4949444FLL, 0xEE00736E6F697461, v90);
          v66 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
          v67 = sub_1DB09D6B4();
          goto LABEL_96;
        }

LABEL_125:
        swift_once();
        goto LABEL_111;
      }

      if (v35 >= 1)
      {
        v34 = v35 - 1;
        if (v35 != 1)
        {
          v39 = 0;
          if (v37)
          {
            v40 = v37 + 1;
            while (1)
            {
              v41 = *v40 - 48;
              if (v41 > 9)
              {
                goto LABEL_83;
              }

              v42 = 10 * v39;
              if ((v39 * 10) >> 64 != (10 * v39) >> 63)
              {
                goto LABEL_83;
              }

              v39 = v42 - v41;
              if (__OFSUB__(v42, v41))
              {
                goto LABEL_83;
              }

              ++v40;
              if (!--v34)
              {
                goto LABEL_84;
              }
            }
          }

LABEL_75:
          LOBYTE(v34) = 0;
          goto LABEL_84;
        }

        goto LABEL_83;
      }

      __break(1u);
    }

    __break(1u);
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  if (qword_1EE301E08 != -1)
  {
    swift_once();
  }

  v18 = MEMORY[0x1E69E7CC0];
  v19 = sub_1DAF3E128(MEMORY[0x1E69E7CC0]);
  if (*(v19 + 16))
  {
    v20 = sub_1DAF35210(0x636F766E4949444FLL, 0xEE00736E6F697461);
    if (v21)
    {
      sub_1DAF409DC(*(v19 + 56) + 32 * v20, &v96);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
      if (swift_dynamicCast())
      {
        v18 = *&v95[0];
      }
    }
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v18 = sub_1DAF72EC0(0, *(v18 + 2) + 1, 1, v18);
  }

  v23 = *(v18 + 2);
  v22 = *(v18 + 3);
  if (v23 >= v22 >> 1)
  {
    v18 = sub_1DAF72EC0((v22 > 1), v23 + 1, 1, v18);
  }

  *(v18 + 2) = v23 + 1;
  v24 = &v18[56 * v23];
  *(v24 + 4) = 0xD000000000000042;
  *(v24 + 5) = 0x80000001DB0CA7E0;
  *(v24 + 6) = 0xD000000000000023;
  *(v24 + 7) = 0x80000001DB0CA830;
  *(v24 + 8) = 0x6F72662874696E69;
  *(v24 + 9) = 0xEB00000000293A6DLL;
  *(v24 + 10) = 1013;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0EAC0, &qword_1DB0A3F60);
  *&v96 = v18;
  sub_1DAF40D20(&v96, v95);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1DAF3B11C(v95, 0x636F766E4949444FLL, 0xEE00736E6F697461, v25);
  v26 = objc_allocWithZone(MEMORY[0x1E696ABC0]);
  v27 = sub_1DB09D6B4();
  v28 = sub_1DB09D604();
  [v26 initWithDomain:v27 code:-3183 userInfo:v28];

  swift_willThrow();
}

uint64_t sub_1DB0283F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  return v3 | ((v1 == v2) << 8);
}

uint64_t sub_1DB028438()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DB02846C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void __swiftcall TSID.init(tsid:session_id:ts_nonce:)(CoreODIEssentials::TSID *__return_ptr retstr, Swift::String tsid, Swift::String session_id, Swift::String_optional ts_nonce)
{
  retstr->tsid = tsid;
  retstr->session_id = session_id;
  retstr->ts_nonce = ts_nonce;
}

unint64_t sub_1DB0284B0(unint64_t result, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v3 = result & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v4 = result & 0xFFFFFFFFFFFFLL;
  }

  if (!v4)
  {

    return 0;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v27[0] = result;
      v27[1] = a2 & 0xFFFFFFFFFFFFFFLL;
      if (result == 43)
      {
        if (v2)
        {
          v3 = v2 - 1;
          if (v2 != 1)
          {
            v6 = 0;
            v16 = v27 + 1;
            while (1)
            {
              v17 = *v16 - 48;
              if (v17 > 9)
              {
                break;
              }

              v18 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                break;
              }

              v6 = v18 + v17;
              if (__OFADD__(v18, v17))
              {
                break;
              }

              ++v16;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_61;
        }

LABEL_72:
        __break(1u);
        return result;
      }

      if (result != 45)
      {
        if (v2)
        {
          v6 = 0;
          v21 = v27;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            v23 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v23 + v22;
            if (__OFADD__(v23, v22))
            {
              break;
            }

            ++v21;
            if (!--v2)
            {
              goto LABEL_60;
            }
          }
        }

        goto LABEL_61;
      }

      if (v2)
      {
        v3 = v2 - 1;
        if (v2 != 1)
        {
          v6 = 0;
          v10 = v27 + 1;
          while (1)
          {
            v11 = *v10 - 48;
            if (v11 > 9)
            {
              break;
            }

            v12 = 10 * v6;
            if ((v6 * 10) >> 64 != (10 * v6) >> 63)
            {
              break;
            }

            v6 = v12 - v11;
            if (__OFSUB__(v12, v11))
            {
              break;
            }

            ++v10;
            if (!--v3)
            {
              goto LABEL_62;
            }
          }
        }

        goto LABEL_61;
      }
    }

    else
    {
      if ((result & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = sub_1DB09DEC4();
        v3 = v26;
      }

      v5 = *result;
      if (v5 == 43)
      {
        if (v3 >= 1)
        {
          if (--v3)
          {
            v6 = 0;
            if (result)
            {
              v13 = (result + 1);
              while (1)
              {
                v14 = *v13 - 48;
                if (v14 > 9)
                {
                  goto LABEL_61;
                }

                v15 = 10 * v6;
                if ((v6 * 10) >> 64 != (10 * v6) >> 63)
                {
                  goto LABEL_61;
                }

                v6 = v15 + v14;
                if (__OFADD__(v15, v14))
                {
                  goto LABEL_61;
                }

                ++v13;
                if (!--v3)
                {
                  goto LABEL_62;
                }
              }
            }

            goto LABEL_60;
          }

          goto LABEL_61;
        }

        goto LABEL_71;
      }

      if (v5 != 45)
      {
        if (v3)
        {
          v6 = 0;
          if (result)
          {
            while (1)
            {
              v19 = *result - 48;
              if (v19 > 9)
              {
                goto LABEL_61;
              }

              v20 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v20 + v19;
              if (__OFADD__(v20, v19))
              {
                goto LABEL_61;
              }

              ++result;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

          goto LABEL_60;
        }

LABEL_61:
        v6 = 0;
        LOBYTE(v3) = 1;
        goto LABEL_62;
      }

      if (v3 >= 1)
      {
        if (--v3)
        {
          v6 = 0;
          if (result)
          {
            v7 = (result + 1);
            while (1)
            {
              v8 = *v7 - 48;
              if (v8 > 9)
              {
                goto LABEL_61;
              }

              v9 = 10 * v6;
              if ((v6 * 10) >> 64 != (10 * v6) >> 63)
              {
                goto LABEL_61;
              }

              v6 = v9 - v8;
              if (__OFSUB__(v9, v8))
              {
                goto LABEL_61;
              }

              ++v7;
              if (!--v3)
              {
                goto LABEL_62;
              }
            }
          }

LABEL_60:
          LOBYTE(v3) = 0;
LABEL_62:
          v28 = v3;
          v24 = v3;
          goto LABEL_63;
        }

        goto LABEL_61;
      }

      __break(1u);
    }

    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v6 = sub_1DB04059C(result, a2, 10);
  v24 = v25;
LABEL_63:

  if (v24)
  {
    return 0;
  }

  else
  {
    return v6;
  }
}

void sub_1DB0287B8(void *a3@<X8>)
{
  v158 = a3;
  v210 = *MEMORY[0x1E69E9840];
  *&v192 = sub_1DB09D564();
  v193 = *(v192 - 8);
  MEMORY[0x1EEE9AC00](v192);
  v191 = &v156 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = sub_1DB09D5F4();
  v189 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v190 = &v156 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DB09D734();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v156 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  v165 = v3[1];
  v11 = v3[2];
  v12 = v3[3];
  v156 = v10;
  v157 = v11;
  v13 = v3[4];
  v167 = v3[5];
  v168 = v13;
  v14 = v3[6];
  v176 = v3[7];
  v177 = v14;
  v16 = v3[8];
  v15 = v3[9];
  v17 = v3[11];
  v172 = v3[10];
  v173 = v15;
  v18 = v3[12];
  v178 = v3[13];
  v179 = v18;
  v19 = v3[14];
  v20 = v3[15];
  v169 = v17;
  v170 = v19;
  v21 = v3[17];
  v174 = v3[16];
  v175 = v20;
  v171 = v21;
  v23 = v3[18];
  v22 = v3[19];
  v24 = v3[21];
  v161 = v3[20];
  v162 = v22;
  v163 = v3[22];
  v164 = v24;
  sub_1DB09D714();
  v25 = sub_1DB09D6D4();
  v27 = v26;
  (*(v7 + 8))(v9, v6);
  if (v27 >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    v28 = v25;
  }

  v29 = 0xC000000000000000;
  if (v27 >> 60 != 15)
  {
    v29 = v27;
  }

  v186 = v29;
  v187 = v28;

  v185 = v23;
  v31 = sub_1DB056618(v30);
  v159 = v16;
  if (v16)
  {
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
  }

  v32 = sub_1DB0464BC(v16, v31);

  v33 = v169;
  if (v169)
  {
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  v34 = sub_1DB0464BC(v33, v32);

  v35 = v170;
  if (v170)
  {
  }

  else
  {
    v35 = MEMORY[0x1E69E7CC0];
  }

  v36 = sub_1DB0464BC(v35, v34);

  v37 = v171;
  v166 = v12;
  if (v171)
  {
  }

  else
  {
    v37 = MEMORY[0x1E69E7CC0];
  }

  v38 = sub_1DB0464BC(v37, v36);

  v39 = v38 + 56;
  v40 = 1 << *(v38 + 32);
  v41 = -1;
  if (v40 < 64)
  {
    v41 = ~(-1 << v40);
  }

  v42 = v41 & *(v38 + 56);
  v43 = (v40 + 63) >> 6;
  v182 = (v189 + 8);
  v183 = v193 + 1;
  v188 = v38;

  v44 = 0;
  v45 = 0;
  v46 = MEMORY[0x1E69E7CC8];
  v180 = v43;
  v181 = v39;
LABEL_23:
  if (v42)
  {
    v50 = v46;
    v51 = v44;
    goto LABEL_29;
  }

  while (1)
  {
    v51 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
    }

    if (v51 >= v43)
    {
      break;
    }

    v42 = *(v39 + 8 * v51);
    ++v44;
    if (v42)
    {
      v50 = v46;
LABEL_29:
      v52 = (*(v188 + 48) + ((v51 << 10) | (16 * __clz(__rbit64(v42)))));
      v54 = *v52;
      v53 = v52[1];
      sub_1DAF40674(*v52, v53);
      v55 = v190;
      sub_1DB09D5E4();
      sub_1DAF40674(v54, v53);
      sub_1DB040F20(v54, v53, v55);
      v193 = v54;
      v56 = v53;
      sub_1DAF40780(v54, v53);
      v58 = v186;
      v57 = v187;
      sub_1DAF40674(v187, v186);
      sub_1DB040F20(v57, v58, v55);
      v189 = v45;
      sub_1DAF40780(v57, v58);
      sub_1DB09D5D4();
      sub_1DB049B94(&qword_1ECC0FAB0, 255, MEMORY[0x1E69663E0], MEMORY[0x1E69663D8]);
      v59 = sub_1DB09D5C4();
      v61 = sub_1DB0403A0(v59, v60);

      v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0E4A0, &qword_1DB0A0968);
      *(&v202 + 1) = v62;
      *&v203 = sub_1DAF4AA8C(&qword_1EE301910, &qword_1ECC0E4A0, &qword_1DB0A0968, MEMORY[0x1E6969E08]);
      *&v201 = v61;
      v63 = __swift_project_boxed_opaque_existential_1(&v201, v62);
      v64 = *v63;
      v65 = *(*v63 + 16);
      if (v65)
      {
        if (v65 <= 0xE)
        {
          *(&v194 + 6) = 0;
          *&v194 = 0;
          BYTE14(v194) = v65;
          memcpy(&v194, (v64 + 32), v65);
          v68 = v194;
          v69 = v160 & 0xF00000000000000 | DWORD2(v194) | ((WORD6(v194) | (BYTE14(v194) << 16)) << 32);
          v160 = v69;
        }

        else
        {
          sub_1DB09CD84();
          swift_allocObject();
          v66 = sub_1DB09CD34();
          v67 = v66;
          if (v65 >= 0x7FFFFFFF)
          {
            sub_1DB09CFB4();
            v68 = swift_allocObject();
            *(v68 + 16) = 0;
            *(v68 + 24) = v65;
            v69 = v67 | 0x8000000000000000;
          }

          else
          {
            v68 = v65 << 32;
            v69 = v66 | 0x4000000000000000;
          }
        }
      }

      else
      {
        v68 = 0;
        v69 = 0xC000000000000000;
      }

      v70 = v56;
      __swift_destroy_boxed_opaque_existential_1Tm(&v201);
      v71 = sub_1DB09D064();
      v73 = v72;
      sub_1DAF40780(v68, v69);
      (*v183)(v191, v192);
      (*v182)(v190, v184);
      v74 = v50;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v201 = v50;
      v77 = sub_1DAF354E0(v193, v70);
      v78 = v50[2];
      v79 = (v76 & 1) == 0;
      v80 = v78 + v79;
      if (__OFADD__(v78, v79))
      {
        goto LABEL_81;
      }

      v81 = v76;
      if (v74[3] >= v80)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DAF3D01C();
        }
      }

      else
      {
        sub_1DAF39584(v80, isUniquelyReferenced_nonNull_native);
        v82 = sub_1DAF354E0(v193, v70);
        if ((v81 & 1) != (v83 & 1))
        {
          goto LABEL_85;
        }

        v77 = v82;
      }

      v42 &= v42 - 1;
      v46 = v201;
      if (v81)
      {
        v47 = (*(v201 + 56) + 16 * v77);
        v48 = *v47;
        v49 = v47[1];
        *v47 = v71;
        v47[1] = v73;
        sub_1DAF40780(v48, v49);
        sub_1DAF40780(v193, v70);
        goto LABEL_22;
      }

      *(v201 + 8 * (v77 >> 6) + 64) |= 1 << v77;
      v84 = (v46[6] + 16 * v77);
      *v84 = v193;
      v84[1] = v70;
      v85 = (v46[7] + 16 * v77);
      *v85 = v71;
      v85[1] = v73;
      v86 = v46[2];
      v87 = __OFADD__(v86, 1);
      v88 = v86 + 1;
      if (v87)
      {
        goto LABEL_82;
      }

      v46[2] = v88;
LABEL_22:
      v44 = v51;
      v45 = v189;
      v43 = v180;
      v39 = v181;
      goto LABEL_23;
    }
  }

  v193 = v46;

  if (v159)
  {
    *&v194 = v177;
    *(&v194 + 1) = v176;
    *&v195 = v159;
    sub_1DAF40674(v177, v176);

    ProfileSetObject.ProfileBagSet.ProfileBag.updateFileIDs(fileIdMapping:)(v193, &v201);
    sub_1DAF40780(v194, *(&v194 + 1));

    v176 = *(&v201 + 1);
    v177 = v201;
    v191 = v202;
  }

  else
  {
    v191 = 0;
  }

  v90 = v170;
  v89 = v171;
  if (v169)
  {
    *&v194 = v173;
    *(&v194 + 1) = v172;
    *&v195 = v169;
    sub_1DAF40674(v173, v172);

    ProfileSetObject.ProfileBagSet.ProfileBag.updateFileIDs(fileIdMapping:)(v193, &v201);
    sub_1DAF40780(v194, *(&v194 + 1));

    v172 = *(&v201 + 1);
    v173 = v201;
    v190 = v202;
    if (v90)
    {
      goto LABEL_50;
    }

LABEL_53:
    v188 = 0;
    v189 = v45;
    if (v89)
    {
      goto LABEL_51;
    }

    goto LABEL_54;
  }

  v190 = 0;
  if (!v170)
  {
    goto LABEL_53;
  }

LABEL_50:
  *&v194 = v179;
  *(&v194 + 1) = v178;
  *&v195 = v90;
  sub_1DAF40674(v179, v178);

  ProfileSetObject.ProfileBagSet.ProfileBag.updateFileIDs(fileIdMapping:)(v193, &v201);
  sub_1DAF40780(v194, *(&v194 + 1));

  v178 = *(&v201 + 1);
  v179 = v201;
  v188 = v202;
  v189 = v45;
  if (v89)
  {
LABEL_51:
    *&v194 = v175;
    *(&v194 + 1) = v174;
    *&v195 = v89;
    sub_1DAF40674(v175, v174);

    ProfileSetObject.ProfileBagSet.ProfileBag.updateFileIDs(fileIdMapping:)(v193, &v201);
    sub_1DAF40780(v194, *(&v194 + 1));

    v174 = *(&v201 + 1);
    v175 = v201;
    v184 = v202;
    goto LABEL_55;
  }

LABEL_54:
  v184 = 0;
LABEL_55:
  v91 = v185 + 64;
  v92 = 1 << *(v185 + 32);
  v93 = -1;
  if (v92 < 64)
  {
    v93 = ~(-1 << v92);
  }

  v94 = v93 & *(v185 + 64);
  v95 = (v92 + 63) >> 6;

  v96 = 0;
  v183 = MEMORY[0x1E69E7CC8];
LABEL_77:
  v117 = v193;
  while (1)
  {
    do
    {
      if (v94)
      {
        v97 = v94;
        goto LABEL_64;
      }

      do
      {
        v98 = v96 + 1;
        if (__OFADD__(v96, 1))
        {
          goto LABEL_80;
        }

        if (v98 >= v95)
        {

          v126 = v176;
          v125 = v177;
          *&v194 = v177;
          *(&v194 + 1) = v176;
          v127 = v191;
          *&v195 = v191;
          *(&v195 + 1) = v173;
          *&v196 = v172;
          *(&v196 + 1) = v190;
          v129 = v178;
          v128 = v179;
          *&v197 = v179;
          *(&v197 + 1) = v178;
          *&v198 = v188;
          *(&v198 + 1) = v175;
          v130 = v183;
          *&v199 = v174;
          *(&v199 + 1) = v184;
          v200 = v183;
          v131 = v158;
          v132 = v165;
          *v158 = v156;
          v131[1] = v132;
          v133 = v166;
          v134 = v167;
          v131[2] = v157;
          v131[3] = v133;
          v136 = v161;
          v135 = v162;
          v131[18] = v130;
          v131[19] = v135;
          v137 = v195;
          *(v131 + 3) = v194;
          *(v131 + 4) = v137;
          v138 = v199;
          *(v131 + 7) = v198;
          *(v131 + 8) = v138;
          v139 = v197;
          *(v131 + 5) = v196;
          *(v131 + 6) = v139;
          v140 = v168;
          v131[4] = v168;
          v131[5] = v134;
          v141 = v163;
          v142 = v164;
          v131[20] = v136;
          v131[21] = v142;
          v131[22] = v141;
          type metadata accessor for ProfileSetObject.SingleValidatedConfigProvider();
          v143 = swift_allocObject();
          sub_1DAF40674(v140, v134);
          sub_1DAF40674(v140, v134);
          sub_1DB042284(v125, v126, v127);
          v145 = v172;
          v144 = v173;
          v146 = v190;
          sub_1DB042284(v173, v172, v190);
          v147 = v188;
          sub_1DB042284(v128, v129, v188);
          v149 = v174;
          v148 = v175;
          v150 = v184;
          sub_1DB042284(v175, v174, v184);

          sub_1DB0423AC(&v194, &v201);
          sub_1DAF40674(v162, v161);
          sub_1DAF40674(v164, v163);
          swift_defaultActor_initialize();
          sub_1DAF40780(v187, v186);
          sub_1DB04236C(v177, v176, v191);
          sub_1DB04236C(v144, v145, v146);
          sub_1DB04236C(v179, v178, v147);
          sub_1DB04236C(v148, v149, v150);
          sub_1DB0423E4(&v194);
          sub_1DB04210C(&v201);
          v151 = v208;
          *(v143 + 224) = v207;
          *(v143 + 240) = v151;
          *(v143 + 256) = v209;
          v152 = v204;
          *(v143 + 160) = v203;
          *(v143 + 176) = v152;
          v153 = v206;
          *(v143 + 192) = v205;
          *(v143 + 208) = v153;
          v154 = v202;
          *(v143 + 128) = v201;
          *(v143 + 144) = v154;
          v155 = v167;
          *(v143 + 112) = v168;
          *(v143 + 120) = v155;
          v131[23] = v143;
          return;
        }

        v97 = *(v91 + 8 * v98);
        ++v96;
      }

      while (!v97);
      v96 = v98;
LABEL_64:
      v94 = (v97 - 1) & v97;
    }

    while (!*(v117 + 16));
    v99 = __clz(__rbit64(v97)) | (v96 << 6);
    v100 = (*(v185 + 48) + 16 * v99);
    v102 = *v100;
    v101 = v100[1];
    v192 = *(*(v185 + 56) + 16 * v99);
    sub_1DAF40674(v102, v101);
    v103 = v192;
    sub_1DAF40674(v192, *(&v192 + 1));
    sub_1DAF40674(v102, v101);
    sub_1DAF40674(v103, *(&v103 + 1));
    v104 = sub_1DAF354E0(v102, v101);
    if ((v105 & 1) == 0)
    {
      sub_1DAF40780(v102, v101);
      sub_1DAF40780(v103, *(&v103 + 1));
      sub_1DAF40780(v102, v101);
      sub_1DAF40780(v103, *(&v103 + 1));
      goto LABEL_77;
    }

    v106 = (v193[7] + 16 * v104);
    v107 = *v106;
    v181 = v106[1];
    v108 = v181;
    v182 = v107;
    sub_1DAF40674(v103, *(&v103 + 1));
    sub_1DAF40674(v182, v108);
    v109 = v183;
    LODWORD(v180) = swift_isUniquelyReferenced_nonNull_native();
    *&v201 = v109;
    v111 = sub_1DAF354E0(v182, v181);
    v112 = v109[2];
    v113 = (v110 & 1) == 0;
    v114 = v112 + v113;
    if (__OFADD__(v112, v113))
    {
      goto LABEL_83;
    }

    if (v109[3] < v114)
    {
      break;
    }

    v117 = v193;
    v118 = v192;
    if ((v180 & 1) == 0)
    {
      LODWORD(v183) = v110;
      v180 = v111;
      sub_1DAF3D01C();
      v111 = v180;
      LOBYTE(v110) = v183;
      v118 = v192;
      v117 = v193;
    }

LABEL_72:
    v183 = v201;
    if (v110)
    {
      v119 = (*(v201 + 56) + 16 * v111);
      v120 = *v119;
      v121 = v119[1];
      *v119 = v118;
      sub_1DAF40780(v120, v121);
      sub_1DAF40780(v102, v101);
      sub_1DAF40780(v182, v181);
      sub_1DAF40780(v103, *(&v103 + 1));
      sub_1DAF40780(v102, v101);
      sub_1DAF40780(v103, *(&v103 + 1));
    }

    else
    {
      *(v201 + 8 * (v111 >> 6) + 64) |= 1 << v111;
      v122 = (v183[6] + 16 * v111);
      *v122 = v182;
      v122[1] = v181;
      *(v183[7] + 16 * v111) = v118;
      sub_1DAF40780(v102, v101);
      sub_1DAF40780(v103, *(&v103 + 1));
      sub_1DAF40780(v102, v101);
      sub_1DAF40780(v103, *(&v103 + 1));
      v123 = v183[2];
      v87 = __OFADD__(v123, 1);
      v124 = v123 + 1;
      if (v87)
      {
        goto LABEL_84;
      }

      v183[2] = v124;
    }
  }

  LODWORD(v183) = v110;
  sub_1DAF39584(v114, v180);
  v115 = sub_1DAF354E0(v182, v181);
  v116 = v110 & 1;
  LOBYTE(v110) = v183;
  if ((v183 & 1) == v116)
  {
    v111 = v115;
    v117 = v193;
    v118 = v192;
    goto LABEL_72;
  }

LABEL_85:
  sub_1DB09E2E4();
  __break(1u);
}