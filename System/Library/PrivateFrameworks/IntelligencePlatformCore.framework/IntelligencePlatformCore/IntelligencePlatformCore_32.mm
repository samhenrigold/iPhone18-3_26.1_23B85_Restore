uint64_t sub_1C46C903C()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9C88();
  sub_1C4406A6C();
  sub_1C44000F4();
  v11 = sub_1C46C8B74(v6, v7, v8, v9, v10);
  v12 = sub_1C46C85D8(v6);
  sub_1C442C7A0();
  sub_1C440A900();
  v17 = sub_1C46C8B74(v6, v13, v14, v15, v16);
  v18 = sub_1C46C455C(v12, v11);
  v19 = sub_1C46C455C(v17, v18);
  (*(v2 + 8))(v6, v0);
  return v19;
}

uint64_t sub_1C46C915C(uint64_t a1, unint64_t a2)
{
  v4 = 0xEE0064657463656ELL;
  v5 = 0x6E6F635F69666977;
  v6 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = a1 == 0x6E6F635F69666977 && a2 == 0xEE0064657463656ELL;
  if (v13 || (sub_1C43FD4D8(0x6E6F635F69666977, 0xEE0064657463656ELL) & 1) != 0)
  {
    sub_1C4EF9C88();
    v14 = "DeviceWirelessSignal: device wifi event is nil";
    v15 = sub_1C46C8AAC;
LABEL_7:
    sub_1C46C8B74(v12, v15, v5, v4, v14);
LABEL_8:
    (*(v8 + 8))(v12, v6);
    v16 = sub_1C44F9274(a1);

    return v16;
  }

  v4 = 0xED000065646F6D5FLL;
  v5 = 0x656E616C70726961;
  v18 = a1 == 0x656E616C70726961 && a2 == 0xED000065646F6D5FLL;
  if (v18 || (sub_1C43FD4D8(0x656E616C70726961, 0xED000065646F6D5FLL) & 1) != 0)
  {
    sub_1C4EF9C88();
    v14 = "DeviceWirelessSignal: airplaneMode event is nil";
    v15 = sub_1C46C89E4;
    goto LABEL_7;
  }

  v19 = a1 == 0xD000000000000028 && 0x80000001C4F923A0 == a2;
  if (v19 || (sub_1C43FD4D8(0xD000000000000028, 0x80000001C4F923A0) & 1) != 0 || (a1 == 0xD000000000000012 ? (v20 = 0x80000001C4F8FC90 == a2) : (v20 = 0), v20 || (sub_1C43FD4D8(0xD000000000000012, 0x80000001C4F8FC90) & 1) != 0))
  {
    sub_1C4EF9C88();
    sub_1C46C85D8(v12);
    goto LABEL_8;
  }

  if (qword_1EDDFECB0 != -1)
  {
    sub_1C43FFB88(&qword_1EDDFECB0);
  }

  v21 = sub_1C4F00978();
  sub_1C43FCEE8(v21, qword_1EDDFECB8);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v22 = sub_1C4F00968();
  v23 = sub_1C4F01CF8();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v26 = v25;
    *v24 = 136315138;
    *(v24 + 4) = sub_1C441D828(a1, a2, &v26);
    _os_log_impl(&dword_1C43F8000, v22, v23, "Feature with name %s doesn't exist", v24, 0xCu);
    sub_1C440962C(v25);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  return 0;
}

unint64_t sub_1C46C9584(uint64_t a1)
{
  result = sub_1C46C95AC();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C46C95AC()
{
  result = qword_1EC0BB370;
  if (!qword_1EC0BB370)
  {
    type metadata accessor for DeviceWirelessSignal();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB370);
  }

  return result;
}

_BYTE *sub_1C46C9600(_BYTE *a1, uint64_t a2)
{
  v4 = a1;
  v17[1] = *MEMORY[0x1E69E9840];
  v5 = a1[32];
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v4 = sub_1C45867F0(v16, v7, v4, a2);
      MEMORY[0x1C6942830](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x1EEE9AC00](v8);
  v9 = v17 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0);
  sub_1C4501018(0, v7, v9);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4586AB8(v9, v7, v4, a2, v10, v11, v12, v13);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v14;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

uint64_t sub_1C46C97DC(uint64_t a1, void (*a2)(void *__return_ptr, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = a1;
    v40 = MEMORY[0x1E69E7CC0];
    sub_1C459DE70(0, v2, 0);
    v38 = v40;
    result = sub_1C4703354();
    v8 = result;
    v9 = 0;
    v37 = v4 + 64;
    v32 = v6;
    v33 = v2;
    v31 = v4 + 72;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v4 + 32))
    {
      v10 = v8 >> 6;
      if ((*(v37 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v4 + 36) != v6)
      {
        goto LABEL_24;
      }

      v36 = v6;
      v35 = v7;
      v11 = (*(v4 + 48) + 16 * v8);
      v12 = *v11;
      v13 = v11[1];
      v14 = (*(v4 + 56) + 16 * v8);
      v15 = v4;
      v16 = *v14;
      v17 = v14[1];
      __src[0] = v12;
      __src[1] = v13;
      swift_bridgeObjectRetain_n();
      swift_unknownObjectRetain();
      a2(&__src[2], v12, v13, v16, v17);
      swift_unknownObjectRelease();

      v18 = v38;
      v40 = v38;
      v20 = *(v38 + 16);
      v19 = *(v38 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1C459DE70(v19 > 1, v20 + 1, 1);
        v18 = v40;
      }

      *(v18 + 16) = v20 + 1;
      v38 = v18;
      result = memcpy((v18 + 80 * v20 + 32), __src, 0x49uLL);
      v21 = 1 << *(v15 + 32);
      if (v8 >= v21)
      {
        goto LABEL_25;
      }

      v22 = *(v37 + 8 * v10);
      if ((v22 & (1 << v8)) == 0)
      {
        goto LABEL_26;
      }

      v4 = v15;
      if (*(v15 + 36) != v36)
      {
        goto LABEL_27;
      }

      v23 = v22 & (-2 << (v8 & 0x3F));
      if (v23)
      {
        v21 = __clz(__rbit64(v23)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v24 = v33;
      }

      else
      {
        v25 = v10 << 6;
        v26 = v10 + 1;
        v27 = (v31 + 8 * v10);
        v24 = v33;
        while (v26 < (v21 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            result = sub_1C440951C(v8, v36, v35 & 1);
            v21 = __clz(__rbit64(v28)) + v25;
            goto LABEL_19;
          }
        }

        result = sub_1C440951C(v8, v36, v35 & 1);
      }

LABEL_19:
      v7 = 0;
      ++v9;
      v8 = v21;
      v6 = v32;
      if (v9 == v24)
      {
        v3 = v38;
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  else
  {
LABEL_21:
    v30 = sub_1C4812268(v3);

    return sub_1C4BA0398(v30);
  }

  return result;
}

void sub_1C46C9AB4(uint64_t a1, void (*a2)(uint64_t *__return_ptr, uint64_t, uint64_t, void *))
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v34 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v7 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v8 = v7;
    if (!v5)
    {
      break;
    }

LABEL_8:
    v9 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v10 = v9 | (v7 << 6);
    v11 = (*(v34 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    sub_1C442E860(*(v34 + 56) + 40 * v10, &v33);
    v32[0] = v12;
    v32[1] = v13;
    sub_1C46C9CF0(v32, &v28);
    v14 = v28;
    v15 = v29;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    a2(v31, v14, v15, v30);
    sub_1C440962C(v30);

    v16 = v31[0];
    v17 = v31[1];
    v18 = v31[2];
    if (v31[0])
    {
      sub_1C46C9CF0(v32, &v28);
      v24 = v29;
      v25 = v28;
      sub_1C440962C(v30);
      sub_1C46C9DA0(v32);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458A624();
        v26 = v22;
      }

      v19 = *(v26 + 16);
      v20 = v19 + 1;
      if (v19 >= *(v26 + 24) >> 1)
      {
        sub_1C458A624();
        v20 = v19 + 1;
        v26 = v23;
      }

      *(v26 + 16) = v20;
      v21 = (v26 + 40 * v19);
      v21[4] = v25;
      v21[5] = v24;
      v21[6] = v16;
      v21[7] = v17;
      v21[8] = v18;
    }

    else
    {
      sub_1C46C9D60(0);
      sub_1C46C9DA0(v32);
    }
  }

  while (1)
  {
    v7 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v7 >= v6)
    {

      sub_1C4BA01CC(v26);
      return;
    }

    v5 = *(v2 + 8 * v7);
    ++v8;
    if (v5)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_1C46C9CF0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB378, &qword_1C4F1F228);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46C9D60(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1C46C9DA0(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB378, &qword_1C4F1F228);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46C9E08(uint64_t a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E6966A18]) init];
  v5 = [objc_allocWithZone(MEMORY[0x1E69B8A58]) init];
  v6 = objc_allocWithZone(MEMORY[0x1E69B8DB8]);
  v7 = v5;
  v8 = [v6 init];
  v9 = swift_allocObject();
  *(v9 + 80) = sub_1C4461BB8(0, &unk_1EDDF0560, 0x1E69B8A58);
  *(v9 + 88) = &off_1F43F72C0;
  *(v9 + 56) = v7;
  *(v9 + 120) = sub_1C4461BB8(0, &qword_1EDDF0450, 0x1E69B8DB8);
  *(v9 + 128) = &off_1F43F7318;
  *(v9 + 96) = v8;
  *(v9 + 16) = 3;
  *(v9 + 24) = xmmword_1C4F1F230;
  *(v9 + 40) = &unk_1F43D6DA0;

  *(v9 + 152) = 0x302E302E31;
  *(v9 + 160) = 0xE500000000000000;
  *(v9 + 48) = v4;
  *(v9 + 136) = a1;
  *(v9 + 144) = a2;
  return v9;
}

uint64_t sub_1C46C9F54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[48] = a3;
  v4[49] = v3;
  v4[47] = a1;
  v5 = sub_1C4EFF9F8();
  v4[50] = v5;
  sub_1C43FCF7C(v5);
  v4[51] = v6;
  v4[52] = swift_task_alloc();
  v7 = sub_1C4EFE1C8();
  v4[53] = v7;
  sub_1C43FCF7C(v7);
  v4[54] = v8;
  v4[55] = *(v9 + 64);
  v4[56] = swift_task_alloc();
  v4[57] = swift_task_alloc();
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v10 = sub_1C456902C(&qword_1EC0B9790, &unk_1C4F0F7C0);
  sub_1C43FBD18(v10);
  v4[61] = swift_task_alloc();
  v11 = type metadata accessor for LOIBasedSegment(0);
  v4[62] = v11;
  sub_1C43FCF7C(v11);
  v4[63] = v12;
  v4[64] = *(v13 + 64);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v4[68] = swift_task_alloc();
  v14 = sub_1C4F00978();
  v4[69] = v14;
  sub_1C43FCF7C(v14);
  v4[70] = v15;
  v4[71] = swift_task_alloc();
  v4[72] = swift_task_alloc();
  v4[73] = swift_task_alloc();
  v4[74] = swift_task_alloc();
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46CA1E0, 0, 0);
}

uint64_t sub_1C46CA1E0(uint64_t a1)
{
  sub_1C4F00198();
  v2 = sub_1C4F00968();
  v3 = sub_1C4F01CF8();
  if (sub_1C4402B64(v3))
  {
    *swift_slowAlloc() = 0;
    sub_1C43FFFD8(&dword_1C43F8000, v4, v5, "Running Dining out inference model");
    sub_1C43FE9D4();
  }

  v6 = *(v1 + 560);
  v7 = *(v1 + 384);

  v8 = *(v6 + 8);
  v9 = sub_1C4402B58();
  v8(v9);
  sub_1C442E860(v7, v1 + 16);
  sub_1C456902C(&qword_1EC0B9798, &unk_1C4F17040);
  if (!swift_dynamicCast())
  {
    v23 = *(v1 + 488);
    v24 = *(v1 + 376);
    sub_1C440BAA8(v23, 1, 1, *(v1 + 496));
    sub_1C4420C3C(v23, &qword_1EC0B9790, &unk_1C4F0F7C0);
LABEL_39:
    v76 = type metadata accessor for InferredActivitySegment(0);
    v77 = v24;
    goto LABEL_40;
  }

  v10 = *(v1 + 544);
  v11 = *(v1 + 496);
  sub_1C440BAA8(*(v1 + 488), 0, 1, v11);
  v12 = sub_1C4402B58();
  sub_1C46CB668(v12, v13);
  v14 = *(v11 + 24);
  sub_1C46CB6CC(v10 + v14, v1 + 56);
  v15 = *(v1 + 80);
  sub_1C4420C3C(v1 + 56, &qword_1EC0B97A0, &qword_1C4F0F7D0);
  if (!v15)
  {
    sub_1C4F00198();
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CF8();
    if (sub_1C4402B64(v26))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v27, v28, "currSegment is not a visit segment");
      sub_1C43FE9D4();
    }

    goto LABEL_34;
  }

  sub_1C46CB6CC(v10 + v14, v1 + 136);
  if (!*(v1 + 160))
  {
    sub_1C4420C3C(v1 + 136, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    *(v1 + 96) = 0u;
    *(v1 + 112) = 0u;
    *(v1 + 128) = 0;
    goto LABEL_16;
  }

  sub_1C4409678((v1 + 136), *(v1 + 160));
  v16 = sub_1C4400118();
  v17(v16);
  sub_1C46CB91C(v1 + 136);
  if (!*(v1 + 120))
  {
LABEL_16:
    sub_1C4420C3C(v1 + 96, &qword_1EC0BB380, &unk_1C4F1F2E0);
    goto LABEL_17;
  }

  sub_1C4420C3C(v1 + 96, &qword_1EC0BB380, &unk_1C4F1F2E0);
  sub_1C46CB6CC(v10 + v14, v1 + 336);
  if (!*(v1 + 360))
  {
    v67 = &qword_1EC0B97A0;
    v68 = &qword_1C4F0F7D0;
    v69 = v1 + 336;
LABEL_31:
    sub_1C4420C3C(v69, v67, v68);
LABEL_32:
    sub_1C4F00198();
    v25 = sub_1C4F00968();
    v70 = sub_1C4F01CF8();
    if (sub_1C4402B64(v70))
    {
      *swift_slowAlloc() = 0;
      sub_1C43FFFD8(&dword_1C43F8000, v71, v72, "currSegment is a known semantic location segment");
      sub_1C43FE9D4();
    }

LABEL_34:
    v73 = *(v1 + 544);
    v74 = *(v1 + 376);

    v75 = sub_1C4402B58();
    v8(v75);
    sub_1C46CB73C(v73);
    v76 = type metadata accessor for InferredActivitySegment(0);
    v77 = v74;
LABEL_40:
    sub_1C440BAA8(v77, 1, 1, v76);
    goto LABEL_41;
  }

  sub_1C4409678((v1 + 336), *(v1 + 360));
  v18 = sub_1C4400118();
  v19(v18);
  sub_1C46CB91C(v1 + 336);
  if (!*(v1 + 320))
  {
    v67 = &qword_1EC0BB380;
    v68 = &unk_1C4F1F2E0;
    v69 = v1 + 296;
    goto LABEL_31;
  }

  sub_1C4409678((v1 + 296), *(v1 + 320));
  v20 = sub_1C4400118();
  v22 = v21(v20);
  sub_1C440962C((v1 + 296));
  if (v22)
  {
    goto LABEL_32;
  }

LABEL_17:
  v29 = *(v1 + 544);
  v30 = *(*(v1 + 496) + 20);
  sub_1C4EF9B78();
  if (v31 > 10800.0)
  {
    sub_1C4F00198();
    v32 = sub_1C4402B58();
    sub_1C46CB798(v32, v33);
    v34 = sub_1C4F00968();
    v35 = sub_1C4F01CF8();
    v36 = os_log_type_enabled(v34, v35);
    v37 = *(v1 + 536);
    if (v36)
    {
      v38 = swift_slowAlloc();
      sub_1C4402F1C(v38, 3.852e-34);
      v40 = v39;
      sub_1C46CB73C(v37);
      *(v38 + 4) = v40;
      sub_1C4416FE0(&dword_1C43F8000, v41, v42, "currSegment duration of %f is greater than maxDurationOfDiningOutActivityInSeconds");
      MEMORY[0x1C6942830](v38, -1, -1);
    }

    else
    {

      sub_1C46CB73C(v37);
    }

    v55 = *(v1 + 584);
LABEL_37:
    v78 = *(v1 + 544);
    v24 = *(v1 + 376);
    (v8)(v55, *(v1 + 552));
LABEL_38:
    sub_1C46CB73C(v78);
    goto LABEL_39;
  }

  sub_1C4EF9B78();
  if (v43 < 1800.0)
  {
    sub_1C4F00198();
    v44 = sub_1C4402B58();
    sub_1C46CB798(v44, v45);
    v46 = sub_1C4F00968();
    v47 = sub_1C4F01CF8();
    v48 = os_log_type_enabled(v46, v47);
    v49 = *(v1 + 528);
    if (v48)
    {
      v50 = swift_slowAlloc();
      sub_1C4402F1C(v50, 3.852e-34);
      v52 = v51;
      sub_1C46CB73C(v49);
      *(v50 + 4) = v52;
      sub_1C4416FE0(&dword_1C43F8000, v53, v54, "currSegment duration of %f is less than minDurationOfDiningOutActivityInSeconds");
      MEMORY[0x1C6942830](v50, -1, -1);
    }

    else
    {

      sub_1C46CB73C(v49);
    }

    v55 = *(v1 + 576);
    goto LABEL_37;
  }

  v115 = v30;
  v124 = v8;
  v56 = *(v1 + 520);
  v57 = *(v1 + 504);
  sub_1C46CB798(*(v1 + 544), v56);
  v58 = *(v57 + 80);
  v59 = swift_allocObject();
  sub_1C46CB668(v56, v59 + ((v58 + 16) & ~v58));
  sub_1C4EFE1B8();
  sub_1C46CB6CC(v10 + v14, v1 + 256);
  if (*(v1 + 280))
  {
    sub_1C4409678((v1 + 256), *(v1 + 280));
    v60 = sub_1C43FD074();
    v61(v60);
    sub_1C46CB91C(v1 + 256);
    if (*(v1 + 240))
    {
      sub_1C4409678((v1 + 216), *(v1 + 240));
      v62 = sub_1C43FD074();
      v63(v62);
      if (*(v1 + 200))
      {
        sub_1C4409678((v1 + 176), *(v1 + 200));
        v64 = sub_1C43FD074();
        v119 = v65(v64);
        v117 = v66;
        sub_1C440962C((v1 + 176));
        sub_1C440962C((v1 + 216));
        goto LABEL_48;
      }

      sub_1C440962C((v1 + 216));
      v81 = &unk_1EC0BB388;
      v82 = &unk_1C4F1F2F0;
      v83 = v1 + 176;
    }

    else
    {
      v81 = &qword_1EC0BB380;
      v82 = &unk_1C4F1F2E0;
      v83 = v1 + 216;
    }
  }

  else
  {
    v81 = &qword_1EC0B97A0;
    v82 = &qword_1C4F0F7D0;
    v83 = v1 + 256;
  }

  sub_1C4420C3C(v83, v81, v82);
  v119 = 0;
  v117 = 0;
LABEL_48:
  v116 = v29;
  v118 = *(v1 + 544);
  v84 = *(v1 + 520);
  v85 = *(v1 + 464);
  v86 = *(v1 + 424);
  v87 = *(v1 + 432);
  v120 = *(v1 + 408);
  v88 = *(v1 + 392);
  v121 = *(v1 + 400);
  v122 = *(v1 + 416);
  (*(v87 + 16))(v85, *(v1 + 480), v86);
  v89 = (*(v87 + 80) + 40) & ~*(v87 + 80);
  v90 = swift_allocObject();
  *(v90 + 2) = v88;
  *(v90 + 3) = v119;
  *(v90 + 4) = v117;
  (*(v87 + 32))(&v90[v89], v85, v86);

  sub_1C4EFE1B8();
  sub_1C46CB798(v118, v84);
  v91 = swift_allocObject();
  *(v91 + 16) = v88;
  sub_1C46CB668(v84, v91 + ((v58 + 24) & ~v58));

  sub_1C4EFE1B8();
  sub_1C456902C(&qword_1EC0B97A8, &unk_1C4F0F7E0);
  v92 = sub_1C4EFE178();
  sub_1C43FCF7C(v92);
  *(swift_allocObject() + 16) = xmmword_1C4F0CE60;
  sub_1C4EFE1A8();
  sub_1C4EFE1A8();
  (*(v120 + 104))(v122, *MEMORY[0x1E69A9A98], v121);
  sub_1C4F016E8();

  (*(v120 + 8))(v122, v121);
  sub_1C4EFE188();
  v94 = v93;
  sub_1C4F00198();
  v95 = sub_1C4F00968();
  v96 = sub_1C4F01CF8();
  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    *v97 = 134217984;
    *(v97 + 4) = v94;
    _os_log_impl(&dword_1C43F8000, v95, v96, "diningOutConfidence = %f", v97, 0xCu);
    MEMORY[0x1C6942830](v97, -1, -1);
  }

  v98 = *(v1 + 568);
  v99 = *(v1 + 552);
  v100 = *(v1 + 472);
  v123 = *(v1 + 480);
  v102 = *(v1 + 448);
  v101 = *(v1 + 456);
  v104 = *(v1 + 424);
  v103 = *(v1 + 432);

  v124(v98, v99);
  v105 = *(v103 + 8);
  v105(v102, v104);
  v105(v101, v104);
  v105(v100, v104);
  v105(v123, v104);
  v78 = *(v1 + 544);
  if (v94 < 0.6)
  {
    v24 = *(v1 + 376);
    goto LABEL_38;
  }

  v106 = *(v1 + 392);
  v107 = *(v1 + 376);
  v108 = sub_1C4EF9CD8();
  sub_1C43FBCE0();
  v110 = *(v109 + 16);
  v110(v107, v78, v108);
  v111 = type metadata accessor for InferredActivitySegment(0);
  v110(v107 + v111[5], v116 + v115, v108);
  sub_1C46CB73C(v78);
  v112 = *(v106 + 152);
  v113 = *(v106 + 160);
  *(v107 + v111[6]) = *(v106 + 16);
  *(v107 + v111[7]) = v94;
  v114 = (v107 + v111[8]);
  *v114 = v112;
  v114[1] = v113;
  sub_1C440BAA8(v107, 0, 1, v111);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_41:

  v79 = *(v1 + 8);

  return v79();
}

double sub_1C46CAE70(uint64_t a1)
{
  v2 = sub_1C4F00978();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = type metadata accessor for LOIBasedSegment(0);
  sub_1C46CB6CC(a1 + *(v6 + 24), v13);
  if (v14)
  {
    v7 = sub_1C4B70BBC();
    sub_1C46CB91C(v13);
  }

  else
  {
    sub_1C4420C3C(v13, &qword_1EC0B97A0, &qword_1C4F0F7D0);
    v7 = 0.0;
  }

  sub_1C4F00198();
  v8 = sub_1C4F00968();
  v9 = sub_1C4F01CF8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v7;
    _os_log_impl(&dword_1C43F8000, v8, v9, "storedVisitConfidence for dining out = %f", v10, 0xCu);
    MEMORY[0x1C6942830](v10, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  return v7;
}

double sub_1C46CB01C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1C4F00978();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (a3)
  {
    v9 = a2;
  }

  else
  {
    v9 = 0;
  }

  if (a3)
  {
    v10 = a3;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  v22[0] = v9;
  v22[1] = v10;
  v21 = v22;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v11 = sub_1C44CE068();

  v12 = 0.0;
  if (v11)
  {
    v13._countAndFlagsBits = 0x494F506F6547;
    v13._object = 0xE600000000000000;
    v14 = ConfidenceService.confidence(source:signalType:)(v13, 0);
    sub_1C4EFE188();
    v12 = v14 * v15;
  }

  sub_1C4F00198();
  v16 = sub_1C4F00968();
  v17 = sub_1C4F01CF8();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v12;
    _os_log_impl(&dword_1C43F8000, v16, v17, "diningOutConfidenceDueToGeoPoi = %f", v18, 0xCu);
    MEMORY[0x1C6942830](v18, -1, -1);
  }

  (*(v6 + 8))(v8, v5);
  return v12;
}

double sub_1C46CB228(uint64_t a1, unint64_t a2)
{
  v4 = sub_1C4F00978();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 48);
  v9 = *(a1 + 144);
  type metadata accessor for EventsFoundInAppsSignal();
  inited = swift_initStackObject();
  *(inited + 16) = v9;
  *(inited + 24) = v8;
  v11 = *(type metadata accessor for LOIBasedSegment(0) + 20);
  v12 = v8;

  sub_1C479CBF4(a2, a2 + v11);
  v13 = sub_1C44F9274(0xD00000000000001DLL);

  v14 = 0.0;
  if (v13)
  {
    v15 = [v13 dictionaryValue];
    sub_1C4461BB8(0, &qword_1EDDFE8E0, 0x1E696AD98);
    v16 = sub_1C4F00ED8();

    v24[1] = 1685024582;
    v24[2] = 0xE400000000000000;
    sub_1C4F02198();
    if (*(v16 + 16))
    {
      sub_1C457AA70(v25);
      v18 = v17;

      sub_1C457E804(v25);
      if (v18)
      {
        v19._object = 0x80000001C4F8AC10;
        v19._countAndFlagsBits = 0xD000000000000014;
        v14 = ConfidenceService.confidence(source:signalType:)(v19, 0);
      }
    }

    else
    {

      sub_1C457E804(v25);
    }
  }

  sub_1C4F00198();
  v20 = sub_1C4F00968();
  v21 = sub_1C4F01CF8();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v14;
    _os_log_impl(&dword_1C43F8000, v20, v21, "diningOutConfidenceDueToFiA = %f", v22, 0xCu);
    MEMORY[0x1C6942830](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t sub_1C46CB514()
{

  sub_1C440962C((v0 + 56));
  sub_1C440962C((v0 + 96));

  return v0;
}

uint64_t sub_1C46CB564()
{
  sub_1C46CB514();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46CB5BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1C44A7DA0;

  return sub_1C46C9F54(a1, v6, a3);
}

uint64_t sub_1C46CB668(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LOIBasedSegment(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46CB6CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B97A0, &qword_1C4F0F7D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46CB73C(uint64_t a1)
{
  v2 = type metadata accessor for LOIBasedSegment(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46CB798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LOIBasedSegment(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

double sub_1C46CB7FC()
{
  v1 = type metadata accessor for LOIBasedSegment(0);
  sub_1C43FBD18(v1);
  v3 = v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return sub_1C46CAE70(v3);
}

double sub_1C46CB858()
{
  v1 = sub_1C4EFE1C8();
  sub_1C43FBD18(v1);
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];

  return sub_1C46CB01C(v2, v3, v4);
}

double sub_1C46CB8BC()
{
  v1 = type metadata accessor for LOIBasedSegment(0);
  sub_1C43FBD18(v1);
  v3 = *(v0 + 16);
  v4 = v0 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return sub_1C46CB228(v3, v4);
}

uint64_t type metadata accessor for DocumentMatcher(uint64_t a1)
{
  result = qword_1EC0BB3A0;
  if (!qword_1EC0BB3A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DocumentMatcher.source.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for DocumentMatcher(0) + 20);

  return sub_1C46CBA70(a1, v3);
}

uint64_t sub_1C46CBA70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Source(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t DocumentMatcher.pipelineType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for DocumentMatcher(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t DocumentMatcher.init(stores:source:pipelineType:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for DocumentMatcher(0);
  *(a4 + v8[8]) = 1056964608;
  sub_1C441F7B0();
  sub_1C4430A14(a1, a4);
  sub_1C4471E9C(a2, a4 + v8[5]);
  result = sub_1C4471E9C(a1, a4 + v8[6]);
  *(a4 + v8[7]) = v7;
  return result;
}

float sub_1C46CBC60(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_1C4EFEEF8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v43 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v50 = type metadata accessor for EntityTriple(0);
  v45 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v44 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v39 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v41 = &v39 - v16;
  v17 = 0;
  v18 = *(a1 + 16);
  v46 = a1;
  v47 = v18;
  v49 = (v4 + 8);
  while (1)
  {
    v19 = 0.0;
    if (v47 == v17)
    {
      return v19;
    }

    v20 = (*(v45 + 80) + 32) & ~*(v45 + 80);
    v48 = *(v45 + 72);
    sub_1C4430A14(v46 + v20 + v48 * v17, v14);
    sub_1C4EFEBE8();
    sub_1C44AC538(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C4F01578();
    sub_1C4F01578();
    if (v53 == v51 && v54 == v52)
    {
      v22 = 1;
    }

    else
    {
      v22 = sub_1C4F02938();
    }

    v23 = *v49;
    (*v49)(v8, v3);

    if (v22)
    {
      v24 = v41;
      sub_1C4471E9C(v14, v41);
      v25 = (v24 + *(v50 + 32));
      v26 = v25[1];
      v47 = *v25;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD04(v24, type metadata accessor for EntityTriple);
      v27 = *(v42 + 16);
      v28 = v42 + v20;
      v29 = v43;
      if (!v27)
      {
LABEL_18:

        return v19;
      }

      while (1)
      {
        sub_1C4430A14(v28, v44);
        sub_1C4EFEBE8();
        sub_1C4F01578();
        sub_1C4F01578();
        if (v53 == v51 && v54 == v52)
        {
          break;
        }

        v31 = sub_1C4F02938();
        v23(v29, v3);

        if (v31)
        {
          goto LABEL_20;
        }

        sub_1C44DBD04(v44, type metadata accessor for EntityTriple);
        v28 += v48;
        if (!--v27)
        {
          goto LABEL_18;
        }
      }

      v23(v29, v3);

LABEL_20:
      v32 = v40;
      sub_1C4471E9C(v44, v40);
      v33 = (v32 + *(v50 + 32));
      v35 = *v33;
      v34 = v33[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD04(v32, type metadata accessor for EntityTriple);
      if (v35 == v47 && v34 == v26)
      {
      }

      else
      {
        v37 = sub_1C4F02938();

        if ((v37 & 1) == 0)
        {
          return v19;
        }
      }

      return 1.0;
    }

    sub_1C44DBD04(v14, type metadata accessor for EntityTriple);
    ++v17;
  }
}

float sub_1C46CC1BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v57 = a6;
  v60 = a4;
  v61 = a5;
  v64 = a2;
  v7 = sub_1C43FBE94();
  v63 = v8(v7);
  sub_1C43FCDF8();
  v59 = v9;
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBD08();
  v65 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v56 = &v55 - v14;
  v15 = sub_1C4EFEEF8();
  sub_1C43FCDF8();
  v17 = v16;
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBD08();
  v62 = (v19 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v55 - v22;
  v67 = type metadata accessor for EntityTriple(0);
  sub_1C43FCDF8();
  v25 = v24;
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBD08();
  v29 = v27 - v28;
  MEMORY[0x1EEE9AC00](v30);
  v58 = &v55 - v31;
  v32 = 0;
  v66 = v6;
  v68 = *(v6 + 16);
  v69 = (v17 + 8);
  while (1)
  {
    v33 = 0.0;
    if (v68 == v32)
    {
      return v33;
    }

    sub_1C4430A14(v66 + ((*(v25 + 80) + 32) & ~*(v25 + 80)) + *(v25 + 72) * v32, v29);
    sub_1C4EFEBE8();
    sub_1C44AC538(&off_1EDDFCCA8, MEMORY[0x1E69A9748], MEMORY[0x1E69A9770]);
    sub_1C43FD4F4();
    sub_1C43FD4F4();
    if (v72 == v70 && v73 == v71)
    {
      v35 = 1;
    }

    else
    {
      v35 = sub_1C4F02938();
    }

    v36 = *v69;
    (*v69)(v23, v15);

    if (v35)
    {
      v37 = v58;
      sub_1C4471E9C(v29, v58);
      v38 = (v37 + *(v67 + 32));
      v40 = *v38;
      v39 = v38[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD04(v37, type metadata accessor for EntityTriple);
      v41 = 0;
      v42 = *(v64 + 16);
      while (1)
      {
        v43 = v62;
        if (v42 == v41)
        {

          return v33;
        }

        sub_1C4430A14(v64 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v41, v65);
        sub_1C4EFEBE8();
        sub_1C43FD4F4();
        sub_1C43FD4F4();
        if (v72 == v70 && v73 == v71)
        {
          break;
        }

        v45 = sub_1C4F02938();
        v46 = v43;
        v47 = v45;
        v36(v46, v15);

        if (v47)
        {
          goto LABEL_21;
        }

        sub_1C44DBD04(v65, v61);
        ++v41;
      }

      v36(v43, v15);

LABEL_21:
      v48 = v56;
      sub_1C4471E9C(v65, v56);
      v49 = (v48 + *(v63 + 32));
      v51 = *v49;
      v50 = v49[1];
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C44DBD04(v48, v61);
      if (v51 == v40 && v50 == v39)
      {
      }

      else
      {
        v53 = sub_1C4F02938();

        if ((v53 & 1) == 0)
        {
          return v33;
        }
      }

      return 1.0;
    }

    sub_1C44DBD04(v29, type metadata accessor for EntityTriple);
    ++v32;
  }
}

uint64_t sub_1C46CC6E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v70 = a1;
  v66 = a3;
  v65 = sub_1C4EF9CD8();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v57 - v8;
  v10 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0BC900, byte_1C4F142D0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v57 - v14;
  v16 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  v25 = v3;
  v26 = v71;
  result = sub_1C4ACE774();
  if (!v26)
  {
    v28 = v9;
    v58 = v21;
    v59 = v18;
    v60 = 0;
    v61 = v25;
    v71 = v12;
    v29 = v68;
    v30 = v69;
    if (v69)
    {
      sub_1C44F1938(v69, v15);
      v31 = type metadata accessor for GraphTriple(0);
      v32 = v28;
      if (sub_1C44157D4(v15, 1, v31) == 1)
      {
        sub_1C4420C3C(v15, &unk_1EC0BC900, byte_1C4F142D0);
        v33 = 1;
      }

      else
      {
        (*(v67 + 16))(v24, v15, v29);
        sub_1C44DBD04(v15, type metadata accessor for GraphTriple);
        v33 = 0;
      }
    }

    else
    {
      v33 = 1;
      v32 = v28;
    }

    v34 = v24;
    sub_1C440BAA8(v24, v33, 1, v29);
    v35 = v70;
    sub_1C44D0BD8(v70, v32);
    if (sub_1C44157D4(v32, 1, v10) == 1)
    {
      sub_1C4420C3C(v32, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v36 = sub_1C4F00978();
      sub_1C442B738(v36, qword_1EDE2DE10);
      v37 = sub_1C4F00968();
      v38 = sub_1C4F01CD8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C43F8000, v37, v38, "Document Matcher: skipping entityTriples are empty", v39, 2u);
        MEMORY[0x1C6942830](v39, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v34, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C4471E9C(v32, v71);
      if (v30)
      {
        v41 = v61;
        v42 = sub_1C46CC1BC(v35, v30, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple, type metadata accessor for GraphTriple);
        v43 = v66;
      }

      else
      {
        v42 = 0.0;
        v43 = v66;
        v41 = v61;
      }

      v44 = v64;
      v45 = v58;
      v70 = type metadata accessor for DocumentMatcher(0);
      v46 = *(v41 + *(v70 + 32));
      if (v42 <= v46)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v34, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v45, 0, 1, v29);
        sub_1C44DDDBC(v45, v34);
        v42 = v46;
      }

      v47 = v59;
      sub_1C445FFF0(v34, v59, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v48 = sub_1C44157D4(v47, 1, v29);
      v49 = v67;
      v69 = v34;
      if (v48 == 1)
      {
        sub_1C4420C3C(v47, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v67 + 32))(v44, v47, v29);
        _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
        v50 = type metadata accessor for EntityMatch(0);
        v51 = *(v49 + 16);
        v52 = v71;
        v51(v43 + v50[5], v71, v29);
        v51(v43 + v50[6], v44, v29);
        v53 = v62;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v55 = v54;
        (*(v63 + 8))(v53, v65);
        (*(v49 + 8))(v44, v29);
        sub_1C44DBD04(v52, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v69, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v56 = *(v61 + *(v70 + 28));
        *(v43 + v50[7]) = v42;
        *(v43 + v50[8]) = v55;
        *(v43 + v50[9]) = v56;
        *(v43 + v50[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C46CCE98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v70 = a2;
  v71 = a1;
  v65 = a3;
  v67 = sub_1C4EF9CD8();
  v64 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v68 = *(v5 - 8);
  v69 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v58 - v15;
  v17 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v58 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v58 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v58 - v24;
  v26 = v72;
  result = sub_1C4ACE774();
  if (!v26)
  {
    v59 = v22;
    v60 = v19;
    v61 = 0;
    v62 = v7;
    v63 = v10;
    v28 = v68;
    v29 = v69;
    v72 = v25;
    if (v70)
    {
      v30 = v70;
      sub_1C44D0BD8(v70, v16);
      v31 = v28;
      if (sub_1C44157D4(v16, 1, v8) == 1)
      {
        sub_1C4420C3C(v16, &qword_1EC0BA590, &qword_1C4F1F430);
        v32 = 1;
      }

      else
      {
        (*(v28 + 16))(v72, v16, v29);
        sub_1C44DBD04(v16, type metadata accessor for EntityTriple);
        v32 = 0;
      }
    }

    else
    {
      v30 = 0;
      v32 = 1;
      v31 = v68;
    }

    v33 = v71;
    sub_1C440BAA8(v72, v32, 1, v29);
    sub_1C44D0BD8(v33, v13);
    if (sub_1C44157D4(v13, 1, v8) == 1)
    {
      sub_1C4420C3C(v13, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v34 = sub_1C4F00978();
      sub_1C442B738(v34, qword_1EDE2DE10);
      v35 = sub_1C4F00968();
      v36 = sub_1C4F01CD8();
      v37 = os_log_type_enabled(v35, v36);
      v38 = v72;
      if (v37)
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C43F8000, v35, v36, "Document Matcher: skipping entityTriples are empty", v39, 2u);
        MEMORY[0x1C6942830](v39, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v38, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C4471E9C(v13, v63);
      if (v30)
      {
        v41 = sub_1C46CBC60(v33, v30);
      }

      else
      {
        v41 = 0.0;
      }

      v42 = v65;
      v43 = v62;
      v44 = v59;
      v70 = type metadata accessor for DocumentMatcher(0);
      v45 = *(v3 + *(v70 + 32));
      v46 = v72;
      if (v41 <= v45)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v46, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v44, 0, 1, v29);
        sub_1C44DDDBC(v44, v46);
        v41 = v45;
      }

      v71 = v3;
      v47 = v60;
      sub_1C445FFF0(v46, v60, &unk_1EC0BA0E0, &qword_1C4F105A0);
      if (sub_1C44157D4(v47, 1, v29) == 1)
      {
        sub_1C4420C3C(v47, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v31 + 32))(v43, v47, v29);
        _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
        v48 = v43;
        v49 = v29;
        v50 = type metadata accessor for EntityMatch(0);
        v51 = v31;
        v52 = *(v31 + 16);
        v53 = v63;
        v52(v42 + v50[5], v63, v49);
        v52(v42 + v50[6], v48, v49);
        v54 = v66;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v56 = v55;
        (*(v64 + 8))(v54, v67);
        (*(v51 + 8))(v48, v49);
        sub_1C44DBD04(v53, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v46, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v57 = *(v71 + *(v70 + 28));
        *(v42 + v50[7]) = v41;
        *(v42 + v50[8]) = v56;
        *(v42 + v50[9]) = v57;
        *(v42 + v50[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C46CD5D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v69 = a2;
  v70 = a1;
  v66 = a3;
  v65 = sub_1C4EF9CD8();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v57 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C4EFF0C8();
  v67 = *(v5 - 8);
  v68 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C456902C(&qword_1EC0BA590, &qword_1C4F1F430);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v57 - v8;
  v10 = type metadata accessor for EntityTriple(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0BCAE0, byte_1C4F142A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v57 - v14;
  v16 = sub_1C456902C(&unk_1EC0BA0E0, &qword_1C4F105A0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v57 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  v25 = v3;
  v26 = v71;
  result = sub_1C4ACE774();
  if (!v26)
  {
    v28 = v9;
    v58 = v21;
    v59 = v18;
    v60 = 0;
    v61 = v25;
    v71 = v12;
    v29 = v68;
    v30 = v69;
    if (v69)
    {
      sub_1C486854C(v69, v15);
      v31 = type metadata accessor for ConstructionGraphTriple(0);
      v32 = v28;
      if (sub_1C44157D4(v15, 1, v31) == 1)
      {
        sub_1C4420C3C(v15, &unk_1EC0BCAE0, byte_1C4F142A0);
        v33 = 1;
      }

      else
      {
        (*(v67 + 16))(v24, v15, v29);
        sub_1C44DBD04(v15, type metadata accessor for ConstructionGraphTriple);
        v33 = 0;
      }
    }

    else
    {
      v33 = 1;
      v32 = v28;
    }

    v34 = v24;
    sub_1C440BAA8(v24, v33, 1, v29);
    v35 = v70;
    sub_1C44D0BD8(v70, v32);
    if (sub_1C44157D4(v32, 1, v10) == 1)
    {
      sub_1C4420C3C(v32, &qword_1EC0BA590, &qword_1C4F1F430);
      if (qword_1EDDFD028 != -1)
      {
        swift_once();
      }

      v36 = sub_1C4F00978();
      sub_1C442B738(v36, qword_1EDE2DE10);
      v37 = sub_1C4F00968();
      v38 = sub_1C4F01CD8();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1C43F8000, v37, v38, "Document Matcher: skipping entityTriples are empty", v39, 2u);
        MEMORY[0x1C6942830](v39, -1, -1);
      }

      sub_1C46828B4();
      swift_allocError();
      *v40 = 0;
      swift_willThrow();
      return sub_1C4420C3C(v34, &unk_1EC0BA0E0, &qword_1C4F105A0);
    }

    else
    {
      sub_1C4471E9C(v32, v71);
      if (v30)
      {
        v41 = v61;
        v42 = sub_1C46CC1BC(v35, v30, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple, type metadata accessor for ConstructionGraphTriple);
        v43 = v66;
      }

      else
      {
        v42 = 0.0;
        v43 = v66;
        v41 = v61;
      }

      v44 = v64;
      v45 = v58;
      v70 = type metadata accessor for DocumentMatcher(0);
      v46 = *(v41 + *(v70 + 32));
      if (v42 <= v46)
      {
        sub_1C4EFF008();
        sub_1C4420C3C(v34, &unk_1EC0BA0E0, &qword_1C4F105A0);
        sub_1C440BAA8(v45, 0, 1, v29);
        sub_1C44DDDBC(v45, v34);
        v42 = v46;
      }

      v47 = v59;
      sub_1C445FFF0(v34, v59, &unk_1EC0BA0E0, &qword_1C4F105A0);
      v48 = sub_1C44157D4(v47, 1, v29);
      v49 = v67;
      v69 = v34;
      if (v48 == 1)
      {
        sub_1C4420C3C(v47, &unk_1EC0BA0E0, &qword_1C4F105A0);
        result = sub_1C4F024A8();
        __break(1u);
      }

      else
      {
        (*(v67 + 32))(v44, v47, v29);
        _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
        v50 = type metadata accessor for EntityMatch(0);
        v51 = *(v49 + 16);
        v52 = v71;
        v51(v43 + v50[5], v71, v29);
        v51(v43 + v50[6], v44, v29);
        v53 = v62;
        sub_1C4EF9C88();
        sub_1C4EF9AD8();
        v55 = v54;
        (*(v63 + 8))(v53, v65);
        (*(v49 + 8))(v44, v29);
        sub_1C44DBD04(v52, type metadata accessor for EntityTriple);
        result = sub_1C4420C3C(v69, &unk_1EC0BA0E0, &qword_1C4F105A0);
        v56 = *(v61 + *(v70 + 28));
        *(v43 + v50[7]) = v42;
        *(v43 + v50[8]) = v55;
        *(v43 + v50[9]) = v56;
        *(v43 + v50[10]) = 0;
      }
    }
  }

  return result;
}

uint64_t DocumentMatcher.execute()()
{
  v1[3] = v0;
  v2 = sub_1C4EFD548();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  sub_1C456902C(&qword_1EC0B8568, &unk_1C4F319B0);
  v1[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46CDEA8, 0, 0);
}

uint64_t sub_1C46CDEA8()
{
  v61 = v0;
  v1 = v0[10];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for DocumentMatcher(0);
  type metadata accessor for PhaseStores(0);
  v5 = *(v4 + 28);
  LOBYTE(v60[0]) = *(v3 + v5);
  _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
  sub_1C43FBD94();
  sub_1C440BAA8(v6, v7, v8, v2);
  sub_1C44ABA54(v60, v1);
  sub_1C4420C3C(v1, &qword_1EC0B8568, &unk_1C4F319B0);
  switch(*(v3 + v5))
  {
    case 1:
    case 3:
      v9 = v0[9];
      v11 = v0[4];
      v10 = v0[5];
      v12 = v0[3];
      _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
      v58 = v3;
      *(swift_task_alloc() + 16) = v12;
      sub_1C4411AB8();
      sub_1C44AC19C(v13, v14, v15, v16, v17, v18, v19);
      v20 = v5;
      v21 = *(v10 + 8);
      v21(v9, v11);

      v57 = v20;
      v22 = v0[3];
      v23 = v22 + *(v4 + 20);
      if (*(v23 + *(type metadata accessor for Source(0) + 28)) != 1)
      {
        goto LABEL_8;
      }

      v24 = v0[8];
      _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
      v25 = *(v58 + v57);
      v26 = swift_task_alloc();
      *(v26 + 16) = v22;
      sub_1C44AC19C(v24, v25, 0, 1, sub_1C46CE5B0, v26, sub_1C44C6BE0);
      v27 = sub_1C43FD2BC();
      (v21)(v27);
      goto LABEL_7;
    case 2:
      v30 = v0[7];
      v31 = v0[5];
      v59 = v0[4];
      v32 = v0[3];
      _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
      *(swift_task_alloc() + 16) = v32;
      sub_1C4411AB8();
      sub_1C44AC19C(v33, v34, v35, v36, v37, v38, v39);
      v40 = *(v31 + 8);
      v40(v30, v59);

      v57 = v5;
      v58 = v3;
      v41 = v0[3];
      v42 = v41 + *(v4 + 20);
      if (*(v42 + *(type metadata accessor for Source(0) + 28)) == 1)
      {
        _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
        *(swift_task_alloc() + 16) = v41;
        sub_1C4411AB8();
        sub_1C44AC19C(v43, v44, v45, v46, v47, v48, v49);
        v50 = sub_1C43FD2BC();
        (v40)(v50);
LABEL_7:
      }

LABEL_8:
      v51 = v0[10];
      v52 = v0[4];
      sub_1C4EF9AE8();
      sub_1C43FBD94();
      sub_1C4642798();
      LOBYTE(v60[0]) = *(v58 + v57);
      _s24IntelligencePlatformCore15DocumentMatcherV11entityClass0aB006EntityG0Vvg_0();
      sub_1C43FBD94();
      sub_1C440BAA8(v53, v54, v55, v52);
      sub_1C44A8814(v60, v51);
      sub_1C4420C3C(v51, &qword_1EC0B8568, &unk_1C4F319B0);

      v56 = v0[1];

      result = v56();
      break;
    default:
      v60[0] = 0;
      v60[1] = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0x676E6974726F6241, 0xE900000000000020);
      v0[2] = v4;
      sub_1C456902C(&qword_1EC0BA550, &qword_1C4F14280);
      v28 = sub_1C4F01198();
      MEMORY[0x1C6940010](v28);

      MEMORY[0x1C6940010](0xD000000000000019, 0x80000001C4F8EC80);
      sub_1C448D934(*(v3 + v5));
      result = sub_1C4F024A8();
      break;
  }

  return result;
}

uint64_t sub_1C46CE434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(a1, a2, a3);
  if (!v5)
  {
    type metadata accessor for EntityMatch(0);
    sub_1C43FBD94();
    return sub_1C440BAA8(v7, v8, v9, v10);
  }

  return result;
}

uint64_t sub_1C46CE4C0()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44A7DA0;

  return DocumentMatcher.execute()();
}

uint64_t sub_1C46CE5E0(uint64_t a1)
{
  result = sub_1C44AC538(&qword_1EC0BB390, type metadata accessor for DocumentMatcher, &protocol conformance descriptor for DocumentMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46CE638(uint64_t a1)
{
  result = sub_1C44AC538(&qword_1EC0BB398, type metadata accessor for DocumentMatcher, &protocol conformance descriptor for DocumentMatcher);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46CE6B8(uint64_t a1)
{
  result = type metadata accessor for Configuration(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Source(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for PhaseStores(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_1C46CE7B0(uint64_t a1, uint64_t a2)
{
  v5 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v82 - v6;
  v8 = sub_1C4EF98F8();
  v83 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = 0;
  v93 = 0xE000000000000000;
  v11 = sub_1C43FFE3C();
  v88 = v13;
  v89 = v12;
  v14 = v13(v11);
  if (v15)
  {
    v16 = v15;
  }

  else
  {
    v14 = 0;
    v16 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v14, v16);

  v17 = sub_1C43FFE3C();
  v84 = v19;
  v85 = v18;
  v20 = (v19)(v17);
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v20 = 0;
    v22 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v20, v22);

  v91 = v2;
  v94 = a1;
  v23 = sub_1C43FFE3C();
  v86 = v25;
  v87 = v24;
  v26 = v25(v23);
  if (v27)
  {
    v28 = v27;
  }

  else
  {
    v26 = 0;
    v28 = 0xE000000000000000;
  }

  MEMORY[0x1C6940010](v26, v28);

  if (qword_1EDDF7948 != -1)
  {
    swift_once();
  }

  v29 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v29, &qword_1EDE2D6B0);
  String.base64EncodedSHA(withPrefix:)();

  v30 = type metadata accessor for EKEventStructs.Person(0);
  sub_1C44099C4(v30);
  v31 = v90;
  sub_1C4D89790();
  v33 = v32;
  if (!v31)
  {
    (*(a2 + 32))(v94, a2);
    if (sub_1C44157D4(v7, 1, v8) == 1)
    {
      sub_1C46CF3CC(v7);
    }

    else
    {
      v34 = v83;
      (*(v83 + 32))(v10, v7, v8);
      v35 = sub_1C4EF9818();
      v37 = v36;
      (*(v34 + 8))(v10, v8);
      v38 = (v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_url);
      *v38 = v35;
      v38[1] = v37;
    }

    v92 = MEMORY[0x1E69E7CC0];
    v39 = sub_1C442C7B8();
    v40 = v88(v39);
    if (v41)
    {
      v42 = v40;
      v43 = v41;
      v44 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
      v45 = sub_1C4F01108();
      v46 = [v44 typeOfHandleString_];

      if (v46 == 1)
      {
        v47 = type metadata accessor for EKEventStructs.AddressRelationshipType(0);
        sub_1C44099C4(v47);
        v48 = (sub_1C4D888FC() + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_emailAddress);
        *v48 = v42;
        v48[1] = v43;

        MEMORY[0x1C6940330](v49);
        sub_1C4400148();
        if (v50)
        {
          sub_1C440A93C();
        }

        sub_1C4F01748();
      }

      else
      {
        v51 = (v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_name);
        *v51 = v42;
        v51[1] = v43;
      }
    }

    v52 = *(a2 + 40);
    v53 = sub_1C43FFE3C();
    if (v52(v53))
    {
      v54 = sub_1C43FFE3C();
      v55 = v52(v54);
      v56 = 1702195828;
      if ((v55 & 1) == 0)
      {
        v56 = 0x65736C6166;
      }

      v57 = 0xE500000000000000;
      v58 = (v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_isCurrentUser);
      if (v55)
      {
        v57 = 0xE400000000000000;
      }

      *v58 = v56;
      v58[1] = v57;
    }

    v59 = sub_1C43FFE3C();
    v84(v59);
    if (!v60)
    {
      goto LABEL_42;
    }

    v61 = [objc_allocWithZone(MEMORY[0x1E6996728]) init];
    v62 = sub_1C4F01108();
    v63 = [v61 typeOfHandleString_];

    if (v63 != 1)
    {
      goto LABEL_50;
    }

    v64 = String.normalizedContactHandle()();

    if (!v64.value._object)
    {
LABEL_42:
      v72 = type metadata accessor for EKEventStructs.AddressRelationshipType(0);
      sub_1C44099C4(v72);
      v73 = sub_1C4D888FC();
      v74 = sub_1C442C7B8();
      countAndFlagsBits = v86(v74);
      if (v76)
      {
        v77 = String.normalizedContactHandle()();
        countAndFlagsBits = v77.value._countAndFlagsBits;
        object = v77.value._object;
      }

      else
      {
        object = 0;
      }

      v79 = (v73 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_phoneNumber);
      *v79 = countAndFlagsBits;
      v79[1] = object;

      MEMORY[0x1C6940330](v80);
      if (*((v92 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C4F016D8();
      }

      sub_1C4F01748();
      *(v33 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs6Person_hasContactInformation) = v92;

      sub_1C4D88F48();

      return v33;
    }

    v65 = sub_1C442C7B8();
    v66 = v88(v65);
    if (v67)
    {
      if (v64.value._countAndFlagsBits == v66 && v64.value._object == v67)
      {

LABEL_50:

        goto LABEL_42;
      }

      v69 = sub_1C4F02938();

      if (v69)
      {
        goto LABEL_50;
      }
    }

    v70 = type metadata accessor for EKEventStructs.AddressRelationshipType(0);
    sub_1C44099C4(v70);
    *(sub_1C4D888FC() + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs23AddressRelationshipType_emailAddress) = v64;

    MEMORY[0x1C6940330](v71);
    sub_1C4400148();
    if (v50)
    {
      sub_1C440A93C();
    }

    sub_1C4F01748();
    goto LABEL_42;
  }

  return v33;
}

uint64_t sub_1C46CEEB0()
{
  result = sub_1C4F024A8();
  __break(1u);
  return result;
}

uint64_t sub_1C46CEF9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(a4 + 24))(a3, a4);
  if (v7)
  {
    v8 = v7;
    v9 = [v7 fullTitleAndAddressString];

    if (v9)
    {
      v10 = sub_1C4F01138();
      v12 = v11;
    }

    else
    {
      v10 = 0;
      v12 = 0xE000000000000000;
    }
  }

  else
  {
    v10 = 0;
    v12 = 0xE000000000000000;
  }

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  v47 = a2;
  if (!v13)
  {

    v14 = sub_1C4406A84();
    v16 = v15(v14);
    if (v17)
    {
      v10 = v16;
    }

    else
    {
      v10 = 0;
    }

    if (v17)
    {
      v12 = v17;
    }

    else
    {
      v12 = 0xE000000000000000;
    }
  }

  MEMORY[0x1C6940010](v10, v12);
  MEMORY[0x1C6940010](10272, 0xE200000000000000);
  v18 = *(a4 + 16);
  v19 = sub_1C4406A84();
  v20 = v18(v19);
  if (v20)
  {
    v21 = v20;
    [v20 coordinate];
  }

  sub_1C4F01A28();
  MEMORY[0x1C6940010](32, 0xE100000000000000);
  v22 = sub_1C4406A84();
  v23 = v18(v22);
  if (v23)
  {
    v24 = v23;
    [v23 coordinate];
  }

  sub_1C4F01A28();
  MEMORY[0x1C6940010](41, 0xE100000000000000);
  if (qword_1EDDF7930 != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v25, qword_1EDE2D680);
  String.base64EncodedSHA(withPrefix:)();

  v26 = type metadata accessor for EKEventStructs.Place(0);
  sub_1C44099C4(v26);
  sub_1C4D8FBD0();
  v28 = v27;
  if (v48)
  {
  }

  else
  {
    v29 = (v27 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs5Place_name);
    *v29 = v10;
    v29[1] = v12;

    v30 = type metadata accessor for EKEventStructs.LocationRelationshipType(0);
    sub_1C44099C4(v30);
    sub_1C4D925B8();
    v31 = (v18)(a3, a4);
    if (v31)
    {
      v32 = v31;
      [v31 coordinate];
      if ((v33 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        [v32 coordinate];
        v34 = sub_1C4F019E8();
        sub_1C4411AC8(v34, v35, OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_latitude);
      }

      [v32 coordinate];
      if ((v36 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        [v32 coordinate];
        v37 = sub_1C4F019E8();
        sub_1C4411AC8(v37, v38, OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs24LocationRelationshipType_longitude);
      }

      sub_1C4D87F48(v39);
    }

    if (v47)
    {
      v40 = type metadata accessor for EKEventStructs.IdentifierRelationshipType(0);
      sub_1C44099C4(v40);
      v41 = v28;
      v42 = sub_1C4D8E478();
      v43 = (v42 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId);
      *v43 = a1;
      v43[1] = v47;

      *(v42 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType) = xmmword_1C4F1F440;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

      sub_1C4D87F70(v44);
      v28 = v41;
    }
  }

  return v28;
}

uint64_t sub_1C46CF3CC(uint64_t a1)
{
  v2 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for EKEventSourceIngestor(uint64_t a1)
{
  result = qword_1EDDE3CF8;
  if (!qword_1EDDE3CF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1C46CF4A8(uint64_t a1)
{
  type metadata accessor for PhaseStores(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Source(319);
    if (v2 <= 0x3F)
    {
      sub_1C46CF54C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C46CF54C(uint64_t a1)
{
  if (!qword_1EDDDBAE8)
  {
    sub_1C4461BB8(255, &qword_1EDDF0570, 0x1E69A2208);
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDDBAE8);
    }
  }
}

uint64_t sub_1C46CF5B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = sub_1C47A2E0C(v5);
  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = v9;
  v12 = v10;
  v13 = HIBYTE(v10) & 0xF;
  if ((v10 & 0x2000000000000000) == 0)
  {
    v13 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {

LABEL_10:
    sub_1C465B58C();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();
    return a3;
  }

  v32 = a2;
  if (qword_1EDDFBC98 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for SourceIdPrefix(0);
  sub_1C442B738(v14, qword_1EDE2DD40);
  String.base64EncodedSHA(withPrefix:)();
  type metadata accessor for EKEventStructs.CalendarEvent(0);
  swift_allocObject();
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4D95A40();
  if (v4)
  {
  }

  else
  {
    v26 = a3;
    v17 = v15;
    v18 = objc_autoreleasePoolPush();
    sub_1C46CF8B4(v17, v5, v11, v12);
    objc_autoreleasePoolPop(v18);

    sub_1C4784C34(&v27);
    if (v28)
    {
      sub_1C441D670(&v27, v29);
      type metadata accessor for EKEventStructs.LocationRelationshipType(0);
      swift_allocObject();
      sub_1C4D925B8();
      v20 = v30;
      v21 = v31;
      sub_1C4409678(v29, v30);
      v22 = sub_1C46CEF9C(a1, v32, v20, v21);
      v23 = v26;
      sub_1C4D8733C(v22);

      sub_1C4D87364(v24);

      sub_1C440962C(v29);
    }

    else
    {
      sub_1C4420C3C(&v27, &qword_1EC0BB3B8, &unk_1C4F1F510);
      v23 = v26;
    }

    LOBYTE(v29[0]) = v23;
    sub_1C4D8738C();
    a3 = v25;
  }

  return a3;
}

void sub_1C46CF8B4(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v181 = a4;
  v180 = a3;
  v7 = sub_1C4EF98F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v195 = &v174 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v189 = sub_1C4EF9F88();
  v187 = *(v189 - 8);
  MEMORY[0x1EEE9AC00](v189);
  v186 = &v174 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v184 = &v174 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v183 = &v174 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v182 = &v174 - v16;
  v17 = sub_1C4EF9CD8();
  v188 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v179 = &v174 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v178 = &v174 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v177 = &v174 - v22;
  v23 = sub_1C456902C(&unk_1EC0BABB0, &qword_1C4F16ED0);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v174 - v24;
  v26 = sub_1C45B1F9C(a2, &selRef_title);
  v27 = (a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_name);
  *v27 = v26;
  v27[1] = v28;

  v29 = [a2 isAllDay];
  v30 = 48;
  if (v29)
  {
    v30 = 49;
  }

  v31 = (a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_isAllDay);
  *v31 = v30;
  v31[1] = 0xE100000000000000;

  sub_1C46D3484(v25);
  if (sub_1C44157D4(v25, 1, v7) == 1)
  {
    sub_1C4420C3C(v25, &unk_1EC0BABB0, &qword_1C4F16ED0);
    v32 = 0;
    v33 = 0;
  }

  else
  {
    v32 = sub_1C4EF9818();
    v33 = v34;
    (*(v8 + 8))(v25, v7);
  }

  v35 = (a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_url);
  *v35 = v32;
  v35[1] = v33;

  v36 = [a2 virtualConference];
  v190 = a1;
  v191 = v4;
  v185 = v17;
  if (v36)
  {
    v37 = v36;
    v38 = [v36 joinMethods];
    sub_1C4461BB8(0, &qword_1EC0BB3D8, 0x1E6966B40);
    v39 = sub_1C4F01678();

    v40 = v39;
    v41 = sub_1C4428DA0(v39);
    if (v41)
    {
      *&v200 = MEMORY[0x1E69E7CC0];
      v194 = v41;
      sub_1C44CD9C0(0, v41 & ~(v41 >> 63), 0);
      if (v194 < 0)
      {
        __break(1u);
        return;
      }

      v175 = v37;
      v193 = v7;
      v176 = a2;
      v42 = v8;
      v43 = 0;
      v44 = v200;
      v192 = v39 & 0xC000000000000001;
      v45 = (v42 + 8);
      v46 = v39;
      do
      {
        if (v192)
        {
          v47 = MEMORY[0x1C6940F90](v43, v40);
        }

        else
        {
          v47 = *(v40 + 8 * v43 + 32);
        }

        v48 = v47;
        v49 = [v47 URL];
        v50 = v195;
        sub_1C4EF98C8();

        v51 = sub_1C4EF9818();
        v53 = v52;

        (*v45)(v50, v193);
        *&v200 = v44;
        v55 = *(v44 + 16);
        v54 = *(v44 + 24);
        if (v55 >= v54 >> 1)
        {
          sub_1C44CD9C0(v54 > 1, v55 + 1, 1);
          v44 = v200;
        }

        ++v43;
        *(v44 + 16) = v55 + 1;
        v56 = v44 + 16 * v55;
        *(v56 + 32) = v51;
        *(v56 + 40) = v53;
        v40 = v46;
      }

      while (v194 != v43);

      a1 = v190;
      a2 = v176;
    }

    else
    {

      v44 = MEMORY[0x1E69E7CC0];
    }

    *(a1 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_virtualConferenceURL) = v44;
  }

  v57 = 0xD000000000000013;
  type metadata accessor for EKEventStructs.IdentifierRelationshipType(0);
  swift_allocObject();
  v58 = sub_1C4D8E478();
  v59 = &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType;
  v60 = (v58 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType);
  *v60 = 0xD000000000000018;
  v60[1] = 0x80000001C4F92600;

  v61 = [a2 calendarItemIdentifier];
  v62 = sub_1C4F01138();
  v64 = v63;

  v65 = a2;
  v66 = &OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId;
  v67 = (v58 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId);
  *v67 = v62;
  v67[1] = v64;

  swift_allocObject();
  v68 = sub_1C4D8E478();
  *(v68 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType) = xmmword_1C4F1F450;

  v69 = (v68 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId);
  v70 = v181;
  *v69 = v180;
  v69[1] = v70;

  sub_1C456902C(&unk_1EC0BADA0, &unk_1C4F0FD20);
  v71 = swift_allocObject();
  *(v71 + 16) = xmmword_1C4F10430;
  *(v71 + 32) = v58;
  *(v71 + 40) = v68;
  v203 = v71;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v194 = v58;

  v193 = v68;

  v72 = v65;
  v73 = sub_1C45B1F9C(v65, &selRef_calendarItemExternalIdentifier);
  if (v74)
  {
    v75 = v73;
    v76 = v74;
    swift_allocObject();
    v77 = sub_1C4D8E478();
    v78 = (v77 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierType);
    *v78 = 0xD00000000000001CLL;
    v78[1] = 0x80000001C4F92640;

    v79 = (v77 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs26IdentifierRelationshipType_identifierId);
    *v79 = v75;
    v79[1] = v76;

    MEMORY[0x1C6940330](v80);
    if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
LABEL_69:
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    v71 = v203;
  }

  v81 = sub_1C47A2E18(v72);
  if (v82)
  {
    v83 = v81;
    v84 = v82;
    swift_allocObject();
    v85 = sub_1C4D8E478();
    v86 = (v85 + *v59);
    *v86 = v57;
    v86[1] = 0x80000001C4F92620;

    v87 = (v85 + *v66);
    *v87 = v83;
    v87[1] = v84;

    MEMORY[0x1C6940330](v88);
    if (*((v203 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v203 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C4F016D8();
    }

    sub_1C4F01748();
    v71 = v203;
  }

  *(v190 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_identifier) = v71;

  sub_1C4D95748();
  type metadata accessor for EKEventStructs.DateRelationshipType(0);
  swift_allocObject();
  v89 = sub_1C4D94D34();
  v90 = v182;
  sub_1C478503C();
  v91 = v185;
  v92 = sub_1C44157D4(v90, 1, v185);
  v195 = v89;
  if (v92 == 1)
  {
    sub_1C4420C3C(v90, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v94 = v186;
    v93 = v187;
  }

  else
  {
    v95 = v188;
    v96 = v177;
    (*(v188 + 32))(v177, v90, v91);
    v97 = [v72 isAllDay];
    v94 = v186;
    sub_1C4EF9F58();
    v98 = Date.dateComponentsJSONString(isAllDay:calendar:)(v97);
    v100 = v99;
    v93 = v187;
    (*(v187 + 8))(v94, v189);
    v101 = (v89 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_startTime);
    *v101 = v98;
    v101[1] = v100;

    sub_1C4EF9AD8();
    v102 = sub_1C4F019E8();
    v104 = v103;
    (*(v95 + 8))(v96, v91);
    v105 = (v89 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedStartTime);
    *v105 = v102;
    v105[1] = v104;
  }

  v106 = v183;
  sub_1C4785070();
  if (sub_1C44157D4(v106, 1, v91) == 1)
  {
    sub_1C4420C3C(v106, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v107 = v188;
    v108 = v178;
    (*(v188 + 32))(v178, v106, v91);
    v109 = [v72 isAllDay];
    sub_1C4EF9F58();
    v110 = Date.dateComponentsJSONString(isAllDay:calendar:)(v109);
    v112 = v111;
    (*(v93 + 8))(v94, v189);
    v113 = v195;
    v114 = &v195[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_endTime];
    *v114 = v110;
    v114[1] = v112;

    sub_1C4EF9AD8();
    v115 = sub_1C4F019E8();
    v117 = v116;
    (*(v107 + 8))(v108, v91);
    v118 = &v113[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedEndTime];
    *v118 = v115;
    v118[1] = v117;
  }

  v119 = v184;
  v120 = v190;
  sub_1C47850A4();
  if (sub_1C44157D4(v119, 1, v91) == 1)
  {
    sub_1C4420C3C(v119, &unk_1EC0B84E0, qword_1C4F0D2D0);
  }

  else
  {
    v121 = v188;
    v122 = v179;
    (*(v188 + 32))(v179, v119, v91);
    v123 = [v72 isAllDay];
    sub_1C4EF9F58();
    v124 = Date.dateComponentsJSONString(isAllDay:calendar:)(v123);
    v126 = v125;
    (*(v93 + 8))(v94, v189);
    v127 = v195;
    v128 = &v195[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_occurrenceDate];
    *v128 = v124;
    v128[1] = v126;

    sub_1C4EF9AD8();
    v129 = sub_1C4F019E8();
    v131 = v130;
    (*(v121 + 8))(v122, v91);
    v132 = &v127[OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs20DateRelationshipType_imputedOccurrenceDate];
    *v132 = v129;
    v132[1] = v131;
  }

  v133 = v191;

  sub_1C4D8724C(v134);
  sub_1C4784FC8(&v197);
  if (v198)
  {
    sub_1C441D670(&v197, &v200);
    v135 = v201;
    v136 = v202;
    sub_1C4409678(&v200, v201);
    if ((v136[6])(v135, v136) == 1 || (v137 = v201, v138 = v202, sub_1C4409678(&v200, v201), !(v138[6])(v137, v138)))
    {
      type metadata accessor for EKEventStructs.ParticipationRelationshipType(0);
      swift_allocObject();
      v139 = sub_1C4D8CE64();
      v140 = v201;
      v141 = v202;
      sub_1C4409678(&v200, v201);
      v142 = sub_1C46CE7B0(v140, v141);
      if (v133)
      {

        sub_1C440962C(&v200);
        return;
      }

      sub_1C4D87274(v142);
      v143 = v201;
      v144 = v202;
      sub_1C4409678(&v200, v201);
      (v144[6])(v143, v144);
      v145 = sub_1C46CEEB0();
      v146 = (v139 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType);
      *v146 = v145;
      v146[1] = v147;

      sub_1C4D87314(v148);
    }

    sub_1C440962C(&v200);
  }

  else
  {
    sub_1C4420C3C(&v197, &qword_1EC0BB3D0, &unk_1C4F1F530);
  }

  v149 = sub_1C4784F80();
  if (v149)
  {
    v72 = v149;
    v191 = v133;
    v66 = 0;
    v57 = *(v149 + 16);
    v59 = (v149 + 32);
    v150 = MEMORY[0x1E69E7CC0];
    while (v57 != v66)
    {
      if (v66 >= v72[2])
      {
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      sub_1C442E860(v59, &v200);
      v151 = v201;
      v152 = v202;
      sub_1C4409678(&v200, v201);
      if ((v152[6])(v151, v152) == 1 || (v153 = v201, v154 = v202, sub_1C4409678(&v200, v201), !(v154[6])(v153, v154)))
      {
        sub_1C441D670(&v200, &v197);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v196 = v150;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1C459DF08();
          v150 = v196;
        }

        v156 = *(v150 + 16);
        if (v156 >= *(v150 + 24) >> 1)
        {
          sub_1C459DF08();
        }

        v157 = v198;
        v158 = v199;
        v159 = sub_1C4418280(&v197, v198);
        v160 = MEMORY[0x1EEE9AC00](v159);
        v162 = &v174 - ((v161 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v163 + 16))(v162, v160);
        sub_1C44FDC24(v156, v162, &v196, v157, v158);
        sub_1C440962C(&v197);
        v150 = v196;
      }

      else
      {
        sub_1C440962C(&v200);
      }

      v59 += 5;
      v66 = (v66 + 1);
    }

    v72 = *(v150 + 16);
    if (v72)
    {
      *&v197 = MEMORY[0x1E69E7CC0];
      sub_1C4F02348();
      v57 = 0;
      v59 = (v150 + 32);
      while (v57 < *(v150 + 16))
      {
        sub_1C442E860(v59, &v200);
        type metadata accessor for EKEventStructs.ParticipationRelationshipType(0);
        swift_allocObject();
        v164 = sub_1C4D8CE64();
        v165 = v201;
        v166 = v202;
        sub_1C4409678(&v200, v201);
        v167 = v191;
        v168 = sub_1C46CE7B0(v165, v166);
        v191 = v167;
        if (v167)
        {

          sub_1C440962C(&v200);

          return;
        }

        ++v57;
        sub_1C4D87274(v168);
        v169 = v201;
        v66 = v202;
        sub_1C4409678(&v200, v201);
        (v66[6])(v169, v66);
        v170 = sub_1C46CEEB0();
        v171 = (v164 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs29ParticipationRelationshipType_eventParticipantType);
        *v171 = v170;
        v171[1] = v172;

        sub_1C440962C(&v200);
        sub_1C4F02318();
        sub_1C4F02358();
        sub_1C4F02368();
        sub_1C4F02328();
        v59 += 5;
        if (v72 == v57)
        {

          v173 = v197;
          goto LABEL_64;
        }
      }

      goto LABEL_68;
    }

    v173 = MEMORY[0x1E69E7CC0];
LABEL_64:
    v120 = v190;
  }

  else
  {
    v173 = 0;
  }

  *(v120 + OBJC_IVAR____TtCO24IntelligencePlatformCore14EKEventStructs13CalendarEvent_hasAttendee) = v173;

  sub_1C4D9570C();
}

uint64_t sub_1C46D0AF4()
{
  sub_1C43FBCD4();
  v1[29] = v0;
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v1[30] = swift_task_alloc();
  v1[31] = swift_task_alloc();
  v1[32] = type metadata accessor for EKEventSourceIngestor(0);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v2 = sub_1C4EF9CD8();
  v1[35] = v2;
  v1[36] = *(v2 - 8);
  v1[37] = swift_task_alloc();
  v1[38] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46D0C3C, 0, 0);
}

uint64_t sub_1C46D0C3C()
{
  v99 = v0;
  v1 = sub_1C4F01108();
  v2 = sub_1C44C1028(v1);

  if (!v2)
  {
    if (qword_1EDDFD028 != -1)
    {
      goto LABEL_56;
    }

    goto LABEL_35;
  }

  v3 = [objc_allocWithZone(MEMORY[0x1E6966A18]) initWithEKOptions_];
  v0[39] = v3;
  if (!v3)
  {
LABEL_38:
    sub_1C4EF9AE8();
    sub_1C43FBD94();
    sub_1C4643FF4();
LABEL_39:
    sub_1C442DE64();

    sub_1C43FBDA0();
    goto LABEL_48;
  }

  v4 = v3;
  v5 = v0 + 23;
  v6 = v0 + 24;
  v7 = v0[32];
  v8 = v0[29];
  v0[23] = 0;
  v0[24] = 0;
  sub_1C4EF9C38();
  sub_1C4EF9C38();
  v9 = sub_1C4EF9BF8();
  v10 = sub_1C4EF9BF8();
  v11 = [v4 predicateForEventsWithStartDate:v9 endDate:v10 calendars:0];
  v0[40] = v11;

  v12 = [v4 eventsMatchingPredicate_];
  sub_1C4461BB8(0, &unk_1EDDF0390, 0x1E6966A08);
  v13 = sub_1C4F01678();
  v0[41] = v13;

  v14 = sub_1C4F00F28();
  v0[25] = v14;
  v15 = *(v8 + *(v7 + 28));
  v0[42] = v15;
  v95 = v0 + 23;
  if (!v15)
  {
LABEL_41:
    v50 = v0[41];
    v51 = v0[29];
    *(v0 + 432) = 0;
    v52 = *&v51[*(type metadata accessor for PhaseStores(0) + 24)];
    v53 = swift_task_alloc();
    *(v53 + 16) = v50;
    *(v53 + 24) = v51;
    *(v53 + 32) = v5;
    *(v53 + 40) = v0 + 25;
    *(v53 + 48) = v6;
    *(v53 + 56) = v0 + 54;
    v54 = sub_1C442C7C8();
    GraphStore.tripleInsertingTransaction(transactionBody:)(v54, v55);
    v56 = v6;
    v57 = v0[40];
    sub_1C43FEE1C(v0[41]);

    sub_1C4EF9AE8();
    sub_1C43FBD94();
    sub_1C4643FF4();

    v76 = sub_1C4412F58();
    (v53)(v76);
    v77 = sub_1C442FBC8();
    (v53)(v77);

    sub_1C46D284C(v52, v56, v95);

    goto LABEL_39;
  }

  v16 = v14;
  v17 = sub_1C4428DA0(v13);
  v0[43] = v17;
  v18 = v15;
  v19 = 0;
  v20 = &off_1E81F1000;
  v21 = &off_1E81F1000;
  v22 = v16;
  v97 = v16;
  while (1)
  {
    v0[44] = 0;
    v0[45] = v22;
    if (v19 == v17)
    {

      v5 = v0 + 23;
      v6 = v0 + 24;
      goto LABEL_41;
    }

    if ((v0[41] & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1C6940F90](v19);
    }

    else
    {
      sub_1C43FC1D8();
      if (v24)
      {
        goto LABEL_55;
      }

      v25 = *(v23 + 8 * v19 + 32);
    }

    v26 = v25;
    v0[46] = v25;
    v0[47] = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      sub_1C43FE9B4(&qword_1EDDFD028);
LABEL_35:
      v45 = sub_1C4F00978();
      sub_1C442B738(v45, qword_1EDE2DE10);
      v46 = sub_1C4F00968();
      v47 = sub_1C4F01CF8();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        *v48 = 0;
        _os_log_impl(&dword_1C43F8000, v46, v47, "Siri Toggle: Pipeline is blocked from sourcing EKEvent", v48, 2u);
        sub_1C43FBE2C();
      }

      goto LABEL_38;
    }

    if (sub_1C4F01948())
    {
      break;
    }

    v27 = [v26 v20[334]];
    if (!v27)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v27);
    }

    v28 = v27;
    v29 = [v27 v21[335]];

    if (v29)
    {
      goto LABEL_19;
    }

    v30 = [v26 startDate];
    v31 = v0[31];
    if (v30)
    {
      v32 = v30;
      sub_1C4EF9C78();

      sub_1C43FD50C();
      v33 = v0 + 31;
    }

    else
    {
      sub_1C4432138();
      sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v40 = [v26 endDate];
      v41 = v0[30];
      if (v40)
      {
        v42 = v40;
        sub_1C4EF9C78();

        sub_1C43FD50C();
        sub_1C4420C3C(v41, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v22 = v97;
        v20 = &off_1E81F1000;
        goto LABEL_20;
      }

      sub_1C4432138();
      v33 = v0 + 30;
      v22 = v97;
      v20 = &off_1E81F1000;
    }

    sub_1C4420C3C(*v33, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v0[48] = sub_1C47A2E0C(v26);
    v0[49] = v34;
    if (!v34)
    {
LABEL_19:

      goto LABEL_20;
    }

    sub_1C4784C34(v0 + 18);
    v35 = v0[21];
    if (!v35)
    {

      sub_1C4420C3C((v0 + 18), &qword_1EC0BB3B8, &unk_1C4F1F510);
      goto LABEL_20;
    }

    v36 = v0[22];
    sub_1C4409678(v0 + 18, v0[21]);
    v37 = (*(v36 + 32))(v35, v36);
    v39 = v38;
    v0[50] = v37;
    v0[51] = v38;
    sub_1C440962C(v0 + 18);
    if (v39 >> 60 != 15)
    {
      switch(v39 >> 62)
      {
        case 1uLL:
          v43 = v37;
          v44 = v37 >> 32;
          goto LABEL_30;
        case 2uLL:
          v43 = *(v37 + 16);
          v44 = *(v37 + 24);
LABEL_30:
          if (v43 == v44)
          {
            goto LABEL_31;
          }

          goto LABEL_51;
        case 3uLL:
          goto LABEL_31;
        default:
          if ((v39 & 0xFF000000000000) == 0)
          {
LABEL_31:

            sub_1C441DFEC(v37, v39);
            goto LABEL_32;
          }

LABEL_51:
          v88 = v0[42];
          v89 = sub_1C4EF9A38();
          sub_1C441C938(v89);
          v0[2] = v90;
          v0[7] = v0 + 26;
          v0[3] = sub_1C46D160C;
          v91 = swift_continuation_init();
          v92 = sub_1C456902C(&unk_1EC0BB3C0, &unk_1C4F1F520);
          sub_1C441F7C8(v92);
          v0[11] = 1107296256;
          sub_1C440A95C();
          v0[13] = v93;
          v0[14] = v91;
          [v88 resolveMapItemFromHandle:v39 completionHandler:v0 + 10];
          v27 = v0 + 2;

          break;
      }

      return MEMORY[0x1EEE6DEC8](v27);
    }

LABEL_32:

    v21 = &off_1E81F1000;
    v22 = v97;
LABEL_20:
    v19 = v0[47];
    v17 = v0[43];
  }

  if (qword_1EDDFD028 != -1)
  {
    sub_1C43FE9B4(&qword_1EDDFD028);
  }

  v58 = sub_1C4404230();
  sub_1C442B738(v58, qword_1EDE2DE10);
  sub_1C44193D8();
  v59 = sub_1C43FBC98();
  sub_1C46D35C8(v59, v60, v61);
  v62 = sub_1C4F00968();
  v63 = sub_1C4F01CF8();
  v64 = os_log_type_enabled(v62, v63);
  v65 = v0[34];
  if (v64)
  {
    v66 = v0[33];
    v67 = swift_slowAlloc();
    v68 = swift_slowAlloc();
    v98 = v68;
    *v67 = 136315138;
    sub_1C44193D8();
    sub_1C46D35C8(v65, v66, v69);
    sub_1C4417000();
    sub_1C46D3570(v65, v70);
    sub_1C4640CCC();
    v72 = v71;
    v74 = v73;
    sub_1C46D3570(v66, qword_1C4F0D2D0);
    v75 = sub_1C441D828(v72, v74, &v98);

    *(v67 + 4) = v75;
    _os_log_impl(&dword_1C43F8000, v62, v63, "%s going to defer", v67, 0xCu);
    sub_1C440962C(v68);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
    sub_1C4411AE8();
  }

  v78 = v0[42];
  v79 = v0[40];
  v80 = v0[38];
  v94 = v0[37];
  v82 = v0[35];
  v81 = v0[36];
  v96 = v0[29];
  sub_1C4F01828();
  sub_1C440015C();
  v85 = sub_1C46D3528(v83, v84, MEMORY[0x1E69E8558]);
  sub_1C440F170(v85);
  sub_1C4F00EA8();
  swift_willThrow();

  v86 = *(v81 + 8);
  v86(v94, v82);
  v86(v80, v82);

  sub_1C46D284C(v96, v0 + 24, v95);
  sub_1C44088A8();

  sub_1C43FBDA0();
LABEL_48:

  return v49();
}

uint64_t sub_1C46D160C()
{
  sub_1C43FBCD4();
  v1 = *(*v0 + 48);
  *(*v0 + 424) = v1;
  if (v1)
  {

    v2 = sub_1C46D2078;
  }

  else
  {
    v2 = sub_1C46D1720;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C46D1720()
{
  v118 = v0;
  v3 = v0 + 208;
  v2 = *(v0 + 208);
  v4 = *(v0 + 416);
  if (!v2)
  {

    v17 = sub_1C43FBC98();
    sub_1C441DFEC(v17, v18);

LABEL_11:
    v116 = *(v0 + 360);
LABEL_18:
    v111 = (v3 - 16);
    v110 = (v3 - 24);
    v30 = *(v0 + 352);
    v113 = (v3 - 64);
    v31 = &off_1E81F1000;
    v112 = v30;
    while (1)
    {
      while (1)
      {
        v32 = *(v0 + 376);
        *(v0 + 352) = v30;
        *(v0 + 360) = v116;
        if (v32 == *(v0 + 344))
        {

          v51 = *(v0 + 328);
          v52 = *(v0 + 232);
          *(v0 + 432) = 0;
          v53 = *(v52 + *(type metadata accessor for PhaseStores(0) + 24));
          v54 = swift_task_alloc();
          *(v54 + 16) = v51;
          *(v54 + 24) = v52;
          *(v54 + 32) = v110;
          *(v54 + 40) = v3 - 8;
          *(v54 + 48) = v111;
          *(v54 + 56) = v3 + 224;
          v55 = sub_1C442C7C8();
          GraphStore.tripleInsertingTransaction(transactionBody:)(v55, v56);
          v58 = *(v0 + 320);
          v57 = *(v0 + 328);
          if (v30)
          {
            sub_1C440D2D4(v57);

            v59 = sub_1C4412F58();
            (v54)(v59);
            v60 = sub_1C442FBC8();
            (v54)(v60);

            v61 = v1;
            v62 = (v3 - 16);
            v63 = (v3 - 24);
            goto LABEL_56;
          }

          sub_1C43FEE1C(v57);

          sub_1C4EF9AE8();
          sub_1C43FBD94();
          sub_1C4643FF4();

          v93 = sub_1C4412F58();
          (v54)(v93);
          v94 = sub_1C442FBC8();
          (v54)(v94);

          sub_1C46D284C(v53, v111, v110);

          sub_1C442DE64();

          sub_1C43FBDA0();
LABEL_57:
          sub_1C44149E0();

          __asm { BRAA            X1, X16 }
        }

        if ((*(v0 + 328) & 0xC000000000000001) != 0)
        {
          v35 = MEMORY[0x1C6940F90](v32);
        }

        else
        {
          sub_1C43FC1D8();
          if (v34)
          {
            goto LABEL_65;
          }

          v35 = *(v33 + 8 * v32 + 32);
        }

        v1 = v35;
        *(v0 + 368) = v35;
        *(v0 + 376) = v32 + 1;
        if (__OFADD__(v32, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          sub_1C43FE9B4(&qword_1EDDFD028);
LABEL_52:
          v64 = sub_1C4404230();
          sub_1C442B738(v64, qword_1EDE2DE10);
          sub_1C44193D8();
          v65 = sub_1C43FBC98();
          sub_1C46D35C8(v65, v66, v67);
          v68 = sub_1C4F00968();
          v69 = sub_1C4F01CF8();
          v70 = os_log_type_enabled(v68, v69);
          v71 = *(v0 + 272);
          if (v70)
          {
            v72 = *(v0 + 264);
            v73 = swift_slowAlloc();
            v74 = swift_slowAlloc();
            v117 = v74;
            *v73 = 136315138;
            sub_1C44193D8();
            sub_1C46D35C8(v71, v72, v75);
            sub_1C4417000();
            sub_1C46D3570(v71, v76);
            sub_1C4640CCC();
            v78 = v77;
            v80 = v79;
            sub_1C46D3570(v72, &off_1E81F1000);
            v81 = sub_1C441D828(v78, v80, &v117);

            *(v73 + 4) = v81;
            _os_log_impl(&dword_1C43F8000, v68, v69, "%s going to defer", v73, 0xCu);
            sub_1C440962C(v74);
            sub_1C43FBE2C();
            sub_1C43FBE2C();
          }

          else
          {
            sub_1C4411AE8();
          }

          v82 = *(v0 + 336);
          v83 = *(v0 + 320);
          v114 = *(v0 + 296);
          v115 = *(v0 + 304);
          v85 = *(v0 + 280);
          v84 = *(v0 + 288);
          v86 = *(v0 + 232);
          sub_1C4F01828();
          sub_1C440015C();
          v89 = sub_1C46D3528(v87, v88, MEMORY[0x1E69E8558]);
          sub_1C440F170(v89);
          sub_1C4F00EA8();
          swift_willThrow();

          v90 = *(v84 + 8);
          v90(v114, v85);
          v90(v115, v85);

          v61 = v86;
          v62 = v111;
          v63 = v110;
LABEL_56:
          sub_1C46D284C(v61, v62, v63);
          sub_1C44088A8();

          sub_1C43FBDA0();
          goto LABEL_57;
        }

        if (sub_1C4F01948())
        {
          if (qword_1EDDFD028 != -1)
          {
            goto LABEL_66;
          }

          goto LABEL_52;
        }

        v11 = [v1 calendar];
        if (!v11)
        {
          goto LABEL_69;
        }

        v36 = v11;
        v37 = [v11 v31[335]];

        if ((v37 & 1) == 0)
        {
          break;
        }
      }

      v38 = [v1 startDate];
      v39 = *(v0 + 248);
      if (v38)
      {
        break;
      }

      sub_1C4432138();
      sub_1C4420C3C(v39, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v47 = [v1 endDate];
      v48 = *(v0 + 240);
      if (v47)
      {
        sub_1C4409B8C();

        sub_1C43FD50C();
        sub_1C4420C3C(v48, &unk_1EC0B84E0, qword_1C4F0D2D0);
        v31 = &off_1E81F1000;
      }

      else
      {
        sub_1C4432138();
        v40 = (v0 + 240);
LABEL_30:
        sub_1C4420C3C(*v40, &unk_1EC0B84E0, qword_1C4F0D2D0);
        *(v0 + 384) = sub_1C47A2E0C(v1);
        *(v0 + 392) = v41;
        if (!v41)
        {

          goto LABEL_38;
        }

        sub_1C4784C34(v113);
        if (*(v0 + 168))
        {
          sub_1C4409678(v113, *(v0 + 168));
          v42 = sub_1C442BA58();
          v44 = v43(v42);
          v46 = v45;
          *(v0 + 400) = v44;
          *(v0 + 408) = v45;
          sub_1C440962C(v113);
          if (v46 >> 60 == 15)
          {
          }

          else
          {
            switch(v46 >> 62)
            {
              case 1uLL:
                v49 = v44;
                v50 = v44 >> 32;
                goto LABEL_45;
              case 2uLL:
                v49 = *(v44 + 16);
                v50 = *(v44 + 24);
LABEL_45:
                if (v49 == v50)
                {
                  goto LABEL_46;
                }

                goto LABEL_61;
              case 3uLL:
                goto LABEL_46;
              default:
                if ((v46 & 0xFF000000000000) != 0)
                {
LABEL_61:
                  v95 = sub_1C4425A64();
                  v96 = sub_1C441C938(v95);
                  *(v0 + 16) = v97;
                  v105 = sub_1C4402F3C(v96, v98, v99, v100, v101, v102, v103, v104, v109, v3);
                  v106 = sub_1C456902C(&unk_1EC0BB3C0, &unk_1C4F1F520);
                  sub_1C441F7C8(v106);
                  *(v0 + 88) = 1107296256;
                  sub_1C440A95C();
                  *(v0 + 104) = v107;
                  *(v0 + 112) = v105;
                  [&off_1E81F1000 resolveMapItemFromHandle:v46 completionHandler:v30];
                  sub_1C44149E0();

                  return MEMORY[0x1EEE6DEC8](v11);
                }

LABEL_46:

                sub_1C441DFEC(v44, v46);
                break;
            }
          }

          v30 = v112;
          v31 = &off_1E81F1000;
        }

        else
        {

          sub_1C4420C3C(v113, &qword_1EC0BB3B8, &unk_1C4F1F510);
LABEL_38:
          v31 = &off_1E81F1000;
        }
      }
    }

    sub_1C4409B8C();

    sub_1C43FD50C();
    v40 = (v0 + 248);
    goto LABEL_30;
  }

  if (([v2 _hasMUID] & 1) == 0)
  {
    v20 = *(v0 + 400);
    v19 = *(v0 + 408);

    swift_unknownObjectRelease();

    sub_1C441DFEC(v20, v19);
    goto LABEL_11;
  }

  v6 = *(v0 + 384);
  v5 = *(v0 + 392);
  *(v0 + 216) = [v2 _muid];
  v7 = sub_1C4F02858();
  v9 = v8;
  v10 = *(v0 + 200);
  swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 224) = v10;
  v11 = sub_1C445FAA8(v6, v5);
  if (__OFADD__(*(v10 + 16), (v12 & 1) == 0))
  {
    __break(1u);
  }

  else
  {
    v1 = v11;
    v13 = v12;
    sub_1C456902C(&qword_1EC0BA720, &qword_1C4F23540);
    v11 = sub_1C4F02458();
    if (v11)
    {
      v11 = sub_1C445FAA8(*(v0 + 384), *(v0 + 392));
      if ((v13 & 1) != (v14 & 1))
      {
        sub_1C44149E0();

        return sub_1C4F029F8();
      }

      v1 = v11;
    }

    v116 = *(v0 + 224);
    v21 = *(v0 + 392);
    v3 = v0 + 208;
    if (v13)
    {
      v22 = (v116[7] + 16 * v1);
      *v22 = v7;
      v22[1] = v9;

LABEL_17:
      swift_unknownObjectRelease();
      v29 = *(v0 + 368);
      sub_1C441DFEC(*(v0 + 400), *(v0 + 408));

      *(v0 + 200) = v116;
      goto LABEL_18;
    }

    v23 = *(v0 + 384);
    v116[(v1 >> 6) + 8] |= 1 << v1;
    v24 = (v116[6] + 16 * v1);
    *v24 = v23;
    v24[1] = v21;
    v25 = (v116[7] + 16 * v1);
    *v25 = v7;
    v25[1] = v9;
    v26 = v116[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (!v27)
    {
      v116[2] = v28;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
  return MEMORY[0x1EEE6DEC8](v11);
}

uint64_t sub_1C46D2078(uint64_t a1)
{
  v91 = v1;
  v87 = (v1 + 184);
  v85 = (v1 + 192);
  v3 = *(v1 + 416);
  v2 = *(v1 + 424);
  v5 = *(v1 + 400);
  v4 = *(v1 + 408);
  v6 = *(v1 + 368);
  v7 = *(v1 + 232);
  swift_willThrow();
  sub_1C441DFEC(v5, v4);

  LOBYTE(v90[0]) = 1;
  static Transformers.reportError(error:context:config:pipelineType:)(v2, 0xD00000000000001BLL, 0x80000001C4F925D0, v7, v90);

  v8 = (v1 + 248);
  v9 = *(v1 + 360);
  v10 = &off_1E81F1000;
  v11 = qword_1C4F0D2D0;
  v89 = v9;
  while (1)
  {
    v12 = *(v1 + 376);
    *(v1 + 352) = 0;
    *(v1 + 360) = v9;
    if (v12 == *(v1 + 344))
    {

      v34 = *(v1 + 328);
      v35 = *(v1 + 232);
      *(v1 + 432) = 0;
      v36 = *(v35 + *(type metadata accessor for PhaseStores(0) + 24));
      v37 = swift_task_alloc();
      *(v37 + 16) = v34;
      *(v37 + 24) = v35;
      *(v37 + 32) = v87;
      *(v37 + 40) = v1 + 200;
      *(v37 + 48) = v85;
      *(v37 + 56) = v1 + 432;
      v38 = sub_1C442C7C8();
      GraphStore.tripleInsertingTransaction(transactionBody:)(v38, v39);
      v40 = *(v1 + 320);
      sub_1C43FEE1C(*(v1 + 328));

      sub_1C4EF9AE8();
      sub_1C43FBD94();
      sub_1C4643FF4();

      v68 = sub_1C4412F58();
      (v37)(v68);
      v69 = sub_1C442FBC8();
      (v37)(v69);

      sub_1C46D284C(v36, v85, v87);

      sub_1C442DE64();

      sub_1C43FBDA0();
      goto LABEL_38;
    }

    if ((*(v1 + 328) & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x1C6940F90](v12);
    }

    else
    {
      sub_1C43FC1D8();
      if (v14)
      {
        goto LABEL_45;
      }

      v15 = *(v13 + 8 * v12 + 32);
    }

    v3 = v15;
    *(v1 + 368) = v15;
    *(v1 + 376) = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (sub_1C4F01948())
    {
      if (qword_1EDDFD028 != -1)
      {
        goto LABEL_46;
      }

      goto LABEL_34;
    }

    v16 = [v3 calendar];
    if (!v16)
    {
      __break(1u);
      return MEMORY[0x1EEE6DEC8](v16);
    }

    v17 = v16;
    v18 = [v16 v10[335]];

    if (v18)
    {
LABEL_17:
    }

    else
    {
      v19 = v11;
      v20 = [v3 startDate];
      v21 = *(v1 + 248);
      if (v20)
      {
        sub_1C4409B8C();

        sub_1C43FD50C();
        v22 = v8;
        goto LABEL_12;
      }

      sub_1C4432138();
      sub_1C4420C3C(v21, &unk_1EC0B84E0, v11);
      v30 = [v3 endDate];
      v31 = *(v1 + 240);
      if (v30)
      {
        sub_1C4409B8C();

        sub_1C43FD50C();
        sub_1C4420C3C(v31, &unk_1EC0B84E0, v11);
        v8 = (v1 + 248);
        v9 = v89;
      }

      else
      {
        sub_1C4432138();
        v22 = (v1 + 240);
        v8 = (v1 + 248);
        v9 = v89;
LABEL_12:
        sub_1C4420C3C(*v22, &unk_1EC0B84E0, v11);
        *(v1 + 384) = sub_1C47A2E0C(v3);
        *(v1 + 392) = v23;
        if (!v23)
        {
          goto LABEL_17;
        }

        v24 = v23;
        sub_1C4784C34((v1 + 144));
        if (*(v1 + 168))
        {
          sub_1C4409678((v1 + 144), *(v1 + 168));
          v25 = sub_1C442BA58();
          v27 = v26(v25);
          v29 = v28;
          *(v1 + 400) = v27;
          *(v1 + 408) = v28;
          sub_1C440962C((v1 + 144));
          if (v29 >> 60 == 15)
          {

LABEL_16:
          }

          else
          {
            switch(v29 >> 62)
            {
              case 1uLL:
                v32 = v27;
                v33 = v27 >> 32;
                goto LABEL_28;
              case 2uLL:
                v32 = *(v27 + 16);
                v33 = *(v27 + 24);
LABEL_28:
                if (v32 == v33)
                {
                  goto LABEL_29;
                }

                goto LABEL_41;
              case 3uLL:

                sub_1C441DFEC(v27, v29);
                goto LABEL_16;
              default:
                if ((v29 & 0xFF000000000000) != 0)
                {
LABEL_41:
                  v71 = sub_1C4425A64();
                  v72 = sub_1C441C938(v71);
                  *(v1 + 16) = v73;
                  v81 = sub_1C4402F3C(v72, v74, v75, v76, v77, v78, v79, v80, v84, v1 + 208);
                  v82 = sub_1C456902C(&unk_1EC0BB3C0, &unk_1C4F1F520);
                  sub_1C441F7C8(v82);
                  *(v1 + 88) = 1107296256;
                  sub_1C440A95C();
                  *(v1 + 104) = v83;
                  *(v1 + 112) = v81;
                  [v19 resolveMapItemFromHandle:v29 completionHandler:&off_1E81F1000];
                  v16 = v24;

                  return MEMORY[0x1EEE6DEC8](v16);
                }

LABEL_29:

                sub_1C441DFEC(v27, v29);

                break;
            }
          }

          v10 = &off_1E81F1000;
          v9 = v89;
          v11 = v19;
        }

        else
        {

          sub_1C4420C3C(v1 + 144, &qword_1EC0BB3B8, &unk_1C4F1F510);
        }
      }
    }
  }

  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  sub_1C43FE9B4(&qword_1EDDFD028);
LABEL_34:
  v41 = sub_1C4404230();
  sub_1C442B738(v41, qword_1EDE2DE10);
  sub_1C44193D8();
  v42 = sub_1C43FBC98();
  sub_1C46D35C8(v42, v43, v44);
  v45 = sub_1C4F00968();
  v46 = sub_1C4F01CF8();
  v47 = os_log_type_enabled(v45, v46);
  v48 = *(v1 + 272);
  if (v47)
  {
    v49 = *(v1 + 264);
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v90[0] = v51;
    *v50 = 136315138;
    sub_1C44193D8();
    sub_1C46D35C8(v48, v49, v52);
    sub_1C46D3570(v48, type metadata accessor for EKEventSourceIngestor);
    sub_1C4640CCC();
    v54 = v53;
    v56 = v55;
    sub_1C46D3570(v49, type metadata accessor for EKEventSourceIngestor);
    v57 = sub_1C441D828(v54, v56, v90);

    *(v50 + 4) = v57;
    _os_log_impl(&dword_1C43F8000, v45, v46, "%s going to defer", v50, 0xCu);
    sub_1C440962C(v51);
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {
    sub_1C4411AE8();
  }

  v58 = *(v1 + 336);
  v59 = *(v1 + 320);
  v60 = *(v1 + 304);
  v86 = *(v1 + 296);
  v62 = *(v1 + 280);
  v61 = *(v1 + 288);
  v88 = *(v1 + 232);
  sub_1C4F01828();
  sub_1C440015C();
  v65 = sub_1C46D3528(v63, v64, MEMORY[0x1E69E8558]);
  sub_1C440F170(v65);
  sub_1C4F00EA8();
  swift_willThrow();

  v66 = *(v61 + 8);
  v66(v86, v62);
  v66(v60, v62);

  sub_1C46D284C(v88, v85, v87);
  sub_1C44088A8();

  sub_1C43FBDA0();
LABEL_38:

  return v70();
}

uint64_t sub_1C46D284C(uint64_t a1, void *a2, void *a3)
{
  v6 = type metadata accessor for Pipeline.StatusStore(0);
  v7 = v6 - 8;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1C46D35C8(a1, v9, type metadata accessor for Configuration);
  v9[*(v7 + 28)] = *(a1 + *(type metadata accessor for EKEventSourceIngestor(0) + 24));
  Pipeline.StatusStore.currentSessionId()();
  sub_1C46D3570(v9, type metadata accessor for Pipeline.StatusStore);
  sub_1C4F00288();
  sub_1C456902C(&qword_1EC0BA6C0, &unk_1C4F14600);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D480;
  *(inited + 32) = 0x496E6F6973736573;
  *(inited + 40) = 0xE900000000000064;
  v11 = sub_1C4F01108();

  *(inited + 48) = v11;
  *(inited + 56) = 0x614E656372756F73;
  *(inited + 64) = 0xEA0000000000656DLL;
  sub_1C4461BB8(0, &qword_1EDDFA440, 0x1E696AEC0);
  *(inited + 72) = sub_1C4F01EF8();
  *(inited + 80) = 0x756F436E656B6174;
  *(inited + 88) = 0xEA0000000000746ELL;
  *(inited + 96) = sub_1C4F01B58();
  strcpy((inited + 104), "droppedCount");
  *(inited + 117) = 0;
  *(inited + 118) = -5120;
  result = *a3 - *a2;
  if (__OFSUB__(*a3, *a2))
  {
    __break(1u);
  }

  else
  {
    *(inited + 120) = sub_1C4F01B58();
    sub_1C4461BB8(0, qword_1EDDFCDD0, 0x1E69E58C0);
    sub_1C4F00F28();
    sub_1C4F00268();
  }

  return result;
}

void sub_1C46D2AD4(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t *a6@<X5>, void *a7@<X6>, char *a8@<X7>, char *a9@<X8>)
{
  v75 = a7;
  v76 = a8;
  v83 = a4;
  v84 = a6;
  v78 = a1;
  v79 = a2;
  v77 = a9;
  v12 = &unk_1EC0B84E0;
  v13 = qword_1C4F0D2D0;
  v14 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v81 = &v73 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v86 = &v73 - v17;
  v18 = type metadata accessor for EKEventSourceIngestor(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v73 = &v73 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v74 = &v73 - v21;
  v22 = sub_1C4428DA0(a3);
  v23 = 0;
  v88 = a3 & 0xFFFFFFFFFFFFFF8;
  v89 = a3 & 0xC000000000000001;
  v85 = v22;
  v80 = a5;
  v82 = a3;
  while (1)
  {
    if (v22 == v23)
    {
      v59 = *v76;
      goto LABEL_36;
    }

    if (v89)
    {
      v24 = MEMORY[0x1C6940F90](v23, a3);
    }

    else
    {
      if (v23 >= *(v88 + 16))
      {
        goto LABEL_44;
      }

      v24 = *(a3 + 8 * v23 + 32);
    }

    v9 = v24;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (sub_1C4F01948())
    {
      if (qword_1EDDFD028 != -1)
      {
        goto LABEL_47;
      }

      goto LABEL_38;
    }

    if (__OFADD__(*a5, 1))
    {
      goto LABEL_45;
    }

    v25 = v12;
    ++*a5;
    v26 = [v9 calendar];
    if (!v26)
    {
      __break(1u);
      return;
    }

    v27 = v26;
    v28 = [v26 isSuggestedEventCalendar];

    if (v28)
    {

LABEL_29:
      v12 = v25;
      goto LABEL_30;
    }

    v29 = [v9 startDate];
    if (v29)
    {
      v30 = v29;
      v31 = v86;
      sub_1C4EF9C78();

      v32 = sub_1C4EF9CD8();
      sub_1C440BAA8(v31, 0, 1, v32);
      v33 = v31;
    }

    else
    {
      v44 = sub_1C4EF9CD8();
      v45 = v86;
      sub_1C440BAA8(v86, 1, 1, v44);
      v46 = v45;
      v12 = v25;
      sub_1C4420C3C(v46, v25, v13);
      v47 = [v9 endDate];
      if (v47)
      {
        v48 = v47;
        v49 = v81;
        sub_1C4EF9C78();

        sub_1C440BAA8(v49, 0, 1, v44);
        sub_1C4420C3C(v49, v12, v13);
        v22 = v85;
        goto LABEL_30;
      }

      v58 = v81;
      sub_1C440BAA8(v81, 1, 1, v44);
      v33 = v58;
      v22 = v85;
    }

    v12 = v25;
    sub_1C4420C3C(v33, v25, v13);
    v34 = sub_1C47A2E0C(v9);
    if (!v35)
    {

      goto LABEL_30;
    }

    v36 = v13;
    v37 = *v84;
    if (*(*v84 + 16))
    {
      v38 = sub_1C445FAA8(v34, v35);
      v40 = v39;

      if (v40)
      {
        v41 = (*(v37 + 56) + 16 * v38);
        v42 = *v41;
        v43 = v41[1];
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      }

      else
      {
        v42 = 0;
        v43 = 0;
      }

      a5 = v80;
    }

    else
    {

      v42 = 0;
      v43 = 0;
    }

    v50 = v42;
    v51 = v87;
    sub_1C46CF5B4(v50, v43, 1);
    if (v51)
    {
      v87 = 0;
      v13 = v36;
      v22 = v85;

      v91 = v51;
      v54 = v51;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      if (swift_dynamicCast())
      {

        v55 = v90[1];
        sub_1C465B58C();
        v56 = swift_allocError();
        *v57 = v55;
        v90[0] = 1;
        static Transformers.reportError(error:context:config:pipelineType:)(v56, 0x746E6576454B45, 0xE700000000000000, v83, v90);

        a3 = v82;
        goto LABEL_29;
      }

      v59 = 1;
      LOBYTE(v91) = 1;
      static Transformers.reportError(error:context:config:pipelineType:)(v51, 0x746E6576454B45, 0xE700000000000000, v83, &v91);

      *v76 = 1;
LABEL_36:
      *v77 = v59;
      return;
    }

    sub_1C4812140();
    v53 = v52;

    v78(v53);
    v13 = v36;
    v87 = 0;

    v22 = v85;
    if (__OFADD__(*v75, 1))
    {
      goto LABEL_46;
    }

    v12 = v25;
    ++*v75;
    a3 = v82;
LABEL_30:
    ++v23;
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  swift_once();
LABEL_38:
  v60 = sub_1C4F00978();
  sub_1C442B738(v60, qword_1EDE2DE10);
  v61 = v74;
  sub_1C46D35C8(v83, v74, type metadata accessor for EKEventSourceIngestor);
  v62 = sub_1C4F00968();
  v63 = sub_1C4F01CF8();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v91 = v65;
    *v64 = 136315138;
    v66 = v73;
    sub_1C46D35C8(v61, v73, type metadata accessor for EKEventSourceIngestor);
    sub_1C46D3570(v61, type metadata accessor for EKEventSourceIngestor);
    sub_1C4640CCC();
    v68 = v67;
    v70 = v69;
    sub_1C46D3570(v66, type metadata accessor for EKEventSourceIngestor);
    v71 = sub_1C441D828(v68, v70, &v91);

    *(v64 + 4) = v71;
    _os_log_impl(&dword_1C43F8000, v62, v63, "%s going to defer", v64, 0xCu);
    sub_1C440962C(v65);
    MEMORY[0x1C6942830](v65, -1, -1);
    MEMORY[0x1C6942830](v64, -1, -1);
  }

  else
  {
    sub_1C46D3570(v61, type metadata accessor for EKEventSourceIngestor);
  }

  sub_1C4F01828();
  sub_1C46D3528(&qword_1EDDFCF00, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
  v72 = swift_allocError();
  sub_1C4F00EA8();
  v87 = v72;
  swift_willThrow();
}

uint64_t sub_1C46D3284()
{
  sub_1C43FBCD4();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1C44E2E7C;

  return sub_1C46D0AF4();
}

uint64_t sub_1C46D337C(uint64_t a1)
{
  result = sub_1C46D3528(qword_1EDDE3D28, type metadata accessor for EKEventSourceIngestor, &unk_1C4F1F478);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46D33D4(uint64_t a1)
{
  result = sub_1C46D3528(&qword_1EDDE3D08, type metadata accessor for EKEventSourceIngestor, &unk_1C4F1F4A0);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46D342C(uint64_t a1)
{
  result = sub_1C46D3528(&qword_1EDDE3D10, type metadata accessor for EKEventSourceIngestor, &unk_1C4F1F4BC);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1C46D3484@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 URL];
  if (v3)
  {
    v4 = v3;
    sub_1C4EF98C8();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1C4EF98F8();

  return sub_1C440BAA8(a1, v5, 1, v6);
}

uint64_t sub_1C46D3528(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C46D3570(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C46D35C8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  v4 = sub_1C43FBC98();
  v5(v4);
  return a2;
}

_BYTE *_s19EmbeddingRecordTypeOwst(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C46D3700(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 == 1)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C46D3754(char a1)
{
  if (a1)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6E69646465626D65;
  }
}

uint64_t sub_1C46D37C0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C46D3700(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1C46D37F0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1C46D3754(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C46D3820()
{
  result = qword_1EC0BB3E0;
  if (!qword_1EC0BB3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB3E0);
  }

  return result;
}

unint64_t sub_1C46D3924()
{
  result = qword_1EDDE8380;
  if (!qword_1EDDE8380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8380);
  }

  return result;
}

uint64_t sub_1C46D3988()
{
  if (qword_1EC0B70F0 != -1)
  {
    swift_once();
  }

  qword_1EC151BA8 = qword_1EC0C37C8;
  *algn_1EC151BB0 = *&qword_1EC0C37D0;
  qword_1EC151BC0 = qword_1EC0C37E0;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

uint64_t sub_1C46D3A08(void *a1)
{
  v3 = v1;
  v5 = sub_1C456902C(&qword_1EC0BB410, &qword_1C4F1F750);
  sub_1C43FCDF8();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v12[-v9];
  sub_1C4409678(a1, a1[3]);
  sub_1C46D413C();
  sub_1C4F02BF8();
  v15 = 0;
  sub_1C4F02798();
  if (!v2)
  {
    v14 = 1;
    sub_1C4F02738();
    v13 = *(v3 + 32);
    v12[15] = 2;
    sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
    sub_1C46D4190(&qword_1EC0B8728, sub_1C458A984, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  return (*(v7 + 8))(v10, v5);
}

uint64_t sub_1C46D3BE4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1C456902C(&qword_1EC0BB400, &unk_1C4F1F740);
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(a1, a1[3]);
  sub_1C46D413C();
  sub_1C4F02BC8();
  if (v2)
  {
    return sub_1C440962C(a1);
  }

  v6 = sub_1C4F02678();
  v8 = v7;
  v15 = v6;
  v13 = sub_1C4F02618();
  v14 = v9;
  sub_1C456902C(&qword_1EC0B8720, &qword_1C4F0D970);
  sub_1C46D4190(&qword_1EC0B8740, sub_1C458AA50, MEMORY[0x1E69E6330]);
  sub_1C4F026C8();
  v10 = sub_1C4402F74();
  v11(v10);
  result = sub_1C440962C(a1);
  *a2 = v15;
  a2[1] = v8;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v16;
  return result;
}

uint64_t sub_1C46D3E5C(uint64_t a1)
{
  v2 = sub_1C46D413C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46D3E98(uint64_t a1)
{
  v2 = sub_1C46D413C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C46D3ED4()
{
  v1 = *(v0 + 16);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  return v1;
}

double sub_1C46D3F04@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1C46D3BE4(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

unint64_t sub_1C46D3F64(uint64_t a1)
{
  result = sub_1C46D3F8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C46D3F8C()
{
  result = qword_1EC0BB3E8;
  if (!qword_1EC0BB3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB3E8);
  }

  return result;
}

uint64_t sub_1C46D3FE0@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC0B68F8 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC151BC0;
  *a1 = qword_1EC151BA8;
  *(a1 + 8) = *algn_1EC151BB0;
  *(a1 + 24) = v2;

  return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
}

unint64_t sub_1C46D4064(uint64_t a1)
{
  *(a1 + 8) = sub_1C46D4094();
  result = sub_1C46D40E8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1C46D4094()
{
  result = qword_1EC0BB3F0;
  if (!qword_1EC0BB3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB3F0);
  }

  return result;
}

unint64_t sub_1C46D40E8()
{
  result = qword_1EC0BB3F8;
  if (!qword_1EC0BB3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB3F8);
  }

  return result;
}

unint64_t sub_1C46D413C()
{
  result = qword_1EC0BB408;
  if (!qword_1EC0BB408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB408);
  }

  return result;
}

uint64_t sub_1C46D4190(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0B8720, &qword_1C4F0D970);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Employment.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C46D42E8()
{
  result = qword_1EC0BB418;
  if (!qword_1EC0BB418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB418);
  }

  return result;
}

unint64_t sub_1C46D4340()
{
  result = qword_1EC0BB420;
  if (!qword_1EC0BB420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB420);
  }

  return result;
}

unint64_t sub_1C46D4398()
{
  result = qword_1EC0BB428;
  if (!qword_1EC0BB428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB428);
  }

  return result;
}

void sub_1C46D43EC(uint64_t a1@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  v103 = a2;
  v102 = a1;
  v104 = a3;
  v5 = type metadata accessor for FeatureValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBD08();
  v9 = (v7 - v8);
  MEMORY[0x1EEE9AC00](v10);
  sub_1C43FBF38();
  v100 = v11;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v99 - v13);
  v15 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  MEMORY[0x1EEE9AC00](v15 - 8);
  sub_1C43FBD08();
  v101 = v16 - v17;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v18);
  sub_1C43FBF38();
  v99 = v19;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v99 - v21;
  v105 = type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v23);
  sub_1C43FBD08();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FEE3C();
  *&v29 = MEMORY[0x1EEE9AC00](v28).n128_u64[0];
  v31 = &v99 - v30;
  switch([v3 type])
  {
    case 1uLL:
      sub_1C43FC1E8(MEMORY[0x1E69E7CC0]);
      v32 = *(v5 + 32);
      sub_1C43FCF64();
      v33 = v105;
      sub_1C440BAA8(v34, v35, v36, v105);
      v37 = [v3 int64Value];
      sub_1C46D6C34(v14 + v32, v22);
      if (sub_1C44157D4(v22, 1, v33) == 1)
      {
        sub_1C4F00318();
        v38 = &v31[v33[5]];
        *v38 = 0;
        v38[8] = 1;
        v39 = &v31[v33[6]];
        *v39 = 0;
        v39[8] = 1;
        v40 = &v31[v33[7]];
        *v40 = 0;
        v40[4] = 1;
        v41 = &v31[v33[8]];
        *v41 = 0;
        *(v41 + 1) = 0;
        if (sub_1C44157D4(v22, 1, v33) != 1)
        {
          sub_1C46D6CA4(v22);
        }
      }

      else
      {
        sub_1C44193F0();
        sub_1C46D6DEC(v22, v31);
      }

      v88 = &v31[v33[5]];
      *v88 = v37;
      v88[8] = 0;
      sub_1C46D6CA4(v14 + v32);
      sub_1C44193F0();
      sub_1C46D6DEC(v31, v14 + v32);
      v84 = v14 + v32;
      v85 = 0;
      v86 = 1;
      v87 = v33;
      goto LABEL_27;
    case 2uLL:
      v44 = MEMORY[0x1E69E7CC0];
      v45 = v104;
      *v104 = MEMORY[0x1E69E7CC0];
      v45[1] = v44;
      v45[2] = v44;
      sub_1C4F00318();
      v46 = *(v5 + 32);
      sub_1C43FCF64();
      v47 = v105;
      sub_1C440BAA8(v48, v49, v50, v105);
      [v3 doubleValue];
      v53 = v52;
      if (v103 == 0xFF)
      {
        v54 = v99;
      }

      else
      {
        v54 = v99;
        if (v103)
        {
          sub_1C47E58BC(v102, v51, v52);
        }

        else
        {
          v55 = sub_1C47E563C(v102, v52, v51);
        }

        v53 = v55;
      }

      sub_1C46D6C34(v45 + v46, v54);
      sub_1C43FD490(v54);
      if (v89)
      {
        sub_1C4F00318();
        sub_1C440E114(v47[5]);
        *(v90 + 8) = 1;
        sub_1C440E114(v47[6]);
        *(v91 + 8) = 1;
        sub_1C4434F74(v47[7]);
        *(v92 + 4) = 1;
        v93 = (v4 + v47[8]);
        *v93 = 0;
        v93[1] = 0;
        sub_1C43FD490(v54);
        if (!v89)
        {
          sub_1C46D6CA4(v54);
        }
      }

      else
      {
        sub_1C44193F0();
        sub_1C46D6DEC(v54, v4);
      }

      v94 = v4 + v47[6];
      *v94 = v53;
      *(v94 + 8) = 0;
      sub_1C46D6CA4(v45 + v46);
      sub_1C44193F0();
      sub_1C46D6DEC(v4, v45 + v46);
      sub_1C440D2F4();
      sub_1C440BAA8(v95, v96, v97, v98);
      return;
    case 3uLL:
      sub_1C43FC1E8(MEMORY[0x1E69E7CC0]);
      v56 = *(v5 + 32);
      sub_1C43FCF64();
      v57 = v105;
      sub_1C440BAA8(v58, v59, v60, v105);
      v61 = [v3 stringValue];
      v62 = sub_1C4F01138();
      v64 = v63;

      v65 = v101;
      sub_1C46D6C34(v14 + v56, v101);
      if (sub_1C44157D4(v65, 1, v57) == 1)
      {
        sub_1C4F00318();
        v66 = v26 + v57[5];
        *v66 = 0;
        *(v66 + 8) = 1;
        v67 = v26 + v57[6];
        *v67 = 0;
        *(v67 + 8) = 1;
        v68 = v26 + v57[7];
        *v68 = 0;
        *(v68 + 4) = 1;
        v69 = (v26 + v57[8]);
        *v69 = 0;
        v69[1] = 0;
        if (sub_1C44157D4(v65, 1, v57) != 1)
        {
          sub_1C46D6CA4(v65);
        }
      }

      else
      {
        sub_1C44193F0();
        sub_1C46D6DEC(v65, v26);
      }

      v83 = (v26 + v105[8]);

      *v83 = v62;
      v83[1] = v64;
      sub_1C46D6CA4(v14 + v56);
      sub_1C44193F0();
      sub_1C46D6DEC(v26, v14 + v56);
      sub_1C440D2F4();
LABEL_27:
      sub_1C440BAA8(v84, v85, v86, v87);
      return;
    case 4uLL:
      v42 = sub_1C46D6BE0();
      sub_1C43FFB2C(&type metadata for EncodableConversionError, v42);
      *v43 = 1;
      goto LABEL_19;
    case 5uLL:
      v74 = [v3 multiArrayValue];
      if (!v74)
      {
        goto LABEL_18;
      }

      v75 = v74;
      v76 = v106;
      sub_1C46D4AF0(v102, v103, v14);

      if (v76)
      {
        return;
      }

      sub_1C442C7E4();
      v73 = v14;
      break;
    case 6uLL:
      v79 = [v3 dictionaryValue];
      sub_1C4447C04();
      v80 = sub_1C4F00ED8();

      v81 = v100;
      v82 = v106;
      sub_1C46D4EF4(v102, v103, v80, v100);

      if (v82)
      {
        return;
      }

      sub_1C442C7E4();
      v73 = v81;
      break;
    case 7uLL:
      v70 = [v3 sequenceValue];
      if (!v70)
      {
        goto LABEL_18;
      }

      v71 = v70;
      v72 = v106;
      sub_1C46D570C(v9);

      if (v72)
      {
        return;
      }

      sub_1C442C7E4();
      v73 = v9;
      break;
    default:
LABEL_18:
      v77 = sub_1C46D6BE0();
      sub_1C43FFB2C(&type metadata for EncodableConversionError, v77);
      *v78 = 0;
LABEL_19:
      swift_willThrow();
      return;
  }

  sub_1C46D6DEC(v73, v104);
}

void sub_1C46D4AF0(uint64_t a1@<X0>, char a2@<W1>, uint64_t *a3@<X8>)
{
  v5 = v4;
  v6 = v3;
  v9 = [v3 shape];
  sub_1C43FBE94();
  sub_1C4447C04();
  v10 = sub_1C4F01678();

  v11 = sub_1C4428DA0(v10);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    v13 = v11;
    v58 = MEMORY[0x1E69E7CC0];
    sub_1C459CF48(0, v11 & ~(v11 >> 63), 0);
    if (v13 < 0)
    {
      goto LABEL_36;
    }

    v54 = a2;
    v55 = v3;
    v57 = a3;
    v14 = 0;
    v15 = v58;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1C6940F90](v14, v10);
      }

      else
      {
        v16 = *(v10 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 integerValue];

      v20 = *(v58 + 16);
      v19 = *(v58 + 24);
      if (v20 >= v19 >> 1)
      {
        v21 = sub_1C43FCFE8(v19);
        sub_1C459CF48(v21, v20 + 1, 1);
      }

      ++v14;
      *(v58 + 16) = v20 + 1;
      *(v58 + 8 * v20 + 32) = v18;
    }

    while (v13 != v14);

    a3 = v57;
    v6 = v55;
    v5 = v4;
    a2 = v54;
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v15 = MEMORY[0x1E69E7CC0];
  }

  *a3 = v12;
  a3[1] = v12;
  a3[2] = v12;
  type metadata accessor for FeatureValue(0);
  sub_1C4F00318();
  type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FCF64();
  sub_1C440BAA8(v22, v23, v24, v25);
  v26 = [v6 dataType];
  if (v26 == 65552 || v26 == 65568)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1C46B6838(a1, a2);
    v30 = sub_1C44088C8();
    v29 = sub_1C46D62AC(v30, v31, v32, v33, v34);
  }

  else if (v26 == 65600)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1C46B6838(a1, a2);
    v35 = sub_1C44088C8();
    v29 = sub_1C46D5CE4(v35, v36, v37, v38, v39);
  }

  else
  {
    if (v26 != 131104)
    {

      v50 = sub_1C46D6BE0();
      v51 = sub_1C43FFB2C(&type metadata for EncodableConversionError, v50);
      sub_1C442DE80(v51, v52);
      goto LABEL_32;
    }

    KeyPath = swift_getKeyPath();
    v28 = swift_getKeyPath();
    v4 = v5;
    sub_1C46D6718(KeyPath, v28, v6);
  }

  if (v4)
  {

LABEL_32:
    sub_1C4411B10();
    sub_1C46D6D30(a3, v53);
    return;
  }

  v40 = v29;

  *a3 = v40;
  v41 = *(v15 + 16);
  if (!v41)
  {

    return;
  }

  v42 = MEMORY[0x1E69E7CC0];
  for (i = 32; ; i += 8)
  {
    v44 = *(v15 + i);
    if (v44 < 0xFFFFFFFF80000000)
    {
      break;
    }

    if (v44 > 0x7FFFFFFF)
    {
      goto LABEL_35;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458B07C(0, *(v42 + 16) + 1, 1, v42);
      v42 = v47;
    }

    v46 = *(v42 + 16);
    v45 = *(v42 + 24);
    if (v46 >= v45 >> 1)
    {
      v48 = sub_1C43FCFE8(v45);
      sub_1C458B07C(v48, v46 + 1, 1, v42);
      v42 = v49;
    }

    *(v42 + 16) = v46 + 1;
    *(v42 + 4 * v46 + 32) = v44;
    if (!--v41)
    {

      a3[1] = v42;
      return;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1C46D4EF4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v106 = a2;
  v104 = a1;
  v7 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  MEMORY[0x1EEE9AC00](v7 - 8);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBF38();
  v110 = v10;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v101 - v12;
  v13 = type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v14);
  sub_1C43FBD08();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v15);
  sub_1C43FBF38();
  sub_1C43FBF28();
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v17);
  v109 = &v101 - v18;
  v113 = type metadata accessor for FeatureValue.NamedValue(0);
  sub_1C43FCDF8();
  v111 = v19;
  MEMORY[0x1EEE9AC00](v20);
  sub_1C43FBD08();
  v120 = v21 - v22;
  sub_1C43FD1D0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v101 - v24;
  v26 = MEMORY[0x1E69E7CC0];
  *a4 = MEMORY[0x1E69E7CC0];
  a4[1] = v26;
  v121 = v26;
  a4[2] = v26;
  type metadata accessor for FeatureValue(0);
  sub_1C4F00318();
  v114 = a4;
  sub_1C43FCF64();
  sub_1C440BAA8(v27, v28, v29, v13);
  v30 = *(a3 + 64);
  v116 = a3 + 64;
  v31 = 1 << *(a3 + 32);
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & v30;
  v108 = (v31 + 63) >> 6;
  v117 = a3;
  result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v35 = 0;
  v115 = v25;
  v107 = v4;
  while (v33)
  {
LABEL_9:
    v37 = __clz(__rbit64(v33)) | (v35 << 6);
    v38 = v117;
    sub_1C457E7A8(*(v117 + 48) + 40 * v37, &v124);
    v39 = *(*(v38 + 56) + 8 * v37);
    v40 = v125;
    v118 = v126;
    v119 = v124;
    v41 = v126;
    v42 = v39;
    if (!v41)
    {
    }

    v43 = v42;
    v44 = v112;
    v124 = v119;
    v125 = v40;
    v126 = v118;
    sub_1C4F00318();
    v45 = v113;
    v46 = &v25[*(v113 + 20)];
    *v46 = 0;
    v46[1] = 0;
    v47 = *(v45 + 24);
    sub_1C43FCF64();
    sub_1C440BAA8(v48, v49, v50, v13);
    *v46 = sub_1C4F02168();
    v46[1] = v51;
    v122 = 0.0;
    sub_1C4410B18();
    sub_1C4F02A88();
    if ((v123 & 1) == 0)
    {
      v59 = v122;
      sub_1C46D6C34(&v25[v47], v44);
      sub_1C43FD490(v44);
      if (v56)
      {
        v72 = v109;
        sub_1C4F00318();
        v60 = v72 + v13[5];
        *v60 = 0;
        *(v60 + 8) = 1;
        v61 = v72 + v13[6];
        *v61 = 0;
        *(v61 + 8) = 1;
        v62 = v72 + v13[7];
        *v62 = 0;
        *(v62 + 4) = 1;
        v63 = (v72 + v13[8]);
        *v63 = 0;
        v63[1] = 0;
        sub_1C43FD490(v44);
        if (!v56)
        {
          sub_1C46D6CA4(v44);
        }
      }

      else
      {
        sub_1C44193F0();
        v72 = v109;
        sub_1C46D6DEC(v44, v109);
      }

      v73 = v72 + v13[5];
      *v73 = v59;
      *(v73 + 8) = 0;
      v90 = v72;
      goto LABEL_33;
    }

    v122 = 0.0;
    sub_1C4410B18();
    sub_1C4F01B68();
    if ((v123 & 1) == 0)
    {
      v64 = v122;
      v65 = v110;
      sub_1C46D6C34(&v115[v47], v110);
      sub_1C43FD490(v65);
      if (v56)
      {
        v77 = v107;
        sub_1C4F00318();
        sub_1C440E114(v13[5]);
        *(v66 + 8) = 1;
        sub_1C440E114(v13[6]);
        *(v67 + 8) = v68;
        sub_1C4434F74(v13[7]);
        *(v69 + 4) = v70;
        v71 = (v77 + v13[8]);
        *v71 = 0;
        v71[1] = 0;
        sub_1C43FD490(v110);
        if (!v56)
        {
          sub_1C46D6CA4(v110);
        }
      }

      else
      {
        sub_1C44193F0();
        v77 = v107;
        sub_1C46D6DEC(v110, v107);
      }

      v78 = v77 + v13[5];
      *v78 = v64;
      *(v78 + 8) = 0;
      v90 = v77;
LABEL_33:
      v25 = v115;
      goto LABEL_34;
    }

    v122 = 0.0;
    v52 = sub_1C4410B18();
    MEMORY[0x1C69406C0](v52);
    if (v123)
    {
      LODWORD(v122) = 0;
      BYTE4(v122) = 1;
      MEMORY[0x1C6940750](v43, &v122);
      v54 = v105;
      v25 = v115;
      if (BYTE4(v122))
      {
        v97 = sub_1C46D6BE0();
        v98 = sub_1C43FFB2C(&type metadata for EncodableConversionError, v97);
        sub_1C442DE80(v98, v99);

        sub_1C457E804(&v124);
        sub_1C4412F68();
        sub_1C4411B10();
        return sub_1C46D6D30(v114, v100);
      }

      v55 = *&v122;
      if ((v106 & 1) == 0)
      {
        v55 = sub_1C47E5998(v104, *&v122);
      }

      sub_1C46D6C34(&v25[v47], v54);
      sub_1C43FD490(v54);
      if (v56)
      {
        v90 = v101;
        sub_1C4F00318();
        sub_1C440A970();
        v57 = v105;
        v58 = (v90 + v13[8]);
        *v58 = 0;
        v58[1] = 0;
        sub_1C43FD490(v57);
        if (!v56)
        {
          sub_1C46D6CA4(v57);
        }
      }

      else
      {
        sub_1C44193F0();
        v89 = v54;
        v90 = v101;
        sub_1C46D6DEC(v89, v101);
      }

      v91 = v90 + v13[7];
      *v91 = v55;
      *(v91 + 4) = 0;
    }

    else
    {
      v74 = v122;
      v25 = v115;
      if (v106 == 0xFF)
      {
        v75 = v103;
      }

      else
      {
        v75 = v103;
        if (v106)
        {
          sub_1C47E58BC(v104, v53, v122);
        }

        else
        {
          v76 = sub_1C47E563C(v104, v122, v53);
        }

        v74 = v76;
      }

      sub_1C46D6C34(&v25[v47], v75);
      sub_1C43FD490(v75);
      if (v56)
      {
        v90 = v102;
        sub_1C4F00318();
        sub_1C440A970();
        v92 = (v90 + v13[8]);
        *v92 = 0;
        v92[1] = 0;
        sub_1C43FD490(v75);
        if (!v56)
        {
          sub_1C46D6CA4(v75);
        }
      }

      else
      {
        sub_1C44193F0();
        v90 = v102;
        sub_1C46D6DEC(v75, v102);
      }

      v93 = v90 + v13[6];
      *v93 = v74;
      *(v93 + 8) = 0;
    }

LABEL_34:
    sub_1C46D6CA4(&v25[v47]);
    sub_1C44193F0();
    sub_1C46D6DEC(v90, &v25[v47]);
    sub_1C440D2F4();
    sub_1C440BAA8(v79, v80, v81, v82);
    sub_1C46D6D88(v25, v120);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1C458B0A4(0, *(v121 + 16) + 1, 1, v121);
      v121 = v94;
    }

    v84 = *(v121 + 16);
    v83 = *(v121 + 24);
    if (v84 >= v83 >> 1)
    {
      v95 = sub_1C43FCFE8(v83);
      sub_1C458B0A4(v95, v84 + 1, 1, v121);
      v121 = v96;
    }

    v33 &= v33 - 1;

    sub_1C457E804(&v124);
    v85 = v121;
    *(v121 + 16) = v84 + 1;
    sub_1C43FBF6C();
    sub_1C46D6DEC(v88, v85 + v86 + *(v87 + 72) * v84);
    v114[2] = v85;
    result = sub_1C4412F68();
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v108)
    {
    }

    v33 = *(v116 + 8 * v36);
    ++v35;
    if (v33)
    {
      v35 = v36;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1C46D570C(uint64_t *a1@<X8>)
{
  v4 = v1;
  v6 = type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FCDF8();
  v73 = v7;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBD08();
  sub_1C43FEE3C();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  v12 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v12;
  a1[2] = v12;
  v13 = type metadata accessor for FeatureValue(0);
  sub_1C4F00318();
  sub_1C43FCF64();
  sub_1C440BAA8(v14, v15, v16, v6);
  v17 = [v4 type];
  if (v17 > 7 || ((1 << v17) & 0xF5) != 0)
  {
    v18 = sub_1C46D6BE0();
    v19 = sub_1C43FFB2C(&type metadata for EncodableConversionError, v18);
    sub_1C442DE80(v19, v20);
LABEL_4:
    sub_1C46D6D30(a1, type metadata accessor for FeatureValue);
    return;
  }

  if (v17 != 1)
  {
    v68 = v4;
    v39 = [v4 stringValues];
    v40 = sub_1C4F01678();

    v41 = *(v40 + 16);
    if (v41)
    {
      v67 = v2;
      v72 = a1;
      v74 = v12;
      sub_1C459D328();
      v42 = v74;
      v71 = v40;
      v43 = (v40 + 40);
      do
      {
        v44 = *(v43 - 1);
        v39 = *v43;
        _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
        sub_1C4F00318();
        sub_1C440E114(v6[5]);
        *(v45 + 8) = 1;
        sub_1C440E114(v6[6]);
        *(v46 + 8) = 1;
        sub_1C4434F74(v6[7]);
        *(v47 + 4) = 1;
        v48 = (v3 + v6[8]);
        *v48 = v44;
        v48[1] = v39;
        v74 = v42;
        v50 = *(v42 + 16);
        v49 = *(v42 + 24);
        if (v50 >= v49 >> 1)
        {
          sub_1C43FCFE8(v49);
          v39 = &v74;
          sub_1C440424C();
          sub_1C459D328();
          v42 = v74;
        }

        *(v42 + 16) = v50 + 1;
        sub_1C43FBF6C();
        sub_1C44193F0();
        sub_1C46D6DEC(v3, v51);
        v43 += 2;
        --v41;
      }

      while (v41);

      a1 = v72;
    }

    else
    {

      v42 = MEMORY[0x1E69E7CC0];
    }

    *a1 = v42;
    v52 = [v68 int64Values];
    sub_1C43FBE94();
    sub_1C4447C04();
    v30 = sub_1C4F01678();

    v26 = sub_1C4428DA0(v30);

    if (v26 >= 0xFFFFFFFF80000000)
    {
      if (v26 > 0x7FFFFFFF)
      {
        __break(1u);
LABEL_30:

        v53 = sub_1C46D6BE0();
        v54 = sub_1C43FFB2C(&type metadata for EncodableConversionError, v53);
        sub_1C442DE80(v54, v55);

        goto LABEL_4;
      }

LABEL_33:
      sub_1C458B07C(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v60 = v59;
      v27 = *(v59 + 16);
      v12 = v27 + 1;
      if (v27 < *(v59 + 24) >> 1)
      {
LABEL_34:
        *(v60 + 16) = v12;
        *(v60 + 4 * v27 + 32) = v26;
        a1[1] = v60;
        return;
      }

LABEL_37:
      sub_1C440424C();
      sub_1C458B07C(v61, v62, v63, v64);
      v60 = v65;
      goto LABEL_34;
    }

    __break(1u);
    goto LABEL_39;
  }

  v21 = [v4 int64Values];
  sub_1C43FBE94();
  v22 = sub_1C4447C04();
  v23 = sub_1C4F01678();

  v24 = sub_1C4428DA0(v23);
  if (!v24)
  {

    v26 = MEMORY[0x1E69E7CC0];
    v56 = &off_1E81F1000;
LABEL_31:
    *a1 = v26;
    v57 = [v4 v56[354]];
    v58 = sub_1C4F01678();

    v26 = sub_1C4428DA0(v58);

    if (v26 >= 0xFFFFFFFF80000000)
    {
      if (v26 <= 0x7FFFFFFF)
      {
        goto LABEL_33;
      }

LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  v71 = v23;
  v72 = v24;
  v66 = v22;
  v67 = v2;
  v68 = v4;
  v76 = v12;
  sub_1C459D328();
  if ((v72 & 0x8000000000000000) == 0)
  {
    v25 = 0;
    v26 = v76;
    v27 = v71;
    v69 = v71 & 0xFFFFFFFFFFFFFF8;
    v70 = v71 & 0xC000000000000001;
    while (1)
    {
      v28 = (v25 + 1);
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v70)
      {
        v29 = MEMORY[0x1C6940F90](v25, v27);
      }

      else
      {
        if (v25 >= *(v69 + 16))
        {
          goto LABEL_36;
        }

        v29 = *(v27 + 8 * v25 + 32);
      }

      v30 = v29;
      v74 = 0;
      v75 = 1;
      sub_1C4F02A88();
      if (v75)
      {
        goto LABEL_30;
      }

      v31 = v74;
      sub_1C4F00318();

      v32 = &v11[v6[5]];
      *v32 = 0;
      v32[8] = 1;
      v33 = &v11[v6[6]];
      *v33 = 0;
      v33[8] = 1;
      v34 = &v11[v6[7]];
      *v34 = 0;
      v34[4] = 1;
      v35 = &v11[v6[8]];
      *v35 = 0;
      *(v35 + 1) = 0;
      *v32 = v31;
      v32[8] = 0;
      v76 = v26;
      v37 = *(v26 + 16);
      v36 = *(v26 + 24);
      v12 = v37 + 1;
      if (v37 >= v36 >> 1)
      {
        sub_1C43FCFE8(v36);
        sub_1C440424C();
        sub_1C459D328();
        v26 = v76;
      }

      *(v26 + 16) = v12;
      sub_1C43FBF6C();
      sub_1C44193F0();
      sub_1C46D6DEC(v11, v38);
      ++v25;
      v27 = v71;
      if (v28 == v72)
      {

        v4 = v68;
        v56 = &off_1E81F1000;
        goto LABEL_31;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

LABEL_41:
  __break(1u);
}

uint64_t sub_1C46D5CE4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v56 = a5;
  v55 = a4;
  v53[1] = a2;
  v57 = a1;
  v72 = *MEMORY[0x1E69E9840];
  v60 = type metadata accessor for FeatureValue.BasicValue(0);
  v59 = *(v60 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v60).n128_u64[0];
  v9 = v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = a3;
  v10 = [a3 count];
  if (v10 < 0)
  {
    goto LABEL_54;
  }

  v11 = v10;
  v12 = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v53[0] = v5;
    v63 = MEMORY[0x1E69E7CC0];
    sub_1C459D100(0, v10, 0);
    v13 = 0;
    v14 = v63;
    v54 = (v55 + 48);
    v15 = ~v56;
    do
    {
      v16 = [v58 objectAtIndexedSubscript_];
      v62 = v16;
      swift_getAtKeyPath();

      v19 = v61;
      if (v15)
      {
        v20 = sub_1C47E57A4(v17, v18, v61);
        if (v56)
        {
          if (v20 == 3 || v20 == 8)
          {
            v22 = *(v55 + 16) + 1;
            v23 = v54;
            do
            {
              if (!--v22)
              {
                goto LABEL_31;
              }

              v24 = v23 + 3;
              v25 = *v23;
              v26 = *(v23 - 2);

              v28 = v26(v27, v19);

              v23 = v24;
            }

            while ((v28 & 1) == 0);
            v29 = round(v19 / v25);
            if ((*&v29 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_46;
            }

            if (v29 <= -9.22337204e18)
            {
              goto LABEL_47;
            }

            if (v29 >= 9.22337204e18)
            {
              goto LABEL_48;
            }

            v19 = v25 * v29;
          }
        }

        else if (v20 == 8 || v20 == 3)
        {
          *&v70 = MEMORY[0x1C6940C00](v19);
          *(&v70 + 1) = v31;
          v71 = v32;
          v68 = v70;
          v69 = v32;
          if (v19 == 0.0)
          {
            v33 = 0;
          }

          else
          {
            v34 = floor(log10(fabs(v19)));
            if ((*&v34 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_49;
            }

            if (v34 >= 9.22337204e18)
            {
              goto LABEL_50;
            }

            if (v34 <= -9.22337204e18)
            {
              goto LABEL_51;
            }

            v35 = -v34;
            v36 = v35 + v55;
            if (__OFADD__(v35, v55))
            {
              goto LABEL_52;
            }

            v33 = v36 - 1;
            if (__OFSUB__(v36, 1))
            {
              goto LABEL_53;
            }
          }

          MEMORY[0x1C6941AC0](&v68, &v70, v33, 0);
          v66 = v68;
          v67 = v69;
          v37 = objc_allocWithZone(MEMORY[0x1E696AB90]);
          v64 = v66;
          v65 = v67;
          v38 = [v37 initWithDecimal_];
          [v38 doubleValue];
          v19 = v39;
        }
      }

LABEL_31:
      v63 = v14;
      v41 = *(v14 + 16);
      v40 = *(v14 + 24);
      v42 = v41 + 1;
      if (v41 >= v40 >> 1)
      {
        sub_1C459D100(v40 > 1, v41 + 1, 1);
        v14 = v63;
      }

      ++v13;
      *(v14 + 16) = v42;
      *(v14 + 8 * v41 + 32) = v19;
    }

    while (v13 != v11);
    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v42 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v42)
    {
      v44 = MEMORY[0x1E69E7CC0];

      sub_1C46B6850(v55, v56);
      return v44;
    }

    v53[0] = v5;
    v14 = MEMORY[0x1E69E7CC0];
  }

  *&v70 = v12;
  sub_1C459D328();
  v43 = 0;
  v44 = v70;
  do
  {
    if (v43 >= *(v14 + 16))
    {
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
    }

    v45 = *(v14 + 8 * v43 + 32);
    sub_1C4F00318();
    v46 = v60;
    v47 = &v9[*(v60 + 20)];
    *v47 = 0;
    v47[8] = 1;
    v48 = &v9[v46[6]];
    *v48 = 0;
    v48[8] = 1;
    v49 = &v9[v46[7]];
    *v49 = 0;
    v49[4] = 1;
    v50 = &v9[v46[8]];
    *v50 = 0;
    *(v50 + 1) = 0;
    *&v68 = v45;
    swift_setAtWritableKeyPath();
    *&v70 = v44;
    v51 = *(v44 + 16);
    if (v51 >= *(v44 + 24) >> 1)
    {
      sub_1C459D328();
      v44 = v70;
    }

    ++v43;
    *(v44 + 16) = v51 + 1;
    sub_1C46D6DEC(v9, v44 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v51);
  }

  while (v42 != v43);

  sub_1C46B6850(v55, v56);
  return v44;
}

uint64_t sub_1C46D62AC(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, int a5)
{
  v48 = a5;
  v46 = a4;
  v47 = a1;
  v62 = *MEMORY[0x1E69E9840];
  v50 = type metadata accessor for FeatureValue.BasicValue(0);
  sub_1C43FCDF8();
  v49 = v8;
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [a3 count];
  if (v13 < 0)
  {
    goto LABEL_33;
  }

  v14 = v13;
  v15 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v45 = a2;
    v53 = MEMORY[0x1E69E7CC0];
    sub_1C459D3B0(0, v13, 0);
    v16 = 0;
    v17 = v53;
    do
    {
      v18 = [a3 objectAtIndexedSubscript_];
      v52 = v18;
      swift_getAtKeyPath();

      v19 = v51;
      if ((v48 & 1) == 0 && (LODWORD(v51) >> 23) && (LODWORD(v51) >> 23) != 255)
      {
        *&v58 = MEMORY[0x1C6940C00](v51);
        *(&v58 + 1) = v20;
        v59 = v21;
        v56 = v58;
        v57 = v21;
        v22 = floorf(log10f(fabsf(v19)));
        if ((LODWORD(v22) & 0x7FFFFFFFu) > 0x7F7FFFFF)
        {
          goto LABEL_28;
        }

        if (v22 >= 9.2234e18)
        {
          goto LABEL_29;
        }

        if (v22 <= -9.2234e18)
        {
          goto LABEL_30;
        }

        v23 = -v22;
        v24 = v23 + v46;
        if (__OFADD__(v23, v46))
        {
          goto LABEL_31;
        }

        if (__OFSUB__(v24, 1))
        {
          goto LABEL_32;
        }

        MEMORY[0x1C6941AC0](&v56, &v58, v24 - 1, 0);
        v60 = v56;
        v61 = v57;
        v25 = objc_allocWithZone(MEMORY[0x1E696AB90]);
        v54 = v60;
        v55 = v61;
        v26 = [v25 initWithDecimal_];
        [v26 floatValue];
        v19 = v27;
      }

      v53 = v17;
      v29 = *(v17 + 16);
      v28 = *(v17 + 24);
      v30 = v29 + 1;
      if (v29 >= v28 >> 1)
      {
        sub_1C459D3B0((v28 > 1), v29 + 1, 1);
        v17 = v53;
      }

      ++v16;
      *(v17 + 16) = v30;
      *(v17 + 4 * v29 + 32) = v19;
    }

    while (v14 != v16);
    v47 = v5;
    v15 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v30 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v30)
    {
      v32 = MEMORY[0x1E69E7CC0];

      sub_1C4405A24();
      return v32;
    }

    v45 = a2;
    v47 = v5;
    v17 = MEMORY[0x1E69E7CC0];
  }

  *&v60 = v15;
  sub_1C459D328();
  v31 = 0;
  v32 = v60;
  do
  {
    if (v31 >= *(v17 + 16))
    {
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
    }

    v33 = *(v17 + 4 * v31 + 32);
    sub_1C4F00318();
    sub_1C440E114(*(v50 + 20));
    *(v34 + 8) = 1;
    sub_1C440E114(*(v35 + 24));
    *(v36 + 8) = 1;
    sub_1C4434F74(*(v37 + 28));
    *(v38 + 4) = 1;
    v40 = &v12[*(v39 + 32)];
    *v40 = 0;
    *(v40 + 1) = 0;
    LODWORD(v58) = v33;
    swift_setAtWritableKeyPath();
    *&v60 = v32;
    v41 = *(v32 + 16);
    if (v41 >= *(v32 + 24) >> 1)
    {
      sub_1C440424C();
      sub_1C459D328();
      v32 = v60;
    }

    ++v31;
    *(v32 + 16) = v41 + 1;
    sub_1C43FBF6C();
    sub_1C44193F0();
    sub_1C46D6DEC(v12, v42);
  }

  while (v30 != v31);

  sub_1C4405A24();
  return v32;
}

void sub_1C46D6718(uint64_t a1, uint64_t a2, void *a3)
{
  v32 = a2;
  v29 = a1;
  v5 = type metadata accessor for FeatureValue.BasicValue(0);
  v31 = *(v5 - 1);
  *&v6 = MEMORY[0x1EEE9AC00](v5).n128_u64[0];
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = a3;
  v9 = [a3 count];
  if ((v9 & 0x8000000000000000) == 0)
  {
    v10 = v9;
    v11 = MEMORY[0x1E69E7CC0];
    if (v9)
    {
      v28 = v3;
      v35 = MEMORY[0x1E69E7CC0];
      sub_1C459D380(0, v9, 0);
      v12 = 0;
      v13 = v35;
      do
      {
        v14 = [v30 objectAtIndexedSubscript_];
        v34 = v14;
        swift_getAtKeyPath();

        v15 = v33;
        v35 = v13;
        v17 = *(v13 + 16);
        v16 = *(v13 + 24);
        v18 = v17 + 1;
        if (v17 >= v16 >> 1)
        {
          sub_1C459D380(v16 > 1, v17 + 1, 1);
          v13 = v35;
        }

        ++v12;
        *(v13 + 16) = v18;
        *(v13 + 8 * v17 + 32) = v15;
      }

      while (v10 != v12);
      v11 = MEMORY[0x1E69E7CC0];
    }

    else
    {
      v18 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v18)
      {
LABEL_15:

        return;
      }

      v28 = v3;
      v13 = MEMORY[0x1E69E7CC0];
    }

    v35 = v11;
    sub_1C459D328();
    v19 = 0;
    v20 = v35;
    while (v19 < *(v13 + 16))
    {
      v21 = *(v13 + 8 * v19 + 32);
      sub_1C4F00318();
      v22 = &v8[v5[5]];
      *v22 = 0;
      v22[8] = 1;
      v23 = &v8[v5[6]];
      *v23 = 0;
      v23[8] = 1;
      v24 = &v8[v5[7]];
      *v24 = 0;
      v24[4] = 1;
      v25 = &v8[v5[8]];
      *v25 = 0;
      *(v25 + 1) = 0;
      v34 = v21;
      swift_setAtWritableKeyPath();
      v35 = v20;
      v26 = *(v20 + 16);
      if (v26 >= *(v20 + 24) >> 1)
      {
        sub_1C459D328();
        v20 = v35;
      }

      ++v19;
      *(v20 + 16) = v26 + 1;
      sub_1C46D6DEC(v8, v20 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v26);
      if (v18 == v19)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t EncodableConversionError.hashValue.getter()
{
  v1 = *v0;
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](v1);
  return sub_1C4F02B68();
}

unint64_t sub_1C46D6AB0()
{
  result = qword_1EC0BB430;
  if (!qword_1EC0BB430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB430);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EncodableConversionError(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C46D6BE0()
{
  result = qword_1EC0BB440;
  if (!qword_1EC0BB440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB440);
  }

  return result;
}

uint64_t sub_1C46D6C34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46D6CA4(uint64_t a1)
{
  v2 = sub_1C456902C(&qword_1EC0BB438, qword_1C4F1F960);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C46D6D30(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C46D6D88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FeatureValue.NamedValue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46D6DEC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C43FBE94();
  v5(v4);
  sub_1C43FBCE0();
  (*(v6 + 32))(a2, v2);
  return a2;
}

uint64_t sub_1C46D6E74(unsigned int a1)
{
  if (a1 < 4)
  {
    return 0x1010002u >> (8 * a1);
  }

  if (qword_1EDDFECB0 != -1)
  {
    swift_once();
  }

  v3 = sub_1C4F00978();
  sub_1C442B738(v3, qword_1EDDFECB8);
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CE8();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = a1;
    _os_log_impl(&dword_1C43F8000, v4, v5, "Unknown event type found in BMEnergyModeMode - %d", v6, 8u);
    MEMORY[0x1C6942830](v6, -1, -1);
  }

  return 2;
}

unint64_t sub_1C46D6F7C(unint64_t result)
{
  if (result >= 3)
  {
    return 3;
  }

  return result;
}

uint64_t sub_1C46D6F8C(char a1)
{
  sub_1C456902C(&unk_1EC0C65C0, &qword_1C4F0D1F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0D130;
  strcpy((inited + 32), "lowPowerMode");
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  sub_1C4577DBC();
  *(inited + 48) = sub_1C4A3B8F8(a1 == 0);
  return sub_1C4F00F28();
}

void sub_1C46D7054(uint64_t a1)
{
  v1 = [BiomeLibrary() Device];
  swift_unknownObjectRelease();
  v2 = [v1 Power];
  swift_unknownObjectRelease();
  v3 = [v2 EnergyMode];
  swift_unknownObjectRelease();
  sub_1C4580D98();
}

uint64_t type metadata accessor for EnergyModeEvent(uint64_t a1)
{
  result = qword_1EDDE81D0;
  if (!qword_1EDDE81D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46D71B0(uint64_t a1)
{
  result = sub_1C4EF9CD8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C46D723C()
{
  result = qword_1EDDDE928;
  if (!qword_1EDDDE928)
  {
    sub_1C4572308(&qword_1EC0BB448, ":@\v");
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDE928);
  }

  return result;
}

_BYTE *sub_1C46D72A0(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_1C46D7380()
{
  result = qword_1EC0BB450;
  if (!qword_1EC0BB450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB450);
  }

  return result;
}

uint64_t sub_1C46D73DC()
{
  type metadata accessor for EnrollmentPreferences();
  sub_1C44149FC();
  v0 = swift_allocObject();
  result = EnrollmentPreferences.init(name:enrollmentDuration:)(0xD00000000000001ALL, 0x80000001C4F92700, 7776000.0);
  qword_1EDDE3C68 = v0;
  return result;
}

uint64_t EnrollmentPreferences.__allocating_init(name:enrollmentDuration:)(uint64_t a1, uint64_t a2, double a3)
{
  sub_1C44149FC();
  v6 = swift_allocObject();
  EnrollmentPreferences.init(name:enrollmentDuration:)(a1, a2, a3);
  return v6;
}

uint64_t sub_1C46D74B4()
{
  type metadata accessor for EnrollmentPreferences();
  sub_1C44149FC();
  v0 = swift_allocObject();
  result = EnrollmentPreferences.init(name:enrollmentDuration:)(0xD00000000000001CLL, 0x80000001C4F926E0, 5184000.0);
  qword_1EC0BB458 = v0;
  return result;
}

uint64_t sub_1C46D7530(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C46D757C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - v4;
  v6 = sub_1C46B6F7C();
  v7 = sub_1C4F01108();
  v8 = [v6 stringForKey_];

  if (v8)
  {
    v9 = [*(v1 + 24) dateFromString_];

    if (v9)
    {
      sub_1C4EF9C78();

      v10 = sub_1C4EF9CD8();
      v11 = 0;
    }

    else
    {
      v10 = sub_1C4EF9CD8();
      v11 = 1;
    }

    sub_1C440BAA8(v5, v11, 1, v10);
    return sub_1C45B69E4(v5, a1);
  }

  else
  {
    v12 = sub_1C4EF9CD8();

    return sub_1C440BAA8(a1, 1, 1, v12);
  }
}

uint64_t sub_1C46D76F0(uint64_t a1)
{
  v3 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = sub_1C46B6F7C();
  v7 = *(v1 + 24);
  sub_1C4467FE0(a1, v5);
  v8 = sub_1C4EF9CD8();
  v9 = 0;
  if (sub_1C44157D4(v5, 1, v8) != 1)
  {
    v9 = sub_1C4EF9BF8();
    (*(*(v8 - 8) + 8))(v5, v8);
  }

  v10 = [v7 stringForObjectValue_];
  swift_unknownObjectRelease();
  v11 = sub_1C4F01108();
  [v6 setObject:v10 forKey:v11];

  return sub_1C44686E4(a1);
}

uint64_t EnrollmentPreferences.isEnrolled.getter()
{
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9CC8();
  v6 = sub_1C46D791C(v5);
  (*(v2 + 8))(v5, v0);
  return v6 & 1;
}

uint64_t sub_1C46D791C(uint64_t a1)
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v16 - v2;
  v4 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  sub_1C46D757C(v3);
  if (sub_1C44157D4(v3, 1, v4) == 1)
  {
    sub_1C44686E4(v3);
    v13 = 0;
  }

  else
  {
    (*(v6 + 32))(v12, v3, v4);
    sub_1C4EF9BE8();
    v13 = sub_1C4EF9C18();
    v14 = *(v6 + 8);
    v14(v9, v4);
    v14(v12, v4);
  }

  return v13 & 1;
}

uint64_t EnrollmentPreferences.init(name:enrollmentDuration:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 16) = 0;
  *(v3 + 24) = [objc_allocWithZone(MEMORY[0x1E696AC80]) init];
  sub_1C4F02248();

  MEMORY[0x1C6940010](a1, a2);
  MEMORY[0x1C6940010](0x6D6C6C6F726E652ELL, 0xEF65746144746E65);
  *(v3 + 32) = 0x656D6C6C6F726E45;
  *(v3 + 40) = 0xEB000000002E746ELL;
  *(v3 + 48) = a3;
  type metadata accessor for DataCollectionMetadata();
  swift_allocObject();
  *(v3 + 56) = sub_1C46B6FDC(a1, a2);
  return v3;
}

Swift::Void __swiftcall EnrollmentPreferences.enroll()()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C442C7FC();
  sub_1C4EF9CC8();
  v2 = sub_1C4EF9CD8();
  sub_1C440BAA8(v0, 0, 1, v2);
  sub_1C46D76F0(v0);
}

Swift::Void __swiftcall EnrollmentPreferences.withdraw()()
{
  v1 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C442C7FC();
  v2 = sub_1C4EF9CD8();
  sub_1C440BAA8(v0, 1, 1, v2);
  sub_1C46D76F0(v0);
}

uint64_t EnrollmentPreferences.deinit()
{

  return v0;
}

uint64_t EnrollmentPreferences.__deallocating_deinit()
{
  EnrollmentPreferences.deinit();
  sub_1C44149FC();

  return swift_deallocClassInstance();
}

uint64_t sub_1C46D7E2C()
{
  sub_1C43FBCD4();
  v0[10] = v1;
  v0[11] = v2;
  v0[8] = v3;
  v0[9] = v4;
  v0[7] = v5;
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v0[12] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  sub_1C443F170(v6);
  v0[14] = v7;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C46D7F40()
{
  sub_1C4425A90();
  sub_1C446FB00();
  if (sub_1C440C440() == 1)
  {
    sub_1C4EF9BE8();
    if (sub_1C440C440() != 1)
    {
      sub_1C44686E4(v0[12]);
    }
  }

  else
  {
    sub_1C441C1CC();
    v1();
  }

  if (sub_1C4EF9C08())
  {
    sub_1C4425A90();
    sub_1C448EE10();
    v6 = v0[16];
    v7 = v0[17];
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[13];
    v11 = v0[7];
    sub_1C442E860(v0[9] + 24, (v0 + 2));
    v12 = *(v9 + 16);
    v12(v6, v7, v10);
    v12(v8, v11, v10);
    type metadata accessor for CachedContextProvider(0);
    swift_allocObject();
    v13 = sub_1C441D1D8();
    v0[18] = v13;

    v14 = swift_task_alloc();
    v0[19] = v14;
    *v14 = v0;
    v14[1] = sub_1C46D81F0;
    v15 = sub_1C440BC30(v0[17]);

    return sub_1C46D89EC(v15, v16, v13, v17, v18, v19);
  }

  else
  {
    sub_1C44088E4();
    v2 = sub_1C441C948();
    v3(v2);

    sub_1C43FC1B0();

    return v4();
  }
}

uint64_t sub_1C46D81F0()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 160) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C46D82F0()
{

  sub_1C44088E4();
  v0 = sub_1C441C948();
  v1(v0);

  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C46D83A0()
{

  v0 = sub_1C4402120();
  v1(v0);

  sub_1C44601DC();

  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C46D8448()
{
  sub_1C43FBCD4();
  v1[10] = v2;
  v1[11] = v0;
  v1[8] = v3;
  v1[9] = v4;
  v1[7] = v5;
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v1[12] = swift_task_alloc();
  v6 = sub_1C4EF9CD8();
  sub_1C443F170(v6);
  v1[14] = v7;
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v1[17] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1C46D854C()
{
  sub_1C4425A90();
  sub_1C446FB00();
  if (sub_1C440C440() == 1)
  {
    sub_1C4EF9BE8();
    if (sub_1C440C440() != 1)
    {
      sub_1C44686E4(v0[12]);
    }
  }

  else
  {
    sub_1C441C1CC();
    v1();
  }

  if (sub_1C4EF9C08())
  {
    sub_1C4425A90();
    sub_1C448EE10();
    v6 = v0[16];
    v7 = v0[17];
    v9 = v0[14];
    v8 = v0[15];
    v10 = v0[13];
    v11 = v0[7];
    sub_1C442E860(v0[11] + 24, (v0 + 2));
    v12 = *(v9 + 16);
    v12(v6, v7, v10);
    v12(v8, v11, v10);
    type metadata accessor for CachedContextProvider(0);
    swift_allocObject();
    v13 = sub_1C441D1D8();
    v0[18] = v13;
    v14 = swift_task_alloc();
    v0[19] = v14;
    *v14 = v0;
    v14[1] = sub_1C46D87BC;
    v15 = sub_1C440BC30(v0[17]);

    return sub_1C46D92E0(v15, v16, v13, v17, v18);
  }

  else
  {
    sub_1C44088E4();
    v2 = sub_1C441C948();
    v3(v2);

    sub_1C43FC1B0();

    return v4();
  }
}

uint64_t sub_1C46D87BC()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 160) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C46D88BC()
{

  sub_1C44088E4();
  v0 = sub_1C441C948();
  v1(v0);

  sub_1C43FC1B0();

  return v2();
}

uint64_t sub_1C46D8954()
{

  v0 = sub_1C4402120();
  v1(v0);
  sub_1C44601DC();

  sub_1C43FBDA0();

  return v2();
}

uint64_t sub_1C46D89EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1C4EF9CD8();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46D8AE4, 0, 0);
}

uint64_t sub_1C46D8E58()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1C46D92E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[6] = a5;
  v6[7] = v5;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = sub_1C4EF9CD8();
  v6[8] = v7;
  v6[9] = *(v7 - 8);
  v6[10] = swift_task_alloc();
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = swift_task_alloc();
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C46D93D8, 0, 0);
}

uint64_t sub_1C46D977C()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v1 = *v0;
  sub_1C43FBDAC();
  *v2 = v1;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

void sub_1C46D9C30(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X8>)
{
  v7 = v6;
  v14 = type metadata accessor for Configuration(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  sub_1C46DA590((v7 + 6), &v70);
  if (*(&v71[0] + 1))
  {
    v67 = a5;
    v69 = a1;
    sub_1C441D670(&v70, v76);
    type metadata accessor for InteractionSourceAdapterRegistry();
    v18 = v7[2];
    v19 = v7[3];
    v20 = *(a3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_viewService);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v21 = v20;

    sub_1C494D274(v18, v19, v21, a4);
    v68 = v22;
    sub_1C44098F0(a3 + OBJC_IVAR____TtCO24IntelligencePlatformCore14ViewGeneration11ViewClients_config, v17);
    *&v70 = 0;
    *(&v70 + 1) = 0xE000000000000000;
    sub_1C4F02248();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    *&v70 = v69;
    *(&v70 + 1) = a2;
    MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F92720);
    v23 = v70;
    type metadata accessor for KeyValueStore(0);
    swift_allocObject();
    v29 = KeyValueStore.init(config:domain:)(v17, v23, *(&v23 + 1));
    sub_1C442E860((v7 + 16), &v70);
    sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
    v30 = sub_1C4EFDAB8();
    sub_1C43FCE64();
    v32 = v31;
    v33 = (*(v31 + 80) + 32) & ~*(v31 + 80);
    v34 = swift_allocObject();
    *(v34 + 16) = xmmword_1C4F0D130;
    (*(v32 + 104))(v34 + v33, *MEMORY[0x1E69A9418], v30);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C4D524E0();
    v64 = v35;
    sub_1C4418280(&v70, *(&v71[0] + 1));
    v65 = &v63;
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v36);
    sub_1C43FBCC4();
    v39 = (v38 - v37);
    (*(v40 + 16))(v38 - v37);
    v41 = *v39;
    v42 = type metadata accessor for BehaviorDatabaseEventTracker();
    v74 = v42;
    v75 = &off_1F43E2390;
    *&v73 = v41;
    type metadata accessor for EntityRelevanceEvaluationSampleProvider();
    v43 = swift_allocObject();
    sub_1C4418280(&v73, v42);
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v44);
    sub_1C43FBCC4();
    v66 = v29;
    v47 = (v46 - v45);
    (*(v48 + 16))(v46 - v45);
    v49 = *v47;
    *(v43 + 56) = v42;
    *(v43 + 64) = &off_1F43E2390;
    *(v43 + 32) = v49;
    *(v43 + 16) = xmmword_1C4F1FD20;
    *(v43 + 72) = v18;
    *(v43 + 80) = v19;
    *(v43 + 88) = v68;
    *(v43 + 112) = 1;
    *(v43 + 120) = v64;
    *(v43 + 128) = 5;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

    sub_1C440962C(&v73);
    sub_1C440962C(&v70);
    sub_1C442E860((v7 + 16), (a6 + 1));
    sub_1C442E860((v7 + 11), (a6 + 6));
    sub_1C442E860(v76, (a6 + 11));
    sub_1C442E860(v76, &v73);
    v50 = v7[19];
    v51 = sub_1C4409678(v7 + 16, v50);
    v52 = v67;
    sub_1C442E860(v67, v72);
    sub_1C442E860(v52, v71 + 8);
    *&v70 = v66;
    *(&v70 + 1) = 0xD000000000000023;
    *&v71[0] = 0x80000001C4F8DA80;
    v53 = v68;

    sub_1C440962C(v76);
    v67 = &v63;
    sub_1C43FCE64();
    MEMORY[0x1EEE9AC00](v54);
    sub_1C43FBCC4();
    v57 = (v56 - v55);
    (*(v58 + 16))(v56 - v55, v51, v50);
    v59 = *v57;
    type metadata accessor for EntityInteractionHistoryIngestor();
    v60 = swift_allocObject();
    *(v60 + 160) = v42;
    *(v60 + 168) = &off_1F43E2390;
    *(v60 + 136) = v59;
    *(v60 + 80) = v18;
    *(v60 + 88) = v19;
    sub_1C441D670(&v73, v60 + 96);
    sub_1C441D670(v72, v60 + 176);
    v61 = v71[0];
    *(v60 + 16) = v70;
    *(v60 + 32) = v61;
    v62 = v71[2];
    *(v60 + 48) = v71[1];
    *(v60 + 64) = v62;
    *(v60 + 216) = v53;
    *(v60 + 224) = byte_1F43D1348;
    *a6 = v43;
    a6[16] = v66;
    a6[17] = v60;
    a6[18] = v69;
    a6[19] = a2;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  else
  {
    sub_1C4423A0C(&v70, &qword_1EC0BB460, &qword_1C4F5D900);
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406728(&qword_1EDDFA668);
    }

    v24 = sub_1C4F00978();
    sub_1C442B738(v24, qword_1EDE2DDE0);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v25 = sub_1C4F00968();
    v26 = sub_1C4F01CD8();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      *&v70 = v28;
      *v27 = 136315138;
      *(v27 + 4) = sub_1C441D828(a1, a2, &v70);
      _os_log_impl(&dword_1C43F8000, v25, v26, "EntityRelevanceHistoricalFeatureViewGenerator: %s: Skipping entity interaction task due to nil histogram manager", v27, 0xCu);
      sub_1C440962C(v28);
      sub_1C43FBE2C();
      sub_1C43FBE2C();
    }

    bzero(a6, 0xA0uLL);
  }
}

uint64_t sub_1C46DA590(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0BB460, &qword_1C4F5D900);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C46DA600(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C46DA650(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C46DA670(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C46DA6D4(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1C46DA6F4(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 224))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C46DA734(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 216) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 224) = 1;
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

    *(result + 224) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1C46DA7BC()
{
  sub_1C43FE96C();
  v81 = v0;
  v2 = v1;
  v3 = type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property(0);
  v73 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v74 = &v68 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB078();
  sub_1C43FCDF8();
  v79 = v6;
  v80 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v75 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v76 = (&v68 - v9);
  MEMORY[0x1EEE9AC00](v10);
  v77 = &v68 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v78 = (&v68 - v13);
  v14 = sub_1C4EFB0B8();
  sub_1C43FCDF8();
  v16 = v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v68 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v68 - v21;
  MEMORY[0x1EEE9AC00](v23);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - v25;
  sub_1C4EFB058();
  v82 = v2;
  v27 = v81;
  sub_1C4EFBFC8();
  if (v27)
  {
    (*(v16 + 8))(v26, v14);
  }

  else
  {
    v71 = v19;
    v72 = v22;
    v81 = *(v16 + 8);
    (v81)(v26, v14);
    sub_1C4EFB058();
    sub_1C4EFBFC8();
    v70 = v16;
    v28 = sub_1C43FD574();
    v81(v28);
    v29 = v2[23];
    v30 = v2[24];
    sub_1C4EFB058();
    sub_1C4EFBFC8();
    v31 = sub_1C43FD574();
    v32(v31);
    v72 = v30;
    v33 = v78;
    sub_1C4EFB058();
    sub_1C43FD428();
    v69 = v29;
    sub_1C4EFBFB8();
    v68 = v14;
    sub_1C4420C3C(v83, &qword_1EC0C5040, &qword_1C4F0F950);
    v34 = v80;
    v35 = v33;
    v36 = (v79 + 8);
    v37 = *(v79 + 8);
    (v37)(v35, v80);
    v38 = v77;
    sub_1C4EFB058();
    sub_1C43FD428();
    sub_1C4EFBFB8();
    v78 = v2;
    sub_1C4420C3C(v83, &qword_1EC0C5040, &qword_1C4F0F950);
    (v37)(v38, v34);
    v39 = v76;
    sub_1C4EFB058();
    sub_1C43FD428();
    sub_1C4412FC4();
    sub_1C4EFBFB8();
    sub_1C4420C3C(v83, &qword_1EC0C5040, &qword_1C4F0F950);
    (v37)(v39, v34);
    v40 = v78[26];
    if (v40)
    {
      v76 = v37;
      v77 = v36;
      v41 = v78[25];
      v42 = v78[27];
      v43 = v40;
      sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
      v44 = swift_allocObject();
      *(v44 + 16) = xmmword_1C4F0D130;
      sub_1C4EFB058();
      v83[0] = v44;
      sub_1C46DDA18(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
      v45 = sub_1C440D314();
      sub_1C456902C(v45, v46);
      sub_1C4400184();
      sub_1C4401CBC(v47, &unk_1EC0BCA80, &unk_1C4F111B0, v48);
      v49 = sub_1C4F020C8();
      MEMORY[0x1EEE9AC00](v49);
      *(&v68 - 4) = v41;
      *(&v68 - 3) = v43;
      *(&v68 - 2) = v42;
      sub_1C4EFBFC8();
      v69 = v41;
      v70 = v43;
      v54 = sub_1C440D314();
      v81(v54);
      v55 = *(v42 + 16);
      v56 = MEMORY[0x1E69E7CC0];
      if (v55)
      {
        v83[0] = MEMORY[0x1E69E7CC0];
        sub_1C44CD9C0(0, v55, 0);
        v57 = v42 + ((*(v73 + 80) + 32) & ~*(v73 + 80));
        v56 = v83[0];
        v81 = *(v73 + 72);
        v78 = 0x80000001C4F86760;
        v72 = 0x80000001C4F86740;
        v73 = 0x80000001C4F85600;
        v71 = 0xD000000000000011;
        v58 = v74;
        do
        {
          sub_1C46DDA60(v57, v58, type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property);
          v59 = 0xE800000000000000;
          v60 = 0x4449656C646E7562;
          switch(*v58)
          {
            case 1:
              v60 = v71;
              v59 = v72;
              break;
            case 2:
              v60 = 0x456E6F6973736573;
              v59 = 0xEC000000746E6576;
              break;
            case 3:
              v60 = 0xD000000000000016;
              v59 = v73;
              break;
            case 4:
              v60 = 0xD000000000000016;
              v59 = v78;
              break;
            case 5:
              v60 = 0x7463617265746E69;
              v59 = 0xEF657079546E6F69;
              break;
            case 6:
              v60 = 0x646576726573626FLL;
              v59 = 0xEB00000000656741;
              break;
            default:
              break;
          }

          sub_1C46DDAC0(v58, type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property);
          v83[0] = v56;
          v62 = *(v56 + 16);
          v61 = *(v56 + 24);
          if (v62 >= v61 >> 1)
          {
            sub_1C44CD9C0(v61 > 1, v62 + 1, 1);
            v58 = v74;
            v56 = v83[0];
          }

          *(v56 + 16) = v62 + 1;
          v63 = v56 + 16 * v62;
          *(v63 + 32) = v60;
          *(v63 + 40) = v59;
          v57 += v81;
          --v55;
        }

        while (v55);
      }

      v83[0] = &unk_1F43D87F8;
      sub_1C449ADBC(v56);
      sub_1C456902C(&unk_1EC0BCA90, &unk_1C4F111C0);
      v64 = swift_allocObject();
      *(v64 + 16) = xmmword_1C4F0CE60;
      sub_1C4EFB068();
      sub_1C4EFB058();
      v83[0] = v64;
      sub_1C46DDA18(&qword_1EDDFCD40, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
      sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
      sub_1C4400184();
      sub_1C4401CBC(v65, &unk_1EC0BCAA0, &unk_1C4F22520, v66);
      sub_1C4F020C8();
      sub_1C43FD428();
      sub_1C4412FC4();
      sub_1C4EFBFB8();

      sub_1C4420C3C(v83, &qword_1EC0C5040, &qword_1C4F0F950);
      v67 = sub_1C440D314();
      v76(v67);
    }

    else
    {
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v50 = sub_1C4F00978();
      sub_1C442B738(v50, qword_1EDE2DDE0);
      v51 = sub_1C4F00968();
      v52 = sub_1C4F01CF8();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1C43F8000, v51, v52, "Skipping PersonInteractionMechanism table creation", v53, 2u);
        MEMORY[0x1C6942830](v53, -1, -1);
      }
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C46DB36C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v24 - v5;
  v7 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v24 - v8;
  v10 = type metadata accessor for ViewDatabaseArtifact.Property(0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a2 + 40);
  v16 = *(v15 + 16);
  if (v16)
  {
    v26 = *(v11 + 20);
    v17 = v15 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v25 = *(v12 + 72);
    do
    {
      sub_1C46DDA60(v17, v14, type metadata accessor for ViewDatabaseArtifact.Property);
      v27 = *v14;
      v18 = a1;
      v19 = sub_1C4EFBE38();
      (*(*(v19 - 8) + 16))(v6, &v14[v26], v19);
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C46DDAC0(v14, type metadata accessor for ViewDatabaseArtifact.Property);
      v20 = v19;
      a1 = v18;
      sub_1C440BAA8(v6, 0, 1, v20);
      sub_1C4EFB498();

      sub_1C4420C3C(v6, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v21 = sub_1C4EFBF38();
      sub_1C440BAA8(v9, 1, 1, v21);
      sub_1C4EFB538();

      sub_1C4420C3C(v9, &unk_1EC0BCAB0, &unk_1C4F111A0);
      v17 += v25;
      --v16;
    }

    while (v16);
  }

  v22 = sub_1C4EFBF38();
  sub_1C440BAA8(v9, 1, 1, v22);
  sub_1C4EFB4A8();
  return sub_1C4420C3C(v9, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C46DB670()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = v9 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v9 - v4;
  sub_1C4EFBDD8();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = sub_1C4EFBF38();
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB518();

  return sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C46DB83C()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C4EFBE08();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = sub_1C4EFBF38();
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDC8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDC8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  return sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C46DBB5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a4;
  v5 = type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property(0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  v11 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v21 - v12;
  v14 = sub_1C4EFBF38();
  sub_1C440BAA8(v13, 1, 1, v14);
  sub_1C4EFB488();

  sub_1C4420C3C(v13, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  v15 = sub_1C4EFBE38();
  sub_1C440BAA8(v10, 0, 1, v15);
  sub_1C4EFB498();
  sub_1C4420C3C(v10, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v13, 1, 1, v14);
  sub_1C4EFB538();

  sub_1C4420C3C(v13, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDE8();
  sub_1C440BAA8(v10, 0, 1, v15);
  v25 = a1;
  sub_1C4EFB498();
  sub_1C4420C3C(v10, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v13, 1, 1, v14);
  sub_1C4EFB538();

  result = sub_1C4420C3C(v13, &unk_1EC0BCAB0, &unk_1C4F111A0);
  v17 = *(v24 + 16);
  if (v17)
  {
    v18 = v24 + ((*(v22 + 80) + 32) & ~*(v22 + 80));
    v19 = *(v23 + 20);
    v20 = *(v22 + 72);
    v23 = 0x80000001C4F86760;
    v24 = v19;
    v21[2] = 0x80000001C4F86740;
    v22 = 0x80000001C4F85600;
    do
    {
      sub_1C46DDA60(v18, v7, type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property);
      (*(*(v15 - 8) + 16))(v10, &v7[v24], v15);
      sub_1C46DDAC0(v7, type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property);
      sub_1C440BAA8(v10, 0, 1, v15);
      sub_1C4EFB498();

      result = sub_1C4420C3C(v10, &qword_1EC0B9BB8, &unk_1C4F1DC60);
      v18 += v20;
      --v17;
    }

    while (v17);
  }

  return result;
}

unint64_t sub_1C46DC05C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1C4F025D8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_1C46DC0AC(char a1)
{
  result = 0x6D614E656C626174;
  switch(a1)
  {
    case 1:
      result = 0x7972657571;
      break;
    case 2:
      result = 0xD00000000000001DLL;
      break;
    case 3:
      result = 0xD000000000000020;
      break;
    case 4:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1C46DC190@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1C46DC05C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_1C46DC1C0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1C46DC0AC(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_1C46DC208@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C46DC05C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C46DC24C(uint64_t a1)
{
  v2 = sub_1C46DD74C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46DC288(uint64_t a1)
{
  v2 = sub_1C46DD74C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1C46DC2C4()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  sub_1C456902C(&qword_1EC0BB480, &qword_1C4F1FFD0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v5);
  sub_1C4409678(v2, v2[3]);
  sub_1C46DD74C();
  sub_1C4F02BC8();
  if (v0)
  {
    sub_1C440962C(v2);
  }

  else
  {
    LOBYTE(v23) = 0;
    sub_1C43FD564();
    v6 = sub_1C4F02678();
    v21 = v7;
    LOBYTE(v22[0]) = 1;
    sub_1C46DD7A0();
    sub_1C44088F4();
    sub_1C4F026C8();
    v20 = v23;
    v19 = v24;
    sub_1C43FD564();
    v16 = sub_1C4F02678();
    v18 = v8;
    LOBYTE(v23) = 3;
    sub_1C43FD564();
    v15 = sub_1C4F02678();
    v17 = v9;
    sub_1C46DD7F4();
    sub_1C44088F4();
    sub_1C4F02658();
    v10 = sub_1C4406AB8();
    v11(v10);
    v14 = v34;
    v13 = v35;
    v12 = v36;
    v22[0] = v6;
    v22[1] = v21;
    v22[2] = v20;
    v22[3] = v19;
    v22[4] = v16;
    v22[5] = v18;
    v22[6] = v15;
    v22[7] = v17;
    v22[8] = v34;
    v22[9] = v35;
    v22[10] = v36;
    sub_1C46DD848(v22, &v23);
    sub_1C440962C(v2);
    v23 = v6;
    v24 = v21;
    v25 = v20;
    v26 = v19;
    v27 = v16;
    v28 = v18;
    v29 = v15;
    v30 = v17;
    v31 = v14;
    v32 = v13;
    v33 = v12;
    sub_1C46DD880(&v23);
    memcpy(v4, v22, 0x58uLL);
  }

  sub_1C43FBC80();
}

void sub_1C46DC6AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0BB488, &qword_1C4F1FFD8);
  sub_1C43FCDF8();
  v36 = v28;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v36 - v30;
  sub_1C4409678(v26, v26[3]);
  sub_1C46DD74C();
  sub_1C4F02BF8();
  v32 = 0;
  v37 = v24;
  while (2)
  {
    v33 = &unk_1F43D8910 + v32++;
    switch(v33[32])
    {
      case 1:
        v35 = *(v24 + 24);
        a10 = *(v24 + 16);
        v42 = v35;
        *&v40 = a10;
        *(&v40 + 1) = v35;
        v39 = 1;
        sub_1C445FFF0(&a10, v38, &qword_1EC0BB498, &qword_1C4F1FFE8);
        sub_1C445FFF0(&v42, v38, &qword_1EC0BB4A0, &unk_1C4F1FFF0);
        sub_1C46DD988();
        sub_1C43FEE4C();
        sub_1C4F027E8();
        sub_1C4420C3C(&a10, &qword_1EC0BB498, &qword_1C4F1FFE8);
        sub_1C4420C3C(&v42, &qword_1EC0BB4A0, &unk_1C4F1FFF0);
        if (!v21)
        {
          v24 = v37;
          goto LABEL_13;
        }

        goto LABEL_14;
      case 2:
        v34 = 2;
        goto LABEL_8;
      case 3:
        v34 = 3;
LABEL_8:
        LOBYTE(v40) = v34;
        goto LABEL_9;
      case 4:
        v43 = *(v24 + 64);
        v44 = *(v24 + 80);
        v40 = *(v24 + 64);
        v41 = *(v24 + 80);
        v39 = 4;
        sub_1C445FFF0(&v43, v38, &qword_1EC0BB490, &qword_1C4F1FFE0);
        sub_1C456902C(&qword_1EC0BB490, &qword_1C4F1FFE0);
        sub_1C46DD8B0();
        sub_1C43FEE4C();
        sub_1C4F027E8();
        if (!v21)
        {
          sub_1C4420C3C(&v43, &qword_1EC0BB490, &qword_1C4F1FFE0);
LABEL_13:
          if (v32 == 5)
          {
            goto LABEL_14;
          }

          continue;
        }

        sub_1C4420C3C(&v43, &qword_1EC0BB490, &qword_1C4F1FFE0);
LABEL_14:
        (*(v36 + 8))(v31, v27);
        sub_1C43FBC80();
        return;
      default:
        LOBYTE(v40) = 0;
LABEL_9:
        sub_1C4F02798();
        if (v21)
        {
          goto LABEL_14;
        }

        goto LABEL_13;
    }
  }
}

void sub_1C46DC9A8(void *a1@<X8>)
{
  sub_1C46DC2C4();
  if (!v1)
  {
    memcpy(a1, __src, 0x58uLL);
  }
}

uint64_t sub_1C46DCA0C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4409678(a1, a1[3]);
  sub_1C4402FBC();
  sub_1C4F02BA8();
  if (!v2)
  {
    sub_1C4418280(v34, v35);
    sub_1C46DDFC8();
    sub_1C4F02898();
    *v7 = v32;
    sub_1C4418280(v34, v35);
    sub_1C4402FBC();
    v8 = sub_1C4F02888();
    v11 = v8;
    v12 = v9;
    v13 = v8 == 0x676E69727473 && v9 == 0xE600000000000000;
    if (v13 || (sub_1C442C81C(0x676E69727473, 0xE600000000000000) & 1) != 0 || (v11 == 1415071060 ? (v14 = v12 == 0xE400000000000000) : (v14 = 0), v14 || (sub_1C442C81C(1415071060, 0xE400000000000000) & 1) != 0))
    {

      sub_1C440A9C4();
      sub_1C4EFBDD8();
LABEL_17:
      sub_1C440962C(v34);
      sub_1C46DE01C(v7, a2);
      return sub_1C440962C(a1);
    }

    v15 = v11 == 7630441 && v12 == 0xE300000000000000;
    if (v15 || (sub_1C442C81C(7630441, 0xE300000000000000) & 1) != 0 || (v11 == 0x52454745544E49 ? (v16 = v12 == 0xE700000000000000) : (v16 = 0), v16 || (sub_1C442C81C(0x52454745544E49, 0xE700000000000000) & 1) != 0 || (v11 == 5525065 ? (v17 = v12 == 0xE300000000000000) : (v17 = 0), v17 || (sub_1C442C81C(5525065, 0xE300000000000000) & 1) != 0)))
    {

      sub_1C440A9C4();
      sub_1C4EFBE08();
      goto LABEL_17;
    }

    v18 = v11 == 0x74616F6C66 && v12 == 0xE500000000000000;
    if (v18 || (sub_1C442C81C(0x74616F6C66, 0xE500000000000000) & 1) != 0 || (v11 == 1279346002 ? (v19 = v12 == 0xE400000000000000) : (v19 = 0), v19 || (sub_1C442C81C(1279346002, 0xE400000000000000) & 1) != 0 || (v11 == 0x454C42554F44 ? (v20 = v12 == 0xE600000000000000) : (v20 = 0), v20 || (sub_1C442C81C(0x454C42554F44, 0xE600000000000000) & 1) != 0)))
    {

      sub_1C440A9C4();
      sub_1C4EFBDE8();
      goto LABEL_17;
    }

    v21 = v11 == 1635017060 && v12 == 0xE400000000000000;
    if (v21 || (sub_1C442C81C(1635017060, 0xE400000000000000) & 1) != 0 || (v11 == 1112493122 ? (v22 = v12 == 0xE400000000000000) : (v22 = 0), v22 || (sub_1C442C81C(1112493122, 0xE400000000000000) & 1) != 0))
    {

      sub_1C440A9C4();
      sub_1C4EFBDB8();
      goto LABEL_17;
    }

    v23 = v11 == 7958113 && v12 == 0xE300000000000000;
    if (v23 || (sub_1C442C81C(7958113, 0xE300000000000000) & 1) != 0 || (v11 == 5852737 ? (v24 = v12 == 0xE300000000000000) : (v24 = 0), v24 || (sub_1C442C81C(5852737, 0xE300000000000000) & 1) != 0))
    {

      sub_1C440A9C4();
      sub_1C4EFBDA8();
      goto LABEL_17;
    }

    v25 = v11 == 1280266050 && v12 == 0xE400000000000000;
    if (v25 || (sub_1C442C81C(1280266050, 0xE400000000000000) & 1) != 0 || (v11 == 0x4E41454C4F4F42 ? (v26 = v12 == 0xE700000000000000) : (v26 = 0), v26 || (sub_1C442C81C(0x4E41454C4F4F42, 0xE700000000000000) & 1) != 0))
    {

      sub_1C440A9C4();
      sub_1C4EFBDF8();
      goto LABEL_17;
    }

    v27 = v11 == 0x454D495445544144 && v12 == 0xE800000000000000;
    if (v27 || (sub_1C442C81C(0x454D495445544144, 0xE800000000000000) & 1) != 0)
    {

      sub_1C440A9C4();
      sub_1C4EFBE18();
      goto LABEL_17;
    }

    *&v32 = 0;
    *(&v32 + 1) = 0xE000000000000000;
    sub_1C4F02248();

    *&v32 = 0xD000000000000016;
    *(&v32 + 1) = 0x80000001C4F92760;
    MEMORY[0x1C6940010](v11, v12);

    v28 = v32;
    sub_1C450B034();
    swift_allocError();
    *v29 = v28;
    *(v29 + 16) = 0;
    *(v29 + 24) = 0xE000000000000000;
    v30 = v33;
    *(v29 + 32) = v32;
    *(v29 + 48) = v30;
    *(v29 + 64) = 3;
    swift_willThrow();
    sub_1C440962C(v34);
  }

  return sub_1C440962C(a1);
}

uint64_t sub_1C46DCF04(void *a1)
{
  sub_1C4409678(a1, a1[3]);
  sub_1C4F02BD8();
  v6 = *v1;
  sub_1C4418280(v4, v5);
  sub_1C46DE080();
  sub_1C4F028B8();
  if (!v2)
  {
    type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property(0);
    sub_1C4EFBE28();
    sub_1C4418280(v4, v5);
    sub_1C4F028A8();
  }

  return sub_1C440962C(v4);
}

uint64_t sub_1C46DD00C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E656C626174 && a2 == 0xE900000000000065;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x736E6D756C6F63 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_1C4F02938();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_1C46DD0DC(char a1)
{
  if (a1)
  {
    return 0x736E6D756C6F63;
  }

  else
  {
    return 0x6D614E656C626174;
  }
}

void sub_1C46DD118(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  sub_1C43FE96C();
  v33[0] = v24;
  v26 = v25;
  v27 = sub_1C456902C(&qword_1EC0BB478, &qword_1C4F1FFC8);
  sub_1C43FCDF8();
  v29 = v28;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v30);
  v32 = v33 - v31;
  sub_1C4409678(v26, v26[3]);
  sub_1C46DD610();
  sub_1C4F02BF8();
  sub_1C4F02798();
  if (!v23)
  {
    v33[1] = v33[0];
    sub_1C456902C(&qword_1EC0BB470, &qword_1C4F1FFC0);
    sub_1C46DD6B0(&qword_1EDDDBC30, qword_1EDDDC390, &unk_1C4F20260, MEMORY[0x1E69E6300]);
    sub_1C4F027E8();
  }

  (*(v29 + 8))(v32, v27);
  sub_1C43FBC80();
}

uint64_t sub_1C46DD2D4(void *a1)
{
  sub_1C456902C(&qword_1EC0BB468, &qword_1C4F1FFB8);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v4 = a1[4];
  sub_1C4409678(a1, a1[3]);
  sub_1C46DD610();
  sub_1C4F02BC8();
  if (!v1)
  {
    v4 = sub_1C4F02678();
    sub_1C456902C(&qword_1EC0BB470, &qword_1C4F1FFC0);
    sub_1C46DD6B0(&unk_1EDDFA580, &qword_1EDDFA748, &unk_1C4F20288, MEMORY[0x1E69E6330]);
    sub_1C4F026C8();
    v6 = sub_1C44069E0();
    v7(v6);
  }

  sub_1C440962C(a1);
  return v4;
}

uint64_t sub_1C46DD520@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C46DD00C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C46DD548(uint64_t a1)
{
  v2 = sub_1C46DD610();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C46DD584(uint64_t a1)
{
  v2 = sub_1C46DD610();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C46DD5C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C46DD2D4(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

unint64_t sub_1C46DD610()
{
  result = qword_1EDDFA750;
  if (!qword_1EDDFA750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA750);
  }

  return result;
}

uint64_t type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property(uint64_t a1)
{
  result = qword_1EDDFA738;
  if (!qword_1EDDFA738)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C46DD6B0(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1C4572308(&qword_1EC0BB470, &qword_1C4F1FFC0);
    sub_1C46DDA18(a2, type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1C46DD74C()
{
  result = qword_1EDDFA6D0;
  if (!qword_1EDDFA6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA6D0);
  }

  return result;
}

unint64_t sub_1C46DD7A0()
{
  result = qword_1EDDFD4E8;
  if (!qword_1EDDFD4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFD4E8);
  }

  return result;
}

unint64_t sub_1C46DD7F4()
{
  result = qword_1EDDFA6D8;
  if (!qword_1EDDFA6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA6D8);
  }

  return result;
}

unint64_t sub_1C46DD8B0()
{
  result = qword_1EDDDC380;
  if (!qword_1EDDDC380)
  {
    sub_1C4572308(&qword_1EC0BB490, &qword_1C4F1FFE0);
    sub_1C46DD934();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC380);
  }

  return result;
}

unint64_t sub_1C46DD934()
{
  result = qword_1EDDDC388;
  if (!qword_1EDDDC388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDDC388);
  }

  return result;
}

unint64_t sub_1C46DD988()
{
  result = qword_1EDDE29B8[0];
  if (!qword_1EDDE29B8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDE29B8);
  }

  return result;
}

uint64_t sub_1C46DDA18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C46DDA60(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  sub_1C43FBCE0();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t sub_1C46DDAC0(uint64_t a1, void (*a2)(void))
{
  a2(0);
  sub_1C43FBCE0();
  (*(v3 + 8))(a1);
  return a1;
}

_BYTE *storeEnumTagSinglePayload for EntityInteractionHistogramDatabaseTable.Config.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1C46DDCF8(uint64_t a1)
{
  result = sub_1C4EFBE38();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C46DDD78()
{
  result = qword_1EC0BB4A8;
  if (!qword_1EC0BB4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB4A8);
  }

  return result;
}

unint64_t sub_1C46DDE14()
{
  result = qword_1EC0BB4C0;
  if (!qword_1EC0BB4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0BB4C0);
  }

  return result;
}

unint64_t sub_1C46DDE6C()
{
  result = qword_1EDDFD368[0];
  if (!qword_1EDDFD368[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDDFD368);
  }

  return result;
}

unint64_t sub_1C46DDEC4()
{
  result = qword_1EDDFA6C8;
  if (!qword_1EDDFA6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA6C8);
  }

  return result;
}

unint64_t sub_1C46DDF1C()
{
  result = qword_1EDDFA758;
  if (!qword_1EDDFA758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA758);
  }

  return result;
}

unint64_t sub_1C46DDF74()
{
  result = qword_1EDDFA760;
  if (!qword_1EDDFA760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFA760);
  }

  return result;
}

unint64_t sub_1C46DDFC8()
{
  result = qword_1EDDFB6D8;
  if (!qword_1EDDFB6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDFB6D8);
  }

  return result;
}

uint64_t sub_1C46DE01C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1C46DE080()
{
  result = qword_1EDDE8120;
  if (!qword_1EDDE8120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDE8120);
  }

  return result;
}

uint64_t sub_1C46DE0D8()
{
  v2 = v0;
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  sub_1C4409678((v2 + 136), v4);
  result = (*(*(v3 + 8) + 16))(v4);
  if (!v1)
  {
    v6 = *(v2 + 120);
    v7 = *(v2 + 128);
    sub_1C4409678((v2 + 96), v6);
    (*(v7 + 24))(v6, v7);
    return KeyValueStore.delete(key:)(*(v2 + 24));
  }

  return result;
}

uint64_t sub_1C46DE19C()
{
  sub_1C43FBCD4();
  v1[7] = v2;
  v1[8] = v0;
  v3 = sub_1C4EF9CD8();
  v1[9] = v3;
  sub_1C43FCF7C(v3);
  v1[10] = v4;
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C46DE264()
{
  sub_1C43FCF70();
  v0[5] = 0;
  sub_1C4EF9CC8();

  v1 = swift_task_alloc();
  v0[14] = v1;
  *v1 = v0;
  v1[1] = sub_1C46DE338;
  sub_1C440F4D4(v0[7]);

  return sub_1C46D7E2C();
}

uint64_t sub_1C46DE338()
{
  sub_1C43FCF70();
  v2 = *v1;
  v3 = *v1;
  sub_1C43FBDAC();
  *v4 = v3;
  *v4 = *v1;
  v3[15] = v0;

  v5 = v2[13];
  v6 = v2[10];
  v7 = v2[9];
  v10 = *(v6 + 8);
  v8 = v6 + 8;
  v9 = v10;
  if (!v0)
  {
    v3[16] = v9;
    v3[17] = v8 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  }

  v9(v5, v7);
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v11, v12, v13);
}

uint64_t sub_1C46DE4A8()
{
  v24 = v0;
  v1 = v0[16];
  v2 = v0[15];
  v3 = v0[11];
  v4 = v0[9];
  sub_1C4409678((v0[8] + 136), *(v0[8] + 160));
  sub_1C4EF9C88();
  sub_1C4EF9BE8();
  v1(v3, v4);
  sub_1C45E025C();
  (v0[16])(v0[12], v0[9]);
  if (v2)
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v5 = sub_1C4F00978();
    sub_1C442B738(v5, qword_1EDE2DDE0);
    v6 = v2;
    v7 = sub_1C4F00968();
    v8 = sub_1C4F01CE8();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = sub_1C43FD084();
      v10 = sub_1C43FFD34();
      v23 = v10;
      *v9 = 136315138;
      swift_getErrorValue();
      v11 = sub_1C4F02A38();
      v13 = sub_1C441D828(v11, v12, &v23);

      *(v9 + 4) = v13;
      sub_1C43FD580(&dword_1C43F8000, v14, v15, "EntityInteractionHistogramViewGenerator: Error pruning eventTracker - %s");
      sub_1C440962C(v10);
      sub_1C43FFD18();
      sub_1C43FBE2C();
    }

    else
    {
    }
  }

  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v16 = sub_1C4F00978();
  sub_1C442B738(v16, qword_1EDE2DDE0);
  v17 = sub_1C4F00968();
  v18 = sub_1C4F01CF8();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1C43F8000, v17, v18, "EntityInteractionHistogramViewGenerator: Completed pruning", v19, 2u);
    sub_1C43FBE2C();
  }

  v20 = v0[5];

  sub_1C43FBCF0();

  return v21(v20);
}

uint64_t sub_1C46DE758()
{
  sub_1C43FBCD4();

  sub_1C43FBDA0();

  return v0();
}

uint64_t sub_1C46DE7C8()
{
  sub_1C43FBCD4();
  v0[40] = v1;
  v0[41] = v2;
  v0[38] = v3;
  v0[39] = v4;
  v0[37] = v5;
  v0[42] = sub_1C456902C(&qword_1EC0BB4C8, &qword_1C4F20378);
  v0[43] = swift_task_alloc();
  v6 = sub_1C456902C(&qword_1EC0BB4D0, &unk_1C4F20380);
  v0[44] = v6;
  sub_1C43FCF7C(v6);
  v0[45] = v7;
  v0[46] = *(v8 + 64);
  v0[47] = swift_task_alloc();
  v0[48] = swift_task_alloc();
  sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  v0[49] = swift_task_alloc();
  v9 = sub_1C4EFDAB8();
  v0[50] = v9;
  sub_1C43FCF7C(v9);
  v0[51] = v10;
  v0[52] = swift_task_alloc();
  v11 = sub_1C4EF9CD8();
  v0[53] = v11;
  sub_1C43FCF7C(v11);
  v0[54] = v12;
  v0[55] = *(v13 + 64);
  v0[56] = swift_task_alloc();
  v0[57] = swift_task_alloc();
  v0[58] = swift_task_alloc();
  v0[59] = swift_task_alloc();
  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1C46DE9E8()
{
  v79 = v0;
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v2 = *(v0 + 464);
  v1 = *(v0 + 472);
  v4 = *(v0 + 424);
  v3 = *(v0 + 432);
  v6 = *(v0 + 296);
  v5 = *(v0 + 304);
  v7 = sub_1C4F00978();
  sub_1C442B738(v7, qword_1EDE2DDE0);
  v8 = *(v3 + 16);
  v8(v1, v6, v4);
  v75 = v8;
  v8(v2, v5, v4);
  v9 = sub_1C4F00968();
  v10 = sub_1C4F01CC8();
  v11 = os_log_type_enabled(v9, v10);
  v13 = *(v0 + 464);
  v12 = *(v0 + 472);
  v15 = *(v0 + 424);
  v14 = *(v0 + 432);
  if (v11)
  {
    v16 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v16 = 136315394;
    sub_1C45C2A2C();
    log = v9;
    v17 = sub_1C4F02858();
    v19 = v18;
    v20 = *(v14 + 8);
    v20(v12, v15);
    v21 = sub_1C441D828(v17, v19, &v77);

    *(v16 + 4) = v21;
    *(v16 + 12) = 2080;
    v22 = sub_1C4F02858();
    v24 = v23;
    v20(v13, v15);
    v25 = sub_1C441D828(v22, v24, &v77);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_1C43F8000, log, v10, "EntityInteractionHistogramViewGenerator: Starting histogram batched digest from %s to %s", v16, 0x16u);
    swift_arrayDestroy();
    sub_1C43FBE2C();
    sub_1C43FBE2C();
  }

  else
  {

    v26 = *(v14 + 8);
    v26(v13, v15);
    v26(v12, v15);
  }

  v27 = *(v0 + 416);
  v28 = *(v0 + 424);
  v29 = *(v0 + 400);
  v30 = *(v0 + 408);
  v31 = *(v0 + 392);
  v32 = *(v0 + 320);
  sub_1C4409678((v32 + 136), *(v32 + 160));
  (*(v30 + 104))(v27, *MEMORY[0x1E69A9418], v29);
  sub_1C440BAA8(v31, 1, 1, v28);
  sub_1C45E1070(v0 + 64);
  v34 = *(v0 + 408);
  v33 = *(v0 + 416);
  v35 = *(v0 + 400);
  sub_1C446F170(*(v0 + 392), &unk_1EC0B84E0, qword_1C4F0D2D0);
  (*(v34 + 8))(v33, v35);
  v36 = *(v0 + 104);
  if (v36 == 255)
  {
    v42 = 0;
  }

  else
  {
    v37 = *(v0 + 456);
    v38 = *(v0 + 424);
    v39 = *(v0 + 296);
    v40 = *(v0 + 80);
    *(v0 + 16) = *(v0 + 64);
    *(v0 + 32) = v40;
    *(v0 + 48) = *(v0 + 96);
    *(v0 + 56) = v36;
    type metadata accessor for BehaviorEvent();
    v75(v37, v39, v38);
    sub_1C45D644C(v0 + 16, v37);
    v42 = v41;
  }

  *(v0 + 480) = v42;
  v43 = *(v0 + 320);
  v44 = *(v0 + 296);
  v45 = *(v0 + 304);
  sub_1C442E860(v32 + 136, v0 + 112);
  sub_1C494DA84(v44, v45, *(v43 + 80), *(v43 + 88), &v77);
  v47 = *(v0 + 448);
  v46 = *(v0 + 456);
  v76 = v42;
  v48 = *(v0 + 432);
  v49 = *(v0 + 440);
  v50 = *(v0 + 424);
  v73 = *(v0 + 376);
  v70 = *(v0 + 384);
  v71 = *(v0 + 360);
  v72 = *(v0 + 352);
  v51 = *(v0 + 296);
  v52 = *(v0 + 304);
  v53 = v78;
  v69 = v77;
  *(v0 + 488) = v78;
  sub_1C442E860(v0 + 112, v0 + 152);
  v75(v46, v51, v50);
  v75(v47, v52, v50);
  v54 = *(v48 + 80);
  v55 = (v54 + 56) & ~v54;
  v56 = (v49 + v54 + v55) & ~v54;
  v57 = swift_allocObject();
  sub_1C441D670((v0 + 152), v57 + 16);
  v58 = *(v48 + 32);
  v58(v57 + v55, v46, v50);
  v58(v57 + v56, v47, v50);
  *(v0 + 216) = v69;
  *(v0 + 224) = v53;
  *(v0 + 232) = 100;

  sub_1C456902C(&qword_1EC0BB4D8, &qword_1C4F203A0);
  sub_1C456902C(&qword_1EC0BB4E0, &qword_1C4F203A8);
  sub_1C4401CBC(qword_1EDDE49C0, &qword_1EC0BB4D8, &qword_1C4F203A0, &unk_1C4F0F638);
  sub_1C4F02448();
  sub_1C4401CBC(&qword_1EDDDB820, &qword_1EC0BB4C8, &qword_1C4F20378, MEMORY[0x1E69E8878]);
  sub_1C4401CBC(&qword_1EDDE4BA0, &qword_1EC0BB4E0, &qword_1C4F203A8, &unk_1C4F0F4E0);
  sub_1C4F02598();
  v59 = *(v71 + 32);
  v59(v73, v70, v72);
  v60 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v61 = swift_allocObject();
  *(v0 + 496) = v61;
  v59(v61 + v60, v73, v72);
  *(v0 + 264) = sub_1C46E0738;
  *(v0 + 272) = v61;
  v62 = swift_task_alloc();
  *(v0 + 504) = v62;
  *v62 = v0;
  v62[1] = sub_1C46DF334;
  v63 = sub_1C440F4D4(*(v0 + 296));

  return sub_1C46DF96C(v63, v64, v65, v66, v67, v76);
}

uint64_t sub_1C46DF334()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  *(v1 + 512) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1C46DF428()
{
  v1 = v0[64];
  v2 = v0[41];

  result = sub_1C440962C(v0 + 14);
  if (__OFADD__(*v2, v1))
  {
    __break(1u);
  }

  else
  {
    *v0[41] = *v2 + v1;
    sub_1C443217C();

    sub_1C43FBDA0();

    return v4();
  }

  return result;
}

uint64_t sub_1C46DF51C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[6] = a1;
  v5[7] = a3;
  v5[10] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1C46DF548, 0, 0);
}

uint64_t sub_1C46DF548()
{
  sub_1C43FBCD4();
  sub_1C4409678(*(v0 + 56), *(*(v0 + 56) + 24));
  v1 = swift_task_alloc();
  *(v0 + 88) = v1;
  *v1 = v0;
  v1[1] = sub_1C46DF5E8;
  v2 = sub_1C440F4D4(*(v0 + 64));

  return sub_1C45DCD40(v2, v3, v4);
}

uint64_t sub_1C46DF5E8()
{
  sub_1C43FBCD4();
  sub_1C43FBDE4();
  v2 = *v1;
  sub_1C43FBDAC();
  *v3 = v2;
  *(v4 + 96) = v0;

  sub_1C43FEAF8();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1C46DF6E8()
{
  sub_1C43FCF70();
  **(v0 + 48) = *(v0 + 80);
  sub_1C43FBCF0();
  v3 = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v3();
}

uint64_t sub_1C46DF750()
{
  v19 = v0;
  if (qword_1EDDFA668 != -1)
  {
    sub_1C4406758();
    swift_once();
  }

  v1 = *(v0 + 96);
  v2 = sub_1C4F00978();
  sub_1C442B738(v2, qword_1EDE2DDE0);
  v3 = v1;
  v4 = sub_1C4F00968();
  v5 = sub_1C4F01CE8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 96);
  if (v6)
  {
    v8 = sub_1C43FD084();
    v9 = sub_1C43FFD34();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1C4F02A38();
    v12 = sub_1C441D828(v10, v11, &v18);

    *(v8 + 4) = v12;
    sub_1C43FD580(&dword_1C43F8000, v13, v14, "EntityInteractionHistogramViewGenerator: Error updating eventTracker - %s");
    sub_1C440962C(v9);
    sub_1C43FFD18();
    sub_1C43FBE2C();
  }

  else
  {
  }

  **(v0 + 48) = *(v0 + 80);
  sub_1C43FBCF0();
  v17 = v15;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  return v17();
}