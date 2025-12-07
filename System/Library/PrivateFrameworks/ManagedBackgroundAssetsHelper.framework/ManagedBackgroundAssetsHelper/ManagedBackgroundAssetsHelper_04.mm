char *sub_1D303DF3C(uint64_t a1)
{
  v3 = v2;
  v4 = v1;
  v53 = a1;
  v50 = sub_1D30E881C();
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v47 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v41 - v7;
  v51 = sub_1D30E88CC();
  v9 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v45 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D30E8D9C();
  v52 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v46 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v41 - v14;
  swift_defaultActor_initialize();
  *(v1 + 120) = sub_1D30346BC(MEMORY[0x1E69E7CC0]);
  if (qword_1EE3139A8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D30E8B3C();
  __swift_project_value_buffer(v16, qword_1EE3139B0);
  v17 = sub_1D30E928C();

  v18 = sub_1D30E8B1C();

  v19 = os_log_type_enabled(v18, v17);
  v49 = v9;
  if (v19)
  {
    v20 = swift_slowAlloc();
    v44 = v11;
    v21 = v20;
    v42 = swift_slowAlloc();
    v43 = v8;
    v55 = v42;
    *v21 = 136446210;
    v54 = v53;
    type metadata accessor for ContainerManager();

    v22 = sub_1D30E909C();
    v24 = sub_1D2FFEA04(v22, v23, &v55);

    *(v21 + 4) = v24;
    v3 = v2;
    _os_log_impl(&dword_1D2FD9000, v18, v17, "Init container manager: %{public}s", v21, 0xCu);
    v25 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    v8 = v43;
    MEMORY[0x1D38B3760](v25, -1, -1);
    v26 = v21;
    v11 = v44;
    MEMORY[0x1D38B3760](v26, -1, -1);
  }

  *(v4 + 112) = v53;
  v27 = qword_1EE3139D0;

  if (v27 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v11, qword_1EE3139D8);
  sub_1D3003CF4(v28, 0, v15);
  if (!v3)
  {
    v29 = *(v52 + 16);
    v30 = v46;
    v29(v46, v15, v11);
    v31 = v47;
    (*(v48 + 104))(v47, *MEMORY[0x1E6968F68], v50);
    sub_1D3040AB4(v30, v31, v8);
    v32 = v15;
    v33 = v49;
    if ((*(v49 + 48))(v8, 1, v51) != 1)
    {
      (*(v52 + 8))(v32, v11);

      v37 = *(v33 + 32);
      v38 = v45;
      v39 = v8;
      v40 = v51;
      v37(v45, v39, v51);
      v37((v4 + OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13StorefrontMap_fileURL), v38, v40);
      return v4;
    }

    sub_1D2FF14DC(v8, &qword_1EC7493C0, &qword_1D30EF500);
    type metadata accessor for HelperError(0);
    v34 = v52;
    sub_1D30408C0(&qword_1EE313E48, type metadata accessor for HelperError, &unk_1D30EF3D8);
    swift_allocError();
    v29(v35, v32, v11);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    (*(v34 + 8))(v32, v11);
  }

  type metadata accessor for StorefrontMap(0);
  swift_defaultActor_destroy();

  swift_deallocPartialClassInstance();
  return v4;
}

uint64_t sub_1D303E57C(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D303E59C, v1, 0);
}

uint64_t sub_1D303E59C()
{
  v37 = v0;
  if (qword_1EE3139A8 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  v0[10] = __swift_project_value_buffer(v1, qword_1EE3139B0);
  v2 = sub_1D30E8B1C();
  v3 = sub_1D30E92BC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[8];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1D2FD9000, v2, v3, "Looking up the country code for the storefront “%llu” in memory…", v5, 0xCu);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = v0[9];

  swift_beginAccess();
  v7 = *(v6 + 120);
  if (*(v7 + 16))
  {
    v8 = sub_1D3032654(v0[8]);
    if (v9)
    {
      v10 = (*(v7 + 56) + 16 * v8);
      v11 = *v10;
      v12 = v10[1];
      swift_bridgeObjectRetain_n();
      v13 = sub_1D30E8B1C();
      v14 = sub_1D30E92BC();

      if (os_log_type_enabled(v13, v14))
      {
        v15 = v0[8];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v36 = v17;
        *v16 = 136446466;
        *(v16 + 4) = sub_1D2FFEA04(v11, v12, &v36);
        *(v16 + 12) = 2048;
        *(v16 + 14) = v15;
        v18 = "The country code “%{public}s” for the storefront “%llu” was found in memory.";
LABEL_15:
        _os_log_impl(&dword_1D2FD9000, v13, v14, v18, v16, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v17);
        MEMORY[0x1D38B3760](v17, -1, -1);
        MEMORY[0x1D38B3760](v16, -1, -1);
        goto LABEL_16;
      }

      goto LABEL_16;
    }
  }

  v19 = sub_1D30E8B1C();
  v20 = sub_1D30E92BC();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = v0[8];
    v22 = swift_slowAlloc();
    *v22 = 134217984;
    *(v22 + 4) = v21;
    _os_log_impl(&dword_1D2FD9000, v19, v20, "The country code for the storefront “%llu” wasn’t found in memory; checking the file system…", v22, 0xCu);
    MEMORY[0x1D38B3760](v22, -1, -1);
  }

  sub_1D303ED4C();
  v23 = *(v6 + 120);
  if (*(v23 + 16))
  {
    v24 = sub_1D3032654(v0[8]);
    if (v25)
    {
      v26 = (*(v23 + 56) + 16 * v24);
      v11 = *v26;
      v12 = v26[1];
      swift_bridgeObjectRetain_n();
      v13 = sub_1D30E8B1C();
      v14 = sub_1D30E92BC();

      if (os_log_type_enabled(v13, v14))
      {
        v27 = v0[8];
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        v36 = v17;
        *v16 = 136446466;
        *(v16 + 4) = sub_1D2FFEA04(v11, v12, &v36);
        *(v16 + 12) = 2048;
        *(v16 + 14) = v27;
        v18 = "The country code “%{public}s” for the storefront “%llu” was found in the file system.";
        goto LABEL_15;
      }

LABEL_16:

      v28 = v0[1];

      return v28(v11, v12);
    }
  }

  v30 = sub_1D30E8B1C();
  v31 = sub_1D30E92BC();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = v0[8];
    v33 = swift_slowAlloc();
    *v33 = 134217984;
    *(v33 + 4) = v32;
    _os_log_impl(&dword_1D2FD9000, v30, v31, "The country code for the storefront “%llu” wasn’t found after loading the storefront map from the file system; checking the bag…", v33, 0xCu);
    MEMORY[0x1D38B3760](v33, -1, -1);
  }

  v34 = swift_task_alloc();
  v0[11] = v34;
  *v34 = v0;
  v34[1] = sub_1D303EA40;
  v35 = v0[8];

  return sub_1D3040238(v35);
}

uint64_t sub_1D303EA40(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[12] = a1;
  v4[13] = a2;

  if (v2)
  {
    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v4[9];

    return MEMORY[0x1EEE6DFA0](sub_1D303EB88, v8, 0);
  }
}

uint64_t sub_1D303EB88()
{
  v18 = v0;

  v1 = sub_1D30E8B1C();
  v2 = sub_1D30E92BC();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[12];
    v3 = v0[13];
    v5 = v0[8];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136446466;
    *(v6 + 4) = sub_1D2FFEA04(v4, v3, &v17);
    *(v6 + 12) = 2048;
    *(v6 + 14) = v5;
    _os_log_impl(&dword_1D2FD9000, v1, v2, "The country code “%{public}s” for the storefront “%llu” was found in the bag.", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D38B3760](v7, -1, -1);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  v9 = v0[12];
  v8 = v0[13];
  v11 = v0[8];
  v10 = v0[9];
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *(v10 + 120);
  *(v10 + 120) = 0x8000000000000000;
  sub_1D303377C(v9, v8, v11, isUniquelyReferenced_nonNull_native);
  *(v10 + 120) = v17;
  swift_endAccess();
  sub_1D303DCA4();
  v13 = v0[12];
  v14 = v0[13];
  v15 = v0[1];

  return v15(v13, v14);
}

void sub_1D303ED4C()
{
  v1 = v0;
  v60[3] = *MEMORY[0x1E69E9840];
  if (qword_1EE3139A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1D30E8B3C();
  __swift_project_value_buffer(v2, qword_1EE3139B0);
  v3 = sub_1D30E928C();
  v4 = sub_1D30E8B1C();
  if (os_log_type_enabled(v4, v3))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1D2FD9000, v4, v3, "Load", v5, 2u);
    MEMORY[0x1D38B3760](v5, -1, -1);
  }

  v6 = sub_1D30E8B1C();
  v7 = sub_1D30E92BC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v60[0] = v9;
    *v8 = 136446210;
    sub_1D30E88CC();
    sub_1D30408C0(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v10 = sub_1D30E977C();
    v12 = sub_1D2FFEA04(v10, v11, v60);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D2FD9000, v6, v7, "Loading the storefront map at “%{public}s”…", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1D38B3760](v9, -1, -1);
    MEMORY[0x1D38B3760](v8, -1, -1);
  }

  v59 = 1;
  v13 = objc_opt_self();
  v14 = [v13 defaultManager];
  sub_1D30E888C();
  v15 = sub_1D30E906C();

  v16 = [v14 fileExistsAtPath:v15 isDirectory:&v59];

  if (!v16)
  {

    v29 = sub_1D30E8B1C();
    v30 = sub_1D30E92BC();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v60[0] = v32;
      *v31 = 136446210;
      sub_1D30E88CC();
      sub_1D30408C0(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v33 = sub_1D30E977C();
      v35 = sub_1D2FFEA04(v33, v34, v60);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_1D2FD9000, v29, v30, "The storefront map doesn’t yet exist at “%{public}s”.", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1D38B3760](v32, -1, -1);
      MEMORY[0x1D38B3760](v31, -1, -1);
    }

    goto LABEL_17;
  }

  if (v59 == 1)
  {
    v17 = sub_1D30E92AC();

    v18 = sub_1D30E8B1C();

    if (os_log_type_enabled(v18, v17))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v60[0] = v20;
      *v19 = 136446210;
      sub_1D30E88CC();
      sub_1D30408C0(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v21 = sub_1D30E977C();
      v23 = sub_1D2FFEA04(v21, v22, v60);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1D2FD9000, v18, v17, "The item at “%{public}s” is unexpectedly a directory; removing it…", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D38B3760](v20, -1, -1);
      MEMORY[0x1D38B3760](v19, -1, -1);
    }

    v24 = [v13 defaultManager];
    v25 = sub_1D30E882C();
    v60[0] = 0;
    v26 = [v24 removeItemAtURL:v25 error:v60];

    v27 = v60[0];
    if (v26)
    {

      v28 = v27;
      return;
    }

    v43 = v60[0];
    v44 = sub_1D30E87DC();

    swift_willThrow();
    v45 = sub_1D30E929C();

    v46 = v44;
    v29 = sub_1D30E8B1C();

    if (!os_log_type_enabled(v29, v45))
    {

      return;
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v60[0] = v49;
    *v47 = 136446466;
    sub_1D30E88CC();
    sub_1D30408C0(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v50 = sub_1D30E977C();
    v52 = sub_1D2FFEA04(v50, v51, v60);

    *(v47 + 4) = v52;
    *(v47 + 12) = 2114;
    v53 = v44;
    v54 = _swift_stdlib_bridgeErrorToNSError();
    *(v47 + 14) = v54;
    *v48 = v54;
    _os_log_impl(&dword_1D2FD9000, v29, v45, "The item at “%{public}s” couldn’t be removed: %{public}@", v47, 0x16u);
    sub_1D2FF14DC(v48, &qword_1EC7493A0, &qword_1D30EF480);
    MEMORY[0x1D38B3760](v48, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v49);
    MEMORY[0x1D38B3760](v49, -1, -1);
    MEMORY[0x1D38B3760](v47, -1, -1);

LABEL_17:
    return;
  }

  v36 = sub_1D30E927C();

  v37 = sub_1D30E8B1C();

  if (os_log_type_enabled(v37, v36))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v60[0] = v39;
    *v38 = 136446210;
    sub_1D30E88CC();
    sub_1D30408C0(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
    v40 = sub_1D30E977C();
    v42 = sub_1D2FFEA04(v40, v41, v60);

    *(v38 + 4) = v42;
    _os_log_impl(&dword_1D2FD9000, v37, v36, "The storefront map exists locally at “%{public}s”.", v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v39);
    MEMORY[0x1D38B3760](v39, -1, -1);
    MEMORY[0x1D38B3760](v38, -1, -1);
  }

  v55 = sub_1D30E88DC();
  v57 = v56;
  sub_1D30E870C();
  swift_allocObject();
  sub_1D30E86FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A140, &unk_1D30F5408);
  sub_1D30401C8(&qword_1EC74A150, MEMORY[0x1E69E7708], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  sub_1D30E86EC();
  swift_beginAccess();
  *(v1 + 120) = v58;

  sub_1D303DCA4();

  sub_1D2FF1804(v55, v57);
}

uint64_t sub_1D303FC38()
{
  v2 = v0;
  if (qword_1EE3139A8 != -1)
  {
    swift_once();
  }

  v3 = sub_1D30E8B3C();
  __swift_project_value_buffer(v3, qword_1EE3139B0);
  v4 = sub_1D30E928C();
  v5 = sub_1D30E8B1C();
  if (os_log_type_enabled(v5, v4))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1D2FD9000, v5, v4, "Save", v6, 2u);
    MEMORY[0x1D38B3760](v6, -1, -1);
  }

  sub_1D30E874C();
  swift_allocObject();
  sub_1D30E873C();
  sub_1D30E871C();
  swift_beginAccess();
  v19 = *(v2 + 120);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A140, &unk_1D30F5408);
  sub_1D30401C8(&qword_1EC74A148, MEMORY[0x1E69E76E0], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  v7 = sub_1D30E872C();
  if (v1)
  {
  }

  else
  {
    v17 = v7;
    v18 = v8;

    v10 = sub_1D30E8B1C();
    v11 = sub_1D30E92BC();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19 = v13;
      *v12 = 136446210;
      sub_1D30E88CC();
      sub_1D30408C0(&qword_1EC7493D8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v14 = sub_1D30E977C();
      v16 = sub_1D2FFEA04(v14, v15, &v19);

      *(v12 + 4) = v16;
      _os_log_impl(&dword_1D2FD9000, v10, v11, "Saving the storefront map at “%{public}s”…", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1D38B3760](v13, -1, -1);
      MEMORY[0x1D38B3760](v12, -1, -1);
    }

    sub_1D30E894C();
    sub_1D2FF1804(v17, v18);
  }
}

uint64_t sub_1D303FF7C()
{

  v1 = OBJC_IVAR____TtC29ManagedBackgroundAssetsHelper13StorefrontMap_fileURL;
  v2 = sub_1D30E88CC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t type metadata accessor for StorefrontMap(uint64_t a1)
{
  result = qword_1EE313988;
  if (!qword_1EE313988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D3040058(uint64_t a1)
{
  result = sub_1D30E88CC();
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

void sub_1D3040110(uint64_t a1, void *a2, char a3, void *a4)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a4)
  {
    v6 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A158, &qword_1D30F5420);
    sub_1D30E91CC();
  }

  else if (a2)
  {
    v7 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A158, &qword_1D30F5420);
    sub_1D30E91DC();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D30401C8(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A140, &unk_1D30F5408);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D3040238(uint64_t a1)
{
  v1[21] = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A158, &qword_1D30F5420);
  v1[22] = v2;
  v1[23] = *(v2 - 8);
  v1[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D3040304, 0, 0);
}

uint64_t sub_1D3040304()
{
  v2 = v0[21];
  v3 = [objc_opt_self() ams_createEphemeralAccount];
  v0[25] = v3;
  v0[20] = v2;
  sub_1D30E977C();
  MEMORY[0x1D38B2610](12589, 0xE200000000000000);
  v4 = sub_1D30E906C();

  [v3 ams:v4 setStorefront:?];

  v5 = objc_opt_self();
  v6 = [v5 bagSubProfile];
  if (!v6)
  {
    __break(1u);
    goto LABEL_7;
  }

  v1 = v6;
  v7 = [v5 bagSubProfileVersion];
  if (!v7)
  {
LABEL_7:

    __break(1u);
    return MEMORY[0x1EEE6DEC8](v17);
  }

  v8 = v7;
  v10 = v0[23];
  v9 = v0[24];
  v11 = v0[22];
  v12 = [objc_opt_self() currentProcess];
  v13 = [objc_opt_self() bagForProfile:v1 profileVersion:v8 processInfo:v12 account:v3];
  v0[26] = v13;

  v14 = sub_1D30E906C();
  v15 = [v13 stringForKey_];
  v0[27] = v15;

  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1D3040660;
  swift_continuation_init();
  v0[17] = v11;
  boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A160, &qword_1D30F5428);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
  sub_1D30E91BC();
  (*(v10 + 32))(boxed_opaque_existential_0Tm, v9, v11);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1D3040110;
  v0[13] = &block_descriptor_3;
  [v15 valueWithCompletion_];
  (*(v10 + 8))(boxed_opaque_existential_0Tm, v11);
  v17 = v0 + 2;

  return MEMORY[0x1EEE6DEC8](v17);
}

uint64_t sub_1D3040660()
{
  v1 = *(*v0 + 48);
  *(*v0 + 224) = v1;
  if (v1)
  {
    v2 = sub_1D3040818;
  }

  else
  {
    v2 = sub_1D3040770;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3040770()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 200);
  v3 = *(v0 + 144);

  v4 = sub_1D30E908C();
  v6 = v5;

  v7 = *(v0 + 8);

  return v7(v4, v6);
}

uint64_t sub_1D3040818(uint64_t a1)
{
  v2 = v1[27];
  v4 = v1[25];
  v3 = v1[26];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_1D30408C0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D3040908(uint64_t result)
{
  if (v1[3] >= result)
  {
    return result;
  }

  v2 = result;
  result *= 56;
  if ((v2 * 56) >> 64 != result >> 63)
  {
    __break(1u);
    goto LABEL_16;
  }

  result = swift_slowAlloc();
  v3 = v1[2];
  v4 = v1[4];
  if (v3 < v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 > v2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = result;
  v6 = v3 - v4;
  if (v3 != v4)
  {
    if (v6 <= v2)
    {
      if (v4 || v3 < 1)
      {
        memmove(result, (result + 56 * v4), 56 * v6);
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_11:
  result = *v1;
  if (*v1)
  {
    result = MEMORY[0x1D38B3760](result, -1, -1);
  }

  *v1 = v5;
  v1[1] = v2;
  v1[3] = v2;
  return result;
}

char *sub_1D30409E0(char *result)
{
  if (v1[3] >= result)
  {
    return result;
  }

  v2 = result;
  if ((result - 0x800000000000000) >> 60 != 15)
  {
    __break(1u);
    goto LABEL_16;
  }

  result = swift_slowAlloc();
  v3 = v1[2];
  v4 = v1[4];
  if (v3 < v4)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v4 < 0)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v3 > v2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v5 = result;
  v6 = v3 - v4;
  if (v6)
  {
    if (v6 <= v2)
    {
      v7 = 16 * v6;
      v8 = &result[16 * v4];
      if (v4 || result >= &v8[v7])
      {
        memmove(result, v8, v7);
      }

      goto LABEL_11;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_11:
  result = *v1;
  if (*v1)
  {
    result = MEMORY[0x1D38B3760](result, -1, -1);
  }

  *v1 = v5;
  v1[1] = v2;
  v1[3] = v2;
  return result;
}

uint64_t sub_1D3040AB4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v27 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v26 = v23 - v6;
  v7 = sub_1D30E881C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D30E8D9C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  (*(v12 + 16))(v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v11);
  v14 = sub_1D30E90DC();
  if (v15)
  {
    v16 = *(v8 + 16);
    v23[1] = v14;
    v25 = v7;
    v16(v10, a2, v7);
    v17 = sub_1D30E88CC();
    v23[0] = a2;
    v18 = v17;
    v19 = *(*(v17 - 8) + 56);
    v24 = a1;
    v20 = v27;
    v19(v26, 1, 1, v17);
    sub_1D30E88BC();
    (*(v8 + 8))(v23[0], v25);
    (*(v12 + 8))(v24, v11);
    return (v19)(v20, 0, 1, v18);
  }

  else
  {
    (*(v8 + 8))(a2, v7);
    (*(v12 + 8))(a1, v11);
    v22 = sub_1D30E88CC();
    return (*(*(v22 - 8) + 56))(v27, 1, 1, v22);
  }
}

void *sub_1D3040DC8(uint64_t (*a1)(uint64_t *), void *a2, unint64_t a3)
{
  v5 = a3;
  v18 = MEMORY[0x1E69E7CC0];
  if (a3 >> 62)
  {
LABEL_18:
    v8 = sub_1D30E958C();
    if (v8)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
LABEL_3:
      v9 = 0;
      v15 = v5 & 0xFFFFFFFFFFFFFF8;
      v16 = v5 & 0xC000000000000001;
      v14 = v5;
      while (1)
      {
        if (v16)
        {
          v10 = MEMORY[0x1D38B29E0](v9, v5);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:

            return v3;
          }
        }

        else
        {
          if (v9 >= *(v15 + 16))
          {
            __break(1u);
            goto LABEL_18;
          }

          v10 = *(v5 + 8 * v9 + 32);

          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
            goto LABEL_14;
          }
        }

        v17 = v10;
        v3 = a2;
        v12 = a1(&v17);
        if (v4)
        {
          goto LABEL_15;
        }

        if (v12)
        {
          sub_1D30E950C();
          sub_1D30E953C();
          v5 = v14;
          sub_1D30E954C();
          v3 = &v18;
          sub_1D30E951C();
        }

        else
        {
        }

        ++v9;
        if (v11 == v8)
        {
          v3 = v18;
          goto LABEL_20;
        }
      }
    }
  }

  v3 = MEMORY[0x1E69E7CC0];
LABEL_20:

  return v3;
}

uint64_t sub_1D3040F84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = sub_1D30E88CC();
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749948, &unk_1D30F1B20);
  v4[26] = v6;
  v4[27] = *(v6 - 8);
  v4[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30410B0, 0, 0);
}

uint64_t sub_1D30410B0()
{
  v58 = v0;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE3133A8);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  v56 = v0;
  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v57[0] = v8;
    *v7 = 136446466;
    v0[18] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B058, &qword_1D30FD0D0);
    v9 = sub_1D30E909C();
    v11 = sub_1D2FFEA04(v9, v10, v57);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1D2FFEA04(v5, v4, v57);
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Attribute items at: %{public}s to bundle with ID: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  else
  {
  }

  v12 = sub_1D3041A78(v0[19]);
  v14 = v12;
  if (v12[2])
  {

    v15 = sub_1D30E8B1C();
    v16 = sub_1D30E92BC();

    if (os_log_type_enabled(v15, v16))
    {
      v52 = v0[20];
      v54 = v0[21];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v57[0] = v18;
      *v17 = 136446978;
      v19 = *(v14 + 16) == 1;
      if (*(v14 + 16) == 1)
      {
        v20 = 0;
      }

      else
      {
        v20 = 0x6974636570736572;
      }

      v21 = v14;
      if (*(v14 + 16) == 1)
      {
        v22 = 0xE000000000000000;
      }

      else
      {
        v22 = 0xEB00000000206576;
      }

      if (v19)
      {
        v23 = 0;
      }

      else
      {
        v23 = 115;
      }

      if (v19)
      {
        v24 = 0xE000000000000000;
      }

      else
      {
        v24 = 0xE100000000000000;
      }

      v25 = sub_1D2FFEA04(v20, v22, v57);
      v14 = v21;
      v0 = v56;

      *(v17 + 4) = v25;
      *(v17 + 12) = 2082;
      v26 = sub_1D2FFEA04(v23, v24, v57);

      *(v17 + 14) = v26;
      *(v17 + 22) = 2082;
      v27 = sub_1D3015CE8(v14);
      v29 = sub_1D2FFEA04(v27, v28, v57);

      *(v17 + 24) = v29;
      *(v17 + 32) = 2082;
      *(v17 + 34) = sub_1D2FFEA04(v52, v54, v57);
      _os_log_impl(&dword_1D2FD9000, v15, v16, "Attributing the %{public}sitem%{public}s at %{public}s to the bundle with the ID “%{public}s”…", v17, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v18, -1, -1);
      MEMORY[0x1D38B3760](v17, -1, -1);
    }

    v51 = [objc_opt_self() defaultManager];
    v0[29] = v51;
    v30 = *(v14 + 16);
    if (v30)
    {
      v31 = v0[24];
      v57[0] = MEMORY[0x1E69E7CC0];
      sub_1D30E952C();
      v32 = objc_opt_self();
      v33 = *(v31 + 16);
      v31 += 16;
      v53 = v33;
      v55 = v32;
      v34 = v14 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
      v35 = *(v31 + 56);
      v36 = (v31 - 8);
      do
      {
        v37 = v0[25];
        v38 = v0[23];
        v53(v37, v34, v38);
        v39 = sub_1D30E882C();
        v40 = [v55 pathInfoWithBinaryURL_];

        v0 = v56;
        (*v36)(v37, v38);
        sub_1D30E950C();
        sub_1D30E953C();
        sub_1D30E954C();
        sub_1D30E951C();
        v34 += v35;
        --v30;
      }

      while (v30);
    }

    v45 = v0[27];
    v46 = v0[28];
    v47 = v0[26];
    sub_1D2FF1494(0, &qword_1EC749958, 0x1E69D3978);
    v48 = sub_1D30E916C();
    v0[30] = v48;

    v49 = sub_1D30E906C();
    v0[31] = v49;
    v0[2] = v0;
    v0[3] = sub_1D304184C;
    swift_continuation_init();
    v0[17] = v47;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
    sub_1D30E91BC();
    (*(v45 + 32))(boxed_opaque_existential_0Tm, v46, v47);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D3007390;
    v0[13] = &block_descriptor_4;
    [v51 registerPaths:v48 forBundleID:v49 completionHandler:?];
    (*(v45 + 8))(boxed_opaque_existential_0Tm, v47);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v41 = sub_1D30E92AC();
    v42 = sub_1D30E8B1C();
    if (os_log_type_enabled(v42, v41))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_1D2FD9000, v42, v41, "No valid paths were specified for attribution.", v43, 2u);
      MEMORY[0x1D38B3760](v43, -1, -1);
    }

    v44 = v0[1];

    return v44();
  }
}

uint64_t sub_1D304184C()
{
  v1 = *(*v0 + 48);
  *(*v0 + 256) = v1;
  if (v1)
  {
    v2 = sub_1D30419E0;
  }

  else
  {
    v2 = sub_1D304195C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D304195C()
{
  v1 = *(v0 + 240);
  v2 = *(v0 + 248);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D30419E0(uint64_t a1)
{
  v2 = v1[31];
  v4 = v1[29];
  v3 = v1[30];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

void *sub_1D3041A78(uint64_t a1)
{
  v2 = sub_1D30E881C();
  v70 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v66 = &v61 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v80 = &v61 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493C0, &qword_1D30EF500);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v65 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v61 - v9;
  v11 = sub_1D30E88CC();
  v63 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v79 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = sub_1D30E8D9C();
  v81 = *(v67 - 8);
  v13 = MEMORY[0x1EEE9AC00](v67);
  v78 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v61 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v86 = &v61 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v61 - v20;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v22 = sub_1D30E8B3C();
  __swift_project_value_buffer(v22, qword_1EE3133A8);
  v23 = sub_1D30E928C();

  v24 = sub_1D30E8B1C();
  v25 = os_log_type_enabled(v24, v23);
  v85 = v2;
  v82 = v11;
  v83 = v10;
  v77 = v21;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v88 = v27;
    *v26 = 136446210;
    v87 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B058, &qword_1D30FD0D0);
    v28 = sub_1D30E909C();
    v30 = sub_1D2FFEA04(v28, v29, &v88);

    *(v26 + 4) = v30;
    _os_log_impl(&dword_1D2FD9000, v24, v23, "URLs for: %{public}s", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v27);
    MEMORY[0x1D38B3760](v27, -1, -1);
    v2 = v85;
    MEMORY[0x1D38B3760](v26, -1, -1);
  }

  else
  {
  }

  v31 = *(a1 + 16);
  v88 = MEMORY[0x1E69E7CC0];
  sub_1D3028CBC(0, v31, 0);
  v32 = v88;
  if (v31)
  {
    v33 = *(v81 + 16);
    v73 = ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v34 = &v73[a1];
    v74 = (v81 + 8);
    v75 = v33;
    v76 = (v81 + 16);
    v71 = *(v81 + 72);
    v72 = (v81 + 32);
    v35 = v62;
    v36 = v67;
    v37 = v86;
    while (1)
    {
      (v75)(v17, v34, v36);
      sub_1D3003CF4(v17, 0, v37);
      if (v35)
      {
        break;
      }

      v35 = 0;
      v38 = v17;
      (*v74)(v17, v36);
      v88 = v32;
      v39 = v36;
      v41 = *(v32 + 16);
      v40 = *(v32 + 24);
      if (v41 >= v40 >> 1)
      {
        sub_1D3028CBC((v40 > 1), v41 + 1, 1);
        v32 = v88;
      }

      *(v32 + 16) = v41 + 1;
      v42 = v71;
      v37 = v86;
      (*v72)(&v73[v32 + v41 * v71], v86, v39);
      v34 = v42 + v34;
      --v31;
      v2 = v85;
      v36 = v39;
      v17 = v38;
      if (!v31)
      {
        goto LABEL_14;
      }
    }

    v62 = v35;
    (*v74)(v17, v36);
  }

  else
  {
    v35 = v62;
    v36 = v67;
LABEL_14:
    v62 = v35;
    v43 = *(v32 + 16);
    if (v43)
    {
      v76 = *(v81 + 16);
      v44 = (*(v81 + 80) + 32) & ~*(v81 + 80);
      v61 = v32;
      v86 = (v32 + v44);
      v75 = *(v81 + 72);
      LODWORD(v74) = *MEMORY[0x1E6968F80];
      v73 = (v70 + 13);
      v64 = (v70 + 2);
      v71 = v70 + 1;
      v72 = (v63 + 56);
      v81 += 16;
      v70 = (v81 - 8);
      v68 = (v63 + 32);
      v69 = (v63 + 48);
      v35 = MEMORY[0x1E69E7CC0];
      v45 = v80;
      v47 = v82;
      v46 = v83;
      do
      {
        v84 = v35;
        v85 = v43;
        v48 = v76;
        v49 = v77;
        v76(v77, v86, v36);
        (*v73)(v45, v74, v2);
        v50 = v2;
        v48(v78, v49, v36);
        sub_1D30E90DC();
        if (v51)
        {
          (*v64)(v66, v45, v2);
          v52 = v45;
          v53 = *v72;
          (*v72)(v65, 1, 1, v82);
          v54 = v83;
          v47 = v82;
          sub_1D30E88BC();
          v55 = v52;
          v36 = v67;
          (*v71)(v55, v2);
          (*v70)(v49, v36);
          v53(v54, 0, 1, v47);
          v46 = v54;
        }

        else
        {
          (*v71)(v45, v2);
          (*v70)(v49, v36);
          (*v72)(v46, 1, 1, v47);
        }

        v56 = (*v69)(v46, 1, v47);
        v35 = v84;
        if (v56 == 1)
        {
          sub_1D2FF14DC(v46, &qword_1EC7493C0, &qword_1D30EF500);
          v45 = v80;
        }

        else
        {
          v57 = *v68;
          (*v68)(v79, v46, v47);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v35 = sub_1D30D81E4(0, v35[2] + 1, 1, v35, &qword_1EC74B060, &qword_1D30FD0D8, MEMORY[0x1E6968FB0]);
          }

          v59 = v35[2];
          v58 = v35[3];
          if (v59 >= v58 >> 1)
          {
            v35 = sub_1D30D81E4((v58 > 1), v59 + 1, 1, v35, &qword_1EC74B060, &qword_1D30FD0D8, MEMORY[0x1E6968FB0]);
          }

          v35[2] = v59 + 1;
          v57(v35 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v59, v79, v47);
          v45 = v80;
          v2 = v50;
        }

        v86 = &v75[v86];
        v43 = v85 - 1;
      }

      while (v85 != 1);
    }

    else
    {

      return MEMORY[0x1E69E7CC0];
    }
  }

  return v35;
}

uint64_t sub_1D3042420(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[21] = a3;
  v4[22] = v3;
  v4[19] = a1;
  v4[20] = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC749948, &unk_1D30F1B20);
  v4[23] = v5;
  v4[24] = *(v5 - 8);
  v4[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D30424F0, 0, 0);
}

uint64_t sub_1D30424F0()
{
  v42 = v0;
  if (qword_1EE3133A0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D30E8B3C();
  __swift_project_value_buffer(v1, qword_1EE3133A8);
  v2 = sub_1D30E928C();

  v3 = sub_1D30E8B1C();

  if (os_log_type_enabled(v3, v2))
  {
    v5 = v0[20];
    v4 = v0[21];
    v6 = v0[19];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41[0] = v8;
    *v7 = 136446466;
    v0[18] = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74B058, &qword_1D30FD0D0);
    v9 = sub_1D30E909C();
    v11 = sub_1D2FFEA04(v9, v10, v41);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2082;
    *(v7 + 14) = sub_1D2FFEA04(v5, v4, v41);
    _os_log_impl(&dword_1D2FD9000, v3, v2, "Remove attribution of items at: %{public}s to bundle with ID: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38B3760](v8, -1, -1);
    MEMORY[0x1D38B3760](v7, -1, -1);
  }

  else
  {
  }

  v12 = sub_1D3041A78(v0[19]);
  v14 = v12;
  if (v12[2])
  {

    v15 = sub_1D30E8B1C();
    v16 = sub_1D30E92BC();

    if (os_log_type_enabled(v15, v16))
    {
      v38 = v0[20];
      v40 = v0[21];
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v41[0] = v18;
      *v17 = 136446978;
      if (*(v14 + 16) == 1)
      {
        v19 = 0;
      }

      else
      {
        v19 = 0x6974636570736572;
      }

      if (*(v14 + 16) == 1)
      {
        v20 = 0xE000000000000000;
      }

      else
      {
        v20 = 0xEB00000000206576;
      }

      if (*(v14 + 16) == 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = 115;
      }

      if (*(v14 + 16) == 1)
      {
        v22 = 0xE000000000000000;
      }

      else
      {
        v22 = 0xE100000000000000;
      }

      v23 = sub_1D2FFEA04(v19, v20, v41);

      *(v17 + 4) = v23;
      *(v17 + 12) = 2082;
      v24 = sub_1D2FFEA04(v21, v22, v41);

      *(v17 + 14) = v24;
      *(v17 + 22) = 2082;
      v25 = sub_1D3015CE8(v14);
      v27 = sub_1D2FFEA04(v25, v26, v41);

      *(v17 + 24) = v27;
      *(v17 + 32) = 2082;
      *(v17 + 34) = sub_1D2FFEA04(v38, v40, v41);
      _os_log_impl(&dword_1D2FD9000, v15, v16, "Removing attribution for the %{public}sitem%{public}s at %{public}s to the bundle with the ID “%{public}s”…", v17, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1D38B3760](v18, -1, -1);
      MEMORY[0x1D38B3760](v17, -1, -1);
    }

    v28 = v0[24];
    v39 = v0[25];
    v29 = v0[23];
    v30 = [objc_opt_self() defaultManager];
    v0[26] = v30;
    sub_1D30E88CC();
    v31 = sub_1D30E916C();
    v0[27] = v31;

    v32 = sub_1D30E906C();
    v0[28] = v32;
    v0[2] = v0;
    v0[3] = sub_1D3042B30;
    swift_continuation_init();
    v0[17] = v29;
    boxed_opaque_existential_0Tm = __swift_allocate_boxed_opaque_existential_0Tm(v0 + 14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7493E0, &qword_1D30EF530);
    sub_1D30E91BC();
    (*(v28 + 32))(boxed_opaque_existential_0Tm, v39, v29);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D3007390;
    v0[13] = &block_descriptor_741;
    [v30 unregisterURLs:v31 forBundleID:v32 completionHandler:?];
    (*(v28 + 8))(boxed_opaque_existential_0Tm, v29);

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {

    v34 = sub_1D30E92AC();
    v35 = sub_1D30E8B1C();
    if (os_log_type_enabled(v35, v34))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_1D2FD9000, v35, v34, "No valid paths were specified for attribution removal.", v36, 2u);
      MEMORY[0x1D38B3760](v36, -1, -1);
    }

    v37 = v0[1];

    return v37();
  }
}

uint64_t sub_1D3042B30()
{
  v1 = *(*v0 + 48);
  *(*v0 + 232) = v1;
  if (v1)
  {
    v2 = sub_1D3042CB8;
  }

  else
  {
    v2 = sub_1D3042C40;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D3042C40()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 224);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D3042CB8(uint64_t a1)
{
  v2 = v1[28];
  v4 = v1[26];
  v3 = v1[27];
  swift_willThrow();

  v5 = v1[1];

  return v5();
}

uint64_t sub_1D3042D44(uint64_t a1)
{
  result = MEMORY[0x1D38B2760](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1D30D84A0(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D3042E60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D30E98AC();
  sub_1D30E90BC();
  v6 = sub_1D30E98EC();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D30E97CC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_1D3042F58(uint64_t *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_1D30E98AC();
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[4];
    v7 = a1[5];
    sub_1D30E90BC();
    v31 = v6;
    sub_1D30E90BC();
    v8 = sub_1D30E98EC();
    v9 = -1 << *(a2 + 32);
    v10 = v8 & ~v9;
    v30 = a2 + 56;
    if ((*(a2 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v28 = ~v9;
      v11 = a1[2];
      v12 = a1[3];
      v27 = v11;
      v29 = *(a2 + 48);
      do
      {
        v13 = (v29 + 48 * v10);
        v15 = *v13;
        v14 = v13[1];
        v16 = v13[3];
        v17 = v13[4];
        v18 = v13[5];
        if (v16)
        {
          v19 = v12 == 0;
        }

        else
        {
          v19 = 1;
        }

        if (v19 || (v13[2] == v27 ? (v20 = v16 == v12) : (v20 = 0), v20))
        {
          if (v15 == v4 && v14 == v5)
          {
            v21 = 1;
            if (v17 == v31 && v18 == v7)
            {
              return v21;
            }

LABEL_35:
            if ((sub_1D30E97CC() & 1) == 0)
            {
              goto LABEL_5;
            }

            goto LABEL_4;
          }

          LOBYTE(v21) = 1;
        }

        else
        {
          LOBYTE(v21) = sub_1D30E97CC();
          if (v15 == v4 && v14 == v5)
          {
            goto LABEL_26;
          }
        }

        if ((sub_1D30E97CC() & 1) == 0)
        {
          goto LABEL_5;
        }

LABEL_26:
        if (v17 != v31 || v18 != v7)
        {
          goto LABEL_35;
        }

LABEL_4:
        if (v21)
        {
          return 1;
        }

LABEL_5:
        v10 = (v10 + 1) & v28;
      }

      while (((*(v30 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }
  }

  return 0;
}

uint64_t Helper.Message.description.getter()
{
  v1 = v0;
  v2 = sub_1D30E8D9C();
  v249 = *(v2 - 8);
  v250 = v2;
  MEMORY[0x1EEE9AC00](v2);
  *&v251 = &v247 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D30E8A4C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v247 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D30E8D5C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v247 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AssetPackHost(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v247 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Helper.Message(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v247 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D3058338(v1, v17, type metadata accessor for Helper.Message);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x7075206E61656C43;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v133 = *v17;
      v132 = *(v17 + 1);
      v134 = *(v17 + 3);
      v97 = v17[32];
      if (v134)
      {
        v135 = *(v17 + 2);
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000026, 0x80000001D30ED200);
        MEMORY[0x1D38B2610](v133, v132);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v135, v134);
      }

      else
      {
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000026, 0x80000001D30ED200);
        MEMORY[0x1D38B2610](v133, v132);
      }

      v99 = "r app with bundle ID: ";
      v100 = 0xD000000000000015;
      goto LABEL_104;
    case 2:
      v20 = *v17;
      v21 = *(v17 + 1);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      v144 = "App Store manifest data for app with bundle ID: ";
      goto LABEL_43;
    case 3:
      v20 = *v17;
      v21 = *(v17 + 1);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      v101 = "p with bundle ID: ";
      v102 = 17;
      goto LABEL_56;
    case 4:
      v54 = *v17;
      v53 = *(v17 + 1);
      v55 = *(v17 + 3);
      if (v55)
      {
        v56 = *(v17 + 2);
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        v57 = "Local cache manifest data for app with bundle ID: ";
        goto LABEL_51;
      }

      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      v230 = "Local cache manifest data for app with bundle ID: ";
      goto LABEL_112;
    case 5:
      v20 = *v17;
      v21 = *(v17 + 1);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      v101 = "for app with bundle ID: ";
      v102 = 19;
      goto LABEL_56;
    case 6:
      v20 = *v17;
      v21 = *(v17 + 1);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      v101 = "Install manifest from: ";
      v145 = 0xD000000000000038;
      goto LABEL_57;
    case 7:
      v125 = *v17;
      v126 = *(v17 + 1);
      v182 = *(v17 + 2);
      v181 = *(v17 + 3);
      v183 = *(v17 + 5);
      if (v183)
      {
        v184 = *(v17 + 4);
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30ED0A0);
        v185 = sub_1D30E88EC();
        MEMORY[0x1D38B2610](v185);

        MEMORY[0x1D38B2610](0xD000000000000019, 0x80000001D30EC8E0);
        MEMORY[0x1D38B2610](v182, v181);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v184, v183);
      }

      else
      {
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30ED0A0);
        v244 = sub_1D30E88EC();
        MEMORY[0x1D38B2610](v244);

        MEMORY[0x1D38B2610](0xD000000000000019, 0x80000001D30EC8E0);
        v129 = v182;
LABEL_119:
        MEMORY[0x1D38B2610](v129);
      }

      sub_1D2FF1804(v125, v126);
      return *v252;
    case 8:
      v20 = *v17;
      v21 = *(v17 + 1);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      v22 = 0x80000001D30ED070;
      v124 = 11;
      goto LABEL_68;
    case 9:
      v24 = *v17;
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      v25 = 0x80000001D30ED040;
      v26 = 0xD00000000000002ELL;
      goto LABEL_83;
    case 10:
      v95 = *v17;
      v94 = *(v17 + 1);
      v96 = *(v17 + 3);
      v97 = v17[32];
      if (v96)
      {
        v98 = *(v17 + 2);
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD00000000000002FLL, 0x80000001D30ECFF0);
        MEMORY[0x1D38B2610](v95, v94);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v98, v96);
      }

      else
      {
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD00000000000002FLL, 0x80000001D30ECFF0);
        MEMORY[0x1D38B2610](v95, v94);
      }

      v99 = "ecords for app with bundle ID: ";
      v100 = 0xD000000000000018;
LABEL_104:
      MEMORY[0x1D38B2610](v100, v99 | 0x8000000000000000);
      v214 = v97 == 0;
      goto LABEL_105;
    case 11:
      v110 = *v17;
      v111 = *(v17 + 1);
      v113 = *(v17 + 2);
      v112 = *(v17 + 3);
      v114 = *(v17 + 5);
      v249 = *(v17 + 4);
      v250 = v110;
      v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A8, &qword_1D30F54A8);
      v116 = v115[12];
      *&v251 = *&v17[v115[16]];
      v117 = v115[20];
      sub_1D3056830(&v17[v116], v14, type metadata accessor for AssetPackHost);
      (*(v9 + 32))(v11, &v17[v117], v8);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      v256 = *v252;
      MEMORY[0x1D38B2610](0xD000000000000026, 0x80000001D30ECFC0);
      *v252 = v250;
      *&v252[8] = v111;
      *&v252[16] = v113;
      v253 = v112;
      v254 = v249;
      v255 = v114;
      v118 = AssetPackRecord.GlobalID.description.getter();
      v120 = v119;

      MEMORY[0x1D38B2610](v118, v120);

      MEMORY[0x1D38B2610](0x203A74736F6820, 0xE700000000000000);
      v121 = AssetPackHost.description.getter();
      MEMORY[0x1D38B2610](v121);

      MEMORY[0x1D38B2610](0x6E6F697372657620, 0xEA0000000000203ALL);
      *v252 = v251;
      v122 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v122);

      MEMORY[0x1D38B2610](0xD00000000000001BLL, 0x80000001D30EBC50);
      sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
      v123 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v123);

      v93 = v256;
      (*(v9 + 8))(v11, v8);
      sub_1D3065284(v14, type metadata accessor for AssetPackHost);
      return v93;
    case 12:
      v137 = *v17;
      v136 = *(v17 + 1);
      v139 = *(v17 + 2);
      v138 = *(v17 + 3);
      v141 = *(v17 + 4);
      v140 = *(v17 + 5);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      v142 = 0x80000001D30ECF90;
      v143 = 0xD000000000000029;
      goto LABEL_59;
    case 13:
      v74 = *v17;
      v73 = *(v17 + 1);
      v76 = *(v17 + 2);
      v75 = *(v17 + 3);
      v78 = *(v17 + 4);
      v77 = *(v17 + 5);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      v256 = *v252;
      MEMORY[0x1D38B2610](0xD000000000000035, 0x80000001D30ECF30);
      *v252 = v74;
      *&v252[8] = v73;
      *&v252[16] = v76;
      v253 = v75;
      v254 = v78;
      v255 = v77;
      goto LABEL_60;
    case 14:
      v137 = *v17;
      v136 = *(v17 + 1);
      v139 = *(v17 + 2);
      v138 = *(v17 + 3);
      v141 = *(v17 + 4);
      v140 = *(v17 + 5);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      v142 = 0x80000001D30ECF00;
      v143 = 0xD000000000000028;
      goto LABEL_59;
    case 15:
      v58 = *v17;
      v60 = *(v17 + 1);
      v59 = *(v17 + 2);
      v62 = *(v17 + 3);
      v61 = *(v17 + 4);
      v64 = *(v17 + 5);
      v63 = *(v17 + 6);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      v256 = *v252;
      MEMORY[0x1D38B2610](0xD000000000000012, 0x80000001D30ECEC0);
      if (v58)
      {
        v65 = 1702195828;
      }

      else
      {
        v65 = 0x65736C6166;
      }

      if (v58)
      {
        v66 = 0xE400000000000000;
      }

      else
      {
        v66 = 0xE500000000000000;
      }

      MEMORY[0x1D38B2610](v65, v66);

      MEMORY[0x1D38B2610](0xD00000000000001FLL, 0x80000001D30ECEE0);
      *v252 = v60;
      *&v252[8] = v59;
      *&v252[16] = v62;
      v253 = v61;
      v254 = v64;
      v255 = v63;
      v67 = AssetPackRecord.GlobalID.description.getter();
      v69 = v68;

      goto LABEL_61;
    case 16:
      v147 = *v17;
      v146 = *(v17 + 1);
      v149 = *(v17 + 2);
      v148 = *(v17 + 3);
      v151 = *(v17 + 4);
      v150 = *(v17 + 5);
      v153 = *(v17 + 6);
      v152 = *(v17 + 7);
      if (v152)
      {
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        v250 = "t pack with global ID: ";
        v251 = *(v17 + 4);
        sub_1D30E948C();
        v256 = *v252;
        MEMORY[0x1D38B2610](0xD000000000000037, 0x80000001D30ECE60);
        *v252 = v147;
        *&v252[8] = v146;
        *&v252[16] = v149;
        v253 = v148;
        v254 = v151;
        v255 = v150;
        v154 = AssetPackRecord.GlobalID.description.getter();
        v156 = v155;

        MEMORY[0x1D38B2610](v154, v156);

        MEMORY[0x1D38B2610](0x6E6F697372657620, 0xEA0000000000203ALL);
        *v252 = v153;
        v157 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v157);

        MEMORY[0x1D38B2610](0xD000000000000014, v250 | 0x8000000000000000);
        *v252 = v152;
        *&v252[8] = v251;
        sub_1D3045A7C();
        v158 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v158);
      }

      else
      {
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        v256 = *v252;
        MEMORY[0x1D38B2610](0xD000000000000037, 0x80000001D30ECE60);
        *v252 = v147;
        *&v252[8] = v146;
        *&v252[16] = v149;
        v253 = v148;
        v254 = v151;
        v255 = v150;
        v238 = AssetPackRecord.GlobalID.description.getter();
        v240 = v239;

        MEMORY[0x1D38B2610](v238, v240);

        MEMORY[0x1D38B2610](0x6E6F697372657620, 0xEA0000000000203ALL);
        *v252 = v153;
        v241 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v241);
LABEL_62:
      }

      return v256;
    case 17:
      v137 = *v17;
      v136 = *(v17 + 1);
      v139 = *(v17 + 2);
      v138 = *(v17 + 3);
      v141 = *(v17 + 4);
      v140 = *(v17 + 5);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      v142 = 0x80000001D30ECE30;
      v143 = 0xD000000000000022;
LABEL_59:
      *&v256 = v143;
      *(&v256 + 1) = v142;
      *v252 = v137;
      *&v252[8] = v136;
      *&v252[16] = v139;
      v253 = v138;
      v254 = v141;
      v255 = v140;
LABEL_60:
      v67 = AssetPackRecord.GlobalID.description.getter();
      v69 = v180;

LABEL_61:

      MEMORY[0x1D38B2610](v67, v69);
      goto LABEL_62;
    case 18:
      if (*(v17 + 1))
      {
        v54 = *v17;
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();

        *v252 = 0xD00000000000002FLL;
        *&v252[8] = 0x80000001D30ECE00;
        goto LABEL_114;
      }

      return 0xD000000000000016;
    case 19:
      v20 = *v17;
      v21 = *(v17 + 1);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      v101 = "for asset pack with ID: ";
      v102 = 25;
LABEL_56:
      v145 = v102 | 0xD000000000000020;
LABEL_57:
      MEMORY[0x1D38B2610](v145, v101 | 0x8000000000000000);
      goto LABEL_70;
    case 20:
      v171 = *v17;
      v170 = *(v17 + 1);
      v172 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A0, &qword_1D30F54A0);
      v173 = *&v17[v172[16]];
      v174 = &v17[v172[20]];
      v175 = *v174;
      v176 = *(v174 + 1);
      (*(v5 + 32))(v7, &v17[v172[12]], v4);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000028, 0x80000001D30ECD70);
      MEMORY[0x1D38B2610](v171, v170);

      MEMORY[0x1D38B2610](0x6E6F697372657620, 0xED0000203A444920);
      sub_1D3045A34(&qword_1EC749490, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v177 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v177);

      MEMORY[0x1D38B2610](0xD000000000000016, 0x80000001D30EB1C0);
      *&v256 = v173;
      v178 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v178);

      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EA630);
      MEMORY[0x1D38B2610](v175, v176);

      v179 = *v252;
      (*(v5 + 8))(v7, v4);
      return v179;
    case 21:
      v201 = *v17;
      v54 = *(v17 + 1);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000025, 0x80000001D30ECD40);
      v202 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
      v203 = MEMORY[0x1D38B26B0](v201, v202);
      v205 = v204;

      MEMORY[0x1D38B2610](v203, v205);

      v206 = "<App Info | Bundle ID: ";
      v207 = 0xD000000000000010;
      goto LABEL_113;
    case 22:
      v24 = *v17;
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      v25 = 0x80000001D30ECD20;
      v26 = 0xD00000000000001DLL;
      goto LABEL_83;
    case 23:
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD00000000000003CLL, 0x80000001D30ECCE0);
      sub_1D3045AD0();
      v71 = sub_1D30E922C();
      goto LABEL_35;
    case 24:
      v125 = *v17;
      v126 = *(v17 + 1);
      v127 = *(v17 + 2);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      *v252 = 0xD000000000000017;
      *&v252[8] = 0x80000001D30ECCC0;
      v128 = sub_1D30E88EC();
      MEMORY[0x1D38B2610](v128);

      MEMORY[0x1D38B2610](0xD000000000000016, 0x80000001D30ECCA0);
      *&v256 = v127;
      v129 = sub_1D30E977C();
      goto LABEL_119;
    case 25:
      v224 = *(v17 + 2);
      v225 = *(v17 + 3);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      v251 = *v17;
      sub_1D30E948C();

      *&v256 = 0xD000000000000015;
      *(&v256 + 1) = 0x80000001D30ECC80;
      *v252 = v251;
      *&v252[16] = v224;
      sub_1D3045A7C();
      v226 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v226);

      MEMORY[0x1D38B2610](0xD000000000000016, 0x80000001D30ECCA0);
      *v252 = v225;
      v227 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v227);

      return v256;
    case 26:
      v51 = *v17;
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      *v252 = 0xD00000000000001FLL;
      *&v252[8] = 0x80000001D30ECC40;
      *&v256 = v51;
      v52 = sub_1D30E977C();
      goto LABEL_115;
    case 27:
      v215 = *v17;
      v125 = *(v17 + 1);
      v126 = *(v17 + 2);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      *v252 = 0xD00000000000001ELL;
      *&v252[8] = 0x80000001D30ECC20;
      if (v215)
      {
        v216 = 0x676E696E676973;
      }

      else
      {
        v216 = 0x6974707972636E65;
      }

      if (v215)
      {
        v217 = 0xE700000000000000;
      }

      else
      {
        v217 = 0xEA00000000006E6FLL;
      }

      MEMORY[0x1D38B2610](v216, v217);

      MEMORY[0x1D38B2610](0x203A6D6F726620, 0xE700000000000000);
      v129 = sub_1D30E88EC();
      goto LABEL_119;
    case 28:
      v218 = *v17;
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      *v252 = 0xD000000000000020;
      *&v252[8] = 0x80000001D30ECBF0;
      if (v218)
      {
        v52 = 0x676E696E676973;
      }

      else
      {
        v52 = 0x6974707972636E65;
      }

      goto LABEL_115;
    case 29:
      v20 = *v17;
      v21 = *(v17 + 1);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      v22 = 0x80000001D30ECBA0;
      v124 = 13;
LABEL_68:
      v23 = v124 | 0xD000000000000020;
      goto LABEL_69;
    case 30:
      v20 = *v17;
      v21 = *(v17 + 1);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      v144 = "Remove App Review record of app with bundle ID: ";
LABEL_43:
      v22 = (v144 - 32) | 0x8000000000000000;
      v23 = 0xD000000000000030;
      goto LABEL_69;
    case 31:
      v186 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A190, &qword_1D30F5498) + 48)];
      v187 = *v186;
      v188 = *(v186 + 1);
      v189 = *(v186 + 3);
      v247 = *(v186 + 2);
      v248 = v187;
      v191 = *(v186 + 4);
      v190 = *(v186 + 5);
      v193 = v249;
      v192 = v250;
      (*(v249 + 32))(v251, v17, v250);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      v256 = *v252;
      MEMORY[0x1D38B2610](0xD000000000000017, 0x80000001D30ECB40);
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v194 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v194);

      MEMORY[0x1D38B2610](0x206C61626F6C6720, 0xEC000000203A4449);
      *v252 = v248;
      *&v252[8] = v188;
      *&v252[16] = v247;
      v253 = v189;
      v254 = v191;
      v255 = v190;
      v195 = AssetPackRecord.GlobalID.description.getter();
      v197 = v196;

      MEMORY[0x1D38B2610](v195, v197);

      MEMORY[0x1D38B2610](0xD000000000000020, 0x80000001D30ECB10);
      v198 = sub_1D30E922C();
      v200 = v199;

      MEMORY[0x1D38B2610](v198, v200);

      v93 = v256;
      (*(v193 + 8))(v251, v192);
      return v93;
    case 32:
      v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A188, &qword_1D30F5490);
      v80 = &v17[*(v79 + 48)];
      v81 = *v80;
      v82 = *(v80 + 1);
      v83 = &v17[*(v79 + 64)];
      v84 = *(v83 + 1);
      if (v84)
      {
        v85 = *v83;
        v86 = v249;
        v87 = v250;
        v88 = v251;
        (*(v249 + 32))(v251, v17, v250);
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000011, 0x80000001D30ECAF0);
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v89 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v89);

        MEMORY[0x1D38B2610](0x20656C646E756220, 0xEC000000203A4449);
        MEMORY[0x1D38B2610](v81, v82);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v85, v84);

        MEMORY[0x1D38B2610](0xD000000000000020, 0x80000001D30ECB10);
        v90 = sub_1D30E922C();
        v92 = v91;

        MEMORY[0x1D38B2610](v90, v92);

        v93 = *v252;
        (*(v86 + 8))(v88, v87);
      }

      else
      {
        v231 = v249;
        v232 = v250;
        v233 = v251;
        (*(v249 + 32))(v251, v17, v250);
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD000000000000011, 0x80000001D30ECAF0);
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v234 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v234);

        MEMORY[0x1D38B2610](0x20656C646E756220, 0xEC000000203A4449);
        MEMORY[0x1D38B2610](v81, v82);

        MEMORY[0x1D38B2610](0xD000000000000020, 0x80000001D30ECB10);
        v235 = sub_1D30E922C();
        v237 = v236;

        MEMORY[0x1D38B2610](v235, v237);

        v93 = *v252;
        (*(v231 + 8))(v233, v232);
      }

      return v93;
    case 33:
      v54 = *v17;
      v53 = *(v17 + 1);
      v55 = *(v17 + 3);
      if (v55)
      {
        v56 = *(v17 + 2);
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        v57 = "Path to staging directory for app with bundle ID: ";
LABEL_51:
        MEMORY[0x1D38B2610](0xD000000000000032, (v57 - 32) | 0x8000000000000000);
        MEMORY[0x1D38B2610](v54, v53);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        v131 = v56;
LABEL_52:
        MEMORY[0x1D38B2610](v131, v55);
      }

      else
      {
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        v230 = "Path to staging directory for app with bundle ID: ";
LABEL_112:
        v206 = v230 - 32;
        v207 = 0xD000000000000032;
LABEL_113:
        MEMORY[0x1D38B2610](v207, v206 | 0x8000000000000000);
LABEL_114:
        v52 = v54;
LABEL_115:
        MEMORY[0x1D38B2610](v52);
      }

LABEL_116:

      return *v252;
    case 34:
      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A180, &qword_1D30F5488);
      v39 = &v17[*(v38 + 48)];
      v40 = *v39;
      v41 = *(v39 + 1);
      v42 = &v17[*(v38 + 64)];
      v43 = *(v42 + 1);
      if (v43)
      {
        v44 = *v42;
        v34 = v249;
        v35 = v250;
        v36 = v251;
        (*(v249 + 32))(v251, v17, v250);
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD00000000000002ELL, 0x80000001D30ECA80);
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v45 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v45);

        MEMORY[0x1D38B2610](0x20656C646E756220, 0xEC000000203A4449);
        MEMORY[0x1D38B2610](v40, v41);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v44, v43);

        goto LABEL_77;
      }

      v106 = v249;
      v107 = v250;
      v108 = v251;
      (*(v249 + 32))(v251, v17, v250);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD00000000000002ELL, 0x80000001D30ECA80);
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v229 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v229);

      MEMORY[0x1D38B2610](0x20656C646E756220, 0xEC000000203A4449);
      MEMORY[0x1D38B2610](v40, v41);

      goto LABEL_124;
    case 35:
      v46 = v249;
      v47 = v250;
      v48 = v251;
      (*(v249 + 32))(v251, v17, v250);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      v49 = 0x80000001D30ECA30;
      v50 = 0xD000000000000027;
      goto LABEL_81;
    case 36:
      v28 = *v17;
      v27 = *(v17 + 1);
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v30 = *(v29 + 48);
      v31 = &v17[*(v29 + 64)];
      v32 = *(v31 + 1);
      if (v32)
      {
        v33 = *v31;
        v34 = v249;
        v35 = v250;
        v36 = v251;
        (*(v249 + 32))(v251, &v17[v30], v250);
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        v37 = "Copy item into container resolved from bookmark data: ";
        goto LABEL_76;
      }

      v106 = v249;
      v107 = v250;
      v108 = v251;
      (*(v249 + 32))(v251, &v17[v30], v250);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      v228 = "Copy item into container resolved from bookmark data: ";
      goto LABEL_122;
    case 37:
      v219 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48)];
      v104 = *v219;
      v105 = v219[1];
      v106 = v249;
      v107 = v250;
      v108 = v251;
      (*(v249 + 32))(v251, v17, v250);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      v109 = "Copy item out of container source path: ";
      goto LABEL_95;
    case 38:
      v28 = *v17;
      v27 = *(v17 + 1);
      v208 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v209 = *(v208 + 48);
      v210 = &v17[*(v208 + 64)];
      v32 = *(v210 + 1);
      if (v32)
      {
        v33 = *v210;
        v34 = v249;
        v35 = v250;
        v36 = v251;
        (*(v249 + 32))(v251, &v17[v209], v250);
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        v37 = "Move item into container resolved from bookmark data: ";
LABEL_76:
        MEMORY[0x1D38B2610](0xD000000000000036, (v37 - 32) | 0x8000000000000000);
        v211 = sub_1D30E88EC();
        MEMORY[0x1D38B2610](v211);

        MEMORY[0x1D38B2610](0x203A6F7420, 0xE500000000000000);
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v212 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v212);

        MEMORY[0x1D38B2610](0xD000000000000020, 0x80000001D30EC990);
        MEMORY[0x1D38B2610](v33, v32);

        sub_1D2FF1804(v28, v27);
LABEL_77:
        v93 = *v252;
        (*(v34 + 8))(v36, v35);
      }

      else
      {
        v106 = v249;
        v107 = v250;
        v108 = v251;
        (*(v249 + 32))(v251, &v17[v209], v250);
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        v228 = "Move item into container resolved from bookmark data: ";
LABEL_122:
        MEMORY[0x1D38B2610](0xD000000000000036, (v228 - 32) | 0x8000000000000000);
        v245 = sub_1D30E88EC();
        MEMORY[0x1D38B2610](v245);

        MEMORY[0x1D38B2610](0x203A6F7420, 0xE500000000000000);
        sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
        v246 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v246);

        v222 = v28;
        v223 = v27;
LABEL_123:
        sub_1D2FF1804(v222, v223);
LABEL_124:
        v93 = *v252;
        (*(v106 + 8))(v108, v107);
      }

      return v93;
    case 39:
      v103 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48)];
      v104 = *v103;
      v105 = v103[1];
      v106 = v249;
      v107 = v250;
      v108 = v251;
      (*(v249 + 32))(v251, v17, v250);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();
      v109 = "Move item out of container source path: ";
LABEL_95:
      MEMORY[0x1D38B2610](0xD000000000000028, (v109 - 32) | 0x8000000000000000);
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v220 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v220);

      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EC930);
      v221 = sub_1D30E88EC();
      MEMORY[0x1D38B2610](v221);

      v222 = v104;
      v223 = v105;
      goto LABEL_123;
    case 40:
      v159 = *v17;
      v160 = *(v17 + 1);
      v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A168, &qword_1D30F5470);
      v162 = v161[12];
      v163 = &v17[v161[16]];
      v165 = *v163;
      v164 = *(v163 + 1);
      v166 = &v17[v161[20]];
      v167 = *(v166 + 1);
      if (v167)
      {
        *&v251 = *v166;
        (*(v9 + 32))(v11, &v17[v162], v8);
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD00000000000003CLL, 0x80000001D30EC8A0);
        v168 = sub_1D30E88EC();
        MEMORY[0x1D38B2610](v168);

        MEMORY[0x1D38B2610](0x203A6F7420, 0xE500000000000000);
        sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
        v169 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v169);

        MEMORY[0x1D38B2610](0xD000000000000019, 0x80000001D30EC8E0);
        MEMORY[0x1D38B2610](v165, v164);

        MEMORY[0x1D38B2610](0x4449206D61657420, 0xEA0000000000203ALL);
        MEMORY[0x1D38B2610](v251, v167);
      }

      else
      {
        (*(v9 + 32))(v11, &v17[v162], v8);
        *v252 = 0;
        *&v252[8] = 0xE000000000000000;
        sub_1D30E948C();
        MEMORY[0x1D38B2610](0xD00000000000003CLL, 0x80000001D30EC8A0);
        v242 = sub_1D30E88EC();
        MEMORY[0x1D38B2610](v242);

        MEMORY[0x1D38B2610](0x203A6F7420, 0xE500000000000000);
        sub_1D3045A34(&qword_1EC749A48, MEMORY[0x1E69E8380], MEMORY[0x1E69E83A0]);
        v243 = sub_1D30E977C();
        MEMORY[0x1D38B2610](v243);

        MEMORY[0x1D38B2610](0xD000000000000019, 0x80000001D30EC8E0);
        MEMORY[0x1D38B2610](v165, v164);
      }

      sub_1D2FF1804(v159, v160);
      v93 = *v252;
      (*(v9 + 8))(v11, v8);
      return v93;
    case 41:
      v46 = v249;
      v47 = v250;
      v48 = v251;
      (*(v249 + 32))(v251, v17, v250);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      v49 = 0x80000001D30EC880;
      v50 = 0xD00000000000001DLL;
LABEL_81:
      *v252 = v50;
      *&v252[8] = v49;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v213 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v213);

      v93 = *v252;
      (*(v46 + 8))(v48, v47);
      return v93;
    case 42:
      v24 = *v17;
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      v25 = 0x80000001D30EC850;
      v26 = 0xD00000000000002FLL;
LABEL_83:
      *v252 = v26;
      *&v252[8] = v25;
      v214 = v24 == 0;
LABEL_105:
      if (v214)
      {
        v52 = 0x65736C6166;
      }

      else
      {
        v52 = 1702195828;
      }

      goto LABEL_115;
    case 43:
      v70 = *v17;
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      *v252 = 0xD000000000000027;
      *&v252[8] = 0x80000001D30EC820;
      v71 = MEMORY[0x1D38B26B0](v70, MEMORY[0x1E69E6158]);
LABEL_35:
      v130 = v71;
      v55 = v72;

      v131 = v130;
      goto LABEL_52;
    case 44:
      return 0xD000000000000018;
    case 45:
      return 0xD000000000000013;
    case 46:
      return 0xD000000000000016;
    case 47:
      return 0xD000000000000011;
    case 48:
      return result;
    case 49:
      return 0x6164206573617245;
    default:
      v20 = *v17;
      v21 = *(v17 + 1);
      *v252 = 0;
      *&v252[8] = 0xE000000000000000;
      sub_1D30E948C();

      v22 = 0x80000001D30ED250;
      v23 = 0xD00000000000001FLL;
LABEL_69:
      *v252 = v23;
      *&v252[8] = v22;
LABEL_70:
      MEMORY[0x1D38B2610](v20, v21);
      goto LABEL_116;
  }
}

uint64_t sub_1D3045A34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D3045A7C()
{
  result = qword_1EC74A198;
  if (!qword_1EC74A198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A198);
  }

  return result;
}

unint64_t sub_1D3045AD0()
{
  result = qword_1EE314430;
  if (!qword_1EE314430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314430);
  }

  return result;
}

uint64_t sub_1D3045B24(char a1)
{
  result = 0x6F666E49707061;
  switch(a1)
  {
    case 1:
      result = 0x74736566696E616DLL;
      break;
    case 2:
    case 15:
    case 30:
      result = 0xD000000000000014;
      break;
    case 3:
    case 4:
    case 17:
    case 36:
    case 41:
    case 43:
    case 48:
      result = 0xD000000000000016;
      break;
    case 5:
    case 24:
      result = 0xD000000000000017;
      break;
    case 6:
    case 44:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0x4D6C6C6174736E69;
      break;
    case 8:
    case 26:
    case 27:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000025;
      break;
    case 11:
    case 23:
    case 29:
    case 32:
      result = 0xD000000000000012;
      break;
    case 12:
    case 13:
    case 33:
    case 40:
    case 42:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 16:
      result = 0x6176417349746573;
      break;
    case 18:
      v3 = 0x65766F6D6572;
      goto LABEL_19;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
    case 37:
      result = 0xD00000000000001CLL;
      break;
    case 21:
      result = 0x4C74736575716572;
      break;
    case 22:
      result = 0xD00000000000001BLL;
      break;
    case 25:
      result = 0xD000000000000013;
      break;
    case 28:
      result = 0xD000000000000013;
      break;
    case 31:
      result = 0xD000000000000013;
      break;
    case 34:
      v3 = 0x6E4968746170;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7341000000000000;
      break;
    case 35:
      result = 0x41726F4668746170;
      break;
    case 38:
      result = 0x6F436F5468746170;
      break;
    case 39:
      result = 0xD000000000000013;
      break;
    case 45:
      result = 0x744965766F6D6572;
      break;
    case 46:
      result = 0x70556E61656C63;
      break;
    case 47:
      result = 0x7461446573617265;
      break;
    case 49:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D3045F9C(uint64_t a1)
{
  v2 = sub_1D304E8F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3045FD8(uint64_t a1)
{
  v2 = sub_1D304E8F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D3046014()
{
  v1 = 0x626F6C4768746977;
  v2 = 0x6E6F6973726576;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (*v0)
  {
    v1 = 1953722216;
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

uint64_t sub_1D3046094@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D30D9608(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D30460BC(uint64_t a1)
{
  v2 = sub_1D304F134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30460F8(uint64_t a1)
{
  v2 = sub_1D304F134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046134(uint64_t a1)
{
  v2 = sub_1D304E948();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046170(uint64_t a1)
{
  v2 = sub_1D304E948();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30461C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D30EE570 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D30E97CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D304625C(uint64_t a1)
{
  v2 = sub_1D304F1DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046298(uint64_t a1)
{
  v2 = sub_1D304F1DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D30462D4()
{
  v1 = 0x44496D616574;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1D3046324@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D30D9778(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D304634C(uint64_t a1)
{
  v2 = sub_1D304F188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046388(uint64_t a1)
{
  v2 = sub_1D304F188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30463C4(uint64_t a1)
{
  v2 = sub_1D304EAEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046400(uint64_t a1)
{
  v2 = sub_1D304EAEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D30EE5B0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D30E97CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D30464EC(uint64_t a1)
{
  v2 = sub_1D304F4D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046528(uint64_t a1)
{
  v2 = sub_1D304F4D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046564(uint64_t a1)
{
  v2 = sub_1D304F428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30465A0(uint64_t a1)
{
  v2 = sub_1D304F428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30465DC(uint64_t a1)
{
  v2 = sub_1D304F32C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046618(uint64_t a1)
{
  v2 = sub_1D304F32C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046678@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x646E754268746977 && a2 == 0xED0000734449656CLL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D3046708(uint64_t a1)
{
  v2 = sub_1D304E2F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046744(uint64_t a1)
{
  v2 = sub_1D304E2F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30467A0(uint64_t a1)
{
  v2 = sub_1D304EFE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30467DC(uint64_t a1)
{
  v2 = sub_1D304EFE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046818(uint64_t a1)
{
  v2 = sub_1D304E3F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046854(uint64_t a1)
{
  v2 = sub_1D304E3F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046898@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D30D988C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D30468C0(uint64_t a1)
{
  v2 = sub_1D304E2A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30468FC(uint64_t a1)
{
  v2 = sub_1D304E2A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046954@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001D30EE430 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D30E97CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D30469E8(uint64_t a1)
{
  v2 = sub_1D304E348();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046A24(uint64_t a1)
{
  v2 = sub_1D304E348();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046A84(uint64_t a1)
{
  v2 = sub_1D304E63C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046AC0(uint64_t a1)
{
  v2 = sub_1D304E63C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046AFC(uint64_t a1)
{
  v2 = sub_1D304E5E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046B38(uint64_t a1)
{
  v2 = sub_1D304E5E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046B74()
{
  v1 = 0x4449656C646E7562;
  if (*v0 != 1)
  {
    v1 = 0x44496D616574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6150656372756F73;
  }
}

uint64_t sub_1D3046BD0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D30DA7DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D3046BF8(uint64_t a1)
{
  v2 = sub_1D304E6E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046C34(uint64_t a1)
{
  v2 = sub_1D304E6E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046C70(uint64_t a1)
{
  v2 = sub_1D304E594();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046CAC(uint64_t a1)
{
  v2 = sub_1D304E594();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046CE8(uint64_t a1)
{
  v2 = sub_1D304F08C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046D24(uint64_t a1)
{
  v2 = sub_1D304F08C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046D60(uint64_t a1)
{
  v2 = sub_1D304E39C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046D9C(uint64_t a1)
{
  v2 = sub_1D304E39C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3046DD8()
{
  if (*v0)
  {
    return 1836020326;
  }

  else
  {
    return 0x656C6F52726F66;
  }
}

uint64_t sub_1D3046E0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C6F52726F66 && a2 == 0xE700000000000000;
  if (v6 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1836020326 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D3046EE8(uint64_t a1)
{
  v2 = sub_1D304EA44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3046F24(uint64_t a1)
{
  v2 = sub_1D304EA44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D3046F60()
{
  v1 = 0xD000000000000012;
  if (*v0 != 1)
  {
    v1 = 0x44496D616574;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1836020326;
  }
}

uint64_t sub_1D3046FB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D30DA8F8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D3046FDC(uint64_t a1)
{
  v2 = sub_1D304F284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047018(uint64_t a1)
{
  v2 = sub_1D304F284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047054(uint64_t a1)
{
  v2 = sub_1D304F380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047090(uint64_t a1)
{
  v2 = sub_1D304F380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30470CC(uint64_t a1)
{
  v2 = sub_1D304EE40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047108(uint64_t a1)
{
  v2 = sub_1D304EE40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D3047144()
{
  v1 = 0x44496D616574;
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
    return 0xD000000000000012;
  }
}

uint64_t sub_1D30471A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D30DAA14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D30471D0(uint64_t a1)
{
  v2 = sub_1D304F47C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304720C(uint64_t a1)
{
  v2 = sub_1D304F47C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D3047248()
{
  v1 = 28532;
  v2 = 0x44496D616574;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000012;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000018;
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

uint64_t sub_1D30472B8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D30DAB38(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D30472E0(uint64_t a1)
{
  v2 = sub_1D304E498();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304731C(uint64_t a1)
{
  v2 = sub_1D304E498();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047358(uint64_t a1)
{
  v2 = sub_1D304E540();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047394(uint64_t a1)
{
  v2 = sub_1D304E540();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30473D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6150656372756F73 && a2 == 0xEA00000000006874;
  if (v6 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6B72616D6B6F6F62 && a2 == 0xEC00000061746144)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D30474B8(uint64_t a1)
{
  v2 = sub_1D304E4EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30474F4(uint64_t a1)
{
  v2 = sub_1D304E4EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D304754C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001D30EE510 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D30E97CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D30475E0(uint64_t a1)
{
  v2 = sub_1D304EC3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304761C(uint64_t a1)
{
  v2 = sub_1D304EC3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D304766C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x636974617473 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D30476F0(uint64_t a1)
{
  v2 = sub_1D304EC90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304772C(uint64_t a1)
{
  v2 = sub_1D304EC90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D3047768()
{
  v1 = 29793;
  v2 = 0x44496D616574;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x4449656C646E7562;
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

uint64_t sub_1D30477D8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D30DADBC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D3047800(uint64_t a1)
{
  v2 = sub_1D304E78C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304783C(uint64_t a1)
{
  v2 = sub_1D304E78C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D3047878()
{
  v1 = 0x44496C61626F6C67;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000019;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 29793;
  }
}

uint64_t sub_1D30478CC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D30DAF1C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D30478F4(uint64_t a1)
{
  v2 = sub_1D304E84C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047930(uint64_t a1)
{
  v2 = sub_1D304E84C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D304796C(uint64_t a1)
{
  v2 = sub_1D304E690();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30479A8(uint64_t a1)
{
  v2 = sub_1D304E690();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30479E4(uint64_t a1)
{
  v2 = sub_1D304F2D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047A20(uint64_t a1)
{
  v2 = sub_1D304F2D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047A5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001D30EE470 == a2 || (sub_1D30E97CC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x44496D616574 && a2 == 0xE600000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D30E97CC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1D3047B40(uint64_t a1)
{
  v2 = sub_1D304E738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047B7C(uint64_t a1)
{
  v2 = sub_1D304E738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047BB8(uint64_t a1)
{
  v2 = sub_1D304EBE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047BF4(uint64_t a1)
{
  v2 = sub_1D304EBE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047C30(uint64_t a1)
{
  v2 = sub_1D304EE94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047C6C(uint64_t a1)
{
  v2 = sub_1D304EE94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047CA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001D30EE4D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D30E97CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D3047D3C(uint64_t a1)
{
  v2 = sub_1D304E8A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047D78(uint64_t a1)
{
  v2 = sub_1D304E8A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047DB4(uint64_t a1)
{
  v2 = sub_1D304EEE8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047DF0(uint64_t a1)
{
  v2 = sub_1D304EEE8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047E2C(uint64_t a1)
{
  v2 = sub_1D304F0E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047E68(uint64_t a1)
{
  v2 = sub_1D304F0E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047EA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6961746E6F436E69 && a2 == 0xED0000744172656ELL)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D3047F34(uint64_t a1)
{
  v2 = sub_1D304E444();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3047F70(uint64_t a1)
{
  v2 = sub_1D304E444();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3047FC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x444968746977 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D3048044(uint64_t a1)
{
  v2 = sub_1D304EA98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3048080(uint64_t a1)
{
  v2 = sub_1D304EA98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30480BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D30EE4F0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D3048198(uint64_t a1)
{
  v2 = sub_1D304EB40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30481D4(uint64_t a1)
{
  v2 = sub_1D304EB40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3048210()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x6F72724568746977;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000017;
  }
}

uint64_t sub_1D304827C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D30DB034(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D30482A4(uint64_t a1)
{
  v2 = sub_1D304EF3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30482E0(uint64_t a1)
{
  v2 = sub_1D304EF3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1D304831C()
{
  v1 = 0x496E6F6973726576;
  v2 = 0x6C646E7542707061;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1D30483A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D30DB160(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D30483CC(uint64_t a1)
{
  v2 = sub_1D304EDEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3048408(uint64_t a1)
{
  v2 = sub_1D304EDEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3048444()
{
  if (*v0)
  {
    return 0x6C646E7542707061;
  }

  else
  {
    return 7499622;
  }
}

uint64_t sub_1D3048480@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7499622 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6C646E7542707061 && a2 == 0xEB00000000444965)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D3048560(uint64_t a1)
{
  v2 = sub_1D304ECE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304859C(uint64_t a1)
{
  v2 = sub_1D304ECE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30485D8()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1D304860C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D30E97CC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D30EE550 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D30E97CC();

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

uint64_t sub_1D30486E8(uint64_t a1)
{
  v2 = sub_1D304EF90();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3048724(uint64_t a1)
{
  v2 = sub_1D304EF90();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3048760(uint64_t a1)
{
  v2 = sub_1D304F3D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D304879C(uint64_t a1)
{
  v2 = sub_1D304F3D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30487D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x626F6C4768746977 && a2 == 0xEC00000044496C61)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D3048864(uint64_t a1)
{
  v2 = sub_1D304F038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30488A0(uint64_t a1)
{
  v2 = sub_1D304F038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30488F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656C6F52726F66 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1D30E97CC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1D304897C(uint64_t a1)
{
  v2 = sub_1D304E99C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30489B8(uint64_t a1)
{
  v2 = sub_1D304E99C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30489F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001D30EE470 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_1D30E97CC();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_1D3048A88(uint64_t a1)
{
  v2 = sub_1D304F230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3048AC4(uint64_t a1)
{
  v2 = sub_1D304F230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void Helper.Message.encode(to:)(void *a1)
{
  v463 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1B0, &qword_1D30F54B0);
  v505 = *(v463 - 8);
  MEMORY[0x1EEE9AC00](v463);
  v462 = &v359 - v2;
  v461 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1B8, &qword_1D30F54B8);
  v504 = *(v461 - 8);
  MEMORY[0x1EEE9AC00](v461);
  v460 = &v359 - v3;
  v458 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1C0, &qword_1D30F54C0);
  v457 = *(v458 - 8);
  MEMORY[0x1EEE9AC00](v458);
  v453 = &v359 - v4;
  v452 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1C8, &qword_1D30F54C8);
  v450 = *(v452 - 8);
  MEMORY[0x1EEE9AC00](v452);
  v447 = &v359 - v5;
  v455 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1D0, &qword_1D30F54D0);
  v502 = *(v455 - 8);
  MEMORY[0x1EEE9AC00](v455);
  v451 = &v359 - v6;
  v465 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1D8, &qword_1D30F54D8);
  v509 = *(v465 - 8);
  MEMORY[0x1EEE9AC00](v465);
  v464 = &v359 - v7;
  v454 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1E0, &qword_1D30F54E0);
  v501 = *(v454 - 8);
  MEMORY[0x1EEE9AC00](v454);
  v449 = &v359 - v8;
  v459 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1E8, &qword_1D30F54E8);
  v503 = *(v459 - 8);
  MEMORY[0x1EEE9AC00](v459);
  v456 = &v359 - v9;
  v445 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1F0, &qword_1D30F54F0);
  v499 = *(v445 - 8);
  MEMORY[0x1EEE9AC00](v445);
  v444 = &v359 - v10;
  v448 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1F8, &qword_1D30F54F8);
  v500 = *(v448 - 8);
  MEMORY[0x1EEE9AC00](v448);
  v446 = &v359 - v11;
  v439 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A200, &qword_1D30F5500);
  v497 = *(v439 - 8);
  MEMORY[0x1EEE9AC00](v439);
  v437 = &v359 - v12;
  v433 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A208, &qword_1D30F5508);
  v432 = *(v433 - 8);
  MEMORY[0x1EEE9AC00](v433);
  v431 = &v359 - v13;
  v442 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A210, &qword_1D30F5510);
  v498 = *(v442 - 8);
  MEMORY[0x1EEE9AC00](v442);
  v440 = &v359 - v14;
  v435 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A218, &qword_1D30F5518);
  v495 = *(v435 - 8);
  MEMORY[0x1EEE9AC00](v435);
  v434 = &v359 - v15;
  v443 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A220, &qword_1D30F5520);
  v508 = *(v443 - 8);
  MEMORY[0x1EEE9AC00](v443);
  v441 = &v359 - v16;
  v438 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A228, &qword_1D30F5528);
  v496 = *(v438 - 8);
  MEMORY[0x1EEE9AC00](v438);
  v436 = &v359 - v17;
  v18 = sub_1D30E8D9C();
  v524 = *(v18 - 8);
  v525 = v18;
  v19 = MEMORY[0x1EEE9AC00](v18);
  v430 = &v359 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v513 = &v359 - v22;
  v23 = MEMORY[0x1EEE9AC00](v21);
  v520 = &v359 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v512 = &v359 - v26;
  v27 = MEMORY[0x1EEE9AC00](v25);
  v519 = &v359 - v28;
  v29 = MEMORY[0x1EEE9AC00](v27);
  v429 = &v359 - v30;
  v31 = MEMORY[0x1EEE9AC00](v29);
  v514 = &v359 - v32;
  v33 = MEMORY[0x1EEE9AC00](v31);
  v516 = &v359 - v34;
  MEMORY[0x1EEE9AC00](v33);
  v515 = &v359 - v35;
  v428 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A230, &qword_1D30F5530);
  v494 = *(v428 - 8);
  MEMORY[0x1EEE9AC00](v428);
  v427 = &v359 - v36;
  v426 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A238, &qword_1D30F5538);
  v493 = *(v426 - 8);
  MEMORY[0x1EEE9AC00](v426);
  v425 = &v359 - v37;
  v422 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A240, &qword_1D30F5540);
  v420 = *(v422 - 8);
  MEMORY[0x1EEE9AC00](v422);
  v419 = &v359 - v38;
  v423 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A248, &qword_1D30F5548);
  v491 = *(v423 - 8);
  MEMORY[0x1EEE9AC00](v423);
  v418 = &v359 - v39;
  v424 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A250, &qword_1D30F5550);
  v492 = *(v424 - 8);
  MEMORY[0x1EEE9AC00](v424);
  v421 = &v359 - v40;
  v417 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A258, &qword_1D30F5558);
  v490 = *(v417 - 8);
  MEMORY[0x1EEE9AC00](v417);
  v415 = &v359 - v41;
  v411 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A260, &qword_1D30F5560);
  v409 = *(v411 - 8);
  MEMORY[0x1EEE9AC00](v411);
  v407 = &v359 - v42;
  v416 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A268, &qword_1D30F5568);
  v489 = *(v416 - 8);
  MEMORY[0x1EEE9AC00](v416);
  v414 = &v359 - v43;
  v413 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A270, &qword_1D30F5570);
  v488 = *(v413 - 8);
  MEMORY[0x1EEE9AC00](v413);
  v410 = &v359 - v44;
  v405 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A278, &qword_1D30F5578);
  v487 = *(v405 - 8);
  MEMORY[0x1EEE9AC00](v405);
  v403 = &v359 - v45;
  v401 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A280, &qword_1D30F5580);
  v485 = *(v401 - 8);
  MEMORY[0x1EEE9AC00](v401);
  v400 = &v359 - v46;
  v404 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A288, &qword_1D30F5588);
  v486 = *(v404 - 8);
  MEMORY[0x1EEE9AC00](v404);
  v402 = &v359 - v47;
  v521 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A290, &qword_1D30F5590);
  v507 = *(v521 - 8);
  MEMORY[0x1EEE9AC00](v521);
  v406 = &v359 - v48;
  v412 = sub_1D30E8A4C();
  v511 = *(v412 - 8);
  MEMORY[0x1EEE9AC00](v412);
  v408 = &v359 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  v398 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A298, &qword_1D30F5598);
  v483 = *(v398 - 8);
  MEMORY[0x1EEE9AC00](v398);
  v396 = &v359 - v50;
  v395 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2A0, &qword_1D30F55A0);
  v482 = *(v395 - 8);
  MEMORY[0x1EEE9AC00](v395);
  v393 = &v359 - v51;
  v394 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2A8, &qword_1D30F55A8);
  v481 = *(v394 - 8);
  MEMORY[0x1EEE9AC00](v394);
  v391 = &v359 - v52;
  v399 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2B0, &qword_1D30F55B0);
  v484 = *(v399 - 8);
  MEMORY[0x1EEE9AC00](v399);
  v397 = &v359 - v53;
  v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2B8, &qword_1D30F55B8);
  v480 = *(v392 - 8);
  MEMORY[0x1EEE9AC00](v392);
  v390 = &v359 - v54;
  v387 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2C0, &qword_1D30F55C0);
  v479 = *(v387 - 8);
  MEMORY[0x1EEE9AC00](v387);
  v386 = &v359 - v55;
  v385 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2C8, &qword_1D30F55C8);
  v478 = *(v385 - 8);
  MEMORY[0x1EEE9AC00](v385);
  v384 = &v359 - v56;
  v382 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2D0, &qword_1D30F55D0);
  v381 = *(v382 - 8);
  MEMORY[0x1EEE9AC00](v382);
  v379 = &v359 - v57;
  v383 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2D8, &qword_1D30F55D8);
  v477 = *(v383 - 8);
  MEMORY[0x1EEE9AC00](v383);
  v380 = &v359 - v58;
  v389 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2E0, &qword_1D30F55E0);
  v506 = *(v389 - 8);
  MEMORY[0x1EEE9AC00](v389);
  v388 = &v359 - v59;
  v60 = sub_1D30E8D5C();
  v522 = *(v60 - 8);
  v523 = v60;
  v61 = MEMORY[0x1EEE9AC00](v60);
  v518 = &v359 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v61);
  v510 = &v359 - v63;
  v359 = type metadata accessor for AssetPackHost(0);
  MEMORY[0x1EEE9AC00](v359);
  v517 = &v359 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  v378 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2E8, &qword_1D30F55E8);
  v476 = *(v378 - 8);
  MEMORY[0x1EEE9AC00](v378);
  v377 = &v359 - v65;
  v374 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2F0, &qword_1D30F55F0);
  v474 = *(v374 - 8);
  MEMORY[0x1EEE9AC00](v374);
  v372 = &v359 - v66;
  v373 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A2F8, &qword_1D30F55F8);
  v473 = *(v373 - 8);
  MEMORY[0x1EEE9AC00](v373);
  v371 = &v359 - v67;
  v376 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A300, &qword_1D30F5600);
  v475 = *(v376 - 8);
  MEMORY[0x1EEE9AC00](v376);
  v375 = &v359 - v68;
  v370 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A308, &qword_1D30F5608);
  v472 = *(v370 - 8);
  MEMORY[0x1EEE9AC00](v370);
  v368 = &v359 - v69;
  v367 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A310, &qword_1D30F5610);
  v470 = *(v367 - 8);
  MEMORY[0x1EEE9AC00](v367);
  v365 = &v359 - v70;
  v369 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A318, &qword_1D30F5618);
  v471 = *(v369 - 8);
  MEMORY[0x1EEE9AC00](v369);
  v366 = &v359 - v71;
  v363 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A320, &qword_1D30F5620);
  v468 = *(v363 - 8);
  MEMORY[0x1EEE9AC00](v363);
  v361 = &v359 - v72;
  v360 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A328, &qword_1D30F5628);
  v467 = *(v360 - 8);
  MEMORY[0x1EEE9AC00](v360);
  v74 = &v359 - v73;
  v364 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A330, &qword_1D30F5630);
  v469 = *(v364 - 8);
  MEMORY[0x1EEE9AC00](v364);
  v362 = &v359 - v75;
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A338, &qword_1D30F5638);
  v466 = *(v76 - 8);
  MEMORY[0x1EEE9AC00](v76);
  v78 = &v359 - v77;
  v79 = type metadata accessor for Helper.Message(0);
  MEMORY[0x1EEE9AC00](v79);
  v81 = &v359 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A340, &qword_1D30F5640);
  v529 = *(v82 - 8);
  v530 = v82;
  MEMORY[0x1EEE9AC00](v82);
  v84 = &v359 - v83;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D304E2A0();
  v531 = v84;
  sub_1D30E992C();
  sub_1D3058338(v527, v81, type metadata accessor for Helper.Message);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      *&v527 = *(v81 + 2);
      v250 = v81[32];
      LOBYTE(v532) = 1;
      sub_1D304F47C();
      v251 = v362;
      v145 = v530;
      v252 = v531;
      sub_1D30E96DC();
      LOBYTE(v532) = 0;
      v253 = v364;
      v254 = v526;
      sub_1D30E970C();
      if (!v254)
      {
        LODWORD(v526) = v250;

        LOBYTE(v532) = 1;
        sub_1D30E96EC();

        LOBYTE(v532) = 2;
        sub_1D30E971C();
        (*(v469 + 8))(v251, v253);
        goto LABEL_118;
      }

      (*(v469 + 8))(v251, v253);
      (*(v529 + 8))(v252, v145);
      return;
    case 2u:
      LOBYTE(v532) = 2;
      sub_1D304F428();
      v227 = v530;
      v228 = v531;
      sub_1D30E96DC();
      v229 = v360;
      sub_1D30E970C();

      v234 = &v499;
      goto LABEL_99;
    case 3u:
      LOBYTE(v532) = 3;
      sub_1D304F3D4();
      v74 = v361;
      v227 = v530;
      v228 = v531;
      sub_1D30E96DC();
      v229 = v363;
      sub_1D30E970C();

      v234 = &v500;
      goto LABEL_99;
    case 4u:
      LOBYTE(v532) = 4;
      sub_1D304F380();
      v176 = v366;
      v177 = v530;
      v178 = v531;
      sub_1D30E96DC();
      LOBYTE(v532) = 0;
      v179 = v369;
      v197 = v526;
      sub_1D30E970C();

      if (!v197)
      {
        LOBYTE(v532) = 1;
        sub_1D30E96EC();
      }

      v331 = &v503;
      goto LABEL_95;
    case 5u:
      LOBYTE(v532) = 5;
      sub_1D304F32C();
      v74 = v365;
      v227 = v530;
      v228 = v531;
      sub_1D30E96DC();
      v229 = v367;
      sub_1D30E970C();

      v234 = &v502;
      goto LABEL_99;
    case 6u:
      LOBYTE(v532) = 6;
      sub_1D304F2D8();
      v74 = v368;
      v227 = v530;
      v228 = v531;
      sub_1D30E96DC();
      v229 = v370;
      sub_1D30E970C();

      v234 = &v504;
      goto LABEL_99;
    case 7u:
      v243 = *v81;
      v242 = *(v81 + 1);
      v244 = *(v81 + 2);
      *&v527 = *(v81 + 3);
      v524 = *(v81 + 4);
      v525 = v244;
      LOBYTE(v532) = 7;
      sub_1D304F284();
      v245 = v375;
      v227 = v530;
      v246 = v531;
      sub_1D30E96DC();
      *&v532 = v243;
      *(&v532 + 1) = v242;
      v537 = 0;
      sub_1D2FF92C4();
      v247 = v376;
      v248 = v526;
      sub_1D30E974C();
      if (v248)
      {

        (*(v475 + 8))(v245, v247);
        (*(v529 + 8))(v246, v227);
        v249 = v243;
        goto LABEL_116;
      }

      LOBYTE(v532) = 1;
      sub_1D30E970C();

      LOBYTE(v532) = 2;
      sub_1D30E96EC();
      sub_1D2FF1804(v243, v242);

      (*(v475 + 8))(v245, v247);
      v148 = *(v529 + 8);
      v149 = v531;
      goto LABEL_100;
    case 8u:
      LOBYTE(v532) = 8;
      sub_1D304F230();
      v74 = v371;
      v227 = v530;
      v228 = v531;
      sub_1D30E96DC();
      v229 = v373;
      sub_1D30E970C();

      v234 = &v505;
      goto LABEL_99;
    case 9u:
      LOBYTE(v532) = 9;
      sub_1D304F1DC();
      v221 = v372;
      v222 = v530;
      v223 = v531;
      sub_1D30E96DC();
      v224 = v374;
      sub_1D30E971C();
      v225 = &v506;
      goto LABEL_80;
    case 0xAu:
      *&v527 = *(v81 + 2);
      v294 = v81[32];
      LOBYTE(v532) = 10;
      sub_1D304F188();
      v295 = v377;
      v145 = v530;
      v252 = v531;
      sub_1D30E96DC();
      LOBYTE(v532) = 0;
      v296 = v378;
      v297 = v526;
      sub_1D30E970C();
      if (v297)
      {
      }

      else
      {
        LODWORD(v526) = v294;

        LOBYTE(v532) = 1;
        sub_1D30E96EC();

        LOBYTE(v532) = 2;
        sub_1D30E971C();
      }

      (*(v476 + 8))(v295, v296);
LABEL_118:
      v148 = *(v529 + 8);
      v149 = v252;
      goto LABEL_119;
    case 0xBu:
      v182 = *(v81 + 1);
      *&v527 = *v81;
      v183 = *(v81 + 2);
      v184 = *(v81 + 3);
      v185 = *(v81 + 5);
      v524 = *(v81 + 4);
      v525 = v183;
      v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A8, &qword_1D30F54A8);
      v187 = v186[12];
      v521 = *&v81[v186[16]];
      v188 = v186[20];
      sub_1D3056830(&v81[v187], v517, type metadata accessor for AssetPackHost);
      v189 = v522;
      v190 = v510;
      (*(v522 + 32))(v510, &v81[v188], v523);
      LOBYTE(v532) = 11;
      sub_1D304F134();
      v191 = v388;
      v193 = v530;
      v192 = v531;
      sub_1D30E96DC();
      *&v532 = v527;
      *(&v532 + 1) = v182;
      *&v527 = v182;
      v533 = v525;
      v534 = v184;
      v535 = v524;
      v536 = v185;
      v525 = v185;
      v537 = 0;
      sub_1D2FF6708();
      v194 = v389;
      v195 = v526;
      sub_1D30E974C();
      if (v195)
      {
        (*(v506 + 8))(v191, v194);
        (*(v189 + 8))(v190, v523);
        sub_1D3065284(v517, type metadata accessor for AssetPackHost);
        (*(v529 + 8))(v192, v193);

        goto LABEL_73;
      }

      LOBYTE(v532) = 1;
      sub_1D3045A34(&qword_1EC749A60, type metadata accessor for AssetPackHost, &protocol conformance descriptor for AssetPackHost);
      v332 = v517;
      sub_1D30E974C();
      LOBYTE(v532) = 2;
      sub_1D30E973C();
      v111 = v530;
      v112 = v531;
      v346 = v522;
      v347 = v523;
      v348 = v510;
      LOBYTE(v532) = 3;
      sub_1D3045A34(&qword_1EC749A68, MEMORY[0x1E69E8380], MEMORY[0x1E69E8388]);
      sub_1D30E974C();
      (*(v506 + 8))(0, v194);
      (*(v346 + 8))(v348, v347);
      sub_1D3065284(v332, type metadata accessor for AssetPackHost);
      goto LABEL_47;
    case 0xCu:
      v215 = *(v81 + 1);
      *&v527 = *v81;
      v216 = *(v81 + 2);
      v217 = *(v81 + 3);
      v219 = *(v81 + 4);
      v218 = *(v81 + 5);
      LOBYTE(v532) = 12;
      sub_1D304F0E0();
      v220 = v380;
      v172 = v530;
      v171 = v531;
      sub_1D30E96DC();
      *&v532 = v527;
      *(&v532 + 1) = v215;
      *&v527 = v215;
      v533 = v216;
      v534 = v217;
      v173 = v220;
      v535 = v219;
      v536 = v218;
      sub_1D2FF6708();
      v174 = v383;
      sub_1D30E974C();
      v175 = &v509;
      goto LABEL_55;
    case 0xDu:
      v288 = *(v81 + 1);
      *&v527 = *v81;
      v289 = *(v81 + 2);
      v290 = *(v81 + 3);
      v292 = *(v81 + 4);
      v291 = *(v81 + 5);
      LOBYTE(v532) = 14;
      sub_1D304F038();
      v293 = v384;
      v172 = v530;
      v171 = v531;
      sub_1D30E96DC();
      *&v532 = v527;
      *(&v532 + 1) = v288;
      *&v527 = v288;
      v533 = v289;
      v534 = v290;
      v173 = v293;
      v535 = v292;
      v536 = v291;
      sub_1D2FF6708();
      v174 = v385;
      sub_1D30E974C();
      v175 = &v510;
      goto LABEL_55;
    case 0xEu:
      v165 = *(v81 + 1);
      *&v527 = *v81;
      v166 = *(v81 + 2);
      v167 = *(v81 + 3);
      v169 = *(v81 + 4);
      v168 = *(v81 + 5);
      LOBYTE(v532) = 15;
      sub_1D304EFE4();
      v170 = v386;
      v172 = v530;
      v171 = v531;
      sub_1D30E96DC();
      *&v532 = v527;
      *(&v532 + 1) = v165;
      *&v527 = v165;
      v533 = v166;
      v534 = v167;
      v173 = v170;
      v535 = v169;
      v536 = v168;
      sub_1D2FF6708();
      v174 = v387;
      sub_1D30E974C();
      v175 = &v511;
      goto LABEL_55;
    case 0xFu:
      v235 = *(v81 + 2);
      *&v527 = *(v81 + 1);
      v236 = *(v81 + 3);
      v237 = *(v81 + 4);
      v238 = *(v81 + 6);
      v524 = *(v81 + 5);
      v525 = v236;
      LOBYTE(v532) = 16;
      sub_1D304EF90();
      v239 = v390;
      v111 = v530;
      v112 = v531;
      sub_1D30E96DC();
      LOBYTE(v532) = 0;
      v240 = v392;
      v241 = v526;
      sub_1D30E971C();
      if (v241)
      {

        (*(v480 + 8))(v239, v240);
        goto LABEL_47;
      }

      *&v532 = v527;
      *(&v532 + 1) = v235;
      v533 = v525;
      v534 = v237;
      v535 = v524;
      v536 = v238;
      v537 = 1;
      sub_1D2FF6708();
      sub_1D30E974C();
      (*(v480 + 8))(v239, v240);
      (*(v529 + 8))(v531, v530);

      goto LABEL_73;
    case 0x10u:
      v150 = *v81;
      v151 = *(v81 + 1);
      v152 = *(v81 + 2);
      v153 = *(v81 + 3);
      v154 = *(v81 + 4);
      v155 = *(v81 + 5);
      v156 = *(v81 + 7);
      v524 = *(v81 + 6);
      v525 = v150;
      *&v527 = v156;
      v157 = *(v81 + 8);
      v522 = *(v81 + 9);
      v523 = v157;
      LOBYTE(v532) = 17;
      sub_1D304EF3C();
      v158 = v397;
      v160 = v530;
      v159 = v531;
      sub_1D30E96DC();
      *&v532 = v525;
      *(&v532 + 1) = v151;
      v161 = v158;
      v533 = v152;
      v534 = v153;
      v535 = v154;
      v536 = v155;
      v537 = 0;
      sub_1D2FF6708();
      v162 = v399;
      v163 = v526;
      sub_1D30E974C();
      if (v163)
      {

        (*(v484 + 8))(v158, v162);
        (*(v529 + 8))(v159, v160);
      }

      else
      {
        v329 = v522;
        v328 = v523;
        v330 = v527;

        LOBYTE(v532) = 1;
        sub_1D30E973C();
        v343 = v330;
        *&v532 = v330;
        *(&v532 + 1) = v328;
        v533 = v329;
        v537 = 2;
        sub_1D304EB94();
        sub_1D30E96FC();
        v344 = v530;
        v345 = v531;
        (*(v484 + 8))(v161, v162);
        (*(v529 + 8))(v345, v344);
      }

      return;
    case 0x11u:
      v266 = *(v81 + 1);
      *&v527 = *v81;
      v267 = *(v81 + 2);
      v268 = *(v81 + 3);
      v270 = *(v81 + 4);
      v269 = *(v81 + 5);
      LOBYTE(v532) = 18;
      sub_1D304EEE8();
      v271 = v391;
      v172 = v530;
      v171 = v531;
      sub_1D30E96DC();
      *&v532 = v527;
      *(&v532 + 1) = v266;
      *&v527 = v266;
      v533 = v267;
      v534 = v268;
      v173 = v271;
      v535 = v270;
      v536 = v269;
      sub_1D2FF6708();
      v174 = v394;
      sub_1D30E974C();
      v175 = &v513;
LABEL_55:
      (*(*(v175 - 32) + 1))(v173, v174);
      (*(v529 + 8))(v171, v172);

      goto LABEL_73;
    case 0x12u:
      LOBYTE(v532) = 19;
      sub_1D304EE94();
      v74 = v393;
      v227 = v530;
      v228 = v531;
      sub_1D30E96DC();
      v229 = v395;
      sub_1D30E96EC();

      v234 = &v514;
      goto LABEL_99;
    case 0x13u:
      LOBYTE(v532) = 20;
      sub_1D304EE40();
      v74 = v396;
      v227 = v530;
      v228 = v531;
      sub_1D30E96DC();
      v229 = v398;
      sub_1D30E970C();

      v234 = &v515;
      goto LABEL_99;
    case 0x14u:
      *&v527 = *v81;
      v273 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A0, &qword_1D30F54A0);
      v274 = v273[12];
      v275 = *&v81[v273[16]];
      v276 = &v81[v273[20]];
      v278 = *v276;
      v277 = v276[1];
      v523 = v278;
      v524 = v275;
      v525 = v277;
      v279 = v511;
      v280 = v408;
      v281 = v412;
      (*(v511 + 32))(v408, &v81[v274], v412);
      LOBYTE(v532) = 21;
      sub_1D304EDEC();
      v282 = v406;
      v284 = v530;
      v283 = v531;
      sub_1D30E96DC();
      LOBYTE(v532) = 0;
      v285 = v526;
      sub_1D30E970C();
      if (v285)
      {

        (*(v507 + 8))(v282, v521);
        (*(v279 + 8))(v280, v281);
        (*(v529 + 8))(v283, v284);
        return;
      }

      LOBYTE(v532) = 1;
      sub_1D3045A34(&qword_1EC7494B0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      sub_1D30E974C();
      v337 = v281;
      LOBYTE(v532) = 2;
      v354 = v282;
      sub_1D30E975C();
      v355 = v511;
      LOBYTE(v532) = 3;
      sub_1D30E970C();
      v111 = v530;

      (*(v507 + 8))(v354, v521);
      (*(v355 + 8))(v280, v337);
      v148 = *(v529 + 8);
      v149 = v283;
      goto LABEL_48;
    case 0x15u:
      v286 = *v81;
      LOBYTE(v532) = 22;
      sub_1D304ECE4();
      v231 = v402;
      v85 = v530;
      v86 = v531;
      sub_1D30E96DC();
      *&v532 = v286;
      v537 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A460, &qword_1D30F5660);
      sub_1D304ED38();
      v232 = v404;
      v287 = v526;
      sub_1D30E974C();
      if (v287)
      {

        (*(v486 + 8))(v231, v232);
        (*(v529 + 8))(v86, v85);
        goto LABEL_73;
      }

      LOBYTE(v532) = 1;
      sub_1D30E970C();

      v335 = &v518;
      goto LABEL_108;
    case 0x16u:
      LOBYTE(v532) = 23;
      sub_1D304EC90();
      v221 = v400;
      v222 = v530;
      v223 = v531;
      sub_1D30E96DC();
      v224 = v401;
      sub_1D30E971C();
      v225 = &v517;
      goto LABEL_80;
    case 0x17u:
      v315 = *v81;
      LOBYTE(v532) = 24;
      sub_1D304EC3C();
      v88 = v403;
      v89 = v530;
      v90 = v531;
      sub_1D30E96DC();
      *&v532 = v315;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A440, &qword_1D30F5658);
      sub_1D3056940(&qword_1EC74A448, sub_1D2FF6708, MEMORY[0x1E69E64F0]);
      v91 = v405;
      sub_1D30E974C();
      v92 = &v519;
      goto LABEL_72;
    case 0x18u:
      v130 = *v81;
      v129 = *(v81 + 1);
      LOBYTE(v532) = 25;
      sub_1D304EBE8();
      v231 = v410;
      v85 = v530;
      v86 = v531;
      sub_1D30E96DC();
      *&v532 = v130;
      *(&v532 + 1) = v129;
      v537 = 0;
      sub_1D2FF92C4();
      v232 = v413;
      v233 = v526;
      sub_1D30E974C();
      if (v233)
      {
        (*(v488 + 8))(v231, v232);
        goto LABEL_87;
      }

      LOBYTE(v532) = 1;
      sub_1D30E975C();
      sub_1D2FF1804(v130, v129);
      v335 = &v520;
LABEL_108:
      (*(*(v335 - 32) + 1))(v231, v232);
      goto LABEL_109;
    case 0x19u:
      v226 = *(v81 + 2);
      LOBYTE(v532) = 26;
      sub_1D304EB40();
      v527 = *v81;
      v74 = v414;
      v227 = v530;
      v228 = v531;
      sub_1D30E96DC();
      v532 = v527;
      v533 = v226;
      v537 = 0;
      sub_1D304EB94();
      v229 = v416;
      v230 = v526;
      sub_1D30E974C();
      if (v230)
      {
        (*(v489 + 8))(v74, v229);
        (*(v529 + 8))(v228, v227);

        return;
      }

      LOBYTE(v532) = 1;
      sub_1D30E975C();

      v234 = &v521;
LABEL_99:
      (*(*(v234 - 32) + 8))(v74, v229);
      v148 = *(v529 + 8);
      v149 = v228;
LABEL_100:
      v272 = v227;
      goto LABEL_121;
    case 0x1Au:
      LOBYTE(v532) = 28;
      sub_1D304EA98();
      v221 = v415;
      v222 = v530;
      v223 = v531;
      sub_1D30E96DC();
      v224 = v417;
      sub_1D30E975C();
      v225 = &v522;
      goto LABEL_80;
    case 0x1Bu:
      v128 = *v81;
      v130 = *(v81 + 1);
      v129 = *(v81 + 2);
      LOBYTE(v532) = 29;
      sub_1D304EA44();
      v131 = v421;
      v85 = v530;
      v86 = v531;
      sub_1D30E96DC();
      LOBYTE(v532) = v128;
      v537 = 0;
      sub_1D304E9F0();
      v132 = v424;
      v133 = v526;
      sub_1D30E974C();
      if (!v133)
      {
        *&v532 = v130;
        *(&v532 + 1) = v129;
        v537 = 1;
        sub_1D2FF92C4();
        sub_1D30E974C();
        (*(v492 + 8))(v131, v132);
LABEL_87:
        (*(v529 + 8))(v86, v85);
        sub_1D2FF1804(v130, v129);
        return;
      }

      sub_1D2FF1804(v130, v129);
      (*(v492 + 8))(v131, v132);
LABEL_109:
      v148 = *(v529 + 8);
      v149 = v86;
      goto LABEL_110;
    case 0x1Cu:
      v316 = *v81;
      LOBYTE(v532) = 30;
      sub_1D304E99C();
      v221 = v418;
      v222 = v530;
      v223 = v531;
      sub_1D30E96DC();
      LOBYTE(v532) = v316;
      sub_1D304E9F0();
      v224 = v423;
      sub_1D30E974C();
      v225 = &v523;
      goto LABEL_80;
    case 0x1Du:
      LOBYTE(v532) = 32;
      sub_1D304E8F4();
      v74 = v425;
      v227 = v530;
      v228 = v531;
      sub_1D30E96DC();
      v229 = v426;
      sub_1D30E970C();

      v234 = &v525;
      goto LABEL_99;
    case 0x1Eu:
      LOBYTE(v532) = 33;
      sub_1D304E8A0();
      v74 = v427;
      v227 = v530;
      v228 = v531;
      sub_1D30E96DC();
      v229 = v428;
      sub_1D30E970C();

      v234 = &v526;
      goto LABEL_99;
    case 0x1Fu:
      v255 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A190, &qword_1D30F5498);
      v256 = &v81[*(v255 + 48)];
      v257 = *v256;
      v523 = *(v256 + 1);
      v258 = *(v256 + 3);
      v519 = *(v256 + 2);
      v520 = v257;
      *&v527 = v258;
      v259 = *(v256 + 5);
      v518 = *(v256 + 4);
      v521 = *&v81[*(v255 + 64)];
      v522 = v259;
      v260 = v524;
      v261 = v525;
      v262 = v515;
      (*(v524 + 32))(v515, v81, v525);
      LOBYTE(v532) = 34;
      sub_1D304E84C();
      v263 = v436;
      v111 = v530;
      v112 = v531;
      sub_1D30E96DC();
      LOBYTE(v532) = 0;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83B0]);
      v264 = v438;
      v265 = v526;
      sub_1D30E974C();
      if (!v265)
      {
        v336 = v521;
        *&v532 = v520;
        *(&v532 + 1) = v523;
        v533 = v519;
        v534 = v527;
        v535 = v518;
        v536 = v522;
        v537 = 1;
        sub_1D2FF6708();
        sub_1D30E974C();

        *&v532 = v336;
        v537 = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A3C8, &qword_1D30F5650);
        sub_1D304E7E0(&qword_1EC74A3D0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
        sub_1D30E974C();
        v349 = v530;
        v350 = v531;
        v351 = v524;
        v352 = v525;
        v353 = v515;
        (*(v496 + 8))(v263, v264);
        (*(v351 + 8))(v353, v352);
        (*(v529 + 8))(v350, v349);
        goto LABEL_73;
      }

      (*(v496 + 8))(v263, v264);
      (*(v260 + 8))(v262, v261);
LABEL_47:
      v148 = *(v529 + 8);
      v149 = v112;
LABEL_48:
      v272 = v111;
      goto LABEL_121;
    case 0x20u:
      v298 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A188, &qword_1D30F5490);
      v299 = &v81[v298[12]];
      v300 = *v299;
      *&v527 = v299[1];
      v301 = &v81[v298[16]];
      v302 = *(v301 + 1);
      v520 = *v301;
      v521 = v300;
      v522 = *&v81[v298[20]];
      v523 = v302;
      v303 = v524;
      v304 = v525;
      v305 = v516;
      (*(v524 + 32))(v516, v81, v525);
      LOBYTE(v532) = 35;
      sub_1D304E78C();
      v306 = v441;
      v177 = v530;
      v307 = v531;
      sub_1D30E96DC();
      LOBYTE(v532) = 0;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83B0]);
      v308 = v443;
      v309 = v526;
      sub_1D30E974C();
      if (v309)
      {

        (*(v508 + 8))(v306, v308);
        (*(v303 + 8))(v305, v304);
        v148 = *(v529 + 8);
        v149 = v307;
LABEL_96:
        v272 = v177;
        goto LABEL_121;
      }

      v338 = v522;
      LOBYTE(v532) = 1;
      sub_1D30E970C();

      LOBYTE(v532) = 2;
      sub_1D30E96EC();

      *&v532 = v338;
      v537 = 3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A3C8, &qword_1D30F5650);
      sub_1D304E7E0(&qword_1EC74A3D0, MEMORY[0x1E69E6160], MEMORY[0x1E69E64F0]);
      sub_1D30E974C();
      v357 = v516;
      v358 = v531;
      (*(v508 + 8))(v306, v308);
      (*(v524 + 8))(v357, v525);
      (*(v529 + 8))(v358, v177);
LABEL_73:

      return;
    case 0x21u:
      LOBYTE(v532) = 36;
      sub_1D304E738();
      v176 = v434;
      v177 = v530;
      v178 = v531;
      sub_1D30E96DC();
      LOBYTE(v532) = 0;
      v179 = v435;
      v180 = v526;
      sub_1D30E970C();

      if (!v180)
      {
        LOBYTE(v532) = 1;
        sub_1D30E96EC();
      }

      v331 = &v527;
LABEL_95:
      (*(*(v331 - 32) + 8))(v176, v179);
      v148 = *(v529 + 8);
      v149 = v178;
      goto LABEL_96;
    case 0x22u:
      v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A180, &qword_1D30F5488);
      v135 = &v81[*(v134 + 48)];
      v136 = *v135;
      *&v527 = *(v135 + 1);
      v137 = &v81[*(v134 + 64)];
      v139 = *v137;
      v138 = v137[1];
      v521 = v139;
      v522 = v136;
      v523 = v138;
      v141 = v524;
      v140 = v525;
      v142 = v514;
      (*(v524 + 32))(v514, v81, v525);
      LOBYTE(v532) = 37;
      sub_1D304E6E4();
      v143 = v440;
      v145 = v530;
      v144 = v531;
      sub_1D30E96DC();
      LOBYTE(v532) = 0;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83B0]);
      v146 = v442;
      v147 = v526;
      sub_1D30E974C();
      if (v147)
      {

        (*(v498 + 8))(v143, v146);
        (*(v141 + 8))(v142, v140);
        v148 = *(v529 + 8);
        v149 = v144;
      }

      else
      {
        LOBYTE(v532) = 1;
        v327 = v143;
        sub_1D30E970C();

        LOBYTE(v532) = 2;
        sub_1D30E96EC();
        v341 = v514;
        v342 = v531;

        (*(v498 + 8))(v327, v146);
        (*(v141 + 8))(v341, v525);
        v148 = *(v529 + 8);
        v149 = v342;
      }

LABEL_119:
      v272 = v145;
      goto LABEL_121;
    case 0x23u:
      v107 = v524;
      v108 = v525;
      v109 = v429;
      (*(v524 + 32))(v429, v81, v525);
      LOBYTE(v532) = 39;
      sub_1D304E63C();
      v110 = v437;
      v111 = v530;
      v112 = v531;
      sub_1D30E96DC();
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83B0]);
      v113 = v439;
      sub_1D30E974C();
      v114 = &v528;
      goto LABEL_46;
    case 0x24u:
      v116 = *v81;
      v115 = *(v81 + 1);
      v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v118 = *(v117 + 48);
      v119 = &v81[*(v117 + 64)];
      v121 = *v119;
      v120 = v119[1];
      v523 = v121;
      *&v527 = v120;
      v122 = v524;
      (*(v524 + 32))(v519, &v81[v118], v525);
      LOBYTE(v532) = 40;
      sub_1D304E5E8();
      v123 = v446;
      v124 = v530;
      v125 = v531;
      sub_1D30E96DC();
      *&v532 = v116;
      *(&v532 + 1) = v115;
      v537 = 0;
      sub_1D2FF92C4();
      v126 = v448;
      v127 = v526;
      sub_1D30E974C();
      if (v127)
      {

        (*(v500 + 8))(v123, v126);
        (*(v122 + 8))(v519, v525);
        goto LABEL_78;
      }

      LOBYTE(v532) = 1;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83B0]);
      sub_1D30E974C();
      LOBYTE(v532) = 2;
      sub_1D30E96EC();
      v339 = v531;
      v340 = v524;
      sub_1D2FF1804(v116, v115);

      (*(v500 + 8))(v123, v126);
      (*(v340 + 8))(v519, v525);
      goto LABEL_120;
    case 0x25u:
      v93 = &v81[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48)];
      v95 = *v93;
      v94 = *(v93 + 1);
      *&v527 = v95;
      v523 = v94;
      v96 = v524;
      v97 = v525;
      v98 = v512;
      (*(v524 + 32))(v512, v81, v525);
      LOBYTE(v532) = 41;
      sub_1D304E594();
      v99 = v444;
      v85 = v530;
      v100 = v531;
      sub_1D30E96DC();
      LOBYTE(v532) = 0;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83B0]);
      v101 = v445;
      v102 = v526;
      sub_1D30E974C();
      if (v102)
      {
        sub_1D2FF1804(v527, v523);
        v103 = &v530;
        goto LABEL_68;
      }

      v242 = v523;
      *&v532 = v527;
      *(&v532 + 1) = v523;
      v537 = 1;
      sub_1D2FF92C4();
      sub_1D30E974C();
      (*(v499 + 8))(v99, v101);
      (*(v96 + 8))(v512, v97);
      goto LABEL_115;
    case 0x26u:
      v116 = *v81;
      v115 = *(v81 + 1);
      v317 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
      v318 = *(v317 + 48);
      v319 = &v81[*(v317 + 64)];
      v321 = *v319;
      v320 = v319[1];
      v523 = v321;
      *&v527 = v320;
      v322 = v524;
      (*(v524 + 32))(v520, &v81[v318], v525);
      LOBYTE(v532) = 42;
      sub_1D304E540();
      v323 = v456;
      v124 = v530;
      v125 = v531;
      sub_1D30E96DC();
      *&v532 = v116;
      *(&v532 + 1) = v115;
      v537 = 0;
      sub_1D2FF92C4();
      v324 = v459;
      v325 = v526;
      sub_1D30E974C();
      if (v325)
      {

        (*(v503 + 8))(v323, v324);
        (*(v322 + 8))(v520, v525);
LABEL_78:
        (*(v529 + 8))(v125, v124);
        sub_1D2FF1804(v116, v115);
        return;
      }

      LOBYTE(v532) = 1;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83B0]);
      sub_1D30E974C();
      LOBYTE(v532) = 2;
      sub_1D30E96EC();
      v339 = v531;
      v356 = v524;
      sub_1D2FF1804(v116, v115);

      (*(v503 + 8))(v323, v324);
      (*(v356 + 8))(v520, v525);
LABEL_120:
      v148 = *(v529 + 8);
      v149 = v339;
      v272 = v530;
      goto LABEL_121;
    case 0x27u:
      v311 = &v81[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478) + 48)];
      v313 = *v311;
      v312 = *(v311 + 1);
      *&v527 = v313;
      v523 = v312;
      v96 = v524;
      v97 = v525;
      v98 = v513;
      (*(v524 + 32))(v513, v81, v525);
      LOBYTE(v532) = 43;
      sub_1D304E4EC();
      v99 = v449;
      v85 = v530;
      v100 = v531;
      sub_1D30E96DC();
      LOBYTE(v532) = 0;
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83B0]);
      v101 = v454;
      v314 = v526;
      sub_1D30E974C();
      if (v314)
      {
        sub_1D2FF1804(v527, v523);
        v103 = &v532;
LABEL_68:
        (*(*(v103 - 32) + 8))(v99, v101);
        (*(v96 + 8))(v98, v97);
        v148 = *(v529 + 8);
        v149 = v100;
LABEL_110:
        v272 = v85;
        goto LABEL_121;
      }

      v242 = v523;
      *&v532 = v527;
      *(&v532 + 1) = v523;
      v537 = 1;
      sub_1D2FF92C4();
      sub_1D30E974C();
      (*(v501 + 8))(v99, v101);
      (*(v96 + 8))(v513, v97);
LABEL_115:
      (*(v529 + 8))(v531, v530);
      v249 = v527;
LABEL_116:
      sub_1D2FF1804(v249, v242);
      break;
    case 0x28u:
      v199 = *v81;
      v198 = *(v81 + 1);
      v200 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A168, &qword_1D30F5470);
      v201 = v200[12];
      v202 = &v81[v200[16]];
      v204 = *v202;
      v203 = *(v202 + 1);
      v520 = v204;
      v521 = v203;
      v205 = &v81[v200[20]];
      v207 = *v205;
      v206 = *(v205 + 1);
      v519 = v207;
      *&v527 = v206;
      v209 = v522;
      v208 = v523;
      (*(v522 + 32))(v518, &v81[v201], v523);
      LOBYTE(v532) = 44;
      sub_1D304E498();
      v210 = v464;
      v212 = v530;
      v211 = v531;
      sub_1D30E96DC();
      v524 = v199;
      v525 = v198;
      *&v532 = v199;
      *(&v532 + 1) = v198;
      v537 = 0;
      sub_1D2FF92C4();
      v213 = v465;
      v214 = v526;
      sub_1D30E974C();
      if (v214)
      {

        (*(v509 + 8))(v210, v213);
        (*(v209 + 8))(v518, v208);
        (*(v529 + 8))(v211, v212);
        sub_1D2FF1804(v524, v525);
      }

      else
      {
        LOBYTE(v532) = 1;
        sub_1D3045A34(&qword_1EC749A68, MEMORY[0x1E69E8380], MEMORY[0x1E69E8388]);
        v333 = v208;
        v334 = v518;
        sub_1D30E974C();
        LOBYTE(v532) = 2;
        sub_1D30E970C();
        v222 = v212;

        LOBYTE(v532) = 3;
        sub_1D30E96EC();
        sub_1D2FF1804(v524, v525);

        (*(v509 + 8))(v210, v213);
        (*(v522 + 8))(v334, v333);
        v148 = *(v529 + 8);
        v149 = v531;
LABEL_81:
        v272 = v222;
LABEL_121:
        v148(v149, v272);
      }

      break;
    case 0x29u:
      v107 = v524;
      v108 = v525;
      v109 = v430;
      (*(v524 + 32))(v430, v81, v525);
      LOBYTE(v532) = 45;
      sub_1D304E444();
      v110 = v451;
      v111 = v530;
      v112 = v531;
      sub_1D30E96DC();
      sub_1D3045A34(&qword_1EC74A370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83B0]);
      v113 = v455;
      sub_1D30E974C();
      v114 = &v532 + 8;
LABEL_46:
      (*(*(v114 - 32) + 8))(v110, v113);
      (*(v107 + 8))(v109, v108);
      goto LABEL_47;
    case 0x2Au:
      LOBYTE(v532) = 48;
      sub_1D304E348();
      v221 = v460;
      v222 = v530;
      v223 = v531;
      sub_1D30E96DC();
      v224 = v461;
      sub_1D30E971C();
      v225 = &v534;
LABEL_80:
      (*(*(v225 - 32) + 8))(v221, v224);
      v148 = *(v529 + 8);
      v149 = v223;
      goto LABEL_81;
    case 0x2Bu:
      v87 = *v81;
      LOBYTE(v532) = 49;
      sub_1D304E2F4();
      v88 = v462;
      v89 = v530;
      v90 = v531;
      sub_1D30E96DC();
      *&v532 = v87;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A348, &qword_1D30F5648);
      sub_1D30567C4(&qword_1EE313058, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
      v91 = v463;
      sub_1D30E974C();
      v92 = &v535;
LABEL_72:
      (*(*(v92 - 32) + 8))(v88, v91);
      (*(v529 + 8))(v90, v89);
      goto LABEL_73;
    case 0x2Cu:
      LOBYTE(v532) = 13;
      sub_1D304F08C();
      v164 = v379;
      v105 = v530;
      v106 = v531;
      sub_1D30E96DC();
      (*(v381 + 8))(v164, v382);
      goto LABEL_83;
    case 0x2Du:
      LOBYTE(v532) = 27;
      sub_1D304EAEC();
      v310 = v407;
      v105 = v530;
      v106 = v531;
      sub_1D30E96DC();
      (*(v409 + 8))(v310, v411);
      goto LABEL_83;
    case 0x2Eu:
      LOBYTE(v532) = 31;
      sub_1D304E948();
      v326 = v419;
      v105 = v530;
      v106 = v531;
      sub_1D30E96DC();
      (*(v420 + 8))(v326, v422);
      goto LABEL_83;
    case 0x2Fu:
      LOBYTE(v532) = 38;
      sub_1D304E690();
      v104 = v431;
      v105 = v530;
      v106 = v531;
      sub_1D30E96DC();
      (*(v432 + 8))(v104, v433);
      goto LABEL_83;
    case 0x30u:
      LOBYTE(v532) = 46;
      sub_1D304E3F0();
      v181 = v447;
      v105 = v530;
      v106 = v531;
      sub_1D30E96DC();
      (*(v450 + 8))(v181, v452);
      goto LABEL_83;
    case 0x31u:
      LOBYTE(v532) = 47;
      sub_1D304E39C();
      v196 = v453;
      v105 = v530;
      v106 = v531;
      sub_1D30E96DC();
      (*(v457 + 8))(v196, v458);
LABEL_83:
      (*(v529 + 8))(v106, v105);
      return;
    default:
      LOBYTE(v532) = 0;
      sub_1D304F4D0();
      v85 = v530;
      v86 = v531;
      sub_1D30E96DC();
      sub_1D30E970C();

      (*(v466 + 8))(v78, v76);
      goto LABEL_109;
  }
}

unint64_t sub_1D304E2A0()
{
  result = qword_1EE314B48;
  if (!qword_1EE314B48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE314B48);
  }

  return result;
}

unint64_t sub_1D304E2F4()
{
  result = qword_1EE3149F0;
  if (!qword_1EE3149F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149F0);
  }

  return result;
}

unint64_t sub_1D304E348()
{
  result = qword_1EC74A350;
  if (!qword_1EC74A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A350);
  }

  return result;
}

unint64_t sub_1D304E39C()
{
  result = qword_1EC74A358;
  if (!qword_1EC74A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A358);
  }

  return result;
}

unint64_t sub_1D304E3F0()
{
  result = qword_1EC74A360;
  if (!qword_1EC74A360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A360);
  }

  return result;
}

unint64_t sub_1D304E444()
{
  result = qword_1EC74A368;
  if (!qword_1EC74A368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A368);
  }

  return result;
}

unint64_t sub_1D304E498()
{
  result = qword_1EC74A378;
  if (!qword_1EC74A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A378);
  }

  return result;
}

unint64_t sub_1D304E4EC()
{
  result = qword_1EC74A380;
  if (!qword_1EC74A380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A380);
  }

  return result;
}

unint64_t sub_1D304E540()
{
  result = qword_1EC74A388;
  if (!qword_1EC74A388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A388);
  }

  return result;
}

unint64_t sub_1D304E594()
{
  result = qword_1EC74A390;
  if (!qword_1EC74A390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A390);
  }

  return result;
}

unint64_t sub_1D304E5E8()
{
  result = qword_1EC74A398;
  if (!qword_1EC74A398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A398);
  }

  return result;
}

unint64_t sub_1D304E63C()
{
  result = qword_1EC74A3A0;
  if (!qword_1EC74A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3A0);
  }

  return result;
}

unint64_t sub_1D304E690()
{
  result = qword_1EC74A3A8;
  if (!qword_1EC74A3A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3A8);
  }

  return result;
}

unint64_t sub_1D304E6E4()
{
  result = qword_1EC74A3B0;
  if (!qword_1EC74A3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3B0);
  }

  return result;
}

unint64_t sub_1D304E738()
{
  result = qword_1EC74A3B8;
  if (!qword_1EC74A3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3B8);
  }

  return result;
}

unint64_t sub_1D304E78C()
{
  result = qword_1EC74A3C0;
  if (!qword_1EC74A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3C0);
  }

  return result;
}

uint64_t sub_1D304E7E0(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A3C8, &qword_1D30F5650);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D304E84C()
{
  result = qword_1EC74A3D8;
  if (!qword_1EC74A3D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3D8);
  }

  return result;
}

unint64_t sub_1D304E8A0()
{
  result = qword_1EC74A3E0;
  if (!qword_1EC74A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3E0);
  }

  return result;
}

unint64_t sub_1D304E8F4()
{
  result = qword_1EC74A3E8;
  if (!qword_1EC74A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3E8);
  }

  return result;
}

unint64_t sub_1D304E948()
{
  result = qword_1EC74A3F0;
  if (!qword_1EC74A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3F0);
  }

  return result;
}

unint64_t sub_1D304E99C()
{
  result = qword_1EC74A3F8;
  if (!qword_1EC74A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A3F8);
  }

  return result;
}

unint64_t sub_1D304E9F0()
{
  result = qword_1EC74A400;
  if (!qword_1EC74A400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A400);
  }

  return result;
}

unint64_t sub_1D304EA44()
{
  result = qword_1EC74A408;
  if (!qword_1EC74A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A408);
  }

  return result;
}

unint64_t sub_1D304EA98()
{
  result = qword_1EC74A410;
  if (!qword_1EC74A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A410);
  }

  return result;
}

unint64_t sub_1D304EAEC()
{
  result = qword_1EC74A418;
  if (!qword_1EC74A418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A418);
  }

  return result;
}

unint64_t sub_1D304EB40()
{
  result = qword_1EC74A420;
  if (!qword_1EC74A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A420);
  }

  return result;
}

unint64_t sub_1D304EB94()
{
  result = qword_1EC74A428;
  if (!qword_1EC74A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A428);
  }

  return result;
}

unint64_t sub_1D304EBE8()
{
  result = qword_1EC74A430;
  if (!qword_1EC74A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A430);
  }

  return result;
}

unint64_t sub_1D304EC3C()
{
  result = qword_1EC74A438;
  if (!qword_1EC74A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A438);
  }

  return result;
}

unint64_t sub_1D304EC90()
{
  result = qword_1EC74A450;
  if (!qword_1EC74A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A450);
  }

  return result;
}

unint64_t sub_1D304ECE4()
{
  result = qword_1EC74A458;
  if (!qword_1EC74A458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A458);
  }

  return result;
}

unint64_t sub_1D304ED38()
{
  result = qword_1EC74A468;
  if (!qword_1EC74A468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A460, &qword_1D30F5660);
    sub_1D3045A34(&qword_1EC74A470, type metadata accessor for AssetPackRecord.StaticRepresentation, &protocol conformance descriptor for AssetPackRecord.StaticRepresentation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A468);
  }

  return result;
}

unint64_t sub_1D304EDEC()
{
  result = qword_1EC74A478;
  if (!qword_1EC74A478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A478);
  }

  return result;
}

unint64_t sub_1D304EE40()
{
  result = qword_1EC74A480;
  if (!qword_1EC74A480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A480);
  }

  return result;
}

unint64_t sub_1D304EE94()
{
  result = qword_1EE3149B8;
  if (!qword_1EE3149B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE3149B8);
  }

  return result;
}

unint64_t sub_1D304EEE8()
{
  result = qword_1EC74A488;
  if (!qword_1EC74A488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A488);
  }

  return result;
}

unint64_t sub_1D304EF3C()
{
  result = qword_1EC74A490;
  if (!qword_1EC74A490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A490);
  }

  return result;
}

unint64_t sub_1D304EF90()
{
  result = qword_1EC74A498;
  if (!qword_1EC74A498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A498);
  }

  return result;
}

unint64_t sub_1D304EFE4()
{
  result = qword_1EC74A4A0;
  if (!qword_1EC74A4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4A0);
  }

  return result;
}

unint64_t sub_1D304F038()
{
  result = qword_1EC74A4A8;
  if (!qword_1EC74A4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4A8);
  }

  return result;
}

unint64_t sub_1D304F08C()
{
  result = qword_1EC74A4B0;
  if (!qword_1EC74A4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4B0);
  }

  return result;
}

unint64_t sub_1D304F0E0()
{
  result = qword_1EC74A4B8;
  if (!qword_1EC74A4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4B8);
  }

  return result;
}

unint64_t sub_1D304F134()
{
  result = qword_1EC74A4C0;
  if (!qword_1EC74A4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4C0);
  }

  return result;
}

unint64_t sub_1D304F188()
{
  result = qword_1EC74A4C8;
  if (!qword_1EC74A4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4C8);
  }

  return result;
}

unint64_t sub_1D304F1DC()
{
  result = qword_1EC74A4D0;
  if (!qword_1EC74A4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4D0);
  }

  return result;
}

unint64_t sub_1D304F230()
{
  result = qword_1EC74A4D8;
  if (!qword_1EC74A4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4D8);
  }

  return result;
}

unint64_t sub_1D304F284()
{
  result = qword_1EC74A4E0;
  if (!qword_1EC74A4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4E0);
  }

  return result;
}

unint64_t sub_1D304F2D8()
{
  result = qword_1EC74A4E8;
  if (!qword_1EC74A4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4E8);
  }

  return result;
}

unint64_t sub_1D304F32C()
{
  result = qword_1EC74A4F0;
  if (!qword_1EC74A4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4F0);
  }

  return result;
}

unint64_t sub_1D304F380()
{
  result = qword_1EC74A4F8;
  if (!qword_1EC74A4F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A4F8);
  }

  return result;
}

unint64_t sub_1D304F3D4()
{
  result = qword_1EC74A500;
  if (!qword_1EC74A500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A500);
  }

  return result;
}

unint64_t sub_1D304F428()
{
  result = qword_1EC74A508;
  if (!qword_1EC74A508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A508);
  }

  return result;
}

unint64_t sub_1D304F47C()
{
  result = qword_1EC74A510;
  if (!qword_1EC74A510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A510);
  }

  return result;
}

unint64_t sub_1D304F4D0()
{
  result = qword_1EC74A518;
  if (!qword_1EC74A518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A518);
  }

  return result;
}

uint64_t Helper.Message.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v738 = a2;
  v676 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A520, &qword_1D30F5668);
  v677 = *(v676 - 8);
  MEMORY[0x1EEE9AC00](v676);
  v732 = &v548 - v3;
  v674 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A528, &qword_1D30F5670);
  v675 = *(v674 - 8);
  MEMORY[0x1EEE9AC00](v674);
  v733 = &v548 - v4;
  v673 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A530, &qword_1D30F5678);
  v672 = *(v673 - 8);
  MEMORY[0x1EEE9AC00](v673);
  *&v744 = &v548 - v5;
  v666 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A538, &qword_1D30F5680);
  v665 = *(v666 - 8);
  MEMORY[0x1EEE9AC00](v666);
  v729 = &v548 - v6;
  v671 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A540, &qword_1D30F5688);
  v668 = *(v671 - 8);
  MEMORY[0x1EEE9AC00](v671);
  v743 = &v548 - v7;
  v683 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A548, &qword_1D30F5690);
  v740 = *(v683 - 8);
  MEMORY[0x1EEE9AC00](v683);
  v737 = &v548 - v8;
  v669 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A550, &qword_1D30F5698);
  v667 = *(v669 - 8);
  MEMORY[0x1EEE9AC00](v669);
  v730 = &v548 - v9;
  v670 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A558, &qword_1D30F56A0);
  v739 = *(v670 - 8);
  MEMORY[0x1EEE9AC00](v670);
  v731 = &v548 - v10;
  v663 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A560, &qword_1D30F56A8);
  v662 = *(v663 - 8);
  MEMORY[0x1EEE9AC00](v663);
  v727 = &v548 - v11;
  v664 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A568, &qword_1D30F56B0);
  v592 = *(v664 - 8);
  MEMORY[0x1EEE9AC00](v664);
  v728 = &v548 - v12;
  v660 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A570, &qword_1D30F56B8);
  v659 = *(v660 - 8);
  MEMORY[0x1EEE9AC00](v660);
  v725 = &v548 - v13;
  v656 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A578, &qword_1D30F56C0);
  v655 = *(v656 - 8);
  MEMORY[0x1EEE9AC00](v656);
  v722 = &v548 - v14;
  v661 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A580, &qword_1D30F56C8);
  v591 = *(v661 - 8);
  MEMORY[0x1EEE9AC00](v661);
  v726 = &v548 - v15;
  v657 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A588, &qword_1D30F56D0);
  v654 = *(v657 - 8);
  MEMORY[0x1EEE9AC00](v657);
  v723 = &v548 - v16;
  v682 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A590, &qword_1D30F56D8);
  v590 = *(v682 - 8);
  MEMORY[0x1EEE9AC00](v682);
  v736 = &v548 - v17;
  v658 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A598, &qword_1D30F56E0);
  v589 = *(v658 - 8);
  MEMORY[0x1EEE9AC00](v658);
  v724 = &v548 - v18;
  v653 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5A0, &qword_1D30F56E8);
  v652 = *(v653 - 8);
  MEMORY[0x1EEE9AC00](v653);
  v721 = &v548 - v19;
  v651 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5A8, &qword_1D30F56F0);
  v650 = *(v651 - 8);
  MEMORY[0x1EEE9AC00](v651);
  v720 = &v548 - v20;
  v646 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5B0, &qword_1D30F56F8);
  v644 = *(v646 - 8);
  MEMORY[0x1EEE9AC00](v646);
  v717 = &v548 - v21;
  v647 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5B8, &qword_1D30F5700);
  v645 = *(v647 - 8);
  MEMORY[0x1EEE9AC00](v647);
  v718 = &v548 - v22;
  v649 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5C0, &qword_1D30F5708);
  v648 = *(v649 - 8);
  MEMORY[0x1EEE9AC00](v649);
  v719 = &v548 - v23;
  v643 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5C8, &qword_1D30F5710);
  v642 = *(v643 - 8);
  MEMORY[0x1EEE9AC00](v643);
  v716 = &v548 - v24;
  v638 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5D0, &qword_1D30F5718);
  v637 = *(v638 - 8);
  MEMORY[0x1EEE9AC00](v638);
  v713 = &v548 - v25;
  v641 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5D8, &qword_1D30F5720);
  v640 = *(v641 - 8);
  MEMORY[0x1EEE9AC00](v641);
  v715 = &v548 - v26;
  v639 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5E0, &qword_1D30F5728);
  v588 = *(v639 - 8);
  MEMORY[0x1EEE9AC00](v639);
  v714 = &v548 - v27;
  v636 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5E8, &qword_1D30F5730);
  v635 = *(v636 - 8);
  MEMORY[0x1EEE9AC00](v636);
  v712 = &v548 - v28;
  v632 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5F0, &qword_1D30F5738);
  v631 = *(v632 - 8);
  MEMORY[0x1EEE9AC00](v632);
  v710 = &v548 - v29;
  v634 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A5F8, &qword_1D30F5740);
  v633 = *(v634 - 8);
  MEMORY[0x1EEE9AC00](v634);
  v711 = &v548 - v30;
  v681 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A600, &qword_1D30F5748);
  v587 = *(v681 - 8);
  MEMORY[0x1EEE9AC00](v681);
  v735 = &v548 - v31;
  v629 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A608, &qword_1D30F5750);
  v628 = *(v629 - 8);
  MEMORY[0x1EEE9AC00](v629);
  v708 = &v548 - v32;
  v627 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A610, &qword_1D30F5758);
  v626 = *(v627 - 8);
  MEMORY[0x1EEE9AC00](v627);
  v707 = &v548 - v33;
  v625 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A618, &qword_1D30F5760);
  v624 = *(v625 - 8);
  MEMORY[0x1EEE9AC00](v625);
  v706 = &v548 - v34;
  v630 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A620, &qword_1D30F5768);
  v586 = *(v630 - 8);
  MEMORY[0x1EEE9AC00](v630);
  v709 = &v548 - v35;
  v623 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A628, &qword_1D30F5770);
  v622 = *(v623 - 8);
  MEMORY[0x1EEE9AC00](v623);
  v705 = &v548 - v36;
  v621 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A630, &qword_1D30F5778);
  v620 = *(v621 - 8);
  MEMORY[0x1EEE9AC00](v621);
  v704 = &v548 - v37;
  v619 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A638, &qword_1D30F5780);
  v618 = *(v619 - 8);
  MEMORY[0x1EEE9AC00](v619);
  v703 = &v548 - v38;
  v615 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A640, &qword_1D30F5788);
  v613 = *(v615 - 8);
  MEMORY[0x1EEE9AC00](v615);
  v700 = &v548 - v39;
  v616 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A648, &qword_1D30F5790);
  v614 = *(v616 - 8);
  MEMORY[0x1EEE9AC00](v616);
  v701 = &v548 - v40;
  v680 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A650, &qword_1D30F5798);
  v679 = *(v680 - 8);
  MEMORY[0x1EEE9AC00](v680);
  v734 = &v548 - v41;
  v617 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A658, &qword_1D30F57A0);
  v585 = *(v617 - 8);
  MEMORY[0x1EEE9AC00](v617);
  v702 = &v548 - v42;
  v611 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A660, &qword_1D30F57A8);
  v610 = *(v611 - 8);
  MEMORY[0x1EEE9AC00](v611);
  v698 = &v548 - v43;
  v609 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A668, &qword_1D30F57B0);
  v608 = *(v609 - 8);
  MEMORY[0x1EEE9AC00](v609);
  v697 = &v548 - v44;
  v612 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A670, &qword_1D30F57B8);
  v584 = *(v612 - 8);
  MEMORY[0x1EEE9AC00](v612);
  v699 = &v548 - v45;
  v607 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A678, &qword_1D30F57C0);
  v606 = *(v607 - 8);
  MEMORY[0x1EEE9AC00](v607);
  v696 = &v548 - v46;
  v604 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A680, &qword_1D30F57C8);
  v603 = *(v604 - 8);
  MEMORY[0x1EEE9AC00](v604);
  v694 = &v548 - v47;
  v605 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A688, &qword_1D30F57D0);
  v742 = *(v605 - 8);
  MEMORY[0x1EEE9AC00](v605);
  v695 = &v548 - v48;
  v601 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A690, &qword_1D30F57D8);
  v741 = *(v601 - 8);
  MEMORY[0x1EEE9AC00](v601);
  v692 = &v548 - v49;
  v600 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A698, &qword_1D30F57E0);
  v599 = *(v600 - 8);
  MEMORY[0x1EEE9AC00](v600);
  v691 = &v548 - v50;
  v602 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A6A0, &qword_1D30F57E8);
  v583 = *(v602 - 8);
  MEMORY[0x1EEE9AC00](v602);
  v693 = &v548 - v51;
  v596 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A6A8, &qword_1D30F57F0);
  v595 = *(v596 - 8);
  MEMORY[0x1EEE9AC00](v596);
  v690 = &v548 - v52;
  v747 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A6B0, &unk_1D30F57F8);
  v745 = *(v747 - 8);
  MEMORY[0x1EEE9AC00](v747);
  v750 = &v548 - v53;
  v746 = type metadata accessor for Helper.Message(0);
  v54 = MEMORY[0x1EEE9AC00](v746);
  v581 = &v548 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x1EEE9AC00](v54);
  v580 = (&v548 - v57);
  v58 = MEMORY[0x1EEE9AC00](v56);
  v594 = &v548 - v59;
  v60 = MEMORY[0x1EEE9AC00](v58);
  v688 = &v548 - v61;
  v62 = MEMORY[0x1EEE9AC00](v60);
  v598 = &v548 - v63;
  v64 = MEMORY[0x1EEE9AC00](v62);
  v686 = &v548 - v65;
  v66 = MEMORY[0x1EEE9AC00](v64);
  v597 = &v548 - v67;
  v68 = MEMORY[0x1EEE9AC00](v66);
  v684 = &v548 - v69;
  v70 = MEMORY[0x1EEE9AC00](v68);
  v593 = &v548 - v71;
  v72 = MEMORY[0x1EEE9AC00](v70);
  v689 = &v548 - v73;
  v74 = MEMORY[0x1EEE9AC00](v72);
  v563 = (&v548 - v75);
  v76 = MEMORY[0x1EEE9AC00](v74);
  v678 = &v548 - v77;
  v78 = MEMORY[0x1EEE9AC00](v76);
  v685 = &v548 - v79;
  v80 = MEMORY[0x1EEE9AC00](v78);
  v579 = (&v548 - v81);
  v82 = MEMORY[0x1EEE9AC00](v80);
  v578 = (&v548 - v83);
  v84 = MEMORY[0x1EEE9AC00](v82);
  v577 = &v548 - v85;
  v86 = MEMORY[0x1EEE9AC00](v84);
  v562 = (&v548 - v87);
  v88 = MEMORY[0x1EEE9AC00](v86);
  v575 = (&v548 - v89);
  v90 = MEMORY[0x1EEE9AC00](v88);
  v561 = (&v548 - v91);
  v92 = MEMORY[0x1EEE9AC00](v90);
  v560 = (&v548 - v93);
  v94 = MEMORY[0x1EEE9AC00](v92);
  v576 = &v548 - v95;
  v96 = MEMORY[0x1EEE9AC00](v94);
  v574 = (&v548 - v97);
  v98 = MEMORY[0x1EEE9AC00](v96);
  v559 = (&v548 - v99);
  v100 = MEMORY[0x1EEE9AC00](v98);
  v582 = (&v548 - v101);
  v102 = MEMORY[0x1EEE9AC00](v100);
  v573 = (&v548 - v103);
  v104 = MEMORY[0x1EEE9AC00](v102);
  v571 = (&v548 - v105);
  v106 = MEMORY[0x1EEE9AC00](v104);
  v572 = &v548 - v107;
  v108 = MEMORY[0x1EEE9AC00](v106);
  v557 = (&v548 - v109);
  v110 = MEMORY[0x1EEE9AC00](v108);
  v558 = &v548 - v111;
  v112 = MEMORY[0x1EEE9AC00](v110);
  v570 = &v548 - v113;
  v114 = MEMORY[0x1EEE9AC00](v112);
  v569 = &v548 - v115;
  v116 = MEMORY[0x1EEE9AC00](v114);
  v568 = &v548 - v117;
  v118 = MEMORY[0x1EEE9AC00](v116);
  v687 = &v548 - v119;
  v120 = MEMORY[0x1EEE9AC00](v118);
  v556 = (&v548 - v121);
  v122 = MEMORY[0x1EEE9AC00](v120);
  v567 = (&v548 - v123);
  v124 = MEMORY[0x1EEE9AC00](v122);
  v566 = (&v548 - v125);
  v126 = MEMORY[0x1EEE9AC00](v124);
  v555 = (&v548 - v127);
  v128 = MEMORY[0x1EEE9AC00](v126);
  v565 = (&v548 - v129);
  v130 = MEMORY[0x1EEE9AC00](v128);
  v564 = (&v548 - v131);
  v132 = MEMORY[0x1EEE9AC00](v130);
  v134 = &v548 - v133;
  v135 = MEMORY[0x1EEE9AC00](v132);
  v137 = &v548 - v136;
  v138 = MEMORY[0x1EEE9AC00](v135);
  v140 = &v548 - v139;
  v141 = MEMORY[0x1EEE9AC00](v138);
  v143 = &v548 - v142;
  v144 = MEMORY[0x1EEE9AC00](v141);
  v146 = &v548 - v145;
  MEMORY[0x1EEE9AC00](v144);
  v148 = &v548 - v147;
  v149 = a1[3];
  v749 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v149);
  sub_1D304E2A0();
  v150 = v748;
  sub_1D30E990C();
  if (!v150)
  {
    v551 = v146;
    v552 = v140;
    v553 = v137;
    v549 = v143;
    v550 = v134;
    v151 = v741;
    v152 = v742;
    v153 = v743;
    v154 = v744;
    v748 = 0;
    v554 = v148;
    v155 = v747;
    v156 = sub_1D30E96AC();
    v157 = (2 * *(v156 + 16)) | 1;
    v757 = v156;
    v758 = v156 + 32;
    v759 = 0;
    v760 = v157;
    v158 = sub_1D302D66C();
    if (v759 == v760 >> 1)
    {
      switch(v158)
      {
        case 0:
          LOBYTE(v753) = 0;
          sub_1D304F4D0();
          v159 = v690;
          v160 = v750;
          v161 = v748;
          sub_1D30E95FC();
          if (v161)
          {
            goto LABEL_5;
          }

          v370 = v596;
          v371 = sub_1D30E963C();
          v372 = v745;
          v425 = v371;
          v427 = v426;
          (*(v595 + 8))(v159, v370);
          (*(v372 + 8))(v750, v155);
          swift_unknownObjectRelease();
          v542 = v551;
          *v551 = v425;
          v542[1] = v427;
          goto LABEL_122;
        case 1:
          LOBYTE(v753) = 1;
          sub_1D304F47C();
          v273 = v693;
          v174 = v750;
          v274 = v748;
          sub_1D30E95FC();
          if (v274)
          {
            goto LABEL_94;
          }

          LOBYTE(v753) = 0;
          v275 = v602;
          v276 = sub_1D30E963C();
          v277 = v745;
          v278 = v276;
          v280 = v279;
          LOBYTE(v753) = 1;
          *&v744 = sub_1D30E961C();
          v503 = v502;
          LOBYTE(v753) = 2;
          v504 = sub_1D30E964C();
          v748 = 0;
          v532 = v504;
          (*(v583 + 8))(v273, v275);
          (*(v277 + 8))(v174, v155);
          swift_unknownObjectRelease();
          v518 = v549;
          *v549 = v278;
          v518[1] = v280;
          v518[2] = v744;
          v518[3] = v503;
          *(v518 + 32) = v532 & 1;
          goto LABEL_128;
        case 2:
          LOBYTE(v753) = 2;
          sub_1D304F428();
          v253 = v691;
          v168 = v750;
          v254 = v748;
          sub_1D30E95FC();
          if (v254)
          {
            goto LABEL_56;
          }

          v255 = v600;
          v256 = sub_1D30E963C();
          v257 = v745;
          v417 = v256;
          v419 = v418;
          (*(v599 + 8))(v253, v255);
          (*(v257 + 8))(v168, v155);
          swift_unknownObjectRelease();
          v518 = v552;
          *v552 = v417;
          v518[1] = v419;
          goto LABEL_128;
        case 3:
          LOBYTE(v753) = 3;
          sub_1D304F3D4();
          v265 = v692;
          v218 = v750;
          v266 = v748;
          sub_1D30E95FC();
          if (v266)
          {
            goto LABEL_104;
          }

          v267 = v601;
          v268 = sub_1D30E963C();
          v269 = v265;
          v270 = v745;
          v420 = v268;
          v422 = v421;
          (*(v151 + 8))(v269, v267);
          (*(v270 + 8))(v218, v155);
          swift_unknownObjectRelease();
          v423 = v553;
          *v553 = v420;
          v423[1] = v422;
          swift_storeEnumTagMultiPayload();
          v424 = v423;
          goto LABEL_130;
        case 4:
          LOBYTE(v753) = 4;
          sub_1D304F380();
          v223 = v695;
          v174 = v750;
          v224 = v748;
          sub_1D30E95FC();
          if (v224)
          {
            goto LABEL_94;
          }

          LOBYTE(v753) = 0;
          v225 = v605;
          v226 = sub_1D30E963C();
          v227 = v745;
          v409 = v408;
          v410 = v226;
          LOBYTE(v753) = 1;
          v411 = sub_1D30E961C();
          v487 = *(v152 + 8);
          v748 = v411;
          v488 = v223;
          v490 = v489;
          v487(v488, v225);
          (*(v227 + 8))(v174, v155);
          swift_unknownObjectRelease();
          v491 = v550;
          *v550 = v410;
          v491[1] = v409;
          v491[2] = v748;
          v491[3] = v490;
          swift_storeEnumTagMultiPayload();
          v179 = v554;
          sub_1D3056830(v491, v554, type metadata accessor for Helper.Message);
          v492 = v738;
          goto LABEL_125;
        case 5:
          LOBYTE(v753) = 5;
          sub_1D304F32C();
          v294 = v694;
          v201 = v750;
          v295 = v748;
          sub_1D30E95FC();
          if (v295)
          {
            goto LABEL_98;
          }

          v296 = v604;
          v436 = sub_1D30E963C();
          v438 = v437;
          (*(v603 + 8))(v294, v296);
          (*(v745 + 8))(v201, v155);
          swift_unknownObjectRelease();
          v542 = v564;
          *v564 = v436;
          v542[1] = v438;
          goto LABEL_122;
        case 6:
          LOBYTE(v753) = 6;
          sub_1D304F2D8();
          v300 = v696;
          v284 = v750;
          v301 = v748;
          sub_1D30E95FC();
          if (v301)
          {
            goto LABEL_74;
          }

          v375 = v155;
          v376 = v607;
          v377 = sub_1D30E963C();
          v378 = v745;
          v443 = v377;
          v444 = v300;
          v446 = v445;
          (*(v606 + 8))(v444, v376);
          (*(v378 + 8))(v284, v375);
          swift_unknownObjectRelease();
          v523 = v565;
          *v565 = v443;
          v523[1] = v446;
          goto LABEL_118;
        case 7:
          LOBYTE(v753) = 7;
          sub_1D304F284();
          v271 = v699;
          v168 = v750;
          v272 = v748;
          sub_1D30E95FC();
          if (v272)
          {
            goto LABEL_56;
          }

          LOBYTE(v751) = 0;
          sub_1D2FF96E8();
          v367 = v612;
          sub_1D30E967C();
          v368 = v745;
          v369 = v753;
          LOBYTE(v751) = 1;
          v497 = v155;
          *&v744 = sub_1D30E963C();
          v498 = v271;
          v500 = v499;
          LOBYTE(v751) = 2;
          v501 = sub_1D30E961C();
          v748 = 0;
          v529 = v501;
          v531 = v530;
          (*(v584 + 8))(v498, v367);
          (*(v368 + 8))(v750, v497);
          swift_unknownObjectRelease();
          v496 = v555;
          *v555 = v369;
          v496[2] = v744;
          v496[3] = v500;
          v496[4] = v529;
          v496[5] = v531;
          goto LABEL_129;
        case 8:
          LOBYTE(v753) = 8;
          sub_1D304F230();
          v314 = v697;
          v168 = v750;
          v315 = v748;
          sub_1D30E95FC();
          if (v315)
          {
            goto LABEL_56;
          }

          v316 = v609;
          v317 = sub_1D30E963C();
          v318 = v745;
          v450 = v317;
          v452 = v451;
          (*(v608 + 8))(v314, v316);
          (*(v318 + 8))(v168, v155);
          swift_unknownObjectRelease();
          v403 = v566;
          *v566 = v450;
          *(v403 + 8) = v452;
          goto LABEL_120;
        case 9:
          LOBYTE(v753) = 9;
          sub_1D304F1DC();
          v239 = v698;
          v201 = v750;
          v240 = v748;
          sub_1D30E95FC();
          if (v240)
          {
            goto LABEL_98;
          }

          v241 = v611;
          v242 = sub_1D30E964C();
          v243 = v745;
          v413 = v242;
          (*(v610 + 8))(v239, v241);
          (*(v243 + 8))(v201, v155);
          swift_unknownObjectRelease();
          v414 = v413 & 1;
          v523 = v567;
          *v567 = v414;
          goto LABEL_118;
        case 10:
          LOBYTE(v753) = 10;
          sub_1D304F188();
          v309 = v702;
          v174 = v750;
          v310 = v748;
          sub_1D30E95FC();
          if (v310)
          {
            goto LABEL_94;
          }

          LOBYTE(v753) = 0;
          v311 = v617;
          v312 = sub_1D30E963C();
          v313 = v745;
          v447 = v312;
          v449 = v448;
          LOBYTE(v753) = 1;
          *&v744 = sub_1D30E961C();
          v506 = v309;
          v508 = v507;
          LOBYTE(v753) = 2;
          v509 = sub_1D30E964C();
          v748 = 0;
          v535 = v509;
          (*(v585 + 8))(v506, v311);
          (*(v313 + 8))(v174, v155);
          swift_unknownObjectRelease();
          v496 = v556;
          *v556 = v447;
          v496[1] = v449;
          v496[2] = v744;
          v496[3] = v508;
          *(v496 + 32) = v535 & 1;
          goto LABEL_129;
        case 11:
          LOBYTE(v753) = 11;
          sub_1D304F134();
          v218 = v750;
          v219 = v748;
          sub_1D30E95FC();
          if (v219)
          {
            goto LABEL_104;
          }

          LOBYTE(v753) = 0;
          sub_1D2FF67A4();
          sub_1D30E967C();
          v406 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A8, &qword_1D30F54A8);
          v407 = *(v406 + 48);
          type metadata accessor for AssetPackHost(0);
          LOBYTE(v753) = 1;
          sub_1D3045A34(&qword_1EC749A78, type metadata accessor for AssetPackHost, &protocol conformance descriptor for AssetPackHost);
          v748 = v407;
          sub_1D30E967C();
          LOBYTE(v753) = 2;
          *&v687[*(v406 + 64)] = sub_1D30E966C();
          sub_1D30E8D5C();
          LOBYTE(v753) = 3;
          sub_1D3045A34(&qword_1EC749A80, MEMORY[0x1E69E8380], MEMORY[0x1E69E8398]);
          sub_1D30E967C();
          (*(v679 + 8))(v734, v680);
          (*(v745 + 8))(v750, v747);
          swift_unknownObjectRelease();
          v399 = v687;
          goto LABEL_132;
        case 12:
          LOBYTE(v753) = 12;
          sub_1D304F0E0();
          v232 = v701;
          v201 = v750;
          v233 = v748;
          sub_1D30E95FC();
          if (v233)
          {
            goto LABEL_98;
          }

          sub_1D2FF67A4();
          v234 = v616;
          sub_1D30E967C();
          v235 = v745;
          (*(v614 + 8))(v232, v234);
          (*(v235 + 8))(v201, v155);
          swift_unknownObjectRelease();
          v236 = *(&v753 + 1);
          v237 = v755;
          v238 = v756;
          v399 = v568;
          *v568 = v753;
          *(v399 + 1) = v236;
          *(v399 + 1) = v754;
          *(v399 + 4) = v237;
          *(v399 + 5) = v238;
          goto LABEL_132;
        case 13:
          LOBYTE(v753) = 13;
          sub_1D304F08C();
          v298 = v700;
          v160 = v750;
          v299 = v748;
          sub_1D30E95FC();
          if (v299)
          {
            goto LABEL_5;
          }

          (*(v613 + 8))(v298, v615);
          (*(v745 + 8))(v160, v155);
          swift_unknownObjectRelease();
          v179 = v554;
          goto LABEL_117;
        case 14:
          LOBYTE(v753) = 14;
          sub_1D304F038();
          v200 = v703;
          v201 = v750;
          v202 = v748;
          sub_1D30E95FC();
          if (v202)
          {
            goto LABEL_98;
          }

          sub_1D2FF67A4();
          v203 = v619;
          sub_1D30E967C();
          v204 = v745;
          (*(v618 + 8))(v200, v203);
          (*(v204 + 8))(v201, v155);
          swift_unknownObjectRelease();
          v205 = *(&v753 + 1);
          v206 = v755;
          v207 = v756;
          v399 = v569;
          *v569 = v753;
          *(v399 + 1) = v205;
          *(v399 + 1) = v754;
          *(v399 + 4) = v206;
          *(v399 + 5) = v207;
          goto LABEL_132;
        case 15:
          LOBYTE(v753) = 15;
          sub_1D304EFE4();
          v258 = v704;
          v201 = v750;
          v259 = v748;
          sub_1D30E95FC();
          if (v259)
          {
            goto LABEL_98;
          }

          sub_1D2FF67A4();
          v260 = v621;
          sub_1D30E967C();
          v261 = v745;
          (*(v620 + 8))(v258, v260);
          (*(v261 + 8))(v201, v155);
          swift_unknownObjectRelease();
          v262 = *(&v753 + 1);
          v263 = v755;
          v264 = v756;
          v399 = v570;
          *v570 = v753;
          *(v399 + 1) = v262;
          *(v399 + 1) = v754;
          *(v399 + 4) = v263;
          *(v399 + 5) = v264;
          goto LABEL_132;
        case 16:
          LOBYTE(v753) = 16;
          sub_1D304EF90();
          v194 = v705;
          v168 = v750;
          v195 = v748;
          sub_1D30E95FC();
          if (v195)
          {
            goto LABEL_56;
          }

          LOBYTE(v753) = 0;
          v196 = v623;
          v197 = sub_1D30E964C();
          v198 = v745;
          v394 = v197;
          LOBYTE(v751) = 1;
          sub_1D2FF67A4();
          sub_1D30E967C();
          (*(v622 + 8))(v194, v196);
          (*(v198 + 8))(v168, v155);
          swift_unknownObjectRelease();
          v395 = v753;
          v396 = v755;
          v397 = v756;
          v398 = v394 & 1;
          v399 = v558;
          *v558 = v398;
          *(v399 + 8) = v395;
          *(v399 + 24) = v754;
          *(v399 + 5) = v396;
          *(v399 + 6) = v397;
          goto LABEL_132;
        case 17:
          LOBYTE(v753) = 17;
          sub_1D304EF3C();
          v283 = v709;
          v284 = v750;
          v285 = v748;
          sub_1D30E95FC();
          if (!v285)
          {
            LOBYTE(v751) = 0;
            sub_1D2FF67A4();
            v286 = v630;
            sub_1D30E967C();
            v428 = v155;
            v429 = *(&v753 + 1);
            v748 = v753;
            v430 = *(&v754 + 1);
            v431 = v754;
            v432 = v756;
            *&v744 = v755;
            LOBYTE(v751) = 1;
            v505 = sub_1D30E966C();
            v761 = 2;
            sub_1D30568EC();
            sub_1D30E962C();
            (*(v586 + 8))(v283, v286);
            (*(v745 + 8))(v750, v428);
            swift_unknownObjectRelease();
            v533 = v752;
            v534 = v557;
            *v557 = v748;
            *(v534 + 8) = v429;
            *(v534 + 16) = v431;
            *(v534 + 24) = v430;
            *(v534 + 32) = v744;
            *(v534 + 40) = v432;
            *(v534 + 48) = v505;
            *(v534 + 56) = v751;
            *(v534 + 72) = v533;
            swift_storeEnumTagMultiPayload();
            v179 = v554;
            sub_1D3056830(v534, v554, type metadata accessor for Helper.Message);
            goto LABEL_124;
          }

LABEL_74:
          (*(v745 + 8))(v284, v155);
          goto LABEL_7;
        case 18:
          LOBYTE(v753) = 18;
          sub_1D304EEE8();
          v302 = v706;
          v201 = v750;
          v303 = v748;
          sub_1D30E95FC();
          if (v303)
          {
            goto LABEL_98;
          }

          sub_1D2FF67A4();
          v304 = v625;
          sub_1D30E967C();
          v305 = v745;
          (*(v624 + 8))(v302, v304);
          (*(v305 + 8))(v201, v155);
          swift_unknownObjectRelease();
          v306 = *(&v753 + 1);
          v307 = v755;
          v308 = v756;
          v399 = v572;
          *v572 = v753;
          *(v399 + 1) = v306;
          *(v399 + 1) = v754;
          *(v399 + 4) = v307;
          *(v399 + 5) = v308;
          goto LABEL_132;
        case 19:
          LOBYTE(v753) = 19;
          sub_1D304EE94();
          v341 = v707;
          v168 = v750;
          v342 = v748;
          sub_1D30E95FC();
          if (v342)
          {
            goto LABEL_56;
          }

          v343 = v627;
          v344 = sub_1D30E961C();
          v345 = v745;
          v459 = v344;
          v461 = v460;
          (*(v626 + 8))(v341, v343);
          (*(v345 + 8))(v168, v155);
          swift_unknownObjectRelease();
          v403 = v571;
          *v571 = v459;
          *(v403 + 8) = v461;
          goto LABEL_120;
        case 20:
          LOBYTE(v753) = 20;
          sub_1D304EE40();
          v289 = v708;
          v168 = v750;
          v290 = v748;
          sub_1D30E95FC();
          if (v290)
          {
            goto LABEL_56;
          }

          v291 = v629;
          v292 = sub_1D30E963C();
          v293 = v745;
          v433 = v292;
          v435 = v434;
          (*(v628 + 8))(v289, v291);
          (*(v293 + 8))(v168, v155);
          swift_unknownObjectRelease();
          v403 = v573;
          *v573 = v433;
          *(v403 + 8) = v435;
          goto LABEL_120;
        case 21:
          LOBYTE(v753) = 21;
          sub_1D304EDEC();
          v174 = v750;
          v297 = v748;
          sub_1D30E95FC();
          if (v297)
          {
            goto LABEL_94;
          }

          LOBYTE(v753) = 0;
          v439 = sub_1D30E963C();
          v441 = v440;
          *&v744 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A1A0, &qword_1D30F54A0);
          v442 = v582;
          *v582 = v439;
          v442[1] = v441;
          v748 = v441;
          sub_1D30E8A4C();
          LOBYTE(v753) = 1;
          sub_1D3045A34(&qword_1EC7494C8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
          sub_1D30E967C();
          LOBYTE(v753) = 2;
          *(v582 + *(v744 + 64)) = sub_1D30E969C();
          LOBYTE(v753) = 3;
          v544 = sub_1D30E963C();
          v546 = v545;
          v542 = v582;
          v547 = (v582 + *(v744 + 80));
          (*(v587 + 8))(v735, v681);
          (*(v745 + 8))(v750, v747);
          swift_unknownObjectRelease();
          *v547 = v544;
          v547[1] = v546;
          goto LABEL_122;
        case 22:
          LOBYTE(v753) = 22;
          sub_1D304ECE4();
          v332 = v711;
          v174 = v750;
          v333 = v748;
          sub_1D30E95FC();
          if (v333)
          {
            goto LABEL_94;
          }

          v334 = v155;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A460, &qword_1D30F5660);
          LOBYTE(v751) = 0;
          sub_1D30569B8();
          v335 = v634;
          sub_1D30E967C();
          v336 = v745;
          v456 = v753;
          LOBYTE(v751) = 1;
          v457 = sub_1D30E963C();
          v748 = 0;
          v510 = v457;
          v512 = v511;
          (*(v633 + 8))(v332, v335);
          (*(v336 + 8))(v174, v334);
          swift_unknownObjectRelease();
          v513 = v559;
          *v559 = v456;
          v513[1] = v510;
          v513[2] = v512;
          swift_storeEnumTagMultiPayload();
          v424 = v513;
          goto LABEL_130;
        case 23:
          LOBYTE(v753) = 23;
          sub_1D304EC90();
          v348 = v710;
          v201 = v750;
          v349 = v748;
          sub_1D30E95FC();
          if (v349)
          {
            goto LABEL_98;
          }

          v350 = v632;
          v351 = sub_1D30E964C();
          v352 = v745;
          v353 = v351;
          (*(v631 + 8))(v348, v350);
          (*(v352 + 8))(v201, v155);
          swift_unknownObjectRelease();
          v354 = v353 & 1;
          v523 = v574;
          *v574 = v354;
          goto LABEL_118;
        case 24:
          LOBYTE(v753) = 24;
          sub_1D304EC3C();
          v249 = v712;
          v201 = v750;
          v250 = v748;
          sub_1D30E95FC();
          if (v250)
          {
            goto LABEL_98;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A440, &qword_1D30F5658);
          sub_1D3056940(&qword_1EC74A6D8, sub_1D2FF67A4, MEMORY[0x1E69E6510]);
          v251 = v636;
          sub_1D30E967C();
          v252 = v745;
          (*(v635 + 8))(v249, v251);
          (*(v252 + 8))(v201, v155);
          swift_unknownObjectRelease();
          v399 = v576;
          *v576 = v753;
          goto LABEL_132;
        case 25:
          LOBYTE(v753) = 25;
          sub_1D304EBE8();
          v244 = v714;
          v218 = v750;
          v245 = v748;
          sub_1D30E95FC();
          if (v245)
          {
            goto LABEL_104;
          }

          v246 = v155;
          LOBYTE(v751) = 0;
          sub_1D2FF96E8();
          v247 = v639;
          sub_1D30E967C();
          v248 = v745;
          v415 = v753;
          LOBYTE(v751) = 1;
          v416 = sub_1D30E969C();
          v748 = 0;
          v495 = v416;
          (*(v588 + 8))(v244, v247);
          (*(v248 + 8))(v218, v246);
          swift_unknownObjectRelease();
          v496 = v560;
          *v560 = v415;
          v496[2] = v495;
          goto LABEL_129;
        case 26:
          LOBYTE(v753) = 26;
          sub_1D304EB40();
          v361 = v715;
          v218 = v750;
          v362 = v748;
          sub_1D30E95FC();
          if (v362)
          {
LABEL_104:
            (*(v745 + 8))(v218, v155);
            goto LABEL_7;
          }

          LOBYTE(v751) = 0;
          sub_1D30568EC();
          v386 = v641;
          sub_1D30E967C();
          v387 = v745;
          v744 = v753;
          v466 = v361;
          v467 = v754;
          LOBYTE(v751) = 1;
          v468 = sub_1D30E969C();
          v748 = 0;
          v516 = v468;
          (*(v640 + 8))(v466, v386);
          (*(v387 + 8))(v218, v155);
          swift_unknownObjectRelease();
          v496 = v561;
          *v561 = v744;
          v496[2] = v467;
          v496[3] = v516;
LABEL_129:
          swift_storeEnumTagMultiPayload();
          v424 = v496;
          goto LABEL_130;
        case 27:
          LOBYTE(v753) = 27;
          sub_1D304EAEC();
          v188 = v713;
          v160 = v750;
          v189 = v748;
          sub_1D30E95FC();
          if (v189)
          {
            goto LABEL_5;
          }

          (*(v637 + 8))(v188, v638);
          (*(v745 + 8))(v160, v155);
          swift_unknownObjectRelease();
          v179 = v554;
          goto LABEL_117;
        case 28:
          LOBYTE(v753) = 28;
          sub_1D304EA98();
          v355 = v716;
          v201 = v750;
          v356 = v748;
          sub_1D30E95FC();
          if (v356)
          {
            goto LABEL_98;
          }

          v381 = v643;
          v382 = sub_1D30E969C();
          v383 = v745;
          v463 = v382;
          (*(v642 + 8))(v355, v381);
          (*(v383 + 8))(v201, v155);
          swift_unknownObjectRelease();
          v464 = v575;
          *v575 = v463;
          swift_storeEnumTagMultiPayload();
          v424 = v464;
          goto LABEL_130;
        case 29:
          LOBYTE(v753) = 29;
          sub_1D304EA44();
          v357 = v719;
          v168 = v750;
          v358 = v748;
          sub_1D30E95FC();
          if (v358)
          {
            goto LABEL_56;
          }

          LOBYTE(v753) = 0;
          sub_1D3056898();
          v384 = v649;
          sub_1D30E967C();
          v385 = v745;
          v465 = v751;
          v761 = 1;
          sub_1D2FF96E8();
          sub_1D30E967C();
          (*(v648 + 8))(v357, v384);
          (*(v385 + 8))(v168, v155);
          swift_unknownObjectRelease();
          v542 = v562;
          *v562 = v465;
          *(v542 + 1) = v753;
          goto LABEL_122;
        case 30:
          LOBYTE(v753) = 30;
          sub_1D304E99C();
          v319 = v718;
          v201 = v750;
          v320 = v748;
          sub_1D30E95FC();
          if (v320)
          {
            goto LABEL_98;
          }

          sub_1D3056898();
          v321 = v647;
          sub_1D30E967C();
          v322 = v745;
          (*(v645 + 8))(v319, v321);
          (*(v322 + 8))(v201, v155);
          swift_unknownObjectRelease();
          v399 = v577;
          *v577 = v753;
          goto LABEL_132;
        case 31:
          LOBYTE(v753) = 31;
          sub_1D304E948();
          v281 = v717;
          v160 = v750;
          v282 = v748;
          sub_1D30E95FC();
          if (v282)
          {
            goto LABEL_5;
          }

          (*(v644 + 8))(v281, v646);
          (*(v745 + 8))(v160, v155);
          swift_unknownObjectRelease();
          v179 = v554;
          goto LABEL_117;
        case 32:
          LOBYTE(v753) = 32;
          sub_1D304E8F4();
          v323 = v720;
          v168 = v750;
          v324 = v748;
          sub_1D30E95FC();
          if (v324)
          {
            goto LABEL_56;
          }

          v325 = v651;
          v326 = sub_1D30E963C();
          v327 = v745;
          v453 = v326;
          v455 = v454;
          (*(v650 + 8))(v323, v325);
          (*(v327 + 8))(v168, v155);
          swift_unknownObjectRelease();
          v403 = v578;
          *v578 = v453;
          *(v403 + 8) = v455;
          goto LABEL_120;
        case 33:
          LOBYTE(v753) = 33;
          sub_1D304E8A0();
          v208 = v721;
          v168 = v750;
          v209 = v748;
          sub_1D30E95FC();
          if (v209)
          {
            goto LABEL_56;
          }

          v210 = v653;
          v211 = sub_1D30E963C();
          v212 = v745;
          v400 = v211;
          v402 = v401;
          (*(v652 + 8))(v208, v210);
          (*(v212 + 8))(v168, v155);
          swift_unknownObjectRelease();
          v403 = v579;
          *v579 = v400;
          *(v403 + 8) = v402;
LABEL_120:
          swift_storeEnumTagMultiPayload();
          v179 = v554;
          sub_1D3056830(v403, v554, type metadata accessor for Helper.Message);
          v492 = v738;
          goto LABEL_125;
        case 34:
          LOBYTE(v753) = 34;
          sub_1D304E84C();
          v190 = v724;
          v174 = v750;
          v191 = v748;
          sub_1D30E95FC();
          if (v191)
          {
            goto LABEL_94;
          }

          sub_1D30E8D9C();
          LOBYTE(v753) = 0;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83C8]);
          v192 = v658;
          sub_1D30E967C();
          v193 = v745;
          v392 = v190;
          v393 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A190, &qword_1D30F5498);
          LOBYTE(v753) = 1;
          sub_1D2FF67A4();
          sub_1D30E967C();
          v748 = *(v393 + 64);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A3C8, &qword_1D30F5650);
          LOBYTE(v753) = 2;
          sub_1D304E7E0(&qword_1EC74A6C0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
          sub_1D30E967C();
          (*(v589 + 8))(v392, v192);
          (*(v193 + 8))(v174, v747);
          swift_unknownObjectRelease();
          v523 = v685;
          goto LABEL_118;
        case 35:
          LOBYTE(v753) = 35;
          sub_1D304E78C();
          v174 = v750;
          v180 = v748;
          sub_1D30E95FC();
          if (v180)
          {
            goto LABEL_94;
          }

          v181 = sub_1D30E8D9C();
          LOBYTE(v753) = 0;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83C8]);
          v182 = v678;
          sub_1D30E967C();
          LOBYTE(v753) = 1;
          v388 = sub_1D30E963C();
          v478 = v477;
          v479 = v388;
          v480 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A188, &qword_1D30F5490);
          v481 = &v182[*(v480 + 48)];
          *v481 = v479;
          v481[1] = v478;
          LOBYTE(v753) = 2;
          v482 = sub_1D30E961C();
          v748 = 0;
          v520 = &v182[*(v480 + 64)];
          *v520 = v482;
          v520[1] = v521;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A3C8, &qword_1D30F5650);
          LOBYTE(v753) = 3;
          sub_1D304E7E0(&qword_1EC74A6C0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6510]);
          v522 = v748;
          sub_1D30E967C();
          if (v522)
          {
            (*(v590 + 8))(v736, v682);
            (*(v745 + 8))(v750, v747);

            swift_unknownObjectRelease();

            (*(*(v181 - 8) + 8))(v678, v181);
            return __swift_destroy_boxed_opaque_existential_1(v749);
          }

          (*(v590 + 8))(v736, v682);
          (*(v745 + 8))(v750, v747);
          swift_unknownObjectRelease();
          v399 = v678;
          goto LABEL_132;
        case 36:
          LOBYTE(v753) = 36;
          sub_1D304E738();
          v183 = v723;
          v174 = v750;
          v184 = v748;
          sub_1D30E95FC();
          if (v184)
          {
            goto LABEL_94;
          }

          LOBYTE(v753) = 0;
          v185 = v657;
          v186 = sub_1D30E963C();
          v187 = v745;
          v390 = v389;
          *&v744 = v186;
          LOBYTE(v753) = 1;
          v391 = sub_1D30E961C();
          v748 = 0;
          v483 = v391;
          v485 = v484;
          (*(v654 + 8))(v183, v185);
          (*(v187 + 8))(v174, v155);
          swift_unknownObjectRelease();
          v518 = v563;
          *v563 = v744;
          v518[1] = v390;
          v518[2] = v483;
          v518[3] = v485;
          goto LABEL_128;
        case 37:
          LOBYTE(v753) = 37;
          sub_1D304E6E4();
          v173 = v726;
          v174 = v750;
          v175 = v748;
          sub_1D30E95FC();
          if (v175)
          {
            goto LABEL_94;
          }

          sub_1D30E8D9C();
          LOBYTE(v753) = 0;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83C8]);
          v176 = v661;
          sub_1D30E967C();
          v177 = v745;
          LOBYTE(v753) = 1;
          v469 = sub_1D30E963C();
          v471 = v470;
          v472 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A180, &qword_1D30F5488);
          v473 = &v689[*(v472 + 48)];
          *v473 = v469;
          v473[1] = v471;
          LOBYTE(v753) = 2;
          v474 = sub_1D30E961C();
          v476 = v475;
          v517 = v474;
          v518 = v689;
          v519 = &v689[*(v472 + 64)];
          (*(v591 + 8))(v173, v176);
          (*(v177 + 8))(v174, v747);
          swift_unknownObjectRelease();
          *v519 = v517;
          *(v519 + 1) = v476;
          goto LABEL_128;
        case 38:
          LOBYTE(v753) = 38;
          sub_1D304E690();
          v359 = v722;
          v160 = v750;
          v360 = v748;
          sub_1D30E95FC();
          if (v360)
          {
            goto LABEL_5;
          }

          (*(v655 + 8))(v359, v656);
          (*(v745 + 8))(v160, v155);
          swift_unknownObjectRelease();
          v179 = v554;
          goto LABEL_117;
        case 39:
          LOBYTE(v753) = 39;
          sub_1D304E63C();
          v337 = v725;
          v201 = v750;
          v338 = v748;
          sub_1D30E95FC();
          if (v338)
          {
            goto LABEL_98;
          }

          sub_1D30E8D9C();
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83C8]);
          v329 = v593;
          v339 = v660;
          sub_1D30E967C();
          v340 = v745;
          (*(v659 + 8))(v337, v339);
          (*(v340 + 8))(v201, v155);
          swift_unknownObjectRelease();
          goto LABEL_119;
        case 40:
          LOBYTE(v753) = 40;
          sub_1D304E5E8();
          v228 = v728;
          v174 = v750;
          v229 = v748;
          sub_1D30E95FC();
          if (v229)
          {
            goto LABEL_94;
          }

          LOBYTE(v753) = 0;
          sub_1D2FF96E8();
          v230 = v664;
          sub_1D30E967C();
          v231 = v745;
          *&v744 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
          v412 = *(v744 + 48);
          sub_1D30E8D9C();
          LOBYTE(v753) = 1;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83C8]);
          v748 = v412;
          sub_1D30E967C();
          LOBYTE(v753) = 2;
          v493 = sub_1D30E961C();
          v494 = v230;
          v527 = v526;
          v518 = v684;
          v528 = &v684[*(v744 + 64)];
          (*(v592 + 8))(v228, v494);
          (*(v231 + 8))(v174, v155);
          swift_unknownObjectRelease();
          *v528 = v493;
          v528[1] = v527;
          goto LABEL_128;
        case 41:
          LOBYTE(v753) = 41;
          sub_1D304E594();
          v287 = v727;
          v168 = v750;
          v288 = v748;
          sub_1D30E95FC();
          if (v288)
          {
            goto LABEL_56;
          }

          sub_1D30E8D9C();
          LOBYTE(v753) = 0;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83C8]);
          v170 = v597;
          v373 = v663;
          sub_1D30E967C();
          v374 = v745;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478);
          LOBYTE(v753) = 1;
          sub_1D2FF96E8();
          sub_1D30E967C();
          (*(v662 + 8))(v287, v373);
          (*(v374 + 8))(v168, v155);
          swift_unknownObjectRelease();
          goto LABEL_121;
        case 42:
          LOBYTE(v753) = 42;
          sub_1D304E540();
          v346 = v731;
          v174 = v750;
          v347 = v748;
          sub_1D30E95FC();
          if (v347)
          {
LABEL_94:
            (*(v745 + 8))(v174, v155);
            goto LABEL_7;
          }

          LOBYTE(v753) = 0;
          sub_1D2FF96E8();
          v379 = v670;
          sub_1D30E967C();
          v380 = v745;
          *&v744 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A178, &qword_1D30F5480);
          v462 = *(v744 + 48);
          sub_1D30E8D9C();
          LOBYTE(v753) = 1;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83C8]);
          v748 = v462;
          sub_1D30E967C();
          LOBYTE(v753) = 2;
          v514 = sub_1D30E961C();
          v515 = v379;
          v537 = v536;
          v518 = v686;
          v538 = &v686[*(v744 + 64)];
          (*(v739 + 8))(v346, v515);
          (*(v380 + 8))(v174, v155);
          swift_unknownObjectRelease();
          *v538 = v514;
          v538[1] = v537;
LABEL_128:
          swift_storeEnumTagMultiPayload();
          v424 = v518;
          goto LABEL_130;
        case 43:
          LOBYTE(v753) = 43;
          sub_1D304E4EC();
          v167 = v730;
          v168 = v750;
          v169 = v748;
          sub_1D30E95FC();
          if (v169)
          {
            goto LABEL_56;
          }

          sub_1D30E8D9C();
          LOBYTE(v753) = 0;
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83C8]);
          v170 = v598;
          v171 = v669;
          sub_1D30E967C();
          v172 = v745;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A170, &qword_1D30F5478);
          LOBYTE(v753) = 1;
          sub_1D2FF96E8();
          sub_1D30E967C();
          (*(v667 + 8))(v167, v171);
          (*(v172 + 8))(v168, v155);
          swift_unknownObjectRelease();
LABEL_121:
          swift_storeEnumTagMultiPayload();
          v458 = v170;
          goto LABEL_123;
        case 44:
          LOBYTE(v753) = 44;
          sub_1D304E498();
          v168 = v750;
          v199 = v748;
          sub_1D30E95FC();
          if (v199)
          {
LABEL_56:
            (*(v745 + 8))(v168, v155);
            goto LABEL_7;
          }

          LOBYTE(v753) = 0;
          sub_1D2FF96E8();
          sub_1D30E967C();
          v748 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A168, &qword_1D30F5470);
          sub_1D30E8D5C();
          LOBYTE(v753) = 1;
          sub_1D3045A34(&qword_1EC749A80, MEMORY[0x1E69E8380], MEMORY[0x1E69E8398]);
          sub_1D30E967C();
          LOBYTE(v753) = 2;
          v486 = sub_1D30E963C();
          v524 = &v688[*(v748 + 64)];
          *v524 = v486;
          v524[1] = v525;
          LOBYTE(v753) = 3;
          v539 = sub_1D30E961C();
          v541 = v540;
          v542 = v688;
          v543 = &v688[*(v748 + 80)];
          (*(v740 + 8))(v737, v683);
          (*(v745 + 8))(v750, v155);
          swift_unknownObjectRelease();
          *v543 = v539;
          v543[1] = v541;
LABEL_122:
          swift_storeEnumTagMultiPayload();
          v458 = v542;
          goto LABEL_123;
        case 45:
          LOBYTE(v753) = 45;
          sub_1D304E444();
          v201 = v750;
          v328 = v748;
          sub_1D30E95FC();
          if (v328)
          {
            goto LABEL_98;
          }

          sub_1D30E8D9C();
          sub_1D3045A34(&qword_1EC74A6B8, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83C8]);
          v329 = v594;
          v330 = v671;
          sub_1D30E967C();
          v331 = v745;
          (*(v668 + 8))(v153, v330);
          (*(v331 + 8))(v201, v155);
          swift_unknownObjectRelease();
LABEL_119:
          swift_storeEnumTagMultiPayload();
          v458 = v329;
          goto LABEL_123;
        case 46:
          LOBYTE(v753) = 46;
          sub_1D304E3F0();
          v363 = v729;
          v160 = v750;
          v364 = v748;
          sub_1D30E95FC();
          if (v364)
          {
            goto LABEL_5;
          }

          (*(v665 + 8))(v363, v666);
          (*(v745 + 8))(v160, v155);
          swift_unknownObjectRelease();
          v179 = v554;
          goto LABEL_117;
        case 47:
          LOBYTE(v753) = 47;
          sub_1D304E39C();
          v160 = v750;
          v178 = v748;
          sub_1D30E95FC();
          if (v178)
          {
LABEL_5:
            (*(v745 + 8))(v160, v155);
            goto LABEL_7;
          }

          (*(v672 + 8))(v154, v673);
          (*(v745 + 8))(v160, v155);
          swift_unknownObjectRelease();
          v179 = v554;
LABEL_117:
          swift_storeEnumTagMultiPayload();
          v492 = v738;
          goto LABEL_125;
        case 48:
          LOBYTE(v753) = 48;
          sub_1D304E348();
          v213 = v733;
          v201 = v750;
          v214 = v748;
          sub_1D30E95FC();
          if (v214)
          {
LABEL_98:
            (*(v745 + 8))(v201, v155);
            goto LABEL_7;
          }

          v215 = v674;
          v216 = sub_1D30E964C();
          v217 = v745;
          v404 = v216;
          (*(v675 + 8))(v213, v215);
          (*(v217 + 8))(v201, v155);
          swift_unknownObjectRelease();
          v405 = v404 & 1;
          v523 = v580;
          *v580 = v405;
LABEL_118:
          swift_storeEnumTagMultiPayload();
          v424 = v523;
LABEL_130:
          v179 = v554;
          sub_1D3056830(v424, v554, type metadata accessor for Helper.Message);
          v492 = v738;
          goto LABEL_125;
        case 49:
          LOBYTE(v753) = 49;
          sub_1D304E2F4();
          v220 = v732;
          v221 = v750;
          v222 = v748;
          sub_1D30E95FC();
          if (v222)
          {
            (*(v745 + 8))(v221, v155);
            swift_unknownObjectRelease();
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC74A348, &qword_1D30F5648);
            sub_1D30567C4(&qword_1EE313050, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
            v365 = v676;
            sub_1D30E967C();
            v366 = v745;
            (*(v677 + 8))(v220, v365);
            (*(v366 + 8))(v221, v155);
            swift_unknownObjectRelease();
            v399 = v581;
            *v581 = v753;
LABEL_132:
            swift_storeEnumTagMultiPayload();
            v458 = v399;
LABEL_123:
            v179 = v554;
            sub_1D3056830(v458, v554, type metadata accessor for Helper.Message);
LABEL_124:
            v492 = v738;
LABEL_125:
            sub_1D3056830(v179, v492, type metadata accessor for Helper.Message);
          }

          break;
        default:
          goto LABEL_6;
      }
    }

    else
    {
LABEL_6:
      v162 = sub_1D30E94EC();
      swift_allocError();
      v164 = v163;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7492A0, &qword_1D30EED30);
      *v164 = v746;
      v165 = v750;
      sub_1D30E960C();
      sub_1D30E94DC();
      (*(*(v162 - 8) + 104))(v164, *MEMORY[0x1E69E6AF8], v162);
      swift_willThrow();
      (*(v745 + 8))(v165, v155);
LABEL_7:
      swift_unknownObjectRelease();
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v749);
}

uint64_t sub_1D30567C4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A348, &qword_1D30F5648);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D3056830(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D3056898()
{
  result = qword_1EC74A6C8;
  if (!qword_1EC74A6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A6C8);
  }

  return result;
}

unint64_t sub_1D30568EC()
{
  result = qword_1EC74A6D0;
  if (!qword_1EC74A6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A6D0);
  }

  return result;
}

uint64_t sub_1D3056940(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A440, &qword_1D30F5658);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D30569B8()
{
  result = qword_1EC74A6E0;
  if (!qword_1EC74A6E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC74A460, &qword_1D30F5660);
    sub_1D3045A34(&qword_1EC74A6E8, type metadata accessor for AssetPackRecord.StaticRepresentation, &protocol conformance descriptor for AssetPackRecord.StaticRepresentation);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC74A6E0);
  }

  return result;
}

uint64_t Helper.Reply.description.getter()
{
  v109 = sub_1D30E8D9C();
  v107 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v105 = &v99 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v1 = type metadata accessor for Helper.PathToStagingDirectoryLookupResult(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v108 = &v99 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = type metadata accessor for Helper.PathForAppLookupResult(0);
  v104 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v101 = &v99 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Helper.PathInAssetPackLookupResult(0);
  v103 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v100 = &v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for LicenseRecord.StaticRepresentation(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v99 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AssetPackRecord.StaticRepresentation(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Helper.PathToManifestLookupResult(0);
  v102 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v99 = &v99 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Helper.URLRequestResult(0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v99 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Helper.Reply(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v99 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D3058338(v110, v19, type metadata accessor for Helper.Reply);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x692065766F6D6552;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      v46 = *v19;
      v47 = *(v19 + 1);
      v57 = *(v19 + 2);
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v122 = 0x74736566696E614DLL;
      *(&v122 + 1) = 0xEF203A6174616420;
      v58 = sub_1D30E88EC();
      MEMORY[0x1D38B2610](v58);

      MEMORY[0x1D38B2610](0x3A656372756F7320, 0xE900000000000020);
      if (v57 > 2)
      {
        switch(v57)
        {
          case 3:
            v60 = 0xEA00000000007765;
            v59 = 0x6976655220707041;
            goto LABEL_86;
          case 4:
            v60 = 0x80000001D30EA750;
            v59 = 0xD000000000000012;
            goto LABEL_86;
          case 5:
            v60 = 0x80000001D30EA730;
            v59 = 0xD000000000000014;
            goto LABEL_86;
        }
      }

      else
      {
        switch(v57)
        {
          case 0:
            v60 = 0xE900000000000065;
            v59 = 0x726F745320707041;
            goto LABEL_86;
          case 1:
            v59 = 0x67696C4674736554;
            v60 = 0xEA00000000007468;
LABEL_86:
            v68 = v60;
            goto LABEL_87;
          case 2:
            v60 = 0xEB00000000656863;
            v59 = 0x6143206C61636F4CLL;
            goto LABEL_86;
        }
      }

      result = sub_1D30E957C();
      __break(1u);
      return result;
    case 2:
      v46 = *v19;
      v47 = *(v19 + 1);
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v48 = 0x80000001D30ED950;
      v49 = 0xD000000000000019;
      goto LABEL_29;
    case 3:
      v46 = *v19;
      v47 = *(v19 + 1);
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v48 = 0x80000001D30ED930;
      v49 = 0xD00000000000001ALL;
LABEL_29:
      *&v122 = v49;
      *(&v122 + 1) = v48;
      v59 = sub_1D30E88EC();
LABEL_87:
      MEMORY[0x1D38B2610](v59, v68);

      sub_1D2FF1804(v46, v47);
      return v122;
    case 4:
      v71 = *(v19 + 1);
      if (v71 >> 60 == 15)
      {
        return 0xD000000000000019;
      }

      v96 = *v19;
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v122 = 0xD00000000000001BLL;
      *(&v122 + 1) = 0x80000001D30ED910;
      v97 = sub_1D30E88EC();
      MEMORY[0x1D38B2610](v97);

      sub_1D30652E4(v96, v71);
      return v122;
    case 5:
      sub_1D3056830(v19, v16, type metadata accessor for Helper.URLRequestResult);
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v122 = 0xD00000000000001CLL;
      *(&v122 + 1) = 0x80000001D30ED8B0;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v111 = 0xD00000000000001FLL;
      *(&v111 + 1) = 0x80000001D30ED8D0;
      sub_1D30E852C();
      sub_1D3045A34(&qword_1EC7493E8, MEMORY[0x1E6967EC8], MEMORY[0x1E6967EE0]);
      v77 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v77);

      MEMORY[0x1D38B2610](62, 0xE100000000000000);
      MEMORY[0x1D38B2610](v111, *(&v111 + 1));

      v78 = v122;
      v79 = type metadata accessor for Helper.URLRequestResult;
      v80 = v16;
      goto LABEL_77;
    case 6:
      if ((*(v102 + 48))(v19, 1, v12) == 1)
      {
        return 0xD00000000000001FLL;
      }

      v85 = v99;
      sub_1D3056830(v19, v99, type metadata accessor for Helper.PathToManifestLookupResult);
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v122 = 0xD000000000000021;
      *(&v122 + 1) = 0x80000001D30ED850;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v111 = 0xD000000000000028;
      *(&v111 + 1) = 0x80000001D30ED880;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v94 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v94);

      MEMORY[0x1D38B2610](62, 0xE100000000000000);
      MEMORY[0x1D38B2610](v111, *(&v111 + 1));

      v78 = v122;
      v87 = type metadata accessor for Helper.PathToManifestLookupResult;
      goto LABEL_76;
    case 7:
      v50 = *v19;
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v51 = 0x80000001D30ED7D0;
      v52 = 0xD000000000000018;
      goto LABEL_46;
    case 8:
      v50 = *v19;
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v51 = 0x80000001D30ED7A0;
      v52 = 0xD000000000000026;
LABEL_46:
      *&v122 = v52;
      *(&v122 + 1) = v51;
      v34 = v50;
      v35 = v9;
      goto LABEL_47;
    case 9:
      sub_1D3056830(v19, v11, type metadata accessor for AssetPackRecord.StaticRepresentation);
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v122 = 0xD00000000000001ALL;
      *(&v122 + 1) = 0x80000001D30ED760;
      v81 = AssetPackRecord.StaticRepresentation.description.getter();
      MEMORY[0x1D38B2610](v81);

      v78 = v122;
      v79 = type metadata accessor for AssetPackRecord.StaticRepresentation;
      v80 = v11;
      goto LABEL_77;
    case 10:
      v43 = *v19;
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v44 = 0x80000001D30ED730;
      v45 = 0xD000000000000026;
      goto LABEL_60;
    case 11:
      v43 = *v19;
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v44 = 0x80000001D30ED710;
      v45 = 0xD000000000000019;
      goto LABEL_60;
    case 12:
      v73 = *v19;
      v74 = *(v19 + 1);
      v76 = *(v19 + 2);
      v75 = *(v19 + 3);
      sub_1D2FF1804(v73, v74);
      sub_1D2FF1804(v76, v75);
      return 0xD00000000000001CLL;
    case 13:
      v36 = *(v19 + 1);
      if (!v36)
      {
        return 0xD000000000000014;
      }

      v38 = *(v19 + 4);
      v37 = *(v19 + 5);
      v40 = *(v19 + 2);
      v39 = *(v19 + 3);
      v41 = *v19;
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v111 = 0xD000000000000016;
      *(&v111 + 1) = 0x80000001D30ED620;
      *&v122 = v41;
      *(&v122 + 1) = v36;
      *&v123 = v40;
      *(&v123 + 1) = v39;
      *&v124 = v38;
      *(&v124 + 1) = v37;
      v42 = AppLicenseDelivery.Request.StaticRepresentation.description.getter();
      MEMORY[0x1D38B2610](v42);

      sub_1D302A36C(v41, v36, v40, v39, v38, v37);
      return v111;
    case 14:
      v62 = *v19;
      v61 = *(v19 + 1);
      v63 = *(v19 + 2);
      v64 = *(v19 + 3);
      v65 = *(v19 + 4);
      v66 = *(v19 + 5);
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v111 = 0xD00000000000001CLL;
      *(&v111 + 1) = 0x80000001D30ED5E0;
      *&v122 = v62;
      *(&v122 + 1) = v61;
      *&v123 = v63;
      *(&v123 + 1) = v64;
      *&v124 = v65;
      *(&v124 + 1) = v66;
      v67 = AppLicenseDelivery.Request.StaticRepresentation.description.getter();
      MEMORY[0x1D38B2610](v67);

      sub_1D2FF1804(v63, v64);
      sub_1D2FF1804(v65, v66);
      return v111;
    case 15:
      v33 = *v19;
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v122 = 0xD000000000000015;
      *(&v122 + 1) = 0x80000001D30ED580;
      v34 = v33;
      v35 = v6;
      goto LABEL_47;
    case 16:
      sub_1D3056830(v19, v8, type metadata accessor for LicenseRecord.StaticRepresentation);
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v122 = 0xD000000000000017;
      *(&v122 + 1) = 0x80000001D30ED560;
      v69 = LicenseRecord.StaticRepresentation.description.getter();
      MEMORY[0x1D38B2610](v69);

      v70 = v122;
      sub_1D3065284(v8, type metadata accessor for LicenseRecord.StaticRepresentation);
      return v70;
    case 17:
      v56 = *v19;
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v122 = 0xD000000000000018;
      *(&v122 + 1) = 0x80000001D30ED500;
      v35 = &type metadata for AppReviewRecord.StaticRepresentation;
      goto LABEL_43;
    case 18:
      v89 = *v19;
      v88 = *(v19 + 1);
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v122 = 0xD00000000000001ALL;
      *(&v122 + 1) = 0x80000001D30ED4C0;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v111 = 0xD000000000000024;
      *(&v111 + 1) = 0x80000001D30EBD70;
      MEMORY[0x1D38B2610](v89, v88);
      MEMORY[0x1D38B2610](62, 0xE100000000000000);

      v55 = *(&v111 + 1);
      v54 = v111;
      goto LABEL_66;
    case 19:
      if ((*(v103 + 48))(v19, 1, v4) == 1)
      {
        return 0xD000000000000012;
      }

      v85 = v100;
      sub_1D3056830(v19, v100, type metadata accessor for Helper.PathInAssetPackLookupResult);
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v122 = 0xD000000000000014;
      *(&v122 + 1) = 0x80000001D30ED470;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v111 = 0xD00000000000002ALL;
      *(&v111 + 1) = 0x80000001D30ED490;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v95 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v95);

      MEMORY[0x1D38B2610](15904, 0xE200000000000000);
      MEMORY[0x1D38B2610](v111, *(&v111 + 1));

      v78 = v122;
      v87 = type metadata accessor for Helper.PathInAssetPackLookupResult;
      goto LABEL_76;
    case 20:
      v72 = v106;
      if ((*(v104 + 48))(v19, 1, v106) == 1)
      {
        return 0x726F662068746150;
      }

      v85 = v101;
      sub_1D3056830(v19, v101, type metadata accessor for Helper.PathForAppLookupResult);
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      strcpy(&v122, "Path for app: ");
      HIBYTE(v122) = -18;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000024, 0x80000001D30ED420);
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v98 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v98);

      MEMORY[0x1D38B2610](0xD000000000000010, 0x80000001D30EBC00);
      MEMORY[0x1D38B2610](*(v85 + *(v72 + 20)), *(v85 + *(v72 + 20) + 8));
      MEMORY[0x1D38B2610](62, 0xE100000000000000);
      MEMORY[0x1D38B2610](v111, *(&v111 + 1));

      v78 = v122;
      v87 = type metadata accessor for Helper.PathForAppLookupResult;
LABEL_76:
      v79 = v87;
      v80 = v85;
LABEL_77:
      sub_1D3065284(v80, v79);
      return v78;
    case 21:
      v85 = v108;
      sub_1D3056830(v19, v108, type metadata accessor for Helper.PathToStagingDirectoryLookupResult);
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v122 = 0xD00000000000001BLL;
      *(&v122 + 1) = 0x80000001D30ED3C0;
      *&v111 = 0;
      *(&v111 + 1) = 0xE000000000000000;
      sub_1D30E948C();
      MEMORY[0x1D38B2610](0xD000000000000031, 0x80000001D30ED3E0);
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v86 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v86);

      MEMORY[0x1D38B2610](62, 0xE100000000000000);
      MEMORY[0x1D38B2610](v111, *(&v111 + 1));

      v78 = v122;
      v87 = type metadata accessor for Helper.PathToStagingDirectoryLookupResult;
      goto LABEL_76;
    case 22:
      v90 = v107;
      v91 = v105;
      v92 = v109;
      (*(v107 + 32))(v105, v19, v109);
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v122 = 0xD000000000000013;
      *(&v122 + 1) = 0x80000001D30ED370;
      sub_1D3045A34(&unk_1EC749370, MEMORY[0x1E69E83A8], MEMORY[0x1E69E83D0]);
      v93 = sub_1D30E977C();
      MEMORY[0x1D38B2610](v93);

      v78 = v122;
      (*(v90 + 8))(v91, v92);
      return v78;
    case 23:
      v56 = *v19;
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      *&v122 = 0xD000000000000018;
      *(&v122 + 1) = 0x80000001D30ED350;
      v35 = sub_1D30E8D5C();
LABEL_43:
      v34 = v56;
LABEL_47:
      v82 = MEMORY[0x1D38B26B0](v34, v35);
      v84 = v83;

      MEMORY[0x1D38B2610](v82, v84);
      goto LABEL_67;
    case 24:
      v53 = *v19;
      *&v122 = 0x7075206E61656C43;
      *(&v122 + 1) = 0xEA0000000000203ALL;
      if (v53)
      {
        v54 = 1702195828;
      }

      else
      {
        v54 = 0x65736C6166;
      }

      if (v53)
      {
        v55 = 0xE400000000000000;
      }

      else
      {
        v55 = 0xE500000000000000;
      }

      goto LABEL_66;
    case 25:
      v43 = *v19;
      *&v122 = 0;
      *(&v122 + 1) = 0xE000000000000000;
      sub_1D30E948C();

      v44 = 0x80000001D30ED290;
      v45 = 0xD00000000000001ALL;
LABEL_60:
      *&v122 = v45;
      *(&v122 + 1) = v44;
      if (v43)
      {
        v54 = 1702195828;
      }

      else
      {
        v54 = 0x65736C6166;
      }

      if (v43)
      {
        v55 = 0xE400000000000000;
      }

      else
      {
        v55 = 0xE500000000000000;
      }

LABEL_66:
      MEMORY[0x1D38B2610](v54, v55);
LABEL_67:

      return v122;
    case 26:
    case 30:
      return 0xD000000000000010;
    case 27:
      return 0xD000000000000012;
    case 28:
    case 36:
    case 39:
    case 40:
    case 49:
      return 0xD000000000000015;
    case 29:
      return 0xD000000000000018;
    case 31:
      return 0xD000000000000018;
    case 32:
      return 0xD000000000000011;
    case 33:
      return 0xD000000000000016;
    case 34:
    case 41:
      return 0xD000000000000020;
    case 35:
      return 0xD00000000000001FLL;
    case 37:
    case 38:
      return 0xD000000000000013;
    case 42:
      return 0xD000000000000018;
    case 43:
    case 45:
      return 0xD00000000000001ALL;
    case 44:
      return 0xD000000000000018;
    case 46:
      return 0xD00000000000001ELL;
    case 47:
      return result;
    case 48:
      return 0x6164206573617245;
    default:
      v22 = *(v19 + 5);
      v23 = *(v19 + 7);
      v128 = *(v19 + 6);
      v129 = v23;
      v24 = *(v19 + 1);
      v25 = *(v19 + 3);
      v124 = *(v19 + 2);
      v125 = v25;
      v26 = *(v19 + 3);
      v27 = *(v19 + 5);
      v126 = *(v19 + 4);
      v127 = v27;
      v28 = *(v19 + 1);
      v122 = *v19;
      v123 = v28;
      v29 = *(v19 + 7);
      v117 = v128;
      v118 = v29;
      v113 = v124;
      v114 = v26;
      v115 = v126;
      v116 = v22;
      v130 = *(v19 + 16);
      v120 = 0x6F666E6920707041;
      v121 = 0xEA0000000000203ALL;
      v119 = *(v19 + 16);
      v111 = v122;
      v112 = v24;
      v30 = AppInfo.description.getter();
      v32 = v31;
      sub_1D2FE2EC4(&v122);
      MEMORY[0x1D38B2610](v30, v32);

      return v120;
  }
}

uint64_t sub_1D3058338(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D30583A0(char a1)
{
  result = 0x6F666E49707061;
  switch(a1)
  {
    case 1:
      result = 0x74736566696E616DLL;
      break;
    case 2:
    case 15:
    case 30:
      result = 0xD000000000000014;
      break;
    case 3:
    case 4:
    case 17:
    case 36:
    case 41:
    case 43:
    case 48:
      result = 0xD000000000000016;
      break;
    case 5:
    case 24:
      result = 0xD000000000000017;
      break;
    case 6:
    case 44:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0x4D6C6C6174736E69;
      break;
    case 8:
    case 26:
    case 27:
      result = 0xD000000000000011;
      break;
    case 9:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD00000000000001ELL;
      break;
    case 11:
    case 23:
    case 29:
    case 32:
      result = 0xD000000000000012;
      break;
    case 12:
    case 13:
    case 33:
    case 40:
    case 42:
      result = 0xD000000000000015;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 16:
      result = 0x6176417349746573;
      break;
    case 18:
      v3 = 0x65766F6D6572;
      goto LABEL_19;
    case 19:
      result = 0xD000000000000013;
      break;
    case 20:
    case 37:
      result = 0xD00000000000001CLL;
      break;
    case 21:
      result = 0x4C74736575716572;
      break;
    case 22:
      result = 0xD00000000000001BLL;
      break;
    case 25:
      result = 0xD000000000000013;
      break;
    case 28:
      result = 0xD000000000000013;
      break;
    case 31:
      result = 0xD000000000000013;
      break;
    case 34:
      v3 = 0x6E4968746170;
LABEL_19:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x7341000000000000;
      break;
    case 35:
      result = 0x41726F4668746170;
      break;
    case 38:
      result = 0x6F436F5468746170;
      break;
    case 39:
      result = 0xD000000000000013;
      break;
    case 45:
      result = 0x744965766F6D6572;
      break;
    case 46:
      result = 0x70556E61656C63;
      break;
    case 47:
      result = 0x7461446573617265;
      break;
    case 49:
      result = 0xD000000000000013;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D3058818(uint64_t a1)
{
  v2 = sub_1D30659E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058854(uint64_t a1)
{
  v2 = sub_1D30659E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058890(uint64_t a1)
{
  v2 = sub_1D3066258();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30588CC(uint64_t a1)
{
  v2 = sub_1D3066258();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058908(uint64_t a1)
{
  v2 = sub_1D3065A3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058944(uint64_t a1)
{
  v2 = sub_1D3065A3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058980(uint64_t a1)
{
  v2 = sub_1D3066300();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30589BC(uint64_t a1)
{
  v2 = sub_1D3066300();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30589F8(uint64_t a1)
{
  v2 = sub_1D30662AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058A34(uint64_t a1)
{
  v2 = sub_1D30662AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058A70(uint64_t a1)
{
  v2 = sub_1D3065C10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058AAC(uint64_t a1)
{
  v2 = sub_1D3065C10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058AE8(uint64_t a1)
{
  v2 = sub_1D30665F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058B24(uint64_t a1)
{
  v2 = sub_1D30665F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058B60(uint64_t a1)
{
  v2 = sub_1D306654C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058B9C(uint64_t a1)
{
  v2 = sub_1D306654C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058BD8(uint64_t a1)
{
  v2 = sub_1D3066450();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058C14(uint64_t a1)
{
  v2 = sub_1D3066450();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058C50(uint64_t a1)
{
  v2 = sub_1D306534C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058C8C(uint64_t a1)
{
  v2 = sub_1D306534C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058CC8(uint64_t a1)
{
  v2 = sub_1D3066108();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058D04(uint64_t a1)
{
  v2 = sub_1D3066108();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058D40(uint64_t a1)
{
  v2 = sub_1D3065448();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058D7C(uint64_t a1)
{
  v2 = sub_1D3065448();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058DC0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D30DB2DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D3058DE8(uint64_t a1)
{
  v2 = sub_1D30652F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058E24(uint64_t a1)
{
  v2 = sub_1D30652F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058E60(uint64_t a1)
{
  v2 = sub_1D30653A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058E9C(uint64_t a1)
{
  v2 = sub_1D30653A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058ED8(uint64_t a1)
{
  v2 = sub_1D3065694();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058F14(uint64_t a1)
{
  v2 = sub_1D3065694();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058F50(uint64_t a1)
{
  v2 = sub_1D3065640();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3058F8C(uint64_t a1)
{
  v2 = sub_1D3065640();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3058FC8(uint64_t a1)
{
  v2 = sub_1D30657F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D3059004(uint64_t a1)
{
  v2 = sub_1D30657F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059040(uint64_t a1)
{
  v2 = sub_1D30655EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D305907C(uint64_t a1)
{
  v2 = sub_1D30655EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30590B8(uint64_t a1)
{
  v2 = sub_1D30661B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30590F4(uint64_t a1)
{
  v2 = sub_1D30661B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D3059130(uint64_t a1)
{
  v2 = sub_1D30653F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D305916C(uint64_t a1)
{
  v2 = sub_1D30653F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D30591A8(uint64_t a1)
{
  v2 = sub_1D3065B68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D30591E4(uint64_t a1)
{
  v2 = sub_1D3065B68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}