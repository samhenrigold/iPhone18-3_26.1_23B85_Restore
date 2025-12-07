uint64_t sub_1AC5F2F78(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA68, &qword_1AC7A7B28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604BF8;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_723;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F3498(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC10, &qword_1AC7A7D88);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604560;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_712;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F39B8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC08, &qword_1AC7A7D80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604494;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_679;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognizer();

    a3 = v31;
    sub_1AC5EDC90(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F3ED8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC00, &qword_1AC7A7D78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604444;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_668;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v39;
    type metadata accessor for LSRAssetInventory();

    a3 = v31;
    v23 = sub_1AC6B7258(v37, v19, a3, v22, sub_1AC604458, v21);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F4400(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA68, &qword_1AC7A7B28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604BF8;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_657;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v39;
    type metadata accessor for LSRAssetInventory();

    a3 = v31;
    v23 = sub_1AC6B7258(v37, v19, a3, v22, sub_1AC5D2638, v21);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F4928(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA68, &qword_1AC7A7B28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604BF8;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_646;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v39;
    type metadata accessor for LSRAssetInventory();

    a3 = v31;
    v23 = sub_1AC6B7258(v37, v19, a3, v22, sub_1AC5D2638, v21);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F4E50(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBE0, &qword_1AC7A7D40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC6043C0;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_635;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC6043D4, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F5378(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB60, &unk_1AC7A7CA0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC604258;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_568;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC5C1B5C, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F58A0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBD0, &qword_1AC7A7D28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC604328;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_601;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for LSRAssets();

    a3 = v30;
    v22 = sub_1AC6F30F4(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F5DC8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBC0, &qword_1AC7A7D10);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC6042D8;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_590;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for LSRAssets();

    a3 = v30;
    v22 = sub_1AC6F30F4(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F62F0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBA0, &qword_1AC7A7CE8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC604284;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_579;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for LSRAssets();

    a3 = v30;
    v22 = sub_1AC6F30F4(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F6818(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB58, &qword_1AC7A7C88);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC604204;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_534;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for LSRAssets();

    a3 = v30;
    v22 = sub_1AC6F30F4(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F6D40(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB50, &qword_1AC7A7C78);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC6041B0;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_523;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC6041C4, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F7268(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB28, &unk_1AC7A7C40);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC604148;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_512;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC60415C, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F7790(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB20, &qword_1AC7A7C30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC6040F4;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_501;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC604108, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F7CB8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAF0, &qword_1AC7A7BF8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC6040A0;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_490;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC6040B4, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F81E0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAD0, &qword_1AC7A7BD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC60404C;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_479;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC604060, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F8708(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA68, &qword_1AC7A7B28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC604020;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_468;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC5D2610, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F8C30(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAC8, &qword_1AC7A7BC0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC603FCC;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_457;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC603FE0, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F9158(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v35 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAC0, &qword_1AC7A7BB0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v32 - v11;
  v13 = *(v9 + 16);
  v37 = a1;
  v34 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v36 = v10;
  v15 = swift_allocObject();
  v33 = *(v9 + 32);
  v33(v15 + ((v14 + 16) & ~v14), v12, v8);
  v45 = sub_1AC603F78;
  v46 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v42 = 1107296256;
  v43 = sub_1AC6E9230;
  v44 = &block_descriptor_424;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v32 = v40;
  sub_1AC79FC68();
  v38 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v40 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v40, v35);
    os_unfair_lock_unlock(v20);

    v34(v12, v37, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v33(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v40;
    type metadata accessor for LocalSpeechRecognitionService();

    a3 = v32;
    sub_1AC64027C(v38, v19, a3, v22, sub_1AC603F8C, v21);
    v24 = v23;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v25 = sub_1AC79FDE8();
    __swift_project_value_buffer(v25, qword_1ED9386C8);
    if (v24)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v27 = sub_1AC79FDC8();
  v28 = sub_1AC7A05F8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v39 = v30;
    *v29 = 136315138;
    aBlock = 0;
    v42 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v42 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v38, v19);

    v31 = sub_1AC5CFE74(aBlock, v42, &v39);

    *(v29 + 4) = v31;
    _os_log_impl(&dword_1AC5BC000, v27, v28, "Failed precondition: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1B26EAB10](v30, -1, -1);
    MEMORY[0x1B26EAB10](v29, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F9680(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAA8, &unk_1AC7A7B80);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC603F24;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_379;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARSpeechRecognitionAudioBuffer();

    a3 = v30;
    v22 = sub_1AC5D1ED0(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5F9BA8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAA0, &qword_1AC7A7B70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC603ED0;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_368;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARLanguageDetector();

    a3 = v30;
    v22 = sub_1AC71C4D0(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FA0D0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA68, &qword_1AC7A7B28);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604BF8;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_311;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v39;
    type metadata accessor for EARTranscriptionEvaluator();

    a3 = v31;
    v23 = sub_1AC710C24(v37, v19, a3, v22, sub_1AC5D2638, v21);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FA5F8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA48, &unk_1AC7A7B00);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC603E64;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_300;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    v22 = v39;
    type metadata accessor for EARFullPayloadCorrector();

    a3 = v31;
    v23 = sub_1AC753FC0(v37, v19, a3, v22, sub_1AC603E78, v21);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FAB20(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA20, &qword_1AC7A7AD8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC603E10;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_266;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EAREuclid();

    a3 = v31;
    sub_1AC755804(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FB048(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA08, &qword_1AC7A7AB8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC603D6C;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_255;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EAREuclid();

    a3 = v31;
    sub_1AC755804(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FB570(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA00, &qword_1AC7A7AA8);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC603D18;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_244;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EAREuclid();

    a3 = v31;
    sub_1AC755804(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FBA98(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v34 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9F0, &qword_1AC7A7A90);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v31 - v11;
  v13 = *(v9 + 16);
  v36 = a1;
  v33 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v35 = v10;
  v15 = swift_allocObject();
  v32 = *(v9 + 32);
  v32(v15 + ((v14 + 16) & ~v14), v12, v8);
  v44 = sub_1AC604C00;
  v45 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_1AC6E9230;
  v43 = &block_descriptor_233;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v31 = v39;
  sub_1AC79FC68();
  v37 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v39 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v39, v34);
    os_unfair_lock_unlock(v20);

    v33(v12, v36, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v32(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EAREuclid();

    a3 = v31;
    sub_1AC755804(v37, v19, a3);
    v23 = v22;

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v24 = sub_1AC79FDE8();
    __swift_project_value_buffer(v24, qword_1ED9386C8);
    if (v23)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v26 = sub_1AC79FDC8();
  v27 = sub_1AC7A05F8();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v38 = v29;
    *v28 = 136315138;
    aBlock = 0;
    v41 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v41 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v37, v19);

    v30 = sub_1AC5CFE74(aBlock, v41, &v38);

    *(v28 + 4) = v30;
    _os_log_impl(&dword_1AC5BC000, v26, v27, "Failed precondition: %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x1B26EAB10](v29, -1, -1);
    MEMORY[0x1B26EAB10](v28, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FBFC0(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9E8, &qword_1AC7A7A70);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC603BF0;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_198;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARLanguageDetector();

    a3 = v30;
    v22 = sub_1AC71C4D0(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FC4E8(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t *a5)
{
  v33 = a5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B0, &unk_1AC7A7A30);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = *(v9 + 16);
  v35 = a1;
  v32 = v13;
  v13(v12, a1, v8);
  v14 = *(v9 + 80);
  v34 = v10;
  v15 = swift_allocObject();
  v31 = *(v9 + 32);
  v31(v15 + ((v14 + 16) & ~v14), v12, v8);
  v43 = sub_1AC601568;
  v44 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v40 = 1107296256;
  v41 = sub_1AC6E9230;
  v42 = &block_descriptor_168;
  v16 = _Block_copy(&aBlock);

  v17 = [a2 remoteObjectProxyWithErrorHandler_];
  _Block_release(v16);
  sub_1AC7A0828();
  swift_unknownObjectRelease();
  sub_1AC5CF764(0, &qword_1ED937298, 0x1E69E58C0);
  swift_dynamicCast();
  v30 = v38;
  sub_1AC79FC68();
  v36 = sub_1AC7A0838();
  v19 = v18;

  if (v19)
  {
    v38 = MEMORY[0x1E69E7CC0];
    v20 = *(a3[16] + 16);

    os_unfair_lock_lock(v20);
    sub_1AC5D1B54(&v38, v33);
    os_unfair_lock_unlock(v20);

    v32(v12, v35, v8);
    v21 = swift_allocObject();
    *(v21 + 16) = a3;
    v31(v21 + ((v14 + 24) & ~v14), v12, v8);
    type metadata accessor for EARLanguageDetector();

    a3 = v30;
    v22 = sub_1AC71C4D0(v36, v19, a3);

    if (off_1ED937D60 != -1)
    {
      swift_once();
    }

    v23 = sub_1AC79FDE8();
    __swift_project_value_buffer(v23, qword_1ED9386C8);
    if (v22)
    {
    }
  }

  else
  {
    __break(1u);
  }

  v25 = sub_1AC79FDC8();
  v26 = sub_1AC7A05F8();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v37 = v28;
    *v27 = 136315138;
    aBlock = 0;
    v40 = 0xE000000000000000;
    sub_1AC7A09C8();

    aBlock = 0xD00000000000002ALL;
    v40 = 0x80000001AC7B55B0;
    MEMORY[0x1B26E8C40](v36, v19);

    v29 = sub_1AC5CFE74(aBlock, v40, &v37);

    *(v27 + 4) = v29;
    _os_log_impl(&dword_1AC5BC000, v25, v26, "Failed precondition: %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x1B26EAB10](v28, -1, -1);
    MEMORY[0x1B26EAB10](v27, -1, -1);
  }

  else
  {

    result = swift_bridgeObjectRelease_n();
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC5FCA10(void *a1)
{
  v1 = a1;
  v2 = OUTLINED_FUNCTION_89();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  return sub_1AC7A01C8();
}

uint64_t sub_1AC5FCA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1AC5D1E4C(a1, v53, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v54)
  {
    goto LABEL_6;
  }

  sub_1AC5D1E4C(v53, v52, &unk_1EB56C620, &unk_1AC7A7A00);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!OUTLINED_FUNCTION_205(v10, v11, v12, v10, v13, v14, v15, v16, v38, v40, v42))
  {
    __swift_destroy_boxed_opaque_existential_0(v52);
LABEL_6:
    LOBYTE(v51) = sub_1AC600858();
    v29 = OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_111_0(v29, v30, v31, v32, v33, v34, v35, v36, v38, v40, v42, v43, v44, AssociatedTypeWitness, v46, v47, v48, v49, v50, v51);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v53, &unk_1EB56C620);
  }

  v39 = a7;
  v41 = a3;
  sub_1AC5D9384(&v51, &v46);
  v18 = v49;
  v17 = v50;
  __swift_project_boxed_opaque_existential_1(&v46, v49);
  v19 = *(v17 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(&v42);
  OUTLINED_FUNCTION_163();
  v19(v18, v17);
  if (v7)
  {
    __swift_deallocate_boxed_opaque_existential_0Tm(&v42);
    __swift_destroy_boxed_opaque_existential_0(&v46);
    __swift_destroy_boxed_opaque_existential_0(v52);
    sub_1AC5C71B8(v53, &unk_1EB56C620);
    *&v51 = v7;
    v20 = OUTLINED_FUNCTION_180();
    OUTLINED_FUNCTION_111_0(v20, v21, v22, v23, v24, v25, v26, v27, v39, v41, v42, v43, v44, AssociatedTypeWitness, v46, v47, v48, v49, v50, v51);
    return sub_1AC7A01C8();
  }

  v37 = sub_1AC600858();
  sub_1AC5C71B8(&v42, &unk_1EB56C620);
  v42 = v37;
  OUTLINED_FUNCTION_180();
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(&v46);
  __swift_destroy_boxed_opaque_existential_0(v52);
  return sub_1AC5C71B8(v53, &unk_1EB56C620);
}

uint64_t sub_1AC5FCCD8(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600658();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC50, &qword_1AC7A7DC8);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600658();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC50, &qword_1AC7A7DC8);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FCF7C(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v15, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v16)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v15, v14, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v14);
LABEL_5:
    sub_1AC5FF12C(a1);
    *&v13 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC10, &qword_1AC7A7D88);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v15, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v13, v10);
  v2 = v11;
  v3 = v12;
  __swift_project_boxed_opaque_existential_1(v10, v11);
  v4 = *(v3 + 24);
  v9[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v9);
  v4(v2, v3);
  sub_1AC5FF12C(v9);
  v8 = v7;
  sub_1AC5C71B8(v9, &unk_1EB56C620);
  v9[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BC10, &qword_1AC7A7D88);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v10);
  __swift_destroy_boxed_opaque_existential_0(v14);
  return sub_1AC5C71B8(v15, &unk_1EB56C620);
}

uint64_t sub_1AC5FD1DC(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v16, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v17)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v16, v15, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
LABEL_5:
    *&v14 = sub_1AC5FF644(a1);
    *(&v14 + 1) = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBA0, &qword_1AC7A7CE8);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v16, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v14, v11);
  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1(v11, v12);
  v4 = *(v3 + 24);
  v10[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v10);
  v4(v2, v3);
  v7 = sub_1AC5FF644(v10);
  v9 = v8;
  sub_1AC5C71B8(v10, &unk_1EB56C620);
  v10[0] = v7;
  v10[1] = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBA0, &qword_1AC7A7CE8);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v11);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return sub_1AC5C71B8(v16, &unk_1EB56C620);
}

uint64_t sub_1AC5FD464(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600658();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB58, &qword_1AC7A7C88);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600658();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB58, &qword_1AC7A7C88);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FD708(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v16, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v17)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v16, v15, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v15);
LABEL_5:
    sub_1AC5FFA1C(a1, v14);
    v5 = v14[0];
    v11 = v14[0];
    sub_1AC5CFBB8(*&v14[0], *(&v14[0] + 1));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB28, &unk_1AC7A7C40);
    sub_1AC7A01D8();
    sub_1AC5C28A8(v5, *(&v5 + 1));
    return sub_1AC5C71B8(v16, &unk_1EB56C620);
  }

  sub_1AC5D9384(v14, &v11);
  v2 = v12;
  v3 = v13;
  __swift_project_boxed_opaque_existential_1(&v11, v12);
  v4 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(&v8);
  v4(v2, v3);
  sub_1AC5FFA1C(&v8, &v10);
  sub_1AC5C71B8(&v8, &unk_1EB56C620);
  v7 = v10;
  v8 = v10;
  sub_1AC5CFBB8(v10, *(&v10 + 1));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB28, &unk_1AC7A7C40);
  sub_1AC7A01D8();
  sub_1AC5C28A8(v7, *(&v7 + 1));
  __swift_destroy_boxed_opaque_existential_0(&v11);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return sub_1AC5C71B8(v16, &unk_1EB56C620);
}

uint64_t sub_1AC5FD9A0(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v18, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v19)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v18, v17, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v17);
LABEL_5:
    *&v16 = sub_1AC5FFB88(a1);
    BYTE8(v16) = v5 & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB20, &qword_1AC7A7C30);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v18, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v16, v13);
  v2 = v14;
  v3 = v15;
  __swift_project_boxed_opaque_existential_1(v13, v14);
  v4 = *(v3 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(&v10);
  v4(v2, v3);
  v7 = sub_1AC5FFB88(&v10);
  v9 = v8;
  sub_1AC5C71B8(&v10, &unk_1EB56C620);
  v10 = v7;
  v11 = v9 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB20, &qword_1AC7A7C30);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v13);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return sub_1AC5C71B8(v18, &unk_1EB56C620);
}

uint64_t sub_1AC5FDC38(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v13, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v14)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v13, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v12);
LABEL_5:
    *&v11 = sub_1AC6004D0(a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAA8, &unk_1AC7A7B80);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v13, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v11, v8);
  v2 = v9;
  v3 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  v4 = *(v3 + 24);
  v7[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v7);
  v4(v2, v3);
  v6 = sub_1AC6004D0(v7);
  sub_1AC5C71B8(v7, &unk_1EB56C620);
  v7[0] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAA8, &unk_1AC7A7B80);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v8);
  __swift_destroy_boxed_opaque_existential_0(v12);
  return sub_1AC5C71B8(v13, &unk_1EB56C620);
}

uint64_t sub_1AC5FDE90(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600658();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA48, &unk_1AC7A7B00);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600658();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA48, &unk_1AC7A7B00);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FE134(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600858();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA20, &qword_1AC7A7AD8);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600858();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA20, &qword_1AC7A7AD8);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FE3D8(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600658();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA08, &qword_1AC7A7AB8);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600658();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA08, &qword_1AC7A7AB8);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FE67C(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600858();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA00, &qword_1AC7A7AA8);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600858();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BA00, &qword_1AC7A7AA8);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FEB38(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v12, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v13)
  {
    goto LABEL_5;
  }

  sub_1AC5D1E4C(v12, v11, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9B8, &unk_1AC7AF120);
  if (!swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v11);
LABEL_5:
    *&v10 = sub_1AC600858();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9E8, &qword_1AC7A7A70);
    sub_1AC7A01D8();
    return sub_1AC5C71B8(v12, &unk_1EB56C620);
  }

  sub_1AC5D9384(&v10, v7);
  v1 = v8;
  v2 = v9;
  __swift_project_boxed_opaque_existential_1(v7, v8);
  v3 = *(v2 + 24);
  v6[3] = swift_getAssociatedTypeWitness();
  __swift_allocate_boxed_opaque_existential_0Tm(v6);
  v3(v1, v2);
  v5 = sub_1AC600858();
  sub_1AC5C71B8(v6, &unk_1EB56C620);
  v6[0] = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B9E8, &qword_1AC7A7A70);
  sub_1AC7A01D8();
  __swift_destroy_boxed_opaque_existential_0(v7);
  __swift_destroy_boxed_opaque_existential_0(v11);
  return sub_1AC5C71B8(v12, &unk_1EB56C620);
}

uint64_t sub_1AC5FEDDC(uint64_t a1)
{
  v3 = type metadata accessor for EARSpeechRecognitionAudioBuffer();
  sub_1AC5D1E4C(a1, v14, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v4 = v13;
    v5 = sub_1AC604360(&unk_1EB56AD88, 255, type metadata accessor for EARSpeechRecognitionAudioBuffer, &unk_1AC7B3750);
    sub_1AC6EB2E4(v3, v13, v3, v5, v6, v7, v8, v9, v11, v12, v13, v14[0], v14[1], v14[2], v14[3], v15, v16, v17, v18, v19);

    if (v1)
    {
      return sub_1AC5C71B8(v14, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v14, &unk_1EB56C620);
      return v15;
    }
  }

  else
  {
    sub_1AC5C71B8(v14, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC5FEFA4(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v13, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v3 = v17;
  v4 = dynamic_cast_existential_1_conditional(MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E8158]);
  if (!v4)
  {

LABEL_6:
    sub_1AC5C71B8(v13, &unk_1EB56C620);
    return sub_1AC600B90(a1);
  }

  sub_1AC6EB2E4(v4, v3, v4, v5, v6, v7, v8, v9, v11, v12, v13[0], v13[1], v13[2], v13[3], v14, v15, v16, v17, v18, v19);

  if (v1)
  {
    return sub_1AC5C71B8(v13, &unk_1EB56C620);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
  swift_dynamicCast();
  sub_1AC5C71B8(v13, &unk_1EB56C620);
  return v14;
}

uint64_t sub_1AC5FF12C(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v15, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v3 = v14;
  v4 = dynamic_cast_existential_1_conditional(MEMORY[0x1E69E63B0], MEMORY[0x1E69E63B0], MEMORY[0x1E69E8158]);
  if (!v4)
  {

LABEL_7:
    sub_1AC5C71B8(v15, &unk_1EB56C620);
    return sub_1AC600D74(a1);
  }

  sub_1AC6EB2E4(v4, v14, v4, v5, v6, v7, v8, v9, v11, v12, v13, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v15[5], v15[6], v15[7]);

  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
    swift_dynamicCast();
  }

  return sub_1AC5C71B8(v15, &unk_1EB56C620);
}

uint64_t sub_1AC5FF2B4(uint64_t a1)
{
  v3 = type metadata accessor for LSRAssetInventory();
  sub_1AC5D1E4C(a1, v14, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v4 = v13;
    v5 = sub_1AC604360(&qword_1EB56BBD8, 255, type metadata accessor for LSRAssetInventory, &unk_1AC7AC404);
    sub_1AC6EB2E4(v3, v13, v3, v5, v6, v7, v8, v9, v11, v12, v13, v14[0], v14[1], v14[2], v14[3], v15, v16, v17, v18, v19);

    if (v1)
    {
      return sub_1AC5C71B8(v14, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v14, &unk_1EB56C620);
      return v15;
    }
  }

  else
  {
    sub_1AC5C71B8(v14, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC5FF47C(uint64_t a1)
{
  v3 = type metadata accessor for LSRAssets();
  sub_1AC5D1E4C(a1, v14, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v4 = v13;
    v5 = sub_1AC604360(&unk_1EB56ACE0, 255, type metadata accessor for LSRAssets, &unk_1AC7AF794);
    sub_1AC6EB2E4(v3, v13, v3, v5, v6, v7, v8, v9, v11, v12, v13, v14[0], v14[1], v14[2], v14[3], v15, v16, v17, v18, v19);

    if (v1)
    {
      return sub_1AC5C71B8(v14, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v14, &unk_1EB56C620);
      return v15;
    }
  }

  else
  {
    sub_1AC5C71B8(v14, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC5FF644(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B930, &qword_1AC7A72C0);
  sub_1AC5D1E4C(a1, v29, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v4 = v32;
    v5 = dynamic_cast_existential_1_conditional(v3, v3, MEMORY[0x1E69E8158]);
    if (v5)
    {
      v11 = v6;
      sub_1AC6EB2E4(v5, v4, v5, v6, v7, v8, v9, v10, v23, v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v29[3], v30, v31);
      v13 = v12;

      if (!v1)
      {
        v24 = v13;
        v25 = v11;
        v14 = &unk_1EB56D420;
        v15 = &qword_1AC7AF0B0;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
        swift_dynamicCast();
        sub_1AC5C71B8(v29, &unk_1EB56C620);
        return v30;
      }

      return sub_1AC5C71B8(v29, &unk_1EB56C620);
    }

    v16 = dynamic_cast_existential_1_conditional(v3, v3, &protocol descriptor for SomeOptionalDistributedActor);
    if (v16)
    {
      v18 = v16;
      v19 = v17;
      v27 = v16;
      v28 = v17;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v24);
      sub_1AC6EB564(v4, v18, v19, boxed_opaque_existential_0Tm);

      if (!v1)
      {
        v14 = &unk_1EB56BA10;
        v15 = &unk_1AC7A7AC0;
        goto LABEL_13;
      }

      __swift_deallocate_boxed_opaque_existential_0Tm(&v24);
      return sub_1AC5C71B8(v29, &unk_1EB56C620);
    }
  }

  sub_1AC5C71B8(v29, &unk_1EB56C620);
  result = sub_1AC600EC4(a1);
  if (v1)
  {
    return result;
  }

  v30 = result;
  v31 = v22;
  return v30;
}

uint64_t sub_1AC5FF860(uint64_t a1)
{
  v3 = type metadata accessor for EARSpeechRecognizer();
  sub_1AC5D1E4C(a1, v15, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v5 = v14;
    v6 = sub_1AC604360(&qword_1EB56AE98, v4, type metadata accessor for EARSpeechRecognizer, &unk_1AC7A7994);
    sub_1AC6EB2E4(v3, v14, v3, v6, v7, v8, v9, v10, v12, v13, v14, v15[0], v15[1], v15[2], v15[3], v16, v17, v18, v19, v20);

    if (v1)
    {
      return sub_1AC5C71B8(v15, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v15, &unk_1EB56C620);
      return v16;
    }
  }

  else
  {
    sub_1AC5C71B8(v15, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC5FFA1C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  sub_1AC5D1E4C(a1, v17, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (!swift_dynamicCast())
  {
    goto LABEL_7;
  }

  v5 = v16;
  v6 = dynamic_cast_existential_1_conditional(MEMORY[0x1E6969080], MEMORY[0x1E6969080], MEMORY[0x1E69E8158]);
  if (!v6)
  {

LABEL_7:
    sub_1AC5C71B8(v17, &unk_1EB56C620);
    return sub_1AC600F9C(a1, a2);
  }

  sub_1AC6EB2E4(v6, v16, v6, v7, v8, v9, v10, v11, v13, v14, v15, v16, v17[0], v17[1], v17[2], v17[3], v17[4], v17[5], v17[6], v17[7]);

  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
    swift_dynamicCast();
  }

  return sub_1AC5C71B8(v17, &unk_1EB56C620);
}

uint64_t sub_1AC5FFB88(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB18, &qword_1AC7A7C28);
  sub_1AC5D1E4C(a1, v29, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v4 = v32;
    v5 = dynamic_cast_existential_1_conditional(v3, v3, MEMORY[0x1E69E8158]);
    if (v5)
    {
      v11 = v6;
      sub_1AC6EB2E4(v5, v4, v5, v6, v7, v8, v9, v10, v23, v24, v25, v26, v27, v28, v29[0], v29[1], v29[2], v29[3], v30, v31);
      v13 = v12;

      if (!v1)
      {
        v24 = v13;
        v25 = v11;
        v14 = &unk_1EB56D420;
        v15 = &qword_1AC7AF0B0;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
        swift_dynamicCast();
        sub_1AC5C71B8(v29, &unk_1EB56C620);
        return v30;
      }

      return sub_1AC5C71B8(v29, &unk_1EB56C620);
    }

    v16 = dynamic_cast_existential_1_conditional(v3, v3, &protocol descriptor for SomeOptionalDistributedActor);
    if (v16)
    {
      v18 = v16;
      v19 = v17;
      v27 = v16;
      v28 = v17;
      boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(&v24);
      sub_1AC6EB564(v4, v18, v19, boxed_opaque_existential_0Tm);

      if (!v1)
      {
        v14 = &unk_1EB56BA10;
        v15 = &unk_1AC7A7AC0;
        goto LABEL_13;
      }

      __swift_deallocate_boxed_opaque_existential_0Tm(&v24);
      return sub_1AC5C71B8(v29, &unk_1EB56C620);
    }
  }

  sub_1AC5C71B8(v29, &unk_1EB56C620);
  result = sub_1AC601080(a1);
  if (v1)
  {
    return result;
  }

  v30 = result;
  LOBYTE(v31) = v22 & 1;
  return v30;
}

uint64_t sub_1AC5FFDB0(uint64_t a1)
{
  v3 = type metadata accessor for EAREuclid();
  sub_1AC5D1E4C(a1, v14, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v4 = v13;
    v5 = sub_1AC604360(&unk_1EB56AD10, 255, type metadata accessor for EAREuclid, &unk_1AC7B33DC);
    sub_1AC6EB2E4(v3, v13, v3, v5, v6, v7, v8, v9, v11, v12, v13, v14[0], v14[1], v14[2], v14[3], v15, v16, v17, v18, v19);

    if (v1)
    {
      return sub_1AC5C71B8(v14, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v14, &unk_1EB56C620);
      return v15;
    }
  }

  else
  {
    sub_1AC5C71B8(v14, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC5FFF78(uint64_t a1)
{
  v3 = type metadata accessor for EARLanguageDetector();
  sub_1AC5D1E4C(a1, v14, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v4 = v13;
    v5 = sub_1AC604360(&qword_1EB56B9C8, 255, type metadata accessor for EARLanguageDetector, &unk_1AC7B17E4);
    sub_1AC6EB2E4(v3, v13, v3, v5, v6, v7, v8, v9, v11, v12, v13, v14[0], v14[1], v14[2], v14[3], v15, v16, v17, v18, v19);

    if (v1)
    {
      return sub_1AC5C71B8(v14, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v14, &unk_1EB56C620);
      return v15;
    }
  }

  else
  {
    sub_1AC5C71B8(v14, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC600140(uint64_t a1)
{
  v3 = type metadata accessor for EARFullPayloadCorrector();
  sub_1AC5D1E4C(a1, v14, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v4 = v13;
    v5 = sub_1AC604360(&qword_1EB56BA38, 255, type metadata accessor for EARFullPayloadCorrector, &unk_1AC7B2F28);
    sub_1AC6EB2E4(v3, v13, v3, v5, v6, v7, v8, v9, v11, v12, v13, v14[0], v14[1], v14[2], v14[3], v15, v16, v17, v18, v19);

    if (v1)
    {
      return sub_1AC5C71B8(v14, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v14, &unk_1EB56C620);
      return v15;
    }
  }

  else
  {
    sub_1AC5C71B8(v14, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC600308(uint64_t a1)
{
  v3 = type metadata accessor for EARTranscriptionEvaluator();
  sub_1AC5D1E4C(a1, v14, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v4 = v13;
    v5 = sub_1AC604360(&qword_1EB56BA70, 255, type metadata accessor for EARTranscriptionEvaluator, &unk_1AC7B101C);
    sub_1AC6EB2E4(v3, v13, v3, v5, v6, v7, v8, v9, v11, v12, v13, v14[0], v14[1], v14[2], v14[3], v15, v16, v17, v18, v19);

    if (v1)
    {
      return sub_1AC5C71B8(v14, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v14, &unk_1EB56C620);
      return v15;
    }
  }

  else
  {
    sub_1AC5C71B8(v14, &unk_1EB56C620);
    return sub_1AC600E2C();
  }
}

uint64_t sub_1AC6004D0(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v15, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v3 = v14;
  v4 = dynamic_cast_existential_1_conditional(MEMORY[0x1E69E76D8], MEMORY[0x1E69E76D8], MEMORY[0x1E69E8158]);
  if (!v4)
  {

LABEL_6:
    sub_1AC5C71B8(v15, &unk_1EB56C620);
    return sub_1AC601154(a1);
  }

  sub_1AC6EB2E4(v4, v14, v4, v5, v6, v7, v8, v9, v11, v12, v13, v14, v15[0], v15[1], v15[2], v15[3], v15[4], v16, v17, v18);

  if (v1)
  {
    return sub_1AC5C71B8(v15, &unk_1EB56C620);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
  swift_dynamicCast();
  sub_1AC5C71B8(v15, &unk_1EB56C620);
  return v16;
}

uint64_t sub_1AC600658()
{
  OUTLINED_FUNCTION_173();
  v6 = sub_1AC5CF764(0, v4, v5);
  sub_1AC5D1E4C(v3, v33, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v7 = v32;
    v8 = dynamic_cast_existential_1_conditional(v6, v6, MEMORY[0x1E69E8158]);
    if (v8)
    {
      OUTLINED_FUNCTION_178(v8, v9, v10, v11, v12, v13, v14, v15, v27, v28, v29, v30, v31, v32, v33[0], v33[1], v33[2], v33[3], v33[4], v34);
      v17 = v16;

      if (!v0)
      {
        v27 = v17;
        v28 = &unk_1AC7A7A00;
        v18 = &unk_1EB56D420;
        v19 = &qword_1AC7AF0B0;
LABEL_13:
        __swift_instantiateConcreteTypeFromMangledNameV2(v18, v19);
        swift_dynamicCast();
        sub_1AC5C71B8(v33, &unk_1EB56C620);
        return v34;
      }

      return sub_1AC5C71B8(v33, &unk_1EB56C620);
    }

    v20 = dynamic_cast_existential_1_conditional(v6, v6, &protocol descriptor for SomeOptionalDistributedActor);
    if (v20)
    {
      v22 = v20;
      v30 = v20;
      v31 = v21;
      v23 = v21;
      v24 = __swift_allocate_boxed_opaque_existential_0Tm(&v27);
      sub_1AC6EB564(v7, v22, v23, v24);

      if (!v1)
      {
        v18 = &unk_1EB56BA10;
        v19 = &unk_1AC7A7AC0;
        goto LABEL_13;
      }

      __swift_deallocate_boxed_opaque_existential_0Tm(&v27);
      return sub_1AC5C71B8(v33, &unk_1EB56C620);
    }
  }

  sub_1AC5C71B8(v33, &unk_1EB56C620);
  v26 = OUTLINED_FUNCTION_195();
  result = v2(v26);
  if (v0)
  {
    return result;
  }

  return result;
}

uint64_t sub_1AC600858()
{
  OUTLINED_FUNCTION_173();
  v5 = OUTLINED_FUNCTION_130_0(v3, v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  sub_1AC5D1E4C(v2, v23, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (!swift_dynamicCast())
  {
    goto LABEL_6;
  }

  v8 = v22;
  v9 = dynamic_cast_existential_1_conditional(v7, v7, MEMORY[0x1E69E8158]);
  if (!v9)
  {

LABEL_6:
    sub_1AC5C71B8(v23, &unk_1EB56C620);
    v18 = OUTLINED_FUNCTION_195();
    return v1(v18);
  }

  OUTLINED_FUNCTION_178(v9, v10, v11, v12, v13, v14, v15, v16, v19, v20, v21, v22, v23[0], v23[1], v23[2], v23[3], v23[4], v24, v25, v26);

  if (v0)
  {
    return sub_1AC5C71B8(v23, &unk_1EB56C620);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
  swift_dynamicCast();
  sub_1AC5C71B8(v23, &unk_1EB56C620);
  return v24;
}

uint64_t sub_1AC6009E0(uint64_t a1)
{
  v3 = type metadata accessor for EARLanguageDetectorAudioBuffer();
  sub_1AC5D1E4C(a1, v14, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D460, &unk_1AC7A7A40);
  if (swift_dynamicCast())
  {
    v4 = v13;
    v5 = sub_1AC604360(&qword_1EB56B9C0, 255, type metadata accessor for EARLanguageDetectorAudioBuffer, &unk_1AC7ACFA0);
    sub_1AC6EB2E4(v3, v13, v3, v5, v6, v7, v8, v9, v11, v12, v13, v14[0], v14[1], v14[2], v14[3], v15, v16, v17, v18, v19);

    if (v1)
    {
      return sub_1AC5C71B8(v14, &unk_1EB56C620);
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D420, &qword_1AC7AF0B0);
      swift_dynamicCast();
      sub_1AC5C71B8(v14, &unk_1EB56C620);
      return v15;
    }
  }

  else
  {
    sub_1AC5C71B8(v14, &unk_1EB56C620);
    return sub_1AC601330(a1);
  }
}

uint64_t sub_1AC600B90(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  if (swift_dynamicCast() && v4)
  {
    return v3;
  }

  sub_1AC6015E8();
  swift_allocError();
  *v2 = 1;
  return swift_willThrow();
}

uint64_t sub_1AC600C50()
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_109();
  sub_1AC5D1E4C(v0, v1, v2, &unk_1AC7A7A00);
  v3 = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v5 = OUTLINED_FUNCTION_203();
  if (!OUTLINED_FUNCTION_51_1(v5, v6, v7, v8, v9, v10, v11, v12, v17, v18, v19, v20, v21, v22) || (result = v23) == 0)
  {
    v14 = sub_1AC6015E8();
    v15 = OUTLINED_FUNCTION_188(&type metadata for NSXPCActorError, v14);
    return OUTLINED_FUNCTION_84(v15, v16);
  }

  return result;
}

uint64_t sub_1AC600CDC()
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_109();
  sub_1AC5D1E4C(v2, v3, v4, &unk_1AC7A7A00);
  v5 = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
  if (!OUTLINED_FUNCTION_51_1(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23, v24) || (result = v25) == 0)
  {
    v16 = sub_1AC6015E8();
    v17 = OUTLINED_FUNCTION_188(&type metadata for NSXPCActorError, v16);
    return OUTLINED_FUNCTION_84(v17, v18);
  }

  return result;
}

uint64_t sub_1AC600D74(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v3, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  result = swift_dynamicCast();
  if (!result)
  {
    sub_1AC6015E8();
    swift_allocError();
    *v2 = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1AC600E2C()
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_109();
  sub_1AC5D1E4C(v2, v3, v4, &unk_1AC7A7A00);
  v5 = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v7 = v0(v1);
  if (!OUTLINED_FUNCTION_51_1(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23, v24) || (result = v25) == 0)
  {
    v16 = sub_1AC6015E8();
    v17 = OUTLINED_FUNCTION_188(&type metadata for NSXPCActorError, v16);
    return OUTLINED_FUNCTION_84(v17, v18);
  }

  return result;
}

uint64_t sub_1AC600EC4(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v5, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B930, &qword_1AC7A72C0);
  if (swift_dynamicCast() && v4 != 1)
  {
    return v3;
  }

  sub_1AC6015E8();
  swift_allocError();
  *v1 = 1;
  return swift_willThrow();
}

uint64_t sub_1AC600F9C@<X0>(uint64_t a1@<X0>, __int128 *a2@<X8>)
{
  sub_1AC5D1E4C(a1, v7, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  if (swift_dynamicCast())
  {
    v4 = *(&v6 + 1);
    result = v6;
    if (*(&v6 + 1) >> 60 != 15)
    {
      *a2 = v6;
      return result;
    }
  }

  else
  {
    result = 0;
    v4 = 0xF000000000000000;
  }

  sub_1AC604184(result, v4);
  sub_1AC6015E8();
  swift_allocError();
  *v5 = 1;
  return swift_willThrow();
}

uint64_t sub_1AC601080(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v4, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB18, &qword_1AC7A7C28);
  if (swift_dynamicCast())
  {
    return v3;
  }

  sub_1AC6015E8();
  swift_allocError();
  *v2 = 1;
  return swift_willThrow();
}

uint64_t sub_1AC601154(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v4, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  if (swift_dynamicCast())
  {
    return v3;
  }

  sub_1AC6015E8();
  swift_allocError();
  *v2 = 1;
  return swift_willThrow();
}

uint64_t sub_1AC60120C()
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_109();
  sub_1AC5D1E4C(v0, v1, v2, &unk_1AC7A7A00);
  v3 = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  v5 = OUTLINED_FUNCTION_203();
  if (OUTLINED_FUNCTION_51_1(v5, v6, v7, v8, v9, v10, v11, v12, v17, v18, v19, v20, v21, v22))
  {
    return v23;
  }

  v14 = sub_1AC6015E8();
  v15 = OUTLINED_FUNCTION_188(&type metadata for NSXPCActorError, v14);
  return OUTLINED_FUNCTION_84(v15, v16);
}

uint64_t sub_1AC601298()
{
  OUTLINED_FUNCTION_79_0();
  OUTLINED_FUNCTION_109();
  sub_1AC5D1E4C(v2, v3, v4, &unk_1AC7A7A00);
  v5 = OUTLINED_FUNCTION_77();
  __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v0);
  if (OUTLINED_FUNCTION_51_1(v7, v8, v9, v10, v11, v12, v13, v14, v19, v20, v21, v22, v23, v24))
  {
    return v25;
  }

  v16 = sub_1AC6015E8();
  v17 = OUTLINED_FUNCTION_188(&type metadata for NSXPCActorError, v16);
  return OUTLINED_FUNCTION_84(v17, v18);
}

uint64_t sub_1AC601330(uint64_t a1)
{
  sub_1AC5D1E4C(a1, v3, &unk_1EB56C620, &unk_1AC7A7A00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  type metadata accessor for EARLanguageDetectorAudioBuffer();
  if (swift_dynamicCast())
  {
    return v3[5];
  }

  sub_1AC6015E8();
  swift_allocError();
  *v2 = 1;
  return swift_willThrow();
}

unint64_t sub_1AC6013F0()
{
  result = qword_1EB56B980;
  if (!qword_1EB56B980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B980);
  }

  return result;
}

unint64_t sub_1AC601444()
{
  result = qword_1EB56B988;
  if (!qword_1EB56B988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56B988);
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t sub_1AC6015E8()
{
  result = qword_1EB56D470;
  if (!qword_1EB56D470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56D470);
  }

  return result;
}

id sub_1AC60163C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&qword_1EB56AE98, a2, type metadata accessor for EARSpeechRecognizer, &unk_1AC7A7994);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v28 = sub_1AC604AB4;
  v29 = v13;
  v24 = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1AC6EA1A0;
  v27 = &block_descriptor_689;
  v14 = _Block_copy(&v24);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v28 = sub_1AC604AB8;
  v29 = v18;
  v24 = MEMORY[0x1E69E9820];
  v25 = 1107296256;
  v26 = sub_1AC6EA1A0;
  v27 = &block_descriptor_696;
  v19 = _Block_copy(&v24);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v24, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v27)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v24, v27);
    sub_1AC60398C(a5, v20, a2, *v21, &qword_1EB56AE98, v22, type metadata accessor for EARSpeechRecognizer, &unk_1AC7A7994);
    __swift_destroy_boxed_opaque_existential_0(&v24);
  }

  else
  {
    sub_1AC5C71B8(&v24, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC6019B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&qword_1EB56BBD8, 255, type metadata accessor for LSRAssetInventory, &unk_1AC7AC404);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_612;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_619;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &qword_1EB56BBD8, 255, type metadata accessor for LSRAssetInventory, &unk_1AC7AC404);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC601D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&unk_1ED937D48, 255, type metadata accessor for LocalSpeechRecognitionService, &unk_1AC7A9AA0);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_434;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_441;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &unk_1ED937D48, 255, type metadata accessor for LocalSpeechRecognitionService, &unk_1AC7A9AA0);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC6020C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&unk_1EB56ACE0, 255, type metadata accessor for LSRAssets, &unk_1AC7AF794);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_544;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_551;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &unk_1EB56ACE0, 255, type metadata accessor for LSRAssets, &unk_1AC7AF794);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC602444(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&qword_1EB56B9C0, 255, type metadata accessor for EARLanguageDetectorAudioBuffer, &unk_1AC7ACFA0);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_345;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_352;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &qword_1EB56B9C0, 255, type metadata accessor for EARLanguageDetectorAudioBuffer, &unk_1AC7ACFA0);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC6027C8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&unk_1EB56AD88, 255, type metadata accessor for EARSpeechRecognitionAudioBuffer, &unk_1AC7B3750);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_389;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_396;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &unk_1EB56AD88, 255, type metadata accessor for EARSpeechRecognitionAudioBuffer, &unk_1AC7B3750);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC602B4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&qword_1EB56B9C8, 255, type metadata accessor for EARLanguageDetector, &unk_1AC7B17E4);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC602ED0;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_177;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC603BD0;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC602EE8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_183;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &qword_1EB56B9C8, 255, type metadata accessor for EARLanguageDetector, &unk_1AC7B17E4);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC602F00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&qword_1EB56BA70, 255, type metadata accessor for EARTranscriptionEvaluator, &unk_1AC7B101C);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_321;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_328;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &qword_1EB56BA70, 255, type metadata accessor for EARTranscriptionEvaluator, &unk_1AC7B101C);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC603284(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&qword_1EB56BA38, 255, type metadata accessor for EARFullPayloadCorrector, &unk_1AC7B2F28);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_277;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_284;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &qword_1EB56BA38, 255, type metadata accessor for EARFullPayloadCorrector, &unk_1AC7B2F28);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

id sub_1AC603608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_1AC604360(&unk_1EB56AD10, 255, type metadata accessor for EAREuclid, &unk_1AC7B33DC);
  v11 = [a1 interruptionHandler];
  if (v11)
  {
    v12 = swift_allocObject();
    *(v12 + 16) = v11;
    v11 = sub_1AC604B18;
  }

  else
  {
    v12 = 0;
  }

  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a1;
  v13[4] = a2;
  v13[5] = v10;
  v13[6] = a3;
  v13[7] = a4;
  v13[8] = v11;
  v13[9] = v12;
  v27 = sub_1AC604AB4;
  v28 = v13;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_210;
  v14 = _Block_copy(&v23);
  swift_unknownObjectRetain();

  v15 = a1;

  [v15 setInterruptionHandler_];
  _Block_release(v14);
  v16 = [v15 invalidationHandler];
  if (v16)
  {
    v17 = swift_allocObject();
    *(v17 + 16) = v16;
    v16 = sub_1AC604B18;
  }

  else
  {
    v17 = 0;
  }

  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = v15;
  v18[4] = a2;
  v18[5] = v10;
  v18[6] = a3;
  v18[7] = a4;
  v18[8] = v16;
  v18[9] = v17;
  v27 = sub_1AC604AB8;
  v28 = v18;
  v23 = MEMORY[0x1E69E9820];
  v24 = 1107296256;
  v25 = sub_1AC6EA1A0;
  v26 = &block_descriptor_217;
  v19 = _Block_copy(&v23);

  v20 = v15;

  swift_unknownObjectRetain();

  [v20 setInvalidationHandler_];
  _Block_release(v19);
  sub_1AC5D1E4C(a5 + 56, &v23, &qword_1EB56B9D0, &unk_1AC7AF0F0);
  if (v26)
  {
    v21 = __swift_project_boxed_opaque_existential_1(&v23, v26);
    sub_1AC60398C(a5, v20, a2, *v21, &unk_1EB56AD10, 255, type metadata accessor for EAREuclid, &unk_1AC7B33DC);
    __swift_destroy_boxed_opaque_existential_0(&v23);
  }

  else
  {
    sub_1AC5C71B8(&v23, &qword_1EB56B9D0);
  }

  return [v20 activate];
}

void sub_1AC60398C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t *a5, uint64_t a6, void (*a7)(uint64_t), uint64_t a8)
{
  sub_1AC604360(a5, a6, a7, a8);
  v9 = [a2 _xpcConnection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56D500, &qword_1AC7A7A50);
  v10 = swift_allocObject();
  v11 = MEMORY[0x1E69E6530];
  *(v10 + 16) = xmmword_1AC7A6D00;
  v12 = MEMORY[0x1E69E65A8];
  *(v10 + 56) = v11;
  *(v10 + 64) = v12;
  *(v10 + 32) = v9;
  v13 = sub_1AC79FF98();
  v15 = v14;
  swift_unknownObjectRelease();
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3_0();
    swift_once();
  }

  v16 = sub_1AC79FDE8();
  __swift_project_value_buffer(v16, qword_1ED9386C8);

  oslog = sub_1AC79FDC8();
  v17 = sub_1AC7A05E8();

  if (os_log_type_enabled(oslog, v17))
  {
    v18 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v18 = 136446466;
    v19 = sub_1AC5CFE74(v13, v15, &v24);

    *(v18 + 4) = v19;
    *(v18 + 12) = 2082;
    swift_getObjectType();
    v20 = sub_1AC7A0F78();
    v22 = sub_1AC5CFE74(v20, v21, &v24);

    *(v18 + 14) = v22;
    _os_log_impl(&dword_1AC5BC000, oslog, v17, "[%{public}s] is connection to remote %{public}s", v18, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_70_1();
    MEMORY[0x1B26EAB10]();
    OUTLINED_FUNCTION_70_1();
    MEMORY[0x1B26EAB10]();
  }

  else
  {
  }
}

uint64_t sub_1AC603C04(void *a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_130_0(a1, a2);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_167(v5);
  return sub_1AC5FCA10(a1);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

uint64_t __swift_deallocate_boxed_opaque_existential_0Tm(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x1B26EAB10);
  }

  return result;
}

uint64_t sub_1AC604184(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AC5C28A8(result, a2);
  }

  return result;
}

uint64_t sub_1AC604360(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_173Tm()
{

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  if (*(v0 + 64))
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 80, 7);
}

uint64_t sub_1AC6046A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = OUTLINED_FUNCTION_130_0(a1, a2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
  OUTLINED_FUNCTION_167(v12);
  OUTLINED_FUNCTION_67_0();
  return sub_1AC5FCA68(a1, v13, v14, a4, a5, a2, a3);
}

uint64_t sub_1AC604748(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t))
{
  v5 = OUTLINED_FUNCTION_130_0(a1, a2);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
  OUTLINED_FUNCTION_167(v7);
  OUTLINED_FUNCTION_67_0();

  return a4(a1);
}

uint64_t objectdestroy_164Tm(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80();
  v4 = *(v3 + 80);
  v5 = (v4 + 16) & ~v4;
  v6 = *(v3 + 64);
  (*(v3 + 8))(v2 + v5);

  return MEMORY[0x1EEE6BDD0](v2, v5 + v6, v4 | 7);
}

uint64_t objectdestroy_170Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_40();
  v5 = v4;
  v6 = *(v4 + 80);
  v7 = (v6 + 24) & ~v6;
  v9 = *(v8 + 64);

  (*(v5 + 8))(v2 + v7, v3);

  return MEMORY[0x1EEE6BDD0](v2, v7 + v9, v6 | 7);
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t result)
{
  *(v2 - 152) = v1;
  *(v2 - 144) = result;
  *(v2 - 184) = MEMORY[0x1E69E9820];
  return result;
}

__n128 OUTLINED_FUNCTION_20_0(__n128 *a1)
{
  *(v3 + 56) = a1;
  result = *(v3 + 24);
  a1[1].n128_u64[0] = v1;
  a1[1].n128_u64[1] = v2;
  a1[2] = result;
  a1[3].n128_u64[0] = v4;
  return result;
}

void OUTLINED_FUNCTION_39_0()
{
  __swift_destroy_boxed_opaque_existential_0(v0);

  JUMPOUT(0x1B26EAB10);
}

void OUTLINED_FUNCTION_46_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_47_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return sub_1AC5D1B54(&a9, v9);
}

uint64_t OUTLINED_FUNCTION_48_0()
{
}

uint64_t OUTLINED_FUNCTION_52()
{
  v2 = *(*v0 + 16);

  return sub_1AC5C1578(v2);
}

uint64_t OUTLINED_FUNCTION_62_0(uint64_t result)
{
  v1[2] = v3;
  v1[3] = v2;
  v1[4] = result;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_1()
{

  return sub_1AC61C258();
}

uint64_t OUTLINED_FUNCTION_86_1(_OWORD *a1)
{
  sub_1AC5C3968(a1, (v1 + 32));

  return sub_1AC5C3978();
}

uint64_t OUTLINED_FUNCTION_91_0()
{
}

uint64_t OUTLINED_FUNCTION_96_1()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_97()
{
}

uint64_t OUTLINED_FUNCTION_106_0(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;

  return sub_1AC79FC78();
}

uint64_t OUTLINED_FUNCTION_112_0()
{

  return sub_1AC79FCA8();
}

uint64_t OUTLINED_FUNCTION_128()
{

  return sub_1AC61C258();
}

uint64_t OUTLINED_FUNCTION_129_1(uint64_t a1)
{

  return sub_1AC61C258();
}

uint64_t OUTLINED_FUNCTION_135(_OWORD *a1, _OWORD *a2)
{
  sub_1AC5C3968(a1, a2);

  return sub_1AC5C3978();
}

uint64_t OUTLINED_FUNCTION_136(uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_139(uint64_t a1)
{

  return sub_1AC79FCA8();
}

uint64_t OUTLINED_FUNCTION_145(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{

  return sub_1AC5D1E4C(v4 + 32, v5 - 136, a3, a4);
}

uint64_t OUTLINED_FUNCTION_159()
{
}

uint64_t OUTLINED_FUNCTION_160()
{

  return swift_bridgeObjectRelease_n();
}

uint64_t OUTLINED_FUNCTION_162()
{
}

uint64_t OUTLINED_FUNCTION_175_0(uint64_t a1)
{

  return sub_1AC79FCA8();
}

uint64_t OUTLINED_FUNCTION_176(uint64_t a1, ...)
{

  return sub_1AC7A01D8();
}

uint64_t *OUTLINED_FUNCTION_177(uint64_t a1)
{
  *(v1 - 88) = a1;

  return __swift_allocate_boxed_opaque_existential_0Tm((v1 - 112));
}

void OUTLINED_FUNCTION_178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{

  sub_1AC6EB2E4(a1, v20, a1, a2, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20);
}

uint64_t OUTLINED_FUNCTION_179()
{
}

uint64_t OUTLINED_FUNCTION_181(uint64_t a1)
{
  v1[2] = v3;
  v1[8] = a1;
  v1[3] = v2;
}

uint64_t OUTLINED_FUNCTION_186(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{

  return swift_getObjectType();
}

uint64_t OUTLINED_FUNCTION_187_0()
{
}

uint64_t OUTLINED_FUNCTION_188(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_203()
{

  return sub_1AC5CF764(0, v1, v0);
}

uint64_t OUTLINED_FUNCTION_204(uint64_t a1)
{
}

uint64_t OUTLINED_FUNCTION_205(uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_206(uint64_t a1)
{
  *(v1 + 24) = v2;
  *(v1 + 16) = a1;
}

uint64_t OUTLINED_FUNCTION_207()
{
}

uint64_t OUTLINED_FUNCTION_208(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33)
{

  return sub_1AC79FF58();
}

uint64_t OUTLINED_FUNCTION_209()
{
}

uint64_t sub_1AC60536C(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_1AC60F480(*(a1 + 16), 0);
  OUTLINED_FUNCTION_71_0();
  v8 = sub_1AC61AD08(v4, v5, v6, v7);
  OUTLINED_FUNCTION_90_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22);
  if (a1 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

char *sub_1AC6053DC(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1AC60F700(*(a1 + 16), 0, &qword_1EB56C018, &unk_1AC7A8480, MEMORY[0x1E6969770]);
  v4 = *(sub_1AC79FB18() - 8);
  v5 = sub_1AC61AE5C(&v7, &v3[(*(v4 + 80) + 32) & ~*(v4 + 80)], v2, a1);
  sub_1AC5CA508(v7);
  if (v5 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1AC6054C8(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_1AC60F504(*(a1 + 16), 0);
  OUTLINED_FUNCTION_71_0();
  v8 = sub_1AC61B0F4(v4, v5, v6, v7);
  OUTLINED_FUNCTION_90_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22);
  if (a1 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

void *sub_1AC605538(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1AC60F700(*(a1 + 16), 0, &qword_1EB56BF88, &qword_1AC7A8398, type metadata accessor for SpeechRecognizerSupportedFeatures);
  type metadata accessor for SpeechRecognizerSupportedFeatures(0);
  OUTLINED_FUNCTION_89_0();
  v5 = sub_1AC61B420(v15, v3 + v4, v2, a1);
  OUTLINED_FUNCTION_90_0(v5, v6, v7, v8, v9, v10, v11, v12, v14, v15[0], v15[1], v15[2], v15[3], v15[4]);
  if (a1 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1AC605610(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    goto LABEL_4;
  }

  sub_1AC60F688(*(a1 + 16), 0);
  OUTLINED_FUNCTION_71_0();
  v8 = sub_1AC61B634(v4, v5, v6, v7);
  OUTLINED_FUNCTION_90_0(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22);
  if (a1 != v3)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v1;
}

uint64_t sub_1AC605680(unint64_t a1)
{
  if (a1 >> 62)
  {
    return sub_1AC7A08E8();
  }

  else
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

uint64_t static AssetInventory.reservedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC605C78();
}

uint64_t sub_1AC60572C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 24) = v4;
  *(v2 + 32) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC60582C()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC6B5EC4();
}

uint64_t sub_1AC6058B8()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (!v0)
  {
    *(v5 + 56) = v3;
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC6059C4()
{
  OUTLINED_FUNCTION_85();
  v1 = sub_1AC6053DC(*(v0 + 56));

  OUTLINED_FUNCTION_82();

  return v2(v1);
}

uint64_t sub_1AC605A30()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();

  v1 = *(v0 + 48);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v2 = sub_1AC79FDE8();
  __swift_project_value_buffer(v2, qword_1ED9386C8);
  v3 = OUTLINED_FUNCTION_86();
  v4 = sub_1AC79FDC8();
  sub_1AC7A05F8();

  if (OUTLINED_FUNCTION_151_0())
  {
    OUTLINED_FUNCTION_150();
    v5 = OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_149(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v6);
    OUTLINED_FUNCTION_59(&dword_1AC5BC000, v7, v8, "Failed to connect with remote process: %@");
    sub_1AC61BBF0(v5, &unk_1EB56C630);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_149_0();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1AC605B58()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 32);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v2 = sub_1AC79FDE8();
  __swift_project_value_buffer(v2, qword_1ED9386C8);
  v3 = OUTLINED_FUNCTION_86();
  v4 = sub_1AC79FDC8();
  sub_1AC7A05F8();

  if (OUTLINED_FUNCTION_151_0())
  {
    OUTLINED_FUNCTION_150();
    v5 = OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_149(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v6);
    OUTLINED_FUNCTION_59(&dword_1AC5BC000, v7, v8, "Failed to connect with remote process: %@");
    sub_1AC61BBF0(v5, &unk_1EB56C630);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_149_0();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1AC605C94()
{
  OUTLINED_FUNCTION_85();
  if (qword_1EB56B498 != -1)
  {
    swift_once();
  }

  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC60C804();
}

uint64_t sub_1AC605D4C()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  OUTLINED_FUNCTION_82();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1AC605E38(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1AC605E5C, 0, 0);
}

uint64_t sub_1AC605E5C()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_18_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_119_0(v1);

  return v4(v3);
}

uint64_t sub_1AC605F14()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC60605C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC606074()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_18_0();
  v7 = v2;
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v1 + 48) = v3;
  *v3 = v4;
  v3[1] = sub_1AC606140;
  v5 = *(v1 + 16);

  return v7(v5, v0);
}

uint64_t sub_1AC606140()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC606220(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC606238()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_18_0();
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 40) = v1;
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_119_0(v1);

  return v4(v3);
}

uint64_t sub_1AC6062F0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 48) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t static AssetInventory.reserve(locale:)()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 32) = v1;
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC605C78();
}

uint64_t sub_1AC606470()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 48) = v4;
  *(v2 + 56) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC606570()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_30(&unk_1AC7A7E68);
  v8 = v3;
  v4 = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_179_0(v4);
  *v5 = v6;
  v5[1] = sub_1AC606638;

  return v8(&unk_1AC7A7E60, v2);
}

uint64_t sub_1AC606638()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 80) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_82();

    return v12(v3 & 1);
  }
}

uint64_t sub_1AC606778()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 56);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  type metadata accessor for SFSpeechError(0);
  OUTLINED_FUNCTION_142_0();
  if (swift_dynamicCast())
  {

    swift_willThrow();
    OUTLINED_FUNCTION_55_1();
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3(&off_1ED937D60);
    }

    v3 = sub_1AC79FDE8();
    __swift_project_value_buffer(v3, qword_1ED9386C8);
    v4 = OUTLINED_FUNCTION_86();
    v5 = sub_1AC79FDC8();
    sub_1AC7A05F8();

    if (OUTLINED_FUNCTION_151_0())
    {
      OUTLINED_FUNCTION_150();
      v6 = OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_149(5.7779e-34);
      v7 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v7);
      OUTLINED_FUNCTION_59(&dword_1AC5BC000, v8, v9, "Failed to connect with remote process: %@");
      sub_1AC61BBF0(v6, &unk_1EB56C630);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    else
    {
    }

    OUTLINED_FUNCTION_55_1();
  }

  OUTLINED_FUNCTION_149_0();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1AC606908()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();

  v1 = *(v0 + 80);
  *(v0 + 16) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
  type metadata accessor for SFSpeechError(0);
  OUTLINED_FUNCTION_142_0();
  if (swift_dynamicCast())
  {

    swift_willThrow();
    OUTLINED_FUNCTION_55_1();
  }

  else
  {
    if (off_1ED937D60 != -1)
    {
      OUTLINED_FUNCTION_3(&off_1ED937D60);
    }

    v3 = sub_1AC79FDE8();
    __swift_project_value_buffer(v3, qword_1ED9386C8);
    v4 = OUTLINED_FUNCTION_86();
    v5 = sub_1AC79FDC8();
    sub_1AC7A05F8();

    if (OUTLINED_FUNCTION_151_0())
    {
      OUTLINED_FUNCTION_150();
      v6 = OUTLINED_FUNCTION_97_0();
      OUTLINED_FUNCTION_149(5.7779e-34);
      v7 = _swift_stdlib_bridgeErrorToNSError();
      OUTLINED_FUNCTION_118(v7);
      OUTLINED_FUNCTION_59(&dword_1AC5BC000, v8, v9, "Failed to connect with remote process: %@");
      sub_1AC61BBF0(v6, &unk_1EB56C630);
      OUTLINED_FUNCTION_96_0();
      OUTLINED_FUNCTION_77_1();
    }

    else
    {
    }

    OUTLINED_FUNCTION_55_1();
  }

  OUTLINED_FUNCTION_149_0();

  return v12(v10, v11, v12, v13, v14, v15, v16, v17);
}

uint64_t sub_1AC606AAC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC606B4C;

  return sub_1AC6B63C0();
}

uint64_t sub_1AC606B4C()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t static AssetInventory.release(reservedLocale:)()
{
  OUTLINED_FUNCTION_85();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);

  return sub_1AC605C78();
}

uint64_t sub_1AC606D08()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v4;
  *(v2 + 40) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC606E08()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[2];
  v2 = swift_task_alloc();
  v0[6] = v2;
  *(v2 + 16) = v1;
  OUTLINED_FUNCTION_30(&unk_1AC7A7E68);
  v6 = v3;
  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_1AC606ED4;

  return v6(&unk_1AC7A7E80, v2);
}

uint64_t sub_1AC606ED4()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 64) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    OUTLINED_FUNCTION_82();

    return v12(v3 & 1);
  }
}

uint64_t sub_1AC607010()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 40);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v2 = sub_1AC79FDE8();
  __swift_project_value_buffer(v2, qword_1ED9386C8);
  v3 = OUTLINED_FUNCTION_86();
  v4 = sub_1AC79FDC8();
  sub_1AC7A05F8();

  if (OUTLINED_FUNCTION_151_0())
  {
    OUTLINED_FUNCTION_150();
    v5 = OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_149(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v6);
    OUTLINED_FUNCTION_59(&dword_1AC5BC000, v7, v8, "Failed to connect with remote process: %@");
    sub_1AC61BBF0(v5, &unk_1EB56C630);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_149_0();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1AC607138()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();

  v1 = *(v0 + 64);
  if (off_1ED937D60 != -1)
  {
    OUTLINED_FUNCTION_3(&off_1ED937D60);
  }

  v2 = sub_1AC79FDE8();
  __swift_project_value_buffer(v2, qword_1ED9386C8);
  v3 = OUTLINED_FUNCTION_86();
  v4 = sub_1AC79FDC8();
  sub_1AC7A05F8();

  if (OUTLINED_FUNCTION_151_0())
  {
    OUTLINED_FUNCTION_150();
    v5 = OUTLINED_FUNCTION_97_0();
    OUTLINED_FUNCTION_149(5.7779e-34);
    v6 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_118(v6);
    OUTLINED_FUNCTION_59(&dword_1AC5BC000, v7, v8, "Failed to connect with remote process: %@");
    sub_1AC61BBF0(v5, &unk_1EB56C630);
    OUTLINED_FUNCTION_96_0();
    OUTLINED_FUNCTION_77_1();
  }

  else
  {
  }

  OUTLINED_FUNCTION_55_1();
  OUTLINED_FUNCTION_149_0();

  return v11(v9, v10, v11, v12, v13, v14, v15, v16);
}

uint64_t sub_1AC607274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC607314;

  return sub_1AC6B68C0();
}

uint64_t sub_1AC607314()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 32) = v3 & 1;
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1AC607448()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_44();
  return v1();
}

uint64_t AssetInventory.Status.hashValue.getter()
{
  v1 = *v0;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC607520(uint64_t a1)
{
  v2 = *v1;
  sub_1AC7A0E78();
  MEMORY[0x1B26E9A40](v2);
  return sub_1AC7A0EC8();
}

uint64_t static AssetInventory.status(forModules:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC6075D4(uint64_t a1)
{
  v2 = 0;
  v3 = v1[3];
  v4 = *(v3 + 16);
  v5 = v3 + 32;
  v6 = MEMORY[0x1E69E7CC0];
  v17 = v5;
LABEL_2:
  v1[5] = v6;
  v7 = (v5 + 16 * v2);
  while (v4 != v2)
  {
    if (v2 >= v4)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return MEMORY[0x1EEE6DBF8](a1);
    }

    if (__OFADD__(v2, 1))
    {
      goto LABEL_16;
    }

    v8 = *v7;
    v7 += 2;
    ObjectType = swift_getObjectType();
    a1 = dynamic_cast_existential_1_conditional(v8, ObjectType, &protocol descriptor for InternalSpeechModule);
    ++v2;
    if (a1)
    {
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_153_1();
        v6 = v10;
      }

      if (*(v6 + 16) >= *(v6 + 24) >> 1)
      {
        sub_1AC60DAF8();
        v6 = v11;
      }

      OUTLINED_FUNCTION_174_0();
      v5 = v17;
      goto LABEL_2;
    }
  }

  v12 = swift_task_alloc();
  v1[6] = v12;
  *(v12 + 16) = v6;
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  v1[7] = v13;
  *v13 = v14;
  v13[1] = sub_1AC60779C;
  OUTLINED_FUNCTION_164_0();

  return MEMORY[0x1EEE6DBF8](a1);
}

uint64_t sub_1AC60779C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC60789C()
{
  OUTLINED_FUNCTION_85();
  if (*(v0 + 112))
  {
    sub_1AC608A00(*(v0 + 40), &qword_1EB56BFA8, &qword_1AC7A83B8);
    sub_1AC608C18();
    *(v0 + 64) = v1;

    v2 = swift_task_alloc();
    v3 = OUTLINED_FUNCTION_179_0(v2);
    *v3 = v4;
    OUTLINED_FUNCTION_132_1(v3);

    return static AssetInventory.reservedLocales.getter();
  }

  else
  {
    v6 = *(v0 + 16);

    *v6 = 0;
    OUTLINED_FUNCTION_44();

    return v7();
  }
}

uint64_t sub_1AC60798C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC607A74()
{
  OUTLINED_FUNCTION_169();
  v2 = v1[8];
  sub_1AC608DF4();
  sub_1AC6096F8(v3, v2);
  OUTLINED_FUNCTION_108_0();

  v5 = v1[5];
  if (v0)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v25 = MEMORY[0x1E69E7CC0];
    v8 = *(v5 + 16);
    v9 = v5 + 40;
LABEL_3:
    v23 = v7;
    v1[11] = v7;
    v10 = (v9 + 16 * v6);
    while (v8 != v6)
    {
      if (v6 >= *(v5 + 16))
      {
        __break(1u);
        return MEMORY[0x1EEE6DBF8](v4);
      }

      v11 = v10 + 2;
      ++v6;
      v12 = *v10;
      ObjectType = swift_getObjectType();
      v14 = *(v12 + 32);
      swift_unknownObjectRetain();
      v15 = v14(ObjectType, v12);
      v4 = swift_unknownObjectRelease();
      v10 = v11;
      if (v15)
      {
        MEMORY[0x1B26E8CF0](v4);
        if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AC7A0178();
        }

        v4 = sub_1AC7A0198();
        v7 = v25;
        v9 = v5 + 40;
        goto LABEL_3;
      }
    }

    v19 = swift_task_alloc();
    v1[12] = v19;
    *(v19 + 16) = v23;
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    v1[13] = v20;
    *v20 = v21;
    v20[1] = sub_1AC607CC0;
    OUTLINED_FUNCTION_164_0();
    OUTLINED_FUNCTION_115();

    return MEMORY[0x1EEE6DBF8](v4);
  }

  else
  {
    v16 = v1[2];

    *v16 = 1;
    OUTLINED_FUNCTION_44();

    return v17();
  }
}

uint64_t sub_1AC607CC0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC607DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C000, &qword_1AC7A8450);
  v3[12] = v4;
  v3[13] = *(v4 - 8);
  v3[14] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC607EEC, 0, 0);
}

uint64_t sub_1AC607EEC()
{
  v1 = *(v0 + 88);
  v2 = *(v1 + 16);
  if (v2)
  {
    v22 = **(v0 + 80);
    v3 = (v1 + 32);
    v4 = sub_1AC7A0288();
    v21 = v4;
    do
    {
      v6 = *(v0 + 120);
      v5 = *(v0 + 128);
      v23 = *v3;
      v7 = OUTLINED_FUNCTION_134_0();
      __swift_storeEnumTagSinglePayload(v7, v8, v9, v4);
      v10 = swift_allocObject();
      *(v10 + 16) = 0;
      *(v10 + 24) = 0;
      *(v10 + 32) = v23;
      sub_1AC61BB80(v5, v6);
      LODWORD(v6) = __swift_getEnumTagSinglePayload(v6, 1, v4);
      swift_unknownObjectRetain_n();
      v11 = *(v0 + 120);
      if (v6 == 1)
      {
        sub_1AC61BBF0(*(v0 + 120), &qword_1EB56BE70);
      }

      else
      {
        sub_1AC7A0278();
        (*(*(v4 - 8) + 8))(v11, v4);
      }

      if (*(v10 + 16))
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v12 = sub_1AC7A01B8();
        v14 = v13;
        swift_unknownObjectRelease();
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      OUTLINED_FUNCTION_99();
      v15 = swift_allocObject();
      *(v15 + 16) = &unk_1AC7A8468;
      *(v15 + 24) = v10;

      if (v14 | v12)
      {
        v16 = v0 + 16;
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        *(v0 + 32) = v12;
        *(v0 + 40) = v14;
      }

      else
      {
        v16 = 0;
      }

      v17 = *(v0 + 128);
      *(v0 + 48) = 1;
      *(v0 + 56) = v16;
      *(v0 + 64) = v22;
      swift_task_create();

      swift_unknownObjectRelease();

      sub_1AC61BBF0(v17, &qword_1EB56BE70);
      ++v3;
      --v2;
      v4 = v21;
    }

    while (v2);
  }

  sub_1AC7A0208();
  sub_1AC61C1F0(&qword_1EB56C008, &qword_1EB56C000);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 136) = v18;
  *v18 = v19;
  OUTLINED_FUNCTION_72_0(v18);

  return MEMORY[0x1EEE6D8C8](v0 + 152);
}

uint64_t sub_1AC6081FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  v3[18] = v0;

  if (v0)
  {
    (*(v3[13] + 8))(v3[14], v3[12]);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC60830C()
{
  OUTLINED_FUNCTION_150_0();
  OUTLINED_FUNCTION_45();
  v1 = *(v0 + 152);
  if (v1 == 2 || (v1 & 1) == 0)
  {
    v6 = v1 == 2;
    v7 = *(v0 + 72);
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    *v7 = v6;

    OUTLINED_FUNCTION_44();
    OUTLINED_FUNCTION_149_0();

    return v9(v8, v9, v10, v11, v12, v13, v14, v15);
  }

  else
  {
    sub_1AC61C1F0(&qword_1EB56C008, &qword_1EB56C000);
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v0 + 136) = v2;
    *v2 = v3;
    OUTLINED_FUNCTION_72_0(v2);
    OUTLINED_FUNCTION_149_0();

    return MEMORY[0x1EEE6D8C8](v4);
  }
}

uint64_t sub_1AC608444(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  ObjectType = swift_getObjectType();
  v10 = (*(a5 + 40) + **(a5 + 40));
  v8 = swift_task_alloc();
  *(v5 + 24) = v8;
  *v8 = v5;
  v8[1] = sub_1AC60856C;

  return v10(ObjectType, a5);
}

uint64_t sub_1AC60856C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 32) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC608654()
{
  **(v0 + 16) = *(v0 + 32);
  OUTLINED_FUNCTION_44();
  return v1();
}

uint64_t sub_1AC608694(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = OUTLINED_FUNCTION_122_0();
    sub_1AC6314B8(v4, v5, v6);
    v3 = v12;
    v7 = v1 + 32;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
      swift_dynamicCast();
      v12 = v3;
      v9 = *(v3 + 16);
      v8 = *(v3 + 24);
      if (v9 >= v8 >> 1)
      {
        sub_1AC6314B8((v8 > 1), v9 + 1, 1);
        v3 = v12;
      }

      *(v3 + 16) = v9 + 1;
      sub_1AC5C3968(&v11, (v3 + 32 * v9 + 32));
      v7 += 8;
      --v2;
    }

    while (v2);
  }

  return v3;
}

void *sub_1AC608794(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1AC7A08E8();
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v15 = MEMORY[0x1E69E7CC0];
  result = sub_1AC6314B8(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v15;
    do
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = OUTLINED_FUNCTION_161();
        MEMORY[0x1B26E95B0](v8);
      }

      else
      {
        v9 = *(a1 + 8 * v7 + 32);
      }

      sub_1AC5CF764(0, &qword_1EB56AB30, 0x1E69CE8C0);
      swift_dynamicCast();
      OUTLINED_FUNCTION_180_0();
      if (v10)
      {
        OUTLINED_FUNCTION_158_0();
        sub_1AC6314B8(v11, v12, v13);
        v5 = v15;
      }

      ++v7;
      *(v5 + 16) = v1;
      sub_1AC5C3968(&v14, (v5 + 32 * v2 + 32));
    }

    while (v4 != v7);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6088E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1AC6314F8(0, v1, 0);
    v2 = v27;
    do
    {
      v25 = *(a1 + 32);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD88, &qword_1AC7B1D40);
      v4 = OUTLINED_FUNCTION_77();
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
      v9 = OUTLINED_FUNCTION_146_0(v6, v7, v8);
      v17 = OUTLINED_FUNCTION_137_0(v9, v10, v11, v12, v13, v14, v15, v16, v24.n128_i64[0], v24.n128_i64[1], v25, *(&v25 + 1), v26);
      if (v18)
      {
        OUTLINED_FUNCTION_158_0();
        v24 = v19;
        sub_1AC6314F8(v20, v21, v22);
        v17 = v24;
        v2 = v27;
      }

      OUTLINED_FUNCTION_171_1(v17);
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1AC608A00(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v31 = MEMORY[0x1E69E7CC0];
    sub_1AC6310EC(0, v3, 0);
    v4 = v31;
    do
    {
      v29 = *(a1 + 32);
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
      v8 = OUTLINED_FUNCTION_77();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
      v13 = OUTLINED_FUNCTION_146_0(v10, v11, v12);
      v21 = OUTLINED_FUNCTION_137_0(v13, v14, v15, v16, v17, v18, v19, v20, v28.n128_i64[0], v28.n128_i64[1], v29, *(&v29 + 1), v30);
      if (v22)
      {
        OUTLINED_FUNCTION_158_0();
        v28 = v23;
        sub_1AC6310EC(v24, v25, v26);
        v21 = v28;
        v4 = v31;
      }

      OUTLINED_FUNCTION_171_1(v21);
      --v3;
    }

    while (v3);
  }

  return v4;
}

uint64_t sub_1AC608AFC(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = OUTLINED_FUNCTION_122_0();
    sub_1AC6316C0(v5, v6, v7);
    v8 = v1 + 40;
    v4 = v20;
    do
    {
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE58, &qword_1AC7A8250);
      v10 = OUTLINED_FUNCTION_77();
      __swift_instantiateConcreteTypeFromMangledNameV2(v10, v11);
      swift_dynamicCast();
      OUTLINED_FUNCTION_180_0();
      if (v12)
      {
        OUTLINED_FUNCTION_158_0();
        sub_1AC6316C0(v14, v15, v16);
        v4 = v20;
      }

      v8 += 16;
      *(v4 + 16) = v9;
      v13 = v4 + 16 * v2;
      *(v13 + 32) = v18;
      *(v13 + 40) = v19;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void sub_1AC608C18()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v3 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - v7;
  v31 = MEMORY[0x1E69E7CD0];
  v28 = *(v2 + 16);
  if (v28)
  {
    v9 = 0;
    v27 = v2 + 32;
    v26[1] = v6;
    do
    {
      v10 = *(v27 + 16 * v9);
      ObjectType = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v10, ObjectType, &protocol descriptor for LocaleDependentSpeechModule))
      {
        v13 = v12;
        v30 = v9;
        v14 = swift_getObjectType();
        v15 = v10;
        v16 = *(v13 + 32);
        v29 = v15;
        swift_unknownObjectRetain();
        v17 = *(v16(v14, v13) + 16);
        if (v17)
        {
          OUTLINED_FUNCTION_89_0();
          v26[2] = v18;
          v20 = v18 + v19;
          v22 = *(v21 + 72);
          v23 = *(v21 + 16);
          do
          {
            v23(v8, v20, v3);
            sub_1AC60FB1C(v0, v8);
            v24 = OUTLINED_FUNCTION_161();
            v25(v24);
            v20 += v22;
            --v17;
          }

          while (v17);
        }

        swift_unknownObjectRelease();
        v9 = v30;
      }

      ++v9;
    }

    while (v9 != v28);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC608DF4()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v3 = sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_2_0();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v20 - v8;
  OUTLINED_FUNCTION_10_1();
  sub_1AC61AAD8(v10, v11, MEMORY[0x1E6969780]);
  v12 = OUTLINED_FUNCTION_110_0();
  v20[1] = MEMORY[0x1B26E9020](v12, v3);
  v13 = *(v2 + 16);
  if (v13)
  {
    v16 = *(v5 + 16);
    v14 = v5 + 16;
    v15 = v16;
    OUTLINED_FUNCTION_89_0();
    v20[0] = v2;
    v18 = v2 + v17;
    v19 = *(v14 + 56);
    do
    {
      v15(v0, v18, v3);
      sub_1AC60FB1C(v9, v0);
      (*(v14 - 8))(v9, v3);
      v18 += v19;
      --v13;
    }

    while (v13);
  }

  else
  {
    OUTLINED_FUNCTION_86();
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC608F68(uint64_t a1)
{
  v3 = MEMORY[0x1B26E9020](*(a1 + 16), MEMORY[0x1E69E6530], MEMORY[0x1E69E6540]);
  v14 = v3;
  v10 = *(a1 + 16);
  if (v10)
  {
    v11 = 32;
    do
    {
      OUTLINED_FUNCTION_183_0(v3, *(a1 + v11), v4, v5, v6, v7, v8, v9, v13);
      v3 = sub_1AC6100B0();
      v11 += 8;
      --v10;
    }

    while (v10);

    return v14;
  }

  else
  {
    OUTLINED_FUNCTION_86();
  }

  return v1;
}

uint64_t sub_1AC609114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_185_0();
  v10();
  v11 = OUTLINED_FUNCTION_110_0();
  v19 = MEMORY[0x1B26E9020](v11, a3);
  v15 = *(v5 + 16);
  if (v15)
  {
    v16 = 32;
    do
    {
      sub_1AC610E58(&v18 + 7, *(v5 + v16++), a4, a5, a3, v12, v13, v14, v18, v19);
      --v15;
    }

    while (v15);

    return v19;
  }

  else
  {
    OUTLINED_FUNCTION_86();
  }

  return v6;
}

void sub_1AC6091F8(unint64_t a1)
{
  sub_1AC605680(a1);
  v2 = sub_1AC5CF764(0, &qword_1EB56ABA0, 0x1E6958418);
  sub_1AC61B8BC();
  v3 = OUTLINED_FUNCTION_110_0();
  MEMORY[0x1B26E9020](v3, v2);
  v4 = sub_1AC605680(a1);
  for (i = 0; ; ++i)
  {
    if (v4 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v15 = OUTLINED_FUNCTION_161();
      v6 = MEMORY[0x1B26E95B0](v15);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v6 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v13 = OUTLINED_FUNCTION_183_0(v6, v6, v7, v8, v9, v10, v11, v12, v16);
    sub_1AC610638(v13, v14);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

void sub_1AC6092E8()
{
  OUTLINED_FUNCTION_185_0();
  v2 = sub_1AC61AC1C();
  MEMORY[0x1B26E9020](v1, &type metadata for NormalizingTranscriber.ContentHint, v2);
  v3 = 0;
  v4 = *(v0 + 16);
  while (1)
  {
    if (v4 == v3)
    {

      return;
    }

    if (v3 >= *(v0 + 16))
    {
      break;
    }

    v5 = v3 + 1;
    v6 = *(v0 + 8 * v3 + 32);
    v7 = sub_1AC5D37E0(v6);
    v15 = OUTLINED_FUNCTION_183_0(v7, v8, v9, v10, v11, v12, v13, v14, v16);
    sub_1AC610A6C(v15, v6);
    sub_1AC5D9454(v16);
    v3 = v5;
  }

  __break(1u);
}

void sub_1AC609398()
{
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_185_0();
  v2 = sub_1AC61ABC8();
  v3 = MEMORY[0x1B26E9020](v1, &type metadata for NormalizingTranscriber.TranscriptionOption, v2);
  for (i = *(v0 + 16); i; --i)
  {
    sub_1AC7A0E78();
    OUTLINED_FUNCTION_157_0();
    v5 = sub_1AC7A0EC8() & ~(-1 << *(v3 + 32));
    if (((*(v3 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) >> v5) & 1) == 0)
    {
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      sub_1AC6138E0(v5, isUniquelyReferenced_nonNull_native, &unk_1EB56BDF0, &unk_1AC7A81F8, &type metadata for NormalizingTranscriber.TranscriptionOption);
    }
  }

  OUTLINED_FUNCTION_61_0();
}

uint64_t sub_1AC6094B4()
{
  OUTLINED_FUNCTION_185_0();
  v2 = sub_1AC61AB20();
  v6 = MEMORY[0x1B26E9020](v1, &type metadata for NormalizingTranscriber.ResultAttributeOption, v2);
  v3 = *(v0 + 16);
  if (v3)
  {
    v4 = 32;
    do
    {
      sub_1AC610984();
      ++v4;
      --v3;
    }

    while (v3);

    return v6;
  }

  else
  {
    OUTLINED_FUNCTION_86();
  }

  return v1;
}

uint64_t sub_1AC609578(unint64_t a1)
{
  sub_1AC605680(a1);
  v2 = type metadata accessor for SpeechRecognizerWorker(0);
  sub_1AC61AAD8(&qword_1EB56B418, type metadata accessor for SpeechRecognizerWorker, &unk_1AC7AB214);
  v3 = OUTLINED_FUNCTION_110_0();
  v18 = MEMORY[0x1B26E9020](v3, v2);
  result = sub_1AC605680(a1);
  v5 = result;
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return v18;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v16 = OUTLINED_FUNCTION_161();
      result = MEMORY[0x1B26E95B0](v16);
      v7 = result;
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    v15 = OUTLINED_FUNCTION_183_0(result, v8, v9, v10, v11, v12, v13, v14, v17);
    sub_1AC610C70(v15, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_1AC6096F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1AC79FB18();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v41 = &v30 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  if (*(a1 + 16) < *(a2 + 16))
  {
    return 0;
  }

  v14 = a2 + 56;
  v15 = 1 << *(a2 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(a2 + 56);
  v36 = (v15 + 63) >> 6;
  v34 = v5 + 32;
  v39 = a1 + 56;
  v40 = v5 + 16;
  v18 = (v5 + 8);

  v20 = 0;
  v35 = a2;
  v32 = v12;
  v33 = v5;
  v31 = a2 + 56;
LABEL_7:
  if (v17)
  {
    v21 = v20;
LABEL_12:
    v22 = *(v5 + 72);
    v23 = *(a2 + 48) + v22 * (__clz(__rbit64(v17)) | (v21 << 6));
    v37 = *(v5 + 16);
    v38 = v22;
    v37(v12, v23, v4);
    (*(v5 + 32))(v41, v12, v4);
    if (*(a1 + 16))
    {
      v24 = a1;
      v17 &= v17 - 1;
      sub_1AC61AAD8(&qword_1EB56B468, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
      v25 = sub_1AC79FE48();
      v26 = ~(-1 << *(a1 + 32));
      while (1)
      {
        v27 = v25 & v26;
        if (((*(v39 + (((v25 & v26) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v25 & v26)) & 1) == 0)
        {
          break;
        }

        v37(v8, *(v24 + 48) + v27 * v38, v4);
        sub_1AC61AAD8(&qword_1EB56B460, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
        v28 = sub_1AC79FED8();
        v29 = *v18;
        (*v18)(v8, v4);
        v25 = v27 + 1;
        if (v28)
        {
          result = (v29)(v41, v4);
          v20 = v21;
          a2 = v35;
          a1 = v24;
          v12 = v32;
          v5 = v33;
          v14 = v31;
          goto LABEL_7;
        }
      }
    }

    (*v18)(v41, v4);
    v13 = 0;
LABEL_19:

    return v13;
  }

  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v36)
    {
      v13 = 1;
      goto LABEL_19;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

void sub_1AC609A84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_62();
  if (*(v33 + 16) < *(v32 + 16))
  {
LABEL_20:
    OUTLINED_FUNCTION_61_0();
    return;
  }

  OUTLINED_FUNCTION_78_0();
  v36 = v35 + 56;
  v37 = 1 << *(v35 + 32);
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  else
  {
    v38 = -1;
  }

  v39 = v38 & *(v35 + 56);
  v40 = (v37 + 63) >> 6;
  v41 = v34 + 56;

  v42 = 0;
  v55 = v30;
  if (v39)
  {
LABEL_10:
    if (*(v31 + 16))
    {
      OUTLINED_FUNCTION_57_2();
      v45 = (*(v30 + 48) + ((v42 << 10) | (16 * v44)));
      v47 = *v45;
      v46 = v45[1];
      sub_1AC7A0E78();

      sub_1AC7A0048();
      sub_1AC7A0EC8();
      OUTLINED_FUNCTION_63_0();
      v50 = ~v49;
      while (1)
      {
        v51 = v48 & v50;
        if (((*(v41 + (((v48 & v50) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v48 & v50)) & 1) == 0)
        {
          break;
        }

        v52 = (*(v31 + 48) + 16 * v51);
        if (*v52 != v47 || v52[1] != v46)
        {
          v54 = sub_1AC7A0D38();
          v48 = v51 + 1;
          if ((v54 & 1) == 0)
          {
            continue;
          }
        }

        v30 = v55;
        goto LABEL_10;
      }
    }

    else
    {
LABEL_21:
    }

    goto LABEL_20;
  }

  while (1)
  {
    v43 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      break;
    }

    if (v43 >= v40)
    {
      goto LABEL_21;
    }

    ++v42;
    if (*(v36 + 8 * v43))
    {
      v42 = v43;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1AC609C18()
{
  OUTLINED_FUNCTION_62();
  if (*(v3 + 16) < *(v2 + 16))
  {
LABEL_2:
    OUTLINED_FUNCTION_61_0();
    return;
  }

  OUTLINED_FUNCTION_78_0();
  v6 = 0;
  v7 = 1 << *(v5 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v4 + 56;
  if ((v8 & *(v5 + 56)) != 0)
  {
LABEL_7:
    v10 = v6;
LABEL_11:
    if (*(v1 + 16))
    {
      OUTLINED_FUNCTION_159_0();
      v12 = *(*(v0 + 48) + (v11 | (v10 << 6)));
      sub_1AC7A0E78();
      MEMORY[0x1B26E9A40](v12);
      v13 = sub_1AC7A0EC8();
      v14 = ~(-1 << *(v1 + 32));
      while (1)
      {
        v15 = v13 & v14;
        if (((*(v9 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        v13 = v15 + 1;
        if (*(*(v1 + 48) + v15) == v12)
        {
          v6 = v10;
          goto LABEL_7;
        }
      }
    }

    goto LABEL_2;
  }

  while (1)
  {
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v10 >= ((v7 + 63) >> 6))
    {
      goto LABEL_2;
    }

    ++v6;
    if (*(v5 + 56 + 8 * v10))
    {
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_1AC609D44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a2;
  v3[11] = a3;
  v3[9] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC609DF0, 0, 0);
}

uint64_t sub_1AC609DF0()
{
  result = sub_1AC605680(*(v0 + 88));
  v27 = result;
  if (result)
  {
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v2 = 0;
    v3 = *(v0 + 88);
    v24 = v3 + 32;
    v25 = **(v0 + 80);
    v26 = v3 & 0xC000000000000001;
    do
    {
      if (v26)
      {
        v4 = MEMORY[0x1B26E95B0](v2, *(v0 + 88));
      }

      else
      {
        v4 = *(v24 + 8 * v2);
      }

      v5 = v4;
      v7 = *(v0 + 96);
      v6 = *(v0 + 104);
      v8 = sub_1AC7A0288();
      __swift_storeEnumTagSinglePayload(v6, 1, 1, v8);
      v9 = swift_allocObject();
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = v5;
      v10 = OUTLINED_FUNCTION_77();
      sub_1AC61BB80(v10, v11);
      LODWORD(v7) = __swift_getEnumTagSinglePayload(v7, 1, v8);
      v12 = v5;
      v13 = *(v0 + 96);
      if (v7 == 1)
      {
        sub_1AC61BBF0(*(v0 + 96), &qword_1EB56BE70);
      }

      else
      {
        sub_1AC7A0278();
        (*(*(v8 - 8) + 8))(v13, v8);
      }

      if (v9[2])
      {
        swift_getObjectType();
        swift_unknownObjectRetain();
        v14 = sub_1AC7A01B8();
        v16 = v15;
        swift_unknownObjectRelease();
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      OUTLINED_FUNCTION_99();
      v17 = swift_allocObject();
      *(v17 + 16) = &unk_1AC7A8428;
      *(v17 + 24) = v9;

      if (v16 | v14)
      {
        *(v0 + 16) = 0;
        *(v0 + 24) = 0;
        v18 = v0 + 16;
        *(v0 + 32) = v14;
        *(v0 + 40) = v16;
      }

      else
      {
        v18 = 0;
      }

      ++v2;
      v19 = *(v0 + 104);
      *(v0 + 48) = 1;
      *(v0 + 56) = v18;
      *(v0 + 64) = v25;
      swift_task_create();

      sub_1AC61BBF0(v19, &qword_1EB56BE70);
    }

    while (v27 != v2);
  }

  v20 = **(v0 + 80);
  OUTLINED_FUNCTION_30(&unk_1AC7A8438);
  v28 = v21;
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 112) = v22;
  *v22 = v23;
  v22[1] = sub_1AC60A10C;

  return v28(v0 + 120, v20);
}

void sub_1AC60A10C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v2 = *v1;
  OUTLINED_FUNCTION_18();
  *v3 = v2;

  if (v0)
  {
  }

  else
  {
    OUTLINED_FUNCTION_138();

    MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }
}

uint64_t sub_1AC60A21C()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 120);
  if (v1 == 4)
  {
    LOBYTE(v1) = 3;
  }

  **(v0 + 72) = v1;

  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC60A294(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 152) = a1;
  *(v4 + 160) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1AC60A2B4, 0, 0);
}

uint64_t sub_1AC60A2B4()
{
  OUTLINED_FUNCTION_45();
  objc_opt_self();
  if (qword_1EB56B598 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EB56B598);
  }

  v1 = type metadata accessor for ClientInfo(0);
  __swift_project_value_buffer(v1, qword_1EB56E830);
  v0[21] = sub_1AC79FF58();
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1AC60A408;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFF8, &qword_1AC7A8448);
  v4 = OUTLINED_FUNCTION_80_0(v3);
  v0[11] = 1107296256;
  v0[12] = sub_1AC60A60C;
  v0[13] = &block_descriptor_75;
  v0[14] = v2;
  OUTLINED_FUNCTION_190_0(v4, sel_installationStateForAssetConfig_clientIdentifier_completion_);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AC60A408()
{
  OUTLINED_FUNCTION_85();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC60A4D8()
{
  OUTLINED_FUNCTION_45();
  v6 = v0;
  v1 = *(v0 + 144);

  if (v1 >= 3)
  {
    sub_1AC7A09C8();

    strcpy(v5, "Unknown state ");
    v5[15] = -18;
    *(v0 + 80) = v1;
    v4 = sub_1AC7A0CC8();
    MEMORY[0x1B26E8C40](v4);

    return sub_1AC7A0B78();
  }

  else
  {
    **(v0 + 152) = 3 - v1;
    OUTLINED_FUNCTION_44();

    return v2();
  }
}

uint64_t sub_1AC60A60C(uint64_t a1, uint64_t a2)
{
  v3 = *__swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));

  return sub_1AC70C6B8(v3, a2);
}

uint64_t sub_1AC60A650(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE8, &qword_1AC7A8440);
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC60A71C, 0, 0);
}

uint64_t sub_1AC60A71C()
{
  OUTLINED_FUNCTION_85();
  sub_1AC7A0208();
  *(v0 + 56) = sub_1AC61C1F0(&qword_1EB56BFF0, &qword_1EB56BFE8);
  swift_task_alloc();
  OUTLINED_FUNCTION_100();
  *(v0 + 64) = v1;
  *v1 = v2;
  v1[1] = sub_1AC60A7F0;

  return MEMORY[0x1EEE6D8C8](v0 + 96);
}

uint64_t sub_1AC60A7F0()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_130_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC60A8F8()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 96);
  if (v1 == 4)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    **(v0 + 16) = 4;

    OUTLINED_FUNCTION_44();

    return v2();
  }

  else
  {
    *(v0 + 98) = v1;
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v0 + 80) = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_73_0(v4);

    return MEMORY[0x1EEE6D8C8](v0 + 97);
  }
}

uint64_t sub_1AC60A9E0()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC60AA3C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {
    v7 = OUTLINED_FUNCTION_130_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC60AB44()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 97);
  if (v1 == 4)
  {
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    **(v0 + 16) = *(v0 + 98);

    OUTLINED_FUNCTION_44();

    return v2();
  }

  else
  {
    if (v1 >= *(v0 + 98))
    {
      LOBYTE(v1) = *(v0 + 98);
    }

    *(v0 + 98) = v1;
    swift_task_alloc();
    OUTLINED_FUNCTION_100();
    *(v0 + 80) = v4;
    *v4 = v5;
    OUTLINED_FUNCTION_73_0(v4);

    return MEMORY[0x1EEE6D8C8](v0 + 97);
  }
}

uint64_t sub_1AC60AC38()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t static AssetInventory.assetInstallationRequest(supporting:)()
{
  OUTLINED_FUNCTION_85();
  v1[2] = v2;
  v1[3] = v0;
  v3 = sub_1AC79FB18();
  v1[4] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[5] = v4;
  v1[6] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

void sub_1AC60AD40()
{
  v1 = 0;
  v2 = v0[2];
  v3 = *(v2 + 16);
  v4 = v2 + 32;
  v5 = MEMORY[0x1E69E7CC0];
  v15 = v4;
LABEL_2:
  v0[7] = v5;
  v6 = (v4 + 16 * v1);
  while (v3 != v1)
  {
    if (v1 >= v3)
    {
      __break(1u);
LABEL_16:
      __break(1u);
      return;
    }

    if (__OFADD__(v1, 1))
    {
      goto LABEL_16;
    }

    v7 = *v6;
    v6 += 2;
    ObjectType = swift_getObjectType();
    ++v1;
    if (dynamic_cast_existential_1_conditional(v7, ObjectType, &protocol descriptor for InternalSpeechModule))
    {
      swift_unknownObjectRetain();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        OUTLINED_FUNCTION_153_1();
        v5 = v9;
      }

      if (*(v5 + 16) >= *(v5 + 24) >> 1)
      {
        sub_1AC60DAF8();
        v5 = v10;
      }

      OUTLINED_FUNCTION_174_0();
      v4 = v15;
      goto LABEL_2;
    }
  }

  sub_1AC608A00(v5, &qword_1EB56BFA8, &qword_1AC7A83B8);
  sub_1AC608C18();
  v0[8] = v11;

  v12 = swift_task_alloc();
  v13 = OUTLINED_FUNCTION_179_0(v12);
  *v13 = v14;
  v13[1] = sub_1AC60AEEC;

  static AssetInventory.reservedLocales.getter();
}

uint64_t sub_1AC60AEEC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 80) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC60AFD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  sub_1AC616094();
  v27 = v26;
  *(v22 + 88) = v26;

  *(v22 + 128) = *(v27 + 32);
  OUTLINED_FUNCTION_93_1();
  v30 = v29 & v28;
  if (v30)
  {
    v31 = 0;
LABEL_6:
    *(v22 + 96) = v30;
    *(v22 + 104) = v31;
    v34 = OUTLINED_FUNCTION_35_0(*(v22 + 48));
    v35(v34);
    v36 = swift_task_alloc();
    *(v22 + 112) = v36;
    *v36 = v22;
    OUTLINED_FUNCTION_65_1(v36);
    OUTLINED_FUNCTION_115();

    return static AssetInventory.reserve(locale:)();
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    while (v33 != v32)
    {
      OUTLINED_FUNCTION_163_0();
      if (v30)
      {
        goto LABEL_6;
      }
    }

    v39 = *(v22 + 56);

    OUTLINED_FUNCTION_160_0();
    while (v24)
    {
      if (!*(v39 + 16))
      {
        __break(1u);
LABEL_24:
        OUTLINED_FUNCTION_4_1(&qword_1EB56B598);
LABEL_18:
        v43 = type metadata accessor for ClientInfo(0);
        __swift_project_value_buffer(v43, qword_1EB56E830);
        objc_allocWithZone(type metadata accessor for AssetInstallationRequest());

        OUTLINED_FUNCTION_142_0();
        sub_1AC6EF218(v44, v45, v46);
        goto LABEL_20;
      }

      OUTLINED_FUNCTION_188_0();
      OUTLINED_FUNCTION_189_0();
      v40 = (v27)(v23, v25);
      v41 = swift_unknownObjectRelease();
      if (v40)
      {
        MEMORY[0x1B26E8CF0](v41);
        OUTLINED_FUNCTION_167_1();
        if (v42)
        {
          OUTLINED_FUNCTION_148_0();
        }

        OUTLINED_FUNCTION_170();
        sub_1AC7A0198();
        a10 = a11;
      }
    }

    if (sub_1AC605680(a10))
    {
      if (qword_1EB56B598 != -1)
      {
        goto LABEL_24;
      }

      goto LABEL_18;
    }

LABEL_20:

    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_115();

    return v49(v47, v48, v49, v50, v51, v52, v53, v54, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1AC60B228()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v3 = v2;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_18();
  *v6 = v5;
  v3[15] = v0;

  if (v0)
  {
    (*(v3[5] + 8))(v3[6], v3[4]);
  }

  else
  {
    v7 = OUTLINED_FUNCTION_130_1();
    v8(v7);
  }

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC60B350(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_137();
  OUTLINED_FUNCTION_169();
  v27 = *(v23 + 104);
  v28 = (*(v23 + 96) - 1) & *(v23 + 96);
  if (v28)
  {
LABEL_6:
    *(v23 + 96) = v28;
    *(v23 + 104) = v27;
    v30 = OUTLINED_FUNCTION_35_0(*(v23 + 48));
    v31(v30);
    v32 = swift_task_alloc();
    *(v23 + 112) = v32;
    *v32 = v23;
    OUTLINED_FUNCTION_65_1(v32);
    OUTLINED_FUNCTION_115();

    return static AssetInventory.reserve(locale:)();
  }

  else
  {
    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (v29 >= (((1 << *(v23 + 128)) + 63) >> 6))
      {
        break;
      }

      v28 = *(*(v23 + 88) + 8 * v29 + 56);
      ++v27;
      if (v28)
      {
        v27 = v29;
        goto LABEL_6;
      }
    }

    v35 = *(v23 + 56);

    OUTLINED_FUNCTION_160_0();
    while (v25)
    {
      if (!*(v35 + 16))
      {
        goto LABEL_24;
      }

      OUTLINED_FUNCTION_188_0();
      OUTLINED_FUNCTION_189_0();
      v36 = v22(v24, v26);
      v37 = swift_unknownObjectRelease();
      if (v36)
      {
        MEMORY[0x1B26E8CF0](v37);
        OUTLINED_FUNCTION_167_1();
        if (v38)
        {
          OUTLINED_FUNCTION_148_0();
        }

        OUTLINED_FUNCTION_170();
        sub_1AC7A0198();
        a10 = a11;
      }
    }

    if (sub_1AC605680(a10))
    {
      if (qword_1EB56B598 == -1)
      {
LABEL_18:
        v39 = type metadata accessor for ClientInfo(0);
        __swift_project_value_buffer(v39, qword_1EB56E830);
        objc_allocWithZone(type metadata accessor for AssetInstallationRequest());

        OUTLINED_FUNCTION_142_0();
        sub_1AC6EF218(v40, v41, v42);
        goto LABEL_20;
      }

LABEL_25:
      OUTLINED_FUNCTION_4_1(&qword_1EB56B598);
      goto LABEL_18;
    }

LABEL_20:

    OUTLINED_FUNCTION_69_1();
    OUTLINED_FUNCTION_115();

    return v45(v43, v44, v45, v46, v47, v48, v49, v50, a9, a10, a11, a12, a13, a14);
  }
}

uint64_t sub_1AC60B594()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t static AssetInventory.uninstallAssets(exceptFor:)()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v2;
  v1[4] = v0;
  v3 = sub_1AC79FB18();
  v1[5] = v3;
  OUTLINED_FUNCTION_22(v3);
  v1[6] = v4;
  v1[7] = swift_task_alloc();
  v5 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC60B6A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, id a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_137();
  a21 = v23;
  a22 = v24;
  OUTLINED_FUNCTION_169();
  a20 = v22;
  v25 = objc_opt_self();
  if (qword_1EB56B598 != -1)
  {
LABEL_22:
    OUTLINED_FUNCTION_4_1(&qword_1EB56B598);
  }

  v26 = type metadata accessor for ClientInfo(0);
  __swift_project_value_buffer(v26, qword_1EB56E830);
  v27 = sub_1AC79FF58();
  v28 = [v25 subscriptionsForClientIdentifier_];

  sub_1AC5CF764(0, &qword_1EB56AB20, off_1E797ACC0);
  v29 = sub_1AC7A0158();

  v25 = sub_1AC605680(v29);
  v30 = sub_1AC61663C();
  a10 = MEMORY[0x1B26E9020](v25, &type metadata for HashableEntitledAssetConfig, v30);
  v31 = sub_1AC605680(v29);
  for (i = 0; v31 != i; ++i)
  {
    if ((v29 & 0xC000000000000001) != 0)
    {
      v33 = MEMORY[0x1B26E95B0](i, v29);
    }

    else
    {
      if (i >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v33 = *(v29 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v25 = &a10;
    sub_1AC60FDE4(&a11, v33);
  }

  v34 = *(v22 + 24);

  v60 = v22;
  *(v22 + 16) = a10;
  v35 = *(v34 + 16);
  v36 = v22 + 16;
  if (v35)
  {
    v37 = (*(v60 + 24) + 32);
    do
    {
      v38 = *v37;
      ObjectType = swift_getObjectType();
      if (dynamic_cast_existential_1_conditional(v38, ObjectType, &protocol descriptor for InternalSpeechModule))
      {
        v41 = v40;
        v42 = swift_getObjectType();
        v43 = *(v41 + 32);
        swift_unknownObjectRetain();
        v44 = v43(v42, v41);
        if (v44)
        {
          v45 = v44;
          v46 = sub_1AC6192BC(v44);
          swift_unknownObjectRelease();
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }

      v37 += 2;
      --v35;
    }

    while (v35);
  }

  v47 = swift_task_alloc();
  *(v60 + 64) = v47;
  *(v47 + 16) = v36;
  v48 = swift_task_alloc();
  v49 = OUTLINED_FUNCTION_179_0(v48);
  *v49 = v50;
  v49[1] = sub_1AC60B998;
  OUTLINED_FUNCTION_115();

  return MEMORY[0x1EEE6DDE8](v51, v52, v53, v54, v55, v56, v57, v58, v60, a10, a11, a12, a13, a14);
}

uint64_t sub_1AC60B998()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v3, v4, v5);
}

uint64_t sub_1AC60BA98()
{
  OUTLINED_FUNCTION_85();
  sub_1AC608C18();
  *(v0 + 80) = v1;
  v2 = swift_task_alloc();
  *(v0 + 88) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_132_1(v2);

  return static AssetInventory.reservedLocales.getter();
}

uint64_t sub_1AC60BB28()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 96) = v3;

  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC60BC10()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 80);
  sub_1AC608DF4();
  v3 = sub_1AC60C6C4(v1, v2);
  *(v0 + 104) = v3;

  *(v0 + 136) = v3[32];
  OUTLINED_FUNCTION_93_1();
  v6 = v5 & v4;
  if (v6)
  {
    v7 = 0;
LABEL_6:
    *(v0 + 112) = v6;
    *(v0 + 120) = v7;
    v10 = OUTLINED_FUNCTION_35_0(*(v0 + 56));
    v11(v10);
    v12 = swift_task_alloc();
    *(v0 + 128) = v12;
    *v12 = v0;
    OUTLINED_FUNCTION_66_0(v12);

    return static AssetInventory.release(reservedLocale:)();
  }

  else
  {
    OUTLINED_FUNCTION_145_0();
    while (v9 != v8)
    {
      OUTLINED_FUNCTION_163_0();
      if (v6)
      {
        goto LABEL_6;
      }
    }

    OUTLINED_FUNCTION_44();

    return v14();
  }
}

uint64_t sub_1AC60BD48()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_50();
  v2 = v1[7];
  v3 = v1[6];
  v4 = v1[5];
  v5 = *v0;
  OUTLINED_FUNCTION_18();
  *v6 = v5;

  (*(v3 + 8))(v2, v4);
  v7 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

void sub_1AC60BE88()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 120);
  v2 = (*(v0 + 112) - 1) & *(v0 + 112);
  if (v2)
  {
    v3 = *(v0 + 104);
LABEL_7:
    *(v0 + 112) = v2;
    *(v0 + 120) = v1;
    (*(*(v0 + 48) + 16))(*(v0 + 56), *(v3 + 48) + *(*(v0 + 48) + 72) * (__clz(__rbit64(v2)) | (v1 << 6)), *(v0 + 40));
    v5 = swift_task_alloc();
    *(v0 + 128) = v5;
    *v5 = v0;
    OUTLINED_FUNCTION_66_0(v5);

    static AssetInventory.release(reservedLocale:)();
  }

  else
  {
    while (1)
    {
      v4 = v1 + 1;
      if (__OFADD__(v1, 1))
      {
        __break(1u);
        return;
      }

      if (v4 >= (((1 << *(v0 + 136)) + 63) >> 6))
      {
        break;
      }

      v3 = *(v0 + 104);
      v2 = *(v3 + 8 * v4 + 56);
      ++v1;
      if (v2)
      {
        v1 = v4;
        goto LABEL_7;
      }
    }

    OUTLINED_FUNCTION_44();

    v6();
  }
}

uint64_t sub_1AC60BFC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC60C06C, 0, 0);
}

uint64_t sub_1AC60C06C()
{
  v1 = **(v0 + 80) + 56;
  OUTLINED_FUNCTION_93_1();
  v4 = v3 & v2;
  v6 = (63 - v5) >> 6;
  v29 = v7;

  v9 = 0;
  v28 = v1;
  if (v4)
  {
    goto LABEL_6;
  }

  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v4 = *(v1 + 8 * v10);
    ++v9;
    if (v4)
    {
      v9 = v10;
      do
      {
LABEL_6:
        v12 = *(v0 + 88);
        v11 = *(v0 + 96);
        v13 = *(*(v29 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v4)))));
        v14 = sub_1AC7A0288();
        v15 = OUTLINED_FUNCTION_134_0();
        __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
        v18 = swift_allocObject();
        v18[2] = 0;
        v18[3] = 0;
        v18[4] = v13;
        sub_1AC61BB80(v11, v12);
        LODWORD(v12) = __swift_getEnumTagSinglePayload(v12, 1, v14);
        v30 = v13;
        v19 = *(v0 + 88);
        if (v12 == 1)
        {
          sub_1AC61BBF0(*(v0 + 88), &qword_1EB56BE70);
        }

        else
        {
          sub_1AC7A0278();
          (*(*(v14 - 8) + 8))(v19, v14);
        }

        if (v18[2])
        {
          swift_getObjectType();
          swift_unknownObjectRetain();
          v20 = sub_1AC7A01B8();
          v22 = v21;
          swift_unknownObjectRelease();
        }

        else
        {
          v20 = 0;
          v22 = 0;
        }

        v23 = **(v0 + 72);
        OUTLINED_FUNCTION_99();
        v24 = swift_allocObject();
        *(v24 + 16) = &unk_1AC7A8400;
        *(v24 + 24) = v18;

        if (v22 | v20)
        {
          v25 = v0 + 16;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0;
          *(v0 + 32) = v20;
          *(v0 + 40) = v22;
        }

        else
        {
          v25 = 0;
        }

        v26 = *(v0 + 96);
        v4 &= v4 - 1;
        *(v0 + 48) = 1;
        *(v0 + 56) = v25;
        *(v0 + 64) = v23;
        swift_task_create();

        result = sub_1AC61BBF0(v26, &qword_1EB56BE70);
        v1 = v28;
      }

      while (v4);
    }
  }

  OUTLINED_FUNCTION_44();

  return v27();
}

uint64_t sub_1AC60C3B0()
{
  OUTLINED_FUNCTION_45();
  objc_opt_self();
  if (qword_1EB56B598 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EB56B598);
  }

  v1 = type metadata accessor for ClientInfo(0);
  __swift_project_value_buffer(v1, qword_1EB56E830);
  v0[19] = sub_1AC79FF58();
  v0[2] = v0;
  v0[3] = sub_1AC60C4FC;
  v2 = swift_continuation_init();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFE0, &qword_1AC7A8410);
  v4 = OUTLINED_FUNCTION_80_0(v3);
  v0[11] = 1107296256;
  v0[12] = sub_1AC6BB2BC;
  v0[13] = &block_descriptor_0;
  v0[14] = v2;
  OUTLINED_FUNCTION_190_0(v4, sel_unsubscribeFromAssetWithConfig_clientIdentifier_completion_);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1AC60C4FC()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 160) = *(v3 + 48);
  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC60C5F8()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC60C650()
{
  OUTLINED_FUNCTION_72();
  v1 = *(v0 + 160);
  swift_willThrow();

  OUTLINED_FUNCTION_44();

  return v2();
}

char *sub_1AC60C6C4(unint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    sub_1AC619CBC(a1);
    return a2;
  }

  else
  {

    return sub_1AC61671C(a1, a2);
  }
}

uint64_t sub_1AC60C718(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_1AC7A08E8();
  }

  else
  {
    v4 = *(a1 + 16);
  }

  if ((a2 & 0xC000000000000001) == 0)
  {
    if (v4 > *(a2 + 16) >> 3)
    {
      goto LABEL_11;
    }

LABEL_14:
    sub_1AC619ED8(a1);
    return a2;
  }

  if (a2 < 0)
  {
    v5 = a2;
  }

  else
  {
    v5 = a2 & 0xFFFFFFFFFFFFFF8;
  }

  if (sub_1AC7A08E8() / 8 >= v4)
  {
    goto LABEL_14;
  }

  v6 = sub_1AC7A08E8();
  a2 = sub_1AC683844(v5, v6);
LABEL_11:

  return sub_1AC617440(a1, a2);
}

uint64_t sub_1AC60C804()
{
  *(v1 + 24) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE70, &qword_1AC7A8270);
  *(v1 + 32) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1AC60C8A0, v0, 0);
}

uint64_t sub_1AC60C8A0()
{
  OUTLINED_FUNCTION_72();
  v1 = v0[3];
  v2 = *(v1 + 112);
  if (v2 || (sub_1AC7A0288(), v3 = OUTLINED_FUNCTION_134_0(), __swift_storeEnumTagSinglePayload(v3, v4, v5, v6), OUTLINED_FUNCTION_99(), v7 = swift_allocObject(), *(v7 + 16) = 0, *(v7 + 24) = 0, sub_1AC6C2D6C(), *(v1 + 112) = v8, v9 = , (v2 = *(v1 + 112)) != 0))
  {
    v0[5] = v2;

    v10 = swift_task_alloc();
    v0[6] = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE78, &qword_1AC7A8288);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56D450, &qword_1AC7A7E50);
    *v10 = v0;
    v10[1] = sub_1AC60CA04;
    OUTLINED_FUNCTION_142_0();
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DA10](v9);
}

uint64_t sub_1AC60CA04()
{
  OUTLINED_FUNCTION_72();
  v2 = *v1;
  OUTLINED_FUNCTION_19();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 56) = v0;

  v5 = *(v2 + 24);
  if (v0)
  {
    v6 = sub_1AC60CBA0;
  }

  else
  {
    v6 = sub_1AC60CB40;
  }

  return MEMORY[0x1EEE6DFA0](v6, v5, 0);
}

uint64_t sub_1AC60CB40()
{
  OUTLINED_FUNCTION_85();

  v0 = OUTLINED_FUNCTION_69_1();

  return v1(v0);
}

uint64_t sub_1AC60CBA0()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC60CC1C()
{
  OUTLINED_FUNCTION_72();
  if (qword_1ED938050 != -1)
  {
    swift_once();
  }

  if (qword_1EB56B598 != -1)
  {
    OUTLINED_FUNCTION_4_1(&qword_1EB56B598);
  }

  v1 = type metadata accessor for ClientInfo(0);
  __swift_project_value_buffer(v1, qword_1EB56E830);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  OUTLINED_FUNCTION_85_0(v2);
  OUTLINED_FUNCTION_170();

  return sub_1AC638088();
}

uint64_t sub_1AC60CD1C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 32) = v4;

  if (v0)
  {
    OUTLINED_FUNCTION_44();

    return v5();
  }

  else
  {
    OUTLINED_FUNCTION_138();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }
}

uint64_t sub_1AC60CE38()
{
  OUTLINED_FUNCTION_85();
  v1 = v0[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BE78, &qword_1AC7A8288);
  v2 = swift_allocObject();
  v0[5] = v2;
  *(v2 + 16) = v1;

  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  OUTLINED_FUNCTION_132_1(v3);

  return sub_1AC6B6DDC();
}

uint64_t sub_1AC60CEF4()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_27_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *(v6 + 56) = v0;

  OUTLINED_FUNCTION_138();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1AC60CFEC()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);

  *v2 = v1;
  OUTLINED_FUNCTION_44();

  return v3();
}

uint64_t sub_1AC60D050()
{
  OUTLINED_FUNCTION_85();

  OUTLINED_FUNCTION_44();

  return v0();
}

uint64_t sub_1AC60D0B4()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1AC60D0FC()
{
  type metadata accessor for AssetInventory.ServiceActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  qword_1EB56BC98 = v0;
  return result;
}

uint64_t sub_1AC60D158(void *a1, void *a2)
{
  v4 = [a1 assetType];
  if (v4 != [a2 assetType])
  {
    goto LABEL_7;
  }

  v5 = [a1 language];
  v6 = sub_1AC79FF68();
  v8 = v7;

  v9 = [a2 language];
  v10 = sub_1AC79FF68();
  v12 = v11;

  if (v6 == v10 && v8 == v12)
  {
  }

  else
  {
    v14 = sub_1AC7A0D38();

    if ((v14 & 1) == 0)
    {
LABEL_7:
      v15 = 0;
      return v15 & 1;
    }
  }

  v16 = sub_1AC61AA74(a1);
  v18 = v17;
  v19 = sub_1AC61AA74(a2);
  if (v18)
  {
    if (v20)
    {
      if (v16 == v19 && v18 == v20)
      {

        v15 = 1;
      }

      else
      {
        v15 = sub_1AC7A0D38();
      }
    }

    else
    {
      v15 = 0;
    }
  }

  else
  {
    if (!v20)
    {
      v15 = 1;
      return v15 & 1;
    }

    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1AC60D2F0(uint64_t a1, id a2)
{
  MEMORY[0x1B26E9A40]([a2 assetType]);
  v3 = [a2 language];
  sub_1AC79FF68();

  sub_1AC7A0048();

  sub_1AC61AA74(a2);
  if (!v4)
  {
    return sub_1AC7A0E98();
  }

  sub_1AC7A0E98();
  sub_1AC7A0048();
}

uint64_t sub_1AC60D3D8(void *a1)
{
  sub_1AC7A0E78();
  sub_1AC60D2F0(v3, a1);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC60D43C(uint64_t a1)
{
  v2 = *v1;
  sub_1AC7A0E78();
  sub_1AC60D2F0(v4, v2);
  return sub_1AC7A0EC8();
}

uint64_t static AssetInventory.allocatedLocales.getter()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return static AssetInventory.reservedLocales.getter();
}

uint64_t sub_1AC60D508()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_69_1();

  return v4(v3);
}

uint64_t static AssetInventory.allocate(locale:)()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return static AssetInventory.reserve(locale:)();
}

uint64_t sub_1AC60D674()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  OUTLINED_FUNCTION_82();
  if (v0)
  {
    v7 = 0;
  }

  else
  {
    v7 = v3 & 1;
  }

  return v6(v7);
}

uint64_t static AssetInventory.deallocate(locale:)()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_64_0(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return static AssetInventory.release(reservedLocale:)();
}

uint64_t sub_1AC60D7F0()
{
  OUTLINED_FUNCTION_85();
  v2 = v1;
  OUTLINED_FUNCTION_50();
  v3 = *v0;
  OUTLINED_FUNCTION_18();
  *v4 = v3;

  OUTLINED_FUNCTION_82();

  return v5(v2);
}

unint64_t sub_1AC60D8D8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*(a3 + 16) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_1AC60D8F8(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1AC60D91C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1AC60DA14;

  return v6(a1);
}

uint64_t sub_1AC60DA14()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *v0;
  OUTLINED_FUNCTION_18();
  *v2 = v1;

  OUTLINED_FUNCTION_44();

  return v3();
}

void sub_1AC60DAF8()
{
  OUTLINED_FUNCTION_52_0();
  if ((v3 & 1) == 0 || (OUTLINED_FUNCTION_13_2(), v4 == v5))
  {
LABEL_6:
    OUTLINED_FUNCTION_16_0();
    if (v2)
    {
      v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C010, &unk_1AC7A9210);
      v7 = OUTLINED_FUNCTION_67_1(v6);
      OUTLINED_FUNCTION_0_2(v7);
      if (v1)
      {
LABEL_8:
        v8 = OUTLINED_FUNCTION_15_1();
        sub_1AC706D1C(v8, v9, v10);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (v1)
    {
      goto LABEL_8;
    }

    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFA8, &qword_1AC7A83B8);
    OUTLINED_FUNCTION_28_0(v11);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v4)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_6;
  }

  __break(1u);
}