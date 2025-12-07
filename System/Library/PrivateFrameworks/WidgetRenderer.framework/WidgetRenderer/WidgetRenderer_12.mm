double sub_1DAEB0698(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DAEB06F0();
  }

  return result;
}

void sub_1DAEB06F0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CE8, &qword_1DAED6F60);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v51 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B0, &qword_1DAEDE780);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v46 - v5;
  v7 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A800, qword_1DAEDEBB0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v52 = &v46 - v15;
  v16 = sub_1DAED0A7C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = (&v46 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = *(v1 + 16);
  *v20 = v21;
  (*(v17 + 104))(v20, *MEMORY[0x1E69E8020], v16, v18);
  v22 = v21;
  v23 = sub_1DAED0A8C();
  (*(v17 + 8))(v20, v16);
  if (v23)
  {
    v24 = *(v1 + 24);
    os_unfair_lock_lock(*(v24 + 16));
    *(v1 + OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_processQueueEnqueued) = 0;
    os_unfair_lock_unlock(*(v24 + 16));
    os_unfair_lock_lock(*(v24 + 16));
    v25 = [*(v1 + 40) count];
    os_unfair_lock_unlock(*(v24 + 16));
    v26 = v52;
    if (v25 >= 1)
    {
      v49 = v1;
      v50 = (v8 + 48);
      v47 = v13;
      v48 = v7;
      v46 = v24;
      while (1)
      {
        os_unfair_lock_lock(*(v24 + 16));
        sub_1DAEB0CE4(v1, v26);
        os_unfair_lock_unlock(*(v24 + 16));
        sub_1DAD6495C(v26, v13, &qword_1ECC0A800, qword_1DAEDEBB0);
        if ((*v50)(v13, 1, v7) == 1)
        {
          break;
        }

        sub_1DADB23E8(v13, v10, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
        v27 = &v10[*(v7 + 20)];
        v28 = *(v27 + 3);
        v29 = *(v27 + 4);
        __swift_project_boxed_opaque_existential_1(v27, v28);
        (*(v29 + 32))(v54, v28, v29);
        v31 = v55;
        v30 = v56;
        v53 = __swift_project_boxed_opaque_existential_1(v54, v55);
        v32 = v10;
        v33 = *(v27 + 3);
        v34 = *(v27 + 4);
        __swift_project_boxed_opaque_existential_1(v27, v33);
        v35 = (*(v34 + 16))(v33, v34);
        v36 = *(type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0) + 20);
        v37 = sub_1DAECDCEC();
        v38 = v6;
        v39 = *(v37 - 8);
        v40 = &v27[v36];
        v10 = v32;
        v41 = v51;
        (*(v39 + 16))(v51, v40, v37);
        (*(v39 + 56))(v41, 0, 1, v37);
        v6 = v38;
        v42 = *(v30 + 8);
        v43 = v30;
        v1 = v49;
        v42(v35, v41, v32, v31, v43);

        v44 = v41;
        v24 = v46;
        sub_1DAD64398(v44, &qword_1ECC07CE8, &qword_1DAED6F60);
        os_unfair_lock_lock(*(v24 + 16));
        sub_1DAEB0F08(v1, v38);
        os_unfair_lock_unlock(*(v24 + 16));
        v26 = v52;
        sub_1DAD64398(v52, &qword_1ECC0A800, qword_1DAEDEBB0);
        sub_1DADB2450(v32, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
        sub_1DAD64398(v6, &qword_1ECC080B0, &qword_1DAEDE780);
        __swift_destroy_boxed_opaque_existential_1Tm(v54);
        os_unfair_lock_lock(*(v24 + 16));
        v45 = [*(v1 + 40) count];
        os_unfair_lock_unlock(*(v24 + 16));
        v13 = v47;
        v7 = v48;
        if (v45 <= 0)
        {
          return;
        }
      }

      sub_1DAD64398(v26, &qword_1ECC0A800, qword_1DAEDEBB0);
      sub_1DAD64398(v13, &qword_1ECC0A800, qword_1DAEDEBB0);
    }
  }

  else
  {
    __break(1u);

    os_unfair_lock_unlock(*(v23 + 16));
    __break(1u);
  }
}

uint64_t sub_1DAEB0CE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A800, qword_1DAEDEBB0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v8 = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v10 = &v16 - v9;
  if ([*(a1 + 40) firstObject])
  {
    sub_1DAED238C();
    swift_unknownObjectRelease();
  }

  else
  {
    v16 = 0u;
    v17 = 0u;
  }

  v18[0] = v16;
  v18[1] = v17;
  if (*(&v17 + 1))
  {
    v11 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
    v12 = swift_dynamicCast();
    (*(*(v11 - 8) + 56))(v10, v12 ^ 1u, 1, v11);
  }

  else
  {
    sub_1DAD64398(v18, &qword_1ECC0A3A0, &qword_1DAEDFE30);
    v13 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
    (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  }

  sub_1DAD7C48C(v10, v6, &qword_1ECC0A800, qword_1DAEDEBB0);
  v14 = OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_prewarmRequest;
  swift_beginAccess();
  sub_1DADC11D0(v6, a1 + v14);
  swift_endAccess();
  return sub_1DAD6495C(a1 + v14, a2, &qword_1ECC0A800, qword_1DAEDEBB0);
}

uint64_t sub_1DAEB0F08(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080B0, &qword_1DAEDE780);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v28 - v4;
  v5 = type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A800, qword_1DAEDEBB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v31 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v28 - v11;
  v13 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest(0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v28 - v18;
  v20 = OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_prewarmRequest;
  swift_beginAccess();
  sub_1DAD6495C(a1 + v20, v12, &qword_1ECC0A800, qword_1DAEDEBB0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    return sub_1DAD64398(v12, &qword_1ECC0A800, qword_1DAEDEBB0);
  }

  v28 = type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest;
  sub_1DADB23E8(v12, v19, type metadata accessor for LiveWidgetEntryViewableEntryCache.PrewarmRequest);
  v22 = v7;
  sub_1DADBA01C(&v19[*(v13 + 20)], v7, type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey);
  v23 = v29;
  sub_1DAD6495C(v30, v29, &qword_1ECC080B0, &qword_1DAEDE780);
  swift_beginAccess();
  sub_1DADB9CEC(v23, v22);
  swift_endAccess();
  v24 = *(a1 + 40);
  v25 = v28;
  sub_1DADBA01C(v19, v16, v28);
  v26 = v24;
  [v26 removeObject_];

  swift_unknownObjectRelease();
  sub_1DADB2450(v19, v25);
  v27 = v31;
  (*(v14 + 56))(v31, 1, 1, v13);
  swift_beginAccess();
  sub_1DADC11D0(v27, a1 + v20);
  return swift_endAccess();
}

uint64_t sub_1DAEB12B8()
{

  sub_1DAD64398(v0 + OBJC_IVAR____TtC14WidgetRenderer33LiveWidgetEntryViewableEntryCache__lock_prewarmRequest, &qword_1ECC0A800, qword_1DAEDEBB0);

  return swift_deallocClassInstance();
}

uint64_t sub_1DAEB1354(uint64_t a1)
{
  sub_1DAED294C();
  v3 = (v1 + *(a1 + 20));
  type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  sub_1DAECDCEC();
  sub_1DAD94CC0(&qword_1EE00A6F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DAED1C6C();
  sub_1DAED157C();
  sub_1DAD94CC0(&qword_1EE005720, MEMORY[0x1E6985700], MEMORY[0x1E6985710]);
  sub_1DAED1C6C();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 24))(&v7, v4, v5);
  MEMORY[0x1E127E5D0](v7);
  return sub_1DAED297C();
}

uint64_t sub_1DAEB149C(uint64_t a1, uint64_t a2)
{
  v3 = (v2 + *(a2 + 20));
  type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  sub_1DAECDCEC();
  sub_1DAD94CC0(&qword_1EE00A6F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DAED1C6C();
  sub_1DAED157C();
  sub_1DAD94CC0(&qword_1EE005720, MEMORY[0x1E6985700], MEMORY[0x1E6985710]);
  sub_1DAED1C6C();
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  (*(v5 + 24))(&v7, v4, v5);
  return MEMORY[0x1E127E5D0](v7);
}

uint64_t sub_1DAEB15D8(uint64_t a1, uint64_t a2)
{
  sub_1DAED294C();
  v4 = (v2 + *(a2 + 20));
  type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  sub_1DAECDCEC();
  sub_1DAD94CC0(&qword_1EE00A6F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DAED1C6C();
  sub_1DAED157C();
  sub_1DAD94CC0(&qword_1EE005720, MEMORY[0x1E6985700], MEMORY[0x1E6985710]);
  sub_1DAED1C6C();
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v6 + 24))(&v8, v5, v6);
  MEMORY[0x1E127E5D0](v8);
  return sub_1DAED297C();
}

uint64_t sub_1DAEB1774()
{
  sub_1DAED294C();
  sub_1DAECDCEC();
  sub_1DAD94CC0(&qword_1EE00A6F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DAED1C6C();
  sub_1DAED157C();
  sub_1DAD94CC0(&qword_1EE005720, MEMORY[0x1E6985700], MEMORY[0x1E6985710]);
  sub_1DAED1C6C();
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 24))(&v4, v1, v2);
  MEMORY[0x1E127E5D0](v4);
  return sub_1DAED297C();
}

uint64_t sub_1DAEB18AC(uint64_t a1)
{
  sub_1DAECDCEC();
  sub_1DAD94CC0(&qword_1EE00A6F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DAED1C6C();
  sub_1DAED157C();
  sub_1DAD94CC0(&qword_1EE005720, MEMORY[0x1E6985700], MEMORY[0x1E6985710]);
  sub_1DAED1C6C();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 24))(&v5, v2, v3);
  return MEMORY[0x1E127E5D0](v5);
}

uint64_t sub_1DAEB19DC(uint64_t a1)
{
  sub_1DAED294C();
  sub_1DAECDCEC();
  sub_1DAD94CC0(&qword_1EE00A6F8, MEMORY[0x1E6969530], MEMORY[0x1E6969540]);
  sub_1DAED1C6C();
  sub_1DAED157C();
  sub_1DAD94CC0(&qword_1EE005720, MEMORY[0x1E6985700], MEMORY[0x1E6985710]);
  sub_1DAED1C6C();
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  (*(v3 + 24))(&v5, v2, v3);
  MEMORY[0x1E127E5D0](v5);
  return sub_1DAED297C();
}

uint64_t sub_1DAEB1B14(void *a1, void *a2)
{
  v3 = a1[3];
  v4 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v3);
  (*(v4 + 24))(&v9 + 1, v3, v4);
  v5 = BYTE1(v9);
  v6 = a2[3];
  v7 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v6);
  (*(v7 + 24))(&v9, v6, v7);
  if (v5 != v9)
  {
    return 0;
  }

  type metadata accessor for LiveWidgetEntryViewableEntryCache.CacheKey(0);
  if ((sub_1DAED155C() & 1) == 0)
  {
    return 0;
  }

  return sub_1DAECDCAC();
}

uint64_t WidgetViewSecurityPolicyResult.description.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  (*(v2 + 8))(v5, a1);
  if (!EnumCaseMultiPayload)
  {
    return 1702259020;
  }

  if (EnumCaseMultiPayload == 1)
  {
    return 0x6C6F686563616C50;
  }

  return 0x7974706D45;
}

uint64_t WidgetViewSecurityPolicyResult.entryData.getter(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  if (swift_getEnumCaseMultiPayload())
  {
    (*(v7 + 8))(v10, a1);
    return 0;
  }

  else
  {
    (*(v3 + 32))(v5, v10, v2);
    v12 = (*(*(a1 + 24) + 32))(v2);
    (*(v3 + 8))(v5, v2);
    return v12;
  }
}

char *sub_1DAEB1F7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A660, &unk_1DAEDE850);
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

void *sub_1DAEB2070(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A7C0, &unk_1DAEDE9C0);
  v10 = *(sub_1DAECEB5C() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1DAECEB5C() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1DAEB2338(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 253) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 3)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 254;
}

void sub_1DAEB2450(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t DebugOverlayValidationState.hashValue.getter()
{
  v1 = *v0;
  sub_1DAED294C();
  MEMORY[0x1E127E5D0](v1);
  return sub_1DAED297C();
}

unint64_t sub_1DAEB2734()
{
  result = qword_1ECC0A818;
  if (!qword_1ECC0A818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A818);
  }

  return result;
}

id sub_1DAEB290C(void *a1)
{
  *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugTextView] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPausedView] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshottingView] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplayView] = 0;
  *&v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationView] = 0;
  v3 = &v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_debugText];
  *v3 = 0;
  v3[1] = 0;
  v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_animationsPaused] = 0;
  v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_isSnapshotting] = 0;
  v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_inAlwaysOnDisplay] = 0;
  v1[OBJC_IVAR____TtC14WidgetRendererP33_E3A435B0BE3B48C7282CA1845A4013709DebugView_validationState] = 0;
  v6.receiver = v1;
  v6.super_class = type metadata accessor for DebugView();
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

double sub_1DAEB2A14()
{

  return result;
}

id sub_1DAEB2AB4(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

unint64_t sub_1DAEB2B7C()
{
  result = qword_1ECC09E90;
  if (!qword_1ECC09E90)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC09E90);
  }

  return result;
}

uint64_t sub_1DAEB2D1C(uint64_t a1)
{
  v1 = a1;
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1DAED247C();
    result = MEMORY[0x1E69E7CC0];
    if (!v2)
    {
      return result;
    }

    v29 = MEMORY[0x1E69E7CC0];
    sub_1DAED25EC();
    result = sub_1DAED265C();
    v26 = result;
    v27 = v4;
    v28 = 1;
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v2 = *(v1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v2)
  {
    return result;
  }

  v29 = MEMORY[0x1E69E7CC0];
  sub_1DAED25EC();
  result = sub_1DAED23DC();
  v5 = *(v1 + 36);
  v26 = result;
  v27 = v5;
  v28 = 0;
LABEL_7:
  v6 = 0;
  v23 = v2;
  while (v6 < v2)
  {
    if (__OFADD__(v6, 1))
    {
      goto LABEL_20;
    }

    v14 = v26;
    v15 = v27;
    v16 = v28;
    sub_1DADBAF5C(v26, v27, v28, v1);
    v18 = v17;
    v19 = [v17 widget];
    v20 = v1;
    v21 = [v18 metrics];
    [objc_allocWithZone(MEMORY[0x1E69943E0]) initWithWidget:v19 metrics:v21];

    sub_1DAED25CC();
    sub_1DAED25FC();
    sub_1DAED260C();
    result = sub_1DAED25DC();
    if (v24)
    {
      if (!v16)
      {
        goto LABEL_21;
      }

      if (sub_1DAED269C())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v2 = v23;
      v13 = v6 + 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A988, &qword_1DAEDF118);
      v22 = sub_1DAED1C2C();
      sub_1DAED272C();
      result = v22(v25, 0);
    }

    else
    {
      sub_1DADBB0EC(v14, v15, v16, v1);
      v8 = v7;
      v10 = v9;
      v12 = v11;
      result = sub_1DADAE050(v14, v15, v16);
      v26 = v8;
      v27 = v10;
      v28 = v12 & 1;
      v1 = v20;
      v2 = v23;
      v13 = v6 + 1;
    }

    ++v6;
    if (v13 == v2)
    {
      sub_1DADAE050(v26, v27, v28);
      return v29;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

void sub_1DAEB2FEC(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

unint64_t sub_1DAEB309C()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_hasReceivedInitializationPayload);

  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));

  if (v2 != 1)
  {
    return 0xD00000000000002ALL;
  }

  v3 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v3 + 16));
  sub_1DAEB3164(v0, &v5);
  os_unfair_lock_unlock(*(v3 + 16));
  return v5;
}

void sub_1DAEB3164(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2;
  v44[0] = 0x6F69736E65747845;

  v42 = sub_1DAEB9C5C(v6);
  sub_1DAEB9BE0(&v42);
  if (v2)
  {
    goto LABEL_32;
  }

  v7 = v42;
  v40 = a2;
  if ((v42 & 0x8000000000000000) == 0 && (v42 & 0x4000000000000000) == 0)
  {
    v8 = a1;
    v9 = *(v42 + 16);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_12:

    v3 = v44;
    MEMORY[0x1E127DA50](0xD000000000000010, 0x80000001DAEE67C0);
    v17 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
    swift_beginAccess();
    v18 = *(v8 + v17);
    if ((v18 & 0xC000000000000001) != 0)
    {
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = sub_1DAED266C() | 0x8000000000000000;
    }

    else
    {
      v23 = -1 << *(v18 + 32);
      v20 = ~v23;
      v19 = v18 + 64;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v21 = v25 & *(v18 + 64);
      v22 = v18;
    }

    v26 = 0;
    v39 = v20;
    if ((v22 & 0x8000000000000000) != 0)
    {
      goto LABEL_25;
    }

    while (1)
    {
      v27 = v26;
      v28 = v21;
      v29 = v26;
      if (!v21)
      {
        break;
      }

LABEL_23:
      v30 = (v28 - 1) & v28;
      v31 = *(*(v22 + 48) + ((v29 << 9) | (8 * __clz(__rbit64(v28)))));
      if (!v31)
      {
LABEL_29:
        v37 = sub_1DAD70B20(v22);
        MEMORY[0x1E127DA50](10, 0xE100000000000000, v37);
        v38 = v44[1];
        *v40 = v44[0];
        v40[1] = v38;
        return;
      }

      while (1)
      {
        v33 = [v31 description];
        v34 = sub_1DAED1CEC();
        v36 = v35;

        v41 = v34;
        MEMORY[0x1E127DA50](10, 0xE100000000000000);
        v3 = v44;
        MEMORY[0x1E127DA50](v41, v36);

        v26 = v29;
        v21 = v30;
        if ((v22 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_25:
        v32 = sub_1DAED271C();
        if (v32)
        {
          v44[3] = v32;
          sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
          swift_dynamicCast();
          v31 = v41;
          v29 = v26;
          v30 = v21;
          if (v41)
          {
            continue;
          }
        }

        goto LABEL_29;
      }
    }

    while (1)
    {
      v29 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v29 >= ((v20 + 64) >> 6))
      {
        goto LABEL_29;
      }

      v28 = *(v19 + 8 * v29);
      ++v27;
      if (v28)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
    goto LABEL_31;
  }

  v8 = a1;
  v9 = sub_1DAED247C();
  if (!v9)
  {
    goto LABEL_12;
  }

LABEL_5:
  if (v9 >= 1)
  {
    v10 = 0;
    do
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1E127E1F0](v10, v7);
      }

      else
      {
        v11 = *(v7 + 8 * v10 + 32);
      }

      v12 = v11;
      ++v10;
      v13 = [v11 description];
      v14 = sub_1DAED1CEC();
      v16 = v15;

      v42 = v14;
      v43 = v16;
      MEMORY[0x1E127DA50](10, 0xE100000000000000);
      MEMORY[0x1E127DA50](v42, v43);
    }

    while (v9 != v10);
    goto LABEL_12;
  }

LABEL_31:
  __break(1u);
LABEL_32:

  __break(1u);
}

uint64_t sub_1DAEB3530()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1DAEB35CC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 48))(v1, v2);
}

uint64_t sub_1DAEB3624(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 56))(a1, v3, v4);
}

uint64_t sub_1DAEB3684(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 48);
  __swift_project_boxed_opaque_existential_1((*v1 + 16), v3);
  return (*(v4 + 64))(a1, v3, v4);
}

uint64_t sub_1DAEB36E4()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 72))(v1, v2);
}

uint64_t sub_1DAEB373C()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 80))(v1, v2);
}

uint64_t sub_1DAEB3794()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 88))(v1, v2);
}

uint64_t sub_1DAEB37EC()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 96))(v1, v2);
}

uint64_t sub_1DAEB3844()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 104))(v1, v2);
}

uint64_t sub_1DAEB38C8()
{
  v1 = *(*v0 + 40);
  v2 = *(*v0 + 48);
  __swift_project_boxed_opaque_existential_1((*v0 + 16), v1);
  return (*(v2 + 160))(v1, v2);
}

uint64_t sub_1DAEB3A40(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v5 = *v3;
  v7 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((v5 + 16), v7);
  return a3(v7, *(v6 + 16));
}

uint64_t sub_1DAEB3AC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, void))
{
  v5 = *v3;
  v7 = *(*v3 + 40);
  v6 = *(*v3 + 48);
  __swift_project_boxed_opaque_existential_1((v5 + 16), v7);
  return a3(v7, *(*(v6 + 16) + 8));
}

void sub_1DAEB3B14(unint64_t a1)
{
  v36 = MEMORY[0x1E69E7CC8];
  if ((a1 & 0xC000000000000001) != 0)
  {
    v1 = sub_1DAED266C();
    v2 = 0;
    v3 = 0;
    v4 = 0;
    v5 = v1 | 0x8000000000000000;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v3 = ~v6;
    v2 = a1 + 64;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v4 = v8 & *(a1 + 64);
    v5 = a1;
  }

  v32 = v3;
  v9 = (v3 + 64) >> 6;

  v10 = 0;
  v33 = MEMORY[0x1E69E7CC8];
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      v17 = sub_1DAED270C();
      if (!v17 || (v34 = v17, sub_1DAED21EC(), swift_dynamicCast(), sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8), swift_dynamicCast(), v16 = v34, (v15 = v35) == 0))
      {
LABEL_32:
        sub_1DAD70B20(v5);
        return;
      }

      goto LABEL_17;
    }

    v11 = v10;
    v12 = v4;
    if (!v4)
    {
      break;
    }

LABEL_13:
    v4 = (v12 - 1) & v12;
    v13 = (v10 << 9) | (8 * __clz(__rbit64(v12)));
    v14 = *(*(v5 + 56) + v13);
    v15 = *(*(v5 + 48) + v13);
    v16 = v14;
    if (!v15)
    {
      goto LABEL_32;
    }

LABEL_17:
    v18 = [v16 orderedWidgetDescriptors];
    if (v18)
    {
      v19 = v18;
      sub_1DAD674D4(0, &qword_1EE0055E8, 0x1E6994388);
      v20 = sub_1DAED1E7C();

      v21 = *(v33 + 16);
      if (*(v33 + 24) <= v21)
      {
        sub_1DADAACDC(v21 + 1, 1);
      }

      v22 = sub_1DAED227C();
      v23 = v36 + 64;
      v24 = -1 << *(v36 + 32);
      v25 = v22 & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v36 + 64 + 8 * (v25 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v24) >> 6;
        while (++v26 != v29 || (v28 & 1) == 0)
        {
          v30 = v26 == v29;
          if (v26 == v29)
          {
            v26 = 0;
          }

          v28 |= v30;
          v31 = *(v23 + 8 * v26);
          if (v31 != -1)
          {
            v27 = __clz(__rbit64(~v31)) + (v26 << 6);
            goto LABEL_31;
          }
        }

        goto LABEL_34;
      }

      v27 = __clz(__rbit64((-1 << v25) & ~*(v36 + 64 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_31:
      *(v23 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
      *(*(v36 + 48) + 8 * v27) = v15;
      *(*(v36 + 56) + 8 * v27) = v20;
      v33 = v36;
      ++*(v36 + 16);
    }

    else
    {
    }
  }

  while (1)
  {
    v10 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v10 >= v9)
    {
      goto LABEL_32;
    }

    v12 = *(v2 + 8 * v10);
    ++v11;
    if (v12)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

double sub_1DAEB3E6C(char *a1)
{
  BSDispatchQueueAssert();
  if (qword_1EE005E90 == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v2 = sub_1DAECEDEC();
    __swift_project_value_buffer(v2, qword_1EE0117F0);
    v3 = sub_1DAECEDCC();
    v4 = sub_1DAED200C();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&dword_1DAD61000, v3, v4, "Detected chronod relaunch.", v5, 2u);
      MEMORY[0x1E127F100](v5, -1, -1);
    }

    v32 = MEMORY[0x1E69E7CC8];
    v6 = *&a1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
    os_unfair_lock_lock(*(v6 + 16));
    sub_1DAEB4280(a1, &v32);
    os_unfair_lock_unlock(*(v6 + 16));
    sub_1DAD69DF8();
    v7 = a1;
    v8 = sub_1DAECEDCC();
    v9 = sub_1DAED200C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 134349056;
      v11 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
      swift_beginAccess();
      v12 = *&v7[v11];
      if ((v12 & 0xC000000000000001) != 0)
      {

        v13 = sub_1DAED247C();
      }

      else
      {
        v13 = *(v12 + 16);
      }

      *(v10 + 4) = v13;

      _os_log_impl(&dword_1DAD61000, v8, v9, "Resubscribing to %{public}ld active sessions.", v10, 0xCu);
      MEMORY[0x1E127F100](v10, -1, -1);
    }

    else
    {
    }

    v14 = v7;
    if ((v32 & 0xC000000000000001) != 0)
    {
      v15 = 0;
      v16 = 0;
      a1 = 0;
      v17 = sub_1DAED266C() | 0x8000000000000000;
    }

    else
    {
      v18 = -1 << *(v32 + 32);
      v16 = ~v18;
      v15 = v32 + 64;
      v19 = -v18;
      v20 = v19 < 64 ? ~(-1 << v19) : -1;
      a1 = (v20 & *(v32 + 64));
      v17 = v32;
    }

    v21 = 0;
    v22 = (v16 + 64) >> 6;
    if ((v17 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_17:
    v23 = v21;
    v24 = a1;
    v25 = v21;
    if (a1)
    {
LABEL_21:
      v26 = ((v24 - 1) & v24);
      v27 = (v25 << 9) | (8 * __clz(__rbit64(v24)));
      v28 = *(*(v17 + 56) + v27);
      v29 = *(*(v17 + 48) + v27);

      if (v29)
      {
        goto LABEL_25;
      }

      goto LABEL_27;
    }

    while (1)
    {
      v25 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v25 >= v22)
      {
        goto LABEL_27;
      }

      v24 = *(v15 + 8 * v25);
      ++v23;
      if (v24)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  while (sub_1DAED270C())
  {
    sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
    swift_dynamicCast();
    v29 = v31;
    type metadata accessor for WidgetRendererSessionSubscriptionRequest(0);
    swift_dynamicCast();
    v28 = v31;
    v25 = v21;
    v26 = a1;
    if (!v31)
    {
      break;
    }

LABEL_25:

    sub_1DAEB43F0(v28, v14);

    v21 = v25;
    a1 = v26;
    if ((v17 & 0x8000000000000000) == 0)
    {
      goto LABEL_17;
    }
  }

LABEL_27:
  sub_1DAD70B20(v17);

  return result;
}

void sub_1DAEB4280(uint64_t a1, uint64_t *a2)
{
  v4 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v5 = *(a1 + v4);
  if ((v5 & 0xC000000000000001) != 0)
  {

    v6 = sub_1DAED247C();

    if (v6)
    {
LABEL_3:
      *a2 = *(a1 + v4);

      return;
    }
  }

  else if (*(v5 + 16))
  {
    goto LABEL_3;
  }

  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v7 = sub_1DAECEDEC();
  __swift_project_value_buffer(v7, qword_1EE0117F0);
  v8 = sub_1DAECEDCC();
  v9 = sub_1DAED200C();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_1DAD61000, v8, v9, "No active sessions - not reconnecting.", v10, 2u);
    MEMORY[0x1E127F100](v10, -1, -1);
  }
}

double sub_1DAEB43F0(uint64_t a1, char *a2)
{
  BSDispatchQueueAssert();
  v4 = *(a1 + 16);
  v5 = *&a2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v5 + 16));
  v6 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v7 = *&a2[v6];
  if ((v7 & 0xC000000000000001) == 0)
  {

LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v28 = *&a2[v6];
    sub_1DADA5B4C(a1, v4, isUniquelyReferenced_nonNull_native);
    *&a2[v6] = v28;
    swift_endAccess();
    os_unfair_lock_unlock(*(v5 + 16));
    sub_1DAECDAFC();
    swift_allocObject();
    sub_1DAECDAEC();
    v27[0] = a1;
    type metadata accessor for WidgetRendererSessionSubscriptionRequest(0);
    sub_1DAD649C4(&unk_1EE0081F8, 255, type metadata accessor for WidgetRendererSessionSubscriptionRequest, &protocol conformance descriptor for WidgetRendererSessionSubscriptionRequest);
    v6 = sub_1DAECDADC();
    v5 = v11;

    if (qword_1EE005E90 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_15;
  }

  if (v7 < 0)
  {
    v8 = *&a2[v6];
  }

  else
  {
    v8 = v7 & 0xFFFFFFFFFFFFFF8;
  }

  v9 = sub_1DAED247C();
  if (!__OFADD__(v9, 1))
  {
    *&a2[v6] = sub_1DAEB99AC(v8, v9 + 1);
    goto LABEL_8;
  }

  __break(1u);
LABEL_15:
  swift_once();
LABEL_9:
  v12 = sub_1DAECEDEC();
  __swift_project_value_buffer(v12, qword_1EE0117F0);
  v13 = v4;
  v14 = sub_1DAECEDCC();
  v15 = sub_1DAED203C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    *(v16 + 4) = v13;
    *v17 = v13;
    v18 = v13;
    _os_log_impl(&dword_1DAD61000, v14, v15, "Subscribing to session: %{public}@", v16, 0xCu);
    sub_1DAD64398(v17, &qword_1ECC07CF0, &qword_1DAED57A0);
    MEMORY[0x1E127F100](v17, -1, -1);
    MEMORY[0x1E127F100](v16, -1, -1);
  }

  v19 = sub_1DAD6F45C();
  if (!v19)
  {
    return sub_1DAD70BB4(v6, v5);
  }

  v20 = v19;
  v21 = sub_1DAECDC0C();
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = v13;
  v22[4] = nullsub_1;
  v22[5] = 0;
  v27[4] = sub_1DAEBB238;
  v27[5] = v22;
  v27[0] = MEMORY[0x1E69E9820];
  v27[1] = 1107296256;
  v27[2] = sub_1DADAF8A8;
  v27[3] = &block_descriptor_218;
  v23 = _Block_copy(v27);
  v24 = v13;
  v25 = a2;

  [v20 subscribe:v21 completion:v23];
  sub_1DAD70BB4(v6, v5);
  swift_unknownObjectRelease();
  _Block_release(v23);

  return result;
}

double sub_1DAEB4808(void *a1)
{
  v3 = sub_1DAED09DC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DAED0A3C();
  v7 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v9 = v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15[1] = *&v1[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  v10 = swift_allocObject();
  *(v10 + 16) = v1;
  *(v10 + 24) = a1;
  aBlock[4] = sub_1DAEBB190;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_193;
  v11 = _Block_copy(aBlock);
  v12 = v1;
  v13 = a1;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v17 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v9, v6, v11);
  _Block_release(v11);
  (*(v4 + 8))(v6, v3);
  (*(v7 + 8))(v9, v16);

  return result;
}

void sub_1DAEB4AE4(uint64_t a1, void *a2)
{
  v6 = 0;
  v4 = *(a1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v4 + 16));
  sub_1DAEB4BB0(a1, a2, &v6);
  os_unfair_lock_unlock(*(v4 + 16));
  if (v6)
  {
    v5 = sub_1DAD6F45C();
    if (v5)
    {
      [v5 unsubscribe_];

      swift_unknownObjectRelease();
    }
  }
}

void sub_1DAEB4BB0(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v7 = *(a1 + v6);

  v8 = sub_1DADB7CF0(a2, v7);

  if (v8)
  {

    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v9 = sub_1DAECEDEC();
    __swift_project_value_buffer(v9, qword_1EE0117F0);
    v10 = a2;
    v11 = sub_1DAECEDCC();
    v12 = sub_1DAED203C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      *(v13 + 4) = v10;
      *v14 = v10;
      v15 = v10;
      _os_log_impl(&dword_1DAD61000, v11, v12, "Unsubscribing from session: %{public}@", v13, 0xCu);
      sub_1DAD64398(v14, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v14, -1, -1);
      MEMORY[0x1E127F100](v13, -1, -1);
    }

    swift_beginAccess();
    sub_1DAEB9380(v10);
    swift_endAccess();

    *a3 = 1;
  }
}

void *sub_1DAEB4DA0(void *a1)
{
  v3 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v3 + 16));
  v4 = [a1 extensionIdentity];
  v5 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity);

  v6 = sub_1DAD84F7C(v4, v5);

  os_unfair_lock_unlock(*(v3 + 16));
  return v6;
}

void sub_1DAEB4E5C(void *a1, uint64_t a2, void *a3, void (*a4)(void), void (*a5)(void))
{
  v54 = a1;
  v53 = a2;
  v8 = sub_1DAED09DC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_1DAED0A3C();
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1DAECE3DC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  objc_opt_self();
  v16 = swift_dynamicCastObjCClass();
  if (v16)
  {
    v17 = v16;
    v49 = v9;
    v50 = a4;
    v51 = v8;
    v18 = qword_1EE005E88;
    v19 = a3;
    if (v18 != -1)
    {
      swift_once();
    }

    v52 = a5;
    v20 = sub_1DAECEDEC();
    __swift_project_value_buffer(v20, qword_1EE0117D8);
    v21 = v19;
    v22 = sub_1DAECEDCC();
    v23 = sub_1DAED203C();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v24 = 138543362;
      *(v24 + 4) = v17;
      *v25 = v17;
      v26 = v21;
      _os_log_impl(&dword_1DAD61000, v22, v23, "Handle action: %{public}@", v24, 0xCu);
      sub_1DAD64398(v25, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v25, -1, -1);
      MEMORY[0x1E127F100](v24, -1, -1);
    }

    v27 = v55;
    v48 = *&v55[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
    (*(v13 + 16))(&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v53, v12);
    v28 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v29 = (v14 + v28 + 7) & 0xFFFFFFFFFFFFFFF8;
    v30 = swift_allocObject();
    v31 = v12;
    v32 = v21;
    v33 = v54;
    *(v30 + 16) = v27;
    *(v30 + 24) = v33;
    (*(v13 + 32))(v30 + v28, v15, v31);
    *(v30 + v29) = v17;
    v34 = (v30 + ((v29 + 15) & 0xFFFFFFFFFFFFFFF8));
    v35 = v52;
    *v34 = v50;
    v34[1] = v35;
    aBlock[4] = sub_1DAEBB098;
    aBlock[5] = v30;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_169;
    v36 = _Block_copy(aBlock);
    v37 = v32;
    v38 = v27;
    v39 = v33;

    v40 = v56;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v60 = MEMORY[0x1E69E7CC0];
    sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
    v41 = v58;
    v42 = v51;
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v40, v41, v36);
    _Block_release(v36);

    (*(v49 + 8))(v41, v42);
    (*(v57 + 8))(v40, v59);
  }

  else
  {
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v43 = sub_1DAECEDEC();
    __swift_project_value_buffer(v43, qword_1EE0117F0);
    v44 = sub_1DAECEDCC();
    v45 = sub_1DAED201C();
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1DAD61000, v44, v45, "Action received is not an LNAction", v46, 2u);
      MEMORY[0x1E127F100](v46, -1, -1);
    }

    sub_1DAD674D4(0, &unk_1EE005490, 0x1E696ABC0);
    v59 = sub_1DADD7B94(2, 0, 2, 0, 0);
    a4();
    v47 = v59;
  }
}

void sub_1DAEB54E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v10 = sub_1DAECEDEC();
  __swift_project_value_buffer(v10, qword_1EE0117F0);
  v11 = sub_1DAECEDCC();
  v12 = sub_1DAED200C();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_1DAD61000, v11, v12, "Handling user interaction with widget", v13, 2u);
    MEMORY[0x1E127F100](v13, -1, -1);
  }

  v14 = sub_1DAD6F45C();
  if (v14)
  {
    v15 = v14;
    v16 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
    v17 = swift_allocObject();
    *(v17 + 16) = a5;
    *(v17 + 24) = a6;
    v19[4] = sub_1DAEBB138;
    v19[5] = v17;
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 1107296256;
    v19[2] = sub_1DAEB2FEC;
    v19[3] = &block_descriptor_175;
    v18 = _Block_copy(v19);

    [v15 handleInteraction:a2 authenticationPolicy:v16 action:a4 handler:v18];
    swift_unknownObjectRelease();
    _Block_release(v18);
  }
}

double sub_1DAEB56F0(uint64_t a1, uint64_t a2)
{
  v22[0] = a2;
  v4 = sub_1DAED09DC();
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1DAED0A3C();
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DAED10DC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v14 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__queue];
  (*(v11 + 16))(v14, a1, v10, v13);
  v15 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v16 = swift_allocObject();
  v17 = v22[0];
  *(v16 + 16) = v22[0];
  *(v16 + 24) = v2;
  (*(v11 + 32))(v16 + v15, v14, v10);
  aBlock[4] = sub_1DAEBB034;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_151_0;
  v18 = _Block_copy(aBlock);
  v19 = v17;
  v20 = v2;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v9, v6, v18);
  _Block_release(v18);
  (*(v25 + 8))(v6, v4);
  (*(v23 + 8))(v9, v24);

  return result;
}

double sub_1DAEB5A98(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DAED10DC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v10 = sub_1DAECEDEC();
  __swift_project_value_buffer(v10, qword_1EE0117F0);
  v11 = a1;
  v12 = sub_1DAECEDCC();
  v13 = sub_1DAED200C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v32 = v7;
    v16 = a3;
    v17 = v15;
    *v14 = 138543362;
    *(v14 + 4) = v11;
    *v15 = v11;
    v18 = v11;
    _os_log_impl(&dword_1DAD61000, v12, v13, "Set environment modifiers for session: %{public}@", v14, 0xCu);
    sub_1DAD64398(v17, &qword_1ECC07CF0, &qword_1DAED57A0);
    v19 = v17;
    a3 = v16;
    v7 = v32;
    MEMORY[0x1E127F100](v19, -1, -1);
    MEMORY[0x1E127F100](v14, -1, -1);
  }

  v20 = *(a2 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v20 + 16));
  v21 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v22 = *(a2 + v21);

  v23 = sub_1DADB7CF0(v11, v22);

  if (v23)
  {
    (*(v7 + 16))(v9, a3, v6);
    v24 = OBJC_IVAR____TtC14WidgetRenderer40WidgetRendererSessionSubscriptionRequest_environmentModifiers;
    swift_beginAccess();
    (*(v7 + 40))(v23 + v24, v9, v6);
    swift_endAccess();
  }

  os_unfair_lock_unlock(*(v20 + 16));
  sub_1DAECDAFC();
  swift_allocObject();
  sub_1DAECDAEC();
  sub_1DAD649C4(&qword_1EE005790, 255, MEMORY[0x1E6993E88], MEMORY[0x1E6993E90]);
  v25 = sub_1DAECDADC();
  v27 = v26;

  v28 = sub_1DAD6F45C();
  if (!v28)
  {
    return sub_1DAD70BB4(v25, v27);
  }

  v29 = v28;
  v30 = sub_1DAECDC0C();
  [v29 setEnvironmentModifiers:v30 forSession:v11];
  sub_1DAD70BB4(v25, v27);

  swift_unknownObjectRelease();
  return result;
}

void sub_1DAEB5F6C(uint64_t a1, char *a2)
{
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v3 = sub_1DAECEDEC();
  __swift_project_value_buffer(v3, qword_1EE0117F0);
  v4 = sub_1DAECEDCC();
  v5 = sub_1DAED203C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&dword_1DAD61000, v4, v5, "Connection Interrupted", v6, 2u);
    MEMORY[0x1E127F100](v6, -1, -1);
  }

  v7 = *&a2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v7 + 16));
  sub_1DAEB609C(a2);
  v8 = *(v7 + 16);

  os_unfair_lock_unlock(v8);
}

void sub_1DAEB609C(char *a1)
{
  v2 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_subscriptions;
  swift_beginAccess();
  v3 = *&a1[v2];
  if ((v3 & 0xC000000000000001) != 0)
  {

    v4 = sub_1DAED247C();

    if (!v4)
    {
      return;
    }
  }

  else if (!*(v3 + 16))
  {
    return;
  }

  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v5 = sub_1DAECEDEC();
  __swift_project_value_buffer(v5, qword_1EE0117F0);
  v6 = a1;
  v7 = sub_1DAECEDCC();
  v8 = sub_1DAED203C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134349056;
    v10 = *&a1[v2];
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = sub_1DAED247C();
    }

    else
    {
      v11 = *(v10 + 16);
    }

    *(v9 + 4) = v11;

    _os_log_impl(&dword_1DAD61000, v7, v8, "Reconnecting because we had %{public}ld subscriptions active.", v9, 0xCu);
    MEMORY[0x1E127F100](v9, -1, -1);
  }

  else
  {

    v7 = v6;
  }

  sub_1DAD69DF8();
}

id sub_1DAEB629C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WidgetRendererClient(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1DAEB654C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A970, &qword_1DAEDF110);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  v7[1] = *(*v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient_extensionsDidChangePublisher);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08388, &qword_1DAEDDF20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A2E0, &qword_1DAEDD840);
  sub_1DAD64B94(&qword_1EE005CA0, &qword_1ECC08388, &qword_1DAEDDF20, MEMORY[0x1E695BED8]);
  sub_1DAECEF8C();

  sub_1DAD64B94(&qword_1ECC0A980, &unk_1ECC0A970, &qword_1DAEDF110, MEMORY[0x1E695BD60]);
  v5 = sub_1DAECEF6C();
  (*(v2 + 8))(v4, v1);
  return v5;
}

uint64_t sub_1DAEB6748()
{
  v1 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock);
  os_unfair_lock_lock(*(v1 + 16));
  v2 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity);
  if ((v2 & 0xC000000000000001) == 0)
  {
    if (*(v2 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v3 = sub_1DAED247C();

  if (!v3)
  {
    goto LABEL_5;
  }

LABEL_3:

  sub_1DAE7DECC(v4);
  v6 = v5;
LABEL_6:
  os_unfair_lock_unlock(*(v1 + 16));
  return v6;
}

void sub_1DAEB67F4()
{
  v0 = [objc_opt_self() sharedApplication];
  v1 = [v0 delegate];

  if (v1)
  {
    type metadata accessor for AppDelegate(0);
    v2 = swift_dynamicCastClass();
    swift_unknownObjectRelease();
    if (v2)
    {
      v15 = sub_1DADFBE74;
      v16 = 0;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1DAD751C0;
      v14 = &block_descriptor_124;
      v3 = _Block_copy(aBlock);
      BSDispatchMain();
      _Block_release(v3);
    }
  }

  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE011BD8;
  swift_beginAccess();
  sub_1DAD6495C(v4 + 16, aBlock, &qword_1ECC08380, &unk_1DAED6590);
  v5 = v14;
  if (v14)
  {
    v6 = __swift_project_boxed_opaque_existential_1(aBlock, v14);
    v7 = *(v5 - 1);
    v8 = MEMORY[0x1EEE9AC00](v6);
    v10 = &aBlock[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v7 + 16))(v10, v8);

    sub_1DAD64398(aBlock, &qword_1ECC08380, &unk_1DAED6590);
    v11 = *(v7 + 8);

    v11(v10, v5);
    sub_1DAED121C();
  }

  else
  {
    sub_1DAD64398(aBlock, &qword_1ECC08380, &unk_1DAED6590);
  }
}

double sub_1DAEB6A98(void *a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v29 = a1;
  v7 = sub_1DAED09DC();
  v33 = *(v7 - 8);
  v34 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v30 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAED0A3C();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v11 = sub_1DAECEDEC();
  __swift_project_value_buffer(v11, qword_1EE0117F0);

  v12 = sub_1DAECEDCC();
  v13 = sub_1DAED203C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    aBlock[0] = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_1DAD6482C(a2, a3, aBlock);
    _os_log_impl(&dword_1DAD61000, v12, v13, "Received configuration did change for host: %{public}s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x1E127F100](v15, -1, -1);
    MEMORY[0x1E127F100](v14, -1, -1);
  }

  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x1E69E7CC8];
  v17 = *&v4[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v17 + 16));
  v18 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_configurationsByHostIdentifier;
  swift_beginAccess();
  v19 = v29;
  v20 = v29;

  sub_1DADD8350(v19, a2, a3);
  swift_endAccess();
  *(v16 + 16) = *&v4[v18];

  os_unfair_lock_unlock(*(v17 + 16));
  v21 = swift_allocObject();
  *(v21 + 16) = v4;
  *(v21 + 24) = v16;
  aBlock[4] = sub_1DAEBAD3C;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_105;
  v22 = _Block_copy(aBlock);
  v23 = v4;

  v24 = v28;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v35 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  v25 = v30;
  v26 = v34;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v24, v25, v22);
  _Block_release(v22);
  (*(v33 + 8))(v25, v26);
  (*(v31 + 8))(v24, v32);

  return result;
}

double sub_1DAEB6FD4(void *a1)
{
  v2 = v1;
  v4 = sub_1DAED09DC();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1DAED0A3C();
  v25 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v8 = sub_1DAECEDEC();
  __swift_project_value_buffer(v8, qword_1EE0117F0);
  v9 = a1;
  v10 = sub_1DAECEDCC();
  v11 = sub_1DAED203C();
  if (os_log_type_enabled(v10, v11))
  {
    v24 = v4;
    v12 = swift_slowAlloc();
    *v12 = 134349056;
    v13 = [v9 extensions];
    sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
    sub_1DAE8A564(&qword_1EE00BDF0, &unk_1EE00BE00, 0x1E69943B8);
    v14 = sub_1DAED1F6C();

    if ((v14 & 0xC000000000000001) != 0)
    {
      v15 = sub_1DAED247C();
    }

    else
    {
      v15 = *(v14 + 16);
    }

    *(v12 + 4) = v15;

    _os_log_impl(&dword_1DAD61000, v10, v11, "Received extensions did change: %{public}ld", v12, 0xCu);
    MEMORY[0x1E127F100](v12, -1, -1);
    v4 = v24;
  }

  else
  {

    v10 = v9;
  }

  v16 = swift_allocObject();
  *(v16 + 16) = MEMORY[0x1E69E7CC8];
  v17 = *&v2[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v17 + 16));
  sub_1DAEB74CC(v2, v9, (v16 + 16));
  os_unfair_lock_unlock(*(v17 + 16));
  v18 = swift_allocObject();
  *(v18 + 16) = v2;
  *(v18 + 24) = v16;
  aBlock[4] = sub_1DAEBACD8;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = &block_descriptor_96;
  v19 = _Block_copy(aBlock);
  v20 = v2;

  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v29 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  v21 = v26;
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v7, v21, v19);
  _Block_release(v19);
  (*(v28 + 8))(v21, v4);
  (*(v25 + 8))(v7, v27);

  return result;
}

void sub_1DAEB74CC(uint64_t a1, id a2, uint64_t *a3)
{
  v4 = v3;
  v6 = [a2 extensions];
  sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
  sub_1DAE8A564(&qword_1EE00BDF0, &unk_1EE00BE00, 0x1E69943B8);
  v7 = sub_1DAED1F6C();

  v24 = sub_1DADBDB00(MEMORY[0x1E69E7CC0]);
  v22 = a3;
  if ((v7 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1DAED242C();
    sub_1DAED1F9C();
    v7 = v23[1];
    v8 = v23[2];
    v9 = v23[3];
    v10 = v23[4];
    v11 = v23[5];
  }

  else
  {
    v12 = -1 << *(v7 + 32);
    v8 = (v7 + 56);
    v9 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v11 = (v14 & *(v7 + 56));

    v10 = 0;
  }

  if (v7 < 0)
  {
    goto LABEL_14;
  }

LABEL_8:
  v15 = v10;
  v16 = v11;
  v17 = v10;
  if (v11)
  {
LABEL_12:
    v18 = (v16 - 1) & v16;
    v6 = *(*(v7 + 48) + ((v17 << 9) | (8 * __clz(__rbit64(v16)))));
    if (!v6)
    {
LABEL_19:
      sub_1DAD70B20(v7);

      v19 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity;
      *(a1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_extensionsByExtensionIdentity) = v24;

      sub_1DAEB3B14(v20);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A960, &unk_1DAEDF100);
      *(a1 + OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_widgetDescriptorCollection) = sub_1DAED100C();

      *v22 = *(a1 + v19);

      return;
    }

    while (1)
    {
      v23[0] = v6;
      sub_1DAEB77E8(&v24, v23);
      if (v4)
      {
        break;
      }

      v10 = v17;
      v11 = v18;
      if ((v7 & 0x8000000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_14:
      if (sub_1DAED24BC())
      {
        swift_dynamicCast();
        v6 = v23[0];
        v17 = v10;
        v18 = v11;
        if (v23[0])
        {
          continue;
        }
      }

      goto LABEL_19;
    }
  }

  else
  {
    while (1)
    {
      v17 = (v15 + 1);
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v17 >= ((v9 + 64) >> 6))
      {
        goto LABEL_19;
      }

      v16 = v8[v17];
      ++v15;
      if (v16)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  sub_1DAD70B20(v7);

  __break(1u);
}

void sub_1DAEB77E8(uint64_t *a1, void **a2)
{
  v3 = *a2;
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v4 = sub_1DAECEDEC();
  __swift_project_value_buffer(v4, qword_1EE0117F0);
  v5 = v3;
  v6 = sub_1DAECEDCC();
  v7 = sub_1DAED203C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v22 = v9;
    *v8 = 136446210;
    v10 = [v5 description];
    v11 = sub_1DAED1CEC();
    v13 = v12;

    v14 = sub_1DAD6482C(v11, v13, &v22);

    *(v8 + 4) = v14;
    _os_log_impl(&dword_1DAD61000, v6, v7, "Received extension: %{public}s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1E127F100](v9, -1, -1);
    MEMORY[0x1E127F100](v8, -1, -1);
  }

  v15 = [v5 identity];
  v16 = *a1;
  if ((*a1 & 0xC000000000000001) == 0)
  {
    v20 = v5;
    goto LABEL_12;
  }

  if (v16 < 0)
  {
    v17 = *a1;
  }

  else
  {
    v17 = v16 & 0xFFFFFFFFFFFFFF8;
  }

  v18 = v5;
  v19 = sub_1DAED247C();
  if (!__OFADD__(v19, 1))
  {
    *a1 = sub_1DAEB9770(v17, v19 + 1);
LABEL_12:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a1;
    sub_1DADBDEA4(v5, v15, isUniquelyReferenced_nonNull_native);

    *a1 = v22;
    return;
  }

  __break(1u);
}

double sub_1DAEB7A14(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();

  sub_1DAECEE6C();

  return result;
}

double sub_1DAEB7AE0(uint64_t a1, uint64_t a2)
{
  v67 = sub_1DAED09DC();
  v66 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v64 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1DAED0A3C();
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v62 = &v59 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DAED14BC();
  v73 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v71 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_1DAED14CC();
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v8 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v59 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A990, &qword_1DAEDE2D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v69 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v77 = &v59 - v14;
  v15 = sub_1DAECF8EC();
  v16 = *(v15 - 8);
  v78 = v15;
  v79 = v16;
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v74 = &v59 - v20;
  v21 = sub_1DAED157C();
  v75 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v2;
  BSDispatchQueueAssert();
  if (qword_1EE005E90 != -1)
  {
    swift_once();
  }

  v24 = sub_1DAECEDEC();
  v76 = __swift_project_value_buffer(v24, qword_1EE0117F0);
  v25 = sub_1DAECEDCC();
  v26 = sub_1DAED203C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v60 = v5;
    v28 = v23;
    v29 = v21;
    v30 = v27;
    *v27 = 0;
    _os_log_impl(&dword_1DAD61000, v25, v26, "Received system environment did change", v27, 2u);
    v31 = v30;
    v21 = v29;
    v23 = v28;
    v5 = v60;
    MEMORY[0x1E127F100](v31, -1, -1);
  }

  sub_1DAECDACC();
  swift_allocObject();
  sub_1DAECDABC();
  sub_1DAD649C4(&qword_1EE00AB20, 255, MEMORY[0x1E6985700], MEMORY[0x1E6985720]);
  sub_1DAECDAAC();

  sub_1DAECF8DC();
  v32 = v68;
  v76 = v23;
  sub_1DAED151C();
  v33 = *(v79 + 8);
  v60 = v79 + 8;
  v59 = v33;
  v33(v18, v78);
  v34 = v70;
  v35 = v72;
  (*(v70 + 16))(v8, v32, v72);
  sub_1DAD649C4(&qword_1EE005738, 255, MEMORY[0x1E69856E8], MEMORY[0x1E69856F0]);
  v36 = v71;
  sub_1DAED1E3C();
  sub_1DAD649C4(&qword_1EE005740, 255, MEMORY[0x1E69856D8], MEMORY[0x1E69856E0]);
  v37 = v69;
  sub_1DAED234C();
  (*(v73 + 8))(v36, v5);
  (*(v34 + 8))(v32, v35);
  v38 = *(v79 + 48);
  v39 = 1;
  if (v38(v37, 1, v78) != 1)
  {
    (*(v79 + 32))(v77, v37, v78);
    v39 = 0;
  }

  v40 = v77;
  v41 = v39;
  v42 = v78;
  (*(v79 + 56))(v77, v41, 1, v78);
  if (v38(v40, 1, v42) == 1)
  {
    (*(v75 + 8))(v76, v21);
    sub_1DAD64398(v77, &unk_1ECC0A990, &qword_1DAEDE2D0);
  }

  else
  {
    v44 = v78;
    v45 = v79;
    v73 = *(v79 + 32);
    v46 = v74;
    (v73)(v74, v77, v78);
    v47 = v61;
    v72 = *&v61[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
    os_unfair_lock_lock(*(v72 + 16));
    v77 = v21;
    v48 = *(v45 + 16);
    v48(v18, v46, v44);
    v49 = OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock_systemEnvironment;
    swift_beginAccess();
    (*(v45 + 40))(&v47[v49], v18, v44);
    swift_endAccess();
    os_unfair_lock_unlock(*(v72 + 16));
    v79 = *&v47[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__calloutQueue];
    v50 = v46;
    v51 = v44;
    v48(v18, v50, v44);
    v52 = (*(v45 + 80) + 24) & ~*(v45 + 80);
    v53 = swift_allocObject();
    *(v53 + 16) = v47;
    (v73)(v53 + v52, v18, v51);
    aBlock[4] = sub_1DAEBAC68;
    aBlock[5] = v53;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1DAD751C0;
    aBlock[3] = &block_descriptor_87_0;
    v54 = _Block_copy(aBlock);
    v55 = v47;
    v56 = v62;
    _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
    v80 = MEMORY[0x1E69E7CC0];
    sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
    sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
    v57 = v64;
    v58 = v67;
    sub_1DAED23CC();
    MEMORY[0x1E127DD70](0, v56, v57, v54);
    _Block_release(v54);
    (*(v66 + 8))(v57, v58);
    (*(v63 + 8))(v56, v65);
    v59(v74, v51);
    (*(v75 + 8))(v76, v77);
  }

  return result;
}

double sub_1DAEB8704(uint64_t a1)
{
  v1 = sub_1DADBA7AC(a1);
  if (!v1)
  {
    return result;
  }

  v3 = v1;
  if (v1 >> 62)
  {
    if (sub_1DAED247C())
    {
      goto LABEL_4;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    BSDispatchQueueAssert();
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v4 = sub_1DAECEDEC();
    __swift_project_value_buffer(v4, qword_1EE0117F0);

    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED200C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      v9 = sub_1DAD674D4(0, &unk_1EE005648, 0x1E69943E0);
      v10 = MEMORY[0x1E127DB00](v3, v9);
      v12 = sub_1DAD6482C(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1DAD61000, v5, v6, "Received timelines did change for keys: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    sub_1DAEB8B54(v3, &unk_1F56B5CA8, sub_1DAEBAC44, &block_descriptor_81_0);
  }

  return result;
}

double sub_1DAEB8938(uint64_t a1)
{
  v1 = sub_1DADBA7AC(a1);
  if (!v1)
  {
    return result;
  }

  v3 = v1;
  BSDispatchQueueAssert();
  if (v3 >> 62)
  {
    if (sub_1DAED247C())
    {
      goto LABEL_4;
    }
  }

  else if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_4:
    if (qword_1EE005E90 != -1)
    {
      swift_once();
    }

    v4 = sub_1DAECEDEC();
    __swift_project_value_buffer(v4, qword_1EE0117F0);

    v5 = sub_1DAECEDCC();
    v6 = sub_1DAED200C();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v13 = v8;
      *v7 = 136446210;
      v9 = sub_1DAD674D4(0, &unk_1EE005648, 0x1E69943E0);
      v10 = MEMORY[0x1E127DB00](v3, v9);
      v12 = sub_1DAD6482C(v10, v11, &v13);

      *(v7 + 4) = v12;
      _os_log_impl(&dword_1DAD61000, v5, v6, "Received snapshots did change for keys: %{public}s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x1E127F100](v8, -1, -1);
      MEMORY[0x1E127F100](v7, -1, -1);
    }

    sub_1DAEB8B54(v3, &unk_1F56B5C58, sub_1DAEBAC20, &block_descriptor_74_0);
  }

  return result;
}

double sub_1DAEB8B54(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = a3;
  v22 = a4;
  v20[0] = a1;
  v20[1] = a2;
  v5 = sub_1DAED09DC();
  v25 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAED0A3C();
  v23 = *(v8 - 8);
  v24 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssert();
  v11 = swift_allocObject();
  *(v11 + 16) = MEMORY[0x1E69E7CC0];
  v12 = *&v4[OBJC_IVAR____TtC14WidgetRenderer20WidgetRendererClient__lock];
  os_unfair_lock_lock(*(v12 + 16));
  swift_beginAccess();

  v14 = sub_1DAEB2D1C(v13);

  v15 = sub_1DADBB268(v14);

  sub_1DADBB7D8(v20[0], v15, (v11 + 16));
  swift_bridgeObjectRelease_n();
  os_unfair_lock_unlock(*(v12 + 16));
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = v4;
  aBlock[4] = v21;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DAD751C0;
  aBlock[3] = v22;
  v17 = _Block_copy(aBlock);

  v18 = v4;
  _s14WidgetRenderer16LayerSnapshotterC8snapshot7request16qualityOfService17completionHandleryAA15SnapshotRequestVyAC09SupportedC0OG_8Dispatch0O3QoSVyAC6ResultOctFfA0__0();
  v26 = MEMORY[0x1E69E7CC0];
  sub_1DAD649C4(&qword_1EE00AB70, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC08340, &unk_1DAED6550);
  sub_1DAD64B94(&qword_1EE00AAA0, &unk_1ECC08340, &unk_1DAED6550, MEMORY[0x1E69E6328]);
  sub_1DAED23CC();
  MEMORY[0x1E127DD70](0, v10, v7, v17);
  _Block_release(v17);
  (*(v25 + 8))(v7, v5);
  (*(v23 + 8))(v10, v24);

  return result;
}

uint64_t sub_1DAEB8F54(void *a1, uint64_t a2)
{
  a1[1] = sub_1DAD649C4(&qword_1ECC0A930, a2, type metadata accessor for XcodePreviewWidgetRendererClient, &unk_1DAEDF03C);
  a1[2] = sub_1DAD649C4(&qword_1ECC0A938, v3, type metadata accessor for XcodePreviewWidgetRendererClient, &unk_1DAEDF004);
  result = sub_1DAD649C4(&qword_1ECC0A940, v4, type metadata accessor for XcodePreviewWidgetRendererClient, &unk_1DAEDF064);
  a1[3] = result;
  return result;
}

void sub_1DAEB9000(void *a2@<X8>)
{

  sub_1DAE7DECC(v3);
  *a2 = v4;
}

void *sub_1DAEB9030(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
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

uint64_t sub_1DAEB90B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_1DADBFD3C(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v20 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1DADDBC58();
      v10 = v20;
    }

    v11 = *(v10 + 56);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
    v19 = *(v12 - 8);
    sub_1DADDCE6C(v11 + *(v19 + 72) * v8, a3);
    sub_1DADDA0A0(v8, v10);
    *v4 = v10;
    v13 = *(v19 + 56);
    v14 = a3;
    v15 = 0;
    v16 = v12;
  }

  else
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
    v13 = *(*(v17 - 8) + 56);
    v16 = v17;
    v14 = a3;
    v15 = 1;
  }

  return v13(v14, v15, 1, v16);
}

uint64_t sub_1DAEB9228(uint64_t a1)
{
  v2 = v1;
  v4 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    v13 = sub_1DAECB350(a1);
    if (v14)
    {
      v4 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v2;
      v17 = *v2;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v4);
        sub_1DADDA714(v4, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1DADDC414();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v4 < 0)
  {
    v5 = *v2;
  }

  else
  {
    v5 = v4 & 0xFFFFFFFFFFFFFF8;
  }

  v6 = sub_1DAED26FC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1DAED247C();
  v8 = sub_1DAEB94CC(v5, v7);

  v9 = sub_1DAECB350(a1);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1DADDA714(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1DAEB9380(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = sub_1DADA5AD0(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        sub_1DADC7C48(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      sub_1DADDC6D8();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = sub_1DAED26FC();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = sub_1DAED247C();
  v8 = sub_1DAEB99AC(v4, v7);

  v9 = sub_1DADA5AD0(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  sub_1DADC7C48(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

uint64_t sub_1DAEB94CC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC080C8, &qword_1DAED6250);
    v2 = sub_1DAED278C();
    v16 = v2;
    sub_1DAED266C();
    if (sub_1DAED270C())
    {
      type metadata accessor for ActivityRendererSessionKey(0);
      do
      {
        swift_dynamicCast();
        type metadata accessor for ActivityRendererSessionSubscriptionRequest(0);
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1DADD951C(v9 + 1, 1);
        }

        v2 = v16;
        sub_1DAED294C();
        sub_1DAED1D9C();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
        sub_1DAD64B94(&qword_1EE00AB58, &unk_1ECC0A9C0, &unk_1DAED8030, MEMORY[0x1E6993E08]);
        sub_1DAED1C6C();
        result = sub_1DAED297C();
        v4 = v16 + 64;
        v5 = -1 << *(v16 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v16 + 64 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v16 + 48) + 8 * v8) = v15;
        *(*(v16 + 56) + 8 * v8) = v14;
        ++*(v16 + 16);
      }

      while (sub_1DAED270C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1DAEB9770(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9A0, qword_1DAEDF120);
    v2 = sub_1DAED278C();
    v19 = v2;
    sub_1DAED266C();
    v3 = sub_1DAED270C();
    if (v3)
    {
      v4 = v3;
      sub_1DAED21EC();
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_1DAD674D4(0, &unk_1EE00BE00, 0x1E69943B8);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1DADBE00C(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1DAED227C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1DAED270C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1DAEB99AC(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9B0, &unk_1DAEDF140);
    v2 = sub_1DAED278C();
    v19 = v2;
    sub_1DAED266C();
    v3 = sub_1DAED270C();
    if (v3)
    {
      v4 = v3;
      sub_1DAD674D4(0, &qword_1EE00AA10, &off_1E85E9AE8);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        type metadata accessor for WidgetRendererSessionSubscriptionRequest(0);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_1DADA5CF4(v12 + 1, 1);
        }

        v2 = v19;
        result = sub_1DAED227C();
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = sub_1DAED270C();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

uint64_t sub_1DAEB9BE0(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1DADFA9D8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1DAEB9D0C(v6);
  return sub_1DAED25DC();
}

void *sub_1DAEB9C5C(unint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) == 0)
  {
    goto LABEL_5;
  }

  v2 = sub_1DAED247C();
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  while (1)
  {
    v3 = sub_1DAEB9030(v2, 0);

    v1 = sub_1DAEBAA34(&v6, v3 + 4, v2, v1, v4);
    sub_1DAD70B20(v6);
    if (v1 == v2)
    {
      break;
    }

    __break(1u);
LABEL_5:
    v2 = *(v1 + 16);
    if (!v2)
    {
      return MEMORY[0x1E69E7CC0];
    }
  }

  return v3;
}

void sub_1DAEB9D0C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1DAED286C();
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
        sub_1DAED21EC();
        v6 = sub_1DAED1EAC();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1DAEB9F00(v8, v9, a1, v4);
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
    sub_1DAEB9E10(0, v2, 1, a1);
  }
}

void sub_1DAEB9E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    sub_1DAED21EC();
    v7 = v6 + 8 * v4 - 8;
    v8 = a1 - v4;
LABEL_5:
    v9 = *(v6 + 8 * v4);
    v10 = v8;
    v18 = v7;
    while (1)
    {
      v11 = *v7;
      v12 = v9;
      v13 = v11;
      v14 = sub_1DAED21CC();

      if ((v14 & 1) == 0)
      {
LABEL_4:
        ++v4;
        v7 = v18 + 8;
        --v8;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      v15 = *v7;
      v9 = *(v7 + 8);
      *v7 = v9;
      *(v7 + 8) = v15;
      v7 -= 8;
      if (__CFADD__(v10++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_1DAEB9F00(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_89:
    v7 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_121:
      v9 = sub_1DADFA844(v9);
    }

    v89 = *(v9 + 2);
    if (v89 >= 2)
    {
      while (*v6)
      {
        v90 = v9;
        v9 = (v89 - 1);
        v91 = *&v90[16 * v89];
        v92 = *&v90[16 * v89 + 24];
        sub_1DAEBA530((*v6 + 8 * v91), (*v6 + 8 * *&v90[16 * v89 + 16]), (*v6 + 8 * v92), v7);
        if (v5)
        {
          goto LABEL_99;
        }

        if (v92 < v91)
        {
          goto LABEL_114;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v90 = sub_1DADFA844(v90);
        }

        if (v89 - 2 >= *(v90 + 2))
        {
          goto LABEL_115;
        }

        v93 = &v90[16 * v89];
        *v93 = v91;
        *(v93 + 1) = v92;
        sub_1DADFA7B8(v89 - 1);
        v9 = v90;
        v89 = *(v90 + 2);
        if (v89 <= 1)
        {
          goto LABEL_99;
        }
      }

      goto LABEL_125;
    }

LABEL_99:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8;
    v11 = v8 + 1;
    if (v8 + 1 < v7)
    {
      v96 = v9;
      v100 = v5;
      v12 = *(*v6 + 8 * v11);
      v9 = (8 * v8);
      v13 = (*v6 + 8 * v8);
      v15 = *v13;
      v14 = v13 + 2;
      sub_1DAED21EC();
      v16 = v12;
      v17 = v15;
      v18 = v10;
      v19 = sub_1DAED21CC();

      v98 = v18;
      v20 = v18 + 2;
      while (v7 != v20)
      {
        v21 = *(v14 - 1);
        v22 = *v14;
        v23 = v21;
        LODWORD(v21) = sub_1DAED21CC() & 1;

        ++v20;
        ++v14;
        if ((v19 & 1) != v21)
        {
          v7 = v20 - 1;
          break;
        }
      }

      v5 = v100;
      v6 = a3;
      if (v19)
      {
        v10 = v98;
        if (v7 < v98)
        {
          goto LABEL_118;
        }

        if (v98 < v7)
        {
          v24 = 8 * v7 - 8;
          v25 = v7;
          v26 = v98;
          do
          {
            if (v26 != --v25)
            {
              v28 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v27 = *&v9[v28];
              *&v9[v28] = *(v28 + v24);
              *(v28 + v24) = v27;
            }

            ++v26;
            v24 -= 8;
            v9 += 8;
          }

          while (v26 < v25);
        }

        v11 = v7;
        v9 = v96;
      }

      else
      {
        v11 = v7;
        v9 = v96;
        v10 = v98;
      }
    }

    v29 = v6[1];
    if (v11 < v29)
    {
      if (__OFSUB__(v11, v10))
      {
        goto LABEL_117;
      }

      if (v11 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_119;
        }

        if (v10 + a4 >= v29)
        {
          v30 = v6[1];
        }

        else
        {
          v30 = v10 + a4;
        }

        if (v30 < v10)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v11 != v30)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v11 < v10)
    {
      goto LABEL_116;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1DADFA858(0, *(v9 + 2) + 1, 1, v9);
    }

    v43 = *(v9 + 2);
    v42 = *(v9 + 3);
    v44 = v43 + 1;
    if (v43 >= v42 >> 1)
    {
      v9 = sub_1DADFA858((v42 > 1), v43 + 1, 1, v9);
    }

    *(v9 + 2) = v44;
    v45 = &v9[16 * v43];
    *(v45 + 4) = v10;
    *(v45 + 5) = v11;
    v46 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    v105 = v11;
    if (v43)
    {
      while (1)
      {
        v47 = v44 - 1;
        if (v44 >= 4)
        {
          break;
        }

        if (v44 == 3)
        {
          v48 = *(v9 + 4);
          v49 = *(v9 + 5);
          v58 = __OFSUB__(v49, v48);
          v50 = v49 - v48;
          v51 = v58;
LABEL_58:
          if (v51)
          {
            goto LABEL_105;
          }

          v64 = &v9[16 * v44];
          v66 = *v64;
          v65 = *(v64 + 1);
          v67 = __OFSUB__(v65, v66);
          v68 = v65 - v66;
          v69 = v67;
          if (v67)
          {
            goto LABEL_108;
          }

          v70 = &v9[16 * v47 + 32];
          v72 = *v70;
          v71 = *(v70 + 1);
          v58 = __OFSUB__(v71, v72);
          v73 = v71 - v72;
          if (v58)
          {
            goto LABEL_111;
          }

          if (__OFADD__(v68, v73))
          {
            goto LABEL_112;
          }

          if (v68 + v73 >= v50)
          {
            if (v50 < v73)
            {
              v47 = v44 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v74 = &v9[16 * v44];
        v76 = *v74;
        v75 = *(v74 + 1);
        v58 = __OFSUB__(v75, v76);
        v68 = v75 - v76;
        v69 = v58;
LABEL_72:
        if (v69)
        {
          goto LABEL_107;
        }

        v77 = &v9[16 * v47];
        v79 = *(v77 + 4);
        v78 = *(v77 + 5);
        v58 = __OFSUB__(v78, v79);
        v80 = v78 - v79;
        if (v58)
        {
          goto LABEL_110;
        }

        if (v80 < v68)
        {
          goto LABEL_3;
        }

LABEL_79:
        v85 = v47 - 1;
        if (v47 - 1 >= v44)
        {
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
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
          goto LABEL_120;
        }

        if (!*v6)
        {
          goto LABEL_123;
        }

        v86 = *&v9[16 * v85 + 32];
        v87 = *&v9[16 * v47 + 40];
        sub_1DAEBA530((*v6 + 8 * v86), (*v6 + 8 * *&v9[16 * v47 + 32]), (*v6 + 8 * v87), v46);
        if (v5)
        {
          goto LABEL_99;
        }

        if (v87 < v86)
        {
          goto LABEL_101;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1DADFA844(v9);
        }

        if (v85 >= *(v9 + 2))
        {
          goto LABEL_102;
        }

        v88 = &v9[16 * v85];
        *(v88 + 4) = v86;
        *(v88 + 5) = v87;
        sub_1DADFA7B8(v47);
        v44 = *(v9 + 2);
        if (v44 <= 1)
        {
          goto LABEL_3;
        }
      }

      v52 = &v9[16 * v44 + 32];
      v53 = *(v52 - 64);
      v54 = *(v52 - 56);
      v58 = __OFSUB__(v54, v53);
      v55 = v54 - v53;
      if (v58)
      {
        goto LABEL_103;
      }

      v57 = *(v52 - 48);
      v56 = *(v52 - 40);
      v58 = __OFSUB__(v56, v57);
      v50 = v56 - v57;
      v51 = v58;
      if (v58)
      {
        goto LABEL_104;
      }

      v59 = &v9[16 * v44];
      v61 = *v59;
      v60 = *(v59 + 1);
      v58 = __OFSUB__(v60, v61);
      v62 = v60 - v61;
      if (v58)
      {
        goto LABEL_106;
      }

      v58 = __OFADD__(v50, v62);
      v63 = v50 + v62;
      if (v58)
      {
        goto LABEL_109;
      }

      if (v63 >= v55)
      {
        v81 = &v9[16 * v47 + 32];
        v83 = *v81;
        v82 = *(v81 + 1);
        v58 = __OFSUB__(v82, v83);
        v84 = v82 - v83;
        if (v58)
        {
          goto LABEL_113;
        }

        if (v50 < v84)
        {
          v47 = v44 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v7 = v6[1];
    v8 = v105;
    if (v105 >= v7)
    {
      goto LABEL_89;
    }
  }

  v97 = v9;
  v101 = v5;
  v31 = *v6;
  sub_1DAED21EC();
  v32 = v31 + 8 * v11 - 8;
  v99 = v10;
  v33 = v10 - v11;
  v103 = v30;
LABEL_31:
  v104 = v11;
  v34 = *(v31 + 8 * v11);
  v35 = v33;
  v7 = v32;
  while (1)
  {
    v36 = *v7;
    v37 = v34;
    v38 = v36;
    v39 = sub_1DAED21CC();

    if ((v39 & 1) == 0)
    {
LABEL_30:
      v11 = v104 + 1;
      v32 += 8;
      --v33;
      if (v104 + 1 != v103)
      {
        goto LABEL_31;
      }

      v11 = v103;
      v10 = v99;
      v5 = v101;
      v6 = a3;
      v9 = v97;
      goto LABEL_38;
    }

    if (!v31)
    {
      break;
    }

    v40 = *v7;
    v34 = *(v7 + 8);
    *v7 = v34;
    *(v7 + 8) = v40;
    v7 -= 8;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
}

uint64_t sub_1DAEBA530(void **__dst, void **a2, id *a3, void **__src)
{
  v4 = a3;
  v5 = __dst;
  v6 = a2 - __dst;
  v7 = a2 - __dst + 7;
  if (a2 - __dst >= 0)
  {
    v7 = a2 - __dst;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 >= v10 >> 3)
  {
    v14 = __src;
    if (__src != a2 || &a2[v11] <= __src)
    {
      v22 = a2;
      memmove(__src, a2, 8 * v11);
      a2 = v22;
    }

    v21 = a2;
    v36 = &v14[v11];
    if (v9 >= 8 && a2 > v5)
    {
      sub_1DAED21EC();
      v34 = v5;
LABEL_27:
      v35 = v21;
      v23 = v21 - 1;
      --v4;
      v24 = v36;
      do
      {
        v25 = v14;
        v26 = v4 + 1;
        v27 = *--v24;
        v28 = v23;
        v29 = *v23;
        v30 = v27;
        v31 = v29;
        v32 = sub_1DAED21CC();

        if (v32)
        {
          if (v26 != v35)
          {
            *v4 = *v28;
          }

          v14 = v25;
          if (v36 <= v25 || (v21 = v28, v28 <= v34))
          {
            v21 = v28;
            goto LABEL_38;
          }

          goto LABEL_27;
        }

        if (v26 != v36)
        {
          *v4 = *v24;
        }

        --v4;
        v36 = v24;
        v14 = v25;
        v23 = v28;
      }

      while (v24 > v25);
      v36 = v24;
      v21 = v35;
    }
  }

  else
  {
    v12 = a2;
    if (__src != __dst || &__dst[v8] <= __src)
    {
      v13 = __src;
      memmove(__src, __dst, 8 * v8);
      __src = v13;
    }

    v36 = &__src[v8];
    v14 = __src;
    if (v6 >= 8 && v12 < v4)
    {
      sub_1DAED21EC();
      while (1)
      {
        v15 = *v14;
        v16 = *v12;
        v17 = v15;
        v18 = sub_1DAED21CC();

        if ((v18 & 1) == 0)
        {
          break;
        }

        v19 = v12;
        v20 = v5 == v12++;
        if (!v20)
        {
          goto LABEL_17;
        }

LABEL_18:
        ++v5;
        if (v14 >= v36 || v12 >= v4)
        {
          goto LABEL_20;
        }
      }

      v19 = v14;
      v20 = v5 == v14++;
      if (v20)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v5 = *v19;
      goto LABEL_18;
    }

LABEL_20:
    v21 = v5;
  }

LABEL_38:
  if (v21 != v14 || v21 >= (v14 + ((v36 - v14 + (v36 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v21, v14, 8 * (v36 - v14));
  }

  return 1;
}

uint64_t *sub_1DAEBA7F4(uint64_t *result, uint64_t **a2, uint64_t *a3, uint64_t a4)
{
  v4 = a4;
  v7 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v10 = 0;
    v18 = -1 << *(v4 + 32);
    v8 = v4 + 56;
    v9 = ~v18;
    v19 = -v18;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v11 = v20 & *(v4 + 56);
    v23 = v7;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v7 = 0;
    goto LABEL_32;
  }

  sub_1DAED242C();
  sub_1DAD674D4(0, &qword_1EE005530, 0x1E6994358);
  sub_1DAE8A564(&unk_1EE005520, &qword_1EE005530, 0x1E6994358);
  result = sub_1DAED1F9C();
  v4 = v25;
  v8 = v26;
  v9 = v27;
  v10 = v28;
  v11 = v29;
  v23 = v7;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v7 = 0;
    goto LABEL_32;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
LABEL_35:
    __break(1u);
    return result;
  }

  v7 = 0;
  v22 = v9;
  v12 = (v9 + 64) >> 6;
  v13 = 1;
  while (1)
  {
    if (v4 < 0)
    {
      if (!sub_1DAED24BC())
      {
        goto LABEL_30;
      }

      sub_1DAD674D4(0, &qword_1EE005530, 0x1E6994358);
      swift_dynamicCast();
      result = v24;
      if (!v24)
      {
        goto LABEL_30;
      }

      goto LABEL_17;
    }

    v14 = v10;
    if (!v11)
    {
      break;
    }

    v15 = v10;
LABEL_13:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v4 + 48) + ((v15 << 9) | (8 * v16)));
    if (!result)
    {
      goto LABEL_30;
    }

LABEL_17:
    *a2 = result;
    if (v13 == a3)
    {
      v7 = a3;
      goto LABEL_30;
    }

    ++a2;
    v7 = v13;
    if (__OFADD__(v13++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      __break(1u);
      goto LABEL_35;
    }

    if (v15 >= v12)
    {
      break;
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v10 = v15;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v12 <= v10 + 1)
  {
    v21 = v10 + 1;
  }

  else
  {
    v21 = v12;
  }

  v10 = v21 - 1;
LABEL_30:
  v9 = v22;
LABEL_32:
  *v23 = v4;
  v23[1] = v8;
  v23[2] = v9;
  v23[3] = v10;
  v23[4] = v11;
  return v7;
}

uint64_t sub_1DAEBAA34(uint64_t result, uint64_t *a2, uint64_t a3, unint64_t a4, __n128 a5)
{
  v5 = a4;
  v8 = result;
  if ((a4 & 0xC000000000000001) == 0)
  {
LABEL_21:
    v19 = -1 << *(v5 + 32);
    v9 = v5 + 64;
    v10 = ~v19;
    v20 = -v19;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v11 = v21 & *(v5 + 64);
    v23 = v10;
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_25:
    v16 = 0;
    a3 = 0;
    goto LABEL_32;
  }

  result = sub_1DAED266C();
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v5 = result | 0x8000000000000000;
  v23 = 0;
  if (!a2)
  {
    goto LABEL_25;
  }

LABEL_3:
  if (!a3)
  {
    v16 = 0;
    goto LABEL_32;
  }

  if (a3 < 0)
  {
LABEL_34:
    __break(1u);
    return result;
  }

  v24 = a3;
  a3 = 0;
  v12 = 0;
  v13 = (v10 + 64) >> 6;
  v14 = 1;
  while (1)
  {
    if ((v5 & 0x8000000000000000) != 0)
    {
      if (!sub_1DAED271C())
      {
        goto LABEL_31;
      }

      sub_1DAED21EC();
      swift_dynamicCast();
      result = v25;
      v16 = v12;
      if (!v25)
      {
        goto LABEL_32;
      }

      goto LABEL_17;
    }

    v15 = v12;
    if (!v11)
    {
      break;
    }

    v16 = v12;
LABEL_13:
    v17 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    result = *(*(v5 + 48) + ((v16 << 9) | (8 * v17)));
    if (!result)
    {
      goto LABEL_32;
    }

LABEL_17:
    *a2 = result;
    a3 = v24;
    if (v14 == v24)
    {
LABEL_31:
      v16 = v12;
      goto LABEL_32;
    }

    ++a2;
    a3 = v14;
    if (__OFADD__(v14++, 1))
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  while (1)
  {
    v16 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
      goto LABEL_34;
    }

    if (v16 >= v13)
    {
      break;
    }

    v11 = *(v9 + 8 * v16);
    ++v15;
    if (v11)
    {
      v12 = v16;
      goto LABEL_13;
    }
  }

  v11 = 0;
  if (v13 <= v12 + 1)
  {
    v22 = v12 + 1;
  }

  else
  {
    v22 = v13;
  }

  v16 = v22 - 1;
LABEL_32:
  *v8 = v5;
  v8[1] = v9;
  v8[2] = v23;
  v8[3] = v16;
  v8[4] = v11;
  return a3;
}

uint64_t objectdestroy_92Tm()
{

  return swift_deallocObject();
}

double sub_1DAEBB034()
{
  v1 = *(sub_1DAED10DC() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  return sub_1DAEB5A98(v2, v3, v4);
}

void sub_1DAEBB098()
{
  v1 = *(sub_1DAECE3DC() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);
  v6 = *(v0 + v3);
  v7 = (v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  sub_1DAEB54E0(v4, v5, v0 + v2, v6, v8, v9);
}

unint64_t sub_1DAEBB1B8()
{
  result = qword_1ECC0A9E8;
  if (!qword_1ECC0A9E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0A9E8);
  }

  return result;
}

uint64_t sub_1DAEBB27C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v63 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E80, &qword_1DAED68D0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v60 = &v50 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v50 - v6;
  v61 = sub_1DAED17EC();
  v8 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v10 = &v50 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v50 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v58 = &v50 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v57 = &v50 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v64 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v66 = &v50 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v50 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v50 - v26;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v50 - v29;
  v31 = sub_1DAECE7FC();
  v62 = v30;
  sub_1DAEBB768(v31, v30);
  v32 = sub_1DAED19EC();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v55 = v33 + 56;
  v56 = v34;
  v34(v7, 1, 1, v32);
  v35 = sub_1DAECE80C();
  v65 = v8;
  if (v35)
  {
    v36 = v35;
    sub_1DAECEAEC();
    v37 = sub_1DAECEAAC();
    v51 = v27;
    sub_1DAEBB768(v37, v27);
    v38 = sub_1DAECEABC();
    v59 = v24;
    sub_1DAEBB768(v38, v24);
    v39 = sub_1DAECEACC();
    sub_1DAEBB768(v39, v66);
    v40 = sub_1DAECEADC();
    sub_1DAEBB768(v40, v64);
    v53 = v32;
    v54 = a1;
    v41 = *(v8 + 16);
    v50 = v13;
    v52 = v7;
    v42 = v60;
    v43 = v61;
    v41(v57, v27, v61);
    v41(v58, v59, v43);
    v41(v13, v66, v43);
    v44 = v64;
    v41(v10, v64, v43);
    sub_1DAED19CC();

    v45 = *(v65 + 8);
    v45(v44, v43);
    v45(v66, v43);
    v45(v59, v43);
    v27 = v51;
    v45(v51, v43);
    a1 = v54;
    v46 = v52;
    sub_1DAD64398(v52, &unk_1ECC09E80, &qword_1DAED68D0);
    v56(v42, 0, 1, v53);
    sub_1DAEBBBDC(v42, v46);
    v47 = v42;
  }

  else
  {
    v41 = *(v8 + 16);
    v46 = v7;
    v47 = v60;
    v43 = v61;
  }

  v48 = v62;
  v41(v27, v62, v43);
  sub_1DAD6495C(v46, v47, &unk_1ECC09E80, &qword_1DAED68D0);
  sub_1DAED1A8C();

  sub_1DAD64398(v46, &unk_1ECC09E80, &qword_1DAED68D0);
  return (*(v65 + 8))(v48, v43);
}

uint64_t sub_1DAEBB768@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9F0, qword_1DAEDF280);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v58 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v65 = &v58 - v8;
  v9 = sub_1DAED184C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v58 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v58 - v17);
  MEMORY[0x1EEE9AC00](v19);
  v21 = (&v58 - v20);
  v22 = sub_1DAECE86C();
  v23 = sub_1DAECEA5C();
  v62 = v6;
  v63 = a2;
  if (v23 == 1)
  {
    sub_1DAECEA6C();
    v30 = v29;

    *v21 = v30;
  }

  else
  {
    if (!v23)
    {
      sub_1DAECEA7C();
      v25 = v24;
      sub_1DAECEA6C();
      v27 = v26;

      *v21 = v25;
      v21[1] = v27;
      v28 = MEMORY[0x1E6985940];
      goto LABEL_7;
    }

    *v21 = 0;
  }

  v28 = MEMORY[0x1E6985938];
LABEL_7:
  v31 = v10[13];
  v31(v21, *v28, v9);
  v32 = sub_1DAECE87C();
  v33 = sub_1DAECEA5C();
  if (v33 == 1)
  {
    sub_1DAECEA6C();
    v40 = v39;

    *v18 = v40;
  }

  else
  {
    if (!v33)
    {
      sub_1DAECEA7C();
      v35 = v34;
      sub_1DAECEA6C();
      v37 = v36;

      *v18 = v35;
      v18[1] = v37;
      v38 = MEMORY[0x1E6985940];
      goto LABEL_13;
    }

    *v18 = 0;
  }

  v38 = MEMORY[0x1E6985938];
LABEL_13:
  v31(v18, *v38, v9);
  sub_1DAECE8BC();
  sub_1DAECE88C();
  sub_1DAECE8AC();
  v64 = a1;
  v41 = sub_1DAECE8CC();
  if (v41)
  {
    v42 = v41;
    [v41 integerValue];

    sub_1DAECFACC();
  }

  else
  {
    v43 = sub_1DAECFADC();
    (*(*(v43 - 8) + 56))(v65, 1, 1, v43);
  }

  v44 = v62;
  v45 = sub_1DAECE89C();
  if (v45)
  {
    sub_1DAECE74C();
    v61 = v46;
    sub_1DAECE76C();
    v60 = v47;
    sub_1DAECE75C();
    v58 = v48;
    sub_1DAECE77C();
    v59 = v49;

    *&v50 = v61;
    *(&v50 + 1) = v60;
    *&v51 = v58;
    *(&v51 + 1) = v59;
  }

  else
  {
    v50 = 0uLL;
    v51 = 0uLL;
  }

  v66 = v50;
  v67 = v51;
  v68 = v45 == 0;
  v52 = v10[2];
  v52(v15, v21, v9);
  v52(v12, v18, v9);
  v53 = v21;
  v54 = v18;
  v55 = v65;
  sub_1DAD6495C(v65, v44, &qword_1ECC0A9F0, qword_1DAEDF280);
  sub_1DAED17BC();

  sub_1DAD64398(v55, &qword_1ECC0A9F0, qword_1DAEDF280);
  v56 = v10[1];
  v56(v54, v9);
  return (v56)(v53, v9);
}

uint64_t sub_1DAEBBBDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC09E80, &qword_1DAED68D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAEBBC4C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF64C();
  *a1 = result;
  return result;
}

uint64_t sub_1DAEBBCA4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1DAECF6FC();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1DAEBBD14@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF56C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAEBBD6C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF4EC();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAEBBDC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF50C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAEBBE1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1DAECF52C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1DAEBBEE8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0A9F8, &qword_1DAEDF478);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1DAD6495C(a1, &v5 - v3, &qword_1ECC0A9F8, &qword_1DAEDF478);
  return sub_1DAECF45C();
}

uint64_t sub_1DAEBBFE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(char *))
{
  v8 = a5(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  (*(v12 + 16))(&v14 - v10, a1, v9);
  return a6(v11);
}

uint64_t sub_1DAEBC0B0@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X8>)
{
  v44 = a3;
  v5 = sub_1DAED157C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v34[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09C58, &qword_1DAEDF470);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v34[-v10];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07DF0, &qword_1DAED5870);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v43 = &v34[-((v13 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34[-v15];
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34[-v18];
  v42 = a1;
  sub_1DAD6495C(a1, &v34[-v18], &qword_1ECC07DF0, &qword_1DAED5870);
  v20 = a2[3];
  v21 = a2[4];
  v37 = __swift_project_boxed_opaque_existential_1(a2, v20);
  v40 = v21;
  v41 = v20;
  sub_1DAED19FC();
  v38 = *(v6 + 56);
  v39 = v6 + 56;
  v38(v16, 0, 1, v5);
  v22 = *(v9 + 56);
  sub_1DAD6495C(v19, v11, &qword_1ECC07DF0, &qword_1DAED5870);
  sub_1DAD6495C(v16, &v11[v22], &qword_1ECC07DF0, &qword_1DAED5870);
  v23 = v6;
  v24 = *(v6 + 48);
  if (v24(v11, 1, v5) == 1)
  {
    sub_1DAD64398(v16, &qword_1ECC07DF0, &qword_1DAED5870);
    sub_1DAD64398(v19, &qword_1ECC07DF0, &qword_1DAED5870);
    v25 = v24(&v11[v22], 1, v5);
    v26 = v5;
    if (v25 == 1)
    {
      result = sub_1DAD64398(v11, &qword_1ECC07DF0, &qword_1DAED5870);
LABEL_9:
      v29 = 0;
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  sub_1DAD6495C(v11, v43, &qword_1ECC07DF0, &qword_1DAED5870);
  if (v24(&v11[v22], 1, v5) == 1)
  {
    sub_1DAD64398(v16, &qword_1ECC07DF0, &qword_1DAED5870);
    sub_1DAD64398(v19, &qword_1ECC07DF0, &qword_1DAED5870);
    (*(v6 + 8))(v43, v5);
    v26 = v5;
LABEL_6:
    sub_1DAD64398(v11, &qword_1ECC09C58, &qword_1DAEDF470);
    goto LABEL_7;
  }

  v30 = &v11[v22];
  v31 = v36;
  (*(v6 + 32))(v36, v30, v5);
  sub_1DAD9017C(&qword_1EE00AB28, MEMORY[0x1E6985700], MEMORY[0x1E6985718]);
  v32 = v43;
  v35 = sub_1DAED1CAC();
  v33 = *(v23 + 8);
  v33(v31, v5);
  sub_1DAD64398(v16, &qword_1ECC07DF0, &qword_1DAED5870);
  sub_1DAD64398(v19, &qword_1ECC07DF0, &qword_1DAED5870);
  v33(v32, v5);
  result = sub_1DAD64398(v11, &qword_1ECC07DF0, &qword_1DAED5870);
  v26 = v5;
  if (v35)
  {
    goto LABEL_9;
  }

LABEL_7:
  v28 = v42;
  sub_1DAD64398(v42, &qword_1ECC07DF0, &qword_1DAED5870);
  sub_1DAED19FC();
  v29 = 1;
  result = v38(v28, 0, 1, v26);
LABEL_10:
  *v44 = v29;
  return result;
}

id sub_1DAEBC784(void *a1)
{
  v13[10] = *MEMORY[0x1E69E9840];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AA00, &qword_1DAEDF4C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DAED6200;
  v4 = *MEMORY[0x1E696A3A0];
  *(inited + 32) = *MEMORY[0x1E696A3A0];
  type metadata accessor for FileProtectionType(0);
  *(inited + 64) = v5;
  *(inited + 40) = a1;
  v6 = v4;
  v7 = a1;
  sub_1DADDCCE0(inited);
  swift_setDeallocating();
  sub_1DAEBC928(inited + 32);
  type metadata accessor for FileAttributeKey(0);
  sub_1DAEBC990();
  v8 = sub_1DAED1C0C();

  sub_1DAECDBCC();
  v9 = sub_1DAED1CBC();

  v13[0] = 0;
  v10 = [v1 setAttributes:v8 ofItemAtPath:v9 error:v13];

  if (v10)
  {
    return v13[0];
  }

  v12 = v13[0];
  sub_1DAECDB1C();

  swift_willThrow();
  return swift_willThrow();
}

uint64_t sub_1DAEBC928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08100, &qword_1DAEDF4D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1DAEBC990()
{
  result = qword_1EE005608;
  if (!qword_1EE005608)
  {
    type metadata accessor for FileAttributeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005608);
  }

  return result;
}

uint64_t sub_1DAEBCA08(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECE69C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for InProcessWidgetInstance(0);
  sub_1DADB7FE4(&qword_1ECC08AC8, type metadata accessor for InProcessWidgetInstance, &protocol conformance descriptor for InProcessWidgetInstance);
  sub_1DAECEE4C();
  sub_1DAECEEBC();

  v8 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
  swift_beginAccess();
  (*(v5 + 24))(v2 + v8, a1, v4);
  swift_endAccess();
  v9 = (*(v5 + 16))(v7, v2 + v8, v4);
  v10 = *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel);
  if (v10)
  {
    MEMORY[0x1EEE9AC00](v9);
    *(&v13 - 4) = v10;
    *(&v13 - 3) = v7;
    *(&v13 - 2) = v2;

    sub_1DAEA1A98(sub_1DAEC600C);
    sub_1DAEC3F88();
  }

  v11 = *(v5 + 8);
  v11(a1, v4);
  return (v11)(v7, v4);
}

uint64_t sub_1DAEBCC2C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
  swift_beginAccess();
  v5 = sub_1DAECE69C();
  return (*(*(v5 - 8) + 16))(a2, v3 + v4, v5);
}

uint64_t sub_1DAEBCCB8(uint64_t a1, uint64_t *a2)
{
  v4 = sub_1DAECE69C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - v10;
  v12 = *(v5 + 16);
  v12(&v17 - v10, a1, v4, v9);
  v13 = *a2;
  (v12)(v7, v11, v4);
  v14 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  swift_beginAccess();
  (*(v5 + 24))(v13 + v14, v7, v4);
  swift_endAccess();
  sub_1DAEC31B0();
  v15 = *(v5 + 8);
  v15(v7, v4);
  return (v15)(v11, v4);
}

uint64_t sub_1DAEBCE64@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  swift_beginAccess();
  v7 = a2(0);
  return (*(*(v7 - 8) + 16))(a3, v3 + v6, v7);
}

uint64_t sub_1DAEBCEF0(uint64_t a1)
{
  v3 = sub_1DAECE69C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  swift_beginAccess();
  (*(v4 + 24))(v1 + v8, v7, v3);
  swift_endAccess();
  sub_1DAEC31B0();
  v9 = *(v4 + 8);
  v9(a1, v3);
  return (v9)(v7, v3);
}

void (*sub_1DAEBD034(uint64_t *a1))(uint64_t *a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x88uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 72) = v1;
  v6 = sub_1DAECE69C();
  v5[10] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[11] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[12] = swift_coroFrameAlloc();
    v5[13] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[12] = malloc(*(v7 + 64));
    v5[13] = malloc(v9);
    v10 = malloc(v9);
  }

  v11 = v10;
  v5[14] = v10;
  v12 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
  swift_beginAccess();
  v13 = *(v8 + 16);
  v5[15] = v13;
  v5[16] = (v8 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v13(v11, v1 + v12, v6);
  return sub_1DAEBD1A8;
}

void sub_1DAEBD1A8(uint64_t *a1, char a2)
{
  v3 = *a1;
  (*(*a1 + 120))(*(*a1 + 104), *(v3 + 112), *(v3 + 80));
  v5 = *(v3 + 104);
  v4 = *(v3 + 112);
  v7 = *(v3 + 88);
  v6 = *(v3 + 96);
  if (a2)
  {
    v8 = *(v3 + 72);
    v9 = *(v3 + 80);
    (*(v3 + 120))(*(v3 + 96), *(v3 + 104), v9);
    v10 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
    swift_beginAccess();
    (*(v7 + 24))(v8 + v10, v6, v9);
    swift_endAccess();
    sub_1DAEC31B0();
    v11 = *(v7 + 8);
    v11(v6, v9);
  }

  else
  {
    v12 = *(v3 + 72);
    v9 = *(v3 + 80);
    v13 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
    swift_beginAccess();
    (*(v7 + 24))(v12 + v13, v5, v9);
    swift_endAccess();
    sub_1DAEC31B0();
    v11 = *(v7 + 8);
  }

  v11(v5, v9);
  v11(v4, v9);
  free(v4);
  free(v5);
  free(v6);

  free(v3);
}

BOOL sub_1DAEBD328()
{
  v1 = v0;
  v2 = sub_1DAECE69C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = sub_1DAECE4EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession);
  if (v13)
  {
    v14 = *(v13 + 56);
    if (v14)
    {
      v15 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
      swift_beginAccess();
      (*(v10 + 16))(v12, v1 + v15, v9);
      v16 = v14;
      v17 = sub_1DAECE4BC();
      (*(v10 + 8))(v12, v9);
      v18 = [v17 family];

      if ([v16 wantsMaterialBackgroundForFamily_])
      {
        v28 = v16;
        v19 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
        swift_beginAccess();
        v20 = *(v3 + 16);
        v20(v8, v1 + v19, v2);
        v21 = sub_1DAECE59C();
        v22 = *(v3 + 8);
        v22(v8, v2);
        v23 = [v21 backgroundViewPolicy];

        if (!v23)
        {

          return 1;
        }

        v20(v5, v1 + v19, v2);
        v24 = sub_1DAECE5AC();
        v22(v5, v2);
        if (v24)
        {
          v25 = [v24 filterStyle];

          return v25 == 7;
        }
      }

      else
      {
      }
    }
  }

  return 0;
}

uint64_t sub_1DAEBD648@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1DAE53930;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1DADCA8EC(v4, v5);
}

uint64_t sub_1DAEBD6E8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DAE5DE98;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1DADCA8EC(v3, v4);
  return sub_1DAD660D8(v8, v9);
}

uint64_t sub_1DAEBD850@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1DAEC6108;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1DADCA8EC(v4, v5);
}

uint64_t sub_1DAEBD8F0(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DAEA323C;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1DADCA8EC(v3, v4);
  return sub_1DAD660D8(v8, v9);
}

uint64_t sub_1DAEBDA58@<X0>(void *a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = sub_1DAD93D0C;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return sub_1DADCA8EC(v4, v5);
}

uint64_t sub_1DAEBDAF8(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = sub_1DAEC60E0;
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  sub_1DADCA8EC(v3, v4);
  return sub_1DAD660D8(v8, v9);
}

uint64_t sub_1DAEBDBE0(void *a1, void (*a2)(void, void))
{
  v4 = (v2 + *a1);
  swift_beginAccess();
  v5 = *v4;
  a2(*v4, v4[1]);
  return v5;
}

uint64_t sub_1DAEBDC68(uint64_t a1, uint64_t a2, void *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v8 = (v4 + *a3);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  *v8 = a1;
  v8[1] = a2;
  return a4(v9, v10);
}

void sub_1DAEBDD2C()
{
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel))
  {
  }

  else
  {
    __break(1u);
  }
}

uint64_t InProcessWidgetInstance.__allocating_init(identity:configuration:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  InProcessWidgetInstance.init(identity:configuration:)(a1, a2);
  return v4;
}

unint64_t InProcessWidgetInstance.init(identity:configuration:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v40 = a2;
  v5 = sub_1DAED10DC();
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7CD0];
  *(v2 + 16) = MEMORY[0x1E69E7CD0];
  v9 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__contentDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  swift_allocObject();
  v10 = sub_1DAECEE7C();
  v36 = v9;
  *(v2 + v9) = v10;
  v11 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
  *v13 = 0;
  v13[1] = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__activeRequesters) = v8;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityPreferences) = MEMORY[0x1E69E7CC8];
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession) = 0;
  v14 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController);
  *v14 = 0;
  v14[1] = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) = 0;
  *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__stalenessObserver) = 0;
  if (qword_1EE00B438 != -1)
  {
    swift_once();
  }

  v15 = qword_1EE011BD8;
  v16 = (v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__services);
  v16[3] = type metadata accessor for ServiceFacade();
  v16[4] = &off_1F56B0688;
  *v16 = v15;
  v17 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
  v39 = sub_1DAECE4EC();
  v18 = *(v39 - 8);
  (*(v18 + 16))(v3 + v17, a1, v39);
  v19 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  v20 = sub_1DAECE69C();
  v21 = *(v20 - 8);
  v35 = a1;
  v22 = *(v21 + 16);
  v23 = v3 + v19;
  v24 = v40;
  v22(v23, v40, v20);
  v22(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration, v24, v20);

  sub_1DAED10CC();
  (*(v37 + 32))(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__environmentModifiers, v7, v38);
  v41 = *(v3 + v36);
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF88]);
  *(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_contentDidChangePublisher) = sub_1DAECEF6C();
  v25 = (v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__instanceID);
  *v25 = 0x6C616974696E69;
  v25[1] = 0xE700000000000000;
  v41 = v3;
  v26 = sub_1DAED29CC();
  v28 = v27;
  v41 = 0;
  v42 = 0xE000000000000000;
  sub_1DAED256C();

  v41 = 0xD000000000000024;
  v42 = 0x80000001DAEE68E0;
  v29 = v35;
  v30 = sub_1DAECE49C();
  if (v31)
  {
    v32 = v31;
  }

  else
  {
    v30 = 7104878;
    v32 = 0xE300000000000000;
  }

  MEMORY[0x1E127DA50](v30, v32);

  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  MEMORY[0x1E127DA50](v26, v28);

  v33 = v42;
  *v25 = v41;
  v25[1] = v33;

  sub_1DAEC083C();

  (*(v21 + 8))(v40, v20);
  (*(v18 + 8))(v29, v39);
  return v3;
}

unint64_t InProcessWidgetInstance.__allocating_init(forXcodePreviewsWithIdentity:configuration:environmentProvider:)(uint64_t a1, uint64_t a2, void *a3)
{
  v26 = a2;
  v27 = a1;
  v6 = sub_1DAECE69C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DAECE4EC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v14, a1, v10, v12);
  (*(v7 + 16))(v9, a2, v6);
  sub_1DAD648F8(a3, v28);
  v15 = type metadata accessor for ServiceFacade();
  swift_allocObject();
  v16 = sub_1DAD64C94(1, v28);
  v28[3] = v15;
  v28[4] = &off_1F56B0688;
  v28[0] = v16;
  type metadata accessor for InProcessWidgetInstance(0);
  v17 = swift_allocObject();
  v18 = __swift_mutable_project_boxed_opaque_existential_1(v28, v15);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v21 = (&v25 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v22 + 16))(v21, v19);
  v23 = sub_1DAEC55FC(v14, v9, *v21, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  (*(v7 + 8))(v26, v6);
  (*(v11 + 8))(v27, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  return v23;
}

double sub_1DAEBE4E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083A0, &unk_1DAED6758);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1DAECE47C();
  v8 = *(v7 - 8);
  *&result = MEMORY[0x1EEE9AC00](v7).n128_u64[0];
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
  {
    type metadata accessor for LaunchRequestBuilder();

    sub_1DAE50D14(v12, a1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {

      sub_1DAD64398(v6, &qword_1ECC083A0, &unk_1DAED6758);
    }

    else
    {
      (*(v8 + 32))(v11, v6, v7);
      v13 = v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler;
      swift_beginAccess();
      v14 = *v13;
      if (*v13)
      {
        v15 = *(v13 + 8);

        v14(v11);

        sub_1DAD660D8(v14, v15);
        (*(v8 + 8))(v11, v7);
      }

      else
      {
        (*(v8 + 8))(v11, v7);
      }
    }
  }

  return result;
}

double sub_1DAEBE720(void *a1)
{
  swift_beginAccess();
  v2 = a1;
  sub_1DAECE4CC();
  swift_endAccess();
  sub_1DAEC083C();

  type metadata accessor for InProcessWidgetInstance(0);
  sub_1DADB7FE4(&qword_1ECC08AC8, type metadata accessor for InProcessWidgetInstance, &protocol conformance descriptor for InProcessWidgetInstance);
  sub_1DAECEE4C();
  sub_1DAECEEBC();

  return result;
}

void sub_1DAEBE7F0(uint64_t a1, uint64_t a2)
{
  if ((*(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) & 1) == 0)
  {
    v3 = v2;
    *(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) = 1;
    v4 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController);
    if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController))
    {
      v5 = swift_unknownObjectRetain();
      sub_1DAE0CC08(v5);
      swift_unknownObjectRelease();
    }

    *v4 = 0;
    v4[1] = 0;
    swift_unknownObjectRelease();
    if (*(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel))
    {

      sub_1DAEA1304();
    }

    swift_beginAccess();
    v6 = *(v2 + 16);
    if ((v6 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1DAED242C();
      sub_1DAECEE3C();
      sub_1DADB7FE4(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
      sub_1DAED1F9C();
      v8 = v23;
      v7 = v24;
      v9 = v25;
      v10 = v26;
      v11 = v27;
    }

    else
    {
      v12 = -1 << *(v6 + 32);
      v7 = v6 + 56;
      v9 = ~v12;
      v13 = -v12;
      if (v13 < 64)
      {
        v14 = ~(-1 << v13);
      }

      else
      {
        v14 = -1;
      }

      v11 = v14 & *(v6 + 56);
      swift_bridgeObjectRetain_n();
      v10 = 0;
      v8 = v6;
    }

    v15 = (v9 + 64) >> 6;
    if (v8 < 0)
    {
      goto LABEL_19;
    }

    while (1)
    {
      v16 = v10;
      v17 = v11;
      v18 = v10;
      if (!v11)
      {
        break;
      }

LABEL_17:
      v19 = (v17 - 1) & v17;
      v20 = *(*(v8 + 48) + ((v18 << 9) | (8 * __clz(__rbit64(v17)))));

      if (!v20)
      {
LABEL_23:
        sub_1DAD70B20(v8);

        v21 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession;
        if (*(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
        {

          sub_1DADD52BC();
        }

        *(v3 + v21) = 0;

        return;
      }

      while (1)
      {
        sub_1DAECEE2C();

        v10 = v18;
        v11 = v19;
        if ((v8 & 0x8000000000000000) == 0)
        {
          break;
        }

LABEL_19:
        if (sub_1DAED24BC())
        {
          sub_1DAECEE3C();
          swift_dynamicCast();
          v18 = v10;
          v19 = v11;
          if (v22)
          {
            continue;
          }
        }

        goto LABEL_23;
      }
    }

    while (1)
    {
      v18 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v18 >= v15)
      {
        goto LABEL_23;
      }

      v17 = *(v7 + 8 * v18);
      ++v16;
      if (v17)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1DAEBEACC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1DAECE69C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1DAECE4EC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
  swift_beginAccess();
  (*(v9 + 16))(v11, v2 + v12, v8);
  (*(v5 + 16))(v7, a1, v4);
  type metadata accessor for InProcessWidgetInstance(0);
  v13 = swift_allocObject();
  InProcessWidgetInstance.init(identity:configuration:)(v11, v7);
  v14 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  swift_beginAccess();
  v16 = *v14;
  v15 = v14[1];
  v17 = (v13 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  swift_beginAccess();
  v18 = *v17;
  v19 = v17[1];
  *v17 = v16;
  v17[1] = v15;
  sub_1DADCA8EC(v16, v15);
  sub_1DAD660D8(v18, v19);
  v20 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler);
  swift_beginAccess();
  v22 = *v20;
  v21 = v20[1];
  v23 = (v13 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler);
  swift_beginAccess();
  v24 = *v23;
  v25 = v23[1];
  *v23 = v22;
  v23[1] = v21;
  sub_1DADCA8EC(v22, v21);
  sub_1DAD660D8(v24, v25);
  v26 = (v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];
  v29 = (v13 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
  swift_beginAccess();
  v30 = *v29;
  v31 = v29[1];
  *v29 = v28;
  v29[1] = v27;
  sub_1DADCA8EC(v28, v27);
  sub_1DAD660D8(v30, v31);
  return v13;
}

double sub_1DAEBEDA4()
{
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
  {

    sub_1DADC551C(0);
  }

  return result;
}

uint64_t sub_1DAEBEE00@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v27 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AA78, &unk_1DAEDF4E0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = sub_1DAED0DDC();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DAECE4EC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v24 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  sub_1DAD648F8(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__services, v30);
  v15 = *__swift_project_boxed_opaque_existential_1(v30, v30[3]);
  swift_beginAccess();
  result = sub_1DAD6495C(v15 + 16, v28, &qword_1ECC08380, &unk_1DAED6590);
  if (v29)
  {
    v23 = *(*__swift_project_boxed_opaque_existential_1(v28, v29) + 56);
    v17 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
    swift_beginAccess();
    v22 = *(v10 + 16);
    v22(v14, v2 + v17, v9);

    sub_1DAECE4BC();
    sub_1DAECE4DC();
    sub_1DAECE4AC();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F70, &qword_1DAEDF4F0);
    (*(*(v18 - 8) + 56))(v5, 0, 1, v18);
    sub_1DAED0D9C();
    v19 = *(v10 + 8);
    v19(v14, v9);
    v20 = v24;
    v22(v24, v2 + v17, v9);
    sub_1DAECE48C();
    v19(v20, v9);
    sub_1DAE95F58(v27);

    (*(v25 + 8))(v8, v26);
    __swift_destroy_boxed_opaque_existential_1Tm(v28);
    return __swift_destroy_boxed_opaque_existential_1Tm(v30);
  }

  else
  {
    __break(1u);
  }

  return result;
}

double sub_1DAEBF184(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DAECE4EC();
  v72 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v62 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  if ((*(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) & 1) == 0)
  {
    v10 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__activeRequesters;
    swift_beginAccess();
    v11 = *(*(v2 + v10) + 16);
    swift_beginAccess();

    sub_1DAE87D3C(&v73, a1, a2);
    swift_endAccess();

    if (qword_1EE005E38 != -1)
    {
      swift_once();
    }

    v12 = sub_1DAECEDEC();
    v13 = __swift_project_value_buffer(v12, qword_1EE011730);
    swift_retain_n();

    v14 = sub_1DAECEDCC();
    v15 = sub_1DAED203C();

    LODWORD(v71) = v15;
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v69 = v13;
      v67 = v10;
      v17 = v16;
      v63 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v74[0] = v68;
      *v17 = 136447234;
      v73 = v3;
      v18 = sub_1DAED1D4C();
      v20 = sub_1DAD6482C(v18, v19, v74);
      v65 = a2;
      v21 = v20;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2114;
      v66 = v14;
      v22 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
      swift_beginAccess();
      v62 = *(v72 + 16);
      v62(v8, v3 + v22, v6);
      v23 = sub_1DAECE4BC();
      v64 = a1;
      v24 = v23;
      v70 = v11;
      v25 = *(v72 + 8);
      v25(v8, v6);
      v26 = [v24 extensionIdentity];

      *(v17 + 14) = v26;
      v27 = v63;
      *v63 = v26;
      *(v17 + 22) = 2082;
      v62(v8, v3 + v22, v6);
      v28 = sub_1DAECE4BC();
      v25(v8, v6);
      v29 = v70;
      [v28 family];

      v30 = sub_1DAED206C();
      v32 = sub_1DAD6482C(v30, v31, v74);

      *(v17 + 24) = v32;
      *(v17 + 32) = 2050;
      v33 = *(*(v3 + v67) + 16);

      *(v17 + 34) = v33;

      *(v17 + 42) = 2082;
      *(v17 + 44) = sub_1DAD6482C(v64, v65, v74);
      v34 = v66;
      _os_log_impl(&dword_1DAD61000, v66, v71, "%{public}s-%{public}@-%{public}s: increment activation count to: %{public}ld for viewID: %{public}s", v17, 0x34u);
      sub_1DAD64398(v27, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v27, -1, -1);
      v35 = v68;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v35, -1, -1);
      MEMORY[0x1E127F100](v17, -1, -1);

      if (v29)
      {
        return result;
      }
    }

    else
    {

      if (v11)
      {
        return result;
      }
    }

    v36 = sub_1DAECEDCC();
    v37 = sub_1DAED203C();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      LODWORD(v70) = v37;
      v39 = v38;
      v68 = swift_slowAlloc();
      v71 = swift_slowAlloc();
      v74[0] = v71;
      *v39 = 136446722;
      v73 = v3;
      v40 = sub_1DAED1D4C();
      v69 = v36;
      v42 = sub_1DAD6482C(v40, v41, v74);

      v67 = v39;
      *(v39 + 4) = v42;
      *(v39 + 12) = 2114;
      v43 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
      swift_beginAccess();
      v44 = v72;
      v45 = v8;
      v46 = *(v72 + 16);
      v46(v8, v3 + v43, v6);
      v47 = sub_1DAECE4BC();
      v48 = *(v44 + 8);
      v48(v8, v6);
      v49 = [v47 extensionIdentity];

      v50 = v67;
      v51 = v68;
      *(v67 + 14) = v49;
      *v51 = v49;
      *(v50 + 22) = 2082;
      v52 = v50;
      v46(v8, v3 + v43, v6);
      v53 = sub_1DAECE4BC();
      v48(v45, v6);
      [v53 family];

      v54 = sub_1DAED206C();
      v56 = sub_1DAD6482C(v54, v55, v74);

      *(v52 + 24) = v56;
      v57 = v69;
      _os_log_impl(&dword_1DAD61000, v69, v70, "%{public}s-%{public}@-%{public}s: activating", v52, 0x20u);
      sub_1DAD64398(v51, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v51, -1, -1);
      v58 = v71;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v58, -1, -1);
      MEMORY[0x1E127F100](v52, -1, -1);
    }

    else
    {
    }

    sub_1DAEC3D84();
    sub_1DAEC3F88();
    if (*(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
    {

      sub_1DAD9AB3C();
    }

    v59 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel);
    if (v59)
    {
      v60 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
      swift_beginAccess();
      v61 = *(v59 + v60);
      *(v59 + v60) = 1;

      sub_1DAD9B9DC(v61);
    }
  }

  return result;
}

double sub_1DAEBF8E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1DAECE4EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  BSDispatchQueueAssertMain();
  if ((*(v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) & 1) == 0)
  {
    v11 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__activeRequesters;
    swift_beginAccess();
    sub_1DAEC4F74(a1, a2);
    swift_endAccess();

    if (qword_1EE005E38 != -1)
    {
      swift_once();
    }

    v12 = sub_1DAECEDEC();
    v13 = __swift_project_value_buffer(v12, qword_1EE011730);
    swift_retain_n();

    v14 = sub_1DAECEDCC();
    v15 = sub_1DAED203C();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v65 = v13;
      v63 = v14;
      v17 = v16;
      v67 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      v70[0] = v64;
      *v17 = 136447234;
      v69 = v3;
      v18 = sub_1DAED1D4C();
      v20 = sub_1DAD6482C(v18, v19, v70);
      v68 = v3;
      v21 = v20;

      *(v17 + 4) = v21;
      *(v17 + 12) = 2114;
      v62 = v15;
      v22 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
      swift_beginAccess();
      v61 = a1;
      v59 = *(v7 + 16);
      v59(v9, &v68[v22], v6);
      v23 = v9;
      v24 = sub_1DAECE4BC();
      v66 = v11;
      v25 = v24;
      v60 = a2;
      v26 = *(v7 + 8);
      v26(v23, v6);
      v27 = [v25 extensionIdentity];

      *(v17 + 14) = v27;
      *v67 = v27;
      *(v17 + 22) = 2082;
      v59(v23, &v68[v22], v6);
      v28 = sub_1DAECE4BC();
      v26(v23, v6);
      v9 = v23;
      [v28 family];

      v11 = v66;
      v29 = sub_1DAED206C();
      v31 = sub_1DAD6482C(v29, v30, v70);

      *(v17 + 24) = v31;
      v3 = v68;
      *(v17 + 32) = 2050;
      v32 = *(*(v3 + v11) + 16);

      *(v17 + 34) = v32;

      *(v17 + 42) = 2082;
      *(v17 + 44) = sub_1DAD6482C(v61, v60, v70);
      v33 = v63;
      _os_log_impl(&dword_1DAD61000, v63, v62, "%{public}s-%{public}@-%{public}s: decrement activation count to: %{public}ld for viewID: %{public}s", v17, 0x34u);
      v34 = v67;
      sub_1DAD64398(v67, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v34, -1, -1);
      v35 = v64;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v35, -1, -1);
      MEMORY[0x1E127F100](v17, -1, -1);
    }

    else
    {
    }

    if (!*(*(v3 + v11) + 16))
    {

      v36 = sub_1DAECEDCC();
      v37 = sub_1DAED203C();

      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v67 = swift_slowAlloc();
        v70[0] = v67;
        *v38 = 136446722;
        v69 = v3;
        v39 = sub_1DAED1D4C();
        LODWORD(v66) = v37;
        v41 = sub_1DAD6482C(v39, v40, v70);

        v64 = v38;
        *(v38 + 4) = v41;
        *(v38 + 12) = 2114;
        v42 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
        swift_beginAccess();
        v65 = v36;
        v43 = *(v7 + 16);
        v43(v9, v3 + v42, v6);
        v44 = sub_1DAECE4BC();
        v45 = *(v7 + 8);
        v45(v9, v6);
        v46 = [v44 extensionIdentity];

        v47 = v64;
        *(v64 + 14) = v46;
        *v68 = v46;
        *(v47 + 22) = 2082;
        v48 = v47;
        v43(v9, v3 + v42, v6);
        v49 = sub_1DAECE4BC();
        v45(v9, v6);
        [v49 family];

        v50 = sub_1DAED206C();
        v52 = sub_1DAD6482C(v50, v51, v70);

        *(v48 + 24) = v52;
        v53 = v65;
        _os_log_impl(&dword_1DAD61000, v65, v66, "%{public}s-%{public}@-%{public}s: deactivating", v48, 0x20u);
        v54 = v68;
        sub_1DAD64398(v68, &qword_1ECC07CF0, &qword_1DAED57A0);
        MEMORY[0x1E127F100](v54, -1, -1);
        v55 = v67;
        swift_arrayDestroy();
        MEMORY[0x1E127F100](v55, -1, -1);
        MEMORY[0x1E127F100](v48, -1, -1);
      }

      else
      {
      }

      v56 = *(v3 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel);
      if (v56)
      {
        v57 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
        swift_beginAccess();
        v58 = *(v56 + v57);
        *(v56 + v57) = 0;

        sub_1DAD9B9DC(v58);
      }
    }
  }

  return result;
}

void sub_1DAEBFFF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_1DAECE55C();
  v80 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAECE4EC();
  v12 = *(v11 - 8);
  v77 = v11;
  v78 = v12;
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v76 = &v66 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v79 = &v66 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v81 = &v66 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08108, &unk_1DAEDF840);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v66 - v23;
  BSDispatchQueueAssertMain();
  if ((*(v4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) & 1) == 0)
  {
    v75 = v8;
    sub_1DAD6495C(a3, v24, &qword_1ECC07CD0, &qword_1DAED6560);
    (*(v16 + 56))(v24, 0, 1, v15);
    swift_beginAccess();

    sub_1DADD8188(v24, a1, a2);
    swift_endAccess();
    sub_1DAEC2C18();
    v25 = a2;
    if (qword_1EE005E38 != -1)
    {
      swift_once();
    }

    v26 = sub_1DAECEDEC();
    __swift_project_value_buffer(v26, qword_1EE011730);
    v27 = v81;
    sub_1DAD6495C(a3, v81, &qword_1ECC07CD0, &qword_1DAED6560);

    v28 = sub_1DAECEDCC();
    v29 = sub_1DAED203C();

    if (os_log_type_enabled(v28, v29))
    {
      v71 = v29;
      v72 = v28;
      v73 = v10;
      v30 = v4;
      v31 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v82[0] = v70;
      v82[1] = v30;
      *v31 = 136447490;
      v32 = sub_1DAED1D4C();
      v34 = sub_1DAD6482C(v32, v33, v82);

      *(v31 + 4) = v34;
      *(v31 + 12) = 2114;
      v68 = a1;
      v69 = v25;
      v35 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
      swift_beginAccess();
      v37 = v77;
      v36 = v78;
      v67 = *(v78 + 16);
      v67(v14, v30 + v35, v77);
      v38 = sub_1DAECE4BC();
      v39 = *(v36 + 8);
      v39(v14, v37);
      v40 = [v38 extensionIdentity];

      *(v31 + 14) = v40;
      *v74 = v40;
      *(v31 + 22) = 2082;
      v78 = v30;
      v67(v14, v30 + v35, v37);
      v41 = v80;
      v42 = v75;
      v43 = sub_1DAECE4BC();
      v39(v14, v37);
      v44 = v31;
      [v43 family];

      v45 = sub_1DAED206C();
      v47 = sub_1DAD6482C(v45, v46, v82);

      *(v31 + 24) = v47;
      *(v31 + 32) = 2082;
      *(v31 + 34) = sub_1DAD6482C(v68, v69, v82);
      *(v31 + 42) = 2082;
      v48 = v79;
      sub_1DAD6495C(v81, v79, &qword_1ECC07CD0, &qword_1DAED6560);
      v49 = *(v41 + 48);
      if (v49(v48, 1, v42) == 1)
      {
        sub_1DAD64398(v48, &qword_1ECC07CD0, &qword_1DAED6560);
        v50 = 0x6973697620746F4ELL;
        v51 = 0x6973697620746F4ELL;
        v52 = 0xEB00000000656C62;
        v53 = 0xEB00000000656C62;
        v54 = v73;
      }

      else
      {
        v51 = sub_1DAECE50C();
        v53 = v55;
        (*(v41 + 8))(v48, v42);
        v54 = v73;
        v52 = 0xEB00000000656C62;
        v50 = 0x6973697620746F4ELL;
      }

      sub_1DAD64398(v81, &qword_1ECC07CD0, &qword_1DAED6560);
      v56 = sub_1DAD6482C(v51, v53, v82);

      *(v44 + 44) = v56;
      *(v44 + 52) = 2082;
      v57 = *(v78 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController);
      if (v57)
      {
        v58 = OBJC_IVAR____TtC14WidgetRenderer26VisibilityPolicyController__visibility;
        swift_beginAccess();
        v59 = v57 + v58;
        v60 = v76;
        sub_1DAD6495C(v59, v76, &qword_1ECC07CD0, &qword_1DAED6560);
        if (v49(v60, 1, v42))
        {
          sub_1DAD64398(v60, &qword_1ECC07CD0, &qword_1DAED6560);
        }

        else
        {
          (*(v41 + 16))(v54, v60, v42);
          sub_1DAD64398(v60, &qword_1ECC07CD0, &qword_1DAED6560);
          v50 = sub_1DAECE50C();
          v52 = v61;
          (*(v41 + 8))(v54, v42);
        }
      }

      v62 = sub_1DAD6482C(v50, v52, v82);

      *(v44 + 54) = v62;
      v63 = v72;
      _os_log_impl(&dword_1DAD61000, v72, v71, "%{public}s-%{public}@-%{public}s: update visibility preference for viewModel: %{public}s to: %{public}s, and overall visibility is: %{public}s", v44, 0x3Eu);
      v64 = v74;
      sub_1DAD64398(v74, &qword_1ECC07CF0, &qword_1DAED57A0);
      MEMORY[0x1E127F100](v64, -1, -1);
      v65 = v70;
      swift_arrayDestroy();
      MEMORY[0x1E127F100](v65, -1, -1);
      MEMORY[0x1E127F100](v44, -1, -1);
    }

    else
    {

      sub_1DAD64398(v27, &qword_1ECC07CD0, &qword_1DAED6560);
    }
  }
}

uint64_t sub_1DAEC083C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07D20, &unk_1DAED57D0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v193 = &v182 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083E0, &qword_1DAED7CC0);
  v195 = *(v3 - 8);
  v196 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v194 = &v182 - v4;
  v212 = sub_1DAECEDEC();
  v5 = *(v212 - 8);
  MEMORY[0x1EEE9AC00](v212);
  v7 = &v182 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC09F70, &qword_1DAEDF4F0);
  v191 = *(v8 - 8);
  v192 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v190 = &v182 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08358, &qword_1DAED6568);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v182 - v11;
  v13 = sub_1DAED10DC();
  v204 = *(v13 - 8);
  v205 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v203 = &v182 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1DAECE4EC();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v189 = &v182 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v188 = &v182 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v206 = &v182 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v210 = &v182 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v209 = &v182 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v208 = &v182 - v27;
  v185 = (v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController);
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController))
  {
    v28 = swift_unknownObjectRetain();
    sub_1DAE0CC08(v28);
    swift_unknownObjectRelease();
  }

  v29 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel))
  {

    sub_1DAEA1304();
  }

  v211 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession;
  if (*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
  {

    sub_1DADD52BC();
  }

  v216 = v16;
  v213 = v15;
  v214 = v29;
  v198 = v12;
  v186 = v5;
  v187 = v7;
  swift_beginAccess();
  v215 = v0;
  v30 = *(v0 + 16);
  if ((v30 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_1DAED242C();
    v29 = sub_1DAECEE3C();
    sub_1DADB7FE4(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);
    sub_1DAED1F9C();
    v31 = v233;
    v32 = v234;
    v33 = v235;
    v34 = v236;
    v35 = v237;
  }

  else
  {
    v36 = -1 << *(v30 + 32);
    v32 = v30 + 56;
    v33 = ~v36;
    v37 = -v36;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    else
    {
      v38 = -1;
    }

    v35 = (v38 & *(v30 + 56));
    swift_bridgeObjectRetain_n();
    v34 = 0;
    v31 = v30;
  }

  v207 = v33;
  v39 = ((v33 + 64) >> 6);
  if (v31 < 0)
  {
    goto LABEL_20;
  }

  while (1)
  {
    v40 = v34;
    v41 = v35;
    v42 = v34;
    if (!v35)
    {
      break;
    }

LABEL_18:
    v29 = ((v41 - 1) & v41);
    v43 = *(*(v31 + 48) + ((v42 << 9) | (8 * __clz(__rbit64(v41)))));

    if (!v43)
    {
LABEL_24:
      sub_1DAD70B20(v31);

      v45 = v215;
      v46 = *(v215 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__instanceID + 8);
      v207 = *(v215 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__instanceID);
      v47 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
      swift_beginAccess();
      v48 = v216;
      v49 = (v216 + 16);
      v50 = *(v216 + 16);
      v51 = v208;
      v52 = v213;
      v50(v208, v45 + v47, v213);

      v201 = sub_1DAECE4BC();
      v53 = *(v48 + 8);
      v53(v51, v52);
      v54 = v209;
      v50(v209, v45 + v47, v52);
      v200 = sub_1DAECE4DC();
      v53(v54, v52);
      v202 = v47;
      v55 = v210;
      v50(v210, v45 + v47, v52);
      v56 = sub_1DAECE48C();
      v216 = v48 + 8;
      v53(v55, v52);
      v57 = (v45 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__services);
      sub_1DAD648F8(v57, &v229);
      v58 = *__swift_project_boxed_opaque_existential_1(&v229, v231);
      swift_beginAccess();
      result = sub_1DAD6495C(v58 + 16, v227, &qword_1ECC08380, &unk_1DAED6590);
      if (v228)
      {
        v199 = v56;
        v208 = v53;
        v209 = v50;
        v210 = v49;
        v60 = __swift_project_boxed_opaque_existential_1(v227, v228);
        sub_1DAD648F8(*v60 + 16, v226);
        sub_1DAD648F8(v57, v224);
        v61 = *__swift_project_boxed_opaque_existential_1(v224, v225);
        swift_beginAccess();
        result = sub_1DAD6495C(v61 + 16, v222, &qword_1ECC08380, &unk_1DAED6590);
        if (v223)
        {
          v62 = *(*__swift_project_boxed_opaque_existential_1(v222, v223) + 56);
          v63 = __swift_project_boxed_opaque_existential_1(v57, v57[3]);
          sub_1DAD648F8(*v63 + 144, v221);
          v64 = v57[3];
          v197 = v57;
          v65 = __swift_project_boxed_opaque_existential_1(v57, v64);
          sub_1DAD648F8(*v65 + 104, v220);
          type metadata accessor for WidgetRendererSession(0);
          v34 = swift_allocObject();
          *(v34 + 56) = 0;
          v66 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
          v67 = *MEMORY[0x1E6993F90];
          v68 = sub_1DAECE20C();
          (*(*(v68 - 8) + 104))(v34 + v66, v67, v68);
          v69 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_visibility;
          v70 = sub_1DAECE55C();
          v71 = *(v70 - 8);
          v183 = *(v71 + 56);
          v184 = v70;
          v182 = v71 + 56;
          v183(v34 + v69, 1, 1);
          *(v34 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__invalidated) = 0;
          v72 = v34 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReason;
          *v72 = 0;
          *(v72 + 8) = 1;
          v73 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__catastrophicReloadReasonDate;
          v74 = sub_1DAECDCEC();
          (*(*(v74 - 8) + 56))(v34 + v73, 1, 1, v74);
          *(v34 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__cancellables) = MEMORY[0x1E69E7CD0];
          *(v34 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__started) = 0;
          v75 = (v34 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
          *v75 = 0;
          v75[1] = 0xE000000000000000;
          v76 = objc_allocWithZone(WRWidgetRendererSessionKey);

          v77 = v201;
          v78 = v200;
          v79 = v207;
          v80 = sub_1DAED1CBC();
          v81 = [v76 initWithIdentifier:v80 widget:v77 metrics:v78];

          *(v34 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__sessionID) = v81;
          v29 = &unk_1EE008000;
          sub_1DAD648F8(v226, v34 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__client);
          *(v34 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__archiveService) = v62;
          sub_1DAD648F8(v221, v34 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__keybagStateProvider);
          sub_1DAD648F8(v220, v34 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession__dataProtectionMonitor);
          *(v34 + 16) = v79;
          *(v34 + 24) = v46;
          *(v34 + 32) = v77;
          *(v34 + 40) = v78;
          v82 = *(v34 + 56);
          *(v34 + 48) = v199;
          *(v34 + 56) = 0;

          v207 = v77;
          v201 = v78;

          v83 = v203;
          sub_1DAED10CC();
          (*(v204 + 32))(v34 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_environmentModifiers, v83, v205);
          v84 = sub_1DAD7D2C8(v34);
          v39 = (v34 + OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_logIdentifier);
          *v39 = v84;
          v39[1] = v85;

          if (qword_1EE005E88 == -1)
          {
            goto LABEL_27;
          }

          goto LABEL_52;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      return result;
    }

    while (1)
    {
      sub_1DAECEE2C();

      v34 = v42;
      v35 = v29;
      if ((v31 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_20:
      v44 = sub_1DAED24BC();
      if (v44)
      {
        v227[0] = v44;
        sub_1DAECEE3C();
        swift_dynamicCast();
        v42 = v34;
        v29 = v35;
        if (v229)
        {
          continue;
        }
      }

      goto LABEL_24;
    }
  }

  while (1)
  {
    v42 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      break;
    }

    if (v42 >= v39)
    {
      goto LABEL_24;
    }

    v41 = *(v32 + 8 * v42);
    ++v40;
    if (v41)
    {
      goto LABEL_18;
    }
  }

  __break(1u);
LABEL_52:
  swift_once();
LABEL_27:
  __swift_project_value_buffer(v212, qword_1EE0117D8);

  v86 = sub_1DAECEDCC();
  v87 = sub_1DAED203C();

  if (os_log_type_enabled(v86, v87))
  {
    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *&v217 = v89;
    *v88 = 136446210;
    v90 = *v39;
    v91 = v39[1];

    v92 = sub_1DAD6482C(v90, v91, &v217);

    *(v88 + 4) = v92;
    _os_log_impl(&dword_1DAD61000, v86, v87, "[%{public}s] Created", v88, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v89);
    v93 = v89;
    v29 = &unk_1EE008000;
    MEMORY[0x1E127F100](v93, -1, -1);
    MEMORY[0x1E127F100](v88, -1, -1);
  }

  v94 = (v34 + v29[35]);
  sub_1DAD648F8(v94, &v217);
  v95 = v219;
  __swift_project_boxed_opaque_existential_1(&v217, *(&v218 + 1));
  v96 = *(v95 + 64);
  v97 = *(v34 + 32);
  v98 = v96();

  v99 = *(v34 + 56);
  *(v34 + 56) = v98;

  __swift_destroy_boxed_opaque_existential_1Tm(&v217);
  v101 = v94[3];
  v100 = v94[4];
  v102 = __swift_project_boxed_opaque_existential_1(v94, v101);
  v103 = *(v101 - 8);
  v104 = MEMORY[0x1EEE9AC00](v102);
  v106 = &v182 - v105;
  (*(v103 + 16))(&v182 - v105, v104);
  v107 = (*(v100 + 48))(v101, v100);
  (*(v103 + 8))(v106, v101);
  *&v217 = v107;
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08388, &qword_1DAEDDF20);
  sub_1DAD64B94(&qword_1EE005CA0, &qword_1ECC08388, &qword_1DAEDDF20, MEMORY[0x1E695BED8]);
  sub_1DAECF00C();

  swift_beginAccess();
  sub_1DAECEE0C();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v220);
  __swift_destroy_boxed_opaque_existential_1Tm(v221);
  __swift_destroy_boxed_opaque_existential_1Tm(v226);
  __swift_destroy_boxed_opaque_existential_1Tm(v222);
  __swift_destroy_boxed_opaque_existential_1Tm(v224);
  __swift_destroy_boxed_opaque_existential_1Tm(v227);
  __swift_destroy_boxed_opaque_existential_1Tm(&v229);
  v108 = v215;
  v109 = v211;
  *(v215 + v211) = v34;

  v110 = sub_1DAD8E484();
  type metadata accessor for InProcessWidgetInstance(0);
  sub_1DADB7FE4(&qword_1ECC08AC8, type metadata accessor for InProcessWidgetInstance, &protocol conformance descriptor for InProcessWidgetInstance);
  swift_retain_n();
  sub_1DAECEE4C();
  sub_1DAECEEBC();

  *(v214 + v108) = v110;

  v111 = swift_allocObject();
  swift_weakInit();
  v112 = swift_allocObject();
  *(v112 + 16) = v111;
  *(v112 + 24) = v34;
  swift_getKeyPath();
  swift_getKeyPath();
  v113 = swift_allocObject();
  *(v113 + 16) = sub_1DAEC6134;
  *(v113 + 24) = v112;
  v229 = sub_1DADE630C;
  v230 = v113;

  v205 = v112;

  sub_1DAECEF4C();
  v114 = swift_allocObject();
  swift_weakInit();
  v115 = swift_allocObject();
  swift_weakInit();
  v116 = swift_allocObject();
  v116[2] = v115;
  v116[3] = sub_1DAEC613C;
  v116[4] = v114;
  swift_getKeyPath();
  swift_getKeyPath();
  v117 = swift_allocObject();
  *(v117 + 16) = sub_1DADE631C;
  *(v117 + 24) = v116;
  v229 = sub_1DADE6328;
  v230 = v117;

  sub_1DAECEF4C();
  v118 = v202;
  v119 = v206;
  v120 = v213;
  (v209)(v206, v108 + v202, v213);
  v121 = sub_1DAECE48C();
  (v208)(v119, v120);
  v207 = v110;
  if (v121)
  {

    v122 = v110;
    v123 = *(v108 + v109);
    if (!v123)
    {
      goto LABEL_44;
    }

LABEL_42:
    v161 = (v108 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
    swift_beginAccess();
    v162 = *v161;
    if (*v161)
    {
      v163 = v161[1];
      type metadata accessor for StalenessObserver();
      swift_allocObject();

      sub_1DADCA8EC(v162, v163);

      sub_1DADCA8EC(v162, v163);
      *(v108 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__stalenessObserver) = sub_1DADF42C0(v123, v162, v163);

      sub_1DADF445C();

      sub_1DAD660D8(v162, v163);
    }

    goto LABEL_44;
  }

  v206 = type metadata accessor for InProcessRenderStatisticsProvider();
  v204 = swift_allocObject();
  sub_1DAD648F8(v197, &v229);
  v124 = *__swift_project_boxed_opaque_existential_1(&v229, v231);
  swift_beginAccess();
  result = sub_1DAD6495C(v124 + 16, v227, &qword_1ECC08380, &unk_1DAED6590);
  if (!v228)
  {
    goto LABEL_55;
  }

  v125 = __swift_project_boxed_opaque_existential_1(v227, v228);
  sub_1DAD648F8(*v125 + 64, v226);
  v126 = v188;
  v127 = v209;
  (v209)(v188, v108 + v118, v120);
  v203 = sub_1DAECE49C();
  v201 = v128;
  v129 = v208;
  (v208)(v126, v120);
  v130 = v189;
  v127(v189, v108 + v118, v120);
  v131 = v190;
  sub_1DAECE4AC();
  v129(v130, v120);
  v132 = v198;
  v133 = v192;
  sub_1DAECE33C();
  (*(v191 + 8))(v131, v133);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08378, &qword_1DAEDA7F0);
  v135 = *(*(v134 - 8) + 56);
  v135(v132, 0, 1, v134);
  sub_1DAD648F8(v197, v224);
  v136 = *__swift_project_boxed_opaque_existential_1(v224, v225);
  swift_beginAccess();
  result = sub_1DAD6495C(v136 + 16, v222, &qword_1ECC08380, &unk_1DAED6590);
  if (!v223)
  {
    goto LABEL_56;
  }

  v137 = *(*__swift_project_boxed_opaque_existential_1(v222, v223) + 104);
  v221[3] = v206;
  v221[4] = &off_1F56B3458;
  v221[0] = v204;
  v220[3] = sub_1DAED12AC();
  v220[4] = sub_1DADB7FE4(&qword_1EE005768, MEMORY[0x1E6993EF8], MEMORY[0x1E6993EE8]);
  v220[0] = v137;
  type metadata accessor for WidgetMetricsAggregator(0);
  v138 = swift_allocObject();
  swift_weakInit();
  *(v138 + 64) = 0;
  *(v138 + 72) = 0;
  v135(v138 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationHostIdentifier, 1, 1, v134);
  *(v138 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModelSubscriber) = 0;
  *(v138 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configuration) = 0;
  v139 = v138 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
  *(v139 + 32) = 0;
  *v139 = 0u;
  *(v139 + 16) = 0u;
  v140 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogWidgetViewIdentity;
  v141 = sub_1DAED12CC();
  (*(*(v141 - 8) + 56))(v138 + v140, 1, 1, v141);
  *(v138 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewEntry) = 0;
  v142 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetWidgetViewIdentity;
  v143 = sub_1DAED11EC();
  (*(*(v143 - 8) + 56))(v138 + v142, 1, 1, v143);
  *(v138 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_hasBeenVisiblySettledForCurrentVisibilitySession) = 0;
  (v183)(v138 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator_visibility, 1, 1, v184);
  sub_1DAD648F8(v221, v138 + 16);
  v144 = v201;
  *(v138 + 64) = v203;
  *(v138 + 72) = v144;
  v145 = OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationHostIdentifier;
  swift_beginAccess();
  swift_retain_n();

  sub_1DAD901C4(v132, v138 + v145, &qword_1ECC08358, &qword_1DAED6568);
  swift_endAccess();
  sub_1DAD648F8(v226, v138 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__configurationModel);
  sub_1DAD648F8(v220, &v217);
  v146 = v138 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__powerlogService;
  swift_beginAccess();
  v147 = *(&v218 + 1);
  if (*(v146 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v146);
  }

  v108 = v215;
  v149 = v186;
  v148 = v187;
  if (v147)
  {
    sub_1DAD657D8(&v217, v146);
  }

  else
  {
    v150 = v218;
    *v146 = v217;
    *(v146 + 16) = v150;
    *(v146 + 32) = v219;
  }

  v122 = v207;
  swift_endAccess();
  v151 = sub_1DAED120C();
  v152 = sub_1DAED11FC();
  v153 = MEMORY[0x1E6993EE0];
  v154 = (v138 + OBJC_IVAR____TtC14WidgetRenderer23WidgetMetricsAggregator__duetViewRecorder);
  v154[3] = v151;
  v154[4] = v153;
  *v154 = v152;
  swift_weakAssign();

  sub_1DADB2FF8(v138);

  sub_1DAD64398(v198, &qword_1ECC08358, &qword_1DAED6568);
  __swift_destroy_boxed_opaque_existential_1Tm(v226);
  __swift_destroy_boxed_opaque_existential_1Tm(v220);
  __swift_destroy_boxed_opaque_existential_1Tm(v221);
  __swift_destroy_boxed_opaque_existential_1Tm(v222);
  __swift_destroy_boxed_opaque_existential_1Tm(v224);
  __swift_destroy_boxed_opaque_existential_1Tm(v227);
  __swift_destroy_boxed_opaque_existential_1Tm(&v229);
  v155 = qword_1EE005E38;

  v156 = v211;
  if (v155 != -1)
  {
    swift_once();
  }

  v157 = v212;
  v158 = __swift_project_value_buffer(v212, qword_1EE011730);
  (*(v149 + 16))(v148, v158, v157);
  type metadata accessor for VisibilityPolicyController(0);
  swift_allocObject();
  v159 = sub_1DADB3BFC(v34, v122, v138, v148);

  v160 = v185;
  *v185 = v159;
  v160[1] = &off_1F56B2178;
  swift_unknownObjectRelease();
  v123 = *(v108 + v156);
  if (v123)
  {
    goto LABEL_42;
  }

LABEL_44:
  sub_1DAEC31B0();
  sub_1DAEC3D84();
  sub_1DAEC2C18();
  v164 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__activeRequesters;
  swift_beginAccess();
  if (*(*(v108 + v164) + 16))
  {
    sub_1DAD9AB3C();
    v165 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_isForeground;
    swift_beginAccess();
    v166 = v122[v165];
    v122[v165] = 1;
    sub_1DAD9B9DC(v166);
  }

  v167 = *(v214 + v108);
  if (v167 && (sub_1DAD648F8(v167 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel__liveSource, &v229), v168 = v231, v169 = v232, __swift_project_boxed_opaque_existential_1(&v229, v231), v170 = *(v169 + 16), , v171 = v170(v168, v169), v172 = sub_1DAED0C0C(), v216 = v172, v171, , __swift_destroy_boxed_opaque_existential_1Tm(&v229), v229 = v172, sub_1DAD674D4(0, &qword_1EE00AA30, 0x1E69E9610), v173 = sub_1DAED20EC(), v222[0] = v173, v174 = sub_1DAED20AC(), v175 = v193, (*(*(v174 - 8) + 56))(v193, 1, 1, v174), __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC07DB0, &unk_1DAED5850), sub_1DAD64B94(&unk_1EE00ABF0, &unk_1ECC07DB0, &unk_1DAED5850, MEMORY[0x1E695BED8]), sub_1DAD88828(), v176 = v194, v177 = v215, sub_1DAECEFBC(), sub_1DAD64398(v175, &unk_1ECC07D20, &unk_1DAED57D0), , v173, v178 = swift_allocObject(), swift_weakInit(), v179 = swift_allocObject(), *(v179 + 16) = sub_1DAEC6144, *(v179 + 24) = v178, sub_1DAD64B94(&qword_1EE005D10, &qword_1ECC083E0, &qword_1DAED7CC0, MEMORY[0x1E695BE98]), v180 = v196, sub_1DAECF00C(), , (*(v195 + 8))(v176, v180), swift_beginAccess(), sub_1DAECEE0C(), swift_endAccess(), , (v181 = *(v214 + v177)) != 0))
  {
    v229 = *(v181 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_viewEntryDidChangePublisher);
    swift_allocObject();
    swift_weakInit();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083D0, qword_1DAED6780);
    sub_1DAD64B94(&qword_1EE005C88, &unk_1ECC083D0, qword_1DAED6780, MEMORY[0x1E695BED8]);
    sub_1DAECF00C();

    swift_beginAccess();
    sub_1DAECEE0C();
    swift_endAccess();
  }

  else
  {
  }

  return v34;
}

double sub_1DAEC2508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC083A0, &unk_1DAED6758);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_1DAECE47C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    if (*(Strong + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
    {
      type metadata accessor for LaunchRequestBuilder();

      sub_1DAE50D14(v14, a2, v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {

        sub_1DAD64398(v6, &qword_1ECC083A0, &unk_1DAED6758);
      }

      else
      {
        (*(v8 + 32))(v10, v6, v7);
        v15 = v13 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler;
        swift_beginAccess();
        v16 = *v15;
        if (*v15)
        {
          v17 = *(v15 + 8);

          v16(v10);

          sub_1DAD660D8(v16, v17);
        }

        else
        {
        }

        (*(v8 + 8))(v10, v7);
      }
    }

    sub_1DADD4E5C(1);
  }

  return result;
}

void sub_1DAEC276C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DAECE3DC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE005E38 != -1)
  {
    swift_once();
  }

  v6 = sub_1DAECEDEC();
  __swift_project_value_buffer(v6, qword_1EE011730);
  v7 = sub_1DAECEDCC();
  v8 = sub_1DAED200C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_1DAD61000, v7, v8, "Received interaction event with LinkAction; executing...", v9, 2u);
    MEMORY[0x1E127F100](v9, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession);

    if (v11)
    {
      (*(v3 + 104))(v5, *MEMORY[0x1E6994178], v2);
      swift_beginAccess();
      v12 = swift_weakLoadStrong();
      if (v12 && (v13 = (v12 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler), swift_beginAccess(), v14 = *v13, v15 = v13[1], sub_1DADCA8EC(*v13, v15), , v14))
      {
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        *(v16 + 24) = v15;
        v17 = sub_1DAEC6154;
      }

      else
      {
        v17 = nullsub_1;
        v16 = 0;
      }

      v18 = swift_allocObject();
      *(v18 + 16) = v17;
      *(v18 + 24) = v16;
      sub_1DADD50B0();

      (*(v3 + 8))(v5, v2);
    }
  }
}

double sub_1DAEC2A74(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_1DAEC31B0();
  }

  return result;
}

double sub_1DAEC2ACC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  BSDispatchQueueAssertMain();
  if (sub_1DADC1344(3, v2) || sub_1DADC1344(4, v2))
  {
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
      sub_1DAD64B94(&qword_1EE00ABD8, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF80]);
      sub_1DAECEEEC();
    }

    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v5 = *(Strong + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__stalenessObserver);

      if (v5)
      {
        sub_1DADF445C();
      }
    }
  }

  return result;
}

uint64_t sub_1DAEC2C18()
{
  v61 = sub_1DAECE55C();
  v1 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v43 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAA0, &unk_1DAEDF6B0);
  MEMORY[0x1EEE9AC00](v56);
  v62 = (&v43 - v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07CD0, &qword_1DAED6560);
  v55 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v44 = &v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v43 - v7;
  MEMORY[0x1EEE9AC00](v8);
  v54 = &v43 - v9;
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = *(v1 + 56);
  v12 = v1 + 56;
  v58 = &v43 - v14;
  v47 = v13;
  v13(v11);
  v15 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityPreferences;
  swift_beginAccess();
  v16 = *(v0 + v15);
  v17 = v16 + 64;
  v18 = 1 << *(v16 + 32);
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v16 + 64);
  v21 = (v18 + 63) >> 6;
  v59 = (v12 - 8);
  v45 = v0;
  v46 = (v12 - 40);
  v48 = v12;
  v49 = (v12 - 48);
  v50 = (v12 - 24);
  v57 = v16;
  result = swift_bridgeObjectRetain_n();
  v23 = 0;
  v53 = v17;
  while (v20)
  {
LABEL_11:
    v25 = __clz(__rbit64(v20)) | (v23 << 6);
    v26 = (*(v57 + 48) + 16 * v25);
    v27 = *v26;
    v28 = v26[1];
    v29 = *(v56 + 48);
    v30 = v62;
    sub_1DAD6495C(*(v57 + 56) + *(v55 + 72) * v25, v62 + v29, &qword_1ECC07CD0, &qword_1DAED6560);
    *v30 = v27;
    v30[1] = v28;
    v31 = v54;
    sub_1DAD6495C(v30 + v29, v54, &qword_1ECC07CD0, &qword_1DAED6560);
    v32 = *v59;
    v33 = v61;
    if ((*v59)(v31, 1, v61) == 1)
    {

      sub_1DAD64398(v31, &qword_1ECC07CD0, &qword_1DAED6560);
      v17 = v53;
    }

    else
    {
      (*v50)(v60, v31, v33);
      v34 = v51;
      sub_1DAD6495C(v58, v51, &qword_1ECC07CD0, &qword_1DAED6560);
      v52 = v32;
      v35 = v32(v34, 1, v33);
      v36 = v60;

      sub_1DAD64398(v34, &qword_1ECC07CD0, &qword_1DAED6560);
      v37 = v35 == 1;
      v38 = v61;
      if (v37)
      {
        v39 = v58;
        sub_1DAD64398(v58, &qword_1ECC07CD0, &qword_1DAED6560);
        (*v46)(v39, v36, v38);
        (v47)(v39, 0, 1, v38);
      }

      v40 = sub_1DAECE53C();
      v17 = v53;
      if ((v40 & 1) != 0 && !v52(v58, 1, v38))
      {
        sub_1DAECE54C();
      }

      (*v49)(v60, v38);
    }

    v20 &= v20 - 1;
    result = sub_1DAD64398(v62, &qword_1ECC0AAA0, &unk_1DAEDF6B0);
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
      return result;
    }

    if (v24 >= v21)
    {
      break;
    }

    v20 = *(v17 + 8 * v24);
    ++v23;
    if (v20)
    {
      v23 = v24;
      goto LABEL_11;
    }
  }

  v41 = v58;
  if (*(v45 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController))
  {
    v42 = v44;
    sub_1DAD6495C(v58, v44, &qword_1ECC07CD0, &qword_1DAED6560);
    swift_unknownObjectRetain();
    sub_1DAD6D8C0(v42);
    swift_unknownObjectRelease();
    sub_1DAD64398(v42, &qword_1ECC07CD0, &qword_1DAED6560);
  }

  return sub_1DAD64398(v41, &qword_1ECC07CD0, &qword_1DAED6560);
}

uint64_t sub_1DAEC31B0()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v29 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v27 - v5;
  v7 = sub_1DAECE69C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v27 - v12;
  v14 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  swift_beginAccess();
  v28 = *(v8 + 16);
  v28(v13, v1 + v14, v7);
  v15 = sub_1DAECE5AC();
  if (v15 && (v16 = v15, v17 = [v15 filterStyle], v16, v17 == 7) && (v18 = *(v1 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession)) != 0 && (v19 = *(v18 + 56)) != 0 && objc_msgSend(v19, sel_preferredBackgroundStyle) == 2 || (v20 = sub_1DAECE5AC()) != 0 && (v21 = v20, v22 = objc_msgSend(v20, sel_wantsGlassMaterial), v21, v22))
  {
    v23 = *MEMORY[0x1E697DBA8];
    v24 = sub_1DAECF0AC();
    v25 = *(v24 - 8);
    (*(v25 + 104))(v6, v23, v24);
    (*(v25 + 56))(v6, 0, 1, v24);
  }

  else
  {
    sub_1DAECE5FC();
  }

  sub_1DAD6495C(v6, v29, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAECE63C();
  v28(v10, v13, v7);
  sub_1DAEBCA08(v10);
  sub_1DAD64398(v6, &qword_1ECC08370, &unk_1DAED6580);
  return (*(v8 + 8))(v13, v7);
}

void sub_1DAEC34F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v55 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08368, &unk_1DAEDE2B0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v53 = &v52 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v52 - v12;
  v14 = sub_1DAECE5CC();
  v15 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_displayProperties;
  swift_beginAccess();
  v16 = *(a1 + v15);
  *(a1 + v15) = v14;
  v17 = v14;
  sub_1DAD996A0(v16);

  LOBYTE(v14) = sub_1DAECE64C();
  v18 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_canAppearInSecureEnvironment;
  swift_beginAccess();
  v19 = *(a1 + v18);
  *(a1 + v18) = v14 & 1;
  sub_1DAD95310(v19);
  sub_1DAECE62C();
  v20 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_preferredColorScheme;
  swift_beginAccess();
  sub_1DAD6495C(a1 + v20, v10, &qword_1ECC08370, &unk_1DAED6580);
  swift_beginAccess();
  sub_1DAD901C4(v13, a1 + v20, &qword_1ECC08370, &unk_1DAED6580);
  swift_endAccess();
  sub_1DAD99B74(v10);
  sub_1DAD64398(v10, &qword_1ECC08370, &unk_1DAED6580);
  sub_1DAD64398(v13, &qword_1ECC08370, &unk_1DAED6580);
  v21 = sub_1DAECE5AC();
  v22 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_tintParameters;
  swift_beginAccess();
  v23 = *(a1 + v22);
  *(a1 + v22) = v21;
  v24 = v21;
  sub_1DAD95C3C(v23);

  v25 = sub_1DAECE5EC();
  v26 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_inlineTextParameters;
  swift_beginAccess();
  v27 = *(a1 + v26);
  *(a1 + v26) = v25;
  v28 = v25;
  sub_1DAD95EE8(v27);

  LOBYTE(v25) = sub_1DAECE58C();
  v29 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_showsWidgetLabel;
  swift_beginAccess();
  v30 = *(a1 + v29);
  *(a1 + v29) = v25 & 1;
  sub_1DAD9A040(v30);
  LOBYTE(v25) = sub_1DAECE67C();
  v31 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_prefersUnredactedContentInLowLuminanceEnvironment;
  swift_beginAccess();
  v32 = *(a1 + v31);
  *(a1 + v31) = v25 & 1;
  sub_1DAD95AA0(v32);
  LOBYTE(v25) = sub_1DAECE60C();
  v33 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_supportsLowLuminance;
  swift_beginAccess();
  v34 = *(a1 + v33);
  *(a1 + v33) = v25 & 1;
  sub_1DAD956A0(v34);
  v35 = sub_1DAECE59C();
  v36 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_renderScheme;
  swift_beginAccess();
  v37 = *(a1 + v36);
  *(a1 + v36) = v35;
  v38 = v35;
  sub_1DAD9A058(v37);

  LOBYTE(v35) = sub_1DAECE61C();
  swift_getKeyPath();
  swift_getKeyPath();
  v57 = v35 & 1;

  sub_1DAECEF4C();
  LOBYTE(v35) = sub_1DAECE5BC();
  v39 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_wantsContentPaused;
  swift_beginAccess();
  v40 = *(a1 + v39);
  *(a1 + v39) = v35 & 1;
  BSDispatchQueueAssertMain();
  if (v40 != *(a1 + v39))
  {
    v41 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_allowContentPaused;
    swift_beginAccess();
    sub_1DAE9C79C(*(a1 + v41) & v40 & 1);
  }

  sub_1DAECE68C();
  v42 = v53;
  sub_1DAED170C();
  v43 = sub_1DAED16FC();
  (*(*(v43 - 8) + 56))(v42, 0, 1, v43);
  v44 = OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_proximity;
  swift_beginAccess();
  v45 = v54;
  sub_1DAD6495C(a1 + v44, v54, &qword_1ECC08368, &unk_1DAEDE2B0);
  swift_beginAccess();
  sub_1DAD901C4(v42, a1 + v44, &qword_1ECC08368, &unk_1DAEDE2B0);
  swift_endAccess();
  sub_1DAD9A254(v45);
  sub_1DAD64398(v45, &qword_1ECC08368, &unk_1DAEDE2B0);
  sub_1DAD64398(v42, &qword_1ECC08368, &unk_1DAEDE2B0);
  LOBYTE(v44) = sub_1DAECE5DC();
  swift_getKeyPath();
  swift_getKeyPath();
  LOBYTE(v56[0]) = v44 & 1;

  sub_1DAECEF4C();
  swift_getKeyPath();
  swift_getKeyPath();
  v46 = swift_allocObject();
  v47 = v55;
  *(v46 + 16) = sub_1DAEC6018;
  *(v46 + 24) = v47;
  v56[0] = sub_1DAEC6020;
  v56[1] = v46;

  swift_retain_n();
  sub_1DAECEF4C();
  BSDispatchQueueAssertMain();

  v48 = sub_1DAECEDCC();
  v49 = sub_1DAED200C();

  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v56[0] = v51;
    *v50 = 136446210;
    *(v50 + 4) = sub_1DAD6482C(*(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier), *(a1 + OBJC_IVAR____TtC14WidgetRenderer24LiveWidgetEntryViewModel_logIdentifier + 8), v56);
    _os_log_impl(&dword_1DAD61000, v48, v49, "[%{public}s] backgroundViewBuilder changed", v50, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v51);
    MEMORY[0x1E127F100](v51, -1, -1);
    MEMORY[0x1E127F100](v50, -1, -1);
  }
}

uint64_t sub_1DAEC3C98()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAA8, &qword_1DAEDF798);
  MEMORY[0x1EEE9AC00](v0);
  v2 = (&v7 - v1);
  if (!sub_1DAEBD328())
  {
    return 0;
  }

  v3 = sub_1DAED064C();
  v4 = v2 + *(v0 + 36);
  sub_1DAED08EC();
  v5 = sub_1DAED004C();
  v4[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAB0, &qword_1DAEDF7A0) + 36)] = v5;
  *v2 = v3;
  sub_1DAEC6028();
  return sub_1DAED087C();
}

void sub_1DAEC3D84()
{
  v1 = sub_1DAECE20C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - v6;
  v8 = *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession);
  if (v8)
  {
    v9 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__activeRequesters;
    swift_beginAccess();
    if (*(*(v0 + v9) + 16))
    {
      v10 = MEMORY[0x1E6993FA0];
    }

    else
    {
      v10 = MEMORY[0x1E6993F90];
    }

    (*(v2 + 104))(v7, *v10, v1);
    v11 = OBJC_IVAR____TtC14WidgetRenderer21WidgetRendererSession_taskPriority;
    swift_beginAccess();
    (*(v2 + 16))(v4, v8 + v11, v1);
    swift_beginAccess();
    v12 = *(v2 + 24);

    v12(v8 + v11, v7, v1);
    swift_endAccess();
    sub_1DAD7D4B8(v4);

    v13 = *(v2 + 8);
    v13(v4, v1);
    v13(v7, v1);
  }
}

uint64_t sub_1DAEC3F88()
{
  v1 = sub_1DAED167C();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v49 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1DAECF0AC();
  v60 = *(v4 - 8);
  v61 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v57 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08370, &unk_1DAED6580);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v49 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AA98, &qword_1DAEDF698);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v49 - v9;
  v11 = sub_1DAECE69C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v62 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v49 - v15;
  v17 = sub_1DAED10DC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v49 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v49 - v22;
  result = BSDispatchQueueAssertMain();
  if ((*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) & 1) == 0)
  {
    v52 = v3;
    v58 = v20;
    v55 = v23;
    v25 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration;
    swift_beginAccess();
    v26 = v0;
    v53 = *(v12 + 16);
    v53(v16, v0 + v25, v11);
    sub_1DAECE65C();
    v27 = *(v12 + 8);
    v54 = v12 + 8;
    v27(v16, v11);
    v28 = (*(v18 + 48))(v10, 1, v17);
    v56 = v26;
    if (v28 == 1)
    {
      v50 = v27;
      sub_1DAD64398(v10, &qword_1ECC0AA98, &qword_1DAEDF698);
      v51 = v11;
      v53(v62, v26 + v25, v11);
      v29 = v55;
      sub_1DAED10CC();
      sub_1DAECE64C();
      sub_1DAED104C();
      v30 = v59;
      sub_1DAECE62C();
      v32 = v60;
      v31 = v61;
      if ((*(v60 + 48))(v30, 1, v61) == 1)
      {
        sub_1DAD64398(v30, &qword_1ECC08370, &unk_1DAED6580);
        v33 = v17;
        v34 = v62;
      }

      else
      {
        v36 = v57;
        (*(v32 + 32))(v57, v30, v31);
        v37 = (*(v32 + 88))(v36, v31);
        v33 = v17;
        if (v37 == *MEMORY[0x1E697DBB8])
        {
          v34 = v62;
        }

        else
        {
          v34 = v62;
          if (v37 != *MEMORY[0x1E697DBA8])
          {
            (*(v32 + 8))(v36, v31);
          }
        }
      }

      sub_1DAED107C();
      sub_1DAECE58C();
      sub_1DAED105C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC083A8, &unk_1DAEDF6A0);
      v62 = *(*(sub_1DAED15DC() - 8) + 72);
      v38 = swift_allocObject();
      *(v38 + 16) = xmmword_1DAED6200;
      sub_1DAECE59C();
      sub_1DAED15EC();
      v39 = sub_1DAECE59C();
      v40 = [v39 renderingMode];

      if (v40)
      {

        v61 = v33;
        v38 = swift_allocObject();
        *(v38 + 16) = xmmword_1DAED64C0;
        sub_1DAECE59C();
        sub_1DAED15EC();
        sub_1DAED166C();
        v41 = sub_1DAECE59C();
        [v41 backgroundViewPolicy];

        v33 = v61;
        sub_1DAED15BC();
      }

      v35 = v58;
      sub_1DAD7F350(v38);

      sub_1DAED108C();
      sub_1DAECE60C();
      sub_1DAED10AC();
      sub_1DAECE58C();
      sub_1DAED105C();
      sub_1DAECE68C();
      sub_1DAED21FC();
      sub_1DAED106C();
      v42 = sub_1DAECE5CC();
      if (v42)
      {
        v43 = v42;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08350, &unk_1DAED7DB0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1DAED64D0;
        *(inited + 32) = v43;
        v45 = v43;
        sub_1DAD7FA70(inited);
        swift_setDeallocating();
        swift_arrayDestroy();
        sub_1DAED10BC();

        v35 = v58;
      }

      v50(v34, v51);
    }

    else
    {
      v29 = v55;
      (*(v18 + 32))(v55, v10, v17);
      v33 = v17;
      v35 = v58;
    }

    v46 = *(v18 + 16);
    v46(v35, v29, v33);
    v47 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__environmentModifiers;
    v48 = v56;
    swift_beginAccess();
    (*(v18 + 40))(v48 + v47, v35, v33);
    swift_endAccess();
    if (*(v48 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession))
    {
      v46(v35, v29, v33);

      sub_1DAD8E294(v35);
    }

    return (*(v18 + 8))(v29, v33);
  }

  return result;
}

uint64_t InProcessWidgetInstance.deinit()
{

  v1 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
  v2 = sub_1DAECE4EC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  v4 = sub_1DAECE69C();
  v5 = *(*(v4 - 8) + 8);
  v5(v0 + v3, v4);
  v5(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration, v4);

  sub_1DAD660D8(*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler), *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler + 8));
  sub_1DAD660D8(*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler), *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler + 8));
  sub_1DAD660D8(*(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale), *(v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale + 8));

  v6 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__environmentModifiers;
  v7 = sub_1DAED10DC();
  (*(*(v7 - 8) + 8))(v0 + v6, v7);
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__services));
  return v0;
}

uint64_t InProcessWidgetInstance.__deallocating_deinit()
{
  InProcessWidgetInstance.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1DAEC4AA0@<X0>(uint64_t *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X8>)
{
  v6 = *v3;
  v7 = *a1;
  swift_beginAccess();
  v8 = a2(0);
  return (*(*(v8 - 8) + 16))(a3, v6 + v7, v8);
}

uint64_t sub_1DAEC4B30(uint64_t a1)
{
  v3 = sub_1DAECE69C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  (*(v4 + 16))(v7, a1, v3, v5);
  v9 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  swift_beginAccess();
  (*(v4 + 24))(v8 + v9, v7, v3);
  swift_endAccess();
  sub_1DAEC31B0();
  v10 = *(v4 + 8);
  v10(a1, v3);
  return (v10)(v7, v3);
}

void (*sub_1DAEC4C78(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1DAEBD034(v2);
  return sub_1DAE08444;
}

uint64_t sub_1DAEC4CEC()
{
  v1 = (*v0 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  swift_beginAccess();
  v2 = *v1;
  sub_1DADCA8EC(*v1, v1[1]);
  return v2;
}

uint64_t sub_1DAEC4D4C(uint64_t a1, uint64_t a2)
{
  v5 = (*v2 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return sub_1DAD660D8(v6, v7);
}

unint64_t sub_1DAEC4E14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for InProcessWidgetInstance(0);
  v6 = swift_allocObject();
  result = InProcessWidgetInstance.init(identity:configuration:)(a1, a2);
  *a3 = v6;
  return result;
}

uint64_t sub_1DAEC4E94@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for InProcessWidgetInstance(0);
  result = sub_1DAECEE4C();
  *a2 = result;
  return result;
}

uint64_t sub_1DAEC4ED4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x1EEDF3DB0](a1, WitnessTable);
}

uint64_t type metadata accessor for InProcessWidgetInstance(uint64_t a1)
{
  result = qword_1ECC0AA88;
  if (!qword_1ECC0AA88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1DAEC4F74(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1DAED294C();
  sub_1DAED1D9C();
  v6 = sub_1DAED297C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(v5 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1DAED289C() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v2;
  v16 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1DAE89404();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1DAEC5438(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1DAEC50EC(uint64_t a1, uint64_t a2)
{

  v3 = sub_1DAED247C();
  v4 = swift_unknownObjectRetain();
  v5 = sub_1DAE880D4(v4, v3);
  v12 = v5;
  sub_1DAECEE3C();
  sub_1DADB7FE4(&qword_1EE005C50, MEMORY[0x1E695BF10], MEMORY[0x1E695BF18]);

  v6 = sub_1DAED1C5C();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    sub_1DADB7FE4(&qword_1EE005C48, MEMORY[0x1E695BF10], MEMORY[0x1E695BF20]);
    while ((sub_1DAED1CAC() & 1) == 0)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
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

  v10 = *(*(v5 + 48) + 8 * v8);
  sub_1DADB802C(v8);
  result = sub_1DAED1CAC();
  if (result)
  {
    *v2 = v12;
    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1DAEC52C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), unint64_t *a4, void *a5)
{
  v9 = v5;

  v10 = sub_1DAED247C();
  v11 = swift_unknownObjectRetain();
  v12 = a3(v11, v10);
  v21 = v12;

  v13 = sub_1DAED227C();
  v14 = -1 << *(v12 + 32);
  v15 = v13 & ~v14;
  if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
  {
    v16 = ~v14;
    sub_1DAD674D4(0, a4, a5);
    while (1)
    {
      v17 = *(*(v12 + 48) + 8 * v15);
      v18 = sub_1DAED228C();

      if (v18)
      {
        break;
      }

      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
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

  v19 = *(*(v12 + 48) + 8 * v15);
  sub_1DADC7428(v15);
  result = sub_1DAED228C();
  if (result)
  {
    *v9 = v21;
    return v19;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1DAEC5438(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1DAED23EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1DAED294C();

        sub_1DAED1D9C();
        v10 = sub_1DAED297C();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 16 * v2);
          v14 = (v12 + 16 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
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

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

unint64_t sub_1DAEC55FC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v38 = a2;
  v35 = a1;
  v36 = sub_1DAED10DC();
  v7 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41[3] = type metadata accessor for ServiceFacade();
  v41[4] = &off_1F56B0688;
  v41[0] = a3;
  v10 = MEMORY[0x1E69E7CD0];
  *(a4 + 16) = MEMORY[0x1E69E7CD0];
  v11 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__contentDidChangePublisher;
  v34 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__contentDidChangePublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08D10, &unk_1DAEDD1E0);
  swift_allocObject();
  *(a4 + v11) = sub_1DAECEE7C();
  v12 = (a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_launchRequestHandler);
  *v12 = 0;
  v12[1] = 0;
  v13 = (a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_interactionErrorHandler);
  *v13 = 0;
  v13[1] = 0;
  v14 = (a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_remoteContentDidBecomeStale);
  *v14 = 0;
  v14[1] = 0;
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__liveWidgetEntryViewModel) = 0;
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__activeRequesters) = v10;
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityPreferences) = MEMORY[0x1E69E7CC8];
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__renderSession) = 0;
  v15 = (a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__visibilityController);
  *v15 = 0;
  v15[1] = 0;
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__invalidated) = 0;
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__stalenessObserver) = 0;
  sub_1DAD648F8(v41, a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__services);
  v16 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__identity;
  v37 = sub_1DAECE4EC();
  v17 = *(v37 - 8);
  (*(v17 + 16))(a4 + v16, a1, v37);
  v18 = OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__requestedConfiguration;
  v19 = sub_1DAECE69C();
  v20 = *(v19 - 8);
  v21 = *(v20 + 16);
  v22 = a4 + v18;
  v23 = v38;
  v21(v22, v38, v19);
  v21(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__effectiveConfiguration, v23, v19);
  sub_1DAED10CC();
  (*(v7 + 32))(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__environmentModifiers, v9, v36);
  v39 = *(a4 + v34);
  sub_1DAD64B94(&qword_1EE00ABD0, &qword_1ECC08D10, &unk_1DAEDD1E0, MEMORY[0x1E695BF88]);
  *(a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance_contentDidChangePublisher) = sub_1DAECEF6C();
  v24 = (a4 + OBJC_IVAR____TtC14WidgetRenderer23InProcessWidgetInstance__instanceID);
  *v24 = 0x6C616974696E69;
  v24[1] = 0xE700000000000000;
  v39 = a4;
  v25 = sub_1DAED29CC();
  v27 = v26;
  v39 = 0;
  v40 = 0xE000000000000000;
  sub_1DAED256C();

  v39 = 0xD000000000000024;
  v40 = 0x80000001DAEE68E0;
  v28 = v35;
  v29 = sub_1DAECE49C();
  if (v30)
  {
    v31 = v30;
  }

  else
  {
    v29 = 7104878;
    v31 = 0xE300000000000000;
  }

  MEMORY[0x1E127DA50](v29, v31);

  MEMORY[0x1E127DA50](14906, 0xE200000000000000);
  MEMORY[0x1E127DA50](v25, v27);

  v32 = v40;
  *v24 = v39;
  v24[1] = v32;

  sub_1DAEC083C();

  (*(v20 + 8))(v38, v19);
  (*(v17 + 8))(v28, v37);
  __swift_destroy_boxed_opaque_existential_1Tm(v41);
  return a4;
}

uint64_t sub_1DAEC5AA8(uint64_t a1)
{
  result = sub_1DAECE4EC();
  if (v2 <= 0x3F)
  {
    result = sub_1DAECE69C();
    if (v3 <= 0x3F)
    {
      result = sub_1DAED10DC();
      if (v4 <= 0x3F)
      {
        return swift_updateClassMetadata2();
      }
    }
  }

  return result;
}

unint64_t sub_1DAEC6028()
{
  result = qword_1ECC0AAB8;
  if (!qword_1ECC0AAB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECC0AAA8, &qword_1DAEDF798);
    sub_1DAD64B94(&qword_1ECC0AAC0, &qword_1ECC0AAB0, &qword_1DAEDF7A0, MEMORY[0x1E6980468]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0AAB8);
  }

  return result;
}

uint64_t sub_1DAEC6158()
{
  sub_1DAD648F8(v0 + 16, v2);
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1DAED144C();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  return swift_deallocClassInstance();
}

uint64_t sub_1DAEC61DC@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1DAED19AC();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t getEnumTagSinglePayload for FeatureFlags.Widgets(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FeatureFlags.Widgets(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1DAEC639C()
{
  result = qword_1ECC0AAC8;
  if (!qword_1ECC0AAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0AAC8);
  }

  return result;
}

uint64_t ActivityContentDidChangeEvent.activityKey.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DAED0B1C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t ActivityContentDidChangeEvent.activityKey.setter(uint64_t a1)
{
  v3 = sub_1DAED0B1C();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t type metadata accessor for ActivityContentDidChangeEvent(uint64_t a1)
{
  result = qword_1EE00AE70;
  if (!qword_1EE00AE70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActivityContentDidChangeEvent.isFailed.setter(char a1)
{
  result = type metadata accessor for ActivityContentDidChangeEvent(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t ActivityContentDidChangeEvent.init(activityKey:isFailed:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = sub_1DAED0B1C();
  (*(*(v6 - 8) + 32))(a3, a1, v6);
  result = type metadata accessor for ActivityContentDidChangeEvent(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t static ActivityContentDidChangeEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (sub_1DAED0B0C())
  {
    v4 = type metadata accessor for ActivityContentDidChangeEvent(0);
    v5 = *(a1 + *(v4 + 20)) ^ *(a2 + *(v4 + 20)) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t sub_1DAEC6698()
{
  if (*v0)
  {
    return 0x64656C6961467369;
  }

  else
  {
    return 0x7974697669746361;
  }
}

void sub_1DAEC66DC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7974697669746361 && a2 == 0xEB0000000079654BLL;
  if (v6 || (sub_1DAED289C() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x64656C6961467369 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1DAED289C();

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
}

uint64_t sub_1DAEC67BC(uint64_t a1)
{
  v2 = sub_1DAEC69D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DAEC67F8(uint64_t a1)
{
  v2 = sub_1DAEC69D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ActivityContentDidChangeEvent.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAD0, &qword_1DAEDF980);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAEC69D8();
  sub_1DAED29BC();
  v8[15] = 0;
  sub_1DAED0B1C();
  sub_1DAEC6D58(&qword_1EE0057F8, MEMORY[0x1E6993CE8]);
  sub_1DAED284C();
  if (!v1)
  {
    type metadata accessor for ActivityContentDidChangeEvent(0);
    v8[14] = 1;
    sub_1DAED282C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1DAEC69D8()
{
  result = qword_1EE00AE90[0];
  if (!qword_1EE00AE90[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE00AE90);
  }

  return result;
}

uint64_t ActivityContentDidChangeEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v20 = sub_1DAED0B1C();
  v18 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC0AAD8, &qword_1DAEDF988);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for ActivityContentDidChangeEvent(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DAEC69D8();
  sub_1DAED29AC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v10;
  v11 = v18;
  v23 = 0;
  sub_1DAEC6D58(&qword_1EE0057F0, MEMORY[0x1E6993CF8]);
  v12 = v20;
  sub_1DAED280C();
  v13 = v16;
  (*(v11 + 32))(v16, v5, v12);
  v22 = 1;
  v14 = sub_1DAED27EC();
  (*(v19 + 8))(v7, v21);
  *(v13 + *(v8 + 20)) = v14 & 1;
  sub_1DAE16C40(v13, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1DAE16BC4(v13);
}

uint64_t sub_1DAEC6D58(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1DAED0B1C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1DAEC6D9C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (sub_1DAED0B0C())
  {
    v6 = *(a1 + *(a3 + 20)) ^ *(a2 + *(a3 + 20)) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1DAEC6E4C(uint64_t a1)
{
  result = sub_1DAED0B1C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1DAEC6ED4()
{
  result = qword_1ECC0AAE0;
  if (!qword_1ECC0AAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0AAE0);
  }

  return result;
}

unint64_t sub_1DAEC6F2C()
{
  result = qword_1EE00AE80;
  if (!qword_1EE00AE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00AE80);
  }

  return result;
}

unint64_t sub_1DAEC6F84()
{
  result = qword_1EE00AE88;
  if (!qword_1EE00AE88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE00AE88);
  }

  return result;
}

void sub_1DAEC6FD8(uint64_t a1)
{
  v2 = v1;
  sub_1DAED087C();
  v3 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v4 = *(v2 + v3);

  sub_1DAECFABC();

  sub_1DAEA1304();
}

uint64_t sub_1DAEC707C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAEC70C4(char a1)
{
  v3 = a1 & 1;
  v4 = sub_1DAECFBAC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
  swift_beginAccess();
  v9 = *(v1 + v8);
  *(v1 + v8) = a1;
  if (v9 != v3)
  {
    v10 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
    if (*(v1 + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController__renderEngine))
    {
      swift_beginAccess();
      v11 = *(v1 + v10);
      (*(v5 + 104))(v7, *MEMORY[0x1E697FFA0], v4);
      v12 = v11;
      v13 = sub_1DAECFA7C();
      sub_1DAECFC6C();
      v13(v14, 0);
    }

    else
    {
      swift_beginAccess();
      v12 = *(v1 + v10);
      sub_1DADB25F8(1, (a1 & 1) == 0, 0.0);
    }
  }
}

void (*sub_1DAEC7280(uint64_t *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x98uLL);
  }

  v5 = v4;
  *a1 = v4;
  *(v4 + 104) = v1;
  v6 = sub_1DAECFBAC();
  *(v5 + 112) = v6;
  v7 = *(v6 - 8);
  *(v5 + 120) = v7;
  if (v3)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(v7 + 64));
  }

  v9 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
  *(v5 + 128) = v8;
  *(v5 + 136) = v9;
  swift_beginAccess();
  *(v5 + 144) = *(v1 + v9);
  return sub_1DAEC737C;
}

void sub_1DAEC737C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 144);
  v4 = v2[13];
  if (a2)
  {
    v5 = v2[16];
    sub_1DAEC70C4(v3);
  }

  else
  {
    v6 = v2[17];
    v7 = *(v4 + v6);
    *(v4 + v6) = v3;
    if (v3 != v7)
    {
      v8 = v2[13];
      v9 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
      if (*(v8 + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController__renderEngine))
      {
        v11 = v2[15];
        v10 = v2[16];
        v12 = v2[14];
        swift_beginAccess();
        v13 = *(v8 + v9);
        (*(v11 + 104))(v10, *MEMORY[0x1E697FFA0], v12);
        v14 = v13;
        v15 = sub_1DAECFA7C();
        sub_1DAECFC6C();
        v15(v2, 0);
      }

      else
      {
        v16 = v3;
        swift_beginAccess();
        v14 = *(v8 + v9);
        sub_1DADB25F8(1, v16 ^ 1, 0.0);
      }
    }

    v5 = v2[16];
  }

  free(v5);

  free(v2);
}

uint64_t sub_1DAEC74D4()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  return v1;
}

void (*sub_1DAEC7554(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *(a1 + 8) = *(a1 + 9);
  return sub_1DAEC75F4;
}

uint64_t sub_1DAEC761C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_1DAEC7660(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent;
  swift_beginAccess();
  *(v1 + v3) = a1;
  sub_1DADB4204(*(v1 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting));
  sub_1DAEC7848();
}

void (*sub_1DAEC76C4(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEC7728;
}

void sub_1DAEC7728(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1DADB4204(*(*(a1 + 24) + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting));
    sub_1DAEC7848();
  }
}

uint64_t sub_1DAEC776C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused;
  swift_beginAccess();
  return *(v0 + v1);
}

void (*sub_1DAEC77B0(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_1DAEC7814;
}

void sub_1DAEC7814(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    sub_1DAEC7848();
  }
}

void sub_1DAEC7848()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent;
  swift_beginAccess();
  if (v0[v1] == 1)
  {
    if (v0[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__cachedAnimationsDisabledPreference])
    {
      v2 = 1;
    }

    else
    {
      v3 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused;
      swift_beginAccess();
      v2 = v0[v3];
    }

    v4 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused;
    swift_beginAccess();
    if (v2 != v0[v4])
    {
      v0[v4] = v2;
      v5 = v0;
      sub_1DAEC7848();
      v6 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
      swift_beginAccess();
      v7 = *&v5[v6];
      v8 = sub_1DAECFA7C();
      sub_1DAECFBDC();
      v8(v27, 0);

      v9 = [v5 view];
      if (v9)
      {
        v10 = v9;
        [v9 setNeedsLayout];

        if (qword_1EE00BE80 != -1)
        {
          swift_once();
        }

        v11 = sub_1DAECEDEC();
        __swift_project_value_buffer(v11, qword_1EE011C08);
        v12 = v5;
        v13 = sub_1DAECEDCC();
        v14 = sub_1DAED203C();

        if (os_log_type_enabled(v13, v14))
        {
          v15 = swift_slowAlloc();
          v16 = swift_slowAlloc();
          v27[0] = v16;
          *v15 = 136446722;
          v17 = [v12 description];
          v18 = sub_1DAED1CEC();
          v20 = v19;

          v21 = sub_1DAD6482C(v18, v20, v27);

          *(v15 + 4) = v21;
          *(v15 + 12) = 2082;
          v22 = [*&v12[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_widget] _loggingIdentifierWithMetrics_];
          v23 = sub_1DAED1CEC();
          v25 = v24;

          v26 = sub_1DAD6482C(v23, v25, v27);

          *(v15 + 14) = v26;
          *(v15 + 22) = 1026;
          *(v15 + 24) = v2;
          _os_log_impl(&dword_1DAD61000, v13, v14, "%{public}s - %{public}s - DisabledAnimations = %{BOOL,public}d", v15, 0x1Cu);
          swift_arrayDestroy();
          MEMORY[0x1E127F100](v16, -1, -1);
          MEMORY[0x1E127F100](v15, -1, -1);
        }
      }

      else
      {
        __break(1u);
      }
    }
  }
}

void sub_1DAEC7BC4(void (*a1)(__n128), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for _RootContentView(0, v11, v12, v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v21 - v14);

  (a1)(v16);
  sub_1DAEC7FC8(v10, a3, a4, v15);
  swift_getWitnessTable();
  v17 = sub_1DAED087C();
  v18 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v19 = *(v5 + v18);
  v21 = v17;
  v20 = v19;

  sub_1DAECFABC();
}

uint64_t sub_1DAEC7D60()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAEC7DA4(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  return sub_1DADC68E4(v4);
}

void (*sub_1DAEC7DFC(uint64_t *a1))(uint64_t a1)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_isForeground;
  *(v3 + 24) = v1;
  *(v3 + 32) = v5;
  swift_beginAccess();
  *(v4 + 40) = *(v1 + v5);
  return sub_1DAEC7E90;
}

void sub_1DAEC7E90(uint64_t a1)
{
  v1 = *a1;
  v3 = *(*a1 + 24);
  v2 = *(*a1 + 32);
  v4 = *(*a1 + 40);
  v5 = *(v3 + v2);
  *(v3 + v2) = v4;
  sub_1DADC68E4(v5);

  free(v1);
}

uint64_t sub_1DAEC7F00(uint64_t a1)
{
  v2 = sub_1DAECF32C();
  v3 = MEMORY[0x1EEE9AC00](v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_1DAECF47C();
}

uint64_t sub_1DAEC7FC8@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  type metadata accessor for _RootContentViewModel(0);
  sub_1DAD730A4(&qword_1EE006B90, type metadata accessor for _RootContentViewModel, &unk_1DAEDFD48);
  *a5 = sub_1DAECF21C();
  a5[1] = v9;
  v11 = type metadata accessor for _RootContentView(0, a3, a4, v10);
  v12 = *(*(a3 - 8) + 32);
  v13 = a5 + *(v11 + 36);

  return v12(v13, a2, a3);
}

uint64_t sub_1DAEC80D8()
{
  v1 = OBJC_IVAR____TtC14WidgetRendererP33_C0CA493AD0C736F6E6331C8B29E2CCA421_RootContentViewModel__isHidden;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC07D60, &unk_1DAED5810);
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC14WidgetRendererP33_C0CA493AD0C736F6E6331C8B29E2CCA421_RootContentViewModel__isSnapshotting, v2);

  return swift_deallocClassInstance();
}

void sub_1DAEC81F0(_BYTE *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1DAECEF3C();

  *a2 = v3;
}

void sub_1DAEC827C(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent;
  swift_beginAccess();
  *(v3 + v4) = v2;
  sub_1DADB4204(*(v3 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting));
  sub_1DAEC7848();
}

void sub_1DAEC8330(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    *(Strong + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__cachedAnimationsDisabledPreference) = v2;
    sub_1DAEC7848();
  }
}

void sub_1DAEC839C(char *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_areAnimationsPaused;
    swift_beginAccess();
    v4[v5] = v2;
    sub_1DAEC7848();
  }
}

void sub_1DAEC841C(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
    v4 = Strong;
    swift_beginAccess();
    v5 = *&v4[v3];

    v6 = sub_1DAECFA7C();
    sub_1DAECFBCC();
    v6(&v7, 0);
  }
}

id LiveWidgetContentViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void LiveWidgetContentViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__isSnapshotting) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_hasAnimatableContent) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController_animationsPausedCancellable) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__cachedAnimationsDisabledPreference) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__renderingScaleObserver) = 0;
  sub_1DAED273C();
  __break(1u);
}

double sub_1DAEC8678()
{

  return result;
}

id LiveWidgetContentViewController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver;
  if (*&v0[OBJC_IVAR____TtC14WidgetRenderer31LiveWidgetContentViewController__animationsDisabledPreferenceObserver])
  {

    sub_1DAECEE2C();
  }

  *&v0[v1] = 0;

  v3.receiver = v0;
  v3.super_class = type metadata accessor for LiveWidgetContentViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1DAEC886C(char a1, SEL *a2, char a3)
{
  v7.receiver = v3;
  v7.super_class = type metadata accessor for LiveWidgetContentViewController();
  objc_msgSendSuper2(&v7, *a2, a1 & 1);
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1DAECEF4C();
}

uint64_t sub_1DAEC8CE8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 16) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 16) & ~v6);
      }

      v15 = *(a1 + 1);
      if (v15 >= 0xFFFFFFFF)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_1DAEC8E6C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 16) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_46:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v19 = *(v6 + 56);
    v20 = &a1[v9 + 16] & ~v9;

    v19(v20);
  }

  else if ((a2 & 0x80000000) != 0)
  {
    *a1 = a2 & 0x7FFFFFFF;
    *(a1 + 1) = 0;
  }

  else
  {
    *(a1 + 1) = a2 - 1;
  }
}

uint64_t SnapshotRequest.init(key:attributes:contentIdentifier:protectionLevel:signpostID:layer:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v40 = a7;
  v42 = a4;
  v43 = a6;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08330, &unk_1DAED6540);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v37 - v16;
  v18 = sub_1DAECED2C();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v37 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1;
  *a9 = a1;
  *(a9 + 1) = a2;
  v22 = v42;
  *(a9 + 2) = a3;
  *(a9 + 3) = v22;
  v41 = a8;
  v39 = type metadata accessor for SnapshotRequest(0, a8, v23, v24);
  v25 = *(v39 + 36);
  v26 = sub_1DAED18CC();
  v27 = *(v26 - 8);
  v28 = *(v27 + 16);
  v42 = a5;
  v28(&a9[v25], a5, v26);
  v29 = v43;
  sub_1DAEC93D4(v43, v17);
  v30 = *(v19 + 48);
  if (v30(v17, 1, v18) != 1)
  {
    sub_1DAEC9444(v29);
    (*(v27 + 8))(v42, v26);
    (*(v19 + 32))(v21, v17, v18);
LABEL_8:
    v36 = v39;
    (*(v19 + 32))(&a9[*(v39 + 40)], v21, v18);
    return (*(*(v41 - 8) + 32))(&a9[*(v36 + 44)], v40);
  }

  v37 = v21;
  sub_1DAED298C();
  v31 = v38;
  sub_1DAED229C();

  v32 = sub_1DAED296C();
  v33 = v42;
  if ((v32 & 0x8000000000000000) == 0)
  {
LABEL_5:
    v21 = v37;
    sub_1DAECED3C();
    sub_1DAEC9444(v43);
    (*(v27 + 8))(v33, v26);
    if (v30(v17, 1, v18) != 1)
    {
      sub_1DAEC9444(v17);
    }

    goto LABEL_8;
  }

  v34 = __OFSUB__(0, v32);
  result = -v32;
  if (!v34)
  {
    if ((result & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1DAEC93D4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08330, &unk_1DAED6540);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DAEC9444(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECC08330, &unk_1DAED6540);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1DAEC94AC(uint64_t (*a1)(void))
{
  v2 = *(v1 + 24);
  if (v2 && (v3 = *(v1 + 16), v4 = a1(), v5))
  {
    if (v4 == v3 && v5 == v2)
    {

      v8 = 0;
    }

    else
    {
      v7 = sub_1DAED289C();

      v8 = v7 ^ 1;
    }
  }

  else
  {
    v8 = 1;
  }

  return v8 & 1;
}

uint64_t SnapshotRequest.contentIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void SnapshotRequest.contentIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t SnapshotRequest.protectionLevel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = sub_1DAED18CC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SnapshotRequest.protectionLevel.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 36);
  v5 = sub_1DAED18CC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t SnapshotRequest.signpostID.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 40);
  v5 = sub_1DAECED2C();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t SnapshotRequest.signpostID.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v5 = sub_1DAECED2C();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

id SnapshotRequest.id.getter@<X0>(void **a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  return v2;
}

uint64_t sub_1DAEC996C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1DAED18CC();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(sub_1DAECED2C() - 8);
  v10 = v9;
  v11 = *(v9 + 84);
  if (v8 <= v11)
  {
    v12 = *(v9 + 84);
  }

  else
  {
    v12 = v8;
  }

  v13 = *(*(a3 + 16) - 8);
  v14 = *(v13 + 84);
  v15 = *(v7 + 80);
  v16 = *(v7 + 64);
  v17 = *(v9 + 80);
  v18 = *(v9 + 64);
  v19 = *(v13 + 80);
  if (v12 <= v14)
  {
    v20 = *(v13 + 84);
  }

  else
  {
    v20 = v12;
  }

  if (v20 <= 0x7FFFFFFF)
  {
    v21 = 0x7FFFFFFF;
  }

  else
  {
    v21 = v20;
  }

  if (!a2)
  {
    return 0;
  }

  v22 = v18 + v19;
  if (a2 <= v21)
  {
    goto LABEL_34;
  }

  v23 = ((v22 + ((v16 + v17 + ((v15 + 32) & ~v15)) & ~v17)) & ~v19) + *(v13 + 64);
  v24 = 8 * v23;
  if (v23 <= 3)
  {
    v27 = ((a2 - v21 + ~(-1 << v24)) >> v24) + 1;
    if (HIWORD(v27))
    {
      v25 = *(a1 + v23);
      if (!v25)
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v27 > 0xFF)
    {
      v25 = *(a1 + v23);
      if (!*(a1 + v23))
      {
        goto LABEL_34;
      }

      goto LABEL_21;
    }

    if (v27 < 2)
    {
LABEL_34:
      if ((v20 & 0x80000000) != 0)
      {
        if (v8 == v21)
        {
          v32 = *(v7 + 48);

          return v32((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15, v8, v6);
        }

        else
        {
          v33 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v15 + 16) & ~v15) + v16 + v17) & ~v17;
          if (v11 == v21)
          {
            v34 = *(v10 + 48);

            return v34(v33);
          }

          else
          {
            v35 = *(v13 + 48);

            return v35((v22 + v33) & ~v19, v14);
          }
        }
      }

      else
      {
        v31 = *a1;
        if (*a1 >= 0xFFFFFFFFuLL)
        {
          LODWORD(v31) = -1;
        }

        return (v31 + 1);
      }
    }
  }

  v25 = *(a1 + v23);
  if (!*(a1 + v23))
  {
    goto LABEL_34;
  }

LABEL_21:
  v28 = (v25 - 1) << v24;
  if (v23 > 3)
  {
    v28 = 0;
  }

  if (v23)
  {
    if (v23 <= 3)
    {
      v29 = ((v22 + ((v16 + v17 + ((v15 + 32) & ~v15)) & ~v17)) & ~v19) + *(v13 + 64);
    }

    else
    {
      v29 = 4;
    }

    if (v29 > 2)
    {
      if (v29 == 3)
      {
        v30 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v30 = *a1;
      }
    }

    else if (v29 == 1)
    {
      v30 = *a1;
    }

    else
    {
      v30 = *a1;
    }
  }

  else
  {
    v30 = 0;
  }

  return v21 + (v30 | v28) + 1;
}

void sub_1DAEC9CFC(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1DAED18CC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = *(sub_1DAECED2C() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(a4 + 16);
  v15 = *(v14 - 8);
  if (v10 <= v13)
  {
    v16 = *(v11 + 84);
  }

  else
  {
    v16 = v10;
  }

  v17 = *(v15 + 84);
  v18 = *(v9 + 80);
  v19 = *(v9 + 64);
  v20 = *(v11 + 80);
  v21 = *(v11 + 64);
  v22 = *(v15 + 80);
  v23 = *(v15 + 64);
  if (v16 <= v17)
  {
    v24 = *(v15 + 84);
  }

  else
  {
    v24 = v16;
  }

  if (v24 <= 0x7FFFFFFF)
  {
    v25 = 0x7FFFFFFF;
  }

  else
  {
    v25 = v24;
  }

  v26 = ((v21 + v22 + ((v19 + v20 + ((v18 + 32) & ~v18)) & ~v20)) & ~v22) + v23;
  if (a3 <= v25)
  {
    v27 = 0;
  }

  else if (v26 <= 3)
  {
    v30 = ((a3 - v25 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
    if (HIWORD(v30))
    {
      v27 = 4;
    }

    else
    {
      if (v30 < 0x100)
      {
        v31 = 1;
      }

      else
      {
        v31 = 2;
      }

      if (v30 >= 2)
      {
        v27 = v31;
      }

      else
      {
        v27 = 0;
      }
    }
  }

  else
  {
    v27 = 1;
  }

  if (v25 < a2)
  {
    v28 = ~v25 + a2;
    if (v26 < 4)
    {
      v29 = (v28 >> (8 * v26)) + 1;
      if (v26)
      {
        v32 = v28 & ~(-1 << (8 * v26));
        bzero(a1, ((v21 + v22 + ((v19 + v20 + ((v18 + 32) & ~v18)) & ~v20)) & ~v22) + v23);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v32;
            if (v27 > 1)
            {
LABEL_56:
              if (v27 == 2)
              {
                *&a1[v26] = v29;
              }

              else
              {
                *&a1[v26] = v29;
              }

              return;
            }
          }

          else
          {
            *a1 = v28;
            if (v27 > 1)
            {
              goto LABEL_56;
            }
          }

          goto LABEL_53;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v27 > 1)
      {
        goto LABEL_56;
      }
    }

    else
    {
      bzero(a1, ((v21 + v22 + ((v19 + v20 + ((v18 + 32) & ~v18)) & ~v20)) & ~v22) + v23);
      *a1 = v28;
      v29 = 1;
      if (v27 > 1)
      {
        goto LABEL_56;
      }
    }

LABEL_53:
    if (v27)
    {
      a1[v26] = v29;
    }

    return;
  }

  if (v27 > 1)
  {
    if (v27 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_37;
    }

    *&a1[v26] = 0;
  }

  else if (v27)
  {
    a1[v26] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return;
  }

LABEL_37:
  if ((v24 & 0x80000000) == 0)
  {
    if ((a2 & 0x80000000) != 0)
    {
      v33 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v33 = (a2 - 1);
    }

    *a1 = v33;
    return;
  }

  if (v10 == v25)
  {
    v34 = *(v9 + 56);
    v35 = (((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v18 + 16) & ~v18;
    v36 = a2;
    v37 = v10;
    v14 = v8;
LABEL_61:

    v34(v35, v36, v37, v14);
    return;
  }

  v38 = (((((((a1 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v18 + 16) & ~v18) + v19 + v20) & ~v20;
  if (v13 != v25)
  {
    v34 = *(v15 + 56);
    v35 = (v21 + v22 + v38) & ~v22;
    v36 = a2;
    v37 = v17;
    goto LABEL_61;
  }

  v39 = *(v12 + 56);

  v39(v38, a2);
}

unint64_t sub_1DAECA0E8()
{
  result = qword_1EE005640;
  if (!qword_1EE005640)
  {
    sub_1DAD674D4(255, &unk_1EE005648, 0x1E69943E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE005640);
  }

  return result;
}

Swift::Void __swiftcall _UIHostingViewable.setNeedsSynchronousUpdate()()
{
  v2 = _UIHostingViewable.rbLayer.getter(v0, v1);
  if (v2)
  {
    v3 = v2;
    [v2 setNeedsSynchronousUpdate_];
  }
}

Swift::Void __swiftcall _UIHostingViewable.configureRenderBox(async:isOpaque:minAnimationInterval:)(Swift::Bool async, Swift::Bool isOpaque, Swift::Double minAnimationInterval)
{
  v64 = v4;
  v6 = v3;
  v61 = async;
  v62 = isOpaque;
  v7 = sub_1DAECFBAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v57 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DAECFC7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v59 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v57 - v15;
  v63 = sub_1DAECFC4C();
  v17 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v60 = v57 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v57 - v20;
  v58 = objc_opt_self();
  if ([v58 isSupported])
  {
    v57[2] = v5;
    v57[1] = v6;
    sub_1DAECF9CC();
    sub_1DAECFC5C();
    (*(v12 + 8))(v16, v11);
    if ((*(v8 + 88))(v10, v7) == *MEMORY[0x1E697FF98])
    {
      (*(v8 + 96))(v10, v7);
      v22 = swift_projectBox();
      v23 = v17;
      v24 = v63;
      (*(v17 + 16))(v21, v22, v63);

      v25 = sub_1DAECFBFC();
      v26 = sub_1DAECFC1C();
      (*(v17 + 8))(v21, v24);
      v27 = v62;
      v28 = v25 ^ v61;
      v29 = v61;
      if (v28 & 1) != 0 || ((v26 ^ v62))
      {
        goto LABEL_15;
      }
    }

    else
    {
      (*(v8 + 8))(v10, v7);
      v24 = v63;
      v23 = v17;
      v29 = v61;
      v27 = v62;
      if (v61 || v62)
      {
LABEL_15:
        v34 = v60;
        sub_1DAECFC3C();
        sub_1DAECFC0C();
        sub_1DAECFC2C();
        if (qword_1EE00BE80 != -1)
        {
          swift_once();
        }

        v35 = sub_1DAECEDEC();
        __swift_project_value_buffer(v35, qword_1EE011C08);
        v36 = sub_1DAECEDCC();
        v37 = sub_1DAED200C();
        if (os_log_type_enabled(v36, v37))
        {
          v38 = swift_slowAlloc();
          v39 = v29;
          v40 = v38;
          *v38 = 67240448;
          *(v38 + 4) = v39;
          *(v38 + 8) = 1026;
          *(v38 + 10) = v27;
          _os_log_impl(&dword_1DAD61000, v36, v37, "RenderBox hosting configured - async? %{BOOL,public}d, opaque: %{BOOL,public}d", v38, 0xEu);
          MEMORY[0x1E127F100](v40, -1, -1);
        }

        [v58 setAllowsRenderingInBackground_];
        v41 = [objc_opt_self() standardUserDefaults];
        v42 = sub_1DAED1CBC();
        v43 = [v41 objectForKey_];

        if (v43)
        {
          sub_1DAED238C();
          swift_unknownObjectRelease();
        }

        else
        {
          v70 = 0u;
          v71 = 0u;
        }

        aBlock = v70;
        v67 = v71;
        if (*(&v71 + 1))
        {
          sub_1DAD674D4(0, &qword_1EE005470, 0x1E696AD98);
          if (swift_dynamicCast())
          {
            v44 = v65;
            [v65 intValue];

            LOBYTE(aBlock) = 0;
            sub_1DAECFBEC();
          }
        }

        else
        {
          sub_1DAE2695C(&aBlock);
        }

        sub_1DAECFBBC();
        sub_1DAECF9DC();
        v45 = sub_1DAECF9BC();
        sub_1DAECFBDC();
        v45(&aBlock, 0);
        if (sub_1DAECF9AC())
        {
          objc_opt_self();
          v46 = swift_dynamicCastObjCClass();
          if (v46)
          {
            v47 = v46;
            [v46 setNeedsSynchronousUpdate_];
            [v47 setNeedsDisplay];
            v48 = [v47 statisticsHandler];
            if (v48)
            {
              v49 = v48;
              swift_unknownObjectRelease();
              _Block_release(v49);
            }

            else
            {
              v53 = sub_1DAECEDCC();
              v54 = sub_1DAED200C();
              if (os_log_type_enabled(v53, v54))
              {
                v55 = swift_slowAlloc();
                *v55 = 0;
                _os_log_impl(&dword_1DAD61000, v53, v54, "Attaching layer statistics handler", v55, 2u);
                MEMORY[0x1E127F100](v55, -1, -1);
              }

              [v47 resetStatistics:11 alpha:0.0];
              v68 = nullsub_1;
              v69 = 0;
              *&aBlock = MEMORY[0x1E69E9820];
              *(&aBlock + 1) = 1107296256;
              *&v67 = sub_1DADB7C8C;
              *(&v67 + 1) = &block_descriptor_22;
              v56 = _Block_copy(&aBlock);
              [v47 setStatisticsHandler_];
              _Block_release(v56);
              swift_unknownObjectRelease();
            }

LABEL_34:
            (*(v23 + 8))(v34, v24);
            return;
          }

          swift_unknownObjectRelease();
        }

        v50 = sub_1DAECEDCC();
        v51 = sub_1DAED203C();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          *v52 = 0;
          _os_log_impl(&dword_1DAD61000, v50, v51, "RenderBox unable to attach layer statistics", v52, 2u);
          MEMORY[0x1E127F100](v52, -1, -1);
        }

        goto LABEL_34;
      }
    }
  }

  else
  {
    if (qword_1EE00BE80 != -1)
    {
      swift_once();
    }

    v30 = sub_1DAECEDEC();
    __swift_project_value_buffer(v30, qword_1EE011C08);
    v64 = sub_1DAECEDCC();
    v31 = sub_1DAED203C();
    if (os_log_type_enabled(v64, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67240192;
      _os_log_impl(&dword_1DAD61000, v64, v31, "RenderBox hosting disabled (isSupported=%{BOOL,public}d)", v32, 8u);
      MEMORY[0x1E127F100](v32, -1, -1);
    }

    v33 = v64;
  }
}

uint64_t _UIHostingViewable.rbLayer.getter(uint64_t a1, uint64_t a2)
{
  result = sub_1DAECF9AC();
  if (result)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (!result)
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DAECAB50(uint64_t a1, uint64_t a2, double a3)
{
  v3 = sub_1DAECFC7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v11 - v8;
  sub_1DAECF9CC();
  sub_1DAECFBDC();
  (*(v4 + 16))(v6, v9, v3);
  sub_1DAECF9DC();
  return (*(v4 + 8))(v9, v3);
}

void __swiftcall _UIHostingViewable.consumeRenderStatistics()(WidgetRenderer::WidgetContentRenderStatistics_optional *__return_ptr retstr)
{
  if (!sub_1DAECF9AC())
  {
    goto LABEL_18;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 statistics];
    type metadata accessor for RBDrawableStatisticsKey(0);
    sub_1DAD8E95C(&qword_1EE005568, type metadata accessor for RBDrawableStatisticsKey, &unk_1DAED5748);
    v5 = sub_1DAED1C1C();

    if (!*(v5 + 16))
    {
      goto LABEL_16;
    }

    v6 = sub_1DAECB138(*MEMORY[0x1E69C7178]);
    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1DAD642F8(*(v5 + 56) + 32 * v6, v21);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v8 = [v3 statistics];
    v9 = sub_1DAED1C1C();

    if (!*(v9 + 16))
    {
      goto LABEL_16;
    }

    v10 = sub_1DAECB138(*MEMORY[0x1E69C7180]);
    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1DAD642F8(*(v9 + 56) + 32 * v10, v21);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_17;
    }

    v12 = [v3 statistics];
    v13 = sub_1DAED1C1C();

    if (!*(v13 + 16) || (v14 = sub_1DAECB138(*MEMORY[0x1E69C7170]), (v15 & 1) == 0))
    {
LABEL_16:

      goto LABEL_17;
    }

    sub_1DAD642F8(*(v13 + 56) + 32 * v14, v21);

    if (swift_dynamicCast())
    {
      v16 = [v3 statistics];
      v17 = sub_1DAED1C1C();

      if (*(v17 + 16))
      {
        v18 = sub_1DAECB138(*MEMORY[0x1E69C7168]);
        if (v19)
        {
          sub_1DAD642F8(*(v17 + 56) + 32 * v18, v21);

          if (swift_dynamicCast())
          {
            [v3 resetStatistics:11 alpha:0.0];
            swift_unknownObjectRelease();
            retstr->value.totalRenderTime = v20;
            retstr->value.totalSubmitTime = v20;
            *&retstr->value.totalFramesRendered = v20;
            *&retstr->value.totalFramesSubmitted = v20;
            retstr->is_nil = 0;
            return;
          }

          goto LABEL_17;
        }
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  swift_unknownObjectRelease();
LABEL_18:
  *&retstr->value.totalRenderTime = 0u;
  *&retstr->value.totalFramesRendered = 0u;
  retstr->is_nil = 1;
}

uint64_t sub_1DAECB034@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_1DAECB064(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

unint64_t sub_1DAECB0A8(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58, MEMORY[0x1E6993E08]);
  v2 = sub_1DAED1C5C();

  return sub_1DAECB414(a1, v2);
}

unint64_t sub_1DAECB138(uint64_t a1)
{
  sub_1DAED1CEC();
  sub_1DAED294C();
  sub_1DAED1D9C();
  v2 = sub_1DAED297C();

  return sub_1DAECB6D4(a1, v2);
}

unint64_t sub_1DAECB1C8(uint64_t a1)
{
  sub_1DAED294C();
  type metadata accessor for CFString(0);
  sub_1DAD8E95C(&qword_1ECC0AB70, type metadata accessor for CFString, &unk_1DAED613C);
  sub_1DAECE3FC();
  v2 = sub_1DAED297C();

  return sub_1DAECB5C8(a1, v2);
}

unint64_t sub_1DAECB27C(uint64_t a1)
{
  sub_1DAECFB8C();
  v2 = MEMORY[0x1E697FD80];
  sub_1DAD8E95C(&qword_1EE005910, MEMORY[0x1E697FD80], MEMORY[0x1E697FD88]);
  v3 = sub_1DAED1C5C();
  return sub_1DAD80410(a1, v3, MEMORY[0x1E697FD80], &qword_1EE005908, v2, MEMORY[0x1E697FD90]);
}

unint64_t sub_1DAECB350(uint64_t a1)
{
  sub_1DAED294C();
  sub_1DAED1D9C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  sub_1DAE95128(&qword_1EE00AB58, MEMORY[0x1E6993E08]);
  sub_1DAED1C6C();
  v2 = sub_1DAED297C();

  return sub_1DAECB7D8(a1, v2);
}

unint64_t sub_1DAECB414(uint64_t a1, uint64_t a2)
{
  v20 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECC0A9C0, &unk_1DAED8030);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v18 - v7;
  v21 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v19 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v5 + 16);
    v13 = v5 + 16;
    v12 = v14;
    v15 = *(v13 + 56);
    do
    {
      v12(v8, *(v21 + 48) + v15 * v10, v4, v6);
      sub_1DAE95128(&qword_1EE0057B0, MEMORY[0x1E6993E10]);
      v16 = sub_1DAED1CAC();
      (*(v13 - 8))(v8, v4);
      if (v16)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
    }

    while (((*(v19 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_1DAECB5C8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_1DAD8E95C(&qword_1ECC0AB70, type metadata accessor for CFString, &unk_1DAED613C);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = sub_1DAECE3EC();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1DAECB6D4(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    while (1)
    {
      v6 = sub_1DAED1CEC();
      v8 = v7;
      if (v6 == sub_1DAED1CEC() && v8 == v9)
      {
        break;
      }

      v11 = sub_1DAED289C();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_1DAECB7D8(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for ActivityRendererSessionKey(0);
    sub_1DAD8E95C(&qword_1EE00BB18, type metadata accessor for ActivityRendererSessionKey, &protocol conformance descriptor for ActivityRendererSessionKey);
    do
    {
      if (sub_1DAED1CAC())
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_1DAECB8D8(uint64_t a1)
{
  BSDispatchQueueAssertMain();
  v2 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v4 = sub_1DAECD9DC();
  v5 = [v3 _timelinesForDateInterval_];

  sub_1DAECBEF0();
  v6 = sub_1DAED1E7C();

  return v6;
}

uint64_t sub_1DAECB988()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  sub_1DAECFAAC();

  return v4;
}

void sub_1DAECB9E4(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v3 = *(v1 + v2);

  sub_1DAECFABC();
}

void (*sub_1DAECBA5C(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x38uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  *(v3 + 40) = v1;
  *(v3 + 48) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  sub_1DAECFAAC();

  *(v4 + 24) = *(v4 + 32);
  return sub_1DAECBB08;
}

void sub_1DAECBB08(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*(*a1 + 40) + *(*a1 + 48));
  *(*a1 + 32) = *(*a1 + 24);
  if (a2)
  {
    swift_retain_n();
    v4 = v3;
    sub_1DAECFABC();
  }

  else
  {
    v5 = v3;

    sub_1DAECFABC();
  }

  free(v2);
}

uint64_t sub_1DAECBBC4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  type metadata accessor for SecureHostingController(0);
  sub_1DAECD780(qword_1EE00AFA0, type metadata accessor for SecureHostingController, MEMORY[0x1E697C600]);
  v3 = v2;
  v4 = sub_1DAECF9AC();

  if (v4)
  {
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      return result;
    }

    swift_unknownObjectRelease();
  }

  return 0;
}

void *sub_1DAECBCAC()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1DAECBCF8(void *a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;
  sub_1DAECCA24(v4);
}

void (*sub_1DAECBD64(uint64_t *a1))(uint64_t a1, char a2)
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
  v5 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);
  *(v4 + 24) = v6;
  v7 = v6;
  return sub_1DAECBE00;
}

void sub_1DAECBE00(uint64_t a1, char a2)
{
  v3 = *a1;
  v5 = (*a1 + 24);
  v4 = *v5;
  v7 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(v7 + v6);
  *(v7 + v6) = *v5;
  v9 = v4;
  v10 = v9;
  if (a2)
  {
    v11 = v9;
    sub_1DAECCA24(v8);

    v8 = *v5;
  }

  else
  {
    sub_1DAECCA24(v8);
  }

  free(v3);
}

id sub_1DAECBE9C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

unint64_t sub_1DAECBEF0()
{
  result = qword_1ECC09EA0;
  if (!qword_1ECC09EA0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECC09EA0);
  }

  return result;
}

void sub_1DAECBF3C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

void sub_1DAECBFF4()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v2 = *(v0 + v1);
  type metadata accessor for SecureHostingController(0);
  sub_1DAECD780(qword_1EE00AFA0, type metadata accessor for SecureHostingController, MEMORY[0x1E697C600]);
  v3 = v2;
  if (!sub_1DAECF9AC())
  {
    goto LABEL_4;
  }

  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  if (v4)
  {
    [v4 setNeedsSynchronousUpdate_];
    swift_unknownObjectRelease();
LABEL_4:

    return;
  }

  swift_unknownObjectRelease();
}

void sub_1DAECC0E8(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v4 = *(v1 + v3);
  sub_1DAECC280(a1);
}

uint64_t sub_1DAECC14C()
{
  v1 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1DAECC190(char a1)
{
  v3 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

double sub_1DAECC280@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for SecureHostingController(0);
  sub_1DAECD780(qword_1EE00AFA0, type metadata accessor for SecureHostingController, MEMORY[0x1E697C600]);
  if (!sub_1DAECF9AC())
  {
    goto LABEL_18;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 statistics];
    type metadata accessor for RBDrawableStatisticsKey(0);
    sub_1DAECD780(&qword_1EE005568, type metadata accessor for RBDrawableStatisticsKey, &unk_1DAED5748);
    v5 = sub_1DAED1C1C();

    if (!*(v5 + 16))
    {
      goto LABEL_16;
    }

    v6 = sub_1DAECB8D4();
    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1DAD642F8(*(v5 + 56) + 32 * v6, v22);

    if (!swift_dynamicCast())
    {
      goto LABEL_17;
    }

    v8 = [v3 statistics];
    v9 = sub_1DAED1C1C();

    if (!*(v9 + 16))
    {
      goto LABEL_16;
    }

    v10 = sub_1DAECB8D4();
    if ((v11 & 1) == 0)
    {
      goto LABEL_16;
    }

    sub_1DAD642F8(*(v9 + 56) + 32 * v10, v22);

    if (!swift_dynamicCast())
    {
      goto LABEL_17;
    }

    v12 = [v3 statistics];
    v13 = sub_1DAED1C1C();

    if (!*(v13 + 16) || (v14 = sub_1DAECB8D4(), (v15 & 1) == 0))
    {
LABEL_16:

      goto LABEL_17;
    }

    sub_1DAD642F8(*(v13 + 56) + 32 * v14, v22);

    if (swift_dynamicCast())
    {
      v16 = [v3 statistics];
      v17 = sub_1DAED1C1C();

      if (*(v17 + 16))
      {
        v18 = sub_1DAECB8D4();
        if (v19)
        {
          sub_1DAD642F8(*(v17 + 56) + 32 * v18, v22);

          if (swift_dynamicCast())
          {
            [v3 resetStatistics:11 alpha:0.0];
            swift_unknownObjectRelease();
            *a1 = v21;
            *(a1 + 8) = v21;
            *(a1 + 16) = v21;
            *(a1 + 24) = v21;
            *(a1 + 32) = 0;
            return result;
          }

          goto LABEL_17;
        }
      }

      goto LABEL_16;
    }
  }

LABEL_17:
  swift_unknownObjectRelease();
LABEL_18:
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1;
  return result;
}

void *SecureHostingController.__allocating_init(coder:rootView:)(uint64_t a1, uint64_t a2)
{
  v3 = objc_allocWithZone(v2);

  v4 = sub_1DAECFA8C();
  v5 = v4;

  if (v4)
  {
  }

  return v4;
}

void *SecureHostingController.init(coder:rootView:)(uint64_t a1, uint64_t a2)
{

  v2 = sub_1DAECFA8C();
  v3 = v2;

  if (v2)
  {
  }

  return v2;
}

id SecureHostingController.init(coder:)(void *a1)
{
  v5.receiver = v1;
  v5.super_class = type metadata accessor for SecureHostingController(0);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1DAECC780(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for SecureHostingController(0);
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, sel_initWithCoder_, v4);

  if (v5)
  {
  }

  return v5;
}

void *sub_1DAECC85C(uint64_t a1, uint64_t *a2)
{
  v2 = objc_allocWithZone(type metadata accessor for SecureHostingController(0));

  v3 = sub_1DAECFA8C();
  v4 = v3;

  if (v3)
  {
  }

  return v3;
}

void sub_1DAECC8D8(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  sub_1DAECFAAC();

  *a2 = v6;
}

void sub_1DAECC948(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v4 = *(v2 + v3);

  sub_1DAECFABC();
}

void sub_1DAECC9BC(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
  sub_1DAECCA24(v5);
}

void sub_1DAECCA24(uint64_t a1)
{
  v2 = v1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape;
  swift_beginAccess();
  v5 = *&v2[v4];
  if (!v5)
  {
    if (!a1)
    {
      return;
    }

LABEL_6:
    if (v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController__renderEngine] != 1)
    {
      return;
    }

    v8 = *&v2[v4];
    if (v8)
    {
      v9 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer;
      if (*&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer])
      {
        v10 = v8;
LABEL_15:
        sub_1DAECE1DC();
        sub_1DAECE1AC();
        v36 = sub_1DAECE02C();

        if ((v36 & 1) == 0)
        {
          goto LABEL_20;
        }

        v37 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay;
        if (*&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay])
        {
          goto LABEL_20;
        }

        v38 = [objc_allocWithZone(MEMORY[0x1E69794A0]) init];
        v39 = [v2 view];
        if (v39)
        {
          v40 = v39;
          v41 = [v39 layer];

          [v41 bounds];
          v43 = v42;
          v45 = v44;
          v47 = v46;
          v49 = v48;

          [v38 setFrame_];
          v50 = objc_opt_self();
          v51 = [v50 redColor];
          v52 = [v51 CGColor];

          [v38 setStrokeColor_];
          [v38 setLineWidth_];
          v53 = [v50 magentaColor];
          v54 = [v53 colorWithAlphaComponent_];

          v55 = [v54 CGColor];
          [v38 setFillColor_];

          v56 = [v2 view];
          if (v56)
          {
            v57 = v56;
            v58 = [v56 layer];

            [v58 addSublayer_];
            v59 = *&v2[v37];
            *&v2[v37] = v38;

LABEL_20:
            v60 = *&v2[v9];
            if (v60)
            {
              [v60 setPath_];
            }

            v61 = *&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay];
            if (v61)
            {
              v62 = v61;
              [v62 setPath_];
            }

            goto LABEL_24;
          }

LABEL_30:
          __break(1u);
          return;
        }

LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v15 = objc_allocWithZone(MEMORY[0x1E69794A0]);
      v16 = v8;
      v17 = [v15 init];
      v18 = [v2 view];
      if (v18)
      {
        v19 = v18;
        v20 = [v18 layer];

        [v20 bounds];
        v22 = v21;
        v24 = v23;
        v26 = v25;
        v28 = v27;

        [v17 setFrame_];
        v29 = [objc_opt_self() whiteColor];
        v30 = [v29 CGColor];

        [v17 setFillColor_];
        v31 = *&v2[v9];
        *&v2[v9] = v17;
        v32 = v17;

        v33 = [v2 view];
        if (v33)
        {
          v34 = v33;
          v35 = [v33 layer];

          [v35 setMask_];
          goto LABEL_15;
        }

LABEL_28:
        __break(1u);
        goto LABEL_29;
      }
    }

    else
    {
      v11 = [v2 view];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 layer];

        [v13 setMask_];
        v14 = *&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer];
        *&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer] = 0;

        v8 = *&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay];
        *&v2[OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay] = 0;
LABEL_24:

        return;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  if (!a1)
  {
    goto LABEL_6;
  }

  type metadata accessor for CGPath(0);
  sub_1DAECD780(&qword_1ECC0ABB0, type metadata accessor for CGPath, &unk_1DAED570C);
  v6 = v5;
  v7 = sub_1DAECE3EC();

  if ((v7 & 1) == 0)
  {
    goto LABEL_6;
  }
}

void sub_1DAECCFB4(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

id BaseWidgetContentViewController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder_];

  return v3;
}

void BaseWidgetContentViewController.init(coder:)()
{
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShape) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_isContentTransparent) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeMaskLayer) = 0;
  *(v0 + OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_contentShapeDebugOverlay) = 0;
  sub_1DAED273C();
  __break(1u);
}

id BaseWidgetContentViewController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_1DAED1CBC();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id sub_1DAECD260(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

void sub_1DAECD304(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC14WidgetRenderer31BaseWidgetContentViewController_hostingController;
  swift_beginAccess();
  v5 = *(v3 + v4);
  sub_1DAECC280(a1);
}

unint64_t sub_1DAECD72C()
{
  result = qword_1ECC0ABA8;
  if (!qword_1ECC0ABA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0ABA8);
  }

  return result;
}

uint64_t sub_1DAECD780(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t RendererServices.hashValue.getter()
{
  v1 = *v0;
  sub_1DAED294C();
  MEMORY[0x1E127E5D0](v1);
  return sub_1DAED297C();
}

unint64_t sub_1DAECD874()
{
  result = qword_1ECC0ABB8;
  if (!qword_1ECC0ABB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECC0ABB8);
  }

  return result;
}

uint64_t sub_1DAECD96C()
{
  MEMORY[0x1E127F100](*(v0 + 16), -1, -1);

  return swift_deallocClassInstance();
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x1EEDBAE30](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}