id sub_1BC80C2C0()
{
  v0 = [objc_opt_self() sharedPhotoLibrary];

  return v0;
}

uint64_t sub_1BC80C300()
{
  OUTLINED_FUNCTION_5();
  v1[28] = v2;
  v1[29] = v0;
  v1[27] = v3;
  v4 = sub_1BC8F7014();
  v1[30] = v4;
  OUTLINED_FUNCTION_26(v4);
  v1[31] = v5;
  v1[32] = *(v6 + 64);
  v1[33] = swift_task_alloc();
  v1[34] = swift_task_alloc();
  v1[35] = swift_task_alloc();
  v1[36] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC80C3E4, 0, 0);
}

uint64_t sub_1BC80C3E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v71 = v12;
  if (qword_1EDC1E1C0 != -1)
  {
    OUTLINED_FUNCTION_1_14(&qword_1EDC1E1C0);
  }

  v13 = v12[35];
  v14 = v12[36];
  v15 = v12[30];
  v16 = v12[31];
  v18 = v12[27];
  v17 = v12[28];
  v19 = sub_1BC8F7734();
  v12[37] = __swift_project_value_buffer(v19, qword_1EDC2B250);
  v20 = *(v16 + 16);
  v20(v14, v18, v15);
  v69 = v20;
  v20(v13, v17, v15);
  v21 = sub_1BC8F7714();
  v22 = sub_1BC8F8204();
  v23 = os_log_type_enabled(v21, v22);
  v25 = v12[35];
  v24 = v12[36];
  v27 = v12[30];
  v26 = v12[31];
  if (v23)
  {
    v67 = v22;
    v28 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    *v28 = 136315394;
    sub_1BC80DFB0();
    v29 = sub_1BC8F8A54();
    v31 = v30;
    v32 = *(v26 + 8);
    v32(v24, v27);
    v33 = sub_1BC7A9A4C(v29, v31, &v70);

    *(v28 + 4) = v33;
    *(v28 + 12) = 2080;
    v34 = sub_1BC8F8A54();
    v36 = v35;
    v32(v25, v27);
    v37 = sub_1BC7A9A4C(v34, v36, &v70);

    *(v28 + 14) = v37;
    _os_log_impl(&dword_1BC7A3000, v21, v67, "photoURL: %s videoURL: %s", v28, 0x16u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    v38 = *(v26 + 8);
    v38(v25, v27);
    v38(v24, v27);
  }

  v39 = v12[33];
  v40 = v12[34];
  v64 = v40;
  v41 = v12[31];
  v42 = v12[29];
  v43 = v12[30];
  v65 = v12[32];
  v66 = v42;
  v44 = v12[27];
  v45 = v12[28];
  v46 = swift_allocObject();
  v12[38] = v46;
  *(v46 + 16) = 0;
  v68 = (*&v42[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider])();
  v12[39] = v68;
  v69(v40, v44, v43);
  v69(v39, v45, v43);
  v47 = *(v41 + 80);
  v48 = (v47 + 16) & ~v47;
  v49 = (v48 + v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v47 + v49 + 8) & ~v47;
  v51 = swift_allocObject();
  v52 = *(v41 + 32);
  v52(v51 + v48, v64, v43);
  *(v51 + v49) = v66;
  v52(v51 + v50, v39, v43);
  *(v51 + ((v50 + v65 + 7) & 0xFFFFFFFFFFFFFFF8)) = v46;
  v12[22] = sub_1BC80E008;
  v12[23] = v51;
  v12[18] = MEMORY[0x1E69E9820];
  v12[19] = 1107296256;
  v12[20] = sub_1BC80CE70;
  v12[21] = &block_descriptor_16;
  v53 = _Block_copy(v12 + 18);
  v12[40] = v53;
  v54 = v66;

  v12[2] = v12;
  v12[3] = sub_1BC80C8CC;
  v55 = swift_continuation_init();
  v12[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4E40, &unk_1BC8FC390);
  v12[10] = MEMORY[0x1E69E9820];
  v12[11] = 1107296256;
  v12[12] = sub_1BC80CEB4;
  v12[13] = &block_descriptor_19;
  v12[14] = v55;
  [v68 performChanges:v53 completionHandler:?];

  return MEMORY[0x1EEE6DEC8](v12 + 2, v56, v57, v58, v59, v60, v61, v62, a9, a10, a11, a12);
}

uint64_t sub_1BC80C8CC()
{
  OUTLINED_FUNCTION_5();
  v1 = *(*v0 + 48);
  *(*v0 + 328) = v1;
  if (v1)
  {
    v2 = sub_1BC80CC68;
  }

  else
  {
    v2 = sub_1BC80C9D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BC80C9D8()
{
  v22 = v0;
  v1 = *(v0 + 320);
  v2 = *(v0 + 304);

  _Block_release(v1);
  swift_beginAccess();
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = v3;
    v5 = sub_1BC8F7714();
    v6 = sub_1BC8F8204();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v21 = v8;
      *v7 = 136315138;
      v9 = [v4 localIdentifier];
      v10 = sub_1BC8F7C24();
      v12 = v11;

      v13 = sub_1BC7A9A4C(v10, v12, &v21);

      *(v7 + 4) = v13;
      _os_log_impl(&dword_1BC7A3000, v5, v6, "Saved live photo with identifier %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      OUTLINED_FUNCTION_6();
      OUTLINED_FUNCTION_6();
    }

    v14 = [v4 localIdentifier];
    v15 = sub_1BC8F7C24();
    v17 = v16;

    v18 = *(v0 + 8);

    return v18(v15, v17);
  }

  else
  {
    sub_1BC80DF5C();
    swift_allocError();
    swift_willThrow();

    OUTLINED_FUNCTION_27();

    return v20();
  }
}

uint64_t sub_1BC80CC68(uint64_t a1)
{
  v2 = *(v1 + 320);
  v3 = *(v1 + 312);
  swift_willThrow();

  _Block_release(v2);

  OUTLINED_FUNCTION_27();

  return v4();
}

void sub_1BC80CD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = [objc_opt_self() creationRequestForAsset];
  v6 = sub_1BC8F6F44();
  v7 = [objc_allocWithZone(MEMORY[0x1E69786E0]) init];
  [v7 setShouldMoveFile_];
  [v5 addResourceWithType:1 fileURL:v6 options:v7];

  v8 = sub_1BC8F6F44();
  v9 = [objc_allocWithZone(MEMORY[0x1E69786E0]) init];
  [v9 setShouldMoveFile_];
  [v5 addResourceWithType:9 fileURL:v8 options:v9];

  v10 = [v5 placeholderForCreatedAsset];
  swift_beginAccess();
  v11 = *(a4 + 16);
  *(a4 + 16) = v10;
}

uint64_t sub_1BC80CE70(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t *sub_1BC80CEB4(uint64_t a1, int a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v6 = *result;

    return j__swift_continuation_throwingResume(v6);
  }

  else if (a3)
  {
    v7 = a3;

    return sub_1BC899994();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1BC80CFD4(uint64_t a1, uint64_t a2, const void *a3, void *a4)
{
  v4[2] = a4;
  v7 = sub_1BC8F7014();
  v4[3] = v7;
  v4[4] = *(v7 - 8);
  v4[5] = swift_task_alloc();
  v4[6] = swift_task_alloc();
  v4[7] = _Block_copy(a3);
  sub_1BC8F6FB4();
  sub_1BC8F6FB4();
  a4;
  v8 = swift_task_alloc();
  v4[8] = v8;
  *v8 = v4;
  v8[1] = sub_1BC80D12C;

  return sub_1BC80C300();
}

uint64_t sub_1BC80D12C()
{
  OUTLINED_FUNCTION_4_11();
  v3 = v2;
  OUTLINED_FUNCTION_3_1();
  *v4 = v2;
  v5 = v2[2];
  v6 = *v1;
  *v4 = *v1;

  v7 = v2[6];
  v8 = v2[3];
  v9 = *(v2[4] + 8);
  v9(v2[5], v8);
  v9(v7, v8);
  if (v0)
  {
    v10 = sub_1BC8F6E94();

    v11 = 0;
    v12 = v10;
  }

  else
  {
    v11 = sub_1BC8F7BE4();

    v10 = 0;
    v12 = v11;
  }

  v13 = v3[7];
  v13[2](v13, v11, v10);

  _Block_release(v13);

  v14 = *(v6 + 8);

  return v14();
}

uint64_t sub_1BC80D33C()
{
  OUTLINED_FUNCTION_5();
  v1[12] = v2;
  v1[13] = v0;
  v3 = sub_1BC8F7014();
  v1[14] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[15] = v4;
  v1[16] = *(v5 + 64);
  v1[17] = swift_task_alloc();
  v1[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC80D430, 0, 0);
}

uint64_t sub_1BC80D430()
{
  v55 = v0;
  v54[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDC1E1C0 != -1)
  {
    OUTLINED_FUNCTION_1_14(&qword_1EDC1E1C0);
  }

  v1 = v0[18];
  v2 = v0[14];
  v3 = v0[15];
  v4 = v0[12];
  v5 = sub_1BC8F7734();
  __swift_project_value_buffer(v5, qword_1EDC2B250);
  v53 = *(v3 + 16);
  v53(v1, v4, v2);
  v6 = sub_1BC8F7714();
  v7 = sub_1BC8F8204();
  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[18];
  v11 = v0[14];
  v10 = v0[15];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v54[0] = v13;
    *v12 = 136315138;
    sub_1BC80DFB0();
    v14 = sub_1BC8F8A54();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = sub_1BC7A9A4C(v14, v16, v54);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_1BC7A3000, v6, v7, "MediaAssetManager saving video with URL %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    OUTLINED_FUNCTION_6();
    OUTLINED_FUNCTION_6();
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[16];
  v19 = v0[17];
  v20 = v0[14];
  v21 = v0[15];
  v22 = v0[12];
  v23 = v0[13];
  v24 = swift_allocObject();
  *(v24 + 16) = 0;
  v51 = (v24 + 16);
  v52 = (*&v23[OBJC_IVAR___FTMediaAssetManager_photoLibraryProvider])();
  v53(v19, v22, v20);
  v25 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v26 = (v18 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  (*(v21 + 32))(v27 + v25, v19, v20);
  *(v27 + v26) = v23;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v24;
  v0[6] = sub_1BC80DEB4;
  v0[7] = v27;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1BC80CE70;
  v0[5] = &block_descriptor_1;
  v28 = _Block_copy(v0 + 2);
  v29 = v23;

  v0[11] = 0;
  LODWORD(v26) = [v52 performChangesAndWait:v28 error:v0 + 11];
  _Block_release(v28);

  v30 = v0[11];
  if (v26)
  {
    swift_beginAccess();
    if (*v51)
    {
      v31 = *v51;
      v32 = v30;
      v33 = sub_1BC8F7714();
      v34 = sub_1BC8F8204();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v54[0] = v36;
        *v35 = 136315138;
        v37 = [v31 localIdentifier];
        v38 = sub_1BC8F7C24();
        v40 = v39;

        v41 = sub_1BC7A9A4C(v38, v40, v54);

        *(v35 + 4) = v41;
        _os_log_impl(&dword_1BC7A3000, v33, v34, "Saved video with identifier %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v36);
        OUTLINED_FUNCTION_6();
        OUTLINED_FUNCTION_6();
      }

      v42 = [v31 localIdentifier];
      v43 = sub_1BC8F7C24();
      v45 = v44;

      v46 = v0[1];

      return v46(v43, v45);
    }

    sub_1BC80DF5C();
    swift_allocError();
    swift_willThrow();
    v49 = v30;
  }

  else
  {
    v48 = v30;
    sub_1BC8F6EA4();

    swift_willThrow();
  }

  OUTLINED_FUNCTION_27();

  return v50();
}

void sub_1BC80D9F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [objc_opt_self() creationRequestForAsset];
  v5 = sub_1BC8F6F44();
  v6 = [objc_allocWithZone(MEMORY[0x1E69786E0]) init];
  [v6 setShouldMoveFile_];
  [v4 addResourceWithType:2 fileURL:v5 options:v6];

  v7 = [v4 placeholderForCreatedAsset];
  swift_beginAccess();
  v8 = *(a3 + 16);
  *(a3 + 16) = v7;
}

uint64_t sub_1BC80DB70(uint64_t a1, const void *a2, void *a3)
{
  v3[2] = a3;
  v6 = sub_1BC8F7014();
  v3[3] = v6;
  v3[4] = *(v6 - 8);
  v3[5] = swift_task_alloc();
  v3[6] = _Block_copy(a2);
  sub_1BC8F6FB4();
  a3;
  v7 = swift_task_alloc();
  v3[7] = v7;
  *v7 = v3;
  v7[1] = sub_1BC80DC9C;

  return sub_1BC80D33C();
}

uint64_t sub_1BC80DC9C()
{
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_3_1();
  *v3 = v2;
  v4 = *v1;
  *v3 = *v1;

  v5 = v2[2];
  (*(v2[4] + 8))(v2[5], v2[3]);

  if (v0)
  {
    v6 = sub_1BC8F6E94();

    v7 = 0;
    v8 = v6;
  }

  else
  {
    v7 = sub_1BC8F7BE4();

    v6 = 0;
    v8 = v7;
  }

  v9 = v2[6];
  v9[2](v9, v7, v6);

  _Block_release(v9);

  v10 = *(v4 + 8);

  return v10();
}

id sub_1BC80DE6C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MediaAssetManager();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1BC80DEB4()
{
  v1 = sub_1BC8F7014();
  OUTLINED_FUNCTION_26(v1);
  v3 = v2;
  v5 = v4;
  v6 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + v7);
  v9 = *(v0 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1BC80D9F8(v0 + v6, v8, v9);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1BC80DF5C()
{
  result = qword_1EBCF58C8;
  if (!qword_1EBCF58C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58C8);
  }

  return result;
}

unint64_t sub_1BC80DFB0()
{
  result = qword_1EDC20610;
  if (!qword_1EDC20610)
  {
    sub_1BC8F7014();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC20610);
  }

  return result;
}

void sub_1BC80E008()
{
  v1 = sub_1BC8F7014();
  OUTLINED_FUNCTION_26(v1);
  v3 = v2;
  v5 = v4;
  v6 = *(v3 + 80);
  v7 = (v6 + 16) & ~v6;
  v8 = *(v5 + 64) + 7;
  v9 = (v8 + v7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v6 + v9 + 8) & ~v6;
  v11 = *(v0 + v9);
  v12 = *(v0 + ((v8 + v10) & 0xFFFFFFFFFFFFFFF8));

  sub_1BC80CD18(v0 + v7, v11, v0 + v10, v12);
}

uint64_t sub_1BC80E0C0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BC80E420;

  return sub_1BC80DB70(v2, v3, v4);
}

uint64_t sub_1BC80E174()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BC80E234;

  return sub_1BC80CFD4(v2, v3, v5, v4);
}

uint64_t sub_1BC80E234()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

_BYTE *storeEnumTagSinglePayload for MediaAssetManagerError(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_1BC80E3C8()
{
  result = qword_1EBCF58D0;
  if (!qword_1EBCF58D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBCF58D0);
  }

  return result;
}

uint64_t sub_1BC80E428(uint64_t a1)
{
  v43 = sub_1BC8F7264();
  MEMORY[0x1EEE9AC00](v43);
  v42 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v34[1] = v1;
  v50 = MEMORY[0x1E69E7CC0];
  v44 = v3;
  sub_1BC7DDB1C(0, v5, 0);
  v7 = v44;
  v6 = v50;
  result = sub_1BC82F240(a1);
  v11 = 0;
  v12 = a1 + 56;
  v40 = v7 + 8;
  v41 = v7 + 16;
  v35 = a1 + 64;
  v39 = xmmword_1BC8FC230;
  v37 = a1 + 56;
  v38 = a1;
  v36 = v5;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v13 = result >> 6;
      v14 = 1 << result;
      if ((*(v12 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_25;
      }

      v48 = v10;
      v46 = result;
      v47 = v9;
      v45 = v11;
      v15 = *(a1 + 48) + *(v7 + 72) * result;
      v16 = *(v7 + 16);
      v49 = v6;
      v18 = v42;
      v17 = v43;
      v16(v42, v15, v43);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE8, &qword_1BC902B90);
      v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = v39;
      v22 = v21 + v20;
      v7 = v44;
      v16(v22, v18, v17);
      *(v19 + 16) = v21;
      v23 = v18;
      v6 = v49;
      result = (*(v7 + 8))(v23, v17);
      v50 = v6;
      v25 = *(v6 + 16);
      v24 = *(v6 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_1BC7DDB1C((v24 > 1), v25 + 1, 1);
        v7 = v44;
        v6 = v50;
      }

      *(v6 + 16) = v25 + 1;
      *(v6 + 8 * v25 + 32) = v19 | 0x1000000000000000;
      if (v48)
      {
        goto LABEL_29;
      }

      v12 = v37;
      a1 = v38;
      v26 = 1 << *(v38 + 32);
      result = v46;
      if (v46 >= v26)
      {
        goto LABEL_26;
      }

      v27 = *(v37 + 8 * v13);
      if ((v27 & v14) == 0)
      {
        goto LABEL_27;
      }

      if (*(v38 + 36) != v47)
      {
        goto LABEL_28;
      }

      v28 = v27 & (-2 << (v46 & 0x3F));
      if (v28)
      {
        v26 = __clz(__rbit64(v28)) | v46 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v13 << 6;
        v30 = v13 + 1;
        v31 = (v35 + 8 * v13);
        while (v30 < (v26 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_1BC7FBED8(v46, v47, 0);
            v26 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        sub_1BC7FBED8(v46, v47, 0);
      }

LABEL_19:
      v11 = v45 + 1;
      if (v45 + 1 == v36)
      {
        return v6;
      }

      v10 = 0;
      v9 = *(a1 + 36);
      result = v26;
      if (v26 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1BC80E7B0(uint64_t a1)
{
  v43 = sub_1BC8F7264();
  MEMORY[0x1EEE9AC00](v43);
  v42 = v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v34[1] = v1;
  v50 = MEMORY[0x1E69E7CC0];
  v44 = v3;
  sub_1BC7DDB1C(0, v5, 0);
  v7 = v44;
  v6 = v50;
  result = sub_1BC82F240(a1);
  v11 = 0;
  v12 = a1 + 56;
  v40 = v7 + 8;
  v41 = v7 + 16;
  v35 = a1 + 64;
  v39 = xmmword_1BC8FC230;
  v37 = a1 + 56;
  v38 = a1;
  v36 = v5;
  if ((result & 0x8000000000000000) == 0)
  {
    while (result < 1 << *(a1 + 32))
    {
      v13 = result >> 6;
      v14 = 1 << result;
      if ((*(v12 + 8 * (result >> 6)) & (1 << result)) == 0)
      {
        goto LABEL_24;
      }

      if (*(a1 + 36) != v9)
      {
        goto LABEL_25;
      }

      v48 = v10;
      v46 = result;
      v47 = v9;
      v45 = v11;
      v15 = *(a1 + 48) + *(v7 + 72) * result;
      v16 = *(v7 + 16);
      v49 = v6;
      v18 = v42;
      v17 = v43;
      v16(v42, v15, v43);
      v19 = swift_allocObject();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE8, &qword_1BC902B90);
      v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v21 = swift_allocObject();
      *(v21 + 16) = v39;
      v22 = v21 + v20;
      v7 = v44;
      v16(v22, v18, v17);
      *(v19 + 16) = v21;
      v23 = v18;
      v6 = v49;
      result = (*(v7 + 8))(v23, v17);
      v50 = v6;
      v25 = *(v6 + 16);
      v24 = *(v6 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_1BC7DDB1C((v24 > 1), v25 + 1, 1);
        v7 = v44;
        v6 = v50;
      }

      *(v6 + 16) = v25 + 1;
      *(v6 + 8 * v25 + 32) = v19 | 0x2000000000000000;
      if (v48)
      {
        goto LABEL_29;
      }

      v12 = v37;
      a1 = v38;
      v26 = 1 << *(v38 + 32);
      result = v46;
      if (v46 >= v26)
      {
        goto LABEL_26;
      }

      v27 = *(v37 + 8 * v13);
      if ((v27 & v14) == 0)
      {
        goto LABEL_27;
      }

      if (*(v38 + 36) != v47)
      {
        goto LABEL_28;
      }

      v28 = v27 & (-2 << (v46 & 0x3F));
      if (v28)
      {
        v26 = __clz(__rbit64(v28)) | v46 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v29 = v13 << 6;
        v30 = v13 + 1;
        v31 = (v35 + 8 * v13);
        while (v30 < (v26 + 63) >> 6)
        {
          v33 = *v31++;
          v32 = v33;
          v29 += 64;
          ++v30;
          if (v33)
          {
            sub_1BC7FBED8(v46, v47, 0);
            v26 = __clz(__rbit64(v32)) + v29;
            goto LABEL_19;
          }
        }

        sub_1BC7FBED8(v46, v47, 0);
      }

LABEL_19:
      v11 = v45 + 1;
      if (v45 + 1 == v36)
      {
        return v6;
      }

      v10 = 0;
      v9 = *(a1 + 36);
      result = v26;
      if (v26 < 0)
      {
        break;
      }
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

void sub_1BC80EB38(uint64_t a1, uint64_t a2)
{
  v2 = a1;
  v19 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BC8F84F4();
    sub_1BC7D9730(0, &qword_1EBCF5980, 0x1E695D620);
    sub_1BC82FECC(&qword_1EBCF5988, &qword_1EBCF5980, 0x1E695D620);
    sub_1BC8F8124();
    v2 = v14;
    v3 = v15;
    v4 = v16;
    v5 = v17;
    v6 = v18;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  while (v2 < 0)
  {
    if (!sub_1BC8F8514() || (sub_1BC7D9730(0, &qword_1EBCF5980, 0x1E695D620), swift_dynamicCast(), (v12 = v13) == 0))
    {
LABEL_21:
      sub_1BC7CAD38(v2);
      return;
    }

LABEL_16:
    type metadata accessor for FTStoredMessage();
    if (swift_dynamicCastClass())
    {
      MEMORY[0x1BFB29230]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1BC8F7E94();
      }

      sub_1BC8F7ED4();
    }

    else
    {
    }
  }

  v10 = v5;
  v11 = v6;
  if (v6)
  {
LABEL_12:
    v6 = (v11 - 1) & v11;
    v12 = *(*(v2 + 48) + ((v5 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_21;
    }

    goto LABEL_16;
  }

  while (1)
  {
    v5 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v5 >= ((v4 + 64) >> 6))
    {
      goto LABEL_21;
    }

    v11 = *(v3 + 8 * v5);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_1BC80EDA8(uint64_t a1, void *a2)
{
  v2 = a1;
  v34 = *MEMORY[0x1E69E9840];
  v28 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BC8F84F4();
    sub_1BC7D9730(0, &qword_1EBCF5990, 0x1E695D630);
    sub_1BC82FECC(&qword_1EBCF5998, &qword_1EBCF5990, 0x1E695D630);
    sub_1BC8F8124();
    v2 = v29;
    v3 = v30;
    v5 = v31;
    v4 = v32;
    v6 = v33;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v5 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v4 = 0;
  }

  v24 = MEMORY[0x1E69E7CC0];
  v25 = v3;
LABEL_8:
  v10 = v4;
  if (v2 < 0)
  {
    while (sub_1BC8F8514())
    {
      sub_1BC7D9730(0, &qword_1EBCF5990, 0x1E695D630);
      swift_dynamicCast();
      v14 = v27;
      v4 = v10;
      v13 = v6;
      if (!v27)
      {
        break;
      }

LABEL_17:
      v15 = v2;
      v27 = 0;
      v16 = [a2 existingObjectWithID:v14 error:&v27];
      v17 = v27;
      if (!v16)
      {
        v23 = v27;
        sub_1BC8F6EA4();

        swift_willThrow();
        sub_1BC7CAD38(v15);

        v21 = v24;

        return v21;
      }

      v18 = v16;
      type metadata accessor for FTStoredMessage();
      v19 = swift_dynamicCastClass();
      v20 = v17;

      if (v19)
      {
        MEMORY[0x1BFB29230]();
        if (*((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v28 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();
        v24 = v28;
        v2 = v15;
        v6 = v13;
        v3 = v25;
        goto LABEL_8;
      }

      v10 = v4;
      v6 = v13;
      v2 = v15;
      v3 = v25;
      if ((v2 & 0x8000000000000000) == 0)
      {
        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v11 = v10;
    v12 = v6;
    v4 = v10;
    if (v6)
    {
LABEL_13:
      v13 = (v12 - 1) & v12;
      v14 = *(*(v2 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v12)))));
      if (v14)
      {
        goto LABEL_17;
      }
    }

    else
    {
      while (1)
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
        }

        if (v4 >= ((v5 + 64) >> 6))
        {
          break;
        }

        v12 = *(v3 + 8 * v4);
        ++v11;
        if (v12)
        {
          goto LABEL_13;
        }
      }
    }
  }

  sub_1BC7CAD38(v2);

  return v24;
}

void sub_1BC80F11C(uint64_t result, void *a2)
{
  if (!result)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v4 = a2[2];
  v5 = sub_1BC82F830(0, v4, result);
  v23 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDBB4(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
LABEL_56:
    __break(1u);
    return;
  }

  if (!v5)
  {
    v9 = 0;
    goto LABEL_27;
  }

  v6 = 0;
  do
  {
    v7 = v4 >= v6;
    if (result > 0)
    {
      v7 = v6 >= v4;
    }

    if (v7)
    {
LABEL_51:
      __break(1u);
LABEL_52:
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      goto LABEL_55;
    }

    v8 = v6 + result;
    if (__OFADD__(v6, result))
    {
      v9 = ((v6 + result) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v9 = v6 + result;
    }

    if (__OFADD__(v6, result))
    {
      goto LABEL_52;
    }

    if (v4 < v8)
    {
      v8 = v4;
    }

    v10 = v8 - v6;
    if (v8 < v6)
    {
      goto LABEL_53;
    }

    if (v6 < 0)
    {
      goto LABEL_54;
    }

    if (v4 == v10)
    {

      v11 = a2;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (v8 != v6)
      {
        if (v10 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
          v11 = swift_allocObject();
          v14 = _swift_stdlib_malloc_size(v11);
          v11[2] = v10;
          v11[3] = 2 * ((v14 - 32) / 8);
        }

        swift_arrayInitWithCopy();
      }
    }

    v13 = *(v23 + 16);
    v12 = *(v23 + 24);
    if (v13 >= v12 >> 1)
    {
      sub_1BC7DDBB4(v12 > 1, v13 + 1, 1);
    }

    *(v23 + 16) = v13 + 1;
    *(v23 + 8 * v13 + 32) = v11;
    v6 = v9;
    --v5;
  }

  while (v5);
  while (1)
  {
LABEL_27:
    v15 = v4 >= v9;
    if (result > 0)
    {
      v15 = v9 >= v4;
    }

    if (v15)
    {
      break;
    }

    v16 = v9 + result;
    if (__OFADD__(v9, result))
    {
      v17 = ((v9 + result) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v17 = v9 + result;
    }

    if (__OFADD__(v9, result))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (v4 < v16)
    {
      v16 = v4;
    }

    v18 = v16 - v9;
    if (v16 < v9)
    {
      goto LABEL_49;
    }

    if (v9 < 0)
    {
      goto LABEL_50;
    }

    if (v4 == v18)
    {

      v19 = a2;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CC0];
      if (v16 != v9)
      {
        if (v18 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
          v19 = swift_allocObject();
          v22 = _swift_stdlib_malloc_size(v19);
          v19[2] = v18;
          v19[3] = 2 * ((v22 - 32) / 8);
        }

        swift_arrayInitWithCopy();
      }
    }

    v21 = *(v23 + 16);
    v20 = *(v23 + 24);
    if (v21 >= v20 >> 1)
    {
      sub_1BC7DDBB4(v20 > 1, v21 + 1, 1);
    }

    *(v23 + 16) = v21 + 1;
    *(v23 + 8 * v21 + 32) = v19;
    v9 = v17;
  }
}

void sub_1BC80F420(uint64_t a1, unint64_t a2)
{
  v4 = sub_1BC7C0454(a2);
  if (!a1)
  {
    goto LABEL_124;
  }

  v5 = v4;
  v6 = sub_1BC82F830(0, v4, a1);
  v57 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDCA4(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = v57;
    v8 = a2 >> 62;
    v53 = a1;
    v55 = v5;
    if (v6)
    {
      v52 = sub_1BC7C0454(a2);
      v51 = sub_1BC7C0454(a2);
      v49 = v6;
      v50 = sub_1BC7C0454(a2);
      v9 = 0;
      v10 = 0;
      v56 = a2 & 0xC000000000000001;
      while (1)
      {
        v11 = v5 >= v10;
        if (a1 > 0)
        {
          v11 = v10 >= v5;
        }

        if (v11)
        {
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
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (__OFADD__(v10, a1))
        {
          v12 = ((v10 + a1) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v12 = v10 + a1;
        }

        if (__OFADD__(v10, a1))
        {
          goto LABEL_113;
        }

        if (v52 >= v10 + a1)
        {
          v13 = v10 + a1;
        }

        else
        {
          v13 = v52;
        }

        if (v13 < v10)
        {
          goto LABEL_114;
        }

        if (v51 < v10)
        {
          goto LABEL_115;
        }

        if (v10 < 0)
        {
          goto LABEL_116;
        }

        if (v50 < v13)
        {
          goto LABEL_117;
        }

        if (!v56 || v10 == v13)
        {

          if (!v8)
          {
            goto LABEL_25;
          }
        }

        else
        {
          if (v10 >= v13)
          {
            goto LABEL_122;
          }

          type metadata accessor for Message(0);

          v14 = v10;
          do
          {
            v15 = v14 + 1;
            sub_1BC8F85D4();
            v14 = v15;
          }

          while (v13 != v15);
          if (!v8)
          {
LABEL_25:
            v16 = (2 * v13) | 1;
            v17 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
            goto LABEL_28;
          }
        }

        sub_1BC8F87A4();
        v10 = v18;
LABEL_28:
        v19 = v16 >> 1;
        if ((v16 & 1) == 0)
        {
          v20 = v19 - v10;
          if (__OFSUB__(v19, v10))
          {
            goto LABEL_121;
          }

          if (v20)
          {
            goto LABEL_31;
          }

LABEL_38:
          v21 = MEMORY[0x1E69E7CC0];
          goto LABEL_42;
        }

        v48 = v17;
        sub_1BC8F8AD4();
        swift_unknownObjectRetain_n();
        v23 = swift_dynamicCastClass();
        if (!v23)
        {
          swift_unknownObjectRelease();
          v23 = MEMORY[0x1E69E7CC0];
        }

        v24 = *(v23 + 16);

        v20 = v19 - v10;
        if (__OFSUB__(v19, v10))
        {
          goto LABEL_123;
        }

        if (v24 != v20)
        {
          swift_unknownObjectRelease();
          a1 = v53;
          v17 = v48;
          if (!v20)
          {
            goto LABEL_38;
          }

LABEL_31:
          if (v20 < 1)
          {
            v21 = MEMORY[0x1E69E7CC0];
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
            v21 = swift_allocObject();
            _swift_stdlib_malloc_size(v21);
            OUTLINED_FUNCTION_102();
            v21[2] = v20;
            v21[3] = v22;
          }

          if (v10 == v19)
          {
            goto LABEL_127;
          }

          v10 = v17 + 8 * v10;
          type metadata accessor for Message(0);
          swift_arrayInitWithCopy();
LABEL_42:
          swift_unknownObjectRelease();
          goto LABEL_43;
        }

        v21 = swift_dynamicCastClass();
        swift_unknownObjectRelease();
        a1 = v53;
        if (!v21)
        {
          goto LABEL_38;
        }

LABEL_43:
        OUTLINED_FUNCTION_120();
        if (v26)
        {
          v27 = OUTLINED_FUNCTION_37(v25);
          sub_1BC7DDCA4(v27, v10, 1);
          v7 = v57;
        }

        ++v9;
        *(v7 + 16) = v10;
        *(v7 + 8 * v19 + 32) = v21;
        v10 = v12;
        v8 = a2 >> 62;
        v5 = v55;
        if (v9 == v49)
        {
          v28 = a2 & 0xFFFFFFFFFFFFFF8;
          goto LABEL_50;
        }
      }
    }

    v12 = 0;
    v28 = a2 & 0xFFFFFFFFFFFFFF8;
    v56 = a2 & 0xC000000000000001;
LABEL_50:
    v54 = v28;
    while (1)
    {
      v29 = v5 >= v12;
      if (a1 > 0)
      {
        v29 = v12 >= v5;
      }

      if (v29)
      {
        return;
      }

      v30 = v12 + a1;
      if (__OFADD__(v12, a1))
      {
        v31 = ((v12 + a1) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v31 = v12 + a1;
      }

      if (__OFADD__(v12, a1))
      {
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
        goto LABEL_112;
      }

      if (v8)
      {
        v45 = sub_1BC8F8504();
        if (v45 >= v30)
        {
          v34 = v12 + a1;
        }

        else
        {
          v34 = v45;
        }

        v32 = v54;
        if (v34 < v12)
        {
          goto LABEL_107;
        }

        v33 = sub_1BC8F8504();
      }

      else
      {
        v32 = v54;
        v33 = *(v54 + 16);
        if (v33 >= v30)
        {
          v34 = v12 + a1;
        }

        else
        {
          v34 = *(v54 + 16);
        }

        if (v34 < v12)
        {
          goto LABEL_107;
        }
      }

      if (v33 < v12)
      {
        goto LABEL_108;
      }

      if (v12 < 0)
      {
        goto LABEL_109;
      }

      if (v8)
      {
        v35 = sub_1BC8F8504();
      }

      else
      {
        v35 = *(v32 + 16);
      }

      if (v35 < v34)
      {
        goto LABEL_110;
      }

      if (v34 < 0)
      {
        goto LABEL_111;
      }

      if (!v56 || v12 == v34)
      {

        if (!v8)
        {
          goto LABEL_76;
        }
      }

      else
      {
        if (v12 >= v34)
        {
          goto LABEL_119;
        }

        type metadata accessor for Message(0);

        v36 = v12;
        do
        {
          v30 = v36 + 1;
          sub_1BC8F85D4();
          v36 = v30;
        }

        while (v34 != v30);
        if (!v8)
        {
LABEL_76:
          v37 = (2 * v34) | 1;
          v38 = v32;
          goto LABEL_79;
        }
      }

      v38 = sub_1BC8F87A4();
      v12 = v39;
LABEL_79:
      v40 = v37 >> 1;
      if ((v37 & 1) == 0)
      {
        v41 = v40 - v12;
        if (__OFSUB__(v40, v12))
        {
          goto LABEL_118;
        }

        if (v41)
        {
          goto LABEL_82;
        }

LABEL_99:
        v42 = MEMORY[0x1E69E7CC0];
        goto LABEL_100;
      }

      sub_1BC8F8AD4();
      swift_unknownObjectRetain_n();
      v44 = swift_dynamicCastClass();
      if (!v44)
      {
        swift_unknownObjectRelease();
        v44 = MEMORY[0x1E69E7CC0];
      }

      v30 = *(v44 + 16);

      v41 = v40 - v12;
      if (__OFSUB__(v40, v12))
      {
        goto LABEL_120;
      }

      if (v30 != v41)
      {
        swift_unknownObjectRelease();
        if (!v41)
        {
          goto LABEL_99;
        }

LABEL_82:
        if (v41 < 1)
        {
          v42 = MEMORY[0x1E69E7CC0];
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DF0, &qword_1BC9041D0);
          v42 = swift_allocObject();
          _swift_stdlib_malloc_size(v42);
          OUTLINED_FUNCTION_102();
          v42[2] = v41;
          v42[3] = v43;
        }

        if (v12 == v40)
        {
          goto LABEL_126;
        }

        type metadata accessor for Message(0);
        swift_arrayInitWithCopy();
LABEL_100:
        a1 = v53;
        v8 = a2 >> 62;
        v5 = v55;
        goto LABEL_101;
      }

      v42 = swift_dynamicCastClass();
      swift_unknownObjectRelease();
      a1 = v53;
      v8 = a2 >> 62;
      v5 = v55;
      if (v42)
      {
        goto LABEL_102;
      }

      v42 = MEMORY[0x1E69E7CC0];
LABEL_101:
      swift_unknownObjectRelease();
LABEL_102:
      OUTLINED_FUNCTION_120();
      if (v26)
      {
        v47 = OUTLINED_FUNCTION_37(v46);
        sub_1BC7DDCA4(v47, v38, 1);
        v7 = v57;
      }

      *(v7 + 16) = v38;
      *(v7 + 8 * v30 + 32) = v42;
      v12 = v31;
    }
  }

LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

void sub_1BC80FA88(uint64_t result, uint64_t a2)
{
  if (result)
  {
    v5 = OUTLINED_FUNCTION_93(result, a2);
    v36 = MEMORY[0x1E69E7CC0];
    sub_1BC7DDCE4(0, v5 & ~(v5 >> 63), 0);
    if (v5 < 0)
    {
      goto LABEL_64;
    }

    if (!v5)
    {
      v9 = 0;
LABEL_30:
      v18 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        v19 = v4 >= v9;
        if (v3 > 0)
        {
          v19 = v9 >= v4;
        }

        if (v19)
        {
          return;
        }

        if (__OFADD__(v9, v3))
        {
          v20 = ((v9 + v3) >> 63) ^ 0x8000000000000000;
        }

        else
        {
          v20 = v9 + v3;
        }

        if (__OFADD__(v9, v3))
        {
          __break(1u);
LABEL_57:
          __break(1u);
LABEL_58:
          __break(1u);
          goto LABEL_59;
        }

        OUTLINED_FUNCTION_119();
        v22 = v21 - v9;
        if (v21 < v9)
        {
          goto LABEL_57;
        }

        if (v9 < 0)
        {
          goto LABEL_58;
        }

        if (v4 == v22)
        {

          v23 = v2;
        }

        else
        {
          v23 = v18;
          if (v21 != v9)
          {
            if (v22 < 1)
            {
              v23 = v18;
            }

            else
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE8, &qword_1BC902B90);
              v26 = sub_1BC8F7264();
              OUTLINED_FUNCTION_26(v26);
              v33 = (*(v28 + 80) + 32) & ~*(v28 + 80);
              v35 = *(v27 + 72);
              v23 = swift_allocObject();
              v29 = _swift_stdlib_malloc_size(v23);
              if (!v35)
              {
                goto LABEL_65;
              }

              if (v29 - v33 == 0x8000000000000000 && v35 == -1)
              {
                goto LABEL_67;
              }

              v23[2] = v22;
              v23[3] = 2 * ((v29 - v33) / v35);
            }

            sub_1BC8F7264();
            OUTLINED_FUNCTION_129();
            swift_arrayInitWithCopy();
          }
        }

        v25 = *(v36 + 16);
        v24 = *(v36 + 24);
        if (v25 >= v24 >> 1)
        {
          v31 = OUTLINED_FUNCTION_37(v24);
          sub_1BC7DDCE4(v31, v25 + 1, 1);
        }

        *(v36 + 16) = v25 + 1;
        *(v36 + 8 * v25 + 32) = v23;
        v9 = v20;
      }
    }

    v6 = 0;
    v34 = *(sub_1BC8F7264() - 8);
    v7 = (*(v34 + 80) + 32) & ~*(v34 + 80);
    while (1)
    {
      v8 = v4 >= v6;
      if (v3 > 0)
      {
        v8 = v6 >= v4;
      }

      if (v8)
      {
        break;
      }

      if (__OFADD__(v6, v3))
      {
        v9 = ((v6 + v3) >> 63) ^ 0x8000000000000000;
      }

      else
      {
        v9 = v6 + v3;
      }

      if (__OFADD__(v6, v3))
      {
        goto LABEL_60;
      }

      OUTLINED_FUNCTION_119();
      v11 = v10 - v6;
      if (v10 < v6)
      {
        goto LABEL_61;
      }

      if (v6 < 0)
      {
        goto LABEL_62;
      }

      if (v4 == v11)
      {

        v12 = v2;
      }

      else
      {
        v12 = MEMORY[0x1E69E7CC0];
        if (v10 != v6)
        {
          if (v11 >= 1)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE8, &qword_1BC902B90);
            v32 = *(v34 + 72);
            v12 = swift_allocObject();
            v15 = _swift_stdlib_malloc_size(v12);
            if (!v32)
            {
              goto LABEL_66;
            }

            if (v15 - v7 == 0x8000000000000000 && v32 == -1)
            {
              goto LABEL_68;
            }

            v12[2] = v11;
            v12[3] = 2 * ((v15 - v7) / v32);
          }

          swift_arrayInitWithCopy();
        }
      }

      v14 = *(v36 + 16);
      v13 = *(v36 + 24);
      if (v14 >= v13 >> 1)
      {
        v17 = OUTLINED_FUNCTION_37(v13);
        sub_1BC7DDCE4(v17, v14 + 1, 1);
      }

      *(v36 + 16) = v14 + 1;
      *(v36 + 8 * v14 + 32) = v12;
      v6 = v9;
      if (!--v5)
      {
        goto LABEL_30;
      }
    }

LABEL_59:
    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

void sub_1BC80FE9C(uint64_t result, uint64_t a2)
{
  if (!result)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v5 = OUTLINED_FUNCTION_93(result, a2);
  v25 = MEMORY[0x1E69E7CC0];
  sub_1BC7DDDA4(0, v5 & ~(v5 >> 63), 0);
  if (v5 < 0)
  {
LABEL_52:
    __break(1u);
    return;
  }

  if (!v5)
  {
    v8 = 0;
    goto LABEL_25;
  }

  v6 = 0;
  do
  {
    v7 = v4 >= v6;
    if (v3 > 0)
    {
      v7 = v6 >= v4;
    }

    if (v7)
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    if (__OFADD__(v6, v3))
    {
      v8 = ((v6 + v3) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v8 = v6 + v3;
    }

    if (__OFADD__(v6, v3))
    {
      goto LABEL_48;
    }

    OUTLINED_FUNCTION_119();
    v10 = v9 - v6;
    if (v9 < v6)
    {
      goto LABEL_49;
    }

    if (v6 < 0)
    {
      goto LABEL_50;
    }

    if (v4 == v10)
    {

      v11 = v2;
    }

    else
    {
      v11 = MEMORY[0x1E69E7CC0];
      if (v9 != v6)
      {
        if (v10 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F38, &unk_1BC8FC6E0);
          v11 = swift_allocObject();
          v14 = _swift_stdlib_malloc_size(v11);
          v11[2] = v10;
          v11[3] = 2 * ((v14 - 32) / 40);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
        swift_arrayInitWithCopy();
      }
    }

    v13 = *(v25 + 16);
    v12 = *(v25 + 24);
    if (v13 >= v12 >> 1)
    {
      v15 = OUTLINED_FUNCTION_37(v12);
      sub_1BC7DDDA4(v15, v13 + 1, 1);
    }

    *(v25 + 16) = v13 + 1;
    *(v25 + 8 * v13 + 32) = v11;
    v6 = v8;
    --v5;
  }

  while (v5);
  while (1)
  {
LABEL_25:
    v16 = v4 >= v8;
    if (v3 > 0)
    {
      v16 = v8 >= v4;
    }

    if (v16)
    {
      break;
    }

    if (__OFADD__(v8, v3))
    {
      v17 = ((v8 + v3) >> 63) ^ 0x8000000000000000;
    }

    else
    {
      v17 = v8 + v3;
    }

    if (__OFADD__(v8, v3))
    {
      __break(1u);
LABEL_45:
      __break(1u);
LABEL_46:
      __break(1u);
      goto LABEL_47;
    }

    OUTLINED_FUNCTION_119();
    v19 = v18 - v8;
    if (v18 < v8)
    {
      goto LABEL_45;
    }

    if (v8 < 0)
    {
      goto LABEL_46;
    }

    if (v4 == v19)
    {

      v20 = v2;
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC0];
      if (v18 != v8)
      {
        if (v19 >= 1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F38, &unk_1BC8FC6E0);
          v20 = swift_allocObject();
          v23 = _swift_stdlib_malloc_size(v20);
          v20[2] = v19;
          v20[3] = 2 * ((v23 - 32) / 40);
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F40, &unk_1BC900B00);
        swift_arrayInitWithCopy();
      }
    }

    v22 = *(v25 + 16);
    v21 = *(v25 + 24);
    if (v22 >= v21 >> 1)
    {
      v24 = OUTLINED_FUNCTION_37(v21);
      sub_1BC7DDDA4(v24, v22 + 1, 1);
    }

    *(v25 + 16) = v22 + 1;
    *(v25 + 8 * v22 + 32) = v20;
    v8 = v17;
  }
}

unint64_t sub_1BC8101C8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1BC82F06C(0, result, v3);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      v6 = sub_1BC7F2470(0, v5, a2);

      return v6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC81025C(unint64_t a1)
{
  if (a1 >> 62)
  {
    v4 = sub_1BC8F8504();
    if (v4)
    {
      v5 = v4;
      v2 = sub_1BC7F7898(v4, 0);

      sub_1BC82F0B8(v2 + 32, v5, a1);
      v7 = v6;

      if (v7 == v5)
      {
        goto LABEL_3;
      }

      __break(1u);
    }

    v2 = MEMORY[0x1E69E7CC0];
    goto LABEL_3;
  }

  v2 = a1 & 0xFFFFFFFFFFFFFF8;

LABEL_3:
  v8 = v2;
  sub_1BC82DF7C(&v8);
  return v8;
}

uint64_t sub_1BC810338()
{
  v1 = *(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_accountInfoLock);
  os_unfair_lock_lock(v1 + 4);
  sub_1BC82F470(&v4, v2);
  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

void sub_1BC8103A8(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_accountInfoLock);
  os_unfair_lock_lock(v3 + 4);
  sub_1BC830540(v4);
  os_unfair_lock_unlock(v3 + 4);
}

void sub_1BC810420(uint64_t a1, void *a2)
{
  v2 = *(a1 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_wrappedAccountInfo);
  *(a1 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_wrappedAccountInfo) = a2;
  v3 = a2;
}

unint64_t sub_1BC81045C()
{
  v1 = *(v0 + 64);
  v2 = sub_1BC8F7BE4();
  v3 = [v1 objectForKey_];

  if (!v3)
  {
    memset(v8, 0, sizeof(v8));
    sub_1BC7C1744(v8, &unk_1EBCF5E50, &qword_1BC8FE850);
    v7 = 1;
    sub_1BC817FE8(1);
LABEL_7:
    *(v0 + 72) = v7;
    return v7;
  }

  sub_1BC8F8474();
  swift_unknownObjectRelease();
  sub_1BC7C1744(v8, &unk_1EBCF5E50, &qword_1BC8FE850);
  v4 = sub_1BC8F7BE4();
  v5 = [v1 integerForKey_];

  result = sub_1BC7FC8C0(v5);
  if (result != 6)
  {
    if ((result & 0xFE) != 0)
    {
      v7 = result;
    }

    else
    {
      v7 = 1;
    }

    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1BC8105A4()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B268);
  v2 = sub_1BC8F7714();
  sub_1BC8F81C4();
  v3 = OUTLINED_FUNCTION_21_8();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_45();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v5);
    OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v6, v7, "Updating total and unread counts during bringup.");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = swift_task_alloc();
  *(v0 + 24) = v8;
  *v8 = v0;
  v8[1] = sub_1BC8106B8;

  return sub_1BC810798();
}

uint64_t sub_1BC8106B8()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_1BC8107AC()
{
  OUTLINED_FUNCTION_32();
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  *(v0 + 128) = __swift_project_value_buffer(v1, qword_1EDC2B268);
  v2 = sub_1BC8F7714();
  sub_1BC8F8204();
  v3 = OUTLINED_FUNCTION_21_8();
  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_45();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v5);
    OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v6, v7, "Updating total and unread counts");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_1BC8108D0;

  return sub_1BC813D30(v0 + 96);
}

uint64_t sub_1BC8108D0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 144) = v0;

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8109C8()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD0, &unk_1BC8FC250);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1BC8FE840;
  *(inited + 32) = 5;
  *(inited + 40) = v1;
  *(inited + 48) = 6;
  *(inited + 56) = v2;
  *(inited + 64) = 4;
  *(inited + 72) = v3;
  BadgeManager.notifyBadgeCounts(_:)(inited);
  swift_setDeallocating();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1BC810A90()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = *(v0 + 144);
  v2 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  v3 = OUTLINED_FUNCTION_137();
  v4 = *(v0 + 144);
  if (v3)
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_61_1();
    v5 = swift_slowAlloc();
    v6 = OUTLINED_FUNCTION_125_0(5.8381e-34);
    v7 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v7);
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v8, v9, v10, v11, v12, v13);
    sub_1BC7C1744(v5, &unk_1EBCF5DB0, &unk_1BC900410);
    v14 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v14);
    v15 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v15);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23);
}

uint64_t sub_1BC810BA4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v1);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v2);
  sub_1BC8F7FC4();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  OUTLINED_FUNCTION_41_0();
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v0;

  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();
}

uint64_t sub_1BC810C70()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1BC810D00;

  return sub_1BC810F5C();
}

uint64_t sub_1BC810D00()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  OUTLINED_FUNCTION_10_0();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v5 = v4;
  *(v6 + 24) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_1BC810E14()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v2, qword_1EDC2B268);
  v3 = v1;
  v4 = sub_1BC8F7714();
  sub_1BC8F81E4();
  OUTLINED_FUNCTION_138();
  v5 = OUTLINED_FUNCTION_137();
  v6 = *(v0 + 24);
  if (v5)
  {
    OUTLINED_FUNCTION_9();
    swift_slowAlloc();
    OUTLINED_FUNCTION_61_1();
    v7 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_125_0(5.8381e-34);
    v9 = _swift_stdlib_bridgeErrorToNSError();
    OUTLINED_FUNCTION_124(v9);
    OUTLINED_FUNCTION_44_4();
    _os_log_impl(v10, v11, v12, v13, v14, v15);
    sub_1BC7C1744(v7, &unk_1EBCF5DB0, &unk_1BC900410);
    v16 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v16);
    v17 = OUTLINED_FUNCTION_13_2();
    MEMORY[0x1BFB2AA50](v17);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v19(v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1BC810F5C()
{
  OUTLINED_FUNCTION_5();
  v1[15] = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v1[16] = v2;
  OUTLINED_FUNCTION_26(v2);
  v1[17] = v3;
  v1[18] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC811010()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[15];
  OUTLINED_FUNCTION_21_4();
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x1E69E7CD0];
  v3 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_queue;
  v0[19] = v2;
  v0[20] = v3;
  OUTLINED_FUNCTION_34();
  v4 = swift_allocObject();
  v0[21] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;

  v5 = OUTLINED_FUNCTION_65_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC8110C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v13 = v12[21];
  v12[2] = v14;
  v15 = OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &unk_1BC902BF8;
  v16[4] = v13;
  OUTLINED_FUNCTION_34();
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_1BC902C00;
  *(v17 + 24) = v16;
  v12[13] = &unk_1BC902C08;
  v12[14] = v17;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_56_1(v18);
  v19 = OUTLINED_FUNCTION_30();
  v20(v19);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1BC8111F0()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    swift_willThrow();
  }

  else
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC811300()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 152);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (*(*(v1 + 16) + 16) && swift_unknownObjectWeakLoadStrong())
  {

    v3 = sub_1BC899AAC(v2);
    sub_1BC87B8F0(v3);
    swift_unknownObjectRelease();
  }

  OUTLINED_FUNCTION_11();

  return v4();
}

uint64_t sub_1BC8113D8()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC811448()
{
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v1 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B268);
  v2 = sub_1BC8F7714();
  v3 = sub_1BC8F8204();
  v4 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_45();
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1BC7A3000, v2, v3, "Setting up listeners for CoreData change notifications", v6, 2u);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_99();
  v8 = *(v0 + 16);
  v7 = (v0 + 16);

  v9 = OUTLINED_FUNCTION_19_9();
  v8(v9);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_99();
  v10 = v7[5];
  v7 += 5;

  v11 = OUTLINED_FUNCTION_19_9();
  v10(v11);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_99();
  v12 = v7[11];
  v7 += 11;

  v13 = OUTLINED_FUNCTION_19_9();
  v12(v13);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_99();
  v14 = v7[8];

  v15 = OUTLINED_FUNCTION_19_9();
  v14(v15);
  OUTLINED_FUNCTION_70();
  OUTLINED_FUNCTION_99();
  v16 = v7[22];

  v17 = OUTLINED_FUNCTION_19_9();
  v16(v17);
  return swift_endAccess();
}

void sub_1BC811634(uint64_t a1, void *a2)
{
  v3 = sub_1BC8F6CF4();
  [a2 storeMergedChanges_];
}

void sub_1BC811690(uint64_t a1, void *a2)
{
  v3 = sub_1BC8F6CF4();
  [a2 storeDidSave_];
}

void sub_1BC8116EC(uint64_t a1, void *a2)
{
  v3 = sub_1BC8F6CF4();
  [a2 didResetSync_];
}

void sub_1BC811748(uint64_t a1, void *a2)
{
  v3 = sub_1BC8F6CF4();
  [a2 willResetSync_];
}

uint64_t sub_1BC8117A4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v4);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1BC8F6D24();
  OUTLINED_FUNCTION_0();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_12();
  v12 = v11 - v10;
  if (qword_1EDC1E1D8 != -1)
  {
    OUTLINED_FUNCTION_66(&qword_1EDC1E1D8);
  }

  v13 = sub_1BC8F7734();
  __swift_project_value_buffer(v13, qword_1EDC2B280);
  (*(v8 + 16))(v12, a1, v6);
  v14 = sub_1BC8F7714();
  v15 = sub_1BC8F8204();
  if (os_log_type_enabled(v14, v15))
  {
    OUTLINED_FUNCTION_9();
    v32 = v2;
    v16 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v16 = 136446210;
    sub_1BC7AAAD0(&unk_1EDC1FF10, MEMORY[0x1E6968160]);
    v18 = sub_1BC8F8A54();
    v20 = v19;
    v21 = OUTLINED_FUNCTION_79();
    v22(v21);
    v23 = sub_1BC7A9A4C(v18, v20, &v33);

    *(v16 + 4) = v23;
    _os_log_impl(&dword_1BC7A3000, v14, v15, "CKAccountChanged notification received: %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v2 = v32;
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  else
  {

    v24 = OUTLINED_FUNCTION_79();
    v25(v24);
  }

  sub_1BC8F7FC4();
  OUTLINED_FUNCTION_122();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  OUTLINED_FUNCTION_41_0();
  v30 = swift_allocObject();
  v30[2] = 0;
  v30[3] = 0;
  v30[4] = v2;

  OUTLINED_FUNCTION_85();
  sub_1BC8333D4();
}

uint64_t sub_1BC811A88()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  __swift_destroy_boxed_opaque_existential_1((v0 + 88));
  sub_1BC830350(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_queue, type metadata accessor for AsyncSerialQueue);
  sub_1BC7C1744(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_voicemailController, &qword_1EBCF58F8, &qword_1BC9034D0);

  sub_1BC7CF604(v0 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_delegate);
  swift_weakDestroy();
  return v0;
}

uint64_t sub_1BC811B74()
{
  sub_1BC811A88();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for CoreDataMessageStore(uint64_t a1)
{
  result = qword_1EDC1FD68;
  if (!qword_1EDC1FD68)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BC811C20(uint64_t a1)
{
  sub_1BC811D20(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1BC811D20(uint64_t a1)
{
  if (!qword_1EDC20678)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EBCF4E90, &qword_1BC8FC3D0);
    v1 = sub_1BC8F7FE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDC20678);
    }
  }
}

uint64_t sub_1BC811D84()
{
  OUTLINED_FUNCTION_5();
  v1[12] = v2;
  v1[13] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v1[14] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[15] = v4;
  v1[16] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC811E38()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[12];
  v2 = v0[13];
  v0[17] = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_queue;
  OUTLINED_FUNCTION_34();
  v3 = swift_allocObject();
  v0[18] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = OUTLINED_FUNCTION_65_0();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1BC811ED0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v13 = v12[18];
  v12[2] = v14;
  v15 = OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &unk_1BC902CD0;
  v16[4] = v13;
  OUTLINED_FUNCTION_34();
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_1BC902CD8;
  *(v17 + 24) = v16;
  v12[10] = &unk_1BC902CE0;
  v12[11] = v17;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_56_1(v18);
  v19 = OUTLINED_FUNCTION_30();
  v20(v19);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1BC811FF8()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v2 = v1;
  OUTLINED_FUNCTION_11_1();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;
  v6 = *(v5 + 48);
  *(v2 + 152) = v6;
  if (v6)
  {
    swift_willThrow();
    v7 = OUTLINED_FUNCTION_59_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = swift_task_alloc();
    *(v2 + 160) = v10;
    *v10 = v4;
    OUTLINED_FUNCTION_89(v10);

    return sub_1BC810798();
  }
}

uint64_t sub_1BC812154()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_11();

  return v3();
}

uint64_t sub_1BC812250(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1BC812270, 0, 0);
}

uint64_t sub_1BC812270()
{
  OUTLINED_FUNCTION_32();
  sub_1BC8122E4(*(v0 + 24));
  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_1BC8122E4(uint64_t a1)
{
  v8[3] = a1;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v4 = *(v1 + 112);
  v5 = *(v1 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 88, v4);
  (*(v5 + 128))(sub_1BC82FD28, v8, MEMORY[0x1E69E7CA8] + 8, v4, v5);
  result = swift_endAccess();
  if (!v2)
  {
    result = sub_1BC7C0454(a1);
    if (result >= 2)
    {
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      OUTLINED_FUNCTION_108();
      OUTLINED_FUNCTION_63_0();
      OUTLINED_FUNCTION_86();
      v7();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1BC81240C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[17] = a3;
  v4[18] = v3;
  v4[15] = a1;
  v4[16] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v4[19] = v5;
  v4[20] = *(v5 - 8);
  v4[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8124DC, 0, 0);
}

uint64_t sub_1BC8124DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v12[2] = v14;
  OUTLINED_FUNCTION_78_1((v12 + 10));
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_29_4(v15);
  OUTLINED_FUNCTION_34();
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1BC902A30;
  *(v16 + 24) = v13;
  v12[13] = &unk_1BC902A38;
  v12[14] = v16;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_64_0(v17);
  v18 = OUTLINED_FUNCTION_28_5();
  v19(v18);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

void sub_1BC8125EC()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  if (*(v3 + 48))
  {
    swift_willThrow();
  }

  else
  {
    v4 = *(v1 + 120);
    v5 = *(v1 + 96);
    *v4 = *(v1 + 80);
    *(v4 + 16) = v5;
  }

  OUTLINED_FUNCTION_87_0();
  OUTLINED_FUNCTION_40_4();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_1BC812710(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8127E0, 0, 0);
}

uint64_t sub_1BC8127E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v12[2] = v14;
  OUTLINED_FUNCTION_78_1((v12 + 12));
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_29_4(v15);
  OUTLINED_FUNCTION_34();
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1BC902C30;
  *(v16 + 24) = v13;
  v12[10] = &unk_1BC902C38;
  v12[11] = v16;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_64_0(v17);
  v18 = OUTLINED_FUNCTION_28_5();
  v19(v18);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1BC8128F0(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC8129C0, 0, 0);
}

uint64_t sub_1BC8129C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v12[2] = v14;
  OUTLINED_FUNCTION_78_1((v12 + 18));
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_29_4(v15);
  OUTLINED_FUNCTION_34();
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1BC902CA0;
  *(v16 + 24) = v13;
  v12[10] = &unk_1BC902CA8;
  v12[11] = v16;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_64_0(v17);
  v18 = OUTLINED_FUNCTION_28_5();
  v19(v18);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

void sub_1BC812AD0()
{
  OUTLINED_FUNCTION_22_0();
  OUTLINED_FUNCTION_132_0();
  OUTLINED_FUNCTION_10_0();
  *v2 = v1;
  *v2 = *v0;
  if (*(v3 + 48))
  {
    swift_willThrow();

    OUTLINED_FUNCTION_87_0();
    OUTLINED_FUNCTION_40_4();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_40_4();

  __asm { BRAA            X2, X16 }
}

uint64_t sub_1BC812C34(uint64_t a1, uint64_t a2)
{
  v3[14] = a2;
  v3[15] = v2;
  v3[13] = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BC812D04, 0, 0);
}

uint64_t sub_1BC812D04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v12[2] = v14;
  OUTLINED_FUNCTION_78_1((v12 + 12));
  OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v15 = swift_allocObject();
  OUTLINED_FUNCTION_29_4(v15);
  OUTLINED_FUNCTION_34();
  v16 = swift_allocObject();
  *(v16 + 16) = &unk_1BC902B78;
  *(v16 + 24) = v13;
  v12[10] = &unk_1BC902B80;
  v12[11] = v16;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_64_0(v17);
  v18 = OUTLINED_FUNCTION_28_5();
  v19(v18);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1BC812E14(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v67 = &v62 - v8;
  KeyPath = swift_getKeyPath();
  v10 = sub_1BC8134DC(KeyPath, a3);

  v73 = MEMORY[0x1E69E7CC0];
  v11 = sub_1BC7C0454(a1);
  v13 = &unk_1EDC1E000;
  if (v11)
  {
    v14 = v11;
    if (v11 < 1)
    {
      __break(1u);
LABEL_35:
      swift_once();
      goto LABEL_30;
    }

    v63 = v4;
    v15 = 0;
    v70 = *(v3 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache);
    v68 = v10;
    v69 = a1 & 0xC000000000000001;
    v10 = MEMORY[0x1E69E7CC0];
    *&v12 = 138543362;
    v64 = v12;
    v66 = a1;
    do
    {
      if (v69)
      {
        v16 = MEMORY[0x1BFB29A00](v15, a1);
      }

      else
      {
        v16 = *(a1 + 8 * v15 + 32);
      }

      v17 = v16;
      objc_allocWithZone(type metadata accessor for Message(0));
      v18 = v17;
      v19 = v70;

      v72 = 1;
      sub_1BC86A9C0(v18, 0x100000000, v19, v20, v21, v22, v23, v24, v62, v63, v64, *(&v64 + 1), v65, v66, v67, v68, v69, v70, *v71, *&v71[8]);
      if (v25)
      {
        v26 = v25;
        v27 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
        swift_beginAccess();
        if (*&v26[v27] != 2)
        {
          v28 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
          swift_beginAccess();
          v29 = sub_1BC8F7264();
          v30 = v67;
          (*(*(v29 - 8) + 16))(v67, &v26[v28], v29);
          __swift_storeEnumTagSinglePayload(v30, 0, 1, v29);
          v31 = v68;
          if (*(v68 + 16) && (v32 = sub_1BC83C9A8(v30), (v33 & 1) != 0))
          {
            v34 = *(*(v31 + 56) + 8 * v32);
            sub_1BC7C1744(v30, &unk_1EBCF5D70, &qword_1BC8FC740);
            v35 = [v34 voicemailID];

            v36 = &v26[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
            swift_beginAccess();
            *v36 = v35;
            v36[4] = 0;
          }

          else
          {
            sub_1BC7C1744(v30, &unk_1EBCF5D70, &qword_1BC8FC740);
            if (v13[58] != -1)
            {
              swift_once();
            }

            v46 = sub_1BC8F7734();
            __swift_project_value_buffer(v46, qword_1EDC2B268);
            v47 = v26;
            v48 = sub_1BC8F7714();
            v49 = sub_1BC8F81E4();

            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              *v50 = v64;
              *(v50 + 4) = v47;
              *v51 = v26;
              v52 = v47;
              _os_log_impl(&dword_1BC7A3000, v48, v49, "Couldn't find voicemailID for message: %{public}@", v50, 0xCu);
              sub_1BC7C1744(v51, &unk_1EBCF5DB0, &unk_1BC900410);
              v53 = v51;
              v13 = &unk_1EDC1E000;
              MEMORY[0x1BFB2AA50](v53, -1, -1);
              v54 = v50;
              a1 = v66;
              MEMORY[0x1BFB2AA50](v54, -1, -1);
            }
          }
        }

        v55 = v26;
        MEMORY[0x1BFB29230]();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();

        v10 = v73;
      }

      else
      {
        if (v13[58] != -1)
        {
          swift_once();
        }

        v37 = sub_1BC8F7734();
        __swift_project_value_buffer(v37, qword_1EDC2B268);
        v38 = v18;
        v39 = sub_1BC8F7714();
        v40 = sub_1BC8F81F4();

        if (os_log_type_enabled(v39, v40))
        {
          v41 = swift_slowAlloc();
          v42 = swift_slowAlloc();
          *v41 = v64;
          *(v41 + 4) = v38;
          *v42 = v38;
          v43 = v38;
          _os_log_impl(&dword_1BC7A3000, v39, v40, "Failed to convert stored message to message! %{public}@", v41, 0xCu);
          sub_1BC7C1744(v42, &unk_1EBCF5DB0, &unk_1BC900410);
          v44 = v42;
          a1 = v66;
          MEMORY[0x1BFB2AA50](v44, -1, -1);
          v45 = v41;
          v13 = &unk_1EDC1E000;
          MEMORY[0x1BFB2AA50](v45, -1, -1);
        }

        else
        {
        }
      }

      ++v15;
    }

    while (v14 != v15);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v56 = sub_1BC7C0454(a1);
  if (v56 == sub_1BC7C0454(v10))
  {
    return v10;
  }

  if (v13[58] != -1)
  {
    goto LABEL_35;
  }

LABEL_30:
  v57 = sub_1BC8F7734();
  __swift_project_value_buffer(v57, qword_1EDC2B268);

  v58 = sub_1BC8F7714();
  v59 = sub_1BC8F81F4();
  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    *v60 = 134349312;
    *(v60 + 4) = sub_1BC7C0454(a1);

    *(v60 + 12) = 2050;
    *(v60 + 14) = sub_1BC7C0454(v10);

    _os_log_impl(&dword_1BC7A3000, v58, v59, "StoredMessage count (%{public}ld is not equal to Message count (%{public}ld!", v60, 0x16u);
    MEMORY[0x1BFB2AA50](v60, -1, -1);
  }

  else
  {
  }

  return v10;
}

uint64_t sub_1BC8134DC(uint64_t a1, unint64_t a2)
{
  v35 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v31 = *(v3 - 8);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v29 - v7;
  if (a2 >> 62)
  {
LABEL_24:
    v9 = sub_1BC8F8504();
    if (v9)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
LABEL_3:
      v29 = v3;
      v10 = 0;
      v34 = a2 & 0xC000000000000001;
      v3 = MEMORY[0x1E69E7CC8];
      v30 = a2 & 0xFFFFFFFFFFFFFF8;
      v32 = v9;
      v33 = a2;
      while (1)
      {
        if (v34)
        {
          v11 = MEMORY[0x1BFB29A00](v10, a2);
        }

        else
        {
          if (v10 >= *(v30 + 16))
          {
            goto LABEL_23;
          }

          v11 = *(a2 + 8 * v10 + 32);
        }

        v38 = v11;
        if (__OFADD__(v10, 1))
        {
          __break(1u);
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          __break(1u);
          goto LABEL_24;
        }

        v12 = v11;
        v36 = v10 + 1;
        swift_getAtKeyPath();
        v13 = v8;
        sub_1BC830400();
        swift_isUniquelyReferenced_nonNull_native();
        v37 = v3;
        v14 = v6;
        v15 = sub_1BC83C9A8(v6);
        v17 = *(v3 + 16);
        v18 = (v16 & 1) == 0;
        v6 = (v17 + v18);
        if (__OFADD__(v17, v18))
        {
          goto LABEL_21;
        }

        v19 = v15;
        v20 = v16;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5920, &qword_1BC902B40);
        if (sub_1BC8F8734())
        {
          v6 = v14;
          v21 = sub_1BC83C9A8(v14);
          if ((v20 & 1) != (v22 & 1))
          {
            result = sub_1BC8F8B44();
            __break(1u);
            return result;
          }

          v19 = v21;
        }

        else
        {
          v6 = v14;
        }

        v3 = v37;
        if (v20)
        {
          v23 = *(v37 + 56);
          v24 = *(v23 + 8 * v19);
          *(v23 + 8 * v19) = v12;

          sub_1BC7C1744(v6, &unk_1EBCF5D70, &qword_1BC8FC740);
          v8 = v13;
          sub_1BC7C1744(v13, &unk_1EBCF5D70, &qword_1BC8FC740);
        }

        else
        {
          *(v37 + 8 * (v19 >> 6) + 64) |= 1 << v19;
          a2 = &qword_1BC8FC740;
          sub_1BC830400();
          *(*(v3 + 56) + 8 * v19) = v12;
          sub_1BC7C1744(v6, &unk_1EBCF5D70, &qword_1BC8FC740);
          v8 = v13;
          sub_1BC7C1744(v13, &unk_1EBCF5D70, &qword_1BC8FC740);
          v25 = *(v3 + 16);
          v26 = __OFADD__(v25, 1);
          v27 = v25 + 1;
          if (v26)
          {
            goto LABEL_22;
          }

          *(v3 + 16) = v27;
        }

        ++v10;
        a2 = v33;
        if (v36 == v32)
        {
          return v3;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC8];
}

uint64_t sub_1BC813838()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

id sub_1BC81389C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v38 - v10;
  v12 = sub_1BC8F7264();
  v43 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(a1 + *(type metadata accessor for MessageStoreFetchRequest(0) + 20));
  if (v15 >> 60 != 10)
  {
    v48 = v15;
    v22 = sub_1BC7BC08C(&v48, a3);
    type metadata accessor for FTStoredMessage();
    v16 = sub_1BC8F8304();

    return v16;
  }

  v40 = a3;
  v41 = v14;
  type metadata accessor for FTLocalMessageProperties();
  v16 = static FTLocalMessageProperties.fetchRequest()();
  v17 = [v16 setFetchBatchSize_];
  v48 = v15;
  v18 = sub_1BC7E61F8(v17);
  [v16 setPredicate_];

  v19 = v47;
  v20 = sub_1BC8F8314();
  v21 = v19;
  if (v19)
  {

    return v16;
  }

  v24 = v20;
  v47 = v16;
  v38[0] = 0;
  v38[1] = a1;
  v38[2] = a2;
  result = sub_1BC7C0454(v20);
  v45 = v24 & 0xC000000000000001;
  v46 = result;
  v44 = v24 & 0xFFFFFFFFFFFFFF8;
  v42 = MEMORY[0x1E69E7CC0];
  v39 = (v43 + 32);
  while (1)
  {
    v25 = v47;
    if (v46 == v21)
    {
      v36 = swift_allocObject();

      *(v36 + 16) = v42;
      v48 = v36 | 0x1000000000000000;
      v37 = sub_1BC7BC08C(&v48, v40);
      type metadata accessor for FTStoredMessage();
      v16 = sub_1BC8F8304();

      return v16;
    }

    if (v45)
    {
      result = MEMORY[0x1BFB29A00](v21, v24);
    }

    else
    {
      if (v21 >= *(v44 + 16))
      {
        goto LABEL_25;
      }

      result = *(v24 + 8 * v21 + 32);
    }

    v26 = result;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    v27 = [result recordUUID];
    if (v27)
    {
      v28 = v27;
      sub_1BC8F7244();

      v29 = 0;
    }

    else
    {
      v29 = 1;
    }

    __swift_storeEnumTagSinglePayload(v9, v29, 1, v12);
    sub_1BC830458();
    if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
    {
      result = sub_1BC7C1744(v11, &unk_1EBCF5D70, &qword_1BC8FC740);
      ++v21;
    }

    else
    {
      v30 = *v39;
      (*v39)(v41, v11, v12);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BC7F7144();
        v42 = v34;
      }

      v31 = *(v42 + 16);
      if (v31 >= *(v42 + 24) >> 1)
      {
        sub_1BC7F7144();
        v42 = v35;
      }

      v33 = v42;
      v32 = v43;
      *(v42 + 16) = v31 + 1;
      result = v30((v33 + ((*(v32 + 80) + 32) & ~*(v32 + 80)) + *(v32 + 72) * v31), v41, v12);
      ++v21;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
  return result;
}

uint64_t sub_1BC813D30(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC813D44()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_74_0();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_1BC813E10;
  v2 = v0[2];
  v3 = v0[3];

  return v5(v2, &unk_1BC902A18, v3);
}

uint64_t sub_1BC813E10()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 40) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_27();

    return v10();
  }
}

uint64_t sub_1BC813F2C()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC813F88(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BC813FA8, 0, 0);
}

uint64_t sub_1BC813FA8()
{
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_21_4();
  v2 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4F70, &qword_1BC900B30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1BC8FE840;
  v4 = OUTLINED_FUNCTION_109();
  *(v4 + 16) = 0;
  *(v3 + 32) = v4 | 0x7000000000000000;
  OUTLINED_FUNCTION_21_4();
  v5 = swift_allocObject();
  *(v5 + 16) = &unk_1F3B366E8;
  *(v3 + 40) = v5 | 0x4000000000000000;
  OUTLINED_FUNCTION_21_4();
  v6 = swift_allocObject();
  *(v6 + 16) = &unk_1F3B36710;
  *(v3 + 48) = v6 | 0x8000000000000000;
  *(v2 + 16) = v3;
  v25 = v2 | 0xC000000000000000;
  OUTLINED_FUNCTION_21_4();
  v7 = swift_allocObject();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1BC8FC240;
  v9 = OUTLINED_FUNCTION_109();
  *(v9 + 16) = 0;
  *(v8 + 32) = v9 | 0x7000000000000000;
  OUTLINED_FUNCTION_21_4();
  v10 = swift_allocObject();
  *(v10 + 16) = &unk_1F3B36738;
  *(v8 + 40) = v10 | 0x4000000000000000;
  OUTLINED_FUNCTION_21_4();
  v11 = swift_allocObject();
  OUTLINED_FUNCTION_21_4();
  v12 = swift_allocObject();
  *(v12 + 16) = &unk_1F3B36760;
  *(v11 + 16) = v12 | 0x6000000000000000;
  *(v8 + 48) = v11 | 0xB000000000000000;
  OUTLINED_FUNCTION_21_4();
  v13 = swift_allocObject();
  *(v13 + 16) = &unk_1F3B36788;
  *(v8 + 56) = v13 | 0x8000000000000000;
  *(v7 + 16) = v8;
  OUTLINED_FUNCTION_21_4();
  v14 = swift_allocObject();
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1BC8FC240;
  v16 = OUTLINED_FUNCTION_109();
  *(v16 + 16) = 0;
  *(v15 + 32) = v16 | 0x7000000000000000;
  OUTLINED_FUNCTION_21_4();
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_1F3B367B0;
  *(v15 + 40) = v17 | 0x4000000000000000;
  OUTLINED_FUNCTION_21_4();
  v18 = swift_allocObject();
  *(v18 + 16) = &unk_1F3B367D8;
  *(v15 + 48) = v18 | 0x6000000000000000;
  OUTLINED_FUNCTION_21_4();
  v19 = swift_allocObject();
  *(v19 + 16) = &unk_1F3B36800;
  *(v15 + 56) = v19 | 0x8000000000000000;
  *(v14 + 16) = v15;
  v20 = swift_task_alloc();
  v20[2] = v25;
  v20[3] = v7 | 0xC000000000000000;
  v20[4] = v14 | 0xC000000000000000;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v21 = *(v1 + 112);
  v22 = *(v1 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 88, v21);
  (*(v22 + 128))(sub_1BC82DF40, v20, &type metadata for MessageCounts, v21, v22);
  swift_endAccess();

  OUTLINED_FUNCTION_27();

  return v23();
}

void sub_1BC81431C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1BC7BC4A4(a1);
  type metadata accessor for FTStoredMessage();
  v5 = sub_1BC8F8304();

  if (!v2)
  {
    v7 = sub_1BC7BC4A4(v6);
    v8 = sub_1BC8F8304();

    v10 = sub_1BC7BC4A4(v9);
    v11 = sub_1BC8F8304();

    *a2 = v8;
    a2[1] = v11;
    a2[2] = v5;
  }
}

uint64_t sub_1BC814418(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 40) = a2;
  *(v3 + 48) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1BC814438, 0, 0);
}

uint64_t sub_1BC814438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_110();
  OUTLINED_FUNCTION_71();
  v11 = *(v10 + 40);
  v12 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_deduplicationInProgress;
  if (*(v11 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_deduplicationInProgress))
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v13 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v13, qword_1EDC2B268);
    v14 = sub_1BC8F7714();
    sub_1BC8F8204();
    v15 = OUTLINED_FUNCTION_21_8();
    if (os_log_type_enabled(v15, v16))
    {
      OUTLINED_FUNCTION_45();
      v17 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v17);
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v18, v19, "Not de-duping because we already have a de-duplication run in progress!");
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }
  }

  else
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v20 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v20, qword_1EDC2B268);
    v21 = sub_1BC8F7714();
    sub_1BC8F8204();
    v22 = OUTLINED_FUNCTION_21_8();
    if (os_log_type_enabled(v22, v23))
    {
      OUTLINED_FUNCTION_45();
      v24 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v24);
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v25, v26, "Removing duplicates");
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    v28 = *(v10 + 40);
    v27 = *(v10 + 48);

    v29 = v27 + 16;
    *(v11 + v12) = 1;
    v30 = swift_task_alloc();
    *(v30 + 16) = v29;
    *(v30 + 24) = v28;
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();
    OUTLINED_FUNCTION_69_0();
    OUTLINED_FUNCTION_63_0();
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_16_6();
    v31();
    swift_endAccess();

    if (v28)
    {
      OUTLINED_FUNCTION_27();
      goto LABEL_15;
    }

    *(v11 + v12) = 0;
  }

  OUTLINED_FUNCTION_11();
LABEL_15:
  OUTLINED_FUNCTION_111();

  return v33(v32, v33, v34, v35, v36, v37, v38, v39, a9, a10);
}

double sub_1BC814628(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BC814690(a1);
  if (!v2)
  {
    v6 = v4;
    swift_beginAccess();
    *a2 = v6;
  }

  return result;
}

uint64_t sub_1BC814690(uint64_t a1)
{
  v3 = MEMORY[0x1E69E7CD0];
  sub_1BC8F82F4();
  if (v1)
  {
  }

  return v3;
}

BOOL sub_1BC814718(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1BC8F8504();
  }

  else
  {
    v1 = *(a1 + 16);
  }

  return v1 == 0;
}

uint64_t sub_1BC8147B0(uint64_t a1, __int16 a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5200, &qword_1BC8FE298);
  result = sub_1BC8F82F4();
  if (!v2)
  {
    return v4;
  }

  return result;
}

void (*sub_1BC81482C(void *a1, unint64_t a2, int a3))(char *, uint64_t, uint64_t)
{
  v4 = v3;
  v78 = a3;
  v83 = a1;
  v102[3] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v93 = (v77 - v11);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v77 - v12;
  v97 = sub_1BC8F7264();
  v82 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v89 = v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1E69E7CD0];
  if (!*(a2 + 16))
  {
    return v15;
  }

  v92 = v9;
  if (qword_1EDC1E1D0 != -1)
  {
LABEL_72:
    swift_once();
  }

  v16 = sub_1BC8F7734();
  v17 = __swift_project_value_buffer(v16, qword_1EDC2B268);

  v77[1] = v17;
  v18 = sub_1BC8F7714();
  v19 = sub_1BC8F8204();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 134349056;
    *(v20 + 4) = *(a2 + 16);

    _os_log_impl(&dword_1BC7A3000, v18, v19, "Found %{public}ld duplicates", v20, 0xCu);
    MEMORY[0x1BFB2AA50](v20, -1, -1);
  }

  else
  {
  }

  v100 = MEMORY[0x1E69E7CC0];
  if (!v78 || v78 == 2)
  {
    v21 = v4;
    v22 = sub_1BC80E7B0(a2);
    goto LABEL_11;
  }

  if (v78 == 1)
  {
    v21 = v4;
    v22 = sub_1BC80E428(a2);
LABEL_11:
    v23 = v22;
    v24 = v21;
    a2 = 0;
    v99 = v15;
    v80 = v22 + 32;
    v86 = (v82 + 32);
    v81 = *(v22 + 16);
    v79 = v22;
    while (a2 != v81)
    {
      if (a2 >= *(v23 + 16))
      {
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v102[0] = *(v80 + 8 * a2);
      v88 = v102[0];
      v25 = sub_1BC7A5AB4(v102[0]);
      v26 = sub_1BC7BC4A4(v25);
      type metadata accessor for FTStoredMessage();
      v87 = v26;
      v27 = sub_1BC8F8314();
      v4 = v24;
      if (v24)
      {

        sub_1BC7B0EFC(v88);

        return v15;
      }

      v28 = sub_1BC81025C(v27);

      if (!sub_1BC7C0454(v28))
      {
        goto LABEL_69;
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v85 = 0;
      v90 = a2;
      if (!isUniquelyReferenced_nonNull_bridgeObject || v28 < 0 || (v28 & 0x4000000000000000) != 0)
      {
        v28 = sub_1BC82F874(v28);
      }

      a2 = v28 & 0xFFFFFFFFFFFFFF8;
      v30 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v30)
      {
        goto LABEL_70;
      }

      ++v90;
      v31 = v30 - 1;
      v32 = *((v28 & 0xFFFFFFFFFFFFFF8) + 8 * v31 + 0x20);
      *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10) = v31;
      v84 = v32;
      sub_1BC8507FC();
      v4 = sub_1BC7C0454(v28);
      v33 = 0;
      v98 = v28 & 0xC000000000000001;
      v91 = MEMORY[0x1E69E7CC0];
      v94 = v28 & 0xFFFFFFFFFFFFFF8;
      v95 = v28;
      v96 = v4;
      while (v4 != v33)
      {
        if (v98)
        {
          v34 = MEMORY[0x1BFB29A00](v33, v28);
        }

        else
        {
          if (v33 >= *(a2 + 16))
          {
            goto LABEL_65;
          }

          v34 = *(v28 + 8 * v33 + 32);
        }

        v4 = (v33 + 1);
        if (__OFADD__(v33, 1))
        {
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

        v35 = v13;
        v36 = v34;
        v37 = [v36 recordUUID];
        if (v37)
        {
          v38 = v37;
          v39 = v92;
          sub_1BC8F7244();

          v40 = 0;
        }

        else
        {
          v40 = 1;
          v39 = v92;
        }

        v41 = v97;
        __swift_storeEnumTagSinglePayload(v39, v40, 1, v97);
        v15 = v93;
        sub_1BC830458();
        v13 = v35;
        sub_1BC830458();

        if (__swift_getEnumTagSinglePayload(v35, 1, v41) == 1)
        {
          sub_1BC7C1744(v35, &unk_1EBCF5D70, &qword_1BC8FC740);
          ++v33;
          a2 = v94;
          v28 = v95;
          v4 = v96;
        }

        else
        {
          v15 = *v86;
          (*v86)(v89, v35, v97);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          a2 = v94;
          v28 = v95;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1BC7F7144();
            v91 = v45;
          }

          v43 = *(v91 + 16);
          if (v43 >= *(v91 + 24) >> 1)
          {
            sub_1BC7F7144();
            v91 = v46;
          }

          v44 = v91;
          *(v91 + 16) = v43 + 1;
          v15((v44 + ((*(v82 + 80) + 32) & ~*(v82 + 80)) + *(v82 + 72) * v43), v89, v97);
          ++v33;
          v4 = v96;
        }
      }

      v47.n128_f64[0] = sub_1BC8152FC(v91);
      v48 = 0;
      v94 = MEMORY[0x1E69E7CC0];
      while (v4 != v48)
      {
        if (v98)
        {
          v49 = MEMORY[0x1BFB29A00](v48, v28, v47);
        }

        else
        {
          if (v48 >= *(a2 + 16))
          {
            goto LABEL_67;
          }

          v49 = *(v28 + 8 * v48 + 32);
        }

        v50 = v49;
        v15 = (v48 + 1);
        if (__OFADD__(v48, 1))
        {
          goto LABEL_66;
        }

        sub_1BC850EE8();

        v51 = v102[0];
        if ((~v102[0] & 0xF000000000000007) != 0)
        {
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1BC7F720C();
            v94 = v54;
          }

          v52 = *(v94 + 16);
          if (v52 >= *(v94 + 24) >> 1)
          {
            sub_1BC7F720C();
            v94 = v55;
          }

          v53 = v94;
          *(v94 + 16) = v52 + 1;
          *(v53 + 8 * v52 + 32) = v51;
          ++v48;
          v4 = v96;
        }

        else
        {
          sub_1BC82F8D8(v102[0]);
          ++v48;
        }
      }

      sub_1BC7F3440(v94);

      sub_1BC7B0EFC(v88);
      v24 = v85;
      v23 = v79;
      a2 = v90;
    }

    v56 = sub_1BC8F7714();
    v57 = sub_1BC8F8204();
    v58 = os_log_type_enabled(v56, v57);
    v85 = v24;
    if (v58)
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v102[0] = v60;
      *v59 = 134349570;
      swift_beginAccess();
      *(v59 + 4) = v100[2];
      *(v59 + 12) = 514;
      *(v59 + 14) = v78;
      *(v59 + 16) = 2082;

      v62 = MEMORY[0x1BFB29280](v61, &type metadata for MessageStoreQuery);
      v13 = v63;

      v64 = sub_1BC7A9A4C(v62, v13, v102);

      *(v59 + 18) = v64;
      _os_log_impl(&dword_1BC7A3000, v56, v57, "Deleting %{public}ld duplicate records with messageType %{public}hd with query: %{public}s", v59, 0x1Au);
      __swift_destroy_boxed_opaque_existential_1(v60);
      MEMORY[0x1BFB2AA50](v60, -1, -1);
      MEMORY[0x1BFB2AA50](v59, -1, -1);
    }

    swift_beginAccess();
    v65 = v100;

    sub_1BC80F11C(100, v65);
    v15 = v66;
    v98 = v65;

    v67 = 0;
    a2 = *(v15 + 2);
    v4 = &unk_1F3B39F90;
    while (1)
    {
      if (a2 == v67)
      {

        return v99;
      }

      if (v67 >= *(v15 + 2))
      {
        goto LABEL_71;
      }

      v68 = *(v15 + v67 + 4);
      v69 = swift_allocObject();
      *(v69 + 16) = v68;
      v101 = (v69 | 0xD000000000000000);

      v71 = sub_1BC7BC4A4(v70);
      v72 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
      v101 = 0;
      v73 = [v83 executeRequest:v72 error:&v101];
      if (!v73)
      {
        break;
      }

      v13 = v73;
      ++v67;
      v74 = v101;
    }

    v75 = v101;

    sub_1BC8F6EA4();

    swift_willThrow();

    return v15;
  }

  LOWORD(v102[0]) = v78;
  result = sub_1BC8F8B04();
  __break(1u);
  return result;
}

double sub_1BC8152FC(uint64_t a1)
{
  v2 = sub_1BC8F7264();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = v17 - v7;
  v9 = *(a1 + 16);
  if (v9)
  {
    v12 = *(v3 + 16);
    v10 = v3 + 16;
    v11 = v12;
    v13 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v17[1] = a1;
    v14 = a1 + v13;
    v15 = *(v10 + 56);
    do
    {
      v11(v6, v14, v2);
      sub_1BC8AE558();
      (*(v10 - 8))(v8, v2);
      v14 += v15;
      --v9;
    }

    while (v9);
  }

  return result;
}

uint64_t sub_1BC815488(uint64_t a1)
{
  v2 = sub_1BC8F7264();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v4);
  v9 = v23 - v8;
  result = MEMORY[0x1EEE9AC00](v7);
  v12 = v23 - v11;
  v13 = 0;
  v24 = a1;
  v16 = *(a1 + 56);
  v15 = a1 + 56;
  v14 = v16;
  v17 = 1 << *(v15 - 24);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v20 = (v17 + 63) >> 6;
  v23[1] = v3 + 32;
  v23[2] = v3 + 16;
  v23[0] = v3 + 8;
  if ((v18 & v14) != 0)
  {
    do
    {
      v21 = v13;
LABEL_9:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      (*(v3 + 16))(v12, *(v24 + 48) + *(v3 + 72) * (v22 | (v21 << 6)), v2);
      (*(v3 + 32))(v6, v12, v2);
      sub_1BC8AE558();
      result = (*(v3 + 8))(v9, v2);
    }

    while (v19);
  }

  while (1)
  {
    v21 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v21 >= v20)
    {
    }

    v19 = *(v15 + 8 * v21);
    ++v13;
    if (v19)
    {
      v13 = v21;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_1BC815698(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 16);
  for (i = (a1 + 32); v5; --v5)
  {
    v7 = *i;
    v8 = sub_1BC8147B0(a3, *i);
    if (v3)
    {
      break;
    }

    v9 = v8;
    if (*(v8 + 16))
    {
      if (qword_1EDC1E1D0 != -1)
      {
        swift_once();
      }

      v10 = sub_1BC8F7734();
      __swift_project_value_buffer(v10, qword_1EDC2B268);

      v11 = sub_1BC8F7714();
      v12 = sub_1BC8F8204();

      v20 = v12;
      if (os_log_type_enabled(v11, v12))
      {
        buf = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v21 = v19;
        *buf = 136446210;
        sub_1BC8F7264();
        sub_1BC7AAAD0(&unk_1EDC20600, MEMORY[0x1E69695A8]);
        v13 = sub_1BC8F8104();
        v15 = a3;
        v16 = sub_1BC7A9A4C(v13, v14, &v21);

        *(buf + 4) = v16;
        a3 = v15;
        _os_log_impl(&dword_1BC7A3000, v11, v20, "Found duplicates %{public}s", buf, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v19);
        MEMORY[0x1BFB2AA50](v19, -1, -1);
        MEMORY[0x1BFB2AA50](buf, -1, -1);
      }

      v17 = sub_1BC81482C(a3, v9, v7);

      sub_1BC815488(v17);
    }

    else
    {
    }

    ++i;
  }
}

void sub_1BC815934(unsigned __int16 a1@<W0>, void (**a2)(char *, uint64_t)@<X1>, void *a3@<X8>)
{
  v60 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v45 - v6;
  v8 = sub_1BC8F7264();
  v59 = *(v8 - 8);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = v45 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = v45 - v15;
  v17 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5960, &qword_1BC902C20);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1BC8FC230;
  *(v18 + 32) = a1;
  *(v17 + 16) = v18;
  v63[0] = v17 | 0x6000000000000000;
  v19 = sub_1BC7BC4A4(v18);

  type metadata accessor for FTStoredMessage();
  v20 = v61;
  v21 = sub_1BC8F8314();
  v45[1] = v20;
  if (v20)
  {
  }

  else
  {
    v22 = v21;
    v57 = v7;
    v62 = v16;
    v51 = v11;
    v23 = sub_1BC80BF48(a1);
    v65 = MEMORY[0x1E69E7CD0];
    v64 = MEMORY[0x1E69E7CD0];
    v24 = v22;
    v56 = sub_1BC7C0454(v22);
    if (v56)
    {
      v25 = 0;
      v55 = v24 & 0xC000000000000001;
      v47 = v24 & 0xFFFFFFFFFFFFFF8;
      v46 = v24 + 32;
      v48 = (v59 + 32);
      v49 = v23;
      v60 = (v59 + 8);
      v61 = (v59 + 16);
      v53 = v24;
      v54 = a3;
      v50 = v19;
      while (1)
      {
        if (v55)
        {
          v26 = MEMORY[0x1BFB29A00](v25, v24);
        }

        else
        {
          if (v25 >= *(v47 + 16))
          {
            goto LABEL_25;
          }

          v26 = *(v46 + 8 * v25);
        }

        v27 = __OFADD__(v25, 1);
        v28 = v25 + 1;
        if (v27)
        {
          break;
        }

        v58 = v28;
        v63[4] = v26;
        v29 = v26;

        v30 = v23;
        v31 = swift_readAtKeyPath();
        v32 = v57;
        sub_1BC830400();
        v31(v63, 0);
        v23 = v30;

        if (__swift_getEnumTagSinglePayload(v32, 1, v8) == 1)
        {

          sub_1BC7C1744(v32, &unk_1EBCF5D70, &qword_1BC8FC740);
          a3 = v54;
        }

        else
        {
          v52 = v29;
          (*v48)(v62, v32, v8);
          v33 = v65;
          if (*(v65 + 16))
          {
            sub_1BC7AAAD0(&unk_1EDC20600, MEMORY[0x1E69695A8]);
            v34 = sub_1BC8F7B54();
            v35 = ~(-1 << *(v33 + 32));
            while (1)
            {
              v36 = v34 & v35;
              if (((*(v33 + 56 + (((v34 & v35) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v34 & v35)) & 1) == 0)
              {
                break;
              }

              v37 = v59;
              v38 = *(v59 + 16);
              v38(v14, *(v33 + 48) + *(v59 + 72) * v36, v8);
              sub_1BC7AAAD0(&unk_1EDC205F0, MEMORY[0x1E69695A8]);
              v39 = sub_1BC8F7BC4();
              v40 = *(v37 + 8);
              v40(v14, v8);
              v34 = v36 + 1;
              if (v39)
              {
                v41 = v62;
                v38(v51, v62, v8);
                sub_1BC8AE558();

                v40(v14, v8);
                v40(v41, v8);
                goto LABEL_18;
              }
            }
          }

          v42 = v62;
          (*v61)(v51, v62, v8);
          sub_1BC8AE558();

          v43 = *v60;
          (*v60)(v14, v8);
          v43(v42, v8);
LABEL_18:
          a3 = v54;
          v23 = v49;
          v19 = v50;
        }

        v24 = v53;
        v25 = v58;
        if (v58 == v56)
        {

          v44 = v64;
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      __break(1u);
    }

    else
    {

      v44 = MEMORY[0x1E69E7CD0];
LABEL_22:

      *a3 = v44;
    }
  }
}

uint64_t sub_1BC815F2C(uint64_t a1, uint64_t a2)
{
  *(*v2 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_delegate + 8) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t sub_1BC815F7C(uint64_t a1)
{
  swift_weakAssign();
}

uint64_t sub_1BC815FC8()
{
  OUTLINED_FUNCTION_5();
  v1[12] = v2;
  v1[13] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v1[14] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[15] = v4;
  v1[16] = OUTLINED_FUNCTION_47_3();
  v5 = sub_1BC8F7264();
  v1[17] = v5;
  OUTLINED_FUNCTION_26(v5);
  v1[18] = v6;
  v1[19] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1BC8160C8()
{
  v50 = v0;
  if (sub_1BC7C0454(v0[12]))
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v1 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v1, qword_1EDC2B268);

    v2 = sub_1BC8F7714();
    v3 = sub_1BC8F8204();

    if (os_log_type_enabled(v2, v3))
    {
      v4 = v0[12];
      OUTLINED_FUNCTION_9();
      v5 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v6 = swift_slowAlloc();
      v48 = v6;
      *v5 = 136446210;
      v7 = sub_1BC7C0454(v4);
      v8 = MEMORY[0x1E69E7CC0];
      if (v7)
      {
        v9 = v7;
        v42 = v6;
        v43 = v5;
        v44 = v3;
        v45 = v2;
        v49 = MEMORY[0x1E69E7CC0];
        sub_1BC7DDB5C(0, v7 & ~(v7 >> 63), 0);
        if (v9 < 0)
        {
          __break(1u);
          return MEMORY[0x1EEE6DFA0](v10, v11, v12);
        }

        v13 = 0;
        v14 = v0[18];
        v15 = v0[12];
        v8 = v49;
        v16 = (v14 + 16);
        v46 = v15 + 32;
        v47 = v15 & 0xC000000000000001;
        do
        {
          v17 = v9;
          v18 = v0[19];
          v19 = v0[17];
          if (v47)
          {
            v20 = MEMORY[0x1BFB29A00](v13, v0[12]);
            (*v16)(v18, v20 + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v19);
            swift_unknownObjectRelease();
          }

          else
          {
            (*v16)(v18, *(v46 + 8 * v13) + OBJC_IVAR____TtC20FaceTimeMessageStore13MessageUpdate_recordUUID, v19);
          }

          v49 = v8;
          v22 = *(v8 + 16);
          v21 = *(v8 + 24);
          if (v22 >= v21 >> 1)
          {
            sub_1BC7DDB5C(v21 > 1, v22 + 1, 1);
            v8 = v49;
          }

          v23 = v0[19];
          v24 = v0[17];
          ++v13;
          *(v8 + 16) = v22 + 1;
          (*(v14 + 32))(v8 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v22, v23, v24);
          v9 = v17;
        }

        while (v17 != v13);
        v2 = v45;
        v3 = v44;
        v6 = v42;
        v5 = v43;
      }

      v34 = MEMORY[0x1BFB29280](v8, v0[17]);
      v36 = v35;

      sub_1BC7A9A4C(v34, v36, &v48);
      OUTLINED_FUNCTION_100();

      *(v5 + 4) = v8;
      _os_log_impl(&dword_1BC7A3000, v2, v3, "Performing updates to messages with UUIDs: %{public}s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      v37 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v37);
      v38 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v38);
    }

    v39 = v0[12];
    v40 = v0[13];
    v0[20] = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_queue;
    OUTLINED_FUNCTION_34();
    v41 = swift_allocObject();
    v0[21] = v41;
    *(v41 + 16) = v40;
    *(v41 + 24) = v39;

    v10 = OUTLINED_FUNCTION_65_0();

    return MEMORY[0x1EEE6DFA0](v10, v11, v12);
  }

  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v25 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v25, qword_1EDC2B268);
  v26 = sub_1BC8F7714();
  sub_1BC8F81E4();
  v27 = OUTLINED_FUNCTION_21_8();
  if (os_log_type_enabled(v27, v28))
  {
    OUTLINED_FUNCTION_45();
    v29 = swift_slowAlloc();
    OUTLINED_FUNCTION_81(v29);
    OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v30, v31, "Told to update messages but no updates were given");
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  OUTLINED_FUNCTION_11();

  return v32();
}

uint64_t sub_1BC8164D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v13 = v12[21];
  v12[2] = v14;
  v15 = OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &unk_1BC9029E8;
  v16[4] = v13;
  OUTLINED_FUNCTION_34();
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_1BC9029F8;
  *(v17 + 24) = v16;
  v12[10] = &unk_1BC8FC280;
  v12[11] = v17;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_56_1(v18);
  v19 = OUTLINED_FUNCTION_30();
  v20(v19);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1BC8165FC()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v2 = v1;
  OUTLINED_FUNCTION_11_1();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;
  v6 = *(v5 + 48);
  *(v2 + 176) = v6;
  if (v6)
  {
    swift_willThrow();
    v7 = OUTLINED_FUNCTION_59_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = swift_task_alloc();
    *(v2 + 184) = v10;
    *v10 = v4;
    OUTLINED_FUNCTION_89(v10);

    return sub_1BC810798();
  }
}

uint64_t sub_1BC816758()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_128();

  return v3();
}

uint64_t sub_1BC816870()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC8168E4()
{
  OUTLINED_FUNCTION_5();
  v1[12] = v2;
  v1[13] = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v1[14] = v3;
  OUTLINED_FUNCTION_26(v3);
  v1[15] = v4;
  v1[16] = OUTLINED_FUNCTION_47_3();
  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1BC816998()
{
  OUTLINED_FUNCTION_32();
  v1 = v0[12];
  if (*(v1 + 16))
  {
    v2 = v0[13];
    v0[17] = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_queue;
    OUTLINED_FUNCTION_34();
    v3 = swift_allocObject();
    v0[18] = v3;
    *(v3 + 16) = v2;
    *(v3 + 24) = v1;

    v4 = OUTLINED_FUNCTION_65_0();

    return MEMORY[0x1EEE6DFA0](v4, v5, v6);
  }

  else
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v7 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v7, qword_1EDC2B268);
    v8 = sub_1BC8F7714();
    sub_1BC8F81E4();
    v9 = OUTLINED_FUNCTION_21_8();
    if (os_log_type_enabled(v9, v10))
    {
      OUTLINED_FUNCTION_45();
      v11 = swift_slowAlloc();
      OUTLINED_FUNCTION_81(v11);
      OUTLINED_FUNCTION_10_1(&dword_1BC7A3000, v12, v13, "Told to update voicemail messages but no updates were given");
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    OUTLINED_FUNCTION_11();

    return v14();
  }
}

uint64_t sub_1BC816AF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_46_3();
  OUTLINED_FUNCTION_9_10();
  OUTLINED_FUNCTION_14_8();
  v13 = v12[18];
  v12[2] = v14;
  v15 = OUTLINED_FUNCTION_42_4();
  OUTLINED_FUNCTION_41_0();
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = &unk_1BC902D70;
  v16[4] = v13;
  OUTLINED_FUNCTION_34();
  v17 = swift_allocObject();
  *(v17 + 16) = &unk_1BC902D78;
  *(v17 + 24) = v16;
  v12[10] = &unk_1BC902D80;
  v12[11] = v17;

  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  OUTLINED_FUNCTION_56_1(v18);
  v19 = OUTLINED_FUNCTION_30();
  v20(v19);
  OUTLINED_FUNCTION_47_4();

  return MEMORY[0x1EEE6DEC8](v21, v22, v23, v24, v25, v26, v27, v28, a9, a10, a11, a12);
}

uint64_t sub_1BC816C1C()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v2 = v1;
  OUTLINED_FUNCTION_11_1();
  *v3 = v2;
  v4 = *v0;
  *v3 = *v0;
  v6 = *(v5 + 48);
  *(v2 + 152) = v6;
  if (v6)
  {
    swift_willThrow();
    v7 = OUTLINED_FUNCTION_59_1();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    v10 = swift_task_alloc();
    *(v2 + 160) = v10;
    *v10 = v4;
    OUTLINED_FUNCTION_89(v10);

    return sub_1BC810798();
  }
}

uint64_t sub_1BC816D78()
{
  OUTLINED_FUNCTION_5();
  v1 = *v0;
  OUTLINED_FUNCTION_3_1();
  *v2 = v1;

  OUTLINED_FUNCTION_128();

  return v3();
}

uint64_t sub_1BC816E74()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC816EDC(uint64_t *a1)
{
  v3 = *a1;
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC816EF4()
{
  OUTLINED_FUNCTION_22_0();
  v2 = v0[2];
  v1 = v0[3];
  OUTLINED_FUNCTION_34();
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  sub_1BC7A5AB4(v1);
  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1BC816FF0;

  return sub_1BC812710(&unk_1BC902BC8, v3);
}

uint64_t sub_1BC816FF0()
{
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 48) = v5;
  *(v3 + 56) = v0;

  if (!v0)
  {
  }

  OUTLINED_FUNCTION_15();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1BC8170F8()
{
  OUTLINED_FUNCTION_32();
  v1 = *(v0 + 56);
  sub_1BC81F454(*(v0 + 48));
  if (v1)
  {

    OUTLINED_FUNCTION_27();
  }

  else
  {
    sub_1BC81F598(MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], *(v0 + 48));

    OUTLINED_FUNCTION_11();
  }

  return v2();
}

uint64_t sub_1BC817190()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC817200()
{
  OUTLINED_FUNCTION_5();
  if (sub_1BC810338())
  {
    OUTLINED_FUNCTION_96();

    return v1();
  }

  else
  {
    v3 = *(v0 + 40);
    OUTLINED_FUNCTION_130();
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    __swift_project_boxed_opaque_existential_1((v3 + 88), *(v3 + 112));
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_133(v4);
    *v5 = v6;
    v5[1] = sub_1BC8172E0;

    return sub_1BC8E9F34();
  }
}

uint64_t sub_1BC8172E0()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;

  if (v0)
  {
    v9 = *(v7 + 8);

    return v9();
  }

  else
  {
    *(v5 + 56) = v3;
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v11, v12, v13);
  }
}

uint64_t sub_1BC817410()
{
  OUTLINED_FUNCTION_5();
  v1 = *(v0 + 56);
  v2 = v1;
  sub_1BC8103A8(v1);
  OUTLINED_FUNCTION_96();

  return v3();
}

uint64_t sub_1BC81747C(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC817494()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = v0[3];
  v1 = v0[4];
  v3 = v0[2];
  OUTLINED_FUNCTION_41_0();
  v4 = swift_allocObject();
  v0[5] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  *(v4 + 28) = BYTE4(v3) & 1;
  *(v4 + 32) = v2;
  OUTLINED_FUNCTION_74_0();
  v5 = swift_task_alloc();
  v6 = OUTLINED_FUNCTION_133(v5);
  *v6 = v7;
  v6[1] = sub_1BC817588;
  OUTLINED_FUNCTION_112();

  return v10(v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1BC817588()
{
  OUTLINED_FUNCTION_32();
  OUTLINED_FUNCTION_13_0();
  v3 = v2;
  OUTLINED_FUNCTION_11_1();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v6 = v5;
  *(v3 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v7, v8, v9);
  }

  else
  {

    OUTLINED_FUNCTION_96();

    return v10();
  }
}

uint64_t sub_1BC8176C0()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_1BC81771C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_0();
}

uint64_t sub_1BC817730()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = v0[2];
  v1 = v0[3];
  OUTLINED_FUNCTION_34();
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  OUTLINED_FUNCTION_74_0();
  v4 = v2;
  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1BC817818;
  OUTLINED_FUNCTION_112();

  return v8(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_1BC817818()
{
  OUTLINED_FUNCTION_32();
  v3 = v2;
  OUTLINED_FUNCTION_13_0();
  v5 = v4;
  OUTLINED_FUNCTION_11_1();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_3_1();
  *v8 = v7;
  *(v5 + 48) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_15();

    return MEMORY[0x1EEE6DFA0](v9, v10, v11);
  }

  else
  {

    v12 = *(v7 + 8);

    return v12(v3);
  }
}

uint64_t sub_1BC817954()
{
  OUTLINED_FUNCTION_5();

  OUTLINED_FUNCTION_27();

  return v0();
}

void sub_1BC8179B0()
{
  if (sub_1BC8F6D14())
  {
    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v0 = sub_1BC8F7734();
    __swift_project_value_buffer(v0, qword_1EDC2B268);

    v1 = sub_1BC8F7714();
    v2 = sub_1BC8F8204();

    if (os_log_type_enabled(v1, v2))
    {
      v3 = swift_slowAlloc();
      v4 = swift_slowAlloc();
      v30[0] = v4;
      *v3 = 136315138;
      v5 = sub_1BC8F7AB4();
      v7 = sub_1BC7A9A4C(v5, v6, v30);

      *(v3 + 4) = v7;
      _os_log_impl(&dword_1BC7A3000, v1, v2, "MessageStore: Received a willResetSync notification. UserInfo: %s", v3, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v4);
      MEMORY[0x1BFB2AA50](v4, -1, -1);
      MEMORY[0x1BFB2AA50](v3, -1, -1);
    }

    v28 = sub_1BC8F7C24();
    v29 = v8;
    sub_1BC8F8544();
    sub_1BC8E715C();

    sub_1BC8037DC(v30);
    if (v31[3])
    {
      if (swift_dynamicCast())
      {
        switch(v28)
        {
          case 1:
          case 2:
          case 3:
            sub_1BC817FE8(2);
            sub_1BC81814C(v9, v10, v11, v12, v13, v14, v15, v16, v24, oslog, v27, v28, v29, v30[0], v30[1], v30[2], v30[3], v30[4], v31[0], v31[1]);
            sub_1BC817FE8(3);
            break;
          case 4:
            v20 = sub_1BC8F7714();
            v21 = sub_1BC8F8204();
            if (!os_log_type_enabled(v20, v21))
            {
              goto LABEL_21;
            }

            v22 = swift_slowAlloc();
            *v22 = 0;
            v23 = "MessageStore: Not acting on reset sync reason since user purged the zone";
            goto LABEL_20;
          case 5:
            v20 = sub_1BC8F7714();
            v21 = sub_1BC8F8204();
            if (!os_log_type_enabled(v20, v21))
            {
              goto LABEL_21;
            }

            v22 = swift_slowAlloc();
            *v22 = 0;
            v23 = "MessageStore: Not acting on reset sync reason since the zone was deleted";
            goto LABEL_20;
          case 6:
            v20 = sub_1BC8F7714();
            v21 = sub_1BC8F8204();
            if (!os_log_type_enabled(v20, v21))
            {
              goto LABEL_21;
            }

            v22 = swift_slowAlloc();
            *v22 = 0;
            v23 = "MessageStore: Not acting on reset sync reason since the history token expired";
            goto LABEL_20;
          case 7:
            v20 = sub_1BC8F7714();
            v21 = sub_1BC8F8204();
            if (!os_log_type_enabled(v20, v21))
            {
              goto LABEL_21;
            }

            v22 = swift_slowAlloc();
            *v22 = 0;
            v23 = "MessageStore: Not acting on reset sync reason since the server change token expired";
            goto LABEL_20;
          default:
            v20 = sub_1BC8F7714();
            v21 = sub_1BC8F81E4();
            if (!os_log_type_enabled(v20, v21))
            {
              goto LABEL_21;
            }

            v22 = swift_slowAlloc();
            *v22 = 0;
            v23 = "MessageStore: Unknown reset sync reason found on CoreData WillResetSync notification!";
            goto LABEL_20;
        }

        return;
      }
    }

    else
    {
      sub_1BC7C1744(v31, &unk_1EBCF5E50, &qword_1BC8FE850);
    }

    v20 = sub_1BC8F7714();
    v21 = sub_1BC8F81E4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      v23 = "MessageStore: No reset sync reason found on CoreData WillResetSync notification!";
LABEL_20:
      _os_log_impl(&dword_1BC7A3000, v20, v21, v23, v22, 2u);
      MEMORY[0x1BFB2AA50](v22, -1, -1);
    }

LABEL_21:
  }

  else
  {
    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v17 = sub_1BC8F7734();
    __swift_project_value_buffer(v17, qword_1EDC2B268);
    osloga = sub_1BC8F7714();
    v18 = sub_1BC8F81E4();
    if (os_log_type_enabled(osloga, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BC7A3000, osloga, v18, "MessageStore: No userInfo dictionary found on CoreData WillResetSync notification!", v19, 2u);
      MEMORY[0x1BFB2AA50](v19, -1, -1);
    }
  }
}

void sub_1BC817FE8(char a1)
{
  v2 = v1;
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v4 = sub_1BC8F7734();
  OUTLINED_FUNCTION_37_0(v4, qword_1EDC2B268);
  v5 = sub_1BC8F7714();
  sub_1BC8F8204();
  v6 = OUTLINED_FUNCTION_36_0();
  if (os_log_type_enabled(v6, v7))
  {
    OUTLINED_FUNCTION_9();
    v8 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v9 = swift_slowAlloc();
    v21 = v9;
    *v8 = 136446210;
    v10 = sub_1BC7FC7F0(a1);
    v12 = sub_1BC7A9A4C(v10, v11, &v21);

    *(v8 + 4) = v12;
    OUTLINED_FUNCTION_90();
    _os_log_impl(v13, v14, v15, v16, v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    v18 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v18);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v19 = *(v2 + 64);
  v20 = sub_1BC8F7BE4();
  [v19 setInteger:a1 forKey:v20];

  *(v2 + 72) = a1;
}

void sub_1BC81814C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_22();
  a19 = v22;
  a20 = v23;
  v24 = v20;
  if (*(v20 + 72) == 2)
  {
    OUTLINED_FUNCTION_37_5();
    swift_beginAccess();
    OUTLINED_FUNCTION_108();
    OUTLINED_FUNCTION_115();
    OUTLINED_FUNCTION_86();
    v25();
    if (v21)
    {
      swift_endAccess();
    }

    else
    {
      swift_endAccess();
      if (qword_1EDC1E1D0 != -1)
      {
        OUTLINED_FUNCTION_0_16();
        swift_once();
      }

      v34 = sub_1BC8F7734();
      __swift_project_value_buffer(v34, qword_1EDC2B268);
      v35 = sub_1BC8F7714();
      v36 = sub_1BC8F8204();
      v37 = OUTLINED_FUNCTION_36_0();
      if (os_log_type_enabled(v37, v38))
      {
        OUTLINED_FUNCTION_45();
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1BC7A3000, v35, v36, "MessageStoreManager: Attempting to migrate from permanent db to temporary db", v39, 2u);
        OUTLINED_FUNCTION_6_0();
        MEMORY[0x1BFB2AA50]();
      }

      a10 = 0xE000000000000000;
      v40 = *(v24 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_deviceSupport);
      v41 = &off_1E7FF5000;
      v42 = [v40 deviceType];
      if (v42 != 2)
      {
        v42 = [v40 deviceType];
        if (v42 != 6)
        {
          OUTLINED_FUNCTION_21_4();
          v43 = swift_allocObject();
          *(v43 + 16) = &unk_1F3B36850;
          v41 = (v43 | 0x4000000000000000);
          v42 = sub_1BC7B0EFC(0xE000000000000000);
          a10 = v41;
        }
      }

      v64 = v40;
      MEMORY[0x1EEE9AC00](v42);
      OUTLINED_FUNCTION_83_0();
      *(v44 - 16) = &a10;
      *(v44 - 8) = v24;
      OUTLINED_FUNCTION_37_5();
      swift_beginAccess();
      v46 = *(v24 + 112);
      v45 = *(v24 + 120);
      __swift_mutable_project_boxed_opaque_existential_1(v24 + 88, v46);
      v47 = *(v45 + 128);
      v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
      (v47)(&v65, sub_1BC830000, v41, v48, v46, v45);
      swift_endAccess();
      sub_1BC819218(v65);

      if ([v64 deviceType] == 2 || objc_msgSend(v64, sel_deviceType) == 6)
      {
        v49 = sub_1BC8F7714();
        sub_1BC8F8204();
        v50 = OUTLINED_FUNCTION_36_0();
        if (os_log_type_enabled(v50, v51))
        {
          OUTLINED_FUNCTION_45();
          v52 = swift_slowAlloc();
          OUTLINED_FUNCTION_118(v52);
          OUTLINED_FUNCTION_43_0();
          _os_log_impl(v53, v54, v55, v56, v57, 2u);
          v58 = OUTLINED_FUNCTION_13_2();
          MEMORY[0x1BFB2AA50](v58);
        }
      }

      else
      {
        OUTLINED_FUNCTION_21_4();
        v59 = swift_allocObject();
        *(v59 + 16) = &unk_1F3B36878;
        v60 = v59 | 0x4000000000000000;
        v61 = sub_1BC7B0EFC(a10);
        a10 = v60;
        MEMORY[0x1EEE9AC00](v61);
        OUTLINED_FUNCTION_83_0();
        *(v62 - 16) = &a10;
        *(v62 - 8) = v24;
        OUTLINED_FUNCTION_37_5();
        swift_beginAccess();
        OUTLINED_FUNCTION_108();
        v63 = *(v47 + 128);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE0, &unk_1BC8FC780);
        OUTLINED_FUNCTION_86();
        v63();
        swift_endAccess();
        sub_1BC7EEA50(v65);
      }

      sub_1BC7B0EFC(a10);
    }
  }

  else
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v26 = sub_1BC8F7734();
    __swift_project_value_buffer(v26, qword_1EDC2B268);
    OUTLINED_FUNCTION_101();

    v27 = sub_1BC8F7714();
    sub_1BC8F81E4();
    v28 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v28, v29))
    {
      OUTLINED_FUNCTION_9();
      v30 = swift_slowAlloc();
      OUTLINED_FUNCTION_135(v30, 3.9122e-34);
      OUTLINED_FUNCTION_75_0(&dword_1BC7A3000, v31, v32, "MessageStoreManager: Told to move messages to temporary store but account status is: %{public}ld");
      v33 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v33);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_23();
}

void sub_1BC818DBC()
{
  OUTLINED_FUNCTION_22();
  v2 = v0;
  v3 = sub_1BC8F8244();
  OUTLINED_FUNCTION_0();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_12();
  v9 = v8 - v7;
  v10 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v12 = v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v46 - v17;
  if (*(v2 + 72) == 5)
  {
    v47 = v5;
    v48 = v3;
    v49 = [objc_allocWithZone(MEMORY[0x1E695D6C0]) init];
    v19 = [objc_opt_self() defaultManager];
    sub_1BC8D321C();
    sub_1BC8F6FC4();
    v20 = *(v12 + 8);
    v20(v18, v10);
    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_100();

    v21 = [v19 fileExistsAtPath_];

    if (v21)
    {
      sub_1BC8D321C();
      sub_1BC8F8234();
      v22 = v49;
      sub_1BC8F8334();
      v23 = (v47 + 8);
      if (v1)
      {
        (*v23)(v9, v48);
        v20(v16, v10);
        if (qword_1EDC1E1D0 != -1)
        {
          OUTLINED_FUNCTION_0_16();
          swift_once();
        }

        v24 = sub_1BC8F7734();
        __swift_project_value_buffer(v24, qword_1EDC2B268);
        v25 = OUTLINED_FUNCTION_100();
        v26 = sub_1BC8F7714();
        v27 = sub_1BC8F81E4();

        if (os_log_type_enabled(v26, v27))
        {
          OUTLINED_FUNCTION_9();
          v28 = swift_slowAlloc();
          v29 = swift_slowAlloc();
          *v28 = 138543362;
          v30 = v1;
          v31 = _swift_stdlib_bridgeErrorToNSError();
          *(v28 + 4) = v31;
          *v29 = v31;
          OUTLINED_FUNCTION_90();
          _os_log_impl(v32, v33, v34, v35, v36, 0xCu);
          sub_1BC7C1744(v29, &unk_1EBCF5DB0, &unk_1BC900410);
          v37 = OUTLINED_FUNCTION_5_5();
          MEMORY[0x1BFB2AA50](v37);
          OUTLINED_FUNCTION_6_0();
          MEMORY[0x1BFB2AA50]();
        }

        swift_willThrow();
      }

      else
      {

        (*v23)(v9, v48);
        v20(v16, v10);
      }
    }

    else
    {
    }
  }

  else
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v38 = sub_1BC8F7734();
    __swift_project_value_buffer(v38, qword_1EDC2B268);
    OUTLINED_FUNCTION_101();

    v39 = sub_1BC8F7714();
    sub_1BC8F81E4();
    v40 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v40, v41))
    {
      OUTLINED_FUNCTION_9();
      v42 = swift_slowAlloc();
      OUTLINED_FUNCTION_135(v42, 3.9122e-34);
      OUTLINED_FUNCTION_75_0(&dword_1BC7A3000, v43, v44, "MessageStoreManager: Told to clean up after account change but account status is: %{public}ld");
      v45 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v45);
    }

    else
    {
    }
  }

  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC819218(uint64_t a1)
{
  v5[2] = a1;
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  v2 = *(v1 + 112);
  v3 = *(v1 + 120);
  __swift_mutable_project_boxed_opaque_existential_1(v1 + 88, v2);
  (*(v3 + 136))(sub_1BC830038, v5, MEMORY[0x1E69E7CA8] + 8, v2, v3);
  return swift_endAccess();
}

void sub_1BC8192C4(uint64_t a1, uint64_t a2)
{
  v145 = a2;
  v132 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v139 = v115 - v4;
  v129 = sub_1BC8F71E4();
  v5 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v128 = v115 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v138 = v115 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v137 = v115 - v10;
  v11 = sub_1BC8F7014();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v127 = v115 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v133 = sub_1BC8F7264();
  v14 = *(v133 - 8);
  v15 = MEMORY[0x1EEE9AC00](v133);
  v126 = v115 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v134 = v115 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v125 = v115 - v19;
  v131 = type metadata accessor for FTLocalMessage();
  v135 = [swift_getObjCClassFromMetadata() entityName];
  if (!v135)
  {
    sub_1BC8F7C24();
    v135 = sub_1BC8F7BE4();
  }

  v124 = sub_1BC7C0454(v145);
  if (v124)
  {
    v121 = v11;
    v115[1] = v2;
    v122 = objc_opt_self();
    v123 = v145 & 0xC000000000000001;
    v144 = (v14 + 16);
    v147 = (v14 + 8);
    v142 = (v12 + 8);
    v119 = (v5 + 16);
    v120 = (v12 + 16);
    v118 = (v5 + 8);
    v20 = 4;
    *&v21 = 138543362;
    v117 = v21;
    *&v21 = 136446210;
    v116 = v21;
    v22 = v133;
    while (1)
    {
      v23 = v123;
      sub_1BC8E2358();
      if (v23)
      {
        v24 = MEMORY[0x1BFB29A00](v20 - 4, v145);
      }

      else
      {
        v24 = *(v145 + 8 * v20);
      }

      v25 = v24;
      if (__OFADD__(v20 - 4, 1))
      {
        __break(1u);
        return;
      }

      v141 = v20 - 3;
      if (qword_1EDC1E1D0 != -1)
      {
        swift_once();
      }

      v26 = sub_1BC8F7734();
      v27 = __swift_project_value_buffer(v26, qword_1EDC2B268);
      v28 = v25;
      v136 = v27;
      v29 = sub_1BC8F7714();
      v30 = sub_1BC8F8204();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        *v31 = v117;
        *(v31 + 4) = v28;
        *v32 = v28;
        v33 = v28;
        _os_log_impl(&dword_1BC7A3000, v29, v30, "MessageStoreManager: Copying %{public}@ to temp store", v31, 0xCu);
        sub_1BC7C1744(v32, &unk_1EBCF5DB0, &unk_1BC900410);
        MEMORY[0x1BFB2AA50](v32, -1, -1);
        MEMORY[0x1BFB2AA50](v31, -1, -1);
      }

      v143 = [v122 insertNewObjectForEntityForName:v135 inManagedObjectContext:v132];
      v34 = swift_dynamicCastClass();
      if (!v34)
      {

        v111 = sub_1BC8F7714();
        v112 = sub_1BC8F81E4();
        if (os_log_type_enabled(v111, v112))
        {
          v113 = swift_slowAlloc();
          *v113 = 0;
          _os_log_impl(&dword_1BC7A3000, v111, v112, "MessageStoreManager: Failed to insert message", v113, 2u);
          MEMORY[0x1BFB2AA50](v113, -1, -1);
        }

        sub_1BC82EF30();
        swift_allocError();
        *v114 = 0;
        swift_willThrow();

        v110 = v143;
        goto LABEL_49;
      }

      v149 = v34;
      v35 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
      swift_beginAccess();
      v148 = v35;
      v36 = *&v28[v35];
      v140 = v20;
      if (v36 == 1)
      {
        v37 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
        swift_beginAccess();
        v38 = v125;
        (*v144)(v125, &v28[v37], v22);
      }

      else
      {
        v38 = v125;
        sub_1BC8F7254();
      }

      v39 = sub_1BC8F7214();
      v40 = *v147;
      (*v147)(v38, v22);
      v41 = v149;
      [v149 setRecordUUID_];

      v42 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID;
      swift_beginAccess();
      v43 = *v144;
      v44 = v134;
      (*v144)(v134, &v28[v42], v22);
      v45 = sub_1BC8F7214();
      v146 = v40;
      v40(v44, v22);
      [v41 setCallUUID_];

      if (*&v28[v148] == 1)
      {
        v46 = v126;
        sub_1BC8F7254();
      }

      else
      {
        v47 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID;
        swift_beginAccess();
        v46 = v126;
        v43(v126, &v28[v47], v22);
      }

      v48 = v121;
      v49 = sub_1BC8F7214();
      v146(v46, v22);
      v50 = v149;
      [v149 setConversationID_];

      v51 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
      swift_beginAccess();
      v52 = v127;
      (*v120)(v127, &v28[v51], v48);
      v53 = sub_1BC8F6F44();
      v54 = *v142;
      (*v142)(v52, v48);
      [v50 setMessageFile_];

      [v50 setMessageType_];
      swift_beginAccess();
      v55 = v137;
      sub_1BC830400();
      EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v48);
      v57 = 0;
      if (EnumTagSinglePayload != 1)
      {
        v58 = v137;
        v57 = sub_1BC8F6F44();
        v54(v58, v48);
      }

      v130 = v43;
      [v50 setMessageThumbnail_];

      swift_beginAccess();
      v59 = v138;
      sub_1BC830400();
      v60 = __swift_getEnumTagSinglePayload(v59, 1, v48);
      v61 = 0;
      if (v60 != 1)
      {
        v62 = v138;
        v61 = sub_1BC8F6F44();
        v54(v62, v48);
      }

      [v50 setTranscript_];

      v63 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
      swift_beginAccess();
      v65 = *v63;
      v64 = v63[1];

      sub_1BC7C3588(v65, v64, v50, &selRef_setFrom_);
      v66 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider];
      swift_beginAccess();
      v68 = *v66;
      v67 = v66[1];

      sub_1BC7C3588(v68, v67, v50, &selRef_setProvider_);
      v69 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
      swift_beginAccess();
      v70 = *v119;
      v71 = &v28[v69];
      v72 = v128;
      v73 = v129;
      (*v119)(v128, v71, v129);
      v74 = sub_1BC8F7174();
      v75 = *v118;
      (*v118)(v72, v73);
      [v149 setDateCreated_];

      v76 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified;
      swift_beginAccess();
      v70(v72, &v28[v76], v73);
      v77 = sub_1BC8F7174();
      v75(v72, v73);
      v78 = v149;
      [v149 setDateModified_];

      v79 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
      swift_beginAccess();
      [v78 setIsRead_];
      v80 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
      swift_beginAccess();
      [v78 setDuration_];
      v81 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
      swift_beginAccess();
      [v78 setMailboxType_];
      v82 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
      swift_beginAccess();
      [v78 setIsSensitive_];
      v83 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient];
      swift_beginAccess();
      if (*(v83 + 1))
      {

        v84 = sub_1BC8F7BE4();
      }

      else
      {
        v84 = 0;
      }

      v22 = v133;
      v85 = v140;
      [v78 setRecipient_];

      v86 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
      swift_beginAccess();
      [v78 setTranscriptionStatus_];
      v87 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT;
      swift_beginAccess();
      [v78 setIsRTT_];
      v88 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID];
      swift_beginAccess();
      if (*(v88 + 1))
      {

        v89 = sub_1BC8F7BE4();
      }

      else
      {
        v89 = 0;
      }

      [v78 setSimID_];

      v90 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
      swift_beginAccess();
      v91 = 7827308;
      v92 = 0xE300000000000000;
      switch(v28[v90])
      {
        case 1:
          v92 = 0xE600000000000000;
          v91 = 0x6D756964656DLL;
          break;
        case 2:
          v92 = 0xE400000000000000;
          v91 = 1751607656;
          break;
        case 3:
          v91 = 7823730;
          break;
        default:
          break;
      }

      sub_1BC7C3588(v91, v92, v78, &selRef_setQuality_);
      swift_beginAccess();
      v93 = v139;
      sub_1BC830400();
      v94 = __swift_getEnumTagSinglePayload(v93, 1, v22);
      v95 = 0;
      if (v94 != 1)
      {
        v96 = v139;
        v95 = sub_1BC8F7214();
        v146(v96, v22);
      }

      [v78 setReminderUUID_];

      v97 = &v28[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
      swift_beginAccess();
      if (*(v97 + 4) == 1)
      {
        if (*&v28[v148] != 2)
        {
          v98 = v28;
          v99 = sub_1BC8F7714();
          v100 = sub_1BC8F81E4();

          if (os_log_type_enabled(v99, v100))
          {
            v101 = swift_slowAlloc();
            v149 = swift_slowAlloc();
            v150 = v149;
            *v101 = v116;
            LODWORD(v148) = v100;
            v102 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
            swift_beginAccess();
            v103 = &v98[v102];
            v104 = v134;
            v130(v134, v103, v22);
            sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
            v105 = sub_1BC8F8A54();
            v107 = v106;
            v146(v104, v22);
            v108 = sub_1BC7A9A4C(v105, v107, &v150);

            *(v101 + 4) = v108;
            _os_log_impl(&dword_1BC7A3000, v99, v148, "No voicemailID provided for insert to temp for message with recordUUID: %{public}s!", v101, 0xCu);
            v109 = v149;
            __swift_destroy_boxed_opaque_existential_1(v149);
            MEMORY[0x1BFB2AA50](v109, -1, -1);
            MEMORY[0x1BFB2AA50](v101, -1, -1);
          }

          goto LABEL_43;
        }
      }

      else
      {
        [v78 setVoicemailID_];
      }

LABEL_43:
      v20 = v85 + 1;
      if (v141 == v124)
      {

        return;
      }
    }
  }

  v110 = v135;
LABEL_49:
}

void sub_1BC81A34C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BC7C0454(a1);
  for (i = 0; v4 != i; ++i)
  {
    sub_1BC8E2358();
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1BFB29A00](i, a1);
    }

    else
    {
      v6 = *(a1 + 8 * i + 32);
    }

    v7 = v6;
    if (__OFADD__(i, 1))
    {
      __break(1u);
      return;
    }

    sub_1BC81A514();
    v9 = v8;

    if (v2)
    {
      return;
    }
  }
}

id sub_1BC81A418(void *a1)
{
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B268);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BC7A3000, v3, v4, "Resetting the context", v5, 2u);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
  }

  return [a1 reset];
}

void sub_1BC81A514()
{
  OUTLINED_FUNCTION_22();
  v271 = v2;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  OUTLINED_FUNCTION_25(v5);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5_0();
  v265 = v7;
  OUTLINED_FUNCTION_19_6();
  sub_1BC8F71E4();
  OUTLINED_FUNCTION_0();
  v263 = v9;
  v264 = v8;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_12();
  v262 = v11 - v10;
  v12 = OUTLINED_FUNCTION_19_6();
  v266 = type metadata accessor for FaceTimeMessageStore_Transcript(v12);
  OUTLINED_FUNCTION_4_1();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_12();
  v270 = (v15 - v14);
  OUTLINED_FUNCTION_19_6();
  v16 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_12();
  v268 = (v21 - v20);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5A20, &qword_1BC901BF0);
  v23 = OUTLINED_FUNCTION_25(v22);
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_31();
  v269 = v24;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v25);
  v260 = &v245 - v26;
  OUTLINED_FUNCTION_19_6();
  v27 = sub_1BC8F7014();
  OUTLINED_FUNCTION_0();
  v29 = v28;
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_31();
  v261 = v31;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v32);
  v259 = &v245 - v33;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v245 - v35;
  if ((sub_1BC86D048() & 1) == 0)
  {
LABEL_20:
    sub_1BC82EF30();
    OUTLINED_FUNCTION_76();
    swift_allocError();
    *v95 = 0;
    swift_willThrow();
LABEL_50:
    OUTLINED_FUNCTION_23();
    return;
  }

  v250 = v16;
  v251 = v18;
  v248 = v0;
  v37 = objc_opt_self();
  v38 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageFile;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v39 = *(v29 + 16);
  v253 = v29 + 16;
  v254 = v38;
  v252 = v39;
  v39(v36, &v4[v38], v27);
  v40 = sub_1BC8F6F44();
  v249 = v29;
  v41 = *(v29 + 8);
  v256 = v29 + 8;
  v257 = v27;
  v255 = v41;
  (v41)(v36, v27);
  v42 = [v37 createFutureForFileAtURL_];

  v258 = v42;
  v43 = v4;
  if (!v42)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v83 = sub_1BC8F7734();
    __swift_project_value_buffer(v83, qword_1EDC2B268);
    v84 = v4;
    v85 = sub_1BC8F7714();
    v86 = sub_1BC8F81E4();

    if (os_log_type_enabled(v85, v86))
    {
      OUTLINED_FUNCTION_9();
      v87 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v277 = swift_slowAlloc();
      v88 = v277;
      *v87 = 136446210;
      v89 = &v4[v254];
      v90 = v257;
      v252(v36, v89, v257);
      sub_1BC7AAAD0(&qword_1EDC20610, MEMORY[0x1E6968FB0]);
      v91 = sub_1BC8F8A54();
      (v255)(v36, v90);
      v92 = OUTLINED_FUNCTION_97();
      sub_1BC7A9A4C(v92, v93, v94);
      OUTLINED_FUNCTION_77();

      *(v87 + 4) = v91;
      _os_log_impl(&dword_1BC7A3000, v85, v86, "MessageStoreManager: Failed to create future for asset at URL %{public}s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    goto LABEL_20;
  }

  type metadata accessor for FTStoredMessage();
  v44 = [swift_getObjCClassFromMetadata() entityName];
  if (!v44)
  {
    sub_1BC8F7C24();
    v44 = sub_1BC8F7BE4();
  }

  v45 = objc_opt_self();
  v46 = v271;
  v47 = [v45 insertNewObjectForEntityForName:v44 inManagedObjectContext:v271];

  v267 = swift_dynamicCastClass();
  if (!v267)
  {

    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v96 = sub_1BC8F7734();
    __swift_project_value_buffer(v96, qword_1EDC2B268);
    v97 = sub_1BC8F7714();
    sub_1BC8F81E4();
    v98 = OUTLINED_FUNCTION_36_0();
    if (os_log_type_enabled(v98, v99))
    {
      OUTLINED_FUNCTION_45();
      v100 = swift_slowAlloc();
      OUTLINED_FUNCTION_118(v100);
      OUTLINED_FUNCTION_43_0();
      _os_log_impl(v101, v102, v103, v104, v105, 2u);
      v106 = OUTLINED_FUNCTION_13_2();
      MEMORY[0x1BFB2AA50](v106);
    }

    [v46 reset];
    sub_1BC82EF30();
    OUTLINED_FUNCTION_76();
    swift_allocError();
    *v107 = 0;
    swift_willThrow();
    goto LABEL_49;
  }

  v246 = v47;
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v245 = sub_1BC8F7734();
  v48 = __swift_project_value_buffer(v245, qword_1EDC2B268);
  v49 = v4;
  v50 = v46;
  v51 = sub_1BC8F7714();
  v52 = sub_1BC8F8204();
  v247 = v50;

  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    v271 = v48;
    v54 = v53;
    v55 = swift_slowAlloc();
    *v54 = 138543618;
    *(v54 + 4) = v49;
    *(v54 + 12) = 2114;
    v56 = v247;
    *(v54 + 14) = v247;
    *v55 = v49;
    v55[1] = v56;
    v57 = v49;
    v58 = v56;
    _os_log_impl(&dword_1BC7A3000, v51, v52, "MessageStoreManager: Inserting message: %{public}@\nto context: %{public}@", v54, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5DB0, &unk_1BC900410);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
  }

  v59 = &v43[v254];
  v60 = v257;
  v252(v36, v59, v257);
  v61 = sub_1BC8F6EE4();
  v63 = v62;
  (v255)(v36, v60);
  v64 = v267;
  sub_1BC7C3588(v61, v63, v267, &selRef_setFileType_);
  v65 = v258;
  swift_unknownObjectRetain();
  v66 = sub_1BC8F7BE4();
  [v64 setValue:v65 forKey:v66];
  swift_unknownObjectRelease();

  v67 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v271 = v67;
  v68 = *&v49[v67];
  v69 = v49;
  if (v68 >= 2)
  {
    v74 = v1;
    v75 = v270;
    v111 = v249;
    if (v68 != 2)
    {
      goto LABEL_83;
    }

    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v112 = v260;
    sub_1BC830400();
    if (__swift_getEnumTagSinglePayload(v112, 1, v60) != 1)
    {
      (*(v111 + 32))(v259, v112, v60);
      v127 = sub_1BC8F6EE4();
      sub_1BC7C3588(v127, v128, v64, &selRef_setThumbnailType_);
      v129 = sub_1BC8F7054();
      if (v1)
      {
        v131 = OUTLINED_FUNCTION_97();
        v255(v131);
LABEL_48:

LABEL_49:
        swift_unknownObjectRelease();
        goto LABEL_50;
      }

      sub_1BC82EE28(v129, v130, v64, &selRef_setMessageThumbnail_);
      v152 = OUTLINED_FUNCTION_97();
      v255(v152);
      goto LABEL_45;
    }

    sub_1BC7C1744(v112, &qword_1EBCF5A20, &qword_1BC901BF0);
    v113 = v69;
    v114 = sub_1BC8F7714();
    v115 = sub_1BC8F81E4();

    if (os_log_type_enabled(v114, v115))
    {
      OUTLINED_FUNCTION_9();
      v116 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v269 = swift_slowAlloc();
      v275[0] = v269;
      *v116 = 136446210;
      LODWORD(v261) = v115;
      v117 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      v118 = v251;
      v119 = &v113[v117];
      v120 = v268;
      (*(v251 + 16))(v268, v119, v250);
      OUTLINED_FUNCTION_12_9();
      sub_1BC7AAAD0(v121, v122);
      v123 = sub_1BC8F8A54();
      v125 = v124;
      (*(v118 + 8))(v120, v250);
      sub_1BC7A9A4C(v123, v125, v275);
      OUTLINED_FUNCTION_100();

      *(v116 + 4) = v120;
      _os_log_impl(&dword_1BC7A3000, v114, v261, "MessageStoreManager: Missing thumbnail for message with UUID %{public}s", v116, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v269);
      v74 = v1;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      v126 = OUTLINED_FUNCTION_5_5();
      MEMORY[0x1BFB2AA50](v126);
    }
  }

  else
  {
    [v64 setMessageThumbnail_];
    v70 = sub_1BC8F7714();
    sub_1BC8F8204();
    v71 = OUTLINED_FUNCTION_36_0();
    v73 = os_log_type_enabled(v71, v72);
    v74 = v1;
    v75 = v270;
    if (v73)
    {
      OUTLINED_FUNCTION_45();
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_90();
      _os_log_impl(v76, v77, v78, v79, v80, 2u);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v81 = v269;
    sub_1BC830400();
    v82 = v257;
    if (__swift_getEnumTagSinglePayload(v81, 1, v257) == 1)
    {
      sub_1BC7C1744(v81, &qword_1EBCF5A20, &qword_1BC901BF0);
      goto LABEL_38;
    }

    v108 = v261;
    (*(v249 + 32))(v261, v81, v82);
    v109 = sub_1BC8F7054();
    if (v1)
    {

      (v255)(v108, v82);
      v74 = 0;
LABEL_37:
      v75 = v270;
LABEL_38:
      v134 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
      OUTLINED_FUNCTION_13();
      swift_beginAccess();
      if (*&v69[v134] == 3)
      {
        v135 = sub_1BC8F7714();
        sub_1BC8F81E4();
        v136 = OUTLINED_FUNCTION_36_0();
        if (os_log_type_enabled(v136, v137))
        {
          OUTLINED_FUNCTION_45();
          v138 = swift_slowAlloc();
          OUTLINED_FUNCTION_118(v138);
          OUTLINED_FUNCTION_43_0();
          _os_log_impl(v139, v140, v141, v142, v143, 2u);
          v144 = OUTLINED_FUNCTION_13_2();
          MEMORY[0x1BFB2AA50](v144);
        }
      }

      goto LABEL_45;
    }

    if (sub_1BC86365C(v109, v110))
    {
      (v255)(v261, v257);
      v132 = OUTLINED_FUNCTION_79();
      sub_1BC7D4C94(v132, v133);
      goto LABEL_37;
    }

    v145 = v261;
    v146 = sub_1BC8F6EE4();
    sub_1BC7C3588(v146, v147, v64, &selRef_setTranscriptType_);
    v148 = OUTLINED_FUNCTION_79();
    sub_1BC82EDD0(v148, v149, v64);
    v150 = OUTLINED_FUNCTION_79();
    sub_1BC7D4C94(v150, v151);
    (v255)(v145, v257);
  }

  v75 = v270;
LABEL_45:
  sub_1BC865C3C();
  if (v275[0])
  {
    sub_1BC8CE5F4(v275, v75);
    sub_1BC7AAAD0(qword_1EDC1F830, type metadata accessor for FaceTimeMessageStore_Transcript);
    v153 = sub_1BC8F7544();
    if (v74)
    {
      OUTLINED_FUNCTION_57_1();
      goto LABEL_48;
    }

    v155 = v153;
    v156 = v154;
    OUTLINED_FUNCTION_57_1();
    sub_1BC82EE28(v155, v156, v64, &selRef_setTranscriptData_);
  }

  v157 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v159 = v250;
  v158 = v251;
  v160 = v251 + 16;
  v270 = *(v251 + 16);
  v266 = v157;
  v161 = v268;
  (v270)(v268, &v69[v157], v250);
  v162 = sub_1BC8F7214();
  v163 = *(v158 + 8);
  v163(v161, v159);
  v164 = v267;
  [v267 setRecordUUID_];

  v165 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_callUUID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (v270)(v161, &v69[v165], v159);
  sub_1BC8F7214();
  v166 = OUTLINED_FUNCTION_77();
  v163(v166, v159);
  [v164 setCallUUID_];

  v167 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_conversationID;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v261 = v160;
  (v270)(v161, &v69[v167], v159);
  sub_1BC8F7214();
  v168 = OUTLINED_FUNCTION_77();
  v251 = v158 + 8;
  v268 = v163;
  v163(v168, v159);
  v169 = v164;
  [v164 setConversationID_];

  [v164 setMessageType_];
  v170 = &v69[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_from];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v172 = *v170;
  v171 = v170[1];

  sub_1BC7C3588(v172, v171, v164, &selRef_setFrom_);
  v173 = &v69[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_provider];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v175 = *v173;
  v174 = v173[1];

  sub_1BC7C3588(v175, v174, v164, &selRef_setProvider_);
  v176 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateCreated;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v177 = v263;
  v178 = v264;
  v269 = *(v263 + 16);
  v179 = &v69[v176];
  v180 = v262;
  (v269)(v262, v179, v264);
  v181 = sub_1BC8F7174();
  v182 = *(v177 + 8);
  v183 = OUTLINED_FUNCTION_97();
  v182(v183);
  [v169 setDateCreated_];

  v184 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_dateModified;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  (v269)(v180, &v69[v184], v178);
  v185 = sub_1BC8F7174();
  v186 = OUTLINED_FUNCTION_97();
  v182(v186);
  [v169 setDateModified_];

  v187 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRead;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  [v169 setIsRead_];
  v188 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_mailboxType;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  [v169 setMailboxType_];
  v189 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isSensitive;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  [v169 setIsSensitive_];
  v190 = &v69[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recipient];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  if (v190[1])
  {
    v175 = *v190;

    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_101();
  }

  else
  {
    v190 = 0;
  }

  v191 = v248;
  v192 = v265;
  v193 = v267;
  [v267 setRecipient_];

  v194 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_isRTT;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  [v193 setIsRTT_];
  v195 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_transcriptionStatus;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  [v193 setTranscriptionStatus_];
  v196 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_duration;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  [v193 setDuration_];
  v197 = &v69[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_simID];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v198 = v250;
  if (v197[1])
  {
    v175 = *v197;

    sub_1BC8F7BE4();
    OUTLINED_FUNCTION_101();
  }

  else
  {
    v197 = 0;
  }

  [v267 setSimID_];

  v199 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_quality;
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v200 = 7827308;
  v201 = 0xE300000000000000;
  switch(v69[v199])
  {
    case 1:
      v201 = 0xE600000000000000;
      v200 = 0x6D756964656DLL;
      break;
    case 2:
      v201 = 0xE400000000000000;
      v200 = 1751607656;
      break;
    case 3:
      v200 = 7823730;
      break;
    default:
      break;
  }

  sub_1BC7C3588(v200, v201, v267, &selRef_setQuality_);
  v202 = &v69[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_summary];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  v203 = *(v202 + 2);
  v273 = *v202;
  v274 = v203;

  sub_1BC8511D8(&v273);
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  sub_1BC830400();
  v204 = 0;
  if (__swift_getEnumTagSinglePayload(v192, 1, v198) != 1)
  {
    v204 = v192;
    sub_1BC8F7214();
    v205 = OUTLINED_FUNCTION_100();
    v268(v205, v198);
  }

  [v267 setReminderUUID_];

  if (*&v271[v69] == 1)
  {
    v215 = &v69[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    if (v215[4])
    {
      if (qword_1EDC1E1A0 != -1)
      {
        swift_once();
      }

      __swift_project_value_buffer(v245, qword_1EDC2B208);
      v216 = sub_1BC8F7714();
      sub_1BC8F81E4();
      v217 = OUTLINED_FUNCTION_36_0();
      if (os_log_type_enabled(v217, v218))
      {
        OUTLINED_FUNCTION_45();
        v219 = swift_slowAlloc();
        OUTLINED_FUNCTION_118(v219);
        OUTLINED_FUNCTION_43_0();
        _os_log_impl(v220, v221, v222, v223, v224, 2u);
        v225 = OUTLINED_FUNCTION_13_2();
        MEMORY[0x1BFB2AA50](v225);
      }

      goto LABEL_76;
    }

    v235 = v69;
    v236 = *v215;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5930, &qword_1BC902B98);
    v237 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5938, &qword_1BC902BA0) - 8;
    OUTLINED_FUNCTION_103();
    v238 = swift_allocObject();
    *(v238 + 16) = xmmword_1BC8FC230;
    v239 = *(v237 + 56);
    v240 = OUTLINED_FUNCTION_126();
    v241(v240);
    *(v238 + v178 + v239) = v236;
    OUTLINED_FUNCTION_12_9();
    sub_1BC7AAAD0(v242, v243);
    v244 = sub_1BC8F7AD4();
    OUTLINED_FUNCTION_106(v244);
    if (!v175)
    {

      v69 = v235;
      goto LABEL_76;
    }

    goto LABEL_80;
  }

  if (*&v271[v69])
  {
LABEL_76:
    if (swift_weakLoadStrong())
    {
      sub_1BC8EC824(0, v69);
    }

    v226 = &v69[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
    OUTLINED_FUNCTION_13();
    swift_beginAccess();
    v227 = *v226;
    v228 = v226[4];
    v229 = *(v191 + OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache);
    objc_allocWithZone(type metadata accessor for Message(0));

    v272 = v228;
    sub_1BC86A9C0(v267, v227 | (v228 << 32), v229, v230, v231, v232, v233, v234, v245, v246, v247, v248, v249, v250, v251, v252, v253, v254, v255, v256);
    swift_unknownObjectRelease();
    goto LABEL_50;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5930, &qword_1BC902B98);
  v206 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5938, &qword_1BC902BA0);
  OUTLINED_FUNCTION_129();
  OUTLINED_FUNCTION_103();
  v207 = swift_allocObject();
  *(v207 + 16) = xmmword_1BC8FC230;
  v208 = v207 + v178;
  v209 = OUTLINED_FUNCTION_126();
  v210(v209);
  v211 = &v69[OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID];
  OUTLINED_FUNCTION_13();
  swift_beginAccess();
  LOWORD(v68) = v211[4];
  if ((v68 & 1) == 0)
  {
    *(v208 + *(v206 + 48)) = *v211;
    OUTLINED_FUNCTION_12_9();
    sub_1BC7AAAD0(v212, v213);
    v214 = sub_1BC8F7AD4();
    OUTLINED_FUNCTION_106(v214);
    if (!v175)
    {

      goto LABEL_76;
    }

LABEL_80:
    swift_unknownObjectRelease();

    goto LABEL_50;
  }

  __break(1u);
LABEL_83:
  v276[0] = v68;
  sub_1BC8F8B04();
  __break(1u);
}

void sub_1BC81BD54(uint64_t a1, uint64_t a2)
{
  v92 = a1;
  v3 = sub_1BC8F7264();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v91 = &v81 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v90 = &v81 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = &v81 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v81 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5940, &qword_1BC902BA8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v94 = &v81 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v93 = &v81 - v16;
  v17 = a2 + 64;
  v18 = 1 << *(a2 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(a2 + 64);
  v82 = (v18 + 63) >> 6;
  v100 = (v4 + 16);
  v95 = (v4 + 32);
  v86 = v4;
  v87 = a2;
  v102 = (v4 + 8);

  v21 = 0;
  *&v22 = 67240450;
  v84 = v22;
  *&v22 = 136446466;
  v83 = v22;
  v103 = v3;
  v89 = a2 + 64;
  v101 = v11;
  if (v20)
  {
    while (1)
    {
      v23 = v21;
LABEL_10:
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v26 = v25 | (v23 << 6);
      v28 = v86;
      v27 = v87;
      v29 = v85;
      v30 = v103;
      (*(v86 + 16))(v85, *(v87 + 48) + *(v86 + 72) * v26, v103);
      LODWORD(v27) = *(*(v27 + 56) + 4 * v26);
      v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5948, &qword_1BC902BB0);
      v32 = *(v31 + 48);
      v33 = *(v28 + 32);
      v34 = v94;
      v33(v94, v29, v30);
      *(v34 + v32) = v27;
      __swift_storeEnumTagSinglePayload(v34, 0, 1, v31);
      v11 = v101;
LABEL_11:
      v35 = v93;
      sub_1BC830458();
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5948, &qword_1BC902BB0);
      if (__swift_getEnumTagSinglePayload(v35, 1, v36) == 1)
      {

        return;
      }

      v37 = *(v35 + *(v36 + 48));
      (*v95)(v11, v35, v103);
      if (qword_1EDC1E1D0 != -1)
      {
        swift_once();
      }

      v38 = sub_1BC8F7734();
      v39 = __swift_project_value_buffer(v38, qword_1EDC2B268);
      v40 = *v100;
      v41 = v90;
      (*v100)(v90, v11, v103);
      v42 = sub_1BC8F7714();
      v43 = sub_1BC8F8204();
      v44 = os_log_type_enabled(v42, v43);
      v99 = v37;
      v96 = v40;
      v97 = v39;
      if (v44)
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v105 = v46;
        *v45 = v84;
        *(v45 + 4) = v37;
        *(v45 + 8) = 2082;
        sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
        v47 = sub_1BC8F8A54();
        v49 = v48;
        v98 = *v102;
        v98(v41, v103);
        v50 = sub_1BC7A9A4C(v47, v49, &v105);

        *(v45 + 10) = v50;
        _os_log_impl(&dword_1BC7A3000, v42, v43, "Attempting to set voicemailID: %{public}d for recordUUID: %{public}s", v45, 0x12u);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x1BFB2AA50](v46, -1, -1);
        MEMORY[0x1BFB2AA50](v45, -1, -1);
      }

      else
      {

        v98 = *v102;
        v98(v41, v103);
      }

      v51 = type metadata accessor for FTLocalMessageProperties();
      v52 = [swift_getObjCClassFromMetadata() entityName];
      v53 = v101;
      if (!v52)
      {
        sub_1BC8F7C24();
        v52 = sub_1BC8F7BE4();
      }

      v54 = [objc_opt_self() insertNewObjectForEntityForName:v52 inManagedObjectContext:v92];

      v55 = v91;
      v96(v91, v53, v103);
      v56 = sub_1BC8F7714();
      v57 = sub_1BC8F8204();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v96 = v54;
        v60 = v59;
        v105 = v59;
        *v58 = v83;
        v104 = v99;
        v61 = sub_1BC8F8A54();
        v63 = sub_1BC7A9A4C(v61, v62, &v105);
        v88 = v51;
        v64 = v63;

        *(v58 + 4) = v64;
        *(v58 + 12) = 2082;
        sub_1BC7AAAD0(&qword_1EDC20FA0, MEMORY[0x1E69695A8]);
        v65 = sub_1BC8F8A54();
        v67 = v66;
        v68 = v55;
        v69 = v98;
        v98(v68, v103);
        v70 = sub_1BC7A9A4C(v65, v67, &v105);

        *(v58 + 14) = v70;
        _os_log_impl(&dword_1BC7A3000, v56, v57, "Saving voicemailID: %{public}s to recordUUID: %{public}s", v58, 0x16u);
        swift_arrayDestroy();
        v71 = v60;
        v54 = v96;
        MEMORY[0x1BFB2AA50](v71, -1, -1);
        MEMORY[0x1BFB2AA50](v58, -1, -1);
      }

      else
      {

        v72 = v55;
        v69 = v98;
        v98(v72, v103);
      }

      v73 = swift_dynamicCastClass();
      v11 = v101;
      if (!v73)
      {
        break;
      }

      v74 = v73;
      v75 = sub_1BC8F7214();
      [v74 setRecordUUID_];

      [v74 setVoicemailID_];
      v69(v11, v103);
      v17 = v89;
      if (!v20)
      {
        goto LABEL_5;
      }
    }

    v77 = sub_1BC8F7714();
    v78 = sub_1BC8F81E4();
    if (os_log_type_enabled(v77, v78))
    {
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1BC7A3000, v77, v78, "Failed to insert voicemail ID for recordUUID because property description was invalid!", v79, 2u);
      MEMORY[0x1BFB2AA50](v79, -1, -1);
    }

    sub_1BC82EF30();
    swift_allocError();
    *v80 = 0;
    swift_willThrow();

    v69(v11, v103);
  }

  else
  {
LABEL_5:
    v24 = v94;
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= v82)
      {
        v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5948, &qword_1BC902BB0);
        __swift_storeEnumTagSinglePayload(v24, 1, 1, v76);
        v20 = 0;
        goto LABEL_11;
      }

      v20 = *(v17 + 8 * v23);
      ++v21;
      if (v20)
      {
        v21 = v23;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

void sub_1BC81C684(void *a1)
{
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B268);
  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BC7A3000, v3, v4, "Making sure temp store is empty!", v5, 2u);
    MEMORY[0x1BFB2AA50](v5, -1, -1);
  }

  type metadata accessor for FTLocalMessage();
  v6 = static FTLocalMessage.fetchRequest()();
  [v6 setResultType_];
  v7 = [objc_allocWithZone(MEMORY[0x1E695D538]) initWithFetchRequest_];
  [v7 setResultType_];
  sub_1BC81C7E4(v7, a1);
}

id sub_1BC81C7E4(void *a1, void *a2)
{
  v43[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1BC8F7734();
  v5 = __swift_project_value_buffer(v4, qword_1EDC2B268);
  v6 = a1;
  v7 = sub_1BC8F7714();
  v8 = sub_1BC8F8204();

  if (os_log_type_enabled(v7, v8))
  {
    v39 = v5;
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v43[0] = v10;
    *v9 = 136446210;
    v40 = v6;
    sub_1BC7D9730(0, &qword_1EBCF59B0, 0x1E695D6D0);
    v11 = v6;
    v12 = sub_1BC8F7C94();
    v14 = sub_1BC7A9A4C(v12, v13, v43);

    *(v9 + 4) = v14;
    _os_log_impl(&dword_1BC7A3000, v7, v8, "MessageStoreManager: Executing request: %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1BFB2AA50](v10, -1, -1);
    MEMORY[0x1BFB2AA50](v9, -1, -1);
  }

  v43[0] = 0;
  v15 = [a2 executeRequest:v6 error:v43];
  v16 = v43[0];
  if (v15)
  {
    v17 = v15;
    v18 = v43[0];

    v43[0] = 0;
    v19 = [a2 save_];
    v16 = v43[0];
    if (v19)
    {
      return v43[0];
    }
  }

  v21 = v16;
  v22 = sub_1BC8F6EA4();

  swift_willThrow();
  v23 = v22;
  v24 = sub_1BC8F7714();
  v25 = sub_1BC8F81E4();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v43[0] = v39;
    *v26 = 136446210;
    swift_getErrorValue();
    v27 = v41;
    v28 = v42;
    v29 = sub_1BC8F83F4();
    v38[1] = v38;
    v30 = *(v29 - 8);
    MEMORY[0x1EEE9AC00](v29);
    v32 = v38 - v31;
    (*(*(v28 - 8) + 16))(v38 - v31, v27, v28);
    __swift_storeEnumTagSinglePayload(v32, 0, 1, v28);
    v33 = sub_1BC8073F0(v32, v28);
    v35 = v34;
    (*(v30 + 8))(v32, v29);
    v36 = sub_1BC7A9A4C(v33, v35, v43);

    *(v26 + 4) = v36;
    _os_log_impl(&dword_1BC7A3000, v24, v25, "Error executing request %{public}s", v26, 0xCu);
    v37 = v39;
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1BFB2AA50](v37, -1, -1);
    MEMORY[0x1BFB2AA50](v26, -1, -1);
  }

  return swift_willThrow();
}

uint64_t sub_1BC81CC20@<X0>(unint64_t *a1@<X1>, uint64_t *a2@<X8>)
{
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  v6 = (Request - 8);
  MEMORY[0x1EEE9AC00](Request);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  sub_1BC7A5AB4(v9);
  sub_1BC8F7254();
  *&v8[v6[7]] = v9;
  *&v8[v6[8]] = 512;
  *&v8[v6[9]] = 1;
  v10 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  v11 = &v8[v6[10]];
  *v11 = v10;
  v11[1] = v12;
  *&v8[v6[11]] = 0x7FFFFFFFFFFFFFFFLL;
  *&v8[v6[12]] = 0;
  v13 = sub_1BC7BF3F8(v8);
  if (v2)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v14 = sub_1BC8F7734();
    __swift_project_value_buffer(v14, qword_1EDC2B268);
    v15 = v2;
    v16 = sub_1BC8F7714();
    v17 = sub_1BC8F81E4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v18 = 138543362;
      v20 = v2;
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v18 + 4) = v21;
      *v19 = v21;
      _os_log_impl(&dword_1BC7A3000, v16, v17, "MessageStoreManager: Encountered an error while trying to get all messages for migration: %{public}@", v18, 0xCu);
      sub_1BC7C1744(v19, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v19, -1, -1);
      MEMORY[0x1BFB2AA50](v18, -1, -1);
    }

    swift_willThrow();
  }

  else
  {
    *a2 = v13;
  }

  return sub_1BC830350(v8, type metadata accessor for MessageStoreFetchRequest);
}

uint64_t sub_1BC81CE7C@<X0>(unint64_t *a1@<X1>, void *a2@<X8>)
{
  v5 = sub_1BC8F7264();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  Request = type metadata accessor for MessageStoreFetchRequest(0);
  v10 = (Request - 8);
  MEMORY[0x1EEE9AC00](Request);
  v12 = (&v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *a1;
  sub_1BC7A5AB4(v13);
  sub_1BC8F7254();
  *(v12 + v10[7]) = v13;
  *(v12 + v10[8]) = 512;
  *(v12 + v10[9]) = 0;
  v14 = sub_1BC7A6640([objc_allocWithZone(MEMORY[0x1E698E740]) init]);
  v15 = (v12 + v10[10]);
  *v15 = v14;
  v15[1] = v16;
  *(v12 + v10[11]) = 0x7FFFFFFFFFFFFFFFLL;
  *(v12 + v10[12]) = 0;
  v17 = sub_1BC7BF3F8(v12);
  v18 = v2;
  if (!v2)
  {
    v28 = v17;
    v37 = a2;
    v38 = 0;
    v39 = v12;
    v43 = sub_1BC7C0454(v17);
    v29 = 0;
    v41 = v28 & 0xFFFFFFFFFFFFFF8;
    v42 = v28 & 0xC000000000000001;
    v12 = (v6 + 16);
    v40 = v6 + 32;
    v30 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v43 == v29)
      {

        result = sub_1BC830350(v39, type metadata accessor for MessageStoreFetchRequest);
        *v37 = v30;
        return result;
      }

      if (v42)
      {
        v31 = MEMORY[0x1BFB29A00](v29, v28);
      }

      else
      {
        if (v29 >= *(v41 + 16))
        {
          goto LABEL_20;
        }

        v31 = *(v28 + 8 * v29 + 32);
      }

      v32 = v31;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      v33 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_recordUUID;
      swift_beginAccess();
      (*v12)(v8, &v32[v33], v5);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BC7F7144();
        v30 = v34;
      }

      v18 = *(v30 + 16);
      if (v18 >= *(v30 + 24) >> 1)
      {
        sub_1BC7F7144();
        v30 = v35;
      }

      *(v30 + 16) = v18 + 1;
      (*(v6 + 32))(v30 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v18, v8, v5);
      ++v29;
    }

    __break(1u);
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (qword_1EDC1E1D0 != -1)
  {
LABEL_21:
    swift_once();
  }

  v19 = sub_1BC8F7734();
  __swift_project_value_buffer(v19, qword_1EDC2B268);
  v20 = v18;
  v21 = sub_1BC8F7714();
  v22 = sub_1BC8F81E4();

  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    *v23 = 138543362;
    v25 = v18;
    v26 = _swift_stdlib_bridgeErrorToNSError();
    *(v23 + 4) = v26;
    *v24 = v26;
    _os_log_impl(&dword_1BC7A3000, v21, v22, "MessageStoreManager: Encountered an error while trying to get unnecessary messages for deletion: %{public}@", v23, 0xCu);
    sub_1BC7C1744(v24, &unk_1EBCF5DB0, &unk_1BC900410);
    MEMORY[0x1BFB2AA50](v24, -1, -1);
    MEMORY[0x1BFB2AA50](v23, -1, -1);
  }

  swift_willThrow();
  return sub_1BC830350(v12, type metadata accessor for MessageStoreFetchRequest);
}

uint64_t sub_1BC81D2F0@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for FTLocalMessage();
  result = sub_1BC8F8314();
  if (v2)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v5 = sub_1BC8F7734();
    __swift_project_value_buffer(v5, qword_1EDC2B268);
    v6 = v2;
    v7 = sub_1BC8F7714();
    v8 = sub_1BC8F81E4();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138543362;
      v11 = v2;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 4) = v12;
      *v10 = v12;
      _os_log_impl(&dword_1BC7A3000, v7, v8, "MessageStoreManager: Encountered an error while trying to get all messages for migration to perm db: %{public}@", v9, 0xCu);
      sub_1BC7C1744(v10, &unk_1EBCF5DB0, &unk_1BC900410);
      MEMORY[0x1BFB2AA50](v10, -1, -1);
      MEMORY[0x1BFB2AA50](v9, -1, -1);
    }

    return swift_willThrow();
  }

  else
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1BC81D480(uint64_t a1, uint64_t a2)
{
  if (!sub_1BC8F6D14())
  {
    v10 = 0u;
    v11 = 0u;
    goto LABEL_6;
  }

  sub_1BC8F8544();
  sub_1BC8E715C();

  sub_1BC8037DC(v9);
  if (!*(&v11 + 1))
  {
LABEL_6:
    sub_1BC7C1744(&v10, &unk_1EBCF5E50, &qword_1BC8FE850);
    return MEMORY[0x1E69E7CC0];
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF5978, &qword_1BC902D08);
  if ((OUTLINED_FUNCTION_134(v2, v3, v4, v2) & 1) == 0)
  {
    return MEMORY[0x1E69E7CC0];
  }

  sub_1BC80EB38(v9[0], v5);
  v7 = v6;

  return v7;
}

void sub_1BC81D588(uint64_t a1, uint64_t a2)
{
  if (sub_1BC8F6D14())
  {

    sub_1BC8F8544();
    sub_1BC8E715C();

    sub_1BC8037DC(v5);
    if (*(&v7 + 1))
    {
      v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF59A0, &qword_1BC902D28);
      if (OUTLINED_FUNCTION_134(v2, v3, v4, v2))
      {
        return;
      }

      goto LABEL_7;
    }
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  sub_1BC7C1744(&v6, &unk_1EBCF5E50, &qword_1BC8FE850);
LABEL_7:
  if (sub_1BC7C0454(MEMORY[0x1E69E7CC0]))
  {
    sub_1BC8C16BC(MEMORY[0x1E69E7CC0]);
  }
}

void sub_1BC81D694()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v20 - v3;
  v5 = sub_1BC8F7C24();
  sub_1BC81D588(v5, v6);
  v8 = v7;

  v9 = sub_1BC8F7C24();
  sub_1BC81D588(v9, v10);
  v12 = v11;

  v13 = sub_1BC8F7C24();
  sub_1BC81D588(v13, v14);
  v16 = v15;

  if (!sub_1BC814718(v8) || !sub_1BC814718(v12))
  {

    goto LABEL_8;
  }

  v17 = sub_1BC814718(v16);

  if (!v17)
  {
LABEL_8:
    v18 = swift_allocObject();
    v18[2] = v0;
    v18[3] = v8;
    v18[4] = v12;
    v19 = swift_allocObject();
    *(v19 + 16) = &unk_1BC902D18;
    *(v19 + 24) = v18;
    v20[0] = &unk_1BC902D20;
    v20[1] = v19;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
    sub_1BC8F7FD4();

    (*(v2 + 8))(v4, v1);
    return;
  }
}

uint64_t sub_1BC81D8F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BC81D91C, 0, 0);
}

uint64_t sub_1BC81D91C()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v2 = *(v1 + 56);
  v3 = swift_task_alloc();
  v4 = *(v1 + 40);
  *(v3 + 16) = v4;
  *(v3 + 32) = v2;
  v5 = v4;
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v5 + 88, *(v5 + 112));
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_6();
  v6();
  swift_endAccess();

  if (v0)
  {
    OUTLINED_FUNCTION_112();

    return swift_unexpectedError();
  }

  else
  {
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_112();

    return v10(v9, v10, v11, v12, v13, v14, v15, v16);
  }
}

double sub_1BC81DA34(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v147 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v145 = &v130 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v144 = &v130 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v130 - v12;
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v130 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v130 - v17;
  v19 = sub_1BC8F7264();
  v139 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = &v130 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v130 - v23;
  v25 = v148;
  sub_1BC81EBDC();
  v27 = qword_1EDC1E000;
  if (v25)
  {
    v28 = 0;
    v29 = v25;
LABEL_4:
    if (v27[58] != -1)
    {
      goto LABEL_84;
    }

    goto LABEL_5;
  }

  v135 = v24;
  v143 = v18;
  v141 = v16;
  v134 = v22;
  v142 = v19;
  v138 = v13;
  v137 = v26;
  v30 = v147;
  v31 = a1;
  v32 = a2;
  sub_1BC81EBDC();
  v34 = v33;
  v132 = v32;
  v52 = sub_1BC80EDA8(v30, v31);
  v136 = v34;
  v140 = 0;
  v148 = sub_1BC7C0454(v52);
  v28 = 0;
  v147 = (v52 & 0xC000000000000001);
  v146 = v52 & 0xFFFFFFFFFFFFFF8;
  v131 = (v139 + 32);
  v29 = &unk_1EBCF5D70;
  v130 = MEMORY[0x1E69E7CC0];
  v133 = MEMORY[0x1E69E7CC0];
  v53 = v142;
  v54 = v145;
  v55 = v143;
  while (v148 != v28)
  {
    if (v147)
    {
      v56 = MEMORY[0x1BFB29A00](v28, v52);
    }

    else
    {
      if (v28 >= *(v146 + 16))
      {
        goto LABEL_83;
      }

      v56 = *(v52 + 8 * v28 + 32);
    }

    v57 = v56;
    v58 = (v28 + 1);
    if (__OFADD__(v28, 1))
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      swift_once();
LABEL_5:
      v35 = sub_1BC8F7734();
      __swift_project_value_buffer(v35, qword_1EDC2B268);
      v36 = v29;
      v37 = sub_1BC8F7714();
      v38 = sub_1BC8F81E4();

      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v148 = swift_slowAlloc();
        v151[0] = v148;
        *v39 = 136446210;
        swift_getErrorValue();
        v140 = v28;
        v40 = v151[5];
        v41 = v151[6];
        v42 = sub_1BC8F83F4();
        v147 = &v130;
        v43 = *(v42 - 8);
        MEMORY[0x1EEE9AC00](v42);
        v45 = &v130 - v44;
        (*(*(v41 - 8) + 16))(&v130 - v44, v40, v41);
        __swift_storeEnumTagSinglePayload(v45, 0, 1, v41);
        v46 = sub_1BC8073F0(v45, v41);
        v48 = v47;
        (*(v43 + 8))(v45, v42);
        v49 = sub_1BC7A9A4C(v46, v48, v151);

        *(v39 + 4) = v49;
        _os_log_impl(&dword_1BC7A3000, v37, v38, "Error extracting messages from object IDs %{public}s", v39, 0xCu);
        v50 = v148;
        __swift_destroy_boxed_opaque_existential_1(v148);
        MEMORY[0x1BFB2AA50](v50, -1, -1);
        MEMORY[0x1BFB2AA50](v39, -1, -1);
      }

      else
      {
      }

      return result;
    }

    v59 = v29;
    v60 = [v56 dateDeleted];
    if (!v60)
    {

      v67 = sub_1BC8F71E4();
      __swift_storeEnumTagSinglePayload(v54, 1, 1, v67);
      sub_1BC7C1744(v54, &unk_1EBCF5D80, &qword_1BC8FEA60);
      __swift_storeEnumTagSinglePayload(v55, 1, 1, v53);
      goto LABEL_19;
    }

    v61 = v60;
    sub_1BC8F71B4();

    v62 = sub_1BC8F71E4();
    v63 = 1;
    __swift_storeEnumTagSinglePayload(v54, 0, 1, v62);
    sub_1BC7C1744(v54, &unk_1EBCF5D80, &qword_1BC8FEA60);
    v64 = [v57 recordUUID];
    if (v64)
    {
      v65 = v64;
      v66 = v141;
      sub_1BC8F7244();

      v63 = 0;
    }

    else
    {
      v66 = v141;
    }

    __swift_storeEnumTagSinglePayload(v66, v63, 1, v53);
    v55 = v143;
    v29 = v59;
    sub_1BC830458();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v53);
    v54 = v145;
    if (EnumTagSinglePayload == 1)
    {
LABEL_19:
      sub_1BC7C1744(v55, v29, &qword_1BC8FC740);
      ++v28;
    }

    else
    {
      v69 = *v131;
      v70 = v135;
      (*v131)(v135, v55, v53);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BC7F7144();
        v133 = v73;
      }

      v71 = *(v133 + 16);
      if (v71 >= *(v133 + 24) >> 1)
      {
        sub_1BC7F7144();
        v133 = v74;
      }

      v72 = v133;
      *(v133 + 16) = v71 + 1;
      v69((v72 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v71), v70, v53);
      v28 = v58;
      v54 = v145;
      v29 = v59;
    }
  }

  v145 = v52;
  v75 = v137;
  v76 = sub_1BC7C0454(v137);
  v77 = v144;
  if (!v76)
  {
    goto LABEL_31;
  }

  if (qword_1EDC1E1D0 != -1)
  {
    goto LABEL_89;
  }

  while (1)
  {
    v78 = sub_1BC8F7734();
    __swift_project_value_buffer(v78, qword_1EDC2B268);

    v79 = sub_1BC8F7714();
    v80 = sub_1BC8F8204();

    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v151[0] = v82;
      *v81 = 136446210;
      v150[0] = v137;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
      v83 = sub_1BC8F7C94();
      v85 = sub_1BC7A9A4C(v83, v84, v151);

      *(v81 + 4) = v85;
      _os_log_impl(&dword_1BC7A3000, v79, v80, "calculated inserts: %{public}s", v81, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v82);
      MEMORY[0x1BFB2AA50](v82, -1, -1);
      v86 = v81;
      v75 = v137;
      MEMORY[0x1BFB2AA50](v86, -1, -1);
    }

LABEL_31:
    v87 = sub_1BC7C0454(v136);
    if (!v87)
    {
      break;
    }

    v88 = v87;
    if (qword_1EDC1E1D0 != -1)
    {
      swift_once();
    }

    v89 = sub_1BC8F7734();
    __swift_project_value_buffer(v89, qword_1EDC2B268);
    v90 = v136;

    v91 = sub_1BC8F7714();
    v92 = sub_1BC8F8204();

    if (os_log_type_enabled(v91, v92))
    {
      v93 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v151[0] = v94;
      *v93 = 136446210;
      v150[0] = v90;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FF8, &qword_1BC8FD2B0);
      v95 = sub_1BC8F7C94();
      v97 = sub_1BC7A9A4C(v95, v96, v151);

      *(v93 + 4) = v97;
      _os_log_impl(&dword_1BC7A3000, v91, v92, "calculated updates: %{public}s", v93, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v94);
      MEMORY[0x1BFB2AA50](v94, -1, -1);
      MEMORY[0x1BFB2AA50](v93, -1, -1);
    }

    swift_beginAccess();
    sub_1BC830400();
    if (!v151[3])
    {
      sub_1BC7C1744(v151, &qword_1EBCF58F8, &qword_1BC9034D0);
LABEL_52:
      v75 = v137;
      break;
    }

    sub_1BC7A792C(v151, v150);
    sub_1BC7C1744(v151, &qword_1EBCF58F8, &qword_1BC9034D0);
    v75 = __swift_project_boxed_opaque_existential_1(v150, v150[3]);
    v98 = 0;
    v149 = MEMORY[0x1E69E7CC0];
    v99 = v136 & 0xC000000000000001;
    v100 = v136 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v88 == v98)
      {
        sub_1BC8C7030(v130);

        __swift_destroy_boxed_opaque_existential_1(v150);
        goto LABEL_52;
      }

      if (v99)
      {
        v101 = MEMORY[0x1BFB29A00](v98, v136);
      }

      else
      {
        if (v98 >= *(v100 + 16))
        {
          goto LABEL_88;
        }

        v101 = *(v136 + 8 * v98 + 32);
      }

      v102 = v101;
      v77 = v98 + 1;
      if (__OFADD__(v98, 1))
      {
        break;
      }

      v103 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
      v104 = swift_beginAccess();
      if (*&v102[v103] == 1)
      {
        MEMORY[0x1BFB29230](v104);
        if (*((v149 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v149 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();
        v130 = v149;
        ++v98;
      }

      else
      {

        ++v98;
      }

      v77 = v144;
    }

LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    swift_once();
  }

  if (!*(v133 + 16))
  {

    v128 = v133;
    goto LABEL_81;
  }

  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v105 = sub_1BC8F7734();
  __swift_project_value_buffer(v105, qword_1EDC2B268);
  v106 = v133;

  v107 = sub_1BC8F7714();
  v108 = sub_1BC8F8204();

  if (os_log_type_enabled(v107, v108))
  {
    v109 = swift_slowAlloc();
    v110 = swift_slowAlloc();
    v151[0] = v110;
    *v109 = 136446210;
    v150[0] = v106;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4FE0, &unk_1BC8FC780);
    v111 = sub_1BC8F7C94();
    v113 = sub_1BC7A9A4C(v111, v112, v151);

    *(v109 + 4) = v113;
    _os_log_impl(&dword_1BC7A3000, v107, v108, "calculated deletions: %{public}s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v110);
    MEMORY[0x1BFB2AA50](v110, -1, -1);
    MEMORY[0x1BFB2AA50](v109, -1, -1);
  }

  v114 = v138;
  v115 = 0;
  v116 = MEMORY[0x1E69E7CC0];
  v75 = &qword_1BC8FC740;
  while (v148 != v115)
  {
    if (v147)
    {
      v117 = MEMORY[0x1BFB29A00](v115, v145);
    }

    else
    {
      if (v115 >= *(v146 + 16))
      {
        goto LABEL_86;
      }

      v117 = *&v145[8 * v115 + 32];
    }

    v118 = v117;
    if (__OFADD__(v115, 1))
    {
      __break(1u);
LABEL_86:
      __break(1u);
      goto LABEL_87;
    }

    if ([v117 messageType] != 1)
    {

      __swift_storeEnumTagSinglePayload(v114, 1, 1, v142);
LABEL_70:
      sub_1BC7C1744(v114, &unk_1EBCF5D70, &qword_1BC8FC740);
      ++v115;
      continue;
    }

    v119 = [v118 recordUUID];
    if (v119)
    {
      v120 = v119;
      sub_1BC8F7244();

      v121 = 0;
    }

    else
    {
      v121 = 1;
    }

    v122 = v142;
    __swift_storeEnumTagSinglePayload(v77, v121, 1, v142);
    v114 = v138;
    sub_1BC830458();
    if (__swift_getEnumTagSinglePayload(v114, 1, v122) == 1)
    {
      goto LABEL_70;
    }

    v123 = v122;
    v124 = *v131;
    (*v131)(v134, v114, v123);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1BC7F7144();
      v116 = v126;
    }

    v125 = *(v116 + 16);
    if (v125 >= *(v116 + 24) >> 1)
    {
      sub_1BC7F7144();
      v116 = v127;
    }

    *(v116 + 16) = v125 + 1;
    v124((v116 + ((*(v139 + 80) + 32) & ~*(v139 + 80)) + *(v139 + 72) * v125), v134, v142);
    ++v115;
    v114 = v138;
  }

  sub_1BC81F2CC(v116);

  v128 = v133;
  v129 = v140;
  sub_1BC81F454(v133);
  if (v129)
  {

    v29 = v129;
    v28 = 0;
    v27 = qword_1EDC1E000;
    goto LABEL_4;
  }

  v75 = v137;
LABEL_81:
  sub_1BC81F598(v75, v136, v128);

  return result;
}

void sub_1BC81EBDC()
{
  OUTLINED_FUNCTION_22();
  v75 = v1;
  v3 = v2;
  v5 = v4;
  v92[6] = *MEMORY[0x1E69E9840];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D80, &qword_1BC8FEA60);
  OUTLINED_FUNCTION_25(v6);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5_0();
  v84 = v8;
  OUTLINED_FUNCTION_19_6();
  v87 = sub_1BC8F7264();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_31();
  v74 = v12;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v13);
  v80 = &v72 - v14;
  OUTLINED_FUNCTION_17_0();
  MEMORY[0x1EEE9AC00](v15);
  v86 = &v72 - v16;
  v91 = MEMORY[0x1E69E7CC0];
  v76 = v0;
  v89 = v3;
  if ((v5 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1BC8F84F4();
    sub_1BC7D9730(0, &qword_1EBCF5990, 0x1E695D630);
    sub_1BC82FECC(&qword_1EBCF5998, &qword_1EBCF5990, 0x1E695D630);
    sub_1BC8F8124();
    v5 = v92[1];
    v17 = v92[2];
    v18 = v92[3];
    v19 = v92[4];
    v20 = v92[5];
  }

  else
  {
    v21 = -1 << *(v5 + 32);
    v17 = (v5 + 56);
    v18 = ~v21;
    v22 = -v21;
    if (v22 < 64)
    {
      v23 = ~(-1 << v22);
    }

    else
    {
      v23 = -1;
    }

    v20 = (v23 & *(v5 + 56));

    v19 = 0;
  }

  v77 = v18;
  v24 = (v18 + 64) >> 6;
  v85 = (v10 + 32);
  v81 = (v10 + 8);
  v73 = v10;
  v72 = (v10 + 16);
  v78 = MEMORY[0x1E69E7CC0];
  v79 = MEMORY[0x1E69E7CC0];
  v82 = v17;
  v83 = v5;
  v88 = v24;
LABEL_8:
  v25 = v19;
  while ((v5 & 0x8000000000000000) != 0)
  {
    v30 = sub_1BC8F8514();
    if (!v30)
    {
      goto LABEL_33;
    }

    v90 = v30;
    sub_1BC7D9730(0, &qword_1EBCF5990, 0x1E695D630);
    swift_dynamicCast();
    v29 = v92[0];
    v19 = v25;
    v28 = v20;
    if (!v92[0])
    {
      goto LABEL_33;
    }

LABEL_18:
    v92[0] = 0;
    v31 = [v89 existingObjectWithID:v29 error:{v92, v72}];
    v32 = v92[0];
    if (!v31)
    {
      v71 = v92[0];

      sub_1BC8F6EA4();

      swift_willThrow();
      OUTLINED_FUNCTION_92();
      goto LABEL_37;
    }

    v33 = v31;
    type metadata accessor for FTStoredMessage();
    OUTLINED_FUNCTION_121();
    v34 = swift_dynamicCastClass();
    v35 = v32;
    if (!v34)
    {

      goto LABEL_25;
    }

    v36 = [v34 recordUUID];
    if (v36)
    {
      v37 = v36;
      v38 = v80;
      sub_1BC8F7244();

      v39 = v86;
      v40 = *v85;
      v41 = v38;
      v42 = v87;
      (*v85)(v86, v41, v87);
      v43 = [v34 dateDeleted];
      if (!v43)
      {
        sub_1BC8F71E4();
        v50 = v84;
        OUTLINED_FUNCTION_122();
        __swift_storeEnumTagSinglePayload(v51, v52, v53, v54);
        sub_1BC7C1744(v50, &unk_1EBCF5D80, &qword_1BC8FEA60);
        (*v72)(v74, v39, v42);
        v55 = v79;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1BC7F7144();
          v55 = v64;
        }

        v17 = v82;
        v57 = *(v55 + 16);
        v56 = *(v55 + 24);
        v58 = v57 + 1;
        if (v57 >= v56 >> 1)
        {
          OUTLINED_FUNCTION_37(v56);
          v79 = v65;
          sub_1BC7F7144();
          v58 = v79;
          v55 = v66;
        }

        *(v55 + 16) = v58;
        v59 = (*(v73 + 80) + 32) & ~*(v73 + 80);
        v79 = v55;
        v60 = v55 + v59 + *(v73 + 72) * v57;
        v61 = v87;
        v40(v60, v74, v87);
        v62 = v33;
        MEMORY[0x1BFB29230]();
        v63 = *((v91 & 0xFFFFFFFFFFFFFF8) + 0x18);
        if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10) >= v63 >> 1)
        {
          OUTLINED_FUNCTION_37(v63);
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();

        (*v81)(v86, v61);
        v78 = v91;
        v5 = v83;
        v20 = v28;
        v24 = v88;
        goto LABEL_8;
      }

      v44 = v43;
      v45 = v84;
      sub_1BC8F71B4();

      (*v81)(v39, v42);
      sub_1BC8F71E4();
      OUTLINED_FUNCTION_30_0();
      __swift_storeEnumTagSinglePayload(v46, v47, v48, v49);
      sub_1BC7C1744(v45, &unk_1EBCF5D80, &qword_1BC8FEA60);
      v25 = v19;
      v20 = v28;
      v17 = v82;
      v5 = v83;
      v24 = v88;
    }

    else
    {

LABEL_25:
      v25 = v19;
      v20 = v28;
      v24 = v88;
    }
  }

  v26 = v25;
  v27 = v20;
  v19 = v25;
  if (v20)
  {
LABEL_14:
    v28 = (v27 - 1) & v27;
    v29 = *(*(v5 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v27)))));
    if (!v29)
    {
      goto LABEL_33;
    }

    goto LABEL_18;
  }

  while (1)
  {
    v19 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      __break(1u);
    }

    if (v19 >= v24)
    {
      break;
    }

    v27 = v17[v19];
    ++v26;
    if (v27)
    {
      goto LABEL_14;
    }
  }

LABEL_33:
  OUTLINED_FUNCTION_92();
  OUTLINED_FUNCTION_21_4();
  v67 = swift_allocObject();
  *(v67 + 16) = v79;
  v92[0] = (v67 | 0x1000000000000000);
  v68 = v89;
  v69 = v75;
  v70 = sub_1BC821024();
  sub_1BC7B0EFC(v92[0]);
  if (!v69)
  {
    sub_1BC812E14(v78, v68, v70);
  }

LABEL_37:
  OUTLINED_FUNCTION_23();
}

uint64_t sub_1BC81F2CC(uint64_t a1)
{
  v3 = sub_1BC8F7264();
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = *(v5 + 16);
    v9 = v5 + 16;
    v16 = v10;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v12 = *(v9 + 56);
    v13 = (v9 - 8);
    do
    {
      v14 = v16(v7, v11, v3);
      MEMORY[0x1EEE9AC00](v14);
      *(&v15 - 2) = v1;
      *(&v15 - 1) = v7;
      sub_1BC829428(0xD000000000000010, 0x80000001BC90C6C0, sub_1BC82F9F8);
      result = (*v13)(v7, v3);
      v11 += v12;
      --v8;
    }

    while (v8);
  }

  return result;
}

void sub_1BC81F454(uint64_t a1)
{
  if (qword_1EDC1E1D0 != -1)
  {
    OUTLINED_FUNCTION_0_16();
    swift_once();
  }

  v2 = sub_1BC8F7734();
  __swift_project_value_buffer(v2, qword_1EDC2B268);
  OUTLINED_FUNCTION_101();

  v3 = sub_1BC8F7714();
  v4 = sub_1BC8F8204();

  if (os_log_type_enabled(v3, v4))
  {
    OUTLINED_FUNCTION_9();
    v5 = swift_slowAlloc();
    OUTLINED_FUNCTION_8_2();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    v7 = sub_1BC8F7264();
    v8 = MEMORY[0x1BFB29280](a1, v7);
    v10 = sub_1BC7A9A4C(v8, v9, &v14);

    *(v5 + 4) = v10;
    OUTLINED_FUNCTION_75_0(&dword_1BC7A3000, v11, v12, "MessageStoreManager: Deleting message assets for UUIDs: %s");
    __swift_destroy_boxed_opaque_existential_1(v6);
    OUTLINED_FUNCTION_6_0();
    MEMORY[0x1BFB2AA50]();
    v13 = OUTLINED_FUNCTION_5_5();
    MEMORY[0x1BFB2AA50](v13);
  }

  sub_1BC7EEA50(a1);
}

uint64_t sub_1BC81F598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF63D0, &qword_1BC902140);
  OUTLINED_FUNCTION_25(v8);
  OUTLINED_FUNCTION_4_0();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5_0();
  v10 = sub_1BC7C0454(a1);
  if (v10)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v11 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v11, qword_1EDC2B268);

    v12 = sub_1BC8F7714();
    v13 = sub_1BC8F8204();

    if (os_log_type_enabled(v12, v13))
    {
      OUTLINED_FUNCTION_9();
      v14 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v54 = swift_slowAlloc();
      v55 = v54;
      *v14 = 136446210;
      v15 = type metadata accessor for Message(0);
      v16 = MEMORY[0x1BFB29280](a1, v15);
      v18 = a2;
      v19 = a3;
      v20 = sub_1BC7A9A4C(v16, v17, &v55);

      *(v14 + 4) = v20;
      a3 = v19;
      a2 = v18;
      OUTLINED_FUNCTION_136(&dword_1BC7A3000, v21, v22, "Handling inserted messages %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v54);
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    if (swift_unknownObjectWeakLoadStrong())
    {
      sub_1BC87AE20(a1);
      swift_unknownObjectRelease();
    }
  }

  result = sub_1BC7C0454(a2);
  v24 = result;
  if (result)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v25 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v25, qword_1EDC2B268);

    v26 = sub_1BC8F7714();
    v27 = sub_1BC8F8204();

    if (os_log_type_enabled(v26, v27))
    {
      OUTLINED_FUNCTION_9();
      v28 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v52 = v10;
      v29 = swift_slowAlloc();
      v55 = v29;
      *v28 = 136446210;
      v30 = type metadata accessor for Message(0);
      v31 = MEMORY[0x1BFB29280](a2, v30);
      v33 = sub_1BC7A9A4C(v31, v32, &v55);

      *(v28 + 4) = v33;
      OUTLINED_FUNCTION_136(&dword_1BC7A3000, v34, v35, "Handling updated messages %{public}s");
      __swift_destroy_boxed_opaque_existential_1(v29);
      v10 = v52;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      sub_1BC87B3C8(a2);
      result = swift_unknownObjectRelease();
    }
  }

  v36 = *(a3 + 16);
  if (v36)
  {
    if (qword_1EDC1E1D0 != -1)
    {
      OUTLINED_FUNCTION_0_16();
      swift_once();
    }

    v37 = sub_1BC8F7734();
    OUTLINED_FUNCTION_37_0(v37, qword_1EDC2B268);

    v38 = sub_1BC8F7714();
    v39 = sub_1BC8F8204();

    if (os_log_type_enabled(v38, v39))
    {
      OUTLINED_FUNCTION_9();
      v40 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2();
      v53 = v10;
      v41 = swift_slowAlloc();
      v55 = v41;
      *v40 = 136446210;
      v42 = sub_1BC8F7264();
      v43 = MEMORY[0x1BFB29280](a3, v42);
      v45 = sub_1BC7A9A4C(v43, v44, &v55);

      *(v40 + 4) = v45;
      _os_log_impl(&dword_1BC7A3000, v38, v39, "Handling deleted messages with UUIDs %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v41);
      v10 = v53;
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
      OUTLINED_FUNCTION_6_0();
      MEMORY[0x1BFB2AA50]();
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v46 = OUTLINED_FUNCTION_77();
      sub_1BC87B8F0(v46);
      result = swift_unknownObjectRelease();
    }
  }

  if (v24 | v10 | v36)
  {
    sub_1BC8F7FC4();
    OUTLINED_FUNCTION_122();
    __swift_storeEnumTagSinglePayload(v47, v48, v49, v50);
    OUTLINED_FUNCTION_41_0();
    v51 = swift_allocObject();
    v51[2] = 0;
    v51[3] = 0;
    v51[4] = v4;

    OUTLINED_FUNCTION_85();
    sub_1BC8333D4();
  }

  return result;
}

uint64_t sub_1BC81FAA4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DD8, &unk_1BC90A440);
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v23 - v5;
  v7 = sub_1BC8F6D24();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  MEMORY[0x1EEE9AC00](v7);
  if (qword_1EDC1E1D0 != -1)
  {
    swift_once();
  }

  v10 = sub_1BC8F7734();
  __swift_project_value_buffer(v10, qword_1EDC2B268);
  v11 = sub_1BC8F7714();
  v12 = sub_1BC8F8204();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v6;
    v14 = v2;
    v15 = a1;
    v16 = v4;
    v17 = v13;
    *v13 = 0;
    _os_log_impl(&dword_1BC7A3000, v11, v12, "Handling store saved notification", v13, 2u);
    v18 = v17;
    v4 = v16;
    a1 = v15;
    v2 = v14;
    v6 = v23;
    MEMORY[0x1BFB2AA50](v18, -1, -1);
  }

  (*(v8 + 16))(&v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  v19 = (*(v8 + 80) + 24) & ~*(v8 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = v2;
  (*(v8 + 32))(v20 + v19, &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0), v7);
  v21 = swift_allocObject();
  *(v21 + 16) = &unk_1BC902CF0;
  *(v21 + 24) = v20;
  v25 = &unk_1BC902CF8;
  v26 = v21;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBCF4DF0, &unk_1BC90A410);
  sub_1BC8F7FD4();

  return (*(v24 + 8))(v6, v4);
}

uint64_t sub_1BC81FDC0(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1BC81FDE0, 0, 0);
}

uint64_t sub_1BC81FDE0()
{
  OUTLINED_FUNCTION_113();
  OUTLINED_FUNCTION_22_0();
  v1 = swift_task_alloc();
  v2 = *(v0 + 40);
  *(v1 + 16) = v2;
  v3 = v2;
  OUTLINED_FUNCTION_130();
  OUTLINED_FUNCTION_37_5();
  swift_beginAccess();
  __swift_mutable_project_boxed_opaque_existential_1(v3 + 88, *(v3 + 112));
  OUTLINED_FUNCTION_63_0();
  OUTLINED_FUNCTION_115();
  OUTLINED_FUNCTION_16_6();
  v4();
  swift_endAccess();

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_112();

  return v6(v5, v6, v7, v8, v9, v10, v11, v12);
}

void sub_1BC81FEC0(uint64_t a1, uint64_t a2)
{
  v159 = a2;
  v151 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBCF5D70, &qword_1BC8FC740);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v147 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v148 = &v146 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v161 = &v146 - v8;
  v9 = MEMORY[0x1EEE9AC00](v7);
  v160 = (&v146 - v10);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v163 = &v146 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v146 - v14;
  v16 = MEMORY[0x1EEE9AC00](v13);
  v18 = &v146 - v17;
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v146 - v19;
  v169 = sub_1BC8F7264();
  v21 = *(v169 - 8);
  v22 = MEMORY[0x1EEE9AC00](v169);
  v149 = &v146 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = MEMORY[0x1EEE9AC00](v22);
  v150 = &v146 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v153 = &v146 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v154 = &v146 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v162 = &v146 - v30;
  v31 = sub_1BC8F7C24();
  v168 = sub_1BC81D480(v31, v32);

  v33 = sub_1BC8F7C24();
  v167 = sub_1BC81D480(v33, v34);

  v35 = sub_1BC8F7C24();
  v37 = sub_1BC81D480(v35, v36);

  v38 = sub_1BC7C0454(v37);
  v39 = 0;
  v165 = v37 & 0xC000000000000001;
  v166 = v38;
  v164 = v37 & 0xFFFFFFFFFFFFFF8;
  v155 = v21;
  v158 = (v21 + 32);
  v157 = MEMORY[0x1E69E7CC0];
  while (v166 != v39)
  {
    if (v165)
    {
      v40 = MEMORY[0x1BFB29A00](v39, v37);
    }

    else
    {
      if (v39 >= *(v164 + 16))
      {
        goto LABEL_103;
      }

      v40 = *(v37 + 8 * v39 + 32);
    }

    v41 = v40;
    if (__OFADD__(v39, 1))
    {
      __break(1u);
LABEL_103:
      __break(1u);
LABEL_104:
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
      swift_once();
LABEL_99:
      v142 = sub_1BC8F7734();
      __swift_project_value_buffer(v142, qword_1EDC2B268);
      v143 = sub_1BC8F7714();
      v144 = sub_1BC8F8204();
      if (os_log_type_enabled(v143, v144))
      {
        v145 = swift_slowAlloc();
        *v145 = 0;
        _os_log_impl(&dword_1BC7A3000, v143, v144, "Received a managed object merged notification with no inserts, updates, or deletes", v145, 2u);
        MEMORY[0x1BFB2AA50](v145, -1, -1);
      }

      return;
    }

    v42 = [v40 recordUUID];
    if (v42)
    {
      v43 = v42;
      sub_1BC8F7244();

      v44 = 0;
    }

    else
    {
      v44 = 1;
    }

    v45 = v44;
    v46 = v169;
    __swift_storeEnumTagSinglePayload(v18, v45, 1, v169);
    sub_1BC830458();
    if (__swift_getEnumTagSinglePayload(v20, 1, v46) == 1)
    {
      sub_1BC7C1744(v20, &unk_1EBCF5D70, &qword_1BC8FC740);
      ++v39;
    }

    else
    {
      v47 = *v158;
      (*v158)(v162, v20, v169);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BC7F7144();
        v157 = v50;
      }

      v48 = *(v157 + 16);
      if (v48 >= *(v157 + 24) >> 1)
      {
        sub_1BC7F7144();
        v157 = v51;
      }

      v49 = v157;
      *(v157 + 16) = v48 + 1;
      v47(v49 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v48, v162, v169);
      ++v39;
    }
  }

  v52 = sub_1BC7C0454(v168);
  if (!v52 && !sub_1BC7C0454(v167) && !*(v157 + 16))
  {

    if (qword_1EDC1E1D0 != -1)
    {
      goto LABEL_112;
    }

    goto LABEL_99;
  }

  v53 = 0;
  v164 = v168 & 0xFFFFFFFFFFFFFF8;
  v165 = v168 & 0xC000000000000001;
  v156 = MEMORY[0x1E69E7CC0];
  while (v52 != v53)
  {
    if (v165)
    {
      v54 = MEMORY[0x1BFB29A00](v53, v168);
    }

    else
    {
      if (v53 >= *(v164 + 16))
      {
        goto LABEL_105;
      }

      v54 = *(v168 + 8 * v53 + 32);
    }

    v55 = v54;
    if (__OFADD__(v53, 1))
    {
      goto LABEL_104;
    }

    v56 = [v54 recordUUID];
    if (v56)
    {
      v57 = v56;
      v58 = v163;
      sub_1BC8F7244();

      v59 = 0;
    }

    else
    {
      v59 = 1;
      v58 = v163;
    }

    v60 = v59;
    v61 = v169;
    __swift_storeEnumTagSinglePayload(v58, v60, 1, v169);
    sub_1BC830458();
    if (__swift_getEnumTagSinglePayload(v15, 1, v61) == 1)
    {
      sub_1BC7C1744(v15, &unk_1EBCF5D70, &qword_1BC8FC740);
      ++v53;
    }

    else
    {
      v62 = *v158;
      (*v158)(v154, v15, v169);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BC7F7144();
        v156 = v65;
      }

      v63 = *(v156 + 16);
      if (v63 >= *(v156 + 24) >> 1)
      {
        sub_1BC7F7144();
        v156 = v66;
      }

      v64 = v156;
      *(v156 + 16) = v63 + 1;
      v62(v64 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v63, v154, v169);
      ++v53;
    }
  }

  v67 = v167;
  v166 = sub_1BC7C0454(v167);
  v68 = 0;
  v163 = (v67 & 0xC000000000000001);
  v69 = MEMORY[0x1E69E7CC0];
  v162 = (v67 & 0xFFFFFFFFFFFFFF8);
  v154 = MEMORY[0x1E69E7CC0];
  while (v166 != v68)
  {
    if (v163)
    {
      v70 = MEMORY[0x1BFB29A00](v68, v167);
    }

    else
    {
      if (v68 >= *(v162 + 2))
      {
        goto LABEL_107;
      }

      v70 = *(v167 + 8 * v68 + 32);
    }

    v71 = v70;
    if (__OFADD__(v68, 1))
    {
      goto LABEL_106;
    }

    v72 = [v70 recordUUID];
    if (v72)
    {
      v73 = v72;
      v74 = v161;
      sub_1BC8F7244();

      v75 = 0;
    }

    else
    {
      v75 = 1;
      v74 = v161;
    }

    v76 = v75;
    v77 = v169;
    __swift_storeEnumTagSinglePayload(v74, v76, 1, v169);
    v78 = v160;
    sub_1BC830458();
    if (__swift_getEnumTagSinglePayload(v78, 1, v77) == 1)
    {
      sub_1BC7C1744(v78, &unk_1EBCF5D70, &qword_1BC8FC740);
      ++v68;
    }

    else
    {
      v79 = *v158;
      (*v158)(v153, v78, v169);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1BC7F7144();
        v69 = v81;
      }

      v80 = *(v69 + 16);
      if (v80 >= *(v69 + 24) >> 1)
      {
        sub_1BC7F7144();
        v69 = v82;
      }

      *(v69 + 16) = v80 + 1;
      v79(v69 + ((*(v155 + 80) + 32) & ~*(v155 + 80)) + *(v155 + 72) * v80, v153, v169);
      ++v68;
    }
  }

  v83 = swift_allocObject();
  v173 = v156;
  sub_1BC7F3514(v69);
  *(v83 + 16) = v173;
  v173 = v83 | 0x1000000000000000;
  v84 = v152;
  v85 = sub_1BC821024();
  if (v84)
  {
    sub_1BC7B0EFC(v173);

    sub_1BC821208(v84);
    swift_willThrow();
  }

  else
  {
    v86 = v85;
    v152 = 0;
    sub_1BC7B0EFC(v173);
    KeyPath = swift_getKeyPath();
    v88 = sub_1BC8134DC(KeyPath, v86);

    v89 = 0;
    v171[0] = MEMORY[0x1E69E7CC0];
    v161 = OBJC_IVAR____TtC20FaceTimeMessageStore20CoreDataMessageStore_assetCache;
    v160 = (v155 + 16);
    v158 = (v155 + 8);
    v90 = MEMORY[0x1E69E7CC0];
    while (v52 != v89)
    {
      if (v165)
      {
        v91 = MEMORY[0x1BFB29A00](v89, v168);
      }

      else
      {
        if (v89 >= *(v164 + 16))
        {
          goto LABEL_109;
        }

        v91 = *(v168 + 8 * v89 + 32);
      }

      v92 = v91;
      v93 = v89 + 1;
      if (__OFADD__(v89, 1))
      {
        goto LABEL_108;
      }

      v94 = *&v161[v159];
      objc_allocWithZone(type metadata accessor for Message(0));
      v95 = v92;

      v170[0] = 1;
      sub_1BC86A9C0(v95, 0x100000000, v94, v96, v97, v98, v99, v100, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
      if (v101)
      {
        v102 = v101;
        v103 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
        swift_beginAccess();
        if (*(v102 + v103) == 2 || (v104 = [v95 recordUUID], v105 = v148, !v104))
        {
        }

        else
        {
          v106 = v104;
          v107 = v150;
          sub_1BC8F7244();

          v108 = v169;
          (*v160)(v105, v107, v169);
          __swift_storeEnumTagSinglePayload(v105, 0, 1, v108);
          if (*(v88 + 16) && (v109 = sub_1BC83C9A8(v105), (v110 & 1) != 0))
          {
            v111 = *(*(v88 + 56) + 8 * v109);
            sub_1BC7C1744(v105, &unk_1EBCF5D70, &qword_1BC8FC740);
            v112 = [v111 voicemailID];

            v113 = 0;
          }

          else
          {

            sub_1BC7C1744(v105, &unk_1EBCF5D70, &qword_1BC8FC740);
            v112 = 0;
            v113 = 1;
          }

          (*v158)(v150, v169);
          v114 = v102 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID;
          swift_beginAccess();
          *v114 = v112;
          *(v114 + 4) = v113;
        }

        MEMORY[0x1BFB29230]();
        if (*((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v171[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();
        v90 = v171[0];
        v89 = v93;
      }

      else
      {

        ++v89;
      }
    }

    v115 = 0;
    v174 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v116 = v159;
      if (v166 == v115)
      {
        break;
      }

      if (v163)
      {
        v117 = MEMORY[0x1BFB29A00](v115, v167);
      }

      else
      {
        if (v115 >= *(v162 + 2))
        {
          goto LABEL_111;
        }

        v117 = *(v167 + 8 * v115 + 32);
      }

      v118 = v117;
      v119 = v115 + 1;
      if (__OFADD__(v115, 1))
      {
        goto LABEL_110;
      }

      v120 = *&v161[v116];
      objc_allocWithZone(type metadata accessor for Message(0));
      v121 = v118;

      v172 = 1;
      sub_1BC86A9C0(v121, 0x100000000, v120, v122, v123, v124, v125, v126, v146, v147, v148, v149, v150, v151, v152, v153, v154, v155, v156, v157);
      if (v127)
      {
        v128 = v127;
        v129 = OBJC_IVAR____TtC20FaceTimeMessageStore7Message_messageType;
        swift_beginAccess();
        if (*(v128 + v129) == 2 || (v130 = [v121 recordUUID]) == 0)
        {
        }

        else
        {
          v131 = v130;
          v132 = v149;
          sub_1BC8F7244();

          v133 = v147;
          v134 = v132;
          v135 = v169;
          (*v160)(v147, v134, v169);
          __swift_storeEnumTagSinglePayload(v133, 0, 1, v135);
          if (*(v88 + 16) && (v136 = sub_1BC83C9A8(v133), (v137 & 1) != 0))
          {
            v138 = *(*(v88 + 56) + 8 * v136);
            sub_1BC7C1744(v133, &unk_1EBCF5D70, &qword_1BC8FC740);
            v139 = [v138 voicemailID];

            v140 = 0;
          }

          else
          {

            sub_1BC7C1744(v133, &unk_1EBCF5D70, &qword_1BC8FC740);
            v139 = 0;
            v140 = 1;
          }

          (*v158)(v149, v169);
          v141 = v128 + OBJC_IVAR____TtC20FaceTimeMessageStore7Message_voicemailID;
          swift_beginAccess();
          *v141 = v139;
          *(v141 + 4) = v140;
        }

        MEMORY[0x1BFB29230]();
        if (*((v174 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v174 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1BC8F7E94();
        }

        sub_1BC8F7ED4();
        v154 = v174;
        v115 = v119;
      }

      else
      {

        ++v115;
      }
    }

    sub_1BC81F598(v90, v154, v157);
  }
}