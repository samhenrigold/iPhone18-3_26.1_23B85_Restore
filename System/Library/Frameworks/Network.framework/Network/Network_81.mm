uint64_t sub_181F779F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F77A18, 0, 0);
}

uint64_t sub_181F77A18()
{
  v1 = v0[2];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[5] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage, &unk_182AF8290);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F77B34, v5, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_181F77B34()
{
  v1 = v0[4];
  v2 = v0[3];
  sub_18212A158(v2, v1);
  sub_18212A558(v2, v1);
  sub_18212A958(v2, v1);

  v3 = v0[1];

  return v3();
}

uint64_t nw_storage_lookup_http_early_data_state(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, void *aBlock)
{
  v9 = _Block_copy(aBlock);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  nw_storage_lookup_http_early_data_state(_:_:_:_:_:)(a1, a2, a3, a4, sub_181F7C7CC, v10);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t nw_storage_lookup_http_early_data_state(_:_:_:_:_:)(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v25 = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v24 - v12;

  if (a2)
  {
    a2 = sub_182AD3158();
    v15 = v14;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  nw_endpoint_get_hostname(a3);
  v16 = sub_182AD3158();
  v18 = v17;
  port = nw_endpoint_get_port(a3);
  v20 = sub_182AD3548();
  (*(*(v20 - 8) + 56))(v13, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v21 + 48) = v15;
  *(v21 + 56) = v16;
  *(v21 + 64) = v18;
  *(v21 + 72) = port;
  v22 = v25;
  *(v21 + 80) = a4;
  *(v21 + 88) = v22;
  *(v21 + 96) = a6;
  swift_unknownObjectRetain();

  sub_181F774B4(0, 0, v13, &unk_182AE8280, v21);
}

uint64_t sub_181F77E2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 168) = v12;
  *(v8 + 152) = v11;
  *(v8 + 232) = v10;
  *(v8 + 136) = a7;
  *(v8 + 144) = a8;
  *(v8 + 120) = a5;
  *(v8 + 128) = a6;
  *(v8 + 112) = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F77E70, 0, 0);
}

uint64_t sub_181F77E70()
{
  v1 = *(v0 + 112);
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  *(v0 + 176) = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage, &unk_182AF8290);
    v4 = sub_182AD34A8();
    v6 = v5;
    v7 = sub_181F77F90;
    v8 = v4;
    v9 = v6;
  }

  else
  {
    *(v0 + 216) = 0u;
    *(v0 + 200) = 0u;
    *(v0 + 184) = xmmword_182AE8230;
    v7 = sub_181F78034;
    v8 = 0;
    v9 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_181F77F90()
{
  sub_18212DF50(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 232), (v0 + 16));
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  v4 = *(v0 + 32);
  v5 = *(v0 + 16);

  *(v0 + 216) = v1;
  *(v0 + 224) = v2;
  *(v0 + 200) = v4;
  *(v0 + 184) = v5;

  return MEMORY[0x1EEE6DFA0](sub_181F78034, 0, 0);
}

uint64_t sub_181F78034()
{
  v1 = v0[27];
  v2 = v0[28];
  v4 = v0[25];
  v3 = v0[26];
  v6 = v0[23];
  v5 = v0[24];
  v7 = v0[20];
  v8 = v0[21];
  v13 = v0[19];
  v9 = swift_allocObject();
  v9[2] = v6;
  v9[3] = v5;
  v9[4] = v4;
  v9[5] = v3;
  v9[6] = v1;
  v9[7] = v2;
  v9[8] = v7;
  v9[9] = v8;
  v0[12] = sub_181F7D568;
  v0[13] = v9;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_181B7D048;
  v0[11] = &block_descriptor_129;
  v10 = _Block_copy(v0 + 8);
  sub_181F7D574(v6, v5, v4, v3, v1, v2, sub_181F49B58);

  nw_queue_context_async_if_needed(v13, v10);
  _Block_release(v10);
  sub_181F7D574(v6, v5, v4, v3, v1, v2, sub_181C1F2E4);
  v11 = v0[1];

  return v11();
}

uint64_t sub_181F781D4(uint64_t *a1, uint64_t (*a2)(void *, void *, void *))
{
  v3 = a1[1];
  if (v3 >> 60 == 15)
  {
    return a2(0, 0, 0);
  }

  v6 = a1[4];
  v5 = a1[5];
  v8 = a1[2];
  v7 = a1[3];
  sub_181F49B58(*a1, v3);
  sub_181F49B58(v8, v7);
  sub_181F49B58(v6, v5);
  v10 = sub_182AD2138();
  v12 = NWCreateDispatchDataFromNSData(v10, v11);

  v13 = sub_182AD2138();
  v15 = NWCreateDispatchDataFromNSData(v13, v14);

  v16 = sub_182AD2138();
  v18 = NWCreateDispatchDataFromNSData(v16, v17);

  a2(v12, v15, v18);
  return sub_181F49A88(a1, &unk_1EA838CD0, &qword_182AE8368);
}

uint64_t sub_181F78340(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F78364, 0, 0);
}

uint64_t sub_181F78364()
{
  v1 = v0[8];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[11] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage, &unk_182AF8290);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F7853C, v5, v4);
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    *(v8 + 24) = v6;
    v0[6] = sub_181F7D78C;
    v0[7] = v8;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_181B7D048;
    v0[5] = &block_descriptor_123;
    v9 = _Block_copy(v0 + 2);
    _Block_copy(v6);

    nw_queue_context_async_if_needed(v7, v9);
    _Block_release(v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_181F7853C()
{
  *(v0 + 96) = sub_18212E85C();

  return MEMORY[0x1EEE6DFA0](sub_181F785B0, 0, 0);
}

uint64_t sub_181F785B0()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[6] = sub_181F7D78C;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_181B7D048;
  v0[5] = &block_descriptor_123;
  v5 = _Block_copy(v0 + 2);
  _Block_copy(v2);

  nw_queue_context_async_if_needed(v3, v5);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

void nw_storage_store_http_early_data_state(uint64_t a1, uint64_t a2, NSObject *a3, void *a4, void *a5, void *a6)
{
  swift_unknownObjectRetain();
  v12 = a4;
  v13 = a5;
  v14 = a6;
  nw_storage_store_http_early_data_state(_:_:_:_:_:_:)(a1, a2, a3, v12, v13, v14);
  swift_unknownObjectRelease();
}

uint64_t nw_storage_store_http_early_data_state(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v37 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v35 - v10;
  v12 = sub_182AD2868();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;

  if (a2)
  {
    v15 = sub_182AD3158();
    v35 = v16;
    v36 = v15;
  }

  else
  {
    v35 = 0xE000000000000000;
    v36 = 0;
  }

  nw_endpoint_get_hostname(a3);
  v17 = sub_182AD3158();
  v19 = v18;
  port = nw_endpoint_get_port(a3);
  sub_182AD2818();
  v21 = sub_181F76674(v14);
  v23 = v22;
  sub_182AD2818();
  v24 = sub_181F76674(v14);
  v26 = v25;
  sub_182AD2818();
  v27 = sub_181F76674(v14);
  v29 = v28;
  v30 = sub_182AD3548();
  (*(*(v30 - 8) + 56))(v11, 1, 1, v30);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  *(v31 + 32) = v38;
  *(v31 + 40) = v21;
  *(v31 + 48) = v23;
  *(v31 + 56) = v24;
  *(v31 + 64) = v26;
  *(v31 + 72) = v27;
  v32 = v35;
  v33 = v36;
  *(v31 + 80) = v29;
  *(v31 + 88) = v33;
  *(v31 + 96) = v32;
  *(v31 + 104) = v17;
  *(v31 + 112) = v19;
  *(v31 + 120) = port;
  sub_181F774B4(0, 0, v11, &unk_182AE82B0, v31);
}

uint64_t sub_181F78998(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v11;
  *(v8 + 48) = a8;
  *(v8 + 56) = v10;
  *(v8 + 32) = a6;
  *(v8 + 40) = a7;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_181F789D0, 0, 0);
}

uint64_t sub_181F789D0()
{
  v1 = v0[2];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[8] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage, &unk_182AF8290);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F78AEC, v5, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_181F78AEC()
{
  sub_18212F1D8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 72));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t nw_storage_lookup_dns_cache(uint64_t a1, NSObject *a2, uint64_t a3, const void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = _Block_copy(a4);
  v12 = _Block_copy(v11);

  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  nw_endpoint_get_hostname(a2);
  v13 = sub_182AD3158();
  v15 = v14;
  port = nw_endpoint_get_port(a2);
  v17 = sub_182AD3548();
  (*(*(v17 - 8) + 56))(v10, 1, 1, v17);
  v18 = swift_allocObject();
  *(v18 + 16) = 0;
  *(v18 + 24) = 0;
  *(v18 + 32) = a1;
  *(v18 + 40) = v13;
  *(v18 + 48) = v15;
  *(v18 + 56) = port;
  *(v18 + 64) = a3;
  *(v18 + 72) = v12;
  swift_unknownObjectRetain();
  sub_181F774B4(0, 0, v10, &unk_182AE82C0, v18);

  _Block_release(v11);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t nw_storage_lookup_dns_cache(_:_:_:_:)(uint64_t a1, NSObject *a2, uint64_t a3, const void *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);

  nw_endpoint_get_hostname(a2);
  v12 = sub_182AD3158();
  v14 = v13;
  LOWORD(a2) = nw_endpoint_get_port(a2);
  v15 = sub_182AD3548();
  (*(*(v15 - 8) + 56))(v10, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a1;
  *(v16 + 40) = v12;
  *(v16 + 48) = v14;
  *(v16 + 56) = a2;
  *(v16 + 64) = a3;
  *(v16 + 72) = v11;
  swift_unknownObjectRetain();
  sub_181F774B4(0, 0, v10, &unk_182AE82C8, v16);
}

uint64_t sub_181F78E68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  *(v8 + 88) = a8;
  *(v8 + 96) = v10;
  *(v8 + 120) = a7;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F78E9C, 0, 0);
}

uint64_t sub_181F78E9C()
{
  v1 = v0[8];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[13] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage, &unk_182AF8290);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F79074, v5, v4);
  }

  else
  {
    v7 = v0[11];
    v6 = v0[12];
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    *(v8 + 24) = v6;
    v0[6] = sub_181F7D468;
    v0[7] = v8;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_181B7D048;
    v0[5] = &block_descriptor_117;
    v9 = _Block_copy(v0 + 2);
    _Block_copy(v6);

    nw_queue_context_async_if_needed(v7, v9);
    _Block_release(v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_181F79074()
{
  *(v0 + 112) = sub_182131B94(*(v0 + 72), *(v0 + 80), *(v0 + 120));

  return MEMORY[0x1EEE6DFA0](sub_181F790F0, 0, 0);
}

uint64_t sub_181F790F0()
{
  v1 = v0[14];
  v3 = v0[11];
  v2 = v0[12];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[6] = sub_181F7D468;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_181B7D048;
  v0[5] = &block_descriptor_117;
  v5 = _Block_copy(v0 + 2);
  _Block_copy(v2);

  nw_queue_context_async_if_needed(v3, v5);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_181F791FC(uint64_t a1, uint64_t a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v3 = nw_array_create();
  v4 = *(a1 + 16);
  if (v4)
  {
    v5 = (a1 + 50);
    do
    {
      v9 = *(v5 - 9);
      v10 = *(v5 - 5);
      v11 = *(v5 - 1);
      v12 = *v5;
      v13 = v10 >> 62;
      if ((v10 >> 62) > 1)
      {
        if (v13 != 2)
        {
          goto LABEL_5;
        }

        v16 = *(v9 + 16);
        v15 = *(v9 + 24);
        v14 = v15 - v16;
        if (__OFSUB__(v15, v16))
        {
          goto LABEL_33;
        }
      }

      else
      {
        if (!v13)
        {
          v14 = BYTE6(v10);
          if (BYTE6(v10) != 16)
          {
            goto LABEL_17;
          }

          goto LABEL_3;
        }

        if (__OFSUB__(HIDWORD(v9), v9))
        {
          __break(1u);
LABEL_33:
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          sub_182AD1D78();
LABEL_38:
          __break(1u);
LABEL_39:
          sub_182AD1D78();
          __break(1u);
LABEL_40:
          __break(1u);
        }

        v14 = HIDWORD(v9) - v9;
      }

      sub_181F49B58(*(v5 - 9), *(v5 - 5));
      if (v14 != 16)
      {
LABEL_17:
        if (v14 != 4)
        {
          goto LABEL_5;
        }

        if (v13 != 2)
        {
          if (v13 == 1)
          {
            if (v9 > v9 >> 32)
            {
              goto LABEL_34;
            }

            v17 = sub_182AD1D58();
            if (!v17)
            {
              goto LABEL_39;
            }

            v18 = v17;
            v19 = sub_182AD1D88();
            if (__OFSUB__(v9, v19))
            {
              goto LABEL_36;
            }

            v20 = (v9 - v19 + v18);
            sub_182AD1D78();
            if (!v20)
            {
              goto LABEL_40;
            }

LABEL_28:
            v25 = *v20;
          }

          else
          {
            v25 = v9;
          }

          *&address.sa_len = 528;
          *address.sa_data = __rev16(v11);
          *&address.sa_data[2] = v25;
          *&address.sa_data[6] = 0;
          goto LABEL_4;
        }

        v21 = *(v9 + 16);
        v22 = sub_182AD1D58();
        if (!v22)
        {
          goto LABEL_37;
        }

        v23 = v22;
        v24 = sub_182AD1D88();
        if (__OFSUB__(v21, v24))
        {
          goto LABEL_35;
        }

        v20 = (v21 - v24 + v23);
        sub_182AD1D78();
        if (!v20)
        {
          goto LABEL_38;
        }

        goto LABEL_28;
      }

LABEL_3:
      v31 = 0;
      v32 = 0;
      *&address.sa_len = v9;
      *&address.sa_data[6] = v10;
      sub_181F49B58(v9, v10);
      sub_181F7D470();
      sub_182AD1CE8();
      sub_181C1F2E4(*&address.sa_len, *&address.sa_data[6]);
      *&address.sa_len = 7708;
      *address.sa_data = __rev16(v11);
      *&address.sa_data[2] = 0;
      *&address.sa_data[6] = v31;
      v29 = v32;
      v30 = 0;
LABEL_4:
      v6 = nw_endpoint_create_address(&address);
      v7 = swift_unknownObjectRetain();
      nw_endpoint_set_priority(v7, v12);
      v8 = swift_unknownObjectRetain();
      nw_array_append(v8, v6);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease_n();
LABEL_5:
      v5 += 12;
      sub_181C1F2E4(v9, v10);
      --v4;
    }

    while (v4);
  }

  (*(a2 + 16))(a2, v3);
  return swift_unknownObjectRelease();
}

uint64_t sub_181F794EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F79510, 0, 0);
}

uint64_t sub_181F79510()
{
  v1 = v0[8];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[11] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage, &unk_182AF8290);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F796E8, v5, v4);
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    *(v8 + 24) = v6;
    v0[6] = sub_181F7D78C;
    v0[7] = v8;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_181B7D048;
    v0[5] = &block_descriptor_111;
    v9 = _Block_copy(v0 + 2);
    _Block_copy(v6);

    nw_queue_context_async_if_needed(v7, v9);
    _Block_release(v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_181F796E8()
{
  *(v0 + 96) = sub_182132400();

  return MEMORY[0x1EEE6DFA0](sub_181F7975C, 0, 0);
}

uint64_t sub_181F7975C()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[6] = sub_181F7D78C;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_181B7D048;
  v0[5] = &block_descriptor_111;
  v5 = _Block_copy(v0 + 2);
  _Block_copy(v2);

  nw_queue_context_async_if_needed(v3, v5);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t nw_storage_store_dns_cache(uint64_t a1, NSObject *a2, void *a3)
{
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  nw_storage_store_dns_cache(_:_:_:)(a1, a2, a3);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t nw_storage_store_dns_cache(_:_:_:)(uint64_t a1, NSObject *a2, void *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20 - v7;

  nw_endpoint_get_hostname(a2);
  v21 = sub_182AD3158();
  v10 = v9;
  port = nw_endpoint_get_port(a2);
  v12 = swift_allocObject();
  *(v12 + 16) = MEMORY[0x1E69E7CC0];
  v13 = swift_allocObject();
  *(v13 + 16) = v12 + 16;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_181F7CCC4;
  *(v14 + 24) = v13;
  aBlock[4] = sub_181F7CCCC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181F79D48;
  aBlock[3] = &block_descriptor_1;
  v15 = _Block_copy(aBlock);

  nw_array_apply(a3, v15);
  _Block_release(v15);
  v16 = sub_182AD3548();
  (*(*(v16 - 8) + 56))(v8, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  v18 = v21;
  *(v17 + 32) = a1;
  *(v17 + 40) = v18;
  *(v17 + 48) = v10;
  *(v17 + 56) = port;
  *(v17 + 64) = v12;

  sub_181F774B4(0, 0, v8, &unk_182AE82F0, v17);

  LOBYTE(a1) = swift_isEscapingClosureAtFileLocation();

  if (a1)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_181F79B84(uint64_t a1, NSObject *a2, char **a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v23 = 0;
  v22 = 0;
  swift_unknownObjectRetain();
  nw_endpoint_fillout_v4v6_address(a2, &v20);
  if (BYTE1(v20) == 30)
  {
    v18[0] = v21;
    v18[1] = v22;
    v5 = &v19;
  }

  else
  {
    if (BYTE1(v20) != 2)
    {
      swift_unknownObjectRelease();
      return 1;
    }

    LODWORD(v18[0]) = HIDWORD(v20);
    v5 = v18 + 4;
  }

  v6 = sub_181C1F228(v18, v5);
  v8 = v7;
  port = nw_endpoint_get_port(a2);
  priority = nw_endpoint_get_priority(a2);
  v11 = *a3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_181F5A1B0(0, *(v11 + 2) + 1, 1, v11);
    *a3 = v11;
  }

  v14 = *(v11 + 2);
  v13 = *(v11 + 3);
  if (v14 >= v13 >> 1)
  {
    *a3 = sub_181F5A1B0((v13 > 1), v14 + 1, 1, v11);
  }

  swift_unknownObjectRelease();
  v15 = *a3;
  *(v15 + 2) = v14 + 1;
  v16 = &v15[24 * v14];
  *(v16 + 4) = v6;
  *(v16 + 5) = v8;
  *(v16 + 24) = port;
  *(v16 + 25) = priority;
  return 1;
}

uint64_t sub_181F79D48(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  swift_unknownObjectRetain();
  v6 = v5(a2, a3);
  swift_unknownObjectRelease();
  return v6 & 1;
}

uint64_t sub_181F79DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, __int16 a7, uint64_t a8)
{
  *(v8 + 112) = a7;
  *(v8 + 72) = a6;
  *(v8 + 80) = a8;
  *(v8 + 56) = a4;
  *(v8 + 64) = a5;
  return MEMORY[0x1EEE6DFA0](sub_181F79DC8, 0, 0);
}

uint64_t sub_181F79DC8()
{
  v1 = v0[10];
  v2 = v0[7];
  swift_beginAccess();
  v0[11] = *(v1 + 16);
  v3 = (v2 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);

  os_unfair_lock_lock(v3);
  v4 = sub_182128038(&v3[2], v2);
  v0[12] = v4;
  os_unfair_lock_unlock(v3);
  if (v4)
  {
    v0[13] = type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage, &unk_182AF8290);
    v6 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F79F24, v6, v5);
  }

  else
  {

    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_181F79F24()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 72);
  *(v0 + 40) = *(v0 + 64);
  *(v0 + 48) = v2;
  v3 = *(v0 + 112);

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838CB0, &qword_182AE8358);
  sub_181AB3DCC(&qword_1EA8363C8, &unk_1EA838CB0, &qword_182AE8358, MEMORY[0x1E69E6EB0]);
  v4 = sub_182AD3238();
  v6 = v5;
  type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal(0);
  swift_allocObject();

  sub_18213B7E4(v4, v6, v3, v1);

  sub_181F7D4E0(&qword_1EA836590, type metadata accessor for NetworkStorage.InternalStorage, &unk_182AF8258);
  sub_182AD2BD8();
  sub_181F7D4E0(&qword_1EA8365B8, type metadata accessor for NetworkStorage.InternalStorage.DNSCacheInternal, &unk_182AF80BC);
  sub_182AD2C48();

  sub_18212B0D8();

  v7 = *(v0 + 8);

  return v7();
}

uint64_t nw_storage_lookup_alt_svc(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, void *aBlock)
{
  v9 = _Block_copy(aBlock);
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  nw_storage_lookup_alt_svc(_:_:_:_:_:)(a1, a2, a3, a4, v9);
  _Block_release(v9);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t nw_storage_lookup_alt_svc(_:_:_:_:_:)(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, const void *a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = _Block_copy(a5);

  if (a2)
  {
    a2 = sub_182AD3158();
    v15 = v14;
  }

  else
  {
    v15 = 0xE000000000000000;
  }

  nw_endpoint_get_hostname(a3);
  v16 = sub_182AD3158();
  v18 = v17;
  port = nw_endpoint_get_port(a3);
  v20 = sub_182AD3548();
  (*(*(v20 - 8) + 56))(v12, 1, 1, v20);
  v21 = swift_allocObject();
  *(v21 + 16) = 0;
  *(v21 + 24) = 0;
  *(v21 + 32) = a1;
  *(v21 + 40) = a2;
  *(v21 + 48) = v15;
  *(v21 + 56) = v16;
  *(v21 + 64) = v18;
  *(v21 + 72) = port;
  *(v21 + 80) = a4;
  *(v21 + 88) = v13;
  swift_unknownObjectRetain();
  sub_181F774B4(0, 0, v12, &unk_182AE8300, v21);
}

uint64_t sub_181F7A338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 104) = v11;
  *(v8 + 112) = v12;
  *(v8 + 136) = v10;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 64) = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F7A374, 0, 0);
}

uint64_t sub_181F7A374()
{
  v1 = v0[8];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[15] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage, &unk_182AF8290);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F7A54C, v5, v4);
  }

  else
  {
    v7 = v0[13];
    v6 = v0[14];
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    *(v8 + 24) = v6;
    v0[6] = sub_181F7D40C;
    v0[7] = v8;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_181B7D048;
    v0[5] = &block_descriptor_105;
    v9 = _Block_copy(v0 + 2);
    _Block_copy(v6);

    nw_queue_context_async_if_needed(v7, v9);
    _Block_release(v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_181F7A54C()
{
  *(v0 + 128) = sub_182135C08(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 136));

  return MEMORY[0x1EEE6DFA0](sub_181F7A5CC, 0, 0);
}

uint64_t sub_181F7A5CC()
{
  v1 = v0[16];
  v3 = v0[13];
  v2 = v0[14];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[6] = sub_181F7D40C;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_181B7D048;
  v0[5] = &block_descriptor_105;
  v5 = _Block_copy(v0 + 2);
  _Block_copy(v2);

  nw_queue_context_async_if_needed(v3, v5);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_181F7A6D8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v10 = *(v5 + 72);
    v20[1] = a2 + 16;
    v21 = v10;
    while (1)
    {
      v11 = sub_181F7CFF0(v9, v7);
      v12 = &v7[v4[9]];
      v14 = *v12;
      v13 = *(v12 + 1);
      MEMORY[0x1EEE9AC00](v11);
      v20[-2] = v7;
      if ((v13 & 0x1000000000000000) != 0)
      {
        break;
      }

      if ((v13 & 0x2000000000000000) != 0)
      {
        v22[0] = v14;
        v22[1] = v13 & 0xFFFFFFFFFFFFFFLL;
        v15 = *&v7[v4[10]];
        v16 = v22;
      }

      else
      {
        if ((v14 & 0x1000000000000000) == 0)
        {
          break;
        }

        v15 = *&v7[v4[10]];
        v16 = ((v13 & 0xFFFFFFFFFFFFFFFLL) + 32);
      }

      host_with_numeric_port = nw_endpoint_create_host_with_numeric_port(v16, v15);
LABEL_9:
      v18 = v7[v4[6]];
      sub_182AD21A8();
      (*(a2 + 16))(a2, v18, host_with_numeric_port);
      swift_unknownObjectRelease();
      sub_181F7D1B0(v7);
      v9 += v21;
      if (!--v8)
      {
        return (*(a2 + 16))(a2, 0, 0, 0.0);
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838CA8, &qword_182AE8350);
    sub_182AD3B78();
    host_with_numeric_port = v22[0];
    goto LABEL_9;
  }

  return (*(a2 + 16))(a2, 0, 0, 0.0);
}

uint64_t nw_storage_lookup_all_origins_with_http_early_data_stateTm(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v18 - v10;
  v12 = _Block_copy(a3);
  v13 = _Block_copy(v12);
  v14 = sub_182AD3548();
  v15 = *(*(v14 - 8) + 56);

  v15(v11, 1, 1, v14);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = a1;
  v16[5] = a2;
  v16[6] = v13;
  swift_unknownObjectRetain_n();
  sub_181F774B4(0, 0, v11, a5, v16);

  _Block_release(v12);
  return swift_unknownObjectRelease();
}

uint64_t sub_181F7AA88(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v17 - v10;
  v12 = _Block_copy(a3);
  v13 = sub_182AD3548();
  v14 = *(*(v13 - 8) + 56);

  v14(v11, 1, 1, v13);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = a1;
  v15[5] = a2;
  v15[6] = v12;
  swift_unknownObjectRetain();
  sub_181F774B4(0, 0, v11, a5, v15);
}

uint64_t sub_181F7ABC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[9] = a5;
  v6[10] = a6;
  v6[8] = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F7ABE8, 0, 0);
}

uint64_t sub_181F7ABE8()
{
  v1 = v0[8];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[11] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage, &unk_182AF8290);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F7ADC0, v5, v4);
  }

  else
  {
    v7 = v0[9];
    v6 = v0[10];
    v8 = swift_allocObject();
    *(v8 + 16) = MEMORY[0x1E69E7CC0];
    *(v8 + 24) = v6;
    v0[6] = sub_181F7D3F0;
    v0[7] = v8;
    v0[2] = MEMORY[0x1E69E9820];
    v0[3] = 1107296256;
    v0[4] = sub_181B7D048;
    v0[5] = &block_descriptor_99;
    v9 = _Block_copy(v0 + 2);
    _Block_copy(v6);

    nw_queue_context_async_if_needed(v7, v9);
    _Block_release(v9);
    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_181F7ADC0()
{
  *(v0 + 96) = sub_18213662C();

  return MEMORY[0x1EEE6DFA0](sub_181F7AE34, 0, 0);
}

uint64_t sub_181F7AE34()
{
  v1 = v0[12];
  v3 = v0[9];
  v2 = v0[10];
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v0[6] = sub_181F7D3F0;
  v0[7] = v4;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_181B7D048;
  v0[5] = &block_descriptor_99;
  v5 = _Block_copy(v0 + 2);
  _Block_copy(v2);

  nw_queue_context_async_if_needed(v3, v5);
  _Block_release(v5);
  v6 = v0[1];

  return v6();
}

uint64_t sub_181F7AF40(uint64_t a1, uint64_t a2)
{
  v4 = nw_array_create();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 48);
    do
    {
      v7 = *v6;
      v6 += 12;
      v8 = sub_182AD3048();
      host_with_numeric_port = nw_endpoint_create_host_with_numeric_port((v8 + 32), v7);

      nw_array_append(v4, host_with_numeric_port);
      swift_unknownObjectRelease();
      --v5;
    }

    while (v5);
  }

  (*(a2 + 16))(a2, v4);

  return swift_unknownObjectRelease();
}

uint64_t nw_storage_store_alt_svc(uint64_t a1, uint64_t a2, NSObject *a3, uint64_t a4, NSObject *a5, double a6)
{
  v8 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  nw_storage_store_alt_svc(_:_:_:_:_:_:)(a1, a2, a3, v8, a5, a6);
  swift_unknownObjectRelease();

  return swift_unknownObjectRelease();
}

uint64_t nw_storage_store_alt_svc(_:_:_:_:_:_:)(uint64_t a1, uint64_t a2, NSObject *a3, int a4, NSObject *a5, double a6)
{
  v44 = a4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v47 = &v40 - v11;
  v12 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  v43 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v45 = v13;
  v46 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v40 - v15;
  v49 = sub_182AD21E8();
  v17 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v19 = &v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;

  if (a2)
  {
    v20 = sub_182AD3158();
    v41 = v21;
    v42 = v20;
  }

  else
  {
    v41 = 0xE000000000000000;
    v42 = 0;
  }

  nw_endpoint_get_hostname(a3);
  v22 = sub_182AD3158();
  v24 = v23;
  port = nw_endpoint_get_port(a3);
  nw_endpoint_get_hostname(a5);
  v26 = sub_182AD3158();
  v28 = v27;
  v29 = nw_endpoint_get_port(a5);
  sub_182AD2198();
  (*(v17 + 16))(v16, v19, v49);
  v30 = &v16[v12[5]];
  v31 = v41;
  *v30 = v42;
  *(v30 + 1) = v31;
  v16[v12[6]] = v44;
  v32 = &v16[v12[7]];
  *v32 = v22;
  v32[1] = v24;
  *&v16[v12[8]] = port;
  v33 = &v16[v12[9]];
  *v33 = v26;
  v33[1] = v28;
  *&v16[v12[10]] = v29;
  v34 = sub_182AD3548();
  v35 = v47;
  (*(*(v34 - 8) + 56))(v47, 1, 1, v34);
  v36 = v46;
  sub_181F7CFF0(v16, v46);
  v37 = (*(v43 + 80) + 40) & ~*(v43 + 80);
  v38 = swift_allocObject();
  v38[2] = 0;
  v38[3] = 0;
  v38[4] = v48;
  sub_181F7D054(v36, v38 + v37);

  sub_181F774B4(0, 0, v35, &unk_182AE8328, v38);

  sub_181F7D1B0(v16);
  return (*(v17 + 8))(v19, v49);
}

uint64_t sub_181F7B428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_181F54964;

  return sub_182127470(a5);
}

uint64_t nw_storage_delete_alt_svc(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;

  swift_unknownObjectRetain();
  if (a2)
  {
    a2 = sub_182AD3158();
    v10 = v9;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  nw_endpoint_get_hostname(a3);
  v11 = sub_182AD3158();
  v13 = v12;
  port = nw_endpoint_get_port(a3);
  v15 = sub_182AD3548();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = v10;
  *(v16 + 56) = v11;
  *(v16 + 64) = v13;
  *(v16 + 72) = port;
  sub_181F774B4(0, 0, v8, &unk_182AE8338, v16);
  swift_unknownObjectRelease();
}

uint64_t nw_storage_delete_alt_svc(_:_:_:)(uint64_t a1, uint64_t a2, NSObject *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;

  if (a2)
  {
    a2 = sub_182AD3158();
    v10 = v9;
  }

  else
  {
    v10 = 0xE000000000000000;
  }

  nw_endpoint_get_hostname(a3);
  v11 = sub_182AD3158();
  v13 = v12;
  port = nw_endpoint_get_port(a3);
  v15 = sub_182AD3548();
  (*(*(v15 - 8) + 56))(v8, 1, 1, v15);
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = a1;
  *(v16 + 40) = a2;
  *(v16 + 48) = v10;
  *(v16 + 56) = v11;
  *(v16 + 64) = v13;
  *(v16 + 72) = port;
  sub_181F774B4(0, 0, v8, &unk_182AE8340, v16);
}

uint64_t sub_181F7B7AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_181F7B7E0, 0, 0);
}

uint64_t sub_181F7B7E0()
{
  v1 = v0[2];
  v2 = (v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage);
  os_unfair_lock_lock((v1 + OBJC_IVAR____TtC7Network14NetworkStorage_internalStorage));
  v3 = sub_182128038(&v2[2], v1);
  v0[7] = v3;
  os_unfair_lock_unlock(v2);
  if (v3)
  {
    type metadata accessor for NetworkStorage.InternalStorage(0);
    sub_181F7D4E0(&unk_1EA836580, type metadata accessor for NetworkStorage.InternalStorage, &unk_182AF8290);
    v5 = sub_182AD34A8();

    return MEMORY[0x1EEE6DFA0](sub_181F7B8FC, v5, v4);
  }

  else
  {
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_181F7B8FC()
{
  sub_182136FA8(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181F7B970(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181EA9B98;

  return v6(a1);
}

uint64_t sub_181F7BA68@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = sub_182AD2868();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v11 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838CC8, &qword_182AE8360) + 48);
    (*(v8 + 16))(v10, a3, v7);
    sub_181F7D4E0(&qword_1EA836420, MEMORY[0x1E69E7FD0], MEMORY[0x1E69E7FE0]);
    result = sub_182AD3278();
    *(a4 + v11) = result;
  }

  else
  {
    v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838CC8, &qword_182AE8360) + 48);
    (*(v8 + 16))(v10, a3, v7);
    sub_181F7D4E0(&qword_1EA836420, MEMORY[0x1E69E7FD0], MEMORY[0x1E69E7FE0]);
    result = sub_182AD3278();
    *(a4 + v13) = result;
  }

  return result;
}

char *sub_181F7BC4C(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x1E69E9840];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      sub_181C1F2E4(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    sub_181C1F2E4(v7, v6);
    *v4 = xmmword_182AE7580;
    sub_181C1F2E4(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (sub_182AD1D58() && __OFSUB__(v7, sub_182AD1D88()))
      {
LABEL_26:
        __break(1u);
      }

      sub_182AD1DB8();
      swift_allocObject();
      v14 = sub_182AD1D38();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = sub_181F7C3E8(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    sub_181C1F2E4(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_182AE7580;
    sub_181C1F2E4(0, 0xC000000000000000);
    sub_182AD2068();
    result = sub_181F7C3E8(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

uint64_t sub_181F7BFF0(void (*a1)(uint64_t, uint64_t), uint64_t a2)
{
  v3 = v2;
  v23 = *MEMORY[0x1E69E9840];
  v6 = *v2;
  v5 = v2[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (v7)
    {

      sub_181C1F2E4(v6, v5);
      *&v22 = v6;
      *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_182AE7580;
      sub_181C1F2E4(0, 0xC000000000000000);
      result = sub_181F7C30C(a1);
      v9 = v22;
      v10 = *(&v22 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_181C1F2E4(v6, v5);
      *&v22 = v6;
      WORD4(v22) = v5;
      BYTE10(v22) = BYTE2(v5);
      BYTE11(v22) = BYTE3(v5);
      BYTE12(v22) = BYTE4(v5);
      BYTE13(v22) = BYTE5(v5);
      BYTE14(v22) = BYTE6(v5);
      result = (a1)(&v22, &v22 + BYTE6(v5));
      v9 = v22;
      v10 = DWORD2(v22) | ((WORD6(v22) | (BYTE14(v22) << 16)) << 32);
    }

    *v3 = v9;
    v3[1] = v10;
    return result;
  }

  if (v7 != 2)
  {
    *(&v22 + 7) = 0;
    *&v22 = 0;
    return (a1)(&v22, &v22);
  }

  sub_181C1F2E4(v6, v5);
  *&v22 = v6;
  *(&v22 + 1) = v5 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_182AE7580;
  sub_181C1F2E4(0, 0xC000000000000000);
  sub_182AD2068();
  v11 = *(&v22 + 1);
  v12 = *(v22 + 16);
  v13 = *(v22 + 24);
  result = sub_182AD1D58();
  if (!result)
  {
    __break(1u);
    return result;
  }

  v14 = result;
  v15 = sub_182AD1D88();
  v16 = v12 - v15;
  if (__OFSUB__(v12, v15))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v17 = __OFSUB__(v13, v12);
  v18 = v13 - v12;
  if (v17)
  {
    goto LABEL_17;
  }

  v19 = sub_182AD1D78();
  if (v19 >= v18)
  {
    v20 = v18;
  }

  else
  {
    v20 = v19;
  }

  result = (a1)(v14 + v16, v14 + v16 + v20);
  *v3 = v22;
  v3[1] = v11 | 0x8000000000000000;
  return result;
}

void *sub_181F7C2A0(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_181F7C30C(void (*a1)(uint64_t, uint64_t))
{
  result = sub_182AD2098();
  v4 = *v1;
  v5 = v1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = a1;

  result = sub_182AD1D58();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_182AD1D88();
  v7 = v4 - result;
  if (__OFSUB__(v4, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v8 = v5 - v4;
  v9 = sub_182AD1D78();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11(v6 + v7, v6 + v7 + v10);
}

char *sub_181F7C3E8(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = sub_182AD1D58();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = sub_182AD1D88();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = sub_182AD1D78();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t sub_181F7C49C@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = sub_182AD3BB8();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_181F7C4EC(uint64_t a1)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838C80, &qword_182AE6070);
  v10 = sub_181AB3DCC(&qword_1EA838C88, &qword_1EA838C80, &qword_182AE6070, MEMORY[0x1E6969E08]);
  v8[0] = a1;
  v2 = __swift_project_boxed_opaque_existential_1(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_181FAA294(v3, &v3[v4], &v7);
  v5 = v7;
  __swift_destroy_boxed_opaque_existential_1(v8);
  return v5;
}

uint64_t sub_181F7C5C8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_181F77310(a1, v4, v5, v6);
}

uint64_t objectdestroyTm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F7C6BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181F779F4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_8Tm_0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_181F7C7E8(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_181F5EB68;

  return sub_181F77E2C(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_181F7C8F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181F78340(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_181F7C9BC(uint64_t a1)
{
  v4 = v1[3];
  v11 = v1[2];
  v5 = v1[4];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181F78998(a1, v11, v4, v5, (v1 + 5), v6, v7, v8);
}

uint64_t sub_181F7CAB4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v10 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_181F78E68(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t objectdestroy_37Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  _Block_release(*(v0 + 72));

  return swift_deallocObject();
}

uint64_t sub_181F7CBFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181F794EC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_181F7CCF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 64);
  v10 = *(v1 + 56);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_181F79DA0(a1, v4, v5, v6, v7, v8, v10, v9);
}

uint64_t sub_181F7CDD8(uint64_t a1)
{
  v13 = v1[2];
  v11 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181F7A338(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_181F7CED8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181F7ABC4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroy_24Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  _Block_release(*(v0 + 48));

  return swift_deallocObject();
}

uint64_t sub_181F7CFF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_181F7D054(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_181F7D0B8(uint64_t a1)
{
  v4 = *(type metadata accessor for NetworkStorage.AltSvcEntry(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F54964;

  return sub_181F7B428(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_181F7D1B0(uint64_t a1)
{
  v2 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_181F7D20C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F5EB68;

  return sub_181F7B7AC(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_64Tm(void (*a1)(void), uint64_t a2)
{
  swift_unknownObjectRelease();

  a1(*(v2 + 64));

  return swift_deallocObject();
}

void *sub_181F7D368@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_181F7C2A0(sub_181F7D3D0, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_181F7D414@<X0>(const char *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = type metadata accessor for NetworkStorage.AltSvcEntry(0);
  result = nw_endpoint_create_host_with_numeric_port(a1, *(v5 + *(v6 + 40)));
  *a2 = result;
  return result;
}

unint64_t sub_181F7D470()
{
  result = qword_1EA838CC0;
  if (!qword_1EA838CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838CC0);
  }

  return result;
}

uint64_t sub_181F7D4E0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_95Tm()
{

  _Block_release(*(v0 + 24));

  return swift_deallocObject();
}

void sub_181F7D574(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t))
{
  if (a2 >> 60 != 15)
  {
    a7(a1);
    (a7)(a3, a4);

    (a7)(a5, a6);
  }
}

uint64_t sub_181F7D604(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_181F5EB68;

  return sub_181F7B970(a1, v4);
}

uint64_t sub_181F7D6BC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_181F54964;

  return sub_181F7B970(a1, v4);
}

uint64_t sub_181F7D7A8(uint64_t a1, char a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 64) = -1;
  *(v6 + 16) = a1;
  *(v6 + 24) = a2 & 1;
  *(v6 + 32) = a3;
  *(v6 + 40) = a4 & 1;
  if (a2)
  {
    v7 = 1564760864;
    v8 = 0xE400000000000000;
  }

  else
  {
    MEMORY[0x1865D9CA0](4479776, 0xE300000000000000);
    sub_181F7D8D8();
    v9 = sub_182AD3A88();
    MEMORY[0x1865D9CA0](v9);

    v7 = 93;
    v8 = 0xE100000000000000;
  }

  MEMORY[0x1865D9CA0](v7, v8);
  *(v6 + 48) = a5;
  *(v6 + 56) = a6;
  return v6;
}

uint64_t sub_181F7D87C()
{

  return swift_deallocClassInstance();
}

unint64_t sub_181F7D8D8()
{
  result = qword_1EA839BE0;
  if (!qword_1EA839BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA839BE0);
  }

  return result;
}

unint64_t sub_181F7D92C(unint64_t a1)
{
  if ((a1 & 3) == 0)
  {
    return a1 >> 2;
  }

  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v2 = sub_182AD2698();
  __swift_project_value_buffer(v2, qword_1EA843418);
  v3 = sub_182AD2678();
  v4 = sub_182AD38B8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = a1;
    _os_log_impl(&dword_181A37000, v3, v4, "Cannot create DATAGRAM flow ID with associated stream ID %llu", v5, 0xCu);
    MEMORY[0x1865DF520](v5, -1, -1);
  }

  return 0;
}

uint64_t sub_181F7DA48(uint64_t a1, uint64_t a2)
{
  v4 = sub_181F7DAF8();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

unint64_t sub_181F7DAA4()
{
  result = qword_1EA838CE0;
  if (!qword_1EA838CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838CE0);
  }

  return result;
}

unint64_t sub_181F7DAF8()
{
  result = qword_1EA838CE8;
  if (!qword_1EA838CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838CE8);
  }

  return result;
}

unint64_t sub_181F7DB4C()
{
  result = qword_1EA838CF0;
  if (!qword_1EA838CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838CF0);
  }

  return result;
}

uint64_t sub_181F7DBA0()
{
  v0 = sub_182AD2698();
  __swift_allocate_value_buffer(v0, qword_1EA843118);
  __swift_project_value_buffer(v0, qword_1EA843118);
  return sub_182AD2688();
}

uint64_t sub_181F7DC14()
{
  sub_182AD1F28();
  swift_getKeyPath();

  sub_182AD1F38();

  swift_getKeyPath();

  sub_182AD1F38();

  swift_getKeyPath();

  sub_182AD1F38();

  swift_getKeyPath();

  sub_182AD1F38();

  swift_getKeyPath();

  sub_182AD1F38();
}

uint64_t sub_181F7DD70()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_181F7DDA0()
{
  v1 = *(v0 + 32);

  return v1;
}

char *filterEndpoints(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = swift_unknownObjectRetain();
  v6 = sub_181F7DE40(v5, a2, a3);
  swift_unknownObjectRelease();

  return v6;
}

char *sub_181F7DE40(char *a1, uint64_t a2, uint64_t a3)
{
  v69 = a1;
  v72 = sub_182AD1F48();
  v5 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v7 = v65 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D00, &unk_182AE57C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = v65 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EF0, &unk_182AE9740);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v73 = v65 - v16;
  v17 = sub_182AD2088();
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 104))(v20, *MEMORY[0x1E6969010], v18);
  v22 = sub_181F7EFE8(a2, a3, v20);
  v24 = v23;
  sub_181F7DC14();
  sub_182AD1C48();
  swift_allocObject();
  sub_182AD1C38();
  sub_181F7F268(&qword_1EA836670, MEMORY[0x1E6969C90]);
  sub_182AD1C08();
  v70 = v14;
  v71 = v22;
  (*(v5 + 8))(v7, v72);

  (*(v12 + 56))(v10, 0, 1, v11);
  v25 = v73;
  (*(v12 + 32))(v73, v10, v11);
  p_aBlock = v12;
  v27 = v25;
  v28 = v11;
  if (qword_1EA836630 != -1)
  {
    goto LABEL_23;
  }

  while (1)
  {
    v29 = sub_182AD2698();
    v30 = __swift_project_value_buffer(v29, qword_1EA843118);
    v31 = v70;
    p_aBlock[2](v70, v27, v28);
    v72 = v30;
    v32 = sub_182AD2678();
    v33 = sub_182AD3898();
    v34 = os_log_type_enabled(v32, v33);
    v66 = v24;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *&aBlock = v36;
      *v35 = 136315138;
      sub_181F7F268(&unk_1EA836650, MEMORY[0x1E6969CB0]);
      v37 = sub_182AD41B8();
      v39 = v38;
      v65[0] = p_aBlock[1];
      (v65[0])(v31, v28);
      v40 = sub_181C64FFC(v37, v39, &aBlock);

      *(v35 + 4) = v40;
      _os_log_impl(&dword_181A37000, v32, v33, "Found predicate: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v36);
      MEMORY[0x1865DF520](v36, -1, -1);
      MEMORY[0x1865DF520](v35, -1, -1);
    }

    else
    {

      v65[0] = p_aBlock[1];
      (v65[0])(v31, v28);
    }

    v41 = v71;
    v70 = v28;
    v67 = p_aBlock;
    v79 = MEMORY[0x1E69E7CC0];
    v42 = swift_allocObject();
    *(v42 + 16) = &v79;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_181F7F220;
    *(v43 + 24) = v42;
    v65[1] = v42;
    *v78 = sub_181F7F228;
    *&v78[8] = v43;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v77 = sub_181F79D48;
    *(&v77 + 1) = &block_descriptor_2;
    v44 = _Block_copy(&aBlock);

    v45 = v69;
    nw_array_apply(v69, v44);
    _Block_release(v44);
    count = nw_array_get_count(v45);
    v24 = sub_182AD2678();
    v47 = sub_182AD38A8();
    if (os_log_type_enabled(v24, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 134217984;
      *(v48 + 4) = count;
      _os_log_impl(&dword_181A37000, v24, v47, "Original endpoint count: %ld", v48, 0xCu);
      MEMORY[0x1865DF520](v48, -1, -1);
    }

    v28 = nw_array_create();
    v27 = v79;
    v49 = *(v79 + 2);

    if (!v49)
    {
      break;
    }

    v51 = 0;
    p_aBlock = &aBlock;
    v52 = 32;
    *&v50 = 134217984;
    v68 = v50;
    while (v51 < *(v27 + 2))
    {
      v53 = *&v27[v52];
      v54 = *&v27[v52 + 16];
      v55 = *&v27[v52 + 32];
      *&v78[13] = *&v27[v52 + 45];
      *v78 = v55;
      aBlock = v53;
      v77 = v54;
      v75[3] = &type metadata for AgentEndpoint;
      v75[4] = &off_1EEF9C488;
      v75[0] = swift_allocObject();
      memmove((v75[0] + 16), &v27[v52], 0x35uLL);
      v75[5] = v75;
      sub_181F7F230(&aBlock, v74);
      v56 = sub_182AD2278();
      __swift_destroy_boxed_opaque_existential_1(v75);
      v57 = sub_182AD2678();
      v24 = sub_182AD38A8();
      v58 = os_log_type_enabled(v57, v24);
      if (v56)
      {
        if (v58)
        {
          v59 = swift_slowAlloc();
          *v59 = v68;
          *(v59 + 4) = v51;
          _os_log_impl(&dword_181A37000, v57, v24, "Endpoint at index %ld DID match predicate, keeping endpoint", v59, 0xCu);
          MEMORY[0x1865DF520](v59, -1, -1);
        }

        v24 = nw_array_get_object_at_index(v69, v51);
        nw_array_append(v28, v24);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v58)
        {
          v60 = swift_slowAlloc();
          *v60 = v68;
          *(v60 + 4) = v51;
          _os_log_impl(&dword_181A37000, v57, v24, "Endpoint at index %ld did NOT match predicate, filtering out endpoint", v60, 0xCu);
          MEMORY[0x1865DF520](v60, -1, -1);
        }
      }

      v41 = v71;
      ++v51;
      v52 += 56;
      if (v49 == v51)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_23:
    swift_once();
  }

LABEL_18:

  swift_unknownObjectRetain();
  v61 = sub_182AD2678();
  v62 = sub_182AD3898();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    *v63 = 134217984;
    *(v63 + 4) = nw_array_get_count(v28);
    swift_unknownObjectRelease();
    _os_log_impl(&dword_181A37000, v61, v62, "Filtered endpoint count: %ld", v63, 0xCu);
    MEMORY[0x1865DF520](v63, -1, -1);
    sub_181C1F2E4(v41, v66);
  }

  else
  {
    sub_181C1F2E4(v41, v66);

    swift_unknownObjectRelease();
  }

  (v65[0])(v73, v70);

  return v28;
}

uint64_t sub_181F7EA48(uint64_t a1, uint64_t a2, char **a3)
{
  v4 = swift_dynamicCastObjCProtocolConditional();
  if (v4)
  {
    v5 = v4;
    swift_unknownObjectRetain();
    sub_181F7EE14(v5, v15);
    swift_unknownObjectRelease();
    v6 = *a3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v6;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v6 = sub_181F5A2F4(0, *(v6 + 2) + 1, 1, v6);
      *a3 = v6;
    }

    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_181F5A2F4((v8 > 1), v9 + 1, 1, v6);
      *a3 = v6;
    }

    *(v6 + 2) = v9 + 1;
    v10 = &v6[56 * v9];
    v11 = v15[0];
    v12 = v15[1];
    v13 = *v16;
    *(v10 + 77) = *&v16[13];
    *(v10 + 3) = v12;
    *(v10 + 4) = v13;
    *(v10 + 2) = v11;
  }

  return 1;
}

_BYTE **sub_181F7EB54(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_181F7EB8C(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_181C64FFC(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

void *sub_181F7EBE8(uint64_t a1, unint64_t a2)
{
  v3 = sub_1822B094C(a1, a2);
  sub_181F7EC34(&unk_1EEF96B88);
  return v3;
}

uint64_t sub_181F7EC34(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_181F7ED20(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_181F7ED20(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B730, &qword_182AEDF30);
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

uint64_t sub_181F7EE14@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (nw_endpoint_get_device_name(a1))
  {
    result = nw_endpoint_get_device_name(a1);
    if (!result)
    {
      __break(1u);
      goto LABEL_15;
    }

    v5 = sub_182AD3158();
    v7 = v6;
  }

  else
  {
    v5 = 0;
    v7 = 0xE000000000000000;
  }

  if (!nw_endpoint_get_device_id(a1))
  {
    v8 = 0;
    v10 = 0xE000000000000000;
    goto LABEL_9;
  }

  result = nw_endpoint_get_device_id(a1);
  if (!result)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v8 = sub_182AD3158();
  v10 = v9;
LABEL_9:
  if (!nw_endpoint_get_device_model(a1))
  {
    v11 = 0;
    v13 = 0xE000000000000000;
    goto LABEL_13;
  }

  result = nw_endpoint_get_device_model(a1);
  if (result)
  {
    v11 = sub_182AD3158();
    v13 = v12;
LABEL_13:
    result = nw_endpoint_get_device_color(a1);
    *a2 = v5;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8;
    *(a2 + 24) = v10;
    *(a2 + 32) = v11;
    *(a2 + 40) = v13;
    *(a2 + 48) = result;
    *(a2 + 52) = 0;
    return result;
  }

LABEL_16:
  __break(1u);
  return result;
}

unint64_t sub_181F7EF04(unint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    sub_182AD20C8();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = sub_182AD1D58();
  if (v3)
  {
    result = sub_182AD1D88();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = sub_182AD1D78();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_181E68460(v3, v7);

  return v8;
}

unint64_t sub_181F7EFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_182AD2088();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_182AD2078();
  if (a2)
  {
    sub_182AD1DB8();
    swift_allocObject();

    v10 = sub_182AD1D38();
    (*(v7 + 16))(v9, a3, v6);
    if ((*(v7 + 88))(v9, v6) == *MEMORY[0x1E6969010])
    {
      v11 = sub_182AD1DA8();
      *v12 |= 0x8000000000000000;
      v11(v16, 0);
    }

    else
    {
      (*(v7 + 8))(v9, v6);
    }

    v14 = sub_181F7EF04(v10, a2);
  }

  else
  {
    v13 = sub_182AD2078();
    v13(a1, 0);

    v14 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v14;
}

uint64_t sub_181F7F268(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA838EF0, &unk_182AE9740);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy53_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_181F7F2D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 53))
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

uint64_t sub_181F7F31C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 53) = 1;
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

    *(result + 53) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_181F7F3C4()
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

uint64_t sub_181F7F454(uint64_t a1)
{
  sub_182AD44E8();
  sub_182AD4518();
  return sub_182AD4558();
}

unsigned __int8 *sub_181F7F4A4@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 7)
  {
    v3 = 3;
  }

  else
  {
    v3 = 0x2030103030300uLL >> (8 * v2);
  }

  *a2 = v3;
  return result;
}

Network::IPProtocol::ECN_optional __swiftcall IPProtocol.ECN.init(rawValue:)(Network::IPProtocol::ECN_optional rawValue)
{
  value = rawValue.value;
  if ((rawValue.value & 0xFC) != 0)
  {
    value = Network_IPProtocol_ECN_unknownDefault;
  }

  *v1 = value;
  return rawValue;
}

uint64_t sub_181F7F518@<X0>(_BYTE *a2@<X8>)
{
  v3 = sub_1822C1364();

  *a2 = v3;
  return result;
}

void sub_181F7F558(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 5)
  {
    v12 = *(a1 + 32);
    v13 = *(a1 + 33);
    v14 = *(a1 + 34);
    v15 = *(a1 + 35);
    v16 = *(a1 + 36);

    if (v12 == 6)
    {
      v17 = 2;
    }

    else
    {
      v17 = v12 == 4;
    }

    if (v13 == 2)
    {
      v18 = 2;
    }

    else
    {
      v18 = v13 == 1;
    }

    v11 = v17 | (v18 << 8) | (v14 << 16) | (v16 << 24) | (v15 << 32);
  }

  else
  {

    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1EA843348);
    v4 = sub_182AD2678();
    v5 = sub_182AD38B8();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136315138;
      v8 = DeserializationResult.description.getter();
      v10 = sub_181C64FFC(v8, v9, &v19);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_181A37000, v4, v5, "Failed to deserialize: %s", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v7);
      MEMORY[0x1865DF520](v7, -1, -1);
      MEMORY[0x1865DF520](v6, -1, -1);
    }

    v11 = 3;
  }

  *a2 = v11;
  *(a2 + 4) = BYTE4(v11);
}

Swift::OpaquePointer_optional __swiftcall IPProtocol.IPOptions.serialize()()
{
  v2 = sub_181F7F768(v0, *v1 | (*(v1 + 1) << 8));
  result.value._rawValue = v2;
  result.is_nil = v3;
  return result;
}

uint64_t sub_181F7F768(uint64_t a1, uint64_t a2)
{
  v13[0] = 0x60400u >> (8 * a2);
  v13[40] = 0;
  v12[0] = BYTE1(a2);
  v12[40] = 0;
  v11[0] = BYTE2(a2);
  v11[40] = 0;
  v10[0] = BYTE4(a2);
  v10[40] = 0;
  v9[0] = BYTE3(a2);
  v9[40] = 0;
  sub_181F80BF8(v13, &v4);
  sub_181F80BF8(v12, &v5);
  sub_181F80BF8(v11, &v6);
  sub_181F80BF8(v10, &v7);
  sub_181F80BF8(v9, &v8);
  v3 = MEMORY[0x1E69E7CC0];
  sub_1822A69B4(&v3);
  sub_1822A69B4(&v3);
  sub_1822A69B4(&v3);
  sub_1822A69B4(&v3);
  sub_1822A69B4(&v3);
  swift_arrayDestroy();
  sub_181F80C54(v9);
  sub_181F80C54(v10);
  sub_181F80C54(v11);
  sub_181F80C54(v12);
  sub_181F80C54(v13);
  return v3;
}

void IPProtocol.IPOptions.deepCopy()(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t IPProtocol.IPOptions.isEqual(to:for:)(int *a1, uint8x8_t a2, uint8x8_t a3)
{
  v4 = *(a1 + 4);
  v5 = *(v3 + 4);
  v9 = *v3;
  v10 = v5;
  v7 = *a1;
  v8 = v4;
  return _s7Network10IPProtocolV9IPOptionsV2eeoiySbAE_AEtFZ_0(&v9, &v7, a2, a3) & 1;
}

void sub_181F7F920(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  *a1 = *v1;
  *(a1 + 4) = v2;
}

uint64_t sub_181F7F934(int *a1, uint8x8_t a2, uint8x8_t a3)
{
  v4 = *(a1 + 4);
  v5 = *(v3 + 4);
  v9 = *v3;
  v10 = v5;
  v7 = *a1;
  v8 = v4;
  return _s7Network10IPProtocolV9IPOptionsV2eeoiySbAE_AEtFZ_0(&v9, &v7, a2, a3) & 1;
}

void sub_181F7F984(uint64_t a1, char a2)
{
  if (*(v2 + 15))
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v3 = sub_182AD2698();
    __swift_project_value_buffer(v3, qword_1EA843348);
    oslog = sub_182AD2678();
    v4 = sub_182AD38B8();
    if (os_log_type_enabled(oslog, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_181A37000, oslog, v4, "Cannot modify static metadata", v5, 2u);
      MEMORY[0x1865DF520](v5, -1, -1);
    }
  }

  else
  {
    *v2 = a1;
    *(v2 + 8) = a2 & 1;
  }
}

void sub_181F7FA90(_BYTE *a1)
{
  if (*(v1 + 15))
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1EA843348);
    oslog = sub_182AD2678();
    v3 = sub_182AD38B8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_181A37000, oslog, v3, "Cannot modify static metadata", v4, 2u);
      MEMORY[0x1865DF520](v4, -1, -1);
    }
  }

  else
  {
    *(v1 + 9) = *a1;
  }
}

void sub_181F7FB98(char a1)
{
  if (*(v1 + 15))
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1EA843348);
    oslog = sub_182AD2678();
    v3 = sub_182AD38B8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_181A37000, oslog, v3, "Cannot modify static metadata", v4, 2u);
      MEMORY[0x1865DF520](v4, -1, -1);
    }
  }

  else
  {
    *(v1 + 10) = a1;
  }
}

void sub_181F7FC9C(char a1)
{
  if (*(v1 + 15))
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1EA843348);
    oslog = sub_182AD2678();
    v3 = sub_182AD38B8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_181A37000, oslog, v3, "Cannot modify static metadata", v4, 2u);
      MEMORY[0x1865DF520](v4, -1, -1);
    }
  }

  else
  {
    *(v1 + 11) = a1;
  }
}

void sub_181F7FDA0(char a1)
{
  if (*(v1 + 15))
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1EA843348);
    oslog = sub_182AD2678();
    v3 = sub_182AD38B8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_181A37000, oslog, v3, "Cannot modify static metadata", v4, 2u);
      MEMORY[0x1865DF520](v4, -1, -1);
    }
  }

  else
  {
    *(v1 + 12) = a1;
  }
}

void sub_181F7FEA4(__int16 a1)
{
  if (v1[15])
  {
    if (qword_1EA8371A0 != -1)
    {
      swift_once();
    }

    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1EA843348);
    oslog = sub_182AD2678();
    v3 = sub_182AD38B8();
    if (os_log_type_enabled(oslog, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_181A37000, oslog, v3, "Cannot modify static metadata", v4, 2u);
      MEMORY[0x1865DF520](v4, -1, -1);
    }
  }

  else
  {
    v1[13] = a1;
    v1[14] = HIBYTE(a1) & 1;
  }
}

uint64_t IPProtocol.IPMetadata.isEqual(to:for:)(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = v2;
  return _s7Network10IPProtocolV10IPMetadataV2eeoiySbAE_AEtFZ_0(&v5, &v4) & 1;
}

uint64_t sub_181F7FFEC(__int128 *a1)
{
  v2 = *v1;
  v4 = *a1;
  v5 = v2;
  return _s7Network10IPProtocolV10IPMetadataV2eeoiySbAE_AEtFZ_0(&v5, &v4) & 1;
}

uint64_t IPProtocol.IPInstance.__allocating_init()()
{
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 6;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0xE000000000000000;
  *(result + 104) = 6;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 6;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

uint64_t IPProtocol.IPInstance.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  *(v0 + 24) = 0;
  *(v0 + 32) = 6;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 6;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 88) = 0;
  *(v0 + 96) = 0;
  *(v0 + 80) = 0xE000000000000000;
  *(v0 + 104) = 6;
  *(v0 + 112) = 0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 6;
  *(v0 + 136) = 0;
  *(v0 + 144) = 0;
  return result;
}

uint64_t IPProtocol.IPInstance.deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return v0;
}

uint64_t IPProtocol.IPInstance.__deallocating_deinit()
{
  sub_181F68E5C(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  sub_181F68E5C(*(v0 + 40), *(v0 + 48), *(v0 + 56));

  sub_181F68E5C(*(v0 + 88), *(v0 + 96), *(v0 + 104));
  sub_181F68E5C(*(v0 + 112), *(v0 + 120), *(v0 + 128));

  return swift_deallocClassInstance();
}

uint64_t IPProtocol.newPerProtocolOptions(from:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 4);
  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

void IPProtocol.newPerProtocolOptions(from:)(uint64_t a2@<X8>)
{

  sub_181F7F558(v3, a2);
}

uint64_t IPProtocol.newProtocolInstance()(uint64_t a1)
{
  type metadata accessor for IPProtocol.IPInstance();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 6;
  *(result + 40) = 0;
  *(result + 48) = 0;
  *(result + 56) = 6;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 88) = 0;
  *(result + 96) = 0;
  *(result + 80) = 0xE000000000000000;
  *(result + 104) = 6;
  *(result + 112) = 0;
  *(result + 120) = 0;
  *(result + 128) = 6;
  *(result + 136) = 0;
  *(result + 144) = 0;
  return result;
}

uint64_t sub_181F80270()
{
  v1 = 0;
  result = sub_181F80AE0(&v1);
  qword_1EA843218 = result;
  return result;
}

uint64_t sub_181F802A0()
{
  v1 = 1;
  result = sub_181F80AE0(&v1);
  qword_1EA843220 = result;
  return result;
}

uint64_t sub_181F802D4()
{
  v1 = 2;
  result = sub_181F80AE0(&v1);
  qword_1EA843160 = result;
  return result;
}

uint64_t sub_181F80308()
{
  v1 = 3;
  result = sub_181F80AE0(&v1);
  qword_1EA843110 = result;
  return result;
}

uint64_t sub_181F80348@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 4);
  *a2 = *result;
  *(a2 + 4) = v2;
  return result;
}

void sub_181F8035C(uint64_t a2@<X8>)
{

  sub_181F7F558(v3, a2);
}

uint64_t _s7Network10IPProtocolV10IPMetadataV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 9);
  v4 = *(a1 + 10);
  v5 = *(a1 + 11);
  v6 = *(a1 + 12);
  v7 = *(a1 + 13);
  v8 = *(a1 + 14);
  v9 = *(a1 + 15);
  v10 = *(a2 + 9);
  v11 = *(a2 + 11);
  if (*(a1 + 8))
  {
    result = 0;
    if (v3 == v10)
    {
      v13 = *(a2 + 8);
    }

    else
    {
      v13 = 0;
    }

    if (v13 != 1)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if ((*(a2 + 8) & 1) != 0 || *a1 != *a2 || v3 != v10)
    {
      return result;
    }
  }

  if (v4 != *(a2 + 10))
  {
    return result;
  }

  if (v5 == 2)
  {
    result = 0;
    if (v11 != 2)
    {
      return result;
    }
  }

  else
  {
    result = 0;
    if (v11 == 2 || ((v11 ^ v5) & 1) != 0)
    {
      return result;
    }
  }

  if (v6 == *(a2 + 12))
  {
    if (v8)
    {
      if (!*(a2 + 14))
      {
        return 0;
      }
    }

    else
    {
      if (v7 == *(a2 + 13))
      {
        v14 = *(a2 + 14);
      }

      else
      {
        v14 = 1;
      }

      if (v14)
      {
        return 0;
      }
    }

    return v9 ^ *(a2 + 15) ^ 1u;
  }

  return result;
}

unint64_t sub_181F804F0()
{
  result = qword_1EA838D08;
  if (!qword_1EA838D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D08);
  }

  return result;
}

unint64_t sub_181F80544(uint64_t a1)
{
  result = sub_181F8056C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_181F8056C()
{
  result = qword_1ED40F870;
  if (!qword_1ED40F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40F870);
  }

  return result;
}

unint64_t sub_181F805C0(uint64_t a1)
{
  result = sub_181F805E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_181F805E8()
{
  result = qword_1EA838D10;
  if (!qword_1EA838D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D10);
  }

  return result;
}

unint64_t sub_181F8064C()
{
  result = qword_1EA838D18;
  if (!qword_1EA838D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D18);
  }

  return result;
}

unint64_t sub_181F806A4()
{
  result = qword_1ED40F868;
  if (!qword_1ED40F868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED40F868);
  }

  return result;
}

uint64_t __swift_memcpy5_1(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for IPProtocol.IPOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[5])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IPProtocol.IPOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IPProtocol.IPMetadata(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 15);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for IPProtocol.IPMetadata(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 15) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_181F8087C()
{
  result = qword_1EA838D20;
  if (!qword_1EA838D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D20);
  }

  return result;
}

unint64_t sub_181F808D4()
{
  result = qword_1EA838D28;
  if (!qword_1EA838D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D28);
  }

  return result;
}

unint64_t sub_181F8092C()
{
  result = qword_1EA838D30;
  if (!qword_1EA838D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D30);
  }

  return result;
}

unint64_t sub_181F80984()
{
  result = qword_1EA838D38;
  if (!qword_1EA838D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D38);
  }

  return result;
}

unint64_t sub_181F809DC()
{
  result = qword_1EA838D40;
  if (!qword_1EA838D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D40);
  }

  return result;
}

unint64_t sub_181F80A34()
{
  result = qword_1EA838D48;
  if (!qword_1EA838D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D48);
  }

  return result;
}

unint64_t sub_181F80A8C()
{
  result = qword_1EA838D50;
  if (!qword_1EA838D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838D50);
  }

  return result;
}

uint64_t sub_181F80AE0(char *a1)
{
  v5[10] = *MEMORY[0x1E69E9840];
  v1 = *a1;
  if (qword_1ED4102F0 != -1)
  {
    swift_once();
  }

  *&v5[3] = xmmword_1ED411D60;
  *&v5[5] = unk_1ED411D70;
  *&v5[7] = unk_1ED411D80;
  v5[9] = qword_1ED411D90;
  v5[0] = 0;
  v5[1] = 0;
  nw_uuid_generate_insecure(v5);
  v2 = sub_182090764(v5[0], v5[1]);
  swift_beginAccess();
  if (*(v2 + 79) != 2)
  {
    v4 = v1;
    sub_181F7FA90(&v4);
    if (*(v2 + 79) != 2)
    {
      *(v2 + 79) = 1;
    }
  }

  swift_endAccess();
  return v2;
}

uint64_t sub_181F80CAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_182AD3E78();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_182AD1C48();
  swift_allocObject();
  v8 = sub_182AD1C38();
  sub_182AD3E58();
  v17 = type metadata accessor for NWActorSystem();
  v16[0] = a1;

  v9 = sub_182AD1C28();
  sub_1820FA1B8(v16, v7);
  v9(v15, 0);
  if (qword_1EA8372B0 != -1)
  {
    swift_once();
  }

  v10 = __swift_project_value_buffer(v4, qword_1EA843458);
  (*(v5 + 16))(v7, v10, v4);
  v17 = type metadata accessor for NWFileSerializationContext(0);
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v16);
  sub_181F80E94(a2, boxed_opaque_existential_0Tm, v12);
  v13 = sub_182AD1C28();
  sub_1820FA1B8(v16, v7);
  v13(v15, 0);
  return v8;
}

uint64_t sub_181F80E94(uint64_t a1, uint64_t a2, double a3)
{
  v5 = type metadata accessor for NWFileSerializationContext(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

BOOL sub_181F80EF8(unsigned __int8 *a1)
{
  v13 = *a1;
  if (qword_1ED410028 != -1)
  {
    swift_once();
  }

  v2 = xmmword_1ED40FF68;
  v3 = *(&xmmword_1ED40FF68 + 1);
  v4 = unk_1ED40FF78;
  v5 = byte_1ED40FF80;
  swift_beginAccess();
  v6 = *(v1 + 24);
  v7 = *(v1 + 32);
  v8 = *(v1 + 40);
  *v19 = *(v1 + 16);
  v20 = v6;
  v21 = v7;
  v22 = v8;
  *v15 = v2;
  v16 = v3;
  v17 = v4;
  v18 = v5;
  v14 = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v19, v15);
  v9 = v16;
  v10 = v17;
  LOBYTE(v2) = v18;
  sub_181F49A24(v6, v7, v8);
  sub_181F49A24(v3, v4, v5);
  sub_181F48350(v9, v10, v2);
  sub_181F48350(v20, v21, v22);
  if ((v14 & 1) != 0 && (v11 = (v1 + *(*v1 + 128)), swift_beginAccess(), (v11[1] & 1) == 0))
  {
    return (v13 & ~*v11) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t _nw_swift_udp_create_options()
{
  if (qword_1ED40FE40 != -1)
  {
    swift_once();
  }

  v0 = *(&xmmword_1ED411BB8 + 1);
  v1 = unk_1ED411BC8;
  v2 = byte_1ED411BD0;
  v3 = xmmword_1ED411BB8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838DF0, &unk_182AE7590);
  swift_allocObject();
  v4 = sub_181CFD414(v3, v0, v1, v2, 0);
  sub_181F49A24(v0, v1, v2);
  return v4;
}

BOOL _nw_udp_options_get_prefer_no_checksumTm(uint64_t a1, unsigned __int8 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838710, &qword_182AE4BA0);
  if (sub_181B4B228(a1, &unk_1EA838DF0, &unk_182AE7590, ProtocolOptions<>.udpOptions()))
  {
    v6 = a2;
    v4 = sub_181F80EF8(&v6);
  }

  else
  {
    return 0;
  }

  return v4;
}

uint64_t sub_181F811EC()
{
  v8 = *MEMORY[0x1E69E9840];
  if (qword_1ED410028 != -1)
  {
    swift_once();
  }

  v0 = xmmword_1ED40FF68;
  v1 = *(&xmmword_1ED40FF68 + 1);
  v2 = unk_1ED40FF78;
  v3 = byte_1ED40FF80;
  v7 = 0uLL;
  nw_uuid_generate_insecure_0(&v7);
  v6 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D58, &unk_182AF3130);
  v4 = swift_allocObject();
  *(v4 + 57) = 256;
  *(v4 + 16) = v0;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  *(v4 + 40) = v3;
  *(v4 + 41) = v6;
  swift_beginAccess();
  *(v4 + 58) = 0;
  sub_181F49A24(v1, v2, v3);
  return v4;
}

unint64_t sub_181F81310@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_181F84710(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_181F8133C(uint64_t a1, uint64_t a2)
{
  v4 = sub_181F84720();
  v5 = sub_181F7DB4C();

  return MEMORY[0x1EEE6B588](a1, a2, v4, v5);
}

unint64_t sub_181F81394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = *v5;
  v7 = *(v5 + 8);
  v8 = *(v5 + 10);
  v9 = *(v5 + 11);
  v10 = *(v5 + 12);
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  v13 = *(v5 + 25) | ((*(v5 + 29) | (*(v5 + 31) << 16)) << 32);
  v14 = *(v5 + 32);
  v15 = *(v5 + 40);
  v16 = *(v5 + 41) | ((*(v5 + 45) | (*(v5 + 47) << 16)) << 32);
  v17 = *(v5 + 48);
  v18 = *(v5 + 56);
  v19 = *(v5 + 64);
  switch(v10 >> 27)
  {
    case 1u:

      return sub_1820FDC7C(result, v7);
    case 2u:
      v42 = *v5;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v46 = v10 & 0x7FFFFFF;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15;
      *(&v53 + 1) = v16;
      HIBYTE(v53) = BYTE6(v16);
      *(&v53 + 5) = WORD2(v16);
      v54 = v17;
      v55 = v18;
      LOBYTE(v56) = v19;
      return sub_1821067F4(result, &v42);
    case 3u:
      v42 = *v5;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v46 = v10 & 0x7FFFFFF;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15;
      *(&v53 + 1) = v16;
      HIBYTE(v53) = BYTE6(v16);
      *(&v53 + 5) = WORD2(v16);
      v54 = v17;
      v55 = v18;
      v22 = *(sub_182107B90(result, &v42) + 16);

      return v22;
    case 4u:
      v42 = *v5;
      LOBYTE(v43) = v7;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      return sub_1821080E0(result, &v42);
    case 5u:

      return sub_1820FDD4C(result, v7, v11, v12 | (v13 << 8), a5, v17);
    case 6u:
      v26 = *v5;
      v27 = *(v5 + 16);
      v28 = *(v5 + 8);

      return sub_1821178A0(result, v26, v28, v27, v12 | (v13 << 8));
    case 7u:
      v23 = *v5;
      v24 = *(v5 + 16);
      v25 = *(v5 + 8);

      return sub_18210A434(result, v23, v25, v24);
    case 8u:
      v29 = v12 | (v13 << 8);
      v14 = *(v14 + 16);
      v30 = v11;
      v31 = sub_182104788(result, v7);
      v42 = v31 | 2;
      v32 = sub_182117AEC(v31, &v42, v30, v29, v14);
      v21 = __OFADD__(v32, v14);
      result = v32 + v14;
      if (!v21)
      {
        return result;
      }

      __break(1u);
      goto LABEL_65;
    case 9u:
      v42 = *v5;
      LOBYTE(v43) = v7;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15 & 1;
      result = sub_182103E7C(result);
      if ((v14 & 0x8000000000000000) == 0)
      {
        v21 = __OFADD__(result, v14);
        result += v14;
        if (v21)
        {
          __break(1u);
LABEL_24:
          v42 = result;
          LOBYTE(v43) = v7;
          v47 = v11;
          v48 = v12 & 1;
          v52 = v14;
          LOBYTE(v53) = v15 & 1;
          v54 = v17;
          return sub_18210CCF4(result, &v42);
        }

        return result;
      }

      __break(1u);
LABEL_102:
      __break(1u);
LABEL_103:
      __break(1u);
      goto LABEL_104;
    case 0xAu:

      return sub_1820FDD50(result, v7, v11);
    case 0xBu:
      v20 = v12 | (v13 << 8);

      return sub_1821243C0(result, v7, v11, v20, a5, v17);
    case 0xCu:

      return sub_1821243F0(result, v7, v11);
    case 0xDu:

      return sub_1821243F0(result, v7, v11);
    case 0xEu:

      return sub_1821243F0(result, v7, v11);
    case 0xFu:
      v20 = v12 | (v13 << 8);

      return sub_1821243C0(result, v7, v11, v20, a5, v17);
    case 0x10u:

      return sub_1821243F0(result, v7, v11);
    case 0x11u:

      return sub_1821243F0(result, v7, v11);
    case 0x12u:
      v42 = *v5;
      LOBYTE(v43) = v7;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      v53 = v15 | (v16 << 8);
      return sub_18210B614(result, &v42);
    case 0x13u:

      return sub_1821243F0(result, v7, v11);
    case 0x14u:
      if (!*(v5 + 8))
      {
        goto LABEL_85;
      }

      if (*(v5 + 8) != 1)
      {
        return qword_182AE8DA8[result];
      }

      return 9;
    case 0x15u:
      if (*(v5 + 8))
      {
        if (*(v5 + 8) == 1)
        {
          return 9;
        }

        return qword_182AE8DA8[result];
      }

      v40 = result + 8;
      if (result >= 0xFFFFFFFFFFFFFFF8)
      {
        goto LABEL_105;
      }

      if (v40 < 0x40)
      {
        return 9;
      }

      if (v40 < 0x4000)
      {
        return 10;
      }

      if (!(v40 >> 30))
      {
        return 12;
      }

      if (!(v40 >> 62))
      {
        return 16;
      }

      goto LABEL_96;
    case 0x16u:
      v42 = *v5;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v46 = v10 & 0x7FFFFFF;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15;
      *(&v53 + 1) = v16;
      HIBYTE(v53) = BYTE6(v16);
      *(&v53 + 5) = WORD2(v16);
      v54 = v17;
      v55 = v18;
      return sub_18210C304(result, &v42);
    case 0x17u:
      v42 = *v5;
      LOBYTE(v43) = v7;
      v47 = v11;
      v48 = v12 & 1;
      v52 = v14;
      v53 = v15 | (v16 << 8);
      return sub_18210C734(result, &v42);
    case 0x18u:

      return sub_1821243B8(result, v7);
    case 0x19u:
      goto LABEL_24;
    case 0x1Au:
      v35 = *v5;
      v36 = *(v5 + 16);
      v37 = *(v5 + 8);
      v38 = *(v5 + 32);

      return sub_1821197C0(result, v35, v37, v36, v12 | (v13 << 8), v38);
    case 0x1Bu:

      return sub_1820FDC7C(result, v7);
    case 0x1Cu:
      v33 = *(v5 + 8);
      v42 = 0;
      if (v12)
      {
        return sub_18211B0D8(result, result, v33, v14, v15 | (v16 << 8), v17, &v42);
      }

      if (v11 < 0)
      {
        goto LABEL_102;
      }

      v42 = v11;
      return sub_18211B0D8(result, result, v33, v14, v15 | (v16 << 8), v17, &v42);
    case 0x1Du:
      v34 = *(v5 + 72);
      v42 = *v5;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v46 = v10 & 0x7FFFFFF;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15;
      *(&v53 + 1) = v16;
      HIBYTE(v53) = BYTE6(v16);
      *(&v53 + 5) = WORD2(v16);
      v54 = v17;
      v55 = v18;
      v56 = v19;
      v57 = v34;
      v41 = 0;
      if (v12)
      {
        return sub_1821155D8(result, &v42, &v41);
      }

      if (v11 < 0)
      {
        goto LABEL_103;
      }

      v41 = v11;
      return sub_1821155D8(result, &v42, &v41);
    case 0x1Eu:
LABEL_65:
      v42 = result;
      v43 = v7;
      v44 = v8;
      v45 = v9;
      v46 = v10 & 0x7FFFFFF;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15;
      *(&v53 + 1) = v16;
      HIBYTE(v53) = BYTE6(v16);
      *(&v53 + 5) = WORD2(v16);
      v54 = v17;
      v55 = v18;
      return sub_18210D46C(result, &v42);
    case 0x1Fu:
      v42 = *v5;
      LOBYTE(v43) = v7;
      v47 = v11;
      v48 = v12;
      v49 = v13;
      v51 = BYTE6(v13);
      v50 = WORD2(v13);
      v52 = v14;
      LOBYTE(v53) = v15;
      *(&v53 + 1) = v16;
      HIBYTE(v53) = BYTE6(v16);
      *(&v53 + 5) = WORD2(v16);
      return sub_18210DE98(result, &v42);
    default:
      if (v12)
      {
        return 0x7FFFFFFFFFFFFFFFLL;
      }

      result = v11 + 1;
      if (!__OFADD__(v11, 1))
      {
        return result;
      }

      __break(1u);
LABEL_85:
      v39 = result + 8;
      if (result >= 0xFFFFFFFFFFFFFFF8)
      {
LABEL_104:
        __break(1u);
LABEL_105:
        __break(1u);
      }

      else
      {
        if (v39 < 0x40)
        {
          return 9;
        }

        if (v39 < 0x4000)
        {
          return 10;
        }

        else
        {
          if (v39 >> 30)
          {
            if (!(v39 >> 62))
            {
              return 16;
            }

LABEL_96:
            sub_182AD3EA8();
            __break(1u);
            return 9;
          }

          return 12;
        }
      }

      return result;
  }
}

void sub_181F81BC4(_DWORD **result, char a2, uint64_t a3, char **a4)
{
  v6 = v5;
  v7 = v4;
  v237 = a4;
  v8 = result;
  v96 = 0;
  v94 = 0u;
  v95 = 0u;
  if (*(result + 24) == 5)
  {
    v66 = nw_frame_unclaimed_length(*result);
  }

  else
  {
    v9 = result[9];
    if (v9)
    {
      v10 = result[7];
      v11 = result[8];
      v12 = __OFADD__(v10, v11);
      v13 = v11 + v10;
      if (v12)
      {
        goto LABEL_107;
      }

      v12 = __OFSUB__(v9, v13);
      v14 = v9 - v13;
      if (v12)
      {
LABEL_108:
        __break(1u);
LABEL_109:
        __break(1u);
        goto LABEL_110;
      }

      v66 = v14;
    }

    else
    {
      v66 = 0;
    }
  }

  swift_beginAccess();
  v15 = *(v4 + 16);
  if (*(v15 + 16))
  {
    v16 = a3 < 1;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    LOBYTE(v17) = 0;
    LOBYTE(v18) = 0;
    v67 = 0;
    LOBYTE(v19) = 0;
    v20 = 1;
    v68 = v8;
    while (1)
    {
      v73 = v19;
      v71 = v17;
      v72 = v18;
      v21 = *(v15 + 48);
      v89 = *(v15 + 32);
      v90 = v21;
      v22 = *(v15 + 80);
      v91 = *(v15 + 64);
      v92 = v22;
      v93 = *(v15 + 96);
      v23 = v89;
      v24 = WORD4(v89);
      v25 = v90;
      v26 = *(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32);
      v27 = BYTE9(v91);
      v28 = *(&v91 + 10) | (HIWORD(v91) << 32);
      v74 = v20;
      switch(HIDWORD(v89) >> 27)
      {
        case 1u:
          if (BYTE10(v89))
          {
            v31 = 0x10000;
          }

          else
          {
            v31 = 0;
          }

          v32 = v31 | WORD4(v89);
          if (BYTE11(v89))
          {
            v33 = 0x1000000;
          }

          else
          {
            v33 = 0;
          }

          v8 = v68;
          v30 = v6;
          sub_1820FE918(v68, a2 & 1, v89, v32 | v33);
          goto LABEL_56;
        case 2u:
          v113 = v89;
          v114 = *(&v89 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v115 = v90;
          v116 = BYTE8(v90);
          v117 = *(&v90 + 9);
          v119 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v118 = *(&v90 + 13);
          v120 = v91;
          v121 = WORD4(v91);
          v122 = *(&v91 + 10);
          v123 = WORD2(v28);
          v124 = v92;
          v125 = v93;
          v87 = v92;
          v88 = v93;
          v86 = v91;
          *&v84 = v89;
          v85 = v90;
          *(&v84 + 1) = *(&v89 + 1) & 0x7FFFFFFFFFFFFFFLL;
          sub_181F842F0(&v89, &v75);
          sub_181AB5D28(&v84, &v75, &qword_1EA838D88, &qword_182AE8C90);
          v8 = v68;
          v29 = v6;
          sub_1820FF1CC(v68, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 3u:
          v126 = v89;
          v127 = *(&v89 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v128 = v90;
          v129 = BYTE8(v90);
          v130 = *(&v90 + 9);
          v132 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v131 = *(&v90 + 13);
          v133 = v91;
          v134 = WORD4(v91);
          v135 = *(&v91 + 10);
          v136 = WORD2(v28);
          v137 = v92;
          v86 = v91;
          v87 = v92;
          v88 = v93;
          *&v84 = v89;
          v85 = v90;
          *(&v84 + 1) = *(&v89 + 1) & 0x7FFFFFFFFFFFFFFLL;
          sub_181F842F0(&v89, &v75);
          sub_181AB5D28(&v84, &v75, &qword_1EA838D80, &qword_182AE8C88);
          v8 = v68;
          v29 = v6;
          sub_1820FF51C(v68, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 4u:
          v138 = v89;
          v139 = BYTE8(v89);
          v140 = v90;
          v141 = BYTE8(v90);
          v142 = *(&v90 + 9);
          v144 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v143 = *(&v90 + 13);
          v145 = v91;
          v8 = v68;
          v30 = v6;
          sub_1820FF868(v68, &v94, a2 & 1);
          goto LABEL_56;
        case 5u:
          v8 = v68;
          v30 = v6;
          sub_1820FFC18(v68, &v94, a2 & 1, v89, WORD4(v89), v90, BYTE8(v90) | (v26 << 8));
          goto LABEL_56;
        case 6u:
          v34 = BYTE8(v90) | (v26 << 8);
          sub_181F842F0(&v89, &v84);

          v8 = v68;
          v29 = v6;
          sub_1820FEC8C(v68, &v94, a2 & 1, v23, v24, v25, v34);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 7u:
          sub_181F842F0(&v89, &v84);

          v8 = v68;
          v29 = v6;
          sub_1820FFC54(v68, a2 & 1, v23, v24, v25);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 8u:
          v58 = v94;
          v59 = v95;
          v60 = v96;
          sub_181F842F0(&v89, &v84);
          sub_181F8465C(v58, *(&v58 + 1), v59, *(&v59 + 1), v60);
          v84 = xmmword_182AE69F0;
          LOBYTE(v85) = 96;
          sub_181F5F494();
          swift_willThrowTypedImpl();
          sub_181F8434C(&v89);
          return;
        case 9u:
          v146 = v89;
          v147 = BYTE8(v89);
          v148 = v90;
          v149 = BYTE8(v90);
          v150 = *(&v90 + 9);
          v152 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v151 = *(&v90 + 13);
          v153 = v91;
          v154 = BYTE8(v91) & 1;
          sub_181F842F0(&v89, &v84);

          v8 = v68;
          v29 = v6;
          sub_182100008(v68, &v94, a2 & 1);
          if (!v6)
          {
            goto LABEL_63;
          }

          sub_181F8434C(&v89);
          sub_181F8434C(&v89);
          v62 = *(&v94 + 1);
          v61 = v94;
          v64 = *(&v95 + 1);
          v63 = v95;
          v65 = v96;
          goto LABEL_98;
        case 0xAu:
        case 0xCu:
        case 0xDu:
        case 0x13u:
          v8 = v68;
          v30 = v6;
          sub_1821002D0(v68, a2 & 1, v89, WORD4(v89), v90);
          goto LABEL_56;
        case 0xBu:
          v8 = v68;
          v30 = v6;
          sub_1821002FC(v68, a2 & 1, v89, WORD4(v89), v90, BYTE8(v90) | (v26 << 8));
          goto LABEL_56;
        case 0xEu:
          v8 = v68;
          v30 = v6;
          sub_1821009E4(v68, &v94, a2 & 1, v89, WORD4(v89), v90);
          goto LABEL_56;
        case 0xFu:
          v8 = v68;
          v30 = v6;
          sub_182100A14(v68, &v94, a2 & 1, v89, WORD4(v89), v90, BYTE8(v90) | (v26 << 8));
          goto LABEL_56;
        case 0x10u:
        case 0x11u:
          v8 = v68;
          v30 = v6;
          sub_182100E44(v68, &v94, a2 & 1, v89, WORD4(v89), v90);
          goto LABEL_56;
        case 0x12u:
          v75 = v89;
          v76 = BYTE8(v89);
          v77 = v90;
          v78 = BYTE8(v90);
          v79 = *(&v90 + 9);
          v81 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v80 = *(&v90 + 13);
          v82 = v91;
          v83 = BYTE8(v91) | (BYTE9(v91) << 8) | (v28 << 16);
          sub_181F842F0(&v89, &v84);

          v8 = v68;
          v29 = v6;
          sub_1820FEE74(v68, a2 & 1);
          if (v6)
          {
            goto LABEL_102;
          }

          goto LABEL_63;
        case 0x14u:
          v75 = v89;
          v76 = BYTE8(v89);
          v77 = v90;
          v78 = BYTE8(v90);
          v79 = *(&v90 + 9);
          v81 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v80 = *(&v90 + 13);
          sub_181F842F0(&v89, &v84);

          v8 = v68;
          v29 = v6;
          sub_182101270(v68, a2 & 1);
          if (v6)
          {
            goto LABEL_102;
          }

          goto LABEL_63;
        case 0x15u:
          v75 = v89;
          v76 = BYTE8(v89);
          v77 = v90;
          v78 = BYTE8(v90);
          v79 = *(&v90 + 9);
          v81 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v80 = *(&v90 + 13);
          sub_181F842F0(&v89, &v84);

          v8 = v68;
          v29 = v6;
          sub_182101270(v68, a2 & 1);
          if (v6)
          {
            goto LABEL_102;
          }

          goto LABEL_63;
        case 0x16u:
          v155 = v89;
          v156 = *(&v89 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v157 = v90;
          v158 = BYTE8(v90);
          v159 = *(&v90 + 9);
          v161 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v160 = *(&v90 + 13);
          v162 = v91;
          v163 = WORD4(v91);
          v164 = *(&v91 + 10);
          v165 = WORD2(v28);
          v166 = v92;
          v86 = v91;
          v87 = v92;
          v88 = v93;
          *&v84 = v89;
          v85 = v90;
          *(&v84 + 1) = *(&v89 + 1) & 0x7FFFFFFFFFFFFFFLL;
          sub_181F842F0(&v89, &v75);
          sub_181AB5D28(&v84, &v75, &qword_1EA838D78, &qword_182AE8C80);
          v8 = v68;
          v29 = v6;
          sub_182101620(v68, &v94, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 0x17u:
          v167 = v89;
          v168 = BYTE8(v89);
          v169 = v90;
          v170 = BYTE8(v90) & 1;
          v171 = v91;
          v172 = BYTE8(v91) | (BYTE9(v91) << 8) | (v28 << 16);
          sub_181F842F0(&v89, &v84);

          v8 = v68;
          v29 = v6;
          sub_1821019B0(v68, &v94, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 0x18u:
        case 0x1Bu:
          v8 = v68;
          v30 = v6;
          sub_182101D40(v68, a2 & 1, v89, WORD4(v89));
          goto LABEL_56;
        case 0x19u:
          v173 = v89;
          v174 = BYTE8(v89);
          v175 = v90;
          v176 = BYTE8(v90) & 1;
          v177 = v91;
          v178 = BYTE8(v91) & 1;
          v179 = v92;
          sub_181F842F0(&v89, &v84);

          v8 = v68;
          v29 = v6;
          sub_182101D6C(v68, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 0x1Au:
          v180 = v89;
          v181 = BYTE8(v89);
          v182 = v90;
          v183 = BYTE8(v90);
          v184 = *(&v90 + 9);
          v186 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v185 = *(&v90 + 13);
          v187 = v91;
          v188 = BYTE8(v91) & 1;
          v8 = v68;
          v30 = v6;
          sub_1821020BC(v68, a2 & 1);
          goto LABEL_56;
        case 0x1Cu:
          v189 = v89;
          v190 = *(&v89 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v191 = v90;
          v192 = BYTE8(v90);
          v193 = *(&v90 + 9);
          v195 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v194 = *(&v90 + 13);
          v196 = v91;
          v197 = WORD4(v91);
          v198 = *(&v91 + 10);
          v199 = WORD2(v28);
          v200 = v92;
          v86 = v91;
          v87 = v92;
          v88 = v93;
          *&v84 = v89;
          v85 = v90;
          *(&v84 + 1) = *(&v89 + 1) & 0x7FFFFFFFFFFFFFFLL;
          sub_181F842F0(&v89, &v75);
          sub_181AB5D28(&v84, &v75, &qword_1EA838D70, &qword_182AE8C78);
          v8 = v68;
          v29 = v6;
          sub_182102770(v68, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 0x1Du:
          v201 = v89;
          v202 = *(&v89 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v203 = v90;
          v204 = BYTE8(v90);
          v205 = *(&v90 + 9);
          v207 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v206 = *(&v90 + 13);
          v208 = v91;
          v209 = WORD4(v91);
          v210 = *(&v91 + 10);
          v211 = WORD2(v28);
          v212 = v92;
          v213 = v93;
          v87 = v92;
          v88 = v93;
          v86 = v91;
          *&v84 = v89;
          v85 = v90;
          *(&v84 + 1) = *(&v89 + 1) & 0x7FFFFFFFFFFFFFFLL;
          sub_181F842F0(&v89, &v75);
          sub_181AB5D28(&v84, &v75, &qword_1EA838D68, &qword_182AE8C70);
          v8 = v68;
          v29 = v6;
          sub_182102AE4(v68, a2 & 1);
          if (v6)
          {
            goto LABEL_99;
          }

          goto LABEL_63;
        case 0x1Eu:
          v214 = v89;
          v215 = *(&v89 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v216 = v90;
          v217 = BYTE8(v90);
          v218 = *(&v90 + 9);
          v220 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v219 = *(&v90 + 13);
          v221 = v91;
          v222 = WORD4(v91);
          v223 = *(&v91 + 10);
          v224 = WORD2(v28);
          v225 = v92;
          v86 = v91;
          v87 = v92;
          v88 = v93;
          *&v84 = v89;
          v85 = v90;
          *(&v84 + 1) = *(&v89 + 1) & 0x7FFFFFFFFFFFFFFLL;
          sub_181F842F0(&v89, &v75);
          sub_181AB5D28(&v84, &v75, &qword_1EA838D60, &qword_182AE8C68);
          v8 = v68;
          v29 = v6;
          sub_182102E54(v68, a2 & 1);
          if (v6)
          {
LABEL_99:
            sub_181F8465C(v94, *(&v94 + 1), v95, *(&v95 + 1), v96);
            sub_181F8434C(&v89);
            goto LABEL_103;
          }

LABEL_63:
          v6 = v29;
          sub_181F8434C(&v89);
          goto LABEL_64;
        case 0x1Fu:
          v226 = v89;
          v227 = BYTE8(v89);
          v228 = v90;
          v229 = BYTE8(v90);
          v230 = *(&v90 + 9);
          v232 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v231 = *(&v90 + 13);
          v233 = v91;
          v234 = WORD4(v91);
          v235 = *(&v91 + 10);
          v236 = WORD2(v28);
          v8 = v68;
          v30 = v6;
          sub_1821031A0(v68, a2 & 1);
LABEL_56:
          v6 = v30;
          if (v30)
          {
            goto LABEL_97;
          }

          goto LABEL_64;
        default:
          v104 = v89;
          v105 = *(&v89 + 1) & 0x7FFFFFFFFFFFFFFLL;
          v106 = v90;
          v107 = BYTE8(v90);
          v108 = *(&v90 + 9);
          v110 = (*(&v90 + 9) | ((*(&v90 + 13) | (HIBYTE(v90) << 16)) << 32)) >> 48;
          v109 = *(&v90 + 13);
          v111 = v91;
          v112 = WORD4(v91);
          v8 = v68;
          sub_1820FE590(v68, a2 & 1);
          if (v6)
          {
LABEL_97:
            v64 = *(&v95 + 1);
            v65 = v96;
            v62 = *(&v94 + 1);
            v61 = v94;
            v63 = v95;
LABEL_98:
            sub_181F8465C(v61, v62, v63, v64, v65);
            return;
          }

          v6 = 0;
          v67 |= v27;
LABEL_64:
          swift_beginAccess();
          v35 = *(v7 + 16);
          v36 = *(v35 + 2);
          if (!v36)
          {
            __break(1u);
LABEL_107:
            __break(1u);
            goto LABEL_108;
          }

          v37 = *(v35 + 3);
          v38 = *(v35 + 5);
          v39 = *(v35 + 6);
          v86 = *(v35 + 4);
          v87 = v38;
          v88 = v39;
          v84 = *(v35 + 2);
          v85 = v37;
          sub_181F842F0(&v84, &v75);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v7 + 16) = v35;
          if (!isUniquelyReferenced_nonNull_native || (v36 - 1) > *(v35 + 3) >> 1)
          {
            v35 = sub_181F59790(isUniquelyReferenced_nonNull_native, v36, 1, v35);
            *(v7 + 16) = v35;
          }

          sub_181F8434C((v35 + 32));
          v41 = *(v35 + 2);
          memmove(v35 + 32, v35 + 112, 80 * v41 - 80);
          *(v35 + 2) = v41 - 1;
          *(v7 + 16) = v35;
          swift_endAccess();
          v42 = *v237;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v42 = sub_181F59790(0, *(v42 + 2) + 1, 1, v42);
          }

          v44 = *(v42 + 2);
          v43 = *(v42 + 3);
          if (v44 >= v43 >> 1)
          {
            v42 = sub_181F59790((v43 > 1), v44 + 1, 1, v42);
          }

          *(v42 + 2) = v44 + 1;
          v45 = &v42[80 * v44];
          *(v45 + 2) = v84;
          v46 = v85;
          v47 = v86;
          v48 = v88;
          *(v45 + 5) = v87;
          *(v45 + 6) = v48;
          *(v45 + 3) = v46;
          *(v45 + 4) = v47;
          *v237 = v42;
          if (v73)
          {
            if (v71)
            {
              LOBYTE(v19) = 1;
LABEL_76:
              if (v72)
              {
                sub_181F8434C(&v89);
                LOBYTE(v18) = 1;
                LOBYTE(v17) = 1;
                goto LABEL_83;
              }

              v49 = *(&v89 + 1) >> 59;
              LOBYTE(v17) = 1;
              goto LABEL_82;
            }

            v49 = *(&v89 + 1) >> 59;
            LOBYTE(v19) = 1;
          }

          else
          {
            v49 = *(&v89 + 1) >> 59;
            v19 = (*(&v89 + 1) >> 60 == 15) | (0xF3FFFF2u >> (*(&v89 + 1) >> 59));
            if (v71)
            {
              goto LABEL_76;
            }
          }

          v17 = (v49 > 0x1D) | (0xF3FFFF3u >> v49);
          if (v72)
          {
            sub_181F8434C(&v89);
            LOBYTE(v18) = 1;
            goto LABEL_83;
          }

LABEL_82:
          v18 = (v49 > 0x1D) | (0xF3FFFF2u >> v49);
          sub_181F8434C(&v89);
LABEL_83:
          v15 = *(v7 + 16);
          if (!*(v15 + 16))
          {
            goto LABEL_85;
          }

          v20 = v74 + 1;
          if (v74 >= a3)
          {
            goto LABEL_85;
          }

          break;
      }
    }
  }

  v67 = 0;
LABEL_85:
  sub_181F8465C(v94, *(&v94 + 1), v95, *(&v95 + 1), v96);
  if (*(v8 + 24) == 5)
  {
    v50 = nw_frame_unclaimed_length(*v8);
    goto LABEL_90;
  }

  v51 = v8[9];
  if (!v51)
  {
    if (v67 & 1 | (v66 < 0))
    {
      return;
    }

    v55 = v66;
    goto LABEL_92;
  }

  v52 = v8[7];
  v53 = v8[8];
  v12 = __OFADD__(v52, v53);
  v54 = v53 + v52;
  if (v12)
  {
    goto LABEL_109;
  }

  v12 = __OFSUB__(v51, v54);
  v50 = v51 - v54;
  if (v12)
  {
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

LABEL_90:
  if (v67 & 1 | (v66 < v50))
  {
    return;
  }

  v12 = __OFSUB__(v66, v50);
  v55 = v66 - v50;
  if (!v12)
  {
LABEL_92:
    if (v55 > 2)
    {
      return;
    }

    v12 = __OFSUB__(3, v55);
    v56 = 3 - v55;
    if (!v12)
    {
      v57 = *(v7 + 24);
      LOBYTE(v89) = 0;
      LOBYTE(v84) = 1;
      v97 = 0;
      v98 = 2;
      v99 = v57;
      v100 = v56 - (v56 > 0);
      v101 = 0;
      v102 = 0;
      v103 = 1;
      sub_1820FE590(v8, 1);
      return;
    }

LABEL_111:
    __break(1u);
    return;
  }

  __break(1u);
LABEL_102:
  sub_181F8434C(&v89);
  sub_181F8465C(v94, *(&v94 + 1), v95, *(&v95 + 1), v96);
LABEL_103:
  sub_181F8434C(&v89);
}

uint64_t sub_181F82D80()
{

  return swift_deallocClassInstance();
}

uint64_t sub_181F82DDC(char a1)
{
  *(v1 + 16) = 2;
  *(v1 + 24) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D90, &qword_182AE8C98);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_182AE8B90;
  *(inited + 32) = 0;
  type metadata accessor for OutputQueue();
  v4 = swift_allocObject();
  v5 = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = MEMORY[0x1E69E7CC0];
  *(v4 + 24) = 0;
  *(inited + 40) = v4;
  *(inited + 48) = 1;
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = 1;
  *(inited + 56) = v6;
  *(inited + 64) = 2;
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  *(v7 + 24) = 2;
  *(inited + 72) = v7;
  v8 = sub_18225AFF8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838D98, &unk_182AE8CA0);
  swift_arrayDestroy();
  *(v1 + 32) = v8;
  *(v1 + 16) = a1 & 1;
  return v1;
}

uint64_t sub_181F82F10(uint64_t a1, __int128 *a2)
{
  v4 = a2[4];
  v21 = a2[3];
  v22 = v4;
  v5 = a2[1];
  v20 = a2[2];
  v18 = *a2;
  v19 = v5;
  v6 = *(v3 + 32);
  if (*(v6 + 2))
  {
    v7 = sub_18224EF74(a1);
    if (v8)
    {
      v2 = *(*(v6 + 7) + 8 * v7);
      swift_beginAccess();
      v6 = *(v2 + 16);

      sub_181F842F0(&v18, v17);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + 16) = v6;
      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_4;
      }

      goto LABEL_9;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_9:
  v6 = sub_181F59790(0, *(v6 + 2) + 1, 1, v6);
  *(v2 + 16) = v6;
LABEL_4:
  v11 = *(v6 + 2);
  v10 = *(v6 + 3);
  if (v11 >= v10 >> 1)
  {
    v6 = sub_181F59790((v10 > 1), v11 + 1, 1, v6);
  }

  *(v6 + 2) = v11 + 1;
  v12 = &v6[80 * v11];
  *(v12 + 2) = v18;
  v13 = v19;
  v14 = v20;
  v15 = v22;
  *(v12 + 5) = v21;
  *(v12 + 6) = v15;
  *(v12 + 3) = v13;
  *(v12 + 4) = v14;
  *(v2 + 16) = v6;
  swift_endAccess();
}

void sub_181F83050(uint64_t a1, __int128 *a2)
{
  v3 = a2[4];
  v11 = a2[3];
  v12 = v3;
  v4 = a2[2];
  v9 = a2[1];
  v10 = v4;
  v8 = *a2;
  if (*(*(v2 + 32) + 16))
  {
    sub_18224EF74(a1);
    if (v5)
    {
      swift_beginAccess();
      v7[2] = v10;
      v7[3] = v11;
      v7[4] = v12;
      v7[0] = v8;
      v7[1] = v9;

      sub_181F842F0(&v8, v6);
      sub_181FCCC44(0, 0, v7);
      swift_endAccess();
      sub_181F8434C(&v8);

      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

void sub_181F83128(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_13;
  }

  v3 = sub_18224EF74(a1);
  if ((v4 & 1) == 0)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      v8 += 10;
      v10 = (1 << (v9 >> 59)) & 0x30C0000D;
      if ((v9 >> 59) > 0x1D || v10 == 0)
      {
        break;
      }

      --v7;
    }

    while (v7);
  }
}

void sub_181F831D0(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = sub_18224EF74(a1);
  if ((v4 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = (v6 + 40);
  v8 = *(v6 + 16) + 1;
  do
  {
    if (!--v8)
    {
      break;
    }

    v9 = *v7;
    v7 += 10;
  }

  while (v9 >> 59);
}

void sub_181F83258(uint64_t a1)
{
  v2 = *(v1 + 32);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_8;
  }

  v3 = sub_18224EF74(a1);
  if ((v4 & 1) == 0)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v5 + 16);
  if (isUniquelyReferenced_nonNull_native)
  {
    sub_181FCCC18(0, *(v7 + 16));
  }

  else
  {
    *(v5 + 16) = sub_181F851F8(0, *(v7 + 24) >> 1);
  }

  swift_endAccess();
}

void sub_181F8330C()
{
  v1 = v0;
  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v4 = *(v1 + 32);
    if (!*(v4 + 16))
    {
      break;
    }

    v5 = sub_18224EF74(byte_1EEF96C38[v2 + 32]);
    if ((v6 & 1) == 0)
    {
      goto LABEL_16;
    }

    v7 = *(*(v4 + 56) + 8 * v5);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *(v7 + 16);
    if (isUniquelyReferenced_nonNull_native)
    {
      v10 = *(v9 + 2);
      v11 = swift_isUniquelyReferenced_nonNull_native();
      *(v7 + 16) = v9;
      if ((v11 & 1) == 0)
      {
        v9 = sub_181F59790(0, v10, 1, v9);
        *(v7 + 16) = v9;
      }

      swift_arrayDestroy();
      if (v10)
      {
        v12 = &v9[80 * v10];
        v13 = *(v9 + 2) - v10;
        memmove(v9 + 32, v12 + 32, 80 * v13);
        *(v9 + 2) = v13;
      }

      *(v7 + 16) = v9;
    }

    else
    {
      v14 = v3;
      if (*(v9 + 3) >= 2uLL)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838870, &qword_182AE5F30);
        v14 = swift_allocObject();
        v15 = _swift_stdlib_malloc_size(v14);
        v14[2] = 0;
        v14[3] = 2 * ((v15 - 32) / 80);
      }

      *(v7 + 16) = v14;
    }

    ++v2;
    swift_endAccess();

    if (v2 == 3)
    {
      return;
    }
  }

  __break(1u);
LABEL_16:
  __break(1u);
}

uint64_t sub_181F834CC(uint64_t a1, uint64_t a2, unint64_t a3, unsigned __int8 a4, uint64_t a5, char a6)
{
  v99 = a2;
  sub_181F83BF4(0x202020100uLL >> (8 * a4), a5, &v61);
  if (!v61)
  {
    v61 = xmmword_182AE8BA0;
    LOBYTE(v62) = 16;
    sub_181F5F494();
    swift_willThrowTypedImpl();
    return 4;
  }

  v34 = *(&v61 + 1);
  v35 = v62;
  v97 = 1;
  v94 = 1;
  swift_bridgeObjectRelease_n();
  v11 = *(v6 + 24);
  if (!v11 || !(*(v11 + 16) >> 62))
  {
    v12 = v97;
    LOBYTE(v61) = 4;
    v62 = 0;
    v63 = 0;
    *(&v61 + 1) = a3;
    v64 = v97;
    v67 = 0;
    v68 = 0;
    v66 = 0;
    v69 = 0;
    v71 = 0;
    v31 = v94;
    v72 = v94;
    v73 = a4;
    v76 = v34;
    v77 = v35;
    v32 = 0x202020100uLL >> (8 * a4);
    v78 = v32;
    v80 = v99;
    v81 = MEMORY[0x1E69E7CC0];
    v84 = 0;
    v83 = 0;
    v82 = 0;
    v85 = 2;
    v87 = 0;
    v88 = a4 < 3u;
    v89 = 512;
    v90 = 0;
    if (v11)
    {
      v13 = *(v11 + 16);
    }

    else
    {
      v13 = 0;
    }

    v15 = sub_182224F04(a3, v13);
    v14 = v15;
    if (v7)
    {

      v36[0] = 4;
      v38 = 0;
      v39 = 0;
      v37 = a3;
      v40 = v12;
      v42 = 0;
      v43 = 0;
      v41 = 0;
      v44 = 0;
      v45 = 0;
      v46 = v31;
      v47 = a4;
      v48 = v34;
      v49 = v35;
      v50 = v32;
      v51 = v99;
      v52 = MEMORY[0x1E69E7CC0];
      v53 = 0;
      v55 = 0;
      v54 = 0;
      v56 = 2;
      v57 = 0;
      v58 = a4 < 3u;
      v59 = 512;
      v60 = 0;
      sub_181F843A0(v36);
      return v14;
    }

    if (v16)
    {
      if (qword_1EA837250 != -1)
      {
        swift_once();
      }

      a6 = v31;
      if (byte_1EA843430 != 1)
      {
        goto LABEL_22;
      }

      if (qword_1EA837248 == -1)
      {
LABEL_15:
        v17 = sub_182AD2698();
        __swift_project_value_buffer(v17, qword_1EA843418);
        v18 = sub_182AD2678();
        v19 = sub_182AD38A8();
        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *&v61 = v21;
          *v20 = 136315650;
          v22 = sub_182AD3BF8();
          v24 = sub_181C64FFC(v22, v23, &v61);

          *(v20 + 4) = v24;
          *(v20 + 12) = 2080;
          *(v20 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v61);
          *(v20 + 22) = 2080;
          *(v20 + 24) = sub_181C64FFC(0xD00000000000001FLL, 0x8000000182BD5D80, &v61);
          _os_log_impl(&dword_181A37000, v18, v19, "%s %s %s", v20, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v21, -1, -1);
          MEMORY[0x1865DF520](v20, -1, -1);

          v12 = v97;
          a6 = v94;
        }

        else
        {
        }

LABEL_22:
        v61 = xmmword_182AE8BA0;
        LOBYTE(v62) = 16;
        sub_181F5F494();
        swift_willThrowTypedImpl();

        v14 = 4;
        LOBYTE(v61) = 4;
        *(&v61 + 1) = v98[0];
        DWORD1(v61) = *(v98 + 3);
        v62 = 0;
        v63 = 0;
        *(&v61 + 1) = a3;
        v64 = v12;
        *v65 = *v96;
        *&v65[3] = *&v96[3];
        v67 = 0;
        v68 = 0;
        v66 = 0;
        v69 = 0;
        *&v70[3] = *&v95[3];
        *v70 = *v95;
        v71 = 0;
        v72 = a6;
        v73 = a4;
        v74 = *&v92[7];
        v75 = v93;
        v76 = v34;
        v77 = v35;
        v78 = v32;
        *v79 = *v92;
        *&v79[3] = *&v92[3];
        v80 = v99;
        v81 = MEMORY[0x1E69E7CC0];
        v82 = 0;
        v84 = 0;
        v83 = 0;
        v85 = 2;
        *&v86[3] = *&v91[3];
        *v86 = *v91;
        v87 = 0;
        v88 = a4 < 3u;
        v89 = 512;
        v90 = 0;
        sub_181F843A0(&v61);
        return v14;
      }

LABEL_25:
      swift_once();
      goto LABEL_15;
    }

    if (__OFSUB__(a1, v15))
    {
      __break(1u);
      goto LABEL_25;
    }

    sub_181F843F4(a6 & 1, a1 - v15);
    v26 = v25;
    v28 = v27;

    v29 = v14 + v26;
    if (__OFADD__(v14, v26))
    {
      __break(1u);
    }

    else
    {
      v14 = v29 + v28;
      if (!__OFADD__(v29, v28))
      {
        LOBYTE(v61) = 4;
        v62 = 0;
        v63 = 0;
        *(&v61 + 1) = a3;
        v64 = v12;
        v67 = 0;
        v68 = 0;
        v66 = 0;
        v69 = 0;
        v71 = 0;
        v72 = v31;
        v73 = a4;
        v76 = v34;
        v77 = v35;
        v78 = v32;
        v80 = v99;
        v81 = MEMORY[0x1E69E7CC0];
        v82 = 0;
        v84 = 0;
        v83 = 0;
        v85 = 2;
        v87 = 0;
        v88 = a4 < 3u;
        v89 = 512;
        v90 = 0;
        sub_181F843A0(&v61);
        return v14;
      }
    }

    __break(1u);
  }

  result = sub_182AD3EA8();
  __break(1u);
  return result;
}

void sub_181F83BF4(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 32);
  if (!*(v5 + 16) || (v7 = sub_18224EF74(a1), (v8 & 1) == 0))
  {
    if (qword_1EA837250 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      v30[0] = 0;
      v30[1] = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000019, 0x8000000182BD5E20);
      sub_182AD3E18();
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v12 = sub_182AD2698();
      __swift_project_value_buffer(v12, qword_1EA843418);

      v13 = sub_182AD2678();
      v14 = sub_182AD38A8();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        v16 = swift_slowAlloc();
        v30[0] = v16;
        *v15 = 136315650;
        v17 = sub_182AD3BF8();
        v19 = sub_181C64FFC(v17, v18, v30);

        *(v15 + 4) = v19;
        *(v15 + 12) = 2080;
        *(v15 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v30);
        *(v15 + 22) = 2080;
        v20 = sub_181C64FFC(0, 0xE000000000000000, v30);

        *(v15 + 24) = v20;
        _os_log_impl(&dword_181A37000, v13, v14, "%s %s %s", v15, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v16, -1, -1);
        MEMORY[0x1865DF520](v15, -1, -1);
      }

      else
      {
      }
    }

    goto LABEL_26;
  }

  v9 = *(*(v5 + 56) + 8 * v7);
  v10 = *(a2 + 72);
  if (!v10 || (v11 = *(a2 + 80)) == 0)
  {
    v21 = qword_1EA837250;

    if (v21 != -1)
    {
      swift_once();
    }

    if (byte_1EA843430 == 1)
    {
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v22 = sub_182AD2698();
      __swift_project_value_buffer(v22, qword_1EA843418);
      v23 = sub_182AD2678();
      v24 = sub_182AD38A8();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v30[0] = v26;
        *v25 = 136315650;
        v27 = sub_182AD3BF8();
        v29 = sub_181C64FFC(v27, v28, v30);

        *(v25 + 4) = v29;
        *(v25 + 12) = 2080;
        *(v25 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v30);
        *(v25 + 22) = 2080;
        *(v25 + 24) = sub_181C64FFC(0xD00000000000001DLL, 0x8000000182BD5E40, v30);
        _os_log_impl(&dword_181A37000, v23, v24, "%s %s %s", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v26, -1, -1);
        MEMORY[0x1865DF520](v25, -1, -1);
      }
    }

LABEL_26:
    *a3 = 0;
    a3[1] = 0;
    a3[2] = 0;
    return;
  }

  *a3 = v9;
  a3[1] = v10;
  a3[2] = v11;
}

uint64_t sub_181F840C0(uint64_t result)
{
  v2 = *(v1 + 32);
  if (!*(v2 + 16))
  {
    __break(1u);
    goto LABEL_32;
  }

  v3 = result;
  result = sub_18224EF74(result);
  if ((v4 & 1) == 0)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  v5 = *(*(v2 + 56) + 8 * result);
  result = swift_beginAccess();
  v6 = *(v5 + 16);
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = (v6 + 40);
    do
    {
      v9 = *v8;
      v8 += 10;
      if (v9 >> 59 == 2)
      {
        return 1;
      }
    }

    while (--v7);
  }

  if (!*(v2 + 16))
  {
    goto LABEL_33;
  }

  result = sub_18224EF74(v3);
  if ((v10 & 1) == 0)
  {
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v11 = *(*(v2 + 56) + 8 * result);
  result = swift_beginAccess();
  v12 = *(v11 + 16);
  v13 = *(v12 + 16);
  if (v13)
  {
    v14 = (v12 + 40);
    do
    {
      v15 = *v14;
      v14 += 10;
      if (v15 >> 59 == 3)
      {
        return 1;
      }
    }

    while (--v13);
  }

  if (!*(v2 + 16))
  {
    goto LABEL_35;
  }

  result = sub_18224EF74(v3);
  if ((v16 & 1) == 0)
  {
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  v17 = *(*(v2 + 56) + 8 * result);
  result = swift_beginAccess();
  v18 = *(v17 + 16);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = (v18 + 40);
    do
    {
      v21 = *v20;
      v20 += 10;
      if (v21 >> 59 == 28)
      {
        return 1;
      }
    }

    while (--v19);
  }

  if (!*(v2 + 16))
  {
    goto LABEL_37;
  }

  result = sub_18224EF74(v3);
  if ((v22 & 1) == 0)
  {
LABEL_38:
    __break(1u);
    return result;
  }

  v23 = *(*(v2 + 56) + 8 * result);
  swift_beginAccess();
  v24 = *(v23 + 16);
  v25 = *(v24 + 16);
  if (!v25)
  {
    return 0;
  }

  v26 = v25 - 1;
  v27 = (v24 + 40);
  do
  {
    v28 = *v27;
    v27 += 10;
    result = (v28 & 0xF800000000000000) == 0xE800000000000000;
  }

  while ((v28 & 0xF800000000000000) != 0xE800000000000000 && v26-- != 0);
  return result;
}

uint64_t sub_181F8428C()
{

  return swift_deallocClassInstance();
}

void sub_181F843F4(char a1, int64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 16);
  v6 = *(v5 + 16);
  if (v6)
  {
    v21 = a1;

    v22 = 0;
    v12 = 0;
    v13 = 0;
    v14 = v6;
    while (1)
    {
      v15 = v5 + 32 + 80 * v12;
      v16 = *(v15 + 8);
      v17 = *(v15 + 41);
      v18 = v12 + 1;
      if (v16 >> 59 || (v17 & 1) == 0)
      {
        ++v12;
      }

      else
      {
        if (v18 == v6)
        {
LABEL_22:

          if ((v21 & 1) == 0)
          {
            return;
          }

          goto LABEL_26;
        }

        if (v18 >= v14)
        {
          goto LABEL_34;
        }

        v19 = v5 + 112 + 80 * v12;
        v12 += 2;
        while (!(*(v19 + 8) >> 59) && (*(v19 + 41) & 1) != 0)
        {
          if (v6 == v12)
          {
            goto LABEL_22;
          }

          v19 += 80;
          if (v12++ >= v14)
          {
            goto LABEL_34;
          }
        }

        v22 = 1;
      }

      v7 = sub_181F81394(v7, v8, v9, v10, v11);
      if (__OFADD__(v13, v7))
      {
        goto LABEL_35;
      }

      if (v13 + v7 > a2)
      {
        break;
      }

      v13 += v7;
      if (v12 == v6)
      {
        break;
      }

      v14 = *(v5 + 16);
      if (v12 >= v14)
      {
        goto LABEL_34;
      }
    }

    if (v21)
    {
      if (v22)
      {
LABEL_26:
        if (!__OFSUB__(a2, v13))
        {
          return;
        }

        goto LABEL_36;
      }
    }

    else if (v22)
    {
      return;
    }

    if (v13 && v13 <= 2 && __OFSUB__(3, v13))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
    }
  }
}

uint64_t sub_181F8465C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_181F846BC()
{
  result = qword_1EA838DA0;
  if (!qword_1EA838DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838DA0);
  }

  return result;
}

unint64_t sub_181F84710(unint64_t result)
{
  if (result >= 5)
  {
    return 5;
  }

  return result;
}

unint64_t sub_181F84720()
{
  result = qword_1EA838DA8;
  if (!qword_1EA838DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838DA8);
  }

  return result;
}

uint64_t _nw_protocol_options_get_hash(uint64_t a1)
{

  v1 = sub_181F85050();

  return v1;
}

uint64_t _nw_protocol_options_matches_definition(uint64_t a1, NSObject *a2)
{
  swift_unknownObjectRetain();
  LOBYTE(a1) = sub_181F84824(a1, a2);
  swift_unknownObjectRelease();
  return a1 & 1;
}

uint64_t sub_181F84824(uint64_t a1, NSObject *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + qword_1ED411A88);

  if (v4 == 1)
  {
    v5 = *(*a1 + 128);
    swift_beginAccess();
    v6 = *(a1 + v5);
    if (v6)
    {
      v7 = *(v6 + 24);
      if (v7 == a2)
      {

        is_equal = 1;
      }

      else
      {
        is_equal = nw_protocol_definition_is_equal(a2, v7);
      }
    }

    else
    {

      is_equal = 0;
    }
  }

  else
  {
    v9 = nw_protocol_definition_copy_swift_identifier(a2);
    if (v9)
    {
      v10 = *(v9 + 8);
      v11 = *(v9 + 3);
      v12 = *(v9 + 4);
      v13 = *(v9 + 40);
      swift_beginAccess();
      v14 = *(a1 + 24);
      v15 = *(a1 + 32);
      v16 = *(a1 + 40);
      *v27 = *(a1 + 16);
      v28 = v14;
      v29 = v15;
      v30 = v16;
      *v23 = v10;
      v24 = v11;
      v25 = v12;
      v26 = v13;
      is_equal = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v27, v23);

      sub_181F49A24(v11, v12, v13);
      sub_181F49A24(v14, v15, v16);
    }

    else
    {
      identifier = nw_protocol_definition_get_identifier(a2);
      sub_181AAC800(identifier, v27);
      v18 = *v27;
      v11 = v28;
      v12 = v29;
      v13 = v30;
      swift_beginAccess();
      v19 = *(a1 + 24);
      v20 = *(a1 + 32);
      v21 = *(a1 + 40);
      *v27 = *(a1 + 16);
      v28 = v19;
      v29 = v20;
      v30 = v21;
      *v23 = v18;
      v24 = v11;
      v25 = v12;
      v26 = v13;
      is_equal = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(v27, v23);
      sub_181F49A24(v19, v20, v21);
    }

    sub_181F48350(v28, v29, v30);
    sub_181F48350(v11, v12, v13);
  }

  return is_equal & 1;
}

uint64_t _nw_protocol_options_matches_identifier(uint64_t a1, uint64_t a2)
{

  sub_181AAC800(a2, &v22);
  LOWORD(a2) = v22;
  v5 = v23;
  v4 = v24;
  v13 = v23;
  v6 = v25;
  swift_beginAccess();
  v7 = *(a1 + 24);
  v8 = *(a1 + 32);
  v9 = *(a1 + 40);
  v18 = *(a1 + 16);
  v19 = v7;
  v20 = v8;
  v21 = v9;
  v14 = a2;
  v15 = v5;
  v16 = v4;
  v17 = v6;
  LOBYTE(v5) = _s7Network18ProtocolIdentifierV2eeoiySbAC_ACtFZ_0(&v18, &v14);
  v10 = v19;
  v11 = v20;
  LOBYTE(a2) = v21;
  sub_181F49A24(v7, v8, v9);
  sub_181F48350(v10, v11, a2);

  sub_181F48350(v13, v4, v6);
  return v5 & 1;
}

uint64_t _nw_protocol_options_copy_proxy_endpoint_for_stack(uint64_t a1)
{
  v1 = sub_181AA8428(&qword_1ED40FE08, &qword_1EA838DB8, &qword_182AE8EA0);

  sub_181F84BCC(v1, &v3);

  return v3;
}

void sub_181F84BCC(uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjectType = swift_getObjectType();
  v9 = (*(a2 + 192))(ObjectType, a2);
  if (v9)
  {
    v10 = OBJC_IVAR____TtC7Network8Endpoint_type;
    swift_beginAccess();
    sub_181B5C0FC(v9 + v10, v7);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_181B5C160(v7);
    if (EnumCaseMultiPayload == 5)
    {
      v12 = sub_181C024CC();

      v9 = v12;
    }
  }

  *a3 = v9;
}

void _nw_protocol_options_add_proxy_next_hop(uint64_t a1, void *a2)
{

  v3 = a2;
  sub_181F84F64(v3);
}

void _nw_protocol_options_enumerate_proxy_next_hops(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  sub_181F859CC(a1, v3);

  _Block_release(v3);
}

_OWORD *sub_181F84D84(__int128 *a1, uint64_t a2)
{

  v2[3] = xmmword_182AE8E90;
  v4 = qword_1ED411A90;
  v5 = sub_182AD2738();
  (*(*(v5 - 8) + 56))(v2 + v4, 1, 1, v5);
  *(v2 + qword_1ED411A88) = 0;
  v6 = *(*v2 + 128);
  *(v2 + v6) = 0;
  *(v2 + *(*v2 + 136)) = 0;
  *(v2 + *(*v2 + 144)) = 0;
  v7 = v2 + *(*v2 + 152);
  *v7 = 0;
  v7[8] = 1;
  v8 = v2 + *(*v2 + 160);
  *v8 = 0;
  v8[8] = 1;
  v9 = (v2 + *(*v2 + 168));
  *v9 = 0;
  v9[1] = 0;
  *(v2 + *(*v2 + 176)) = 0;
  *(v2 + *(*v2 + 184)) = 0;
  v10 = *a1;
  *(v13 + 9) = *(a1 + 9);
  v13[0] = v10;
  sub_181BBBFDC(v13, &v12);
  sub_181F49A88(a1, &qword_1EA838E20, &qword_182AE8EC0);
  v2[1] = v13[0];
  *(v2 + 25) = *(v13 + 9);
  swift_beginAccess();
  *(v2 + v6) = 0;

  return v2;
}

uint64_t sub_181F84F64(void *a1)
{
  v2 = v1;
  v4 = *(*v2 + 144);
  swift_beginAccess();
  if (!*(v2 + v4))
  {
    *(v2 + v4) = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v5 = a1;
  MEMORY[0x1865D9F10]();
  if (*((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v2 + v4) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  return swift_endAccess();
}

uint64_t sub_181F85050()
{
  sub_182AD44E8();
  swift_beginAccess();
  v1 = *(v0 + 17);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  MEMORY[0x1865DB070](*(v0 + 16));
  MEMORY[0x1865DB070](v1);
  if (v4)
  {
    MEMORY[0x1865DB070](1);
    sub_181F49A24(v2, v3, 1);
    sub_182AD30E8();
    sub_181F48350(v2, v3, 1);
  }

  else
  {
    MEMORY[0x1865DB070](0);
    sub_181FB86BC(v2);
    sub_182AD30E8();
    sub_181F48350(v2, v3, 0);
  }

  return sub_182AD4558();
}

void *sub_181F85168(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838E60, &qword_182AE8EE8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *sub_181F851F8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838870, &qword_182AE5F30);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 5) + (v7 >> 63));
  return result;
}

void *sub_181F8529C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v9 = ((v7 - 32) * 0x4924924924924925) >> 64;
  v6[2] = a1;
  v6[3] = 2 * ((v9 >> 4) + (v9 >> 63));
  return result;
}

void *sub_181F8532C(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E70, qword_182AF1920);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

char *sub_181F853B4(void *a1, int64_t a2, char *__src, int64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, v5);
    v4 += v5;
  }

  return v4;
}

_OWORD *sub_181F85420(__int128 *a1, uint64_t a2)
{
  v2[3] = xmmword_182AE8E90;
  v5 = qword_1ED411A90;
  v6 = sub_182AD2738();
  (*(*(v6 - 8) + 56))(v2 + v5, 1, 1, v6);
  *(v2 + qword_1ED411A88) = 0;
  v7 = v2 + *(*v2 + 128);
  v7[4] = 0;
  *v7 = 3;
  *(v2 + *(*v2 + 136)) = 0;
  *(v2 + *(*v2 + 144)) = 0;
  v8 = v2 + *(*v2 + 152);
  *v8 = 0;
  v8[8] = 1;
  v9 = v2 + *(*v2 + 160);
  *v9 = 0;
  v9[8] = 1;
  v10 = (v2 + *(*v2 + 168));
  *v10 = 0;
  v10[1] = 0;
  *(v2 + *(*v2 + 176)) = 0;
  *(v2 + *(*v2 + 184)) = 0;
  v11 = *a1;
  *(v17 + 9) = *(a1 + 9);
  v17[0] = v11;
  *(v2 + 25) = *(a1 + 9);
  v2[1] = *a1;
  sub_181BBBFDC(v17, v14);
  sub_181F7F558(a2, &v15);
  swift_beginAccess();
  v12 = v15;
  v7[4] = v16;
  *v7 = v12;
  return v2;
}

_OWORD *sub_181F85608(__int128 *a1)
{
  v1[3] = xmmword_182AE8E90;
  v3 = qword_1ED411A90;
  v4 = sub_182AD2738();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  *(v1 + qword_1ED411A88) = 0;
  v5 = v1 + *(*v1 + 128);
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *(v5 + 5) = 2;
  *(v1 + *(*v1 + 136)) = 0;
  *(v1 + *(*v1 + 144)) = 0;
  v6 = v1 + *(*v1 + 152);
  *v6 = 0;
  v6[8] = 1;
  v7 = v1 + *(*v1 + 160);
  *v7 = 0;
  v7[8] = 1;
  v8 = (v1 + *(*v1 + 168));
  *v8 = 0;
  v8[1] = 0;
  *(v1 + *(*v1 + 176)) = 0;
  *(v1 + *(*v1 + 184)) = 0;
  v9 = *a1;
  *(v12 + 9) = *(a1 + 9);
  v12[0] = v9;
  *(v1 + 25) = *(a1 + 9);
  v1[1] = *a1;
  swift_beginAccess();
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  *(v5 + 5) = 2;
  sub_181BBBFDC(v12, v11);
  return v1;
}

_OWORD *sub_181F857E0(__int128 *a1, uint64_t a2, void (*a3)(_BYTE *__return_ptr, uint64_t))
{
  v3[3] = xmmword_182AE8E90;
  v7 = qword_1ED411A90;
  v8 = sub_182AD2738();
  (*(*(v8 - 8) + 56))(v3 + v7, 1, 1, v8);
  *(v3 + qword_1ED411A88) = 0;
  v9 = v3 + *(*v3 + 128);
  *v9 = 256;
  *(v3 + *(*v3 + 136)) = 0;
  *(v3 + *(*v3 + 144)) = 0;
  v10 = v3 + *(*v3 + 152);
  *v10 = 0;
  v10[8] = 1;
  v11 = v3 + *(*v3 + 160);
  *v11 = 0;
  v11[8] = 1;
  v12 = (v3 + *(*v3 + 168));
  *v12 = 0;
  v12[1] = 0;
  *(v3 + *(*v3 + 176)) = 0;
  *(v3 + *(*v3 + 184)) = 0;
  v13 = *a1;
  *(v18 + 9) = *(a1 + 9);
  v18[0] = v13;
  *(v3 + 25) = *(a1 + 9);
  v3[1] = *a1;
  sub_181BBBFDC(v18, &v16);
  a3(v17, a2);
  swift_beginAccess();
  v14 = v17[1];
  *v9 = v17[0];
  v9[1] = v14;
  return v3;
}

uint64_t sub_181F859CC(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 144);

  result = swift_beginAccess();
  v6 = *(a1 + v4);
  if (!v6)
  {
  }

  if (!(v6 >> 62))
  {
    v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_4;
    }
  }

  result = sub_182AD3EB8();
  v7 = result;
  if (!result)
  {
  }

LABEL_4:
  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1865DA790](i, v6);
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      v10 = v9;
      (*(a2 + 16))(a2, v9);
    }
  }

  return result;
}

void *sub_181F85AF0(void *__src)
{
  v3 = v1[2];
  v4 = v1[4];
  if ((v4 & 0x1000000000000000) != 0)
  {
    v7 = v1[2];
    v5 = sub_182AD3168();
    v3 = v7;
  }

  else if ((v4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v4) & 0xF;
  }

  else
  {
    v5 = v1[3] & 0xFFFFFFFFFFFFLL;
  }

  return memcpy(v3, __src, v5);
}

Swift::Void __swiftcall triggerApplicationServiceChanged(service:)(Swift::String service)
{
  object = service._object;
  countAndFlagsBits = service._countAndFlagsBits;
  if (qword_1EA8372C8 != -1)
  {
    swift_once();
  }

  v3 = sub_182AD2698();
  __swift_project_value_buffer(v3, qword_1EA843470);

  v4 = sub_182AD2678();
  v5 = sub_182AD38D8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_181C64FFC(countAndFlagsBits, object, &v9);
    _os_log_impl(&dword_181A37000, v4, v5, "Triggering application service changes notification for service: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1865DF520](v7, -1, -1);
    MEMORY[0x1865DF520](v6, -1, -1);
  }

  v8 = sub_182AD3048();
  notify_post((v8 + 32));
}

uint64_t NWEndpoint.servicePayload<A>()@<X0>(uint64_t a1@<X0>, void *a3@<X8>)
{
  NWEndpoint.txtRecord.getter(&v17);
  v5 = v17;
  if (v17 && (v6 = *(&v17 + 1), NWTXTRecord.subscript.getter(0x64616F6C796150, 0xE700000000000000), v8 = v7, sub_181AB612C(v5, v6), v8) && (v9 = objc_allocWithZone(MEMORY[0x1E695DEF0]), v10 = sub_182AD2F58(), , v11 = [v9 initWithBase64EncodedString:v10 options:0], v10, v11) && (v17 = xmmword_182AE8230, sub_182AD2148(), v11, v12 = *(&v17 + 1), *(&v17 + 1) >> 60 != 15))
  {
    v13 = v17;
    sub_182AD1C48();
    swift_allocObject();
    sub_182AD1C38();
    sub_182AD1C18();
    sub_181D9D680(v13, v12);

    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  v14 = *(*(a1 - 8) + 56);

  return v14(a3, v16, 1, a1);
}

uint64_t DiscoverableApplicationServiceCoder.ExtensionConfiguration.service.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t DiscoverableApplicationServiceCoder.ExtensionConfiguration.payload.getter()
{
  v1 = *(v0 + 24);
  sub_181F49B44(v1, *(v0 + 32));
  return v1;
}

uint64_t sub_181F8601C()
{
  v1 = *v0;
  v2 = 0x65636976726573;
  v3 = 0x616C696176417369;
  v4 = 0x64616F6C796170;
  if (v1 != 3)
  {
    v4 = 0x65706F6373;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7954656369766564;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_181F860C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_181F87034(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_181F860F8(uint64_t a1)
{
  v2 = sub_181F86A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_181F86134(uint64_t a1)
{
  v2 = sub_181F86A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DiscoverableApplicationServiceCoder.ExtensionConfiguration.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838E98, &qword_182AE8F00);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - v5;
  v22 = *(v1 + 16);
  v18 = *(v1 + 20);
  v7 = *(v1 + 24);
  v16 = *(v1 + 32);
  v17 = v7;
  v15 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F86A74();
  v8 = v3;
  sub_182AD4638();
  LOBYTE(v20) = 0;
  v9 = v19;
  sub_182AD40E8();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = v16;
  v10 = v17;
  v12 = v15;
  LOBYTE(v20) = 1;
  sub_182AD4178();
  LOBYTE(v20) = 2;
  sub_182AD40F8();
  v20 = v10;
  v21 = v11;
  v23 = 3;
  sub_181F49B44(v10, v11);
  sub_181C675F8();
  sub_182AD40D8();
  sub_181D9D680(v20, v21);
  LODWORD(v20) = v12;
  v23 = 4;
  sub_181F86AC8();
  sub_182AD4118();
  return (*(v4 + 8))(v6, v8);
}

uint64_t DiscoverableApplicationServiceCoder.ExtensionConfiguration.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EA0, &qword_182AE8F08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_181F86A74();
  sub_182AD45E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v22) = 0;
  v9 = sub_182AD3FC8();
  v11 = v10;
  v21 = v9;
  LOBYTE(v22) = 1;
  v12 = sub_182AD4058();
  LOBYTE(v22) = 2;
  v24 = sub_182AD3FD8();
  v25 = 3;
  sub_181C67934();
  sub_182AD3FA8();
  v19 = v22;
  v20 = v23;
  v25 = 4;
  sub_181F86B1C();
  sub_182AD3FF8();
  v14 = v24 & 1;
  (*(v6 + 8))(v8, v5);
  v15 = v22;
  *a2 = v21;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 20) = v14;
  v17 = v19;
  v16 = v20;
  *(a2 + 24) = v19;
  *(a2 + 32) = v16;
  *(a2 + 40) = v15;

  sub_181F49B44(v17, v16);
  __swift_destroy_boxed_opaque_existential_1(a1);

  return sub_181D9D680(v17, v16);
}

uint64_t static DiscoverableApplicationServiceCoder.createConfiguration(xpcData:)()
{
  sub_182AD1C48();
  swift_allocObject();
  sub_182AD1C38();
  sub_181F86B70();
  sub_182AD1C18();
}

uint64_t static DiscoverableApplicationServiceCoder.createXPCData(discoverableService:)(void *a1)
{
  sub_182AD1C98();
  swift_allocObject();
  v3 = sub_182AD1C88();
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 40))(&v25, v4, v5);
  v32[2] = v3;
  if (v26)
  {
    sub_181F753CC(&v25, &v27);
    __swift_project_boxed_opaque_existential_1(&v27, v30);
    v6 = sub_182AD1C68();
    if (v1)
    {

      v8 = 0;
      v9 = 0xF000000000000000;
    }

    else
    {
      v8 = v6;
      v9 = v7;
    }

    __swift_destroy_boxed_opaque_existential_1(&v27);
  }

  else
  {
    sub_181F86BC4(&v25);
    v8 = 0;
    v9 = 0xF000000000000000;
  }

  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  swift_getDynamicType();
  v10 = (*(a1[4] + 8))();
  v23 = v11;
  v24 = v10;
  v13 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  (*(v12 + 16))(&v25, v13, v12);
  v14 = v25;
  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  LOBYTE(v15) = (*(v16 + 32))(v15, v16);
  v18 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v18);
  v19 = *(v17 + 24);
  v20 = sub_181F49B44(v8, v9);
  v19(v32, v18, v17, v20);
  *&v27 = v24;
  *(&v27 + 1) = v23;
  v28 = v14;
  v29 = v15 & 1;
  v30 = v8;
  v31 = v9;
  sub_181F86C2C();
  v21 = sub_182AD1C68();
  sub_181D9D680(v8, v9);

  sub_181D9D680(v8, v9);
  return v21;
}

unint64_t sub_181F86A74()
{
  result = qword_1EA836810;
  if (!qword_1EA836810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836810);
  }

  return result;
}

unint64_t sub_181F86AC8()
{
  result = qword_1EA8364C8;
  if (!qword_1EA8364C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8364C8);
  }

  return result;
}

unint64_t sub_181F86B1C()
{
  result = qword_1EA8364C0;
  if (!qword_1EA8364C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8364C0);
  }

  return result;
}

unint64_t sub_181F86B70()
{
  result = qword_1EA8364D0;
  if (!qword_1EA8364D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8364D0);
  }

  return result;
}

uint64_t sub_181F86BC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA838EA8, &qword_182AE8F10);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_181F86C2C()
{
  result = qword_1EA8367F8;
  if (!qword_1EA8367F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8367F8);
  }

  return result;
}

unint64_t sub_181F86C84()
{
  result = qword_1EA8367F0;
  if (!qword_1EA8367F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8367F0);
  }

  return result;
}

unint64_t sub_181F86CDC()
{
  result = qword_1EA838EB0;
  if (!qword_1EA838EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838EB0);
  }

  return result;
}

unint64_t sub_181F86D34()
{
  result = qword_1EA838EB8;
  if (!qword_1EA838EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838EB8);
  }

  return result;
}

unint64_t sub_181F86D8C()
{
  result = qword_1EA838EC0;
  if (!qword_1EA838EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838EC0);
  }

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_181F86E78(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
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

uint64_t sub_181F86EC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 44) = 1;
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

    *(result + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_181F86F30()
{
  result = qword_1EA838EC8;
  if (!qword_1EA838EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838EC8);
  }

  return result;
}

unint64_t sub_181F86F88()
{
  result = qword_1EA836800;
  if (!qword_1EA836800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836800);
  }

  return result;
}

unint64_t sub_181F86FE0()
{
  result = qword_1EA836808;
  if (!qword_1EA836808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836808);
  }

  return result;
}

uint64_t sub_181F87034(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65636976726573 && a2 == 0xE700000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616C696176417369 && a2 == 0xEB00000000656C62 || (sub_182AD4268() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000 || (sub_182AD4268() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_182AD4268();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t NetworkContext.hash(into:)(uint64_t a1)
{
  nw_context_get_identifier(*(v1 + 16));
  sub_182AD3158();
  sub_182AD30E8();
}

uint64_t NetworkContext.__allocating_init(identifier:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  v3 = sub_182AD3048();

  v4 = nw_context_create((v3 + 32));

  *(v2 + 16) = v4;
  return v2;
}

uint64_t NetworkContext.init(identifier:)(uint64_t a1, uint64_t a2)
{
  v3 = sub_182AD3048();

  v4 = nw_context_create((v3 + 32));

  *(v2 + 16) = v4;
  return v2;
}

uint64_t NetworkContext.__allocating_init(identifier:externalScheduler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = swift_allocObject();
  v4 = sub_182AD3048();

  v5 = nw_context_create((v4 + 32));

  swift_unknownObjectRelease();
  *(v3 + 16) = v5;
  return v3;
}

uint64_t NetworkContext.init(identifier:externalScheduler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_182AD3048();

  v5 = nw_context_create((v4 + 32));

  swift_unknownObjectRelease();
  *(v3 + 16) = v5;
  return v3;
}

uint64_t NetworkContext.hashValue.getter()
{
  sub_182AD44E8();
  nw_context_get_identifier(*(v0 + 16));
  sub_182AD3158();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181F87480()
{
  v1 = *v0;
  sub_182AD44E8();
  nw_context_get_identifier(*(v1 + 16));
  sub_182AD3158();
  sub_182AD30E8();

  return sub_182AD4558();
}

uint64_t sub_181F874E8(uint64_t a1)
{
  nw_context_get_identifier(*(*v1 + 16));
  sub_182AD3158();
  sub_182AD30E8();
}

uint64_t sub_181F87544(uint64_t a1)
{
  v2 = *v1;
  sub_182AD44E8();
  nw_context_get_identifier(*(v2 + 16));
  sub_182AD3158();
  sub_182AD30E8();

  return sub_182AD4558();
}

void NetworkContext.async(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v5[4] = a1;
  v5[5] = a2;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 1107296256;
  v5[2] = sub_181B7D048;
  v5[3] = &block_descriptor_3;
  v4 = _Block_copy(v5);

  nw_queue_context_async(v3, v4);
  _Block_release(v4);
}

unint64_t sub_181F87678()
{
  result = qword_1EA838ED0;
  if (!qword_1EA838ED0)
  {
    type metadata accessor for NetworkContext();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838ED0);
  }

  return result;
}

void HTTPRequest.url.getter(char *a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 56) == 0x5443454E4E4F43 && *(*v1 + 64) == 0xE700000000000000;
  if (v4 || (sub_182AD4268() & 1) != 0)
  {
    v5 = v3[31];
    if (!v5)
    {
      goto LABEL_30;
    }

    v6 = v3[30];
    v7 = v3[32];
    v8 = v3[33];
    v10 = v3[34];
    v9 = v3[35];
    v11 = v3[36];
    if ((sub_181CA4798(v9, v11) & 1) == 0)
    {
      sub_181F887D0(v6, v5, v7, v8, v10, v9, v11);
      sub_182287700(v9, v11);
      sub_181D04D28(v6, v5, v7, v8, v10, v9, v11);
    }
  }

  v12 = v3[7] == 0x534E4F4954504FLL && v3[8] == 0xE700000000000000;
  if (!v12 && (sub_182AD4268() & 1) == 0)
  {
    goto LABEL_23;
  }

  v13 = v3[24];
  if (!v13)
  {
    goto LABEL_23;
  }

  v14 = v3[23];
  v15 = v3[25];
  v16 = v3[26];
  v18 = v3[27];
  v17 = v3[28];
  v19 = v3[29];
  if (sub_181CA4798(v17, v19))
  {
  }

  else
  {
    sub_181F887D0(v14, v13, v15, v16, v18, v17, v19);
    v20 = sub_182287700(v17, v19);
    v60 = v21;
    v62 = a1;
    v22 = v20;
    sub_181D04D28(v14, v13, v15, v16, v18, v17, v19);
    v17 = v22;
    v19 = v60;
    a1 = v62;
  }

  if (v17 == 42 && v19 == 0xE100000000000000)
  {

    goto LABEL_30;
  }

  v24 = sub_182AD4268();

  if (v24)
  {
LABEL_30:
    v48 = sub_182AD2058();
    v45 = *(*(v48 - 8) + 56);
    v46 = v48;
    v47 = a1;
    goto LABEL_31;
  }

LABEL_23:
  v63 = a1;
  v25 = v3[10];
  if (v25)
  {
    v26 = v3[17];
    if (v26)
    {
      v27 = v3[9];
      v29 = v3[11];
      v28 = v3[12];
      v30 = v3[13];
      v61 = v3[14];
      v31 = v3[16];
      v59 = v3[15];
      v32 = v3[18];
      v33 = v3[19];
      v34 = v3[20];
      v35 = v3[21];
      v36 = v3[22];
      v65[0] = v31;
      v65[1] = v26;
      v65[2] = v32;
      v65[3] = v33;
      v66 = v34;
      v67 = v35;
      v68 = v36;
      v37 = v3[24];
      if (v37)
      {
        v49 = v25;
        v50 = v27;
        v51 = v29;
        v52 = v28;
        v53 = v30;
        v38 = v3[23];
        v39 = v3[25];
        v40 = v3[26];
        v42 = v3[27];
        v41 = v3[28];
        v43 = v3[29];
        v69[0] = v38;
        v69[1] = v37;
        v69[2] = v39;
        v69[3] = v40;
        v70 = v42;
        v71 = v41;
        v72 = v43;
        v54 = v31;
        v55 = v32;
        v56 = v34;
        v57 = v35;
        v58 = v36;
        sub_181F887D0(v31, v26, v32, v33, v34, v35, v36);
        sub_181F887D0(v38, v37, v39, v40, v42, v41, v43);
        if (sub_181CA4798(v61, v59))
        {
          v64[0] = v61;
          v64[1] = v59;
          sub_181F887D0(v54, v26, v55, v33, v56, v57, v58);
          sub_181F887D0(v38, v37, v39, v40, v42, v41, v43);
          sub_181F887D0(v54, v26, v55, v33, v56, v57, v58);
          sub_181F887D0(v38, v37, v39, v40, v42, v41, v43);
          sub_181F887D0(v54, v26, v55, v33, v56, v57, v58);
          sub_181F887D0(v38, v37, v39, v40, v42, v41, v43);
          sub_181F887D0(v50, v49, v51, v52, v53, v61, v59);

          sub_181F88820(v64, v65, v69, v63);

          sub_181D04D28(v54, v26, v55, v33, v56, v57, v58);
          sub_181D04D28(v38, v37, v39, v40, v42, v41, v43);
          sub_181D04D28(v54, v26, v55, v33, v56, v57, v58);
          sub_181D04D28(v38, v37, v39, v40, v42, v41, v43);
          sub_181D04D28(v54, v26, v55, v33, v56, v57, v58);
        }

        else
        {
          sub_181F887D0(v54, v26, v55, v33, v56, v57, v58);
          sub_181F887D0(v38, v37, v39, v40, v42, v41, v43);
          sub_181F887D0(v54, v26, v55, v33, v56, v57, v58);
          sub_181F887D0(v38, v37, v39, v40, v42, v41, v43);
          sub_181F887D0(v50, v49, v51, v52, v53, v61, v59);
          sub_1822878B4(v61, v59, v65, v69, v63);
          sub_181D04D28(v54, v26, v55, v33, v56, v57, v58);
          sub_181D04D28(v38, v37, v39, v40, v42, v41, v43);
          sub_181D04D28(v54, v26, v55, v33, v56, v57, v58);
        }

        sub_181D04D28(v38, v37, v39, v40, v42, v41, v43);

        sub_181D04D28(v50, v49, v51, v52, v53, v61, v59);
        return;
      }
    }
  }

  v44 = sub_182AD2058();
  v45 = *(*(v44 - 8) + 56);
  v46 = v44;
  v47 = v63;
LABEL_31:

  v45(v47, 1, 1, v46);
}

uint64_t sub_181F87ED8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0, &qword_182AE8240);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_181F88B84(a1, &v6 - v3);
  return HTTPRequest.url.setter(v4);
}

uint64_t HTTPRequest.url.setter(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0, &qword_182AE8240);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v50 - v5;
  v7 = sub_182AD2058();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_181F88B84(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_181F88BF4(v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_1822C9498();

      *v2 = v12;
    }

    v13 = v12[9];
    v14 = v12[10];
    v15 = v12[11];
    v16 = v12[12];
    v17 = v12[13];
    v18 = v12[14];
    v19 = v12[15];
    *(v12 + 9) = 0u;
    *(v12 + 11) = 0u;
    *(v12 + 13) = 0u;
    v12[15] = 0;
    sub_181D04D28(v13, v14, v15, v16, v17, v18, v19);
    v20 = swift_isUniquelyReferenced_nonNull_native();
    v21 = *v2;
    if ((v20 & 1) == 0)
    {
      v21 = sub_1822C9498();

      *v2 = v21;
    }

    v22 = v21[16];
    v23 = v21[17];
    v24 = v21[18];
    v25 = v21[19];
    v26 = v21[20];
    v27 = v21[21];
    v28 = v21[22];
    *(v21 + 8) = 0u;
    *(v21 + 9) = 0u;
    *(v21 + 10) = 0u;
    v21[22] = 0;
    sub_181D04D28(v22, v23, v24, v25, v26, v27, v28);
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v30 = *v2;
    if ((v29 & 1) == 0)
    {
      v30 = sub_1822C9498();

      *v2 = v30;
    }

    v31 = v30[23];
    v32 = v30[24];
    v33 = v30[25];
    v34 = v30[26];
    v35 = v30[27];
    v36 = v30[28];
    v37 = v30[29];
    *(v30 + 23) = 0u;
    *(v30 + 25) = 0u;
    *(v30 + 27) = 0u;
    v30[29] = 0;
    sub_181D04D28(v31, v32, v33, v34, v35, v36, v37);
    return sub_181F88BF4(a1);
  }

  else
  {
    (*(v8 + 32))(v10, v6, v7);
    sub_181CA3CAC();
    v40 = v39;
    v41 = sub_182AD30B8();
    v43 = v42;

    HTTPRequest.scheme.setter(v41, v43);
    if (v40)
    {
      v44 = sub_182AD30B8();
      v46 = v45;
    }

    else
    {
      v44 = 0;
      v46 = 0;
    }

    HTTPRequest.authority.setter(v44, v46);
    v47 = sub_182AD30B8();
    v49 = v48;

    HTTPRequest.path.setter(v47, v49);
    sub_181F88BF4(a1);
    return (*(v8 + 8))(v10, v7);
  }
}

uint64_t sub_181F88284@<X0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X8>)
{
  v12 = *(a3 + 40);
  v11 = *(a3 + 48);
  if ((sub_181CA4798(v12, v11) & 1) == 0)
  {
    return sub_182287EB8(v12, v11, a4, a5, a1, a2, a6);
  }

  if ((v11 & 0x1000000000000000) != 0)
  {
    v12 = sub_18224FE14(v12, v11);
    v17 = v16;

    v11 = v17;
    if ((v17 & 0x2000000000000000) == 0)
    {
      goto LABEL_4;
    }

LABEL_9:
    v19[0] = v12;
    v19[1] = v11 & 0xFFFFFFFFFFFFFFLL;
    sub_181F883D4(a4, a5, a1, a2, v19, (HIBYTE(v11) & 0xF), a6);
  }

  if ((v11 & 0x2000000000000000) != 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  if ((v12 & 0x1000000000000000) != 0)
  {
    v13 = ((v11 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v14 = (v12 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    v13 = sub_182AD3CF8();
    v14 = v18;
  }

  sub_181F883D4(a4, a5, a1, a2, v13, v14, a6);
}

void sub_181F883D4(char *a1@<X0>, char *a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X4>, char *a6@<X5>, char *a7@<X8>)
{
  v29 = a7;
  v13 = sub_182AD2058();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0, &qword_182AE8240);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v29 - v18;
  v20 = a2 + 3;
  if (__OFADD__(a2, 3))
  {
    __break(1u);
    goto LABEL_12;
  }

  v21 = __OFADD__(v20, a4);
  v22 = &a4[v20];
  if (v21)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v21 = __OFADD__(v22, a6);
  v23 = &a6[v22];
  if (v21)
  {
LABEL_13:
    __break(1u);
    return;
  }

  v30 = sub_181ADBA10(0, v23 & ~(v23 >> 63), 0, MEMORY[0x1E69E7CC0]);
  sub_1820D4CC0(a1, a2);
  sub_1820D4BB0(3092282, 0xE300000000000000);
  sub_1820D4CC0(a3, a4);
  sub_1820D4CC0(a5, a6);
  v24 = CFURLCreateAbsoluteURLWithBytes(*MEMORY[0x1E695E480], v30 + 32, *(v30 + 2), 0x600u, 0, 0);
  if (v24)
  {
    v25 = v24;
    sub_182AD1FD8();
    (*(v14 + 32))(v19, v16, v13);

    v26 = *(v14 + 56);
    v26(v19, 0, 1, v13);
  }

  else
  {
    v26 = *(v14 + 56);
    v26(v19, 1, 1, v13);
  }

  if ((*(v14 + 48))(v19, 1, v13) == 1)
  {
    sub_181F88BF4(v19);
    v27 = 1;
    v28 = v29;
  }

  else
  {
    v28 = v29;
    (*(v14 + 32))(v29, v19, v13);
    v27 = 0;
  }

  v26(v28, v27, 1, v13);
}

void (*HTTPRequest.url.modify(void *a1))(uint64_t a1, char a2, double a3)
{
  *a1 = v1;
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0, &qword_182AE8240) - 8) + 64);
  if (MEMORY[0x1E69E7D08])
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  HTTPRequest.url.getter(v4);
  return sub_181F88760;
}

void sub_181F88760(uint64_t a1, char a2, double a3)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2)
  {
    sub_181F88B84(v4, v3);
    HTTPRequest.url.setter(v3);
    sub_181F88BF4(v4);
  }

  else
  {
    HTTPRequest.url.setter(v4);
  }

  free(v4);

  free(v3);
}

double sub_181F887D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_181F88820@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  if ((v10 & 0x1000000000000000) != 0)
  {
    v22 = sub_18224FE14(v9, v10);
    v24 = v23;

    v9 = v22;
    *a1 = v22;
    a1[1] = v24;
    v10 = v24;
    if ((v24 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v10 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v9 & 0x1000000000000000) != 0)
    {
      v12 = ((v10 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v13 = (v9 & 0xFFFFFFFFFFFFLL);
    }

    else
    {
      v12 = sub_182AD3CF8();
      v13 = v28;
    }

    v15 = *(a2 + 40);
    v14 = *(a2 + 48);
    if (sub_181CA4798(v15, v14))
    {
      v31 = v15;
      v32 = v14;
      sub_181F88CC0(a3, v30);
      sub_181F88CC0(a3, v30);
      sub_181F88CC0(a3, v30);

      sub_181F88A84(&v31, a3, v12, v13, a4);
      if (!v4)
      {
        goto LABEL_12;
      }

      sub_181CA27BC(a3);
      sub_181CA27BC(a3);

      __break(1u);
      goto LABEL_18;
    }

    sub_181F88CC0(a3, v30);
    v16 = a4;
    v17 = v15;
    v18 = v14;
    v19 = a3;
    v20 = v12;
    v21 = v13;
LABEL_14:
    sub_182287C24(v17, v18, v19, v20, v21, v16);
    goto LABEL_15;
  }

  v31 = v9;
  v32 = v10 & 0xFFFFFFFFFFFFFFLL;
  v26 = *(a2 + 40);
  v25 = *(a2 + 48);
  if ((sub_181CA4798(v26, v25) & 1) == 0)
  {
    sub_181F88CC0(a3, v30);
    v20 = &v31;
    v16 = a4;
    v17 = v26;
    v18 = v25;
    v19 = a3;
    v21 = (HIBYTE(v10) & 0xF);
    goto LABEL_14;
  }

  v29[0] = v26;
  v29[1] = v25;
  sub_181F88CC0(a3, v30);
  sub_181F88CC0(a3, v30);
  sub_181F88CC0(a3, v30);

  sub_181F88A84(v29, a3, &v31, (HIBYTE(v10) & 0xF), a4);
  if (!v4)
  {
LABEL_12:

    sub_181CA27BC(a3);
    sub_181CA27BC(a3);
LABEL_15:
    sub_181CA27BC(a2);
    return sub_181CA27BC(a3);
  }

LABEL_18:
  sub_181CA27BC(a3);
  sub_181CA27BC(a3);

  __break(1u);
  return result;
}

uint64_t sub_181F88A84@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, char *a4@<X3>, char *a5@<X8>)
{
  v9 = *a1;
  v10 = a1[1];
  if ((v10 & 0x1000000000000000) != 0)
  {
    v15 = a5;
    v16 = sub_18224FE14(v9, v10);
    v18 = v17;

    v9 = v16;
    a5 = v15;
    *a1 = v16;
    a1[1] = v18;
    v10 = v18;
    if ((v18 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_7:
    v13 = (HIBYTE(v10) & 0xF);
    v22[0] = v9;
    v22[1] = v10 & 0xFFFFFFFFFFFFFFLL;
    v14 = v22;
    goto LABEL_8;
  }

  if ((v10 & 0x2000000000000000) != 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((v9 & 0x1000000000000000) != 0)
  {
    v12 = (v10 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v13 = (v9 & 0xFFFFFFFFFFFFLL);
  }

  else
  {
    v20 = a5;
    v21 = sub_182AD3CF8();
    a5 = v20;
    v12 = v21;
  }

  v14 = v12;
LABEL_8:
  sub_181F88284(v14, v13, a2, a3, a4, a5);
  return sub_181CA27BC(a2);
}

uint64_t sub_181F88B84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0, &qword_182AE8240);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_181F88BF4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA838BB0, &qword_182AE8240);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_181F88C5C()
{
  result = qword_1EA838EE0;
  if (!qword_1EA838EE0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EA838ED8, &qword_182AEF830);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA838EE0);
  }

  return result;
}

double sub_181F88D1C()
{
  if (qword_1EA837020 != -1)
  {
    swift_once();
  }

  result = qword_1EA843200;
  *&qword_1EA843228 = qword_1EA843200;
  return result;
}

void sub_181F88D78()
{
  v1 = *v0;
  *(v1 + 138) = 0;
  v2 = *(v1 + 96);
  if (v2)
  {
    nw_context_reset_timer_block(*(v2 + 16), v1, -1, 0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_181F88DC0()
{
  v9 = sub_182AD3918();
  v1 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v3 = v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_182AD38F8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_182AD27C8();
  MEMORY[0x1EEE9AC00](v5 - 8);
  *(v0 + 16) = nullsub_41;
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = swift_slowAlloc();
  v6 = sub_181AA2FA8();
  v8[0] = &OBJC_IVAR____TtC7Network20TimerDispatchBackend_running;
  v8[1] = v6;
  sub_182AD27B8();
  v10 = MEMORY[0x1E69E7CC0];
  sub_181F8C5C0(&unk_1EA836B40, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AB70, &unk_182AE9650);
  sub_181F8C608(&qword_1EA836B50, &unk_1EA83AB70, &unk_182AE9650);
  sub_182AD3AC8();
  (*(v1 + 104))(v3, *MEMORY[0x1E69E8090], v9);
  *(v0 + 48) = sub_182AD3938();
  pthread_mutex_init(*(v0 + 40), 0);
  return v0;
}

uint64_t sub_181F89048(uint64_t a1)
{
  v3 = sub_182AD27A8();
  v33 = *(v3 - 8);
  v34 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_182AD27C8();
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v29 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_182AD2798();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = sub_182AD2888();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v26 - v15;
  v17 = *(v1 + 40);
  pthread_mutex_lock(v17);
  *(v1 + 32) = 1;
  pthread_mutex_unlock(v17);
  v18 = *(v1 + 48);
  result = sub_182AD2878();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *v9 = a1;
    (*(v7 + 104))(v9, *MEMORY[0x1E69E7F38], v6);
    MEMORY[0x1865D9400](v13, v9);
    (*(v7 + 8))(v9, v6);
    v20 = *(v11 + 8);
    v27 = v10;
    v28 = v20;
    v20(v13, v10);
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = a1;
    aBlock[4] = sub_181F8C1D4;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181B7D048;
    aBlock[3] = &block_descriptor_4;
    v22 = _Block_copy(aBlock);

    v23 = v29;
    sub_182AD27B8();
    v35 = MEMORY[0x1E69E7CC0];
    sub_181F8C5C0(&qword_1ED40F4B0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50, &qword_182AF48B0);
    sub_181F8C608(&qword_1ED40F4A0, &unk_1EA839F50, &qword_182AF48B0);
    v24 = v31;
    v25 = v34;
    sub_182AD3AC8();
    MEMORY[0x1865DA470](v16, v23, v24, v22);
    _Block_release(v22);

    (*(v33 + 8))(v24, v25);
    (*(v30 + 8))(v23, v32);
    v28(v16, v27);
  }

  return result;
}

uint64_t sub_181F894E4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 40);
  pthread_mutex_lock(v4);
  v5 = *(a1 + 32);
  result = pthread_mutex_unlock(v4);
  if (v5 == 1)
  {
    v7 = *(a1 + 16);

    v7(v8);

    pthread_mutex_lock(v4);
    v9 = *(a1 + 32);
    result = pthread_mutex_unlock(v4);
    if (v9 == 1)
    {
      return sub_181F89048(a2);
    }
  }

  return result;
}

uint64_t sub_181F8957C()
{
  result = pthread_mutex_destroy(*(v0 + 40));
  if (result)
  {
    __break(1u);
  }

  else
  {
    MEMORY[0x1865DF520](*(v0 + 40), -1, -1);

    return swift_deallocClassInstance();
  }

  return result;
}

uint64_t sub_181F89600()
{
  v1 = *v0;
  v2 = *(v1 + 40);
  pthread_mutex_lock(v2);
  *(v1 + 32) = 0;

  return pthread_mutex_unlock(v2);
}

uint64_t sub_181F89668(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  pthread_mutex_lock(v6);
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;

  return pthread_mutex_unlock(v6);
}

void sub_181F896D8()
{
  if (*(v0 + 57) == 1)
  {
LABEL_13:
    if (qword_1EA837248 == -1)
    {
      goto LABEL_14;
    }

    goto LABEL_40;
  }

  v1 = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    v12 = v1;
    swift_once();
    v1 = v12;
  }

  v2 = qword_1EA8387E8;
  if (is_mul_ok(v1, qword_1EA8387E8))
  {
    if (qword_1EA837038 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  v13 = v1;
  swift_once();
  v1 = v13;
LABEL_6:
  v3 = qword_1EA8387F0;
  if (qword_1EA8387F0)
  {
    if (qword_1EA837010 == -1)
    {
      goto LABEL_8;
    }
  }

  else
  {
    __break(1u);
  }

  v14 = v1;
  swift_once();
  v1 = v14;
LABEL_8:
  if (qword_1EA8431F0)
  {
    v2 = v1 * v2 / v3 / qword_1EA8431F0;
    if (qword_1EA837020 == -1)
    {
      goto LABEL_10;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_10:
  v4 = v2 + qword_1EA843200;
  if (__CFADD__(v2, qword_1EA843200))
  {
    __break(1u);
    goto LABEL_13;
  }

  *(v0 + 58) = 1;
  swift_beginAccess();
  v15 = *(v0 + 64);
  v16 = *(v15 + 16);

  v17 = 0;
  v18 = 0;
LABEL_22:
  v19 = 56 * v18;
  while (1)
  {
    if (v16 == v18)
    {

      if (v17)
      {
        goto LABEL_35;
      }

      v59 = v0;
      v27 = *(*(v0 + 64) + 16);
      if (v27)
      {
        v28 = ( + 80);
        do
        {
          v29 = *(v28 - 4);
          v31 = *(v28 - 3);
          v30 = *(v28 - 2);
          v32 = *(v28 - 1);
          v33 = *v28;
          v67 = 0;
          v68 = 0xE000000000000000;

          v62 = v30;
          v63 = v32;
          oslogb = v33;
          sub_181F8C1DC(v30, v32, v33);
          sub_182AD3BA8();

          v67 = 0x2072656D6974;
          v68 = 0xE600000000000000;
          MEMORY[0x1865D9CA0](v29, v31);
          MEMORY[0x1865D9CA0](0x6E696C6461656420, 0xEA00000000002065);
          v34 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v34);

          MEMORY[0x1865D9CA0](0x20776F6E202CLL, 0xE600000000000000);
          v35 = sub_182AD41B8();
          MEMORY[0x1865D9CA0](v35);

          v36 = v68;
          v60 = v67;
          if (qword_1EA837248 != -1)
          {
            swift_once();
          }

          v37 = sub_182AD2698();
          __swift_project_value_buffer(v37, qword_1EA843418);

          v38 = sub_182AD2678();
          v39 = sub_182AD38B8();

          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            v41 = swift_slowAlloc();
            v67 = v41;
            *v40 = 136315650;
            v42 = sub_182AD3BF8();
            v44 = sub_181C64FFC(v42, v43, &v67);

            *(v40 + 4) = v44;
            *(v40 + 12) = 2080;
            *(v40 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v67);
            *(v40 + 22) = 2080;
            v45 = sub_181C64FFC(v60, v36, &v67);

            *(v40 + 24) = v45;
            _os_log_impl(&dword_181A37000, v38, v39, "%s %s %s", v40, 0x20u);
            swift_arrayDestroy();
            MEMORY[0x1865DF520](v41, -1, -1);
            MEMORY[0x1865DF520](v40, -1, -1);

            sub_181F8C1EC(v62, v63, oslogb);
          }

          else
          {

            sub_181F8C1EC(v30, v63, oslogb);
          }

          v28 += 56;
          --v27;
        }

        while (v27);
        goto LABEL_50;
      }

LABEL_51:
      v67 = 0;
      v68 = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD6080);
      v46 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v46);

      MEMORY[0x1865D9CA0](0xD000000000000011, 0x8000000182BD60A0);
      v47 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v47);

      MEMORY[0x1865D9CA0](0x6C65636E6163202CLL, 0xED0000203F64656CLL);
      if (*(v59 + 57))
      {
        v48 = 1702195828;
      }

      else
      {
        v48 = 0x65736C6166;
      }

      if (*(v59 + 57))
      {
        v49 = 0xE400000000000000;
      }

      else
      {
        v49 = 0xE500000000000000;
      }

      MEMORY[0x1865D9CA0](v48, v49);

      v24 = v67;
      v25 = v68;
      if (qword_1EA837248 != -1)
      {
        goto LABEL_63;
      }

      goto LABEL_58;
    }

    if (v18 >= *(v15 + 16))
    {
      break;
    }

    ++v18;
    v20 = *(v15 + v19 + 40) - 1;
    v19 += 56;
    if (v20 < v4)
    {
      v61 = *(v15 + v19 - 24);
      osloga = *(v15 + v19 + 8);
      v21 = *(v15 + v19 + 16);
      v22 = *(v15 + v19 + 24);
      swift_beginAccess();
      v23 = *(v0 + 64);
      v24 = v21;
      v25 = osloga;

      sub_181F8C1DC(osloga, v24, v22);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 64) = v23;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_18208355C(v23);
      }

      if (v18 - 1 < *(v23 + 2))
      {
        *&v23[v19 - 16] = 0;
        *(v0 + 64) = v23;
        swift_endAccess();
        if (v22)
        {

          (osloga)(v0, v61);
LABEL_33:

          sub_181F8C1EC(osloga, v24, v22);
          sub_181F8C1EC(osloga, v24, v22);
          v17 = 1;
          goto LABEL_22;
        }

        if (osloga)
        {
          _Block_copy(osloga);
          (osloga[2].isa)(osloga, v0, v61);
          goto LABEL_33;
        }

        __break(1u);
LABEL_63:
        swift_once();
LABEL_58:
        v50 = sub_182AD2698();
        __swift_project_value_buffer(v50, qword_1EA843418);

        v51 = sub_182AD2678();
        v52 = sub_182AD38C8();

        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          v54 = swift_slowAlloc();
          v67 = v54;
          *v53 = 136315650;
          v55 = sub_182AD3BF8();
          v57 = sub_181C64FFC(v55, v56, &v67);

          *(v53 + 4) = v57;
          *(v53 + 12) = 2080;
          *(v53 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v67);
          *(v53 + 22) = 2080;
          v58 = sub_181C64FFC(v24, v25, &v67);

          *(v53 + 24) = v58;
          _os_log_impl(&dword_181A37000, v51, v52, "%s %s %s", v53, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v54, -1, -1);
          MEMORY[0x1865DF520](v53, -1, -1);
        }

        else
        {
        }

        v0 = v59;
LABEL_35:
        sub_181F8A570();
        *(v0 + 58) = 0;
        return;
      }

      __break(1u);
LABEL_50:

      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_40:
  swift_once();
LABEL_14:
  v5 = sub_182AD2698();
  __swift_project_value_buffer(v5, qword_1EA843418);
  oslog = sub_182AD2678();
  v6 = sub_182AD38C8();
  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v69[0] = v8;
    *v7 = 136315650;
    v9 = sub_182AD3BF8();
    v11 = sub_181C64FFC(v9, v10, v69);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v69);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_181C64FFC(0xD000000000000022, 0x8000000182BD60C0, v69);
    _os_log_impl(&dword_181A37000, oslog, v6, "%s %s %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v8, -1, -1);
    MEMORY[0x1865DF520](v7, -1, -1);
  }

  else
  {
  }
}

void *sub_181F8A188()
{
  v1 = v0;
  *(v0 + 56) = 1;
  *(v0 + 58) = 0;
  *(v0 + 64) = MEMORY[0x1E69E7CC0];
  *(v0 + 72) = 0;
  *(v0 + 80) = 0;
  v2 = type metadata accessor for TimerDispatchBackend();
  v3 = swift_allocObject();
  sub_181F88DC0();
  v1[5] = v2;
  v1[6] = &off_1EEF9CCD8;
  v1[2] = v3;
  v4 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  v5 = v1[5];
  v6 = v1[6];
  __swift_mutable_project_boxed_opaque_existential_1((v1 + 2), v5);
  v7 = *(v6 + 24);

  v7(sub_181F8C5B8, v4, v5, v6);
  swift_endAccess();

  return v1;
}

uint64_t sub_181F8A2B8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_181F896D8();
  }

  return result;
}

uint64_t sub_181F8A310(uint64_t a1, uint64_t a2, char *a3, const void *a4, void *a5, char a6)
{
  v11 = *(v6 + 56);
  if (!a3)
  {
    goto LABEL_11;
  }

  v12 = a3;
  result = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v14 = qword_1EA8387E8;
    if (is_mul_ok(result, qword_1EA8387E8))
    {
      if (qword_1EA837038 == -1)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __break(1u);
    }

    v24 = result;
    swift_once();
    result = v24;
LABEL_5:
    v15 = qword_1EA8387F0;
    if (qword_1EA8387F0)
    {
      if (qword_1EA837010 == -1)
      {
        goto LABEL_7;
      }
    }

    else
    {
      __break(1u);
    }

    v25 = result;
    swift_once();
    result = v25;
LABEL_7:
    if (!qword_1EA8431F0)
    {
      __break(1u);
      return result;
    }

    v16 = result * v14 / v15 / qword_1EA8431F0;
    v17 = &v12[v16];
    if (__CFADD__(v16, v12))
    {
      __break(1u);
LABEL_11:
      v17 = 0;
    }

    swift_beginAccess();
    v12 = *(v6 + 64);

    sub_181F8C1DC(a4, a5, a6 & 1);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v6 + 64) = v12;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v12 = sub_181F59774(0, *(v12 + 2) + 1, 1, v12);
      *(v6 + 64) = v12;
    }

    v20 = *(v12 + 2);
    v19 = *(v12 + 3);
    if (v20 >= v19 >> 1)
    {
      v12 = sub_181F59774((v19 > 1), v20 + 1, 1, v12);
    }

    *(v12 + 2) = v20 + 1;
    v21 = &v12[56 * v20];
    v21[32] = v11;
    *(v21 + 5) = v17;
    *(v21 + 6) = a1;
    *(v21 + 7) = a2;
    *(v21 + 8) = a4;
    *(v21 + 9) = a5;
    v21[80] = a6 & 1;
    *(v6 + 64) = v12;
    result = swift_endAccess();
    v22 = *(v6 + 56) + 1;
    if (((v22 >> 8) & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_21:
    v23 = result;
    swift_once();
    result = v23;
  }

  *(v6 + 56) = v22;
  if ((*(v6 + 58) & 1) == 0)
  {
    sub_181F8A570();
  }

  return v11;
}

void sub_181F8A570()
{
  v2 = mach_continuous_time();
  if (qword_1EA837030 != -1)
  {
LABEL_45:
    swift_once();
  }

  v3 = qword_1EA8387E8;
  if (is_mul_ok(v2, qword_1EA8387E8))
  {
    if (qword_1EA837038 == -1)
    {
      goto LABEL_4;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_4:
  v4 = qword_1EA8387F0;
  if (qword_1EA8387F0)
  {
    if (qword_1EA837010 == -1)
    {
      goto LABEL_6;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_6:
  v5 = qword_1EA8431F0;
  if (!qword_1EA8431F0)
  {
    __break(1u);
LABEL_51:
    swift_once();
    goto LABEL_21;
  }

  *(v0 + 80) = 0;
  swift_beginAccess();
  v109 = *(v0 + 64);
  if (*(v109 + 16))
  {
    v83 = v2 * v3 / v4 / v5;
    v86 = v0;
    v105 = *(v109 + 16);

    v7 = v105;
    v8 = 0;
    v9 = 0;
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = (v6 + 80);
    while (1)
    {
      if (v15 >= *(v109 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      v17 = *(v16 - 5);
      if (v17)
      {
        v0 = *(v16 - 48);
        v18 = *(v16 - 4);
        v1 = *(v16 - 3);
        v20 = *(v16 - 2);
        v19 = *(v16 - 1);
        v2 = *v16;
        if (v11)
        {
          if (v17 >= v9)
          {
            goto LABEL_11;
          }

          aBlockb = v13;
          v103 = v10;
          v97 = v14;
          v91 = v11;
          v94 = v12;
          v88 = v9;
          v21 = v8;

          sub_181F8C1DC(v20, v19, v2);
          sub_181F8C1FC(v21, v88, v103, v91, v94, aBlockb, v97);
        }

        else
        {

          sub_181F8C1DC(v20, v19, v2);
        }

        v7 = v105;
        v8 = v0;
        v9 = v17;
        v10 = v18;
        v11 = v1;
        v12 = v20;
        v13 = v19;
        v14 = v2;
      }

LABEL_11:
      ++v15;
      v16 += 56;
      if (v7 == v15)
      {
        v22 = v8;
        v23 = v9;
        v104 = v10;
        v24 = v12;
        v25 = v14;
        v26 = v11;

        if (!v26)
        {
          break;
        }

        v27 = v23 - v83;
        if (v23 < v83)
        {
          v27 = 0;
          goto LABEL_36;
        }

        if (!__CFADD__(v83, v27))
        {
          if (v23 == *(v86 + 80))
          {

            sub_181F8C1DC(v24, v13, v25 & 1);
            if (qword_1EA837250 != -1)
            {
              swift_once();
            }

            if (byte_1EA843430 != 1 || (__nwlog_is_datapath_logging_enabled() & 1) == 0)
            {

              sub_181F8C1EC(v24, v13, v25 & 1);
              goto LABEL_35;
            }

            aBlocka = v13;
            if (qword_1EA837248 != -1)
            {
              swift_once();
            }

            v60 = sub_182AD2698();
            __swift_project_value_buffer(v60, qword_1EA843418);
            v61 = swift_allocObject();
            *(v61 + 16) = "recalculate()";
            *(v61 + 24) = 13;
            *(v61 + 32) = 2;
            v62 = swift_allocObject();
            *(v62 + 16) = sub_181F8C724;
            *(v62 + 24) = v61;
            v63 = swift_allocObject();
            *(v63 + 16) = 1564427099;
            *(v63 + 24) = 0xE400000000000000;
            v81 = swift_allocObject();
            *(v81 + 16) = 0xD000000000000017;
            *(v81 + 24) = 0x8000000182BD6040;
            v64 = sub_182AD2678();
            v65 = sub_182AD38A8();
            v85 = swift_allocObject();
            *(v85 + 16) = 32;
            v87 = swift_allocObject();
            *(v87 + 16) = 8;
            v66 = swift_allocObject();
            *(v66 + 16) = sub_181F8C71C;
            *(v66 + 24) = v62;
            v67 = swift_allocObject();
            *(v67 + 16) = sub_181F8C718;
            *(v67 + 24) = v66;
            v90 = v67;
            v93 = swift_allocObject();
            *(v93 + 16) = 32;
            v96 = swift_allocObject();
            *(v96 + 16) = 8;
            v68 = swift_allocObject();
            *(v68 + 16) = sub_181F8C720;
            *(v68 + 24) = v63;
            v69 = swift_allocObject();
            *(v69 + 16) = sub_181F8C718;
            *(v69 + 24) = v68;
            v99 = v69;
            v108 = swift_allocObject();
            *(v108 + 16) = 32;
            v112 = swift_allocObject();
            *(v112 + 16) = 8;
            v70 = swift_allocObject();
            *(v70 + 16) = sub_181F8C720;
            *(v70 + 24) = v81;
            v71 = swift_allocObject();
            *(v71 + 16) = sub_181F8C718;
            *(v71 + 24) = v70;
            v72 = v65;
            v73 = v65;
            v74 = v64;
            if (os_log_type_enabled(v64, v73))
            {
              v75 = swift_slowAlloc();
              v76 = swift_slowAlloc();
              v113 = v76;
              v114 = 0;
              *v75 = 770;
              v82 = v76;
              v115 = v75 + 2;
              v116 = sub_181F8C728;
              v117 = v85;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C728;
              v117 = v87;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C714;
              v117 = v90;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C728;
              v117 = v93;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C728;
              v117 = v96;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C714;
              v117 = v99;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C728;
              v117 = v108;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C728;
              v117 = v112;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              v116 = sub_181F8C714;
              v117 = v71;
              sub_181F73AE0(&v116, &v115, &v114, &v113);

              _os_log_impl(&dword_181A37000, v74, v72, "%s %s %s", v75, 0x20u);
              swift_arrayDestroy();
              MEMORY[0x1865DF520](v82, -1, -1);
              MEMORY[0x1865DF520](v75, -1, -1);

              sub_181F8C1EC(v24, aBlocka, v25 & 1);

              v36 = v22;
              v37 = v23;
              v38 = v104;
              v39 = v26;
              v40 = v24;
              v41 = aBlocka;
            }

            else
            {

              v13 = aBlocka;
              sub_181F8C1EC(v24, aBlocka, v25 & 1);

LABEL_35:
              v36 = v22;
              v37 = v23;
              v38 = v104;
              v39 = v26;
              v40 = v24;
              v41 = v13;
            }

LABEL_43:
            sub_181F8C1FC(v36, v37, v38, v39, v40, v41, v25);
            return;
          }

LABEL_36:
          *(v86 + 57) = 0;
          if (__CFADD__(v83, v27))
          {
            __break(1u);
          }

          else
          {
            *(v86 + 80) = v83 + v27;

            sub_181F8C1DC(v24, v13, v25 & 1);
            if (qword_1EA837020 == -1)
            {
              goto LABEL_38;
            }
          }

          swift_once();
LABEL_38:
          v42 = qword_1EA843200;
          if (qword_1EA843200)
          {
            if (qword_1EA837250 == -1)
            {
LABEL_40:
              v16 = v13;
              v1 = v27 / v42;
              if (byte_1EA843430 != 1 || !__nwlog_is_datapath_logging_enabled())
              {
LABEL_42:
                swift_beginAccess();
                v43 = *(v86 + 40);
                v44 = *(v86 + 48);
                __swift_mutable_project_boxed_opaque_existential_1(v86 + 16, v43);
                (*(v44 + 16))(v1, v43, v44);
                swift_endAccess();

                sub_181F8C1EC(v24, v16, v25 & 1);
                v36 = v22;
                v37 = v23;
                v38 = v104;
                v39 = v26;
                v40 = v24;
                v41 = v16;
                goto LABEL_43;
              }

LABEL_57:
              v116 = 0;
              v117 = 0xE000000000000000;
              sub_182AD3BA8();
              MEMORY[0x1865D9CA0](0xD00000000000001ALL, 0x8000000182BD6020);
              v45 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v45);

              MEMORY[0x1865D9CA0](0x28206365737520, 0xE700000000000000);
              v46 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v46);

              MEMORY[0x1865D9CA0](0x776F6E202C736D20, 0xE900000000000020);
              v115 = v83;
              v47 = sub_182AD41B8();
              MEMORY[0x1865D9CA0](v47);

              MEMORY[0x1865D9CA0](0x2063736564202CLL, 0xE700000000000000);
              MEMORY[0x1865D9CA0](v104, v26);
              MEMORY[0x1865D9CA0](41, 0xE100000000000000);
              if (qword_1EA837248 != -1)
              {
                swift_once();
              }

              v48 = sub_182AD2698();
              __swift_project_value_buffer(v48, qword_1EA843418);
              v49 = swift_allocObject();
              *(v49 + 16) = "recalculate()";
              *(v49 + 24) = 13;
              *(v49 + 32) = 2;
              v50 = swift_allocObject();
              *(v50 + 16) = sub_181F8C258;
              *(v50 + 24) = v49;
              v106 = swift_allocObject();
              *(v106 + 16) = 1564427099;
              *(v106 + 24) = 0xE400000000000000;
              v110 = swift_allocObject();
              *(v110 + 16) = 0;
              *(v110 + 24) = 0xE000000000000000;

              oslog = sub_182AD2678();
              v51 = sub_182AD38A8();
              v80 = swift_allocObject();
              *(v80 + 16) = 32;
              v84 = swift_allocObject();
              *(v84 + 16) = 8;
              v52 = swift_allocObject();
              *(v52 + 16) = sub_181F8C264;
              *(v52 + 24) = v50;
              v53 = swift_allocObject();
              *(v53 + 16) = sub_181F8C27C;
              *(v53 + 24) = v52;
              v89 = v53;
              v92 = swift_allocObject();
              *(v92 + 16) = 32;
              v95 = swift_allocObject();
              *(v95 + 16) = 8;
              v54 = swift_allocObject();
              *(v54 + 16) = sub_181F8C26C;
              *(v54 + 24) = v106;
              v55 = swift_allocObject();
              *(v55 + 16) = sub_181F8C718;
              *(v55 + 24) = v54;
              v98 = v55;
              aBlock = swift_allocObject();
              aBlock[16] = 32;
              v107 = swift_allocObject();
              *(v107 + 16) = 8;
              v56 = swift_allocObject();
              *(v56 + 16) = sub_181F8C26C;
              *(v56 + 24) = v110;
              v57 = swift_allocObject();
              *(v57 + 16) = sub_181F8C718;
              *(v57 + 24) = v56;
              v111 = v57;
              v78 = v51;
              if (os_log_type_enabled(oslog, v51))
              {
                v58 = swift_slowAlloc();
                v59 = swift_slowAlloc();
                v113 = v59;
                v114 = 0;
                *v58 = 770;
                v77 = v59;
                v115 = v58 + 2;
                v116 = sub_181F8C274;
                v117 = v80;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C728;
                v117 = v84;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C284;
                v117 = v89;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C728;
                v117 = v92;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C728;
                v117 = v95;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C714;
                v117 = v98;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C728;
                v117 = aBlock;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C728;
                v117 = v107;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                v116 = sub_181F8C714;
                v117 = v111;
                sub_181F73AE0(&v116, &v115, &v114, &v113);

                _os_log_impl(&dword_181A37000, oslog, v78, "%s %s %s", v58, 0x20u);
                swift_arrayDestroy();
                MEMORY[0x1865DF520](v77, -1, -1);
                MEMORY[0x1865DF520](v58, -1, -1);
              }

              else
              {
              }

              goto LABEL_42;
            }
          }

          else
          {
            __break(1u);
          }

          swift_once();
          goto LABEL_40;
        }

        __break(1u);
        goto LABEL_57;
      }
    }
  }

  if (qword_1EA837250 != -1)
  {
    goto LABEL_51;
  }

LABEL_21:
  if (byte_1EA843430 == 1)
  {
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v28 = sub_182AD2698();
    __swift_project_value_buffer(v28, qword_1EA843418);
    v29 = sub_182AD2678();
    v30 = sub_182AD38A8();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v116 = v32;
      *v31 = 136315650;
      v33 = sub_182AD3BF8();
      v35 = sub_181C64FFC(v33, v34, &v116);

      *(v31 + 4) = v35;
      *(v31 + 12) = 2080;
      *(v31 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v116);
      *(v31 + 22) = 2080;
      *(v31 + 24) = sub_181C64FFC(0xD000000000000015, 0x8000000182BD6000, &v116);
      _os_log_impl(&dword_181A37000, v29, v30, "%s %s %s", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v32, -1, -1);
      MEMORY[0x1865DF520](v31, -1, -1);
    }
  }

  sub_181F8BB34(0);
}

uint64_t sub_181F8BA68(unsigned __int8 a1)
{
  result = swift_beginAccess();
  v4 = *(v1 + 64);
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = 0;
    v7 = (v4 + 32);
    while (1)
    {
      v8 = *v7;
      v7 += 56;
      if (v8 == a1)
      {
        break;
      }

      if (v5 == ++v6)
      {
        return result;
      }
    }

    swift_beginAccess();
    sub_182023298(v6, &v9);
    v15 = v10;
    v13 = v11;
    v14 = v12;
    swift_endAccess();
    sub_181F8C28C(&v15);
    return sub_181F8C2E0(&v13);
  }

  return result;
}

uint64_t sub_181F8BB34(char a1)
{
  v2 = v1;
  if (qword_1EA837248 != -1)
  {
    swift_once();
  }

  v4 = sub_182AD2698();
  __swift_project_value_buffer(v4, qword_1EA843418);
  v5 = sub_182AD2678();
  v6 = sub_182AD3898();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *&v15 = v8;
    *v7 = 136315650;
    v9 = sub_182AD3BF8();
    v11 = sub_181C64FFC(v9, v10, &v15);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    *(v7 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v15);
    *(v7 + 22) = 2080;
    *(v7 + 24) = sub_181C64FFC(0x676E6970706F7473, 0xEE0072656D697420, &v15);
    _os_log_impl(&dword_181A37000, v5, v6, "%s %s %s", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v8, -1, -1);
    MEMORY[0x1865DF520](v7, -1, -1);
  }

  *(v2 + 57) = 1;
  if (a1)
  {
    swift_beginAccess();
    *(v2 + 64) = MEMORY[0x1E69E7CC0];
  }

  swift_beginAccess();
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  __swift_mutable_project_boxed_opaque_existential_1(v2 + 16, v12);
  (*(v13 + 8))(v12, v13);
  result = swift_endAccess();
  if (a1)
  {
    v16 = &type metadata for TimerNullBackend;
    v17 = &off_1EEF9D340;
    swift_beginAccess();
    __swift_destroy_boxed_opaque_existential_1((v2 + 16));
    sub_181F3CF20(&v15, v2 + 16);
    return swift_endAccess();
  }

  return result;
}

uint64_t sub_181F8BDB8(unsigned __int8 a1)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = 0;
    v6 = (v3 + 32);
    while (1)
    {
      v7 = *v6;
      v6 += 56;
      if (v7 == a1)
      {
        break;
      }

      if (v4 == ++v5)
      {
        return 0;
      }
    }

    if (v5)
    {
      swift_beginAccess();
      sub_182084BBC(0, v5);
      swift_endAccess();
    }
  }

  return 0;
}