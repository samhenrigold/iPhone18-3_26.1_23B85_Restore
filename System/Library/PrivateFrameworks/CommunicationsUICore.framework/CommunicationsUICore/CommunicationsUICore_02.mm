void *sub_1C2F2611C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076768, &unk_1C2F7A270);
  v3 = sub_1C2F76D8C();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 44);
  v7 = *(a1 + 45);
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v26 = a1;
  v11 = *(a1 + 64);
  v10 = *(a1 + 72);
  v12 = sub_1C2F3D888(v4);
  if (v13)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v14 = v12;
  result = v9;
  v16 = (v26 + 120);
  while (1)
  {
    *(v3 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v14;
    *(v3[6] + 4 * v14) = v4;
    v17 = v3[7] + 40 * v14;
    *v17 = v5;
    *(v17 + 4) = v6 & 1;
    *(v17 + 5) = v7 & 1;
    *(v17 + 8) = v8;
    *(v17 + 16) = result;
    *(v17 + 24) = v11;
    *(v17 + 32) = v10;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v25 = v16 + 6;
    v4 = *(v16 - 10);
    v21 = *(v16 - 8);
    v27 = *(v16 - 28);
    v7 = *(v16 - 27);
    v8 = *(v16 - 3);
    v22 = *(v16 - 2);
    v11 = *(v16 - 1);
    v23 = *v16;

    v14 = sub_1C2F3D888(v4);
    v16 = v25;
    v10 = v23;
    v5 = v21;
    result = v22;
    v6 = v27;
    if (v24)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1C2F262B8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076760, &qword_1C2F7A268);
    v3 = sub_1C2F76D8C();
    for (i = (a1 + 37); ; i += 8)
    {
      v5 = *(i - 5);
      v6 = *(i - 1);
      v7 = *i;
      result = sub_1C2F3D888(v5);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      v10 = (v3[7] + 2 * result);
      *v10 = v6;
      v10[1] = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
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

unint64_t sub_1C2F263A4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076750, &qword_1C2F7A258);
    v3 = sub_1C2F76D8C();
    v4 = a1 + 32;

    while (1)
    {
      sub_1C2F2662C(v4, v13);
      result = sub_1C2F3D8D0(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_1C2F2669C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
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

uint64_t sub_1C2F26504(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D38, &qword_1C2F78BB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F2656C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 32);
  if (v2)
  {
    v2 = [v2 BOOLValue];
  }

  return v1(v2);
}

uint64_t sub_1C2F2662C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076740, &qword_1C2F7A1B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

_OWORD *sub_1C2F2669C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

unint64_t sub_1C2F266BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076758, &qword_1C2F7A260);
    v3 = sub_1C2F76D8C();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1C2EFAEC0(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
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

uint64_t CallStatus.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

unint64_t sub_1C2F26884()
{
  result = qword_1EC076770;
  if (!qword_1EC076770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076770);
  }

  return result;
}

uint64_t PodcastRecordingError.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t PodcastRecordingService.__allocating_init(callCenter:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

void sub_1C2F269B4(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v22 - v7;
  if ([a1 isPodcastRecordingAllowed])
  {
    if (qword_1EC075C78 != -1)
    {
      swift_once();
    }

    v9 = sub_1C2F761FC();
    __swift_project_value_buffer(v9, qword_1EC076778);
    v10 = sub_1C2F761DC();
    v11 = sub_1C2F769EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C2EF2000, v10, v11, "Requesting to start a podcast recording session.", v12, 2u);
      MEMORY[0x1C6929E80](v12, -1, -1);
    }

    v13 = sub_1C2F768AC();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    swift_weakInit();
    sub_1C2F7688C();

    v15 = a1;
    v16 = sub_1C2F7687C();
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v14;
    v17[5] = a2;
    v17[6] = a3;
    v17[7] = v15;

    sub_1C2F06978(0, 0, v8, &unk_1C2F7A340, v17);
  }

  else
  {
    v19 = [objc_opt_self() defaultCenter];
    if (qword_1EC075CC8 != -1)
    {
      swift_once();
    }

    [v19 postNotificationName:qword_1EC076FF8 object:0];

    sub_1C2F281B4();
    v20 = swift_allocError();
    *v21 = 0;
    a2();
  }
}

uint64_t sub_1C2F26CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  sub_1C2F7688C();
  v7[29] = sub_1C2F7687C();
  v9 = sub_1C2F7684C();
  v7[30] = v9;
  v7[31] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C2F26D70, v9, v8);
}

uint64_t sub_1C2F26D70()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    v2 = v0[28];
    v3 = *(Strong + 16);
    v0[33] = v3;
    v4 = objc_allocWithZone(MEMORY[0x1E69D8AB0]);
    v5 = v3;
    v6 = [v4 initWithCall:v2 mode:1 isInitiatedLocally:1];
    v0[34] = v6;
    v0[2] = v0;
    v0[3] = sub_1C2F26FFC;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0767A0, &qword_1C2F7A4B8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C2F27504;
    v0[13] = &block_descriptor_18;
    v0[14] = v7;
    [v5 performRecordingRequest:v6 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    if (qword_1EC075C78 != -1)
    {
      swift_once();
    }

    v8 = sub_1C2F761FC();
    __swift_project_value_buffer(v8, qword_1EC076778);
    v9 = sub_1C2F761DC();
    v10 = sub_1C2F769EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C2EF2000, v9, v10, "self released, can't request start podcast recording", v11, 2u);
      MEMORY[0x1C6929E80](v11, -1, -1);
    }

    v12 = v0[26];

    v12(0);
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1C2F26FFC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_1C2F27270;
  }

  else
  {
    v5 = sub_1C2F2712C;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C2F2712C()
{
  v1 = v0[33];
  v2 = v0[34];

  if (qword_1EC075C78 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2F761FC();
  __swift_project_value_buffer(v3, qword_1EC076778);
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "Successfully started podcast recording", v6, 2u);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  v7 = v0[26];

  v7(0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1C2F27270()
{
  v20 = v0;
  v1 = v0[34];
  v2 = v0[33];

  swift_willThrow();

  if (qword_1EC075C78 != -1)
  {
    swift_once();
  }

  v3 = v0[35];
  v4 = sub_1C2F761FC();
  __swift_project_value_buffer(v4, qword_1EC076778);
  v5 = v3;
  v6 = sub_1C2F761DC();
  v7 = sub_1C2F769DC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1C2F76F3C();
    v12 = sub_1C2EFAB28(v10, v11, &v19);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C2EF2000, v6, v7, "Unable to start podcast recording: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1C6929E80](v9, -1, -1);
    MEMORY[0x1C6929E80](v8, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v13 = [objc_opt_self() defaultCenter];
    if (qword_1EC075CC8 != -1)
    {
      swift_once();
    }

    [v13 postNotificationName:qword_1EC076FF8 object:{0, v19}];
  }

  v14 = v0[35];
  v15 = v0[26];
  v16 = v14;
  v15(v14);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1C2F27504(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076DF0, &unk_1C2F7A4C0);
    v5 = swift_allocError();
    *v6 = a2;
    v7 = a2;

    return MEMORY[0x1EEE6DEE8](v4, v5);
  }

  else
  {
    v8 = *v3;

    return MEMORY[0x1EEE6DEE0](v8);
  }
}

void sub_1C2F275B0(void *a1, void (*a2)(void), uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  if ([a1 isPodcastRecordingAllowed])
  {
    if (qword_1EC075C78 != -1)
    {
      swift_once();
    }

    v9 = sub_1C2F761FC();
    __swift_project_value_buffer(v9, qword_1EC076778);
    v10 = sub_1C2F761DC();
    v11 = sub_1C2F769EC();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1C2EF2000, v10, v11, "Requesting to stop a podcast recording session.", v12, 2u);
      MEMORY[0x1C6929E80](v12, -1, -1);
    }

    v13 = sub_1C2F768AC();
    (*(*(v13 - 8) + 56))(v8, 1, 1, v13);
    v14 = swift_allocObject();
    swift_weakInit();
    sub_1C2F7688C();

    v15 = a1;
    v16 = sub_1C2F7687C();
    v17 = swift_allocObject();
    v18 = MEMORY[0x1E69E85E0];
    v17[2] = v16;
    v17[3] = v18;
    v17[4] = v14;
    v17[5] = a2;
    v17[6] = a3;
    v17[7] = v15;

    sub_1C2F06978(0, 0, v8, &unk_1C2F7A350, v17);
  }

  else
  {
    sub_1C2F281B4();
    v19 = swift_allocError();
    *v20 = 0;
    a2();
  }
}

uint64_t sub_1C2F2785C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[27] = a6;
  v7[28] = a7;
  v7[25] = a4;
  v7[26] = a5;
  sub_1C2F7688C();
  v7[29] = sub_1C2F7687C();
  v9 = sub_1C2F7684C();
  v7[30] = v9;
  v7[31] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C2F278F8, v9, v8);
}

uint64_t sub_1C2F278F8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[32] = Strong;
  if (Strong)
  {
    v2 = v0[28];
    v3 = *(Strong + 16);
    v0[33] = v3;
    v4 = objc_allocWithZone(MEMORY[0x1E69D8AB8]);
    v5 = v3;
    v6 = [v4 initWithCall_];
    v0[34] = v6;
    v0[2] = v0;
    v0[3] = sub_1C2F27B7C;
    v7 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0767A0, &qword_1C2F7A4B8);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1C2F27504;
    v0[13] = &block_descriptor_3;
    v0[14] = v7;
    [v5 performRecordingRequest:v6 completion:v0 + 10];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    if (qword_1EC075C78 != -1)
    {
      swift_once();
    }

    v8 = sub_1C2F761FC();
    __swift_project_value_buffer(v8, qword_1EC076778);
    v9 = sub_1C2F761DC();
    v10 = sub_1C2F769EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1C2EF2000, v9, v10, "self released, can't request stop podcast recording", v11, 2u);
      MEMORY[0x1C6929E80](v11, -1, -1);
    }

    v12 = v0[26];

    v12(0);
    v13 = v0[1];

    return v13();
  }
}

uint64_t sub_1C2F27B7C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 280) = v2;
  v3 = *(v1 + 248);
  v4 = *(v1 + 240);
  if (v2)
  {
    v5 = sub_1C2F27DF0;
  }

  else
  {
    v5 = sub_1C2F27CAC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1C2F27CAC()
{
  v1 = v0[33];
  v2 = v0[34];

  if (qword_1EC075C78 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2F761FC();
  __swift_project_value_buffer(v3, qword_1EC076778);
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "Successfully stopped podcast recording", v6, 2u);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  v7 = v0[26];

  v7(0);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1C2F27DF0()
{
  v19 = v0;
  v1 = v0[34];
  v2 = v0[33];

  swift_willThrow();

  if (qword_1EC075C78 != -1)
  {
    swift_once();
  }

  v3 = v0[35];
  v4 = sub_1C2F761FC();
  __swift_project_value_buffer(v4, qword_1EC076778);
  v5 = v3;
  v6 = sub_1C2F761DC();
  v7 = sub_1C2F769DC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315138;
    swift_getErrorValue();
    v10 = sub_1C2F76F3C();
    v12 = sub_1C2EFAB28(v10, v11, &v18);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1C2EF2000, v6, v7, "Unable to stop podcast recording: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1C6929E80](v9, -1, -1);
    MEMORY[0x1C6929E80](v8, -1, -1);
  }

  v13 = v0[35];
  v14 = v0[26];
  v15 = v13;
  v14(v13);

  v16 = v0[1];

  return v16();
}

void sub_1C2F27FE8(char a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = [objc_opt_self() defaultCenter];
    v3 = v2;
    if (qword_1EC075CC8 != -1)
    {
      swift_once();
      v2 = v3;
    }

    [v2 postNotificationName:qword_1EC076FF8 object:0];
  }
}

uint64_t PodcastRecordingService.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F28130()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EC076778);
  __swift_project_value_buffer(v0, qword_1EC076778);
  return sub_1C2F761EC();
}

unint64_t sub_1C2F281B4()
{
  result = qword_1EC076790;
  if (!qword_1EC076790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076790);
  }

  return result;
}

uint64_t sub_1C2F28208(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C2F0AC48;

  return sub_1C2F26CD4(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1C2F2832C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1C2F06348;

  return sub_1C2F2785C(a1, v4, v5, v6, v7, v9, v8);
}

unint64_t sub_1C2F28404()
{
  result = qword_1EC076798;
  if (!qword_1EC076798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076798);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SettingsPersonHandle.HandleType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SettingsPersonHandle.HandleType(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t SettingsPersonListViewModel.__allocating_init(entries:addEntryAction:deleteEntryAction:title:subEntryText:addEntryText:deleteText:footerText:wantsSubtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, char a13)
{
  v20 = swift_allocObject();
  *(v20 + 137) = 0;
  sub_1C2F75DDC();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  *(v20 + 32) = a3;
  *(v20 + 40) = a4;
  *(v20 + 48) = a5;
  *(v20 + 56) = a6;
  *(v20 + 64) = a7;
  *(v20 + 72) = a8;
  *(v20 + 80) = a9;
  *(v20 + 96) = a10;
  *(v20 + 112) = a11;
  *(v20 + 128) = a12;
  *(v20 + 136) = a13;
  return v20;
}

uint64_t SettingsPersonHandle.HandleType.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t SettingsPersonHandle.value.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t SettingsPersonHandle.formattedValue.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void __swiftcall SettingsPersonHandle.init(value:formattedValue:type:)(CommunicationsUICore::SettingsPersonHandle *__return_ptr retstr, Swift::String value, Swift::String formattedValue, CommunicationsUICore::SettingsPersonHandle::HandleType type)
{
  v4 = *type;
  retstr->value = value;
  retstr->formattedValue = formattedValue;
  retstr->type = v4;
}

uint64_t static SettingsPersonHandle.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_1C2F76EFC()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1C2F76EFC()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t SettingsPersonHandle.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1C2F7673C();
  sub_1C2F7673C();
  return MEMORY[0x1C6929580](v2);
}

uint64_t SettingsPersonHandle.hashValue.getter()
{
  v1 = *(v0 + 32);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F28A08()
{
  v1 = *(v0 + 32);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F28A88(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1C2F7673C();
  sub_1C2F7673C();
  return MEMORY[0x1C6929580](v2);
}

uint64_t sub_1C2F28ADC(uint64_t a1)
{
  v2 = *(v1 + 32);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v2);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F28B58(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v8 || (sub_1C2F76EFC()) && (v2 == v5 ? (v9 = v3 == v6) : (v9 = 0), v9 || (sub_1C2F76EFC()))
  {
    return v4 ^ v7 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t SettingsPersonEntry.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

void *SettingsPersonEntry.contact.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

uint64_t SettingsPersonEntry.displayName.getter()
{
  if (v0[2])
  {
    v1 = v0[1];
  }

  else
  {
    v2 = v0[4];
    if (*(v2 + 16))
    {
      v1 = *(v2 + 48);
    }

    else
    {
      v1 = 0;
    }
  }

  return v1;
}

void SettingsPersonEntry.init(contact:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695CD80]) init];
  [v4 setStyle_];
  v73 = a1;
  v5 = [v4 stringFromContact_];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1C2F766CC();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = [v73 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AD0, &qword_1C2F7A4D0);
  v11 = sub_1C2F767EC();

  if (v11 >> 62)
  {
    v12 = sub_1C2F76BBC();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v71 = v4;
  v72 = a2;
  v69 = v9;
  v70 = v7;
  if (v12)
  {
    v74 = v12;
    if (v12 >= 1)
    {
      v13 = 0;
      v75 = v11 & 0xC000000000000001;
      v14 = MEMORY[0x1E69E7CC0];
      v15 = v12;
      while (1)
      {
        if (v75)
        {
          v16 = MEMORY[0x1C6929250](v13, v11);
        }

        else
        {
          v16 = *(v11 + 8 * v13 + 32);
        }

        v17 = v16;
        v18 = [v16 value];
        v19 = [v18 stringValue];

        v20 = sub_1C2F766CC();
        v76 = v21;
        v78 = v20;

        v22 = [v17 value];
        v23 = [v22 stringValue];

        v24 = sub_1C2F766CC();
        v26 = v25;

        v27 = sub_1C2F766AC();
        v28 = PNCopyBestGuessCountryCodeForNumber();

        if (!v28)
        {
          goto LABEL_19;
        }

        v29 = v11;
        v30 = sub_1C2F766AC();
        v31 = CFPhoneNumberCreate();

        if (!v31)
        {
          goto LABEL_17;
        }

        String = CFPhoneNumberCreateString();
        if (!String)
        {
          break;
        }

        v33 = String;
        v24 = sub_1C2F766CC();
        v35 = v34;

        v26 = v35;
LABEL_18:
        v11 = v29;
        v15 = v74;
LABEL_19:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1C2F1C554(0, *(v14 + 2) + 1, 1, v14);
        }

        v37 = *(v14 + 2);
        v36 = *(v14 + 3);
        if (v37 >= v36 >> 1)
        {
          v14 = sub_1C2F1C554((v36 > 1), v37 + 1, 1, v14);
        }

        ++v13;

        *(v14 + 2) = v37 + 1;
        v38 = &v14[40 * v37];
        *(v38 + 4) = v78;
        *(v38 + 5) = v76;
        *(v38 + 6) = v24;
        *(v38 + 7) = v26;
        v38[64] = 0;
        if (v15 == v13)
        {
          goto LABEL_26;
        }
      }

LABEL_17:
      goto LABEL_18;
    }

LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v14 = MEMORY[0x1E69E7CC0];
LABEL_26:

  v39 = [v73 emailAddresses];
  v40 = sub_1C2F767EC();

  v41 = v40;
  if (!(v40 >> 62))
  {
    v42 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v42)
    {
      goto LABEL_28;
    }

LABEL_41:

    sub_1C2F76FEC();

    v58 = [v73 identifier];
    v59 = sub_1C2F766CC();
    v61 = v60;

    v62 = MEMORY[0x1C6928D80](v59, v61);

    MEMORY[0x1C6929580](v62);
    v63 = *(v14 + 2);
    if (!v63)
    {
LABEL_45:

      v68 = sub_1C2F76FCC();

      *v72 = v68;
      v72[1] = v70;
      v72[2] = v69;
      v72[3] = v73;
      v72[4] = v14;
      return;
    }

    v64 = 0;
    v65 = (v14 + 64);
    while (v64 < *(v14 + 2))
    {
      ++v64;
      v66 = *v65;
      sub_1C2F76F9C();

      sub_1C2F7673C();
      sub_1C2F7673C();
      MEMORY[0x1C6929580](v66);
      v67 = sub_1C2F76FDC();
      MEMORY[0x1C6929580](v67);

      v65 += 40;
      if (v63 == v64)
      {
        goto LABEL_45;
      }
    }

    __break(1u);
    goto LABEL_47;
  }

  v57 = sub_1C2F76BBC();
  v41 = v40;
  v42 = v57;
  if (!v57)
  {
    goto LABEL_41;
  }

LABEL_28:
  if (v42 >= 1)
  {
    v43 = 0;
    v77 = v41 & 0xC000000000000001;
    v79 = v41;
    do
    {
      if (v77)
      {
        v44 = MEMORY[0x1C6929250](v43);
      }

      else
      {
        v44 = *(v41 + 8 * v43 + 32);
      }

      v45 = v44;
      v46 = [v44 value];
      v47 = sub_1C2F766CC();
      v49 = v48;

      v50 = [v45 value];
      v51 = sub_1C2F766CC();
      v53 = v52;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1C2F1C554(0, *(v14 + 2) + 1, 1, v14);
      }

      v55 = *(v14 + 2);
      v54 = *(v14 + 3);
      if (v55 >= v54 >> 1)
      {
        v14 = sub_1C2F1C554((v54 > 1), v55 + 1, 1, v14);
      }

      ++v43;

      *(v14 + 2) = v55 + 1;
      v56 = &v14[40 * v55];
      *(v56 + 4) = v47;
      *(v56 + 5) = v49;
      *(v56 + 6) = v51;
      *(v56 + 7) = v53;
      v56[64] = 1;
      v41 = v79;
    }

    while (v42 != v43);
    goto LABEL_41;
  }

LABEL_48:
  __break(1u);
}

uint64_t SettingsPersonEntry.init(name:contact:handles:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  sub_1C2F76FEC();
  v21 = a3;

  if (a3)
  {
    v8 = [a3 identifier];
    v9 = sub_1C2F766CC();
    v11 = v10;

    v12 = MEMORY[0x1C6928D80](v9, v11);
  }

  else
  {
    v12 = 0;
  }

  result = MEMORY[0x1C6929580](v12);
  v14 = *(a4 + 16);
  if (v14)
  {
    v15 = 0;
    v16 = (a4 + 64);
    while (v15 < *(a4 + 16))
    {
      ++v15;
      v17 = *v16;
      sub_1C2F76F9C();

      sub_1C2F7673C();
      sub_1C2F7673C();
      MEMORY[0x1C6929580](v17);
      v18 = sub_1C2F76FDC();
      MEMORY[0x1C6929580](v18);

      v16 += 40;
      if (v14 == v15)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_8:

    result = sub_1C2F76FCC();
    *a5 = result;
    a5[1] = a1;
    a5[2] = a2;
    a5[3] = v21;
    a5[4] = a4;
  }

  return result;
}

uint64_t sub_1C2F29504()
{
  swift_getKeyPath();
  sub_1C2F2A480();
  sub_1C2F75DAC();

  swift_beginAccess();
}

uint64_t sub_1C2F2958C(uint64_t a1)
{
  swift_beginAccess();

  sub_1C2F1F490(v3, a1);
  v5 = v4;

  if (v5)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F2A480();
    sub_1C2F75D9C();
  }
}

uint64_t (*sub_1C2F296A4(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore27SettingsPersonListViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2F2A480();
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F294B0(v4);
  return sub_1C2F297AC;
}

uint64_t SettingsPersonListViewModel.addEntryAction.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t SettingsPersonListViewModel.deleteEntryAction.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

uint64_t SettingsPersonListViewModel.title.getter()
{
  v1 = *(v0 + 56);

  return v1;
}

uint64_t sub_1C2F29898@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F2A480();
  sub_1C2F75DAC();

  swift_beginAccess();
  v4 = *(v3 + 80);
  *a2 = *(v3 + 72);
  a2[1] = v4;
}

uint64_t sub_1C2F29928(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return sub_1C2F299FC(v1, v2);
}

uint64_t sub_1C2F29968()
{
  swift_getKeyPath();
  sub_1C2F2A480();
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 72);

  return v1;
}

uint64_t sub_1C2F299FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 72) == a1 && *(v2 + 80) == a2;
  if (v5 || (sub_1C2F76EFC() & 1) != 0)
  {
    *(v2 + 72) = a1;
    *(v2 + 80) = a2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F2A480();
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F29B20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  *(a1 + 72) = a2;
  *(a1 + 80) = a3;
}

uint64_t (*sub_1C2F29B8C(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore27SettingsPersonListViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2F2A480();
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F29848(v4);
  return sub_1C2F29C94;
}

uint64_t SettingsPersonListViewModel.addEntryText.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

uint64_t SettingsPersonListViewModel.deleteText.getter()
{
  v1 = *(v0 + 104);

  return v1;
}

uint64_t SettingsPersonListViewModel.footerText.getter()
{
  v1 = *(v0 + 120);

  return v1;
}

uint64_t sub_1C2F29D88@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F2A480();
  sub_1C2F75DAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 137);
  return result;
}

uint64_t sub_1C2F29E3C()
{
  swift_getKeyPath();
  sub_1C2F2A480();
  sub_1C2F75DAC();

  swift_beginAccess();
  return *(v0 + 137);
}

uint64_t sub_1C2F29EC0(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 137) == v2)
  {
    *(v1 + 137) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F2A480();
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t sub_1C2F29FB4(uint64_t a1, char a2)
{
  result = swift_beginAccess();
  *(a1 + 137) = a2;
  return result;
}

uint64_t (*sub_1C2F2A008(uint64_t *a1))()
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
  v4[5] = OBJC_IVAR____TtC20CommunicationsUICore27SettingsPersonListViewModel___observationRegistrar;
  *v4 = v1;
  v4[6] = sub_1C2F2A480();
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  v4[7] = sub_1C2F29D38(v4);
  return sub_1C2F2A110;
}

void sub_1C2F2A11C(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *a1;
  (*(*a1 + 56))(*a1, 0);
  *v3 = v3[4];
  swift_getKeyPath();
  sub_1C2F75DBC();

  free(v3);
}

uint64_t SettingsPersonListViewModel.init(entries:addEntryAction:deleteEntryAction:title:subEntryText:addEntryText:deleteText:footerText:wantsSubtitle:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, __int128 a10, __int128 a11, uint64_t a12, char a13)
{
  *(v13 + 137) = 0;
  sub_1C2F75DDC();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  *(v13 + 48) = a5;
  *(v13 + 56) = a6;
  *(v13 + 64) = a7;
  *(v13 + 72) = a8;
  *(v13 + 80) = a9;
  *(v13 + 96) = a10;
  *(v13 + 112) = a11;
  *(v13 + 128) = a12;
  *(v13 + 136) = a13;
  return v13;
}

char *SettingsPersonListViewModel.deinit()
{

  v1 = OBJC_IVAR____TtC20CommunicationsUICore27SettingsPersonListViewModel___observationRegistrar;
  v2 = sub_1C2F75DEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SettingsPersonListViewModel.__deallocating_deinit()
{
  SettingsPersonListViewModel.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s20CommunicationsUICore19SettingsPersonEntryV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v5 = a1[3];
  v4 = a1[4];
  v6 = a2[1];
  v7 = a2[2];
  v9 = a2[3];
  v8 = a2[4];
  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    sub_1C2F208DC();
    v10 = v9;
    v11 = v5;
    v12 = sub_1C2F76AAC();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if ((sub_1C2F1F38C(v4, v8) & 1) == 0)
  {
    return 0;
  }

  result = (v3 | v7) == 0;
  if (v3 && v7)
  {
    if (v2 == v6 && v3 == v7)
    {
      return 1;
    }

    else
    {

      return sub_1C2F76EFC();
    }
  }

  return result;
}

unint64_t sub_1C2F2A480()
{
  result = qword_1EC0764F0;
  if (!qword_1EC0764F0)
  {
    type metadata accessor for SettingsPersonListViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0764F0);
  }

  return result;
}

uint64_t type metadata accessor for SettingsPersonListViewModel(uint64_t a1)
{
  result = qword_1EC0767B8;
  if (!qword_1EC0767B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2F2A544()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 137) = v2;
  return result;
}

unint64_t sub_1C2F2A59C()
{
  result = qword_1EC0767B0;
  if (!qword_1EC0767B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0767B0);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C2F2A614(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1C2F2A65C(uint64_t result, int a2, int a3)
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
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1C2F2A6D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1C2F2A71C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C2F2A77C(uint64_t a1)
{
  result = sub_1C2F75DEC();
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

uint64_t ActivitySymbol.BundleType.description.getter()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x6D6574737973;
  }
}

uint64_t sub_1C2F2AA5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D6574737973 && a2 == 0xE600000000000000;
  if (v6 || (sub_1C2F76EFC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C2F7EFB0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1C2F76EFC();

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

uint64_t sub_1C2F2AB48(uint64_t a1)
{
  v2 = sub_1C2F2AF6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2AB84(uint64_t a1)
{
  v2 = sub_1C2F2AF6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F2ABCC(uint64_t a1)
{
  v2 = sub_1C2F2AFC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2AC08(uint64_t a1)
{
  v2 = sub_1C2F2AFC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F2AC44(uint64_t a1)
{
  v2 = sub_1C2F2B014();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2AC80(uint64_t a1)
{
  v2 = sub_1C2F2B014();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySymbol.BundleType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0767C8, &qword_1C2F7A850);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0767D0, &qword_1C2F7A858);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0767D8, &qword_1C2F7A860);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F2AF6C();
  sub_1C2F7702C();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1C2F2AFC0();
    v14 = v18;
    sub_1C2F76E3C();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1C2F2B014();
    sub_1C2F76E3C();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

unint64_t sub_1C2F2AF6C()
{
  result = qword_1EC0767E0;
  if (!qword_1EC0767E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0767E0);
  }

  return result;
}

unint64_t sub_1C2F2AFC0()
{
  result = qword_1EC0767E8;
  if (!qword_1EC0767E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0767E8);
  }

  return result;
}

unint64_t sub_1C2F2B014()
{
  result = qword_1EC0767F0;
  if (!qword_1EC0767F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0767F0);
  }

  return result;
}

uint64_t ActivitySymbol.BundleType.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t ActivitySymbol.BundleType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC0767F8, &qword_1C2F7A868);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076800, &qword_1C2F7A870);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076808, &qword_1C2F7A878);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F2AF6C();
  v13 = v31;
  sub_1C2F7701C();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1C2F76E2C();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1C2F76CAC();
    swift_allocError();
    v21 = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076810, &qword_1C2F7A880);
    *v21 = &type metadata for ActivitySymbol.BundleType;
    sub_1C2F76DAC();
    sub_1C2F76C9C();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1C2F2AFC0();
    sub_1C2F76D9C();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1C2F2B014();
    sub_1C2F76D9C();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t sub_1C2F2B530()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
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

unint64_t ActivitySymbol.Animation.description.getter()
{
  v1 = 0x74496C6F626D7973;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_1C2F2B60C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C2F2D96C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C2F2B634(uint64_t a1)
{
  v2 = sub_1C2F2BB80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2B670(uint64_t a1)
{
  v2 = sub_1C2F2BB80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F2B6AC(uint64_t a1)
{
  v2 = sub_1C2F2BC7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2B6E8(uint64_t a1)
{
  v2 = sub_1C2F2BC7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F2B724(uint64_t a1)
{
  v2 = sub_1C2F2BBD4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2B760(uint64_t a1)
{
  v2 = sub_1C2F2BBD4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C2F2B79C(uint64_t a1)
{
  v2 = sub_1C2F2BC28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2B7D8(uint64_t a1)
{
  v2 = sub_1C2F2BC28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySymbol.Animation.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076818, &qword_1C2F7A888);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076820, &qword_1C2F7A890);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076828, &qword_1C2F7A898);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076830, &qword_1C2F7A8A0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F2BB80();
  sub_1C2F7702C();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1C2F2BC28();
      v9 = v21;
      sub_1C2F76E3C();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1C2F2BBD4();
      v9 = v24;
      sub_1C2F76E3C();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1C2F2BC7C();
    sub_1C2F76E3C();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1C2F2BB80()
{
  result = qword_1EC076838;
  if (!qword_1EC076838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076838);
  }

  return result;
}

unint64_t sub_1C2F2BBD4()
{
  result = qword_1EC076840;
  if (!qword_1EC076840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076840);
  }

  return result;
}

unint64_t sub_1C2F2BC28()
{
  result = qword_1EC076848;
  if (!qword_1EC076848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076848);
  }

  return result;
}

unint64_t sub_1C2F2BC7C()
{
  result = qword_1EC076850;
  if (!qword_1EC076850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076850);
  }

  return result;
}

uint64_t ActivitySymbol.Animation.hashValue.getter()
{
  v1 = *v0;
  sub_1C2F76F9C();
  MEMORY[0x1C6929580](v1);
  return sub_1C2F76FDC();
}

uint64_t ActivitySymbol.Animation.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v39 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076858, &qword_1C2F7A8A8);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v41 = &v32 - v4;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076860, &qword_1C2F7A8B0);
  v35 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v6 = &v32 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076868, &qword_1C2F7A8B8);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v32 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076870, &qword_1C2F7A8C0);
  v42 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v32 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F2BB80();
  v13 = v43;
  sub_1C2F7701C();
  if (v13)
  {
    goto LABEL_10;
  }

  v33 = v7;
  v34 = 0;
  v14 = v40;
  v15 = v41;
  v43 = a1;
  v16 = v12;
  v17 = sub_1C2F76E2C();
  v18 = *(v17 + 16);
  if (v18)
  {
    v19 = *(v17 + 32);
    if (v18 == 1 && v19 != 3)
    {
      if (*(v17 + 32))
      {
        v40 = v17;
        v26 = v42;
        if (v19 == 1)
        {
          v45 = 1;
          sub_1C2F2BC28();
          v27 = v34;
          sub_1C2F76D9C();
          v28 = v39;
          if (v27)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v35 + 8))(v6, v38);
          (*(v26 + 8))(v16, v10);
        }

        else
        {
          v46 = 2;
          sub_1C2F2BBD4();
          v31 = v34;
          sub_1C2F76D9C();
          v28 = v39;
          if (v31)
          {
            (*(v26 + 8))(v16, v10);
            goto LABEL_9;
          }

          (*(v36 + 8))(v15, v37);
          (*(v26 + 8))(v16, v10);
        }

        swift_unknownObjectRelease();
      }

      else
      {
        v44 = 0;
        sub_1C2F2BC7C();
        v29 = v34;
        sub_1C2F76D9C();
        v30 = v42;
        if (v29)
        {
          (*(v42 + 8))(v12, v10);
          goto LABEL_9;
        }

        (*(v14 + 8))(v9, v33);
        (*(v30 + 8))(v12, v10);
        swift_unknownObjectRelease();
        v28 = v39;
      }

      *v28 = v19;
      v24 = v43;
      return __swift_destroy_boxed_opaque_existential_1Tm(v24);
    }
  }

  v21 = sub_1C2F76CAC();
  swift_allocError();
  v23 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076810, &qword_1C2F7A880);
  *v23 = &type metadata for ActivitySymbol.Animation;
  sub_1C2F76DAC();
  sub_1C2F76C9C();
  (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
  swift_willThrow();
  (*(v42 + 8))(v12, v10);
LABEL_9:
  swift_unknownObjectRelease();
  a1 = v43;
LABEL_10:
  v24 = a1;
  return __swift_destroy_boxed_opaque_existential_1Tm(v24);
}

uint64_t static ActivitySymbol.system(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
}

CommunicationsUICore::ActivitySymbol __swiftcall ActivitySymbol.init(_:bundle:animation:)(CommunicationsUICore::ActivitySymbol _, CommunicationsUICore::ActivitySymbol::BundleType bundle, CommunicationsUICore::ActivitySymbol::Animation animation)
{
  v4 = *bundle;
  v5 = *animation;
  *v3 = _.name;
  *(v3 + 16) = v4;
  *(v3 + 17) = v5;
  _.bundle = bundle;
  return _;
}

uint64_t ActivitySymbol.name.getter()
{
  v1 = *v0;

  return v1;
}

CommunicationsUICore::ActivitySymbol __swiftcall ActivitySymbol.init(stringLiteral:)(CommunicationsUICore::ActivitySymbol stringLiteral)
{
  *v1 = stringLiteral.name;
  *(v1 + 16) = 0;
  return stringLiteral;
}

uint64_t sub_1C2F2C3B4()
{
  v1 = 0x656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x6F6974616D696E61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1C2F2C408@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1C2F2DA94(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1C2F2C430(uint64_t a1)
{
  v2 = sub_1C2F2CCD8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C2F2C46C(uint64_t a1)
{
  v2 = sub_1C2F2CCD8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivitySymbol.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076878, &qword_1C2F7A8C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - v6;
  v8 = *(v1 + 16);
  v16 = *(v1 + 17);
  v17 = v8;
  v9 = a1[3];
  v10 = a1;
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(v10, v9);
  sub_1C2F2CCD8();
  sub_1C2F7702C();
  v22 = 0;
  sub_1C2F76E6C();
  if (!v2)
  {
    v13 = v16;
    v21 = v17;
    v20 = 1;
    sub_1C2F2CD2C();
    sub_1C2F76E9C();
    v19 = v13;
    v18 = 2;
    sub_1C2F2CD80();
    sub_1C2F76E9C();
  }

  return (*(v5 + 8))(v7, v12);
}

uint64_t ActivitySymbol.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v2);
  return MEMORY[0x1C6929580](v3);
}

uint64_t ActivitySymbol.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v1);
  MEMORY[0x1C6929580](v2);
  return sub_1C2F76FDC();
}

uint64_t ActivitySymbol.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076898, &qword_1C2F7A8D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1C2F2CCD8();
  sub_1C2F7701C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = 0;
  v9 = sub_1C2F76DDC();
  v11 = v10;
  v12 = v9;
  v19 = 1;
  sub_1C2F2CDD4();
  sub_1C2F76E0C();
  v16 = v20;
  v17 = 2;
  sub_1C2F2CE28();
  sub_1C2F76E0C();
  (*(v6 + 8))(v8, v5);
  v13 = v18;
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v16;
  *(a2 + 17) = v13;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1C2F2C9D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 17);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v1);
  MEMORY[0x1C6929580](v2);
  return sub_1C2F76FDC();
}

uint64_t sub_1C2F2CA54(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v2);
  return MEMORY[0x1C6929580](v3);
}

uint64_t sub_1C2F2CAA0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 17);
  sub_1C2F76F9C();
  sub_1C2F7673C();
  MEMORY[0x1C6929580](v2);
  MEMORY[0x1C6929580](v3);
  return sub_1C2F76FDC();
}

uint64_t ActivitySymbol.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 17);
  if (*(v0 + 16))
  {
    v4 = 0xD000000000000010;
  }

  else
  {
    v4 = 0x6D6574737973;
  }

  if (*(v0 + 16))
  {
    v5 = 0x80000001C2F7EFB0;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  MEMORY[0x1C6928D30](v4, v5);

  MEMORY[0x1C6928D30](95, 0xE100000000000000);
  MEMORY[0x1C6928D30](v1, v2);
  MEMORY[0x1C6928D30](95, 0xE100000000000000);
  v6 = 0xEF65766974617265;
  v7 = 0x74496C6F626D7973;
  if (v3 != 1)
  {
    v7 = 0xD000000000000010;
    v6 = 0x80000001C2F7F000;
  }

  if (v3)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1701736302;
  }

  if (v3)
  {
    v9 = v6;
  }

  else
  {
    v9 = 0xE400000000000000;
  }

  MEMORY[0x1C6928D30](v8, v9);

  return 0;
}

BOOL _s20CommunicationsUICore14ActivitySymbolV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 17);
  v4 = *(a2 + 16);
  v5 = *(a2 + 17);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    if (v2 != v4)
    {
      return 0;
    }

    return v3 == v5;
  }

  v7 = sub_1C2F76EFC();
  result = 0;
  if ((v7 & 1) != 0 && ((v2 ^ v4) & 1) == 0)
  {
    return v3 == v5;
  }

  return result;
}

unint64_t sub_1C2F2CCD8()
{
  result = qword_1EC076880;
  if (!qword_1EC076880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076880);
  }

  return result;
}

unint64_t sub_1C2F2CD2C()
{
  result = qword_1EC076888;
  if (!qword_1EC076888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076888);
  }

  return result;
}

unint64_t sub_1C2F2CD80()
{
  result = qword_1EC076890;
  if (!qword_1EC076890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076890);
  }

  return result;
}

unint64_t sub_1C2F2CDD4()
{
  result = qword_1EC0768A0;
  if (!qword_1EC0768A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768A0);
  }

  return result;
}

unint64_t sub_1C2F2CE28()
{
  result = qword_1EC0768A8;
  if (!qword_1EC0768A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768A8);
  }

  return result;
}

unint64_t sub_1C2F2CE80()
{
  result = qword_1EC0768B0;
  if (!qword_1EC0768B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768B0);
  }

  return result;
}

unint64_t sub_1C2F2CED8()
{
  result = qword_1EC0768B8;
  if (!qword_1EC0768B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768B8);
  }

  return result;
}

unint64_t sub_1C2F2CF30()
{
  result = qword_1EC0768C0;
  if (!qword_1EC0768C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768C0);
  }

  return result;
}

unint64_t sub_1C2F2CF94()
{
  result = qword_1EC0768C8;
  if (!qword_1EC0768C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768C8);
  }

  return result;
}

unint64_t sub_1C2F2CFEC()
{
  result = qword_1EC0768D0;
  if (!qword_1EC0768D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768D0);
  }

  return result;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1C2F2D06C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1C2F2D0B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FTMenuItem.SecondaryViewPresentationStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FTMenuItem.SecondaryViewPresentationStyle(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1C2F2D2E8()
{
  result = qword_1EC0768D8;
  if (!qword_1EC0768D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768D8);
  }

  return result;
}

unint64_t sub_1C2F2D340()
{
  result = qword_1EC0768E0;
  if (!qword_1EC0768E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768E0);
  }

  return result;
}

unint64_t sub_1C2F2D398()
{
  result = qword_1EC0768E8;
  if (!qword_1EC0768E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768E8);
  }

  return result;
}

unint64_t sub_1C2F2D3F0()
{
  result = qword_1EC0768F0;
  if (!qword_1EC0768F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768F0);
  }

  return result;
}

unint64_t sub_1C2F2D448()
{
  result = qword_1EC0768F8;
  if (!qword_1EC0768F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0768F8);
  }

  return result;
}

unint64_t sub_1C2F2D4A0()
{
  result = qword_1EC076900;
  if (!qword_1EC076900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076900);
  }

  return result;
}

unint64_t sub_1C2F2D4F8()
{
  result = qword_1EC076908;
  if (!qword_1EC076908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076908);
  }

  return result;
}

unint64_t sub_1C2F2D550()
{
  result = qword_1EC076910;
  if (!qword_1EC076910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076910);
  }

  return result;
}

unint64_t sub_1C2F2D5A8()
{
  result = qword_1EC076918;
  if (!qword_1EC076918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076918);
  }

  return result;
}

unint64_t sub_1C2F2D600()
{
  result = qword_1EC076920;
  if (!qword_1EC076920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076920);
  }

  return result;
}

unint64_t sub_1C2F2D658()
{
  result = qword_1EC076928;
  if (!qword_1EC076928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076928);
  }

  return result;
}

unint64_t sub_1C2F2D6B0()
{
  result = qword_1EC076930;
  if (!qword_1EC076930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076930);
  }

  return result;
}

unint64_t sub_1C2F2D708()
{
  result = qword_1EC076938;
  if (!qword_1EC076938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076938);
  }

  return result;
}

unint64_t sub_1C2F2D760()
{
  result = qword_1EC076940;
  if (!qword_1EC076940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076940);
  }

  return result;
}

unint64_t sub_1C2F2D7B8()
{
  result = qword_1EC076948;
  if (!qword_1EC076948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076948);
  }

  return result;
}

unint64_t sub_1C2F2D810()
{
  result = qword_1EC076950;
  if (!qword_1EC076950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076950);
  }

  return result;
}

unint64_t sub_1C2F2D868()
{
  result = qword_1EC076958;
  if (!qword_1EC076958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076958);
  }

  return result;
}

unint64_t sub_1C2F2D8C0()
{
  result = qword_1EC076960;
  if (!qword_1EC076960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076960);
  }

  return result;
}

unint64_t sub_1C2F2D918()
{
  result = qword_1EC076968;
  if (!qword_1EC076968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076968);
  }

  return result;
}

uint64_t sub_1C2F2D96C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74496C6F626D7973 && a2 == 0xEF65766974617265 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001C2F7F000 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C2F76EFC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1C2F2DA94(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C646E7562 && a2 == 0xE600000000000000 || (sub_1C2F76EFC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F6974616D696E61 && a2 == 0xE90000000000006ELL)
  {

    return 2;
  }

  else
  {
    v6 = sub_1C2F76EFC();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t static CallCenterFacade.shared.getter()
{
  if (qword_1EDEBDA50 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1C2F2DC3C()
{
  v0 = [objc_opt_self() sharedInstance];
  type metadata accessor for CallCenterFacade();
  result = swift_allocObject();
  *(result + 16) = v0;
  off_1EDEBDA58 = result;
  return result;
}

uint64_t CallCenterFacade.call(with:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = sub_1C2F766AC();
  v5 = [v3 callWithUniqueProxyIdentifier_];

  if (!v5)
  {
    return 0;
  }

  type metadata accessor for CallFacade();
  v6 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  v7 = v5;
  v8 = [v7 uniqueProxyIdentifier];
  v9 = sub_1C2F766CC();
  v11 = v10;

  result = v6;
  *(v6 + 24) = v9;
  *(v6 + 32) = v11;
  return result;
}

uint64_t CallCenterFacade.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t CallFacade.uniqueProxyIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t CallFacade.deinit()
{
  MEMORY[0x1C6929F80](v0 + 16);

  return v0;
}

uint64_t CallFacade.__deallocating_deinit()
{
  MEMORY[0x1C6929F80](v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F2DEFC(uint64_t a1, unint64_t *a2, void *a3)
{
  v6 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = sub_1C2F76B6C();
    v9 = v8;
    v10 = sub_1C2F76BEC();
    v12 = v11;
    v13 = MEMORY[0x1C6929160](v7, v9, v10, v11);
    sub_1C2F2FFB4(v10, v12, 1);
    if (v13)
    {
LABEL_3:
      sub_1C2F2FFB4(v7, v9, v6 != 0);
      return 0;
    }
  }

  else
  {
    v7 = sub_1C2F76B4C();
    v9 = *(a1 + 36);
    if (v7 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_1C2F2FCDC(v7, v9, v6 != 0, a1, a2, a3);
  v16 = v15;
  sub_1C2F2FFB4(v7, v9, v6 != 0);
  return v16;
}

uint64_t sub_1C2F2E030@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1C2F76B4C();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_1C2F2FEF4(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_1C2F75FCC();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void *FTMenuItemStateProvider.__allocating_init(call:callCenter:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v4[3] = a1;
  v4[4] = a2;
  v4[5] = 0;
  return v4;
}

void *FTMenuItemStateProvider.init(call:callCenter:)(uint64_t a1, uint64_t a2)
{
  v2[2] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v2[3] = a1;
  v2[4] = a2;
  v2[5] = 0;
  return v2;
}

uint64_t FTMenuItemStateProvider.uniqueProxyIdentifier.getter()
{
  v1 = *(*(v0 + 24) + 24);

  return v1;
}

uint64_t FTMenuItemStateProvider.addPeopleAllowed.getter()
{
  v1 = v0;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    goto LABEL_16;
  }

  v3 = Strong;
  if ([Strong callStatus]!= 1 && [v3 callStatus]!= 2)
  {

LABEL_16:
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v17 = sub_1C2F761FC();
    __swift_project_value_buffer(v17, qword_1EDEBDA78);

    v3 = sub_1C2F761DC();
    v18 = sub_1C2F769EC();

    if (os_log_type_enabled(v3, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v67 = v20;
      *v19 = 136315138;
      v21 = swift_unknownObjectWeakLoadStrong();
      if (v21)
      {
        v22 = v21;
        [v21 callStatus];

        type metadata accessor for TUCallStatus(0);
        v23 = sub_1C2F7670C();
        v25 = v24;
      }

      else
      {
        v23 = 7104878;
        v25 = 0xE300000000000000;
      }

      v38 = sub_1C2EFAB28(v23, v25, &v67);

      *(v19 + 4) = v38;
      _os_log_impl(&dword_1C2EF2000, v3, v18, "addPeopleAllowed is false because call is nil or call status is %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1C6929E80](v20, -1, -1);
      MEMORY[0x1C6929E80](v19, -1, -1);
    }

    goto LABEL_63;
  }

  v4 = [v3 provider];
  v5 = [v4 isFaceTimeProvider];

  if ((v5 & 1) == 0)
  {
    v6 = [v3 provider];
    v7 = [v6 isTelephonyProvider];

    if (!v7)
    {
      if (qword_1EDEBC5B8 != -1)
      {
        swift_once();
      }

      v29 = sub_1C2F761FC();
      __swift_project_value_buffer(v29, qword_1EDEBDA78);
      v3 = v3;
      v30 = sub_1C2F761DC();
      v31 = sub_1C2F769EC();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 67109376;
        v33 = [v3 provider];
        v34 = [v33 isFaceTimeProvider];

        *(v32 + 4) = v34;
        *(v32 + 8) = 1024;
        v35 = [v3 provider];
        v36 = [v35 isTelephonyProvider];

        *(v32 + 10) = v36;
        _os_log_impl(&dword_1C2EF2000, v30, v31, "addPeopleAllowed is false because it is a third party call. (isFTProvider=%{BOOL}d, isTelephonyProvider=%{BOOL}d", v32, 0xEu);
        v37 = v32;
LABEL_62:
        MEMORY[0x1C6929E80](v37, -1, -1);

        goto LABEL_63;
      }

      goto LABEL_54;
    }
  }

  if (([v3 isVideo]& 1) == 0)
  {
    v8 = *(v1 + 32);
    if (([*(v8 + 16) isAddCallAllowed] & 1) == 0)
    {
      if (qword_1EDEBC5B8 != -1)
      {
        swift_once();
      }

      v39 = sub_1C2F761FC();
      __swift_project_value_buffer(v39, qword_1EDEBDA78);
      v3 = v3;

      v30 = sub_1C2F761DC();
      v40 = sub_1C2F769EC();
      if (!os_log_type_enabled(v30, v40))
      {

LABEL_64:
        v16 = 0;
        return v16 & 1;
      }

      v41 = swift_slowAlloc();
      *v41 = 67109376;
      *(v41 + 4) = [v3 isVideo];

      *(v41 + 8) = 1024;
      *(v41 + 10) = [*(v8 + 16) &selRef_isRecommended + 2];

      _os_log_impl(&dword_1C2EF2000, v30, v40, "addPeopleAllowed is false because call is either video %{BOOL}d or call is not allowed to add people %{BOOL}d.", v41, 0xEu);
      goto LABEL_61;
    }
  }

  v9 = [v3 provider];
  v10 = [v9 isTelephonyProvider];

  if (!v10)
  {
    if ([v3 isConversation])
    {
      v26 = [v3 remoteParticipantHandles];
      sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
      sub_1C2F2FA98();
      v27 = sub_1C2F7697C();

      v28 = (v27 & 0xC000000000000001) != 0 ? sub_1C2F76BBC() : *(v27 + 16);

      if (v28 == 1)
      {
        v42 = swift_unknownObjectWeakLoadStrong();
        if (v42)
        {
          v43 = v42;
          v44 = [*(*(v1 + 32) + 16) activeConversationForCall_];

          if (v44)
          {
            if ([v44 state] == 3)
            {
              v45 = objc_opt_self();
              if ([v45 supportsConversations])
              {
                if ([*(v1 + 16) oneToOneFaceTimeMyselfEnabled] && objc_msgSend(v44, sel_state) == 3 && objc_msgSend(v44, sel_isOneToOneFaceTimeMyself))
                {
                  if (qword_1EDEBC5B8 != -1)
                  {
                    swift_once();
                  }

                  v46 = sub_1C2F761FC();
                  __swift_project_value_buffer(v46, qword_1EDEBDA78);
                  v47 = sub_1C2F761DC();
                  v48 = sub_1C2F769EC();
                  if (!os_log_type_enabled(v47, v48))
                  {
                    goto LABEL_71;
                  }

                  v49 = swift_slowAlloc();
                  *v49 = 0;
                  v50 = "addPeopleAllowed is false because it's isOneToOneFaceTimeMyself";
                }

                else
                {
                  if ([v44 avMode] != 1 || (objc_msgSend(v44, sel_isBackedByGroupSession) & 1) != 0)
                  {
                    v16 = [v45 isAddPersonEnabled];

                    return v16 & 1;
                  }

                  if (qword_1EDEBC5B8 != -1)
                  {
                    swift_once();
                  }

                  v66 = sub_1C2F761FC();
                  __swift_project_value_buffer(v66, qword_1EDEBDA78);
                  v47 = sub_1C2F761DC();
                  v48 = sub_1C2F769EC();
                  if (!os_log_type_enabled(v47, v48))
                  {
                    goto LABEL_71;
                  }

                  v49 = swift_slowAlloc();
                  *v49 = 0;
                  v50 = "addPeopleAllowed is false because this is legacy audio call";
                }
              }

              else
              {
                if (qword_1EDEBC5B8 != -1)
                {
                  swift_once();
                }

                v65 = sub_1C2F761FC();
                __swift_project_value_buffer(v65, qword_1EDEBDA78);
                v47 = sub_1C2F761DC();
                v48 = sub_1C2F769EC();
                if (!os_log_type_enabled(v47, v48))
                {
                  goto LABEL_71;
                }

                v49 = swift_slowAlloc();
                *v49 = 0;
                v50 = "addPeopleAllowed is false because conversations aren't supported";
              }

              _os_log_impl(&dword_1C2EF2000, v47, v48, v50, v49, 2u);
              MEMORY[0x1C6929E80](v49, -1, -1);
LABEL_71:

              goto LABEL_63;
            }
          }
        }
      }
    }

    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v51 = sub_1C2F761FC();
    __swift_project_value_buffer(v51, qword_1EDEBDA78);
    v3 = v3;

    v30 = sub_1C2F761DC();
    v52 = sub_1C2F769EC();

    if (os_log_type_enabled(v30, v52))
    {
      v41 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v67 = v53;
      *v41 = 67109634;
      *(v41 + 4) = [v3 isConversation];
      *(v41 + 8) = 2048;
      v54 = [v3 remoteParticipantHandles];
      sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00);
      sub_1C2F2FA98();
      v55 = sub_1C2F7697C();

      if ((v55 & 0xC000000000000001) != 0)
      {
        v56 = sub_1C2F76BBC();
      }

      else
      {
        v56 = *(v55 + 16);
      }

      v57 = 7104878;

      *(v41 + 10) = v56;

      *(v41 + 18) = 2080;
      v58 = swift_unknownObjectWeakLoadStrong();
      if (v58 && (v59 = v58, v60 = [*(*(v1 + 32) + 16) activeConversationForCall_], v59, v60))
      {
        [v60 state];

        type metadata accessor for TUConversationState(0);
        v57 = sub_1C2F7670C();
        v62 = v61;
      }

      else
      {
        v62 = 0xE300000000000000;
      }

      v63 = sub_1C2EFAB28(v57, v62, &v67);

      *(v41 + 20) = v63;
      _os_log_impl(&dword_1C2EF2000, v30, v52, "addPeopleAllowed is false. isConversation=%{BOOL}d, remoteParticipantHandlesCount=%ld, conversationState=%s", v41, 0x1Cu);
      __swift_destroy_boxed_opaque_existential_1Tm(v53);
      MEMORY[0x1C6929E80](v53, -1, -1);
LABEL_61:
      v37 = v41;
      goto LABEL_62;
    }

LABEL_54:

LABEL_63:
    goto LABEL_64;
  }

  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v11 = sub_1C2F761FC();
  __swift_project_value_buffer(v11, qword_1EDEBDA78);
  v12 = sub_1C2F761DC();
  v13 = sub_1C2F769EC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1C2EF2000, v12, v13, "addPeople is telephony call. Checking if in lost mode or runnining setup assistant", v14, 2u);
    MEMORY[0x1C6929E80](v14, -1, -1);
  }

  type metadata accessor for DeviceConditions();
  swift_initStaticObject();
  if (DeviceConditions.isInLostMode.getter())
  {
    goto LABEL_63;
  }

  v15 = DeviceConditions.isSetupAssistantRunning.getter();

  v16 = v15 ^ 1;
  return v16 & 1;
}

uint64_t FTMenuItemStateProvider.viewContactCardAllowed.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && ((v1 = Strong, v2 = [Strong remoteParticipantHandles], v1, sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00), sub_1C2F2FA98(), v3 = sub_1C2F7697C(), v2, (v3 & 0xC000000000000001) == 0) ? (v4 = *(v3 + 16)) : (v4 = sub_1C2F76BBC()), (, v4 == 1) && (v5 = swift_unknownObjectWeakLoadStrong()) != 0 && (v6 = v5, v7 = objc_msgSend(v5, sel_provider), v6, LODWORD(v6) = objc_msgSend(v7, sel_isSystemProvider), v7, v6)))
  {
    v8 = FTMenuItemStateProvider.isGroupOrConferenceCall.getter() ^ 1;
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t FTMenuItemStateProvider.isGroupOrConferenceCall.getter()
{
  v1 = *(v0 + 32);
  v2 = [*(v1 + 16) frontmostCall];
  if (v2 && (v3 = v2, v4 = [v2 isConversation], v3, v4) && (v5 = objc_msgSend(*(v1 + 16), sel_frontmostCall)) != 0 && ((v6 = v5, v7 = objc_msgSend(v5, sel_remoteParticipantHandles), v6, sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00), sub_1C2F2FA98(), v8 = sub_1C2F7697C(), v7, (v8 & 0xC000000000000001) == 0) ? (v9 = *(v8 + 16)) : (v9 = sub_1C2F76BBC()), (, v9 > 1) && (v10 = objc_msgSend(*(v1 + 16), sel_frontmostCall)) != 0))
  {
    v11 = v10;
    v12 = [v10 provider];

    v13 = [v12 isTelephonyProvider];
  }

  else
  {
    v13 = 0;
  }

  if ([*(v1 + 16) currentCallCount] < 1)
  {
    return v13 != 0;
  }

  v14 = [*(v1 + 16) currentAudioAndVideoCallGroups];
  sub_1C2EF5A14(0, &qword_1EC076970, 0x1E69D8A70);
  v15 = sub_1C2F767EC();

  if (v15 >> 62)
  {
    result = sub_1C2F76BBC();
    if (result)
    {
      goto LABEL_14;
    }

LABEL_23:

    return v13 != 0;
  }

  result = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_23;
  }

LABEL_14:
  if ((v15 & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1C6929250](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v17 = *(v15 + 32);
  }

  v18 = v17;

  v19 = [v18 calls];

  sub_1C2EF5A14(0, &qword_1EC0760C0, 0x1E69D8A40);
  v20 = sub_1C2F767EC();

  if (v20 >> 62)
  {
    v21 = sub_1C2F76BBC();
  }

  else
  {
    v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v21 >= 2)
  {
    v22 = [*(v1 + 16) isAmbiguous];
    if ((v13 & 1) == 0)
    {
      return v22 ^ 1;
    }

    return 1;
  }

  return v13 != 0;
}

uint64_t FTMenuItemStateProvider.viewContactCardIcon.getter@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076458, &unk_1C2F7B430);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v31 - v6;
  v8 = sub_1C2F75A5C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = [Strong imageURL];

    if (v14)
    {
      sub_1C2F75A3C();

      (*(v9 + 56))(v5, 0, 1, v8);
    }

    else
    {
      (*(v9 + 56))(v5, 1, 1, v8);
    }

    sub_1C2F2FB68(v5, v7);
    if ((*(v9 + 48))(v7, 1, v8) != 1)
    {
      v30 = *(v9 + 32);
      v30(v11, v7, v8);
      v30(a1, v11, v8);
      v27 = type metadata accessor for FTMenuItem.IconType(0);
      goto LABEL_12;
    }
  }

  else
  {
    (*(v9 + 56))(v7, 1, 1, v8);
  }

  sub_1C2F2FB00(v7);
  v15 = swift_unknownObjectWeakLoadStrong();
  if (!v15 || (v16 = v15, v17 = [v15 remoteParticipantHandles], v16, sub_1C2EF5A14(0, &qword_1EC076000, 0x1E69D8C00), sub_1C2F2FA98(), v18 = sub_1C2F7697C(), v17, v19 = sub_1C2F2DEFC(v18, &qword_1EC076000, 0x1E69D8C00), , !v19))
  {
    v28 = type metadata accessor for FTMenuItem.IconType(0);
    return (*(*(v28 - 8) + 56))(a1, 1, 1, v28);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076E20, &qword_1C2F79BB0);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C2F78B90;
  v21 = [v19 value];
  v22 = sub_1C2F766CC();
  v24 = v23;

  *(v20 + 32) = v22;
  *(v20 + 40) = v24;
  v25 = sub_1C2F767DC();

  v26 = [objc_opt_self() contactWithDisplayName:0 handleStrings:v25];

  *a1 = v26;
  v27 = type metadata accessor for FTMenuItem.IconType(0);
LABEL_12:
  swift_storeEnumTagMultiPayload();
  return (*(*(v27 - 8) + 56))(a1, 0, 1, v27);
}

void *FTMenuItemStateProvider.shouldViewCallDetails.getter()
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    v2 = [result isVideo];

    if (v2)
    {
      return 0;
    }

    else
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v3 = result;
        v4 = [result provider];

        LODWORD(v3) = [v4 isTelephonyProvider];
        return (v3 ^ 1);
      }
    }
  }

  return result;
}

id FTMenuItemStateProvider.callRecordingAllowed.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong isVideo])
    {
      if (![*(v0 + 16) enhancedCallRecordingEnabled])
      {
        v4 = 0;
        goto LABEL_9;
      }

      v3 = &selRef_isPodcastRecordingAllowed;
    }

    else
    {
      v3 = &selRef_isRecordingAllowed;
    }

    v4 = [v2 *v3];
LABEL_9:

    return v4;
  }

  return 0;
}

id FTMenuItemStateProvider.isCallRecordingActive.getter()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if ([Strong isVideo])
    {
      if (![*(v0 + 16) enhancedCallRecordingEnabled])
      {
        v4 = 0;
        goto LABEL_9;
      }

      v3 = &selRef_isRecordingPodcast;
    }

    else
    {
      v3 = &selRef_isRecording;
    }

    v4 = [v2 *v3];
LABEL_9:

    return v4;
  }

  return 0;
}

id FTMenuItemStateProvider.waitOnHoldAllowed.getter()
{
  result = [*(v0 + 16) waitOnHoldEnabled];
  if (result)
  {
    sub_1C2F2F804();
    v2 = sub_1C2F7600C();

    if ((v2 & 1) != 0 && [*(*(v0 + 32) + 16) currentAudioAndVideoCallCount] == 1)
    {
      result = swift_unknownObjectWeakLoadStrong();
      if (result)
      {
        v3 = result;
        v4 = [result smartHoldingAvailability];

        return (v4 == 1);
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C2F2F804()
{
  if (*(v0 + 40))
  {
    v1 = *(v0 + 40);
  }

  else
  {
    sub_1C2F7602C();
    v1 = sub_1C2F7601C();
    *(v0 + 40) = v1;
  }

  return v1;
}

uint64_t FTMenuItemStateProvider.deinit()
{

  return v0;
}

uint64_t FTMenuItemStateProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F2F8F4()
{
  v1 = *(*(*v0 + 24) + 24);

  return v1;
}

uint64_t sub_1C2F2FA68@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t sub_1C2F2FA98()
{
  result = qword_1EC076008;
  if (!qword_1EC076008)
  {
    sub_1C2EF5A14(255, &qword_1EC076000, 0x1E69D8C00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076008);
  }

  return result;
}

uint64_t sub_1C2F2FB00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076458, &unk_1C2F7B430);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C2F2FB68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076458, &unk_1C2F7B430);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1C2F2FCDC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1C69291A0](a1, a2, v11);
      sub_1C2EF5A14(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1C2EF5A14(0, a5, a6);
    if (sub_1C2F76B9C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1C2F76BAC();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_1C2F76A9C();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_1C2F76AAC();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t sub_1C2F2FEF4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1C2F75FCC();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

uint64_t sub_1C2F2FFB4(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

void sub_1C2F2FFC0()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed;
  if ((v0[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed] & 1) == 0)
  {
    v2 = v0;
    v3 = *&v0[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName];
    v4 = *&v0[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName + 8];
    sub_1C2F0CA5C();
    v5 = sub_1C2F76A2C();
    v6 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v16[4] = sub_1C2F305C0;
    v16[5] = v6;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1C2F44230;
    v16[3] = &block_descriptor_4;
    v7 = _Block_copy(v16);

    v8 = sub_1C2F7672C();
    v9 = OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_token;
    swift_beginAccess();
    LODWORD(v9) = notify_register_dispatch((v8 + 32), &v2[v9], v5, v7);
    swift_endAccess();

    _Block_release(v7);

    if (v9)
    {
      if (qword_1EC075C88 != -1)
      {
        swift_once();
      }

      v10 = sub_1C2F761FC();
      __swift_project_value_buffer(v10, qword_1EC076978);
      v11 = v2;
      v12 = sub_1C2F761DC();
      v13 = sub_1C2F769DC();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v16[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = sub_1C2EFAB28(v3, v4, v16);
        _os_log_impl(&dword_1C2EF2000, v12, v13, "Failed to observe %s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v15);
        MEMORY[0x1C6929E80](v15, -1, -1);
        MEMORY[0x1C6929E80](v14, -1, -1);
      }
    }

    else
    {
      v2[v1] = 1;
    }
  }
}

id sub_1C2F3023C()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed;
  if (v0[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_hasSubscribed] == 1)
  {
    v3 = OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_token;
    swift_beginAccess();
    notify_cancel(*&v0[v3]);
    v0[v2] = 0;
  }

  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_dealloc);
}

void *sub_1C2F303B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v3 = result;
    if (qword_1EC075C88 != -1)
    {
      swift_once();
    }

    v4 = sub_1C2F761FC();
    __swift_project_value_buffer(v4, qword_1EC076978);
    v5 = v3;
    v6 = sub_1C2F761DC();
    v7 = sub_1C2F769CC();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v15 = v9;
      *v8 = 136315138;
      v10 = *&v5[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName];
      v11 = *&v5[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_notificationName + 8];

      v12 = sub_1C2EFAB28(v10, v11, &v15);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1C2EF2000, v6, v7, "%s has notified", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1C6929E80](v9, -1, -1);
      MEMORY[0x1C6929E80](v8, -1, -1);
    }

    v13 = *&v5[OBJC_IVAR____TtC20CommunicationsUICore25DarwinNotificationWrapper_handler];

    v13(v14);
  }

  return result;
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1C2F305E0()
{
  v0 = sub_1C2F761FC();
  __swift_allocate_value_buffer(v0, qword_1EC076978);
  __swift_project_value_buffer(v0, qword_1EC076978);
  return sub_1C2F761EC();
}

BOOL sub_1C2F30670(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(a1, a3);
  v6 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(a1, a3);
  if (v7)
  {
    MEMORY[0x1C6928D30](v6);

    MEMORY[0x1C6928D30](32, 0xE100000000000000);
  }

  _s20CommunicationsUICore19LanguageDisplayNameV4list_2inSSSg10Foundation6LocaleV_AItFZ_0(a2, a3);
  v8 = _s20CommunicationsUICore19LanguageDisplayNameV11listSubname_2inSSSg10Foundation6LocaleV_AItFZ_0(a2, a3);
  if (v9)
  {
    MEMORY[0x1C6928D30](v8);

    MEMORY[0x1C6928D30](32, 0xE100000000000000);
  }

  sub_1C2EF66C8();
  v10 = sub_1C2F76B0C();

  return v10 == -1;
}

uint64_t AudioMuteService.isMuted.getter()
{

  sub_1C2F7628C();

  return v1;
}

uint64_t AudioMuteService.mutePublisher.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E08, &unk_1C2F7A1C0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_muteSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8, MEMORY[0x1E695BFB0]);
  sub_1C2F7630C();
  sub_1C2EF7414(&unk_1EDEBC598, &unk_1EC075E08, &unk_1C2F7A1C0, MEMORY[0x1E695BD38]);
  v5 = sub_1C2F762AC();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t AudioMuteService.__allocating_init(call:)(uint64_t a1)
{
  v2 = [objc_opt_self() defaultCenter];
  v12 = type metadata accessor for CallFacade();
  v13 = &off_1F42B4598;
  v11[0] = a1;
  v3 = swift_allocObject();
  v4 = __swift_mutable_project_boxed_opaque_existential_1(v11, v12);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (&v11[-1] - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v7 + 16))(v6);
  v8 = sub_1C2F3136C(v2, *v6, v3);

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v8;
}

Swift::Void __swiftcall AudioMuteService.setMute(to:)(Swift::Bool to)
{
  v2 = v1;

  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17[0] = v7;
    *v6 = 136315394;
    v8 = (v2 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_call);
    swift_beginAccess();
    v9 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
    v10 = *(*v9 + 24);
    v11 = *(*v9 + 32);

    v12 = sub_1C2EFAB28(v10, v11, v17);

    *(v6 + 4) = v12;
    *(v6 + 12) = 1024;
    *(v6 + 14) = to;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "tell TUCalI: %s to update isUplinkMuted to %{BOOL}d", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1C6929E80](v7, -1, -1);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  v13 = to;
  LOBYTE(v17[0]) = v13;

  sub_1C2F7627C();

  v14 = v2 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_call;
  swift_beginAccess();
  v15 = *(v14 + 24);
  v16 = *(v14 + 32);
  __swift_mutable_project_boxed_opaque_existential_1(v14, v15);
  (*(v16 + 24))(v13, v15, v16);
  swift_endAccess();
}

void sub_1C2F30CD8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v3 = Strong;
  sub_1C2F7599C();
  if (!v21)
  {
    sub_1C2F26504(v20);
    goto LABEL_11;
  }

  sub_1C2F317E8();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v12 = sub_1C2F761DC();
    v13 = sub_1C2F769EC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1C2EF2000, v12, v13, "recived mute state did change notification for a different call", v14, 2u);
      MEMORY[0x1C6929E80](v14, -1, -1);
    }

    return;
  }

  v4 = [v19 uniqueProxyIdentifier];
  v5 = sub_1C2F766CC();
  v7 = v6;

  v8 = (v3 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_call);
  swift_beginAccess();
  v9 = __swift_project_boxed_opaque_existential_1(v8, v8[3]);
  if (v5 == *(*v9 + 24) && v7 == *(*v9 + 32))
  {
  }

  else
  {
    v11 = sub_1C2F76EFC();

    if ((v11 & 1) == 0)
    {

      goto LABEL_11;
    }
  }

  v15 = v19;
  v16 = sub_1C2F761DC();
  v17 = sub_1C2F769EC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 67109120;
    *(v18 + 4) = [v15 isUplinkMuted];

    _os_log_impl(&dword_1C2EF2000, v16, v17, "notificationCall.isUplinkMuted:%{BOOL}d", v18, 8u);
    MEMORY[0x1C6929E80](v18, -1, -1);
  }

  else
  {

    v16 = v15;
  }

  [v15 isUplinkMuted];
  sub_1C2F7627C();
}

uint64_t AudioMuteService.deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_logger;
  v2 = sub_1C2F761FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_call));
  return v0;
}

uint64_t AudioMuteService.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_logger;
  v2 = sub_1C2F761FC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_call));

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F31108()
{

  sub_1C2F7628C();

  return v1;
}

uint64_t sub_1C2F31158()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E08, &unk_1C2F7A1C0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(*v0 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_muteSubject);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  sub_1C2EF7414(&unk_1EDEBC550, &qword_1EC075D70, &qword_1C2F78BB8, MEMORY[0x1E695BFB0]);
  sub_1C2F7630C();
  sub_1C2EF7414(&unk_1EDEBC598, &unk_1EC075E08, &unk_1C2F7A1C0, MEMORY[0x1E695BD38]);
  v5 = sub_1C2F762AC();
  (*(v2 + 8))(v4, v1);
  return v5;
}

void sub_1C2F31310(char a1)
{
  Strong = swift_unknownObjectWeakLoadStrong();
  [Strong setUplinkMuted_];
}

uint64_t sub_1C2F3136C(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C2F76A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14[3] = type metadata accessor for CallFacade();
  v14[4] = &off_1F42B4598;
  v14[0] = a2;
  sub_1C2F761EC();
  v10 = OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_muteSubject;
  v13[0] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC075D70, &qword_1C2F78BB8);
  swift_allocObject();
  *(a3 + v10) = sub_1C2F7629C();
  *(a3 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_cancellables) = MEMORY[0x1E69E7CD0];
  *(a3 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_notificationCenter) = a1;
  sub_1C2F09348(v14, a3 + OBJC_IVAR____TtC20CommunicationsUICore16AudioMuteService_call);
  v11 = a1;
  sub_1C2F76A8C();
  swift_allocObject();
  swift_weakInit();
  sub_1C2F31790();
  sub_1C2F7631C();

  (*(v7 + 8))(v9, v6);
  swift_beginAccess();
  sub_1C2F7620C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return a3;
}

uint64_t type metadata accessor for AudioMuteService(uint64_t a1)
{
  result = qword_1EC0769D8;
  if (!qword_1EC0769D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C2F3165C(uint64_t a1)
{
  result = sub_1C2F761FC();
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

unint64_t sub_1C2F31790()
{
  result = qword_1EDEBC500;
  if (!qword_1EDEBC500)
  {
    sub_1C2F76A7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBC500);
  }

  return result;
}

unint64_t sub_1C2F317E8()
{
  result = qword_1EC0760C0;
  if (!qword_1EC0760C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC0760C0);
  }

  return result;
}

id sub_1C2F31854(const char *a1, char a2)
{
  v5 = v2;
  v6 = sub_1C2F761DC();
  v7 = sub_1C2F769CC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1C2EF2000, v6, v7, a1, v8, 2u);
    MEMORY[0x1C6929E80](v8, -1, -1);
  }

  v9 = *(v5 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_delegate);
  v10 = *(v9 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_sourceClient);
  if (v10)
  {
    [v10 enableCaptions_];
  }

  result = *(v9 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_targetClient);
  if (result)
  {

    return [result enableCaptions_];
  }

  return result;
}

uint64_t sub_1C2F31968(int a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  v24 = a1;
  v10 = sub_1C2F75C8C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AB0, &qword_1C2F78C20);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v23 - v14;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = sub_1C2F768AC();
    (*(*(v18 - 8) + 56))(v15, 1, 1, v18);
    (*(v11 + 16))(&v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
    v19 = *(v11 + 80);
    v23 = a5;
    v20 = (v19 + 44) & ~v19;
    v21 = swift_allocObject();
    *(v21 + 16) = 0;
    *(v21 + 24) = 0;
    *(v21 + 32) = v17;
    *(v21 + 40) = v24;
    (*(v11 + 32))(v21 + v20, &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v10);
    v22 = v21 + ((v12 + v20 + 7) & 0xFFFFFFFFFFFFFFF8);
    *v22 = a3;
    *(v22 + 8) = a4;
    *(v22 + 16) = v23 & 1;

    sub_1C2F06978(0, 0, v15, &unk_1C2F7B738, v21);
  }

  return result;
}

uint64_t sub_1C2F31BB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 52) = v10;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 48) = a5;
  *(v8 + 16) = a4;
  *(v8 + 24) = a6;
  return MEMORY[0x1EEE6DFA0](sub_1C2F31BE8, a4, 0);
}

uint64_t sub_1C2F31BE8()
{
  sub_1C2F31C54(*(v0 + 48), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 52));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2F31C54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v6 = v5;
  v65 = a5;
  v61 = a2;
  v62 = a3;
  v9 = sub_1C2F75C8C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcripts;
  swift_beginAccess();
  v14 = *(v5 + v13);
  v15 = *(v14 + 16);
  v63 = a4;
  if (v15 && (v16 = sub_1C2F3D888(a1), (v17 & 1) != 0))
  {
    v18 = (*(v14 + 56) + 40 * v16);
    v19 = *v18;
    v20 = *(v18 + 4);
    v21 = *(v18 + 5);
    v22 = *(v18 + 2);
    v60 = *(v18 + 1);
    v23 = *(v18 + 4);
    v59 = *(v18 + 3);
    v24 = 0x100000000;
    if (!v20)
    {
      v24 = 0;
    }

    v25 = v24 | v19;
    v26 = 0x10000000000;
    if (!v21)
    {
      v26 = 0;
    }

    v27 = v25 | v26;
    v58 = v23;
  }

  else
  {
    v27 = 0;
    v60 = 0;
    v22 = 0;
    v59 = 0;
    v58 = 0;
  }

  v28 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_completions;
  swift_beginAccess();
  v29 = *(v6 + v28);
  v30 = *(v29 + 16);
  v64 = a1;
  if (v30 && (v31 = sub_1C2F3D888(a1), (v32 & 1) != 0))
  {
    v33 = (*(v29 + 56) + 2 * v31);
    v34 = *v33;
    if (v33[1])
    {
      v35 = 256;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35 | v34;
  }

  else
  {
    v36 = 2;
  }

  (*(v10 + 16))(v12, *(v6 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_delegate) + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_source, v9);
  v37 = MEMORY[0x1C6928160](v61, v12);
  (*(v10 + 8))(v12, v9);
  if (v37)
  {
    v38 = v36 >> 8;
    if (v36 == 2)
    {
      LOBYTE(v38) = 0;
    }

    if (v22)
    {
      v39 = v27;
      v40 = v27 >> 40;
      v41 = v38;
      v42 = v65 & v38 ^ 1;
      v43 = v58;

      v44 = v27;
      v45 = v59;
      sub_1C2F0A6B4(v44, v60, v22, v59, v43);
      v46 = v39;
      v47 = v45;
      v48 = v62;
      v22 = v63;
      v49 = v64;
    }

    else
    {
      v47 = 0;
      v43 = 0;
      v41 = v38;
      LOBYTE(v40) = *(v6 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_isDownlink) ^ 1;
      v42 = 1;
      v49 = v64;
      v46 = v64;
      v48 = v62;
      v22 = v63;
    }
  }

  else
  {
    v50 = (v36 != 2) & v36;
    v41 = v65;
    if (v22)
    {
      v40 = v27 >> 40;
      v42 = v50 & v65 ^ 1;

      v51 = v60;
      sub_1C2F0A6B4(v27, v60, v22, v59, v58);
      v46 = v27;
      v48 = v51;
      v65 = v50;
      v47 = v62;
      v43 = v63;
      v49 = v64;
    }

    else
    {
      v48 = 0;
      LOBYTE(v40) = *(v6 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_isDownlink) ^ 1;
      v22 = 0xE000000000000000;
      v42 = 1;
      v65 = v50;
      v49 = v64;
      v46 = v64;
      v47 = v62;
      v43 = v63;
    }
  }

  LODWORD(v69) = v46;
  BYTE4(v69) = v42 & 1;
  BYTE5(v69) = v40 & 1;
  *(&v69 + 1) = v48;
  *&v70 = v22;
  *(&v70 + 1) = v47;
  v71 = v43;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v68 = *(v6 + v28);
  *(v6 + v28) = 0x8000000000000000;
  if (v41)
  {
    v53 = 256;
  }

  else
  {
    v53 = 0;
  }

  sub_1C2F6A2E0(v53 & 0xFFFE | v65 & 1, v49, isUniquelyReferenced_nonNull_native);
  *(v6 + v28) = v68;
  swift_endAccess();
  swift_beginAccess();

  v54 = swift_isUniquelyReferenced_nonNull_native();
  v68 = *(v6 + v13);
  *(v6 + v13) = 0x8000000000000000;
  sub_1C2F6A180(&v69, v49, v54);
  *(v6 + v13) = v68;
  swift_endAccess();
  v55 = *(v6 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcriptDidUpdate);
  if (v55)
  {
    v66[0] = v69;
    v66[1] = v70;
    v67 = v71;
    v55(v66);
  }
}

uint64_t sub_1C2F32128()
{
  v1 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_identifier;
  v2 = sub_1C2F75AEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_logger;
  v4 = sub_1C2F761FC();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1C2EFDE10(*(v0 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcriptDidUpdate), *(v0 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcriptDidUpdate + 8));
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1C2F3224C(uint64_t a1)
{
  result = sub_1C2F75AEC();
  if (v2 <= 0x3F)
  {
    result = sub_1C2F761FC();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_1C2F3235C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    if (*(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_sourceClient) == a1)
    {
      v4 = OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_source;
LABEL_6:
      v5 = sub_1C2F75C8C();
      v19 = *(v5 - 8);
      (*(v19 + 16))(a2, v2 + v4, v5);
      v6 = *(v19 + 56);
      v7 = a2;
      v8 = 0;
      v9 = v5;
      goto LABEL_11;
    }

    if (*(v2 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_targetClient) == a1)
    {
      v4 = OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_target;
      goto LABEL_6;
    }

    v11 = a1;
    v12 = sub_1C2F761DC();
    v13 = sub_1C2F769DC();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      *(v14 + 4) = v11;
      *v15 = a1;
      v16 = v11;
      _os_log_impl(&dword_1C2EF2000, v12, v13, "unexpected client %@", v14, 0xCu);
      sub_1C2F0A8D8(v15, &unk_1EC076070, &qword_1C2F7A190);
      MEMORY[0x1C6929E80](v15, -1, -1);
      MEMORY[0x1C6929E80](v14, -1, -1);
      v11 = v12;
      v12 = v16;
    }
  }

  v17 = sub_1C2F75C8C();
  v6 = *(*(v17 - 8) + 56);
  v9 = v17;
  v7 = a2;
  v8 = 1;
LABEL_11:

  return v6(v7, v8, 1, v9);
}

void sub_1C2F32630(void *a1, char a2, void *a3, const char *a4, ...)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C2F3235C(a1, &v23 - v9);
  v10 = sub_1C2F7670C();
  v12 = v11;
  v13 = a3;
  v14 = sub_1C2F761DC();
  v15 = sub_1C2F769EC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v24 = v18;
    *v16 = 136315650;
    v19 = sub_1C2EFAB28(v10, v12, &v24);

    *(v16 + 4) = v19;
    *(v16 + 12) = 1024;
    *(v16 + 14) = a2 & 1;
    *(v16 + 18) = 2112;
    if (a3)
    {
      v20 = a3;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      v22 = v21;
    }

    else
    {
      v21 = 0;
      v22 = 0;
    }

    *(v16 + 20) = v21;
    *v17 = v22;
    _os_log_impl(&dword_1C2EF2000, v14, v15, a4, v16, 0x1Cu);
    sub_1C2F0A8D8(v17, &unk_1EC076070, &qword_1C2F7A190);
    MEMORY[0x1C6929E80](v17, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1C6929E80](v18, -1, -1);
    MEMORY[0x1C6929E80](v16, -1, -1);
  }

  else
  {
  }
}

void sub_1C2F329AC(void *a1, char a2, uint64_t (*a3)(void), const char *a4, ...)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  MEMORY[0x1EEE9AC00](v8);
  sub_1C2F3235C(a1, &v21[-v9]);
  v10 = sub_1C2F7670C();
  v12 = v11;
  v13 = sub_1C2F761DC();
  v14 = a3();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v22 = v16;
    *v15 = 136315394;
    v17 = sub_1C2EFAB28(v10, v12, &v22);

    *(v15 + 4) = v17;
    *(v15 + 12) = 2080;
    v21[7] = a2;
    type metadata accessor for AVCCaptionsReason(0);
    v18 = sub_1C2F7670C();
    v20 = sub_1C2EFAB28(v18, v19, &v22);

    *(v15 + 14) = v20;
    _os_log_impl(&dword_1C2EF2000, v13, v14, a4, v15, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v16, -1, -1);
    MEMORY[0x1C6929E80](v15, -1, -1);
  }

  else
  {
  }
}

void sub_1C2F32C98(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  MEMORY[0x1EEE9AC00](v2);
  sub_1C2F3235C(a1, &v12 - v3);
  v4 = sub_1C2F7670C();
  v6 = v5;
  v7 = sub_1C2F761DC();
  v8 = sub_1C2F769DC();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v13 = v10;
    *v9 = 136315138;
    v11 = sub_1C2EFAB28(v4, v6, &v13);

    *(v9 + 4) = v11;
    _os_log_impl(&dword_1C2EF2000, v7, v8, "Captions server die %s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x1C6929E80](v10, -1, -1);
    MEMORY[0x1C6929E80](v9, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1C2F32FEC(uint64_t a1)
{
  result = sub_1C2F75C8C();
  if (v2 <= 0x3F)
  {
    result = sub_1C2F761FC();
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

uint64_t sub_1C2F330CC(uint64_t a1, uint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v105 = a7;
  v106 = a8;
  LODWORD(v107) = a3;
  v111 = a2;
  v115 = a1;
  v11 = sub_1C2F75AEC();
  v102 = *(v11 - 8);
  v103 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v112 = &v92 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = sub_1C2F761FC();
  v117 = *(v113 - 8);
  v13 = MEMORY[0x1EEE9AC00](v113);
  v108 = &v92 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v92 - v15;
  v17 = sub_1C2F75C8C();
  v116 = *(v17 - 8);
  v18 = v116;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v109 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v95 = &v92 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v25 = &v92 - v24;
  MEMORY[0x1EEE9AC00](v23);
  v27 = &v92 - v26;
  v28 = *(v18 + 16);
  v104 = a4;
  v29 = (a4 & 1) == 0;
  if (a4)
  {
    v30 = a6;
  }

  else
  {
    v30 = a5;
  }

  v101 = a5;
  v100 = a6;
  if (a4)
  {
    v31 = a5;
  }

  else
  {
    v31 = a6;
  }

  if (v29)
  {
    v32 = 1;
  }

  else
  {
    v32 = 2;
  }

  LODWORD(v94) = v32;
  if (v29)
  {
    v33 = 0x6B6E694C7055;
  }

  else
  {
    v33 = 0x6B6E694C6E776F44;
  }

  if (v29)
  {
    v34 = 0xE600000000000000;
  }

  else
  {
    v34 = 0xE800000000000000;
  }

  v28(&v92 - v26, v30, v17);
  v28(v25, v31, v17);
  v118 = 0;
  v119 = 0xE000000000000000;
  sub_1C2F76C6C();

  v118 = v33;
  v119 = v34;
  v110 = v25;
  MEMORY[0x1C6928D30](0xD000000000000016, 0x80000001C2F7F3F0);
  sub_1C2F761EC();
  v35 = v95;
  v114 = v27;
  v28(v95, v27, v17);
  v28(v109, v25, v17);
  v36 = v117 + 16;
  v37 = *(v117 + 16);
  v38 = v108;
  v99 = v16;
  v39 = v16;
  v40 = v113;
  v37(v108, v39, v113);
  v41 = type metadata accessor for CaptionsClientDelegate(0);
  v42 = objc_allocWithZone(v41);
  *&v42[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_sourceClient] = 0;
  *&v42[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_targetClient] = 0;
  v43 = &v42[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_updateTranscript];
  *v43 = 0;
  *(v43 + 1) = 0;
  v98 = v36;
  v97 = v37;
  v37(&v42[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_logger], v38, v40);
  v28(&v42[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_source], v35, v17);
  v44 = v109;
  v28(&v42[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_target], v109, v17);
  v120.receiver = v42;
  v120.super_class = v41;
  v45 = objc_msgSendSuper2(&v120, sel_init);
  v46 = *(v117 + 8);
  v117 += 8;
  v96 = v46;
  v46(v108, v40);
  v48 = v116 + 8;
  v47 = *(v116 + 8);
  v47(v44, v17);
  v95 = v17;
  v116 = v48;
  v108 = v47;
  v47(v35, v17);
  v49 = objc_allocWithZone(MEMORY[0x1E6986570]);
  v50 = sub_1C2F75AAC();
  v51 = sub_1C2F75AAC();
  v52 = v94;
  v53 = [v49 initWithDelegate:v45 translatorIdentifier:v50 direction:? reportingSamplingUUID:?];

  v54 = 0x1FC23A000;
  if (v53)
  {
    v55 = sub_1C2F75B6C();
    [v53 setSourceLocale_];

    v56 = [objc_allocWithZone(MEMORY[0x1E6986578]) init];
    [v56 setUsage_];
    v57 = sub_1C2F75B6C();
    [v56 setLocale_];

    [v56 setExplicitLanguageFilterEnabled_];
    [v56 setCallType_];
    [v53 configureCaptions_];

    v54 = 0x1FC23A000uLL;
  }

  v58 = v54;
  v109 = v53;
  v59 = objc_allocWithZone(MEMORY[0x1E6986570]);
  v60 = v45;
  v61 = sub_1C2F75AAC();
  v62 = sub_1C2F75AAC();
  v63 = [v59 initWithDelegate:v60 translatorIdentifier:v61 direction:v52 reportingSamplingUUID:v62];

  v64 = v60;
  if (v63)
  {
    v65 = sub_1C2F75B6C();
    [v63 (v58 + 3976)];

    v64 = [objc_allocWithZone(MEMORY[0x1E6986578]) init];
    [v64 setUsage_];
    v66 = sub_1C2F75B6C();
    [v64 setLocale_];

    [v64 setExplicitLanguageFilterEnabled_];
    [v64 setCallType_];
    [v63 configureCaptions_];
  }

  v67 = v102;
  v68 = v103;
  v69 = v115;
  (*(v102 + 16))(v112, v115, v103);
  type metadata accessor for CallTranslationCaptionsClients(0);
  v70 = swift_allocObject();
  swift_defaultActor_initialize();
  v107 = v63;
  v71 = v69;
  v72 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcripts;
  v73 = MEMORY[0x1E69E7CC0];
  *(v70 + v72) = sub_1C2F2611C(MEMORY[0x1E69E7CC0]);
  v94 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_completions;
  v93 = sub_1C2F262B8(v73);
  v74 = v95;
  v75 = v108;
  (v108)(v100, v95);
  v75(v101, v74);
  v76 = v60;
  v77 = *(v67 + 8);
  v77(v111, v68);
  v77(v71, v68);
  v78 = v113;
  v96(v99, v113);
  v75(v110, v74);
  v75(v114, v74);
  *(v70 + v94) = v93;
  (*(v67 + 32))(v70 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_identifier, v112, v68);
  *(v70 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_isDownlink) = v104 & 1;
  v79 = (v70 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_transcriptDidUpdate);
  v80 = v106;
  *v79 = v105;
  v79[1] = v80;
  *(v70 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_delegate) = v76;
  v97(v70 + OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_logger, &v76[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_logger], v78);
  v81 = OBJC_IVAR____TtC20CommunicationsUICore30CallTranslationCaptionsClients_delegate;
  v82 = *&v76[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_sourceClient];
  *&v76[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_sourceClient] = v107;

  v83 = *(v70 + v81);
  v84 = *(v83 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_targetClient);
  *(v83 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_targetClient) = v109;

  v85 = *(v70 + v81);
  v86 = swift_allocObject();
  swift_weakInit();
  v87 = &v85[OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_updateTranscript];
  swift_beginAccess();
  v88 = *v87;
  v89 = v87[1];
  *v87 = sub_1C2F342C4;
  v87[1] = v86;
  v90 = v85;

  sub_1C2EFDE10(v88, v89);

  return v70;
}

void sub_1C2F33AC8(void *a1, void *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v66[-v7];
  v9 = sub_1C2F75C8C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v66[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v66[-v15];
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v66[-v17];
  sub_1C2F3235C(a1, v8);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_1C2F0A8D8(v8, &unk_1EC076A90, &qword_1C2F78FF0);
    v19 = sub_1C2F761DC();
    v20 = sub_1C2F769DC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1C2EF2000, v19, v20, "Not able to find locale for captions client", v21, 2u);
      MEMORY[0x1C6929E80](v21, -1, -1);
    }

    return;
  }

  (*(v10 + 32))(v18, v8, v9);
  v22 = [a2 text];
  if (!v22)
  {
LABEL_12:
    (*(v10 + 16))(v13, v18, v9);
    v47 = a2;
    v48 = sub_1C2F761DC();
    v49 = sub_1C2F769EC();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      v73 = v18;
      v74[0] = v72;
      *v50 = 136315394;
      sub_1C2F34220();
      v51 = sub_1C2F76EEC();
      v53 = v52;
      v54 = *(v10 + 8);
      v54(v13, v9);
      v55 = sub_1C2EFAB28(v51, v53, v74);

      *(v50 + 4) = v55;
      *(v50 + 12) = 2080;
      v74[3] = v47;
      sub_1C2F34278();
      v56 = v47;
      v57 = sub_1C2F7670C();
      v59 = sub_1C2EFAB28(v57, v58, v74);

      *(v50 + 14) = v59;
      _os_log_impl(&dword_1C2EF2000, v48, v49, "Skipping empty captions %s %s", v50, 0x16u);
      v60 = v72;
      swift_arrayDestroy();
      MEMORY[0x1C6929E80](v60, -1, -1);
      MEMORY[0x1C6929E80](v50, -1, -1);

      v54(v73, v9);
    }

    else
    {

      v61 = *(v10 + 8);
      v61(v13, v9);
      v61(v18, v9);
    }

    return;
  }

  v23 = v22;
  v24 = sub_1C2F766CC();
  v26 = v25;

  v27 = HIBYTE(v26) & 0xF;
  if ((v26 & 0x2000000000000000) == 0)
  {
    v27 = v24 & 0xFFFFFFFFFFFFLL;
  }

  if (!v27)
  {

    goto LABEL_12;
  }

  LODWORD(v72) = [a2 utteranceNumber];
  v71 = [a2 utteranceComplete];
  (*(v10 + 16))(v16, v18, v9);

  v28 = a2;
  v29 = sub_1C2F761DC();
  v30 = sub_1C2F769EC();

  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    v73 = v18;
    v32 = v31;
    v69 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v74[0] = v70;
    *v32 = 136315907;
    sub_1C2F34220();
    v68 = v29;
    v33 = sub_1C2F76EEC();
    v67 = v30;
    v34 = v24;
    v36 = v35;
    v37 = v16;
    v38 = *(v10 + 8);
    v38(v37, v9);
    v39 = sub_1C2EFAB28(v33, v36, v74);
    v24 = v34;

    *(v32 + 4) = v39;
    *(v32 + 12) = 1024;
    v40 = v72;
    *(v32 + 14) = v72;
    *(v32 + 18) = 2081;
    *(v32 + 20) = sub_1C2EFAB28(v34, v26, v74);
    *(v32 + 28) = 2112;
    *(v32 + 30) = v28;
    v41 = v69;
    *v69 = v28;
    v42 = v28;
    v43 = v68;
    _os_log_impl(&dword_1C2EF2000, v68, v67, "Captions %s identifier: %u text: %{private}s updates: %@", v32, 0x26u);
    sub_1C2F0A8D8(v41, &unk_1EC076070, &qword_1C2F7A190);
    MEMORY[0x1C6929E80](v41, -1, -1);
    v44 = v70;
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v44, -1, -1);
    v45 = v32;
    v18 = v73;
    MEMORY[0x1C6929E80](v45, -1, -1);

    v46 = v40;
  }

  else
  {

    v62 = v16;
    v38 = *(v10 + 8);
    v38(v62, v9);
    v46 = v72;
  }

  v63 = v3 + OBJC_IVAR____TtC20CommunicationsUICore22CaptionsClientDelegate_updateTranscript;
  swift_beginAccess();
  v64 = *v63;
  if (*v63)
  {
    v65 = *(v63 + 8);
    swift_endAccess();

    v64(v46, v18, v24, v26, v71);
    sub_1C2EFDE10(v64, v65);

    v38(v18, v9);
  }

  else
  {
    v38(v18, v9);
    swift_endAccess();
  }
}

unint64_t sub_1C2F34220()
{
  result = qword_1EC076AA0;
  if (!qword_1EC076AA0)
  {
    sub_1C2F75C8C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076AA0);
  }

  return result;
}

unint64_t sub_1C2F34278()
{
  result = qword_1EC076AA8;
  if (!qword_1EC076AA8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC076AA8);
  }

  return result;
}

uint64_t sub_1C2F342CC(uint64_t a1)
{
  v3 = *(sub_1C2F75C8C() - 8);
  v4 = (*(v3 + 80) + 44) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  v9 = (v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_1C2F06348;

  return sub_1C2F31BB4(a1, v5, v6, v7, v8, v1 + v4, v10, v11);
}

uint64_t sub_1C2F34428(unint64_t a1, void *a2)
{
  v14 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2F76BBC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1C6929250](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = [v5 identifier];
      if (!v8)
      {
        sub_1C2F766CC();
        v8 = sub_1C2F766AC();
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076AF8, &qword_1C2F7D770);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1C2F7B740;
      *(v9 + 32) = [objc_opt_self() descriptorForRequiredKeys];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076B00, &unk_1C2F7B958);
      v10 = sub_1C2F767DC();

      v11 = [a2 contactForIdentifier:v8 keysToFetch:v10];

      if (v11)
      {
      }

      else
      {
        sub_1C2F76CEC();
        sub_1C2F76D1C();
        sub_1C2F76D2C();
        sub_1C2F76CFC();
      }

      if (v7 == i)
      {
        return v14;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t BlockUnblockController.UnknownInitiator.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t BlockUnblockController.UnknownInitiator.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t BlockUnblockController.unknownInitiator.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 56);
  *a1 = *(v1 + 48);
  a1[1] = v2;
}

uint64_t BlockUnblockController.hasReportedSpam.getter()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_beginAccess();
  return *(v0 + 64);
}

uint64_t sub_1C2F34760@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 64);
  return result;
}

unint64_t sub_1C2F34814()
{
  result = qword_1EC076AC8;
  if (!qword_1EC076AC8)
  {
    type metadata accessor for BlockUnblockController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC076AC8);
  }

  return result;
}

uint64_t type metadata accessor for BlockUnblockController(uint64_t a1)
{
  result = qword_1EC076AE0;
  if (!qword_1EC076AE0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t BlockUnblockController.hasReportedSpam.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 64) == v2)
  {
    *(v1 + 64) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F34814();
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t (*BlockUnblockController.hasReportedSpam.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore22BlockUnblockController___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F34814();
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F34AD4;
}

BOOL BlockUnblockController.canReportSpam.getter()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_getKeyPath();
  sub_1C2F75DAC();

  swift_getKeyPath();
  sub_1C2F75DAC();

  swift_beginAccess();
  return (*(v0 + 64) & 1) == 0 && *(v0 + 16) && *(v0 + 56) != 0;
}

uint64_t BlockUnblockController.isSafetyCheckActive.getter()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_beginAccess();
  return *(v0 + 65);
}

uint64_t sub_1C2F34C74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  result = swift_beginAccess();
  *a2 = *(v3 + 65);
  return result;
}

uint64_t BlockUnblockController.isSafetyCheckActive.setter(char a1)
{
  v2 = a1 & 1;
  result = swift_beginAccess();
  if (*(v1 + 65) == v2)
  {
    *(v1 + 65) = v2;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F34814();
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t (*BlockUnblockController.isSafetyCheckActive.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore22BlockUnblockController___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F34814();
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F34F44;
}

uint64_t BlockUnblockController.unknownContacts.getter()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_beginAccess();
}

uint64_t sub_1C2F34FE0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_beginAccess();
  *a2 = *(v3 + 80);
}

uint64_t BlockUnblockController.unknownContacts.setter(unint64_t a1)
{
  swift_beginAccess();

  v4 = sub_1C2F1F868(v3, a1);

  if (v4)
  {
    *(v1 + 80) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F34814();
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F351B4(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(a1 + 80) = a2;
}

uint64_t (*BlockUnblockController.unknownContacts.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  swift_getKeyPath();
  v4[4] = OBJC_IVAR____TtC20CommunicationsUICore22BlockUnblockController___observationRegistrar;
  *v4 = v1;
  v4[5] = sub_1C2F34814();
  sub_1C2F75DAC();

  *v4 = v1;
  swift_getKeyPath();
  sub_1C2F75DCC();

  swift_beginAccess();
  return sub_1C2F35348;
}

void *BlockUnblockController.areAllUnknownParticipantsBlocked.getter()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_getKeyPath();
  v50 = v0;
  sub_1C2F75DAC();

  swift_beginAccess();
  v1 = *(v0 + 80);
  v2 = (v1 & 0xFFFFFFFFFFFFFF8);
  if (v1 >> 62)
  {
LABEL_71:
    v3 = sub_1C2F76BBC();
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = v1 & 0xC000000000000001;
  v5 = v1 + 32;

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v8 = &selRef_objectForKey_;
  v43 = v1;
  v44 = v3;
  v39 = v1 & 0xC000000000000001;
  v40 = v2;
  v38 = v1 + 32;
  while (v6 != v3)
  {
    if (v4)
    {
      v9 = MEMORY[0x1C6929250](v6, v1);
      v10 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
        goto LABEL_69;
      }
    }

    else
    {
      if (v6 >= v2[2])
      {
        goto LABEL_70;
      }

      v9 = *(v5 + 8 * v6);
      v10 = (v6 + 1);
      if (__OFADD__(v6, 1))
      {
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
        goto LABEL_71;
      }
    }

    v42 = v10;
    v45 = v9;
    v3 = [v9 v8[72]];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AD0, &qword_1C2F7A4D0);
    v11 = sub_1C2F767EC();

    v49 = v7;
    v41 = v6;
    v47 = v11 & 0xFFFFFFFFFFFFFF8;
    if (v11 >> 62)
    {
      v48 = sub_1C2F76BBC();
    }

    else
    {
      v48 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v12 = 0;
    v13 = v11 & 0xC000000000000001;
    v46 = v7;
    while (v48 != v12)
    {
      if (v13)
      {
        v15 = MEMORY[0x1C6929250](v12, v11);
      }

      else
      {
        if (v12 >= *(v47 + 16))
        {
          goto LABEL_63;
        }

        v15 = *(v11 + 8 * v12 + 32);
      }

      v16 = v15;
      v17 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:

LABEL_59:
        v6 = v41;
        return (v6 == v3);
      }

      v1 = v11;
      v18 = [v15 value];
      v19 = [v18 digits];

      sub_1C2F766CC();
      v20 = TUHomeCountryCode();
      if (v20)
      {
        v21 = v20;
        sub_1C2F766CC();
        v23 = v22;
      }

      else
      {
        v23 = 0;
      }

      v2 = sub_1C2F766AC();

      v11 = v1;
      if (v23)
      {
        v14 = sub_1C2F766AC();
      }

      else
      {
        v14 = 0;
      }

      v3 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v2 countryCode:v14];

      ++v12;
      if (v3)
      {
        MEMORY[0x1C6928DA0]();
        if (*((v49 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v2 = *((v49 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_1C2F7680C();
        }

        v1 = &v49;
        sub_1C2F7682C();
        v46 = v49;
        v12 = v17;
      }
    }

    if (v46 >> 62)
    {
      v24 = sub_1C2F76BBC();
    }

    else
    {
      v24 = *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v25 = 0;
    do
    {
      v26 = v25;
      if (v24 == v25)
      {
        break;
      }

      if ((v46 & 0xC000000000000001) != 0)
      {
        v27 = MEMORY[0x1C6929250](v25, v46);
      }

      else
      {
        if (v25 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v27 = *(v46 + 8 * v25 + 32);
      }

      v28 = v27;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
LABEL_66:
        __break(1u);
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      result = [objc_opt_self() sharedPrivacyManager];
      if (!result)
      {
        __break(1u);
LABEL_73:
        __break(1u);
        return result;
      }

      v2 = result;
      v30 = [result isIncomingCommunicationBlockedForPhoneNumber_];

      v25 = v26 + 1;
    }

    while ((v30 & 1) != 0);

    v31 = [v45 emailAddresses];
    v1 = sub_1C2F767EC();

    if (v1 >> 62)
    {
      v32 = sub_1C2F76BBC();
    }

    else
    {
      v32 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v33 = 0;
    while (v32 != v33)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v34 = MEMORY[0x1C6929250](v33, v1);
      }

      else
      {
        if (v33 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_68;
        }

        v34 = *(v1 + 8 * v33 + 32);
      }

      v35 = v34;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_67;
      }

      result = [objc_opt_self() sharedPrivacyManager];
      if (!result)
      {
        goto LABEL_73;
      }

      v36 = result;
      v2 = [v35 value];
      v37 = [v36 isIncomingCommunicationBlockedForEmailAddress_];

      ++v33;
      if ((v37 & 1) == 0)
      {

        v3 = v44;
        goto LABEL_59;
      }
    }

    v1 = v43;
    v3 = v44;
    v4 = v39;
    v2 = v40;
    v5 = v38;
    v7 = MEMORY[0x1E69E7CC0];
    v8 = &selRef_objectForKey_;
    v6 = v42;
    if (v24 != v26)
    {
      goto LABEL_64;
    }
  }

  return (v6 == v3);
}

BOOL BlockUnblockController.areAllParticipantsUnknown.getter()
{
  v1 = v0;
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75DAC();

  swift_beginAccess();
  v2 = *(v0 + 80);
  if (v2 >> 62)
  {
    v3 = sub_1C2F76BBC();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = *(v1 + 72);
  if (v4 >> 62)
  {
    v5 = sub_1C2F76BBC();
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v3 == v5;
}

uint64_t BlockUnblockController.__allocating_init(contacts:initiatorHandleValue:initiatorName:reportSpam:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  BlockUnblockController.init(contacts:initiatorHandleValue:initiatorName:reportSpam:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

uint64_t BlockUnblockController.init(contacts:initiatorHandleValue:initiatorName:reportSpam:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  *(v8 + 64) = 0;
  sub_1C2F75DDC();
  *(v8 + 16) = a6;
  *(v8 + 24) = a7;
  v15 = objc_allocWithZone(MEMORY[0x1E695CE28]);
  sub_1C2EFDE20(a6, a7);
  v16 = [v15 init];
  [v16 setIncludeLocalContacts_];
  [v16 setIncludeAcceptedIntroductions_];
  v17 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  v18 = sub_1C2F34428(a1, v17);
  *(v8 + 32) = a4;
  *(v8 + 40) = a5;
  *(v8 + 72) = a1;
  *(v8 + 80) = v18;
  if (!a3)
  {
    goto LABEL_12;
  }

  if (!a5)
  {

LABEL_12:
    if (qword_1EDEBC5B8 != -1)
    {
      swift_once();
    }

    v33 = sub_1C2F761FC();
    __swift_project_value_buffer(v33, qword_1EDEBDA78);
    v27 = sub_1C2F761DC();
    v34 = sub_1C2F769EC();
    if (os_log_type_enabled(v27, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v45 = v36;
      *v35 = 136315138;
      *(v35 + 4) = sub_1C2EFAB28(0xD00000000000003DLL, 0x80000001C2F7F410, &v45);
      _os_log_impl(&dword_1C2EF2000, v27, v34, "[%s]: no initiator", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1C6929E80](v36, -1, -1);
      MEMORY[0x1C6929E80](v35, -1, -1);
    }

    v31 = a6;
    v32 = a7;
    goto LABEL_17;
  }

  v43 = a6;
  v44 = a7;
  v19 = qword_1EDEBC5B8;

  if (v19 != -1)
  {
    swift_once();
  }

  v20 = sub_1C2F761FC();
  __swift_project_value_buffer(v20, qword_1EDEBDA78);
  v21 = sub_1C2F761DC();
  v22 = sub_1C2F769EC();
  v42 = a4;
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v45 = v24;
    *v23 = 136315138;
    *(v23 + 4) = sub_1C2EFAB28(0xD00000000000003DLL, 0x80000001C2F7F410, &v45);
    _os_log_impl(&dword_1C2EF2000, v21, v22, "[%s]: has initiator, checking if contact", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    MEMORY[0x1C6929E80](v24, -1, -1);
    MEMORY[0x1C6929E80](v23, -1, -1);
  }

  v25 = sub_1C2F766AC();

  v26 = [v17 contactForDestinationId_];

  if (v26)
  {

    v27 = sub_1C2F761DC();
    v28 = sub_1C2F769EC();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v45 = v30;
      *v29 = 136315138;
      *(v29 + 4) = sub_1C2EFAB28(0xD00000000000003DLL, 0x80000001C2F7F410, &v45);
      _os_log_impl(&dword_1C2EF2000, v27, v28, "[%s]: known initiator", v29, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v30);
      MEMORY[0x1C6929E80](v30, -1, -1);
      MEMORY[0x1C6929E80](v29, -1, -1);
    }

    v31 = v43;
    v32 = v44;
LABEL_17:
    sub_1C2EFDE10(v31, v32);

    *(v8 + 48) = 0;
    *(v8 + 56) = 0;
    return v8;
  }

  v38 = sub_1C2F761DC();
  v39 = sub_1C2F769EC();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v45 = v41;
    *v40 = 136315138;
    *(v40 + 4) = sub_1C2EFAB28(0xD00000000000003DLL, 0x80000001C2F7F410, &v45);
    _os_log_impl(&dword_1C2EF2000, v38, v39, "[%s]: unknown initiator", v40, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v41);
    MEMORY[0x1C6929E80](v41, -1, -1);
    MEMORY[0x1C6929E80](v40, -1, -1);
  }

  sub_1C2EFDE10(v43, v44);
  *(v8 + 48) = v42;
  *(v8 + 56) = a5;
  return v8;
}

Swift::Void __swiftcall BlockUnblockController.reportSpam()()
{
  v1 = v0;
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBDA78);
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v17 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1C2EFAB28(0x705374726F706572, 0xEC00000029286D61, &v17);
    _os_log_impl(&dword_1C2EF2000, v3, v4, "[%s]: Report spam", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1C6929E80](v6, -1, -1);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  v7 = *(v1 + 16);
  if (v7)
  {
    v8 = *(v1 + 24);

    v9 = sub_1C2F761DC();
    v10 = sub_1C2F769EC();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v17 = v12;
      *v11 = 136315138;
      *(v11 + 4) = sub_1C2EFAB28(0x705374726F706572, 0xEC00000029286D61, &v17);
      _os_log_impl(&dword_1C2EF2000, v9, v10, "[%s]: calling report spam handler", v11, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v12);
      MEMORY[0x1C6929E80](v12, -1, -1);
      MEMORY[0x1C6929E80](v11, -1, -1);
    }

    v7();
    swift_getKeyPath();
    v17 = v1;
    sub_1C2F34814();
    sub_1C2F75D9C();

    v13 = sub_1C2F761DC();
    v14 = sub_1C2F769EC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315394;
      *(v15 + 4) = sub_1C2EFAB28(0x705374726F706572, 0xEC00000029286D61, &v17);
      *(v15 + 12) = 1024;
      *(v15 + 14) = BlockUnblockController.canReportSpam.getter();

      _os_log_impl(&dword_1C2EF2000, v13, v14, "[%s]: new canReportSpam=%{BOOL}d", v15, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1C6929E80](v16, -1, -1);
      MEMORY[0x1C6929E80](v15, -1, -1);
    }

    else
    {
    }

    sub_1C2EFDE10(v7, v8);
  }
}

uint64_t sub_1C2F363F0(uint64_t a1)
{
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBDA78);
  v3 = sub_1C2F761DC();
  v4 = sub_1C2F769EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_1C2EFAB28(0x705374726F706572, 0xEC00000029286D61, v9);
    _os_log_impl(&dword_1C2EF2000, v3, v4, "[%s]: updating hasReportedSpam", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1C6929E80](v6, -1, -1);
    MEMORY[0x1C6929E80](v5, -1, -1);
  }

  result = swift_beginAccess();
  if (*(a1 + 64) == 1)
  {
    *(a1 + 64) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F34814();
    sub_1C2F75D9C();
  }

  return result;
}

Swift::Void __swiftcall BlockUnblockController.blockUnknownParticipants()()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75D9C();

  swift_beginAccess();
  if (*(v0 + 65) == 1)
  {
    *(v0 + 65) = 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F36750(uint64_t a1)
{
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2F761FC();
  __swift_project_value_buffer(v3, qword_1EDEBDA78);

  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v20[4] = v1;
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136315394;
    *(v6 + 4) = sub_1C2EFAB28(0xD00000000000001ALL, 0x80000001C2F7F540, v20);
    *(v6 + 12) = 2080;
    swift_getKeyPath();
    sub_1C2F34814();
    sub_1C2F75DAC();

    swift_beginAccess();
    v8 = sub_1C2F208DC();

    v10 = MEMORY[0x1C6928DD0](v9, v8);
    v12 = v11;

    v13 = sub_1C2EFAB28(v10, v12, v20);

    *(v6 + 14) = v13;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "[%s]: Block unknown participants %s", v6, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1C6929E80](v7, -1, -1);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  swift_getKeyPath();
  v20[0] = a1;
  sub_1C2F34814();
  sub_1C2F75DAC();

  result = swift_beginAccess();
  v15 = *(a1 + 80);
  if (v15 >> 62)
  {
    result = sub_1C2F76BBC();
    v16 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return result;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1C6929250](i, v15);
      }

      else
      {
        v18 = *(v15 + 8 * i + 32);
      }

      v19 = v18;
      sub_1C2F37144(v18);
    }
  }

  return result;
}

Swift::Void __swiftcall BlockUnblockController.unblockUnknownParticipants()()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75D9C();
}

uint64_t sub_1C2F36AF0(uint64_t a1)
{
  if (qword_1EDEBC5B8 != -1)
  {
    swift_once();
  }

  v3 = sub_1C2F761FC();
  __swift_project_value_buffer(v3, qword_1EDEBDA78);

  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  if (os_log_type_enabled(v4, v5))
  {
    v20[4] = v1;
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20[0] = v7;
    *v6 = 136315138;
    swift_getKeyPath();
    sub_1C2F34814();
    sub_1C2F75DAC();

    swift_beginAccess();
    v8 = sub_1C2F208DC();

    v10 = MEMORY[0x1C6928DD0](v9, v8);
    v12 = v11;

    v13 = sub_1C2EFAB28(v10, v12, v20);

    *(v6 + 4) = v13;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "Unblock unknown participants %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1C6929E80](v7, -1, -1);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  swift_getKeyPath();
  v20[0] = a1;
  sub_1C2F34814();
  sub_1C2F75DAC();

  result = swift_beginAccess();
  v15 = *(a1 + 80);
  if (v15 >> 62)
  {
    result = sub_1C2F76BBC();
    v16 = result;
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      return result;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v16; ++i)
    {
      if ((v15 & 0xC000000000000001) != 0)
      {
        v18 = MEMORY[0x1C6929250](i, v15);
      }

      else
      {
        v18 = *(v15 + 8 * i + 32);
      }

      v19 = v18;
      sub_1C2F377E8(v18);
    }
  }

  return result;
}

Swift::Void __swiftcall BlockUnblockController.refresh()()
{
  swift_getKeyPath();
  sub_1C2F34814();
  sub_1C2F75D9C();
}

uint64_t *BlockUnblockController.deinit()
{
  sub_1C2EFDE10(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtC20CommunicationsUICore22BlockUnblockController___observationRegistrar;
  v2 = sub_1C2F75DEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t BlockUnblockController.__deallocating_deinit()
{
  sub_1C2EFDE10(*(v0 + 16), *(v0 + 24));

  v1 = OBJC_IVAR____TtC20CommunicationsUICore22BlockUnblockController___observationRegistrar;
  v2 = sub_1C2F75DEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1C2F36FD4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 65) = v2;
  return result;
}

uint64_t sub_1C2F3704C(uint64_t a1)
{
  result = sub_1C2F75DEC();
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

id sub_1C2F37144(void *a1)
{
  if (qword_1EDEBC5B8 != -1)
  {
LABEL_37:
    swift_once();
  }

  v2 = sub_1C2F761FC();
  __swift_project_value_buffer(v2, qword_1EDEBDA78);
  v3 = a1;
  v4 = sub_1C2F761DC();
  v5 = sub_1C2F769EC();

  v51 = v3;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v53 = v7;
    *v6 = 136315650;
    *(v6 + 4) = sub_1C2EFAB28(0xD00000000000001BLL, 0x80000001C2F7F560, &v53);
    *(v6 + 12) = 2080;
    v8 = [v51 phoneNumbers];
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AD0, &qword_1C2F7A4D0);
    v10 = sub_1C2F767EC();

    v11 = MEMORY[0x1C6928DD0](v10, v9);
    v13 = v12;

    v14 = sub_1C2EFAB28(v11, v13, &v53);

    *(v6 + 14) = v14;
    *(v6 + 22) = 2080;
    v15 = [v51 emailAddresses];
    v16 = sub_1C2F767EC();

    v17 = MEMORY[0x1C6928DD0](v16, v9);
    v19 = v18;

    v20 = sub_1C2EFAB28(v17, v19, &v53);

    *(v6 + 24) = v20;
    _os_log_impl(&dword_1C2EF2000, v4, v5, "[%s]: blocking phoneNumbers %s \n\n emailAddreses: %s", v6, 0x20u);
    swift_arrayDestroy();
    v21 = v7;
    v3 = v51;
    MEMORY[0x1C6929E80](v21, -1, -1);
    MEMORY[0x1C6929E80](v6, -1, -1);
  }

  v22 = [v3 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AD0, &qword_1C2F7A4D0);
  v23 = sub_1C2F767EC();

  v53 = MEMORY[0x1E69E7CC0];
  if (v23 >> 62)
  {
    v52 = sub_1C2F76BBC();
  }

  else
  {
    v52 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  a1 = (v23 & 0xC000000000000001);
  v25 = MEMORY[0x1E69E7CC0];
  while (v52 != v24)
  {
    if (a1)
    {
      v29 = MEMORY[0x1C6929250](v24, v23);
    }

    else
    {
      if (v24 >= *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_34;
      }

      v29 = *(v23 + 8 * v24 + 32);
    }

    v30 = v29;
    v31 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
      goto LABEL_37;
    }

    v32 = [v29 value];
    v33 = [v32 digits];

    if (!v33)
    {
      sub_1C2F766CC();
      v33 = sub_1C2F766AC();
    }

    v34 = TUHomeCountryCode();
    if (v34)
    {
      v26 = v34;
      sub_1C2F766CC();

      v27 = sub_1C2F766AC();
    }

    else
    {
      v27 = 0;
    }

    v28 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v33 countryCode:v27];

    ++v24;
    if (v28)
    {
      MEMORY[0x1C6928DA0]();
      if (*((v53 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v53 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C2F7680C();
      }

      sub_1C2F7682C();
      v25 = v53;
      v24 = v31;
    }
  }

  if (v25 >> 62)
  {
    v35 = sub_1C2F76BBC();
    if (v35)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v35 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v35)
    {
LABEL_24:
      v36 = 0;
      a1 = (v25 & 0xC000000000000001);
      do
      {
        if (a1)
        {
          v37 = MEMORY[0x1C6929250](v36, v25);
        }

        else
        {
          if (v36 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_36;
          }

          v37 = *(v25 + 8 * v36 + 32);
        }

        v38 = v37;
        v39 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_35;
        }

        result = [objc_opt_self() sharedPrivacyManager];
        if (!result)
        {
          __break(1u);
LABEL_58:
          __break(1u);
          return result;
        }

        v41 = result;
        [result setBlockIncomingCommunication:1 forPhoneNumber:v38];

        ++v36;
      }

      while (v39 != v35);
    }
  }

  v42 = [v51 emailAddresses];
  v43 = sub_1C2F767EC();

  if (v43 >> 62)
  {
    goto LABEL_53;
  }

  for (i = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C2F76BBC())
  {
    v45 = 0;
    while (1)
    {
      if ((v43 & 0xC000000000000001) != 0)
      {
        v46 = MEMORY[0x1C6929250](v45, v43);
      }

      else
      {
        if (v45 >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_52;
        }

        v46 = *(v43 + 8 * v45 + 32);
      }

      v47 = v46;
      v48 = v45 + 1;
      if (__OFADD__(v45, 1))
      {
        break;
      }

      result = [objc_opt_self() sharedPrivacyManager];
      if (!result)
      {
        goto LABEL_58;
      }

      v49 = result;
      v50 = [v47 value];
      [v49 setBlockIncomingCommunication:1 forEmailAddress:v50];

      ++v45;
      if (v48 == i)
      {
        goto LABEL_54;
      }
    }

    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    ;
  }

LABEL_54:
}

id sub_1C2F377E8(void *a1)
{
  v1 = [a1 phoneNumbers];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076AD0, &qword_1C2F7A4D0);
  v2 = sub_1C2F767EC();

  v39 = MEMORY[0x1E69E7CC0];
  if (v2 >> 62)
  {
LABEL_49:
    v37 = v2 & 0xFFFFFFFFFFFFFF8;
    v38 = sub_1C2F76BBC();
  }

  else
  {
    v37 = v2 & 0xFFFFFFFFFFFFFF8;
    v38 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = v2 & 0xC000000000000001;
  v36 = MEMORY[0x1E69E7CC0];
  while (v38 != v3)
  {
    if (v4)
    {
      v7 = MEMORY[0x1C6929250](v3, v2);
    }

    else
    {
      if (v3 >= *(v37 + 16))
      {
        goto LABEL_44;
      }

      v7 = *(v2 + 8 * v3 + 32);
    }

    v8 = v7;
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v10 = v2;
    v11 = [v7 value];
    v12 = [v11 digits];

    sub_1C2F766CC();
    v13 = TUHomeCountryCode();
    if (v13)
    {
      v14 = v13;
      sub_1C2F766CC();
      v16 = v15;
    }

    else
    {
      v16 = 0;
    }

    v17 = sub_1C2F766AC();

    v2 = v10;
    if (v16)
    {
      v5 = sub_1C2F766AC();
    }

    else
    {
      v5 = 0;
    }

    v6 = [objc_allocWithZone(MEMORY[0x1E69D8C98]) initWithDigits:v17 countryCode:v5];

    ++v3;
    if (v6)
    {
      MEMORY[0x1C6928DA0]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1C2F7680C();
      }

      sub_1C2F7682C();
      v36 = v39;
      v3 = v9;
    }
  }

  v18 = v36;
  if (v36 >> 62)
  {
    v19 = sub_1C2F76BBC();
    v18 = v36;
  }

  else
  {
    v19 = *((v36 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v19)
  {
    v20 = 0;
    v2 = v18 & 0xC000000000000001;
    v21 = v18 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v2)
      {
        v22 = MEMORY[0x1C6929250](v20, v18);
      }

      else
      {
        if (v20 >= *(v21 + 16))
        {
          goto LABEL_46;
        }

        v22 = *(v18 + 8 * v20 + 32);
      }

      v23 = v22;
      v24 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        goto LABEL_45;
      }

      result = [objc_opt_self() sharedPrivacyManager];
      if (!result)
      {
        __break(1u);
LABEL_56:
        __break(1u);
        return result;
      }

      v26 = result;
      [result setBlockIncomingCommunication:0 forPhoneNumber:v23];

      ++v20;
      v18 = v36;
    }

    while (v24 != v19);
  }

  v27 = [a1 emailAddresses];
  v28 = sub_1C2F767EC();

  if (v28 >> 62)
  {
    v29 = sub_1C2F76BBC();
    if (v29)
    {
      goto LABEL_34;
    }
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
LABEL_34:
      v2 = 0;
      do
      {
        if ((v28 & 0xC000000000000001) != 0)
        {
          v30 = MEMORY[0x1C6929250](v2, v28);
        }

        else
        {
          if (v2 >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_48;
          }

          v30 = *(v28 + 8 * v2 + 32);
        }

        v31 = v30;
        v32 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_47;
        }

        result = [objc_opt_self() sharedPrivacyManager];
        if (!result)
        {
          goto LABEL_56;
        }

        v33 = result;
        v34 = [v31 value];
        [v33 setBlockIncomingCommunication:0 forEmailAddress:v34];

        ++v2;
      }

      while (v32 != v29);
    }
  }
}

uint64_t sub_1C2F37C94()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  return result;
}

uint64_t sub_1C2F37D18(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
LABEL_16:
    v5 = sub_1C2F76BBC();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x1C6929250](v6, a3);
          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_13:
            __break(1u);
LABEL_14:

            return v7;
          }
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_16;
          }

          v7 = *(a3 + 8 * v6 + 32);

          v8 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_13;
          }
        }

        v12 = v7;
        v9 = a1(&v12);
        if (v3)
        {
          goto LABEL_14;
        }

        if (v9)
        {
          return v7;
        }

        ++v6;
      }

      while (v8 != v5);
    }
  }

  return 0;
}

uint64_t sub_1C2F37E3C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC075E20, &unk_1C2F78C00);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v18 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v18 = v9;
    v19 = v8;
    v20 = a3;
    v13 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_1C2EF6A3C(v13, v11, &unk_1EC075E20, &unk_1C2F78C00);
      v15 = a1(v11);
      if (v3)
      {
        return sub_1C2F0A8D8(v11, &unk_1EC075E20, &unk_1C2F78C00);
      }

      if (v15)
      {
        break;
      }

      sub_1C2F0A8D8(v11, &unk_1EC075E20, &unk_1C2F78C00);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v20;
        goto LABEL_10;
      }
    }

    a3 = v20;
    sub_1C2F09460(v11, v20, &unk_1EC075E20, &unk_1C2F78C00);
    v16 = 0;
LABEL_10:
    v9 = v18;
    v8 = v19;
  }

  else
  {
    v16 = 1;
  }

  return (*(v9 + 56))(a3, v16, 1, v8);
}

uint64_t LanguageSelectionViewModel.__allocating_init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v17 - v12;
  sub_1C2EF6A3C(a2, &v17 - v12, &unk_1EC076A90, &qword_1C2F78FF0);
  sub_1C2EF6A3C(a3, v11, &unk_1EC076A90, &qword_1C2F78FF0);
  v14 = sub_1C2F75B5C();
  v15 = swift_allocObject();
  LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(a1, v13, v11, a4, v14, 0);
  sub_1C2F0A8D8(a3, &unk_1EC076A90, &qword_1C2F78FF0);
  sub_1C2F0A8D8(a2, &unk_1EC076A90, &qword_1C2F78FF0);
  return v15;
}

uint64_t LanguageSelectionViewModel.__allocating_init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = swift_allocObject();
  LanguageSelectionViewModel.init(taskHint:defaultTranslateToLocale:currentTranslateToLocale:suggestedLanguages:preferredLanguages:useDedicatedMachPort:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

uint64_t sub_1C2F381DC(unint64_t a1)
{

  v4 = sub_1C2F1FAA8(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F38330(unint64_t a1)
{

  v4 = sub_1C2F1FAA8(v3, a1);

  if (v4)
  {
    *(v1 + 24) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F38484(uint64_t result)
{
  if (*(v1 + 32) == (result & 1))
  {
    *(v1 + 32) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t LanguageSelectionViewModel.prepare()()
{
  v1[8] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B10, &qword_1C2F7B970);
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B18, &qword_1C2F7B978);
  v1[12] = v3;
  v4 = *(v3 - 8);
  v1[13] = v4;
  v1[14] = *(v4 + 64);
  v1[15] = swift_task_alloc();
  v1[16] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B20, &qword_1C2F7B980);
  v1[17] = v5;
  v1[18] = *(v5 - 8);
  v1[19] = swift_task_alloc();
  sub_1C2F7688C();
  v1[20] = sub_1C2F7687C();
  v7 = sub_1C2F7684C();
  v1[21] = v7;
  v1[22] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C2F38778, v7, v6);
}

uint64_t sub_1C2F38778()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_observer;
  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_observer))
  {
    v3 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_initialUpdateTask);
    v0[25] = v3;
    if (v3)
    {

      v4 = swift_task_alloc();
      v0[26] = v4;
      *v4 = v0;
      v4[1] = sub_1C2F38D8C;

      return MEMORY[0x1EEE6DA40]();
    }

    else
    {

      v23 = v0[1];

      return v23();
    }
  }

  else
  {
    v5 = v0[16];
    v6 = v0[13];
    v26 = v0[15];
    v7 = v0[11];
    v25 = v0[12];
    v9 = v0[9];
    v8 = v0[10];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B28, &qword_1C2F7B988);
    (*(v8 + 104))(v7, *MEMORY[0x1E69E8650], v9);
    sub_1C2F768BC();
    (*(v8 + 8))(v7, v9);
    v10 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_taskHint);
    v11 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_useDedicatedMachPort);
    (*(v6 + 16))(v26, v5, v25);
    v12 = (*(v6 + 80) + 16) & ~*(v6 + 80);
    v13 = swift_allocObject();
    (*(v6 + 32))(v13 + v12, v26, v25);
    v14 = objc_allocWithZone(MEMORY[0x1E6982C00]);
    v0[6] = sub_1C2F3D7E4;
    v0[7] = v13;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_1C2F3D6D4;
    v0[5] = &block_descriptor_5;
    v15 = _Block_copy(v0 + 2);
    v16 = [v14 initWithTaskHint:v10 useDedicatedMachPort:v11 observations:v15];
    v0[23] = v16;
    _Block_release(v15);

    *(swift_allocObject() + 16) = v16;
    v17 = v16;
    sub_1C2F768DC();
    v18 = *(v1 + v2);
    *(v1 + v2) = v17;
    v19 = v17;

    v20 = swift_task_alloc();
    v0[24] = v20;
    *v20 = v0;
    v20[1] = sub_1C2F38B88;
    v21 = v0[19];
    v22 = v0[8];

    return sub_1C2F3F124(v21, v22);
  }
}

uint64_t sub_1C2F38B88()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1C2F38CA8, v3, v2);
}

uint64_t sub_1C2F38CA8()
{
  v1 = v0[23];
  v2 = v0[19];
  v3 = v0[17];
  v4 = v0[18];
  v5 = v0[16];
  v6 = v0[12];
  v7 = v0[13];

  (*(v7 + 8))(v5, v6);
  (*(v4 + 8))(v2, v3);

  v8 = v0[1];

  return v8();
}

uint64_t sub_1C2F38D8C()
{
  v1 = *v0;

  v2 = *(v1 + 176);
  v3 = *(v1 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1C2F38ED0, v3, v2);
}

uint64_t sub_1C2F38ED0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C2F38F60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B50, &qword_1C2F7BCD8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - v4;
  v7[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC076B18, &qword_1C2F7B978);
  sub_1C2F768FC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t LanguageSelectionViewModel.availableLanguages.getter()
{
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_1C2F75DAC();
}

uint64_t sub_1C2F39108@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  *a2 = *(v3 + 16);
}

uint64_t LanguageSelectionViewModel.suggestedLanguages.getter()
{
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_1C2F75DAC();
}

uint64_t sub_1C2F39284@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  *a2 = *(v3 + 24);
}

uint64_t sub_1C2F39378()
{
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  return *(v0 + 32);
}

uint64_t sub_1C2F39418@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  sub_1C2F75DAC();

  *a2 = *(v3 + 32);
  return result;
}

uint64_t sub_1C2F394C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[10] = a4;
  v5[11] = a5;
  sub_1C2F7688C();
  v5[12] = sub_1C2F7687C();
  v7 = sub_1C2F7684C();
  v5[13] = v7;
  v5[14] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C2F39558, v7, v6);
}

uint64_t sub_1C2F39558()
{
  v1 = *(v0 + 80);
  v3 = v1[3];
  v2 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_1C2F39630;

  return MEMORY[0x1EEE6DB20](v0 + 64, &unk_1C2F7BCA8, 0, v3, v2);
}

void sub_1C2F39630()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
  }

  else
  {
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);

    MEMORY[0x1EEE6DFA0](sub_1C2F39764, v3, v4);
  }
}

uint64_t sub_1C2F39764()
{

  v1 = v0[8];
  if (v1 != 1)
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_1C2F39A28(v1);
      sub_1C2F401C4(v1);
    }

    else
    {
      sub_1C2F401C4(v1);
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      if (*(Strong + 32) == 1)
      {
        *(Strong + 32) = 1;
      }

      else
      {
        v3 = Strong;
        swift_getKeyPath();
        v4 = swift_task_alloc();
        *(v4 + 16) = v3;
        *(v4 + 24) = 1;
        v0[9] = v3;
        sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
        sub_1C2F75D9C();
      }
    }
  }

  v5 = v0[1];

  return v5();
}

uint64_t sub_1C2F3992C()
{
  sub_1C2F7688C();
  *(v0 + 16) = sub_1C2F7687C();
  v2 = sub_1C2F7684C();

  return MEMORY[0x1EEE6DFA0](sub_1C2F399C0, v2, v1);
}

uint64_t sub_1C2F399C0()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1C2F39A28(unint64_t a1)
{
  v35 = sub_1C2F75C8C();
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v30 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDEBC620 != -1)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v3 = sub_1C2F761FC();
    __swift_project_value_buffer(v3, qword_1EDEBC628);
    v4 = sub_1C2F761DC();
    v5 = sub_1C2F769EC();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C2EF2000, v4, v5, "Update language model status", v6, 2u);
      MEMORY[0x1C6929E80](v6, -1, -1);
    }

    v7 = MEMORY[0x1E69E7CC0];
    if (a1)
    {
      v8 = a1;
    }

    else
    {
      v8 = MEMORY[0x1E69E7CC0];
    }

    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        break;
      }

      goto LABEL_9;
    }

    v9 = sub_1C2F76BBC();
    if (!v9)
    {
      break;
    }

LABEL_9:
    v37[0] = v7;

    sub_1C2F76D0C();
    if (v9 < 0)
    {
      __break(1u);
      goto LABEL_37;
    }

    a1 = 0;
    while (1)
    {
      if ((v8 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1C6929250](a1, v8);
        goto LABEL_12;
      }

      if ((a1 & 0x8000000000000000) != 0)
      {
        break;
      }

      if (a1 >= *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_19;
      }

      v10 = *(v8 + 8 * a1 + 32);
LABEL_12:
      v11 = v10;
      ++a1;
      sub_1C2F3B454(v10);

      sub_1C2F76CEC();
      sub_1C2F76D1C();
      sub_1C2F76D2C();
      sub_1C2F76CFC();
      if (v9 == a1)
      {

        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    swift_once();
  }

LABEL_23:

  v37[0] = sub_1C2F3ED30(v12, sub_1C2F3EF80);
  a1 = 0;
  sub_1C2F3DA48(v37);

  v13 = v36;
  sub_1C2F381DC(v37[0]);
  v14 = *(v13 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_suggestedLocales);
  v38 = v7;
  v15 = *(v14 + 16);
  if (!v15)
  {
    goto LABEL_34;
  }

  v16 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap;
  v32 = *(v33 + 16);
  v33 += 16;
  v17 = v14 + ((*(v33 + 64) + 32) & ~*(v33 + 64));
  v18 = *(v33 + 56);
  v30 = 0;
  v31 = v18;
  v19 = (v33 - 8);

  while (2)
  {
    v32(v34, v17, v35);
    v20 = sub_1C2F75B0C();
    v22 = v21;
    v23 = v36;
    swift_beginAccess();
    if (!*(*(v23 + v16) + 16))
    {

LABEL_26:
      swift_endAccess();
      (*v19)(v34, v35);
      goto LABEL_27;
    }

    sub_1C2EFAEC0(v20, v22);
    v25 = v24;

    if ((v25 & 1) == 0)
    {
      goto LABEL_26;
    }

    swift_endAccess();
    v26 = *v19;

    v27 = (v26)(v34, v35);
    MEMORY[0x1C6928DA0](v27);
    if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v38 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C2F7680C();
    }

    sub_1C2F7682C();
LABEL_27:
    v17 += v31;
    if (--v15)
    {
      continue;
    }

    break;
  }

  a1 = v30;
LABEL_34:

  v37[0] = sub_1C2F3ED30(v28, sub_1C2F3EF80);
  sub_1C2F3DA48(v37);
  if (!a1)
  {

    return sub_1C2F38330(v37[0]);
  }

LABEL_37:

  __break(1u);
  return result;
}

uint64_t LanguageSelectionViewModel.initialTranslateToModel.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v58 - v6;
  v8 = sub_1C2F75C8C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v68 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v66 = &v58 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v58 - v14;
  v16 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentTranslateTo;
  swift_beginAccess();
  sub_1C2EF6A3C(v1 + v16, v7, &unk_1EC076A90, &qword_1C2F78FF0);
  v17 = *(v9 + 48);
  v18 = v17(v7, 1, v8);
  v67 = v9;
  if (v18 == 1)
  {
    sub_1C2F0A8D8(v7, &unk_1EC076A90, &qword_1C2F78FF0);
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    v19 = sub_1C2F75B0C();
    v21 = v20;
    v22 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap;
    swift_beginAccess();
    v23 = *(v1 + v22);
    if (*(v23 + 16))
    {
      v24 = sub_1C2EFAEC0(v19, v21);
      v26 = v25;

      if (v26)
      {
        v27 = *(*(v23 + 56) + 8 * v24);
        swift_endAccess();
        v28 = *(v67 + 8);

        v29 = v15;
LABEL_43:
        v28(v29, v8);
        return v27;
      }
    }

    else
    {
    }

    swift_endAccess();
    v9 = v67;
    (*(v67 + 8))(v15, v8);
  }

  sub_1C2EF6A3C(v1 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_currentTranslateToLocale, v5, &unk_1EC076A90, &qword_1C2F78FF0);
  if (v17(v5, 1, v8) == 1)
  {
    sub_1C2F0A8D8(v5, &unk_1EC076A90, &qword_1C2F78FF0);
  }

  else
  {
    (*(v9 + 32))(v66, v5, v8);
    v30 = sub_1C2F75B0C();
    v32 = v31;
    v33 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap;
    swift_beginAccess();
    v34 = *(v1 + v33);
    if (*(v34 + 16))
    {
      v35 = sub_1C2EFAEC0(v30, v32);
      v37 = v36;

      if (v37)
      {
        v27 = *(*(v34 + 56) + 8 * v35);
        swift_endAccess();
        v38 = *(v9 + 8);

        v38(v66, v8);
        return v27;
      }
    }

    else
    {
    }

    swift_endAccess();
    (*(v9 + 8))(v66, v8);
  }

  swift_getKeyPath();
  v39 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel___observationRegistrar;
  v69 = v1;
  v65 = sub_1C2F3F75C(&qword_1EDEBCB18, type metadata accessor for LanguageSelectionViewModel, &protocol conformance descriptor for LanguageSelectionViewModel);
  v66 = v39;
  sub_1C2F75DAC();

  v40 = *(v1 + 16);
  v59 = v8;
  if (v40 >> 62)
  {
    goto LABEL_46;
  }

  for (i = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1C2F76BBC())
  {

    if (i)
    {
      v42 = 0;
      do
      {
        if ((v40 & 0xC000000000000001) != 0)
        {
          v27 = MEMORY[0x1C6929250](v42, v40);
          v43 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
LABEL_27:
            __break(1u);
            break;
          }
        }

        else
        {
          if (v42 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_45;
          }

          v27 = *(v40 + 8 * v42 + 32);

          v43 = v42 + 1;
          if (__OFADD__(v42, 1))
          {
            goto LABEL_27;
          }
        }

        swift_getKeyPath();
        v69 = v27;
        sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
        sub_1C2F75DAC();

        if (*(v27 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel))
        {
          goto LABEL_42;
        }

        ++v42;
      }

      while (v43 != i);
    }

    v64 = *(v1 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_preferredLanguages);
    v8 = v59;
    v60 = *(v64 + 16);
    if (!v60)
    {
      break;
    }

    v44 = 0;
    v40 = 0;
    v45 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap;
    v46 = v68;
    v62 = v64 + ((*(v67 + 80) + 32) & ~*(v67 + 80));
    v61 = v67 + 16;
    v63 = (v67 + 8);
    while (v44 < *(v64 + 16))
    {
      (*(v67 + 16))(v68, v62 + *(v67 + 72) * v44, v8);
      v47 = sub_1C2F75B0C();
      v49 = v48;
      swift_beginAccess();
      v50 = *(v1 + v45);
      if (*(v50 + 16))
      {
        v51 = sub_1C2EFAEC0(v47, v49);
        v53 = v52;

        if (v53)
        {
          v27 = *(*(v50 + 56) + 8 * v51);
          swift_endAccess();
          v28 = *v63;

          v29 = v68;
          goto LABEL_43;
        }
      }

      else
      {
      }

      swift_endAccess();
      swift_getKeyPath();
      v69 = v1;
      sub_1C2F75DAC();

      v55 = *(v1 + 16);
      MEMORY[0x1EEE9AC00](v54);
      *(&v58 - 2) = v46;

      v27 = sub_1C2F37D18(sub_1C2F3F7C4, (&v58 - 4), v55);

      (*v63)(v46, v8);
      if (v27)
      {
        return v27;
      }

      if (v60 == ++v44)
      {
        goto LABEL_37;
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    ;
  }

LABEL_37:
  swift_getKeyPath();
  v69 = v1;
  sub_1C2F75DAC();

  v56 = *(v1 + 16);
  if (!(v56 >> 62))
  {
    result = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (result)
    {
      goto LABEL_39;
    }

    return 0;
  }

  result = sub_1C2F76BBC();
  if (!result)
  {
    return 0;
  }

LABEL_39:
  if ((v56 & 0xC000000000000001) != 0)
  {

    v27 = MEMORY[0x1C6929250](0, v56);
LABEL_42:

    return v27;
  }

  if (*((v56 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(v56 + 32);

    return v27;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C2F3A738()
{
  v0 = sub_1C2F75C6C();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - v5;
  sub_1C2F75C7C();
  v7 = sub_1C2F75C2C();
  v9 = v8;
  v10 = *(v1 + 8);
  v10(v6, v0);
  sub_1C2F75C7C();
  v11 = sub_1C2F75C2C();
  v13 = v12;
  v10(v4, v0);
  if (v7 == v11 && v9 == v13)
  {
    v15 = 1;
  }

  else
  {
    v15 = sub_1C2F76EFC();
  }

  return v15 & 1;
}

Swift::Void __swiftcall LanguageSelectionViewModel.downloadModels(_:useCellular:)(Swift::OpaquePointer _, Swift::Bool useCellular)
{
  v44 = useCellular;
  v4 = sub_1C2F75C8C();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v48 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v43 - v7;
  v52 = MEMORY[0x1E69E7CC0];
  if (_._rawValue >> 62)
  {
LABEL_43:
    v9 = sub_1C2F76BBC();
  }

  else
  {
    v9 = *((_._rawValue & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v10 = MEMORY[0x1E69E7CC0];
  v43 = v8;
  if (v9)
  {
    v11 = 0;
    v46 = _._rawValue & 0xFFFFFFFFFFFFFF8;
    v47 = (_._rawValue & 0xC000000000000001);
    v45 = v9;
    while (1)
    {
      if (v47)
      {
        v8 = MEMORY[0x1C6929250](v11, _._rawValue);
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_17;
        }
      }

      else
      {
        if (v11 >= *(v46 + 16))
        {
          __break(1u);
          goto LABEL_43;
        }

        v8 = *(_._rawValue + v11 + 4);

        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
LABEL_17:
          __break(1u);
LABEL_18:
          v15 = v52;
          v10 = MEMORY[0x1E69E7CC0];
          if ((v52 & 0x8000000000000000) == 0)
          {
            goto LABEL_21;
          }

          goto LABEL_44;
        }
      }

      swift_getKeyPath();
      v2 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel___observationRegistrar;
      v51 = v8;
      sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
      sub_1C2F75DAC();

      v14 = OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state;
      if (*&v8[OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state] == 2)
      {

        v12 = v45;
      }

      else
      {
        swift_getKeyPath();
        v51 = v8;
        sub_1C2F75DAC();

        if (*&v8[v14] == 1)
        {
        }

        else
        {
          sub_1C2F76CEC();
          sub_1C2F76D1C();
          sub_1C2F76D2C();
          sub_1C2F76CFC();
        }

        v12 = v45;
      }

      ++v11;
      if (v13 == v12)
      {
        goto LABEL_18;
      }
    }
  }

  v15 = MEMORY[0x1E69E7CC0];
  if ((MEMORY[0x1E69E7CC0] & 0x8000000000000000) != 0)
  {
    goto LABEL_44;
  }

LABEL_21:
  if ((v15 & 0x4000000000000000) == 0)
  {
    v16 = *(v15 + 16);
    if (v16)
    {
      goto LABEL_23;
    }

LABEL_45:

    v2 = MEMORY[0x1E69E7CC0];
    _._rawValue = *(MEMORY[0x1E69E7CC0] + 16);
    if (!_._rawValue)
    {
      goto LABEL_46;
    }

    goto LABEL_32;
  }

LABEL_44:
  v16 = sub_1C2F76BBC();
  if (!v16)
  {
    goto LABEL_45;
  }

LABEL_23:
  v52 = v10;
  sub_1C2EF671C(0, v16 & ~(v16 >> 63), 0);
  if (v16 < 0)
  {
    __break(1u);
    goto LABEL_48;
  }

  v17 = 0;
  v2 = v52;
  v18 = (v49 + 16);
  v19 = v43;
  do
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v20 = MEMORY[0x1C6929250](v17, v15);
      (*v18)(v19, v20 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale, v50);
      swift_unknownObjectRelease();
    }

    else
    {
      (*v18)(v19, *(v15 + 8 * v17 + 32) + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale, v50);
    }

    v52 = v2;
    v22 = *(v2 + 16);
    v21 = *(v2 + 24);
    if (v22 >= v21 >> 1)
    {
      sub_1C2EF671C((v21 > 1), v22 + 1, 1);
      v19 = v43;
      v2 = v52;
    }

    ++v17;
    *(v2 + 16) = v22 + 1;
    (*(v49 + 32))(v2 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v22, v19, v50);
  }

  while (v16 != v17);

  _._rawValue = *(v2 + 16);
  if (_._rawValue)
  {
LABEL_32:
    if (qword_1EDEBC620 == -1)
    {
LABEL_33:
      v23 = sub_1C2F761FC();
      __swift_project_value_buffer(v23, qword_1EDEBC628);

      v24 = sub_1C2F761DC();
      v25 = sub_1C2F769EC();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v52 = v27;
        *v26 = 136315394;
        v28 = MEMORY[0x1C6928DD0](v2, v50);
        v30 = sub_1C2EFAB28(v28, v29, &v52);

        *(v26 + 4) = v30;
        *(v26 + 12) = 1024;
        *(v26 + 14) = v44;
        _os_log_impl(&dword_1C2EF2000, v24, v25, "Request download assets for %s useCellular: %{BOOL}d", v26, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v27);
        MEMORY[0x1C6929E80](v27, -1, -1);
        MEMORY[0x1C6929E80](v26, -1, -1);
      }

      v52 = MEMORY[0x1E69E7CC0];
      sub_1C2F08754(0, _._rawValue, 0);
      v31 = v52;
      v32 = *(v49 + 16);
      v33 = v2 + ((*(v49 + 80) + 32) & ~*(v49 + 80));
      v46 = *(v49 + 72);
      v47 = v32;
      v49 += 16;
      v34 = (v49 - 8);
      do
      {
        v35 = v48;
        v36 = v50;
        v47(v48, v33, v50);
        v37 = sub_1C2F75B0C();
        v39 = v38;
        (*v34)(v35, v36);
        v52 = v31;
        v41 = *(v31 + 16);
        v40 = *(v31 + 24);
        if (v41 >= v40 >> 1)
        {
          sub_1C2F08754((v40 > 1), v41 + 1, 1);
          v31 = v52;
        }

        *(v31 + 16) = v41 + 1;
        v42 = v31 + 16 * v41;
        *(v42 + 32) = v37;
        *(v42 + 40) = v39;
        v33 += v46;
        --_._rawValue;
      }

      while (_._rawValue);

      if (qword_1EC075C98 != -1)
      {
        swift_once();
      }

      sub_1C2F55744(v31, v44, nullsub_1, 0);
      goto LABEL_46;
    }

LABEL_48:
    swift_once();
    goto LABEL_33;
  }

LABEL_46:
}

uint64_t sub_1C2F3B020@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return sub_1C2EF6A3C(v2 + v4, a2, &unk_1EC076A90, &qword_1C2F78FF0);
}

uint64_t sub_1C2F3B090(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  sub_1C2F3F7E4(a1, v2 + v4);
  return swift_endAccess();
}

Swift::Void __swiftcall LanguageSelectionViewModel.updateSuggestedLanguages(_:)(Swift::OpaquePointer a1)
{
  v2 = v1;
  v4 = sub_1C2F75C8C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_suggestedLocales;

  v10 = sub_1C2F1FD2C(v9, a1._rawValue);

  if (v10)
  {
    return;
  }

  *(v2 + v8) = a1;

  v11 = *(v2 + v8);
  v35 = MEMORY[0x1E69E7CC0];
  v12 = *(v11 + 16);
  if (!v12)
  {
    goto LABEL_13;
  }

  v14 = *(v5 + 16);
  v13 = v5 + 16;
  v31 = v14;
  v32 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap;
  v15 = v11 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
  v16 = *(v13 + 56);
  v33 = v13;
  v29 = (v13 - 8);
  v30 = v16;
  v28[1] = v11;

  do
  {
    v17 = v4;
    v31(v7, v15, v4);
    v18 = sub_1C2F75B0C();
    v20 = v19;
    v21 = v32;
    swift_beginAccess();
    v22 = v2;
    if (!*(*(v2 + v21) + 16))
    {

LABEL_5:
      swift_endAccess();
      v4 = v17;
      (*v29)(v7, v17);
      goto LABEL_6;
    }

    sub_1C2EFAEC0(v18, v20);
    v24 = v23;

    if ((v24 & 1) == 0)
    {
      goto LABEL_5;
    }

    swift_endAccess();
    v25 = *v29;

    v4 = v17;
    v26 = (v25)(v7, v17);
    MEMORY[0x1C6928DA0](v26);
    if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1C2F7680C();
    }

    sub_1C2F7682C();
LABEL_6:
    v2 = v22;
    v15 += v30;
    --v12;
  }

  while (v12);

LABEL_13:

  v34[0] = sub_1C2F3ED30(v27, sub_1C2F3EF80);
  sub_1C2F3DA48(v34);

  sub_1C2F38330(v34[0]);
}

uint64_t sub_1C2F3B454(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076A90, &qword_1C2F78FF0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v83 - v5;
  v7 = sub_1C2F75C8C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v88 = &v83 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v83 - v14;
  v16 = [a1 locale];
  sub_1C2F75B9C();

  v17 = sub_1C2F75B0C();
  v19 = v18;
  v20 = *(v8 + 8);
  v92 = v8 + 8;
  v93 = v7;
  v91 = v20;
  v20(v15, v7);
  v21 = OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_modelMap;
  v90 = 0;
  swift_beginAccess();
  v87 = v21;
  v89 = v2;
  v22 = *(v2 + v21);
  if (*(v22 + 16))
  {
    v23 = sub_1C2EFAEC0(v17, v19);
    v25 = v24;

    if (v25)
    {
      v26 = *(*(v22 + 56) + 8 * v23);
      swift_endAccess();

      v27 = v93;
      v28 = &selRef_objectForKey_;
      goto LABEL_6;
    }
  }

  else
  {
  }

  swift_endAccess();
  v28 = &selRef_objectForKey_;
  v29 = [a1 locale];
  v30 = v88;
  sub_1C2F75B9C();

  type metadata accessor for LanguageSelectionDownloadModel(0);
  v26 = swift_allocObject();
  *(v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress) = 0;
  *(v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__downloadSize) = 0;
  *(v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state) = 0;
  *(v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel) = 0;
  sub_1C2F75DDC();
  v27 = v93;
  (*(v8 + 32))(v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel_locale, v30, v93);
LABEL_6:
  v31 = v28[128];
  v86 = a1;
  v32 = [a1 v31];
  sub_1C2F75B9C();

  v33 = sub_1C2F75B0C();
  v35 = v34;
  v36 = v91;
  v91(v11, v27);
  sub_1C2EF6A3C(v89 + OBJC_IVAR____TtC20CommunicationsUICore26LanguageSelectionViewModel_defaultTranslateToLocale, v6, &unk_1EC076A90, &qword_1C2F78FF0);
  if ((*(v8 + 48))(v6, 1, v27) == 1)
  {
    sub_1C2F0A8D8(v6, &unk_1EC076A90, &qword_1C2F78FF0);

    v37 = 0;
    v38 = (v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel);
    v39 = v86;
    v40 = (&FTMenuItem + 48);
    p_ivars = &FTMenuItem.ivars;
    if (*(v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel))
    {
LABEL_8:
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *(&v83 - 2) = v26;
      *(&v83 - 8) = v37 & 1;
      v95[0] = v26;
      sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
      v43 = v90;
      sub_1C2F75D9C();

      goto LABEL_15;
    }
  }

  else
  {
    v44 = sub_1C2F75B0C();
    v46 = v45;
    v36(v6, v27);
    if (v33 == v44 && v35 == v46)
    {

      v38 = (v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel);
      v37 = 1;
      v39 = v86;
      v40 = (&FTMenuItem + 48);
      p_ivars = (&FTMenuItem + 48);
      if ((*(v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    else
    {
      v37 = sub_1C2F76EFC();

      v38 = (v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel);
      v39 = v86;
      v40 = &FTMenuItem.ivars;
      p_ivars = &FTMenuItem.ivars;
      if ((v37 & 1) != *(v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel))
      {
        goto LABEL_8;
      }
    }
  }

  *v38 = v37 & 1;
  v43 = v90;
LABEL_15:
  swift_getKeyPath();
  v47 = p_ivars[285];
  v95[0] = v26;
  v48 = sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  v49 = v40[284];
  v50 = *(v49 + v26);
  if (v50 != [v39 status])
  {
    v86 = v48;
    v90 = v43;
    if (qword_1EDEBC620 != -1)
    {
      swift_once();
    }

    v51 = sub_1C2F761FC();
    __swift_project_value_buffer(v51, qword_1EDEBC628);
    v52 = v39;
    v53 = sub_1C2F761DC();
    v54 = sub_1C2F769EC();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v85 = v47;
      v56 = v55;
      v84 = swift_slowAlloc();
      v95[0] = v84;
      *v56 = 136315394;
      v57 = [v52 locale];
      v58 = v88;
      sub_1C2F75B9C();

      v59 = sub_1C2F75B0C();
      v61 = v60;
      v91(v58, v93);
      v62 = sub_1C2EFAB28(v59, v61, v95);

      *(v56 + 4) = v62;
      *(v56 + 12) = 2048;
      v63 = [v52 status];

      *(v56 + 14) = v63;
      _os_log_impl(&dword_1C2EF2000, v53, v54, "Update language model status for %s to %ld", v56, 0x16u);
      v64 = v84;
      __swift_destroy_boxed_opaque_existential_1Tm(v84);
      MEMORY[0x1C6929E80](v64, -1, -1);
      MEMORY[0x1C6929E80](v56, -1, -1);
    }

    else
    {
    }
  }

  v65 = [v39 status];
  if (*(v49 + v26) != v65)
  {
    v66 = v65;
    v67 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v67);
    *(&v83 - 2) = v26;
    *(&v83 - 1) = v66;
    v95[0] = v26;
    sub_1C2F75D9C();
  }

  v68 = v89;
  [v39 progress];
  v70 = v69;
  if (*(v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress) == v69)
  {
    *(v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress) = v69;
  }

  else
  {
    v71 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v71);
    *(&v83 - 2) = v26;
    *(&v83 - 1) = v70;
    v95[0] = v26;
    sub_1C2F75D9C();
  }

  v72 = [v39 downloadSize];
  if (*(v26 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__downloadSize) != v72)
  {
    v73 = v72;
    v74 = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](v74);
    *(&v83 - 2) = v26;
    *(&v83 - 1) = v73;
    v95[0] = v26;
    sub_1C2F75D9C();
  }

  v75 = [v39 locale];
  v76 = v88;
  sub_1C2F75B9C();

  v77 = sub_1C2F75B0C();
  v79 = v78;
  v91(v76, v93);
  v80 = v87;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v94 = *(v68 + v80);
  *(v68 + v80) = 0x8000000000000000;
  sub_1C2F6A400(v26, v77, v79, isUniquelyReferenced_nonNull_native);

  *(v68 + v80) = v94;
  swift_endAccess();
  return v26;
}

uint64_t sub_1C2F3BEA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[13] = sub_1C2F7688C();
  v5[14] = sub_1C2F7687C();
  v7 = sub_1C2F7684C();
  v5[15] = v7;
  v5[16] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C2F3BF44, v7, v6);
}

uint64_t sub_1C2F3BF44()
{
  v1 = v0[11];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1C2F7695C();

  swift_beginAccess();
  v6 = sub_1C2F7687C();
  v0[17] = v6;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v7 = swift_task_alloc();
  v0[18] = v7;
  *v7 = v0;
  v7[1] = sub_1C2F3C128;
  v8 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 10, v6, v8);
}

uint64_t sub_1C2F3C128()
{
  v2 = *v1;

  if (!v0)
  {

    v4 = *(v2 + 120);
    v5 = *(v2 + 128);

    return MEMORY[0x1EEE6DFA0](sub_1C2F3C23C, v4, v5);
  }

  return result;
}

uint64_t sub_1C2F3C23C()
{
  v1 = v0[10];
  if (v1 == 1)
  {

LABEL_8:
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
    v5 = v0[1];

    return v5();
  }

  if (!swift_weakLoadStrong())
  {

    sub_1C2F401C4(v1);
    goto LABEL_8;
  }

  sub_1C2F39A28(v1);

  sub_1C2F401C4(v1);
  v2 = sub_1C2F7687C();
  v0[17] = v2;
  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v3 = swift_task_alloc();
  v0[18] = v3;
  *v3 = v0;
  v3[1] = sub_1C2F3C128;
  v4 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6D8D0](v0 + 10, v2, v4);
}

double sub_1C2F3C3BC@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  result = *(v3 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress);
  *a2 = result;
  return result;
}

double sub_1C2F3C494()
{
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  return *(v0 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress);
}

void sub_1C2F3C53C(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress) == a1)
  {
    *(v1 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__progress) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
    sub_1C2F75D9C();
  }
}

uint64_t sub_1C2F3C65C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  *a2 = *(v3 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__downloadSize);
  return result;
}

uint64_t sub_1C2F3C770@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  *a2 = *(v3 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__state);
  return result;
}

uint64_t sub_1C2F3C85C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  return *(v2 + *a2);
}

uint64_t sub_1C2F3C924(uint64_t result, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t sub_1C2F3CA1C(uint64_t result)
{
  if (*(v1 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel) == (result & 1))
  {
    *(v1 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
    sub_1C2F75D9C();
  }

  return result;
}

uint64_t sub_1C2F3CB34(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC076030, qword_1C2F7C380);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v25 - v6;
  v8 = sub_1C2F75C6C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - v13;
  v15 = sub_1C2F75B3C();
  v31 = *(v15 - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v25 - v18;
  if (a1)
  {
    v28 = v17;
    v29 = v5;
    v30 = v9;
    sub_1C2F75C8C();
    sub_1C2F3F75C(&qword_1EC076610, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);

    if (sub_1C2F7662C())
    {

      v20 = 1;
    }

    else
    {
      sub_1C2F75C7C();
      sub_1C2F75C0C();
      v32 = *(v30 + 8);
      v32(v14, v8);
      v21 = v31;
      v30 = *(v31 + 48);
      if ((v30)(v7, 1, v15) != 1)
      {
        v26 = *(v21 + 32);
        v27 = v21 + 32;
        v26(v19, v7, v15);
        sub_1C2F75C7C();
        v7 = v29;
        sub_1C2F75C0C();
        v32(v12, v8);
        if ((v30)(v7, 1, v15) != 1)
        {
          v22 = v28;
          v26(v28, v7, v15);
          v20 = MEMORY[0x1C6928100](v19, v22);

          v23 = *(v31 + 8);
          v23(v22, v15);
          v23(v19, v15);
          return v20 & 1;
        }

        (*(v31 + 8))(v19, v15);
      }

      sub_1C2F0A8D8(v7, &unk_1EC076030, qword_1C2F7C380);
      v20 = 0;
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1C2F3CF4C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  *a2 = *(v3 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel);
  return result;
}

uint64_t sub_1C2F3D024()
{
  swift_getKeyPath();
  sub_1C2F3F75C(&qword_1EDEBC8D0, type metadata accessor for LanguageSelectionDownloadModel, &protocol conformance descriptor for LanguageSelectionDownloadModel);
  sub_1C2F75DAC();

  return *(v0 + OBJC_IVAR____TtC20CommunicationsUICore30LanguageSelectionDownloadModel__isDefaultModel);
}