uint64_t sub_1E3979930()
{
  sub_1E4203FC4();
  sub_1E3274AB4(&qword_1EE2882E0, MEMORY[0x1E69E7F60]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A730, &qword_1E429B000);
  sub_1E328FCF4(&qword_1EE23B5D0, &qword_1ECF2A730, &qword_1E429B000);
  return sub_1E42072E4();
}

void sub_1E3979A1C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF28E20, &unk_1E42986D0);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v46[-1] - v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  OUTLINED_FUNCTION_73(v5 + 16);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v18 = Strong;
    v19 = sub_1E324FBDC();
    (*(v12 + 16))(v16, v19, v10);

    v20 = sub_1E41FFC94();
    v21 = sub_1E4206814();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = OUTLINED_FUNCTION_6_21();
      v45 = v9;
      v23 = v3;
      v24 = v22;
      v25 = OUTLINED_FUNCTION_100();
      v46[0] = v25;
      *v24 = 136315138;
      v26 = OUTLINED_FUNCTION_11_6();
      *(v24 + 4) = sub_1E3270FC8(v26, v27, v28);
      _os_log_impl(&dword_1E323F000, v20, v21, "RootSplitViewController::STACK:: popping %s to root since expired from timer", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      OUTLINED_FUNCTION_6_0();
      v3 = v23;
      v9 = v45;
      OUTLINED_FUNCTION_6_0();
    }

    (*(v12 + 8))(v16, v10);
    v29 = *((*MEMORY[0x1E69E7D40] & *v18) + 0x290);

    v29(v30);
    v46[0] = v3;
    v46[1] = v1;
    sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
    OUTLINED_FUNCTION_155_3();
    sub_1E3CA4D00(v31, v32, v33, v34, v35, v36);

    v37 = v47;
    if (v47)
    {
      objc_opt_self();
      OUTLINED_FUNCTION_20_2();
      v38 = swift_dynamicCastObjCClass();
      if (v38)
      {
      }
    }

    sub_1E41FE5D4();
    OUTLINED_FUNCTION_32_2();
    __swift_storeEnumTagSinglePayload(v39, v40, v41, v42);
    OUTLINED_FUNCTION_11_3(v18 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_stackExpirationDates, v46);

    sub_1E39721B4(v9, v3, v1);
    swift_endAccess();
    OUTLINED_FUNCTION_11_3(v18 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_stackExpirationWorkItems, v46);
    v43 = OUTLINED_FUNCTION_32_12();
    sub_1E397A700(v43, v44);
    swift_endAccess();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3979D78(void *a1, uint64_t a2)
{
  OUTLINED_FUNCTION_21();
  (*(v5 + 656))();
  OUTLINED_FUNCTION_16_11();
  sub_1E3280A90(0, &qword_1EE23B250, 0x1E69DD258);
  v6 = OUTLINED_FUNCTION_146();
  sub_1E3CA4CF0(v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_60_1();

  v11 = 0;
  v12 = 1 << *(v2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(v2 + 64);
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = v11;
LABEL_10:
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
    if (*(*(v2 + 56) + ((v16 << 9) | (8 * v17))) == a1)
    {

      if (a2)
      {
        sub_1E42074B4();
        v18 = sub_1E397BF94(a1);
        if (v19)
        {
          v20 = v19;
        }

        else
        {
          v18 = 0x6E776F6E6B6E75;
          v20 = 0xE700000000000000;
        }

        MEMORY[0x1E69109E0](v18, v20);

        MEMORY[0x1E69109E0](0x726620746E657720, 0xEB00000000206D6FLL);
        OUTLINED_FUNCTION_75();
        v21 = sub_1E4207944();
        MEMORY[0x1E69109E0](v21);

        MEMORY[0x1E69109E0](544175136, 0xE400000000000000);
        OUTLINED_FUNCTION_75();
        v22 = sub_1E4207944();
        MEMORY[0x1E69109E0](v22);

        v23 = OUTLINED_FUNCTION_89_4();
        MEMORY[0x1E69109E0](v23, v24 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000);
        v25 = [*(v2 + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_rootControllerConfig) normalControllerLimit];
        v26 = v25;
        if (v25)
        {
          v27 = [v25 integerValue];
        }

        else
        {
          v27 = 0;
        }

        OUTLINED_FUNCTION_12_5();
        (*(v28 + 1112))(v27);
      }

      return;
    }
  }

  while (1)
  {
    v16 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      __break(1u);
      return;
    }

    if (v16 >= v15)
    {
      break;
    }

    v14 = *(v2 + 64 + 8 * v16);
    ++v11;
    if (v14)
    {
      v11 = v16;
      goto LABEL_10;
    }
  }
}

void *sub_1E397A120(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F340, &qword_1E42E8F20);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[5 * v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F0F0, qword_1E42AD1A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E397A258(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF294A0, &unk_1E429B0E0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E397A388(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * ((v5 - 32) / 16);
  return v4;
}

void *sub_1E397A404(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E397A5D4(a1, a2, a3, *v3, &unk_1ECF2F330, &unk_1E42AE308);
  *v3 = result;
  return result;
}

void *sub_1E397A444(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E397A4A4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1E397A464(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E397A5D4(a1, a2, a3, *v3, &unk_1ECF2F340, &qword_1E42E8F20);
  *v3 = result;
  return result;
}

void *sub_1E397A4A4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B7A0, &qword_1E42AB350);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || &a4[v8 + 4] <= v10 + 4)
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1E397A5D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = a4[3];
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = a4[2];
  if (v9 <= v10)
  {
    v11 = a4[2];
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v12[2] = v10;
    v12[3] = 2 * ((v13 - 32) / 40);
  }

  else
  {
    v12 = MEMORY[0x1E69E7CC0];
  }

  if (v7)
  {
    if (v12 != a4 || &a4[5 * v10 + 4] <= v12 + 4)
    {
      v15 = OUTLINED_FUNCTION_39_0();
      memmove(v15, v16, v17);
    }

    a4[2] = 0;
  }

  else
  {
    v18 = OUTLINED_FUNCTION_67_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
    OUTLINED_FUNCTION_39_0();
    swift_arrayInitWithCopy();
  }

  return v12;
}

uint64_t sub_1E397A700(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = sub_1E327D33C(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F228, &qword_1E42AE198);
  sub_1E4207644();

  v7 = *(*(v9 + 56) + 8 * v6);
  sub_1E4204054();
  sub_1E4207664();
  *v3 = v9;
  return v7;
}

uint64_t sub_1E397A7DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = sub_1E327D33C(a1, a2);
  if (v6)
  {
    v7 = v5;
    swift_isUniquelyReferenced_nonNull_native();
    v14 = *v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F218, &qword_1E42AE190);
    sub_1E4207644();

    v8 = *(v14 + 56);
    v9 = sub_1E41FE5D4();
    (*(*(v9 - 8) + 32))(a3, v8 + *(*(v9 - 8) + 72) * v7, v9);
    sub_1E4207664();
    *v3 = v14;
    v10 = a3;
    v11 = 0;
    v12 = v9;
  }

  else
  {
    v12 = sub_1E41FE5D4();
    v10 = a3;
    v11 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v10, v11, 1, v12);
}

void sub_1E397A924(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0, &qword_1E429A1F0);
  v6 = sub_1E4207724();
  v7 = v6;
  if (!*(v5 + 16))
  {

LABEL_33:
    *v3 = v7;
    return;
  }

  v35 = v2;
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
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    if (v4)
    {
      v34 = 1 << *(v5 + 32);
      if (v34 >= 64)
      {
        sub_1E373CBF0(0, (v34 + 63) >> 6, v5 + 64);
      }

      else
      {
        *v9 = -1 << v34;
      }

      *(v5 + 16) = 0;
    }

    v3 = v35;
    goto LABEL_33;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(v5 + 48) + 40 * v18;
    if (v4)
    {
      v20 = *v19;
      v21 = *(v19 + 16);
      v39 = *(v19 + 32);
      v37 = v20;
      v38 = v21;
      sub_1E329504C((*(v5 + 56) + 32 * v18), v36);
    }

    else
    {
      sub_1E374E74C(v19, &v37);
      sub_1E328438C(*(v5 + 56) + 32 * v18, v36);
    }

    v22 = sub_1E42073F4();
    v23 = -1 << *(v7 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
    {
      break;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_24:
    *(v14 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v7 + 48) + 40 * v26;
    v32 = v37;
    v33 = v38;
    *(v31 + 32) = v39;
    *v31 = v32;
    *(v31 + 16) = v33;
    sub_1E329504C(v36, (*(v7 + 56) + 32 * v26));
    ++*(v7 + 16);
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v27 = 0;
  v28 = (63 - v23) >> 6;
  while (++v25 != v28 || (v27 & 1) == 0)
  {
    v29 = v25 == v28;
    if (v25 == v28)
    {
      v25 = 0;
    }

    v27 |= v29;
    v30 = *(v14 + 8 * v25);
    if (v30 != -1)
    {
      v26 = __clz(__rbit64(~v30)) + (v25 << 6);
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
}

void sub_1E397ABD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v7 = v6;
  v13 = *v6;
  v14 = sub_1E327D33C(a4, a5);
  if (__OFADD__(v13[2], (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v14;
  v17 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F360, &qword_1E42AE318);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_1E327D33C(a4, a5);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v16 = v18;
LABEL_5:
  v20 = *v7;
  if (v17)
  {
    v21 = (v20[7] + 24 * v16);
    *v21 = a1;
    v21[1] = a2;
    v21[2] = a3;
  }

  else
  {
    sub_1E397B000(v16, a4, a5, a1, a2, a3, v20);
  }
}

void sub_1E397AD50(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F228, &qword_1E42AE198);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E327D33C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    *(v16[7] + 8 * v12) = a1;
  }

  else
  {
    sub_1E377E1B0(v12, a2, a3, a1, v16);
  }
}

void sub_1E397AE8C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_1E327D33C(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F218, &qword_1E42AE190);
  if ((sub_1E4207644() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_1E327D33C(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_1E4207A74();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = sub_1E41FE5D4();
    v19 = *(v18 - 8);
    v20 = *(v19 + 40);
    v21 = v18;
    v22 = v17 + *(v19 + 72) * v12;

    v20(v22, a1, v21);
  }

  else
  {
    sub_1E397B054(v12, a2, a3, a1, v16);
  }
}

unint64_t sub_1E397B000(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  a7[(result >> 6) + 8] |= 1 << result;
  v7 = (a7[6] + 16 * result);
  *v7 = a2;
  v7[1] = a3;
  v8 = (a7[7] + 24 * result);
  *v8 = a4;
  v8[1] = a5;
  v8[2] = a6;
  v9 = a7[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a7[2] = v11;
  }

  return result;
}

uint64_t sub_1E397B054(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = sub_1E41FE5D4();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

void sub_1E397B104(uint64_t a1)
{
  if (*(*v1 + 16))
  {
    v3 = a1 + 56;
    v4 = 1 << *(a1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(a1 + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        sub_1E397B708(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }
}

uint64_t sub_1E397B230(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v56 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        sub_1E4207B44();

        sub_1E4206014();
        v20 = sub_1E4207BA4();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (sub_1E42079A4() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              MEMORY[0x1EEE9AC00](v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                sub_1E4207B44();

                sub_1E4206014();
                v34 = sub_1E4207BA4();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = sub_1E42079A4();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = MEMORY[0x1E69E7CD0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = sub_1E38689E8(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = sub_1E397BA1C(v41, v44, (v5 + 56), v44, v5, v7, v52);

            MEMORY[0x1E69143B0](v41, -1, -1);
            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    sub_1E34AF4DC(v14);
  }

  else
  {

    return MEMORY[0x1E69E7CD0];
  }

  return v5;
}

uint64_t sub_1E397B708(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1E4207B44();
  sub_1E4206014();
  v6 = sub_1E4207BA4();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (sub_1E42079A4() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1E377EB28();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  sub_1E397BAA4(v8);
  *v2 = v15;
  return v13;
}

unint64_t *sub_1E397B830(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    sub_1E4207B44();

    sub_1E4206014();
    v16 = sub_1E4207BA4();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = sub_1E42079A4();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return sub_1E38689E8(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *sub_1E397BA1C(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = sub_1E397B830(a1, a2, a5, a6, a7);

  return v12;
}

void sub_1E397BAA4(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1E4207304();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1E4207B44();

        sub_1E4206014();
        v10 = sub_1E4207BA4();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
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
}

uint64_t sub_1E397BC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E374E74C(a3, a1);

  return sub_1E328438C(a4, a2);
}

void sub_1E397BCB8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1E394CDB0(a1, a2, a3, v38);
  v34 = v38[0];
  v35 = v38[1];
  v36 = v38[2];
  v37 = v39;

  while (1)
  {
    sub_1E397C154(&v30);
    if (!*(&v31 + 1))
    {
      sub_1E34AF4DC(v34);

      return;
    }

    v27 = v30;
    v28 = v31;
    v29 = v32;
    sub_1E329504C(&v33, v26);
    v7 = *a5;
    v9 = sub_1E375D924(&v27);
    v10 = *(v7 + 16);
    v11 = (v8 & 1) == 0;
    v12 = v10 + v11;
    if (__OFADD__(v10, v11))
    {
      break;
    }

    v13 = v8;
    if (*(v7 + 24) >= v12)
    {
      if (a4)
      {
        if (v8)
        {
          goto LABEL_10;
        }
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2CCF0, &qword_1E42A7D40);
        sub_1E4207654();
        if (v13)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1E397A924(v12, a4 & 1);
      v14 = sub_1E375D924(&v27);
      if ((v13 & 1) != (v15 & 1))
      {
        goto LABEL_18;
      }

      v9 = v14;
      if (v13)
      {
LABEL_10:
        v16 = *a5;
        sub_1E328438C(*(*a5 + 56) + 32 * v9, v25);
        __swift_destroy_boxed_opaque_existential_1(v26);
        sub_1E375D84C(&v27);
        v17 = (*(v16 + 56) + 32 * v9);
        __swift_destroy_boxed_opaque_existential_1(v17);
        sub_1E329504C(v25, v17);
        goto LABEL_14;
      }
    }

    v18 = *a5;
    *(*a5 + 8 * (v9 >> 6) + 64) |= 1 << v9;
    v19 = v18[6] + 40 * v9;
    v20 = v27;
    v21 = v28;
    *(v19 + 32) = v29;
    *v19 = v20;
    *(v19 + 16) = v21;
    sub_1E329504C(v26, (v18[7] + 32 * v9));
    v22 = v18[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v18[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  sub_1E4207A74();
  __break(1u);
}

uint64_t sub_1E397BF30(void *a1)
{
  v2 = [a1 doNotPurgeList];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E42062B4();

  return v3;
}

uint64_t sub_1E397BF94(void *a1)
{
  v1 = [a1 vuiViewControllerIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

void sub_1E397BFF8(void *a1, void *a2, unint64_t a3, uint64_t a4)
{
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
    v13 = 0;
LABEL_20:
    *a1 = a4;
    a1[1] = v6;
    a1[2] = ~v7;
    a1[3] = v13;
    a1[4] = v9;
    return;
  }

  if (!a3)
  {
    v13 = 0;
    goto LABEL_20;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    v12 = 0;
    v13 = 0;
    while (v12 < a3)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        goto LABEL_24;
      }

      if (!v9)
      {
        while (1)
        {
          v15 = v13 + 1;
          if (__OFADD__(v13, 1))
          {
            break;
          }

          if (v15 >= ((63 - v7) >> 6))
          {
            v9 = 0;
            goto LABEL_20;
          }

          v9 = *(v6 + 8 * v15);
          ++v13;
          if (v9)
          {
            goto LABEL_15;
          }
        }

        __break(1u);
        break;
      }

      v15 = v13;
LABEL_15:
      v16 = (*(a4 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v9)))));
      v17 = v16[1];
      v9 &= v9 - 1;
      *v11 = *v16;
      v11[1] = v17;
      if (v14 == a3)
      {

        v13 = v15;
        goto LABEL_20;
      }

      v11 += 2;

      v12 = v14;
      v13 = v15;
    }

    __break(1u);
LABEL_24:
    __break(1u);
  }

  __break(1u);
}

_OWORD *sub_1E397C154@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_1E374E74C(*(v3 + 48) + 40 * v10, &v14);
    sub_1E328438C(*(v3 + 56) + 32 * v10, v19);
    v20 = v14;
    v21 = v15;
    *&v22 = v16;
    result = sub_1E329504C(v19, (&v22 + 8));
    v12 = *(&v21 + 1);
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v12)
    {
      v13 = v1[5];
      v14 = v20;
      *&v15 = v21;
      *(&v15 + 1) = v12;
      v16 = v22;
      v17 = v23;
      v18 = v24;
      v13(&v14);
      return sub_1E325F6F0(&v14, &qword_1ECF28E40, &unk_1E4298920);
    }

    else
    {
      *(a1 + 64) = 0;
      *(a1 + 32) = 0u;
      *(a1 + 48) = 0u;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v12 = 0;
        v9 = 0;
        v24 = 0;
        v22 = 0u;
        v23 = 0u;
        v20 = 0u;
        v21 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1E397C2CC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t *, uint64_t))
{
  v12[3] = a4;
  v12[4] = a5;
  __swift_allocate_boxed_opaque_existential_1(v12);
  OUTLINED_FUNCTION_37_1();
  (*(v9 + 32))();
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return a6(v12, v10 + 40 * a1 + 32);
}

uint64_t sub_1E397C370(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F208, &qword_1E42AE180);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E397C3E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE26A000[0];
  if (!qword_1EE26A000[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE26A000);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for RootSplitViewManager.Mode(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E397C514(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E397C568(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void sub_1E397C5D8()
{
  v1 = [*(v0 + 16) popToRootViewControllerAnimated_];
}

uint64_t sub_1E397C618()
{
  v1 = v0[3];
  v2 = v0[4];
  OUTLINED_FUNCTION_5_0(v0[2] + 16, v6);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC8VideosUI20RootSplitViewManager_preloadedImageViewModelsMap) = v1;
  }

  return v2();
}

uint64_t OUTLINED_FUNCTION_58_13()
{

  return sub_1E4205E84();
}

double OUTLINED_FUNCTION_94_7(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11)
{

  return sub_1E3277E60(a1, a2, v11, &a11);
}

uint64_t OUTLINED_FUNCTION_108_5(uint64_t a1, uint64_t a2)
{
  *(v2 - 240) = a1;
  *(v2 - 232) = a2;
  return v2 - 240;
}

uint64_t OUTLINED_FUNCTION_127_4(uint64_t a1)
{
  v4 = *(v1 + 56) + 32 * a1;

  return sub_1E328438C(v4, v2 - 232);
}

uint64_t OUTLINED_FUNCTION_128_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  return sub_1E325F6F0(va, v4, v5);
}

void OUTLINED_FUNCTION_144_3(uint64_t a1@<X8>)
{
  v4 = *(a1 - 256);
  *(v4 + 16) = v1;
  *(v4 + 8 * v2 + 32) = v3;
}

void OUTLINED_FUNCTION_150_4(uint64_t a1@<X8>)
{
  v2 = (v1 + a1);
  *v2 = 0;
  v2[1] = 0;
}

double OUTLINED_FUNCTION_152_3()
{
  result = 0.0;
  *(v0 - 176) = 0u;
  *(v0 - 160) = 0u;
  return result;
}

void OUTLINED_FUNCTION_170_1()
{

  sub_1E3976970();
}

uint64_t OUTLINED_FUNCTION_171_1(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_1E4207414();
}

id OUTLINED_FUNCTION_173_1(uint64_t a1, const char *a2)
{

  return [v3 a2];
}

uint64_t sub_1E397C978(char a1)
{
  type metadata accessor for TextLayout();
  *(v1 + 104) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v1 + 112) = sub_1E3BD61D8();
  *(v1 + 120) = a1 & 1;
  v3 = sub_1E3C2F9A0();

  sub_1E397C9F4();

  return v3;
}

double sub_1E397C9F4()
{
  v1 = v0;
  v2 = objc_opt_self();
  (*(*v0 + 752))([v2 clearColor]);
  sub_1E3280A90(0, &qword_1EE23AE20, 0x1E69DC888);
  v3 = sub_1E4206F24();
  v4 = [v3 colorWithAlphaComponent_];

  OUTLINED_FUNCTION_9_2();
  (*(v5 + 680))(v4);
  OUTLINED_FUNCTION_9_2();
  v7 = *(v6 + 1712);
  v7();
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 1696))(22);

  (v7)(v9);
  OUTLINED_FUNCTION_2_1();
  (*(v10 + 1792))(5);

  v12 = (v7)(v11);
  OUTLINED_FUNCTION_9_2();
  v14 = *(v13 + 672);
  v15 = v14();
  (*(*v12 + 680))(v15);

  OUTLINED_FUNCTION_9_2();
  v17 = *(v16 + 1736);
  v18 = v17();
  v19 = v14();
  (*(*v18 + 680))(v19);

  LOBYTE(v18) = *(v1 + 120);
  (v17)(v20);
  sub_1E3952C58();
  OUTLINED_FUNCTION_6_22();
  (*(v21 + 160))(v39);

  if (v18)
  {
    v23 = (v17)(v22);
    v24 = [objc_opt_self() configurationWithTextStyle:*MEMORY[0x1E69DDDC8] scale:3];
  }

  else
  {
    v23 = (v17)(v22);
    sub_1E3280A90(0, &qword_1ECF29388, 0x1E69DB878);
    v25 = sub_1E4206E84();
    v24 = [objc_opt_self() configurationWithFont_];
  }

  (*(*v23 + 1952))(v24);

  v26 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
  v27 = [v2 blackColor];
  v28 = [v27 colorWithAlphaComponent_];

  [v26 setShadowColor_];
  [v26 setShadowOffset_];
  (v7)([v26 setShadowBlurRadius_]);
  OUTLINED_FUNCTION_2_1();
  v30 = *(v29 + 608);
  v31 = v26;
  v30(v26);

  (v17)(v32);
  OUTLINED_FUNCTION_2_1();
  (*(v33 + 608))(v26);

  v35 = (v7)(v34);
  sub_1E3C37CBC(v35, 23);

  v37 = (v17)(v36);
  sub_1E3C37CBC(v37, 39);

  return result;
}

uint64_t sub_1E397D068()
{
  type metadata accessor for TextLayout();
  *(v0 + 104) = sub_1E383BCC0();
  type metadata accessor for ImageLayout();
  *(v0 + 112) = sub_1E3BD61D8();
  *(v0 + 120) = 0;
  v1 = sub_1E3C2F9A0();

  sub_1E397C9F4();

  return v1;
}

uint64_t sub_1E397D0D4()
{
  v0 = sub_1E37BD5C4();

  return MEMORY[0x1EEE6BDC0](v0, 121, 7);
}

unint64_t sub_1E397D108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF2F3D0;
  if (!qword_1ECF2F3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F3D0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for PageSwipeUpViewLayout.Host(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E397D25C()
{
  v3[3] = &unk_1F5D5D6D8;
  v3[4] = &off_1F5D5C8B8;
  LOBYTE(v3[0]) = 3;
  v0 = sub_1E39C29F0(v3, 0);
  __swift_destroy_boxed_opaque_existential_1(v3);
  if (v0)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E397D2C8();
  }

  return v1 & 1;
}

id sub_1E397D2C8()
{
  LOBYTE(v6) = 5;
  (*(*v0 + 776))(v7, &v6, &unk_1F5D5D6D8, &off_1F5D5C8B8);
  if (!v7[3])
  {
    sub_1E329505C(v7);
    return 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  if (!*(v6 + 16))
  {

    return 0;
  }

  v1 = [objc_opt_self() defaultMediaLibrary];
  v2 = objc_opt_self();
  v3 = sub_1E42062A4();

  v4 = [v2 vui:v1 hasEpisodesInSeasonsQueryWithMediaLibrary:v3 seasonCanonicalIds:?];

  return v4;
}

__n128 sub_1E397D420@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>, double a7@<D1>, double a8@<D2>, double a9@<D3>, double a10@<D4>, double a11@<D5>)
{
  v11 = *(a4 + 32) & 1;
  *a5 = a1;
  *(a5 + 8) = a6;
  *(a5 + 16) = a7;
  *(a5 + 24) = a2;
  *(a5 + 32) = a3;
  result = *a4;
  v13 = *(a4 + 16);
  *(a5 + 40) = *a4;
  *(a5 + 56) = v13;
  *(a5 + 72) = v11;
  *(a5 + 80) = a8;
  *(a5 + 88) = a9;
  *(a5 + 96) = a10;
  *(a5 + 104) = a11;
  return result;
}

double sub_1E397D470()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_padding;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_padding, v3);
  return *v1;
}

uint64_t sub_1E397D4B4()
{
  OUTLINED_FUNCTION_0_8();
  v5 = (v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_padding);
  result = OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_padding, v7);
  *v5 = v4;
  v5[1] = v3;
  v5[2] = v2;
  v5[3] = v1;
  return result;
}

double sub_1E397D55C(uint64_t a1)
{
  OUTLINED_FUNCTION_0_12(a1);

  return result;
}

uint64_t sub_1E397D594(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers;
  OUTLINED_FUNCTION_3_0(&v1[OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers], v16);
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = (v4 + 32);
    do
    {
      v7 = *v6;
      v6 += 14;
      [v7 vui_removeFromSuperView];
      --v5;
    }

    while (v5);
  }

  else
  {
    v8 = OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers;
    OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers], v17);
    if (!*(*&v1[v8] + 16))
    {
    }
  }

  v9 = OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers;
  OUTLINED_FUNCTION_5_0(&v1[OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers], v18);
  v10 = *(*&v1[v9] + 16);
  if (v10)
  {
    v11 =  + 64;
    do
    {
      v12 = *(v11 - 32);

      v13 = v12;
      if ([v1 vuiDebugUI])
      {
        v14 = [objc_opt_self() randomColor];
        [v13 setVuiBackgroundColor_];
      }

      v11 += 112;
      [v1 vui:v13 addSubview:0 oldView:?];

      --v10;
    }

    while (v10);
  }

  [v1 vui_setNeedsLayout];
}

uint64_t sub_1E397D730()
{
  v2 = OUTLINED_FUNCTION_12_11();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_3_9(v3);
  v4 = OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers;
  OUTLINED_FUNCTION_4_13();
  *(v1 + 24) = *(v0 + v4);

  return OUTLINED_FUNCTION_27_0();
}

void sub_1E397D798(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {

    sub_1E397D594(v4);
  }

  else
  {
    sub_1E397D594(v3);
  }

  free(v2);
}

uint64_t sub_1E397D7FC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI11OverlayView_overlayType;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

id sub_1E397D830(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI11OverlayView_overlayType;
  OUTLINED_FUNCTION_3_0(&v1[OBJC_IVAR____TtC8VideosUI11OverlayView_overlayType], v5);
  v1[v3] = a1;
  return [v1 vui_setNeedsDisplay];
}

id (*sub_1E397D888(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E397D8DC;
}

id sub_1E397D8DC(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    v5 = *(a1 + 24);

    return [v5 vui_setNeedsDisplay];
  }

  return result;
}

void *sub_1E397D930(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI11OverlayView_gradientLayer;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E397D96C(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC8VideosUI11OverlayView_gradientLayer;
  OUTLINED_FUNCTION_3_0(v2 + OBJC_IVAR____TtC8VideosUI11OverlayView_gradientLayer, &v18);
  v5 = *(v2 + v4);
  *(v2 + v4) = a1;
  v6 = OBJC_IVAR____TtC8VideosUI11OverlayView_gradientLayer;
  v7 = a1;
  OUTLINED_FUNCTION_5_0(v2 + v6, v19);
  v8 = *(v2 + v6);
  if (!v8)
  {
    if (!v5)
    {
LABEL_10:
      v10 = v5;
      goto LABEL_11;
    }

LABEL_6:
    v12 = [v5 removeFromSuperlayer];
    v13 = (*((*MEMORY[0x1E69E7D40] & *v2) + 0xF0))(v12);
    if (v13)
    {
      v14 = v13;
      v15 = *(v2 + v6);
      if (v15)
      {
        v16 = v15;
        [v14 bounds];
        [v16 setFrame_];
        v17 = [v14 vuiLayer];
        [v17 addSublayer_];
      }
    }

    goto LABEL_10;
  }

  if (!v5)
  {
    goto LABEL_6;
  }

  sub_1E3280A90(0, &qword_1EE23AE70, 0x1E6979398);
  v9 = v8;
  v10 = v5;
  v11 = sub_1E4206F64();

  if ((v11 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_11:
  [v2 vui_setNeedsLayout];
}

uint64_t sub_1E397DB14()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E397DB90(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI11OverlayView_gradientView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E397DBCC(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI11OverlayView_gradientView;
  OUTLINED_FUNCTION_3_0(&v1[OBJC_IVAR____TtC8VideosUI11OverlayView_gradientView], &v12);
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI11OverlayView_gradientView;
  v6 = a1;
  OUTLINED_FUNCTION_5_0(&v1[v5], v13);
  v7 = *&v1[v5];
  v8 = [v1 vuiSubviews];
  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  v9 = sub_1E42062B4();

  if (!sub_1E32AE9B0(v9))
  {
    v11 = 0;
    goto LABEL_7;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1E6911E60](0, v9);
    goto LABEL_5;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v10 = *(v9 + 32);
LABEL_5:
    v11 = v10;
LABEL_7:

    [v1 vui:v7 insertSubview:v11 belowSubview:v4 oldView:?];

    return;
  }

  __break(1u);
}

uint64_t sub_1E397DD08()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void sub_1E397DD84(uint64_t a1, char a2, void (*a3)(id))
{
  v4 = *a1;
  v6 = (*a1 + 24);
  v5 = *v6;
  if (a2)
  {
    v7 = v5;
    a3(v5);
  }

  else
  {
    a3(*(*a1 + 24));
  }

  free(v4);
}

void *sub_1E397DE04(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI11OverlayView_titleLabel;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E397DE4C()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E397DEC8(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI11OverlayView_textBadge;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

uint64_t sub_1E397DF10()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

void *sub_1E397DF8C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI11OverlayView_progressView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E397DFD4(void *a1, uint64_t *a2)
{
  v5 = *a2;
  OUTLINED_FUNCTION_3_0(&v2[*a2], &v9);
  v6 = *&v2[v5];
  *&v2[v5] = a1;
  v7 = *a2;
  v8 = a1;
  OUTLINED_FUNCTION_5_0(&v2[v7], v10);
  [v2 vui:*&v2[v7] addSubview:v6 oldView:?];
}

uint64_t sub_1E397E060()
{
  v0 = OUTLINED_FUNCTION_12_11();
  v1 = __swift_coroFrameAllocStub(v0);
  OUTLINED_FUNCTION_3_9(v1);
  OUTLINED_FUNCTION_4_13();
  OUTLINED_FUNCTION_13_9();
  v3 = v2;
  return OUTLINED_FUNCTION_27_0();
}

id sub_1E397E0DC()
{
  OUTLINED_FUNCTION_0_8();
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_padding);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_overlayType) = 9;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_gradientLayer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_gradientView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_textBadge) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_progressView) = 0;
  v7 = type metadata accessor for OverlayView();
  v3 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v4, v5, v3, v0, v7);
}

void sub_1E397E1F0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_padding);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  *v1 = *MEMORY[0x1E69DDCE0];
  v1[1] = v2;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_badgeViewWrappers) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_overlayType) = 9;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_gradientLayer) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_gradientView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_textBadge) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI11OverlayView_progressView) = 0;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E397E2E0(char a1, double a2, double a3)
{
  v4 = v3;
  v182.receiver = v4;
  v182.super_class = type metadata accessor for OverlayView();
  v171 = a2;
  objc_msgSendSuper2(&v182, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v8 = [v4 bounds];
  v10 = v9;
  v12 = v11;
  v13 = MEMORY[0x1E69E7D40];
  v14 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x90))(v8);
  v16 = v15;
  v167 = v17;
  v169 = *((*v13 & *v4) + 0x108);
  v169();
  v18 = 0.0;
  v19 = 0.0;
  v20 = 0.0;
  v179 = OUTLINED_FUNCTION_7_81();
  v180 = v179;
  v177 = v16;
  v178 = v179;
  if (v21)
  {
    v22 = v21;
    v23 = v12;
    v24 = [v21 textLayout];
    [v24 margin];
    v26 = v25;
    v28 = v27;
    v30 = v29;

    v31 = v10 - v26 - v30;
    [v22 sizeThatFits_];
    v20 = v32;
    v180 = v31;
    VUIRoundValue();
    v178 = v33;
    OUTLINED_FUNCTION_87();
    v35 = *(v34 + 192);
    v35();
    OUTLINED_FUNCTION_14_61();
    if (!v77)
    {
      sub_1E397ED98(v36, v37, v38);
      if (OUTLINED_FUNCTION_5_77())
      {
        v12 = v23;
        VUIRoundValue();
        v179 = v39;
        OUTLINED_FUNCTION_7_81();
LABEL_18:

        v16 = v177;
        goto LABEL_19;
      }
    }

    v40 = (v35)();
    v12 = v23;
    if ((v40 == 9 || (sub_1E397ED98(v40, v41, v42), (OUTLINED_FUNCTION_5_77() & 1) == 0)) && ((v35(), OUTLINED_FUNCTION_14_61(), v77) || (sub_1E397ED98(v43, v44, v45), (OUTLINED_FUNCTION_5_77() & 1) == 0)))
    {
      v35();
      OUTLINED_FUNCTION_14_61();
      if (v77)
      {
        v179 = OUTLINED_FUNCTION_7_81();
        goto LABEL_18;
      }

      OUTLINED_FUNCTION_17_44(v50, v51, v52);
      OUTLINED_FUNCTION_5_77();
      v179 = OUTLINED_FUNCTION_7_81();
      if ((v53 & 1) == 0)
      {
        goto LABEL_18;
      }

      [v22 sizeThatFits_];
      v20 = v54;
      [v22 bottomMarginWithBaselineMargin_];
      v12 = v23;
      VUIRoundValue();
      v179 = v55;
      v172 = v23 + -145.0;
      OUTLINED_FUNCTION_87();
      v48 = (*(v56 + 240))();
      v181 = 145.0;
      if (!v48)
      {
        goto LABEL_11;
      }
    }

    else
    {
      [v22 bottomMarginWithBaselineMargin_];
      VUIRoundValue();
      v179 = v46;
      v181 = v23 * 0.28;
      v172 = v23 - v23 * 0.28;
      OUTLINED_FUNCTION_87();
      v48 = (*(v47 + 240))();
      if (!v48)
      {
LABEL_11:
        v19 = v10;
        goto LABEL_18;
      }
    }

    v49 = v48;
    [v4 vui:v48 sendSubviewToBack:?];

    goto LABEL_11;
  }

LABEL_19:
  OUTLINED_FUNCTION_87();
  v168 = *(v57 + 288);
  v58 = v168();
  v59 = 0.0;
  *&v175 = 0.0;
  v60 = 0.0;
  if (v58)
  {
    v61 = v58;
    [v58 vui_sizeThatFits_];
    v18 = v62;
    v175 = v63;
    OUTLINED_FUNCTION_87();
    (*(v64 + 192))();
    OUTLINED_FUNCTION_14_61();
    if (v77)
    {

      v60 = v16;
      v59 = v14;
    }

    else
    {
      OUTLINED_FUNCTION_17_44(v65, v66, v67);
      v68 = OUTLINED_FUNCTION_5_77();

      if (v68)
      {
        v60 = 30.0;
      }

      else
      {
        v60 = v16;
      }

      v59 = 40.0;
      if ((v68 & 1) == 0)
      {
        v59 = v14;
      }
    }
  }

  v173 = v59;
  v174 = v60;
  v176 = v20;
  v170 = *&v18;
  v69 = (*((*v13 & *v4) + 0xA8))();
  v70 = *(v69 + 16);
  if (v70)
  {
    v71 = v69 + 136;
    do
    {
      v72 = *(v71 - 104);
      v74 = *(v71 - 80);
      v73 = *(v71 - 72);
      v75 = sub_1E4205F14();
      if (v73)
      {
        v77 = v74 == v75 && v73 == v76;
        if (v77)
        {
          v81 = v72;

LABEL_39:
          v19 = v10;
          OUTLINED_FUNCTION_16_1();
          v83 = (*(v82 + 240))();
          if (v83)
          {
            v84 = v83;
            [v4 vui:v83 sendSubviewToBack:?];
          }

          v181 = v12;
          goto LABEL_42;
        }

        v78 = sub_1E42079A4();
        v79 = v72;

        if (v78)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v80 = v72;
      }

LABEL_42:
      if ([v4 vuiIsRTL])
      {
        OUTLINED_FUNCTION_19_44();
        VUIRectWithFlippedOriginRelativeToBoundingRect();
      }

      v85 = OUTLINED_FUNCTION_19_44();
      [v86 v87];

      v71 += 112;
      --v70;
    }

    while (v70);
  }

  OUTLINED_FUNCTION_16_1();
  v89 = (*(v88 + 312))();
  v90 = v18;
  if (v89)
  {
    v91 = v10 - v177 - v167;
    v92 = v89;
    [v92 vui:v91 sizeThatFits:0.0];
    VUIRoundValue();
    v94 = v93;
    v95 = 2.0;
    if ([v4 vuiIsRTL])
    {
      VUIRectWithFlippedOriginRelativeToBoundingRect();
      v177 = v96;
      v94 = v97;
      v91 = v98;
      v95 = v99;
      v100 = [v92 vuiLayer];
      if (v100)
      {
        v101 = v100;
        [v100 setFlipsHorizontalAxis_];
      }
    }

    [v92 setFrame_];
  }

  OUTLINED_FUNCTION_16_1();
  v103 = (*(v102 + 240))();
  if (v103)
  {
    v104 = v103;
    [v103 setFrame_];
  }

  OUTLINED_FUNCTION_16_1();
  v106 = *(v105 + 216);
  v107 = v106();
  if (v107)
  {
    v108 = v107;
    v109 = OUTLINED_FUNCTION_20_48();
    sub_1E3D54B34(v109, v110, v111, v112);
  }

  v113 = v106();
  if (v113)
  {
    v114 = v113;
    v115 = [v113 mask];
    if (v115)
    {

      v116 = [v114 mask];
      if (v116)
      {
        v117 = v116;
        v118 = OUTLINED_FUNCTION_20_48();
        [v119 v120];
      }
    }
  }

  v121 = [v4 vuiIsRTL];
  if (v121)
  {
    v122.n128_f64[0] = v178;
    v123.n128_f64[0] = v179;
    v124.n128_f64[0] = v180;
    v125.n128_f64[0] = v176;
    OUTLINED_FUNCTION_21_40(v122, v123, v124, v125, v126, v127, v128, v129);
    v178 = v130;
    v179 = v131;
    v180 = v132;
    v176 = v133;
    v135.n128_f64[0] = v173;
    v134.n128_f64[0] = v174;
    v136.n128_u64[0] = v170;
    v137.n128_u64[0] = v175;
    v121 = OUTLINED_FUNCTION_21_40(v134, v135, v136, v137, v138, v139, v140, v141);
    v173 = v143;
    v174 = v142;
    v90 = v144;
    v146 = v145;
    v147 = v168;
  }

  else
  {
    v147 = v168;
    v146 = *&v175;
  }

  v148 = (v169)(v121);
  if (v148)
  {
    v149 = v148;
    [v148 setFrame_];
  }

  v150 = v147();
  if (v150)
  {
    v151 = v150;
    [v150 setFrame_];
  }

  OUTLINED_FUNCTION_16_1();
  (*(v152 + 192))();
  OUTLINED_FUNCTION_14_61();
  if (!v77)
  {
    OUTLINED_FUNCTION_17_44(v153, v154, v155);
    if (OUTLINED_FUNCTION_5_77())
    {
      v156 = v147();
      if (v156)
      {
        v157 = v156;
        v158 = [v156 vuiLayer];

        [v158 removeAllAnimations];
      }
    }
  }

  v159 = [v4 vuiLayer];
  if (v159 && (v160 = v159, [v159 cornerRadius], v162 = v161, v160, v162 > 0.0))
  {
    v163 = [v4 vuiLayer];
    if (v163)
    {
      v164 = v163;
      [v163 setMasksToBounds_];
LABEL_76:
    }
  }

  else
  {
    v165 = [v4 vuiLayer];
    if (v165)
    {
      v164 = v165;
      [v165 setMasksToBounds_];
      goto LABEL_76;
    }
  }

  return v171;
}

unint64_t sub_1E397ED98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE284198;
  if (!qword_1EE284198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE284198);
  }

  return result;
}

id sub_1E397EEC8()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OverlayView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1E397EF90(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 112))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E397EFD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t (*sub_1E397F040(uint64_t (*result)(void), uint64_t a2, char a3))(void)
{
  if ((a3 & 1) == 0)
  {
    return result();
  }

  return result;
}

uint64_t sub_1E397F070@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = a2;
  }

  else
  {
    v8 = *(*a1 + 392);

    v10 = v8(v9);
    if (!v10)
    {
      type metadata accessor for ViewLayout();
      v10 = sub_1E3C2F968();
    }

    v5 = v10;
  }

  result = TVAppFeature.isEnabled.getter(10, v6, v7);
  *a3 = a1;
  *(a3 + 8) = v5;
  *(a3 + 16) = sub_1E397F128;
  *(a3 + 24) = a1;
  *(a3 + 32) = 0;
  return result;
}

uint64_t sub_1E397F128()
{
  type metadata accessor for ContextMenuController(0);

  return sub_1E4060588();
}

uint64_t sub_1E397F160@<X0>(uint64_t a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F418, &qword_1E42AE410);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  sub_1E397F35C();
  if (TVAppFeature.isEnabled.getter(10, v8, v9))
  {
    v10 = *(v1 + 8);
    if (*v10 == _TtC8VideosUI23ContextMenuButtonLayout)
    {
      OUTLINED_FUNCTION_5_0(v10 + 208, v28);
      v2 = -*(v10 + 208);
      v3 = -*(v10 + 216);
      v14.n128_u64[0] = *(v10 + 232);
      v4 = -*(v10 + 224);
    }

    else
    {
      v15 = objc_opt_self();
      v16 = [v15 isMac];
      v17 = MEMORY[0x1E69DDCE0];
      v18 = *MEMORY[0x1E69DDCE0];
      v19 = [v15 isMac];
      v20 = *(v17 + 8);
      v21 = [v15 isMac];
      if (v16)
      {
        v2 = -v18;
      }

      else
      {
        v2 = -25.0;
      }

      if (v19)
      {
        v3 = -v20;
      }

      else
      {
        v3 = -25.0;
      }

      if (v21)
      {
        v4 = -*(v17 + 16);
      }

      else
      {
        v4 = -25.0;
      }

      v22 = [v15 isMac];
      v14.n128_u64[0] = *(v17 + 24);
      if (!v22)
      {
        v14.n128_f64[0] = 25.0;
      }
    }

    v13.n128_f64[0] = -v14.n128_f64[0];
    v14.n128_f64[0] = v2;
    v11.n128_f64[0] = v3;
    v12.n128_f64[0] = v4;
    j_nullsub_1(v14, v11, v12, v13);
  }

  else
  {
    OUTLINED_FUNCTION_5_8();
  }

  v23 = OUTLINED_FUNCTION_41_8();
  v24 = OUTLINED_FUNCTION_16_0();
  sub_1E32BCDA8(v24, v25);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F420, &qword_1E42AE418);
  v27 = a1 + *(result + 36);
  *v27 = v23;
  *(v27 + 8) = v2;
  *(v27 + 16) = v3;
  *(v27 + 24) = v4;
  *(v27 + 32) = v5;
  *(v27 + 40) = 0;
  return result;
}

void sub_1E397F35C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4B8, &qword_1E42AE668);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4A8, &qword_1E42AE658);
  OUTLINED_FUNCTION_0_10();
  v58 = v5;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v61 = v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5F0, &unk_1E42AE8F0);
  OUTLINED_FUNCTION_0_10();
  v56 = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v55 = v10;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4A0, &qword_1E42AE650);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v53 = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F490, &qword_1E42AE640);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  v60 = v14;
  v15 = *v2;
  v16 = v2[1];
  v68 = *(v2 + 1);
  v69 = *(v2 + 32);
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_32_33(v17);

  sub_1E3743538(&v68, &v64, &qword_1ECF2C5D0, &qword_1E42E7120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5F8, &qword_1E42AE900);
  v52 = sub_1E39850BC();
  sub_1E39851F8(v52, v18, v19);
  sub_1E4202AF4();
  KeyPath = swift_getKeyPath();
  v21 = v0 + *(v3 + 36);
  *v21 = KeyPath;
  *(v21 + 8) = 2;
  if (*v16 == _TtC8VideosUI23ContextMenuButtonLayout)
  {
    v22 = OUTLINED_FUNCTION_5_0(v16 + 201, &v62);
    LOBYTE(v64) = *(v16 + 201);
    LOBYTE(v63) = 0;
    sub_1E389115C(v22, v23, v24);
    sub_1E4205E84();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4C0, &qword_1E42AE670);
    v25 = sub_1E3983BD4();
    v26 = sub_1E42023E4();
    OUTLINED_FUNCTION_0_92();
    v29 = sub_1E39849B0(v27, v28, MEMORY[0x1E697C9A0]);
    v64 = v3;
    v65 = v26;
    v66 = v25;
    v67 = v29;
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_47_17(v30, v31);
    OUTLINED_FUNCTION_12_55();
    sub_1E3E359E8();
    sub_1E325F69C(v0, &qword_1ECF2F4B8);
    LOBYTE(v64) = *(v16 + 201);
    LOBYTE(v63) = 1;
    v32 = sub_1E4205E84();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4C0, &qword_1E42AE670);
    v33 = sub_1E3983BD4();
    v26 = sub_1E42023E4();
    OUTLINED_FUNCTION_0_92();
    v36 = sub_1E39849B0(v34, v35, MEMORY[0x1E697C9A0]);
    v64 = v3;
    v65 = v26;
    v66 = v33;
    v67 = v36;
    OUTLINED_FUNCTION_6_62();
    OUTLINED_FUNCTION_47_17(v37, v38);
    OUTLINED_FUNCTION_12_55();
    sub_1E3E359E8();
    v32 = sub_1E325F69C(v0, &qword_1ECF2F4B8);
  }

  MEMORY[0x1EEE9AC00](v32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4B0, &qword_1E42AE660);
  v39 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4C0, &qword_1E42AE670);
  v40 = sub_1E3983BD4();
  sub_1E42023E4();
  OUTLINED_FUNCTION_0_92();
  v43 = sub_1E39849B0(v41, v42, MEMORY[0x1E697C9A0]);
  v64 = v3;
  v65 = v26;
  v66 = v40;
  v67 = v43;
  OUTLINED_FUNCTION_6_62();
  v46 = OUTLINED_FUNCTION_47_17(v44, v45);
  v64 = v3;
  v65 = v39;
  v66 = v40;
  v67 = v46;
  OUTLINED_FUNCTION_16_47();
  OUTLINED_FUNCTION_47_17(v47, v48);
  sub_1E3983CB8();
  sub_1E3E359E8();
  (*(v58 + 8))(v61, v59);
  (*(v56 + 32))(v53, v55, v57);
  *(v53 + *(v54 + 36)) = 1;
  sub_1E398018C();
  sub_1E325F69C(v53, &qword_1ECF2F4A0);
  v63 = v15;
  v49 = swift_allocObject();
  OUTLINED_FUNCTION_32_33(v49);
  swift_retain_n();

  sub_1E3743538(&v68, &v64, &qword_1ECF2C5D0, &qword_1E42E7120);
  type metadata accessor for ViewModel();
  sub_1E3983898();
  OUTLINED_FUNCTION_2_78();
  sub_1E39849B0(v50, v51, &protocol conformance descriptor for ViewModel);
  sub_1E4203524();

  sub_1E325F69C(v60, &qword_1ECF2F490);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E397FAE4()
{
  type metadata accessor for ContextMenuController(0);
  OUTLINED_FUNCTION_1_104();
  sub_1E39849B0(v0, v1, &unk_1E42BD340);
  OUTLINED_FUNCTION_32_0();

  return sub_1E42010C4();
}

uint64_t sub_1E397FB4C()
{
  v1 = sub_1E42023E4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  sub_1E42023D4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4B8, &qword_1E42AE668);
  sub_1E3983BD4();
  OUTLINED_FUNCTION_0_92();
  sub_1E39849B0(v5, v6, MEMORY[0x1E697C9A0]);
  OUTLINED_FUNCTION_29_29();
  sub_1E42035C4();
  return (*(v3 + 8))(v0, v1);
}

void sub_1E397FC64()
{
  OUTLINED_FUNCTION_31_1();
  v55 = v2;
  v50 = v3;
  v58 = v4;
  v56 = sub_1E4201534();
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v57 = (v7 - v6);
  sub_1E42014E4();
  OUTLINED_FUNCTION_0_10();
  v51 = v8;
  v52 = v9;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v48 = v11 - v10;
  v12 = sub_1E4201264();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4D8, &qword_1E42AE688);
  OUTLINED_FUNCTION_0_10();
  v49 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v47 - v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F620, &qword_1E42AE958);
  OUTLINED_FUNCTION_0_10();
  v53 = v21;
  v54 = v20;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_14_5();
  sub_1E4201254();
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4A8, &qword_1E42AE658);
  v24 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4B8, &qword_1E42AE668);
  v25 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4C0, &qword_1E42AE670);
  v26 = sub_1E3983BD4();
  v27 = sub_1E42023E4();
  OUTLINED_FUNCTION_0_92();
  v30 = sub_1E39849B0(v28, v29, MEMORY[0x1E697C9A0]);
  v59 = v24;
  v60 = v27;
  v61 = v26;
  v62 = v30;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v59 = v24;
  v60 = v25;
  v61 = v26;
  v62 = OpaqueTypeConformance2;
  OUTLINED_FUNCTION_16_47();
  v32 = swift_getOpaqueTypeConformance2();
  v33 = sub_1E39849B0(&qword_1EE289CE0, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
  OUTLINED_FUNCTION_125();
  sub_1E42035C4();
  (*(v14 + 8))(v0, v12);
  v34 = v48;
  sub_1E42014D4();
  v59 = v23;
  v60 = v12;
  v61 = v32;
  v62 = v33;
  swift_getOpaqueTypeConformance2();
  sub_1E39849B0(&qword_1EE289408, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  v35 = v47;
  v36 = v51;
  sub_1E4202D94();
  (*(v52 + 8))(v34, v36);
  (*(v49 + 8))(v19, v35);
  if (**(v55 + 8) == _TtC8VideosUI23ContextMenuButtonLayout && (v37 = (off_1EE25CFF8)(), (v38 & 1) == 0))
  {
    v39 = v37;
  }

  else
  {
    v39 = 0x4020000000000000;
  }

  v40 = *(v56 + 20);
  v41 = *MEMORY[0x1E697F468];
  sub_1E4201C44();
  OUTLINED_FUNCTION_2();
  v43 = v57;
  (*(v42 + 104))(v57 + v40, v41);
  *v43 = v39;
  v43[1] = v39;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4B0, &qword_1E42AE660);
  v45 = v58;
  v46 = v58 + *(v44 + 36);
  sub_1E3985328(v43, v46);
  *(v46 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
  (*(v53 + 32))(v45, v1, v54);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E398018C()
{
  OUTLINED_FUNCTION_31_1();
  v35 = v0;
  v36 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F610, &qword_1E42AE948);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v34 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4E0, &qword_1E42AE690);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_14_5();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F498, &qword_1E42AE648);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v34 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F618, &qword_1E42AE950);
  OUTLINED_FUNCTION_0_10();
  v17 = v16;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = v34 - v19;
  v23 = TVAppFeature.isEnabled.getter(10, v21, v22);
  v25 = *v4;
  if (v23)
  {
    v34[0] = v5;
    v34[1] = v9;
    v26 = v35;
    v27 = (*(v25 + 696))(v23, v24);
    if (v27 == 4)
    {
      v28 = sub_1E4202184();
    }

    else
    {
      v28 = sub_1E41261D8(v27);
    }

    v31 = v28;
    v32 = sub_1E3743538(v26, v14, &qword_1ECF2F4A0, &qword_1E42AE650);
    *&v14[*(v11 + 36)] = v31;
    (*(*v4 + 720))(v32);
    v33 = sub_1E3983960();
    sub_1E37B8438();
    sub_1E325F69C(v14, &qword_1ECF2F498);
    (*(v17 + 16))(v8, v20, v15);
    swift_storeEnumTagMultiPayload();
    v37 = v11;
    v38 = v33;
    OUTLINED_FUNCTION_18_40();
    sub_1E3983F50();
    OUTLINED_FUNCTION_37_21();
    sub_1E4201F44();
    (*(v17 + 8))(v20, v15);
  }

  else
  {
    v29 = (*(v25 + 672))();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F4A0, &qword_1E42AE650);
    sub_1E3983A18();
    OUTLINED_FUNCTION_32_0();
    sub_1E39B9138();

    sub_1E3743538(v1, v8, &qword_1ECF2F4E0, &qword_1E42AE690);
    swift_storeEnumTagMultiPayload();
    v30 = sub_1E3983960();
    v37 = v11;
    v38 = v30;
    OUTLINED_FUNCTION_18_40();
    sub_1E3983F50();
    OUTLINED_FUNCTION_37_21();
    sub_1E4201F44();
    sub_1E325F69C(v1, &qword_1ECF2F4E0);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3980564()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v21[1] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428, &qword_1E42AE420);
  OUTLINED_FUNCTION_0_10();
  v21[0] = v7;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v21 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F430, &qword_1E42AE428);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F438, &qword_1E42AE430);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v21 - v13;
  sub_1E405FCC8();
  v16 = sub_1E32AE9B0(v15);

  if (v16)
  {
    sub_1E398084C();
    sub_1E3743538(v14, v0, &qword_1ECF2F438, &qword_1E42AE430);
    swift_storeEnumTagMultiPayload();
    sub_1E39831F4();
    OUTLINED_FUNCTION_21_10(&qword_1EE288638, &qword_1ECF2F428, &qword_1E42AE420);
    OUTLINED_FUNCTION_29_29();
    sub_1E4201F44();
    sub_1E325F69C(v14, &qword_1ECF2F438);
  }

  else
  {
    MEMORY[0x1EEE9AC00](v17);
    v21[-2] = v4;
    v21[-1] = v2;
    sub_1E4203964();
    v18 = v21[0];
    v19 = OUTLINED_FUNCTION_125();
    v20(v19);
    swift_storeEnumTagMultiPayload();
    sub_1E39831F4();
    OUTLINED_FUNCTION_21_10(&qword_1EE288638, &qword_1ECF2F428, &qword_1E42AE420);
    OUTLINED_FUNCTION_29_29();
    sub_1E4201F44();
    (*(v18 + 8))(v10, v6);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E398084C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F470, &qword_1E42AE448);
  OUTLINED_FUNCTION_0_10();
  KeyPath = v8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_31_2();
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5D8, &unk_1E42AE888);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &KeyPath - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F450, &qword_1E42AE438);
  OUTLINED_FUNCTION_0_10();
  v15 = v14;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &KeyPath - v17;
  v19 = [objc_opt_self() sharedInstance];
  if (v19)
  {
    v20 = v19;
    v41 = v13;
    v42 = v6;
    v43 = v7;
    v21 = [v19 vStackInForEachEnabled];

    sub_1E405FCC8();
    if (v21)
    {
      v45 = v22;
      KeyPath = swift_getKeyPath();
      OUTLINED_FUNCTION_2_4();
      v23 = swift_allocObject();
      *(v23 + 16) = v4;
      *(v23 + 24) = v2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F460, &qword_1E42AE440);
      OUTLINED_FUNCTION_14_11();
      sub_1E374AD40(v24, &unk_1ECF2C790, &qword_1E42996A0, v25);
      OUTLINED_FUNCTION_2_78();
      sub_1E39849B0(v26, v27, &protocol conformance descriptor for ViewModel);
      OUTLINED_FUNCTION_1();
      sub_1E374AD40(v28, &qword_1ECF2F460, &qword_1E42AE440, v29);
      sub_1E4203B34();
      v30 = v41;
      (*(v15 + 16))(v12, v18, v41);
      swift_storeEnumTagMultiPayload();
      sub_1E3983280();
      sub_1E3983330();
      sub_1E4201F44();
      (*(v15 + 8))(v18, v30);
    }

    else
    {
      v47 = v22;
      swift_getKeyPath();
      OUTLINED_FUNCTION_2_4();
      v31 = swift_allocObject();
      *(v31 + 16) = v4;
      *(v31 + 24) = v2;

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5E0, &qword_1E42AE8B8);
      OUTLINED_FUNCTION_14_11();
      sub_1E374AD40(v32, &unk_1ECF2C790, &qword_1E42996A0, v33);
      OUTLINED_FUNCTION_2_78();
      sub_1E39849B0(v34, v35, &protocol conformance descriptor for ViewModel);
      v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F478, &unk_1E42AE450);
      v37 = sub_1E39833F0();
      v45 = v36;
      v46 = v37;
      swift_getOpaqueTypeConformance2();
      sub_1E4203B34();
      v38 = KeyPath;
      v39 = v43;
      (*(KeyPath + 16))(v12, v0, v43);
      swift_storeEnumTagMultiPayload();
      sub_1E3983280();
      sub_1E3983330();
      sub_1E4201F44();
      (*(v38 + 8))(v0, v39);
    }

    OUTLINED_FUNCTION_25_2();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3980D3C()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  sub_1E374AD40(&qword_1EE28A190, &qword_1ECF2D3C0, &unk_1E42A9690, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

double sub_1E3980DCC()
{
  v1 = v0;
  if (**(v0 + OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_viewModel) == _TtC8VideosUI25DownloadMenuItemViewModel)
  {
    type metadata accessor for DownloadMenuItemViewModel(0);
    sub_1E39849B0(&qword_1ECF2F560, type metadata accessor for DownloadMenuItemViewModel, &unk_1E42E5480);

    sub_1E4200514();
    OUTLINED_FUNCTION_2_4();
    v2 = swift_allocObject();
    *(v2 + 16) = sub_1E398442C;
    *(v2 + 24) = v0;
    sub_1E42005A4();

    v3 = sub_1E4200844();

    *(v1 + OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_downloadContextMenuObserver) = v3;
  }

  else
  {
    v5 = OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_downloadContextMenuObserver;
    if (*(v0 + OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_downloadContextMenuObserver))
    {

      sub_1E42004E4();
    }

    *(v0 + v5) = 0;
  }

  return result;
}

void sub_1E3980F9C(uint64_t a1, void *a2)
{
  type metadata accessor for LibContextMenuViewModel();
  v4 = swift_dynamicCastClass();
  if (!v4)
  {
    v6 = (*(*a1 + 552))();
    if (v6)
    {
      *(&v14 + 1) = &unk_1F5D7C138;
      *&v15 = &off_1F5D7BC98;
      LOBYTE(v13) = 1;
      sub_1E3F9F164(&v13, v6, MEMORY[0x1E69E7CA0] + 8);

      __swift_destroy_boxed_opaque_existential_1(&v13);
      if (*(&v10 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        if (swift_dynamicCast())
        {
          v7 = v13;
          type metadata accessor for Metrics(0);
          OUTLINED_FUNCTION_50();
          sub_1E3BA7858();

          sub_1E4061870(v7, a2);

          goto LABEL_13;
        }

LABEL_11:
        if (*a1 != _TtC8VideosUI25DownloadMenuItemViewModel)
        {
          memset(v17, 0, sizeof(v17));
          v18 = 1;
          sub_1E40421AC(2, 0, v17, &v13);
          v9 = v13;
          v10 = v14;
          v11 = v15;
          v12 = v16;

          sub_1E4200524();

          sub_1E38E5014(&v13);
          return;
        }

        v8 = OUTLINED_FUNCTION_51_1();
        sub_1E4061A0C(a1, v8 & 1);

LABEL_13:

        return;
      }
    }

    else
    {
      v9 = 0u;
      v10 = 0u;
    }

    sub_1E325F69C(&v9, &unk_1ECF296E0);
    goto LABEL_11;
  }

  v5 = v4;

  sub_1E4061C34(v5);
}

double sub_1E3981280()
{

  return result;
}

uint64_t sub_1E39812E0(uint64_t a1)
{
  v1 = sub_1E3B4FF80();

  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

uint64_t sub_1E39813A0(uint64_t a1, uint64_t a2)
{
  type metadata accessor for ActionMenuItemInteractor(0);
  v4 = swift_allocObject();
  v5 = OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_eventSubject;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3C0, &unk_1E42A9690);
  swift_allocObject();
  *(v4 + v5) = sub_1E4200544();
  v6 = OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_viewModel;
  *(v4 + OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_downloadContextMenuObserver) = 0;
  *(v4 + OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_contextMenuController) = a1;
  *(v4 + v6) = a2;

  v7 = sub_1E3B500B4();

  sub_1E3980DCC();

  return v7;
}

void sub_1E3981488()
{
  OUTLINED_FUNCTION_31_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F500, &qword_1E42AE7F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_2();
  v3 = *(v0 + 24);
  v4 = type metadata accessor for ActionMenuItemInteractor(0);
  OUTLINED_FUNCTION_4_77();
  sub_1E39849B0(v5, v6, &unk_1E42BD340);
  swift_retain_n();
  v21 = v4;
  v22 = &off_1F5D65A88;
  v19 = sub_1E4200BC4();
  v17 = v0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F510, &qword_1E42AE7F8);
  v8 = sub_1E398422C(&qword_1ECF2F518, &qword_1ECF2F510, &qword_1E42AE7F8, sub_1E39842A4);
  sub_1E40427A8(v3, &v19, sub_1E3984208, &v16, v7, v8, v1);
  v9 = *(v0 + 32);
  v18[2] = v3;
  v19 = v9;
  v20 = *(v0 + 40);
  OUTLINED_FUNCTION_44_8();
  v10 = swift_allocObject();
  v11 = *(v0 + 16);
  v10[1] = *v0;
  v10[2] = v11;
  *(v10 + 41) = *(v0 + 25);

  sub_1E380E99C();
  sub_1E3743538(&v19, v18, &qword_1ECF2F550, &qword_1E42E6800);
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_13_2();
  sub_1E374AD40(v12, &qword_1ECF2F500, &qword_1E42AE7F0, v13);
  OUTLINED_FUNCTION_2_78();
  sub_1E39849B0(v14, v15, &protocol conformance descriptor for ViewModel);
  sub_1E4203524();

  sub_1E325F69C(v1, &qword_1ECF2F500);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3981710()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F548, &unk_1E42AE810);
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v56 - v7;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F568, &unk_1E42AE820);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v64 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F570, &unk_1E42B7C40);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_44();
  v61 = v12;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F538, &qword_1E42AE808);
  OUTLINED_FUNCTION_0_10();
  v60 = v13;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_44();
  v59 = v15;
  v16 = *(v0 + 24);
  v67 = v16;
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5C8, &qword_1E42AE870);
  v17 = swift_dynamicCast();
  v66 = v3;
  if (v17)
  {
    sub_1E3251BE8(v69, v71);
    v18 = v72;
    v19 = v73;
    __swift_project_boxed_opaque_existential_1(v71, v72);
    v20 = (*(v19 + 16))(v18, v19);
    __swift_destroy_boxed_opaque_existential_1(v71);
    goto LABEL_3;
  }

  v70 = 0;
  memset(v69, 0, sizeof(v69));
  v31 = sub_1E325F69C(v69, &unk_1ECF2F5D0);
  v32 = (*(*v16 + 488))(v31);
  if (v32)
  {
    v34 = sub_1E373E010(36, v32, v33);

    if (!v34)
    {
      goto LABEL_30;
    }

    type metadata accessor for ImageViewModel();
    v35 = swift_dynamicCastClass();
    if (!v35)
    {

      goto LABEL_30;
    }

    v20 = v35;
LABEL_3:
    if (v20)
    {
      sub_1E3981F78(v16, v61);
      OUTLINED_FUNCTION_24_29();
      OUTLINED_FUNCTION_44_8();
      v21 = swift_allocObject();
      OUTLINED_FUNCTION_72_5(v21);
      MEMORY[0x1EEE9AC00](v22);
      v56[-2] = v1;
      v56[-1] = v20;
      sub_1E3743538(v71, v69, &qword_1ECF2F578, &unk_1E42AE830);

      sub_1E3743538(&v67, v69, &qword_1ECF2F550, &qword_1E42E6800);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F580, &qword_1E42AE840);
      sub_1E398422C(&qword_1ECF2F588, &qword_1ECF2F580, &qword_1E42AE840, sub_1E3984678);
      v23 = v59;
      sub_1E4203954();
      v24 = v60;
      v25 = v63;
      (*(v60 + 16))(v64, v23, v63);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_45();
      sub_1E374AD40(v26, v27, v28, v29);
      sub_1E374AD40(&qword_1ECF2F540, &qword_1ECF2F548, &unk_1E42AE810, &qword_1ECF2F580);
      v30 = v66;
      sub_1E4201F44();

      (*(v24 + 8))(v23, v25);
      goto LABEL_32;
    }

LABEL_30:
    sub_1E3982484(v16);
    if (!v46)
    {
      v54 = 1;
      v30 = v66;
      goto LABEL_34;
    }

    sub_1E3981F78(v16, v61);
    OUTLINED_FUNCTION_24_29();
    OUTLINED_FUNCTION_44_8();
    v47 = swift_allocObject();
    OUTLINED_FUNCTION_72_5(v47);

    sub_1E3743538(v71, v69, &qword_1ECF2F578, &unk_1E42AE830);
    sub_1E3743538(&v67, v69, &qword_1ECF2F550, &qword_1E42E6800);
    v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28CB8, &unk_1E429B6E0);
    swift_getOpaqueTypeConformance2();
    sub_1E4203954();
    v49 = v65;
    (v5[2])(v64, v8, v65);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_17_45();
    sub_1E374AD40(v50, v51, v52, v53);
    sub_1E374AD40(&qword_1ECF2F540, &qword_1ECF2F548, &unk_1E42AE810, v48);
    v30 = v66;
    sub_1E4201F44();

    (v5[1])(v8, v49);
LABEL_32:
    v54 = 0;
LABEL_34:
    v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F528, &qword_1E42AE800);
    __swift_storeEnumTagSinglePayload(v30, v54, 1, v55);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v36 = (*(*v16 + 464))();
  if (!v36)
  {
    goto LABEL_30;
  }

  v37 = v36;
  v56[0] = v8;
  v56[1] = v5;
  v38 = sub_1E32AE9B0(v36);
  v39 = 0;
  v58 = v37 & 0xC000000000000001;
  v57 = v37 & 0xFFFFFFFFFFFFFF8;
  v5 = &qword_1F5D5CE68;
  while (1)
  {
    if (v38 == v39)
    {

      goto LABEL_29;
    }

    if (v58)
    {
      v40 = MEMORY[0x1E6911E60](v39, v37);
      v8 = v40;
    }

    else
    {
      if (v39 >= *(v57 + 16))
      {
        goto LABEL_36;
      }

      v8 = *(v37 + 8 * v39 + 32);
    }

    if (__OFADD__(v39, 1))
    {
      break;
    }

    LOWORD(v67) = *(v8 + 49);
    v68 = 39;
    sub_1E3742F1C(v40, v41, v42);
    sub_1E4206254();
    sub_1E4206254();
    if (v71[0] == *&v69[0] && v71[1] == *(&v69[0] + 1))
    {

LABEL_26:

      type metadata accessor for ImageViewModel();
      v45 = swift_dynamicCastClass();
      if (v45)
      {
        v20 = v45;
        OUTLINED_FUNCTION_40_24();
        goto LABEL_3;
      }

LABEL_29:
      OUTLINED_FUNCTION_40_24();
      goto LABEL_30;
    }

    v44 = sub_1E42079A4();

    if (v44)
    {
      goto LABEL_26;
    }

    ++v39;
  }

  __break(1u);
LABEL_36:
  __break(1u);
}

uint64_t sub_1E3981F78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v6 = 14;
  (*(*a1 + 776))(v7, &v6, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (!v7[3])
  {
    sub_1E325F69C(v7, &unk_1ECF296E0);
LABEL_6:
    v3 = 1;
    goto LABEL_7;
  }

  if (!swift_dynamicCast() || (v6 & 1) == 0)
  {
    goto LABEL_6;
  }

  sub_1E4200A04();
  v3 = 0;
LABEL_7:
  v4 = sub_1E4200A34();
  return __swift_storeEnumTagSinglePayload(a2, v3, 1, v4);
}

void sub_1E3982070()
{
  OUTLINED_FUNCTION_31_1();
  v4 = v0;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F488, &qword_1E42DA9C0);
  OUTLINED_FUNCTION_0_10();
  v11 = v10;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5B8, &qword_1E42AE858);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_41();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5A8, &qword_1E42AE850);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_14_5();
  v15.n128_f64[0] = OUTLINED_FUNCTION_1_36();
  v16 = (*(*v6 + 1000))(0, v15);
  if (v17 != 255)
  {
    v18 = v16;
    if (!v17)
    {
      v30 = v8;
      if (![v16 type])
      {
        v24 = [v18 name];
        sub_1E4205F14();

        sub_1E3982820(*(v4 + 24));
        sub_1E39828B4(v3);
        sub_1E3743538(v3, v1, &qword_1ECF2F5A8, &qword_1E42AE850);
        OUTLINED_FUNCTION_125();
        swift_storeEnumTagMultiPayload();
        sub_1E3984730();
        OUTLINED_FUNCTION_22_30(&qword_1ECF2F5B0, &qword_1ECF2F488, &qword_1E42DA9C0);
        sub_1E4201F44();
        sub_1E379098C(v18, 0);
        sub_1E325F69C(v3, &qword_1ECF2F5A8);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F598, &qword_1E42AE848);
        v23 = v8;
        goto LABEL_7;
      }

      if ([v18 type] == 1)
      {
        v19 = [v18 name];
        sub_1E4205F14();

        v31 = sub_1E3982820(*(v4 + 24));
        sub_1E32822E0(v31, v20, v21);
        sub_1E4203864();
        (*(v11 + 16))(v1, v2, v9);
        OUTLINED_FUNCTION_125();
        swift_storeEnumTagMultiPayload();
        sub_1E3984730();
        OUTLINED_FUNCTION_22_30(&qword_1ECF2F5B0, &qword_1ECF2F488, &qword_1E42DA9C0);
        sub_1E4201F44();
        sub_1E379098C(v18, 0);
        (*(v11 + 8))(v2, v9);
        v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F598, &qword_1E42AE848);
        v23 = v30;
LABEL_7:
        __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
        OUTLINED_FUNCTION_25_2();
        return;
      }

      v17 = 0;
    }

    sub_1E379098C(v18, v17);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F598, &qword_1E42AE848);
  OUTLINED_FUNCTION_25_2();

  __swift_storeEnumTagSinglePayload(v25, v26, v27, v28);
}

void sub_1E3982484(uint64_t a1)
{
  v21 = a1;
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_50();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5C8, &qword_1E42AE870);
  if (swift_dynamicCast())
  {
    sub_1E3251BE8(v19, v22);
    v2 = v22[4];
    __swift_project_boxed_opaque_existential_1(v22, v22[3]);
    v3 = OUTLINED_FUNCTION_50();
    v4(v3, v2);
    __swift_destroy_boxed_opaque_existential_1(v22);
    return;
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v5 = sub_1E325F69C(v19, &unk_1ECF2F5D0);
  v6 = (*(*a1 + 488))(v5);
  if (v6)
  {
    v8 = sub_1E373E010(23, v6, v7);

    if (v8)
    {
      if (*v8 == _TtC8VideosUI13TextViewModel)
      {
        return;
      }
    }
  }

  v9 = (*(*a1 + 464))(v6);
  if (!v9)
  {
LABEL_22:
    if (*a1 != _TtC8VideosUI13TextViewModel)
    {
      return;
    }

LABEL_23:

    return;
  }

  v10 = v9;
  v11 = sub_1E32AE9B0(v9);
  for (i = 0; ; ++i)
  {
    if (v11 == i)
    {

      goto LABEL_22;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x1E6911E60](i, v10);
      v13 = v14;
    }

    else
    {
      if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

      v13 = *(v10 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      return;
    }

    LOWORD(v21) = *(v13 + 98);
    sub_1E3742F1C(v14, v15, v16);
    sub_1E4206254();
    sub_1E4206254();
    if (v22[0] == *&v19[0] && v22[1] == *(&v19[0] + 1))
    {
      break;
    }

    v18 = sub_1E42079A4();

    if (v18)
    {
      goto LABEL_25;
    }
  }

LABEL_25:

  if (*v13 != _TtC8VideosUI13TextViewModel)
  {

    if (*a1 == _TtC8VideosUI13TextViewModel)
    {
      goto LABEL_23;
    }
  }
}

uint64_t sub_1E3982820(uint64_t a1)
{
  sub_1E3982484(a1);
  if (v1)
  {
    v2 = OUTLINED_FUNCTION_18();
    v3 = sub_1E3C287F4(0, v2 & 1);

    if (v3)
    {
      v4 = [v3 string];

      sub_1E4205F14();
    }
  }

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E39828B4@<X0>(uint64_t a3@<X8>)
{
  v4 = objc_opt_self();
  v5 = sub_1E4205ED4();

  v6 = [v4 vuiSystemImageNamed:v5 withConfiguration:0 accessibilityDescription:0];

  sub_1E4203844();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F488, &qword_1E42DA9C0);
  __swift_storeEnumTagSinglePayload(a3, 0, 1, v7);
}

uint64_t Label<>.init<A>(_:systemSymbol:)@<X0>(uint64_t a4@<X8>)
{
  v5 = objc_opt_self();
  v6 = sub_1E4205ED4();

  v7 = [v5 vuiSystemImageNamed:v6 withConfiguration:0 accessibilityDescription:0];

  sub_1E4203844();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F488, &qword_1E42DA9C0);
  __swift_storeEnumTagSinglePayload(a4, 0, 1, v8);
  v9 = OUTLINED_FUNCTION_16_0();
  return v10(v9);
}

uint64_t sub_1E3982B88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E32822E0(a1, a2, a3);
  OUTLINED_FUNCTION_50();

  return sub_1E4202C44();
}

uint64_t sub_1E3982BD8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_41();
  (*(v6 + 16))(v4);
  result = sub_1E4202C44();
  *a4 = result;
  *(a4 + 8) = v8;
  *(a4 + 16) = v9 & 1;
  *(a4 + 24) = v10;
  return result;
}

uint64_t sub_1E3982CA8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1E381AC64(a1);
  *a2 = result;
  return result;
}

id sub_1E3982CD4()
{
  sub_1E37E96A4();
  result = sub_1E3834BC8();
  qword_1ECF713B0 = result;
  return result;
}

uint64_t sub_1E3982D1C()
{
  v1 = sub_1E41FFBF4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  sub_1E4206434();
  v0[5] = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v3 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3982E08, v3, v2);
}

uint64_t sub_1E3982E08()
{
  v1 = *(v0 + 24);

  v2 = sub_1E4206BA4();
  v3 = VUISignpostLogObject(v2);
  v4 = sub_1E41FFBE4();
  OUTLINED_FUNCTION_35_23(v4, &dword_1E323F000, v5, "Launch.ContextMenuButtonPrewarm.prewarm");

  v6 = *(v1 + 8);
  v7 = OUTLINED_FUNCTION_16_0();
  v6(v7);
  if (qword_1ECF50C20 != -1)
  {
    OUTLINED_FUNCTION_7_82(&qword_1ECF50C20);
  }

  v8 = sub_1E4206B94();
  v9 = VUISignpostLogObject(v8);
  v10 = sub_1E41FFBE4();
  OUTLINED_FUNCTION_35_23(v10, &dword_1E323F000, v11, "Launch.ContextMenuButtonPrewarm.prewarm");

  v12 = OUTLINED_FUNCTION_16_0();
  v6(v12);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1E3982F60@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>)
{
  result = sub_1E3D79AF4(a2, a3, a4);
  *a1 = result;
  return result;
}

void *sub_1E3982FB8(uint64_t a1, char a2)
{
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  if ((a2 & 1) == 0)
  {
    v8 = sub_1E4206804();
    v9 = sub_1E42026D4();
    if (os_log_type_enabled(v9, v8))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v17 = v11;
      *v10 = 136315138;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5C0, &unk_1E42AE860);
      v12 = sub_1E4207CE4();
      v14 = sub_1E3270FC8(v12, v13, &v17);

      *(v10 + 4) = v14;
      _os_log_impl(&dword_1E323F000, v9, v8, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1E69143B0](v11, -1, -1);
      MEMORY[0x1E69143B0](v10, -1, -1);
    }

    sub_1E4201AA4();
    swift_getAtKeyPath();
    j__swift_release(a1);
    (*(v5 + 8))(v7, v4);
    return v17;
  }

  return a1;
}

uint64_t sub_1E39831A0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E4201974();
  *a1 = result;
  return result;
}

unint64_t sub_1E39831F4()
{
  result = qword_1ECF2F440;
  if (!qword_1ECF2F440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F438, &qword_1E42AE430);
    sub_1E3983280();
    sub_1E3983330();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F440);
  }

  return result;
}

unint64_t sub_1E3983280()
{
  result = qword_1ECF2F448;
  if (!qword_1ECF2F448)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F450, &qword_1E42AE438);
    sub_1E374AD40(&qword_1ECF2F458, &qword_1ECF2F460, &qword_1E42AE440, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F448);
  }

  return result;
}

unint64_t sub_1E3983330()
{
  result = qword_1ECF2F468;
  if (!qword_1ECF2F468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F470, &qword_1E42AE448);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F478, &unk_1E42AE450);
    sub_1E39833F0();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F468);
  }

  return result;
}

unint64_t sub_1E39833F0()
{
  result = qword_1ECF2F480;
  if (!qword_1ECF2F480)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F478, &unk_1E42AE450);
    sub_1E3983474(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F480);
  }

  return result;
}

unint64_t sub_1E3983474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE2A5F98[0];
  if (!qword_1EE2A5F98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE2A5F98);
  }

  return result;
}

void sub_1E39834C8(uint64_t a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  if (v2)
  {
    v3 = v2;
    sub_1E3741090(0x474E4944414F4CLL, 0xE700000000000000, v2);
    v5 = v4;

    if (v5)
    {
      sub_1E32822E0(v6, v7, v8);
      *a1 = sub_1E4202C44();
      *(a1 + 8) = v9;
      *(a1 + 16) = v10 & 1;
      *(a1 + 24) = v11;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E39835E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 16))
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

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t type metadata accessor for ActionMenuItemInteractor(uint64_t a1)
{
  result = qword_1EE298480;
  if (!qword_1EE298480)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1E39836FC()
{
  result = qword_1EE289848;
  if (!qword_1EE289848)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F420, &qword_1E42AE418);
    sub_1E3983788();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289848);
  }

  return result;
}

unint64_t sub_1E3983788()
{
  result = qword_1EE2886A8;
  if (!qword_1EE2886A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F418, &qword_1E42AE410);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F490, &qword_1E42AE640);
    type metadata accessor for ViewModel();
    sub_1E3983898();
    sub_1E39849B0(&qword_1EE23BA60, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2886A8);
  }

  return result;
}

unint64_t sub_1E3983898()
{
  result = qword_1EE288EB0;
  if (!qword_1EE288EB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F490, &qword_1E42AE640);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F498, &qword_1E42AE648);
    sub_1E3983960();
    swift_getOpaqueTypeConformance2();
    sub_1E3983F50();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288EB0);
  }

  return result;
}

unint64_t sub_1E3983960()
{
  result = qword_1EE2895D8;
  if (!qword_1EE2895D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F498, &qword_1E42AE648);
    sub_1E3983A18();
    sub_1E374AD40(&qword_1EE288880, &qword_1ECF2A218, &qword_1E42AFD10, MEMORY[0x1E6980490]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2895D8);
  }

  return result;
}

unint64_t sub_1E3983A18()
{
  result = qword_1EE289950;
  if (!qword_1EE289950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4A0, &qword_1E42AE650);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4A8, &qword_1E42AE658);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4B0, &qword_1E42AE660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4B8, &qword_1E42AE668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4C0, &qword_1E42AE670);
    sub_1E3983BD4();
    sub_1E42023E4();
    sub_1E39849B0(&qword_1EE288868, MEMORY[0x1E697C9A8], MEMORY[0x1E697C9A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E3983CB8();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289950);
  }

  return result;
}

unint64_t sub_1E3983BD4()
{
  result = qword_1EE289A10;
  if (!qword_1EE289A10)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4B8, &qword_1E42AE668);
    sub_1E374AD40(&qword_1EE288730, &unk_1ECF2F4C8, &unk_1E42AE678, MEMORY[0x1E697CD28]);
    sub_1E374AD40(&qword_1EE2887D8, &unk_1ECF2F4D0, &unk_1E42AE680, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289A10);
  }

  return result;
}

unint64_t sub_1E3983CB8()
{
  result = qword_1EE289930;
  if (!qword_1EE289930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4B0, &qword_1E42AE660);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4D8, &qword_1E42AE688);
    sub_1E42014E4();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4A8, &qword_1E42AE658);
    sub_1E4201264();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4B8, &qword_1E42AE668);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4C0, &qword_1E42AE670);
    sub_1E3983BD4();
    sub_1E42023E4();
    sub_1E39849B0(&qword_1EE288868, MEMORY[0x1E697C9A8], MEMORY[0x1E697C9A0]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E39849B0(&qword_1EE289CE0, MEMORY[0x1E697C150], MEMORY[0x1E697C148]);
    swift_getOpaqueTypeConformance2();
    sub_1E39849B0(&qword_1EE289408, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
    swift_getOpaqueTypeConformance2();
    sub_1E374AD40(&qword_1EE289E08, &qword_1ECF298B0, &unk_1E42AC0E0, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289930);
  }

  return result;
}

unint64_t sub_1E3983F50()
{
  result = qword_1EE288ED8;
  if (!qword_1EE288ED8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4E0, &qword_1E42AE690);
    sub_1E3983FDC();
    sub_1E3983A18();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288ED8);
  }

  return result;
}

unint64_t sub_1E3983FDC()
{
  result = qword_1EE2895E0;
  if (!qword_1EE2895E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4E8, &unk_1E42AE698);
    sub_1E3983A18();
    sub_1E374AD40(&qword_1EE288788, &qword_1ECF28998, &unk_1E4297E30, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2895E0);
  }

  return result;
}

unint64_t sub_1E3984094()
{
  result = qword_1ECF2F4F0;
  if (!qword_1ECF2F4F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F4F8, &qword_1E42AE6A8);
    sub_1E39831F4();
    sub_1E374AD40(&qword_1EE288638, &qword_1ECF2F428, &qword_1E42AE420, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F4F0);
  }

  return result;
}

uint64_t sub_1E3984158(uint64_t a1, int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_17_7(-1);
  }

  if (a2 < 0 && *(a1 + 41))
  {
    LODWORD(v2) = *a1 + 0x7FFFFFFF;
  }

  else
  {
    v2 = *(a1 + 24);
    if (v2 >= 0xFFFFFFFF)
    {
      LODWORD(v2) = -1;
    }
  }

  return OUTLINED_FUNCTION_17_7(v2);
}

uint64_t sub_1E3984194(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E398422C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  result = *a1;
  if (!result)
  {
    v7 = OUTLINED_FUNCTION_40_2(0, a2);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(v7, v8);
    a4();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1E39842A4()
{
  result = qword_1ECF2F520;
  if (!qword_1ECF2F520)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F528, &qword_1E42AE800);
    v1 = MEMORY[0x1E697D680];
    sub_1E374AD40(&qword_1ECF2F530, &qword_1ECF2F538, &qword_1E42AE808, MEMORY[0x1E697D680]);
    sub_1E374AD40(&qword_1ECF2F540, &qword_1ECF2F548, &unk_1E42AE810, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F520);
  }

  return result;
}

double sub_1E3984384(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  type metadata accessor for ActionMenuItemInteractor(0);
  OUTLINED_FUNCTION_4_77();
  v5 = sub_1E39849B0(v3, v4, &unk_1E42BD340);
  *(OUTLINED_FUNCTION_33_28(v5) + OBJC_IVAR____TtC8VideosUIP33_89D756550E8B1BCD211E47DD7C7DE98E24ActionMenuItemInteractor_viewModel) = v2;

  sub_1E3980DCC();

  return result;
}

double sub_1E398442C()
{
  OUTLINED_FUNCTION_4_77();
  sub_1E39849B0(v0, v1, &unk_1E42BD340);
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

void sub_1E39844C0()
{
  OUTLINED_FUNCTION_18();

  sub_1E3F23370();
}

uint64_t objectdestroyTm_17()
{
  sub_1E3264CE0(v0[2], v0[3]);

  j__swift_release(v0[6]);
  OUTLINED_FUNCTION_44_8();

  return swift_deallocObject();
}

void sub_1E3984550()
{
  type metadata accessor for ActionMenuItemInteractor(0);
  OUTLINED_FUNCTION_4_77();
  sub_1E39849B0(v1, v2, &unk_1E42BD340);
  OUTLINED_FUNCTION_11_61();
  sub_1E4200BC4();
  v3 = sub_1E3982FB8(*(v0 + 48), *(v0 + 56));
  if (v3)
  {
    v4 = (*(*v3 + 96))(v3);
  }

  else
  {
    v4 = 0;
  }

  sub_1E3980F9C(*(v0 + 40), v4);
}

unint64_t sub_1E3984678()
{
  result = qword_1ECF2F590;
  if (!qword_1ECF2F590)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F598, &qword_1E42AE848);
    sub_1E3984730();
    sub_1E374AD40(&qword_1ECF2F5B0, &qword_1ECF2F488, &qword_1E42DA9C0, MEMORY[0x1E697D658]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F590);
  }

  return result;
}

unint64_t sub_1E3984730()
{
  result = qword_1ECF2F5A0;
  if (!qword_1ECF2F5A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F5A8, &qword_1E42AE850);
    sub_1E374AD40(&qword_1ECF2F5B0, &qword_1ECF2F488, &qword_1E42DA9C0, MEMORY[0x1E697D658]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F5A0);
  }

  return result;
}

uint64_t sub_1E39847E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  result = sub_1E3982B88(*a1, a1[1], a2);
  *a3 = result;
  *(a3 + 8) = v5;
  *(a3 + 16) = v6 & 1;
  *(a3 + 24) = v7;
  return result;
}

uint64_t sub_1E3984824(unsigned __int16 **a1)
{
  v2 = *(v1 + 24);
  v3 = *a1;
  type metadata accessor for Accessibility();
  (*(*v3 + 320))();
  sub_1E40A7DC8();

  KeyPath = 0;
  if (sub_1E373F6E0(v3[49], 232, v4, v5, v6, v7))
  {
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_2_4();
    v9 = swift_allocObject();
    *(v9 + 16) = v2;
    *(v9 + 24) = v3;
    swift_retain_n();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F478, &unk_1E42AE450);
  sub_1E39833F0();
  sub_1E3E03180();

  v10 = OUTLINED_FUNCTION_39_18();
  return sub_1E3984BA8(v10, v11, v12, v13, KeyPath);
}

uint64_t sub_1E39849B0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E39849F8@<X0>(unsigned __int16 **a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 24);
  v5 = *a1;
  type metadata accessor for Accessibility();
  (*(*v5 + 320))();
  sub_1E40A7DC8();

  *a2 = sub_1E4201D44();
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F5E8, &qword_1E42AE8C0);
  KeyPath = 0;
  if (sub_1E373F6E0(v5[49], 232, v6, v7, v8, v9))
  {
    KeyPath = swift_getKeyPath();
    OUTLINED_FUNCTION_2_4();
    v11 = swift_allocObject();
    *(v11 + 16) = v4;
    *(v11 + 24) = v5;
    swift_retain_n();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F478, &unk_1E42AE450);
  sub_1E39833F0();
  sub_1E3E03180();
  v12 = OUTLINED_FUNCTION_39_18();
  sub_1E3984BA8(v12, v13, v14, v15, KeyPath);
}

uint64_t sub_1E3984BA8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a4)
  {
    sub_1E3264CE0(result, a2);

    return j__swift_release(a5);
  }

  return result;
}

double sub_1E3984C10(char a1)
{
  type metadata accessor for ContextMenuController(0);
  OUTLINED_FUNCTION_1_104();
  sub_1E39849B0(v2, v3, &unk_1E42BD340);
  OUTLINED_FUNCTION_11_61();
  v4 = sub_1E4200BC4();
  v7 = v4;
  v8 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_hasAppeared;
  if (a1)
  {
    OUTLINED_FUNCTION_45_20(v4, v5, v6);
    *(v7 + v8) = 1;

    OUTLINED_FUNCTION_11_61();
    v9 = sub_1E4200BC4();
    sub_1E4060B3C(v9, v10);

    OUTLINED_FUNCTION_11_61();
    v11 = sub_1E4200BC4();
    v12 = OBJC_IVAR____TtC8VideosUI21ContextMenuController_dialogMetrics;
    OUTLINED_FUNCTION_5_0(v11 + OBJC_IVAR____TtC8VideosUI21ContextMenuController_dialogMetrics, &v16);
    v13 = *(v11 + v12);

    if (v13)
    {
      type metadata accessor for Metrics(0);
      v15 = OUTLINED_FUNCTION_50();
      sub_1E3BA7798(v15);
    }
  }

  else
  {
    OUTLINED_FUNCTION_45_20(v4, v5, v6);
    *(v7 + v8) = 0;
  }

  return result;
}

uint64_t sub_1E3984D54@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for ContextMenuController(0);
  OUTLINED_FUNCTION_1_104();
  sub_1E39849B0(v2, v3, &unk_1E42BD340);
  OUTLINED_FUNCTION_11_61();
  sub_1E4200BC4();
  result = sub_1E42010C4();
  *a1 = result;
  a1[1] = v5;
  return result;
}

void *sub_1E3984DE4@<X0>(void *a1@<X8>, uint64_t a2@<X1>, uint64_t a3@<X2>)
{
  v9 = *(v3 + 16);
  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {
    sub_1E42037C4();
    v10 = *(v9 + 8);
    if (*v10 == _TtC8VideosUI23ContextMenuButtonLayout)
    {
      v11 = (v10 + 26);
      OUTLINED_FUNCTION_5_0((v10 + 26), v25);
      v16 = (v10 + 27);
      v17 = (v10 + 28);
      v18 = (v10 + 29);
    }

    else
    {
      v19 = [objc_opt_self() isMac];
      v12.n128_u64[0] = 25.0;
      v13.n128_u64[0] = 25.0;
      v14.n128_u64[0] = 25.0;
      v15.n128_u64[0] = 25.0;
      if (!v19)
      {
LABEL_8:
        j_nullsub_1(v12, v13, v14, v15);
        OUTLINED_FUNCTION_41_8();
        LOBYTE(v27) = 0;
        LOBYTE(__src[0]) = 0;
        *v23 = v4;
        *&v23[8] = v5;
        *&v23[16] = v6;
        *&v23[24] = v7;
        v23[32] = 0;
        v24 = 0;
        goto LABEL_9;
      }

      v11 = MEMORY[0x1E69DDCE0];
      v17 = (MEMORY[0x1E69DDCE0] + 16);
      v16 = (MEMORY[0x1E69DDCE0] + 8);
      v18 = (MEMORY[0x1E69DDCE0] + 24);
    }

    v14.n128_u64[0] = *v17;
    v13.n128_u64[0] = *v16;
    v12.n128_u64[0] = *v11;
    v15.n128_u64[0] = *v18;
    goto LABEL_8;
  }

  sub_1E4201D44();
  v39 = 1;
  v40[0] = 1;
  v25[0] = 1;
  __src[0] = 0;
  LOBYTE(__src[1]) = 1;
  __src[2] = sub_1E4201B84();
  __src[3] = 0;
  LOBYTE(__src[4]) = 1;
  __src[5] = 0;
  LOBYTE(__src[6]) = 1;
  __src[7] = sub_1E42037C4();
  __src[8] = 0;
  LOBYTE(__src[9]) = 1;
  __src[10] = 0;
  LOBYTE(__src[11]) = 1;
  v27 = 0;
  v28 = 1;
  v29 = __src[2];
  v30 = 0;
  v31 = 1;
  v32 = 0;
  v33 = 1;
  v34 = __src[7];
  v35 = 0;
  v36 = 1;
  v37 = 0;
  v38 = 1;
  sub_1E3743538(__src, v40, &qword_1ECF2F628, &unk_1E42AE960);
  sub_1E325F69C(&v27, &qword_1ECF2F628);
  memcpy(&v25[7], __src, 0x59uLL);
  v39 = 1;
  memcpy(&v23[1], v25, 0x60uLL);
  v24 = 1;
LABEL_9:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F600, &qword_1E42AE908);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F608, &qword_1E42AE910);
  sub_1E3985174();
  OUTLINED_FUNCTION_1();
  sub_1E374AD40(v20, &qword_1ECF2F608, &qword_1E42AE910, v21);
  sub_1E4201F44();
  return memcpy(a1, v40, 0x72uLL);
}

unint64_t sub_1E39850BC()
{
  result = qword_1EE288F18;
  if (!qword_1EE288F18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F5F8, &qword_1E42AE900);
    sub_1E3985174();
    sub_1E374AD40(&qword_1EE288458, &qword_1ECF2F608, &qword_1E42AE910, MEMORY[0x1E6981870]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288F18);
  }

  return result;
}

unint64_t sub_1E3985174()
{
  result = qword_1EE289830;
  if (!qword_1EE289830)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F600, &qword_1E42AE908);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289830);
  }

  return result;
}

unint64_t sub_1E39851F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE286A80;
  if (!qword_1EE286A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE286A80);
  }

  return result;
}

uint64_t objectdestroy_50Tm()
{

  sub_1E3264CE0(*(v0 + 32), *(v0 + 40));

  return swift_deallocObject();
}

double sub_1E39852A0()
{
  type metadata accessor for ContextMenuController(0);
  OUTLINED_FUNCTION_1_104();
  v2 = sub_1E39849B0(v0, v1, &unk_1E42BD340);
  OUTLINED_FUNCTION_33_28(v2);
  OUTLINED_FUNCTION_50();
  sub_1E406143C();

  return result;
}

uint64_t sub_1E3985328(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4201534();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

__n128 OUTLINED_FUNCTION_32_33(uint64_t a1)
{
  result = *v1;
  v3 = *(v1 + 16);
  *(a1 + 16) = *v1;
  *(a1 + 32) = v3;
  *(a1 + 48) = *(v1 + 32);
  return result;
}

uint64_t sub_1E39853B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F630, &qword_1E42AE970);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F638, &qword_1E42AE978);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F640, &qword_1E42AE980);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v28 - v14;
  if (sub_1E38304EC(v4, 3))
  {
    v16 = &v15[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F648, &qword_1E42AE988) + 36)];
    sub_1E4203CE4();
    v17 = sub_1E4202734();
    v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F658, &qword_1E42B5AC0) + 36)] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F650, &unk_1E42AE990);
    OUTLINED_FUNCTION_2();
    v18 = OUTLINED_FUNCTION_146();
    v19(v18);
    KeyPath = swift_getKeyPath();
    v21 = &v15[*(v12 + 36)];
    v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0) + 28);
    v23 = *MEMORY[0x1E697DBB8];
    sub_1E4200B44();
    OUTLINED_FUNCTION_2();
    (*(v24 + 104))(v21 + v22, v23);
    *v21 = KeyPath;
    sub_1E3743538(v15, v11, &qword_1ECF2F640, &qword_1E42AE980);
    swift_storeEnumTagMultiPayload();
    sub_1E3986778();
    sub_1E3986914();
    OUTLINED_FUNCTION_10_54();
    v25 = OUTLINED_FUNCTION_146();
    return sub_1E325F6F0(v25, v26, &qword_1E42AE980);
  }

  else
  {
    sub_1E39856A4(a1, v4, a3, v8);
    sub_1E3743538(v8, v11, &qword_1ECF2F630, &qword_1E42AE970);
    swift_storeEnumTagMultiPayload();
    sub_1E3986778();
    sub_1E3986914();
    OUTLINED_FUNCTION_10_54();
    return sub_1E325F6F0(v8, &qword_1ECF2F630, &qword_1E42AE970);
  }
}

uint64_t sub_1E39856A4@<X0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v189 = a3;
  LODWORD(v192) = a2;
  v193 = a1;
  v195 = a4;
  v4 = sub_1E4201534();
  v5 = OUTLINED_FUNCTION_6_4(v4, &v197 + 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_17_3(&v176 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6A8, &qword_1E42E8050);
  OUTLINED_FUNCTION_6_4(v7, &v198);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v9);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F690, &qword_1E42AE9E0);
  v11 = OUTLINED_FUNCTION_6_4(v10, &v200);
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_4_6();
  v184 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_17_3(&v176 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6B0, &qword_1E42AEAC0);
  OUTLINED_FUNCTION_6_4(v16, &v200 + 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F680, &qword_1E42AE9D0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_4_6();
  v22 = v20 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v176 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F678, &qword_1E42AE9C8);
  OUTLINED_FUNCTION_6_4(v26, v206);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v176 - v28;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6B8, &qword_1E42AEAC8);
  OUTLINED_FUNCTION_6_4(v30, &v207);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v32);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6C0, &qword_1E42AEAD0);
  OUTLINED_FUNCTION_6_4(v33, v204);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v34);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v35);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F660, &qword_1E42AE9A8);
  OUTLINED_FUNCTION_6_4(v36, &v208);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F670, &qword_1E42AE9B8);
  v40 = OUTLINED_FUNCTION_6_4(v39, v203);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_4_6();
  v43 = v41 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v176 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v176 - v48;
  MEMORY[0x1EEE9AC00](v50);
  v52 = &v176 - v51;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6C8, &qword_1E42AEAD8);
  OUTLINED_FUNCTION_6_4(v53, v202);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v55);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6D0, &qword_1E42AEAE0);
  v177 = *(v187 - 8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v56);
  v58 = &v176 - v57;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F668, &qword_1E42AE9B0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v59);
  OUTLINED_FUNCTION_44();
  if (v192 != 1)
  {
    if (v192 != 2)
    {
      v118 = OUTLINED_FUNCTION_32_0();
      __swift_instantiateConcreteTypeFromMangledNameV2(v118, v119);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_15_53();
      v120();
      OUTLINED_FUNCTION_18_41();
      sub_1E39869CC();
      OUTLINED_FUNCTION_1_11();
      sub_1E32752B0(v121, &qword_1ECF2F650, &unk_1E42AE990, v122);
      OUTLINED_FUNCTION_8_53();
      return sub_1E4201F44();
    }

    v192 = v60;
    v62 = v189;
    v63 = v61;
    if (!v189)
    {
      goto LABEL_14;
    }

    v64 = (*(*v189 + 840))();
    if (v64)
    {
      v65 = (*(*v64 + 1792))();

      if (v65)
      {
        type metadata accessor for ViewGradientLayout(0);
        v66 = sub_1E40C2E40();
        v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F650, &unk_1E42AE990);
        OUTLINED_FUNCTION_1_11();
        v70 = sub_1E32752B0(v68, &qword_1ECF2F650, &unk_1E42AE990, v69);
        sub_1E392F9D0(v66, v67, v70, v58);
        v71 = v177;
        v72 = v187;
        (*(v177 + 16))(v185, v58, v187);
        OUTLINED_FUNCTION_13_63();
        *&v200 = v67;
        *(&v200 + 1) = v70;
        OUTLINED_FUNCTION_4_78();
        sub_1E3986B54();
        sub_1E4201F44();

        (*(v71 + 8))(v58, v72);
LABEL_16:
        v135 = v190;
        sub_1E3743538(v63, v190, &qword_1ECF2F668, &qword_1E42AE9B0);
        OUTLINED_FUNCTION_13_63();
        sub_1E3986A58();
        sub_1E3986C38();
        v136 = v191;
        OUTLINED_FUNCTION_12_56(v135);
        sub_1E3743538(v136, v194, &qword_1ECF2F660, &qword_1E42AE9A8);
        OUTLINED_FUNCTION_13_63();
        v137 = OUTLINED_FUNCTION_146();
        __swift_instantiateConcreteTypeFromMangledNameV2(v137, v138);
        sub_1E39869CC();
        OUTLINED_FUNCTION_1_11();
        sub_1E32752B0(v139, &qword_1ECF2F650, &unk_1E42AE990, v140);
        OUTLINED_FUNCTION_8_53();
        sub_1E4201F44();
        sub_1E325F6F0(v136, &qword_1ECF2F660, &qword_1E42AE9A8);
        return sub_1E325F6F0(v63, &qword_1ECF2F668, &qword_1E42AE9B0);
      }
    }

    v124 = (*(*v62 + 744))();
    if (!v124)
    {
LABEL_14:
      v124 = [objc_opt_self() clearColor];
    }

    v125 = v124;
    v126 = sub_1E38F08C4(v124);

    LOBYTE(v125) = sub_1E4202734();
    v127 = OUTLINED_FUNCTION_146();
    v129 = __swift_instantiateConcreteTypeFromMangledNameV2(v127, v128);
    OUTLINED_FUNCTION_2();
    OUTLINED_FUNCTION_15_53();
    v130();
    v131 = &v49[*(v188 + 36)];
    *v131 = v126;
    v131[8] = v125;
    sub_1E3741EA0(v49, v52, &qword_1ECF2F670, &qword_1E42AE9B8);
    sub_1E3743538(v52, v185, &qword_1ECF2F670, &qword_1E42AE9B8);
    OUTLINED_FUNCTION_18_41();
    OUTLINED_FUNCTION_1_11();
    v134 = sub_1E32752B0(v132, &qword_1ECF2F650, &unk_1E42AE990, v133);
    *&v200 = v129;
    *(&v200 + 1) = v134;
    OUTLINED_FUNCTION_4_78();
    sub_1E3986B54();
    sub_1E4201F44();
    sub_1E325F6F0(v52, &qword_1ECF2F670, &qword_1E42AE9B8);
    goto LABEL_16;
  }

  v73 = v46;
  v185 = v22;
  v74 = v184;
  v187 = v18;
  v186 = v29;
  v192 = v60;
  v75 = v189;
  if (!v189)
  {
    goto LABEL_18;
  }

  v76 = (*(*v189 + 1776))();
  LOBYTE(v200) = v76;
  LOBYTE(v196) = 8;
  sub_1E378ADF4(v76, v77, v78);
  v79 = sub_1E4205E84();
  v80 = (*(*v75 + 744))();
  v81 = v80;
  if ((v79 & 1) == 0)
  {
    if (v80)
    {
LABEL_19:
      v141 = sub_1E38F08C4(v81);

      v142 = sub_1E4202734();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F650, &unk_1E42AE990);
      OUTLINED_FUNCTION_2();
      OUTLINED_FUNCTION_15_53();
      v144 = v143();
      v145 = v43 + *(v188 + 36);
      *v145 = v141;
      *(v145 + 8) = v142;
      v146 = 0.0;
      v117 = v186;
      v147 = v43;
      if (v75)
      {
        (*(*v75 + 552))(&v196, v144);
        v82 = v178;
        v148 = v179;
        if ((v198 & 1) == 0)
        {
          v146 = sub_1E3952BE8(*&v196, *(&v196 + 1), *&v197, *(&v197 + 1));
        }
      }

      else
      {
        v82 = v178;
        v148 = v179;
      }

      v149 = *(v148 + 20);
      v150 = *MEMORY[0x1E697F468];
      sub_1E4201C44();
      OUTLINED_FUNCTION_2();
      v152 = v181;
      v153 = (*(v151 + 104))(v181 + v149, v150);
      *v152 = v146;
      v152[1] = v146;
      v153.n128_u64[0] = 2.0;
      OUTLINED_FUNCTION_17_46(v153, v154, v155);
      v156 = v182;
      sub_1E3985328(v152, v182);
      v157 = v156 + *(v180 + 36);
      v158 = v201;
      *v157 = v200;
      *(v157 + 16) = v158;
      *(v157 + 32) = v202[0];
      v159 = sub_1E4203DA4();
      v161 = v160;
      v162 = v74 + *(v183 + 36);
      sub_1E3741EA0(v156, v162, &qword_1ECF2F6A8, &qword_1E42E8050);
      v163 = (v162 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F698, &qword_1E42AE9E8) + 36));
      *v163 = v159;
      v163[1] = v161;
      sub_1E3741EA0(v147, v74, &qword_1ECF2F670, &qword_1E42AE9B8);
      v107 = &qword_1ECF2F690;
      v108 = &qword_1E42AE9E0;
      OUTLINED_FUNCTION_19_1();
      sub_1E3741EA0(v164, v165, v166, v167);
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v168, v169, v170, v171);
      OUTLINED_FUNCTION_18_41();
      sub_1E3986CC4();
      sub_1E3986D7C();
      goto LABEL_24;
    }

LABEL_18:
    v81 = [objc_opt_self() clearColor];
    goto LABEL_19;
  }

  if (!v80)
  {
    v81 = [objc_opt_self() clearColor];
  }

  v82 = v25;
  v83 = sub_1E38F08C4(v81);

  v84 = sub_1E4202734();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F650, &unk_1E42AE990);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_15_53();
  v86 = v85();
  v87 = v73 + *(v188 + 36);
  *v87 = v83;
  *(v87 + 8) = v84;
  v88.n128_f64[0] = (*(*v75 + 1944))(v86);
  OUTLINED_FUNCTION_17_46(v88, v89, v90);
  v91 = v203[1];
  v92 = v204[0];
  v93 = v204[1];
  v94 = v205;
  v95 = v206[0];
  v96 = v206[1];
  v97 = sub_1E4203DA4();
  v99 = v98;
  *&v196 = v91;
  *(&v196 + 1) = __PAIR64__(v93, v92);
  *&v197 = v94;
  *(&v197 + 1) = v95;
  *&v198 = v96;
  *(&v198 + 1) = v97;
  v199 = v98;
  v100 = v185;
  sub_1E3741EA0(v73, v185, &qword_1ECF2F670, &qword_1E42AE9B8);
  v101 = v100 + *(v187 + 36);
  v102 = v197;
  *v101 = v196;
  *(v101 + 16) = v102;
  *(v101 + 32) = v198;
  *(v101 + 48) = v199;
  *&v200 = v91;
  *(&v200 + 1) = __PAIR64__(v93, v92);
  *&v201 = v94;
  *(&v201 + 1) = v95;
  v202[0] = v96;
  v202[1] = v97;
  v203[0] = v99;
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v103, v104, v105, v106);
  sub_1E325F6F0(&v200, &qword_1ECF2F688, &qword_1E42AE9D8);
  v107 = &qword_1ECF2F680;
  v108 = &qword_1E42AE9D0;
  OUTLINED_FUNCTION_19_1();
  sub_1E3741EA0(v109, v110, v111, v112);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v113, v114, v115, v116);
  OUTLINED_FUNCTION_13_63();
  sub_1E3986CC4();
  sub_1E3986D7C();
  v117 = v186;
LABEL_24:
  sub_1E4201F44();
  sub_1E325F6F0(v82, v107, v108);
  v172 = v190;
  sub_1E3743538(v117, v190, &qword_1ECF2F678, &qword_1E42AE9C8);
  OUTLINED_FUNCTION_18_41();
  sub_1E3986A58();
  sub_1E3986C38();
  v173 = v191;
  OUTLINED_FUNCTION_12_56(v172);
  sub_1E3743538(v173, v194, &qword_1ECF2F660, &qword_1E42AE9A8);
  OUTLINED_FUNCTION_13_63();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F650, &unk_1E42AE990);
  sub_1E39869CC();
  OUTLINED_FUNCTION_1_11();
  sub_1E32752B0(v174, &qword_1ECF2F650, &unk_1E42AE990, v175);
  OUTLINED_FUNCTION_8_53();
  sub_1E4201F44();
  sub_1E325F6F0(v173, &qword_1ECF2F660, &qword_1E42AE9A8);
  return sub_1E325F6F0(v117, &qword_1ECF2F678, &qword_1E42AE9C8);
}

unint64_t sub_1E3986778()
{
  result = qword_1EE289660;
  if (!qword_1EE289660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F640, &qword_1E42AE980);
    sub_1E3986830();
    sub_1E32752B0(&qword_1EE2887D0, &qword_1ECF291E0, &qword_1E42AE9A0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289660);
  }

  return result;
}

unint64_t sub_1E3986830()
{
  result = qword_1EE289AB8;
  if (!qword_1EE289AB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F648, &qword_1E42AE988);
    sub_1E32752B0(&qword_1EE288950, &qword_1ECF2F650, &unk_1E42AE990, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1EE288890, &qword_1ECF2F658, &qword_1E42B5AC0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AB8);
  }

  return result;
}

unint64_t sub_1E3986914()
{
  result = qword_1EE288AD0;
  if (!qword_1EE288AD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F630, &qword_1E42AE970);
    sub_1E39869CC();
    sub_1E32752B0(&qword_1EE288950, &qword_1ECF2F650, &unk_1E42AE990, MEMORY[0x1E697FDF8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288AD0);
  }

  return result;
}

unint64_t sub_1E39869CC()
{
  result = qword_1EE288B90;
  if (!qword_1EE288B90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F660, &qword_1E42AE9A8);
    sub_1E3986A58();
    sub_1E3986C38();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288B90);
  }

  return result;
}

unint64_t sub_1E3986A58()
{
  result = qword_1EE288E30;
  if (!qword_1EE288E30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F668, &qword_1E42AE9B0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F650, &unk_1E42AE990);
    sub_1E32752B0(&qword_1EE288950, &qword_1ECF2F650, &unk_1E42AE990, MEMORY[0x1E697FDF8]);
    swift_getOpaqueTypeConformance2();
    sub_1E3986B54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288E30);
  }

  return result;
}

unint64_t sub_1E3986B54()
{
  result = qword_1EE289AC0;
  if (!qword_1EE289AC0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F670, &qword_1E42AE9B8);
    sub_1E32752B0(&qword_1EE288950, &qword_1ECF2F650, &unk_1E42AE990, MEMORY[0x1E697FDF8]);
    sub_1E32752B0(&qword_1EE288898, &qword_1ECF2DCD8, &qword_1E42AE9C0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289AC0);
  }

  return result;
}

unint64_t sub_1E3986C38()
{
  result = qword_1EE288EF0;
  if (!qword_1EE288EF0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F678, &qword_1E42AE9C8);
    sub_1E3986CC4();
    sub_1E3986D7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288EF0);
  }

  return result;
}

unint64_t sub_1E3986CC4()
{
  result = qword_1EE289668;
  if (!qword_1EE289668)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F680, &qword_1E42AE9D0);
    sub_1E3986B54();
    sub_1E32752B0(&qword_1EE289340, &qword_1ECF2F688, &qword_1E42AE9D8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289668);
  }

  return result;
}

unint64_t sub_1E3986D7C()
{
  result = qword_1EE289670;
  if (!qword_1EE289670)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F690, &qword_1E42AE9E0);
    sub_1E3986B54();
    sub_1E32752B0(&qword_1EE289348, &qword_1ECF2F698, &qword_1E42AE9E8, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289670);
  }

  return result;
}

uint64_t sub_1E3986E5C(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 16))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E3986EB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

unint64_t sub_1E3986F10()
{
  result = qword_1EE288EE8;
  if (!qword_1EE288EE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F6A0, &unk_1E42AEAB0);
    sub_1E3986778();
    sub_1E3986914();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288EE8);
  }

  return result;
}

id sub_1E3986F9C()
{
  v0 = objc_opt_self();
  sub_1E398B468(v0);
  if (v1 && (v2 = sub_1E4206124(), , (v2 & 1) != 0))
  {
    v3 = 16707;
  }

  else
  {
    v3 = 21333;
  }

  MEMORY[0x1E69109E0](v3, 0xE200000000000000);
  v4 = sub_1E3280A90(0, &qword_1EE23AE00, 0x1E69DCAB8);
  v5 = objc_opt_self();

  result = sub_1E39870C0(0xD00000000000001ALL, 0x80000001E4269930, [v5 vui_videosUIBundle], 0);
  if (result)
  {
    OUTLINED_FUNCTION_50();

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E39870C0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v6 = sub_1E4205ED4();

  v7 = [swift_getObjCClassFromMetadata() imageNamed:v6 inBundle:a3 compatibleWithTraitCollection:a4];

  return v7;
}

void sub_1E3987144()
{
  if ([objc_opt_self() sharedInstance])
  {
    OUTLINED_FUNCTION_24_30("TV.Sports.Favorites.Onboarding.Title");
    OUTLINED_FUNCTION_83();
    if (v0)
    {
      OUTLINED_FUNCTION_57();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E39871B0()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    sub_1E3797E30(0xD000000000000023, 0x80000001E42698D0, v1);
    OUTLINED_FUNCTION_83();
    if (v0)
    {
      OUTLINED_FUNCTION_57();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E3987230()
{
  v1 = [objc_opt_self() sharedInstance];
  if (v1)
  {
    sub_1E3797E30(0xD00000000000002BLL, 0x80000001E42698A0, v1);
    OUTLINED_FUNCTION_83();
    if (v0)
    {
      OUTLINED_FUNCTION_57();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E39872B0()
{
  if ([objc_opt_self() sharedInstance])
  {
    OUTLINED_FUNCTION_24_30("TV.Sports.Favorites.Onboarding.Defer");
    OUTLINED_FUNCTION_83();
    if (v0)
    {
      OUTLINED_FUNCTION_57();
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1E3987320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v19 = swift_allocObject();
  *(v19 + 16) = a12;
  *(v19 + 24) = a13;
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  a9[9] = a11;
  a9[10] = sub_1E3987404;
  a9[11] = v19;

  OUTLINED_FUNCTION_192();
}

void sub_1E3987438(id (**a1)()@<X8>)
{
  *a1 = sub_1E3986F9C;
  a1[1] = 0;
  a1[2] = sub_1E3987144;
  a1[3] = 0;
  a1[4] = sub_1E39871B0;
  a1[5] = 0;
  a1[6] = sub_1E3987230;
  a1[7] = 0;
  a1[8] = sub_1E39872B0;
  a1[9] = 0;
  a1[10] = j__OUTLINED_FUNCTION_3_24;
  a1[11] = 0;
}

id sub_1E39874B4()
{
  v1 = objc_allocWithZone(v0);
  v2 = OUTLINED_FUNCTION_50();
  return sub_1E39874E4(v2);
}

id sub_1E39874E4(const void *a1)
{
  ObjectType = swift_getObjectType();
  v4 = (v1 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_completion);
  *v4 = 0;
  v4[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller) = 0;
  v5 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView;
  v6 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v7 = OUTLINED_FUNCTION_5_8();
  *(v1 + v5) = [v8 v9];
  v10 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_confirmationButton;
  *(v1 + v10) = [objc_opt_self() boldButton];
  v11 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_deferButton;
  *(v1 + v11) = [objc_opt_self() linkButton];
  *(v1 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_lastRecordedPageEventData) = 0;
  v12 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_task;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E0, &unk_1E42AEB00);
  v13 = swift_allocObject();
  *(v13 + 24) = 0;
  *(v13 + 16) = 0;
  *(v1 + v12) = v13;
  memcpy((v1 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel), a1, 0x60uLL);

  OUTLINED_FUNCTION_25();
  v16 = objc_msgSendSuper2(v14, v15, v1, ObjectType);
  [v16 setModalPresentationStyle_];
  [v16 setPreferredContentSize_];

  return v16;
}

id sub_1E39876F0()
{
  v1 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller);
  }

  else
  {
    v4 = v0;
    v5 = v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel;
    v6 = (*(v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel + 16))();
    v8 = v7;
    v9 = (*(v5 + 32))();
    v11 = v10;
    v12 = objc_allocWithZone(MEMORY[0x1E69B7D70]);
    v13 = sub_1E398B2CC(v6, v8, v9, v11, 0, 1);
    v14 = *(v4 + v1);
    *(v4 + v1) = v13;
    v3 = v13;

    v2 = 0;
  }

  v15 = v2;
  return v3;
}

double sub_1E39877BC(void (*a1)(uint64_t), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v13 - v5;
  if (![objc_opt_self() userHasActiveAccount])
  {
    v7 = 2;
    goto LABEL_5;
  }

  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  if (byte_1ECF713B8)
  {
    v7 = 1;
LABEL_5:
    a1(v7);
    return result;
  }

  v9 = sub_1E4206474();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v9);
  sub_1E4206434();

  v10 = sub_1E4206424();
  v11 = swift_allocObject();
  v12 = MEMORY[0x1E69E85E0];
  v11[2] = v10;
  v11[3] = v12;
  v11[4] = a1;
  v11[5] = a2;
  sub_1E37748D8(0, 0, v6, &unk_1E42AEB18, v11);

  return result;
}

uint64_t sub_1E398791C()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v0[3] = v2;
  v3 = sub_1E41FFCB4();
  v0[4] = v3;
  OUTLINED_FUNCTION_8_0(v3);
  v0[5] = v4;
  v0[6] = OUTLINED_FUNCTION_86_0();
  v5 = sub_1E41FF154();
  v0[7] = v5;
  OUTLINED_FUNCTION_8_0(v5);
  v0[8] = v6;
  v0[9] = OUTLINED_FUNCTION_86_0();
  v7 = sub_1E41FF024();
  v0[10] = v7;
  OUTLINED_FUNCTION_8_0(v7);
  v0[11] = v8;
  v0[12] = OUTLINED_FUNCTION_86_0();
  v9 = sub_1E41FF044();
  v0[13] = v9;
  OUTLINED_FUNCTION_8_0(v9);
  v0[14] = v10;
  v0[15] = swift_task_alloc();
  v0[16] = swift_task_alloc();
  v0[17] = swift_task_alloc();
  sub_1E4206434();
  v0[18] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  v12 = sub_1E42063B4();
  v0[19] = v12;
  v0[20] = v11;

  return MEMORY[0x1EEE6DFA0](sub_1E3987AF4, v12, v11);
}

uint64_t sub_1E3987AF4()
{
  OUTLINED_FUNCTION_24();
  sub_1E41FF0C4();
  v1 = swift_task_alloc();
  *(v0 + 168) = v1;
  *v1 = v0;
  v1[1] = sub_1E3987B94;
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE43730](v2);
}

uint64_t sub_1E3987B94()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *(*v1 + 64);
  v5 = *(*v1 + 56);
  *(*v1 + 176) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 160);
  v7 = *(v2 + 152);
  if (v0)
  {
    v8 = sub_1E3988004;
  }

  else
  {
    v8 = sub_1E3987D2C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1E3987D2C()
{
  v39 = v0;
  v1 = v0[17];
  v37 = v0[16];
  v2 = v0[13];
  v3 = v0[14];
  v5 = v0[11];
  v4 = v0[12];
  v6 = v0[10];
  v7 = v0[5];
  v8 = v0[6];
  v9 = v0[4];

  sub_1E41FF014();
  (*(v5 + 8))(v4, v6);
  v10 = sub_1E324FBDC();
  (*(v7 + 16))(v8, v10, v9);
  (*(v3 + 16))(v37, v1, v2);
  v11 = sub_1E41FFC94();
  v12 = sub_1E42067E4();
  v13 = os_log_type_enabled(v11, v12);
  v14 = v0[16];
  v16 = v0[5];
  v15 = v0[6];
  v17 = v0[4];
  if (v13)
  {
    v18 = OUTLINED_FUNCTION_6_21();
    v36 = v17;
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 136315138;
    v34 = sub_1E41FF034();
    v35 = v15;
    v21 = v20;
    v22 = OUTLINED_FUNCTION_14_62();
    v23(v22);
    sub_1E3270FC8(v34, v21, &v38);
    OUTLINED_FUNCTION_50();

    *(v18 + 4) = v14;
    _os_log_impl(&dword_1E323F000, v11, v12, "onboarding sheet. status is:%s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v16 + 8))(v35, v36);
  }

  else
  {

    v24 = OUTLINED_FUNCTION_14_62();
    v25(v24);
    (*(v16 + 8))(v15, v17);
  }

  v26 = v0[17];
  v27 = v0[15];
  v28 = v0[13];
  v29 = v0[2];
  (*(v0[14] + 104))(v27, *MEMORY[0x1E69D5858], v28);
  v30 = sub_1E3988234();
  v37(v27, v28);
  if (v30)
  {
    v31 = 0;
  }

  else
  {
    v31 = 3;
  }

  v29(v31);
  sub_1E398B540(v31);
  v37(v26, v28);

  OUTLINED_FUNCTION_15_12();

  return v32();
}

uint64_t sub_1E3988004()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E39880B8()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E398814C;

  return sub_1E398791C();
}

uint64_t sub_1E398814C()
{
  OUTLINED_FUNCTION_24();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_1E3988234()
{
  sub_1E41FF044();
  sub_1E398B560();
  sub_1E4206254();
  sub_1E4206254();
  if (v5 == v3 && v6 == v4)
  {
    v1 = 1;
  }

  else
  {
    v1 = sub_1E42079A4();
  }

  return v1 & 1;
}

void sub_1E39882E4()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_completion);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller) = 0;
  v2 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView;
  v3 = objc_allocWithZone(MEMORY[0x1E69DCAE0]);
  v4 = OUTLINED_FUNCTION_5_8();
  *(v0 + v2) = [v5 v6];
  v7 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_confirmationButton;
  *(v0 + v7) = [objc_opt_self() boldButton];
  v8 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_deferButton;
  *(v0 + v8) = [objc_opt_self() linkButton];
  *(v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_lastRecordedPageEventData) = 0;
  v9 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_task;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E0, &unk_1E42AEB00);
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  *(v10 + 16) = 0;
  *(v0 + v9) = v10;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E3988438()
{
  v1 = v0;
  v46.receiver = v0;
  v46.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v46, sel_viewDidLoad);
  v2 = sub_1E39876F0();
  [v2 setModalPresentationStyle_];

  v3 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller;
  [v1 addChildViewController_];
  v4 = [v1 view];
  if (!v4)
  {
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v5 = v4;
  v6 = [*&v1[v3] view];
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  [v5 addSubview_];

  [*&v1[v3] didMoveToParentViewController_];
  v8 = [*&v1[v3] contentView];
  v9 = [v8 constraints];

  sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
  v10 = sub_1E42062B4();

  v11 = sub_1E32AE9B0(v10);
  for (i = 0; ; ++i)
  {
    if (v11 == i)
    {

      goto LABEL_14;
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x1E6911E60](i, v10);
    }

    else
    {
      if (i >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_18;
      }

      v13 = *(v10 + 8 * i + 32);
    }

    v14 = v13;
    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    if ([v13 firstAttribute] == 8)
    {
      break;
    }
  }

  v15 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1E4298880;
  *(v16 + 32) = v14;
  v17 = v14;
  v18 = sub_1E42062A4();

  [v15 deactivateConstraints_];

LABEL_14:
  v19 = [v1 view];
  if (!v19)
  {
    goto LABEL_21;
  }

  v20 = v19;
  v21 = objc_opt_self();
  v22 = [v21 systemBackgroundColor];
  [v20 setBackgroundColor_];

  v23 = [*&v1[v3] contentView];
  v24 = [v21 clearColor];
  [v23 setBackgroundColor_];

  v25 = [v1 view];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 traitCollection];

    v28 = [v27 userInterfaceStyle];
    sub_1E3988D9C(v28, 0);
    v29 = [*&v1[v3] buttonTray];
    v30 = sub_1E42062A4();
    [v29 setPrivacyLinkForBundles_];

    v31 = *&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_confirmationButton];
    v32 = &v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel];
    v33 = (*&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel + 48])();
    sub_1E398B4CC(v33, v34, 0, v31);
    OUTLINED_FUNCTION_30_28(v35, v36, v37, sel_doConfirmationAction);
    v38 = [*&v1[v3] buttonTray];
    [v38 addButton_];

    v39 = *&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_deferButton];
    v40 = v32[8]();
    sub_1E398B4CC(v40, v41, 0, v39);
    OUTLINED_FUNCTION_30_28(v42, v43, v44, sel_doDeferAction);
    v45 = [*&v1[v3] buttonTray];
    [v45 addButton_];

    return;
  }

LABEL_22:
  __break(1u);
}

void sub_1E3988938(char a1)
{
  v33.receiver = v1;
  v33.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v33, sel_viewDidAppear_, a1 & 1);
  v3 = objc_opt_self();
  v4 = [v3 sharedInstance];
  v5 = [v4 lastRecordedPageEventData];

  v6 = *&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_lastRecordedPageEventData];
  *&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_lastRecordedPageEventData] = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4299720;
  v8 = sub_1E4205F14();
  v9 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_80(v8, v10, v11, v12, v13, v14, v15, v16, v8);
  v17 = sub_1E4205F14();
  *(inited + 96) = v9;
  *(inited + 72) = v17;
  *(inited + 80) = v18;
  v19 = sub_1E4205F14();
  OUTLINED_FUNCTION_3_80(v19, v20, v21, v22, v23, v24, v25, v26, v19);
  v27 = sub_1E4205F14();
  *(inited + 168) = v9;
  *(inited + 144) = v27;
  *(inited + 152) = v28;
  v29 = MEMORY[0x1E69E69B8];
  OUTLINED_FUNCTION_57();
  sub_1E4205CB4();
  v30 = objc_opt_self();
  OUTLINED_FUNCTION_57();
  sub_1E4205C44();
  OUTLINED_FUNCTION_11_5();

  v31 = [v30 createWithMetricsData_];

  v32 = [v3 sharedInstance];
  [v32 recordPage_];
}

void sub_1E3988B84(char a1)
{
  v7.receiver = v1;
  v7.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v7, sel_viewDidDisappear_, a1 & 1);
  v3 = *&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_lastRecordedPageEventData];
  if (v3)
  {
    v4 = objc_opt_self();
    v5 = v3;
    v6 = [v4 sharedInstance];
    [v6 setLastRecordedPageEventData_];
  }
}

void sub_1E3988C70()
{
  v13.receiver = v0;
  v13.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v13, sel_viewWillLayoutSubviews);
  v1 = sub_1E39876F0();
  v2 = [v1 view];

  if (v2)
  {
    v3 = [v0 view];
    if (v3)
    {
      v4 = v3;
      [v3 bounds];
      v6 = v5;
      v8 = v7;
      v10 = v9;
      v12 = v11;

      [v2 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_1E3988D9C(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = (*(v2 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel))();
  v8 = v6;
  if (v9)
  {
    if (a1 == 2)
    {
      v10 = v7;
    }

    else
    {
      v10 = v6;
    }

    if (v10)
    {
      v11 = objc_opt_self();
      v12 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView;
      v13 = *(v3 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView);
      v14 = v10;
      v15 = [v11 makeImageViewWithDescriptor:v14 existingView:v13];
      if (v15)
      {
        v16 = v15;
        if (a2)
        {
        }

        else
        {
          v47 = *(v3 + v12);
          *(v3 + v12) = v15;
          v76 = v15;

          [v76 setTranslatesAutoresizingMaskIntoConstraints_];
          v48 = sub_1E39876F0();
          v49 = [v48 contentView];

          [v49 addSubview_];
          v74 = objc_opt_self();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
          v73 = v14;
          v50 = swift_allocObject();
          *(v50 + 16) = xmmword_1E42A76D0;
          v51 = [*(v3 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller) contentView];
          v52 = [v51 heightAnchor];

          v53 = [v52 constraintEqualToConstant_];
          *(v50 + 32) = v53;
          v54 = [*(v3 + v12) heightAnchor];
          v55 = OUTLINED_FUNCTION_7_83();
          v56 = [v55 heightAnchor];

          v57 = [v53 constraintEqualToAnchor:v56 multiplier:0.6];
          *(v50 + 40) = v57;
          v58 = [*(v3 + v12) centerYAnchor];
          v59 = OUTLINED_FUNCTION_7_83();
          v60 = [v59 centerYAnchor];

          v61 = [v53 constraintEqualToAnchor:v60 constant:22.0];
          *(v50 + 48) = v61;
          v62 = [*(v3 + v12) leadingAnchor];
          v63 = OUTLINED_FUNCTION_7_83();
          v64 = [v63 leadingAnchor];

          v65 = [v53 constraintEqualToAnchor_];
          *(v50 + 56) = v65;
          v66 = [*(v3 + v12) trailingAnchor];
          v67 = OUTLINED_FUNCTION_7_83();
          v68 = [v67 trailingAnchor];

          v69 = [v53 constraintEqualToAnchor_];
          *(v50 + 64) = v69;
          sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
          v70 = sub_1E42062A4();

          [v74 activateConstraints_];
        }
      }

      else
      {
      }
    }

    OUTLINED_FUNCTION_192();
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E69DCAE0]) initWithImage_];
      v18 = OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView;
      v19 = *(v2 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView);
      *(v2 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_imageView) = v17;
      v20 = v17;

      [v20 setContentMode_];
      [*(v3 + v18) setTranslatesAutoresizingMaskIntoConstraints_];
      v21 = sub_1E39876F0();
      v22 = [v21 contentView];

      [v22 addSubview_];
      v75 = objc_opt_self();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_1E42A76D0;
      v24 = [*(v3 + v18) heightAnchor];
      v25 = [v24 constraintEqualToConstant_];

      *(v23 + 32) = v25;
      v26 = [*(v3 + v18) topAnchor];
      v27 = [*(v3 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController____lazy_storage___controller) contentView];
      v28 = [v27 topAnchor];

      v29 = OUTLINED_FUNCTION_19_45();
      *(v23 + 40) = v29;
      v30 = [*(v3 + v18) leadingAnchor];
      v31 = OUTLINED_FUNCTION_22_31();
      v32 = [v31 leadingAnchor];

      v33 = OUTLINED_FUNCTION_19_45();
      *(v23 + 48) = v33;
      v34 = [*(v3 + v18) trailingAnchor];
      v35 = OUTLINED_FUNCTION_22_31();
      v36 = [v35 trailingAnchor];

      v37 = OUTLINED_FUNCTION_19_45();
      *(v23 + 56) = v37;
      v38 = [*(v3 + v18) bottomAnchor];
      v39 = OUTLINED_FUNCTION_22_31();
      v40 = [v39 bottomAnchor];

      v41 = [v26 constraintEqualToAnchor_];
      *(v23 + 64) = v41;
      sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
      v42 = sub_1E42062A4();

      [v75 activateConstraints_];
    }

    OUTLINED_FUNCTION_192();

    sub_1E398B380(v43, v44, v45);
  }
}

void sub_1E39894FC()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_task);
  os_unfair_lock_lock((v1 + 24));
  sub_1E398966C((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
}

void sub_1E3989558(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  if (!*a1)
  {
    v7 = sub_1E4206474();
    __swift_storeEnumTagSinglePayload(v6, 1, 1, v7);
    v8 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v8;
    sub_1E398A91C(0, 0, v6, &unk_1E42AEDD8, v9);
    v10 = OUTLINED_FUNCTION_11_5();
    sub_1E325A8C0(v10);
    *a1 = a2;
  }
}

uint64_t sub_1E3989698()
{
  OUTLINED_FUNCTION_24();
  v0[13] = v1;
  v2 = sub_1E41FF144();
  v0[14] = v2;
  OUTLINED_FUNCTION_8_0(v2);
  v0[15] = v3;
  v0[16] = OUTLINED_FUNCTION_86_0();
  v4 = sub_1E41FF044();
  v0[17] = v4;
  OUTLINED_FUNCTION_8_0(v4);
  v0[18] = v5;
  v0[19] = OUTLINED_FUNCTION_86_0();
  v6 = sub_1E41FEFF4();
  v0[20] = v6;
  OUTLINED_FUNCTION_8_0(v6);
  v0[21] = v7;
  v0[22] = OUTLINED_FUNCTION_86_0();
  v8 = sub_1E41FF154();
  v0[23] = v8;
  OUTLINED_FUNCTION_8_0(v8);
  v0[24] = v9;
  v0[25] = swift_task_alloc();
  v0[26] = swift_task_alloc();
  v10 = sub_1E41FF024();
  v0[27] = v10;
  OUTLINED_FUNCTION_8_0(v10);
  v0[28] = v11;
  v0[29] = OUTLINED_FUNCTION_86_0();
  v12 = sub_1E41FFCB4();
  v0[30] = v12;
  OUTLINED_FUNCTION_8_0(v12);
  v0[31] = v13;
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v0[34] = swift_task_alloc();
  v14 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v14, v15, v16);
}

uint64_t sub_1E39898EC()
{
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[35] = Strong;
  v2 = v0[34];
  if (!Strong)
  {

    OUTLINED_FUNCTION_15_12();
    OUTLINED_FUNCTION_29_30();

    __asm { BRAA            X1, X16 }
  }

  v3 = v0[30];
  v4 = v0[31];
  v5 = sub_1E324FBDC();
  v0[36] = v5;
  v6 = *(v4 + 16);
  v0[37] = v6;
  v0[38] = (v4 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v2, v5, v3);
  v7 = sub_1E41FFC94();
  v8 = sub_1E42067E4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1E323F000, v7, v8, "setting sports favorites sync enabled", v9, 2u);
    OUTLINED_FUNCTION_6_0();
  }

  v10 = v0[34];
  v11 = v0[30];
  v12 = v0[31];
  v14 = v0[18];
  v13 = v0[19];
  v15 = v0[17];

  v16 = *(v12 + 8);
  v0[39] = v16;
  v16(v10, v11);
  sub_1E41FF0C4();
  (*(v14 + 104))(v13, *MEMORY[0x1E69D5858], v15);
  sub_1E41FEFE4();
  v19 = swift_task_alloc();
  v0[40] = v19;
  *v19 = v0;
  v19[1] = sub_1E3989CD0;
  OUTLINED_FUNCTION_29_30();

  return MEMORY[0x1EEE43738](v20, v21);
}

uint64_t sub_1E3989CD0()
{
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  v2[41] = v0;

  if (v0)
  {
    (*(v2[21] + 8))(v2[22], v2[20]);
    v4 = OUTLINED_FUNCTION_57();
    v5(v4);
    v6 = sub_1E398A5B4;
  }

  else
  {
    v7 = v2[26];
    v8 = v2[23];
    v9 = v2[24];
    (*(v2[21] + 8))(v2[22], v2[20]);
    v10 = *(v9 + 8);
    v2[42] = v10;
    v2[43] = (v9 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v10(v7, v8);
    v11 = OUTLINED_FUNCTION_57();
    v12(v11);
    v6 = sub_1E3989E84;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E3989E84()
{
  v25 = v0;
  v1 = (*(v0[35] + OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_viewModel + 80))();
  if (v1)
  {
    v2 = v1;
    sub_1E32772D8(MEMORY[0x1E69E7CC0]);
    v3 = OUTLINED_FUNCTION_11_5();
    v4 = sub_1E32772D8(v3);
    v6 = 0;
    v23 = v4;
    v7 = *(v2 + 16);
    v8 = v2 + 48;
    while (v7 != v6)
    {
      if (v6 >= *(v2 + 16))
      {
        __break(1u);
        return MEMORY[0x1EEE43750](v4, v5);
      }

      v9 = *(v8 - 16);
      v10 = *(v8 - 8);

      sub_1E3277398(&v24, v9, v10);

      v8 += 24;
      ++v6;
    }

    sub_1E41FF0C4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F6E8, &qword_1E42AEDE0);
    v11 = sub_1E41FF114();
    v12 = *(v11 - 8);
    v13 = *(v12 + 72);
    v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v15 = swift_allocObject();
    v0[45] = v15;
    *(v15 + 16) = xmmword_1E4299720;
    v16 = (v15 + v14);

    *v16 = sub_1E39701B0(v17);
    v18 = *(v12 + 104);
    v18(v16, *MEMORY[0x1E69D58D8], v11);

    *(v16 + v13) = sub_1E39701B0(v23);
    v18((v16 + v13), *MEMORY[0x1E69D58E0], v11);
    v19 = swift_task_alloc();
    v0[46] = v19;
    *v19 = v0;
    v19[1] = sub_1E398A2FC;
    v4 = v0[16];
    v5 = v15;

    return MEMORY[0x1EEE43750](v4, v5);
  }

  else
  {
    sub_1E4206434();
    v0[44] = OUTLINED_FUNCTION_104_0();
    OUTLINED_FUNCTION_50();
    v21 = sub_1E42063B4();

    return MEMORY[0x1EEE6DFA0](sub_1E398A180, v21, v20);
  }
}

uint64_t sub_1E398A180()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 280);

  [v1 dismissViewControllerAnimated:1 completion:0];
  sub_1E398AC08(0);
  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E398A200()
{
  v1 = *(v0 + 280);
  v2 = *&v1[OBJC_IVAR____TtC8VideosUI39SportsFavoritesOnboardingViewController_task];
  os_unfair_lock_lock((v2 + 24));

  *(v2 + 16) = 0;
  os_unfair_lock_unlock((v2 + 24));

  OUTLINED_FUNCTION_15_12();

  return v3();
}

uint64_t sub_1E398A2FC()
{
  v2 = *v1;
  v3 = *v1;
  OUTLINED_FUNCTION_7();
  *v4 = v3;
  *v4 = *v1;
  v3[47] = v0;

  v5 = v2[42];
  v6 = v2[25];
  v7 = v2[23];
  if (v0)
  {
    v5(v2[25], v2[23]);

    v8 = sub_1E398A768;
  }

  else
  {
    v10 = v3[15];
    v9 = v3[16];
    v11 = v3[14];

    v5(v6, v7);
    (*(v10 + 8))(v9, v11);
    v8 = sub_1E398A4CC;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1E398A4CC()
{
  OUTLINED_FUNCTION_24();
  sub_1E4206434();
  *(v0 + 384) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v1 = OUTLINED_FUNCTION_0_93();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E398A534()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 280);

  [v1 dismissViewControllerAnimated:1 completion:0];
  sub_1E398AC08(0);
  v2 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v2, v3, v4);
}

uint64_t sub_1E398A5B4()
{
  v22 = v0;
  v2 = v0[41];
  v3 = OUTLINED_FUNCTION_13_64();
  v4(v3);
  v5 = v2;
  v6 = sub_1E41FFC94();
  v7 = sub_1E42067F4();

  if (os_log_type_enabled(v6, v7))
  {
    v19 = v0[33];
    v20 = v0[39];
    v8 = v0[30];
    OUTLINED_FUNCTION_6_21();
    v21 = OUTLINED_FUNCTION_26_8();
    *v1 = 136315138;
    swift_getErrorValue();
    v9 = sub_1E4207AB4();
    v11 = sub_1E3270FC8(v9, v10, &v21);

    *(v1 + 4) = v11;
    _os_log_impl(&dword_1E323F000, v6, v7, "Failed to enable favorites sync error - %s", v1, 0xCu);
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_6_0();

    v20(v19, v8);
  }

  else
  {
    v12 = v0[39];
    v13 = v0[33];
    v14 = v0[30];

    v12(v13, v14);
  }

  sub_1E4206434();
  v0[48] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v15 = OUTLINED_FUNCTION_0_93();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1E398A768()
{
  v22 = v0;
  v2 = *(v0 + 376);
  (*(v0 + 296))(*(v0 + 256), *(v0 + 288), *(v0 + 240));
  v3 = v2;
  v4 = sub_1E41FFC94();
  v5 = sub_1E42067F4();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 376);
    v19 = *(v0 + 256);
    v20 = *(v0 + 312);
    v7 = *(v0 + 240);
    OUTLINED_FUNCTION_6_21();
    v21 = OUTLINED_FUNCTION_26_8();
    *v1 = 136315138;
    swift_getErrorValue();
    v8 = sub_1E4207AB4();
    v10 = sub_1E3270FC8(v8, v9, &v21);

    *(v1 + 4) = v10;
    OUTLINED_FUNCTION_32_34(&dword_1E323F000, v11, v12, "Failed to auto-favorite error - %s");
    OUTLINED_FUNCTION_5_22();
    OUTLINED_FUNCTION_6_0();

    v20(v19, v7);
  }

  else
  {
    v13 = *(v0 + 312);

    v14 = OUTLINED_FUNCTION_57();
    v13(v14);
  }

  sub_1E4206434();
  *(v0 + 384) = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_50();
  sub_1E42063B4();
  v15 = OUTLINED_FUNCTION_0_93();

  return MEMORY[0x1EEE6DFA0](v15, v16, v17);
}

uint64_t sub_1E398A91C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C400, &qword_1E429ABE0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v21 - v9;
  sub_1E325A828(a3, v21 - v9);
  v11 = sub_1E4206474();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);

  if (EnumTagSinglePayload == 1)
  {
    sub_1E325A8C0(v10);
  }

  else
  {
    sub_1E4206464();
    (*(*(v11 - 8) + 8))(v10, v11);
  }

  v13 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v13)
  {
    swift_getObjectType();
    v14 = sub_1E42063B4();
    v16 = v15;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v17 = sub_1E4205FB4() + 32;

      if (v16 | v14)
      {
        v22[0] = 0;
        v22[1] = 0;
        v18 = v22;
        v22[2] = v14;
        v22[3] = v16;
      }

      else
      {
        v18 = 0;
      }

      v21[1] = 7;
      v21[2] = v18;
      v21[3] = v17;
      v19 = swift_task_create();

      return v19;
    }
  }

  else
  {
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  if (v16 | v14)
  {
    v22[4] = 0;
    v22[5] = 0;
    v22[6] = v14;
    v22[7] = v16;
  }

  return swift_task_create();
}

void sub_1E398AC08(char a1)
{
  v1 = [objc_opt_self() sharedInstance];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298AD0;
  v3 = sub_1E4205F14();
  v4 = MEMORY[0x1E69E6158];
  OUTLINED_FUNCTION_3_80(v3, v5, v6, v7, v8, v9, v10, v11, v3);
  v12 = sub_1E4205F14();
  *(inited + 96) = v4;
  *(inited + 72) = v12;
  *(inited + 80) = v13;
  v14 = sub_1E4205F14();
  OUTLINED_FUNCTION_3_80(v14, v15, v16, v17, v18, v19, v20, v21, v14);
  v22 = sub_1E4205F14();
  *(inited + 168) = v4;
  *(inited + 144) = v22;
  *(inited + 152) = v23;
  v24 = sub_1E4205F14();
  OUTLINED_FUNCTION_3_80(v24, v25, v26, v27, v28, v29, v30, v31, v24);
  v32 = sub_1E4205F14();
  *(inited + 240) = v4;
  *(inited + 216) = v32;
  *(inited + 224) = v33;
  v34 = sub_1E4205F14();
  OUTLINED_FUNCTION_3_80(v34, v35, v36, v37, v38, v39, v40, v41, v34);
  v42 = sub_1E4205F14();
  *(inited + 312) = v4;
  *(inited + 288) = v42;
  *(inited + 296) = v43;
  v44 = MEMORY[0x1E69E69B8];
  OUTLINED_FUNCTION_57();
  sub_1E4205CB4();
  sub_1E4205C44();
  OUTLINED_FUNCTION_11_5();

  [v1 recordClick_];
}

id sub_1E398ADEC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_11_5();
  ObjectType = swift_getObjectType();
  sub_1E3988D9C([v3 userInterfaceStyle], 1);
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_willTransitionToTraitCollection_withTransitionCoordinator_, v3, a2);
}

void *sub_1E398B028(void *result, int a2, int a3)
{
  if (a2 < 0)
  {
    result[11] = 0;
    *(result + 9) = 0u;
    *(result + 7) = 0u;
    *(result + 5) = 0u;
    *(result + 3) = 0u;
    *(result + 1) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 96) = 1;
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

      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }

    *(result + 96) = 0;
    if (a2)
    {
      return OUTLINED_FUNCTION_25_9(result, (a2 - 1));
    }
  }

  return result;
}

uint64_t sub_1E398B09C(uint64_t *a1, unsigned int a2)
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

void *sub_1E398B0EC(void *result, unsigned int a2, unsigned int a3)
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
      return OUTLINED_FUNCTION_25_9(result, a2);
    }
  }

  return result;
}

void *sub_1E398B13C(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_8VideosUI39SportsFavoritesOnboardingViewControllerC0E11StatusErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1E398B1C0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

void *sub_1E398B21C(void *result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_25_9(result, a2 + 2);
    }
  }

  return result;
}

uint64_t sub_1E398B284(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E398B2A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

id sub_1E398B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v7 = v6;
  v11 = sub_1E4205ED4();

  if (a4)
  {
    v12 = sub_1E4205ED4();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v7 initWithTitle:v11 detailText:v12 icon:a5 contentLayout:a6];

  return v13;
}

void sub_1E398B380(void *a1, void *a2, char a3)
{
  if (a3)
  {
  }
}

uint64_t sub_1E398B3D8()
{
  OUTLINED_FUNCTION_24();
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1E398B5D0;

  return sub_1E3989698();
}

uint64_t sub_1E398B468(void *a1)
{
  v1 = [a1 storefrontId];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

void sub_1E398B4CC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = sub_1E4205ED4();

  [a4 setTitle:v6 forState:a3];
}

void sub_1E398B540(id result)
{
  if (result != 3)
  {
    sub_1E398B550(result);
  }
}

void sub_1E398B550(id a1)
{
  if (a1 >= 3)
  {
  }
}

unint64_t sub_1E398B560()
{
  result = qword_1ECF2F6F0;
  if (!qword_1ECF2F6F0)
  {
    sub_1E41FF044();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF2F6F0);
  }

  return result;
}

void OUTLINED_FUNCTION_32_34(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

id sub_1E398B5FC(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_customBackButton;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);

  return v3;
}

void sub_1E398B640(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_customBackButton;
  OUTLINED_FUNCTION_37(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1E398B688(uint64_t a1, char a2, double a3)
{
  v5 = a1;
  if (sub_1E39DFFC8())
  {
    return;
  }

  if ((a2 & 1) != 0 && (v3[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity + 8] & 1) == 0)
  {
    v15 = *&v3[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity];
    OUTLINED_FUNCTION_21();
    v17 = (*(v16 + 200))();
    [v17 setAlpha_];
LABEL_12:

    return;
  }

  [v3 floatingTabBarHeight];
  v8 = v7 > 0.0;
  v9 = [objc_opt_self() isPad];
  v10 = &v3[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity];
  v11 = 0.0;
  if ((v9 & v5 & v8) == 0)
  {
    v11 = a3;
  }

  *v10 = v11;
  *(v10 + 8) = 0;
  OUTLINED_FUNCTION_21();
  v13 = (*(v12 + 200))();
  if (v13)
  {
    v14 = *&v3[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity];
    if (v3[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity + 8])
    {
      v14 = a3;
    }

    v17 = v13;
    [v13 setAlpha_];
    goto LABEL_12;
  }
}

void *sub_1E398B808(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E398B844(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView;
  OUTLINED_FUNCTION_3_0(&v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView], &v11);
  v4 = *&v1[v3];
  *&v1[v3] = a1;
  v5 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView;
  v6 = a1;
  OUTLINED_FUNCTION_3_0(&v1[v5], v12);
  v7 = *&v1[v5];
  if (v7 && (objc_opt_self(), swift_dynamicCastObjCClass()))
  {
    *&v1[v5] = v4;
    v4 = v4;
  }

  else if ([v1 vui:v7 addSubview:v4 oldView:?])
  {
    [v1 setHideStandardTitle_];
  }

  v8 = *&v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleOpacity];
  OUTLINED_FUNCTION_21();
  v10 = (*(v9 + 344))();
  sub_1E398B688(v10 & 1, 0, v8);
}

void (*sub_1E398B984(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  v4 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView, v3);
  v5 = *(v1 + v4);
  v3[3] = v5;
  v6 = v5;
  return sub_1E398BA04;
}

void sub_1E398BA04(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 24);
  v3 = *v4;
  if (a2)
  {
    v5 = v3;
    sub_1E398B844(v3);
  }

  else
  {
    sub_1E398B844(*(*a1 + 24));
  }

  free(v2);
}

uint64_t sub_1E398BA70()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrameChangeHandler);
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrameChangeHandler, v4);
  v2 = *v1;
  sub_1E37FAED4(*v1, v1[1]);
  return v2;
}

uint64_t sub_1E398BAC4(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrameChangeHandler);
  OUTLINED_FUNCTION_3_0(v5, v9);
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1E37FAED8(v6, v7);
}

uint64_t sub_1E398BB94(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_allowsUberTinting;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E398BBF0(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_allowsUberTinting;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

id sub_1E398BC80()
{
  OUTLINED_FUNCTION_21();
  v2 = (*(v1 + 176))();
  v3 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isNavigationRoot;
  OUTLINED_FUNCTION_15_0(&v0[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isNavigationRoot], v4);
  [v2 setHidden_];

  sub_1E398B688(v0[v3], 0, *&v0[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleOpacity]);
  return [v0 setHeightShouldBeIncreasedByTabBarHeight_];
}

uint64_t sub_1E398BD3C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isNavigationRoot;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

id sub_1E398BD70(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isNavigationRoot;
  OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return sub_1E398BC80();
}

id (*sub_1E398BDB4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  OUTLINED_FUNCTION_4();
  return sub_1E398BE08;
}

id sub_1E398BE08(uint64_t a1, char a2)
{
  result = swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_1E398BC80();
  }

  return result;
}

void sub_1E398BE74(void *a1)
{
  OUTLINED_FUNCTION_37(a1);
  swift_unknownObjectWeakAssign();
}

void (*sub_1E398BEC0(void *a1))(id **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v4 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_touchProxyView;
  v3[4] = v1;
  v3[5] = v4;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return sub_1E38D12C8;
}

uint64_t sub_1E398BF44(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_supportsMaterialBackButton;
  OUTLINED_FUNCTION_0_12(a1);
  return *(v1 + v2);
}

uint64_t sub_1E398BF78(uint64_t a1)
{
  v2 = a1;
  v3 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_supportsMaterialBackButton;
  result = OUTLINED_FUNCTION_37(a1);
  *(v1 + v3) = v2;
  return result;
}

unsigned __int8 *sub_1E398BFB8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v9 = objc_allocWithZone(v4);
  return sub_1E398C014(a1, v7, a3, a4);
}

unsigned __int8 *sub_1E398C014(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v45 = a4;
  v46 = a1;
  v41 = a3;
  v6 = sub_1E41FDEC4();
  v43 = *(v6 - 8);
  v44 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView;
  *&v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView] = 0;
  v9 = &v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrameChangeHandler];
  *v9 = 0;
  v9[1] = 0;
  v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_allowsUberTinting] = 1;
  *&v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleOpacity] = 0x3FF0000000000000;
  v10 = &v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity];
  *v10 = 0;
  v10[8] = 1;
  v11 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_hostViewController;
  swift_unknownObjectWeakInit();
  v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isNavigationRoot] = 0;
  v12 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_touchProxyView;
  swift_unknownObjectWeakInit();
  v13 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_supportsMaterialBackButton;
  v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_supportsMaterialBackButton] = 2;
  v14 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed;
  v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed] = 2;
  v15 = &v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame];
  *v15 = 0u;
  *(v15 + 1) = 0u;
  v15[32] = 1;
  v16 = type metadata accessor for UberNavigationBarTitleView();
  v17 = sub_1E398C4A0();
  if (!v17)
  {

    sub_1E37FAED8(*v9, v9[1]);
    MEMORY[0x1E69144A0](&v4[v11]);
    MEMORY[0x1E69144A0](&v4[v12]);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v18 = v17;
  v20 = v45;
  v19 = v46;
  *&v4[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_customBackButton] = v17;
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_3_0(&v4[v13], v54);
  v4[v13] = a2;
  v4[v14] = a2 & 1;
  v53.receiver = v4;
  v53.super_class = v16;
  v21 = v18;
  v22 = 0.0;
  v23 = objc_msgSendSuper2(&v53, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  v24 = v21;
  [v23 addSubview_];
  if (a2 == 2 || (a2 & 1) == 0)
  {
    if (!v20)
    {
      goto LABEL_10;
    }

    v25 = v42;
    aBlock = v41;
    v48 = v20;
    v26 = sub_1E41FDE64();
    sub_1E32822E0(v26, v27, v28);
    v29 = sub_1E42071E4();
    v31 = v30;
    (*(v43 + 8))(v25, v44);

    v32 = HIBYTE(v31) & 0xF;
    if ((v31 & 0x2000000000000000) == 0)
    {
      v32 = v29 & 0xFFFFFFFFFFFFLL;
    }

    if (!v32)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  v22 = 1.0;
LABEL_10:
  [v23 setBackButtonMaximumWidth_];
  v33 = v23[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed];

  v34 = 1.0;
  v35 = 0.0;
  if (v33 != 2 && (v33 & 1) != 0)
  {
    v36 = [objc_opt_self() whiteColor];
    [v24 setTintColor_];

    v34 = 0.0;
    [v24 setScrolledNonUberPercentage_];
    v35 = 1.0;
  }

  [v24 setAlpha_];

  v37 = v23;
  [v37 setBackButtonAlpha_];
  OUTLINED_FUNCTION_4_0();
  v38 = swift_allocObject();
  OUTLINED_FUNCTION_141_0(v38);
  v51 = sub_1E398C830;
  v52 = v38;
  aBlock = MEMORY[0x1E69E9820];
  v48 = 1107296256;
  v49 = sub_1E37C0588;
  v50 = &block_descriptor_34;
  v39 = _Block_copy(&aBlock);

  [v24 setSelectActionHandler_];

  _Block_release(v39);
  return v37;
}

unsigned __int16 *sub_1E398C4A0()
{
  type metadata accessor for ButtonLayout();
  v0 = j__OUTLINED_FUNCTION_18();
  v1 = sub_1E3B050E8();
  v2 = j__OUTLINED_FUNCTION_18();
  v3 = sub_1E3BBD964(8, v0 & 1, v1, v2 & 1);
  type metadata accessor for ViewModel();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BD0;
  ViewModelKeys.rawValue.getter(7);
  *(inited + 32) = v5;
  *(inited + 40) = v6;
  v7 = MEMORY[0x1E69E6158];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 48) = 0xD000000000000011;
  *(inited + 56) = 0x80000001E4269950;
  ViewModelKeys.rawValue.getter(13);
  *(inited + 80) = v8;
  *(inited + 88) = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B588, &unk_1E42A09A0);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1E4297BE0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F740, &unk_1E42A89A0);
  v11 = swift_initStackObject();
  *(v11 + 16) = xmmword_1E4297BE0;
  sub_1E384EE08(39);
  *(v11 + 32) = v12;
  *(v11 + 40) = v13;
  v14 = swift_initStackObject();
  *(v14 + 16) = xmmword_1E4299720;
  *(v14 + 32) = sub_1E3C7CCAC(2);
  *(v14 + 40) = v15;
  *(v14 + 72) = MEMORY[0x1E69E6370];
  *(v14 + 48) = 0;
  *(v14 + 80) = sub_1E3C7CCAC(0);
  *(v14 + 88) = v16;
  *(v14 + 120) = v7;
  *(v14 + 96) = 0xD000000000000019;
  *(v14 + 104) = 0x80000001E4269970;
  v17 = MEMORY[0x1E69E7CA0];
  *(v11 + 48) = OUTLINED_FUNCTION_17_47(v14, v16, MEMORY[0x1E69E7CA0] + 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  *(v10 + 32) = OUTLINED_FUNCTION_17_47(v11, v19, v18);
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F750, qword_1E42AEDF0);
  *(inited + 96) = v10;
  ViewModelKeys.rawValue.getter(8);
  *(inited + 128) = v20;
  *(inited + 136) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F758, &qword_1E42D9E20);
  v22 = swift_initStackObject();
  *(v22 + 16) = xmmword_1E4297BD0;
  *(v22 + 32) = sub_1E3BA363C(0);
  *(v22 + 40) = v23;
  v24 = sub_1E3BA5480();
  *(v22 + 48) = *v24;

  *(v22 + 56) = sub_1E3BA363C(1);
  *(v22 + 64) = v25;
  *(v22 + 72) = *v24;

  *(v22 + 80) = sub_1E3BA363C(2);
  *(v22 + 88) = v26;
  *(v22 + 96) = *v24;

  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C770, &unk_1E4299730);
  v29 = OUTLINED_FUNCTION_17_47(v22, v28, v27);
  *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F768, &unk_1E42B0D10);
  *(inited + 144) = v29;
  v31 = OUTLINED_FUNCTION_17_47(inited, v30, v17 + 8);
  v32 = sub_1E39BED80(59, v31, 0);
  type metadata accessor for UIFactory();
  v37 = 0;
  memset(v36, 0, sizeof(v36));
  v33 = sub_1E3280A90(0, &qword_1EE23ACF0, off_1E8728290);

  v34 = sub_1E393D92C(v32, 0, v36, v3, v33);

  sub_1E325F748(v36, &qword_1ECF296C0, &unk_1E429BBE0);
  return v34;
}

void sub_1E398C830(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = swift_unknownObjectWeakLoadStrong();

    if (v5)
    {
      v6 = [v5 vuiNavigationController];

      if (v6)
      {
      }
    }
  }
}

void sub_1E398C8D0()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrameChangeHandler);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_allowsUberTinting) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleOpacity) = 0x3FF0000000000000;
  v2 = v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity;
  *v2 = 0;
  *(v2 + 8) = 1;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isNavigationRoot) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_supportsMaterialBackButton) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed) = 2;
  v3 = v0 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame;
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 1;
  sub_1E42076B4();
  __break(1u);
}

void sub_1E398C9F8()
{
  v1 = v0;
  v107.receiver = v0;
  v107.super_class = type metadata accessor for UberNavigationBarTitleView();
  objc_msgSendSuper2(&v107, sel_layoutSubviews);
  [v0 bounds];
  OUTLINED_FUNCTION_3();
  [v0 layoutMargins];
  v2 = OUTLINED_FUNCTION_6();
  v8 = UIEdgeInsetsInsetRect(v2, v3, v4, v5, v6, v7);
  v101 = v9;
  v103 = v8;
  v99 = v11;
  v100 = v10;
  v12 = [v0 overlays];
  v13 = 3.0;
  v14 = 0.0;
  if (v12 && (v15 = v12, sub_1E4206E14(), v15, (v112 & 1) == 0))
  {
    v16 = v110;
    v17 = v111;
    v14 = v108;
    v13 = v109;
  }

  else
  {
    v16 = 44.0;
    v17 = 44.0;
  }

  v105 = v17;
  rect = v16;
  OUTLINED_FUNCTION_8_22();
  v19 = *(v18 + 176);
  v20 = v19();
  [v20 intrinsicContentSize];
  v98 = v21;

  [v1 vuiIsRTL];
  v115.origin.x = v14;
  v115.origin.y = v13;
  v115.size.width = v16;
  v115.size.height = v17;
  CGRectGetWidth(v115);
  v116.origin.x = v103;
  v116.origin.y = v101;
  v116.size.width = v100;
  v116.size.height = v99;
  CGRectGetMinX(v116);
  v117.origin.x = v103;
  v117.origin.y = v101;
  v117.size.width = v100;
  v117.size.height = v99;
  CGRectGetMaxX(v117);
  v102 = v14;
  v118.origin.x = v14;
  v118.origin.y = v13;
  v118.size.height = v17;
  v118.size.width = v16;
  CGRectGetHeight(v118);
  v104 = v13;
  v22 = v19();
  v23 = OUTLINED_FUNCTION_6();
  [v24 v25];

  v26 = &v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame];
  v27 = *&v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame];
  v28 = *&v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame + 8];
  v29 = *&v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame + 16];
  v30 = *&v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame + 24];
  v31 = v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_backButtonFrame + 32];
  v32 = v19();
  [v32 frame];
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;

  if ((v31 & 1) != 0 || (v119.origin.x = v27, v119.origin.y = v28, v119.size.width = v29, v119.size.height = v30, v137.origin.x = v34, v137.origin.y = v36, v137.size.width = v38, v137.size.height = v40, !CGRectEqualToRect(v119, v137)))
  {
    OUTLINED_FUNCTION_8_22();
    v42 = (*(v41 + 224))();
    if (v42)
    {
      v44 = v42;
      v45 = v43;
      v42();
      v42 = sub_1E37FAED8(v44, v45);
    }

    v46 = (v19)(v42);
    [v46 frame];
    OUTLINED_FUNCTION_3();

    *v26 = v27;
    v26[1] = v40;
    v26[2] = v28;
    v26[3] = v29;
    *(v26 + 32) = 0;
  }

  OUTLINED_FUNCTION_8_22();
  v48 = (*(v47 + 200))();
  if (v48)
  {
    v49 = v48;
    v50 = 0.0;
    if ([objc_opt_self() isPad])
    {
      v51 = OUTLINED_FUNCTION_18_42();
      [v1 safeAreaInsets];
      if (v51)
      {
        v50 = -v53;
      }

      else
      {
        v50 = v52;
      }
    }

    [v1 bounds];
    Width = CGRectGetWidth(v120);
    [v1 layoutMargins];
    v56 = v55;
    [v1 layoutMargins];
    v58 = v57;
    v59 = [v1 overlays];
    if (v59)
    {
      v60 = v59;
      sub_1E4206E24();

      if ((v113 & 1) == 0)
      {
        if (OUTLINED_FUNCTION_18_42())
        {
          v121.origin.x = OUTLINED_FUNCTION_13_65();
          v58 = CGRectGetMaxX(v121) + 5.0;
        }

        else
        {
          OUTLINED_FUNCTION_9_7();
          v61 = CGRectGetWidth(v122);
          v123.origin.x = OUTLINED_FUNCTION_13_65();
          v56 = v61 - CGRectGetMinX(v123) + 5.0;
        }
      }
    }

    v62 = Width - v50;
    v63 = [v1 overlays];
    if (v63)
    {
      v64 = v63;
      sub_1E4206E14();

      if ((v114 & 1) == 0)
      {
        if (OUTLINED_FUNCTION_18_42())
        {
          OUTLINED_FUNCTION_9_7();
          v65 = CGRectGetWidth(v124);
          v66 = v19();
          [v66 frame];
          v68 = v67;
          v70 = v69;
          v72 = v71;
          v74 = v73;

          v125.origin.x = v68;
          v125.origin.y = v70;
          v125.size.width = v72;
          v125.size.height = v74;
          v56 = v65 - CGRectGetMinX(v125) + 5.0;
        }

        else
        {
          v75 = v19();
          [v75 frame];
          v77 = v76;
          v79 = v78;
          v81 = v80;
          v83 = v82;

          v126.origin.x = v77;
          v126.origin.y = v79;
          v126.size.width = v81;
          v126.size.height = v83;
          v58 = CGRectGetMaxX(v126) - v50 + 5.0;
        }
      }
    }

    if (v58 > v56)
    {
      v84 = v58;
    }

    else
    {
      v84 = v56;
    }

    v85 = v62 - (v84 + v84);
    OUTLINED_FUNCTION_9_7();
    [v49 sizeThatFits_];
    if (v85 >= v86)
    {
      OUTLINED_FUNCTION_9_7();
      CGRectGetWidth(v130);
    }

    else
    {
      OUTLINED_FUNCTION_9_7();
      v87 = CGRectGetWidth(v128) - v50 - v58 - v56;
      OUTLINED_FUNCTION_9_7();
      [v49 sizeThatFits_];
    }

    objc_opt_self();
    v88 = swift_dynamicCastObjCClass();
    if (v88)
    {
      v89 = v88;
      v90 = v49;
      [v1 contentBaselineOffsetFromTop];
      [v89 vuiBaselineHeight];
    }

    else
    {
      [v1 floatingTabBarHeight];
      [v1 floatingTabBarHeight];
    }

    v91 = OUTLINED_FUNCTION_11_62();
    [v92 v93];
    v131.origin.x = OUTLINED_FUNCTION_11_62();
    v132 = CGRectInset(v131, v94, v95);
    v138.origin.x = v102;
    v138.origin.y = v104;
    v138.size.width = rect;
    v138.size.height = v105;
    if (CGRectIntersectsRect(v132, v138))
    {
      if (OUTLINED_FUNCTION_18_42())
      {
        v133.origin.x = v102;
        v133.origin.y = v104;
        v133.size.width = rect;
        v133.size.height = v105;
        MaxX = CGRectGetMaxX(v133);
        v134.origin.x = OUTLINED_FUNCTION_12_4();
        MinX = CGRectGetMaxX(v134);
      }

      else
      {
        v135.origin.x = OUTLINED_FUNCTION_12_4();
        MaxX = CGRectGetMinX(v135);
        v136.origin.x = v102;
        v136.origin.y = v104;
        v136.size.width = rect;
        v136.size.height = v105;
        MinX = CGRectGetMinX(v136);
      }

      [v1 setBackButtonMaximumWidth_];
    }
  }
}

id sub_1E398D198()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberNavigationBarTitleView();
  objc_msgSendSuper2(&v2, sel_contentDidChange);
  return [v0 setNeedsLayout];
}

id sub_1E398D224(uint64_t a1, double a2, double a3)
{
  v15.receiver = v3;
  v15.super_class = type metadata accessor for UberNavigationBarTitleView();
  v7 = objc_msgSendSuper2(&v15, sel_hitTest_withEvent_, a1, a2, a3);
  if (v7)
  {
    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v8 = v7;
    v9 = v3;
    v10 = sub_1E4206F64();

    if (v10)
    {
      v11 = (v9 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity);
      if ((*(v9 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_effectiveTitleOpacity + 8) & 1) == 0 && *v11 == 0.0)
      {
        v12 = (*((*MEMORY[0x1E69E7D40] & *v9) + 0x170))(*v11);
        if (v12)
        {
          v13 = v12;
          [v12 convertPoint:v9 fromCoordinateSpace:{a2, a3}];
          v7 = [v13 hitTest:a1 withEvent:?];
        }
      }
    }
  }

  return v7;
}

void sub_1E398D418(uint64_t a1, double a2)
{
  v3 = a1;
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    *(v2 + OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_titleOpacity) = a2;
    OUTLINED_FUNCTION_21();
    v6 = (*(v5 + 344))() & 1;

    sub_1E398B688(v6, v3 & 1, a2);
  }
}

void sub_1E398D4BC(uint64_t a1)
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    v3 = (*(v2 + 392))();
    if (v3 == 2)
    {
      v4 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_supportsMaterialBackButton;
      OUTLINED_FUNCTION_37(v3);
      v1[v4] = 1;
      v1[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed] = 2;
      [v1 setBackButtonMaximumWidth_];
      if ((sub_1E39DFFC8() & 1) == 0)
      {
        OUTLINED_FUNCTION_21();
        v6 = (*(v5 + 392))();
        if (v6 == 2 || (v6 & 1) == 0)
        {
          OUTLINED_FUNCTION_21();
          v11 = (*(v10 + 176))();
          [v11 setAlpha_];

          [v1 setBackButtonAlpha_];
        }

        else
        {
          v7 = objc_opt_self();
          OUTLINED_FUNCTION_4_0();
          v8 = swift_allocObject();
          OUTLINED_FUNCTION_141_0(v8);
          aBlock[4] = sub_1E398DD30;
          aBlock[5] = v8;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1E378AEA4;
          aBlock[3] = &block_descriptor_39_0;
          v9 = _Block_copy(aBlock);

          [v7 animateWithDuration:v9 animations:0.1];
          _Block_release(v9);
        }
      }
    }
  }
}

id sub_1E398D704()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for UberNavigationBarTitleView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1E398D7B8(uint64_t a1, double a2)
{
  if ((sub_1E39DFFC8() & 1) == 0)
  {

    sub_1E398D804(1, a2);
  }
}

void sub_1E398D804(uint64_t a1, double a2)
{
  v2 = a1;
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    OUTLINED_FUNCTION_21();
    v5 = (*(v4 + 176))();
    [v5 setScrolledNonUberPercentage_];

    sub_1E398D910(a2 == 0.0, v2 & 1);
  }
}

void sub_1E398D910(uint64_t a1, char a2)
{
  v4 = a1;
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    v5 = OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed;
    v6 = v2[OBJC_IVAR____TtC8VideosUI26UberNavigationBarTitleView_isMaterialBackButtonDisplayed];
    if (v6 == 2 || ((v6 ^ v4) & 1) != 0)
    {
      OUTLINED_FUNCTION_21();
      v8 = (*(v7 + 392))();
      if (v8 != 2 && (v8 & 1) != 0)
      {
        v9 = 0.0;
        if (v4)
        {
          v10 = 1.0;
        }

        else
        {
          v10 = 0.0;
        }

        if (a2)
        {
          v11 = objc_opt_self();
          OUTLINED_FUNCTION_4_0();
          v12 = swift_allocObject();
          OUTLINED_FUNCTION_141_0(v12);
          v13 = swift_allocObject();
          *(v13 + 16) = v12;
          *(v13 + 24) = v10;
          v25 = sub_1E398DC2C;
          v26 = v13;
          v21 = MEMORY[0x1E69E9820];
          v22 = 1107296256;
          v23 = sub_1E378AEA4;
          v24 = &block_descriptor_28;
          v14 = _Block_copy(&v21);

          if (v4)
          {
            v15 = 0.35;
          }

          else
          {
            v15 = 0.2;
          }

          if ((v4 & 1) == 0)
          {
            v9 = 0.08;
          }

          [v11 animateWithDuration:0x20000 delay:v14 options:0 animations:v15 completion:0.0];
          _Block_release(v14);
          OUTLINED_FUNCTION_4_0();
          v16 = swift_allocObject();
          OUTLINED_FUNCTION_141_0(v16);
          v17 = swift_allocObject();
          *(v17 + 16) = v16;
          *(v17 + 24) = v10;
          v25 = sub_1E398DCCC;
          v26 = v17;
          v21 = MEMORY[0x1E69E9820];
          v22 = 1107296256;
          v23 = sub_1E378AEA4;
          v24 = &block_descriptor_35;
          v18 = _Block_copy(&v21);

          [v11 animateWithDuration:0 delay:v18 options:0 animations:v15 * 0.6 completion:v9];
          _Block_release(v18);
        }

        else
        {
          OUTLINED_FUNCTION_21();
          v20 = (*(v19 + 176))();
          [v20 setAlpha_];

          [v2 setBackButtonAlpha_];
        }

        v2[v5] = v4 & 1;
      }
    }
  }
}

void sub_1E398DC2C(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_15_0(*(v2 + 16) + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xB0))();

    [v6 setAlpha_];
  }
}

void sub_1E398DCCC(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  OUTLINED_FUNCTION_15_0(*(v2 + 16) + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    [Strong setBackButtonAlpha_];
  }
}

void sub_1E398DD30()
{
  v1 = v0;
  OUTLINED_FUNCTION_5_0(v0 + 16, v8);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = (*((*MEMORY[0x1E69E7D40] & *Strong) + 0xB0))();

    [v4 setAlpha_];
  }

  OUTLINED_FUNCTION_5_0(v1 + 16, &v7);
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = v5;
    [v5 setBackButtonAlpha_];
  }
}

uint64_t sub_1E398DE38()
{
  v0 = _s8VideosUI15ClockScoresViewVMa_0(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v4 = (v3 - v2);
  OUTLINED_FUNCTION_74_7();
  type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
  OUTLINED_FUNCTION_168();
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_30();
    v6 = *(v5 + 392);
    v7 = swift_retain_n();
    v8 = v6(v7);

    if (v8)
    {
      if (*v8 == _TtC8VideosUI34SportsPortableScoreboardViewLayout)
      {
        *v4 = swift_getKeyPath();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
        swift_storeEnumTagMultiPayload();
        v9 = (v4 + *(v0 + 20));
        OUTLINED_FUNCTION_19_46();
        sub_1E3994D54(v10);
        *v9 = sub_1E42010C4();
        v9[1] = v11;
        *(v4 + *(v0 + 24)) = v8;
        v12 = OUTLINED_FUNCTION_74();
        sub_1E3993B44(v12, v13, v14);
        OUTLINED_FUNCTION_114();
        return __swift_storeEnumTagSinglePayload(v15, v16, v17, v0);
      }
    }
  }

  v19 = OUTLINED_FUNCTION_43_2();

  return __swift_storeEnumTagSinglePayload(v19, v20, v21, v0);
}

uint64_t sub_1E398E060@<X0>(uint64_t *a1@<X8>)
{
  *a1 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1E398E0C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1E3741EA0(a1, a3, &qword_1ECF28BB8, &unk_1E429B6A0);
  result = OUTLINED_FUNCTION_74_7();
  *(a3 + v6) = a2;
  return result;
}

void sub_1E398E148()
{
  OUTLINED_FUNCTION_3_81();
  sub_1E3993D14(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    type metadata accessor for ViewModel();
    if (v3 <= 0x3F)
    {
      OUTLINED_FUNCTION_72();
      swift_cvw_initStructMetadataWithLayoutString();
      OUTLINED_FUNCTION_165();
    }
  }
}

unint64_t sub_1E398E1E0()
{
  result = qword_1EE280F30;
  if (!qword_1EE280F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF2F7D0, &qword_1E42AEED0);
    sub_1E3990AB8(&unk_1EE2A4390);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE280F30);
  }

  return result;
}

void sub_1E398E2BC()
{
  OUTLINED_FUNCTION_3_81();
  sub_1E3993D14(319, v0, v1, MEMORY[0x1E697DCC0]);
  if (v2 <= 0x3F)
  {
    sub_1E3867038(319);
    if (v3 <= 0x3F)
    {
      type metadata accessor for SportsPortableScoreboardViewLayout();
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_72();
        swift_cvw_initStructMetadataWithLayoutString();
        OUTLINED_FUNCTION_165();
      }
    }
  }
}

uint64_t sub_1E398E384@<X0>(uint64_t a1@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F7D8, &qword_1E42AEF38);
  OUTLINED_FUNCTION_17_2(v7);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_26_2();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F7E0, &qword_1E42AEF40);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &__src[-v11];
  *v1 = sub_1E4203DA4();
  v1[1] = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F7E8, &qword_1E42AEF48);
  sub_1E398E62C();
  _s8VideosUI15ClockScoresViewVMa_0(0);
  OUTLINED_FUNCTION_36();
  (*(v14 + 304))();
  sub_1E4203DA4();
  OUTLINED_FUNCTION_27_17();
  OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_71_13();
  sub_1E42015C4();
  v15 = OUTLINED_FUNCTION_74();
  sub_1E3741EA0(v15, v16, v17, v18);
  memcpy(&v12[*(v9 + 36)], __src, 0x70uLL);
  OUTLINED_FUNCTION_8();
  (*(v19 + 176))(v29);
  if (v30)
  {
    OUTLINED_FUNCTION_5_8();
  }

  else
  {
    v22.n128_u64[0] = v29[2];
    v23.n128_u64[0] = v29[3];
    v20.n128_u64[0] = v29[0];
    v21.n128_u64[0] = v29[1];
    j_nullsub_1(v20, v21, v22, v23);
  }

  v24 = OUTLINED_FUNCTION_41_8();
  sub_1E3741EA0(v12, a1, &qword_1ECF2F7E0, &qword_1E42AEF40);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F7F0, &qword_1E42AEF50);
  v26 = a1 + *(result + 36);
  *v26 = v24;
  *(v26 + 8) = v2;
  *(v26 + 16) = v3;
  *(v26 + 24) = v4;
  *(v26 + 32) = v5;
  *(v26 + 40) = 0;
  return result;
}

void sub_1E398E62C()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F7F8, &qword_1E42AEF58);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F800, &qword_1E42AEF60);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_63_3();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F808, &qword_1E42AEF68);
  OUTLINED_FUNCTION_17_2(v6);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_9_12();
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F810, &qword_1E42AEF70);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v55 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F818, &qword_1E42AEF78);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44();
  v57 = v11;
  v12 = OUTLINED_FUNCTION_138();
  v56 = _s8VideosUI19ScoreboardErrorViewVMa_0(v12);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F820, &qword_1E42AEF80);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_44();
  v18 = OUTLINED_FUNCTION_138();
  v19 = _s8VideosUI15ClockScoresViewVMa_0(v18);
  OUTLINED_FUNCTION_36();
  if ((*(v20 + 1088))())
  {
    OUTLINED_FUNCTION_8();
    if (((*(v21 + 2120))() & 1) != 0 && (v22 = sub_1E3F95854(), v22 != 3))
    {
      v44 = v22;
      v45 = *(v3 + *(v19 + 24));
      *(v16 + *(v56 + 24)) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
      swift_storeEnumTagMultiPayload();
      *(v16 + *(v56 + 28)) = swift_getKeyPath();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
      swift_storeEnumTagMultiPayload();
      *v16 = v45;
      *(v16 + 8) = v44;
      sub_1E3993954(v16, v57);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_48();
      sub_1E3990AB8(v46);
      sub_1E3990AFC();

      OUTLINED_FUNCTION_40_25();
      sub_1E4201F44();
      sub_1E39942A0(v16, _s8VideosUI19ScoreboardErrorViewVMa_0);
    }

    else
    {
      *v0 = sub_1E4201B84();
      *(v0 + 8) = 0;
      *(v0 + 16) = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F830, &qword_1E42AEF90);
      sub_1E398EC7C();
      v23 = j__OUTLINED_FUNCTION_13_12();
      sub_1E4203DA4();
      OUTLINED_FUNCTION_27_17();
      v24 = OUTLINED_FUNCTION_51_3();
      OUTLINED_FUNCTION_99_1(v24, v25, v26, v27, v23, v28, v29, v30, v54);
      sub_1E3741EA0(v0, v55, &qword_1ECF2F808, &qword_1E42AEF68);
      memcpy((v55 + *(v58 + 36)), v59, 0x70uLL);
      OUTLINED_FUNCTION_19_1();
      sub_1E3743538(v31, v32, v33, v34);
      swift_storeEnumTagMultiPayload();
      OUTLINED_FUNCTION_17_48();
      sub_1E3990AB8(v35);
      sub_1E3990AFC();
      sub_1E4201F44();
      OUTLINED_FUNCTION_21_1();
      sub_1E325F69C(v36, v37);
    }

    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v47, v48, v49, v50);
    swift_storeEnumTagMultiPayload();
    sub_1E39909FC();
    OUTLINED_FUNCTION_9_0();
    sub_1E3743478(v51);
    OUTLINED_FUNCTION_52_14();
    sub_1E4201F44();
  }

  else
  {
    *v1 = sub_1E4201B84();
    *(v1 + 8) = 0;
    *(v1 + 16) = 0;
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F828, &qword_1E42AEF88);
    sub_1E398FF64(v3, (v1 + *(v38 + 44)));
    OUTLINED_FUNCTION_48_9();
    OUTLINED_FUNCTION_19_1();
    sub_1E3743538(v39, v40, v41, v42);
    swift_storeEnumTagMultiPayload();
    sub_1E39909FC();
    OUTLINED_FUNCTION_9_0();
    OUTLINED_FUNCTION_21_1();
    sub_1E3743478(v43);
    OUTLINED_FUNCTION_52_14();
    sub_1E4201F44();
  }

  OUTLINED_FUNCTION_21_1();
  sub_1E325F69C(v52, v53);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E398EC7C()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v199 = v3;
  v204 = _s8VideosUI19CompetitorScoreViewVMa_0(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_5();
  v200 = v5;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_25_3();
  v202 = v7;
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F838, &qword_1E42AEFD0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_2_5();
  v198 = v9;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_18_6();
  v213 = v11;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_18_6();
  v192 = v13;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_18_6();
  v212 = v15;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_18_6();
  v185 = v17;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_25_3();
  v211 = v19;
  OUTLINED_FUNCTION_138();
  v217 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v219 = v20;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v216 = (v23 - v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F840, &qword_1E42AEFD8);
  OUTLINED_FUNCTION_0_10();
  v196 = v25;
  v197 = v24;
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_2_5();
  v195 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_18_6();
  v210 = v28;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_18_6();
  v194 = v30;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_62_11();
  type metadata accessor for SportsBannerLogoViewModel();
  v32 = _s8VideosUI15ClockScoresViewVMa_0(0);
  v33 = *(v2 + *(v32 + 20) + 8);
  v34 = swift_retain_n();
  v214 = sub_1E3CBAB38(v34, 0);
  v35 = *(v2 + *(v32 + 24));
  LOBYTE(v32) = type metadata accessor for SportsPortableScoreboardViewLayout();
  OUTLINED_FUNCTION_18_43();
  sub_1E3994D54(v36);
  swift_retain_n();
  v208 = sub_1E42010C4();
  v191 = v37;
  v221 = v35;
  j__OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_145();
  sub_1E4203DA4();
  if ((v32 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v38)
    {
      v39 = v0;
      v40 = sub_1E4206804();
      v41 = sub_1E42026D4();
      v42 = v40;
      v0 = v39;
      OUTLINED_FUNCTION_108(v42, &dword_1E323F000, v41, "Contradictory frame constraints specified.");
    }
  }

  OUTLINED_FUNCTION_27_17();
  v43 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_33_6(v43, v44, v45, v46, v47, v48, v49, v50, v175);
  v51 = sub_1E4202764();
  sub_1E3746E10(v216);
  v52 = sub_1E3EB1FF8(v216);
  v54 = v53;
  v55 = *(v219 + 8);
  v55(v216, v217, v52);
  v56 = 0uLL;
  v57 = 0uLL;
  if ((v54 & 1) == 0)
  {
    sub_1E4200A54();
    *(&v56 + 1) = v58;
    *(&v57 + 1) = v59;
  }

  v188 = v56;
  v190 = v57;
  v235[112] = v54 & 1;
  *v234 = v214;
  *&v234[8] = v208;
  *&v234[16] = v191;
  memcpy(&v234[24], v235, 0x70uLL);
  v234[136] = v51;
  *&v234[144] = v188;
  *&v234[160] = v190;
  v234[176] = v54 & 1;
  v233[0] = v33;
  v215 = type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
  sub_1E383ACA0(0, v215, &off_1F5D8FCF0);
  v60 = OUTLINED_FUNCTION_125();
  __swift_instantiateConcreteTypeFromMangledNameV2(v60, v61);
  sub_1E39939D8();
  v209 = v0;
  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  memcpy(v233, v234, 0xB1uLL);
  sub_1E325F69C(v233, &qword_1ECF2F848);
  sub_1E3746E10(v216);
  v62 = sub_1E3EB1EEC(v216);
  v189 = v63;
  v187 = v64;
  v55(v216, v217, v62);
  OUTLINED_FUNCTION_59_9();
  v183 = *(v65 + 2288);
  v66 = v183();
  v178 = v67;
  v179 = v66;
  OUTLINED_FUNCTION_59_9();
  v182 = *(v68 + 1424);
  v228[0] = v182();
  *v230 = 0;
  v230[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B6E8, &qword_1E42A0FA0);
  sub_1E3743478(&qword_1EE23B5B0);
  sub_1E38D2054(v230, v229);

  v177 = v229[0];
  v181 = *(*v33 + 1352);
  v70 = v181(v69);
  OUTLINED_FUNCTION_64_11(v70);
  *v230 = 0;
  v230[8] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F858, &unk_1E42C9580);
  sub_1E3743478(&qword_1EE23B5A8);
  v71 = OUTLINED_FUNCTION_26_35();
  sub_1E38D2054(v71, v72);

  v73 = v237[0];
  if (v237[0])
  {

    v75 = (*(*v33 + 1376))(v74);
    OUTLINED_FUNCTION_64_11(v75);
    *v230 = 0;
    v230[8] = 0;
    v76 = OUTLINED_FUNCTION_26_35();
    sub_1E38D2054(v76, v77);

    v78 = v237[0];
  }

  else
  {
    v78 = 0;
  }

  v180 = *(*v33 + 1712);
  v79 = v180(v73);
  *v230 = v33;
  v80 = sub_1E383ACA0(0, v215, &off_1F5D8FCF0);
  OUTLINED_FUNCTION_59_9();
  v82 = (*(v81 + 1568))();
  if (v80)
  {
    v83 = v82;
  }

  else
  {
    v83 = HIBYTE(v82) & 1;
  }

  *v230 = v33;
  v84 = sub_1E383ACA0(0, v215, &off_1F5D8FCF0);
  *(v202 + *(v204 + 44)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *(v202 + *(v204 + 48)) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C20, &qword_1E429F7D0);
  swift_storeEnumTagMultiPayload();
  *v202 = v221;
  *(v202 + 8) = v179;
  *(v202 + 16) = v178;
  *(v202 + 24) = v177;
  *(v202 + 32) = v78;
  *(v202 + 40) = v79 & 1;
  *(v202 + 41) = v83 & 1;
  *(v202 + 42) = v84 & 1;

  j__OUTLINED_FUNCTION_13_12();
  v86 = v85;
  sub_1E4203DA4();
  if ((v86 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v38)
    {
      v87 = sub_1E4206804();
      v88 = sub_1E42026D4();
      OUTLINED_FUNCTION_108(v87, &dword_1E323F000, v88, "Contradictory frame constraints specified.");
    }
  }

  v89 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_33_6(v89, v90, v91, v92, v93, v94, v95, v96, v176);
  OUTLINED_FUNCTION_16_48();
  sub_1E3993B44(v202, v185, v97);
  memcpy((v185 + *(v206 + 36)), v236, 0x70uLL);
  sub_1E3741EA0(v185, v211, &qword_1ECF2F838, &qword_1E42AEFD0);
  OUTLINED_FUNCTION_19_46();
  sub_1E3994D54(v98);

  v186 = sub_1E42010C4();
  v203 = v99;
  j__OUTLINED_FUNCTION_13_12();
  v101 = v100;
  sub_1E4203DA4();
  if ((v101 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v38)
    {
      v102 = sub_1E4206804();
      v103 = sub_1E42026D4();
      OUTLINED_FUNCTION_108(v102, &dword_1E323F000, v103, "Contradictory frame constraints specified.");
    }
  }

  v104 = OUTLINED_FUNCTION_51_3();
  v112 = OUTLINED_FUNCTION_33_6(v104, v105, v106, v107, v108, v109, v110, v111, v173);
  v184 = (v183)(v112);
  v114 = v113;
  v228[0] = v182();
  *v230 = 1;
  v230[8] = 0;
  sub_1E38D2054(v230, v229);

  v116 = v229[0];
  v117 = v181(v115);
  OUTLINED_FUNCTION_64_11(v117);
  *v230 = 1;
  v230[8] = 0;
  v118 = OUTLINED_FUNCTION_26_35();
  sub_1E38D2054(v118, v119);

  v120 = v237[0];
  if (v237[0])
  {

    v122 = (*(*v33 + 1376))(v121);
    OUTLINED_FUNCTION_64_11(v122);
    *v230 = 1;
    v230[8] = 0;
    v123 = OUTLINED_FUNCTION_26_35();
    sub_1E38D2054(v123, v124);

    v125 = v237[0];
  }

  else
  {
    v125 = 0;
  }

  v126 = v180(v120);
  *v230 = v33;
  v127 = sub_1E383ACA0(1, v215, &off_1F5D8FCF0);
  OUTLINED_FUNCTION_59_9();
  v129 = (*(v128 + 1568))();
  if (v127)
  {
    v130 = v129;
  }

  else
  {
    v130 = HIBYTE(v129) & 1;
  }

  *v230 = v33;
  v131 = sub_1E383ACA0(1, v215, &off_1F5D8FCF0);
  v132 = v200;
  *(v200 + *(v204 + 44)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *(v200 + *(v204 + 48)) = swift_getKeyPath();
  swift_storeEnumTagMultiPayload();
  *v200 = v221;
  *(v200 + 8) = v184;
  *(v200 + 16) = v114;
  *(v200 + 24) = v116;
  *(v200 + 32) = v125;
  *(v200 + 40) = v126 & 1;
  *(v200 + 41) = v130 & 1;
  *(v200 + 42) = v131 & 1;

  j__OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_145();
  sub_1E4203DA4();
  if ((v126 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v38)
    {
      v133 = sub_1E4206804();
      v134 = sub_1E42026D4();
      v135 = v133;
      v132 = v200;
      OUTLINED_FUNCTION_108(v135, &dword_1E323F000, v134, "Contradictory frame constraints specified.");
    }
  }

  v136 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_33_6(v136, v137, v138, v139, v140, v141, v142, v143, v174);
  OUTLINED_FUNCTION_16_48();
  sub_1E3993B44(v132, v192, v144);
  memcpy((v192 + *(v206 + 36)), v237, 0x70uLL);
  sub_1E3741EA0(v192, v212, &qword_1ECF2F838, &qword_1E42AEFD0);
  sub_1E3746E10(v216);
  v145 = sub_1E3EB1EEC(v216);
  v207 = v146;
  v205 = v147;
  v55(v216, v217, v145);

  v201 = sub_1E3CBAB38(v148, 1);
  v193 = sub_1E42010C4();
  v150 = v149;
  j__OUTLINED_FUNCTION_13_12();
  OUTLINED_FUNCTION_145();
  sub_1E4203DA4();
  if ((v221 & 1) == 0)
  {
    OUTLINED_FUNCTION_38_17();
    if (v38)
    {
      v151 = sub_1E4206804();
      v152 = sub_1E42026D4();
      OUTLINED_FUNCTION_108(v151, &dword_1E323F000, v152, "Contradictory frame constraints specified.");
    }
  }

  OUTLINED_FUNCTION_27_17();
  v153 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_33_6(v153, v154, v155, v156, v157, v158, v159, v160, v172);
  v161 = sub_1E4202784();
  sub_1E3746E10(v216);
  v162 = sub_1E3EB1FF8(v216);
  v164 = v163;
  v55(v216, v217, v162);
  v165 = 0uLL;
  v166 = 0uLL;
  if ((v164 & 1) == 0)
  {
    sub_1E4200A54();
    *(&v165 + 1) = v167;
    *(&v166 + 1) = v168;
  }

  v218 = v165;
  v220 = v166;
  v231[112] = v164 & 1;
  *v230 = v201;
  *&v230[8] = v193;
  *&v230[16] = v150;
  memcpy(&v230[24], v231, 0x70uLL);
  v230[136] = v161;
  *&v230[144] = v218;
  *&v230[160] = v220;
  v230[176] = v164 & 1;
  v228[0] = v33;
  sub_1E383ACA0(1, v215, &off_1F5D8FCF0);

  OUTLINED_FUNCTION_41_0();
  View.accessibilityIdentifier(key:location:)();
  memcpy(v228, v230, 0xB1uLL);
  sub_1E325F69C(v228, &qword_1ECF2F848);
  v169 = *(v196 + 16);
  v169();
  v225 = v189;
  v226 = v187 & 1;
  v227[0] = v210;
  v227[1] = &v225;
  sub_1E3743538(v211, v213, &qword_1ECF2F838, &qword_1E42AEFD0);
  v227[2] = v213;
  v224[0] = v221;
  v224[1] = v186;
  v224[2] = v203;
  memcpy(&v224[3], v232, 0x70uLL);
  v227[3] = v224;
  sub_1E3743538(v212, v198, &qword_1ECF2F838, &qword_1E42AEFD0);
  v222 = v207;
  v223 = v205 & 1;
  v227[4] = v198;
  v227[5] = &v222;
  (v169)(v195, v194, v197);
  v227[6] = v195;
  sub_1E398FDE0(v227, v199);
  v170 = *(v196 + 8);
  v171 = OUTLINED_FUNCTION_48_9();
  v170(v171);
  sub_1E325F69C(v212, &qword_1ECF2F838);
  sub_1E325F69C(v211, &qword_1ECF2F838);
  (v170)(v209, v197);
  (v170)(v195, v197);
  sub_1E325F69C(v198, &qword_1ECF2F838);
  memcpy(v229, v224, sizeof(v229));
  sub_1E325F69C(v229, &qword_1ECF2F860);
  sub_1E325F69C(v213, &qword_1ECF2F838);
  (v170)(v210, v197);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E398FDE0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F840, &qword_1E42AEFD8);
  v6 = *(*(v5 - 8) + 16);
  v6(a2, v4, v5);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F868, &qword_1E42AEFF8);
  v8 = a2 + v7[12];
  v10 = a1[1];
  v9 = a1[2];
  v11 = *v10;
  LOBYTE(v10) = *(v10 + 8);
  *v8 = v11;
  *(v8 + 8) = v10;
  sub_1E3743538(v9, a2 + v7[16], &qword_1ECF2F838, &qword_1E42AEFD0);
  v12 = v7[20];
  v13 = a1[3];
  memcpy(__dst, v13, 0x88uLL);
  memmove((a2 + v12), v13, 0x88uLL);
  sub_1E3743538(a1[4], a2 + v7[24], &qword_1ECF2F838, &qword_1E42AEFD0);
  v14 = a2 + v7[28];
  v16 = a1[5];
  v15 = a1[6];
  v17 = *v16;
  LOBYTE(v16) = *(v16 + 8);
  *v14 = v17;
  *(v14 + 8) = v16;
  v6(a2 + v7[32], v15, v5);
  return sub_1E3743538(__dst, v19, &qword_1ECF2F860, &qword_1E42AEFF0);
}

uint64_t sub_1E398FF64@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v94 = a2;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F870, &qword_1E42AF000);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_31_2();
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F878, &qword_1E42AF008);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_2_5();
  v109 = v6;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v86 - v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_25_3();
  v110 = v11;
  OUTLINED_FUNCTION_138();
  v12 = type metadata accessor for SportsBannerLogoViewModel();
  v13 = *(a1 + *(_s8VideosUI15ClockScoresViewVMa_0(0) + 20) + 8);
  v14 = swift_retain_n();
  v92 = v12;
  v108 = sub_1E3CBAB38(v14, 0);
  v15 = type metadata accessor for SportsPortableScoreboardViewLayout();
  OUTLINED_FUNCTION_18_43();
  sub_1E3994D54(v16);
  swift_retain_n();
  v90 = v15;
  v17 = sub_1E42010C4();
  v106 = v18;
  v107 = v17;
  v19 = sub_1E4202784();
  v105 = v19;
  sub_1E3EB035C(v19);
  sub_1E4200A54();
  v103 = v21;
  v104 = v20;
  v101 = v23;
  v102 = v22;
  v153 = 0;
  v24 = sub_1E4202764();
  v100 = v24;
  sub_1E3EB02B4(v24);
  v26 = v25;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v30 = 0;
  v31 = 0;
  if ((v25 & 1) == 0)
  {
    sub_1E4200A54();
  }

  v96 = v31;
  v97 = v30;
  v98 = v29;
  v99 = v28;
  v95 = v26 & 1;
  v154 = v26 & 1;
  v32 = sub_1E4201D44();
  v33 = sub_1E3EB0AEC();
  *v2 = v32;
  *(v2 + 8) = v33;
  *(v2 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F880, &qword_1E42AF010);
  sub_1E399060C();
  v34 = sub_1E4202794();
  sub_1E4200A54();
  v35 = v2 + *(v91 + 36);
  *v35 = v34;
  *(v35 + 8) = v36;
  *(v35 + 16) = v37;
  *(v35 + 24) = v38;
  *(v35 + 32) = v39;
  *(v35 + 40) = 0;
  sub_1E4203DA4();
  v40 = OUTLINED_FUNCTION_51_3();
  OUTLINED_FUNCTION_99_1(v40, v41, v42, v43, 0x7FF0000000000000, 0, v44, v45, v85);
  v46 = OUTLINED_FUNCTION_48_9();
  sub_1E3741EA0(v46, v47, v48, v49);
  memcpy(&v9[*(v93 + 36)], v155, 0x70uLL);
  sub_1E3741EA0(v9, v110, &qword_1ECF2F878, &qword_1E42AF008);
  v87 = sub_1E3CBAB38(v13, 1);
  v50 = sub_1E42010C4();
  v52 = v51;
  v53 = sub_1E4202764();
  LODWORD(v93) = v53;
  sub_1E3EB035C(v53);
  sub_1E4200A54();
  v91 = v55;
  v92 = v54;
  v89 = v57;
  v90 = v56;
  v145 = 0;
  v58 = sub_1E4202784();
  v88 = v58;
  sub_1E3EB02B4(v58);
  v60 = v59;
  v61 = 0;
  v62 = 0;
  v63 = 0;
  if ((v59 & 1) == 0)
  {
    sub_1E4200A54();
    v27 = v64;
    v61 = v65;
    v62 = v66;
    v63 = v67;
  }

  v68 = v60 & 1;
  v147 = v68;
  v69 = v109;
  OUTLINED_FUNCTION_30_27();
  sub_1E3743538(v70, v71, v72, &qword_1E42AF008);
  v111[0] = v108;
  v111[1] = v107;
  v111[2] = v106;
  LOBYTE(v111[3]) = v105;
  *(&v111[3] + 1) = *v152;
  HIDWORD(v111[3]) = *&v152[3];
  v111[4] = v104;
  v111[5] = v103;
  v111[6] = v102;
  v111[7] = v101;
  LOBYTE(v111[8]) = 0;
  *(&v111[8] + 1) = *v151;
  HIDWORD(v111[8]) = *&v151[3];
  LOBYTE(v111[9]) = v100;
  *(&v111[9] + 1) = *v150;
  HIDWORD(v111[9]) = *&v150[3];
  v111[10] = v99;
  v111[11] = v98;
  v111[12] = v97;
  v111[13] = v96;
  LOBYTE(v111[14]) = v95;
  v73 = v94;
  memcpy(v94, v111, 0x71uLL);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F888, &qword_1E42AF018);
  sub_1E3743538(v69, &v73[*(v74 + 48)], &qword_1ECF2F878, &qword_1E42AF008);
  v75 = *(v74 + 64);
  v112[0] = v87;
  v112[1] = v50;
  v112[2] = v52;
  v76 = v93;
  LOBYTE(v112[3]) = v93;
  v86 = v52;
  v77 = v50;
  v78 = v87;
  *(&v112[3] + 1) = *v146;
  HIDWORD(v112[3]) = *&v146[3];
  v80 = v91;
  v79 = v92;
  v112[4] = v92;
  v112[5] = v91;
  v82 = v89;
  v81 = v90;
  v112[6] = v90;
  v112[7] = v89;
  LOBYTE(v112[8]) = 0;
  *(&v112[8] + 1) = *v149;
  HIDWORD(v112[8]) = *&v149[3];
  v83 = v88;
  LOBYTE(v112[9]) = v88;
  *(&v112[9] + 1) = *v148;
  HIDWORD(v112[9]) = *&v148[3];
  v112[10] = v27;
  v112[11] = v61;
  v112[12] = v62;
  v112[13] = v63;
  LOBYTE(v112[14]) = v68;
  memcpy(&v73[v75], v112, 0x71uLL);
  sub_1E3743538(v111, v129, &qword_1ECF2F890, &unk_1E42AF020);
  sub_1E3743538(v112, v129, &qword_1ECF2F890, &unk_1E42AF020);
  sub_1E325F69C(v110, &qword_1ECF2F878);
  v113[0] = v78;
  v113[1] = v77;
  v113[2] = v86;
  v114 = v76;
  *v115 = *v146;
  *&v115[3] = *&v146[3];
  v116 = v79;
  v117 = v80;
  v118 = v81;
  v119 = v82;
  v120 = 0;
  *v121 = *v149;
  *&v121[3] = *&v149[3];
  v122 = v83;
  *&v123[3] = *&v148[3];
  *v123 = *v148;
  v124 = v27;
  v125 = v61;
  v126 = v62;
  v127 = v63;
  v128 = v68;
  sub_1E325F69C(v113, &qword_1ECF2F890);
  sub_1E325F69C(v109, &qword_1ECF2F878);
  v129[0] = v108;
  v129[1] = v107;
  v129[2] = v106;
  v130 = v105;
  *v131 = *v152;
  *&v131[3] = *&v152[3];
  v132 = v104;
  v133 = v103;
  v134 = v102;
  v135 = v101;
  v136 = 0;
  *v137 = *v151;
  *&v137[3] = *&v151[3];
  v138 = v100;
  *&v139[3] = *&v150[3];
  *v139 = *v150;
  v140 = v99;
  v141 = v98;
  v142 = v97;
  v143 = v96;
  v144 = v95;
  return sub_1E325F69C(v129, &qword_1ECF2F890);
}