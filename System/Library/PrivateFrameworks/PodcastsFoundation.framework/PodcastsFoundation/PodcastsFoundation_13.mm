double sub_1D8E74A84(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;

  return result;
}

double sub_1D8E74AE0(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;

  return result;
}

uint64_t CoreDataEpisodeAndShowStorage.deinit()
{

  return v0;
}

uint64_t CoreDataEpisodeAndShowStorage.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D8E74DF0()
{
  result = qword_1ECAB4F80;
  if (!qword_1ECAB4F80)
  {
    sub_1D8CF2154(255, &qword_1EDCD5B70, 0x1E695D620);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4F80);
  }

  return result;
}

double sub_1D8E74E58(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t PendingDownloadRemovals.pendingDeletions.getter()
{
  v1 = *(v0 + OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

id PendingDownloadRemovals.__allocating_init(episodesPendingDeletion:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F98, &unk_1D918DE20);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = a1;
  *&v3[OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion] = v4;
  v6.receiver = v3;
  v6.super_class = v1;
  return objc_msgSendSuper2(&v6, sel_init);
}

void sub_1D8E7500C(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v8 = [v3 dataForKey_];

  if (v8)
  {
    v9 = sub_1D9176C8C();
    v11 = v10;

    sub_1D91769AC();
    swift_allocObject();
    sub_1D917699C();
    sub_1D8E76248();
    sub_1D917698C();

    sub_1D8D7567C(v9, v11);
  }

  else
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v12 = sub_1D917744C();
    __swift_project_value_buffer(v12, qword_1EDCD0F88);

    v13 = sub_1D917741C();
    v14 = sub_1D9178CEC();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v17 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1D8CFA924(a1, a2, &v17);
      _os_log_impl(&dword_1D8CEC000, v13, v14, "No user defaults value for key '%s'", v15, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      MEMORY[0x1DA72CB90](v16, -1, -1);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }

    *a3 = 0;
  }
}

id PendingDownloadRemovals.append(newDeletions:)()
{
  v1 = *(v0 + OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion);
  os_unfair_lock_lock(v1 + 6);
  sub_1D8E7612C(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);

  return v3;
}

void sub_1D8E754A0(uint64_t a1, uint64_t a2)
{

  v3 = sub_1D8FC0FD0(a2);

  sub_1D9111E68(v3);
}

Swift::Void __swiftcall PendingDownloadRemovals.append(episodes:)(Swift::OpaquePointer episodes)
{
  v2 = *(episodes._rawValue + 2);
  if (v2)
  {
    rawValue = episodes._rawValue;
    v12 = MEMORY[0x1E69E7CC0];
    sub_1D8E358F8(0, v2, 0);
    v4 = (rawValue + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v12 + 16);
      v8 = *(v12 + 24);

      if (v7 >= v8 >> 1)
      {
        episodes._rawValue = sub_1D8E358F8(v8 > 1, v7 + 1, 1);
      }

      *(v12 + 16) = v7 + 1;
      v9 = v12 + 24 * v7;
      *(v9 + 32) = v6;
      *(v9 + 40) = v5;
      *(v9 + 48) = 2;
      v4 += 2;
      --v2;
    }

    while (v2);
    v1 = v11;
  }

  v10 = *(v1 + OBJC_IVAR___PFPendingDownloadRemovals_episodesPendingDeletion);
  MEMORY[0x1EEE9AC00](episodes._rawValue);
  os_unfair_lock_lock(v10 + 6);
  sub_1D8E7629C(&v10[4]);
  os_unfair_lock_unlock(v10 + 6);
}

Swift::Void __swiftcall PendingDownloadRemovals.write(to:)(NSUserDefaults to)
{
  v2 = sub_1D917820C();
  sub_1D8E75704(v1, v2, v3);
}

uint64_t sub_1D8E75704(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v18[2] = a1;
  sub_1D91769EC();
  swift_allocObject();
  sub_1D91769DC();
  sub_1D91769BC();
  type metadata accessor for PendingDownloadRemovals();
  sub_1D8D8F8E0(&qword_1ECAB4FD8, &protocol conformance descriptor for PendingDownloadRemovals);
  v7 = sub_1D91769CC();
  v9 = v8;
  v10 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v4 setValue:v10 forKey:v11];

  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD0F88);

  v13 = sub_1D917741C();
  v14 = sub_1D9178CEC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1D8CFA924(a2, a3, v18);
    _os_log_impl(&dword_1D8CEC000, v13, v14, "Stored value for key '%s'", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1DA72CB90](v16, -1, -1);
    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  sub_1D8D7567C(v7, v9);
}

uint64_t sub_1D8E75AD0(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v18[2] = a1;
  sub_1D91769EC();
  swift_allocObject();
  sub_1D91769DC();
  sub_1D91769BC();
  sub_1D8E761F4();
  v7 = sub_1D91769CC();
  v9 = v8;
  v10 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v4 setValue:v10 forKey:v11];

  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD0F88);

  v13 = sub_1D917741C();
  v14 = sub_1D9178CEC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v18[0] = v16;
    *v15 = 136315138;
    *(v15 + 4) = sub_1D8CFA924(a2, a3, v18);
    _os_log_impl(&dword_1D8CEC000, v13, v14, "Stored value for key '%s'", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v16);
    MEMORY[0x1DA72CB90](v16, -1, -1);
    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  sub_1D8D7567C(v7, v9);
}

id PendingDownloadRemovals.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D8E75F98(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001D91CAE70 == a2)
  {

    v4 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v4 = v5 ^ 1;
  }

  *a3 = v4 & 1;
}

uint64_t sub_1D8E76038(uint64_t a1)
{
  v2 = sub_1D8D91FCC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8E76074(uint64_t a1)
{
  v2 = sub_1D8D91FCC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id PendingDownloadRemovals.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D8E761A0()
{
  result = qword_1ECAB4FC0;
  if (!qword_1ECAB4FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4FC0);
  }

  return result;
}

unint64_t sub_1D8E761F4()
{
  result = qword_1ECAB4FC8;
  if (!qword_1ECAB4FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4FC8);
  }

  return result;
}

unint64_t sub_1D8E76248()
{
  result = qword_1ECAB4FD0;
  if (!qword_1ECAB4FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4FD0);
  }

  return result;
}

uint64_t DebouncedEpisodeAndShowProcessor.__allocating_init(interval:dataSource:storage:delegate:workQueue:inverseBatchSize:)(void *a1, void *a2, void *a3, void *a4, uint64_t a5, double a6)
{
  v10 = a1[3];
  v21 = a1[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a1, v10);
  v13 = a2[3];
  v12 = a2[4];
  v14 = __swift_mutable_project_boxed_opaque_existential_1(a2, v13);
  v15 = a3[3];
  v16 = a3[4];
  v17 = __swift_mutable_project_boxed_opaque_existential_1(a3, v15);
  *(&v20 + 1) = v21;
  *&v20 = v12;
  v18 = sub_1D8E7B258(v11, v14, v17, a4, a5, a6, v24, v13, v10, v15, v20, v16);

  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v18;
}

void sub_1D8E763AC()
{
  v1 = *(v0 + 264);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if ((v2 & 0xFE) != 2)
  {

    sub_1D8E7AFB8();
  }
}

uint64_t sub_1D8E76414()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4B30, &unk_1D918E010);
  sub_1D8CF48EC(&qword_1EDCD0B48, &qword_1ECAB4B30, &unk_1D918E010, MEMORY[0x1E695BF80]);
  sub_1D9177A6C();
}

uint64_t sub_1D8E764E8(uint64_t a1, uint64_t a2)
{
  sub_1D8CFD9D8(a2, v4);
  swift_beginAccess();
  sub_1D8E7B7C0(v4, a1 + 152);
  return swift_endAccess();
}

uint64_t sub_1D8E76584(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t), uint64_t a4, uint64_t a5)
{
  v10 = sub_1D9177E0C();
  v21 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_1D9177E9C();
  v13 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19[1] = *(v5 + 16);
  sub_1D8CFD9D8(a1, v24);
  v16 = swift_allocObject();
  *(v16 + 16) = v5;
  a3(v24, v16 + 24);
  aBlock[4] = a4;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = a5;
  v17 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFBBF8(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v15, v12, v17);
  _Block_release(v17);
  (*(v21 + 8))(v12, v10);
  (*(v13 + 8))(v15, v20);
}

uint64_t sub_1D8E7686C(uint64_t a1, uint64_t a2)
{
  sub_1D8CFD9D8(a2, v4);
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((a1 + 112));
  sub_1D8D6BCE0(v4, a1 + 112);
  return swift_endAccess();
}

uint64_t sub_1D8E768E8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5168, &qword_1D918E2E8);
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v47 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v45 - v5;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5170, &qword_1D918E2F0);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v48 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5178, &qword_1D918E2F8);
  v54 = *(v8 - 8);
  v55 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v50 = &v45 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5180, &qword_1D918E300);
  v57 = *(v10 - 8);
  v58 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v45 - v11;
  v12 = sub_1D9176EAC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176E9C();
  v16 = sub_1D9176E5C();
  v18 = v17;
  (*(v13 + 8))(v15, v12);
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v19 = sub_1D917744C();
  __swift_project_value_buffer(v19, qword_1EDCD0F20);

  v20 = sub_1D917741C();
  v21 = sub_1D9178CDC();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v60 = v23;
    *v22 = 136315394;
    v24 = sub_1D8E7B02C();
    v26 = v16;
    v27 = sub_1D8CFA924(v24, v25, &v60);

    *(v22 + 4) = v27;
    v16 = v26;
    *(v22 + 12) = 2080;
    *(v22 + 14) = sub_1D8CFA924(v26, v18, &v60);
    _os_log_impl(&dword_1D8CEC000, v20, v21, "%s Starting to rebuild predicate: %s", v22, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v23, -1, -1);
    MEMORY[0x1DA72CB90](v22, -1, -1);
  }

  v46 = v16;
  v28 = sub_1D8E7775C(v16, v18);
  v29 = *(v1 + 16);
  v30 = sub_1D9178DBC();
  (*(*(v30 - 8) + 56))(v6, 1, 1, v30);
  v59 = v28;
  v60 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5120, &qword_1D918E2A0);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0B68, &qword_1ECAB5120, &qword_1D918E2A0, MEMORY[0x1E695BED8]);
  sub_1D8D02DF0();
  v31 = v1;
  v32 = v47;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A68, &qword_1ECAB5168, &qword_1D918E2E8, MEMORY[0x1E695BCB8]);
  v33 = v48;
  v34 = v53;
  sub_1D9177CEC();

  (*(v52 + 8))(v32, v34);
  sub_1D8D08A50(v6, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8CF48EC(&qword_1ECAB0490, &qword_1ECAB5170, &qword_1D918E2F0, MEMORY[0x1E695BE98]);
  v36 = v50;
  v35 = v51;
  sub_1D9177C8C();
  (*(v49 + 8))(v33, v35);
  sub_1D8CF2154(0, &unk_1EDCD0970, 0x1E696AB28);
  sub_1D8CF48EC(&qword_1ECAB0638, &qword_1ECAB5178, &qword_1D918E2F8, MEMORY[0x1E695BE38]);
  v37 = v55;
  v38 = v56;
  sub_1D9177B9C();
  (*(v54 + 8))(v36, v37);
  v39 = swift_allocObject();
  v40 = v46;
  v39[2] = v31;
  v39[3] = v40;
  v39[4] = v18;
  v41 = swift_allocObject();
  v41[2] = v31;
  v41[3] = v40;
  v41[4] = v18;
  sub_1D8CF48EC(&qword_1ECAB0770, &qword_1ECAB5180, &qword_1D918E300, MEMORY[0x1E695BD60]);
  swift_retain_n();

  v42 = v58;
  v43 = sub_1D9177BCC();

  (*(v57 + 8))(v38, v42);
  *(v31 + 232) = v43;
}

void sub_1D8E77124(void *a2@<X8>)
{
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v3 = sub_1D91785DC();
  v4 = [objc_opt_self() orPredicateWithSubpredicates_];

  *a2 = v4;
}

uint64_t sub_1D8E771A8(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  swift_beginAccess();
  sub_1D8E7B67C(a2 + 152, &v26);
  if (v27)
  {
    sub_1D8D6BCE0(&v26, v28);
    if (v7)
    {
      v8 = v29;
      v9 = v30;
      __swift_project_boxed_opaque_existential_1(v28, v29);
      v10 = *(v9 + 32);
      v11 = v7;
      v10(a2, v7, v8, v9);
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  else
  {
    sub_1D8D08A50(&v26, &qword_1ECAB4FE0, &qword_1D918E020);
  }

  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD0F20);
  v13 = v7;

  v14 = sub_1D917741C();
  v15 = sub_1D9178D1C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28[0] = v17;
    *v16 = 136315650;
    v18 = sub_1D8E7B02C();
    v20 = sub_1D8CFA924(v18, v19, v28);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2080;
    *(v16 + 14) = sub_1D8CFA924(a3, a4, v28);
    *(v16 + 22) = 2080;
    *&v26 = v7;
    v21 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5070, &qword_1D918F5B0);
    v22 = sub_1D917826C();
    v24 = sub_1D8CFA924(v22, v23, v28);

    *(v16 + 24) = v24;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "%s Completed predicate rebuild (%s):  %s", v16, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v17, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  *(a2 + 232) = 0;
}

uint64_t sub_1D8E77460(void **a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1EDCD0F20);

  v9 = v7;
  v10 = sub_1D917741C();
  v11 = sub_1D9178D1C();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v26[0] = v22;
    *v12 = 136315650;
    v14 = sub_1D8E7B02C();
    v16 = sub_1D8CFA924(v14, v15, v26);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2080;
    *(v12 + 14) = sub_1D8CFA924(a3, a4, v26);
    *(v12 + 22) = 2112;
    *(v12 + 24) = v9;
    *v13 = v9;
    v17 = v9;
    _os_log_impl(&dword_1D8CEC000, v10, v11, "%s Received new predicate for build (%s): %@", v12, 0x20u);
    sub_1D8D08A50(v13, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v13, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v22, -1, -1);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  sub_1D917791C();

  v18 = v26[0];
  v26[0] = v9;

  sub_1D917790C();

  swift_beginAccess();
  sub_1D8E7B67C(a2 + 152, v26);
  if (v26[3])
  {
    sub_1D8CFD9D8(v26, v23);
    sub_1D8D08A50(v26, &qword_1ECAB4FE0, &qword_1D918E020);
    v19 = v24;
    v20 = v25;
    __swift_project_boxed_opaque_existential_1(v23, v24);
    (*(v20 + 8))(a2, v18, v9, v19, v20);

    return __swift_destroy_boxed_opaque_existential_1Tm(v23);
  }

  else
  {

    return sub_1D8D08A50(v26, &qword_1ECAB4FE0, &qword_1D918E020);
  }
}

uint64_t sub_1D8E7775C(uint64_t a1, uint64_t a2)
{
  v41 = a1;
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5128, &qword_1D918E2A8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v40 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5130, &qword_1D918E2B0);
  v43 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5138, &qword_1D918E2B8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v40 - v12;
  sub_1D8CFD9D8(v2 + 24, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5140, &qword_1D918E2C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5148, &qword_1D918E2C8);
  if (swift_dynamicCast())
  {
    sub_1D8D6BCE0(&v44, v48);
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1EDCD0F20);

    v15 = sub_1D917741C();
    v16 = sub_1D9178D1C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v42 = v11;
      v18 = v17;
      v19 = swift_slowAlloc();
      v47[0] = v19;
      *v18 = 136315138;
      v20 = sub_1D8E7B02C();
      v22 = sub_1D8CFA924(v20, v21, v47);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D8CEC000, v15, v16, "%s Using episode-only predicate", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1DA72CB90](v19, -1, -1);
      v23 = v18;
      v11 = v42;
      MEMORY[0x1DA72CB90](v23, -1, -1);
    }

    v24 = v49;
    v25 = v50;
    __swift_project_boxed_opaque_existential_1(v48, v49);
    v47[0] = (*(v25 + 16))(v24, v25);
    sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
    sub_1D9177A0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D91779DC();
    (*(v43 + 8))(v9, v7);
    sub_1D8CF48EC(&qword_1ECAAFBA8, &qword_1ECAB5138, &qword_1D918E2B8, MEMORY[0x1E695C0C8]);
    v26 = sub_1D9177B1C();
    (*(v11 + 8))(v13, v10);
LABEL_13:
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
    return v26;
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1D8D08A50(&v44, &qword_1ECAB5150, &qword_1D918E2D0);
  sub_1D8CFD9D8(v2 + 24, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5158, &qword_1D918E2D8);
  if (swift_dynamicCast())
  {
    sub_1D8D6BCE0(&v44, v48);
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v27 = sub_1D917744C();
    __swift_project_value_buffer(v27, qword_1EDCD0F20);

    v28 = sub_1D917741C();
    v29 = sub_1D9178D1C();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v47[0] = v31;
      *v30 = 136315138;
      v32 = sub_1D8E7B02C();
      v34 = sub_1D8CFA924(v32, v33, v47);

      *(v30 + 4) = v34;
      _os_log_impl(&dword_1D8CEC000, v28, v29, "%s Using per-show predicate", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v31);
      MEMORY[0x1DA72CB90](v31, -1, -1);
      MEMORY[0x1DA72CB90](v30, -1, -1);
    }

    sub_1D8E77F88(v41, v42, v48, v6);
    sub_1D8CF48EC(&qword_1ECAB0768, &qword_1ECAB5128, &qword_1D918E2A8, MEMORY[0x1E695BD60]);
    v26 = sub_1D9177B1C();
    (*(v4 + 8))(v6, v3);
    goto LABEL_13;
  }

  v46 = 0;
  v44 = 0u;
  v45 = 0u;
  sub_1D8D08A50(&v44, &qword_1ECAB5160, &qword_1D918E2E0);
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v35 = sub_1D917744C();
  __swift_project_value_buffer(v35, qword_1EDCD0F20);
  v36 = sub_1D917741C();
  v37 = sub_1D9178CFC();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&dword_1D8CEC000, v36, v37, "Received an invalid data source with the base protocol. Nothing will be evaluated", v38, 2u);
    MEMORY[0x1DA72CB90](v38, -1, -1);
  }

  v48[0] = [objc_opt_self() falsePredicate];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  sub_1D9177A0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D91779DC();
  (*(v43 + 8))(v9, v7);
  sub_1D8CF48EC(&qword_1ECAAFBA8, &qword_1ECAB5138, &qword_1D918E2B8, MEMORY[0x1E695C0C8]);
  v26 = sub_1D9177B1C();
  (*(v11 + 8))(v13, v10);
  return v26;
}

uint64_t sub_1D8E77F88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v72 = a2;
  v71 = a1;
  v86 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50D8, &qword_1D918E258);
  v8 = *(v7 - 8);
  v84 = v7;
  v85 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v83 = &v54 - v9;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50E0, &qword_1D918E260);
  v10 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v54 - v14;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50E8, &qword_1D918E268);
  v69 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v58 = &v54 - v16;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50F0, &qword_1D918E270);
  v76 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v66 = &v54 - v17;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50F8, &qword_1D918E278);
  v80 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v70 = &v54 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5100, &qword_1D918E280);
  v20 = *(v19 - 8);
  v78 = v19;
  v79 = v20;
  MEMORY[0x1EEE9AC00](v19);
  v73 = &v54 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5108, &qword_1D918E288);
  v23 = *(v22 - 8);
  v81 = v22;
  v82 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v75 = &v54 - v24;
  v60 = v5[32];
  v25 = v5[11];
  v26 = v5[12];
  __swift_project_boxed_opaque_existential_1(v5 + 8, v25);
  v59 = a3;
  v28 = a3[3];
  v27 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v28);
  v29 = (*(v27 + 16))(v28, v27);
  v30 = (*(v26 + 40))(v29, v25, v26);

  v64 = v5[2];
  v31 = v64;
  v63 = sub_1D9178DBC();
  v32 = *(v63 - 8);
  v62 = *(v32 + 56);
  v65 = v32 + 56;
  v62(v15, 1, 1, v63);
  *&v87 = v31;
  v88 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50B8, &unk_1D918E230);
  v33 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0B88, &qword_1ECAB50B8, &unk_1D918E230, MEMORY[0x1E695BED8]);
  v34 = sub_1D8D02DF0();
  v57 = v33;
  v56 = v34;
  sub_1D9177D3C();
  v61 = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&qword_1ECAB0A70, &qword_1ECAB50E0, &qword_1D918E260, MEMORY[0x1E695BCB8]);
  v35 = v58;
  v55 = v15;
  v36 = v67;
  sub_1D9177CEC();

  (*(v10 + 8))(v12, v36);
  sub_1D8D08A50(v15, &qword_1ECAB4D70, &unk_1D918BCE0);
  v37 = swift_allocObject();
  v38 = v71;
  v37[2] = v5;
  v37[3] = v38;
  v37[4] = v72;

  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5110, &qword_1D918E290);
  v72 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB0498, &qword_1ECAB50E8, &qword_1D918E268, MEMORY[0x1E695BE98]);
  sub_1D8CF48EC(&unk_1EDCD0C00, &qword_1ECAB5110, &qword_1D918E290, MEMORY[0x1E695BE60]);
  v39 = v66;
  v40 = v68;
  sub_1D9177CBC();

  (*(v69 + 8))(v35, v40);
  sub_1D8CFD9D8(v59, &v87);
  v41 = swift_allocObject();
  *(v41 + 16) = v5;
  sub_1D8D6BCE0(&v87, v41 + 24);
  v71 = sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5118, &qword_1D918E298);
  v42 = MEMORY[0x1E695BE40];
  sub_1D8CF48EC(&qword_1ECAB0550, &qword_1ECAB50F0, &qword_1D918E270, MEMORY[0x1E695BE40]);
  sub_1D8CF48EC(&qword_1EDCD0C98, &qword_1ECAB5118, &qword_1D918E298, MEMORY[0x1E695BD80]);
  v43 = v70;
  v44 = v74;
  sub_1D9177CBC();

  (*(v76 + 8))(v39, v44);
  v45 = v55;
  v62(v55, 1, 1, v63);
  *&v87 = v64;
  sub_1D8CF48EC(&qword_1ECAB0560, &qword_1ECAB50F8, &qword_1D918E278, v42);
  v46 = v83;
  v47 = v77;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0998, &qword_1ECAB50D8, &qword_1D918E258, v61);
  v48 = v73;
  v49 = v84;
  sub_1D9177CEC();
  (*(v85 + 8))(v46, v49);
  sub_1D8D08A50(v45, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v80 + 8))(v43, v47);
  sub_1D8CF48EC(&qword_1ECAB03B8, &qword_1ECAB5100, &qword_1D918E280, v72);
  v50 = v75;
  v51 = v78;
  sub_1D9177C8C();
  (*(v79 + 8))(v48, v51);
  sub_1D8CF48EC(&qword_1ECAB0630, &qword_1ECAB5108, &qword_1D918E288, MEMORY[0x1E695BE38]);
  v52 = v81;
  sub_1D9177B9C();
  return (*(v82 + 8))(v50, v52);
}

uint64_t sub_1D8E78AD4(uint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v7 = sub_1D917744C();
  __swift_project_value_buffer(v7, qword_1EDCD0F20);

  v8 = sub_1D917741C();
  v9 = sub_1D9178CEC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136315650;
    v12 = sub_1D8E7B02C();
    v14 = sub_1D8CFA924(v12, v13, &v19);

    *(v10 + 4) = v14;
    *(v10 + 12) = 2080;
    *(v10 + 14) = sub_1D8CFA924(a3, a4, &v19);
    *(v10 + 22) = 2080;
    v15 = MEMORY[0x1DA729BD0](v6, MEMORY[0x1E69E6158]);
    v17 = sub_1D8CFA924(v15, v16, &v19);

    *(v10 + 24) = v17;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "%s Building new predicate for shows (%s): %s", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  v19 = v6;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D8CF48EC(&unk_1EDCD0A58, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6328]);
  return sub_1D917773C();
}

uint64_t sub_1D8E78D50(uint64_t *a1, uint64_t a2, void *a3)
{
  v5 = *a1;
  v4 = a1[1];
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F20);

  v7 = sub_1D917741C();
  v8 = sub_1D9178CEC();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17 = v10;
    *v9 = 136315394;
    v11 = sub_1D8E7B02C();
    v13 = sub_1D8CFA924(v11, v12, &v17);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *(v9 + 14) = sub_1D8CFA924(v5, v4, &v17);
    _os_log_impl(&dword_1D8CEC000, v7, v8, "%s Constructing predicate for show %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v10, -1, -1);
    MEMORY[0x1DA72CB90](v9, -1, -1);
  }

  v14 = a3[3];
  v15 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v14);
  v17 = (*(v15 + 24))(v5, v4, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5120, &qword_1D918E2A0);
  sub_1D8CF48EC(&qword_1EDCD0B68, &qword_1ECAB5120, &qword_1D918E2A0, MEMORY[0x1E695BED8]);
  sub_1D9177BAC();
}

uint64_t sub_1D8E78FA0()
{
  v1 = v0;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5080, &qword_1D918E1F8);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = v39 - v2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5088, &qword_1D918E200);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v4 = v39 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v39 - v6;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5090, &qword_1D918E208);
  v47 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v9 = v39 - v8;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5098, &qword_1D918E210);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v11 = v39 - v10;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50A0, &qword_1D918E218);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v48 = v39 - v12;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50A8, &qword_1D918E220);
  v57 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v53 = v39 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50B0, &qword_1D918E228);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v58 = v39 - v14;

  sub_1D917791C();

  v15 = v70;
  swift_beginAccess();
  sub_1D8E7B67C((v0 + 19), &v70);
  if (v71)
  {
    sub_1D8CFD9D8(&v70, &v67);
    sub_1D8D08A50(&v70, &qword_1ECAB4FE0, &qword_1D918E020);
    v16 = v68;
    v17 = v69;
    __swift_project_boxed_opaque_existential_1(&v67, v68);
    (*(v17 + 16))(v0, v15, v16, v17);
    __swift_destroy_boxed_opaque_existential_1Tm(&v67);
  }

  else
  {
    sub_1D8D08A50(&v70, &qword_1ECAB4FE0, &qword_1D918E020);
  }

  v18 = v0[11];
  v19 = v0[12];
  __swift_project_boxed_opaque_existential_1(v0 + 8, v18);
  *&v70 = (*(v19 + 48))(v15, v18, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50B8, &unk_1D918E230);
  v54 = v15;
  v41 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1EDCD0B88, &qword_1ECAB50B8, &unk_1D918E230, MEMORY[0x1E695BED8]);
  sub_1D9177C4C();

  v44 = v0[2];
  v20 = v44;
  v43 = sub_1D9178DBC();
  v21 = *(v43 - 8);
  v42 = *(v21 + 56);
  v45 = v21 + 56;
  v42(v7, 1, 1, v43);
  *&v70 = v20;
  v22 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0C78, &qword_1ECAB5090, &qword_1D918E208, MEMORY[0x1E695BDE0]);
  v23 = sub_1D8D02DF0();
  v24 = v46;
  v39[2] = v22;
  v39[1] = v23;
  sub_1D9177D3C();
  v40 = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&qword_1ECAB09D8, &qword_1ECAB5088, &qword_1D918E200, MEMORY[0x1E695BCB8]);
  v25 = v52;
  sub_1D9177CEC();
  (*(v51 + 8))(v4, v25);
  sub_1D8D08A50(v7, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v47 + 8))(v9, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB4F30, &qword_1D918DA90);
  v52 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB0400, &qword_1ECAB5098, &qword_1D918E210, MEMORY[0x1E695BE98]);
  v26 = v48;
  v27 = v50;
  sub_1D9177B9C();
  (*(v49 + 8))(v11, v27);
  swift_beginAccess();
  sub_1D8CFD9D8((v1 + 14), &v70);
  sub_1D8D6BCE0(&v70, &v67);
  v28 = swift_allocObject();
  sub_1D8D6BCE0(&v67, v28 + 16);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1D8E7B6EC;
  *(v29 + 24) = v28;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5048, &unk_1D918E1E0);
  sub_1D8CF48EC(&qword_1ECAB0738, &qword_1ECAB50A0, &qword_1D918E218, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1EDCD0B60, &qword_1ECAB5048, &unk_1D918E1E0, v41);
  v30 = v53;
  v31 = v56;
  sub_1D9177CBC();

  (*(v55 + 8))(v26, v31);
  v42(v7, 1, 1, v43);
  *&v70 = v44;
  sub_1D8CF48EC(&unk_1ECAB05C8, &qword_1ECAB50A8, &qword_1D918E220, MEMORY[0x1E695BE40]);
  v32 = v62;
  v33 = v59;
  sub_1D9177D3C();
  sub_1D8CF48EC(&unk_1ECAB09A8, &qword_1ECAB5080, &qword_1D918E1F8, v40);
  v34 = v58;
  v35 = v64;
  sub_1D9177CEC();
  (*(v63 + 8))(v32, v35);
  sub_1D8D08A50(v7, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v57 + 8))(v30, v33);
  sub_1D8CF48EC(&qword_1ECAB03C8, &qword_1ECAB50B0, &qword_1D918E228, v52);

  v36 = v61;
  v37 = sub_1D9177BCC();

  (*(v60 + 8))(v34, v36);
  v1[30] = v37;

  sub_1D8CFD9D8((v1 + 14), &v67);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50C0, &qword_1D918E240);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB50C8, &qword_1D918E248);
  if (swift_dynamicCast())
  {
    sub_1D8D6BCE0(v65, &v70);
    sub_1D8E79ECC(&v70);

    return __swift_destroy_boxed_opaque_existential_1Tm(&v70);
  }

  else
  {

    v66 = 0;
    memset(v65, 0, sizeof(v65));
    return sub_1D8D08A50(v65, &qword_1ECAB50D0, &qword_1D918E250);
  }
}

uint64_t sub_1D8E79C38(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1EDCD0F20);

  v5 = v3;
  v6 = sub_1D917741C();
  v7 = sub_1D9178D1C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25[0] = v9;
    *v8 = 136315394;
    v10 = sub_1D8E7B02C();
    v12 = sub_1D8CFA924(v10, v11, v25);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v22[0] = v3;
    v13 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5070, &qword_1D918F5B0);
    v14 = sub_1D917826C();
    v16 = sub_1D8CFA924(v14, v15, v25);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "%s Finished update for new matches: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  *(a2 + 240) = 0;

  swift_beginAccess();
  sub_1D8E7B67C(a2 + 152, v25);
  if (!v25[3])
  {
    return sub_1D8D08A50(v25, &qword_1ECAB4FE0, &qword_1D918E020);
  }

  sub_1D8CFD9D8(v25, v22);
  sub_1D8D08A50(v25, &qword_1ECAB4FE0, &qword_1D918E020);
  v17 = v23;
  v18 = v24;
  __swift_project_boxed_opaque_existential_1(v22, v23);
  v19 = *(v18 + 24);
  v20 = v3;
  v19(a2, v3, v17, v18);

  return __swift_destroy_boxed_opaque_existential_1Tm(v22);
}

uint64_t sub_1D8E79ECC(uint64_t a1)
{
  v2 = v1;
  v76 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FF0, &qword_1D918E190);
  v4 = *(v3 - 8);
  v80 = v3;
  v81 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v79 = v55 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FF8, &unk_1D918E198);
  v7 = *(v6 - 8);
  v66 = v6;
  v67 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = v55 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v55 - v11;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5000, &qword_1D918E1A8);
  v57 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v14 = v55 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5008, &qword_1D918E1B0);
  v16 = *(v15 - 8);
  v68 = v15;
  v69 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v58 = v55 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5010, &qword_1D918E1B8);
  v19 = *(v18 - 8);
  v72 = v18;
  v73 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v65 = v55 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5018, &qword_1D918E1C0);
  v22 = *(v21 - 8);
  v74 = v21;
  v75 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v70 = v55 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5020, &qword_1D918E1C8);
  v25 = *(v24 - 8);
  v77 = v24;
  v78 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v71 = v55 - v26;
  v27 = v1[11];
  v28 = v1[12];
  __swift_project_boxed_opaque_existential_1(v1 + 8, v27);

  sub_1D917791C();

  v29 = *&v82[0];
  v30 = [*&v82[0] NOT];

  v31 = (*(v28 + 56))(v30, v27, v28);
  *&v82[0] = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5028, &qword_1D918E1D0);
  v63 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1ECAB0360, &qword_1ECAB5028, &qword_1D918E1D0, MEMORY[0x1E695BED8]);
  sub_1D9177C4C();

  v61 = v2[2];
  v32 = v61;
  v60 = sub_1D9178DBC();
  v33 = *(v60 - 8);
  v59 = *(v33 + 56);
  v62 = v33 + 56;
  v59(v12, 1, 1, v60);
  *&v82[0] = v32;
  v34 = sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1ECAB06C0, &qword_1ECAB5000, &qword_1D918E1A8, MEMORY[0x1E695BDE0]);
  v35 = sub_1D8D02DF0();
  v36 = v64;
  v55[1] = v34;
  v55[0] = v35;
  sub_1D9177D3C();
  v56 = MEMORY[0x1E695BCB8];
  sub_1D8CF48EC(&qword_1ECAB5030, &qword_1ECAB4FF8, &unk_1D918E198, MEMORY[0x1E695BCB8]);
  v37 = v58;
  v38 = v66;
  sub_1D9177CEC();
  (*(v67 + 8))(v9, v38);
  sub_1D8D08A50(v12, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v57 + 8))(v14, v36);
  v39 = v2[13];
  *(swift_allocObject() + 16) = v39;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5038, &qword_1D918E1D8);
  v67 = MEMORY[0x1E695BE98];
  sub_1D8CF48EC(&qword_1ECAB5040, &qword_1ECAB5008, &qword_1D918E1B0, MEMORY[0x1E695BE98]);
  sub_1D8CF48EC(&qword_1ECAB0520, &qword_1ECAB5038, &qword_1D918E1D8, MEMORY[0x1E695BE60]);
  v40 = v65;
  v41 = v68;
  sub_1D9177CAC();

  (*(v69 + 8))(v37, v41);
  sub_1D8CFD9D8(v76, v82);
  v42 = swift_allocObject();
  sub_1D8D6BCE0(v82, v42 + 16);
  v43 = swift_allocObject();
  *(v43 + 16) = sub_1D8E7B610;
  *(v43 + 24) = v42;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5048, &unk_1D918E1E0);
  v44 = MEMORY[0x1E695BE40];
  sub_1D8CF48EC(&qword_1ECAB5050, &qword_1ECAB5010, &qword_1D918E1B8, MEMORY[0x1E695BE40]);
  sub_1D8CF48EC(&qword_1EDCD0B60, &qword_1ECAB5048, &unk_1D918E1E0, v63);
  v45 = v70;
  v46 = v72;
  sub_1D9177CBC();

  (*(v73 + 8))(v40, v46);
  v59(v12, 1, 1, v60);
  *&v82[0] = v61;
  sub_1D8CF48EC(&qword_1ECAB5058, &qword_1ECAB5018, &qword_1D918E1C0, v44);
  v47 = v79;
  v48 = v74;
  v49 = v45;
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB5060, &qword_1ECAB4FF0, &qword_1D918E190, v56);
  v50 = v71;
  v51 = v80;
  sub_1D9177CEC();
  (*(v81 + 8))(v47, v51);
  sub_1D8D08A50(v12, &qword_1ECAB4D70, &unk_1D918BCE0);
  (*(v75 + 8))(v49, v48);
  sub_1D8CF48EC(&qword_1ECAB5068, &qword_1ECAB5020, &qword_1D918E1C8, v67);

  v52 = v77;
  v53 = sub_1D9177BCC();

  (*(v78 + 8))(v50, v52);
  v2[31] = v53;
}

BOOL sub_1D8E7A9E0(unint64_t *a1)
{
  if (*a1 >> 62)
  {
    v1 = sub_1D917935C();
  }

  else
  {
    v1 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v1 != 0;
}

unint64_t *sub_1D8E7AA28(unint64_t *result, uint64_t a2)
{
  v3 = *result;
  if (*result >> 62)
  {
    result = sub_1D917935C();
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else if (a2)
  {
LABEL_3:
    v4 = swift_allocObject();
    *(v4 + 16) = a2;
    *(v4 + 24) = v3;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5078, &qword_1D918E1F0);
    sub_1D8CF48EC(&qword_1ECAAFBB8, &qword_1ECAB5078, &qword_1D918E1F0, MEMORY[0x1E69E6CC8]);
    sub_1D917841C();
  }

  __break(1u);
  return result;
}

void sub_1D8E7AB3C(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = *a1 + a2;
  if (__OFADD__(*a1, a2))
  {
    goto LABEL_37;
  }

  v4 = a3;
  v6 = a4;
  v5 = (a3 >> 62);
  if (a3 >> 62)
  {
    goto LABEL_38;
  }

  v9 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v9 < v8)
  {
    v8 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v8 >= v7)
  {
    if (v9 >= v7)
    {
      do
      {
        if (v7 < 0)
        {
          goto LABEL_44;
        }

        if (v5)
        {
          v10 = sub_1D917935C();
        }

        else
        {
          v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        if (v10 < v8)
        {
          goto LABEL_45;
        }

        if (v8 < 0)
        {
          goto LABEL_46;
        }

        if ((v4 & 0xC000000000000001) == 0 || v7 == v8)
        {

          if (!v5)
          {
            goto LABEL_19;
          }
        }

        else
        {
          if (v7 >= v8)
          {
            goto LABEL_49;
          }

          sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);

          v11 = v7;
          do
          {
            v12 = v11 + 1;
            sub_1D91794AC();
            v11 = v12;
          }

          while (v8 != v12);
          if (!v5)
          {
LABEL_19:
            v13 = (v4 & 0xFFFFFFFFFFFFFF8) + 32;
            goto LABEL_22;
          }
        }

        sub_1D917975C();
        v13 = v14;
        v7 = v15;
        v8 = v16 >> 1;
LABEL_22:
        v17 = v8 - v7;
        if (__OFSUB__(v8, v7))
        {
          goto LABEL_47;
        }

        if (!v17)
        {
          swift_unknownObjectRelease();
          v4 = MEMORY[0x1E69E7CC0];
LABEL_35:
          v25 = sub_1D8FC0FD0(v4);

          *v6 = v25;
          return;
        }

        v28 = MEMORY[0x1E69E7CC0];
        sub_1D8E358F8(0, v17 & ~(v17 >> 63), 0);
        if (v17 < 0)
        {
          goto LABEL_48;
        }

        v27 = v6;
        v4 = v28;
        if (v8 <= v7)
        {
          v18 = v7;
        }

        else
        {
          v18 = v8;
        }

        v8 = v18 - v7;
        v5 = (v13 + 8 * v7);
        v6 = 24;
        while (v8)
        {
          v20 = *(v28 + 16);
          v19 = *(v28 + 24);
          v7 = v20 + 1;
          v21 = *v5;
          if (v20 >= v19 >> 1)
          {
            v23 = v19 > 1;
            v24 = v21;
            sub_1D8E358F8(v23, v20 + 1, 1);
            v21 = v24;
          }

          *(v28 + 16) = v7;
          v22 = v28 + 24 * v20;
          *(v22 + 32) = v21;
          *(v22 + 40) = 0;
          *(v22 + 48) = 1;
          --v8;
          ++v5;
          if (!--v17)
          {
            swift_unknownObjectRelease();
            v6 = v27;
            goto LABEL_35;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        v26 = sub_1D917935C();
        if (v26 < v8)
        {
          v8 = v26;
        }

        if (v8 < v7)
        {
          goto LABEL_43;
        }
      }

      while (sub_1D917935C() >= v7);
    }

    __break(1u);
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
}

uint64_t sub_1D8E7ADDC(void **a1, uint64_t a2)
{
  v3 = *a1;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1EDCD0F20);

  v5 = v3;
  v6 = sub_1D917741C();
  v7 = sub_1D9178D1C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v18 = v9;
    *v8 = 136315394;
    v10 = sub_1D8E7B02C();
    v12 = sub_1D8CFA924(v10, v11, &v18);

    *(v8 + 4) = v12;
    *(v8 + 12) = 2080;
    v13 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5070, &qword_1D918F5B0);
    v14 = sub_1D917826C();
    v16 = sub_1D8CFA924(v14, v15, &v18);

    *(v8 + 14) = v16;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "%s Finished update for inverted matches: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  *(a2 + 248) = 0;
}

void sub_1D8E7AFDC(uint64_t a1)
{
  v1 = *(a1 + 264);
  os_unfair_lock_lock((v1 + 20));
  if (*(v1 + 16) == 2)
  {
    *(v1 + 16) = 3;
  }

  os_unfair_lock_unlock((v1 + 20));
}

uint64_t sub_1D8E7B02C()
{
  if (v0[35])
  {
    v1 = v0[34];
  }

  else
  {
    v2 = v0[6];
    v3 = v0[7];
    __swift_project_boxed_opaque_existential_1(v0 + 3, v2);
    v4 = (*(v3 + 8))(v2, v3);
    MEMORY[0x1DA7298F0](v4);

    MEMORY[0x1DA7298F0](0x737365636F725020, 0xEB000000005D726FLL);
    v1 = 91;
    v0[34] = 91;
    v0[35] = 0xE100000000000000;
  }

  return v1;
}

uint64_t DebouncedEpisodeAndShowProcessor.deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 112));
  sub_1D8D08A50(v0 + 152, &qword_1ECAB4FE0, &qword_1D918E020);

  return v0;
}

uint64_t DebouncedEpisodeAndShowProcessor.__deallocating_deinit()
{
  DebouncedEpisodeAndShowProcessor.deinit();

  return swift_deallocClassInstance();
}

uint64_t DebouncedEpisodeAndShowProcessor.State.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E7B258(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, double a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, uint64_t a12)
{
  v35 = a4;
  v36 = a5;
  v32 = a2;
  v33 = a3;
  v30 = a1;
  v34 = a11;
  v15 = *(a10 - 8);
  v31 = a12;
  MEMORY[0x1EEE9AC00](a1);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v30 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v30 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for DebouncedEpisodeAndShowProcessor();
  v28 = swift_allocObject();
  (*(v24 + 16))(v27, v30, a9);
  (*(v19 + 16))(v22, v32, a8);
  (*(v15 + 16))(v17, v33, a10);
  return sub_1D8DB866C(v27, v22, v17, v35, v36, v28, a8, a9, a6, a10, v34, *(&v34 + 1), v31);
}

unint64_t sub_1D8E7B4D8()
{
  result = qword_1ECAB4FE8;
  if (!qword_1ECAB4FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4FE8);
  }

  return result;
}

uint64_t sub_1D8E7B610(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 16))(a1, v3, v4);
}

uint64_t sub_1D8E7B67C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FE0, &qword_1D918E020);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E7B6EC(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

uint64_t objectdestroy_69Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1D8E7B7C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4FE0, &qword_1D918E020);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D8E7B838(BOOL *a1@<X8>)
{
  v3 = *(v1 + 264);
  os_unfair_lock_lock((v3 + 20));
  v4 = *(v3 + 16);
  os_unfair_lock_unlock((v3 + 20));
  *a1 = v4 != 1;
}

uint64_t StorageChangeStream.init()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for StorageChangeStream.StorageChange(255, a1, a1, a2);
  sub_1D91778EC();
  *a3 = sub_1D91778CC();

  swift_getWitnessTable();
  sub_1D9177C2C();
  sub_1D91776DC();
  swift_getWitnessTable();
  v4 = sub_1D9177B1C();

  a3[1] = v4;
  return result;
}

uint64_t sub_1D8E7BAE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v27 = a5;
  v29 = a1;
  v26 = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v23 - v11;
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v19 = &v23 - v18;
  v25 = *v28;
  (*(v13 + 16))(v16, v29, a3);
  sub_1D91783FC();
  swift_getAssociatedConformanceWitness();
  v28 = v19;
  v29 = AssociatedTypeWitness;
  sub_1D91791DC();
  v20 = *(v7 + 48);
  if (v20(v12, 1, v6) != 1)
  {
    v21 = *(v7 + 32);
    do
    {
      v21(v9, v12, v6);
      v30 = v25;
      v27(v9, v26);
      (*(v7 + 8))(v9, v6);
      sub_1D91791DC();
    }

    while (v20(v12, 1, v6) != 1);
  }

  return (*(v24 + 8))(v28, v29);
}

uint64_t sub_1D8E7BE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = type metadata accessor for StorageChangeStream.StorageChange(0, v4, v4, *(a2 + 24));
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v11 - v8;
  (*(*(v4 - 8) + 16))(&v11 - v8, a1, v4, v7);
  swift_storeEnumTagMultiPayload();
  sub_1D91778BC();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1D8E7BF80(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_23;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    if (v8 < 2)
    {
LABEL_23:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_23;
  }

LABEL_12:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_1D8E7C08C(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 24) - 8) + 64);
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
        goto LABEL_37;
      }

      goto LABEL_34;
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
LABEL_37:
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
            goto LABEL_37;
          }
        }

LABEL_34:
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
      goto LABEL_37;
    }

    goto LABEL_34;
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

LABEL_23:
      a1[v5] = -a2;
      return;
    }

LABEL_22:
    if (!a2)
    {
      return;
    }

    goto LABEL_23;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_22;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_23;
  }
}

uint64_t DeletionDownloadConsistencyIssueResolutionStrategy.resolution(for:)(uint64_t a1)
{
  v2 = type metadata accessor for DownloadConsistency.Issue(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D8E7C4CC(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1D8E7C530(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D8, &qword_1D918E630);
  swift_allocObject();
  v9[1] = sub_1D9177A5C();
  sub_1D8E7C598();
  v7 = sub_1D9177B1C();

  return v7;
}

uint64_t sub_1D8E7C384(void (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51E0, &qword_1D918E6A8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v15[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v15[-v9];
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15[-v12];
  sub_1D8E7C5FC(a3, v7);
  swift_storeEnumTagMultiPayload();
  sub_1D8E7CB80(v7, v10);
  sub_1D8E7CB80(v10, v13);
  a1(v13);
  return sub_1D8E7CBF0(v13);
}

uint64_t sub_1D8E7C4CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadConsistency.Issue(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E7C530(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadConsistency.Issue(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D8E7C598()
{
  result = qword_1ECAB0270;
  if (!qword_1ECAB0270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB51D8, &qword_1D918E630);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB0270);
  }

  return result;
}

uint64_t sub_1D8E7C5FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DownloadConsistency.Issue(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E7C4CC(a1, v10);
  if (swift_getEnumCaseMultiPayload() > 1)
  {
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0);
    (*(v5 + 32))(v7, &v10[*(v19 + 48)], v4);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51E8, qword_1D918E6B0);
    v20 = *(*(type metadata accessor for DownloadedAssetEffect(0) - 8) + 80);
    v25 = a1;
    v21 = (v20 + 32) & ~v20;
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D9189080;
    (*(v5 + 16))(v17 + v21, v7, v4);
    a1 = v25;
    swift_storeEnumTagMultiPayload();
    (*(v5 + 8))(v7, v4);
    v22 = sub_1D9176EAC();
    (*(*(v22 - 8) + 8))(v10, v22);
  }

  else
  {
    v11 = &v10[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48)];
    v12 = *v11;
    v13 = *(v11 + 1);
    v14 = sub_1D9176EAC();
    (*(*(v14 - 8) + 8))(v10, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51E8, qword_1D918E6B0);
    v15 = *(type metadata accessor for DownloadedAssetEffect(0) - 8);
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_1D9189080;
    v18 = (v17 + v16);
    *v18 = v12;
    v18[1] = v13;
    swift_storeEnumTagMultiPayload();
  }

  sub_1D8E7C4CC(a1, a2);
  result = type metadata accessor for DownloadConsistency.IssueResolution(0);
  *(a2 + *(result + 20)) = v17;
  return result;
}

uint64_t sub_1D8E7C9B4(uint64_t a1)
{
  v2 = type metadata accessor for DownloadConsistency.Issue(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1D8E7C4CC(a1, v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v6 = swift_allocObject();
  sub_1D8E7C530(v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v6 + v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D8, &qword_1D918E630);
  swift_allocObject();
  v9[1] = sub_1D9177A5C();
  sub_1D8E7C598();
  v7 = sub_1D9177B1C();

  return v7;
}

uint64_t sub_1D8E7CB00(void (*a1)(_BYTE *), uint64_t a2)
{
  v5 = *(type metadata accessor for DownloadConsistency.Issue(0) - 8);
  v6 = v2 + ((*(v5 + 80) + 16) & ~*(v5 + 80));

  return sub_1D8E7C384(a1, a2, v6);
}

uint64_t sub_1D8E7CB80(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51E0, &qword_1D918E6A8);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E7CBF0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51E0, &qword_1D918E6A8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8E7CC84(uint64_t a1, void *a2, uint64_t a3)
{
  v24 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51F0, &qword_1D918E7A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - v7;
  v9 = type metadata accessor for DownloadConsistency.Issue(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51F8, &unk_1D918E7B0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  if (a2[2])
  {
    v16 = a2[7];
    v17 = a2[8];
    v23 = v13;
    __swift_project_boxed_opaque_existential_1(a2 + 4, v16);
    v25 = (*(v17 + 8))(a1, v16, v17);
    sub_1D8E7C4CC(a1, &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
    v18 = (*(v10 + 80) + 24) & ~*(v10 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = v24;
    sub_1D8E7C530(&v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v19 + v18);
    *(v19 + ((v11 + v18 + 7) & 0xFFFFFFFFFFFFFFF8)) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5200, &qword_1D918EE00);
    sub_1D8CF48EC(&qword_1EDCD0BB8, &qword_1ECAB5200, &qword_1D918EE00, MEMORY[0x1E695BED8]);
    sub_1D9177BDC();

    sub_1D8CF48EC(&qword_1ECAB06F8, &qword_1ECAB51F8, &unk_1D918E7B0, MEMORY[0x1E695BDA0]);
    v20 = sub_1D9177B1C();
    (*(v23 + 8))(v15, v12);
  }

  else
  {
    sub_1D8E7D62C();
    v25 = swift_allocError();
    type metadata accessor for DownloadConsistency.IssueResolution(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D91779AC();
    sub_1D8CF48EC(&unk_1ECAB5210, &qword_1ECAB51F0, &qword_1D918E7A8, MEMORY[0x1E695BFF8]);
    v20 = sub_1D9177B1C();
    (*(v6 + 8))(v8, v5);
  }

  return v20;
}

void sub_1D8E7D098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v31 = a3;
  v32 = a6;
  v33 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51F0, &qword_1D918E7A8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - v11;
  v13 = type metadata accessor for DownloadConsistency.Issue(0);
  v30 = *(v13 - 8);
  v14 = *(v30 + 64);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51F8, &unk_1D918E7B0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v28 - v18;
  if (a5 >> 1 == a4)
  {
    sub_1D8E7D62C();
    v35[0] = swift_allocError();
    type metadata accessor for DownloadConsistency.IssueResolution(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    sub_1D91779AC();
    sub_1D8CF48EC(&unk_1ECAB5210, &qword_1ECAB51F0, &qword_1D918E7A8, MEMORY[0x1E695BFF8]);
    sub_1D9177B1C();
    (*(v10 + 8))(v12, v9);
  }

  else if ((a5 >> 1) <= a4)
  {
    __break(1u);
  }

  else
  {
    v28 = a5;
    v29 = v17;
    v20 = v31;
    sub_1D8CFD9D8(v31 + 40 * a4, v35);
    v22 = v36;
    v21 = v37;
    __swift_project_boxed_opaque_existential_1(v35, v36);
    v34 = (*(v21 + 8))(a1, v22, v21);
    sub_1D8E7C4CC(a1, &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
    v23 = (*(v30 + 80) + 24) & ~*(v30 + 80);
    v24 = (v14 + v23 + 7) & 0xFFFFFFFFFFFFFFF8;
    v25 = swift_allocObject();
    *(v25 + 16) = v32;
    sub_1D8E7C530(v15, v25 + v23);
    v26 = (v25 + v24);
    *v26 = v33;
    v26[1] = v20;
    v27 = v28;
    v26[2] = a4;
    v26[3] = v27;

    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5200, &qword_1D918EE00);
    sub_1D8CF48EC(&qword_1EDCD0BB8, &qword_1ECAB5200, &qword_1D918EE00, MEMORY[0x1E695BED8]);
    sub_1D9177BDC();

    sub_1D8CF48EC(&qword_1ECAB06F8, &qword_1ECAB51F8, &unk_1D918E7B0, MEMORY[0x1E695BDA0]);
    sub_1D9177B1C();
    (*(v29 + 8))(v19, v16);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
  }
}

uint64_t getEnumTagSinglePayload for AutoDownloadRetentionPolicyHistory(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for AutoDownloadRetentionPolicyHistory(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D8E7D580(void *a1@<X8>)
{
  v3 = *(type metadata accessor for DownloadConsistency.Issue(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  sub_1D8E7D098(v1 + v4, v5, v5 + 32, *(v5 + 16) != 0, (2 * *(v5 + 16)) | 1, *(v1 + 16));
  *a1 = v6;
}

unint64_t sub_1D8E7D62C()
{
  result = qword_1ECAB5208;
  if (!qword_1ECAB5208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5208);
  }

  return result;
}

uint64_t sub_1D8E7D680@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, void *a4@<X8>)
{
  v7 = sub_1D8F4CD70();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  swift_unknownObjectRetain();
  sub_1D8E7D098(a2, v7, v9, v11, v13, a1);
  v15 = v14;
  result = swift_unknownObjectRelease();
  *a4 = v15;
  return result;
}

uint64_t sub_1D8E7D71C@<X0>(void *a1@<X8>)
{
  v3 = *(type metadata accessor for DownloadConsistency.Issue(0) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D8E7D680(v4, v5, a1);
}

uint64_t CoreDataDownloadPersistence.__allocating_init(libraryContext:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_1D8E7D814(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5220, &unk_1D918E7D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = swift_allocObject();
  *(v7 + 16) = v1;
  *(v7 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5228, &qword_1D918E7E0);
  swift_allocObject();

  v8 = a1;
  v11[1] = sub_1D9177A5C();
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5230, &qword_1D918E7E8);
  sub_1D8CF48EC(&unk_1EDCD0AC8, &qword_1ECAB5228, &qword_1D918E7E0, MEMORY[0x1E695C038]);
  sub_1D8CF48EC(&qword_1EDCD0C10, &unk_1ECAB5230, &qword_1D918E7E8, MEMORY[0x1E695BE60]);
  sub_1D9177CAC();

  sub_1D8CF48EC(&qword_1EDCD0C38, &qword_1ECAB5220, &unk_1D918E7D0, MEMORY[0x1E695BE40]);
  v9 = sub_1D9177B1C();
  (*(v4 + 8))(v6, v3);
  return v9;
}

void sub_1D8E7DA78(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  v9 = *(a3 + 16);
  v10 = swift_allocObject();
  v10[2] = sub_1D8D419F0;
  v10[3] = v8;
  v10[4] = a3;
  v10[5] = a4;
  v13[4] = sub_1D8E7E04C;
  v13[5] = v10;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1D8CF5F60;
  v13[3] = &block_descriptor_10;
  v11 = _Block_copy(v13);

  v12 = a4;

  [v9 performBlock_];
  _Block_release(v11);
}

void sub_1D8E7DBB0(void (*a1)(void *, void, __n128), int a2, int a3, id a4)
{
  [a4 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v5 = sub_1D917908C();
  v6 = sub_1D8FBED0C(v5);

  if (!v6)
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  (a1)(v6, 0);

  sub_1D8D99898(v6, 0);
}

uint64_t sub_1D8E7DC94(uint64_t *a1)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
  sub_1D8CF48EC(&qword_1EDCD0A68, &unk_1ECAB5240, qword_1D918E860, MEMORY[0x1E69E6328]);
  return sub_1D917773C();
}

uint64_t CoreDataDownloadPersistence.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E7DD94(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5220, &unk_1D918E7D0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = *v1;
  v8 = swift_allocObject();
  *(v8 + 16) = v7;
  *(v8 + 24) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5228, &qword_1D918E7E0);
  swift_allocObject();

  v9 = a1;
  v12[1] = sub_1D9177A5C();
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5230, &qword_1D918E7E8);
  sub_1D8CF48EC(&unk_1EDCD0AC8, &qword_1ECAB5228, &qword_1D918E7E0, MEMORY[0x1E695C038]);
  sub_1D8CF48EC(&qword_1EDCD0C10, &unk_1ECAB5230, &qword_1D918E7E8, MEMORY[0x1E695BE60]);
  sub_1D9177CAC();

  sub_1D8CF48EC(&qword_1EDCD0C38, &qword_1ECAB5220, &unk_1D918E7D0, MEMORY[0x1E695BE40]);
  v10 = sub_1D9177B1C();
  (*(v4 + 8))(v6, v3);
  return v10;
}

void DownloadedAssetEffect.hash(into:)(uint64_t a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DownloadedAssetEffect(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E7E674(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v10 = 0;
    goto LABEL_5;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v10 = 1;
LABEL_5:
    MEMORY[0x1DA72B390](v10);
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

    return;
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x1DA72B390](2);
  sub_1D8D68B38(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1D917814C();
  (*(v3 + 8))(v5, v2);
}

uint64_t DownloadedAssetEffect.hashValue.getter()
{
  sub_1D9179DBC();
  DownloadedAssetEffect.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E7E2B0()
{
  sub_1D9179DBC();
  DownloadedAssetEffect.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E7E2F4(uint64_t a1)
{
  sub_1D9179DBC();
  DownloadedAssetEffect.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation21DownloadedAssetEffectO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v31 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DownloadedAssetEffect(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v30 - v11);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v30 - v14);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5268, &qword_1D918E9B8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v30 - v17;
  v20 = (&v30 + *(v19 + 56) - v17);
  sub_1D8E7E674(a1, &v30 - v17);
  sub_1D8E7E674(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D8E7E674(v18, v15);
    v23 = *v15;
    v22 = v15[1];
    if (!swift_getEnumCaseMultiPayload())
    {
LABEL_4:
      if (v23 == *v20 && v22 == v20[1])
      {
      }

      else
      {
        v25 = sub_1D9179ACC();

        if ((v25 & 1) == 0)
        {
          sub_1D8E7E788(v18);
LABEL_16:
          v27 = 0;
          return v27 & 1;
        }
      }

      sub_1D8E7E788(v18);
      v27 = 1;
      return v27 & 1;
    }

    goto LABEL_11;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D8E7E674(v18, v12);
    v23 = *v12;
    v22 = v12[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      goto LABEL_4;
    }

LABEL_11:

LABEL_15:
    sub_1D8E7E720(v18);
    goto LABEL_16;
  }

  sub_1D8E7E674(v18, v9);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v31 + 8))(v9, v4);
    goto LABEL_15;
  }

  v26 = v31;
  (*(v31 + 32))(v6, v20, v4);
  v27 = sub_1D9176B8C();
  v28 = *(v26 + 8);
  v28(v6, v4);
  v28(v9, v4);
  sub_1D8E7E788(v18);
  return v27 & 1;
}

uint64_t sub_1D8E7E674(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DownloadedAssetEffect(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8E7E720(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5268, &qword_1D918E9B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8E7E788(uint64_t a1)
{
  v2 = type metadata accessor for DownloadedAssetEffect(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D8E7E7E4(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v20 = a1;
  v21 = a2;
  v19 = sub_1D9176C2C();
  v6 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (!v9)
  {
    return v10;
  }

  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8E31404(0, v9, 0);
  v10 = v22;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v11 = a3 + v18;
  v17 = (v6 + 32);
  v12 = *(v6 + 72);
  while (1)
  {
    v20(v11);
    if (v4)
    {
      break;
    }

    v4 = 0;
    v22 = v10;
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    if (v14 >= v13 >> 1)
    {
      sub_1D8E31404((v13 > 1), v14 + 1, 1);
      v10 = v22;
    }

    *(v10 + 16) = v14 + 1;
    (*v17)(v10 + v18 + v14 * v12, v8, v19);
    v11 += v12;
    if (!--v9)
    {
      return v10;
    }
  }

  __break(1u);
  return result;
}

char *sub_1D8E7E9A0(void (*a1)(uint64_t *__return_ptr, id *, uint64_t *), uint64_t a2, unint64_t a3)
{
  v4 = v3;
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D917935C())
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!i)
    {
      return v7;
    }

    v22 = MEMORY[0x1E69E7CC0];
    result = sub_1D8E314FC(0, i & ~(i >> 63), 0);
    if (i < 0)
    {
      break;
    }

    v9 = 0;
    v7 = v22;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if ((a3 & 0xC000000000000001) != 0)
      {
        v11 = MEMORY[0x1DA72AA90](v9, a3);
      }

      else
      {
        if (v9 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v11 = *(a3 + 8 * v9 + 32);
      }

      v12 = v11;
      v20 = v11;
      a1(&v21, &v20, &v19);
      if (v4)
      {

        return v7;
      }

      v13 = i;

      v14 = v21;
      v22 = v7;
      v16 = *(v7 + 16);
      v15 = *(v7 + 24);
      if (v16 >= v15 >> 1)
      {
        sub_1D8E314FC((v15 > 1), v16 + 1, 1);
        v7 = v22;
      }

      *(v7 + 16) = v16 + 1;
      *(v7 + 8 * v16 + 32) = v14;
      ++v9;
      i = v13;
      v17 = v10 == v13;
      v4 = 0;
      if (v17)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  __break(1u);
  return result;
}

void sub_1D8E7EB44(void (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17 = a1;
  v18 = a2;
  v16 = sub_1D91774DC();
  v6 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a3 + 16);
  if (v9)
  {
    v20 = MEMORY[0x1E69E7CC0];
    sub_1D8E315BC(0, v9, 0);
    v10 = v20;
    v15 = v6 + 32;
    for (i = (a3 + 40); ; i += 2)
    {
      v12 = *i;
      v19[0] = *(i - 1);
      v19[1] = v12;

      v17(v19);
      if (v4)
      {
        break;
      }

      v4 = 0;

      v20 = v10;
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_1D8E315BC((v13 > 1), v14 + 1, 1);
        v10 = v20;
      }

      *(v10 + 16) = v14 + 1;
      (*(v6 + 32))(v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v14, v8, v16);
      if (!--v9)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t AbandonedStreamIssueIdentifier.issues(for:)(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for DownloadConsistency.Issue(0);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  v3 = sub_1D9176C2C();
  v1[6] = v3;
  v1[7] = *(v3 - 8);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8E7EE5C, 0, 0);
}

uint64_t sub_1D8E7EE5C()
{
  v58 = v0;
  v1 = v0[10];
  v2 = v0[6];
  v3 = v0[7];
  v4 = v0[2];
  v5 = v4[8];
  v6 = v4[9];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v5);
  (*(v6 + 80))(v5, v6);
  sub_1D9176B2C();
  v53 = *(v3 + 8);
  v53(v1, v2);
  sub_1D8E6A330();
  v7 = v0[12];
  (*(v0[7] + 32))(v7, v0[11], v0[6]);
  v8 = v4[8];
  v9 = v4[9];
  __swift_project_boxed_opaque_existential_1(v4 + 5, v8);
  v10 = MEMORY[0x1E69E7CC0];
  v11 = (*(v9 + 64))(v7, MEMORY[0x1E69E7CC0], 0, v8, v9);
  v12 = v0[12];
  v13 = v11;
  v14 = swift_task_alloc();
  *(v14 + 16) = v12;
  v15 = sub_1D8E7E7E4(sub_1D8E7F704, v14, v13);

  v16 = *(v15 + 16);
  v17 = v53;
  if (v16)
  {
    v18 = v0[7];
    v49 = v0[4];
    v56 = v10;
    result = sub_1D8E313C0(0, v16, 0);
    v20 = 0;
    v21 = v56;
    v48 = v15 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v50 = v18;
    v52 = v15;
    v51 = v16;
    while (v20 < *(v15 + 16))
    {
      v55 = v21;
      v22 = *(v50 + 16);
      v22(v0[9], v48 + *(v50 + 72) * v20, v0[6]);
      if (qword_1EDCD0F18 != -1)
      {
        swift_once();
      }

      v24 = v0[8];
      v23 = v0[9];
      v25 = v0[6];
      v26 = sub_1D917744C();
      __swift_project_value_buffer(v26, qword_1EDCD0F20);
      v54 = v22;
      v22(v24, v23, v25);
      v27 = sub_1D917741C();
      v28 = sub_1D9178CDC();
      v29 = os_log_type_enabled(v27, v28);
      v30 = v0[8];
      v31 = v0[6];
      if (v29)
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v57 = v33;
        *v32 = 136315138;
        sub_1D8E3E9A0();
        v34 = sub_1D9179A4C();
        v36 = v35;
        v37 = v31;
        v17 = v53;
        v53(v30, v37);
        v38 = sub_1D8CFA924(v34, v36, &v57);

        *(v32 + 4) = v38;
        _os_log_impl(&dword_1D8CEC000, v27, v28, "Identified unowned stream file: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x1DA72CB90](v33, -1, -1);
        MEMORY[0x1DA72CB90](v32, -1, -1);
      }

      else
      {

        v39 = v31;
        v17 = v53;
        v53(v30, v39);
      }

      v40 = v0[9];
      v42 = v0[5];
      v41 = v0[6];
      v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0);
      v54(v42 + *(v43 + 48), v40, v41);
      sub_1D9176E9C();
      swift_storeEnumTagMultiPayload();
      v17(v40, v41);
      v21 = v55;
      v45 = *(v55 + 16);
      v44 = *(v55 + 24);
      if (v45 >= v44 >> 1)
      {
        sub_1D8E313C0((v44 > 1), v45 + 1, 1);
        v21 = v55;
      }

      ++v20;
      v46 = v0[5];
      *(v21 + 16) = v45 + 1;
      result = sub_1D8E7C530(v46, v21 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + *(v49 + 72) * v45);
      v15 = v52;
      if (v51 == v20)
      {

        v10 = v21;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_14:
    v17(v0[12], v0[6]);

    v47 = v0[1];

    return v47(v10);
  }

  return result;
}

void sub_1D8E7F454(uint64_t a1, uint64_t a2)
{
  v22 = a2;
  v3 = sub_1D9176AAC();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176BCC();
  v7 = sub_1D917839C();

  v8 = sub_1D9176BCC();
  if (v7)
  {
    v10 = sub_1D8F4CCC0(1uLL, v8, v9);
    v12 = v11;
    v14 = v13;
    v17[1] = v2;
    v16 = v15;

    v18 = v10;
    v19 = v12;
    v20 = v14;
    v21 = v16;
    (*(v4 + 104))(v6, *MEMORY[0x1E6968F70], v3);
    sub_1D8E7F724();
  }

  else
  {
    v18 = v8;
    v19 = v9;
    (*(v4 + 104))(v6, *MEMORY[0x1E6968F70], v3);
    sub_1D8D447DC();
  }

  sub_1D9176C0C();
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_1D8E7F670(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D8DBED50;

  return AbandonedStreamIssueIdentifier.issues(for:)(a1);
}

unint64_t sub_1D8E7F724()
{
  result = qword_1ECAB01C8;
  if (!qword_1ECAB01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB01C8);
  }

  return result;
}

uint64_t AVAssetsInLibraryIssueIdentifier.startIdentifyingIssues(for:)(uint64_t a1)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5270, &unk_1D918EA40);
  v59 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v3 = &v49 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v49 - v5;
  v50 = sub_1D9176C2C();
  MEMORY[0x1EEE9AC00](v50);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5278, &unk_1D918EA50);
  v52 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v49 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5280, &qword_1D9191540);
  v58 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v11 = &v49 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5288, &qword_1D918EA60);
  v13 = *(v12 - 8);
  v61 = v12;
  v62 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v51 = &v49 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5290, &qword_1D918EA68);
  v16 = *(v15 - 8);
  v63 = v15;
  v64 = v16;
  MEMORY[0x1EEE9AC00](v15);
  v54 = &v49 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5298, &qword_1D918EA70);
  v19 = *(v18 - 8);
  v65 = v18;
  v66 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v55 = &v49 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52A0, &qword_1D918EA78);
  v22 = *(v21 - 8);
  v69 = v21;
  v70 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v57 = &v49 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52A8, &unk_1D918EA80);
  v25 = *(v24 - 8);
  v67 = v24;
  v68 = v25;
  MEMORY[0x1EEE9AC00](v24);
  v60 = &v49 - v26;
  v27 = [objc_opt_self() libraryDirectory];
  sub_1D9176B9C();

  sub_1D9177A0C();
  v28 = *(a1 + 80);
  v29 = sub_1D9178DBC();
  (*(*(v29 - 8) + 56))(v6, 1, 1, v29);
  *&v71[0] = v28;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1EDCD0B10, &qword_1ECAB5278, &unk_1D918EA50, MEMORY[0x1E695C008]);
  sub_1D8D02DF0();
  v30 = v7;
  sub_1D9177D3C();
  sub_1D8CF48EC(&unk_1ECAB0A48, &qword_1ECAB5270, &unk_1D918EA40, MEMORY[0x1E695BCB8]);
  v31 = v53;
  sub_1D9177CEC();
  (*(v59 + 8))(v3, v31);
  sub_1D8D2210C(v6);
  (*(v52 + 8))(v9, v30);
  sub_1D8DBBEB4(a1, v71);
  v32 = swift_allocObject();
  v33 = v71[3];
  *(v32 + 48) = v71[2];
  *(v32 + 64) = v33;
  *(v32 + 80) = v71[4];
  *(v32 + 96) = v72;
  v34 = v71[1];
  *(v32 + 16) = v71[0];
  *(v32 + 32) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8CF48EC(&unk_1ECAB0470, &qword_1ECAB5280, &qword_1D9191540, MEMORY[0x1E695BE98]);
  v35 = v51;
  v36 = v56;
  sub_1D9177C6C();

  (*(v58 + 8))(v11, v36);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52B0, &qword_1D918EA90);
  sub_1D8CF48EC(&qword_1ECAB0660, &qword_1ECAB5288, &qword_1D918EA60, MEMORY[0x1E695BE28]);
  sub_1D8CF48EC(&qword_1EDCD0BF8, &qword_1ECAB52B0, &qword_1D918EA90, MEMORY[0x1E695BE60]);
  v37 = v54;
  v38 = v61;
  sub_1D9177CAC();
  (*(v62 + 8))(v35, v38);
  sub_1D8CF48EC(&qword_1ECAB0568, &qword_1ECAB5290, &qword_1D918EA68, MEMORY[0x1E695BE40]);
  v39 = v55;
  v40 = v63;
  sub_1D9177B9C();
  (*(v64 + 8))(v37, v40);
  v41 = MEMORY[0x1E695BD60];
  sub_1D8CF48EC(&qword_1ECAB07B8, &qword_1ECAB5298, &qword_1D918EA70, MEMORY[0x1E695BD60]);
  v42 = v57;
  v43 = v65;
  sub_1D9177C4C();
  (*(v66 + 8))(v39, v43);
  type metadata accessor for DownloadConsistency.Issue(0);
  sub_1D8CF48EC(&qword_1ECAB06B8, &qword_1ECAB52A0, &qword_1D918EA78, MEMORY[0x1E695BDE0]);
  v44 = v60;
  v45 = v69;
  sub_1D9177B9C();
  (*(v70 + 8))(v42, v45);
  sub_1D8CF48EC(&qword_1ECAB0778, &qword_1ECAB52A8, &unk_1D918EA80, v41);
  v46 = v67;
  v47 = sub_1D9177B1C();
  (*(v68 + 8))(v44, v46);
  return v47;
}

void sub_1D8E801FC(void *a1@<X1>, uint64_t *a2@<X8>)
{
  v4 = a1[9];
  __swift_project_boxed_opaque_existential_1(a1 + 5, a1[8]);
  v5 = sub_1D9176BBC();
  v6 = (*(v4 + 56))(v5);
  if (v2)
  {
  }

  else
  {
    v7 = v6;

    *a2 = v7;
  }
}

uint64_t sub_1D8E802C4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8CF48EC(&unk_1EDCD0A58, &qword_1ECAB75E0, &qword_1D918DE30, MEMORY[0x1E69E6328]);
  return sub_1D917841C();
}

double sub_1D8E80358()
{
  swift_getKeyPath();

  swift_getAtKeyPath();

  return result;
}

uint64_t sub_1D8E803CC(uint64_t *a1)
{
  v2 = sub_1D9176AAC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9176C2C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v11 = a1[1];
  v12 = [objc_opt_self() libraryDirectory];
  sub_1D9176B9C();

  v14[0] = v10;
  v14[1] = v11;
  (*(v3 + 104))(v5, *MEMORY[0x1E6968F70], v2);
  sub_1D8D447DC();
  sub_1D9176C0C();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

id sub_1D8E805BC(uint64_t a1)
{
  v1 = sub_1D9176B1C();
  v2 = [v1 isPackagedMedia];

  return v2;
}

uint64_t sub_1D8E805FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
  v5 = sub_1D9176C2C();
  (*(*(v5 - 8) + 16))(a2 + v4, a1, v5);
  sub_1D9176E9C();
  type metadata accessor for DownloadConsistency.Issue(0);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_1D8E806C0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(v5 + 8))(v2 + 16, v4, v5);
  *a2 = result;
  return result;
}

uint64_t CoreDataEpisodeAssetIssueIdentifier.startIdentifyingIssues(for:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52E8, &unk_1D918EC00);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v32 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v32 - v7;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52F0, &qword_1D918EC10);
  v37 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v33 = &v32 - v9;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB52F8, &qword_1D918EC18);
  v38 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v36 = &v32 - v10;
  v11 = *v1;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD0F88);
  v13 = sub_1D917741C();
  v14 = sub_1D9178CDC();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D8CEC000, v13, v14, "Starting consistency check for downloaded assets in CoreData library", v15, 2u);
    MEMORY[0x1DA72CB90](v15, -1, -1);
  }

  v16 = a1[3];
  v17 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v16);
  *&v41[0] = v11;
  v18 = sub_1D8E80D18();
  v19 = (*(v17 + 8))(v18, v16, v17);

  v20 = a1[10];
  v21 = sub_1D9178DBC();
  (*(*(v21 - 8) + 56))(v8, 1, 1, v21);
  *&v41[0] = v20;
  v43 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5300, &qword_1D918EC20);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  sub_1D8CF48EC(&qword_1EDCD0BA0, &qword_1ECAB5300, &qword_1D918EC20, MEMORY[0x1E695BED8]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECAB0A78, &qword_1ECAB52E8, &unk_1D918EC00, MEMORY[0x1E695BCB8]);
  v22 = v33;
  v23 = v35;
  sub_1D9177CEC();

  (*(v34 + 8))(v5, v23);
  sub_1D8D08A50(v8, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8DBBEB4(a1, v41);
  v24 = swift_allocObject();
  *(v24 + 16) = v11;
  v25 = v41[3];
  *(v24 + 56) = v41[2];
  *(v24 + 72) = v25;
  *(v24 + 88) = v41[4];
  *(v24 + 104) = v42;
  v26 = v41[1];
  *(v24 + 24) = v41[0];
  *(v24 + 40) = v26;
  type metadata accessor for DownloadConsistency.Issue(0);
  sub_1D8CF48EC(&qword_1ECAB04A0, &qword_1ECAB52F0, &qword_1D918EC10, MEMORY[0x1E695BE98]);
  swift_unknownObjectRetain();
  v27 = v36;
  v28 = v39;
  sub_1D9177B2C();

  (*(v37 + 8))(v22, v28);
  sub_1D8CF48EC(&qword_1ECAB0B20, &qword_1ECAB52F8, &qword_1D918EC18, MEMORY[0x1E695BC80]);
  v29 = v40;
  v30 = sub_1D9177B1C();
  (*(v38 + 8))(v27, v29);
  return v30;
}

id sub_1D8E80D18()
{
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v0 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v0 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1D9189060;
  v2 = sub_1D917820C();
  v3 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  v5 = sub_1D917820C();
  *(v1 + 88) = v3;
  *(v1 + 64) = v5;
  *(v1 + 72) = v6;
  v7 = sub_1D917820C();
  *(v1 + 120) = v3;
  *(v1 + 96) = v7;
  *(v1 + 104) = v8;
  v9 = sub_1D91785DC();

  [v0 setPropertiesToFetch_];

  v10 = [objc_opt_self() predicateForDownloaded:1 excludeHidden:1];
  [v0 setPredicate_];

  return v0;
}

uint64_t sub_1D8E80E80@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v73 - v8;
  v10 = sub_1D9176C2C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v73 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v73 - v15;
  v17 = *v3;
  aBlock[0] = *v3;
  sub_1D8E81760(a1);
  if (!v20)
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD0F88);

    v23 = sub_1D917741C();
    v24 = sub_1D9178CEC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = a3;
      v27 = swift_slowAlloc();
      aBlock[0] = v27;
      *v25 = 136315138;
      v28 = sub_1D917806C();
      v30 = sub_1D8CFA924(v28, v29, aBlock);

      *(v25 + 4) = v30;
      _os_log_impl(&dword_1D8CEC000, v23, v24, "Skipping download check for episode, no asset URL and/or episodeUuid: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v27);
      v31 = v27;
      a3 = v26;
      MEMORY[0x1DA72CB90](v31, -1, -1);
      MEMORY[0x1DA72CB90](v25, -1, -1);
    }

    v32 = type metadata accessor for DownloadConsistency.Issue(0);
    v33 = *(*(v32 - 8) + 56);

    return v33(a3, 1, 1, v32);
  }

  v77 = v17;
  v78 = v18;
  v21 = v19;
  sub_1D9176BFC();

  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {

    sub_1D8D08A50(v9, &unk_1ECAB5910, &qword_1D9188C90);
LABEL_28:
    v47 = type metadata accessor for DownloadConsistency.Issue(0);
    return (*(*(v47 - 8) + 56))(a3, 1, 1, v47);
  }

  (*(v11 + 32))(v16, v9, v10);
  v35 = sub_1D9176BEC();
  if (v36)
  {
    if (v35 == 0x62696C2D646F7069 && v36 == 0xEC00000079726172)
    {
    }

    else
    {
      v38 = sub_1D9179ACC();

      if ((v38 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

LABEL_26:
    (*(v11 + 8))(v16, v10);
    goto LABEL_28;
  }

LABEL_17:
  if ((sub_1D9176A8C() & 1) == 0)
  {
    (*(v11 + 8))(v16, v10);

    goto LABEL_28;
  }

  v76 = a3;
  v39 = a2[9];
  __swift_project_boxed_opaque_existential_1(a2 + 5, a2[8]);
  v40 = sub_1D9176BCC();
  v41 = (*(v39 + 32))(v40);

  if (v41)
  {

    a3 = v76;
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v42 = sub_1D917744C();
    __swift_project_value_buffer(v42, qword_1EDCD0F88);
    v43 = sub_1D917741C();
    v44 = sub_1D9178CEC();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1D8CEC000, v43, v44, "Download check for episode passed, asset was verified by the environment", v45, 2u);
      v46 = v45;
      a3 = v76;
      MEMORY[0x1DA72CB90](v46, -1, -1);
    }

    goto LABEL_26;
  }

  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v48 = sub_1D917744C();
  __swift_project_value_buffer(v48, qword_1EDCD0F88);
  (*(v11 + 16))(v13, v16, v10);

  v49 = sub_1D917741C();
  v50 = sub_1D9178CDC();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    aBlock[0] = v74;
    *v51 = 136315394;
    *(v51 + 4) = sub_1D8CFA924(v78, v21, aBlock);
    *(v51 + 12) = 2080;
    v52 = sub_1D9176BCC();
    v75 = v21;
    v53 = v50;
    v54 = v52;
    v56 = v55;
    v57 = v13;
    v58 = *(v11 + 8);
    v58(v57, v10);
    v59 = sub_1D8CFA924(v54, v56, aBlock);

    *(v51 + 14) = v59;
    v60 = v53;
    v21 = v75;
    _os_log_impl(&dword_1D8CEC000, v49, v60, "Found missing artifact for episode %s, expected path: %s", v51, 0x16u);
    v61 = v74;
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v61, -1, -1);
    MEMORY[0x1DA72CB90](v51, -1, -1);
  }

  else
  {

    v62 = v13;
    v58 = *(v11 + 8);
    v58(v62, v10);
  }

  v63 = v77;
  v64 = sub_1D8D6F4B4(MEMORY[0x1E69E7CC0]);
  v65 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
  v66 = swift_allocObject();
  *(v66 + 16) = v64;
  aBlock[4] = sub_1D8E81910;
  aBlock[5] = v66;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D6F198;
  aBlock[3] = &block_descriptor_11;
  v67 = _Block_copy(aBlock);

  v68 = [v65 initWithName:@"com.apple.podcastsEpisodeMissingAsset" generator:v67];
  _Block_release(v67);
  [v63 sendEvent_];

  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620);
  v70 = v76;
  v71 = (v76 + *(v69 + 48));
  *v71 = v78;
  v71[1] = v21;
  sub_1D9176E9C();
  v58(v16, v10);
  v72 = type metadata accessor for DownloadConsistency.Issue(0);
  swift_storeEnumTagMultiPayload();
  return (*(*(v72 - 8) + 56))(v70, 0, 1, v72);
}

uint64_t sub_1D8E81760(uint64_t a1)
{
  v7 = sub_1D917820C();
  sub_1D91793EC();
  if (!*(a1 + 16))
  {
    goto LABEL_9;
  }

  v2 = sub_1D8D6550C(v8);
  if ((v3 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_1D8CFAD1C(*(a1 + 56) + 32 * v2, v9);
  sub_1D8D9A308(v8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  sub_1D917820C();
  sub_1D91793EC();
  if (!*(a1 + 16) || (v4 = sub_1D8D6550C(v8), (v5 & 1) == 0))
  {

LABEL_9:
    sub_1D8D9A308(v8);
    return 0;
  }

  sub_1D8CFAD1C(*(a1 + 56) + 32 * v4, v9);
  sub_1D8D9A308(v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  return 0;
}

uint64_t sub_1D8E8191C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5308, &qword_1D918ECB0);
  v3 = *(v2 - 8);
  v45 = v2;
  v46 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v38 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v38 - v13;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5310, &qword_1D918ECB8);
  v44 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v38 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5318, &qword_1D918ECC0);
  v17 = *(v16 - 8);
  v42 = v16;
  v43 = v17;
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v38 - v18;
  sub_1D917881C();
  v20 = sub_1D917886C();
  (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
  sub_1D8DBBEB4(a1, v48);
  v21 = swift_allocObject();
  v22 = v48[3];
  *(v21 + 48) = v48[2];
  *(v21 + 64) = v22;
  *(v21 + 80) = v48[4];
  *(v21 + 96) = v49;
  v23 = v48[1];
  *(v21 + 16) = v48[0];
  *(v21 + 32) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5320, &qword_1D918ECD8);
  sub_1D8CF5C74(v14, v11);
  v24 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v25 = (v10 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
  v26 = swift_allocObject();
  sub_1D8D46700(v11, v26 + v24);
  v27 = (v26 + v25);
  *v27 = &unk_1D918ED68;
  v27[1] = v21;
  v28 = sub_1D9177A4C();
  sub_1D8D08A50(v14, &qword_1ECABB890, &qword_1D918B960);
  v29 = *(a1 + 80);
  v30 = sub_1D9178DBC();
  (*(*(v30 - 8) + 56))(v7, 1, 1, v30);
  v47 = v28;
  *&v48[0] = v29;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1ECAB0260, &qword_1ECAB5320, &qword_1D918ECD8, MEMORY[0x1E695C038]);
  sub_1D8D02DF0();
  v31 = v40;
  sub_1D9177D3C();
  sub_1D8CF48EC(&unk_1ECAB0A18, &qword_1ECAB5308, &qword_1D918ECB0, MEMORY[0x1E695BCB8]);
  v32 = v39;
  v33 = v45;
  sub_1D9177CEC();

  (*(v46 + 8))(v31, v33);
  sub_1D8D08A50(v7, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5328, qword_1D918ECE0);
  sub_1D8CF48EC(&unk_1ECAB0438, &qword_1ECAB5310, &qword_1D918ECB8, MEMORY[0x1E695BE98]);
  sub_1D8CF48EC(&qword_1ECAB0530, &qword_1ECAB5328, qword_1D918ECE0, MEMORY[0x1E695BE60]);
  v34 = v41;
  sub_1D9177CAC();
  (*(v44 + 8))(v32, v34);
  sub_1D8CF48EC(&qword_1ECAB0570, &qword_1ECAB5318, &qword_1D918ECC0, MEMORY[0x1E695BE40]);
  v35 = v42;
  v36 = sub_1D9177B1C();
  (*(v43 + 8))(v19, v35);
  return v36;
}

uint64_t AsyncDownloadedAssetIssueIdentifier.startIdentifyingIssues(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v51 = a3;
  v49 = a1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5308, &qword_1D918ECB0);
  v8 = *(v7 - 8);
  v59 = v7;
  v60 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v48 - v11;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  v50 = *(v16 - 8);
  v17 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v48 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v48 - v20;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5310, &qword_1D918ECB8);
  v58 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v52 = &v48 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5318, &qword_1D918ECC0);
  v24 = *(v23 - 8);
  v56 = v23;
  v57 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v53 = &v48 - v25;
  sub_1D917881C();
  v26 = sub_1D917886C();
  (*(*(v26 - 8) + 56))(v21, 0, 1, v26);
  (*(v13 + 16))(&v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), v4, a2);
  sub_1D8DBBEB4(a1, v62);
  v27 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v28 = swift_allocObject();
  v29 = v51;
  *(v28 + 16) = a2;
  *(v28 + 24) = v29;
  (*(v13 + 32))(v28 + v27, &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0), a2);
  v30 = v28 + ((v14 + v27 + 7) & 0xFFFFFFFFFFFFFFF8);
  v31 = v62[3];
  *(v30 + 32) = v62[2];
  *(v30 + 48) = v31;
  *(v30 + 64) = v62[4];
  *(v30 + 80) = v63;
  v32 = v62[1];
  *v30 = v62[0];
  *(v30 + 16) = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5320, &qword_1D918ECD8);
  sub_1D8CF5C74(v21, v18);
  v33 = (*(v50 + 80) + 16) & ~*(v50 + 80);
  v34 = (v17 + v33 + 7) & 0xFFFFFFFFFFFFFFF8;
  v35 = swift_allocObject();
  sub_1D8D46700(v18, v35 + v33);
  v36 = (v35 + v34);
  *v36 = &unk_1D918ECD0;
  v36[1] = v28;
  v37 = sub_1D9177A4C();
  sub_1D8D08A50(v21, &qword_1ECABB890, &qword_1D918B960);
  v38 = *(v49 + 80);
  v39 = sub_1D9178DBC();
  (*(*(v39 - 8) + 56))(v12, 1, 1, v39);
  v61 = v37;
  *&v62[0] = v38;
  sub_1D8CFD888();
  sub_1D8CF48EC(&qword_1ECAB0260, &qword_1ECAB5320, &qword_1D918ECD8, MEMORY[0x1E695C038]);
  sub_1D8D02DF0();
  v40 = v54;
  sub_1D9177D3C();
  sub_1D8CF48EC(&unk_1ECAB0A18, &qword_1ECAB5308, &qword_1D918ECB0, MEMORY[0x1E695BCB8]);
  v41 = v52;
  v42 = v59;
  sub_1D9177CEC();

  (*(v60 + 8))(v40, v42);
  sub_1D8D08A50(v12, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5328, qword_1D918ECE0);
  sub_1D8CF48EC(&unk_1ECAB0438, &qword_1ECAB5310, &qword_1D918ECB8, MEMORY[0x1E695BE98]);
  sub_1D8CF48EC(&qword_1ECAB0530, &qword_1ECAB5328, qword_1D918ECE0, MEMORY[0x1E695BE60]);
  v43 = v53;
  v44 = v55;
  sub_1D9177CAC();
  (*(v58 + 8))(v41, v44);
  sub_1D8CF48EC(&qword_1ECAB0570, &qword_1ECAB5318, &qword_1D918ECC0, MEMORY[0x1E695BE40]);
  v45 = v56;
  v46 = sub_1D9177B1C();
  (*(v57 + 8))(v43, v45);
  return v46;
}

uint64_t sub_1D8E82728(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a1;
  v11 = (*(a5 + 16) + **(a5 + 16));
  v9 = swift_task_alloc();
  *(v5 + 24) = v9;
  *v9 = v5;
  v9[1] = sub_1D8E8285C;

  return v11(a3, a4, a5);
}

uint64_t sub_1D8E8285C(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D8E83564, 0, 0);
  }
}

uint64_t sub_1D8E829A8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = (*(*(v4 - 8) + 80) + 32) & ~*(*(v4 - 8) + 80);
  v7 = (*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D8D5FF18;

  return sub_1D8E82728(a1, v1 + v6, v1 + v7, v4, v5);
}

uint64_t sub_1D8E82ABC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5330, &qword_1D918ED70);
  sub_1D8CF48EC(&qword_1ECAAFF50, &qword_1ECAB5330, &qword_1D918ED70, MEMORY[0x1E69E6328]);
  return sub_1D917841C();
}

double sub_1D8E82B50()
{
  swift_getKeyPath();

  swift_getAtKeyPath();

  return result;
}

uint64_t sub_1D8E82BC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v15 - v11;
  sub_1D8CF5C74(a3, &v15 - v11);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = a1;
  v13[5] = a2;
  v13[6] = a4;
  v13[7] = a5;

  sub_1D8E91268(0, 0, v12, &unk_1D918EDB8, v13);
}

uint64_t dispatch thunk of AsyncDownloadedAssetIssueIdentifier.issues(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D8E24548;

  return v9(a1, a2, a3);
}

uint64_t sub_1D8E82E00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6)
{
  v6[4] = a4;
  v6[5] = a5;
  v9 = (a6 + *a6);
  v7 = swift_task_alloc();
  v6[6] = v7;
  *v7 = v6;
  v7[1] = sub_1D8E82EF4;

  return v9(v6 + 2);
}

uint64_t sub_1D8E82EF4()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_1D8E83080;
  }

  else
  {
    v2 = sub_1D8E83008;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8E83008()
{
  v1 = *(v0 + 32);
  *(v0 + 24) = 0;
  v1(v0 + 16);
  sub_1D8D99898(*(v0 + 16), *(v0 + 24));
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D8E83080()
{
  v8 = v0;
  v1 = v0[7];
  v2 = v0[4];
  v6 = v1;
  v7 = 1;
  v3 = v1;
  v2(&v6);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D8E83118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v5 = swift_task_alloc();
  *(v3 + 24) = v5;
  *v5 = v3;
  v5[1] = sub_1D8E831B4;

  return AbandonedStreamIssueIdentifier.issues(for:)(a3);
}

uint64_t sub_1D8E831B4(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 32) = a1;

    return MEMORY[0x1EEE6DFA0](sub_1D8E83300, 0, 0);
  }
}

uint64_t sub_1D8E83324(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D8D58924;

  return sub_1D8E83118(a1, sub_1D8E83118, v1 + 16);
}

uint64_t sub_1D8E833D4(uint64_t a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1D8E82BC4(a1, a2, v2 + v6, v8, v9);
}

uint64_t sub_1D8E83490(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D8D58924;

  return sub_1D8E82E00(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D8E8356C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = *v3++;
        v10 = v5;
        v6 = *v4++;
        v9 = v6;

        v7 = static NSPredicate.EvaluationTree.== infix(_:_:)(&v10, &v9);

        --v2;
      }

      while ((v7 & 1) != 0 && v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1D8E8362C(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = type metadata accessor for ServerTranscript(0);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1DA72AA90](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1DA72AA90](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1D917914C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1D917914C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1D917935C();
  }

  result = sub_1D917935C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D8E8386C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = (a1 + 32);
  v4 = (a2 + 32);
  do
  {
    v5 = vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v3, *v4), vceqq_f64(v3[1], v4[1]))));
    if ((v5 & 1) == 0)
    {
      break;
    }

    v3 += 2;
    v4 += 2;
    --v2;
  }

  while (v2);
  return v5 & 1;
}

uint64_t sub_1D8E838F0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  for (i = 0; ; i += 56)
  {
    v5 = 0;
    v6 = a1 + i;
    v7 = a2 + i;
    if (*(a1 + i + 32) != *(a2 + i + 32) || *(v6 + 40) != *(v7 + 40))
    {
      break;
    }

    v8 = *(v6 + 48);
    v9 = *(v6 + 56);
    v10 = *(v6 + 64);
    v11 = *(v6 + 72);
    v12 = *(v6 + 80);
    v13 = *(v7 + 48);
    v14 = *(v7 + 56);
    v15 = *(v7 + 64);
    v16 = *(v7 + 72);
    v17 = *(v7 + 80);
    if (v8 == 2)
    {
      if (v13 != 2)
      {
        return 0;
      }
    }

    else
    {
      v5 = 0;
      if (v13 == 2 || ((v13 ^ v8) & 1) != 0)
      {
        return v5;
      }
    }

    if (v10)
    {
      if (!v15)
      {
        return 0;
      }
    }

    else
    {
      if (v9 == v14)
      {
        v18 = v15;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        return 0;
      }
    }

    if (v12)
    {
      if (!v17)
      {
        return 0;
      }
    }

    else
    {
      if (v11 == v16)
      {
        v4 = v17;
      }

      else
      {
        v4 = 1;
      }

      if (v4)
      {
        return 0;
      }
    }

    if (!--v2)
    {
      return 1;
    }
  }

  return v5;
}

uint64_t sub_1D8E839E4(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 40);
  v4 = (a2 + 40);
  while (v2)
  {
    v5 = *(v4 - 1);
    v6 = *v4;
    v4 += 2;
    result = *v3 == v6 && *(v3 - 1) == v5;
    v8 = result != 1 || v2-- == 1;
    v3 += 2;
    if (v8)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E83A54(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v4 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_44;
  }

  v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (!(a2 >> 62))
  {
    result = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5 != result)
    {
      goto LABEL_46;
    }

LABEL_5:
    if (!v5)
    {
      goto LABEL_29;
    }

    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = (v3 & 0xFFFFFFFFFFFFFF8) + 32;
    if (v3 < 0)
    {
      v7 = v3;
    }

    if (v4)
    {
      v8 = v7;
    }

    v9 = a2 & 0xFFFFFFFFFFFFFF8;
    v10 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v9 = a2;
    }

    if (a2 >> 62)
    {
      v10 = v9;
    }

    if (v8 == v10)
    {
LABEL_29:
      v18 = 1;
      return v18 & 1;
    }

    if (v5 < 0)
    {
      __break(1u);
      return result;
    }

    v4 = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
    if (((a2 | v3) & 0xC000000000000001) != 0)
    {
      v11 = a2 & 0xC000000000000001;
      v12 = 4;
      while (1)
      {
        v13 = v12 - 4;
        v14 = v12 - 3;
        if (__OFADD__(v12 - 4, 1))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        if ((v3 & 0xC000000000000001) != 0)
        {
          v15 = MEMORY[0x1DA72AA90](v12 - 4, v3);
          if (!v11)
          {
            goto LABEL_24;
          }
        }

        else
        {
          if (v13 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_42;
          }

          v15 = *(v3 + 8 * v12);
          if (!v11)
          {
LABEL_24:
            if (v13 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_43;
            }

            v16 = *(a2 + 8 * v12);
            goto LABEL_26;
          }
        }

        v16 = MEMORY[0x1DA72AA90](v12 - 4, a2);
LABEL_26:
        v17 = v16;
        v18 = sub_1D917914C();

        if (v18)
        {
          ++v12;
          if (v14 != v5)
          {
            continue;
          }
        }

        return v18 & 1;
      }
    }

    v19 = (v3 + 32);
    v20 = (a2 + 32);
    v21 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v22 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v23 = v5 - 1;
    while (1)
    {
      if (!v21)
      {
        goto LABEL_40;
      }

      if (!v22)
      {
        break;
      }

      v25 = *v19++;
      v24 = v25;
      v26 = *v20++;
      a2 = v24;
      v3 = v26;
      v18 = sub_1D917914C();

      v28 = v23-- != 0;
      if (v18)
      {
        --v22;
        --v21;
        if (v28)
        {
          continue;
        }
      }

      return v18 & 1;
    }

LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    v5 = sub_1D917935C();
  }

  result = sub_1D917935C();
  if (v5 == result)
  {
    goto LABEL_5;
  }

LABEL_46:
  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D8E83CA4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (sub_1D9179ACC() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D8E83D34(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 != *(a2 + 16))
  {
    return 0;
  }

  if (!v4 || a1 == a2)
  {
    return 1;
  }

  v102 = v2;
  v103 = v3;
  v5 = (a1 + 32);
  v6 = (a2 + 32);
  for (i = v4 - 1; ; --i)
  {
    v8 = v5[11];
    v9 = v5[13];
    v83 = v5[12];
    v84 = v9;
    v10 = v5[13];
    v85 = v5[14];
    v11 = v5[7];
    v12 = v5[9];
    v79 = v5[8];
    v80 = v12;
    v13 = v5[9];
    v14 = v5[11];
    v81 = v5[10];
    v82 = v14;
    v15 = v5[3];
    v16 = v5[5];
    v75 = v5[4];
    v76 = v16;
    v17 = v5[5];
    v18 = v5[7];
    v77 = v5[6];
    v78 = v18;
    v19 = v5[1];
    v72[0] = *v5;
    v72[1] = v19;
    v20 = v5[3];
    v22 = *v5;
    v21 = v5[1];
    v73 = v5[2];
    v74 = v20;
    v69 = v83;
    v70 = v10;
    v71 = v5[14];
    v65 = v79;
    v66 = v13;
    v67 = v81;
    v68 = v8;
    v61 = v75;
    v62 = v17;
    v63 = v77;
    v64 = v11;
    v57 = v22;
    v58 = v21;
    v59 = v73;
    v60 = v15;
    v23 = v6[11];
    v24 = v6[13];
    v97 = v6[12];
    v98 = v24;
    v25 = v6[13];
    v99 = v6[14];
    v26 = v6[7];
    v27 = v6[9];
    v93 = v6[8];
    v94 = v27;
    v29 = v6[9];
    v28 = v6[10];
    v30 = v28;
    v96 = v6[11];
    v95 = v28;
    v31 = v6[3];
    v32 = v6[5];
    v89 = v6[4];
    v90 = v32;
    v34 = v6[5];
    v33 = v6[6];
    v92 = v6[7];
    v91 = v33;
    v35 = v6[1];
    v86[0] = *v6;
    v86[1] = v35;
    v36 = v6[3];
    v38 = *v6;
    v37 = v6[1];
    v87 = v6[2];
    v88 = v36;
    v54 = v97;
    v55 = v25;
    v56 = v6[14];
    v50 = v93;
    v51 = v29;
    v52 = v30;
    v53 = v23;
    v46 = v89;
    v47 = v34;
    v48 = v33;
    v49 = v26;
    v42 = v38;
    v43 = v37;
    v44 = v87;
    v45 = v31;
    sub_1D8E2D01C(v72, v41);
    sub_1D8E2D01C(v86, v41);
    v39 = _s18PodcastsFoundation7ChapterV2eeoiySbAC_ACtFZ_0(&v57, &v42);
    v100[12] = v54;
    v100[13] = v55;
    v100[14] = v56;
    v100[8] = v50;
    v100[9] = v51;
    v100[11] = v53;
    v100[10] = v52;
    v100[4] = v46;
    v100[5] = v47;
    v100[7] = v49;
    v100[6] = v48;
    v100[0] = v42;
    v100[1] = v43;
    v100[3] = v45;
    v100[2] = v44;
    sub_1D8E2D078(v100);
    v101[12] = v69;
    v101[13] = v70;
    v101[14] = v71;
    v101[8] = v65;
    v101[9] = v66;
    v101[11] = v68;
    v101[10] = v67;
    v101[4] = v61;
    v101[5] = v62;
    v101[7] = v64;
    v101[6] = v63;
    v101[0] = v57;
    v101[1] = v58;
    v101[3] = v60;
    v101[2] = v59;
    sub_1D8E2D078(v101);
    if (!v39)
    {
      return 0;
    }

    if (!i)
    {
      break;
    }

    v6 += 15;
    v5 += 15;
  }

  return 1;
}

uint64_t sub_1D8E83FCC(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  v21 = a2 + 32;
  v22 = result + 32;
  while (v3 != v2)
  {
    v4 = v22 + 32 * v3;
    v5 = v21 + 32 * v3;
    if (*v4 != *v5 || *(v4 + 8) != *(v5 + 8))
    {
      return 0;
    }

    v7 = *(v4 + 16);
    v8 = *(v5 + 16);
    v9 = *(v7 + 16);
    if (v9 != *(v8 + 16))
    {
      return 0;
    }

    v10 = *(v4 + 24);
    v11 = *(v5 + 24);
    if (v9)
    {
      v12 = v7 == v8;
    }

    else
    {
      v12 = 1;
    }

    if (!v12)
    {
      v13 = 0;
      while (v9)
      {
        v14 = v7 + v13;
        v15 = v8 + v13;
        if (*(v7 + v13 + 32) != *(v8 + v13 + 32) || *(v7 + v13 + 40) != *(v8 + v13 + 40))
        {
          return 0;
        }

        result = *(v14 + 48);
        v17 = *(v14 + 64);
        v18 = *(v15 + 64);
        if (result == *(v15 + 48) && *(v14 + 56) == *(v15 + 56))
        {
          if (v17 != v18)
          {
            return 0;
          }
        }

        else
        {
          v20 = sub_1D9179ACC();
          result = 0;
          if (v20 & 1) == 0 || ((v17 ^ v18))
          {
            return result;
          }
        }

        v13 += 40;
        if (!--v9)
        {
          goto LABEL_17;
        }
      }

      __break(1u);
      break;
    }

LABEL_17:
    if (v10 != v11)
    {
      return 0;
    }

    ++v3;
    result = 1;
    if (v3 == v2)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E8413C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 40)
    {
      v6 = a1 + i;
      v7 = a2 + i;
      if (*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40))
      {
        break;
      }

      v9 = *(v6 + 64);
      v10 = *(v7 + 64);
      if (*(v6 + 48) == *(v7 + 48) && *(v6 + 56) == *(v7 + 56))
      {
        if (v9 != v10)
        {
          return 0;
        }
      }

      else
      {
        v12 = sub_1D9179ACC();
        result = 0;
        if (v12 & 1) == 0 || ((v9 ^ v10))
        {
          return result;
        }
      }

      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t sub_1D8E84214(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 40)
    {
      v6 = (a1 + i);
      v7 = (a2 + i);
      if (*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 40) != *(a2 + i + 40))
      {
        break;
      }

      v10 = v6[7];
      v9 = v6[8];
      v12 = v7[7];
      v11 = v7[8];
      if (v10)
      {
        if (!v12)
        {
          return 0;
        }

        if (v6[6] != v7[6] || v10 != v12)
        {
          v14 = v6[8];
          v15 = v7[8];
          v16 = sub_1D9179ACC();
          v11 = v15;
          v17 = v16;
          v9 = v14;
          if ((v17 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v12)
      {
        return 0;
      }

      if ((sub_1D8E83FCC(v9, v11) & 1) == 0)
      {
        return 0;
      }

      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1D8E84390(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v33 = a5;
  v34 = a6;
  v32 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v12);
  v15 = &v29 - v14;
  v16 = *(a1 + 16);
  if (v16 != *(a2 + 16))
  {
    v26 = 0;
    return v26 & 1;
  }

  if (!v16 || a1 == a2)
  {
    v26 = 1;
    return v26 & 1;
  }

  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v18 = a1 + v17;
  v19 = a2 + v17;
  v21 = *(v9 + 16);
  v20 = v9 + 16;
  v22 = (v20 - 8);
  v30 = *(v20 + 56);
  v31 = v21;
  while (1)
  {
    v23 = v31;
    result = (v31)(v15, v18, v8, v13);
    if (!v16)
    {
      break;
    }

    v25 = v20;
    v23(v11, v19, v8);
    sub_1D8E8908C(v32, v33, v34);
    v26 = sub_1D91781BC();
    v27 = *v22;
    (*v22)(v11, v8);
    v27(v15, v8);
    if (v26)
    {
      v19 += v30;
      v18 += v30;
      v28 = v16-- == 1;
      v20 = v25;
      if (!v28)
      {
        continue;
      }
    }

    return v26 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8E845DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *), uint64_t (*a6)(void))
{
  v11 = a3(0) - 8;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v25 - v16;
  v18 = *(a1 + 16);
  if (v18 == *(a2 + 16))
  {
    if (!v18 || a1 == a2)
    {
      v23 = 1;
    }

    else
    {
      v19 = (*(v15 + 80) + 32) & ~*(v15 + 80);
      v20 = a1 + v19;
      v21 = a2 + v19;
      v22 = *(v15 + 72);
      do
      {
        sub_1D8E898F0(v20, v17, a4);
        sub_1D8E898F0(v21, v13, a4);
        v23 = a5(v17, v13);
        sub_1D8E89958(v13, a6);
        sub_1D8E89958(v17, a6);
        if ((v23 & 1) == 0)
        {
          break;
        }

        v21 += v22;
        v20 += v22;
        --v18;
      }

      while (v18);
    }
  }

  else
  {
    v23 = 0;
  }

  return v23 & 1;
}

void sub_1D8E8477C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a2 + 64);
    v4 = (a1 + 64);
    do
    {
      v7 = *(v4 - 4);
      v6 = *(v4 - 3);
      v8 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *(v3 - 4);
      v11 = *v3;
      if (*v4 == 1)
      {
        if ((*v3 & 1) == 0)
        {
          return;
        }

        v12 = *(v3 - 2);
        v13 = *(v3 - 1);
        v14 = v7 == v10 && v6 == *(v3 - 3);
        if (!v14 && (sub_1D9179ACC() & 1) == 0 || (v8 != v12 || v9 != v13) && (sub_1D9179ACC() & 1) == 0)
        {
          return;
        }
      }

      else
      {
        sub_1D8E89A08(*(v4 - 4), v6, *(v4 - 2), *(v4 - 1), 0);
        if (v7 == v10)
        {
          v5 = v11;
        }

        else
        {
          v5 = 1;
        }

        if (v5)
        {
          return;
        }
      }

      v3 += 40;
      v4 += 40;
      --v2;
    }

    while (v2);
  }
}

void sub_1D8E84898(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16) && v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    v4 = (a2 + 40);
    do
    {
      if (*(v3 - 1) != *(v4 - 1))
      {
        break;
      }

      v5 = *v3;
      v6 = *v4;

      v7 = sub_1D8E83A54(v5, v6);

      if ((v7 & 1) == 0)
      {
        break;
      }

      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t DownloadConsistency.IssueResolution.init(issue:strategy:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D8E89A4C(a1, a3, type metadata accessor for DownloadConsistency.Issue);
  result = type metadata accessor for DownloadConsistency.IssueResolution(0);
  *(a3 + *(result + 20)) = a2;
  return result;
}

uint64_t sub_1D8E849A8(uint64_t a1, uint64_t *a2)
{
  sub_1D8CFD9D8(a1, v6);
  v3 = *a2;
  v4 = OBJC_IVAR___PFDownloadConsistency_identifier;
  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_1Tm((v3 + v4));
  sub_1D8D6BCE0(v6, v3 + v4);
  return swift_endAccess();
}

uint64_t sub_1D8E84A14@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PFDownloadConsistency_identifier;
  swift_beginAccess();
  return sub_1D8CFD9D8(v1 + v3, a1);
}

void *DownloadConsistency.__allocating_init(issueIdentifier:resolutionStrategy:effectApplicator:downloadEnvironment:)(void *a1, void *a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v10 = objc_allocWithZone(v5);
  *&v10[OBJC_IVAR___PFDownloadConsistency_listener] = 0;
  sub_1D8CFD9D8(a1, &v10[OBJC_IVAR___PFDownloadConsistency_identifier]);
  sub_1D8CFD9D8(a2, &v10[OBJC_IVAR___PFDownloadConsistency_resolutionStrategy]);
  sub_1D8CFD9D8(a3, &v10[OBJC_IVAR___PFDownloadConsistency_effectApplicator]);
  sub_1D8DBBEB4(a4, &v10[OBJC_IVAR___PFDownloadConsistency_environment]);
  v13.receiver = v10;
  v13.super_class = v5;
  v11 = objc_msgSendSuper2(&v13, sel_init);
  sub_1D8DBC210(a4);
  __swift_destroy_boxed_opaque_existential_1Tm(a3);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v11;
}

uint64_t sub_1D8E84BBC(uint64_t a1)
{
  v3 = v1[5];
  v4 = v1[6];
  __swift_project_boxed_opaque_existential_1(v1 + 2, v3);
  return (*(v4 + 8))(a1, v3, v4);
}

void sub_1D8E84C54(void **a1, void (*a2)(void *), uint64_t a3)
{
  v5 = *a1;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F88);
  v7 = v5;
  v8 = sub_1D917741C();
  v9 = sub_1D9178CDC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v16 = v11;
    *v10 = 136315138;
    v12 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5070, &qword_1D918F5B0);
    v13 = sub_1D917826C();
    v15 = sub_1D8CFA924(v13, v14, &v16);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "Finished addressing consistency issues with completion: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  if (a2)
  {

    a2(v5);
    sub_1D8D15664(a2, a3);
  }
}

void sub_1D8E84E08(uint64_t *a1)
{
  v1 = *a1;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F88);

  oslog = sub_1D917741C();
  v3 = sub_1D9178CEC();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v11 = v5;
    *v4 = 136315138;
    v6 = type metadata accessor for DownloadedAssetEffect(0);
    v7 = MEMORY[0x1DA729BD0](v1, v6);
    v9 = sub_1D8CFA924(v7, v8, &v11);

    *(v4 + 4) = v9;
    _os_log_impl(&dword_1D8CEC000, oslog, v3, "Applied corrective effects to environment: %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    MEMORY[0x1DA72CB90](v5, -1, -1);
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }
}

uint64_t sub_1D8E84F78()
{
  v1 = OBJC_IVAR___PFDownloadConsistency_listener;
  if (*(v0 + OBJC_IVAR___PFDownloadConsistency_listener))
  {

    sub_1D917785C();
  }

  *(v0 + v1) = 0;
}

uint64_t sub_1D8E8505C(uint64_t a1, void *a2, uint64_t a3)
{
  v32 = a3;
  v33 = a2;
  v4 = type metadata accessor for DownloadConsistency.IssueResolution(0);
  v5 = v4 - 8;
  v31 = *(v4 - 8);
  v6 = *(v31 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54C0, &qword_1D918F5B8);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v30 - v9;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54C8, &qword_1D918F5C0);
  v41 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v30 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54D0, &qword_1D918F5C8);
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v14 = &v30 - v13;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54D8, &qword_1D918F5D0);
  v39 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v16 = &v30 - v15;
  *&v42[0] = *(a1 + *(v5 + 28));

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54E0, &qword_1D918F5D8);
  sub_1D8CF48EC(&qword_1ECAAFF40, &qword_1ECAB54E0, &qword_1D918F5D8, MEMORY[0x1E69E6328]);
  sub_1D917773C();
  sub_1D8E898F0(a1, &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for DownloadConsistency.IssueResolution);
  sub_1D8DBBEB4(v32, v42);
  v17 = (*(v31 + 80) + 24) & ~*(v31 + 80);
  v18 = swift_allocObject();
  v19 = v33;
  *(v18 + 16) = v33;
  sub_1D8E89A4C(&v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17, type metadata accessor for DownloadConsistency.IssueResolution);
  v20 = v18 + ((v6 + v17 + 7) & 0xFFFFFFFFFFFFFFF8);
  v21 = v42[3];
  *(v20 + 32) = v42[2];
  *(v20 + 48) = v21;
  *(v20 + 64) = v42[4];
  *(v20 + 80) = v43;
  v22 = v42[1];
  *v20 = v42[0];
  *(v20 + 16) = v22;
  v23 = v19;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54E8, &unk_1D918F5E0);
  sub_1D8CF48EC(&qword_1ECAB0528, &qword_1ECAB54C0, &qword_1D918F5B8, MEMORY[0x1E695BE60]);
  sub_1D8CF48EC(&qword_1ECAB0370, &qword_1ECAB54E8, &unk_1D918F5E0, MEMORY[0x1E695BED8]);
  v24 = v34;
  sub_1D9177DDC();

  (*(v35 + 8))(v10, v24);
  type metadata accessor for DownloadedAssetEffect(0);
  sub_1D8CF48EC(&qword_1ECAB05E0, &qword_1ECAB54C8, &qword_1D918F5C0, MEMORY[0x1E695BE40]);
  v25 = v37;
  sub_1D9177B2C();
  (*(v41 + 8))(v12, v25);
  sub_1D8CF48EC(&qword_1ECAB0B90, &qword_1ECAB54D0, &qword_1D918F5C8, MEMORY[0x1E695BC80]);
  v26 = v38;
  sub_1D9177C8C();
  (*(v40 + 8))(v14, v26);
  sub_1D8CF48EC(&qword_1ECAB0640, &qword_1ECAB54D8, &qword_1D918F5D0, MEMORY[0x1E695BE38]);
  v27 = v36;
  v28 = sub_1D9177B1C();
  (*(v39 + 8))(v16, v27);
  return v28;
}

uint64_t sub_1D8E85690@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t sub_1D8E856D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5488, &qword_1D918F578);
  v48 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v46 = &v43 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5490, &qword_1D918F580);
  v49 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v47 = &v43 - v7;
  v8 = type metadata accessor for DownloadConsistency.IssueResolution(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - v12;
  v14 = type metadata accessor for DownloadedAssetEffect(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  if (qword_1EDCD0F18 != -1)
  {
    swift_once();
  }

  v20 = sub_1D917744C();
  __swift_project_value_buffer(v20, qword_1EDCD0F20);
  v45 = a1;
  sub_1D8E898F0(a1, v19, type metadata accessor for DownloadedAssetEffect);
  sub_1D8E898F0(a2, v13, type metadata accessor for DownloadConsistency.IssueResolution);
  v21 = sub_1D917741C();
  v22 = sub_1D9178CEC();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v43 = a3;
    v25 = v24;
    v52 = v24;
    *v23 = 136315394;
    sub_1D8E898F0(v19, v16, type metadata accessor for DownloadedAssetEffect);
    v26 = sub_1D917826C();
    v28 = v27;
    sub_1D8E89958(v19, type metadata accessor for DownloadedAssetEffect);
    v29 = sub_1D8CFA924(v26, v28, &v52);

    *(v23 + 4) = v29;
    *(v23 + 12) = 2080;
    sub_1D8E898F0(v13, v10, type metadata accessor for DownloadConsistency.IssueResolution);
    v30 = sub_1D917826C();
    v32 = v31;
    sub_1D8E89958(v13, type metadata accessor for DownloadConsistency.IssueResolution);
    v33 = sub_1D8CFA924(v30, v32, &v52);

    *(v23 + 14) = v33;
    _os_log_impl(&dword_1D8CEC000, v21, v22, "Applying (%s for resolution: %s", v23, 0x16u);
    swift_arrayDestroy();
    v34 = v25;
    a3 = v43;
    MEMORY[0x1DA72CB90](v34, -1, -1);
    MEMORY[0x1DA72CB90](v23, -1, -1);
  }

  else
  {

    sub_1D8E89958(v13, type metadata accessor for DownloadConsistency.IssueResolution);
    sub_1D8E89958(v19, type metadata accessor for DownloadedAssetEffect);
  }

  v35 = *(v44 + OBJC_IVAR___PFDownloadConsistency_effectApplicator + 24);
  v36 = *(v44 + OBJC_IVAR___PFDownloadConsistency_effectApplicator + 32);
  __swift_project_boxed_opaque_existential_1((v44 + OBJC_IVAR___PFDownloadConsistency_effectApplicator), v35);
  v52 = (*(v36 + 8))(v45, a3, v35, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5498, &qword_1D918F588);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54A0, &qword_1D918F590);
  sub_1D8CF48EC(&qword_1ECAB0368, &qword_1ECAB5498, &qword_1D918F588, MEMORY[0x1E695BED8]);
  v37 = v46;
  sub_1D9177B9C();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54A8, &unk_1D918F598);
  sub_1D8CF48EC(&qword_1ECAB07C8, &qword_1ECAB5488, &qword_1D918F578, MEMORY[0x1E695BD60]);
  sub_1D8CF48EC(&qword_1ECAB02C8, &qword_1ECAB54A8, &unk_1D918F598, MEMORY[0x1E695C008]);
  v38 = v47;
  v39 = v50;
  sub_1D9177BDC();
  (*(v48 + 8))(v37, v39);
  sub_1D8CF48EC(&qword_1ECAB06E8, &qword_1ECAB5490, &qword_1D918F580, MEMORY[0x1E695BDA0]);
  v40 = v51;
  v41 = sub_1D9177B1C();
  (*(v49 + 8))(v38, v40);
  return v41;
}

uint64_t sub_1D8E85D98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_1D8E898F0(a1, a2, type metadata accessor for DownloadedAssetEffect);
  v4 = type metadata accessor for DownloadedAssetEffect(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a2, 0, 1, v4);
}

uint64_t sub_1D8E85E20(void **a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54A0, &qword_1D918F590);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v18 - v3;
  v5 = *a1;
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v6 = sub_1D917744C();
  __swift_project_value_buffer(v6, qword_1EDCD0F88);
  v7 = v5;
  v8 = sub_1D917741C();
  v9 = sub_1D9178CFC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v5;
    v19 = v11;
    *v10 = 136315138;
    v12 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
    v13 = sub_1D917826C();
    v15 = sub_1D8CFA924(v13, v14, &v19);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1D8CEC000, v8, v9, "Failed to apply effect to the environment: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  v16 = type metadata accessor for DownloadedAssetEffect(0);
  (*(*(v16 - 8) + 56))(v4, 1, 1, v16);
  return sub_1D9177A0C();
}

id DownloadConsistency.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DownloadConsistency.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DownloadConsistency();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D8E86198()
{
  v1 = 0x4164656E776F6E75;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000022;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ELL;
  }
}

uint64_t sub_1D8E86200@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8E897C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8E86228(uint64_t a1)
{
  v2 = sub_1D8E88FE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8E86264(uint64_t a1)
{
  v2 = sub_1D8E88FE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8E862A0(uint64_t a1)
{
  v2 = sub_1D8E89128();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8E862DC(uint64_t a1)
{
  v2 = sub_1D8E89128();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D8E86318(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x5565646F73697065 && a2 == 0xEB00000000646975)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

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

uint64_t sub_1D8E863F0(uint64_t a1)
{
  v2 = sub_1D8E890D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8E8642C(uint64_t a1)
{
  v2 = sub_1D8E890D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8E86468()
{
  if (*v0)
  {
    return 1701603686;
  }

  else
  {
    return 12383;
  }
}

void sub_1D8E86490(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 1701603686 && a2 == 0xE400000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

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

uint64_t sub_1D8E86564(uint64_t a1)
{
  v2 = sub_1D8E89038();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8E865A0(uint64_t a1)
{
  v2 = sub_1D8E89038();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DownloadConsistency.Issue.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5398, &qword_1D918EE10);
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v49 - v3;
  v61 = sub_1D9176C2C();
  v55 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53A0, &qword_1D918EE18);
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v51 = &v49 - v6;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53A8, &qword_1D918EE20);
  v50 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v8 = &v49 - v7;
  v67 = sub_1D9176EAC();
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v58 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v49 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  v16 = type metadata accessor for DownloadConsistency.Issue(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53B0, &qword_1D918EE28);
  v66 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v20 = &v49 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8E88FE4();
  v68 = v20;
  sub_1D9179F1C();
  sub_1D8E898F0(v62, v18, type metadata accessor for DownloadConsistency.Issue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v22 = &v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48)];
      v24 = *v22;
      v23 = v22[1];
      v61 = v24;
      v62 = v23;
      v25 = v65;
      v26 = v67;
      (*(v65 + 32))(v12, v18, v67);
      v74 = 1;
      sub_1D8E890D4();
      v27 = v51;
      v28 = v64;
      v29 = v68;
      sub_1D917993C();
      v73 = 0;
      sub_1D8E8908C(&qword_1ECAB53C8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      v30 = v53;
      v31 = v63;
      sub_1D91799FC();
      if (v31)
      {

        (*(v52 + 8))(v27, v30);
        (*(v25 + 8))(v12, v26);
        return (*(v66 + 8))(v29, v28);
      }

      else
      {
        v72 = 1;
        sub_1D91799BC();

        (*(v52 + 8))(v27, v30);
        (*(v25 + 8))(v12, v67);
        return (*(v66 + 8))(v68, v28);
      }
    }

    else
    {
      v40 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
      v41 = v65;
      v42 = v67;
      (*(v65 + 32))(v58, v18, v67);
      v43 = v55;
      (*(v55 + 32))(v60, &v18[v40], v61);
      v77 = 2;
      sub_1D8E89038();
      v44 = v54;
      v45 = v64;
      v46 = v68;
      sub_1D917993C();
      v76 = 0;
      sub_1D8E8908C(&qword_1ECAB53C8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
      v47 = v57;
      v48 = v63;
      sub_1D91799FC();
      if (!v48)
      {
        v75 = 1;
        sub_1D8E8908C(&qword_1ECAB2CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
        sub_1D91799FC();
      }

      (*(v56 + 8))(v44, v47);
      (*(v43 + 8))(v60, v61);
      (*(v41 + 8))(v58, v42);
      return (*(v66 + 8))(v46, v45);
    }
  }

  else
  {
    v62 = *&v18[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48)];
    v33 = v65;
    v34 = v67;
    (*(v65 + 32))(v15, v18, v67);
    v71 = 0;
    sub_1D8E89128();
    v35 = v64;
    v36 = v68;
    sub_1D917993C();
    v70 = 0;
    sub_1D8E8908C(&qword_1ECAB53C8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    v37 = v63;
    sub_1D91799FC();
    if (v37)
    {

      (*(v50 + 8))(v8, v59);
      (*(v33 + 8))(v15, v34);
      v38 = *(v66 + 8);
      v39 = v36;
    }

    else
    {
      v69[0] = 1;
      sub_1D91799BC();

      (*(v50 + 8))(v8, v59);
      (*(v33 + 8))(v15, v34);
      v38 = *(v66 + 8);
      v39 = v68;
    }

    return v38(v39, v35);
  }
}

uint64_t DownloadConsistency.Issue.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9176EAC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DownloadConsistency.Issue(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8E898F0(v2, v13, type metadata accessor for DownloadConsistency.Issue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
      (*(v8 + 32))(v10, v13, v7);
      (*(v4 + 32))(v6, &v13[v16], v3);
      MEMORY[0x1DA72B390](2);
      sub_1D8E8908C(&qword_1EDCD5920, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D917814C();
      sub_1D8E8908C(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1D917814C();
      (*(v4 + 8))(v6, v3);
      return (*(v8 + 8))(v10, v7);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620);
    (*(v8 + 32))(v10, v13, v7);
    v15 = 1;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620);
    (*(v8 + 32))(v10, v13, v7);
    v15 = 0;
  }

  MEMORY[0x1DA72B390](v15);
  sub_1D8E8908C(&qword_1EDCD5920, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D917814C();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return (*(v8 + 8))(v10, v7);
}

uint64_t DownloadConsistency.Issue.hashValue.getter()
{
  sub_1D9179DBC();
  DownloadConsistency.Issue.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t DownloadConsistency.Issue.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53E0, &qword_1D918EE30);
  v79 = *(v3 - 8);
  v80 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v83 = &v69 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53E8, &qword_1D918EE38);
  v6 = *(v5 - 8);
  v77 = v5;
  v78 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v82 = &v69 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53F0, &qword_1D918EE40);
  v9 = *(v8 - 8);
  v75 = v8;
  v76 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v69 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB53F8, &qword_1D918EE48);
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v12 = &v69 - v11;
  v13 = type metadata accessor for DownloadConsistency.Issue(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v69 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v69 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v69 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v69 - v23;
  v25 = a1[3];
  v88 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1D8E88FE4();
  v26 = v87;
  sub_1D9179EEC();
  if (!v26)
  {
    v70 = v18;
    v71 = v21;
    v72 = v15;
    v73 = v24;
    v74 = 0;
    v28 = v81;
    v27 = v82;
    v29 = v83;
    v87 = v13;
    v31 = v85;
    v30 = v86;
    v32 = sub_1D917991C();
    v33 = v32;
    v34 = *(v32 + 16);
    if (!v34 || ((v35 = *(v32 + 32), v34 == 1) ? (v36 = v35 == 3) : (v36 = 1), v36))
    {
      v37 = sub_1D917951C();
      swift_allocError();
      v39 = v38;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50);
      *v39 = v87;
      sub_1D917983C();
      sub_1D91794FC();
      (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
      swift_willThrow();
      (*(v84 + 8))(v12, v30);
    }

    else
    {
      if (*(v32 + 32))
      {
        if (v35 != 1)
        {
          v97 = 2;
          sub_1D8E89038();
          v45 = v74;
          sub_1D917982C();
          v46 = v84;
          if (!v45)
          {
            sub_1D9176EAC();
            v96 = 0;
            sub_1D8E8908C(&qword_1ECAB5408, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
            sub_1D91798FC();
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0);
            sub_1D9176C2C();
            v95 = 1;
            sub_1D8E8908C(&qword_1ECAB2C98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
            v57 = v80;
            sub_1D91798FC();
            (*(v79 + 8))(v29, v57);
            (*(v46 + 8))(v12, v86);
            swift_unknownObjectRelease();
            v68 = v72;
            swift_storeEnumTagMultiPayload();
            v62 = v68;
            v63 = v73;
            v31 = v85;
            goto LABEL_22;
          }

          (*(v84 + 8))(v12, v30);
          goto LABEL_9;
        }

        v94 = 1;
        sub_1D8E890D4();
        v41 = v74;
        sub_1D917982C();
        v42 = v84;
        if (!v41)
        {
          v83 = v33;
          sub_1D9176EAC();
          v93 = 0;
          sub_1D8E8908C(&qword_1ECAB5408, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
          v43 = v77;
          sub_1D91798FC();
          v49 = v30;
          v50 = v12;
          v92 = 1;
          v51 = sub_1D91798BC();
          v80 = v52;
          v81 = v51;
          v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620);
          v59 = v70;
          v60 = &v70[*(v58 + 48)];
          (*(v78 + 8))(v27, v43);
          (*(v42 + 8))(v50, v49);
          swift_unknownObjectRelease();
          v61 = v80;
          *v60 = v81;
          *(v60 + 1) = v61;
          swift_storeEnumTagMultiPayload();
          v62 = v59;
          v63 = v73;
LABEL_22:
          sub_1D8E89A4C(v62, v63, type metadata accessor for DownloadConsistency.Issue);
          sub_1D8E89A4C(v63, v31, type metadata accessor for DownloadConsistency.Issue);
          return __swift_destroy_boxed_opaque_existential_1Tm(v88);
        }
      }

      else
      {
        v91 = 0;
        sub_1D8E89128();
        v44 = v74;
        sub_1D917982C();
        v63 = v73;
        if (!v44)
        {
          v83 = v33;
          sub_1D9176EAC();
          v90 = 0;
          sub_1D8E8908C(&qword_1ECAB5408, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
          v47 = v28;
          v48 = v75;
          sub_1D91798FC();
          v53 = v30;
          v54 = v12;
          v55 = v53;
          v89 = 1;
          v82 = sub_1D91798BC();
          v80 = v56;
          v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620);
          v65 = v71;
          v66 = &v71[*(v64 + 48)];
          (*(v76 + 8))(v47, v48);
          (*(v84 + 8))(v54, v55);
          swift_unknownObjectRelease();
          v67 = v80;
          *v66 = v82;
          *(v66 + 1) = v67;
          swift_storeEnumTagMultiPayload();
          v62 = v65;
          goto LABEL_22;
        }

        v42 = v84;
      }

      (*(v42 + 8))(v12, v30);
    }

LABEL_9:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v88);
}

uint64_t sub_1D8E87E88()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 18;
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

uint64_t sub_1D8E87EBC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 8;
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

uint64_t sub_1D8E87EF0()
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

uint64_t sub_1D8E87F24()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
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

uint64_t sub_1D8E87F58()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 9;
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

uint64_t sub_1D8E87F8C()
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

uint64_t sub_1D8E87FC0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
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

uint64_t sub_1D8E88028()
{
  sub_1D9179DBC();
  DownloadConsistency.Issue.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E8806C(uint64_t a1)
{
  sub_1D9179DBC();
  DownloadConsistency.Issue.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t DownloadConsistency.IssueResolution.strategy.getter()
{
  type metadata accessor for DownloadConsistency.IssueResolution(0);
}

uint64_t static DownloadConsistency.IssueResolution.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s18PodcastsFoundation19DownloadConsistencyC5IssueO2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v4 = type metadata accessor for DownloadConsistency.IssueResolution(0);
    v5 = sub_1D8E845DC(*(a1 + *(v4 + 20)), *(a2 + *(v4 + 20)), type metadata accessor for DownloadedAssetEffect, type metadata accessor for DownloadedAssetEffect, _s18PodcastsFoundation21DownloadedAssetEffectO2eeoiySbAC_ACtFZ_0, type metadata accessor for DownloadedAssetEffect);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t DownloadConsistency.IssueResolution.hash(into:)(uint64_t a1)
{
  DownloadConsistency.Issue.hash(into:)(a1);
  v3 = *(v1 + *(type metadata accessor for DownloadConsistency.IssueResolution(0) + 20));

  return sub_1D8E88458(a1, v3);
}

uint64_t DownloadConsistency.IssueResolution.hashValue.getter()
{
  sub_1D9179DBC();
  DownloadConsistency.Issue.hash(into:)(v3);
  v1 = type metadata accessor for DownloadConsistency.IssueResolution(0);
  sub_1D8E88458(v3, *(v0 + *(v1 + 20)));
  return sub_1D9179E1C();
}

uint64_t sub_1D8E88250(uint64_t a1)
{
  sub_1D9179DBC();
  DownloadConsistency.Issue.hash(into:)(v4);
  sub_1D8E88458(v4, *(v1 + *(a1 + 20)));
  return sub_1D9179E1C();
}

uint64_t sub_1D8E882A4(uint64_t a1, uint64_t a2)
{
  DownloadConsistency.Issue.hash(into:)(a1);
  v5 = *(v2 + *(a2 + 20));

  return sub_1D8E88458(a1, v5);
}

uint64_t sub_1D8E882F0(uint64_t a1, uint64_t a2)
{
  sub_1D9179DBC();
  DownloadConsistency.Issue.hash(into:)(v5);
  sub_1D8E88458(v5, *(v2 + *(a2 + 20)));
  return sub_1D9179E1C();
}

uint64_t sub_1D8E88340(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s18PodcastsFoundation19DownloadConsistencyC5IssueO2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v6 = sub_1D8E845DC(*(a1 + *(a3 + 20)), *(a2 + *(a3 + 20)), type metadata accessor for DownloadedAssetEffect, type metadata accessor for DownloadedAssetEffect, _s18PodcastsFoundation21DownloadedAssetEffectO2eeoiySbAC_ACtFZ_0, type metadata accessor for DownloadedAssetEffect);
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t DownloadConsistency.IssueResolutionError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

uint64_t sub_1D8E88458(uint64_t a1, uint64_t a2)
{
  v23 = sub_1D9176C2C();
  v3 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v22 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DownloadedAssetEffect(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v20 - v11;
  v13 = *(a2 + 16);
  result = MEMORY[0x1DA72B390](v13, v10);
  if (v13)
  {
    v15 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v16 = *(v6 + 72);
    v20 = (v3 + 8);
    v21 = (v3 + 32);
    do
    {
      sub_1D8E898F0(v15, v12, type metadata accessor for DownloadedAssetEffect);
      sub_1D8E898F0(v12, v8, type metadata accessor for DownloadedAssetEffect);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload)
      {
        if (EnumCaseMultiPayload != 1)
        {
          v18 = v22;
          v19 = v23;
          (*v21)(v22, v8, v23);
          MEMORY[0x1DA72B390](2);
          sub_1D8E8908C(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
          sub_1D917814C();
          (*v20)(v18, v19);
          goto LABEL_5;
        }

        MEMORY[0x1DA72B390](1);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x1DA72B390](0);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

LABEL_5:
      result = sub_1D8E89958(v12, type metadata accessor for DownloadedAssetEffect);
      v15 += v16;
      --v13;
    }

    while (v13);
  }

  return result;
}

void sub_1D8E8874C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x1DA72B390](v3);
  if (v3)
  {
    v4 = (a2 + 64);
    do
    {
      v5 = *(v4 - 4);
      v6 = *(v4 - 3);
      v7 = *(v4 - 2);
      v8 = *(v4 - 1);
      v9 = *v4;
      if (v9 == 1)
      {
        MEMORY[0x1DA72B390](1);
        sub_1D8E899C4(v5, v6, v7, v8, 1);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x1DA72B390](0);
        MEMORY[0x1DA72B3C0](v5);
      }

      sub_1D8E89A08(v5, v6, v7, v8, v9);
      v4 += 40;
      --v3;
    }

    while (v3);
  }
}

uint64_t _s18PodcastsFoundation19DownloadConsistencyC5IssueO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v75 = *(v4 - 8);
  v76 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v73 = &v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v72 - v7;
  v8 = sub_1D9176EAC();
  v9 = *(v8 - 8);
  v78 = v8;
  v79 = v9;
  MEMORY[0x1EEE9AC00](v8);
  v72 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v74 = &v72 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v72 - v14;
  v16 = type metadata accessor for DownloadConsistency.Issue(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v72 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v72 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v72 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54B8, &qword_1D918F5A8);
  MEMORY[0x1EEE9AC00](v25 - 8);
  v27 = &v72 - v26;
  v29 = &v72 + *(v28 + 56) - v26;
  sub_1D8E898F0(a1, &v72 - v26, type metadata accessor for DownloadConsistency.Issue);
  sub_1D8E898F0(a2, v29, type metadata accessor for DownloadConsistency.Issue);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    sub_1D8E898F0(v27, v24, type metadata accessor for DownloadConsistency.Issue);
    v44 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48);
    v46 = *&v24[v44];
    v45 = *&v24[v44 + 8];
    if (swift_getEnumCaseMultiPayload())
    {

      goto LABEL_18;
    }

    v62 = *&v29[v44];
    v63 = *&v29[v44 + 8];
    v77 = v62;
    v64 = v78;
    v65 = v79;
    (*(v79 + 32))(v15, v29, v78);
    v66 = sub_1D9176E7C();
    v67 = *(v65 + 8);
    v67(v24, v64);
    if ((v66 & 1) == 0)
    {
      v67(v15, v64);
LABEL_29:

      goto LABEL_30;
    }

    if (v46 == v77 && v45 == v63)
    {

      v67(v15, v78);
      goto LABEL_35;
    }

    v69 = sub_1D9179ACC();

    v67(v15, v78);
    if (v69)
    {
      goto LABEL_35;
    }

LABEL_30:
    sub_1D8E89958(v27, type metadata accessor for DownloadConsistency.Issue);
    goto LABEL_31;
  }

  if (EnumCaseMultiPayload == 1)
  {
    sub_1D8E898F0(v27, v21, type metadata accessor for DownloadConsistency.Issue);
    v31 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51C8, &unk_1D918E620) + 48);
    v33 = *&v21[v31];
    v32 = *&v21[v31 + 8];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v34 = *&v29[v31];
      v35 = *&v29[v31 + 8];
      v77 = v34;
      v36 = v79;
      v37 = v74;
      v38 = v29;
      v39 = v78;
      (*(v79 + 32))(v74, v38, v78);
      v40 = sub_1D9176E7C();
      v41 = *(v36 + 8);
      v41(v21, v39);
      if (v40)
      {
        if (v33 != v77 || v32 != v35)
        {
          v43 = sub_1D9179ACC();

          v41(v74, v39);
          if (v43)
          {
            goto LABEL_35;
          }

          goto LABEL_30;
        }

        v41(v74, v39);
LABEL_35:
        sub_1D8E89958(v27, type metadata accessor for DownloadConsistency.Issue);
        v60 = 1;
        return v60 & 1;
      }

      v41(v37, v39);
      goto LABEL_29;
    }

    v24 = v21;
LABEL_18:
    (*(v79 + 8))(v24, v78);
    sub_1D8D08A50(v27, &qword_1ECAB54B8, &qword_1D918F5A8);
LABEL_31:
    v60 = 0;
    return v60 & 1;
  }

  sub_1D8E898F0(v27, v18, type metadata accessor for DownloadConsistency.Issue);
  v47 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB51D0, &unk_1D918E7C0) + 48);
  if (swift_getEnumCaseMultiPayload() != 2)
  {
    (*(v75 + 8))(&v18[v47], v76);
    v24 = v18;
    goto LABEL_18;
  }

  v48 = v78;
  v49 = v72;
  (*(v79 + 32))(v72, v29, v78);
  v51 = v75;
  v50 = v76;
  v52 = *(v75 + 32);
  v52(v77, &v18[v47], v76);
  v53 = &v29[v47];
  v54 = v73;
  v52(v73, v53, v50);
  v55 = v49;
  v56 = v79;
  v57 = sub_1D9176E7C();
  v58 = *(v56 + 8);
  v58(v18, v48);
  if ((v57 & 1) == 0)
  {
    v70 = *(v51 + 8);
    v70(v54, v50);
    v70(v77, v50);
    v58(v55, v48);
    goto LABEL_30;
  }

  v59 = v77;
  v60 = sub_1D9176B8C();
  v61 = *(v51 + 8);
  v61(v54, v50);
  v61(v59, v50);
  v58(v55, v78);
  sub_1D8E89958(v27, type metadata accessor for DownloadConsistency.Issue);
  return v60 & 1;
}

unint64_t sub_1D8E88FE4()
{
  result = qword_1ECAB53B8;
  if (!qword_1ECAB53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB53B8);
  }

  return result;
}

unint64_t sub_1D8E89038()
{
  result = qword_1ECAB53C0;
  if (!qword_1ECAB53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB53C0);
  }

  return result;
}

uint64_t sub_1D8E8908C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D8E890D4()
{
  result = qword_1ECAB53D0;
  if (!qword_1ECAB53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB53D0);
  }

  return result;
}

unint64_t sub_1D8E89128()
{
  result = qword_1ECAB53D8;
  if (!qword_1ECAB53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB53D8);
  }

  return result;
}

unint64_t sub_1D8E89210()
{
  result = qword_1ECAB5420;
  if (!qword_1ECAB5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5420);
  }

  return result;
}

unint64_t sub_1D8E893A8()
{
  result = qword_1ECAB5428;
  if (!qword_1ECAB5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5428);
  }

  return result;
}

unint64_t sub_1D8E89400()
{
  result = qword_1ECAB5430;
  if (!qword_1ECAB5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5430);
  }

  return result;
}

unint64_t sub_1D8E89458()
{
  result = qword_1ECAB5438;
  if (!qword_1ECAB5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5438);
  }

  return result;
}

unint64_t sub_1D8E894B0()
{
  result = qword_1ECAB5440;
  if (!qword_1ECAB5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5440);
  }

  return result;
}

unint64_t sub_1D8E89508()
{
  result = qword_1ECAB5448;
  if (!qword_1ECAB5448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5448);
  }

  return result;
}

unint64_t sub_1D8E89560()
{
  result = qword_1ECAB5450;
  if (!qword_1ECAB5450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5450);
  }

  return result;
}

unint64_t sub_1D8E895B8()
{
  result = qword_1ECAB5458;
  if (!qword_1ECAB5458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5458);
  }

  return result;
}

unint64_t sub_1D8E89610()
{
  result = qword_1ECAB5460;
  if (!qword_1ECAB5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5460);
  }

  return result;
}

unint64_t sub_1D8E89668()
{
  result = qword_1ECAB5468;
  if (!qword_1ECAB5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5468);
  }

  return result;
}

unint64_t sub_1D8E896C0()
{
  result = qword_1ECAB5470;
  if (!qword_1ECAB5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5470);
  }

  return result;
}

unint64_t sub_1D8E89718()
{
  result = qword_1ECAB5478;
  if (!qword_1ECAB5478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5478);
  }

  return result;
}

unint64_t sub_1D8E89770()
{
  result = qword_1ECAB5480;
  if (!qword_1ECAB5480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5480);
  }

  return result;
}

uint64_t sub_1D8E897C4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ELL && 0x80000001D91CB1C0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001D91CB1E0 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4164656E776F6E75 && a2 == 0xEC00000074657373)
  {

    return 2;
  }

  else
  {
    v5 = sub_1D9179ACC();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1D8E898F0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8E89958(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D8E899C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }
}

double sub_1D8E89A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5)
  {
  }

  return result;
}

uint64_t sub_1D8E89A4C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8E89AB4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for DownloadConsistency.IssueResolution(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  result = sub_1D8E856D0(a1, v2 + v6, v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  *a2 = result;
  return result;
}

uint64_t sub_1D8E89B5C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB54A0, &qword_1D918F590);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t DownloadEnvironment.init(recordKeeper:fileStorage:dispatchQueue:)@<X0>(__int128 *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D8D6BCE0(a1, a4);
  result = sub_1D8D6BCE0(a2, a4 + 40);
  *(a4 + 80) = a3;
  return result;
}

id _s18PodcastsFoundation25FairPlayValidationManagerC8ResponseCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8E89D50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = *(v7 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 24);
  v9 = *(v7 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 32);
  __swift_project_boxed_opaque_existential_1((v7 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance), v8);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a2;
  v11[4] = a3;
  v12 = *(v9 + 8);

  v12(a1, sub_1D8E8A144, v11, v8, v9);
}

uint64_t sub_1D8E89E64(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 24);
  v7 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance), v6);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v10 = *(v7 + 24);

  v10(sub_1D8E8A0E0, v9, v6, v7);
}

uint64_t sub_1D8E89F70(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 24);
  v7 = *(v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance + 32);
  __swift_project_boxed_opaque_existential_1((v5 + OBJC_IVAR____TtC18PodcastsFoundation38DispatchingFairPlayEpisodeDataFetching_wrappedInstance), v6);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a1;
  v9[4] = a2;
  v10 = *(v7 + 32);

  v10(sub_1D8E8A07C, v9, v6, v7);
}

id static DispatchingFairPlayInvalidationManaging.invalidationManager(_:callback:)(uint64_t a1, void *a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance] = a1;
  *&v5[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_responseQueue] = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  swift_unknownObjectRetain();
  v6 = a2;
  return objc_msgSendSuper2(&v8, sel_init);
}

void DispatchingFairPlayInvalidationManaging.invalidateFairPlayKey(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = sub_1D8E8A3F8;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8E8A43C;
  v11[3] = &block_descriptor_13;
  v10 = _Block_copy(v11);
  sub_1D8D1F93C(a2, a3);

  [v7 invalidateFairPlayKeyFor:a1 completion:v10];
  _Block_release(v10);
}

void sub_1D8E8A43C(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3(a2);
}

void DispatchingFairPlayInvalidationManaging.markKeyForInvalidation(at:shouldRemove:)(uint64_t a1, char a2)
{
  v4 = *(v2 + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance);
  v5 = sub_1D9176B1C();
  [v4 markKeyForInvalidationAt:v5 shouldRemove:a2 & 1];
}

void DispatchingFairPlayInvalidationManaging.markAllFairPlayKeysForInvalidation(shouldRemove:completion:)(char a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = sub_1D8E8A824;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8E8A43C;
  v11[3] = &block_descriptor_10;
  v10 = _Block_copy(v11);
  sub_1D8D1F93C(a2, a3);

  [v7 markAllFairPlayKeysForInvalidationWithShouldRemove:a1 & 1 completion:v10];
  _Block_release(v10);
}

void DispatchingFairPlayInvalidationManaging.removeKey(for:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = sub_1D8E8AD18;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8E8A43C;
  v11[3] = &block_descriptor_17_0;
  v10 = _Block_copy(v11);

  [v7 removeKeyFor:a1 completion:v10];
  _Block_release(v10);
}

char *sub_1D8E8AA4C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D9177E0C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D9177E9C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v16 = *&result[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_responseQueue];
    v24 = v11;
    v17 = a3;
    v18 = result;
    v19 = v16;

    v20 = swift_allocObject();
    v20[2] = v17;
    v20[3] = a4;
    v20[4] = a1;
    aBlock[4] = sub_1D8E8B4F0;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_54;
    v21 = _Block_copy(aBlock);

    v22 = a1;
    sub_1D9177E4C();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v14, v10, v21);
    _Block_release(v21);

    (*(v8 + 8))(v10, v7);
    (*(v12 + 8))(v14, v24);
  }

  return result;
}

id DispatchingFairPlayInvalidationManaging.removeKey(for:)(uint64_t a1)
{
  v2 = [*(v1 + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance) removeKeyFor_];

  return v2;
}

void DispatchingFairPlayInvalidationManaging.removalAllFairPlayKeys(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v10[4] = sub_1D8E8B24C;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D8E8A43C;
  v10[3] = &block_descriptor_24_0;
  v9 = _Block_copy(v10);
  sub_1D8D1F93C(a1, a2);

  [v6 removalAllFairPlayKeysWithCompletion_];
  _Block_release(v9);
}

char *sub_1D8E8AF8C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a6;
  v23 = a7;
  v10 = sub_1D9177E0C();
  v25 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9177E9C();
  v13 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = *&result[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_responseQueue];

    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = a1;
    aBlock[4] = v22;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = v23;
    v20 = _Block_copy(aBlock);
    sub_1D8D1F93C(a3, a4);
    v21 = a1;
    sub_1D9177E4C();
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v15, v12, v20);
    _Block_release(v20);

    (*(v25 + 8))(v12, v10);
    (*(v13 + 8))(v15, v24);
  }

  return result;
}

id DispatchingFairPlayInvalidationManaging.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DispatchingFairPlayInvalidationManaging.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FairPlayInvalidationManaging.receive(on:)(void *a1)
{
  v3 = type metadata accessor for DispatchingFairPlayInvalidationManaging();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_wrappedInstance] = v1;
  *&v4[OBJC_IVAR___PFDispatchingFairPlayInvalidationManaging_responseQueue] = a1;
  v7.receiver = v4;
  v7.super_class = v3;
  swift_unknownObjectRetain();
  v5 = a1;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t objectdestroy_44Tm_0()
{
  if (*(v0 + 16))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_1D8E8B56C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    return v1(*(v0 + 32));
  }

  return result;
}

id static DispatchingFairPlayKeyLoading.receive(on:loader:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance] = a2;
  *&v5[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue] = a1;
  v8.receiver = v5;
  v8.super_class = v2;
  swift_unknownObjectRetain();
  v6 = a1;
  return objc_msgSendSuper2(&v8, sel_init);
}

void DispatchingFairPlayKeyLoading.createSession(asset:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance);
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = sub_1D8E8BAFC;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8E8BB08;
  v11[3] = &block_descriptor_14;
  v10 = _Block_copy(v11);
  sub_1D8D1F93C(a2, a3);

  [v7 createSessionWithAsset:a1 completion:v10];
  _Block_release(v10);
}

char *sub_1D8E8B7F4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9177E9C();
  v13 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = v10;
    v18 = result;
    v23 = *&result[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue];

    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a5;
    v19[4] = a1;
    v19[5] = a2;
    aBlock[4] = sub_1D8E8CD6C;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_98;
    v20 = _Block_copy(aBlock);
    sub_1D8D1F93C(a4, a5);
    swift_unknownObjectRetain();
    v21 = a2;
    sub_1D9177E4C();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC40(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    v22 = v23;
    MEMORY[0x1DA72A400](0, v15, v12, v20);
    _Block_release(v20);

    (*(v17 + 8))(v12, v9);
    (*(v13 + 8))(v15, v24);
  }

  return result;
}

uint64_t sub_1D8E8BB08(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  swift_unknownObjectRetain();
  v6 = a3;
  v5(a2, a3);

  return swift_unknownObjectRelease();
}

char *sub_1D8E8BDC8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v22 = a6;
  v23 = a7;
  v10 = sub_1D9177E0C();
  v25 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9177E9C();
  v13 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = result;
    v18 = *&result[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue];

    v19 = swift_allocObject();
    v19[2] = a3;
    v19[3] = a4;
    v19[4] = a1;
    aBlock[4] = v22;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = v23;
    v20 = _Block_copy(aBlock);
    sub_1D8D1F93C(a3, a4);
    v21 = a1;
    sub_1D9177E4C();
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC40(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v15, v12, v20);
    _Block_release(v20);

    (*(v25 + 8))(v12, v10);
    (*(v13 + 8))(v15, v24);
  }

  return result;
}

void DispatchingFairPlayKeyLoading.renewKeyRequests(assets:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance);
  type metadata accessor for FairPlayAsset();
  v7 = sub_1D91785DC();
  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = a2;
  v9[4] = a3;
  v11[4] = sub_1D8E8C61C;
  v11[5] = v9;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8E8C628;
  v11[3] = &block_descriptor_24_1;
  v10 = _Block_copy(v11);
  sub_1D8D1F93C(a2, a3);

  [v6 renewKeyRequestsWithAssets:v7 completion:v10];
  _Block_release(v10);
}

char *sub_1D8E8C314(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1D9177E9C();
  v13 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = v10;
    v18 = result;
    v23 = *&result[OBJC_IVAR___PFDispatchingFairPlayKeyLoader_responseQueue];

    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a5;
    v19[4] = a1;
    v19[5] = a2;
    aBlock[4] = sub_1D8E8CD04;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_80;
    v20 = _Block_copy(aBlock);
    sub_1D8D1F93C(a4, a5);

    v21 = a2;
    sub_1D9177E4C();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBC40(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    v22 = v23;
    MEMORY[0x1DA72A400](0, v15, v12, v20);
    _Block_release(v20);

    (*(v17 + 8))(v12, v9);
    (*(v13 + 8))(v15, v24);
  }

  return result;
}

void sub_1D8E8C628(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  type metadata accessor for FairPlayAsset();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D8CFBC40(&qword_1ECAB5520, type metadata accessor for FairPlayAsset, MEMORY[0x1E69E81B8]);
  v5 = sub_1D917805C();

  v6 = a3;
  v4(v5, a3);
}

void sub_1D8E8C990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, SEL *a7)
{
  v11 = v7;
  v15 = *(v11 + OBJC_IVAR___PFDispatchingFairPlayKeyLoader_wrappedInstance);
  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = a2;
  v17[4] = a3;
  v19[4] = a5;
  v19[5] = v17;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1D8E8A43C;
  v19[3] = a6;
  v18 = _Block_copy(v19);
  sub_1D8D1F93C(a2, a3);

  [v15 *a7];
  _Block_release(v18);
}

id DispatchingFairPlayKeyLoading.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DispatchingFairPlayKeyLoading.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t objectdestroy_76Tm(void (*a1)(void))
{
  if (*(v1 + 16))
  {
  }

  a1(*(v1 + 32));

  return swift_deallocObject();
}

uint64_t sub_1D8E8CD74()
{
  v1 = v0[2];
  if (v1)
  {
    return v1(v0[4], v0[5]);
  }

  return result;
}

id static DispatchingFairPlayValidationManaging.receive(on:manager:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PFDispatchingFairPlayValidationManaging_wrappedInstance] = a2;
  *&v5[OBJC_IVAR___PFDispatchingFairPlayValidationManaging_responseQueue] = a1;
  v8.receiver = v5;
  v8.super_class = v2;
  swift_unknownObjectRetain();
  v6 = a1;
  return objc_msgSendSuper2(&v8, sel_init);
}

void DispatchingFairPlayValidationManaging.validateDownloadedEpisodes(completion:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(v3 + OBJC_IVAR___PFDispatchingFairPlayValidationManaging_wrappedInstance);
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v8 = swift_allocObject();
  v8[2] = v7;
  v8[3] = a1;
  v8[4] = a2;
  v10[4] = sub_1D8E8D2D8;
  v10[5] = v8;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D8E8D2E4;
  v10[3] = &block_descriptor_15;
  v9 = _Block_copy(v10);
  sub_1D8D1F93C(a1, a2);

  [v6 validateDownloadedEpisodesWithCompletion_];
  _Block_release(v9);
}

char *sub_1D8E8D004(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_1D9177E0C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1D9177E9C();
  v13 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v15 = &v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = v10;
    v18 = result;
    v24 = *&result[OBJC_IVAR___PFDispatchingFairPlayValidationManaging_responseQueue];

    v19 = swift_allocObject();
    v19[2] = a4;
    v19[3] = a5;
    v19[4] = a1;
    v19[5] = a2;
    aBlock[4] = sub_1D8E8D5F4;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_15;
    v20 = _Block_copy(aBlock);
    sub_1D8D1F93C(a4, a5);
    v21 = a1;
    v22 = a2;
    sub_1D9177E4C();
    v26 = MEMORY[0x1E69E7CC0];
    sub_1D8D123F8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8D1D5B0();
    sub_1D91792CC();
    v23 = v24;
    MEMORY[0x1DA72A400](0, v15, v12, v20);
    _Block_release(v20);

    (*(v17 + 8))(v12, v9);
    (*(v13 + 8))(v15, v25);
  }

  return result;
}

void sub_1D8E8D2E4(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v7 = a2;
  v6 = a3;
  v5(v7, a3);
}

id DispatchingFairPlayValidationManaging.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DispatchingFairPlayValidationManaging.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id FairPlayValidationManaging.receive(on:)(void *a1)
{
  v3 = type metadata accessor for DispatchingFairPlayValidationManaging();
  v4 = objc_allocWithZone(v3);
  *&v4[OBJC_IVAR___PFDispatchingFairPlayValidationManaging_wrappedInstance] = v1;
  *&v4[OBJC_IVAR___PFDispatchingFairPlayValidationManaging_responseQueue] = a1;
  v7.receiver = v4;
  v7.super_class = v3;
  swift_unknownObjectRetain();
  v5 = a1;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1D8E8D5F4()
{
  v1 = v0[2];
  if (v1)
  {
    return v1(v0[4], v0[5]);
  }

  return result;
}

uint64_t AVURLAsset.fairPlayIdentifier.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D8E8E8D8;

  return sub_1D8E8D6C4();
}

uint64_t sub_1D8E8D6C4()
{
  v1 = swift_task_alloc();
  *(v0 + 216) = v1;
  *v1 = v0;
  v1[1] = sub_1D8E8D77C;

  return sub_1D8E8E118();
}

uint64_t sub_1D8E8D77C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 224) = a1;

  if (v1)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D8E8D8F4, 0, 0);
  }
}

uint64_t sub_1D8E8D8F4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4830, &unk_1D918F850);
  v1 = sub_1D91770AC();
  *(v0 + 232) = v1;
  v2 = swift_task_alloc();
  *(v0 + 240) = v2;
  *v2 = v0;
  v2[1] = sub_1D8E8D9F4;

  return MEMORY[0x1EEE68140](v0 + 152, v1, 0, 0);
}

uint64_t sub_1D8E8D9F4()
{
  *(*v1 + 248) = v0;

  if (v0)
  {
    v2 = sub_1D8E8E080;
  }

  else
  {

    v2 = sub_1D8E8DB44;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8E8DB44()
{
  if (!*(v0 + 160))
  {
    v4 = *(v0 + 224);
    v5 = 0x80000001D91CB510;
    sub_1D8E8E78C();
    swift_allocError();
    v7 = 0xD000000000000027;
    goto LABEL_5;
  }

  v1 = sub_1D9176C4C();
  v3 = v2;

  if (v3 >> 60 == 15)
  {
    v4 = *(v0 + 224);
    v5 = 0x80000001D91CB540;
    sub_1D8E8E78C();
    swift_allocError();
    v7 = 0xD000000000000023;
LABEL_5:
    *v6 = v7;
    v6[1] = v5;
    swift_willThrow();
LABEL_6:

LABEL_7:
    v8 = *(v0 + 8);

    return v8();
  }

  v10 = objc_opt_self();
  v11 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  *(v0 + 200) = 0;
  v12 = [v10 JSONObjectWithData:v11 options:0 error:v0 + 200];

  v13 = *(v0 + 200);
  if (!v12)
  {
    v4 = *(v0 + 224);
    v27 = v13;
    sub_1D9176A6C();

    swift_willThrow();
    sub_1D8D75668(v1, v3);
    goto LABEL_6;
  }

  sub_1D917928C();
  swift_unknownObjectRelease();
  sub_1D8CFAD1C(v0 + 56, v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5240, qword_1D918E860);
  if (!swift_dynamicCast())
  {
    v28 = *(v0 + 224);
    sub_1D8E8E78C();
    swift_allocError();
    *v29 = 0xD000000000000020;
    v29[1] = 0x80000001D91CB570;
    swift_willThrow();
    v30 = v1;
    v31 = v3;
LABEL_36:
    sub_1D8D75668(v30, v31);

    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
    goto LABEL_7;
  }

  v39 = v1;
  v14 = *(v0 + 208);
  v15 = *(v14 + 16);
  if (!v15)
  {
    v40 = MEMORY[0x1E69E7CC0];
    goto LABEL_31;
  }

  v16 = 0;
  v40 = MEMORY[0x1E69E7CC0];
  do
  {
    v17 = v16;
    while (1)
    {
      if (v17 >= *(v14 + 16))
      {
        __break(1u);
      }

      v18 = *(v14 + 32 + 8 * v17);
      *(v0 + 184) = 6910581;
      *(v0 + 192) = 0xE300000000000000;

      sub_1D91793EC();
      if (*(v18 + 16))
      {
        v19 = sub_1D8D6550C(v0 + 16);
        if (v20)
        {
          break;
        }
      }

      sub_1D8D9A308(v0 + 16);
LABEL_16:
      if (v15 == ++v17)
      {
        goto LABEL_31;
      }
    }

    sub_1D8CFAD1C(*(v18 + 56) + 32 * v19, v0 + 120);
    sub_1D8D9A308(v0 + 16);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_16;
    }

    v21 = *(v0 + 176);
    if (!v21)
    {
      goto LABEL_16;
    }

    v38 = *(v0 + 168);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v40 = sub_1D8D4241C(0, *(v40 + 2) + 1, 1, v40);
    }

    v23 = *(v40 + 2);
    v22 = *(v40 + 3);
    v24 = v23 + 1;
    if (v23 >= v22 >> 1)
    {
      v36 = *(v40 + 2);
      v37 = v23 + 1;
      v26 = sub_1D8D4241C((v22 > 1), v23 + 1, 1, v40);
      v23 = v36;
      v24 = v37;
      v40 = v26;
    }

    v16 = v17 + 1;
    *(v40 + 2) = v24;
    v25 = &v40[16 * v23];
    *(v25 + 4) = v38;
    *(v25 + 5) = v21;
  }

  while (v15 - 1 != v17);
LABEL_31:

  v28 = *(v0 + 224);
  if (!*(v40 + 2))
  {

    sub_1D8E8E78C();
    swift_allocError();
    *v35 = xmmword_1D918F800;
    swift_willThrow();
    v30 = v39;
    v31 = v3;
    goto LABEL_36;
  }

  v32 = *(v40 + 4);
  v33 = *(v40 + 5);

  sub_1D8D75668(v39, v3);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 56));
  v34 = *(v0 + 8);

  return v34(v32, v33);
}

uint64_t sub_1D8E8E080()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8E8E138()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5540, qword_1D918F860);
  v1 = sub_1D91770EC();
  *(v0 + 56) = v1;
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  *v2 = v0;
  v2[1] = sub_1D8E8E204;

  return MEMORY[0x1EEE68140](v0 + 32, v1, 0, 0);
}

uint64_t sub_1D8E8E204()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1D8E8E588;
  }

  else
  {

    v2 = sub_1D8E8E320;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D8E8E320()
{
  v1 = v0[4];
  if (v1 >> 62)
  {
LABEL_22:
    v2 = sub_1D917935C();
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_23:

    sub_1D8E8E78C();
    swift_allocError();
    *v10 = 0;
    v10[1] = 0;
    swift_willThrow();
    v11 = v0[1];

    return v11();
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    goto LABEL_23;
  }

LABEL_3:
  v3 = 0;
  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1DA72AA90](v3, v1);
    }

    else
    {
      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

      v4 = *(v1 + 8 * v3 + 32);
    }

    v5 = v4;
    v6 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    v7 = [v4 key];
    if (!v7)
    {
      goto LABEL_4;
    }

    v0[5] = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5548, &qword_1D9194900);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_4;
    }

    if (v0[2] == 0xD000000000000012 && 0x80000001D91CB5A0 == v0[3])
    {
      break;
    }

    v12 = sub_1D9179ACC();

    if (v12)
    {
      goto LABEL_17;
    }

LABEL_4:

    ++v3;
    if (v6 == v2)
    {
      goto LABEL_23;
    }
  }

LABEL_17:

  v8 = v0[1];

  return v8(v5);
}

uint64_t sub_1D8E8E588()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D8E8E5EC()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D8E8E67C;

  return sub_1D8E8D6C4();
}

uint64_t sub_1D8E8E67C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

unint64_t sub_1D8E8E78C()
{
  result = qword_1ECAB5538;
  if (!qword_1ECAB5538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5538);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So10AVURLAssetC18PodcastsFoundationE23FairPlayIdentifierErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D8E8E7F8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 16))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8E8E84C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

void *sub_1D8E8E8A8(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t AVURLAsset.isOfflineAsset.getter()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [v0 URL];
  sub_1D9176B9C();

  LOBYTE(v6) = sub_1D9176A8C();
  (*(v2 + 8))(v5, v1);
  return v6 & 1;
}

uint64_t sub_1D8E8EA44()
{
  sub_1D8D15664(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

id sub_1D8E8EAA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  sub_1D9176BFC();
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  result = (*(v4 + 48))(v2, 1, v3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x1E6988168]);
    v7 = sub_1D9176B1C();
    v8 = [v6 initWithURL:v7 options:0];

    (*(v4 + 8))(v2, v3);
    return v8;
  }

  return result;
}

uint64_t sub_1D8E8EC20()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E8ECD4()
{
  v3 = (*(*(v0 + 16) + 32) + **(*(v0 + 16) + 32));
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1D8E8EDC0;

  return v3();
}

uint64_t sub_1D8E8EDC0(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1D8E8EED0()
{
  sub_1D8D15664(v0[2], v0[3]);
  sub_1D8D15664(v0[4], v0[5]);
  sub_1D8D15664(v0[6], v0[7]);
  sub_1D8D15664(v0[8], v0[9]);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E8EF44()
{
  v1 = *(*v0 + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1D8E8EF78()
{
  v1 = *(*v0 + 32);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1D8E8EFAC()
{
  v1 = *(*v0 + 64);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t sub_1D8E8EFE0()
{
  v1 = *(*v0 + 48);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t *sub_1D8E8F63C()
{
  sub_1D8D15664(v0[2], v0[3]);
  sub_1D8D15664(v0[4], v0[5]);
  sub_1D8D15664(v0[6], v0[7]);
  sub_1D8D15664(v0[8], v0[9]);
  sub_1D8D15664(v0[10], v0[11]);
  sub_1D8D15664(v0[12], v0[13]);
  sub_1D8D15664(v0[14], v0[15]);
  return v0;
}

uint64_t sub_1D8E8F68C()
{
  sub_1D8E8F63C();

  return swift_deallocClassInstance();
}

id sub_1D8E8F780()
{
  v1 = *(v0 + 48);
  if (v1)
  {
    return v1();
  }

  v3 = *(v0 + 32);
  if (v3)
  {
    v4 = v3();
  }

  else
  {
    v4 = 1;
  }

  type metadata accessor for FairPlayAVAssetMock();
  v5 = swift_allocObject();
  v5[2] = sub_1D8E8EAA0;
  v5[3] = 0;
  v5[4] = &unk_1D918F9F0;
  v5[5] = 0;
  v6 = objc_allocWithZone(type metadata accessor for FairPlayAsset());

  return sub_1D8E8FDCC(v4, v5, v6);
}

uint64_t *sub_1D8E8FCF4()
{

  sub_1D8D15664(v0[4], v0[5]);
  sub_1D8D15664(v0[6], v0[7]);
  sub_1D8D15664(v0[8], v0[9]);
  sub_1D8D15664(v0[10], v0[11]);
  sub_1D8D15664(v0[12], v0[13]);
  sub_1D8D15664(v0[14], v0[15]);
  sub_1D8D15664(v0[16], v0[17]);
  sub_1D8D15664(v0[18], v0[19]);
  sub_1D8D15664(v0[20], v0[21]);
  sub_1D8D15664(v0[22], v0[23]);
  sub_1D8D15664(v0[24], v0[25]);
  sub_1D8D15664(v0[26], v0[27]);
  return v0;
}

uint64_t sub_1D8E8FD74()
{
  sub_1D8E8FCF4();

  return swift_deallocClassInstance();
}

id sub_1D8E8FDCC(uint64_t a1, uint64_t a2, char *a3)
{
  ObjectType = swift_getObjectType();
  v11[3] = type metadata accessor for FairPlayAVAssetMock();
  v11[4] = &off_1F5467E00;
  v11[0] = a2;
  *&a3[OBJC_IVAR___PFFairPlayAsset_adamID] = a1;
  sub_1D8CFD9D8(v11, &a3[OBJC_IVAR___PFFairPlayAsset_avAsset]);
  sub_1D8E8FEA4();
  v7 = (*(a2 + 16))();
  *&a3[OBJC_IVAR___PFFairPlayAsset_keyStore] = sub_1D8E9039C(v7);
  v10.receiver = a3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v8;
}

unint64_t sub_1D8E8FEA4()
{
  result = qword_1ECAB5580;
  if (!qword_1ECAB5580)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECAB5580);
  }

  return result;
}

uint64_t sub_1D8E8FEF0()
{
  sub_1D8D15664(v0[2], v0[3]);
  sub_1D8D15664(v0[4], v0[5]);

  return swift_deallocClassInstance();
}

uint64_t sub_1D8E8FF54(uint64_t a1)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v4 = *(*v1 + 24);

    v1 = v2(a1);
    sub_1D8D15664(v2, v4);
  }

  else
  {
    sub_1D8E8FFF0();
    swift_allocError();
    swift_willThrow();
  }

  return v1;
}

unint64_t sub_1D8E8FFF0()
{
  result = qword_1ECAB5550;
  if (!qword_1ECAB5550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5550);
  }

  return result;
}

unint64_t sub_1D8E90058()
{
  result = qword_1ECAB5558;
  if (!qword_1ECAB5558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB5558);
  }

  return result;
}

id FairPlayAsset.__allocating_init(adamID:avAsset:)(uint64_t a1, void *a2)
{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = sub_1D8E90B58(a1, v7, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v8;
}

{
  v3 = v2;
  v6 = objc_allocWithZone(v3);
  *&v6[OBJC_IVAR___PFFairPlayAsset_adamID] = a1;
  v7 = &v6[OBJC_IVAR___PFFairPlayAsset_avAsset];
  *(v7 + 3) = sub_1D8CF2154(0, &qword_1ECAB47D0, 0x1E6988168);
  *(v7 + 4) = &protocol witness table for AVURLAsset;
  *v7 = a2;
  sub_1D8CF2154(0, &qword_1ECAB5580, 0x1E69E4430);
  v8 = a2;
  *&v6[OBJC_IVAR___PFFairPlayAsset_keyStore] = sub_1D8E9039C(v8);
  v11.receiver = v6;
  v11.super_class = v3;
  v9 = objc_msgSendSuper2(&v11, sel_init);

  return v9;
}

uint64_t FairPlayAsset.description.getter()
{
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0x203A44496D616441, 0xE800000000000000);
  v0 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v0);

  MEMORY[0x1DA7298F0](0x746573734156410ALL, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5570, &qword_1D918FCE0);
  sub_1D917964C();
  return 0;
}

id FairPlayAsset.init(adamID:avAsset:)(uint64_t a1, void *a2)
{
  v3 = sub_1D8E90C4C(a1, a2);

  return v3;
}

{
  v5 = a2[3];
  v6 = a2[4];
  v7 = __swift_mutable_project_boxed_opaque_existential_1(a2, v5);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10, v8);
  v12 = sub_1D8E90A28(a1, v10, v2, v5, v6);
  __swift_destroy_boxed_opaque_existential_1Tm(a2);
  return v12;
}

id sub_1D8E9039C(void *a1)
{
  v2 = sub_1D9176C2C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [a1 URL];
  sub_1D9176B9C();

  LOBYTE(v7) = sub_1D9176A8C();
  v8 = *(v3 + 8);
  v8(v6, v2);
  if (v7)
  {
    v9 = [a1 URL];
    sub_1D9176B9C();

    sub_1D9176BBC();
    v8(v6, v2);
    v10 = objc_allocWithZone(swift_getObjCClassFromMetadata());
    v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v12 = [v10 initWithPath_];

    return v12;
  }

  else
  {

    return 0;
  }
}

id FairPlayAsset.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FairPlayAsset.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FairPlayAsset.isOfflineAsset.getter()
{
  v1 = sub_1D9176C2C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR___PFFairPlayAsset_avAsset + 24);
  v6 = *(v0 + OBJC_IVAR___PFFairPlayAsset_avAsset + 32);
  __swift_project_boxed_opaque_existential_1((v0 + OBJC_IVAR___PFFairPlayAsset_avAsset), v5);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = [v7 URL];
  sub_1D9176B9C();

  LOBYTE(v8) = sub_1D9176A8C();
  (*(v2 + 8))(v4, v1);
  return v8 & 1;
}

id sub_1D8E90A28(uint64_t a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  v16[3] = a4;
  v16[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v16);
  (*(*(a4 - 8) + 32))(boxed_opaque_existential_0, a2, a4);
  *&a3[OBJC_IVAR___PFFairPlayAsset_adamID] = a1;
  sub_1D8CFD9D8(v16, &a3[OBJC_IVAR___PFFairPlayAsset_avAsset]);
  sub_1D8CF2154(0, &qword_1ECAB5580, 0x1E69E4430);
  v12 = (*(a5 + 8))(a4, a5);
  *&a3[OBJC_IVAR___PFFairPlayAsset_keyStore] = sub_1D8E9039C(v12);
  v15.receiver = a3;
  v15.super_class = ObjectType;
  v13 = objc_msgSendSuper2(&v15, sel_init);
  __swift_destroy_boxed_opaque_existential_1Tm(v16);
  return v13;
}

id sub_1D8E90B58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = objc_allocWithZone(v12);
  (*(v9 + 16))(v11, a2, a4);
  return sub_1D8E90A28(a1, v11, v13, a4, a5);
}

id sub_1D8E90C4C(uint64_t a1, void *a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PFFairPlayAsset_adamID] = a1;
  v7 = &v3[OBJC_IVAR___PFFairPlayAsset_avAsset];
  *(v7 + 3) = sub_1D8CF2154(0, &qword_1ECAB47D0, 0x1E6988168);
  *(v7 + 4) = &protocol witness table for AVURLAsset;
  *v7 = a2;
  sub_1D8CF2154(0, &qword_1ECAB5580, 0x1E69E4430);
  *&v3[OBJC_IVAR___PFFairPlayAsset_keyStore] = sub_1D8E9039C(a2);
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

uint64_t dispatch thunk of FairPlayAsset.__allocating_init(adamID:avAsset:)()
{
  return (*(v0 + 104))();
}

{
  return (*(v0 + 112))();
}

id sub_1D8E90D80(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v36 - v3;
  v5 = sub_1D9176C2C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [a1 assetURL];
  if (v10)
  {
    v11 = v10;
    v12 = sub_1D917820C();
    v14 = v13;

    sub_1D9176BFC();
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {

      (*(v6 + 32))(v9, v4, v5);
      v26 = [a1 storeTrackId];
      v27 = objc_allocWithZone(MEMORY[0x1E6988168]);
      v28 = sub_1D9176B1C();
      v29 = [v27 initWithURL:v28 options:0];

      v30 = type metadata accessor for FairPlayAsset();
      v31 = objc_allocWithZone(v30);
      *&v31[OBJC_IVAR___PFFairPlayAsset_adamID] = v26;
      v32 = &v31[OBJC_IVAR___PFFairPlayAsset_avAsset];
      *(v32 + 3) = sub_1D8CF2154(0, &qword_1ECAB47D0, 0x1E6988168);
      *(v32 + 4) = &protocol witness table for AVURLAsset;
      *v32 = v29;
      sub_1D8CF2154(0, &qword_1ECAB5580, 0x1E69E4430);
      v33 = v29;
      *&v31[OBJC_IVAR___PFFairPlayAsset_keyStore] = sub_1D8E9039C(v33);
      v37.receiver = v31;
      v37.super_class = v30;
      v34 = objc_msgSendSuper2(&v37, sel_init);

      (*(v6 + 8))(v9, v5);
      return v34;
    }

    sub_1D8E677CC(v4);
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1EDCD0F68);

    v16 = sub_1D917741C();
    v17 = sub_1D9178CFC();

    if (!os_log_type_enabled(v16, v17))
    {

      goto LABEL_15;
    }

    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v38 = v19;
    *v18 = 141558275;
    *(v18 + 4) = 1752392040;
    *(v18 + 12) = 2081;
    v20 = sub_1D8CFA924(v12, v14, &v38);

    *(v18 + 14) = v20;
    _os_log_impl(&dword_1D8CEC000, v16, v17, "Malformed assetURL: %{private,mask.hash}s.", v18, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x1DA72CB90](v19, -1, -1);
    v21 = v18;
LABEL_11:
    MEMORY[0x1DA72CB90](v21, -1, -1);
LABEL_15:

    return 0;
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v22 = sub_1D917744C();
  __swift_project_value_buffer(v22, qword_1EDCD0F68);
  v23 = a1;
  v16 = sub_1D917741C();
  v24 = sub_1D9178CFC();
  if (os_log_type_enabled(v16, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2049;
    *(v25 + 14) = [v23 storeTrackId];

    _os_log_impl(&dword_1D8CEC000, v16, v24, "Missing assetURL for episode: %{private,mask.hash}lld", v25, 0x16u);
    v21 = v25;
    goto LABEL_11;
  }

  return 0;
}

uint64_t sub_1D8E91268(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D8CF5C74(a3, v25 - v10);
  v12 = sub_1D917886C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D8CF5CE4(v11);
  }

  else
  {
    sub_1D917885C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D917874C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D917829C() + 32;
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

      sub_1D8CF5CE4(a3);

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

  sub_1D8CF5CE4(a3);
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

uint64_t sub_1D8E91528(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D8CF5C74(a3, v25 - v10);
  v12 = sub_1D917886C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D8CF5CE4(v11);
  }

  else
  {
    sub_1D917885C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D917874C();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D917829C() + 32;
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

      sub_1D8CF5CE4(a3);

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

  sub_1D8CF5CE4(a3);
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

uint64_t FairPlayAsset.requiresRenewal.getter()
{
  v1[7] = v0;
  v2 = sub_1D9176E3C();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  v1[11] = swift_task_alloc();
  v3 = sub_1D9176C2C();
  v1[12] = v3;
  v1[13] = *(v3 - 8);
  v1[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D8E91934, 0, 0);
}

uint64_t sub_1D8E91934()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = (v0[7] + OBJC_IVAR___PFFairPlayAsset_avAsset);
  v5 = v4[3];
  v6 = v4[4];
  __swift_project_boxed_opaque_existential_1(v4, v5);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = [v7 URL];
  sub_1D9176B9C();

  LOBYTE(v8) = sub_1D9176A8C();
  (*(v2 + 8))(v1, v3);
  if ((v8 & 1) != 0 && (v9 = *(v0[7] + OBJC_IVAR___PFFairPlayAsset_keyStore), (v0[15] = v9) != 0))
  {
    v10 = v4[3];
    v11 = v4[4];
    __swift_project_boxed_opaque_existential_1(v4, v10);
    v12 = *(v11 + 16);
    swift_unknownObjectRetain();
    v20 = (v12 + *v12);
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_1D8E91C84;

    return v20(v10, v11);
  }

  else
  {
    if (qword_1EDCD0F60 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1EDCD0F68);
    v16 = sub_1D917741C();
    v17 = sub_1D9178CFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "Unsupported use case.", v18, 2u);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    v19 = v0[1];

    return v19(0);
  }
}

uint64_t sub_1D8E91C84(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 136) = v2;

  if (v2)
  {
    v7 = sub_1D8E92074;
  }

  else
  {
    *(v6 + 144) = a2;
    *(v6 + 152) = a1;
    v7 = sub_1D8E91DE0;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D8E91DE0()
{
  v1 = v0[15];
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v0[6] = 0;
  v3 = [v1 loadKeyForIdentifier:v2 error:v0 + 6];

  v4 = v0[6];
  if (v3)
  {
    v5 = v4;
    v6 = [v3 renewalDate];
    if (v6)
    {
      v8 = v0[10];
      v7 = v0[11];
      v9 = v0[8];
      v10 = v0[9];
      v11 = v6;
      sub_1D9176DFC();

      sub_1D9176E0C();
      v12 = sub_1D9176DAC();

      swift_unknownObjectRelease();
      v13 = *(v10 + 8);
      v13(v8, v9);
      v13(v7, v9);
      goto LABEL_11;
    }
  }

  else
  {
    v14 = v4;
    v15 = sub_1D9176A6C();

    swift_willThrow();
  }

  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v16 = sub_1D917744C();
  __swift_project_value_buffer(v16, qword_1EDCD0F68);
  v17 = sub_1D917741C();
  v18 = sub_1D9178CFC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "Key lookup failed.", v19, 2u);
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }

  swift_unknownObjectRelease();
  v12 = 1;
LABEL_11:

  v20 = v0[1];

  return v20(v12 & 1);
}

uint64_t sub_1D8E92074()
{
  v16 = v0;
  v15[1] = *MEMORY[0x1E69E9840];
  if (qword_1EDCD0F60 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 136);
  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1EDCD0F68);
  v3 = v1;
  v4 = sub_1D917741C();
  v5 = sub_1D9178CFC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 136);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15[0] = v9;
    *v8 = 136446210;
    swift_getErrorValue();
    v10 = sub_1D9179D2C();
    v12 = sub_1D8CFA924(v10, v11, v15);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1D8CEC000, v4, v5, "Unable load key identifier %{public}s.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);

    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v13 = *(v0 + 8);

  return v13(0);
}

uint64_t FairPlayAsset.requiresRenewal(responseQueue:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15 - v8;
  sub_1D917881C();
  v10 = sub_1D917886C();
  (*(*(v10 - 8) + 56))(v9, 0, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;
  v11[6] = a2;
  v11[7] = a3;
  v12 = v3;
  v13 = a1;

  sub_1D8E91268(0, 0, v9, &unk_1D918FD38, v11);
}

uint64_t sub_1D8E923CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[10] = a6;
  v7[11] = a7;
  v7[9] = a5;
  v8 = sub_1D9177E0C();
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v9 = sub_1D9177E9C();
  v7[15] = v9;
  v7[16] = *(v9 - 8);
  v7[17] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[18] = v10;
  *v10 = v7;
  v10[1] = sub_1D8E9251C;

  return FairPlayAsset.requiresRenewal.getter();
}

uint64_t sub_1D8E9251C(char a1)
{
  *(*v1 + 152) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D8E9261C, 0, 0);
}

uint64_t sub_1D8E9261C()
{
  v1 = *(v0 + 152);
  v3 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v5 = v0[12];
  v6 = v0[13];
  v8 = v0[10];
  v7 = v0[11];
  v13 = v0[15];
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  *(v9 + 32) = v1;
  v0[6] = sub_1D8E92A40;
  v0[7] = v9;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D8CF5F60;
  v0[5] = &block_descriptor_16;
  v10 = _Block_copy(v0 + 2);

  sub_1D9177E4C();
  v0[8] = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v2, v4, v10);
  _Block_release(v10);
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v13);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D8E927FC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D58924;

  return sub_1D8E923CC(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1D8E928D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D5FF18;

  return sub_1D8D2C79C(a1, v4);
}

uint64_t sub_1D8E92988(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D58924;

  return sub_1D8D2C79C(a1, v4);
}

uint64_t FairPlayAVAsset.fairPlayIdentifier(responseQueue:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v23 = a5;
  v11 = *(a4 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](a1);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v22 - v14;
  sub_1D917880C();
  v16 = sub_1D917886C();
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  (*(v11 + 16))(&v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a4);
  v17 = (*(v11 + 80) + 72) & ~*(v11 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  v19 = v23;
  *(v18 + 4) = a4;
  *(v18 + 5) = v19;
  *(v18 + 6) = a1;
  *(v18 + 7) = a2;
  *(v18 + 8) = a3;
  (*(v11 + 32))(&v18[v17], &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4);
  v20 = a1;

  sub_1D8E91268(0, 0, v15, &unk_1D918FD70, v18);
}

uint64_t sub_1D8E92C78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v12 = (*(v14 + 16) + **(v14 + 16));
  v10 = swift_task_alloc();
  v8[5] = v10;
  *v10 = v8;
  v10[1] = sub_1D8E92DA0;

  return v12(a8);
}

uint64_t sub_1D8E92DA0(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 48) = v2;

  if (v2)
  {
    v7 = sub_1D8E92F98;
  }

  else
  {
    *(v6 + 56) = a2;
    *(v6 + 64) = a1;
    v7 = sub_1D8E92ED4;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1D8E92ED4()
{
  v1 = v0[7];
  v2 = v0[8];
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];
  v6 = v0[6] != 0;

  sub_1D8E93394(v5, v4, v3, v2, v1, v6);
  sub_1D8E93630(v2, v1, v6);
  v7.n128_f64[0] = sub_1D8E93630(v2, v1, v6);
  v8 = v0[1];

  return v8(v7);
}

uint64_t sub_1D8E92F98()
{
  v1 = v0[6];
  v2 = v1;
  v3 = v0[6] != 0;
  sub_1D8E93394(v0[2], v0[3], v0[4], v1, 0, v3);
  sub_1D8E93630(v1, 0, v3);
  v4.n128_f64[0] = sub_1D8E93630(v1, 0, v3);
  v5 = v0[1];

  return v5(v4);
}

uint64_t sub_1D8E93040(uint64_t a1)
{
  v3 = v1[4];
  v4 = (*(*(v3 - 8) + 80) + 72) & ~*(*(v3 - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D8D58924;

  return sub_1D8E92C78(a1, v5, v6, v7, v8, v9, v1 + v4, v3);
}

uint64_t dispatch thunk of FairPlayAVAsset.fairPlayIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 16) + **(a2 + 16));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8E93288;

  return v7(a1, a2);
}

uint64_t sub_1D8E93288(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1D8E93394(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, char a6)
{
  v23 = a1;
  v11 = sub_1D9177E0C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9177E9C();
  v15 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a3;
  *(v18 + 32) = a4;
  *(v18 + 40) = a5;
  a6 &= 1u;
  *(v18 + 48) = a6;
  aBlock[4] = sub_1D8E93640;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_17;
  v19 = _Block_copy(aBlock);
  sub_1D8E93674(a4, a5, a6);

  sub_1D9177E4C();
  v24 = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v17, v14, v19);
  _Block_release(v19);
  (*(v12 + 8))(v14, v11);
  (*(v15 + 8))(v17, v22);
}

double sub_1D8E93630(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

id sub_1D8E93674(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
  }
}

id FairPlayKeyResponseData.__allocating_init(renewalDate:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = OBJC_IVAR___PFFairPlayKeyResponseData_renewalDate;
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  (*(v6 + 16))(&v3[v4], a1, v5);
  v9.receiver = v3;
  v9.super_class = v1;
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a1, v5);
  return v7;
}

id FairPlayKeyResponseData.init(renewalDate:)(uint64_t a1)
{
  v3 = OBJC_IVAR___PFFairPlayKeyResponseData_renewalDate;
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  (*(v5 + 16))(&v1[v3], a1, v4);
  v8.receiver = v1;
  v8.super_class = type metadata accessor for FairPlayKeyResponseData(0);
  v6 = objc_msgSendSuper2(&v8, sel_init);
  (*(v5 + 8))(a1, v4);
  return v6;
}

uint64_t type metadata accessor for FairPlayKeyResponseData(uint64_t a1)
{
  result = qword_1ECAB5590;
  if (!qword_1ECAB5590)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id FairPlayKeyResponseData.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FairPlayKeyResponseData.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FairPlayKeyResponseData(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D8E939CC(uint64_t a1)
{
  result = sub_1D9176E3C();
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

void sub_1D8E93AD0(uint64_t a1)
{
  sub_1D8CEFDCC(319, &qword_1ECAB55B0, MEMORY[0x1E6969080]);
  if (v1 <= 0x3F)
  {
    sub_1D8CEFDCC(319, &qword_1EDCD7710, MEMORY[0x1E69E6158]);
    if (v2 <= 0x3F)
    {
      sub_1D8CF4B30(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}