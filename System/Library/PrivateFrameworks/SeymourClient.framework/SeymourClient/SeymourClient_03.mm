void sub_1B4E1ACA0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v71 = a6;
  v69 = a4;
  v70 = a5;
  v68 = a2;
  v74 = a9;
  v75 = a8;
  v78 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45B0, &qword_1B4F6CE68);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v67 - v25);
  sub_1B4E21A90(a1, &v67 - v25, &qword_1EB8F45B0, &qword_1B4F6CE68);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v28 = sub_1B4F67C54();
    __swift_project_value_buffer(v28, qword_1EDB70E18);
    v29 = v11;
    (*(v12 + 16))(v18, v73, v11);

    v30 = v27;
    v31 = sub_1B4F67C34();
    v32 = sub_1B4F685C4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      state.opaque[0] = v34;
      *v33 = 136446978;
      *(v33 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v33 + 12) = 2082;
      v35 = sub_1B4F689D4();
      v37 = v29;
      v38 = sub_1B4DC4F88(v35, v36, &state);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2048;
      v39 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v41 = v40;
      v42 = *(v12 + 8);
      v42(v39, v37);
      v42(v18, v37);
      *(v33 + 24) = v41;
      *(v33 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v44 = MEMORY[0x1EEE9AC00](ErrorValue, v76);
      (*(v46 + 16))(&v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
      v47 = sub_1B4F67F94();
      v49 = sub_1B4DC4F88(v47, v48, &state);

      *(v33 + 34) = v49;
      _os_log_impl(&dword_1B4DC2000, v31, v32, "[%{public}s] %{public}s ended in %fs -> %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v34, -1, -1);
      MEMORY[0x1B8C831D0](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v50 = sub_1B4F67C54();
    __swift_project_value_buffer(v50, qword_1EDB70E18);
    v51 = v11;
    (*(v12 + 16))(v22, v73, v11);

    v52 = sub_1B4F67C34();
    v53 = sub_1B4F685E4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      state.opaque[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v54 + 12) = 2082;
      v56 = sub_1B4F689D4();
      v58 = v51;
      v59 = sub_1B4DC4F88(v56, v57, &state);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2048;
      v60 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v62 = v61;
      v63 = *(v12 + 8);
      v63(v60, v58);
      v63(v22, v58);
      *(v54 + 24) = v62;
      _os_log_impl(&dword_1B4DC2000, v52, v53, "[%{public}s] %{public}s ended in %fs", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v55, -1, -1);
      MEMORY[0x1B8C831D0](v54, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v22, v51);
    }

    sub_1B4DD2BC4(v26, &qword_1EB8F45B0, &qword_1B4F6CE68);
  }

  v64 = *(v75 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v64 + 24));
  sub_1B4DDF3A4((v64 + 16));
  os_unfair_lock_unlock((v64 + 24));
  v65 = *(v74 + 40);
  os_unfair_lock_lock((v65 + 44));
  if (*(v65 + 40) == 1)
  {
    v66 = *(v65 + 16);
    state = *(v65 + 24);
    os_activity_scope_leave(&state);
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 16) = v66;
    *(v65 + 40) = 0;
  }

  os_unfair_lock_unlock((v65 + 44));
}

void sub_1B4E1B3CC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v71 = a6;
  v69 = a4;
  v70 = a5;
  v68 = a2;
  v74 = a9;
  v75 = a8;
  v78 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45A8, &qword_1B4F6CE60);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v67 - v25);
  sub_1B4E21A90(a1, &v67 - v25, &qword_1EB8F45A8, &qword_1B4F6CE60);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v28 = sub_1B4F67C54();
    __swift_project_value_buffer(v28, qword_1EDB70E18);
    v29 = v11;
    (*(v12 + 16))(v18, v73, v11);

    v30 = v27;
    v31 = sub_1B4F67C34();
    v32 = sub_1B4F685C4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      state.opaque[0] = v34;
      *v33 = 136446978;
      *(v33 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v33 + 12) = 2082;
      v35 = sub_1B4F689D4();
      v37 = v29;
      v38 = sub_1B4DC4F88(v35, v36, &state);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2048;
      v39 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v41 = v40;
      v42 = *(v12 + 8);
      v42(v39, v37);
      v42(v18, v37);
      *(v33 + 24) = v41;
      *(v33 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v44 = MEMORY[0x1EEE9AC00](ErrorValue, v76);
      (*(v46 + 16))(&v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
      v47 = sub_1B4F67F94();
      v49 = sub_1B4DC4F88(v47, v48, &state);

      *(v33 + 34) = v49;
      _os_log_impl(&dword_1B4DC2000, v31, v32, "[%{public}s] %{public}s ended in %fs -> %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v34, -1, -1);
      MEMORY[0x1B8C831D0](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v50 = sub_1B4F67C54();
    __swift_project_value_buffer(v50, qword_1EDB70E18);
    v51 = v11;
    (*(v12 + 16))(v22, v73, v11);

    v52 = sub_1B4F67C34();
    v53 = sub_1B4F685E4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      state.opaque[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v54 + 12) = 2082;
      v56 = sub_1B4F689D4();
      v58 = v51;
      v59 = sub_1B4DC4F88(v56, v57, &state);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2048;
      v60 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v62 = v61;
      v63 = *(v12 + 8);
      v63(v60, v58);
      v63(v22, v58);
      *(v54 + 24) = v62;
      _os_log_impl(&dword_1B4DC2000, v52, v53, "[%{public}s] %{public}s ended in %fs", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v55, -1, -1);
      MEMORY[0x1B8C831D0](v54, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v22, v51);
    }

    sub_1B4DD2BC4(v26, &qword_1EB8F45A8, &qword_1B4F6CE60);
  }

  v64 = *(v75 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v64 + 24));
  sub_1B4DDF3A4((v64 + 16));
  os_unfair_lock_unlock((v64 + 24));
  v65 = *(v74 + 40);
  os_unfair_lock_lock((v65 + 44));
  if (*(v65 + 40) == 1)
  {
    v66 = *(v65 + 16);
    state = *(v65 + 24);
    os_activity_scope_leave(&state);
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 16) = v66;
    *(v65 + 40) = 0;
  }

  os_unfair_lock_unlock((v65 + 44));
}

void sub_1B4E1BAF8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v71 = a6;
  v69 = a4;
  v70 = a5;
  v68 = a2;
  v74 = a9;
  v75 = a8;
  v78 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45A0, &qword_1B4F6CE58);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v67 - v25);
  sub_1B4E21A90(a1, &v67 - v25, &qword_1EB8F45A0, &qword_1B4F6CE58);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v28 = sub_1B4F67C54();
    __swift_project_value_buffer(v28, qword_1EDB70E18);
    v29 = v11;
    (*(v12 + 16))(v18, v73, v11);

    v30 = v27;
    v31 = sub_1B4F67C34();
    v32 = sub_1B4F685C4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      state.opaque[0] = v34;
      *v33 = 136446978;
      *(v33 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v33 + 12) = 2082;
      v35 = sub_1B4F689D4();
      v37 = v29;
      v38 = sub_1B4DC4F88(v35, v36, &state);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2048;
      v39 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v41 = v40;
      v42 = *(v12 + 8);
      v42(v39, v37);
      v42(v18, v37);
      *(v33 + 24) = v41;
      *(v33 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v44 = MEMORY[0x1EEE9AC00](ErrorValue, v76);
      (*(v46 + 16))(&v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
      v47 = sub_1B4F67F94();
      v49 = sub_1B4DC4F88(v47, v48, &state);

      *(v33 + 34) = v49;
      _os_log_impl(&dword_1B4DC2000, v31, v32, "[%{public}s] %{public}s ended in %fs -> %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v34, -1, -1);
      MEMORY[0x1B8C831D0](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v50 = sub_1B4F67C54();
    __swift_project_value_buffer(v50, qword_1EDB70E18);
    v51 = v11;
    (*(v12 + 16))(v22, v73, v11);

    v52 = sub_1B4F67C34();
    v53 = sub_1B4F685E4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      state.opaque[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v54 + 12) = 2082;
      v56 = sub_1B4F689D4();
      v58 = v51;
      v59 = sub_1B4DC4F88(v56, v57, &state);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2048;
      v60 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v62 = v61;
      v63 = *(v12 + 8);
      v63(v60, v58);
      v63(v22, v58);
      *(v54 + 24) = v62;
      _os_log_impl(&dword_1B4DC2000, v52, v53, "[%{public}s] %{public}s ended in %fs", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v55, -1, -1);
      MEMORY[0x1B8C831D0](v54, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v22, v51);
    }

    sub_1B4DD2BC4(v26, &qword_1EB8F45A0, &qword_1B4F6CE58);
  }

  v64 = *(v75 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v64 + 24));
  sub_1B4DDF3A4((v64 + 16));
  os_unfair_lock_unlock((v64 + 24));
  v65 = *(v74 + 40);
  os_unfair_lock_lock((v65 + 44));
  if (*(v65 + 40) == 1)
  {
    v66 = *(v65 + 16);
    state = *(v65 + 24);
    os_activity_scope_leave(&state);
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 16) = v66;
    *(v65 + 40) = 0;
  }

  os_unfair_lock_unlock((v65 + 44));
}

void sub_1B4E1C224(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v71 = a6;
  v69 = a4;
  v70 = a5;
  v68 = a2;
  v74 = a9;
  v75 = a8;
  v78 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4568, &qword_1B4F6CE18);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v67 - v25);
  sub_1B4E21A90(a1, &v67 - v25, &qword_1EB8F4568, &qword_1B4F6CE18);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v28 = sub_1B4F67C54();
    __swift_project_value_buffer(v28, qword_1EDB70E18);
    v29 = v11;
    (*(v12 + 16))(v18, v73, v11);

    v30 = v27;
    v31 = sub_1B4F67C34();
    v32 = sub_1B4F685C4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      state.opaque[0] = v34;
      *v33 = 136446978;
      *(v33 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v33 + 12) = 2082;
      v35 = sub_1B4F689D4();
      v37 = v29;
      v38 = sub_1B4DC4F88(v35, v36, &state);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2048;
      v39 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v41 = v40;
      v42 = *(v12 + 8);
      v42(v39, v37);
      v42(v18, v37);
      *(v33 + 24) = v41;
      *(v33 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v44 = MEMORY[0x1EEE9AC00](ErrorValue, v76);
      (*(v46 + 16))(&v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
      v47 = sub_1B4F67F94();
      v49 = sub_1B4DC4F88(v47, v48, &state);

      *(v33 + 34) = v49;
      _os_log_impl(&dword_1B4DC2000, v31, v32, "[%{public}s] %{public}s ended in %fs -> %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v34, -1, -1);
      MEMORY[0x1B8C831D0](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v50 = sub_1B4F67C54();
    __swift_project_value_buffer(v50, qword_1EDB70E18);
    v51 = v11;
    (*(v12 + 16))(v22, v73, v11);

    v52 = sub_1B4F67C34();
    v53 = sub_1B4F685E4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      state.opaque[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v54 + 12) = 2082;
      v56 = sub_1B4F689D4();
      v58 = v51;
      v59 = sub_1B4DC4F88(v56, v57, &state);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2048;
      v60 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v62 = v61;
      v63 = *(v12 + 8);
      v63(v60, v58);
      v63(v22, v58);
      *(v54 + 24) = v62;
      _os_log_impl(&dword_1B4DC2000, v52, v53, "[%{public}s] %{public}s ended in %fs", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v55, -1, -1);
      MEMORY[0x1B8C831D0](v54, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v22, v51);
    }

    sub_1B4DD2BC4(v26, &qword_1EB8F4568, &qword_1B4F6CE18);
  }

  v64 = *(v75 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v64 + 24));
  sub_1B4DDF3A4((v64 + 16));
  os_unfair_lock_unlock((v64 + 24));
  v65 = *(v74 + 40);
  os_unfair_lock_lock((v65 + 44));
  if (*(v65 + 40) == 1)
  {
    v66 = *(v65 + 16);
    state = *(v65 + 24);
    os_activity_scope_leave(&state);
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 16) = v66;
    *(v65 + 40) = 0;
  }

  os_unfair_lock_unlock((v65 + 44));
}

void sub_1B4E1C950(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v71 = a6;
  v69 = a4;
  v70 = a5;
  v68 = a2;
  v74 = a9;
  v75 = a8;
  v78 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4558, &qword_1B4F6CE08);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v67 - v25);
  sub_1B4E21A90(a1, &v67 - v25, &qword_1EB8F4558, &qword_1B4F6CE08);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v28 = sub_1B4F67C54();
    __swift_project_value_buffer(v28, qword_1EDB70E18);
    v29 = v11;
    (*(v12 + 16))(v18, v73, v11);

    v30 = v27;
    v31 = sub_1B4F67C34();
    v32 = sub_1B4F685C4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      state.opaque[0] = v34;
      *v33 = 136446978;
      *(v33 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v33 + 12) = 2082;
      v35 = sub_1B4F689D4();
      v37 = v29;
      v38 = sub_1B4DC4F88(v35, v36, &state);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2048;
      v39 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v41 = v40;
      v42 = *(v12 + 8);
      v42(v39, v37);
      v42(v18, v37);
      *(v33 + 24) = v41;
      *(v33 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v44 = MEMORY[0x1EEE9AC00](ErrorValue, v76);
      (*(v46 + 16))(&v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
      v47 = sub_1B4F67F94();
      v49 = sub_1B4DC4F88(v47, v48, &state);

      *(v33 + 34) = v49;
      _os_log_impl(&dword_1B4DC2000, v31, v32, "[%{public}s] %{public}s ended in %fs -> %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v34, -1, -1);
      MEMORY[0x1B8C831D0](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v50 = sub_1B4F67C54();
    __swift_project_value_buffer(v50, qword_1EDB70E18);
    v51 = v11;
    (*(v12 + 16))(v22, v73, v11);

    v52 = sub_1B4F67C34();
    v53 = sub_1B4F685E4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      state.opaque[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v54 + 12) = 2082;
      v56 = sub_1B4F689D4();
      v58 = v51;
      v59 = sub_1B4DC4F88(v56, v57, &state);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2048;
      v60 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v62 = v61;
      v63 = *(v12 + 8);
      v63(v60, v58);
      v63(v22, v58);
      *(v54 + 24) = v62;
      _os_log_impl(&dword_1B4DC2000, v52, v53, "[%{public}s] %{public}s ended in %fs", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v55, -1, -1);
      MEMORY[0x1B8C831D0](v54, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v22, v51);
    }

    sub_1B4DD2BC4(v26, &qword_1EB8F4558, &qword_1B4F6CE08);
  }

  v64 = *(v75 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v64 + 24));
  sub_1B4DDF3A4((v64 + 16));
  os_unfair_lock_unlock((v64 + 24));
  v65 = *(v74 + 40);
  os_unfair_lock_lock((v65 + 44));
  if (*(v65 + 40) == 1)
  {
    v66 = *(v65 + 16);
    state = *(v65 + 24);
    os_activity_scope_leave(&state);
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 16) = v66;
    *(v65 + 40) = 0;
  }

  os_unfair_lock_unlock((v65 + 44));
}

void sub_1B4E1D07C(void *a1, unint64_t a2, char a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v66 = a8;
  v64 = a6;
  v65 = a7;
  v63 = a4;
  v67 = a10;
  v68 = a11;
  v71 = *MEMORY[0x1E69E9840];
  v15 = sub_1B4F64964();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15, v17);
  v19 = &v61[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v20, v21);
  v23 = &v61[-v22];
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v61[-v26];
  if (a3)
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v28 = sub_1B4F67C54();
    __swift_project_value_buffer(v28, qword_1EDB70E18);
    (*(v16 + 16))(v23, a9, v15);

    sub_1B4E218D4(a1, a2, 1);
    v29 = sub_1B4F67C34();
    v30 = sub_1B4F685C4();

    sub_1B4E21804(a1, a2, 1);
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v62 = v30;
      v32 = v31;
      v33 = swift_slowAlloc();
      state.opaque[0] = v33;
      *v32 = 136446978;
      *(v32 + 4) = sub_1B4DC4F88(v63, a5, &state);
      *(v32 + 12) = 2082;
      v34 = sub_1B4F689D4();
      v36 = sub_1B4DC4F88(v34, v35, &state);

      *(v32 + 14) = v36;
      *(v32 + 22) = 2048;
      sub_1B4F64944();
      sub_1B4F648E4();
      v38 = v37;
      v39 = *(v16 + 8);
      v39(v19, v15);
      v39(v23, v15);
      *(v32 + 24) = v38;
      *(v32 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v41 = MEMORY[0x1EEE9AC00](ErrorValue, v69);
      (*(v43 + 16))(&v61[-((v42 + 15) & 0xFFFFFFFFFFFFFFF0)], v41);
      v44 = sub_1B4F67F94();
      v46 = sub_1B4DC4F88(v44, v45, &state);

      *(v32 + 34) = v46;
      _os_log_impl(&dword_1B4DC2000, v29, v62, "[%{public}s] %{public}s ended in %fs -> %{public}s", v32, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v33, -1, -1);
      v47 = v32;
LABEL_10:
      MEMORY[0x1B8C831D0](v47, -1, -1);

      goto LABEL_13;
    }

    (*(v16 + 8))(v23, v15);
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v48 = sub_1B4F67C54();
    __swift_project_value_buffer(v48, qword_1EDB70E18);
    (*(v16 + 16))(v27, a9, v15);

    v29 = sub_1B4F67C34();
    v49 = sub_1B4F685E4();

    if (os_log_type_enabled(v29, v49))
    {
      v50 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      state.opaque[0] = v51;
      *v50 = 136446722;
      *(v50 + 4) = sub_1B4DC4F88(v63, a5, &state);
      *(v50 + 12) = 2082;
      v52 = sub_1B4F689D4();
      v54 = sub_1B4DC4F88(v52, v53, &state);

      *(v50 + 14) = v54;
      *(v50 + 22) = 2048;
      sub_1B4F64944();
      sub_1B4F648E4();
      v56 = v55;
      v57 = *(v16 + 8);
      v57(v19, v15);
      v57(v27, v15);
      *(v50 + 24) = v56;
      _os_log_impl(&dword_1B4DC2000, v29, v49, "[%{public}s] %{public}s ended in %fs", v50, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v51, -1, -1);
      v47 = v50;
      goto LABEL_10;
    }

    (*(v16 + 8))(v27, v15);
  }

LABEL_13:
  v58 = *(v67 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v58 + 24));
  sub_1B4DDF3A4((v58 + 16));
  os_unfair_lock_unlock((v58 + 24));
  v59 = *(v68 + 40);
  os_unfair_lock_lock((v59 + 44));
  if (*(v59 + 40) == 1)
  {
    v60 = *(v59 + 16);
    state = *(v59 + 24);
    os_activity_scope_leave(&state);
    *(v59 + 24) = 0;
    *(v59 + 32) = 0;
    *(v59 + 16) = v60;
    *(v59 + 40) = 0;
  }

  os_unfair_lock_unlock((v59 + 44));
}

void sub_1B4E1D6E4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v73 = a7;
  v71 = a6;
  v69 = a4;
  v70 = a5;
  v68 = a2;
  v74 = a9;
  v75 = a8;
  v78 = *MEMORY[0x1E69E9840];
  v11 = sub_1B4F64964();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v72 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v67 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4548, &qword_1B4F6CDF8);
  MEMORY[0x1EEE9AC00](v23, v24);
  v26 = (&v67 - v25);
  sub_1B4E21A90(a1, &v67 - v25, &qword_1EB8F4548, &qword_1B4F6CDF8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v27 = *v26;
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v28 = sub_1B4F67C54();
    __swift_project_value_buffer(v28, qword_1EDB70E18);
    v29 = v11;
    (*(v12 + 16))(v18, v73, v11);

    v30 = v27;
    v31 = sub_1B4F67C34();
    v32 = sub_1B4F685C4();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      state.opaque[0] = v34;
      *v33 = 136446978;
      *(v33 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v33 + 12) = 2082;
      v35 = sub_1B4F689D4();
      v37 = v29;
      v38 = sub_1B4DC4F88(v35, v36, &state);

      *(v33 + 14) = v38;
      *(v33 + 22) = 2048;
      v39 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v41 = v40;
      v42 = *(v12 + 8);
      v42(v39, v37);
      v42(v18, v37);
      *(v33 + 24) = v41;
      *(v33 + 32) = 2082;
      ErrorValue = swift_getErrorValue();
      v44 = MEMORY[0x1EEE9AC00](ErrorValue, v76);
      (*(v46 + 16))(&v67 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0), v44);
      v47 = sub_1B4F67F94();
      v49 = sub_1B4DC4F88(v47, v48, &state);

      *(v33 + 34) = v49;
      _os_log_impl(&dword_1B4DC2000, v31, v32, "[%{public}s] %{public}s ended in %fs -> %{public}s", v33, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v34, -1, -1);
      MEMORY[0x1B8C831D0](v33, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v18, v11);
    }
  }

  else
  {
    if (qword_1EDB70E10 != -1)
    {
      swift_once();
    }

    v50 = sub_1B4F67C54();
    __swift_project_value_buffer(v50, qword_1EDB70E18);
    v51 = v11;
    (*(v12 + 16))(v22, v73, v11);

    v52 = sub_1B4F67C34();
    v53 = sub_1B4F685E4();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      state.opaque[0] = v55;
      *v54 = 136446722;
      *(v54 + 4) = sub_1B4DC4F88(v68, a3, &state);
      *(v54 + 12) = 2082;
      v56 = sub_1B4F689D4();
      v58 = v51;
      v59 = sub_1B4DC4F88(v56, v57, &state);

      *(v54 + 14) = v59;
      *(v54 + 22) = 2048;
      v60 = v72;
      sub_1B4F64944();
      sub_1B4F648E4();
      v62 = v61;
      v63 = *(v12 + 8);
      v63(v60, v58);
      v63(v22, v58);
      *(v54 + 24) = v62;
      _os_log_impl(&dword_1B4DC2000, v52, v53, "[%{public}s] %{public}s ended in %fs", v54, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1B8C831D0](v55, -1, -1);
      MEMORY[0x1B8C831D0](v54, -1, -1);
    }

    else
    {

      (*(v12 + 8))(v22, v51);
    }

    sub_1B4DD2BC4(v26, &qword_1EB8F4548, &qword_1B4F6CDF8);
  }

  v64 = *(v75 + OBJC_IVAR____TtC13SeymourClient8Signpost_state);
  os_unfair_lock_lock((v64 + 24));
  sub_1B4DDF388((v64 + 16));
  os_unfair_lock_unlock((v64 + 24));
  v65 = *(v74 + 40);
  os_unfair_lock_lock((v65 + 44));
  if (*(v65 + 40) == 1)
  {
    v66 = *(v65 + 16);
    state = *(v65 + 24);
    os_activity_scope_leave(&state);
    *(v65 + 24) = 0;
    *(v65 + 32) = 0;
    *(v65 + 16) = v66;
    *(v65 + 40) = 0;
  }

  os_unfair_lock_unlock((v65 + 44));
}

uint64_t sub_1B4E1E108(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45C8, &unk_1B4F6CE80);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4208, &qword_1B4F6CC28);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_1B4DD2BC4(v13, &qword_1EB8F45C8, &unk_1B4F6CE80);
  }

  else
  {
    a3(v17);
    v22 = sub_1B4F67654();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_1B4E21D2C, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_1B4E1E31C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45C0, &qword_1B4F6CE78);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4210, &unk_1B4F6CC30);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_1B4DD2BC4(v13, &qword_1EB8F45C0, &qword_1B4F6CE78);
  }

  else
  {
    a3(v17);
    v22 = sub_1B4F67654();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_1B4E21D2C, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_1B4E1E530(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4528, &qword_1B4F6CDD8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4218, &unk_1B4F7CFA0);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_1B4DD2BC4(v13, &qword_1EB8F4528, &qword_1B4F6CDD8);
  }

  else
  {
    a3(v17);
    v22 = sub_1B4F67654();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_1B4E21D2C, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_1B4E1E744(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F42E0, &unk_1B4F6CC80);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v20 - v15;
  if (a2)
  {
    v20 = a1;
    v21 = 1;
    v17 = a1;
    a5(&v20);
    sub_1B4DDC730(a1, 1);
  }

  else
  {
    a3(v14);
    v18 = sub_1B4F67654();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_1B4E219CC, v19);

    (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_1B4E1E8E4(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45B8, &qword_1B4F6CE70);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43B0, &unk_1B4F7AC60);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_1B4DD2BC4(v13, &qword_1EB8F45B8, &qword_1B4F6CE70);
  }

  else
  {
    a3(v17);
    v22 = sub_1B4F67654();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_1B4E21D2C, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_1B4E1EAF8(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45B0, &qword_1B4F6CE68);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43E8, &qword_1B4F6CCE0);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_1B4DD2BC4(v13, &qword_1EB8F45B0, &qword_1B4F6CE68);
  }

  else
  {
    a3(v17);
    v22 = sub_1B4F67654();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_1B4E21D2C, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_1B4E1ED0C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45A8, &qword_1B4F6CE60);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43F0, &qword_1B4F6CCE8);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_1B4DD2BC4(v13, &qword_1EB8F45A8, &qword_1B4F6CE60);
  }

  else
  {
    a3(v17);
    v22 = sub_1B4F67654();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_1B4E21D2C, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_1B4E1EF20(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45A0, &qword_1B4F6CE58);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F44D0, &qword_1B4F6CD38);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_1B4DD2BC4(v13, &qword_1EB8F45A0, &qword_1B4F6CE58);
  }

  else
  {
    a3(v17);
    v22 = sub_1B4F67654();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_1B4E21D2C, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_1B4E1F134(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v22 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4590, &qword_1B4F6CE48);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v22 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4598, &qword_1B4F6CE50);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = &v22 - v17;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v19 = a1;
    v22(v13);
    sub_1B4DD2BC4(v13, &qword_1EB8F4590, &qword_1B4F6CE48);
  }

  else
  {
    v23 = a1;

    a3(&v23);
    v20 = sub_1B4F67654();
    v21 = swift_allocObject();
    *(v21 + 16) = v22;
    *(v21 + 24) = a6;

    v20(sub_1B4E21D2C, v21);

    (*(v15 + 8))(v18, v14);
    sub_1B4DDACF4(a1, 0, MEMORY[0x1E69E7CF8]);
  }
}

uint64_t sub_1B4E1F374(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4568, &qword_1B4F6CE18);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4560, &qword_1B4F6CE10);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_1B4DD2BC4(v13, &qword_1EB8F4568, &qword_1B4F6CE18);
  }

  else
  {
    a3(v17);
    v22 = sub_1B4F67654();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_1B4E21D2C, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_1B4E1F588(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4558, &qword_1B4F6CE08);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4550, &qword_1B4F6CE00);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_1B4DD2BC4(v13, &qword_1EB8F4558, &qword_1B4F6CE08);
  }

  else
  {
    a3(v17);
    v22 = sub_1B4F67654();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_1B4E21D2C, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_1B4E1F79C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v12 = *(v11 - 8);
  v14 = MEMORY[0x1EEE9AC00](v11, v13);
  v16 = &v20 - v15;
  if (a2)
  {
    v21 = a1;
    v22 = 0;
    v23 = 1;
    v17 = a1;
    a5(&v21);
    sub_1B4E21804(v21, v22, v23);
  }

  else
  {
    a3(v14);
    v18 = sub_1B4F67654();
    v19 = swift_allocObject();
    *(v19 + 16) = a5;
    *(v19 + 24) = a6;

    v18(sub_1B4E21D6C, v19);

    (*(v12 + 8))(v16, v11);
  }
}

uint64_t sub_1B4E1F93C(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4548, &qword_1B4F6CDF8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4540, &qword_1B4F6CDF0);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_1B4DD2BC4(v13, &qword_1EB8F4548, &qword_1B4F6CDF8);
  }

  else
  {
    a3(v17);
    v22 = sub_1B4F67654();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_1B4E21D2C, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

uint64_t sub_1B4E1FB50(void *a1, char a2, void (*a3)(double), uint64_t a4, void (*a5)(void *), uint64_t a6)
{
  v25 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4530, &qword_1B4F6CDE0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = (&v24 - v12);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4538, &qword_1B4F6CDE8);
  v15 = *(v14 - 8);
  v17 = MEMORY[0x1EEE9AC00](v14, v16);
  v19 = &v24 - v18;
  if (a2)
  {
    *v13 = a1;
    swift_storeEnumTagMultiPayload();
    v20 = a1;
    v25(v13);
    return sub_1B4DD2BC4(v13, &qword_1EB8F4530, &qword_1B4F6CDE0);
  }

  else
  {
    a3(v17);
    v22 = sub_1B4F67654();
    v23 = swift_allocObject();
    *(v23 + 16) = v25;
    *(v23 + 24) = a6;

    v22(sub_1B4E21D2C, v23);

    return (*(v15 + 8))(v19, v14);
  }
}

void sub_1B4E1FD64(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23[1] = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v23 - v8;
  v10 = sub_1B4F66354();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4528, &qword_1B4F6CDD8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (v23 - v17);
  sub_1B4E21A90(a1, v23 - v17, &qword_1EB8F4528, &qword_1B4F6CDD8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 1;
    v20 = v28;
    v26(&v28);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_1B4F67654();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_1B4DDDFD0, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

void sub_1B4E20044(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(id *), uint64_t a5)
{
  v26 = a4;
  v27 = a5;
  v23 = a3;
  v24 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - v8;
  v10 = sub_1B4F651C4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10, v12);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4510, &qword_1B4F6CDC0);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = (&v23 - v17);
  sub_1B4E21A90(a1, &v23 - v17, &qword_1EB8F4510, &qword_1B4F6CDC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v28 = *v18;
    v19 = v28;
    v29 = 0;
    v30 = 1;
    v20 = v28;
    v26(&v28);

    sub_1B4E21804(v28, v29, v30);
  }

  else
  {
    (*(v11 + 32))(v14, v18, v10);
    v24(v14);
    v21 = sub_1B4F67654();
    v22 = swift_allocObject();
    *(v22 + 16) = v26;
    *(v22 + 24) = v27;

    v21(sub_1B4E21D6C, v22);

    (*(v25 + 8))(v9, v6);
    (*(v11 + 8))(v14, v10);
  }
}

uint64_t sub_1B4E20328(uint64_t a1, void (*a2)(char *), uint64_t a3, void (*a4)(void **), uint64_t a5)
{
  v33 = a4;
  v34 = a5;
  v28[1] = a3;
  v29 = a2;
  v32 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4518, &qword_1B4F6CDC8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = (v28 - v7);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4520, &qword_1B4F6CDD0);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v28 - v11;
  v13 = sub_1B4F651C4();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4510, &qword_1B4F6CDC0);
  MEMORY[0x1EEE9AC00](v18, v19);
  v21 = (v28 - v20);
  sub_1B4E21A90(v32, v28 - v20, &qword_1EB8F4510, &qword_1B4F6CDC0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v22 = *v21;
    *v8 = *v21;
    swift_storeEnumTagMultiPayload();
    v23 = v22;
    v33(v8);

    return sub_1B4DD2BC4(v8, &qword_1EB8F4518, &qword_1B4F6CDC8);
  }

  else
  {
    (*(v14 + 32))(v17, v21, v13);
    v29(v17);
    v25 = v31;
    v26 = sub_1B4F67654();
    v27 = swift_allocObject();
    *(v27 + 16) = v33;
    *(v27 + 24) = v34;

    v26(sub_1B4E21830, v27);

    (*(v30 + 8))(v12, v25);
    return (*(v14 + 8))(v17, v13);
  }
}

void sub_1B4E20674(void *a1, char a2, void (*a3)(void **), uint64_t a4, void (*a5)(void **), uint64_t a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4500, &qword_1B4F6CDB0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11, v13);
  v15 = &v19 - v14;
  if (a2)
  {
    v20 = a1;
    v21 = 0;
    v22 = 1;
    v16 = a1;
    a5(&v20);
    sub_1B4E21804(v20, v21, v22);
  }

  else
  {
    v20 = a1;

    a3(&v20);
    v17 = sub_1B4F67654();
    v18 = swift_allocObject();
    *(v18 + 16) = a5;
    *(v18 + 24) = a6;

    v17(sub_1B4E21810, v18);

    (*(v12 + 8))(v15, v11);
    sub_1B4DDACF4(a1, 0, MEMORY[0x1E69E7CF8]);
  }
}

uint64_t sub_1B4E20844(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  if (a2)
  {
    return a2(a1);
  }

  return a1;
}

uint64_t sub_1B4E20A40@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void *sub_1B4E20AB8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v16 = a1;
  v15 = 19;
  v7 = swift_allocObject();
  swift_weakInit();
  v8 = sub_1B4F67474();

  swift_unknownObjectRetain();

  TransportDispatching.register<A>(event:handler:)(&v15, sub_1B4E21D38, v7, ObjectType, v8, &protocol witness table for XPCClient, MEMORY[0x1E69CD0F0], MEMORY[0x1E69CD0F8]);

  v16 = a1;
  v15 = 20;
  v9 = swift_allocObject();
  swift_weakInit();
  v10 = sub_1B4F67284();
  TransportDispatching.register<A>(event:handler:)(&v15, sub_1B4E21D3C, v9, ObjectType, v10, &protocol witness table for XPCClient, MEMORY[0x1E69CCF78], MEMORY[0x1E69CCF80]);

  v16 = a1;
  v15 = 27;
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = sub_1B4F674B4();
  TransportDispatching.register<A>(event:handler:)(&v15, sub_1B4E21D40, v11, ObjectType, v12, &protocol witness table for XPCClient, MEMORY[0x1E69CD158], MEMORY[0x1E69CD160]);

  v16 = a1;
  v15 = 21;
  v13 = swift_allocObject();
  swift_weakInit();

  TransportDispatching.register(event:handler:)(&v15, sub_1B4E21D1C, v13, ObjectType, &protocol witness table for XPCClient);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4E20D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC76FC(a1, a2, a3, v13, a5, a6, a7);
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1B4E21010()
{
  result = qword_1EB8F42F0;
  if (!qword_1EB8F42F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F42E8, &unk_1B4F70E80);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F42F0);
  }

  return result;
}

unint64_t sub_1B4E21094()
{
  result = qword_1EB8F42F8;
  if (!qword_1EB8F42F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F42E8, &unk_1B4F70E80);
    sub_1B4E21118();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F42F8);
  }

  return result;
}

unint64_t sub_1B4E21118()
{
  result = qword_1EB8F4300;
  if (!qword_1EB8F4300)
  {
    sub_1B4F66674();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4300);
  }

  return result;
}

uint64_t sub_1B4E213A0(uint64_t a1, uint64_t (*a2)(void, void, void, void, void, void, void, unint64_t, void, void))
{
  v5 = *(sub_1B4F64964() - 8);
  v6 = (*(v5 + 80) + 49) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(*a1, *(a1 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1B4E21468(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1B4E214F8@<X0>(uint64_t *a1@<X1>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v6 = *(v5 - 8);
  v7 = *(v6 + 16);
  v8 = v3 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return v7(a3, v8, v5);
}

uint64_t objectdestroy_8Tm()
{
  v1 = sub_1B4F64964();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 49) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t sub_1B4E216A8(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, unint64_t, void, void))
{
  v5 = *(sub_1B4F64964() - 8);
  v6 = (*(v5 + 80) + 49) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1B4E21804(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1B4DD2B70(a1, a2);
  }
}

uint64_t sub_1B4E21870(__int128 *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(a1 + 16);
  v6 = *a1;
  v7 = v4;
  v2(&v6);
  return v3(&v6);
}

id sub_1B4E218D4(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1B4DD3014(a1, a2);
  }
}

id sub_1B4E219A8(id a1, char a2)
{
  if (a2)
  {
    return a1;
  }

  else
  {
  }
}

uint64_t *sub_1B4E219CC(uint64_t *result)
{
  v2 = *(v1 + 16);
  v3 = *(result + 8);
  v4 = *result;
  v5 = v3;
  if (v2)
  {
    return v2(&v4);
  }

  return result;
}

uint64_t sub_1B4E21A44(uint64_t a1)
{
  v3 = *(v1 + 32);
  (*(v1 + 16))();
  return v3(a1);
}

uint64_t sub_1B4E21A90(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1B4E21B10(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(a1 + 8);
  v6 = *a1;
  v7 = v4;
  v2(&v6);
  return v3(&v6);
}

uint64_t sub_1B4E21CBC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4E21DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B4DDED70;

  return WorkoutPlanScheduleConflictQuerying.queryExistingModalityReferences(for:workout:on:)(a1, a2, a3, a4, a5, a6);
}

uint64_t WorkoutPlanScheduleConflictQuerying.queryExistingModalityReferences(for:workout:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[30] = a6;
  v7[31] = v6;
  v7[28] = a4;
  v7[29] = a5;
  v7[26] = a2;
  v7[27] = a3;
  v7[25] = a1;
  v7[32] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45D0, &qword_1B4F6CF78);
  v7[33] = swift_task_alloc();
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v7[36] = swift_task_alloc();
  v7[37] = swift_task_alloc();
  v7[38] = swift_task_alloc();
  v8 = sub_1B4F666C4();
  v7[39] = v8;
  v7[40] = *(v8 - 8);
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v9 = sub_1B4F66484();
  v7[43] = v9;
  v7[44] = *(v9 - 8);
  v7[45] = swift_task_alloc();
  v10 = sub_1B4F67074();
  v7[46] = v10;
  v7[47] = *(v10 - 8);
  v7[48] = swift_task_alloc();
  v11 = sub_1B4F649E4();
  v7[49] = v11;
  v7[50] = *(v11 - 8);
  v7[51] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45D8, &qword_1B4F6CF80);
  v7[52] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E0, &qword_1B4F6CF88);
  v7[53] = v12;
  v7[54] = *(v12 - 8);
  v7[55] = swift_task_alloc();
  v7[56] = swift_task_alloc();
  v13 = sub_1B4F66874();
  v7[57] = v13;
  v7[58] = *(v13 - 8);
  v7[59] = swift_task_alloc();
  v7[60] = swift_task_alloc();
  v7[61] = swift_task_alloc();
  v7[62] = swift_task_alloc();
  v7[63] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1B4E22240, 0, 0);
}

uint64_t sub_1B4E22240()
{
  v1 = v0[56];
  v2 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[30];
  v6 = *(v5 + 16);
  v0[64] = v6;
  v0[65] = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xAB2E000000000000;
  v6(v2);
  v7 = v0[11];
  v8 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1B4F6CF50;
  *(inited + 32) = v4;
  *(inited + 40) = v3;

  v10 = sub_1B4E2A75C(inited);
  swift_setDeallocating();
  sub_1B4E2A8C4(inited + 32);
  (*(v8 + 232))(v10, v7, v8);

  v11 = swift_task_alloc();
  v0[66] = v11;
  *(v11 + 16) = "SeymourClient/WorkoutPlanScheduleConflictQuerying.swift";
  *(v11 + 24) = 55;
  *(v11 + 32) = 2;
  *(v11 + 40) = 24;
  *(v11 + 48) = v1;
  v12 = swift_task_alloc();
  v0[67] = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45F0, qword_1B4F6CF98);
  v0[68] = v13;
  *v12 = v0;
  v12[1] = sub_1B4E22448;

  return MEMORY[0x1EEE6DE38](v0 + 23, 0, 0, 0xD000000000000013, 0x80000001B4F808E0, sub_1B4E2A918, v11, v13);
}

uint64_t sub_1B4E22448()
{
  v2 = *v1;
  *(*v1 + 552) = v0;

  if (v0)
  {

    v3 = sub_1B4E22B50;
  }

  else
  {
    v4 = v2[56];
    v5 = v2[53];
    v6 = v2[54];
    v2[70] = v2[23];

    v7 = *(v6 + 8);
    v2[71] = v7;
    v2[72] = (v6 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v7(v4, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 8);
    v3 = sub_1B4E225B4;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4E225B4()
{
  v1 = v0[57];
  v2 = v0[58];
  v3 = v0[52];
  sub_1B4E24444(v0[70], MEMORY[0x1E69CC6C0], MEMORY[0x1E69CC6C0], v3);

  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1B4DD2BC4(v0[52], &qword_1EB8F45D8, &qword_1B4F6CF80);
    v4 = sub_1B4F64F54();
    sub_1B4E2CB3C(&qword_1EB8F45F8, MEMORY[0x1E69CB148], MEMORY[0x1E69CB150]);
    swift_allocError();
    (*(*(v4 - 8) + 104))(v5, *MEMORY[0x1E69CB138], v4);
    swift_willThrow();

    v6 = v0[1];

    return v6();
  }

  else
  {
    v8 = v0[63];
    v9 = v0[57];
    v10 = v0[58];
    v12 = v0[51];
    v11 = v0[52];
    v13 = v0[49];
    v14 = v0[50];
    v15 = v0[27];
    v16 = v0[26];
    v17 = *(v10 + 32);
    v0[73] = v17;
    v0[74] = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v17(v8, v11, v9);
    (*(v14 + 104))(v12, *MEMORY[0x1E6969A48], v13);
    v18 = sub_1B4F64E74();
    (*(v14 + 8))(v12, v13);

    v19 = sub_1B4E2AD30(v18, v16, v15);
    v0[75] = v19;

    if (v19[2])
    {
      (*(v0[30] + 8))(v0[29]);
      v20 = v0[16];
      v21 = v0[17];
      __swift_project_boxed_opaque_existential_1(v0 + 13, v20);
      v25 = (*(v21 + 280) + **(v21 + 280));
      v22 = swift_task_alloc();
      v0[76] = v22;
      *v22 = v0;
      v22[1] = sub_1B4E22CC8;

      return v25(v20, v21);
    }

    else
    {

      (*(v0[58] + 8))(v0[63], v0[57]);

      v23 = v0[1];
      v24 = MEMORY[0x1E69E7CD0];

      return v23(v24);
    }
  }
}

uint64_t sub_1B4E22B50()
{
  (*(v0[54] + 8))(v0[56], v0[53]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 8);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1B4E22CC8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 616) = a1;
  *(v3 + 624) = v1;

  if (v1)
  {

    v4 = sub_1B4E24298;
  }

  else
  {
    v4 = sub_1B4E22DE8;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1B4E22DE8()
{
  v1 = v0[77];
  v2 = v0[47];
  v3 = v0[44];
  v4 = v0[40];
  v5 = sub_1B4E2AEFC(MEMORY[0x1E69E7CC0]);
  v6 = v1 + 56;
  v7 = -1;
  v8 = -1 << *(v1 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v1 + 56);
  v10 = (63 - v8) >> 6;
  v92 = v2;
  v101 = (v4 + 32);
  v98 = v3;
  v99 = (v3 + 8);
  v87 = (v2 + 8);
  v89 = v4;
  v94 = v1;

  v19 = 0;
  v100 = v0;
  v84 = v10;
  v85 = v1 + 56;
  while (v9)
  {
    v20 = v19;
LABEL_11:
    v21 = v0[45];
    v23 = v0[41];
    v22 = v0[42];
    v24 = v0[39];
    (*(v92 + 16))(v0[48], *(v94 + 48) + *(v92 + 72) * (__clz(__rbit64(v9)) | (v20 << 6)), v0[46]);
    sub_1B4F67064();
    sub_1B4F67054();
    v25 = *v101;
    (*v101)(v23, v22, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104 = v5;
    v11 = sub_1B4DF43BC(v21);
    v27 = v5[2];
    v28 = (v12 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      goto LABEL_53;
    }

    v31 = v12;
    v96 = v25;
    if (v5[3] >= v30)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v42 = v11;
        sub_1B4E28860();
        v11 = v42;
        v5 = v104;
      }
    }

    else
    {
      v32 = v0[45];
      sub_1B4E26A6C(v30, isUniquelyReferenced_nonNull_native);
      v11 = sub_1B4DF43BC(v32);
      if ((v31 & 1) != (v33 & 1))
      {

        return sub_1B4F68DB4();
      }
    }

    v9 &= v9 - 1;
    v103 = v0[48];
    v35 = v0[45];
    v34 = v0[46];
    v36 = v0[43];
    v37 = v0[41];
    v38 = v0[39];
    if (v31)
    {
      (*(v89 + 40))(v5[7] + *(v89 + 72) * v11, v0[41], v0[39]);
      (*v99)(v35, v36);
      v11 = (*v87)(v103, v34);
    }

    else
    {
      v5[(v11 >> 6) + 8] |= 1 << v11;
      v39 = v11;
      (*(v98 + 16))(v5[6] + *(v98 + 72) * v11, v35, v36);
      v96(v5[7] + *(v89 + 72) * v39, v37, v38);
      (*(v98 + 8))(v35, v36);
      v11 = (*v87)(v103, v34);
      v40 = v5[2];
      v29 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v29)
      {
        goto LABEL_54;
      }

      v5[2] = v41;
    }

    v19 = v20;
    v0 = v100;
    v10 = v84;
    v6 = v85;
  }

  while (1)
  {
    v20 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
      goto LABEL_47;
    }

    if (v20 >= v10)
    {
      break;
    }

    v9 = *(v6 + 8 * v20);
    ++v19;
    if (v9)
    {
      goto LABEL_11;
    }
  }

  v43 = v0[75];

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);

  v44 = sub_1B4E2B674(v43, v5);
  v0[79] = v44;
  swift_bridgeObjectRelease_n();

  v45 = v44[2];
  v46 = MEMORY[0x1E69E7CC0];
  if (!v45)
  {
LABEL_40:
    v77 = v0[55];
    (v0[64])(v0[29], v0[30]);
    v78 = v0[21];
    v79 = v0[22];
    __swift_project_boxed_opaque_existential_1(v0 + 18, v78);
    v80 = sub_1B4DF2208(v46);

    (*(v79 + 232))(v80, v78, v79);

    v81 = swift_task_alloc();
    v0[80] = v81;
    *(v81 + 16) = "SeymourClient/WorkoutPlanScheduleConflictQuerying.swift";
    *(v81 + 24) = 55;
    *(v81 + 32) = 2;
    *(v81 + 40) = 46;
    *(v81 + 48) = v77;
    v82 = swift_task_alloc();
    v0[81] = v82;
    *v82 = v0;
    v82[1] = sub_1B4E23634;
    v18 = v0[68];
    v16 = sub_1B4E2CC48;
    v11 = (v0 + 24);
    v15 = 0x80000001B4F808E0;
    v12 = 0;
    v13 = 0;
    v14 = 0xD000000000000013;
    v17 = v81;

    return MEMORY[0x1EEE6DE38](v11, v12, v13, v14, v15, v16, v17, v18);
  }

  v47 = v0[44];
  v97 = v0[32];
  v105 = MEMORY[0x1E69E7CC0];
  sub_1B4E257A4(0, v45, 0);
  v46 = v105;
  v48 = v44 + 8;
  v11 = sub_1B4F688B4();
  v49 = v11;
  v50 = 0;
  v51 = *(v44 + 9);
  v93 = v44;
  v95 = (v47 + 32);
  v86 = v44 + 9;
  v88 = v45;
  v90 = v51;
  v91 = v44 + 8;
  while ((v49 & 0x8000000000000000) == 0 && v49 < 1 << *(v44 + 32))
  {
    v55 = v49 >> 6;
    if ((v48[v49 >> 6] & (1 << v49)) == 0)
    {
      goto LABEL_48;
    }

    if (v51 != *(v44 + 9))
    {
      goto LABEL_49;
    }

    v102 = v50;
    v56 = v100[43];
    v57 = v100[37];
    v58 = v100[38];
    v59 = v100[36];
    (*(v98 + 16))(v58, v44[6] + *(v98 + 72) * v49, v56);
    v60 = (v44[7] + 16 * v49);
    v61 = *v60;
    v62 = v60[1];
    (*v95)(v57, v58, v56);
    v63 = (v57 + *(v97 + 48));
    *v63 = v61;
    v63[1] = v62;
    sub_1B4E21A90(v57, v59, &qword_1EB8F45D0, &qword_1B4F6CF78);

    v64 = sub_1B4F66AD4();
    v66 = v65;

    sub_1B4DD2BC4(v57, &qword_1EB8F45D0, &qword_1B4F6CF78);
    v11 = (*(v98 + 8))(v59, v56);
    v68 = *(v105 + 16);
    v67 = *(v105 + 24);
    if (v68 >= v67 >> 1)
    {
      v11 = sub_1B4E257A4((v67 > 1), v68 + 1, 1);
    }

    *(v105 + 16) = v68 + 1;
    v69 = v105 + 16 * v68;
    *(v69 + 32) = v64;
    *(v69 + 40) = v66;
    v44 = v93;
    v52 = 1 << *(v93 + 32);
    if (v49 >= v52)
    {
      goto LABEL_50;
    }

    v48 = v91;
    v70 = v91[v55];
    if ((v70 & (1 << v49)) == 0)
    {
      goto LABEL_51;
    }

    v51 = v90;
    if (v90 != *(v93 + 9))
    {
      goto LABEL_52;
    }

    v71 = v70 & (-2 << (v49 & 0x3F));
    if (v71)
    {
      v52 = __clz(__rbit64(v71)) | v49 & 0x7FFFFFFFFFFFFFC0;
      v53 = v88;
      v54 = v102;
    }

    else
    {
      v72 = v55 << 6;
      v53 = v88;
      v73 = &v86[v55];
      v74 = v55 + 1;
      v54 = v102;
      while (v74 < (v52 + 63) >> 6)
      {
        v76 = *v73++;
        v75 = v76;
        v72 += 64;
        ++v74;
        if (v76)
        {
          v11 = sub_1B4DF3104(v49, v90, 0);
          v52 = __clz(__rbit64(v75)) + v72;
          goto LABEL_23;
        }
      }

      v11 = sub_1B4DF3104(v49, v90, 0);
    }

LABEL_23:
    v50 = v54 + 1;
    v49 = v52;
    if (v50 == v53)
    {
      v0 = v100;
      goto LABEL_40;
    }
  }

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
  return MEMORY[0x1EEE6DE38](v11, v12, v13, v14, v15, v16, v17, v18);
}

uint64_t sub_1B4E23634()
{
  v2 = *v1;
  *(*v1 + 656) = v0;

  if (v0)
  {

    v3 = sub_1B4E237A0;
  }

  else
  {
    v4 = v2[71];
    v5 = v2[55];
    v6 = v2[53];
    v2[83] = v2[24];

    v4(v5, v6);
    __swift_destroy_boxed_opaque_existential_1Tm(v2 + 18);
    v3 = sub_1B4E23934;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1B4E237A0()
{
  v1 = *(v0 + 504);
  v2 = *(v0 + 456);
  v3 = *(v0 + 464);
  (*(v0 + 568))(*(v0 + 440), *(v0 + 424));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_1B4E23934()
{
  v1 = *(v0 + 664);
  v2 = *(v0 + 464);
  v3 = sub_1B4E2B844(MEMORY[0x1E69E7CC0]);
  v4 = v1 + 56;
  v5 = -1;
  v6 = -1 << *(v1 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(v1 + 56);
  v8 = (63 - v6) >> 6;
  v122 = (v2 + 8);
  v123 = v2;
  v114 = (v2 + 40);
  v120 = v1;

  v9 = 0;
  v116 = v8;
  for (i = v1 + 56; ; v4 = i)
  {
    v125 = v3;
    if (!v7)
    {
      break;
    }

    v14 = v9;
LABEL_11:
    v16 = v124[61];
    v15 = v124[62];
    v17 = v124[57];
    v18 = *(v123 + 72);
    v19 = *(v123 + 16);
    v19(v15, *(v120 + 48) + v18 * (__clz(__rbit64(v7)) | (v14 << 6)), v17);
    v20 = sub_1B4F66784();
    v22 = v21;
    v19(v16, v15, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1B4DF4344(v20, v22);
    v26 = v125[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      goto LABEL_52;
    }

    v30 = v25;
    if (v125[3] >= v29)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v40 = v24;
        sub_1B4E285E0();
        v24 = v40;
      }
    }

    else
    {
      sub_1B4E266EC(v29, isUniquelyReferenced_nonNull_native);
      v24 = sub_1B4DF4344(v20, v22);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_47;
      }
    }

    v7 &= v7 - 1;
    if (v30)
    {
      v10 = v124[61];
      v11 = v124[62];
      v12 = v124[57];
      v13 = v24;

      v3 = v125;
      (*v114)(v125[7] + v13 * v18, v10, v12);
      (*v122)(v11, v12);
    }

    else
    {
      v32 = v124[73];
      v33 = v124[61];
      v34 = v124[62];
      v35 = v124[57];
      v3 = v125;
      v125[(v24 >> 6) + 8] |= 1 << v24;
      v36 = (v125[6] + 16 * v24);
      *v36 = v20;
      v36[1] = v22;
      v32(v125[7] + v24 * v18, v33, v35);
      result = (*v122)(v34, v35);
      v38 = v125[2];
      v28 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v28)
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return result;
      }

      v125[2] = v39;
    }

    v9 = v14;
    v8 = v116;
  }

  while (1)
  {
    v14 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_51;
    }

    if (v14 >= v8)
    {
      break;
    }

    v7 = *(v4 + 8 * v14);
    ++v9;
    if (v7)
    {
      goto LABEL_11;
    }
  }

  v41 = v124;
  v42 = v124[79];
  v121 = v124[32];

  v43 = sub_1B4E2BA30(MEMORY[0x1E69E7CC0]);
  v44 = v42 + 64;
  v45 = -1;
  v46 = -1 << *(v42 + 32);
  if (-v46 < 64)
  {
    v45 = ~(-1 << -v46);
  }

  v47 = v45 & *(v42 + 64);
  v48 = (63 - v46) >> 6;
  v112 = v43;
  v119 = v42;

  v49 = 0;
  for (j = v44; v47; v41 = v87)
  {
LABEL_30:
    while (1)
    {
      v54 = v41[44];
      v56 = v41[34];
      v55 = v41[35];
      v57 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v58 = v57 | (v49 << 6);
      v113 = *(v54 + 72);
      v115 = *(v54 + 16);
      v115(v55, *(v119 + 48) + v113 * v58, v41[43]);
      v59 = (*(v119 + 56) + 16 * v58);
      v60 = *v59;
      v61 = v59[1];
      v62 = (v55 + *(v121 + 48));
      *v62 = v60;
      v62[1] = v61;
      sub_1B4E21A90(v55, v56, &qword_1EB8F45D0, &qword_1B4F6CF78);

      v63 = sub_1B4F66AD4();
      v65 = v64;

      if (v125[2])
      {
        break;
      }

LABEL_25:
      v50 = v41[43];
      v51 = v41[44];
      v52 = v41[34];
      sub_1B4DD2BC4(v41[35], &qword_1EB8F45D0, &qword_1B4F6CF78);
      (*(v51 + 8))(v52, v50);
      v44 = j;
      if (!v47)
      {
        goto LABEL_26;
      }
    }

    v66 = sub_1B4DF4344(v63, v65);
    v68 = v67;

    if ((v68 & 1) == 0)
    {
      goto LABEL_25;
    }

    v69 = v41;
    v70 = v41[73];
    v72 = v41[59];
    v71 = v41[60];
    v73 = v41[57];
    v74 = v41[44];
    v108 = v69[43];
    v105 = v69[34];
    v106 = v70;
    v109 = v69[33];
    v110 = v69[35];
    (*(v123 + 16))(v72, v125[7] + *(v123 + 72) * v66, v73);
    v106(v71, v72, v73);
    v107 = *(v74 + 8);
    v107(v105, v108);
    sub_1B4E21A90(v110, v109, &qword_1EB8F45D0, &qword_1B4F6CF78);

    v75 = sub_1B4F667C4();
    v77 = v76;
    v78 = swift_isUniquelyReferenced_nonNull_native();
    result = sub_1B4DF43BC(v109);
    v80 = v112[2];
    v81 = (v79 & 1) == 0;
    v28 = __OFADD__(v80, v81);
    v82 = v80 + v81;
    if (v28)
    {
      goto LABEL_55;
    }

    v83 = v79;
    if (v112[3] >= v82)
    {
      v86 = v77;
      if ((v78 & 1) == 0)
      {
        v98 = result;
        sub_1B4E28354();
        result = v98;
      }
    }

    else
    {
      v84 = v124[33];
      sub_1B4E26304(v82, v78);
      result = sub_1B4DF43BC(v84);
      if ((v83 & 1) != (v85 & 1))
      {
        goto LABEL_47;
      }

      v86 = v77;
    }

    v87 = v124;
    v88 = v124[60];
    v111 = v124[57];
    if (v83)
    {
      v89 = v124[35];
      v90 = (v112[7] + 16 * result);
      *v90 = v75;
      v90[1] = v86;

      (*v122)(v88, v111);
      sub_1B4DD2BC4(v89, &qword_1EB8F45D0, &qword_1B4F6CF78);
    }

    else
    {
      v91 = v124[43];
      v92 = v124[35];
      v93 = v124[33];
      v112[(result >> 6) + 8] |= 1 << result;
      v94 = result;
      v115(v112[6] + result * v113, v93, v91);
      v95 = (v112[7] + 16 * v94);
      *v95 = v75;
      v95[1] = v86;
      (*v122)(v88, v111);
      result = sub_1B4DD2BC4(v92, &qword_1EB8F45D0, &qword_1B4F6CF78);
      v96 = v112[2];
      v28 = __OFADD__(v96, 1);
      v97 = v96 + 1;
      if (v28)
      {
        goto LABEL_56;
      }

      v112[2] = v97;
      v87 = v124;
    }

    v44 = j;
    v107(v87[33], v87[43]);
  }

LABEL_26:
  while (1)
  {
    v53 = v49 + 1;
    if (__OFADD__(v49, 1))
    {
      break;
    }

    if (v53 >= v48)
    {
      v99 = v41[63];

      v100 = swift_task_alloc();
      *(v100 + 16) = v99;
      sub_1B4E297B8(sub_1B4E2BC20, v100, v112);
      v101 = v41;
      v103 = v102;

      v126 = sub_1B4DEEC7C(v103);
      (*(v101[58] + 8))(v101[63], v101[57]);

      v104 = v101[1];

      return v104(v126);
    }

    v47 = *(v44 + 8 * v53);
    ++v49;
    if (v47)
    {
      v49 = v53;
      goto LABEL_30;
    }
  }

LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_47:

  return sub_1B4F68DB4();
}

uint64_t sub_1B4E24298()
{
  v1 = v0[63];
  v2 = v0[57];
  v3 = v0[58];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1B4E24444@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1B4F688B4();
  v9 = 1;
  if (v8 != 1 << *(a1 + 32))
  {
    sub_1B4E2A4E4(v8, *(a1 + 36), a1, a2, a4);
    v9 = 0;
  }

  v10 = a3(0);
  v11 = *(*(v10 - 8) + 56);

  return v11(a4, v9, 1, v10);
}

uint64_t sub_1B4E24570(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46F8, &qword_1B4F6D0D0);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4, v6);
  v8 = &v16 - v7;
  v9 = *a2;
  v10 = a2[1];
  v11 = sub_1B4F66484();
  (*(*(v11 - 8) + 16))(v8, a1, v11);
  v12 = &v8[*(v5 + 56)];
  *v12 = v9;
  *(v12 + 1) = v10;

  if (v9 == sub_1B4F667C4() && v10 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_1B4F68D54();
  }

  sub_1B4DD2BC4(v8, &qword_1EB8F46F8, &qword_1B4F6D0D0);
  return v14 & 1;
}

uint64_t sub_1B4E246C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v40 = a3;
  v41 = a5;
  v6 = a4;
  v38 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4730, &qword_1B4F6D108);
  v9 = *(v8 - 8);
  v37 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - v11;
  v13 = sub_1B4DE34E8();
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v14 = sub_1B4F67C54();
  __swift_project_value_buffer(v14, qword_1EDB71F48);
  v15 = sub_1B4F67C34();
  v16 = sub_1B4F685E4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v8;
    v18 = v17;
    v34 = swift_slowAlloc();
    v42 = v34;
    *v18 = 134218498;
    *(v18 + 4) = v13;
    *(v18 + 12) = 2080;
    v19 = sub_1B4F689D4();
    v35 = v12;
    v21 = a2;
    v22 = v6;
    v23 = sub_1B4DC4F88(v19, v20, &v42);
    v24 = v41;
    v12 = v35;

    *(v18 + 14) = v23;
    v6 = v22;
    a2 = v21;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v24;
    _os_log_impl(&dword_1B4DC2000, v15, v16, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v18, 0x20u);
    v25 = v34;
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1B8C831D0](v25, -1, -1);
    v26 = v18;
    v8 = v36;
    MEMORY[0x1B8C831D0](v26, -1, -1);
  }

  (*(v9 + 16))(v12, v38, v8);
  v27 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v13;
  *(v28 + 24) = a2;
  v29 = v41;
  *(v28 + 32) = v40;
  *(v28 + 40) = v6;
  *(v28 + 48) = v29;
  (*(v9 + 32))(v28 + v27, v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E0, &qword_1B4F6CF88);
  v30 = sub_1B4F67654();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1B4E2CB84;
  *(v31 + 24) = v28;

  v30(sub_1B4E219CC, v31);
}

uint64_t sub_1B4E24A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v40 = a3;
  v41 = a5;
  v6 = a4;
  v38 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
  v9 = *(v8 - 8);
  v37 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - v11;
  v13 = sub_1B4DE34E8();
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v14 = sub_1B4F67C54();
  __swift_project_value_buffer(v14, qword_1EDB71F48);
  v15 = sub_1B4F67C34();
  v16 = sub_1B4F685E4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v8;
    v18 = v17;
    v34 = swift_slowAlloc();
    v42 = v34;
    *v18 = 134218498;
    *(v18 + 4) = v13;
    *(v18 + 12) = 2080;
    v19 = sub_1B4F689D4();
    v35 = v12;
    v21 = a2;
    v22 = v6;
    v23 = sub_1B4DC4F88(v19, v20, &v42);
    v24 = v41;
    v12 = v35;

    *(v18 + 14) = v23;
    v6 = v22;
    a2 = v21;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v24;
    _os_log_impl(&dword_1B4DC2000, v15, v16, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v18, 0x20u);
    v25 = v34;
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1B8C831D0](v25, -1, -1);
    v26 = v18;
    v8 = v36;
    MEMORY[0x1B8C831D0](v26, -1, -1);
  }

  (*(v9 + 16))(v12, v38, v8);
  v27 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v13;
  *(v28 + 24) = a2;
  v29 = v41;
  *(v28 + 32) = v40;
  *(v28 + 40) = v6;
  *(v28 + 48) = v29;
  (*(v9 + 32))(v28 + v27, v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F6930, &unk_1B4F6CC10);
  v30 = sub_1B4F67654();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1B4E2CB14;
  *(v31 + 24) = v28;

  v30(sub_1B4DDE050, v31);
}

uint64_t sub_1B4E24D48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a6;
  v40 = a3;
  v41 = a5;
  v6 = a4;
  v38 = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4630, &qword_1B4F6D010);
  v9 = *(v8 - 8);
  v37 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v33 - v11;
  v13 = sub_1B4DE34E8();
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v14 = sub_1B4F67C54();
  __swift_project_value_buffer(v14, qword_1EDB71F48);
  v15 = sub_1B4F67C34();
  v16 = sub_1B4F685E4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v36 = v8;
    v18 = v17;
    v34 = swift_slowAlloc();
    v42 = v34;
    *v18 = 134218498;
    *(v18 + 4) = v13;
    *(v18 + 12) = 2080;
    v19 = sub_1B4F689D4();
    v35 = v12;
    v21 = a2;
    v22 = v6;
    v23 = sub_1B4DC4F88(v19, v20, &v42);
    v24 = v41;
    v12 = v35;

    *(v18 + 14) = v23;
    v6 = v22;
    a2 = v21;
    *(v18 + 22) = 2048;
    *(v18 + 24) = v24;
    _os_log_impl(&dword_1B4DC2000, v15, v16, "Converting from Promise to Async-Await. Created at: %ld:%s:%lu", v18, 0x20u);
    v25 = v34;
    __swift_destroy_boxed_opaque_existential_1Tm(v34);
    MEMORY[0x1B8C831D0](v25, -1, -1);
    v26 = v18;
    v8 = v36;
    MEMORY[0x1B8C831D0](v26, -1, -1);
  }

  (*(v9 + 16))(v12, v38, v8);
  v27 = (*(v9 + 80) + 56) & ~*(v9 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v13;
  *(v28 + 24) = a2;
  v29 = v41;
  *(v28 + 32) = v40;
  *(v28 + 40) = v6;
  *(v28 + 48) = v29;
  (*(v9 + 32))(v28 + v27, v12, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F43B0, &unk_1B4F7AC60);
  v30 = sub_1B4F67654();
  v31 = swift_allocObject();
  *(v31 + 16) = sub_1B4E2CA80;
  *(v31 + 24) = v28;

  v30(sub_1B4E2CB0C, v31);
}

uint64_t sub_1B4E2508C(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB71F48);
  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = a2;
    v16 = a7;
    v17 = swift_slowAlloc();
    v23 = v17;
    *v14 = 134218498;
    *(v14 + 4) = a3;
    *(v14 + 12) = 2080;
    v18 = sub_1B4F689D4();
    v20 = sub_1B4DC4F88(v18, v19, &v23);

    *(v14 + 14) = v20;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v16;
    a2 = v15;
    _os_log_impl(&dword_1B4DC2000, v12, v13, "Finished P->A conversion: %ld:%s:%lu", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1B8C831D0](v17, -1, -1);
    MEMORY[0x1B8C831D0](v14, -1, -1);
  }

  v23 = a1;
  if (a2)
  {
    v21 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4730, &qword_1B4F6D108);
    return sub_1B4F682A4();
  }

  else
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4730, &qword_1B4F6D108);
    return sub_1B4F682B4();
  }
}

uint64_t sub_1B4E25298(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v11 = sub_1B4F67C54();
  __swift_project_value_buffer(v11, qword_1EDB71F48);
  v12 = sub_1B4F67C34();
  v13 = sub_1B4F685E4();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = a2;
    v16 = a1;
    v17 = a7;
    v18 = swift_slowAlloc();
    v24 = v18;
    *v14 = 134218498;
    *(v14 + 4) = a3;
    *(v14 + 12) = 2080;
    v19 = sub_1B4F689D4();
    v21 = sub_1B4DC4F88(v19, v20, &v24);

    *(v14 + 14) = v21;
    *(v14 + 22) = 2048;
    *(v14 + 24) = v17;
    a1 = v16;
    a2 = v15;
    _os_log_impl(&dword_1B4DC2000, v12, v13, "Finished P->A conversion: %ld:%s:%lu", v14, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v18);
    MEMORY[0x1B8C831D0](v18, -1, -1);
    MEMORY[0x1B8C831D0](v14, -1, -1);
  }

  if (a2)
  {
    v24 = a1;
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    return sub_1B4F682A4();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB8F7160, &unk_1B4F7C290);
    return sub_1B4F682B4();
  }
}

uint64_t sub_1B4E2549C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, uint64_t a7)
{
  v34 = a6;
  v35 = a1;
  v33 = a5;
  v32 = a4;
  v9 = sub_1B4F64ED4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9, v11);
  v13 = v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45B8, &qword_1B4F6CE70);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = (v30 - v16);
  if (qword_1EDB71F40 != -1)
  {
    swift_once();
  }

  v18 = sub_1B4F67C54();
  __swift_project_value_buffer(v18, qword_1EDB71F48);
  v19 = sub_1B4F67C34();
  v20 = sub_1B4F685E4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v30[1] = a7;
    v31 = v9;
    v22 = v21;
    v23 = v10;
    v24 = swift_slowAlloc();
    v36 = v24;
    *v22 = 134218498;
    *(v22 + 4) = a2;
    *(v22 + 12) = 2080;
    v25 = sub_1B4F689D4();
    v27 = sub_1B4DC4F88(v25, v26, &v36);

    *(v22 + 14) = v27;
    *(v22 + 22) = 2048;
    *(v22 + 24) = v34;
    _os_log_impl(&dword_1B4DC2000, v19, v20, "Finished P->A conversion: %ld:%s:%lu", v22, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v28 = v24;
    v10 = v23;
    MEMORY[0x1B8C831D0](v28, -1, -1);
    v9 = v31;
    MEMORY[0x1B8C831D0](v22, -1, -1);
  }

  sub_1B4E21A90(v35, v17, &qword_1EB8F45B8, &qword_1B4F6CE70);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v36 = *v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4630, &qword_1B4F6D010);
    return sub_1B4F682A4();
  }

  else
  {
    (*(v10 + 32))(v13, v17, v9);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4630, &qword_1B4F6D010);
    return sub_1B4F682B4();
  }
}

char *sub_1B4E257A4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4E25A44(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4E257C4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4748, &unk_1B4F6D120, MEMORY[0x1E69CB098]);
  *v3 = result;
  return result;
}

void *sub_1B4E25808(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4660, &qword_1B4F6D030, MEMORY[0x1E69CB608]);
  *v3 = result;
  return result;
}

void *sub_1B4E2584C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F46A8, &qword_1B4F6D080, MEMORY[0x1E69CB6B0]);
  *v3 = result;
  return result;
}

char *sub_1B4E25890(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4E25B78(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1B4E258B0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4E25C84(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4E258D0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4670, &qword_1B4F6D040, MEMORY[0x1E69CB780]);
  *v3 = result;
  return result;
}

char *sub_1B4E25914(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4E25D94(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1B4E25934(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4658, &qword_1B4F6D028, type metadata accessor for RemoteBrowsingJournalEntry);
  *v3 = result;
  return result;
}

void *sub_1B4E25978(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4638, &qword_1B4F6D018, MEMORY[0x1E69CCD48]);
  *v3 = result;
  return result;
}

void *sub_1B4E259BC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4618, &qword_1B4F6CFF8, MEMORY[0x1E69CB178]);
  *v3 = result;
  return result;
}

void *sub_1B4E25A00(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1B4E25E88(a1, a2, a3, *v3, &qword_1EB8F4600, &qword_1B4F6CFD8, MEMORY[0x1E69CCCE0]);
  *v3 = result;
  return result;
}

char *sub_1B4E25A44(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45E8, &qword_1B4F6CF90);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4E25B78(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4690, &qword_1B4F6D068);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4E25C84(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F61D0, &qword_1B4F6D058);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1B4E25D94(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4668, &qword_1B4F6D038);
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

void *sub_1B4E25E88(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1B4E26064(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4740, &qword_1B4F6D118);
  v34 = v4;
  result = sub_1B4F68BA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v34 & 1) == 0)
      {
      }

      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4E26304(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1B4F66484();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v7);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46F0, &qword_1B4F6D0C8);
  v45 = v4;
  result = sub_1B4F68BA4();
  v12 = result;
  if (*(v10 + 16))
  {
    v50 = v9;
    v41 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v42 = (v6 + 16);
    v43 = v10;
    v44 = v6;
    v46 = (v6 + 32);
    v19 = result + 64;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 48);
      v49 = *(v44 + 72);
      v28 = v27 + v49 * v26;
      if (v45)
      {
        (*v46)(v50, v28, v5);
        v29 = (*(v10 + 56) + 16 * v26);
        v30 = *v29;
        v47 = v29[1];
        v48 = v30;
      }

      else
      {
        (*v42)(v50, v28, v5);
        v31 = (*(v10 + 56) + 16 * v26);
        v32 = *v31;
        v47 = v31[1];
        v48 = v32;
      }

      sub_1B4E2CB3C(&qword_1EB8F41A8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC280]);
      result = sub_1B4F67F14();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      result = (*v46)(*(v12 + 48) + v49 * v20, v50, v5);
      v21 = (*(v12 + 56) + 16 * v20);
      v22 = v47;
      *v21 = v48;
      v21[1] = v22;
      ++*(v12 + 16);
      v10 = v43;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_34;
    }

    v40 = 1 << *(v10 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_1B4E266EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v46 = sub_1B4F66874();
  v5 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v6);
  v45 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4708, &qword_1B4F6D0E0);
  v43 = v4;
  result = sub_1B4F68BA4();
  v10 = result;
  if (*(v8 + 16))
  {
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v39 = v2;
    v40 = (v5 + 16);
    v41 = v8;
    v42 = v5;
    v44 = (v5 + 32);
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(v42 + 72);
      v29 = v24 + v28 * v23;
      if (v43)
      {
        (*v44)(v45, v29, v46);
      }

      else
      {
        (*v40)(v45, v29, v46);
      }

      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v27;
      v19[1] = v26;
      result = (*v44)(*(v10 + 56) + v28 * v18, v45, v46);
      ++*(v10 + 16);
      v8 = v41;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

uint64_t sub_1B4E26A6C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v54 = sub_1B4F666C4();
  v5 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54, v6);
  v53 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1B4F66484();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v55 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4720, &qword_1B4F6D0F8);
  v49 = v4;
  result = sub_1B4F68BA4();
  v14 = result;
  if (*(v12 + 16))
  {
    v15 = 0;
    v16 = v9;
    v17 = (v12 + 64);
    v18 = 1 << *(v12 + 32);
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v20 = v19 & *(v12 + 64);
    v21 = (v18 + 63) >> 6;
    v45 = (v16 + 16);
    v46 = v16;
    v43 = v2;
    v44 = v5 + 16;
    v47 = v12;
    v48 = v5;
    v50 = (v5 + 32);
    v51 = (v16 + 32);
    v22 = result + 64;
    v23 = v16;
    while (v20)
    {
      v25 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
LABEL_15:
      v28 = v25 | (v15 << 6);
      v29 = *(v12 + 48);
      v52 = *(v23 + 72);
      v30 = v29 + v52 * v28;
      if (v49)
      {
        (*v51)(v55, v30, v8);
        v31 = *(v12 + 56);
        v32 = *(v48 + 72);
        (*(v48 + 32))(v53, v31 + v32 * v28, v54);
      }

      else
      {
        (*v45)(v55, v30, v8);
        v33 = *(v12 + 56);
        v32 = *(v48 + 72);
        (*(v48 + 16))(v53, v33 + v32 * v28, v54);
      }

      sub_1B4E2CB3C(&qword_1EB8F41A8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC280]);
      result = sub_1B4F67F14();
      v34 = -1 << *(v14 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v22 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v22 + 8 * v36);
          if (v40 != -1)
          {
            v24 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v35) & ~*(v22 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v51)((*(v14 + 48) + v52 * v24), v55, v8);
      result = (*v50)(*(v14 + 56) + v32 * v24, v53, v54);
      ++*(v14 + 16);
      v23 = v46;
      v12 = v47;
    }

    v26 = v15;
    while (1)
    {
      v15 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v15 >= v21)
      {
        break;
      }

      v27 = v17[v15];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v20 = (v27 - 1) & v27;
        goto LABEL_15;
      }
    }

    if ((v49 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_34;
    }

    v41 = 1 << *(v12 + 32);
    v3 = v43;
    if (v41 >= 64)
    {
      bzero(v17, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v17 = -1 << v41;
    }

    *(v12 + 16) = 0;
  }

LABEL_34:
  *v3 = v14;
  return result;
}

uint64_t sub_1B4E26F14(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46E0, &qword_1B4F6D0B8);
  v33 = v4;
  result = sub_1B4F68BA4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1B4DC933C(v24, v34);
      }

      else
      {
        sub_1B4DC40A0(v24, v34);
      }

      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1B4DC933C(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4E271D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46B8, &qword_1B4F6D090);
  result = sub_1B4F68BA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v2;
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
    v14 = result + 64;
    while (v12)
    {
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = v19 | (v8 << 6);
      v23 = *(v5 + 48) + 40 * v22;
      if (v4)
      {
        v24 = *v23;
        v25 = *(v23 + 16);
        v38 = *(v23 + 32);
        v36 = v24;
        v37 = v25;
        sub_1B4E2C940((*(v5 + 56) + 32 * v22), v35);
      }

      else
      {
        sub_1B4DF47F4(v23, &v36);
        sub_1B4DC4F2C(*(v5 + 56) + 32 * v22, v35);
      }

      result = sub_1B4F68934();
      v26 = -1 << *(v7 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v14 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v14 + 8 * v28);
          if (v32 != -1)
          {
            v15 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 40 * v15;
      v17 = v36;
      v18 = v37;
      *(v16 + 32) = v38;
      *v16 = v17;
      *(v16 + 16) = v18;
      result = sub_1B4E2C940(v35, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v21 = v9[v8];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v12 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if (v4)
    {
      v33 = 1 << *(v5 + 32);
      if (v33 >= 64)
      {
        bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v33;
      }

      *(v5 + 16) = 0;
    }

    v3 = v34;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B4E27490(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46A0, &qword_1B4F6D078);
  result = sub_1B4F68BA4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + 2 * v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_1B4F68E84();
      MEMORY[0x1B8C82740](qword_1B4F6D130[v20]);
      result = sub_1B4F68EC4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 2 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B4E27728(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4698, &qword_1B4F6D070);
  result = sub_1B4F68BA4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v29 = *(*(v5 + 56) + 16 * v19);
      if ((v4 & 1) == 0)
      {
      }

      sub_1B4F68E84();
      MEMORY[0x1B8C82740](qword_1B4F6DCB8[v20]);
      result = sub_1B4F68EC4();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v29;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if (v4)
    {
      v28 = 1 << *(v5 + 32);
      if (v28 >= 64)
      {
        bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v9 = -1 << v28;
      }

      *(v5 + 16) = 0;
    }

    v3 = v2;
  }

  else
  {
  }

  *v3 = v7;
  return result;
}

uint64_t sub_1B4E279C0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4680, &qword_1B4F6D050);
  v33 = v4;
  result = sub_1B4F68BA4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4E27C64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4678, &qword_1B4F6D048);
  v37 = v4;
  result = sub_1B4F68BA4();
  v7 = result;
  if (*(v5 + 16))
  {
    v36 = v5;
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
    v14 = result + 64;
    while (v12)
    {
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 24 * v21);
      v26 = *v25;
      v27 = v25[2];
      v38 = v25[1];
      if ((v37 & 1) == 0)
      {
      }

      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v28 = -1 << *(v7 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v14 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v14 + 8 * v30);
          if (v34 != -1)
          {
            v15 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v29) & ~*(v14 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 24 * v15);
      *v17 = v26;
      v17[1] = v38;
      v17[2] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v37 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v35 = 1 << *(v5 + 32);
    v3 = v2;
    if (v35 >= 64)
    {
      bzero(v9, ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v35;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1B4E27F34(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4620, &qword_1B4F6D000);
  v33 = v4;
  result = sub_1B4F68BA4();
  v7 = result;
  if (*(v5 + 16))
  {
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
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        sub_1B4E2C940(v24, v34);
      }

      else
      {
        sub_1B4DC4F2C(v24, v34);
      }

      sub_1B4F68E84();
      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1B4E2C940(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

void *sub_1B4E281EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4740, &qword_1B4F6D118);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_1B4E28354()
{
  v1 = v0;
  v36 = sub_1B4F66484();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46F0, &qword_1B4F6D0C8);
  v4 = *v0;
  v5 = sub_1B4F68B94();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_1B4E285E0()
{
  v1 = v0;
  v36 = sub_1B4F66874();
  v38 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36, v2);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4708, &qword_1B4F6D0E0);
  v4 = *v0;
  v5 = sub_1B4F68B94();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v22 = *v21;
        v23 = v21[1];
        v24 = v38;
        v25 = *(v38 + 72) * v19;
        v26 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v4 + 56) + v25, v36);
        v28 = v37;
        v29 = (*(v37 + 48) + v20);
        *v29 = v22;
        v29[1] = v23;
        (*(v24 + 32))(*(v28 + 56) + v25, v26, v27);

        v14 = v39;
      }

      while (v39);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {

        v1 = v31;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v32 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

char *sub_1B4E28860()
{
  v1 = v0;
  v43 = sub_1B4F666C4();
  v46 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43, v2);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1B4F66484();
  v45 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41, v4);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4720, &qword_1B4F6D0F8);
  v6 = *v0;
  v7 = sub_1B4F68B94();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_1B4E28BB4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46E0, &qword_1B4F6D0B8);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 40 * v17;
        sub_1B4DC40A0(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B4DC933C(v25, *(v4 + 56) + v22);
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void *sub_1B4E28D5C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46C8, &qword_1B4F6D0A0);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B4E28EB8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46B8, &qword_1B4F6D090);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 40 * v17;
        sub_1B4DF47F4(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_1B4DC4F2C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1B4E2C940(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B4E2905C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46A0, &qword_1B4F6D078);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B4E291C0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4698, &qword_1B4F6D070);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + v17) = *(*(v2 + 48) + v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B4E29324()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4680, &qword_1B4F6D050);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B4E2948C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4678, &qword_1B4F6D048);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_1B4E29614()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4620, &qword_1B4F6D000);
  v2 = *v0;
  v3 = sub_1B4F68B94();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_1B4DC4F2C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1B4E2C940(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

void sub_1B4E297B8(uint64_t (*a1)(char *, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = a1;
  v16[1] = *MEMORY[0x1E69E9840];
  v7 = *(a3 + 32);
  v8 = v7 & 0x3F;
  v9 = (1 << v7) + 63;
  v10 = v9 >> 6;
  v11 = 8 * (v9 >> 6);
  if (v8 > 0xD)
  {
    v14 = 8 * (v9 >> 6);

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v15 = swift_slowAlloc();
      sub_1B4E29BC4(v15, v10, a3, v6);
      MEMORY[0x1B8C831D0](v15, -1, -1);
      return;
    }

    v11 = v14;
  }

  MEMORY[0x1EEE9AC00](a1, v11);
  v13 = v16 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v13, v12);
  sub_1B4E29938(v13, v10, a3, v6);
  if (v4)
  {
    swift_willThrow();
  }
}

void sub_1B4E29938(unint64_t *a1, uint64_t a2, void *a3, uint64_t (*a4)(char *, void *))
{
  v37 = a4;
  v31 = a2;
  v32 = a1;
  v5 = sub_1B4F66484();
  v8.n128_f64[0] = MEMORY[0x1EEE9AC00](v5, v6);
  v38 = a3;
  v39 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = 0;
  v13 = a3[8];
  v12 = a3 + 8;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v35 = v7 + 16;
  v36 = v7;
  v33 = 0;
  v34 = (v7 + 8);
  while (v16)
  {
    v40 = (v16 - 1) & v16;
    v18 = __clz(__rbit64(v16)) | (v10 << 6);
    v19 = v39;
LABEL_11:
    v22 = v38;
    (*(v36 + 16))(v19, v38[6] + *(v36 + 72) * v18, v5, v8);
    v23 = v18;
    v24 = (v22[7] + 16 * v18);
    v25 = v5;
    v26 = v24[1];
    v41[0] = *v24;
    v41[1] = v26;

    v27 = v42;
    v28 = v37(v19, v41);
    v42 = v27;
    if (v27)
    {

      (*v34)(v19, v25);
      return;
    }

    v29 = v28;

    (*v34)(v19, v25);
    v5 = v25;
    v16 = v40;
    if (v29)
    {
      *(v32 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
      if (__OFADD__(v33++, 1))
      {
        __break(1u);
LABEL_16:
        sub_1B4E29D94(v32, v31, v33, v38);
        return;
      }
    }
  }

  v20 = v10;
  v19 = v39;
  while (1)
  {
    v10 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v10 >= v17)
    {
      goto LABEL_16;
    }

    v21 = v12[v10];
    ++v20;
    if (v21)
    {
      v40 = (v21 - 1) & v21;
      v18 = __clz(__rbit64(v21)) | (v10 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

void *sub_1B4E29BC4(void *result, uint64_t a2, void *a3, uint64_t (*a4)(char *, void *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_1B4E29938(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

unint64_t *sub_1B4E29C54(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B4E2B11C(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

unint64_t *sub_1B4E29CF0(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v9 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_1B4E2A91C(v9, a2, a3, a4, a5);
    v11 = v10;
    swift_bridgeObjectRelease_n();

    return v11;
  }

  return result;
}

uint64_t sub_1B4E29D94(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a1;
  v51 = sub_1B4F66484();
  v7 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v8);
  v50 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v43 = v39 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46F0, &qword_1B4F6D0C8);
  result = sub_1B4F68BB4();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v42;
  }

  v16 = 0;
  v39[1] = v7 + 16;
  v40 = result;
  v49 = v7 + 32;
  v17 = result + 64;
  v39[0] = a4;
  v41 = v7;
  v18 = v51;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[6];
    v48 = *(v7 + 72);
    v24 = v43;
    (*(v7 + 16))(v43, v23 + v48 * v22, v18);
    v25 = (a4[7] + 16 * v22);
    v26 = *v25;
    v27 = v25[1];
    v45 = *(v7 + 32);
    v46 = v26;
    v45(v50, v24, v18);
    v14 = v40;
    sub_1B4E2CB3C(&qword_1EB8F41A8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC280]);
    v47 = v27;

    result = sub_1B4F67F14();
    v28 = -1 << *(v14 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      v7 = v41;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v17 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v7 = v41;
LABEL_26:
    *(v17 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = (v45)(*(v14 + 48) + v31 * v48, v50, v51);
    v36 = (*(v14 + 56) + 16 * v31);
    v37 = v47;
    *v36 = v46;
    v36[1] = v37;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39[0];
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = v42[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
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

uint64_t sub_1B4E2A13C(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v42 = a1;
  v51 = sub_1B4F66484();
  v7 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v8);
  v50 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10, v11);
  v43 = v39 - v12;
  if (!a3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4718, &qword_1B4F6D0F0);
  result = sub_1B4F68BB4();
  v14 = result;
  if (a2 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = *v42;
  }

  v16 = 0;
  v39[1] = v7 + 16;
  v40 = result;
  v49 = v7 + 32;
  v17 = result + 64;
  v39[0] = a4;
  v41 = v7;
  v18 = v51;
  while (v15)
  {
    v19 = __clz(__rbit64(v15));
    v44 = (v15 - 1) & v15;
LABEL_16:
    v22 = v19 | (v16 << 6);
    v23 = a4[6];
    v48 = *(v7 + 72);
    v24 = v43;
    (*(v7 + 16))(v43, v23 + v48 * v22, v18);
    v25 = (a4[7] + 16 * v22);
    v26 = *v25;
    v27 = v25[1];
    v45 = *(v7 + 32);
    v46 = v26;
    v45(v50, v24, v18);
    v14 = v40;
    sub_1B4E2CB3C(&qword_1EB8F41A8, MEMORY[0x1E69CC278], MEMORY[0x1E69CC280]);
    v47 = v27;

    result = sub_1B4F67F14();
    v28 = -1 << *(v14 + 32);
    v29 = result & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
    {
      v32 = 0;
      v33 = (63 - v28) >> 6;
      v7 = v41;
      while (++v30 != v33 || (v32 & 1) == 0)
      {
        v34 = v30 == v33;
        if (v30 == v33)
        {
          v30 = 0;
        }

        v32 |= v34;
        v35 = *(v17 + 8 * v30);
        if (v35 != -1)
        {
          v31 = __clz(__rbit64(~v35)) + (v30 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v31 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
    v7 = v41;
LABEL_26:
    *(v17 + ((v31 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v31;
    result = (v45)(*(v14 + 48) + v31 * v48, v50, v51);
    v36 = (*(v14 + 56) + 16 * v31);
    v37 = v47;
    *v36 = v46;
    v36[1] = v37;
    ++*(v14 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v39[0];
    v15 = v44;
    if (!a3)
    {
      return v14;
    }
  }

  v20 = v16;
  while (1)
  {
    v16 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v16 >= a2)
    {
      return v14;
    }

    v21 = v42[v16];
    ++v20;
    if (v21)
    {
      v19 = __clz(__rbit64(v21));
      v44 = (v21 - 1) & v21;
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

uint64_t sub_1B4E2A4E4@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  if (result < 0 || (v5 = result, 1 << *(a3 + 32) <= result))
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

  v7 = *(a3 + 48);
  v8 = a4(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 16);
  v11 = v7 + *(v9 + 72) * v5;

  return v10(a5, v11, v8);
}

uint64_t sub_1B4E2A5A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46B0, &qword_1B4F6D088);
    v3 = sub_1B4F68994();
    v4 = 0;
    v5 = v3 + 56;
    v20 = v1;
    v21 = a1 + 32;
    while (2)
    {
      v6 = *(v21 + v4);
      sub_1B4F68E84();
      sub_1B4F652E4();
      sub_1B4F67FE4();

      result = sub_1B4F68EC4();
      v8 = ~(-1 << *(v3 + 32));
      for (i = result & v8; ; i = (i + 1) & v8)
      {
        v10 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v10) == 0)
        {
          break;
        }

        v11 = sub_1B4F652E4();
        v13 = v12;
        if (v11 == sub_1B4F652E4() && v13 == v14)
        {

          goto LABEL_4;
        }

        v16 = sub_1B4F68D54();

        if (v16)
        {
          goto LABEL_4;
        }
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v10;
      *(*(v3 + 48) + i) = v6;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v20)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B4E2A75C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4738, &qword_1B4F6D110);
    v3 = sub_1B4F68994();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1B4F68E84();

      sub_1B4F67FE4();
      result = sub_1B4F68EC4();
      v11 = ~(-1 << *(v3 + 32));
      for (i = result & v11; ; i = (i + 1) & v11)
      {
        v13 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v13) == 0)
        {
          break;
        }

        v14 = (*(v3 + 48) + 16 * i);
        if (*v14 != v9 || v14[1] != v8)
        {
          result = sub_1B4F68D54();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v13;
      v16 = (*(v3 + 48) + 16 * i);
      *v16 = v9;
      v16[1] = v8;
      v17 = *(v3 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v3 + 16) = v19;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1B4E2A91C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v49 = a2;
  v62 = a4;
  v63 = a5;
  v50 = a1;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45D0, &qword_1B4F6CF78);
  MEMORY[0x1EEE9AC00](v61, v6);
  v8 = &v48 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v48 - v11;
  v13 = sub_1B4F66484();
  v16.n128_f64[0] = MEMORY[0x1EEE9AC00](v13, v14);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = 0;
  v64 = a3;
  v20 = *(a3 + 64);
  v53 = a3 + 64;
  v21 = 1 << *(a3 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v20;
  v51 = 0;
  v52 = (v21 + 63) >> 6;
  v59 = v15 + 16;
  v60 = v15;
  v57 = (v15 + 8);
  v58 = v8;
  v55 = v18;
  v56 = v12;
  while (v23)
  {
    v26 = v18;
    v65 = (v23 - 1) & v23;
    v27 = __clz(__rbit64(v23)) | (v19 << 6);
LABEL_12:
    v30 = v64;
    v31 = *(v60 + 16);
    v31(v26, v64[6] + *(v60 + 72) * v27, v13, v16);
    v32 = v30[7];
    v54 = v27;
    v33 = (v32 + 16 * v27);
    v34 = v13;
    v36 = *v33;
    v35 = v33[1];
    v37 = v56;
    (v31)(v56, v26, v34);
    v38 = (v37 + *(v61 + 48));
    *v38 = v36;
    v38[1] = v35;
    v39 = v58;
    sub_1B4E21A90(v37, v58, &qword_1EB8F45D0, &qword_1B4F6CF78);
    swift_bridgeObjectRetain_n();
    v40 = sub_1B4F66AD4();
    v42 = v41;

    if (v40 == v62 && v42 == v63)
    {

      sub_1B4DD2BC4(v37, &qword_1EB8F45D0, &qword_1B4F6CF78);
      v24 = *v57;
      (*v57)(v39, v34);

      v25 = v55;
      v24(v55, v34);
      v13 = v34;
      v18 = v25;
      v23 = v65;
    }

    else
    {
      v44 = sub_1B4F68D54();

      sub_1B4DD2BC4(v37, &qword_1EB8F45D0, &qword_1B4F6CF78);
      v45 = *v57;
      (*v57)(v39, v34);

      v46 = v55;
      v45(v55, v34);
      v13 = v34;
      v18 = v46;
      v23 = v65;
      if ((v44 & 1) == 0)
      {
        *(v50 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
        if (__OFADD__(v51++, 1))
        {
          __break(1u);
LABEL_20:
          sub_1B4E2A13C(v50, v49, v51, v64);
          return;
        }
      }
    }
  }

  v28 = v19;
  while (1)
  {
    v19 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      break;
    }

    if (v19 >= v52)
    {
      goto LABEL_20;
    }

    v29 = *(v53 + 8 * v19);
    ++v28;
    if (v29)
    {
      v26 = v18;
      v65 = (v29 - 1) & v29;
      v27 = __clz(__rbit64(v29)) | (v19 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
}

unint64_t *sub_1B4E2AD30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  v8 = v7 & 0x3F;
  v9 = ((1 << v7) + 63) >> 6;
  v10 = 8 * v9;
  v11 = swift_bridgeObjectRetain_n();
  if (v8 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v16 = swift_slowAlloc();

      v14 = sub_1B4E29CF0(v16, v9, a1, a2, a3);
      MEMORY[0x1B8C831D0](v16, -1, -1);
      swift_bridgeObjectRelease_n();
      return v14;
    }
  }

  MEMORY[0x1EEE9AC00](v11, v12);
  bzero(v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0), v10);

  sub_1B4E2A91C((v17 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0)), v9, a1, a2, a3);
  v14 = v13;

  if (v3)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v14;
}

unint64_t sub_1B4E2AEFC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4728, &qword_1B4F6D100);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4720, &qword_1B4F6D0F8);
    v8 = sub_1B4F68BB4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4E21A90(v10, v6, &qword_1EB8F4728, &qword_1B4F6D100);
      result = sub_1B4DF43BC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1B4F66484();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_1B4F666C4();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

void sub_1B4E2B11C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = a4;
  v56 = a2;
  v57 = a1;
  v67 = sub_1B4F666C4();
  v5 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67, v6);
  v65 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8, v9);
  v64 = &v55 - v10;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F45D0, &qword_1B4F6CF78);
  MEMORY[0x1EEE9AC00](v73, v11);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v81 = &v55 - v16;
  v80 = sub_1B4F66484();
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v80, v17);
  v79 = &v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = 0;
  v21 = 0;
  v75 = a3;
  v22 = *(a3 + 64);
  v59 = a3 + 64;
  v23 = 1 << *(a3 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & v22;
  v76 = v13;
  v71 = v13 + 8;
  v72 = v18;
  v26 = (v23 + 63) >> 6;
  v62 = v5 + 32;
  v63 = v5 + 16;
  v68 = (v18 + 8);
  v69 = v18 + 16;
  v66 = v5;
  v61 = v5 + 8;
  v70 = v26;
  while (v25)
  {
    v78 = (v25 - 1) & v25;
    v27 = __clz(__rbit64(v25)) | (v21 << 6);
    v28 = v76;
LABEL_11:
    v31 = v75;
    v32 = *(v72 + 16);
    v33 = v79;
    v34 = v80;
    v32(v79, v75[6] + *(v72 + 72) * v27, v80, v19);
    v35 = v31[7];
    v60 = v27;
    v36 = (v35 + 16 * v27);
    v38 = *v36;
    v37 = v36[1];
    v39 = v81;
    (v32)(v81, v33, v34);
    v40 = (v39 + *(v73 + 48));
    *v40 = v38;
    v40[1] = v37;
    sub_1B4E21A90(v39, v28, &qword_1EB8F45D0, &qword_1B4F6CF78);
    swift_bridgeObjectRetain_n();

    v41 = v74;
    v42 = v28;
    if (*(v74 + 16) && (v43 = sub_1B4DF43BC(v28), (v44 & 1) != 0))
    {
      v46 = v65;
      v45 = v66;
      v47 = v67;
      (*(v66 + 16))(v65, *(v41 + 56) + *(v66 + 72) * v43, v67);
      v48 = v64;
      (*(v45 + 32))(v64, v46, v47);
      v49 = *v68;
      v50 = v42;
      v51 = v80;
      (*v68)(v50, v80);
      v77 = sub_1B4F666B4();
      (*(v45 + 8))(v48, v47);
      sub_1B4DD2BC4(v81, &qword_1EB8F45D0, &qword_1B4F6CF78);

      v49(v79, v51);
      v26 = v70;
      v25 = v78;
      if ((v77 & 1) == 0)
      {
        goto LABEL_16;
      }
    }

    else
    {
      sub_1B4DD2BC4(v81, &qword_1EB8F45D0, &qword_1B4F6CF78);
      v52 = *v68;
      v53 = v80;
      (*v68)(v28, v80);

      v52(v79, v53);
      v26 = v70;
      v25 = v78;
LABEL_16:
      *(v57 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v60;
      if (__OFADD__(v58++, 1))
      {
        __break(1u);
LABEL_19:
        sub_1B4E2A13C(v57, v56, v58, v75);
        return;
      }
    }
  }

  v29 = v21;
  v28 = v76;
  while (1)
  {
    v21 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v21 >= v26)
    {
      goto LABEL_19;
    }

    v30 = *(v59 + 8 * v21);
    ++v29;
    if (v30)
    {
      v78 = (v30 - 1) & v30;
      v27 = __clz(__rbit64(v30)) | (v21 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
}

unint64_t *sub_1B4E2B674(uint64_t a1, uint64_t a2)
{
  v15[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v14 = swift_slowAlloc();

      v12 = sub_1B4E29C54(v14, v7, a1, a2);
      MEMORY[0x1B8C831D0](v14, -1, -1);
      swift_bridgeObjectRelease_n();
      return v12;
    }
  }

  MEMORY[0x1EEE9AC00](v9, v10);
  bzero(v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  sub_1B4E2B11C((v15 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);
  v12 = v11;

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v12;
}

unint64_t sub_1B4E2B844(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4710, &qword_1B4F6D0E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4708, &qword_1B4F6D0E0);
    v8 = sub_1B4F68BB4();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4E21A90(v10, v6, &qword_1EB8F4710, &qword_1B4F6D0E8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_1B4DF4344(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_1B4F66874();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

unint64_t sub_1B4E2BA30(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4700, &qword_1B4F6D0D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46F0, &qword_1B4F6D0C8);
    v8 = sub_1B4F68BB4();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1B4E21A90(v10, v6, &qword_1EB8F4700, &qword_1B4F6D0D8);
      result = sub_1B4DF43BC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_1B4F66484();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
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

uint64_t dispatch thunk of WorkoutPlanScheduleConflictQuerying.queryExistingModalityReferences(for:workout:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1B4E2BDB0;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1B4E2BDB0(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

unint64_t sub_1B4E2BEAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F46B8, &qword_1B4F6D090);
    v3 = sub_1B4F68BB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B4E21A90(v4, v13, &qword_1EB8F46C0, &qword_1B4F6D098);
      result = sub_1B4DF4440(v13);
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
      result = sub_1B4E2C940(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1B4E2BFE8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4610, &qword_1B4F6CFE8);
    v3 = sub_1B4F68BB4();
    v4 = a1 + 32;

    while (1)
    {
      sub_1B4E21A90(v4, &v15, &qword_1EB8F70D0, &qword_1B4F6CFF0);
      v5 = v15;
      v6 = v16;
      result = sub_1B4DF4344(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
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

uint64_t sub_1B4E2C118(uint64_t a1)
{
  v2 = sub_1B4F649A4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v39 = &v32 - v9;
  v10 = *(a1 + 16);
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4640, &qword_1B4F6D020);
    v11 = sub_1B4F68994();
    v12 = 0;
    v14 = *(v3 + 16);
    v13 = v3 + 16;
    v37 = v14;
    v38 = v11 + 56;
    v15 = *(v13 + 64);
    v34 = v10;
    v35 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    v33 = (v13 + 16);
    while (1)
    {
      v36 = v12;
      v37(v39, v35 + v16 * v12, v2);
      sub_1B4E2CB3C(&qword_1EB8F4648, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v18 = sub_1B4F67F14();
      v19 = ~(-1 << *(v11 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v13;
          v37(v6, *(v11 + 48) + v20 * v16, v2);
          sub_1B4E2CB3C(&qword_1EB8F4650, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v25 = sub_1B4F67F54();
          v26 = *v17;
          (*v17)(v6, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v13 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v13 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v11 + 48) + v20 * v16, v27, v2);
        v29 = *(v11 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v11 + 16) = v31;
      }

      v12 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v11;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1B4E2C438(uint64_t a1)
{
  v2 = sub_1B4F66E34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4628, &qword_1B4F6D008);
    v12 = sub_1B4F68994();
    v13 = 0;
    v14 = v12 + 56;
    v15 = *(v3 + 80);
    v31 = v11;
    v32 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v3 + 72);
    v17 = v11;
    while (1)
    {
      sub_1B4E2C950(v32 + v16 * v13, v10, MEMORY[0x1E69CCB48]);
      sub_1B4F68E84();
      sub_1B4F66E24();
      v18 = sub_1B4F68EC4();
      v19 = ~(-1 << *(v12 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v14 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        do
        {
          v24 = MEMORY[0x1E69CCB48];
          sub_1B4E2C950(*(v12 + 48) + v20 * v16, v6, MEMORY[0x1E69CCB48]);
          v25 = MEMORY[0x1B8C806C0](v6, v10);
          sub_1B4E2C9B8(v6, v24);
          if (v25)
          {
            sub_1B4E2C9B8(v10, MEMORY[0x1E69CCB48]);
            v17 = v31;
            goto LABEL_4;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v14 + 8 * (v20 >> 6));
          v23 = 1 << v20;
        }

        while (((1 << v20) & v22) != 0);
        v17 = v31;
      }

      *(v14 + 8 * v21) = v23 | v22;
      result = sub_1B4E2CA18(v10, *(v12 + 48) + v20 * v16, MEMORY[0x1E69CCB48]);
      v27 = *(v12 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v12 + 16) = v29;
LABEL_4:
      if (++v13 == v17)
      {
        return v12;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1B4E2C6BC(uint64_t a1)
{
  v2 = sub_1B4F67184();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8, v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v30 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4608, &qword_1B4F6CFE0);
    v12 = sub_1B4F68994();
    v13 = 0;
    v14 = v12 + 56;
    v15 = *(v3 + 80);
    v31 = v11;
    v32 = a1 + ((v15 + 32) & ~v15);
    v16 = *(v3 + 72);
    v17 = v11;
    while (1)
    {
      sub_1B4E2C950(v32 + v16 * v13, v10, MEMORY[0x1E69CCEF0]);
      sub_1B4F68E84();
      sub_1B4F67174();
      v18 = sub_1B4F68EC4();
      v19 = ~(-1 << *(v12 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v14 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        do
        {
          v24 = MEMORY[0x1E69CCEF0];
          sub_1B4E2C950(*(v12 + 48) + v20 * v16, v6, MEMORY[0x1E69CCEF0]);
          v25 = MEMORY[0x1B8C80A10](v6, v10);
          sub_1B4E2C9B8(v6, v24);
          if (v25)
          {
            sub_1B4E2C9B8(v10, MEMORY[0x1E69CCEF0]);
            v17 = v31;
            goto LABEL_4;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v14 + 8 * (v20 >> 6));
          v23 = 1 << v20;
        }

        while (((1 << v20) & v22) != 0);
        v17 = v31;
      }

      *(v14 + 8 * v21) = v23 | v22;
      result = sub_1B4E2CA18(v10, *(v12 + 48) + v20 * v16, MEMORY[0x1E69CCEF0]);
      v27 = *(v12 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v12 + 16) = v29;
LABEL_4:
      if (++v13 == v17)
      {
        return v12;
      }
    }

    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

_OWORD *sub_1B4E2C940(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_1B4E2C950(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4E2C9B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1B4E2CA18(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1B4E2CA80(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4630, &qword_1B4F6D010) - 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 48);
  v8 = *(v1 + 40);
  v9 = v1 + ((*(v3 + 80) + 56) & ~*(v3 + 80));

  return sub_1B4E2549C(a1, v4, v5, v6, v8, v7, v9);
}

uint64_t sub_1B4E2CB3C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1B4E2CBAC(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = *(v4 + 16);
  v8 = *(v4 + 24);
  v9 = *(v4 + 32);
  v10 = *(v4 + 48);
  v11 = *a1;
  v12 = *(a1 + 8);
  v13 = *(v4 + 40);
  v14 = v4 + ((*(v6 + 80) + 56) & ~*(v6 + 80));

  return a4(v11, v12, v7, v8, v9, v13, v10, v14);
}

uint64_t sub_1B4E2CC78(uint64_t a1)
{
  v2 = sub_1B4E2D4FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2CCB4(uint64_t a1)
{
  v2 = sub_1B4E2D4FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2CCF0()
{
  v1 = 0x72616C756C6C6563;
  v2 = 1768319351;
  if (*v0 != 2)
  {
    v2 = 0x726568746FLL;
  }

  if (*v0)
  {
    v1 = 0x74656E7265687465;
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

uint64_t sub_1B4E2CD60@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4E2E308(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4E2CD94(uint64_t a1)
{
  v2 = sub_1B4E2D3AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2CDD0(uint64_t a1)
{
  v2 = sub_1B4E2D3AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2CE0C(uint64_t a1)
{
  v2 = sub_1B4E2D4A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2CE48(uint64_t a1)
{
  v2 = sub_1B4E2D4A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2CE84(uint64_t a1)
{
  v2 = sub_1B4E2D400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2CEC0(uint64_t a1)
{
  v2 = sub_1B4E2D400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2CEFC(uint64_t a1)
{
  v2 = sub_1B4E2D454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2CF38(uint64_t a1)
{
  v2 = sub_1B4E2D454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NetworkInterfaceType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4750, &qword_1B4F6DE80);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3, v4);
  v35 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4758, &qword_1B4F6DE88);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6, v7);
  v32 = &v27 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4760, &qword_1B4F6DE90);
  v30 = *(v9 - 8);
  v31 = v9;
  MEMORY[0x1EEE9AC00](v9, v10);
  v29 = &v27 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4768, &qword_1B4F6DE98);
  v27 = *(v12 - 8);
  v28 = v12;
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4770, &qword_1B4F6DEA0);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = &v27 - v19;
  v21 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1B4E2D3AC();
  sub_1B4F68F54();
  v22 = (v17 + 8);
  if (v21 > 1)
  {
    if (v21 == 2)
    {
      v40 = 2;
      sub_1B4E2D454();
      v23 = v32;
      sub_1B4F68CB4();
      v25 = v33;
      v24 = v34;
    }

    else
    {
      v41 = 3;
      sub_1B4E2D400();
      v23 = v35;
      sub_1B4F68CB4();
      v25 = v36;
      v24 = v37;
    }

    goto LABEL_8;
  }

  if (v21)
  {
    v39 = 1;
    sub_1B4E2D4A8();
    v23 = v29;
    sub_1B4F68CB4();
    v25 = v30;
    v24 = v31;
LABEL_8:
    (*(v25 + 8))(v23, v24);
    return (*v22)(v20, v16);
  }

  v38 = 0;
  sub_1B4E2D4FC();
  sub_1B4F68CB4();
  (*(v27 + 8))(v15, v28);
  return (*v22)(v20, v16);
}

unint64_t sub_1B4E2D3AC()
{
  result = qword_1EB8F4778;
  if (!qword_1EB8F4778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4778);
  }

  return result;
}

unint64_t sub_1B4E2D400()
{
  result = qword_1EB8F4780;
  if (!qword_1EB8F4780)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4780);
  }

  return result;
}

unint64_t sub_1B4E2D454()
{
  result = qword_1EB8F4788;
  if (!qword_1EB8F4788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4788);
  }

  return result;
}

unint64_t sub_1B4E2D4A8()
{
  result = qword_1EB8F4790;
  if (!qword_1EB8F4790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4790);
  }

  return result;
}

unint64_t sub_1B4E2D4FC()
{
  result = qword_1EB8F4798;
  if (!qword_1EB8F4798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4798);
  }

  return result;
}

uint64_t NetworkInterfaceType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v50 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47A0, &qword_1B4F6DEA8);
  v45 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49, v3);
  v52 = v40 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47A8, &qword_1B4F6DEB0);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5, v7);
  v51 = v40 - v8;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47B0, &qword_1B4F6DEB8);
  v43 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46, v9);
  v11 = v40 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47B8, &qword_1B4F6DEC0);
  v44 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v40 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47C0, &qword_1B4F6DEC8);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16, v18);
  v20 = v40 - v19;
  v21 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1B4E2D3AC();
  v22 = v53;
  sub_1B4F68F44();
  if (!v22)
  {
    v41 = v12;
    v42 = 0;
    v23 = v51;
    v24 = v52;
    v53 = v17;
    v25 = v20;
    v26 = sub_1B4F68CA4();
    v27 = *(v26 + 16);
    if (!v27 || ((v28 = *(v26 + 32), v27 == 1) ? (v29 = v28 == 4) : (v29 = 1), v29))
    {
      v30 = sub_1B4F68A04();
      swift_allocError();
      v32 = v31;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F47C8, &qword_1B4F6DED0);
      *v32 = &type metadata for NetworkInterfaceType;
      sub_1B4F68C64();
      sub_1B4F689F4();
      (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
      swift_willThrow();
      (*(v53 + 8))(v25, v16);
    }

    else
    {
      v40[1] = v26;
      if (v28 <= 1)
      {
        if (v28)
        {
          v56 = 1;
          sub_1B4E2D4A8();
          v37 = v42;
          sub_1B4F68C54();
          if (!v37)
          {
            (*(v43 + 8))(v11, v46);
            goto LABEL_23;
          }
        }

        else
        {
          v55 = 0;
          sub_1B4E2D4FC();
          v33 = v42;
          sub_1B4F68C54();
          if (!v33)
          {
            (*(v44 + 8))(v15, v41);
LABEL_23:
            (*(v53 + 8))(v20, v16);
LABEL_25:
            swift_unknownObjectRelease();
            *v50 = v28;
            return __swift_destroy_boxed_opaque_existential_1Tm(v54);
          }
        }

        (*(v53 + 8))(v20, v16);
        goto LABEL_20;
      }

      v34 = v50;
      v35 = v53;
      if (v28 == 2)
      {
        v57 = 2;
        sub_1B4E2D454();
        v36 = v42;
        sub_1B4F68C54();
        if (!v36)
        {
          (*(v48 + 8))(v23, v47);
          (*(v35 + 8))(v25, v16);
          swift_unknownObjectRelease();
          *v34 = 2;
          return __swift_destroy_boxed_opaque_existential_1Tm(v54);
        }
      }

      else
      {
        v58 = 3;
        sub_1B4E2D400();
        v38 = v42;
        sub_1B4F68C54();
        if (!v38)
        {
          (*(v45 + 8))(v24, v49);
          (*(v35 + 8))(v25, v16);
          goto LABEL_25;
        }
      }

      (*(v35 + 8))(v25, v16);
    }

LABEL_20:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

uint64_t sub_1B4E2DBD4()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 30;
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

uint64_t sub_1B4E2DC08()
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

uint64_t sub_1B4E2DC3C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 47;
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

uint64_t sub_1B4E2DC70()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
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

uint64_t NetworkInterfaceType.hashValue.getter()
{
  v1 = *v0;
  sub_1B4F68E84();
  MEMORY[0x1B8C82740](v1);
  return sub_1B4F68EC4();
}

unint64_t sub_1B4E2DD4C()
{
  result = qword_1EB8F47D0;
  if (!qword_1EB8F47D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F47D0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataProtectionClass(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataProtectionClass(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1B4E2DF44()
{
  result = qword_1EB8F47D8;
  if (!qword_1EB8F47D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F47D8);
  }

  return result;
}

unint64_t sub_1B4E2DF9C()
{
  result = qword_1EB8F47E0;
  if (!qword_1EB8F47E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F47E0);
  }

  return result;
}

unint64_t sub_1B4E2DFF4()
{
  result = qword_1EB8F47E8;
  if (!qword_1EB8F47E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F47E8);
  }

  return result;
}

unint64_t sub_1B4E2E04C()
{
  result = qword_1EB8F47F0;
  if (!qword_1EB8F47F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F47F0);
  }

  return result;
}

unint64_t sub_1B4E2E0A4()
{
  result = qword_1EB8F47F8;
  if (!qword_1EB8F47F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F47F8);
  }

  return result;
}

unint64_t sub_1B4E2E0FC()
{
  result = qword_1EB8F4800;
  if (!qword_1EB8F4800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4800);
  }

  return result;
}

unint64_t sub_1B4E2E154()
{
  result = qword_1EB8F4808;
  if (!qword_1EB8F4808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4808);
  }

  return result;
}

unint64_t sub_1B4E2E1AC()
{
  result = qword_1EB8F4810;
  if (!qword_1EB8F4810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4810);
  }

  return result;
}

unint64_t sub_1B4E2E204()
{
  result = qword_1EB8F4818;
  if (!qword_1EB8F4818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4818);
  }

  return result;
}

unint64_t sub_1B4E2E25C()
{
  result = qword_1EB8F4820;
  if (!qword_1EB8F4820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4820);
  }

  return result;
}

unint64_t sub_1B4E2E2B4()
{
  result = qword_1EB8F4828;
  if (!qword_1EB8F4828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4828);
  }

  return result;
}

uint64_t sub_1B4E2E308(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x72616C756C6C6563 && a2 == 0xE800000000000000;
  if (v4 || (sub_1B4F68D54() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74656E7265687465 && a2 == 0xE800000000000000 || (sub_1B4F68D54() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1768319351 && a2 == 0xE400000000000000 || (sub_1B4F68D54() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726568746FLL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1B4F68D54();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1B4E2E480()
{
  v0 = sub_1B4F669A4();
  __swift_allocate_value_buffer(v0, qword_1EB8F4830);
  __swift_project_value_buffer(v0, qword_1EB8F4830);
  return sub_1B4F669B4();
}

uint64_t static WorkoutPlanSortCriteria.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EB8F3D00 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F669A4();
  v3 = __swift_project_value_buffer(v2, qword_1EB8F4830);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t HeartRateDeviceConnectionUpdated.heartRateDeviceConnection.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F66B74();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HeartRateDeviceConnectionUpdated.init(heartRateDeviceConnection:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F66B74();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t type metadata accessor for HeartRateDeviceConnectionUpdated(uint64_t a1)
{
  result = qword_1EB8F4848;
  if (!qword_1EB8F4848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1B4E2E6D8(uint64_t a1)
{
  result = sub_1B4F66B74();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t PlaylistsUpdated.changeset.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1B4F65F44();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PlaylistsUpdated.init(changeset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1B4F65F44();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

void *UpNextQueueClient.__allocating_init(eventHub:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = a3;
  v8 = sub_1B4F67F64();
  v9 = [v6 initWithMachServiceName:v8 options:0];

  type metadata accessor for XPCClient();
  swift_allocObject();
  v10 = sub_1B4DC42B8(v9, v7);

  v11 = *(v10 + 32);
  os_unfair_lock_lock(*(v11 + 16));
  if (*(v10 + 48) == 1)
  {
    *(v10 + 48) = 2;
    [*(v10 + 24) resume];
  }

  os_unfair_lock_unlock(*(v11 + 16));
  v12 = swift_allocObject();
  v13 = sub_1B4E2F07C(v10, a1, a2, v12);

  return v13;
}

uint64_t sub_1B4E2E9C8(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    if (qword_1EDB724A8 != -1)
    {
      swift_once();
    }

    v3 = sub_1B4F67C54();
    __swift_project_value_buffer(v3, qword_1EDB72490);
    v4._countAndFlagsBits = 0xD000000000000025;
    v4._object = 0x80000001B4F80930;
    v5._object = 0x80000001B4F809D0;
    v5._countAndFlagsBits = 0xD00000000000001FLL;
    Logger.trace(file:function:)(v4, v5);
    v6 = *(v2 + 48);
    ObjectType = swift_getObjectType();
    (*(v6 + 8))(ObjectType, &type metadata for UpNextQueueItemsUpdated, &protocol witness table for UpNextQueueItemsUpdated, ObjectType, v6);
  }

  return result;
}

uint64_t UpNextQueueClient.deinit()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t UpNextQueueClient.queryUpNextQueue()()
{
  if (qword_1EDB6E030 != -1)
  {
    swift_once();
  }

  v1 = sub_1B4F67C54();
  __swift_project_value_buffer(v1, qword_1EDB6E038);
  v2._countAndFlagsBits = 0xD000000000000025;
  v2._object = 0x80000001B4F80930;
  v3._object = 0x80000001B4F80960;
  v3._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v2, v3);
  v4 = *(v0 + 24);
  ObjectType = swift_getObjectType();
  v11 = 313;
  v6 = *(v4 + 24);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4858, &qword_1B4F6E490);
  v8 = sub_1B4E2F2A0(&qword_1EDB6DBE0, &qword_1EB8F4858, &qword_1B4F6E490);
  v9 = sub_1B4E2F1EC();
  return v6(&v11, v7, v8, v9, ObjectType, v4);
}

uint64_t UpNextQueueClient.processUpNextQueueUpdates(_:)(uint64_t a1)
{
  if (qword_1EDB6E030 != -1)
  {
    swift_once();
  }

  v3 = sub_1B4F67C54();
  __swift_project_value_buffer(v3, qword_1EDB6E038);
  v4._countAndFlagsBits = 0xD000000000000025;
  v4._object = 0x80000001B4F80930;
  v5._object = 0x80000001B4F80980;
  v5._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v4, v5);
  v6 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v14 = 314;
  v13 = a1;
  v8 = *(v6 + 16);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4860, &qword_1B4F6E498);
  v10 = sub_1B4E2F2A0(&qword_1EB8F4868, &qword_1EB8F4860, &qword_1B4F6E498);
  v11 = sub_1B4E2F308();
  return v8(&v14, &v13, v9, v10, v11, ObjectType, v6);
}

uint64_t sub_1B4E2EDC0()
{
  v1 = *v0;
  if (qword_1EDB6E030 != -1)
  {
    swift_once();
  }

  v2 = sub_1B4F67C54();
  __swift_project_value_buffer(v2, qword_1EDB6E038);
  v3._countAndFlagsBits = 0xD000000000000025;
  v3._object = 0x80000001B4F80930;
  v4._object = 0x80000001B4F80960;
  v4._countAndFlagsBits = 0xD000000000000012;
  Logger.trace(file:function:)(v3, v4);
  v5 = *(v1 + 24);
  ObjectType = swift_getObjectType();
  v12 = 313;
  v7 = *(v5 + 24);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4858, &qword_1B4F6E490);
  v9 = sub_1B4E2F2A0(&qword_1EDB6DBE0, &qword_1EB8F4858, &qword_1B4F6E490);
  v10 = sub_1B4E2F1EC();
  return v7(&v12, v8, v9, v10, ObjectType, v5);
}

uint64_t sub_1B4E2EF18(uint64_t a1)
{
  v3 = *v1;
  if (qword_1EDB6E030 != -1)
  {
    swift_once();
  }

  v4 = sub_1B4F67C54();
  __swift_project_value_buffer(v4, qword_1EDB6E038);
  v5._countAndFlagsBits = 0xD000000000000025;
  v5._object = 0x80000001B4F80930;
  v6._object = 0x80000001B4F80980;
  v6._countAndFlagsBits = 0xD00000000000001DLL;
  Logger.trace(file:function:)(v5, v6);
  v7 = *(v3 + 24);
  ObjectType = swift_getObjectType();
  v15 = 314;
  v14 = a1;
  v9 = *(v7 + 16);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB8F4860, &qword_1B4F6E498);
  v11 = sub_1B4E2F2A0(&qword_1EB8F4868, &qword_1EB8F4860, &qword_1B4F6E498);
  v12 = sub_1B4E2F308();
  return v9(&v15, &v14, v10, v11, v12, ObjectType, v7);
}

void *sub_1B4E2F07C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[2] = a1;
  a4[3] = &protocol witness table for XPCClient;
  a4[4] = &protocol witness table for XPCClient;
  a4[5] = a2;
  a4[6] = a3;
  ObjectType = swift_getObjectType();
  v10 = a1;
  v9 = 49;
  v7 = swift_allocObject();
  swift_weakInit();

  swift_unknownObjectRetain();

  TransportDispatching.register(event:handler:)(&v9, sub_1B4E2F45C, v7, ObjectType, &protocol witness table for XPCClient);

  swift_unknownObjectRelease();
  return a4;
}

void *sub_1B4E2F16C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_allocObject();

  return sub_1B4DC88F8(a1, a2, a3, v13, a5, a6, a7);
}

unint64_t sub_1B4E2F1EC()
{
  result = qword_1EDB6DBD8;
  if (!qword_1EDB6DBD8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4858, &qword_1B4F6E490);
    sub_1B4E2F3BC(&qword_1EDB700A0, MEMORY[0x1E69CB6B0], MEMORY[0x1E69CB6A8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDB6DBD8);
  }

  return result;
}

uint64_t sub_1B4E2F2A0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1B4E2F308()
{
  result = qword_1EB8F4870;
  if (!qword_1EB8F4870)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB8F4860, &qword_1B4F6E498);
    sub_1B4E2F3BC(&qword_1EB8F4878, MEMORY[0x1E69CBBF0], MEMORY[0x1E69CBBE8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB8F4870);
  }

  return result;
}

uint64_t sub_1B4E2F3BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1B4E2F5A4(char a1)
{
  result = 0x7974697669746361;
  switch(a1)
  {
    case 1:
      result = 0x6465766968637261;
      break;
    case 2:
    case 20:
      result = 0xD000000000000013;
      break;
    case 3:
    case 11:
    case 16:
      result = 0xD000000000000017;
      break;
    case 4:
      result = 0x6B72616D6B6F6F62;
      break;
    case 5:
    case 9:
    case 25:
      result = 0xD000000000000018;
      break;
    case 6:
    case 24:
      result = 0xD000000000000012;
      break;
    case 7:
      result = 0xD000000000000016;
      break;
    case 8:
      result = 0xD000000000000022;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 12:
      result = 0xD000000000000016;
      break;
    case 13:
      result = 0xD000000000000016;
      break;
    case 14:
      result = 0xD000000000000020;
      break;
    case 15:
      result = 0x7473696C79616C70;
      break;
    case 17:
      result = 0xD000000000000019;
      break;
    case 18:
    case 19:
      result = 0xD000000000000010;
      break;
    case 21:
      result = 0x6E656D6D6F636572;
      break;
    case 22:
      result = 0x75517478654E7075;
      break;
    case 23:
      result = 0xD000000000000011;
      break;
    case 26:
    case 27:
    case 29:
      result = 0xD00000000000001BLL;
      break;
    case 28:
      result = 0xD00000000000001DLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1B4E2F8D0(uint64_t a1)
{
  v2 = sub_1B4E33F68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2F90C(uint64_t a1)
{
  v2 = sub_1B4E33F68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2F948(uint64_t a1)
{
  v2 = sub_1B4E33FBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2F984(uint64_t a1)
{
  v2 = sub_1B4E33FBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2F9C0(uint64_t a1)
{
  v2 = sub_1B4E34284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2F9FC(uint64_t a1)
{
  v2 = sub_1B4E34284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FA38(uint64_t a1)
{
  v2 = sub_1B4E34C80();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FA74(uint64_t a1)
{
  v2 = sub_1B4E34C80();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FAB0(uint64_t a1)
{
  v2 = sub_1B4E34C2C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FAEC(uint64_t a1)
{
  v2 = sub_1B4E34C2C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FB28(uint64_t a1)
{
  v2 = sub_1B4E34B84();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FB64(uint64_t a1)
{
  v2 = sub_1B4E34B84();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FBA0(uint64_t a1)
{
  v2 = sub_1B4E34B30();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FBDC(uint64_t a1)
{
  v2 = sub_1B4E34B30();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FC18(uint64_t a1)
{
  v2 = sub_1B4E34A28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FC54(uint64_t a1)
{
  v2 = sub_1B4E34A28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FC90(uint64_t a1)
{
  v2 = sub_1B4E349D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FCCC(uint64_t a1)
{
  v2 = sub_1B4E349D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FD10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1B4E3F318(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1B4E2FD44(uint64_t a1)
{
  v2 = sub_1B4E33EB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FD80(uint64_t a1)
{
  v2 = sub_1B4E33EB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FDBC(uint64_t a1)
{
  v2 = sub_1B4E34824();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FDF8(uint64_t a1)
{
  v2 = sub_1B4E34824();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FE34(uint64_t a1)
{
  v2 = sub_1B4E34980();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FE70(uint64_t a1)
{
  v2 = sub_1B4E34980();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FEAC(uint64_t a1)
{
  v2 = sub_1B4E34878();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FEE8(uint64_t a1)
{
  v2 = sub_1B4E34878();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FF24(uint64_t a1)
{
  v2 = sub_1B4E347D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FF60(uint64_t a1)
{
  v2 = sub_1B4E347D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E2FF9C(uint64_t a1)
{
  v2 = sub_1B4E3477C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E2FFD8(uint64_t a1)
{
  v2 = sub_1B4E3477C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E30014(uint64_t a1)
{
  v2 = sub_1B4E34728();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30050(uint64_t a1)
{
  v2 = sub_1B4E34728();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3008C(uint64_t a1)
{
  v2 = sub_1B4E346D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E300C8(uint64_t a1)
{
  v2 = sub_1B4E346D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E30104(uint64_t a1)
{
  v2 = sub_1B4E34680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30140(uint64_t a1)
{
  v2 = sub_1B4E34680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3017C(uint64_t a1)
{
  v2 = sub_1B4E3462C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E301B8(uint64_t a1)
{
  v2 = sub_1B4E3462C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E301F4(uint64_t a1)
{
  v2 = sub_1B4E345D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30230(uint64_t a1)
{
  v2 = sub_1B4E345D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3026C(uint64_t a1)
{
  v2 = sub_1B4E344D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E302A8(uint64_t a1)
{
  v2 = sub_1B4E344D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E302E4(uint64_t a1)
{
  v2 = sub_1B4E3447C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30320(uint64_t a1)
{
  v2 = sub_1B4E3447C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3035C(uint64_t a1)
{
  v2 = sub_1B4E34428();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30398(uint64_t a1)
{
  v2 = sub_1B4E34428();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E303D4(uint64_t a1)
{
  v2 = sub_1B4E3432C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30410(uint64_t a1)
{
  v2 = sub_1B4E3432C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3044C(uint64_t a1)
{
  v2 = sub_1B4E343D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30488(uint64_t a1)
{
  v2 = sub_1B4E343D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E304C4(uint64_t a1)
{
  v2 = sub_1B4E34380();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30500(uint64_t a1)
{
  v2 = sub_1B4E34380();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E3053C(uint64_t a1)
{
  v2 = sub_1B4E342D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1B4E30578(uint64_t a1)
{
  v2 = sub_1B4E342D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1B4E305B4(uint64_t a1)
{
  v2 = sub_1B4E34134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}