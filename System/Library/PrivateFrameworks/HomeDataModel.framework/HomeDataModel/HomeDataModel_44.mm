uint64_t sub_1D1AA74D8()
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_1D1AA6214())
  {
    sub_1D1A81190();
  }

  swift_storeEnumTagMultiPayload();
  sub_1D1AA6268(v2);
  return sub_1D1AAE264(v2, type metadata accessor for StateSnapshot.UpdateType);
}

uint64_t sub_1D1AA75A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D1AA6E88, 0, 0);
}

uint64_t sub_1D1AA75C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v18 - v7;
  swift_unknownObjectRetain();
  v18 = a2;
  v19 = 0;
  sub_1D1AB8D74(&v18);
  sub_1D1AAE004(a2, 0);
  v9 = sub_1D1E67E7C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v3;
  v11[5] = a1;

  swift_unknownObjectRetain();
  sub_1D17C6EF0(0, 0, v8, &unk_1D1E964C8, v11);

  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v13 = result;
    v10(v8, 1, 1, v9);
    v14 = qword_1EC642358;
    swift_unknownObjectRetain_n();

    if (v14 != -1)
    {
      swift_once();
    }

    v15 = qword_1EC64ABE8;
    v16 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
    v17 = swift_allocObject();
    v17[2] = v15;
    v17[3] = v16;
    v17[4] = v3;
    v17[5] = v13;

    sub_1D17C6EF0(0, 0, v8, &unk_1D1E964D8, v17);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1AA783C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D1AA785C, 0, 0);
}

uint64_t sub_1D1AA785C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D17D0740;
  v2 = *(v0 + 24);

  return sub_1D1B10594(v2);
}

uint64_t sub_1D1AA78F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA7990, v6, 0);
}

uint64_t sub_1D1AA7990()
{
  v1 = sub_1D1AA6214();
  if (v1 && (v2 = v1, os_unfair_lock_lock(v1 + 4), os_unfair_lock_opaque_low = LOBYTE(v2[5]._os_unfair_lock_opaque), os_unfair_lock_unlock(v2 + 4), , os_unfair_lock_opaque_low == 1) && (v4 = sub_1D1AA6214(), (v0[4] = v4) != 0))
  {
    v5 = v0[3];
    v6 = swift_task_alloc();
    v0[5] = v6;
    *v6 = v0;
    v6[1] = sub_1D1AA7AA0;

    return HomeState.Stream.fetchAllCharacteristics(in:)(v5);
  }

  else
  {
    v8 = v0[1];

    return v8();
  }
}

uint64_t sub_1D1AA7AA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1AA7BBC(uint64_t *a1)
{
  v1 = *a1;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - v7;
  v9 = sub_1D1AA6214();
  if (v9)
  {
    v10 = *(v9 + 24);

    (*(*(*(v1 + 88) + 16) + 128))(*(v1 + 80));
    swift_getKeyPath();
    v14 = v10;
    sub_1D1AAE21C(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
    sub_1D1E66CAC();

    v14 = v10;
    swift_getKeyPath();
    sub_1D1E66CCC();

    swift_beginAccess();
    sub_1D1AA5B10(type metadata accessor for HomeState, type metadata accessor for HomeState, sub_1D1751C7C, sub_1D173BC84, v8);
    (*(v3 + 8))(v5, v2);
    sub_1D1741A30(v8, &qword_1EC649148, &qword_1D1E96490);
    swift_endAccess();
    v14 = v10;
    swift_getKeyPath();
    sub_1D1E66CBC();
  }

  else
  {
    v12 = type metadata accessor for HomeState(0);
    (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
    return sub_1D1741A30(v8, &qword_1EC649148, &qword_1D1E96490);
  }
}

uint64_t sub_1D1AA7FC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  swift_unknownObjectRetain();
  v20 = a1;
  v21 = 0;
  sub_1D1AB8D74(&v20);
  sub_1D1AAE004(a1, 0);
  sub_1D1AA6624(a1, 0, 0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v12 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v13 = result;
      v14 = sub_1D1E67E7C();
      (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = v3;
      v15[3] = v12;
      v15[4] = v13;
      sub_1D1741C08(v10, v8, &unk_1EC6442C0, &qword_1D1E741A0);
      v16 = qword_1EC642358;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain_n();

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = qword_1EC64ABE8;
      v18 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
      v19 = swift_allocObject();
      v19[2] = v17;
      v19[3] = v18;
      v19[4] = sub_1D1AADEF0;
      v19[5] = v15;

      sub_1D17C6EF0(0, 0, v8, &unk_1D1E96568, v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);
    }
  }

  return result;
}

uint64_t sub_1D1AA82AC(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v33 - v5;
  result = sub_1D1AA6214();
  if (result)
  {
    v8 = result;
    sub_1D1E682DC();
    if ((v9 & 1) == 0)
    {
      v10 = *(v8 + 128);
      sub_1D1AB3E34(a2);
    }

    os_unfair_lock_lock((v8 + 16));
    v11 = *(v8 + 22);
    os_unfair_lock_unlock((v8 + 16));
    if (v11 == 1)
    {
      swift_beginAccess();
      if (*(*(v8 + 32) + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
        v12 = swift_allocObject();
        *(v12 + 16) = xmmword_1D1E73FA0;
        *(v12 + 32) = a2;
        v13 = qword_1EC642328;
        v14 = a2;
        if (v13 != -1)
        {
          swift_once();
        }

        v15 = sub_1D1E6709C();
        __swift_project_value_buffer(v15, qword_1EC64A290);

        v16 = sub_1D1E6707C();
        v17 = sub_1D1E6835C();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v34 = swift_slowAlloc();
          v35 = v34;
          *v18 = 136315138;
          v19 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
          v20 = MEMORY[0x1D3891260](v12, v19);
          v22 = sub_1D1B1312C(v20, v21, &v35);

          *(v18 + 4) = v22;
          _os_log_impl(&dword_1D16EC000, v16, v17, "registerForAccessories() called on %s", v18, 0xCu);
          v23 = v34;
          __swift_destroy_boxed_opaque_existential_1(v34);
          MEMORY[0x1D3893640](v23, -1, -1);
          MEMORY[0x1D3893640](v18, -1, -1);
        }

        sub_1D1ADD3A8(v12, 1);
      }
    }

    v24 = sub_1D1AA6214();
    if (v24)
    {
      v25 = v24;
      os_unfair_lock_lock(v24 + 4);
      v26 = BYTE1(v25[5]._os_unfair_lock_opaque);
      os_unfair_lock_unlock(v25 + 4);

      if (v26)
      {
        v27 = sub_1D1E67E7C();
        (*(*(v27 - 8) + 56))(v6, 1, 1, v27);
        v28 = qword_1EC642358;
        v29 = a2;

        if (v28 != -1)
        {
          swift_once();
        }

        v30 = qword_1EC64ABE8;
        v31 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
        v32 = swift_allocObject();
        v32[2] = v30;
        v32[3] = v31;
        v32[4] = a1;
        v32[5] = v29;

        sub_1D17C7E40(0, 0, v6, &unk_1D1E96578, v32);
      }
    }
  }

  return result;
}

uint64_t sub_1D1AA8698(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v5[7] = a1;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;
  v5[10] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA8738, v6, 0);
}

uint64_t sub_1D1AA8738()
{
  v1 = sub_1D1AA6214();
  *(v0 + 88) = v1;
  if (v1)
  {
    v2 = *(v0 + 72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    inited = swift_initStackObject();
    *(v0 + 96) = inited;
    *(inited + 16) = xmmword_1D1E73FA0;
    *(inited + 32) = v2;
    v4 = v2;
    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_1D1AA887C;

    return sub_1D1AA5D98(inited);
  }

  else
  {
    **(v0 + 56) = 0;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D1AA887C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  *(*v1 + 112) = a1;

  swift_setDeallocating();
  swift_arrayDestroy();

  return MEMORY[0x1EEE6DFA0](sub_1D1AA89EC, v2, 0);
}

uint64_t sub_1D1AA8A0C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v20 - v9;
  swift_unknownObjectRetain();
  v20 = a1;
  v21 = 0;
  sub_1D1AB8D74(&v20);
  sub_1D1AAE004(a1, 0);
  sub_1D1AA6624(a1, 0, 0);
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  if (result)
  {
    v12 = result;
    objc_opt_self();
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v13 = result;
      v14 = sub_1D1E67E7C();
      (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
      v15 = swift_allocObject();
      v15[2] = v3;
      v15[3] = v13;
      v15[4] = v12;
      sub_1D1741C08(v10, v8, &unk_1EC6442C0, &qword_1D1E741A0);
      v16 = qword_1EC642358;
      swift_unknownObjectRetain_n();
      swift_unknownObjectRetain_n();

      if (v16 != -1)
      {
        swift_once();
      }

      v17 = qword_1EC64ABE8;
      v18 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
      v19 = swift_allocObject();
      v19[2] = v17;
      v19[3] = v18;
      v19[4] = sub_1D1AADE9C;
      v19[5] = v15;

      sub_1D17C6EF0(0, 0, v8, &unk_1D1E96558, v19);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);
    }
  }

  return result;
}

uint64_t sub_1D1AA8CF0(uint64_t a1, void *a2)
{
  result = sub_1D1AA6214();
  if (result)
  {
    v4 = result;
    v5 = *(result + 128);
    sub_1D1AB40FC(a2);

    os_unfair_lock_lock((v4 + 16));
    LODWORD(v5) = *(v4 + 22);
    os_unfair_lock_unlock((v4 + 16));
    if (v5 == 1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1D1E73FA0;
      *(v6 + 32) = a2;
      v7 = qword_1EC642328;
      v8 = a2;
      if (v7 != -1)
      {
        swift_once();
      }

      v9 = sub_1D1E6709C();
      __swift_project_value_buffer(v9, qword_1EC64A290);

      v10 = sub_1D1E6707C();
      v11 = sub_1D1E6835C();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v18 = v13;
        *v12 = 136315138;
        v14 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        v15 = MEMORY[0x1D3891260](v6, v14);
        v17 = sub_1D1B1312C(v15, v16, &v18);

        *(v12 + 4) = v17;
        _os_log_impl(&dword_1D16EC000, v10, v11, "unregisterForAccessories() called on %s", v12, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x1D3893640](v13, -1, -1);
        MEMORY[0x1D3893640](v12, -1, -1);
      }

      sub_1D1ADD3A8(v6, 0);
    }
  }

  return result;
}

uint64_t sub_1D1AA8F2C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v3 = a3;
  v6 = a2();
  v7 = v3;
  sub_1D1AB8D74(&v6);
  return sub_1D1AAE004(a1, v3);
}

uint64_t sub_1D1AA8FA4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_1D1E67E2C();
  v9 = sub_1D1E67E7C();
  (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = a1;
  v10[6] = a2;

  swift_unknownObjectRetain();

  sub_1D17C6EF0(0, 0, v8, &unk_1D1E965B0, v10);
}

uint64_t sub_1D1AA90DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v6[13] = *a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v6[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AA91A4, 0, 0);
}

uint64_t sub_1D1AA91A4()
{
  v1 = sub_1D1AA6214();
  v0[15] = v1;
  if (v1)
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v2 = qword_1EC64ABE8;
    v0[16] = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AA9284, v2, 0);
  }

  else
  {

    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D1AA9284()
{
  v1 = *(v0 + 120);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 136) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA930C, 0, 0);
}

uint64_t sub_1D1AA930C()
{
  v1 = v0[17];

  if (v1 && (v0[8] = v0[17], sub_1D1741B10(0, &unk_1EC649E60, 0x1E696CBA0), swift_getAssociatedTypeWitness(), (swift_dynamicCast() & 1) != 0))
  {
    v0[18] = v0[9];
    v2 = sub_1D1AA6214();
    v0[19] = v2;
    if (v2)
    {
      v3 = v0[16];

      return MEMORY[0x1EEE6DFA0](sub_1D1AA94E8, v3, 0);
    }

    else
    {
      v5 = v0[14];
      v6 = sub_1D1E66A7C();
      (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
      v7 = swift_task_alloc();
      v0[21] = v7;
      *v7 = v0;
      v7[1] = sub_1D1AA97AC;
      v8 = v0[18];
      v9 = v0[14];
      v10 = v0[11];
      v11 = v0[12];

      return RecommendationsModerator2.updateUserActionPredictions(manager:currentHomeID:for:predictions:)(v8, v9, v10, v11);
    }
  }

  else
  {

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1D1AA94E8()
{
  v1 = *(v0 + 152);
  swift_beginAccess();
  v2 = *(v1 + 72);
  *(v0 + 160) = v2;
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D1AA967C;
  }

  else
  {
    v4 = sub_1D1AA9588;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D1AA9588()
{

  v1 = v0[14];
  v2 = sub_1D1E66A7C();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = swift_task_alloc();
  v0[21] = v3;
  *v3 = v0;
  v3[1] = sub_1D1AA97AC;
  v4 = v0[18];
  v5 = v0[14];
  v6 = v0[11];
  v7 = v0[12];

  return RecommendationsModerator2.updateUserActionPredictions(manager:currentHomeID:for:predictions:)(v4, v5, v6, v7);
}

uint64_t sub_1D1AA967C()
{
  v1 = v0[20];

  v2 = [v1 uniqueIdentifier];

  sub_1D1E66A5C();
  v3 = v0[14];
  v4 = sub_1D1E66A7C();
  (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = sub_1D1AA97AC;
  v6 = v0[18];
  v7 = v0[14];
  v8 = v0[11];
  v9 = v0[12];

  return RecommendationsModerator2.updateUserActionPredictions(manager:currentHomeID:for:predictions:)(v6, v7, v8, v9);
}

uint64_t sub_1D1AA97AC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1AA98A8, 0, 0);
}

uint64_t sub_1D1AA98A8()
{
  v1 = *(v0 + 112);
  swift_unknownObjectRelease();
  sub_1D1741A30(v1, &qword_1EC642590, qword_1D1E71260);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1AA9960()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 184);
  v2 = swift_checkMetadataState();
  result = v1(v2, AssociatedConformanceWitness);
  if (result)
  {
    v4 = result;
    v5 = swift_unknownObjectRetain();
    v6 = 0;
    sub_1D1AB8D74(&v5);
    swift_unknownObjectRelease();
    return sub_1D1AAE004(v4, 0);
  }

  return result;
}

uint64_t sub_1D1AA9A6C(void (*a1)(char *, char *, uint64_t), uint64_t a2, uint64_t a3)
{
  v50 = a1;
  v5 = *(*(*v3 + 88) + 16);
  v6 = *(*v3 + 80);
  swift_getAssociatedTypeWitness();
  v43 = v5;
  v54 = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v8 = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v46 = *(AssociatedTypeWitness - 8);
  v42 = *(v46 + 64);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v45 = &v40 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = &v40 - v12;
  v53 = sub_1D1E66A7C();
  v44 = *(v53 - 8);
  v13 = *(v44 + 64);
  v14 = MEMORY[0x1EEE9AC00](v53);
  v41 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v40 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v51 = &v40 - v18;
  v19 = swift_checkMetadataState();
  v20 = ServiceProtocol.supportedCharacteristicKinds.getter(v19, v8);
  v21 = swift_getAssociatedConformanceWitness();
  v22 = *(v21 + 128);
  v47 = a3;
  v22(&v55, AssociatedTypeWitness, v21);
  LOBYTE(v6) = sub_1D171974C(v55, v20);

  if (v6)
  {
    v24 = *(AssociatedConformanceWitness + 184);
    v25 = swift_checkMetadataState();
    result = v24(v25, AssociatedConformanceWitness);
    if (result)
    {
      (*(v43 + 128))(v54);
      swift_unknownObjectRelease();
      v26 = v44;
      v50 = *(v44 + 32);
      v27 = v51;
      v28 = v53;
      v50(v51, v17, v53);
      v29 = sub_1D1E67E7C();
      (*(*(v29 - 8) + 56))(v52, 1, 1, v29);
      v30 = v41;
      (*(v26 + 16))(v41, v27, v28);
      v32 = v45;
      v31 = v46;
      (*(v46 + 16))(v45, v47, AssociatedTypeWitness);
      v33 = (*(v26 + 80) + 56) & ~*(v26 + 80);
      v34 = (v13 + v33 + *(v31 + 80)) & ~*(v31 + 80);
      v35 = swift_allocObject();
      *(v35 + 2) = 0;
      *(v35 + 3) = 0;
      v36 = v48;
      v37 = v49;
      *(v35 + 4) = v54;
      *(v35 + 5) = v36;
      *(v35 + 6) = v37;
      v38 = &v35[v33];
      v39 = v53;
      v50(v38, v30, v53);
      (*(v31 + 32))(&v35[v34], v32, AssociatedTypeWitness);

      sub_1D17C6EF0(0, 0, v52, &unk_1D1E96598, v35);

      return (*(v26 + 8))(v51, v39);
    }
  }

  return result;
}

uint64_t sub_1D1AA9F98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v6[27] = a5;
  v6[28] = a6;
  v6[26] = a4;
  v6[29] = type metadata accessor for StateSnapshot.UpdateType(0);
  v6[30] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[31] = AssociatedTypeWitness;
  v6[32] = *(AssociatedTypeWitness - 8);
  v6[33] = swift_task_alloc();
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v8 = sub_1D1E669FC();
  v6[39] = v8;
  v6[40] = *(v8 - 8);
  v6[41] = swift_task_alloc();
  v9 = type metadata accessor for StaticCharacteristic(0);
  v6[42] = v9;
  v6[43] = *(v9 - 8);
  v6[44] = swift_task_alloc();
  v6[45] = swift_task_alloc();
  v10 = sub_1D1E66A7C();
  v6[46] = v10;
  v6[47] = *(v10 - 8);
  v6[48] = swift_task_alloc();
  v11 = type metadata accessor for StaticService(0);
  v6[49] = v11;
  v6[50] = *(v11 - 8);
  v6[51] = swift_task_alloc();
  v6[52] = swift_getAssociatedConformanceWitness();
  v12 = swift_getAssociatedTypeWitness();
  v6[53] = v12;
  v13 = sub_1D1E685AC();
  v6[54] = v13;
  v6[55] = *(v13 - 8);
  v6[56] = swift_task_alloc();
  v6[57] = *(v12 - 8);
  v6[58] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  v6[59] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v6[60] = swift_task_alloc();
  v6[61] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AAA4B0, 0, 0);
}

uint64_t sub_1D1AAA4B0()
{
  v169 = v0;
  v1 = v0;
  v2 = sub_1D1AA6214();
  if (v2)
  {
    v0[62] = *(v2 + 24);

    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v3 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AAB518, v3, 0);
  }

  v4 = v0[61];
  v5 = v0[56];
  v6 = v0[57];
  v8 = v0[52];
  v7 = v0[53];
  v9 = v0[31];
  v10 = type metadata accessor for StateSnapshot(0);
  v11 = *(v10 - 8);
  (*(v11 + 56))(v4, 1, 1, v10);
  (*(v8 + 88))(v9, v8);
  v12 = (*(v6 + 48))(v5, 1, v7);
  v13 = v1[61];
  if (v12 != 1)
  {
    v17 = v1[60];
    (*(v1[57] + 32))(v1[58], v1[56], v1[53]);
    sub_1D1741C08(v13, v17, &unk_1EC649E30, &unk_1D1E91250);
    if ((*(v11 + 48))(v17, 1, v10) == 1)
    {
      v18 = v1[60];
      v19 = v1[61];
      (*(v1[57] + 8))(v1[58], v1[53]);
      sub_1D1741A30(v19, &unk_1EC649E30, &unk_1D1E91250);
      v20 = v18;
LABEL_17:
      sub_1D1741A30(v20, &unk_1EC649E30, &unk_1D1E91250);
      goto LABEL_18;
    }

    v21 = v1[60];
    v22 = v1[53];
    v23 = *(v21 + *(v10 + 60));

    sub_1D1AAE264(v21, type metadata accessor for StateSnapshot);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 56))(v22, AssociatedConformanceWitness);
    if (!*(v23 + 16) || (v25 = sub_1D1742188(), (v26 & 1) == 0))
    {
      v36 = v1[61];
      v38 = v1[57];
      v37 = v1[58];
      v39 = v1[53];
      v41 = v1[47];
      v40 = v1[48];
      v42 = v1[46];

      (*(v41 + 8))(v40, v42);
      goto LABEL_16;
    }

    v28 = v1[51];
    v27 = v1[52];
    v29 = v1[49];
    v31 = v1[47];
    v30 = v1[48];
    v32 = v1[46];
    v33 = v1[31];
    sub_1D1AAE2C4(*(v23 + 56) + *(v1[50] + 72) * v25, v28, type metadata accessor for StaticService);
    (*(v31 + 8))(v30, v32);

    v34 = *(v28 + *(v29 + 128));

    sub_1D1AAE264(v28, type metadata accessor for StaticService);
    v35._countAndFlagsBits = (*(v27 + 56))(v33, v27);
    CharacteristicKind.init(rawValue:)(v35);
    if (v168 == 174)
    {
      v36 = v1[61];
      v38 = v1[57];
      v37 = v1[58];
      v39 = v1[53];

LABEL_16:
      (*(v38 + 8))(v37, v39);
      v20 = v36;
      goto LABEL_17;
    }

    if (!*(v34 + 16) || (v44 = sub_1D171D140(v168), (v45 & 1) == 0))
    {

      if (qword_1EC642328 != -1)
      {
        swift_once();
      }

      v79 = v1[34];
      v80 = v1[31];
      v81 = v1[32];
      v82 = v1[28];
      v83 = sub_1D1E6709C();
      __swift_project_value_buffer(v83, qword_1EC64A290);
      v84 = *(v81 + 16);
      v84(v79, v82, v80);
      v85 = sub_1D1E6707C();
      v86 = sub_1D1E6835C();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = v1[34];
        v167 = v84;
        v88 = v1;
        v89 = v1[32];
        v90 = v88[31];
        v91 = swift_slowAlloc();
        v164 = swift_slowAlloc();
        v168 = v164;
        *v91 = 136315138;
        v92 = sub_1D1E68FAC();
        v94 = v93;
        (*(v89 + 8))(v87, v90);
        v1 = v88;
        v84 = v167;
        v95 = sub_1D1B1312C(v92, v94, &v168);

        *(v91 + 4) = v95;
        _os_log_impl(&dword_1D16EC000, v85, v86, "update for:  %s", v91, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v164);
        MEMORY[0x1D3893640](v164, -1, -1);
        MEMORY[0x1D3893640](v91, -1, -1);
      }

      else
      {
        v96 = v1[34];
        v97 = v1[31];
        v98 = v1[32];

        (*(v98 + 8))(v96, v97);
      }

      v84(v1[33], v1[28], v1[31]);
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      v99 = swift_dynamicCast();
      v36 = v1[61];
      v38 = v1[57];
      v37 = v1[58];
      v39 = v1[53];
      if (v99)
      {
        v100 = v1[30];
        v101 = v1[24];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E40, &qword_1D1E7C4E8);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1D1E739C0;
        *(inited + 32) = v101;
        *(inited + 48) = 0;
        *(inited + 56) = 0;
        *(inited + 40) = 1;
        *(inited + 64) = 3;
        v103 = v1;
        v104 = v101;
        v105 = sub_1D18D8A70(inited);
        swift_setDeallocating();
        sub_1D1741A30(inited + 32, &qword_1EC645D20, qword_1D1E7C4F0);
        *v100 = v105;
        *(v100 + 8) = 0;
        *(v100 + 16) = 1;
        swift_storeEnumTagMultiPayload();
        sub_1D1AA6268(v100);

        v1 = v103;
        sub_1D1AAE264(v100, type metadata accessor for StateSnapshot.UpdateType);
        (*(v38 + 8))(v37, v39);
        v20 = v36;
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    v46 = v1[52];
    v47 = v1[44];
    v48 = v1[45];
    v49 = v1[42];
    v51 = v1[40];
    v50 = v1[41];
    v52 = v1[39];
    v162 = v1[31];
    v166 = v1;
    sub_1D1AAE2C4(*(v34 + 56) + *(v1[43] + 72) * v44, v47, type metadata accessor for StaticCharacteristic);

    sub_1D1AAE3F4(v47, v48, type metadata accessor for StaticCharacteristic);
    v53 = v48 + *(v49 + 32);
    v54 = *(v53 + 24);
    v55 = *(v46 + 80);
    v158 = *(v53 + 8);
    v159 = *v53;
    v157 = *(v53 + 16);
    sub_1D17418FC(*v53, v158, v157, *(v53 + 24));
    v55(v162, v46);
    sub_1D1AAE21C(&unk_1EC649E50, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v56 = sub_1D1E6771C();
    (*(v51 + 8))(v50, v52);
    if (v54 == 1)
    {
      if (qword_1EC642328 != -1)
      {
        swift_once();
      }

      v57 = v1[38];
      v58 = v1[31];
      v59 = v1[32];
      v60 = v1[28];
      v61 = sub_1D1E6709C();
      __swift_project_value_buffer(v61, qword_1EC64A290);
      (*(v59 + 16))(v57, v60, v58);
      v62 = sub_1D1E6707C();
      v63 = sub_1D1E6835C();
      v64 = os_log_type_enabled(v62, v63);
      v65 = v1[61];
      v66 = v1[57];
      v67 = v1[58];
      v68 = v1[53];
      if (v64)
      {
        v69 = v1[38];
        v161 = v1[53];
        v163 = v1[61];
        v71 = v1[31];
        v70 = v1[32];
        v160 = v1[58];
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v168 = v73;
        *v72 = 136315138;
        v74 = sub_1D1E68FAC();
        v76 = v75;
        (*(v70 + 8))(v69, v71);
        v77 = sub_1D1B1312C(v74, v76, &v168);

        *(v72 + 4) = v77;
        v78 = "skip update for: %s";
LABEL_45:
        _os_log_impl(&dword_1D16EC000, v62, v63, v78, v72, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v73);
        v138 = v73;
        v1 = v166;
        MEMORY[0x1D3893640](v138, -1, -1);
        MEMORY[0x1D3893640](v72, -1, -1);

        (*(v66 + 8))(v160, v161);
        v139 = v163;
LABEL_52:
        sub_1D1741A30(v139, &unk_1EC649E30, &unk_1D1E91250);
        sub_1D1AAE264(v1[45], type metadata accessor for StaticCharacteristic);
        goto LABEL_18;
      }

      v124 = v1[38];
    }

    else
    {
      sub_1D1757A60(v159, v158, v157, v54);
      if (v56)
      {
        if (qword_1EC642328 != -1)
        {
          swift_once();
        }

        v106 = v1[36];
        v107 = v1[31];
        v108 = v1[32];
        v109 = v1[28];
        v110 = sub_1D1E6709C();
        __swift_project_value_buffer(v110, qword_1EC64A290);
        v111 = *(v108 + 16);
        v111(v106, v109, v107);
        v112 = sub_1D1E6707C();
        v113 = sub_1D1E6835C();
        if (os_log_type_enabled(v112, v113))
        {
          v114 = v1[36];
          v115 = v1[32];
          v165 = v111;
          v116 = v166[31];
          v117 = swift_slowAlloc();
          v118 = swift_slowAlloc();
          v168 = v118;
          *v117 = 136315138;
          v119 = sub_1D1E68FAC();
          v121 = v120;
          v122 = v116;
          v111 = v165;
          (*(v115 + 8))(v114, v122);
          v1 = v166;
          v123 = sub_1D1B1312C(v119, v121, &v168);

          *(v117 + 4) = v123;
          _os_log_impl(&dword_1D16EC000, v112, v113, "update for:  %s", v117, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v118);
          MEMORY[0x1D3893640](v118, -1, -1);
          MEMORY[0x1D3893640](v117, -1, -1);
        }

        else
        {
          v140 = v1[36];
          v141 = v1[31];
          v142 = v1[32];

          (*(v142 + 8))(v140, v141);
        }

        v111(v1[35], v1[28], v1[31]);
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        v143 = swift_dynamicCast();
        v144 = v1[61];
        v145 = v1[57];
        v146 = v1[58];
        v147 = v1[53];
        v148 = v1[45];
        if (v143)
        {
          v149 = v1[30];
          v150 = v1[25];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E40, &qword_1D1E7C4E8);
          v151 = swift_initStackObject();
          *(v151 + 16) = xmmword_1D1E739C0;
          *(v151 + 32) = v150;
          *(v151 + 48) = 0;
          *(v151 + 56) = 0;
          *(v151 + 40) = 1;
          *(v151 + 64) = 3;
          v152 = v150;
          v153 = sub_1D18D8A70(v151);
          swift_setDeallocating();
          v1 = v166;
          sub_1D1741A30(v151 + 32, &qword_1EC645D20, qword_1D1E7C4F0);
          *v149 = v153;
          *(v149 + 8) = 0;
          *(v149 + 16) = 1;
          swift_storeEnumTagMultiPayload();
          sub_1D1AA6268(v149);

          sub_1D1AAE264(v149, type metadata accessor for StateSnapshot.UpdateType);
        }

        (*(v145 + 8))(v146, v147);
        sub_1D1741A30(v144, &unk_1EC649E30, &unk_1D1E91250);
        sub_1D1AAE264(v148, type metadata accessor for StaticCharacteristic);
        goto LABEL_18;
      }

      if (qword_1EC642328 != -1)
      {
        swift_once();
      }

      v125 = v1[37];
      v126 = v1[31];
      v127 = v1[32];
      v128 = v1[28];
      v129 = sub_1D1E6709C();
      __swift_project_value_buffer(v129, qword_1EC64A290);
      (*(v127 + 16))(v125, v128, v126);
      v62 = sub_1D1E6707C();
      v63 = sub_1D1E6835C();
      v130 = os_log_type_enabled(v62, v63);
      v65 = v1[61];
      v66 = v1[57];
      v67 = v1[58];
      v68 = v1[53];
      if (v130)
      {
        v131 = v1[37];
        v161 = v1[53];
        v163 = v1[61];
        v133 = v1[31];
        v132 = v1[32];
        v160 = v1[58];
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v168 = v73;
        *v72 = 136315138;
        v134 = sub_1D1E68FAC();
        v136 = v135;
        (*(v132 + 8))(v131, v133);
        v137 = sub_1D1B1312C(v134, v136, &v168);

        *(v72 + 4) = v137;
        v78 = "out of date update for: %s";
        goto LABEL_45;
      }

      v124 = v1[37];
    }

    v154 = v1[31];
    v155 = v1[32];

    (*(v155 + 8))(v124, v154);
    (*(v66 + 8))(v67, v68);
    v139 = v65;
    goto LABEL_52;
  }

  v15 = v1[55];
  v14 = v1[56];
  v16 = v1[54];
  sub_1D1741A30(v1[61], &unk_1EC649E30, &unk_1D1E91250);
  (*(v15 + 8))(v14, v16);
LABEL_18:

  v43 = v1[1];

  return v43();
}

uint64_t sub_1D1AAB518()
{
  v1 = v0[62];
  swift_getKeyPath();
  v0[23] = v1;
  sub_1D1AAE21C(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v0[63] = *(v1 + v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1AAB624, 0, 0);
}

uint64_t sub_1D1AAB624()
{
  v179 = v0;
  if (*(v0[63] + 16))
  {
    v1 = sub_1D1742188();
    v2 = v0[59];
    if (v3)
    {
      v4 = v1;
      v5 = *(v0[63] + 56);
      v6 = type metadata accessor for HomeState(0);
      v7 = *(v6 - 8);
      sub_1D1AAE2C4(v5 + *(v7 + 72) * v4, v2, type metadata accessor for HomeState);

      (*(v7 + 56))(v2, 0, 1, v6);
      goto LABEL_6;
    }
  }

  else
  {
    v2 = v0[59];
  }

  v6 = type metadata accessor for HomeState(0);
  (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
LABEL_6:
  v8 = v0[59];
  type metadata accessor for HomeState(0);
  v9 = 1;
  if (!(*(*(v6 - 8) + 48))(v8, 1, v6))
  {
    sub_1D1AAE2C4(v8, v0[61], type metadata accessor for StateSnapshot);
    v9 = 0;
    v8 = v0[59];
  }

  sub_1D1741A30(v8, &qword_1EC649148, &qword_1D1E96490);
  v10 = v0[61];
  v177 = v0;
  v11 = v0[57];
  v12 = v0[56];
  v13 = v0[53];
  v14 = v0[52];
  v15 = v0[31];
  v16 = type metadata accessor for StateSnapshot(0);
  v17 = *(v16 - 8);
  (*(v17 + 56))(v10, v9, 1, v16);
  (*(v14 + 88))(v15, v14);
  v18 = (*(v11 + 48))(v12, 1, v13);
  v19 = v177;
  v20 = v177[61];
  if (v18 == 1)
  {
    v22 = v177[55];
    v21 = v177[56];
    v23 = v177[54];
    sub_1D1741A30(v177[61], &unk_1EC649E30, &unk_1D1E91250);
    (*(v22 + 8))(v21, v23);
    goto LABEL_19;
  }

  v24 = v177[60];
  (*(v177[57] + 32))(v177[58], v177[56], v177[53]);
  sub_1D1741C08(v20, v24, &unk_1EC649E30, &unk_1D1E91250);
  if ((*(v17 + 48))(v24, 1, v16) == 1)
  {
    v25 = v177[60];
    v26 = v177[61];
    (*(v177[57] + 8))(v177[58], v177[53]);
    sub_1D1741A30(v26, &unk_1EC649E30, &unk_1D1E91250);
    v27 = v25;
LABEL_18:
    sub_1D1741A30(v27, &unk_1EC649E30, &unk_1D1E91250);
    goto LABEL_19;
  }

  v28 = v177[60];
  v29 = v177[53];
  v30 = *(v28 + *(v16 + 60));

  sub_1D1AAE264(v28, type metadata accessor for StateSnapshot);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 56))(v29, AssociatedConformanceWitness);
  if (!*(v30 + 16) || (v32 = sub_1D1742188(), (v33 & 1) == 0))
  {
    v43 = v177[61];
    v45 = v177[57];
    v44 = v177[58];
    v46 = v177[53];
    v48 = v177[47];
    v47 = v177[48];
    v49 = v177[46];

    (*(v48 + 8))(v47, v49);
    goto LABEL_17;
  }

  v35 = v177[51];
  v34 = v177[52];
  v36 = v177[49];
  v38 = v177[47];
  v37 = v177[48];
  v39 = v177[46];
  v40 = v177[31];
  sub_1D1AAE2C4(*(v30 + 56) + *(v177[50] + 72) * v32, v35, type metadata accessor for StaticService);
  (*(v38 + 8))(v37, v39);

  v41 = *(v35 + *(v36 + 128));

  sub_1D1AAE264(v35, type metadata accessor for StaticService);
  v42._countAndFlagsBits = (*(v34 + 56))(v40, v34);
  CharacteristicKind.init(rawValue:)(v42);
  if (v178 == 174)
  {
    v43 = v177[61];
    v45 = v177[57];
    v44 = v177[58];
    v46 = v177[53];

LABEL_17:
    (*(v45 + 8))(v44, v46);
    v27 = v43;
    goto LABEL_18;
  }

  if (!*(v41 + 16) || (v52 = sub_1D171D140(v178), (v53 & 1) == 0))
  {

    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v87 = v177[34];
    v88 = v177[31];
    v89 = v177[32];
    v90 = v177[28];
    v91 = sub_1D1E6709C();
    __swift_project_value_buffer(v91, qword_1EC64A290);
    v92 = *(v89 + 16);
    v92(v87, v90, v88);
    v93 = sub_1D1E6707C();
    v94 = sub_1D1E6835C();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = v177[34];
      v96 = v177[32];
      v175 = v92;
      v97 = v177[31];
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v178 = v99;
      *v98 = 136315138;
      v100 = sub_1D1E68FAC();
      v102 = v101;
      v103 = v97;
      v92 = v175;
      (*(v96 + 8))(v95, v103);
      v19 = v177;
      v104 = sub_1D1B1312C(v100, v102, &v178);

      *(v98 + 4) = v104;
      _os_log_impl(&dword_1D16EC000, v93, v94, "update for:  %s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v99);
      MEMORY[0x1D3893640](v99, -1, -1);
      MEMORY[0x1D3893640](v98, -1, -1);
    }

    else
    {
      v105 = v177[34];
      v106 = v177[31];
      v107 = v177[32];

      (*(v107 + 8))(v105, v106);
    }

    v92(v19[33], v19[28], v19[31]);
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    v108 = swift_dynamicCast();
    v109 = v19[61];
    v111 = v19[57];
    v110 = v19[58];
    v112 = v19[53];
    if (v108)
    {
      v113 = v19[30];
      v114 = v19[24];
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E40, &qword_1D1E7C4E8);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v114;
      *(inited + 48) = 0;
      *(inited + 56) = 0;
      *(inited + 40) = 1;
      *(inited + 64) = 3;
      v116 = v114;
      v117 = sub_1D18D8A70(inited);
      swift_setDeallocating();
      sub_1D1741A30(inited + 32, &qword_1EC645D20, qword_1D1E7C4F0);
      *v113 = v117;
      *(v113 + 8) = 0;
      *(v113 + 16) = 1;
      swift_storeEnumTagMultiPayload();
      sub_1D1AA6268(v113);

      v19 = v177;
      sub_1D1AAE264(v113, type metadata accessor for StateSnapshot.UpdateType);
    }

    (*(v111 + 8))(v110, v112);
    v27 = v109;
    goto LABEL_18;
  }

  v54 = v177[52];
  v55 = v177[44];
  v56 = v177[45];
  v57 = v177[42];
  v59 = v177[40];
  v58 = v177[41];
  v60 = v177[39];
  v173 = v177[31];
  sub_1D1AAE2C4(*(v41 + 56) + *(v177[43] + 72) * v52, v55, type metadata accessor for StaticCharacteristic);

  sub_1D1AAE3F4(v55, v56, type metadata accessor for StaticCharacteristic);
  v61 = v56 + *(v57 + 32);
  v62 = *(v61 + 24);
  v63 = *(v54 + 80);
  v169 = *(v61 + 8);
  v170 = *v61;
  v168 = *(v61 + 16);
  sub_1D17418FC(*v61, v169, v168, *(v61 + 24));
  v63(v173, v54);
  sub_1D1AAE21C(&unk_1EC649E50, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
  v64 = sub_1D1E6771C();
  (*(v59 + 8))(v58, v60);
  if (v62 == 1)
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v19 = v177;
    v65 = v177[38];
    v66 = v177[31];
    v67 = v177[32];
    v68 = v177[28];
    v69 = sub_1D1E6709C();
    __swift_project_value_buffer(v69, qword_1EC64A290);
    (*(v67 + 16))(v65, v68, v66);
    v70 = sub_1D1E6707C();
    v71 = sub_1D1E6835C();
    v72 = os_log_type_enabled(v70, v71);
    v73 = v177[61];
    v74 = v177[57];
    v75 = v177[58];
    v76 = v177[53];
    if (v72)
    {
      v77 = v177[38];
      v172 = v177[53];
      v174 = v177[61];
      v79 = v177[31];
      v78 = v177[32];
      v171 = v177[58];
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v178 = v81;
      *v80 = 136315138;
      v82 = sub_1D1E68FAC();
      v84 = v83;
      (*(v78 + 8))(v77, v79);
      v85 = sub_1D1B1312C(v82, v84, &v178);

      *(v80 + 4) = v85;
      v86 = "skip update for: %s";
LABEL_47:
      _os_log_impl(&dword_1D16EC000, v70, v71, v86, v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v81);
      v150 = v81;
      v19 = v177;
      MEMORY[0x1D3893640](v150, -1, -1);
      MEMORY[0x1D3893640](v80, -1, -1);

      (*(v74 + 8))(v171, v172);
      v151 = v174;
LABEL_54:
      sub_1D1741A30(v151, &unk_1EC649E30, &unk_1D1E91250);
      sub_1D1AAE264(v19[45], type metadata accessor for StaticCharacteristic);
      goto LABEL_19;
    }

    v136 = v177[38];
    goto LABEL_53;
  }

  sub_1D1757A60(v170, v169, v168, v62);
  if ((v64 & 1) == 0)
  {
    v19 = v177;
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v137 = v177[37];
    v138 = v177[31];
    v139 = v177[32];
    v140 = v177[28];
    v141 = sub_1D1E6709C();
    __swift_project_value_buffer(v141, qword_1EC64A290);
    (*(v139 + 16))(v137, v140, v138);
    v70 = sub_1D1E6707C();
    v71 = sub_1D1E6835C();
    v142 = os_log_type_enabled(v70, v71);
    v73 = v177[61];
    v74 = v177[57];
    v75 = v177[58];
    v76 = v177[53];
    if (v142)
    {
      v143 = v177[37];
      v172 = v177[53];
      v174 = v177[61];
      v145 = v177[31];
      v144 = v177[32];
      v171 = v177[58];
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      v178 = v81;
      *v80 = 136315138;
      v146 = sub_1D1E68FAC();
      v148 = v147;
      (*(v144 + 8))(v143, v145);
      v149 = sub_1D1B1312C(v146, v148, &v178);

      *(v80 + 4) = v149;
      v86 = "out of date update for: %s";
      goto LABEL_47;
    }

    v136 = v177[37];
LABEL_53:
    v166 = v19[31];
    v167 = v19[32];

    (*(v167 + 8))(v136, v166);
    (*(v74 + 8))(v75, v76);
    v151 = v73;
    goto LABEL_54;
  }

  v19 = v177;
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v118 = v177[36];
  v119 = v177[31];
  v120 = v177[32];
  v121 = v177[28];
  v122 = sub_1D1E6709C();
  __swift_project_value_buffer(v122, qword_1EC64A290);
  v123 = *(v120 + 16);
  v123(v118, v121, v119);
  v124 = sub_1D1E6707C();
  v125 = sub_1D1E6835C();
  if (os_log_type_enabled(v124, v125))
  {
    v126 = v177[36];
    v127 = v177[32];
    v176 = v123;
    v128 = v177[31];
    v129 = swift_slowAlloc();
    v130 = swift_slowAlloc();
    v178 = v130;
    *v129 = 136315138;
    v131 = sub_1D1E68FAC();
    v133 = v132;
    v134 = v128;
    v123 = v176;
    (*(v127 + 8))(v126, v134);
    v19 = v177;
    v135 = sub_1D1B1312C(v131, v133, &v178);

    *(v129 + 4) = v135;
    _os_log_impl(&dword_1D16EC000, v124, v125, "update for:  %s", v129, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v130);
    MEMORY[0x1D3893640](v130, -1, -1);
    MEMORY[0x1D3893640](v129, -1, -1);
  }

  else
  {
    v152 = v177[36];
    v153 = v177[31];
    v154 = v177[32];

    (*(v154 + 8))(v152, v153);
  }

  v123(v19[35], v19[28], v19[31]);
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v155 = swift_dynamicCast();
  v156 = v19[61];
  v157 = v19[57];
  v158 = v19[58];
  v159 = v19[53];
  v160 = v19[45];
  if (v155)
  {
    v161 = v19[30];
    v162 = v19[25];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E40, &qword_1D1E7C4E8);
    v163 = swift_initStackObject();
    *(v163 + 16) = xmmword_1D1E739C0;
    *(v163 + 32) = v162;
    *(v163 + 48) = 0;
    *(v163 + 56) = 0;
    *(v163 + 40) = 1;
    *(v163 + 64) = 3;
    v164 = v162;
    v165 = sub_1D18D8A70(v163);
    swift_setDeallocating();
    v19 = v177;
    sub_1D1741A30(v163 + 32, &qword_1EC645D20, qword_1D1E7C4F0);
    *v161 = v165;
    *(v161 + 8) = 0;
    *(v161 + 16) = 1;
    swift_storeEnumTagMultiPayload();
    sub_1D1AA6268(v161);

    sub_1D1AAE264(v161, type metadata accessor for StateSnapshot.UpdateType);
  }

  (*(v157 + 8))(v158, v159);
  sub_1D1741A30(v156, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1AAE264(v160, type metadata accessor for StaticCharacteristic);
LABEL_19:

  v50 = v19[1];

  return v50();
}

uint64_t sub_1D1AAC7A4()
{
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v1 = *(AssociatedConformanceWitness + 184);
  v2 = swift_checkMetadataState();
  result = v1(v2, AssociatedConformanceWitness);
  if (result)
  {
    v4 = result;
    v11 = swift_unknownObjectRetain();
    v12 = 0;
    sub_1D1AB8D74(&v11);
    sub_1D1AAE004(v4, 0);
    v5 = (*(AssociatedConformanceWitness + 320))(v2, AssociatedConformanceWitness);
    if (v6)
    {
      v7 = swift_unknownObjectRetain();
      sub_1D1AA6624(v7, 0, 0);
    }

    else
    {
      v8 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v8;
      v10 = sub_1D179CDAC(inited);
      swift_setDeallocating();
      swift_unknownObjectRetain();
      sub_1D1AA6624(v10, v4, 1);
    }

    return swift_unknownObjectRelease_n();
  }

  return result;
}

void sub_1D1AAC9E0(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1D1AAE2C4(v12, v5, type metadata accessor for StateSnapshot.UpdateType);
  v13 = *(v3 + 52);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  v15 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  sub_1D1E67ECC();
  (*(v7 + 8))(v9, v6);
  sub_1D1AAE264(v12, type metadata accessor for StateSnapshot.UpdateType);
}

uint64_t sub_1D1AACCAC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - v8;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v12 = (&v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v12 = [a1 home];
  swift_storeEnumTagMultiPayload();
  sub_1D1AAE2C4(v12, v5, type metadata accessor for StateSnapshot.UpdateType);
  v13 = *(v3 + 52);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  sub_1D1E67ECC();
  (*(v7 + 8))(v9, v6);
  return sub_1D1AAE264(v12, type metadata accessor for StateSnapshot.UpdateType);
}

uint64_t sub_1D1AACF8C(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D1AACFC8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D1AAD068(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return swift_getAssociatedConformanceWitness();
}

uint64_t sub_1D1AAD170()
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v2 = &v4 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_storeEnumTagMultiPayload();
  sub_1D1AA6268(v2);
  return sub_1D1AAE264(v2, type metadata accessor for StateSnapshot.UpdateType);
}

uint64_t sub_1D1AAD20C(uint64_t a1)
{
  v3 = swift_unknownObjectRetain();
  v4 = 0;
  sub_1D1AB8D74(&v3);
  return sub_1D1AAE004(a1, 0);
}

void sub_1D1AAD258(uint64_t a1)
{
  v10 = swift_unknownObjectRetain();
  v11 = 0;
  sub_1D1AB8D74(&v10);
  sub_1D1AAE004(a1, 0);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v3 = *(AssociatedConformanceWitness + 320);
  v4 = swift_checkMetadataState();
  v5 = v3(v4, AssociatedConformanceWitness);
  if (v6)
  {

    sub_1D1AA6624(a1, 0, 0);
  }

  else
  {
    v7 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v7;
    v9 = sub_1D179CDAC(inited);
    swift_setDeallocating();
    swift_unknownObjectRetain();
    sub_1D1AA6624(v9, a1, 1);
    swift_unknownObjectRelease();
  }
}

uint64_t sub_1D1AAD410(uint64_t a1, char a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getAssociatedTypeWitness();
  sub_1D1E6903C();
  objc_opt_self();
  v6 = swift_dynamicCastObjCClass();
  if (v6)
  {
    v7 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF8, &qword_1D1E96540);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v7;
    *(inited + 40) = a2 & 1 | 0x4000;
    swift_unknownObjectRetain();
    v9 = sub_1D18DA708(inited);
    swift_setDeallocating();
    sub_1D1741A30(inited + 32, &unk_1EC649E00, &unk_1D1E96548);
    *v5 = v9;
    swift_storeEnumTagMultiPayload();
    sub_1D1AA6268(v5);
    swift_unknownObjectRelease();
    return sub_1D1AAE264(v5, type metadata accessor for StateSnapshot.UpdateType);
  }

  else
  {

    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1D1AAD5FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = v5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v23 - v14;
  v16 = sub_1D1E67E7C();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = swift_allocObject();
  *(v17 + 16) = v8;
  *(v17 + 24) = a1;
  sub_1D1741C08(v15, v13, &unk_1EC6442C0, &qword_1D1E741A0);
  v18 = qword_1EC642358;

  swift_unknownObjectRetain();

  if (v18 != -1)
  {
    swift_once();
  }

  v19 = qword_1EC64ABE8;
  v20 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = a4;
  v21[5] = v17;

  sub_1D17C6EF0(0, 0, v13, a5, v21);

  return sub_1D1741A30(v15, &unk_1EC6442C0, &qword_1D1E741A0);
}

uint64_t sub_1D1AAD828()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v13 - v5;
  v7 = sub_1D1E67E7C();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  sub_1D1741C08(v6, v4, &unk_1EC6442C0, &qword_1D1E741A0);
  v8 = qword_1EC642358;
  swift_retain_n();
  if (v8 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC64ABE8;
  v10 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
  v11 = swift_allocObject();
  v11[2] = v9;
  v11[3] = v10;
  v11[4] = sub_1D1AADA2C;
  v11[5] = v0;

  sub_1D17C6EF0(0, 0, v4, &unk_1D1E96480, v11);

  return sub_1D1741A30(v6, &unk_1EC6442C0, &qword_1D1E741A0);
}

uint64_t sub_1D1AADA3C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AA783C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1AADAFC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AA78F8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1AADBC4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AA75A4(a1, v4, v5, v7, v6);
}

uint64_t objectdestroy_6Tm()
{

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t objectdestroy_14Tm()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1AADD14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AA6DF0(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1AADDD4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1AA6F24(a1, v4, v5, v6);
}

void sub_1D1AADE88(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    sub_1D1A283E8(a1, a2, a3);
  }
}

uint64_t objectdestroy_52Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t objectdestroy_18Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D1AADF44(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AA8698(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1AAE004(uint64_t a1, char a2)
{
  if (a2)
  {
  }

  else
  {
    return swift_unknownObjectRelease();
  }
}

uint64_t sub_1D1AAE010(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D1E66A7C() - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v8 = *(swift_getAssociatedTypeWitness() - 8);
  v9 = (v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[6];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1AA9F98(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1D1AAE21C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1AAE264(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1AAE2C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AAE32C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1AA90DC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1AAE3F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

id HomeState.Stream.delegatePackage()()
{
  v1 = sub_1D1A830C0(&unk_1EC649E70, &unk_1D1E96450);
  v2 = _s15DelegateAdapterCMa_2();
  v3 = objc_allocWithZone(v2);
  *&v3[OBJC_IVAR____TtCE13HomeDataModelCSo13HMHomeManager15DelegateAdapter_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v1;
  swift_unknownObjectWeakAssign();
  v37.receiver = v3;
  v37.super_class = v2;
  v30 = objc_msgSendSuper2(&v37, sel_init);
  v4 = sub_1D1A830C0(&qword_1EC649E80, &unk_1D1E96434);
  v5 = _s15DelegateAdapterCMa_1();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtCE13HomeDataModelCSo6HMHome15DelegateAdapter_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v4;
  swift_unknownObjectWeakAssign();
  v36.receiver = v6;
  v36.super_class = v5;
  v7 = objc_msgSendSuper2(&v36, sel_init);
  v8 = sub_1D1A830C0(&qword_1EC649E88, &unk_1D1E9640C);
  v9 = _s15DelegateAdapterCMa();
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR____TtCE13HomeDataModelCSo11HMAccessory15DelegateAdapter_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v8;
  swift_unknownObjectWeakAssign();
  v35.receiver = v10;
  v35.super_class = v9;
  v11 = objc_msgSendSuper2(&v35, sel_init);
  v12 = sub_1D1A830C0(&qword_1EC649E90, &unk_1D1E963F0);
  v13 = _s15DelegateAdapterCMa_4();
  v14 = objc_allocWithZone(v13);
  *&v14[OBJC_IVAR____TtCE13HomeDataModelCSo32HMUserActionPredictionController15DelegateAdapter_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v12;
  swift_unknownObjectWeakAssign();
  v34.receiver = v14;
  v34.super_class = v13;
  v15 = objc_msgSendSuper2(&v34, sel_init);
  v16 = sub_1D1A830C0(&qword_1EC649E98, &unk_1D1E963D4);
  v17 = _s15DelegateAdapterCMa_3();
  v18 = objc_allocWithZone(v17);
  *&v18[OBJC_IVAR____TtCE13HomeDataModelCSo14HMMediaSession15DelegateAdapter_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v16;
  swift_unknownObjectWeakAssign();
  v33.receiver = v18;
  v33.super_class = v17;
  v19 = objc_msgSendSuper2(&v33, sel_init);
  v20 = sub_1D1A830C0(&qword_1EC649EA0, &unk_1D1E963B8);
  v21 = _s15DelegateAdapterCMa_0();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR____TtCE13HomeDataModelCSo29HMAccessorySettingsDataSource15DelegateAdapter_delegate + 8] = 0;
  *(swift_unknownObjectWeakInit() + 8) = v20;
  swift_unknownObjectWeakAssign();
  v32.receiver = v22;
  v32.super_class = v21;
  v23 = objc_msgSendSuper2(&v32, sel_init);
  v24 = *(v0 + 136);
  v25 = type metadata accessor for HomeState.Stream.DelegatePackage();
  v26 = v24;
  v27 = objc_allocWithZone(v25);
  *&v27[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_homeManagerDelegate] = v30;
  *&v27[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_homeDelegate] = v7;
  *&v27[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_accessoryDelegate] = v11;
  *&v27[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_userActionPredictionControllerDelegate] = v15;
  *&v27[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_mediaSessionDelegate] = v19;
  *&v27[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_accessorySettingsDataSourceDelegate] = v23;
  *&v27[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_mediaObjectDelegate] = v26;
  *&v27[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_lightProfileDelegate] = v26;
  *&v27[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_symptomHandlerDelegate] = v26;
  *&v27[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_residentDeviceDelegate] = v26;
  *&v27[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_softwareUpdateDelegate] = v26;
  *&v27[OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream15DelegatePackage_softwareUpdateControllerV2Delegate] = v26;
  v31.receiver = v27;
  v31.super_class = v25;
  v28 = v26;
  return objc_msgSendSuper2(&v31, sel_init);
}

id HomeState.Stream.DelegatePackage.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id HomeState.Stream.DelegatePackage.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HomeState.Stream.DelegatePackage();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D1AAED50(uint64_t a1, void *a2)
{
  v75 = a1;
  v70 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v68 = &v63 - v3;
  v4 = sub_1D1E66A7C();
  v73 = *(v4 - 8);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v65 = v6;
  v66 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v64 = &v63 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v9 = v8 - 8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v63 - v10;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v12 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v14 = &v63 - v13;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v17 = &v63 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
  v19 = v18[12];
  v20 = v18[16];
  v21 = v18[20];
  v22 = *(v73 + 16);
  v67 = v4;
  v71 = v22;
  v72 = v73 + 16;
  v22(v17, v75, v4);
  v23 = v70;
  *&v17[v19] = v70;
  *&v17[v20] = 0;
  *&v17[v21] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1D1AB10C0(v17, v11);
  v24 = *(v9 + 52);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v25 - 8) + 56))(&v11[v24], 1, 1, v25);
  v26 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  sub_1D1E67ECC();
  (*(v12 + 8))(v14, v69);
  sub_1D1AB1124(v17);
  result = [v26 documentationMetadata];
  if (result)
  {
    v28 = result;
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v29 = sub_1D1E6709C();
    __swift_project_value_buffer(v29, qword_1EE07B5D8);
    v30 = v64;
    v31 = v67;
    v71(v64, v75, v67);
    v32 = v26;
    v33 = v28;
    v34 = sub_1D1E6707C();
    v35 = sub_1D1E6835C();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v69 = swift_slowAlloc();
      v76 = v69;
      *v36 = 136315650;
      v37 = [v33 description];
      v38 = sub_1D1E6781C();
      v70 = v33;
      v39 = v38;
      v41 = v40;

      v42 = sub_1D1B1312C(v39, v41, &v76);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      v43 = [v32 description];
      v44 = sub_1D1E6781C();
      v46 = v45;

      v47 = sub_1D1B1312C(v44, v46, &v76);

      *(v36 + 14) = v47;
      *(v36 + 22) = 2080;
      sub_1D1886B8C();
      v48 = sub_1D1E68FAC();
      v50 = v49;
      v51 = v73;
      (*(v73 + 8))(v30, v31);
      v52 = sub_1D1B1312C(v48, v50, &v76);
      v33 = v70;

      *(v36 + 24) = v52;
      _os_log_impl(&dword_1D16EC000, v34, v35, "Start documentation fetch with metadata: %s softwareUpdate: %s for: %s", v36, 0x20u);
      v53 = v69;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v53, -1, -1);
      MEMORY[0x1D3893640](v36, -1, -1);
    }

    else
    {

      v51 = v73;
      (*(v73 + 8))(v30, v31);
    }

    v54 = sub_1D1E67E7C();
    v55 = v68;
    (*(*(v54 - 8) + 56))(v68, 1, 1, v54);
    v56 = v66;
    v71(v66, v75, v31);
    v57 = (*(v51 + 80) + 48) & ~*(v51 + 80);
    v58 = (v65 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
    v59 = swift_allocObject();
    *(v59 + 2) = 0;
    *(v59 + 3) = 0;
    *(v59 + 4) = v33;
    *(v59 + 5) = v32;
    (*(v51 + 32))(&v59[v57], v56, v31);
    v60 = v74;
    *&v59[v58] = v74;
    v61 = v32;
    v62 = v60;
    sub_1D17C6EF0(0, 0, v55, &unk_1D1E96638, v59);
  }

  return result;
}

uint64_t sub_1D1AAF674(void *a1, uint64_t a2, void *a3, uint64_t a4, void *a5, void (*a6)(char *, id))
{
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66A5C();
  v14 = a3;
  v15 = a5;
  v16 = a1;
  a6(v13, v15);

  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1D1AAF790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v7[10] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v7[11] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v7[12] = v8;
  v7[13] = *(v8 - 8);
  v7[14] = swift_task_alloc();
  v7[15] = type metadata accessor for StateSnapshot.UpdateType(0);
  v7[16] = swift_task_alloc();
  v9 = sub_1D1E66A7C();
  v7[17] = v9;
  v7[18] = *(v9 - 8);
  v7[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AAF928, 0, 0);
}

uint64_t sub_1D1AAF928()
{
  *(v0 + 160) = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AAF9C4, v1, 0);
}

uint64_t sub_1D1AAF9C4()
{
  v1 = *(v0 + 160);
  swift_beginAccess();
  v2 = *(v1 + 72);
  *(v0 + 168) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1AAFA4C, 0, 0);
}

uint64_t sub_1D1AAFA4C()
{
  v1 = v0[21];
  v2 = v0[6];

  v3 = swift_task_alloc();
  v0[22] = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v2;
  v4 = swift_task_alloc();
  v0[23] = v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6500D0, &unk_1D1EA2E00);
  *v4 = v0;
  v4[1] = sub_1D1AAFB5C;

  return MEMORY[0x1EEE6DE38](v0 + 5, 0, 0, 0xD00000000000001FLL, 0x80000001D1EC41E0, sub_1D1AB12B8, v3, v5);
}

uint64_t sub_1D1AAFB5C()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1D1AB0128;
  }

  else
  {

    v2 = sub_1D1AAFC78;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1AAFC78()
{
  v59 = v0;
  v1 = *(v0 + 40);
  if (v1)
  {
    v2 = qword_1EE07B5D0;
    v57 = *(v0 + 40);
    v3 = v1;
    if (v2 != -1)
    {
      swift_once();
    }

    v5 = *(v0 + 144);
    v4 = *(v0 + 152);
    v6 = *(v0 + 136);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);
    v9 = sub_1D1E6709C();
    __swift_project_value_buffer(v9, qword_1EE07B5D8);
    v56 = *(v5 + 16);
    v56(v4, v7, v6);
    v10 = v3;
    v11 = v8;
    v12 = sub_1D1E6707C();
    v13 = sub_1D1E6835C();

    v14 = os_log_type_enabled(v12, v13);
    v16 = *(v0 + 144);
    v15 = *(v0 + 152);
    v17 = *(v0 + 136);
    v55 = v10;
    if (v14)
    {
      v51 = *(v0 + 56);
      v18 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v58 = v53;
      *v18 = 136315650;
      v19 = [v10 description];
      v20 = sub_1D1E6781C();
      v22 = v21;

      v23 = sub_1D1B1312C(v20, v22, &v58);

      *(v18 + 4) = v23;
      *(v18 + 12) = 2080;
      v24 = [v51 description];
      v25 = sub_1D1E6781C();
      v27 = v26;

      v28 = sub_1D1B1312C(v25, v27, &v58);

      *(v18 + 14) = v28;
      *(v18 + 22) = 2080;
      sub_1D1886B8C();
      v29 = sub_1D1E68FAC();
      v31 = v30;
      (*(v16 + 8))(v15, v17);
      v32 = sub_1D1B1312C(v29, v31, &v58);

      *(v18 + 24) = v32;
      _os_log_impl(&dword_1D16EC000, v12, v13, "Received documentation: %s softwareUpdate: %s for: %s", v18, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v53, -1, -1);
      MEMORY[0x1D3893640](v18, -1, -1);
    }

    else
    {

      (*(v16 + 8))(v15, v17);
    }

    v34 = *(v0 + 128);
    v33 = *(v0 + 136);
    v49 = *(v0 + 112);
    v50 = *(v0 + 168);
    v52 = *(v0 + 104);
    v54 = *(v0 + 96);
    v35 = *(v0 + 88);
    v36 = *(v0 + 64);
    v48 = *(v0 + 80);
    v37 = *(v0 + 56);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
    v39 = v38[12];
    v40 = v38[16];
    v41 = v38[20];
    v56(v34, v36, v33);
    *(v34 + v39) = v37;
    *(v34 + v40) = 0;
    *(v34 + v41) = v57;
    swift_storeEnumTagMultiPayload();
    sub_1D1AB10C0(v34, v35);
    v42 = *(v48 + 44);
    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
    (*(*(v43 - 8) + 56))(v35 + v42, 1, 1, v43);
    v44 = v55;
    v45 = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
    sub_1D1E67ECC();

    v52[1](v49, v54);
    sub_1D1AB1124(v34);
  }

  else
  {
  }

  v46 = *(v0 + 8);

  return v46();
}

uint64_t sub_1D1AB0128()
{

  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 192);
  v2 = sub_1D1E6709C();
  __swift_project_value_buffer(v2, qword_1EE07B5D8);
  v3 = v1;
  v4 = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 192);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D16EC000, v4, v5, "Documentation fetch error: %@", v8, 0xCu);
    sub_1D179F28C(v9);
    MEMORY[0x1D3893640](v9, -1, -1);
    MEMORY[0x1D3893640](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

void sub_1D1AB02F8(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A288, &qword_1D1E96640);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = aBlock - v8;
  if (a2)
  {
    v10 = [a2 softwareUpdateController];
    if (v10)
    {
      v11 = v10;
      (*(v7 + 16))(v9, a1, v6);
      v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
      v13 = swift_allocObject();
      (*(v7 + 32))(v13 + v12, v9, v6);
      aBlock[4] = sub_1D1AB12C0;
      aBlock[5] = v13;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D1819E6C;
      aBlock[3] = &block_descriptor_41;
      v14 = _Block_copy(aBlock);

      [v11 fetchDocumentationFromMetadata:a3 completion:v14];
      _Block_release(v14);
    }
  }
}

uint64_t sub_1D1AB04D8(void *a1, id a2)
{
  if (a2)
  {
    v2 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A288, &qword_1D1E96640);
    return sub_1D1E67D5C();
  }

  else
  {
    v4 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A288, &qword_1D1E96640);
    return sub_1D1E67D6C();
  }
}

id sub_1D1AB055C(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07A078 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EE07A080);
  (*(v7 + 16))(v9, a1, v6);
  v11 = a2;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6835C();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v14 = 136315394;
    v15 = [v11 description];
    HIDWORD(v29) = v13;
    v16 = v15;
    v17 = sub_1D1E6781C();
    v31 = v3;
    v18 = v17;
    v19 = a1;
    v21 = v20;

    v22 = sub_1D1B1312C(v18, v21, &v32);
    a1 = v19;

    *(v14 + 4) = v22;
    *(v14 + 12) = 2080;
    sub_1D1886B8C();
    v23 = sub_1D1E68FAC();
    v25 = v24;
    (*(v7 + 8))(v9, v6);
    v26 = sub_1D1B1312C(v23, v25, &v32);

    *(v14 + 14) = v26;
    _os_log_impl(&dword_1D16EC000, v12, BYTE4(v29), "Received softwareUpdate: %s for: %s", v14, 0x16u);
    v27 = v30;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v27, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return sub_1D1AAED50(a1, v11);
}

id sub_1D1AB0840(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07A078 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6709C();
  __swift_project_value_buffer(v10, qword_1EE07A080);
  (*(v7 + 16))(v9, a1, v6);
  v11 = a3;
  v12 = a2;
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v34 = v33;
    *v15 = 136315650;
    swift_getErrorValue();
    v32 = v13;
    v16 = sub_1D1E6915C();
    v18 = sub_1D1B1312C(v16, v17, &v34);

    *(v15 + 4) = v18;
    *(v15 + 12) = 2080;
    v19 = [v12 description];
    v20 = sub_1D1E6781C();
    HIDWORD(v31) = v14;
    v22 = v21;

    v23 = sub_1D1B1312C(v20, v22, &v34);

    *(v15 + 14) = v23;
    *(v15 + 22) = 2080;
    sub_1D1886B8C();
    v24 = sub_1D1E68FAC();
    v26 = v25;
    (*(v7 + 8))(v9, v6);
    v27 = sub_1D1B1312C(v24, v26, &v34);

    *(v15 + 24) = v27;
    v28 = v32;
    _os_log_impl(&dword_1D16EC000, v32, BYTE4(v31), "Received error:%s softwareUpdate: %s for: %s", v15, 0x20u);
    v29 = v33;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v29, -1, -1);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v9, v6);
  }

  return sub_1D1AAED50(a1, v12);
}

uint64_t sub_1D1AB0B88(uint64_t a1, void *a2)
{
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  MEMORY[0x1EEE9AC00](v53);
  v5 = &v45[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v54 = &v45[-v7];
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v9 = &v45[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v45[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE07A078 != -1)
  {
    swift_once();
  }

  v14 = sub_1D1E6709C();
  __swift_project_value_buffer(v14, qword_1EE07A080);
  v15 = *(v11 + 16);
  v52 = a1;
  v50 = v15;
  v15(v13, a1, v10);
  v16 = a2;
  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6835C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v49 = v5;
    v20 = v19;
    v48 = swift_slowAlloc();
    v57 = v48;
    *v20 = 136315394;
    v21 = [v16 description];
    v47 = v17;
    v22 = v21;
    v23 = v16;
    v24 = sub_1D1E6781C();
    v46 = v18;
    v26 = v25;

    v27 = sub_1D1B1312C(v24, v26, &v57);
    v28 = v23;

    *(v20 + 4) = v27;
    *(v20 + 12) = 2080;
    sub_1D1886B8C();
    v29 = sub_1D1E68FAC();
    v31 = v30;
    (*(v11 + 8))(v13, v10);
    v32 = sub_1D1B1312C(v29, v31, &v57);

    *(v20 + 14) = v32;
    v33 = v47;
    _os_log_impl(&dword_1D16EC000, v47, v46, "Received softwareUpdateProgress: %s for: %s", v20, 0x16u);
    v34 = v48;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v34, -1, -1);
    v35 = v20;
    v5 = v49;
    MEMORY[0x1D3893640](v35, -1, -1);
  }

  else
  {

    (*(v11 + 8))(v13, v10);
    v28 = v16;
  }

  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A280, &qword_1D1E98090);
  v37 = v36[12];
  v38 = v36[16];
  v39 = v36[20];
  v50(v9, v52, v10);
  *&v9[v37] = 0;
  *&v9[v38] = v28;
  *&v9[v39] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1D1AB10C0(v9, v5);
  v40 = *(v53 + 44);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v41 - 8) + 56))(&v5[v40], 1, 1, v41);
  v42 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  v43 = v54;
  sub_1D1E67ECC();
  (*(v55 + 8))(v43, v56);
  return sub_1D1AB1124(v9);
}

uint64_t sub_1D1AB10C0(uint64_t a1, uint64_t a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  (*(*(updated - 8) + 16))(a2, a1, updated);
  return a2;
}

uint64_t sub_1D1AB1124(uint64_t a1)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  (*(*(updated - 8) + 8))(a1, updated);
  return a1;
}

uint64_t sub_1D1AB1180(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D1E66A7C() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = v1[5];
  v11 = *(v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D17C4BFC;

  return sub_1D1AAF790(a1, v7, v8, v9, v10, v1 + v6, v11);
}

uint64_t sub_1D1AB12C0(void *a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A288, &qword_1D1E96640);

  return sub_1D1AB04D8(a1, a2);
}

uint64_t block_copy_helper_41(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1AB1364()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64A290);
  __swift_project_value_buffer(v0, qword_1EC64A290);
  return sub_1D1E6708C();
}

uint64_t sub_1D1AB1424()
{
  v0 = sub_1D1E6709C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D1E6701C();
  __swift_allocate_value_buffer(v4, qword_1EC64A2A8);
  __swift_project_value_buffer(v4, qword_1EC64A2A8);
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EC64A290);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1D1E66FEC();
}

uint64_t sub_1D1AB1598(uint64_t *a1)
{
  v2 = sub_1D1909DC8();
  if (qword_1EE07A0A8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EE07A0B0);
  v4 = a1;

  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40 = v8;
    *v7 = 136315394;
    v9 = [v4 name];
    v10 = sub_1D1E6781C();
    v12 = v11;

    v13 = sub_1D1B1312C(v10, v12, &v40);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A370, &qword_1D1EAF8F0);
    v14 = sub_1D1E6765C();
    v16 = sub_1D1B1312C(v14, v15, &v40);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Setting up delegates for all devices in home: %s: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  if (!*(v2 + 16))
  {
    v17 = v4;
    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6832C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_1D1B1312C(0xD00000000000001CLL, 0x80000001D1EC4300, &v40);
      *(v20 + 12) = 2082;
      v22 = HMHome.matterAccessories.getter();
      v23 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v24 = MEMORY[0x1D3891260](v22, v23);
      v26 = v25;

      v27 = sub_1D1B1312C(v24, v26, &v40);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1D16EC000, v18, v19, "%s No eligible devices found: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }
  }

  v28 = 1 << *(v2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v2 + 64);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  a1 = &qword_1EE07A000;
  while (v30)
  {
LABEL_18:
    v36 = *(*(v2 + 56) + ((v32 << 10) | (16 * __clz(__rbit64(v30)))) + 8);
    v37 = qword_1EE07AE38;
    swift_unknownObjectRetain();
    if (v37 != -1)
    {
      swift_once();
    }

    if (qword_1EE07AE40 == 4)
    {
      if (qword_1EC642298 != -1)
      {
        swift_once();
      }

      v33 = qword_1EC6BE138;
    }

    else
    {
      v33 = v39;
      swift_unknownObjectRetain();
    }

    v30 &= v30 - 1;
    ObjectType = swift_getObjectType();
    (*(v36 + 104))(v33, ObjectType, v36);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v35 >= v31)
    {
      break;
    }

    v30 = *(v2 + 64 + 8 * v35);
    ++v32;
    if (v30)
    {
      v32 = v35;
      goto LABEL_18;
    }
  }
}

uint64_t sub_1D1AB1A6C(uint64_t *a1)
{
  v2 = sub_1D1909DC8();
  if (qword_1EE07A0A8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v3 = sub_1D1E6709C();
  __swift_project_value_buffer(v3, qword_1EE07A0B0);
  v4 = a1;

  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v40 = v8;
    *v7 = 136315394;
    v9 = [v4 name];
    v10 = sub_1D1E6781C();
    v12 = v11;

    v13 = sub_1D1B1312C(v10, v12, &v40);

    *(v7 + 4) = v13;
    *(v7 + 12) = 2082;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A370, &qword_1D1EAF8F0);
    v14 = sub_1D1E6765C();
    v16 = sub_1D1B1312C(v14, v15, &v40);

    *(v7 + 14) = v16;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Removing delegates for all devices in home: %s: %{public}s", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  if (!*(v2 + 16))
  {
    v17 = v4;
    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6832C();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v40 = v21;
      *v20 = 136315394;
      *(v20 + 4) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EC4320, &v40);
      *(v20 + 12) = 2082;
      v22 = HMHome.matterAccessories.getter();
      v23 = sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v24 = MEMORY[0x1D3891260](v22, v23);
      v26 = v25;

      v27 = sub_1D1B1312C(v24, v26, &v40);

      *(v20 + 14) = v27;
      _os_log_impl(&dword_1D16EC000, v18, v19, "%s No eligible devices found: %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }
  }

  v28 = 1 << *(v2 + 32);
  v29 = -1;
  if (v28 < 64)
  {
    v29 = ~(-1 << v28);
  }

  v30 = v29 & *(v2 + 64);
  v31 = (v28 + 63) >> 6;

  v32 = 0;
  a1 = &qword_1EE07A000;
  while (v30)
  {
LABEL_18:
    v36 = *(*(v2 + 56) + ((v32 << 10) | (16 * __clz(__rbit64(v30)))) + 8);
    v37 = qword_1EE07AE38;
    swift_unknownObjectRetain();
    if (v37 != -1)
    {
      swift_once();
    }

    if (qword_1EE07AE40 == 4)
    {
      if (qword_1EC642298 != -1)
      {
        swift_once();
      }

      v33 = qword_1EC6BE138;
    }

    else
    {
      v33 = v39;
      swift_unknownObjectRetain();
    }

    v30 &= v30 - 1;
    ObjectType = swift_getObjectType();
    (*(v36 + 112))(v33, ObjectType, v36);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }

  while (1)
  {
    v35 = v32 + 1;
    if (__OFADD__(v32, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v35 >= v31)
    {
      break;
    }

    v30 = *(v2 + 64 + 8 * v35);
    ++v32;
    if (v30)
    {
      v32 = v35;
      goto LABEL_18;
    }
  }
}

void sub_1D1AB1FE4(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v52 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v56 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v55 = &v52 - v10;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6709C();
  v12 = __swift_project_value_buffer(v11, qword_1EE07A0B0);
  v13 = a1;
  v54 = v12;
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6835C();

  v16 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  if (os_log_type_enabled(v14, v15))
  {
    v17 = swift_slowAlloc();
    v53 = v9;
    v18 = v17;
    v19 = swift_slowAlloc();
    v52 = v3;
    v20 = v19;
    v21 = swift_slowAlloc();
    v58 = v21;
    *v18 = 136446466;
    v57 = a2;
    type metadata accessor for MTRDeviceState(0);
    v22 = sub_1D1E678BC();
    v24 = v8;
    v25 = v6;
    v26 = sub_1D1B1312C(v22, v23, &v58);

    *(v18 + 4) = v26;
    v6 = v25;
    v8 = v24;
    v16 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    *(v18 + 12) = 2114;
    v27 = [v13 hdm_getNodeID];
    *(v18 + 14) = v27;
    *v20 = v27;
    _os_log_impl(&dword_1D16EC000, v14, v15, "Received MTRDevice delegate stateChanged (%{public}s) for device: %{public}@.", v18, 0x16u);
    sub_1D1741A30(v20, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v20, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1D3893640](v21, -1, -1);
    v28 = v18;
    v9 = v53;
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  v29 = [v13 hdm_containingHome];
  if (v29)
  {
    v30 = v29;
    v31 = [v13 v16[333]];
    v32 = [v31 unsignedLongLongValue];

    if (v32)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v32;
      v34 = sub_1D179CDAC(inited);
      swift_setDeallocating();
      v35 = *(v6 + 44);
      v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
      (*(*(v36 - 8) + 56))(&v8[v35], 1, 1, v36);
      *v8 = v34;
      *(v8 + 1) = v30;
      v8[16] = 1;
      v37 = v30;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
      v38 = v55;
      sub_1D1E67ECC();

      (*(v56 + 8))(v38, v9);
    }

    else
    {
      v48 = *(v6 + 44);
      v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
      (*(*(v49 - 8) + 56))(&v8[v48], 1, 1, v49);
      *v8 = v30;
      *(v8 + 1) = 0;
      v8[16] = 0;
      v50 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
      v51 = v55;
      sub_1D1E67ECC();

      (*(v56 + 8))(v51, v9);
    }
  }

  else
  {
    v39 = v16;
    v40 = v13;
    v41 = sub_1D1E6707C();
    v42 = sub_1D1E6833C();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v58 = v45;
      *v43 = 136315650;
      *(v43 + 4) = sub_1D1B1312C(0xD000000000000033, 0x80000001D1EC42A0, &v58);
      *(v43 + 12) = 2114;
      v46 = [v40 v39 + 4037];
      *(v43 + 14) = v46;
      *(v43 + 22) = 2112;
      *(v43 + 24) = v40;
      *v44 = v46;
      v44[1] = v40;
      v47 = v40;
      _os_log_impl(&dword_1D16EC000, v41, v42, "%s: Could not find Home for MTRDevice: %{public}@ %@", v43, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v44, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v45);
      MEMORY[0x1D3893640](v45, -1, -1);
      MEMORY[0x1D3893640](v43, -1, -1);
    }
  }
}

void sub_1D1AB26B0(void *a1, uint64_t a2)
{
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  MEMORY[0x1EEE9AC00](v105);
  v107 = &v104 - v4;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v106 = &v104 - v6;
  v7 = *(a2 + 16);
  if (!v7)
  {
    goto LABEL_44;
  }

  v8 = 0;
  v9 = 0;
  v113 = a2 + 32;
  v10 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  *&v5 = 136315138;
  v110 = v5;
  *&v5 = 138412546;
  v104 = v5;
  *&v5 = 136446466;
  v111 = v5;
  v112 = a1;
  do
  {
    v13 = *(v113 + 8 * v9);

    v14 = [a1 v10[333]];
    v15 = [v14 unsignedLongLongValue];

    sub_1D18F8630(v13, v15, v116);
    if (*(&v116[0] + 1))
    {

      v16 = v117;
      v119 = v117;
      v118[0] = v116[0];
      v118[1] = v116[1];
      v118[2] = v116[2];
      if (v117)
      {
        v17 = v117;
        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v18 = sub_1D1E6709C();
        __swift_project_value_buffer(v18, qword_1EE07A0B0);
        sub_1D18F5324(v118, v116);
        v19 = v16;
        v20 = sub_1D1E6707C();
        v21 = sub_1D1E6833C();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v115 = v23;
          *v22 = v111;
          v24 = *(&v116[0] + 1);
          v114 = *(&v116[0] + 1);
          sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
          v25 = v24;
          v26 = sub_1D1E678BC();
          v28 = v27;
          sub_1D18F5380(v116);
          v29 = sub_1D1B1312C(v26, v28, &v115);

          *(v22 + 4) = v29;
          *(v22 + 12) = 2082;
          v114 = v16;
          v30 = v16;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
          v31 = sub_1D1E678BC();
          v33 = sub_1D1B1312C(v31, v32, &v115);
          v10 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;

          *(v22 + 14) = v33;
          a1 = v112;
          _os_log_impl(&dword_1D16EC000, v20, v21, "AttributeReport: path (%{public}s) has error: %{public}s", v22, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v23, -1, -1);
          MEMORY[0x1D3893640](v22, -1, -1);
        }

        else
        {

          sub_1D18F5380(v116);
        }
      }

      else
      {
        if (qword_1EE07B280 != -1)
        {
          swift_once();
        }

        if (byte_1EE07B288 == 1)
        {
          v44 = [*(&v118[0] + 1) cluster];
          v45 = [v44 unsignedIntValue];

          ClusterKind.init(rawValue:)(v45);
          v46 = SLOBYTE(v116[0]);
          if (SLOBYTE(v116[0]) != 30)
          {
            if (qword_1EC6422F0 != -1)
            {
              swift_once();
            }

            v47 = off_1EC6493A0;
            if (*(off_1EC6493A0 + 2))
            {
              sub_1D1E6920C();
              v48 = dword_1D1E9666C[v46];
              sub_1D1E6924C();
              v49 = sub_1D1E6926C();
              v50 = -1 << v47[32];
              v51 = v49 & ~v50;
              if ((*&v47[((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v51))
              {
                v52 = ~v50;
                while (dword_1D1E9666C[*(*(v47 + 6) + v51)] != v48)
                {
                  v51 = (v51 + 1) & v52;
                  if (((*&v47[((v51 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v51) & 1) == 0)
                  {
                    goto LABEL_4;
                  }
                }

                if (qword_1EE07A0A8 != -1)
                {
                  swift_once();
                }

                v53 = sub_1D1E6709C();
                __swift_project_value_buffer(v53, qword_1EE07A0B0);
                sub_1D18F5324(v118, v116);
                v54 = a1;
                v55 = sub_1D1E6707C();
                v56 = sub_1D1E6835C();

                if (os_log_type_enabled(v55, v56))
                {
                  v57 = swift_slowAlloc();
                  v58 = swift_slowAlloc();
                  v59 = swift_slowAlloc();
                  v115 = v59;
                  *v57 = v104;
                  v60 = [v54 hdm_getNodeID];
                  *(v57 + 4) = v60;
                  *v58 = v60;
                  *(v57 + 12) = 2080;
                  v61 = sub_1D18F8A98();
                  v63 = v62;
                  sub_1D18F5380(v116);
                  v64 = sub_1D1B1312C(v61, v63, &v115);

                  *(v57 + 14) = v64;
                  _os_log_impl(&dword_1D16EC000, v55, v56, "AttributeReport: device[%@] reported %s", v57, 0x16u);
                  sub_1D1741A30(v58, &unk_1EC644000, &unk_1D1E75B00);
                  v65 = v58;
                  v10 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
                  MEMORY[0x1D3893640](v65, -1, -1);
                  __swift_destroy_boxed_opaque_existential_1(v59);
                  MEMORY[0x1D3893640](v59, -1, -1);
                  MEMORY[0x1D3893640](v57, -1, -1);
                }

                else
                {

                  sub_1D18F5380(v116);
                }

                a1 = v112;
              }
            }
          }
        }
      }

LABEL_4:
      v11 = [*(&v118[0] + 1) cluster];
      v12 = [v11 unsignedIntValue];

      ClusterKind.init(rawValue:)(v12);
      v8 = LOBYTE(v116[0]) != 30;
      sub_1D18F5380(v118);
    }

    else
    {
      sub_1D1741A30(v116, &unk_1EC64A350, &qword_1D1E914C0);
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v34 = sub_1D1E6709C();
      __swift_project_value_buffer(v34, qword_1EE07A0B0);

      v35 = sub_1D1E6707C();
      v36 = sub_1D1E6833C();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        *&v116[0] = v38;
        *v37 = v110;
        v39 = sub_1D1E6760C();
        v41 = v40;

        v42 = v39;
        v10 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        v43 = sub_1D1B1312C(v42, v41, v116);
        a1 = v112;

        *(v37 + 4) = v43;
        _os_log_impl(&dword_1D16EC000, v35, v36, "ParsedAttributeReport failed all attempts to parse %s", v37, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v38);
        MEMORY[0x1D3893640](v38, -1, -1);
        MEMORY[0x1D3893640](v37, -1, -1);
      }

      else
      {
      }
    }

    ++v9;
  }

  while (v9 != v7);
  if (!v8)
  {
LABEL_44:
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v84 = sub_1D1E6709C();
    __swift_project_value_buffer(v84, qword_1EE07A0B0);
    v85 = a1;
    v86 = sub_1D1E6707C();
    v87 = sub_1D1E6835C();

    if (!os_log_type_enabled(v86, v87))
    {
      goto LABEL_49;
    }

    v88 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    *v88 = 138543362;
    v90 = [v85 hdm_getNodeID];
    *(v88 + 4) = v90;
    *v89 = v90;
    _os_log_impl(&dword_1D16EC000, v86, v87, "Skipping update for MTRDevice delegate receivedAttributeReport for device: %{public}@", v88, 0xCu);
    sub_1D1741A30(v89, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v89, -1, -1);
    v91 = v88;
    goto LABEL_48;
  }

  v66 = [a1 hdm_containingHome];
  if (!v66)
  {
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v92 = sub_1D1E6709C();
    __swift_project_value_buffer(v92, qword_1EE07A0B0);
    v93 = a1;
    v86 = sub_1D1E6707C();
    v94 = sub_1D1E6833C();

    if (!os_log_type_enabled(v86, v94))
    {
      goto LABEL_49;
    }

    v95 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    *v95 = 138543618;
    v97 = [v93 v10[333]];
    *(v95 + 4) = v97;
    *(v95 + 12) = 2114;
    *(v95 + 14) = v93;
    *v96 = v97;
    v96[1] = v93;
    v98 = v93;
    _os_log_impl(&dword_1D16EC000, v86, v94, "Could not find Home for MTRDevice: %{public}@ %{public}@", v95, 0x16u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v96, -1, -1);
    v91 = v95;
LABEL_48:
    MEMORY[0x1D3893640](v91, -1, -1);
LABEL_49:

    return;
  }

  v67 = v66;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v68 = sub_1D1E6709C();
  __swift_project_value_buffer(v68, qword_1EE07A0B0);
  v69 = a1;
  v70 = sub_1D1E6707C();
  v71 = sub_1D1E6835C();

  if (os_log_type_enabled(v70, v71))
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    *v72 = 138543362;
    v74 = [v69 v10[333]];
    *(v72 + 4) = v74;
    *v73 = v74;
    _os_log_impl(&dword_1D16EC000, v70, v71, "Updating for MTRDevice delegate receivedAttributeReports for device: %{public}@", v72, 0xCu);
    sub_1D1741A30(v73, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v73, -1, -1);
    MEMORY[0x1D3893640](v72, -1, -1);
  }

  v75 = [v69 v10[333]];
  v76 = [v75 unsignedLongLongValue];

  if (v76)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D1E739C0;
    *(inited + 32) = v76;
    v78 = sub_1D179CDAC(inited);
    swift_setDeallocating();
    v79 = *(v105 + 44);
    v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
    v81 = v107;
    (*(*(v80 - 8) + 56))(&v107[v79], 1, 1, v80);
    *v81 = v78;
    *(v81 + 1) = v67;
    v81[16] = 1;
    v82 = v67;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
    v83 = v106;
    sub_1D1E67ECC();

    (*(v108 + 8))(v83, v109);
  }

  else
  {
    v99 = *(v105 + 44);
    v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
    v101 = v107;
    (*(*(v100 - 8) + 56))(&v107[v99], 1, 1, v100);
    *v101 = v67;
    *(v101 + 1) = 0;
    v101[16] = 0;
    v102 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
    v103 = v106;
    sub_1D1E67ECC();

    (*(v108 + 8))(v103, v109);
  }
}

void sub_1D1AB35B8(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v50 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v50 - v8;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v9 = sub_1D1E6709C();
  v10 = __swift_project_value_buffer(v9, qword_1EE07A0B0);

  v11 = a1;
  v53 = v10;
  v12 = sub_1D1E6707C();
  v13 = sub_1D1E6835C();

  v14 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
  if (os_log_type_enabled(v12, v13))
  {
    v15 = swift_slowAlloc();
    v52 = v7;
    v16 = v15;
    v17 = swift_slowAlloc();
    v51 = v4;
    v18 = v17;
    v19 = swift_slowAlloc();
    v56 = v19;
    *v16 = 136315394;
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
    v21 = MEMORY[0x1D3891260](a2, v20);
    v23 = sub_1D1B1312C(v21, v22, &v56);

    *(v16 + 4) = v23;
    v14 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    *(v16 + 12) = 2114;
    v24 = [v11 hdm_getNodeID];
    *(v16 + 14) = v24;
    *v18 = v24;
    _os_log_impl(&dword_1D16EC000, v12, v13, "Received MTRDevice delegate receivedEventReport (%s) for device: %{public}@. ", v16, 0x16u);
    sub_1D1741A30(v18, &unk_1EC644000, &unk_1D1E75B00);
    v25 = v18;
    v4 = v51;
    MEMORY[0x1D3893640](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D3893640](v19, -1, -1);
    v26 = v16;
    v7 = v52;
    MEMORY[0x1D3893640](v26, -1, -1);
  }

  v27 = [v11 hdm_containingHome];
  if (v27)
  {
    v28 = v27;
    v29 = [v11 v14[333]];
    v30 = [v29 unsignedLongLongValue];

    if (v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC650110, &unk_1D1E71860);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D1E739C0;
      *(inited + 32) = v30;
      v32 = sub_1D179CDAC(inited);
      swift_setDeallocating();
      v33 = *(v4 + 44);
      v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
      (*(*(v34 - 8) + 56))(&v6[v33], 1, 1, v34);
      *v6 = v32;
      *(v6 + 1) = v28;
      v6[16] = 1;
      v35 = v28;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
      v36 = v54;
      sub_1D1E67ECC();

      (v55[1].isa)(v36, v7);
    }

    else
    {
      v45 = *(v4 + 44);
      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
      (*(*(v46 - 8) + 56))(&v6[v45], 1, 1, v46);
      *v6 = v28;
      *(v6 + 1) = 0;
      v6[16] = 0;
      v47 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
      v48 = v54;
      sub_1D1E67ECC();

      (v55[1].isa)(v48, v7);
    }
  }

  else
  {
    v37 = v11;
    v55 = sub_1D1E6707C();
    v38 = sub_1D1E6833C();

    if (os_log_type_enabled(v55, v38))
    {
      v39 = v14;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v56 = v42;
      *v40 = 136315650;
      *(v40 + 4) = sub_1D1B1312C(0xD000000000000033, 0x80000001D1EC42A0, &v56);
      *(v40 + 12) = 2114;
      v43 = [v37 v39 + 4037];
      *(v40 + 14) = v43;
      *(v40 + 22) = 2114;
      *(v40 + 24) = v37;
      *v41 = v43;
      v41[1] = v37;
      v44 = v37;
      _os_log_impl(&dword_1D16EC000, v55, v38, "%s: Could not find Home for MTRDevice: %{public}@ %{public}@", v40, 0x20u);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v41, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1D3893640](v42, -1, -1);
      MEMORY[0x1D3893640](v40, -1, -1);
    }

    else
    {
      v49 = v55;
    }
  }
}

uint64_t sub_1D1AB3C78(void *a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(id, uint64_t))
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A340, &qword_1D1E71800);
  v8 = sub_1D1E67C1C();
  v9 = a3;
  v10 = a1;
  a5(v9, v8);
}

void sub_1D1AB3E34(void *a1)
{
  v2 = v1;
  v4 = _sSo6HMHomeC13HomeDataModelE6device3forAC12MatterDevice_pSgSo11HMAccessoryC_tF_0(a1);
  v6 = v5;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EE07A0B0);
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v11 = 136446466;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A330, &qword_1D1E96660);
    v13 = sub_1D1E678BC();
    v15 = v6;
    v16 = sub_1D1B1312C(v13, v14, &v20);

    *(v11 + 4) = v16;
    v6 = v15;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    v17 = v8;
    _os_log_impl(&dword_1D16EC000, v9, v10, "Setting up delegate for device (%{public}s) accessory: %@", v11, 0x16u);
    sub_1D1741A30(v12, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  if (v4)
  {
    if (qword_1EE07AE38 != -1)
    {
      swift_once();
    }

    if (qword_1EE07AE40 == 4)
    {
      if (qword_1EC642298 != -1)
      {
        swift_once();
      }

      v2 = qword_1EC6BE138;
    }

    else
    {
      swift_unknownObjectRetain();
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 104))(v2, ObjectType, v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_1D1AB40FC(void *a1)
{
  v2 = v1;
  v4 = _sSo6HMHomeC13HomeDataModelE6device3forAC12MatterDevice_pSgSo11HMAccessoryC_tF_0(a1);
  v6 = v5;
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v7 = sub_1D1E6709C();
  __swift_project_value_buffer(v7, qword_1EE07A0B0);
  swift_unknownObjectRetain();
  v8 = a1;
  v9 = sub_1D1E6707C();
  v10 = sub_1D1E6835C();

  swift_unknownObjectRelease();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v11 = 136446466;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A330, &qword_1D1E96660);
    v13 = sub_1D1E678BC();
    v15 = v6;
    v16 = sub_1D1B1312C(v13, v14, &v20);

    *(v11 + 4) = v16;
    v6 = v15;
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = v8;
    v17 = v8;
    _os_log_impl(&dword_1D16EC000, v9, v10, "Removing delegate for device (%{public}s) accessory: %@", v11, 0x16u);
    sub_1D1741A30(v12, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v11, -1, -1);
  }

  if (v4)
  {
    if (qword_1EE07AE38 != -1)
    {
      swift_once();
    }

    if (qword_1EE07AE40 == 4)
    {
      if (qword_1EC642298 != -1)
      {
        swift_once();
      }

      v2 = qword_1EC6BE138;
    }

    else
    {
      swift_unknownObjectRetain();
    }

    ObjectType = swift_getObjectType();
    (*(v6 + 112))(v2, ObjectType, v6);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
  }
}

void sub_1D1AB43C4(void *a1, const char *a2, ...)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EE07A0B0);
  v5 = a1;
  oslog = sub_1D1E6707C();
  v6 = sub_1D1E6835C();

  if (os_log_type_enabled(oslog, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138543362;
    v9 = [v5 hdm_getNodeID];
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&dword_1D16EC000, oslog, v6, a2, v7, 0xCu);
    sub_1D1741A30(v8, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v8, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }
}

uint64_t HomeState.Stream.ResidentUpdateController.configuration.getter()
{
  swift_getKeyPath();
  sub_1D1AB4604();
  sub_1D1E66CAC();
}

uint64_t sub_1D1AB4598(uint64_t *a1)
{
  swift_getKeyPath();
  sub_1D1AB4604();
  sub_1D1E66CAC();
}

unint64_t sub_1D1AB4604()
{
  result = qword_1EC64A388;
  if (!qword_1EC64A388)
  {
    type metadata accessor for HomeState.Stream.ResidentUpdateController(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A388);
  }

  return result;
}

uint64_t type metadata accessor for HomeState.Stream.ResidentUpdateController(uint64_t a1)
{
  result = qword_1EC64A390;
  if (!qword_1EC64A390)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t (*HomeState.Stream.ResidentUpdateController.configuration.modify(void *a1))()
{
  a1[1] = v1;
  swift_getKeyPath();
  a1[2] = OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24ResidentUpdateController___observationRegistrar;
  *a1 = v1;
  a1[3] = sub_1D1AB4604();
  sub_1D1E66CAC();

  *a1 = v1;
  swift_getKeyPath();
  sub_1D1E66CCC();

  return sub_1D1AB477C;
}

uint64_t sub_1D1AB477C(void *a1)
{
  *a1 = a1[1];
  swift_getKeyPath();
  sub_1D1E66CBC();
}

uint64_t HomeState.Stream.ResidentUpdateController.__allocating_init()()
{
  v0 = swift_allocObject();
  sub_1D1E66CDC();
  return v0;
}

uint64_t HomeState.Stream.ResidentUpdateController.deinit()
{
  v1 = OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24ResidentUpdateController___observationRegistrar;
  v2 = sub_1D1E66CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t HomeState.Stream.ResidentUpdateController.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCCV13HomeDataModel9HomeState6Stream24ResidentUpdateController___observationRegistrar;
  v2 = sub_1D1E66CEC();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_1D1AB4964(uint64_t a1)
{
  result = sub_1D1E66CEC();
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

uint64_t HomeState.Stream.SetupMilestone.hashValue.getter()
{
  v1 = *v0;
  sub_1D1E6920C();
  MEMORY[0x1D3892850](v1);
  return sub_1D1E6926C();
}

unint64_t HomeState.Stream.SetupMilestone.description.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001BLL;
    if (v1 == 6)
    {
      v5 = 0xD00000000000001ALL;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD000000000000019;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6576697463616E69;
    v3 = 0xD000000000000012;
    if (v1 != 2)
    {
      v3 = 0x63655273656D6F68;
    }

    if (*v0)
    {
      v2 = 0xD000000000000013;
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
}

unint64_t HomeState.Stream.SetupMilestone.nextStepDescription.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v2 = 1701736270;
    if (v1 == 6)
    {
      v2 = 0xD000000000000031;
    }

    v3 = 0xD00000000000001DLL;
    if (v1 != 4)
    {
      v3 = 0xD000000000000033;
    }

    v4 = *v0 <= 5u;
  }

  else
  {
    v2 = 0xD00000000000001BLL;
    if (v1 != 2)
    {
      v2 = 0xD000000000000029;
    }

    v3 = 0xD000000000000021;
    if (*v0)
    {
      v3 = 0xD00000000000001DLL;
    }

    v4 = *v0 <= 1u;
  }

  if (v4)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t HomeState.Stream.SetupMilestone.signpostDescription.getter()
{
  v1 = *v0;
  if (v1 > 3)
  {
    if (*v0 <= 5u)
    {
      if (v1 != 4)
      {
        MEMORY[0x1D3890F70](0xD000000000000019, 0x80000001D1EC43D0);

        MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
        v2 = 0x80000001D1EC4470;
        v3 = 0xD000000000000033;
        goto LABEL_17;
      }

      MEMORY[0x1D3890F70](0xD000000000000013, 0x80000001D1EC43F0);

      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      v4 = "Snapshots are being generated";
      goto LABEL_13;
    }

    if (v1 == 6)
    {
      MEMORY[0x1D3890F70](0xD00000000000001ALL, 0x80000001D1EC43B0);

      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      v2 = 0x80000001D1EC4430;
      v3 = 0xD000000000000031;
    }

    else
    {
      MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EC4390);

      v2 = 0xE400000000000000;
      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      v3 = 1701736270;
    }
  }

  else
  {
    if (*v0 <= 1u)
    {
      if (!*v0)
      {
        MEMORY[0x1D3890F70](0x6576697463616E69, 0xE800000000000000);

        MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
        v2 = 0x80000001D1EC4540;
        v3 = 0xD000000000000021;
        goto LABEL_17;
      }

      MEMORY[0x1D3890F70](0xD000000000000013, 0x80000001D1EC4410);

      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      v4 = "Home manager is being created";
LABEL_13:
      v2 = (v4 - 32) | 0x8000000000000000;
      v3 = 0xD00000000000001DLL;
      goto LABEL_17;
    }

    if (v1 == 2)
    {
      MEMORY[0x1D3890F70](0xD000000000000012, 0x80000001D1EC3CF0);

      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      v2 = 0x80000001D1EC4500;
      v3 = 0xD00000000000001BLL;
    }

    else
    {
      MEMORY[0x1D3890F70](0x63655273656D6F68, 0xED00006465766965);

      MEMORY[0x1D3890F70](540945696, 0xE400000000000000);
      v2 = 0x80000001D1EC44D0;
      v3 = 0xD000000000000029;
    }
  }

LABEL_17:
  MEMORY[0x1D3890F70](v3, v2);

  return 0;
}

unint64_t sub_1D1AB5050()
{
  result = qword_1EC64A3A0;
  if (!qword_1EC64A3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A3A0);
  }

  return result;
}

unint64_t sub_1D1AB50A8()
{
  result = qword_1EC64A3A8;
  if (!qword_1EC64A3A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EC64A3B0, &qword_1D1E96820);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A3A8);
  }

  return result;
}

unint64_t sub_1D1AB510C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD00000000000001BLL;
    if (v1 == 6)
    {
      v5 = 0xD00000000000001ALL;
    }

    v6 = 0xD000000000000013;
    if (v1 != 4)
    {
      v6 = 0xD000000000000019;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6576697463616E69;
    v3 = 0xD000000000000012;
    if (v1 != 2)
    {
      v3 = 0x63655273656D6F68;
    }

    if (*v0)
    {
      v2 = 0xD000000000000013;
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
}

uint64_t sub_1D1AB5240(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC64ABE8;
  v2[7] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB52DC, v3, 0);
}

uint64_t sub_1D1AB52DC()
{
  v1 = *(v0 + 48);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 22);
  os_unfair_lock_unlock((v1 + 16));
  if (v2)
  {
    goto LABEL_9;
  }

  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 == 4 || (v3 = *(v0 + 48), swift_beginAccess(), v4 = *(v3 + 64), (*(v0 + 64) = v4) == 0))
  {
LABEL_9:
    v13 = *(v0 + 8);

    return v13();
  }

  else
  {
    v5 = *(v0 + 56);
    v6 = sub_1D1AC359C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
    v7 = swift_task_alloc();
    *(v0 + 72) = v7;
    v7[1] = vextq_s8(*(v0 + 40), *(v0 + 40), 8uLL);
    v7[2].i64[0] = v4;
    v8 = v4;
    v9 = swift_task_alloc();
    *(v0 + 80) = v9;
    *v9 = v0;
    v9[1] = sub_1D1AB54D4;
    v10 = MEMORY[0x1E69E7CA8] + 8;
    v11 = MEMORY[0x1E69E7CA8] + 8;
    v12 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DBF8](v9, v10, v11, v5, v6, &unk_1D1E96C18, v7, v12);
  }
}

uint64_t sub_1D1AB54D4()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D1AB5600, v1, 0);
}

uint64_t sub_1D1AB5600()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AB5660@<X0>(uint64_t a1@<X0>, char a3@<W2>, uint64_t a4@<X8>)
{
  objc_opt_self();
  if (!a3)
  {
    result = swift_dynamicCastObjCClass();
    if (result)
    {
      v8 = 0;
      a1 = result;
      goto LABEL_6;
    }

    a1 = 0;
    v8 = 0;
LABEL_9:
    a3 = -1;
    goto LABEL_10;
  }

  result = swift_dynamicCastObjCClass();
  v8 = result;
  if (!result)
  {
    a1 = 0;
    goto LABEL_9;
  }

LABEL_6:
  result = swift_unknownObjectRetain();
LABEL_10:
  *a4 = a1;
  *(a4 + 8) = v8;
  *(a4 + 16) = a3;
  return result;
}

uint64_t sub_1D1AB5714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a4;
  v5[5] = a5;
  v5[2] = a2;
  v5[3] = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v5[6] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB57E8, v6, 0);
}

uint64_t sub_1D1AB57E8()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[3];
  v4 = v0[4];
  v5 = sub_1D1E67E7C();
  v6 = *(*(v5 - 8) + 56);
  v6(v1, 1, 1, v5);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v3;
  v7[5] = v4;
  v7[6] = v2;

  v8 = v4;
  v9 = v2;
  sub_1D1DE2784(v1, &unk_1D1E96C28, v7);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v6(v1, 1, 1, v5);
  v10 = swift_allocObject();
  v10[2] = 0;
  v10[3] = 0;
  v10[4] = v3;
  v10[5] = v8;

  v11 = v8;
  sub_1D1DE2784(v1, &unk_1D1E96C38, v10);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);

  v12 = v0[1];

  return v12();
}

uint64_t sub_1D1AB59A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v6[5] = type metadata accessor for StateSnapshot.UpdateType(0);
  v6[6] = swift_task_alloc();
  type metadata accessor for StateSnapshot(0);
  v6[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AB5A6C, 0, 0);
}

uint64_t sub_1D1AB5A6C()
{
  v1 = v0[6];
  v2 = v0[3];
  v0[8] = *(*(v0[2] + 144) + qword_1EC6BE170);
  *v1 = v2;
  swift_storeEnumTagMultiPayload();

  v3 = v2;
  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1D1AB5B48;
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[3];
  v7 = v0[4];

  return sub_1D1E5A250(v5, v6, v7, v8, 0);
}

uint64_t sub_1D1AB5B48()
{
  v1 = *(*v0 + 48);

  sub_1D1AC3B08(v1, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AB5C90, 0, 0);
}

uint64_t sub_1D1AB5C90()
{
  *(v0 + 80) = *(*(v0 + 16) + 24);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB5D30, v1, 0);
}

uint64_t sub_1D1AB5D30()
{
  sub_1D1AFCD30(*(v0 + 56));

  return MEMORY[0x1EEE6DFA0](sub_1D1AB5D9C, 0, 0);
}

uint64_t sub_1D1AB5D9C()
{
  sub_1D1AC3B08(*(v0 + 56), type metadata accessor for StateSnapshot);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AB5E24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  type metadata accessor for MatterStateSnapshot(0);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AB5EB4, 0, 0);
}

uint64_t sub_1D1AB5EB4()
{
  v1 = *(v0 + 64);
  *(v0 + 80) = *(*(*(v0 + 56) + 152) + qword_1EC6BE178);
  *(v0 + 16) = v1;
  *(v0 + 24) = 0;
  *(v0 + 40) = 0;
  *(v0 + 32) = 0;
  *(v0 + 48) = -1;

  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_1D1AB5FAC;
  v5 = *(v0 + 64);
  v4 = *(v0 + 72);

  return MatterSnapshotModerator.rebuildSnapshot(updateType:home:filter:)(v4, v0 + 16, v5, v0 + 40);
}

uint64_t sub_1D1AB5FAC()
{
  v1 = *v0;

  sub_1D1A283E8(*(v1 + 16), *(v1 + 24), *(v1 + 32));

  return MEMORY[0x1EEE6DFA0](sub_1D1AB60FC, 0, 0);
}

uint64_t sub_1D1AB60FC()
{
  *(v0 + 96) = *(*(v0 + 56) + 24);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB619C, v1, 0);
}

uint64_t sub_1D1AB619C()
{
  sub_1D1AFD7B4(*(v0 + 72));

  return MEMORY[0x1EEE6DFA0](sub_1D1AB6208, 0, 0);
}

uint64_t sub_1D1AB6208()
{
  sub_1D1AC3B08(*(v0 + 72), type metadata accessor for MatterStateSnapshot);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AB6288@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v10 = *(a1 + 16);
  *a7 = *a1;
  *(a7 + 16) = v10;
  updated = _s24SnapshotUpdateControllerC13UpdateRequestV17PrioritizedConfigVMa(0, a4, a5, a6);
  v12 = *(updated + 44);
  sub_1D1E66A7C();
  sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E6769C();
  sub_1D1E67D7C();
  v13 = sub_1D1E685AC();
  result = (*(*(v13 - 8) + 32))(a7 + v12, a2, v13);
  *(a7 + *(updated + 48)) = a3;
  return result;
}

uint64_t sub_1D1AB63B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  (*(*(a3 - 8) + 32))(a6, a1);
  v11 = *(_s24SnapshotUpdateControllerC13UpdateRequestVMa(0, a3, a4, a5) + 44);
  updated = _s24SnapshotUpdateControllerC13UpdateRequestV8ScheduleOMa(0, a3, a4, a5);
  v13 = *(*(updated - 8) + 32);

  return v13(a6 + v11, a2, updated);
}

void sub_1D1AB648C()
{
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v0 = sub_1D1E6709C();
  __swift_project_value_buffer(v0, qword_1EE07B5D8);
  oslog = sub_1D1E6707C();
  v1 = sub_1D1E6832C();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D16EC000, oslog, v1, "Task streamTask with BatchManager exited", v2, 2u);
    MEMORY[0x1D3893640](v2, -1, -1);
  }
}

uint64_t sub_1D1AB6574(uint64_t a1)
{
  v26 = a1;
  v2 = *v1;
  v3 = *(*v1 + 80);
  v5 = *(*v1 + 96);
  v23 = *(*v1 + 88);
  v4 = v23;
  updated = _s24SnapshotUpdateControllerC13UpdateRequestV8ScheduleOMa(0, v3, v23, v5);
  v7 = MEMORY[0x1EEE9AC00](updated - 8);
  v25 = v22 - v8;
  v9 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v22 - v10;
  v12 = _s24SnapshotUpdateControllerC13UpdateRequestVMa(0, v3, v4, v5);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v22 - v13;
  v24 = sub_1D1E67E9C();
  v15 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v17 = v22 - v16;
  v22[1] = *(v2 + 120);
  (*(v9 + 16))(v11, v26, v3);
  v18 = v23;
  v19 = _s24SnapshotUpdateControllerC13UpdateRequestV17PrioritizedConfigVMa(0, v3, v23, v5);
  v20 = v25;
  (*(*(v19 - 8) + 56))(v25, 1, 1, v19);
  sub_1D1AB63B0(v11, v20, v3, v18, v5, v14);
  sub_1D1E67EEC();
  sub_1D1E67ECC();
  return (*(v15 + 8))(v17, v24);
}

uint64_t sub_1D1AB6894(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  *(v6 + 113) = a5;
  *(v6 + 112) = a4;
  *(v6 + 40) = a3;
  *(v6 + 48) = v5;
  *(v6 + 24) = a1;
  *(v6 + 32) = a2;
  *(v6 + 56) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v6 + 64) = swift_task_alloc();
  *(v6 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AB6940, 0, 0);
}

uint64_t sub_1D1AB6940()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB69D4, v0, 0);
}

uint64_t sub_1D1AB69D4()
{
  *(v0 + 80) = *(*(v0 + 48) + *(**(v0 + 48) + 128));

  return MEMORY[0x1EEE6DFA0](sub_1D1AB6A5C, 0, 0);
}

uint64_t sub_1D1AB6A5C()
{
  v27 = v0;
  if (*(v0 + 80))
  {
    v1 = *(v0 + 113);
    v2 = *(v0 + 112);
    v3 = *(v0 + 40);
    v25 = *(v0 + 24);

    v4 = swift_allocObject();
    *(v0 + 88) = v4;
    swift_weakInit();
    v5 = swift_task_alloc();
    *(v0 + 96) = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v25;
    *(v5 + 40) = v3;
    *(v5 + 48) = v2;
    *(v5 + 49) = v1;
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A790, &qword_1D1E96BE8);
    *v6 = v0;
    v6[1] = sub_1D1AB6DDC;

    return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD00000000000003ELL, 0x80000001D1EC4570, sub_1D1AC3870, v5, v7);
  }

  else
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v8 = *(v0 + 72);
    v9 = *(v0 + 24);
    v10 = sub_1D1E6709C();
    __swift_project_value_buffer(v10, qword_1EC64A290);
    sub_1D1AC3B68(v9, v8, type metadata accessor for StateSnapshot.UpdateType);
    v11 = sub_1D1E6707C();
    v12 = sub_1D1E6834C();
    v13 = os_log_type_enabled(v11, v12);
    v14 = *(v0 + 72);
    if (v13)
    {
      v15 = *(v0 + 64);
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v26 = v17;
      *v16 = 136315138;
      sub_1D1AC3B68(v14, v15, type metadata accessor for StateSnapshot.UpdateType);
      v18 = sub_1D1E6789C();
      v20 = v19;
      sub_1D1AC3B08(v14, type metadata accessor for StateSnapshot.UpdateType);
      v21 = sub_1D1B1312C(v18, v20, &v26);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1D16EC000, v11, v12, "Attempted to performAndWait with update: %s, but the SnapshotUpdateController was not started.", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v17);
      MEMORY[0x1D3893640](v17, -1, -1);
      MEMORY[0x1D3893640](v16, -1, -1);
    }

    else
    {

      sub_1D1AC3B08(v14, type metadata accessor for StateSnapshot.UpdateType);
    }

    v22 = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);

    v23 = *(v0 + 8);

    return v23(v22);
  }
}

uint64_t sub_1D1AB6DDC()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1AB6F10, 0, 0);
}

uint64_t sub_1D1AB6F10()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1AB6F80(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6, char a7)
{
  *(v8 + 96) = a5;
  *(v8 + 104) = v7;
  *(v8 + 35) = a7;
  *(v8 + 34) = a6;
  *(v8 + 80) = a2;
  *(v8 + 88) = a4;
  *(v8 + 33) = a3;
  *(v8 + 72) = a1;
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D1AB6FBC, 0, 0);
}

uint64_t sub_1D1AB6FBC()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB7050, v0, 0);
}

uint64_t sub_1D1AB7050()
{
  *(v0 + 112) = *(*(v0 + 104) + *(**(v0 + 104) + 128));

  return MEMORY[0x1EEE6DFA0](sub_1D1AB70D8, 0, 0);
}

uint64_t sub_1D1AB70D8()
{
  v28 = v0;
  if (*(v0 + 112))
  {
    v1 = *(v0 + 96);
    v2 = *(v0 + 35);
    v3 = *(v0 + 34);
    v4 = *(v0 + 88);

    v5 = swift_allocObject();
    *(v0 + 120) = v5;
    swift_weakInit();
    v6 = swift_task_alloc();
    *(v0 + 128) = v6;
    *(v6 + 16) = v5;
    *(v6 + 24) = v0 + 16;
    *(v6 + 32) = v4;
    *(v6 + 40) = v1;
    *(v6 + 48) = v3;
    *(v6 + 49) = v2;
    v7 = swift_task_alloc();
    *(v0 + 136) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491C0, &qword_1D1E92B40);
    *v7 = v0;
    v7[1] = sub_1D1AB7404;

    return MEMORY[0x1EEE6DDE0](v0 + 64, 0, 0, 0xD00000000000003ELL, 0x80000001D1EC4570, sub_1D1AC37EC, v6, v8);
  }

  else
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v10 = *(v0 + 72);
    v9 = *(v0 + 80);
    v11 = *(v0 + 33);
    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EC64A290);
    sub_1D1A28388(v10, v9, v11);
    sub_1D1A28388(v10, v9, v11);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6834C();
    sub_1D1A283E8(v10, v9, v11);
    v15 = os_log_type_enabled(v13, v14);
    v16 = *(v0 + 33);
    v18 = *(v0 + 72);
    v17 = *(v0 + 80);
    if (v15)
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v27 = v20;
      *v19 = 136315138;
      *(v0 + 40) = v18;
      *(v0 + 48) = v17;
      *(v0 + 56) = v16;
      v21 = sub_1D1E6789C();
      v23 = sub_1D1B1312C(v21, v22, &v27);

      *(v19 + 4) = v23;
      _os_log_impl(&dword_1D16EC000, v13, v14, "Attempted to performAndWait with update: %s, but the SnapshotUpdateController was not started.", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v20);
      MEMORY[0x1D3893640](v20, -1, -1);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    else
    {
      sub_1D1A283E8(*(v0 + 72), *(v0 + 80), *(v0 + 33));
    }

    v24 = sub_1D18D72DC(MEMORY[0x1E69E7CC0]);
    v25 = *(v0 + 8);

    return v25(v24);
  }
}

uint64_t sub_1D1AB7404()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1AB7538, 0, 0);
}

uint64_t sub_1D1AB7550(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 128) = a3;
  *(v4 + 24) = a1;
  *(v4 + 32) = v3;
  v6 = *v3;
  *(v4 + 40) = *v3;
  v7 = *(v6 + 80);
  *(v4 + 48) = v7;
  *(v4 + 56) = *(v7 - 8);
  *(v4 + 64) = swift_task_alloc();
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = *a2;
  *(v4 + 129) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D1AB766C, 0, 0);
}

uint64_t sub_1D1AB766C()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB7700, v0, 0);
}

uint64_t sub_1D1AB7700()
{
  *(v0 + 96) = *(*(v0 + 32) + *(**(v0 + 32) + 128));

  return MEMORY[0x1EEE6DFA0](sub_1D1AB7788, 0, 0);
}

uint64_t sub_1D1AB7788()
{
  v42 = v0;
  if (*(v0 + 96))
  {
    v1 = *(v0 + 129);
    v3 = *(v0 + 80);
    v2 = *(v0 + 88);
    v5 = *(v0 + 40);
    v4 = *(v0 + 48);
    v6 = *(v0 + 128);
    v7 = *(v0 + 24);

    v8 = swift_allocObject();
    *(v0 + 104) = v8;
    swift_weakInit();
    v9 = swift_task_alloc();
    *(v0 + 112) = v9;
    *(v9 + 16) = v4;
    *(v9 + 24) = *(v5 + 88);
    *(v9 + 32) = *(v5 + 96);
    *(v9 + 40) = v8;
    *(v9 + 48) = v7;
    *(v9 + 56) = v3;
    *(v9 + 64) = v2;
    *(v9 + 72) = v1;
    *(v9 + 73) = v6;
    v10 = swift_task_alloc();
    *(v0 + 120) = v10;
    sub_1D1E66A7C();
    sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v11 = sub_1D1E6769C();
    *v10 = v0;
    v10[1] = sub_1D1AB7BE0;

    return MEMORY[0x1EEE6DDE0](v0 + 16, 0, 0, 0xD00000000000003ELL, 0x80000001D1EC4570, sub_1D1AC28E4, v9, v11);
  }

  else
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 72);
    v13 = *(v0 + 48);
    v14 = *(v0 + 56);
    v15 = *(v0 + 24);
    v16 = sub_1D1E6709C();
    __swift_project_value_buffer(v16, qword_1EC64A290);
    v17 = *(v14 + 16);
    v17(v12, v15, v13);
    v18 = sub_1D1E6707C();
    v19 = sub_1D1E6834C();
    v20 = os_log_type_enabled(v18, v19);
    v21 = *(v0 + 72);
    if (v20)
    {
      v22 = *(v0 + 56);
      v23 = *(v0 + 64);
      v24 = *(v0 + 48);
      v25 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v41 = v40;
      *v25 = 136315138;
      v17(v23, v21, v24);
      v26 = sub_1D1E6789C();
      v28 = v27;
      (*(v22 + 8))(v21, v24);
      v29 = sub_1D1B1312C(v26, v28, &v41);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_1D16EC000, v18, v19, "Attempted to performAndWait with update: %s, but the SnapshotUpdateController was not started.", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v40);
      MEMORY[0x1D3893640](v40, -1, -1);
      MEMORY[0x1D3893640](v25, -1, -1);
    }

    else
    {
      v30 = *(v0 + 48);
      v31 = *(v0 + 56);

      (*(v31 + 8))(v21, v30);
    }

    v32 = *(v0 + 40);
    v33 = sub_1D1E66A7C();
    v34 = *(v32 + 88);
    swift_getTupleTypeMetadata2();
    v35 = sub_1D1E67C7C();
    v36 = sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v37 = sub_1D1AC25F8(v35, v33, v34, v36);

    v38 = *(v0 + 8);

    return v38(v37);
  }
}

uint64_t sub_1D1AB7BE0()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1AC3C38, 0, 0);
}

uint64_t sub_1D1AB7D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  v40 = a7;
  v7 = a6;
  v41 = a4;
  v39 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v36 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v36 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A798, &qword_1D1E96BF0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v36 - v18;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v21 = *(v14 + 16);
    v22 = Strong + *(*Strong + 120);
    v37 = v13;
    v38 = v16;
    v21(v16, v22, v13);

    sub_1D1AC3B68(a3, v12, type metadata accessor for StateSnapshot.UpdateType);
    v23 = &v12[*(v10 + 44)];
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
    v25 = v7;
    v26 = *(v24 + 44);
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7A0, &qword_1D1E96BF8);
    v28 = *(v27 - 8);
    v36[1] = v12;
    v29 = v41;
    v30 = v28;
    (*(v28 + 16))(&v23[v26], v39, v27);
    (*(v30 + 56))(&v23[v26], 0, 1, v27);
    *v23 = v29;
    *(v23 + 1) = a5;
    v23[16] = v25;
    v23[*(v24 + 48)] = v40 & 1;
    (*(*(v24 - 8) + 56))(v23, 0, 1, v24);
    sub_1D1AC3828(v29, a5, v25);
    v31 = v37;
    v32 = v38;
    sub_1D1E67ECC();
    (*(v14 + 8))(v32, v31);
    v33 = 0;
  }

  else
  {
    v33 = 1;
  }

  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  (*(*(v34 - 8) + 56))(v19, v33, 1, v34);
  return sub_1D1741A30(v19, &qword_1EC64A798, &qword_1D1E96BF0);
}

uint64_t sub_1D1AB80C8(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5, uint64_t a6, uint64_t a7, unsigned int a8, unsigned __int8 a9)
{
  v50 = a8;
  v48 = a1;
  v49 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v41 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A780, &unk_1D1E96BB8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v51 = &v41 - v21;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v45 = a9;
    v23 = *(v17 + 16);
    v24 = Strong + *(*Strong + 120);
    v46 = v16;
    v47 = v19;
    v23(v19, v24, v16);

    v25 = &v15[*(v13 + 44)];
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
    v44 = a3;
    v27 = *(v26 + 44);
    v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A788, &qword_1D1E96BC8);
    v42 = a4;
    v43 = a5;
    v29 = v28;
    v30 = v49;
    v31 = v50;
    v32 = *(v28 - 8);
    (*(v32 + 16))(&v25[v27], v48, v28);
    (*(v32 + 56))(&v25[v27], 0, 1, v29);
    *v25 = v30;
    *(v25 + 1) = a7;
    v25[16] = v31;
    v25[*(v26 + 48)] = v45 & 1;
    (*(*(v26 - 8) + 56))(v25, 0, 1, v26);
    v33 = v44;
    v34 = v42;
    *v15 = v44;
    *(v15 + 1) = v34;
    LOBYTE(v26) = v43;
    v15[16] = v43;
    sub_1D1AC3828(v30, a7, v31);
    sub_1D1A28388(v33, v34, v26);
    v35 = v51;
    v36 = v46;
    v37 = v47;
    sub_1D1E67ECC();
    (*(v17 + 8))(v37, v36);
    v38 = 0;
  }

  else
  {
    v38 = 1;
    v35 = v51;
  }

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  (*(*(v39 - 8) + 56))(v35, v38, 1, v39);
  return sub_1D1741A30(v35, &qword_1EC64A780, &unk_1D1E96BB8);
}

uint64_t sub_1D1AB8498(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned int a6, int a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v53 = a7;
  v58 = a6;
  v57 = a5;
  v51 = a3;
  v52 = a1;
  sub_1D1E66A7C();
  sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E6769C();
  v48 = sub_1D1E67D7C();
  v12 = sub_1D1E685AC();
  MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v44 - v13;
  updated = _s24SnapshotUpdateControllerC13UpdateRequestV8ScheduleOMa(0, a8, a9, a10);
  v15 = MEMORY[0x1EEE9AC00](updated - 8);
  v50 = &v44 - v16;
  v17 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v44 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a9;
  v54 = a10;
  v20 = _s24SnapshotUpdateControllerC13UpdateRequestVMa(0, a8, a9, a10);
  MEMORY[0x1EEE9AC00](v20);
  v47 = &v44 - v21;
  v22 = sub_1D1E67EEC();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v44 - v24;
  v26 = sub_1D1E67E9C();
  v27 = sub_1D1E685AC();
  v55 = *(v27 - 8);
  v56 = v27;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v44 - v28;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v23 + 16))(v25, Strong + *(*Strong + 120), v22);

    v31 = *(v17 + 16);
    v45 = v26;
    v32 = v19;
    v31(v19, v51, a8);
    v51 = a4;
    v59[0] = a4;
    v59[1] = v57;
    v60 = v58;
    v33 = v48;
    v34 = *(v48 - 8);
    v35 = v46;
    (*(v34 + 16))(v46, v52, v48);
    (*(v34 + 56))(v35, 0, 1, v33);
    v36 = v50;
    v37 = v35;
    v38 = v49;
    v39 = v54;
    sub_1D1AB6288(v59, v37, v53 & 1, a8, v49, v54, v50);
    v40 = _s24SnapshotUpdateControllerC13UpdateRequestV17PrioritizedConfigVMa(0, a8, v38, v39);
    (*(*(v40 - 8) + 56))(v36, 0, 1, v40);
    v41 = v32;
    v26 = v45;
    sub_1D1AB63B0(v41, v36, a8, v38, v39, v47);
    sub_1D1AC3828(v51, v57, v58);
    sub_1D1E67ECC();
    (*(v23 + 8))(v25, v22);
    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  (*(*(v26 - 8) + 56))(v29, v42, 1, v26);
  return (*(v55 + 8))(v29, v56);
}

uint64_t sub_1D1AB8A50()
{
  v1 = *(v0 + 16);
  v2 = sub_1D1E66A7C();
  v3 = *(v1 + 88);
  swift_getTupleTypeMetadata2();
  v4 = sub_1D1E67C7C();
  v5 = sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v6 = sub_1D1AC25F8(v4, v2, v3, v5);

  v7 = *(v0 + 8);

  return v7(v6);
}

uint64_t **HomeState.Stream.SnapshotUpdateController.deinit()
{
  v1 = *v0;
  swift_weakDestroy();
  v2 = (*v0)[14];
  _s24SnapshotUpdateControllerC13UpdateRequestVMa(255, v1[10], v1[11], v1[12]);
  v3 = sub_1D1E67F2C();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = (*v0)[15];
  v5 = sub_1D1E67EEC();
  (*(*(v5 - 8) + 8))(v0 + v4, v5);

  return v0;
}

uint64_t sub_1D1AB8CB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_1EC6BE170);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A770, &unk_1D1E96B90);
  a1[3] = v4;
  a1[4] = sub_1D1AC3798(&qword_1EC64A778, &qword_1EC64A770, &unk_1D1E96B90);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);
  v7 = v3 + OBJC_IVAR____TtC13HomeDataModel17SnapshotModerator_snapshotsStream;

  return v6(boxed_opaque_existential_1, v7, v4);
}

uint64_t sub_1D1AB8D74(uint64_t *a1)
{
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated - 8);
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = *(a1 + 8);
  v21 = *a1;
  v22 = v15;
  v17 = type metadata accessor for StateSnapshot.UpdateType.Generic(0, *(v3 + 288), *(v3 + 296), v16);
  sub_1D1AB9004(v17, v14);
  sub_1D1AC3B68(v14, v7, type metadata accessor for StateSnapshot.UpdateType);
  v18 = *(v5 + 52);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v19 - 8) + 56))(&v7[v18], 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  sub_1D1E67ECC();
  (*(v9 + 8))(v11, v8);
  return sub_1D1AC3B08(v14, type metadata accessor for StateSnapshot.UpdateType);
}

uint64_t sub_1D1AB9004@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(v2 + 8))
  {
    MEMORY[0x1EEE9AC00](a1);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    sub_1D1E67D1C();
    sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
    swift_getWitnessTable();
    *a2 = sub_1D1E67A4C();
    type metadata accessor for StateSnapshot.UpdateType(0);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      swift_unknownObjectRetain();
    }

    *a2 = v5;
    type metadata accessor for StateSnapshot.UpdateType(0);

    return swift_storeEnumTagMultiPayload();
  }
}

uint64_t sub_1D1AB91EC(uint64_t *a1, uint64_t a2)
{
  v4 = v2;
  *(v3 + 32) = v4;
  *(v3 + 40) = *v4;
  type metadata accessor for StateSnapshot.UpdateType(0);
  v7 = swift_task_alloc();
  v8 = *a1;
  *(v3 + 48) = v7;
  *(v3 + 56) = v8;
  *(v3 + 25) = *(a1 + 8);
  *(v3 + 64) = *a2;
  *(v3 + 26) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D1AB92C8, 0, 0);
}

uint64_t sub_1D1AB92C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 25);
  v6 = *(v4 + 48);
  v7 = *(v4 + 40);
  *(v4 + 16) = *(v4 + 56);
  *(v4 + 24) = v5;
  updated = type metadata accessor for StateSnapshot.UpdateType.Generic(0, *(v7 + 288), *(v7 + 296), a4);
  sub_1D1AB9004(updated, v6);
  v9 = swift_task_alloc();
  *(v4 + 80) = v9;
  *v9 = v4;
  v9[1] = sub_1D1AB93B0;
  v10 = *(v4 + 64);
  v11 = *(v4 + 72);
  v12 = *(v4 + 48);
  v13 = *(v4 + 26);

  return sub_1D1AB6894(v12, v10, v11, v13, 0);
}

uint64_t sub_1D1AB93B0(uint64_t a1)
{
  v3 = *(*v1 + 48);
  v6 = *v1;

  sub_1D1AC3B08(v3, type metadata accessor for StateSnapshot.UpdateType);

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1D1AB94E4(uint64_t a1, uint64_t *a2)
{
  v3[14] = a1;
  v3[15] = v2;
  v3[16] = *(type metadata accessor for StateSnapshot(0) - 8);
  v3[17] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BD0, &qword_1D1E96B30);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A748, &qword_1D1E96B38);
  v3[24] = swift_task_alloc();
  v3[25] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  v3[28] = v6;
  v3[29] = *(v6 - 8);
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = swift_task_alloc();
  v3[33] = *(type metadata accessor for StateSnapshot.UpdateType(0) - 8);
  v7 = swift_task_alloc();
  v8 = *a2;
  v3[34] = v7;
  v3[35] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB9788, 0, 0);
}

uint64_t sub_1D1AB9788()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;
  *(v0 + 288) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB9820, v1, 0);
}

uint64_t sub_1D1AB9820()
{
  *(v0 + 296) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1AB9890, 0, 0);
}

uint64_t sub_1D1AB9890()
{
  if (v0[37])
  {
    v1 = v0[36];

    return MEMORY[0x1EEE6DFA0](sub_1D1AB99F8, v1, 0);
  }

  else
  {
    v4 = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);

    v2 = v0[1];

    return v2(v4);
  }
}

uint64_t sub_1D1AB99F8()
{
  v1 = *(v0 + 296);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 304) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1AB9A80, 0, 0);
}

uint64_t sub_1D1AB9A80()
{
  v1 = *(v0 + 304);

  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = [*(v0 + 304) homes];
    *(v0 + 312) = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v4 = sub_1D1E67C1C();

    v5 = sub_1D1ABB498(v2, v4);
    *(v0 + 320) = v5;

    v7 = v5[2];
    *(v0 + 328) = v7;
    if (!v7)
    {

      *(v0 + 456) = MEMORY[0x1E69E7CC8];
      v43 = *(v0 + 288);
      v44 = sub_1D1ABB194;
LABEL_41:

      return MEMORY[0x1EEE6DFA0](v44, v43, 0);
    }

    v8 = *(v0 + 264);
    *(v0 + 336) = qword_1EC6BE170;
    v9 = *(v8 + 80);
    v10 = MEMORY[0x1E69E7CC8];
    *(v0 + 472) = v9;
    *(v0 + 352) = 0;
    *(v0 + 360) = v10;
    *(v0 + 344) = v10;
    v11 = *(v0 + 320);
    if (*(v11 + 16))
    {
      v12 = *(v0 + 304);
      sub_1D1AC3B68(v11 + ((v9 + 32) & ~v9), *(v0 + 272), type metadata accessor for StateSnapshot.UpdateType);
      v13 = [v12 homes];
      v14 = sub_1D1E67C1C();

      v6 = v14;
      if (!(v14 >> 62))
      {
        v15 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
LABEL_6:
          v16 = 0;
          v53 = v6 & 0xFFFFFFFFFFFFFF8;
          v54 = v6 & 0xC000000000000001;
          v17 = MEMORY[0x1E69E7CC8];
          v51 = v15;
          v52 = v6;
          while (1)
          {
            if (v54)
            {
              v6 = MEMORY[0x1D3891EF0](v16, v6);
            }

            else
            {
              if (v16 >= *(v53 + 16))
              {
                goto LABEL_31;
              }

              v6 = *(v6 + 8 * v16 + 32);
            }

            v20 = v6;
            v21 = v16 + 1;
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_31:
              __break(1u);
LABEL_32:
              __break(1u);
LABEL_33:
              __break(1u);
              goto LABEL_34;
            }

            v22 = [v6 uniqueIdentifier];
            sub_1D1E66A5C();

            v23 = v20;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v0 + 88) = v17;
            v6 = sub_1D1742188();
            v26 = v17[2];
            v27 = (v25 & 1) == 0;
            v28 = __OFADD__(v26, v27);
            v29 = v26 + v27;
            if (v28)
            {
              goto LABEL_32;
            }

            v30 = v25;
            if (v17[3] >= v29)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v40 = v6;
                sub_1D173A870();
                v6 = v40;
              }
            }

            else
            {
              sub_1D172B420(v29, isUniquelyReferenced_nonNull_native);
              v6 = sub_1D1742188();
              if ((v30 & 1) != (v31 & 1))
              {

                return sub_1D1E690FC();
              }
            }

            v17 = *(v0 + 88);
            v32 = *(v0 + 256);
            v34 = *(v0 + 224);
            v33 = *(v0 + 232);
            if (v30)
            {
              v18 = v17[7];
              v19 = *(v18 + 8 * v6);
              *(v18 + 8 * v6) = v23;

              (*(v33 + 8))(v32, v34);
            }

            else
            {
              v17[(v6 >> 6) + 8] |= 1 << v6;
              v36 = *(v33 + 16);
              v35 = v33 + 16;
              v37 = v6;
              v36(v17[6] + *(v35 + 56) * v6, v32, v34);
              *(v17[7] + 8 * v37) = v23;

              v6 = (*(v35 - 8))(v32, v34);
              v38 = v17[2];
              v28 = __OFADD__(v38, 1);
              v39 = v38 + 1;
              if (v28)
              {
                goto LABEL_33;
              }

              v17[2] = v39;
            }

            ++v16;
            v6 = v52;
            if (v21 == v51)
            {
              goto LABEL_37;
            }
          }
        }

        goto LABEL_36;
      }
    }

    else
    {
LABEL_34:
      __break(1u);
    }

    v45 = v6;
    v15 = sub_1D1E6873C();
    v6 = v45;
    if (v15)
    {
      goto LABEL_6;
    }

LABEL_36:
    v17 = MEMORY[0x1E69E7CC8];
LABEL_37:

    v46 = StateSnapshot.UpdateType.relevantHome(in:)(v17);

    if (v46)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1D1E73FA0;
      *(v47 + 32) = v46;
    }

    else
    {
      v48 = [*(v0 + 304) homes];
      v47 = sub_1D1E67C1C();

      v46 = 0;
    }

    *(v0 + 368) = v46;
    *(v0 + 376) = v47;
    v49 = *(v0 + 288);
    v50 = v46;
    v44 = sub_1D1ABA02C;
    v43 = v49;
    goto LABEL_41;
  }

  v55 = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);

  v41 = *(v0 + 8);

  return v41(v55);
}

uint64_t sub_1D1ABA02C()
{
  *(v0 + 384) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1ABA09C, 0, 0);
}

uint64_t sub_1D1ABA09C()
{
  v1 = v0[48];
  if (v1)
  {
    v2 = v0[36];
    v4 = v0[26];
    v3 = v0[27];
    v5 = *(v1 + 24);

    v6 = sub_1D1E67E7C();
    (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = 4;
    sub_1D1741C08(v3, v4, &unk_1EC6442C0, &qword_1D1E741A0);
    v8 = sub_1D1AC359C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
    v9 = swift_allocObject();
    v9[2] = v2;
    v9[3] = v8;
    v9[4] = sub_1D1A82E34;
    v9[5] = v7;

    sub_1D17C6EF0(0, 0, v4, &unk_1D1E96480, v9);

    sub_1D1741A30(v3, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v10 = v0[35];
  v0[49] = *(v0[15] + v0[42]);
  if (v10)
  {
  }

  v11 = swift_task_alloc();
  v0[50] = v11;
  *v11 = v0;
  v11[1] = sub_1D1ABA2DC;

  return sub_1D1E5C7D0();
}

uint64_t sub_1D1ABA2DC(uint64_t a1)
{
  v2 = *(*v1 + 392);
  *(*v1 + 408) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1ABA3F4, v2, 0);
}

uint64_t sub_1D1ABA3F4()
{
  v1 = v0[51];
  if (v1)
  {

    v0[56] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1D1ABA7F8, 0, 0);
  }

  else
  {
    v2 = v0[49];
    v3 = v0[47];
    v4 = v0[38];
    v6 = v0[34];
    v5 = v0[35];
    swift_beginAccess();
    v7 = *(v2 + 112);
    v0[52] = v7;
    swift_beginAccess();
    v8 = *(v2 + 120);
    v0[53] = v8;

    v9 = sub_1D1AC359C(&qword_1EC64A750, type metadata accessor for SnapshotModerator, &protocol conformance descriptor for SnapshotModerator);
    v10 = swift_task_alloc();
    v0[54] = v10;
    v10[2] = v3;
    v10[3] = v2;
    v10[4] = v4;
    v10[5] = v6;
    v10[6] = v5;
    v10[7] = v7;
    v10[8] = v8;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643158, &unk_1D1E715B0);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A758, &unk_1D1E96B50);
    v13 = swift_task_alloc();
    v0[55] = v13;
    *v13 = v0;
    v13[1] = sub_1D1ABA628;

    return MEMORY[0x1EEE6DBF8](v0 + 12, v11, v12, v2, v9, &unk_1D1E96B40, v10, v11);
  }
}

uint64_t sub_1D1ABA628()
{
  v1 = *(*v0 + 392);

  return MEMORY[0x1EEE6DFA0](sub_1D1ABA7D4, v1, 0);
}

uint64_t sub_1D1ABA7F8(unint64_t a1)
{
  v2 = 0;
  v3 = *(v1 + 448);
  v4 = *(v3 + 64);
  v98 = v3 + 64;
  v99 = v3;
  v5 = -1;
  v6 = -1 << *(v99 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v4;
  v8 = (63 - v6) >> 6;
  v9 = *(v1 + 360);
  v10 = *(v1 + 344);
  for (i = v8; ; v8 = i)
  {
    v109 = v10;
    v103 = v9;
    if (!v7)
    {
      if (v8 <= v2 + 1)
      {
        v12 = v2 + 1;
      }

      else
      {
        v12 = v8;
      }

      v13 = v12 - 1;
      while (1)
      {
        v11 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          break;
        }

        if (v11 >= v8)
        {
          v52 = *(v1 + 192);
          v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC0, &qword_1D1E7BDF0);
          (*(*(v53 - 8) + 56))(v52, 1, 1, v53);
          v7 = 0;
          goto LABEL_16;
        }

        v7 = *(v98 + 8 * v11);
        ++v2;
        if (v7)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:
      __break(1u);
      while (1)
      {
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
        v92 = a1;
        v66 = sub_1D1E6873C();
        a1 = v92;
        if (!v66)
        {
          goto LABEL_61;
        }

LABEL_32:
        v67 = 0;
        v108 = a1 & 0xFFFFFFFFFFFFFF8;
        v111 = a1 & 0xC000000000000001;
        v68 = MEMORY[0x1E69E7CC8];
        v102 = v66;
        v105 = a1;
        while (1)
        {
          if (v111)
          {
            a1 = MEMORY[0x1D3891EF0](v67, a1);
          }

          else
          {
            if (v67 >= *(v108 + 16))
            {
              goto LABEL_56;
            }

            a1 = *(a1 + 8 * v67 + 32);
          }

          v71 = a1;
          v72 = v67 + 1;
          if (__OFADD__(v67, 1))
          {
            break;
          }

          v73 = [a1 uniqueIdentifier];
          sub_1D1E66A5C();

          v74 = v71;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *(v1 + 88) = v68;
          a1 = sub_1D1742188();
          v77 = v68[2];
          v78 = (v76 & 1) == 0;
          v39 = __OFADD__(v77, v78);
          v79 = v77 + v78;
          if (v39)
          {
            goto LABEL_57;
          }

          v80 = v76;
          if (v68[3] >= v79)
          {
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v90 = a1;
              sub_1D173A870();
              a1 = v90;
            }
          }

          else
          {
            sub_1D172B420(v79, isUniquelyReferenced_nonNull_native);
            a1 = sub_1D1742188();
            if ((v80 & 1) != (v81 & 1))
            {
              goto LABEL_49;
            }
          }

          v68 = *(v1 + 88);
          v82 = *(v1 + 256);
          v84 = *(v1 + 224);
          v83 = *(v1 + 232);
          if (v80)
          {
            v69 = v68[7];
            v70 = *(v69 + 8 * a1);
            *(v69 + 8 * a1) = v74;

            (*(v83 + 8))(v82, v84);
          }

          else
          {
            v68[(a1 >> 6) + 8] |= 1 << a1;
            v86 = *(v83 + 16);
            v85 = v83 + 16;
            v87 = a1;
            v86(v68[6] + *(v85 + 56) * a1, v82, v84);
            *(v68[7] + 8 * v87) = v74;

            a1 = (*(v85 - 8))(v82, v84);
            v88 = v68[2];
            v39 = __OFADD__(v88, 1);
            v89 = v88 + 1;
            if (v39)
            {
              goto LABEL_58;
            }

            v68[2] = v89;
          }

          ++v67;
          a1 = v105;
          if (v72 == v102)
          {
            goto LABEL_62;
          }
        }
      }
    }

    v11 = v2;
LABEL_15:
    v106 = *(v1 + 248);
    v15 = *(v1 + 224);
    v14 = *(v1 + 232);
    v16 = *(v1 + 184);
    v17 = *(v1 + 192);
    v18 = *(v1 + 152);
    v19 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v20 = v19 | (v11 << 6);
    (*(v14 + 16))();
    sub_1D1741C08(*(v99 + 56) + *(v18 + 72) * v20, v16, &qword_1EC645BD0, &qword_1D1E96B30);
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC0, &qword_1D1E7BDF0);
    v22 = *(v21 + 48);
    (*(v14 + 32))(v17, v106, v15);
    sub_1D1741A90(v16, v17 + v22, &qword_1EC645BD0, &qword_1D1E96B30);
    (*(*(v21 - 8) + 56))(v17, 0, 1, v21);
    v13 = v11;
LABEL_16:
    v23 = *(v1 + 200);
    sub_1D1741A90(*(v1 + 192), v23, &qword_1EC64A748, &qword_1D1E96B38);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC0, &qword_1D1E7BDF0);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
    {
      break;
    }

    v25 = *(v1 + 232);
    v26 = *(v1 + 240);
    v101 = v13;
    v104 = *(v1 + 224);
    v27 = *(v1 + 200);
    v28 = *(v1 + 168);
    v29 = *(v1 + 176);
    v30 = *(v1 + 160);
    v31 = v112[18];
    v107 = v112[17];
    v32 = v27 + *(v24 + 48);
    v33 = *(v32 + *(v31 + 48));
    sub_1D1AC3BD0(v32, v28, type metadata accessor for StateSnapshot);
    v34 = *(v31 + 48);
    sub_1D1AC3BD0(v28, v29, type metadata accessor for StateSnapshot);
    *(v29 + v34) = v33;
    v1 = v112;
    (*(v25 + 32))(v26, v27, v104);
    sub_1D1741C08(v29, v30, &qword_1EC645BD0, &qword_1D1E96B30);
    sub_1D1AC3BD0(v30, v107, type metadata accessor for StateSnapshot);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v112[13] = v109;
    a1 = sub_1D1742188();
    v37 = v109[2];
    v38 = (v36 & 1) == 0;
    v39 = __OFADD__(v37, v38);
    v40 = v37 + v38;
    if (v39)
    {
      goto LABEL_53;
    }

    v41 = v36;
    if (v109[3] >= v40)
    {
      if ((v35 & 1) == 0)
      {
        v54 = a1;
        sub_1D17375D4();
        a1 = v54;
      }
    }

    else
    {
      sub_1D1725B48(v40, v35);
      a1 = sub_1D1742188();
      if ((v41 & 1) != (v42 & 1))
      {
LABEL_49:

        return sub_1D1E690FC();
      }
    }

    v10 = v112[13];
    v43 = v112[29];
    v44 = v112[30];
    v45 = v112[28];
    v110 = v112[22];
    v47 = v112[16];
    v46 = v112[17];
    if (v41)
    {
      sub_1D1AC36D4(v112[17], v10[7] + *(v47 + 72) * a1, type metadata accessor for StateSnapshot);
      (*(v43 + 8))(v44, v45);
      a1 = sub_1D1741A30(v110, &qword_1EC645BD0, &qword_1D1E96B30);
      v2 = v101;
      v9 = v10;
    }

    else
    {
      v10[(a1 >> 6) + 8] |= 1 << a1;
      v49 = *(v43 + 16);
      v48 = v43 + 16;
      v1 = a1;
      v49(v10[6] + *(v48 + 56) * a1, v44, v45);
      sub_1D1AC3BD0(v46, v10[7] + *(v47 + 72) * v1, type metadata accessor for StateSnapshot);
      (*(v48 - 8))(v44, v45);
      a1 = sub_1D1741A30(v110, &qword_1EC645BD0, &qword_1D1E96B30);
      v50 = v10[2];
      v39 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v39)
      {
        goto LABEL_54;
      }

      v10[2] = v51;
      v2 = v101;
      v9 = v10;
      v1 = v112;
    }
  }

  v55 = *(v1 + 368);
  v56 = *(v1 + 352);
  v57 = *(v1 + 328);
  v58 = *(v1 + 272);

  a1 = sub_1D1AC3B08(v58, type metadata accessor for StateSnapshot.UpdateType);
  if (v56 + 1 == v57)
  {

    *(v1 + 456) = v103;
    v59 = *(v1 + 288);
    v60 = sub_1D1ABB194;
    goto LABEL_66;
  }

  v61 = *(v1 + 352) + 1;
  *(v1 + 352) = v61;
  *(v1 + 360) = v103;
  *(v1 + 344) = v109;
  v62 = *(v1 + 320);
  if (v61 >= *(v62 + 16))
  {
    goto LABEL_59;
  }

  v63 = *(v1 + 304);
  sub_1D1AC3B68(v62 + ((*(v1 + 472) + 32) & ~*(v1 + 472)) + *(*(v1 + 264) + 72) * v61, *(v1 + 272), type metadata accessor for StateSnapshot.UpdateType);
  v64 = [v63 homes];
  v65 = sub_1D1E67C1C();

  a1 = v65;
  if (v65 >> 62)
  {
    goto LABEL_60;
  }

  v66 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v66)
  {
    goto LABEL_32;
  }

LABEL_61:
  v68 = MEMORY[0x1E69E7CC8];
LABEL_62:

  v93 = StateSnapshot.UpdateType.relevantHome(in:)(v68);

  if (v93)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    v94 = swift_allocObject();
    *(v94 + 16) = xmmword_1D1E73FA0;
    *(v94 + 32) = v93;
  }

  else
  {
    v95 = [*(v1 + 304) homes];
    v94 = sub_1D1E67C1C();

    v93 = 0;
  }

  *(v1 + 368) = v93;
  *(v1 + 376) = v94;
  v96 = *(v1 + 288);
  v97 = v93;
  v60 = sub_1D1ABA02C;
  v59 = v96;
LABEL_66:

  return MEMORY[0x1EEE6DFA0](v60, v59, 0);
}

uint64_t sub_1D1ABB194()
{
  *(v0 + 464) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1ABB204, 0, 0);
}

uint64_t sub_1D1ABB204()
{
  v1 = v0[58];
  v2 = v0[38];
  if (v1)
  {
    v3 = v0[36];
    v5 = v0[26];
    v4 = v0[27];
    v6 = *(v1 + 24);

    v7 = sub_1D1E67E7C();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = 5;
    sub_1D1741C08(v4, v5, &unk_1EC6442C0, &qword_1D1E741A0);
    v9 = sub_1D1AC359C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
    v10 = swift_allocObject();
    v10[2] = v3;
    v10[3] = v9;
    v10[4] = sub_1D1A83158;
    v10[5] = v8;

    sub_1D17C6EF0(0, 0, v5, &unk_1D1E96B60, v10);

    sub_1D1741A30(v4, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
  }

  v13 = v0[57];

  v11 = v0[1];

  return v11(v13);
}

void *sub_1D1ABB498(unint64_t a1, unint64_t a2)
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v4 = *(updated - 8);
  v5 = MEMORY[0x1EEE9AC00](updated);
  v69 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v60 = (&v58 - v8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v63 = &v58 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v58 - v11;
  v67 = sub_1D1E66A7C();
  v62 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v71 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62)
  {
    goto LABEL_50;
  }

  v13 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v58 = v4;
  v59 = a1;
  v14 = MEMORY[0x1E69E7CC8];
  if (v13)
  {
    v15 = 0;
    v65 = a2 & 0xFFFFFFFFFFFFFF8;
    v66 = a2 & 0xC000000000000001;
    v61 = v62 + 16;
    v64 = (v62 + 8);
    do
    {
      if (v66)
      {
        v17 = MEMORY[0x1D3891EF0](v15, a2);
      }

      else
      {
        if (v15 >= *(v65 + 16))
        {
          goto LABEL_47;
        }

        v17 = *(a2 + 8 * v15 + 32);
      }

      a1 = v17;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
LABEL_47:
        __break(1u);
LABEL_48:
        __break(1u);
LABEL_49:
        __break(1u);
LABEL_50:
        v13 = sub_1D1E6873C();
        goto LABEL_3;
      }

      v19 = [v17 uniqueIdentifier];
      sub_1D1E66A5C();

      v20 = a1;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v77[0] = v14;
      v4 = v14;
      a1 = sub_1D1742188();
      v23 = v14[2];
      v24 = (v22 & 1) == 0;
      v25 = v23 + v24;
      if (__OFADD__(v23, v24))
      {
        goto LABEL_48;
      }

      v26 = v22;
      if (v14[3] >= v25)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v14 = v77[0];
          if (v22)
          {
            goto LABEL_5;
          }
        }

        else
        {
          sub_1D173A870();
          v14 = v77[0];
          if (v26)
          {
            goto LABEL_5;
          }
        }
      }

      else
      {
        sub_1D172B420(v25, isUniquelyReferenced_nonNull_native);
        v27 = sub_1D1742188();
        if ((v26 & 1) != (v28 & 1))
        {
          result = sub_1D1E690FC();
          __break(1u);
          return result;
        }

        a1 = v27;
        v14 = v77[0];
        if (v26)
        {
LABEL_5:
          v16 = v14[7];
          v4 = *(v16 + 8 * a1);
          *(v16 + 8 * a1) = v20;

          (*v64)(v71, v67);
          goto LABEL_6;
        }
      }

      v14[(a1 >> 6) + 8] |= 1 << a1;
      v29 = v62;
      v30 = v71;
      v4 = v67;
      (*(v62 + 16))(v14[6] + *(v62 + 72) * a1, v71, v67);
      *(v14[7] + 8 * a1) = v20;

      (*(v29 + 8))(v30, v4);
      v31 = v14[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        goto LABEL_49;
      }

      v14[2] = v33;
LABEL_6:
      ++v15;
    }

    while (v18 != v13);
  }

  v77[0] = MEMORY[0x1E69E7CD0];
  v34 = MEMORY[0x1E69E7CC8];
  v76 = MEMORY[0x1E69E7CC8];
  v75 = sub_1D18D995C(MEMORY[0x1E69E7CC0]);
  v35 = v59;
  v36 = *(v59 + 16);
  if (v36)
  {
    v37 = v58;
    v38 = v59 + ((*(v58 + 80) + 32) & ~*(v58 + 80));
    v39 = v58[9];
    v40 = *(v59 + 16);
    v41 = v63;
    do
    {
      sub_1D1ABE9A8(v38, &v76, v77, v14, &v75);
      v38 += v39;
      --v40;
    }

    while (v40);
    v34 = v76;
  }

  else
  {
    v41 = v63;
    v37 = v58;
  }

  v71 = v34;
  sub_1D1B32324(v34);
  v66 = 0;
  v67 = sub_1D1785BE4();
  v74[0] = 0;
  if (v36)
  {
    v42 = 0;
    v43 = (*(v37 + 80) + 32) & ~*(v37 + 80);
    v44 = v35 + v43;
    v45 = v37[9];
    v46 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v47 = v70;
      sub_1D1AC3B68(v44, v70, type metadata accessor for StateSnapshot.UpdateType);
      sub_1D1AC3B68(v47, v41, type metadata accessor for StateSnapshot.UpdateType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload != 13)
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_36;
        }

        v49 = v60;
        sub_1D1AC3B68(v41, v60, type metadata accessor for StateSnapshot.UpdateType);
        if (*v49)
        {
          break;
        }
      }

      sub_1D1AC3B08(v41, type metadata accessor for StateSnapshot.UpdateType);
      if ((v42 & 1) == 0)
      {
        v42 = 1;
        v74[0] = 1;
        goto LABEL_39;
      }

      sub_1D1AC3B08(v70, type metadata accessor for StateSnapshot.UpdateType);
      v42 = 1;
LABEL_31:
      v44 += v45;
      if (!--v36)
      {
        goto LABEL_45;
      }
    }

LABEL_36:
    sub_1D1AC3B08(v41, type metadata accessor for StateSnapshot.UpdateType);
LABEL_39:
    sub_1D1AC3BD0(v70, v69, type metadata accessor for StateSnapshot.UpdateType);
    v50 = swift_isUniquelyReferenced_nonNull_native();
    v73 = v46;
    if ((v50 & 1) == 0)
    {
      sub_1D178D7B4(0, *(v46 + 16) + 1, 1);
      v46 = v73;
    }

    v52 = *(v46 + 16);
    v51 = *(v46 + 24);
    if (v52 >= v51 >> 1)
    {
      sub_1D178D7B4((v51 > 1), v52 + 1, 1);
      v46 = v73;
    }

    *(v46 + 16) = v52 + 1;
    sub_1D1AC3BD0(v69, v46 + v43 + v52 * v45, type metadata accessor for StateSnapshot.UpdateType);
    v41 = v63;
    goto LABEL_31;
  }

  v46 = MEMORY[0x1E69E7CC0];
LABEL_45:
  v53 = MEMORY[0x1E69E7CD0];
  v73 = MEMORY[0x1E69E7CD0];
  v54 = v67;

  v55 = sub_1D1AC0FEC(v46, v77, v54, v14, &v73, &v75);

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();
  v72 = v53;
  v56 = sub_1D1B2D7C8(v55, v74, &v72);

  return v56;
}

uint64_t sub_1D1ABBBC8(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1ABBBE8, 0, 0);
}

uint64_t sub_1D1ABBBE8()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;
  *(v0 + 32) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ABBC80, v1, 0);
}

uint64_t sub_1D1ABBC80()
{
  *(v0 + 40) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1ABBCF0, 0, 0);
}

uint64_t sub_1D1ABBCF0()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[4];
    v0[6] = *(v1 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1D1ABBDA0, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D1ABBDA0()
{
  sub_1D1AFCD30(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HomeState.Stream.StateSnapshotUpdateController.deinit()
{
  swift_weakDestroy();
  v1 = *(*v0 + 112);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C50, &qword_1D1E96058);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 120);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_1D1ABBF54(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

uint64_t sub_1D1ABBFB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + qword_1EC6BE178);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491A0, &unk_1D1E92AF0);
  a1[3] = v4;
  a1[4] = sub_1D1AC3798(&qword_1EC6491C8, &qword_1EC6491A0, &unk_1D1E92AF0);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
  v6 = *(*(v4 - 8) + 16);
  v7 = v3 + OBJC_IVAR____TtC13HomeDataModel23MatterSnapshotModerator_snapshotsStream;

  return v6(boxed_opaque_existential_1, v7, v4);
}

uint64_t sub_1D1ABC074(uint64_t a1, uint64_t a2)
{
  *(v3 + 112) = a1;
  *(v3 + 120) = v2;
  *(v3 + 128) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  *(v3 + 136) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  *(v3 + 144) = v5;
  *(v3 + 152) = *(v5 - 8);
  *(v3 + 160) = swift_task_alloc();
  *(v3 + 168) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v3 + 176) = swift_task_alloc();
  v6 = type metadata accessor for StaticMatterDevice(0);
  *(v3 + 184) = v6;
  *(v3 + 192) = *(v6 - 8);
  *(v3 + 200) = swift_task_alloc();
  *(v3 + 208) = swift_task_alloc();
  *(v3 + 216) = swift_task_alloc();
  v7 = type metadata accessor for MatterStateSnapshot(0);
  *(v3 + 224) = v7;
  *(v3 + 232) = *(v7 - 8);
  *(v3 + 240) = swift_task_alloc();
  v8 = sub_1D1E66A7C();
  *(v3 + 248) = v8;
  *(v3 + 256) = *(v8 - 8);
  *(v3 + 264) = swift_task_alloc();
  *(v3 + 272) = swift_task_alloc();
  *(v3 + 280) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645410, &unk_1D1E799A0);
  *(v3 + 288) = swift_task_alloc();
  *(v3 + 296) = swift_task_alloc();
  *(v3 + 304) = *a2;
  *(v3 + 57) = *(a2 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1D1ABC348, 0, 0);
}

uint64_t sub_1D1ABC348()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;
  *(v0 + 320) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ABC3E0, v1, 0);
}

uint64_t sub_1D1ABC3E0()
{
  *(v0 + 328) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1ABC450, 0, 0);
}

uint64_t sub_1D1ABC450()
{
  if (v0[41])
  {
    v1 = v0[40];

    return MEMORY[0x1EEE6DFA0](sub_1D1ABC5B0, v1, 0);
  }

  else
  {
    v4 = sub_1D18D72DC(MEMORY[0x1E69E7CC0]);

    v2 = v0[1];

    return v2(v4);
  }
}

uint64_t sub_1D1ABC5B0()
{
  v1 = *(v0 + 328);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 336) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1ABC638, 0, 0);
}

uint64_t sub_1D1ABC638()
{
  v1 = *(v0 + 336);

  if (v1)
  {
    v2 = *(v0 + 112);
    v3 = [*(v0 + 336) homes];
    *(v0 + 344) = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v4 = sub_1D1E67C1C();

    v5 = sub_1D18F9E6C(v4);

    updated = _s13HomeDataModel19MatterStateSnapshotV10UpdateTypeO6unique7updates2inSayAEGAI_SayAA0A8Protocol_pGtFZ_0(v2, v5);
    *(v0 + 352) = updated;

    v8 = *(updated + 16);
    *(v0 + 360) = v8;
    if (v8)
    {
      v9 = *(v0 + 304);
      v10 = *(*(v0 + 120) + qword_1EC6BE178);
      *(v0 + 384) = MEMORY[0x1E69E7CC8];
      *(v0 + 392) = 0;
      *(v0 + 368) = v10;
      *(v0 + 376) = 0;
      v11 = *(v0 + 352);
      if (*(v11 + 16))
      {
        v12 = *(v0 + 336);
        v13 = *(v11 + 32);
        *(v0 + 400) = v13;
        v14 = *(v11 + 40);
        *(v0 + 408) = v14;
        v15 = *(v11 + 48);
        *(v0 + 58) = v15;
        *(v0 + 40) = v13;
        *(v0 + 48) = v14;
        *(v0 + 56) = v15;
        sub_1D1A28388(v13, v14, v15);
        v16 = [v12 homes];
        v17 = sub_1D1E67C1C();

        v18 = sub_1D1A2A7C8(v17);
        *(v0 + 416) = v18;

        *(v0 + 64) = v13;
        *(v0 + 72) = v14;
        *(v0 + 80) = v15;
        if (v9)
        {
          sub_1D186145C(*(v0 + 312), *(v0 + 57));
          v19 = *(v0 + 57);
          v20 = *(v0 + 312);
        }

        else
        {
          v20 = 0;
          v19 = -1;
        }

        *(v0 + 88) = v20;
        *(v0 + 96) = v19;
        v23 = swift_task_alloc();
        *(v0 + 424) = v23;
        *v23 = v0;
        v23[1] = sub_1D1ABC970;

        return MatterSnapshotModerator.rebuildSnapshotConcurrently(updateType:homes:filter:)(v0 + 64, v18, v0 + 88);
      }

      else
      {
        __break(1u);
      }

      return result;
    }

    v21 = *(v0 + 336);

    v24 = MEMORY[0x1E69E7CC8];
  }

  else
  {
    v24 = sub_1D18D72DC(MEMORY[0x1E69E7CC0]);
  }

  v22 = *(v0 + 8);

  return v22(v24);
}

uint64_t sub_1D1ABC970(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  *(v3 + 432) = a1;

  sub_1D1861470(*(v2 + 88), *(v3 + 96));

  return MEMORY[0x1EEE6DFA0](sub_1D1ABCAB8, 0, 0);
}

uint64_t sub_1D1ABCAB8()
{
  v127 = v0;
  v1 = *(v0 + 432);
  v3 = *(v0 + 376);
  v2 = *(v0 + 384);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v126 = v2;
  sub_1D1AC317C(v1, sub_1D1ABF45C, 0, isUniquelyReferenced_nonNull_native, &v126);
  *(v0 + 440) = v3;

  *(v0 + 448) = v126;
  v5 = *(v1 + 32);
  *(v0 + 59) = v5;
  v6 = -1;
  v7 = -1 << v5;
  if (-(-1 << v5) < 64)
  {
    v6 = ~(-1 << -(-1 << v5));
  }

  v8 = v6 & *(v1 + 64);
  if (v8)
  {
    v9 = 0;
    v10 = *(v0 + 432);
LABEL_8:
    v13 = *(v0 + 280);
    v14 = *(v0 + 288);
    v15 = *(v0 + 248);
    v16 = *(v0 + 256);
    v18 = *(v0 + 232);
    v17 = *(v0 + 240);
    v122 = (v8 - 1) & v8;
    v19 = __clz(__rbit64(v8)) | (v9 << 6);
    (*(v16 + 16))(v13, *(v10 + 48) + *(v16 + 72) * v19, v15);
    sub_1D1AC3B68(*(v10 + 56) + *(v18 + 72) * v19, v17, type metadata accessor for MatterStateSnapshot);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    v21 = *(v20 + 48);
    (*(v16 + 32))(v14, v13, v15);
    sub_1D1AC3BD0(v17, v14 + v21, type metadata accessor for MatterStateSnapshot);
    (*(*(v20 - 8) + 56))(v14, 0, 1, v20);
    v22 = v122;
    v12 = v9;
  }

  else
  {
    v11 = 0;
    v12 = ((63 - v7) >> 6) - 1;
    while (v12 != v11)
    {
      v9 = v11 + 1;
      v10 = *(v0 + 432);
      v8 = *(v10 + 8 * v11++ + 72);
      if (v8)
      {
        goto LABEL_8;
      }
    }

    v106 = *(v0 + 288);
    v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
    (*(*(v107 - 8) + 56))(v106, 1, 1, v107);
    v22 = 0;
  }

  *(v0 + 456) = v22;
  *(v0 + 464) = v12;
  v23 = *(v0 + 296);
  sub_1D1741A90(*(v0 + 288), v23, &qword_1EC645410, &unk_1D1E799A0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
  if ((*(*(v24 - 8) + 48))(v23, 1, v24) != 1)
  {
    v36 = *(v0 + 224);
    v37 = *(v0 + 296) + *(v24 + 48);
    v114 = *(*(v0 + 256) + 32);
    (v114)(*(v0 + 272));
    v38 = *(v37 + *(v36 + 24));

    sub_1D1AC3B08(v37, type metadata accessor for MatterStateSnapshot);
    v39 = sub_1D18D5FAC(MEMORY[0x1E69E7CC0]);
    v40 = v38 + 64;
    v41 = -1 << *(v38 + 32);
    if (-v41 < 64)
    {
      v42 = ~(-1 << -v41);
    }

    else
    {
      v42 = -1;
    }

    v43 = v42 & *(v38 + 64);
    v44 = (63 - v41) >> 6;
    v119 = v38;

    v45 = 0;
    v117 = v44;
    for (i = v38 + 64; ; v40 = i)
    {
      if (!v43)
      {
        while (1)
        {
          v47 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            __break(1u);
            goto LABEL_67;
          }

          if (v47 >= v44)
          {
            break;
          }

          v43 = *(v40 + 8 * v47);
          ++v45;
          if (v43)
          {
            v124 = v39;
            goto LABEL_26;
          }
        }

        v87 = *(v0 + 320);
        v88 = *(v0 + 272);
        v90 = *(v0 + 248);
        v89 = *(v0 + 256);
        v91 = *(v0 + 176);

        v92 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
        *v91 = v39;
        (*(v89 + 16))(v91 + v92, v88, v90);
        swift_storeEnumTagMultiPayload();
        v30 = sub_1D1ABD61C;
        v31 = v87;
        v32 = 0;

        return MEMORY[0x1EEE6DFA0](v30, v31, v32);
      }

      v124 = v39;
      v47 = v45;
LABEL_26:
      v48 = *(v0 + 256);
      v49 = *(v0 + 264);
      v50 = *(v0 + 248);
      v52 = *(v0 + 208);
      v51 = *(v0 + 216);
      v53 = *(v0 + 184);
      v121 = *(*(v0 + 192) + 72);
      sub_1D1AC3B68(*(v119 + 56) + v121 * (__clz(__rbit64(v43)) | (v47 << 6)), v51, type metadata accessor for StaticMatterDevice);
      v120 = *(v48 + 16);
      (v120)(v49, v51 + *(v53 + 48), v50);
      sub_1D1AC3B68(v51, v52, type metadata accessor for StaticMatterDevice);
      v54 = v124;
      v55 = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 104) = v124;
      v30 = sub_1D1742188();
      v56 = *(v124 + 16);
      v57 = (v31 & 1) == 0;
      v58 = __OFADD__(v56, v57);
      v59 = v56 + v57;
      if (v58)
      {
LABEL_67:
        __break(1u);
LABEL_68:
        __break(1u);
        goto LABEL_69;
      }

      if (*(v124 + 24) < v59)
      {
        break;
      }

      if (v55)
      {
        goto LABEL_31;
      }

      v109 = v31;
      v110 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642948, &qword_1D1E6E6A8);
      v71 = sub_1D1E68BAC();
      v62 = v71;
      v72 = *(v124 + 16);
      if (v72)
      {
        v30 = v71 + 64;
        v31 = (v124 + 64);
        v73 = ((1 << *(v62 + 32)) + 63) >> 6;
        if (v62 != v124 || v30 >= v31 + 8 * v73)
        {
          v30 = memmove(v30, v31, 8 * v73);
          v72 = *(v124 + 16);
        }

        v74 = 0;
        *(v62 + 16) = v72;
        v75 = 1 << *(v124 + 32);
        if (v75 < 64)
        {
          v76 = ~(-1 << v75);
        }

        else
        {
          v76 = -1;
        }

        v77 = v76 & *(v124 + 64);
        v78 = (v75 + 63) >> 6;
        v111 = v62;
        if (v77)
        {
          do
          {
            v79 = __clz(__rbit64(v77));
            v116 = (v77 - 1) & v77;
LABEL_49:
            v82 = v79 | (v74 << 6);
            v112 = *(v0 + 280);
            v113 = *(v0 + 248);
            v83 = *(v0 + 200);
            v84 = *(*(v0 + 256) + 72) * v82;
            v120();
            v85 = v82 * v121;
            sub_1D1AC3B68(*(v124 + 56) + v85, v83, type metadata accessor for StaticMatterDevice);
            v114(*(v111 + 48) + v84, v112, v113);
            v86 = *(v111 + 56) + v85;
            v62 = v111;
            v30 = sub_1D1AC3BD0(v83, v86, type metadata accessor for StaticMatterDevice);
            v77 = v116;
          }

          while (v116);
        }

        v80 = v74;
        while (1)
        {
          v74 = v80 + 1;
          if (__OFADD__(v80, 1))
          {
            goto LABEL_70;
          }

          if (v74 >= v78)
          {
            break;
          }

          v81 = *(v124 + 64 + 8 * v74);
          ++v80;
          if (v81)
          {
            v79 = __clz(__rbit64(v81));
            v116 = (v81 - 1) & v81;
            goto LABEL_49;
          }
        }
      }

      v30 = v110;
      LOBYTE(v31) = v109;
LABEL_32:
      v43 &= v43 - 1;
      v64 = *(v0 + 256);
      v63 = *(v0 + 264);
      v65 = *(v0 + 248);
      v67 = *(v0 + 208);
      v66 = *(v0 + 216);
      if (v31)
      {
        v46 = *(v0 + 264);
        sub_1D1AC36D4(*(v0 + 208), *(v62 + 56) + v30 * v121, type metadata accessor for StaticMatterDevice);
        (*(v64 + 8))(v46, v65);
        v30 = sub_1D1AC3B08(v66, type metadata accessor for StaticMatterDevice);
      }

      else
      {
        *(v62 + 8 * (v30 >> 6) + 64) |= 1 << v30;
        v125 = v66;
        v68 = v30;
        v115 = v63;
        (v120)(*(v62 + 48) + *(v64 + 72) * v30, v63, v65);
        sub_1D1AC3BD0(v67, *(v62 + 56) + v68 * v121, type metadata accessor for StaticMatterDevice);
        (*(v64 + 8))(v115, v65);
        v30 = sub_1D1AC3B08(v125, type metadata accessor for StaticMatterDevice);
        v69 = *(v62 + 16);
        v58 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v58)
        {
          goto LABEL_68;
        }

        *(v62 + 16) = v70;
      }

      v45 = v47;
      v39 = v62;
      v44 = v117;
    }

    v60 = v31;
    sub_1D1725208(v59, v55);
    v54 = *(v0 + 104);
    v30 = sub_1D1742188();
    if ((v60 & 1) != (v61 & 1))
    {

      return sub_1D1E690FC();
    }

    LOBYTE(v31) = v60;
LABEL_31:
    v62 = v54;
    goto LABEL_32;
  }

  v25 = *(v0 + 400);
  v26 = *(v0 + 408);
  v27 = *(v0 + 392);
  v28 = *(v0 + 360);
  v29 = *(v0 + 58);

  sub_1D1A283E8(v25, v26, v29);
  if (v27 + 1 == v28)
  {
    v33 = *(v0 + 336);

    v123 = *(v0 + 448);

    v34 = *(v0 + 8);

    return v34(v123);
  }

  else
  {
    v93 = *(v0 + 392) + 1;
    *(v0 + 392) = v93;
    *(v0 + 376) = *(v0 + 440);
    v94 = *(v0 + 352);
    if (v93 >= *(v94 + 16))
    {
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v30, v31, v32);
    }

    else
    {
      v95 = *(v0 + 336);
      v96 = *(v0 + 304);
      v97 = v94 + 24 * v93;
      v98 = *(v97 + 32);
      *(v0 + 400) = v98;
      v99 = *(v97 + 40);
      *(v0 + 408) = v99;
      v100 = *(v97 + 48);
      *(v0 + 58) = v100;
      *(v0 + 40) = v98;
      *(v0 + 48) = v99;
      *(v0 + 56) = v100;
      sub_1D1A28388(v98, v99, v100);
      v101 = [v95 homes];
      v102 = sub_1D1E67C1C();

      v103 = sub_1D1A2A7C8(v102);
      *(v0 + 416) = v103;

      *(v0 + 64) = v98;
      *(v0 + 72) = v99;
      *(v0 + 80) = v100;
      if (v96)
      {
        sub_1D186145C(*(v0 + 312), *(v0 + 57));
        v104 = *(v0 + 57);
        v105 = *(v0 + 312);
      }

      else
      {
        v105 = 0;
        v104 = -1;
      }

      *(v0 + 88) = v105;
      *(v0 + 96) = v104;
      v108 = swift_task_alloc();
      *(v0 + 424) = v108;
      *v108 = v0;
      v108[1] = sub_1D1ABC970;

      return MatterSnapshotModerator.rebuildSnapshotConcurrently(updateType:homes:filter:)(v0 + 64, v103, v0 + 88);
    }
  }
}

uint64_t sub_1D1ABD61C()
{
  *(v0 + 472) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1ABD68C, 0, 0);
}

uint64_t sub_1D1ABD68C()
{
  if (*(v0 + 472))
  {
    v1 = *(v0 + 176);
    v3 = *(v0 + 152);
    v2 = *(v0 + 160);
    v5 = *(v0 + 136);
    v4 = *(v0 + 144);
    v6 = *(v0 + 128);

    sub_1D1AC3B68(v1, v5, type metadata accessor for StateSnapshot.UpdateType);
    v7 = *(v6 + 44);
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
    (*(*(v8 - 8) + 56))(v5 + v7, 1, 1, v8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
    sub_1D1E67ECC();

    (*(v3 + 8))(v2, v4);
  }

  v9 = *(v0 + 272);
  v10 = *(v0 + 248);
  v11 = *(v0 + 256);
  sub_1D1AC3B08(*(v0 + 176), type metadata accessor for StateSnapshot.UpdateType);
  v12 = (*(v11 + 8))(v9, v10);
  v15 = *(v0 + 456);
  v16 = *(v0 + 464);
  if (v15)
  {
    v17 = *(v0 + 432);
    goto LABEL_13;
  }

  v18 = ((1 << *(v0 + 59)) + 63) >> 6;
  if (v18 <= (v16 + 1))
  {
    v19 = v16 + 1;
  }

  else
  {
    v19 = ((1 << *(v0 + 59)) + 63) >> 6;
  }

  v20 = v19 - 1;
  do
  {
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
LABEL_72:
      __break(1u);
LABEL_73:
      __break(1u);
LABEL_74:
      __break(1u);
      goto LABEL_75;
    }

    if (v21 >= v18)
    {
      v113 = *(v0 + 288);
      v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
      (*(*(v114 - 8) + 56))(v113, 1, 1, v114);
      v31 = 0;
      goto LABEL_14;
    }

    v17 = *(v0 + 432);
    v15 = *(v17 + 8 * v21 + 64);
    ++v16;
  }

  while (!v15);
  v16 = v21;
LABEL_13:
  v22 = *(v0 + 280);
  v23 = *(v0 + 288);
  v24 = *(v0 + 248);
  v25 = *(v0 + 256);
  v27 = *(v0 + 232);
  v26 = *(v0 + 240);
  v129 = (v15 - 1) & v15;
  v28 = __clz(__rbit64(v15)) | (v16 << 6);
  (*(v25 + 16))(v22, *(v17 + 48) + *(v25 + 72) * v28, v24);
  sub_1D1AC3B68(*(v17 + 56) + *(v27 + 72) * v28, v26, type metadata accessor for MatterStateSnapshot);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
  v30 = *(v29 + 48);
  (*(v25 + 32))(v23, v22, v24);
  sub_1D1AC3BD0(v26, v23 + v30, type metadata accessor for MatterStateSnapshot);
  (*(*(v29 - 8) + 56))(v23, 0, 1, v29);
  v31 = v129;
  v20 = v16;
LABEL_14:
  *(v0 + 456) = v31;
  *(v0 + 464) = v20;
  v32 = *(v0 + 296);
  sub_1D1741A90(*(v0 + 288), v32, &qword_1EC645410, &unk_1D1E799A0);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
  if ((*(*(v33 - 8) + 48))(v32, 1, v33) != 1)
  {
    v42 = *(v0 + 224);
    v43 = *(v0 + 296) + *(v33 + 48);
    v121 = *(*(v0 + 256) + 32);
    (v121)(*(v0 + 272));
    v44 = *(v43 + *(v42 + 24));

    sub_1D1AC3B08(v43, type metadata accessor for MatterStateSnapshot);
    v45 = sub_1D18D5FAC(MEMORY[0x1E69E7CC0]);
    v46 = v44 + 64;
    v47 = -1 << *(v44 + 32);
    if (-v47 < 64)
    {
      v48 = ~(-1 << -v47);
    }

    else
    {
      v48 = -1;
    }

    v49 = v48 & *(v44 + 64);
    v50 = (63 - v47) >> 6;
    v126 = v44;

    v51 = 0;
    v124 = v50;
    for (i = v44 + 64; ; v46 = i)
    {
      if (!v49)
      {
        while (1)
        {
          v53 = v51 + 1;
          if (__OFADD__(v51, 1))
          {
            __break(1u);
            goto LABEL_72;
          }

          if (v53 >= v50)
          {
            break;
          }

          v49 = *(v46 + 8 * v53);
          ++v51;
          if (v49)
          {
            v131 = v45;
            goto LABEL_31;
          }
        }

        v93 = *(v0 + 320);
        v94 = *(v0 + 272);
        v96 = *(v0 + 248);
        v95 = *(v0 + 256);
        v97 = *(v0 + 176);

        v98 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A740, &unk_1D1E96B20) + 48);
        *v97 = v45;
        (*(v95 + 16))(v97 + v98, v94, v96);
        swift_storeEnumTagMultiPayload();
        v12 = sub_1D1ABD61C;
        v13 = v93;
        v14 = 0;

        return MEMORY[0x1EEE6DFA0](v12, v13, v14);
      }

      v131 = v45;
      v53 = v51;
LABEL_31:
      v54 = *(v0 + 256);
      v55 = *(v0 + 264);
      v56 = *(v0 + 248);
      v58 = *(v0 + 208);
      v57 = *(v0 + 216);
      v59 = *(v0 + 184);
      v128 = *(*(v0 + 192) + 72);
      sub_1D1AC3B68(*(v126 + 56) + v128 * (__clz(__rbit64(v49)) | (v53 << 6)), v57, type metadata accessor for StaticMatterDevice);
      v127 = *(v54 + 16);
      (v127)(v55, v57 + *(v59 + 48), v56);
      sub_1D1AC3B68(v57, v58, type metadata accessor for StaticMatterDevice);
      v60 = v131;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v0 + 104) = v131;
      v12 = sub_1D1742188();
      v62 = *(v131 + 16);
      v63 = (v13 & 1) == 0;
      v64 = __OFADD__(v62, v63);
      v65 = v62 + v63;
      if (v64)
      {
        goto LABEL_73;
      }

      if (*(v131 + 24) < v65)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_36;
      }

      v116 = v13;
      v117 = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642948, &qword_1D1E6E6A8);
      v77 = sub_1D1E68BAC();
      v68 = v77;
      v78 = *(v131 + 16);
      if (v78)
      {
        v12 = v77 + 64;
        v13 = (v131 + 64);
        v79 = ((1 << *(v68 + 32)) + 63) >> 6;
        if (v68 != v131 || v12 >= v13 + 8 * v79)
        {
          v12 = memmove(v12, v13, 8 * v79);
          v78 = *(v131 + 16);
        }

        v80 = 0;
        *(v68 + 16) = v78;
        v81 = 1 << *(v131 + 32);
        if (v81 < 64)
        {
          v82 = ~(-1 << v81);
        }

        else
        {
          v82 = -1;
        }

        v83 = v82 & *(v131 + 64);
        v84 = (v81 + 63) >> 6;
        v118 = v68;
        if (v83)
        {
          do
          {
            v85 = __clz(__rbit64(v83));
            v123 = (v83 - 1) & v83;
LABEL_54:
            v88 = v85 | (v80 << 6);
            v119 = *(v0 + 280);
            v120 = *(v0 + 248);
            v89 = *(v0 + 200);
            v90 = *(*(v0 + 256) + 72) * v88;
            v127();
            v91 = v88 * v128;
            sub_1D1AC3B68(*(v131 + 56) + v91, v89, type metadata accessor for StaticMatterDevice);
            v121(*(v118 + 48) + v90, v119, v120);
            v92 = *(v118 + 56) + v91;
            v68 = v118;
            v12 = sub_1D1AC3BD0(v89, v92, type metadata accessor for StaticMatterDevice);
            v83 = v123;
          }

          while (v123);
        }

        v86 = v80;
        while (1)
        {
          v80 = v86 + 1;
          if (__OFADD__(v86, 1))
          {
            goto LABEL_76;
          }

          if (v80 >= v84)
          {
            break;
          }

          v87 = *(v131 + 64 + 8 * v80);
          ++v86;
          if (v87)
          {
            v85 = __clz(__rbit64(v87));
            v123 = (v87 - 1) & v87;
            goto LABEL_54;
          }
        }
      }

      v12 = v117;
      LOBYTE(v13) = v116;
LABEL_37:
      v49 &= v49 - 1;
      v70 = *(v0 + 256);
      v69 = *(v0 + 264);
      v71 = *(v0 + 248);
      v73 = *(v0 + 208);
      v72 = *(v0 + 216);
      if (v13)
      {
        v52 = *(v0 + 264);
        sub_1D1AC36D4(*(v0 + 208), *(v68 + 56) + v12 * v128, type metadata accessor for StaticMatterDevice);
        (*(v70 + 8))(v52, v71);
        v12 = sub_1D1AC3B08(v72, type metadata accessor for StaticMatterDevice);
      }

      else
      {
        *(v68 + 8 * (v12 >> 6) + 64) |= 1 << v12;
        v132 = v72;
        v74 = v12;
        v122 = v69;
        (v127)(*(v68 + 48) + *(v70 + 72) * v12, v69, v71);
        sub_1D1AC3BD0(v73, *(v68 + 56) + v74 * v128, type metadata accessor for StaticMatterDevice);
        (*(v70 + 8))(v122, v71);
        v12 = sub_1D1AC3B08(v132, type metadata accessor for StaticMatterDevice);
        v75 = *(v68 + 16);
        v64 = __OFADD__(v75, 1);
        v76 = v75 + 1;
        if (v64)
        {
          goto LABEL_74;
        }

        *(v68 + 16) = v76;
      }

      v51 = v53;
      v45 = v68;
      v50 = v124;
    }

    v66 = v13;
    sub_1D1725208(v65, isUniquelyReferenced_nonNull_native);
    v60 = *(v0 + 104);
    v12 = sub_1D1742188();
    if ((v66 & 1) != (v67 & 1))
    {

      return sub_1D1E690FC();
    }

    LOBYTE(v13) = v66;
LABEL_36:
    v68 = v60;
    goto LABEL_37;
  }

  v34 = *(v0 + 400);
  v35 = *(v0 + 408);
  v36 = *(v0 + 392);
  v37 = *(v0 + 360);
  v38 = *(v0 + 58);

  sub_1D1A283E8(v34, v35, v38);
  if (v36 + 1 == v37)
  {
    v39 = *(v0 + 336);

    v130 = *(v0 + 448);

    v40 = *(v0 + 8);

    return v40(v130);
  }

  v99 = *(v0 + 440);
  v100 = *(v0 + 392) + 1;
  *(v0 + 384) = *(v0 + 448);
  *(v0 + 392) = v100;
  *(v0 + 376) = v99;
  v101 = *(v0 + 352);
  if (v100 < *(v101 + 16))
  {
    v102 = *(v0 + 336);
    v103 = *(v0 + 304);
    v104 = v101 + 24 * v100;
    v105 = *(v104 + 32);
    *(v0 + 400) = v105;
    v106 = *(v104 + 40);
    *(v0 + 408) = v106;
    v107 = *(v104 + 48);
    *(v0 + 58) = v107;
    *(v0 + 40) = v105;
    *(v0 + 48) = v106;
    *(v0 + 56) = v107;
    sub_1D1A28388(v105, v106, v107);
    v108 = [v102 homes];
    v109 = sub_1D1E67C1C();

    v110 = sub_1D1A2A7C8(v109);
    *(v0 + 416) = v110;

    *(v0 + 64) = v105;
    *(v0 + 72) = v106;
    *(v0 + 80) = v107;
    if (v103)
    {
      sub_1D186145C(*(v0 + 312), *(v0 + 57));
      v111 = *(v0 + 57);
      v112 = *(v0 + 312);
    }

    else
    {
      v112 = 0;
      v111 = -1;
    }

    *(v0 + 88) = v112;
    *(v0 + 96) = v111;
    v115 = swift_task_alloc();
    *(v0 + 424) = v115;
    *v115 = v0;
    v115[1] = sub_1D1ABC970;

    return MatterSnapshotModerator.rebuildSnapshotConcurrently(updateType:homes:filter:)(v0 + 64, v110, v0 + 88);
  }

LABEL_75:
  __break(1u);
LABEL_76:
  __break(1u);
  return MEMORY[0x1EEE6DFA0](v12, v13, v14);
}

uint64_t sub_1D1ABE2C0(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1ABE2E0, 0, 0);
}

uint64_t sub_1D1ABE2E0()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;
  *(v0 + 32) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ABE378, v1, 0);
}

uint64_t sub_1D1ABE378()
{
  *(v0 + 40) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1ABE3E8, 0, 0);
}

uint64_t sub_1D1ABE3E8()
{
  v1 = v0[5];
  if (v1)
  {
    v2 = v0[4];
    v0[6] = *(v1 + 24);

    return MEMORY[0x1EEE6DFA0](sub_1D1ABE498, v2, 0);
  }

  else
  {
    v3 = v0[1];

    return v3();
  }
}

uint64_t sub_1D1ABE498()
{
  sub_1D1AFD7B4(*(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HomeState.Stream.MatterSnapshotUpdateController.deinit()
{
  swift_weakDestroy();
  v1 = *(*v0 + 112);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C40, qword_1D1E968E0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 120);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return v0;
}

uint64_t sub_1D1ABE64C@<X0>(uint64_t *a2@<X8>)
{
  objc_opt_self();
  result = swift_dynamicCastObjCClass();
  v4 = result;
  if (result)
  {
    result = swift_unknownObjectRetain();
  }

  *a2 = v4;
  return result;
}

void *sub_1D1ABE6AC@<X0>(uint64_t a4@<X8>)
{
  sub_1D18D8A70(MEMORY[0x1E69E7CC0]);
  sub_1D1E6769C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7A8, &qword_1D1E96C00);
  swift_getWitnessTable();
  result = sub_1D1E67A9C();
  *a4 = v6;
  *(a4 + 8) = 0;
  *(a4 + 16) = 1;
  return result;
}

uint64_t sub_1D1ABE794(void **a1, uint64_t a2, uint64_t a3)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = *(TupleTypeMetadata2 - 8);
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = v23 - v12;
  v14 = *(v8 + 16);
  v14(v23 - v12, a2, TupleTypeMetadata2);
  sub_1D1757A60(*&v13[*(TupleTypeMetadata2 + 48)], *&v13[*(TupleTypeMetadata2 + 48) + 8], *&v13[*(TupleTypeMetadata2 + 48) + 16], v13[*(TupleTypeMetadata2 + 48) + 24]);
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = swift_dynamicCast();
  if (result)
  {
    v16 = v24;
    v14(v11, a2, TupleTypeMetadata2);
    v17 = &v11[*(TupleTypeMetadata2 + 48)];
    v18 = *v17;
    v19 = *(v17 + 1);
    v23[1] = v3;
    v20 = *(v17 + 2);
    v21 = v17[24];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *a1;
    sub_1D1753978(v18, v19, v20, v21, v16, isUniquelyReferenced_nonNull_native);

    *a1 = v24;
    return (*(*(a3 - 8) + 8))(v11, a3);
  }

  return result;
}

uint64_t sub_1D1ABE9A8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v82 = a5;
  v77 = a4;
  v80 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A760, &unk_1D1E96B70);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v86 = &v72 - v8;
  v88 = _s7MergeIdVMa(0);
  v85 = *(v88 - 8);
  v9 = MEMORY[0x1EEE9AC00](v88);
  v75 = &v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v72 - v11);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v79 = *(updated - 8);
  v13 = MEMORY[0x1EEE9AC00](updated);
  v76 = (&v72 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MEMORY[0x1EEE9AC00](v13);
  v81 = &v72 - v16;
  v17 = MEMORY[0x1EEE9AC00](v15);
  v83 = &v72 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v20 = (&v72 - v19);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v72 - v22;
  v24 = sub_1D1E66A7C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v74 = &v72 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v78 = &v72 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v31 = &v72 - v30;
  v87 = a1;
  sub_1D1B2EF60(v23);
  if ((*(v25 + 48))(v23, 1, v24) == 1)
  {
    sub_1D1741A30(v23, &qword_1EC642590, qword_1D1E71260);
    v32 = 0;
  }

  else
  {
    v73 = v12;
    (*(v25 + 32))(v31, v23, v24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v89 = *a2;
    v34 = v89;
    *a2 = 0x8000000000000000;
    v32 = sub_1D1742188();
    v36 = v34[2];
    v37 = (v35 & 1) == 0;
    v38 = v36 + v37;
    if (__OFADD__(v36, v37))
    {
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v23 = v35;
    if (v34[3] >= v38)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1D1737900();
        v34 = v89;
      }
    }

    else
    {
      sub_1D1725FE8(v38, isUniquelyReferenced_nonNull_native);
      v34 = v89;
      v39 = sub_1D1742188();
      if ((v23 & 1) != (v40 & 1))
      {
        sub_1D1E690FC();
        __break(1u);
        goto LABEL_43;
      }

      v32 = v39;
    }

    v12 = v73;
    *a2 = v34;

    v34 = *a2;
    if ((v23 & 1) == 0)
    {
      (*(v25 + 16))(v78, v31, v24);
      sub_1D19DD7D8();
    }

    v41 = v34[7];
    v42 = *(v41 + 8 * v32);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
LABEL_40:
      __break(1u);
LABEL_41:
      v34 = sub_1D177E928(0, v34[2] + 1, 1, v34);
      *(v23 + 8 * v31) = v34;
LABEL_34:
      v69 = v34[2];
      v68 = v34[3];
      if (v69 >= v68 >> 1)
      {
        *(v23 + 8 * v31) = sub_1D177E928((v68 > 1), v69 + 1, 1, v34);
      }

      sub_1D1AC3B08(v20, _s7MergeIdVMa);
      v70 = *(v23 + 8 * v31);
      *(v70 + 16) = v69 + 1;
      sub_1D1AC3BD0(v83, v70 + ((*(v79 + 80) + 32) & ~*(v79 + 80)) + *(v79 + 72) * v69, type metadata accessor for StateSnapshot.UpdateType);
      return sub_1D17169C0(v32, 0);
    }

    *(v41 + 8 * v32) = v44;
    (*(v25 + 8))(v31, v24);
    v32 = sub_1D16EE93C;
  }

  v45 = v87;
  sub_1D1AC3B68(v87, v20, type metadata accessor for StateSnapshot.UpdateType);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_1D1AC3B08(v20, type metadata accessor for StateSnapshot.UpdateType);
  }

  else
  {
    v51 = *v20;
    if (*v20)
    {
      v52 = [*v20 uniqueIdentifier];
      v53 = v74;
      sub_1D1E66A5C();

      v54 = v78;
      sub_1D1762CB8(v78, v53);

      (*(v25 + 8))(v54, v24);
      v20 = v88;
      v49 = v85;
      v48 = v86;
      goto LABEL_23;
    }
  }

  v46 = v81;
  sub_1D1AC3B68(v45, v81, type metadata accessor for StateSnapshot.UpdateType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = v88;
  v49 = v85;
  v48 = v86;
  if (EnumCaseMultiPayload != 13)
  {
    if (EnumCaseMultiPayload)
    {
LABEL_19:
      sub_1D1AC3B08(v46, type metadata accessor for StateSnapshot.UpdateType);
      goto LABEL_23;
    }

    v50 = v76;
    sub_1D1AC3B68(v46, v76, type metadata accessor for StateSnapshot.UpdateType);
    if (*v50)
    {

      goto LABEL_19;
    }
  }

  sub_1D1AC3B08(v46, type metadata accessor for StateSnapshot.UpdateType);

  sub_1D19306D8(v55);
LABEL_23:
  sub_1D1B2F234(v48);
  if ((*(v49 + 48))(v48, 1, v20) == 1)
  {
    sub_1D1741A30(v48, &qword_1EC64A760, &unk_1D1E96B70);
    return sub_1D17169C0(v32, 0);
  }

  sub_1D1AC3BD0(v48, v12, _s7MergeIdVMa);
  sub_1D1AC3B68(v45, v83, type metadata accessor for StateSnapshot.UpdateType);
  v56 = v82;
  v23 = swift_isUniquelyReferenced_nonNull_native();
  v89 = *v56;
  v34 = v89;
  *v56 = 0x8000000000000000;
  v31 = sub_1D171D934(v12);
  v58 = v34[2];
  v59 = (v57 & 1) == 0;
  v60 = v58 + v59;
  if (__OFADD__(v58, v59))
  {
    goto LABEL_39;
  }

  v61 = v57;
  if (v34[3] >= v60)
  {
    if ((v23 & 1) == 0)
    {
      sub_1D173A630();
      v34 = v89;
    }

LABEL_31:
    v64 = v82;
    *v82 = v34;

    v65 = *v64;
    if ((v61 & 1) == 0)
    {
      v66 = v75;
      sub_1D1AC3B68(v12, v75, _s7MergeIdVMa);
      sub_1D19DBCF8(v31, v66, MEMORY[0x1E69E7CC0], v65);
    }

    v23 = v65[7];
    v34 = *(v23 + 8 * v31);
    v67 = swift_isUniquelyReferenced_nonNull_native();
    *(v23 + 8 * v31) = v34;
    v20 = v12;
    if (v67)
    {
      goto LABEL_34;
    }

    goto LABEL_41;
  }

  sub_1D172AEA4(v60, v23);
  v34 = v89;
  v62 = sub_1D171D934(v12);
  if ((v61 & 1) == (v63 & 1))
  {
    v31 = v62;
    goto LABEL_31;
  }

LABEL_43:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

unint64_t sub_1D1ABF278(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E676DC();

  return sub_1D1ABF2D4(a1, v6, a2, a3);
}

unint64_t sub_1D1ABF2D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21[1] = a1;
  v21[2] = a4;
  MEMORY[0x1EEE9AC00](a1);
  v8 = v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v4;
  v9 = -1 << *(v4 + 32);
  v11 = v10 & ~v9;
  v21[0] = v4 + 64;
  if ((*(v4 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v9;
    v15 = *(v6 + 16);
    v13 = v6 + 16;
    v14 = v15;
    v16 = *(v13 + 56);
    v17 = (v13 - 8);
    do
    {
      v18 = v13;
      v14(v8, *(v22 + 48) + v16 * v11, a3);
      v19 = sub_1D1E6775C();
      (*v17)(v8, a3);
      if (v19)
      {
        break;
      }

      v11 = (v11 + 1) & v12;
      v13 = v18;
    }

    while (((*(v21[0] + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  return v11;
}

uint64_t sub_1D1ABF45C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860) + 48);
  v6 = sub_1D1E66A7C();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_1D1AC3B68(a1 + v4, a2 + v5, type metadata accessor for MatterStateSnapshot);
}

uint64_t sub_1D1ABF514@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454C0, &qword_1D1E96BE0);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v40 - v3;
  v4 = type metadata accessor for StaticMatterDevice(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6454B8, &unk_1D1E79A50);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v42 = &v40 - v16;
  v18 = *v1;
  v17 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v45 = v20;
  if (v21)
  {
    v22 = v19;
LABEL_10:
    v41 = (v21 - 1) & v21;
    v26 = __clz(__rbit64(v21)) | (v22 << 6);
    (*(v9 + 16))(v11, *(v18 + 48) + *(v9 + 72) * v26, v8);
    sub_1D1AC3B68(*(v18 + 56) + *(v5 + 72) * v26, v7, type metadata accessor for StaticMatterDevice);
    v27 = v7;
    v28 = v44;
    v29 = *(v44 + 48);
    v30 = v42;
    (*(v9 + 32))();
    sub_1D1AC3BD0(v27, v30 + v29, type metadata accessor for StaticMatterDevice);
    v31 = v43;
    (*(v43 + 56))(v30, 0, 1, v28);
    v32 = v41;
    v25 = v22;
LABEL_11:
    *v1 = v18;
    v1[1] = v17;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v25;
    v1[4] = v32;
    v34 = v1[5];
    sub_1D1741A90(v30, v33, &qword_1EC6454B8, &unk_1D1E79A50);
    v35 = 1;
    v36 = (*(v31 + 48))(v33, 1, v28);
    v37 = v47;
    if (v36 != 1)
    {
      v38 = v40;
      sub_1D1741A90(v33, v40, &qword_1EC6454C0, &qword_1D1E96BE0);
      v34(v38);
      sub_1D1741A30(v38, &qword_1EC6454C0, &qword_1D1E96BE0);
      v35 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646170, &unk_1D1E7E720);
    return (*(*(v39 - 8) + 56))(v37, v35, 1, v39);
  }

  else
  {
    v23 = (v20 + 64) >> 6;
    if (v23 <= v19 + 1)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = (v20 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        v30 = v42;
        v31 = v43;
        v28 = v44;
        (*(v43 + 56))(v42, 1, 1, v44);
        v32 = 0;
        goto LABEL_11;
      }

      v21 = *(v17 + 8 * v22);
      ++v19;
      if (v21)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1ABF99C@<X0>(uint64_t a1@<X8>)
{
  v48 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452F8, &unk_1D1E797F0);
  v45 = *(v2 - 8);
  v46 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v41 - v3;
  v5 = type metadata accessor for IconTextValueStringDataHolder(0);
  v44 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
  v43 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A7B0, &qword_1D1E96C48);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v12);
  v17 = &v41 - v16;
  v19 = *v1;
  v18 = v1[1];
  v21 = v1[2];
  v20 = v1[3];
  v22 = v1[4];
  v42 = v4;
  v47 = v21;
  if (v22)
  {
    v23 = v20;
LABEL_10:
    v27 = (v22 - 1) & v22;
    v28 = __clz(__rbit64(v22)) | (v23 << 6);
    sub_1D1AC3B68(*(v19 + 48) + *(v43 + 72) * v28, v10, type metadata accessor for StaticServiceCharacteristicDoublet);
    sub_1D1AC3B68(*(v19 + 56) + *(v44 + 72) * v28, v7, type metadata accessor for IconTextValueStringDataHolder);
    v29 = *(v46 + 48);
    v30 = v10;
    v31 = v46;
    sub_1D1AC3BD0(v30, v17, type metadata accessor for StaticServiceCharacteristicDoublet);
    sub_1D1AC3BD0(v7, &v17[v29], type metadata accessor for IconTextValueStringDataHolder);
    v32 = v45;
    (*(v45 + 56))(v17, 0, 1, v31);
    v26 = v23;
LABEL_11:
    *v1 = v19;
    v1[1] = v18;
    v1[2] = v47;
    v1[3] = v26;
    v1[4] = v27;
    v33 = v1[5];
    sub_1D1741A90(v17, v14, &qword_1EC64A7B0, &qword_1D1E96C48);
    v34 = *(v32 + 48);
    v35 = 1;
    v36 = v34(v14, 1, v31);
    v37 = v48;
    if (v36 != 1)
    {
      v38 = v14;
      v39 = v42;
      sub_1D1741A90(v38, v42, &qword_1EC6452F8, &unk_1D1E797F0);
      v33(v39);
      sub_1D1741A30(v39, &qword_1EC6452F8, &unk_1D1E797F0);
      v35 = 0;
    }

    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452F0, &qword_1D1E96C50);
    return (*(*(v40 - 8) + 56))(v37, v35, 1, v40);
  }

  else
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
        v32 = v45;
        v31 = v46;
        (*(v45 + 56))(&v41 - v16, 1, 1, v46);
        v27 = 0;
        goto LABEL_11;
      }

      v22 = *(v18 + 8 * v23);
      ++v20;
      if (v22)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

_OWORD *sub_1D1ABFE14@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + v13);
    sub_1D1741970(*(v3 + 56) + 32 * v13, v18);
    LOBYTE(v20) = v14;
    result = sub_1D1742194(v18, (&v20 + 8));
    v16 = v22;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v17 = v1[5];
      v18[0] = v20;
      v18[1] = v21;
      v19 = v16;
      v17(v18);
      return sub_1D1741A30(v18, &qword_1EC646288, &qword_1D1E7E948);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        v22 = 0;
        v20 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1ABFF5C@<X0>(uint64_t a1@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40);
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v38 - v4;
  v5 = type metadata accessor for StaticMatterDevice(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645420, &unk_1D1E799B0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = (&v38 - v13);
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v18;
  v43 = a1;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    v26 = *(*(v16 + 48) + 8 * v25);
    sub_1D1AC3B68(*(v16 + 56) + *(v40 + 72) * v25, v7, type metadata accessor for StaticMatterDevice);
    v27 = v41;
    v28 = *(v41 + 48);
    *v14 = v26;
    v29 = v7;
    v30 = v27;
    sub_1D1AC3BD0(v29, v14 + v28, type metadata accessor for StaticMatterDevice);
    (*(v3 + 56))(v14, 0, 1, v30);
    v23 = v20;
LABEL_11:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v42;
    v1[3] = v23;
    v1[4] = v24;
    v31 = v1[5];
    sub_1D1741A90(v14, v11, &qword_1EC645420, &unk_1D1E799B0);
    v32 = 1;
    v33 = (*(v3 + 48))(v11, 1, v30);
    v34 = v43;
    if (v33 != 1)
    {
      v35 = v11;
      v36 = v39;
      sub_1D1741A90(v35, v39, &qword_1EC645428, &qword_1D1E96C40);
      v31(v36);
      sub_1D1741A30(v36, &qword_1EC645428, &qword_1D1E96C40);
      v32 = 0;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646210, &unk_1D1E7E870);
    return (*(*(v37 - 8) + 56))(v34, v32, 1, v37);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v41;
        (*(v3 + 56))(&v38 - v13, 1, 1, v41);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v15 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1AC031C@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645418, &unk_1D1E96B10);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v40 - v3;
  v4 = type metadata accessor for MatterStateSnapshot(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645410, &unk_1D1E799A0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v42 = &v40 - v16;
  v18 = *v1;
  v17 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v45 = v20;
  if (v21)
  {
    v22 = v19;
LABEL_10:
    v41 = (v21 - 1) & v21;
    v26 = __clz(__rbit64(v21)) | (v22 << 6);
    (*(v9 + 16))(v11, *(v18 + 48) + *(v9 + 72) * v26, v8);
    sub_1D1AC3B68(*(v18 + 56) + *(v5 + 72) * v26, v7, type metadata accessor for MatterStateSnapshot);
    v27 = v7;
    v28 = v44;
    v29 = *(v44 + 48);
    v30 = v42;
    (*(v9 + 32))();
    sub_1D1AC3BD0(v27, v30 + v29, type metadata accessor for MatterStateSnapshot);
    v31 = v43;
    (*(v43 + 56))(v30, 0, 1, v28);
    v32 = v41;
    v25 = v22;
LABEL_11:
    *v1 = v18;
    v1[1] = v17;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v25;
    v1[4] = v32;
    v34 = v1[5];
    sub_1D1741A90(v30, v33, &qword_1EC645410, &unk_1D1E799A0);
    v35 = 1;
    v36 = (*(v31 + 48))(v33, 1, v28);
    v37 = v47;
    if (v36 != 1)
    {
      v38 = v40;
      sub_1D1741A90(v33, v40, &qword_1EC645418, &unk_1D1E96B10);
      v34(v38);
      sub_1D1741A30(v38, &qword_1EC645418, &unk_1D1E96B10);
      v35 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860);
    return (*(*(v39 - 8) + 56))(v37, v35, 1, v39);
  }

  else
  {
    v23 = (v20 + 64) >> 6;
    if (v23 <= v19 + 1)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = (v20 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        v30 = v42;
        v31 = v43;
        v28 = v44;
        (*(v43 + 56))(v42, 1, 1, v44);
        v32 = 0;
        goto LABEL_11;
      }

      v21 = *(v17 + 8 * v22);
      ++v19;
      if (v21)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1AC07A4@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642DB0, &unk_1D1E6F360);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v40 - v3;
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C68, &unk_1D1E764C0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v46 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v42 = &v40 - v16;
  v18 = *v1;
  v17 = v1[1];
  v20 = v1[2];
  v19 = v1[3];
  v21 = v1[4];
  v45 = v20;
  if (v21)
  {
    v22 = v19;
LABEL_10:
    v41 = (v21 - 1) & v21;
    v26 = __clz(__rbit64(v21)) | (v22 << 6);
    (*(v9 + 16))(v11, *(v18 + 48) + *(v9 + 72) * v26, v8);
    sub_1D1AC3B68(*(v18 + 56) + *(v5 + 72) * v26, v7, type metadata accessor for StaticService);
    v27 = v7;
    v28 = v44;
    v29 = *(v44 + 48);
    v30 = v42;
    (*(v9 + 32))();
    sub_1D1AC3BD0(v27, v30 + v29, type metadata accessor for StaticService);
    v31 = v43;
    (*(v43 + 56))(v30, 0, 1, v28);
    v32 = v41;
    v25 = v22;
LABEL_11:
    *v1 = v18;
    v1[1] = v17;
    v33 = v46;
    v1[2] = v45;
    v1[3] = v25;
    v1[4] = v32;
    v34 = v1[5];
    sub_1D1741A90(v30, v33, &qword_1EC643C68, &unk_1D1E764C0);
    v35 = 1;
    v36 = (*(v31 + 48))(v33, 1, v28);
    v37 = v47;
    if (v36 != 1)
    {
      v38 = v40;
      sub_1D1741A90(v33, v40, &qword_1EC642DB0, &unk_1D1E6F360);
      v34(v38);
      sub_1D1741A30(v38, &qword_1EC642DB0, &unk_1D1E6F360);
      v35 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
    return (*(*(v39 - 8) + 56))(v37, v35, 1, v39);
  }

  else
  {
    v23 = (v20 + 64) >> 6;
    if (v23 <= v19 + 1)
    {
      v24 = v19 + 1;
    }

    else
    {
      v24 = (v20 + 64) >> 6;
    }

    v25 = v24 - 1;
    while (1)
    {
      v22 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v22 >= v23)
      {
        v30 = v42;
        v31 = v43;
        v28 = v44;
        (*(v43 + 56))(v42, 1, 1, v44);
        v32 = 0;
        goto LABEL_11;
      }

      v21 = *(v17 + 8 * v22);
      ++v19;
      if (v21)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1AC0C2C@<X0>(uint64_t a1@<X8>)
{
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645548, &unk_1D1E79AE0);
  v3 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v39 = &v38 - v4;
  v5 = type metadata accessor for StaticCharacteristic(0);
  v40 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645540, &unk_1D1E96BA0);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v38 - v13;
  v16 = *v1;
  v15 = v1[1];
  v18 = v1[2];
  v17 = v1[3];
  v19 = v1[4];
  v42 = v18;
  v43 = a1;
  if (v19)
  {
    v20 = v17;
LABEL_10:
    v24 = (v19 - 1) & v19;
    v25 = __clz(__rbit64(v19)) | (v20 << 6);
    v26 = *(*(v16 + 48) + v25);
    sub_1D1AC3B68(*(v16 + 56) + *(v40 + 72) * v25, v7, type metadata accessor for StaticCharacteristic);
    v27 = v41;
    v28 = *(v41 + 48);
    *v14 = v26;
    v29 = v7;
    v30 = v27;
    sub_1D1AC3BD0(v29, &v14[v28], type metadata accessor for StaticCharacteristic);
    (*(v3 + 56))(v14, 0, 1, v30);
    v23 = v20;
LABEL_11:
    *v1 = v16;
    v1[1] = v15;
    v1[2] = v42;
    v1[3] = v23;
    v1[4] = v24;
    v31 = v1[5];
    sub_1D1741A90(v14, v11, &qword_1EC645540, &unk_1D1E96BA0);
    v32 = 1;
    v33 = (*(v3 + 48))(v11, 1, v30);
    v34 = v43;
    if (v33 != 1)
    {
      v35 = v11;
      v36 = v39;
      sub_1D1741A90(v35, v39, &qword_1EC645548, &unk_1D1E79AE0);
      v31(v36);
      sub_1D1741A30(v36, &qword_1EC645548, &unk_1D1E79AE0);
      v32 = 0;
    }

    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
    return (*(*(v37 - 8) + 56))(v34, v32, 1, v37);
  }

  else
  {
    v21 = (v18 + 64) >> 6;
    if (v21 <= v17 + 1)
    {
      v22 = v17 + 1;
    }

    else
    {
      v22 = (v18 + 64) >> 6;
    }

    v23 = v22 - 1;
    while (1)
    {
      v20 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v20 >= v21)
      {
        v30 = v41;
        (*(v3 + 56))(&v38 - v13, 1, 1, v41);
        v24 = 0;
        goto LABEL_11;
      }

      v19 = *(v15 + 8 * v20);
      ++v17;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1AC0FEC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6)
{
  v149 = a6;
  v152 = a5;
  v145 = a4;
  v153 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A760, &unk_1D1E96B70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v137 - v9;
  v164 = _s7MergeIdVMa(0);
  v11 = *(v164 - 8);
  v12 = MEMORY[0x1EEE9AC00](v164);
  v142 = &v137 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v141 = &v137 - v15;
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v137 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v21 = &v137 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v137 - v22;
  v184 = sub_1D1E66A7C();
  v24 = *(v184 - 8);
  v25 = MEMORY[0x1EEE9AC00](v184);
  v144 = &v137 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x1EEE9AC00](v25);
  v180 = &v137 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v183 = &v137 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437E0, &unk_1D1E96B80);
  v31 = MEMORY[0x1EEE9AC00](v30 - 8);
  v33 = (&v137 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v31);
  v170 = (&v137 - v34);
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v35 = MEMORY[0x1EEE9AC00](updated);
  v171 = &v137 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = MEMORY[0x1EEE9AC00](v35);
  v38 = MEMORY[0x1EEE9AC00](v37);
  v143 = &v137 - v39;
  v40 = MEMORY[0x1EEE9AC00](v38);
  v174 = &v137 - v41;
  MEMORY[0x1EEE9AC00](v40);
  v161 = &v137 - v45;
  v169 = *(a1 + 16);
  if (v169)
  {
    v138 = v43;
    v140 = v33;
    v46 = 0;
    v160 = (*(v42 + 80) + 32) & ~*(v42 + 80);
    v168 = a1 + v160;
    v172 = *(v42 + 72);
    v163 = (v24 + 32);
    v165 = (v24 + 56);
    v167 = (v24 + 48);
    v181 = v24 + 16;
    v155 = v24;
    v182 = (v24 + 8);
    v166 = (v42 + 56);
    v178 = a3 + 56;
    v162 = (v11 + 48);
    v176 = MEMORY[0x1E69E7CC0];
    v150 = (v42 + 48);
    *&v44 = 136315394;
    v139 = v44;
    v158 = v10;
    v157 = v17;
    v156 = v21;
    v159 = v23;
    v47 = v184;
    v48 = v170;
    v151 = a3;
    while (1)
    {
      v173 = v46;
      v177 = v168 + v172 * v46;
      sub_1D1AC3B68(v177, v174, type metadata accessor for StateSnapshot.UpdateType);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload == 6)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690);
        v51 = v174;

        (*v163)(v23, v51, v47);
        (*v165)(v23, 0, 1, v47);
        goto LABEL_34;
      }

      if (EnumCaseMultiPayload != 1)
      {
        (*v165)(v23, 1, 1, v47);
        sub_1D1AC3B08(v174, type metadata accessor for StateSnapshot.UpdateType);
        goto LABEL_34;
      }

      v50 = *v174;
      if (!*(v174 + 16))
      {
        break;
      }

      sub_1D1AC373C(v50, *(v174 + 8), *(v174 + 16));
      (*v165)(v21, 1, 1, v47);
LABEL_33:
      sub_1D1741A90(v21, v23, &qword_1EC642590, qword_1D1E71260);
LABEL_34:
      if ((*v167)(v23, 1, v47) == 1)
      {
        sub_1D1741A30(v23, &qword_1EC642590, qword_1D1E71260);
      }

      else
      {
        v71 = v183;
        (*v163)(v183, v23, v47);
        v72 = *v153;
        if (*(*v153 + 16))
        {
          sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);

          v73 = sub_1D1E676DC();
          v74 = -1 << *(v72 + 32);
          v75 = v73 & ~v74;
          v179 = v72 + 56;
          if ((*(v72 + 56 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75))
          {
            v76 = ~v74;
            v77 = *(v155 + 72);
            v78 = *(v155 + 16);
            while (1)
            {
              v79 = v180;
              v80 = v184;
              v78(v180, *(v72 + 48) + v77 * v75, v184);
              sub_1D1AC359C(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
              v81 = sub_1D1E6775C();
              v82 = *v182;
              (*v182)(v79, v80);
              if (v81)
              {
                break;
              }

              v75 = (v75 + 1) & v76;
              if (((*(v179 + ((v75 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v75) & 1) == 0)
              {
                goto LABEL_41;
              }
            }

            v47 = v184;
            v82(v183, v184);
            v96 = 1;
            a3 = v151;
            v10 = v158;
            v17 = v157;
            v21 = v156;
            v23 = v159;
            v48 = v170;
            goto LABEL_75;
          }

LABEL_41:

          a3 = v151;
          v71 = v183;
        }

        v83 = v155;
        if (*(a3 + 16))
        {
          sub_1D1AC359C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
          v84 = sub_1D1E676DC();
          v85 = -1 << *(a3 + 32);
          v86 = v84 & ~v85;
          if ((*(v178 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86))
          {
            v87 = ~v85;
            v88 = *(v83 + 72);
            v89 = *(v83 + 16);
            while (1)
            {
              v90 = v180;
              v91 = v184;
              v89(v180, *(a3 + 48) + v88 * v86, v184);
              sub_1D1AC359C(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
              v92 = sub_1D1E6775C();
              v93 = *v182;
              (*v182)(v90, v91);
              if (v92)
              {
                break;
              }

              v86 = (v86 + 1) & v87;
              v71 = v183;
              if (((*(v178 + ((v86 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v86) & 1) == 0)
              {
                goto LABEL_47;
              }
            }

            v102 = v145;
            if (*(v145 + 16) && (v103 = sub_1D1742188(), (v104 & 1) != 0))
            {
              v105 = *(*(v102 + 56) + 8 * v103);
              v47 = v184;
              v93(v183, v184);
              v48 = v170;
              *v170 = v105;
              swift_storeEnumTagMultiPayload();
              v96 = 0;
              v10 = v158;
              v17 = v157;
              v21 = v156;
              v23 = v159;
            }

            else
            {
              v47 = v184;
              v48 = v170;
              if (qword_1EE07B5D0 != -1)
              {
                swift_once();
              }

              v106 = sub_1D1E6709C();
              __swift_project_value_buffer(v106, qword_1EE07B5D8);
              v107 = v144;
              v89(v144, v183, v47);
              v108 = v143;
              sub_1D1AC3B68(v177, v143, type metadata accessor for StateSnapshot.UpdateType);
              v109 = sub_1D1E6707C();
              v110 = sub_1D1E6833C();
              if (os_log_type_enabled(v109, v110))
              {
                v111 = swift_slowAlloc();
                v179 = swift_slowAlloc();
                v191 = v179;
                *v111 = v139;
                sub_1D1AC359C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
                v112 = sub_1D1E68FAC();
                v113 = v108;
                v115 = v114;
                v93(v107, v184);
                v116 = sub_1D1B1312C(v112, v115, &v191);

                *(v111 + 4) = v116;
                *(v111 + 12) = 2080;
                v117 = StateSnapshot.UpdateType.description.getter();
                v119 = v118;
                sub_1D1AC3B08(v113, type metadata accessor for StateSnapshot.UpdateType);
                v120 = sub_1D1B1312C(v117, v119, &v191);

                *(v111 + 14) = v120;
                _os_log_impl(&dword_1D16EC000, v109, v110, "Failed to find home for homeID (%s) from update: %s", v111, 0x16u);
                v121 = v179;
                swift_arrayDestroy();
                MEMORY[0x1D3893640](v121, -1, -1);
                v122 = v111;
                v48 = v170;
                v47 = v184;
                MEMORY[0x1D3893640](v122, -1, -1);
              }

              else
              {

                sub_1D1AC3B08(v108, type metadata accessor for StateSnapshot.UpdateType);
                v93(v107, v47);
              }

              v93(v183, v47);
              v23 = v159;
              sub_1D1AC3B68(v177, v48, type metadata accessor for StateSnapshot.UpdateType);
              v96 = 0;
              v10 = v158;
              v17 = v157;
              v21 = v156;
            }

            goto LABEL_75;
          }
        }

LABEL_47:
        v47 = v184;
        (*v182)(v71, v184);
        v10 = v158;
        v17 = v157;
        v21 = v156;
        v23 = v159;
        v48 = v170;
      }

      sub_1D1B2F234(v10);
      if ((*v162)(v10, 1, v164) == 1)
      {
        sub_1D1741A30(v10, &qword_1EC64A760, &unk_1D1E96B70);
LABEL_58:
        sub_1D1AC3B68(v177, v48, type metadata accessor for StateSnapshot.UpdateType);
        (*v166)(v48, 0, 1, updated);
LABEL_76:
        v133 = v161;
        sub_1D1AC3BD0(v48, v161, type metadata accessor for StateSnapshot.UpdateType);
        sub_1D1AC3BD0(v133, v171, type metadata accessor for StateSnapshot.UpdateType);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v176 = sub_1D177E928(0, v176[2] + 1, 1, v176);
        }

        v135 = v176[2];
        v134 = v176[3];
        if (v135 >= v134 >> 1)
        {
          v176 = sub_1D177E928((v134 > 1), v135 + 1, 1, v176);
        }

        v136 = v176;
        v176[2] = v135 + 1;
        sub_1D1AC3BD0(v171, v136 + v160 + v135 * v172, type metadata accessor for StateSnapshot.UpdateType);
        goto LABEL_4;
      }

      sub_1D1AC3BD0(v10, v17, _s7MergeIdVMa);
      v94 = *v152;

      v95 = sub_1D1719B44(v17, v94);

      if (v95)
      {
        sub_1D1AC3B08(v17, _s7MergeIdVMa);
        v96 = 1;
      }

      else
      {
        v97 = *v149;
        if (!*(*v149 + 16) || (v98 = sub_1D171D934(v17), (v99 & 1) == 0) || *(*(*(v97 + 56) + 8 * v98) + 16) < 2uLL)
        {
          sub_1D1AC3B08(v17, _s7MergeIdVMa);
          goto LABEL_58;
        }

        v101 = v140;
        sub_1D1B30840(v100, v140);

        if ((*v150)(v101, 1, updated) == 1)
        {
          sub_1D1AC3B08(v17, _s7MergeIdVMa);
          sub_1D1741A30(v101, &qword_1EC6437E0, &unk_1D1E96B80);
          goto LABEL_58;
        }

        v179 = type metadata accessor for StateSnapshot.UpdateType;
        v128 = v138;
        sub_1D1AC3BD0(v101, v138, type metadata accessor for StateSnapshot.UpdateType);
        v129 = v142;
        sub_1D1AC3B68(v17, v142, _s7MergeIdVMa);
        v130 = v141;
        sub_1D1766F54(v141, v129);
        v131 = v130;
        v23 = v159;
        sub_1D1AC3B08(v131, _s7MergeIdVMa);
        sub_1D1AC3B08(v17, _s7MergeIdVMa);
        sub_1D1AC3BD0(v128, v48, v179);
        v96 = 0;
      }

LABEL_75:
      v132 = updated;
      (*v166)(v48, v96, 1, updated);
      if ((*v150)(v48, 1, v132) != 1)
      {
        goto LABEL_76;
      }

      sub_1D1741A30(v48, &qword_1EC6437E0, &unk_1D1E96B80);
LABEL_4:
      v46 = v173 + 1;
      if (v173 + 1 == v169)
      {
        return v176;
      }
    }

    v148 = *(v174 + 8);
    v147 = v50;
    if ((v50 & 0xC000000000000001) != 0)
    {

      sub_1D1E686EC();
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      sub_1D18BE688();
      sub_1D1E681BC();
      result = v186;
      v53 = v187;
      v54 = v188;
      v55 = v189;
      v56 = v190;
    }

    else
    {
      v57 = -1 << *(v50 + 32);
      v53 = v50 + 56;
      v54 = ~v57;
      v58 = -v57;
      if (v58 < 64)
      {
        v59 = ~(-1 << v58);
      }

      else
      {
        v59 = -1;
      }

      v56 = v59 & *(v50 + 56);

      v55 = 0;
    }

    v146 = v54;
    v179 = result;
    if (result < 0)
    {
      goto LABEL_24;
    }

LABEL_18:
    v60 = v55;
    v61 = v56;
    v62 = v55;
    if (v56)
    {
LABEL_22:
      v154 = v55;
      v56 = (v61 - 1) & v61;
      v63 = *(*(result + 48) + ((v62 << 9) | (8 * __clz(__rbit64(v61)))));
      if (!v63)
      {
LABEL_69:
        v47 = v184;
        v48 = v170;
        result = v179;
        goto LABEL_29;
      }

      while (1)
      {
        v65 = [v63 service];
        v66 = [v65 accessory];

        v67 = [v66 home];
        if (v67)
        {
          break;
        }

        v55 = v62;
        v47 = v184;
        v48 = v170;
        result = v179;
        if ((v179 & 0x8000000000000000) == 0)
        {
          goto LABEL_18;
        }

LABEL_24:
        v64 = sub_1D1E6877C();
        if (!v64)
        {
          result = v179;
          goto LABEL_29;
        }

        v185 = v64;
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        swift_unknownObjectRetain();
        swift_dynamicCast();
        v63 = v191;
        swift_unknownObjectRelease();
        v154 = v55;
        v62 = v55;
        if (!v63)
        {
          goto LABEL_69;
        }
      }

      sub_1D1716918(v179);
      v123 = [v63 service];
      v48 = v170;
      if (v123)
      {
        v124 = v123;
        v125 = [v123 accessory];

        v10 = v158;
        v17 = v157;
        v21 = v156;
        v47 = v184;
        a3 = v151;
        if (v125)
        {
          v126 = [v125 home];

          if (v126)
          {
            v127 = [v126 uniqueIdentifier];

            sub_1D1E66A5C();
            (*v165)(v21, 0, 1, v47);
            v69 = v147;
            v70 = v148;
            goto LABEL_32;
          }
        }

        v68 = v148;
LABEL_31:
        (*v165)(v21, 1, 1, v47);
        v69 = v147;
        v70 = v68;
LABEL_32:
        sub_1D1AC373C(v69, v70, 0);
        v23 = v159;
        goto LABEL_33;
      }

      v10 = v158;
      v17 = v157;
      v21 = v156;
      v47 = v184;
    }

    else
    {
      while (1)
      {
        v62 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          __break(1u);
          return result;
        }

        if (v62 >= ((v54 + 64) >> 6))
        {
          break;
        }

        v61 = *(v53 + 8 * v62);
        ++v60;
        if (v61)
        {
          goto LABEL_22;
        }
      }

LABEL_29:
      sub_1D1716918(result);
      v10 = v158;
      v17 = v157;
      v21 = v156;
    }

    v68 = v148;
    a3 = v151;
    goto LABEL_31;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t sub_1D1AC25F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1D1E67CBC())
  {
    sub_1D1E68BDC();
    v13 = sub_1D1E68BCC();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1D1E67CBC();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (sub_1D1E67C9C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1D1E688AC();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1D1ABF278(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}