uint64_t sub_1BF46B93C(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v43 = a3;
  v41 = a1;
  v6 = sub_1BF4E7F64();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v42 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9818, &qword_1BF4F2E00);
  MEMORY[0x1EEE9AC00](v40);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v38 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = _AXSEnhanceTextLegibilityEnabled();
  v18 = sub_1BF4E7D34();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1E697E9F8];
  if (v17)
  {
    v20 = MEMORY[0x1E697E9F0];
  }

  (*(*(v18 - 8) + 104))(v16, *v20, v18);
  sub_1BF4E7D34();
  (*(v19 + 56))(v16, 0, 1, v18);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v21 = sub_1BF4E7B54();
  __swift_project_value_buffer(v21, qword_1EDCA6AA8);
  sub_1BF46D2D0(v16, v13);

  v22 = sub_1BF4E7B34();
  v23 = sub_1BF4E8E84();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v39 = v6;
    v25 = v24;
    v26 = swift_slowAlloc();
    v38 = v7;
    v27 = v26;
    v44[0] = v26;
    *v25 = 136446466;
    *(v25 + 4) = sub_1BF38D65C(v41, a2, v44);
    *(v25 + 12) = 2082;
    sub_1BF46D2D0(v13, v10);
    v28 = sub_1BF4E8994();
    v30 = v29;
    sub_1BF38C9B4(v13, &qword_1EBDD9818, &qword_1BF4F2E00);
    v31 = sub_1BF38D65C(v28, v30, v44);

    *(v25 + 14) = v31;
    _os_log_impl(&dword_1BF389000, v22, v23, "Environment value changed [%{public}s]: %{public}s", v25, 0x16u);
    swift_arrayDestroy();
    v32 = v27;
    v7 = v38;
    MEMORY[0x1BFB5A5D0](v32, -1, -1);
    v33 = v25;
    v6 = v39;
    MEMORY[0x1BFB5A5D0](v33, -1, -1);
  }

  else
  {

    sub_1BF38C9B4(v13, &qword_1EBDD9818, &qword_1BF4F2E00);
  }

  v34 = *(a4 + 24);
  os_unfair_lock_lock(*(v34 + 16));
  v35 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v36 = v42;
  (*(v7 + 16))(v42, a4 + v35, v6);
  sub_1BF46D2D0(v16, v10);
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v7 + 40))(a4 + v35, v36, v6);
  swift_endAccess();
  os_unfair_lock_unlock(*(v34 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return sub_1BF38C9B4(v16, &qword_1EBDD9818, &qword_1BF4F2E00);
}

void sub_1BF46BE20()
{

  v1 = *(v0 + OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_colorSchemeObserver);
}

uint64_t sub_1BF46BE60()
{

  v1 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v2 = sub_1BF4E7F64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  v3 = *(v0 + OBJC_IVAR____TtC9ChronoKit28IOSSystemEnvironmentProvider_colorSchemeObserver);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for IOSSystemEnvironmentProvider(uint64_t a1)
{
  result = qword_1EDC979A8;
  if (!qword_1EDC979A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF46BFE4()
{
  type metadata accessor for IOSSystemEnvironmentProvider(0);
  v0 = swift_allocObject();
  sub_1BF467770();
  return v0;
}

double sub_1BF46C044(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29[1] = a3;
  v9 = sub_1BF4E7F64();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(MEMORY[0x1E69943A0]) initWithDisplayConfiguration_];
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v14 = sub_1BF4E7B54();
  __swift_project_value_buffer(v14, qword_1EDCA6AA8);
  v15 = v13;

  v16 = sub_1BF4E7B34();
  v17 = sub_1BF4E8E84();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v29[0] = v9;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31[0] = v20;
    *v19 = 136446466;
    *(v19 + 4) = sub_1BF38D65C(a1, a2, v31);
    *(v19 + 12) = 2082;
    v30 = v15;
    sub_1BF3901C0(0, &qword_1EDC9F9C0, 0x1E69943A0);
    v21 = sub_1BF4E8994();
    v23 = sub_1BF38D65C(v21, v22, v31);

    *(v19 + 14) = v23;
    _os_log_impl(&dword_1BF389000, v16, v17, "Environment value changed [%{public}s]: %{public}s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v20, -1, -1);
    v24 = v19;
    v9 = v29[0];
    MEMORY[0x1BFB5A5D0](v24, -1, -1);
  }

  else
  {
  }

  v25 = *(a4 + 24);
  os_unfair_lock_lock(*(v25 + 16));
  v26 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v10 + 16))(v12, a4 + v26, v9);
  v30 = v15;
  v27 = v15;
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v10 + 40))(a4 + v26, v12, v9);
  swift_endAccess();
  os_unfair_lock_unlock(*(v25 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return result;
}

uint64_t sub_1BF46C41C(uint64_t (*a1)(char *, uint64_t, __n128), unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v51 = a3;
  v49 = a1;
  v8 = sub_1BF4E7F64();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF4E7F84();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v45 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - v18;
  sub_1BF469EFC(a5, &v45 - v18);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v20 = sub_1BF4E7B54();
  __swift_project_value_buffer(v20, qword_1EDCA6AA8);
  v21 = *(v11 + 16);
  v52 = v19;
  v22 = v19;
  v23 = v21;
  v21(v16, v22, v10);

  v24 = sub_1BF4E7B34();
  v25 = sub_1BF4E8E84();

  v26 = os_log_type_enabled(v24, v25);
  v47 = v23;
  if (v26)
  {
    v27 = swift_slowAlloc();
    v46 = a4;
    v28 = v27;
    v45 = swift_slowAlloc();
    v55[0] = v45;
    *v28 = 136446466;
    *(v28 + 4) = sub_1BF38D65C(v49, a2, v55);
    *(v28 + 12) = 2082;
    v23(v13, v16, v10);
    v29 = sub_1BF4E8994();
    v30 = v10;
    v32 = v31;
    v33 = *(v11 + 8);
    v48 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49 = v33;
    (v33)(v16, v30);
    v34 = sub_1BF38D65C(v29, v32, v55);
    v10 = v30;

    *(v28 + 14) = v34;
    _os_log_impl(&dword_1BF389000, v24, v25, "Environment value changed [%{public}s]: %{public}s", v28, 0x16u);
    v35 = v45;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v35, -1, -1);
    v36 = v28;
    a4 = v46;
    MEMORY[0x1BFB5A5D0](v36, -1, -1);
  }

  else
  {

    v37 = *(v11 + 8);
    v48 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v49 = v37;
    (v37)(v16, v10);
  }

  v38 = *(a4 + 24);
  os_unfair_lock_lock(*(v38 + 16));
  v39 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v41 = v53;
  v40 = v54;
  v42 = v50;
  (*(v53 + 16))(v50, a4 + v39, v54);
  v43 = v52;
  v47(v13, v52, v10);
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v41 + 40))(a4 + v39, v42, v40);
  swift_endAccess();
  os_unfair_lock_unlock(*(v38 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return (v49)(v43, v10);
}

double sub_1BF46C8E8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7)
{
  v35 = a3;
  v13 = sub_1BF4E7F64();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a7)
  {
    sub_1BF3D8864(a5, a6);
  }

  else
  {
    a5 = 0;
    a6 = 0xC000000000000000;
  }

  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v17 = sub_1BF4E7B54();
  __swift_project_value_buffer(v17, qword_1EDCA6AA8);
  sub_1BF3D8864(a5, a6);
  sub_1BF3D8864(a5, a6);

  v18 = sub_1BF4E7B34();
  v19 = sub_1BF4E8E84();

  sub_1BF3B03C0(a5, a6);
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v34 = v13;
    v21 = v20;
    v22 = swift_slowAlloc();
    v33 = v14;
    v23 = v22;
    v36[0] = v22;
    *v21 = 136446466;
    *(v21 + 4) = sub_1BF38D65C(a1, a2, v36);
    *(v21 + 12) = 2082;
    v36[3] = a5;
    v36[4] = a6;
    v24 = sub_1BF4E8994();
    v26 = sub_1BF38D65C(v24, v25, v36);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_1BF389000, v18, v19, "Environment value changed [%{public}s]: %{public}s", v21, 0x16u);
    swift_arrayDestroy();
    v27 = v23;
    v14 = v33;
    MEMORY[0x1BFB5A5D0](v27, -1, -1);
    v28 = v21;
    v13 = v34;
    MEMORY[0x1BFB5A5D0](v28, -1, -1);
  }

  else
  {
    sub_1BF3B03C0(a5, a6);
  }

  v29 = *(a4 + 24);
  os_unfair_lock_lock(*(v29 + 16));
  v30 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v14 + 16))(v16, a4 + v30, v13);
  v36[0] = a5;
  v36[1] = a6;
  sub_1BF3D8864(a5, a6);
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v14 + 40))(a4 + v30, v16, v13);
  swift_endAccess();
  os_unfair_lock_unlock(*(v29 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return sub_1BF3B03C0(a5, a6);
}

void sub_1BF46CCA0(void *a1)
{
  if (a1)
  {
    v1 = qword_1EDC97A10;
    v2 = a1;
    if (v1 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = off_1EDC97A18;
    v4 = v2;
    v6 = sub_1BF427568(v4, v3, v5);

    swift_endAccess();
    if (v6)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
      sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
      sub_1BF4E7C74();
    }
  }
}

uint64_t sub_1BF46CDC0(uint64_t (*a1)(char *, uint64_t, __n128), unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v49 = a3;
  v47 = a1;
  v51 = sub_1BF4E7F64();
  v8 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1BF4E7D24();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  v18 = MEMORY[0x1EEE9AC00](v17);
  v20 = &v43 - v19;
  v21 = [a5 userInterfaceStyle];
  v22 = MEMORY[0x1E697DBA8];
  if (v21 != 2)
  {
    v22 = MEMORY[0x1E697DBB8];
  }

  (*(v11 + 104))(v20, *v22, v10);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v23 = sub_1BF4E7B54();
  __swift_project_value_buffer(v23, qword_1EDCA6AA8);
  v24 = *(v11 + 16);
  v50 = v20;
  v52 = v24;
  v24(v16, v20, v10);

  v25 = sub_1BF4E7B34();
  v26 = sub_1BF4E8E84();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v45 = v8;
    v28 = v27;
    v43 = swift_slowAlloc();
    v53[0] = v43;
    *v28 = 136446466;
    *(v28 + 4) = sub_1BF38D65C(v47, a2, v53);
    *(v28 + 12) = 2082;
    v52(v13, v16, v10);
    v29 = sub_1BF4E8994();
    v44 = a4;
    v31 = v30;
    v32 = *(v11 + 8);
    v46 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47 = v32;
    (v32)(v16, v10);
    v33 = sub_1BF38D65C(v29, v31, v53);
    a4 = v44;

    *(v28 + 14) = v33;
    _os_log_impl(&dword_1BF389000, v25, v26, "Environment value changed [%{public}s]: %{public}s", v28, 0x16u);
    v34 = v43;
    swift_arrayDestroy();
    MEMORY[0x1BFB5A5D0](v34, -1, -1);
    v35 = v28;
    v8 = v45;
    MEMORY[0x1BFB5A5D0](v35, -1, -1);
  }

  else
  {

    v36 = *(v11 + 8);
    v46 = (v11 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v47 = v36;
    (v36)(v16, v10);
  }

  v37 = *(a4 + 24);
  os_unfair_lock_lock(*(v37 + 16));
  v38 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  v39 = v48;
  v40 = v51;
  (*(v8 + 16))(v48, a4 + v38, v51);
  v41 = v50;
  v52(v13, v50, v10);
  swift_setAtWritableKeyPath();
  swift_beginAccess();
  (*(v8 + 40))(a4 + v38, v39, v40);
  swift_endAccess();
  os_unfair_lock_unlock(*(v37 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return (v47)(v41, v10);
}

uint64_t sub_1BF46D2D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9818, &qword_1BF4F2E00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1BF46D340(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E8174();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_1BF4708E8(qword_1EDC9FA00, 255, MEMORY[0x1E6985750], MEMORY[0x1E6985760]);
        v26 = sub_1BF4E8874();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_1BF4708E8(&qword_1EDC96498, 255, MEMORY[0x1E6985750], MEMORY[0x1E6985768]);
          v31 = sub_1BF4E88C4();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1BF46D6F8(uint64_t a1, uint64_t a2)
{
  v3 = a2 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (a1 < 0)
    {
      v4 = a1;
    }

    else
    {
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    if (v3)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

LABEL_43:
      MEMORY[0x1EEE6A200](v5, v4);
      return;
    }

    v8 = v4;
    v7 = a2;
    goto LABEL_17;
  }

  if (v3)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFF8;
    if (a2 < 0)
    {
      v6 = a2;
    }

    v7 = a1;
    v8 = v6;
LABEL_17:

    sub_1BF46FD90(v8, v7);
    return;
  }

  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v9 = a1 + 56;
    v10 = 1 << *(a1 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(a1 + 56);
    v5 = sub_1BF47089C();
    v13 = 0;
    v14 = (v10 + 63) >> 6;
    v15 = a2 + 56;
    v27 = v14;
    v16 = a1;
    if (!v12)
    {
LABEL_27:
      v18 = v13;
      while (1)
      {
        v13 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v13 >= v14)
        {
          return;
        }

        v19 = *(v9 + 8 * v13);
        ++v18;
        if (v19)
        {
          v17 = __clz(__rbit64(v19));
          v28 = (v19 - 1) & v19;
          goto LABEL_32;
        }
      }

      __break(1u);
      goto LABEL_43;
    }

    while (1)
    {
      v17 = __clz(__rbit64(v12));
      v28 = (v12 - 1) & v12;
LABEL_32:
      v20 = *(*(v16 + 48) + 8 * (v17 | (v13 << 6)));
      v21 = sub_1BF4E9094();
      v22 = -1 << *(a2 + 32);
      v23 = v21 & ~v22;
      if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
      {
        break;
      }

      v24 = ~v22;
      while (1)
      {
        v25 = *(*(a2 + 48) + 8 * v23);
        v26 = sub_1BF4E90A4();

        if (v26)
        {
          break;
        }

        v23 = (v23 + 1) & v24;
        if (((*(v15 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) == 0)
        {
          goto LABEL_40;
        }
      }

      v14 = v27;
      v12 = v28;
      v16 = a1;
      if (!v28)
      {
        goto LABEL_27;
      }
    }

LABEL_40:
  }
}

void sub_1BF46D960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BF4E8454();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v44 = &v33 - v9;
  v12.n128_f64[0] = MEMORY[0x1EEE9AC00](v10);
  v13 = &v33 - v11;
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v14 = 0;
    v15 = *(a1 + 56);
    v33 = a1 + 56;
    v16 = 1 << *(a1 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & v15;
    v19 = (v16 + 63) >> 6;
    v40 = v5 + 32;
    v42 = a2 + 56;
    v43 = v5 + 16;
    v20 = (v5 + 8);
    v34 = v19;
    v35 = &v33 - v11;
    v36 = v5;
    v37 = a1;
    if (v18)
    {
      while (1)
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_13:
        v24 = *(a1 + 48);
        v41 = *(v5 + 72);
        v25 = *(v5 + 16);
        v25(v13, v24 + v41 * (v21 | (v14 << 6)), v4, v12);
        (*(v5 + 32))(v44, v13, v4);
        sub_1BF4708E8(&qword_1EDC9F1A0, 255, MEMORY[0x1E6985A18], MEMORY[0x1E6985A20]);
        v26 = sub_1BF4E8874();
        v27 = -1 << *(a2 + 32);
        v28 = v26 & ~v27;
        if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
        {
          break;
        }

        v38 = v20 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v29 = a2;
        v30 = ~v27;
        while (1)
        {
          (v25)(v7, *(v29 + 48) + v28 * v41, v4);
          sub_1BF4708E8(&qword_1EBDD9840, 255, MEMORY[0x1E6985A18], MEMORY[0x1E6985A30]);
          v31 = sub_1BF4E88C4();
          v32 = *v20;
          (*v20)(v7, v4);
          if (v31)
          {
            break;
          }

          v28 = (v28 + 1) & v30;
          if (((*(v42 + ((v28 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v28) & 1) == 0)
          {
            v32(v44, v4);
            return;
          }
        }

        v32(v44, v4);
        a2 = v29;
        v5 = v36;
        a1 = v37;
        v19 = v34;
        v13 = v35;
        v18 = v39;
        if (!v39)
        {
          goto LABEL_8;
        }
      }

      (*v20)(v44, v4);
    }

    else
    {
LABEL_8:
      v22 = v14;
      while (1)
      {
        v14 = v22 + 1;
        if (__OFADD__(v22, 1))
        {
          break;
        }

        if (v14 >= v19)
        {
          return;
        }

        v23 = *(v33 + 8 * v14);
        ++v22;
        if (v23)
        {
          v21 = __clz(__rbit64(v23));
          v39 = (v23 - 1) & v23;
          goto LABEL_13;
        }
      }

      __break(1u);
    }
  }
}

void sub_1BF46DD18(uint64_t a1)
{
  v1[5] = a1;

  os_unfair_lock_assert_owner(*(v1[2] + 16));

  if (v1[5])
  {
    v1[3] = 0;
    v1[4] = 0;
  }
}

uint64_t (*sub_1BF46DDB0(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[12] = v7;
  v9 = *(v1 + 16);
  v5[13] = v9;
  os_unfair_lock_lock(*(v9 + 16));
  v10 = OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_dateOfLastDeveloperError;
  v5[14] = OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_dateOfLastDeveloperError;
  swift_beginAccess();
  sub_1BF3ABF74(v1 + v10, v8);
  os_unfair_lock_unlock(*(v9 + 16));
  return sub_1BF470940;
}

uint64_t sub_1BF46DEEC()
{
  v1 = OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher;
  if (*(v0 + OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF3A4BB0(&unk_1EDC9FD80, MEMORY[0x1E695BF88]);
    v2 = sub_1BF4E7C84();
    *(v0 + v1) = v2;
  }

  return v2;
}

double sub_1BF46DFB0(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher) = a1;

  return result;
}

uint64_t (*sub_1BF46DFC8(uint64_t *a1))()
{
  a1[1] = v1;
  *a1 = sub_1BF46DEEC();
  return sub_1BF46E010;
}

double sub_1BF46E010(void *a1)
{
  *(a1[1] + OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher) = *a1;

  return result;
}

void sub_1BF46E028(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(v3 + 40);
  v6 = *(v4 + 16);

  os_unfair_lock_unlock(v6);
  *a2 = v5;
}

double sub_1BF46E07C(uint64_t a1)
{
  sub_1BF46FFF4(a1);

  return result;
}

void sub_1BF46E0B4(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (*(a1 + 40))
  {
    if (a2)
    {

      v6 = _s9ChronoKit19ControlEntryContentC2eeoiySbAC_ACtFZ_0(v5, a2);

      if (v6)
      {
        return;
      }
    }
  }

  else if (!a2)
  {
    return;
  }

  *a3 = 1;

  sub_1BF46DD18(v7);
  if (a2)
  {
    swift_beginAccess();
    if (*(a2 + 56) == 1)
    {
      if (qword_1EBDD8578 != -1)
      {
        swift_once();
      }

      v8 = sub_1BF4E7B54();
      __swift_project_value_buffer(v8, qword_1EBDE1ED8);
      v9 = sub_1BF4E7B34();
      v10 = sub_1BF4E8E84();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1BF389000, v9, v10, "Content has developer error state set.", v11, 2u);
        MEMORY[0x1BFB5A5D0](v11, -1, -1);
      }
    }
  }
}

double (*sub_1BF46E21C(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[1] = v1;
  a1[2] = v3;
  os_unfair_lock_lock(*(v3 + 16));
  v4 = *(v1 + 40);
  v5 = *(v3 + 16);

  os_unfair_lock_unlock(v5);
  *a1 = v4;
  return sub_1BF46E28C;
}

double sub_1BF46E28C(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    v7 = 0;
    v5 = *(v3 + 16);

    os_unfair_lock_lock(v5);
    sub_1BF46E0B4(v2, v4, &v7);
    os_unfair_lock_unlock(*(v3 + 16));
    if (v7)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
      sub_1BF3A4BB0(&qword_1EDC9FD90, MEMORY[0x1E695BF80]);
      sub_1BF4E7C74();
    }
  }

  else
  {
    v8[0] = 0;
    os_unfair_lock_lock(*(v3 + 16));
    sub_1BF46E0B4(v2, v4, v8);
    os_unfair_lock_unlock(*(v3 + 16));
    if (v8[0])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
      sub_1BF3A4BB0(&qword_1EDC9FD90, MEMORY[0x1E695BF80]);
      sub_1BF4E7C74();
    }
  }

  return result;
}

void sub_1BF46E40C(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(*a1 + 16);
  os_unfair_lock_lock(*(v6 + 16));
  v7 = *a2;
  swift_beginAccess();
  sub_1BF3ABF74(v5 + v7, a3);
  os_unfair_lock_unlock(*(v6 + 16));
}

uint64_t sub_1BF46E47C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(char *))
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1BF3ABF74(a1, &v11 - v8);
  return a5(v9);
}

void sub_1BF46E524(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  os_unfair_lock_lock(*(v5 + 16));
  v6 = *a1;
  swift_beginAccess();
  sub_1BF3ABF74(v2 + v6, a2);
  os_unfair_lock_unlock(*(v5 + 16));
}

uint64_t sub_1BF46E59C(uint64_t a1, uint64_t *a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  v8 = *(v2 + 16);
  os_unfair_lock_lock(*(v8 + 16));
  sub_1BF3ABF74(a1, v7);
  v9 = *a2;
  swift_beginAccess();
  sub_1BF3AC398(v7, v2 + v9);
  swift_endAccess();
  os_unfair_lock_unlock(*(v8 + 16));
  return sub_1BF38C9B4(a1, &qword_1EBDD9B00, &qword_1BF4F1E50);
}

uint64_t (*sub_1BF46E690(uint64_t *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x78uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9B00, &qword_1BF4F1E50) - 8) + 64);
  if (v3)
  {
    v5[10] = swift_coroFrameAlloc();
    v5[11] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[10] = malloc(v6);
    v5[11] = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[12] = v7;
  v9 = *(v1 + 16);
  v5[13] = v9;
  os_unfair_lock_lock(*(v9 + 16));
  v10 = OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_contentLoadErrorDate;
  v5[14] = OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF3ABF74(v1 + v10, v8);
  os_unfair_lock_unlock(*(v9 + 16));
  return sub_1BF46E7CC;
}

void sub_1BF46E7D0(char **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 13);
  v4 = *(*a1 + 14);
  v5 = *(*a1 + 11);
  v6 = *(*a1 + 12);
  v8 = *(*a1 + 9);
  v7 = *(*a1 + 10);
  if (a2)
  {
    sub_1BF3ABF74(*(*a1 + 12), v5);
    os_unfair_lock_lock(*(v3 + 16));
    sub_1BF3ABF74(v5, v7);
    swift_beginAccess();
    sub_1BF3AC398(v7, v8 + v4);
    swift_endAccess();
    os_unfair_lock_unlock(*(v3 + 16));
    sub_1BF38C9B4(v5, &qword_1EBDD9B00, &qword_1BF4F1E50);
  }

  else
  {
    os_unfair_lock_lock(*(v3 + 16));
    sub_1BF3ABF74(v6, v5);
    swift_beginAccess();
    sub_1BF3AC398(v5, v8 + v4);
    swift_endAccess();
    os_unfair_lock_unlock(*(v3 + 16));
  }

  sub_1BF38C9B4(v6, &qword_1EBDD9B00, &qword_1BF4F1E50);
  free(v6);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t sub_1BF46E90C()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + 40);
  if (v2)
  {
    swift_beginAccess();
    sub_1BF38E49C(v2 + 16, v4);
    __swift_project_boxed_opaque_existential_1(v4, v4[3]);
    v2 = sub_1BF4E83A4();
    __swift_destroy_boxed_opaque_existential_1Tm(v4);
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v2;
}

void sub_1BF46E9A4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  v5 = *(*a2 + 16);
  v6 = *(v5 + 16);

  os_unfair_lock_lock(v6);
  *(v4 + 24) = v3;
  *(v4 + 32) = v2;

  v7 = *(v5 + 16);

  os_unfair_lock_unlock(v7);
}

uint64_t sub_1BF46EA10()
{
  v1 = v0[2];
  os_unfair_lock_lock(*(v1 + 16));
  if (v0[5])
  {
    v2 = 0;
  }

  else
  {
    v2 = v0[3];
  }

  os_unfair_lock_unlock(*(v1 + 16));
  return v2;
}

void sub_1BF46EA70(uint64_t a1, uint64_t a2)
{
  v5 = v2[2];
  os_unfair_lock_lock(*(v5 + 16));
  v2[3] = a1;
  v2[4] = a2;

  v6 = *(v5 + 16);

  os_unfair_lock_unlock(v6);
}

void (*sub_1BF46EAC8(void *a1))(uint64_t *a1, char a2)
{
  v3 = v1[2];
  a1[2] = v1;
  a1[3] = v3;
  os_unfair_lock_lock(*(v3 + 16));
  if (v1[5])
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v4 = v1[3];
    v5 = v1[4];
  }

  os_unfair_lock_unlock(*(v3 + 16));
  *a1 = v4;
  a1[1] = v5;
  return sub_1BF46EB48;
}

void sub_1BF46EB48(uint64_t *a1, char a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(v4 + 16);
  if (a2)
  {

    os_unfair_lock_lock(v6);
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;

    os_unfair_lock_unlock(*(v4 + 16));
  }

  else
  {
    os_unfair_lock_lock(*(v4 + 16));
    *(v5 + 24) = v3;
    *(v5 + 32) = v2;

    v7 = *(v4 + 16);

    os_unfair_lock_unlock(v7);
  }
}

uint64_t sub_1BF46EBF8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  swift_beginAccess();
  v5 = sub_1BF4E8424();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BF46EC84(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BF4E8424();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  swift_beginAccess();
  (*(v5 + 40))(v9 + v10, v8, v4);
  return swift_endAccess();
}

uint64_t sub_1BF46ED9C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  swift_beginAccess();
  v4 = sub_1BF4E8424();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t ControlEntry.__allocating_init(key:environmentProvider:protectionType:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  ControlEntry.init(key:environmentProvider:protectionType:)(a1, a2, a3);
  return v6;
}

char *ControlEntry.init(key:environmentProvider:protectionType:)(uint64_t a1, __int128 *a2, uint64_t a3)
{
  v4 = v3;
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *v9 = 0;
  *(v8 + 16) = v9;
  *(v4 + 2) = v8;
  *(v4 + 3) = 0;
  *(v4 + 4) = 0;
  *(v4 + 5) = 0;
  v10 = OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_dateOfLastDeveloperError;
  v11 = sub_1BF4E7334();
  v12 = *(*(v11 - 8) + 56);
  v12(&v4[v10], 1, 1, v11);
  v13 = OBJC_IVAR____TtC9ChronoKit12ControlEntry__contentDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  *&v4[v13] = sub_1BF4E7C34();
  *&v4[OBJC_IVAR____TtC9ChronoKit12ControlEntry____lazy_storage___contentDidChangePublisher] = 0;
  v12(&v4[OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_contentLoadErrorDate], 1, 1, v11);
  v14 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  v15 = *MEMORY[0x1E6985998];
  v16 = sub_1BF4E8424();
  v17 = *(v16 - 8);
  (*(v17 + 104))(&v4[v14], v15, v16);
  swift_beginAccess();
  (*(v17 + 40))(&v4[v14], a3, v16);
  swift_endAccess();
  sub_1BF38E610(a2, &v4[OBJC_IVAR____TtC9ChronoKit12ControlEntry_environmentProvider]);
  sub_1BF470124(a1, &v4[OBJC_IVAR____TtC9ChronoKit12ControlEntry_key]);
  return v4;
}

uint64_t ControlEntry.deinit()
{

  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_dateOfLastDeveloperError, &qword_1EBDD9B00, &qword_1BF4F1E50);

  sub_1BF38C9B4(v0 + OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_contentLoadErrorDate, &qword_1EBDD9B00, &qword_1BF4F1E50);
  v1 = OBJC_IVAR____TtC9ChronoKit12ControlEntry_protectionType;
  v2 = sub_1BF4E8424();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_1BF39ABC8(v0 + OBJC_IVAR____TtC9ChronoKit12ControlEntry_key);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ChronoKit12ControlEntry_environmentProvider));
  return v0;
}

uint64_t ControlEntry.__deallocating_deinit()
{
  ControlEntry.deinit();

  return swift_deallocClassInstance();
}

void sub_1BF46F27C(void *a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 16);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = *(v3 + 40);
  v6 = *(v4 + 16);

  os_unfair_lock_unlock(v6);
  *a1 = v5;
}

double sub_1BF46F2D0(uint64_t *a1)
{
  sub_1BF46FFF4(*a1);

  return result;
}

uint64_t (*sub_1BF46F310(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1BF46E21C(v2);
  return sub_1BF413050;
}

void sub_1BF46F384(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(v3 + 16);
  os_unfair_lock_lock(*(v4 + 16));
  v5 = OBJC_IVAR____TtC9ChronoKit12ControlEntry__lock_contentLoadErrorDate;
  swift_beginAccess();
  sub_1BF3ABF74(v3 + v5, a1);
  os_unfair_lock_unlock(*(v4 + 16));
}

uint64_t (*sub_1BF46F418(uint64_t **a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1BF46E690(v2);
  return sub_1BF413050;
}

void sub_1BF46F4B0(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = v5[2];
  os_unfair_lock_lock(*(v6 + 16));
  v5[3] = a1;
  v5[4] = a2;

  v7 = *(v6 + 16);

  os_unfair_lock_unlock(v7);
}

uint64_t (*sub_1BF46F50C(void *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_1BF46EAC8(v2);
  return sub_1BF412658;
}

uint64_t sub_1BF46F580(uint64_t a1, uint64_t *a2)
{
  sub_1BF38E49C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  sub_1BF38E610(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_1BF46F62C(__int128 *a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  sub_1BF38E610(a1, v1 + 16);
  return swift_endAccess();
}

uint64_t sub_1BF46F764(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 64) = v2;
}

double sub_1BF46F7C4()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1BF46F7FC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 64) = a1;
}

uint64_t ControlEntryContent.__allocating_init(archive:hasDeveloperError:urlAttributes:)(__int128 *a1, char a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_1BF38E610(a1, v6 + 16);
  *(v6 + 56) = a2;
  *(v6 + 64) = a3;
  return v6;
}

uint64_t ControlEntryContent.init(archive:hasDeveloperError:urlAttributes:)(__int128 *a1, char a2, uint64_t a3)
{
  sub_1BF38E610(a1, v3 + 16);
  *(v3 + 56) = a2;
  *(v3 + 64) = a3;
  return v3;
}

uint64_t sub_1BF46F9F0(__int128 *a1)
{
  swift_beginAccess();
  sub_1BF38E49C(v1 + 16, v5);
  __swift_project_boxed_opaque_existential_1(v5, v5[3]);
  sub_1BF4E8884();
  __swift_destroy_boxed_opaque_existential_1Tm(v5);
  swift_beginAccess();
  sub_1BF4E9824();
  swift_beginAccess();
  v3 = *(v1 + 64);

  sub_1BF44A2D4(a1, v3);
}

uint64_t sub_1BF46FAD0()
{
  swift_beginAccess();
  sub_1BF38E49C(v0 + 16, v6);
  __swift_project_boxed_opaque_existential_1(v6, v6[3]);
  sub_1BF4E8374();
  swift_beginAccess();
  v1 = *(v0 + 56);
  swift_beginAccess();
  v2 = *(v0 + 64);
  type metadata accessor for ControlEntryContent();
  v3 = swift_allocObject();
  sub_1BF38E610(&v5, v3 + 16);
  *(v3 + 56) = v1;
  *(v3 + 64) = v2;

  __swift_destroy_boxed_opaque_existential_1Tm(v6);
  return v3;
}

uint64_t ControlEntryContent.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t ControlEntryContent.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BF46FC18(double a1)
{
  sub_1BF4E9804();
  swift_beginAccess();
  sub_1BF38E49C(v1 + 16, v4);
  __swift_project_boxed_opaque_existential_1(v4, v4[3]);
  sub_1BF4E8884();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  swift_beginAccess();
  sub_1BF4E9824();
  swift_beginAccess();
  v2 = *(v1 + 64);

  sub_1BF44A2D4(v5, v2);

  return sub_1BF4E9844();
}

uint64_t sub_1BF46FD44(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF46F9F0(v3);
  return sub_1BF4E9844();
}

void sub_1BF46FD90(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  if (v3 == sub_1BF4E9204())
  {
    v4 = 0;
    v5 = 1 << *(a2 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    while (v7)
    {
      v9 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
LABEL_12:
      v12 = *(*(a2 + 48) + 8 * (v9 | (v4 << 6)));
      v13 = sub_1BF4E9244();

      if ((v13 & 1) == 0)
      {
        return;
      }
    }

    v10 = v4;
    while (1)
    {
      v4 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v4 >= v8)
      {
        return;
      }

      v11 = *(a2 + 56 + 8 * v4);
      ++v10;
      if (v11)
      {
        v9 = __clz(__rbit64(v11));
        v7 = (v11 - 1) & v11;
        goto LABEL_12;
      }
    }

    __break(1u);
  }
}

uint64_t _s9ChronoKit19ControlEntryContentC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  sub_1BF38E49C(a1 + 16, v12);
  swift_beginAccess();
  sub_1BF38E49C(a2 + 16, v11);
  v4 = sub_1BF4E8684();
  sub_1BF38C9B4(v11, &qword_1EBDD9838, qword_1BF4F2F68);
  sub_1BF38C9B4(v12, &qword_1EBDD9838, qword_1BF4F2F68);
  if ((v4 & 1) != 0 && (swift_beginAccess(), v5 = *(a1 + 56), swift_beginAccess(), v5 == *(a2 + 56)))
  {
    swift_beginAccess();
    v7 = *(a1 + 64);
    swift_beginAccess();
    v8 = *(a2 + 64);

    sub_1BF46D960(v7, v8);
    v6 = v9;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void sub_1BF46FFF4(uint64_t a1)
{
  v4 = 0;
  v3 = *(v1 + 16);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF46E0B4(v1, a1, &v4);
  os_unfair_lock_unlock(*(v3 + 16));
  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF3A4BB0(&qword_1EDC9FD90, MEMORY[0x1E695BF80]);
    sub_1BF4E7C74();
  }
}

uint64_t sub_1BF4700C0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlEntryKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF470124(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ControlEntryKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ControlEntry(uint64_t a1)
{
  result = qword_1EDC9F948;
  if (!qword_1EDC9F948)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1BF470248(uint64_t a1)
{
  sub_1BF3C363C(319);
  if (v1 <= 0x3F)
  {
    sub_1BF4E8424();
    if (v2 <= 0x3F)
    {
      type metadata accessor for ControlEntryKey(319);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

unint64_t sub_1BF47089C()
{
  result = qword_1EDC9F9C0;
  if (!qword_1EDC9F9C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9F9C0);
  }

  return result;
}

uint64_t sub_1BF4708E8(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1BF47094C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x4B746E6169726176;
  }

  else
  {
    v3 = 0x7974697669746361;
  }

  if (v2)
  {
    v4 = 0xEB0000000079654BLL;
  }

  else
  {
    v4 = 0xEA00000000007965;
  }

  if (*a2)
  {
    v5 = 0x4B746E6169726176;
  }

  else
  {
    v5 = 0x7974697669746361;
  }

  if (*a2)
  {
    v6 = 0xEA00000000007965;
  }

  else
  {
    v6 = 0xEB0000000079654BLL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BF4E9734();
  }

  return v8 & 1;
}

uint64_t sub_1BF470A00(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF470A90(uint64_t a1)
{
  sub_1BF4E89F4();
}

uint64_t sub_1BF470B0C(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF470B98@<X0>(char *a2@<X8>)
{
  v3 = sub_1BF4E9514();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1BF470BF8(uint64_t *a1@<X8>)
{
  v2 = 0x7974697669746361;
  if (*v1)
  {
    v2 = 0x4B746E6169726176;
  }

  v3 = 0xEB0000000079654BLL;
  if (*v1)
  {
    v3 = 0xEA00000000007965;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1BF470C44()
{
  if (*v0)
  {
    return 0x4B746E6169726176;
  }

  else
  {
    return 0x7974697669746361;
  }
}

uint64_t sub_1BF470C8C@<X0>(char *a3@<X8>)
{
  v4 = sub_1BF4E9514();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1BF470CF0(uint64_t a1)
{
  v2 = sub_1BF471684(qword_1EDC9E718, sub_1BF471198, &unk_1BF4F3150);

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF470D5C(uint64_t a1)
{
  v2 = sub_1BF471684(qword_1EDC9E718, sub_1BF471198, &unk_1BF4F3150);

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t VariantIdentifier<>.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v22 = type metadata accessor for ActivityVariantKey(0);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for ActivityKey(0);
  MEMORY[0x1EEE9AC00](v24);
  v25 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9848, &qword_1BF4F2FA0);
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v7 = &v20 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF471198(0, v11, v12, v13);
  sub_1BF471684(qword_1EDC9E718, sub_1BF471198, &unk_1BF4F3150);
  v14 = v27;
  sub_1BF4E9854();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v27 = v8;
  v15 = v10;
  v16 = v23;
  v29 = 0;
  sub_1BF471684(&qword_1EDC9B650, type metadata accessor for ActivityKey, &protocol conformance descriptor for ActivityKey);
  v17 = v25;
  v18 = v26;
  sub_1BF4E95B4();
  sub_1BF44C740(v17, v15, type metadata accessor for ActivityKey);
  v28 = 1;
  sub_1BF471684(&qword_1EDC9A458, type metadata accessor for ActivityVariantKey, &protocol conformance descriptor for ActivityVariantKey);
  sub_1BF4E95B4();
  (*(v16 + 8))(v7, v18);
  sub_1BF44C740(v4, v15 + *(v27 + 68), type metadata accessor for ActivityVariantKey);
  sub_1BF471254(v15, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1BF4712C4(v15);
}

void sub_1BF471198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!qword_1EDC9E700)
  {
    v4 = _s10CodingKeysOMa(0, a2, a3, a4);
    if (!v5)
    {
      atomic_store(v4, &qword_1EDC9E700);
    }
  }
}

uint64_t sub_1BF4711F8(uint64_t a1)
{
  v2 = type metadata accessor for ActivityKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF471254(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF4712C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t VariantIdentifier<>.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9850, &qword_1BF4F2FA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF471198(0, v7, v8, v9);
  sub_1BF471684(qword_1EDC9E718, sub_1BF471198, &unk_1BF4F3150);
  sub_1BF4E9864();
  v13 = 0;
  type metadata accessor for ActivityKey(0);
  sub_1BF471684(qword_1EDC9B658, type metadata accessor for ActivityKey, &protocol conformance descriptor for ActivityKey);
  sub_1BF4E9674();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
    v12 = 1;
    type metadata accessor for ActivityVariantKey(0);
    sub_1BF471684(qword_1EDC9A460, type metadata accessor for ActivityVariantKey, &protocol conformance descriptor for ActivityVariantKey);
    sub_1BF4E9674();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_1BF471684(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double EnvironmentModifiersAssertion.environmentModifiers.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  v5 = OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers;
  swift_beginAccess();
  sub_1BF44B0AC(v1 + v5, a1);
  os_unfair_lock_unlock(*(v3 + 16));

  return result;
}

double sub_1BF47174C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(*a1 + 16);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  v6 = OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers;
  swift_beginAccess();
  sub_1BF44B0AC(v3 + v6, a2);
  os_unfair_lock_unlock(*(v4 + 16));

  return result;
}

void sub_1BF4717D0(uint64_t a1)
{
  v2 = type metadata accessor for EnvironmentModifiers(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF44B0AC(a1, v4);
  EnvironmentModifiersAssertion.environmentModifiers.setter(v4);
}

void EnvironmentModifiersAssertion.environmentModifiers.setter(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  if (*(v1 + 40))
  {
    __break(1u);
  }

  else
  {
    v5 = OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers;
    swift_beginAccess();
    sub_1BF4718F8(a1, v1 + v5);
    swift_endAccess();
    os_unfair_lock_unlock(*(v3 + 16));

    sub_1BF44B050(a1);
  }
}

uint64_t sub_1BF4718F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EnvironmentModifiers(0);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

void (*EnvironmentModifiersAssertion.environmentModifiers.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 24) = v1;
  v6 = *(*(type metadata accessor for EnvironmentModifiers(0) - 8) + 64);
  if (v3)
  {
    *(v5 + 32) = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    *(v5 + 32) = malloc(v6);
    v7 = malloc(v6);
  }

  v8 = v7;
  *(v5 + 40) = v7;
  v9 = *(v1 + 16);
  v10 = *(v9 + 16);

  os_unfair_lock_lock(v10);
  v11 = OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers;
  swift_beginAccess();
  sub_1BF44B0AC(v1 + v11, v8);
  os_unfair_lock_unlock(*(v9 + 16));

  return sub_1BF471A7C;
}

void sub_1BF471A7C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  if (a2)
  {
    sub_1BF44B0AC(v4, v3);
    EnvironmentModifiersAssertion.environmentModifiers.setter(v3);
    sub_1BF44B050(v4);
  }

  else
  {
    EnvironmentModifiersAssertion.environmentModifiers.setter(v4);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t EnvironmentModifiersAssertion.deinit()
{
  if (*(v0 + 40) == 1)
  {

    sub_1BF3B0E64(*(v0 + 24), *(v0 + 32));
    sub_1BF44B050(v0 + OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers);
    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void EnvironmentModifiersAssertion.__deallocating_deinit()
{
  if (*(v0 + 40) == 1)
  {

    sub_1BF3B0E64(*(v0 + 24), *(v0 + 32));
    sub_1BF44B050(v0 + OBJC_IVAR____TtC9ChronoKit29EnvironmentModifiersAssertion__lock_environmentModifiers);

    swift_deallocClassInstance();
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall EnvironmentModifiersAssertion.invalidate()()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  *(v0 + 40) = 1;
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  os_unfair_lock_unlock(*(v1 + 16));

  if (v3)
  {
    v3(v5);

    sub_1BF3B0E64(v3, v4);
  }
}

uint64_t sub_1BF471C7C()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

uint64_t EnvironmentModificationContext.__allocating_init()()
{
  v0 = swift_allocObject();
  EnvironmentModificationContext.init()();
  return v0;
}

uint64_t *EnvironmentModificationContext.init()()
{
  type metadata accessor for UnfairLock();
  v1 = swift_allocObject();
  v2 = swift_slowAlloc();
  *v2 = 0;
  *(v1 + 16) = v2;
  v0[2] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9860, &qword_1BF4F31A0);
  v0[3] = sub_1BF4E8724();
  type metadata accessor for EnvironmentModifiers(0);
  v0[4] = sub_1BF4E8724();
  return v0;
}

double sub_1BF471DC4(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v3 + 16);

  os_unfair_lock_lock(v4);
  *(v1 + 32) = a1;

  os_unfair_lock_unlock(*(v3 + 16));

  return result;
}

double sub_1BF471E38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    swift_beginAccess();
    v7 = swift_weakLoadStrong();
    if (v7)
    {
      v8 = v7;
      v9 = v6[2];
      v10 = *(v9 + 16);

      os_unfair_lock_lock(v10);
      sub_1BF471F24(v6, a3, v8);
      os_unfair_lock_unlock(*(v9 + 16));
    }
  }

  return result;
}

uint64_t sub_1BF471F24(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v7 = *(*a1 + 80);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = v17 - v9;
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9860, &qword_1BF4F31A0);
  v17[1] = *(v6 + 88);
  sub_1BF4E8854();

  if (!v20)
  {
    v18 = v3;
    v12 = 0;
    goto LABEL_9;
  }

  sub_1BF47253C(&v20, a3);
  v12 = v11;
  v18 = v3;

  if (!(v20 >> 62))
  {
    v13 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v13 >= v12)
    {
      goto LABEL_4;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    v16 = sub_1BF4E9204();
    v14 = a2;
    if (!v16)
    {
      goto LABEL_7;
    }

LABEL_10:
    (*(v8 + 16))(v10, v14, v7);
    v19 = v12;
    swift_beginAccess();
    sub_1BF4E8834();

    goto LABEL_11;
  }

  v13 = sub_1BF4E9204();
  if (v13 < v12)
  {
    goto LABEL_13;
  }

LABEL_4:
  sub_1BF472924(v12, v13);
  v12 = v20;
  if (!v20)
  {
LABEL_9:
    v14 = a2;
    goto LABEL_10;
  }

  if (v20 >> 62)
  {
    goto LABEL_14;
  }

  v14 = a2;
  if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_7:
  (*(v8 + 16))(v10, v14, v7);
  v19 = 0;
  swift_beginAccess();
  sub_1BF4E8834();
LABEL_11:
  sub_1BF4E8864();
  swift_endAccess();
}

uint64_t EnvironmentModificationContext.deinit()
{

  return v0;
}

uint64_t EnvironmentModificationContext.__deallocating_deinit()
{
  EnvironmentModificationContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1BF472264(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1BF4E9204();
LABEL_9:
  result = sub_1BF4E9324();
  *v2 = result;
  return result;
}

uint64_t sub_1BF472304(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1BF4E9204();
  }

  return sub_1BF4E9324();
}

uint64_t sub_1BF472370(uint64_t a1)
{
  result = type metadata accessor for EnvironmentModifiers(319);
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

void sub_1BF47253C(unint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = (*a1 & 0xFFFFFFFFFFFFFF8);
  v5 = *a1 >> 62;
  if (v5)
  {
LABEL_61:
    v6 = sub_1BF4E9204();
  }

  else
  {
    v6 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      if (v5)
      {
        goto LABEL_50;
      }

      return;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB59570](v7, v3);
    }

    else
    {
      if (v7 >= v4[2])
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
LABEL_57:
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }
    }

    Strong = swift_weakLoadStrong();

    if (Strong)
    {

      if (Strong == a2)
      {
        break;
      }
    }

    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_52;
    }
  }

  v10 = v7 + 1;
  if (__OFADD__(v7, 1))
  {
    __break(1u);
    return;
  }

  v4 = a1;
  while (1)
  {
    if (v3 >> 62)
    {
      if (v10 == sub_1BF4E9204())
      {
        return;
      }
    }

    else if (v10 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return;
    }

    v5 = v3 & 0xC000000000000001;
    if ((v3 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB59570](v10, v3);
    }

    else
    {
      if ((v10 & 0x8000000000000000) != 0)
      {
        goto LABEL_53;
      }

      if (v10 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_54;
      }
    }

    v11 = swift_weakLoadStrong();

    if (!v11)
    {
      break;
    }

    if (v11 != a2)
    {
      break;
    }

LABEL_19:
    v8 = __OFADD__(v10++, 1);
    if (v8)
    {
      goto LABEL_55;
    }
  }

  if (v7 == v10)
  {
LABEL_18:
    v8 = __OFADD__(v7++, 1);
    if (v8)
    {
      goto LABEL_56;
    }

    goto LABEL_19;
  }

  if (v5)
  {
    v12 = MEMORY[0x1BFB59570](v7, v3);
    v13 = MEMORY[0x1BFB59570](v10, v3);
  }

  else
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      goto LABEL_58;
    }

    v14 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7 >= v14)
    {
      goto LABEL_59;
    }

    if (v10 >= v14)
    {
      goto LABEL_60;
    }

    v12 = *(v3 + 32 + 8 * v7);
    v13 = *(v3 + 32 + 8 * v10);
  }

  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    v3 = sub_1BF472304(v3);
    v15 = (v3 >> 62) & 1;
  }

  else
  {
    LODWORD(v15) = 0;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v7 + 0x20) = v13;

  if ((v3 & 0x8000000000000000) == 0 && !v15)
  {
    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_49;
    }

    goto LABEL_43;
  }

  v3 = sub_1BF472304(v3);
  v5 = v3 & 0xFFFFFFFFFFFFFF8;
  if ((v10 & 0x8000000000000000) == 0)
  {
LABEL_43:
    if (v10 >= *(v5 + 16))
    {
      goto LABEL_57;
    }

    *(v5 + 8 * v10 + 32) = v12;

    *a1 = v3;
    goto LABEL_18;
  }

LABEL_49:
  __break(1u);
LABEL_50:
  sub_1BF4E9204();
}

uint64_t sub_1BF472824(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for _WeakEnvironmentModifiersAssertion();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_1BF4E9204();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1BF4E9204();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BF472924(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_1BF4E9204();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_1BF4E9204();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_1BF472264(result, 1);

  return sub_1BF472824(v5, v3, 0);
}

uint64_t sub_1BF4729FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9578, &qword_1BF4F1920);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF472A64(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9578, &qword_1BF4F1920);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF472AE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  swift_beginAccess();
  v5 = sub_1BF4E7F64();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1BF472B74(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1BF4E7F64();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = *a2;
  v10 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  swift_beginAccess();
  (*(v5 + 24))(v9 + v10, v8, v4);
  swift_endAccess();
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&qword_1EDC9FD90, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_1BF472D1C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  swift_beginAccess();
  v4 = sub_1BF4E7F64();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t sub_1BF472DA4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  swift_beginAccess();
  v4 = sub_1BF4E7F64();
  v5 = *(v4 - 8);
  (*(v5 + 24))(v1 + v3, a1, v4);
  swift_endAccess();
  swift_beginAccess();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF3A4BB0(&qword_1EDC9FD90, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return (*(v5 + 8))(a1, v4);
}

double (*sub_1BF472EE0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1BF472F44;
}

double sub_1BF472F44(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
    sub_1BF3A4BB0(&qword_1EDC9FD90, MEMORY[0x1E695BF80]);
    sub_1BF4E7C74();
  }

  return result;
}

double sub_1BF473084(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return result;
}

double sub_1BF473144(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;

  return result;
}

uint64_t EnvironmentProviderMock.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1BF4E7F54();
  v1 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  *(v0 + v1) = sub_1BF4E7C34();
  sub_1BF3A4BB0(&unk_1EDC9FD80, MEMORY[0x1E695BF88]);
  *(v0 + OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentDidChange) = sub_1BF4E7C84();
  return v0;
}

uint64_t EnvironmentProviderMock.init()()
{
  sub_1BF4E7F54();
  v1 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  *(v0 + v1) = sub_1BF4E7C34();
  sub_1BF3A4BB0(&unk_1EDC9FD80, MEMORY[0x1E695BF88]);
  *(v0 + OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentDidChange) = sub_1BF4E7C84();
  return v0;
}

uint64_t EnvironmentProviderMock.deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  v2 = sub_1BF4E7F64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t EnvironmentProviderMock.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  v2 = sub_1BF4E7F64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4734BC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentValues;
  swift_beginAccess();
  v5 = sub_1BF4E7F64();
  return (*(*(v5 - 8) + 16))(a1, v3 + v4, v5);
}

uint64_t sub_1BF473594(uint64_t a1, uint64_t *a2)
{
  sub_1BF38E49C(a1, v5);
  v3 = *a2;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + 16));
  sub_1BF38E60C(v5, v3 + 16);
  return swift_endAccess();
}

uint64_t sub_1BF4735F8(uint64_t a1)
{
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 16));
  sub_1BF38E60C(a1, v1 + 16);
  return swift_endAccess();
}

void *EnvironmentProvidingFactoryMock.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = type metadata accessor for EnvironmentProviderMock(0);
  v2 = swift_allocObject();
  sub_1BF4E7F54();
  v3 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  *(v2 + v3) = sub_1BF4E7C34();
  sub_1BF3A4BB0(&unk_1EDC9FD80, MEMORY[0x1E695BF88]);
  *(v2 + OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentDidChange) = sub_1BF4E7C84();
  v0[5] = v1;
  v0[6] = &protocol witness table for EnvironmentProviderMock;
  v0[2] = v2;
  return v0;
}

void *EnvironmentProvidingFactoryMock.init()()
{
  v1 = type metadata accessor for EnvironmentProviderMock(0);
  v2 = swift_allocObject();
  sub_1BF4E7F54();
  v3 = OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock__environmentDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  *(v2 + v3) = sub_1BF4E7C34();
  sub_1BF3A4BB0(&unk_1EDC9FD80, MEMORY[0x1E695BF88]);
  *(v2 + OBJC_IVAR____TtC9ChronoKit23EnvironmentProviderMock_environmentDidChange) = sub_1BF4E7C84();
  v0[5] = v1;
  v0[6] = &protocol witness table for EnvironmentProviderMock;
  v0[2] = v2;
  return v0;
}

uint64_t type metadata accessor for EnvironmentProviderMock(uint64_t a1)
{
  result = qword_1EBDD9868;
  if (!qword_1EBDD9868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t EnvironmentProvidingFactoryMock.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1BF4738E4@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  swift_beginAccess();
  return sub_1BF38E49C(v3 + 16, a1);
}

uint64_t sub_1BF473938(uint64_t a1)
{
  result = sub_1BF4E7F64();
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

double sub_1BF473C48(uint64_t a1, uint64_t a2, uint64_t a3, char *a4, unsigned __int8 *a5, uint64_t a6, unsigned __int8 *a7, double a8)
{
  v14 = *a4;
  v15 = v8[8];
  v16 = *(v15 + 16);
  v17 = *a7;
  v18 = *a5;

  os_unfair_lock_lock(v16);
  sub_1BF473D2C(a1, a2, a3, v14, v18, a6, v17, v8, a8);
  os_unfair_lock_unlock(*(v15 + 16));

  return result;
}

uint64_t sub_1BF473D2C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, int a7, void *a8, double a9)
{
  v35 = a7;
  v34 = a6;
  v33 = a5;
  v31 = a2;
  v32 = a3;
  v12 = *a8;
  v13 = *a8;
  v36 = a8;
  v14 = *(v12 + 88);
  v37 = *(v14 - 8);
  v27 = *(v37 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v39 = &v26 - v15;
  v40 = 0;
  v41 = 0xE000000000000000;
  sub_1BF4E7204();
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](45, 0xE100000000000000);
  v16 = [objc_allocWithZone(MEMORY[0x1E696AFB0]) init];
  v17 = [v16 UUIDString];

  v18 = sub_1BF4E8914();
  v20 = v19;

  MEMORY[0x1BFB58C90](v18, v20);

  v30 = v40;
  v38 = v41;
  if (!sub_1BF4E8C34())
  {
  }

  type metadata accessor for PowerlogUpdateEntry(0, v14, *(v13 + 104), v21);
  v22 = 0;
  v29 = (v37 + 16);
  v28 = a4 & 1;
  while (1)
  {
    v23 = sub_1BF4E8C14();
    sub_1BF4E8BD4();
    if (v23)
    {
      (*(v37 + 16))(v39, a1 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v22, v14);
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        goto LABEL_10;
      }

      goto LABEL_5;
    }

    result = sub_1BF4E9304();
    if (v27 != 8)
    {
      break;
    }

    v40 = result;
    (*v29)(v39, &v40, v14);
    swift_unknownObjectRelease();
    v24 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
LABEL_10:
      __break(1u);
    }

LABEL_5:
    LOBYTE(v40) = v28;
    LOBYTE(v42) = v33;
    v43 = v35;
    v42 = sub_1BF43C8F8(v30, v38, v39, v31, v32, &v40, &v42, v34, a9, &v43);
    swift_beginAccess();
    sub_1BF4E8CA4();

    sub_1BF4E8C44();
    swift_endAccess();

    ++v22;
    if (v24 == sub_1BF4E8C34())
    {
    }
  }

  __break(1u);
  return result;
}

double sub_1BF4740D0()
{
  v1 = v0[8];
  v2 = *(v1 + 16);

  os_unfair_lock_lock(v2);
  sub_1BF474154(v0);
  os_unfair_lock_unlock(*(v1 + 16));

  return result;
}

uint64_t sub_1BF474154(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = a1[7];
  swift_beginAccess();
  type metadata accessor for PowerlogUpdateEntry(255, *(v2 + 88), *(v2 + 104), v4);
  sub_1BF4E8CA4();

  sub_1BF4E8C94();
  swift_endAccess();
  sub_1BF38E49C((a1 + 2), v8);
  v5 = v9;
  v6 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v6 + 56))(v3, v5, v6);

  return __swift_destroy_boxed_opaque_existential_1Tm(v8);
}

void sub_1BF474270(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v7 = v4;
  BSDispatchQueueAssertMain();
  [*(v4 + 72) invalidate];
  v8 = objc_allocWithZone(MEMORY[0x1E698E660]);
  v9 = sub_1BF4E88E4();
  v10 = [v8 initWithIdentifier_];

  v11 = *(v7 + 72);
  *(v7 + 72) = v10;
  v12 = v10;

  if (v12)
  {
    sub_1BF3DC720();
    v13 = sub_1BF4E8F34();
    v14 = swift_allocObject();
    swift_weakInit();
    v16[4] = a2;
    v16[5] = v14;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1BF3CAF50;
    v16[3] = a3;
    v15 = _Block_copy(v16);

    [v12 scheduleRepeatingWithFireInterval:v13 repeatInterval:v15 leewayInterval:900.0 queue:900.0 handler:300.0];
    _Block_release(v15);
  }
}

double sub_1BF474400(uint64_t a1, uint64_t a2)
{
  if (qword_1EDC9EFF0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BF4E7B54();
  __swift_project_value_buffer(v2, qword_1EDCA6A90);
  v3 = sub_1BF4E7B34();
  v4 = sub_1BF4E8E84();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BF389000, v3, v4, "Performing scheduled flush of powerlog update entries", v5, 2u);
    MEMORY[0x1BFB5A5D0](v5, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v8 = *(Strong + 64);
    v9 = *(v8 + 16);
    v10 = Strong;

    os_unfair_lock_lock(v9);
    swift_beginAccess();
    v11 = *(v10 + 56);
    *(v10 + 56) = MEMORY[0x1E69E7CC0];
    sub_1BF38E49C(v10 + 16, v14);
    v12 = v15;
    v13 = v16;
    __swift_project_boxed_opaque_existential_1(v14, v15);
    (*(v13 + 56))(v11, v12, v13);

    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    os_unfair_lock_unlock(*(v8 + 16));
  }

  return result;
}

uint64_t BasePowerlogUpdateService.__deallocating_deinit()
{
  BasePowerlogUpdateService.deinit();

  return swift_deallocClassInstance();
}

void *PowerlogWidgetUpdateService.init(owner:)(char *a1)
{
  v11 = sub_1BF4E8F24();
  v2 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1BF4E8064();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  type metadata accessor for WidgetPowerlogProvider();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_1BF3DC720();
  sub_1BF4E8044();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1BF3A10B4(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v11);
  *(v8 + 24) = sub_1BF4E8F64();
  return sub_1BF474C08(v8, v12);
}

void *PowerlogControlsUpdateService.init(owner:)(char *a1)
{
  v11 = sub_1BF4E8F24();
  v2 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1BF4E8ED4();
  MEMORY[0x1EEE9AC00](v5);
  v6 = sub_1BF4E8064();
  MEMORY[0x1EEE9AC00](v6 - 8);
  v7 = *a1;
  type metadata accessor for ControlsPowerlogProvider();
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  sub_1BF3DC720();
  sub_1BF4E8044();
  v13 = MEMORY[0x1E69E7CC0];
  sub_1BF3A10B4(&qword_1EDC9F148, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD85C0, &qword_1BF4EC090);
  sub_1BF3A2804();
  sub_1BF4E91A4();
  (*(v2 + 104))(v4, *MEMORY[0x1E69E8098], v11);
  *(v8 + 24) = sub_1BF4E8F64();
  return sub_1BF474CF8(v8, v12);
}

uint64_t _s9ChronoKit25BasePowerlogUpdateServiceCfd_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return v0;
}

uint64_t _s9ChronoKit27PowerlogWidgetUpdateServiceCfD_0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void *sub_1BF474C08(uint64_t a1, void *a2)
{
  v8[3] = type metadata accessor for WidgetPowerlogProvider();
  v8[4] = sub_1BF3A10B4(qword_1EDC9E008, type metadata accessor for WidgetPowerlogProvider, &unk_1BF4F3D18);
  v8[0] = a1;
  a2[7] = MEMORY[0x1E69E7CC0];
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  a2[8] = v4;
  a2[9] = 0;
  sub_1BF38E49C(v8, (a2 + 2));
  sub_1BF474270(&unk_1F3DF1F38, sub_1BF474FA8, &block_descriptor_40, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return a2;
}

void *sub_1BF474CF8(uint64_t a1, void *a2)
{
  v8[3] = type metadata accessor for ControlsPowerlogProvider();
  v8[4] = sub_1BF3A10B4(qword_1EDC99168, type metadata accessor for ControlsPowerlogProvider, &unk_1BF4F0B7C);
  v8[0] = a1;
  a2[7] = MEMORY[0x1E69E7CC0];
  type metadata accessor for UnfairLock();
  v4 = swift_allocObject();
  v5 = swift_slowAlloc();
  *v5 = 0;
  *(v4 + 16) = v5;
  a2[8] = v4;
  a2[9] = 0;
  sub_1BF38E49C(v8, (a2 + 2));
  sub_1BF474270(&unk_1F3DF1EE8, sub_1BF474FD8, &block_descriptor_10, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(v8);
  return a2;
}

uint64_t ControlEntryKey.host.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for ControlEntryKey(0) + 20);

  return sub_1BF3988F8(v3, a1);
}

uint64_t ControlEntryKey.init(control:host:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for ControlEntryKey(0) + 20);

  return sub_1BF3C0870(a2, v4);
}

id ControlEntryKey.extensionIdentity.getter()
{
  v1 = [*v0 extensionIdentity];

  return v1;
}

uint64_t ControlEntryKey.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1BF4E90B4();
  v9 = type metadata accessor for ControlEntryKey(0);
  sub_1BF3988F8(v1 + *(v9 + 20), v8);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_1BF4E9824();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_1BF4E9824();
  sub_1BF38C8FC(&unk_1EDC9F018, MEMORY[0x1E6994140]);
  sub_1BF4E8884();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ControlEntryKey.hashValue.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v10 - v6;
  sub_1BF4E9804();
  sub_1BF4E90B4();
  v8 = type metadata accessor for ControlEntryKey(0);
  sub_1BF3988F8(v0 + *(v8 + 20), v7);
  if ((*(v2 + 48))(v7, 1, v1) == 1)
  {
    sub_1BF4E9824();
  }

  else
  {
    (*(v2 + 32))(v4, v7, v1);
    sub_1BF4E9824();
    sub_1BF38C8FC(&unk_1EDC9F018, MEMORY[0x1E6994140]);
    sub_1BF4E8884();
    (*(v2 + 8))(v4, v1);
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF475480(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v11 - v8;
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF3988F8(v1 + *(a1 + 20), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_1BF4E9824();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_1BF4E9824();
    sub_1BF38C8FC(&unk_1EDC9F018, MEMORY[0x1E6994140]);
    sub_1BF4E8884();
    (*(v4 + 8))(v6, v3);
  }

  return sub_1BF4E9844();
}

uint64_t sub_1BF475670(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  sub_1BF4E90B4();
  sub_1BF3988F8(v2 + *(a2 + 20), v10);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    return sub_1BF4E9824();
  }

  (*(v5 + 32))(v7, v10, v4);
  sub_1BF4E9824();
  sub_1BF38C8FC(&unk_1EDC9F018, MEMORY[0x1E6994140]);
  sub_1BF4E8884();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1BF475850(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 1953722216;
  }

  else
  {
    v3 = 0x6C6F72746E6F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE400000000000000;
  }

  if (*a2)
  {
    v5 = 1953722216;
  }

  else
  {
    v5 = 0x6C6F72746E6F63;
  }

  if (*a2)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1BF4E9734();
  }

  return v8 & 1;
}

uint64_t sub_1BF4758F0(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF47596C(uint64_t a1)
{
  sub_1BF4E89F4();
}

uint64_t sub_1BF4759D4(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF475A4C@<X0>(char *a2@<X8>)
{
  v3 = sub_1BF4E9514();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1BF475AAC(uint64_t *a1@<X8>)
{
  v2 = 1953722216;
  if (!*v1)
  {
    v2 = 0x6C6F72746E6F63;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1BF475AE4()
{
  if (*v0)
  {
    return 1953722216;
  }

  else
  {
    return 0x6C6F72746E6F63;
  }
}

uint64_t sub_1BF475B18@<X0>(char *a3@<X8>)
{
  v4 = sub_1BF4E9514();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_1BF475B7C(uint64_t a1)
{
  v2 = sub_1BF4763B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1BF475BB8(uint64_t a1)
{
  v2 = sub_1BF4763B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void ControlEntryKey.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9878, &qword_1BF4F3510);
  v25 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - v7;
  v9 = type metadata accessor for ControlEntryKey(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF4763B0();
  v12 = v26;
  sub_1BF4E9854();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v13 = v25;
    v29 = 0;
    sub_1BF3BCF88();
    sub_1BF4E95B4();
    v26 = v8;
    v23 = v6;
    v15 = v27;
    v14 = v28;
    sub_1BF3901C0(0, &qword_1EDC96370, 0x1E696ACD0);
    sub_1BF3901C0(0, &qword_1EDC9F138, 0x1E6994260);
    v16 = sub_1BF4E8EB4();
    v21 = v14;
    v22 = v15;
    if (v16)
    {
      v17 = v11;
      *v11 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
      LOBYTE(v27) = 1;
      sub_1BF38C8FC(&qword_1EDC9D548, MEMORY[0x1E6994158]);
      v18 = v23;
      v19 = v26;
      sub_1BF4E9554();
      (*(v13 + 8))(v19, v18);
      sub_1BF3B03C0(v22, v21);
      v20 = v24;
      sub_1BF3C0870(v5, v17 + *(v9 + 20));
      sub_1BF4700C0(v17, v20);
      __swift_destroy_boxed_opaque_existential_1Tm(a1);
      sub_1BF39ABC8(v17);
    }

    else
    {
      __break(1u);
    }
  }
}

void ControlEntryKey.encode(to:)(void *a1)
{
  v2 = v1;
  v31[2] = *MEMORY[0x1E69E9840];
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8E78, &unk_1BF4EE790);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - v5;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v27 = &v26 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9888, &qword_1BF4F3518);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1BF4763B0();
  sub_1BF4E9864();
  v12 = objc_opt_self();
  v13 = *v2;
  v31[0] = 0;
  v14 = [v12 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v31];
  v15 = v31[0];
  if (v14)
  {
    v16 = sub_1BF4E71C4();
    v18 = v17;

    v31[0] = v16;
    v31[1] = v18;
    v30 = 0;
    sub_1BF3B01D8();
    v19 = v29;
    sub_1BF4E9674();
    if (v19)
    {
      (*(v9 + 8))(v11, v8);
      sub_1BF3B03C0(v16, v18);
      return;
    }

    v21 = type metadata accessor for ControlEntryKey(0);
    sub_1BF3988F8(v2 + *(v21 + 20), v6);
    v22 = v26;
    v23 = v28;
    if ((*(v26 + 48))(v6, 1) == 1)
    {
      (*(v9 + 8))(v11, v8);
      sub_1BF3B03C0(v16, v18);
      sub_1BF38C9B4(v6, &qword_1EBDD8E78, &unk_1BF4EE790);
      return;
    }

    (*(v22 + 32))(v27, v6, v23);
    LOBYTE(v31[0]) = 1;
    sub_1BF38C8FC(&unk_1EDC9D558, MEMORY[0x1E6994138]);
    v24 = v27;
    sub_1BF4E9674();
    v25 = sub_1BF3B03C0(v16, v18);
    (*(v22 + 8))(v24, v28, v25);
  }

  else
  {
    v20 = v15;
    sub_1BF4E6FF4();

    swift_willThrow();
  }

  (*(v9 + 8))(v11, v8);
}

unint64_t sub_1BF4763B0()
{
  result = qword_1EBDD9880;
  if (!qword_1EBDD9880)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9880);
  }

  return result;
}

uint64_t sub_1BF476404(uint64_t a1)
{
  result = sub_1BF47647C(&qword_1EDC9F7D0, &protocol conformance descriptor for ControlEntryKey);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1BF47647C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for ControlEntryKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1BF4764C0(uint64_t a1)
{
  sub_1BF3901C0(319, &qword_1EDC9F138, 0x1E6994260);
  if (v1 <= 0x3F)
  {
    sub_1BF3A1C10(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1BF476568()
{
  result = qword_1EBDD9890;
  if (!qword_1EBDD9890)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9890);
  }

  return result;
}

unint64_t sub_1BF4765C0()
{
  result = qword_1EBDD9898;
  if (!qword_1EBDD9898)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9898);
  }

  return result;
}

unint64_t sub_1BF476618()
{
  result = qword_1EBDD98A0;
  if (!qword_1EBDD98A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98A0);
  }

  return result;
}

uint64_t sub_1BF47666C()
{
  v0 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v0);

  MEMORY[0x1BFB58C90](46, 0xE100000000000000);
  v1 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v1);

  return 118;
}

BOOL sub_1BF476724(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return a1[1] < a2[1];
  }

  else
  {
    return v5;
  }
}

void sub_1BF476754(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87C8, &qword_1BF4EB2E0);
    v2 = sub_1BF4E94C4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v10 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v10);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v10 << 6);
        v13 = (*(a1 + 48) + 16 * v12);
        v14 = *v13;
        v15 = v13[1];
        sub_1BF38E49C(*(a1 + 56) + 40 * v12, v31);
        *&v30 = v14;
        *(&v30 + 1) = v15;
        v27[2] = v30;
        v28[0] = v31[0];
        v28[1] = v31[1];
        v29 = v32;
        v16 = v30;
        sub_1BF38E610(v28, v23);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8780, &unk_1BF4F5480);
        swift_dynamicCast();
        sub_1BF38EB2C(&v24, v26);
        sub_1BF38EB2C(v26, v27);
        sub_1BF38EB2C(v27, &v25);
        v18 = sub_1BF3CD5D0(v16, *(&v16 + 1), v17);
        if (v19)
        {
          *(v2[6] + 16 * v18) = v16;
          v8 = v18;

          v9 = (v2[7] + 32 * v8);
          __swift_destroy_boxed_opaque_existential_1Tm(v9);
          sub_1BF38EB2C(&v25, v9);
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v18;
          *(v2[6] + 16 * v18) = v16;
          sub_1BF38EB2C(&v25, (v2[7] + 32 * v18));
          v20 = v2[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_21;
          }

          v2[2] = v22;
          v7 = v10;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v10 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

void sub_1BF4769F4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD98B0, &qword_1BF4F37F8);
    v2 = sub_1BF4E94C4();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1BF38D324(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1BF38EB2C(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1BF38EB2C(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1BF38EB2C(v31, v32);
    v16 = sub_1BF4E9254();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_1BF38EB2C(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

double static BugCapture.reportBug(type:subType:name:value:priority:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void (*a10)(void), uint64_t a11)
{
  v32 = a1;
  v33 = a3;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD98A8, &qword_1BF4F37A0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v28 - v19;
  if (sub_1BF3F34B4())
  {
    if (a10)
    {
      a10();
    }
  }

  else
  {
    v31 = a5;
    v22 = sub_1BF4E8D04();
    v29 = v11;
    v30 = a7;
    v23 = v22;
    v24 = *(v22 - 8);
    (*(v24 + 16))(v20, a9, v22);
    (*(v24 + 56))(v20, 0, 1, v23);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v26 = v33;
    v25[4] = v32;
    v25[5] = a2;
    v25[6] = v26;
    v25[7] = a4;
    v27 = v30;
    v25[8] = v31;
    v25[9] = a6;
    v25[10] = v27;
    v25[11] = a8;
    v25[12] = a10;
    v25[13] = a11;
    v25[14] = v29;

    sub_1BF391990(a10, a11);
    sub_1BF476F6C(0, 0, v20, &unk_1BF4F37B0, v25);
  }

  return result;
}

uint64_t sub_1BF476EB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 88) = v12;
  *(v8 + 72) = v11;
  *(v8 + 56) = v10;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1BF476EF8, 0, 0);
}

uint64_t sub_1BF476EF8()
{
  sub_1BF477EA0(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BF476F6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD98A8, &qword_1BF4F37A0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BF477C58(a3, v25 - v10);
  v12 = sub_1BF4E8D04();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BF477CC8(v11);
  }

  else
  {
    sub_1BF4E8CF4();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BF4E8CD4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BF4E89B4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      sub_1BF477CC8(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1BF477CC8(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void sub_1BF47722C(uint64_t a1, void (*a2)(void))
{
  if (!a1)
  {
    if (qword_1EDC9D518 != -1)
    {
      swift_once();
    }

    v17 = sub_1BF4E7B54();
    __swift_project_value_buffer(v17, qword_1EDCA69D0);
    v13 = sub_1BF4E7B34();
    v14 = sub_1BF4E8E64();
    if (!os_log_type_enabled(v13, v14))
    {
      goto LABEL_20;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Failed to receive response";
    goto LABEL_19;
  }

  v28 = sub_1BF4E8914();
  sub_1BF4E9274();
  if (*(a1 + 16) && (v4 = sub_1BF3EC854(v31), (v5 & 1) != 0))
  {
    sub_1BF38D324(*(a1 + 56) + 32 * v4, v32);
    sub_1BF3EE198(v31);
    sub_1BF4785E4();
    if (swift_dynamicCast())
    {
      v6 = v28;
      if ([v28 BOOLValue])
      {
        if (qword_1EDC9D518 != -1)
        {
          swift_once();
        }

        v7 = sub_1BF4E7B54();
        __swift_project_value_buffer(v7, qword_1EDCA69D0);
        v8 = sub_1BF4E7B34();
        v9 = sub_1BF4E8E44();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          v11 = "Captured bug report successfully";
LABEL_35:
          _os_log_impl(&dword_1BF389000, v8, v9, v11, v10, 2u);
          v26 = v10;
LABEL_36:
          MEMORY[0x1BFB5A5D0](v26, -1, -1);
        }
      }

      else
      {
        v29 = sub_1BF4E8914();
        v30 = v18;
        sub_1BF4E9274();
        if (*(a1 + 16) && (v19 = sub_1BF3EC854(v31), (v20 & 1) != 0))
        {
          sub_1BF38D324(*(a1 + 56) + 32 * v19, v32);
          sub_1BF3EE198(v31);
          if (swift_dynamicCast())
          {
            if (qword_1EDC9D518 != -1)
            {
              swift_once();
            }

            v21 = sub_1BF4E7B54();
            __swift_project_value_buffer(v21, qword_1EDCA69D0);

            v8 = sub_1BF4E7B34();
            v22 = sub_1BF4E8E44();

            if (!os_log_type_enabled(v8, v22))
            {

              if (!a2)
              {
                goto LABEL_39;
              }

              goto LABEL_38;
            }

            v23 = swift_slowAlloc();
            v24 = swift_slowAlloc();
            v31[0] = v24;
            *v23 = 136446210;
            v25 = sub_1BF38D65C(v29, v30, v31);

            *(v23 + 4) = v25;
            _os_log_impl(&dword_1BF389000, v8, v22, "Failed to capture bug for reason: %{public}s", v23, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v24);
            MEMORY[0x1BFB5A5D0](v24, -1, -1);
            v26 = v23;
            goto LABEL_36;
          }
        }

        else
        {
          sub_1BF3EE198(v31);
        }

        if (qword_1EDC9D518 != -1)
        {
          swift_once();
        }

        v27 = sub_1BF4E7B54();
        __swift_project_value_buffer(v27, qword_1EDCA69D0);
        v8 = sub_1BF4E7B34();
        v9 = sub_1BF4E8E44();
        if (os_log_type_enabled(v8, v9))
        {
          v10 = swift_slowAlloc();
          *v10 = 0;
          v11 = "Failed to capture bug for unknown reason";
          goto LABEL_35;
        }
      }

      if (!a2)
      {
LABEL_39:

        return;
      }

LABEL_38:
      a2();
      goto LABEL_39;
    }
  }

  else
  {
    sub_1BF3EE198(v31);
  }

  if (qword_1EDC9D518 != -1)
  {
    swift_once();
  }

  v12 = sub_1BF4E7B54();
  __swift_project_value_buffer(v12, qword_1EDCA69D0);
  v13 = sub_1BF4E7B34();
  v14 = sub_1BF4E8E64();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = "Received malformed response";
LABEL_19:
    _os_log_impl(&dword_1BF389000, v13, v14, v16, v15, 2u);
    MEMORY[0x1BFB5A5D0](v15, -1, -1);
  }

LABEL_20:

  if (a2)
  {
    a2();
  }
}

uint64_t sub_1BF477780(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1BF4E8764();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_1BF477828(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BF477920;

  return v6(a1);
}

uint64_t sub_1BF477920()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BF477A18(uint64_t a1)
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
  v10[1] = sub_1BF477B28;

  return sub_1BF476EB8(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BF477B28()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BF477C58(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD98A8, &qword_1BF4F37A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BF477CC8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD98A8, &qword_1BF4F37A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BF477D30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF478638;

  return sub_1BF477828(a1, v4);
}

uint64_t sub_1BF477DE8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BF477B28;

  return sub_1BF477828(a1, v4);
}

void sub_1BF477EA0(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, void (*a9)(void), uint64_t a10)
{
  v56 = a8;
  v59 = a7;
  v58 = a5;
  v57 = a10;
  v61 = a9;
  v15 = sub_1BF4E7334();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
  v62 = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
  v20 = sub_1BF4E88E4();
  v52 = a1;
  v54 = a2;
  v21 = sub_1BF4E88E4();
  v53 = a3;
  v55 = a4;
  v22 = sub_1BF4E88E4();
  v60 = v19;
  v23 = [v19 processName];
  if (!v23)
  {
    sub_1BF4E8914();
    v23 = sub_1BF4E88E4();
  }

  v24 = [v62 signatureWithDomain:v20 type:v21 subType:v22 detectedProcess:v23 triggerThresholdValues:0];

  if (v24)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A18, &qword_1BF4EBF08);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1BF4F0C60;
    *(inited + 32) = sub_1BF4E8914();
    *(inited + 40) = v26;
    sub_1BF4E7324();
    sub_1BF4E72C4();
    v28 = v27;
    (*(v16 + 8))(v18, v15);
    v29 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
    *(inited + 72) = sub_1BF4785E4();
    *(inited + 48) = v29;
    *(inited + 80) = sub_1BF4E8914();
    *(inited + 88) = v30;
    v31 = MEMORY[0x1E69E6158];
    *(inited + 120) = MEMORY[0x1E69E6158];
    *(inited + 96) = v58;
    *(inited + 104) = a6;
    *(inited + 128) = sub_1BF4E8914();
    *(inited + 136) = v32;
    *(inited + 168) = v31;
    v33 = v56;
    *(inited + 144) = v59;
    *(inited + 152) = v33;

    v34 = sub_1BF3DA488(inited);
    swift_setDeallocating();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87D0, &qword_1BF4EB2E8);
    swift_arrayDestroy();
    if (qword_1EDC9D518 != -1)
    {
      swift_once();
    }

    v35 = sub_1BF4E7B54();
    __swift_project_value_buffer(v35, qword_1EDCA69D0);

    v36 = v54;

    v37 = v55;

    v38 = sub_1BF4E7B34();
    v39 = sub_1BF4E8E84();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = v36;
      v43 = v41;
      aBlock[0] = v41;
      *v40 = 136446978;
      *(v40 + 4) = sub_1BF38D65C(v52, v42, aBlock);
      *(v40 + 12) = 2082;
      *(v40 + 14) = sub_1BF38D65C(v53, v37, aBlock);
      *(v40 + 22) = 2082;
      *(v40 + 24) = sub_1BF38D65C(v58, a6, aBlock);
      *(v40 + 32) = 2082;
      *(v40 + 34) = sub_1BF38D65C(v59, v33, aBlock);
      _os_log_impl(&dword_1BF389000, v38, v39, "Capturing bug report with type %{public}s; subtype: %{public}s; name: %{public}s; value: %{public}s", v40, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1BFB5A5D0](v43, -1, -1);
      MEMORY[0x1BFB5A5D0](v40, -1, -1);
    }

    aBlock[0] = 0;
    v44 = v24;
    sub_1BF4E8754();
    if (aBlock[0])
    {

      v45 = sub_1BF4E8744();

      sub_1BF4769F4(v34);

      v46 = sub_1BF4E8744();

      v47 = swift_allocObject();
      v48 = v61;
      v49 = v57;
      *(v47 + 16) = v61;
      *(v47 + 24) = v49;
      aBlock[4] = sub_1BF478630;
      aBlock[5] = v47;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1BF477780;
      aBlock[3] = &block_descriptor_11;
      v50 = _Block_copy(aBlock);
      sub_1BF391990(v48, v49);

      [v62 snapshotWithSignature:v45 duration:v46 event:0 payload:v50 reply:120.0];

      _Block_release(v50);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    if (v61)
    {
      v61();
    }

    v51 = v62;
  }
}

unint64_t sub_1BF4785E4()
{
  result = qword_1EDC9D6B0;
  if (!qword_1EDC9D6B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EDC9D6B0);
  }

  return result;
}

uint64_t PowerlogSuggestionEntry.suggestionIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t PowerlogSuggestionEntry.init(widget:suggestionIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t PowerlogSuggestionEntry.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4FC6B0);
  v4 = [v2 description];
  v5 = sub_1BF4E8914();
  v7 = v6;

  MEMORY[0x1BFB58C90](v5, v7);

  MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4F9D70);
  MEMORY[0x1BFB58C90](v1, v3);
  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t PowerlogSuggestionEntry.hash(into:)(uint64_t a1)
{
  sub_1BF4E90B4();

  return sub_1BF4E89F4();
}

uint64_t static PowerlogSuggestionEntry.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  sub_1BF3F1508();
  if ((sub_1BF4E90A4() & 1) == 0)
  {
    return 0;
  }

  if (v2 == v4 && v3 == v5)
  {
    return 1;
  }

  return sub_1BF4E9734();
}

uint64_t PowerlogSuggestionEntry.hashValue.getter(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF4788E8(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

uint64_t sub_1BF47894C(uint64_t a1)
{
  sub_1BF4E90B4();

  return sub_1BF4E89F4();
}

uint64_t sub_1BF4789A0(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E90B4();
  sub_1BF4E89F4();
  return sub_1BF4E9844();
}

unint64_t sub_1BF478A04()
{
  result = qword_1EBDD98B8;
  if (!qword_1EBDD98B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98B8);
  }

  return result;
}

uint64_t sub_1BF478A80(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v7 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v7);

  MEMORY[0x1BFB58C90](0x676E69646E696240, 0xE800000000000000);
  sub_1BF3D8840(a1, a2, a3);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *(v3 + 16);
  sub_1BF3D6680(a1, a2, a3, 0x676E69646E696240, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v9);

  *(v3 + 16) = v11;
  return result;
}

uint64_t sub_1BF478B84@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1BF3D871C(MEMORY[0x1E69E7CC0]);
  result = MEMORY[0x1BFB58C40](a1);
  *a2 = 0;
  a2[1] = 0xE000000000000000;
  a2[2] = v4;
  return result;
}

uint64_t *sub_1BF478BF4@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v2 = *result;
  v3 = result[1];
  *a2 = result[2];
  a2[1] = v2;
  a2[2] = v3;
  return result;
}

uint64_t sub_1BF478C08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *(v6 + 16);
  v13(&v20 - v11, v10);
  (v13)(v8, v12, a3);
  v14 = sub_1BF429BBC(v8, a3, a4);
  v16 = v15;
  LOBYTE(v13) = v17;
  sub_1BF478A80(v14, v15, v17);
  v18 = sub_1BF3D88B8(v14, v16, v13);
  return (*(v6 + 8))(v12, a3, v18);
}

unint64_t sub_1BF478D78()
{
  result = qword_1EBDD98C0;
  if (!qword_1EBDD98C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98C0);
  }

  return result;
}

unint64_t sub_1BF478DDC()
{
  result = qword_1EBDD98C8;
  if (!qword_1EBDD98C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98C8);
  }

  return result;
}

unint64_t sub_1BF478E40()
{
  result = qword_1EBDD98D0;
  if (!qword_1EBDD98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98D0);
  }

  return result;
}

unint64_t sub_1BF478E98()
{
  result = qword_1EBDD98D8;
  if (!qword_1EBDD98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98D8);
  }

  return result;
}

uint64_t sub_1BF478EEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1BF478F34(uint64_t result, int a2, int a3)
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

uint64_t _WidgetEntryDescriptorChangeObserver.deinit()
{
  if (*(v0 + 72))
  {

    sub_1BF4E7BD4();
  }

  *(v0 + 72) = 0;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return v0;
}

uint64_t _WidgetEntryDescriptorChangeObserver.__deallocating_deinit()
{
  _WidgetEntryDescriptorChangeObserver.deinit();

  return swift_deallocClassInstance();
}

double sub_1BF479038()
{
  if (*(v0 + 72))
  {

    sub_1BF4E7BD4();
  }

  *(v0 + 72) = 0;

  return result;
}

void sub_1BF479094(void *a1)
{
  v3 = *(v1 + 80);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1BF3A000C(v1, a1, &selRef_removeObject_, "[%{public}s] Unregistering for descriptor changes for widget: %{public}s");
  v4 = *(v3 + 16);

  os_unfair_lock_unlock(v4);
}

uint64_t sub_1BF479270()
{
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000024, 0x80000001BF4FB3E0);
  MEMORY[0x1BFB58C90](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1BFB58C90](0x7469746E65646920, 0xEA00000000003D79);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0x3D74736F6320, 0xE600000000000000);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0x3D6E6F7361657220, 0xE800000000000000);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FB410);
  v1 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0x6974756365786520, 0xEF3D656D69546E6FLL);
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

uint64_t sub_1BF479478()
{
  sub_1BF4E92E4();
  MEMORY[0x1BFB58C90](0xD000000000000024, 0x80000001BF4FB3E0);
  MEMORY[0x1BFB58C90](*(v0 + 16), *(v0 + 24));
  MEMORY[0x1BFB58C90](0x7469746E65646920, 0xEA00000000003D79);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0x3D74736F6320, 0xE600000000000000);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0x3D6E6F7361657220, 0xE800000000000000);
  sub_1BF4E9404();
  MEMORY[0x1BFB58C90](0xD000000000000011, 0x80000001BF4FB410);
  v1 = sub_1BF4E96A4();
  MEMORY[0x1BFB58C90](v1);

  MEMORY[0x1BFB58C90](0x6974756365786520, 0xEF3D656D69546E6FLL);
  sub_1BF4E8D14();
  MEMORY[0x1BFB58C90](62, 0xE100000000000000);
  return 0;
}

ChronoKit::PowerlogErrorReason_optional __swiftcall PowerlogErrorReason.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1BF4E9514();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t PowerlogErrorReason.rawValue.getter()
{
  v1 = 0x676F646863746177;
  if (*v0 != 1)
  {
    v1 = 0x726568746FLL;
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

unint64_t sub_1BF479740()
{
  result = qword_1EBDD98E8;
  if (!qword_1EBDD98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98E8);
  }

  return result;
}

uint64_t sub_1BF479794(double a1)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

uint64_t sub_1BF47982C(uint64_t a1)
{
  sub_1BF4E89F4();
}

uint64_t sub_1BF4798B0(uint64_t a1, double a2)
{
  sub_1BF4E9804();
  sub_1BF4E89F4();

  return sub_1BF4E9844();
}

void sub_1BF479950(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x676F646863746177;
  if (v2 != 1)
  {
    v5 = 0x726568746FLL;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1701736302;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1BF4799A4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0x676F646863746177;
  if (v2 != 1)
  {
    v4 = 0x726568746FLL;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1701736302;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE800000000000000;
  v8 = 0x676F646863746177;
  if (*a2 != 1)
  {
    v8 = 0x726568746FLL;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1701736302;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1BF4E9734();
  }

  return v11 & 1;
}

void sub_1BF479AE8(unint64_t a1)
{
  v3 = sub_1BF4E7FF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E8064();
  isa = v7[-1].isa;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF47E4BC(a1);
  if (v11)
  {
    v12 = v11;
    v22 = v4;
    v23 = v7;
    v13 = *(v1 + 24);
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = v1;
    v14[4] = a1;
    aBlock[4] = sub_1BF47E828;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_35;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    v21 = v12;

    sub_1BF4E8014();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1BF47E878(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v10, v6, v15);
    _Block_release(v15);

    (*(v22 + 8))(v6, v3);
    (*(isa + 1))(v10, v23);
  }

  else
  {
    if (qword_1EDC9EFF0 != -1)
    {
      swift_once();
    }

    v17 = sub_1BF4E7B54();
    __swift_project_value_buffer(v17, qword_1EDCA6A90);
    v23 = sub_1BF4E7B34();
    v18 = sub_1BF4E8E84();
    if (os_log_type_enabled(v23, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BF389000, v23, v18, "No powerlog update entries to flush.", v19, 2u);
      MEMORY[0x1BFB5A5D0](v19, -1, -1);
    }

    v20 = v23;
  }
}

void sub_1BF479ED8(unint64_t a1)
{
  v3 = sub_1BF4E7FF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E8064();
  isa = v7[-1].isa;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF47D994(a1);
  if (v11)
  {
    v12 = v11;
    v22 = v4;
    v23 = v7;
    v13 = *(v1 + 24);
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = v1;
    v14[4] = a1;
    aBlock[4] = sub_1BF47DF60;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_28_0;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    v21 = v12;

    sub_1BF4E8014();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1BF47E878(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v10, v6, v15);
    _Block_release(v15);

    (*(v22 + 8))(v6, v3);
    (*(isa + 1))(v10, v23);
  }

  else
  {
    if (qword_1EDC9EFF0 != -1)
    {
      swift_once();
    }

    v17 = sub_1BF4E7B54();
    __swift_project_value_buffer(v17, qword_1EDCA6A90);
    v23 = sub_1BF4E7B34();
    v18 = sub_1BF4E8E84();
    if (os_log_type_enabled(v23, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BF389000, v23, v18, "No powerlog view entries to flush.", v19, 2u);
      MEMORY[0x1BFB5A5D0](v19, -1, -1);
    }

    v20 = v23;
  }
}

void sub_1BF47A2C8(void *a1, os_log_t a2, unint64_t a3, const char *a4, uint64_t a5, uint64_t a6, const char *a7)
{
  if (qword_1EDC9EFF0 != -1)
  {
    swift_once();
  }

  v11 = sub_1BF4E7B54();
  __swift_project_value_buffer(v11, qword_1EDCA6A90);
  v12 = a1;
  v13 = sub_1BF4E7B34();
  v14 = sub_1BF4E8E54();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = a7;
    v17 = swift_slowAlloc();
    *v15 = 138543362;
    *(v15 + 4) = v12;
    *v17 = v12;
    v18 = v12;
    _os_log_impl(&dword_1BF389000, v13, v14, a4, v15, 0xCu);
    sub_1BF38C9B4(v17, &unk_1EBDD9260, &qword_1BF4EC380);
    v19 = v17;
    a7 = v16;
    MEMORY[0x1BFB5A5D0](v19, -1, -1);
    MEMORY[0x1BFB5A5D0](v15, -1, -1);
  }

  v20 = sub_1BF4E88E4();
  PLLogRegisteredEvent();

  oslog = sub_1BF4E7B34();
  v21 = sub_1BF4E8E84();
  if (os_log_type_enabled(oslog, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 134349056;
    if (a3 >> 62)
    {
      v23 = sub_1BF4E9204();
    }

    else
    {
      v23 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v22 + 4) = v23;

    _os_log_impl(&dword_1BF389000, oslog, v21, a7, v22, 0xCu);
    MEMORY[0x1BFB5A5D0](v22, -1, -1);
  }

  else
  {
  }
}

void sub_1BF47A574(uint64_t a1)
{
  v3 = sub_1BF4E7FF4();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1BF4E8064();
  isa = v7[-1].isa;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1BF47D02C(a1);
  if (v11)
  {
    v12 = v11;
    v22 = v4;
    v23 = v7;
    v13 = *(v1 + 24);
    v14 = swift_allocObject();
    v14[2] = v12;
    v14[3] = v1;
    v14[4] = a1;
    aBlock[4] = sub_1BF47D470;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BF38E868;
    aBlock[3] = &block_descriptor_12;
    v15 = _Block_copy(aBlock);
    v16 = v13;
    v21 = v12;

    sub_1BF4E8014();
    v24 = MEMORY[0x1E69E7CC0];
    sub_1BF47E878(&qword_1EDC9F980, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8EB8, &unk_1BF4F0890);
    sub_1BF38C8B4(&qword_1EDC9F190, &qword_1EBDD8EB8, &unk_1BF4F0890, MEMORY[0x1E69E6328]);
    sub_1BF4E91A4();
    MEMORY[0x1BFB591B0](0, v10, v6, v15);
    _Block_release(v15);

    (*(v22 + 8))(v6, v3);
    (*(isa + 1))(v10, v23);
  }

  else
  {
    if (qword_1EDC9EFF0 != -1)
    {
      swift_once();
    }

    v17 = sub_1BF4E7B54();
    __swift_project_value_buffer(v17, qword_1EDCA6A90);
    v23 = sub_1BF4E7B34();
    v18 = sub_1BF4E8E84();
    if (os_log_type_enabled(v23, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1BF389000, v23, v18, "No powerlog suggestion entries to flush.", v19, 2u);
      MEMORY[0x1BFB5A5D0](v19, -1, -1);
    }

    v20 = v23;
  }
}

void sub_1BF47A964(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1EDC9EFF0 != -1)
  {
    swift_once();
  }

  v5 = sub_1BF4E7B54();
  __swift_project_value_buffer(v5, qword_1EDCA6A90);
  v6 = a1;
  v7 = sub_1BF4E7B34();
  v8 = sub_1BF4E8E54();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138543362;
    *(v9 + 4) = v6;
    *v10 = v6;
    v11 = v6;
    _os_log_impl(&dword_1BF389000, v7, v8, "Flushing suggestions to powerlog: %{public}@", v9, 0xCu);
    sub_1BF38C9B4(v10, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v10, -1, -1);
    MEMORY[0x1BFB5A5D0](v9, -1, -1);
  }

  v12 = sub_1BF4E88E4();
  PLLogRegisteredEvent();

  oslog = sub_1BF4E7B34();
  v13 = sub_1BF4E8E84();
  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 134349056;
    *(v14 + 4) = *(a3 + 16);

    _os_log_impl(&dword_1BF389000, oslog, v13, "Flushed %{public}ld powerlog suggestion entries.", v14, 0xCu);
    MEMORY[0x1BFB5A5D0](v14, -1, -1);
  }

  else
  {
  }
}

unint64_t sub_1BF47ABD4()
{
  result = qword_1EBDD98F0;
  if (!qword_1EBDD98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98F0);
  }

  return result;
}

unint64_t sub_1BF47AC2C()
{
  result = qword_1EBDD98F8;
  if (!qword_1EBDD98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD98F8);
  }

  return result;
}

double sub_1BF47ACEC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v7 = sub_1BF3CD5D0(a1, a2, a4);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v13 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A2624();
      v11 = v13;
    }

    sub_1BF38EB2C((*(v11 + 56) + 32 * v9), a3);
    sub_1BF47B688(v9, v11);
    *v5 = v11;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_1BF47AD90(__int128 *a1)
{
  v2 = v1;
  v3 = sub_1BF3EC3EC(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  v5 = v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *v1;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1BF4A2ADC();
    v7 = v16;
  }

  v8 = (*(v7 + 48) + (v5 << 6));
  v9 = *(v8 + 41);
  v10 = v8[2];
  v11 = *v8;
  v14[1] = v8[1];
  v15[0] = v10;
  v14[0] = v11;
  *(v15 + 9) = v9;
  sub_1BF3EE248(v14);
  v12 = *(*(v7 + 56) + 8 * v5);
  sub_1BF47B838(v5, v7);
  *v2 = v7;
  return v12;
}

uint64_t sub_1BF47AE40(uint64_t a1, double a2)
{
  v3 = v2;
  v4 = sub_1BF3EC470(a1, a2);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *v2;
  v12 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1BF4A2C80();
    v8 = v12;
  }

  v9 = *(*(v8 + 48) + 40 * v6);

  v10 = *(*(v8 + 56) + 8 * v6);
  sub_1BF47BAC8(v6, v8);
  *v3 = v8;
  return v10;
}

double sub_1BF47AEE4@<D0>(void *a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v4 = v3;
  v6 = sub_1BF3EC540(a1, a3);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v14 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A2E1C();
      v10 = v14;
    }

    v11 = *(v10 + 48);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
    sub_1BF38C9B4(v11 + *(*(v12 - 8) + 72) * v8, &qword_1EBDD87A8, &unk_1BF4EB2C0);
    sub_1BF38E610((*(v10 + 56) + 40 * v8), a2);
    sub_1BF47BD1C(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BF47AFD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v7 = sub_1BF3CD5D0(a1, a2, a4);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v21 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A31C8();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = sub_1BF4E7404();
    v20 = *(v13 - 8);
    (*(v20 + 32))(a3, v12 + *(v20 + 72) * v9, v13);
    sub_1BF47C64C(v9, v11, MEMORY[0x1E6959B98]);
    *v5 = v11;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = sub_1BF4E7404();
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1BF47B158@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BF38C890(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v13 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A3A84();
      v9 = v13;
    }

    v10 = *(v9 + 48);
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
    (*(*(v11 - 8) + 8))(v10 + *(*(v11 - 8) + 72) * v7, v11);
    sub_1BF38E610((*(v9 + 56) + 40 * v7), a2);
    sub_1BF47C320(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BF47B248@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  v7 = sub_1BF3CD5D0(a1, a2, a4);
  if (v8)
  {
    v9 = v7;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v21 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A3D14();
      v11 = v21;
    }

    v12 = *(v11 + 56);
    v13 = type metadata accessor for RemoteActivityArchiveBudget(0);
    v20 = *(v13 - 8);
    sub_1BF43C744(v12 + *(v20 + 72) * v9, a3, type metadata accessor for RemoteActivityArchiveBudget);
    sub_1BF47C64C(v9, v11, type metadata accessor for RemoteActivityArchiveBudget);
    *v5 = v11;
    v14 = *(v20 + 56);
    v15 = a3;
    v16 = 0;
    v17 = v13;
  }

  else
  {
    v18 = type metadata accessor for RemoteActivityArchiveBudget(0);
    v14 = *(*(v18 - 8) + 56);
    v17 = v18;
    v15 = a3;
    v16 = 1;
  }

  return v14(v15, v16, 1, v17);
}

double sub_1BF47B3C8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BF3916CC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A3F6C();
      v9 = v11;
    }

    sub_1BF38E610((*(v9 + 56) + 40 * v7), a2);
    sub_1BF47C840(v7, v9);
    *v3 = v9;
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1BF47B470@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = sub_1BF3916CC(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v19 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A4A00();
      v9 = v19;
    }

    v10 = *(v9 + 56);
    v11 = type metadata accessor for ExtensionMetadata(0);
    v18 = *(v11 - 8);
    sub_1BF43C744(v10 + *(v18 + 72) * v7, a2, type metadata accessor for ExtensionMetadata);
    sub_1BF47C9D8(v7, v9);
    *v3 = v9;
    v12 = *(v18 + 56);
    v13 = a2;
    v14 = 0;
    v15 = v11;
  }

  else
  {
    v16 = type metadata accessor for ExtensionMetadata(0);
    v12 = *(*(v16 - 8) + 56);
    v15 = v16;
    v13 = a2;
    v14 = 1;
  }

  return v12(v13, v14, 1, v15);
}

uint64_t sub_1BF47B5D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v5 = v4;
  result = sub_1BF3CD5D0(a1, a2, a4);
  if (v8)
  {
    v9 = result;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v4;
    v14 = *v5;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1BF4A4C38();
      v11 = v14;
    }

    v12 = *(v11 + 56) + 24 * v9;
    v13 = *(v12 + 16);
    *a3 = *v12;
    *(a3 + 16) = v13;
    result = sub_1BF47CBA0(v9, v11);
    *v5 = v11;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t sub_1BF47B688(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BF4E91C4() + 1) & ~v5;
    do
    {
      sub_1BF4E9804();

      sub_1BF4E89F4();
      v10 = sub_1BF4E9844();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 32 * v3);
        v17 = (v15 + 32 * v6);
        if (v3 != v6 || v16 >= v17 + 2)
        {
          v9 = v17[1];
          *v16 = *v17;
          v16[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_1BF47B838(unint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v32 = v4;
    v31 = ~v5;
    v7 = (sub_1BF4E91C4() + 1) & ~v5;
    while (1)
    {
      v8 = v6 << 6;
      v9 = (*(a2 + 48) + (v6 << 6));
      v11 = v9[1];
      v10 = v9[2];
      v12 = *v9;
      *&v35[9] = *(v9 + 41);
      v34[1] = v11;
      *v35 = v10;
      v34[0] = v12;
      sub_1BF4E9804();
      v13 = *v35;
      sub_1BF3EE1EC(v34, v33);
      sub_1BF4E90B4();
      sub_1BF4E89F4();
      sub_1BF4E9824();
      if (v13)
      {
        sub_1BF4E89F4();
      }

      v14 = *&v35[16];
      v15 = v35[24];
      sub_1BF4E9824();
      if (v15)
      {
        v14 = qword_1BF4F3D48[v14];
      }

      else
      {
        MEMORY[0x1BFB59A70](3);
      }

      MEMORY[0x1BFB59A70](v14);
      v16 = sub_1BF4E9844();
      result = sub_1BF3EE248(v34);
      v17 = v16 & v31;
      if (v3 >= v7)
      {
        v18 = v32;
        if (v17 < v7)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v18 = v32;
        if (v17 >= v7)
        {
          goto LABEL_15;
        }
      }

      if (v3 >= v17)
      {
LABEL_15:
        v19 = *(a2 + 48);
        v20 = (v19 + (v3 << 6));
        v21 = (v19 + v8);
        if (v3 << 6 != v8 || v20 >= v21 + 4)
        {
          v22 = *v21;
          v23 = v21[1];
          v24 = v21[3];
          v20[2] = v21[2];
          v20[3] = v24;
          *v20 = v22;
          v20[1] = v23;
        }

        v25 = *(a2 + 56);
        v26 = (v25 + 8 * v3);
        v27 = (v25 + 8 * v6);
        if (v3 != v6 || v26 >= v27 + 1)
        {
          *v26 = *v27;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v31;
      if (((*(v18 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
      {
        *(v18 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
        goto LABEL_23;
      }
    }
  }

  *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
LABEL_23:
  v28 = *(a2 + 16);
  v29 = __OFSUB__(v28, 1);
  v30 = v28 - 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v30;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BF47BAC8(int64_t a1, uint64_t a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v28 = ~v5;
    v29 = a2 + 64;
    v27 = (sub_1BF4E91C4() + 1) & ~v5;
    do
    {
      v7 = 40 * v6;
      v8 = v2;
      v9 = *(v2 + 48) + 40 * v6;
      v10 = *v9;
      v11 = *(v9 + 24);
      v12 = *(v9 + 32);
      sub_1BF4E9804();
      v13 = v10;

      sub_1BF4E90B4();
      sub_1BF4E89F4();
      if (v12)
      {
        v11 = qword_1BF4F3D48[v11];
      }

      else
      {
        MEMORY[0x1BFB59A70](3);
      }

      MEMORY[0x1BFB59A70](v11);
      sub_1BF4E9824();
      v14 = sub_1BF4E9844();

      v15 = v14 & v28;
      v2 = v8;
      if (v3 >= v27)
      {
        v4 = v29;
        if (v15 < v27)
        {
          goto LABEL_4;
        }
      }

      else
      {
        v4 = v29;
        if (v15 >= v27)
        {
          goto LABEL_13;
        }
      }

      if (v3 >= v15)
      {
LABEL_13:
        v16 = *(v8 + 48);
        v17 = v16 + 40 * v3;
        v18 = (v16 + v7);
        if (40 * v3 < v7 || v17 >= v18 + 40 || v3 != v6)
        {
          v19 = *v18;
          v20 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v19;
          *(v17 + 16) = v20;
        }

        v21 = *(v8 + 56);
        v22 = (v21 + 8 * v3);
        v23 = (v21 + 8 * v6);
        if (v3 != v6 || v22 >= v23 + 1)
        {
          *v22 = *v23;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v28;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(v2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v26;
    ++*(v2 + 36);
  }
}

void sub_1BF47BD1C(int64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD87A8, &unk_1BF4EB2C0);
  v4 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v6 = &v26 - v5;
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = sub_1BF4E91C4();
    v12 = *(v4 + 72);
    v28 = a2;
    v29 = a2 + 64;
    v26 = v12;
    v27 = (v11 + 1) & v10;
    do
    {
      v13 = v12 * v9;
      sub_1BF471254(*(a2 + 48) + v12 * v9, v6);
      sub_1BF4E9804();
      sub_1BF4E90B4();
      type metadata accessor for ActivityKey(0);
      sub_1BF4E7454();
      sub_1BF47E878(&qword_1EDC9F0A8, MEMORY[0x1E6959BC8], MEMORY[0x1E6959BD8]);
      sub_1BF4E8884();
      sub_1BF4E89F4();
      sub_1BF4E8674();
      sub_1BF47E878(&unk_1EDC9D760, MEMORY[0x1E6985AA8], MEMORY[0x1E6985AB8]);
      sub_1BF4E8884();
      type metadata accessor for ActivityVariantKey(0);
      sub_1BF4E8364();
      sub_1BF47E878(&qword_1EDC9D798, MEMORY[0x1E69858D8], MEMORY[0x1E69858E8]);
      sub_1BF4E8884();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
      sub_1BF38C8B4(&unk_1EDC9F018, &unk_1EBDD85B0, &unk_1BF4EA9E0, MEMORY[0x1E6994140]);
      v14 = v27;
      sub_1BF4E8884();
      v15 = sub_1BF4E9844();
      sub_1BF38C9B4(v6, &qword_1EBDD87A8, &unk_1BF4EB2C0);
      v16 = v15 & v10;
      if (a1 >= v14)
      {
        if (v16 < v14)
        {
          a2 = v28;
          v7 = v29;
          v12 = v26;
          goto LABEL_4;
        }

        a2 = v28;
        v12 = v26;
        if (a1 >= v16)
        {
          goto LABEL_11;
        }
      }

      else
      {
        a2 = v28;
        v12 = v26;
        if (v16 >= v14 || a1 >= v16)
        {
LABEL_11:
          if (v12 * a1 < v13 || *(a2 + 48) + v12 * a1 >= (*(a2 + 48) + v13 + v12))
          {
            swift_arrayInitWithTakeFrontToBack();
            v7 = v29;
          }

          else
          {
            v17 = v12 * a1 == v13;
            v7 = v29;
            if (!v17)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v18 = *(a2 + 56);
          v19 = v18 + 40 * a1;
          v20 = (v18 + 40 * v9);
          if (a1 != v9 || v19 >= v20 + 40)
          {
            v21 = *v20;
            v22 = v20[1];
            *(v19 + 32) = *(v20 + 4);
            *v19 = v21;
            *(v19 + 16) = v22;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      v7 = v29;
LABEL_4:
      v9 = (v9 + 1) & v10;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }
}

uint64_t sub_1BF47C170(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BF4E91C4() + 1) & ~v5;
    do
    {
      sub_1BF4E9804();

      sub_1BF4E89F4();
      v9 = sub_1BF4E9844();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v17 = *(a2 + 16);
  v18 = __OFSUB__(v17, 1);
  v19 = v17 - 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v19;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BF47C320(int64_t a1, uint64_t a2)
{
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD91A0, &unk_1BF4EC4E0);
  v4 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - v6;
  v7 = a2 + 64;
  v8 = -1 << *(a2 + 32);
  v9 = (a1 + 1) & ~v8;
  if ((*(a2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v41 = v5;
    v11 = sub_1BF4E91C4();
    v12 = v40;
    v5 = v41;
    v13 = v10;
    v38 = (v11 + 1) & v10;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v36 = a2 + 64;
    v37 = v15;
    v16 = *(v14 + 56);
    v35 = (v14 - 8);
    do
    {
      v17 = v16;
      v18 = v16 * v9;
      v19 = v39;
      v20 = v13;
      v21 = v14;
      v37(v39, *(v5 + 48) + v16 * v9, v12);
      sub_1BF38C8B4(&qword_1EDC9D540, &unk_1EBDD91A0, &unk_1BF4EC4E0, MEMORY[0x1E6994140]);
      v22 = sub_1BF4E8874();
      (*v35)(v19, v12);
      v13 = v20;
      v23 = v22 & v20;
      if (a1 >= v38)
      {
        if (v23 >= v38 && a1 >= v23)
        {
LABEL_15:
          v5 = v41;
          v14 = v21;
          if (v17 * a1 < v18 || (v16 = v17, *(v41 + 48) + v17 * a1 >= (*(v41 + 48) + v18 + v17)))
          {
            swift_arrayInitWithTakeFrontToBack();
            v5 = v41;
            v16 = v17;
            v13 = v20;
            v7 = v36;
          }

          else
          {
            v7 = v36;
            if (v17 * a1 != v18)
            {
              swift_arrayInitWithTakeBackToFront();
              v5 = v41;
              v16 = v17;
              v13 = v20;
            }
          }

          v26 = *(v5 + 56);
          v27 = v26 + 40 * a1;
          v28 = (v26 + 40 * v9);
          if (a1 != v9 || v27 >= v28 + 40)
          {
            v29 = *v28;
            v30 = v28[1];
            *(v27 + 32) = *(v28 + 4);
            *v27 = v29;
            *(v27 + 16) = v30;
            a1 = v9;
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v38 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v14 = v21;
      v7 = v36;
      v16 = v17;
      v5 = v41;
LABEL_4:
      v9 = (v9 + 1) & v13;
    }

    while (((*(v7 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  *(v7 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(v5 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v5 + 16) = v33;
    ++*(v5 + 36);
  }
}

unint64_t sub_1BF47C64C(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (sub_1BF4E91C4() + 1) & ~v6;
    while (1)
    {
      sub_1BF4E9804();

      sub_1BF4E89F4();
      v11 = sub_1BF4E9844();

      v12 = v11 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v12 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v13 = *(a2 + 48);
      v14 = (v13 + 16 * v4);
      v15 = (v13 + 16 * v7);
      if (v4 != v7 || v14 >= v15 + 1)
      {
        *v14 = *v15;
      }

      v16 = *(a2 + 56);
      v17 = *(*(a3(0) - 8) + 72);
      v18 = v17 * v4;
      result = v16 + v17 * v4;
      v19 = v17 * v7;
      v20 = v16 + v17 * v7 + v17;
      if (v18 < v19 || result >= v20)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v18 == v19)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v12 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v12)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }

  return result;
}

void sub_1BF47C840(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BF4E91C4() + 1) & ~v5;
    do
    {
      v11 = *(*(a2 + 48) + 8 * v6);
      v12 = sub_1BF4E9094();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = *(a2 + 48);
          v17 = (v16 + 8 * v3);
          v18 = (v16 + 8 * v6);
          if (v3 != v6 || v17 >= v18 + 1)
          {
            *v17 = *v18;
          }

          v19 = *(a2 + 56);
          v20 = v19 + 40 * v3;
          v21 = (v19 + 40 * v6);
          if (v3 != v6 || v20 >= v21 + 40)
          {
            v9 = *v21;
            v10 = v21[1];
            *(v20 + 32) = *(v21 + 4);
            *v20 = v9;
            *(v20 + 16) = v10;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v22 = *(a2 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v24;
    ++*(a2 + 36);
  }
}

void sub_1BF47C9D8(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BF4E91C4() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      v10 = sub_1BF4E9094();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8 || v3 < v11)
        {
          goto LABEL_5;
        }
      }

      else if (v11 < v8 && v3 < v11)
      {
        goto LABEL_5;
      }

      v14 = *(a2 + 48);
      v15 = (v14 + 8 * v3);
      v16 = (v14 + 8 * v6);
      if (v3 != v6 || v15 >= v16 + 1)
      {
        *v15 = *v16;
      }

      v17 = *(a2 + 56);
      v18 = *(*(type metadata accessor for ExtensionMetadata(0) - 8) + 72);
      v19 = v18 * v3;
      v20 = v17 + v18 * v3;
      v21 = v18 * v6;
      v22 = v17 + v18 * v6 + v18;
      if (v19 < v21 || v20 >= v22)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v3 = v6;
        if (v19 == v21)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v3 = v6;
LABEL_5:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v24 = *(a2 + 16);
  v25 = __OFSUB__(v24, 1);
  v26 = v24 - 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v26;
    ++*(a2 + 36);
  }
}

uint64_t sub_1BF47CBA0(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1BF4E91C4() + 1) & ~v5;
    do
    {
      sub_1BF4E9804();

      sub_1BF4E89F4();
      v10 = sub_1BF4E9844();

      v11 = v10 & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 16 * v3);
        v14 = (v12 + 16 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = v15 + 24 * v3;
        v17 = (v15 + 24 * v6);
        if (v3 != v6 || v16 >= v17 + 24)
        {
          v9 = *v17;
          *(v16 + 16) = *(v17 + 2);
          *v16 = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_1BF47CD5C(uint64_t a1)
{
  if ((a1 - 1) > 0xC)
  {
    return 0;
  }

  else
  {
    return byte_1BF4F3D3A[a1 - 1];
  }
}

uint64_t sub_1BF47CD80(uint64_t a1)
{
  v1 = *a1;
  v30 = *(a1 + 8);
  v2 = *(a1 + 16);

  v3 = [v1 extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = sub_1BF4E76B4();
  v5 = MEMORY[0x1E69E6158];
  v33 = MEMORY[0x1E69E6158];
  *&v32 = v4;
  *(&v32 + 1) = v6;
  swift_endAccess();

  sub_1BF38EB2C(&v32, v31);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v31, 0x4449656C646E7562, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v8);
  v9 = [v1 kind];
  v10 = sub_1BF4E8914();
  v12 = v11;

  v33 = MEMORY[0x1E69E67B0];
  v13 = swift_allocObject();
  *&v32 = v13;
  v14 = sub_1BF39DC9C(6uLL, v10, v12);
  v16 = v15;
  v18 = v17;
  v20 = v19;

  v13[2] = v14;
  v13[3] = v16;
  v13[4] = v18;
  v13[5] = v20;
  sub_1BF38EB2C(&v32, v31);
  v21 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v31, 1684957547, 0xE400000000000000, v21, v22);
  v23 = sub_1BF47CD5C([v1 family]);
  v33 = MEMORY[0x1E69E6530];
  *&v32 = v23;
  sub_1BF38EB2C(&v32, v31);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v31, 1702521203, 0xE400000000000000, v24, v25);
  v33 = v5;
  *&v32 = v30;
  *(&v32 + 1) = v2;
  sub_1BF38EB2C(&v32, v31);
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v31, 0xD000000000000014, 0x80000001BF4FC820, v26, v27);
  v28 = sub_1BF4E8744();

  return v28;
}

uint64_t sub_1BF47D02C(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v4 = v2;
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = (a1 + 48);
    v7 = &off_1E80BD000;
    p_info = &OBJC_METACLASS____TtC9ChronoKit22WidgetPowerlogProvider.info;
    *&v3 = 136446210;
    v33 = v3;
    v34 = v2;
    do
    {
      v18 = *(v6 - 1);
      v19 = *v6;
      v39 = *(v6 - 2);
      v40 = v18;
      v37 = v18;
      v41 = v19;
      v20 = v39;

      v21 = sub_1BF47CD80(&v39);
      [v4 v7[99]];

      if (p_info[510] != -1)
      {
        swift_once();
      }

      v22 = sub_1BF4E7B54();
      __swift_project_value_buffer(v22, qword_1EDCA6A90);
      v23 = v20;

      v24 = sub_1BF4E7B34();
      v25 = sub_1BF4E8E54();

      if (os_log_type_enabled(v24, v25))
      {
        v9 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v38 = v36;
        v39 = 0;
        *v9 = v33;
        v40 = 0xE000000000000000;
        v35 = v23;

        sub_1BF4E92E4();
        MEMORY[0x1BFB58C90](0xD000000000000020, 0x80000001BF4FC6B0);
        v10 = [v35 description];
        v11 = p_info;
        v12 = sub_1BF4E8914();
        v14 = v13;

        v15 = v12;
        p_info = v11;
        MEMORY[0x1BFB58C90](v15, v14);

        MEMORY[0x1BFB58C90](0xD000000000000016, 0x80000001BF4F9D70);
        MEMORY[0x1BFB58C90](v37, v19);
        MEMORY[0x1BFB58C90](62, 0xE100000000000000);

        v16 = sub_1BF38D65C(v39, v40, &v38);
        v7 = &off_1E80BD000;

        *(v9 + 4) = v16;
        _os_log_impl(&dword_1BF389000, v24, v25, "Flushing powerlog suggestion entry: %{public}s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v36);
        MEMORY[0x1BFB5A5D0](v36, -1, -1);
        v17 = v9;
        v4 = v34;
        MEMORY[0x1BFB5A5D0](v17, -1, -1);
      }

      else
      {
      }

      v6 += 3;
      --v5;
    }

    while (v5);
  }

  if ([v4 count])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9348, &qword_1BF4F0B98);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_1BF4ECFE0;
    v27 = MEMORY[0x1E69E6158];
    *(v26 + 56) = MEMORY[0x1E69E6158];
    *(v26 + 32) = 0x7374617473;
    *(v26 + 40) = 0xE500000000000000;
    [v4 copy];
    sub_1BF4E9164();
    swift_unknownObjectRelease();
    *(v26 + 120) = v27;
    *(v26 + 96) = 0x6D617473656D6974;
    *(v26 + 104) = 0xE900000000000070;
    v28 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    [v28 timeIntervalSince1970];
    v30 = v29;

    *(v26 + 152) = MEMORY[0x1E69E63B0];
    *(v26 + 128) = v30;
    sub_1BF43E550();
    v31 = sub_1BF4E8E14();
  }

  else
  {

    return 0;
  }

  return v31;
}

uint64_t sub_1BF47D47C(uint64_t a1)
{
  v2 = [*(a1 + 16) extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v3 = sub_1BF4E76B4();
  v4 = MEMORY[0x1E69E6158];
  v57 = MEMORY[0x1E69E6158];
  *&v56 = v3;
  *(&v56 + 1) = v5;
  swift_endAccess();

  sub_1BF38EB2C(&v56, v55);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v55, 0x4449656C646E7562, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v7);
  v8 = [*(a1 + 16) kind];
  v9 = sub_1BF4E8914();
  v11 = v10;

  v57 = MEMORY[0x1E69E67B0];
  v12 = swift_allocObject();
  *&v56 = v12;
  v13 = sub_1BF39DC9C(6uLL, v9, v11);
  v15 = v14;
  v17 = v16;
  v19 = v18;

  v12[2] = v13;
  v12[3] = v15;
  v12[4] = v17;
  v12[5] = v19;
  sub_1BF38EB2C(&v56, v55);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v55, 1684957547, 0xE400000000000000, v20, v21);
  v22 = sub_1BF47CD5C([*(a1 + 16) family]);
  v23 = MEMORY[0x1E69E6530];
  v57 = MEMORY[0x1E69E6530];
  *&v56 = v22;
  sub_1BF38EB2C(&v56, v55);
  v24 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v55, 1702521203, 0xE400000000000000, v24, v25);
  v26 = *(a1 + 56);
  v57 = MEMORY[0x1E69E6370];
  LOBYTE(v56) = v26;
  sub_1BF38EB2C(&v56, v55);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v55, 0x636174536E497369, 0xE90000000000006BLL, v27, v28);
  if (*(a1 + 72) == 1)
  {
    v29 = qword_1BF4F3D48[*(a1 + 64)];
  }

  else
  {
    v29 = 3;
  }

  v57 = v23;
  *&v56 = v29;
  sub_1BF38EB2C(&v56, v55);
  v30 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v55, 0x6E6F697461636F6CLL, 0xE800000000000000, v30, v31);
  if (*(a1 + 72))
  {
    v32 = -1;
  }

  else
  {
    v32 = *(a1 + 64);
  }

  v57 = v23;
  *&v56 = v32;
  sub_1BF38EB2C(&v56, v55);
  v33 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v55, 1701273968, 0xE400000000000000, v33, v34);
  v35 = *(a1 + 48);
  if (v35)
  {
    v36 = *(a1 + 40);
    v57 = v4;
    *&v56 = v36;
    *(&v56 + 1) = v35;
    sub_1BF38EB2C(&v56, v55);

    v37 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BF3D67F0(v55, 0xD000000000000014, 0x80000001BF4FC820, v37, v38);
  }

  v39 = *(a1 + 24);
  v40 = *(a1 + 32);
  v57 = v4;
  *&v56 = v39;
  *(&v56 + 1) = v40;
  sub_1BF38EB2C(&v56, v55);

  v41 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v55, 0x696669746E656469, 0xEA00000000007265, v41, v42);
  v43 = *(a1 + 112);
  v44 = MEMORY[0x1E69E63B0];
  v57 = MEMORY[0x1E69E63B0];
  *&v56 = v43;
  sub_1BF38EB2C(&v56, v55);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v55, 0xD000000000000016, 0x80000001BF4FB490, v45, v46);
  v47 = *(a1 + 88);
  v57 = v44;
  *&v56 = v47;
  sub_1BF38EB2C(&v56, v55);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v55, 0xD000000000000013, 0x80000001BF4FC840, v48, v49);
  v50 = *(a1 + 96);
  v57 = v23;
  *&v56 = v50;
  sub_1BF38EB2C(&v56, v55);
  v51 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v55, 0xD000000000000013, 0x80000001BF4FC860, v51, v52);
  v53 = sub_1BF4E8744();

  return v53;
}

id sub_1BF47D994(unint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v3 = result;
  if (a1 >> 62)
  {
    result = sub_1BF4E9204();
    v4 = result;
    if (result)
    {
      goto LABEL_3;
    }

LABEL_20:
    if ([v3 count])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9348, &qword_1BF4F0B98);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_1BF4ECFE0;
      v30 = MEMORY[0x1E69E6158];
      *(v29 + 56) = MEMORY[0x1E69E6158];
      *(v29 + 32) = 0x7374617473;
      *(v29 + 40) = 0xE500000000000000;
      [v3 copy];
      sub_1BF4E9164();
      swift_unknownObjectRelease();
      *(v29 + 120) = v30;
      *(v29 + 96) = 0x6D617473656D6974;
      *(v29 + 104) = 0xE900000000000070;
      v31 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
      [v31 timeIntervalSince1970];
      v33 = v32;

      *(v29 + 152) = MEMORY[0x1E69E63B0];
      *(v29 + 128) = v33;
      sub_1BF43E550();
      v34 = sub_1BF4E8E14();
    }

    else
    {

      return 0;
    }

    return v34;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_20;
  }

LABEL_3:
  if (v4 >= 1)
  {
    v5 = 0;
    v6 = a1 & 0xC000000000000001;
    v35 = v3;
    while (1)
    {
      if (v6)
      {
        v8 = MEMORY[0x1BFB59570](v5, a1);
      }

      else
      {
        v8 = *(a1 + 8 * v5 + 32);
      }

      if (*(v8 + 112) <= 0.0)
      {
        if (qword_1EDC9EFF0 != -1)
        {
          swift_once();
        }

        v18 = sub_1BF4E7B54();
        __swift_project_value_buffer(v18, qword_1EDCA6A90);

        v11 = sub_1BF4E7B34();
        v19 = sub_1BF4E8E54();

        if (!os_log_type_enabled(v11, v19))
        {
          goto LABEL_6;
        }

        v13 = swift_slowAlloc();
        v20 = swift_slowAlloc();
        *v13 = 136446210;
        v21 = *(v8 + 16);
        v22 = *(v8 + 32);
        v23 = *(v8 + 48);
        *(v43 + 9) = *(v8 + 57);
        v24 = *(v43 + 9);
        v42 = v22;
        v43[0] = v23;
        v40 = v20;
        v41 = v21;
        *&v39[9] = v24;
        v37 = *(v8 + 16);
        v38 = *(v8 + 32);
        *v39 = *(v8 + 48);
        sub_1BF3EE1EC(&v41, &v44);
        v25 = PowerlogWidgetViewIdentity.description.getter();
        v27 = v26;
        v44 = v37;
        v45 = v38;
        v46[0] = *v39;
        *(v46 + 9) = *&v39[9];
        sub_1BF3EE248(&v44);
        v28 = sub_1BF38D65C(v25, v27, &v40);

        *(v13 + 4) = v28;
        v6 = a1 & 0xC000000000000001;
        _os_log_impl(&dword_1BF389000, v11, v19, "Dropped view entry for identity: [%{public}s] because it was incomplete.", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v20);
      }

      else
      {
        v9 = sub_1BF47D47C(v8);
        [v3 addObject_];

        if (qword_1EDC9EFF0 != -1)
        {
          swift_once();
        }

        v10 = sub_1BF4E7B54();
        __swift_project_value_buffer(v10, qword_1EDCA6A90);

        v11 = sub_1BF4E7B34();
        v12 = sub_1BF4E8E54();

        if (!os_log_type_enabled(v11, v12))
        {
          goto LABEL_6;
        }

        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v40 = v14;
        *v13 = 136446210;
        *&v44 = 0;
        *(&v44 + 1) = 0xE000000000000000;
        sub_1BF4E92E4();
        v36 = v44;
        MEMORY[0x1BFB58C90](0xD00000000000001CLL, 0x80000001BF4F9FB0);
        *(v46 + 9) = *(v8 + 57);
        v46[0] = *(v8 + 48);
        v45 = *(v8 + 32);
        v44 = *(v8 + 16);
        v41 = v44;
        v42 = v45;
        v43[0] = v46[0];
        *(v43 + 9) = *(v46 + 9);
        sub_1BF4E9404();
        MEMORY[0x1BFB58C90](0x7363697274656D20, 0xE90000000000003DLL);
        v15 = *(v8 + 96);
        v46[2] = *(v8 + 80);
        v46[3] = v15;
        v47 = *(v8 + 112);
        v16 = sub_1BF408590();
        MEMORY[0x1BFB58C90](v16);

        MEMORY[0x1BFB58C90](62, 0xE100000000000000);
        v17 = sub_1BF38D65C(v36, *(&v36 + 1), &v40);
        v6 = a1 & 0xC000000000000001;

        *(v13 + 4) = v17;
        _os_log_impl(&dword_1BF389000, v11, v12, "Flushing powerlog view entry: %{public}s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v14);
      }

      MEMORY[0x1BFB5A5D0]();
      v7 = v13;
      v3 = v35;
      MEMORY[0x1BFB5A5D0](v7, -1, -1);
LABEL_6:

      if (v4 == ++v5)
      {
        goto LABEL_20;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BF47DFAC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [v2 extensionIdentity];
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  v4 = sub_1BF4E76B4();
  v5 = MEMORY[0x1E69E6158];
  v58 = MEMORY[0x1E69E6158];
  *&v57 = v4;
  *(&v57 + 1) = v6;
  swift_endAccess();

  sub_1BF38EB2C(&v57, v56);
  v7 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v56, 0x4449656C646E7562, 0xE800000000000000, isUniquelyReferenced_nonNull_native, v9);
  v59 = v7;
  v10 = [v2 kind];
  v11 = sub_1BF4E8914();
  v13 = v12;

  v58 = MEMORY[0x1E69E67B0];
  v14 = swift_allocObject();
  *&v57 = v14;
  v15 = sub_1BF39DC9C(6uLL, v11, v13);
  v17 = v16;
  v19 = v18;
  v21 = v20;

  v14[2] = v15;
  v14[3] = v17;
  v14[4] = v19;
  v14[5] = v21;
  sub_1BF38EB2C(&v57, v56);
  v22 = v59;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v56, 1684957547, 0xE400000000000000, v23, v24);
  v25 = *(a1 + 40);
  v26 = *(a1 + 48);
  v58 = v5;
  *&v57 = v25;
  *(&v57 + 1) = v26;
  sub_1BF38EB2C(&v57, v56);

  v27 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v56, 0x696669746E656469, 0xEA00000000007265, v27, v28);
  v59 = v22;
  v30 = *(a1 + 96);
  if (!v30)
  {
    sub_1BF47ACEC(1953722216, 0xE400000000000000, &v57, v29);
    sub_1BF38C9B4(&v57, &qword_1EBDD8AD0, &unk_1BF4F53F0);
    v34 = *(a1 + 64);
    if (!v34)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v31 = *(a1 + 88);
  v58 = v5;
  *&v57 = v31;
  *(&v57 + 1) = v30;
  sub_1BF38EB2C(&v57, v56);

  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v56, 1953722216, 0xE400000000000000, v32, v33);
  v59 = v22;
  v34 = *(a1 + 64);
  if (v34)
  {
LABEL_3:
    v35 = *(a1 + 56);
    v58 = v5;
    *&v57 = v35;
    *(&v57 + 1) = v34;
    sub_1BF38EB2C(&v57, v56);

    v36 = swift_isUniquelyReferenced_nonNull_native();
    sub_1BF3D67F0(v56, 0xD000000000000014, 0x80000001BF4FC820, v36, v37);
  }

LABEL_5:
  v38 = *(a1 + 112);
  v39 = MEMORY[0x1E69E6530];
  v58 = MEMORY[0x1E69E6530];
  *&v57 = v38;
  sub_1BF38EB2C(&v57, v56);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v56, 0x6E696E69616D6572, 0xEF74656764754267, v40, v41);
  v42 = (*(a1 + 104) & 1) == 0;
  v58 = v39;
  *&v57 = v42;
  sub_1BF38EB2C(&v57, v56);
  v43 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v56, 1953722211, 0xE400000000000000, v43, v44);
  v45 = qword_1BF4F3D90[*(a1 + 105)];
  v58 = v39;
  *&v57 = v45;
  sub_1BF38EB2C(&v57, v56);
  v46 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v56, 0x6E6F73616572, 0xE600000000000000, v46, v47);
  v48 = *(a1 + 120);
  v58 = MEMORY[0x1E69E63B0];
  *&v57 = v48;
  sub_1BF38EB2C(&v57, v56);
  v49 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v56, 0x6F69747563657865, 0xED0000656D69546ELL, v49, v50);
  v51 = *(a1 + 128);
  v58 = v39;
  *&v57 = v51;
  sub_1BF38EB2C(&v57, v56);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  sub_1BF3D67F0(v56, 0x616552726F727265, 0xEB000000006E6F73, v52, v53);
  v54 = sub_1BF4E8744();

  return v54;
}

id sub_1BF47E4BC(unint64_t a1)
{
  result = [objc_allocWithZone(MEMORY[0x1E695DF70]) init];
  v4 = result;
  if (a1 >> 62)
  {
    result = sub_1BF4E9204();
    v5 = result;
    if (!result)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_14;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return result;
  }

  v6 = 0;
  v7 = a1 & 0xC000000000000001;
  v8 = &off_1E80BD000;
  *&v3 = 136446210;
  v29 = v3;
  v30 = v4;
  v31 = v5;
  do
  {
    if (v7)
    {
      v9 = MEMORY[0x1BFB59570](v6, a1);
    }

    else
    {
      v9 = *(a1 + 8 * v6 + 32);
    }

    v10 = sub_1BF47DFAC(v9);
    [v4 v8[99]];

    if (qword_1EDC9EFF0 != -1)
    {
      swift_once();
    }

    v11 = sub_1BF4E7B54();
    __swift_project_value_buffer(v11, qword_1EDCA6A90);

    v12 = sub_1BF4E7B34();
    v13 = sub_1BF4E8E54();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v32 = v15;
      *v14 = v29;
      v16 = sub_1BF479478();
      v18 = v7;
      v19 = a1;
      v20 = sub_1BF38D65C(v16, v17, &v32);

      *(v14 + 4) = v20;
      a1 = v19;
      v7 = v18;
      _os_log_impl(&dword_1BF389000, v12, v13, "Flushing powerlog update entry: %{public}s", v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v15);
      v21 = v15;
      v4 = v30;
      v5 = v31;
      MEMORY[0x1BFB5A5D0](v21, -1, -1);
      v22 = v14;
      v8 = &off_1E80BD000;
      MEMORY[0x1BFB5A5D0](v22, -1, -1);
    }

    ++v6;
  }

  while (v5 != v6);
LABEL_14:
  if ([v4 count])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9348, &qword_1BF4F0B98);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_1BF4ECFE0;
    v24 = MEMORY[0x1E69E6158];
    *(v23 + 56) = MEMORY[0x1E69E6158];
    *(v23 + 32) = 0x7374617473;
    *(v23 + 40) = 0xE500000000000000;
    [v4 copy];
    sub_1BF4E9164();
    swift_unknownObjectRelease();
    *(v23 + 120) = v24;
    *(v23 + 96) = 0x6D617473656D6974;
    *(v23 + 104) = 0xE900000000000070;
    v25 = [objc_allocWithZone(MEMORY[0x1E695DF00]) init];
    [v25 timeIntervalSince1970];
    v27 = v26;

    *(v23 + 152) = MEMORY[0x1E69E63B0];
    *(v23 + 128) = v27;
    sub_1BF43E550();
    v28 = sub_1BF4E8E14();
  }

  else
  {

    return 0;
  }

  return v28;
}

uint64_t sub_1BF47E878(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1BF47E8D0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1BF47ECA0(0);
  }

  return result;
}

uint64_t sub_1BF47E92C(void *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  v5 = *(a2 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity);
  MEMORY[0x1EEE9AC00](a1);
  v4[2] = &v5;
  return sub_1BF4B93C4(sub_1BF480590, v4, v2) & 1;
}

double sub_1BF47E9CC(uint64_t a1, uint64_t a2)
{
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v3 = sub_1BF4E7B54();
  __swift_project_value_buffer(v3, qword_1EDCA6AA8);

  v4 = sub_1BF4E7B34();
  v5 = sub_1BF4E8E84();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138543362;
    v8 = *(a2 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity);
    *(v6 + 4) = v8;
    *v7 = v8;
    v9 = v8;
    _os_log_impl(&dword_1BF389000, v4, v5, "Per app language override changed for extension: %{public}@", v6, 0xCu);
    sub_1BF38C9B4(v7, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v7, -1, -1);
    MEMORY[0x1BFB5A5D0](v6, -1, -1);
  }

  return sub_1BF47ECA0(0);
}

void sub_1BF47EB24(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v3 = *(v2 + 16);
    if (v3)
    {
      v4 = 0;
      v5 = v2 + 32;
      while (v4 < *(v2 + 16))
      {
        sub_1BF38E49C(v5, v10);
        sub_1BF3F1508();
        v6 = v11;
        v7 = v12;
        __swift_project_boxed_opaque_existential_1(v10, v11);
        v8 = (*(v7 + 40))(v6, v7);
        v9 = sub_1BF4E90A4();

        if (v9)
        {
          sub_1BF38E60C(v10, v13);
          sub_1BF38C9B4(v13, &unk_1EBDD91B0, &unk_1BF4F0720);
          sub_1BF47ECA0(0);

          return;
        }

        ++v4;
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        v5 += 40;
        if (v3 == v4)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:

      v14 = 0;
      memset(v13, 0, sizeof(v13));
      sub_1BF38C9B4(v13, &unk_1EBDD91B0, &unk_1BF4F0720);
    }
  }
}

double sub_1BF47ECA0(int a1)
{
  v2 = v1;
  v37 = a1;
  v3 = sub_1BF4E7F64();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9290, &qword_1BF4EE4B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A38, &unk_1BF4EC4D0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = *(v2 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity);
  v15 = *MEMORY[0x1E69941B0];
  swift_beginAccess();
  sub_1BF40A05C(v14 + v15, v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1BF38C9B4(v9, &qword_1EBDD9290, &qword_1BF4EE4B0);
    goto LABEL_13;
  }

  (*(v11 + 32))(v13, v9, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8A30, &qword_1BF4F3E50);
  v16 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1BF4EBEF0;
  (*(v11 + 16))(v17 + v16, v13, v10);
  v18 = _sSo8NSLocaleC9ChronoKitE18currentLocaleToken3forSDy0B8Services15TypedIdentifierVyAF0J4TypeO6BundleO9ContainerOGAC0eF10DescriptorVGSayAOG_tFZ_0(v17);
  swift_setDeallocating();
  v19 = v17 + v16;
  v20 = *(v11 + 8);
  v20(v19, v10);
  swift_deallocClassInstance();
  if (!*(v18 + 16) || (v21 = sub_1BF3EC78C(v13), (v22 & 1) == 0))
  {

LABEL_12:
    v20(v13, v10);
    goto LABEL_13;
  }

  v23 = (*(v18 + 56) + 24 * v21);
  v24 = v23[1];
  v25 = v23[2];
  v35 = *v23;
  v36 = v24;
  sub_1BF3D8864(v35, v24);

  strcpy(v38, "AppleLanguages");
  HIBYTE(v38[1]) = -18;
  sub_1BF4E9274();
  if (!*(v25 + 16) || (v26 = sub_1BF3EC854(v39), (v27 & 1) == 0))
  {
    sub_1BF3B03C0(v35, v36);

    sub_1BF3EE198(v39);
    goto LABEL_12;
  }

  sub_1BF38D324(*(v25 + 56) + 32 * v26, v40);
  sub_1BF3EE198(v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9BB0, &qword_1BF4EC140);
  if (swift_dynamicCast())
  {
    v28 = *(v38[0] + 16);

    if (v28)
    {
      v29 = *(v2 + 24);
      os_unfair_lock_lock(*(v29 + 16));
      v34 = v20;
      v30 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
      swift_beginAccess();
      (*(v4 + 16))(v6, v2 + v30, v3);
      sub_1BF47F310(v6, v2, v35, v36, v25, v37 & 1);
      swift_beginAccess();
      (*(v4 + 40))(v2 + v30, v6, v3);
      swift_endAccess();
      os_unfair_lock_unlock(*(v29 + 16));

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
      sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
      sub_1BF4E7C74();

      sub_1BF3B03C0(v35, v36);

      v34(v13, v10);
      return result;
    }
  }

  v20(v13, v10);
  sub_1BF3B03C0(v35, v36);

LABEL_13:
  v32 = *(v2 + 24);
  os_unfair_lock_lock(*(v32 + 16));
  v33 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  swift_beginAccess();
  (*(v4 + 16))(v6, v2 + v33, v3);
  sub_1BF47F310(v6, v2, 0, 0, 0, v37 & 1);
  swift_beginAccess();
  (*(v4 + 40))(v2 + v33, v6, v3);
  swift_endAccess();
  os_unfair_lock_unlock(*(v32 + 16));

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  sub_1BF38C8B4(&qword_1EDC9FD90, &unk_1EBDD9110, &qword_1BF4EEFA0, MEMORY[0x1E695BF80]);
  sub_1BF4E7C74();

  return result;
}

uint64_t sub_1BF47F310(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6)
{
  v68 = sub_1BF4E7F64();
  v12 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v14 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = a2;
  v15 = (a2 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__systemProvider);
  v17 = *(a2 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__systemProvider + 24);
  v16 = *(a2 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__systemProvider + 32);
  __swift_project_boxed_opaque_existential_1(v15, v17);
  (*(v16 + 8))(v17, v16);
  v70 = a1;
  v18 = sub_1BF4E7EF4();
  if (!a5)
  {
    if (v19 >> 60 == 15)
    {
      goto LABEL_6;
    }

    v23 = 0;
    v22 = 0xF000000000000000;
    goto LABEL_11;
  }

  v20 = v18;
  v21 = v19;
  sub_1BF3D8864(a3, a4);
  v19 = v21;
  if (v21 >> 60 == 15)
  {
    v22 = a4;
    v23 = a3;
    v18 = v20;
    if (a4 >> 60 != 15)
    {
      goto LABEL_11;
    }

LABEL_6:
    v24.n128_f64[0] = sub_1BF3DB210(v18, v19);
    goto LABEL_19;
  }

  v22 = a4;
  v23 = a3;
  v18 = v20;
  if (a4 >> 60 == 15)
  {
LABEL_11:
    sub_1BF3DB210(v18, v19);
    v24.n128_f64[0] = sub_1BF3DB210(v23, v22);
    if (a5)
    {
      goto LABEL_12;
    }

    if ((a6 & 1) == 0)
    {
      v66 = sub_1BF4E7EF4();
      v47 = v46;
      v48 = v70;
      v49 = sub_1BF4E7EF4();
      v51 = v50;
      v67 = *(v12 + 8);
      v67(v48, v68);
      v52 = v66;
      LODWORD(v65) = sub_1BF408374(v66, v47, v49, v51);
      sub_1BF3B03C0(v49, v51);
      sub_1BF3B03C0(v52, v47);
      if ((v65 & 1) == 0)
      {
        if (qword_1EDC9EFF8 != -1)
        {
          swift_once();
        }

        v53 = sub_1BF4E7B54();
        __swift_project_value_buffer(v53, qword_1EDCA6AA8);
        v54 = v69;

        v55 = sub_1BF4E7B34();
        v56 = sub_1BF4E8E84();

        v66 = v55;
        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          *v57 = 138543362;
          v59 = *(v54 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity);
          *(v57 + 4) = v59;
          *v58 = v59;
          v60 = v59;
          v61 = v56;
          v62 = v66;
          _os_log_impl(&dword_1BF389000, v66, v61, "No language override found for %{public}@", v57, 0xCu);
          sub_1BF38C9B4(v58, &unk_1EBDD9260, &qword_1BF4EC380);
          MEMORY[0x1BFB5A5D0](v58, -1, -1);
          MEMORY[0x1BFB5A5D0](v57, -1, -1);
        }

        else
        {
        }
      }

      v28 = v68;
      goto LABEL_17;
    }

LABEL_19:
    v43 = *(v12 + 8);
    v44 = v70;
    v28 = v68;
    v43(v70, v68, v24);
    goto LABEL_20;
  }

  v25 = v19;
  sub_1BF3D8864(v20, v19);
  sub_1BF48055C(a3, a4);
  v26 = sub_1BF408374(v20, v25, a3, a4);
  sub_1BF3DB210(a3, a4);
  sub_1BF3B03C0(v20, v25);
  sub_1BF3DB210(a3, a4);
  v24.n128_f64[0] = sub_1BF3DB210(v20, v25);
  if (v26)
  {
    goto LABEL_19;
  }

LABEL_12:
  sub_1BF3D8864(a3, a4);
  v27 = *(v12 + 8);

  v28 = v68;
  v67 = v27;
  v27(v70, v68);
  if (qword_1EDC9EFF8 != -1)
  {
    swift_once();
  }

  v29 = sub_1BF4E7B54();
  __swift_project_value_buffer(v29, qword_1EDCA6AA8);
  sub_1BF4804DC(a3, a4, a5);

  v30 = sub_1BF4E7B34();
  v31 = sub_1BF4E8E84();

  sub_1BF48051C(a3, a4, a5);
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v65 = v30;
    v33 = v64;
    v66 = swift_slowAlloc();
    v71 = v66;
    v72[0] = 0;
    *v32 = 138543618;
    v34 = *(v69 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity);
    *(v32 + 4) = v34;
    *v33 = v34;
    *(v32 + 12) = 2082;
    v72[1] = 0xE000000000000000;
    sub_1BF4804DC(a3, a4, a5);
    v35 = v34;
    LOBYTE(v33) = v31;
    sub_1BF4E92E4();

    strcpy(v72, "<LocaleToken: ");
    HIBYTE(v72[1]) = -18;
    v36 = sub_1BF4E71B4();
    MEMORY[0x1BFB58C90](v36);

    MEMORY[0x1BFB58C90](8250, 0xE200000000000000);
    v37 = sub_1BF4E8774();
    MEMORY[0x1BFB58C90](v37);

    MEMORY[0x1BFB58C90](62, 0xE100000000000000);
    sub_1BF48051C(a3, a4, a5);
    v38 = sub_1BF38D65C(v72[0], v72[1], &v71);

    *(v32 + 14) = v38;
    v39 = v33;
    v30 = v65;
    _os_log_impl(&dword_1BF389000, v65, v39, "Language override detected for %{public}@: %{public}s", v32, 0x16u);
    v40 = v64;
    sub_1BF38C9B4(v64, &unk_1EBDD9260, &qword_1BF4EC380);
    MEMORY[0x1BFB5A5D0](v40, -1, -1);
    v41 = v66;
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x1BFB5A5D0](v41, -1, -1);
    v42 = v32;
    v28 = v68;
    MEMORY[0x1BFB5A5D0](v42, -1, -1);
  }

  sub_1BF48051C(a3, a4, a5);

LABEL_17:
  v43 = v67;
  v44 = v70;
LABEL_20:
  (*(v12 + 16))(v44, v14, v28);
  v72[0] = a3;
  v72[1] = a4;
  v72[2] = a5;
  sub_1BF47FA44(v72);
  return (v43)(v14, v28);
}

uint64_t sub_1BF47FA44(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = (v1 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager);
  v6 = *(v1 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager + 24);
  v7 = *(v1 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager + 32);
  __swift_project_boxed_opaque_existential_1((v1 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager), v6);
  ExtensionManaging.extension(for:)(*(v1 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity), v6, v7);
  if (!v21)
  {
    return sub_1BF38C9B4(v20, &unk_1EBDD91B0, &unk_1BF4F0720);
  }

  sub_1BF38E60C(v20, v23);
  if (v4)
  {
    sub_1BF3D8864(v2, v3);
    sub_1BF4E7F04();
  }

  sub_1BF4E8194();
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8B48, &unk_1BF4EC990);
  sub_1BF4E76B4();
  swift_endAccess();
  v8 = v24;
  v9 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v9 + 224))(v8, v9);
  v11 = v24;
  v10 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  (*(v10 + 232))(v11, v10);
  sub_1BF4E8184();

  sub_1BF4E7E94();
  v12 = v5[3];
  v13 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v12);
  swift_beginAccess();
  v14 = sub_1BF4E76B4();
  v16 = v15;
  swift_endAccess();
  (*(v13 + 40))(v20, v14, v16, v12, v13);

  v17 = v21;
  if (v21)
  {
    v18 = v22;
    __swift_project_boxed_opaque_existential_1(v20, v21);
    (*(v18 + 216))(v17, v18);
    __swift_destroy_boxed_opaque_existential_1Tm(v20);
  }

  else
  {
    sub_1BF38C9B4(v20, &unk_1EBDD91B0, &unk_1BF4F0720);
  }

  sub_1BF4E7EE4();

  return __swift_destroy_boxed_opaque_existential_1Tm(v23);
}

uint64_t sub_1BF47FD0C()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__systemProvider));
}

uint64_t sub_1BF47FD6C()
{

  v1 = OBJC_IVAR____TtC9ChronoKit19EnvironmentProvider__lock_environmentValues;
  v2 = sub_1BF4E7F64();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager;

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + v3));

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__systemProvider));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for BundleEnvironmentProvider(uint64_t a1)
{
  result = qword_1EDC985F8;
  if (!qword_1EDC985F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1BF47FF20(void *a1, void *a2, void *a3)
{
  v4 = v3;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD97F8, &unk_1BF4F2B88);
  v8 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v10 = &v22 - v9;
  *(v4 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__subscriptions) = MEMORY[0x1E69E7CD0];
  *(v4 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionIdentity) = a1;
  sub_1BF38E49C(a2, v4 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__systemProvider);
  sub_1BF38E49C(a3, v4 + OBJC_IVAR____TtC9ChronoKit25BundleEnvironmentProvider__extensionManager);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD9110, &qword_1BF4EEFA0);
  swift_allocObject();
  v11 = a1;
  *(v4 + 16) = sub_1BF4E7C34();
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *v13 = 0;
  *(v12 + 16) = v13;
  *(v4 + 24) = v12;
  sub_1BF4E7F54();
  v14 = a2[3];
  v15 = a2[4];
  v24 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v14);
  v16 = *(v15 + 16);
  swift_retain_n();
  v25 = v16(v14, v15);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8F30, &unk_1BF4EF080);
  sub_1BF38C8B4(&qword_1EDC9EF90, &qword_1EBDD8F30, &unk_1BF4EF080, MEMORY[0x1E695BED8]);
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  if (qword_1EDC99408 != -1)
  {
    swift_once();
  }

  v25 = qword_1EDC99410;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9808, &qword_1BF4F7200);
  sub_1BF38C8B4(&qword_1EDC9D3B8, &qword_1EBDD9808, &qword_1BF4F7200, MEMORY[0x1E695BF88]);
  v25 = sub_1BF4E7C84();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9810, &qword_1BF4F2D00);
  v17 = MEMORY[0x1E695BED8];
  sub_1BF38C8B4(&qword_1EDC9D3E8, &qword_1EBDD9810, &qword_1BF4F2D00, MEMORY[0x1E695BED8]);
  sub_1BF4E7CD4();

  sub_1BF38C8B4(&qword_1EDC9D440, &qword_1EBDD97F8, &unk_1BF4F2B88, MEMORY[0x1E695BDE0]);
  v18 = v23;
  sub_1BF4E7D14();

  (*(v8 + 8))(v10, v18);
  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  v19 = a3[3];
  v20 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v19);
  v25 = (*(v20 + 64))(v19, v20);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD95C0, &unk_1BF4F1A68);
  sub_1BF38C8B4(&qword_1EDC9D3F0, &qword_1EBDD95C0, &unk_1BF4F1A68, v17);
  sub_1BF4E7D14();

  swift_beginAccess();
  sub_1BF4E7BC4();
  swift_endAccess();

  sub_1BF47ECA0(1);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(v24);
  return v4;
}

double sub_1BF4804DC(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1BF3D8864(a1, a2);
  }

  return result;
}

uint64_t sub_1BF48051C(uint64_t result, unint64_t a2, uint64_t a3)
{
  if (a3)
  {
    sub_1BF3B03C0(result, a2);
  }

  return result;
}

uint64_t sub_1BF48055C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BF3D8864(result, a2);
  }

  return result;
}

uint64_t sub_1BF48063C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (a3 + 64);
  v6 = *(a3 + 16) + 1;
  while (--v6)
  {
    v7 = *(v5 - 2);
    v8 = *(v5 - 1);
    v9 = *v5;
    if (*(v5 - 4) != a1 || *(v5 - 3) != a2)
    {
      v5 += 40;
      if ((sub_1BF4E9734() & 1) == 0)
      {
        continue;
      }
    }

    sub_1BF3D8840(v7, v8, v9);

    return v7;
  }

  return 0;
}

uint64_t (*sub_1BF48070C(uint64_t (**a1)(), void *a2))()
{
  if (MEMORY[0x1E69E7D08])
  {
    result = swift_coroFrameAlloc();
  }

  else
  {
    result = malloc(0x28uLL);
  }

  v6 = result;
  *a1 = result;
  if (*a2 >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    v7 = *v2 + 40 * *a2;
    v8 = *(v7 + 48);
    *(result + 3) = v8;
    v9 = *(v7 + 56);
    *(result + 4) = v9;
    v10 = *(v7 + 64);
    *(result + 17) = v10;

    sub_1BF3D8840(v8, v9, v10);

    *v6 = v8;
    *(v6 + 1) = v9;
    *(v6 + 16) = v10;
    return sub_1BF4807E4;
  }

  return result;
}

void sub_1BF4807E4(uint64_t *a1)
{
  v1 = *a1;
  sub_1BF3D88B8(*(*a1 + 24), *(v1 + 32), *(v1 + 17));

  free(v1);
}

void sub_1BF480824(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  if (*a1 < 0 || (v4 = a1[1], v5 = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
    a2[2] = v5;
  }
}

double sub_1BF480850@<D0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = v2;

  return result;
}

uint64_t *sub_1BF480878@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *result;
    if (!a2)
    {
LABEL_5:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
      v3 += a2;
      goto LABEL_5;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1BF4808A8@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = sub_1BF4810F4(*a1, a2, *a3);
  *a4 = result;
  *(a4 + 8) = v6 & 1;
  return result;
}

uint64_t sub_1BF4808E0(void *a1, void *a2)
{
  v2 = *a1;
  v3 = *a2;
  v5 = __OFSUB__(*a2, *a1);
  result = *a2 - *a1;
  if (result < 0 != v5)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v5 = __OFSUB__(v2, v3);
  v6 = v2 - v3;
  if (!v6)
  {
    return 0;
  }

  if (v6 < 0 == v5)
  {
    goto LABEL_9;
  }

  if (v6 < 0x8000000000000001)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t *sub_1BF480920(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1BF48093C(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1BF480958(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1BF480974@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_1BF48098C(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_1BF4809B8()
{
  v1 = sub_1BF3FEAB0(*v0);

  return v1;
}

unint64_t sub_1BF480A20()
{
  result = qword_1EBDD9910;
  if (!qword_1EBDD9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9910);
  }

  return result;
}

unint64_t sub_1BF480B08(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v21 = MEMORY[0x1E69E7CC0];
    sub_1BF3E147C(0, v1, 0);
    v2 = v21;
    for (i = a1 + 32; ; i += 48)
    {
      sub_1BF38C94C(i, v20, &qword_1EBDD90E8, &qword_1BF4F06C0);
      sub_1BF38C94C(v20, &v18, &qword_1EBDD90E8, &qword_1BF4F06C0);

      v5 = sub_1BF4296A8(v19);
      if (v7 == -1)
      {
        break;
      }

      v8 = v5;
      v9 = v6;
      v10 = v7;
      v18 = v20[0];
      v19[0] = v20[1];
      v19[1] = v20[2];
      v11 = v20[0];
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      v21 = v2;
      v13 = *(v2 + 16);
      v12 = *(v2 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1BF3E147C((v12 > 1), v13 + 1, 1);
        v2 = v21;
      }

      *(v2 + 16) = v13 + 1;
      v14 = v2 + 40 * v13;
      *(v14 + 32) = v11;
      *(v14 + 48) = v8;
      *(v14 + 56) = v9;
      *(v14 + 64) = v10;
      if (!--v1)
      {
        return v2;
      }
    }

    sub_1BF38C94C(v20, &v18, &qword_1EBDD90E8, &qword_1BF4F06C0);

    sub_1BF4E92E4();

    v15 = sub_1BF4E9894();
    MEMORY[0x1BFB58C90](v15);

    v2 = 0x80000001BF4FC9D0;
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    sub_1BF4811C4();
    swift_allocError();
    *v16 = 0xD00000000000002ELL;
    v16[1] = 0x80000001BF4FC9D0;
    swift_willThrow();
    sub_1BF38C9B4(v20, &qword_1EBDD90E8, &qword_1BF4F06C0);
  }

  return v2;
}

unint64_t sub_1BF480D60(void *a1)
{
  v3 = [a1 count];
  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_15:
    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    sub_1BF4E92E4();
    MEMORY[0x1BFB58C90](0xD000000000000035, 0x80000001BF4FC920);
    *&v20 = v1;
    v17 = sub_1BF4E96A4();
    MEMORY[0x1BFB58C90](v17);

    goto LABEL_17;
  }

  v4 = v3;
  if (v3)
  {
    v1 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v6 = [a1 keyAtIndex_];
      if (!v6)
      {
        goto LABEL_15;
      }

      v7 = v6;
      v8 = sub_1BF4E8914();
      v10 = v9;

      if (![a1 objectAtIndex_])
      {
        break;
      }

      sub_1BF4E9164();
      swift_unknownObjectRelease();
      sub_1BF38EB2C(&v22, v24);
      *&v22 = v8;
      *(&v22 + 1) = v10;
      sub_1BF38D324(v24, &v23);
      sub_1BF38C94C(&v22, &v20, &qword_1EBDD87D0, &qword_1BF4EB2E8);
      v18 = v20;
      sub_1BF38EB2C(&v21, v19);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = sub_1BF43209C(0, v5[2] + 1, 1, v5);
      }

      v12 = v5[2];
      v11 = v5[3];
      if (v12 >= v11 >> 1)
      {
        v5 = sub_1BF43209C((v11 > 1), v12 + 1, 1, v5);
      }

      ++v1;
      sub_1BF38C9B4(&v22, &qword_1EBDD87D0, &qword_1BF4EB2E8);
      __swift_destroy_boxed_opaque_existential_1Tm(v24);
      v5[2] = v12 + 1;
      v13 = &v5[6 * v12];
      v14 = v19[1];
      v13[3] = v19[0];
      v13[4] = v14;
      v13[2] = v18;
      if (v4 == v1)
      {
        goto LABEL_13;
      }
    }

    *&v22 = 0;
    *(&v22 + 1) = 0xE000000000000000;
    sub_1BF4E92E4();
    MEMORY[0x1BFB58C90](0xD000000000000031, 0x80000001BF4FC960);
    MEMORY[0x1BFB58C90](v8, v10);
    while (1)
    {
LABEL_17:
      sub_1BF4E9464();
      __break(1u);
      *&v22 = 0;
      *(&v22 + 1) = 0xE000000000000000;
      sub_1BF4E92E4();
      MEMORY[0x1BFB58C90](0xD000000000000027, 0x80000001BF4FC9A0);
      *&v20 = v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD91C0, &unk_1BF4ED510);
      sub_1BF4E9404();
    }
  }

  v5 = MEMORY[0x1E69E7CC0];
LABEL_13:
  v15 = sub_1BF480B08(v5);

  return v15;
}

unint64_t sub_1BF4810F4(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= a2 - 1)
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

unint64_t sub_1BF4811C4()
{
  result = qword_1EBDD9938;
  if (!qword_1EBDD9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9938);
  }

  return result;
}

unint64_t sub_1BF48123C()
{
  result = qword_1EBDD9940;
  if (!qword_1EBDD9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBDD9940);
  }

  return result;
}

uint64_t static CHDMonotonicTime.distantFuture.getter@<X0>(void *a1@<X8>)
{
  if (qword_1EDC9AA48 != -1)
  {
    v1 = a1;
    result = swift_once();
    a1 = v1;
  }

  *a1 = qword_1EDC9AA50;
  return result;
}

uint64_t static CHDMonotonicTime.earlier(_:_:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *result;
  v5 = *a2;
  if (*(result + 8))
  {
    v6 = *a2;
  }

  else
  {
    v6 = *result;
  }

  v7 = *(result + 8) & *(a2 + 8);
  if ((*(result + 8) & 1) == 0 && (*(a2 + 8) & 1) == 0)
  {
    result = CHDMonotonicTimeLessThan(*a2, v4);
    v7 = 0;
    if (result)
    {
      v6 = v5;
    }

    else
    {
      v6 = v4;
    }
  }

  *a3 = v6;
  *(a3 + 8) = v7;
  return result;
}

uint64_t CHDMonotonicTime.earlier(_:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  if ((*(result + 8) & 1) == 0)
  {
    v5 = *result;
    result = CHDMonotonicTimeLessThan(*result, v4);
    if (result)
    {
      v4 = v5;
    }
  }

  *a2 = v4;
  return result;
}

uint64_t CHDMonotonicTime.description.getter()
{
  v1 = *v0;
  if (qword_1EDC9AA48 != -1)
  {
    swift_once();
  }

  if (CHDMonotonicTimeEqual(v1, qword_1EDC9AA50))
  {
    return 0x46746E6174736964;
  }

  else
  {
    return sub_1BF4E96A4();
  }
}

uint64_t sub_1BF481584()
{
  v1 = *v0;
  if (qword_1EDC9AA48 != -1)
  {
    swift_once();
  }

  if (CHDMonotonicTimeEqual(v1, qword_1EDC9AA50))
  {
    return 0x46746E6174736964;
  }

  else
  {
    return sub_1BF4E96A4();
  }
}

uint64_t CHDMonotonicTimer.__allocating_init(repeat:)(double a1)
{
  if (a1 <= 0.0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v2 = a1 * 1000000000.0;
  if (*&v2 >> 52 > 0x7FEuLL)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v2 <= -1.0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (v2 >= 1.84467441e19)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v1 = v2;
  if ((v2 & 0x8000000000000000) != 0)
  {
    if (qword_1EDC9AA48 == -1)
    {
LABEL_8:
      v3 = qword_1EDC9AA50;
      goto LABEL_9;
    }

LABEL_14:
    swift_once();
    goto LABEL_8;
  }

  v3 = CHDMonotonicTimeFromNow(v2);
LABEL_9:
  type metadata accessor for CHDMonotonicTimer();
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *v6 = 0;
  *(v5 + 16) = v6;
  *(v4 + 24) = v5;
  *(v4 + 32) = 0;
  *(v4 + 40) = v3;
  *(v4 + 48) = v1 & ~(v1 >> 63);
  return v4;
}

uint64_t sub_1BF481764()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + 32);
  os_unfair_lock_unlock(*(v1 + 16));
  return v2;
}

uint64_t CHDMonotonicTimer.deinit()
{
  if (*(v0 + 32) == 1)
  {

    return v0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1BF4817E0()
{
  result = qword_1EDC9AA38;
  if (!qword_1EDC9AA38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9AA38);
  }

  return result;
}

void *WidgetCacheURLProvider.__allocating_init(subdirectory:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[3] = 0;
  v4[2] = 0;
  swift_beginAccess();
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = 0x742D6F6E6F726863;
  v4[5] = 0xEF656E696C656D69;
  return v4;
}

void *WidgetCacheURLProvider.init(subdirectory:)(uint64_t a1, uint64_t a2)
{
  v2[3] = 0;
  v2[2] = 0;
  swift_beginAccess();
  v2[2] = a1;
  v2[3] = a2;
  v2[4] = 0x742D6F6E6F726863;
  v2[5] = 0xEF656E696C656D69;
  return v2;
}

void *sub_1BF4819A0(uint64_t a1, double a2)
{
  v3 = v2;
  v5 = sub_1BF4E7194();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v24[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v24[-v13];
  swift_beginAccess();
  if (*(v3 + 24))
  {
    (*(v6 + 16))(v11, a1, v5);

    sub_1BF4E70A4();

    v15 = *(a1 + *(type metadata accessor for WidgetCacheKey(0) + 20));
    if (v15)
    {
      v16 = v15;
      sub_1BF39D74C(v16);
      sub_1BF4E70A4();
    }

    (*(v6 + 32))(v14, v11, v5);
  }

  else
  {
    (*(v6 + 16))(v14, a1, v5);
  }

  v25 = MEMORY[0x1E69E7CC0];
  v17 = type metadata accessor for WidgetCacheKey(0);
  if (*(a1 + *(v17 + 24)) && *(a1 + *(v17 + 20)))
  {
    sub_1BF39E3D8(a1, v8);
    v18 = sub_1BF4323F4(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v20 = v18[2];
    v19 = v18[3];
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1BF4323F4((v19 > 1), v20 + 1, 1, v18);
    }

    (*(v6 + 8))(v14, v5);
    v18[2] = v20 + 1;
    (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v20, v8, v5);
    return v18;
  }

  else
  {
    v21 = [objc_opt_self() defaultManager];
    v22 = sub_1BF4E8E34();

    if (v22)
    {

      sub_1BF481D7C(v22, v3, &v25);
    }

    (*(v6 + 8))(v14, v5);
  }

  return v25;
}

uint64_t WidgetCacheURLProvider.deinit()
{

  return v0;
}

uint64_t WidgetCacheURLProvider.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1BF481D7C(uint64_t a1, uint64_t a2, size_t *a3)
{
  v44 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD8AD8, &unk_1BF4ED6C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_1BF4E7194();
  v38 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v42 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v34 - v10;
  v12 = sub_1BF4E7004();
  v35 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BF4E8E24();
  v43 = a2;
  swift_beginAccess();
  v16 = sub_1BF48238C(v15);
  sub_1BF4E9104();
  if (v48)
  {
    v17 = (v38 + 56);
    v49 = (v38 + 32);
    v39 = (v38 + 8);
    v36 = (v38 + 16);
    v37 = v11;
    v40 = v16;
    v41 = v14;
    do
    {
      sub_1BF38EB2C(&v47, v46);
      sub_1BF38D324(v46, v45);
      v18 = swift_dynamicCast();
      v19 = *v17;
      if (v18)
      {
        v20 = v12;
        v19(v6, 0, 1, v7);
        v21 = *v49;
        (*v49)(v11, v6, v7);
        sub_1BF4E7174();
        v22 = v11;

        v23 = sub_1BF4E8A74();

        if (v23)
        {
          (*v36)(v42, v22, v7);
          v24 = v44;
          v25 = *v44;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *v24 = v25;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v25 = sub_1BF4323F4(0, v25[2] + 1, 1, v25);
            *v44 = v25;
          }

          v28 = v25[2];
          v27 = v25[3];
          if (v28 >= v27 >> 1)
          {
            v32 = sub_1BF4323F4((v27 > 1), v28 + 1, 1, v25);
            *v44 = v32;
          }

          v29 = v38;
          v30 = v37;
          (*(v38 + 8))(v37, v7);
          v31 = *v44;
          *(v31 + 16) = v28 + 1;
          v11 = v30;
          v21((v31 + ((*(v29 + 80) + 32) & ~*(v29 + 80)) + *(v29 + 72) * v28), v42, v7);
          v12 = v20;
          v14 = v41;
        }

        else
        {
          (*v39)(v22, v7);
          v14 = v41;
          v11 = v22;
        }
      }

      else
      {
        v19(v6, 1, 1, v7);
        sub_1BF3FA9B4(v6);
      }

      __swift_destroy_boxed_opaque_existential_1Tm(v46);
      sub_1BF4E9104();
    }

    while (v48);
  }

  return (*(v35 + 8))(v14, v12);
}

unint64_t sub_1BF48238C(double a1)
{
  result = qword_1EDC9D628;
  if (!qword_1EDC9D628)
  {
    sub_1BF4E7004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDC9D628);
  }

  return result;
}

uint64_t static ActivityVariantKey.mock()@<X0>(uint64_t a1@<X8>)
{
  sub_1BF4E8654();
  v2 = type metadata accessor for ActivityVariantKey(0);
  sub_1BF4E8344();
  if (qword_1EDC9F028 != -1)
  {
    swift_once();
  }

  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBDD85B0, &unk_1BF4EA9E0);
  v4 = __swift_project_value_buffer(v3, qword_1EDC9F030);
  v5 = *(*(v3 - 8) + 16);
  v6 = a1 + *(v2 + 24);

  return v5(v6, v4, v3);
}

void ControlArchive.copyWithUpdatedAssetLibraryPaths(for:cacheManager:)(id *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v8 = v7;
  v9 = v6;
  v110 = a3;
  v106 = a2;
  v85 = sub_1BF4E83F4();
  v96 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v94 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v79 - v16);
  v112 = sub_1BF4E7194();
  v108 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v100 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v98 = &v79 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v111 = &v79 - v22;
  v23 = type metadata accessor for ControlEntryKey(0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v26 = &v79 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = a1;
  v27 = [*a1 extensionIdentity];
  v28 = &v27[*MEMORY[0x1E69941A8]];
  swift_beginAccess();
  v29 = *(v28 + 1);

  if (v29)
  {
    v90 = a6;

    v95 = sub_1BF4E83B4();
    v114 = v95;
    if (qword_1EBDD8578 != -1)
    {
LABEL_33:
      swift_once();
    }

    v30 = sub_1BF4E7B54();
    v31 = __swift_project_value_buffer(v30, qword_1EBDE1ED8);
    sub_1BF4700C0(v109, v26);
    v102 = v31;
    v32 = sub_1BF4E7B34();
    v33 = sub_1BF4E8E54();
    v34 = os_log_type_enabled(v32, v33);
    v93 = a5;
    v83 = v17;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v36 = v8;
      v37 = swift_slowAlloc();
      *v35 = 134349314;
      *(v35 + 4) = *(v95 + 16);
      *(v35 + 12) = 2114;
      v17 = *v26;
      sub_1BF39ABC8(v26);
      *(v35 + 14) = v17;
      *v37 = v17;
      _os_log_impl(&dword_1BF389000, v32, v33, "updating %{public}ld templates for %{public}@", v35, 0x16u);
      sub_1BF38C9B4(v37, &unk_1EBDD9260, &qword_1BF4EC380);
      v38 = v37;
      v8 = v36;
      MEMORY[0x1BFB5A5D0](v38, -1, -1);
      MEMORY[0x1BFB5A5D0](v35, -1, -1);
    }

    else
    {

      sub_1BF39ABC8(v26);
    }

    v40 = v108;
    v91 = v9;
    v92 = a4;
    v41 = sub_1BF4E8394();
    v43 = v41 + 64;
    v42 = *(v41 + 64);
    v107 = v41;
    v44 = 1 << *(v41 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    a5 = v45 & v42;
    swift_beginAccess();
    a4 = 0;
    v46 = (v44 + 63) >> 6;
    v105 = v110 + 24;
    v101 = (v40 + 2);
    v108 = v40 + 1;
    v89 = v96 + 16;
    v88 = (v96 + 8);
    v87 = (v96 + 32);
    *&v47 = 136315138;
    v97 = v47;
    v103 = v46;
    v104 = v43;
LABEL_10:
    v48 = a4;
    while (1)
    {
      if (!a5)
      {
        while (1)
        {
          a4 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (a4 >= v46)
          {

            static ControlArchive.verifyGraphicLocations(for:)(v78);

            sub_1BF4E8384();
            swift_bridgeObjectRelease_n();
            return;
          }

          a5 = *(v43 + 8 * a4);
          ++v48;
          if (a5)
          {
            goto LABEL_17;
          }
        }

        __break(1u);
        goto LABEL_33;
      }

      a4 = v48;
LABEL_17:
      v17 = *(*(v107 + 48) + ((a4 << 9) | (8 * __clz(__rbit64(a5)))));
      ObjectType = swift_getObjectType();
      v50 = v110;
      v51 = *(v110 + 24);

      v52 = v111;
      v51(v109, v17, ObjectType, v50);
      if (v8)
      {
        break;
      }

      a5 &= a5 - 1;
      v53 = sub_1BF4E7124();
      v8 = 0;
      v26 = v112;
      if (v53)
      {
        v64 = v52;
        v65 = [objc_allocWithZone(MEMORY[0x1E696AAE8]) init];
        v9 = sub_1BF4E7094();
        v66 = [v65 _initUniqueWithURL_];

        v67 = *(v95 + 16);
        if (v67)
        {
          v99 = 0;
          v113 = MEMORY[0x1E69E7CC0];
          v68 = v95;

          v86 = v67;
          sub_1BF3E15C0(0, v67, 0);
          v69 = v113;
          v82 = (*(v96 + 80) + 32) & ~*(v96 + 80);
          v70 = v66;
          v71 = v68 + v82;
          v81 = *(v96 + 72);
          v80 = *(v96 + 16);
          v72 = v85;
          v73 = v83;
          v84 = v70;
          do
          {
            v74 = v69;
            v75 = v94;
            v80(v94, v71, v72);
            sub_1BF4E83E4();
            v76 = v75;
            v69 = v74;
            (*v88)(v76, v72);
            v113 = v74;
            v26 = *(v74 + 16);
            v77 = *(v69 + 24);
            if (v26 >= v77 >> 1)
            {
              sub_1BF3E15C0((v77 > 1), v26 + 1, 1);
              v69 = v113;
            }

            *(v69 + 16) = v26 + 1;
            v9 = v81;
            (*v87)(v69 + v82 + v26 * v81, v73, v72);
            v71 += v9;
            v86 = (v86 - 1);
          }

          while (v86);
          (*v108)(v111, v112);

          v8 = v99;
        }

        else
        {

          (*v108)(v64, v26);
          v69 = MEMORY[0x1E69E7CC0];
        }

        v114 = v69;

        v95 = v69;
        v46 = v103;
        v43 = v104;
        goto LABEL_10;
      }

      v17 = v98;
      (*v101)(v98, v52, v26);
      v9 = v52;
      v54 = sub_1BF4E7B34();
      v55 = sub_1BF4E8E64();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        v99 = 0;
        v57 = v56;
        v58 = v17;
        v86 = swift_slowAlloc();
        v113 = v86;
        *v57 = v97;
        v84 = sub_1BF4E7174();
        v26 = v59;
        v17 = v108;
        v9 = *v108;
        (*v108)(v58, v112);
        v60 = sub_1BF38D65C(v84, v26, &v113);

        *(v57 + 4) = v60;
        _os_log_impl(&dword_1BF389000, v54, v55, "no bundle found at %s", v57, 0xCu);
        v61 = v86;
        __swift_destroy_boxed_opaque_existential_1Tm(v86);
        MEMORY[0x1BFB5A5D0](v61, -1, -1);
        v62 = v57;
        v8 = v99;
        MEMORY[0x1BFB5A5D0](v62, -1, -1);

        (v9)(v111, v112);
      }

      else
      {

        v63 = *v108;
        (*v108)(v17, v26);
        v63(v9, v26);
      }

      v48 = a4;
      v46 = v103;
      v43 = v104;
    }
  }

  else
  {
    a6[3] = a4;
    a6[4] = a5;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(a6);
    (*(*(a4 - 8) + 16))(boxed_opaque_existential_0, v9, a4);
  }
}

void static ControlArchive.verifyGraphicLocations(for:)(uint64_t a1)
{
  v47 = sub_1BF4E84A4();
  v2 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = &v40 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1BF4E84D4();
  v4 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v45 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBDD9948, qword_1BF4F4290);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v40 - v7;
  v58 = sub_1BF4E8514();
  v8 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = sub_1BF4E8524();
  v10 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1BF4E83F4();
  v14.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;
  v18 = *(a1 + 16);
  if (v18)
  {
    v20 = *(v13 + 16);
    v19 = v13 + 16;
    v64 = (v19 + 72);
    v65 = v20;
    v63 = *MEMORY[0x1E6985978];
    v53 = *MEMORY[0x1E6985968];
    v44 = *MEMORY[0x1E6985970];
    v43 = (v19 - 8);
    v60 = (v19 + 80);
    v42 = (v4 + 32);
    v41 = (v2 + 8);
    v40 = (v4 + 8);
    v51 = (v8 + 8);
    v52 = (v10 + 32);
    v49 = (v10 + 8);
    v50 = v16;
    v21 = v17 + ((*(v19 + 64) + 32) & ~*(v19 + 64));
    v66 = v19;
    v62 = *(v19 + 56);
    v54 = v12;
    v20(v16, v21, v12, v14);
    while (1)
    {
      v33 = (*v64)(v16, v12);
      if (v33 == v63)
      {
        (*v60)(v16, v12);
        v23 = v55;
        v22 = v56;
        (*v52)(v55, v16, v56);
        v24 = v57;
        sub_1BF4E84E4();
        v25 = v61;
        sub_1BF4E8504();
        v26 = *v51;
        v27 = v58;
        v28 = (*v51)(v24, v58);
        sub_1BF483720(v25, v28);
        sub_1BF38C9B4(v25, &qword_1EBDD9948, qword_1BF4F4290);
        sub_1BF4E84F4();
        sub_1BF4E8504();
        v29 = v26(v24, v27);
        sub_1BF483720(v25, v29);
        v30 = v25;
        v16 = v50;
        sub_1BF38C9B4(v30, &qword_1EBDD9948, qword_1BF4F4290);
        v31 = v22;
        v12 = v54;
        (*v49)(v23, v31);
      }

      else if (v33 == v53)
      {
        (*v60)(v16, v12);
        v34 = v45;
        (*v42)(v45, v16, v59);
        v35 = v46;
        sub_1BF4E84B4();
        v36 = v61;
        sub_1BF4E8494();
        v48 = *v41;
        v37 = v47;
        v38 = v48(v35, v47);
        sub_1BF483720(v36, v38);
        sub_1BF38C9B4(v36, &qword_1EBDD9948, qword_1BF4F4290);
        sub_1BF4E84C4();
        sub_1BF4E8494();
        v39 = v48(v35, v37);
        sub_1BF483720(v36, v39);
        sub_1BF38C9B4(v36, &qword_1EBDD9948, qword_1BF4F4290);
        (*v40)(v34, v59);
      }

      else
      {
        if (v33 != v44)
        {
          sub_1BF4E9724();
          __break(1u);
          return;
        }

        (*v43)(v16, v12);
      }

      v21 += v62;
      if (!--v18)
      {
        return;
      }

      v65(v16, v21, v12, v32);
    }
  }
}