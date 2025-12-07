uint64_t sub_1B1CF1DAC(uint64_t a1, uint64_t a2)
{
  v2 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  sub_1B1CF5EB4();
  **(*(v2 + 64) + 40) = sub_1B1D7BEEC();

  return MEMORY[0x1EEE6DED8](v2);
}

uint64_t sub_1B1CF1E20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[36] = a6;
  v7[37] = v6;
  v7[34] = a4;
  v7[35] = a5;
  v7[32] = a2;
  v7[33] = a3;
  v7[31] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1CF1E4C, 0, 0);
}

uint64_t sub_1B1CF1E4C()
{
  v1 = [objc_opt_self() sharedManager];
  v0[38] = v1;
  v0[2] = v0;
  v0[7] = v0 + 28;
  v0[3] = sub_1B1CF1F8C;
  v2 = swift_continuation_init();
  v0[27] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750C0, &qword_1B1D861D0);
  v0[20] = MEMORY[0x1E69E9820];
  v0[21] = 1107296256;
  v0[22] = sub_1B1CF1DAC;
  v0[23] = &block_descriptor_1;
  v0[24] = v2;
  [v1 getAllExtensionsWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1CF1F8C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1CF206C, 0, 0);
}

uint64_t sub_1B1CF206C()
{
  v1 = *(v0 + 224);
  v14 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B1D7C1FC())
  {
    v3 = 0;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B273B2E0](v3, v1);
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([*(v0 + 304) extensionSupportsCredentialExchange_])
      {
        sub_1B1D7C2DC();
        sub_1B1D7C30C();
        sub_1B1D7C31C();
        sub_1B1D7C2EC();
        v4 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v3;
      if (v7 == i)
      {
        v8 = v14;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:
  *(v0 + 312) = v8;

  v9 = swift_task_alloc();
  *(v0 + 320) = v9;
  *v9 = v0;
  v9[1] = sub_1B1CF2250;
  v10 = *(v0 + 304);
  v12 = *(v0 + 280);
  v11 = *(v0 + 288);

  return sub_1B1CF27EC(v12, v11, v10);
}

uint64_t sub_1B1CF2250(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 328) = a1;
  *(v3 + 336) = v1;

  if (v1)
  {
    v4 = sub_1B1CF2784;
  }

  else
  {
    v4 = sub_1B1CF2364;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B1CF2364()
{
  v33 = v0;
  v1 = *(v0 + 336);
  sub_1B1CF4E18(*(v0 + 264), *(v0 + 272), *(v0 + 248), *(v0 + 256), *(v0 + 312), *(v0 + 304));
  if (v1)
  {
    v3 = *(v0 + 304);

LABEL_13:
    v31 = *(v0 + 8);

    return v31();
  }

  v4 = v2;

  v6 = sub_1B1D20C18(v5);

  v8 = sub_1B1D20C18(v7);

  v9 = sub_1B1CF37F4(v8, v6);

  sub_1B1CF3140(v9, v32);

  if (v32[0])
  {
    if (qword_1EB7749B8 != -1)
    {
      swift_once();
    }

    v10 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v10, qword_1EB782530);

    v11 = sub_1B1D7BD6C();
    v12 = sub_1B1D7C00C();

    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 328);
    if (v13)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32[0] = v16;
      *v15 = 136446466;
      v17 = MEMORY[0x1B273AF50](v14, &type metadata for ASExportedCredentialData.FormatVersion);
      v19 = v18;

      v20 = sub_1B1D0D070(v17, v19, v32);

      *(v15 + 4) = v20;
      *(v15 + 12) = 2082;
      v21 = MEMORY[0x1B273AF50](v4, &type metadata for ASExportedCredentialData.FormatVersion);
      v23 = v22;

      v24 = sub_1B1D0D070(v21, v23, v32);

      *(v15 + 14) = v24;
      _os_log_impl(&dword_1B1C8D000, v11, v12, "Importer and exporter have no matching verisons. %{public}s vs %{public}s.", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1B273C4C0](v16, -1, -1);
      MEMORY[0x1B273C4C0](v15, -1, -1);
    }

    else
    {
    }

    v28 = *(v0 + 304);
    type metadata accessor for ASCAuthorizationError(0);
    *(v0 + 240) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v30;
    *(inited + 48) = 0xD00000000000003BLL;
    *(inited + 56) = 0x80000001B1D9B5D0;
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    sub_1B1CF5DF8();
    sub_1B1D7B42C();
    swift_willThrow();

    goto LABEL_13;
  }

  v25 = *(v0 + 304);

  v26 = *(v0 + 8);

  return v26(3157553, 0xE300000000000000);
}

uint64_t sub_1B1CF2784()
{
  v1 = *(v0 + 304);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B1CF27EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[45] = a3;
  v4[46] = v3;
  v4[43] = a1;
  v4[44] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1B1CF2810, 0, 0);
}

uint64_t sub_1B1CF2810()
{
  v2 = v0[43];
  v1 = v0[44];
  if (sub_1B1D7BE4C() == v2 && v3 == v1)
  {
  }

  else
  {
    v5 = sub_1B1D7C50C();

    if ((v5 & 1) == 0)
    {
      v6 = v0[45];
      v0[2] = v0;
      v0[7] = v0 + 38;
      v0[3] = sub_1B1CF29B8;
      v7 = swift_continuation_init();
      v0[37] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750C0, &qword_1B1D861D0);
      v0[30] = MEMORY[0x1E69E9820];
      v0[31] = 1107296256;
      v0[32] = sub_1B1CF1DAC;
      v0[33] = &block_descriptor_16;
      v0[34] = v7;
      [v6 getAllExtensionsWithCompletion_];

      return MEMORY[0x1EEE6DEC8](v0 + 2);
    }
  }

  v8 = v0[1];

  return v8(&unk_1F28D8270);
}

uint64_t sub_1B1CF29B8()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1CF2A98, 0, 0);
}

uint64_t sub_1B1CF2A98()
{
  v51 = v0;
  v1 = v0[38];
  if (v1 >> 62)
  {
LABEL_42:
    v2 = sub_1B1D7C1FC();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_43:

    if (qword_1EB7749B8 != -1)
    {
      swift_once();
    }

    v38 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v38, qword_1EB782530);

    v39 = sub_1B1D7BD6C();
    v40 = sub_1B1D7C01C();

    if (os_log_type_enabled(v39, v40))
    {
      v42 = v0[43];
      v41 = v0[44];
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v50 = v44;
      *v43 = 136446210;
      *(v43 + 4) = sub_1B1D0D070(v42, v41, &v50);
      _os_log_impl(&dword_1B1C8D000, v39, v40, "Could not find importer extension with bundle ID %{public}s", v43, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      MEMORY[0x1B273C4C0](v44, -1, -1);
      MEMORY[0x1B273C4C0](v43, -1, -1);
    }

    type metadata accessor for ASCAuthorizationError(0);
    v0[42] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v46;
    *(inited + 48) = 0xD000000000000025;
    *(inited + 56) = 0x80000001B1D9B7E0;
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    sub_1B1CF5DF8();
    sub_1B1D7B42C();
    swift_willThrow();
    goto LABEL_48;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_43;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1B273B2E0](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v7 = [v4 sf_bundleIdentifierForContainingApp];
    if (!v7)
    {
      goto LABEL_4;
    }

    v49 = v5;
    v9 = v0[43];
    v8 = v0[44];
    v10 = v7;
    v11 = sub_1B1D7BE4C();
    v13 = v12;

    if (v11 == v9 && v13 == v8)
    {
      break;
    }

    v15 = sub_1B1D7C50C();

    v5 = v49;
    if (v15)
    {
      goto LABEL_18;
    }

LABEL_4:

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_43;
    }
  }

  v5 = v49;
LABEL_18:
  v16 = v0[45];

  v17 = [v16 extensionSupportedCredentialExchangeFormatVersions_];
  if (v17)
  {
    v48 = v0;
    v18 = v17;
    v19 = sub_1B1D7BEEC();

    v20 = 0;
    v21 = *(v19 + 16);
    v22 = MEMORY[0x1E69E7CC0];
LABEL_20:
    v23 = v19 + 40 + 16 * v20;
    while (v21 != v20)
    {
      if (v20 >= *(v19 + 16))
      {
        goto LABEL_41;
      }

      v0 = (v23 + 16);
      ++v20;

      v24 = sub_1B1D7C3AC();

      v23 = v0;
      if (!v24)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v22 = sub_1B1D0C9C8(0, *(v22 + 2) + 1, 1, v22);
        }

        v26 = *(v22 + 2);
        v25 = *(v22 + 3);
        v27 = v26 + 1;
        if (v26 >= v25 >> 1)
        {
          v22 = sub_1B1D0C9C8((v25 > 1), v26 + 1, 1, v22);
        }

        *(v22 + 2) = v27;
        goto LABEL_20;
      }
    }

    if (*(v22 + 2))
    {

      v28 = v48[1];

      return v28(v22);
    }

    v0 = v48;
    v5 = v49;
  }

  if (qword_1EB7749B8 != -1)
  {
    swift_once();
  }

  v30 = MEMORY[0x1E69E6158];
  v31 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v31, qword_1EB782530);
  v32 = sub_1B1D7BD6C();
  v33 = sub_1B1D7C00C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1B1C8D000, v32, v33, "Importer app has no valid format versions.", v34, 2u);
    MEMORY[0x1B273C4C0](v34, -1, -1);
  }

  v35 = v0[46];

  [v35 _showErrorAlert_];
  type metadata accessor for ASCAuthorizationError(0);
  v0[40] = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_1B1D85C40;
  *(v36 + 32) = sub_1B1D7BE4C();
  *(v36 + 72) = v30;
  *(v36 + 40) = v37;
  *(v36 + 48) = 0xD00000000000001DLL;
  *(v36 + 56) = 0x80000001B1D9B7C0;
  sub_1B1D6FAB8(v36);
  swift_setDeallocating();
  sub_1B1CF1634(v36 + 32);
  sub_1B1CF5DF8();
  sub_1B1D7B42C();
  swift_willThrow();

LABEL_48:
  v47 = v0[1];

  return v47();
}

uint64_t sub_1B1CF3140@<X0>(uint64_t result@<X0>, _BYTE *a2@<X8>)
{
  v2 = 1 << *(result + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(result + 56);
  if (v4)
  {
    v5 = 0;
    v6 = (v4 - 1) & v4;
    v7 = (v2 + 63) >> 6;
LABEL_10:
    while (v6)
    {
LABEL_9:
      v6 &= v6 - 1;
    }

    while (1)
    {
      v9 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v9 >= v7)
      {
        *a2 = 0;
        return result;
      }

      v6 = *(result + 56 + 8 * v9);
      ++v5;
      if (v6)
      {
        v5 = v9;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v7 = (v2 + 63) >> 6;
    while (v7 - 1 != v4)
    {
      v5 = v4 + 1;
      v8 = *(result + 64 + 8 * v4++);
      if (v8)
      {
        v6 = (v8 - 1) & v8;
        goto LABEL_10;
      }
    }

    *a2 = 1;
  }

  return result;
}

uint64_t sub_1B1CF33A4(uint64_t a1, uint64_t a2, uint64_t a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v8 = sub_1B1D7BE4C();
  v10 = v9;
  v5[4] = v9;
  if (a2)
  {
    a2 = sub_1B1D7BE4C();
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v5[5] = v12;
  v13 = sub_1B1D7BE4C();
  v15 = v14;
  v5[6] = v14;
  a5;
  v16 = swift_task_alloc();
  v5[7] = v16;
  *v16 = v5;
  v16[1] = sub_1B1CF34D8;

  return sub_1B1CF1E20(v8, v10, a2, v12, v13, v15);
}

uint64_t sub_1B1CF34D8(uint64_t a1, uint64_t a2)
{
  v4 = v2;
  v5 = *v3;
  v6 = *(*v3 + 24);
  v7 = *(*v3 + 16);
  v8 = *v3;

  if (v2)
  {
    if (v6)
    {
      v9 = *(v5 + 24);
      v10 = sub_1B1D7B43C();

      v9[2](v9, 0, v10);
      v11 = v9;
LABEL_6:
      _Block_release(v11);

      goto LABEL_9;
    }
  }

  else
  {
    if (v6)
    {
      v12 = *(v5 + 24);
      v10 = sub_1B1D7BE1C();

      v12[2](v12, v10, 0);
      v11 = v12;
      goto LABEL_6;
    }
  }

LABEL_9:
  v13 = *(v8 + 8);

  return v13();
}

uint64_t sub_1B1CF3714()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B1CE9AD0;

  return sub_1B1CF33A4(v2, v3, v4, v5, v6);
}

uint64_t sub_1B1CF37F4(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    bzero(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v9 = sub_1B1CF3A48(v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = sub_1B1CF39B8(v11, v6, a2, a1);

    MEMORY[0x1B273C4C0](v11, -1, -1);
  }

  return v9;
}

void *sub_1B1CF39B8(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    v8 = sub_1B1CF3A48(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1B1CF3A48(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v28 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
LABEL_15:
    v29 = 0;
    v17 = 0;
    v18 = 1 << *(a3 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(a3 + 56);
    v21 = (v18 + 63) >> 6;
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_26:
      v25 = v22 | (v17 << 6);
      sub_1B1D7C5CC();
      sub_1B1D7BE7C();
      result = sub_1B1D7C61C();
      v26 = result & ~(-1 << *(v4 + 32));
      if ((*(v4 + 56 + ((v26 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v26))
      {
        *(v28 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
        v16 = __OFADD__(v29++, 1);
        if (v16)
        {
          __break(1u);
          goto LABEL_30;
        }
      }
    }

    v23 = v17;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {
        goto LABEL_30;
      }

      v24 = *(a3 + 56 + 8 * v17);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v20 = (v24 - 1) & v24;
        goto LABEL_26;
      }
    }
  }

  else
  {
    v29 = 0;
    v6 = 0;
    v4 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    while (v9)
    {
LABEL_6:
      v9 &= v9 - 1;
      sub_1B1D7C5CC();
      sub_1B1D7BE7C();
      result = sub_1B1D7C61C();
      v11 = result & ~(-1 << *(a3 + 32));
      v12 = v11 >> 6;
      v13 = *(a3 + 56 + 8 * (v11 >> 6));
      v14 = 1 << v11;
      if ((v14 & v13) != 0)
      {
        v28[v12] |= v14;
        v16 = __OFADD__(v29++, 1);
        if (v16)
        {
          __break(1u);
          goto LABEL_15;
        }
      }
    }

    while (1)
    {
      v15 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v15 >= v10)
      {
LABEL_30:

        return sub_1B1CF3CB4(v28, a2, v29, a3);
      }

      v9 = *(v4 + 8 * v15);
      ++v6;
      if (v9)
      {
        v6 = v15;
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1B1CF3CB4(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750C8, &qword_1B1D861E0);
  result = sub_1B1D7C25C();
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
LABEL_15:
    sub_1B1D7C5CC();
    sub_1B1D7BE7C();
    result = sub_1B1D7C61C();
    v14 = -1 << *(v9 + 32);
    v15 = result & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v12 + 8 * (v15 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v12 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_29;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*(v12 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_30;
    }

    v10 &= v10 - 1;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_6;
    }

    v10 = a1[v13];
    ++v11;
    if (v10)
    {
      v11 = v13;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_1B1CF3E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[84] = v5;
  v6[83] = a5;
  v6[82] = a4;
  v6[81] = a3;
  v6[80] = a2;
  v6[79] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1B1CF3EC8, 0, 0);
}

uint64_t sub_1B1CF3EC8()
{
  v1 = *(v0 + 632);
  v2 = [objc_opt_self() sharedManager];
  *(v0 + 680) = v2;
  [v1 auditToken];
  *(v0 + 776) = v14;
  *(v0 + 792) = v15;
  v3 = WBSApplicationIdentifierFromAuditToken();
  *(v0 + 688) = v3;
  if (v3)
  {
    *(v0 + 696) = sub_1B1D7BE4C();
    *(v0 + 704) = v4;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 608;
    *(v0 + 24) = sub_1B1CF4208;
    v5 = swift_continuation_init();
    *(v0 + 424) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750C0, &qword_1B1D861D0);
    *(v0 + 368) = MEMORY[0x1E69E9820];
    *(v0 + 376) = 1107296256;
    *(v0 + 384) = sub_1B1CF1DAC;
    *(v0 + 392) = &block_descriptor_37;
    *(v0 + 400) = v5;
    [v2 getAllExtensionsWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {
    if (qword_1EB7749B8 != -1)
    {
      swift_once();
    }

    v6 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v6, qword_1EB782530);
    v7 = sub_1B1D7BD6C();
    v8 = sub_1B1D7C00C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_1B1C8D000, v7, v8, "Exporting app is missing application identifier.", v9, 2u);
      MEMORY[0x1B273C4C0](v9, -1, -1);
    }

    type metadata accessor for ASCAuthorizationError(0);
    *(v0 + 600) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v11;
    *(inited + 48) = 0xD000000000000053;
    *(inited + 56) = 0x80000001B1D9B810;
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    sub_1B1CF5DF8();
    sub_1B1D7B42C();
    swift_willThrow();

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1B1CF4208()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1CF42E8, 0, 0);
}

uint64_t sub_1B1CF42E8()
{
  v1 = *(v0 + 608);
  v32 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1B1D7C1FC())
  {
    v3 = 0;
    v4 = v1 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1B273B2E0](v3, v1);
      }

      else
      {
        if (v3 >= *(v4 + 16))
        {
          goto LABEL_15;
        }

        v5 = *(v1 + 8 * v3 + 32);
      }

      v6 = v5;
      v7 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      if ([*(v0 + 680) extensionSupportsCredentialExchange_])
      {
        sub_1B1D7C2DC();
        sub_1B1D7C30C();
        sub_1B1D7C31C();
        sub_1B1D7C2EC();
        v4 = v1 & 0xFFFFFFFFFFFFFF8;
      }

      else
      {
      }

      ++v3;
      if (v7 == i)
      {
        v8 = v32;
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_18:
  v9 = *(v0 + 704);
  v10 = *(v0 + 696);

  if (v10 == sub_1B1D7BE4C() && v9 == v11)
  {

    goto LABEL_32;
  }

  v13 = sub_1B1D7C50C();

  if (v13)
  {
LABEL_32:
    if (v8 < 0 || (v8 & 0x4000000000000000) != 0)
    {
      v24 = sub_1B1D7C1FC();
    }

    else
    {
      v24 = *(v8 + 16);
    }

    if (!v24)
    {
      goto LABEL_24;
    }

    goto LABEL_36;
  }

  if (([objc_opt_self() isPasswordsAppInstalled] & 1) == 0)
  {
LABEL_24:

    if (qword_1EB7749B8 != -1)
    {
      swift_once();
    }

    v14 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v14, qword_1EB782530);
    v15 = sub_1B1D7BD6C();
    v16 = sub_1B1D7C00C();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B1C8D000, v15, v16, "No apps available for import.", v17, 2u);
      MEMORY[0x1B273C4C0](v17, -1, -1);
    }

    v18 = *(v0 + 680);
    v19 = *(v0 + 672);

    [v19 _showErrorAlert_];
    type metadata accessor for ASCAuthorizationError(0);
    *(v0 + 624) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1B1D85C40;
    *(inited + 32) = sub_1B1D7BE4C();
    *(inited + 72) = MEMORY[0x1E69E6158];
    *(inited + 40) = v21;
    *(inited + 48) = 0xD00000000000001DLL;
    *(inited + 56) = 0x80000001B1D9B7C0;
    sub_1B1D6FAB8(inited);
    swift_setDeallocating();
    sub_1B1CF1634(inited + 32);
    sub_1B1CF5DF8();
    sub_1B1D7B42C();
    swift_willThrow();

    v22 = *(v0 + 8);

    return v22();
  }

LABEL_36:
  v25 = *(v0 + 672);
  v26 = *(v0 + 632);
  v27 = [objc_allocWithZone(MEMORY[0x1E698DFB8]) init];
  *(v0 + 712) = v27;
  [v27 setCredentialExchangeDelegate_];
  v28 = [objc_opt_self() processHandleForNSXPCConnection_];
  *(v0 + 720) = v28;
  v29 = sub_1B1D7BE1C();
  *(v0 + 728) = v29;
  *(v0 + 80) = v0;
  *(v0 + 120) = v0 + 560;
  *(v0 + 88) = sub_1B1CF4860;
  v30 = swift_continuation_init();
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7750D8, &unk_1B1D93680);
  *(v0 + 736) = v31;
  *(v0 + 488) = v31;
  *(v0 + 432) = MEMORY[0x1E69E9820];
  *(v0 + 440) = 1107296256;
  *(v0 + 448) = sub_1B1D6D68C;
  *(v0 + 456) = &block_descriptor_41;
  *(v0 + 464) = v30;
  [v27 presentExportFlowForProcess:v28 windowSceneIdentifier:v29 completionHandler:v0 + 432];

  return MEMORY[0x1EEE6DEC8](v0 + 80);
}

uint64_t sub_1B1CF4860()
{
  v1 = *v0;
  v2 = *(*v0 + 112);
  *(*v0 + 744) = v2;
  if (v2)
  {

    v3 = sub_1B1CF4CE0;
  }

  else
  {
    v3 = sub_1B1CF4978;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B1CF4978()
{
  v1 = *(v0 + 720);
  v2 = *(v0 + 672);
  v3 = *(v0 + 648);

  v4 = sub_1B1D7BE1C();
  [v2 _setSelectedImporterBundleIdentifierForCurrentOperation_];

  if (v3)
  {
    v5 = sub_1B1D7BE1C();
  }

  else
  {
    v5 = 0;
  }

  *(v0 + 752) = v5;
  v6 = *(v0 + 736);
  v7 = *(v0 + 688);
  v8 = *(v0 + 672);
  v9 = sub_1B1D7BE1C();
  *(v0 + 760) = v9;

  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 576;
  *(v0 + 152) = sub_1B1CF4B2C;
  v10 = swift_continuation_init();
  *(v0 + 552) = v6;
  *(v0 + 528) = v10;
  *(v0 + 496) = MEMORY[0x1E69E9820];
  *(v0 + 504) = 1107296256;
  *(v0 + 512) = sub_1B1D6D68C;
  *(v0 + 520) = &block_descriptor_44;
  [v8 _highestCommonVersionNumber_credentialProviderBundleIdentifier_importerBundleIdentifier_completionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 144);
}

uint64_t sub_1B1CF4B2C()
{
  v1 = *(*v0 + 176);
  *(*v0 + 768) = v1;
  if (v1)
  {
    v2 = sub_1B1CF4D74;
  }

  else
  {
    v2 = sub_1B1CF4C3C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1B1CF4C3C()
{
  v1 = *(v0 + 760);
  v2 = *(v0 + 752);
  v3 = *(v0 + 712);
  v4 = *(v0 + 688);

  v5 = *(v0 + 576);
  v6 = *(v0 + 584);

  v7 = *(v0 + 8);

  return v7(v5, v6);
}

uint64_t sub_1B1CF4CE0(uint64_t a1)
{
  v2 = v1[91];
  v3 = v1[90];
  v4 = v1[89];
  v5 = v1[85];
  swift_willThrow();

  v6 = v1[1];

  return v6();
}

uint64_t sub_1B1CF4D74(uint64_t a1)
{
  v2 = v1[95];
  v3 = v1[94];
  v4 = v1[89];
  v5 = v1[86];
  v6 = v1[85];
  swift_willThrow();

  v7 = v1[1];

  return v7();
}

void sub_1B1CF4E18(void *a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6)
{
  if (sub_1B1D7BE4C() == a3 && v10 == a4)
  {

    return;
  }

  v121 = a3;
  v123 = a4;
  v12 = sub_1B1D7C50C();

  if (v12)
  {
    return;
  }

  v125 = MEMORY[0x1E69E7CC0];
  if (a5 >> 62)
  {
    goto LABEL_120;
  }

  v13 = *((a5 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
  v116 = a6;
  v14 = MEMORY[0x1E69E7CC0];
  if (v13)
  {
    v15 = 0;
    v16 = a5 & 0xC000000000000001;
    v17 = a5 & 0xFFFFFFFFFFFFFF8;
    v118 = a5;
    while (1)
    {
      if (v16)
      {
        v18 = MEMORY[0x1B273B2E0](v15, a5);
      }

      else
      {
        if (v15 >= *(v17 + 16))
        {
          goto LABEL_116;
        }

        v18 = *(a5 + 8 * v15 + 32);
      }

      v19 = v18;
      v20 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
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
        v13 = sub_1B1D7C1FC();
        goto LABEL_8;
      }

      v21 = [v18 sf_applicationRecordForContainingApp];
      if (v21)
      {
        v22 = v21;
        a6 = [v21 applicationIdentifier];

        if (a6)
        {
          break;
        }
      }

LABEL_11:
      ++v15;
      if (v20 == v13)
      {
        v14 = v125;
        goto LABEL_31;
      }
    }

    v23 = v13;
    v24 = v17;
    v25 = v16;
    v26 = sub_1B1D7BE4C();
    v28 = v27;

    if (v26 == v121 && v28 == v123)
    {
    }

    else
    {
      v30 = sub_1B1D7C50C();

      if ((v30 & 1) == 0)
      {

LABEL_26:
        v16 = v25;
        v17 = v24;
        v13 = v23;
        a5 = v118;
        goto LABEL_11;
      }
    }

    sub_1B1D7C2DC();
    sub_1B1D7C30C();
    sub_1B1D7C31C();
    sub_1B1D7C2EC();
    goto LABEL_26;
  }

LABEL_31:
  v31 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
  if (v31)
  {
    v32 = sub_1B1D7C1FC();
    if (v32)
    {
LABEL_36:
      v123 = v14;
      if (a2)
      {
        v33 = 0;
        a5 = v14 & 0xC000000000000001;
        while (1)
        {
          if (a5)
          {
            v34 = MEMORY[0x1B273B2E0](v33, v14);
          }

          else
          {
            if (v33 >= *(v14 + 16))
            {
              goto LABEL_119;
            }

            v34 = *(v14 + 8 * v33 + 32);
          }

          v35 = v34;
          v36 = v33 + 1;
          if (__OFADD__(v33, 1))
          {
            goto LABEL_118;
          }

          v37 = [v34 identifier];
          if (v37)
          {
            v38 = v37;
            a6 = sub_1B1D7BE4C();
            v40 = v39;

            if (a6 == a1 && v40 == a2)
            {

LABEL_72:
              if (qword_1EB7749B8 != -1)
              {
                swift_once();
              }

              v63 = sub_1B1D7BD8C();
              __swift_project_value_buffer(v63, qword_1EB782530);

              v64 = sub_1B1D7BD6C();
              v65 = sub_1B1D7BFEC();

              if (os_log_type_enabled(v64, v65))
              {
                v66 = swift_slowAlloc();
                a6 = swift_slowAlloc();
                v125 = a6;
                *v66 = 136315138;
                *(v66 + 4) = sub_1B1D0D070(a1, a2, &v125);
                _os_log_impl(&dword_1B1C8D000, v64, v65, "Found matching extension for %s.", v66, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(a6);
                MEMORY[0x1B273C4C0](a6, -1, -1);
                MEMORY[0x1B273C4C0](v66, -1, -1);
              }

              goto LABEL_77;
            }

            v42 = sub_1B1D7C50C();

            v14 = v123;
            if (v42)
            {
              goto LABEL_72;
            }
          }

          ++v33;
          if (v36 == v32)
          {
            if (qword_1EB7749B8 != -1)
            {
              swift_once();
            }

            v52 = sub_1B1D7BD8C();
            __swift_project_value_buffer(v52, qword_1EB782530);

            v53 = sub_1B1D7BD6C();
            v54 = sub_1B1D7C00C();

            if (os_log_type_enabled(v53, v54))
            {
              v55 = swift_slowAlloc();
              v56 = swift_slowAlloc();
              v125 = v56;
              *v55 = 136315138;
              v57 = a1;
              *(v55 + 4) = sub_1B1D0D070(a1, a2, &v125);
              _os_log_impl(&dword_1B1C8D000, v53, v54, "App requested to export from %s but no such extension found.", v55, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v56);
              MEMORY[0x1B273C4C0](v56, -1, -1);
              MEMORY[0x1B273C4C0](v55, -1, -1);
            }

            else
            {

              v57 = a1;
            }

            v127 = 1;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_1B1D85C40;
            *(inited + 32) = sub_1B1D7BE4C();
            v119 = inited + 32;
            *(inited + 40) = v80;
            v125 = 0;
            v126 = 0xE000000000000000;
            sub_1B1D7C27C();
            MEMORY[0x1B273AEE0](0xD00000000000001DLL, 0x80000001B1D9B720);
            MEMORY[0x1B273AEE0](v57, a2);
            MEMORY[0x1B273AEE0](0xD000000000000024, 0x80000001B1D9B740);
            if (v31)
            {
              v81 = sub_1B1D7C1FC();
            }

            else
            {
              v81 = *(v14 + 16);
            }

            v122 = inited;
            if (!v81)
            {

              v83 = MEMORY[0x1E69E7CC0];
LABEL_114:
              type metadata accessor for ASCAuthorizationError(0);
              v124 = v83;
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7753F0, &qword_1B1D88DF0);
              sub_1B1CF5E50();
              v107 = sub_1B1D7BDFC();
              v109 = v108;

              MEMORY[0x1B273AEE0](v107, v109);

              MEMORY[0x1B273AEE0](46, 0xE100000000000000);
              v110 = v125;
              v111 = v126;
              v122[9] = MEMORY[0x1E69E6158];
              v122[6] = v110;
              v122[7] = v111;
              sub_1B1D6FAB8(v122);
              swift_setDeallocating();
              sub_1B1CF1634(v119);
              sub_1B1CF5DF8();
              goto LABEL_128;
            }

            v124 = MEMORY[0x1E69E7CC0];
            v59 = &v124;
            sub_1B1D194F8(0, v81 & ~(v81 >> 63), 0);
            if (v81 < 0)
            {
              goto LABEL_131;
            }

            v82 = 0;
            v83 = v124;
            while (1)
            {
              v84 = a5 ? MEMORY[0x1B273B2E0](v82, v14) : *(v14 + 8 * v82 + 32);
              v59 = v84;
              v85 = [v59 identifier];
              if (!v85)
              {
                goto LABEL_132;
              }

              v86 = v85;
              v87 = sub_1B1D7BE4C();
              v89 = v88;

              if (!v89)
              {
                goto LABEL_133;
              }

              v124 = v83;
              v91 = *(v83 + 16);
              v90 = *(v83 + 24);
              if (v91 >= v90 >> 1)
              {
                sub_1B1D194F8((v90 > 1), v91 + 1, 1);
                v83 = v124;
              }

              ++v82;
              *(v83 + 16) = v91 + 1;
              v92 = v83 + 16 * v91;
              *(v92 + 32) = v87;
              *(v92 + 40) = v89;
              v14 = v123;
              if (v81 == v82)
              {

                goto LABEL_114;
              }
            }
          }
        }
      }

      if (v31)
      {
        if (sub_1B1D7C1FC() != 1)
        {
LABEL_53:

          if (qword_1EB7749B8 != -1)
          {
            swift_once();
          }

          v43 = sub_1B1D7BD8C();
          __swift_project_value_buffer(v43, qword_1EB782530);
          v44 = sub_1B1D7BD6C();
          v45 = sub_1B1D7C00C();
          if (os_log_type_enabled(v44, v45))
          {
            v46 = swift_slowAlloc();
            *v46 = 0;
            _os_log_impl(&dword_1B1C8D000, v44, v45, "Exporting app has multiple credential provider extensions but none specified.", v46, 2u);
            MEMORY[0x1B273C4C0](v46, -1, -1);
          }

          type metadata accessor for ASCAuthorizationError(0);
          v127 = 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
          v47 = swift_initStackObject();
          *(v47 + 16) = xmmword_1B1D85C40;
          *(v47 + 32) = sub_1B1D7BE4C();
          v49 = v47 + 32;
          v50 = 0x80000001B1D9B610;
          *(v47 + 72) = MEMORY[0x1E69E6158];
          v51 = 0xD000000000000064;
          goto LABEL_127;
        }
      }

      else if (*(v14 + 16) != 1)
      {
        goto LABEL_53;
      }

      if (qword_1EB7749B8 != -1)
      {
        swift_once();
      }

      v58 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v58, qword_1EB782530);
      v59 = sub_1B1D7BD6C();
      v60 = sub_1B1D7BFEC();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        *v61 = 0;
        _os_log_impl(&dword_1B1C8D000, v59, v60, "Exporter has one extension.", v61, 2u);
        MEMORY[0x1B273C4C0](v61, -1, -1);
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v62 = MEMORY[0x1B273B2E0](0, v14);
      }

      else
      {
        if (!*(v14 + 16))
        {
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:

LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          return;
        }

        v62 = *(v14 + 32);
      }

      v35 = v62;
LABEL_77:
      v67 = [v116 extensionSupportedCredentialExchangeFormatVersions_];
      if (v67)
      {
        v68 = v67;
        v69 = sub_1B1D7BEEC();

        a5 = 0;
        v70 = *(v69 + 16);
        v71 = v69 + 40;
        v72 = MEMORY[0x1E69E7CC0];
        v121 = v69 + 40;
LABEL_79:
        v73 = (v71 + 16 * a5);
        while (v70 != a5)
        {
          if (a5 >= *(v69 + 16))
          {
            goto LABEL_117;
          }

          ++a5;
          v74 = v73 + 2;
          a6 = *v73;

          v75 = sub_1B1D7C3AC();

          v73 = v74;
          if (!v75)
          {
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v72 = sub_1B1D0C9C8(0, *(v72 + 2) + 1, 1, v72);
            }

            v76 = v72;
            v78 = *(v72 + 2);
            v77 = *(v72 + 3);
            a6 = (v78 + 1);
            if (v78 >= v77 >> 1)
            {
              v76 = sub_1B1D0C9C8((v77 > 1), v78 + 1, 1, v72);
            }

            v71 = v69 + 40;
            v72 = v76;
            *(v76 + 2) = a6;
            goto LABEL_79;
          }
        }

        if (*(v72 + 2))
        {

          return;
        }
      }

      if (qword_1EB7749B8 != -1)
      {
        swift_once();
      }

      v93 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v93, qword_1EB782530);
      v94 = sub_1B1D7BD6C();
      v95 = sub_1B1D7C00C();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        *v96 = 0;
        _os_log_impl(&dword_1B1C8D000, v94, v95, "No valid format versions in Info.plist.", v96, 2u);
        MEMORY[0x1B273C4C0](v96, -1, -1);
      }

      v127 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
      v97 = swift_initStackObject();
      *(v97 + 16) = xmmword_1B1D85C40;
      *(v97 + 32) = sub_1B1D7BE4C();
      *(v97 + 40) = v98;
      v125 = 0;
      v126 = 0xE000000000000000;
      sub_1B1D7C27C();
      MEMORY[0x1B273AEE0](0xD000000000000023, 0x80000001B1D9B680);
      v99 = [v35 identifier];
      if (v99)
      {
        v100 = v99;

        type metadata accessor for ASCAuthorizationError(0);
        v101 = sub_1B1D7BE4C();
        v103 = v102;

        MEMORY[0x1B273AEE0](v101, v103);

        MEMORY[0x1B273AEE0](0xD000000000000011, 0x80000001B1D9B6B0);
        v104 = sub_1B1D7BE4C();
        MEMORY[0x1B273AEE0](v104);

        MEMORY[0x1B273AEE0](0xD00000000000004BLL, 0x80000001B1D9B6D0);
        v105 = v125;
        v106 = v126;
        *(v97 + 72) = MEMORY[0x1E69E6158];
        *(v97 + 48) = v105;
        *(v97 + 56) = v106;
        sub_1B1D6FAB8(v97);
        swift_setDeallocating();
        sub_1B1CF1634(v97 + 32);
        sub_1B1CF5DF8();
        sub_1B1D7B42C();
        swift_willThrow();

        return;
      }

      goto LABEL_134;
    }
  }

  else
  {
    v32 = *(v14 + 16);
    if (v32)
    {
      goto LABEL_36;
    }
  }

  if (qword_1EB7749B8 != -1)
  {
    swift_once();
  }

  v112 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v112, qword_1EB782530);
  v113 = sub_1B1D7BD6C();
  v114 = sub_1B1D7C00C();
  if (os_log_type_enabled(v113, v114))
  {
    v115 = swift_slowAlloc();
    *v115 = 0;
    _os_log_impl(&dword_1B1C8D000, v113, v114, "Exporting app does not have a credential provider extension.", v115, 2u);
    MEMORY[0x1B273C4C0](v115, -1, -1);
  }

  type metadata accessor for ASCAuthorizationError(0);
  v127 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7750A0, &unk_1B1D86090);
  v47 = swift_initStackObject();
  *(v47 + 16) = xmmword_1B1D85C40;
  *(v47 + 32) = sub_1B1D7BE4C();
  v49 = v47 + 32;
  v50 = 0x80000001B1D9B770;
  *(v47 + 72) = MEMORY[0x1E69E6158];
  v51 = 0xD000000000000048;
LABEL_127:
  *(v47 + 40) = v48;
  *(v47 + 48) = v51;
  *(v47 + 56) = v50;
  sub_1B1D6FAB8(v47);
  swift_setDeallocating();
  sub_1B1CF1634(v49);
  sub_1B1CF5DF8();
LABEL_128:
  sub_1B1D7B42C();
  swift_willThrow();
}

unint64_t sub_1B1CF5DF8()
{
  result = qword_1EB774B90;
  if (!qword_1EB774B90)
  {
    type metadata accessor for ASCAuthorizationError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB774B90);
  }

  return result;
}

unint64_t sub_1B1CF5E50()
{
  result = qword_1EB7750D0;
  if (!qword_1EB7750D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB7753F0, &qword_1B1D88DF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7750D0);
  }

  return result;
}

unint64_t sub_1B1CF5EB4()
{
  result = qword_1EB775450;
  if (!qword_1EB775450)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB775450);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  _Block_release(*(v0 + 40));

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1B1CF5F58()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B1CE9AD0;

  return sub_1B1CF1A50(v2, v3, v4, v5, v6);
}

uint64_t sub_1B1CF6020()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1B1CE9AD0;

  return sub_1B1D223A4(v2, v3, v4);
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B1CF6120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B1CE99BC;

  return sub_1B1D2248C(a1, v4, v5, v6);
}

uint64_t sub_1B1CF620C(uint64_t a1)
{
  v2 = sub_1B1D7C1CC();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_1B1CF9654(v2, *(a1 + 36), 0, a1);
  sub_1B1CF96A8(v4, v5);
  return v4;
}

uint64_t ASAuthorizationUIContext.passkeyLoginChoices.getter()
{
  v1 = *(v0 + 16);
  *v12 = *v0;
  v13 = v1;
  v14[0] = *(v0 + 32);
  *(v14 + 15) = *(v0 + 47);
  v2 = [v12[0] loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v3 = sub_1B1D7BEEC();

  v11 = MEMORY[0x1E69E7CC0];
  if (v3 >> 62)
  {
    goto LABEL_18;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    while (1)
    {
      v5 = 0;
      v6 = v3 & 0xFFFFFFFFFFFFFF8;
      if ((v3 & 0xC000000000000001) != 0)
      {
        break;
      }

LABEL_4:
      if ((v5 & 0x8000000000000000) == 0)
      {
        if (v5 >= *(v6 + 16))
        {
          goto LABEL_17;
        }

        swift_unknownObjectRetain();
        v7 = v5 + 1;
        if (!__OFADD__(v5, 1))
        {
          goto LABEL_7;
        }

        goto LABEL_15;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      __break(1u);
LABEL_18:
      v4 = sub_1B1D7C1FC();
      if (!v4)
      {
        goto LABEL_19;
      }
    }

    while (1)
    {
      MEMORY[0x1B273B2E0](v5, v3);
      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

LABEL_7:
      objc_opt_self();
      v8 = swift_dynamicCastObjCClass();
      if (v8 && (v10 = v8, (sub_1B1CF6F88(&v10, v12) & 1) != 0))
      {
        sub_1B1D7C2DC();
        sub_1B1D7C30C();
        v6 = v3 & 0xFFFFFFFFFFFFFF8;
        sub_1B1D7C31C();
        sub_1B1D7C2EC();
        if (v7 == v4)
        {
          goto LABEL_19;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        if (v7 == v4)
        {
          goto LABEL_19;
        }
      }

      ++v5;
      if ((v3 & 0xC000000000000001) == 0)
      {
        goto LABEL_4;
      }
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

LABEL_19:

  return v11;
}

uint64_t sub_1B1CF64A0@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  *v55 = *v2;
  *&v55[16] = v4;
  *v56 = *(v2 + 32);
  *&v56[15] = *(v2 + 47);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (!v5)
  {
    v57 = *(v2 + 8);
    v58 = *(v2 + 24);
    v8 = v58;
    *a2 = v57;
    *(a2 + 16) = v8;
    goto LABEL_6;
  }

  if (v56[9])
  {
    v6 = *(v2 + 8);
    v57 = v6;
    v7 = *(v2 + 24);
LABEL_4:
    v58 = v7;
    *a2 = v6;
    *(a2 + 16) = v7;
LABEL_6:
    type metadata accessor for ASAuthorizationUIContext.Message(0);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    return sub_1B1CF95A4(&v57, v54);
  }

  v49 = v5;
  swift_unknownObjectRetain();
  v50 = *v55;
  v10 = [*v55 loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v11 = sub_1B1D7BEEC();

  *&v57 = MEMORY[0x1E69E7CC0];
  v52 = a2;
  if (v11 >> 62)
  {
    goto LABEL_25;
  }

  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    while (1)
    {
      v13 = 0;
      v14 = v11 & 0xFFFFFFFFFFFFFF8;
      if ((v11 & 0xC000000000000001) != 0)
      {
        break;
      }

LABEL_11:
      if ((v13 & 0x8000000000000000) == 0)
      {
        if (v13 >= *(v14 + 16))
        {
          goto LABEL_24;
        }

        swift_unknownObjectRetain();
        v15 = v13 + 1;
        if (!__OFADD__(v13, 1))
        {
          goto LABEL_14;
        }

        goto LABEL_22;
      }

LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      v12 = sub_1B1D7C1FC();
      if (!v12)
      {
        goto LABEL_26;
      }
    }

    while (1)
    {
      MEMORY[0x1B273B2E0](v13, v11);
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

LABEL_14:
      objc_opt_self();
      v16 = swift_dynamicCastObjCClass();
      if (v16 && (v54[0] = v16, (sub_1B1CF6F88(v54, v55) & 1) != 0))
      {
        sub_1B1D7C2DC();
        sub_1B1D7C30C();
        v14 = v11 & 0xFFFFFFFFFFFFFF8;
        sub_1B1D7C31C();
        sub_1B1D7C2EC();
        if (v15 == v12)
        {
          goto LABEL_26;
        }
      }

      else
      {
        swift_unknownObjectRelease();
        if (v15 == v12)
        {
          goto LABEL_26;
        }
      }

      ++v13;
      if ((v11 & 0xC000000000000001) == 0)
      {
        goto LABEL_11;
      }
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

LABEL_26:

  if ((v57 & 0x8000000000000000) != 0 || (v57 & 0x4000000000000000) != 0)
  {
    v17 = sub_1B1D7C1FC();
  }

  else
  {
    v17 = *(v57 + 16);
  }

  if (v17 >= 2)
  {
    v18 = [v50 isRegistrationRequest];
    swift_unknownObjectRelease();
    a2 = v52;
    if (v18)
    {
      v57 = *&v55[8];
      v19 = v55[24];
      v58 = v55[24];
      *v52 = *&v55[8];
      *(v52 + 16) = v19;
      type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
      swift_storeEnumTagMultiPayload();
      type metadata accessor for ASAuthorizationUIContext.Message(0);
      goto LABEL_7;
    }

    v6 = *&v55[8];
    v57 = *&v55[8];
    v7 = v55[24];
    goto LABEL_4;
  }

  v57 = *&v55[8];
  v58 = v55[24];
  sub_1B1CF95A4(&v57, v54);
  v20 = [v49 userVisibleName];
  v48 = sub_1B1D7BE4C();
  v22 = v21;

  v53 = [v50 isCABLEAuthenticatorRequest];
  v23 = objc_opt_self();
  v24 = [v23 sharedManager];
  v25 = [v24 numberOfAutoFillProvidersEnabled];

  v26 = v25 > 1;
  v27 = v57;
  v28 = v58;
  if ([v50 isRegistrationRequest])
  {
    if (v56[18])
    {
      sub_1B1CF8E9C(v27, *(&v27 + 1));

      v29 = [v49 relyingPartyIdentifier];
      if (!v29)
      {
        swift_unknownObjectRelease();
        type metadata accessor for ASAuthorizationUIContext.Message(0);
        return swift_storeEnumTagMultiPayload();
      }

      v30 = v29;
      sub_1B1D7BE4C();

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775150, &qword_1B1D863C0);
      *v52 = *v56;
      sub_1B1D7C09C();
      swift_unknownObjectRelease();
      type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
    }

    else
    {
      v31 = v26;
      v32 = [v49 localizedCredentialProviderName];
      v33 = sub_1B1D7BE4C();
      v35 = v34;

      v36 = [v49 isExternal];
      swift_unknownObjectRelease();
      LOBYTE(v54[0]) = v28 & 1;
      *v52 = v27;
      *(v52 + 16) = v28 & 1;
      *(v52 + 24) = v48;
      *(v52 + 32) = v22;
      *(v52 + 40) = v53;
      *(v52 + 41) = v31;
      *(v52 + 48) = v33;
      *(v52 + 56) = v35;
      *(v52 + 64) = v36;
      type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
    }
  }

  else
  {
    if ((v56[18] & 1) == 0)
    {
      v37 = [v50 destinationSiteForCrossSiteAssertion];
      if (v37 || (v37 = [v50 proxiedOriginDeviceName]) != 0)
      {
        v38 = v37;
        v39 = sub_1B1D7BE4C();
        v41 = v40;

        [v49 isSharedCredential];
        swift_unknownObjectRelease();
        LOBYTE(v54[0]) = v28 & 1;
        *v52 = v27;
        *(v52 + 16) = v28 & 1;
        *(v52 + 24) = v48;
        *(v52 + 32) = v22;
        *(v52 + 40) = v53;
        *(v52 + 41) = v26;
        *(v52 + 48) = v39;
        *(v52 + 56) = v41;
        type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
        goto LABEL_49;
      }

      if (![v49 isSharedCredential])
      {
        v51 = v26;
        v42 = [v23 sharedManager];
        v43 = [v42 numberOfAutoFillProvidersEnabled];

        if (v43 < 2)
        {
          swift_unknownObjectRelease();
          v45 = 0;
          v47 = 0;
        }

        else
        {
          v44 = [v49 localizedCredentialProviderName];
          v45 = sub_1B1D7BE4C();
          v47 = v46;

          swift_unknownObjectRelease();
        }

        LOBYTE(v54[0]) = v28 & 1;
        *v52 = v27;
        *(v52 + 16) = v28 & 1;
        *(v52 + 24) = v48;
        *(v52 + 32) = v22;
        *(v52 + 40) = v53;
        *(v52 + 41) = v51;
        *(v52 + 48) = v45;
        *(v52 + 56) = v47;
        type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
        goto LABEL_49;
      }
    }

    swift_unknownObjectRelease();
    *v52 = v27;
    *(v52 + 16) = v28 & 1;
    *(v52 + 24) = v48;
    *(v52 + 32) = v22;
    *(v52 + 40) = v53;
    *(v52 + 41) = v26;
    type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
  }

LABEL_49:
  swift_storeEnumTagMultiPayload();
  type metadata accessor for ASAuthorizationUIContext.Message(0);
  return swift_storeEnumTagMultiPayload();
}

void sub_1B1CF6D3C(uint64_t a1@<X8>)
{
  if (*(v1 + 41))
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v3 = -4;
  }

  else
  {
    v4 = *v1;
    v5 = *(v1 + 50);
    if ([*v1 isRegistrationRequest] && (v5 & 1) != 0)
    {
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      v3 = 2;
    }

    else
    {
      v6 = sub_1B1D111FC();
      sub_1B1D11EF8(v6, &v8);

      v7 = v8;
      if (v8 == 3)
      {
        if ([v4 isRegistrationRequest])
        {
          *a1 = 0xD000000000000015;
          *(a1 + 8) = 0x80000001B1D9AC20;
        }

        else
        {
          *a1 = xmmword_1B1D85E80;
        }

        *(a1 + 16) = 0;
        v3 = 64;
      }

      else
      {
        *(a1 + 8) = 0;
        *(a1 + 16) = 0;
        *a1 = v7;
        v3 = -64;
      }
    }
  }

  *(a1 + 24) = v3;
}

BOOL static ASAuthorizationUIContext.PasskeyTitle.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 <= 1)
  {
    if (!v2)
    {
      if (v3)
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        v4 = *(a2 + 8);
      }

      return (v4 & 1) != 0;
    }

    if (v3 == 1)
    {
      v7 = *(a2 + 8);
    }

    else
    {
      v7 = 0;
    }

    return (v7 & 1) != 0;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      v6 = *(a2 + 8);
    }

    else
    {
      v6 = 0;
    }

    return (v6 & 1) != 0;
  }

  if (v3 > 2)
  {
    v8 = *(a2 + 8);
  }

  else
  {
    v8 = 0;
  }

  return (v8 & 1) != 0;
}

BOOL sub_1B1CF6F10(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(a1 + 8) != 1)
  {
    if ((*(a2 + 8) & 1) == 0)
    {
      return v2 == v3;
    }

    return 0;
  }

  if (v2 > 1)
  {
    if (v2 != 2)
    {
      if (v3 > 2)
      {
        v7 = *(a2 + 8);
      }

      else
      {
        v7 = 0;
      }

      return v7 == 1;
    }

    v4 = v3 == 2;
  }

  else if (v2)
  {
    v4 = v3 == 1;
  }

  else
  {
    v4 = v3 == 0;
  }

  if (v4)
  {
    v6 = *(a2 + 8);
  }

  else
  {
    v6 = 0;
  }

  return (v6 & 1) != 0;
}

id sub_1B1CF6F88(id *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = [*a1 externalCredentialProviderName];
  if (v4)
  {
  }

  else if (!*(a2 + 44) || (*(a2 + 42) & 1) == 0 && ([*a2 isRegistrationRequest] & 1) != 0 || (*(a2 + 45) & 1) == 0)
  {
    result = [v3 relyingPartyIdentifier];
    if (!result)
    {
      return result;
    }

    v6 = result;
    v7 = sub_1B1D7BE4C();
    v9 = v8;

    if (v7 == 0x6F632E656C707061 && v9 == 0xE90000000000006DLL)
    {
    }

    else
    {
      v11 = sub_1B1D7C50C();

      if ((v11 & 1) == 0)
      {
        return 0;
      }
    }
  }

  return ((*(a2 + 50) & 1) == 0 || ([v3 isExternal] & 1) == 0);
}

uint64_t ASAuthorizationUIContext.PasskeyMessageParameters.service.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  return sub_1B1CEF6D4(v2, v3);
}

uint64_t ASAuthorizationUIContext.PasskeyMessageParameters.service.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B1CF8E9C(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ASAuthorizationUIContext.PasskeyMessageParameters.username.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t ASAuthorizationUIContext.PasskeyMessageParameters.username.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

__n128 ASAuthorizationUIContext.PasskeyMessageParameters.init(service:username:isCABLEAuthenticatorRequest:hasMultipleCredentialProvidersEnabled:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, unsigned __int8 a4@<W3>, unsigned __int8 a5@<W4>, __n128 *a6@<X8>)
{
  v6 = a1[1].n128_u8[0];
  result = *a1;
  *a6 = *a1;
  a6[1].n128_u8[0] = v6;
  a6[1].n128_u64[1] = a2;
  a6[2].n128_u64[0] = a3;
  a6[2].n128_u8[8] = a4;
  a6[2].n128_u8[9] = a5;
  return result;
}

void *sub_1B1CF725C@<X0>(uint64_t a2@<X8>)
{
  v4 = 65539;
  v5 = *v2;
  v22 = *(v2 + 32);
  v6 = *(v2 + 44);
  v23 = *(v2 + 49);
  v7 = *(v2 + 50);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    v10 = 0;
    goto LABEL_27;
  }

  v9 = result;
  swift_unknownObjectRetain();
  if ([v5 isRegistrationRequest])
  {
    if (v7)
    {
      v10 = 0;
    }

    else
    {
      v10 = 8;
    }

    v11 = 3;
  }

  else
  {
    v12 = ASAuthorizationUIContext.loginChoicesToShow.getter();
    if (v12 >> 62)
    {
      v13 = sub_1B1D7C1FC();
    }

    else
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v10 = v13 > 1;
    v11 = 2;
  }

  if ([v9 isExternal])
  {
    result = swift_unknownObjectRelease();
    v4 = v11 | 0x10000;
    goto LABEL_27;
  }

  v14 = [v5 platformUserVerificationPreference];
  v15 = sub_1B1D7BE4C();
  v17 = v16;

  if (v15 != sub_1B1D7BE4C() || v17 != v18)
  {
    v20 = sub_1B1D7C50C();

    result = swift_unknownObjectRelease();
    if ((v20 | v23))
    {
      v21 = 256;
    }

    else
    {
      v21 = 0;
    }

    if (v6)
    {
      goto LABEL_21;
    }

LABEL_26:
    v4 = 0x20000;
    v10 = v6;
    goto LABEL_27;
  }

  result = swift_unknownObjectRelease();
  v21 = 256;
  if (!v6)
  {
    goto LABEL_26;
  }

LABEL_21:
  if (v6 == 1 || v22 != 1)
  {
    v4 = v21 | v11 | 0x10000;
  }

  else
  {
    v4 = v11 + 66304;
  }

LABEL_27:
  *a2 = v10;
  *(a2 + 8) = v4;
  *(a2 + 10) = BYTE2(v4);
  return result;
}

uint64_t sub_1B1CF74C8@<X0>(uint64_t a1@<X8>)
{
  v3 = (v1 + 1);
  v4 = *v1;
  v5 = [*v1 loginChoices];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
  v6 = sub_1B1D7BEEC();

  if (v6 >> 62)
  {
    goto LABEL_21;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (result)
  {
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1B273B2E0](0, v6);
      }

      else
      {
        if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          return result;
        }

        swift_unknownObjectRetain();
      }

      sub_1B1D7B99C();
      if (!swift_dynamicCastClass())
      {
        goto LABEL_18;
      }

      v8 = sub_1B1D7B98C();
      v9 = sub_1B1D7B86C();

      v6 = *(v9 + 16);
      v10 = sub_1B1CF9600();
      v11 = MEMORY[0x1B273AFD0](v6, &type metadata for ASAuthorizationUIContext.CredentialProvider, v10);
      v24 = v11;
      v12 = *(v9 + 16);
      if (!v12)
      {
        break;
      }

      v20 = v4;
      v13 = 0;
      v4 = (v9 + 40);
      while (v13 < *(v9 + 16))
      {
        ++v13;
        v14 = *v4;
        if (*v4)
        {
          v15 = *(v4 - 1);
        }

        else
        {
          v15 = 0;
        }

        v6 = &v24;
        sub_1B1D1E4E0(&v21, v15, v14);
        sub_1B1CED598(v21, v22);
        v4 += 2;
        if (v12 == v13)
        {
          v16 = v24;
          v4 = v20;
          goto LABEL_17;
        }
      }

      __break(1u);
LABEL_21:
      result = sub_1B1D7C1FC();
      if (!result)
      {
        goto LABEL_22;
      }
    }

    v16 = v11;
LABEL_17:

    v21 = v4;
    v17 = v3[1];
    v22 = *v3;
    v23[0] = v17;
    *(v23 + 11) = *(v3 + 27);
    sub_1B1D11EF8(v16, &v24);

    v18 = v24;
    if (v24 == 3)
    {
LABEL_18:
      result = swift_unknownObjectRelease();
      goto LABEL_23;
    }

    result = swift_unknownObjectRelease();
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = v18;
    v19 = -64;
  }

  else
  {
LABEL_22:

LABEL_23:
    *a1 = 0xD000000000000015;
    *(a1 + 8) = 0x80000001B1D9AC20;
    *(a1 + 16) = 0;
    v19 = 64;
  }

  *(a1 + 24) = v19;
  return result;
}

uint64_t sub_1B1CF7724@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *v2;
  v5 = v2[1];
  v7 = v3[2];
  v8 = *(v3 + 24);
  v9 = v3[4];
  sub_1B1D7B99C();
  if (!swift_dynamicCastClass())
  {
    type metadata accessor for ASAuthorizationUIContext.Message(0);
LABEL_21:

    return swift_storeEnumTagMultiPayload();
  }

  v33 = v6;
  v34 = v9;
  v35 = v5;
  swift_unknownObjectRetain();
  v10 = sub_1B1D7B98C();
  v11 = sub_1B1D7B86C();

  v12 = *(v11 + 16);
  v13 = sub_1B1CF9600();
  result = MEMORY[0x1B273AFD0](v12, &type metadata for ASAuthorizationUIContext.CredentialProvider, v13);
  v44 = result;
  v15 = *(v11 + 16);
  v36 = v8;
  if (!v15)
  {
    v20 = result;
LABEL_12:

    v21 = v34;
    v37 = v33;
    v38 = v35;
    v39 = v7;
    v40 = v8;
    *v41 = *(v3 + 25);
    *&v41[3] = *(v3 + 7);
    v22 = v3[5];
    v42 = v34;
    v43[0] = v22;
    *(v43 + 7) = *(v3 + 47);
    sub_1B1D11EF8(v20, &v44);
    if (v44 == 3)
    {
      v21 = 0;
    }

    if (*(v20 + 16) == 1)
    {
      v23 = sub_1B1CF620C(v20);
      v25 = v24;

      v26 = sub_1B1D7B98C();
      v27 = sub_1B1D7B88C();
      v29 = v28;
      if (v25 >= 3)
      {
        sub_1B1CED588(v23, v25);
      }

      sub_1B1CEF6D4(v35, v7);
      v31 = sub_1B1D7B97C();
      swift_unknownObjectRelease();
      *a2 = v35;
      *(a2 + 8) = v7;
      *(a2 + 16) = v36 & 1;
      *(a2 + 24) = v27;
      *(a2 + 32) = v29;
      *(a2 + 40) = v21;
      *(a2 + 48) = v31;
      type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
    }

    else
    {

      sub_1B1CEF6D4(v35, v7);
      v30 = sub_1B1D7B97C();
      swift_unknownObjectRelease();
      *a2 = v35;
      *(a2 + 8) = v7;
      *(a2 + 16) = v8 & 1;
      *(a2 + 24) = v21;
      *(a2 + 32) = v30;
      type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
    }

    swift_storeEnumTagMultiPayload();
    type metadata accessor for ASAuthorizationUIContext.Message(0);
    goto LABEL_21;
  }

  v32 = v7;
  v16 = 0;
  v17 = (v11 + 40);
  while (v16 < *(v11 + 16))
  {
    ++v16;
    v18 = *v17;
    if (*v17)
    {
      v19 = *(v17 - 1);
    }

    else
    {
      v19 = 0;
    }

    sub_1B1D1E4E0(&v37, v19, v18);
    result = sub_1B1CED598(v37, v38);
    v17 += 2;
    if (v15 == v16)
    {
      v20 = v44;
      v7 = v32;
      v8 = v36;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t (*sub_1B1CF7A18(uint64_t (*result)(), unint64_t a2, uint64_t a3))()
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1B273B2E0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = swift_unknownObjectRetain();
LABEL_5:
    *v3 = v4;
    return sub_1B1CF7A98;
  }

  __break(1u);
  return result;
}

uint64_t _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v16 = *(a1 + 41);
  v7 = *a2;
  v8 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  v12 = *(a2 + 40);
  v13 = *(a2 + 41);
  v20 = *a1;
  v21 = v2;
  v22 = v3;
  v17 = v7;
  v18 = v8;
  v19 = v9;
  sub_1B1CEF6D4(v20, v2);
  sub_1B1CEF6D4(v7, v8);
  LOBYTE(v7) = _s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v20, &v17);
  sub_1B1CF8E9C(v17, v18);
  sub_1B1CF8E9C(v20, v21);
  if ((v7 & 1) == 0)
  {
    return 0;
  }

  if (v4 == v10 && v5 == v11)
  {
    if (v6 != v12)
    {
      return 0;
    }

    return v16 ^ v13 ^ 1u;
  }

  v15 = sub_1B1D7C50C();
  result = 0;
  if ((v15 & 1) != 0 && ((v6 ^ v12) & 1) == 0)
  {
    return v16 ^ v13 ^ 1u;
  }

  return result;
}

uint64_t _s22AuthenticationServices24ASAuthorizationUIContextV14PasskeyMessageO2eeoiySbAE_AEtFZ_0(uint64_t *a1, char *a2)
{
  v278 = a1;
  v279 = a2;
  v2 = sub_1B1D7C08C();
  v276 = *(v2 - 1);
  v277 = v2;
  v3 = MEMORY[0x1EEE9AC00](v2);
  v267 = &v267 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v268 = &v267 - v5;
  v6 = type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v275 = &v267 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v274 = &v267 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v272 = &v267 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v270 = &v267 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v273 = &v267 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v271 = &v267 - v18;
  v19 = MEMORY[0x1EEE9AC00](v17);
  v269 = &v267 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v267 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v267 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v267 - v28;
  v30 = MEMORY[0x1EEE9AC00](v27);
  v32 = &v267 - v31;
  v33 = MEMORY[0x1EEE9AC00](v30);
  v35 = &v267 - v34;
  v36 = MEMORY[0x1EEE9AC00](v33);
  v38 = &v267 - v37;
  MEMORY[0x1EEE9AC00](v36);
  v40 = &v267 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775160, &qword_1B1D863C8);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v44 = &v267 - v43;
  v45 = &v267 + *(v42 + 56) - v43;
  sub_1B1CF96BC(v278, &v267 - v43);
  v278 = v45;
  sub_1B1CF96BC(v279, v45);
  v279 = v44;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v54 = v279;
      sub_1B1CF96BC(v279, v38);
      v57 = *v38;
      v56 = *(v38 + 1);
      v58 = v38[16];
      v59 = v278;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        goto LABEL_5;
      }

      goto LABEL_35;
    case 2u:
      v54 = v279;
      sub_1B1CF96BC(v279, v35);
      v121 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775150, &qword_1B1D863C0) + 48);
      v122 = v278;
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        (*(v276 + 8))(&v35[v121], v277);
        goto LABEL_68;
      }

      v123 = *v35;
      v124 = *v122;
      v126 = v276;
      v125 = v277;
      v127 = *(v276 + 32);
      v128 = &v35[v121];
      v129 = v268;
      v127(v268, v128, v277);
      v130 = v122 + v121;
      v131 = v267;
      v127(v267, v130, v125);
      if (v123 == v124)
      {
        sub_1B1CF9830();
        sub_1B1D7BEAC();
        sub_1B1D7BEAC();
        if (v287 == v280 && v288 == v281)
        {
          v132 = *(v126 + 8);
          v132(v131, v125);
          v132(v268, v125);

LABEL_87:
          v120 = v54;
LABEL_98:
          sub_1B1CF9788(v120);
          v63 = 1;
          return v63 & 1;
        }

        v261 = sub_1B1D7C50C();
        v262 = *(v126 + 8);
        v262(v131, v125);
        v262(v268, v125);

        if (v261)
        {
          goto LABEL_87;
        }
      }

      else
      {
        v256 = *(v126 + 8);
        v256(v131, v125);
        v256(v129, v125);
      }

      v257 = v54;
      goto LABEL_100;
    case 3u:
      v54 = v279;
      sub_1B1CF96BC(v279, v32);
      v134 = *v32;
      v133 = *(v32 + 1);
      v135 = v32[16];
      v136 = *(v32 + 4);
      v138 = *(v32 + 6);
      v137 = *(v32 + 7);
      v139 = v278;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_65;
      }

      v276 = v138;
      v277 = v137;
      v140 = v32[41];
      v141 = v32[40];
      v142 = *(v32 + 3);
      v143 = *v139;
      v144 = v139[1];
      v145 = *(v139 + 16);
      v146 = v139[3];
      v147 = v139[4];
      v148 = *(v139 + 40);
      v149 = *(v139 + 41);
      v150 = v139[7];
      v275 = v139[6];
      v287 = v134;
      v288 = v133;
      v289 = v135;
      v290 = v142;
      v291 = v136;
      v292 = v141;
      v293 = v140;
      v280 = v143;
      v281 = v144;
      v282 = v145;
      v283 = v146;
      v284 = v147;
      v285 = v148;
      v286 = v149;
      v151 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v287, &v280);
      sub_1B1CF8E9C(v143, v144);

      sub_1B1CF8E9C(v134, v133);

      if ((v151 & 1) == 0)
      {
        goto LABEL_79;
      }

      v95 = v279;
      if (!v277)
      {
        if (!v150)
        {
          goto LABEL_97;
        }

        goto LABEL_91;
      }

      if (!v150)
      {
LABEL_91:

        goto LABEL_99;
      }

      if (v276 == v275 && v277 == v150)
      {
LABEL_54:

LABEL_97:
        v120 = v95;
        goto LABEL_98;
      }

LABEL_96:
      v265 = sub_1B1D7C50C();

      if (v265)
      {
        goto LABEL_97;
      }

LABEL_99:
      v257 = v95;
LABEL_100:
      sub_1B1CF9788(v257);
LABEL_101:
      v63 = 0;
      return v63 & 1;
    case 4u:
      v54 = v279;
      sub_1B1CF96BC(v279, v29);
      v64 = *v29;
      v65 = *(v29 + 1);
      v66 = v29[16];
      v67 = *(v29 + 4);
      v68 = v278;
      if (swift_getEnumCaseMultiPayload() == 4)
      {
        v69 = v29[41];
        v70 = v29[40];
        v71 = *(v29 + 3);
        v72 = v67;
        v73 = *v68;
        v74 = v68[1];
        v75 = *(v68 + 16);
        v76 = v68[3];
        v77 = v68[4];
        v78 = *(v68 + 40);
        v79 = *(v68 + 41);
        v287 = v64;
        v288 = v65;
        v289 = v66;
        v290 = v71;
        v291 = v72;
        v292 = v70;
        v293 = v69;
        v280 = v73;
        v281 = v74;
        v282 = v75;
        v283 = v76;
        v284 = v77;
        v285 = v78;
        v286 = v79;
        v63 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v287, &v280);
        sub_1B1CF8E9C(v73, v74);

        sub_1B1CF8E9C(v64, v65);
        goto LABEL_32;
      }

      sub_1B1CF8E9C(v64, v65);
      goto LABEL_67;
    case 5u:
      v54 = v279;
      sub_1B1CF96BC(v279, v26);
      v100 = *v26;
      v99 = *(v26 + 1);
      v168 = v26[16];
      v169 = *(v26 + 4);
      v171 = *(v26 + 6);
      v170 = *(v26 + 7);
      v172 = v278;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_64;
      }

      v277 = v171;
      v173 = v170;
      v174 = v26[41];
      v175 = v26[40];
      v176 = *(v26 + 3);
      v177 = v172;
      v178 = *v172;
      v179 = v172[1];
      v180 = *(v172 + 16);
      v181 = v172[3];
      v182 = v172[4];
      v183 = *(v177 + 40);
      v184 = *(v177 + 41);
      v186 = v177[6];
      v185 = v177[7];
      v276 = v186;
      v278 = v185;
      v287 = v100;
      v288 = v99;
      v289 = v168;
      v290 = v176;
      v291 = v169;
      v292 = v175;
      v293 = v174;
      v280 = v178;
      v281 = v179;
      v282 = v180;
      v283 = v181;
      v284 = v182;
      v285 = v183;
      v286 = v184;
      v187 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v287, &v280);
      sub_1B1CF8E9C(v178, v179);

      sub_1B1CF8E9C(v100, v99);

      if (v187)
      {
        goto LABEL_38;
      }

      goto LABEL_79;
    case 6u:
      v54 = v279;
      sub_1B1CF96BC(v279, v23);
      v100 = *v23;
      v99 = *(v23 + 1);
      v200 = v23[16];
      v201 = *(v23 + 4);
      v203 = *(v23 + 6);
      v202 = *(v23 + 7);
      v204 = v278;
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_64;
      }

      v277 = v203;
      v173 = v202;
      v205 = v23[41];
      v206 = v23[40];
      v207 = *(v23 + 3);
      v208 = v204;
      v209 = *v204;
      v210 = v204[1];
      v211 = *(v204 + 16);
      v212 = v204[3];
      v213 = v204[4];
      v214 = *(v208 + 40);
      v215 = *(v208 + 41);
      v217 = v208[6];
      v216 = v208[7];
      v276 = v217;
      v278 = v216;
      v287 = v100;
      v288 = v99;
      v289 = v200;
      v290 = v207;
      v291 = v201;
      v292 = v206;
      v293 = v205;
      v280 = v209;
      v281 = v210;
      v282 = v211;
      v283 = v212;
      v284 = v213;
      v285 = v214;
      v286 = v215;
      v218 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v287, &v280);
      sub_1B1CF8E9C(v209, v210);

      sub_1B1CF8E9C(v100, v99);

      if ((v218 & 1) == 0)
      {
        goto LABEL_79;
      }

LABEL_38:
      v95 = v279;
      if (v277 == v276 && v173 == v278)
      {
        goto LABEL_54;
      }

      goto LABEL_96;
    case 7u:
      v54 = v279;
      v152 = v269;
      sub_1B1CF96BC(v279, v269);
      v154 = *v152;
      v153 = *(v152 + 8);
      v155 = *(v152 + 16);
      v156 = *(v152 + 32);
      v157 = v278;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        v240 = v154;
        v241 = v153;
        goto LABEL_66;
      }

      v158 = *(v152 + 41);
      v159 = *(v152 + 40);
      v160 = *(v152 + 24);
      v161 = *v157;
      v162 = v157[1];
      v163 = *(v157 + 16);
      v164 = v157[3];
      v165 = v157[4];
      v166 = *(v157 + 40);
      v167 = *(v157 + 41);
      v287 = v154;
      v288 = v153;
      v289 = v155;
      v290 = v160;
      v291 = v156;
      v292 = v159;
      v293 = v158;
      v280 = v161;
      v281 = v162;
      v282 = v163;
      v283 = v164;
      v284 = v165;
      v285 = v166;
      v286 = v167;
      v63 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v287, &v280);
      sub_1B1CF8E9C(v161, v162);

      sub_1B1CF8E9C(v154, v153);
LABEL_32:

      goto LABEL_33;
    case 8u:
      v54 = v279;
      v220 = v271;
      sub_1B1CF96BC(v279, v271);
      v134 = *v220;
      v133 = *(v220 + 8);
      v221 = *(v220 + 16);
      v222 = *(v220 + 32);
      v224 = *(v220 + 48);
      v223 = *(v220 + 56);
      v225 = v278;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
LABEL_65:

        v240 = v134;
        v241 = v133;
        goto LABEL_66;
      }

      v277 = v224;
      v226 = *(v220 + 41);
      v227 = *(v220 + 40);
      v228 = *(v220 + 24);
      v229 = v225;
      v230 = *v225;
      v231 = v225[1];
      v232 = *(v225 + 16);
      v233 = v225[3];
      v234 = v225[4];
      v235 = *(v229 + 40);
      v236 = *(v229 + 41);
      v238 = v229[6];
      v237 = v229[7];
      v276 = v238;
      v278 = v237;
      v287 = v134;
      v288 = v133;
      v289 = v221;
      v290 = v228;
      v291 = v222;
      v292 = v227;
      v293 = v226;
      v280 = v230;
      v281 = v231;
      v282 = v232;
      v283 = v233;
      v284 = v234;
      v285 = v235;
      v286 = v236;
      v239 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v287, &v280);
      sub_1B1CF8E9C(v230, v231);

      sub_1B1CF8E9C(v134, v133);

      if ((v239 & 1) == 0)
      {
        goto LABEL_79;
      }

      v95 = v279;
      if (v277 == v276 && v223 == v278)
      {
        goto LABEL_54;
      }

      goto LABEL_96;
    case 9u:
      v54 = v279;
      v98 = v273;
      sub_1B1CF96BC(v279, v273);
      v100 = *v98;
      v99 = *(v98 + 8);
      v101 = *(v98 + 16);
      v102 = *(v98 + 32);
      v104 = *(v98 + 48);
      v103 = *(v98 + 56);
      v105 = v278;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
LABEL_64:

        v240 = v100;
        v241 = v99;
LABEL_66:
        sub_1B1CF8E9C(v240, v241);
LABEL_67:

        goto LABEL_68;
      }

      v277 = v104;
      v106 = v103;
      v107 = *(v98 + 41);
      v108 = *(v98 + 40);
      v109 = *(v98 + 24);
      v110 = *v105;
      v111 = v105[1];
      v112 = *(v105 + 16);
      v113 = v105[3];
      v114 = v105[4];
      v115 = *(v105 + 40);
      v116 = *(v105 + 41);
      v117 = v105[7];
      v276 = v105[6];
      v278 = v117;
      v287 = v100;
      v288 = v99;
      v289 = v101;
      v290 = v109;
      v291 = v102;
      v292 = v108;
      v293 = v107;
      v280 = v110;
      v281 = v111;
      v282 = v112;
      v283 = v113;
      v284 = v114;
      v285 = v115;
      v286 = v116;
      v118 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v287, &v280);
      sub_1B1CF8E9C(v110, v111);

      sub_1B1CF8E9C(v100, v99);

      if ((v118 & 1) == 0)
      {
        goto LABEL_79;
      }

      v119 = v279;
      if (v277 == v276 && v106 == v278)
      {

        v120 = v119;
        goto LABEL_98;
      }

      v260 = sub_1B1D7C50C();

      if (v260)
      {
        v120 = v119;
        goto LABEL_98;
      }

      v257 = v119;
      goto LABEL_100;
    case 0xAu:
      v54 = v279;
      v219 = v270;
      sub_1B1CF96BC(v279, v270);
      v57 = *v219;
      v56 = *(v219 + 8);
      v58 = *(v219 + 16);
      v59 = v278;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_35;
      }

      goto LABEL_5;
    case 0xBu:
      v54 = v279;
      v55 = v272;
      sub_1B1CF96BC(v279, v272);
      v57 = *v55;
      v56 = *(v55 + 8);
      v58 = *(v55 + 16);
      v59 = v278;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
LABEL_35:
        sub_1B1CF8E9C(v57, v56);
        goto LABEL_68;
      }

LABEL_5:
      v60 = *v59;
      v61 = v59[1];
      v62 = *(v59 + 16);
      v287 = v57;
      v288 = v56;
      v289 = v58;
      v280 = v60;
      v281 = v61;
      v282 = v62;
      v63 = _s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v287, &v280);
      sub_1B1CF8E9C(v60, v61);
      sub_1B1CF8E9C(v57, v56);
LABEL_33:
      sub_1B1CF9788(v54);
      return v63 & 1;
    case 0xCu:
      v54 = v279;
      v80 = v274;
      sub_1B1CF96BC(v279, v274);
      v82 = *v80;
      v81 = *(v80 + 8);
      v83 = *(v80 + 16);
      v85 = *(v80 + 24);
      v84 = *(v80 + 32);
      v87 = *(v80 + 40);
      v86 = *(v80 + 48);
      v88 = v278;
      if (swift_getEnumCaseMultiPayload() != 12)
      {

        sub_1B1CF8E9C(v82, v81);
        goto LABEL_68;
      }

      v275 = v87;
      v277 = v86;
      v90 = *v88;
      v89 = v88[1];
      v91 = *(v88 + 16);
      v92 = v88[3];
      v276 = v88[4];
      v93 = v88[6];
      v274 = v88[5];
      v278 = v93;
      v287 = v82;
      v288 = v81;
      v289 = v83;
      v280 = v90;
      v281 = v89;
      v282 = v91;
      v94 = _s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v287, &v280);
      sub_1B1CF8E9C(v90, v89);
      sub_1B1CF8E9C(v82, v81);
      if ((v94 & 1) == 0)
      {

        goto LABEL_80;
      }

      v96 = v278;
      v95 = v279;
      if (v85 == v92 && v84 == v276)
      {

        v97 = v275;
      }

      else
      {
        v258 = sub_1B1D7C50C();

        v97 = v275;
        if ((v258 & 1) == 0)
        {
          goto LABEL_89;
        }
      }

      if (v97 == v274)
      {
        sub_1B1CF97E4();
        v259 = v277;
        v63 = sub_1B1D7C14C();

        sub_1B1CF9788(v95);
        return v63 & 1;
      }

LABEL_89:

      goto LABEL_99;
    case 0xDu:
      v188 = v275;
      sub_1B1CF96BC(v279, v275);
      v189 = *v188;
      v190 = *(v188 + 8);
      v191 = *(v188 + 16);
      v193 = *(v188 + 24);
      v192 = *(v188 + 32);
      v194 = v278;
      if (swift_getEnumCaseMultiPayload() != 13)
      {

        sub_1B1CF8E9C(v189, v190);
        goto LABEL_63;
      }

      v195 = *v194;
      v196 = v194[1];
      v197 = *(v194 + 16);
      v198 = v194[4];
      v277 = v194[3];
      v287 = v189;
      v288 = v190;
      v289 = v191;
      v280 = v195;
      v281 = v196;
      v282 = v197;
      v199 = _s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v287, &v280);
      sub_1B1CF8E9C(v195, v196);
      sub_1B1CF8E9C(v189, v190);
      if ((v199 & 1) != 0 && v193 == v277)
      {
        sub_1B1CF97E4();
        v63 = sub_1B1D7C14C();

        sub_1B1CF9788(v279);
        return v63 & 1;
      }

      goto LABEL_80;
    default:
      sub_1B1CF96BC(v279, v40);
      v47 = *v40;
      v46 = *(v40 + 1);
      v48 = v40[16];
      v49 = *(v40 + 4);
      v51 = *(v40 + 6);
      v50 = *(v40 + 7);
      v52 = v40[64];
      v53 = v278;
      if (swift_getEnumCaseMultiPayload())
      {

        sub_1B1CF8E9C(v47, v46);

LABEL_63:
        v54 = v279;
LABEL_68:
        sub_1B1CF9720(v54);
        goto LABEL_101;
      }

      v275 = v51;
      v242 = v50;
      LODWORD(v276) = v52;
      v243 = v40[41];
      v244 = v40[40];
      v245 = *(v40 + 3);
      v246 = *v53;
      v247 = v53[1];
      v248 = *(v53 + 16);
      v249 = v53[3];
      v250 = v53[4];
      v251 = *(v53 + 40);
      v252 = *(v53 + 41);
      v253 = v53[7];
      v274 = v53[6];
      v277 = v253;
      LODWORD(v278) = *(v53 + 64);
      v287 = v47;
      v288 = v46;
      v289 = v48;
      v290 = v245;
      v291 = v49;
      v292 = v244;
      v293 = v243;
      v280 = v246;
      v281 = v247;
      v282 = v248;
      v283 = v249;
      v284 = v250;
      v285 = v251;
      v286 = v252;
      v254 = _s22AuthenticationServices24ASAuthorizationUIContextV24PasskeyMessageParametersV2eeoiySbAE_AEtFZ_0(&v287, &v280);
      sub_1B1CF8E9C(v246, v247);

      sub_1B1CF8E9C(v47, v46);

      if ((v254 & 1) == 0)
      {
LABEL_79:

LABEL_80:
        v257 = v279;
        goto LABEL_100;
      }

      v95 = v279;
      if (v275 == v274 && v242 == v277)
      {

        v255 = v276;
      }

      else
      {
        v263 = sub_1B1D7C50C();

        v255 = v276;
        if ((v263 & 1) == 0)
        {
          goto LABEL_99;
        }
      }

      v264 = v255 ^ v278;
      sub_1B1CF9788(v95);
      v63 = v264 ^ 1;
      return v63 & 1;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t _s12PasskeyTitleOwet(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t _s12PasskeyTitleOwst(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1B1CF8F08(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1CF8F24(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(uint64_t a1)
{
  result = qword_1EB7750E8;
  if (!qword_1EB7750E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1B1CF8FF0(uint64_t a1)
{
  sub_1B1CF912C();
  if (v1 <= 0x3F)
  {
    sub_1B1CF9198(319);
    if (v2 <= 0x3F)
    {
      sub_1B1CF920C(319);
      if (v3 <= 0x3F)
      {
        sub_1B1CF9284();
        if (v4 <= 0x3F)
        {
          sub_1B1CF92B4(319, &qword_1EB775120, "passkeyParameters externalSite ");
          if (v5 <= 0x3F)
          {
            sub_1B1CF92B4(319, &qword_1EB775128, "passkeyParameters originDeviceName ");
            if (v6 <= 0x3F)
            {
              sub_1B1CF9314();
              if (v7 <= 0x3F)
              {
                sub_1B1CF9344(319);
                if (v8 <= 0x3F)
                {
                  sub_1B1CF9464(319);
                  if (v9 <= 0x3F)
                  {
                    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_1B1CF912C()
{
  if (!qword_1EB7750F8)
  {
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB7750F8);
    }
  }
}

void sub_1B1CF9198(uint64_t a1)
{
  if (!qword_1EB775100)
  {
    type metadata accessor for LABiometryType(255);
    sub_1B1D7C08C();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB775100);
    }
  }
}

void sub_1B1CF920C(uint64_t a1)
{
  if (!qword_1EB775108)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB775110, &qword_1B1D862E0);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB775108);
    }
  }
}

ValueMetadata *sub_1B1CF9284()
{
  result = qword_1EB775118;
  if (!qword_1EB775118)
  {
    result = &type metadata for ASAuthorizationUIContext.PasskeyMessageParameters;
    atomic_store(&type metadata for ASAuthorizationUIContext.PasskeyMessageParameters, &qword_1EB775118);
  }

  return result;
}

void sub_1B1CF92B4(uint64_t a1, unint64_t *a2, uint64_t a3)
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

ValueMetadata *sub_1B1CF9314()
{
  result = qword_1EB775130;
  if (!qword_1EB775130)
  {
    result = &type metadata for ASAuthorizationUIContext.Service;
    atomic_store(&type metadata for ASAuthorizationUIContext.Service, &qword_1EB775130);
  }

  return result;
}

void sub_1B1CF9344(uint64_t a1)
{
  if (!qword_1EB775138)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for LABiometryType(255);
    sub_1B1D7B8FC();
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_1EB775138);
    }
  }
}

void sub_1B1CF9464(uint64_t a1)
{
  if (!qword_1EB775140)
  {
    type metadata accessor for LABiometryType(255);
    sub_1B1D7B8FC();
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB775140);
    }
  }
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1B1CF9500(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 42))
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

uint64_t sub_1B1CF9548(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 42) = 1;
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

    *(result + 42) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1B1CF9600()
{
  result = qword_1EB775158;
  if (!qword_1EB775158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB775158);
  }

  return result;
}

uint64_t sub_1B1CF9654(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B1CF96A8(uint64_t a1, unint64_t a2)
{
  if (a2 >= 2)
  {
  }

  return result;
}

uint64_t sub_1B1CF96BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1B1CF9720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775160, &qword_1B1D863C8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1B1CF9788(uint64_t a1)
{
  v2 = type metadata accessor for ASAuthorizationUIContext.PasskeyMessage(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1B1CF97E4()
{
  result = qword_1EB775168;
  if (!qword_1EB775168)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB775168);
  }

  return result;
}

unint64_t sub_1B1CF9830()
{
  result = qword_1EB775170[0];
  if (!qword_1EB775170[0])
  {
    sub_1B1D7C08C();
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB775170);
  }

  return result;
}

uint64_t sub_1B1CF9888@<X0>(uint64_t a2@<X8>)
{
  v4 = sub_1B1D7B65C();
  v81 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v78 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v78 - v8;
  v11 = *v2;
  v10 = *(v2 + 8);
  v12 = *(v2 + 16);
  v13 = *(v2 + 24);
  v89 = v13;
  objc_opt_self();
  v14 = swift_dynamicCastObjCClass();
  if (v14)
  {
    v79 = v4;
    v80 = v14;
    v84 = v11;
    v85 = v10;
    v82 = v10;
    v86 = v12;
    v87 = v13;
    *v88 = *(v2 + 25);
    *&v88[10] = *(v2 + 35);
    swift_unknownObjectRetain();
    v15 = ASAuthorizationUIContext.loginChoicesToShow.getter();
    v83 = v12;
    if (v15 >> 62)
    {
      v16 = sub_1B1D7C1FC();
    }

    else
    {
      v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v17 = v11;
    if (v16 == 1)
    {
      v18 = [objc_opt_self() sharedManager];
      v19 = [v18 numberOfAutoFillProvidersEnabled];

      if (v19 < 2)
      {
        v25 = 0;
        v27 = 0;
        v38 = v82;
        v20 = v80;
      }

      else
      {
        v20 = v80;
        v21 = [v80 externalCredentialIdentity];
        if (v21 && (v22 = v21, v23 = [v21 owningExtensionState], v22, v23) && (v24 = objc_msgSend(v23, sel_localizedDisplayName), v23, v24))
        {
          v25 = sub_1B1D7BE4C();
          v27 = v26;
        }

        else
        {
          sub_1B1D7B64C();
          sub_1B1D7B64C();
          v39 = sub_1B1D7B62C();
          v27 = v40;
          v41 = *(v81 + 8);
          v42 = v7;
          v25 = v39;
          v43 = v79;
          v41(v42, v79);
          v41(v9, v43);
        }

        v38 = v82;
      }

      v44 = [v17 proxiedOriginDeviceName];
      if (v44)
      {
        v45 = v44;
        v46 = sub_1B1D7BE4C();
        v48 = v47;

        if ([v20 isSharedCredential] && (v49 = objc_msgSend(v20, sel_groupName)) != 0)
        {
          v50 = v49;

          v51 = sub_1B1D7BE4C();
          v53 = v52;

          swift_unknownObjectRelease();
          LOBYTE(v50) = v89;
          LOBYTE(v84) = v89;
          v54 = v83;
          *a2 = v38;
          *(a2 + 8) = v54;
          *(a2 + 16) = v50;
          *(a2 + 23) = 0x80;
          *(a2 + 21) = 0;
          *(a2 + 17) = 0;
          *(a2 + 24) = v46;
          *(a2 + 32) = v48;
          *(a2 + 40) = v51;
          *(a2 + 48) = v53;
        }

        else
        {
          swift_unknownObjectRelease();
          v55 = v89;
          LOBYTE(v84) = v89 & 1;
          v54 = v83;
          *a2 = v38;
          *(a2 + 8) = v54;
          *(a2 + 16) = v55 & 1;
          *(a2 + 23) = 64;
          *(a2 + 21) = 0;
          *(a2 + 17) = 0;
          *(a2 + 24) = v46;
          *(a2 + 32) = v48;
          *(a2 + 40) = v25;
          *(a2 + 48) = v27;
        }

        type metadata accessor for ASAuthorizationUIContext.Message(0);
        swift_storeEnumTagMultiPayload();
        return sub_1B1CEF6D4(v38, v54);
      }

      else
      {
        if ([v20 isSharedCredential] && (v62 = objc_msgSend(v20, sel_groupName)) != 0)
        {
          v63 = v62;

          v64 = sub_1B1D7BE4C();
          v66 = v65;

          LOBYTE(v63) = v89;
          v67 = v83;
          sub_1B1CEF6D4(v38, v83);
          v68 = [v20 username];
          v69 = sub_1B1D7BE4C();
          v71 = v70;

          swift_unknownObjectRelease();
          LOBYTE(v84) = v63;
          *a2 = v38;
          *(a2 + 8) = v67;
          *(a2 + 16) = v63;
          *(a2 + 23) = 96;
          *(a2 + 21) = 0;
          *(a2 + 17) = 0;
          *(a2 + 24) = v69;
          *(a2 + 32) = v71;
          *(a2 + 40) = v64;
          *(a2 + 48) = v66;
        }

        else
        {
          v72 = v89;
          v73 = v83;
          sub_1B1CEF6D4(v38, v83);
          v74 = [v20 username];
          v75 = sub_1B1D7BE4C();
          v77 = v76;

          swift_unknownObjectRelease();
          LOBYTE(v84) = v72;
          *a2 = v38;
          *(a2 + 8) = v73;
          *(a2 + 16) = v72 & 1;
          *(a2 + 24) = v75;
          *(a2 + 32) = v77;
          *(a2 + 40) = 0;
          *(a2 + 48) = 0;
          *(a2 + 56) = v25;
          *(a2 + 64) = v27;
        }

        type metadata accessor for ASAuthorizationUIContext.Message(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v29 = [v11 proxiedOriginDeviceName];
      if (v29)
      {
        v30 = v29;
        v31 = sub_1B1D7BE4C();
        v33 = v32;
        swift_unknownObjectRelease();

        v35 = v82;
        v34 = v83;
        *a2 = v82;
        *(a2 + 8) = v34;
        *(a2 + 16) = v13 & 1;
        *(a2 + 24) = v31;
        *(a2 + 32) = v33;
        type metadata accessor for ASAuthorizationUIContext.Message(0);
        swift_storeEnumTagMultiPayload();
        v36 = v35;
        v37 = v34;
      }

      else
      {
        v56 = [v11 localAccountLoginChoices];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB775060, &unk_1B1D85E90);
        v57 = sub_1B1D7BEEC();

        v58 = v82;
        if (v57 >> 62)
        {
          sub_1B1D7C1FC();
        }

        v59 = [v11 loginChoices];
        v60 = sub_1B1D7BEEC();

        if (v60 >> 62)
        {
          sub_1B1D7C1FC();
        }

        v61 = v83;

        swift_unknownObjectRelease();
        *a2 = v58;
        *(a2 + 8) = v61;
        *(a2 + 16) = v13 & 1;
        type metadata accessor for ASAuthorizationUIContext.Message(0);
        swift_storeEnumTagMultiPayload();
        v36 = v58;
        v37 = v61;
      }

      return sub_1B1CEF6D4(v36, v37);
    }
  }

  else
  {
    type metadata accessor for ASAuthorizationUIContext.Message(0);

    return swift_storeEnumTagMultiPayload();
  }
}

void sub_1B1CFA01C(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v1 + 41);
  v5 = [*v1 proxiedIconData];
  if (v5)
  {
    v6 = v5;
    v7 = sub_1B1D7B4EC();
    v9 = v8;

    v10 = [v3 proxiedIconScale];
    if (v10)
    {
      v11 = v10;
      [v10 doubleValue];
      v13 = v12;

      *a1 = v7;
      *(a1 + 8) = v9;
      *(a1 + 16) = v13;
      v14 = 1;
      goto LABEL_10;
    }

    sub_1B1CDEFDC(v7, v9);
  }

  if (v4)
  {
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    v14 = -4;
  }

  else
  {
    v15 = sub_1B1D111FC();
    sub_1B1D11EF8(v15, &v17);

    v16 = v17;
    if (v17 == 3)
    {
      *a1 = xmmword_1B1D85E80;
      *(a1 + 16) = 0;
      v14 = 64;
    }

    else
    {
      *(a1 + 8) = 0;
      *(a1 + 16) = 0;
      *a1 = v16;
      v14 = -64;
    }
  }

LABEL_10:
  *(a1 + 24) = v14;
}

void *sub_1B1CFA18C@<X0>(uint64_t a2@<X8>)
{
  v4 = *(v2 + 32);
  v5 = *(v2 + 44);
  v6 = *(v2 + 48);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (!result)
  {
    v10 = 0;
    v9 = 0x20000;
    goto LABEL_13;
  }

  v8 = result;
  v9 = 65537;
  swift_unknownObjectRetain();
  if (([v8 isExternal] & 1) == 0)
  {
    if (v5 == 2 && v4 == 1)
    {
      result = swift_unknownObjectRelease();
      v10 = 0;
      v9 = 66307;
      goto LABEL_13;
    }

    if (v6)
    {
      v9 = 65793;
    }

    else
    {
      v9 = 65537;
    }
  }

  v11 = ASAuthorizationUIContext.loginChoicesToShow.getter();
  if (v11 >> 62)
  {
    v12 = sub_1B1D7C1FC();
  }

  else
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = swift_unknownObjectRelease();
  v10 = v12 > 1;
LABEL_13:
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 10) = BYTE2(v9);
  return result;
}

uint64_t _s22AuthenticationServices24ASAuthorizationUIContextV15PasswordMessageO2eeoiySbAE_AEtFZ_0(uint64_t a1, __int128 *a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 16);
  v36 = *(a1 + 32);
  v37 = v2;
  v4 = *(a1 + 16);
  v35[0] = *a1;
  v35[1] = v4;
  v5 = a2[3];
  v6 = a2[1];
  v41 = a2[2];
  v42 = v5;
  v7 = a2[1];
  v39 = *a2;
  v40 = v7;
  v8 = *(a1 + 48);
  v44[2] = v36;
  v44[3] = v8;
  v44[0] = v35[0];
  v44[1] = v3;
  v46 = v39;
  v49 = a2[3];
  v48 = v41;
  v38 = *(a1 + 64);
  v43 = *(a2 + 8);
  v9 = *(a2 + 8);
  v45 = *(a1 + 64);
  v50 = v9;
  v47 = v6;
  v11 = *(&v4 + 1);
  v10 = v36;
  v12 = BYTE7(v4) >> 5;
  v14 = *(&v36 + 1);
  v13 = v37;
  if (v12 > 1)
  {
    if (v12 != 2)
    {
      if (v12 == 3)
      {
        if (((BYTE7(v40) << 48) & 0xE0000000000000) != 0x60000000000000)
        {
          goto LABEL_37;
        }

        goto LABEL_29;
      }

      if (((BYTE7(v40) << 48) & 0xE0000000000000) == 0x80000000000000)
      {
LABEL_29:
        v22 = *(&v40 + 1);
        v24 = v41;
        v23 = v42;
        v32 = v35[0];
        v33 = v4 & 1;
        v30 = v39;
        v31 = v40 & 1;
        sub_1B1CFA830(&v39, v34);
        sub_1B1CFA830(v35, v34);
        if ((_s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v32, &v30) & 1) == 0 || (v11 != v22 || v10 != v24) && (sub_1B1D7C50C() & 1) == 0)
        {
          goto LABEL_38;
        }

        if (v14 != *(&v24 + 1) || v13 != v23)
        {
          v25 = sub_1B1D7C50C();
          sub_1B1CFA868(v44);
          return v25 & 1;
        }

        goto LABEL_35;
      }

LABEL_37:
      sub_1B1CFA830(&v39, v34);
      sub_1B1CFA830(v35, v34);
      goto LABEL_38;
    }

    if (((BYTE7(v40) << 48) & 0xE0000000000000) != 0x40000000000000)
    {
      goto LABEL_37;
    }

    v20 = *(&v40 + 1);
    v21 = v41;
    v19 = v42;
    v32 = v35[0];
    v33 = v4 & 1;
    v30 = v39;
    v31 = v40 & 1;
    sub_1B1CFA830(&v39, v34);
    sub_1B1CFA830(v35, v34);
    if ((_s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v32, &v30) & 1) == 0 || (v11 != v20 || v10 != v21) && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_38;
    }

    if (v13)
    {
      if (!v19)
      {
LABEL_38:
        sub_1B1CFA868(v44);
LABEL_39:
        v25 = 0;
        return v25 & 1;
      }

      if (v14 != *(&v21 + 1) || v13 != v19)
      {
        goto LABEL_47;
      }

      goto LABEL_35;
    }

LABEL_49:

    sub_1B1CFA868(v44);
    if (v19)
    {

      goto LABEL_39;
    }

    goto LABEL_51;
  }

  if (v12)
  {
    if (((BYTE7(v40) << 48) & 0xE0000000000000) == 0x20000000000000)
    {
      goto LABEL_29;
    }

    goto LABEL_37;
  }

  if (BYTE7(v40) >> 5)
  {
    goto LABEL_37;
  }

  v15 = v38;
  v29 = *(&v37 + 1);
  v16 = *(&v40 + 1);
  v18 = v41;
  v17 = v42;
  v19 = v43;
  v28 = *(&v42 + 1);
  v32 = v35[0];
  v33 = v4 & 1;
  v30 = v39;
  v31 = v40 & 1;
  sub_1B1CFA830(&v39, v34);
  sub_1B1CFA830(v35, v34);
  if ((_s22AuthenticationServices24ASAuthorizationUIContextV7ServiceO2eeoiySbAE_AEtFZ_0(&v32, &v30) & 1) == 0 || (v11 != v16 || v10 != v18) && (sub_1B1D7C50C() & 1) == 0)
  {
    goto LABEL_38;
  }

  if (v13)
  {
    if (!v17 || (v14 != *(&v18 + 1) || v13 != v17) && (sub_1B1D7C50C() & 1) == 0)
    {
      goto LABEL_38;
    }
  }

  else if (v17)
  {
    goto LABEL_38;
  }

  if (!v15)
  {
    goto LABEL_49;
  }

  if (!v19)
  {
    goto LABEL_38;
  }

  if (v29 != v28 || v15 != v19)
  {
LABEL_47:
    v27 = sub_1B1D7C50C();
    sub_1B1CFA868(v44);
    if ((v27 & 1) == 0)
    {
      goto LABEL_39;
    }

LABEL_51:
    v25 = 1;
    return v25 & 1;
  }

LABEL_35:
  sub_1B1CFA868(v44);
  v25 = 1;
  return v25 & 1;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1B1CFA744(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_1B1CFA794(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 72) = 1;
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
      *a1 = 0;
      *(a1 + 8) = 0;
      *(a1 + 16) = 2 * -a2;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      return result;
    }

    *(a1 + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1B1CFA868(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775188, &unk_1B1D866C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _ASCredentialUpdateError.failureReason.getter()
{
  result = 0xD000000000000015;
  v2 = v0[1];
  if (!v2)
  {
    return 0xD00000000000002BLL;
  }

  if (v2 == 1)
  {
    return 0xD000000000000020;
  }

  if (v2 != 2)
  {
    v3 = *v0;
    sub_1B1D7C27C();
    MEMORY[0x1B273AEE0](0xD000000000000038, 0x80000001B1D9BA60);
    MEMORY[0x1B273AEE0](v3, v2);
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_22AuthenticationServices24_ASCredentialUpdateErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1B1CFA9FC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) < 2)
  {
    LODWORD(v3) = 0;
  }

  if (v3 >= 3)
  {
    return (v3 - 2);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B1CFAA60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

void *sub_1B1CFAAB0(void *result, unsigned int a2)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    result[1] = 0;
    *result = a2 - 0x7FFFFFFF;
  }

  else if (a2)
  {
    result[1] = a2;
  }

  return result;
}

uint64_t sub_1B1CFAAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[39] = a6;
  v7[40] = v6;
  v7[37] = a4;
  v7[38] = a5;
  v7[35] = a2;
  v7[36] = a3;
  v7[34] = a1;
  v8 = sub_1B1D7C08C();
  v7[41] = v8;
  v7[42] = *(v8 - 8);
  v7[43] = swift_task_alloc();
  v9 = sub_1B1D7B61C();
  v7[44] = v9;
  v7[45] = *(v9 - 8);
  v7[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1CFAC18, 0, 0);
}

uint64_t sub_1B1CFAC18()
{
  v1 = *(v0 + 320);
  v2 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_connection);
  v3 = *(v0 + 272);
  v4 = *(v0 + 280);
  v5 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_options);
  *(v0 + 480) = v5;
  if (sub_1B1D03B20(v3, v4, v2, v5))
  {
    *(v0 + 376) = sub_1B1CFBEDC();
    *(v0 + 384) = v6;
    if (v6)
    {
      v7 = *(*(v0 + 320) + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore);
      *(v0 + 392) = v7;
      v7;
      v8 = swift_task_alloc();
      *(v0 + 400) = v8;
      *v8 = v0;
      v8[1] = sub_1B1CFAF40;
      v9 = *(v0 + 368);
      v10 = *(v0 + 304);
      v11 = *(v0 + 312);
      v12 = *(v0 + 288);
      v13 = *(v0 + 296);
      v14 = *(v0 + 272);
      v15 = *(v0 + 280);

      return MEMORY[0x1EEE33128](v9, v10, v11, v14, v15, v12, v13);
    }

    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v24 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v24, qword_1EB782548);
    v25 = sub_1B1D7BD6C();
    v26 = sub_1B1D7C00C();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_1B1C8D000, v25, v26, "Could not retrieve calling app name", v27, 2u);
      MEMORY[0x1B273C4C0](v27, -1, -1);
    }

    v23 = *(v0 + 8);
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v16 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v16, qword_1EB782548);
    v17 = sub_1B1D7BD6C();
    v18 = sub_1B1D7C00C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B1C8D000, v17, v18, "Connected process is not entitled to make this call.", v19, 2u);
      MEMORY[0x1B273C4C0](v19, -1, -1);
    }

    v20 = *(v0 + 272);
    v21 = *(v0 + 280);

    sub_1B1CE955C();
    swift_allocError();
    *v22 = v20;
    v22[1] = v21;
    swift_willThrow();

    v23 = *(v0 + 8);
  }

  return v23();
}

uint64_t sub_1B1CFAF40()
{
  v2 = *v1;
  *(v2 + 408) = v0;

  if (v0)
  {

    v3 = sub_1B1CFBAAC;
  }

  else
  {
    v3 = sub_1B1CFB084;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B1CFB084()
{
  if (*(v0 + 480) == 1)
  {
    v1 = *(v0 + 320);
    v2 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_passwordsNotificationManager);
    *(v0 + 416) = v2;
    swift_unknownObjectRetain();
    v3 = sub_1B1D7BE1C();
    *(v0 + 424) = v3;

    v4 = sub_1B1D7BE1C();
    *(v0 + 432) = v4;
    v5 = sub_1B1D7BE1C();
    *(v0 + 440) = v5;
    v6 = sub_1B1D7B5AC();
    v8 = v7;
    v9 = sub_1B1D7B4DC();
    *(v0 + 448) = v9;
    sub_1B1CDEFDC(v6, v8);
    v10 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_isClientEntitledWebBrowser);
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_1B1CFB530;
    v11 = swift_continuation_init();
    *(v0 + 264) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1B1CFC258;
    *(v0 + 232) = &block_descriptor_50;
    *(v0 + 240) = v11;
    [v2 schedulePasskeyUpdatedNotificationForApp:v3 relyingPartyID:v4 userName:v5 credentialID:v9 shouldUseRelyingPartyForServiceName:v10 completionHandler:?];
    v12 = v0 + 80;
LABEL_3:

    return MEMORY[0x1EEE6DEC8](v12);
  }

  (*(*(v0 + 360) + 8))(*(v0 + 368), *(v0 + 352));

  v14 = *(v0 + 336);
  v13 = *(v0 + 344);
  v15 = *(v0 + 328);
  v17 = *(v0 + 272);
  v16 = *(v0 + 280);
  sub_1B1D7C06C();
  v18 = sub_1B1D7C03C();
  v20 = v19;
  (*(v14 + 8))(v13, v15);
  if (v18 == v17 && v20 == v16)
  {
  }

  else
  {
    v22 = sub_1B1D7C50C();

    if ((v22 & 1) == 0)
    {
      v23 = *(*(v0 + 320) + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
      v24 = sub_1B1D7BE1C();
      *(v0 + 456) = v24;
      v25 = sub_1B1D7B4DC();
      *(v0 + 464) = v25;
      v26 = sub_1B1D7BE1C();
      *(v0 + 472) = v26;
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1B1CFB948;
      v27 = swift_continuation_init();
      *(v0 + 200) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
      *(v0 + 144) = MEMORY[0x1E69E9820];
      *(v0 + 152) = 1107296256;
      *(v0 + 160) = sub_1B1CFC258;
      *(v0 + 168) = &block_descriptor_47;
      *(v0 + 176) = v27;
      [v23 reportPublicKeyCredentialUpdateWithRelyingParty:v24 userHandle:v25 newName:v26 completionHandler:v0 + 144];
      v12 = v0 + 16;
      goto LABEL_3;
    }
  }

  if (qword_1EB7749C0 != -1)
  {
    swift_once();
  }

  v28 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v28, qword_1EB782548);
  v29 = sub_1B1D7BD6C();
  v30 = sub_1B1D7BFEC();
  if (os_log_type_enabled(v29, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&dword_1B1C8D000, v29, v30, "Updated Apple Account passkey.", v31, 2u);
    MEMORY[0x1B273C4C0](v31, -1, -1);
  }

  v32 = *(v0 + 8);

  return v32();
}

uint64_t sub_1B1CFB530()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1CFB610, 0, 0);
}

uint64_t sub_1B1CFB610()
{
  v2 = v0[55];
  v1 = v0[56];
  v4 = v0[53];
  v3 = v0[54];
  (*(v0[45] + 8))(v0[46], v0[44]);
  swift_unknownObjectRelease();

  v6 = v0[42];
  v5 = v0[43];
  v7 = v0[41];
  v9 = v0[34];
  v8 = v0[35];
  sub_1B1D7C06C();
  v10 = sub_1B1D7C03C();
  v12 = v11;
  (*(v6 + 8))(v5, v7);
  if (v10 == v9 && v12 == v8)
  {

LABEL_5:
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v14, qword_1EB782548);
    v15 = sub_1B1D7BD6C();
    v16 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_1B1C8D000, v15, v16, "Updated Apple Account passkey.", v17, 2u);
      MEMORY[0x1B273C4C0](v17, -1, -1);
    }

    v18 = v0[1];

    return v18();
  }

  v13 = sub_1B1D7C50C();

  if (v13)
  {
    goto LABEL_5;
  }

  v20 = *(v0[40] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
  v21 = sub_1B1D7BE1C();
  v0[57] = v21;
  v22 = sub_1B1D7B4DC();
  v0[58] = v22;
  v23 = sub_1B1D7BE1C();
  v0[59] = v23;
  v0[2] = v0;
  v0[3] = sub_1B1CFB948;
  v24 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B1CFC258;
  v0[21] = &block_descriptor_47;
  v0[22] = v24;
  [v20 reportPublicKeyCredentialUpdateWithRelyingParty:v21 userHandle:v22 newName:v23 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1CFB948()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1CFBA28, 0, 0);
}

uint64_t sub_1B1CFBA28()
{
  v1 = *(v0 + 464);
  v2 = *(v0 + 456);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B1CFBAAC()
{
  if (qword_1EB7749C0 != -1)
  {
    swift_once();
  }

  v1 = v0[51];
  v2 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v2, qword_1EB782548);
  v3 = v1;
  v4 = sub_1B1D7BD6C();
  v5 = sub_1B1D7BFEC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[51];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1B1C8D000, v4, v5, "Did not update any passkey in keychain. Error: %@", v8, 0xCu);
    sub_1B1CEE550(v9);
    MEMORY[0x1B273C4C0](v9, -1, -1);
    MEMORY[0x1B273C4C0](v8, -1, -1);
  }

  else
  {
  }

  v13 = v0[42];
  v12 = v0[43];
  v14 = v0[41];
  v16 = v0[34];
  v15 = v0[35];
  sub_1B1D7C06C();
  v17 = sub_1B1D7C03C();
  v19 = v18;
  (*(v13 + 8))(v12, v14);
  if (v17 == v16 && v19 == v15)
  {

LABEL_10:
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v2, qword_1EB782548);
    v21 = sub_1B1D7BD6C();
    v22 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B1C8D000, v21, v22, "Updated Apple Account passkey.", v23, 2u);
      MEMORY[0x1B273C4C0](v23, -1, -1);
    }

    v24 = v0[1];

    return v24();
  }

  v20 = sub_1B1D7C50C();

  if (v20)
  {
    goto LABEL_10;
  }

  v26 = *(v0[40] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
  v27 = sub_1B1D7BE1C();
  v0[57] = v27;
  v28 = sub_1B1D7B4DC();
  v0[58] = v28;
  v29 = sub_1B1D7BE1C();
  v0[59] = v29;
  v0[2] = v0;
  v0[3] = sub_1B1CFB948;
  v30 = swift_continuation_init();
  v0[25] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
  v0[18] = MEMORY[0x1E69E9820];
  v0[19] = 1107296256;
  v0[20] = sub_1B1CFC258;
  v0[21] = &block_descriptor_47;
  v0[22] = v30;
  [v26 reportPublicKeyCredentialUpdateWithRelyingParty:v27 userHandle:v28 newName:v29 completionHandler:v0 + 18];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1CFBEDC()
{
  if (*(v0 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_test_overrideCallingAppName + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_test_overrideCallingAppName);
  }

  else
  {
    [*(v0 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_connection) auditToken];
    v2 = WBSApplicationIdentifierFromAuditToken();
    if (v2)
    {
      v3 = v2;
      v4 = sub_1B1D7BE4C();
      v6 = v5;

      sub_1B1CED540(0, &qword_1EB7751E8, 0x1E6963620);

      v11 = sub_1B1D123E0(v4, v6);

      v12 = [v11 localizedName];
      v1 = sub_1B1D7BE4C();
    }

    else
    {
      if (qword_1EB7749C0 != -1)
      {
        swift_once();
      }

      v7 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v7, qword_1EB782548);
      v8 = sub_1B1D7BD6C();
      v9 = sub_1B1D7C00C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1B1C8D000, v8, v9, "Could not retrieve application identifier for calling process.", v10, 2u);
        MEMORY[0x1B273C4C0](v10, -1, -1);
      }

      return 0;
    }
  }

  return v1;
}

uint64_t sub_1B1CFC258(uint64_t a1)
{
  v1 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return MEMORY[0x1EEE6DED8](v1);
}

uint64_t sub_1B1CFC430(uint64_t a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = sub_1B1D7BE4C();
  v11 = v10;
  v5[4] = v10;
  v12 = a2;
  v13 = a3;
  a5;
  v14 = sub_1B1D7B4EC();
  v16 = v15;

  v5[5] = v14;
  v5[6] = v16;
  v17 = sub_1B1D7BE4C();
  v19 = v18;

  v5[7] = v19;
  v20 = swift_task_alloc();
  v5[8] = v20;
  *v20 = v5;
  v20[1] = sub_1B1CFC56C;

  return sub_1B1CFAAF0(v9, v11, v14, v16, v17, v19);
}

uint64_t sub_1B1CFC56C()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 16);
  v8 = *v1;

  sub_1B1CDEFDC(v6, v5);

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_1B1D7B43C();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1B1CFC76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[21] = a4;
  v5[22] = v4;
  v5[19] = a2;
  v5[20] = a3;
  v5[18] = a1;
  v6 = sub_1B1D7C08C();
  v5[23] = v6;
  v5[24] = *(v6 - 8);
  v5[25] = swift_task_alloc();
  v7 = sub_1B1D7B5BC();
  v5[26] = v7;
  v5[27] = *(v7 - 8);
  v5[28] = swift_task_alloc();
  v8 = sub_1B1D7B5DC();
  v5[29] = v8;
  v5[30] = *(v8 - 8);
  v5[31] = swift_task_alloc();
  v9 = sub_1B1D7B49C();
  v5[32] = v9;
  v5[33] = *(v9 - 8);
  v5[34] = swift_task_alloc();
  v10 = sub_1B1D7B61C();
  v5[35] = v10;
  v5[36] = *(v10 - 8);
  v5[37] = swift_task_alloc();
  v5[38] = swift_task_alloc();
  v5[39] = swift_task_alloc();
  v5[40] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1CFC9F4, 0, 0);
}

uint64_t sub_1B1CFC9F4()
{
  if (sub_1B1D03B20(v0[18], v0[19], *(v0[22] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_connection), *(v0[22] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_options)))
  {
    v1 = *(v0[22] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore);
    v0[41] = v1;
    v1;
    v2 = swift_task_alloc();
    v0[42] = v2;
    *v2 = v0;
    v2[1] = sub_1B1CFCCC8;
    v4 = v0[18];
    v3 = v0[19];

    return MEMORY[0x1EEE33140](v4, v3);
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v5 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v5, qword_1EB782548);
    v6 = sub_1B1D7BD6C();
    v7 = sub_1B1D7C00C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1B1C8D000, v6, v7, "Connected process is not entitled to make this call.", v8, 2u);
      MEMORY[0x1B273C4C0](v8, -1, -1);
    }

    v10 = v0[18];
    v9 = v0[19];

    sub_1B1CE955C();
    swift_allocError();
    *v11 = v10;
    v11[1] = v9;
    swift_willThrow();

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_1B1CFCCC8(uint64_t a1)
{
  v2 = *(*v1 + 328);
  *(*v1 + 344) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B1CFCE10, 0, 0);
}

uint64_t sub_1B1CFCE10()
{
  v114 = v0;
  v113 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 344);
  v108 = *(v1 + 16);
  if (!v108)
  {
    v10 = MEMORY[0x1E69E7CC0];
LABEL_73:

    if (qword_1EB7749C0 != -1)
    {
      goto LABEL_103;
    }

    goto LABEL_74;
  }

  v2 = 0;
  v94 = (v0 + 422);
  v3 = *(v0 + 288);
  v5 = *(v0 + 160);
  v4 = *(v0 + 168);
  v7 = v4 != 0xC000000000000000 || v5 != 0;
  v105 = v7;
  v8 = v4 >> 62;
  v104 = BYTE6(v4);
  v110 = (v3 + 32);
  v101 = *(v0 + 160);
  v9 = __OFSUB__(HIDWORD(v5), v5);
  v100 = v9;
  v99 = HIDWORD(v5) - v5;
  v10 = MEMORY[0x1E69E7CC0];
  v106 = *(v0 + 344);
  v107 = v4 >> 62;
  while (v2 < *(v1 + 16))
  {
    v11 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v12 = *(v3 + 72);
    (*(v3 + 16))(*(v0 + 320), *(v0 + 344) + v11 + v12 * v2, *(v0 + 280));
    v13 = sub_1B1D7B5AC();
    v15 = v14 >> 62;
    if (v14 >> 62 == 3)
    {
      if (v13)
      {
        v16 = 0;
      }

      else
      {
        v16 = v14 == 0xC000000000000000;
      }

      v18 = !v16 || v8 < 3;
      if (((v18 | v105) & 1) == 0)
      {
        v13 = 0;
        v14 = 0xC000000000000000;
LABEL_47:
        sub_1B1CDEFDC(v13, v14);
LABEL_48:
        v32 = *v110;
        (*v110)(*(v0 + 312), *(v0 + 320), *(v0 + 280));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B1D194B4(0, *(v10 + 16) + 1, 1);
        }

        v34 = *(v10 + 16);
        v33 = *(v10 + 24);
        if (v34 >= v33 >> 1)
        {
          sub_1B1D194B4((v33 > 1), v34 + 1, 1);
        }

        v35 = *(v0 + 312);
        v36 = *(v0 + 280);
        *(v10 + 16) = v34 + 1;
        v32(v10 + v11 + v34 * v12, v35, v36);
        v1 = v106;
        v8 = v107;
        goto LABEL_15;
      }

LABEL_39:
      v19 = 0;
      if (v8 <= 1)
      {
        goto LABEL_36;
      }

      goto LABEL_40;
    }

    if (v15 > 1)
    {
      if (v15 != 2)
      {
        goto LABEL_39;
      }

      v21 = *(v13 + 16);
      v20 = *(v13 + 24);
      v22 = __OFSUB__(v20, v21);
      v19 = v20 - v21;
      if (v22)
      {
        goto LABEL_101;
      }

      if (v8 <= 1)
      {
        goto LABEL_36;
      }
    }

    else if (v15)
    {
      LODWORD(v19) = HIDWORD(v13) - v13;
      if (__OFSUB__(HIDWORD(v13), v13))
      {
        goto LABEL_102;
      }

      v19 = v19;
      if (v8 <= 1)
      {
LABEL_36:
        v23 = v104;
        if (v8)
        {
          v23 = v99;
          if (v100)
          {
            goto LABEL_100;
          }
        }

        goto LABEL_42;
      }
    }

    else
    {
      v19 = BYTE6(v14);
      if (v8 <= 1)
      {
        goto LABEL_36;
      }
    }

LABEL_40:
    if (v8 != 2)
    {
      if (!v19)
      {
        goto LABEL_47;
      }

LABEL_13:
      sub_1B1CDEFDC(v13, v14);
      goto LABEL_14;
    }

    v25 = *(v101 + 16);
    v24 = *(v101 + 24);
    v22 = __OFSUB__(v24, v25);
    v23 = v24 - v25;
    if (v22)
    {
      goto LABEL_99;
    }

LABEL_42:
    if (v19 != v23)
    {
      goto LABEL_13;
    }

    if (v19 < 1)
    {
      goto LABEL_47;
    }

    if (v15 <= 1)
    {
      if (v15)
      {
        v43 = v13;
        if (v13 >> 32 < v13)
        {
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
        }

        v98 = v13;
        v103 = v14;
        v44 = sub_1B1D7B34C();
        if (v44)
        {
          v45 = sub_1B1D7B36C();
          if (__OFSUB__(v43, v45))
          {
            goto LABEL_107;
          }

          v44 += v43 - v45;
        }

        v46 = *(v0 + 168);
        v96 = *(v0 + 160);
        sub_1B1D7B35C();
        sub_1B1D036A8(v44, v96, v46, v112);
        v1 = v106;
        v30 = v98;
        v31 = v103;
      }

      else
      {
        v26 = *(v0 + 160);
        v27 = *(v0 + 168);
        *(v0 + 408) = v13;
        v28 = v13;
        *(v0 + 416) = v14;
        *(v0 + 418) = BYTE2(v14);
        v29 = v14;
        *(v0 + 419) = BYTE3(v14);
        *(v0 + 420) = BYTE4(v14);
        *(v0 + 421) = BYTE5(v14);
        sub_1B1D036A8(v0 + 408, v26, v27, v112);
        v30 = v28;
        v31 = v29;
      }

      goto LABEL_68;
    }

    if (v15 != 2)
    {
      v47 = v13;
      v48 = v14;
      v49 = *(v0 + 160);
      v50 = *(v0 + 168);
      *v94 = 0;
      *(v0 + 428) = 0;
      sub_1B1D036A8(v94, v49, v50, v112);
      v30 = v47;
      v31 = v48;
LABEL_68:
      sub_1B1CDEFDC(v30, v31);
      v42 = v112[0];
      goto LABEL_69;
    }

    v37 = *(v13 + 16);
    v38 = *(v13 + 24);
    v97 = v13;
    v102 = v14;
    v39 = sub_1B1D7B34C();
    if (v39)
    {
      v40 = sub_1B1D7B36C();
      if (__OFSUB__(v37, v40))
      {
        goto LABEL_106;
      }

      v39 += v37 - v40;
    }

    if (__OFSUB__(v38, v37))
    {
      goto LABEL_105;
    }

    v41 = *(v0 + 160);
    v95 = *(v0 + 168);
    sub_1B1D7B35C();
    sub_1B1D036A8(v39, v41, v95, v112);
    sub_1B1CDEFDC(v97, v102);
    v42 = v112[0];
    v1 = v106;
LABEL_69:
    v8 = v107;
    if (v42)
    {
      goto LABEL_48;
    }

LABEL_14:
    (*(v3 + 8))(*(v0 + 320), *(v0 + 280));
LABEL_15:
    if (v108 == ++v2)
    {
      goto LABEL_73;
    }
  }

  __break(1u);
LABEL_99:
  __break(1u);
LABEL_100:
  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  swift_once();
LABEL_74:
  v51 = sub_1B1D7BD8C();
  *(v0 + 352) = __swift_project_value_buffer(v51, qword_1EB782548);

  v52 = sub_1B1D7BD6C();
  v53 = sub_1B1D7BFEC();
  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    *v54 = 134217984;
    *(v54 + 4) = *(v10 + 16);

    _os_log_impl(&dword_1B1C8D000, v52, v53, "Found %ld passkey with matching credentialID in keychain.", v54, 0xCu);
    MEMORY[0x1B273C4C0](v54, -1, -1);
  }

  else
  {
  }

  v55 = sub_1B1D7BE1C();
  v56 = [v55 safari_bestURLForUserTypedString];

  if (!v56)
  {
LABEL_84:

    goto LABEL_85;
  }

  sub_1B1D7B47C();

  if (!*(v10 + 16))
  {
    (*(*(v0 + 264) + 8))(*(v0 + 272), *(v0 + 256));
    goto LABEL_84;
  }

  v58 = *(v0 + 296);
  v57 = *(v0 + 304);
  v59 = *(v0 + 280);
  v60 = *(v0 + 288);
  v62 = *(v0 + 240);
  v61 = *(v0 + 248);
  v63 = *(v0 + 224);
  v111 = *(v0 + 232);
  v64 = *(v0 + 216);
  v109 = *(v0 + 208);
  (*(v60 + 16))(v58, v10 + ((*(v60 + 80) + 32) & ~*(v60 + 80)), v59);

  (*(v60 + 32))(v57, v58, v59);
  sub_1B1D7B60C();
  (*(v64 + 104))(v63, *MEMORY[0x1E69C8770], v109);
  v65 = sub_1B1D7B5FC();
  v67 = v66;
  *(v0 + 360) = v66;
  (*(v64 + 8))(v63, v109);
  (*(v62 + 8))(v61, v111);
  if (v67)
  {
    v68 = sub_1B1D7B5AC();
    v70 = v69;
    *(v0 + 368) = v68;
    *(v0 + 376) = v69;
    v71 = swift_task_alloc();
    *(v0 + 384) = v71;
    *v71 = v0;
    v71[1] = sub_1B1CFD988;
    v72 = *(v0 + 272);

    return sub_1B1CFE06C(v72, v65, v67, v68, v70);
  }

  v92 = *(v0 + 264);
  v91 = *(v0 + 272);
  v93 = *(v0 + 256);
  (*(*(v0 + 288) + 8))(*(v0 + 304), *(v0 + 280));
  (*(v92 + 8))(v91, v93);
LABEL_85:
  v75 = *(v0 + 192);
  v74 = *(v0 + 200);
  v76 = *(v0 + 184);
  v78 = *(v0 + 144);
  v77 = *(v0 + 152);
  sub_1B1D7C06C();
  v79 = sub_1B1D7C03C();
  v81 = v80;
  (*(v75 + 8))(v74, v76);
  if (v79 == v78 && v81 == v77)
  {

    goto LABEL_89;
  }

  v82 = sub_1B1D7C50C();

  if (v82)
  {
LABEL_89:
    v83 = sub_1B1D7BD6C();
    v84 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_1B1C8D000, v83, v84, "Removed Apple Account passkey.", v85, 2u);
      MEMORY[0x1B273C4C0](v85, -1, -1);
    }

    v86 = *(v0 + 8);

    return v86();
  }

  else
  {
    v87 = *(*(v0 + 176) + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
    v88 = sub_1B1D7BE1C();
    *(v0 + 392) = v88;
    v89 = sub_1B1D7B4DC();
    *(v0 + 400) = v89;
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1B1CFDE60;
    v90 = swift_continuation_init();
    *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1B1CFC258;
    *(v0 + 104) = &block_descriptor_40;
    *(v0 + 112) = v90;
    [v87 reportUnknownPublicKeyCredentialWithRelyingParty:v88 credentialID:v89 completionHandler:v0 + 80];

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }
}

uint64_t sub_1B1CFD988()
{
  v1 = *(*v0 + 376);
  v2 = *(*v0 + 368);

  sub_1B1CDEFDC(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1B1CFDB08, 0, 0);
}

uint64_t sub_1B1CFDB08()
{
  v2 = v0[33];
  v1 = v0[34];
  v3 = v0[32];
  (*(v0[36] + 8))(v0[38], v0[35]);
  (*(v2 + 8))(v1, v3);
  v5 = v0[24];
  v4 = v0[25];
  v6 = v0[23];
  v8 = v0[18];
  v7 = v0[19];
  sub_1B1D7C06C();
  v9 = sub_1B1D7C03C();
  v11 = v10;
  (*(v5 + 8))(v4, v6);
  if (v9 == v8 && v11 == v7)
  {

LABEL_5:
    v13 = sub_1B1D7BD6C();
    v14 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1B1C8D000, v13, v14, "Removed Apple Account passkey.", v15, 2u);
      MEMORY[0x1B273C4C0](v15, -1, -1);
    }

    v16 = v0[1];

    return v16();
  }

  v12 = sub_1B1D7C50C();

  if (v12)
  {
    goto LABEL_5;
  }

  v18 = *(v0[22] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
  v19 = sub_1B1D7BE1C();
  v0[49] = v19;
  v20 = sub_1B1D7B4DC();
  v0[50] = v20;
  v0[2] = v0;
  v0[3] = sub_1B1CFDE60;
  v21 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1B1CFC258;
  v0[13] = &block_descriptor_40;
  v0[14] = v21;
  [v18 reportUnknownPublicKeyCredentialWithRelyingParty:v19 credentialID:v20 completionHandler:v0 + 10];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1B1CFDE60()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1CFDF6C, 0, 0);
}

uint64_t sub_1B1CFDF6C()
{
  v1 = *(v0 + 392);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1B1CFE06C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[56] = a5;
  v6[57] = v5;
  v6[54] = a3;
  v6[55] = a4;
  v6[52] = a1;
  v6[53] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB775220, &unk_1B1D86850);
  v6[58] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1CFE110, 0, 0);
}

uint64_t sub_1B1CFE110()
{
  v0[59] = sub_1B1CFBEDC();
  v0[60] = v1;
  if (v1)
  {
    v2 = v0[58];
    v3 = v0[52];
    v4 = sub_1B1D7B49C();
    v5 = *(v4 - 8);
    (*(v5 + 16))(v2, v3, v4);
    (*(v5 + 56))(v2, 0, 1, v4);
    v6 = [objc_opt_self() queryThatMatchesEverything];
    v7 = 0;
    if ((*(v5 + 48))(v2, 1, v4) != 1)
    {
      v8 = v0[58];
      v7 = sub_1B1D7B46C();
      (*(v5 + 8))(v8, v4);
    }

    v9 = v0[57];
    v10 = objc_allocWithZone(MEMORY[0x1E69C8A30]);
    v11 = sub_1B1D7B4DC();
    v12 = [v10 initWithURL:v7 options:16 userNameQuery:v6 passkeyCredentialIdentifier:v11 associatedDomainsManager:0 webFrameIdentifier:0];
    v0[61] = v12;

    v13 = OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore;
    v0[62] = OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore;
    v14 = *(v9 + v13);
    v0[63] = v14;
    v0[2] = v0;
    v0[7] = v0 + 50;
    v0[3] = sub_1B1CFE4DC;
    v15 = swift_continuation_init();
    v0[33] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751C8, &qword_1B1D86830);
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1B1D030EC;
    v0[29] = &block_descriptor_30;
    v0[30] = v15;
    [v14 savedAccountsMatchingCriteria:v12 withCompletionHandler:v0 + 26];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v16 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v16, qword_1EB782548);
    v17 = sub_1B1D7BD6C();
    v18 = sub_1B1D7C00C();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1B1C8D000, v17, v18, "Could not retrieve calling app name", v19, 2u);
      MEMORY[0x1B273C4C0](v19, -1, -1);
    }

    v20 = v0[1];

    return v20();
  }
}

uint64_t sub_1B1CFE4DC()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1CFE5BC, 0, 0);
}

uint64_t sub_1B1CFE5BC()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 488);
  v3 = *(v0 + 400);
  *(v0 + 512) = v3;

  if (!v3)
  {

    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v17 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v17, qword_1EB782548);
    v18 = sub_1B1D7BD6C();
    v19 = sub_1B1D7BFEC();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 488);
    if (v20)
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1B1C8D000, v18, v19, "No savedAccount found matching the username and credentialID.", v22, 2u);
      MEMORY[0x1B273C4C0](v22, -1, -1);
    }

LABEL_30:

    v28 = *(v0 + 8);

    return v28();
  }

  v4 = [v3 exactMatches];
  sub_1B1CED540(0, &qword_1EB7751D8, 0x1E69C8A28);
  v5 = sub_1B1D7BEEC();
  *(v0 + 520) = v5;

  if (!(v5 >> 62))
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    *(v0 + 528) = v6;
    if (v6)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

LABEL_27:
  v26 = sub_1B1D7C1FC();
  *(v0 + 528) = v26;
  if (!v26)
  {
LABEL_28:
    v27 = *(v0 + 488);

LABEL_29:

    goto LABEL_30;
  }

LABEL_4:
  v7 = 0;
  while (1)
  {
    v9 = *(v0 + 520);
    if ((v9 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1B273B2E0](v7);
    }

    else
    {
      if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v10 = *(v9 + 8 * v7 + 32);
    }

    v11 = v10;
    *(v0 + 536) = v10;
    v12 = v7 + 1;
    *(v0 + 544) = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v13 = [v10 savedAccount];
    *(v0 + 552) = v13;
    if ([v13 canBeDeletedByServiceViaCredentialUpdater])
    {
      break;
    }

    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v14 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v14, qword_1EB782548);
    v3 = sub_1B1D7BD6C();
    v15 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v3, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1B1C8D000, v3, v15, "Passkey cannot be deleted by service.", v16, 2u);
      MEMORY[0x1B273C4C0](v16, -1, -1);
    }

    v8 = *(v0 + 528);

    ++v7;
    if (v12 == v8)
    {

      v25 = *(v0 + 512);

      goto LABEL_29;
    }
  }

  v23 = *(*(v0 + 456) + *(v0 + 496));
  *(v0 + 560) = v23;
  *(v0 + 144) = v0;
  *(v0 + 184) = v0 + 408;
  *(v0 + 152) = sub_1B1CFEA3C;
  v24 = swift_continuation_init();
  *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751E0, &qword_1B1D86840);
  *(v0 + 336) = MEMORY[0x1E69E9820];
  *(v0 + 344) = 1107296256;
  *(v0 + 352) = sub_1B1D030EC;
  *(v0 + 360) = &block_descriptor_36;
  *(v0 + 368) = v24;
  [v23 _moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler_];

  return MEMORY[0x1EEE6DEC8](v0 + 144);
}

uint64_t sub_1B1CFEA3C()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1CFEB1C, 0, 0);
}

uint64_t sub_1B1CFEB1C()
{
  v1 = *(v0 + 560);
  v2 = *(v0 + 544);
  v3 = *(v0 + 536);
  v4 = *(v0 + 528);

  if (v2 == v4)
  {
LABEL_2:

    if (qword_1EB7749C0 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = *(v0 + 544);
    v20 = (v0 + 520);
    while (1)
    {
      v22 = *v20;
      if ((*v20 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x1B273B2E0](v19);
      }

      else
      {
        if (v19 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_29;
        }

        v23 = *(v22 + 8 * v19 + 32);
      }

      v24 = v23;
      *(v0 + 536) = v23;
      v25 = v19 + 1;
      *(v0 + 544) = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      v26 = [v23 savedAccount];
      *(v0 + 552) = v26;
      if ([v26 canBeDeletedByServiceViaCredentialUpdater])
      {
        v34 = *(*(v0 + 456) + *(v0 + 496));
        *(v0 + 560) = v34;
        *(v0 + 144) = v0;
        *(v0 + 184) = v0 + 408;
        *(v0 + 152) = sub_1B1CFEA3C;
        v35 = swift_continuation_init();
        *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751E0, &qword_1B1D86840);
        *(v0 + 336) = MEMORY[0x1E69E9820];
        *(v0 + 344) = 1107296256;
        *(v0 + 352) = sub_1B1D030EC;
        *(v0 + 360) = &block_descriptor_36;
        *(v0 + 368) = v35;
        [v34 _moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler_];
        v18 = v0 + 144;
        goto LABEL_25;
      }

      if (qword_1EB7749C0 != -1)
      {
        swift_once();
      }

      v27 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v27, qword_1EB782548);
      v28 = sub_1B1D7BD6C();
      v29 = sub_1B1D7BFEC();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 0;
        _os_log_impl(&dword_1B1C8D000, v28, v29, "Passkey cannot be deleted by service.", v30, 2u);
        MEMORY[0x1B273C4C0](v30, -1, -1);
      }

      v21 = *(v0 + 528);

      ++v19;
      if (v25 == v21)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  swift_once();
LABEL_3:
  v5 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v5, qword_1EB782548);
  v6 = sub_1B1D7BD6C();
  v7 = sub_1B1D7BFEC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B1C8D000, v6, v7, "Successfully moved passkey to Recently Deleted.", v8, 2u);
    MEMORY[0x1B273C4C0](v8, -1, -1);
  }

  sub_1B1D7B48C();
  if (!v9)
  {
    sub_1B1D7B45C();
  }

  v10 = *(v0 + 456);
  if (*(v10 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_options) == 1)
  {
    v11 = *(v10 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_passwordsNotificationManager);
    *(v0 + 568) = v11;
    swift_unknownObjectRetain();
    v12 = sub_1B1D7BE1C();
    *(v0 + 576) = v12;

    v13 = sub_1B1D7BE1C();
    *(v0 + 584) = v13;

    v14 = sub_1B1D7BE1C();
    *(v0 + 592) = v14;
    v15 = sub_1B1D7B4DC();
    *(v0 + 600) = v15;
    v16 = *(v10 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_isClientEntitledWebBrowser);
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_1B1CFF0C0;
    v17 = swift_continuation_init();
    *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
    *(v0 + 272) = MEMORY[0x1E69E9820];
    *(v0 + 280) = 1107296256;
    *(v0 + 288) = sub_1B1CFC258;
    *(v0 + 296) = &block_descriptor_33;
    *(v0 + 304) = v17;
    [v11 schedulePasskeyMovedToRecentlyDeletedNotificationForApp:v12 relyingPartyID:v13 userName:v14 credentialID:v15 shouldUseRelyingPartyForServiceName:v16 completionHandler:?];
    v18 = v0 + 80;
LABEL_25:

    return MEMORY[0x1EEE6DEC8](v18);
  }

  else
  {
    v31 = *(v0 + 512);

    v32 = *(v0 + 8);

    return v32();
  }
}

uint64_t sub_1B1CFF0C0()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1CFF1A0, 0, 0);
}

uint64_t sub_1B1CFF1A0()
{
  v1 = *(v0 + 600);
  v2 = *(v0 + 592);
  v3 = *(v0 + 584);
  v4 = *(v0 + 576);
  v5 = *(v0 + 512);

  swift_unknownObjectRelease();

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1B1CFF3DC(uint64_t a1, void *a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v7 = sub_1B1D7BE4C();
  v9 = v8;
  v4[4] = v8;
  v10 = a2;
  a4;
  v11 = sub_1B1D7B4EC();
  v13 = v12;

  v4[5] = v11;
  v4[6] = v13;
  v14 = swift_task_alloc();
  v4[7] = v14;
  *v14 = v4;
  v14[1] = sub_1B1CFF4E0;

  return sub_1B1CFC76C(v7, v9, v11, v13);
}

uint64_t sub_1B1CFF4E0()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 48);
  v6 = *(*v1 + 40);
  v7 = *(*v1 + 16);
  v8 = *v1;

  sub_1B1CDEFDC(v6, v5);

  v9 = *(v3 + 24);
  if (v2)
  {
    v10 = sub_1B1D7B43C();

    (*(v9 + 16))(v9, v10);
  }

  else
  {
    (*(v9 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v11 = *(v8 + 8);

  return v11();
}

uint64_t sub_1B1CFF6BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[22] = a5;
  v6[23] = v5;
  v6[20] = a3;
  v6[21] = a4;
  v6[18] = a1;
  v6[19] = a2;
  v7 = sub_1B1D7C08C();
  v6[24] = v7;
  v6[25] = *(v7 - 8);
  v6[26] = swift_task_alloc();
  v8 = sub_1B1D7B5BC();
  v6[27] = v8;
  v6[28] = *(v8 - 8);
  v6[29] = swift_task_alloc();
  v9 = sub_1B1D7B49C();
  v6[30] = v9;
  v6[31] = *(v9 - 8);
  v6[32] = swift_task_alloc();
  v10 = sub_1B1D7B5CC();
  v6[33] = v10;
  v6[34] = *(v10 - 8);
  v6[35] = swift_task_alloc();
  v11 = sub_1B1D7B5DC();
  v6[36] = v11;
  v6[37] = *(v11 - 8);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v12 = sub_1B1D7B61C();
  v6[40] = v12;
  v6[41] = *(v12 - 8);
  v6[42] = swift_task_alloc();
  v6[43] = swift_task_alloc();
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v6[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1CFF98C, 0, 0);
}

uint64_t sub_1B1CFF98C()
{
  if (sub_1B1D03B20(v0[18], v0[19], *(v0[23] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_connection), *(v0[23] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_options)))
  {
    v1 = v0[23];

    v0[47] = sub_1B1D20B7C(v2);

    v3 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore);
    v0[48] = v3;
    v3;
    v4 = swift_task_alloc();
    v0[49] = v4;
    *v4 = v0;
    v4[1] = sub_1B1CFFC5C;
    v6 = v0[18];
    v5 = v0[19];

    return MEMORY[0x1EEE33140](v6, v5);
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v7 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v7, qword_1EB782548);
    v8 = sub_1B1D7BD6C();
    v9 = sub_1B1D7C00C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1B1C8D000, v8, v9, "Connected process is not entitled to make this call.", v10, 2u);
      MEMORY[0x1B273C4C0](v10, -1, -1);
    }

    v12 = v0[18];
    v11 = v0[19];

    sub_1B1CE955C();
    swift_allocError();
    *v13 = v12;
    v13[1] = v11;
    swift_willThrow();

    v14 = v0[1];

    return v14();
  }
}

uint64_t sub_1B1CFFC5C(uint64_t a1)
{
  v2 = *(*v1 + 384);
  *(*v1 + 400) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1B1CFFD78, 0, 0);
}

uint64_t sub_1B1CFFD78()
{
  v1 = *(v0 + 400);
  v130 = *(v1 + 16);
  if (v130)
  {
    v2 = 0;
    v3 = *(v0 + 328);
    v4 = *(v0 + 272);
    v6 = *(v0 + 160);
    v5 = *(v0 + 168);
    v126 = *MEMORY[0x1E69C8778];
    v124 = (v4 + 8);
    v125 = (v4 + 104);
    v123 = (*(v0 + 296) + 8);
    v8 = v5 != 0xC000000000000000 || v6 != 0;
    v118 = v8;
    v119 = v5 >> 62;
    v127 = *(v0 + 168);
    v117 = BYTE6(v5);
    v121 = (v3 + 8);
    v128 = *(v0 + 328);
    v122 = (v3 + 32);
    v116 = *(v0 + 160);
    v9 = __OFSUB__(HIDWORD(v6), v6);
    v115 = v9;
    v114 = HIDWORD(v6) - v6;
    v10 = MEMORY[0x1E69E7CC0];
    v120 = *(v0 + 400);
    while (1)
    {
      if (v2 >= *(v1 + 16))
      {
        __break(1u);
        goto LABEL_110;
      }

      v15 = *(v0 + 312);
      v17 = *(v0 + 280);
      v16 = *(v0 + 288);
      v18 = *(v0 + 264);
      v133 = (*(v128 + 80) + 32) & ~*(v128 + 80);
      v132 = *(v128 + 72);
      (*(v128 + 16))(*(v0 + 368), *(v0 + 400) + v133 + v132 * v2, *(v0 + 320));
      sub_1B1D7B60C();
      (*v125)(v17, v126, v18);
      v19 = sub_1B1D7B5EC();
      v21 = v20;
      (*v124)(v17, v18);
      (*v123)(v15, v16);
      if (v21 >> 60 == 15)
      {
        break;
      }

      if (v127 >> 60 == 15)
      {
        goto LABEL_12;
      }

      v28 = v21 >> 62;
      if (v21 >> 62 == 3)
      {
        if (v19)
        {
          v29 = 0;
        }

        else
        {
          v29 = v21 == 0xC000000000000000;
        }

        v30 = v119;
        v32 = !v29 || v119 < 3;
        if (((v32 | v118) & 1) == 0)
        {
          sub_1B1CE111C(0, 0xC000000000000000);
          sub_1B1C91AE4(0, 0xC000000000000000);
          goto LABEL_20;
        }

        v33 = 0;
      }

      else
      {
        v30 = v119;
        if (v28)
        {
          if (v28 == 1)
          {
            LODWORD(v33) = HIDWORD(v19) - v19;
            if (__OFSUB__(HIDWORD(v19), v19))
            {
              goto LABEL_113;
            }

            v33 = v33;
          }

          else
          {
            v35 = *(v19 + 16);
            v34 = *(v19 + 24);
            v36 = __OFSUB__(v34, v35);
            v33 = v34 - v35;
            if (v36)
            {
              goto LABEL_114;
            }
          }
        }

        else
        {
          v33 = BYTE6(v21);
        }
      }

      if (v30 > 1)
      {
        if (v30 != 2)
        {
          if (!v33)
          {
LABEL_58:
            v46 = *(v0 + 160);
            v45 = *(v0 + 168);
            sub_1B1CE111C(v46, v45);
            sub_1B1C91AE4(v46, v45);
            goto LABEL_20;
          }

LABEL_57:
          v44 = *(v0 + 160);
          v43 = *(v0 + 168);
          sub_1B1CE111C(v44, v43);
          sub_1B1C91AE4(v44, v43);
          v13 = v19;
          v14 = v21;
LABEL_13:
          sub_1B1C91AE4(v13, v14);
          goto LABEL_14;
        }

        v39 = *(v116 + 16);
        v38 = *(v116 + 24);
        v36 = __OFSUB__(v38, v39);
        v37 = v38 - v39;
        if (v36)
        {
          goto LABEL_111;
        }
      }

      else
      {
        v37 = v117;
        if (v30)
        {
          v37 = v114;
          if (v115)
          {
            goto LABEL_112;
          }
        }
      }

      if (v33 != v37)
      {
        goto LABEL_57;
      }

      if (v33 < 1)
      {
        goto LABEL_58;
      }

      v41 = *(v0 + 160);
      v40 = *(v0 + 168);
      sub_1B1CE111C(v41, v40);
      sub_1B1C91B94(v41, v40);
      sub_1B1C91B94(v19, v21);
      v42 = sub_1B1D038D8(v19, v21, v41, v40);
      v1 = v120;
      sub_1B1C91AE4(v19, v21);
      sub_1B1C91AE4(v41, v40);
      sub_1B1C91AE4(v19, v21);
      if (v42)
      {
        goto LABEL_21;
      }

LABEL_14:
      (*v121)(*(v0 + 368), *(v0 + 320));
LABEL_15:
      if (v130 == ++v2)
      {
        goto LABEL_61;
      }
    }

    if (v127 >> 60 == 15)
    {
      sub_1B1CE111C(*(v0 + 160), *(v0 + 168));
LABEL_20:
      sub_1B1C91AE4(v19, v21);
LABEL_21:
      v22 = *v122;
      (*v122)(*(v0 + 360), *(v0 + 368), *(v0 + 320));
      v135 = v10;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1B1D194B4(0, *(v10 + 16) + 1, 1);
      }

      v23 = v10;
      v24 = *(v10 + 16);
      v25 = *(v23 + 24);
      if (v24 >= v25 >> 1)
      {
        sub_1B1D194B4((v25 > 1), v24 + 1, 1);
        v23 = v135;
      }

      v26 = *(v0 + 360);
      v27 = *(v0 + 320);
      *(v23 + 16) = v24 + 1;
      v22(v23 + v133 + v24 * v132, v26, v27);
      v10 = v23;
      v1 = v120;
      goto LABEL_15;
    }

LABEL_12:
    v12 = *(v0 + 160);
    v11 = *(v0 + 168);
    sub_1B1CE111C(v12, v11);
    sub_1B1C91AE4(v19, v21);
    v13 = v12;
    v14 = v11;
    goto LABEL_13;
  }

  v10 = MEMORY[0x1E69E7CC0];
LABEL_61:

  v134 = *(v10 + 16);
  if (v134)
  {
    v47 = 0;
    v48 = *(v0 + 328);
    v131 = (v48 + 32);
    v49 = MEMORY[0x1E69E7CC0];
    v129 = v10;
    while (v47 < *(v10 + 16))
    {
      v50 = *(v0 + 376);
      v51 = (*(v48 + 80) + 32) & ~*(v48 + 80);
      v52 = *(v48 + 72);
      (*(v48 + 16))(*(v0 + 352), v10 + v51 + v52 * v47, *(v0 + 320));
      v53 = sub_1B1D7B5AC();
      v55 = v54;
      LOBYTE(v50) = sub_1B1D0137C(v53, v54, v50);
      sub_1B1CDEFDC(v53, v55);
      if (v50)
      {
        (*(v48 + 8))(*(v0 + 352), *(v0 + 320));
      }

      else
      {
        v56 = *v131;
        (*v131)(*(v0 + 344), *(v0 + 352), *(v0 + 320));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1B1D194B4(0, *(v49 + 16) + 1, 1);
        }

        v58 = *(v49 + 16);
        v57 = *(v49 + 24);
        if (v58 >= v57 >> 1)
        {
          sub_1B1D194B4((v57 > 1), v58 + 1, 1);
        }

        v59 = *(v0 + 344);
        v60 = *(v0 + 320);
        *(v49 + 16) = v58 + 1;
        v56(v49 + v51 + v58 * v52, v59, v60);
        v10 = v129;
      }

      if (v134 == ++v47)
      {
        goto LABEL_73;
      }
    }

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
    goto LABEL_115;
  }

  v49 = MEMORY[0x1E69E7CC0];
LABEL_73:
  *(v0 + 408) = v49;

  if (!*(v49 + 16))
  {

    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v65 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v65, qword_1EB782548);
    v66 = sub_1B1D7BD6C();
    v67 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_1B1C8D000, v66, v67, "No invalid passkeys found in keychain.", v68, 2u);
      MEMORY[0x1B273C4C0](v68, -1, -1);
    }

LABEL_96:
    v96 = *(v0 + 200);
    v95 = *(v0 + 208);
    v97 = *(v0 + 192);
    v99 = *(v0 + 144);
    v98 = *(v0 + 152);
    sub_1B1D7C06C();
    v100 = sub_1B1D7C03C();
    v102 = v101;
    (*(v96 + 8))(v95, v97);
    if (v100 == v99 && v102 == v98)
    {
    }

    else
    {
      v103 = sub_1B1D7C50C();

      if ((v103 & 1) == 0)
      {
        v109 = *(*(v0 + 184) + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
        v110 = sub_1B1D7BE1C();
        *(v0 + 480) = v110;
        v111 = sub_1B1D7B4DC();
        *(v0 + 488) = v111;
        v112 = sub_1B1D7BEDC();
        *(v0 + 496) = v112;
        *(v0 + 16) = v0;
        *(v0 + 24) = sub_1B1D01194;
        v113 = swift_continuation_init();
        *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
        *(v0 + 80) = MEMORY[0x1E69E9820];
        *(v0 + 88) = 1107296256;
        *(v0 + 96) = sub_1B1CFC258;
        *(v0 + 104) = &block_descriptor_25;
        *(v0 + 112) = v113;
        [v109 reportAllAcceptedPublicKeyCredentialsWithRelyingParty:v110 userHandle:v111 acceptedCredentialIDs:v112 completionHandler:v0 + 80];

        return MEMORY[0x1EEE6DEC8](v0 + 16);
      }
    }

    if (qword_1EB7749C0 == -1)
    {
LABEL_101:
      v104 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v104, qword_1EB782548);
      v105 = sub_1B1D7BD6C();
      v106 = sub_1B1D7BFEC();
      if (os_log_type_enabled(v105, v106))
      {
        v107 = swift_slowAlloc();
        *v107 = 0;
        _os_log_impl(&dword_1B1C8D000, v105, v106, "Received accepted list for Apple Account passkey.", v107, 2u);
        MEMORY[0x1B273C4C0](v107, -1, -1);
      }

      v108 = *(v0 + 8);

      return v108();
    }

LABEL_115:
    swift_once();
    goto LABEL_101;
  }

  if (qword_1EB7749C0 != -1)
  {
    swift_once();
  }

  v61 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v61, qword_1EB782548);

  v62 = sub_1B1D7BD6C();
  v63 = sub_1B1D7BFEC();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 134217984;
    *(v64 + 4) = *(v49 + 16);

    _os_log_impl(&dword_1B1C8D000, v62, v63, "Found %ld invalid passkeys in keychain.", v64, 0xCu);
    MEMORY[0x1B273C4C0](v64, -1, -1);
  }

  else
  {
  }

  v69 = sub_1B1D7BE1C();
  v70 = [v69 safari_bestURLForUserTypedString];

  if (!v70)
  {

    goto LABEL_96;
  }

  sub_1B1D7B47C();

  v71 = *(v49 + 16);
  *(v0 + 416) = v71;
  if (!v71)
  {
LABEL_95:

    (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
    goto LABEL_96;
  }

  v72 = 0;
  v73 = *(v0 + 328);
  v74 = *(v73 + 80);
  *(v0 + 504) = v74;
  v75 = *(v73 + 72);
  *(v0 + 424) = v75;
  v76 = *(v73 + 16);
  *(v0 + 432) = v76;
  v77 = *MEMORY[0x1E69C8770];
  *(v0 + 508) = v77;
  while (1)
  {
    *(v0 + 440) = v72;
    v78 = *(v0 + 296);
    v79 = *(v0 + 304);
    v80 = *(v0 + 288);
    v82 = *(v0 + 224);
    v81 = *(v0 + 232);
    v83 = *(v0 + 216);
    v76(*(v0 + 336), *(v0 + 408) + ((v74 + 32) & ~v74) + v75 * v72, *(v0 + 320));
    sub_1B1D7B60C();
    (*(v82 + 104))(v81, v77, v83);
    v84 = sub_1B1D7B5FC();
    v86 = v85;
    *(v0 + 448) = v85;
    (*(v82 + 8))(v81, v83);
    (*(v78 + 8))(v79, v80);
    if (v86)
    {
      break;
    }

    v87 = *(v0 + 416);
    v88 = *(v0 + 440) + 1;
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    if (v88 == v87)
    {
      goto LABEL_95;
    }

    v76 = *(v0 + 432);
    v72 = *(v0 + 440) + 1;
    v77 = *(v0 + 508);
    v75 = *(v0 + 424);
    LOBYTE(v74) = *(v0 + 504);
  }

  v89 = sub_1B1D7B5AC();
  v91 = v90;
  *(v0 + 456) = v89;
  *(v0 + 464) = v90;
  v92 = swift_task_alloc();
  *(v0 + 472) = v92;
  *v92 = v0;
  v92[1] = sub_1B1D00B18;
  v93 = *(v0 + 256);

  return sub_1B1CFE06C(v93, v84, v86, v89, v91);
}

uint64_t sub_1B1D00B18()
{
  v1 = *(*v0 + 464);
  v2 = *(*v0 + 456);

  sub_1B1CDEFDC(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1B1D00C6C, 0, 0);
}

uint64_t sub_1B1D00C6C()
{
  while (1)
  {
    v1 = *(v0 + 416);
    v2 = *(v0 + 440) + 1;
    (*(*(v0 + 328) + 8))(*(v0 + 336), *(v0 + 320));
    if (v2 == v1)
    {
      break;
    }

    v3 = *(v0 + 432);
    v4 = *(v0 + 440) + 1;
    *(v0 + 440) = v4;
    v5 = *(v0 + 508);
    v7 = *(v0 + 296);
    v6 = *(v0 + 304);
    v8 = *(v0 + 288);
    v10 = *(v0 + 224);
    v9 = *(v0 + 232);
    v11 = *(v0 + 216);
    v3(*(v0 + 336), *(v0 + 408) + ((*(v0 + 504) + 32) & ~*(v0 + 504)) + *(v0 + 424) * v4, *(v0 + 320));
    sub_1B1D7B60C();
    (*(v10 + 104))(v9, v5, v11);
    v12 = sub_1B1D7B5FC();
    v14 = v13;
    *(v0 + 448) = v13;
    (*(v10 + 8))(v9, v11);
    (*(v7 + 8))(v6, v8);
    if (v14)
    {
      v15 = sub_1B1D7B5AC();
      v17 = v16;
      *(v0 + 456) = v15;
      *(v0 + 464) = v16;
      v18 = swift_task_alloc();
      *(v0 + 472) = v18;
      *v18 = v0;
      v18[1] = sub_1B1D00B18;
      v19 = *(v0 + 256);

      return sub_1B1CFE06C(v19, v12, v14, v15, v17);
    }
  }

  (*(*(v0 + 248) + 8))(*(v0 + 256), *(v0 + 240));
  v22 = *(v0 + 200);
  v21 = *(v0 + 208);
  v23 = *(v0 + 192);
  v25 = *(v0 + 144);
  v24 = *(v0 + 152);
  sub_1B1D7C06C();
  v26 = sub_1B1D7C03C();
  v28 = v27;
  (*(v22 + 8))(v21, v23);
  if (v26 == v25 && v28 == v24)
  {

LABEL_10:
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v30 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v30, qword_1EB782548);
    v31 = sub_1B1D7BD6C();
    v32 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_1B1C8D000, v31, v32, "Received accepted list for Apple Account passkey.", v33, 2u);
      MEMORY[0x1B273C4C0](v33, -1, -1);
    }

    v34 = *(v0 + 8);

    return v34();
  }

  v29 = sub_1B1D7C50C();

  if (v29)
  {
    goto LABEL_10;
  }

  v35 = *(*(v0 + 184) + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
  v36 = sub_1B1D7BE1C();
  *(v0 + 480) = v36;
  v37 = sub_1B1D7B4DC();
  *(v0 + 488) = v37;
  v38 = sub_1B1D7BEDC();
  *(v0 + 496) = v38;
  *(v0 + 16) = v0;
  *(v0 + 24) = sub_1B1D01194;
  v39 = swift_continuation_init();
  *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1B1CFC258;
  *(v0 + 104) = &block_descriptor_25;
  *(v0 + 112) = v39;
  [v35 reportAllAcceptedPublicKeyCredentialsWithRelyingParty:v36 userHandle:v37 acceptedCredentialIDs:v38 completionHandler:v0 + 80];

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1B1D01194()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1D01274, 0, 0);
}

uint64_t sub_1B1D01274()
{
  v1 = *(v0 + 488);
  v2 = *(v0 + 480);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1B1D0137C(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  if (*(a3 + 16))
  {
    sub_1B1D7C5CC();
    sub_1B1D7B4FC();
    v6 = sub_1B1D7C61C();
    v7 = a3 + 56;
    v8 = -1 << *(a3 + 32);
    v9 = v6 & ~v8;
    if ((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
    {
      v10 = ~v8;
      if (a1)
      {
        v11 = 0;
      }

      else
      {
        v11 = a2 == 0xC000000000000000;
      }

      v12 = !v11;
      v42 = v12;
      v13 = a2 >> 62;
      v14 = __OFSUB__(HIDWORD(a1), a1);
      v39 = v14;
      v37 = a2;
      v38 = HIDWORD(a1) - a1;
      v40 = v10;
      v41 = BYTE6(a2);
      v36 = a1;
      while (1)
      {
        v15 = (*(a3 + 48) + 16 * v9);
        v17 = *v15;
        v16 = v15[1];
        v18 = v16 >> 62;
        if (v16 >> 62 == 3)
        {
          break;
        }

        if (v18 > 1)
        {
          if (v18 != 2)
          {
            goto LABEL_37;
          }

          v24 = *(v17 + 16);
          v23 = *(v17 + 24);
          v25 = __OFSUB__(v23, v24);
          v22 = v23 - v24;
          if (v25)
          {
            goto LABEL_67;
          }

          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v18)
        {
          LODWORD(v22) = HIDWORD(v17) - v17;
          if (__OFSUB__(HIDWORD(v17), v17))
          {
            goto LABEL_68;
          }

          v22 = v22;
          if (v13 <= 1)
          {
LABEL_34:
            v26 = v41;
            if (v13)
            {
              v26 = v38;
              if (v39)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          v22 = BYTE6(v16);
          if (v13 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        if (v13 != 2)
        {
          if (!v22)
          {
            return 1;
          }

          goto LABEL_14;
        }

        v28 = *(a1 + 16);
        v27 = *(a1 + 24);
        v25 = __OFSUB__(v27, v28);
        v26 = v27 - v28;
        if (v25)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
        }

LABEL_40:
        if (v22 == v26)
        {
          if (v22 < 1)
          {
            return 1;
          }

          if (v18 <= 1)
          {
            if (!v18)
            {
              *v44 = v17;
              *&v44[8] = v16;
              v44[10] = BYTE2(v16);
              v44[11] = BYTE3(v16);
              v44[12] = BYTE4(v16);
              v44[13] = BYTE5(v16);
              sub_1B1CE111C(v17, v16);
              sub_1B1D036A8(v44, a1, a2, &v43);
              sub_1B1CDEFDC(v17, v16);
              if (v43)
              {
                return 1;
              }

LABEL_61:
              v10 = v40;
              goto LABEL_14;
            }

            if (v17 >> 32 < v17)
            {
              goto LABEL_69;
            }

            sub_1B1CE111C(v17, v16);
            v31 = sub_1B1D7B34C();
            if (v31)
            {
              v33 = sub_1B1D7B36C();
              if (__OFSUB__(v17, v33))
              {
                goto LABEL_72;
              }

              v31 += v17 - v33;
            }

LABEL_59:
            sub_1B1D7B35C();
            v34 = v31;
            a1 = v36;
            a2 = v37;
            sub_1B1D036A8(v34, v36, v37, v44);
            sub_1B1CDEFDC(v17, v16);
            if (v44[0])
            {
              return 1;
            }

            v7 = a3 + 56;
            goto LABEL_61;
          }

          if (v18 == 2)
          {
            v30 = *(v17 + 16);
            v29 = *(v17 + 24);
            sub_1B1CE111C(v17, v16);
            v31 = sub_1B1D7B34C();
            if (v31)
            {
              v32 = sub_1B1D7B36C();
              if (__OFSUB__(v30, v32))
              {
                goto LABEL_71;
              }

              v31 += v30 - v32;
            }

            if (__OFSUB__(v29, v30))
            {
              goto LABEL_70;
            }

            goto LABEL_59;
          }

          *&v44[6] = 0;
          *v44 = 0;
          sub_1B1CE111C(v17, v16);
          sub_1B1D036A8(v44, a1, a2, &v43);
          sub_1B1CDEFDC(v17, v16);
          if (v43)
          {
            return 1;
          }
        }

LABEL_14:
        v9 = (v9 + 1) & v10;
        if (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
        {
          return 0;
        }
      }

      if (v17)
      {
        v19 = 0;
      }

      else
      {
        v19 = v16 == 0xC000000000000000;
      }

      v21 = !v19 || v13 < 3;
      if (((v21 | v42) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v22 = 0;
      if (v13 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return 0;
}

uint64_t sub_1B1D01944(uint64_t a1, void *a2, void *a3, void *aBlock, void *a5)
{
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  v9 = sub_1B1D7BE4C();
  v11 = v10;
  v5[4] = v10;
  v12 = a2;
  v13 = a3;
  a5;
  v14 = sub_1B1D7B4EC();
  v16 = v15;

  v5[5] = v14;
  v5[6] = v16;
  v17 = sub_1B1D7BEEC();
  v5[7] = v17;

  v18 = swift_task_alloc();
  v5[8] = v18;
  *v18 = v5;
  v18[1] = sub_1B1D04264;

  return sub_1B1CFF6BC(v9, v11, v14, v16, v17);
}

uint64_t sub_1B1D01A80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[72] = v4;
  v5[71] = a4;
  v5[70] = a3;
  v5[69] = a2;
  v5[68] = a1;
  v6 = sub_1B1D7B49C();
  v5[73] = v6;
  v5[74] = *(v6 - 8);
  v5[75] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B1D01B50, 0, 0);
}

uint64_t sub_1B1D01B50()
{
  v1 = *(v0 + 576);
  v2 = *(v0 + 552);
  v3 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_connection);
  v4 = *(v0 + 544);
  v5 = *(v1 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_options);
  *(v0 + 760) = v5;
  if (sub_1B1D03B20(v4, v2, v3, v5))
  {
    *(v0 + 608) = sub_1B1CFBEDC();
    *(v0 + 616) = v6;
    if (!v6)
    {
      if (qword_1EB7749C0 != -1)
      {
        swift_once();
      }

      v28 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v28, qword_1EB782548);
      v29 = sub_1B1D7BD6C();
      v30 = sub_1B1D7C00C();
      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_1B1C8D000, v29, v30, "Could not retrieve calling app name", v31, 2u);
        MEMORY[0x1B273C4C0](v31, -1, -1);
      }

      v27 = *(v0 + 8);
      goto LABEL_18;
    }

    v7 = sub_1B1D7BE1C();
    v8 = [v7 safari_bestURLForUserTypedString];

    if (v8)
    {
      v9 = *(v0 + 576);
      sub_1B1D7B47C();

      v10 = objc_allocWithZone(MEMORY[0x1E69C8A58]);
      v11 = sub_1B1D7BE1C();
      v12 = [v10 initWithString:v11 matchingType:1];
      *(v0 + 624) = v12;

      v13 = objc_allocWithZone(MEMORY[0x1E69C8A30]);
      v14 = v12;
      v15 = sub_1B1D7B46C();
      v16 = [v13 initWithURL:v15 options:17 userNameQuery:v14 associatedDomainsManager:0 webFrameIdentifier:0];
      *(v0 + 632) = v16;

      v17 = OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore;
      *(v0 + 640) = OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_accountStore;
      v18 = *(v9 + v17);
      *(v0 + 648) = v18;
      *(v0 + 16) = v0;
      *(v0 + 56) = v0 + 528;
      *(v0 + 24) = sub_1B1D02010;
      v19 = swift_continuation_init();
      *(v0 + 328) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751C8, &qword_1B1D86830);
      *(v0 + 272) = MEMORY[0x1E69E9820];
      *(v0 + 280) = 1107296256;
      *(v0 + 288) = sub_1B1D030EC;
      *(v0 + 296) = &block_descriptor_2;
      *(v0 + 304) = v19;
      [v18 savedAccountsMatchingCriteria:v16 withCompletionHandler:v0 + 272];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    sub_1B1CE955C();
    swift_allocError();
    *v32 = xmmword_1B1D866D0;
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v20 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v20, qword_1EB782548);
    v21 = sub_1B1D7BD6C();
    v22 = sub_1B1D7C00C();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1B1C8D000, v21, v22, "Connected process is not entitled to make this call.", v23, 2u);
      MEMORY[0x1B273C4C0](v23, -1, -1);
    }

    v24 = *(v0 + 552);
    v25 = *(v0 + 544);

    sub_1B1CE955C();
    swift_allocError();
    *v26 = v25;
    v26[1] = v24;
  }

  swift_willThrow();

  v27 = *(v0 + 8);
LABEL_18:

  return v27();
}

uint64_t sub_1B1D02010()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1D020F0, 0, 0);
}

uint64_t sub_1B1D020F0()
{
  v1 = v0[81];
  v2 = v0[79];
  v3 = v0[66];
  v0[82] = v3;

  if (v3)
  {
    v4 = [v3 exactMatches];
    sub_1B1CED540(0, &qword_1EB7751D8, 0x1E69C8A28);
    v5 = sub_1B1D7BEEC();
    v0[83] = v5;

    if (v5 >> 62)
    {
      goto LABEL_25;
    }

    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v0[84] = v6;
    if (v6)
    {
      do
      {
        v7 = 0;
        while (1)
        {
          v9 = v0[83];
          if ((v9 & 0xC000000000000001) != 0)
          {
            v10 = MEMORY[0x1B273B2E0](v7);
          }

          else
          {
            if (v7 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_24;
            }

            v10 = *(v9 + 8 * v7 + 32);
          }

          v11 = v10;
          v0[85] = v10;
          v12 = v7 + 1;
          v0[86] = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          v13 = [v10 savedAccount];
          v0[87] = v13;
          if ([v13 canBeDeletedByServiceViaCredentialUpdater])
          {
            v22 = v0 + 26;
            v23 = *(v0[72] + v0[80]);
            v0[88] = v23;
            v0[26] = v0;
            v0[31] = v0 + 67;
            v0[27] = sub_1B1D02608;
            v24 = swift_continuation_init();
            v0[65] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751E0, &qword_1B1D86840);
            v0[58] = MEMORY[0x1E69E9820];
            v0[59] = 1107296256;
            v0[60] = sub_1B1D030EC;
            v0[61] = &block_descriptor_21;
            v0[62] = v24;
            [v23 _moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler_];
            goto LABEL_28;
          }

          if (qword_1EB7749C0 != -1)
          {
            swift_once();
          }

          v14 = sub_1B1D7BD8C();
          __swift_project_value_buffer(v14, qword_1EB782548);
          v15 = sub_1B1D7BD6C();
          v16 = sub_1B1D7BFEC();
          if (os_log_type_enabled(v15, v16))
          {
            v17 = swift_slowAlloc();
            *v17 = 0;
            _os_log_impl(&dword_1B1C8D000, v15, v16, "Password cannot be deleted by service.", v17, 2u);
            MEMORY[0x1B273C4C0](v17, -1, -1);
          }

          v8 = v0[84];

          ++v7;
          if (v12 == v8)
          {
            goto LABEL_26;
          }
        }

        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v25 = sub_1B1D7C1FC();
        v0[84] = v25;
      }

      while (v25);
    }

LABEL_26:
  }

  else
  {

    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v18 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v18, qword_1EB782548);
    v19 = sub_1B1D7BD6C();
    v20 = sub_1B1D7BFEC();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_1B1C8D000, v19, v20, "No savedAccount found matching the domain and username.", v21, 2u);
      MEMORY[0x1B273C4C0](v21, -1, -1);
    }
  }

  v22 = v0 + 10;
  v26 = *(v0[72] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
  v27 = sub_1B1D7BE1C();
  v0[93] = v27;
  v28 = sub_1B1D7BE1C();
  v0[94] = v28;
  v0[10] = v0;
  v0[11] = sub_1B1D02F44;
  v29 = swift_continuation_init();
  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
  v0[42] = MEMORY[0x1E69E9820];
  v0[43] = 1107296256;
  v0[44] = sub_1B1CFC258;
  v0[45] = &block_descriptor_15;
  v0[46] = v29;
  [v26 reportUnusedPasswordCredentialWithDomain:v27 username:v28 completionHandler:v0 + 42];
LABEL_28:

  return MEMORY[0x1EEE6DEC8](v22);
}

uint64_t sub_1B1D02608()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1D026E8, 0, 0);
}

uint64_t sub_1B1D026E8()
{
  v1 = *(v0 + 704);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);

  if (v2 != v4)
  {
    v37 = v0 + 536;
    v18 = *(v0 + 688);
    v19 = (v0 + 664);
    while (1)
    {
      v21 = *v19;
      if ((*v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1B273B2E0](v18);
      }

      else
      {
        if (v18 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v22 = *(v21 + 8 * v18 + 32);
      }

      v23 = v22;
      *(v0 + 680) = v22;
      v24 = v18 + 1;
      *(v0 + 688) = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v25 = [v22 savedAccount];
      *(v0 + 696) = v25;
      if ([v25 canBeDeletedByServiceViaCredentialUpdater])
      {
        v10 = v0 + 208;
        v34 = *(*(v0 + 576) + *(v0 + 640));
        *(v0 + 704) = v34;
        *(v0 + 208) = v0;
        *(v0 + 248) = v37;
        *(v0 + 216) = sub_1B1D02608;
        v35 = swift_continuation_init();
        *(v0 + 520) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751E0, &qword_1B1D86840);
        *(v0 + 464) = MEMORY[0x1E69E9820];
        *(v0 + 472) = 1107296256;
        *(v0 + 480) = sub_1B1D030EC;
        *(v0 + 488) = &block_descriptor_21;
        *(v0 + 496) = v35;
        [v34 _moveCredentialTypesToRecentlyDeleted_fromSavedAccount_completionHandler_];
        goto LABEL_21;
      }

      if (qword_1EB7749C0 != -1)
      {
        swift_once();
      }

      v26 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v26, qword_1EB782548);
      v27 = sub_1B1D7BD6C();
      v28 = sub_1B1D7BFEC();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_1B1C8D000, v27, v28, "Password cannot be deleted by service.", v29, 2u);
        MEMORY[0x1B273C4C0](v29, -1, -1);
      }

      v20 = *(v0 + 672);

      ++v18;
      if (v24 == v20)
      {
        goto LABEL_2;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

LABEL_2:

  if (qword_1EB7749C0 != -1)
  {
LABEL_26:
    swift_once();
  }

  v5 = sub_1B1D7BD8C();
  __swift_project_value_buffer(v5, qword_1EB782548);
  v6 = sub_1B1D7BD6C();
  v7 = sub_1B1D7BFEC();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1B1C8D000, v6, v7, "Successfully moved password to Recently Deleted.", v8, 2u);
    MEMORY[0x1B273C4C0](v8, -1, -1);
  }

  v9 = *(v0 + 760);

  if (v9 == 1)
  {
    v10 = v0 + 144;
    v11 = *(v0 + 576);
    v12 = *(v11 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_passwordsNotificationManager);
    *(v0 + 712) = v12;
    swift_unknownObjectRetain();
    v13 = sub_1B1D7BE1C();
    *(v0 + 720) = v13;

    v14 = sub_1B1D7BE1C();
    *(v0 + 728) = v14;
    v15 = sub_1B1D7BE1C();
    *(v0 + 736) = v15;
    v16 = *(v11 + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_isClientEntitledWebBrowser);
    *(v0 + 144) = v0;
    *(v0 + 152) = sub_1B1D02CE4;
    v17 = swift_continuation_init();
    *(v0 + 456) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
    *(v0 + 400) = MEMORY[0x1E69E9820];
    *(v0 + 408) = 1107296256;
    *(v0 + 416) = sub_1B1CFC258;
    *(v0 + 424) = &block_descriptor_18;
    *(v0 + 432) = v17;
    [v12 schedulePasswordMovedToRecentlyDeletedNotificationForApp:v13 domain:v14 userName:v15 shouldUseRelyingPartyForServiceName:v16 completionHandler:?];
  }

  else
  {
    v10 = v0 + 80;

    v30 = *(*(v0 + 576) + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
    v31 = sub_1B1D7BE1C();
    *(v0 + 744) = v31;
    v32 = sub_1B1D7BE1C();
    *(v0 + 752) = v32;
    *(v0 + 80) = v0;
    *(v0 + 88) = sub_1B1D02F44;
    v33 = swift_continuation_init();
    *(v0 + 392) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
    *(v0 + 336) = MEMORY[0x1E69E9820];
    *(v0 + 344) = 1107296256;
    *(v0 + 352) = sub_1B1CFC258;
    *(v0 + 360) = &block_descriptor_15;
    *(v0 + 368) = v33;
    [v30 reportUnusedPasswordCredentialWithDomain:v31 username:v32 completionHandler:{v0 + 336, v37}];
  }

LABEL_21:

  return MEMORY[0x1EEE6DEC8](v10);
}

uint64_t sub_1B1D02CE4()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1D02DC4, 0, 0);
}

uint64_t sub_1B1D02DC4()
{
  v1 = v0[92];
  v2 = v0[91];
  v3 = v0[90];
  swift_unknownObjectRelease();

  v4 = *(v0[72] + OBJC_IVAR____TtC22AuthenticationServices29_ASCredentialUpdateController_credentialProviderExtensionNotificationManager);
  v5 = sub_1B1D7BE1C();
  v0[93] = v5;
  v6 = sub_1B1D7BE1C();
  v0[94] = v6;
  v0[10] = v0;
  v0[11] = sub_1B1D02F44;
  v7 = swift_continuation_init();
  v0[49] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751D0, &qword_1B1D86838);
  v0[42] = MEMORY[0x1E69E9820];
  v0[43] = 1107296256;
  v0[44] = sub_1B1CFC258;
  v0[45] = &block_descriptor_15;
  v0[46] = v7;
  [v4 reportUnusedPasswordCredentialWithDomain:v5 username:v6 completionHandler:v0 + 42];

  return MEMORY[0x1EEE6DEC8](v0 + 10);
}

uint64_t sub_1B1D02F44()
{

  return MEMORY[0x1EEE6DFA0](sub_1B1D03024, 0, 0);
}

uint64_t sub_1B1D03024()
{
  v1 = *(v0 + 752);
  v2 = *(v0 + 744);
  v3 = *(v0 + 656);
  v4 = *(v0 + 624);
  v5 = *(v0 + 600);
  v6 = *(v0 + 592);
  v7 = *(v0 + 584);

  (*(v6 + 8))(v5, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1B1D030EC(uint64_t a1, void *a2)
{
  v3 = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v4 = *v3;
  **(*(*v3 + 64) + 40) = a2;
  v5 = a2;

  return MEMORY[0x1EEE6DED8](v4);
}

uint64_t sub_1B1D032E0(uint64_t a1, uint64_t a2, void *aBlock, void *a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  v6 = sub_1B1D7BE4C();
  v8 = v7;
  v4[4] = v7;
  v9 = sub_1B1D7BE4C();
  v11 = v10;
  v4[5] = v10;
  a4;
  v12 = swift_task_alloc();
  v4[6] = v12;
  *v12 = v4;
  v12[1] = sub_1B1D033DC;

  return sub_1B1D01A80(v6, v8, v9, v11);
}

uint64_t sub_1B1D033DC()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 16);
  v6 = *v1;

  v7 = *(v3 + 24);
  if (v2)
  {
    v8 = sub_1B1D7B43C();

    (*(v7 + 16))(v7, v8);
  }

  else
  {
    (*(v7 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v9 = *(v6 + 8);

  return v9();
}

id sub_1B1D035D0(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for _ASCredentialUpdateController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1B1D036A8@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_1B1D7B34C();
    if (v10)
    {
      v11 = sub_1B1D7B36C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_1B1D7B35C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_1B1D7B34C();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_1B1D7B36C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_1B1D7B35C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_1B1D038D8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v13[2] = *MEMORY[0x1E69E9840];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1B1D03A68(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1B1CDEFDC(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_1B1D036A8(v13, a3, a4, &v12);
  v10 = v4;
  sub_1B1CDEFDC(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_1B1D03A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_1B1D7B34C();
  v11 = result;
  if (result)
  {
    result = sub_1B1D7B36C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1B1D7B35C();
  sub_1B1D036A8(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_1B1D03B20(uint64_t a1, uint64_t a2, id a3, char a4)
{
  if ([a3 safari:*MEMORY[0x1E698DF58] BOOLForEntitlement:?] & 1) != 0 || (v6 = sub_1B1D7BE1C(), v7 = objc_msgSend(a3, sel_safari_BOOLForEntitlement_, v6), v6, (v7))
  {
    v8 = 1;
  }

  else
  {
    v8 = [a3 safari:*MEMORY[0x1E698DF68] BOOLForEntitlement:?];
  }

  v9 = sub_1B1D7BE1C();
  v10 = [a3 safari:v9 BOOLForEntitlement:?];

  if (a4 & 1) != 0 || (v10)
  {
    if ((v8 | v10))
    {
      if (qword_1EB7749C0 != -1)
      {
        swift_once();
      }

      v16 = sub_1B1D7BD8C();
      __swift_project_value_buffer(v16, qword_1EB782548);
      v12 = sub_1B1D7BD6C();
      v17 = sub_1B1D7BFFC();
      if (os_log_type_enabled(v12, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_1B1C8D000, v12, v17, "Calling process has browser or internal process entitlement. Skipping check for RP in associated domains…", v18, 2u);
        MEMORY[0x1B273C4C0](v18, -1, -1);
      }

      v15 = 1;
    }

    else
    {
      v12 = sub_1B1D7BE1C();
      v15 = [a3 safari:v12 hasApprovedWebCredentialsDomainAssociationForDomain:?];
    }
  }

  else
  {
    if (qword_1EB7749C0 != -1)
    {
      swift_once();
    }

    v11 = sub_1B1D7BD8C();
    __swift_project_value_buffer(v11, qword_1EB782548);
    v12 = sub_1B1D7BD6C();
    v13 = sub_1B1D7C00C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1B1C8D000, v12, v13, "Non-internal process tried to suppress notifications. Rejecting.", v14, 2u);
      MEMORY[0x1B273C4C0](v14, -1, -1);
    }

    v15 = 0;
  }

  return v15;
}

uint64_t sub_1B1D03DE8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B1CE9AD0;

  return sub_1B1D032E0(v2, v3, v5, v4);
}

uint64_t sub_1B1D03EA8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1B1CE9AD0;

  return sub_1B1D2248C(a1, v4, v5, v6);
}

uint64_t sub_1B1D03F74()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B1CE9AD0;

  return sub_1B1D01944(v2, v3, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  _Block_release(*(v0 + 32));

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1B1D0408C()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1B1CE9AD0;

  return sub_1B1CFF3DC(v2, v3, v5, v4);
}

uint64_t sub_1B1D0414C()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1B1CE99BC;

  return sub_1B1CFC430(v2, v3, v4, v5, v6);
}

uint64_t ASCPasswordLoginChoice.externalCredentialProviderBundleID.getter()
{
  v1 = [v0 providerBundleIdentifier];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1B1D7BE4C();

  return v3;
}

uint64_t sub_1B1D042E8(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [v3 *a3];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = sub_1B1D7BE4C();

  return v6;
}

uint64_t ASAppIcon.hash(into:)(uint64_t a1)
{
  if (*(v1 + 24))
  {
    if (*(v1 + 24) == 1)
    {
      v2 = *(v1 + 16);
      MEMORY[0x1B273B630](2);
      sub_1B1D7B4FC();
      if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v2;
      }

      else
      {
        v3 = 0;
      }

      return MEMORY[0x1B273B660](v3);
    }

    else
    {
      return MEMORY[0x1B273B630](0);
    }
  }

  else
  {
    MEMORY[0x1B273B630](1);

    return sub_1B1D7BE7C();
  }
}

uint64_t ASAppIcon.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1B1D7C5CC();
  if (v2)
  {
    if (v2 == 1)
    {
      MEMORY[0x1B273B630](2);
      sub_1B1D7B4FC();
      if ((v1 & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v3 = v1;
      }

      else
      {
        v3 = 0;
      }

      MEMORY[0x1B273B660](v3);
    }

    else
    {
      MEMORY[0x1B273B630](0);
    }
  }

  else
  {
    MEMORY[0x1B273B630](1);
    sub_1B1D7BE7C();
  }

  return sub_1B1D7C61C();
}

uint64_t sub_1B1D044F0()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 24);
  v5 = *v0;
  v6 = v1;
  v7 = v2;
  sub_1B1D7C5CC();
  ASAppIcon.hash(into:)(v4);
  return sub_1B1D7C61C();
}

uint64_t sub_1B1D04550(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 24);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  sub_1B1D7C5CC();
  ASAppIcon.hash(into:)(v5);
  return sub_1B1D7C61C();
}

id static ASCredentialRequestIconGenerator.image(for:size:)(uint64_t *a1, double a2, double a3)
{
  if (!*(a1 + 24))
  {
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v3);
    v8 = sub_1B1D7BE1C();
    v9 = [ObjCClassFromMetadata iconForApplicationIdentifier:v8 size:{a2, a3}];
    goto LABEL_5;
  }

  if (*(a1 + 24) == 1)
  {
    v6 = *(a1 + 2);
    v7 = swift_getObjCClassFromMetadata(v3);
    v8 = sub_1B1D7B4DC();
    v9 = [v7 iconForData:v8 scale:v6 size:{a2, a3}];
LABEL_5:
    v11 = v9;

    return v11;
  }

  return [swift_getObjCClassFromMetadata(v3) passwordManagerIconWithSize_];
}

BOOL _s22AuthenticationServices9ASAppIconO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a1;
  v2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 24);
  if (*(a1 + 24))
  {
    if (v5 == 1)
    {
      if (v9 == 1)
      {
        sub_1B1CE20D4(*a2, *(a2 + 8), v8, 1);
        sub_1B1CE20D4(v3, v2, v4, 1);
        v10 = sub_1B1D583E4(v3, v2, v7, v6);
        sub_1B1CE246C(v3, v2, v4, 1);
        sub_1B1CE246C(v7, v6, v8, 1);
        if (v10)
        {
          return *&v4 == *&v8;
        }

        return 0;
      }

LABEL_16:
      sub_1B1CE20D4(*a2, *(a2 + 8), v8, v9);
      sub_1B1CE20D4(v3, v2, v4, v5);
      sub_1B1CE246C(v3, v2, v4, v5);
      sub_1B1CE246C(v7, v6, v8, v9);
      return 0;
    }

    if (v9 != 2 || (v6 | v7 | v8) != 0)
    {
      goto LABEL_16;
    }

    sub_1B1CE246C(*a1, v2, v4, 2);
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 2;
  }

  else
  {
    if (*(a2 + 24))
    {
      goto LABEL_16;
    }

    v12 = *a1;
    if (v3 != v7 || v2 != v6)
    {
      v14 = sub_1B1D7C50C();
      sub_1B1CE20D4(v7, v6, v8, 0);
      sub_1B1CE20D4(v3, v2, v4, 0);
      sub_1B1CE246C(v3, v2, v4, 0);
      sub_1B1CE246C(v7, v6, v8, 0);
      return v14 & 1;
    }

    sub_1B1CE20D4(v12, v2, v8, 0);
    sub_1B1CE20D4(v3, v2, v4, 0);
    sub_1B1CE246C(v3, v2, v4, 0);
    v16 = v3;
    v17 = v2;
    v18 = v8;
    v19 = 0;
  }

  sub_1B1CE246C(v16, v17, v18, v19);
  return 1;
}

unint64_t sub_1B1D04900()
{
  result = qword_1EB7751F0;
  if (!qword_1EB7751F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB7751F0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t get_enum_tag_for_layout_string_22AuthenticationServices9ASAppIconO(uint64_t a1)
{
  if ((*(a1 + 24) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 24) & 3;
  }
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1B1D049A0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1B1D049E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_1B1D04A30(uint64_t result, unsigned int a2)
{
  v2 = a2 - 2;
  if (a2 >= 2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    LOBYTE(a2) = 2;
    *result = v2;
  }

  *(result + 24) = a2;
  return result;
}

uint64_t ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_1B1D7BBFC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756D0, &qword_1B1D88840);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = [v1 extensions];
  sub_1B1D7BC0C();

  if ((*(v7 + 48))(v12, 1, v6))
  {
    result = sub_1B1CDEC18(v12, &qword_1EB7756D0, &qword_1B1D88840);
    *a1 = 2;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
  }

  else
  {
    (*(v7 + 16))(v9, v12, v6);
    sub_1B1CDEC18(v12, &qword_1EB7756D0, &qword_1B1D88840);
    v24 = sub_1B1D7BBEC();
    sub_1B1D7BBCC();
    v15 = sub_1B1D7BA2C();
    v16 = *(v15 - 8);
    if ((*(v16 + 48))(v5, 1, v15) == 1)
    {
      (*(v7 + 8))(v9, v6);
      result = sub_1B1CDEC18(v5, &qword_1EB7751F8, &unk_1B1D86AF0);
      v17 = 0;
      v18 = 0;
      v19 = 0;
      v20 = 0xF000000000000000;
    }

    else
    {
      v23 = sub_1B1D7BA0C();
      v20 = v21;
      v18 = sub_1B1D7BA1C();
      v19 = v22;
      (*(v7 + 8))(v9, v6);
      sub_1B1C91AE4(0, 0xF000000000000000);
      result = (*(v16 + 8))(v5, v15);
      v17 = v23;
    }

    *a1 = v24 & 1;
    *(a1 + 8) = v17;
    *(a1 + 16) = v20;
    *(a1 + 24) = v18;
    *(a1 + 32) = v19;
  }

  return result;
}

void sub_1B1D04D8C(uint64_t *a1)
{
  v1 = a1[1];
  v2 = a1[2];
  v3 = a1[3];
  v4 = a1[4];
  v5[0] = *a1;
  v5[1] = v1;
  v5[2] = v2;
  v5[3] = v3;
  v5[4] = v4;
  sub_1B1D05C0C(v5[0], v1, v2, v3, v4);
  ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.setter(v5);
}

void ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.setter(uint64_t *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756D0, &qword_1B1D88840);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v19 - v7;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  v13 = a1[4];
  v14 = [v1 extensions];
  if (v9 == 2)
  {
    v15 = sub_1B1D7BBFC();
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  }

  else
  {
    if (v11 >> 60 == 15)
    {
      v16 = sub_1B1D7BA2C();
      (*(*(v16 - 8) + 56))(v5, 1, 1, v16);
    }

    else
    {
      sub_1B1CE111C(v10, v11);
      sub_1B1C91B94(v12, v13);
      sub_1B1D7B9FC();
      v17 = sub_1B1D7BA2C();
      (*(*(v17 - 8) + 56))(v5, 0, 1, v17);
    }

    sub_1B1D7BBDC();
    sub_1B1D05BE8(v9, v10, v11, v12, v13);
    v18 = sub_1B1D7BBFC();
    (*(*(v18 - 8) + 56))(v8, 0, 1, v18);
  }

  sub_1B1D7BC1C();
}

void (*ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  *a1 = v3;
  *(v3 + 40) = v1;
  ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.getter(v3);
  return sub_1B1D050BC;
}

void sub_1B1D050BC(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9[0] = v4;
  v9[1] = v5;
  v9[2] = v6;
  v9[3] = v7;
  v9[4] = v8;
  if (a2)
  {
    sub_1B1D05C0C(v4, v5, v6, v7, v8);
    ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.setter(v9);
    sub_1B1D05BE8(*v3, v3[1], v3[2], v3[3], v3[4]);
  }

  else
  {
    ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.prf.setter(v9);
  }

  free(v3);
}

id ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.__largeBlobSwift.getter()
{
  v1 = sub_1B1D7BC2C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v19 - v6;
  v8 = sub_1B1D7BC5C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7756C0, &unk_1B1D86B00);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v19 - v13;
  v15 = [v0 extensions];
  sub_1B1D7BC6C();

  if ((*(v9 + 48))(v14, 1, v8))
  {
    sub_1B1CDEC18(v14, &unk_1EB7756C0, &unk_1B1D86B00);
    return 0;
  }

  (*(v9 + 16))(v11, v14, v8);
  sub_1B1CDEC18(v14, &unk_1EB7756C0, &unk_1B1D86B00);
  sub_1B1D7BC4C();
  (*(v2 + 16))(v5, v7, v1);
  v17 = (*(v2 + 88))(v5, v1);
  if (v17 == *MEMORY[0x1E698DF48])
  {
    v18 = 0;
  }

  else
  {
    if (v17 != *MEMORY[0x1E698DF50])
    {
      result = sub_1B1D7C32C();
      __break(1u);
      return result;
    }

    v18 = 1;
  }

  (*(v2 + 8))(v7, v1);
  (*(v9 + 8))(v11, v8);
  return [objc_allocWithZone(ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput) initWithSupportRequirement_];
}

void ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.__largeBlobSwift.setter(void *a1)
{
  sub_1B1D05C80(a1);
}

id ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.__prfSwift.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7751F8, &unk_1B1D86AF0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v22 - v2;
  v4 = sub_1B1D7BBFC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756D0, &qword_1B1D88840);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - v9;
  v11 = [v0 extensions];
  sub_1B1D7BC0C();

  if ((*(v5 + 48))(v10, 1, v4))
  {
    sub_1B1CDEC18(v10, &qword_1EB7756D0, &qword_1B1D88840);
    return 0;
  }

  else
  {
    (*(v5 + 16))(v7, v10, v4);
    sub_1B1CDEC18(v10, &qword_1EB7756D0, &qword_1B1D88840);
    sub_1B1D7BBEC();
    sub_1B1D7BBCC();
    v13 = sub_1B1D7BA2C();
    v14 = *(v13 - 8);
    if ((*(v14 + 48))(v3, 1, v13) == 1)
    {
      (*(v5 + 8))(v7, v4);
      sub_1B1CDEC18(v3, &qword_1EB7751F8, &unk_1B1D86AF0);
      v15 = 0;
      v16 = 0;
      v17 = 0;
      v18 = 0xF000000000000000;
    }

    else
    {
      v15 = sub_1B1D7BA0C();
      v18 = v19;
      v16 = sub_1B1D7BA1C();
      v17 = v20;
      (*(v5 + 8))(v7, v4);
      sub_1B1C91AE4(0, 0xF000000000000000);
      (*(v14 + 8))(v3, v13);
    }

    v21 = [objc_allocWithZone(ASAuthorizationPublicKeyCredentialPRFRegistrationInput) initWithInputValues_];
    sub_1B1CDEF8C(v15, v18, v16, v17);
    return v21;
  }
}

void ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.__prfSwift.setter(id a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB7756D0, &qword_1B1D88840);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = [v1 extensions];
  if (a1)
  {
    a1 = a1;
    sub_1B1D0E548();

    v7 = sub_1B1D7BBFC();
    (*(*(v7 - 8) + 56))(v5, 0, 1, v7);
  }

  else
  {
    v8 = sub_1B1D7BBFC();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
  }

  sub_1B1D7BC1C();
}

id static ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.emptyExtensions()()
{
  v0 = objc_allocWithZone(sub_1B1D7BC8C());

  return [v0 init];
}

uint64_t sub_1B1D05BE8(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result != 2)
  {
    return sub_1B1CDEF8C(a2, a3, a4, a5);
  }

  return result;
}

void sub_1B1D05C0C(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  if (result != 2)
  {
    sub_1B1D05C30(a2, a3, a4, a5);
  }
}

void sub_1B1D05C30(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  if (a2 >> 60 != 15)
  {
    sub_1B1CE111C(result, a2);

    sub_1B1C91B94(a3, a4);
  }
}

void sub_1B1D05C80(void *a1)
{
  v3 = sub_1B1D7BC2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7756C0, &unk_1B1D86B00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v16 - v8;
  v10 = [v1 extensions];
  if (!a1)
  {
    v14 = sub_1B1D7BC5C();
    (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
LABEL_8:
    sub_1B1D7BC7C();

    return;
  }

  v11 = a1;
  v12 = [v11 supportRequirement];
  if (!v12)
  {
    v13 = MEMORY[0x1E698DF48];
LABEL_7:
    (*(v4 + 104))(v6, *v13, v3);
    sub_1B1D7BC3C();

    v15 = sub_1B1D7BC5C();
    (*(*(v15 - 8) + 56))(v9, 0, 1, v15);
    goto LABEL_8;
  }

  if (v12 == 1)
  {
    v13 = MEMORY[0x1E698DF50];
    goto LABEL_7;
  }

  sub_1B1D7C32C();
  __break(1u);
}

double static ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput.read.getter@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = xmmword_1B1D857B0;
  return result;
}

void static ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput.write(_:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  sub_1B1CE111C(a1, a2);
}

void ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput.operation.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  sub_1B1C91B94(v2, v3);
}

uint64_t ASAuthorizationPublicKeyCredentialLargeBlobAssertionInput.operation.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  result = sub_1B1C91AE4(*v1, *(v1 + 8));
  *v1 = v2;
  *(v1 + 8) = v3;
  return result;
}

uint64_t ASAuthorizationPublicKeyCredentialLargeBlobRegistrationInput.SupportRequirement.hashValue.getter()
{
  v1 = *v0;
  sub_1B1D7C5CC();
  MEMORY[0x1B273B630](v1);
  return sub_1B1D7C61C();
}

void static ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput.read(data:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  sub_1B1C91B94(a1, a2);
}

uint64_t static ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput.write(success:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  *a2 = result & 1;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  return result;
}

void ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput.result.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  sub_1B1CE1110(v2, v3, v4);
}

uint64_t ASAuthorizationPublicKeyCredentialLargeBlobAssertionOutput.result.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = sub_1B1CE1104(*v1, *(v1 + 8), *(v1 + 16));
  *v1 = v2;
  *(v1 + 8) = v3;
  *(v1 + 16) = v4;
  return result;
}

uint64_t ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.largeBlob.getter@<X0>(char *a1@<X8>)
{
  v3 = sub_1B1D7BC2C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v21 - v8;
  v10 = sub_1B1D7BC5C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7756C0, &unk_1B1D86B00);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v21 - v15;
  v17 = [v1 extensions];
  sub_1B1D7BC6C();

  if ((*(v11 + 48))(v16, 1, v10))
  {
    result = sub_1B1CDEC18(v16, &unk_1EB7756C0, &unk_1B1D86B00);
    v19 = 2;
LABEL_6:
    *a1 = v19;
    return result;
  }

  (*(v11 + 16))(v13, v16, v10);
  sub_1B1CDEC18(v16, &unk_1EB7756C0, &unk_1B1D86B00);
  sub_1B1D7BC4C();
  (*(v4 + 16))(v7, v9, v3);
  v20 = (*(v4 + 88))(v7, v3);
  if (v20 == *MEMORY[0x1E698DF48] || v20 == *MEMORY[0x1E698DF50])
  {
    v19 = v20 != *MEMORY[0x1E698DF48];
    (*(v4 + 8))(v9, v3);
    result = (*(v11 + 8))(v13, v10);
    goto LABEL_6;
  }

  result = sub_1B1D7C32C();
  __break(1u);
  return result;
}

void ASAuthorizationPlatformPublicKeyCredentialRegistrationRequest.largeBlob.setter(unsigned __int8 *a1)
{
  v3 = sub_1B1D7BC2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB7756C0, &unk_1B1D86B00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  v10 = *a1;
  v11 = [v1 extensions];
  if (v10 == 2)
  {
    v12 = sub_1B1D7BC5C();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  else
  {
    v13 = MEMORY[0x1E698DF50];
    if ((v10 & 1) == 0)
    {
      v13 = MEMORY[0x1E698DF48];
    }

    (*(v4 + 104))(v6, *v13, v3);
    sub_1B1D7BC3C();
    v14 = sub_1B1D7BC5C();
    (*(*(v14 - 8) + 56))(v9, 0, 1, v14);
  }

  sub_1B1D7BC7C();
}