uint64_t sub_1D268C8E8()
{

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal18DebugInfoViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DebugInfoViewModel(uint64_t a1)
{
  result = qword_1EC6D8760;
  if (!qword_1EC6D8760)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D268C9E8(uint64_t a1)
{
  result = sub_1D2871A28();
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

uint64_t sub_1D268CA90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v4 = sub_1D25D0410(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = *(*(a3 + 56) + 16 * v4);
  sub_1D2870F68();
  return v6;
}

uint64_t sub_1D268CB24(uint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    a3(0);
    return a2;
  }

  return result;
}

uint64_t sub_1D268CBBC(uint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) == 0)
  {
    return a2;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D268CBF4(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = sub_1D27D3200();
  v4 = sub_1D260D9B4(&v6, (v3 + 32), v2, a1);
  sub_1D23EEDB0(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t sub_1D268CC84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  v5 = sub_1D2873CB8();
  v4[7] = v5;
  v4[8] = *(v5 - 8);
  v4[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D268CD48, 0, 0);
}

uint64_t sub_1D268CD48(uint64_t a1)
{
  v20 = v1;
  sub_1D2872528();
  sub_1D2870F68();
  v2 = sub_1D2873CA8();
  v3 = sub_1D28789F8();

  v4 = os_log_type_enabled(v2, v3);
  v6 = v1[8];
  v5 = v1[9];
  v7 = v1[7];
  if (v4)
  {
    v9 = v1[3];
    v8 = v1[4];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315138;
    *(v10 + 4) = sub_1D23D7C84(v9, v8, &v19);
    _os_log_impl(&dword_1D226E000, v2, v3, "FetchSelectedFace: person identifier: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x1D38A3520](v11, -1, -1);
    MEMORY[0x1D38A3520](v10, -1, -1);
  }

  (*(v6 + 8))(v5, v7);
  v12 = v1[6];
  v13 = v1[3];
  v14 = swift_task_alloc();
  v1[10] = v14;
  v15 = *(v1 + 2);
  *(v14 + 16) = v12;
  *(v14 + 24) = v13;
  *(v14 + 32) = v15;
  v16 = swift_task_alloc();
  v1[11] = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DDDB0, &qword_1D28938E8);
  *v16 = v1;
  v16[1] = sub_1D268CF6C;

  return MEMORY[0x1EEE6DDE0](v1 + 2, 0, 0, 0xD00000000000001BLL, 0x80000001D28BF980, sub_1D269591C, v14, v17);
}

uint64_t sub_1D268CF6C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D268D084, 0, 0);
}

uint64_t sub_1D268D084()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D268D0EC()
{
  v0 = sub_1D2878A88();
  MEMORY[0x1EEE9AC00](v0);
  v1 = sub_1D2877B68();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D2878AA8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22BCFD0(0, &qword_1ED89CD50, 0x1E69E9610);
  (*(v3 + 104))(v5, *MEMORY[0x1E69E8098], v2);
  sub_1D2877B58();
  v7[1] = MEMORY[0x1E69E7CC0];
  sub_1D23D45A0(&qword_1ED89CD60, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE50, &unk_1D2881A40);
  sub_1D249AF34(&qword_1ED89CE80, &unk_1EC6DAE50, &unk_1D2881A40);
  sub_1D2879088();
  result = sub_1D2878AD8();
  qword_1EC6E3BA0 = result;
  return result;
}

double sub_1D268D34C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, int a7)
{
  v29 = a7;
  v27 = a3;
  v28 = a6;
  v31 = a4;
  v32 = a5;
  v9 = sub_1D2877B48();
  v34 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D2877B68();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF870, &unk_1D289B900);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v26 - v16;
  if (qword_1EC6D8A18 != -1)
  {
    swift_once();
  }

  v26 = qword_1EC6E3BA0;
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 57) & ~*(v15 + 80);
  v19 = swift_allocObject();
  v21 = v27;
  v20 = v28;
  *(v19 + 16) = a2;
  *(v19 + 24) = v21;
  v22 = v32;
  *(v19 + 32) = v31;
  *(v19 + 40) = v22;
  *(v19 + 48) = v20;
  *(v19 + 56) = v29 & 1;
  (*(v15 + 32))(v19 + v18, v17, v14);
  aBlock[4] = sub_1D2691D64;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = &block_descriptor_36;
  v23 = _Block_copy(aBlock);
  sub_1D2870F68();
  v24 = v22;
  sub_1D2877B58();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D23D45A0(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
  sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80, &qword_1D287EE00);
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v13, v11, v23);
  _Block_release(v23);
  (*(v34 + 8))(v11, v9);
  (*(v30 + 8))(v13, v33);

  return result;
}

uint64_t sub_1D268D744(uint64_t a1, unint64_t a2, unint64_t a3, void *a4, void (**a5)(unint64_t, char *, unint64_t), char a6)
{
  sub_1D269515C(a2, a3, a4, a5, a6 & 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF870, &unk_1D289B900);
  return sub_1D2878518();
}

uint64_t sub_1D268D7D4(__n128 a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  sub_1D2691754(a3, a4, a5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF888, &unk_1D289B930);
  return sub_1D2878518();
}

double sub_1D268D830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v28 = a7;
  v29 = a8;
  v26[2] = a6;
  v27 = a3;
  v31 = a4;
  v32 = a5;
  v10 = sub_1D2877B48();
  v34 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_1D2877B68();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v14 = v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF888, &unk_1D289B930);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = v26 - v17;
  if (qword_1EC6D8A18 != -1)
  {
    swift_once();
  }

  v26[1] = qword_1EC6E3BA0;
  (*(v16 + 16))(v18, a1, v15);
  v19 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v20 = swift_allocObject();
  v21 = v27;
  *(v20 + 2) = a2;
  *(v20 + 3) = v21;
  v22 = v32;
  *(v20 + 4) = v31;
  *(v20 + 5) = v22;
  (*(v16 + 32))(&v20[v19], v18, v15);
  aBlock[4] = v28;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D23DFBA8;
  aBlock[3] = v29;
  v23 = _Block_copy(aBlock);
  sub_1D2870F68();
  v24 = v22;
  sub_1D2877B58();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1D23D45A0(&qword_1ED89CFE0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE80, &qword_1D287EE00);
  sub_1D249AF34(&qword_1ED89CEB0, &unk_1EC6DAE80, &qword_1D287EE00);
  sub_1D2879088();
  MEMORY[0x1D38A1540](0, v14, v12, v23);
  _Block_release(v23);
  (*(v34 + 8))(v12, v10);
  (*(v30 + 8))(v14, v33);

  return result;
}

unint64_t sub_1D268DC04(uint64_t a1, unint64_t a2, uint64_t a3, void *a4)
{
  result = sub_1D2692A30(a2, a3, a4, 5, 0);
  if (result >> 62)
  {
    v6 = result;
    v7 = sub_1D2879368();
    result = v6;
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  else if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_7:

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF888, &unk_1D289B930);
    return sub_1D2878518();
  }

  if ((result & 0xC000000000000001) != 0)
  {
    MEMORY[0x1D38A1C30](0);
    goto LABEL_7;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v5 = *(result + 32);
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D268DCF8(id *a1)
{
  v3 = sub_1D2873CB8();
  v4 = *(v3 - 8);
  *&v5 = MEMORY[0x1EEE9AC00](v3).n128_u64[0];
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *a1;
  [*a1 centerX];
  v10 = v9;
  [v8 size];
  v12 = v10 - v11 * 0.5;
  [v8 centerY];
  v14 = v13;
  [v8 size];
  v16 = v14 - v15 * 0.5;
  [v8 size];
  v18 = v17;
  [v8 size];
  v20 = v19;
  v53.origin.x = v12;
  v53.origin.y = v16;
  v53.size.width = v18;
  v53.size.height = v20;
  if (CGRectGetMinX(v53) <= 0.0)
  {
    return 0;
  }

  v54.origin.x = v12;
  v54.origin.y = v16;
  v54.size.width = v18;
  v54.size.height = v20;
  if (CGRectGetMinY(v54) <= 0.0)
  {
    return 0;
  }

  v55.origin.x = v12;
  v55.origin.y = v16;
  v55.size.width = v18;
  v55.size.height = v20;
  if (CGRectGetMaxX(v55) >= 1.0)
  {
    return 0;
  }

  v56.origin.x = v12;
  v56.origin.y = v16;
  v56.size.width = v18;
  v56.size.height = v20;
  if (CGRectGetMaxY(v56) >= 1.0)
  {
    return 0;
  }

  v21 = [v8 faceClusteringProperties];
  v22 = [v21 faceprint];

  if (v22)
  {
    v23 = [v22 faceprintData];

    if (v23)
    {
      v24 = sub_1D28716E8();
      v26 = v25;

      v27 = objc_allocWithZone(MEMORY[0x1E6984520]);
      sub_1D22D6CF8(v24, v26);
      v28 = sub_1D2692970(v24, v26);
      if (v1)
      {
        sub_1D22D6D60(v24, v26);
        sub_1D22D6D60(v24, v26);
        sub_1D2872528();
        v29 = v8;
        v30 = v1;
        v31 = sub_1D2873CA8();
        v32 = sub_1D2878A18();

        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          v50 = v32;
          v34 = v33;
          v49 = swift_slowAlloc();
          v51 = swift_slowAlloc();
          v52 = v51;
          *v34 = 136315394;
          v35 = [v29 localIdentifier];
          v36 = sub_1D28780A8();
          v38 = v37;

          v39 = sub_1D23D7C84(v36, v38, &v52);

          *(v34 + 4) = v39;
          *(v34 + 12) = 2112;
          v40 = v1;
          v41 = _swift_stdlib_bridgeErrorToNSError();
          *(v34 + 14) = v41;
          v42 = v49;
          *v49 = v41;
          _os_log_impl(&dword_1D226E000, v31, v50, "Failed to get faceprint for face: %s with error %@", v34, 0x16u);
          sub_1D22BD238(v42, qword_1EC6DA930, &qword_1D287E870);
          MEMORY[0x1D38A3520](v42, -1, -1);
          v43 = v51;
          __swift_destroy_boxed_opaque_existential_0(v51);
          MEMORY[0x1D38A3520](v43, -1, -1);
          MEMORY[0x1D38A3520](v34, -1, -1);
        }

        else
        {
        }

        (*(v4 + 8))(v7, v3);
        return 1;
      }

      v44 = v28;
      sub_1D22D6D60(v24, v26);
      v45 = [v44 faceprint];

      if (v45)
      {
        [v45 confidence];
        v47 = v46;
        sub_1D22D6D60(v24, v26);

        if (v47 < 0.8)
        {
          return 0;
        }
      }

      else
      {
        sub_1D22D6D60(v24, v26);
      }
    }
  }

  return 1;
}

uint64_t sub_1D268E1BC@<X0>(char *a1@<X8>)
{
  v2 = v1;
  v4 = sub_1D2871798();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v12 = MEMORY[0x1EEE9AC00](v11).n128_u64[0];
  v14 = &v24 - v13;
  v15 = [v2 creationDate];
  if (v15)
  {
    v16 = v15;
    sub_1D2871768();

    v17 = *(v5 + 32);
    v17(v14, v7, v4);
    (*(v5 + 56))(v14, 0, 1, v4);
    return (v17)(a1, v14, v4);
  }

  else
  {
    v19 = *(v5 + 56);
    v19(v14, 1, 1, v4);
    v20 = [v2 importDate];
    if (v20)
    {
      v21 = v20;
      sub_1D2871768();

      v22 = *(v5 + 32);
      v22(v10, v7, v4);
      v19(v10, 0, 1, v4);
      v22(a1, v10, v4);
      result = (*(v5 + 48))(v14, 1, v4);
    }

    else
    {
      v19(v10, 1, 1, v4);
      sub_1D2871778();
      v23 = *(v5 + 48);
      if (v23(v10, 1, v4) != 1)
      {
        sub_1D22BD238(v10, &unk_1EC6DAE40, &unk_1D287EC70);
      }

      result = (v23)(v14, 1, v4);
    }

    if (result != 1)
    {
      return sub_1D22BD238(v14, &unk_1EC6DAE40, &unk_1D287EC70);
    }
  }

  return result;
}

void sub_1D268E4E4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D268E604(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v8 = a4 >> 1;
  v9 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v9)
  {
    if (v9 < 1)
    {
      if (v8 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v13 = swift_allocObject();
      v14 = _swift_stdlib_malloc_size(v13);
      v13[2] = v9;
      v13[3] = 2 * ((v14 - 32) / 40);
      if (v8 != a3)
      {
LABEL_5:
        __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

void sub_1D268E700(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB90, &qword_1D28851B0);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D268E7F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      v8 = MEMORY[0x1E69E7CC0];
      if (v4 != a3)
      {
LABEL_7:
        memcpy(v8 + 4, (a2 + 8 * a3), 8 * v5);
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAB60, &qword_1D28A7580);
      v8 = swift_allocObject();
      v9 = _swift_stdlib_malloc_size(v8);
      v10 = v9 - 32;
      if (v9 < 32)
      {
        v10 = v9 - 25;
      }

      v8[2] = v5;
      v8[3] = 2 * (v10 >> 3);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D268E8F0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v7 = a4 >> 1;
  v8 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    goto LABEL_14;
  }

  if (v8)
  {
    if (v8 < 1)
    {
      if (v7 != a3)
      {
        goto LABEL_10;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v11 = *(a7(0) - 8);
      v12 = *(v11 + 72);
      v13 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      if (!v12)
      {
LABEL_15:
        __break(1u);
LABEL_16:
        __break(1u);
        return;
      }

      if (v15 - v13 == 0x8000000000000000 && v12 == -1)
      {
        goto LABEL_16;
      }

      v14[2] = v8;
      v14[3] = 2 * ((v15 - v13) / v12);
      if (v7 != a3)
      {
LABEL_10:
        a7(0);
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }
}

void sub_1D268EA94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABC0, &unk_1D289B420);
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DABB8, &qword_1D28851E0);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

void sub_1D268EB80(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_9:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
        goto LABEL_5;
      }
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF890, &unk_1D289B940);
      v7 = swift_allocObject();
      v8 = _swift_stdlib_malloc_size(v7);
      v7[2] = v5;
      v7[3] = 2 * ((v8 - 32) / 96);
      if (v4 != a3)
      {
LABEL_5:
        swift_arrayInitWithCopy();
        return;
      }
    }

    __break(1u);
    goto LABEL_9;
  }
}

uint64_t sub_1D268EC68(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D287015C(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D268ECE4(v6);
  return sub_1D2879238();
}

void sub_1D268ECE4(uint64_t a1)
{
  v2 = *(a1 + 8);
  v3 = sub_1D28795B8();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
        v6 = sub_1D2878468();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D268F4D8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

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
    sub_1D268EDF8(0, v2, 1, a1);
  }
}

void sub_1D268EDF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v80 = &v73 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v78 = &v73 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v79 = &v73 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v84 = &v73 - v15;
  v16 = sub_1D2871798();
  MEMORY[0x1EEE9AC00](v16);
  v85 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v87 = &v73 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v90 = &v73 - v22;
  v74 = a2;
  if (a3 != a2)
  {
    v91 = (v21 + 32);
    v23 = (v21 + 56);
    v24 = *a4;
    v81 = (v21 + 48);
    v82 = (v21 + 8);
    v83 = v24;
    v25 = v24 + 8 * a3 - 8;
    v26 = a1 - a3;
    v27 = &off_1E83FF000;
    v86 = (v21 + 56);
LABEL_5:
    v76 = v25;
    v77 = a3;
    v28 = *(v83 + 8 * a3);
    v75 = v26;
    v29 = v78;
    while (1)
    {
      v30 = *v25;
      v31 = v28;
      v92 = v30;
      v32 = [v31 v27[187]];
      v88 = v26;
      v89 = v31;
      if (v32)
      {
        v33 = v87;
        v34 = v32;
        sub_1D2871768();

        v35 = *v91;
        v36 = v84;
        (*v91)(v84, v33, v16);
        v37 = *v23;
        (*v23)(v36, 0, 1, v16);
        v35(v90, v36, v16);
      }

      else
      {
        v37 = *v23;
        (*v23)(v84, 1, 1, v16);
        v38 = [v31 importDate];
        if (v38)
        {
          v39 = v87;
          v40 = v38;
          sub_1D2871768();

          v41 = *v91;
          v42 = v79;
          (*v91)(v79, v39, v16);
          v37(v42, 0, 1, v16);
          v41(v90, v42, v16);
          v43 = *v81;
        }

        else
        {
          v44 = v79;
          v37(v79, 1, 1, v16);
          sub_1D2871778();
          v43 = *v81;
          if ((*v81)(v44, 1, v16) != 1)
          {
            sub_1D22BD238(v44, &unk_1EC6DAE40, &unk_1D287EC70);
          }
        }

        v45 = v84;
        if (v43(v84, 1, v16) != 1)
        {
          sub_1D22BD238(v45, &unk_1EC6DAE40, &unk_1D287EC70);
        }
      }

      v46 = v27[187];
      v47 = v92;
      v48 = [v92 v46];
      if (v48)
      {
        v49 = v87;
        v50 = v48;
        sub_1D2871768();

        v51 = *v91;
        v52 = v29;
        v53 = v49;
        v23 = v86;
        (*v91)(v29, v53, v16);
        v37(v29, 0, 1, v16);
        v54 = v85;
        v51(v85, v29, v16);
        v55 = v88;
      }

      else
      {
        v52 = v29;
        v37(v29, 1, 1, v16);
        v56 = [v47 importDate];
        v57 = v81;
        if (v56)
        {
          v58 = v56;
          v59 = v87;
          sub_1D2871768();

          v60 = *v91;
          v61 = v80;
          (*v91)(v80, v59, v16);
          v37(v61, 0, 1, v16);
          v62 = v61;
          v52 = v78;
          v60(v85, v62, v16);
          v55 = v88;
          v63 = (*v81)(v52, 1, v16);
        }

        else
        {
          v64 = v80;
          v37(v80, 1, 1, v16);
          sub_1D2871778();
          v65 = *v57;
          v66 = (*v57)(v64, 1, v16);
          v55 = v88;
          if (v66 != 1)
          {
            sub_1D22BD238(v64, &unk_1EC6DAE40, &unk_1D287EC70);
          }

          v63 = v65(v52, 1, v16);
        }

        v54 = v85;
        v23 = v86;
        if (v63 != 1)
        {
          sub_1D22BD238(v52, &unk_1EC6DAE40, &unk_1D287EC70);
        }
      }

      v29 = v52;
      v67 = v90;
      v68 = sub_1D2871738();
      v69 = v54;
      v70 = *v82;
      (*v82)(v69, v16);
      v70(v67, v16);

      v27 = &off_1E83FF000;
      if ((v68 & 1) == 0)
      {
LABEL_4:
        a3 = v77 + 1;
        v25 = v76 + 8;
        v26 = v75 - 1;
        if (v77 + 1 == v74)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v83)
      {
        break;
      }

      v71 = *v25;
      v28 = *(v25 + 8);
      *v25 = v28;
      *(v25 + 8) = v71;
      v25 -= 8;
      v72 = __CFADD__(v55, 1);
      v26 = v55 + 1;
      if (v72)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1D268F4D8(void ***a1, uint64_t a2, char *a3, unint64_t a4)
{
  v5 = v4;
  v214 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v226 = &v208 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v235 = &v208 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v227 = &v208 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v208 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v208 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v222 = &v208 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v208 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v225 = &v208 - v26;
  v241 = sub_1D2871798();
  MEMORY[0x1EEE9AC00](v241);
  v233 = &v208 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v240 = &v208 - v29;
  MEMORY[0x1EEE9AC00](v30);
  v220 = &v208 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v224 = &v208 - v33;
  MEMORY[0x1EEE9AC00](v34);
  v210 = &v208 - v35;
  MEMORY[0x1EEE9AC00](v36);
  v237 = &v208 - v38;
  v223 = a3;
  v39 = *(a3 + 1);
  if (v39 < 1)
  {
    v42 = MEMORY[0x1E69E7CC0];
LABEL_127:
    a4 = *v214;
    if (!*v214)
    {
      goto LABEL_166;
    }

    v19 = v42;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = v223;
    if (isUniquelyReferenced_nonNull_native)
    {
      v202 = v19;
LABEL_130:
      v243 = v202;
      v19 = *(v202 + 2);
      if (v19 >= 2)
      {
        do
        {
          v203 = *v40;
          if (!*v40)
          {
            goto LABEL_164;
          }

          v40 = v19 - 1;
          v204 = *&v202[16 * v19];
          v205 = v202;
          v206 = *&v202[16 * v19 + 24];
          sub_1D26907E0(&v203[v204], &v203[*&v202[16 * v19 + 16]], &v203[v206], a4);
          if (v5)
          {
            break;
          }

          if (v206 < v204)
          {
            goto LABEL_153;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v205 = sub_1D269163C(v205);
          }

          if (v19 - 2 >= *(v205 + 2))
          {
            goto LABEL_154;
          }

          v207 = &v205[16 * v19];
          *v207 = v204;
          *(v207 + 1) = v206;
          v243 = v205;
          sub_1D26915B0(v40);
          v202 = v243;
          v19 = *(v243 + 2);
          v40 = v223;
        }

        while (v19 > 1);
      }

LABEL_138:

      return;
    }

LABEL_160:
    v202 = sub_1D269163C(v19);
    goto LABEL_130;
  }

  v209 = a4;
  v40 = 0;
  v232 = (v37 + 8);
  v236 = (v37 + 32);
  v41 = (v37 + 56);
  v230 = (v37 + 48);
  v42 = MEMORY[0x1E69E7CC0];
  v43 = 0x1E83FF000;
  v228 = v16;
  v216 = v19;
  v215 = v24;
  v44 = v225;
  v234 = (v37 + 56);
  while (1)
  {
    v45 = v40 + 1;
    v229 = v230 & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    if (v40 + 1 < v39)
    {
      v231 = v39;
      v212 = v42;
      v213 = v5;
      v46 = *v223;
      v47 = *(*v223 + 8 * v45);
      v219 = 8 * v40;
      v48 = (v46 + 8 * v40);
      v50 = *v48;
      v49 = v48 + 2;
      v242 = v47;
      v51 = v50;
      v52 = v237;
      sub_1D268E1BC(v237);
      v53 = v210;
      sub_1D268E1BC(v210);
      LODWORD(v238) = sub_1D2871738();
      v19 = v232;
      v54 = *v232;
      v55 = v53;
      a4 = v241;
      (*v232)(v55, v241);
      v221 = v54;
      v54(v52, a4);

      v211 = v40;
      v56 = v40 + 2;
      while (1)
      {
        v70 = v231;
        if (v231 == v56)
        {
          break;
        }

        v71 = *(v49 - 1);
        v66 = *v49;
        v72 = v71;
        v73 = [v66 creationDate];
        v242 = v72;
        if (v73)
        {
          v74 = v73;
          v75 = v237;
          sub_1D2871768();

          v76 = *v236;
          v77 = v241;
          (*v236)(v44, v75, v241);
          v78 = *v41;
          (*v41)(v44, 0, 1, v77);
          v76(v224, v44, v77);
          v72 = v242;
        }

        else
        {
          v78 = *v41;
          v79 = v241;
          (*v41)(v44, 1, 1, v241);
          v80 = [v66 importDate];
          if (v80)
          {
            v81 = v237;
            v82 = v80;
            sub_1D2871768();

            v83 = *v236;
            v84 = v215;
            v85 = v81;
            v41 = v234;
            (*v236)(v215, v85, v79);
            v78(v84, 0, 1, v79);
            v83(v224, v84, v79);
            v72 = v242;
            v86 = *v230;
          }

          else
          {
            v87 = v215;
            v78(v215, 1, 1, v79);
            sub_1D2871778();
            v86 = *v230;
            if ((*v230)(v87, 1, v79) != 1)
            {
              sub_1D22BD238(v87, &unk_1EC6DAE40, &unk_1D287EC70);
            }

            v79 = v241;
          }

          v88 = v225;
          if (v86(v225, 1, v79) != 1)
          {
            sub_1D22BD238(v88, &unk_1EC6DAE40, &unk_1D287EC70);
          }
        }

        v89 = [v72 creationDate];
        if (v89)
        {
          v57 = v237;
          v58 = v89;
          sub_1D2871768();

          v59 = *v236;
          v239 = v49;
          v60 = v56;
          v61 = v66;
          v62 = v222;
          v63 = v241;
          v59(v222, v57, v241);
          v78(v62, 0, 1, v63);
          v64 = v220;
          v65 = v62;
          v66 = v61;
          v56 = v60;
          v49 = v239;
          v59(v220, v65, v63);
        }

        else
        {
          v63 = v241;
          v78(v222, 1, 1, v241);
          v90 = [v72 importDate];
          if (v90)
          {
            v91 = v237;
            v92 = v90;
            sub_1D2871768();

            v93 = *v236;
            v94 = v216;
            v95 = v91;
            v41 = v234;
            (*v236)(v216, v95, v63);
            v78(v94, 0, 1, v63);
            v96 = v94;
            v97 = v222;
            v93(v220, v96, v63);
            v98 = (*v230)(v97, 1, v63);
          }

          else
          {
            v99 = v216;
            v78(v216, 1, 1, v63);
            sub_1D2871778();
            v100 = *v230;
            if ((*v230)(v99, 1, v63) != 1)
            {
              sub_1D22BD238(v99, &unk_1EC6DAE40, &unk_1D287EC70);
            }

            v63 = v241;
            v98 = v100(v222, 1, v241);
          }

          v64 = v220;
          if (v98 != 1)
          {
            sub_1D22BD238(v222, &unk_1EC6DAE40, &unk_1D287EC70);
          }
        }

        v67 = v224;
        v19 = sub_1D2871738();
        v68 = v64;
        a4 = v232;
        v69 = v221;
        (v221)(v68, v63);
        v69(v67, v63);

        ++v56;
        ++v49;
        v44 = v225;
        if ((v238 ^ v19))
        {
          v70 = v56 - 1;
          break;
        }
      }

      v5 = v213;
      v42 = v212;
      v43 = 0x1E83FF000;
      v40 = v211;
      if ((v238 & 1) == 0)
      {
        goto LABEL_35;
      }

      if (v70 < v211)
      {
        goto LABEL_157;
      }

      if (v211 < v70)
      {
        v101 = 8 * v70 - 8;
        v102 = v70;
        v103 = v211;
        v16 = v228;
        v104 = v219;
        do
        {
          if (v103 != --v102)
          {
            v105 = *v223;
            if (!*v223)
            {
              goto LABEL_163;
            }

            v106 = *(v105 + v104);
            *(v105 + v104) = *(v105 + v101);
            *(v105 + v101) = v106;
          }

          ++v103;
          v101 -= 8;
          v104 += 8;
        }

        while (v103 < v102);
        v45 = v70;
      }

      else
      {
LABEL_35:
        v45 = v70;
        v16 = v228;
      }
    }

    v107 = *(v223 + 1);
    v221 = v45;
    if (v45 < v107)
    {
      v171 = __OFSUB__(v45, v40);
      v108 = v45 - v40;
      if (v171)
      {
        goto LABEL_156;
      }

      if (v108 < v209)
      {
        break;
      }
    }

LABEL_74:
    if (v221 < v40)
    {
      goto LABEL_155;
    }

    v156 = v42;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v42 = v156;
    }

    else
    {
      v42 = sub_1D2691650(0, *(v156 + 2) + 1, 1, v156);
    }

    a4 = *(v42 + 2);
    v157 = *(v42 + 3);
    v19 = a4 + 1;
    if (a4 >= v157 >> 1)
    {
      v42 = sub_1D2691650((v157 > 1), a4 + 1, 1, v42);
    }

    *(v42 + 2) = v19;
    v158 = &v42[16 * a4];
    v159 = v221;
    *(v158 + 4) = v40;
    *(v158 + 5) = v159;
    if (!*v214)
    {
      goto LABEL_165;
    }

    if (a4)
    {
      v40 = *v214;
      while (1)
      {
        v160 = v19 - 1;
        if (v19 >= 4)
        {
          break;
        }

        if (v19 == 3)
        {
          v161 = *(v42 + 4);
          v162 = *(v42 + 5);
          v171 = __OFSUB__(v162, v161);
          v163 = v162 - v161;
          v164 = v171;
LABEL_95:
          if (v164)
          {
            goto LABEL_144;
          }

          v177 = &v42[16 * v19];
          v179 = *v177;
          v178 = *(v177 + 1);
          v180 = __OFSUB__(v178, v179);
          v181 = v178 - v179;
          v182 = v180;
          if (v180)
          {
            goto LABEL_147;
          }

          v183 = &v42[16 * v160 + 32];
          v185 = *v183;
          v184 = *(v183 + 1);
          v171 = __OFSUB__(v184, v185);
          v186 = v184 - v185;
          if (v171)
          {
            goto LABEL_150;
          }

          if (__OFADD__(v181, v186))
          {
            goto LABEL_151;
          }

          if (v181 + v186 >= v163)
          {
            if (v163 < v186)
            {
              v160 = v19 - 2;
            }

            goto LABEL_116;
          }

          goto LABEL_109;
        }

        v187 = &v42[16 * v19];
        v189 = *v187;
        v188 = *(v187 + 1);
        v171 = __OFSUB__(v188, v189);
        v181 = v188 - v189;
        v182 = v171;
LABEL_109:
        if (v182)
        {
          goto LABEL_146;
        }

        v190 = &v42[16 * v160];
        v192 = *(v190 + 4);
        v191 = *(v190 + 5);
        v171 = __OFSUB__(v191, v192);
        v193 = v191 - v192;
        if (v171)
        {
          goto LABEL_149;
        }

        if (v193 < v181)
        {
          goto LABEL_3;
        }

LABEL_116:
        a4 = v160 - 1;
        if (v160 - 1 >= v19)
        {
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
LABEL_149:
          __break(1u);
LABEL_150:
          __break(1u);
LABEL_151:
          __break(1u);
LABEL_152:
          __break(1u);
LABEL_153:
          __break(1u);
LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
          goto LABEL_159;
        }

        if (!*v223)
        {
          goto LABEL_162;
        }

        v198 = v42;
        v19 = *&v42[16 * a4 + 32];
        v199 = *&v42[16 * v160 + 40];
        sub_1D26907E0((*v223 + 8 * v19), (*v223 + 8 * *&v42[16 * v160 + 32]), (*v223 + 8 * v199), v40);
        if (v5)
        {
          goto LABEL_138;
        }

        if (v199 < v19)
        {
          goto LABEL_140;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v198 = sub_1D269163C(v198);
        }

        if (a4 >= *(v198 + 2))
        {
          goto LABEL_141;
        }

        v200 = &v198[16 * a4];
        *(v200 + 4) = v19;
        *(v200 + 5) = v199;
        v243 = v198;
        sub_1D26915B0(v160);
        v42 = v243;
        v19 = *(v243 + 2);
        v44 = v225;
        if (v19 <= 1)
        {
          goto LABEL_3;
        }
      }

      v165 = &v42[16 * v19 + 32];
      v166 = *(v165 - 64);
      v167 = *(v165 - 56);
      v171 = __OFSUB__(v167, v166);
      v168 = v167 - v166;
      if (v171)
      {
        goto LABEL_142;
      }

      v170 = *(v165 - 48);
      v169 = *(v165 - 40);
      v171 = __OFSUB__(v169, v170);
      v163 = v169 - v170;
      v164 = v171;
      if (v171)
      {
        goto LABEL_143;
      }

      v172 = &v42[16 * v19];
      v174 = *v172;
      v173 = *(v172 + 1);
      v171 = __OFSUB__(v173, v174);
      v175 = v173 - v174;
      if (v171)
      {
        goto LABEL_145;
      }

      v171 = __OFADD__(v163, v175);
      v176 = v163 + v175;
      if (v171)
      {
        goto LABEL_148;
      }

      if (v176 >= v168)
      {
        v194 = &v42[16 * v160 + 32];
        v196 = *v194;
        v195 = *(v194 + 1);
        v171 = __OFSUB__(v195, v196);
        v197 = v195 - v196;
        if (v171)
        {
          goto LABEL_152;
        }

        if (v163 < v197)
        {
          v160 = v19 - 2;
        }

        goto LABEL_116;
      }

      goto LABEL_95;
    }

LABEL_3:
    v39 = *(v223 + 1);
    v40 = v221;
    v43 = 0x1E83FF000;
    if (v221 >= v39)
    {
      goto LABEL_127;
    }
  }

  if (__OFADD__(v40, v209))
  {
    goto LABEL_158;
  }

  if ((v209 + v40) >= v107)
  {
    v109 = v107;
  }

  else
  {
    v109 = v209 + v40;
  }

  if (v109 < v40)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  if (v221 == v109)
  {
    goto LABEL_74;
  }

  v212 = v42;
  v213 = v5;
  v231 = *v223;
  v110 = v231 + 8 * v221 - 8;
  v211 = v40;
  a4 = v40 - v221;
  v111 = v221;
  v217 = v109;
LABEL_49:
  v221 = v111;
  v112 = *(v231 + 8 * v111);
  v218 = a4;
  v113 = a4;
  v219 = v110;
  while (1)
  {
    v238 = v113;
    v114 = *v110;
    v115 = v112;
    v116 = v114;
    v117 = [v115 *(v43 + 1496)];
    v242 = v116;
    if (v117)
    {
      v118 = v117;
      v119 = v237;
      sub_1D2871768();

      v120 = *v236;
      v121 = v119;
      v122 = v241;
      (*v236)(v16, v121, v241);
      v123 = *v41;
      (*v41)(v16, 0, 1, v122);
      v120(v240, v16, v122);
      v116 = v242;
    }

    else
    {
      v123 = *v41;
      v124 = v241;
      (*v41)(v16, 1, 1, v241);
      v125 = [v115 importDate];
      if (v125)
      {
        v126 = v237;
        v127 = v125;
        sub_1D2871768();

        v128 = *v236;
        v129 = v227;
        v130 = v126;
        v116 = v242;
        (*v236)(v227, v130, v124);
        v123(v129, 0, 1, v124);
        v128(v240, v129, v124);
        v16 = v228;
        v131 = *v230;
      }

      else
      {
        v132 = v227;
        v123(v227, 1, 1, v124);
        sub_1D2871778();
        v131 = *v230;
        if ((*v230)(v132, 1, v124) != 1)
        {
          sub_1D22BD238(v227, &unk_1EC6DAE40, &unk_1D287EC70);
        }

        v124 = v241;
      }

      v43 = 0x1E83FF000;
      if (v131(v16, 1, v124) != 1)
      {
        sub_1D22BD238(v16, &unk_1EC6DAE40, &unk_1D287EC70);
      }
    }

    v133 = [v116 *(v43 + 1496)];
    v239 = v115;
    if (v133)
    {
      v134 = v43;
      v135 = v237;
      v136 = v133;
      sub_1D2871768();

      v137 = v235;
      v138 = *v236;
      v139 = v135;
      v19 = v241;
      (*v236)(v235, v139, v241);
      v123(v137, 0, 1, v19);
      v140 = v233;
      v138(v233, v137, v19);
    }

    else
    {
      v19 = v241;
      v123(v235, 1, 1, v241);
      v141 = [v116 importDate];
      if (v141)
      {
        v142 = v237;
        v143 = v141;
        sub_1D2871768();

        v144 = *v236;
        v145 = v226;
        (*v236)(v226, v142, v19);
        v123(v145, 0, 1, v19);
        v134 = 0x1FAD58000uLL;
        v16 = v228;
        v144(v233, v145, v19);
        v146 = (*v230)(v235, 1, v19);
      }

      else
      {
        v147 = v226;
        v123(v226, 1, 1, v19);
        sub_1D2871778();
        v148 = *v230;
        v134 = v43;
        if ((*v230)(v147, 1, v19) != 1)
        {
          sub_1D22BD238(v147, &unk_1EC6DAE40, &unk_1D287EC70);
        }

        v19 = v241;
        v146 = v148(v235, 1, v241);
      }

      v140 = v233;
      if (v146 != 1)
      {
        sub_1D22BD238(v235, &unk_1EC6DAE40, &unk_1D287EC70);
      }
    }

    v149 = v240;
    v150 = sub_1D2871738();
    v151 = v140;
    v152 = *v232;
    (*v232)(v151, v19);
    v152(v149, v19);

    if ((v150 & 1) == 0)
    {
      v41 = v234;
      v43 = v134;
LABEL_48:
      v111 = v221 + 1;
      v110 = v219 + 8;
      a4 = v218 - 1;
      if ((v221 + 1) == v217)
      {
        v221 = v217;
        v5 = v213;
        v42 = v212;
        v44 = v225;
        v40 = v211;
        goto LABEL_74;
      }

      goto LABEL_49;
    }

    v153 = v238;
    if (!v231)
    {
      break;
    }

    v43 = v134;
    v154 = *v110;
    v112 = *(v110 + 8);
    *v110 = v112;
    *(v110 + 8) = v154;
    v110 -= 8;
    v155 = __CFADD__(v153, 1);
    v113 = (v153 + 1);
    v41 = v234;
    if (v155)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_162:
  __break(1u);
LABEL_163:
  __break(1u);
LABEL_164:
  __break(1u);
LABEL_165:
  __break(1u);
LABEL_166:
  __break(1u);
}

uint64_t sub_1D26907E0(void **a1, void **a2, void **a3, void **a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v134 = &v130 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v132 = &v130 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v133 = &v130 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v141 = &v130 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v135 = &v130 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v131 = &v130 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v142 = &v130 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v140 = (&v130 - v23);
  v24 = sub_1D2871798();
  MEMORY[0x1EEE9AC00](v24);
  v138 = &v130 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v145 = &v130 - v27;
  MEMORY[0x1EEE9AC00](v28);
  v139 = (&v130 - v29);
  MEMORY[0x1EEE9AC00](v30);
  v150 = &v130 - v31;
  MEMORY[0x1EEE9AC00](v32);
  v147 = &v130 - v34;
  v35 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v35 = a2 - a1;
  }

  v36 = v35 >> 3;
  v37 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v37 = a3 - a2;
  }

  v38 = v37 >> 3;
  if (v36 >= v37 >> 3)
  {
    v146 = a1;
    if (a4 != a2 || &a2[v38] <= a4)
    {
      v83 = v33;
      memmove(a4, a2, 8 * v38);
      v33 = v83;
    }

    v149 = &a4[v38];
    if (a3 - a2 >= 8 && a2 > v146)
    {
      v84 = a2;
      v85 = (v33 + 32);
      v86 = (v33 + 56);
      v135 = (v33 + 48);
      v136 = (v33 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v137 = (v33 + 8);
      v87 = v132;
      v139 = (v33 + 56);
      v148 = a4;
LABEL_43:
      v144 = v84;
      v88 = v84 - 1;
      v89 = (a3 - 1);
      v90 = v149;
      v140 = v84 - 1;
      do
      {
        v143 = v89;
        v91 = *--v90;
        v92 = *v88;
        v93 = v91;
        v147 = v92;
        v94 = [v93 creationDate];
        v142 = v93;
        if (v94)
        {
          v95 = v94;
          v96 = v150;
          sub_1D2871768();

          v97 = *v85;
          v98 = v141;
          (*v85)(v141, v96, v24);
          v99 = *v86;
          (*v86)(v98, 0, 1, v24);
          (v97)(v145, v98, v24);
          v100 = v87;
          v101 = v147;
        }

        else
        {
          v99 = *v86;
          (*v86)(v141, 1, 1, v24);
          v102 = [v93 importDate];
          v100 = v87;
          if (v102)
          {
            v103 = v102;
            sub_1D2871768();

            v104 = *v85;
            v105 = v133;
            (*v85)();
            v99(v105, 0, 1, v24);
            (v104)(v145, v105, v24);
            v106 = *v135;
            v101 = v147;
          }

          else
          {
            v107 = v133;
            v99(v133, 1, 1, v24);
            sub_1D2871778();
            v106 = *v135;
            v108 = (*v135)(v107, 1, v24);
            v101 = v147;
            if (v108 != 1)
            {
              sub_1D22BD238(v107, &unk_1EC6DAE40, &unk_1D287EC70);
            }
          }

          v109 = v141;
          if (v106(v141, 1, v24) != 1)
          {
            sub_1D22BD238(v109, &unk_1EC6DAE40, &unk_1D287EC70);
          }
        }

        v110 = [v101 creationDate];
        if (v110)
        {
          v111 = v150;
          v112 = v110;
          sub_1D2871768();

          v113 = *v85;
          (*v85)(v100, v111, v24);
          v99(v100, 0, 1, v24);
          v114 = v138;
          (v113)(v138, v100, v24);
          a3 = v143;
        }

        else
        {
          v99(v100, 1, 1, v24);
          v115 = [v101 importDate];
          if (v115)
          {
            v116 = v150;
            v117 = v115;
            sub_1D2871768();

            v118 = *v85;
            v119 = v134;
            (*v85)(v134, v116, v24);
            v99(v119, 0, 1, v24);
            v120 = v135;
            v114 = v138;
            v100 = v132;
            (v118)(v138, v119, v24);
            v121 = *v120;
          }

          else
          {
            v122 = v134;
            v99(v134, 1, 1, v24);
            v114 = v138;
            sub_1D2871778();
            v121 = *v135;
            if ((*v135)(v122, 1, v24) != 1)
            {
              sub_1D22BD238(v122, &unk_1EC6DAE40, &unk_1D287EC70);
            }
          }

          a3 = v143;
          if (v121(v100, 1, v24) != 1)
          {
            sub_1D22BD238(v100, &unk_1EC6DAE40, &unk_1D287EC70);
          }
        }

        v87 = v100;
        v123 = v145;
        v124 = sub_1D2871738();
        v125 = v114;
        v126 = *v137;
        (*v137)(v125, v24);
        (v126)(v123, v24);

        v127 = (a3 + 1);
        if (v124)
        {
          v128 = v140;
          if (v127 != v144)
          {
            *a3 = *v140;
          }

          a4 = v148;
          v86 = v139;
          if (v149 <= v148 || (v84 = v128, v128 <= v146))
          {
            a2 = v128;
            goto LABEL_70;
          }

          goto LABEL_43;
        }

        v88 = v140;
        if (v127 != v149)
        {
          *a3 = *v90;
        }

        v89 = (a3 - 1);
        v149 = v90;
        v86 = v139;
      }

      while (v90 > v148);
      v149 = v90;
      a4 = v148;
      a2 = v144;
    }
  }

  else
  {
    v39 = a1;
    if (a4 != a1 || &a1[v36] <= a4)
    {
      v40 = v33;
      memmove(a4, a1, 8 * v36);
      v33 = v40;
    }

    v149 = &a4[v36];
    v41 = v142;
    if (a2 - a1 >= 8 && a2 < a3)
    {
      v143 = (v33 + 32);
      v42 = (v33 + 56);
      v137 = (v33 + 48);
      v138 = (v33 + 8);
      v136 = (v33 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v43 = v131;
      v141 = (v33 + 56);
      while (1)
      {
        v146 = v39;
        v144 = a2;
        v44 = *a2;
        v148 = a4;
        v45 = *a4;
        v46 = v44;
        v47 = v45;
        v48 = [v46 creationDate];
        v145 = v46;
        if (v48)
        {
          v49 = v48;
          v50 = v150;
          sub_1D2871768();

          v51 = *v143;
          v52 = v140;
          (*v143)(v140, v50, v24);
          v53 = *v42;
          (*v42)(v52, 0, 1, v24);
          v51(v147, v52, v24);
          v54 = v43;
        }

        else
        {
          v53 = *v42;
          (*v42)(v140, 1, 1, v24);
          v55 = [v46 importDate];
          v54 = v43;
          if (v55)
          {
            v56 = v150;
            v57 = v55;
            sub_1D2871768();

            v58 = *v143;
            v59 = v56;
            v60 = v142;
            (*v143)(v142, v59, v24);
            v53(v60, 0, 1, v24);
            v58(v147, v60, v24);
            v61 = *v137;
          }

          else
          {
            v53(v41, 1, 1, v24);
            sub_1D2871778();
            v61 = *v137;
            if ((*v137)(v41, 1, v24) != 1)
            {
              sub_1D22BD238(v41, &unk_1EC6DAE40, &unk_1D287EC70);
            }
          }

          v62 = v140;
          if (v61(v140, 1, v24) != 1)
          {
            sub_1D22BD238(v62, &unk_1EC6DAE40, &unk_1D287EC70);
          }
        }

        v63 = [v47 creationDate];
        if (v63)
        {
          v64 = v150;
          v65 = v63;
          sub_1D2871768();

          v66 = *v143;
          (*v143)(v54, v64, v24);
          v53(v54, 0, 1, v24);
          v67 = v139;
          v66(v139, v54, v24);
          a4 = v148;
        }

        else
        {
          v53(v54, 1, 1, v24);
          v68 = [v47 importDate];
          if (v68)
          {
            v69 = v150;
            v70 = v68;
            sub_1D2871768();

            v71 = *v143;
            v72 = v135;
            (*v143)(v135, v69, v24);
            v53(v72, 0, 1, v24);
            v67 = v139;
            v54 = v131;
            v71(v139, v72, v24);
            a4 = v148;
            v73 = (*v137)(v54, 1, v24);
          }

          else
          {
            v74 = v135;
            v53(v135, 1, 1, v24);
            sub_1D2871778();
            v75 = *v137;
            if ((*v137)(v74, 1, v24) != 1)
            {
              sub_1D22BD238(v74, &unk_1EC6DAE40, &unk_1D287EC70);
            }

            a4 = v148;
            v67 = v139;
            v73 = v75(v54, 1, v24);
          }

          if (v73 != 1)
          {
            sub_1D22BD238(v54, &unk_1EC6DAE40, &unk_1D287EC70);
          }
        }

        v43 = v54;
        v76 = v147;
        v77 = sub_1D2871738();
        v78 = v67;
        v79 = *v138;
        (*v138)(v78, v24);
        v79(v76, v24);

        if ((v77 & 1) == 0)
        {
          break;
        }

        v80 = v144;
        a2 = v144 + 1;
        v81 = v146;
        v41 = v142;
        if (v146 != v144)
        {
          goto LABEL_33;
        }

LABEL_34:
        v39 = v81 + 1;
        v42 = v141;
        if (a4 >= v149 || a2 >= a3)
        {
          goto LABEL_36;
        }
      }

      v80 = a4;
      v81 = v146;
      v82 = v146 == a4++;
      a2 = v144;
      v41 = v142;
      if (v82)
      {
        goto LABEL_34;
      }

LABEL_33:
      *v81 = *v80;
      goto LABEL_34;
    }

LABEL_36:
    a2 = v39;
  }

LABEL_70:
  if (a2 != a4 || a2 >= (a4 + ((v149 - a4 + (v149 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v149 - a4));
  }

  return 1;
}

uint64_t sub_1D26915B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1D269163C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

char *sub_1D2691650(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF878, &unk_1D289B910);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

id sub_1D2691754(uint64_t a1, unint64_t a2, void *a3)
{
  v52 = a3;
  v5 = sub_1D2873CB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v51 = v50 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v50 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v50 - v15;
  sub_1D2872528();
  sub_1D2870F68();
  v17 = sub_1D2873CA8();
  v18 = sub_1D28789F8();

  v19 = os_log_type_enabled(v17, v18);
  v53 = a1;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v21 = v6;
    v22 = swift_slowAlloc();
    v54 = v22;
    *v20 = 136315138;
    *(v20 + 4) = sub_1D23D7C84(v53, a2, &v54);
    _os_log_impl(&dword_1D226E000, v17, v18, "fetchSelectedFace: person identifier: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    v23 = v22;
    v6 = v21;
    MEMORY[0x1D38A3520](v23, -1, -1);
    v24 = v20;
    a1 = v53;
    MEMORY[0x1D38A3520](v24, -1, -1);

    v25 = v21;
  }

  else
  {

    v25 = v6;
  }

  v26 = *(v25 + 8);
  v26(v16, v5);
  v27 = sub_1D2613014(a1, a2);
  if (!v27)
  {
LABEL_9:
    sub_1D2872528();
    sub_1D2870F68();
    v36 = sub_1D2873CA8();
    v37 = sub_1D28789F8();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v54 = v39;
      *v38 = 136315138;
      *(v38 + 4) = sub_1D23D7C84(v53, a2, &v54);
      _os_log_impl(&dword_1D226E000, v36, v37, "No user selection of preferred face for person identifier: %s", v38, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v39);
      MEMORY[0x1D38A3520](v39, -1, -1);
      MEMORY[0x1D38A3520](v38, -1, -1);
    }

    goto LABEL_16;
  }

  if (!v27[2])
  {

    goto LABEL_9;
  }

  v28 = v27[4];
  v29 = v27[5];
  sub_1D2870F68();

  sub_1D2872528();
  sub_1D2870F68();
  v30 = sub_1D2873CA8();
  v31 = sub_1D28789F8();

  v32 = os_log_type_enabled(v30, v31);
  v50[1] = v6;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v50[0] = v26;
    v34 = v33;
    v35 = swift_slowAlloc();
    v54 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_1D23D7C84(v28, v29, &v54);
    _os_log_impl(&dword_1D226E000, v30, v31, "fetchFaces(withLocalIdentifiers:): for selectedFaceIdentifier %s", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v35);
    MEMORY[0x1D38A3520](v35, -1, -1);
    MEMORY[0x1D38A3520](v34, -1, -1);

    v26 = v50[0];
    (v50[0])(v13, v5);
  }

  else
  {

    v26(v13, v5);
  }

  v40 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_1D287F500;
  *(v41 + 32) = v28;
  *(v41 + 40) = v29;
  v42 = sub_1D28783C8();

  v43 = [v52 librarySpecificFetchOptions];
  v44 = [v40 fetchFacesWithLocalIdentifiers:v42 options:v43];

  v45 = [v44 firstObject];
  result = v45;
  if (!v45)
  {
    v8 = v51;
    sub_1D2872528();
    sub_1D2870F68();
    v36 = sub_1D2873CA8();
    v47 = sub_1D2878A18();

    if (os_log_type_enabled(v36, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v54 = v49;
      *v48 = 136315138;
      *(v48 + 4) = sub_1D23D7C84(v53, a2, &v54);
      _os_log_impl(&dword_1D226E000, v36, v47, "Failed to fetch face corresponding to selected face identifier for person identifier: %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x1D38A3520](v49, -1, -1);
      MEMORY[0x1D38A3520](v48, -1, -1);
    }

LABEL_16:

    v26(v8, v5);
    return 0;
  }

  return result;
}

uint64_t sub_1D2691D64()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF870, &unk_1D289B900);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);

  return sub_1D268D744(v1, v2, v3, v4, v5, v6);
}

uint64_t block_copy_helper_36(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
  return sub_1D2870F78();
}

uint64_t sub_1D2691DF8(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    sub_1D28781B8();

    return sub_1D28782F8();
  }

  return result;
}

id sub_1D2691E94(uint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_1D2873CB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1D287F500;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  sub_1D2870F68();
  v12 = sub_1D28783C8();

  v13 = [a3 librarySpecificFetchOptions];
  v14 = [v10 fetchFacesWithLocalIdentifiers:v12 options:v13];

  v15 = [v14 firstObject];
  if (!v15)
  {
    sub_1D2872528();
    sub_1D2870F68();
    v16 = sub_1D2873CA8();
    v17 = sub_1D2878A38();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v22 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1D23D7C84(a1, a2, &v22);
      _os_log_impl(&dword_1D226E000, v16, v17, "No face found for face identifier %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v19);
      MEMORY[0x1D38A3520](v19, -1, -1);
      MEMORY[0x1D38A3520](v18, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  return v15;
}

id sub_1D269211C(char a1)
{
  if (qword_1ED8A4928 != -1)
  {
    swift_once();
  }

  sub_1D22BCFD0(0, &qword_1ED89CDA0, 0x1E695E000);
  v1 = sub_1D2878A58();
  v2 = sub_1D2878068();
  [v1 doubleForKey_];

  sub_1D22BCFD0(0, &qword_1EC6DF880, 0x1E696AE18);
  MEMORY[0x1D38A0C50](0x207974696C617571, 0xEA0000000000203ELL);
  sub_1D28787A8();
  v36 = sub_1D2878968();

  sub_1D2879168();
  MEMORY[0x1D38A0C50](0x6957656372756F73, 0xEF203D3E20687464);
  sub_1D28787A8();
  MEMORY[0x1D38A0C50](0xD000000000000015, 0x80000001D28BF8B0);
  sub_1D28787A8();
  v34 = sub_1D2878968();

  v32 = sub_1D2878968();
  sub_1D2879168();

  v3 = sub_1D28795C8();
  MEMORY[0x1D38A0C50](v3);

  MEMORY[0x1D38A0C50](0xD000000000000011, 0x80000001D28BF8D0);
  v4 = sub_1D28795C8();
  MEMORY[0x1D38A0C50](v4);

  v5 = sub_1D2878968();

  sub_1D2879168();

  v6 = sub_1D2878798();
  MEMORY[0x1D38A0C50](v6);

  MEMORY[0x1D38A0C50](0x6C6F7220444E4120, 0xEC000000203E206CLL);
  v7 = sub_1D2878798();
  MEMORY[0x1D38A0C50](v7);

  v31 = sub_1D2878968();

  sub_1D2879168();

  v8 = sub_1D2878798();
  MEMORY[0x1D38A0C50](v8);

  MEMORY[0x1D38A0C50](0x736F7020444E4120, 0xEF203E2077615965);
  v9 = sub_1D2878798();
  MEMORY[0x1D38A0C50](v9);

  v30 = sub_1D2878968();

  v10 = sub_1D28795C8();
  MEMORY[0x1D38A0C50](v10);

  v29 = sub_1D2878968();

  sub_1D2879168();

  v11 = sub_1D28795C8();
  MEMORY[0x1D38A0C50](v11);

  v28 = sub_1D2878968();

  sub_1D2879168();
  MEMORY[0x1D38A0C50](0xD000000000000010, 0x80000001D28BF8F0);
  v12 = sub_1D28795C8();
  MEMORY[0x1D38A0C50](v12);

  MEMORY[0x1D38A0C50](0xD000000000000015, 0x80000001D28BF910);
  v13 = sub_1D28795C8();
  MEMORY[0x1D38A0C50](v13);

  MEMORY[0x1D38A0C50](0xD000000000000015, 0x80000001D28BF910);
  v14 = sub_1D28795C8();
  MEMORY[0x1D38A0C50](v14);

  v15 = sub_1D2878968();

  v16 = sub_1D2878968();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6E3A10, &qword_1D2881580);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1D289B8D0;
  *(v17 + 32) = v36;
  *(v17 + 40) = v34;
  *(v17 + 48) = v32;
  *(v17 + 56) = v5;
  *(v17 + 64) = v31;
  *(v17 + 72) = v30;
  *(v17 + 80) = v29;
  *(v17 + 88) = v28;
  *(v17 + 96) = v15;
  *(v17 + 104) = v16;
  v37 = v36;
  v35 = v34;
  v33 = v32;
  v18 = v5;
  v19 = v31;
  v20 = v30;
  v21 = v29;
  v22 = v28;
  v23 = v15;
  v24 = v16;
  v25 = sub_1D28783C8();

  v26 = [objc_opt_self() andPredicateWithSubpredicates_];

  return v26;
}

id sub_1D2692970(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = sub_1D28716D8();
  v8[0] = 0;
  v4 = [v2 initWithState:v3 error:v8];

  if (v4)
  {
    v5 = v8[0];
  }

  else
  {
    v6 = v8[0];
    sub_1D28714B8();

    swift_willThrow();
  }

  return v4;
}

void (**sub_1D2692A30(unint64_t a1, uint64_t a2, void *a3, void (**a4)(unint64_t, char *, unint64_t), uint64_t a5))(void, void)
{
  v301 = a4;
  v9 = 0;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DAE40, &unk_1D287EC70);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v288 = &v261 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v289 = &v261 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v287 = &v261 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v300 = &v261 - v17;
  v281 = sub_1D2871798();
  v275 = *(v281 - 8);
  MEMORY[0x1EEE9AC00](v281);
  v299 = &v261 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v302 = &v261 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v303 = &v261 - v22;
  v284 = sub_1D2871818();
  v268 = *(v284 - 8);
  MEMORY[0x1EEE9AC00](v284);
  v24 = &v261 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v274 = &v261 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8F70, &qword_1D2881410);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v272 = &v261 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v267 = &v261 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v33 = (&v261 - v32);
  MEMORY[0x1EEE9AC00](v34);
  v283 = &v261 - v35;
  v36 = sub_1D2873CB8();
  v37 = *(v36 - 8);
  v297 = v36;
  v298 = v37;
  MEMORY[0x1EEE9AC00](v36);
  v292 = &v261 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v39);
  v286 = &v261 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v282 = &v261 - v42;
  MEMORY[0x1EEE9AC00](v43);
  v280 = &v261 - v44;
  MEMORY[0x1EEE9AC00](v45);
  v290 = &v261 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v293 = &v261 - v48;
  v49 = objc_opt_self();
  v291 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DAE60, &unk_1D28897D0);
  v50 = swift_allocObject();
  v285 = xmmword_1D287F500;
  *(v50 + 16) = xmmword_1D287F500;
  v294 = a1;
  *(v50 + 32) = a1;
  *(v50 + 40) = a2;
  v296 = a2;
  sub_1D2870F68();
  v51 = sub_1D28783C8();

  v52 = &off_1E83FF000;
  v53 = [a3 librarySpecificFetchOptions];
  v54 = [v49 fetchPersonsWithLocalIdentifiers:v51 options:v53];

  v55 = [v54 firstObject];
  result = MEMORY[0x1E69E7CC0];
  v279 = v55;
  if (!v55)
  {
    return result;
  }

  v57 = [a3 librarySpecificFetchOptions];
  v295 = objc_opt_self();
  v58 = [v295 sortByAddedDateDescending];
  sub_1D22BCFD0(0, &qword_1EC6DF7E8, 0x1E696AEB0);
  v59 = sub_1D28783E8();

  sub_1D267A104(v59);

  v60 = sub_1D28783C8();

  [v57 setInternalSortDescriptors_];

  v61 = sub_1D269211C((a5 & 1) == 0);
  [v57 setPredicate_];

  v62 = v301;
  if (a5)
  {
    v62 = 0;
  }

  v63 = (v62 * 3) >> 64;
  v64 = 3 * v62;
  if (v63 != v64 >> 63)
  {
    goto LABEL_112;
  }

  v65 = a5;
  v276 = v33;
  v263 = v24;
  if (v64 <= 0)
  {
    v66 = 2000;
  }

  else
  {
    v66 = v64;
  }

  [v57 setFetchLimit_];
  v278 = *MEMORY[0x1E6978CC8];
  v52 = sub_1D28780A8();
  a5 = v67;
  v33 = &off_1E83FF000;
  v68 = [v57 fetchPropertySets];
  if (!v68)
  {
    goto LABEL_268;
  }

  v69 = v68;
  v60 = sub_1D28783E8();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v277 = a3;
  LOBYTE(v24) = v65;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_113;
  }

LABEL_10:
  v72 = v60[2];
  v71 = v60[3];
  if (v72 >= v71 >> 1)
  {
    v60 = sub_1D27CC674((v71 > 1), v72 + 1, 1, v60);
  }

  v60[2] = v72 + 1;
  v73 = &v60[2 * v72];
  v73[4] = v52;
  v73[5] = a5;
  v74 = sub_1D28783C8();

  [v57 setFetchPropertySets_];

  a5 = sub_1D28780A8();
  v52 = v75;
  v76 = [v57 v33[439]];
  if (!v76)
  {
    goto LABEL_269;
  }

  v77 = v76;
  v78 = sub_1D28783E8();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v78 = sub_1D27CC674(0, *(v78 + 16) + 1, 1, v78);
  }

  v80 = *(v78 + 16);
  v79 = *(v78 + 24);
  if (v80 >= v79 >> 1)
  {
    v78 = sub_1D27CC674((v79 > 1), v80 + 1, 1, v78);
  }

  *(v78 + 16) = v80 + 1;
  v81 = v78 + 16 * v80;
  *(v81 + 32) = a5;
  *(v81 + 40) = v52;
  v82 = sub_1D28783C8();

  [v57 setFetchPropertySets_];

  v83 = v57;
  v33 = &off_1E83FF000;
  v84 = [v295 fetchFacesForPerson:v279 options:v83];
  v85 = [v84 fetchedObjects];

  v273 = v83;
  if (!v85)
  {

    v110 = v292;
    sub_1D2872528();
    v111 = v296;
    sub_1D2870F68();
    v112 = sub_1D2873CA8();
    v113 = sub_1D2878A18();

    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v305 = v115;
      *v114 = 136315138;
      *(v114 + 4) = sub_1D23D7C84(v294, v111, &v305);
      _os_log_impl(&dword_1D226E000, v112, v113, "Failed to fetch faces with predicates for person identifier: %s", v114, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v115);
      v83 = v273;
      MEMORY[0x1D38A3520](v115, -1, -1);
      MEMORY[0x1D38A3520](v114, -1, -1);
    }

    (v298)[1](v110, v297);
    goto LABEL_125;
  }

  v292 = sub_1D22BCFD0(0, &unk_1EC6D74F0, 0x1E69787C8);
  v86 = sub_1D28783E8();

  if ((v24 & 1) == 0)
  {
    v87 = v86 >> 62 ? sub_1D2879368() : *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
    a5 = v293;
    if (v87 < v301)
    {
      sub_1D2872528();
      v88 = v296;
      sub_1D2870F68();
      v89 = sub_1D2873CA8();
      v90 = sub_1D2878A38();

      if (os_log_type_enabled(v89, v90))
      {
        v91 = swift_slowAlloc();
        a5 = swift_slowAlloc();
        v305 = a5;
        *v91 = 136315650;
        *(v91 + 4) = sub_1D23D7C84(v294, v88, &v305);
        *(v91 + 12) = 2048;
        *(v91 + 14) = v301;
        *(v91 + 22) = 2048;
        if (v86 >> 62)
        {
          v92 = sub_1D2879368();
        }

        else
        {
          v92 = *((v86 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v91 + 24) = v92;
        _os_log_impl(&dword_1D226E000, v89, v90, "Did not fetch enough faces with top-picks predicates for person identifier: %s, trying to fetch more. Limit is %ld, count is %ld.", v91, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(a5);
        MEMORY[0x1D38A3520](a5, -1, -1);
        MEMORY[0x1D38A3520](v91, -1, -1);

        v24 = v298[1];
        (v24)(v293, v297);
      }

      else
      {

        v24 = v298[1];
        (v24)(a5, v297);
      }

      v147 = sub_1D269211C(0);
      v148 = v273;
      [v273 setPredicate_];

      v149 = [v295 fetchFacesForPerson:v279 options:v148];
      v150 = [v149 fetchedObjects];

      if (v150)
      {
        v52 = sub_1D28783E8();

        if (v52 >> 62)
        {
          v151 = sub_1D2879368();
        }

        else
        {
          v151 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v93 = v273;
        if (v151)
        {

          goto LABEL_26;
        }
      }

      v152 = v290;
      sub_1D2872528();
      v153 = v296;
      sub_1D2870F68();
      v154 = sub_1D2873CA8();
      v155 = sub_1D2878A18();

      if (os_log_type_enabled(v154, v155))
      {
        v156 = swift_slowAlloc();
        a5 = swift_slowAlloc();
        v305 = a5;
        *v156 = 136315138;
        *(v156 + 4) = sub_1D23D7C84(v294, v153, &v305);
        _os_log_impl(&dword_1D226E000, v154, v155, "Failed to fetch additional faces with predicates for person identifier: %s, using the ones already fetched before as top-picks.", v156, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(a5);
        MEMORY[0x1D38A3520](a5, -1, -1);
        MEMORY[0x1D38A3520](v156, -1, -1);
      }

      (v24)(v152, v297);
      v52 = v86;
      v93 = v273;
      goto LABEL_26;
    }
  }

  v93 = v273;

  v52 = v86;
LABEL_26:
  v94 = v52 & 0xFFFFFFFFFFFFFF8;
  v290 = v52;
  if (v52 >> 62)
  {
    if (!sub_1D2879368())
    {
LABEL_117:
      v158 = v286;
      sub_1D2872528();
      v159 = v296;
      sub_1D2870F68();
      v160 = sub_1D2873CA8();
      v161 = sub_1D2878A18();

      if (os_log_type_enabled(v160, v161))
      {
        v162 = swift_slowAlloc();
        v163 = swift_slowAlloc();
        v305 = v163;
        *v162 = 136315138;
        *(v162 + 4) = sub_1D23D7C84(v294, v159, &v305);
        _os_log_impl(&dword_1D226E000, v160, v161, "Failed to fetch faces with predicates for person identifier: %s", v162, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v163);
        v164 = v163;
        v93 = v273;
        MEMORY[0x1D38A3520](v164, -1, -1);
        MEMORY[0x1D38A3520](v162, -1, -1);
      }

      (v298)[1](v158, v297);

      goto LABEL_125;
    }

    v157 = MEMORY[0x1E69E7CC0];
    v305 = MEMORY[0x1E69E7CC0];
    v60 = sub_1D2879368();
    sub_1D2870F68();
    if (!v60)
    {
      v98 = v157;
      goto LABEL_41;
    }
  }

  else
  {
    v60 = *((v52 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v60)
    {
      goto LABEL_117;
    }

    v305 = MEMORY[0x1E69E7CC0];
    sub_1D2870F68();
  }

  v57 = 0;
  v95 = v52 & 0xC000000000000001;
  do
  {
    if (v95)
    {
      v96 = MEMORY[0x1D38A1C30](v57, v52);
    }

    else
    {
      if (v57 >= *(v94 + 16))
      {
        goto LABEL_108;
      }

      v96 = *(v52 + 8 * v57 + 32);
    }

    v52 = v96;
    v33 = (v57 + 1);
    if (__OFADD__(v57, 1))
    {
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
      v60 = sub_1D27CC674(0, v60[2] + 1, 1, v60);
      goto LABEL_10;
    }

    v304 = v96;
    v97 = sub_1D268DCF8(&v304);
    if (v9)
    {
      goto LABEL_270;
    }

    if (v97)
    {
      sub_1D2879228();
      a5 = *(v305 + 16);
      sub_1D2879268();
      sub_1D2879278();
      sub_1D2879238();
    }

    else
    {
    }

    ++v57;
    v52 = v290;
  }

  while (v33 != v60);
  v98 = v305;
LABEL_41:

  if (v98 < 0 || (v98 & 0x4000000000000000) != 0)
  {
LABEL_121:
    v286 = sub_1D2879368();
    if (!v286)
    {
      goto LABEL_122;
    }

LABEL_44:
    v99 = objc_opt_self();
    v60 = sub_1D28783C8();
    v57 = swift_allocObject();
    *(v57 + 16) = v285;
    *(v57 + 32) = sub_1D28780A8();
    *(v57 + 40) = v100;
    v52 = sub_1D28783C8();

    v101 = [v99 fetchAssetsGroupedByFaceUUIDForFaces:v60 fetchPropertySets:v52];

    if (!v101)
    {

      v140 = v280;
      sub_1D2872528();
      v141 = v296;
      sub_1D2870F68();
      v142 = sub_1D2873CA8();
      v143 = sub_1D2878A18();

      if (os_log_type_enabled(v142, v143))
      {
        v144 = swift_slowAlloc();
        v145 = swift_slowAlloc();
        v305 = v145;
        *v144 = 136315138;
        *(v144 + 4) = sub_1D23D7C84(v294, v141, &v305);
        _os_log_impl(&dword_1D226E000, v142, v143, "Failed to fetch assets for person identifier: %s", v144, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v145);
        MEMORY[0x1D38A3520](v145, -1, -1);
        MEMORY[0x1D38A3520](v144, -1, -1);
      }

      goto LABEL_124;
    }

    *&v285 = v98;
    v296 = sub_1D22BCFD0(0, &qword_1EC6D74E0, 0x1E6978630);
    v102 = sub_1D2877E98();

    v271 = sub_1D25DA794(MEMORY[0x1E69E7CC0]);
    v103 = 0;
    v105 = (v102 + 64);
    v104 = *(v102 + 64);
    v301 = v102;
    v106 = 1 << *(v102 + 32);
    v107 = -1;
    if (v106 < 64)
    {
      v107 = ~(-1 << v106);
    }

    v108 = v107 & v104;
    v109 = (v106 + 63) >> 6;
    v24 = v289;
    v297 = v109;
    v298 = (v102 + 64);
    while (v108)
    {
      v98 = v103;
LABEL_58:
      v117 = __clz(__rbit64(v108)) | (v98 << 6);
      v118 = v301[6] + 16 * v117;
      v33 = *v118;
      v24 = *(v118 + 8);
      v119 = *(v301[7] + v117);
      sub_1D2870F68();
      v60 = v119;
      v120 = v271;
      a5 = swift_isUniquelyReferenced_nonNull_native();
      v305 = v120;
      v57 = sub_1D25D11B0(v60);
      v122 = *(v120 + 16);
      v123 = (v121 & 1) == 0;
      v124 = v122 + v123;
      if (__OFADD__(v122, v123))
      {
        __break(1u);
        goto LABEL_121;
      }

      v52 = v121;
      if (*(v120 + 24) >= v124)
      {
        if ((a5 & 1) == 0)
        {
          sub_1D24EF788();
        }
      }

      else
      {
        sub_1D24E5BCC(v124, a5);
        v125 = sub_1D25D11B0(v60);
        if ((v52 & 1) != (v126 & 1))
        {
          goto LABEL_272;
        }

        v57 = v125;
      }

      v108 &= v108 - 1;
      v127 = v305;
      v271 = v305;
      if (v52)
      {
        v116 = (*(v305 + 56) + 16 * v57);
        *v116 = v33;
        v116[1] = v24;
      }

      else
      {
        *(v305 + 8 * (v57 >> 6) + 64) |= 1 << v57;
        *(v127[6] + 8 * v57) = v60;
        v128 = (v127[7] + 16 * v57);
        *v128 = v33;
        v128[1] = v24;
        v129 = v127[2];
        v130 = __OFADD__(v129, 1);
        v131 = v129 + 1;
        if (v130)
        {
          __break(1u);
          goto LABEL_129;
        }

        v127[2] = v131;
      }

      v103 = v98;
      v24 = v289;
      v109 = v297;
      v105 = v298;
    }

    while (1)
    {
      v98 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        goto LABEL_109;
      }

      if (v98 >= v109)
      {
        break;
      }

      v108 = v105[v98];
      ++v103;
      if (v108)
      {
        goto LABEL_58;
      }
    }

    v132 = sub_1D2870F68();
    sub_1D268CBF4(v132);
    v133 = sub_1D2870F68();
    v305 = sub_1D25819DC(v133);
    sub_1D268EC68(&v305);
    if (v9)
    {
      goto LABEL_273;
    }

    v9 = v305;
    v305 = MEMORY[0x1E69E7CC0];
    v108 = v281;
    v33 = v285;
    if (v9 < 0 || (v9 & 0x4000000000000000) != 0)
    {
LABEL_129:
      v60 = sub_1D2879368();
      if (v60)
      {
LABEL_71:
        v57 = 0;
        v134 = &off_1E83FF000;
        a5 = &off_1E83FF000;
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v135 = MEMORY[0x1D38A1C30](v57, v9);
          }

          else
          {
            if (v57 >= *(v9 + 16))
            {
              goto LABEL_111;
            }

            v135 = *(v9 + 8 * v57 + 32);
          }

          v52 = v135;
          v33 = (v57 + 1);
          if (__OFADD__(v57, 1))
          {
            goto LABEL_110;
          }

          if ([v135 representsBurst] & 1) != 0 || objc_msgSend(v52, v134[443]) || objc_msgSend(v52, *(a5 + 3552)) != 1 || (objc_msgSend(v52, sel_isMediaSubtype_, 4))
          {
          }

          else
          {
            v136 = [v52 photosInfoPanelExtendedProperties];
            if (!v136)
            {
              goto LABEL_88;
            }

            v301 = v136;
            v137 = [v136 generativeAIType];
            if (!v137)
            {
              sub_1D22BCFD0(0, &qword_1ED89CC58, 0x1E696AD98);
              v137 = sub_1D2878D58();
            }

            sub_1D22BCFD0(0, &qword_1ED89CC58, 0x1E696AD98);
            v138 = sub_1D2878D58();
            v139 = sub_1D2878D78();

            if ((v139 & 1) == 0)
            {
            }

            else
            {
LABEL_88:
              sub_1D2879228();
              sub_1D2879268();
              sub_1D2879278();
              sub_1D2879238();
            }

            v134 = &off_1E83FF000;
            a5 = 0x1E83FF000;
          }

          ++v57;
          v258 = v33 == v60;
          v24 = v289;
          v33 = v285;
        }

        while (!v258);
        v146 = v305;
        v108 = v281;
        goto LABEL_131;
      }
    }

    else
    {
      v60 = *(v9 + 16);
      if (v60)
      {
        goto LABEL_71;
      }
    }

    v146 = MEMORY[0x1E69E7CC0];
LABEL_131:

    v169 = v146;
    LODWORD(v170) = v146 < 0 || (v146 & 0x4000000000000000) != 0;
    if (v170 == 1)
    {
      goto LABEL_260;
    }

    v9 = *(v146 + 16);
LABEL_136:
    v282 = v169;
    if (!v9)
    {
      goto LABEL_149;
    }

    LODWORD(v301) = v170;
    v305 = MEMORY[0x1E69E7CC0];
    sub_1D23D81B8(0, v9 & ~(v9 >> 63), 0);
    if ((v9 & 0x8000000000000000) == 0)
    {
      v171 = 0;
      v172 = v305;
      v173 = v146;
      v108 = v146 & 0xC000000000000001;
      v170 = v9;
      v24 = v289;
      do
      {
        v33 = (v171 + 1);
        if (__OFADD__(v171, 1))
        {
          goto LABEL_254;
        }

        if (v108)
        {
          v174 = MEMORY[0x1D38A1C30](v171, v173);
        }

        else
        {
          if (v171 >= *(v173 + 16))
          {
            goto LABEL_257;
          }

          v174 = *(v173 + 8 * v171 + 32);
        }

        v175 = v174;
        v176 = [v174 uuid];
        if (!v176)
        {
          goto LABEL_266;
        }

        v177 = v176;
        v146 = sub_1D28780A8();
        v52 = v178;

        v305 = v172;
        v9 = *(v172 + 16);
        v179 = *(v172 + 24);
        if (v9 >= v179 >> 1)
        {
          sub_1D23D81B8((v179 > 1), v9 + 1, 1);
          v172 = v305;
        }

        *(v172 + 16) = v9 + 1;
        v180 = v172 + 16 * v9;
        *(v180 + 32) = v146;
        *(v180 + 40) = v52;
        ++v171;
        v173 = v282;
      }

      while (v33 != v170);
      v108 = v281;
      v33 = v285;
      LODWORD(v170) = v301;
LABEL_149:
      v181 = objc_opt_self();
      v182 = sub_1D28783C8();

      v183 = [v277 librarySpecificFetchOptions];
      v184 = [v181 fetchMomentUUIDByAssetUUIDForAssetUUIDs:v182 options:v183];

      if (v184)
      {
        v278 = sub_1D2877E98();
      }

      else
      {
        v278 = 0;
      }

      v9 = v284;
      v146 = v283;
      v265 = [objc_allocWithZone(MEMORY[0x1E696AB50]) init];
      v305 = MEMORY[0x1E69E7CC0];
      if (v170)
      {
        v185 = sub_1D2879368();
        if (v185)
        {
LABEL_154:
          v186 = 0;
          v270 = v282 & 0xC000000000000001;
          v262 = (v282 + 32);
          v277 = (v268 + 48);
          v266 = (v268 + 32);
          v269 = (v268 + 56);
          v264 = (v268 + 8);
          v301 = (v275 + 32);
          v187 = (v275 + 56);
          v291 = (v275 + 48);
          v188 = MEMORY[0x1E69E7CC0];
          v292 = v275 + 8;
          v268 = v185;
          v296 = v275 + 56;
          while (1)
          {
            if (v270)
            {
              v189 = v186;
              v190 = MEMORY[0x1D38A1C30](v186, v282);
              v130 = __OFADD__(v189, 1);
              v170 = (v189 + 1);
              if (v130)
              {
                goto LABEL_255;
              }
            }

            else
            {
              if (v186 >= *(v282 + 16))
              {
                goto LABEL_258;
              }

              v191 = v186;
              v190 = *&v262[8 * v186];
              v130 = __OFADD__(v191, 1);
              v170 = (v191 + 1);
              if (v130)
              {
                goto LABEL_255;
              }
            }

            v280 = v170;
            v298 = v190;
            if (!v278)
            {
              v198 = 1;
              goto LABEL_173;
            }

            v192 = [v190 uuid];
            if (!v192)
            {
              goto LABEL_267;
            }

            v193 = v192;
            v52 = sub_1D28780A8();
            v195 = v194;

            if (!*(v278 + 16))
            {
              break;
            }

            LODWORD(v170) = sub_1D25D0410(v52, v195);
            v52 = v196;

            if ((v52 & 1) == 0)
            {
              goto LABEL_172;
            }

            sub_1D2870F68();
            v197 = v267;
            sub_1D28717A8();

            v9 = v284;
            if ((*v277)(v197, 1, v284) == 1)
            {
              sub_1D22BD238(v197, &qword_1EC6D8F70, &qword_1D2881410);
              v198 = 1;
              v24 = v289;
              v146 = v283;
            }

            else
            {
              v146 = v283;
              (*v266)(v283, v197, v9);
              v198 = 0;
              v24 = v289;
            }

            v187 = v296;
LABEL_173:
            (*v269)(v146, v198, 1, v9);
            v199 = v276;
            sub_1D25E3608(v146, v276);
            v275 = *v277;
            if (v275(v199, 1, v9) == 1)
            {
              sub_1D22BD238(v199, &qword_1EC6D8F70, &qword_1D2881410);
LABEL_177:
              v293 = (v188 & 0xFFFFFFFFFFFFFF8);
              if (v188 >> 62)
              {
                v297 = sub_1D2879368();
              }

              else
              {
                v297 = *((v188 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v146 = 0;
              v294 = v188 & 0xC000000000000001;
              v295 = v188;
              while (v297 != v146)
              {
                if (v294)
                {
                  v212 = MEMORY[0x1D38A1C30](v146, v188);
                }

                else
                {
                  if (v146 >= *(v293 + 2))
                  {
                    goto LABEL_251;
                  }

                  v212 = *(v188 + 8 * v146 + 32);
                }

                v213 = v212;
                if (__OFADD__(v146, 1))
                {
                  __break(1u);
LABEL_251:
                  __break(1u);
LABEL_252:
                  __break(1u);
LABEL_253:
                  __break(1u);
LABEL_254:
                  __break(1u);
LABEL_255:
                  __break(1u);
LABEL_256:
                  __break(1u);
LABEL_257:
                  __break(1u);
LABEL_258:
                  __break(1u);
LABEL_259:
                  __break(1u);
LABEL_260:
                  v260 = sub_1D2879368();
                  v169 = v146;
                  v9 = v260;
                  goto LABEL_136;
                }

                v214 = [v212 creationDate];
                v215 = v24;
                if (v214)
                {
                  v216 = v302;
                  v217 = v214;
                  sub_1D2871768();

                  v218 = v300;
                  v219 = *v301;
                  (*v301)(v300, v216, v108);
                  v33 = *v187;
                  (*v187)(v218, 0, 1, v108);
                  v220 = v218;
                  v24 = v215;
                  v219(v303, v220, v108);
                }

                else
                {
                  v33 = *v187;
                  (*v187)(v300, 1, 1, v108);
                  v221 = [v213 importDate];
                  if (v221)
                  {
                    v222 = v302;
                    v223 = v221;
                    sub_1D2871768();

                    v224 = *v301;
                    v225 = v287;
                    (*v301)(v287, v222, v108);
                    (v33)(v225, 0, 1, v108);
                    v224(v303, v225, v108);
                    v226 = *v291;
                  }

                  else
                  {
                    v227 = v287;
                    (v33)(v287, 1, 1, v108);
                    sub_1D2871778();
                    v226 = *v291;
                    if ((*v291)(v227, 1, v108) != 1)
                    {
                      sub_1D22BD238(v227, &unk_1EC6DAE40, &unk_1D287EC70);
                    }

                    v108 = v281;
                  }

                  v24 = v215;
                  if (v226(v300, 1, v108) != 1)
                  {
                    sub_1D22BD238(v300, &unk_1EC6DAE40, &unk_1D287EC70);
                  }
                }

                v228 = v298;
                v229 = [v298 creationDate];
                if (v229)
                {
                  v205 = v302;
                  v206 = v229;
                  sub_1D2871768();

                  v207 = *v301;
                  (*v301)(v24, v205, v108);
                  v187 = v296;
                  (v33)(v24, 0, 1, v108);
                  v52 = v299;
                  v207(v299, v24, v108);
                }

                else
                {
                  v187 = v296;
                  (v33)(v24, 1, 1, v108);
                  v230 = [v228 importDate];
                  if (v230)
                  {
                    v231 = v302;
                    v232 = v230;
                    sub_1D2871768();

                    v233 = *v301;
                    v234 = v288;
                    v235 = v231;
                    v24 = v215;
                    (*v301)(v288, v235, v108);
                    (v33)(v234, 0, 1, v108);
                    v52 = v299;
                    v233(v299, v234, v108);
                    v236 = (*v291)(v24, 1, v108);
                  }

                  else
                  {
                    v237 = v288;
                    (v33)(v288, 1, 1, v108);
                    sub_1D2871778();
                    v238 = *v291;
                    if ((*v291)(v237, 1, v108) != 1)
                    {
                      sub_1D22BD238(v237, &unk_1EC6DAE40, &unk_1D287EC70);
                    }

                    v24 = v289;
                    v52 = v299;
                    v236 = v238(v289, 1, v108);
                  }

                  if (v236 != 1)
                  {
                    sub_1D22BD238(v24, &unk_1EC6DAE40, &unk_1D287EC70);
                  }
                }

                v208 = v303;
                sub_1D2871718();
                v210 = v209;
                LODWORD(v170) = v292;
                v211 = *v292;
                (*v292)(v52, v108);
                v211(v208, v108);

                ++v146;
                v188 = v295;
                if (fabs(v210) < 60.0)
                {
                  v146 = v283;
                  sub_1D22BD238(v283, &qword_1EC6D8F70, &qword_1D2881410);

                  v9 = v284;
                  goto LABEL_156;
                }
              }

              v239 = v298;
              MEMORY[0x1D38A0E30]();
              if (*((v305 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v305 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_1D2878428();
              }

              sub_1D2878488();
              v188 = v305;
              v146 = v283;
              v240 = v272;
              sub_1D25E3608(v283, v272);
              v9 = v284;
              if (v275(v240, 1, v284) == 1)
              {
                v170 = &qword_1EC6D8F70;
                v33 = &qword_1D2881410;
                sub_1D22BD238(v146, &qword_1EC6D8F70, &qword_1D2881410);

                v241 = v240;
              }

              else
              {
                v242 = v263;
                (*v266)(v263, v240, v9);
                v243 = sub_1D28717C8();
                [v265 addObject_];

                v244 = v242;
                v146 = v283;
                (*v264)(v244, v9);
                v241 = v146;
              }

              sub_1D22BD238(v241, &qword_1EC6D8F70, &qword_1D2881410);
              v187 = v296;
              goto LABEL_156;
            }

            v200 = v274;
            (*v266)(v274, v199, v9);
            v201 = sub_1D28717C8();
            v202 = [v265 countForObject_];

            v203 = v200;
            v187 = v296;
            (*v264)(v203, v284);
            v204 = v202 < 5;
            v146 = v283;
            v9 = v284;
            if (v204)
            {
              goto LABEL_177;
            }

            sub_1D22BD238(v283, &qword_1EC6D8F70, &qword_1D2881410);

LABEL_156:
            v186 = v280;
            if (v280 == v268)
            {

              v33 = v285;
LABEL_216:
              v304 = MEMORY[0x1E69E7CC0];
              v52 = v271;
              if (!(v188 >> 62))
              {
                v170 = *((v188 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v170)
                {
                  goto LABEL_218;
                }

LABEL_262:
                v298 = MEMORY[0x1E69E7CC0];
                goto LABEL_263;
              }

              v170 = sub_1D2879368();
              if (!v170)
              {
                goto LABEL_262;
              }

LABEL_218:
              v108 = 0;
              v303 = (v188 & 0xC000000000000001);
              v299 = (v188 + 32);
              v300 = v188 & 0xFFFFFFFFFFFFFF8;
              v245 = v33 & 0xC000000000000001;
              v298 = MEMORY[0x1E69E7CC0];
              v295 = v188;
              v302 = v170;
              while (1)
              {
LABEL_220:
                if (v303)
                {
                  v246 = MEMORY[0x1D38A1C30](v108, v188);
                  v130 = __OFADD__(v108++, 1);
                  if (v130)
                  {
                    goto LABEL_256;
                  }
                }

                else
                {
                  if (v108 >= *(v300 + 16))
                  {
                    goto LABEL_259;
                  }

                  v246 = *&v299[8 * v108];
                  v130 = __OFADD__(v108++, 1);
                  if (v130)
                  {
                    goto LABEL_256;
                  }
                }

                if (*(v52 + 16))
                {
                  break;
                }

                if (v108 == v170)
                {
                  goto LABEL_263;
                }
              }

              v170 = v246;
              v247 = sub_1D25D11B0(v246);
              if ((v248 & 1) == 0)
              {

                goto LABEL_248;
              }

              v301 = v170;
              v249 = (*(v52 + 56) + 16 * v247);
              v52 = *v249;
              v250 = v249[1];
              sub_1D2870F68();
              v251 = 0;
              while (1)
              {
                if (v245)
                {
                  v252 = MEMORY[0x1D38A1C30](v251, v33);
                }

                else
                {
                  if (v251 >= v33[2])
                  {
                    goto LABEL_253;
                  }

                  v252 = v33[v251 + 4];
                }

                v146 = v252;
                v253 = (v251 + 1);
                if (__OFADD__(v251, 1))
                {
                  goto LABEL_252;
                }

                v254 = [v252 uuid];
                if (v254)
                {
                  v255 = v254;
                  v256 = sub_1D28780A8();
                  v24 = v257;

                  v258 = v256 == v52 && v24 == v250;
                  if (v258)
                  {

                    v33 = v285;
LABEL_245:

                    MEMORY[0x1D38A0E30](v259);
                    v52 = v271;
                    v188 = v295;
                    if (*((v304 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v304 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_1D2878428();
                    }

                    sub_1D2878488();

                    v298 = v304;
LABEL_248:
                    v170 = v302;
                    if (v108 == v302)
                    {
LABEL_263:

                      return v298;
                    }

                    goto LABEL_220;
                  }

                  LODWORD(v170) = sub_1D2879618();

                  v33 = v285;
                  if (v170)
                  {
                    v24 = v250;
                    goto LABEL_245;
                  }
                }

                ++v251;
                if (v253 == v286)
                {

                  v52 = v271;
                  v188 = v295;
                  goto LABEL_248;
                }
              }
            }
          }

LABEL_172:
          v198 = 1;
          v24 = v289;
          v9 = v284;
          v146 = v283;
          goto LABEL_173;
        }
      }

      else
      {
        v185 = *(v282 + 16);
        if (v185)
        {
          goto LABEL_154;
        }
      }

      v188 = MEMORY[0x1E69E7CC0];
      goto LABEL_216;
    }

    __break(1u);
LABEL_266:
    __break(1u);
LABEL_267:
    __break(1u);
LABEL_268:
    __break(1u);
LABEL_269:
    __break(1u);
LABEL_270:

    while (1)
    {

      __break(1u);
LABEL_272:
      sub_1D28796E8();
      __break(1u);
LABEL_273:
    }
  }

  v286 = *(v98 + 16);
  if (v286)
  {
    goto LABEL_44;
  }

LABEL_122:

  v140 = v282;
  sub_1D2872528();
  v165 = v296;
  sub_1D2870F68();
  v142 = sub_1D2873CA8();
  v166 = sub_1D2878A18();

  if (os_log_type_enabled(v142, v166))
  {
    v167 = swift_slowAlloc();
    v168 = swift_slowAlloc();
    v305 = v168;
    *v167 = 136315138;
    *(v167 + 4) = sub_1D23D7C84(v294, v165, &v305);
    _os_log_impl(&dword_1D226E000, v142, v166, "Failed to find correctly centered faces for person identifier: %s", v167, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v168);
    MEMORY[0x1D38A3520](v168, -1, -1);
    MEMORY[0x1D38A3520](v167, -1, -1);
  }

LABEL_124:

  (v298)[1](v140, v297);

LABEL_125:
  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D269515C(unint64_t a1, unint64_t a2, void *a3, void (**a4)(unint64_t, char *, unint64_t), char a5)
{
  v9 = sub_1D2692A30(a1, a2, a3, a4, a5 & 1);
  v10 = sub_1D2613014(a1, a2);
  v11 = MEMORY[0x1E69E7CC0];
  v75 = a2;
  v76 = a3;
  v74 = a1;
  if (v10)
  {
    v12 = v10;
    v13 = objc_opt_self();
    v14 = sub_1D28783C8();
    v15 = [a3 librarySpecificFetchOptions];
    v16 = [v13 fetchFacesWithLocalIdentifiers:v14 options:v15];

    v17 = [v16 fetchedObjects];
    if (v17)
    {
      v71 = v9;
      sub_1D22BCFD0(0, &unk_1EC6D74F0, 0x1E69787C8);
      v18 = sub_1D28783E8();

      *&v86[0] = v11;
      v19 = v18 & 0xFFFFFFFFFFFFFF8;
      if (v18 < 0)
      {
        v19 = v18;
      }

      v70 = v19;
      v80 = *(v12 + 16);
      if (v80)
      {
        v20 = 0;
        v79 = v12 + 32;
        v77 = MEMORY[0x1E69E7CC0];
        v78 = v12;
        while (v20 < *(v12 + 16))
        {
          v21 = v79 + 16 * v20;
          v5 = *v21;
          v22 = *(v21 + 8);
          if (v18 >> 62)
          {
            v23 = sub_1D2879368();
          }

          else
          {
            v23 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v81 = ++v20;
          sub_1D2870F68();
          if (v23)
          {
            v24 = 0;
            while (1)
            {
              if ((v18 & 0xC000000000000001) != 0)
              {
                v25 = MEMORY[0x1D38A1C30](v24, v18);
              }

              else
              {
                if (v24 >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_66;
                }

                v25 = *(v18 + 8 * v24 + 32);
              }

              v17 = v25;
              v26 = v24 + 1;
              if (__OFADD__(v24, 1))
              {
                __break(1u);
LABEL_66:
                __break(1u);
                goto LABEL_67;
              }

              v27 = [v25 localIdentifier];
              v28 = sub_1D28780A8();
              v30 = v29;

              if (v28 == v5 && v30 == v22)
              {
                break;
              }

              v20 = sub_1D2879618();

              if (v20)
              {
                goto LABEL_26;
              }

              ++v24;
              if (v26 == v23)
              {
                goto LABEL_7;
              }
            }

LABEL_26:

            MEMORY[0x1D38A0E30](v32);
            v12 = v78;
            v20 = v81;
            if (*((*&v86[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v86[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_1D2878428();
            }

            sub_1D2878488();
            v77 = *&v86[0];
            if (v81 == v80)
            {
              goto LABEL_34;
            }
          }

          else
          {
LABEL_7:

            v20 = v81;
            v12 = v78;
            if (v81 == v80)
            {
              goto LABEL_34;
            }
          }
        }

LABEL_67:
        __break(1u);
LABEL_68:
        v42 = sub_1D2879368();
        if (!v42)
        {
          goto LABEL_69;
        }

        goto LABEL_47;
      }

      v77 = v11;
LABEL_34:

      v11 = MEMORY[0x1E69E7CC0];
      v9 = v71;
      v33 = v77;
    }

    else
    {

      v33 = MEMORY[0x1E69E7CC0];
    }
  }

  else
  {
    v33 = MEMORY[0x1E69E7CC0];
  }

  *&v86[0] = v33;
  sub_1D274E870(v9);
  sub_1D267A304(*&v86[0]);

  v34 = objc_allocWithZone(MEMORY[0x1E695DFB8]);
  v35 = sub_1D28783C8();

  v36 = [v34 initWithArray_];

  v37 = [v36 array];
  v38 = sub_1D28783E8();

  v87 = v11;
  v39 = *(v38 + 16);
  if (v39)
  {
    v40 = v38 + 32;
    v41 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D23C3EE4(v40, v86);
      sub_1D23C3FAC(v86, &v84);
      sub_1D22BCFD0(0, &unk_1EC6D74F0, 0x1E69787C8);
      if ((swift_dynamicCast() & 1) != 0 && v85)
      {
        MEMORY[0x1D38A0E30]();
        if (*((v87 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v87 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D2878428();
        }

        sub_1D2878488();
        v41 = v87;
      }

      v40 += 32;
      --v39;
    }

    while (v39);

    v20 = v41;
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1D2691754(v74, v75, v76);
  v17 = MEMORY[0x1E69E7CC0];
  if (v20 >> 62)
  {
    goto LABEL_68;
  }

  v42 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v42)
  {
LABEL_69:

    v43 = MEMORY[0x1E69E7CC0];
    goto LABEL_70;
  }

LABEL_47:
  *&v86[0] = v17;
  v43 = v86;
  sub_1D23D8B20(0, v42 & ~(v42 >> 63), 0);
  if (v42 < 0)
  {
    __break(1u);
LABEL_85:
    __break(1u);
LABEL_86:
    swift_unknownObjectRelease();
    sub_1D268EA94(v43, (v43 + 2), 0, v17);
    v17 = v69;
    goto LABEL_82;
  }

  v44 = 0;
  v43 = *&v86[0];
  v82 = v42;
  v83 = v20 & 0xC000000000000001;
  v45 = &off_1E83FF000;
  do
  {
    if (v83)
    {
      v46 = MEMORY[0x1D38A1C30](v44, v20);
    }

    else
    {
      v46 = *(v20 + 8 * v44 + 32);
    }

    v47 = v46;
    v48 = [v46 v45[118]];
    v49 = sub_1D28780A8();
    v51 = v50;

    if (v5)
    {
      v52 = v20;
      v53 = v5;
      v54 = [v5 v45[118]];
      v55 = sub_1D28780A8();
      v57 = v56;

      if (v49 == v55 && v51 == v57)
      {
        v59 = 1;
      }

      else
      {
        v59 = sub_1D2879618();
      }

      v5 = v53;
      v20 = v52;
      v42 = v82;
    }

    else
    {
      v59 = 0;
    }

    *&v86[0] = v43;
    v61 = *(v43 + 2);
    v60 = *(v43 + 3);
    if (v61 >= v60 >> 1)
    {
      sub_1D23D8B20((v60 > 1), v61 + 1, 1);
      v43 = *&v86[0];
    }

    ++v44;
    *(v43 + 2) = v61 + 1;
    v62 = &v43[v61];
    *(v62 + 4) = v47;
    *(v62 + 40) = v59 & 1;
    v45 = &off_1E83FF000;
  }

  while (v42 != v44);

LABEL_70:
  v17 = v43;
  if (a5)
  {
    goto LABEL_83;
  }

  if ((a4 & 0x8000000000000000) != 0)
  {
    goto LABEL_85;
  }

  v63 = *(v43 + 2);
  if (v63 >= a4)
  {
    v63 = a4;
  }

  v64 = 2 * v63;
  if (a4)
  {
    v17 = v64 + 1;
  }

  else
  {
    v17 = 1;
  }

  sub_1D2879678();
  swift_unknownObjectRetain_n();
  v65 = swift_dynamicCastClass();
  if (!v65)
  {
    swift_unknownObjectRelease();
    v65 = MEMORY[0x1E69E7CC0];
  }

  v66 = *(v65 + 16);

  if (v66 != v17 >> 1)
  {
    goto LABEL_86;
  }

  v17 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v17)
  {
    v17 = MEMORY[0x1E69E7CC0];
LABEL_82:
    swift_unknownObjectRelease();
  }

LABEL_83:
  v67 = sub_1D267A318(v17);

  return v67;
}

uint64_t objectdestroy_4Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF888, &unk_1D289B930);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 48) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1D2695A68(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, char *))
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF888, &unk_1D289B930) - 8);
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1 + ((*(v2 + 80) + 48) & ~*(v2 + 80));

  return a1(v3, v4, v5, v6, v7);
}

void *sub_1D2695B04()
{
  sub_1D2695B4C();

  return sub_1D2875638();
}

unint64_t sub_1D2695B4C()
{
  result = qword_1ED8A0DF0;
  if (!qword_1ED8A0DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A0DF0);
  }

  return result;
}

uint64_t type metadata accessor for BubbleAnimation(uint64_t a1)
{
  result = qword_1ED8A41F0;
  if (!qword_1ED8A41F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2695C24(uint64_t a1)
{
  result = sub_1D2871818();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D2695CA8()
{
  v0 = sub_1D2871818();
  __swift_allocate_value_buffer(v0, qword_1ED8B0118);
  __swift_project_value_buffer(v0, qword_1ED8B0118);
  return sub_1D2871808();
}

uint64_t sub_1D2695CF4@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED8A0E00 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2871818();
  v3 = __swift_project_value_buffer(v2, qword_1ED8B0118);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1D2695D9C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D26963FC(&unk_1ED8A6CA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

uint64_t sub_1D2695E30@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v17[1] = a1;
  v18 = a5;
  v8 = sub_1D2871818();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D2875628();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v17 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17[2] = a4;
  sub_1D2875088();
  sub_1D2875058();
  sub_1D2695B4C();
  sub_1D2875638();
  (*(v13 + 8))(v15, v12);
  type metadata accessor for BubbleAnimation(0);
  LOBYTE(a4) = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
  (*(v9 + 8))(v11, v8);
  if (a4)
  {
    return sub_1D2877928();
  }

  else
  {
    return (*(*(a3 - 8) + 56))(v18, 1, 1, a3);
  }
}

uint64_t sub_1D2696070()
{
  sub_1D28797D8();
  sub_1D28778A8();
  v1 = type metadata accessor for BubbleAnimation(0);
  sub_1D2871818();
  sub_1D26963FC(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  v2 = *(v0 + *(v1 + 24));
  if (v2 == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x1D38A2280](*&v2);
  return sub_1D2879828();
}

uint64_t sub_1D269617C(uint64_t a1, uint64_t a2)
{
  sub_1D28778A8();
  sub_1D2871818();
  sub_1D26963FC(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  return MEMORY[0x1D38A2280](*&v4);
}

uint64_t sub_1D2696234(uint64_t a1, uint64_t a2)
{
  sub_1D28797D8();
  sub_1D28778A8();
  sub_1D2871818();
  sub_1D26963FC(&qword_1ED8A6CB0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2877F08();
  v4 = *(v2 + *(a2 + 24));
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1D38A2280](*&v4);
  return sub_1D2879828();
}

uint64_t sub_1D26963FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2696444()
{
  swift_getKeyPath();
  sub_1D26972EC(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

uint64_t sub_1D269650C()
{
  swift_getKeyPath();
  sub_1D26972EC(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = Strong;
  swift_getKeyPath();
  sub_1D26972EC(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
  sub_1D28719E8();

  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) == 2)
  {
    v2 = 1;
  }

  else
  {
    swift_getKeyPath();
    sub_1D28719E8();

    v2 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground);
  }

  swift_unknownObjectRelease();
  return v2;
}

uint64_t sub_1D269669C()
{
  swift_getKeyPath();
  sub_1D26972EC(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v1 = result;
    if (sub_1D2309BC4(result) && (sub_1D22FFBF8(), v2 = sub_1D25A43F4(), , (v2 & 1) != 0))
    {
      swift_getKeyPath();
      sub_1D26972EC(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
      sub_1D28719E8();

      v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state);
      swift_unknownObjectRelease();
      return v3 == 1;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D269680C()
{
  swift_getKeyPath();
  sub_1D26972EC(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    swift_getKeyPath();
    sub_1D26972EC(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
    sub_1D28719E8();

    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__state) != 2)
    {
      swift_getKeyPath();
      sub_1D28719E8();

      v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__currentlyUpscalingInBackground);
      swift_unknownObjectRelease();
      v2 = v3 ^ 1;
      return v2 & 1;
    }

    swift_unknownObjectRelease();
  }

  v2 = 0;
  return v2 & 1;
}

uint64_t sub_1D26969A0()
{
  v1 = sub_1D2872008();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v13 - v6;
  swift_getKeyPath();
  v14 = v0;
  sub_1D26972EC(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  if (swift_unknownObjectWeakLoadStrong())
  {
    v8 = sub_1D22FECC4();
    swift_getKeyPath();
    v14 = v8;
    sub_1D26972EC(qword_1EC6D8488, type metadata accessor for StylePickerViewModel, &unk_1D289A8E0);
    sub_1D28719E8();

    v9 = OBJC_IVAR____TtC23ImagePlaygroundInternal20StylePickerViewModel__selectedItem;
    swift_beginAccess();
    (*(v2 + 16))(v7, v8 + v9, v1);

    sub_1D2871FC8();
    v10 = MEMORY[0x1D389AA00](v7, v4);
    swift_unknownObjectRelease();
    v11 = *(v2 + 8);
    v11(v4, v1);
    v11(v7, v1);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

void sub_1D2696C08()
{
  swift_getKeyPath();
  sub_1D26972EC(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v1 = Strong;
    sub_1D22F7DF4();
    sub_1D22CC218();

    if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shareSheetSource))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D26972EC(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
      sub_1D28719D8();
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }
  }

  v3 = sub_1D23C7CA8();
  v4 = sub_1D2878068();
  v5 = sub_1D2878068();
  v6 = sub_1D25D7060(MEMORY[0x1E69E7CC0]);
  if (*(v3 + 48))
  {
    sub_1D2870F68();
    v7 = sub_1D2878068();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D24E8054(v7, 0x444974706D6F7250, 0xE800000000000000, isUniquelyReferenced_nonNull_native);
  }

  v9 = sub_1D2878068();
  v10 = sub_1D2418030(v6);

  if (v10)
  {
    type metadata accessor for IAPayloadKey(0);
    sub_1D22ED23C();
    sub_1D26972EC(&qword_1ED89CDD0, type metadata accessor for IAPayloadKey, &unk_1D287E68C);
    v11 = sub_1D2877E78();
  }

  else
  {
    v11 = 0;
  }

  [objc_opt_self() asyncSendSignal:v5 toChannel:v4 withNullableUniqueStringID:v9 withPayload:v11];
}

double sub_1D2696F60()
{
  swift_getKeyPath();
  sub_1D26972EC(&qword_1EC6D8390, type metadata accessor for ContextualMenuViewModel, &unk_1D289BAE8);
  sub_1D28719E8();

  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    if (*(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowPromptAlert) == 1)
    {
      *(Strong + OBJC_IVAR____TtC23ImagePlaygroundInternal18ComposingViewModel__shouldShowPromptAlert) = 1;
      swift_unknownObjectRelease();
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D26972EC(&qword_1ED8A2520, type metadata accessor for ComposingViewModel, &protocol conformance descriptor for ComposingViewModel);
      sub_1D28719D8();
      swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_1D2697108()
{

  sub_1D22729C0(v0 + 48);

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal23ContextualMenuViewModel___observationRegistrar;
  v2 = sub_1D2871A28();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for ContextualMenuViewModel(uint64_t a1)
{
  result = qword_1ED8A0858;
  if (!qword_1ED8A0858)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D2697218(uint64_t a1)
{
  result = sub_1D2871A28();
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

uint64_t sub_1D26972EC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1D2697334(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID);
  v6 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1D2879618() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  sub_1D2698A94();
  return result;
}

uint64_t sub_1D26974B4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v9 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageThumbnail;
  swift_beginAccess();
  sub_1D22BD1D0(v1 + v6, v5, &unk_1EC6DE5A0, &unk_1D287F0E0);
  LOBYTE(v6) = sub_1D26A22A4(v5, a1);
  sub_1D22BD238(v5, &unk_1EC6DE5A0, &unk_1D287F0E0);
  if (v6)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v9[-2] = v1;
    v9[-1] = a1;
    v9[2] = v1;
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }

  else
  {
    sub_1D22BD1D0(a1, v5, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D269BE0C(v5);
  }

  return sub_1D22BD238(a1, &unk_1EC6DE5A0, &unk_1D287F0E0);
}

void sub_1D2697694(char a1)
{
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingPhotoSharingConfirmation;
  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingPhotoSharingConfirmation);
  if (v3 == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingPhotoSharingConfirmation) = a1 & 1;
    swift_getKeyPath();
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719E8();

    if ((*(v1 + v2) & 1) == 0 && ((v3 ^ 1) & 1) == 0)
    {
      swift_getKeyPath();
      sub_1D28719E8();

      v5 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 8);
        ObjectType = swift_getObjectType();
        (*(v6 + 24))(ObjectType, v6);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }
}

void sub_1D26978E8(char a1)
{
  v2 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingStyleSuggestionConfirmation;
  v3 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingStyleSuggestionConfirmation);
  if (v3 == (a1 & 1))
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingStyleSuggestionConfirmation) = a1 & 1;
    swift_getKeyPath();
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719E8();

    if ((*(v1 + v2) & 1) == 0 && ((v3 ^ 1) & 1) == 0)
    {
      swift_getKeyPath();
      sub_1D28719E8();

      v5 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate;
      if (swift_unknownObjectWeakLoadStrong())
      {
        v6 = *(v5 + 8);
        ObjectType = swift_getObjectType();
        (*(v6 + 32))(ObjectType, v6);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }
}

uint64_t sub_1D2697B14(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  return *(v2 + *a2);
}

void sub_1D2697BDC(char a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*(v4 + *a2) == (a1 & 1))
  {
    *(v4 + *a2) = a1 & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }
}

double sub_1D2697CE0()
{
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  sub_1D2870F68();
  return result;
}

double sub_1D2697D84@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  *a2 = *(v3 + 16);
  sub_1D2870F68();
  return result;
}

double sub_1D2697E5C(uint64_t a1)
{
  v3 = sub_1D2870F68();
  v4 = sub_1D2337F24(v3, a1);

  if (v4)
  {
    *(v1 + 16) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D269802C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2871818();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentAnimationID;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1D26A28C0(&unk_1ED8A6CA0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v9 = sub_1D2877F98();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }

  return (v10)(a1, v4);
}

double sub_1D26982AC()
{
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  return *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition);
}

double sub_1D2698354@<D0>(uint64_t *a1@<X0>, double *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  result = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition);
  *a2 = result;
  return result;
}

void sub_1D269842C(double a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition) == a1)
  {
    *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }
}

double sub_1D269855C()
{
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  sub_1D2870F68();
  return result;
}

double sub_1D2698608@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__attractorColors);
  sub_1D2870F68();
  return result;
}

double sub_1D26986E8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__attractorColors;
  v4 = sub_1D2870F68();
  sub_1D2557584(v4, a1);
  v6 = v5;

  if (v6)
  {
    *(v1 + v3) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }

  return result;
}

double sub_1D2698884(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID);
  v6 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID + 8);
  if (v6)
  {
    if (a2)
    {
      v7 = *v5 == a1 && v6 == a2;
      if (v7 || (sub_1D2879618() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

LABEL_12:
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();

    return result;
  }

  if (a2)
  {
    goto LABEL_12;
  }

LABEL_8:
  *v5 = a1;
  v5[1] = a2;

  return result;
}

void sub_1D2698A00(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID);
  *v3 = a2;
  v3[1] = a3;
  sub_1D2870F68();
}

void sub_1D2698A94()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v10 - v5;
  swift_getKeyPath();
  v11 = v0;
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  if (!*(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID + 8))
  {
    v7 = type metadata accessor for PlaygroundImage(0);
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageThumbnail;
    swift_beginAccess();
    sub_1D22BD1D0(v0 + v8, v3, &unk_1EC6DE5A0, &unk_1D287F0E0);
    LOBYTE(v8) = sub_1D26A22A4(v3, v6);
    sub_1D22BD238(v3, &unk_1EC6DE5A0, &unk_1D287F0E0);
    if (v8)
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      v10[-2] = v0;
      v10[-1] = v6;
      v10[2] = v0;
      sub_1D28719D8();
    }

    else
    {
      sub_1D22BD1D0(v6, v3, &unk_1EC6DE5A0, &unk_1D287F0E0);
      sub_1D269BE0C(v3);
    }

    sub_1D22BD238(v6, &unk_1EC6DE5A0, &unk_1D287F0E0);
  }

  sub_1D2698E00();
}

uint64_t sub_1D2698D4C(uint64_t a1, void *a2)
{
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v4 = *(v2 + *a2);
  sub_1D2870F68();
  return v4;
}

void sub_1D2698E00()
{
  v251 = type metadata accessor for PlaygroundImage(0);
  v244 = *(v251 - 8);
  MEMORY[0x1EEE9AC00](v251);
  v250 = &v204 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v209 = &v204 - v3;
  MEMORY[0x1EEE9AC00](v4);
  v214 = &v204 - v5;
  MEMORY[0x1EEE9AC00](v6);
  v219 = &v204 - v7;
  v8 = type metadata accessor for SketchConditioningImage(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v221 = &v204 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v205 = type metadata accessor for SceneConditioningImage(0);
  MEMORY[0x1EEE9AC00](v205);
  v222 = &v204 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v228 = (&v204 - v12);
  v249 = sub_1D2873CB8();
  v236 = *(v249 - 8);
  MEMORY[0x1EEE9AC00](v249);
  v248 = &v204 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v257 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v257);
  v211 = &v204 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v213 = &v204 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v216 = &v204 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v218 = &v204 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v223 = &v204 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v229 = &v204 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v239 = &v204 - v26;
  MEMORY[0x1EEE9AC00](v27);
  v235 = &v204 - v28;
  MEMORY[0x1EEE9AC00](v29);
  v255 = &v204 - v30;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v31 - 8);
  v237 = &v204 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v210 = &v204 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v215 = &v204 - v36;
  MEMORY[0x1EEE9AC00](v37);
  v220 = &v204 - v38;
  MEMORY[0x1EEE9AC00](v39);
  v245 = &v204 - v40;
  MEMORY[0x1EEE9AC00](v41);
  v243 = &v204 - v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D0, &qword_1D288C910);
  MEMORY[0x1EEE9AC00](v43 - 8);
  v232 = &v204 - ((v44 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v45);
  v238 = &v204 - v46;
  MEMORY[0x1EEE9AC00](v47);
  v242 = &v204 - v48;
  MEMORY[0x1EEE9AC00](v49);
  v247 = &v204 - v50;
  MEMORY[0x1EEE9AC00](v51);
  v53 = (&v204 - v52);
  v258 = type metadata accessor for Bubble(0);
  v261 = *(v258 - 8);
  MEMORY[0x1EEE9AC00](v258);
  v227 = (&v204 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v55);
  v253 = &v204 - v56;
  MEMORY[0x1EEE9AC00](v57);
  v226 = &v204 - v58;
  MEMORY[0x1EEE9AC00](v59);
  v231 = &v204 - v60;
  MEMORY[0x1EEE9AC00](v61);
  v206 = &v204 - v62;
  MEMORY[0x1EEE9AC00](v63);
  v207 = &v204 - v64;
  MEMORY[0x1EEE9AC00](v65);
  v208 = &v204 - v66;
  MEMORY[0x1EEE9AC00](v67);
  v212 = &v204 - v68;
  MEMORY[0x1EEE9AC00](v69);
  v217 = &v204 - v70;
  MEMORY[0x1EEE9AC00](v71);
  v230 = &v204 - v72;
  MEMORY[0x1EEE9AC00](v73);
  v233 = &v204 - v74;
  MEMORY[0x1EEE9AC00](v75);
  v252 = &v204 - v76;
  MEMORY[0x1EEE9AC00](v77);
  v234 = &v204 - v78;
  MEMORY[0x1EEE9AC00](v79);
  v260 = &v204 - v80;
  MEMORY[0x1EEE9AC00](v81);
  v254 = &v204 - v82;
  MEMORY[0x1EEE9AC00](v83);
  v256 = (&v204 - v84);
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A30, &qword_1D287EFC0);
  MEMORY[0x1EEE9AC00](v85 - 8);
  v241 = &v204 - v86;
  v87 = sub_1D2872008();
  v240 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v225 = &v204 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v89);
  v91 = &v204 - v90;
  MEMORY[0x1EEE9AC00](v92);
  v224 = &v204 - v93;
  v259 = v0;
  v246 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel_representationsManager);
  v94 = *(v246 + 4);
  v95 = *(v94 + 16);
  sub_1D2870F68();
  if (!v95)
  {
LABEL_6:

    v100 = v241;
    (*(v240 + 56))(v241, 1, 1, v87);
    goto LABEL_7;
  }

  v96 = 0;
  v97 = v94 + 32;
  v98 = &qword_1EC6D9A10;
  v99 = &qword_1D28851C0;
  while (1)
  {
    if (v96 >= *(v94 + 16))
    {
      __break(1u);
LABEL_126:
      __break(1u);
LABEL_127:
      __break(1u);
LABEL_128:
      sub_1D26A21E8(v96, type metadata accessor for PlaygroundImage);
      sub_1D26A21E8(v214, type metadata accessor for PlaygroundImage);
      sub_1D26A21E8(v219, type metadata accessor for PlaygroundImage);
      sub_1D26A21E8(v222, type metadata accessor for SceneConditioningImage);
      sub_1D26A21E8(v221, type metadata accessor for SketchConditioningImage);
      sub_1D26A21E8(v98, type metadata accessor for SceneConditioningImage);
      sub_1D26A21E8(v230, type metadata accessor for Bubble);
      sub_1D26A21E8(v233, type metadata accessor for Bubble);
      goto LABEL_67;
    }

    sub_1D22D7044(v97, &v263);
    sub_1D22D7044(&v263, &v262);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9A10, &qword_1D28851C0);
    if (swift_dynamicCast())
    {
      break;
    }

    ++v96;
    __swift_destroy_boxed_opaque_existential_0(&v263);
    v97 += 40;
    if (v95 == v96)
    {
      goto LABEL_6;
    }
  }

  v127 = v240;
  v94 = *(v240 + 8);
  (v94)(v91, v87);
  sub_1D22D79FC(&v263, &v264);
  v100 = v241;
  v128 = swift_dynamicCast();
  (*(v127 + 56))(v100, v128 ^ 1u, 1, v87);
  if ((*(v127 + 48))(v100, 1, v87) == 1)
  {
LABEL_7:
    sub_1D22BD238(v100, &qword_1EC6D9A30, &qword_1D287EFC0);
    goto LABEL_8;
  }

  v129 = v224;
  (*(v127 + 32))(v224, v100, v87);
  v130 = v225;
  (*(v127 + 16))(v225, v129, v87);
  sub_1D269C8DC(v130);
  (v94)(v129, v87);
LABEL_8:
  v101 = *(v246 + 4);
  v102 = *(v101 + 16);
  if (v102)
  {
    v103 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__creationStyle;
    v94 = v101 + 32;
    v104 = (v261 + 48);
    v246 = *(v246 + 4);
    sub_1D2870F68();
    v105 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D22D7044(v94, &v264);
      sub_1D22D7044(&v264, &v263);
      swift_getKeyPath();
      v106 = v259;
      v262 = v259;
      sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
      sub_1D28719E8();

      LOBYTE(v262) = *(v106 + v103);
      sub_1D2847FA8(&v263, &v262, v53);
      __swift_destroy_boxed_opaque_existential_0(&v264);
      if ((*v104)(v53, 1, v258) == 1)
      {
        sub_1D22BD238(v53, &qword_1EC6DC4D0, &qword_1D288C910);
      }

      else
      {
        sub_1D26A2760(v53, v256, type metadata accessor for Bubble);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v105 = sub_1D27CCBF4(0, v105[2] + 1, 1, v105);
        }

        v108 = v105[2];
        v107 = v105[3];
        if (v108 >= v107 >> 1)
        {
          v105 = sub_1D27CCBF4((v107 > 1), v108 + 1, 1, v105);
        }

        v105[2] = v108 + 1;
        sub_1D26A2760(v256, v105 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v108, type metadata accessor for Bubble);
      }

      v94 += 40;
      --v102;
    }

    while (v102);
  }

  else
  {
    v105 = MEMORY[0x1E69E7CC0];
  }

  v109 = v105[2];
  v110 = v255;
  v111 = v254;
  if (!v109)
  {
    v53 = MEMORY[0x1E69E7CC0];
LABEL_44:

    v94 = *(v244 + 56);
    v124 = 1;
    (v94)(v243, 1, 1, v251);
    v98 = v53[2];
    sub_1D2870F78();
    if (v98)
    {
      v125 = 0;
      v99 = v245;
      v96 = v235;
      v126 = v234;
      while (v125 < v53[2])
      {
        sub_1D26A26F8(v53 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v125, v126, type metadata accessor for Bubble);
        sub_1D26A26F8(v126, v96, type metadata accessor for Bubble.BubbleType);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          sub_1D26A21E8(v96, type metadata accessor for Bubble.BubbleType);
          sub_1D26A2760(v126, v247, type metadata accessor for Bubble);
          v124 = 0;
          goto LABEL_54;
        }

        v125 = (v125 + 1);
        sub_1D26A21E8(v126, type metadata accessor for Bubble);
        sub_1D26A21E8(v96, type metadata accessor for Bubble.BubbleType);
        if (v98 == v125)
        {
          v124 = 1;
          goto LABEL_54;
        }
      }

      goto LABEL_126;
    }

    v99 = v245;
LABEL_54:
    v96 = v261 + 56;
    v131 = *(v261 + 56);
    v131(v247, v124, 1, v258);
    (v94)(v99, 1, 1, v251);
    v132 = v239;
    if (v98)
    {
      v133 = 0;
      v99 = v252;
      while (v133 < v53[2])
      {
        sub_1D26A26F8(v53 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v133, v99, type metadata accessor for Bubble);
        sub_1D26A26F8(v99, v132, type metadata accessor for Bubble.BubbleType);
        if (swift_getEnumCaseMultiPayload() == 8)
        {

          sub_1D26A21E8(v132, type metadata accessor for Bubble.BubbleType);
          v135 = v242;
          sub_1D26A2760(v99, v242, type metadata accessor for Bubble);
          v134 = 0;
          goto LABEL_61;
        }

        v133 = (v133 + 1);
        sub_1D26A21E8(v99, type metadata accessor for Bubble);
        sub_1D26A21E8(v132, type metadata accessor for Bubble.BubbleType);
        if (v98 == v133)
        {
          goto LABEL_59;
        }
      }

      goto LABEL_127;
    }

LABEL_59:

    v134 = 1;
    v135 = v242;
LABEL_61:
    v136 = v258;
    v131(v135, v134, 1, v258);
    v137 = v238;
    sub_1D22BD1D0(v247, v238, &qword_1EC6DC4D0, &qword_1D288C910);
    v138 = v135;
    v139 = *(v261 + 48);
    if (v139(v137, 1, v136) == 1)
    {
      v140 = v137;
    }

    else
    {
      v141 = v137;
      v142 = v233;
      sub_1D26A2760(v141, v233, type metadata accessor for Bubble);
      v143 = v138;
      v144 = v232;
      sub_1D22BD1D0(v143, v232, &qword_1EC6DC4D0, &qword_1D288C910);
      if (v139(v144, 1, v136) != 1)
      {
        v155 = v230;
        sub_1D26A2760(v144, v230, type metadata accessor for Bubble);
        v156 = v229;
        sub_1D26A26F8(v142, v229, type metadata accessor for Bubble.BubbleType);
        if (swift_getEnumCaseMultiPayload() == 7)
        {
          v157 = v228;
          sub_1D26A2760(v156, v228, type metadata accessor for SceneConditioningImage);
          v156 = v223;
          sub_1D26A26F8(v155, v223, type metadata accessor for Bubble.BubbleType);
          if (swift_getEnumCaseMultiPayload() == 8)
          {
            sub_1D22BD238(v245, &unk_1EC6DE5A0, &unk_1D287F0E0);
            v158 = v243;
            sub_1D22BD238(v243, &unk_1EC6DE5A0, &unk_1D287F0E0);
            v159 = v221;
            sub_1D26A2760(v156, v221, type metadata accessor for SketchConditioningImage);
            v160 = v222;
            sub_1D26A26F8(v157, v222, type metadata accessor for SceneConditioningImage);
            sub_1D26A26F8(v160, v158, type metadata accessor for PlaygroundImage);
            v161 = v251;
            (v94)(v158, 0, 1, v251);
            v162 = v159;
            v163 = v159;
            v99 = v245;
            sub_1D26A26F8(v163, v245, type metadata accessor for PlaygroundImage);
            (v94)(v99, 0, 1, v161);
            v94 = v161;
            v164 = v220;
            sub_1D22BD1D0(v158, v220, &unk_1EC6DE5A0, &unk_1D287F0E0);
            v110 = v244 + 48;
            v165 = *(v244 + 48);
            if (v165(v164, 1, v94) == 1)
            {
              sub_1D26A21E8(v160, type metadata accessor for SceneConditioningImage);
              v166 = v162;
            }

            else
            {
              v181 = v219;
              sub_1D26A2760(v164, v219, type metadata accessor for PlaygroundImage);
              v164 = v215;
              sub_1D22BD1D0(v99, v215, &unk_1EC6DE5A0, &unk_1D287F0E0);
              if (v165(v164, 1, v94) != 1)
              {
                v182 = v214;
                sub_1D26A2760(v164, v214, type metadata accessor for PlaygroundImage);
                v109 = v210;
                sub_1D262A704(v210);
                v183 = v165(v109, 1, v94);
                v184 = v222;
                if (v183 != 1)
                {
                  goto LABEL_117;
                }

                sub_1D26A21E8(v182, type metadata accessor for PlaygroundImage);
                sub_1D26A21E8(v181, type metadata accessor for PlaygroundImage);
                sub_1D26A21E8(v184, type metadata accessor for SceneConditioningImage);
                sub_1D26A21E8(v221, type metadata accessor for SketchConditioningImage);
                sub_1D26A21E8(v228, type metadata accessor for SceneConditioningImage);
                sub_1D26A21E8(v230, type metadata accessor for Bubble);
                sub_1D26A21E8(v233, type metadata accessor for Bubble);
                sub_1D22BD238(v109, &unk_1EC6DE5A0, &unk_1D287F0E0);
                goto LABEL_67;
              }

              sub_1D26A21E8(v181, type metadata accessor for PlaygroundImage);
              sub_1D26A21E8(v222, type metadata accessor for SceneConditioningImage);
              v166 = v221;
            }

            sub_1D26A21E8(v166, type metadata accessor for SketchConditioningImage);
            sub_1D26A21E8(v228, type metadata accessor for SceneConditioningImage);
            sub_1D26A21E8(v230, type metadata accessor for Bubble);
            sub_1D26A21E8(v233, type metadata accessor for Bubble);
            sub_1D22BD238(v164, &unk_1EC6DE5A0, &unk_1D287F0E0);
LABEL_67:
            v145 = v237;
            goto LABEL_68;
          }

          sub_1D26A21E8(v157, type metadata accessor for SceneConditioningImage);
          sub_1D26A21E8(v155, type metadata accessor for Bubble);
          v180 = v233;
        }

        else
        {
          sub_1D26A21E8(v155, type metadata accessor for Bubble);
          v180 = v142;
        }

        sub_1D26A21E8(v180, type metadata accessor for Bubble);
        sub_1D26A21E8(v156, type metadata accessor for Bubble.BubbleType);
LABEL_66:
        v94 = v251;
        goto LABEL_67;
      }

      sub_1D26A21E8(v142, type metadata accessor for Bubble);
      v140 = v144;
    }

    sub_1D22BD238(v140, &qword_1EC6DC4D0, &qword_1D288C910);
    goto LABEL_66;
  }

  v99 = 0;
  v256 = (v236 + 8);
  v246 = "allowStyleSelection";
  v53 = MEMORY[0x1E69E7CC0];
  while (v99 < v105[2])
  {
    v112 = (*(v261 + 80) + 32) & ~*(v261 + 80);
    v113 = *(v261 + 72);
    sub_1D26A26F8(v105 + v112 + v113 * v99, v111, type metadata accessor for Bubble);
    sub_1D26A26F8(v111, v110, type metadata accessor for Bubble.BubbleType);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload > 0xA)
    {
      goto LABEL_42;
    }

    v115 = 1 << EnumCaseMultiPayload;
    if (((1 << EnumCaseMultiPayload) & 0x1E6) != 0)
    {
      sub_1D26A21E8(v110, type metadata accessor for Bubble.BubbleType);
LABEL_29:
      sub_1D26A2760(v111, v260, type metadata accessor for Bubble);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v264 = v53;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D23D8628(0, v53[2] + 1, 1);
        v111 = v254;
        v110 = v255;
        v53 = v264;
      }

      v118 = v53[2];
      v117 = v53[3];
      v94 = v118 + 1;
      if (v118 >= v117 >> 1)
      {
        sub_1D23D8628((v117 > 1), v118 + 1, 1);
        v111 = v254;
        v110 = v255;
        v53 = v264;
      }

      v53[2] = v94;
      sub_1D26A2760(v260, v53 + v112 + v118 * v113, type metadata accessor for Bubble);
      goto LABEL_24;
    }

    if ((v115 & 0x18) == 0)
    {
      if ((v115 & 0x600) != 0)
      {
        sub_1D26A21E8(v110, type metadata accessor for Bubble.BubbleType);
        v121 = v248;
        sub_1D2872658();
        v122 = sub_1D2873CA8();
        v94 = sub_1D2878A28();
        if (os_log_type_enabled(v122, v94))
        {
          v123 = swift_slowAlloc();
          *v123 = 0;
          _os_log_impl(&dword_1D226E000, v122, v94, "Active representations should never contain a loading representation", v123, 2u);
          MEMORY[0x1D38A3520](v123, -1, -1);
        }

        (*v256)(v121, v249);
        v110 = v255;
        v111 = v254;
        goto LABEL_23;
      }

LABEL_42:
      sub_1D26A21E8(v110, type metadata accessor for Bubble.BubbleType);
      goto LABEL_23;
    }

    sub_1D26A21E8(v110, type metadata accessor for Bubble.BubbleType);
    if (qword_1ED8A4928 != -1)
    {
      swift_once();
    }

    sub_1D23B7BB8();
    v119 = sub_1D2878A58();
    v94 = sub_1D2878068();
    v120 = [v119 BOOLForKey_];

    v110 = v255;
    v111 = v254;
    if ((v120 & 1) == 0)
    {
      goto LABEL_29;
    }

LABEL_23:
    sub_1D26A21E8(v111, type metadata accessor for Bubble);
LABEL_24:
    if (v109 == ++v99)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_117:
  v96 = v209;
  sub_1D26A2760(v109, v209, type metadata accessor for PlaygroundImage);
  v185 = sub_1D262B684();
  v98 = v228;
  if (!v185)
  {
    goto LABEL_128;
  }

  v99 = v185;
  v186 = v53[2];
  if (v186)
  {
    v187 = 0;
    v109 = v217;
    while (1)
    {
      v188 = v53[2];
      if (v187 >= v188)
      {
        __break(1u);
        goto LABEL_162;
      }

      v189 = (*(v261 + 80) + 32) & ~*(v261 + 80);
      v190 = *(v261 + 72);
      sub_1D26A26F8(v53 + v189 + v190 * v187, v109, type metadata accessor for Bubble);
      v110 = v218;
      sub_1D26A26F8(v109, v218, type metadata accessor for Bubble.BubbleType);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        break;
      }

      sub_1D26A21E8(v110, type metadata accessor for Bubble.BubbleType);
      v110 = v216;
      sub_1D26A2760(v109, v216, type metadata accessor for Bubble.BubbleType);
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_133;
      }

      sub_1D26A21E8(v110, type metadata accessor for Bubble.BubbleType);
      if (v186 == ++v187)
      {
        v191 = v53[2];
        v187 = v191;
        goto LABEL_152;
      }
    }

    sub_1D26A21E8(v109, type metadata accessor for Bubble);
LABEL_133:
    sub_1D26A21E8(v110, type metadata accessor for Bubble.BubbleType);
    v191 = v187 + 1;
    v188 = v53[2];
    v110 = v213;
    v186 = v212;
    if (v188 - 1 == v187)
    {
      goto LABEL_152;
    }

    v109 = v189 + v190 * v191;
    while (v191 < v188)
    {
      sub_1D26A26F8(v53 + v109, v186, type metadata accessor for Bubble);
      sub_1D26A26F8(v186, v110, type metadata accessor for Bubble.BubbleType);
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        sub_1D26A21E8(v186, type metadata accessor for Bubble);
        sub_1D26A21E8(v110, type metadata accessor for Bubble.BubbleType);
        v94 = v251;
      }

      else
      {
        sub_1D26A21E8(v110, type metadata accessor for Bubble.BubbleType);
        v192 = v211;
        sub_1D26A2760(v186, v211, type metadata accessor for Bubble.BubbleType);
        v193 = swift_getEnumCaseMultiPayload();
        sub_1D26A21E8(v192, type metadata accessor for Bubble.BubbleType);
        if (v193 == 7)
        {
          v94 = v251;
          v110 = v213;
          v186 = v212;
        }

        else
        {
          v94 = v251;
          if (v191 != v187)
          {
            if (v187 < 0)
            {
              __break(1u);
LABEL_168:
              __break(1u);
LABEL_169:
              __break(1u);
LABEL_170:
              __break(1u);
              return;
            }

            v194 = v53[2];
            if (v187 >= v194)
            {
              goto LABEL_168;
            }

            sub_1D26A26F8(v53 + v189 + v187 * v190, v207, type metadata accessor for Bubble);
            if (v191 >= v194)
            {
              goto LABEL_169;
            }

            sub_1D26A26F8(v53 + v109, v206, type metadata accessor for Bubble);
            v195 = swift_isUniquelyReferenced_nonNull_native();
            v94 = v251;
            if ((v195 & 1) == 0)
            {
              v53 = sub_1D278BD08(v53);
            }

            sub_1D24ADE30(v206, v53 + v189 + v187 * v190);
            if (v191 >= v53[2])
            {
              goto LABEL_170;
            }

            sub_1D24ADE30(v207, v53 + v109);
          }

          v110 = v213;
          v186 = v212;
          ++v187;
        }
      }

      ++v191;
      v188 = v53[2];
      v109 += v190;
      if (v191 == v188)
      {
        if (v191 < v187)
        {
          goto LABEL_163;
        }

        if (v187 < 0)
        {
          goto LABEL_164;
        }

        goto LABEL_152;
      }
    }

LABEL_162:
    __break(1u);
LABEL_163:
    __break(1u);
LABEL_164:
    __break(1u);
LABEL_165:
    __break(1u);
    goto LABEL_166;
  }

LABEL_131:
  v191 = 0;
  v187 = 0;
LABEL_152:
  v188 = v187 - v191;
  v186 = v187;
  if (__OFADD__(v191, v187 - v191))
  {
    goto LABEL_165;
  }

  v196 = swift_isUniquelyReferenced_nonNull_native();
  *&v263 = v53;
  if (!v196 || v187 > v53[3] >> 1)
  {
    if (v191 <= v187)
    {
      v197 = v187;
    }

    else
    {
      v197 = v191;
    }

    v53 = sub_1D27CCBF4(v196, v197, 1, v53);
    *&v263 = v53;
  }

  sub_1D278CB10(v187, v191, 0);
  v198 = v208;
  v199 = (v208 + *(v94 + 36));
  *v199 = 0u;
  v199[1] = 0u;
  *(v198 + *(v94 + 40)) = xmmword_1D28809A0;
  v200 = *(v94 + 44);
  v201 = sub_1D2873AA8();
  (*(*(v201 - 8) + 56))(v198 + v200, 1, 1, v201);
  *v198 = v99;
  *(v198 + 8) = 0;
  *(v198 + 24) = 1;
  *(v198 + 16) = 0;
  *(v198 + 32) = 0;
  *(v198 + 40) = 0;
  *(v198 + *(v94 + 48)) = 0;
  v186 = v99;
  sub_1D2871808();
  v109 = v222;
  *(v198 + *(v205 + 20)) = *(v222 + *(v205 + 20));
  swift_storeEnumTagMultiPayload();
  v187 = v53[2];
  v188 = v53[3];
  v110 = v187 + 1;
  if (v187 >= v188 >> 1)
  {
LABEL_166:
    v53 = sub_1D27CCBF4((v188 > 1), v110, 1, v53);
  }

  v145 = v237;
  v202 = v221;
  v203 = v214;

  sub_1D26A21E8(v209, type metadata accessor for PlaygroundImage);
  sub_1D26A21E8(v203, type metadata accessor for PlaygroundImage);
  sub_1D26A21E8(v219, type metadata accessor for PlaygroundImage);
  sub_1D26A21E8(v109, type metadata accessor for SceneConditioningImage);
  sub_1D26A21E8(v202, type metadata accessor for SketchConditioningImage);
  sub_1D26A21E8(v228, type metadata accessor for SceneConditioningImage);
  sub_1D26A21E8(v230, type metadata accessor for Bubble);
  sub_1D26A21E8(v233, type metadata accessor for Bubble);
  v53[2] = v110;
  sub_1D26A2760(v208, v53 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v187, type metadata accessor for Bubble);
LABEL_68:
  swift_getKeyPath();
  v146 = v259;
  v264 = v259;
  v110 = sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v147 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageThumbnail;
  swift_beginAccess();
  sub_1D22BD1D0(v146 + v147, v145, &unk_1EC6DE5A0, &unk_1D287F0E0);
  if ((*(v244 + 48))(v145, 1, v94) == 1)
  {
    sub_1D22BD238(v145, &unk_1EC6DE5A0, &unk_1D287F0E0);
LABEL_90:
    swift_getKeyPath();
    v262 = v146;
    sub_1D28719E8();

    v172 = *(v146 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID + 8);
    if (v172)
    {
      v173 = *(v146 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID);
      v174 = v53[2];
      sub_1D2870F68();
      v109 = 0;
      while (v174 != v109)
      {
        if (v109 >= v53[2])
        {
          __break(1u);
          goto LABEL_130;
        }

        sub_1D26A26F8(v53 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v109, v253, type metadata accessor for Bubble);
        if (sub_1D2846EE0() == v173 && v172 == v175)
        {

          sub_1D26A21E8(v253, type metadata accessor for Bubble);
LABEL_98:

          v168 = v245;
          v146 = v259;
          goto LABEL_105;
        }

        ++v109;
        v94 = sub_1D2879618();

        sub_1D26A21E8(v253, type metadata accessor for Bubble);
        if (v94)
        {
          goto LABEL_98;
        }
      }

      v176 = v227;
      *v227 = v173;
      v176[1] = v172;
      v167 = v176;
      swift_storeEnumTagMultiPayload();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v53 = sub_1D27CCBF4(0, v53[2] + 1, 1, v53);
      }

      v168 = v245;
      v146 = v259;
      v170 = v53[2];
      v177 = v53[3];
      v171 = v170 + 1;
      if (v170 >= v177 >> 1)
      {
        v53 = sub_1D27CCBF4((v177 > 1), v170 + 1, 1, v53);
      }

      goto LABEL_104;
    }

    v168 = v245;
  }

  else
  {
    sub_1D26A2760(v145, v250, type metadata accessor for PlaygroundImage);
    v94 = 0;
    v148 = v53[2];
    v109 = v231;
    while (v148 != v94)
    {
      if (v94 >= v53[2])
      {
LABEL_130:
        __break(1u);
        goto LABEL_131;
      }

      sub_1D26A26F8(v53 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v94, v109, type metadata accessor for Bubble);
      v149 = sub_1D2846EE0();
      v151 = v150;
      if (v149 == sub_1D28717B8() && v151 == v152)
      {

        sub_1D26A21E8(v109, type metadata accessor for Bubble);
LABEL_89:
        sub_1D26A21E8(v250, type metadata accessor for PlaygroundImage);
        v146 = v259;
        goto LABEL_90;
      }

      ++v94;
      v154 = sub_1D2879618();

      sub_1D26A21E8(v109, type metadata accessor for Bubble);
      if (v154)
      {
        goto LABEL_89;
      }
    }

    v167 = v226;
    sub_1D26A26F8(v250, v226, type metadata accessor for PlaygroundImage);
    swift_storeEnumTagMultiPayload();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v53 = sub_1D27CCBF4(0, v53[2] + 1, 1, v53);
    }

    v168 = v245;
    v146 = v259;
    v170 = v53[2];
    v169 = v53[3];
    v171 = v170 + 1;
    if (v170 >= v169 >> 1)
    {
      v53 = sub_1D27CCBF4((v169 > 1), v170 + 1, 1, v53);
    }

    sub_1D26A21E8(v250, type metadata accessor for PlaygroundImage);
LABEL_104:
    v53[2] = v171;
    sub_1D26A2760(v167, v53 + ((*(v261 + 80) + 32) & ~*(v261 + 80)) + *(v261 + 72) * v170, type metadata accessor for Bubble);
  }

LABEL_105:
  swift_getKeyPath();
  v262 = v146;
  sub_1D28719E8();

  v178 = v146[2];
  sub_1D2870F68();
  v179 = sub_1D2337F24(v53, v178);

  if (v179)
  {
    sub_1D22BD238(v242, &qword_1EC6DC4D0, &qword_1D288C910);
    sub_1D22BD238(v168, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D22BD238(v247, &qword_1EC6DC4D0, &qword_1D288C910);
    sub_1D22BD238(v243, &unk_1EC6DE5A0, &unk_1D287F0E0);
  }

  else
  {
    sub_1D269D1C0(v53);

    sub_1D22BD238(v242, &qword_1EC6DC4D0, &qword_1D288C910);
    sub_1D22BD238(v168, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D22BD238(v247, &qword_1EC6DC4D0, &qword_1D288C910);
    sub_1D22BD238(v243, &unk_1EC6DE5A0, &unk_1D287F0E0);
  }
}

double sub_1D269B7A4@<D0>(uint64_t *a1@<X0>, void *a3@<X4>, void *a4@<X8>)
{
  v6 = *a1;
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v7 = (v6 + *a3);
  v8 = v7[1];
  *a4 = *v7;
  a4[1] = v8;
  sub_1D2870F68();
  return result;
}

uint64_t sub_1D269B878(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_1D2870F68();
  return a5(v7, v6);
}

void sub_1D269B8C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID);
  *v3 = a2;
  v3[1] = a3;
  sub_1D2870F68();

  sub_1D2698A94();
}

uint64_t sub_1D269B910@<X0>(uint64_t a1@<X8>)
{
  swift_getKeyPath();
  v5 = v1;
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageThumbnail;
  swift_beginAccess();
  return sub_1D22BD1D0(v5 + v3, a1, &unk_1EC6DE5A0, &unk_1D287F0E0);
}

void sub_1D269B9E8()
{
  v1 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v21 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Bubble(0);
  v4 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D0, &qword_1D288C910);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  swift_getKeyPath();
  v24 = v0;
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v15 = *(v0 + 16);
  v16 = *(v15 + 16);
  sub_1D2870F68();
  if (v16)
  {
    v17 = 0;
    while (v17 < *(v15 + 16))
    {
      sub_1D26A26F8(v15 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v17, v8, type metadata accessor for Bubble);
      sub_1D26A26F8(v8, v3, type metadata accessor for Bubble.BubbleType);
      if (swift_getEnumCaseMultiPayload() - 6 < 3)
      {

        sub_1D26A21E8(v3, type metadata accessor for Bubble.BubbleType);
        sub_1D26A2760(v8, v14, type metadata accessor for Bubble);
        v18 = 0;
        goto LABEL_8;
      }

      ++v17;
      sub_1D26A21E8(v3, type metadata accessor for Bubble.BubbleType);
      sub_1D26A21E8(v8, type metadata accessor for Bubble);
      if (v16 == v17)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    v18 = 1;
LABEL_8:
    v19 = v23;
    (*(v4 + 56))(v14, v18, 1, v23);
    sub_1D22BD1D0(v14, v11, &qword_1EC6DC4D0, &qword_1D288C910);
    if ((*(v4 + 48))(v11, 1, v19) == 1)
    {
      sub_1D22BD238(v14, &qword_1EC6DC4D0, &qword_1D288C910);
      v14 = v11;
    }

    else
    {
      v20 = v22;
      sub_1D26A2760(v11, v22, type metadata accessor for Bubble);
      sub_1D269DFD8(v20);
      sub_1D26A21E8(v20, type metadata accessor for Bubble);
    }

    sub_1D22BD238(v14, &qword_1EC6DC4D0, &qword_1D288C910);
  }
}

uint64_t sub_1D269BE0C(char *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageThumbnail;
  swift_beginAccess();
  sub_1D23EFB0C(a1, v1 + v6);
  swift_endAccess();
  swift_getKeyPath();
  v10 = v1;
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  sub_1D22BD1D0(v1 + v6, v5, &unk_1EC6DE5A0, &unk_1D287F0E0);
  v7 = type metadata accessor for PlaygroundImage(0);
  if ((*(*(v7 - 8) + 48))(v5, 1, v7) == 1)
  {
    sub_1D22BD238(a1, &unk_1EC6DE5A0, &unk_1D287F0E0);
    a1 = v5;
  }

  else
  {
    sub_1D22BD238(v5, &unk_1EC6DE5A0, &unk_1D287F0E0);
    sub_1D269B9E8();
    sub_1D2698E00();
  }

  return sub_1D22BD238(a1, &unk_1EC6DE5A0, &unk_1D287F0E0);
}

uint64_t sub_1D269BFE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v4 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageThumbnail;
  swift_beginAccess();
  return sub_1D22BD1D0(v3 + v4, a2, &unk_1EC6DE5A0, &unk_1D287F0E0);
}

uint64_t sub_1D269C0BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  sub_1D22BD1D0(a1, &v6 - v3, &unk_1EC6DE5A0, &unk_1D287F0E0);
  return sub_1D26974B4(v4);
}

uint64_t sub_1D269C168(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v7 - v4;
  sub_1D22BD1D0(a2, &v7 - v4, &unk_1EC6DE5A0, &unk_1D287F0E0);
  return sub_1D269BE0C(v5);
}

uint64_t sub_1D269C230()
{
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  return swift_unknownObjectWeakLoadStrong();
}

void sub_1D269C2E4(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingPhotoSharingConfirmation;
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingPhotoSharingConfirmation);
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingPhotoSharingConfirmation) = a2;
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  if ((*(a1 + v3) & 1) == 0 && v4)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    v5 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 24))(ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

void sub_1D269C440(uint64_t a1, char a2)
{
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingStyleSuggestionConfirmation;
  v4 = *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingStyleSuggestionConfirmation);
  *(a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__isPresentingStyleSuggestionConfirmation) = a2;
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  if ((*(a1 + v3) & 1) == 0 && v4)
  {
    swift_getKeyPath();
    sub_1D28719E8();

    v5 = a1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate;
    if (swift_unknownObjectWeakLoadStrong())
    {
      v6 = *(v5 + 8);
      ObjectType = swift_getObjectType();
      (*(v6 + 32))(ObjectType, v6);
      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_1D269C5B0@<X0>(uint64_t *a2@<X1>, uint64_t (*a3)(void, __n128)@<X2>, uint64_t a4@<X8>)
{
  swift_getKeyPath();
  v11 = v4;
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v8 = *a2;
  swift_beginAccess();
  v9 = (a3)(0);
  return (*(*(v9 - 8) + 16))(a4, v11 + v8, v9);
}

uint64_t sub_1D269C6D8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X4>, uint64_t (*a4)(void, __n128)@<X5>, uint64_t a5@<X8>)
{
  v8 = *a1;
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v9 = *a3;
  swift_beginAccess();
  v10 = (a4)(0);
  return (*(*(v10 - 8) + 16))(a5, v8 + v9, v10);
}

uint64_t sub_1D269C808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1D269C8DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2872008();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentStyle;
  swift_beginAccess();
  (*(v5 + 16))(v7, v1 + v8, v4);
  sub_1D26A28C0(&qword_1ED8A6C08, MEMORY[0x1E696E310], MEMORY[0x1E696E328]);
  v9 = sub_1D2877F98();
  v10 = *(v5 + 8);
  v10(v7, v4);
  if (v9)
  {
    swift_beginAccess();
    (*(v5 + 24))(v2 + v8, a1, v4);
    swift_endAccess();
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    v13[-2] = v2;
    v13[-1] = a1;
    v13[1] = v2;
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }

  return (v10)(a1, v4);
}

uint64_t sub_1D269CB5C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void, __n128))
{
  v7 = *a3;
  swift_beginAccess();
  v8 = (a4)(0);
  (*(*(v8 - 8) + 24))(a1 + v7, a2, v8);
  return swift_endAccess();
}

void sub_1D269CC24(_BYTE *a1@<X8>)
{
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  *a1 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__creationStyle);
}

void sub_1D269CCD4(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  *a2 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__creationStyle);
}

double sub_1D269CDBC(unsigned __int8 *a1)
{
  if (*(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__creationStyle) != *a1)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x1EEE9AC00](KeyPath);
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719D8();
  }

  return result;
}

uint64_t sub_1D269CF04()
{
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v1 = *(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldAnimateAddedBubbles);
  sub_1D2870F78();
  return v1;
}

uint64_t sub_1D269CFC0@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v5 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldAnimateAddedBubbles);
  v4 = *(v3 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldAnimateAddedBubbles + 8);
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1D26A21B4;
  a2[1] = v6;
  return sub_1D2870F78();
}

double sub_1D269D0A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  swift_getKeyPath();
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D2870F78();
  sub_1D28719D8();

  return result;
}

uint64_t sub_1D269D1C0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2871988();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v46[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v48 = &v46[-v9];
  MEMORY[0x1EEE9AC00](v10);
  v51 = &v46[-v11];
  MEMORY[0x1EEE9AC00](v12);
  v50 = &v46[-v13];
  v14 = sub_1D2871818();
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v46[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  v53 = v1;
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v17 = sub_1D2870F68();
  v18 = sub_1D26A0EDC(v17, a1);

  v49 = v5;
  if (v18 & 1) != 0 && (swift_getKeyPath(), v53 = v1, sub_1D28719E8(), , v19 = *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldAnimateAddedBubbles), v20 = sub_1D2870F78(), LOBYTE(v19) = v19(v20), , (v19) && (swift_getKeyPath(), v53 = v1, sub_1D28719E8(), , *(v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__creationStyle)))
  {
    sub_1D2871808();
    sub_1D269802C(v16);
    v47 = 1;
  }

  else
  {
    v47 = 0;
  }

  swift_getKeyPath();
  v53 = v1;
  sub_1D28719E8();

  v21 = sub_1D2870F68();
  v22 = sub_1D233C800(v21);

  v23 = sub_1D2870F68();
  v24 = sub_1D233C800(v23);

  if (v24[2] <= v22[2] >> 3)
  {
    v53 = v22;
    sub_1D2870F68();
    sub_1D269FA74(v24);
    v25 = v53;
  }

  else
  {
    sub_1D2870F68();
    v25 = sub_1D269FC7C(v24, v22);
  }

  v26 = v50;
  sub_1D2871978();
  sub_1D2870F78();
  sub_1D26A15A0(v25, v2, v26, sub_1D269D8E0);

  if (v22[2] <= v24[2] >> 3)
  {
    v53 = v24;
    sub_1D269FA74(v22);

    v27 = v53;
  }

  else
  {
    v27 = sub_1D269FC7C(v22, v24);
  }

  v28 = v51;
  sub_1D2871978();
  sub_1D2870F68();
  sub_1D26A15A0(v27, a1, v28, sub_1D269DAC8);

  swift_getKeyPath();
  v53 = v2;
  sub_1D28719E8();

  if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__creationStyle))
  {
    v29 = sub_1D2870F68();
  }

  else
  {
    swift_getKeyPath();
    v53 = v2;
    sub_1D28719E8();

    v30 = sub_1D2870F68();
    v31 = sub_1D26A1EA8(v30, a1);

    v29 = v31;
  }

  sub_1D2697E5C(v29);
  if (v47)
  {
    if (*(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition) == 1.0)
    {
      *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition) = 0x3FF0000000000000;
    }

    else
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      *&v46[-16] = v2;
      *&v46[-8] = 0x3FF0000000000000;
      v53 = v2;
      sub_1D28719D8();
    }
  }

  v33 = *(a1 + 16);
  sub_1D26A28C0(&qword_1ED8A6C48, MEMORY[0x1E6969B50], MEMORY[0x1E6969B90]);
  sub_1D2879078();
  if (v33)
  {
    v34 = 0;
    do
    {
      v35 = v34 + 1;
      v52 = v34;
      sub_1D2879058();
      v34 = v35;
    }

    while (v33 != v35);
  }

  v37 = v48;
  v36 = v49;
  (*(v49 + 32))(v48, v7, v4);
  swift_getKeyPath();
  v53 = v2;
  sub_1D28719E8();

  v38 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v41 = v50;
  v40 = v51;
  if (Strong)
  {
    v42 = *(v38 + 8);
    ObjectType = swift_getObjectType();
    (*(v42 + 16))(v2, v37, v40, v41, ObjectType, v42);
    swift_unknownObjectRelease();
  }

  v44 = *(v36 + 8);
  v44(v37, v4);
  v44(v40, v4);
  return (v44)(v41, v4);
}

void sub_1D269D8E0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Bubble(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v12[1] = a2;
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v8 = *(a2 + 16);
  v9 = *(v8 + 16);
  sub_1D2870F68();
  if (v9)
  {
    v10 = 0;
    while (v10 < *(v8 + 16))
    {
      sub_1D26A26F8(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v7, type metadata accessor for Bubble);
      v11 = sub_1D2849278(v7, a1);
      sub_1D26A21E8(v7, type metadata accessor for Bubble);
      if (v11)
      {
        goto LABEL_7;
      }

      if (v9 == ++v10)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    __break(1u);
LABEL_7:

    sub_1D2871958();
  }
}

uint64_t sub_1D269DAC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Bubble(0) - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a2 + 16);
  if (v8)
  {
    v9 = 0;
    v10 = a2 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v11 = *(v5 + 72);
    while (1)
    {
      sub_1D26A26F8(v10, v7, type metadata accessor for Bubble);
      v12 = sub_1D2849278(v7, a1);
      sub_1D26A21E8(v7, type metadata accessor for Bubble);
      if (v12)
      {
        break;
      }

      ++v9;
      v10 += v11;
      if (v8 == v9)
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

  return sub_1D2871958();
}

double sub_1D269DC18(uint64_t a1)
{
  v2 = v1;
  v25 = a1;
  v4 = type metadata accessor for Prompt(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = sub_1D28785F8();
  v12 = *(v11 - 8);
  v26 = *(v12 + 56);
  v27 = v12 + 56;
  v26(v10, 1, 1, v11);
  sub_1D26A26F8(a1, v7, type metadata accessor for Prompt);
  sub_1D2878568();
  sub_1D2870F78();
  v13 = sub_1D2878558();
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  v16 = MEMORY[0x1E69E85E0];
  v15[2] = v13;
  v15[3] = v16;
  v15[4] = v2;
  sub_1D26A2760(v7, v15 + v14, type metadata accessor for Prompt);
  sub_1D22AE31C(0, 0, v10, &unk_1D289BFB8, v15);

  v17 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel_representationsManager);
  v31 = v4;
  v32 = sub_1D26A28C0(&unk_1ED89E418, type metadata accessor for Prompt, &unk_1D28A5D10);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v30);
  sub_1D26A26F8(v25, boxed_opaque_existential_1, type metadata accessor for Prompt);
  type metadata accessor for RemoveImageConditioningRepresentationOperation();
  v19 = swift_allocObject();
  *(v19 + 32) = 0u;
  *(v19 + 48) = 0u;
  *(v19 + 64) = 0u;
  *(v19 + 80) = 0u;
  *(v19 + 96) = 0u;
  *(v19 + 16) = 0u;
  *(v19 + 112) = 1;
  sub_1D22D79FC(&v30, v28);
  v29 = v17;
  swift_beginAccess();
  sub_1D2870F78();
  sub_1D22D3E98(v28, v19 + 16);
  swift_endAccess();
  v20 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel_sessionUndoManager);
  v26(v10, 1, 1, v11);
  sub_1D2870F78();
  sub_1D2870F78();
  v21 = sub_1D2878558();
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  *(v22 + 24) = MEMORY[0x1E69E85E0];
  *(v22 + 32) = v19;
  *(v22 + 40) = &off_1EEC2DA38;
  *(v22 + 48) = 1;
  *(v22 + 56) = v20;
  *(v22 + 64) = sub_1D26A2A10;
  *(v22 + 72) = 0;
  sub_1D22AE01C(0, 0, v10, &unk_1D289BFC0, v22);

  return result;
}

uint64_t sub_1D269DFD8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D8E60, &qword_1D28811F0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D26A26F8(a1, v9, type metadata accessor for Bubble.BubbleType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  sub_1D26A21E8(v9, type metadata accessor for Bubble.BubbleType);
  if (EnumCaseMultiPayload == 10)
  {
    swift_getKeyPath();
    *&v23 = v2;
    sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
    sub_1D28719E8();

    v11 = v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate;
    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v13 = *(v11 + 8);
      ObjectType = swift_getObjectType();
      (*(v13 + 40))(ObjectType, v13);
      return swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_1D284786C(&v23);
    if (v24)
    {
      sub_1D22D79FC(&v23, v27);
      sub_1D22D7044(v27, v26);
      v15 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel_representationsManager);
      type metadata accessor for RemoveImageConditioningRepresentationOperation();
      v16 = swift_allocObject();
      *(v16 + 32) = 0u;
      *(v16 + 48) = 0u;
      *(v16 + 64) = 0u;
      *(v16 + 80) = 0u;
      *(v16 + 96) = 0u;
      *(v16 + 16) = 0u;
      *(v16 + 112) = 1;
      sub_1D22D79FC(v26, &v23);
      v25 = v15;
      swift_beginAccess();
      sub_1D2870F78();
      sub_1D22D3E98(&v23, v16 + 16);
      swift_endAccess();
      v17 = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel_sessionUndoManager);
      v18 = sub_1D28785F8();
      (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
      sub_1D2878568();
      swift_retain_n();
      sub_1D2870F78();
      v19 = sub_1D2878558();
      v20 = swift_allocObject();
      v21 = MEMORY[0x1E69E85E0];
      *(v20 + 16) = v19;
      *(v20 + 24) = v21;
      *(v20 + 32) = v16;
      *(v20 + 40) = &off_1EEC2DA38;
      *(v20 + 48) = 1;
      *(v20 + 56) = v17;
      *(v20 + 64) = sub_1D26A2A10;
      *(v20 + 72) = 0;
      sub_1D22AE01C(0, 0, v6, &unk_1D288CB00, v20);

      return __swift_destroy_boxed_opaque_existential_0(v27);
    }

    else
    {
      return sub_1D22BD238(&v23, &unk_1EC6E1D30, &qword_1D2892FF0);
    }
  }

  return result;
}

uint64_t sub_1D269E380(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[3] = a1;
  sub_1D2878568();
  v5[6] = sub_1D2878558();
  v7 = sub_1D28784F8();

  return MEMORY[0x1EEE6DFA0](sub_1D269E41C, v7, v6);
}

uint64_t sub_1D269E41C()
{
  v1 = *(v0 + 32);

  swift_getKeyPath();
  *(v0 + 16) = v1;
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v2 = v1 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = *(v0 + 32);
    v4 = *(v0 + 40);
    v6 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(v5, v4, ObjectType, v6);
    swift_unknownObjectRelease();
  }

  **(v0 + 24) = Strong == 0;
  v8 = *(v0 + 8);

  return v8();
}

void sub_1D269E560(void *a1)
{
  v2 = sub_1D2873CB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1)
  {
    v6 = a1;
    sub_1D28725B8();
    v7 = a1;
    v8 = sub_1D2873CA8();
    v9 = sub_1D2878A18();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412290;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v10 + 4) = v13;
      *v11 = v13;
      _os_log_impl(&dword_1D226E000, v8, v9, "Cannot remove image conditioning representation with error: %@", v10, 0xCu);
      sub_1D22BD238(v11, qword_1EC6DA930, &qword_1D287E870);
      MEMORY[0x1D38A3520](v11, -1, -1);
      MEMORY[0x1D38A3520](v10, -1, -1);
    }

    (*(v3 + 8))(v5, v2);
    if (qword_1EC6D8968 != -1)
    {
      swift_once();
    }

    sub_1D25428EC(a1);
  }
}

double sub_1D269E75C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    ObjectType = swift_getObjectType();
    (*(a3 + 56))(ObjectType, a3);
    if (*(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldBlockPhotoImport))
    {
      KeyPath = swift_getKeyPath();
      MEMORY[0x1EEE9AC00](KeyPath);
      sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
      sub_1D28719D8();
    }

    else
    {
      *(v6 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldBlockPhotoImport) = 0;
    }
  }

  return result;
}

void sub_1D269E8CC(uint64_t a1, int a2)
{
  v20[1] = a2;
  v4 = sub_1D2873CB8();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Bubble(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getKeyPath();
  v23 = v2;
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  v11 = *(*(*&v2 + 16) + 16);
  swift_getKeyPath();
  v23 = v2;
  sub_1D28719E8();

  v12 = *(*&v2 + 16);
  v13 = *(v12 + 16);
  sub_1D2870F68();
  if (v13)
  {
    v14 = 0;
    v15 = 360.0 / v11 * 0.0174532925;
    while (v14 < *(v12 + 16))
    {
      sub_1D26A26F8(v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v14, v10, type metadata accessor for Bubble);
      v16 = sub_1D2849278(v10, a1);
      sub_1D26A21E8(v10, type metadata accessor for Bubble);
      if (v16)
      {

        v23 = v15 * (v14 + 1);
        sub_1D2876FE8();
        sub_1D2876FE8();
        sub_1D2876FF8();
        v23 = -1.57079633;
        sub_1D2876FE8();
        sub_1D2876FE8();
        sub_1D2876FF8();
        fmod(v23 * 57.2957795, 360.0);
        return;
      }

      if (v13 == ++v14)
      {
        goto LABEL_6;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_6:

    sub_1D2872658();
    v17 = sub_1D2873CA8();
    v18 = sub_1D2878A18();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D226E000, v17, v18, "No angle for bubble", v19, 2u);
      MEMORY[0x1D38A3520](v19, -1, -1);
    }

    (*(v21 + 8))(v6, v22);
  }
}

uint64_t sub_1D269ECC0()
{

  v1 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentAnimationID;
  v2 = sub_1D2871818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_1D22BD238(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageThumbnail, &unk_1EC6DE5A0, &unk_1D287F0E0);
  v3 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__currentStyle;
  v4 = sub_1D2872008();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  sub_1D22729C0(v0 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__delegate);

  v5 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel___observationRegistrar;
  v6 = sub_1D2871A28();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t sub_1D269EE54()
{
  sub_1D269ECC0();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for FloatingBubblesViewModel(uint64_t a1)
{
  result = qword_1ED89FEB8;
  if (!qword_1ED89FEB8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D269EF00(uint64_t a1)
{
  sub_1D2871818();
  if (v1 <= 0x3F)
  {
    sub_1D22D0510(319);
    if (v2 <= 0x3F)
    {
      sub_1D2872008();
      if (v3 <= 0x3F)
      {
        sub_1D2871A28();
        if (v4 <= 0x3F)
        {
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

uint64_t sub_1D269F0B8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D0, &qword_1D288C910);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for Bubble(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D22D7044(a1, v15);
  swift_getKeyPath();
  v14 = v2;
  sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  sub_1D28719E8();

  LOBYTE(v14) = *(v2 + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__creationStyle);
  sub_1D2847FA8(v15, &v14, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_1D22BD238(v6, &qword_1EC6DC4D0, &qword_1D288C910);
  }

  sub_1D26A2760(v6, v10, type metadata accessor for Bubble);
  v12 = sub_1D2846EE0();
  sub_1D2698884(v12, v13);
  return sub_1D26A21E8(v10, type metadata accessor for Bubble);
}

void sub_1D269F2EC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D2873CB8();
  v61 = *(v4 - 8);
  v62 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = type metadata accessor for Bubble(0);
  v69 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v75 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v76 = &v59 - v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF8A8, &qword_1D289BE80);
  v9 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v66 = (&v59 - v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF8B0, &qword_1D289BE88);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v59 - v15);
  v17 = sub_1D25D7ED4(MEMORY[0x1E69E7CC0]);
  swift_getKeyPath();
  v18 = OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel___observationRegistrar;
  v77 = v2;
  v63 = sub_1D26A28C0(&qword_1ED89FEC8, type metadata accessor for FloatingBubblesViewModel, &unk_1D289BCF0);
  v64 = v18;
  sub_1D28719E8();
  v19 = a1;

  v65 = v2;
  v20 = v2[2];
  v21 = *(v20 + 16);
  v70 = (v9 + 48);
  v71 = (v9 + 56);
  v67 = v20;
  v68 = a1 + 32;
  sub_1D2870F68();
  v22 = 0;
  if (v21)
  {
    goto LABEL_5;
  }

LABEL_4:
  v25 = 1;
  v22 = v21;
  for (i = v72; ; i = v28)
  {
    (*v71)(v13, v25, 1, i);
    sub_1D22EC9BC(v13, v16, &qword_1EC6DF8B0, &qword_1D289BE88);
    if ((*v70)(v16, 1, i) == 1)
    {

      swift_getKeyPath();
      v77 = v65;
      sub_1D28719E8();

      v52 = sub_1D2870F68();
      sub_1D2557584(v52, v17);
      v54 = v53;

      if (v54)
      {
      }

      else
      {
        sub_1D26986E8(v17);
      }

      return;
    }

    v31 = *v16;
    sub_1D26A2760(v16 + *(i + 48), v76, type metadata accessor for Bubble);
    v32 = *(v19 + 16);
    if (v31 >= v32)
    {
      break;
    }

    if (v31 < 0)
    {
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
      sub_1D28796E8();
      __break(1u);
      return;
    }

    v33 = v19;
    v34 = (v68 + 32 * v31);
    v35 = v34[1];
    v73 = *v34;
    v74 = v35;
    v36 = v75;
    sub_1D26A26F8(v76, v75, type metadata accessor for Bubble);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77 = v17;
    v39 = sub_1D25D0908(v36);
    v40 = v17[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_29;
    }

    v43 = v38;
    if (v17[3] >= v42)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D24EF8F8();
      }
    }

    else
    {
      sub_1D24E5E50(v42, isUniquelyReferenced_nonNull_native);
      v44 = sub_1D25D0908(v75);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_33;
      }

      v39 = v44;
    }

    v19 = v33;
    v17 = v77;
    if (v43)
    {
      v23 = (v77[7] + 32 * v39);
      v24 = v74;
      *v23 = v73;
      v23[1] = v24;
      sub_1D26A21E8(v75, type metadata accessor for Bubble);
      sub_1D26A21E8(v76, type metadata accessor for Bubble);
      if (v22 == v21)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v77[(v39 >> 6) + 8] |= 1 << v39;
      v46 = v75;
      sub_1D26A26F8(v75, v17[6] + *(v69 + 72) * v39, type metadata accessor for Bubble);
      v47 = (v17[7] + 32 * v39);
      v48 = v74;
      *v47 = v73;
      v47[1] = v48;
      sub_1D26A21E8(v46, type metadata accessor for Bubble);
      sub_1D26A21E8(v76, type metadata accessor for Bubble);
      v49 = v17[2];
      v50 = __OFADD__(v49, 1);
      v51 = v49 + 1;
      if (v50)
      {
        goto LABEL_32;
      }

      v17[2] = v51;
      if (v22 == v21)
      {
        goto LABEL_4;
      }
    }

LABEL_5:
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_30;
    }

    if (v22 >= *(v67 + 16))
    {
      goto LABEL_31;
    }

    v27 = v67 + ((*(v69 + 80) + 32) & ~*(v69 + 80)) + *(v69 + 72) * v22;
    v28 = v72;
    v29 = *(v72 + 48);
    v30 = v66;
    *v66 = v22;
    sub_1D26A26F8(v27, v30 + v29, type metadata accessor for Bubble);
    sub_1D22EC9BC(v30, v13, &qword_1EC6DF8A8, &qword_1D289BE80);
    v25 = 0;
    ++v22;
  }

  v55 = v60;
  sub_1D2872658();
  sub_1D2870F68();
  v56 = sub_1D2873CA8();
  v57 = sub_1D2878A18();
  if (os_log_type_enabled(v56, v57))
  {
    v58 = swift_slowAlloc();
    *v58 = 134218240;
    *(v58 + 4) = v31;
    *(v58 + 12) = 2048;
    *(v58 + 14) = v32;

    _os_log_impl(&dword_1D226E000, v56, v57, "didUpdateAttractors - index (%ld) >= colors.count (%ld)", v58, 0x16u);
    MEMORY[0x1D38A3520](v58, -1, -1);
  }

  else
  {
  }

  (*(v61 + 8))(v55, v62);
  sub_1D26A21E8(v76, type metadata accessor for Bubble);
}

void sub_1D269FA74(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D0, &qword_1D288C910);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v17 - v4;
  v6 = type metadata accessor for Bubble(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    sub_1D2870F68();
    v14 = 0;
    while (v12)
    {
      v15 = v14;
LABEL_10:
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      sub_1D26A26F8(*(a1 + 48) + *(v7 + 72) * (v16 | (v15 << 6)), v9, type metadata accessor for Bubble);
      sub_1D23B6B38(v9, v5);
      sub_1D26A21E8(v9, type metadata accessor for Bubble);
      sub_1D22BD238(v5, &qword_1EC6DC4D0, &qword_1D288C910);
    }

    while (1)
    {
      v15 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v15 >= v13)
      {

        return;
      }

      v12 = *(a1 + 56 + 8 * v15);
      ++v14;
      if (v12)
      {
        v14 = v15;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

unint64_t *sub_1D269FC7C(unint64_t *a1, unint64_t *a2)
{
  v90 = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D0, &qword_1D288C910);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v68 - v8;
  v81 = type metadata accessor for Bubble(0);
  v10 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v12 = &v68 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v84 = &v68 - v14;
  MEMORY[0x1EEE9AC00](v15);
  v80 = &v68 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v82 = (&v68 - v18);
  if (!a2[2])
  {

    return MEMORY[0x1E69E7CD0];
  }

  v70 = v6;
  v20 = (a1 + 7);
  v19 = a1[7];
  v21 = -1 << *(a1 + 32);
  v79 = ~v21;
  if (-v21 < 64)
  {
    v22 = ~(-1 << -v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v19;
  v71 = (63 - v21) >> 6;
  v78 = (v10 + 56);
  v77 = (v10 + 48);
  v83 = a2 + 7;
  sub_1D2870F68();
  v25 = 0;
  v74 = a1;
  v75 = a1 + 7;
  v68 = v9;
  for (i = v10; ; v10 = i)
  {
    v26 = v23;
    v27 = v25;
    v76 = v23;
    if (v23)
    {
LABEL_15:
      v23 = (v26 - 1) & v26;
      sub_1D26A26F8(a1[6] + *(v10 + 72) * (__clz(__rbit64(v26)) | (v27 << 6)), v9, type metadata accessor for Bubble);
      v31 = 0;
      v29 = v27;
    }

    else
    {
      v28 = v71 <= (v25 + 1) ? v25 + 1 : v71;
      v29 = v28 - 1;
      v30 = v25;
      while (1)
      {
        v27 = v30 + 1;
        if (__OFADD__(v30, 1))
        {
          goto LABEL_57;
        }

        if (v27 >= v71)
        {
          break;
        }

        v26 = *(v20 + 8 * v27);
        ++v30;
        if (v26)
        {
          goto LABEL_15;
        }
      }

      v23 = 0;
      v31 = 1;
    }

    v32 = v81;
    v73 = *v78;
    v73(v9, v31, 1, v81);
    v85 = a1;
    v86 = v20;
    v87 = v79;
    v88 = v29;
    v89 = v23;
    v72 = *v77;
    if (v72(v9, 1, v32) == 1)
    {
      sub_1D22BD238(v9, &qword_1EC6DC4D0, &qword_1D288C910);
      v63 = a1;
      goto LABEL_52;
    }

    sub_1D26A2760(v9, v82, type metadata accessor for Bubble);
    sub_1D28797D8();
    sub_1D2846EE0();
    sub_1D2877F38();

    v33 = sub_1D2879828();
    v34 = -1 << *(a2 + 32);
    v25 = v33 & ~v34;
    v27 = v25 >> 6;
    v20 = 1 << v25;
    if (((1 << v25) & v83[v25 >> 6]) != 0)
    {
      break;
    }

LABEL_6:
    sub_1D26A21E8(v82, type metadata accessor for Bubble);
    v25 = v29;
    a1 = v74;
    v20 = v75;
    v9 = v68;
  }

  v76 = ~v34;
  v10 = *(i + 72);
  a1 = a2;
  v35 = a2[6] + v10 * v25;
  v36 = v80;
  sub_1D26A26F8(v35, v80, type metadata accessor for Bubble);
  v37 = sub_1D2849278(v36, v82);
  sub_1D26A21E8(v36, type metadata accessor for Bubble);
  if ((v37 & 1) == 0)
  {
    do
    {
      v25 = (v25 + 1) & v76;
      v27 = v25 >> 6;
      v20 = 1 << v25;
      a2 = a1;
      if (((1 << v25) & v83[v25 >> 6]) == 0)
      {
        goto LABEL_6;
      }

      v38 = v80;
      sub_1D26A26F8(a1[6] + v10 * v25, v80, type metadata accessor for Bubble);
      v39 = sub_1D2849278(v38, v82);
      sub_1D26A21E8(v38, type metadata accessor for Bubble);
    }

    while ((v39 & 1) == 0);
  }

  v40 = sub_1D26A21E8(v82, type metadata accessor for Bubble);
  a2 = a1;
  v41 = *(a1 + 32);
  i = ((1 << v41) + 63) >> 6;
  v24 = 8 * i;
  v42 = v75;
  if ((v41 & 0x3Fu) > 0xD)
  {
    goto LABEL_58;
  }

  while (2)
  {
    v76 = &v68;
    MEMORY[0x1EEE9AC00](v40);
    v44 = &v68 - ((v43 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v44, v83, v43);
    v45 = *&v44[8 * v27] & ~v20;
    v46 = a2[2];
    v82 = v44;
    *&v44[8 * v27] = v45;
    v47 = v46 - 1;
    v25 = v74;
    v27 = v70;
    v48 = v71;
LABEL_25:
    v80 = v47;
    while (v23)
    {
      v49 = v29;
LABEL_37:
      v52 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      sub_1D26A26F8(*(v25 + 48) + (v52 | (v49 << 6)) * v10, v27, type metadata accessor for Bubble);
      v53 = 0;
LABEL_38:
      v54 = v81;
      v73(v27, v53, 1, v81);
      v85 = v25;
      v86 = v42;
      v87 = v79;
      v88 = v29;
      v89 = v23;
      if (v72(v27, 1, v54) == 1)
      {
        sub_1D22BD238(v27, &qword_1EC6DC4D0, &qword_1D288C910);
        a2 = sub_1D26A0BBC(v82, i, v80, a2);
        goto LABEL_51;
      }

      sub_1D26A2760(v27, v84, type metadata accessor for Bubble);
      sub_1D28797D8();
      sub_1D2846EE0();
      sub_1D2877F38();

      v55 = sub_1D2879828();
      v56 = -1 << *(a2 + 32);
      v57 = v55 & ~v56;
      v58 = v57 >> 6;
      v20 = 1 << v57;
      if (((1 << v57) & v83[v57 >> 6]) == 0)
      {
        goto LABEL_26;
      }

      sub_1D26A26F8(a1[6] + v57 * v10, v12, type metadata accessor for Bubble);
      v59 = sub_1D2849278(v12, v84);
      sub_1D26A21E8(v12, type metadata accessor for Bubble);
      if ((v59 & 1) == 0)
      {
        v60 = ~v56;
        while (1)
        {
          v57 = (v57 + 1) & v60;
          v58 = v57 >> 6;
          v20 = 1 << v57;
          if (((1 << v57) & v83[v57 >> 6]) == 0)
          {
            break;
          }

          sub_1D26A26F8(a1[6] + v57 * v10, v12, type metadata accessor for Bubble);
          v61 = sub_1D2849278(v12, v84);
          sub_1D26A21E8(v12, type metadata accessor for Bubble);
          if (v61)
          {
            goto LABEL_44;
          }
        }

LABEL_26:
        sub_1D26A21E8(v84, type metadata accessor for Bubble);
        a2 = a1;
        v25 = v74;
        v27 = v70;
        v42 = v75;
        v48 = v71;
        continue;
      }

LABEL_44:
      sub_1D26A21E8(v84, type metadata accessor for Bubble);
      v62 = v82[v58];
      v82[v58] = v62 & ~v20;
      a2 = a1;
      v25 = v74;
      v27 = v70;
      v42 = v75;
      v48 = v71;
      if ((v62 & v20) != 0)
      {
        v47 = v80 - 1;
        if (__OFSUB__(v80, 1))
        {
          __break(1u);
        }

        if (v80 == 1)
        {

          a2 = MEMORY[0x1E69E7CD0];
          goto LABEL_51;
        }

        goto LABEL_25;
      }
    }

    if (v48 <= (v29 + 1))
    {
      v50 = v29 + 1;
    }

    else
    {
      v50 = v48;
    }

    v51 = v50 - 1;
    while (1)
    {
      v49 = v29 + 1;
      if (__OFADD__(v29, 1))
      {
        break;
      }

      if (v49 >= v48)
      {
        v23 = 0;
        v53 = 1;
        v29 = v51;
        goto LABEL_38;
      }

      v23 = v42[v49];
      ++v29;
      if (v23)
      {
        v29 = v49;
        goto LABEL_37;
      }
    }

    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    v82 = a2;
    v65 = v24;
    sub_1D2870F78();
    if (swift_stdlib_isStackAllocationSafe())
    {
      a2 = v82;

      v42 = v75;
      continue;
    }

    break;
  }

  v66 = swift_slowAlloc();
  memcpy(v66, v83, v65);
  sub_1D26A071C(v66, i, v82, v25, &v85);
  a2 = v67;

  MEMORY[0x1D38A3520](v66, -1, -1);
LABEL_51:
  v63 = v85;
LABEL_52:
  sub_1D23EEDB0(v63);
  return a2;
}

void sub_1D26A071C(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v45 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D0, &qword_1D288C910);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v52 = &v44 - v10;
  v51 = type metadata accessor for Bubble(0);
  MEMORY[0x1EEE9AC00](v51);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v47 = a1;
  v48 = &v44 - v14;
  v15 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v16 = v15 - 1;
  v49 = (v17 + 48);
  v50 = (v17 + 56);
  v55 = a3;
  v53 = v17;
  v54 = a3 + 56;
  while (2)
  {
    v46 = v16;
    do
    {
      while (1)
      {
        v18 = *a5;
        v19 = a5[1];
        v21 = a5[2];
        v20 = a5[3];
        v22 = a5[4];
        if (!v22)
        {
          v24 = (v21 + 64) >> 6;
          if (v24 <= v20 + 1)
          {
            v25 = v20 + 1;
          }

          else
          {
            v25 = (v21 + 64) >> 6;
          }

          v26 = v25 - 1;
          while (1)
          {
            v23 = v20 + 1;
            if (__OFADD__(v20, 1))
            {
              break;
            }

            if (v23 >= v24)
            {
              v27 = 0;
              v29 = 1;
              v28 = v52;
              goto LABEL_14;
            }

            v22 = *(v19 + 8 * v23);
            ++v20;
            if (v22)
            {
              goto LABEL_13;
            }
          }

          __break(1u);
          goto LABEL_28;
        }

        v23 = a5[3];
LABEL_13:
        v27 = (v22 - 1) & v22;
        v28 = v52;
        sub_1D26A26F8(*(v18 + 48) + *(v53 + 72) * (__clz(__rbit64(v22)) | (v23 << 6)), v52, type metadata accessor for Bubble);
        v29 = 0;
        v26 = v23;
LABEL_14:
        v30 = v51;
        (*v50)(v28, v29, 1, v51);
        *a5 = v18;
        a5[1] = v19;
        a5[2] = v21;
        a5[3] = v26;
        a5[4] = v27;
        if ((*v49)(v28, 1, v30) == 1)
        {
          sub_1D22BD238(v28, &qword_1EC6DC4D0, &qword_1D288C910);
          v43 = v55;
          sub_1D2870F78();
          sub_1D26A0BBC(v47, v45, v46, v43);
          return;
        }

        v31 = v48;
        sub_1D26A2760(v28, v48, type metadata accessor for Bubble);
        v32 = v55;
        sub_1D28797D8();
        sub_1D2846EE0();
        sub_1D2877F38();

        v33 = sub_1D2879828();
        v34 = -1 << *(v32 + 32);
        v35 = v33 & ~v34;
        v36 = v35 >> 6;
        v37 = 1 << v35;
        if (((1 << v35) & *(v54 + 8 * (v35 >> 6))) != 0)
        {
          break;
        }

LABEL_3:
        sub_1D26A21E8(v31, type metadata accessor for Bubble);
      }

      v38 = *(v53 + 72);
      sub_1D26A26F8(*(v55 + 48) + v38 * v35, v12, type metadata accessor for Bubble);
      v39 = sub_1D2849278(v12, v31);
      sub_1D26A21E8(v12, type metadata accessor for Bubble);
      if ((v39 & 1) == 0)
      {
        v40 = ~v34;
        do
        {
          v35 = (v35 + 1) & v40;
          v36 = v35 >> 6;
          v37 = 1 << v35;
          if (((1 << v35) & *(v54 + 8 * (v35 >> 6))) == 0)
          {
            goto LABEL_3;
          }

          sub_1D26A26F8(*(v55 + 48) + v38 * v35, v12, type metadata accessor for Bubble);
          v41 = sub_1D2849278(v12, v31);
          sub_1D26A21E8(v12, type metadata accessor for Bubble);
        }

        while ((v41 & 1) == 0);
      }

      sub_1D26A21E8(v31, type metadata accessor for Bubble);
      v42 = v47[v36];
      v47[v36] = v42 & ~v37;
    }

    while ((v42 & v37) == 0);
    v16 = v46 - 1;
    if (__OFSUB__(v46, 1))
    {
LABEL_28:
      __break(1u);
      return;
    }

    if (v46 != 1)
    {
      continue;
    }

    break;
  }
}

uint64_t sub_1D26A0BBC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Bubble(0);
  v32 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DE678, &qword_1D28966A0);
  result = sub_1D2879118();
  v11 = result;
  if (a2 < 1)
  {
    v13 = 0;
  }

  else
  {
    v13 = *a1;
  }

  v14 = 0;
  v15 = result + 56;
  v31 = a4;
  while (v13)
  {
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
LABEL_16:
    v19 = *(a4 + 48);
    v20 = *(v32 + 72);
    sub_1D26A26F8(v19 + v20 * (v16 | (v14 << 6)), v10, type metadata accessor for Bubble);
    sub_1D28797D8();
    sub_1D2846EE0();
    sub_1D2877F38();

    result = sub_1D2879828();
    v21 = -1 << *(v11 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
    {
      v25 = 0;
      v26 = (63 - v21) >> 6;
      while (++v23 != v26 || (v25 & 1) == 0)
      {
        v27 = v23 == v26;
        if (v23 == v26)
        {
          v23 = 0;
        }

        v25 |= v27;
        v28 = *(v15 + 8 * v23);
        if (v28 != -1)
        {
          v24 = __clz(__rbit64(~v28)) + (v23 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v15 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    result = sub_1D26A2760(v10, *(v11 + 48) + v24 * v20, type metadata accessor for Bubble);
    ++*(v11 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v31;
    if (!a3)
    {
LABEL_28:

      return v11;
    }
  }

  v17 = v14;
  while (1)
  {
    v14 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v14 >= a2)
    {
      goto LABEL_28;
    }

    v18 = a1[v14];
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v13 = (v18 - 1) & v18;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1D26A0EDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotosPersonAsset(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v62 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = type metadata accessor for Bubble.BubbleType(0);
  MEMORY[0x1EEE9AC00](v69);
  v70 = (&v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v59 - v8);
  v10 = type metadata accessor for CuratedPrompt(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v61 = (&v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v60 = (&v59 - v13);
  v14 = type metadata accessor for Bubble(0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - v22;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF8B8, &qword_1D289BE90);
  MEMORY[0x1EEE9AC00](v68);
  v25 = &v59 - v24;
  v26 = *(a1 + 16);
  if (v26 != *(a2 + 16))
  {
    return 1;
  }

  if (v26)
  {
    v66 = v20;
    v67 = v23;
    v27 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v28 = a1 + v27;
    v64 = *(v15 + 72);
    v65 = v9;
    v29 = a2 + v27;
    v63 = v17;
    v30 = v67;
    do
    {
      sub_1D26A26F8(v28, v30, type metadata accessor for Bubble);
      v32 = *(v68 + 48);
      sub_1D26A2760(v30, v25, type metadata accessor for Bubble);
      sub_1D26A26F8(v29, &v25[v32], type metadata accessor for Bubble);
      sub_1D26A2760(v25, v20, type metadata accessor for Bubble);
      sub_1D26A2760(&v25[v32], v17, type metadata accessor for Bubble);
      sub_1D26A26F8(v20, v9, type metadata accessor for Bubble.BubbleType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if ((EnumCaseMultiPayload - 1) < 2)
      {
        v39 = v9;
        v40 = v60;
        sub_1D26A2760(v39, v60, type metadata accessor for CuratedPrompt);
        v42 = *v40;
        v41 = v40[1];
        sub_1D2870F68();
        sub_1D26A21E8(v40, type metadata accessor for CuratedPrompt);
        v71 = v42;
        v72 = v41;
        v36 = sub_1D28782E8();
        v35 = v43;
      }

      else if (EnumCaseMultiPayload == 9)
      {
        v36 = *v9;
        v35 = v9[1];
      }

      else
      {
        if (EnumCaseMultiPayload == 4)
        {
          v34 = v62;
          sub_1D26A2760(v9, v62, type metadata accessor for PhotosPersonAsset);
          v36 = *(v34 + 16);
          v35 = *(v34 + 24);
          sub_1D2870F68();
          v37 = type metadata accessor for PhotosPersonAsset;
          v38 = v34;
        }

        else
        {
          v36 = sub_1D2846EE0();
          v35 = v44;
          v37 = type metadata accessor for Bubble.BubbleType;
          v38 = v9;
        }

        sub_1D26A21E8(v38, v37);
      }

      sub_1D26A26F8(v17, v70, type metadata accessor for Bubble.BubbleType);
      v45 = swift_getEnumCaseMultiPayload();
      if ((v45 - 1) < 2)
      {
        v47 = v61;
        sub_1D26A2760(v70, v61, type metadata accessor for CuratedPrompt);
        v49 = *v47;
        v48 = v47[1];
        sub_1D2870F68();
        v50 = v47;
        v17 = v63;
        sub_1D26A21E8(v50, type metadata accessor for CuratedPrompt);
        v71 = v49;
        v72 = v48;
        v51 = sub_1D28782E8();
        v46 = v52;
        if (v36 != v51)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v45 == 4)
        {
          v53 = v62;
          sub_1D26A2760(v70, v62, type metadata accessor for PhotosPersonAsset);
          v54 = *(v53 + 16);
          v46 = *(v53 + 24);
          sub_1D2870F68();
          v55 = type metadata accessor for PhotosPersonAsset;
          v56 = v53;
          v17 = v63;
        }

        else
        {
          if (v45 == 9)
          {
            v46 = v70[1];
            if (v36 != *v70)
            {
              goto LABEL_4;
            }

            goto LABEL_24;
          }

          v54 = sub_1D2846EE0();
          v46 = v57;
          v55 = type metadata accessor for Bubble.BubbleType;
          v56 = v70;
        }

        sub_1D26A21E8(v56, v55);
        if (v36 != v54)
        {
          goto LABEL_4;
        }
      }

LABEL_24:
      if (v35 != v46)
      {
LABEL_4:
        v31 = sub_1D2879618();

        sub_1D26A21E8(v17, type metadata accessor for Bubble);
        v20 = v66;
        sub_1D26A21E8(v66, type metadata accessor for Bubble);
        if ((v31 & 1) == 0)
        {
          return 1;
        }

        goto LABEL_5;
      }

      sub_1D26A21E8(v17, type metadata accessor for Bubble);
      v20 = v66;
      sub_1D26A21E8(v66, type metadata accessor for Bubble);
LABEL_5:
      v9 = v65;
      v29 += v64;
      v28 += v64;
      --v26;
    }

    while (v26);
  }

  return 0;
}

void sub_1D26A15A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(char *, uint64_t, uint64_t))
{
  v20 = a4;
  v19 = a3;
  v7 = type metadata accessor for Bubble(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 1 << *(a1 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(a1 + 56);
  v14 = (v11 + 63) >> 6;
  sub_1D2870F68();
  v15 = 0;
  while (v13)
  {
    v16 = v15;
LABEL_10:
    v17 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    sub_1D26A26F8(*(a1 + 48) + *(v8 + 72) * (v17 | (v16 << 6)), v10, type metadata accessor for Bubble);
    v20(v10, a2, v19);
    sub_1D26A21E8(v10, type metadata accessor for Bubble);
    if (v4)
    {
LABEL_11:

      return;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v16 >= v14)
    {
      goto LABEL_11;
    }

    v13 = *(a1 + 56 + 8 * v16);
    ++v15;
    if (v13)
    {
      v15 = v16;
      goto LABEL_10;
    }
  }

  __break(1u);
}

double sub_1D26A175C()
{
  result = *(v0 + 24);
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__transition) = result;
  return result;
}

void sub_1D26A1774(uint64_t a1, uint64_t a2)
{
  v67 = a1;
  v3 = type metadata accessor for Bubble(0);
  v63 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v64 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v56 - v6;
  MEMORY[0x1EEE9AC00](v7);
  v60 = &v56 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v59 = &v56 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v56 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF8A8, &qword_1D289BE80);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = (&v56 - v16);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF8B0, &qword_1D289BE88);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v56 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v21);
  v24 = (&v56 - v23);
  v25 = 0;
  v62 = a2;
  v26 = *(a2 + 16);
  v27 = (v15 + 56);
  v28 = (v15 + 48);
  v66 = MEMORY[0x1E69E7CC0];
  v61 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v25 == v26)
    {
      v29 = 1;
      v25 = v26;
    }

    else
    {
      if (v25 >= v26)
      {
        __break(1u);
LABEL_45:
        __break(1u);
LABEL_46:
        __break(1u);
LABEL_47:
        __break(1u);
        return;
      }

      if (__OFADD__(v25, 1))
      {
        goto LABEL_45;
      }

      v30 = v62 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v25;
      v31 = *(v14 + 48);
      *v17 = v25;
      sub_1D26A26F8(v30, v17 + v31, type metadata accessor for Bubble);
      sub_1D22EC9BC(v17, v20, &qword_1EC6DF8A8, &qword_1D289BE80);
      v29 = 0;
      ++v25;
    }

    (*v27)(v20, v29, 1, v14, v22);
    sub_1D22EC9BC(v20, v24, &qword_1EC6DF8B0, &qword_1D289BE88);
    if ((*v28)(v24, 1, v14) == 1)
    {
      break;
    }

    v32 = *v24;
    sub_1D26A2760(v24 + *(v14 + 48), v13, type metadata accessor for Bubble);
    if (sub_1D2849278(v13, v67))
    {
      sub_1D26A21E8(v13, type metadata accessor for Bubble);
    }

    else
    {
      if (v32)
      {
        sub_1D26A26F8(v13, v60, type metadata accessor for Bubble);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1D27CCBF4(0, v66[2] + 1, 1, v66);
        }

        v33 = v66;
        v35 = v66[2];
        v37 = v66[3];
        v58 = v35 + 1;
        if (v35 < v37 >> 1)
        {
          v36 = v60;
          goto LABEL_19;
        }

        v40 = sub_1D27CCBF4((v37 > 1), v35 + 1, 1, v66);
        v56 = v60;
        v57 = v40;
        v66 = v40;
      }

      else
      {
        sub_1D26A26F8(v13, v59, type metadata accessor for Bubble);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = sub_1D27CCBF4(0, v61[2] + 1, 1, v61);
        }

        v33 = v61;
        v35 = v61[2];
        v34 = v61[3];
        v58 = v35 + 1;
        if (v35 < v34 >> 1)
        {
          v36 = v59;
LABEL_19:
          v56 = v36;
          v57 = v33;
          goto LABEL_20;
        }

        v39 = sub_1D27CCBF4((v34 > 1), v35 + 1, 1, v61);
        v56 = v59;
        v57 = v39;
        v61 = v39;
      }

LABEL_20:
      sub_1D26A21E8(v13, type metadata accessor for Bubble);
      v38 = v57;
      v57[2] = v58;
      sub_1D26A2760(v56, v38 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v35, type metadata accessor for Bubble);
    }
  }

  v41 = v61[2];
  v42 = v66;
  v43 = v66[2];
  if (v43 <= v41)
  {
    v44 = v61[2];
  }

  else
  {
    v44 = v66[2];
  }

  if (v44)
  {
    v45 = 0;
    v46 = MEMORY[0x1E69E7CC0];
    v47 = v63;
    do
    {
      if (v45 < v41)
      {
        if (v45 >= v61[2])
        {
          goto LABEL_46;
        }

        v48 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v49 = *(v47 + 72);
        sub_1D26A26F8(v61 + v48 + v49 * v45, v65, type metadata accessor for Bubble);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1D27CCBF4(0, v46[2] + 1, 1, v46);
        }

        v51 = v46[2];
        v50 = v46[3];
        if (v51 >= v50 >> 1)
        {
          v46 = sub_1D27CCBF4((v50 > 1), v51 + 1, 1, v46);
        }

        v46[2] = v51 + 1;
        sub_1D26A2760(v65, v46 + v48 + v51 * v49, type metadata accessor for Bubble);
        v42 = v66;
      }

      if (v45 < v43)
      {
        if (v45 >= v42[2])
        {
          goto LABEL_47;
        }

        v52 = (*(v47 + 80) + 32) & ~*(v47 + 80);
        v53 = *(v47 + 72);
        sub_1D26A26F8(v42 + v52 + v53 * v45, v64, type metadata accessor for Bubble);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v46 = sub_1D27CCBF4(0, v46[2] + 1, 1, v46);
        }

        v55 = v46[2];
        v54 = v46[3];
        if (v55 >= v54 >> 1)
        {
          v46 = sub_1D27CCBF4((v54 > 1), v55 + 1, 1, v46);
        }

        v46[2] = v55 + 1;
        sub_1D26A2760(v64, v46 + v52 + v55 * v53, type metadata accessor for Bubble);
        v42 = v66;
      }

      ++v45;
    }

    while (v44 != v45);
  }
}

uint64_t sub_1D26A1EA8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DC4D0, &qword_1D288C910);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - v5;
  v7 = type metadata accessor for Bubble(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D2870F68();
  v12 = sub_1D233C800(v11);

  v13 = sub_1D2870F68();
  v14 = sub_1D233C800(v13);

  v15 = v14[2];
  v16 = v12[2];
  v17 = v15 - v16;
  if (v16 <= v15 >> 3)
  {
    v22 = v14;
    sub_1D269FA74(v12);

    v18 = v22;
    if (v17 != 1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v18 = sub_1D269FC7C(v12, v14);

    if (v17 != 1)
    {
LABEL_3:

      goto LABEL_7;
    }
  }

  sub_1D24372A0(v18, v6);

  if ((*(v8 + 48))(v6, 1, v7) != 1)
  {
    sub_1D26A2760(v6, v10, type metadata accessor for Bubble);
    sub_1D26A1774(v10, a1);
    a2 = v19;
    sub_1D26A21E8(v10, type metadata accessor for Bubble);
    return a2;
  }

  sub_1D22BD238(v6, &qword_1EC6DC4D0, &qword_1D288C910);
LABEL_7:
  sub_1D2870F68();
  return a2;
}

void sub_1D26A2168()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__shouldAnimateAddedBubbles);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1D2870F78();
}

uint64_t sub_1D26A21B4@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D26A21E8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D26A2248()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__loadingImageID);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1D2870F68();

  sub_1D2698A94();
}

uint64_t sub_1D26A22A4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PlaygroundImage(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6DE5A0, &unk_1D287F0E0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6D9AA0, &qword_1D287F4E0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v20 - v12;
  v15 = *(v14 + 56);
  sub_1D22BD1D0(a1, &v20 - v12, &unk_1EC6DE5A0, &unk_1D287F0E0);
  sub_1D22BD1D0(a2, &v13[v15], &unk_1EC6DE5A0, &unk_1D287F0E0);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D22BD1D0(v13, v10, &unk_1EC6DE5A0, &unk_1D287F0E0);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      sub_1D26A2760(&v13[v15], v7, type metadata accessor for PlaygroundImage);
      v18 = _s23ImagePlaygroundInternal0A10GenerationV07PreviewA0V2eeoiySbAE_AEtFZ_0();
      sub_1D26A21E8(v7, type metadata accessor for PlaygroundImage);
      sub_1D26A21E8(v10, type metadata accessor for PlaygroundImage);
      sub_1D22BD238(v13, &unk_1EC6DE5A0, &unk_1D287F0E0);
      v17 = v18 ^ 1;
      return v17 & 1;
    }

    sub_1D26A21E8(v10, type metadata accessor for PlaygroundImage);
    goto LABEL_6;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1D22BD238(v13, &qword_1EC6D9AA0, &qword_1D287F4E0);
    v17 = 1;
    return v17 & 1;
  }

  sub_1D22BD238(v13, &unk_1EC6DE5A0, &unk_1D287F0E0);
  v17 = 0;
  return v17 & 1;
}

uint64_t keypath_set_14Tm_0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = *a1;
  v6 = a1[1];
  sub_1D2870F68();
  return a5(v7, v6);
}

void sub_1D26A25EC()
{
  v1 = v0[4];
  v2 = (v0[2] + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__highlightedBubbleID);
  *v2 = v0[3];
  v2[1] = v1;
  sub_1D2870F68();
}

void sub_1D26A266C()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC23ImagePlaygroundInternal24FloatingBubblesViewModel__attractorColors) = *(v0 + 24);
  sub_1D2870F68();
}

uint64_t sub_1D26A26F8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26A2760(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D26A27C8(uint64_t a1)
{
  v4 = *(type metadata accessor for Prompt(0) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D22BDFF8;

  return sub_1D269E380(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D26A28C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D26A2908(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D22BC8FC;

  return sub_1D27FA39C(a1, v4, v5, v6, v7, v8, v9, v10);
}

double sub_1D26A2A44(uint64_t a1)
{
  sub_1D2877F38();

  return result;
}

unint64_t sub_1D26A2B70@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D26A3714(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D26A2BA0(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 <= 2)
  {
    v8 = 0xE200000000000000;
    v9 = 0xED00005F454C4241;
    v10 = 0x5A494C41434F4C5FLL;
    if (v2 != 1)
    {
      v10 = 0x4E79616C70736964;
      v9 = 0xEB00000000656D61;
    }

    v11 = v2 == 0;
    if (*v1)
    {
      v12 = v10;
    }

    else
    {
      v12 = 25705;
    }

    if (!v11)
    {
      v8 = v9;
    }

    *a1 = v12;
    a1[1] = v8;
  }

  else
  {
    v3 = 0x80000001D28AEEC0;
    v4 = 0xD000000000000023;
    if (v2 == 5)
    {
      v4 = 0xD000000000000017;
    }

    else
    {
      v3 = 0x80000001D28AEEE0;
    }

    v5 = 0xD000000000000014;
    v6 = 0x80000001D28AEE80;
    if (v2 != 3)
    {
      v5 = 0xD000000000000016;
      v6 = 0x80000001D28AEEA0;
    }

    if (*v1 <= 4u)
    {
      v7 = v5;
    }

    else
    {
      v7 = v4;
    }

    if (*v1 <= 4u)
    {
      v3 = v6;
    }

    *a1 = v7;
    a1[1] = v3;
  }
}

uint64_t sub_1D26A2C98()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x5A494C41434F4C5FLL;
    if (v1 != 1)
    {
      v5 = 0x4E79616C70736964;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 25705;
    }
  }

  else
  {
    v2 = 0xD000000000000023;
    if (v1 == 5)
    {
      v2 = 0xD000000000000017;
    }

    v3 = 0xD000000000000014;
    if (v1 != 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1D26A2D88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1D26A3714(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1D26A2DBC(uint64_t a1)
{
  v2 = sub_1D26A3534();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D26A2DF8(uint64_t a1)
{
  v2 = sub_1D26A3534();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t *sub_1D26A2E34(void *a1, void *a2)
{
  v4 = v2;
  v23[1] = *v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DF8C8, &unk_1D289C0D0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - v9;
  v11 = a1[3];
  v24 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1D26A3534();
  sub_1D2879868();
  if (!v3)
  {
    v12 = v8;
    *(v4 + 72) = a2;
    LOBYTE(v26) = 0;
    v13 = a2;
    *(v4 + 16) = sub_1D2879508();
    LOBYTE(v26) = 3;
    *(v4 + 56) = sub_1D2879508();
    LOBYTE(v26) = 4;
    *(v4 + 64) = sub_1D28794F8() & 1;
    LOBYTE(v26) = 5;
    *(v4 + 65) = sub_1D28794F8() & 1;
    LOBYTE(v26) = 6;
    *(v4 + 66) = sub_1D28794F8() & 1;
    LOBYTE(v26) = 2;
    *(v4 + 40) = sub_1D28794E8();
    *(v4 + 48) = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6DA2D0, &unk_1D2882750);
    v25 = 1;
    sub_1D25A3CD4();
    sub_1D2879528();
    v16 = v26;
    if (*(v26 + 16))
    {
      v17 = sub_1D25D0410(0xD000000000000014, 0x80000001D28BB640);
      if (v18)
      {
        v19 = (*(v16 + 56) + 16 * v17);
        v20 = v7;
        v21 = *v19;
        v22 = v19[1];
        sub_1D2870F68();

        (*(v12 + 8))(v10, v20);
        *(v4 + 24) = v21;
        *(v4 + 32) = v22;
        goto LABEL_4;
      }
    }

    LOBYTE(v26) = 1;
    sub_1D28791F8();
    swift_allocError();
    sub_1D26A3588();
    sub_1D28791D8();
    swift_willThrow();

    (*(v8 + 8))(v10, v7);

    a2 = *(v4 + 72);
  }

  swift_deallocPartialClassInstance();
LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v24);
  return v4;
}

id sub_1D26A3268()
{
  if (qword_1ED89E0E8 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED8B0058;
  type metadata accessor for CuratedPromptCategory();
  v0 = swift_allocObject();
  *(v0 + 32) = 0xEF7372656B636974;
  *(v0 + 40) = 0x5320746E65636552;
  *(v0 + 16) = xmmword_1D289BFD0;
  *(v0 + 48) = 0xEF7372656B636974;
  *(v0 + 56) = 0;
  *(v0 + 64) = 256;
  *(v0 + 66) = 0;
  *(v0 + 72) = v2;
  qword_1ED8B0138 = v0;

  return v2;
}

uint64_t sub_1D26A3330()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D26A339C()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](*(v1 + 16));
  return sub_1D2879828();
}

uint64_t sub_1D26A3414()
{
  v1 = *v0;
  sub_1D28797D8();
  MEMORY[0x1D38A2260](*(v1 + 16));
  return sub_1D2879828();
}

uint64_t *sub_1D26A3458@<X0>(void *a1@<X0>, void **a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = *a2;
  v7 = swift_allocObject();
  result = sub_1D26A2E34(a1, v6);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

unint64_t sub_1D26A34E0()
{
  result = qword_1EC6DF8C0;
  if (!qword_1EC6DF8C0)
  {
    type metadata accessor for CuratedPromptCategory();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF8C0);
  }

  return result;
}

unint64_t sub_1D26A3534()
{
  result = qword_1ED8A1500;
  if (!qword_1ED8A1500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A1500);
  }

  return result;
}

unint64_t sub_1D26A3588()
{
  result = qword_1EC6DF8D0;
  if (!qword_1EC6DF8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6DF8C8, &unk_1D289C0D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF8D0);
  }

  return result;
}

unint64_t sub_1D26A3610()
{
  result = qword_1EC6DF8D8;
  if (!qword_1EC6DF8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6DF8D8);
  }

  return result;
}

unint64_t sub_1D26A3668()
{
  result = qword_1ED8A14F0;
  if (!qword_1ED8A14F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED8A14F0);
  }

  return result;
}