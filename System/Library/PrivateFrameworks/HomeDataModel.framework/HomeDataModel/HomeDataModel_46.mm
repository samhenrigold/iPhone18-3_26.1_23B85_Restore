uint64_t sub_1D1ADD78C(uint64_t a1, char a2)
{
  *(v3 + 216) = a2;
  *(v3 + 152) = a1;
  *(v3 + 160) = v2;
  v4 = sub_1D1E66A7C();
  *(v3 + 168) = v4;
  *(v3 + 176) = *(v4 - 8);
  *(v3 + 184) = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC64ABE8;
  *(v3 + 192) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ADD888, v5, 0);
}

uint64_t sub_1D1ADD888()
{
  v57 = v0;
  v1 = *(v0 + 160);
  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 22);
  os_unfair_lock_unlock((v1 + 16));
  if (v2 == 1)
  {
    if (qword_1EE07AE38 != -1)
    {
      swift_once();
    }

    if (qword_1EE07AE40 <= 7 && ((1 << qword_1EE07AE40) & 0xC3) != 0)
    {
      if (qword_1EC642328 != -1)
      {
        swift_once();
      }

      v4 = *(v0 + 152);
      v5 = sub_1D1E6709C();
      *(v0 + 200) = __swift_project_value_buffer(v5, qword_1EC64A290);
      v6 = v4;
      v7 = sub_1D1E6707C();
      v8 = sub_1D1E6835C();

      if (os_log_type_enabled(v7, v8))
      {
        v10 = *(v0 + 176);
        v9 = *(v0 + 184);
        v50 = *(v0 + 168);
        v52 = *(v0 + 216);
        v11 = *(v0 + 152);
        v12 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v56 = v54;
        *v12 = 136315650;
        v13 = [v11 name];
        v14 = sub_1D1E6781C();
        v16 = v15;

        v17 = sub_1D1B1312C(v14, v16, &v56);

        *(v12 + 4) = v17;
        *(v12 + 12) = 2082;
        v18 = [v11 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v19 = sub_1D1E68FAC();
        v21 = v20;
        (*(v10 + 8))(v9, v50);
        v22 = sub_1D1B1312C(v19, v21, &v56);

        *(v12 + 14) = v22;
        *(v12 + 22) = 1026;
        *(v12 + 24) = v52;
        _os_log_impl(&dword_1D16EC000, v7, v8, "HomeState.Stream: home.enableNotifications:includeAppleMediaAccessoryNotifications: called for %s (%{public}s) to set to %{BOOL,public}d", v12, 0x1Cu);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v54, -1, -1);
        MEMORY[0x1D3893640](v12, -1, -1);
      }

      v23 = *(v0 + 216);
      v24 = *(v0 + 152);
      *(v0 + 16) = v0;
      *(v0 + 24) = sub_1D1ADDF0C;
      v25 = swift_continuation_init();
      *(v0 + 136) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643C90, &qword_1D1E74590);
      *(v0 + 80) = MEMORY[0x1E69E9820];
      *(v0 + 88) = 1107296256;
      *(v0 + 96) = sub_1D17B04C8;
      *(v0 + 104) = &block_descriptor_42;
      *(v0 + 112) = v25;
      [v24 setAllNotificationsEnabled:v23 includeAppleMediaAccessories:v23 completionHandler:v0 + 80];

      return MEMORY[0x1EEE6DEC8](v0 + 16);
    }

    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v26 = *(v0 + 152);
    v27 = sub_1D1E6709C();
    __swift_project_value_buffer(v27, qword_1EC64A290);
    v28 = v26;
    v29 = sub_1D1E6707C();
    v30 = sub_1D1E6831C();

    if (os_log_type_enabled(v29, v30))
    {
      v55 = v30;
      v32 = *(v0 + 176);
      v31 = *(v0 + 184);
      v51 = *(v0 + 168);
      v33 = *(v0 + 152);
      v34 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v56 = v53;
      *v34 = 136315650;
      v35 = [v33 name];
      v36 = sub_1D1E6781C();
      v38 = v37;

      v39 = sub_1D1B1312C(v36, v38, &v56);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2082;
      v40 = [v33 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v41 = sub_1D1E68FAC();
      v43 = v42;
      (*(v32 + 8))(v31, v51);
      v44 = sub_1D1B1312C(v41, v43, &v56);

      *(v34 + 14) = v44;
      *(v34 + 22) = 2082;
      *(v0 + 144) = qword_1EE07AE40;
      type metadata accessor for DataModelContext(0);
      v45 = sub_1D1E6789C();
      v47 = sub_1D1B1312C(v45, v46, &v56);

      *(v34 + 24) = v47;
      _os_log_impl(&dword_1D16EC000, v29, v55, "HomeState.Stream: skipping enabling notifications for %s (%{public}s) because context is %{public}s", v34, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v53, -1, -1);
      MEMORY[0x1D3893640](v34, -1, -1);
    }
  }

  v48 = *(v0 + 8);

  return v48();
}

uint64_t sub_1D1ADDF0C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 208) = v2;
  v3 = *(v1 + 192);
  if (v2)
  {
    v4 = sub_1D1ADE298;
  }

  else
  {
    v4 = sub_1D1ADE02C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1ADE02C()
{
  v24 = v0;
  v1 = *(v0 + 152);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 176);
    v4 = *(v0 + 184);
    v20 = *(v0 + 168);
    v21 = *(v0 + 216);
    v6 = *(v0 + 152);
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = v22;
    *v7 = 136315650;
    v8 = [v6 name];
    v9 = sub_1D1E6781C();
    v11 = v10;

    v12 = sub_1D1B1312C(v9, v11, &v23);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2082;
    v13 = [v6 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v14 = sub_1D1E68FAC();
    v16 = v15;
    (*(v5 + 8))(v4, v20);
    v17 = sub_1D1B1312C(v14, v16, &v23);

    *(v7 + 14) = v17;
    *(v7 + 22) = 1026;
    *(v7 + 24) = v21;
    _os_log_impl(&dword_1D16EC000, v2, v3, "HomeState.Stream: home.enableNotifications:includeAppleMediaAccessoryNotifications: for %s (%{public}s) is now %{BOOL,public}d", v7, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v22, -1, -1);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  v18 = *(v0 + 8);

  return v18();
}

uint64_t sub_1D1ADE298(uint64_t a1)
{
  v33 = v1;
  v2 = v1[26];
  v3 = v1[19];
  swift_willThrow();
  v4 = v3;
  v5 = v2;
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6834C();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v1[26];
  if (v8)
  {
    v31 = v7;
    v11 = v1[22];
    v10 = v1[23];
    v28 = v1[21];
    v12 = v1[19];
    v13 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32[0] = v30;
    *v13 = 136315650;
    v14 = [v12 name];
    v15 = sub_1D1E6781C();
    v17 = v16;

    v18 = sub_1D1B1312C(v15, v17, v32);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    v19 = [v12 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v20 = sub_1D1E68FAC();
    v22 = v21;
    (*(v11 + 8))(v10, v28);
    v23 = sub_1D1B1312C(v20, v22, v32);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2112;
    v24 = v9;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 24) = v25;
    *v29 = v25;
    _os_log_impl(&dword_1D16EC000, v6, v31, "HomeState.Stream: home.enableNotifications:includeAppleMediaAccessoryNotifications: for %s (%{public}s) failed with error: %@", v13, 0x20u);
    sub_1D1741A30(v29, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v29, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v30, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {
  }

  v26 = v1[1];

  return v26();
}

uint64_t sub_1D1ADE588(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1ADD78C(a5, a6 & 1);
}

void sub_1D1ADE660(void **a1, char a2, int64_t a3, int a4, uint64_t a5)
{
  v51 = a5;
  v56 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v50 - v9;
  v11 = *a1;
  if (a2)
  {
    v12 = *(a3 + 120);
    v13 = sub_1D1A830C0(&qword_1EC649E88, &unk_1D1E9640C);
  }

  else
  {
    v12 = 0;
    v13 = 0;
  }

  HMAccessory.accessoryDelegate.setter(v12, v13);
  v14 = [v11 softwareUpdateController];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 availableUpdate];

    if (v16)
    {
      if (v56)
      {
        v17 = *(a3 + 136);
      }

      else
      {
        v17 = 0;
      }

      [v16 setDelegate_];
      swift_unknownObjectRelease();
    }
  }

  v18 = [v11 mediaProfile];
  if (v18)
  {
    v19 = v18;
    v20 = [v18 mediaSession];

    if (v20)
    {
      if (v56)
      {
        v21 = *(a3 + 120);
        v22 = sub_1D1A830C0(&qword_1EC649E98, &unk_1D1E963D4);
      }

      else
      {
        v21 = 0;
        v22 = 0;
      }

      HMMediaSession.mediaSessionDelegate.setter(v21, v22);
    }
  }

  v53 = v11;
  v23 = [v11 lightProfiles];
  v24 = sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
  sub_1D174A5B8(&qword_1EE079CE8, &qword_1EE079CF0, 0x1E696CBB8, MEMORY[0x1E69E81B8]);
  v25 = sub_1D1E6816C();

  v54 = v24;
  v55 = a3;
  v50 = v10;
  if ((v25 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1E681BC();
    v26 = v58;
    v27 = v59;
    v29 = v60;
    v28 = v61;
    v30 = v62;
  }

  else
  {
    v31 = -1 << *(v25 + 32);
    v27 = v25 + 56;
    v29 = ~v31;
    v32 = -v31;
    if (v32 < 64)
    {
      v33 = ~(-1 << v32);
    }

    else
    {
      v33 = -1;
    }

    v30 = v33 & *(v25 + 56);

    v28 = 0;
    v26 = v25;
  }

  v52 = v29;
  v34 = (v29 + 64) >> 6;
  while ((v26 & 0x8000000000000000) == 0)
  {
    v36 = v28;
    v37 = v30;
    v38 = v28;
    if (!v30)
    {
      while (1)
      {
        v38 = (v36 + 1);
        if (__OFADD__(v36, 1))
        {
          break;
        }

        if (v38 >= v34)
        {
          goto LABEL_36;
        }

        v37 = *(v27 + 8 * v38);
        ++v36;
        if (v37)
        {
          goto LABEL_30;
        }
      }

      __break(1u);
LABEL_44:
      swift_once();
LABEL_40:
      v46 = qword_1EC64ABE8;
      v47 = sub_1D1AE3140(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
      v48 = swift_allocObject();
      v48[2] = v46;
      v48[3] = v47;
      v48[4] = v38;
      v48[5] = v23;
      v49 = v51;
      v48[6] = v26;
      v48[7] = v49;

      sub_1D17C6EF0(0, 0, v34, &unk_1D1E97328, v48);

      goto LABEL_41;
    }

LABEL_30:
    v39 = (v37 - 1) & v37;
    v23 = *(*(v26 + 48) + ((v38 << 9) | (8 * __clz(__rbit64(v37)))));
    if (!v23)
    {
      goto LABEL_36;
    }

LABEL_34:
    if (v56)
    {
      v35 = *(v55 + 136);
    }

    else
    {
      v35 = 0;
    }

    [v23 setDelegate_];

    swift_unknownObjectRelease();
    v28 = v38;
    v30 = v39;
  }

  v40 = sub_1D1E6877C();
  if (v40)
  {
    v57 = v40;
    swift_dynamicCast();
    v23 = v63;
    v38 = v28;
    v39 = v30;
    if (v63)
    {
      goto LABEL_34;
    }
  }

LABEL_36:
  sub_1D1716918(v26);

  v41 = v53;
  v42 = [v53 mediaProfile];
  if (v42)
  {

    v43 = [v41 home];
    if (v43)
    {
      v28 = v43;
      if (v56)
      {
        v44 = sub_1D1E67E7C();
        v34 = v50;
        (*(*(v44 - 8) + 56))(v50, 1, 1, v44);
        v45 = qword_1EC642358;
        v38 = v55;

        v23 = v28;
        v26 = v41;
        if (v45 == -1)
        {
          goto LABEL_40;
        }

        goto LABEL_44;
      }

LABEL_41:
    }
  }
}

uint64_t sub_1D1ADEC14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[10] = a4;
  v7 = sub_1D1E66A7C();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC64ABE8;
  v6[18] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1ADED28, v8, 0);
}

uint64_t sub_1D1ADED28()
{
  v1 = *(v0 + 80);
  swift_beginAccess();
  if (*(v1 + 104))
  {
    v3 = *(v0 + 88);
    v2 = *(v0 + 96);
    sub_1D17419CC(v1 + 80, v0 + 16);
    v4 = *(v0 + 40);
    *(v0 + 152) = v4;
    *(v0 + 168) = __swift_project_boxed_opaque_existential_1((v0 + 16), v4);
    v5 = [v3 uniqueIdentifier];
    sub_1D1E66A5C();

    v6 = [v2 uniqueIdentifier];
    sub_1D1E66A5C();

    *(v0 + 176) = sub_1D1E67E1C();
    *(v0 + 184) = sub_1D1E67E0C();
    v8 = sub_1D1E67D4C();

    return MEMORY[0x1EEE6DFA0](sub_1D1ADEEBC, v8, v7);
  }

  else
  {

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1D1ADEEBC()
{
  v1 = *(v0 + 144);

  return MEMORY[0x1EEE6DFA0](sub_1D1ADEF28, v1, 0);
}

uint64_t sub_1D1ADEF28(uint64_t a1)
{
  *(v1 + 192) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1ADEFB4, v3, v2);
}

uint64_t sub_1D1ADEFB4()
{
  v8 = v0[20];

  v7 = (*(v8 + 64) + **(v8 + 64));
  v1 = swift_task_alloc();
  v0[25] = v1;
  *v1 = v0;
  v1[1] = sub_1D1ADF0E0;
  v2 = v0[20];
  v3 = v0[19];
  v4 = v0[16];
  v5 = v0[17];

  return v7(v5, v4, &unk_1F4D65BD8, 0, v3, v2);
}

uint64_t sub_1D1ADF0E0()
{
  v2 = *v1;
  v3 = *(*v1 + 136);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 112);
  v6 = *(*v1 + 104);
  v2[26] = v0;

  v7 = *(v5 + 8);
  v2[27] = v7;
  v2[28] = (v5 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7(v4, v6);
  v7(v3, v6);
  v8 = v2[18];
  if (v0)
  {
    v9 = sub_1D1ADF328;
  }

  else
  {
    v9 = sub_1D1ADF2AC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, 0);
}

uint64_t sub_1D1ADF2AC()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1ADF328()
{
  v40 = v0;
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v1 = v0[26];
  v3 = v0[11];
  v2 = v0[12];
  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EC64A290);
  v5 = v2;
  v6 = v3;
  v7 = v1;
  v8 = sub_1D1E6707C();
  v9 = sub_1D1E6833C();

  if (os_log_type_enabled(v8, v9))
  {
    v34 = v0[27];
    v37 = v0[26];
    v10 = v0[15];
    v11 = v0[12];
    v12 = v0[13];
    v35 = v0[11];
    v13 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v39 = v38;
    *v13 = 136315906;
    v14 = [v11 name];
    v15 = sub_1D1E6781C();
    v17 = v16;

    v18 = sub_1D1B1312C(v15, v17, &v39);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    v19 = [v11 uniqueIdentifier];
    sub_1D1E66A5C();

    sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v20 = sub_1D1E68FAC();
    v22 = v21;
    v34(v10, v12);
    v23 = sub_1D1B1312C(v20, v22, &v39);

    *(v13 + 14) = v23;
    *(v13 + 22) = 2080;
    v24 = [v35 name];
    v25 = sub_1D1E6781C();
    v27 = v26;

    v28 = sub_1D1B1312C(v25, v27, &v39);

    *(v13 + 24) = v28;
    *(v13 + 32) = 2112;
    v29 = v37;
    v30 = _swift_stdlib_bridgeErrorToNSError();
    *(v13 + 34) = v30;
    *v36 = v30;
    _os_log_impl(&dword_1D16EC000, v8, v9, "Subscribing to accessory settings changes for accessory: %s %{public}s in home: %s failed due to %@", v13, 0x2Au);
    sub_1D1741A30(v36, &unk_1EC644000, &unk_1D1E75B00);
    MEMORY[0x1D3893640](v36, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v38, -1, -1);
    MEMORY[0x1D3893640](v13, -1, -1);
  }

  else
  {
    v31 = v0[26];
  }

  v32 = v0[1];

  return v32();
}

unint64_t HomeState.Stream.StateSubscription.Reason.description.getter()
{
  v1 = v0;
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for HomeState.Stream.StateSubscription.Reason(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1AE37A8(v1, v8, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v10 = (*(*(v9 - 8) + 48))(v8, 3, v9);
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      return 0xD000000000000010;
    }

    else
    {
      return 0x6E6E755274736574;
    }
  }

  else if (v10)
  {
    return 0xD000000000000013;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v14 = 0;
    v15 = 0xE000000000000000;
    sub_1D1E6884C();

    v14 = 0xD00000000000001BLL;
    v15 = 0x80000001D1EC4660;
    sub_1D1AE3140(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v11 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v11);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    v12 = v14;
    (*(v3 + 8))(v5, v2);
    return v12;
  }
}

uint64_t HomeState.Stream.StateSubscription.HomeSpecification.description.getter()
{
  v1 = *v0;
  if (!*v0)
  {
    return 1701736302;
  }

  if (v1 == 1)
  {
    return 0x48746E6572727563;
  }

  if (v1 == 2)
  {
    return 0x73656D6F486C6C61;
  }

  sub_1D1E66A7C();
  sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = sub_1D1E6817C();
  MEMORY[0x1D3890F70](v3);

  MEMORY[0x1D3890F70](41, 0xE100000000000000);
  return 0x2873656D6F68;
}

uint64_t sub_1D1ADFA9C(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_1D1E0D7A8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_1D1ADFB18(v6);
  return sub_1D1E6897C();
}

void sub_1D1ADFB18(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_1D1E68F9C();
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
        sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
        v6 = sub_1D1E67C8C();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_1D1ADFC2C(v8, v9, a1, v4);
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
    sub_1D1748070(0, v2, 1, a1);
  }
}

void sub_1D1ADFC2C(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 >= 1)
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    while (1)
    {
      v10 = v7;
      v11 = v7 + 1;
      if (v7 + 1 < v6)
      {
        break;
      }

LABEL_32:
      v35 = a3[1];
      v7 = v11;
      if (v11 >= v35)
      {
        goto LABEL_41;
      }

      if (__OFSUB__(v11, v10))
      {
        goto LABEL_143;
      }

      if (v11 - v10 >= a4)
      {
LABEL_40:
        v7 = v11;
LABEL_41:
        if (v7 < v10)
        {
          goto LABEL_142;
        }

        goto LABEL_42;
      }

      v36 = v10 + a4;
      if (__OFADD__(v10, a4))
      {
        goto LABEL_145;
      }

      if (v36 >= v35)
      {
        v36 = a3[1];
      }

      if (v36 < v10)
      {
LABEL_146:
        __break(1u);
        goto LABEL_147;
      }

      if (v11 == v36)
      {
        goto LABEL_40;
      }

      v110 = v8;
      v5 = *a3;
      v4 = *a3 + 8 * v11 - 8;
      v107 = v10;
      v83 = v10 - v11;
      v112 = v36;
      v120 = *a3;
      while (2)
      {
        v114 = v4;
        v116 = v11;
        v84 = *(v5 + 8 * v11);
        v113 = v83;
        while (1)
        {
          v85 = *v4;
          v86 = v84;
          v87 = v85;
          LODWORD(v85) = [v86 v9[47]];
          if (v85 != [v87 v9[47]])
          {
            v88 = [v86 v9[47]];

            if ((v88 & 1) == 0)
            {
              goto LABEL_93;
            }

            goto LABEL_103;
          }

          v89 = [v86 name];
          v90 = sub_1D1E6781C();
          v92 = v91;

          v93 = [v87 name];
          v94 = sub_1D1E6781C();
          v96 = v95;

          if (v90 == v94 && v92 == v96)
          {
            break;
          }

          v98 = sub_1D1E6904C();

          v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
          v5 = v120;
          if ((v98 & 1) == 0)
          {
            goto LABEL_93;
          }

LABEL_103:
          if (!v5)
          {
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
            goto LABEL_151;
          }

          v99 = *v4;
          v84 = *(v4 + 8);
          *v4 = v84;
          *(v4 + 8) = v99;
          v4 -= 8;
          if (__CFADD__(v83++, 1))
          {
            goto LABEL_93;
          }
        }

        v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        v5 = v120;
LABEL_93:
        v11 = v116 + 1;
        v4 = v114 + 8;
        v83 = v113 - 1;
        if (v116 + 1 != v112)
        {
          continue;
        }

        break;
      }

      v7 = v112;
      v8 = v110;
      v10 = v107;
      if (v112 < v107)
      {
        goto LABEL_142;
      }

LABEL_42:
      v37 = v8;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v8 = v37;
      }

      else
      {
        v8 = sub_1D177D070(0, *(v37 + 2) + 1, 1, v37);
      }

      v4 = *(v8 + 2);
      v38 = *(v8 + 3);
      v39 = v4 + 1;
      if (v4 >= v38 >> 1)
      {
        v8 = sub_1D177D070((v38 > 1), v4 + 1, 1, v8);
      }

      *(v8 + 2) = v39;
      v40 = &v8[16 * v4];
      *(v40 + 4) = v10;
      *(v40 + 5) = v7;
      v41 = *a1;
      if (!*a1)
      {
        goto LABEL_152;
      }

      if (v4)
      {
        while (2)
        {
          v42 = v39 - 1;
          if (v39 >= 4)
          {
            v47 = &v8[16 * v39 + 32];
            v48 = *(v47 - 64);
            v49 = *(v47 - 56);
            v53 = __OFSUB__(v49, v48);
            v50 = v49 - v48;
            if (v53)
            {
              goto LABEL_129;
            }

            v52 = *(v47 - 48);
            v51 = *(v47 - 40);
            v53 = __OFSUB__(v51, v52);
            v45 = v51 - v52;
            v46 = v53;
            if (v53)
            {
              goto LABEL_130;
            }

            v54 = &v8[16 * v39];
            v56 = *v54;
            v55 = *(v54 + 1);
            v53 = __OFSUB__(v55, v56);
            v57 = v55 - v56;
            if (v53)
            {
              goto LABEL_132;
            }

            v53 = __OFADD__(v45, v57);
            v58 = v45 + v57;
            if (v53)
            {
              goto LABEL_135;
            }

            if (v58 >= v50)
            {
              v76 = &v8[16 * v42 + 32];
              v78 = *v76;
              v77 = *(v76 + 1);
              v53 = __OFSUB__(v77, v78);
              v79 = v77 - v78;
              if (v53)
              {
                goto LABEL_139;
              }

              if (v45 < v79)
              {
                v42 = v39 - 2;
              }
            }

            else
            {
LABEL_61:
              if (v46)
              {
                goto LABEL_131;
              }

              v59 = &v8[16 * v39];
              v61 = *v59;
              v60 = *(v59 + 1);
              v62 = __OFSUB__(v60, v61);
              v63 = v60 - v61;
              v64 = v62;
              if (v62)
              {
                goto LABEL_134;
              }

              v65 = &v8[16 * v42 + 32];
              v67 = *v65;
              v66 = *(v65 + 1);
              v53 = __OFSUB__(v66, v67);
              v68 = v66 - v67;
              if (v53)
              {
                goto LABEL_137;
              }

              if (__OFADD__(v63, v68))
              {
                goto LABEL_138;
              }

              if (v63 + v68 < v45)
              {
                goto LABEL_75;
              }

              if (v45 < v68)
              {
                v42 = v39 - 2;
              }
            }
          }

          else
          {
            if (v39 == 3)
            {
              v43 = *(v8 + 4);
              v44 = *(v8 + 5);
              v53 = __OFSUB__(v44, v43);
              v45 = v44 - v43;
              v46 = v53;
              goto LABEL_61;
            }

            v69 = &v8[16 * v39];
            v71 = *v69;
            v70 = *(v69 + 1);
            v53 = __OFSUB__(v70, v71);
            v63 = v70 - v71;
            v64 = v53;
LABEL_75:
            if (v64)
            {
              goto LABEL_133;
            }

            v72 = &v8[16 * v42];
            v74 = *(v72 + 4);
            v73 = *(v72 + 5);
            v53 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v53)
            {
              goto LABEL_136;
            }

            if (v75 < v63)
            {
              break;
            }
          }

          v4 = v42 - 1;
          if (v42 - 1 >= v39)
          {
            __break(1u);
LABEL_127:
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
LABEL_131:
            __break(1u);
LABEL_132:
            __break(1u);
LABEL_133:
            __break(1u);
LABEL_134:
            __break(1u);
LABEL_135:
            __break(1u);
LABEL_136:
            __break(1u);
LABEL_137:
            __break(1u);
LABEL_138:
            __break(1u);
LABEL_139:
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
            goto LABEL_146;
          }

          if (!*a3)
          {
            goto LABEL_149;
          }

          v5 = v8;
          v80 = *&v8[16 * v4 + 32];
          v81 = *&v8[16 * v42 + 40];
          sub_1D174922C((*a3 + 8 * v80), (*a3 + 8 * *&v8[16 * v42 + 32]), (*a3 + 8 * v81), v41);
          if (v118)
          {
            goto LABEL_123;
          }

          if (v81 < v80)
          {
            goto LABEL_127;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v5 = sub_1D1E0BE44(v5);
          }

          if (v4 >= *(v5 + 16))
          {
            goto LABEL_128;
          }

          v82 = v5 + 16 * v4;
          *(v82 + 32) = v80;
          *(v82 + 40) = v81;
          sub_1D1E0BDB8(v42);
          v8 = v5;
          v39 = *(v5 + 16);
          if (v39 <= 1)
          {
            break;
          }

          continue;
        }
      }

      v6 = a3[1];
      if (v7 >= v6)
      {
        goto LABEL_112;
      }
    }

    v109 = v8;
    v4 = *a3;
    v12 = *(*a3 + 8 * v7);
    v13 = *(*a3 + 8 * v11);
    v14 = v12;
    v119 = sub_1D1AD7DD8(v13, v14);
    if (v118)
    {

      return;
    }

    v5 = v10 + 2;
    if (v10 + 2 >= v6)
    {
      v8 = v109;
      if ((v119 & 1) == 0)
      {
LABEL_31:
        v11 = v5;
        goto LABEL_32;
      }
    }

    else
    {
      v106 = v10;
      v4 += 8 * v10 + 16;
      v115 = v6;
      do
      {
        v16 = *(v4 - 8);
        v17 = *v4;
        v18 = v16;
        v19 = [v17 v9[47]];
        if (v19 == [v18 v9[47]])
        {
          v20 = [v17 name];
          v21 = sub_1D1E6781C();
          v23 = v22;

          v24 = [v18 name];
          v25 = sub_1D1E6781C();
          v27 = v26;

          if (v21 == v25 && v23 == v27)
          {

            v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
            v6 = v115;
            if (v119)
            {
              v8 = v109;
              v10 = v106;
              goto LABEL_23;
            }
          }

          else
          {
            v29 = sub_1D1E6904C();

            v9 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
            v6 = v115;
            if ((v119 ^ v29))
            {
              goto LABEL_22;
            }
          }
        }

        else
        {
          v15 = [v17 v9[47]];

          if ((v119 ^ v15))
          {
            goto LABEL_22;
          }
        }

        v4 += 8;
        ++v5;
      }

      while (v6 != v5);
      v5 = v6;
LABEL_22:
      v8 = v109;
      v10 = v106;
      if ((v119 & 1) == 0)
      {
        goto LABEL_31;
      }
    }

LABEL_23:
    if (v5 < v10)
    {
      goto LABEL_144;
    }

    if (v10 < v5)
    {
      v30 = 8 * v5 - 8;
      v31 = 8 * v10;
      v11 = v5;
      v32 = v10;
      while (1)
      {
        if (v32 != --v5)
        {
          v34 = *a3;
          if (!*a3)
          {
            goto LABEL_150;
          }

          v33 = *(v34 + v31);
          *(v34 + v31) = *(v34 + v30);
          *(v34 + v30) = v33;
        }

        ++v32;
        v30 -= 8;
        v31 += 8;
        if (v32 >= v5)
        {
          goto LABEL_32;
        }
      }
    }

    goto LABEL_31;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_112:
  v5 = *a1;
  if (!*a1)
  {
    goto LABEL_153;
  }

  v4 = v8;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    v101 = v4;
  }

  else
  {
LABEL_147:
    v101 = sub_1D1E0BE44(v4);
  }

  v4 = *(v101 + 2);
  if (v4 < 2)
  {
LABEL_123:

    return;
  }

  while (*a3)
  {
    v102 = *&v101[16 * v4];
    v103 = v101;
    v104 = *&v101[16 * v4 + 24];
    sub_1D174922C((*a3 + 8 * v102), (*a3 + 8 * *&v101[16 * v4 + 16]), (*a3 + 8 * v104), v5);
    if (v118)
    {
      goto LABEL_123;
    }

    if (v104 < v102)
    {
      goto LABEL_140;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v103 = sub_1D1E0BE44(v103);
    }

    if (v4 - 2 >= *(v103 + 2))
    {
      goto LABEL_141;
    }

    v105 = &v103[16 * v4];
    *v105 = v102;
    *(v105 + 1) = v104;
    sub_1D1E0BDB8(v4 - 1);
    v101 = v103;
    v4 = *(v103 + 2);
    if (v4 <= 1)
    {
      goto LABEL_123;
    }
  }

LABEL_151:
  __break(1u);
LABEL_152:
  __break(1u);
LABEL_153:
  __break(1u);
}

uint64_t sub_1D1AE04A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v31 = a1;
  v10 = sub_1D1E676DC();
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
      sub_1D1AE3140(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v19 = sub_1D1E6775C();
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
      sub_1D1946EF8();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1D1AE1E78(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1D1AE0760(void *a1)
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
    v6 = sub_1D1E6878C();

    if (v6)
    {
      v7 = sub_1D1AE1D10(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v10 = sub_1D1E684EC();
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
    v15 = sub_1D1E684FC();

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
    sub_1D1947B44();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1D1AE2180(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1D1AE0910(uint64_t a1, void (*a2)(void))
{
  v5 = *v2;
  v6 = sub_1D1E691FC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (*(*(v5 + 48) + 8 * v8) != a1)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    a2();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + 8 * v8);
  sub_1D1AE2320(v8);
  result = v13;
  *v2 = v14;
  return result;
}

uint64_t sub_1D1AE0A10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AD8, &unk_1D1E6E820);
  MEMORY[0x1EEE9AC00](v61);
  v7 = &v46 - v6;
  v57 = sub_1D1E66A7C();
  v53 = *(v57 - 8);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for HomeState.Stream.StateSubscription.Reason(0);
  v54 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  v63 = *v3;
  sub_1D1E6920C();
  v62 = a1;
  sub_1D1AE37A8(a1, v19, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v21 = *(*(v20 - 8) + 48);
  v22 = v21(v19, 3, v20);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = 3;
    }

    goto LABEL_8;
  }

  if (v22)
  {
    v28 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v28);
    goto LABEL_9;
  }

  v51 = a2;
  v23 = v53;
  v24 = *(v53 + 32);
  v48 = v3;
  v25 = v57;
  v24(v11, v19, v57);
  MEMORY[0x1D3892850](1);
  sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v26 = v23;
  a2 = v51;
  v27 = v25;
  v3 = v48;
  (*(v26 + 8))(v11, v27);
LABEL_9:
  v29 = sub_1D1E6926C();
  v30 = -1 << *(v63 + 32);
  v31 = v29 & ~v30;
  v60 = v63 + 56;
  if (((*(v63 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
  {
    v40 = 1;
    return (*(v54 + 56))(a2, v40, 1, v12);
  }

  v47 = v12;
  v48 = v3;
  v51 = a2;
  v58 = ~v30;
  v59 = *(v54 + 72);
  v55 = (v53 + 8);
  v49 = (v53 + 32);
  v32 = v56;
  v50 = v21;
  while (1)
  {
    v33 = v59 * v31;
    sub_1D1AE37A8(*(v63 + 48) + v59 * v31, v17, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v34 = *(v61 + 48);
    sub_1D1AE37A8(v17, v7, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    sub_1D1AE37A8(v62, &v7[v34], type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    v35 = v21(v7, 3, v20);
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        sub_1D1AE3810(v17, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        if (v21(&v7[v34], 3, v20) == 2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_1D1AE3810(v17, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
        if (v21(&v7[v34], 3, v20) == 3)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_21;
    }

    if (v35)
    {
      sub_1D1AE3810(v17, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      if (v21(&v7[v34], 3, v20) == 1)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    sub_1D1AE37A8(v7, v32, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    if (!v21(&v7[v34], 3, v20))
    {
      break;
    }

    sub_1D1AE3810(v17, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    (*v55)(v32, v57);
LABEL_21:
    sub_1D1741A30(v7, &qword_1EC642AD8, &unk_1D1E6E820);
LABEL_22:
    v31 = (v31 + 1) & v58;
    if (((*(v60 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
      v40 = 1;
      a2 = v51;
      goto LABEL_30;
    }
  }

  v36 = v52;
  v37 = v57;
  (*v49)(v52, &v7[v34], v57);
  LODWORD(v53) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v38 = *v55;
  v39 = v36;
  v32 = v56;
  (*v55)(v39, v37);
  sub_1D1AE3810(v17, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v38(v32, v37);
  v21 = v50;
  if ((v53 & 1) == 0)
  {
    sub_1D1AE3810(v7, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    goto LABEL_22;
  }

LABEL_27:
  sub_1D1AE3810(v7, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v41 = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v41;
  v64 = *v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D1948FDC();
    v43 = v64;
  }

  v44 = *(v43 + 48) + v33;
  a2 = v51;
  sub_1D1AE3870(v44, v51, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  sub_1D1AE24A4(v31, type metadata accessor for HomeState.Stream.StateSubscription.Reason, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v40 = 0;
  *v41 = v64;
LABEL_30:
  v12 = v47;
  return (*(v54 + 56))(a2, v40, 1, v12);
}

uint64_t sub_1D1AE11B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A00, &qword_1D1E97330);
  MEMORY[0x1EEE9AC00](v61);
  v7 = &v46 - v6;
  v57 = sub_1D1E66A7C();
  v53 = *(v57 - 8);
  v8 = MEMORY[0x1EEE9AC00](v57);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v46 - v10;
  v12 = type metadata accessor for DataModel.StateSubscription.Reason(0);
  v54 = *(v12 - 8);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v46 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v46 - v18;
  v63 = *v3;
  sub_1D1E6920C();
  v62 = a1;
  sub_1D1AE37A8(a1, v19, type metadata accessor for DataModel.StateSubscription.Reason);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v21 = *(*(v20 - 8) + 48);
  v22 = v21(v19, 3, v20);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      v28 = 2;
    }

    else
    {
      v28 = 3;
    }

    goto LABEL_8;
  }

  if (v22)
  {
    v28 = 0;
LABEL_8:
    MEMORY[0x1D3892850](v28);
    goto LABEL_9;
  }

  v51 = a2;
  v23 = v53;
  v24 = *(v53 + 32);
  v48 = v3;
  v25 = v57;
  v24(v11, v19, v57);
  MEMORY[0x1D3892850](1);
  sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v26 = v23;
  a2 = v51;
  v27 = v25;
  v3 = v48;
  (*(v26 + 8))(v11, v27);
LABEL_9:
  v29 = sub_1D1E6926C();
  v30 = -1 << *(v63 + 32);
  v31 = v29 & ~v30;
  v60 = v63 + 56;
  if (((*(v63 + 56 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
  {
    v40 = 1;
    return (*(v54 + 56))(a2, v40, 1, v12);
  }

  v47 = v12;
  v48 = v3;
  v51 = a2;
  v58 = ~v30;
  v59 = *(v54 + 72);
  v55 = (v53 + 8);
  v49 = (v53 + 32);
  v32 = v56;
  v50 = v21;
  while (1)
  {
    v33 = v59 * v31;
    sub_1D1AE37A8(*(v63 + 48) + v59 * v31, v17, type metadata accessor for DataModel.StateSubscription.Reason);
    v34 = *(v61 + 48);
    sub_1D1AE37A8(v17, v7, type metadata accessor for DataModel.StateSubscription.Reason);
    sub_1D1AE37A8(v62, &v7[v34], type metadata accessor for DataModel.StateSubscription.Reason);
    v35 = v21(v7, 3, v20);
    if (v35 > 1)
    {
      if (v35 == 2)
      {
        sub_1D1AE3810(v17, type metadata accessor for DataModel.StateSubscription.Reason);
        if (v21(&v7[v34], 3, v20) == 2)
        {
          goto LABEL_27;
        }
      }

      else
      {
        sub_1D1AE3810(v17, type metadata accessor for DataModel.StateSubscription.Reason);
        if (v21(&v7[v34], 3, v20) == 3)
        {
          goto LABEL_27;
        }
      }

      goto LABEL_21;
    }

    if (v35)
    {
      sub_1D1AE3810(v17, type metadata accessor for DataModel.StateSubscription.Reason);
      if (v21(&v7[v34], 3, v20) == 1)
      {
        goto LABEL_27;
      }

      goto LABEL_21;
    }

    sub_1D1AE37A8(v7, v32, type metadata accessor for DataModel.StateSubscription.Reason);
    if (!v21(&v7[v34], 3, v20))
    {
      break;
    }

    sub_1D1AE3810(v17, type metadata accessor for DataModel.StateSubscription.Reason);
    (*v55)(v32, v57);
LABEL_21:
    sub_1D1741A30(v7, &qword_1EC642A00, &qword_1D1E97330);
LABEL_22:
    v31 = (v31 + 1) & v58;
    if (((*(v60 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
    {
      v40 = 1;
      a2 = v51;
      goto LABEL_30;
    }
  }

  v36 = v52;
  v37 = v57;
  (*v49)(v52, &v7[v34], v57);
  LODWORD(v53) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v38 = *v55;
  v39 = v36;
  v32 = v56;
  (*v55)(v39, v37);
  sub_1D1AE3810(v17, type metadata accessor for DataModel.StateSubscription.Reason);
  v38(v32, v37);
  v21 = v50;
  if ((v53 & 1) == 0)
  {
    sub_1D1AE3810(v7, type metadata accessor for DataModel.StateSubscription.Reason);
    goto LABEL_22;
  }

LABEL_27:
  sub_1D1AE3810(v7, type metadata accessor for DataModel.StateSubscription.Reason);
  v41 = v48;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v43 = *v41;
  v64 = *v41;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_1D1949C24();
    v43 = v64;
  }

  v44 = *(v43 + 48) + v33;
  a2 = v51;
  sub_1D1AE3870(v44, v51, type metadata accessor for DataModel.StateSubscription.Reason);
  sub_1D1AE24A4(v31, type metadata accessor for DataModel.StateSubscription.Reason, type metadata accessor for DataModel.StateSubscription.Reason);
  v40 = 0;
  *v41 = v64;
LABEL_30:
  v12 = v47;
  return (*(v54 + 56))(a2, v40, 1, v12);
}

uint64_t sub_1D1AE1958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642FE8, &qword_1D1EB2A90);
  MEMORY[0x1EEE9AC00](v37);
  v5 = &v29 - v4;
  v6 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v29 - v11;
  v31 = v2;
  v13 = *v2;
  sub_1D1E6920C();
  v38 = a1;
  sub_1D1AE37A8(a1, v12, type metadata accessor for WriteInProgressStatusViewModel.ID);
  MEMORY[0x1D3892850](0);
  v14 = sub_1D1E66A7C();
  sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v15 = *(*(v14 - 8) + 8);
  v15(v12, v14);
  v16 = sub_1D1E6926C();
  v35 = v13 + 56;
  v36 = v13;
  v17 = -1 << *(v13 + 32);
  v18 = v16 & ~v17;
  if ((*(v13 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v29 = v7;
    v30 = v6;
    v33 = ~v17;
    v34 = *(v7 + 72);
    while (1)
    {
      v19 = v34 * v18;
      sub_1D1AE37A8(*(v36 + 48) + v34 * v18, v10, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v20 = *(v37 + 48);
      sub_1D1AE37A8(v10, v5, type metadata accessor for WriteInProgressStatusViewModel.ID);
      sub_1D1AE37A8(v38, &v5[v20], type metadata accessor for WriteInProgressStatusViewModel.ID);
      v21 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      sub_1D1AE3810(v10, type metadata accessor for WriteInProgressStatusViewModel.ID);
      v15(&v5[v20], v14);
      v15(v5, v14);
      if (v21)
      {
        break;
      }

      v18 = (v18 + 1) & v33;
      if (((*(v35 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) == 0)
      {
        v22 = 1;
        v23 = v32;
        v6 = v30;
        goto LABEL_10;
      }
    }

    v24 = v31;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v24;
    v39 = *v24;
    v6 = v30;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1947938();
      v26 = v39;
    }

    v27 = v32;
    sub_1D1AE3870(*(v26 + 48) + v19, v32, type metadata accessor for WriteInProgressStatusViewModel.ID);
    sub_1D1AE2920(v18);
    v23 = v27;
    v22 = 0;
    *v24 = v39;
LABEL_10:
    v7 = v29;
  }

  else
  {
    v22 = 1;
    v23 = v32;
  }

  return (*(v7 + 56))(v23, v22, 1, v6);
}

uint64_t sub_1D1AE1D10(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1D1E6873C();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1D176BA18(v5, v4);
  v15 = v6;

  v7 = sub_1D1E684EC();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1D1E684FC();

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
  sub_1D1AE2180(v9);
  result = sub_1D1E684FC();
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

uint64_t sub_1D1AE1E78(int64_t a1)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  result = MEMORY[0x1EEE9AC00](v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = sub_1D1E686AC();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v24 = sub_1D1E676DC();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
}

unint64_t sub_1D1AE2180(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D1E686AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1D1E684EC();

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

unint64_t sub_1D1AE2320(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1D1E686AC();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = sub_1D1E691FC() & v7;
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

uint64_t sub_1D1AE24A4(int64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void))
{
  v44 = sub_1D1E66A7C();
  v7 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v43 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = a2(0);
  v9 = MEMORY[0x1EEE9AC00](v46);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = &v40 - v13;
  v15 = *v3;
  v16 = *v3 + 56;
  v17 = -1 << *(*v3 + 32);
  v18 = (a1 + 1) & ~v17;
  if (((1 << v18) & *(v16 + 8 * (v18 >> 6))) != 0)
  {
    v47 = v7;
    v19 = v12;
    v20 = ~v17;

    v21 = sub_1D1E686AC();
    if ((*(v16 + 8 * (v18 >> 6)) & (1 << v18)) != 0)
    {
      v48 = (v21 + 1) & v20;
      v22 = *(v19 + 72);
      v40 = (v47 + 8);
      v41 = (v47 + 32);
      v23 = v45;
      v47 = v22;
      v42 = v20;
      do
      {
        v24 = v22 * v18;
        sub_1D1AE37A8(*(v15 + 48) + v22 * v18, v14, a3);
        sub_1D1E6920C();
        sub_1D1AE37A8(v14, v23, a3);
        v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
        v26 = (*(*(v25 - 8) + 48))(v23, 3, v25);
        if (v26 > 1)
        {
          if (v26 == 2)
          {
            v33 = 2;
          }

          else
          {
            v33 = 3;
          }
        }

        else
        {
          if (!v26)
          {
            v27 = v43;
            v28 = v23;
            v29 = v16;
            v30 = v44;
            (*v41)(v43, v28, v44);
            MEMORY[0x1D3892850](1);
            sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
            sub_1D1E676EC();
            v31 = v27;
            v20 = v42;
            v32 = v30;
            v16 = v29;
            v23 = v45;
            (*v40)(v31, v32);
            goto LABEL_15;
          }

          v33 = 0;
        }

        MEMORY[0x1D3892850](v33);
LABEL_15:
        v34 = sub_1D1E6926C();
        sub_1D1AE3810(v14, a3);
        v35 = v34 & v20;
        if (a1 >= v48)
        {
          v22 = v47;
          if (v35 < v48)
          {
            goto LABEL_6;
          }

LABEL_19:
          if (a1 < v35)
          {
            goto LABEL_6;
          }

          goto LABEL_20;
        }

        v22 = v47;
        if (v35 < v48)
        {
          goto LABEL_19;
        }

LABEL_20:
        v36 = v22 * a1;
        if (v22 * a1 < v24 || *(v15 + 48) + v22 * a1 >= (*(v15 + 48) + v24 + v22))
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else
        {
          a1 = v18;
          if (v36 == v24)
          {
            goto LABEL_6;
          }

          swift_arrayInitWithTakeBackToFront();
        }

        a1 = v18;
LABEL_6:
        v18 = (v18 + 1) & v20;
      }

      while (((*(v16 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18) & 1) != 0);
    }

    *(v16 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v16 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v37 = *(v15 + 16);
  v38 = __OFSUB__(v37, 1);
  v39 = v37 - 1;
  if (v38)
  {
    __break(1u);
  }

  else
  {
    *(v15 + 16) = v39;
    ++*(v15 + 36);
  }

  return result;
}

uint64_t sub_1D1AE2920(unint64_t a1)
{
  v29 = type metadata accessor for WriteInProgressStatusViewModel.ID(0);
  v3 = *(v29 - 8);
  v4 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v4);
  v33 = &v28 - v7;
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = a1;
    v14 = sub_1D1E686AC();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v31 = (v14 + 1) & v12;
      v32 = v9;
      v15 = *(v3 + 72);
      v16 = v8;
      v30 = v15;
      while (1)
      {
        v17 = v15 * v11;
        v18 = v33;
        sub_1D1AE37A8(*(v16 + 48) + v15 * v11, v33, type metadata accessor for WriteInProgressStatusViewModel.ID);
        v19 = v16;
        sub_1D1E6920C();
        v20 = v34;
        sub_1D1AE37A8(v18, v34, type metadata accessor for WriteInProgressStatusViewModel.ID);
        MEMORY[0x1D3892850](0);
        v21 = sub_1D1E66A7C();
        sub_1D1AE3140(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        sub_1D1E676EC();
        (*(*(v21 - 8) + 8))(v20, v21);
        v22 = sub_1D1E6926C();
        sub_1D1AE3810(v18, type metadata accessor for WriteInProgressStatusViewModel.ID);
        v23 = v22 & v12;
        if (v13 >= v31)
        {
          if (v23 < v31)
          {
            v16 = v19;
          }

          else
          {
            v16 = v19;
            if (v13 >= v23)
            {
              goto LABEL_13;
            }
          }
        }

        else
        {
          v16 = v19;
          if (v23 >= v31 || v13 >= v23)
          {
LABEL_13:
            v15 = v30;
            v24 = v30 * v13;
            if (v30 * v13 < v17 || *(v16 + 48) + v30 * v13 >= (*(v16 + 48) + v17 + v30))
            {
              swift_arrayInitWithTakeFrontToBack();
              v13 = v11;
            }

            else
            {
              v13 = v11;
              if (v24 != v17)
              {
                swift_arrayInitWithTakeBackToFront();
                v13 = v11;
              }
            }

            goto LABEL_6;
          }
        }

        v15 = v30;
LABEL_6:
        v11 = (v11 + 1) & v12;
        v9 = v32;
        if (((*(v32 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
        {

          goto LABEL_21;
        }
      }
    }

    v16 = v8;
LABEL_21:
    *(v9 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v13) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
    v16 = v8;
  }

  v25 = *(v16 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v27;
    ++*(v16 + 36);
  }

  return result;
}

uint64_t _s13HomeDataModel0A5StateV6StreamC0D12SubscriptionV6ReasonO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for HomeState.Stream.StateSubscription.Reason(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AD8, &unk_1D1E6E820);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22 - v13;
  v15 = *(v12 + 56);
  sub_1D1AE37A8(a1, &v22 - v13, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  sub_1D1AE37A8(a2, &v14[v15], type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
  v17 = *(*(v16 - 8) + 48);
  v18 = v17(v14, 3, v16);
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      if (v17(&v14[v15], 3, v16) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v17(&v14[v15], 3, v16) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_1D1741A30(v14, &qword_1EC642AD8, &unk_1D1E6E820);
    v19 = 0;
    return v19 & 1;
  }

  if (!v18)
  {
    sub_1D1AE37A8(v14, v10, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
    if (!v17(&v14[v15], 3, v16))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v19 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
      v21 = *(v5 + 8);
      v21(v7, v4);
      v21(v10, v4);
      sub_1D1AE3810(v14, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
      return v19 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_11;
  }

  if (v17(&v14[v15], 3, v16) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_1D1AE3810(v14, type metadata accessor for HomeState.Stream.StateSubscription.Reason);
  v19 = 1;
  return v19 & 1;
}

uint64_t _s13HomeDataModel0A5StateV6StreamC0D12SubscriptionV0A13SpecificationO2eeoiySbAI_AItFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (!*a1)
  {
    if (!v3)
    {
      v2 = 0;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 == 1)
  {
    if (v3 == 1)
    {
      v2 = 1;
      v4 = 1;
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v2 != 2)
  {
    if (v3 >= 3)
    {
      sub_1D1A82B50(*a2);
      sub_1D1A82B50(v2);
      v4 = sub_1D17A6E98(v2, v3);
      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (v3 != 2)
  {
LABEL_11:
    sub_1D1A82B50(*a2);
    sub_1D1A82B50(v2);
    v4 = 0;
    goto LABEL_12;
  }

  v4 = 1;
  v2 = 2;
LABEL_12:
  sub_1D1A82B60(v2);
  sub_1D1A82B60(v3);
  return v4 & 1;
}

uint64_t type metadata accessor for HomeState.Stream.StateSubscription.Reason(uint64_t a1)
{
  result = qword_1EC64A988;
  if (!qword_1EC64A988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1AE3140(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1D1AE3188(uint64_t a1)
{
  v2 = v1;
  if (qword_1EE07A070 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EE081480);
  v5 = sub_1D1E6707C();
  v6 = sub_1D1E6835C();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D16EC000, v5, v6, "Releasing provided assertion.", v7, 2u);
    MEMORY[0x1D3893640](v7, -1, -1);
  }

  return [v2 _endActiveAssertion_];
}

unint64_t sub_1D1AE32DC()
{
  result = qword_1EC64A960;
  if (!qword_1EC64A960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A960);
  }

  return result;
}

unint64_t sub_1D1AE3334()
{
  result = qword_1EC64A968;
  if (!qword_1EC64A968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A968);
  }

  return result;
}

unint64_t sub_1D1AE338C()
{
  result = qword_1EC64A970;
  if (!qword_1EC64A970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A970);
  }

  return result;
}

unint64_t sub_1D1AE33E0()
{
  result = qword_1EC64A978;
  if (!qword_1EC64A978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A978);
  }

  return result;
}

unint64_t sub_1D1AE3438()
{
  result = qword_1EC64A980;
  if (!qword_1EC64A980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64A980);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel0A5StateV6StreamC0D12SubscriptionV0A13SpecificationO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D1AE34A4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1D1AE34EC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D1AE3568(uint64_t a1)
{
  sub_1D1AE35C0();
  v2 = v1;
  if (v3 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v2;
}

void sub_1D1AE35C0()
{
  if (!qword_1EE07B5F0)
  {
    v0 = sub_1D1E66A7C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE07B5F0);
    }
  }
}

uint64_t sub_1D1AE3608(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1AE3664(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1D1AE36D4(uint64_t a1)
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

  return sub_1D1ADEC14(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1AE37A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AE3810(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1AE3870(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AE38D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1ADE588(a1, v4, v5, v6, v7, v8);
}

uint64_t static HomeState.Stream.homeStates()()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D1AC3C3C;

  return sub_1D1AE7F94(sub_1D1AE3AB8, 0);
}

uint64_t sub_1D1AE3AB8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642498 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1EC64F560;
  *a1 = qword_1EC64F558;
  *(a1 + 8) = v1;
  v2 = byte_1EC64F568;
  *(a1 + 16) = byte_1EC64F568;

  return sub_1D186145C(v1, v2);
}

uint64_t static HomeState.Stream.refreshHomeStatesIfNeeded(coverageProvider:)(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D19C8EA0;

  return sub_1D1AE7F94(a1, a2);
}

uint64_t static HomeState.Stream.refreshHomeStatesIfNeeded(coverageConfig:)(uint64_t a1)
{
  *(v1 + 16) = *a1;
  *(v1 + 72) = *(a1 + 16);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC64ABE8;
  *(v1 + 32) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE3C9C, v2, 0);
}

uint64_t sub_1D1AE3C9C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 72);
  v4 = swift_allocObject();
  *(v0 + 40) = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  *(v4 + 32) = v3;
  sub_1D1AC3828(v1, v2, v3);
  v5 = swift_allocObject();
  *(v0 + 48) = v5;
  *(v5 + 16) = sub_1D1AE889C;
  *(v5 + 24) = v4;

  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_1D1AE3DD8;

  return sub_1D1AE7F94(sub_1D1AE88B0, v5);
}

uint64_t sub_1D1AE3DD8(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 64) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE3F0C, v2, 0);
}

uint64_t sub_1D1AE3F0C()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 64);

  return v1(v2);
}

uint64_t static HomeState.Stream.refreshHomeStatesIfNeeded(defaultingCoverageProvider:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE4008, v3, 0);
}

uint64_t sub_1D1AE4008()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[5] = v4;
  *v4 = v0;
  v4[1] = sub_1D1AE40F8;

  return sub_1D1AE7F94(sub_1D1AE8E98, v3);
}

uint64_t sub_1D1AE40F8(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void *sub_1D1AE4210@<X0>(void *(*a1)(void *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  result = a1(v7);
  v4 = v7[0];
  if (v7[0])
  {
    v5 = v8;
    v6 = v7[1];
  }

  else
  {
    if (qword_1EE07AE38 != -1)
    {
      swift_once();
    }

    if (qword_1EE07AE40 == 4)
    {
      v4 = sub_1D179B6E8(&unk_1F4D65C08);
      result = swift_arrayDestroy();
      if (qword_1EE07CD90 != -1)
      {
        result = swift_once();
      }

      v6 = 0;
      v5 = -1;
    }

    else
    {
      if (qword_1EC642490 != -1)
      {
        swift_once();
      }

      v4 = qword_1EC64F540;
      v6 = *algn_1EC64F548;
      v5 = byte_1EC64F550;

      result = sub_1D186145C(v6, v5);
    }
  }

  *a2 = v4;
  *(a2 + 8) = v6;
  *(a2 + 16) = v5;
  return result;
}

uint64_t sub_1D1AE4364()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v1[6] = swift_task_alloc();
  v2 = sub_1D1E66FDC();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC64ABE8;
  v1[11] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE44A0, v3, 0);
}

uint64_t sub_1D1AE44A0()
{
  if (qword_1EC642330 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6701C();
  __swift_project_value_buffer(v1, qword_1EC64A2A8);
  sub_1D1E66FCC();
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    v5 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v5, "HomeManagerRefresh", "", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v6 = v0[9];
  v7 = v0[10];
  v8 = v0[7];
  v9 = v0[8];
  v11 = v0[5];
  v10 = v0[6];

  (*(v9 + 16))(v6, v7, v8);
  sub_1D1E6705C();
  swift_allocObject();
  v12 = sub_1D1E6704C();
  v0[12] = v12;
  (*(v9 + 8))(v7, v8);
  swift_beginAccess();
  v13 = *(v11 + 64);
  v0[13] = v13;
  v14 = v13;
  sub_1D1E67E3C();
  v15 = sub_1D1E67E7C();
  (*(*(v15 - 8) + 56))(v10, 0, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = v13;
  v16[5] = v12;
  v17 = v14;

  v18 = sub_1D1B1DFC0(0, 0, v10, &unk_1D1E97420, v16);
  v0[14] = v18;
  sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);
  v19 = swift_task_alloc();
  v0[15] = v19;
  *v19 = v0;
  v19[1] = sub_1D1AE4780;
  v20 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v19, v18, v20);
}

uint64_t sub_1D1AE4780()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x1EEE6DFA0](sub_1D1AE48AC, v1, 0);
}

uint64_t sub_1D1AE48AC()
{
  v1 = *(v0 + 104);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1AE4938(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v4 = sub_1D1E66A7C();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC64ABE8;
  v3[17] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE4A34, v5, 0);
}

uint64_t sub_1D1AE4A34()
{
  v48 = v0;
  v1 = *(v0 + 104);
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1821898();
    sub_1D1E67C1C();

    v47[0] = sub_1D1749970(v4);
    sub_1D1747DDC(v47);

    v5 = v47[0];
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  *(v0 + 144) = v5;
  if (v5 >> 62)
  {
    v6 = sub_1D1E6873C();
    *(v0 + 152) = v6;
    if (v6)
    {
      goto LABEL_6;
    }

LABEL_27:

    v40 = *(v0 + 8);

    return v40();
  }

  v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 152) = v6;
  if (!v6)
  {
    goto LABEL_27;
  }

LABEL_6:
  if (v6 < 1)
  {
    __break(1u);
  }

  else
  {
    v7 = 0;
    v8 = 0x1EC642000uLL;
    while (1)
    {
      *(v0 + 160) = v7;
      v9 = *(v0 + 144);
      if ((v9 & 0xC000000000000001) != 0)
      {
        v10 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        v10 = *(v9 + 8 * v7 + 32);
      }

      v11 = v10;
      *(v0 + 168) = v10;
      (*(v0 + 88))();
      v13 = *(v0 + 40);
      v12 = *(v0 + 48);
      *(v0 + 176) = v13;
      *(v0 + 184) = v12;
      v14 = *(v0 + 56);
      *(v0 + 57) = v14;
      if (*(v8 + 1096) != -1)
      {
        swift_once();
      }

      v15 = sub_1D1E6709C();
      __swift_project_value_buffer(v15, qword_1EC6BE298);
      v16 = v11;

      sub_1D186145C(v12, v14);
      v17 = sub_1D1E6707C();
      v18 = sub_1D1E6835C();

      sub_1D1861470(v12, v14);
      if (os_log_type_enabled(v17, v18))
      {
        log = v17;
        v20 = *(v0 + 120);
        v19 = *(v0 + 128);
        v42 = *(v0 + 112);
        v21 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v47[0] = v44;
        *v21 = 136315650;
        v43 = v18;
        v22 = [v16 name];
        v46 = v16;
        v23 = sub_1D1E6781C();
        v25 = v24;

        v26 = sub_1D1B1312C(v23, v25, v47);

        *(v21 + 4) = v26;
        *(v21 + 12) = 2082;
        v27 = [v46 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1AE8998(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v28 = sub_1D1E68FAC();
        v30 = v29;
        (*(v20 + 8))(v19, v42);
        v8 = 0x1EC642000;
        v31 = sub_1D1B1312C(v28, v30, v47);

        *(v21 + 14) = v31;
        *(v21 + 22) = 2082;
        v16 = v46;
        *(v0 + 64) = v13;
        *(v0 + 72) = v12;
        *(v0 + 80) = v14;
        v32 = SnapshotCoverageConfig.debugDescription.getter();
        v34 = sub_1D1B1312C(v32, v33, v47);

        *(v21 + 24) = v34;
        v17 = log;
        _os_log_impl(&dword_1D16EC000, log, v43, "Considering refeshing snapshots for home %s (%{public}s) with coverage %{public}s", v21, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v44, -1, -1);
        MEMORY[0x1D3893640](v21, -1, -1);
      }

      if (*(v13 + 16))
      {
        break;
      }

      if (v14 != 3)
      {
        if (v14 >= 3)
        {
          LOBYTE(v14) = -1;
          sub_1D186145C(v12, 255);
          sub_1D1861470(v12, 255);
          v35 = 0;
          v36 = 3;
        }

        else
        {
          sub_1D186145C(v12, v14);
          sub_1D186145C(v12, v14);

          v35 = v12;
          v36 = v14;
        }

        sub_1D1861470(v35, v36);
        break;
      }

      sub_1D186145C(v12, 3);

      sub_1D1861470(0, 3);
      sub_1D1861470(v12, 3);
      sub_1D1861470(v12, 3);

      sub_1D1861470(v12, 3);

      v7 = *(v0 + 160) + 1;
      if (v7 == *(v0 + 152))
      {
        goto LABEL_27;
      }
    }

    v37 = *(v0 + 104);
    sub_1D1AE8998(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
    v38 = swift_task_alloc();
    *(v0 + 192) = v38;
    *(v38 + 16) = v13;
    *(v38 + 24) = v12;
    *(v38 + 32) = v14;
    *(v38 + 40) = v37;
    *(v38 + 48) = v16;
    v39 = swift_task_alloc();
    *(v0 + 200) = v39;
    *v39 = v0;
    v39[1] = sub_1D1AE5098;
  }

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1D1AE5098()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 136);
  v3 = *(*v0 + 57);

  sub_1D1861470(v1, v3);

  return MEMORY[0x1EEE6DFA0](sub_1D1AE5214, v2, 0);
}

uint64_t sub_1D1AE5214()
{
  v42 = v0;

  v1 = *(v0 + 160) + 1;
  if (v1 == *(v0 + 152))
  {
LABEL_2:

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    v4 = 0x1EC642000uLL;
    while (1)
    {
      *(v0 + 160) = v1;
      v5 = *(v0 + 144);
      if ((v5 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        v6 = *(v5 + 8 * v1 + 32);
      }

      v7 = v6;
      *(v0 + 168) = v6;
      (*(v0 + 88))();
      v9 = *(v0 + 40);
      v8 = *(v0 + 48);
      *(v0 + 176) = v9;
      *(v0 + 184) = v8;
      v10 = *(v0 + 56);
      *(v0 + 57) = v10;
      if (*(v4 + 1096) != -1)
      {
        swift_once();
      }

      v11 = sub_1D1E6709C();
      __swift_project_value_buffer(v11, qword_1EC6BE298);
      v12 = v7;

      sub_1D186145C(v8, v10);
      v13 = sub_1D1E6707C();
      v14 = sub_1D1E6835C();

      sub_1D1861470(v8, v10);
      if (os_log_type_enabled(v13, v14))
      {
        log = v13;
        v16 = *(v0 + 120);
        v15 = *(v0 + 128);
        v36 = *(v0 + 112);
        v17 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        v41 = v38;
        *v17 = 136315650;
        v37 = v14;
        v18 = [v12 name];
        v40 = v12;
        v19 = sub_1D1E6781C();
        v21 = v20;

        v22 = sub_1D1B1312C(v19, v21, &v41);

        *(v17 + 4) = v22;
        *(v17 + 12) = 2082;
        v23 = [v40 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1AE8998(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v24 = sub_1D1E68FAC();
        v26 = v25;
        (*(v16 + 8))(v15, v36);
        v4 = 0x1EC642000;
        v27 = sub_1D1B1312C(v24, v26, &v41);

        *(v17 + 14) = v27;
        *(v17 + 22) = 2082;
        v12 = v40;
        *(v0 + 64) = v9;
        *(v0 + 72) = v8;
        *(v0 + 80) = v10;
        v28 = SnapshotCoverageConfig.debugDescription.getter();
        v30 = sub_1D1B1312C(v28, v29, &v41);

        *(v17 + 24) = v30;
        v13 = log;
        _os_log_impl(&dword_1D16EC000, log, v37, "Considering refeshing snapshots for home %s (%{public}s) with coverage %{public}s", v17, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v38, -1, -1);
        MEMORY[0x1D3893640](v17, -1, -1);
      }

      if (*(v9 + 16))
      {
        break;
      }

      if (v10 != 3)
      {
        if (v10 >= 3)
        {
          LOBYTE(v10) = -1;
          sub_1D186145C(v8, 255);
          sub_1D1861470(v8, 255);
          v31 = 0;
          v32 = 3;
        }

        else
        {
          sub_1D186145C(v8, v10);
          sub_1D186145C(v8, v10);

          v31 = v8;
          v32 = v10;
        }

        sub_1D1861470(v31, v32);
        break;
      }

      sub_1D186145C(v8, 3);

      sub_1D1861470(0, 3);
      sub_1D1861470(v8, 3);
      sub_1D1861470(v8, 3);

      sub_1D1861470(v8, 3);

      v1 = *(v0 + 160) + 1;
      if (v1 == *(v0 + 152))
      {
        goto LABEL_2;
      }
    }

    v33 = *(v0 + 104);
    sub_1D1AE8998(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
    v34 = swift_task_alloc();
    *(v0 + 192) = v34;
    *(v34 + 16) = v9;
    *(v34 + 24) = v8;
    *(v34 + 32) = v10;
    *(v34 + 40) = v33;
    *(v34 + 48) = v12;
    v35 = swift_task_alloc();
    *(v0 + 200) = v35;
    *v35 = v0;
    v35[1] = sub_1D1AE5098;

    return MEMORY[0x1EEE6DDE8]();
  }
}

uint64_t sub_1D1AE5784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 64) = a5;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v7 + 56) = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE5860, v8, 0);
}

uint64_t sub_1D1AE5860()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = *(v0 + 24);
  v6 = *(v0 + 64);
  v7 = sub_1D1E67E7C();
  v14 = *(*(v7 - 8) + 56);
  v14(v1, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  *(v8 + 48) = v6;
  *(v8 + 56) = v3;
  *(v8 + 64) = v2;

  sub_1D186145C(v4, v6);

  v9 = v2;
  sub_1D1DE256C(v1, &unk_1D1E973F8, v8);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v14(v1, 1, 1, v7);
  v10 = swift_allocObject();
  *(v10 + 16) = 0;
  *(v10 + 24) = 0;
  *(v10 + 32) = v5;
  *(v10 + 40) = v4;
  *(v10 + 48) = v6;
  *(v10 + 56) = v3;
  *(v10 + 64) = v9;

  sub_1D186145C(v4, v6);

  v11 = v9;
  sub_1D1DE256C(v1, &unk_1D1E97408, v10);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1D1AE5A64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 56) = a6;
  *(v7 + 64) = a7;
  *(v7 + 33) = a5;
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1AE5A8C, 0, 0);
}

uint64_t sub_1D1AE5A8C()
{
  v1 = *(v0 + 40);
  if (*(v1 + 16))
  {
    v2 = *(v0 + 33);
    v3 = *(v0 + 48);
    *(v0 + 16) = v1;
    *(v0 + 24) = v3;
    *(v0 + 32) = v2;
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_1D1AE5B78;
    v5 = *(v0 + 64);

    return sub_1D1AE5C6C(v5, (v0 + 16));
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1D1AE5B78()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1AE5C6C(uint64_t a1, uint64_t *a2)
{
  *(v3 + 48) = a1;
  *(v3 + 56) = v2;
  *(v3 + 64) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v3 + 72) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  *(v3 + 80) = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  *(v3 + 88) = v5;
  *(v3 + 96) = *(v5 - 8);
  *(v3 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  *(v3 + 112) = swift_task_alloc();
  v6 = swift_task_alloc();
  v7 = *a2;
  v8 = a2[1];
  *(v3 + 120) = v6;
  *(v3 + 128) = v7;
  *(v3 + 136) = v8;
  *(v3 + 168) = *(a2 + 16);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v9 = qword_1EC64ABE8;
  *(v3 + 144) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE5E24, v9, 0);
}

uint64_t sub_1D1AE5E24()
{
  v1 = *(*(v0 + 56) + 24);
  v2 = [*(v0 + 48) uniqueIdentifier];
  sub_1D1E66A5C();

  swift_getKeyPath();
  *(v0 + 40) = v1;
  sub_1D1AE8998(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_1D1742188();
    v7 = *(v0 + 96);
    v6 = *(v0 + 104);
    v8 = *(v0 + 80);
    v9 = *(v0 + 88);
    if (v10)
    {
      v11 = v5;
      v25 = *(v4 + 56);
      v12 = type metadata accessor for HomeState(0);
      v13 = *(v12 - 8);
      sub_1D1AE8CD0(v25 + *(v13 + 72) * v11, v8, type metadata accessor for HomeState);
      (*(v7 + 8))(v6, v9);

      (*(v13 + 56))(v8, 0, 1, v12);
      goto LABEL_7;
    }

    (*(v7 + 8))(v6, v9);
  }

  else
  {
    v8 = *(v0 + 80);
    (*(*(v0 + 96) + 8))(*(v0 + 104), *(v0 + 88));
  }

  v12 = type metadata accessor for HomeState(0);
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
LABEL_7:
  v14 = *(v0 + 80);
  type metadata accessor for HomeState(0);
  v15 = 1;
  if (!(*(*(v12 - 8) + 48))(v14, 1, v12))
  {
    sub_1D1AE8CD0(v14, *(v0 + 120), type metadata accessor for StateSnapshot);
    v15 = 0;
    v14 = *(v0 + 80);
  }

  v17 = *(v0 + 112);
  v16 = *(v0 + 120);
  sub_1D1741A30(v14, &qword_1EC649148, &qword_1D1E96490);
  v18 = type metadata accessor for StateSnapshot(0);
  v19 = *(v18 - 8);
  (*(v19 + 56))(v16, v15, 1, v18);
  sub_1D1741C08(v16, v17, &unk_1EC649E30, &unk_1D1E91250);
  if ((*(v19 + 48))(v17, 1, v18) == 1)
  {
    sub_1D1741A30(*(v0 + 112), &unk_1EC649E30, &unk_1D1E91250);
LABEL_15:
    *(v0 + 152) = *(*(v0 + 56) + 144);

    return MEMORY[0x1EEE6DFA0](sub_1D1AE62FC, 0, 0);
  }

  v20 = *(v0 + 128);
  v21 = *(v0 + 112);
  v22 = *v21;

  sub_1D1AE8C70(v21, type metadata accessor for StateSnapshot);
  LOBYTE(v20) = sub_1D192A9D0(v22, v20);

  if ((v20 & 1) == 0)
  {
    goto LABEL_15;
  }

  sub_1D1741A30(*(v0 + 120), &unk_1EC649E30, &unk_1D1E91250);

  v23 = *(v0 + 8);

  return v23();
}

uint64_t sub_1D1AE62FC()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 48);
  **(v0 + 72) = v2;
  swift_storeEnumTagMultiPayload();
  v3 = v2;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_1D1AE63E0;
  v5 = *(v0 + 136);
  v6 = *(v0 + 72);
  v7 = *(v0 + 168);

  return sub_1D1AB6894(v6, v1, v5, v7, 0);
}

uint64_t sub_1D1AE63E0()
{
  v1 = *(*v0 + 144);
  v2 = *(*v0 + 72);

  sub_1D1AE8C70(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AE6534, v1, 0);
}

uint64_t sub_1D1AE6534()
{
  sub_1D1741A30(*(v0 + 120), &unk_1EC649E30, &unk_1D1E91250);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AE65E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 56) = a5;
  *(v7 + 16) = a3;
  *(v7 + 24) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1AE6610, 0, 0);
}

uint64_t sub_1D1AE6610(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (SnapshotCoverageConfig.matterSnapshotHasAnyCoverage.getter())
  {
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v5 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AE66F0, v5, 0);
  }

  else
  {
    v6 = *(v4 + 8);

    return v6();
  }
}

uint64_t sub_1D1AE66F0()
{
  v13 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  v11 = *(v0 + 24);
  v12 = v2;
  sub_1D186145C(v11, v2);
  v3 = sub_1D1AE692C(v1, &v11);
  sub_1D1861470(v11, v12);
  if (v3)
  {
    v4 = *(v0 + 40);
    v5 = *(v0 + 16);
    v6 = swift_task_alloc();
    *(v0 + 48) = v6;
    *v6 = v0;
    v6[1] = sub_1D1AE682C;
    v7 = *(v0 + 24);
    v8 = *(v0 + 56);

    return sub_1D1AB6F80(v4, 0, 0, v5, v7, v8, 0);
  }

  else
  {
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_1D1AE682C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1AE692C(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v68[-v6];
  v8 = sub_1D1E66A7C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v68[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v68[-v13];
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v74 = &v68[-v16];
  v17 = *a2;
  v18 = *(a2 + 8);
  if (v18 == 255)
  {
    sub_1D186145C(*a2, 255);
    sub_1D1861470(v17, 255);
    sub_1D1861470(0, 3);
  }

  else
  {
    v78 = *a2;
    v79 = v18;
    v75 = 0;
    v76 = 3;
    sub_1D186145C(v17, v18);
    sub_1D186145C(v17, v18);
    v19 = _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(&v78, &v75);

    sub_1D1861470(v17, v18);
    if (v19)
    {
      if (qword_1EC642448 != -1)
      {
        swift_once();
      }

      v20 = sub_1D1E6709C();
      __swift_project_value_buffer(v20, qword_1EC6BE298);
      v21 = sub_1D1E6707C();
      v22 = sub_1D1E6831C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_1D16EC000, v21, v22, "Skipping matter snapshot because filter is noDevices", v23, 2u);
        MEMORY[0x1D3893640](v23, -1, -1);
      }

      v24 = 0;
      return v24 & 1;
    }
  }

  v72 = v12;
  v25 = *(v2 + 24);
  v26 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  swift_getKeyPath();
  v78 = v25;
  sub_1D1AE8998(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v27 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v28 = *(v25 + v27);
  v29 = *(v28 + 16);
  v73 = v9;
  if (!v29)
  {
    v71 = *(v9 + 8);
    v71(v14, v8);
LABEL_14:
    v34 = type metadata accessor for HomeState(0);
    (*(*(v34 - 8) + 56))(v7, 1, 1, v34);
    goto LABEL_15;
  }

  v30 = v8;

  v31 = sub_1D1742188();
  if ((v32 & 1) == 0)
  {

    v71 = *(v73 + 8);
    v71(v14, v8);
    goto LABEL_14;
  }

  v33 = v31;
  v71 = *(v28 + 56);
  v34 = type metadata accessor for HomeState(0);
  v35 = *(v34 - 8);
  v70 = a1;
  v36 = v35;
  sub_1D1AE8CD0(v71 + *(v35 + 72) * v33, v7, type metadata accessor for HomeState);
  v8 = v30;
  v71 = *(v73 + 8);
  v71(v14, v30);

  (*(v36 + 56))(v7, 0, 1, v34);
  a1 = v70;
LABEL_15:
  type metadata accessor for HomeState(0);
  v37 = 1;
  if (!(*(*(v34 - 8) + 48))(v7, 1, v34))
  {
    sub_1D1AE8CD0(&v7[*(v34 + 24)], v74, type metadata accessor for MatterStateSnapshot);
    v37 = 0;
  }

  sub_1D1741A30(v7, &qword_1EC649148, &qword_1D1E96490);
  v38 = type metadata accessor for MatterStateSnapshot(0);
  v39 = v74;
  (*(*(v38 - 8) + 56))(v74, v37, 1, v38);
  v40 = HMHome.allMatterNodeIDs.getter();
  v41 = sub_1D179D1E0(&unk_1F4D65C38);
  v42 = MEMORY[0x1EEE9AC00](v41);
  *&v68[-32] = v17;
  v68[-24] = v18;
  *&v68[-16] = v39;
  *&v68[-8] = v42;
  v24 = sub_1D18B5F74(sub_1D1AE8BE4, &v68[-48], v40);

  if (qword_1EC642448 != -1)
  {
    swift_once();
  }

  v43 = sub_1D1E6709C();
  __swift_project_value_buffer(v43, qword_1EC6BE298);
  sub_1D186145C(v17, v18);
  v44 = a1;
  v45 = sub_1D1E6707C();
  v46 = sub_1D1E6835C();

  sub_1D1861470(v17, v18);
  if (os_log_type_enabled(v45, v46))
  {
    v47 = v8;
    v48 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v77[0] = v70;
    *v48 = 67240962;
    *(v48 + 4) = v24 & 1;
    *(v48 + 8) = 2080;
    v49 = [v44 name];
    v50 = sub_1D1E6781C();
    v69 = v46;
    v51 = v50;
    v53 = v52;

    v54 = sub_1D1B1312C(v51, v53, v77);

    *(v48 + 10) = v54;
    *(v48 + 18) = 2080;
    v55 = [v44 uniqueIdentifier];
    v56 = v24;
    v57 = v72;
    sub_1D1E66A5C();

    sub_1D1AE8998(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v58 = sub_1D1E68FAC();
    v60 = v59;
    v61 = v57;
    v24 = v56;
    v71(v61, v47);
    v62 = sub_1D1B1312C(v58, v60, v77);

    *(v48 + 20) = v62;
    *(v48 + 28) = 2080;
    v75 = v17;
    v76 = v18;
    sub_1D186145C(v17, v18);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3A0, &qword_1D1EAF5D0);
    v63 = sub_1D1E678BC();
    v65 = sub_1D1B1312C(v63, v64, v77);

    *(v48 + 30) = v65;
    _os_log_impl(&dword_1D16EC000, v45, v69, "_matterSnapshotNeedsRefresh: %{BOOL,public}d for home %s (%s) with filter: %s", v48, 0x26u);
    v66 = v70;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v66, -1, -1);
    MEMORY[0x1D3893640](v48, -1, -1);
  }

  sub_1D1741A30(v74, &unk_1EC64F390, &qword_1D1E92B10);
  return v24 & 1;
}

uint64_t sub_1D1AE724C(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  v38 = a5;
  v8 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v38 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v38 - v13;
  v15 = type metadata accessor for StaticMatterDevice(0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a1;
  if (v8 == 1 && !sub_1D17199BC(v19, a2))
  {
    if (qword_1EC642448 != -1)
    {
      swift_once();
    }

    v30 = sub_1D1E6709C();
    __swift_project_value_buffer(v30, qword_1EC6BE298);
    v31 = sub_1D1E6707C();
    v32 = sub_1D1E6831C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 134349056;
      *(v33 + 4) = v19;
      _os_log_impl(&dword_1D16EC000, v31, v32, "Ignoring device %{public}llu because it's not in the filter", v33, 0xCu);
      MEMORY[0x1D3893640](v33, -1, -1);
    }
  }

  else
  {
    sub_1D1741C08(a4, v11, &unk_1EC64F390, &qword_1D1E92B10);
    v20 = type metadata accessor for MatterStateSnapshot(0);
    if ((*(*(v20 - 8) + 48))(v11, 1, v20) == 1)
    {
      sub_1D1741A30(v11, &unk_1EC64F390, &qword_1D1E92B10);
      (*(v16 + 56))(v14, 1, 1, v15);
      goto LABEL_10;
    }

    v21 = *&v11[*(v20 + 24)];

    sub_1D1AE8C70(v11, type metadata accessor for MatterStateSnapshot);
    if (*(v21 + 16) && (v22 = sub_1D17420B0(v19), (v23 & 1) != 0))
    {
      sub_1D1AE8CD0(*(v21 + 56) + *(v16 + 72) * v22, v14, type metadata accessor for StaticMatterDevice);
      v24 = 0;
    }

    else
    {
      v24 = 1;
    }

    (*(v16 + 56))(v14, v24, 1, v15);
    if ((*(v16 + 48))(v14, 1, v15) == 1)
    {
LABEL_10:
      sub_1D1741A30(v14, &qword_1EC643650, &qword_1D1E71D40);
      if (qword_1EC642448 != -1)
      {
        swift_once();
      }

      v25 = sub_1D1E6709C();
      __swift_project_value_buffer(v25, qword_1EC6BE298);
      v26 = sub_1D1E6707C();
      v27 = sub_1D1E6831C();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 134349056;
        *(v28 + 4) = v19;
        _os_log_impl(&dword_1D16EC000, v26, v27, "Missing snapshot for device %{public}llu, so doing a snapshot", v28, 0xCu);
        MEMORY[0x1D3893640](v28, -1, -1);
      }

      return 1;
    }

    sub_1D1AE8C0C(v14, v18);
    static MatterDeviceType.primaryDeviceType(for:)(*&v18[*(v15 + 32)], &v39);
    if ((sub_1D171A84C(v39, v38) & 1) != 0 || !*(*&v18[*(v15 + 56)] + 16))
    {
      if (qword_1EC642448 != -1)
      {
        swift_once();
      }

      v34 = sub_1D1E6709C();
      __swift_project_value_buffer(v34, qword_1EC6BE298);
      v35 = sub_1D1E6707C();
      v36 = sub_1D1E6831C();
      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 134349056;
        *(v37 + 4) = v19;
        _os_log_impl(&dword_1D16EC000, v35, v36, "Snapshotted device for %{public}llu has invalid data, so doing a snapshot", v37, 0xCu);
        MEMORY[0x1D3893640](v37, -1, -1);
      }

      sub_1D1AE8C70(v18, type metadata accessor for StaticMatterDevice);
      return 1;
    }

    sub_1D1AE8C70(v18, type metadata accessor for StaticMatterDevice);
  }

  return 0;
}

uint64_t sub_1D1AE781C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1AE7840, 0, 0);
}

uint64_t sub_1D1AE7840()
{
  v2 = v0[3];
  v1 = v0[4];
  v3 = swift_task_alloc();
  v0[5] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_1D1AE793C;
  v5 = v0[2];
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0x687365726665725FLL, 0xEA00000000002928, sub_1D1AE8DF8, v3, v6);
}

uint64_t sub_1D1AE793C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1AE7A4C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  if (a2)
  {
    (*(v7 + 16))(v10, a1, v6);
    v11 = (*(v7 + 80) + 24) & ~*(v7 + 80);
    v12 = swift_allocObject();
    *(v12 + 16) = a3;
    (*(v7 + 32))(v12 + v11, v10, v6);
    aBlock[4] = sub_1D1AE8E00;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1C40BA8;
    aBlock[3] = &block_descriptor_43;
    v13 = _Block_copy(aBlock);

    v14 = [a2 _refreshBeforeDate_completionHandler_];
    _Block_release(v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1AE7C2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v22[1] = a3;
  v3 = sub_1D1E6702C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66FDC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC642330 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6701C();
  __swift_project_value_buffer(v11, qword_1EC64A2A8);
  v12 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v13 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {

    sub_1D1E6706C();

    if ((*(v4 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v4 + 8))(v6, v3);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v12, v13, v16, "HomeManagerRefresh", v14, v15, 2u);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  (*(v8 + 8))(v10, v7);
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v17 = sub_1D1E6709C();
  __swift_project_value_buffer(v17, qword_1EC64A290);
  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6835C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D16EC000, v18, v19, "homemanager refresh is done", v20, 2u);
    MEMORY[0x1D3893640](v20, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428);
  return sub_1D1E67D6C();
}

uint64_t sub_1D1AE7F94(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC64ABE8;
  v2[12] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE8030, v3, 0);
}

uint64_t sub_1D1AE8030()
{
  v8 = v0;
  v1 = *(_s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0() + 3);

  swift_getKeyPath();
  v0[8] = v1;
  v0[13] = sub_1D1AE8998(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__latestSetupMilestone;
  swift_beginAccess();
  LODWORD(v2) = *(v1 + v2);

  if (v2)
  {
    v0[16] = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
    v3 = swift_task_alloc();
    v0[17] = v3;
    *v3 = v0;
    v3[1] = sub_1D1AE85A4;

    return sub_1D1AE4364();
  }

  else
  {
    v5 = [objc_opt_self() defaultPrivateConfiguration];
    if (qword_1EC642318 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BD0);

    qword_1EC649BD8 = v5;
    os_unfair_lock_unlock(&dword_1EC649BD0);
    _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
    v7 = 2;
    HomeState.Stream.fastStart(with:homesToPerformSnapshotsIfPossible:)(&v6, 0, 0, &v7);

    swift_unknownObjectRelease();
    _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();

    return MEMORY[0x1EEE6DFA0](sub_1D1AE8298, 0, 0);
  }
}

uint64_t sub_1D1AE8298()
{
  v1 = swift_task_alloc();
  *(v0 + 112) = v1;
  *(v1 + 16) = 3;
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1D1AE8384;
  v3 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DDE0](v2, 0, 0, 0xD000000000000014, 0x80000001D1EC46A0, sub_1D1AE88B8, v1, v3);
}

uint64_t sub_1D1AE8384()
{

  return MEMORY[0x1EEE6DFA0](sub_1D1AE849C, 0, 0);
}

uint64_t sub_1D1AE84B8()
{
  v1 = *(_s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0() + 3);

  swift_getKeyPath();
  *(v0 + 72) = v1;
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
  swift_beginAccess();
  v3 = *(v1 + v2);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1D1AE85A4()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1AE86D0, v1, 0);
}

uint64_t sub_1D1AE86D0()
{
  v0[18] = _s13HomeDataModel15StaticActionSetV6toggle4withAA13StateSnapshotVSg010optimisticJ0_ScTyAHs5Error_pG14completionTasktSgAA0aI0V6StreamC_tYaKFfA__0();
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = sub_1D1AE8770;
  v3 = v0[10];
  v2 = v0[11];

  return sub_1D1AE4938(v3, v2);
}

uint64_t sub_1D1AE8770()
{
  v1 = *(*v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1AE8E9C, v1, 0);
}

uint64_t sub_1D1AE889C@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_1D1AC3828(v2, v3, v4);
}

uint64_t sub_1D1AE88C0(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4BFC;

  return sub_1D1AE5784(a1, a2, v6, v7, v10, v8, v9);
}

uint64_t sub_1D1AE8998(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1AE89E0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1AE5A64(v2, v3, v4, v5, v8, v6, v7);
}

uint64_t objectdestroy_22Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48) != 255)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D1AE8B14()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1AE65E8(v2, v3, v4, v5, v8, v6, v7);
}

uint64_t sub_1D1AE8C0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticMatterDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1AE8C70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1AE8CD0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AE8D38(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1AE781C(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1AE8E00(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D1AE7C2C(a1, v4, v5);
}

uint64_t block_copy_helper_43(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1D1AE8EA0(unint64_t a1, uint64_t a2)
{
  v20 = a2;
  v21 = sub_1D1E66A7C();
  v3 = *(v21 - 8);
  v4 = MEMORY[0x1EEE9AC00](v21);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v10 = 0;
    v18 = a1 & 0xFFFFFFFFFFFFFF8;
    v19 = a1 & 0xC000000000000001;
    v11 = v3 + 1;
    while (1)
    {
      if (v19)
      {
        v12 = MEMORY[0x1D3891EF0](v10, a1);
      }

      else
      {
        if (v10 >= *(v18 + 16))
        {
          goto LABEL_12;
        }

        v12 = *(a1 + 8 * v10 + 32);
      }

      v3 = v12;
      v13 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      v14 = i;
      v15 = a1;
      v16 = [v12 uniqueIdentifier];
      sub_1D1E66A5C();

      a1 = v15;
      i = v14;
      swift_beginAccess();
      sub_1D1762CB8(v8, v6);
      swift_endAccess();
      (*v11)(v8, v21);

      ++v10;
      if (v13 == v14)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void sub_1D1AE90A4(unint64_t a1, void *a2, uint64_t *a3)
{
  v42 = a3;
  v5 = sub_1D1E66A7C();
  v37 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v49 = &v36[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = MEMORY[0x1EEE9AC00](v6);
  v52 = &v36[-v9];
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v36[-v10];
  if (a1 >> 62)
  {
LABEL_25:
    v12 = sub_1D1E6873C();
  }

  else
  {
    v12 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  swift_beginAccess();
  if (v12)
  {
    v13 = 0;
    v44 = a1 & 0xFFFFFFFFFFFFFF8;
    v45 = a1 & 0xC000000000000001;
    v43 = a1 + 32;
    v51 = (v37 + 8);
    v48 = v37 + 16;
    v14 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v40 = a1;
    v41 = a2;
    v39 = v11;
    v38 = v12;
    do
    {
      if (v45)
      {
        v21 = MEMORY[0x1D3891EF0](v13, a1);
        v22 = __OFADD__(v13++, 1);
        if (v22)
        {
LABEL_22:
          __break(1u);
          return;
        }
      }

      else
      {
        if (v13 >= *(v44 + 16))
        {
          __break(1u);
          goto LABEL_25;
        }

        v21 = *(v43 + 8 * v13);
        v22 = __OFADD__(v13++, 1);
        if (v22)
        {
          goto LABEL_22;
        }
      }

      v23 = v14[61];
      v47 = v21;
      v24 = [v21 v23];
      sub_1D1E66A5C();

      swift_beginAccess();
      if (*(*a2 + 16) && (sub_1D1742188(), (v25 & 1) != 0))
      {
        swift_endAccess();
        (*v51)(v11, v5);
      }

      else
      {
        v46 = v13;
        swift_endAccess();
        v50 = *v51;
        v50(v11, v5);
        v26 = *v42;

        v27 = [v47 v14[61]];
        sub_1D1E66A5C();

        if (*(v26 + 16) && (sub_1D1AFA21C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v28 = sub_1D1E676DC(), v29 = -1 << *(v26 + 32), v30 = v28 & ~v29, ((*(v26 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) != 0))
        {
          v31 = ~v29;
          v32 = *(v37 + 72);
          v33 = *(v37 + 16);
          while (1)
          {
            v34 = v49;
            v33(v49, *(v26 + 48) + v32 * v30, v5);
            sub_1D1AFA21C(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
            v35 = sub_1D1E6775C();
            v50(v34, v5);
            if (v35)
            {
              break;
            }

            v30 = (v30 + 1) & v31;
            if (((*(v26 + 56 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v50(v52, v5);

          a1 = v40;
          a2 = v41;
          v11 = v39;
          v12 = v38;
          v13 = v46;
          v14 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
        }

        else
        {
LABEL_5:

          v15 = v50;
          v50(v52, v5);
          v14 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
          v16 = v47;
          v17 = [v47 uniqueIdentifier];
          v18 = v49;
          sub_1D1E66A5C();

          type metadata accessor for HMError(0);
          v54 = 8;
          sub_1D1CD8538(MEMORY[0x1E69E7CC0]);
          sub_1D1AFA21C(&qword_1EC6428A0, type metadata accessor for HMError, &unk_1D1E6E3FC);
          sub_1D1E6654C();
          v19 = v55;
          a2 = v41;
          swift_beginAccess();
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v53 = *a2;
          *a2 = 0x8000000000000000;
          sub_1D17562C8(v19, v18, isUniquelyReferenced_nonNull_native);
          v15(v18, v5);
          *a2 = v53;
          swift_endAccess();

          v11 = v39;
          a1 = v40;
          v12 = v38;
          v13 = v46;
        }
      }
    }

    while (v13 != v12);
  }
}

unint64_t sub_1D1AE9640(unint64_t result, void *a2, uint64_t *a3)
{
  v3 = result;
  if (result >> 62)
  {
    goto LABEL_13;
  }

  v4 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      for (i = 0; ; ++i)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1D3891EF0](i, v3);
        }

        else
        {
          if (i >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_12;
          }

          v6 = *(v3 + 8 * i + 32);
        }

        v7 = v6;
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          break;
        }

        v9 = v4;
        v10 = [v6 services];
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        v11 = sub_1D1E67C1C();

        v4 = v9;
        sub_1D1AE90A4(v11, a2, a3);

        if (v8 == v9)
        {
          return result;
        }
      }

      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = sub_1D1E6873C();
      v4 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_1D1AE9798(uint64_t a1, uint64_t a2)
{
  v3[15] = a2;
  v3[16] = v2;
  v3[14] = a1;
  v3[17] = *(type metadata accessor for StateSnapshot(0) - 8);
  v3[18] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BD0, &qword_1D1E96B30);
  v3[19] = v4;
  v3[20] = *(v4 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A748, &qword_1D1E96B38);
  v3[25] = swift_task_alloc();
  v3[26] = swift_task_alloc();
  v5 = sub_1D1E66A7C();
  v3[27] = v5;
  v3[28] = *(v5 - 8);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = swift_task_alloc();
  v3[32] = *(type metadata accessor for StateSnapshot.UpdateType(0) - 8);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AE9A38, 0, 0);
}

uint64_t sub_1D1AE9A38()
{
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC64ABE8;
  *(v0 + 288) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE9AD0, v1, 0);
}

uint64_t sub_1D1AE9AD0()
{
  *(v0 + 296) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1AE9B40, 0, 0);
}

uint64_t sub_1D1AE9B40()
{
  if (v0[37])
  {
    v1 = v0[36];

    return MEMORY[0x1EEE6DFA0](sub_1D1AE9CA8, v1, 0);
  }

  else
  {
    v4 = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);

    v2 = v0[1];

    return v2(v4);
  }
}

uint64_t sub_1D1AE9CA8()
{
  v1 = *(v0 + 296);
  swift_beginAccess();
  v2 = *(v1 + 64);
  *(v0 + 304) = v2;
  v3 = v2;

  return MEMORY[0x1EEE6DFA0](sub_1D1AE9D30, 0, 0);
}

uint64_t sub_1D1AE9D30()
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

      *(v0 + 344) = MEMORY[0x1E69E7CC8];
      v43 = *(v0 + 288);
      v44 = sub_1D1AEA2E0;
LABEL_41:

      return MEMORY[0x1EEE6DFA0](v44, v43, 0);
    }

    v8 = *(v0 + 256);
    *(v0 + 336) = qword_1EC6BE170;
    v9 = *(v8 + 80);
    v10 = MEMORY[0x1E69E7CC8];
    *(v0 + 472) = v9;
    *(v0 + 368) = 0;
    *(v0 + 376) = v10;
    *(v0 + 360) = v10;
    v11 = *(v0 + 320);
    if (*(v11 + 16))
    {
      v12 = *(v0 + 304);
      sub_1D1AFB124(v11 + ((v9 + 32) & ~v9), *(v0 + 264), type metadata accessor for StateSnapshot.UpdateType);
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
            v32 = *(v0 + 248);
            v34 = *(v0 + 216);
            v33 = *(v0 + 224);
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

    *(v0 + 384) = v46;
    *(v0 + 392) = v47;
    v49 = *(v0 + 288);
    v50 = v46;
    v44 = sub_1D1AEA5EC;
    v43 = v49;
    goto LABEL_41;
  }

  v55 = sub_1D18D70C0(MEMORY[0x1E69E7CC0]);

  v41 = *(v0 + 8);

  return v41(v55);
}

uint64_t sub_1D1AEA2E0()
{
  *(v0 + 352) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1AEA350, 0, 0);
}

uint64_t sub_1D1AEA350()
{
  v1 = v0[44];
  v2 = v0[38];
  if (v1)
  {
    v3 = v0[35];
    v4 = v0[36];
    v5 = v0[34];
    v6 = *(v1 + 24);

    v7 = sub_1D1E67E7C();
    (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = 5;
    sub_1D1741C08(v3, v5, &unk_1EC6442C0, &qword_1D1E741A0);
    v9 = sub_1D1AFA21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
    v10 = swift_allocObject();
    v10[2] = v4;
    v10[3] = v9;
    v10[4] = sub_1D1A83158;
    v10[5] = v8;

    sub_1D17C6EF0(0, 0, v5, &unk_1D1E975E8, v10);

    sub_1D1741A30(v3, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  else
  {
  }

  v13 = v0[43];

  v11 = v0[1];

  return v11(v13);
}

uint64_t sub_1D1AEA5EC()
{
  *(v0 + 400) = swift_weakLoadStrong();

  return MEMORY[0x1EEE6DFA0](sub_1D1AEA65C, 0, 0);
}

uint64_t sub_1D1AEA65C()
{
  v1 = v0[50];
  if (v1)
  {
    v2 = v0[35];
    v3 = v0[36];
    v4 = v0[34];
    v5 = *(v1 + 24);

    v6 = sub_1D1E67E7C();
    (*(*(v6 - 8) + 56))(v2, 1, 1, v6);
    v7 = swift_allocObject();
    *(v7 + 16) = v5;
    *(v7 + 24) = 4;
    sub_1D1741C08(v2, v4, &unk_1EC6442C0, &qword_1D1E741A0);
    v8 = sub_1D1AFA21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
    v9 = swift_allocObject();
    v9[2] = v3;
    v9[3] = v8;
    v9[4] = sub_1D1A82E34;
    v9[5] = v7;

    sub_1D17C6EF0(0, 0, v4, &unk_1D1E96480, v9);

    sub_1D1741A30(v2, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  v0[51] = *(v0[16] + v0[42]);
  v10 = swift_task_alloc();
  v0[52] = v10;
  *v10 = v0;
  v10[1] = sub_1D1AEA890;

  return sub_1D1E5C7D0();
}

uint64_t sub_1D1AEA890(uint64_t a1)
{
  v2 = *(*v1 + 408);
  *(*v1 + 424) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AEA9A8, v2, 0);
}

uint64_t sub_1D1AEA9A8()
{
  v1 = v0[53];
  if (v1)
  {

    v0[58] = v1;

    return MEMORY[0x1EEE6DFA0](sub_1D1AEAD88, 0, 0);
  }

  else
  {
    v2 = v0[51];
    v3 = v0[49];
    v4 = v0[38];
    v5 = v0[33];
    v6 = v0[15];
    swift_beginAccess();
    v7 = *(v2 + 112);
    v0[54] = v7;
    swift_beginAccess();
    v8 = *(v2 + 120);
    v0[55] = v8;

    v9 = sub_1D1AFA21C(&qword_1EC64A750, type metadata accessor for SnapshotModerator, &protocol conformance descriptor for SnapshotModerator);
    v10 = swift_task_alloc();
    v0[56] = v10;
    v10[2] = v3;
    v10[3] = v2;
    v10[4] = v4;
    v10[5] = v5;
    v10[6] = v6;
    v10[7] = v7;
    v10[8] = v8;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643158, &unk_1D1E715B0);
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A758, &unk_1D1E96B50);
    v13 = swift_task_alloc();
    v0[57] = v13;
    *v13 = v0;
    v13[1] = sub_1D1AEABD4;

    return MEMORY[0x1EEE6DBF8](v0 + 12, v11, v12, v2, v9, &unk_1D1E96B40, v10, v11);
  }
}

uint64_t sub_1D1AEABD4()
{
  v1 = *(*v0 + 408);

  return MEMORY[0x1EEE6DFA0](sub_1D1AEAD64, v1, 0);
}

uint64_t sub_1D1AEAD88(unint64_t a1)
{
  v2 = 0;
  v3 = *(v1 + 464);
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
  v9 = *(v1 + 376);
  v10 = *(v1 + 360);
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
          v52 = *(v1 + 200);
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
          v82 = *(v1 + 248);
          v84 = *(v1 + 216);
          v83 = *(v1 + 224);
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
    v106 = *(v1 + 240);
    v15 = *(v1 + 216);
    v14 = *(v1 + 224);
    v16 = *(v1 + 192);
    v17 = *(v1 + 200);
    v18 = *(v1 + 160);
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
    v23 = *(v1 + 208);
    sub_1D1741A90(*(v1 + 200), v23, &qword_1EC64A748, &qword_1D1E96B38);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC0, &qword_1D1E7BDF0);
    if ((*(*(v24 - 8) + 48))(v23, 1, v24) == 1)
    {
      break;
    }

    v25 = *(v1 + 224);
    v26 = *(v1 + 232);
    v27 = *(v1 + 208);
    v101 = v13;
    v104 = *(v1 + 216);
    v28 = *(v1 + 176);
    v29 = *(v1 + 184);
    v30 = *(v1 + 168);
    v31 = v112[19];
    v107 = v112[18];
    v32 = v27 + *(v24 + 48);
    v33 = *(v32 + *(v31 + 48));
    sub_1D1AFB18C(v32, v28, type metadata accessor for StateSnapshot);
    v34 = *(v31 + 48);
    sub_1D1AFB18C(v28, v29, type metadata accessor for StateSnapshot);
    *(v29 + v34) = v33;
    v1 = v112;
    (*(v25 + 32))(v26, v27, v104);
    sub_1D1741C08(v29, v30, &qword_1EC645BD0, &qword_1D1E96B30);
    sub_1D1AFB18C(v30, v107, type metadata accessor for StateSnapshot);
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
      if (!v35)
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
    v43 = v112[28];
    v44 = v112[29];
    v45 = v112[27];
    v110 = v112[23];
    v47 = v112[17];
    v46 = v112[18];
    if (v41)
    {
      sub_1D1AD70B0(v112[18], v10[7] + *(v47 + 72) * a1);
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
      sub_1D1AFB18C(v46, v10[7] + *(v47 + 72) * v1, type metadata accessor for StateSnapshot);
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

  v55 = *(v1 + 384);
  v56 = *(v1 + 368);
  v57 = *(v1 + 328);
  v58 = *(v1 + 264);

  a1 = sub_1D1AFB0C4(v58, type metadata accessor for StateSnapshot.UpdateType);
  if (v56 + 1 == v57)
  {

    *(v1 + 344) = v103;
    v59 = *(v1 + 288);
    v60 = sub_1D1AEA2E0;
    goto LABEL_66;
  }

  v61 = *(v1 + 368) + 1;
  *(v1 + 368) = v61;
  *(v1 + 376) = v103;
  *(v1 + 360) = v109;
  v62 = *(v1 + 320);
  if (v61 >= *(v62 + 16))
  {
    goto LABEL_59;
  }

  v63 = *(v1 + 304);
  sub_1D1AFB124(v62 + ((*(v1 + 472) + 32) & ~*(v1 + 472)) + *(*(v1 + 256) + 72) * v61, *(v1 + 264), type metadata accessor for StateSnapshot.UpdateType);
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

  *(v1 + 384) = v93;
  *(v1 + 392) = v94;
  v96 = *(v1 + 288);
  v97 = v93;
  v60 = sub_1D1AEA5EC;
  v59 = v96;
LABEL_66:

  return MEMORY[0x1EEE6DFA0](v60, v59, 0);
}

uint64_t HomeState.Stream.fetchProfileContent(for:profileBags:profileKind:timeout:)(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, char a6)
{
  *(v7 + 120) = a5;
  *(v7 + 128) = v6;
  *(v7 + 260) = a6;
  *(v7 + 104) = a2;
  *(v7 + 112) = a3;
  *(v7 + 96) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649148, &qword_1D1E96490);
  *(v7 + 136) = swift_task_alloc();
  v9 = sub_1D1E66A7C();
  *(v7 + 144) = v9;
  *(v7 + 152) = *(v9 - 8);
  *(v7 + 160) = swift_task_alloc();
  *(v7 + 168) = swift_task_alloc();
  *(v7 + 176) = *(type metadata accessor for StaticLightProfile(0) - 8);
  *(v7 + 184) = swift_task_alloc();
  *(v7 + 261) = *a4;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  *(v7 + 192) = qword_1EC64ABE8;
  v10 = swift_task_alloc();
  *(v7 + 200) = v10;
  *v10 = v7;
  v10[1] = sub_1D1AEB8FC;

  return StaticHome.home.getter();
}

uint64_t sub_1D1AEB8FC(uint64_t a1)
{
  v2 = *(*v1 + 192);
  *(*v1 + 208) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AEBA14, v2, 0);
}

uint64_t sub_1D1AEBA14()
{
  v1 = *(v0 + 208);
  if (!v1)
  {
    v18 = *(v0 + 96);
    v19 = type metadata accessor for StateSnapshot(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);
LABEL_28:

    v49 = *(v0 + 8);

    return v49();
  }

  v2 = *(v0 + 261);
  v3 = MEMORY[0x1E69E7CC0];
  *(v0 + 80) = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = *(*(v0 + 128) + 24);
    v5 = [v1 uniqueIdentifier];
    sub_1D1E66A5C();

    swift_getKeyPath();
    *(v0 + 88) = v4;
    sub_1D1AFA21C(&unk_1EC649DB0, type metadata accessor for HomeState.AllHomesModel, &protocol conformance descriptor for HomeState.AllHomesModel);
    sub_1D1E66CAC();

    v6 = OBJC_IVAR____TtCV13HomeDataModel9HomeState13AllHomesModel__homeStates;
    swift_beginAccess();
    v7 = *(v4 + v6);
    v8 = *(v0 + 160);
    if (*(v7 + 16))
    {

      v9 = sub_1D1742188();
      v11 = *(v0 + 152);
      v10 = *(v0 + 160);
      v12 = *(v0 + 136);
      v13 = *(v0 + 144);
      if (v14)
      {
        v15 = v9;
        v50 = *(v7 + 56);
        v52 = *(v0 + 160);
        v16 = type metadata accessor for HomeState(0);
        v17 = *(v16 - 8);
        sub_1D1AFB124(v50 + *(v17 + 72) * v15, v12, type metadata accessor for HomeState);

        (*(v11 + 8))(v52, v13);

        (*(v17 + 56))(v12, 0, 1, v16);
      }

      else
      {

        (*(v11 + 8))(v10, v13);
        v16 = type metadata accessor for HomeState(0);
        (*(*(v16 - 8) + 56))(v12, 1, 1, v16);
      }
    }

    else
    {
      v36 = *(v0 + 144);
      v37 = *(v0 + 152);
      v38 = *(v0 + 136);

      (*(v37 + 8))(v8, v36);
      v16 = type metadata accessor for HomeState(0);
      (*(*(v16 - 8) + 56))(v38, 1, 1, v16);
    }

    v45 = *(v0 + 136);
    type metadata accessor for HomeState(0);
    v46 = 1;
    if (!(*(*(v16 - 8) + 48))(v45, 1, v16))
    {
      sub_1D1AFB124(v45, *(v0 + 96), type metadata accessor for StateSnapshot);
      v46 = 0;
      v45 = *(v0 + 136);
    }

    v47 = *(v0 + 96);
    sub_1D1741A30(v45, &qword_1EC649148, &qword_1D1E96490);
    v48 = type metadata accessor for StateSnapshot(0);
    (*(*(v48 - 8) + 56))(v47, v46, 1, v48);
    goto LABEL_28;
  }

  v20 = *(v0 + 112);
  v54 = v3;
  v21 = *(v20 + 16);
  if (v21)
  {
    v22 = v20 + 32;
    do
    {
      v22 += 16;

      sub_1D17A4D0C(v23);
      --v21;
    }

    while (v21);
    v3 = v54;
  }

  v24 = *(v3 + 16);
  v51 = v3;
  if (v24)
  {
    v25 = *(v0 + 176);
    v26 = *(v0 + 152);
    v27 = v3 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
    v53 = *(v25 + 72);
    v28 = MEMORY[0x1E69E7CC0];
    do
    {
      v29 = *(v0 + 184);
      v30 = *(v0 + 168);
      v31 = *(v0 + 144);
      sub_1D1AFB124(v27, v29, type metadata accessor for StaticLightProfile);
      (*(v26 + 16))(v30, v29, v31);
      sub_1D1AFB0C4(v29, type metadata accessor for StaticLightProfile);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = sub_1D177D0AC(0, v28[2] + 1, 1, v28);
      }

      v33 = v28[2];
      v32 = v28[3];
      if (v33 >= v32 >> 1)
      {
        v28 = sub_1D177D0AC((v32 > 1), v33 + 1, 1, v28);
      }

      v34 = *(v0 + 168);
      v35 = *(v0 + 144);
      v28[2] = v33 + 1;
      (*(v26 + 32))(v28 + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v33, v34, v35);
      v27 += v53;
      --v24;
    }

    while (v24);
  }

  else
  {
    v28 = MEMORY[0x1E69E7CC0];
  }

  v39 = *(v0 + 260);
  sub_1D17A3840(v28);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A8, &qword_1D1E97460);
  v40 = sub_1D17D8EA8(&qword_1EC64A9B0, &qword_1EC64A9A8, &qword_1D1E97460, MEMORY[0x1E69E6340]);
  *(v0 + 16) = v51;
  *(v0 + 48) = v40;
  v41 = swift_task_alloc();
  *(v0 + 216) = v41;
  *v41 = v0;
  v41[1] = sub_1D1AEC0CC;
  v42 = *(v0 + 120);
  v43 = *(v0 + 104);

  return sub_1D1B9BD98(v43, v0 + 16, v42, v39 & 1);
}

uint64_t sub_1D1AEC0CC()
{
  v2 = *v1;
  v2[28] = v0;

  v3 = v2[24];
  if (v0)
  {

    v4 = sub_1D1AEC720;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(v2 + 2);
    v4 = sub_1D1AEC20C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1AEC20C()
{
  v1 = *(v0 + 144);
  v2 = *(v0 + 152);
  v3 = *(v0 + 104);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643160, &qword_1D1E71F50);
  v4 = *(*(type metadata accessor for StateSnapshot.UpdateType(0) - 8) + 80);
  *(v0 + 256) = v4;
  v5 = (v4 + 32) & ~v4;
  v6 = swift_allocObject();
  *(v0 + 232) = v6;
  *(v6 + 16) = xmmword_1D1E739C0;
  v7 = v6 + v5;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
  (*(v2 + 16))(v7, v3, v1);
  v9 = sub_1D17841EC(*(v0 + 80));

  *(v7 + v8) = v9;
  swift_storeEnumTagMultiPayload();
  v10 = swift_task_alloc();
  *(v0 + 240) = v10;
  *v10 = v0;
  v10[1] = sub_1D1AEC3EC;

  return (sub_1D1AE9798)(v6, 0, 0, 0);
}

uint64_t sub_1D1AEC3EC(uint64_t a1)
{
  v2 = *v1;
  v3 = *(*v1 + 232);
  v4 = *(*v1 + 192);
  v5 = (*(v2 + 256) + 32) & ~*(v2 + 256);
  *(v2 + 248) = a1;

  swift_setDeallocating();
  sub_1D1AFB0C4(v3 + v5, type metadata accessor for StateSnapshot.UpdateType);
  swift_deallocClassInstance();

  return MEMORY[0x1EEE6DFA0](sub_1D1AEC560, v4, 0);
}

uint64_t sub_1D1AEC560()
{
  if (*(v0[31] + 16))
  {
    v1 = sub_1D1742188();
    v2 = v0[26];
    if (v3)
    {
      v4 = v1;
      v5 = v0[12];
      v6 = *(v0[31] + 56);
      v7 = type metadata accessor for StateSnapshot(0);
      v8 = *(v7 - 8);
      sub_1D1AFB124(v6 + *(v8 + 72) * v4, v5, type metadata accessor for StateSnapshot);

      v9 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v10 = v0[26];
  }

  v7 = type metadata accessor for StateSnapshot(0);
  v8 = *(v7 - 8);
  v9 = 1;
LABEL_7:
  (*(v8 + 56))(v0[12], v9, 1, v7);

  v11 = v0[1];

  return v11();
}

uint64_t sub_1D1AEC720()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HomeState.Stream.write(valueUpdate:deviceIDs:snapshot:timeout:)(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v7 + 64) = a5;
  *(v7 + 72) = v6;
  *(v7 + 120) = a6;
  *(v7 + 48) = a3;
  *(v7 + 56) = a4;
  *(v7 + 40) = a1;
  *(v7 + 121) = *a2;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC64ABE8;
  *(v7 + 80) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AEC870, v8, 0);
}

uint64_t sub_1D1AEC870()
{
  v1 = *(v0 + 121);
  if (v1 < 0)
  {
    v13 = swift_task_alloc();
    *(v0 + 88) = v13;
    *v13 = v0;
    v13[1] = sub_1D1961F0C;
    v14 = *(v0 + 48);
    v15 = *(v0 + 56);
    v16 = *(v0 + 40);

    return sub_1D1AEFA08(v16, v1 & 1, v14, v15);
  }

  else
  {
    v3 = *(v0 + 48);
    v2 = *(v0 + 56);
    v4 = swift_task_alloc();
    *(v4 + 16) = v2;
    v5 = sub_1D1788DF8(sub_1D1AFA200, v4, v3);

    result = swift_getKeyPath();
    v7 = MEMORY[0x1E69E7CC0];
    v17 = MEMORY[0x1E69E7CC0];
    v8 = *(v5 + 16);
    if (v8)
    {
      v9 = 0;
      while (v9 < *(v5 + 16))
      {
        v10 = v9 + 1;
        *(v0 + 16) = *(v5 + 32 + 16 * v9);
        swift_bridgeObjectRetain_n();
        swift_bridgeObjectRetain_n();
        swift_getAtKeyPath();

        result = sub_1D17A4D0C(*(v0 + 32));
        v9 = v10;
        if (v8 == v10)
        {
          v7 = v17;
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
      *(v0 + 96) = v7;

      v11 = swift_task_alloc();
      *(v0 + 104) = v11;
      *v11 = v0;
      v11[1] = sub_1D1AECAF0;
      v12 = *(v0 + 40);

      return sub_1D1AECDD0(v12, v1 & 1, v7);
    }
  }

  return result;
}

uint64_t sub_1D1AECAF0()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[10];

    return MEMORY[0x1EEE6DFA0](sub_1D196250C, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1D1AECC2C@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v4 = type metadata accessor for StaticService(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = type metadata accessor for StateSnapshot(0);
  v9 = *(a1 + *(result + 60));
  if (*(v9 + 16) && (result = sub_1D1742188(), (v10 & 1) != 0))
  {
    sub_1D1AFB124(*(v9 + 56) + *(v5 + 72) * result, v7, type metadata accessor for StaticService);
    v11 = &v7[*(v4 + 132)];
    v12 = *v11;
    v13 = *(v11 + 1);

    result = sub_1D1AFB0C4(v7, type metadata accessor for StaticService);
    *a2 = v12;
    a2[1] = v13;
  }

  else
  {
    *a2 = 0;
    a2[1] = 0;
  }

  return result;
}

uint64_t sub_1D1AECD8C(void *a1, void *a2)
{
  v3 = *a1;

  *a2 = v3;
  return result;
}

uint64_t sub_1D1AECDD0(uint64_t a1, char a2, uint64_t a3)
{
  *(v4 + 48) = a3;
  *(v4 + 56) = v3;
  *(v4 + 284) = a2;
  *(v4 + 40) = a1;
  *(v4 + 64) = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v4 + 72) = swift_task_alloc();
  *(v4 + 80) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v4 + 88) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  *(v4 + 96) = swift_task_alloc();
  v5 = type metadata accessor for StaticLightProfile(0);
  *(v4 + 104) = v5;
  *(v4 + 112) = *(v5 - 8);
  *(v4 + 120) = swift_task_alloc();
  *(v4 + 128) = swift_task_alloc();
  v6 = sub_1D1E66A7C();
  *(v4 + 136) = v6;
  *(v4 + 144) = *(v6 - 8);
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 160) = swift_task_alloc();
  *(v4 + 168) = swift_task_alloc();
  *(v4 + 176) = swift_task_alloc();
  *(v4 + 184) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AECFF8, 0, 0);
}

uint64_t sub_1D1AECFF8()
{
  v1 = *(v0 + 48);
  v2 = *(v1 + 16);
  *(v0 + 192) = v2;
  if (v2)
  {
    v3 = *(v0 + 184);
    v4 = *(v0 + 136);
    v5 = *(v0 + 144);
    v6 = *(v0 + 104);
    v7 = *(*(v0 + 112) + 80);
    *(v0 + 280) = v7;
    v8 = v1 + *(v6 + 28);
    v9 = *(v5 + 16);
    *(v0 + 200) = v9;
    *(v0 + 208) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v9(v3, v8 + ((v7 + 32) & ~v7), v4);
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v10 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AED200, v10, 0);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
    (*(*(v11 - 8) + 56))(*(v0 + 40), 1, 1);

    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1D1AED200()
{
  v47 = v0;
  v2 = v0;
  v3 = v0[7];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v46 = sub_1D1749970(v6);
    sub_1D1747DDC(&v46);

    v7 = v46;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[25];
  v9 = v0[23];
  v10 = v0[21];
  v11 = v0[17];
  v8(v0[22], v9, v11);
  v8(v10, v9, v11);
  v44 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v45 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v45 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = 0;
  v15 = v7 & 0xC000000000000001;
  v43 = v7 + 32;
  while (v12 != v13)
  {
    if (v15)
    {
      v1 = v7;
      v16 = MEMORY[0x1D3891EF0](v13, v7);
    }

    else
    {
      if (v13 >= *(v45 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v16 = *(v7 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v2;
    v19 = v2[21];
    v20 = [v16 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v21 = sub_1D1E67C1C();

    v22 = swift_task_alloc();
    *(v22 + 16) = v19;
    v23 = sub_1D174A6C4(sub_1D1778988, v22, v21);

    if (v23)
    {
      v12 = v13;
      v7 = v1;
      v2 = v18;
      break;
    }

    v24 = __OFADD__(v13++, 1);
    v7 = v1;
    v2 = v18;
    if (v24)
    {
      goto LABEL_30;
    }
  }

  if (v44)
  {
    if (v12 != sub_1D1E6873C())
    {
LABEL_19:
      if (v15)
      {
        v25 = MEMORY[0x1D3891EF0](v12, v7);
      }

      else
      {
        if (v12 >= *(v45 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v25 = *(v43 + 8 * v12);
      }

      v26 = v25;
      v27 = v2[22];
      v29 = v2[17];
      v28 = v2[18];
      v30 = [v25 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v31 = sub_1D1E67C1C();

      v32 = swift_task_alloc();
      *(v32 + 16) = v27;
      v33 = v2;
      v34 = sub_1D174A6C4(sub_1D1778988, v32, v31);
      v33[28] = v34;

      v1 = *(v28 + 8);
      v33[29] = v1;
      v33[30] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v1(v27, v29);

      v12 = v33[21];
      v14 = v33[17];
      if (v34)
      {

        v1(v12, v14);
        v35 = sub_1D1AED7E8;
        goto LABEL_26;
      }

LABEL_34:
      v35 = (v1)(v12, v14);
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v35, v40, v41);
    }
  }

  else if (v12 != *(v45 + 16))
  {
    goto LABEL_19;
  }

  v37 = v2[21];
  v36 = v2[22];
  v38 = v2[17];
  v39 = *(v2[18] + 8);
  v2[27] = v39;
  v39(v36, v38);

  v39(v37, v38);
  v35 = sub_1D1AED698;
LABEL_26:
  v40 = 0;
  v41 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v40, v41);
}

uint64_t sub_1D1AED698()
{
  (*(v0 + 216))(*(v0 + 184), *(v0 + 136));
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  (*(*(v1 - 8) + 56))(*(v0 + 40), 1, 1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1D1AED7E8()
{
  v1 = *(v0 + 224);
  v2 = [v1 home];
  *(v0 + 248) = v2;

  if (v2)
  {
    v3 = 0;
    v4 = 0;
    v5 = (*(v0 + 128) + *(*(v0 + 104) + 24));
    v6 = *(*(v0 + 112) + 72);
    v7 = *(v0 + 192);
    while (1)
    {
      if (v4 == v7)
      {
        __break(1u);
        goto LABEL_33;
      }

      v8 = *(v0 + 128);
      v9 = *(v0 + 284);
      sub_1D1AFB124(*(v0 + 48) + v3 + ((*(v0 + 280) + 32) & ~*(v0 + 280)), v8, type metadata accessor for StaticLightProfile);
      v10 = *v5;
      v11 = v5[1];
      sub_1D1AFB0C4(v8, type metadata accessor for StaticLightProfile);
      v12 = v11 == 2 ? v10 : v11;
      if (v9 != (v12 & 1))
      {
        break;
      }

      v7 = *(v0 + 192);
      ++v4;
      v3 += v6;
      if (v4 == v7)
      {

        goto LABEL_10;
      }
    }

    v52 = v6;
    v49 = v2;
    v50 = *(v0 + 144);
    v15 = *(v0 + 284);
    v16 = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
    v17 = 0;
    v18 = 0;
    v19 = *(v0 + 192);
    while (v18 != v19)
    {
      v23 = *(v0 + 200);
      v24 = *(v0 + 152);
      v25 = *(v0 + 136);
      v26 = *(v0 + 120);
      sub_1D1AFB124(*(v0 + 48) + v17 + ((*(v0 + 280) + 32) & ~*(v0 + 280)), v26, type metadata accessor for StaticLightProfile);
      v23(v24, v26, v25);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v28 = sub_1D1742188();
      v30 = v16[2];
      v31 = (v29 & 1) == 0;
      v32 = __OFADD__(v30, v31);
      v33 = v30 + v31;
      if (v32)
      {
        goto LABEL_34;
      }

      v34 = v29;
      if (v16[3] >= v33)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v43 = v28;
          sub_1D173BFC4();
          v28 = v43;
        }
      }

      else
      {
        sub_1D172DCA8(v33, isUniquelyReferenced_nonNull_native);
        v28 = sub_1D1742188();
        if ((v34 & 1) != (v35 & 1))
        {

          sub_1D1E690FC();
          return;
        }
      }

      *(v0 + 272) = v16;
      v36 = *(v0 + 232);
      if (v34)
      {
        v20 = *(v0 + 152);
        v21 = *(v0 + 136);
        v22 = *(v0 + 120);
        *(v16[7] + v28) = v15;
        v36(v20, v21);
        sub_1D1AFB0C4(v22, type metadata accessor for StaticLightProfile);
      }

      else
      {
        v37 = *(v0 + 200);
        v38 = *(v0 + 152);
        v39 = *(v0 + 136);
        v51 = *(v0 + 120);
        v16[(v28 >> 6) + 8] |= 1 << v28;
        v40 = v28;
        v37(v16[6] + *(v50 + 72) * v28, v38, v39);
        *(v16[7] + v40) = v15;
        v36(v38, v39);
        sub_1D1AFB0C4(v51, type metadata accessor for StaticLightProfile);
        v41 = v16[2];
        v32 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v32)
        {
          goto LABEL_35;
        }

        v16[2] = v42;
      }

      ++v18;
      v19 = *(v0 + 192);
      v17 += v52;
      if (v18 == v19)
      {
        v44 = *(v0 + 88);
        v45 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
        v46 = [v49 uniqueIdentifier];
        sub_1D1E66A5C();

        *(v44 + v45) = v16;
        swift_storeEnumTagMultiPayload();

        v47 = swift_task_alloc();
        *(v0 + 256) = v47;
        *v47 = v0;
        v47[1] = sub_1D1AEDD80;
        v48 = *(v0 + 88);

        sub_1D1AB6894(v48, 0, 0, 0, 0);
        return;
      }
    }

LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_10:
    (*(v0 + 232))(*(v0 + 184), *(v0 + 136));
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
    (*(*(v13 - 8) + 56))(*(v0 + 40), 1, 1);

    v14 = *(v0 + 8);

    v14();
  }
}

uint64_t sub_1D1AEDD80(uint64_t a1)
{
  v2 = *(*v1 + 88);
  *(*v1 + 264) = a1;

  sub_1D1AFB0C4(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AEDEB4, 0, 0);
}

uint64_t sub_1D1AEDEB4()
{
  v53 = v0;
  v1 = *(v0 + 264);
  v2 = [*(v0 + 248) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v3 = sub_1D1742188();
    v4 = *(v0 + 232);
    v5 = *(v0 + 160);
    v6 = *(v0 + 136);
    v7 = *(v0 + 96);
    if (v8)
    {
      v9 = *(*(v0 + 264) + 56);
      v10 = type metadata accessor for StateSnapshot(0);
      v11 = *(v10 - 8);
      sub_1D1AFB124(v9 + *(v11 + 72) * v3, v7, type metadata accessor for StateSnapshot);
      v4(v5, v6);

      (*(v11 + 56))(v7, 0, 1, v10);
    }

    else
    {

      v4(v5, v6);
      v17 = type metadata accessor for StateSnapshot(0);
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    }
  }

  else
  {
    v12 = *(v0 + 232);
    v13 = *(v0 + 160);
    v14 = *(v0 + 136);
    v15 = *(v0 + 96);

    v12(v13, v14);
    v16 = type metadata accessor for StateSnapshot(0);
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  v18 = *(v0 + 248);
  v20 = *(v0 + 64);
  v19 = *(v0 + 72);
  v22 = *(v0 + 48);
  v21 = *(v0 + 56);
  v23 = *(v0 + 284);
  v24 = sub_1D1E67E7C();
  (*(*(v24 - 8) + 56))(v19, 1, 1, v24);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  *(v25 + 24) = 0;
  *(v25 + 32) = v23;
  *(v25 + 40) = v21;
  *(v25 + 48) = v22;
  *(v25 + 56) = v18;
  *(v25 + 64) = v20;

  v26 = v18;
  v27 = sub_1D1B02614(0, 0, v19, &unk_1D1E975A8, v25);
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v28 = sub_1D1E6709C();
  __swift_project_value_buffer(v28, qword_1EC64A290);

  v29 = sub_1D1E6707C();
  v30 = sub_1D1E6835C();

  v31 = os_log_type_enabled(v29, v30);
  v32 = *(v0 + 248);
  v33 = *(v0 + 232);
  v34 = *(v0 + 184);
  v35 = *(v0 + 136);
  if (v31)
  {
    v51 = v27;
    v36 = swift_slowAlloc();
    v50 = v33;
    v37 = swift_slowAlloc();
    v52 = v37;
    *v36 = 136446210;
    sub_1D1AFA21C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v49 = v34;
    v38 = sub_1D1E6760C();
    v40 = v39;

    v41 = sub_1D1B1312C(v38, v40, &v52);

    *(v36 + 4) = v41;
    _os_log_impl(&dword_1D16EC000, v29, v30, "start override profile write %{public}s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x1D3893640](v37, -1, -1);
    v42 = v36;
    v27 = v51;
    MEMORY[0x1D3893640](v42, -1, -1);

    v50(v49, v35);
  }

  else
  {

    v33(v34, v35);
  }

  v43 = *(v0 + 96);
  v44 = *(v0 + 40);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v46 = *(v45 + 48);
  sub_1D1741A90(v43, v44, &unk_1EC649E30, &unk_1D1E91250);
  *(v44 + v46) = v27;
  (*(*(v45 - 8) + 56))(*(v0 + 40), 0, 1, v45);

  v47 = *(v0 + 8);

  return v47();
}

uint64_t HomeState.Stream.setNaturalLight<A>(_:lightProfiles:timeout:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 80) = a7;
  *(v8 + 88) = v7;
  *(v8 + 64) = a3;
  *(v8 + 72) = a6;
  *(v8 + 312) = a2;
  *(v8 + 56) = a1;
  *(v8 + 96) = *v7;
  v9 = *(a6 - 8);
  *(v8 + 104) = v9;
  *(v8 + 112) = *(v9 + 64);
  *(v8 + 120) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v8 + 144) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  *(v8 + 152) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E8, &unk_1D1E71440);
  *(v8 + 160) = swift_task_alloc();
  v10 = sub_1D1E66A7C();
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = swift_task_alloc();
  *(v8 + 208) = swift_task_alloc();
  *(v8 + 216) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AEE6A4, 0, 0);
}

uint64_t sub_1D1AEE6A4()
{
  if (sub_1D1E6827C())
  {
LABEL_4:
    v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
    (*(*(v3 - 8) + 56))(v0[7], 1, 1);

    v4 = v0[1];

    return v4();
  }

  v1 = v0[20];
  sub_1D1E6829C();
  v2 = type metadata accessor for StaticLightProfile(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D1741A30(v0[20], &qword_1EC6430E8, &unk_1D1E71440);
    goto LABEL_4;
  }

  v7 = v0[26];
  v6 = v0[27];
  v8 = v0[21];
  v9 = v0[22];
  v10 = v0[20];
  v11 = *(v2 + 28);
  v12 = *(v9 + 16);
  v0[28] = v12;
  v0[29] = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v12(v7, v10 + v11, v8);
  sub_1D1AFB0C4(v10, type metadata accessor for StaticLightProfile);
  (*(v9 + 32))(v6, v7, v8);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v13 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AEE94C, v13, 0);
}

uint64_t sub_1D1AEE94C()
{
  v47 = v0;
  v2 = v0;
  v3 = v0[11];
  swift_beginAccess();
  v4 = *(v3 + 64);
  if (v4)
  {
    v5 = [v4 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v46 = sub_1D1749970(v6);
    sub_1D1747DDC(&v46);

    v7 = v46;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
  }

  v8 = v0[28];
  v9 = v0[27];
  v10 = v0[24];
  v11 = v0[21];
  v8(v0[25], v9, v11);
  v8(v10, v9, v11);
  v44 = v7 >> 62;
  if (v7 >> 62)
  {
LABEL_31:
    v45 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = sub_1D1E6873C();
  }

  else
  {
    v45 = v7 & 0xFFFFFFFFFFFFFF8;
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = 0;
  v14 = 0;
  v15 = v7 & 0xC000000000000001;
  v43 = v7 + 32;
  while (v12 != v13)
  {
    if (v15)
    {
      v1 = v7;
      v16 = MEMORY[0x1D3891EF0](v13, v7);
    }

    else
    {
      if (v13 >= *(v45 + 16))
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v1 = v7;
      v16 = *(v7 + 8 * v13 + 32);
    }

    v17 = v16;
    v18 = v2;
    v19 = v2[24];
    v20 = [v16 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v21 = sub_1D1E67C1C();

    v22 = swift_task_alloc();
    *(v22 + 16) = v19;
    v23 = sub_1D174A6C4(sub_1D1749C64, v22, v21);

    if (v23)
    {
      v12 = v13;
      v7 = v1;
      v2 = v18;
      break;
    }

    v24 = __OFADD__(v13++, 1);
    v7 = v1;
    v2 = v18;
    if (v24)
    {
      goto LABEL_30;
    }
  }

  if (v44)
  {
    if (v12 != sub_1D1E6873C())
    {
LABEL_19:
      if (v15)
      {
        v25 = MEMORY[0x1D3891EF0](v12, v7);
      }

      else
      {
        if (v12 >= *(v45 + 16))
        {
          __break(1u);
          goto LABEL_34;
        }

        v25 = *(v43 + 8 * v12);
      }

      v26 = v25;
      v27 = v2[25];
      v29 = v2[21];
      v28 = v2[22];
      v30 = [v25 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v31 = sub_1D1E67C1C();

      v32 = swift_task_alloc();
      *(v32 + 16) = v27;
      v33 = v2;
      v34 = sub_1D174A6C4(sub_1D1778988, v32, v31);
      v33[31] = v34;
      v33[32] = 0;

      v1 = *(v28 + 8);
      v33[33] = v1;
      v33[34] = (v28 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v1(v27, v29);

      v12 = v33[24];
      v14 = v33[21];
      if (v34)
      {

        v1(v12, v14);
        v35 = sub_1D1AEEF34;
        goto LABEL_26;
      }

LABEL_34:
      v35 = (v1)(v12, v14);
      __break(1u);
      return MEMORY[0x1EEE6DFA0](v35, v40, v41);
    }
  }

  else if (v12 != *(v45 + 16))
  {
    goto LABEL_19;
  }

  v37 = v2[24];
  v36 = v2[25];
  v38 = v2[21];
  v39 = *(v2[22] + 8);
  v2[30] = v39;
  v39(v36, v38);

  v39(v37, v38);
  v35 = sub_1D1AEEDE4;
LABEL_26:
  v40 = 0;
  v41 = 0;

  return MEMORY[0x1EEE6DFA0](v35, v40, v41);
}

uint64_t sub_1D1AEEDE4()
{
  (*(v0 + 240))(*(v0 + 216), *(v0 + 168));
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  (*(*(v1 - 8) + 56))(*(v0 + 56), 1, 1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1AEEF34()
{
  v1 = *(v0 + 248);
  v2 = [v1 home];
  *(v0 + 280) = v2;

  if (v2)
  {
    v3 = *(v0 + 312);
    *(swift_task_alloc() + 16) = v3;
    v4 = sub_1D1E67AEC();

    if (v4)
    {
      v5 = *(v0 + 144);
      *(v0 + 48) = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
      *(swift_task_alloc() + 16) = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C0, &qword_1D1E974E0);
      sub_1D1E67A9C();

      v6 = *(v0 + 40);
      *(v0 + 288) = v6;
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
      v8 = [v2 uniqueIdentifier];
      sub_1D1E66A5C();

      *(v5 + v7) = v6;
      swift_storeEnumTagMultiPayload();

      v9 = swift_task_alloc();
      *(v0 + 296) = v9;
      *v9 = v0;
      v9[1] = sub_1D1AEF2B0;
      v10 = *(v0 + 144);

      return sub_1D1AB6894(v10, 0, 0, 0, 0);
    }

    (*(v0 + 264))(*(v0 + 216), *(v0 + 168));
  }

  else
  {
    (*(v0 + 264))(*(v0 + 216), *(v0 + 168));
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  (*(*(v12 - 8) + 56))(*(v0 + 56), 1, 1);

  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D1AEF2B0(uint64_t a1)
{
  v2 = *(*v1 + 144);
  *(*v1 + 304) = a1;

  sub_1D1AFB0C4(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AEF3E4, 0, 0);
}

uint64_t sub_1D1AEF3E4()
{
  v59 = v0;
  v1 = *(v0 + 304);
  v2 = [*(v0 + 280) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v3 = sub_1D1742188();
    v4 = *(v0 + 264);
    v5 = *(v0 + 184);
    v6 = *(v0 + 168);
    v7 = *(v0 + 152);
    if (v8)
    {
      v9 = *(*(v0 + 304) + 56);
      v10 = type metadata accessor for StateSnapshot(0);
      v11 = *(v10 - 8);
      sub_1D1AFB124(v9 + *(v11 + 72) * v3, v7, type metadata accessor for StateSnapshot);
      v4(v5, v6);

      (*(v11 + 56))(v7, 0, 1, v10);
    }

    else
    {

      v4(v5, v6);
      v17 = type metadata accessor for StateSnapshot(0);
      (*(*(v17 - 8) + 56))(v7, 1, 1, v17);
    }
  }

  else
  {
    v12 = *(v0 + 264);
    v13 = *(v0 + 184);
    v14 = *(v0 + 168);
    v15 = *(v0 + 152);

    v12(v13, v14);
    v16 = type metadata accessor for StateSnapshot(0);
    (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  }

  v18 = *(v0 + 280);
  v20 = *(v0 + 120);
  v19 = *(v0 + 128);
  v21 = *(v0 + 104);
  v22 = *(v0 + 112);
  v23 = *(v0 + 88);
  v54 = *(v0 + 96);
  v24 = *(v0 + 64);
  v52 = *(v0 + 312);
  v25 = sub_1D1E67E7C();
  v56 = *(v0 + 72);
  (*(*(v25 - 8) + 56))(v19, 1, 1, v25);
  (*(v21 + 16))(v20, v24, v56);
  v26 = (*(v21 + 80) + 64) & ~*(v21 + 80);
  v27 = (v22 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  *(v28 + 24) = 0;
  *(v28 + 32) = v56;
  *(v28 + 48) = v52;
  *(v28 + 56) = v23;
  (*(v21 + 32))(v28 + v26, v20, v56);
  *(v28 + v27) = v18;
  *(v28 + ((v27 + 15) & 0xFFFFFFFFFFFFFFF8)) = v54;

  v29 = v18;
  v30 = sub_1D1B02614(0, 0, v19, &unk_1D1E974F0, v28);
  if (qword_1EC642328 != -1)
  {
    swift_once();
  }

  v31 = sub_1D1E6709C();
  __swift_project_value_buffer(v31, qword_1EC64A290);

  v32 = sub_1D1E6707C();
  v33 = sub_1D1E6835C();

  v34 = os_log_type_enabled(v32, v33);
  v35 = *(v0 + 280);
  v36 = *(v0 + 264);
  v37 = *(v0 + 216);
  v38 = *(v0 + 168);
  if (v34)
  {
    v57 = v30;
    v39 = swift_slowAlloc();
    v55 = v36;
    v40 = swift_slowAlloc();
    v58 = v40;
    *v39 = 136446210;
    sub_1D1AFA21C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v53 = v37;
    v41 = sub_1D1E6760C();
    v43 = v42;

    v44 = sub_1D1B1312C(v41, v43, &v58);

    *(v39 + 4) = v44;
    _os_log_impl(&dword_1D16EC000, v32, v33, "start override profile write %{public}s", v39, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v40);
    MEMORY[0x1D3893640](v40, -1, -1);
    v45 = v39;
    v30 = v57;
    MEMORY[0x1D3893640](v45, -1, -1);

    v55(v53, v38);
  }

  else
  {

    v36(v37, v38);
  }

  v46 = *(v0 + 152);
  v47 = *(v0 + 56);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v49 = *(v48 + 48);
  sub_1D1741A90(v46, v47, &unk_1EC649E30, &unk_1D1E91250);
  *(v47 + v49) = v30;
  (*(*(v48 - 8) + 56))(*(v0 + 56), 0, 1, v48);

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1D1AEFA08(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 136) = a4;
  *(v5 + 144) = v4;
  *(v5 + 368) = a2;
  *(v5 + 120) = a1;
  *(v5 + 128) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v5 + 152) = swift_task_alloc();
  *(v5 + 160) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v5 + 168) = swift_task_alloc();
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250) - 8);
  *(v5 + 176) = v6;
  *(v5 + 184) = *(v6 + 64);
  *(v5 + 192) = swift_task_alloc();
  *(v5 + 200) = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  *(v5 + 208) = v7;
  *(v5 + 216) = *(v7 - 8);
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  *(v5 + 248) = swift_task_alloc();
  *(v5 + 256) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AEFBE0, 0, 0);
}

uint64_t sub_1D1AEFBE0()
{
  v1 = type metadata accessor for StateSnapshot(0);
  *(v0 + 264) = v1;
  *(v0 + 360) = *(v1 + 20);
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v2 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AEFC88, v2, 0);
}

uint64_t sub_1D1AEFC88()
{
  v10 = v0;
  v1 = *(v0 + 144);
  swift_beginAccess();
  v2 = *(v1 + 64);
  if (v2)
  {
    v3 = [v2 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v9 = sub_1D1749970(v4);
    sub_1D1747DDC(&v9);

    v5 = v9;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = *(v0 + 136) + *(v0 + 360);
  v7 = swift_task_alloc();
  *(v7 + 16) = v6;
  *(v0 + 272) = sub_1D174A6C4(sub_1D1749C64, v7, v5);

  return MEMORY[0x1EEE6DFA0](sub_1D1AEFE10, 0, 0);
}

uint64_t sub_1D1AEFE10()
{
  v95 = v0;
  if (v0[34])
  {
    if (MEMORY[0x1E69E7CC0] >> 62)
    {
LABEL_55:
      if (sub_1D1E6873C())
      {
        sub_1D179D370(MEMORY[0x1E69E7CC0]);
      }

      else
      {
        v79 = MEMORY[0x1E69E7CD0];
      }

      v0[11] = v79;
      if (sub_1D1E6873C())
      {
        sub_1D179D394(MEMORY[0x1E69E7CC0]);
        v1 = v80;
      }

      else
      {
        v1 = MEMORY[0x1E69E7CD0];
      }
    }

    else
    {
      v1 = MEMORY[0x1E69E7CD0];
      v0[11] = MEMORY[0x1E69E7CD0];
    }

    v2 = v0[16];
    v0[12] = v1;
    v3 = *(v2 + 16);
    v0[35] = v3;
    if (v3)
    {
      v4 = v0[26];
      v5 = v0[27];
      v6 = *(v5 + 16);
      v5 += 16;
      v7 = *(v5 + 64);
      *(v0 + 91) = v7;
      v0[36] = *(v5 + 56);
      v0[37] = v6;
      v8 = v0[32];
      v0[38] = 0;
      v0[39] = v5 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v6(v8, v2 + ((v7 + 32) & ~v7), v4);
      v9 = swift_task_alloc();
      v0[40] = v9;
      *v9 = v0;
      v9[1] = sub_1D1AF0858;
      v10 = v0[17];
      v11 = v0[32];

      return sub_1D1AF8584(v11, v10);
    }

    v35 = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
    if ((v1 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1D1E686EC();
      sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
      sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
      sub_1D1E681BC();
      v1 = v0[2];
      v36 = v0[3];
      v37 = v0[4];
      v38 = v0[5];
      v39 = v0[6];
    }

    else
    {
      v47 = -1 << *(v1 + 32);
      v36 = v1 + 56;
      v37 = ~v47;
      v48 = -v47;
      if (v48 < 64)
      {
        v49 = ~(-1 << v48);
      }

      else
      {
        v49 = -1;
      }

      v39 = v49 & *(v1 + 56);

      v38 = 0;
    }

    v81 = v37;
    v50 = (v37 + 64) >> 6;
    v87 = *(v0 + 368) | 0x80;
    v84 = v0[27];
    v89 = v36;
    for (i = v1; ; v1 = i)
    {
      v0[42] = v35;
      if (v1 < 0)
      {
        v56 = sub_1D1E6877C();
        if (!v56 || (v0[14] = v56, sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0), swift_dynamicCast(), v55 = v0[13], v53 = v38, v54 = v39, !v55))
        {
LABEL_47:
          v72 = v0[34];
          v73 = v0[21];
          v74 = v0;
          sub_1D1716918(i);

          v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
          v76 = [v72 uniqueIdentifier];
          sub_1D1E66A5C();

          *(v73 + v75) = v35;
          swift_storeEnumTagMultiPayload();

          v77 = swift_task_alloc();
          v74[43] = v77;
          *v77 = v74;
          v77[1] = sub_1D1AF11C0;
          v78 = v74[21];

          return sub_1D1AB6894(v78, 0, 0, 0, 0);
        }
      }

      else
      {
        v51 = v38;
        v52 = v39;
        v53 = v38;
        if (!v39)
        {
          while (1)
          {
            v53 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              break;
            }

            if (v53 >= v50)
            {
              goto LABEL_47;
            }

            v52 = *(v36 + 8 * v53);
            ++v51;
            if (v52)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_54:
          __break(1u);
          goto LABEL_55;
        }

LABEL_34:
        v54 = (v52 - 1) & v52;
        v55 = *(*(v1 + 48) + ((v53 << 9) | (8 * __clz(__rbit64(v52)))));
        if (!v55)
        {
          goto LABEL_47;
        }
      }

      v57 = [v55 uniqueIdentifier];
      sub_1D1E66A5C();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v94 = v35;
      v59 = sub_1D1742188();
      v61 = v35[2];
      v62 = (v60 & 1) == 0;
      v63 = __OFADD__(v61, v62);
      v64 = v61 + v62;
      if (v63)
      {
        goto LABEL_54;
      }

      v65 = v60;
      if (v35[3] >= v64)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v71 = v59;
          sub_1D173BFC4();
          v59 = v71;
          v0 = v92;
          v35 = v94;
        }
      }

      else
      {
        sub_1D172DCA8(v64, isUniquelyReferenced_nonNull_native);
        v35 = v94;
        v59 = sub_1D1742188();
        if ((v65 & 1) != (v66 & 1))
        {

          return sub_1D1E690FC();
        }
      }

      v67 = v0[30];
      v68 = v0[26];
      if (v65)
      {
        *(v35[7] + v59) = v87;

        (*(v84 + 8))(v67, v68);
        v38 = v53;
        v39 = v54;
      }

      else
      {
        v35[(v59 >> 6) + 8] |= 1 << v59;
        v0 = v59;
        (*(v84 + 16))(v35[6] + *(v84 + 72) * v59, v67, v68);
        *(v0 + v35[7]) = v87;

        (*(v84 + 8))(v67, v68);
        v69 = v35[2];
        v63 = __OFADD__(v69, 1);
        v70 = v69 + 1;
        if (v63)
        {
          __break(1u);
          goto LABEL_58;
        }

        v35[2] = v70;
        v38 = v53;
        v39 = v54;
        v0 = v92;
      }

      v36 = v89;
    }
  }

  if (qword_1EC642328 != -1)
  {
LABEL_58:
    swift_once();
  }

  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC64A290);

  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6833C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = v0[16];
    v17 = v0;
    v18 = *(v0 + 368);
    v19 = swift_slowAlloc();
    v86 = swift_slowAlloc();
    v93 = v86;
    *v19 = 136315650;
    *(v19 + 4) = sub_1D1B1312C(0xD000000000000036, 0x80000001D1EC4760, &v93);
    *(v19 + 12) = 1024;
    *(v19 + 14) = v18;
    *(v19 + 18) = 2080;
    v20 = *(v16 + 16);
    v21 = MEMORY[0x1E69E7CC0];
    if (v20)
    {
      v82 = v15;
      v83 = v19;
      v85 = v14;
      v22 = v17[27];
      v23 = v17[16];
      v94 = MEMORY[0x1E69E7CC0];
      sub_1D178CD24(0, v20, 0);
      v21 = v94;
      v24 = *(v22 + 16);
      v22 += 16;
      v25 = v23 + ((*(v22 + 64) + 32) & ~*(v22 + 64));
      v88 = *(v22 + 56);
      v90 = v24;
      v26 = (v22 - 8);
      do
      {
        v27 = v92[28];
        v28 = v92[26];
        v90(v27, v25, v28);
        v29 = sub_1D1E66A1C();
        v31 = v30;
        (*v26)(v27, v28);
        v94 = v21;
        v33 = v21[2];
        v32 = v21[3];
        if (v33 >= v32 >> 1)
        {
          sub_1D178CD24((v32 > 1), v33 + 1, 1);
          v21 = v94;
        }

        v21[2] = v33 + 1;
        v34 = &v21[2 * v33];
        v34[4] = v29;
        v34[5] = v31;
        v25 += v88;
        --v20;
      }

      while (v20);
      v19 = v83;
      v14 = v85;
      v15 = v82;
    }

    v0 = v92;
    v92[10] = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
    sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640, MEMORY[0x1E69E6310]);
    v40 = sub_1D1E6770C();
    v42 = v41;

    v43 = sub_1D1B1312C(v40, v42, &v93);

    *(v19 + 20) = v43;
    _os_log_impl(&dword_1D16EC000, v14, v15, "%s Home not found to set power state to %{BOOL}d for device idss %s.", v19, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v86, -1, -1);
    MEMORY[0x1D3893640](v19, -1, -1);
  }

  v44 = v0[15];
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  (*(*(v45 - 8) + 56))(v44, 1, 1, v45);

  v46 = v0[1];

  return v46();
}

uint64_t sub_1D1AF0858(uint64_t a1)
{
  *(*v1 + 328) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AF0958, 0, 0);
}

uint64_t sub_1D1AF0958()
{
  v84 = v0;
  v1 = *(v0 + 328);
  if (v1)
  {
    if (*(v0 + 368))
    {
      v2 = 2;
    }

    else
    {
      v2 = 1;
    }

    v3 = [objc_allocWithZone(MEMORY[0x1E696CAF8]) initWithAccessory:v1 targetSleepWakeState:v2];
    if (v3)
    {
      v4 = v3;
      v5 = [v1 mediaProfile];
      if (v5)
      {
        sub_1D1763114(&v83, v5);
      }

      v6 = *(v0 + 256);
      v7 = *(v0 + 208);
      v8 = *(v0 + 216);
      sub_1D1768DB8(&v83, v4);

      (*(v8 + 8))(v6, v7);
      goto LABEL_14;
    }
  }

  if (qword_1EC642328 != -1)
  {
LABEL_54:
    swift_once();
  }

  v9 = *(v0 + 296);
  v10 = *(v0 + 248);
  v11 = *(v0 + 256);
  v12 = *(v0 + 208);
  v13 = sub_1D1E6709C();
  __swift_project_value_buffer(v13, qword_1EC64A290);
  v9(v10, v11, v12);
  v14 = sub_1D1E6707C();
  v15 = sub_1D1E6833C();
  v16 = os_log_type_enabled(v14, v15);
  v17 = *(v0 + 248);
  v18 = *(v0 + 256);
  v20 = *(v0 + 208);
  v19 = *(v0 + 216);
  if (v16)
  {
    v81 = *(v0 + 256);
    v21 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v83 = v79;
    *v21 = 136315138;
    sub_1D1AFA21C(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v22 = sub_1D1E68FAC();
    v24 = v23;
    v25 = *(v19 + 8);
    v25(v17, v20);
    v26 = sub_1D1B1312C(v22, v24, &v83);

    *(v21 + 4) = v26;
    _os_log_impl(&dword_1D16EC000, v14, v15, "Could not create media profile power action using deviceID: %s", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x1D3893640](v79, -1, -1);
    MEMORY[0x1D3893640](v21, -1, -1);

    v25(v81, v20);
  }

  else
  {

    v27 = *(v19 + 8);
    v27(v17, v20);
    v27(v18, v20);
  }

LABEL_14:
  v28 = *(v0 + 304) + 1;
  if (v28 == *(v0 + 280))
  {
    v29 = *(v0 + 96);
    v30 = sub_1D18DAFD4(MEMORY[0x1E69E7CC0]);
    if ((v29 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      sub_1D1E686EC();
      sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0);
      sub_1D1771944(&qword_1EC642FC0, &qword_1EC642FB8, 0x1E696CBF0);
      sub_1D1E681BC();
      v29 = *(v0 + 16);
      v31 = *(v0 + 24);
      v32 = *(v0 + 32);
      v33 = *(v0 + 40);
      v34 = *(v0 + 48);
    }

    else
    {
      v44 = -1 << *(v29 + 32);
      v31 = v29 + 56;
      v32 = ~v44;
      v45 = -v44;
      if (v45 < 64)
      {
        v46 = ~(-1 << v45);
      }

      else
      {
        v46 = -1;
      }

      v34 = v46 & *(v29 + 56);

      v33 = 0;
    }

    v76 = v32;
    v47 = (v32 + 64) >> 6;
    v78 = *(v0 + 368) | 0x80;
    v77 = *(v0 + 216);
    v80 = v31;
    for (i = v29; ; v29 = i)
    {
      *(v0 + 336) = v30;
      if (v29 < 0)
      {
        v53 = sub_1D1E6877C();
        if (!v53 || (*(v0 + 112) = v53, sub_1D1741B10(0, &qword_1EC642FB8, 0x1E696CBF0), swift_dynamicCast(), v52 = *(v0 + 104), v50 = v33, v51 = v34, !v52))
        {
LABEL_45:
          v70 = *(v0 + 272);
          v71 = *(v0 + 168);
          sub_1D1716918(i);

          v72 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9C8, &unk_1D1E98080) + 48);
          v73 = [v70 uniqueIdentifier];
          sub_1D1E66A5C();

          *(v71 + v72) = v30;
          swift_storeEnumTagMultiPayload();

          v74 = swift_task_alloc();
          *(v0 + 344) = v74;
          *v74 = v0;
          v74[1] = sub_1D1AF11C0;
          v75 = *(v0 + 168);

          return sub_1D1AB6894(v75, 0, 0, 0, 0);
        }
      }

      else
      {
        v48 = v33;
        v49 = v34;
        v50 = v33;
        if (!v34)
        {
          while (1)
          {
            v50 = v48 + 1;
            if (__OFADD__(v48, 1))
            {
              break;
            }

            if (v50 >= v47)
            {
              goto LABEL_45;
            }

            v49 = *(v31 + 8 * v50);
            ++v48;
            if (v49)
            {
              goto LABEL_32;
            }
          }

          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
          goto LABEL_54;
        }

LABEL_32:
        v51 = (v49 - 1) & v49;
        v52 = *(*(v29 + 48) + ((v50 << 9) | (8 * __clz(__rbit64(v49)))));
        if (!v52)
        {
          goto LABEL_45;
        }
      }

      v54 = [v52 uniqueIdentifier];
      sub_1D1E66A5C();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v83 = v30;
      v56 = sub_1D1742188();
      v58 = v30[2];
      v59 = (v57 & 1) == 0;
      v60 = __OFADD__(v58, v59);
      v61 = v58 + v59;
      if (v60)
      {
        goto LABEL_52;
      }

      v62 = v57;
      if (v30[3] >= v61)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v69 = v56;
          sub_1D173BFC4();
          v56 = v69;
          v30 = v83;
        }
      }

      else
      {
        sub_1D172DCA8(v61, isUniquelyReferenced_nonNull_native);
        v30 = v83;
        v56 = sub_1D1742188();
        if ((v62 & 1) != (v63 & 1))
        {

          return sub_1D1E690FC();
        }
      }

      v64 = *(v0 + 240);
      v65 = *(v0 + 208);
      if (v62)
      {
        *(v30[7] + v56) = v78;

        (*(v77 + 8))(v64, v65);
      }

      else
      {
        v30[(v56 >> 6) + 8] |= 1 << v56;
        v66 = v56;
        (*(v77 + 16))(v30[6] + *(v77 + 72) * v56, v64, v65);
        *(v30[7] + v66) = v78;

        (*(v77 + 8))(v64, v65);
        v67 = v30[2];
        v60 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v60)
        {
          goto LABEL_53;
        }

        v30[2] = v68;
      }

      v33 = v50;
      v34 = v51;
      v31 = v80;
    }
  }

  v35 = *(v0 + 296);
  v36 = *(v0 + 256);
  v37 = *(v0 + 208);
  v38 = *(v0 + 128) + ((*(v0 + 364) + 32) & ~*(v0 + 364)) + *(v0 + 288) * v28;
  v39 = (*(v0 + 216) + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  *(v0 + 304) = v28;
  *(v0 + 312) = v39;
  v35(v36, v38, v37);
  v40 = swift_task_alloc();
  *(v0 + 320) = v40;
  *v40 = v0;
  v40[1] = sub_1D1AF0858;
  v41 = *(v0 + 256);
  v42 = *(v0 + 136);

  return sub_1D1AF8584(v41, v42);
}

uint64_t sub_1D1AF11C0(uint64_t a1)
{
  v2 = *(*v1 + 168);
  *(*v1 + 352) = a1;

  sub_1D1AFB0C4(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AF12F4, 0, 0);
}

uint64_t sub_1D1AF12F4()
{
  v1 = *(v0 + 352);
  v2 = [*(v0 + 272) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v3 = sub_1D1742188();
    v4 = *(v0 + 264);
    v5 = *(v0 + 232);
    v6 = *(v0 + 208);
    v7 = *(v0 + 216);
    if (v8)
    {
      v9 = *(v4 - 8);
      sub_1D1AFB124(*(*(v0 + 352) + 56) + *(v9 + 72) * v3, *(v0 + 200), type metadata accessor for StateSnapshot);
      (*(v7 + 8))(v5, v6);

      v10 = 0;
      goto LABEL_7;
    }

    (*(v7 + 8))(v5, v6);
    v15 = *(v4 - 8);
  }

  else
  {
    v11 = *(v0 + 264);
    v12 = *(v0 + 232);
    v13 = *(v0 + 208);
    v14 = *(v0 + 216);

    (*(v14 + 8))(v12, v13);
    v15 = *(v11 - 8);
  }

  v9 = v15;
  v10 = 1;
LABEL_7:
  v33 = *(v0 + 272);
  v34 = *(v0 + 336);
  v17 = *(v0 + 192);
  v16 = *(v0 + 200);
  v18 = *(v0 + 176);
  v19 = *(v0 + 184);
  v21 = *(v0 + 144);
  v20 = *(v0 + 152);
  v22 = *(v0 + 120);
  (*(v9 + 56))(v16, v10, 1, *(v0 + 264));
  v23 = sub_1D1E67E7C();
  (*(*(v23 - 8) + 56))(v20, 1, 1, v23);
  sub_1D1741C08(v16, v17, &unk_1EC649E30, &unk_1D1E91250);
  v24 = *(v0 + 88);
  v25 = (*(v18 + 80) + 48) & ~*(v18 + 80);
  v26 = (v19 + v25 + 7) & 0xFFFFFFFFFFFFFFF8;
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v33;
  v27[5] = v24;
  sub_1D1741A90(v17, v27 + v25, &unk_1EC649E30, &unk_1D1E91250);
  *(v27 + v26) = v21;
  *(v27 + ((v26 + 15) & 0xFFFFFFFFFFFFFFF8)) = v34;

  v28 = sub_1D1B02614(0, 0, v20, &unk_1D1E975E0, v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9B8, &qword_1D1E974D8);
  v30 = *(v29 + 48);
  sub_1D1741A90(v16, v22, &unk_1EC649E30, &unk_1D1E91250);
  *(v22 + v30) = v28;
  (*(*(v29 - 8) + 56))(v22, 0, 1, v29);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_1D1AF16E8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 200) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a5;
  *(v7 + 48) = *(type metadata accessor for StaticLightProfile(0) - 8);
  *(v7 + 56) = swift_task_alloc();
  v9 = sub_1D1E66A7C();
  *(v7 + 64) = v9;
  *(v7 + 72) = *(v9 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = swift_task_alloc();
  *(v7 + 96) = swift_task_alloc();
  *(v7 + 104) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v7 + 112) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v7 + 120) = v10;
  *v10 = v7;
  v10[1] = sub_1D1AF1890;

  return sub_1D1AF2CD0(a6);
}

uint64_t sub_1D1AF1890(uint64_t a1)
{
  *(*v1 + 128) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AF1990, 0, 0);
}

uint64_t sub_1D1AF1990()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 200);
  v3 = swift_allocObject();
  *(v0 + 136) = v3;
  *(v3 + 16) = v2;
  v4 = swift_allocObject();
  *(v0 + 144) = v4;
  *(v4 + 16) = sub_1D18DAFB0(MEMORY[0x1E69E7CC0]);
  v5 = swift_allocObject();
  *(v0 + 152) = v5;
  *(v5 + 16) = MEMORY[0x1E69E7CD0];
  v6 = swift_task_alloc();
  *(v0 + 160) = v6;
  *(v6 + 16) = "LightProfileSetNaturalLightEnabled";
  *(v6 + 24) = 34;
  *(v6 + 32) = 2;
  *(v6 + 40) = v1;
  *(v6 + 48) = &unk_1D1E975C0;
  *(v6 + 56) = v3;
  *(v6 + 64) = v5;
  *(v6 + 72) = v4;
  *(v6 + 80) = 0;
  *(v6 + 88) = 1;
  v7 = swift_task_alloc();
  *(v0 + 168) = v7;
  *v7 = v0;
  v7[1] = sub_1D1AF1B34;
  v8 = MEMORY[0x1E69E7CA8] + 8;
  v9 = MEMORY[0x1E69E7CA8] + 8;
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DD58](v7, v8, v9, 0, 0, &unk_1D1E975C8, v6, v10);
}

uint64_t sub_1D1AF1B34()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1D1AF1F38;
  }

  else
  {

    v2 = sub_1D1AF1C5C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1AF1C5C()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[8];
  v4 = v0[9];
  v6 = v0[4];
  v5 = v0[5];

  v7 = [v5 uniqueIdentifier];
  sub_1D1E66A5C();

  v28 = *(v4 + 32);
  v28(v1, v2, v3);
  v8 = *(v6 + 16);
  v9 = MEMORY[0x1E69E7CC0];
  if (v8)
  {
    v10 = v0[9];
    v11 = v0[6];
    v12 = v0[4];
    v29 = MEMORY[0x1E69E7CC0];
    sub_1D178CEFC(0, v8, 0);
    v9 = v29;
    v13 = v12 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v27 = *(v11 + 72);
    do
    {
      v14 = v0[10];
      v16 = v0[7];
      v15 = v0[8];
      sub_1D1AFB124(v13, v16, type metadata accessor for StaticLightProfile);
      (*(v10 + 16))(v14, v16, v15);
      sub_1D1AFB0C4(v16, type metadata accessor for StaticLightProfile);
      v18 = *(v29 + 16);
      v17 = *(v29 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D178CEFC((v17 > 1), v18 + 1, 1);
      }

      v19 = v0[10];
      v20 = v0[8];
      *(v29 + 16) = v18 + 1;
      v28(v29 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * v18, v19, v20);
      v13 += v27;
      --v8;
    }

    while (v8);
  }

  v21 = v0[14];
  v22 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
  v23 = sub_1D17841EC(v9);

  *(v21 + v22) = v23;
  swift_storeEnumTagMultiPayload();
  v24 = swift_task_alloc();
  v0[23] = v24;
  *v24 = v0;
  v24[1] = sub_1D1AF201C;
  v25 = v0[14];

  return sub_1D1AB6894(v25, 0, 0, 0, 0);
}

uint64_t sub_1D1AF1F38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AF201C(uint64_t a1)
{
  v2 = *(*v1 + 112);
  *(*v1 + 192) = a1;

  sub_1D1AFB0C4(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AF2150, 0, 0);
}

uint64_t sub_1D1AF2150()
{
  v1 = *(v0 + 192);
  v2 = [*(v0 + 40) uniqueIdentifier];
  sub_1D1E66A5C();

  v3 = *(v0 + 88);
  if (*(v1 + 16))
  {
    v4 = sub_1D1742188();
    v5 = *(v0 + 88);
    v6 = *(v0 + 64);
    v7 = *(v0 + 72);
    if (v8)
    {
      v9 = v4;
      v10 = *(v0 + 16);
      v11 = *(*(v0 + 192) + 56);
      v12 = type metadata accessor for StateSnapshot(0);
      v13 = *(v12 - 8);
      sub_1D1AFB124(v11 + *(v13 + 72) * v9, v10, type metadata accessor for StateSnapshot);
      (*(v7 + 8))(v5, v6);

      v14 = 0;
      goto LABEL_7;
    }

    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);

    (*(v16 + 8))(v3, v15);
  }

  v12 = type metadata accessor for StateSnapshot(0);
  v13 = *(v12 - 8);
  v14 = 1;
LABEL_7:
  (*(v13 + 56))(*(v0 + 16), v14, 1, v12);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D1AF239C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = v13;
  *(v7 + 56) = v14;
  *(v7 + 32) = a6;
  *(v7 + 40) = a7;
  *(v7 + 152) = a4;
  *(v7 + 16) = a1;
  *(v7 + 24) = a5;
  v9 = sub_1D1E66A7C();
  *(v7 + 64) = v9;
  *(v7 + 72) = *(v9 - 8);
  *(v7 + 80) = swift_task_alloc();
  *(v7 + 88) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v7 + 96) = swift_task_alloc();
  v10 = swift_task_alloc();
  *(v7 + 104) = v10;
  *v10 = v7;
  v10[1] = sub_1D1AF24E8;

  return sub_1D1AF44DC(a6, v13, v14);
}

uint64_t sub_1D1AF24E8(uint64_t a1)
{
  v3 = *v1;
  v7 = *v1;
  *(v3 + 112) = a1;

  v4 = swift_task_alloc();
  *(v3 + 120) = v4;
  *v4 = v7;
  v4[1] = sub_1D1AF2644;
  v5 = *(v3 + 152);

  return sub_1D1AFA9E8(v5, a1, 0, 1);
}

uint64_t sub_1D1AF2644()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1D1AF2C54;
  }

  else
  {

    v2 = sub_1D1AF2760;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1AF2760()
{
  v1 = v0[12];
  v2 = v0[7];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A768, &unk_1D1E9C690) + 48);
  v7 = [v5 uniqueIdentifier];
  sub_1D1E66A5C();

  v9 = sub_1D18CE91C(sub_1D18CFDFC, 0, v4, v3, MEMORY[0x1E69E73E0], v2, MEMORY[0x1E69E7410], v8);
  v10 = sub_1D17841EC(v9);

  *(v1 + v6) = v10;
  swift_storeEnumTagMultiPayload();
  v11 = swift_task_alloc();
  v0[17] = v11;
  *v11 = v0;
  v11[1] = sub_1D1AF28F4;
  v12 = v0[12];

  return sub_1D1AB6894(v12, 0, 0, 0, 0);
}

uint64_t sub_1D1AF28F4(uint64_t a1)
{
  v2 = *(*v1 + 96);
  *(*v1 + 144) = a1;

  sub_1D1AFB0C4(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AF2A28, 0, 0);
}

uint64_t sub_1D1AF2A28()
{
  v1 = *(v0 + 144);
  v2 = [*(v0 + 40) uniqueIdentifier];
  sub_1D1E66A5C();

  v3 = *(v0 + 80);
  if (*(v1 + 16))
  {
    v4 = sub_1D1742188();
    v6 = *(v0 + 72);
    v5 = *(v0 + 80);
    v7 = *(v0 + 64);
    if (v8)
    {
      v9 = v4;
      v10 = *(v0 + 16);
      v11 = *(*(v0 + 144) + 56);
      v12 = type metadata accessor for StateSnapshot(0);
      v13 = *(v12 - 8);
      sub_1D1AFB124(v11 + *(v13 + 72) * v9, v10, type metadata accessor for StateSnapshot);
      (*(v6 + 8))(v5, v7);

      v14 = 0;
      goto LABEL_7;
    }

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v15 = *(v0 + 64);
    v16 = *(v0 + 72);

    (*(v16 + 8))(v3, v15);
  }

  v12 = type metadata accessor for StateSnapshot(0);
  v13 = *(v12 - 8);
  v14 = 1;
LABEL_7:
  (*(v13 + 56))(*(v0 + 16), v14, 1, v12);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D1AF2C54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1AF2CD0(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9E8, &qword_1D1E97560);
  v2[14] = swift_task_alloc();
  v2[15] = swift_task_alloc();
  v3 = sub_1D1E66A7C();
  v2[16] = v3;
  v2[17] = *(v3 - 8);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA00, &qword_1D1E97570);
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for StaticLightProfile(0);
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF2EB0, 0, 0);
}

uint64_t sub_1D1AF2EB0()
{
  v1 = v0[12];
  v2 = MEMORY[0x1E69E7CC8];
  v91 = MEMORY[0x1E69E7CC8];
  v3 = *(v1 + 16);
  if (v3)
  {
    v4 = v0 + 2;
    v5 = v0[27];
    v6 = v0[28];
    v7 = v0[17];
    v8 = *(v0[26] + 28);
    v9 = v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v82 = *(v5 + 72);
    v10 = (v7 + 16);
    v78 = v7;
    v87 = (v7 + 8);
    v83 = v0 + 2;
    v79 = v6;
    v81 = v8;
    v86 = (v7 + 16);
    while (1)
    {
      v89 = v9;
      sub_1D1AFB124(v9, v0[28], type metadata accessor for StaticLightProfile);
      if (v91[2])
      {
        sub_1D1742188();
        v11 = *v10;
        if (v12)
        {
          v11(v0[24], v6 + v8, v0[16]);
          v13 = sub_1D1C77360(v4);
          v15 = v0[28];
          v17 = v0[24];
          v16 = v0[25];
          if (*v14)
          {
            v84 = v0[24];
            v18 = v0[25];
            v19 = v0[22];
            v20 = v0[16];
            v80 = v13;
            v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA08, &qword_1D1E97578);
            v22 = *(v21 + 48);
            v11(v19, v15, v20);
            v23 = sub_1D1762CB8(&v18[v22], v19);
            (v80)(v83, 0);
            v24 = v20;
            v4 = v83;
            (*v87)(v84, v24);
            sub_1D1AFB0C4(v15, type metadata accessor for StaticLightProfile);
            *v18 = v23 & 1;
            v25 = *(*(v21 - 8) + 56);
            v26 = v21;
            v6 = v79;
            v0 = v88;
            v25(v18, 0, 1, v26);
          }

          else
          {
            v49 = v0[16];
            (v13)(v4, 0);
            (*v87)(v17, v49);
            sub_1D1AFB0C4(v15, type metadata accessor for StaticLightProfile);
            v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64AA08, &qword_1D1E97578);
            (*(*(v50 - 8) + 56))(v16, 1, 1, v50);
          }

          sub_1D1741A30(v0[25], &qword_1EC64AA00, &qword_1D1E97570);
          goto LABEL_5;
        }

        v85 = v3;
      }

      else
      {
        v85 = v3;
        v11 = *v10;
      }

      v27 = v0[28];
      v28 = v0[16];
      v11(v0[23], v6 + v8, v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
      v29 = *(v78 + 72);
      v30 = (*(v78 + 80) + 32) & ~*(v78 + 80);
      v31 = swift_allocObject();
      *(v31 + 16) = xmmword_1D1E739C0;
      v11((v31 + v30), v27, v28);
      v32 = sub_1D179BE14(v31);
      swift_setDeallocating();
      v33 = *(v78 + 8);
      v33(v31 + v30, v28);
      swift_deallocClassInstance();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = sub_1D1742188();
      v37 = v91[2];
      v38 = (v35 & 1) == 0;
      v39 = v37 + v38;
      if (__OFADD__(v37, v38))
      {
        __break(1u);
LABEL_46:
        __break(1u);
        goto LABEL_47;
      }

      v40 = v35;
      if (v91[3] >= v39)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D173C234();
        }
      }

      else
      {
        sub_1D172E068(v39, isUniquelyReferenced_nonNull_native);
        v41 = sub_1D1742188();
        if ((v40 & 1) != (v42 & 1))
        {

          return sub_1D1E690FC();
        }

        v36 = v41;
      }

      v43 = v88[28];
      v44 = v88[23];
      v45 = v88[16];
      if (v40)
      {
        *(v91[7] + 8 * v36) = v32;

        v33(v44, v45);
        sub_1D1AFB0C4(v43, type metadata accessor for StaticLightProfile);
      }

      else
      {
        v91[(v36 >> 6) + 8] |= 1 << v36;
        v11((v91[6] + v36 * v29), v44, v45);
        *(v91[7] + 8 * v36) = v32;
        v33(v44, v45);
        sub_1D1AFB0C4(v43, type metadata accessor for StaticLightProfile);
        v46 = v91[2];
        v47 = __OFADD__(v46, 1);
        v48 = v46 + 1;
        if (v47)
        {
          goto LABEL_46;
        }

        v91[2] = v48;
      }

      v0 = v88;
      v4 = v83;
      v3 = v85;
      v6 = v79;
LABEL_5:
      v8 = v81;
      v10 = v86;
      v9 = v89 + v82;
      if (!--v3)
      {
        v2 = v91;
        break;
      }
    }
  }

  v0[29] = v2;
  v0[9] = MEMORY[0x1E69E7CC0];
  v51 = *(v2 + 32);
  *(v0 + 336) = v51;
  v52 = 1 << v51;
  v53 = v2[8];
  if (v52 < 64)
  {
    v54 = ~(-1 << v52);
  }

  else
  {
    v54 = -1;
  }

  v55 = v54 & v53;
  swift_beginAccess();
  v0[30] = 0;
  if (v55)
  {
    v56 = 0;
    v57 = v0[29];
LABEL_32:
    v60 = v0[22];
    v61 = v0[16];
    v62 = v0[17];
    v63 = v0[14];
    v64 = (v55 - 1) & v55;
    v65 = __clz(__rbit64(v55)) | (v56 << 6);
    (*(v62 + 16))(v60, *(v57 + 48) + *(v62 + 72) * v65, v61);
    v66 = *(*(v57 + 56) + 8 * v65);
    v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    v68 = *(v67 + 48);
    (*(v62 + 32))(v63, v60, v61);
    *(v63 + v68) = v66;
    (*(*(v67 - 8) + 56))(v63, 0, 1, v67);

    v59 = v56;
  }

  else
  {
    v58 = 0;
    v59 = (((1 << *(v0 + 336)) + 63) >> 6) - 1;
    while (v59 != v58)
    {
      v56 = v58 + 1;
      v57 = v0[29];
      v55 = *(v57 + 8 * v58++ + 72);
      if (v55)
      {
        goto LABEL_32;
      }
    }

    v76 = v0[14];
    v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    (*(*(v77 - 8) + 56))(v76, 1, 1, v77);
    v64 = 0;
  }

  v0[31] = v64;
  v0[32] = v59;
  v69 = v0[15];
  sub_1D1741A90(v0[14], v69, &qword_1EC64A9E8, &qword_1D1E97560);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  if ((*(*(v70 - 8) + 48))(v69, 1, v70) == 1)
  {

    v90 = v0[9];

    v71 = v0[1];

    return v71(v90);
  }

  else
  {
    v73 = v0[21];
    v74 = v0[17];
    v0[33] = *(v0[15] + *(v70 + 48));
    (*(v74 + 32))(v73);
    if (qword_1EC642358 != -1)
    {
LABEL_47:
      swift_once();
    }

    v75 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AF37D8, v75, 0);
  }
}

uint64_t sub_1D1AF37D8()
{
  v1 = v0;
  v2 = *(v0[13] + 64);
  v3 = v0[30];
  if (!v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v8 = v0[20];
    v9 = v0[21];
    v10 = v0[19];
    v12 = v0[16];
    v11 = v0[17];
    v14 = *(v11 + 16);
    v13 = v11 + 16;
    v0[34] = v14;
    v0[35] = v13 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v8, v9, v12);
    v14(v10, v9, v12);
    v46 = v7 >> 62;
    if (v7 >> 62)
    {
LABEL_35:
      v47 = v7 & 0xFFFFFFFFFFFFFF8;
      v15 = sub_1D1E6873C();
    }

    else
    {
      v47 = v7 & 0xFFFFFFFFFFFFFF8;
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v17 = v7 & 0xC000000000000001;
    v45 = v7 + 32;
    while (v15 != v16)
    {
      if (v17)
      {
        v18 = v7;
        v19 = MEMORY[0x1D3891EF0](v16, v7);
      }

      else
      {
        if (v16 >= *(v47 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v18 = v7;
        v19 = *(v7 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = v1;
      v22 = v1[19];
      v23 = [v19 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v24 = sub_1D1E67C1C();

      v25 = swift_task_alloc();
      *(v25 + 16) = v22;
      v13 = sub_1D174A6C4(sub_1D1778988, v25, v24);

      if (v13)
      {
        v15 = v16;
        v7 = v18;
        v1 = v21;
        break;
      }

      v26 = __OFADD__(v16++, 1);
      v7 = v18;
      v1 = v21;
      if (v26)
      {
        goto LABEL_34;
      }
    }

    if (v46)
    {
      if (v15 != sub_1D1E6873C())
      {
LABEL_23:
        if (v17)
        {
          v27 = MEMORY[0x1D3891EF0](v15, v7);
        }

        else
        {
          if (v15 >= *(v47 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v27 = *(v45 + 8 * v15);
        }

        v28 = v27;
        v29 = v1[20];
        v30 = v1;
        v31 = v1[17];
        v32 = v30[16];
        v33 = [v27 accessories];
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        v34 = sub_1D1E67C1C();

        v35 = swift_task_alloc();
        *(v35 + 16) = v29;
        v36 = sub_1D174A6C4(sub_1D1778988, v35, v34);
        v30[36] = v36;
        v30[37] = v3;

        v13 = *(v31 + 8);
        v30[38] = v13;
        v30[39] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        (v13)(v29, v32);

        v15 = v30[19];
        v3 = v30[16];
        if (v36)
        {

          (v13)(v15, v3);
          v37 = sub_1D1AF3C80;
          goto LABEL_30;
        }

LABEL_38:
        v37 = (v13)(v15, v3);
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v37, v43, v44);
      }
    }

    else if (v15 != *(v47 + 16))
    {
      goto LABEL_23;
    }

    v39 = v1[19];
    v38 = v1[20];
    v40 = v1[16];
    v41 = v1[17];
    v42 = *(v41 + 8);
    v1[40] = v42;
    v1[41] = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v38, v40);

    v42(v39, v40);
    v37 = sub_1D1AF43B4;
LABEL_30:
    v43 = 0;
    v44 = 0;

    return MEMORY[0x1EEE6DFA0](v37, v43, v44);
  }

  v4 = [v2 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  sub_1D1E67C1C();

  v0[10] = sub_1D1749970(v5);
  sub_1D1747DDC(v0 + 10);
  if (!v3)
  {

    v7 = v0[10];
    goto LABEL_8;
  }
}

uint64_t sub_1D1AF3C80()
{
  v1 = [*(v0 + 288) profiles];
  sub_1D1741B10(0, &qword_1EC6497D0, 0x1E696CAD0);
  v2 = sub_1D1E67C1C();

  *(v0 + 88) = MEMORY[0x1E69E7CC0];
  v3 = (v0 + 88);
  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  v54 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v51 = (v0 + 88);
  for (i = v2; v4; i = v2)
  {
    v5 = 0;
    v56 = *(v0 + 264) + 56;
    v57 = *(v0 + 264);
    v50 = MEMORY[0x1E69E7CC0];
    v53 = v4;
    while ((i & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1D3891EF0](v5, i);
      v10 = __OFADD__(v5++, 1);
      if (v10)
      {
        goto LABEL_22;
      }

LABEL_9:
      v55 = v9;
      v11 = [v9 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v57 + 16) && (sub_1D1AFA21C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v12 = sub_1D1E676DC(), v13 = -1 << *(v57 + 32), v14 = v12 & ~v13, ((*(v56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        v16 = *(*(v0 + 136) + 72);
        while (1)
        {
          v17 = *(v0 + 304);
          v2 = *(v0 + 312);
          v18 = *(v0 + 176);
          v19 = *(v0 + 128);
          (*(v0 + 272))(v18, *(v57 + 48) + v14 * v16, v19);
          sub_1D1AFA21C(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v20 = sub_1D1E6775C();
          v17(v18, v19);
          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        (*(v0 + 304))(*(v0 + 144), *(v0 + 128));
        objc_opt_self();
        v3 = v55;
        v8 = v53;
        if (swift_dynamicCastObjCClass())
        {
          v3 = v51;
          MEMORY[0x1D3891220]();
          if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D1E67C5C();
          }

          sub_1D1E67CAC();
          v50 = *v51;
        }

        else
        {
        }
      }

      else
      {
LABEL_4:
        v6 = *(v0 + 304);
        v2 = *(v0 + 312);
        v3 = *(v0 + 144);
        v7 = *(v0 + 128);

        v6(v3, v7);
        v8 = v53;
      }

      if (v5 == v8)
      {
        goto LABEL_26;
      }
    }

    if (v5 >= *(v54 + 16))
    {
      goto LABEL_23;
    }

    v9 = *(i + 32 + 8 * v5);
    v10 = __OFADD__(v5++, 1);
    if (!v10)
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v54 = v2 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_1D1E6873C();
    v51 = v3;
  }

  v50 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v21 = *(v0 + 304);
  v22 = *(v0 + 288);
  v23 = *(v0 + 168);
  v24 = *(v0 + 128);

  sub_1D17A4BE0(v50);

  v21(v23, v24);
  v25 = *(v0 + 248);
  v26 = *(v0 + 256);
  *(v0 + 240) = *(v0 + 296);
  if (!v25)
  {
    v28 = ((1 << *(v0 + 336)) + 63) >> 6;
    if (v28 <= (v26 + 1))
    {
      v29 = v26 + 1;
    }

    else
    {
      v29 = ((1 << *(v0 + 336)) + 63) >> 6;
    }

    v30 = v29 - 1;
    while (1)
    {
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v31 >= v28)
      {
        v48 = *(v0 + 112);
        v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
        (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
        v36 = 0;
        goto LABEL_37;
      }

      v27 = *(v0 + 232);
      v25 = *(v27 + 8 * v31 + 64);
      ++v26;
      if (v25)
      {
        v26 = v31;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
    goto LABEL_42;
  }

  v27 = *(v0 + 232);
LABEL_36:
  v32 = *(v0 + 176);
  v33 = *(v0 + 128);
  v34 = *(v0 + 136);
  v35 = *(v0 + 112);
  v36 = (v25 - 1) & v25;
  v37 = __clz(__rbit64(v25)) | (v26 << 6);
  (*(v34 + 16))(v32, *(v27 + 48) + *(v34 + 72) * v37, v33);
  v38 = *(*(v27 + 56) + 8 * v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  v40 = *(v39 + 48);
  (*(v34 + 32))(v35, v32, v33);
  *(v35 + v40) = v38;
  (*(*(v39 - 8) + 56))(v35, 0, 1, v39);

  v30 = v26;
LABEL_37:
  *(v0 + 248) = v36;
  *(v0 + 256) = v30;
  v41 = *(v0 + 120);
  sub_1D1741A90(*(v0 + 112), v41, &qword_1EC64A9E8, &qword_1D1E97560);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
  {

    v58 = *(v0 + 72);

    v43 = *(v0 + 8);

    return v43(v58);
  }

  v45 = *(v0 + 168);
  v46 = *(v0 + 136);
  *(v0 + 264) = *(*(v0 + 120) + *(v42 + 48));
  (*(v46 + 32))(v45);
  if (qword_1EC642358 != -1)
  {
    goto LABEL_47;
  }

LABEL_42:
  v47 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AF37D8, v47, 0);
}

uint64_t sub_1D1AF43B4()
{
  v1 = v0[40];
  v2 = v0[21];
  v3 = v0[16];

  v1(v2, v3);

  v4 = v0[1];
  v5 = MEMORY[0x1E69E7CC0];

  return v4(v5);
}

uint64_t sub_1D1AF44DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v5 = sub_1D1E66A7C();
  v4[14] = v5;
  v4[15] = *(v5 - 8);
  v4[16] = swift_task_alloc();
  v4[17] = swift_task_alloc();
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  v4[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9E8, &qword_1D1E97560);
  v4[21] = swift_task_alloc();
  v4[22] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AF4614, 0, 0);
}

uint64_t sub_1D1AF4614()
{
  *(v0 + 48) = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F0, &unk_1D1E9CB80);
  sub_1D1E67A9C();
  *(v0 + 56) = MEMORY[0x1E69E7CC0];
  v1 = *(v0 + 40);
  *(v0 + 184) = v1;
  v2 = *(v1 + 32);
  *(v0 + 288) = v2;
  v3 = 1 << v2;
  v4 = *(v1 + 64);
  if (v3 < 64)
  {
    v5 = ~(-1 << v3);
  }

  else
  {
    v5 = -1;
  }

  v6 = v5 & v4;
  swift_beginAccess();
  *(v0 + 192) = 0;
  if (v6)
  {
    v7 = 0;
    v8 = *(v0 + 184);
LABEL_9:
    v11 = *(v0 + 160);
    v12 = *(v0 + 168);
    v13 = *(v0 + 112);
    v14 = *(v0 + 120);
    v15 = (v6 - 1) & v6;
    v16 = __clz(__rbit64(v6)) | (v7 << 6);
    (*(v14 + 16))(v11, *(v8 + 48) + *(v14 + 72) * v16, v13);
    v17 = *(*(v8 + 56) + 8 * v16);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    v19 = *(v18 + 48);
    (*(v14 + 32))(v12, v11, v13);
    *(v12 + v19) = v17;
    (*(*(v18 - 8) + 56))(v12, 0, 1, v18);

    v10 = v7;
  }

  else
  {
    v9 = 0;
    v10 = (((1 << *(v0 + 288)) + 63) >> 6) - 1;
    while (v10 != v9)
    {
      v7 = v9 + 1;
      v8 = *(v0 + 184);
      v6 = *(v8 + 8 * v9++ + 72);
      if (v6)
      {
        goto LABEL_9;
      }
    }

    v28 = *(v0 + 168);
    v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
    (*(*(v29 - 8) + 56))(v28, 1, 1, v29);
    v15 = 0;
  }

  *(v0 + 200) = v15;
  *(v0 + 208) = v10;
  v20 = *(v0 + 176);
  sub_1D1741A90(*(v0 + 168), v20, &qword_1EC64A9E8, &qword_1D1E97560);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
  {

    v22 = *(v0 + 56);

    v23 = *(v0 + 8);

    return v23(v22);
  }

  else
  {
    v25 = *(v0 + 152);
    v26 = *(v0 + 120);
    *(v0 + 216) = *(*(v0 + 176) + *(v21 + 48));
    (*(v26 + 32))(v25);
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v27 = qword_1EC64ABE8;

    return MEMORY[0x1EEE6DFA0](sub_1D1AF4A20, v27, 0);
  }
}

uint64_t sub_1D1AF4A20()
{
  v1 = v0;
  v2 = *(v0[13] + 64);
  v3 = v0[24];
  if (!v2)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_8:
    v8 = v0[18];
    v9 = v0[19];
    v10 = v0[17];
    v12 = v0[14];
    v11 = v0[15];
    v14 = *(v11 + 16);
    v13 = v11 + 16;
    v0[28] = v14;
    v0[29] = v13 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v8, v9, v12);
    v14(v10, v9, v12);
    v46 = v7 >> 62;
    if (v7 >> 62)
    {
LABEL_35:
      v47 = v7 & 0xFFFFFFFFFFFFFF8;
      v15 = sub_1D1E6873C();
    }

    else
    {
      v47 = v7 & 0xFFFFFFFFFFFFFF8;
      v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = 0;
    v17 = v7 & 0xC000000000000001;
    v45 = v7 + 32;
    while (v15 != v16)
    {
      if (v17)
      {
        v18 = v7;
        v19 = MEMORY[0x1D3891EF0](v16, v7);
      }

      else
      {
        if (v16 >= *(v47 + 16))
        {
          __break(1u);
LABEL_34:
          __break(1u);
          goto LABEL_35;
        }

        v18 = v7;
        v19 = *(v7 + 8 * v16 + 32);
      }

      v20 = v19;
      v21 = v1;
      v22 = v1[17];
      v23 = [v19 accessories];
      sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
      v24 = sub_1D1E67C1C();

      v25 = swift_task_alloc();
      *(v25 + 16) = v22;
      v13 = sub_1D174A6C4(sub_1D1778988, v25, v24);

      if (v13)
      {
        v15 = v16;
        v7 = v18;
        v1 = v21;
        break;
      }

      v26 = __OFADD__(v16++, 1);
      v7 = v18;
      v1 = v21;
      if (v26)
      {
        goto LABEL_34;
      }
    }

    if (v46)
    {
      if (v15 != sub_1D1E6873C())
      {
LABEL_23:
        if (v17)
        {
          v27 = MEMORY[0x1D3891EF0](v15, v7);
        }

        else
        {
          if (v15 >= *(v47 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          v27 = *(v45 + 8 * v15);
        }

        v28 = v27;
        v29 = v1[18];
        v30 = v1;
        v31 = v1[15];
        v32 = v30[14];
        v33 = [v27 accessories];
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        v34 = sub_1D1E67C1C();

        v35 = swift_task_alloc();
        *(v35 + 16) = v29;
        v36 = sub_1D174A6C4(sub_1D1778988, v35, v34);
        v30[30] = v36;
        v30[31] = v3;

        v13 = *(v31 + 8);
        v30[32] = v13;
        v30[33] = (v31 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        (v13)(v29, v32);

        v15 = v30[17];
        v3 = v30[14];
        if (v36)
        {

          (v13)(v15, v3);
          v37 = sub_1D1AF4EC8;
          goto LABEL_30;
        }

LABEL_38:
        v37 = (v13)(v15, v3);
        __break(1u);
        return MEMORY[0x1EEE6DFA0](v37, v43, v44);
      }
    }

    else if (v15 != *(v47 + 16))
    {
      goto LABEL_23;
    }

    v39 = v1[17];
    v38 = v1[18];
    v40 = v1[14];
    v41 = v1[15];
    v42 = *(v41 + 8);
    v1[34] = v42;
    v1[35] = (v41 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v42(v38, v40);

    v42(v39, v40);
    v37 = sub_1D1AF55CC;
LABEL_30:
    v43 = 0;
    v44 = 0;

    return MEMORY[0x1EEE6DFA0](v37, v43, v44);
  }

  v4 = [v2 homes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  sub_1D1E67C1C();

  v0[8] = sub_1D1749970(v5);
  sub_1D1747DDC(v0 + 8);
  if (!v3)
  {

    v7 = v0[8];
    goto LABEL_8;
  }
}

uint64_t sub_1D1AF4EC8()
{
  v1 = [*(v0 + 240) profiles];
  sub_1D1741B10(0, &qword_1EC6497D0, 0x1E696CAD0);
  v2 = sub_1D1E67C1C();

  *(v0 + 72) = MEMORY[0x1E69E7CC0];
  v3 = (v0 + 72);
  if (v2 >> 62)
  {
    goto LABEL_24;
  }

  v55 = v2 & 0xFFFFFFFFFFFFFF8;
  v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v52 = (v0 + 72);
  for (i = v2; v4; i = v2)
  {
    v5 = 0;
    v57 = *(v0 + 216) + 56;
    v58 = *(v0 + 216);
    v51 = MEMORY[0x1E69E7CC0];
    v54 = v4;
    while ((i & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1D3891EF0](v5, i);
      v10 = __OFADD__(v5++, 1);
      if (v10)
      {
        goto LABEL_22;
      }

LABEL_9:
      v56 = v9;
      v11 = [v9 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v58 + 16) && (sub_1D1AFA21C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v12 = sub_1D1E676DC(), v13 = -1 << *(v58 + 32), v14 = v12 & ~v13, ((*(v57 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0))
      {
        v15 = ~v13;
        v16 = *(*(v0 + 120) + 72);
        while (1)
        {
          v17 = *(v0 + 256);
          v2 = *(v0 + 264);
          v18 = *(v0 + 160);
          v19 = *(v0 + 112);
          (*(v0 + 224))(v18, *(v58 + 48) + v14 * v16, v19);
          sub_1D1AFA21C(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v20 = sub_1D1E6775C();
          v17(v18, v19);
          if (v20)
          {
            break;
          }

          v14 = (v14 + 1) & v15;
          if (((*(v57 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        (*(v0 + 256))(*(v0 + 128), *(v0 + 112));
        objc_opt_self();
        v3 = v56;
        v8 = v54;
        if (swift_dynamicCastObjCClass())
        {
          v3 = v52;
          MEMORY[0x1D3891220]();
          if (*((*v3 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D1E67C5C();
          }

          sub_1D1E67CAC();
          v51 = *v52;
        }

        else
        {
        }
      }

      else
      {
LABEL_4:
        v6 = *(v0 + 256);
        v2 = *(v0 + 264);
        v3 = *(v0 + 128);
        v7 = *(v0 + 112);

        v6(v3, v7);
        v8 = v54;
      }

      if (v5 == v8)
      {
        goto LABEL_26;
      }
    }

    if (v5 >= *(v55 + 16))
    {
      goto LABEL_23;
    }

    v9 = *(i + 32 + 8 * v5);
    v10 = __OFADD__(v5++, 1);
    if (!v10)
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    v55 = v2 & 0xFFFFFFFFFFFFFF8;
    v4 = sub_1D1E6873C();
    v52 = v3;
  }

  v51 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v21 = *(v0 + 256);
  v22 = *(v0 + 240);
  v23 = *(v0 + 152);
  v24 = *(v0 + 112);

  sub_1D17A4BE0(v51);

  v21(v23, v24);
  v25 = *(v0 + 200);
  v26 = *(v0 + 208);
  *(v0 + 192) = *(v0 + 248);
  if (!v25)
  {
    v28 = ((1 << *(v0 + 288)) + 63) >> 6;
    if (v28 <= (v26 + 1))
    {
      v29 = v26 + 1;
    }

    else
    {
      v29 = ((1 << *(v0 + 288)) + 63) >> 6;
    }

    v30 = v29 - 1;
    while (1)
    {
      v31 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v31 >= v28)
      {
        v49 = *(v0 + 168);
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
        (*(*(v50 - 8) + 56))(v49, 1, 1, v50);
        v36 = 0;
        goto LABEL_37;
      }

      v27 = *(v0 + 184);
      v25 = *(v27 + 8 * v31 + 64);
      ++v26;
      if (v25)
      {
        v26 = v31;
        goto LABEL_36;
      }
    }

    __break(1u);
LABEL_47:
    swift_once();
    goto LABEL_42;
  }

  v27 = *(v0 + 184);
LABEL_36:
  v32 = *(v0 + 160);
  v33 = *(v0 + 168);
  v34 = *(v0 + 112);
  v35 = *(v0 + 120);
  v36 = (v25 - 1) & v25;
  v37 = __clz(__rbit64(v25)) | (v26 << 6);
  (*(v35 + 16))(v32, *(v27 + 48) + *(v35 + 72) * v37, v34);
  v38 = *(*(v27 + 56) + 8 * v37);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  v40 = *(v39 + 48);
  (*(v35 + 32))(v33, v32, v34);
  *(v33 + v40) = v38;
  (*(*(v39 - 8) + 56))(v33, 0, 1, v39);

  v30 = v26;
LABEL_37:
  *(v0 + 200) = v36;
  *(v0 + 208) = v30;
  v41 = *(v0 + 176);
  sub_1D1741A90(*(v0 + 168), v41, &qword_1EC64A9E8, &qword_1D1E97560);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9F8, &qword_1D1E97568);
  if ((*(*(v42 - 8) + 48))(v41, 1, v42) == 1)
  {

    v43 = *(v0 + 56);

    v44 = *(v0 + 8);

    return v44(v43);
  }

  v46 = *(v0 + 152);
  v47 = *(v0 + 120);
  *(v0 + 216) = *(*(v0 + 176) + *(v42 + 48));
  (*(v47 + 32))(v46);
  if (qword_1EC642358 != -1)
  {
    goto LABEL_47;
  }

LABEL_42:
  v48 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AF4A20, v48, 0);
}