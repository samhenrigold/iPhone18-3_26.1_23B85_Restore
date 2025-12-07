uint64_t sub_1D1D91008()
{

  v1 = *(v0 + 96);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1D9106C(uint64_t a1)
{
  v2 = *(v1 + 40);
  v9 = *(v1 + 24);
  v3 = sub_1D1E67E0C();
  *(v1 + 136) = v3;
  v4 = swift_task_alloc();
  *(v1 + 144) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v9;
  v5 = swift_task_alloc();
  *(v1 + 152) = v5;
  v6 = type metadata accessor for DataModel(0);
  *v5 = v1;
  v5[1] = sub_1D1D91190;
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DDE0](v1 + 16, v3, v7, 0xD000000000000022, 0x80000001D1EC93D0, sub_1D1D972F0, v4, v6);
}

uint64_t sub_1D1D91190()
{
  v1 = *v0;

  v2 = *(v1 + 128);
  v3 = *(v1 + 120);

  return MEMORY[0x1EEE6DFA0](sub_1D1D912F0, v3, v2);
}

uint64_t sub_1D1D912F0()
{

  *(v0 + 160) = *(v0 + 16);
  v2 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D9137C, v2, v1);
}

uint64_t sub_1D1D9137C()
{

  v1 = *(v0 + 160);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1D1D913E0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, char a3@<W3>, uint64_t a4@<X8>)
{
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return sub_1D1AC3828(a1, a2, a3);
}

uint64_t static DataModel.sharedAsync(defaultingCoverageProvider:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  sub_1D1E67E1C();
  v3[5] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  v3[6] = v5;
  v3[7] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1D91494, v5, v4);
}

uint64_t sub_1D1D91494()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[8] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;

  v4 = swift_task_alloc();
  v0[9] = v4;
  *v4 = v0;
  v4[1] = sub_1D1D91574;

  return static DataModel.sharedAsync(coverageProvider:)(sub_1D1D98160, v3);
}

uint64_t sub_1D1D91574(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 80) = a1;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);

  return MEMORY[0x1EEE6DFA0](sub_1D1D916C0, v4, v3);
}

uint64_t sub_1D1D916C0()
{

  v1 = *(v0 + 8);
  v2 = *(v0 + 80);

  return v1(v2);
}

void *sub_1D1D91724@<X0>(void *(*a1)(void *__return_ptr)@<X1>, uint64_t a2@<X8>)
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
      v4 = sub_1D179B6E8(&unk_1F4D665E0);
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

uint64_t sub_1D1D91878(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v4 = sub_1D1E66A7C();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = sub_1D1E67E1C();
  v3[15] = sub_1D1E67E0C();
  v6 = sub_1D1E67D4C();
  v3[16] = v6;
  v3[17] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1D91974, v6, v5);
}

uint64_t sub_1D1D91974()
{
  v45 = v0;
  v1 = [*(v0 + 80) sortedHomes];
  sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v2 = sub_1D1E67C1C();
  *(v0 + 144) = v2;

  if (v2 >> 62)
  {
    v3 = sub_1D1E6873C();
    *(v0 + 152) = v3;
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_24:

    v37 = *(v0 + 8);

    return v37();
  }

  v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  *(v0 + 152) = v3;
  if (!v3)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (v3 < 1)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    v5 = 0x1EC642000uLL;
    while (1)
    {
      *(v0 + 160) = v4;
      v6 = *(v0 + 144);
      if ((v6 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x1D3891EF0]();
      }

      else
      {
        v7 = *(v6 + 8 * v4 + 32);
      }

      v8 = v7;
      *(v0 + 168) = v7;
      (*(v0 + 64))();
      v10 = *(v0 + 16);
      v9 = *(v0 + 24);
      *(v0 + 176) = v10;
      *(v0 + 184) = v9;
      v11 = *(v0 + 32);
      *(v0 + 33) = v11;
      if (*(v5 + 1096) != -1)
      {
        swift_once();
      }

      v12 = sub_1D1E6709C();
      __swift_project_value_buffer(v12, qword_1EC6BE298);
      v13 = v8;

      sub_1D186145C(v9, v11);
      v14 = sub_1D1E6707C();
      v15 = sub_1D1E6835C();

      sub_1D1861470(v9, v11);
      if (os_log_type_enabled(v14, v15))
      {
        log = v14;
        v17 = *(v0 + 96);
        v16 = *(v0 + 104);
        v39 = *(v0 + 88);
        v18 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v44 = v41;
        *v18 = 136315650;
        v40 = v15;
        v19 = [v13 name];
        v43 = v13;
        v20 = sub_1D1E6781C();
        v22 = v21;

        v23 = sub_1D1B1312C(v20, v22, &v44);

        *(v18 + 4) = v23;
        *(v18 + 12) = 2082;
        v24 = [v43 uniqueIdentifier];
        sub_1D1E66A5C();

        sub_1D1D97AC8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v25 = sub_1D1E68FAC();
        v27 = v26;
        (*(v17 + 8))(v16, v39);
        v5 = 0x1EC642000;
        v28 = sub_1D1B1312C(v25, v27, &v44);

        *(v18 + 14) = v28;
        *(v18 + 22) = 2082;
        v13 = v43;
        *(v0 + 40) = v10;
        *(v0 + 48) = v9;
        *(v0 + 56) = v11;
        v29 = SnapshotCoverageConfig.debugDescription.getter();
        v31 = sub_1D1B1312C(v29, v30, &v44);

        *(v18 + 24) = v31;
        v14 = log;
        _os_log_impl(&dword_1D16EC000, log, v40, "Considering refeshing snapshots for home %s (%{public}s) with coverage %{public}s", v18, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v41, -1, -1);
        MEMORY[0x1D3893640](v18, -1, -1);
      }

      if (*(v10 + 16))
      {
        break;
      }

      if (v11 != 3)
      {
        if (v11 >= 3)
        {
          LOBYTE(v11) = -1;
          sub_1D186145C(v9, 255);
          sub_1D1861470(v9, 255);
          v32 = 0;
          v33 = 3;
        }

        else
        {
          sub_1D186145C(v9, v11);
          sub_1D186145C(v9, v11);

          v32 = v9;
          v33 = v11;
        }

        sub_1D1861470(v32, v33);
        break;
      }

      sub_1D186145C(v9, 3);

      sub_1D1861470(0, 3);
      sub_1D1861470(v9, 3);
      sub_1D1861470(v9, 3);

      sub_1D1861470(v9, 3);

      v4 = *(v0 + 160) + 1;
      if (v4 == *(v0 + 152))
      {
        goto LABEL_24;
      }
    }

    v34 = *(v0 + 80);
    *(v0 + 192) = sub_1D1E67E0C();
    v35 = swift_task_alloc();
    *(v0 + 200) = v35;
    *(v35 + 16) = v10;
    *(v35 + 24) = v9;
    *(v35 + 32) = v11;
    *(v35 + 40) = v34;
    *(v35 + 48) = v13;
    v36 = swift_task_alloc();
    *(v0 + 208) = v36;
    *v36 = v0;
    v36[1] = sub_1D1D91F3C;
  }

  return MEMORY[0x1EEE6DDE8]();
}

uint64_t sub_1D1D91F3C()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v3 = *(*v0 + 33);

  sub_1D1861470(v2, v3);

  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1D920EC, v5, v4);
}

uint64_t sub_1D1D920EC()
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
      (*(v0 + 64))();
      v9 = *(v0 + 16);
      v8 = *(v0 + 24);
      *(v0 + 176) = v9;
      *(v0 + 184) = v8;
      v10 = *(v0 + 32);
      *(v0 + 33) = v10;
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
        v16 = *(v0 + 96);
        v15 = *(v0 + 104);
        v36 = *(v0 + 88);
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

        sub_1D1D97AC8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v24 = sub_1D1E68FAC();
        v26 = v25;
        (*(v16 + 8))(v15, v36);
        v4 = 0x1EC642000;
        v27 = sub_1D1B1312C(v24, v26, &v41);

        *(v17 + 14) = v27;
        *(v17 + 22) = 2082;
        v12 = v40;
        *(v0 + 40) = v9;
        *(v0 + 48) = v8;
        *(v0 + 56) = v10;
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

    v33 = *(v0 + 80);
    *(v0 + 192) = sub_1D1E67E0C();
    v34 = swift_task_alloc();
    *(v0 + 200) = v34;
    *(v34 + 16) = v9;
    *(v34 + 24) = v8;
    *(v34 + 32) = v10;
    *(v34 + 40) = v33;
    *(v34 + 48) = v12;
    v35 = swift_task_alloc();
    *(v0 + 208) = v35;
    *v35 = v0;
    v35[1] = sub_1D1D91F3C;

    return MEMORY[0x1EEE6DDE8]();
  }
}

uint64_t sub_1D1D92640(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v48 = a3;
  v45 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  v50 = *(v6 - 8);
  v46 = *(v50 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v49 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v47 = &v43 - v9;
  v10 = sub_1D1E66FDC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v43 - v15;
  if (qword_1EC642448 != -1)
  {
    swift_once();
  }

  v17 = sub_1D1E6709C();
  __swift_project_value_buffer(v17, qword_1EC6BE298);
  v18 = sub_1D1E6707C();
  v19 = sub_1D1E6835C();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_1D16EC000, v18, v19, "HomeManagerActor.dataModelShared._setupDataModel called", v20, 2u);
    MEMORY[0x1D3893640](v20, -1, -1);
  }

  if (qword_1EE07AE48 != -1)
  {
    swift_once();
  }

  v21 = sub_1D1E6701C();
  __swift_project_value_buffer(v21, qword_1EE07AE50);
  sub_1D1E66FCC();
  v22 = sub_1D1E66FFC();
  v23 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    v24 = swift_slowAlloc();
    v44 = v11;
    v25 = v14;
    v26 = v6;
    v27 = a2;
    v28 = v10;
    v29 = a4;
    v30 = v24;
    *v24 = 0;
    v31 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v22, v23, v31, "HomeManagerWarmUp", "", v30, 2u);
    v32 = v30;
    a4 = v29;
    v10 = v28;
    a2 = v27;
    v6 = v26;
    v14 = v25;
    v11 = v44;
    MEMORY[0x1D3893640](v32, -1, -1);
  }

  (*(v11 + 16))(v14, v16, v10);
  sub_1D1E6705C();
  swift_allocObject();
  v33 = sub_1D1E6704C();
  (*(v11 + 8))(v16, v10);
  v34 = sub_1D1E67E7C();
  v35 = v47;
  (*(*(v34 - 8) + 56))(v47, 1, 1, v34);
  v37 = v49;
  v36 = v50;
  (*(v50 + 16))(v49, v45, v6);
  sub_1D1E67E1C();

  v38 = sub_1D1E67E0C();
  v39 = (*(v36 + 80) + 88) & ~*(v36 + 80);
  v40 = swift_allocObject();
  v41 = MEMORY[0x1E69E85E0];
  *(v40 + 16) = v38;
  *(v40 + 24) = v41;
  *(v40 + 32) = "HomeManagerWarmUp";
  *(v40 + 40) = 17;
  *(v40 + 48) = 2;
  *(v40 + 56) = v33;
  *(v40 + 64) = a2;
  *(v40 + 72) = v48;
  *(v40 + 80) = a4;
  (*(v36 + 32))(v40 + v39, v37, v6);
  sub_1D17C6EF0(0, 0, v35, &unk_1D1EAF3E8, v40);
}

uint64_t sub_1D1D92B48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 64) = v16;
  *(v8 + 48) = v15;
  *(v8 + 32) = a7;
  *(v8 + 40) = a8;
  *(v8 + 144) = a6;
  *(v8 + 16) = a4;
  *(v8 + 24) = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  *(v8 + 72) = v9;
  v10 = *(v9 - 8);
  *(v8 + 80) = v10;
  *(v8 + 88) = *(v10 + 64);
  *(v8 + 96) = swift_task_alloc();
  sub_1D1E67E1C();
  *(v8 + 104) = sub_1D1E67E0C();
  v12 = sub_1D1E67D4C();
  *(v8 + 112) = v12;
  *(v8 + 120) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1D1D92C6C, v12, v11);
}

uint64_t sub_1D1D92C6C(uint64_t a1)
{
  v2 = qword_1EC64F370;
  if (!qword_1EC64F370)
  {
    type metadata accessor for HomeManagerActor();
    swift_allocObject();
    v2 = sub_1D1D8F35C(0);
    qword_1EC64F370 = v2;
  }

  *(v1 + 128) = v2;
  v3 = *(v1 + 96);
  v4 = *(v1 + 72);
  v5 = *(v1 + 80);
  v6 = *(v1 + 56);
  v13 = *(v1 + 48);
  v12 = *(v1 + 144);
  v8 = *(v1 + 16);
  v7 = *(v1 + 24);
  v14 = *(v1 + 32);
  (*(v5 + 16))(v3, *(v1 + 64), v4);
  v9 = (*(v5 + 80) + 72) & ~*(v5 + 80);
  v10 = swift_allocObject();
  *(v1 + 136) = v10;
  *(v10 + 16) = v8;
  *(v10 + 24) = v7;
  *(v10 + 32) = v12;
  *(v10 + 40) = v14;
  *(v10 + 56) = v13;
  *(v10 + 64) = v6;
  (*(v5 + 32))(v10 + v9, v3, v4);

  return MEMORY[0x1EEE6DFA0](sub_1D1D92DFC, v2, 0);
}

uint64_t sub_1D1D92DFC()
{
  sub_1D1D8FE58(sub_1D1D97CE0, v0[17]);

  v1 = v0[14];
  v2 = v0[15];

  return MEMORY[0x1EEE6DFA0](sub_1D1D92E88, v1, v2);
}

uint64_t sub_1D1D92E88()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1D92EF0(void *a1, const char *a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v50 = a7;
  v51 = a8;
  v52 = a4;
  v58 = a2;
  v54 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  v9 = *(v57 - 8);
  v53 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v48[-v10];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v56 = &v48[-v12];
  v13 = sub_1D1E6702C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v48[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = sub_1D1E66FDC();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v48[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EE07AE48 != -1)
  {
    swift_once();
  }

  v21 = sub_1D1E6701C();
  __swift_project_value_buffer(v21, qword_1EE07AE50);
  v22 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v49 = sub_1D1E683DC();
  result = sub_1D1E6855C();
  if ((result & 1) == 0)
  {
    goto LABEL_15;
  }

  if (v52)
  {
LABEL_7:
    if (v58 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v58 & 0xFFFFF800) == 0xD800)
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if (v58 >> 16 <= 0x10)
      {
        v58 = &v59;
        goto LABEL_11;
      }
    }

    __break(1u);
    goto LABEL_27;
  }

  if (!v58)
  {
    __break(1u);
    goto LABEL_7;
  }

LABEL_11:

  sub_1D1E6706C();

  if ((*(v14 + 88))(v16, v13) == *MEMORY[0x1E69E93E8])
  {
    v24 = "[Error] Interval already ended";
  }

  else
  {
    (*(v14 + 8))(v16, v13);
    v24 = "";
  }

  v25 = swift_slowAlloc();
  *v25 = 0;
  v26 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v22, v49, v26, v58, v24, v25, 2u);
  MEMORY[0x1D3893640](v25, -1, -1);
LABEL_15:

  (*(v18 + 8))(v20, v17);
  if (qword_1EC642448 != -1)
  {
    swift_once();
  }

  v27 = sub_1D1E6709C();
  __swift_project_value_buffer(v27, qword_1EC6BE298);
  v28 = sub_1D1E6707C();
  v29 = sub_1D1E6835C();
  v30 = os_log_type_enabled(v28, v29);
  v32 = v56;
  v31 = v57;
  v33 = v55;
  if (v30)
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&dword_1D16EC000, v28, v29, "HomeManagerActor.dataModelShared homeManager wait finished for _setupDataModel", v34, 2u);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  byte_1EC6BE2B0 = 1;
  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  v35 = qword_1EE07AE40;
  v36 = sub_1D1E67E7C();
  (*(*(v36 - 8) + 56))(v32, 1, 1, v36);
  (*(v9 + 16))(v33, a9, v31);
  sub_1D1E67E1C();
  v37 = v54;
  if (v35 == 4)
  {
    v38 = v51;

    v39 = sub_1D1E67E0C();
    v40 = (*(v9 + 80) + 56) & ~*(v9 + 80);
    v41 = swift_allocObject();
    v42 = MEMORY[0x1E69E85E0];
    *(v41 + 2) = v39;
    *(v41 + 3) = v42;
    v43 = v50;
    *(v41 + 4) = v37;
    *(v41 + 5) = v43;
    *(v41 + 6) = v38;
    (*(v9 + 32))(&v41[v40], v33, v31);
    v44 = &unk_1D1EAF408;
  }

  else
  {
    v45 = sub_1D1E67E0C();
    v46 = (*(v9 + 80) + 40) & ~*(v9 + 80);
    v41 = swift_allocObject();
    v47 = MEMORY[0x1E69E85E0];
    *(v41 + 2) = v45;
    *(v41 + 3) = v47;
    *(v41 + 4) = v37;
    (*(v9 + 32))(&v41[v46], v33, v31);
    v44 = &unk_1D1EAF3F8;
  }

  sub_1D17C6EF0(0, 0, v32, v44, v41);
}

uint64_t sub_1D1D93548(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  type metadata accessor for DataModel.StateSubscription.Reason(0);
  v7[7] = swift_task_alloc();
  sub_1D1E67E1C();
  v7[8] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v7[9] = v9;
  v7[10] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1D93610, v9, v8);
}

uint64_t sub_1D1D93610()
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  *(v0 + 88) = qword_1EE07DC60;
  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_1D1D936D8;

  return sub_1D1D93AD8();
}

uint64_t sub_1D1D936D8()
{
  v1 = *v0;
  v2 = *v0;

  v3 = swift_task_alloc();
  v1[13] = v3;
  *v3 = v2;
  v3[1] = sub_1D1D9385C;
  v4 = v1[5];
  v5 = v1[4];
  v6 = v1[3];

  return DataModel.loadUpHomeSnapshots(homeManager:coverageProvider:)(v6, v5, v4);
}

uint64_t sub_1D1D9385C()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D1D9397C, v3, v2);
}

uint64_t sub_1D1D9397C()
{

  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 == 4)
  {
    v1 = v0[7];
    v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A08, &unk_1D1E6E760);
    (*(*(v2 - 8) + 56))(v1, 2, 3, v2);
    DataModel.add(stateSubscriptionEnabledReason:)(v1);
    sub_1D1D97F88(v1, type metadata accessor for DataModel.StateSubscription.Reason);
  }

  v3 = v0[11];
  v0[2] = v3;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  sub_1D1E67D6C();

  v5 = v0[1];

  return v5();
}

uint64_t sub_1D1D93AD8()
{
  v1[5] = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v1[6] = swift_task_alloc();
  v2 = sub_1D1E66FDC();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v1[10] = swift_task_alloc();
  sub_1D1E67E1C();
  v1[11] = sub_1D1E67E0C();
  v4 = sub_1D1E67D4C();
  v1[12] = v4;
  v1[13] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1D1D93C10, v4, v3);
}

uint64_t sub_1D1D93C10()
{
  if (qword_1EE07AE48 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6701C();
  __swift_project_value_buffer(v1, qword_1EE07AE50);
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
  v0[14] = v12;
  (*(v9 + 8))(v7, v8);
  v13 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v14 = *(v11 + v13);
  v0[15] = v14;
  v15 = v14;
  sub_1D1E67E3C();
  v16 = sub_1D1E67E7C();
  (*(*(v16 - 8) + 56))(v10, 0, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v14;
  v17[5] = v12;
  v18 = v15;

  v19 = sub_1D1B1DFC0(0, 0, v10, &unk_1D1EAF320, v17);
  v0[16] = v19;
  sub_1D1741A30(v10, &unk_1EC6442C0, &qword_1D1E741A0);
  v20 = swift_task_alloc();
  v0[17] = v20;
  *v20 = v0;
  v20[1] = sub_1D1D93EFC;
  v21 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DA40](v20, v19, v21);
}

uint64_t sub_1D1D93EFC()
{
  v1 = *v0;

  v2 = *(v1 + 104);
  v3 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1D94040, v3, v2);
}

uint64_t sub_1D1D94040()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D940E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[9] = sub_1D1E67E1C();
  v5[10] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();
  v5[11] = v7;
  v5[12] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1D9417C, v7, v6);
}

uint64_t sub_1D1D9417C()
{
  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE07DC60;
  v0[13] = qword_1EE07DC60;
  swift_getKeyPath();
  v0[5] = v1;
  sub_1D1D97AC8(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v2 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToStateSnapshots;
  swift_beginAccess();
  if (*(*(v1 + v2) + 16))
  {

    v3 = v0[13];
    v0[6] = v3;
    v4 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
    sub_1D1E67D6C();
    v5 = v0[1];

    return v5();
  }

  else
  {
    if (qword_1EC642448 != -1)
    {
      swift_once();
    }

    v7 = sub_1D1E6709C();
    __swift_project_value_buffer(v7, qword_1EC6BE298);
    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6833C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D16EC000, v8, v9, "HomeManagerActor.dataModelShared calling loadUpHomeSnapshots", v10, 2u);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    v0[14] = sub_1D1E67E0C();
    v11 = swift_task_alloc();
    v0[15] = v11;
    *v11 = v0;
    v11[1] = sub_1D1D9443C;
    v12 = v0[7];

    return sub_1D1DE3B24(v12, v1);
  }
}

uint64_t sub_1D1D9443C()
{

  v1 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D94578, v1, v0);
}

uint64_t sub_1D1D94578()
{

  v1 = *(v0 + 88);
  v2 = *(v0 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1D945DC, v1, v2);
}

uint64_t sub_1D1D945DC()
{

  v1 = v0[13];
  v0[6] = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  sub_1D1E67D6C();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1D94670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 40) = a6;
  *(v7 + 48) = a7;
  *(v7 + 72) = a5;
  *(v7 + 24) = a3;
  *(v7 + 32) = a4;
  *(v7 + 16) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v7 + 56) = swift_task_alloc();
  sub_1D1E67E1C();
  *(v7 + 64) = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1D9474C, v9, v8);
}

uint64_t sub_1D1D9474C()
{
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v5 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 72);

  v7 = sub_1D1E67E7C();
  v16 = *(*(v7 - 8) + 56);
  v16(v1, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = v5;
  *(v8 + 40) = v4;
  *(v8 + 48) = v6;
  *(v8 + 56) = v3;
  *(v8 + 64) = v2;

  sub_1D186145C(v4, v6);
  v9 = v3;
  v10 = v2;
  sub_1D1DE256C(v1, &unk_1D1EAF348, v8);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);
  v16(v1, 1, 1, v7);
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = v5;
  *(v11 + 40) = v4;
  *(v11 + 48) = v6;
  *(v11 + 56) = v9;
  *(v11 + 64) = v10;

  sub_1D186145C(v4, v6);
  v12 = v9;
  v13 = v10;
  sub_1D1DE256C(v1, &unk_1D1EAF358, v11);
  sub_1D1741A30(v1, &unk_1EC6442C0, &qword_1D1E741A0);

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1D1D94954(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a6;
  v7[4] = a7;
  v7[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1D1D94978, 0, 0);
}

uint64_t sub_1D1D94978()
{
  if (*(v0[2] + 16))
  {
    v1 = swift_task_alloc();
    v0[5] = v1;
    *v1 = v0;
    v1[1] = sub_1D17D0834;
    v2 = v0[4];
    v3 = v0[2];

    return sub_1D1D94A4C(v2, v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_1D1D94A4C(uint64_t a1, uint64_t a2)
{
  v3[10] = a2;
  v3[11] = v2;
  v3[9] = a1;
  v3[12] = type metadata accessor for StateSnapshot.UpdateType(0);
  v3[13] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v3[14] = v4;
  v3[15] = *(v4 - 8);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = sub_1D1E67E1C();
  v3[21] = sub_1D1E67E0C();
  v6 = sub_1D1E67D4C();
  v3[22] = v6;
  v3[23] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D1D94BC8, v6, v5);
}

uint64_t sub_1D1D94BC8()
{
  v1 = *(v0 + 88);
  v2 = [*(v0 + 72) uniqueIdentifier];
  sub_1D1E66A5C();

  swift_getKeyPath();
  *(v0 + 64) = v1;
  sub_1D1D97AC8(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToStateSnapshots;
  swift_beginAccess();
  v4 = *(v1 + v3);
  if (*(v4 + 16))
  {

    v5 = sub_1D1742188();
    v6 = *(v0 + 152);
    v8 = *(v0 + 120);
    v7 = *(v0 + 128);
    v9 = *(v0 + 112);
    if (v10)
    {
      v11 = v5;
      v24 = *(v4 + 56);
      v12 = type metadata accessor for StateSnapshot(0);
      v13 = *(v12 - 8);
      sub_1D1D97B38(v24 + *(v13 + 72) * v11, v6, type metadata accessor for StateSnapshot);
      (*(v8 + 8))(v7, v9);

      (*(v13 + 56))(v6, 0, 1, v12);
      goto LABEL_7;
    }

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v6 = *(v0 + 152);
    (*(*(v0 + 120) + 8))(*(v0 + 128), *(v0 + 112));
  }

  v12 = type metadata accessor for StateSnapshot(0);
  (*(*(v12 - 8) + 56))(v6, 1, 1, v12);
LABEL_7:
  v14 = *(v0 + 144);
  sub_1D1741C08(*(v0 + 152), v14, &unk_1EC649E30, &unk_1D1E91250);
  type metadata accessor for StateSnapshot(0);
  *(v0 + 192) = v12;
  v15 = *(v12 - 8);
  *(v0 + 200) = v15;
  v16 = (*(v15 + 48))(v14, 1, v12);
  v17 = *(v0 + 144);
  if (v16 == 1)
  {
    sub_1D1741A30(*(v0 + 144), &unk_1EC649E30, &unk_1D1E91250);
LABEL_13:
    *(v0 + 208) = sub_1D1E67E0C();
    v23 = sub_1D1E67D4C();
    *(v0 + 216) = v23;
    *(v0 + 224) = v22;

    return MEMORY[0x1EEE6DFA0](sub_1D1D95028, v23, v22);
  }

  v18 = *(v0 + 80);
  v19 = *v17;

  sub_1D1D97F88(v17, type metadata accessor for StateSnapshot);
  LOBYTE(v18) = sub_1D192A9D0(v19, v18);

  if ((v18 & 1) == 0)
  {
    goto LABEL_13;
  }

  sub_1D1741A30(*(v0 + 152), &unk_1EC649E30, &unk_1D1E91250);

  v20 = *(v0 + 8);

  return v20();
}

uint64_t sub_1D1D95028()
{
  v1 = v0[11];
  v2 = OBJC_IVAR____TtC13HomeDataModel9DataModel_homeManager;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[29] = v3;
  if (v3)
  {
    v4 = qword_1EE07AE28;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v7 = v0[9];
    v6 = v0[10];
    *v0[13] = v7;
    swift_storeEnumTagMultiPayload();
    v8 = v7;
    v9 = swift_task_alloc();
    v0[30] = v9;
    *v9 = v0;
    v9[1] = sub_1D1D952FC;
    v10 = v0[17];
    v11 = v0[13];
    v12 = v0[9];

    return sub_1D1E5A250(v10, v11, v5, v12, v6);
  }

  else
  {

    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v14 = v0[9];
    v15 = sub_1D1E6709C();
    __swift_project_value_buffer(v15, qword_1EE07B5D8);
    v16 = v14;
    v17 = sub_1D1E6707C();
    v18 = sub_1D1E6833C();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[9];
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v19;
      *v21 = v19;
      v22 = v19;
      _os_log_impl(&dword_1D16EC000, v17, v18, "skipping rebuildSnapshot for %@ due to missing homeManager", v20, 0xCu);
      sub_1D1741A30(v21, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v21, -1, -1);
      MEMORY[0x1D3893640](v20, -1, -1);
    }

    v23 = v0[17];
    (*(v0[25] + 56))(v23, 1, 1, v0[24]);
    sub_1D1741A30(v23, &unk_1EC649E30, &unk_1D1E91250);
    v24 = v0[22];
    v25 = v0[23];

    return MEMORY[0x1EEE6DFA0](sub_1D1D954FC, v24, v25);
  }
}

uint64_t sub_1D1D952FC()
{
  v1 = *v0;
  v2 = *(*v0 + 104);

  sub_1D1D97F88(v2, type metadata accessor for StateSnapshot.UpdateType);
  v3 = *(v1 + 224);
  v4 = *(v1 + 216);

  return MEMORY[0x1EEE6DFA0](sub_1D1D95454, v4, v3);
}

uint64_t sub_1D1D95454()
{
  v1 = v0[29];

  v2 = v0[17];
  (*(v0[25] + 56))(v2, 0, 1, v0[24]);
  sub_1D1741A30(v2, &unk_1EC649E30, &unk_1D1E91250);
  v3 = v0[22];
  v4 = v0[23];

  return MEMORY[0x1EEE6DFA0](sub_1D1D954FC, v3, v4);
}

uint64_t sub_1D1D954FC()
{
  v1 = *(v0 + 152);

  sub_1D1741A30(v1, &unk_1EC649E30, &unk_1D1E91250);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1D955B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 48) = a6;
  *(v7 + 56) = a7;
  *(v7 + 25) = a5;
  *(v7 + 32) = a3;
  *(v7 + 40) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1D1D955D8, 0, 0);
}

uint64_t sub_1D1D955D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (SnapshotCoverageConfig.matterSnapshotHasAnyCoverage.getter())
  {
    v5 = *(v4 + 40);
    *(v4 + 16) = v5;
    v6 = *(v4 + 25);
    *(v4 + 24) = v6;
    sub_1D186145C(v5, v6);
    v7 = swift_task_alloc();
    *(v4 + 64) = v7;
    *v7 = v4;
    v7[1] = sub_1D1D956E0;
    v8 = *(v4 + 56);

    return sub_1D1D957F8(v8, (v4 + 16));
  }

  else
  {
    v10 = *(v4 + 8);

    return v10();
  }
}

uint64_t sub_1D1D956E0()
{
  v1 = *v0;
  v2 = *v0;

  sub_1D1861470(*(v1 + 16), *(v1 + 24));
  v3 = *(v2 + 8);

  return v3();
}

uint64_t sub_1D1D957F8(uint64_t a1, uint64_t *a2)
{
  *(v3 + 56) = a1;
  *(v3 + 64) = v2;
  type metadata accessor for MatterStateSnapshot(0);
  v5 = swift_task_alloc();
  v6 = *a2;
  *(v3 + 72) = v5;
  *(v3 + 80) = v6;
  *(v3 + 33) = *(a2 + 8);
  sub_1D1E67E1C();
  *(v3 + 88) = sub_1D1E67E0C();
  v8 = sub_1D1E67D4C();
  *(v3 + 96) = v8;
  *(v3 + 104) = v7;

  return MEMORY[0x1EEE6DFA0](sub_1D1D958CC, v8, v7);
}

uint64_t sub_1D1D958CC()
{
  v14 = v0;
  v1 = *(v0 + 33);
  v2 = *(v0 + 56);
  v12 = *(v0 + 80);
  v13 = v1;
  if (sub_1D1D95C3C(v2, &v12))
  {
    if (qword_1EE07AE08 != -1)
    {
      swift_once();
    }

    v3 = *(v0 + 33);
    v4 = *(v0 + 80);
    v5 = *(v0 + 56);
    *(v0 + 16) = v5;
    *(v0 + 24) = 0;
    *(v0 + 32) = 0;
    *(v0 + 40) = v4;
    *(v0 + 48) = v3;
    v6 = v5;
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_1D1D95A50;
    v8 = *(v0 + 72);
    v9 = *(v0 + 56);

    return MatterSnapshotModerator.rebuildSnapshot(updateType:home:filter:)(v8, v0 + 16, v9, v0 + 40);
  }

  else
  {

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_1D1D95A50()
{
  v1 = *v0;
  v2 = *(*v0 + 72);

  sub_1D1A283E8(*(v1 + 16), *(v1 + 24), *(v1 + 32));
  sub_1D1D97F88(v2, type metadata accessor for MatterStateSnapshot);
  v3 = *(v1 + 104);
  v4 = *(v1 + 96);

  return MEMORY[0x1EEE6DFA0](sub_1D1D95BD4, v4, v3);
}

uint64_t sub_1D1D95BD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1D95C3C(char *a1, uint64_t a2)
{
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v61 - v13;
  v15 = *a2;
  v16 = *(a2 + 8);
  if (v16 == 255)
  {
    sub_1D186145C(*a2, 255);
    sub_1D1861470(v15, 255);
    sub_1D1861470(0, 3);
  }

  else
  {
    v71 = *a2;
    v72 = v16;
    v68 = 0;
    v69 = 3;
    sub_1D186145C(v15, v16);
    sub_1D186145C(v15, v16);
    v17 = _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(&v71, &v68);

    sub_1D1861470(v15, v16);
    if (v17)
    {
      if (qword_1EC642448 != -1)
      {
        swift_once();
      }

      v18 = sub_1D1E6709C();
      __swift_project_value_buffer(v18, qword_1EC6BE298);
      v19 = sub_1D1E6707C();
      v20 = sub_1D1E6831C();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_1D16EC000, v19, v20, "Skipping matter snapshot because filter is noDevices", v21, 2u);
        MEMORY[0x1D3893640](v21, -1, -1);
      }

      LOBYTE(v22) = 0;
      return v22 & 1;
    }
  }

  v65 = v9;
  v67 = a1;
  v23 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  swift_getKeyPath();
  v71 = v2;
  sub_1D1D97AC8(&qword_1EE07CFB0, type metadata accessor for DataModel, &protocol conformance descriptor for DataModel);
  sub_1D1E66CAC();

  v24 = OBJC_IVAR____TtC13HomeDataModel9DataModel__homesToMatterSnapshots;
  swift_beginAccess();
  v25 = *(v2 + v24);
  v26 = *(v25 + 16);
  v66 = v6;
  if (!v26)
  {
    goto LABEL_13;
  }

  v27 = sub_1D1742188();
  if ((v28 & 1) == 0)
  {

LABEL_13:
    v64 = *(v6 + 8);
    v64(v11, v5);
    v34 = type metadata accessor for MatterStateSnapshot(0);
    (*(*(v34 - 8) + 56))(v14, 1, 1, v34);
    goto LABEL_14;
  }

  v29 = v27;
  v30 = *(v25 + 56);
  v31 = type metadata accessor for MatterStateSnapshot(0);
  v32 = v5;
  v33 = *(v31 - 8);
  sub_1D1D97B38(v30 + *(v33 + 72) * v29, v14, type metadata accessor for MatterStateSnapshot);
  v64 = *(v66 + 8);
  v64(v11, v32);

  (*(v33 + 56))(v14, 0, 1, v31);
  v5 = v32;
LABEL_14:
  v35 = v67;
  v36 = HMHome.allMatterNodeIDs.getter();
  v37 = sub_1D179D1E0(&unk_1F4D66610);
  v38 = MEMORY[0x1EEE9AC00](v37);
  *(&v61 - 4) = v15;
  *(&v61 - 24) = v16;
  v67 = v14;
  *(&v61 - 2) = v14;
  *(&v61 - 1) = v38;
  LODWORD(v22) = sub_1D18B5F74(sub_1D1D97B10, (&v61 - 6), v36);

  if (qword_1EC642448 != -1)
  {
    swift_once();
  }

  v39 = sub_1D1E6709C();
  __swift_project_value_buffer(v39, qword_1EC6BE298);
  sub_1D186145C(v15, v16);
  v40 = v35;
  v41 = sub_1D1E6707C();
  v42 = sub_1D1E6835C();

  sub_1D1861470(v15, v16);
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v62 = swift_slowAlloc();
    v70[0] = v62;
    *v43 = 67240962;
    *(v43 + 4) = v22 & 1;
    *(v43 + 8) = 2080;
    v44 = [v40 name];
    v45 = sub_1D1E6781C();
    v63 = v22;
    v22 = v5;
    v47 = v46;

    v48 = sub_1D1B1312C(v45, v47, v70);

    *(v43 + 10) = v48;
    *(v43 + 18) = 2080;
    v49 = [v40 uniqueIdentifier];
    v50 = v65;
    sub_1D1E66A5C();

    sub_1D1D97AC8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v51 = sub_1D1E68FAC();
    v53 = v52;
    v54 = v22;
    LOBYTE(v22) = v63;
    v64(v50, v54);
    v55 = sub_1D1B1312C(v51, v53, v70);

    *(v43 + 20) = v55;
    *(v43 + 28) = 2080;
    v68 = v15;
    v69 = v16;
    sub_1D186145C(v15, v16);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3A0, &qword_1D1EAF5D0);
    v56 = sub_1D1E678BC();
    v58 = sub_1D1B1312C(v56, v57, v70);

    *(v43 + 30) = v58;
    _os_log_impl(&dword_1D16EC000, v41, v42, "_matterSnapshotNeedsRefresh: %{BOOL,public}d for home %s (%s) with filter: %s", v43, 0x26u);
    v59 = v62;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v59, -1, -1);
    MEMORY[0x1D3893640](v43, -1, -1);
  }

  sub_1D1741A30(v67, &unk_1EC64F390, &qword_1D1E92B10);
  return v22 & 1;
}

uint64_t sub_1D1D9640C(uint64_t *a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
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

    sub_1D1D97F88(v11, type metadata accessor for MatterStateSnapshot);
    if (*(v21 + 16) && (v22 = sub_1D17420B0(v19), (v23 & 1) != 0))
    {
      sub_1D1D97B38(*(v21 + 56) + *(v16 + 72) * v22, v14, type metadata accessor for StaticMatterDevice);
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

      sub_1D1D97F88(v18, type metadata accessor for StaticMatterDevice);
      return 1;
    }

    sub_1D1D97F88(v18, type metadata accessor for StaticMatterDevice);
  }

  return 0;
}

uint64_t sub_1D1D969DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1D96A00, 0, 0);
}

uint64_t sub_1D1D96A00()
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

  return MEMORY[0x1EEE6DDE0](v5, 0, 0, 0x687365726665725FLL, 0xEA00000000002928, sub_1D1D9774C, v3, v6);
}

uint64_t sub_1D1D96AFC(uint64_t a1, void *a2, uint64_t a3)
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
    aBlock[4] = sub_1D1D97754;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D1C40BA8;
    aBlock[3] = &block_descriptor_59;
    v13 = _Block_copy(aBlock);

    v14 = [a2 _refreshBeforeDate_completionHandler_];
    _Block_release(v13);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1D1D96CDC(uint64_t a1, uint64_t a2, uint64_t a3)
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
  if (qword_1EE07AE48 != -1)
  {
    swift_once();
  }

  v11 = sub_1D1E6701C();
  __swift_project_value_buffer(v11, qword_1EE07AE50);
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
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v17 = sub_1D1E6709C();
  __swift_project_value_buffer(v17, qword_1EE07B5D8);
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

void sub_1D1D97044(uint64_t a1, uint64_t a2)
{
  if (qword_1EC642448 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EC6BE298);

  oslog = sub_1D1E6707C();
  v5 = sub_1D1E6835C();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v8 = swift_allocObject();
    *(v8 + 16) = a1;
    *(v8 + 24) = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F3C8, &qword_1D1EAF430);
    v9 = sub_1D1E6789C();
    v11 = sub_1D1B1312C(v9, v10, &v13);

    *(v6 + 4) = v11;
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1D3893640](v7, -1, -1);
    MEMORY[0x1D3893640](v6, -1, -1);
  }

  else
  {
  }
}

uint64_t sub_1D1D9723C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1D90308(a1, v4, v5, v6);
}

unint64_t sub_1D1D97328()
{
  result = qword_1EC64F380;
  if (!qword_1EC64F380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F380);
  }

  return result;
}

uint64_t sub_1D1D973B4@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

void sub_1D1D973E4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  if (*(a1 + 112) == 1)
  {
    v7 = *(a1 + 136);
    if (v7)
    {
      oslog = v7;
      v8 = a2;

      sub_1D1DF37D0(v8, a3);
    }

    else
    {
      v16 = qword_1EC642448;
      v17 = a2;

      if (v16 != -1)
      {
        swift_once();
      }

      v18 = sub_1D1E6709C();
      __swift_project_value_buffer(v18, qword_1EC6BE298);
      oslog = sub_1D1E6707C();
      v19 = sub_1D1E6834C();
      if (os_log_type_enabled(oslog, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_1D16EC000, oslog, v19, "homeHasUpdatedOnce == true but internalHomeManager == nil", v20, 2u);
        MEMORY[0x1D3893640](v20, -1, -1);
      }
    }
  }

  else
  {
    v9 = swift_allocObject();
    *(v9 + 16) = sub_1D1D97658;
    *(v9 + 24) = v6;
    swift_beginAccess();
    v10 = *(a1 + 120);
    v11 = a2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a1 + 120) = v10;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v10 = sub_1D177FF80(0, v10[2] + 1, 1, v10);
      *(a1 + 120) = v10;
    }

    v14 = v10[2];
    v13 = v10[3];
    if (v14 >= v13 >> 1)
    {
      v10 = sub_1D177FF80((v13 > 1), v14 + 1, 1, v10);
    }

    v10[2] = v14 + 1;
    v15 = &v10[2 * v14];
    v15[4] = sub_1D1D97660;
    v15[5] = v9;
    *(a1 + 120) = v10;
    swift_endAccess();
  }
}

uint64_t sub_1D1D9768C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1D969DC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1D97754(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64A9A0, &qword_1D1E97428) - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_1D1D96CDC(a1, v4, v5);
}

uint64_t block_copy_helper_59(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D1D977EC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 40);
  v9 = *(v2 + 48);
  v10 = *(v2 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1D94670(a1, a2, v6, v7, v10, v8, v9);
}

uint64_t sub_1D1D978C4()
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

  return sub_1D1D94954(v2, v3, v4, v5, v8, v6, v7);
}

uint64_t objectdestroy_57Tm()
{
  swift_unknownObjectRelease();

  if (*(v0 + 48) != 255)
  {
  }

  return MEMORY[0x1EEE6BDD0](v0, 72, 7);
}

uint64_t sub_1D1D979F8()
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

  return sub_1D1D955B0(v2, v3, v4, v5, v8, v6, v7);
}

uint64_t sub_1D1D97AC8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1D97B38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1D97BA0(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(v1 + 64);
  v11 = *(v1 + 56);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1D92B48(a1, v3, v4, v5, v6, v8, v11, v7);
}

uint64_t sub_1D1D97D6C(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1D940E0(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1D1D97E70(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3B0, &qword_1D1EAF3D8) - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = v1[5];
  v10 = v1[6];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1D93548(a1, v6, v7, v8, v9, v10, v1 + v5);
}

uint64_t sub_1D1D97F88(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1D97FE8(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F3C0, &qword_1D1EAF418) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D1D8FB5C(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D1D980E4(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F3C0, &qword_1D1EAF418);

  return sub_1D1D8FE08(a1);
}

uint64_t sub_1D1D9816C()
{
  result = os_variant_has_internal_diagnostics();
  byte_1EE07B288 = result;
  return result;
}

uint64_t static Logger.hasInternalDiagnostics.getter()
{
  if (qword_1EE07B280 != -1)
  {
    swift_once();
  }

  return byte_1EE07B288;
}

uint64_t sub_1D1D98400()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64F428);
  __swift_project_value_buffer(v0, qword_1EC64F428);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D984C0()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64F440);
  __swift_project_value_buffer(v0, qword_1EC64F440);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D985AC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D98668()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EE07A080);
  __swift_project_value_buffer(v0, qword_1EE07A080);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D98728()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64F458);
  __swift_project_value_buffer(v0, qword_1EC64F458);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D987E8()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EC64F470);
  __swift_project_value_buffer(v0, qword_1EC64F470);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D988A8@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_1D1D9894C()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EE0813C8);
  __swift_project_value_buffer(v0, qword_1EE0813C8);
  return sub_1D1E6708C();
}

uint64_t sub_1D1D98A00(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_1D1E6709C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D1E6701C();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return sub_1D1E66FEC();
}

uint64_t static UUID.matterObjectIdentifier(deviceID:endpointID:)@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v26 - v7;
  v26 = a1;
  sub_1D1D98E30();
  v9 = sub_1D1E679EC();
  v11 = v10;
  result = sub_1D1E678FC();
  if (__OFSUB__(16, result))
  {
    __break(1u);
    goto LABEL_6;
  }

  v26 = sub_1D1E679DC();
  v27 = v13;

  MEMORY[0x1D3890F70](v9, v11);

  v14 = v26;
  v15 = v27;
  v26 = 0x4445454446464544;
  v27 = 0xE800000000000000;
  MEMORY[0x1D3890F70](v14, v15);

  v17 = v26;
  v16 = v27;
  LOWORD(v26) = a2;
  sub_1D19F3EEC();
  v18 = sub_1D1E679EC();
  v20 = v19;
  result = sub_1D1E678FC();
  if (__OFSUB__(8, result))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v26 = sub_1D1E679DC();
  v27 = v21;

  MEMORY[0x1D3890F70](v18, v20);

  v22 = v26;
  v23 = v27;
  v26 = v17;
  v27 = v16;

  MEMORY[0x1D3890F70](v22, v23);

  sub_1D1E6792C();
  sub_1D1E6794C();
  sub_1D1E6792C();
  sub_1D1E6794C();
  sub_1D1E6792C();
  sub_1D1E6794C();
  sub_1D1E6792C();
  sub_1D1E6794C();
  sub_1D1E66A0C();
  v24 = sub_1D1E66A7C();
  v25 = *(v24 - 8);
  result = (*(v25 + 48))(v8, 1, v24);
  if (result != 1)
  {

    return (*(v25 + 32))(a3, v8, v24);
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1D1D98E30()
{
  result = qword_1EC64F488;
  if (!qword_1EC64F488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F488);
  }

  return result;
}

uint64_t UUID.isMatterDevice.getter(uint64_t a1)
{
  sub_1D1E66A1C();
  v1 = sub_1D1E679AC();

  return v1 & 1;
}

uint64_t static UUID.transferRepresentation.getter()
{
  v0 = sub_1D1E66F6C();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66F5C();
  v3 = sub_1D1E66A7C();
  v4 = sub_1D174A5FC(&qword_1EC64F490, &protocol conformance descriptor for UUID);
  return MEMORY[0x1D3890480](v2, &unk_1D1EAF438, 0, &unk_1D1EAF440, 0, v3, v4);
}

uint64_t sub_1D1D98FF8()
{
  sub_1D1E65F8C();
  swift_allocObject();
  sub_1D1E65F7C();
  sub_1D1E66A7C();
  sub_1D174A5FC(&qword_1EE07B258, MEMORY[0x1E69695B0]);
  v1 = sub_1D1E65F6C();
  v3 = v2;

  v4 = *(v0 + 8);

  return v4(v1, v3);
}

uint64_t sub_1D1D99124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D1D99148, 0, 0);
}

uint64_t sub_1D1D99148()
{
  sub_1D1E65F1C();
  swift_allocObject();
  sub_1D1E65F0C();
  sub_1D1E66A7C();
  sub_1D174A5FC(&qword_1EC644B20, MEMORY[0x1E69695D0]);
  sub_1D1E65EFC();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1D99258(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66F6C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1E66F5C();
  return MEMORY[0x1D3890480](v6, &unk_1D1EAF438, 0, &unk_1D1EAF440, 0, a1, a2);
}

unint64_t sub_1D1D9931C()
{
  result = qword_1EC64F498;
  if (!qword_1EC64F498)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC64F4A0, &qword_1D1EAF488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F498);
  }

  return result;
}

uint64_t sub_1D1D99394(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1D1E685AC();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = sub_1D1E66D2C();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D994D0, 0, 0);
}

uint64_t sub_1D1D994D0()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4] + 16;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = v1;
  v7[5] = v3;
  v7[6] = v2;
  swift_unknownObjectRetain();

  sub_1D1E66D3C();
  v8 = swift_task_alloc();
  v0[12] = v8;
  *(v8 + 16) = v1;
  *(v8 + 24) = v4;
  v9 = swift_task_alloc();
  v0[13] = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v0;
  v9[1] = sub_1D1D99658;
  v11 = v0[8];
  v12 = v0[9];

  return MEMORY[0x1EEE6DB20](v11, &unk_1D1EAF4E8, v8, v12, WitnessTable);
}

void sub_1D1D99658()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    MEMORY[0x1EEE6DFA0](sub_1D1D9AA9C, 0, 0);
  }
}

uint64_t sub_1D1D997B0(uint64_t a1)
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
  v10[1] = sub_1D17C4CF0;

  return sub_1D1D99394(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_1D1D99890(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1D9AA98, 0, 0);
}

uint64_t sub_1D1D998D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v21 - v14;
  v16 = swift_allocObject();
  *(v16 + 16) = a3;
  *(v16 + 24) = a4;
  sub_1D1E67E3C();
  v17 = sub_1D1E67E7C();
  (*(*(v17 - 8) + 56))(v15, 0, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = a5;
  v18[5] = a1;
  v18[6] = a2;
  v18[7] = v16;

  v19 = sub_1D1AD6BD0(0, 0, v15, 0, 0, a7, v18);

  sub_1D1B14EB4(v15);

  return v19;
}

uint64_t sub_1D1D99A4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = sub_1D1E685AC();
  v7[6] = v8;
  v7[7] = *(v8 - 8);
  v7[8] = swift_task_alloc();
  v9 = sub_1D1E66D2C();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D99B88, 0, 0);
}

uint64_t sub_1D1D99B88()
{
  v1 = v0[5];
  v3 = v0[2];
  v2 = v0[3];
  v4 = v0[4] + 16;
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = swift_allocObject();
  v7[2] = v5;
  v7[3] = v6;
  v7[4] = v1;
  v7[5] = v3;
  v7[6] = v2;
  swift_unknownObjectRetain();

  sub_1D1E66CFC();

  v8 = swift_task_alloc();
  v0[12] = v8;
  *(v8 + 16) = v1;
  *(v8 + 24) = v4;
  v9 = swift_task_alloc();
  v0[13] = v9;
  WitnessTable = swift_getWitnessTable();
  *v9 = v0;
  v9[1] = sub_1D1D99D18;
  v11 = v0[8];
  v12 = v0[9];

  return MEMORY[0x1EEE6DB20](v11, &unk_1D1EAF4D8, v8, v12, WitnessTable);
}

void sub_1D1D99D18()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {
    (*(v2[7] + 8))(v2[8], v2[6]);

    MEMORY[0x1EEE6DFA0](sub_1D1D99E70, 0, 0);
  }
}

uint64_t sub_1D1D99E70()
{
  (*(v0[10] + 8))(v0[11], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D1D99EF4(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D1D99F14, 0, 0);
}

uint64_t sub_1D1D99F14()
{
  v1 = v0[5];
  v2 = v0[6];
  swift_beginAccess();
  v3 = *v2;

  v4 = v3(v1);

  v5 = v0[1];

  return v5(v4 & 1);
}

uint64_t _sScT13HomeDataModelytRszs5NeverORs_rlE9waitUntilyScTyytACGSbyYbYAXAFZ(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1D1E67E3C();
  v7 = sub_1D1E67E7C();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = a1;
  v8[5] = a2;

  v9 = sub_1D1AD6BD0(0, 0, v6, 0, 0, &unk_1D1EAF4B8, v8);

  sub_1D1B14EB4(v6);
  return v9;
}

uint64_t sub_1D1D9A0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F4A8, &qword_1D1EAF4C0);
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F4B0, &qword_1D1EAF4C8);
  v5[7] = v7;
  v5[8] = *(v7 - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1D9A22C, 0, 0);
}

uint64_t sub_1D1D9A22C()
{
  v1 = v0[9];
  v2 = v0[10];
  v3 = v0[7];
  v4 = v0[8];
  v6 = v0[2];
  v5 = v0[3];
  v8 = *(v5 + 16);
  v7 = *(v5 + 24);
  v9 = swift_allocObject();
  v9[2] = v8;
  v9[3] = v7;
  v9[4] = v6;
  v9[5] = v5;
  swift_unknownObjectRetain();

  sub_1D1E66D3C();
  (*(v4 + 16))(v1, v2, v3);
  sub_1D17D8EA8(&qword_1EC64F4B8, &qword_1EC64F4B0, &qword_1D1EAF4C8, MEMORY[0x1E69E8218]);
  sub_1D1E6801C();
  v10 = sub_1D17D8EA8(&unk_1EC64F4C0, &qword_1EC64F4A8, &qword_1D1EAF4C0, MEMORY[0x1E69E8208]);
  v11 = swift_task_alloc();
  v0[11] = v11;
  *v11 = v0;
  v11[1] = sub_1D1D9A400;
  v12 = v0[4];

  return MEMORY[0x1EEE6D8C8](v0 + 12, v12, v10);
}

uint64_t sub_1D1D9A400()
{
  v2 = *v1;

  if (v0)
  {
    v4 = v2[5];
    v3 = v2[6];
    v5 = v2[4];

    (*(v4 + 8))(v3, v5);
    v6 = nullsub_2;
  }

  else
  {
    v6 = sub_1D1D9A540;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D1D9A540()
{
  v1 = *(v0 + 96);
  if (v1 == 2 || (v1 & 1) != 0)
  {
    v2 = *(v0 + 80);
    v3 = *(v0 + 56);
    v4 = *(v0 + 64);
    (*(*(v0 + 40) + 8))(*(v0 + 48), *(v0 + 32));
    (*(v4 + 8))(v2, v3);

    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = sub_1D17D8EA8(&unk_1EC64F4C0, &qword_1EC64F4A8, &qword_1D1EAF4C0, MEMORY[0x1E69E8208]);
    v8 = swift_task_alloc();
    *(v0 + 88) = v8;
    *v8 = v0;
    v8[1] = sub_1D1D9A400;
    v9 = *(v0 + 32);

    return MEMORY[0x1EEE6D8C8](v0 + 96, v9, v7);
  }
}

uint64_t objectdestroy_2Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t sub_1D1D9A710(uint64_t a1)
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
  v10[1] = sub_1D17C4BFC;

  return sub_1D1D99A4C(a1, v4, v5, v7, v9, v8, v6);
}

uint64_t sub_1D1D9A7F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1D9A0EC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D1D9A8BC@<X0>(_BYTE *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result & 1;
  return result;
}

uint64_t sub_1D1D9A930(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D1A0AB6C;

  return sub_1D1D99EF4(a1, v4);
}

uint64_t sub_1D1D9A9E4(uint64_t a1)
{
  v4 = *(v1 + 24);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D1A0AFF8;

  return sub_1D1D99890(a1, v4);
}

uint64_t OSActivityInSwift.__allocating_init(logger:dso:named:detached:)(uint64_t a1, NSObject *a2, const char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a6;
  v7 = a5;
  v12 = sub_1D1E6709C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1D1D9B9CC(a2, a3, v7, v6, v17);
  v18 = *(v13 + 16);
  v18(v16 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_logger, a1, v12);
  v18(v15, a1, v12);
  sub_1D1E66FEC();
  (*(v13 + 8))(a1, v12);
  v19 = v16 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name;
  *v19 = a3;
  *(v19 + 8) = a4;
  *(v19 + 16) = v7;
  return v16;
}

uint64_t OSActivityInSwift.init(logger:dso:named:detached:)(uint64_t a1, NSObject *a2, const char *a3, uint64_t a4, uint64_t a5, unsigned int a6)
{
  v26 = a6;
  v7 = a5;
  v24 = a5;
  v23 = a4;
  v25 = a2;
  v10 = sub_1D1E6709C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1D1E6701C();
  v14 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v16 = (v15 + 15) & 0xFFFFFFFFFFFFFFF0;
  v17 = &v22 - v16;
  *(v6 + 16) = sub_1D1D9B9CC(v25, a3, v7, v26, v16);
  v18 = *(v11 + 16);
  v18(v6 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_logger, a1, v10);
  v18(v13, a1, v10);
  sub_1D1E66FEC();
  (*(v11 + 8))(a1, v10);
  (*(v14 + 32))(v6 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_signposter, v17, v27);
  v19 = v6 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name;
  v20 = v23;
  *v19 = a3;
  *(v19 + 8) = v20;
  *(v19 + 16) = v24;
  return v6;
}

uint64_t sub_1D1D9AE58@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v34 = *MEMORY[0x1E69E9840];
  v2 = sub_1D1E66FDC();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v22[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v22[-v7];
  v9 = *(v1 + 16);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  v27 = v9;
  os_activity_scope_enter(v9, &state);
  v24 = state.opaque[1];
  v25 = state.opaque[0];
  v10 = *(v1 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name);
  v11 = *(v1 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name + 16);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  v12 = sub_1D1E66FFC();
  v23 = sub_1D1E683EC();
  if (sub_1D1E6855C())
  {
    if ((v11 & 1) == 0)
    {
      if (v10)
      {
LABEL_9:
        v13 = swift_slowAlloc();
        *v13 = 0;
        v14 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v12, v23, v14, v10, "", v13, 2u);
        MEMORY[0x1D3893640](v13, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v10 >> 32)
    {
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if ((v10 & 0xFFFFF800) == 0xD800)
    {
      goto LABEL_15;
    }

    if (v10 >> 16 > 0x10)
    {
LABEL_14:
      __break(1u);
LABEL_15:
      __break(1u);
    }

    v10 = &v28;
    goto LABEL_9;
  }

LABEL_10:

  (*(v3 + 16))(v6, v8, v2);
  sub_1D1E6705C();
  swift_allocObject();
  v15 = sub_1D1E6704C();
  (*(v3 + 8))(v8, v2);
  v16 = swift_allocObject();
  swift_weakInit();
  v17 = swift_allocObject();
  *(v17 + 16) = sub_1D1D9BE10;
  *(v17 + 24) = v16;
  v32 = sub_1D1B676E8;
  v33 = v17;
  state.opaque[0] = MEMORY[0x1E69E9820];
  state.opaque[1] = 1107296256;
  v30 = sub_1D1D9B1F8;
  v31 = &block_descriptor_24_2;
  v18 = _Block_copy(&state);

  os_activity_apply(v27, v18);
  _Block_release(v18);
  LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

  if (v18)
  {
    __break(1u);
    goto LABEL_13;
  }

  v21 = v25;
  v20 = v26;
  *v26 = v15;
  v20[1] = v21;
  v20[2] = v24;
  return result;
}

uint64_t sub_1D1D9B220(uint64_t *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = sub_1D1E6702C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66FDC();
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*a1)
  {
    v25[0] = v4;
    v28 = v9;
    v29 = result;
    v12 = a1[1];
    v26 = a1[2];
    v27 = v12;
    v13 = *(v1 + 16);
    v14 = swift_allocObject();
    swift_weakInit();
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1D1D9BDD4;
    *(v15 + 24) = v14;
    v25[1] = v14;
    v34 = sub_1D1B671A4;
    v35 = v15;
    aBlock.opaque[0] = MEMORY[0x1E69E9820];
    aBlock.opaque[1] = 1107296256;
    v32 = sub_1D1D9B1F8;
    v33 = &block_descriptor_60;
    v16 = _Block_copy(&aBlock);

    os_activity_apply(v13, v16);
    _Block_release(v16);
    LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

    if (v16)
    {
      __break(1u);
    }

    else
    {
      v17 = *(v1 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name);
      v18 = *(v1 + OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_name + 16);
      v19 = sub_1D1E66FFC();
      sub_1D1E6703C();
      v20 = sub_1D1E683DC();
      if ((sub_1D1E6855C() & 1) == 0)
      {
LABEL_15:

        (*(v28 + 8))(v11, v29);
        aBlock.opaque[0] = v27;
        aBlock.opaque[1] = v26;
        os_activity_scope_leave(&aBlock);

        goto LABEL_16;
      }

      if (v18)
      {
        if (!(v17 >> 32))
        {
          v21 = v25[0];
          if ((v17 & 0xFFFFF800) == 0xD800)
          {
            goto LABEL_21;
          }

          if (v17 >> 16 <= 0x10)
          {
            v17 = &v30;
            goto LABEL_11;
          }

LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
        }

LABEL_19:
        __break(1u);
        goto LABEL_20;
      }

      if (v17)
      {
        v21 = v25[0];
LABEL_11:

        sub_1D1E6706C();

        if ((*(v21 + 88))(v6, v3) == *MEMORY[0x1E69E93E8])
        {
          v22 = "[Error] Interval already ended";
        }

        else
        {
          (*(v21 + 8))(v6, v3);
          v22 = "";
        }

        v23 = swift_slowAlloc();
        *v23 = 0;
        v24 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v19, v20, v24, v17, v22, v23, 2u);
        MEMORY[0x1D3893640](v23, -1, -1);
        goto LABEL_15;
      }
    }

    __break(1u);
    goto LABEL_19;
  }

LABEL_16:
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  return result;
}

void sub_1D1D9B650(uint64_t a1, const char *a2)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    v3 = sub_1D1E6707C();
    v4 = sub_1D1E6835C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v10 = v6;
      *v5 = 136315138;
      v7 = sub_1D1E6888C();
      v9 = sub_1D1B1312C(v7, v8, &v10);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1D16EC000, v3, v4, a2, v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1D3893640](v6, -1, -1);
      MEMORY[0x1D3893640](v5, -1, -1);
    }
  }
}

uint64_t OSActivityInSwift.deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_logger;
  v2 = sub_1D1E6709C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_signposter;
  v4 = sub_1D1E6701C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  return v0;
}

uint64_t OSActivityInSwift.__deallocating_deinit()
{
  swift_unknownObjectRelease();
  v1 = OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_logger;
  v2 = sub_1D1E6709C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC13HomeDataModel17OSActivityInSwift_signposter;
  v4 = sub_1D1E6701C();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

__n128 Logger.LoggerActivity.init(activity:)@<Q0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[2] = 0;
  a2[3] = 0;
  *a2 = a1;
  a2[1] = 0;

  sub_1D1D9AE58(&v6);

  v5 = v6;
  v3 = v7;
  sub_1D1A7EEDC(0);
  result = v5;
  *(a2 + 1) = v5;
  a2[3] = v3;
  return result;
}

os_activity_t sub_1D1D9B9CC@<X0>(os_activity_t result@<X0>, const char *a2@<X1>, char a3@<W3>, char a4@<W4>, unint64_t a5@<X8>)
{
  if ((a3 & 1) == 0)
  {
    if (a2)
    {
      if (a4)
      {
        DetachedOSActivity = CreateDetachedOSActivity(result, a2);
      }

      else
      {
        DetachedOSActivity = CreateDefaultOSActivity(result, a2);
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_18;
  }

  a5 = a2 >> 32;
  if (a2 >> 32)
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    v7 = (a2 & 0x3F) << 8;
    v8 = (a2 >> 6) + v7 + 33217;
    v9 = (v7 | (a2 >> 6) & 0x3F) << 8;
    v10 = (a2 >> 18) + ((v9 | (a2 >> 12) & 0x3F) << 8) - 2122219023;
    v11 = (a2 >> 12) + v9 + 8487393;
    if (a5)
    {
      v6 = v10;
    }

    else
    {
      v6 = v11;
    }

    if (a2 < 0x800)
    {
      v6 = v8;
    }

    goto LABEL_10;
  }

  if ((a2 & 0xFFFFF800) == 0xD800)
  {
    __break(1u);
    return result;
  }

  a5 = a2 >> 16;
  if (a2 >> 16 > 0x10)
  {
    goto LABEL_19;
  }

  if (a2 > 0x7F)
  {
    goto LABEL_20;
  }

  v6 = a2 + 1;
LABEL_10:
  v12 = (v6 + 0xFEFEFEFEFEFEFFLL) & ~(-1 << (32 - (__clz(v6) & 0x18)));
  if (a4)
  {
    DetachedOSActivity = CreateDetachedOSActivity(result, &v12);
  }

  else
  {
    DetachedOSActivity = CreateDefaultOSActivity(result, &v12);
  }

LABEL_14:

  return DetachedOSActivity;
}

uint64_t type metadata accessor for OSActivityInSwift(uint64_t a1)
{
  result = qword_1EE07B4B0;
  if (!qword_1EE07B4B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1D9BB54(uint64_t a1)
{
  result = sub_1D1E6709C();
  if (v2 <= 0x3F)
  {
    result = sub_1D1E6701C();
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *sub_1D1D9BC68(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 1);
  return a1;
}

uint64_t sub_1D1D9BCB8(void *a1)
{

  result = a1[1];
  if (result)
  {
  }

  return result;
}

uint64_t *sub_1D1D9BD04(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  v4 = a2[1];
  if (!a1[1])
  {
    goto LABEL_5;
  }

  if (!v4)
  {
    sub_1D1D9BD88(a1 + 1);
LABEL_5:
    *(a1 + 1) = *(a2 + 1);
    a1[3] = a2[3];
    return a1;
  }

  a1[1] = v4;

  *(a1 + 1) = *(a2 + 1);
  return a1;
}

uint64_t block_copy_helper_60(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t SnapshotCoverageConfig.init(stateSnapshotCoverages:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (qword_1EE07CD90 != -1)
  {
    v2 = result;
    v3 = a2;
    swift_once();
    a2 = v3;
    result = v2;
  }

  *(a2 + 16) = -1;
  *a2 = result;
  *(a2 + 8) = 0;
  return result;
}

uint64_t SnapshotCoverageConfig.debugDescription.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000002FLL, 0x80000001D1EC95F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F3A0, &qword_1D1EAF5D0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0xD00000000000001ALL, 0x80000001D1EC9620);
  sub_1D1CC45B0();
  v0 = sub_1D1E6817C();
  MEMORY[0x1D3890F70](v0);

  MEMORY[0x1D3890F70](32032, 0xE200000000000000);
  return 0;
}

uint64_t SnapshotCoverageConfig.hasAnyCoverage.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(*v4 + 16))
  {
    HasAny = 1;
  }

  else
  {
    HasAny = SnapshotCoverageConfig.matterSnapshotHasAnyCoverage.getter();
  }

  return HasAny & 1;
}

uint64_t SnapshotCoverageConfig.matterSnapshotHasAnyCoverage.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (v2 == 255)
  {
    sub_1D186145C(v1, 255);
    sub_1D1861470(v1, 255);
    sub_1D1861470(0, 3);
    v4 = 1;
  }

  else
  {
    v8 = v1;
    v9 = v2;
    v6 = 0;
    v7 = 3;
    sub_1D186145C(v1, v2);
    sub_1D186145C(v1, v2);
    v3 = _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(&v8, &v6);

    sub_1D1861470(v1, v2);
    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t SnapshotCoverageConfig.stateSnapshotCoverages.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t SnapshotCoverageConfig.matterSnapshotFilter.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  *a1 = v2;
  v3 = *(v1 + 16);
  *(a1 + 8) = v3;
  return sub_1D186145C(v2, v3);
}

uint64_t SnapshotCoverageConfig.matterSnapshotFilter.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  result = sub_1D1861470(*(v1 + 8), *(v1 + 16));
  *(v1 + 8) = v2;
  *(v1 + 16) = v3;
  return result;
}

uint64_t SnapshotCoverageConfig.init(stateSnapshotCoverages:matterSnapshotFilter:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  if (qword_1EE07CD90 != -1)
  {
    v7 = a1;
    swift_once();
    a1 = v7;
  }

  *a3 = a1;
  result = sub_1D1861470(0, 255);
  *(a3 + 8) = v4;
  *(a3 + 16) = v5;
  return result;
}

uint64_t SnapshotCoverageConfig.init(matterSnapshotFilter:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  if (qword_1EE07CD90 != -1)
  {
    swift_once();
  }

  *a2 = qword_1EE07CD98;

  result = sub_1D1861470(0, 255);
  *(a2 + 8) = v3;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_1D1D9C2F0()
{
  if (qword_1EE07CD90 != -1)
  {
    swift_once();
  }

  qword_1EC64F540 = qword_1EE07CD98;
  *algn_1EC64F548 = 0;
  byte_1EC64F550 = -1;

  return sub_1D1861470(0, 255);
}

uint64_t static SnapshotCoverageConfig.all.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC642490 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EC64F548;
  *a1 = qword_1EC64F540;
  *(a1 + 8) = v1;
  v2 = byte_1EC64F550;
  *(a1 + 16) = byte_1EC64F550;

  return sub_1D186145C(v1, v2);
}

uint64_t static SnapshotCoverageConfig.noCoverage.getter@<X0>(uint64_t a1@<X8>)
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

uint64_t sub_1D1D9C4AC(uint64_t a1, void *a2, void *a3, char a4, _BYTE *a5)
{
  if (qword_1EE07CD90 != -1)
  {
    v7 = a2;
    v8 = a5;
    v9 = a4;
    v10 = a3;
    swift_once();
    a2 = v7;
    a3 = v10;
    a4 = v9;
    a5 = v8;
  }

  *a2 = MEMORY[0x1E69E7CD0];
  *a3 = 0;
  *a5 = a4;

  return sub_1D1861470(0, 255);
}

uint64_t static SnapshotCoverageConfig.matterOnly.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6424A0 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = *algn_1EC64F578;
  *a1 = qword_1EC64F570;
  *(a1 + 8) = v1;
  v2 = byte_1EC64F580;
  *(a1 + 16) = byte_1EC64F580;

  return sub_1D186145C(v1, v2);
}

uint64_t sub_1D1D9C5D4()
{
  v0 = sub_1D179B6E8(&unk_1F4D66638);
  swift_arrayDestroy();
  if (qword_1EE07CD90 != -1)
  {
    swift_once();
  }

  qword_1EC64F588 = v0;
  unk_1EC64F590 = 0;
  byte_1EC64F598 = -1;

  return sub_1D1861470(0, 255);
}

uint64_t static SnapshotCoverageConfig.appIntentsDefault.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC6424A8 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = unk_1EC64F590;
  *a1 = qword_1EC64F588;
  *(a1 + 8) = v1;
  v2 = byte_1EC64F598;
  *(a1 + 16) = byte_1EC64F598;

  return sub_1D186145C(v1, v2);
}

uint64_t SnapshotCoverageConfig.with(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 8);
  *(a2 + 8) = v5;
  v6 = *(v2 + 16);
  *(a2 + 16) = v6;

  sub_1D186145C(v5, v6);

  *a2 = a1;
  return result;
}

{
  v4 = *a1;
  v5 = *(v2 + 8);
  *a2 = *v2;
  v6 = *(v2 + 16);
  v7 = *(a1 + 8);

  sub_1D186145C(v5, v6);
  sub_1D186145C(v4, v7);
  result = sub_1D1861470(v5, v6);
  *(a2 + 8) = v4;
  *(a2 + 16) = v7;
  return result;
}

uint64_t SnapshotCoverageConfig.hash(into:)(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D176D714(a1, *v1);
  if (v4 == 255)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      MEMORY[0x1D3892850](2);

      sub_1D176DB8C(a1, v3);
      v6 = v3;
      v7 = 2;
    }

    else
    {
      MEMORY[0x1D3892850](3);
      v6 = v3;
      v7 = 3;
    }
  }

  else if (v4)
  {
    MEMORY[0x1D3892850](1);

    sub_1D176DCC0(a1, v3);
    v6 = v3;
    v7 = 1;
  }

  else
  {
    MEMORY[0x1D3892850](0);

    sub_1D176D4E8(a1, v3);
    v6 = v3;
    v7 = 0;
  }

  return sub_1D1861470(v6, v7);
}

uint64_t SnapshotCoverageConfig.hashValue.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  sub_1D1E6920C();
  sub_1D176D714(v5, v2);
  if (v3 == 255)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    if (v3 > 1)
    {
      if (v3 == 2)
      {
        MEMORY[0x1D3892850](2);
        sub_1D176DB8C(v5, v1);
      }

      else
      {
        MEMORY[0x1D3892850](3);
      }
    }

    else if (v3)
    {
      MEMORY[0x1D3892850](1);
      sub_1D176DCC0(v5, v1);
    }

    else
    {
      MEMORY[0x1D3892850](0);
      sub_1D176D4E8(v5, v1);
    }
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1D9C9E4(__int128 *a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D176D714(a1, *v1);
  if (v4 == 255)
  {
    return sub_1D1E6922C();
  }

  sub_1D1E6922C();
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      MEMORY[0x1D3892850](2);

      sub_1D176DB8C(a1, v3);
      v6 = v3;
      v7 = 2;
    }

    else
    {
      MEMORY[0x1D3892850](3);
      v6 = v3;
      v7 = 3;
    }
  }

  else if (v4)
  {
    MEMORY[0x1D3892850](1);

    sub_1D176DCC0(a1, v3);
    v6 = v3;
    v7 = 1;
  }

  else
  {
    MEMORY[0x1D3892850](0);

    sub_1D176D4E8(a1, v3);
    v6 = v3;
    v7 = 0;
  }

  return sub_1D1861470(v6, v7);
}

uint64_t sub_1D1D9CB04(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_1D1E6920C();
  sub_1D176D714(v8, v3);
  if (v4 == 255)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        MEMORY[0x1D3892850](2);

        sub_1D176DB8C(v8, v2);
        v5 = v2;
        v6 = 2;
      }

      else
      {
        MEMORY[0x1D3892850](3);
        v5 = v2;
        v6 = 3;
      }
    }

    else if (v4)
    {
      MEMORY[0x1D3892850](1);

      sub_1D176DCC0(v8, v2);
      v5 = v2;
      v6 = 1;
    }

    else
    {
      MEMORY[0x1D3892850](0);

      sub_1D176D4E8(v8, v2);
      v5 = v2;
      v6 = 0;
    }

    sub_1D1861470(v5, v6);
  }

  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel22SnapshotCoverageConfigV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  if (sub_1D17A7400(*a1, *a2))
  {
    if (v3 == 255)
    {
      sub_1D186145C(v2, 255);
      if (v5 == 255)
      {
        sub_1D186145C(v4, 255);
        sub_1D1861470(v2, 255);
        return 1;
      }

      sub_1D186145C(v4, v5);
    }

    else
    {
      v10 = v2;
      v11 = v3;
      if (v5 != 255)
      {
        v8 = v4;
        v9 = v5;
        sub_1D186145C(v2, v3);
        sub_1D186145C(v4, v5);
        sub_1D186145C(v2, v3);
        v6 = static MatterStateSnapshot.Filter.== infix(_:_:)(&v10, &v8);

        sub_1D1861470(v2, v3);
        return (v6 & 1) != 0;
      }

      sub_1D186145C(v2, v3);
      sub_1D186145C(v4, 255);
      sub_1D186145C(v2, v3);
    }

    sub_1D1861470(v2, v3);
    sub_1D1861470(v4, v5);
  }

  return 0;
}

unint64_t sub_1D1D9CD78()
{
  result = qword_1EC64F5A0[0];
  if (!qword_1EC64F5A0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC64F5A0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel19MatterStateSnapshotV6FilterOSg(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 > 3)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D1D9CDE0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_1D1D9CE28(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D1D9CE78@<X0>(void (*a1)(char *, char *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v26 = a5;
  v27 = a2;
  v28 = a1;
  v25 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v15 = *(v14 - 8);
  v16 = MEMORY[0x1EEE9AC00](v10);
  v18 = &v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v21 + 16))(v20, v22);
  if ((*(v15 + 48))(v20, 1, v14) == 1)
  {
    return (*(*(a4 - 8) + 56))(a6, 1, 1, a4);
  }

  (*(v15 + 32))(v18, v20, v14);
  v28(v18, v12);
  result = (*(v15 + 8))(v18, v14);
  if (v6)
  {
    return (*(v25 + 32))(v26, v12, a3);
  }

  return result;
}

uint64_t Streamed.init(wrappedValue:buffer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v22 = a3;
  v9 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v11 = &v21[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for Streamed.State(0, v13, v12, v13);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21[-v16];
  (*(v9 + 16))(v11, a1, a4);
  v18 = sub_1D1D9D320(a4);
  (*(v9 + 32))(v17, v11, a4);
  *&v17[*(v14 + 28)] = 0;
  *&v17[*(v14 + 32)] = v18;
  v19 = sub_1D1D9E6EC(v17, v14);
  (*(v15 + 8))(v17, v14);
  result = (*(v9 + 8))(a1, a4);
  *a5 = v19;
  *(a5 + 8) = a2;
  *(a5 + 16) = v22 & 1;
  return result;
}

unint64_t sub_1D1D9D320(uint64_t a1)
{
  v1 = sub_1D1E67EEC();
  v2 = MEMORY[0x1E69E6530];
  swift_getTupleTypeMetadata2();
  v3 = sub_1D1E67C7C();
  v4 = sub_1D1AC25F8(v3, v2, v1, MEMORY[0x1E69E6540]);

  return v4;
}

uint64_t Streamed.deinit(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E67EEC();
  sub_1D1E6766C();
  v3 = (*(*v2 + 48) + 3) & 0x1FFFFFFFCLL;

  os_unfair_lock_lock((v2 + v3));
  sub_1D1D9E768(v4, v5, &v7);
  os_unfair_lock_unlock((v2 + v3));

  swift_getWitnessTable();
  sub_1D1E67ADC();
}

double sub_1D1D9D4EC@<D0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, void *a4@<X8>)
{
  type metadata accessor for Streamed.State(0, a1, a2, a3);
  sub_1D1E67EEC();
  nullsub_2();
  *a4 = v5;

  return result;
}

void Streamed.wrappedValue.getter(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = **v1;
  v5 = *(v4 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(v4 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v6));
  sub_1D1D9E7C8(v3 + v5, a1);
  os_unfair_lock_unlock((v3 + v6));
}

uint64_t Streamed.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  sub_1D1D9E820(a1, a2);
  v4 = *(*(*(a2 + 16) - 8) + 8);

  return v4(a1);
}

uint64_t sub_1D1D9D67C(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  sub_1D1E67EEC();
  sub_1D1E6766C();
  v4 = (*(*v3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v3 + v4));
  sub_1D1D9ECD8(&v6);
  os_unfair_lock_unlock((v3 + v4));
  swift_getWitnessTable();
  sub_1D1E67ADC();
}

void (*Streamed.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x30uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(a2 + 16);
  v6[2] = v8;
  v9 = *(v8 - 8);
  v6[3] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v7[5] = v11;
  Streamed.wrappedValue.getter(v11);
  return sub_1D1D9D8DC;
}

void sub_1D1D9D8DC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[4];
  v4 = (*a1)[5];
  v5 = (*a1)[2];
  v6 = (*a1)[3];
  v7 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[4], v4, v5);
    sub_1D1D9D67C(v3, v7);
    v8 = *(v6 + 8);
    v8(v3, v5);
    v8(v4, v5);
  }

  else
  {
    sub_1D1D9D67C((*a1)[5], v7);
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t Streamed.projectedValue.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v38 = a1;
  v3 = *(a1 + 16);
  v4 = sub_1D1E67E9C();
  v43 = *(v4 - 8);
  v44 = v4;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v42 = &v31 - v6;
  v41 = *(v3 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v37 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v40 = &v31 - v9;
  v39 = sub_1D1E67EEC();
  v36 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v11 = &v31 - v10;
  v12 = sub_1D1E67EBC();
  v13 = sub_1D1E685AC();
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v31 - v15;
  v17 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v19 = &v31 - v18;
  v20 = *v2;
  v21 = *(v2 + 16);
  v34 = v2[1];
  v46 = v3;
  v47 = v34;
  LOBYTE(v48) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC647D40, &qword_1D1E891C0);
  sub_1D1D9CE78(sub_1D1D9E824, v45, MEMORY[0x1E69E73E0], v12, v22, v16);
  v23 = *(v17 + 48);
  if (v23(v16, 1, v12) == 1)
  {
    (*(v17 + 104))(v19, *MEMORY[0x1E69E8650], v12);
    if (v23(v16, 1, v12) != 1)
    {
      (*(v32 + 8))(v16, v33);
    }
  }

  else
  {
    (*(v17 + 32))(v19, v16, v12);
  }

  nullsub_2();
  sub_1D1E67E8C();
  v47 = v20;
  v48 = v34;
  v49 = v21;
  v24 = v40;
  v25 = sub_1D1D9DF98(v40, v11, v38);
  v26 = swift_allocObject();
  v26[2] = v3;
  v26[3] = v20;
  v26[4] = v25;

  v27 = v39;
  sub_1D1E67EAC();
  v28 = v41;
  (*(v41 + 16))(v37, v24, v3);
  v29 = v42;
  sub_1D1E67ECC();
  (*(v43 + 8))(v29, v44);
  (*(v28 + 8))(v24, v3);
  (*(v36 + 8))(v11, v27);
  return (*(v17 + 8))(v19, v12);
}

uint64_t sub_1D1D9DED8@<X0>(void *a1@<X0>, void *a3@<X8>)
{
  *a3 = *a1;
  v4 = *MEMORY[0x1E69E8640];
  v5 = sub_1D1E67EBC();
  v6 = *(v5 - 8);
  (*(v6 + 104))(a3, v4, v5);
  return (*(v6 + 56))(a3, 0, 1, v5);
}

uint64_t sub_1D1D9DF98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 16);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = TupleTypeMetadata2 - 8;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v10 = &v16[-v9];
  v11 = *v3;
  v17 = v6;
  v18 = a2;
  v12 = *(*v11 + *MEMORY[0x1E69E6B68] + 16);
  v13 = (*(*v11 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v11 + v13));
  sub_1D1D9ECBC(v11 + v12, v10);
  os_unfair_lock_unlock((v11 + v13));
  v14 = *v10;
  (*(*(v6 - 8) + 32))(a1, &v10[*(v8 + 56)], v6);
  return v14;
}

uint64_t sub_1D1D9E0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D1E67EEC();
  v7 = sub_1D1E685AC();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17[-v9];
  v18 = a4;
  v19 = a3;
  v11 = *(*a2 + *MEMORY[0x1E69E6B68] + 16);
  v12 = (*(*a2 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a2 + v12));
  sub_1D1D9ECA0(a2 + v11, v13, v14, v15);
  os_unfair_lock_unlock((a2 + v12));
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1D1D9E23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Streamed.State(0, a3, a3, a4);
  sub_1D1E67EEC();
  sub_1D1E6769C();
  return sub_1D1E6761C();
}

double sub_1D1D9E2CC@<D0>(uint64_t a1@<X2>, void *a2@<X8>)
{
  (*(*(a1 - 8) + 24))();
  type metadata accessor for Streamed.State(0, a1, v4, v5);
  sub_1D1E67EEC();
  nullsub_2();
  *a2 = v6;

  return result;
}

uint64_t sub_1D1D9E370(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D1E67E9C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v13 - v10;
  (*(v5 + 16))(v7, a2, a3);
  sub_1D1E67EEC();
  sub_1D1E67ECC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_1D1D9E4F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = sub_1D1E67EEC();
  v9 = sub_1D1E685AC();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v20 - v10;
  result = type metadata accessor for Streamed.State(0, a3, v12, v13);
  v15 = *(result + 28);
  v16 = *(a1 + v15);
  if (__OFADD__(v16, 1))
  {
    __break(1u);
  }

  else
  {
    *(a1 + v15) = v16 + 1;
    v17 = a4;
    v18 = *(v8 - 8);
    (*(v18 + 16))(v11, a2, v8);
    (*(v18 + 56))(v11, 0, 1, v8);
    v20[3] = v16;
    sub_1D1E6769C();
    sub_1D1E676BC();
    v19 = *(swift_getTupleTypeMetadata2() + 48);
    *v17 = v16;
    return (*(*(a3 - 8) + 16))(&v17[v19], a1, a3);
  }

  return result;
}

uint64_t sub_1D1D9E6EC(uint64_t a1, uint64_t a2)
{
  type metadata accessor for os_unfair_lock_s(255);
  sub_1D1E6892C();
  return sub_1D1E6891C();
}

uint64_t *sub_1D1D9E878(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];
  *(a1 + 16) = *(a2 + 16);
  return a1;
}

uint64_t sub_1D1D9E8D8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    sub_1D1E67EEC();
    result = sub_1D1E6769C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1D1D9E984(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
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

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *((((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

_BYTE *sub_1D1D9EAD0(_BYTE *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v7 >= a3)
  {
    v13 = 0;
    v14 = a2 - v7;
    if (a2 <= v7)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v10 = a3 - v7;
    if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v11 = v10 + 1;
    }

    else
    {
      v11 = 2;
    }

    if (v11 >= 0x10000)
    {
      v12 = 4;
    }

    else
    {
      v12 = 2;
    }

    if (v11 < 0x100)
    {
      v12 = 1;
    }

    if (v11 >= 2)
    {
      v13 = v12;
    }

    else
    {
      v13 = 0;
    }

    v14 = a2 - v7;
    if (a2 <= v7)
    {
LABEL_17:
      if (v13 > 1)
      {
        if (v13 != 2)
        {
          *&result[v9] = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_33;
        }

        *&result[v9] = 0;
      }

      else if (v13)
      {
        result[v9] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_33;
      }

      if (!a2)
      {
        return result;
      }

LABEL_33:
      if (v6 < 0x7FFFFFFF)
      {
        v19 = (((&result[v8 + 7] & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          v20 = a2 & 0x7FFFFFFF;
        }

        else
        {
          v20 = a2 - 1;
        }

        *v19 = v20;
      }

      else
      {
        v18 = *(v5 + 56);

        return v18();
      }

      return result;
    }
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v15 = v14;
  }

  else
  {
    v15 = 1;
  }

  if (((((v8 + 7) & 0xFFFFFFF8) + 15) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v16 = ~v7 + a2;
    v17 = result;
    bzero(result, ((((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8);
    result = v17;
    *v17 = v16;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      *&result[v9] = v15;
    }

    else
    {
      *&result[v9] = v15;
    }
  }

  else if (v13)
  {
    result[v9] = v15;
  }

  return result;
}

uint64_t sub_1D1D9ED10@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t static String.hfLocalized(_:)(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v22 = sub_1D1E677DC();
  v5 = *(v22 - 8);
  v6 = MEMORY[0x1EEE9AC00](v22);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v19 - v9;

  v21 = v10;
  sub_1D1E6776C();
  v11 = 0;
  v19[0] = v5;
  v12 = *(v5 + 16);
  v19[7] = 0x80000001D1EC9660;
  v20 = v12;
  v19[5] = 0x80000001D1EC96C0;
  v19[6] = 0x80000001D1EC9690;
  v19[3] = 0x80000001D1EC9720;
  v19[4] = 0x80000001D1EC96F0;
  v19[1] = 0x80000001D1EC68A0;
  v19[2] = 0x80000001D1EC9750;
  while (1)
  {
    v20(v8, v21, v22);
    if (qword_1EE07A000 != -1)
    {
      swift_once();
    }

    v13 = qword_1EE0813C0;
    sub_1D1E66ACC();
    v14 = sub_1D1E6787C();
    v16 = v15;

    if ((v14 != a1 || v16 != a2) && (sub_1D1E6904C() & 1) == 0 && (v14 != 95 || v16 != 0xE100000000000000))
    {
      break;
    }

    if (v11 == 7)
    {
      goto LABEL_13;
    }

LABEL_3:
    ++v11;
  }

  v17 = sub_1D1E6904C();
  if (v11 != 7 && (v17 & 1) != 0)
  {
    goto LABEL_3;
  }

LABEL_13:
  (*(v19[0] + 8))(v21, v22);
  return v14;
}

Swift::Bool __swiftcall useWLANInsteadOfWiFi()()
{
  v0 = MobileGestalt_get_current_device();
  if (v0)
  {
    v1 = v0;
    wapiCapability = MobileGestalt_get_wapiCapability();

    LOBYTE(v0) = wapiCapability;
  }

  else
  {
    __break(1u);
  }

  return v0;
}

id static String.hfLocalizedWiFi(_:)(uint64_t a1, uint64_t a2)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v5 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      v7 = 1312902231;
    }

    else
    {
      v7 = 1229343063;
    }

    MEMORY[0x1D3890F70](95, 0xE100000000000000);
    MEMORY[0x1D3890F70](v7, 0xE400000000000000);

    v8 = static String.hfLocalized(_:)(a1, a2);

    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static String.hfLocalizedPercentage<A>(_:minValue:maxValue:strippedPercentageSymbol:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v35 = a4;
  v32 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v31 = *(TupleTypeMetadata2 - 8);
  v11 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v33 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v29 - v13;
  v34 = a6;
  v15 = sub_1D1E6774C();
  v36 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v29 - v16;
  v18 = a2;
  result = sub_1D1E6772C();
  if (result)
  {
    v20 = *(a5 - 8);
    v21 = v20[2];
    v21(v14, v18, a5);
    v22 = TupleTypeMetadata2;
    v21(&v14[*(TupleTypeMetadata2 + 48)], a3, a5);
    v23 = v31;
    v24 = v33;
    (*(v31 + 16))(v33, v14, v22);
    v29 = *(v22 + 48);
    v30 = v15;
    v25 = v20[4];
    v25(v17, v24, a5);
    v26 = v20[1];
    v26(&v24[v29], a5);
    (*(v23 + 32))(v24, v14, v22);
    v27 = v30;
    v25(&v17[*(v30 + 36)], &v24[*(v22 + 48)], a5);
    v26(v24, a5);
    v28 = BinaryFloatingPoint.localizedPercentageString(range:includesPercentSymbol:)(v17, (v35 & 1) == 0, a5, v34);
    (*(v36 + 8))(v17, v27);
    return v28;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static String.hfLocalizedWithFormat(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static String.hfLocalized(_:)(a1, a2);

  v3 = sub_1D1E6784C();

  return v3;
}

uint64_t static LocalizedStringResource.BundleDescription.homeDataModel.getter@<X0>(uint64_t *a2@<X8>)
{
  *a2 = _s25_doNotTouchThisDummyClassCMa();
  v3 = *MEMORY[0x1E6968E00];
  v4 = sub_1D1E6658C();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

id sub_1D1D9F6E0(uint64_t a1)
{
  _s25_doNotTouchThisDummyClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  qword_1EE0813C0 = result;
  return result;
}

id static NSBundle.homeDataModel.getter(uint64_t a1)
{
  _s25_doNotTouchThisDummyClassCMa();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = [swift_getObjCClassFromMetadata() bundleForClass_];

  return v2;
}

id _sSS13HomeDataModelE24hfLocalizedWiFiStringKey3forS2S_tFZ_0(uint64_t a1)
{
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v3 = result;
    wapiCapability = MobileGestalt_get_wapiCapability();

    if (wapiCapability)
    {
      v5 = 1312902231;
    }

    else
    {
      v5 = 1229343063;
    }

    MEMORY[0x1D3890F70](95, 0xE100000000000000);
    MEMORY[0x1D3890F70](v5, 0xE400000000000000);

    return a1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t WeakCollection.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  if (*(a1 + 24))
  {
    sub_1D17419CC(a1, &v20);
    if (*(&v21 + 1))
    {
LABEL_3:
      sub_1D16EEE20(&v20, v23);
      v8 = v24;
      v9 = v25;
      v10 = __swift_project_boxed_opaque_existential_1(v23, v24);
      MEMORY[0x1EEE9AC00](v10);
      v19[2] = a2;
      v13 = type metadata accessor for Weak(0, a2, v11, v12);
      v15 = sub_1D18CE91C(sub_1D1DA0850, v19, v8, v13, MEMORY[0x1E69E73E0], v9, MEMORY[0x1E69E7410], v14);
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1(a1);
      }

      v16 = v23;
      goto LABEL_9;
    }
  }

  else
  {
    v17 = *(a1 + 16);
    v20 = *a1;
    v21 = v17;
    v22 = *(a1 + 32);
    if (*(&v17 + 1))
    {
      goto LABEL_3;
    }
  }

  type metadata accessor for Weak(0, a2, a4, a5);
  result = sub_1D1E67C7C();
  v15 = result;
  if (*(a1 + 24))
  {
    v16 = a1;
LABEL_9:
    result = __swift_destroy_boxed_opaque_existential_1(v16);
  }

  *a3 = v15;
  return result;
}

uint64_t WeakCollection.append(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Weak(0, *(a2 + 16), a3, a4);
  sub_1D1DA08A4(a1);
  sub_1D1E67D1C();
  return sub_1D1E67CDC();
}

uint64_t WeakCollection.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for Weak(255, *(a3 + 16), a3, a4);
  sub_1D1E67D1C();

  swift_getWitnessTable();
  v6 = sub_1D1E6895C();

  *v5 = v6;
  return result;
}

Swift::Void __swiftcall WeakCollection.removeAll()()
{
  type metadata accessor for Weak(255, *(v0 + 16), v1, v2);
  sub_1D1E67D1C();

  sub_1D1E67D0C();
}

uint64_t WeakCollection.objects()(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D1E66BEC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v16[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *v2;
  sub_1D1E66BDC();
  v22 = v8;
  v9 = *(a1 + 16);
  type metadata accessor for Weak(255, v9, v10, v11);
  v12 = sub_1D1E67D1C();
  WitnessTable = swift_getWitnessTable();
  MEMORY[0x1D3891090](&v23, v12, WitnessTable);
  v22 = v23;
  v21 = v7;
  v17 = v9;
  v18 = sub_1D1DA0950;
  v19 = &v20;
  sub_1D1E68B6C();
  swift_getWitnessTable();
  v14 = sub_1D1E67A4C();

  swift_getWitnessTable();
  swift_getWitnessTable();
  sub_1D1E682CC();
  (*(v5 + 8))(v7, v4);
  return v14;
}

uint64_t WeakDictionary.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a1)
  {
    MEMORY[0x1EEE9AC00](a1);
    type metadata accessor for Weak(0, a3, v9, v10);
    v11 = sub_1D1E6767C();
  }

  else
  {
    v13 = type metadata accessor for Weak(255, a3, a3, a4);
    swift_getTupleTypeMetadata2();
    v14 = sub_1D1E67C7C();
    v11 = sub_1D1AC25F8(v14, a2, v13, a4);
  }

  *a5 = v11;
  return result;
}

uint64_t WeakDictionary.set(value:key:)(uint64_t a1, uint64_t a2, void *a3)
{
  if (MEMORY[0x1EEE9AC00](a1))
  {
    (*(v8 + 16))(v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    type metadata accessor for Weak(0, a3[3], v9, v10);
    v12[1] = sub_1D1DA08A4(a1);
    sub_1D1E6769C();
    return sub_1D1E676BC();
  }

  else
  {
    type metadata accessor for Weak(255, a3[3], v5, v6);
    sub_1D1E6769C();
    sub_1D1E6761C();
  }
}

uint64_t WeakDictionary.removeValue(forKey:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Weak(255, a2[3], a3, a4);
  sub_1D1E6769C();
  sub_1D1E6761C();
}

Swift::Void __swiftcall WeakDictionary.removeAll()()
{
  type metadata accessor for Weak(255, *(v0 + 24), v1, v2);
  v3 = sub_1D1E6769C();

  MEMORY[0x1EEE688F0](0, v3);
}

uint64_t WeakDictionary.dictionary()(void *a1)
{
  v2 = a1[2];
  v3 = a1[3];

  swift_getTupleTypeMetadata2();
  v4 = sub_1D1E67C7C();
  sub_1D1AC25F8(v4, v2, v3, a1[4]);

  type metadata accessor for Weak(255, v3, v5, v6);
  sub_1D1E6769C();
  sub_1D1E6769C();
  swift_getWitnessTable();
  sub_1D1E67A9C();

  return v8;
}

uint64_t sub_1D1DA01E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v22[2] = a6;
  v22[0] = a3;
  v22[1] = a1;
  type metadata accessor for Weak(255, a5, a3, a4);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v11 = v22 - v10;
  v12 = *(a4 - 8);
  v13 = MEMORY[0x1EEE9AC00](v9);
  v15 = v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v22 - v16;
  (*(v18 + 16))(v11, a2, TupleTypeMetadata2);
  (*(v12 + 32))(v17, v11, a4);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v20 = Strong;
    (*(v12 + 16))(v15, v17, a4);
    v22[5] = v20;
    sub_1D1E6769C();
    swift_unknownObjectRetain();
    sub_1D1E676BC();
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1D1E6769C();
    sub_1D1E6761C();
  }

  return (*(v12 + 8))(v17, a4);
}

uint64_t WeakDictionary.subscript.getter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Weak(0, a2[3], a3, a4);
  sub_1D1E676AC();
  if (!v6)
  {
    return 0;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_1D1DA04F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v5 = type metadata accessor for WeakDictionary(0, *(a1 + a2 - 24), *(a1 + a2 - 16), *(a1 + a2 - 8));
  result = WeakDictionary.subscript.getter(a1, v5, v6, v7);
  *a3 = result;
  return result;
}

uint64_t sub_1D1DA0558(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for WeakDictionary(0, *(a3 + a4 - 24), *(a3 + a4 - 16), *(a3 + a4 - 8));
  v6 = swift_unknownObjectRetain();
  j___s13HomeDataModel14WeakDictionaryV3set5value3keyyq_Sg_xtF(v6, a3, v5);

  return swift_unknownObjectRelease();
}

uint64_t WeakDictionary.subscript.setter(uint64_t a1, uint64_t a2, void *a3)
{
  j___s13HomeDataModel14WeakDictionaryV3set5value3keyyq_Sg_xtF(a1, a2, a3);
  (*(*(a3[2] - 8) + 8))(a2);

  return swift_unknownObjectRelease();
}

void (*WeakDictionary.subscript.modify(uint64_t **a1, uint64_t a2, void *a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  v10 = a3[2];
  v8[3] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v8[4] = v11;
  if (v7)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(*(v11 + 64));
  }

  v9[5] = v13;
  (*(v12 + 16))();
  *v9 = WeakDictionary.subscript.getter(a2, a3, v14, v15);
  return sub_1D1DA076C;
}

void sub_1D1DA076C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1)[4];
  v3 = (*a1)[5];
  v5 = (*a1)[3];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    v8 = swift_unknownObjectRetain();
    WeakDictionary.set(value:key:)(v8, v3, v6);
    (*(v4 + 8))(v3, v5);
    swift_unknownObjectRelease();
  }

  else
  {
    WeakDictionary.set(value:key:)(v7, v3, v6);
    (*(v4 + 8))(v3, v5);
  }

  swift_unknownObjectRelease();
  free(v3);

  free(v2);
}

uint64_t sub_1D1DA0850@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(v4 + 16);
  v7 = *a1;
  type metadata accessor for Weak(0, v6, a2, a3);
  result = sub_1D1DA08A4(v7);
  *a4 = result;
  return result;
}

uint64_t sub_1D1DA08A4(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  return v1;
}

uint64_t sub_1D1DA08F4(void *a1)
{
  v2 = *(v1 + 24);
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v4 = v2();
    swift_unknownObjectRelease();
    return v4 & 1;
  }

  return result;
}

uint64_t sub_1D1DA0950(uint64_t a1, uint64_t a2)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (!result)
  {
    sub_1D1E66BCC();
    return 0;
  }

  return result;
}

uint64_t sub_1D1DA0998@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 24))(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D1DA09E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v6 = *(v4 + 24);
  v7 = *a1;
  type metadata accessor for Weak(0, v6, a2, a3);
  result = sub_1D1DA08A4(v7);
  *a4 = result;
  return result;
}

uint64_t sub_1D1DA0A54(uint64_t *a1, uint64_t *a2)
{
  v3 = a1;
  v4 = *a1;
  v12 = MEMORY[0x1E69E7CC0];
  if (v4 >> 62)
  {
LABEL_17:
    v5 = sub_1D1E6873C();
    if (v5)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
LABEL_3:
      v11 = v3;
      v6 = 0;
      while (1)
      {
        if ((v4 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1D3891EF0](v6, v4);
          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
LABEL_14:
            __break(1u);
LABEL_15:
            v3 = v11;
            v9 = v12;
            goto LABEL_19;
          }
        }

        else
        {
          if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_17;
          }

          v7 = v6 + 1;
          if (__OFADD__(v6, 1))
          {
            goto LABEL_14;
          }
        }

        Strong = swift_unknownObjectWeakLoadStrong();
        if (!Strong || (v3 = Strong, swift_unknownObjectRelease(), v3 == a2))
        {
        }

        else
        {
          sub_1D1E6896C();
          sub_1D1E689AC();
          sub_1D1E689BC();
          v3 = &v12;
          sub_1D1E6897C();
        }

        ++v6;
        if (v7 == v5)
        {
          goto LABEL_15;
        }
      }
    }
  }

  v9 = MEMORY[0x1E69E7CC0];
LABEL_19:

  *v3 = v9;
  return result;
}

uint64_t sub_1D1DA0BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1DA0C14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D1DA0CB4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE70, &qword_1D1EB0FA0);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - v3;
  (*(v2 + 16))(v7 - v3, v0 + OBJC_IVAR____TtC13HomeDataModelP33_2FEE6254CAF7CE650035D3602F82436C12Continuation_continuation, v1);
  sub_1D1DA1910();
  v5 = sub_1D1E68FEC();
  if (!v5)
  {
    v5 = swift_allocError();
  }

  v7[1] = v5;
  sub_1D1E680AC();
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1D1DA0DF0()
{
  v1 = OBJC_IVAR____TtC13HomeDataModelP33_2FEE6254CAF7CE650035D3602F82436C12Continuation_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE70, &qword_1D1EB0FA0);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

char *sub_1D1DA0E98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F878, &qword_1D1EAF8B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17[-v4];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE70, &qword_1D1EB0FA0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17[-v8];
  v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  (*(v7 + 16))(v9, a1, v6);
  type metadata accessor for Continuation(0);
  v11 = swift_allocObject();
  (*(v7 + 32))(v11 + OBJC_IVAR____TtC13HomeDataModelP33_2FEE6254CAF7CE650035D3602F82436C12Continuation_continuation, v9, v6);
  *&v10[OBJC_IVAR___HDMHomeManagerDataSyncProxy_continuation] = v11;

  v17[15] = 1;
  sub_1D1E6809C();
  (*(v3 + 8))(v5, v2);
  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v12 = sub_1D1E6709C();
  __swift_project_value_buffer(v12, qword_1EE0813E0);
  v13 = sub_1D1E6707C();
  v14 = sub_1D1E6835C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D16EC000, v13, v14, "HomeManagerDataSyncProxy() initialized", v15, 2u);
    MEMORY[0x1D3893640](v15, -1, -1);
  }

  (*(v7 + 8))(a1, v6);
  return v10;
}

id sub_1D1DA11D4(id result)
{
  if (!*(v1 + OBJC_IVAR___HDMHomeManagerDataSyncProxy_continuation))
  {
    return result;
  }

  v2 = result;

  v3 = [v2 dataSyncState];
  if (v3 != 4)
  {
    if (v3 == 1)
    {
      if (qword_1EE07A0A0 != -1)
      {
        swift_once();
      }

      v16 = sub_1D1E6709C();
      __swift_project_value_buffer(v16, qword_1EE0813E0);
      v17 = v2;
      v6 = sub_1D1E6707C();
      v7 = sub_1D1E6835C();

      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v34 = v9;
        *v8 = 136315138;
        [v17 dataSyncState];
        result = HMHomeManagerDataSyncStateToString();
        if (result)
        {
          v18 = result;
          v19 = sub_1D1E6781C();
          v21 = v20;

          v22 = sub_1D1B1312C(v19, v21, &v34);

          *(v8 + 4) = v22;
          v15 = "homeManagerDidUpdateDataSyncState() dataSyncState:%s - Good to go!";
          goto LABEL_15;
        }

        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v3)
    {
      if (qword_1EE07A0A0 != -1)
      {
        swift_once();
      }

      v23 = sub_1D1E6709C();
      __swift_project_value_buffer(v23, qword_1EE0813E0);
      v24 = v2;
      v25 = sub_1D1E6707C();
      v26 = sub_1D1E6833C();

      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        v28 = swift_slowAlloc();
        v34 = v28;
        *v27 = 136315138;
        [v24 dataSyncState];
        result = HMHomeManagerDataSyncStateToString();
        if (!result)
        {
LABEL_29:
          __break(1u);
          return result;
        }

        v29 = result;
        v30 = sub_1D1E6781C();
        v32 = v31;

        v33 = sub_1D1B1312C(v30, v32, &v34);

        *(v27 + 4) = v33;
        _os_log_impl(&dword_1D16EC000, v25, v26, "homeManagerDidUpdateDataSyncState() dataSyncState:%s - Unable to continue", v27, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v28);
        MEMORY[0x1D3893640](v28, -1, -1);
        MEMORY[0x1D3893640](v27, -1, -1);
      }

      sub_1D1DA0CB4();
      goto LABEL_24;
    }
  }

  if (qword_1EE07A0A0 != -1)
  {
    swift_once();
  }

  v4 = sub_1D1E6709C();
  __swift_project_value_buffer(v4, qword_1EE0813E0);
  v5 = v2;
  v6 = sub_1D1E6707C();
  v7 = sub_1D1E6835C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v34 = v9;
    *v8 = 136315138;
    [v5 dataSyncState];
    result = HMHomeManagerDataSyncStateToString();
    if (result)
    {
      v10 = result;
      v11 = sub_1D1E6781C();
      v13 = v12;

      v14 = sub_1D1B1312C(v11, v13, &v34);

      *(v8 + 4) = v14;
      v15 = "homeManagerDidUpdateDataSyncState() dataSyncState:%s - Pending State, continue waiting";
LABEL_15:
      _os_log_impl(&dword_1D16EC000, v6, v7, v15, v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v9);
      MEMORY[0x1D3893640](v9, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

LABEL_17:

LABEL_24:
}

void __swiftcall HDMHomeManagerDataSyncProxy.init()(HDMHomeManagerDataSyncProxy *__return_ptr retstr)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  [v1 init];
}

id HDMHomeManagerDataSyncProxy.init()()
{
  *(v0 + OBJC_IVAR___HDMHomeManagerDataSyncProxy_continuation) = 0;
  v2.super_class = HDMHomeManagerDataSyncProxy;
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t type metadata accessor for Continuation(uint64_t a1)
{
  result = qword_1EC64F848;
  if (!qword_1EC64F848)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D1DA176C(uint64_t a1)
{
  sub_1D1DA17FC(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1D1DA17FC(uint64_t a1)
{
  if (!qword_1EC64F858)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v1 = sub_1D1E680BC();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC64F858);
    }
  }
}

unint64_t type metadata accessor for HDMHomeManagerDataSyncProxy()
{
  result = qword_1EC64F860;
  if (!qword_1EC64F860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC64F860);
  }

  return result;
}

unint64_t sub_1D1DA1910()
{
  result = qword_1EC64F870;
  if (!qword_1EC64F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F870);
  }

  return result;
}

uint64_t sub_1D1DA1964()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F878, &qword_1D1EAF8B0);
  v2 = *(v1 - 8);
  result = MEMORY[0x1EEE9AC00](v1);
  v5 = &v11 - v4;
  if (*(v0 + OBJC_IVAR___HDMHomeManagerDataSyncProxy_continuation))
  {
    v6 = qword_1EE07A0A0;

    if (v6 != -1)
    {
      swift_once();
    }

    v7 = sub_1D1E6709C();
    __swift_project_value_buffer(v7, qword_1EE0813E0);
    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6835C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_1D16EC000, v8, v9, "homeManagerDidUpdateHomes() will yield DataSyncState.finished", v10, 2u);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    v12 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE70, &qword_1D1EB0FA0);
    sub_1D1E6809C();
    (*(v2 + 8))(v5, v1);
    v11 = 0;
    sub_1D1E680AC();
  }

  return result;
}

BOOL HMAccessory.hasVisibleService.getter()
{
  v1 = [v0 services];
  sub_1D17DAA94();
  v2 = sub_1D1E67C1C();

  v15 = v2 >> 62;
  if (v2 >> 62)
  {
LABEL_22:
    v3 = sub_1D1E6873C();
  }

  else
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v3 != v4)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1D3891EF0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_21:
        __break(1u);
        goto LABEL_22;
      }

      v6 = *(v2 + 8 * v4 + 32);
    }

    v7 = v6;
    v8 = [v6 serviceType];
    v9 = sub_1D1E6781C();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    ServiceKind.init(rawValue:)(v12);
    if (v16 == 53)
    {
    }

    else
    {

      if (v16 > 0x32u || ((1 << v16) & 0x62C232CC03FF7) == 0)
      {
        goto LABEL_16;
      }
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_21;
    }
  }

  v4 = v3;
LABEL_16:
  if (v15)
  {
    v13 = sub_1D1E6873C();
  }

  else
  {
    v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return v4 != v13;
}

BOOL HMAccessory.isValidWidgetCategory.getter()
{
  HMAccessory.specialMediaCategory.getter(&v13);
  v1 = v13;
  if (v14 <= 1u)
  {
    if (!v14)
    {
      sub_1D18EB2D8(v13, 0);
    }

    goto LABEL_7;
  }

  if (v14 != 2)
  {
    if (v14 != 3)
    {
      v1 = 1;
      goto LABEL_8;
    }

LABEL_7:
    v1 = 0;
  }

LABEL_8:
  v2 = [v0 category];
  v3 = [v2 categoryType];

  v4 = sub_1D1E6781C();
  v6 = v5;

  if (sub_1D1E6781C() == v4 && v7 == v6)
  {
    goto LABEL_15;
  }

  v9 = sub_1D1E6904C();

  if (v9)
  {
LABEL_16:

    return 0;
  }

  if (sub_1D1E6781C() == v4 && v10 == v6)
  {
LABEL_15:

    goto LABEL_16;
  }

  v12 = sub_1D1E6904C();

  return (v12 & 1) == 0 && (v1 & 1) != 0;
}

uint64_t HMAccessory.staticMatterDevice.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v21 - v4;
  v6 = type metadata accessor for StaticMatterDevice(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![v1 supportsNativeMatter])
  {
    goto LABEL_5;
  }

  v10 = HMAccessory.matterDevice.getter();
  if (!v10)
  {
    goto LABEL_5;
  }

  v12 = v10;
  v13 = v11;
  swift_unknownObjectRetain();
  StaticMatterDevice.init(device:accessory:)(v12, v13, v1, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    swift_unknownObjectRelease();
    sub_1D1BAB210(v5);
LABEL_5:
    v14 = 1;
    return (*(v7 + 56))(a1, v14, 1, v6);
  }

  sub_1D1AE8C0C(v5, v9);
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v16 = sub_1D1E6709C();
  __swift_project_value_buffer(v16, qword_1EE07A0B0);
  v17 = sub_1D1E6707C();
  v18 = sub_1D1E6835C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315394;
    *(v19 + 4) = sub_1D1B1312C(0xD000000000000012, 0x80000001D1EC38D0, &v22);
    *(v19 + 12) = 2080;
    *(v19 + 14) = sub_1D1B1312C(0xD000000000000012, 0x80000001D1EC38D0, &v22);
    _os_log_impl(&dword_1D16EC000, v17, v18, "%s Found supported StaticMatterDevice: %s", v19, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v20, -1, -1);
    MEMORY[0x1D3893640](v19, -1, -1);
  }

  swift_unknownObjectRelease();
  sub_1D1AE8C0C(v9, a1);
  v14 = 0;
  return (*(v7 + 56))(a1, v14, 1, v6);
}

unint64_t *Collection<>.usableByWidgets.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  v6 = sub_1D1E67A8C();
  v7 = sub_1D1785608(v6);

  return v7;
}

uint64_t sub_1D1DA228C(id *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v24 = &v24 - v3;
  v26 = *a1;
  v4 = [v26 services];
  sub_1D17DAA94();
  v5 = sub_1D1E67C1C();

  v25 = v5 >> 62;
  if (v5 >> 62)
  {
LABEL_35:
    v6 = sub_1D1E6873C();
  }

  else
  {
    v6 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1D3891EF0](v7, v5);
    }

    else
    {
      if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_34:
        __break(1u);
        goto LABEL_35;
      }

      v9 = *(v5 + 8 * v7 + 32);
    }

    v10 = v9;
    v11 = [v9 serviceType];
    v12 = sub_1D1E6781C();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    ServiceKind.init(rawValue:)(v15);
    v16 = v27;
    if (v27 == 53)
    {
    }

    else
    {

      if (v16 > 0x32 || ((1 << v16) & 0x62C232CC03FF7) == 0)
      {
        goto LABEL_16;
      }
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_34;
    }
  }

  v7 = v6;
LABEL_16:
  if (v25)
  {
    v17 = sub_1D1E6873C();
  }

  else
  {
    v17 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v18 = v26;
  if (v7 != v17 && HMAccessory.isValidWidgetCategory.getter())
  {
    v19 = 1;
    return v19 & 1;
  }

  if (![v18 supportsNativeMatter])
  {
LABEL_25:
    v19 = 0;
    return v19 & 1;
  }

  v20 = v24;
  HMAccessory.staticMatterDevice.getter(v24);
  v21 = type metadata accessor for StaticMatterDevice(0);
  if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
  {
    sub_1D1BAB210(v20);
    goto LABEL_25;
  }

  if (qword_1EC642270 != -1)
  {
    swift_once();
  }

  v23 = *(v20 + *(v21 + 32));
  if (*(v23 + 16))
  {
    v19 = sub_1D1A46E30(qword_1EC648718, v23) ^ 1;
  }

  else
  {
    v19 = 1;
  }

  sub_1D19D4620(v20);
  return v19 & 1;
}

id MatterExecuteRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t HMService.isVisibleService.getter()
{
  v1 = [v0 serviceType];
  v2 = sub_1D1E6781C();
  v4 = v3;

  v5._countAndFlagsBits = v2;
  v5._object = v4;
  ServiceKind.init(rawValue:)(v5);
  return (v7 > 0x35uLL) | (0x19D3DCD33FC008uLL >> v7) & 1;
}

unint64_t sub_1D1DA2678()
{
  v1 = [v0 characteristics];
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v2 = sub_1D1E67C1C();

  if (!(v2 >> 62))
  {
    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_25:

    return 0;
  }

LABEL_24:
  v3 = sub_1D1E6873C();
  if (!v3)
  {
    goto LABEL_25;
  }

LABEL_3:
  v4 = 0;
  while (1)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1D3891EF0](v4, v2);
    }

    else
    {
      if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v5 = *(v2 + 8 * v4 + 32);
    }

    v6 = v5;
    v7 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v8 = [v5 characteristicType];
    v9 = sub_1D1E6781C();
    v11 = v10;

    v12._countAndFlagsBits = v9;
    v12._object = v11;
    CharacteristicKind.init(rawValue:)(v12);
    v13 = CharacteristicKind.rawValue.getter();
    v15 = v14;
    if (v13 == CharacteristicKind.rawValue.getter() && v15 == v16)
    {
      break;
    }

    v17 = sub_1D1E6904C();

    if (v17)
    {
      goto LABEL_15;
    }

    ++v4;
    if (v7 == v3)
    {
      goto LABEL_25;
    }
  }

LABEL_15:

  v18 = [v6 metadata];
  if (!v18)
  {

    return 0;
  }

  v19 = v18;
  v20 = [v18 validValues];
  if (v20)
  {
    sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
    v21 = sub_1D1E67C1C();

    if (v21 >> 62)
    {
      v22 = sub_1D1E6873C();
    }

    else
    {
      v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = v22 == 2;
  }

  return v20;
}

uint64_t Collection<>.writable.getter(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v2, a1);
  return sub_1D1E67A8C();
}

void sub_1D1DA2A0C(id *a1)
{
  v1 = [*a1 properties];
  v2 = sub_1D1E67C1C();

  v8 = 0;
  v3 = *(v2 + 16);
  if (v3)
  {
    v4 = 0;
    v5 = (v2 + 40);
    while (v4 < *(v2 + 16))
    {
      ++v4;
      v6 = *v5;
      v7[0] = *(v5 - 1);
      v7[1] = v6;
      sub_1D18C99CC(&v8, v7);
      v5 += 2;
      if (v3 == v4)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

uint64_t sub_1D1DA2ADC(unint64_t a1)
{
  v14 = MEMORY[0x1E69E7CC0];
  if (a1 >> 62)
  {
LABEL_19:
    v2 = sub_1D1E6873C();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      for (i = 0; ; ++i)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x1D3891EF0](i, a1);
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
LABEL_16:
            __break(1u);
            return v14;
          }
        }

        else
        {
          if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_19;
          }

          v4 = *(a1 + 8 * i + 32);
          v5 = i + 1;
          if (__OFADD__(i, 1))
          {
            goto LABEL_16;
          }
        }

        v6 = v4;
        v7 = [v6 serviceType];
        v8 = sub_1D1E6781C();
        v10 = v9;

        v11._countAndFlagsBits = v8;
        v11._object = v10;
        ServiceKind.init(rawValue:)(v11);
        if (v13 == 53)
        {

LABEL_10:
        }

        else
        {

          switch(v13)
          {
            case 0:
            case 1:
            case 2:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
            case 22:
            case 23:
            case 26:
            case 27:
            case 29:
            case 32:
            case 33:
            case 37:
            case 42:
            case 43:
            case 45:
            case 49:
            case 50:
              goto LABEL_10;
            default:
              sub_1D1E6896C();
              sub_1D1E689AC();
              sub_1D1E689BC();
              sub_1D1E6897C();
              break;
          }
        }

        if (v5 == v2)
        {
          return v14;
        }
      }
    }
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t HMAccessory.isTelevision.getter()
{
  v1 = v0;
  v2 = [v0 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v3 = sub_1D1E67C1C();

  if (v3 >> 62)
  {
    v4 = sub_1D1E6873C();
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_16:

    v5 = MEMORY[0x1E69E7CC0];
    goto LABEL_17;
  }

  v4 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_16;
  }

LABEL_3:
  v26 = MEMORY[0x1E69E7CC0];
  v5 = &v26;
  sub_1D178CF80(0, v4 & ~(v4 >> 63), 0);
  if (v4 < 0)
  {
    __break(1u);
    goto LABEL_27;
  }

  v6 = 0;
  v5 = v26;
  do
  {
    if ((v3 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1D3891EF0](v6, v3);
    }

    else
    {
      v7 = *(v3 + 8 * v6 + 32);
    }

    v8 = v7;
    v9 = [v7 serviceType];
    v10 = sub_1D1E6781C();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    ServiceKind.init(rawValue:)(v13);

    if (v25 == 53)
    {
      v14 = 0;
    }

    else
    {
      v14 = v25;
    }

    v26 = v5;
    v16 = v5[2];
    v15 = v5[3];
    if (v16 >= v15 >> 1)
    {
      sub_1D178CF80((v15 > 1), v16 + 1, 1);
      v5 = v26;
    }

    ++v6;
    v5[2] = v16 + 1;
    *(v5 + v16 + 32) = v14;
  }

  while (v4 != v6);

LABEL_17:
  v3 = sub_1D1784388(&unk_1F4D66668);
  v17 = [v1 mediaProfile];
  if (v17)
  {

    goto LABEL_19;
  }

  v20 = [v1 televisionProfiles];
  if (!v20)
  {
    goto LABEL_19;
  }

  v21 = v20;
  sub_1D1741B10(0, &qword_1EE079CB8, 0x1E696CC88);
  v22 = sub_1D1E67C1C();

  if (!(v22 >> 62))
  {
    v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_24;
  }

LABEL_27:
  v23 = sub_1D1E6873C();
LABEL_24:

  if (v23)
  {
    v24 = sub_1D1929F38(v5, v3);

    v18 = v24 ^ 1;
    return v18 & 1;
  }

LABEL_19:

  v18 = 0;
  return v18 & 1;
}

uint64_t sub_1D1DA3088(id *a1)
{
  v1 = *a1;
  v2 = [*a1 accessory];
  if (v2)
  {
    v3 = v2;
    if (HMAccessory.isTelevision.getter() & 1) != 0 || (HMAccessory.showAsIndividualTiles.getter())
    {
    }

    else
    {
      v19 = [v3 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v20 = sub_1D1E67C1C();

      v21 = sub_1D1DA2ADC(v20);

      if (v21 >> 62)
      {
        v22 = sub_1D1E6873C();
      }

      else
      {
        v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v22 > 1)
      {
        goto LABEL_17;
      }
    }
  }

  v4 = [v1 serviceType];
  v5 = sub_1D1E6781C();
  v7 = v6;

  v8._countAndFlagsBits = v5;
  v8._object = v7;
  ServiceKind.init(rawValue:)(v8);
  v9 = v40;
  if (v40 == 53)
  {
    v9 = 0;
  }

  v41 = v9;
  if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3130 == v10)
  {

LABEL_17:
    v18 = 0;
    return v18 & 1;
  }

  v11 = sub_1D1E6904C();

  if (v11)
  {
    goto LABEL_17;
  }

  v12 = [v1 serviceType];
  v13 = sub_1D1E6781C();
  v15 = v14;

  v16._countAndFlagsBits = v13;
  v16._object = v15;
  ServiceKind.init(rawValue:)(v16);
  v17 = v41;
  if (v41 > 0x35u)
  {
LABEL_21:
    if (qword_1EC642230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v24 = off_1EC646318;

    v25 = sub_1D171951C(v17, v24);

    if (v25)
    {
      goto LABEL_13;
    }

    v26 = [v1 serviceType];
    v27 = sub_1D1E6781C();
    v29 = v28;

    v30._countAndFlagsBits = v27;
    v30._object = v29;
    ServiceKind.init(rawValue:)(v30);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3340 == v31)
    {
    }

    else
    {
      v32 = sub_1D1E6904C();

      if ((v32 & 1) == 0)
      {
        goto LABEL_29;
      }
    }

    if (sub_1D1DA2678())
    {
      goto LABEL_13;
    }

LABEL_29:
    v33 = [v1 serviceType];
    v34 = sub_1D1E6781C();
    v36 = v35;

    v37._countAndFlagsBits = v34;
    v37._object = v36;
    ServiceKind.init(rawValue:)(v37);
    if (ServiceKind.rawValue.getter() == 0xD000000000000024 && 0x80000001D1EB3550 == v38)
    {
    }

    else
    {
      v39 = sub_1D1E6904C();

      if ((v39 & 1) == 0)
      {
        goto LABEL_17;
      }
    }

    v18 = sub_1D1DA2678();
    return v18 & 1;
  }

  if (((1 << v41) & 0x1964490330008) == 0)
  {
    if (v41 == 53)
    {
      v17 = 0;
    }

    goto LABEL_21;
  }

LABEL_13:
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1D1DA34B8@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v121 = a2;
  v132 = sub_1D1E66A7C();
  v124 = *(v132 - 8);
  v3 = MEMORY[0x1EEE9AC00](v132);
  v5 = &v117 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1EEE9AC00](v3);
  v120 = &v117 - v7;
  v8 = MEMORY[0x1EEE9AC00](v6);
  v123 = &v117 - v9;
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v117 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v117 - v13;
  if (qword_1EE07A098 != -1)
  {
    goto LABEL_49;
  }

  while (1)
  {
    v15 = sub_1D1E6709C();
    v16 = __swift_project_value_buffer(v15, qword_1EE0813C8);

    v122 = v16;
    v17 = sub_1D1E6707C();
    LODWORD(v18) = sub_1D1E6835C();

    v19 = os_log_type_enabled(v17, v18);
    v20 = a1 >> 62;
    v129 = v12;
    if (v19)
    {
      break;
    }

    v14 = v132;
LABEL_20:
    if (v20)
    {
      v17 = sub_1D1E6873C();
      v131 = v17;
      if (!v17)
      {
LABEL_51:
        v40 = MEMORY[0x1E69E7CC8];
LABEL_52:
        v127 = v40;
        v69 = v130;
        v5 = sub_1D1E6707C();
        v70 = sub_1D1E6835C();

        v21 = &selRef_addZoneWithName_completionHandler_;
        if (os_log_type_enabled(v5, v70))
        {
          v71 = swift_slowAlloc();
          v132 = swift_slowAlloc();
          *&v133[0] = v132;
          *v71 = 136315394;
          *(v71 + 4) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC9880, v133);
          *(v71 + 12) = 2080;
          v72 = [v69 reachabilityByAccessoryUniqueIdentifier];
          sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
          v12 = sub_1D17579AC();
          sub_1D1E675FC();

          v73 = sub_1D1E6760C();
          v75 = v74;

          v76 = sub_1D1B1312C(v73, v75, v133);
          v17 = v131;

          *(v71 + 14) = v76;
          v21 = &selRef_addZoneWithName_completionHandler_;
          _os_log_impl(&dword_1D16EC000, v5, v70, "%s Reachability -> %s", v71, 0x16u);
          v77 = v132;
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v77, -1, -1);
          MEMORY[0x1D3893640](v71, -1, -1);
        }

        if (!v17)
        {
          v79 = MEMORY[0x1E69E7CC8];
          goto LABEL_83;
        }

        v129 = v69;
        v78 = 0;
        v132 = a1 & 0xC000000000000001;
        v20 = a1 & 0xFFFFFFFFFFFFFF8;
        v130 = (v124 + 8);
        v125 = (v124 + 16);
        v79 = MEMORY[0x1E69E7CC8];
LABEL_56:
        v126 = v79;
        v18 = v78;
        while (1)
        {
          if (v132)
          {
            v80 = MEMORY[0x1D3891EF0](v18, a1);
          }

          else
          {
            if (v18 >= *(v20 + 16))
            {
              goto LABEL_87;
            }

            v80 = *(a1 + 8 * v18 + 32);
          }

          v5 = v80;
          v78 = (&v18->isa + 1);
          if (__OFADD__(v18, 1))
          {
            __break(1u);
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }

          v81 = [v80 service];
          if (v81 && (v82 = v81, v12 = [v81 accessory], v82, v12))
          {
            v83 = [v129 v21[145]];
            sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
            sub_1D17579AC();
            v84 = sub_1D1E675FC();

            v85 = [v12 uniqueIdentifier];
            v86 = v123;
            sub_1D1E66A5C();

            if (*(v84 + 16))
            {
              v87 = sub_1D1742188();
              if (v88)
              {
                v128 = a1;
                v89 = *v130;
                v119 = *(*(v84 + 56) + 8 * v87);
                v118 = v89;
                v89(v86, v14);

                v90 = [v12 uniqueIdentifier];
                sub_1D1E66A5C();

                v91 = [v119 BOOLValue];
                v92 = v126;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                *&v133[0] = v92;
                v95 = sub_1D1742188();
                v96 = *(v92 + 16);
                v97 = (v94 & 1) == 0;
                v98 = v96 + v97;
                if (__OFADD__(v96, v97))
                {
                  goto LABEL_90;
                }

                v17 = v131;
                if (*(v92 + 24) >= v98)
                {
                  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                  {
                    v107 = v94;
                    sub_1D173EB94();
                    LOBYTE(v94) = v107;
                  }
                }

                else
                {
                  LODWORD(v126) = v94;
                  sub_1D1732D10(v98, isUniquelyReferenced_nonNull_native);
                  v99 = sub_1D1742188();
                  v100 = v94 & 1;
                  LOBYTE(v94) = v126;
                  if ((v126 & 1) != v100)
                  {
                    goto LABEL_93;
                  }

                  v95 = v99;
                }

                v21 = &selRef_addZoneWithName_completionHandler_;
                v101 = *&v133[0];
                if (v94)
                {
                  *(*(*&v133[0] + 56) + v95) = v91;

                  v118(v120, v14);
                  a1 = v128;
                  v79 = v101;
                  if (v78 != v17)
                  {
                    goto LABEL_56;
                  }

                  goto LABEL_83;
                }

                *(*&v133[0] + 8 * (v95 >> 6) + 64) |= 1 << v95;
                v102 = v101[6] + *(v124 + 72) * v95;
                v103 = *(v124 + 16);
                LODWORD(v126) = v91;
                v104 = v120;
                v103(v102, v120, v14);
                *(v101[7] + v95) = v126;

                v118(v104, v14);
                v105 = v101[2];
                v67 = __OFADD__(v105, 1);
                v106 = v105 + 1;
                if (v67)
                {
                  goto LABEL_91;
                }

                v79 = v101;
                v101[2] = v106;
                a1 = v128;
                if (v78 == v17)
                {
LABEL_83:

                  v108 = sub_1D1E6707C();
                  v109 = sub_1D1E6835C();

                  if (os_log_type_enabled(v108, v109))
                  {
                    v110 = swift_slowAlloc();
                    v111 = swift_slowAlloc();
                    *&v133[0] = v111;
                    *v110 = 136315394;
                    *(v110 + 4) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC9880, v133);
                    *(v110 + 12) = 2080;
                    sub_1D17579AC();
                    v112 = sub_1D1E6760C();
                    v114 = sub_1D1B1312C(v112, v113, v133);

                    *(v110 + 14) = v114;
                    _os_log_impl(&dword_1D16EC000, v108, v109, "%s Mapped result: %s", v110, 0x16u);
                    swift_arrayDestroy();
                    MEMORY[0x1D3893640](v111, -1, -1);
                    MEMORY[0x1D3893640](v110, -1, -1);
                  }

                  v115 = v121;
                  *v121 = v127;
                  v115[1] = v79;
                  *(v115 + 16) = 4;
                  type metadata accessor for StateSnapshot.UpdateType(0);
                  return swift_storeEnumTagMultiPayload();
                }

                goto LABEL_56;
              }
            }

            (*v130)(v86, v14);
            v17 = v131;
            v21 = &selRef_addZoneWithName_completionHandler_;
          }

          else
          {
          }

          v18 = (v18 + 1);
          if (v78 == v17)
          {
            v79 = v126;
            goto LABEL_83;
          }
        }
      }
    }

    else
    {
      v17 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v131 = v17;
      if (!v17)
      {
        goto LABEL_51;
      }
    }

    v5 = 0;
    v126 = a1 & 0xFFFFFFFFFFFFFF8;
    v127 = a1 & 0xC000000000000001;
    v125 = (v124 + 8);
    v40 = MEMORY[0x1E69E7CC8];
    v128 = a1;
    while (1)
    {
      if (v127)
      {
        v46 = MEMORY[0x1D3891EF0](v5, a1);
      }

      else
      {
        if (v5 >= *(v126 + 16))
        {
          goto LABEL_46;
        }

        v46 = *(a1 + 8 * v5 + 32);
      }

      v47 = v46;
      a1 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v48 = v40;
      v49 = [v130 valueByCharacteristicUniqueIdentifier];
      sub_1D17579AC();
      v50 = sub_1D1E675FC();

      v51 = [v47 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v50 + 16) && (v52 = sub_1D1742188(), (v53 & 1) != 0))
      {
        sub_1D1741970(*(v50 + 56) + 32 * v52, v133);
        (*v125)(v12, v14);
      }

      else
      {

        (*v125)(v12, v14);
        memset(v133, 0, sizeof(v133));
      }

      StateSnapshot.CharacteristicUpdateType.ValueType.init(value:)(v133, v134);
      v14 = v134[0];
      v54 = v134[1];
      v12 = v135;
      v55 = v48;
      v56 = swift_isUniquelyReferenced_nonNull_native();
      *&v133[0] = v48;
      v58 = sub_1D171D368(v47);
      v59 = v55[2];
      v60 = (v57 & 1) == 0;
      v61 = v59 + v60;
      if (__OFADD__(v59, v60))
      {
        goto LABEL_47;
      }

      v62 = v57;
      if (v55[3] >= v61)
      {
        if (v56)
        {
          v40 = *&v133[0];
          if (v57)
          {
            goto LABEL_23;
          }
        }

        else
        {
          sub_1D1737914();
          v40 = *&v133[0];
          if (v62)
          {
            goto LABEL_23;
          }
        }
      }

      else
      {
        sub_1D1725FFC(v61, v56);
        v63 = sub_1D171D368(v47);
        if ((v62 & 1) != (v64 & 1))
        {
          goto LABEL_92;
        }

        v58 = v63;
        v40 = *&v133[0];
        if (v62)
        {
LABEL_23:
          v41 = v40[7] + 24 * v58;
          v42 = *v41;
          v43 = *(v41 + 8);
          *v41 = v14;
          *(v41 + 8) = v54;
          v44 = *(v41 + 16);
          *(v41 + 16) = v12;
          sub_1D1778940(v42, v43, v44);

          goto LABEL_24;
        }
      }

      v40[(v58 >> 6) + 8] |= 1 << v58;
      *(v40[6] + 8 * v58) = v47;
      v65 = v40[7] + 24 * v58;
      *v65 = v14;
      *(v65 + 8) = v54;
      *(v65 + 16) = v12;
      v66 = v40[2];
      v67 = __OFADD__(v66, 1);
      v68 = v66 + 1;
      if (v67)
      {
        goto LABEL_48;
      }

      v40[2] = v68;
LABEL_24:
      ++v5;
      v17 = v131;
      v14 = v132;
      v45 = a1 == v131;
      a1 = v128;
      v12 = v129;
      if (v45)
      {
        goto LABEL_52;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    swift_once();
  }

  v21 = swift_slowAlloc();
  v127 = swift_slowAlloc();
  *&v133[0] = v127;
  *v21 = 136315394;
  *(v21 + 4) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC9880, v133);
  *(v21 + 6) = 2080;
  if (v20)
  {
LABEL_88:
    v22 = sub_1D1E6873C();
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x1E69E7CC0];
  v131 = v21;
  if (!v22)
  {
LABEL_19:
    v14 = v132;
    v34 = MEMORY[0x1D3891260](v23, v132);
    v36 = v35;

    v37 = sub_1D1B1312C(v34, v36, v133);

    v38 = v131;
    *(v131 + 14) = v37;
    _os_log_impl(&dword_1D16EC000, v17, v18, "%s Applying characteristics [%s] to StateSnapshot", v38, 0x16u);
    v39 = v127;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v39, -1, -1);
    MEMORY[0x1D3893640](v38, -1, -1);

    goto LABEL_20;
  }

  v134[0] = MEMORY[0x1E69E7CC0];
  sub_1D178CEFC(0, v22 & ~(v22 >> 63), 0);
  if ((v22 & 0x8000000000000000) == 0)
  {
    LODWORD(v125) = v18;
    v126 = v17;
    v23 = v134[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      v24 = a1;
      for (i = 0; i != v22; ++i)
      {
        MEMORY[0x1D3891EF0](i, a1);
        v26 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v134[0] = v23;
        v28 = *(v23 + 16);
        v27 = *(v23 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D178CEFC((v27 > 1), v28 + 1, 1);
          v23 = v134[0];
        }

        *(v23 + 16) = v28 + 1;
        (*(v124 + 32))(v23 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v28, v14, v132);
      }
    }

    else
    {
      v24 = a1;
      v29 = (a1 + 32);
      do
      {
        v30 = *v29;
        v31 = [v30 uniqueIdentifier];
        sub_1D1E66A5C();

        v134[0] = v23;
        v33 = *(v23 + 16);
        v32 = *(v23 + 24);
        if (v33 >= v32 >> 1)
        {
          sub_1D178CEFC((v32 > 1), v33 + 1, 1);
          v23 = v134[0];
        }

        *(v23 + 16) = v33 + 1;
        (*(v124 + 32))(v23 + ((*(v124 + 80) + 32) & ~*(v124 + 80)) + *(v124 + 72) * v33, v5, v132);
        ++v29;
        --v22;
      }

      while (v22);
    }

    a1 = v24;
    v12 = v129;
    v17 = v126;
    LOBYTE(v18) = v125;
    goto LABEL_19;
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  sub_1D1E690FC();
  __break(1u);
LABEL_93:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1DA4364@<X0>(unint64_t a1@<X0>, void *a2@<X8>)
{
  v67 = a2;
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = (&v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v66 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v66 - v11);
  if (qword_1EE07A098 != -1)
  {
    goto LABEL_48;
  }

  while (1)
  {
    v13 = sub_1D1E6709C();
    __swift_project_value_buffer(v13, qword_1EE0813C8);

    v14 = sub_1D1E6707C();
    v15 = sub_1D1E6835C();

    v16 = os_log_type_enabled(v14, v15);
    v17 = a1 >> 62;
    v74 = a1;
    v75 = v3;
    v73 = v10;
    if (v16)
    {
      break;
    }

LABEL_20:
    if (v17)
    {
      v38 = sub_1D1E6873C();
      if (!v38)
      {
LABEL_50:
        v7 = MEMORY[0x1E69E7CC8];
LABEL_51:
        v63 = sub_1D18DC0DC(MEMORY[0x1E69E7CC0]);
        v64 = v67;
        *v67 = v7;
        v64[1] = v63;
        *(v64 + 16) = 4;
        type metadata accessor for StateSnapshot.UpdateType(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v38)
      {
        goto LABEL_50;
      }
    }

    v39 = 0;
    v70 = a1 & 0xFFFFFFFFFFFFFF8;
    v71 = a1 & 0xC000000000000001;
    v7 = MEMORY[0x1E69E7CC8];
    v68 = v38;
    v69 = (v4 + 8);
    while (1)
    {
      if (v71)
      {
        v44 = MEMORY[0x1D3891EF0](v39, a1);
      }

      else
      {
        if (v39 >= *(v70 + 16))
        {
          goto LABEL_45;
        }

        v44 = *(a1 + 8 * v39 + 32);
      }

      v4 = v44;
      v45 = (v39 + 1);
      if (__OFADD__(v39, 1))
      {
        break;
      }

      v46 = [v72 valueByCharacteristicUniqueIdentifier];
      sub_1D17579AC();
      v47 = sub_1D1E675FC();

      v48 = [v4 uniqueIdentifier];
      sub_1D1E66A5C();

      if (*(v47 + 16) && (v49 = sub_1D1742188(), (v50 & 1) != 0))
      {
        sub_1D1741970(*(v47 + 56) + 32 * v49, v76);
        (*v69)(v10, v3);
      }

      else
      {

        (*v69)(v10, v3);
        memset(v76, 0, sizeof(v76));
      }

      StateSnapshot.CharacteristicUpdateType.ValueType.init(value:)(v76, v77);
      a1 = v77[0];
      v3 = v77[1];
      v10 = v78;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v76[0] = v7;
      v52 = sub_1D171D368(v4);
      v54 = v7[2];
      v55 = (v53 & 1) == 0;
      v56 = __OFADD__(v54, v55);
      v57 = v54 + v55;
      if (v56)
      {
        goto LABEL_46;
      }

      v12 = v53;
      if (v7[3] < v57)
      {
        sub_1D1725FFC(v57, isUniquelyReferenced_nonNull_native);
        v52 = sub_1D171D368(v4);
        if ((v12 & 1) != (v58 & 1))
        {
          goto LABEL_54;
        }

LABEL_38:
        v7 = *&v76[0];
        if (v12)
        {
          goto LABEL_23;
        }

        goto LABEL_39;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_38;
      }

      v62 = v52;
      sub_1D1737914();
      v52 = v62;
      v7 = *&v76[0];
      if (v12)
      {
LABEL_23:
        v40 = v7[7] + 24 * v52;
        v41 = *v40;
        v42 = *(v40 + 8);
        *v40 = a1;
        *(v40 + 8) = v3;
        v43 = *(v40 + 16);
        *(v40 + 16) = v10;
        sub_1D1778940(v41, v42, v43);

        goto LABEL_24;
      }

LABEL_39:
      v7[(v52 >> 6) + 8] |= 1 << v52;
      *(v7[6] + 8 * v52) = v4;
      v59 = v7[7] + 24 * v52;
      *v59 = a1;
      *(v59 + 8) = v3;
      *(v59 + 16) = v10;
      v60 = v7[2];
      v56 = __OFADD__(v60, 1);
      v61 = v60 + 1;
      if (v56)
      {
        goto LABEL_47;
      }

      v7[2] = v61;
LABEL_24:
      ++v39;
      a1 = v74;
      v3 = v75;
      v10 = v73;
      if (v45 == v68)
      {
        goto LABEL_51;
      }
    }

    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    swift_once();
  }

  v18 = swift_slowAlloc();
  v69 = swift_slowAlloc();
  *&v76[0] = v69;
  *v18 = 136315394;
  *(v18 + 4) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC9880, v76);
  *(v18 + 12) = 2080;
  LODWORD(v70) = v15;
  if (v17)
  {
    v19 = sub_1D1E6873C();
  }

  else
  {
    v19 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v20 = MEMORY[0x1E69E7CC0];
  v71 = v18;
  if (!v19)
  {
LABEL_19:
    v32 = MEMORY[0x1D3891260](v20, v3);
    v34 = v33;

    v35 = sub_1D1B1312C(v32, v34, v76);

    v36 = v71;
    *(v71 + 14) = v35;
    _os_log_impl(&dword_1D16EC000, v14, v70, "%s Applying characteristics [%s] to StateSnapshot", v36, 0x16u);
    v37 = v69;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v37, -1, -1);
    MEMORY[0x1D3893640](v36, -1, -1);

    v10 = v73;
    goto LABEL_20;
  }

  v77[0] = MEMORY[0x1E69E7CC0];
  sub_1D178CEFC(0, v19 & ~(v19 >> 63), 0);
  if ((v19 & 0x8000000000000000) == 0)
  {
    v66 = a1 >> 62;
    v68 = v14;
    v20 = v77[0];
    if ((a1 & 0xC000000000000001) != 0)
    {
      v21 = 0;
      do
      {
        MEMORY[0x1D3891EF0](v21, v74);
        v22 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v77[0] = v20;
        v24 = *(v20 + 16);
        v23 = *(v20 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D178CEFC((v23 > 1), v24 + 1, 1);
          v20 = v77[0];
        }

        ++v21;
        *(v20 + 16) = v24 + 1;
        v25 = v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v24;
        v3 = v75;
        (*(v4 + 32))(v25, v12, v75);
      }

      while (v19 != v21);
    }

    else
    {
      v26 = (a1 + 32);
      v12 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      do
      {
        v27 = *v26;
        v28 = [v27 uniqueIdentifier];
        sub_1D1E66A5C();

        v77[0] = v20;
        v30 = *(v20 + 16);
        v29 = *(v20 + 24);
        if (v30 >= v29 >> 1)
        {
          sub_1D178CEFC((v29 > 1), v30 + 1, 1);
          v20 = v77[0];
        }

        *(v20 + 16) = v30 + 1;
        v31 = v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v30;
        v3 = v75;
        (*(v4 + 32))(v31, v7, v75);
        ++v26;
        --v19;
      }

      while (v19);
    }

    a1 = v74;
    v14 = v68;
    v17 = v66;
    goto LABEL_19;
  }

  __break(1u);
LABEL_54:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1DA4B08@<X0>(unint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v48 = sub_1D1E66A7C();
  v6 = *(v48 - 8);
  v7 = MEMORY[0x1EEE9AC00](v48);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = (&v40 - v10);
  if (qword_1EE07A098 != -1)
  {
    goto LABEL_33;
  }

  while (1)
  {
    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EE0813C8);

    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6835C();

    v15 = (a1 >> 62);
    if (!os_log_type_enabled(v13, v14))
    {

      goto LABEL_20;
    }

    v44 = v14;
    v16 = swift_slowAlloc();
    v43 = swift_slowAlloc();
    v50 = v43;
    *v16 = 136315394;
    *(v16 + 4) = sub_1D1B1312C(0xD000000000000017, 0x80000001D1EC9880, &v50);
    v45 = v16;
    *(v16 + 12) = 2080;
    v17 = v15 ? sub_1D1E6873C() : *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v18 = MEMORY[0x1E69E7CC0];
    v46 = a1 >> 62;
    if (v17)
    {
      break;
    }

LABEL_19:
    v28 = MEMORY[0x1D3891260](v18, v48);
    v30 = v29;

    v31 = sub_1D1B1312C(v28, v30, &v50);

    v32 = v45;
    *(v45 + 14) = v31;
    _os_log_impl(&dword_1D16EC000, v13, v44, "%s Applying actionsets [%s] to StateSnapshot", v32, 0x16u);
    v33 = v43;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v33, -1, -1);
    MEMORY[0x1D3893640](v32, -1, -1);

    v15 = v46;
LABEL_20:
    v34 = sub_1D18DA708(MEMORY[0x1E69E7CC0]);
    v50 = v34;
    if (v15)
    {
      v39 = v34;
      v9 = sub_1D1E6873C();
      v34 = v39;
      if (!v9)
      {
LABEL_30:
        *a2 = v34;
        type metadata accessor for StateSnapshot.UpdateType(0);
        return swift_storeEnumTagMultiPayload();
      }
    }

    else
    {
      v9 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v9)
      {
        goto LABEL_30;
      }
    }

    v11 = a2;
    v35 = 0;
    v6 = a1 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v36 = MEMORY[0x1D3891EF0](v35, a1);
      }

      else
      {
        if (v35 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_32;
        }

        v36 = *(a1 + 8 * v35 + 32);
      }

      a2 = v36;
      v37 = (v35 + 1);
      if (__OFADD__(v35, 1))
      {
        break;
      }

      v49 = v36;
      sub_1D1DA506C(&v50, &v49, v3);

      ++v35;
      if (v37 == v9)
      {
        v34 = v50;
        a2 = v11;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    swift_once();
  }

  v49 = MEMORY[0x1E69E7CC0];
  sub_1D178CEFC(0, v17 & ~(v17 >> 63), 0);
  if ((v17 & 0x8000000000000000) == 0)
  {
    v41 = v13;
    v42 = a2;
    v18 = v49;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v17; ++i)
      {
        MEMORY[0x1D3891EF0](i, a1);
        v20 = [swift_unknownObjectRetain() uniqueIdentifier];
        sub_1D1E66A5C();
        swift_unknownObjectRelease_n();

        v49 = v18;
        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_1D178CEFC((v21 > 1), v22 + 1, 1);
          v18 = v49;
        }

        v18[2] = v22 + 1;
        (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v22, v11, v48);
      }
    }

    else
    {
      v23 = (a1 + 32);
      v47 = v6 + 32;
      do
      {
        v24 = *v23;
        v25 = [v24 uniqueIdentifier];
        sub_1D1E66A5C();

        v49 = v18;
        v27 = v18[2];
        v26 = v18[3];
        if (v27 >= v26 >> 1)
        {
          sub_1D178CEFC((v26 > 1), v27 + 1, 1);
          v18 = v49;
        }

        v18[2] = v27 + 1;
        (*(v6 + 32))(v18 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v27, v9, v48);
        ++v23;
        --v17;
      }

      while (v17);
    }

    v13 = v41;
    a2 = v42;
    goto LABEL_19;
  }

  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_1D1DA506C(uint64_t *a1, void **a2, void *a3)
{
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a2;
  v11 = [a3 isOnByActionSetUniqueIdentifier];
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  sub_1D17579AC();
  v12 = sub_1D1E675FC();

  v13 = [v10 uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v12 + 16) && (v14 = sub_1D1742188(), (v15 & 1) != 0))
  {
    v24 = a3;
    v16 = *(v7 + 8);
    v17 = *(*(v12 + 56) + 8 * v14);
    v16(v9, v6);

    v18 = sub_1D1E684CC();
    if (v17)
    {
      v19 = v18;
      v20 = sub_1D1E684FC();

      v18 = v17;
    }

    else
    {
      v20 = 0;
    }

    a3 = v24;
  }

  else
  {

    (*(v7 + 8))(v9, v6);
    v18 = sub_1D1E684CC();
    v20 = 0;
  }

  v21 = v20 & 1 | (sub_1D1DA52BC(a3, v10) << 8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v25 = *a1;
  result = sub_1D1755C14(v21, v10, isUniquelyReferenced_nonNull_native);
  *a1 = v25;
  return result;
}

uint64_t sub_1D1DA52BC(void *a1, void *a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 didExecutionFailByActionSetUniqueIdentifier];
  sub_1D1741B10(0, &qword_1EC6445D0, 0x1E696AD98);
  sub_1D17579AC();
  v9 = sub_1D1E675FC();

  v10 = [a2 uniqueIdentifier];
  sub_1D1E66A5C();

  if (!*(v9 + 16) || (v11 = sub_1D1742188(), (v12 & 1) == 0))
  {

    (*(v5 + 8))(v7, v4);
    v15 = sub_1D1E684CC();
    goto LABEL_7;
  }

  v13 = *(v5 + 8);
  v14 = *(*(v9 + 56) + 8 * v11);
  v13(v7, v4);

  v15 = sub_1D1E684CC();
  if (!v14)
  {
LABEL_7:

    return [a2 isExecuting];
  }

  v16 = v15;
  v17 = sub_1D1E684FC();

  if (v17)
  {
    return 2;
  }

  return [a2 isExecuting];
}

uint64_t WidgetManager.AttributeDescriptor.description.getter()
{
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD000000000000023, 0x80000001D1EC98A0);
  MEMORY[0x1D3890F70](*v0, v0[1]);
  MEMORY[0x1D3890F70](0x656369766564202CLL, 0xEA0000000000203ALL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A370, &qword_1D1EAF8F0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](0x3A7368746170202CLL, 0xE900000000000020);
  v1 = v0[4];
  v2 = sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
  v3 = MEMORY[0x1D3891260](v1, v2);
  MEMORY[0x1D3890F70](v3);

  MEMORY[0x1D3890F70](125, 0xE100000000000000);
  return 0;
}

uint64_t WidgetManager.monitorState(for:widgetIdentifier:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v7 = *v5;
  v6[6] = a5;
  v6[7] = v7;
  v6[8] = sub_1D1E67E1C();
  v6[9] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v6[10] = v9;
  v6[11] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1DA56A8, v9, v8);
}

uint64_t sub_1D1DA56A8(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(v1 + 48);
  v12 = *(v1 + 32);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = sub_1D1E67E0C();
  *(v1 + 96) = v6;
  v7 = swift_task_alloc();
  *(v1 + 104) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v12;
  *(v7 + 56) = v3;
  v8 = swift_task_alloc();
  *(v1 + 112) = v8;
  *v8 = v1;
  v8[1] = sub_1D1DA57DC;
  v9 = MEMORY[0x1E69E85E0];
  v10 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v8, v6, v9, 0xD000000000000028, 0x80000001D1EC98D0, sub_1D1DA5DC8, v7, v10);
}

uint64_t sub_1D1DA57DC()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D1DA5964;
  }

  else
  {

    v3 = *(v2 + 80);
    v4 = *(v2 + 88);
    v5 = sub_1D1DA5900;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1DA5900()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DA5964()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D1DA59DC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v32[3] = a4;
  v32[4] = a5;
  v37 = a2;
  v34 = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  v35 = *(v10 - 8);
  v36 = v10;
  v32[5] = *(v35 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v33 = v32 - v11;
  aBlock[0] = MEMORY[0x1E69E7CC0];
  v12 = *(a3 + 16);
  if (v12)
  {
    v13 = 0;
    v14 = a3 + 64;
    v38 = MEMORY[0x1E69E7CC0];
    v32[1] = a6;
    v32[2] = a7;
    v32[0] = a3 + 64;
    do
    {
      v15 = v14 + 40 * v13;
      v16 = v13;
      while (1)
      {
        if (v16 >= v12)
        {
          __break(1u);
LABEL_17:
          __break(1u);
          return;
        }

        v13 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          goto LABEL_17;
        }

        objc_opt_self();
        v17 = swift_dynamicCastObjCClass();
        if (v17)
        {
          v18 = v17;
          v19 = objc_allocWithZone(MEMORY[0x1E696CBD0]);
          swift_unknownObjectRetain_n();

          v20 = sub_1D1E677EC();

          sub_1D1741B10(0, &qword_1EC650120, 0x1E696F570);
          v21 = sub_1D1E67BFC();

          v22 = [v19 initWithMTRDevice:v18 controllerID:v20 attributePaths:v21];
          swift_unknownObjectRelease_n();

          if (v22)
          {
            break;
          }
        }

        ++v16;
        v15 += 40;
        if (v13 == v12)
        {
          goto LABEL_15;
        }
      }

      MEMORY[0x1D3891220]();
      if (*((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((aBlock[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D1E67C5C();
      }

      sub_1D1E67CAC();
      v38 = aBlock[0];
      v14 = v32[0];
    }

    while (v13 != v12);
  }

  else
  {
    v38 = MEMORY[0x1E69E7CC0];
  }

LABEL_15:
  sub_1D1741B10(0, &qword_1EC64F890, 0x1E696CBD0);
  v23 = sub_1D1E67BFC();

  v24 = sub_1D1E677EC();
  v25 = sub_1D1E677EC();
  v26 = v35;
  v27 = v33;
  v28 = v36;
  (*(v35 + 16))(v33, v34, v36);
  v29 = (*(v26 + 80) + 16) & ~*(v26 + 80);
  v30 = swift_allocObject();
  (*(v26 + 32))(v30 + v29, v27, v28);
  aBlock[4] = sub_1D1DA8AE0;
  aBlock[5] = v30;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1C40BA8;
  aBlock[3] = &block_descriptor_50_0;
  v31 = _Block_copy(aBlock);

  [v37 monitorStateForMTRAttributeDescriptors:v23 widgetIdentifier:v24 kind:v25 completion:v31];
  _Block_release(v31);
}

uint64_t sub_1D1DA5DE0(void *a1)
{
  if (sub_1D1E67F7C())
  {
    sub_1D1E67D8C();
    sub_1D19DD0B4();
    v2 = swift_allocError();
    sub_1D1E6759C();
    v16 = v2;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    return sub_1D1E67D5C();
  }

  if (a1)
  {
    v3 = a1;
    if (qword_1EE07A070 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EE081480);
    v5 = a1;
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v8 = 136315394;
      *(v8 + 4) = sub_1D1B1312C(0xD000000000000028, 0x80000001D1EC98D0, &v16);
      *(v8 + 12) = 2112;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v12;
      *v9 = v12;
      _os_log_impl(&dword_1D16EC000, v6, v7, "%s error occured: %@", v8, 0x16u);
      sub_1D179F28C(v9);
      MEMORY[0x1D3893640](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    sub_1D1DA87F0();
    v13 = swift_allocError();
    *v14 = a1;
    v16 = v13;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  return sub_1D1E67D6C();
}

uint64_t WidgetManager.monitorAndFetchState(for:widgetIdentifier:kind:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *v6;
  v7[9] = sub_1D1E67E1C();
  v7[10] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v7[11] = v9;
  v7[12] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1DA60EC, v9, v8);
}

{
  v7[6] = a5;
  v7[7] = a6;
  v7[4] = a3;
  v7[5] = a4;
  v7[2] = a1;
  v7[3] = a2;
  v7[8] = *v6;
  v7[9] = sub_1D1E67E1C();
  v7[10] = sub_1D1E67E0C();
  v9 = sub_1D1E67D4C();
  v7[11] = v9;
  v7[12] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1D1DA7400, v9, v8);
}

uint64_t sub_1D1DA60EC(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v13 = *(v1 + 40);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = sub_1D1E67E0C();
  *(v1 + 104) = v6;
  v7 = swift_task_alloc();
  *(v1 + 112) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v13;
  *(v7 + 56) = v3;
  v8 = swift_task_alloc();
  *(v1 + 120) = v8;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v8 = v1;
  v8[1] = sub_1D1DA6228;
  v10 = *(v1 + 16);
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v10, v6, v11, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1DA6590, v7, updated);
}

uint64_t sub_1D1DA6228()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1D1DA8B9C;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1D1BFAAB4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

void sub_1D1DA634C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a1;
  v21 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v13 = sub_1D1E67BFC();
  v14 = sub_1D1E677EC();
  v15 = sub_1D1E677EC();
  (*(v9 + 16))(v12, v20, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v16, v12, v8);
  *(v18 + v17) = a3;
  aBlock[4] = sub_1D1DA8A20;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1DA8BBC;
  aBlock[3] = &block_descriptor_44;
  v19 = _Block_copy(aBlock);

  [v21 monitorAndFetchStateForCharacteristics:v13 widgetIdentifier:v14 kind:v15 completion:v19];
  _Block_release(v19);
}

uint64_t WidgetManager.fetchState(for:)(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  v3[5] = sub_1D1E67E1C();
  v3[6] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1DA664C, v5, v4);
}

{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  v3[5] = sub_1D1E67E1C();
  v3[6] = sub_1D1E67E0C();
  v5 = sub_1D1E67D4C();
  v3[7] = v5;
  v3[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D1DA7E34, v5, v4);
}

uint64_t sub_1D1DA664C(uint64_t a1)
{
  v9 = *(v1 + 24);
  v2 = sub_1D1E67E0C();
  *(v1 + 72) = v2;
  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  v3[1] = vextq_s8(v9, v9, 8uLL);
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v4 = v1;
  v4[1] = sub_1D1DA6770;
  v6 = *(v1 + 16);
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v6, v2, v7, 0xD000000000000010, 0x80000001D1EC9900, sub_1D1DA6A9C, v3, updated);
}

uint64_t sub_1D1DA6770()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D1DA8BA0;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D1DA8BC0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

void sub_1D1DA6894(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  v11 = sub_1D1E67BFC();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1D1DA894C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1DA8BBC;
  aBlock[3] = &block_descriptor_38;
  v14 = _Block_copy(aBlock);

  [a2 fetchStateForCharacteristics:v11 completion:v14];
  _Block_release(v14);
}

uint64_t WidgetManager.perform(_:forKind:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  v4[6] = sub_1D1E67E1C();
  v4[7] = sub_1D1E67E0C();
  v7 = sub_1D1E67D4C();
  v4[8] = v7;
  v4[9] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1D1DA6B48, v7, v6);
}

uint64_t sub_1D1DA6B48()
{
  v1 = v0[2];
  if (v1 >> 62)
  {
    if (sub_1D1E6873C())
    {
      goto LABEL_3;
    }
  }

  else if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v2 = v0[5];
    v3 = v0[4];
    v11 = *(v0 + 1);
    v4 = sub_1D1E67E0C();
    v0[10] = v4;
    v5 = swift_task_alloc();
    v0[11] = v5;
    *(v5 + 16) = v2;
    *(v5 + 24) = v11;
    *(v5 + 40) = v3;
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_1D1DA6CDC;
    v7 = MEMORY[0x1E69E85E0];
    v8 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE38](v6, v4, v7, 0xD000000000000013, 0x80000001D1EC9920, sub_1D1DA70E8, v5, v8);
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D1DA6CDC()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1D1DA6E64;
  }

  else
  {

    v3 = *(v2 + 64);
    v4 = *(v2 + 72);
    v5 = sub_1D1DA6E00;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1DA6E00()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1DA6E64()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D1DA6EDC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = aBlock - v9;
  sub_1D1741B10(0, &qword_1EC6460A0, 0x1E696CC20);
  v11 = sub_1D1E67BFC();
  v12 = sub_1D1E677EC();
  (*(v8 + 16))(v10, a1, v7);
  v13 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v14 = swift_allocObject();
  (*(v8 + 32))(v14 + v13, v10, v7);
  aBlock[4] = sub_1D1DA8934;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1C40BA8;
  aBlock[3] = &block_descriptor_32_3;
  v15 = _Block_copy(aBlock);

  [a2 performRequests:v11 forKind:v12 completion:v15];
  _Block_release(v15);
}

uint64_t sub_1D1DA70F4(void *a1)
{
  if (sub_1D1E67F7C())
  {
    sub_1D1E67D8C();
    sub_1D19DD0B4();
    v2 = swift_allocError();
    sub_1D1E6759C();
    v16 = v2;
LABEL_9:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
    return sub_1D1E67D5C();
  }

  if (a1)
  {
    v3 = a1;
    if (qword_1EE07A070 != -1)
    {
      swift_once();
    }

    v4 = sub_1D1E6709C();
    __swift_project_value_buffer(v4, qword_1EE081480);
    v5 = a1;
    v6 = sub_1D1E6707C();
    v7 = sub_1D1E6835C();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v8 = 136315394;
      *(v8 + 4) = sub_1D1B1312C(0xD000000000000013, 0x80000001D1EC9920, &v16);
      *(v8 + 12) = 2112;
      v11 = a1;
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v8 + 14) = v12;
      *v9 = v12;
      _os_log_impl(&dword_1D16EC000, v6, v7, "%s error occured: %@", v8, 0x16u);
      sub_1D179F28C(v9);
      MEMORY[0x1D3893640](v9, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x1D3893640](v10, -1, -1);
      MEMORY[0x1D3893640](v8, -1, -1);
    }

    sub_1D1DA87F0();
    v13 = swift_allocError();
    *v14 = a1;
    v16 = v13;
    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  return sub_1D1E67D6C();
}

uint64_t sub_1D1DA7400(uint64_t a1)
{
  v2 = *(v1 + 64);
  v3 = *(v1 + 56);
  v13 = *(v1 + 40);
  v5 = *(v1 + 24);
  v4 = *(v1 + 32);
  v6 = sub_1D1E67E0C();
  *(v1 + 104) = v6;
  v7 = swift_task_alloc();
  *(v1 + 112) = v7;
  *(v7 + 16) = v2;
  *(v7 + 24) = v5;
  *(v7 + 32) = v4;
  *(v7 + 40) = v13;
  *(v7 + 56) = v3;
  v8 = swift_task_alloc();
  *(v1 + 120) = v8;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v8 = v1;
  v8[1] = sub_1D1DA753C;
  v10 = *(v1 + 16);
  v11 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v10, v6, v11, 0xD000000000000030, 0x80000001D1EC66D0, sub_1D1DA791C, v7, updated);
}

uint64_t sub_1D1DA753C()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1D1DA7660;
  }

  else
  {

    v3 = *(v2 + 88);
    v4 = *(v2 + 96);
    v5 = sub_1D1BF01F0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1DA7660()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D1DA76D8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v20 = a1;
  v21 = a2;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v20 - v11;
  sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v13 = sub_1D1E67BFC();
  v14 = sub_1D1E677EC();
  v15 = sub_1D1E677EC();
  (*(v9 + 16))(v12, v20, v8);
  v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v17 = (v10 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  (*(v9 + 32))(v18 + v16, v12, v8);
  *(v18 + v17) = a3;
  aBlock[4] = sub_1D1DA8844;
  aBlock[5] = v18;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1DA8BBC;
  aBlock[3] = &block_descriptor_26_2;
  v19 = _Block_copy(aBlock);

  [v21 monitorAndFetchStateForActionSets:v13 widgetIdentifier:v14 kind:v15 completion:v19];
  _Block_release(v19);
}

uint64_t sub_1D1DA794C(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v10 = MEMORY[0x1EEE9AC00](updated - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  if (sub_1D1E67F7C())
  {
    sub_1D1E67D8C();
    sub_1D19DD0B4();
    v15 = swift_allocError();
    sub_1D1E6759C();
    v38 = v15;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
    return sub_1D1E67D5C();
  }

  if (a2)
  {
    v16 = a2;
    if (qword_1EE07A070 != -1)
    {
      swift_once();
    }

    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EE081480);
    v18 = a2;
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6835C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_1D1B1312C(0xD000000000000030, 0x80000001D1EC66D0, &v38);
      *(v21 + 12) = 2112;
      v24 = a2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      *v22 = v25;
      _os_log_impl(&dword_1D16EC000, v19, v20, "%s error occured: %@", v21, 0x16u);
      sub_1D179F28C(v22);
      MEMORY[0x1D3893640](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1D3893640](v23, -1, -1);
      MEMORY[0x1D3893640](v21, -1, -1);
    }

    sub_1D1DA87F0();
    v26 = swift_allocError();
    *v27 = a2;
    goto LABEL_9;
  }

  if (!a1)
  {
    sub_1D1DA87F0();
    v26 = swift_allocError();
    *v36 = 0;
LABEL_9:
    v38 = v26;
    goto LABEL_10;
  }

  v29 = qword_1EE07A070;
  v30 = a1;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_1D1E6709C();
  __swift_project_value_buffer(v31, qword_1EE081480);
  v32 = sub_1D1E6707C();
  v33 = sub_1D1E6835C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_1D1B1312C(0xD000000000000030, 0x80000001D1EC66D0, &v38);
    _os_log_impl(&dword_1D16EC000, v32, v33, "%s successfully delivered a response", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1D3893640](v35, -1, -1);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  a5(a4);
  sub_1D1AB10C0(v14, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  sub_1D1E67D6C();

  return sub_1D1AB1124(v14);
}

uint64_t sub_1D1DA7E34(uint64_t a1)
{
  v9 = *(v1 + 24);
  v2 = sub_1D1E67E0C();
  *(v1 + 72) = v2;
  v3 = swift_task_alloc();
  *(v1 + 80) = v3;
  v3[1] = vextq_s8(v9, v9, 8uLL);
  v4 = swift_task_alloc();
  *(v1 + 88) = v4;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  *v4 = v1;
  v4[1] = sub_1D1DA7F58;
  v6 = *(v1 + 16);
  v7 = MEMORY[0x1E69E85E0];

  return MEMORY[0x1EEE6DE38](v6, v2, v7, 0xD000000000000010, 0x80000001D1EC9900, sub_1D1DA82FC, v3, updated);
}

uint64_t sub_1D1DA7F58()
{
  v2 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D1DA807C;
  }

  else
  {

    v3 = *(v2 + 56);
    v4 = *(v2 + 64);
    v5 = sub_1D1A0DFC4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D1DA807C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1D1DA80F4(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x1EEE9AC00](v6);
  v10 = aBlock - v9;
  sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
  v11 = sub_1D1E67BFC();
  (*(v7 + 16))(v10, a1, v6);
  v12 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v13 = swift_allocObject();
  (*(v7 + 32))(v13 + v12, v10, v6);
  *(v13 + ((v8 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1D1DA87AC;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D1DA8BBC;
  aBlock[3] = &block_descriptor_61;
  v14 = _Block_copy(aBlock);

  [a2 fetchStateForActionSets:v11 completion:v14];
  _Block_release(v14);
}

void **assignWithTake for WidgetManager(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_1D1DA8368(void *a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t))
{
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  v10 = MEMORY[0x1EEE9AC00](updated - 8);
  v12 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v37 - v13;
  if (sub_1D1E67F7C())
  {
    sub_1D1E67D8C();
    sub_1D19DD0B4();
    v15 = swift_allocError();
    sub_1D1E6759C();
    v38 = v15;
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
    return sub_1D1E67D5C();
  }

  if (a2)
  {
    v16 = a2;
    if (qword_1EE07A070 != -1)
    {
      swift_once();
    }

    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EE081480);
    v18 = a2;
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6835C();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v38 = v23;
      *v21 = 136315394;
      *(v21 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EC9900, &v38);
      *(v21 + 12) = 2112;
      v24 = a2;
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v21 + 14) = v25;
      *v22 = v25;
      _os_log_impl(&dword_1D16EC000, v19, v20, "%s error occured: %@", v21, 0x16u);
      sub_1D179F28C(v22);
      MEMORY[0x1D3893640](v22, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v23);
      MEMORY[0x1D3893640](v23, -1, -1);
      MEMORY[0x1D3893640](v21, -1, -1);
    }

    sub_1D1DA87F0();
    v26 = swift_allocError();
    *v27 = a2;
    goto LABEL_9;
  }

  if (!a1)
  {
    sub_1D1DA87F0();
    v26 = swift_allocError();
    *v36 = 0;
LABEL_9:
    v38 = v26;
    goto LABEL_10;
  }

  v29 = qword_1EE07A070;
  v30 = a1;
  if (v29 != -1)
  {
    swift_once();
  }

  v31 = sub_1D1E6709C();
  __swift_project_value_buffer(v31, qword_1EE081480);
  v32 = sub_1D1E6707C();
  v33 = sub_1D1E6835C();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v38 = v35;
    *v34 = 136315138;
    *(v34 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EC9900, &v38);
    _os_log_impl(&dword_1D16EC000, v32, v33, "%s successfully delivered a response", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v35);
    MEMORY[0x1D3893640](v35, -1, -1);
    MEMORY[0x1D3893640](v34, -1, -1);
  }

  a5(a4);
  sub_1D1AB10C0(v14, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  sub_1D1E67D6C();

  return sub_1D1AB1124(v14);
}

uint64_t block_copy_helper_61(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D1DA87F0()
{
  result = qword_1EC64F888;
  if (!qword_1EC64F888)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC64F888);
  }

  return result;
}

uint64_t sub_1D1DA8870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, unint64_t, void, uint64_t))
{
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58) - 8);
  v10 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  return a4(a1, a2, v4 + v10, *(v4 + ((*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8)), a3);
}

uint64_t objectdestroyTm_9()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F880, &qword_1D1EAFA58);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v5 + 8, v3 | 7);
}

uint64_t objectdestroy_28Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1DA8AF8(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646FC0, &qword_1D1E840F0) - 8);
  v5 = v2 + ((*(v4 + 80) + 16) & ~*(v4 + 80));

  return a2(a1, v5);
}

uint64_t sub_1D1DA8BC4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1D1E66FDC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v10 = sub_1D1E6701C();
  v11 = __swift_project_value_buffer(v10, qword_1EC6BE2B8);
  MEMORY[0x1EEE9AC00](v11);
  *&v14[-32] = a2;
  *&v14[-24] = a3;
  *&v14[-16] = a1;
  sub_1D1E66FCC();
  v12 = sub_1D1DCF7D4("IFObjectHasher.GenerateHash.AppIntentIDs", 40, 2, v9, sub_1D1DA8E24, &v14[-48]);
  (*(v7 + 8))(v9, v6);
  return v12;
}

void sub_1D1DA8D6C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = [objc_allocWithZone(MEMORY[0x1E69AA8A0]) init];
  sub_1D1DA8E44(a1, a2);
  [v7 finalize];
  v8 = sub_1D1E68FAC();
  v10 = v9;

  *a4 = v8;
  a4[1] = v10;
}

uint64_t sub_1D1DA8E44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = v15 - v11;
  (*(v6 + 16))(v8, a1, a2);
  sub_1D1E67A2C();
  swift_getAssociatedConformanceWitness();
  sub_1D1E685CC();
  while (v17)
  {
    sub_1D16EEE20(&v16, v15);
    __swift_project_boxed_opaque_existential_1(v15, v15[3]);
    sub_1D1E65EDC();
    v13 = sub_1D1E677EC();

    __swift_destroy_boxed_opaque_existential_1(v15);
    sub_1D1E685CC();
  }

  return (*(v10 + 8))(v12, AssociatedTypeWitness);
}

void sub_1D1DA90A0()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E69AA8A0]) init];
  v1 = sub_1D1E677EC();

  [v0 finalize];
  v2 = sub_1D1E68FAC();
  v4 = v3;

  qword_1EC6BE2D0 = v2;
  *algn_1EC6BE2D8 = v4;
}

id sub_1D1DA9170(char *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  v5 = *(a2 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v31 - v9;
  sub_1D1E65E4C();
  sub_1D1741B10(0, &qword_1EC64F8A8, 0x1E69AC640);
  if (swift_dynamicCast())
  {
    v11 = v4;
    v12 = v32;
    sub_1D1E65E3C();
    sub_1D1741B10(0, &qword_1EC64F8B0, 0x1E69AC678);
    if (swift_dynamicCast())
    {
      v13 = v32;
      v14 = objc_allocWithZone(swift_getObjCClassFromMetadata());
      v15 = sub_1D1E677EC();
      v16 = [v14 initWithAppBundleIdentifier:v15 linkAction:v12 linkActionMetadata:v13];

      (*(v5 + 8))(v11, a2);
      return v16;
    }

    v4 = v11;
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v18 = sub_1D1E6709C();
  __swift_project_value_buffer(v18, qword_1EE0813C8);
  v19 = *(v5 + 16);
  v19(v10, v4, a2);
  v20 = sub_1D1E6707C();
  v21 = sub_1D1E6833C();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v31 = v4;
    v23 = v22;
    v24 = swift_slowAlloc();
    v33[0] = v24;
    *v23 = 136315138;
    v19(v8, v10, a2);
    v25 = sub_1D1E678BC();
    v27 = v26;
    v28 = *(v5 + 8);
    v28(v10, a2);
    v29 = sub_1D1B1312C(v25, v27, v33);

    *(v23 + 4) = v29;
    _os_log_impl(&dword_1D16EC000, v20, v21, "Failed to create INAppIntent from : %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1D3893640](v24, -1, -1);
    MEMORY[0x1D3893640](v23, -1, -1);

    v28(v31, a2);
  }

  else
  {

    v30 = *(v5 + 8);
    v30(v4, a2);
    v30(v10, a2);
  }

  return 0;
}

uint64_t sub_1D1DA953C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v78 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v78 - v5;
  v7 = sub_1D1E66A7C();
  v85 = *(v7 - 8);
  v86 = v7;
  v8 = MEMORY[0x1EEE9AC00](v7);
  v88 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v78 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v78 - v13;
  v84 = [v0 _indexingHash];
  v15 = [v0 appIntentIdentifier];
  if (v15)
  {
    v16 = v15;
    v83 = sub_1D1E6781C();
    v18 = v17;
  }

  else
  {
    v18 = 0x80000001D1EC9AC0;
    v83 = 0xD000000000000010;
  }

  v19 = [v0 serializedParameters];
  v20 = sub_1D1E675FC();

  *&v90[0] = 0xD000000000000014;
  *(&v90[0] + 1) = 0x80000001D1EC9AE0;
  sub_1D1E687DC();
  if (*(v20 + 16) && (v21 = sub_1D171D804(&v91), (v22 & 1) != 0))
  {
    sub_1D1741970(*(v20 + 56) + 32 * v21, v90);
    sub_1D1741BB4(&v91);
  }

  else
  {

    sub_1D1741BB4(&v91);
    memset(v90, 0, sizeof(v90));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  v23 = sub_1D1E6859C();
  sub_1D1741A30(v90, &qword_1EC649700, &qword_1D1E6E910);
  *&v90[0] = MEMORY[0x1E69E7CC0];
  v91 = v23;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F898, &qword_1D1EAFA60);
  if (swift_dynamicCast())
  {
    v24 = v89;
    if (*(v89 + 16) && (v25 = sub_1D171D2F0(0x696669746E656469, 0xEA00000000007265), (v26 & 1) != 0))
    {
      v27 = *(*(v24 + 56) + 8 * v25);
      swift_unknownObjectRetain();

      v89 = v27;
      if (swift_dynamicCast())
      {
        sub_1D1E66A0C();

        v29 = v85;
        v28 = v86;
        if ((*(v85 + 48))(v6, 1, v86) == 1)
        {
          sub_1D1741A30(v6, &qword_1EC642590, qword_1D1E71260);
        }

        else
        {
          v82 = v23;
          v71 = *(v29 + 32);
          v71(v14, v6, v28);
          (*(v29 + 16))(v12, v14, v28);
          v72 = sub_1D177D0AC(0, 1, 1, MEMORY[0x1E69E7CC0]);
          v74 = *(v72 + 2);
          v73 = *(v72 + 3);
          if (v74 >= v73 >> 1)
          {
            v72 = sub_1D177D0AC((v73 > 1), v74 + 1, 1, v72);
          }

          v75 = v85 + 8;
          v76 = v14;
          v77 = v86;
          (*(v85 + 8))(v76, v86);
          *(v72 + 2) = v74 + 1;
          v71(&v72[((*(v75 + 72) + 32) & ~*(v75 + 72)) + *(v75 + 64) * v74], v12, v77);
          *&v90[0] = v72;
        }
      }
    }

    else
    {
    }

    goto LABEL_52;
  }

  v91 = v23;
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F8A0, &qword_1D1EAFA68);
  if (!swift_dynamicCast())
  {
    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v43 = sub_1D1E6709C();
    __swift_project_value_buffer(v43, qword_1EE0813C8);

    v44 = sub_1D1E6707C();
    v45 = sub_1D1E6833C();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v91 = v47;
      *v46 = 136315394;
      v48 = sub_1D1B1312C(v83, v18, &v91);

      *(v46 + 4) = v48;
      *(v46 + 12) = 2048;
      *(v46 + 14) = v84;
      _os_log_impl(&dword_1D16EC000, v44, v45, "%s/%lld does not contain 'accessoriesAndScenes'", v46, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v47);
      MEMORY[0x1D3893640](v47, -1, -1);
      MEMORY[0x1D3893640](v46, -1, -1);
      swift_unknownObjectRelease();
    }

    else
    {
      swift_unknownObjectRelease();
    }

    return MEMORY[0x1E69E7CC0];
  }

  v81 = v18;
  v82 = v23;
  v30 = v89;
  v31 = *(v89 + 16);
  if (!v31)
  {
    v87 = MEMORY[0x1E69E7CC0];
    v33 = v86;
    goto LABEL_39;
  }

  v32 = 0;
  v80 = v31 - 1;
  v87 = MEMORY[0x1E69E7CC0];
  v33 = v86;
  do
  {
    v18 = v32;
    while (1)
    {
      if (v18 >= *(v30 + 16))
      {
        __break(1u);
        goto LABEL_62;
      }

      v34 = *(v30 + 32 + 8 * v18);
      if (*(v34 + 16))
      {
        break;
      }

LABEL_19:
      if (v31 == ++v18)
      {
        goto LABEL_39;
      }
    }

    v35 = sub_1D171D2F0(0x696669746E656469, 0xEA00000000007265);
    if ((v36 & 1) == 0)
    {

      goto LABEL_19;
    }

    v37 = *(*(v34 + 56) + 8 * v35);
    swift_unknownObjectRetain();

    v89 = v37;
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_19;
    }

    v38 = v92;
    if (!v92)
    {
      goto LABEL_19;
    }

    v79 = v91;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v87 = sub_1D177CF00(0, *(v87 + 2) + 1, 1, v87);
    }

    v40 = *(v87 + 2);
    v39 = *(v87 + 3);
    if (v40 >= v39 >> 1)
    {
      v87 = sub_1D177CF00((v39 > 1), v40 + 1, 1, v87);
    }

    v32 = v18 + 1;
    v41 = v87;
    *(v87 + 2) = v40 + 1;
    v42 = &v41[16 * v40];
    *(v42 + 4) = v79;
    *(v42 + 5) = v38;
    v33 = v86;
  }

  while (v80 != v18);
LABEL_39:

  v50 = v87;
  v51 = *(v87 + 2);
  if (!v51)
  {
    v55 = MEMORY[0x1E69E7CC0];
LABEL_51:

    sub_1D17A3840(v55);
    v18 = v81;
LABEL_52:
    if (qword_1EE07A098 != -1)
    {
      goto LABEL_63;
    }

    goto LABEL_53;
  }

  v52 = 0;
  v53 = (v85 + 48);
  v54 = (v85 + 32);
  v18 = (v87 + 40);
  v55 = MEMORY[0x1E69E7CC0];
  while (v52 < *(v50 + 2))
  {

    sub_1D1E66A0C();

    if ((*v53)(v4, 1, v33) == 1)
    {
      sub_1D1741A30(v4, &qword_1EC642590, qword_1D1E71260);
    }

    else
    {
      v56 = *v54;
      (*v54)(v88, v4, v33);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_1D177D0AC(0, v55[2] + 1, 1, v55);
      }

      v58 = v55[2];
      v57 = v55[3];
      if (v58 >= v57 >> 1)
      {
        v55 = sub_1D177D0AC((v57 > 1), v58 + 1, 1, v55);
      }

      v55[2] = v58 + 1;
      v59 = v55 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v58;
      v33 = v86;
      v56(v59, v88, v86);
    }

    ++v52;
    v18 += 16;
    v50 = v87;
    if (v51 == v52)
    {
      goto LABEL_51;
    }
  }

LABEL_62:
  __break(1u);
LABEL_63:
  swift_once();
LABEL_53:
  v60 = sub_1D1E6709C();
  __swift_project_value_buffer(v60, qword_1EE0813C8);
  v49 = *&v90[0];
  swift_bridgeObjectRetain_n();

  v61 = sub_1D1E6707C();
  v62 = sub_1D1E6835C();

  if (os_log_type_enabled(v61, v62))
  {
    v63 = v18;
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v91 = v65;
    *v64 = 136315650;
    v66 = sub_1D1B1312C(v83, v63, &v91);

    *(v64 + 4) = v66;
    *(v64 + 12) = 2048;
    *(v64 + 14) = v84;
    *(v64 + 22) = 2080;
    v89 = v49;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644D50, &qword_1D1E77910);
    v67 = sub_1D1E678BC();
    v69 = sub_1D1B1312C(v67, v68, &v91);

    *(v64 + 24) = v69;

    _os_log_impl(&dword_1D16EC000, v61, v62, "%s/%lld contains 'accessoriesAndScenes': %s", v64, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v65, -1, -1);
    MEMORY[0x1D3893640](v64, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  return v49;
}

uint64_t static IntentItemCollection.createWidgetCollection<>(of:matching:_:)@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, char *a4@<X4>, char *a5@<X5>, uint64_t a6@<X6>, char *a7@<X7>, uint64_t a8@<X8>, char *a9)
{
  v138 = a5;
  v137 = a4;
  v152 = a2;
  v142 = a8;
  v141 = a9;
  v13 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v125 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = sub_1D1E6658C();
  v132 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v133 = (&v125 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = sub_1D1E677DC();
  MEMORY[0x1EEE9AC00](v17 - 8);
  v131 = &v125 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D1E6659C();
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v130 = &v125 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v140 = sub_1D1E65E7C();
  MEMORY[0x1EEE9AC00](v140);
  v129 = &v125 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64F8B8, &unk_1D1EAFA70);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v125 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643718, &qword_1D1E71E70);
  MEMORY[0x1EEE9AC00](v26 - 8);
  v151 = &v125 - v27;
  v153 = type metadata accessor for StaticActionSet(0);
  v28 = *(v153 - 8);
  v29 = MEMORY[0x1EEE9AC00](v153);
  v150 = &v125 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = MEMORY[0x1EEE9AC00](v29);
  v149 = &v125 - v32;
  v33 = a1(v31);
  v35 = *(v33 + 16);
  if (v35)
  {
    v125 = v15;
    v126 = v25;
    v127 = v20;
    v128 = v19;
    v36 = MEMORY[0x1E69E7CC0];
    v167 = MEMORY[0x1E69E7CC0];
    v37 = v33;
    v139 = a6;
    v136 = a7;
    v38 = _s11RoomSectionVMa(255, a6, a7, v34);
    v39 = MEMORY[0x1E69E6158];
    swift_getTupleTypeMetadata2();
    v40 = sub_1D1E67C7C();
    v41 = sub_1D1AC25F8(v40, v39, v38, MEMORY[0x1E69E6168]);

    v135 = v37;
    v42 = v37 + 32;
    v166 = v41;
    v43 = HIBYTE(a3) & 0xF;
    v44 = v152;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v43 = v152 & 0xFFFFFFFFFFFFLL;
    }

    v148 = (v28 + 56);
    if (a3)
    {
      v45 = v43 == 0;
    }

    else
    {
      v45 = 1;
    }

    v46 = v45;
    LODWORD(v154) = v46;
    v143 = xmmword_1D1E739C0;
    v47 = a3;
    v145 = a3;
    v48 = v153;
    v144 = v38;
    do
    {
      sub_1D17419CC(v42, &v163);
      v50 = v164;
      v51 = v165;
      __swift_project_boxed_opaque_existential_1(&v163, v164);
      v52 = (*(v51 + 144))(v50, v51);
      v54 = 95;
      if (v53)
      {
        v54 = v52;
      }

      v155 = v54;
      if (v53)
      {
        v55 = v53;
      }

      else
      {
        v55 = 0xE100000000000000;
      }

      if (v154 & 1) != 0 || (v57 = v164, v56 = v165, __swift_project_boxed_opaque_existential_1(&v163, v164), *&v159 = (*(v56 + 56))(v57, v56), *(&v159 + 1) = v58, v156 = v44, v157 = v47, sub_1D17D8EF0(), v59 = sub_1D1E6861C(), v48 = v153, , (v59) || (*&v159 = v155, *(&v159 + 1) = v55, v156 = v44, v157 = v47, (sub_1D1E6861C()))
      {
        sub_1D17419CC(&v163, &v159);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643298, &qword_1D1E716F0);
        v60 = v151;
        if (swift_dynamicCast())
        {

          (*v148)(v60, 0, 1, v48);
          v61 = v60;
          v62 = v149;
          sub_1D1DACD64(v61, v149);
          sub_1D1DACDC8(v62, v150);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v36 = sub_1D177F2B8(0, v36[2] + 1, 1, v36);
          }

          v64 = v36[2];
          v63 = v36[3];
          if (v64 >= v63 >> 1)
          {
            v36 = sub_1D177F2B8((v63 > 1), v64 + 1, 1, v36);
          }

          sub_1D1DACE2C(v149);
          v161 = v48;
          v162 = sub_1D1DACE88();
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v159);
          v66 = v150;
          sub_1D1DACDC8(v150, boxed_opaque_existential_1);
          v36[2] = v64 + 1;
          sub_1D16EEE20(&v159, &v36[5 * v64 + 4]);
          sub_1D1DACE2C(v66);
          v167 = v36;
          v44 = v152;
        }

        else
        {
          (*v148)(v60, 1, 1, v48);
          sub_1D1DACC90(v60);
          v67 = v155;
          v156 = v155;
          v157 = v55;

          sub_1D1E676AC();

          v68 = v38;
          v69 = *(&v159 + 1);
          if (*(&v159 + 1))
          {
            v146 = v159;
            v70 = v160;
            sub_1D17419CC(&v163, &v159);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v158 = v70;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v70 = sub_1D177F2B8(0, v70[2] + 1, 1, v70);
              v158 = v70;
            }

            v73 = v70[2];
            v72 = v70[3];
            v147 = v36;
            if (v73 >= v72 >> 1)
            {
              v70 = sub_1D177F2B8((v72 > 1), v73 + 1, 1, v70);
              v158 = v70;
            }

            v74 = v161;
            v75 = v162;
            v76 = __swift_mutable_project_boxed_opaque_existential_1(&v159, v161);
            MEMORY[0x1EEE9AC00](v76);
            v78 = &v125 - ((v77 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v79 + 16))(v78);
            sub_1D1D20B74(v73, v78, &v158, v74, v75);
            __swift_destroy_boxed_opaque_existential_1(&v159);
            *&v159 = v146;
            *(&v159 + 1) = v69;
            v160 = v70;
            v156 = v155;
            v157 = v55;
            v38 = v144;
            sub_1D1E6769C();
            sub_1D1E676BC();
            v36 = v147;
            v47 = v145;
            v44 = v152;
          }

          else
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643290, &qword_1D1E716E8);
            v49 = swift_allocObject();
            *(v49 + 16) = v143;
            sub_1D17419CC(&v163, v49 + 32);
            *&v159 = v67;
            *(&v159 + 1) = v55;
            v160 = v49;
            v156 = v67;
            v157 = v55;
            sub_1D1E6769C();

            v44 = v152;
            sub_1D1E676BC();
            v38 = v68;
          }

          v48 = v153;
        }
      }

      else
      {
      }

      __swift_destroy_boxed_opaque_existential_1(&v163);
      v42 += 40;
      --v35;
    }

    while (v35);

    v80 = v166;
    v163 = v166;
    sub_1D1E6763C();

    swift_getWitnessTable();
    v81 = sub_1D1E67ABC();

    v163 = v81;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
    sub_1D17D8EA8(&qword_1EC64F8C0, &qword_1EC643CB0, &qword_1D1E73640, MEMORY[0x1E69E6340]);
    v82 = sub_1D1E682AC();
    if (v82)
    {
      v83 = v136;
      if (!v36[2])
      {

        sub_1D1E65ECC();
LABEL_62:
      }
    }

    else
    {
      v83 = v136;
      if (!v36[2])
      {
        if (*(v81 + 16) != 1)
        {
          goto LABEL_47;
        }

        goto LABEL_57;
      }
    }

    if (*(v81 + 16))
    {
LABEL_47:
      v154 = &v125;
      v163 = v81;
      MEMORY[0x1EEE9AC00](v82);
      v89 = v83;
      v90 = v139;
      *(&v125 - 6) = v139;
      *(&v125 - 5) = v89;
      v91 = v141;
      *(&v125 - 4) = v141;
      *(&v125 - 3) = &v166;
      v147 = v36;
      v92 = v137;
      v93 = v138;
      *(&v125 - 2) = v137;
      *(&v125 - 1) = v93;
      sub_1D17D8EA8(&qword_1EC64F8C8, &qword_1EC643CB0, &qword_1D1E73640, MEMORY[0x1E69E6328]);
      v155 = sub_1D1E67A4C();

      v94 = sub_1D1E6758C();
      v154 = &v125;
      v163 = v94;
      *&v159 = v147;
      MEMORY[0x1EEE9AC00](v94);
      *(&v125 - 6) = v90;
      *(&v125 - 5) = v89;
      *(&v125 - 4) = v91;
      *(&v125 - 3) = v92;
      *(&v125 - 2) = v93;

      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC08, &qword_1D1EA7F78);
      v96 = sub_1D1E65E5C();
      v97 = sub_1D17D8EA8(qword_1EC64F8D0, &qword_1EC64DC08, &qword_1D1EA7F78, MEMORY[0x1E69E6340]);
      v99 = sub_1D18CE91C(sub_1D1DACD1C, (&v125 - 8), v95, v96, MEMORY[0x1E69E73E0], v97, MEMORY[0x1E69E7410], v98);

      *&v159 = v99;
      sub_1D1E67D1C();
      swift_getWitnessTable();
      if (sub_1D1E682AC())
      {
      }

      else
      {
        sub_1D1E6776C();
        v103 = _s25_doNotTouchThisDummyClassCMa();
        v104 = v133;
        *v133 = v103;
        (*(v132 + 104))(v104, *MEMORY[0x1E6968E00], v134);
        sub_1D1E66ACC();
        v105 = v130;
        sub_1D1E665BC();
        MEMORY[0x1D388F4C0](v105, v99, v139, v89);
        sub_1D1E67D1C();
        sub_1D1E67CDC();
      }

      v100 = v128;
      v101 = v127;
      v102 = v126;
      *&v159 = v155;
      sub_1D1E67D1C();
      swift_getWitnessTable();
      sub_1D1E67CCC();
      if (qword_1EE07A098 != -1)
      {
        swift_once();
      }

      v106 = sub_1D1E6709C();
      __swift_project_value_buffer(v106, qword_1EE0813C8);

      v107 = sub_1D1E6707C();
      v108 = sub_1D1E6835C();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        *v109 = 134217984;
        *(v109 + 4) = sub_1D1E67CBC();

        _os_log_impl(&dword_1D16EC000, v107, v108, "createWidgetCollection Multiple sections generated: %ld", v109, 0xCu);
        MEMORY[0x1D3893640](v109, -1, -1);
      }

      else
      {
      }

      (*(v101 + 56))(v102, 1, 1, v100);
      sub_1D1E65EBC();
      goto LABEL_62;
    }

LABEL_57:

    if (qword_1EE07A098 != -1)
    {
      swift_once();
    }

    v110 = sub_1D1E6709C();
    __swift_project_value_buffer(v110, qword_1EE0813C8);
    v111 = sub_1D1E6707C();
    v112 = sub_1D1E6835C();
    v113 = os_log_type_enabled(v111, v112);
    v114 = v141;
    if (v113)
    {
      v115 = swift_slowAlloc();
      *v115 = 0;
      _os_log_impl(&dword_1D16EC000, v111, v112, "createWidgetCollection Only 1 room of accessories built. Returning as flat list.", v115, 2u);
      MEMORY[0x1D3893640](v115, -1, -1);
    }

    v163 = v80;
    MEMORY[0x1EEE9AC00](v116);
    v117 = v139;
    *(&v125 - 4) = v139;
    *(&v125 - 3) = v83;
    *(&v125 - 2) = v114;
    sub_1D1E6766C();

    v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64DC08, &qword_1D1EA7F78);
    swift_getWitnessTable();
    sub_1D17D8EA8(&qword_1EC64DC10, &qword_1EC64DC08, &qword_1D1EA7F78, MEMORY[0x1E69E6328]);
    v155 = v118;
    v119 = sub_1D1E67ACC();

    sub_1D17A53D0(v119);
    v163 = v167;

    v120 = sub_1D1DABC54(&v163);
    MEMORY[0x1EEE9AC00](v120);
    v121 = v136;
    *(&v125 - 6) = v117;
    *(&v125 - 5) = v121;
    v122 = v137;
    *(&v125 - 4) = v141;
    *(&v125 - 3) = v122;
    *(&v125 - 2) = v138;
    v123 = sub_1D17D8EA8(qword_1EC64F8D0, &qword_1EC64DC08, &qword_1D1EA7F78, MEMORY[0x1E69E6340]);
    sub_1D18CE91C(sub_1D1DACF4C, (&v125 - 8), v155, v117, MEMORY[0x1E69E73E0], v123, MEMORY[0x1E69E7410], v124);

    (*(v127 + 56))(v126, 1, 1, v128);
    sub_1D1E65EAC();
    goto LABEL_62;
  }

  if (qword_1EE07A098 != -1)
  {
    swift_once();
  }

  v84 = sub_1D1E6709C();
  __swift_project_value_buffer(v84, qword_1EE0813C8);
  v85 = sub_1D1E6707C();
  v86 = sub_1D1E6833C();
  if (os_log_type_enabled(v85, v86))
  {
    v87 = swift_slowAlloc();
    *v87 = 0;
    _os_log_impl(&dword_1D16EC000, v85, v86, "createWidgetCollection No accessories found, returning empty collection", v87, 2u);
    MEMORY[0x1D3893640](v87, -1, -1);
  }

  return sub_1D1E65ECC();
}