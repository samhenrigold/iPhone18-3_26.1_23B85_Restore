unint64_t sub_1D9107294()
{
  result = qword_1ECABA8E0;
  if (!qword_1ECABA8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABA8E0);
  }

  return result;
}

uint64_t sub_1D91072E8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA8E8, &unk_1D91B9090);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1D9107350(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_1D9106524(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

void sub_1D9107384(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_1D917935C();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_1D917930C();
    }

    else
    {
      v3 = sub_1D91792DC();
      v4 = *(v1 + 36);
    }

    v38 = v3;
    v39 = v4;
    v40 = v34 != 0;
    if ((v2 & 0x8000000000000000) == 0)
    {
      v5 = 0;
      v32 = v1 + 56;
      v31 = v1 + 64;
      v33 = v2;
      while (v5 < v2)
      {
        if (__OFADD__(v5++, 1))
        {
          goto LABEL_35;
        }

        v8 = v38;
        v9 = v40;
        v35 = v39;
        v10 = v1;
        sub_1D9109118(v38, v39, v40, v1, &unk_1EDCD0950, 0x1E695D6D8);
        v12 = v11;
        v13 = [v11 name];
        v14 = sub_1D917820C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D8D41BE0((v18 > 1), v19 + 1, 1);
          v17 = v41;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = v14;
        *(v20 + 40) = v16;
        v36 = v17;
        if (v34)
        {
          if (!v9)
          {
            goto LABEL_40;
          }

          v1 = v10;
          if (sub_1D917932C())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA950, &qword_1D91B91B0);
          v6 = sub_1D9178AFC();
          sub_1D91793AC();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_1D8D9B144(v38, v39, v40);
            return;
          }
        }

        else
        {
          if (v9)
          {
            goto LABEL_41;
          }

          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_36;
          }

          v1 = v10;
          v21 = 1 << *(v10 + 32);
          if (v8 >= v21)
          {
            goto LABEL_36;
          }

          v22 = v8 >> 6;
          v23 = *(v32 + 8 * (v8 >> 6));
          if (((v23 >> v8) & 1) == 0)
          {
            goto LABEL_37;
          }

          if (*(v10 + 36) != v35)
          {
            goto LABEL_38;
          }

          v24 = v23 & (-2 << (v8 & 0x3F));
          if (v24)
          {
            v21 = __clz(__rbit64(v24)) | v8 & 0x7FFFFFFFFFFFFFC0;
            v2 = v33;
          }

          else
          {
            v25 = v22 << 6;
            v26 = v22 + 1;
            v27 = (v31 + 8 * v22);
            v2 = v33;
            while (v26 < (v21 + 63) >> 6)
            {
              v29 = *v27++;
              v28 = v29;
              v25 += 64;
              ++v26;
              if (v29)
              {
                sub_1D8D9B144(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_1D8D9B144(v8, v35, 0);
          }

LABEL_31:
          v30 = *(v10 + 36);
          v38 = v21;
          v39 = v30;
          v40 = 0;
          if (v5 == v2)
          {
            goto LABEL_32;
          }
        }
      }

      __break(1u);
LABEL_35:
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
  }
}

uint64_t EpisodeStatePersistentHistoryTracker.__allocating_init()()
{
  v0 = swift_allocObject();
  EpisodeStatePersistentHistoryTracker.init()();
  return v0;
}

id *EpisodeStatePersistentHistoryTracker.deinit()
{

  return v0;
}

uint64_t EpisodeStatePersistentHistoryTracker.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Void __swiftcall EpisodeStatePersistentHistoryTracker.startTrackingChanges()()
{
  v1 = *(v0 + 24);
  v2 = swift_allocObject();
  *(v2 + 16) = sub_1D8D244B0;
  *(v2 + 24) = v0;
  v4[4] = sub_1D8D244E0;
  v4[5] = v2;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 1107296256;
  v4[2] = sub_1D8D24488;
  v4[3] = &block_descriptor_90;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

uint64_t sub_1D91078F0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA930, &qword_1D91B9170);
  sub_1D8CF48EC(&qword_1EDCD0A40, &qword_1ECABA930, &qword_1D91B9170, MEMORY[0x1E69E6328]);
  return sub_1D917841C();
}

uint64_t sub_1D9107984@<X0>(void **a1@<X0>, unint64_t *a3@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = sub_1D8DA55EC(v4);
    v8 = v7;
    v10 = v9;
    v12 = v11;
  }

  else
  {
    v6 = 0;
    v8 = 0;
    v10 = 0;
    v12 = 0;
  }

  *a3 = v6;
  a3[1] = v8;
  a3[2] = v10;
  a3[3] = v12;
  return result;
}

void sub_1D9107A50(void *a1, void **a2)
{
  v4 = sub_1D917744C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v34[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a2;
  v10 = [v9 updatedProperties];
  if (v10)
  {
    v11 = v10;
    sub_1D8CF2154(0, &unk_1EDCD0950, 0x1E695D6D8);
    sub_1D8CF3274(&qword_1EDCD0948, &unk_1EDCD0950, 0x1E695D6D8, MEMORY[0x1E69E81B8]);
    v12 = sub_1D9178A9C();

    sub_1D9107384(v12);
    v14 = v13;

    v15 = sub_1D8FC0F28(v14);

    v16 = [v9 changedObjectID];
    v17 = v16;
    v18 = *a1;
    if (*(*a1 + 16) && (v19 = sub_1D8D698BC(v16), (v20 & 1) != 0))
    {
      v21 = *(*(v18 + 56) + 8 * v19);
    }

    else
    {
      v21 = MEMORY[0x1E69E7CD0];
    }

    v22 = [v9 changedObjectID];
    sub_1D8FB13E8(v21, v15);
    v24 = v23;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34[0] = *a1;
    sub_1D8F513D8(v24, v22, isUniquelyReferenced_nonNull_native);

    *a1 = v34[0];
  }

  else
  {
    if (qword_1ECAAFC40 != -1)
    {
      swift_once();
    }

    v26 = __swift_project_value_buffer(v4, qword_1ECAAFC48);
    swift_beginAccess();
    (*(v5 + 16))(v8, v26, v4);
    v27 = v9;
    v28 = sub_1D917741C();
    v29 = sub_1D9178CFC();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      *v30 = 138412290;
      *(v30 + 4) = v27;
      *v31 = v27;
      v32 = v27;
      _os_log_impl(&dword_1D8CEC000, v28, v29, "Skipping update change with no updated properties %@", v30, 0xCu);
      sub_1D8D08A50(v31, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v31, -1, -1);
      MEMORY[0x1DA72CB90](v30, -1, -1);
    }

    (*(v5 + 8))(v8, v4);
  }
}

uint64_t sub_1D9107DD4@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2;
  v49 = a2;
  v5 = sub_1D917744C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = [*a1 tombstone];
  if (!v11)
  {
    goto LABEL_14;
  }

  v12 = v11;
  v13 = sub_1D917805C();

  v44 = sub_1D917820C();
  v45 = v14;
  sub_1D91793EC();
  if (!*(v13 + 16) || (v15 = sub_1D8D6550C(v46), (v16 & 1) == 0))
  {

    sub_1D8D9A308(v46);
LABEL_14:
    v47 = 0u;
    v48 = 0u;
    goto LABEL_15;
  }

  sub_1D8CFAD1C(*(v13 + 56) + 32 * v15, &v47);
  sub_1D8D9A308(v46);

  if (!*(&v48 + 1))
  {
LABEL_15:
    sub_1D8D08A50(&v47, &qword_1ECAB57F0, &unk_1D9190AA0);
    goto LABEL_16;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v18 = v46[0];
  v17 = v46[1];
  v19 = [v10 tombstone];
  if (!v19)
  {

    goto LABEL_14;
  }

  v42 = v18;
  v43 = v17;
  v20 = v19;
  v21 = sub_1D917805C();

  v44 = sub_1D917820C();
  v45 = v22;
  sub_1D91793EC();
  if (!*(v21 + 16) || (v23 = sub_1D8D6550C(v46), (v24 & 1) == 0))
  {

    sub_1D8D9A308(v46);
    v47 = 0u;
    v48 = 0u;
    v3 = v2;
    goto LABEL_26;
  }

  sub_1D8CFAD1C(*(v21 + 56) + 32 * v23, &v47);
  sub_1D8D9A308(v46);

  v3 = v2;
  if (!*(&v48 + 1))
  {
LABEL_26:

    goto LABEL_15;
  }

  if (swift_dynamicCast())
  {
    v25 = v46[0];
    if ([objc_opt_self() isEmpty_])
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4580, &unk_1D9192000);
      result = swift_allocObject();
      *(result + 16) = xmmword_1D9189080;
      v27 = v43;
      *(result + 32) = v42;
      *(result + 40) = v27;
      *(result + 48) = 1;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4580, &unk_1D9192000);
      result = swift_allocObject();
      *(result + 16) = xmmword_1D918A530;
      v40 = v43;
      *(result + 32) = v42;
      *(result + 40) = v40;
      *(result + 48) = 1;
      *(result + 56) = v25 & ~(v25 >> 63);
      *(result + 64) = 0;
      *(result + 72) = 0;
    }

    goto LABEL_24;
  }

LABEL_16:
  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v28 = __swift_project_value_buffer(v5, qword_1ECAAFC48);
  swift_beginAccess();
  (*(v6 + 16))(v9, v28, v5);
  v29 = v10;
  v30 = sub_1D917741C();
  v31 = sub_1D9178CFC();

  if (os_log_type_enabled(v30, v31))
  {
    v43 = v3;
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    *&v47 = v33;
    *v32 = 136315138;
    v34 = [v29 tombstone];
    if (v34)
    {
      v35 = v34;
      v36 = sub_1D917805C();
    }

    else
    {
      v36 = 0;
    }

    v44 = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA948, &unk_1D91B91A0);
    v37 = sub_1D917826C();
    v39 = sub_1D8CFA924(v37, v38, &v47);

    *(v32 + 4) = v39;
    _os_log_impl(&dword_1D8CEC000, v30, v31, "Tombstones from episode deletion must have a uuid and a valid adamId. Make sure the corresponding attributes in MTEpisode CoreData schema have Preserve After Deletion check enabled. Offending tombstone: %s", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v33);
    MEMORY[0x1DA72CB90](v33, -1, -1);
    MEMORY[0x1DA72CB90](v32, -1, -1);

    (*(v6 + 8))(v9, v5);
    result = MEMORY[0x1E69E7CC0];
  }

  else
  {

    (*(v6 + 8))(v9, v5);
    result = MEMORY[0x1E69E7CC0];
  }

LABEL_24:
  *v49 = result;
  return result;
}

double sub_1D9108378(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, char *a5, void *a6, char **a7)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v13 = sub_1D8DA6664(a3, a6);
    v14 = a6;

    v16 = sub_1D8DA6894(v15, v14, a4);

    *a7 = v13;
    a7[1] = v16;
    a7[2] = a5;
  }

  return result;
}

void sub_1D9108464(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v48 = *MEMORY[0x1E69E9840];
  v8 = sub_1D917744C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a1;
  v37 = 0;
  v14 = [a2 existingObjectWithID:v13 error:{&v37, v10}];
  v15 = v37;
  if (v14)
  {
    v16 = v14;
    objc_opt_self();
    v17 = swift_dynamicCastObjCClass();
    if (v17)
    {
      v18 = v17;
      v19 = v15;
      v20 = MTEpisode.allEpisodeStateIdentifiers.getter();
      sub_1D91054D8(&v37, v18, v20);
      v45 = v40;
      v46 = v41;
      *v47 = *v42;
      *&v47[15] = *&v42[15];
      v43 = v38;
      v44 = v39;
      if (v37)
      {
        *a3 = v37;
      }

      else
      {
        *a3 = 0;
      }

      v34 = v46;
      *(a3 + 40) = v45;
      *(a3 + 56) = v34;
      *(a3 + 72) = *v47;
      *(a3 + 87) = *&v47[15];
      v35 = v44;
      *(a3 + 8) = v43;
      *(a3 + 24) = v35;
      return;
    }

    v23 = v15;
  }

  else
  {
    v21 = v37;
    v22 = sub_1D9176A6C();

    swift_willThrow();
    v4 = 0;
  }

  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v24 = __swift_project_value_buffer(v8, qword_1ECAAFC48);
  swift_beginAccess();
  (*(v9 + 16))(v12, v24, v8);
  v25 = v13;
  v26 = sub_1D917741C();
  v27 = sub_1D9178CFC();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v36[1] = v4;
    v30 = v9;
    v31 = v29;
    *v28 = 138412290;
    *(v28 + 4) = v25;
    *v29 = v25;
    v32 = v25;
    _os_log_impl(&dword_1D8CEC000, v26, v27, "Cannot fetch inserted MTEpisode entity for %@. This might be an episode that has been inserted and then deleted in an upcoming change.", v28, 0xCu);
    sub_1D8D08A50(v31, &unk_1ECAB6C70, &unk_1D9188C30);
    v33 = v31;
    v9 = v30;
    MEMORY[0x1DA72CB90](v33, -1, -1);
    MEMORY[0x1DA72CB90](v28, -1, -1);
  }

  (*(v9 + 8))(v12, v8);
  *(a3 + 75) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
}

double sub_1D9108800@<D0>(void **a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v80[1] = *MEMORY[0x1E69E9840];
  v8 = sub_1D917744C();
  v9 = *(v8 - 1);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v64 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v64 - v14;
  v16 = *a1;
  v69 = 0;
  v17 = [a2 existingObjectWithID:v16 error:{&v69, v13}];
  v18 = v69;
  if (!v17)
  {
    v29 = v69;
    v30 = sub_1D9176A6C();

    swift_willThrow();
LABEL_7:
    if (qword_1ECAAFC40 != -1)
    {
      swift_once();
    }

    v32 = __swift_project_value_buffer(v8, qword_1ECAAFC48);
    swift_beginAccess();
    (*(v9 + 16))(v11, v32, v8);
    v33 = v16;

    v34 = sub_1D917741C();
    v35 = sub_1D9178CFC();

    if (os_log_type_enabled(v34, v35))
    {
      v67 = v9;
      v66 = v8;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v75 = v38;
      *v36 = 138412546;
      *(v36 + 4) = v33;
      *v37 = v33;
      *(v36 + 12) = 2080;
      v39 = *(a3 + 16);
      v40 = v33;
      if (v39 && (sub_1D8D698BC(v40), (v41 & 1) != 0))
      {
      }

      else
      {
        v42 = 0;
      }

      v80[0] = v42;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA940, &unk_1D91B9180);
      v43 = sub_1D917826C();
      v45 = sub_1D8CFA924(v43, v44, &v75);

      *(v36 + 14) = v45;
      _os_log_impl(&dword_1D8CEC000, v34, v35, "Cannot fetch updated MTEpisode entity for %@; properties reported as updates: %s. This might be an episode that has been updated and then deleted in an upcoming change.", v36, 0x16u);
      sub_1D8D08A50(v37, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v37, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v38);
      MEMORY[0x1DA72CB90](v38, -1, -1);
      MEMORY[0x1DA72CB90](v36, -1, -1);

      (*(v67 + 8))(v11, v66);
    }

    else
    {

      (*(v9 + 8))(v11, v8);
    }

    goto LABEL_16;
  }

  v19 = v17;
  objc_opt_self();
  v20 = swift_dynamicCastObjCClass();
  if (!v20)
  {
    v31 = v18;

    goto LABEL_7;
  }

  v21 = v20;
  v67 = v9;
  v22 = v18;
  v23 = v19;
  v24 = MTEpisode.allEpisodeStateIdentifiers.getter();
  sub_1D91054D8(&v69, v21, v24);
  v25 = v69;
  v77 = v72;
  v78 = v73;
  v79[0] = *v74;
  *(v79 + 15) = *&v74[15];
  v75 = v70;
  v76 = v71;
  if (v69)
  {

    *a4 = v25;
    v26 = v78;
    *(a4 + 40) = v77;
    *(a4 + 56) = v26;
    *(a4 + 72) = v79[0];
    *(a4 + 87) = *(v79 + 15);
    result = *&v75;
    v28 = v76;
    *(a4 + 8) = v75;
    *(a4 + 24) = v28;
    return result;
  }

  if (qword_1ECAAFC40 != -1)
  {
    swift_once();
  }

  v46 = __swift_project_value_buffer(v8, qword_1ECAAFC48);
  swift_beginAccess();
  v47 = v67;
  (*(v67 + 16))(v15, v46, v8);
  v48 = v8;
  v49 = v16;

  v50 = sub_1D917741C();
  v51 = sub_1D9178CFC();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v66 = swift_slowAlloc();
    v80[0] = v66;
    *v52 = 138412546;
    *(v52 + 4) = v49;
    v65 = v53;
    *v53 = v49;
    *(v52 + 12) = 2080;
    v54 = *(a3 + 16);
    v55 = v49;
    if (v54)
    {
      sub_1D8D698BC(v55);
      v56 = v48;
      if (v57)
      {
      }

      else
      {
        v58 = 0;
      }
    }

    else
    {
      v58 = 0;
      v56 = v48;
    }

    v68 = v58;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA940, &unk_1D91B9180);
    v59 = sub_1D917826C();
    v61 = sub_1D8CFA924(v59, v60, v80);

    *(v52 + 14) = v61;
    _os_log_impl(&dword_1D8CEC000, v50, v51, "The MTEpisode entity for %@ does not have any ID at all. We can do nothing with it. This was originally reported as a crash in rdar://79831648. Now we handle this weird condition by skipping this update. These are the reported updated properties: %s.", v52, 0x16u);
    v62 = v65;
    sub_1D8D08A50(v65, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v62, -1, -1);
    v63 = v66;
    __swift_destroy_boxed_opaque_existential_1Tm(v66);
    MEMORY[0x1DA72CB90](v63, -1, -1);
    MEMORY[0x1DA72CB90](v52, -1, -1);

    (*(v67 + 8))(v15, v56);
  }

  else
  {

    (*(v47 + 8))(v15, v48);
  }

LABEL_16:
  result = 0.0;
  *(a4 + 75) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0u;
  *a4 = 0u;
  return result;
}

void sub_1D9108F18(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1DA72A940](a1, a2, v7);
      type metadata accessor for MTCategory();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for MTCategory();
    if (sub_1D917933C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D917934C();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_1D917913C();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_1D917914C();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

void sub_1D9109118(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
{
  v10 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v11 = a4;
      }

      else
      {
        v11 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x1DA72A940](a1, a2, v11);
      sub_1D8CF2154(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_1D8CF2154(0, a5, a6);
    if (sub_1D917933C() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_1D917934C();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_1D917913C();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_1D917914C();

        if (v16)
        {
          goto LABEL_19;
        }

        v10 = (v10 + 1) & v14;
      }

      while (((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    __break(1u);
  }

  if ((v10 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v10)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v10 >> 6) + 56) >> v10) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v17 = *(*(a4 + 48) + 8 * v10);

  v18 = v17;
}

uint64_t EpisodeStateRepository.__allocating_init(episodeStatePersistentHistoryTracker:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v3 = [objc_opt_self() sharedInstance];
  v4 = [v3 storeContext];

  *(v2 + 16) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA958, &unk_1D91B9210);
  swift_allocObject();
  v5 = sub_1D91778DC();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = v5;
  *(v2 + 48) = -1;
  v6 = OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository____lazy_storage___signpostID;
  v7 = sub_1D917734C();
  (*(*(v7 - 8) + 56))(v2 + v6, 1, 1, v7);
  *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository_episodeStatePersistentHistoryTracker) = a1;
  return v2;
}

uint64_t sub_1D9109454@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6DE0, &qword_1D9195250);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v14 - v7;
  v9 = OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository____lazy_storage___signpostID;
  swift_beginAccess();
  sub_1D8D25D6C(v1 + v9, v8);
  v10 = sub_1D917734C();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) != 1)
  {
    return (*(v11 + 32))(a1, v8, v10);
  }

  sub_1D8D25DDC(v8);
  if (qword_1EDCD0728 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v12 = qword_1EDCD0730;

  sub_1D917730C();
  (*(v11 + 16))(v5, a1, v10);
  (*(v11 + 56))(v5, 0, 1, v10);
  swift_beginAccess();
  sub_1D8D25E44(v5, v1 + v9);
  return swift_endAccess();
}

uint64_t EpisodeStateRepository.init(episodeStatePersistentHistoryTracker:)(uint64_t a1)
{
  v2 = v1;
  v4 = [objc_opt_self() sharedInstance];
  v5 = [v4 storeContext];

  *(v2 + 16) = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA958, &unk_1D91B9210);
  swift_allocObject();
  v6 = sub_1D91778DC();
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 24) = v6;
  *(v2 + 48) = -1;
  v7 = OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository____lazy_storage___signpostID;
  v8 = sub_1D917734C();
  (*(*(v8 - 8) + 56))(v2 + v7, 1, 1, v8);
  *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository_episodeStatePersistentHistoryTracker) = a1;
  return v2;
}

uint64_t EpisodeStateRepository.deinit()
{

  sub_1D8DB6BF0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1D8D25DDC(v0 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository____lazy_storage___signpostID);

  return v0;
}

uint64_t EpisodeStateRepository.__deallocating_deinit()
{

  sub_1D8DB6BF0(*(v0 + 32), *(v0 + 40), *(v0 + 48));
  sub_1D8D25DDC(v0 + OBJC_IVAR____TtC18PodcastsFoundation22EpisodeStateRepository____lazy_storage___signpostID);

  return swift_deallocClassInstance();
}

uint64_t sub_1D910986C(uint64_t a1, void *a2, uint64_t a3, int a4, uint64_t a5)
{
  v117 = a4;
  v113 = sub_1D917744C();
  v115 = *(v113 - 8);
  MEMORY[0x1EEE9AC00](v113);
  v112 = &v100[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v100[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v100[-v12];
  v14 = sub_1D917734C();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v114 = &v100[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v106 = v10;
    v105 = v13;
    v116 = a2;
    v110 = v14;
    v19 = sub_1D9178F5C();
    if (qword_1EDCD0728 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v20 = qword_1EDCD0730;
    v21 = v114;
    sub_1D9109454(v114);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
    v23 = swift_allocObject();
    v108 = xmmword_1D9189080;
    *(v23 + 16) = xmmword_1D9189080;
    v121 = v116;
    *&v122 = a3;
    BYTE8(v122) = v117 & 1;
    v109 = a3;
    sub_1D8DB5EC8(v116, a3, v117 & 1);
    v24 = sub_1D917826C();
    v111 = v18;
    v26 = v25;
    *(v23 + 56) = MEMORY[0x1E69E6158];
    v27 = sub_1D8D34978();
    *(v23 + 64) = v27;
    *(v23 + 32) = v24;
    *(v23 + 40) = v26;
    v28 = v111;
    sub_1D91772EC(v19, &dword_1D8CEC000, v20, "EpisodeStateRepository.fetchStateOnDemand", 41, 2, v21, "identifier = %{public}s", 23, 2, v23);

    v29 = v110;
    v107 = *(v15 + 8);
    v107(v21, v110);
    v30 = *(v28 + 16);
    sub_1D8FD43E4();
    v31 = v30;
    v32 = sub_1D917908C();
    v103 = v22;
    v104 = v27;
    v112 = (v15 + 8);

    if (v32 >> 62)
    {
      v33 = sub_1D917935C();
    }

    else
    {
      v33 = *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v34 = v113;
    if (v33)
    {
      v35 = v115;
      if ((v32 & 0xC000000000000001) != 0)
      {
        v36 = MEMORY[0x1DA72AA90](0, v32);
        goto LABEL_10;
      }

      if (*((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v36 = *(v32 + 32);
LABEL_10:
        v37 = v36;

        v38 = v37;
        v39 = MTEpisode.allEpisodeStateIdentifiers.getter();
        sub_1D91054D8(&v121, v38, v39);
        v40 = v121;
        if (v121)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6040, &qword_1D9191FF8);
          v41 = swift_allocObject();
          *(v41 + 16) = v108;
          *(v41 + 32) = v40;
          v42 = v125;
          *(v41 + 72) = v124;
          *(v41 + 88) = v42;
          *(v41 + 104) = *v126;
          *(v41 + 119) = *&v126[15];
          v43 = v123;
          *(v41 + 40) = v122;
          *(v41 + 56) = v43;
          v44 = MEMORY[0x1E69E7CC0];
          v45 = sub_1D8E27B80(MEMORY[0x1E69E7CC0]);
          v118 = v41;
          v119 = v45;
          v120 = v44;

          sub_1D91778BC();

          v46 = sub_1D9178F4C();
          v47 = qword_1EDCD0730;
          sub_1D9109454(v21);
          v48 = swift_allocObject();
          *(v48 + 16) = v108;
          v118 = v116;
          v119 = v109;
          LOBYTE(v120) = v117 & 1;
          sub_1D8DB5EC8(v116, v109, v117 & 1);
          v49 = sub_1D917826C();
          v50 = v104;
          *(v48 + 56) = MEMORY[0x1E69E6158];
          *(v48 + 64) = v50;
          *(v48 + 32) = v49;
          *(v48 + 40) = v51;
          LOBYTE(v99) = 2;
          sub_1D91772EC(v46, &dword_1D8CEC000, v47, "EpisodeStateRepository.fetchStateOnDemand", 41, 2, v21, "identifier = %{public}s", 23, v99, v48);

          v52 = v21;
          v53 = v29;
          return (v107)(v52, v53);
        }

        if (qword_1ECAAFC40 != -1)
        {
          swift_once();
        }

        v68 = __swift_project_value_buffer(v34, qword_1ECAAFC48);
        swift_beginAccess();
        v69 = v105;
        (*(v35 + 16))(v105, v68, v34);
        v70 = v38;
        v71 = sub_1D917741C();
        v72 = sub_1D9178CFC();

        if (os_log_type_enabled(v71, v72))
        {
          v73 = swift_slowAlloc();
          v102 = v73;
          v106 = swift_slowAlloc();
          v118 = v106;
          *v73 = 136380675;
          v74 = v70;
          v75 = [v74 description];
          v76 = sub_1D917820C();
          v101 = v72;
          v77 = v70;
          v78 = v76;
          v80 = v79;

          v81 = v78;
          v70 = v77;
          v82 = sub_1D8CFA924(v81, v80, &v118);

          v83 = v102;
          *(v102 + 1) = v82;
          v29 = v110;
          _os_log_impl(&dword_1D8CEC000, v71, v101, "Can't create an EpisodeStateModel for MTEpisode: %{private}s", v83, 0xCu);
          v84 = v106;
          __swift_destroy_boxed_opaque_existential_1Tm(v106);
          MEMORY[0x1DA72CB90](v84, -1, -1);
          MEMORY[0x1DA72CB90](v83, -1, -1);
        }

        (*(v35 + 8))(v69, v34);
        v85 = MEMORY[0x1E69E6158];
        v86 = sub_1D9178F4C();
        v87 = qword_1EDCD0730;
        sub_1D9109454(v21);
        v88 = swift_allocObject();
        *(v88 + 16) = v108;
        v118 = v116;
        v119 = v109;
        LOBYTE(v120) = v117 & 1;
        sub_1D8DB5EC8(v116, v109, v117 & 1);
        v89 = sub_1D917826C();
        v90 = v104;
        *(v88 + 56) = v85;
        *(v88 + 64) = v90;
        *(v88 + 32) = v89;
        *(v88 + 40) = v91;
        LOBYTE(v99) = 2;
        sub_1D91772EC(v86, &dword_1D8CEC000, v87, "EpisodeStateRepository.fetchStateOnDemand", 41, 2, v21, "identifier = %{public}s", 23, v99, v88);

        v52 = v21;
LABEL_22:
        v53 = v29;
        return (v107)(v52, v53);
      }

      __break(1u);
    }

    else
    {

      v35 = v115;
      if (qword_1ECAAFC40 == -1)
      {
LABEL_13:
        v54 = __swift_project_value_buffer(v34, qword_1ECAAFC48);
        swift_beginAccess();
        v55 = v106;
        (*(v35 + 16))(v106, v54, v34);
        v56 = v117 & 1;
        v57 = v116;
        v58 = v34;
        v59 = v109;
        sub_1D8DB5EC8(v116, v109, v117 & 1);
        v60 = sub_1D917741C();
        v61 = sub_1D9178CFC();
        sub_1D8DB5FC8(v57, v59, v56);
        if (os_log_type_enabled(v60, v61))
        {
          v62 = swift_slowAlloc();
          v63 = swift_slowAlloc();
          v127 = v63;
          *v62 = 136380675;
          v118 = v57;
          v119 = v59;
          LOBYTE(v120) = v56;
          sub_1D8DB5EC8(v57, v59, v56);
          v64 = sub_1D917826C();
          v66 = sub_1D8CFA924(v64, v65, &v127);

          *(v62 + 4) = v66;
          _os_log_impl(&dword_1D8CEC000, v60, v61, "Can't fetch any episode for identifier: %{private}s", v62, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v63);
          v67 = v63;
          v29 = v110;
          MEMORY[0x1DA72CB90](v67, -1, -1);
          MEMORY[0x1DA72CB90](v62, -1, -1);

          (*(v35 + 8))(v55, v113);
        }

        else
        {

          (*(v35 + 8))(v55, v58);
        }

        v92 = sub_1D9178F4C();
        v93 = qword_1EDCD0730;
        v94 = v114;
        sub_1D9109454(v114);
        v95 = swift_allocObject();
        *(v95 + 16) = v108;
        v118 = v57;
        v119 = v59;
        LOBYTE(v120) = v117 & 1;
        sub_1D8DB5EC8(v57, v59, v117 & 1);
        v96 = sub_1D917826C();
        v97 = v104;
        *(v95 + 56) = MEMORY[0x1E69E6158];
        *(v95 + 64) = v97;
        *(v95 + 32) = v96;
        *(v95 + 40) = v98;
        LOBYTE(v99) = 2;
        sub_1D91772EC(v92, &dword_1D8CEC000, v93, "EpisodeStateRepository.fetchStateOnDemand", 41, 2, v94, "identifier = %{public}s", 23, v99, v95);

        v52 = v94;
        goto LABEL_22;
      }
    }

    swift_once();
    goto LABEL_13;
  }

  return result;
}

uint64_t sub_1D910A730(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v24 = *(a1 + 16);
  sub_1D8E31320(0, v1, 0);
  v2 = v25;
  v4 = a1 + 56;
  result = sub_1D91792DC();
  v6 = v24;
  v7 = 0;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v9 = result >> 6;
    v10 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(*(a1 + 48) + 8 * result);
    v12 = *(a1 + 36);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = *(a1 + 36);
      v23 = result;
      sub_1D8E31320((v13 > 1), v14 + 1, 1);
      v6 = v24;
      v12 = v22;
      result = v23;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v11 & ~(v11 >> 63);
    v8 = 1 << *(a1 + 32);
    if (result >= v8)
    {
      goto LABEL_22;
    }

    v15 = *(v4 + 8 * v9);
    if ((v15 & v10) == 0)
    {
      goto LABEL_23;
    }

    if (v12 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v8 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v9 << 6;
      v18 = v9 + 1;
      v19 = (a1 + 64 + 8 * v9);
      while (v18 < (v8 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1D8D9B144(result, v12, 0);
          v6 = v24;
          v8 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1D8D9B144(result, v12, 0);
      v6 = v24;
    }

LABEL_4:
    ++v7;
    result = v8;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1D910A950(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_delegate);
  swift_beginAccess();
  *v4 = v2;
  v4[1] = v3;
  swift_unknownObjectRetain();
  return swift_unknownObjectRelease();
}

uint64_t sub_1D910AA6C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9177E0C();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v35 = *(v6 - 8);
  v36 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D910A730(a1);
  v9 = *(v8 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v11 = (v8 + 32);
    do
    {
      v15 = *v11++;
      v14 = v15;
      if (v15)
      {
        v16 = v14 == 1000000000000;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        aBlock[0] = v10;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D8E31320(0, *(v10 + 16) + 1, 1);
          v10 = aBlock[0];
        }

        v13 = *(v10 + 16);
        v12 = *(v10 + 24);
        if (v13 >= v12 >> 1)
        {
          sub_1D8E31320((v12 > 1), v13 + 1, 1);
          v10 = aBlock[0];
        }

        *(v10 + 16) = v13 + 1;
        *(v10 + 8 * v13 + 32) = v14;
      }

      --v9;
    }

    while (v9);
  }

  v18 = sub_1D8FC0E84(v10);

  v20 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_lock);
  MEMORY[0x1EEE9AC00](v19);
  *(&v33 - 2) = v2;
  *(&v33 - 1) = v18;
  MEMORY[0x1EEE9AC00](v21);
  *(&v33 - 2) = sub_1D910B43C;
  *(&v33 - 1) = v22;
  os_unfair_lock_lock(v20 + 4);
  sub_1D8D40CF8(aBlock);
  os_unfair_lock_unlock(v20 + 4);

  v23 = aBlock[0];
  v24 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_delegate);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  v27 = swift_allocObject();
  v27[2] = v26;
  v27[3] = v25;
  v27[4] = v23;
  aBlock[4] = sub_1D910B458;
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_92;
  v28 = _Block_copy(aBlock);
  swift_unknownObjectRetain_n();
  v29 = v34;
  sub_1D9177E4C();
  v40 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v30 = v37;
  v31 = v39;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v29, v30, v28);
  _Block_release(v28);
  swift_unknownObjectRelease();
  (*(v38 + 8))(v30, v31);
  (*(v35 + 8))(v29, v36);
}

uint64_t sub_1D910AED8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(a1 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_currentlyAddingShows);
  *(a1 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_currentlyAddingShows) = a2;
  v7 = v5;
  swift_bridgeObjectRetain_n();
  result = sub_1D910B2B0(a2);
  *a3 = v7;
  return result;
}

uint64_t sub_1D910AF48(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    v5 = *(a3 + 16);
    if (v5)
    {
      v6 = sub_1D8D1B584(*(a3 + 16), 0);
      v9 = sub_1D8D1B614(&v10, v6 + 4, v5, a3);
      v7 = v10;

      result = sub_1D8E358FC(v7);
      if (v9 != v5)
      {
        __break(1u);
        return result;
      }
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    ObjectType = swift_getObjectType();
    (*(a2 + 8))(v6, ObjectType, a2);
  }

  return result;
}

id AddingPodcastStateDataSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AddingPodcastStateDataSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AddingPodcastStateDataSource();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

double AddingPodcastStateDataSource.state(for:)@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation28AddingPodcastStateDataSource_lock);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1BE70(v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

void AddingPodcastStateDataSource.state(for:)(void *a1@<X8>)
{
  *a1 = 0;
  a1[1] = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[2] = 3;
}

uint64_t sub_1D910B2B0(uint64_t result)
{
  v2 = result;
  v3 = 0;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1D910F060(v11))
  {
LABEL_11:
    while (1)
    {
      v10 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v11 = *(*(v2 + 48) + ((v3 << 9) | (8 * v10)));
      v12 = *v1;
      if (*(*v1 + 16))
      {
        sub_1D9179DBC();
        MEMORY[0x1DA72B3C0](v11);
        v13 = sub_1D9179E1C();
        v14 = -1 << *(v12 + 32);
        v15 = v13 & ~v14;
        if ((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15))
        {
          break;
        }
      }

LABEL_6:
      result = sub_1D8D1A770(v17, v11);
      if (!v7)
      {
        goto LABEL_7;
      }
    }

    v16 = ~v14;
    while (*(*(v12 + 48) + 8 * v15) != v11)
    {
      v15 = (v15 + 1) & v16;
      if (((*(v12 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
      return result;
    }

    if (v9 >= i)
    {
      break;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_11;
    }
  }
}

uint64_t DefaultPodcastStateDataSource.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  swift_unknownObjectWeakInit();
  return v0;
}

uint64_t (*sub_1D910B5CC(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D910B660;
}

uint64_t DefaultPodcastStateDataSource.__deallocating_deinit()
{
  sub_1D8EB07F4(v0 + 16);

  return swift_deallocClassInstance();
}

uint64_t (*sub_1D910B6BC(uint64_t *a1))()
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
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D910B8D8;
}

void sub_1D910B750(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t dispatch thunk of DefaultPodcastStateDataSource.state(for:)()
{
  return (*(*v0 + 128))();
}

{
  return (*(*v0 + 136))();
}

uint64_t sub_1D910B8DC(uint64_t a1, __int16 a2)
{
  v2 = a2;
  sub_1D9179DBC();
  sub_1D9179DDC();
  if ((v2 & 1) == 0)
  {
    MEMORY[0x1DA72B3C0](a1);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D910B9FC(uint64_t a1)
{
  if (*(v1 + 8) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v2 = *v1;
    sub_1D9179DDC();
    MEMORY[0x1DA72B3C0](v2);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D910BAF8(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1D9179DBC();
  sub_1D9179DDC();
  if (v3 != 1)
  {
    MEMORY[0x1DA72B3C0](v2);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

uint64_t sub_1D910BBFC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  if (v4)
  {
    if (!v6)
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  return sub_1D8FDCBC4(v5, v7);
}

uint64_t LibraryInterestStateDataSource.delegate.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D18F10(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

double sub_1D910BCA4@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(*a1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1B980(&v5);
  os_unfair_lock_unlock(v3 + 4);
  result = *&v5;
  *a2 = v5;
  return result;
}

uint64_t sub_1D910BD18(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v2 + 4);
  sub_1D8D04F5C(v3);
  os_unfair_lock_unlock(v2 + 4);
  return swift_unknownObjectRelease();
}

uint64_t LibraryInterestStateDataSource.delegate.setter(uint64_t a1)
{
  v2 = *(v1 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1D8D04F40(v3);
  os_unfair_lock_unlock(v2 + 4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D910BE18(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D9177E0C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D9177E9C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  a1[7] = a3;
  result = swift_unknownObjectWeakAssign();
  if (a2)
  {
    if (a1[5])
    {
      v15 = a1[2];
      aBlock[4] = sub_1D910DB0C;
      aBlock[5] = a1;
      v20 = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8CF5F60;
      aBlock[3] = &block_descriptor_93;
      v19 = v10;
      v18 = _Block_copy(aBlock);

      sub_1D9177E4C();
      aBlock[7] = MEMORY[0x1E69E7CC0];
      v17 = sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
      sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
      sub_1D91792CC();
      v16 = v18;
      MEMORY[0x1DA72A400](0, v13, v9, v18);
      _Block_release(v16);
      (*(v7 + 8))(v9, v6);
      (*(v11 + 8))(v13, v19);
    }
  }

  return result;
}

void (*LibraryInterestStateDataSource.delegate.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v5 + 4);
  sub_1D8D1B980(&v7);
  *(v4 + 32) = 0;
  os_unfair_lock_unlock(v5 + 4);
  *v4 = v7;
  return sub_1D910C1F0;
}

void sub_1D910C1F0(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v3 + 4);
    sub_1D8D04F5C(v4);
    os_unfair_lock_unlock(v3 + 4);
    swift_unknownObjectRelease();
  }

  else
  {
    os_unfair_lock_lock(v3 + 4);
    sub_1D8D04F5C(v5);
    os_unfair_lock_unlock(v3 + 4);
  }

  swift_unknownObjectRelease();
  free(v2);
}

void *LibraryInterestStateDataSource.__allocating_init(contextProvider:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D910D2D8(a1);
  swift_unknownObjectRelease();
  return v2;
}

void *LibraryInterestStateDataSource.init(contextProvider:)(void *a1)
{
  v1 = sub_1D910D2D8(a1);
  swift_unknownObjectRelease();
  return v1;
}

id sub_1D910C364@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 adamID];
  result = [a1 interestValue];
  if (v6 == 1.0)
  {
    v7 = 2;
  }

  else
  {
    v7 = 3;
  }

  if (v6 == 0.0)
  {
    v8 = 1;
  }

  else
  {
    v8 = v7;
  }

  if (v6 == -1.0)
  {
    v8 = 0;
  }

  *a2 = v4;
  *(a2 + 8) = v8 << 8;
  return result;
}

uint64_t sub_1D910C3E8(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 9);
  v6 = *(a2 + 8);
  v7 = *(a2 + 9);
  if (v4)
  {
    if (!v6)
    {
      return 1;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v9 = v6;
    }

    else
    {
      v9 = 1;
    }

    if (v9)
    {
      return 1;
    }
  }

  return (sub_1D8FDCBC4(v5, v7) ^ 1) & 1;
}

void sub_1D910C44C(uint64_t *a2@<X8>)
{

  v4 = sub_1D8FC1374(v3);

  *a2 = v4;
}

void sub_1D910C494(uint64_t a1)
{
  v3 = sub_1D9177F1C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1D9177F4C();
  v10 = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    v11 = *(v1 + 24);
    MEMORY[0x1EEE9AC00](v10);
    *(&v14 - 2) = v1;
    *(&v14 - 1) = a1;
    MEMORY[0x1EEE9AC00](v12);
    *(&v14 - 2) = sub_1D910DAF0;
    *(&v14 - 1) = v13;
    os_unfair_lock_lock(v11 + 4);
    sub_1D8DA3D30(&v15);
    os_unfair_lock_unlock(v11 + 4);
    sub_1D910C9F0(v15);
  }

  else
  {
    __break(1u);
  }
}

void sub_1D910C644(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v42 = MEMORY[0x1E69E7CD0];
  v5 = *(a1 + 64);
  if (*(a2 + 16) <= *(v5 + 16) >> 3)
  {
    v40 = *(a1 + 64);

    sub_1D910E7E8(a2);
    v6 = v5;
  }

  else
  {

    v6 = sub_1D90A582C(a2, v5);
  }

  v7 = 0;
  v8 = 1 << *(v6 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v6 + 56);
  v11 = (v8 + 63) >> 6;
  while (v10)
  {
LABEL_14:
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v14 = *(v6 + 48) + ((v7 << 10) | (16 * v13));
    if ((*(v14 + 8) & 1) == 0)
    {
      v15 = *v14;
      sub_1D8D1A770(&v40, *v14);
      swift_beginAccess();
      v16 = sub_1D8D1AC44(v15);
      if (v17)
      {
        v18 = v16;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v20 = *(a1 + 72);
        v41 = v20;
        *(a1 + 72) = 0x8000000000000000;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1D8F85C98();
          v20 = v41;
        }

        sub_1D8F815BC(v18, v20);
        *(a1 + 72) = v20;
      }

      swift_endAccess();
    }
  }

  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      v21 = *(a1 + 64);
      if (*(v21 + 16) <= *(a2 + 16) >> 3)
      {
        v40 = a2;

        sub_1D910E7E8(v21);

        v22 = v40;
      }

      else
      {

        v22 = sub_1D90A582C(v21, a2);
      }

      v23 = 0;
      v24 = 1 << *(v22 + 32);
      v25 = -1;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      v26 = v25 & *(v22 + 56);
      v27 = (v24 + 63) >> 6;
      while (v26)
      {
LABEL_29:
        v29 = __clz(__rbit64(v26));
        v26 &= v26 - 1;
        v30 = *(v22 + 48) + ((v23 << 10) | (16 * v29));
        if ((*(v30 + 8) & 1) == 0)
        {
          v31 = *v30;
          v32 = *(v30 + 9);
          sub_1D8D1A770(&v40, *v30);
          swift_beginAccess();
          v33 = swift_isUniquelyReferenced_nonNull_native();
          v41 = *(a1 + 72);
          *(a1 + 72) = 0x8000000000000000;
          sub_1D8F51520(v32, v31, v33);
          *(a1 + 72) = v41;
          swift_endAccess();
        }
      }

      while (1)
      {
        v28 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          goto LABEL_37;
        }

        if (v28 >= v27)
        {
          break;
        }

        v26 = *(v22 + 56 + 8 * v28);
        ++v23;
        if (v26)
        {
          v23 = v28;
          goto LABEL_29;
        }
      }

      *(a1 + 64) = a2;

      v34 = v42;
      v35 = *(v42 + 16);
      if (v35)
      {
        v36 = sub_1D8D1B584(*(v42 + 16), 0);
        v37 = sub_1D8D1B614(&v40, v36 + 4, v35, v34);
        sub_1D8D1B144(v40);
        if (v37 != v35)
        {
          __break(1u);
          goto LABEL_34;
        }
      }

      else
      {
LABEL_34:

        v36 = MEMORY[0x1E69E7CC0];
      }

      *a3 = v36;
      return;
    }

    v10 = *(v6 + 56 + 8 * v12);
    ++v7;
    if (v10)
    {
      v7 = v12;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
}

void sub_1D910C9F0(uint64_t a1)
{
  v3 = sub_1D9177F1C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v14[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(v1 + 16);
  *v7 = v8;
  (*(v4 + 104))(v7, *MEMORY[0x1E69E8020], v3, v5);
  v9 = v8;
  LOBYTE(v8) = sub_1D9177F4C();
  v10 = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (*(a1 + 16))
    {
      v11 = *(v1 + 24);
      MEMORY[0x1EEE9AC00](v10);
      *&v14[-16] = sub_1D8D1B9B0;
      *&v14[-8] = v1;
      os_unfair_lock_lock(v11 + 4);
      sub_1D8D1B980(&v15);
      os_unfair_lock_unlock(v11 + 4);
      if (v15)
      {
        v12 = *(&v15 + 1);
        ObjectType = swift_getObjectType();
        (*(v12 + 8))(a1, ObjectType, v12);
        swift_unknownObjectRelease();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

double sub_1D910CBA4(uint64_t a1)
{
  v1 = *(a1 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8F58B40(&v3);
  os_unfair_lock_unlock(v1 + 4);
  sub_1D910C9F0(v3);

  return result;
}

uint64_t sub_1D910CC24@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = swift_beginAccess();
  v6 = *(a1 + 72);
  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_5:
    *a2 = v8;
    return result;
  }

  v11[9] = v2;
  v8 = sub_1D8D1B584(v7, 0);
  v9 = sub_1D8DB8018(v11, (v8 + 4), v7, v6);
  v10 = v11[0];

  result = sub_1D8D1B144(v10);
  if (v9 == v7)
  {
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall LibraryInterestStateDataSource.startObservingChanges()()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D04F5C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1D910CD70(uint64_t result)
{
  if (!*(result + 40))
  {
    v1 = result;
    swift_allocObject();
    swift_weakInit();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9A0, &qword_1D91B94D8);
    sub_1D8CF48EC(&qword_1ECAB0350, &qword_1ECABA9A0, &qword_1D91B94D8, MEMORY[0x1E695BED8]);
    v2 = sub_1D9177D9C();

    *(v1 + 40) = v2;
  }

  return result;
}

uint64_t sub_1D910CE88(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D910C494(v2);
  }

  return result;
}

uint64_t LibraryInterestStateDataSource.state(for:)()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D910D918(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1D910CF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a1 + 72);
  if (*(v6 + 16) && (v7 = sub_1D8D1AC44(a2), (v8 & 1) != 0))
  {
    v9 = *(*(v6 + 56) + v7);
  }

  else
  {
    v9 = 4;
  }

  *a3 = v9;
  return swift_endAccess();
}

uint64_t LibraryInterestStateDataSource.deinit()
{

  sub_1D8EB07F4(v0 + 48);

  return v0;
}

uint64_t LibraryInterestStateDataSource.__deallocating_deinit()
{

  sub_1D8EB07F4(v0 + 48);

  return swift_deallocClassInstance();
}

void sub_1D910D098()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D04F5C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1D910D0F8()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D1B980(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1D910D160(uint64_t a1)
{
  v2 = *(v1 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1D8D04F5C(v3);
  os_unfair_lock_unlock(v2 + 4);
  return swift_unknownObjectRelease();
}

void (*sub_1D910D1D8(uint64_t **a1))(void *a1)
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
  v2[4] = LibraryInterestStateDataSource.delegate.modify(v2);
  return sub_1D90FEF80;
}

uint64_t sub_1D910D248()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D910DB48(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

void *sub_1D910D2D8(void *a1)
{
  v2 = v1;
  v30 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9A8, &qword_1D91B94E0);
  v4 = *(v3 - 8);
  v32 = v3;
  v33 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v31 = v28 - v5;
  v29 = sub_1D9178E0C();
  v6 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v8 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D9178D8C();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1D9177E9C();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v28[0] = "expectedInterestStatesByAdamID";
  v28[1] = v11;
  sub_1D9177E4C();
  v34 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B50, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7470, &qword_1D918C0F0);
  sub_1D8CF48EC(&qword_1EDCD7B60, &unk_1ECAB7470, &qword_1D918C0F0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v29);
  v1[2] = sub_1D9178E4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v12 = swift_allocObject();
  *(v12 + 16) = 0;
  v1[3] = v12;
  v1[5] = 0;
  v1[7] = 0;
  swift_unknownObjectWeakInit();
  v13 = MEMORY[0x1E69E7CC8];
  v1[8] = MEMORY[0x1E69E7CD0];
  v1[9] = v13;
  v14 = [objc_opt_self() truePredicate];
  v15 = [v30 importContext];
  v16 = v1[2];
  v17 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v18 = v16;
  v19 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v20 = [v17 initWithEntityName_];

  [v20 setPredicate_];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v21 = sub_1D91785DC();
  [v20 setSortDescriptors_];

  [v20 setFetchBatchSize_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9B0, &qword_1D91B94E8);
  v22 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v23 = swift_allocObject();
  *(v23 + 16) = 0;

  v22[14] = v23;
  v22[2] = 0xD00000000000001ELL;
  v22[3] = 0x80000001D91B9400;
  v22[4] = v20;
  v22[5] = v15;
  v22[6] = v18;
  v22[7] = sub_1D910C364;
  v22[8] = 0;
  v22[9] = sub_1D910C3E8;
  v22[10] = 0;
  v22[11] = sub_1D8D38B78;
  v22[12] = 0;
  v34 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9B8, &qword_1D91B94F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9C0, &qword_1D91B94F8);
  sub_1D8CF48EC(&qword_1ECAB1860, &qword_1ECABA9B8, &qword_1D91B94F0, &protocol conformance descriptor for FetchedResultsListPublisher<A, B>);
  v24 = v31;
  sub_1D9177B9C();

  sub_1D8CF48EC(&qword_1ECAB07D8, &qword_1ECABA9A8, &qword_1D91B94E0, MEMORY[0x1E695BD60]);
  v25 = v32;
  v26 = sub_1D9177B1C();
  (*(v33 + 8))(v24, v25);
  v2[4] = v26;
  return v2;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for LibraryInterestStateDataSource.State(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 10))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 9);
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for LibraryInterestStateDataSource.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 9) = a2 + 3;
    }
  }

  return result;
}

unint64_t sub_1D910DA94()
{
  result = qword_1ECAB1448;
  if (!qword_1ECAB1448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB1448);
  }

  return result;
}

uint64_t sub_1D910DB90(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  if (*(v1 + 24) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    v2 = *(v1 + 16);
    sub_1D9179DDC();
    MEMORY[0x1DA72B3C0](v2);
  }

  v3 = *(v1 + 48);
  switch(v3)
  {
    case 2:
      v4 = 3;
      return MEMORY[0x1DA72B390](v4);
    case 1:
      v4 = 1;
      return MEMORY[0x1DA72B390](v4);
    case 0:
      v4 = 0;
      return MEMORY[0x1DA72B390](v4);
  }

  v6 = *(v1 + 64);
  MEMORY[0x1DA72B390](2);
  sub_1D9179DDC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  sub_1D9179DDC();
  return MEMORY[0x1DA72B3C0](v6);
}

uint64_t sub_1D910DC6C()
{
  v1 = v0[3];
  v7 = v0[2];
  v8 = v1;
  v9 = *(v0 + 8);
  v2 = v0[1];
  v5 = *v0;
  v6 = v2;
  sub_1D9179DBC();
  sub_1D910DB90(v4);
  return sub_1D9179E1C();
}

uint64_t sub_1D910DD0C(uint64_t a1)
{
  v2 = v1[3];
  v8 = v1[2];
  v9 = v2;
  v10 = *(v1 + 8);
  v3 = v1[1];
  v6 = *v1;
  v7 = v3;
  sub_1D9179DBC();
  sub_1D910DB90(v5);
  return sub_1D9179E1C();
}

BOOL sub_1D910DD64(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v7[2] = *(a1 + 32);
  v7[3] = v2;
  v8 = *(a1 + 64);
  v3 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v3;
  v4 = *(a2 + 48);
  v9[2] = *(a2 + 32);
  v9[3] = v4;
  v10 = *(a2 + 64);
  v5 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v5;
  return sub_1D9110788(v7, v9);
}

uint64_t sub_1D910DDC0(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_lock(v2 + 4);
  sub_1D8D04F5C(v3);
  os_unfair_lock_unlock(v2 + 4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D910DE48()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D18F10(&v3);
  os_unfair_lock_unlock(v1 + 4);
  return v3;
}

uint64_t sub_1D910DEB0(uint64_t a1)
{
  v2 = *(v1 + 24);
  os_unfair_lock_lock(v2 + 4);
  sub_1D8D04F40(v3);
  os_unfair_lock_unlock(v2 + 4);
  return swift_unknownObjectRelease();
}

void (*sub_1D910DF28(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(v1 + 24);
  *(v3 + 24) = v5;
  MEMORY[0x1EEE9AC00](v3);
  os_unfair_lock_lock(v5 + 4);
  sub_1D8D1B980(&v7);
  *(v4 + 32) = 0;
  os_unfair_lock_unlock(v5 + 4);
  *v4 = v7;
  return sub_1D910E010;
}

void sub_1D910E010(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 3);
  if (a2)
  {
    swift_unknownObjectRetain();
    os_unfair_lock_lock(v3 + 4);
    sub_1D8D04F5C(v4);
    os_unfair_lock_unlock(v3 + 4);
    swift_unknownObjectRelease();
  }

  else
  {
    os_unfair_lock_lock(v3 + 4);
    sub_1D8D04F5C(v5);
    os_unfair_lock_unlock(v3 + 4);
  }

  swift_unknownObjectRelease();
  free(v2);
}

void *LibraryPodcastStateDataSource.__allocating_init(contextProvider:)(void *a1)
{
  swift_allocObject();
  v2 = sub_1D8D10A70(a1);
  swift_unknownObjectRelease();
  return v2;
}

double sub_1D910E150(uint64_t a1)
{
  v1 = *(a1 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D1B980(&v3);
  os_unfair_lock_unlock(v1 + 4);
  sub_1D8D1B714(v3, *(&v3 + 1));

  return result;
}

uint64_t sub_1D910E1DC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v4 = *(*(a1 + 80) + 16);
  v14 = a2;
  if (v4)
  {
    v5 = sub_1D8D1B418(v4, 0);
    v6 = sub_1D8F0CAD8();

    result = sub_1D8D1B144(v13);
    if (v6 != v4)
    {
      __break(1u);
      goto LABEL_11;
    }

    a2 = v14;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v5;
  result = swift_beginAccess();
  v8 = *(a1 + 72);
  v9 = *(v8 + 16);
  if (!v9)
  {
    v10 = MEMORY[0x1E69E7CC0];
    goto LABEL_9;
  }

  v10 = sub_1D8D1B584(*(v8 + 16), 0);
  v11 = sub_1D8DB8018(&v13, (v10 + 4), v9, v8);
  v12 = v13;

  result = sub_1D8D1B144(v12);
  if (v11 == v9)
  {
    a2 = v14;
LABEL_9:
    a2[1] = v10;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

void sub_1D910E364()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock(v1 + 4);
  sub_1D8D04F5C(v2);
  os_unfair_lock_unlock(v1 + 4);
}

double sub_1D910E3C4@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1BE88(v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

double sub_1D910E444@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 24);
  os_unfair_lock_lock(v3 + 4);
  sub_1D8D1C21C(v7);
  os_unfair_lock_unlock(v3 + 4);
  v4 = v8;
  result = *v7;
  v6 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v6;
  *(a1 + 32) = v4;
  return result;
}

uint64_t LibraryPodcastStateDataSource.deinit()
{

  sub_1D8EB07F4(v0 + 48);

  return v0;
}

uint64_t LibraryPodcastStateDataSource.__deallocating_deinit()
{
  LibraryPodcastStateDataSource.deinit();

  return swift_deallocClassInstance();
}

void (*sub_1D910E554(uint64_t **a1))(void *a1)
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
  v2[4] = sub_1D910DF28(v2);
  return sub_1D90FEF80;
}

void sub_1D910E5C4(uint64_t a1)
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
        sub_1D910E9F4(*(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
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

void sub_1D910E6BC(uint64_t a1)
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

        sub_1D910EAE4(v12, v13);

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

void sub_1D910E7E8(uint64_t a1)
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
        v11 = *(a1 + 48) + ((v9 << 10) | (16 * v10));
        sub_1D910F16C(*v11, *(v11 + 8) | (*(v11 + 9) << 8));
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

void sub_1D910E8FC(uint64_t a1)
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
        sub_1D910F060(*(*(a1 + 48) + ((v9 << 9) | (8 * v10))));
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

uint64_t sub_1D910E9F4(uint64_t a1)
{
  v3 = *v1;
  v4 = sub_1D9179DAC();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D8F0019C();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1D910F890(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1D910EAE4(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1D9179E1C();
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
    if (v11 || (sub_1D9179ACC() & 1) != 0)
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
    sub_1D8F00040();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  sub_1D910FA14(v8);
  *v2 = v16;
  return v12;
}

uint64_t sub_1D910EC20(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_1D917939C();

    if (v6)
    {
      v7 = sub_1D910F728(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  v10 = sub_1D917913C();
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_1D917914C();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D8F002DC();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1D910FBD8(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1D910EDB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D9176EAC();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D8CFD7F8(&qword_1EDCD5920, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v31 = a1;
  v10 = sub_1D917813C();
  v11 = v9 + 56;
  v29 = v9 + 56;
  v30 = v9;
  v12 = -1 << *(v9 + 32);
  v13 = v10 & ~v12;
  if ((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v26 = v2;
    v27 = v6;
    v28 = a2;
    v14 = ~v12;
    v17 = *(v6 + 16);
    v16 = v6 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    while (1)
    {
      v15(v8, *(v30 + 48) + v18 * v13, v5);
      sub_1D8CFD7F8(&qword_1ECAB2C78, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v19 = sub_1D91781BC();
      (*(v16 - 8))(v8, v5);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
      if (((*(v29 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
      {
        v20 = 1;
        v6 = v27;
        a2 = v28;
        return (*(v6 + 56))(a2, v20, 1, v5);
      }
    }

    v21 = v26;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23 = *v21;
    v32 = *v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D8F00430();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1D910FD78(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1D910F060(uint64_t a1)
{
  v3 = *v1;
  sub_1D9179DBC();
  MEMORY[0x1DA72B3C0](a1);
  v4 = sub_1D9179E1C();
  v5 = -1 << *(v3 + 32);
  v6 = v4 & ~v5;
  if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  while (*(*(v3 + 48) + 8 * v6) != a1)
  {
    v6 = (v6 + 1) & v7;
    if (((*(v3 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v1;
  v12 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D8EFFDC0();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  sub_1D9110080(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t sub_1D910F16C(uint64_t a1, __int16 a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1D9179DBC();
  sub_1D9179DDC();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1DA72B3C0](a1);
  }

  v38 = HIBYTE(a2);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v7 = sub_1D9179E1C();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v34 = v2;
  v35 = a1;
  v11 = ~v9;
  v12 = 0x6C61727475656ELL;
  v37 = v6;
  v36 = a2;
  while (1)
  {
    v16 = *(v6 + 48) + 16 * v10;
    v17 = *(v16 + 9);
    if (*(v16 + 8))
    {
      if ((a2 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((a2 & 1) != 0 || *v16 != v35)
    {
      goto LABEL_6;
    }

    v18 = v17 == 2 ? 0x657469726F766166 : 0x6E776F6E6B6E75;
    v19 = v17 == 2 ? 0xE900000000000064 : 0xE700000000000000;
    v20 = v17 ? v12 : 0x4C74736567677573;
    v21 = v17 ? 0xE700000000000000 : 0xEB00000000737365;
    v22 = v17 <= 1 ? v20 : v18;
    v23 = v17 <= 1 ? v21 : v19;
    v24 = v38 == 2 ? 0x657469726F766166 : 0x6E776F6E6B6E75;
    v25 = v38 == 2 ? 0xE900000000000064 : 0xE700000000000000;
    v26 = v38 ? v12 : 0x4C74736567677573;
    v27 = v38 ? 0xE700000000000000 : 0xEB00000000737365;
    v28 = v38 <= 1 ? v26 : v24;
    v29 = v38 <= 1 ? v27 : v25;
    if (v22 == v28 && v23 == v29)
    {
      break;
    }

    v13 = v12;
    v14 = v8;
    v15 = sub_1D9179ACC();

    v12 = v13;
    v8 = v14;
    LOBYTE(a2) = v36;
    v6 = v37;
    if (v15)
    {
      goto LABEL_51;
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

LABEL_51:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *v3;
  v39 = *v3;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D8F00D30();
    v31 = v39;
  }

  v32 = *(*(v31 + 48) + 16 * v10);
  sub_1D9110228(v10);
  result = v32;
  *v34 = v39;
  return result;
}

double sub_1D910F494@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  sub_1D9179DBC();
  sub_1D910DB90(v49);
  v5 = sub_1D9179E1C();
  v6 = v4 + 56;
  v7 = -1 << *(v4 + 32);
  v8 = v5 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
LABEL_35:
    *(a2 + 64) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return result;
  }

  v9 = ~v7;
  v10 = *a1;
  v11 = a1[1];
  v12 = *(v4 + 48);
  v45 = *a1;
  v46 = v11;
  while (1)
  {
    v13 = v12 + 72 * v8;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v16 = *(v13 + 32);
    v17 = *(v13 + 40);
    v18 = *(v13 + 48);
    v47 = *(v13 + 64);
    v48 = *(v13 + 56);
    if (*v13 != v10 || *(v13 + 8) != v11)
    {
      v20 = v9;
      v21 = a1;
      v22 = v6;
      v23 = v12;
      v24 = v8;
      v25 = *(v13 + 32);
      v26 = *(v13 + 16);
      v27 = *(v13 + 24);
      v28 = sub_1D9179ACC();
      v15 = v27;
      v14 = v26;
      LOBYTE(v16) = v25;
      v8 = v24;
      v12 = v23;
      v6 = v22;
      a1 = v21;
      v9 = v20;
      v10 = v45;
      v11 = v46;
      if ((v28 & 1) == 0)
      {
        goto LABEL_4;
      }
    }

    v29 = *(a1 + 24);
    if (v15)
    {
      if (!*(a1 + 24))
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v14 != a1[2])
      {
        v29 = 1;
      }

      if (v29)
      {
        goto LABEL_4;
      }
    }

    v30 = a1[6];
    if (v18)
    {
      break;
    }

    if (!v30)
    {
      goto LABEL_32;
    }

LABEL_4:
    v8 = (v8 + 1) & v9;
    if (((*(v6 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_35;
    }
  }

  if (v18 == 1)
  {
    if (v30 == 1)
    {
      goto LABEL_32;
    }

    goto LABEL_4;
  }

  if (v18 == 2)
  {
    if (v30 == 2)
    {
      goto LABEL_32;
    }

    goto LABEL_4;
  }

  if (v30 < 3 || (a1[4] & 1) != (v16 & 1))
  {
    goto LABEL_4;
  }

  v31 = a1[8];
  v32 = *(a1 + 56);
  if (v17 != a1[5] || v18 != v30)
  {
    v34 = v6;
    v35 = v12;
    v36 = sub_1D9179ACC();
    v12 = v35;
    v6 = v34;
    if ((v36 & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  if (((v32 ^ v48) & 1) != 0 || v47 != v31)
  {
    goto LABEL_4;
  }

LABEL_32:
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *v43;
  v49[0] = *v43;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D8F00E8C();
    v38 = v49[0];
  }

  v39 = *(v38 + 48) + 72 * v8;
  v40 = *(v39 + 48);
  *(a2 + 32) = *(v39 + 32);
  *(a2 + 48) = v40;
  *(a2 + 64) = *(v39 + 64);
  v41 = *(v39 + 16);
  *a2 = *v39;
  *(a2 + 16) = v41;
  sub_1D91104A8(v8);
  *v43 = v49[0];
  return result;
}

uint64_t sub_1D910F728(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1D917935C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1D8EFC150(v5, v4);
  v15 = v6;

  v7 = sub_1D917913C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1D917914C();

      if (v12)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
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

  v13 = *(*(v6 + 48) + 8 * v9);
  sub_1D910FBD8(v9);
  result = sub_1D917914C();
  if (result)
  {
    *v3 = v15;
    return v13;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D910F890(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D91792EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1D9179DAC() & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t sub_1D910FA14(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D91792EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_1D9179DBC();

        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        v10 = sub_1D9179E1C();

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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

unint64_t sub_1D910FBD8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D91792EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1D917913C();

        v12 = v11 & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = *(v3 + 48);
            v16 = (v15 + 8 * v2);
            v17 = (v15 + 8 * v6);
            if (v2 != v6 || v16 >= v17 + 1)
            {
              *v16 = *v17;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
        {
          goto LABEL_16;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

void sub_1D910FD78(int64_t a1)
{
  v3 = sub_1D9176EAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v1;
  v8 = *v1 + 56;
  v9 = -1 << *(*v1 + 32);
  v10 = (a1 + 1) & ~v9;
  if (((1 << v10) & *(v8 + 8 * (v10 >> 6))) != 0)
  {
    v11 = ~v9;

    v12 = sub_1D91792EC();
    if ((*(v8 + 8 * (v10 >> 6)) & (1 << v10)) != 0)
    {
      v13 = v11;
      v14 = (v12 + 1) & v11;
      v34 = *(v4 + 16);
      v35 = v4 + 16;
      v15 = *(v4 + 72);
      v32 = (v4 + 8);
      v33 = v8;
      v16 = v15;
      do
      {
        v17 = v16;
        v18 = v16 * v10;
        v34(v6, *(v7 + 48) + v16 * v10, v3);
        v19 = v7;
        v20 = v14;
        v21 = v13;
        v22 = v19;
        sub_1D8CFD7F8(&qword_1EDCD5920, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v23 = sub_1D917813C();
        (*v32)(v6, v3);
        v24 = v23 & v21;
        v13 = v21;
        v14 = v20;
        if (a1 >= v20)
        {
          if (v24 >= v20 && a1 >= v24)
          {
LABEL_16:
            v7 = v22;
            v27 = *(v22 + 48);
            v16 = v17;
            v28 = v17 * a1;
            if (v17 * a1 < v18 || v27 + v17 * a1 >= (v27 + v18 + v17))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v10;
            }

            else
            {
              a1 = v10;
              if (v28 != v18)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v10;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v24 >= v20 || a1 >= v24)
        {
          goto LABEL_16;
        }

        v7 = v22;
        v16 = v17;
LABEL_5:
        v10 = (v10 + 1) & v13;
        v8 = v33;
      }

      while (((*(v33 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
    }

    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v29 = *(v7 + 16);
  v30 = __OFSUB__(v29, 1);
  v31 = v29 - 1;
  if (v30)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v31;
    ++*(v7 + 36);
  }
}

unint64_t sub_1D9110080(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D91792EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_1D9179DBC();
        MEMORY[0x1DA72B3C0](v10);
        v11 = sub_1D9179E1C() & v7;
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
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

unint64_t sub_1D9110228(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D91792EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = 16 * v6;
        v11 = *(v3 + 48) + 16 * v6;
        v12 = *v11;
        v13 = *(v11 + 8);
        sub_1D9179DBC();
        sub_1D9179DDC();
        if (v13 != 1)
        {
          MEMORY[0x1DA72B3C0](v12);
        }

        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

        v14 = sub_1D9179E1C() & v7;
        if (v2 >= v9)
        {
          if (v14 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v14 >= v9)
        {
          goto LABEL_13;
        }

        if (v2 >= v14)
        {
LABEL_13:
          v15 = *(v3 + 48);
          v16 = (v15 + 16 * v2);
          v17 = (v15 + v10);
          if (16 * v2 != v10 || (v2 = v6, v16 >= v17 + 1))
          {
            *v16 = *v17;
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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
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

  return result;
}

unint64_t sub_1D91104A8(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D91792EC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      v25 = v4;
      do
      {
        v10 = *(v3 + 48) + 72 * v6;
        v12 = *(v10 + 32);
        v11 = *(v10 + 48);
        v13 = *(v10 + 16);
        v32 = *(v10 + 64);
        v30 = v12;
        v31 = v11;
        v28 = *v10;
        v29 = v13;
        sub_1D9179DBC();
        sub_1D8D1808C(&v28, v27);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        if (BYTE8(v29) == 1)
        {
          sub_1D9179DDC();
          v14 = v31;
          if (!v31)
          {
            goto LABEL_12;
          }
        }

        else
        {
          v16 = v29;
          sub_1D9179DDC();
          MEMORY[0x1DA72B3C0](v16);
          v14 = v31;
          if (!v31)
          {
LABEL_12:
            v15 = 0;
            goto LABEL_14;
          }
        }

        if (v14 == 1)
        {
          v15 = 1;
          goto LABEL_14;
        }

        if (v14 == 2)
        {
          v15 = 3;
LABEL_14:
          MEMORY[0x1DA72B390](v15);
          goto LABEL_16;
        }

        v26 = v32;
        MEMORY[0x1DA72B390](2);
        sub_1D9179DDC();
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        v4 = v25;
        sub_1D9179DDC();
        MEMORY[0x1DA72B3C0](v26);
LABEL_16:
        v17 = sub_1D9179E1C();
        sub_1D8D183D4(&v28);
        v18 = v17 & v7;
        if (v2 >= v9)
        {
          if (v18 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v18 >= v9)
        {
          goto LABEL_21;
        }

        if (v2 >= v18)
        {
LABEL_21:
          v19 = *(v3 + 48);
          v20 = (v19 + 72 * v2);
          v21 = (v19 + 72 * v6);
          if (v2 != v6 || v20 >= v21 + 72)
          {
            memmove(v20, v21, 0x48uLL);
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
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v22 = *(v3 + 16);
  v23 = __OFSUB__(v22, 1);
  v24 = v22 - 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v24;
    ++*(v3 + 36);
  }

  return result;
}

BOOL sub_1D9110788(uint64_t *a1, uint64_t a2)
{
  v4 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (!v4 && (sub_1D9179ACC() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 24);
  if (a1[3])
  {
    if (!*(a2 + 24))
    {
      return 0;
    }
  }

  else
  {
    if (a1[2] != *(a2 + 16))
    {
      v5 = 1;
    }

    if (v5)
    {
      return 0;
    }
  }

  v6 = a1[6];
  v7 = *(a2 + 48);
  if (v6 == 2)
  {
    return v7 == 2;
  }

  if (v6 == 1)
  {
    return v7 == 1;
  }

  if (v6)
  {
    if (v7 < 3 || ((*(a1 + 32) ^ *(a2 + 32)) & 1) != 0)
    {
      return 0;
    }

    v9 = a1[5];
    v10 = *(a1 + 56);
    v11 = a1[8];
    v12 = *(a2 + 40);
    v13 = *(a2 + 64);
    v14 = *(a2 + 56);
    if ((v9 != v12 || v6 != v7) && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }

    return ((v10 ^ v14) & 1) == 0 && v11 == v13;
  }

  return !v7;
}

uint64_t dispatch thunk of LibraryPodcastStateDataSource.state(for:)()
{
  return (*(*v0 + 328))();
}

{
  return (*(*v0 + 336))();
}

uint64_t sub_1D91109D8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABA9C8, &qword_1D91B9658);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D9110A64()
{
  result = qword_1EDCD09C8;
  if (!qword_1EDCD09C8)
  {
    sub_1D8CF2154(255, &qword_1EDCD09D0, 0x1E695D630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD09C8);
  }

  return result;
}

uint64_t sub_1D9110ACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D9110B20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a2;
  v74 = a5;
  v68 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v68);
  v67 = &v62 - v8;
  v66 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v62 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v62 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v69 = &v62 - v14;
  v64 = sub_1D9176EAC();
  v75 = a4;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v16 = sub_1D91791BC();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v62 - v18;
  v20 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v62 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v70 = &v62 - v25;
  v73 = a1;
  v76 = a1;
  sub_1D91786FC();
  sub_1D8D4D2D8();
  v71 = a3;
  sub_1D91780FC();
  if (!v77)
  {
    goto LABEL_4;
  }

  swift_getWitnessTable();
  sub_1D917816C();
  if ((*(v20 + 48))(v19, 1, TupleTypeMetadata2) == 1)
  {
    (*(v17 + 8))(v19, v16);

LABEL_4:
    v26 = v73;
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v27 = sub_1D917744C();
    __swift_project_value_buffer(v27, qword_1ECAB77F8);

    v28 = sub_1D917741C();
    v29 = sub_1D9178D1C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v76 = v26;
      v77 = v31;
      *v30 = 136315394;
      sub_1D8E40A10();
      v32 = sub_1D9179A4C();
      v34 = sub_1D8CFA924(v32, v33, &v77);

      *(v30 + 4) = v34;
      *(v30 + 12) = 2080;
      v76 = v26;
      sub_1D91780FC();
      v35 = sub_1D917826C();
      v37 = sub_1D8CFA924(v35, v36, &v77);

      *(v30 + 14) = v37;
      _os_log_impl(&dword_1D8CEC000, v28, v29, "[StateCache] state for %s (consolidated) -> %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v31, -1, -1);
      MEMORY[0x1DA72CB90](v30, -1, -1);
    }

    v77 = v26;
    return sub_1D91780FC();
  }

  v39 = v70;
  (*(v20 + 32))(v70, v19, TupleTypeMetadata2);

  v72 = v20;
  (*(v20 + 16))(v23, v39, TupleTypeMetadata2);
  v40 = v66;
  v41 = *(v66 + 32);
  v42 = &v23[*(TupleTypeMetadata2 + 48)];
  v43 = v69;
  v44 = v75;
  v71 = v66 + 32;
  v68 = v41;
  v41(v69, v42, v75);
  (*(*(v64 - 8) + 8))(v23);
  if (qword_1ECAB34E8 != -1)
  {
    swift_once();
  }

  v45 = sub_1D917744C();
  __swift_project_value_buffer(v45, qword_1ECAB77F8);
  v46 = *(v40 + 16);
  v47 = v65;
  v46(v65, v43, v44);
  v48 = sub_1D917741C();
  v49 = sub_1D9178D1C();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    v51 = swift_slowAlloc();
    v67 = v51;
    *v50 = 136315394;
    v76 = v73;
    v77 = v51;
    sub_1D8E40A10();
    v52 = sub_1D9179A4C();
    v54 = sub_1D8CFA924(v52, v53, &v77);

    *(v50 + 4) = v54;
    *(v50 + 12) = 2080;
    v46(v63, v47, v75);
    v55 = sub_1D917826C();
    v57 = v56;
    (*(v40 + 8))(v47, v75);
    v58 = sub_1D8CFA924(v55, v57, &v77);

    *(v50 + 14) = v58;
    v44 = v75;
    _os_log_impl(&dword_1D8CEC000, v48, v49, "[StateCache] state for %s (in-flight) -> %s", v50, 0x16u);
    v59 = v67;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v59, -1, -1);
    v60 = v50;
    v43 = v69;
    MEMORY[0x1DA72CB90](v60, -1, -1);
  }

  else
  {

    (*(v40 + 8))(v47, v44);
  }

  (*(v72 + 8))(v70, TupleTypeMetadata2);
  v61 = v74;
  v68(v74, v43, v44);
  return (*(v40 + 56))(v61, 0, 1, v44);
}

uint64_t sub_1D9111370(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1D9176EAC();
  v9 = *(a4 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v32 - v11;
  v35 = a1;
  sub_1D91786FC();
  v34 = sub_1D8D4D2D8();
  sub_1D91780FC();
  v13 = v38[0];
  if (!v38[0])
  {
    v13 = sub_1D917866C();
  }

  v39 = v13;
  v14 = *(TupleTypeMetadata2 + 48);
  (*(*(v8 - 8) + 16))(v12, a3, v8);
  (*(*(v9 - 8) + 16))(&v12[v14], a2, v9);
  sub_1D91786BC();
  if (qword_1ECAB34E8 != -1)
  {
    swift_once();
  }

  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1ECAB77F8);
  v16 = sub_1D917741C();
  v17 = sub_1D9178D1C();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v38[0] = v33;
    *v18 = 136315650;
    v35 = a1;
    sub_1D8E40A10();
    v19 = sub_1D9179A4C();
    v21 = sub_1D8CFA924(v19, v20, v38);

    *(v18 + 4) = v21;
    *(v18 + 12) = 2080;
    v35 = a1;
    sub_1D8E40D20();
    v22 = sub_1D917927C();
    v24 = sub_1D8CFA924(v22, v23, v38);

    *(v18 + 14) = v24;
    *(v18 + 22) = 2080;
    swift_beginAccess();

    v26 = MEMORY[0x1DA729BD0](v25, TupleTypeMetadata2);
    v28 = v27;

    v29 = sub_1D8CFA924(v26, v28, v38);

    *(v18 + 24) = v29;
    _os_log_impl(&dword_1D8CEC000, v16, v17, "[StateCache] %s appended in-flight update for adamID %s, new queue: %s", v18, 0x20u);
    v30 = v33;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v30, -1, -1);
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  swift_beginAccess();
  v36 = a1;
  v37 = v39;
  sub_1D91780DC();
  return sub_1D917810C();
}

unint64_t sub_1D9111718(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  v2 = sub_1D917866C();
  v3 = sub_1D8D4D2D8();
  v4 = sub_1D8D075C8(v2, &type metadata for AdamID, a1, v3);

  sub_1D9176EAC();
  swift_getTupleTypeMetadata2();
  v5 = sub_1D91786FC();
  swift_getTupleTypeMetadata2();
  v6 = sub_1D917866C();
  sub_1D8D075C8(v6, &type metadata for AdamID, v5, v3);

  return v4;
}

uint64_t InMemoryStateDomain.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

unint64_t sub_1D91118A8()
{
  result = qword_1ECABAA78;
  if (!qword_1ECABAA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAA78);
  }

  return result;
}

uint64_t sub_1D9111934(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v25 = MEMORY[0x1E69E7CC0];
  v23 = *(a1 + 16);
  sub_1D8E31320(0, v1, 0);
  v2 = v25;
  v4 = a1 + 64;
  result = sub_1D91792DC();
  v6 = v23;
  v7 = 0;
  v8 = *(a1 + 36);
  v24 = v8;
  while ((result & 0x8000000000000000) == 0 && result < 1 << *(a1 + 32))
  {
    v10 = result >> 6;
    v11 = 1 << result;
    if ((*(v4 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_23;
    }

    v12 = *(*(a1 + 48) + 8 * result);
    v14 = *(v25 + 16);
    v13 = *(v25 + 24);
    if (v14 >= v13 >> 1)
    {
      v22 = result;
      sub_1D8E31320((v13 > 1), v14 + 1, 1);
      v6 = v23;
      v8 = v24;
      result = v22;
    }

    *(v25 + 16) = v14 + 1;
    *(v25 + 8 * v14 + 32) = v12;
    v9 = 1 << *(a1 + 32);
    if (result >= v9)
    {
      goto LABEL_24;
    }

    v15 = *(v4 + 8 * v10);
    if ((v15 & v11) == 0)
    {
      goto LABEL_25;
    }

    if (v8 != *(a1 + 36))
    {
      goto LABEL_26;
    }

    v16 = v15 & (-2 << (result & 0x3F));
    if (v16)
    {
      v9 = __clz(__rbit64(v16)) | result & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v17 = v10 << 6;
      v18 = v10 + 1;
      v19 = (a1 + 72 + 8 * v10);
      while (v18 < (v9 + 63) >> 6)
      {
        v21 = *v19++;
        v20 = v21;
        v17 += 64;
        ++v18;
        if (v21)
        {
          sub_1D8D9B144(result, v24, 0);
          v6 = v23;
          v8 = v24;
          v9 = __clz(__rbit64(v20)) + v17;
          goto LABEL_4;
        }
      }

      sub_1D8D9B144(result, v24, 0);
      v6 = v23;
      v8 = v24;
    }

LABEL_4:
    ++v7;
    result = v9;
    if (v7 == v6)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1D9111B70(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x1E69E7CC0];
  sub_1D8D41BE0(0, v1, 0);
  v2 = v34;
  v4 = v3 + 64;
  result = sub_1D91792DC();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v27 = v3 + 72;
  v28 = v1;
  v29 = v8;
  v30 = v3 + 64;
  v31 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v32 = v7;
    v11 = (*(v3 + 56) + 40 * v6);
    v33 = v2;
    v13 = *v11;
    v12 = v11[1];
    v14 = v11[2];
    sub_1D8D1C3BC(*v11, v12, v14);
    sub_1D8E40A10();
    v15 = sub_1D9179A4C();
    MEMORY[0x1DA7298F0](v15);

    MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
    sub_1D917964C();
    v16 = v12;
    v2 = v33;
    result = sub_1D8D1D59C(v13, v16, v14);
    v18 = *(v33 + 16);
    v17 = *(v33 + 24);
    if (v18 >= v17 >> 1)
    {
      result = sub_1D8D41BE0((v17 > 1), v18 + 1, 1);
      v2 = v33;
    }

    *(v2 + 16) = v18 + 1;
    v19 = v2 + 16 * v18;
    *(v19 + 32) = 0;
    *(v19 + 40) = 0xE000000000000000;
    v3 = v31;
    v9 = 1 << *(v31 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v30;
    v20 = *(v30 + 8 * v10);
    if ((v20 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v29;
    if (v29 != *(v31 + 36))
    {
      goto LABEL_26;
    }

    v21 = v20 & (-2 << (v6 & 0x3F));
    if (v21)
    {
      v9 = __clz(__rbit64(v21)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v22 = v10 << 6;
      v23 = v10 + 1;
      v24 = (v27 + 8 * v10);
      while (v23 < (v9 + 63) >> 6)
      {
        v26 = *v24++;
        v25 = v26;
        v22 += 64;
        ++v23;
        if (v26)
        {
          result = sub_1D8D9B144(v6, v29, 0);
          v9 = __clz(__rbit64(v25)) + v22;
          goto LABEL_4;
        }
      }

      result = sub_1D8D9B144(v6, v29, 0);
    }

LABEL_4:
    v7 = v32 + 1;
    v6 = v9;
    if (v32 + 1 == v28)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1D9111E68(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = *(a1 + 48) + 24 * (v9 | (v8 << 6));
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      sub_1D8D5055C(*v10, v12, *(v10 + 16));
      sub_1D8EFAB8C(v14, v11, v12, v13);
      sub_1D8DA8564(v14[0], v14[1], v15);
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1D9111F88(uint64_t a1)
{
  v2 = 0;
  v3 = a1 + 56;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      sub_1D8D19AFC(&v13, v11, v12);

      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

uint64_t sub_1D911208C(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = result + 56;
  v4 = 1 << *(result + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(result + 56);
  v7 = (v4 + 63) >> 6;
  if (v6)
  {
    while (1)
    {
      v8 = v2;
LABEL_9:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      result = sub_1D8D1A770(&v10, *(*(v1 + 48) + ((v8 << 9) | (8 * v9))));
      if (!v6)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      __break(1u);
      return result;
    }

    if (v8 >= v7)
    {
      break;
    }

    v6 = *(v3 + 8 * v8);
    ++v2;
    if (v6)
    {
      v2 = v8;
      goto LABEL_9;
    }
  }
}

void sub_1D911216C(uint64_t a1)
{
  v2 = qword_1ECABAAE0;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECABAAE0, &qword_1D91B98C8);
  MEMORY[0x1EEE9AC00](v46);
  v42 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - v5;
  MEMORY[0x1EEE9AC00](v7);
  v45 = &v42 - v8;
  v43 = MEMORY[0x1E69E7CC8];
  v48 = MEMORY[0x1E69E7CC8];
  v9 = a1 + 64;
  v10 = 1 << *(a1 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(a1 + 64);
  v13 = (v10 + 63) >> 6;
  v47 = a1;

  v14 = 0;
  for (i = a1 + 64; ; v9 = i)
  {
    v15 = v14;
    if (!v12)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v16 = v2;
      v14 = v15;
LABEL_11:
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v18 = v17 | (v14 << 6);
      v19 = *(v47 + 56);
      v20 = *(*(v47 + 48) + 8 * v18);
      v21 = (type metadata accessor for InMemoryEpisodeStateModel(0) - 8);
      v22 = v19 + *(*v21 + 72) * v18;
      v24 = v45;
      v23 = v46;
      sub_1D9117ABC(v22, &v45[*(v46 + 48)], type metadata accessor for InMemoryEpisodeStateModel);
      *v24 = v20;
      v25 = v24;
      v2 = v16;
      sub_1D8D6734C(v25, v6, v16, &qword_1D91B98C8);
      v26 = v6[*(v23 + 48) + v21[7]];
      if (v26 != 2)
      {
        break;
      }

      sub_1D8D08A50(v6, v16, &qword_1D91B98C8);
      v15 = v14;
      v9 = i;
      if (!v12)
      {
LABEL_7:
        while (1)
        {
          v14 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            break;
          }

          if (v14 >= v13)
          {

            return;
          }

          v12 = *(v9 + 8 * v14);
          ++v15;
          if (v12)
          {
            v16 = v2;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    sub_1D8D6734C(v6, v42, v16, &qword_1D91B98C8);
    v27 = v43;
    v28 = *(v43 + 16);
    if (*(v43 + 24) <= v28)
    {
      sub_1D900AD3C(v28 + 1, 1);
      v27 = v48;
    }

    v43 = v27;
    v29 = *v42;
    sub_1D9179DBC();
    MEMORY[0x1DA72B3C0](v29);
    v30 = sub_1D9179E1C();
    v31 = v43;
    v32 = v43 + 64;
    v33 = -1 << *(v43 + 32);
    v34 = v30 & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v43 + 64 + 8 * (v34 >> 6))) == 0)
    {
      break;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v43 + 64 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    v41 = *(v46 + 48);
    *(v32 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    *(v31[6] + 8 * v36) = v29;
    *(v31[7] + v36) = v26 & 1;
    ++v31[2];
    sub_1D9117B24(v42 + v41, type metadata accessor for InMemoryEpisodeStateModel);
  }

  v37 = 0;
  v38 = (63 - v33) >> 6;
  while (++v35 != v38 || (v37 & 1) == 0)
  {
    v39 = v35 == v38;
    if (v35 == v38)
    {
      v35 = 0;
    }

    v37 |= v39;
    v40 = *(v32 + 8 * v35);
    if (v40 != -1)
    {
      v36 = __clz(__rbit64(~v40)) + (v35 << 6);
      goto LABEL_26;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1D9112518(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v56 - v3;
  v66 = type metadata accessor for EpisodePlayState(0);
  v5 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v60 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v56 - v8;
  v9 = qword_1ECABAAE0;
  v10 = &qword_1D91B98C8;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECABAAE0, &qword_1D91B98C8);
  MEMORY[0x1EEE9AC00](v67);
  v59 = (&v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v65 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v56 - v15;
  v17 = a1 + 64;
  v16 = *(a1 + 64);
  v61 = MEMORY[0x1E69E7CC8];
  v69 = MEMORY[0x1E69E7CC8];
  v18 = 1 << *(a1 + 32);
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  else
  {
    v19 = -1;
  }

  v20 = v19 & v16;
  v21 = (v18 + 63) >> 6;
  v57 = v5;
  v63 = (v5 + 48);
  v68 = a1;

  v22 = 0;
  for (i = a1 + 64; ; v17 = i)
  {
    v23 = v22;
    if (!v20)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v24 = v10;
      v25 = v9;
      v26 = v4;
      v22 = v23;
LABEL_11:
      v27 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v28 = v27 | (v22 << 6);
      v29 = *(v68 + 56);
      v30 = *(*(v68 + 48) + 8 * v28);
      v31 = v29 + *(*(type metadata accessor for InMemoryEpisodeStateModel(0) - 8) + 72) * v28;
      v32 = v67;
      v33 = v64;
      sub_1D9117ABC(v31, &v64[*(v67 + 48)], type metadata accessor for InMemoryEpisodeStateModel);
      *v33 = v30;
      v34 = v33;
      v9 = v25;
      v35 = v25;
      v10 = v24;
      v36 = v65;
      sub_1D8D6734C(v34, v65, v35, v10);
      v4 = v26;
      sub_1D9117A4C(v36 + *(v32 + 48), v26);
      if ((*v63)(v26, 1, v66) != 1)
      {
        break;
      }

      sub_1D8D08A50(v36, v9, v10);
      sub_1D8D08A50(v26, &qword_1ECAB7AE0, &qword_1D91B7E20);
      v23 = v22;
      v17 = i;
      if (!v20)
      {
LABEL_7:
        while (1)
        {
          v22 = v23 + 1;
          if (__OFADD__(v23, 1))
          {
            break;
          }

          if (v22 >= v21)
          {

            return;
          }

          v20 = *(v17 + 8 * v22);
          ++v23;
          if (v20)
          {
            v24 = v10;
            v25 = v9;
            v26 = v4;
            goto LABEL_11;
          }
        }

        __break(1u);
        goto LABEL_29;
      }
    }

    v37 = v58;
    sub_1D91179E8(v26, v58);
    v38 = v36;
    v39 = v59;
    sub_1D8D6734C(v38, v59, v9, v10);
    sub_1D91179E8(v37, v60);
    v40 = v61;
    v41 = v61[2];
    if (v61[3] <= v41)
    {
      sub_1D900A9E0(v41 + 1, 1);
      v40 = v69;
    }

    v42 = *v39;
    v43 = v40;
    sub_1D9179DBC();
    v56 = v42;
    MEMORY[0x1DA72B3C0](v42);
    v44 = sub_1D9179E1C();
    v45 = v43 + 8;
    v61 = v43;
    v46 = -1 << *(v43 + 32);
    v47 = v44 & ~v46;
    v48 = v47 >> 6;
    if (((-1 << v47) & ~v43[(v47 >> 6) + 8]) == 0)
    {
      break;
    }

    v49 = __clz(__rbit64((-1 << v47) & ~v43[(v47 >> 6) + 8])) | v47 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    v54 = *(v67 + 48);
    *(v45 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
    v55 = v61;
    *(v61[6] + 8 * v49) = v56;
    sub_1D91179E8(v60, v55[7] + *(v57 + 72) * v49);
    ++v55[2];
    sub_1D9117B24(v59 + v54, type metadata accessor for InMemoryEpisodeStateModel);
  }

  v50 = 0;
  v51 = (63 - v46) >> 6;
  while (++v48 != v51 || (v50 & 1) == 0)
  {
    v52 = v48 == v51;
    if (v48 == v51)
    {
      v48 = 0;
    }

    v50 |= v52;
    v53 = v45[v48];
    if (v53 != -1)
    {
      v49 = __clz(__rbit64(~v53)) + (v48 << 6);
      goto LABEL_26;
    }
  }

LABEL_29:
  __break(1u);
}

void *InMemoryStateRepository.__allocating_init(inMemoryBookmarkStateStore:inMemoryPlayStateStore:inMemoryFollowStateStore:inMemoryStateNetworking:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA80, &unk_1D91B9810);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CD0];
  *(v9 + 24) = 0;
  *(v9 + 16) = v10;
  v8[10] = v9;
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_1D8D6BCE0(a4, (v8 + 5));
  return v8;
}

void *InMemoryStateRepository.init(inMemoryBookmarkStateStore:inMemoryPlayStateStore:inMemoryFollowStateStore:inMemoryStateNetworking:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA80, &unk_1D91B9810);
  v9 = swift_allocObject();
  v10 = MEMORY[0x1E69E7CD0];
  *(v9 + 24) = 0;
  *(v9 + 16) = v10;
  v4[10] = v9;
  v4[2] = a1;
  v4[3] = a2;
  v4[4] = a3;
  sub_1D8D6BCE0(a4, (v4 + 5));
  return v4;
}

uint64_t InMemoryStateRepository.deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return v0;
}

uint64_t InMemoryStateRepository.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return swift_deallocClassInstance();
}

uint64_t InMemoryStateRepository.allAdamIDs(forConsolidatedFollowState:)(__int128 *a1)
{
  v2 = *(v1 + 32);
  v9 = *(a1 + 4);
  v3 = a1[1];
  v7 = *a1;
  v8 = v3;
  v4 = *(v2 + 16);
  os_unfair_lock_lock((v4 + 32));
  sub_1D9116E40((v4 + 16), &v6);
  os_unfair_lock_unlock((v4 + 32));
  return v6;
}

double InMemoryStateRepository.requestEpisodeStates(for:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    v3 = v1[10];
    MEMORY[0x1EEE9AC00](a1);

    os_unfair_lock_lock((v3 + 24));
    sub_1D9116E5C((v3 + 16), &v19);
    os_unfair_lock_unlock((v3 + 24));
    v4 = v19;

    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1ECAB77F8);

    v6 = sub_1D917741C();
    v7 = sub_1D9178D1C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      sub_1D8D4D2D8();
      v10 = sub_1D9178AAC();
      v12 = sub_1D8CFA924(v10, v11, &v19);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Requesting state for missing adamIDs %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    if (*(v4 + 16))
    {
      v13 = v2[8];
      v14 = v2[9];
      __swift_project_boxed_opaque_existential_1(v2 + 5, v13);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v4;
      v17 = *(v14 + 8);

      v17(v4, sub_1D9116E78, v16, v13, v14);
    }
  }

  return result;
}

void sub_1D9112F1C(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1D9113A04(a2);
  if (v3)
  {
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB77F8);
    sub_1D9117C0C(v2, 1);

    v5 = sub_1D917741C();
    v6 = sub_1D9178CFC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v26[0] = v9;
      *v7 = 136315394;
      sub_1D8D4D2D8();
      v10 = sub_1D9178AAC();
      v12 = sub_1D8CFA924(v10, v11, v26);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2112;
      sub_1D904FC24();
      swift_allocError();
      *v13 = v2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v14;
      *v8 = v14;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "Error fetching state for adamIDs %s: %@", v7, 0x16u);
      sub_1D8D08A50(v8, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    else
    {

      sub_1D9117C18(v2, 1);
    }
  }

  else if (v2[2])
  {
    sub_1D911216C(v2);
    sub_1D9113C20(v15, v16);

    sub_1D9112518(v2);
    sub_1D9114104(v17);
  }

  else
  {
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v18 = sub_1D917744C();
    __swift_project_value_buffer(v18, qword_1ECAB77F8);

    oslog = sub_1D917741C();
    v19 = sub_1D9178CFC();

    if (os_log_type_enabled(oslog, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26[0] = v21;
      *v20 = 136315138;
      sub_1D8D4D2D8();
      v22 = sub_1D9178AAC();
      v24 = sub_1D8CFA924(v22, v23, v26);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1D8CEC000, oslog, v19, "No state found for adamIDs %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      MEMORY[0x1DA72CB90](v21, -1, -1);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }

    else
    {
    }
  }
}

double InMemoryStateRepository.requestFollowStates(for:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    v3 = v1[10];
    MEMORY[0x1EEE9AC00](a1);

    os_unfair_lock_lock((v3 + 24));
    sub_1D9117E24((v3 + 16), &v19);
    os_unfair_lock_unlock((v3 + 24));
    v4 = v19;

    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1ECAB77F8);

    v6 = sub_1D917741C();
    v7 = sub_1D9178D1C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      sub_1D8D4D2D8();
      v10 = sub_1D9178AAC();
      v12 = sub_1D8CFA924(v10, v11, &v19);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Requesting state for missing adamIDs %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    if (*(v4 + 16))
    {
      v13 = v2[8];
      v14 = v2[9];
      __swift_project_boxed_opaque_existential_1(v2 + 5, v13);
      v15 = swift_allocObject();
      swift_weakInit();
      v16 = swift_allocObject();
      *(v16 + 16) = v15;
      *(v16 + 24) = v4;
      v17 = *(v14 + 16);

      v17(v4, sub_1D9116EA8, v16, v13, v14);
    }
  }

  return result;
}

uint64_t sub_1D9113590(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v6 = *a1;
  v7 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = v6;
    v10 = v7;
    a4(&v9, a3);
  }

  return result;
}

void sub_1D9113620(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  sub_1D9113A04(a2);
  if (v3)
  {
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB77F8);
    sub_1D9117C0C(v2, 1);

    v5 = sub_1D917741C();
    v6 = sub_1D9178CFC();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v23 = v9;
      *v7 = 136315394;
      sub_1D8D4D2D8();
      v10 = sub_1D9178AAC();
      v12 = sub_1D8CFA924(v10, v11, &v23);

      *(v7 + 4) = v12;
      *(v7 + 12) = 2112;
      sub_1D904FC24();
      swift_allocError();
      *v13 = v2;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 14) = v14;
      *v8 = v14;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "Error fetching state for adamIDs %s: %@", v7, 0x16u);
      sub_1D8D08A50(v8, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v8, -1, -1);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    else
    {

      sub_1D9117C18(v2, 1);
    }
  }

  else if (v2[2])
  {
    sub_1D91146A0(v2);
  }

  else
  {
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1ECAB77F8);

    oslog = sub_1D917741C();
    v16 = sub_1D9178CFC();

    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315138;
      sub_1D8D4D2D8();
      v19 = sub_1D9178AAC();
      v21 = sub_1D8CFA924(v19, v20, &v23);

      *(v17 + 4) = v21;
      _os_log_impl(&dword_1D8CEC000, oslog, v16, "No state found for adamIDs %s", v17, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v18);
      MEMORY[0x1DA72CB90](v18, -1, -1);
      MEMORY[0x1DA72CB90](v17, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_1D91139A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{

  v6 = sub_1D9116934(a2, a1);

  result = sub_1D911208C(v7);
  *a3 = v6;
  return result;
}

void sub_1D9113A04(uint64_t a1)
{
  v2 = *(v1 + 80);

  os_unfair_lock_lock(v2 + 6);
  sub_1D9117BD8();
  os_unfair_lock_unlock(v2 + 6);

  if (qword_1ECAB34E8 != -1)
  {
    swift_once();
  }

  v3 = sub_1D917744C();
  __swift_project_value_buffer(v3, qword_1ECAB77F8);

  v4 = sub_1D917741C();
  v5 = sub_1D9178D1C();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v11 = v7;
    *v6 = 136315138;
    sub_1D8D4D2D8();
    v8 = sub_1D9178AAC();
    v10 = sub_1D8CFA924(v8, v9, &v11);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Removed in-flight requests for adamIDs: %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x1DA72CB90](v7, -1, -1);
    MEMORY[0x1DA72CB90](v6, -1, -1);
  }
}

Swift::Void __swiftcall InMemoryStateRepository.register(remoteEpisodeStates:)(Swift::OpaquePointer remoteEpisodeStates)
{
  sub_1D911216C(remoteEpisodeStates._rawValue);
  sub_1D9113C20(v2, v3);

  sub_1D9112518(remoteEpisodeStates._rawValue);
  sub_1D9114104(v4);
}

double sub_1D9113C20(uint64_t a1, double result)
{
  if (*(a1 + 16))
  {
    v3 = v2;
    if (qword_1ECAB34E8 != -1)
    {
      goto LABEL_35;
    }

    while (1)
    {
      v5 = sub_1D917744C();
      __swift_project_value_buffer(v5, qword_1ECAB77F8);
      swift_bridgeObjectRetain_n();
      v6 = sub_1D917741C();
      v7 = sub_1D9178D1C();
      if (!os_log_type_enabled(v6, v7))
      {

        v28 = swift_bridgeObjectRelease_n();
        goto LABEL_27;
      }

      v8 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v46[0] = v40;
      *v8 = 136315394;
      *(v8 + 4) = sub_1D8CFA924(0xD000000000000014, 0x80000001D91D6E50, v46);
      *(v8 + 12) = 2080;
      v9 = *(a1 + 16);
      if (!v9)
      {
        break;
      }

      v36 = v7;
      v37 = v8;
      v38 = v6;
      v39 = v3;
      v45 = MEMORY[0x1E69E7CC0];
      sub_1D8D41BE0(0, v9, 0);
      v42 = v45;
      v10 = a1 + 64;
      v11 = sub_1D91792DC();
      v12 = 0;
      v43 = *(a1 + 36);
      v41 = v9;
      while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
      {
        v15 = v11 >> 6;
        v3 = 1 << v11;
        if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
        {
          goto LABEL_30;
        }

        if (v43 != *(a1 + 36))
        {
          goto LABEL_31;
        }

        v44[0] = 0;
        v44[1] = 0xE000000000000000;
        sub_1D8E40A10();
        v16 = sub_1D9179A4C();
        MEMORY[0x1DA7298F0](v16);

        MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
        sub_1D917964C();
        v17 = v42;
        v45 = v42;
        v19 = *(v42 + 16);
        v18 = *(v42 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_1D8D41BE0((v18 > 1), v19 + 1, 1);
          v17 = v45;
        }

        *(v17 + 16) = v19 + 1;
        v20 = v17 + 16 * v19;
        *(v20 + 32) = 0;
        *(v20 + 40) = 0xE000000000000000;
        v13 = 1 << *(a1 + 32);
        if (v11 >= v13)
        {
          goto LABEL_32;
        }

        v10 = a1 + 64;
        v21 = *(a1 + 64 + 8 * v15);
        if ((v21 & v3) == 0)
        {
          goto LABEL_33;
        }

        v42 = v17;
        if (v43 != *(a1 + 36))
        {
          goto LABEL_34;
        }

        v22 = v21 & (-2 << (v11 & 0x3F));
        if (v22)
        {
          v13 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
          v14 = v41;
        }

        else
        {
          v23 = v15 << 6;
          v24 = v15 + 1;
          v14 = v41;
          v25 = (a1 + 72 + 8 * v15);
          while (v24 < (v13 + 63) >> 6)
          {
            v27 = *v25++;
            v26 = v27;
            v23 += 64;
            ++v24;
            if (v27)
            {
              sub_1D8D9B144(v11, v43, 0);
              v13 = __clz(__rbit64(v26)) + v23;
              goto LABEL_7;
            }
          }

          sub_1D8D9B144(v11, v43, 0);
        }

LABEL_7:
        ++v12;
        v11 = v13;
        if (v12 == v14)
        {

          v6 = v38;
          v3 = v39;
          v8 = v37;
          v7 = v36;
          v29 = v42;
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      swift_once();
    }

    v29 = MEMORY[0x1E69E7CC0];
LABEL_26:
    v30 = MEMORY[0x1DA729BD0](v29, MEMORY[0x1E69E6158]);
    v32 = v31;

    v33 = sub_1D8CFA924(v30, v32, v46);

    *(v8 + 14) = v33;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "[%s] Registering remote states: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v40, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);

LABEL_27:
    v34 = *(v3 + 16);
    MEMORY[0x1EEE9AC00](v28);
    os_unfair_lock_lock(v34 + 8);
    sub_1D9117B84(&v34[4], v44);
    os_unfair_lock_unlock(v34 + 8);
    sub_1D91778BC();
  }

  return v35;
}

double sub_1D9114104(uint64_t a1)
{
  v2 = v1;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAC8, &qword_1D91B98A8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = (&v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = MEMORY[0x1EEE9AC00](v5);
  v58 = &v48 - v7;
  if (*(a1 + 16))
  {
    if (qword_1ECAB34E8 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v8 = sub_1D917744C();
      __swift_project_value_buffer(v8, qword_1ECAB77F8);
      swift_bridgeObjectRetain_n();
      v9 = sub_1D917741C();
      v10 = sub_1D9178D1C();
      if (!os_log_type_enabled(v9, v10))
      {

        v41 = swift_bridgeObjectRelease_n();
        goto LABEL_25;
      }

      v52 = v10;
      v11 = swift_slowAlloc();
      v51 = swift_slowAlloc();
      v67[0] = v51;
      *v11 = 136315394;
      *(v11 + 4) = sub_1D8CFA924(0xD000000000000010, 0x80000001D91D6E30, v67);
      *(v11 + 12) = 2080;
      v12 = *(a1 + 16);
      if (!v12)
      {
        break;
      }

      v48 = v11;
      v49 = v9;
      v50 = v2;
      v66 = MEMORY[0x1E69E7CC0];
      sub_1D8D41BE0(0, v12, 0);
      v13 = v66;
      v14 = a1 + 64;
      v15 = sub_1D91792DC();
      v16 = 0;
      v55 = *(a1 + 36);
      v53 = a1 + 72;
      v54 = v12;
      v17 = *(a1 + 32);
      v56 = a1 + 64;
      v57 = a1;
      v18 = v58;
      while ((v15 & 0x8000000000000000) == 0 && v15 < 1 << v17)
      {
        v21 = v15 >> 6;
        if ((*(v14 + 8 * (v15 >> 6)) & (1 << v15)) == 0)
        {
          goto LABEL_28;
        }

        v61 = v16;
        v62 = 1 << v15;
        v22 = v60;
        v23 = *(v60 + 48);
        v24 = *(a1 + 48);
        v25 = *(a1 + 56);
        v26 = *(v24 + 8 * v15);
        v27 = type metadata accessor for EpisodePlayState(0);
        sub_1D9117ABC(v25 + *(*(v27 - 8) + 72) * v15, &v18[v23], type metadata accessor for EpisodePlayState);
        v2 = v59;
        *v59 = v26;
        sub_1D91179E8(&v18[v23], v2 + *(v22 + 48));
        v64 = 0;
        v65 = 0xE000000000000000;
        v63 = v26;
        sub_1D8E40A10();
        v28 = sub_1D9179A4C();
        MEMORY[0x1DA7298F0](v28);

        MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
        sub_1D917964C();
        v30 = v64;
        v29 = v65;
        sub_1D8D08A50(v2, &qword_1ECABAAC8, &qword_1D91B98A8);
        v66 = v13;
        v32 = *(v13 + 16);
        v31 = *(v13 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1D8D41BE0((v31 > 1), v32 + 1, 1);
          v13 = v66;
        }

        *(v13 + 16) = v32 + 1;
        v33 = v13 + 16 * v32;
        *(v33 + 32) = v30;
        *(v33 + 40) = v29;
        a1 = v57;
        v17 = *(v57 + 32);
        v19 = 1 << v17;
        if (v15 >= 1 << v17)
        {
          goto LABEL_29;
        }

        v14 = v56;
        v34 = *(v56 + 8 * v21);
        if ((v34 & v62) == 0)
        {
          goto LABEL_30;
        }

        if (v55 != *(v57 + 36))
        {
          goto LABEL_31;
        }

        v35 = v34 & (-2 << (v15 & 0x3F));
        if (v35)
        {
          v19 = __clz(__rbit64(v35)) | v15 & 0x7FFFFFFFFFFFFFC0;
          v20 = v54;
        }

        else
        {
          v36 = v21 << 6;
          v37 = v21 + 1;
          v20 = v54;
          v38 = (v53 + 8 * v21);
          while (v37 < (v19 + 63) >> 6)
          {
            v40 = *v38++;
            v39 = v40;
            v36 += 64;
            ++v37;
            if (v40)
            {
              v19 = __clz(__rbit64(v39)) + v36;
              break;
            }
          }
        }

        v15 = v19;
        v16 = v61 + 1;
        if (v61 + 1 == v20)
        {

          v9 = v49;
          v2 = v50;
          v11 = v48;
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      swift_once();
    }

    v13 = MEMORY[0x1E69E7CC0];
LABEL_24:
    v42 = MEMORY[0x1DA729BD0](v13, MEMORY[0x1E69E6158]);
    v44 = v43;

    v45 = sub_1D8CFA924(v42, v44, v67);

    *(v11 + 14) = v45;
    _os_log_impl(&dword_1D8CEC000, v9, v52, "[%s] Registering remote states: %s", v11, 0x16u);
    v46 = v51;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v46, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);

LABEL_25:
    v47 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](v41);
    *(&v48 - 2) = a1;
    os_unfair_lock_lock(v47 + 8);
    sub_1D91179BC(&v47[4], &v64);
    os_unfair_lock_unlock(v47 + 8);
    sub_1D91778BC();
  }

  return result;
}

double sub_1D91146A0(uint64_t a1)
{
  if (*(a1 + 16))
  {
    v2 = v1;
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v4 = sub_1D917744C();
    __swift_project_value_buffer(v4, qword_1ECAB77F8);

    v5 = sub_1D917741C();
    v6 = sub_1D9178D1C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v16 = v8;
      *v7 = 136315394;
      *(v7 + 4) = sub_1D8CFA924(0x5374736163646F50, 0xEC00000065746174, &v16);
      *(v7 + 12) = 2080;
      sub_1D9111B70(a1);
      v9 = MEMORY[0x1DA729BD0]();
      v11 = v10;

      v12 = sub_1D8CFA924(v9, v11, &v16);

      *(v7 + 14) = v12;
      _os_log_impl(&dword_1D8CEC000, v5, v6, "[%s] Registering remote states: %s", v7, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v8, -1, -1);
      MEMORY[0x1DA72CB90](v7, -1, -1);
    }

    else
    {
    }

    v14 = *(v2 + 16);
    MEMORY[0x1EEE9AC00](v13);
    os_unfair_lock_lock(v14 + 8);
    sub_1D9117368(&v14[4], &v16);
    os_unfair_lock_unlock(v14 + 8);
    sub_1D91778BC();
  }

  return result;
}

uint64_t InMemoryStateRepository.publisher(for:)()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA88, &qword_1D91B9EB0);
  sub_1D8CF48EC(&qword_1ECABAA90, &qword_1ECABAA88, &qword_1D91B9EB0, MEMORY[0x1E695BF88]);
  return sub_1D9177B1C();
}

void *InMemoryStateRepository.publisher(for:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v23 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA98, &qword_1D91B9820);
  v22 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  swift_weakInit();
  v6 = MEMORY[0x1E69E7CC0];
  v25 = MEMORY[0x1E69E7CC0];
  v7 = 1 << *(a1 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a1 + 56);

  result = swift_beginAccess();
  v11 = 0;
  v12 = (v7 + 63) >> 6;
  if (!v9)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v14 = *(*(a1 + 48) + (v13 | (v11 << 6)));
      result = swift_weakLoadStrong();
      if (result)
      {
        break;
      }

      if (!v9)
      {
        goto LABEL_6;
      }
    }

    if (v14)
    {
      if (v14 == 1)
      {
        v16 = result[3];
      }

      else
      {
        v16 = result[2];
      }
    }

    else
    {
      v16 = result[4];
    }

    v21 = *(v16 + 32);
    v24 = v21;

    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA88, &qword_1D91B9EB0);
    sub_1D8CF48EC(&qword_1ECABAA90, &qword_1ECABAA88, &qword_1D91B9EB0, MEMORY[0x1E695BF88]);
    v17 = sub_1D9177B1C();

    v21 = v17;
    v24 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAA0, &qword_1D91B9828);
    sub_1D8CF48EC(&qword_1ECABAAA8, &qword_1ECABAAA0, &qword_1D91B9828, MEMORY[0x1E695BED8]);
    sub_1D9177B1C();

    MEMORY[0x1DA729B90](v18);
    if (*(v25 + 16) >= *(v25 + 24) >> 1)
    {
      sub_1D917863C();
    }

    result = sub_1D917869C();
    v6 = v25;
  }

  while (v9);
LABEL_6:
  while (1)
  {
    v15 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
      swift_weakDestroy();

      v26 = v6;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAA0, &qword_1D91B9828);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAB0, &qword_1D91B9830);
      sub_1D8CF48EC(&qword_1ECABAAA8, &qword_1ECABAAA0, &qword_1D91B9828, MEMORY[0x1E695BED8]);
      sub_1D8CF48EC(&qword_1ECABAAB8, &qword_1ECABAAB0, &qword_1D91B9830, MEMORY[0x1E69E6328]);
      sub_1D917775C();
      sub_1D8CF48EC(&qword_1ECABAAC0, &qword_1ECABAA98, &qword_1D91B9820, MEMORY[0x1E695BE80]);
      v19 = sub_1D9177B1C();
      result = (*(v22 + 8))(v5, v3);
      *v23 = v19;
      return result;
    }

    v9 = *(a1 + 56 + 8 * v15);
    ++v11;
    if (v9)
    {
      v11 = v15;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall InMemoryStateRepository.overrideAllLibraryState(with:isInitialFetch:)(PodcastsFoundation::LibrarySnapshot with, Swift::Bool isInitialFetch)
{
  rawValue = with.followedShows._rawValue;
  v4 = *with.savedEpisodesAdamIds._rawValue;
  v3 = *(with.savedEpisodesAdamIds._rawValue + 1);
  v5 = *(v3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v28 = with.followedShows._rawValue;
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D8E31944(0, v5, 0);
    v7 = v29;
    v8 = (v3 + 32);
    v9 = *(v29 + 16);
    v10 = 48 * v9;
    v11 = xmmword_1D91B9800;
    do
    {
      v13 = *v8;
      v8 += 5;
      v12 = v13;
      v29 = v7;
      v14 = *(v7 + 24);
      v15 = v9++ >= v14 >> 1;
      if (v15)
      {
        v27 = v11;
        sub_1D8E31944((v14 > 1), v9, 1);
        v11 = v27;
        v7 = v29;
      }

      *(v7 + 16) = v9;
      v16 = v7 + v10;
      *(v16 + 32) = v12;
      *(v16 + 40) = v11;
      *(v16 + 64) = 0;
      *(v16 + 72) = 0;
      v10 += 48;
      *(v16 + 56) = 0xE700000000000000;
      --v5;
    }

    while (v5);
    rawValue = v28;
    goto LABEL_9;
  }

  if (*(MEMORY[0x1E69E7CC0] + 16))
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECAB6AD0, &qword_1D91946A8);
    v17 = sub_1D91797AC();
    goto LABEL_10;
  }

  v17 = MEMORY[0x1E69E7CC8];
  v7 = MEMORY[0x1E69E7CC0];
LABEL_10:
  v29 = v17;
  sub_1D9116ED8(v7, 1, &v29);

  sub_1D911506C(v29, rawValue & 1);

  v18 = *(v4 + 16);
  if (v18)
  {
    v29 = v6;
    sub_1D8E31924(0, v18, 0);
    v6 = v29;
    v19 = (v4 + 32);
    v20 = *(v29 + 16);
    v21 = 16 * v20;
    do
    {
      v23 = *v19++;
      v22 = v23;
      v29 = v6;
      v24 = *(v6 + 24);
      v15 = v20++ >= v24 >> 1;
      if (v15)
      {
        sub_1D8E31924((v24 > 1), v20, 1);
        v6 = v29;
      }

      *(v6 + 16) = v20;
      v25 = v6 + v21;
      *(v25 + 32) = v22;
      *(v25 + 40) = 1;
      v21 += 16;
      --v18;
    }

    while (v18);
    goto LABEL_17;
  }

  if (*(v6 + 16))
  {
LABEL_17:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6AC8, &qword_1D91946A0);
    v26 = sub_1D91797AC();
    goto LABEL_18;
  }

  v26 = MEMORY[0x1E69E7CC8];
LABEL_18:
  v29 = v26;
  sub_1D91170F8(v6, 1, &v29);

  sub_1D9115104(v29, rawValue & 1);
}

double sub_1D911506C(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  os_unfair_lock_lock(v4 + 8);
  sub_1D91177D4(&v4[4], &v7);
  os_unfair_lock_unlock(v4 + 8);
  v5 = v7;
  sub_1D91778BC();
  if ((a2 & 1) == 0)
  {
    v7 = v5;
    sub_1D91778BC();
  }

  return result;
}

double sub_1D9115104(uint64_t a1, char a2)
{
  v4 = *(v2 + 16);
  os_unfair_lock_lock(v4 + 8);
  sub_1D91173A4(&v4[4], &v7);
  os_unfair_lock_unlock(v4 + 8);
  v5 = v7;
  sub_1D91778BC();
  if ((a2 & 1) == 0)
  {
    v7 = v5;
    sub_1D91778BC();
  }

  return result;
}

void sub_1D9115208(uint64_t *a1, uint64_t a2)
{
  v81 = a1;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAD0, &unk_1D91B98B0);
  MEMORY[0x1EEE9AC00](v74);
  v4 = &v67 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v68 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v70 = &v67 - v8;
  MEMORY[0x1EEE9AC00](v9);
  v85 = &v67 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v67 - v12;
  v86 = type metadata accessor for EpisodePlayState(0);
  v14 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v87 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v83 = &v67 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAD8, &qword_1D91B98C0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v78 = (&v67 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v77 = (&v67 - v21);
  v22 = a2 + 64;
  v23 = 1 << *(a2 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v25 = v24 & *(a2 + 64);
  v79 = (v23 + 63) >> 6;
  v80 = (v14 + 56);
  v82 = v14;
  v26 = (v14 + 48);
  v72 = a2;

  v27 = 0;
  v69 = MEMORY[0x1E69E7CC0];
  v71 = v13;
  v73 = a2 + 64;
  v84 = (v14 + 48);
  v28 = v79;
  while (v25)
  {
    v29 = v27;
LABEL_13:
    v32 = __clz(__rbit64(v25));
    v25 &= v25 - 1;
    v33 = v32 | (v29 << 6);
    v34 = *(*(v72 + 48) + 8 * v33);
    v35 = v83;
    sub_1D9117ABC(*(v72 + 56) + *(v82 + 72) * v33, v83, type metadata accessor for EpisodePlayState);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAC8, &qword_1D91B98A8);
    v37 = *(v36 + 48);
    v38 = v78;
    *v78 = v34;
    v39 = v38;
    sub_1D91179E8(v35, v38 + v37);
    (*(*(v36 - 8) + 56))(v39, 0, 1, v36);
    v26 = v84;
LABEL_14:
    v40 = v39;
    v41 = v77;
    sub_1D8D6734C(v40, v77, &qword_1ECABAAD8, &qword_1D91B98C0);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAC8, &qword_1D91B98A8);
    if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
    {

      return;
    }

    v43 = *v41;
    sub_1D91179E8(v41 + *(v42 + 48), v87);
    v44 = *v81;
    v45 = *(*v81 + 16);
    v75 = v43;
    if (v45 && (v46 = sub_1D8D1AC44(v43), (v47 & 1) != 0))
    {
      sub_1D9117ABC(*(v44 + 56) + *(v82 + 72) * v46, v13, type metadata accessor for EpisodePlayState);
      v48 = 0;
    }

    else
    {
      v48 = 1;
    }

    v49 = *v80;
    v50 = v86;
    (*v80)(v13, v48, 1, v86);
    v51 = v85;
    sub_1D9117ABC(v87, v85, type metadata accessor for EpisodePlayState);
    v76 = v49;
    v49(v51, 0, 1, v50);
    v52 = *(v74 + 48);
    sub_1D9117A4C(v13, v4);
    sub_1D9117A4C(v51, &v4[v52]);
    v53 = v13;
    v54 = *v26;
    if ((*v26)(v4, 1, v50) == 1)
    {
      sub_1D8D08A50(v85, &qword_1ECAB7AE0, &qword_1D91B7E20);
      sub_1D8D08A50(v53, &qword_1ECAB7AE0, &qword_1D91B7E20);
      if (v54(&v4[v52], 1, v86) != 1)
      {
        goto LABEL_29;
      }

      v13 = v53;
      sub_1D8D08A50(v4, &qword_1ECAB7AE0, &qword_1D91B7E20);
      v26 = v84;
    }

    else
    {
      v55 = v85;
      v56 = v70;
      sub_1D9117A4C(v4, v70);
      if (v54(&v4[v52], 1, v86) == 1)
      {
        sub_1D8D08A50(v55, &qword_1ECAB7AE0, &qword_1D91B7E20);
        sub_1D8D08A50(v71, &qword_1ECAB7AE0, &qword_1D91B7E20);
        sub_1D9117B24(v56, type metadata accessor for EpisodePlayState);
LABEL_29:
        sub_1D8D08A50(v4, &qword_1ECABAAD0, &unk_1D91B98B0);
        v26 = v84;
LABEL_30:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v69 = sub_1D8ECC958(0, *(v69 + 2) + 1, 1, v69);
        }

        v61 = v75;
        v63 = *(v69 + 2);
        v62 = *(v69 + 3);
        if (v63 >= v62 >> 1)
        {
          v69 = sub_1D8ECC958((v62 > 1), v63 + 1, 1, v69);
        }

        v64 = v69;
        *(v69 + 2) = v63 + 1;
        *&v64[8 * v63 + 32] = v61;
        v65 = v87;
        v66 = v68;
        sub_1D9117ABC(v87, v68, type metadata accessor for EpisodePlayState);
        v76(v66, 0, 1, v86);
        sub_1D8F7DA1C(v66, v61);
        sub_1D9117B24(v65, type metadata accessor for EpisodePlayState);
        v13 = v71;
        goto LABEL_25;
      }

      v57 = v83;
      sub_1D91179E8(&v4[v52], v83);
      v58 = _s18PodcastsFoundation16EpisodePlayStateO2eeoiySbAC_ACtFZ_0(v56, v57);
      sub_1D9117B24(v57, type metadata accessor for EpisodePlayState);
      sub_1D8D08A50(v55, &qword_1ECAB7AE0, &qword_1D91B7E20);
      v13 = v71;
      sub_1D8D08A50(v71, &qword_1ECAB7AE0, &qword_1D91B7E20);
      sub_1D9117B24(v56, type metadata accessor for EpisodePlayState);
      sub_1D8D08A50(v4, &qword_1ECAB7AE0, &qword_1D91B7E20);
      v26 = v84;
      if ((v58 & 1) == 0)
      {
        goto LABEL_30;
      }
    }

    sub_1D9117B24(v87, type metadata accessor for EpisodePlayState);
LABEL_25:
    v22 = v73;
    v28 = v79;
  }

  if (v28 <= v27 + 1)
  {
    v30 = v27 + 1;
  }

  else
  {
    v30 = v28;
  }

  v31 = v30 - 1;
  while (1)
  {
    v29 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v29 >= v28)
    {
      v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAAC8, &qword_1D91B98A8);
      v60 = v78;
      (*(*(v59 - 8) + 56))(v78, 1, 1, v59);
      v25 = 0;
      v27 = v31;
      v39 = v60;
      goto LABEL_14;
    }

    v25 = *(v22 + 8 * v29);
    ++v27;
    if (v25)
    {
      v27 = v29;
      goto LABEL_13;
    }
  }

  __break(1u);
}

char *sub_1D9115ABC(void *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a2 + 64;
  v6 = 1 << *(a2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a2 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  v38 = MEMORY[0x1E69E7CC0];
  while (v8)
  {
LABEL_9:
    v12 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v13 = v12 | (v10 << 6);
    v14 = *(*(a2 + 48) + 8 * v13);
    v15 = *(*(a2 + 56) + v13);
    v16 = *a1;
    if (*(*a1 + 16))
    {
      v17 = sub_1D8D1AC44(v14);
      if ((v18 & 1) != 0 && v15 == *(*(v16 + 56) + v17))
      {
        continue;
      }
    }

    v37 = v3;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v38 = sub_1D8ECC958(0, *(v38 + 2) + 1, 1, v38);
    }

    v20 = *(v38 + 2);
    v19 = *(v38 + 3);
    if (v20 >= v19 >> 1)
    {
      v38 = sub_1D8ECC958((v19 > 1), v20 + 1, 1, v38);
    }

    *(v38 + 2) = v20 + 1;
    *&v38[8 * v20 + 32] = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v22 = *a1;
    v23 = sub_1D8D1AC44(v14);
    v25 = v22[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_29;
    }

    if (v22[3] >= v28)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v23;
        v33 = v24;
        sub_1D8F8635C();
        v24 = v33;
        v23 = v36;
      }
    }

    else
    {
      v35 = v24;
      sub_1D900AD3C(v28, isUniquelyReferenced_nonNull_native);
      v23 = sub_1D8D1AC44(v14);
      v30 = v29 & 1;
      v24 = v35;
      if ((v35 & 1) != v30)
      {
        goto LABEL_31;
      }
    }

    v3 = v37;
    if (v24)
    {
      *(v22[7] + v23) = v15;
    }

    else
    {
      v22[(v23 >> 6) + 8] |= 1 << v23;
      *(v22[6] + 8 * v23) = v14;
      *(v22[7] + v23) = v15;
      v31 = v22[2];
      v27 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v27)
      {
        goto LABEL_30;
      }

      v22[2] = v32;
    }

    *a1 = v22;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v9)
    {

      return v38;
    }

    v8 = *(v5 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

char *sub_1D9115D58(void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v65 = v6;
  v66 = MEMORY[0x1E69E7CC0];
  while (v5)
  {
LABEL_12:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = v12 | (v7 << 6);
    v14 = *(*(a2 + 48) + 8 * v13);
    v15 = (*(a2 + 56) + 40 * v13);
    v16 = *v15;
    v17 = v15[2];
    v18 = v15[3];
    v73 = v15[4];
    v74 = v15[1];
    v19 = *a1;
    v75 = v17;
    v67 = v14;
    if (!*(*a1 + 16))
    {
      v24 = 0;
      v23 = 0;
LABEL_37:
      v68 = v16;
      sub_1D8D1C3BC(v16, v74, v17);
      sub_1D8D1C3BC(v16, v74, v75);
      sub_1D8D1C3BC(v16, v74, v75);
      sub_1D9117394(v23, v24, 3uLL);
      sub_1D9117394(v16, v74, v75);
      v6 = v65;
      goto LABEL_45;
    }

    v20 = sub_1D8D1AC44(v14);
    if ((v21 & 1) == 0)
    {
      v24 = 0;
      v23 = 0;
      v17 = v75;
      goto LABEL_37;
    }

    v22 = (*(v19 + 56) + 40 * v20);
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    v71 = v22[3];
    v72 = v22[4];
    sub_1D8D1C3BC(*v22, v24, v25);
    if (v25 > 1)
    {
      v17 = v75;
      if (v25 != 2)
      {
        if (v25 == 3)
        {
          goto LABEL_37;
        }

        goto LABEL_23;
      }

      if (v75 != 2)
      {
        sub_1D8D1C3BC(v16, v74, v75);
        v68 = v16;
        v6 = v65;
        sub_1D8D1C3BC(v16, v74, v75);
        v36 = v23;
        v37 = v24;
        v38 = 2;
        goto LABEL_44;
      }

      sub_1D8D1C3BC(v16, v74, 2uLL);
      v8 = v23;
      v9 = v24;
      v10 = 2;
LABEL_6:
      sub_1D9117394(v8, v9, v10);
    }

    else
    {
      v17 = v75;
      if (!v25)
      {
        if (!v75)
        {
          sub_1D8D1C3BC(v16, v74, 0);
          v8 = v23;
          v9 = v24;
          v10 = 0;
          goto LABEL_6;
        }

        sub_1D8D1C3BC(v16, v74, v75);
        v68 = v16;
        sub_1D8D1C3BC(v16, v74, v75);
        v36 = v23;
        v37 = v24;
        v38 = 0;
        goto LABEL_44;
      }

      if (v25 == 1)
      {
        if (v75 == 1)
        {
          sub_1D8D1C3BC(v16, v74, 1uLL);
          v8 = v23;
          v9 = v24;
          v10 = 1;
          goto LABEL_6;
        }

        sub_1D8D1C3BC(v16, v74, v75);
        v68 = v16;
        sub_1D8D1C3BC(v16, v74, v75);
        v36 = v23;
        v37 = v24;
        v38 = 1;
        goto LABEL_44;
      }

LABEL_23:
      v68 = v16;
      if (v17 < 3)
      {
        sub_1D8D1C3BC(v16, v74, v17);
        v39 = v16;
        v40 = v74;
        v41 = v75;
        goto LABEL_43;
      }

      if ((v23 ^ v16))
      {
        v42 = v17;
        sub_1D8D1C3BC(v16, v74, v17);
        v39 = v16;
        v40 = v74;
        v41 = v42;
        v6 = v65;
LABEL_43:
        sub_1D8D1C3BC(v39, v40, v41);
        v36 = v23;
        v37 = v24;
        v38 = v25;
LABEL_44:
        sub_1D9117394(v36, v37, v38);
        goto LABEL_45;
      }

      if (v24 == v74 && v25 == v17)
      {
        v32 = v73;
        sub_1D8D1C3BC(v16, v74, v17);
        sub_1D8D1C3BC(v16, v74, v75);
        v35 = v23;
        v34 = v71;
        v33 = v72;
        sub_1D9117394(v35, v74, v75);
      }

      else
      {
        v27 = v17;
        v64 = sub_1D9179ACC();
        sub_1D8D1C3BC(v16, v74, v27);
        v28 = v27;
        v6 = v65;
        sub_1D8D1C3BC(v16, v74, v28);
        v29 = v23;
        v30 = v24;
        v31 = v25;
        v32 = v73;
        v34 = v71;
        v33 = v72;
        sub_1D9117394(v29, v30, v31);
        if ((v64 & 1) == 0)
        {
          goto LABEL_45;
        }
      }

      if (((v18 ^ v34) & 1) != 0 || v33 != v32)
      {
LABEL_45:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v66 = sub_1D8ECC958(0, *(v66 + 2) + 1, 1, v66);
        }

        v44 = *(v66 + 2);
        v43 = *(v66 + 3);
        if (v44 >= v43 >> 1)
        {
          v66 = sub_1D8ECC958((v43 > 1), v44 + 1, 1, v66);
        }

        *(v66 + 2) = v44 + 1;
        *&v66[8 * v44 + 32] = v67;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v46 = *a1;
        v47 = sub_1D8D1AC44(v67);
        v49 = v46[2];
        v50 = (v48 & 1) == 0;
        v51 = __OFADD__(v49, v50);
        v52 = v49 + v50;
        if (v51)
        {
          goto LABEL_62;
        }

        v53 = v48;
        if (v46[3] >= v52)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v62 = v47;
            sub_1D8F85DE4();
            v47 = v62;
          }
        }

        else
        {
          sub_1D8D1AD94(v52, isUniquelyReferenced_nonNull_native);
          v47 = sub_1D8D1AC44(v67);
          if ((v53 & 1) != (v54 & 1))
          {
            goto LABEL_64;
          }
        }

        if (v53)
        {
          v55 = (v46[7] + 40 * v47);
          v56 = *v55;
          v57 = v55[1];
          v58 = v55[2];
          *v55 = v68;
          v55[1] = v74;
          v55[2] = v75;
          v55[3] = v18;
          v55[4] = v73;
          sub_1D8D1D59C(v56, v57, v58);
          v6 = v65;
          sub_1D8D1D59C(v68, v74, v75);
        }

        else
        {
          v46[(v47 >> 6) + 8] |= 1 << v47;
          *(v46[6] + 8 * v47) = v67;
          v59 = (v46[7] + 40 * v47);
          *v59 = v68;
          v59[1] = v74;
          v59[2] = v75;
          v59[3] = v18;
          v59[4] = v73;
          sub_1D8D1D59C(v68, v74, v75);
          v60 = v46[2];
          v51 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v51)
          {
            goto LABEL_63;
          }

          v46[2] = v61;
        }

        *a1 = v46;
      }

      else
      {
        sub_1D8D1D59C(v16, v74, v75);
        sub_1D8D1D59C(v16, v74, v75);
      }
    }
  }

  while (1)
  {
    v11 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v66;
    }

    v5 = *(v2 + 8 * v11);
    ++v7;
    if (v5)
    {
      v7 = v11;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
LABEL_64:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

uint64_t sub_1D9116494(void *a1, uint64_t a2)
{
  v8 = MEMORY[0x1E69E7CC0];

  v4 = sub_1D8FC14F0();
  v5 = sub_1D90AB358(a2, v4);
  sub_1D8E304F0(v5);
  v6 = sub_1D9117654(a2, sub_1D9117408);
  sub_1D8E304D8(v6);

  *a1 = a2;
  return v8;
}

uint64_t sub_1D911654C(void *a1, uint64_t a2)
{
  v8 = MEMORY[0x1E69E7CC0];

  v4 = sub_1D8FC14F0();
  v5 = sub_1D90AB358(a2, v4);
  sub_1D8E304F0(v5);
  v6 = sub_1D911783C(a2, sub_1D9117800);
  sub_1D8E304D8(v6);

  *a1 = a2;
  return v8;
}

uint64_t sub_1D9116604(uint64_t a1, char a2, uint64_t *a3)
{
  v3 = *a3;
  if (*(*a3 + 16) && (v5 = sub_1D8D1AC44(a1), (v6 & 1) != 0))
  {
    v7 = *(*(v3 + 56) + v5) ^ a2;
  }

  else
  {
    v7 = 1;
  }

  return v7 & 1;
}

uint64_t sub_1D9116650(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  v7 = *a3;
  if (*(*a3 + 16) && (v8 = sub_1D8D1AC44(a1), (v9 & 1) != 0))
  {
    v19 = v4;
    v10 = (*(v7 + 56) + 40 * v8);
    v12 = *v10;
    v11 = v10[1];
    v13 = v10[2];
    v14 = v10[3];
    v15 = v10[4];
    sub_1D8D1C3BC(*v10, v11, v13);
    if (v13 != 3)
    {
      v20[0] = v12;
      v20[1] = v11;
      v20[2] = v13;
      v20[3] = v14;
      v20[4] = v15;
      v18 = _s18PodcastsFoundation12PodcastStateO2eeoiySbAC_ACtFZ_0(v20, a2);
      sub_1D9117394(v12, v11, v13);
      v16 = !v18;
      return v16 & 1;
    }

    v4 = v19;
  }

  else
  {
    v11 = 0;
    v12 = 0;
  }

  sub_1D8D19AA0(a2, v20);
  sub_1D9117394(v12, v11, 3uLL);
  sub_1D9117394(v4, v5, v6);
  v16 = 1;
  return v16 & 1;
}

unint64_t *sub_1D911678C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
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

    v8 = sub_1D9117C74(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D911681C(void *result, uint64_t a2, uint64_t a3, uint64_t *a4)
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

    v8 = sub_1D9116BFC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D91168A4(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
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

    v8 = sub_1D9117514(result, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1D9116934(uint64_t a1, uint64_t *a2)
{
  v29 = a2;
  v3 = a1;
  v31 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  v5 = ((1 << v4) + 63) >> 6;
  if ((v4 & 0x3Fu) > 0xD)
  {
    goto LABEL_24;
  }

  while (1)
  {
    v26 = v5;
    v27 = v2;
    v25 = &v25;
    MEMORY[0x1EEE9AC00](a1);
    v28 = &v25 - ((v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v28, v6);
    v30 = 0;
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    v9 = v8 < 64 ? ~(-1 << v8) : -1;
    v5 = v9 & *(v3 + 56);
    v10 = (v8 + 63) >> 6;
    while (v5)
    {
      v11 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
LABEL_13:
      v14 = v11 | (v7 << 6);
      v15 = *v29;
      if (*(*v29 + 16) && (v16 = *(*(v3 + 48) + 8 * v14), sub_1D9179DBC(), MEMORY[0x1DA72B3C0](v16), v17 = sub_1D9179E1C(), v18 = -1 << *(v15 + 32), v19 = v17 & ~v18, ((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) != 0))
      {
        v20 = ~v18;
        while (*(*(v15 + 48) + 8 * v19) != v16)
        {
          v19 = (v19 + 1) & v20;
          if (((*(v15 + 56 + ((v19 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v19) & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
LABEL_18:
        *&v28[(v14 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v14;
        if (__OFADD__(v30++, 1))
        {
          __break(1u);
          return sub_1D90A89E0(v28, v26, v30, v3);
        }
      }
    }

    v12 = v7;
    while (1)
    {
      v7 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v7 >= v10)
      {
        return sub_1D90A89E0(v28, v26, v30, v3);
      }

      v13 = *(v3 + 56 + 8 * v7);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v5 = (v13 - 1) & v13;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_24:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v23 = swift_slowAlloc();
  v24 = sub_1D911681C(v23, v5, v3, v29);

  MEMORY[0x1DA72CB90](v23, -1, -1);
  return v24;
}

uint64_t sub_1D9116BFC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v22 = result;
  v4 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_12:
    v14 = v11 | (v5 << 6);
    v15 = *a4;
    if (*(*a4 + 16) && (v16 = *(*(a3 + 48) + 8 * v14), sub_1D9179DBC(), MEMORY[0x1DA72B3C0](v16), result = sub_1D9179E1C(), v17 = -1 << *(v15 + 32), v18 = result & ~v17, ((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0))
    {
      v19 = ~v17;
      while (*(*(v15 + 48) + 8 * v18) != v16)
      {
        v18 = (v18 + 1) & v19;
        if (((*(v15 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
        {
          goto LABEL_17;
        }
      }
    }

    else
    {
LABEL_17:
      *(v22 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_20:

        return sub_1D90A89E0(v22, a2, v4, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_20;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9116DB8@<X0>(uint64_t *a1@<X0>, uint64_t *a3@<X8>)
{
  v4 = sub_1D911783C(*a1, sub_1D9117C24);
  v5 = sub_1D9111934(v4);

  *a3 = v5;
  return result;
}

unint64_t sub_1D9116ED8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v4 = (result + 40);
    while (1)
    {
      v41 = a2;
      v39 = v4;
      v40 = v3;
      v16 = *v4;
      v18 = v4[1];
      v17 = v4[2];
      v20 = v4[3];
      v19 = v4[4];
      v21 = *a3;
      v42 = *(v4 - 1);
      v22 = sub_1D8D1AC44(v42);
      v24 = v21[2];
      v25 = (v23 & 1) == 0;
      v26 = v24 + v25;
      if (__OFADD__(v24, v25))
      {
        break;
      }

      v27 = v22;
      v28 = v23;
      v29 = v21[3];
      v36 = v16;
      v37 = v18;
      v38 = v17;
      result = sub_1D8D1C3BC(v16, v18, v17);
      if (v29 >= v26)
      {
        if ((v41 & 1) == 0)
        {
          result = sub_1D8F85DE4();
        }
      }

      else
      {
        sub_1D8D1AD94(v26, v41 & 1);
        result = sub_1D8D1AC44(v42);
        if ((v28 & 1) != (v30 & 1))
        {
          goto LABEL_17;
        }

        v27 = result;
      }

      v31 = *a3;
      if (v28)
      {
        v5 = 40 * v27;
        v6 = (v31[7] + 40 * v27);
        v8 = *v6;
        v7 = v6[1];
        v9 = v6[2];
        v10 = v6[3];
        v11 = v6[4];
        sub_1D8D1C3BC(*v6, v7, v9);
        sub_1D8D1D59C(v36, v37, v38);
        v12 = (v31[7] + v5);
        v13 = *v12;
        v14 = v12[1];
        v15 = v12[2];
        *v12 = v8;
        v12[1] = v7;
        v12[2] = v9;
        v12[3] = v10;
        v12[4] = v11;
        result = sub_1D8D1D59C(v13, v14, v15);
      }

      else
      {
        v31[(v27 >> 6) + 8] |= 1 << v27;
        *(v31[6] + 8 * v27) = v42;
        v32 = (v31[7] + 40 * v27);
        *v32 = v16;
        v32[1] = v18;
        v32[2] = v38;
        v32[3] = v20;
        v32[4] = v19;
        v33 = v31[2];
        v34 = __OFADD__(v33, 1);
        v35 = v33 + 1;
        if (v34)
        {
          goto LABEL_16;
        }

        v31[2] = v35;
      }

      v4 = v39 + 6;
      a2 = 1;
      v3 = v40 - 1;
      if (v40 == 1)
      {
        return result;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    result = sub_1D9179CFC();
    __break(1u);
  }

  return result;
}

unint64_t sub_1D91170F8(unint64_t result, char a2, void *a3)
{
  v3 = *(result + 16);
  if (!v3)
  {
    return result;
  }

  LOBYTE(v5) = a2;
  v6 = result;
  v7 = *(result + 32);
  v8 = *(result + 40);
  v9 = *a3;
  result = sub_1D8D1AC44(v7);
  v11 = v9[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  LOBYTE(v15) = v10;
  if (v9[3] < v14)
  {
    sub_1D900AD3C(v14, v5 & 1);
    result = sub_1D8D1AC44(v7);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    result = sub_1D9179CFC();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    v17 = *a3;
    if (v15)
    {
      goto LABEL_8;
    }

LABEL_11:
    v17[(result >> 6) + 8] |= 1 << result;
    *(v17[6] + 8 * result) = v7;
    *(v17[7] + result) = v8;
    v19 = v17[2];
    v13 = __OFADD__(v19, 1);
    v20 = v19 + 1;
    if (v13)
    {
LABEL_24:
      __break(1u);
      return result;
    }

    v17[2] = v20;
    v15 = v3 - 1;
    if (v3 != 1)
    {
      goto LABEL_14;
    }

    return result;
  }

  v18 = result;
  sub_1D8F8635C();
  result = v18;
  v17 = *a3;
  if ((v15 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  *(v17[7] + result) = *(v17[7] + result);
  v15 = v3 - 1;
  if (v3 != 1)
  {
LABEL_14:
    v5 = (v6 + 56);
    v3 = 1;
    while (1)
    {
      v6 = *(v5 - 1);
      v8 = *v5;
      v21 = *a3;
      result = sub_1D8D1AC44(v6);
      v23 = v21[2];
      v24 = (v22 & 1) == 0;
      v13 = __OFADD__(v23, v24);
      v25 = v23 + v24;
      if (v13)
      {
        goto LABEL_23;
      }

      v7 = v22;
      if (v21[3] < v25)
      {
        sub_1D900AD3C(v25, 1);
        result = sub_1D8D1AC44(v6);
        if ((v7 & 1) != (v26 & 1))
        {
          goto LABEL_5;
        }
      }

      v27 = *a3;
      if (v7)
      {
        *(v27[7] + result) = *(v27[7] + result);
      }

      else
      {
        v27[(result >> 6) + 8] |= 1 << result;
        *(v27[6] + 8 * result) = v6;
        *(v27[7] + result) = v8;
        v28 = v27[2];
        v13 = __OFADD__(v28, 1);
        v29 = v28 + 1;
        if (v13)
        {
          goto LABEL_24;
        }

        v27[2] = v29;
      }

      v5 += 16;
      if (!--v15)
      {
        return result;
      }
    }
  }

  return result;
}

uint64_t sub_1D9117394(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 != 3)
  {
    return sub_1D8D1D59C(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D91173D0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t, void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(a1, *(v3 + 16));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

BOOL sub_1D9117414(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 2);
  switch(v3)
  {
    case 2:
      return *(a2 + 2) == 2;
    case 1:
      return *(a2 + 2) == 1;
    case 0:
      return !*(a2 + 2);
  }

  v5 = *(a2 + 2);
  if (v5 < 3)
  {
    return 0;
  }

  if ((*a1 ^ *a2))
  {
    return 0;
  }

  v6 = a1[24];
  v7 = *(a1 + 4);
  v8 = a2[24];
  v9 = *(a2 + 4);
  if (*(a1 + 1) == *(a2 + 1) && v3 == v5)
  {
    if ((v6 ^ v8))
    {
      return 0;
    }

    return v7 == v9;
  }

  v10 = sub_1D9179ACC();
  result = 0;
  if ((v10 & 1) != 0 && ((v6 ^ v8) & 1) == 0)
  {
    return v7 == v9;
  }

  return result;
}

uint64_t sub_1D9117514(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, char *))
{
  v20 = result;
  v6 = 0;
  v7 = 0;
  v8 = a3 + 64;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 64);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v17 = *(*(a3 + 48) + 8 * v16);
    v21 = *(*(a3 + 56) + v16);
    result = a4(v17, &v21);
    if (result)
    {
      *(v20 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v6++, 1))
      {
        __break(1u);
        return sub_1D8F11C20(v20, a2, v6, a3);
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      return sub_1D8F11C20(v20, a2, v6, a3);
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

void *sub_1D9117654(uint64_t a1, uint64_t (*a2)(uint64_t, char *))
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1D9117514(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1D91168A4(v10, v6, v4, a2);
  result = MEMORY[0x1DA72CB90](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1D9117800(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a2 + 16);
  v6[0] = *a2;
  v6[1] = v4;
  v7 = *(a2 + 32);
  return sub_1D9116650(a1, v6, v3) & 1;
}

unint64_t *sub_1D911783C(uint64_t a1, uint64_t (*a2)(uint64_t, void *))
{
  v4 = a1;
  v12[1] = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    MEMORY[0x1EEE9AC00](a1);
    v8 = v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1D9117C74(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_1D911678C(v10, v6, v4, a2);
  result = MEMORY[0x1DA72CB90](v10, -1, -1);
  if (!v2)
  {
    return v11;
  }

  return result;
}

uint64_t sub_1D91179E8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EpisodePlayState(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9117A4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7AE0, &qword_1D91B7E20);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D9117ABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D9117B24(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id sub_1D9117BB0(id result)
{
  if (result - 1 >= 2)
  {
    return result;
  }

  return result;
}

void sub_1D9117BC4(id a1)
{
  if (a1 - 1 >= 2)
  {
  }
}

double sub_1D9117C0C(id result, char a2)
{
  if (a2)
  {
    sub_1D9117BB0(result);
  }

  else
  {
  }

  return v2;
}

double sub_1D9117C18(id a1, char a2)
{
  if (a2)
  {
    sub_1D9117BC4(a1);
  }

  else
  {
  }

  return result;
}

BOOL sub_1D9117C24(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v4;
  v8 = *(a2 + 32);
  v5 = *(v3 + 16);
  v9[0] = *v3;
  v9[1] = v5;
  v10 = *(v3 + 32);
  return sub_1D9117414(v7, v9);
}

unint64_t *sub_1D9117C74(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, void *))
{
  v22 = result;
  v23 = 0;
  v4 = 0;
  v24 = a3 + 64;
  v5 = 1 << *(a3 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a3 + 64);
  v8 = (v5 + 63) >> 6;
  while (v7)
  {
    v9 = __clz(__rbit64(v7));
    v29 = (v7 - 1) & v7;
LABEL_11:
    v12 = v9 | (v4 << 6);
    v13 = *(*(a3 + 48) + 8 * v12);
    v25 = v12;
    v14 = (*(a3 + 56) + 40 * v12);
    v16 = *v14;
    v15 = v14[1];
    v17 = v14[2];
    v18 = v14[3];
    v19 = v14[4];
    v28[0] = v16;
    v28[1] = v15;
    v28[2] = v17;
    v28[3] = v18;
    v28[4] = v19;
    sub_1D8D1C3BC(v16, v15, v17);
    LOBYTE(v13) = a4(v13, v28);
    result = sub_1D8D1D59C(v16, v15, v17);
    v7 = v29;
    if (v13)
    {
      *(v22 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_1D8F119C4(v22, a2, v23, a3);
      }
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
      return sub_1D8F119C4(v22, a2, v23, a3);
    }

    v11 = *(v24 + 8 * v4);
    ++v10;
    if (v11)
    {
      v9 = __clz(__rbit64(v11));
      v29 = (v11 - 1) & v11;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t InMemoryStateStore.allAdamIDs<>(forConsolidatedState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[2];
  v9 = *(*v4 + 80);
  v10 = *(v5 + 88);
  v11 = a1;
  type metadata accessor for InMemoryStateCache(0, v9, v10, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
  sub_1D8D056BC(sub_1D9118758, &v8, v6);
  return v12;
}

Swift::Void __swiftcall InMemoryStateStore.register(remoteStates:)(Swift::OpaquePointer remoteStates)
{
  v2 = v1;
  v4 = *v1;
  v5 = *v1;
  rawValue = remoteStates._rawValue;
  v6 = *(v4 + 80);
  sub_1D8D4D2D8();
  v7 = sub_1D91780DC();
  WitnessTable = swift_getWitnessTable();
  if (Collection.isNotEmpty.getter(v7, WitnessTable))
  {
    if (qword_1ECAB34E8 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1ECAB77F8);
    swift_bridgeObjectRetain_n();
    v10 = sub_1D917741C();
    v11 = sub_1D9178D1C();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      rawValue = v36;
      *v12 = 136315394;
      v13 = sub_1D9179FEC();
      v35 = v11;
      v15 = sub_1D8CFA924(v13, v14, &rawValue);

      v34 = &v34;
      *(v12 + 4) = v15;
      *(v12 + 12) = 2080;
      v37 = remoteStates._rawValue;
      MEMORY[0x1EEE9AC00](v16);
      v17 = *(v5 + 88);
      v32 = v6;
      v33 = v17;
      v18 = v7;
      v19 = MEMORY[0x1E69E6158];
      v21 = sub_1D8D175AC(sub_1D911A65C, v31, v18, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v20);

      v22 = MEMORY[0x1DA729BD0](v21, v19);
      v24 = v23;

      v25 = sub_1D8CFA924(v22, v24, &rawValue);

      *(v12 + 14) = v25;
      _os_log_impl(&dword_1D8CEC000, v10, v35, "[%s] Registering remote states: %s", v12, 0x16u);
      v26 = v36;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v26, -1, -1);
      MEMORY[0x1DA72CB90](v12, -1, -1);
    }

    else
    {

      v27 = swift_bridgeObjectRelease_n();
      v17 = *(v5 + 88);
    }

    v28 = v2[2];
    MEMORY[0x1EEE9AC00](v27);
    v31[0] = v6;
    v31[1] = v17;
    v32 = remoteStates._rawValue;
    type metadata accessor for InMemoryStateCache(0, v6, v17, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
    sub_1D8D056BC(sub_1D9119458, &v30, v28);
    sub_1D91778BC();
  }
}

Swift::Void __swiftcall InMemoryStateStore.overrideAllState(withSnapshot:isInitialFetch:)(Swift::OpaquePointer withSnapshot, Swift::Bool isInitialFetch)
{
  v5 = *v3;
  v6 = v3[2];
  v9 = *(v5 + 80);
  v10 = *(v5 + 88);
  rawValue = withSnapshot._rawValue;
  type metadata accessor for InMemoryStateCache(0, v9, v10, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
  sub_1D8D056BC(sub_1D911A67C, &v8, v6);
  v7 = v12;
  sub_1D91778BC();
  if (!isInitialFetch)
  {
    v12 = v7;
    sub_1D91778BC();
  }
}

uint64_t InMemoryStateStore.__allocating_init()()
{
  v0 = swift_allocObject();
  InMemoryStateStore.init()();
  return v0;
}

void *InMemoryStateStore.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = *(*v0 + 80);
  v4 = *(v2 + 88);
  v10[0] = sub_1D9111718(v3);
  v10[1] = v5;
  v7 = type metadata accessor for InMemoryStateCache(0, v3, v4, v6);
  v8 = sub_1D8D0790C(v10, v7);

  v1[2] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAA88, &qword_1D91B9EB0);
  swift_allocObject();
  v1[3] = sub_1D91778DC();
  swift_allocObject();
  v1[4] = sub_1D91778DC();
  return v1;
}

uint64_t InMemoryStateStore.deinit()
{

  return v0;
}

uint64_t InMemoryStateStore.__deallocating_deinit()
{
  InMemoryStateStore.deinit();

  return swift_deallocClassInstance();
}

void InMemoryStateStore.state(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[2];
  v8 = *(*v4 + 80);
  v9 = *(v5 + 88);
  v10 = a1;
  type metadata accessor for InMemoryStateCache(0, v8, v9, a4);
  sub_1D91791BC();
  sub_1D8D056BC(sub_1D911A69C, &v7, v6);
}

void sub_1D9118600(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v14 = a3;
  v15 = a4;
  v16 = a2;
  v12[6] = a3;
  v12[7] = a4;
  v12[8] = sub_1D911A83C;
  v12[9] = &v13;
  sub_1D8D4D2D8();

  v17 = sub_1D91780BC();
  v12[2] = a3;
  v12[3] = a4;
  v8 = sub_1D91780DC();
  WitnessTable = swift_getWitnessTable();
  v11 = sub_1D8D175AC(sub_1D911A870, v12, v8, &type metadata for AdamID, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v10);

  *a5 = v11;
}

uint64_t sub_1D9118778@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v9 = &v13 - v8;
  (*(v10 + 16))(&v13 - v8, a1, TupleTypeMetadata2, v7);
  v11 = *(TupleTypeMetadata2 + 48);
  *a3 = *v9;
  return (*(*(a2 - 8) + 8))(&v9[v11], a2);
}

uint64_t sub_1D91188A0@<X0>(void *a3@<X8>)
{
  sub_1D8E40A10();
  v4 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v4);

  MEMORY[0x1DA7298F0](8250, 0xE200000000000000);
  swift_getTupleTypeMetadata2();
  result = sub_1D9179A8C();
  *a3 = 0;
  a3[1] = 0xE000000000000000;
  return result;
}

void sub_1D9118978(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v96 = a4;
  v116 = a1;
  v93 = a5;
  v7 = sub_1D91791BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v126 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v127 = &v91 - v8;
  v130 = v7;
  v9 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v94 = &v91 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v97 = &v91 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v91 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v91 - v18;
  v20 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v128 = &v91 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v117 = &v91 - v24;
  v25 = swift_getTupleTypeMetadata2();
  v113 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v113);
  v27 = &v91 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v112 = &v91 - v30;
  v31 = a2 + 64;
  v32 = a2;
  v33 = 1 << *(a2 + 32);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & *(a2 + 64);
  v124 = (v20 + 16);
  v129 = (v20 + 32);
  v110 = (v29 + 32);
  v111 = v25 - 8;
  v114 = (v33 + 63) >> 6;
  v115 = (v20 + 56);
  v36 = (v9 + 16);
  v102 = (v20 + 48);
  v99 = v20;
  v108 = (v20 + 8);
  v101 = (v9 + 8);
  v37 = a3;
  v92 = (v126 + 8);
  v100 = v32;

  v38 = 0;
  v95 = MEMORY[0x1E69E7CC0];
  v119 = v19;
  v120 = v16;
  v122 = v27;
  v123 = v25;
  v103 = v31;
  v121 = v36;
  v98 = v37;
LABEL_4:
  v39 = v114;
  while (v35)
  {
    v46 = v38;
LABEL_18:
    v49 = __clz(__rbit64(v35));
    v50 = (v35 - 1) & v35;
    v51 = v49 | (v46 << 6);
    v52 = *(*(v100 + 48) + 8 * v51);
    v53 = v99;
    v54 = v117;
    (*(v99 + 16))(v117, *(v100 + 56) + *(v99 + 72) * v51, v37);
    v27 = v122;
    v25 = v123;
    v55 = *(v123 + 48);
    *v122 = v52;
    (*(v53 + 32))(&v27[v55], v54, v37);
    v56 = 0;
    v36 = v121;
LABEL_19:
    v57 = *(v25 - 8);
    (*(v57 + 56))(v27, v56, 1, v25);
    v58 = v112;
    (*v110)();
    if ((*(v57 + 48))(v58, 1, v25) == 1)
    {

      *v93 = v95;
      return;
    }

    v125 = v50;
    v59 = v36;
    v60 = *v58;
    v61 = v128;
    v62 = v58 + *(v25 + 48);
    v118 = *v129;
    v118(v128, v62, v37);
    v63 = v37;
    v104 = v60;
    v131 = v60;
    v64 = sub_1D8D4D2D8();
    v65 = v119;
    v107 = v64;
    sub_1D91780FC();
    v66 = v120;
    v105 = *v124;
    v105(v120, v61, v37);
    v106 = *v115;
    v106(v66, 0, 1, v37);
    v67 = *(TupleTypeMetadata2 + 48);
    v68 = *v59;
    v44 = v127;
    v69 = v130;
    (*v59)(v127, v65, v130);
    v126 = v67;
    v70 = &v44[v67];
    v71 = v63;
    v68(v70, v66, v69);
    v72 = v65;
    v73 = *v102;
    if ((*v102)(v44, 1, v63) == 1)
    {
      v40 = *v101;
      v41 = v130;
      (*v101)(v66, v130);
      v40(v72, v41);
      v42 = v73(&v127[v126], 1, v63);
      v43 = v41;
      v44 = v127;
      v35 = v125;
      if (v42 != 1)
      {
        goto LABEL_26;
      }

      v37 = v71;
      v40(v127, v43);
      v45 = *v108;
    }

    else
    {
      v74 = v97;
      v68(v97, v44, v130);
      v75 = v126;
      if (v73(&v44[v126], 1, v63) == 1)
      {
        v82 = *v101;
        v83 = v130;
        (*v101)(v120, v130);
        v82(v119, v83);
        (*v108)(v74, v63);
        v35 = v125;
LABEL_26:
        (*v92)(v44, TupleTypeMetadata2);
LABEL_27:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v27 = v122;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v95 = sub_1D8ECC958(0, *(v95 + 2) + 1, 1, v95);
        }

        v25 = v123;
        v85 = v104;
        v87 = *(v95 + 2);
        v86 = *(v95 + 3);
        if (v87 >= v86 >> 1)
        {
          v95 = sub_1D8ECC958((v86 > 1), v87 + 1, 1, v95);
        }

        v88 = v95;
        *(v95 + 2) = v87 + 1;
        *&v88[8 * v87 + 32] = v85;
        v89 = v94;
        v90 = v98;
        v105(v94, v128, v98);
        v106(v89, 0, 1, v90);
        v131 = v85;
        sub_1D91780DC();
        sub_1D917810C();
        v37 = v90;
        (*v108)(v128, v90);
        v31 = v103;
        v36 = v121;
        goto LABEL_4;
      }

      v76 = &v44[v75];
      v77 = v117;
      v118(v117, v76, v63);
      LODWORD(v126) = sub_1D91781BC();
      v78 = v74;
      v45 = *v108;
      (*v108)(v77, v71);
      v79 = *v101;
      v80 = v44;
      v81 = v130;
      (*v101)(v120, v130);
      v79(v119, v81);
      v45(v78, v71);
      v79(v80, v81);
      v35 = v125;
      if ((v126 & 1) == 0)
      {
        goto LABEL_27;
      }

      v37 = v98;
    }

    v27 = v122;
    v45(v128, v37);
    v25 = v123;
    v31 = v103;
    v39 = v114;
    v36 = v121;
  }

  if (v39 <= v38 + 1)
  {
    v47 = v38 + 1;
  }

  else
  {
    v47 = v39;
  }

  v48 = v47 - 1;
  while (1)
  {
    v46 = v38 + 1;
    if (__OFADD__(v38, 1))
    {
      break;
    }

    if (v46 >= v39)
    {
      v50 = 0;
      v56 = 1;
      v38 = v48;
      goto LABEL_19;
    }

    v35 = *(v31 + 8 * v46);
    ++v38;
    if (v35)
    {
      v38 = v46;
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t InMemoryStateStore.registerInFlightStateChangeRequest(for:to:requestID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v4[2];
  v7 = *v4;
  v10 = *(*v4 + 80);
  v11 = *(v7 + 88);
  v12 = a1;
  v13 = a2;
  v14 = a3;
  type metadata accessor for InMemoryStateCache(0, v10, v11, a4);
  sub_1D8D056BC(sub_1D911A6D4, &v9, v6);
  v15 = a1;
  return sub_1D91778BC();
}

void sub_1D9119538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = *(a2 + 16);
  if (v6)
  {
    v9 = (a2 + 32);
    v10 = type metadata accessor for InMemoryStateCache(0, a5, a6, a4);
    do
    {
      v11 = *v9++;
      sub_1D9111370(v11, a3, a4, v10);
      --v6;
    }

    while (v6);
  }
}

uint64_t InMemoryStateStore.didSucceedInFlightRequest(for:requestID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *v4;
  v7 = v4[2];
  v10 = *(*v4 + 80);
  v11 = *(v6 + 88);
  v12 = a1;
  v13 = a2;
  type metadata accessor for InMemoryStateCache(0, v10, v11, a4);
  sub_1D8D056BC(sub_1D911A6F8, &v9, v7);
  v14 = a1;
  return sub_1D91778BC();
}

void sub_1D9119678(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v48 = a3;
  v49 = a5;
  v8 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v44 = &v36 - v9;
  sub_1D9176EAC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v11 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v43 = &v36 - v12;
  v13 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v51 = &v36 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + 16);
  if (v17)
  {
    v42 = v15;
    v18 = sub_1D91786FC();
    sub_1D8D4D2D8();
    v40 = (v11 + 8);
    v41 = (v13 + 16);
    v38 = (v13 + 8);
    v39 = (v13 + 56);
    v19 = &type metadata for AdamID;
    v20 = (a2 + 32);
    v46 = v18;
    v47 = a1;
    v37 = a4;
    do
    {
      v22 = *v20++;
      v21 = v22;
      v56 = v22;
      v23 = sub_1D91780FC();
      if (v53)
      {
        v50 = v21;
        v24 = v19;
        v56 = v53;
        v55 = v53;
        MEMORY[0x1EEE9AC00](v23);
        v25 = v48;
        v26 = v49;
        *(&v36 - 4) = a4;
        *(&v36 - 3) = v26;
        *(&v36 - 2) = v25;

        swift_getWitnessTable();
        v27 = v52;
        sub_1D9178BCC();
        v52 = v27;

        if (v54)
        {
        }

        else
        {
          v45 = v20;
          v28 = v53;
          v30 = v42;
          v29 = v43;
          sub_1D917872C();
          v31 = *v41;
          (*v41)(v51, &v29[*(v30 + 48)], a4);
          v32 = v29;
          v33 = v51;
          (*v40)(v32, v30);
          v34 = v44;
          v31(v44, v33, a4);
          (*v39)(v34, 0, 1, a4);
          v35 = v50;
          v53 = v50;
          sub_1D91780DC();
          sub_1D917810C();
          if (v28 < 0)
          {
            __break(1u);
            return;
          }

          v53 = 0;
          v54 = v28;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAB68, &qword_1D91B9938);
          swift_getWitnessTable();
          sub_1D8CF48EC(&qword_1ECABAB70, &qword_1ECABAB68, &qword_1D91B9938, MEMORY[0x1E69E5FB8]);
          sub_1D9178C1C();
          v53 = v56;
          v55 = v35;
          sub_1D91780DC();

          sub_1D917810C();
          a4 = v37;
          (*v38)(v51, v37);

          v20 = v45;
        }

        v19 = v24;
      }

      --v17;
    }

    while (v17);
  }
}

void InMemoryStateStore.didFailInFlightRequest(for:requestID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[2];
  v8 = *(*v4 + 80);
  v9 = *(v5 + 88);
  v10 = a1;
  v11 = a2;
  type metadata accessor for InMemoryStateCache(0, v8, v9, a4);
  sub_1D8D056BC(sub_1D911A718, &v7, v6);
}

void sub_1D9119BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v29 = a3;
  v30 = a5;
  v8 = sub_1D9176EAC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v25 = v22 - v11;
  v12 = *(a2 + 16);
  if (v12)
  {
    v13 = (a2 + 32);
    v23 = v10;
    sub_1D91786FC();
    v14 = sub_1D8D4D2D8();
    v28 = a4;
    v24 = v8;
    v22[0] = v8 - 8;
    v22[1] = a4 - 8;
    v26 = v14;
    v27 = a1;
    do
    {
      v17 = *v13++;
      v16 = v17;
      v35 = v17;
      v18 = sub_1D91780FC();
      if (v33)
      {
        v31 = v13;
        v32 = v33;
        v35 = v33;
        MEMORY[0x1EEE9AC00](v18);
        v19 = v28;
        v20 = v29;
        v21 = v30;
        v22[-4] = v28;
        v22[-3] = v21;
        v22[-2] = v20;

        swift_getWitnessTable();
        sub_1D9178BCC();

        if (v34)
        {
        }

        else
        {
          v15 = v25;
          sub_1D91786CC();
          (*(*(v19 - 8) + 8))(&v15[*(v23 + 48)], v19);
          (*(*(v24 - 8) + 8))(v15);
          v32 = v16;
          v33 = v35;
          sub_1D91780DC();
          sub_1D917810C();
        }

        v13 = v31;
      }

      --v12;
    }

    while (v12);
  }
}

void sub_1D9119EBC(void *a1@<X0>, uint64_t a2@<X1>, void *a5@<X8>)
{
  v16 = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
  v5 = sub_1D8D4D2D8();
  nullsub_1();
  v6 = sub_1D917809C();

  WitnessTable = swift_getWitnessTable();
  v7 = sub_1D9178B5C();
  nullsub_1();
  v15 = v8;
  v15 = MEMORY[0x1DA72A090](&v15, v7, &type metadata for AdamID, v6, v5, WitnessTable);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAB78, &unk_1D91B9940);
  sub_1D8CF48EC(&qword_1ECABAB80, &qword_1ECAB47C0, &qword_1D91B3E90, MEMORY[0x1E69E6348]);
  sub_1D8CF48EC(&qword_1ECABAB88, &qword_1ECABAB78, &unk_1D91B9940, MEMORY[0x1E69E6508]);
  sub_1D9178C2C();

  sub_1D91780BC();
  nullsub_1();
  v10 = v9;

  v15 = v10;
  sub_1D9178C2C();

  *a1 = a2;
  *a5 = v16;
}

uint64_t sub_1D911A1A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v44 = a5;
  v50 = a2;
  v7 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v43 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D91791BC();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v45 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = &v42 - v11;
  v13 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v49 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v42 - v20;
  v51 = a1;
  sub_1D8D4D2D8();
  sub_1D91780FC();
  v7[2](v18, v50, a4);
  (v7[7])(v18, 0, 1, a4);
  v46 = TupleTypeMetadata2;
  v22 = *(TupleTypeMetadata2 + 48);
  v23 = *(v13 + 16);
  v23(v12, v21, v9);
  v50 = v9;
  v23(&v12[v22], v18, v9);
  v47 = v7;
  v48 = a4;
  v24 = v7[6];
  if ((v24)(v12, 1, a4) != 1)
  {
    v23(v49, v12, v50);
    v28 = v48;
    v29 = (v24)(&v12[v22], 1, v48);
    v30 = v47;
    v31 = (v47 + 8);
    if (v29 != 1)
    {
      v34 = v43;
      (*(v47 + 4))(v43, &v12[v22], v28);
      v47 = v12;
      v35 = v28;
      v36 = v49;
      v37 = sub_1D91781BC();
      v38 = *(v30 + 1);
      v38(v34, v28);
      v39 = *(v13 + 8);
      v40 = v50;
      v39(v18, v50);
      v39(v21, v40);
      v38(v36, v35);
      v39(v47, v40);
      v27 = v37 ^ 1;
      return v27 & 1;
    }

    v32 = *(v13 + 8);
    v33 = v50;
    v32(v18, v50);
    v32(v21, v33);
    (*v31)(v49, v28);
    goto LABEL_6;
  }

  v25 = *(v13 + 8);
  v26 = v50;
  v25(v18, v50);
  v25(v21, v26);
  if ((v24)(&v12[v22], 1, v48) != 1)
  {
LABEL_6:
    (*(v45 + 8))(v12, v46);
    v27 = 1;
    return v27 & 1;
  }

  v25(v12, v50);
  v27 = 0;
  return v27 & 1;
}

uint64_t sub_1D911A8D8()
{
  if (*v0)
  {
    return 0x6465776F6C6C6F66;
  }

  else
  {
    return 0xD000000000000014;
  }
}

void sub_1D911A924(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000014 && 0x80000001D91D6ED0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x6465776F6C6C6F66 && a2 == 0xED000073776F6853)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1D911AA14(uint64_t a1)
{
  v2 = sub_1D911ACC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D911AA50(uint64_t a1)
{
  v2 = sub_1D911ACC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibrarySnapshot.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAB90, &unk_1D91B9950);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - v6;
  v8 = *v1;
  v10 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D911ACC4();

  sub_1D9179F1C();
  v12 = v8;
  v11 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
  sub_1D90BF004(&qword_1ECABA3D8, sub_1D8EF1720, MEMORY[0x1E69E6300]);
  sub_1D91799FC();

  if (!v2)
  {
    v12 = v10;
    v11 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABABA0, &qword_1D91B9960);
    sub_1D911AD18(&qword_1ECABABA8, sub_1D911AD90, MEMORY[0x1E69E6300]);
    sub_1D91799FC();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D911ACC4()
{
  result = qword_1ECABAB98;
  if (!qword_1ECABAB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABAB98);
  }

  return result;
}

uint64_t sub_1D911AD18(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABABA0, &qword_1D91B9960);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D911AD90()
{
  result = qword_1ECABABB0;
  if (!qword_1ECABABB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABABB0);
  }

  return result;
}

void LibrarySnapshot.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABABB8, &qword_1D91B9968);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D911ACC4();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB47C0, &qword_1D91B3E90);
    v12 = 0;
    sub_1D90BF004(&qword_1ECABA450, sub_1D8EF1774, MEMORY[0x1E69E6330]);
    sub_1D91798FC();
    v9 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABABA0, &qword_1D91B9960);
    v12 = 1;
    sub_1D911AD18(&qword_1ECABABC0, sub_1D911B074, MEMORY[0x1E69E6330]);
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    v10 = v13;
    *a2 = v9;
    a2[1] = v10;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

unint64_t sub_1D911B074()
{
  result = qword_1ECABABC8;
  if (!qword_1ECABABC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABABC8);
  }

  return result;
}

uint64_t LibrarySnapshotFollowedShow.name.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t LibrarySnapshotFollowedShow.artistName.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t LibrarySnapshotFollowedShow.init(adamId:name:artistName:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t sub_1D911B170()
{
  v1 = 1701667182;
  if (*v0 != 1)
  {
    v1 = 0x614E747369747261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64496D616461;
  }
}

uint64_t sub_1D911B1C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D911B9E0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D911B1EC(uint64_t a1)
{
  v2 = sub_1D911B438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D911B228(uint64_t a1)
{
  v2 = sub_1D911B438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t LibrarySnapshotFollowedShow.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABABD0, &qword_1D91B9970);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v12 - v6;
  v9 = *v1;
  v8 = v1[1];
  v10 = v1[3];
  v12[3] = v1[2];
  v12[4] = v8;
  v12[1] = v1[4];
  v12[2] = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D911B438();
  sub_1D9179F1C();
  v16 = v9;
  v15 = 0;
  sub_1D8EF1720();
  sub_1D91799FC();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v14 = 1;
  sub_1D91799BC();
  v13 = 2;
  sub_1D91799BC();
  return (*(v5 + 8))(v7, v4);
}

unint64_t sub_1D911B438()
{
  result = qword_1ECABABD8;
  if (!qword_1ECABABD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABABD8);
  }

  return result;
}

void LibrarySnapshotFollowedShow.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABABE0, &qword_1D91B9978);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D911B438();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v24 = 0;
    sub_1D8EF1774();
    sub_1D91798FC();
    v9 = v25;
    v23 = 1;
    v10 = sub_1D91798BC();
    v12 = v11;
    v21 = v10;
    v22 = 2;
    v13 = sub_1D91798BC();
    v15 = v14;
    v16 = *(v6 + 8);
    v20 = v13;
    v16(v8, v5);
    v17 = v20;
    v18 = v21;
    *a2 = v9;
    a2[1] = v18;
    a2[2] = v12;
    a2[3] = v17;
    a2[4] = v15;

    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }
}

uint64_t sub_1D911B710(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D911B758(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}