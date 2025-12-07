uint64_t sub_1D2ED034C()
{
  v21 = v0;
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = v0[16];
  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EC7466D0);
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v20 = v19;
    *v6 = 136315138;
    swift_getErrorValue();
    v7 = v0[9];
    v8 = v0[10];
    v9 = sub_1D2EE4E58();
    v10 = *(v9 - 8);
    v11 = swift_task_alloc();
    v12 = *(v8 - 8);
    (*(v12 + 16))(v11, v7, v8);
    (*(v12 + 56))(v11, 0, 1, v8);
    v13 = sub_1D2EE2754(v11, v8);
    v15 = v14;
    (*(v10 + 8))(v11, v9);

    v16 = sub_1D2E685B0(v13, v15, &v20);

    *(v6 + 4) = v16;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Failed to generate actions with error %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v19);
    MEMORY[0x1D38AF660](v19, -1, -1);
    MEMORY[0x1D38AF660](v6, -1, -1);
  }

  swift_willThrow();
  v17 = v0[1];

  return v17();
}

uint64_t sub_1D2ED0600@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(a1 + 8);
  v6 = PredictedRawAction.appBundleIdentifier.getter();
  v8 = v7;
  v9 = *(type metadata accessor for NewSmartAction(0) + 32);
  v10 = sub_1D2EE3EB8();
  (*(*(v10 - 8) + 16))(a3 + v9, a2, v10);
  *a3 = 0;
  *(a3 + 8) = v6;
  *(a3 + 16) = v8;
  *(a3 + 24) = v5;
}

NSObject *sub_1D2ED06C4()
{
  v1 = v0;
  v2 = sub_1D2EE3EB8();
  v3 = *(v2 - 8);
  v50 = v2;
  v51 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739740, &qword_1D2EF5B98);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v42 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739748, &qword_1D2EF5BA0);
  v45 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v46 = v42 - v10;
  if (qword_1EC737C68 != -1)
  {
LABEL_28:
    swift_once();
  }

  v11 = sub_1D2EE4618();
  __swift_project_value_buffer(v11, qword_1EC7466D0);
  v12 = sub_1D2EE45F8();
  v13 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D2E46000, v12, v13, "Loading tracked voicemails", v14, 2u);
    MEMORY[0x1D38AF660](v14, -1, -1);
  }

  v15 = sub_1D2EBE7FC();
  if (!v1)
  {
    if (v15)
    {
      v17 = v15;
      v44 = 0;
      sub_1D2EE47F8();
      swift_allocObject();

      v18 = sub_1D2EE4808();
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739750, &qword_1D2EF5BA8);
      (*(*(v19 - 8) + 56))(v8, 1, 1, v19);
      type metadata accessor for StoredReference(0);
      v20 = sub_1D2ED4E60(&qword_1EC7394A8, type metadata accessor for StoredReference, &unk_1D2EF4E00);
      v12 = MEMORY[0x1E69E7CC0];
      v21 = v46;
      v22 = v20;
      sub_1D2EE4838();
      v23 = v44;
      v24 = sub_1D2EE47E8();
      v44 = v23;
      if (v23)
      {
        (*(v45 + 8))(v21, v9);
      }

      else
      {
        v25 = v24;
        v52 = v22;
        v42[1] = v18;
        v42[2] = v17;
        v43 = v9;

        v26 = sub_1D2EE45F8();
        LOBYTE(v22) = sub_1D2EE4DD8();
        v27 = v25 >> 62;
        if (!os_log_type_enabled(v26, v22))
        {

          goto LABEL_15;
        }

        v28 = swift_slowAlloc();
        *v28 = 134349056;
        if (v27)
        {
          goto LABEL_47;
        }

        for (i = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D2EE50B8())
        {
          *(v28 + 4) = i;

          _os_log_impl(&dword_1D2E46000, v26, v22, "Loading %{public}ld tracked voicemails", v28, 0xCu);
          MEMORY[0x1D38AF660](v28, -1, -1);

LABEL_15:
          v54 = v12;
          if (v27)
          {
            v9 = sub_1D2EE50B8();
            v49 = v5;
            if (v9)
            {
LABEL_17:
              v8 = 0;
              v48 = v25 & 0xC000000000000001;
              v30 = v25;
              v5 = (v25 & 0xFFFFFFFFFFFFFF8);
              v1 = &unk_1D2EF5BB0;
              while (1)
              {
                if (v48)
                {
                  v31 = MEMORY[0x1D38AEA70](v8, v30);
                  v32 = (v8 + 1);
                  if (__OFADD__(v8, 1))
                  {
LABEL_25:
                    __break(1u);
LABEL_26:
                    v27 = v54;
                    v25 = v30;
                    v12 = MEMORY[0x1E69E7CC0];
                    goto LABEL_31;
                  }
                }

                else
                {
                  if (v8 >= *(v5 + 2))
                  {
                    __break(1u);
                    goto LABEL_28;
                  }

                  v31 = *(v30 + 8 * v8 + 32);

                  v32 = (v8 + 1);
                  if (__OFADD__(v8, 1))
                  {
                    goto LABEL_25;
                  }
                }

                v53 = v31;
                swift_getKeyPath();
                sub_1D2ED4E60(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);
                sub_1D2EE3F98();

                swift_getKeyPath();
                sub_1D2EC2C0C();
                sub_1D2EE4898();

                sub_1D2EE5028();
                sub_1D2EE5058();
                sub_1D2EE5068();
                sub_1D2EE5038();
                ++v8;
                if (v32 == v9)
                {
                  goto LABEL_26;
                }
              }
            }
          }

          else
          {
            v9 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
            v49 = v5;
            if (v9)
            {
              goto LABEL_17;
            }
          }

          v27 = v12;
LABEL_31:

          v33 = v43;
          v22 = v46;
          if ((v27 & 0x8000000000000000) != 0 || (v27 & 0x4000000000000000) != 0)
          {
            v28 = sub_1D2EE50B8();
            if (!v28)
            {
LABEL_44:

              v35 = MEMORY[0x1E69E7CC0];
              goto LABEL_45;
            }
          }

          else
          {
            v28 = *(v27 + 16);
            if (!v28)
            {
              goto LABEL_44;
            }
          }

          v54 = v12;
          v26 = &v54;
          sub_1D2EDCA38(0, v28 & ~(v28 >> 63), 0);
          if ((v28 & 0x8000000000000000) == 0)
          {
            break;
          }

          __break(1u);
LABEL_47:
          ;
        }

        v34 = 0;
        v35 = v54;
        v36 = v27;
        v47 = v51 + 32;
        v48 = v27 & 0xC000000000000001;
        do
        {
          v37 = v28;
          if (v48)
          {
            v38 = MEMORY[0x1D38AEA70](v34, v36);
          }

          else
          {
            v38 = *(v36 + 8 * v34 + 32);
          }

          v53 = v38;
          swift_getKeyPath();
          sub_1D2ED4E60(&qword_1EC7394E0, type metadata accessor for StoredReference, &unk_1D2EF4D44);

          sub_1D2EE3F98();

          swift_getKeyPath();
          sub_1D2ED4E60(&qword_1EC737CC8, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
          v39 = v49;
          sub_1D2EE4898();

          v54 = v35;
          v41 = *(v35 + 16);
          v40 = *(v35 + 24);
          if (v41 >= v40 >> 1)
          {
            sub_1D2EDCA38((v40 > 1), v41 + 1, 1);
            v35 = v54;
          }

          ++v34;
          *(v35 + 16) = v41 + 1;
          (*(v51 + 32))(v35 + ((*(v51 + 80) + 32) & ~*(v51 + 80)) + *(v51 + 72) * v41, v39, v50);
          v28 = v37;
          v36 = v27;
        }

        while (v37 != v34);

        v33 = v43;
        v22 = v46;
LABEL_45:
        v12 = sub_1D2ED4CC4(v35);

        (*(v45 + 8))(v22, v33);
      }
    }

    else
    {
      return 0;
    }
  }

  return v12;
}

uint64_t sub_1D2ED0F20()
{
  v1[3] = v0;
  v2 = sub_1D2EE3EB8();
  v1[4] = v2;
  v1[5] = *(v2 - 8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();
  v1[8] = sub_1D2EE44F8();
  v1[9] = swift_task_alloc();
  v3 = sub_1D2EE4558();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();
  v4 = sub_1D2EE4578();
  v1[13] = v4;
  v1[14] = *(v4 - 8);
  v1[15] = swift_task_alloc();
  v5 = sub_1D2EE4588();
  v1[16] = v5;
  v1[17] = *(v5 - 8);
  v1[18] = swift_task_alloc();
  v1[19] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ED113C, 0, 0);
}

uint64_t sub_1D2ED113C()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[20] = __swift_project_value_buffer(v1, qword_1EC7466D0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Loading FTMS voicemails", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = v0[18];
  v6 = v0[19];
  v8 = v0[16];
  v7 = v0[17];
  v9 = v0[11];
  v10 = v0[12];
  v11 = v0[10];
  v17 = v0[3];

  v12 = swift_allocObject();
  *(v12 + 16) = &unk_1F4E914F0;
  *v6 = v12;
  (*(v7 + 104))(v6, *MEMORY[0x1E699BFF0], v8);
  (*(v7 + 16))(v5, v6, v8);
  (*(v9 + 104))(v10, *MEMORY[0x1E699BFC8], v11);
  v0[2] = MEMORY[0x1E69E7CC0];
  sub_1D2ED4E60(&qword_1EC739720, MEMORY[0x1E699BF08], MEMORY[0x1E699BF20]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739728, &qword_1D2EF5B40);
  sub_1D2ED4A98();
  sub_1D2EE4EB8();
  sub_1D2EE4568();
  v13 = type metadata accessor for SmartActionsServer(0);
  __swift_project_boxed_opaque_existential_1((v17 + *(v13 + 20)), *(v17 + *(v13 + 20) + 24));
  v14 = swift_task_alloc();
  v0[21] = v14;
  *v14 = v0;
  v14[1] = sub_1D2ED1424;
  v15 = v0[15];

  return MEMORY[0x1EEE03C00](v15);
}

uint64_t sub_1D2ED1424(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 176) = a1;
  *(v3 + 184) = v1;

  if (v1)
  {
    v4 = sub_1D2ED18F0;
  }

  else
  {
    v4 = sub_1D2ED1538;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1D2ED1538()
{
  v31 = v1;

  v2 = sub_1D2EE45F8();
  LOBYTE(v3) = sub_1D2EE4DD8();
  v4 = os_log_type_enabled(v2, v3);
  v5 = v1[22];
  if (!v4)
  {

    goto LABEL_6;
  }

  v0 = swift_slowAlloc();
  *v0 = 134349056;
  if (v5 >> 62)
  {
    goto LABEL_26;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D2EE50B8())
  {
    *(v0 + 4) = i;

    _os_log_impl(&dword_1D2E46000, v2, v3, "Loading %{public}ld FTMS voicemails", v0, 0xCu);
    MEMORY[0x1D38AF660](v0, -1, -1);
LABEL_6:

    if (v1[22] >> 62)
    {
      v3 = sub_1D2EE50B8();
      if (!v3)
      {
LABEL_21:

        v7 = MEMORY[0x1E69E7CC0];
        goto LABEL_22;
      }
    }

    else
    {
      v3 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v3)
      {
        goto LABEL_21;
      }
    }

    v30 = MEMORY[0x1E69E7CC0];
    v2 = &v30;
    sub_1D2EDCA38(0, v3 & ~(v3 >> 63), 0);
    if ((v3 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_26:
    ;
  }

  v7 = v30;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v8 = 0;
    v9 = v1[5];
    do
    {
      MEMORY[0x1D38AEA70](v8, v1[22]);
      sub_1D2EE44D8();
      swift_unknownObjectRelease();
      v30 = v7;
      v11 = *(v7 + 16);
      v10 = *(v7 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_1D2EDCA38((v10 > 1), v11 + 1, 1);
        v7 = v30;
      }

      v12 = v1[7];
      v13 = v1[4];
      ++v8;
      *(v7 + 16) = v11 + 1;
      (*(v9 + 32))(v7 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v11, v12, v13);
    }

    while (v3 != v8);
  }

  else
  {
    v14 = v1[5];
    v15 = (v1[22] + 32);
    do
    {
      v16 = *v15;
      sub_1D2EE44D8();

      v30 = v7;
      v18 = *(v7 + 16);
      v17 = *(v7 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_1D2EDCA38((v17 > 1), v18 + 1, 1);
        v7 = v30;
      }

      v19 = v1[6];
      v20 = v1[4];
      *(v7 + 16) = v18 + 1;
      (*(v14 + 32))(v7 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v18, v19, v20);
      ++v15;
      --v3;
    }

    while (v3);
  }

LABEL_22:
  v21 = v1[19];
  v22 = v1[16];
  v23 = v1[17];
  v25 = v1[14];
  v24 = v1[15];
  v26 = v1[13];
  v29 = sub_1D2ED4CC4(v7);

  (*(v25 + 8))(v24, v26);
  (*(v23 + 8))(v21, v22);

  v27 = v1[1];

  return v27(v29);
}

uint64_t sub_1D2ED18F0()
{
  v1 = v0[19];
  v2 = v0[16];
  v3 = v0[17];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1D2ED19E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  v2[4] = swift_task_alloc();
  v3 = type metadata accessor for PersistenceConfiguration(0);
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ED1AE0, 0, 0);
}

uint64_t sub_1D2ED1AE0()
{
  v12 = v0;
  if (*(v0[2] + 16))
  {
    v1 = v0[5];
    v2 = v0[6];
    v3 = v0[4];
    sub_1D2EBF3B8(v0[3], v3);
    if ((*(v2 + 48))(v3, 1, v1) == 1)
    {
      sub_1D2E5D0B8(v0[4], &qword_1EC739490, qword_1D2EF4B90);
    }

    else
    {
      v4 = v0[7];
      v5 = v0[3];
      sub_1D2ED4B64(v0[4], v4, type metadata accessor for PersistenceConfiguration);
      v6 = *(v5 + *(type metadata accessor for ContainerProvider(0) + 20));
      v7 = swift_task_alloc();
      *(v7 + 16) = v5;
      *(v7 + 24) = v4;
      os_unfair_lock_lock((v6 + 24));
      sub_1D2ED4EA8((v6 + 16), &v11);
      os_unfair_lock_unlock((v6 + 24));
      v8 = v0[7];

      sub_1D2ED4A38(v8, type metadata accessor for PersistenceConfiguration);
    }
  }

  v9 = v0[1];

  return v9();
}

uint64_t sub_1D2ED1C9C(uint64_t a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for PersistenceConfiguration(0);
  v8 = *(v7 - 8);
  result = MEMORY[0x1EEE9AC00](v7);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    sub_1D2EBF3B8(v1, v6);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_1D2E5D0B8(v6, &qword_1EC739490, qword_1D2EF4B90);
    }

    else
    {
      sub_1D2ED4B64(v6, v11, type metadata accessor for PersistenceConfiguration);
      v12 = type metadata accessor for ContainerProvider(0);
      v13 = *(v1 + *(v12 + 20));
      MEMORY[0x1EEE9AC00](v12);
      *(&v14 - 2) = v1;
      *(&v14 - 1) = v11;
      os_unfair_lock_lock((v13 + 24));
      sub_1D2ED4EA8((v13 + 16), &v15);
      os_unfair_lock_unlock((v13 + 24));
      if (!v2)
      {
      }

      return sub_1D2ED4A38(v11, type metadata accessor for PersistenceConfiguration);
    }
  }

  return result;
}

uint64_t sub_1D2ED1EA4(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = v18 - v4;
  v6 = sub_1D2EE3EB8();
  v7 = *(v6 - 8);
  result = MEMORY[0x1EEE9AC00](v6);
  v10 = v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(*v1 + 16))
  {
    v11 = 1 << *(a1 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(a1 + 56);
    v14 = (v11 + 63) >> 6;
    v18[0] = v7 + 8;
    v18[1] = v7 + 16;

    for (i = 0; v13; result = sub_1D2E5D0B8(v5, &qword_1EC738A70, &qword_1D2EF20F0))
    {
      v16 = i;
LABEL_10:
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      (*(v7 + 16))(v10, *(a1 + 48) + *(v7 + 72) * (v17 | (v16 << 6)), v6);
      sub_1D2ED2B24(v10, v5);
      (*(v7 + 8))(v10, v6);
    }

    while (1)
    {
      v16 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v16 >= v14)
      {
      }

      v13 = *(a1 + 56 + 8 * v16);
      ++i;
      if (v13)
      {
        i = v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D2ED20C0(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v65 - v9);
  v11 = sub_1D2EE3EB8();
  v12 = MEMORY[0x1EEE9AC00](v11);
  v85 = (&v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (&v65 - v15);
  MEMORY[0x1EEE9AC00](v14);
  v80 = (&v65 - v18);
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v66 = v10;
  v68 = v8;
  v20 = a1 + 56;
  v19 = *(a1 + 56);
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

  v87 = (v22 & v19);
  v72 = (63 - v21) >> 6;
  v86 = v17 + 16;
  v77 = (v17 + 48);
  v78 = (v17 + 56);
  v76 = (v17 + 32);
  v82 = (a2 + 56);
  v67 = v17;
  v88 = (v17 + 8);

  v24 = 0;
  v69 = a1;
  for (i = a1 + 56; ; v20 = i)
  {
    v25 = v87;
    v26 = v24;
    if (v87)
    {
LABEL_14:
      v2 = (v25 - 1) & v25;
      v30 = v66;
      (*(v67 + 16))(v66, *(a1 + 48) + *(v67 + 72) * (__clz(__rbit64(v25)) | (v26 << 6)), v11);
      v31 = 0;
      v28 = v26;
    }

    else
    {
      v27 = v72 <= (v24 + 1) ? v24 + 1 : v72;
      v28 = v27 - 1;
      v29 = v24;
      while (1)
      {
        v26 = v29 + 1;
        if (__OFADD__(v29, 1))
        {
          goto LABEL_58;
        }

        if (v26 >= v72)
        {
          break;
        }

        v25 = *(v20 + 8 * v26);
        ++v29;
        if (v25)
        {
          goto LABEL_14;
        }
      }

      v2 = 0;
      v31 = 1;
      v30 = v66;
    }

    v74 = *v78;
    v74(v30, v31, 1, v11);
    v89 = a1;
    v90 = v20;
    v91 = v79;
    v92 = v28;
    v93 = v2;
    v73 = *v77;
    if (v73(v30, 1, v11) == 1)
    {
      sub_1D2E5D0B8(v30, &qword_1EC738A70, &qword_1D2EF20F0);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v32 = sub_1D2EE49E8();
    v33 = -1 << *(a2 + 32);
    v24 = v32 & ~v33;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) != 0)
    {
      break;
    }

    (*v88)(v80, v11);
LABEL_22:
    v24 = v28;
    v87 = v2;
  }

  v65 = v88 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v81 = ~v33;
  v34 = *(v67 + 72);
  v83 = *(v67 + 16);
  v84 = v34;
  while (1)
  {
    v83(v16, *(a2 + 48) + v84 * v24, v11);
    v35 = sub_1D2ED4E60(&qword_1EC737EE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v36 = sub_1D2EE4A08();
    v87 = *v88;
    v87(v16, v11);
    if (v36)
    {
      break;
    }

    v24 = (v24 + 1) & v81;
    v26 = v24 >> 6;
    v20 = 1 << v24;
    if (((1 << v24) & v82[v24 >> 6]) == 0)
    {
      a1 = v69;
      v87(v80, v11);
      goto LABEL_22;
    }
  }

  v81 = v35;
  v37 = (v87)(v80, v11);
  v38 = *(a2 + 32);
  v65 = ((1 << v38) + 63) >> 6;
  v23 = 8 * v65;
  a1 = v69;
  if ((v38 & 0x3Fu) > 0xD)
  {
    goto LABEL_59;
  }

  while (2)
  {
    v66 = &v65;
    MEMORY[0x1EEE9AC00](v37);
    v40 = &v65 - ((v39 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v40, v82, v39);
    v41 = *&v40[8 * v26] & ~v20;
    v42 = *(a2 + 16);
    v80 = v40;
    *&v40[8 * v26] = v41;
    v43 = v42 - 1;
    v24 = v68;
    v44 = i;
    v45 = v72;
LABEL_26:
    v67 = v43;
    while (v2)
    {
      v46 = v28;
LABEL_38:
      v49 = __clz(__rbit64(v2));
      v2 &= v2 - 1;
      v83(v24, *(a1 + 48) + (v49 | (v46 << 6)) * v84, v11);
      v50 = 0;
LABEL_39:
      v74(v24, v50, 1, v11);
      v89 = a1;
      v90 = v44;
      v91 = v79;
      v92 = v28;
      v93 = v2;
      if (v73(v24, 1, v11) == 1)
      {
        sub_1D2E5D0B8(v24, &qword_1EC738A70, &qword_1D2EF20F0);
        a2 = sub_1D2ED35FC(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_1D2EE49E8();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_1D2EE4A08();
        v87(v16, v11);
        if ((v55 & 1) == 0)
        {
          v56 = ~v53;
          do
          {
            v54 = (v54 + 1) & v56;
            v26 = v54 >> 6;
            v20 = 1 << v54;
            if (((1 << v54) & v82[v54 >> 6]) == 0)
            {
              goto LABEL_27;
            }

            v83(v16, *(v52 + 48) + v54 * v84, v11);
            v57 = sub_1D2EE4A08();
            v87(v16, v11);
          }

          while ((v57 & 1) == 0);
        }

        v87(v85, v11);
        v58 = v80[v26];
        v80[v26] = v58 & ~v20;
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
        if ((v58 & v20) != 0)
        {
          v43 = v67 - 1;
          if (__OFSUB__(v67, 1))
          {
            __break(1u);
          }

          if (v67 == 1)
          {

            a2 = MEMORY[0x1E69E7CD0];
            goto LABEL_52;
          }

          goto LABEL_26;
        }
      }

      else
      {
LABEL_27:
        v87(v85, v11);
        a2 = v52;
        a1 = v69;
        v24 = v68;
        v44 = i;
        v45 = v72;
      }
    }

    if (v45 <= (v28 + 1))
    {
      v47 = v28 + 1;
    }

    else
    {
      v47 = v45;
    }

    v48 = v47 - 1;
    while (1)
    {
      v46 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v46 >= v45)
      {
        v2 = 0;
        v50 = 1;
        v28 = v48;
        goto LABEL_39;
      }

      v2 = *(v44 + 8 * v46);
      ++v28;
      if (v2)
      {
        v28 = v46;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    v61 = v23;

    v80 = a2;
    v62 = v61;
    if (swift_stdlib_isStackAllocationSafe())
    {
      v63 = v80;

      a2 = v63;
      continue;
    }

    break;
  }

  v64 = swift_slowAlloc();
  memcpy(v64, v82, v62);
  a2 = sub_1D2ED3128(v64, v65, v80, v24, &v89);

  MEMORY[0x1D38AF660](v64, -1, -1);
LABEL_52:
  v59 = v89;
LABEL_53:
  sub_1D2ED4CBC(v59);
  return a2;
}

uint64_t sub_1D2ED2B24@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D2EE3EB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v31 = a1;
  v10 = sub_1D2EE49E8();
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
      sub_1D2ED4E60(&qword_1EC737EE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v19 = sub_1D2EE4A08();
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
      sub_1D2ED3924();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1D2ED3E78(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1D2ED2DCC(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1D2EE3EB8();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739738, &qword_1D2EF5B90);
  result = sub_1D2EE4F88();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D2EE49E8();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1D2ED3128(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738A70, &qword_1D2EF20F0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1D2EE3EB8();
  v13 = MEMORY[0x1EEE9AC00](v12);
  v57 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MEMORY[0x1EEE9AC00](v13);
  v63 = &v46 - v16;
  v17 = *(a3 + 16);
  v18 = (a4 >> 3) & 0x1FFFFFFFFFFFFFF8;
  v19 = *(a1 + v18);
  v49 = a1;
  v50 = v11;
  *(a1 + v18) = v19 & ((-1 << a4) - 1);
  v20 = v17 - 1;
  v60 = v21 + 16;
  v61 = a3;
  v54 = (v21 + 48);
  v55 = (v21 + 56);
  v53 = (v21 + 32);
  v59 = a3 + 56;
  v56 = v21;
  v62 = (v21 + 8);
  v51 = a5;
  while (2)
  {
    v48 = v20;
    do
    {
      while (1)
      {
        v23 = *a5;
        v24 = a5[1];
        v26 = a5[2];
        v25 = a5[3];
        v27 = a5[4];
        if (!v27)
        {
          v29 = (v26 + 64) >> 6;
          if (v29 <= v25 + 1)
          {
            v30 = v25 + 1;
          }

          else
          {
            v30 = (v26 + 64) >> 6;
          }

          v31 = v30 - 1;
          while (1)
          {
            v28 = v25 + 1;
            if (__OFADD__(v25, 1))
            {
              break;
            }

            if (v28 >= v29)
            {
              v32 = 0;
              v33 = 1;
              goto LABEL_15;
            }

            v27 = *(v24 + 8 * v28);
            ++v25;
            if (v27)
            {
              goto LABEL_14;
            }
          }

          __break(1u);
          goto LABEL_30;
        }

        v28 = a5[3];
LABEL_14:
        v32 = (v27 - 1) & v27;
        (*(v56 + 16))(v11, *(v23 + 48) + *(v56 + 72) * (__clz(__rbit64(v27)) | (v28 << 6)), v12);
        v33 = 0;
        v31 = v28;
LABEL_15:
        (*v55)(v11, v33, 1, v12);
        *a5 = v23;
        a5[1] = v24;
        a5[2] = v26;
        a5[3] = v31;
        a5[4] = v32;
        if ((*v54)(v11, 1, v12) == 1)
        {
          sub_1D2E5D0B8(v11, &qword_1EC738A70, &qword_1D2EF20F0);
          v45 = v61;

          return sub_1D2ED35FC(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v35 = sub_1D2EE49E8();
        v36 = -1 << *(v34 + 32);
        v37 = v35 & ~v36;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) != 0)
        {
          break;
        }

        v22 = *v62;
LABEL_4:
        result = (v22)(v63, v12);
      }

      v52 = v62 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v58 = ~v36;
      v40 = *(v56 + 72);
      v41 = *(v56 + 16);
      while (1)
      {
        v42 = v57;
        v41(v57, *(v61 + 48) + v40 * v37, v12);
        sub_1D2ED4E60(&qword_1EC737EE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v43 = sub_1D2EE4A08();
        v22 = *v62;
        (*v62)(v42, v12);
        if (v43)
        {
          break;
        }

        v37 = (v37 + 1) & v58;
        v38 = v37 >> 6;
        v39 = 1 << v37;
        if (((1 << v37) & *(v59 + 8 * (v37 >> 6))) == 0)
        {
          v11 = v50;
          a5 = v51;
          goto LABEL_4;
        }
      }

      result = (v22)(v63, v12);
      v11 = v50;
      v44 = v49[v38];
      v49[v38] = v44 & ~v39;
      a5 = v51;
    }

    while ((v44 & v39) == 0);
    v20 = v48 - 1;
    if (__OFSUB__(v48, 1))
    {
LABEL_30:
      __break(1u);
      return result;
    }

    if (v48 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1D2ED35FC(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1D2EE3EB8();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739738, &qword_1D2EF5B90);
  result = sub_1D2EE4F98();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    result = sub_1D2EE49E8();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
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

void *sub_1D2ED3924()
{
  v1 = v0;
  v2 = sub_1D2EE3EB8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739738, &qword_1D2EF5B90);
  v6 = *v0;
  v7 = sub_1D2EE4F78();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v19 = *(v10 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
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

uint64_t sub_1D2ED3B5C(uint64_t a1)
{
  v2 = v1;
  v33 = sub_1D2EE3EB8();
  v3 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739738, &qword_1D2EF5B90);
  v7 = sub_1D2EE4F88();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D2EE49E8();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v7;
  }

  return result;
}

uint64_t sub_1D2ED3E78(int64_t a1)
{
  v3 = sub_1D2EE3EB8();
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

    v13 = sub_1D2EE4ED8();
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
        sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v24 = sub_1D2EE49E8();
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

uint64_t sub_1D2ED4180(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = sub_1D2EE3EB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v33 = a2;
  v11 = sub_1D2EE49E8();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      sub_1D2ED4E60(&qword_1EC737EE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1D2EE4A08();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    sub_1D2ED4460(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t sub_1D2ED4460(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = sub_1D2EE3EB8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D2ED2DCC(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D2ED3924();
      goto LABEL_12;
    }

    sub_1D2ED3B5C(v10 + 1);
  }

  v12 = *v3;
  sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v13 = sub_1D2EE49E8();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      sub_1D2ED4E60(&qword_1EC737EE0, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v21 = sub_1D2EE4A08();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D2EE52A8();
  __break(1u);
  return result;
}

void sub_1D2ED4704()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v0 = sub_1D2EE4618();
  __swift_project_value_buffer(v0, qword_1EC7466D0);
  oslog = sub_1D2EE45F8();
  v1 = sub_1D2EE4DD8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1D2E46000, oslog, v1, "Handling ping for SmartActions", v2, 2u);
    MEMORY[0x1D38AF660](v2, -1, -1);
  }
}

uint64_t sub_1D2ED47EC()
{
  v2 = v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v13 - v4;
  v6 = type metadata accessor for PersistenceConfiguration(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EBF3B8(v2, v5);
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    return sub_1D2E5D0B8(v5, &qword_1EC739490, qword_1D2EF4B90);
  }

  sub_1D2ED4B64(v5, v9, type metadata accessor for PersistenceConfiguration);
  v11 = type metadata accessor for ContainerProvider(0);
  v12 = *(v2 + *(v11 + 20));
  MEMORY[0x1EEE9AC00](v11);
  *(&v13 - 2) = v2;
  *(&v13 - 1) = v9;
  os_unfair_lock_lock((v12 + 24));
  sub_1D2EBF4F4((v12 + 16), &v14);
  os_unfair_lock_unlock((v12 + 24));
  if (!v1)
  {
  }

  return sub_1D2ED4A38(v9, type metadata accessor for PersistenceConfiguration);
}

uint64_t sub_1D2ED4A38(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2ED4A98()
{
  result = qword_1EC739730;
  if (!qword_1EC739730)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC739728, &qword_1D2EF5B40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739730);
  }

  return result;
}

uint64_t sub_1D2ED4AFC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2ED4B64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2ED4BCC(uint64_t a1)
{
  v4 = *(type metadata accessor for SmartActionsServer(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2E5BA34;

  return sub_1D2ECE8A0(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D2ED4CC4(uint64_t a1)
{
  v2 = sub_1D2EE3EB8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1D2ED4E60(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = MEMORY[0x1D38AE810](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1D2ED4180(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1D2ED4E60(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL sub_1D2ED4EC0(uint64_t a1, uint64_t a2)
{
  v2 = 0;
  v3 = *(a2 + 16);
  do
  {
    v4 = v2;
    if (v3 == v2)
    {
      break;
    }

    sub_1D2EE3EF8();
    ++v2;
    sub_1D2ED7E98();
  }

  while ((sub_1D2EE4A08() & 1) == 0);
  return v3 != v4;
}

unint64_t sub_1D2ED4F98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v138 = a2;
  v139 = a3;
  v130 = sub_1D2EE3EB8();
  v4 = *(v130 - 8);
  MEMORY[0x1EEE9AC00](v130);
  v129 = v119 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738CA0, &qword_1D2EF5D80);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v119 - v7;
  v9 = type metadata accessor for SmartAction(0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = MEMORY[0x1E69E7CC0];
  v13 = *(a1 + 16);
  if (v13)
  {
    v14 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v15 = *(v10 + 72);
    v124 = 0x80000001D2EE8D00;
    v122 = 0x80000001D2EE8D20;
    v120 = 0x80000001D2EE8D60;
    v119[1] = 0x80000001D2EE8EF0;
    v119[2] = 0x80000001D2EE8F10;
    v121 = 0x80000001D2EE8F30;
    v123 = 0x80000001D2EE8F50;
    v127 = (v4 + 16);
    v131 = MEMORY[0x1E69E7CC0];
    v126 = (v4 + 8);
    v125 = xmmword_1D2EF5C00;
    v128 = v8;
    v133 = v9;
    v136 = v15;
    v137 = v119 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      sub_1D2E51E80(v14, v12);
      v16 = *&v12[*(v9 + 36)];
      if (!*(v16 + 16))
      {
        goto LABEL_3;
      }

      v17 = sub_1D2E4FC44(0x656C746974, 0xE500000000000000);
      if ((v18 & 1) == 0)
      {
        goto LABEL_9;
      }

      v19 = (*(v16 + 56) + 16 * v17);
      v20 = *v19;
      v21 = v19[1];
      v148 = v138;
      v149 = v139;
      v134 = v20;
      v146 = v20;
      v147 = v21;
      v22 = sub_1D2EE3F78();
      (*(*(v22 - 8) + 56))(v8, 1, 1, v22);
      sub_1D2E4EED4();

      sub_1D2EE4E88();
      v135 = v23;
      v25 = v24;
      sub_1D2E5D0B8(v8, &qword_1EC738CA0, &qword_1D2EF5D80);
      if (v25)
      {
LABEL_8:

        v15 = v136;
LABEL_9:
        if (*(v16 + 16))
        {
          v26 = sub_1D2E4FC44(0x656C746974, 0xE500000000000000);
          if (v27)
          {
            v28 = (*(v16 + 56) + 16 * v26);
            v29 = *v28;
            v30 = v28[1];
            v148 = *v28;
            v149 = v30;
            v146 = 32;
            v147 = 0xE100000000000000;
            sub_1D2E4EED4();

            v31 = sub_1D2EE4E68();
            if (v31[2])
            {
              v135 = v29;
              v32 = v31[4];
              v33 = v31[5];

              v148 = v138;
              v149 = v139;
              v134 = v32;
              v146 = v32;
              v147 = v33;
              v34 = sub_1D2EE3F78();
              (*(*(v34 - 8) + 56))(v8, 1, 1, v34);
              sub_1D2EE4E88();
              v36 = v35;
              v38 = v37;
              sub_1D2E5D0B8(v8, &qword_1EC738CA0, &qword_1D2EF5D80);
              if ((v38 & 1) == 0)
              {
                v39 = sub_1D2ED7748(*&v137[*(v133 + 32)], *&v137[*(v133 + 32) + 8]);
                if (v40)
                {
                  v135 = v40;
                  v41 = v39;

                  v42 = v139;
                  v43 = sub_1D2EE4B48();
                  v44 = sub_1D2EE4B48();
                  if (__OFSUB__(v44, v43))
                  {
                    __break(1u);
                    goto LABEL_67;
                  }

                  v132 = v43;
                  v45 = *v127;
                  v46 = v129;
                  v47 = v130;
                  v131 = v44 - v43;
                  v45(v129, v137, v130);
                  v48 = type metadata accessor for SmartActionMenuItem(0);
                  v49 = objc_allocWithZone(v48);
                  v45(&v49[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_recommendationId], v46, v47);
                  v50 = &v49[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_actionDescription];
                  v51 = v135;
                  *v50 = v41;
                  v50[1] = v51;
                  v52 = &v49[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_iconType];
                  *v52 = 0;
                  *(v52 + 1) = 0xE000000000000000;
                  v143.receiver = v49;
                  v143.super_class = v48;
                  v53 = objc_msgSendSuper2(&v143, sel_init);
                  (*v126)(v46, v47);
                  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739760, &qword_1D2EF5D88);
                  v54 = swift_allocObject();
                  *(v54 + 16) = v125;
                  *(v54 + 32) = v53;
                  v55 = type metadata accessor for SmartActionDataItem();
                  v56 = objc_allocWithZone(v55);
                  v57 = &v56[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_textRange];
                  v58 = v131;
                  *v57 = v132;
                  *(v57 + 1) = v58;
                  v59 = &v56[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_title];
                  *v59 = v134;
                  *(v59 + 1) = v33;
                  *&v56[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_menuItems] = v54;
                  v142.receiver = v56;
                  v142.super_class = v55;
                  v60 = objc_msgSendSuper2(&v142, sel_init);
                  goto LABEL_34;
                }
              }

              v12 = v137;
              v29 = v135;
            }

            else
            {
            }

            v148 = v29;
            v149 = v30;
            v146 = 32;
            v147 = 0xE100000000000000;
            v85 = sub_1D2EE4E68();

            v86 = *(v85 + 16);
            if (v86)
            {
              v87 = (v85 + 16 + 16 * v86);
              v88 = *v87;
              v89 = v87[1];

              v148 = v138;
              v149 = v139;
              v135 = v88;
              v146 = v88;
              v147 = v89;
              v90 = sub_1D2EE3F78();
              (*(*(v90 - 8) + 56))(v8, 1, 1, v90);
              sub_1D2EE4E88();
              LOBYTE(v88) = v91;
              sub_1D2E5D0B8(v8, &qword_1EC738CA0, &qword_1D2EF5D80);
              v9 = v133;
              if ((v88 & 1) != 0 || (v92 = sub_1D2ED7748(*&v12[*(v133 + 32)], *&v12[*(v133 + 32) + 8]), !v93))
              {
                sub_1D2E51EE4(v12);
              }

              else
              {
                v94 = v92;
                v95 = v93;
                v96 = sub_1D2EE4B48();
                result = sub_1D2EE4B48();
                if (__OFSUB__(result, v96))
                {
                  __break(1u);
                  return result;
                }

                v134 = v96;
                v98 = *v127;
                v99 = v129;
                v100 = v130;
                v132 = (result - v96);
                v98(v129, v137, v130);
                v101 = type metadata accessor for SmartActionMenuItem(0);
                v102 = objc_allocWithZone(v101);
                v131 = v95;
                v103 = v94;
                v104 = v102;
                v98(&v102[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_recommendationId], v99, v100);
                v105 = &v104[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_actionDescription];
                v106 = v131;
                *v105 = v103;
                *(v105 + 1) = v106;
                v107 = &v104[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_iconType];
                *v107 = 0;
                *(v107 + 1) = 0xE000000000000000;
                v145.receiver = v104;
                v145.super_class = v101;
                v108 = objc_msgSendSuper2(&v145, sel_init);
                (*v126)(v99, v100);
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739760, &qword_1D2EF5D88);
                v109 = swift_allocObject();
                *(v109 + 16) = v125;
                *(v109 + 32) = v108;
                v110 = type metadata accessor for SmartActionDataItem();
                v111 = objc_allocWithZone(v110);
                v112 = &v111[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_textRange];
                v113 = v132;
                *v112 = v134;
                *(v112 + 1) = v113;
                v114 = &v111[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_title];
                *v114 = v135;
                *(v114 + 1) = v89;
                *&v111[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_menuItems] = v109;
                v144.receiver = v111;
                v144.super_class = v110;
                v60 = objc_msgSendSuper2(&v144, sel_init);
LABEL_34:
                v115 = v60;
                MEMORY[0x1D38AE650]();
                if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_1D2EE4C08();
                }

                sub_1D2EE4C18();

                v131 = v150;
                v12 = v137;
                sub_1D2E51EE4(v137);
                v8 = v128;
                v9 = v133;
              }
            }

            else
            {
              sub_1D2E51EE4(v12);

              v9 = v133;
            }

            v15 = v136;
            goto LABEL_4;
          }
        }

LABEL_3:
        sub_1D2E51EE4(v12);
        goto LABEL_4;
      }

      v132 = v21;
      v61 = &v12[*(v9 + 32)];
      v62 = *v61;
      v63 = *(v61 + 1);
      v64 = *v61 == 0xD000000000000013 && v124 == v63;
      if (v64 || (sub_1D2EE5288() & 1) != 0)
      {
        v131 = 0xD000000000000011;
        p_super_class = &v148;
      }

      else if (v62 == 0xD000000000000012 && v122 == v63 || (sub_1D2EE5288() & 1) != 0)
      {
        v131 = 0xD000000000000017;
        p_super_class = &v146;
      }

      else
      {
        if (v62 == 0x6C7070612E6D6F63 && v63 == 0xEE007370616D2E65 || (sub_1D2EE5288() & 1) != 0)
        {
          v131 = 0x6572696420746547;
          v66 = 0xEE00736E6F697463;
          goto LABEL_23;
        }

        if (v62 == 0xD000000000000011 && v120 == v63 || (sub_1D2EE5288() & 1) != 0)
        {
          v131 = 0xD000000000000010;
          p_super_class = &v145;
        }

        else
        {
          if (v62 != 0x6C7070612E6D6F63 || v63 != 0xEF656E6F68702E65)
          {
            v116 = sub_1D2EE5288();
            v12 = v137;
            if ((v116 & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          v131 = 0xD000000000000011;
          p_super_class = &v144.super_class;
        }
      }

      v66 = *(p_super_class - 32);
LABEL_23:
      v67 = sub_1D2EE4B48();
      v68 = sub_1D2EE4B48();
      v69 = v68 - v67;
      if (__OFSUB__(v68, v67))
      {
        __break(1u);
        goto LABEL_65;
      }

      v135 = v13;
      v70 = *v127;
      v71 = v129;
      v72 = v130;
      (*v127)(v129, v137, v130);
      v73 = type metadata accessor for SmartActionMenuItem(0);
      v74 = objc_allocWithZone(v73);
      v70(&v74[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_recommendationId], v71, v72);
      v75 = &v74[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_actionDescription];
      *v75 = v131;
      v75[1] = v66;
      v76 = &v74[OBJC_IVAR____TtC16CallIntelligence19SmartActionMenuItem_iconType];
      *v76 = 0;
      *(v76 + 1) = 0xE000000000000000;
      v141.receiver = v74;
      v141.super_class = v73;
      v77 = objc_msgSendSuper2(&v141, sel_init);
      (*v126)(v71, v72);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739760, &qword_1D2EF5D88);
      v78 = swift_allocObject();
      *(v78 + 16) = v125;
      *(v78 + 32) = v77;
      v79 = type metadata accessor for SmartActionDataItem();
      v80 = objc_allocWithZone(v79);
      v81 = &v80[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_textRange];
      *v81 = v67;
      v81[1] = v69;
      v82 = &v80[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_title];
      v83 = v132;
      *v82 = v134;
      *(v82 + 1) = v83;
      *&v80[OBJC_IVAR____TtC16CallIntelligence19SmartActionDataItem_menuItems] = v78;
      v140.receiver = v80;
      v140.super_class = v79;
      v84 = objc_msgSendSuper2(&v140, sel_init);
      MEMORY[0x1D38AE650]();
      if (*((v150 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v150 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D2EE4C08();
      }

      sub_1D2EE4C18();

      v131 = v150;
      v12 = v137;
      sub_1D2E51EE4(v137);
      v8 = v128;
      v9 = v133;
      v15 = v136;
      v13 = v135;
LABEL_4:
      v14 += v15;
      if (!--v13)
      {
        goto LABEL_57;
      }
    }
  }

  v131 = MEMORY[0x1E69E7CC0];
LABEL_57:
  if (qword_1EC737C68 != -1)
  {
LABEL_65:
    swift_once();
  }

  v117 = sub_1D2EE4618();
  __swift_project_value_buffer(v117, qword_1EC7466D0);
  v42 = v131;

  v43 = sub_1D2EE45F8();
  v36 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v43, v36))
  {
    v41 = swift_slowAlloc();
    *v41 = 134217984;
    if (v42 >> 62)
    {
LABEL_67:
      v118 = sub_1D2EE50B8();
    }

    else
    {
      v118 = *((v42 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v41 + 4) = v118;

    _os_log_impl(&dword_1D2E46000, v43, v36, "Constructing data items for smart actions returned: %ld items", v41, 0xCu);
    MEMORY[0x1D38AF660](v41, -1, -1);
  }

  else
  {
  }

  return v42;
}

uint64_t sub_1D2ED6038(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  v4 = sub_1D2EE3EF8();
  v3[15] = v4;
  v3[16] = *(v4 - 8);
  v3[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC738598, &unk_1D2EF2600);
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v5 = sub_1D2EE3F58();
  v3[20] = v5;
  v3[21] = *(v5 - 8);
  v3[22] = swift_task_alloc();
  v6 = sub_1D2EE3F78();
  v3[23] = v6;
  v3[24] = *(v6 - 8);
  v3[25] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ED61F8, 0, 0);
}

uint64_t sub_1D2ED61F8(uint64_t a1)
{
  v3 = *(v1 + 192);
  v2 = *(v1 + 200);
  v5 = *(v1 + 176);
  v4 = *(v1 + 184);
  v6 = *(v1 + 160);
  v7 = *(v1 + 168);
  v9 = *(v1 + 144);
  v8 = *(v1 + 152);
  v10 = *(v1 + 128);
  v33 = *(v1 + 120);
  sub_1D2EE3F38();
  sub_1D2EE3F68();
  (*(v3 + 8))(v2, v4);
  sub_1D2EE3F48();
  (*(v7 + 8))(v5, v6);
  sub_1D2E5D050(v8, v9, &qword_1EC738598, &unk_1D2EF2600);
  v11 = (*(v10 + 48))(v9, 1, v33);
  v12 = *(v1 + 144);
  v13 = *(v1 + 152);
  if (v11 == 1)
  {
    sub_1D2E5D0B8(*(v1 + 152), &qword_1EC738598, &unk_1D2EF2600);
    sub_1D2E5D0B8(v12, &qword_1EC738598, &unk_1D2EF2600);
LABEL_11:
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v25 = sub_1D2EE4618();
    __swift_project_value_buffer(v25, qword_1EC7466D0);
    v26 = sub_1D2EE45F8();
    v27 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1D2E46000, v26, v27, "Processing smart app actions validation failure.", v28, 2u);
      MEMORY[0x1D38AF660](v28, -1, -1);
    }

    v29 = *(v1 + 8);
    v30 = MEMORY[0x1E69E7CC0];

    return v29(v30);
  }

  v15 = *(v1 + 128);
  v14 = *(v1 + 136);
  v17 = *(v1 + 112);
  v16 = *(v1 + 120);
  (*(v15 + 32))(v14, *(v1 + 144), v16);
  v18 = sub_1D2ED4EC0(v14, *(v17 + 48));
  (*(v15 + 8))(v14, v16);
  sub_1D2E5D0B8(v13, &qword_1EC738598, &unk_1D2EF2600);
  if (!v18)
  {
    goto LABEL_11;
  }

  v19 = *(v1 + 104);
  if ((v19 & 0x2000000000000000) != 0)
  {
    v20 = HIBYTE(v19) & 0xF;
  }

  else
  {
    v20 = *(v1 + 96) & 0xFFFFFFFFFFFFLL;
  }

  if (v20)
  {
    sub_1D2E5D050(*(v1 + 112), v1 + 56, &qword_1EC7396B0, &qword_1D2EF59A0);
    *(v1 + 32) = 0u;
    *(v1 + 48) = 0;
    *(v1 + 16) = 0u;
    sub_1D2ED7DD4(v1 + 56, v1 + 16);
    v21 = swift_task_alloc();
    *(v1 + 208) = v21;
    *v21 = v1;
    v21[1] = sub_1D2ED661C;
    v23 = *(v1 + 96);
    v22 = *(v1 + 104);

    return sub_1D2EC6220(v23, v22);
  }

  else
  {
    sub_1D2EBC018();
    swift_allocError();
    *v31 = 0;
    swift_willThrow();

    v32 = *(v1 + 8);

    return v32();
  }
}

uint64_t sub_1D2ED661C(uint64_t a1, uint64_t a2)
{
  v5 = *v3;
  v5[27] = a2;
  v5[28] = v2;

  if (v2)
  {
    v6 = sub_1D2ED6824;
  }

  else
  {
    v5[29] = a1;
    v6 = sub_1D2ED6744;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D2ED6744()
{
  v1 = v0[28];
  v2 = sub_1D2EC6D48(v0[29], v0[27]);
  sub_1D2ED7E44((v0 + 2));

  v4 = v0[1];
  if (!v1)
  {
    v3 = v2;
  }

  return v4(v3);
}

uint64_t sub_1D2ED6824()
{
  sub_1D2ED7E44(v0 + 16);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2ED68CC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D2ED68EC, 0, 0);
}

uint64_t sub_1D2ED68EC()
{
  sub_1D2ED6E1C(*(v0 + 16));
  if (v1)
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v4 = sub_1D2EE4618();
    __swift_project_value_buffer(v4, qword_1EC7466D0);
    v5 = sub_1D2EE45F8();
    v6 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1D2E46000, v5, v6, "Creating Siri spotlight context", v7, 2u);
      MEMORY[0x1D38AF660](v7, -1, -1);
    }

    v8 = [objc_allocWithZone(MEMORY[0x1E69CE1C8]) init];
    v9 = sub_1D2EE45F8();
    v10 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_1D2E46000, v9, v10, "Initializing Siri spotlight context source", v11, 2u);
      MEMORY[0x1D38AF660](v11, -1, -1);
    }

    [v8 setSource_];
    v12 = sub_1D2EE45F8();
    v13 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_1D2E46000, v12, v13, "Saving context utterance", v14, 2u);
      MEMORY[0x1D38AF660](v14, -1, -1);
    }

    v15 = sub_1D2EE4A38();

    [v8 setUtteranceText_];

    v16 = sub_1D2EE45F8();
    v17 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D2E46000, v16, v17, "Creating Siri spotlight source", v18, 2u);
      MEMORY[0x1D38AF660](v18, -1, -1);
    }

    v19 = [objc_allocWithZone(MEMORY[0x1E69CE1D0]) init];
    v20 = sub_1D2EE45F8();
    v21 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1D2E46000, v20, v21, "Activating Siri spotlight source", v22, 2u);
      MEMORY[0x1D38AF660](v22, -1, -1);
    }

    [v19 activateWithContext_];
    v23 = sub_1D2EE45F8();
    v24 = sub_1D2EE4DA8();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_1D2E46000, v23, v24, "Siri query processed", v25, 2u);
      MEMORY[0x1D38AF660](v25, -1, -1);
    }

    v26 = *(v0 + 8);

    return v26(0, 0);
  }

  else
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v27 = sub_1D2EE4618();
    __swift_project_value_buffer(v27, qword_1EC7466D0);
    v28 = sub_1D2EE45F8();
    v29 = sub_1D2EE4DB8();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_1D2E46000, v28, v29, "Missing / unhandled app bundle id. Returning..", v30, 2u);
      MEMORY[0x1D38AF660](v30, -1, -1);
    }

    sub_1D2EBC018();
    swift_allocError();
    *v31 = 4;
    swift_willThrow();
    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_1D2ED6E1C(uint64_t a1)
{
  v2 = type metadata accessor for SmartAction(0);
  v3 = *(a1 + *(v2 + 36));
  if (!*(v3 + 16) || (v4 = v2, v5 = sub_1D2E4FC44(0x656C746974, 0xE500000000000000), (v6 & 1) == 0))
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v27 = sub_1D2EE4618();
    __swift_project_value_buffer(v27, qword_1EC7466D0);
    v28 = sub_1D2EE45F8();
    v29 = sub_1D2EE4DB8();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_25;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Cannot generate user query without parameter title. Returning..";
    goto LABEL_24;
  }

  v7 = (*(v3 + 56) + 16 * v5);
  v9 = *v7;
  v8 = v7[1];
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v34 = sub_1D2EE4618();
    __swift_project_value_buffer(v34, qword_1EC7466D0);
    v28 = sub_1D2EE45F8();
    v29 = sub_1D2EE4DB8();
    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_25;
    }

    v30 = swift_slowAlloc();
    *v30 = 0;
    v31 = "Cannot generate user query because title is empty. Returning..";
LABEL_24:
    _os_log_impl(&dword_1D2E46000, v28, v29, v31, v30, 2u);
    MEMORY[0x1D38AF660](v30, -1, -1);
LABEL_25:

    sub_1D2EBC018();
    swift_allocError();
    *v32 = 12;
    return swift_willThrow();
  }

  v11 = (a1 + *(v4 + 32));
  v12 = *v11;
  v13 = v11[1];
  v14 = *v11 == 0xD000000000000013 && 0x80000001D2EE8D00 == v13;
  if (v14 || (sub_1D2EE5288() & 1) != 0)
  {

    sub_1D2EE4FB8();

    v57 = 0xD00000000000001DLL;
    v58 = 0x80000001D2EE8ED0;
    MEMORY[0x1D38AE570](v9, v8);

    if (!*(v3 + 16))
    {
      return v57;
    }

    v15 = sub_1D2E4FC44(0x69745F6D61726170, 0xEA0000000000656DLL);
    if (v16)
    {
      v17 = (*(v3 + 56) + 16 * v15);
      v18 = *v17;
      v19 = v17[1];
      strcpy(v56, ", at time ");
      BYTE3(v56[1]) = 0;
      HIDWORD(v56[1]) = -369098752;

      MEMORY[0x1D38AE570](v18, v19);

      MEMORY[0x1D38AE570](v56[0], v56[1]);
    }

    if (!*(v3 + 16))
    {
      return v57;
    }

    v20 = 0x6F6C5F6D61726170;
    v21 = 0xEE006E6F69746163;
    goto LABEL_16;
  }

  v35 = v12 == 0xD000000000000012 && 0x80000001D2EE8D20 == v13;
  if (v35 || (sub_1D2EE5288() & 1) != 0)
  {

    sub_1D2EE4FB8();

    v57 = 0xD000000000000023;
    v58 = 0x80000001D2EE8E80;
    MEMORY[0x1D38AE570](v9, v8);

    if (!*(v3 + 16))
    {
      return v57;
    }

    v36 = sub_1D2E4FC44(0xD00000000000001CLL, 0x80000001D2EE8B20);
    if (v37)
    {
      v38 = (*(v3 + 56) + 16 * v36);
      v39 = *v38;
      v40 = v38[1];
      strcpy(v56, ", at time ");
      BYTE3(v56[1]) = 0;
      HIDWORD(v56[1]) = -369098752;

      MEMORY[0x1D38AE570](v39, v40);

      MEMORY[0x1D38AE570](v56[0], v56[1]);
    }

    if (!*(v3 + 16))
    {
      return v57;
    }

    v41 = sub_1D2E4FC44(0xD000000000000019, 0x80000001D2EE8B40);
    if (v42)
    {
      v43 = (*(v3 + 56) + 16 * v41);
      v44 = *v43;
      v45 = v43[1];

      sub_1D2EE4FB8();

      v56[0] = 0xD000000000000014;
      v56[1] = 0x80000001D2EE8EB0;
      MEMORY[0x1D38AE570](v44, v45);

      MEMORY[0x1D38AE570](0xD000000000000014, 0x80000001D2EE8EB0);
    }

    if (!*(v3 + 16))
    {
      return v57;
    }

    v20 = 0xD00000000000001ELL;
    v21 = 0x80000001D2EE8B60;
LABEL_16:
    v22 = sub_1D2E4FC44(v20, v21);
    if ((v23 & 1) == 0)
    {
      return v57;
    }

    v24 = (*(v3 + 56) + 16 * v22);
    v25 = *v24;
    v26 = v24[1];

    sub_1D2EE4FB8();

    strcpy(v56, ", at location ");
    HIBYTE(v56[1]) = -18;
    goto LABEL_18;
  }

  if (v12 == 0xD000000000000012 && 0x80000001D2EE8D40 == v13 || (sub_1D2EE5288() & 1) != 0)
  {

    sub_1D2EE4FB8();

    v57 = 0xD00000000000001FLL;
    v58 = 0x80000001D2EE8DE0;
    MEMORY[0x1D38AE570](v9, v8);

    if (!*(v3 + 16))
    {
      return v57;
    }

    v46 = sub_1D2E4FC44(0xD000000000000012, 0x80000001D2EE8E00);
    if (v47)
    {
      v48 = (*(v3 + 56) + 16 * v46);
      v49 = *v48;
      v50 = v48[1];

      sub_1D2EE4FB8();

      v56[0] = 0xD000000000000014;
      v56[1] = 0x80000001D2EE8E60;
      MEMORY[0x1D38AE570](v49, v50);

      MEMORY[0x1D38AE570](0xD000000000000014, 0x80000001D2EE8E60);
    }

    if (!*(v3 + 16))
    {
      return v57;
    }

    v51 = sub_1D2E4FC44(0xD000000000000013, 0x80000001D2EE8E20);
    if ((v52 & 1) == 0)
    {
      return v57;
    }

    v53 = (*(v3 + 56) + 16 * v51);
    v25 = *v53;
    v26 = v53[1];

    sub_1D2EE4FB8();

    v56[0] = 0xD000000000000015;
    v56[1] = 0x80000001D2EE8E40;
LABEL_18:
    MEMORY[0x1D38AE570](v25, v26);

    MEMORY[0x1D38AE570](v56[0], v56[1]);
LABEL_19:

    return v57;
  }

  if (v12 == 0x6C7070612E6D6F63 && v13 == 0xEE007370616D2E65 || (sub_1D2EE5288() & 1) != 0)
  {
    v58 = 0xE000000000000000;

    sub_1D2EE4FB8();

    v54 = 0x80000001D2EE8DC0;
    v57 = 0xD000000000000012;
LABEL_62:
    v58 = v54;
    MEMORY[0x1D38AE570](v9, v8);
    goto LABEL_19;
  }

  if (v12 == 0xD000000000000011 && 0x80000001D2EE8D60 == v13 || (sub_1D2EE5288() & 1) != 0)
  {
    v57 = 0;
    v58 = 0xE000000000000000;

    sub_1D2EE4FB8();

    v54 = 0x80000001D2EE8DA0;
    v55 = 0xD000000000000017;
LABEL_61:
    v57 = v55;
    goto LABEL_62;
  }

  if (v12 == 0x6C7070612E6D6F63 && v13 == 0xEF656E6F68702E65 || (sub_1D2EE5288() & 1) != 0)
  {
    v57 = 0;
    v58 = 0xE000000000000000;

    sub_1D2EE4FB8();

    v54 = 0x80000001D2EE8D80;
    v55 = 0xD000000000000015;
    goto LABEL_61;
  }

  return 0;
}

unint64_t sub_1D2ED7748(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000013 && 0x80000001D2EE8D00 == a2;
  if (v3 || (sub_1D2EE5288() & 1) != 0)
  {
    return 0xD000000000000011;
  }

  if (a1 == 0xD000000000000012 && 0x80000001D2EE8D20 == a2 || (sub_1D2EE5288() & 1) != 0)
  {
    return 0xD000000000000017;
  }

  result = 0x6572696420746547;
  if (a1 != 0x6C7070612E6D6F63 || a2 != 0xEE007370616D2E65)
  {
    v6 = sub_1D2EE5288();
    result = 0x6572696420746547;
    if ((v6 & 1) == 0)
    {
      if (a1 == 0xD000000000000011 && 0x80000001D2EE8D60 == a2 || (sub_1D2EE5288() & 1) != 0)
      {
        return 0xD000000000000010;
      }

      if ((a1 != 0x6C7070612E6D6F63 || a2 != 0xEF656E6F68702E65) && (sub_1D2EE5288() & 1) == 0)
      {
        return 0;
      }

      return 0xD000000000000011;
    }
  }

  return result;
}

CallIntelligence::SmartAppActionsError_optional __swiftcall SmartAppActionsError.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D2EE5118();

  v5 = 14;
  if (v3 < 0xE)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t SmartAppActionsError.rawValue.getter()
{
  result = 0x6C70207974706D45;
  switch(*v0)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
      result = 0xD000000000000019;
      break;
    case 4:
      result = 0xD000000000000013;
      break;
    case 5:
      result = 0x6F727265204D4C4CLL;
      break;
    case 6:
      result = 0xD000000000000015;
      break;
    case 7:
      result = 0x74756F656D6954;
      break;
    case 8:
      result = 0x65646E75204D4C4CLL;
      break;
    case 9:
      result = 0xD00000000000001FLL;
      break;
    case 0xA:
      result = 0xD000000000000017;
      break;
    case 0xB:
      result = 0xD00000000000001BLL;
      break;
    case 0xC:
      result = 0x696D20656C746954;
      break;
    case 0xD:
      result = 0xD00000000000001ALL;
      break;
    default:
      result = 0xD000000000000011;
      break;
  }

  return result;
}

uint64_t sub_1D2ED7B6C()
{
  v0 = SmartAppActionsError.rawValue.getter();
  v2 = v1;
  if (v0 == SmartAppActionsError.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_1D2EE5288();
  }

  return v5 & 1;
}

unint64_t sub_1D2ED7C0C()
{
  result = qword_1EC739758;
  if (!qword_1EC739758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739758);
  }

  return result;
}

uint64_t sub_1D2ED7C60()
{
  sub_1D2EE5338();
  SmartAppActionsError.rawValue.getter();
  sub_1D2EE4AC8();

  return sub_1D2EE5378();
}

uint64_t sub_1D2ED7CC8(uint64_t a1)
{
  SmartAppActionsError.rawValue.getter();
  sub_1D2EE4AC8();
}

uint64_t sub_1D2ED7D2C(uint64_t a1)
{
  sub_1D2EE5338();
  SmartAppActionsError.rawValue.getter();
  sub_1D2EE4AC8();

  return sub_1D2EE5378();
}

unint64_t sub_1D2ED7D9C@<X0>(unint64_t *a1@<X8>)
{
  result = SmartAppActionsError.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D2ED7DD4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7396B0, &qword_1D2EF59A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D2ED7E98()
{
  result = qword_1EC7392C8;
  if (!qword_1EC7392C8)
  {
    sub_1D2EE3EF8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7392C8);
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1D2ED7F0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 48);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2ED7F54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 48) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D2ED7FB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1D2E5D050(a3, v25 - v10, &qword_1EC739040, &qword_1D2EF2460);
  v12 = sub_1D2EE4CB8();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1D2E5D0B8(v11, &qword_1EC739040, &qword_1D2EF2460);
  }

  else
  {
    sub_1D2EE4CA8();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1D2EE4C28();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1D2EE4AB8() + 32;
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

      sub_1D2E5D0B8(a3, &qword_1EC739040, &qword_1D2EF2460);

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

  sub_1D2E5D0B8(a3, &qword_1EC739040, &qword_1D2EF2460);
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

uint64_t sub_1D2ED82B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v17[0] = a1;
  v17[1] = a2;
  v6 = type metadata accessor for NewSmartAction(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a3 + 16);
  v11 = MEMORY[0x1E69E7CC0];
  if (!v10)
  {
    return v11;
  }

  v20 = MEMORY[0x1E69E7CC0];
  sub_1D2EDC9D4(0, v10, 0);
  v11 = v20;
  for (i = (a3 + 40); ; i += 2)
  {
    v13 = *i;
    v18[0] = *(i - 8);
    v19 = v13;

    (v17[0])(v18);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v20 = v11;
    v15 = *(v11 + 16);
    v14 = *(v11 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1D2EDC9D4((v14 > 1), v15 + 1, 1);
      v11 = v20;
    }

    *(v11 + 16) = v15 + 1;
    sub_1D2EDDD54(v9, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v15, type metadata accessor for NewSmartAction);
    if (!--v10)
    {
      return v11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2ED8478(uint64_t a1)
{
  sub_1D2EE5338();
  sub_1D2EE3EB8();
  sub_1D2EDDD0C(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2EE49F8();
  sub_1D2EE4AC8();
  return sub_1D2EE5378();
}

uint64_t sub_1D2ED8520(uint64_t a1, uint64_t a2)
{
  sub_1D2EE3EB8();
  sub_1D2EDDD0C(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2EE49F8();

  return sub_1D2EE4AC8();
}

uint64_t sub_1D2ED85BC(uint64_t a1, uint64_t a2)
{
  sub_1D2EE5338();
  sub_1D2EE3EB8();
  sub_1D2EDDD0C(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D2EE49F8();
  sub_1D2EE4AC8();
  return sub_1D2EE5378();
}

uint64_t sub_1D2ED8660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1D2EE3E88() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  if (v7 == *v9 && v8 == v9[1])
  {
    return 1;
  }

  return sub_1D2EE5288();
}

uint64_t sub_1D2ED86E8(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1D2EDDC44(a1, v1 + OBJC_IVAR____TtC16CallIntelligence15VoicemailClient_smartActionsServer, type metadata accessor for SmartActionsServer);
  sub_1D2EE4548();
  *(v1 + 16) = sub_1D2EE4538();

  sub_1D2EE4518();

  v7 = sub_1D2EE4CB8();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = swift_allocObject();
  v8[2] = 0;
  v8[3] = 0;
  v8[4] = v2;

  sub_1D2EA4398(0, 0, v6, &unk_1D2EF5F18, v8);

  sub_1D2EDDCAC(a1, type metadata accessor for SmartActionsServer);
  return v2;
}

uint64_t sub_1D2ED8878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  v4[4] = sub_1D2EE44F8();
  v4[5] = swift_task_alloc();
  v5 = sub_1D2EE4558();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_1D2EE4588();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();
  v7 = sub_1D2EE4578();
  v4[12] = v7;
  v4[13] = *(v7 - 8);
  v4[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ED8A20, 0, 0);
}

uint64_t sub_1D2ED8A20()
{
  v1 = v0[8];
  v2 = v0[6];
  v3 = v0[7];
  (*(v0[10] + 104))(v0[11], *MEMORY[0x1E699BFD8], v0[9]);
  (*(v3 + 104))(v1, *MEMORY[0x1E699BFC8], v2);
  v0[2] = MEMORY[0x1E69E7CC0];
  sub_1D2EDDD0C(&qword_1EC739720, MEMORY[0x1E699BF08], MEMORY[0x1E699BF20]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739728, &qword_1D2EF5B40);
  sub_1D2ED4A98();
  sub_1D2EE4EB8();
  sub_1D2EE4568();
  v4 = swift_task_alloc();
  v0[15] = v4;
  *v4 = v0;
  v4[1] = sub_1D2ED8BE4;
  v5 = v0[14];

  return MEMORY[0x1EEE03BD8](v5);
}

uint64_t sub_1D2ED8BE4()
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v4 = *(*v1 + 96);
  v5 = *v1;
  *(v5 + 128) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D2ED8DB4, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1D2ED8DB4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D2ED8E44(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = sub_1D2EE3EB8();
  v2[5] = v3;
  v2[6] = *(v3 - 8);
  v2[7] = swift_task_alloc();
  v4 = type metadata accessor for SendableMessageWraper(0);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D2ED8F60, 0, 0);
}

uint64_t sub_1D2ED8F60()
{
  v1 = *(v0 + 24);
  v2 = sub_1D2EDD404(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 16);
  *(v0 + 88) = v3;
  if (v3)
  {
    v5 = *(v0 + 64);
    v4 = *(v0 + 72);
    v6 = *(v0 + 24);
    *(v0 + 96) = OBJC_IVAR____TtC16CallIntelligence15VoicemailClient_smartActionsServer;
    v7 = *(v4 + 80);
    *(v0 + 160) = v7;
    v8 = *(v4 + 72);
    *(v0 + 120) = 0;
    *(v0 + 128) = v2;
    *(v0 + 104) = v8;
    *(v0 + 112) = v2;
    v9 = *(v0 + 80);
    sub_1D2EDDC44(v6 + ((v7 + 32) & ~v7), v9, type metadata accessor for SendableMessageWraper);
    v10 = (v9 + *(v5 + 20));
    v11 = *v10;
    v12 = v10[1];
    v13 = swift_task_alloc();
    *(v0 + 136) = v13;
    *v13 = v0;
    v13[1] = sub_1D2ED90E0;

    return sub_1D2ED0068(v11, v12);
  }

  else
  {
    v15 = v2;

    v16 = *(v0 + 8);

    return v16(v15);
  }
}

uint64_t sub_1D2ED90E0(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v5 = sub_1D2ED9208;
  }

  else
  {
    *(v4 + 152) = a1;
    v5 = sub_1D2ED94C8;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1D2ED9208()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 144);
  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EC7466D0);
  v3 = v1;
  v4 = sub_1D2EE45F8();
  v5 = sub_1D2EE4DB8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 144);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D2E46000, v4, v5, "Error processing voicemail%@", v8, 0xCu);
    sub_1D2E5D0B8(v9, &qword_1EC7392E8, &unk_1D2EF63D0);
    MEMORY[0x1D38AF660](v9, -1, -1);
    MEMORY[0x1D38AF660](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 128);
  v13 = *(v0 + 112);
  v14 = *(v0 + 88);
  v15 = *(v0 + 120) + 1;
  sub_1D2EDDCAC(*(v0 + 80), type metadata accessor for SendableMessageWraper);
  if (v15 == v14)
  {

    v16 = *(v0 + 8);

    return v16(v12);
  }

  else
  {
    v18 = *(v0 + 120) + 1;
    *(v0 + 120) = v18;
    *(v0 + 128) = v12;
    *(v0 + 112) = v13;
    v19 = *(v0 + 80);
    v20 = *(v0 + 64);
    sub_1D2EDDC44(*(v0 + 24) + ((*(v0 + 160) + 32) & ~*(v0 + 160)) + *(v0 + 104) * v18, v19, type metadata accessor for SendableMessageWraper);
    v21 = (v19 + *(v20 + 20));
    v22 = *v21;
    v23 = v21[1];
    v24 = swift_task_alloc();
    *(v0 + 136) = v24;
    *v24 = v0;
    v24[1] = sub_1D2ED90E0;

    return sub_1D2ED0068(v22, v23);
  }
}

uint64_t sub_1D2ED94C8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 112);
  v4 = *(v0 + 80);
  v6 = *(v0 + 48);
  v5 = *(v0 + 56);
  v7 = *(v0 + 40);
  v8 = swift_task_alloc();
  *(v8 + 16) = v4;
  v9 = sub_1D2ED82B0(sub_1D2E7DADC, v8, v1);

  v10 = *(v6 + 16);
  v10(v5, v4, v7);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 16) = v3;
  v12 = sub_1D2E4FE14(v5);
  v14 = *(v3 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_20;
  }

  LOBYTE(v2) = v13;
  if (*(*(v0 + 112) + 24) >= v17)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_8;
    }

LABEL_20:
    v38 = v12;
    sub_1D2EDC5E8();
    v12 = v38;
    goto LABEL_8;
  }

  v18 = *(v0 + 56);
  sub_1D2EDBB2C(v17, isUniquelyReferenced_nonNull_native);
  v12 = sub_1D2E4FE14(v18);
  if ((v2 & 1) != (v19 & 1))
  {

    return sub_1D2EE52B8();
  }

LABEL_8:
  v21 = *(v0 + 16);
  v23 = *(v0 + 48);
  v22 = *(v0 + 56);
  v24 = *(v0 + 40);
  if (v2)
  {
    *(v21[7] + 8 * v12) = v9;

    (*(v23 + 8))(v22, v24);
  }

  else
  {
    v21[(v12 >> 6) + 8] |= 1 << v12;
    v25 = v12;
    v10(v21[6] + *(v23 + 72) * v12, v22, v24);
    *(v21[7] + 8 * v25) = v9;
    result = (*(v23 + 8))(v22, v24);
    v26 = v21[2];
    v16 = __OFADD__(v26, 1);
    v27 = v26 + 1;
    if (v16)
    {
      __break(1u);
      return result;
    }

    v21[2] = v27;
  }

  v28 = *(v0 + 88);
  v29 = *(v0 + 120) + 1;
  sub_1D2EDDCAC(*(v0 + 80), type metadata accessor for SendableMessageWraper);
  if (v29 == v28)
  {

    v30 = *(v0 + 8);

    return v30(v21);
  }

  else
  {
    v31 = *(v0 + 120) + 1;
    *(v0 + 120) = v31;
    *(v0 + 128) = v21;
    *(v0 + 112) = v21;
    v32 = *(v0 + 80);
    v33 = *(v0 + 64);
    sub_1D2EDDC44(*(v0 + 24) + ((*(v0 + 160) + 32) & ~*(v0 + 160)) + *(v0 + 104) * v31, v32, type metadata accessor for SendableMessageWraper);
    v34 = (v32 + *(v33 + 20));
    v35 = *v34;
    v36 = v34[1];
    v37 = swift_task_alloc();
    *(v0 + 136) = v37;
    *v37 = v0;
    v37[1] = sub_1D2ED90E0;

    return sub_1D2ED0068(v35, v36);
  }
}

void sub_1D2ED9858(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739490, qword_1D2EF4B90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v103 = &v77 - v5;
  v99 = type metadata accessor for PersistenceConfiguration(0);
  v6 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v83 = &v77 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739780, &qword_1D2EF5E88);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v77 - v9;
  v11 = sub_1D2EE3EB8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v87 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v93 = &v77 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v81 = &v77 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739788, &qword_1D2EF5E90);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v85 = &v77 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v84 = &v77 - v21;
  v22 = a1 + 64;
  v23 = 1 << *(a1 + 32);
  v24 = -1;
  if (v23 < 64)
  {
    v24 = ~(-1 << v23);
  }

  v94 = v24 & *(a1 + 64);
  v97 = v2 + OBJC_IVAR____TtC16CallIntelligence15VoicemailClient_smartActionsServer;
  v78 = (v23 + 63) >> 6;
  v90 = (v12 + 32);
  v91 = (v12 + 16);
  v82 = v12;
  v25 = (v12 + 8);
  v26 = v10;
  v92 = v25;
  v98 = (v6 + 48);
  v86 = a1;

  v27 = 0;
  *&v28 = 136315394;
  v79 = v28;
  v96 = v10;
  v80 = a1 + 64;
  v95 = v11;
  while (1)
  {
    v30 = v94;
    if (!v94)
    {
      break;
    }

    v31 = v26;
    v88 = v27;
    v32 = v27;
LABEL_15:
    v94 = (v30 - 1) & v30;
    v36 = __clz(__rbit64(v30)) | (v32 << 6);
    v37 = v86;
    v38 = v82;
    v39 = v81;
    v40 = v95;
    (*(v82 + 16))(v81, *(v86 + 48) + *(v82 + 72) * v36, v95);
    v41 = *(*(v37 + 56) + 8 * v36);
    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739790, &qword_1D2EF5E98);
    v43 = *(v42 + 48);
    v44 = *(v38 + 32);
    v45 = v85;
    v44(v85, v39, v40);
    *(v45 + v43) = v41;
    (*(*(v42 - 8) + 56))(v45, 0, 1, v42);

    v35 = v87;
LABEL_16:
    v46 = v84;
    sub_1D2EDDBB4(v45, v84);
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739790, &qword_1D2EF5E98);
    if ((*(*(v47 - 8) + 48))(v46, 1, v47) == 1)
    {

      return;
    }

    v48 = *(v46 + *(v47 + 48));
    v49 = v93;
    v50 = v46;
    v51 = v95;
    (*v90)(v93, v50, v95);
    if (qword_1EC737C68 != -1)
    {
      swift_once();
    }

    v52 = sub_1D2EE4618();
    __swift_project_value_buffer(v52, qword_1EC7466D0);
    (*v91)(v35, v49, v51);
    swift_bridgeObjectRetain_n();
    v53 = sub_1D2EE45F8();
    v54 = sub_1D2EE4DA8();
    v55 = os_log_type_enabled(v53, v54);
    v56 = v97;
    if (v55)
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v104 = v58;
      *v57 = v79;
      sub_1D2EDDD0C(&qword_1EC7384D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v59 = sub_1D2EE5258();
      v60 = v35;
      v62 = v61;
      v89 = *v92;
      v89(v60, v51);
      v63 = sub_1D2E685B0(v59, v62, &v104);

      *(v57 + 4) = v63;
      *(v57 + 12) = 2048;
      v64 = *(v48 + 16);

      *(v57 + 14) = v64;

      _os_log_impl(&dword_1D2E46000, v53, v54, "Message %s has %ld smart app suggestions", v57, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v58);
      MEMORY[0x1D38AF660](v58, -1, -1);
      v26 = v96;
      MEMORY[0x1D38AF660](v57, -1, -1);

      v65 = v83;
      v66 = *(v48 + 16);
      if (v66)
      {
        goto LABEL_23;
      }
    }

    else
    {

      swift_bridgeObjectRelease_n();
      v89 = *v92;
      v89(v35, v51);
      v65 = v83;
      v26 = v31;
      v66 = *(v48 + 16);
      if (v66)
      {
LABEL_23:
        v67 = type metadata accessor for NewSmartAction(0);
        v68 = 0;
        v69 = *(v67 - 8);
        v102 = v48 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
        v101 = v69 + 56;
        while (v68 < *(v48 + 16))
        {
          sub_1D2EDDC44(v102 + *(v69 + 72) * v68, v26, type metadata accessor for NewSmartAction);
          (*(v69 + 56))(v26, 0, 1, v67);
          sub_1D2E5D0B8(v26, &qword_1EC739780, &qword_1D2EF5E88);
          v70 = v103;
          sub_1D2E5D050(v56, v103, &qword_1EC739490, qword_1D2EF4B90);
          if ((*v98)(v70, 1, v99) == 1)
          {
            sub_1D2E5D0B8(v103, &qword_1EC739490, qword_1D2EF4B90);
          }

          else
          {
            sub_1D2EDDD54(v103, v65, type metadata accessor for PersistenceConfiguration);
            v71 = type metadata accessor for ContainerProvider(0);
            v72 = *(v56 + *(v71 + 20));
            MEMORY[0x1EEE9AC00](v71);
            *(&v77 - 2) = v73;
            *(&v77 - 1) = v65;
            os_unfair_lock_lock((v72 + 24));
            v74 = v100;
            sub_1D2EBF4F4((v72 + 16), &v104);
            v100 = v74;
            v75 = (v72 + 24);
            if (v74)
            {
              os_unfair_lock_unlock(v75);

              v89(v93, v95);
              sub_1D2EDDCAC(v65, type metadata accessor for PersistenceConfiguration);
              return;
            }

            os_unfair_lock_unlock(v75);

            sub_1D2EDDCAC(v65, type metadata accessor for PersistenceConfiguration);
            v56 = v97;
            v26 = v96;
          }

          if (v66 == ++v68)
          {
            goto LABEL_4;
          }
        }

        __break(1u);
        goto LABEL_34;
      }
    }

LABEL_4:

    v89(v93, v95);
    v29 = type metadata accessor for NewSmartAction(0);
    (*(*(v29 - 8) + 56))(v26, 1, 1, v29);
    v22 = v80;
    v27 = v88;
  }

  if (v78 <= v27 + 1)
  {
    v33 = v27 + 1;
  }

  else
  {
    v33 = v78;
  }

  v34 = v33 - 1;
  v35 = v87;
  while (1)
  {
    v32 = v27 + 1;
    if (__OFADD__(v27, 1))
    {
      break;
    }

    if (v32 >= v78)
    {
      v31 = v26;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739790, &qword_1D2EF5E98);
      v45 = v85;
      (*(*(v76 - 8) + 56))(v85, 1, 1, v76);
      v94 = 0;
      v88 = v34;
      goto LABEL_16;
    }

    v30 = *(v22 + 8 * v32);
    ++v27;
    if (v30)
    {
      v31 = v26;
      v88 = v32;
      goto LABEL_15;
    }
  }

LABEL_34:
  __break(1u);
}

uint64_t sub_1D2EDA2DC()
{

  sub_1D2EDDCAC(v0 + OBJC_IVAR____TtC16CallIntelligence15VoicemailClient_smartActionsServer, type metadata accessor for SmartActionsServer);

  return swift_deallocClassInstance();
}

uint64_t sub_1D2EDA384(uint64_t a1)
{
  result = type metadata accessor for SmartActionsServer(319);
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

uint64_t sub_1D2EDA424(unint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v19 - v5;
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v7 = sub_1D2EE4618();
  __swift_project_value_buffer(v7, qword_1EC7466D0);

  v8 = sub_1D2EE45F8();
  v9 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 134217984;
    if (a1 >> 62)
    {
      v11 = sub_1D2EE50B8();
    }

    else
    {
      v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v10 + 4) = v11;

    _os_log_impl(&dword_1D2E46000, v8, v9, "Received %ld messages to process from FaceTimeMessageStore", v10, 0xCu);
    MEMORY[0x1D38AF660](v10, -1, -1);
  }

  else
  {
  }

  v12 = sub_1D2EDD6F0(a1);

  v13 = sub_1D2EE45F8();
  v14 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = v12[2];

    _os_log_impl(&dword_1D2E46000, v13, v14, "Filtered down to %ld with a transcript", v15, 0xCu);
    MEMORY[0x1D38AF660](v15, -1, -1);
  }

  else
  {
  }

  v16 = sub_1D2EE4CB8();
  (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = v2;
  v17[5] = v12;

  sub_1D2ED7FB0(0, 0, v6, &unk_1D2EF5E58, v17);
}

uint64_t sub_1D2EDA6EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1D2EDA70C, 0, 0);
}

uint64_t sub_1D2EDA70C()
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v1 = sub_1D2EE4618();
  v0[4] = __swift_project_value_buffer(v1, qword_1EC7466D0);
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Extracting actions from messages", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[5] = v5;
  *v5 = v0;
  v5[1] = sub_1D2EDA860;
  v6 = v0[3];

  return sub_1D2ED8E44(v6);
}

uint64_t sub_1D2EDA860(uint64_t a1)
{
  *(*v1 + 48) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D2EDA960, 0, 0);
}

uint64_t sub_1D2EDA960(uint64_t a1)
{
  v2 = sub_1D2EE45F8();
  v3 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D2E46000, v2, v3, "Proceeding to store predictions to db", v4, 2u);
    MEMORY[0x1D38AF660](v4, -1, -1);
  }

  v5 = *(v1 + 48);

  sub_1D2ED9858(v5);

  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DA8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&dword_1D2E46000, v6, v7, "Add Messages async task complete", v8, 2u);
    MEMORY[0x1D38AF660](v8, -1, -1);
  }

  v9 = *(v1 + 8);

  return v9();
}

void *sub_1D2EDABE8(unint64_t a1)
{
  v18 = sub_1D2EE3EB8();
  v3 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    v6 = sub_1D2EE50B8();
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = MEMORY[0x1E69E7CC0];
  if (!v6)
  {
LABEL_12:
    sub_1D2EDADDC(v7);
  }

  v16 = v1;
  v19 = MEMORY[0x1E69E7CC0];
  result = sub_1D2EDCA38(0, v6 & ~(v6 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v9 = 0;
    v7 = v19;
    v10 = a1;
    v17 = a1 & 0xC000000000000001;
    v11 = a1;
    do
    {
      if (v17)
      {
        v12 = MEMORY[0x1D38AEA70](v9, v10);
      }

      else
      {
        v12 = *(v10 + 8 * v9 + 32);
      }

      v13 = v12;
      sub_1D2EE44D8();

      v19 = v7;
      v15 = *(v7 + 16);
      v14 = *(v7 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_1D2EDCA38((v14 > 1), v15 + 1, 1);
        v7 = v19;
      }

      ++v9;
      *(v7 + 16) = v15 + 1;
      (*(v3 + 32))(v7 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v5, v18);
      v10 = v11;
    }

    while (v6 != v9);
    goto LABEL_12;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D2EDADDC(uint64_t a1)
{
  if (qword_1EC737C68 != -1)
  {
    swift_once();
  }

  v2 = sub_1D2EE4618();
  __swift_project_value_buffer(v2, qword_1EC7466D0);

  v3 = sub_1D2EE45F8();
  v4 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = *(a1 + 16);

    _os_log_impl(&dword_1D2E46000, v3, v4, "Deleting %ld messages from SmartActions table", v5, 0xCu);
    MEMORY[0x1D38AF660](v5, -1, -1);
  }

  else
  {
  }

  return sub_1D2ED47EC();
}

uint64_t sub_1D2EDB0AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t))
{
  (a4)(0, a2);
  v6 = sub_1D2EE4BE8();

  a5(v6);
}

uint64_t sub_1D2EDB12C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1D2E75F64;

  return v6(a1);
}

uint64_t sub_1D2EDB224(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t sub_1D2EDB284@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void sub_1D2EDB2B4(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_1D2EDB328(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397A8, &qword_1D2EF5EB0);
  v37 = v4;
  result = sub_1D2EE50D8();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + v22);
      v27 = v26[1];
      v38 = *v26;
      if ((v37 & 1) == 0)
      {
      }

      sub_1D2EE5338();
      sub_1D2EE4AC8();
      result = sub_1D2EE5378();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v7 + 56) + v16);
      *v18 = v38;
      v18[1] = v27;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

uint64_t sub_1D2EDB5E8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397F0, &qword_1D2EF5F08);
  v37 = v4;
  result = sub_1D2EE50D8();
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
      v19 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v22 = 16 * (v19 | (v8 << 6));
      v23 = (*(v5 + 48) + v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(v5 + 56) + v22;
      v27 = *v26;
      v38 = *(v26 + 8);
      if ((v37 & 1) == 0)
      {
      }

      sub_1D2EE5338();
      sub_1D2EE4AC8();
      result = sub_1D2EE5378();
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
      v16 = 16 * v15;
      v17 = (*(v7 + 48) + v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v7 + 56) + v16;
      *v18 = v27;
      *(v18 + 8) = v38;
      ++*(v7 + 16);
      v5 = v36;
    }

    v20 = v8;
    while (1)
    {
      v8 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
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

uint64_t sub_1D2EDB8A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397E8, &qword_1D2EF5F00);
  result = sub_1D2EE50D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v4;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      sub_1D2EE5338();
      MEMORY[0x1D38AEDD0](v20);
      result = sub_1D2EE5378();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

uint64_t sub_1D2EDBB2C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_1D2EE3EB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739798, &qword_1D2EF5EA0);
  v39 = v4;
  result = sub_1D2EE50D8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_1D2EDDD0C(&qword_1EC737CA8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      result = sub_1D2EE49E8();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
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
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

uint64_t sub_1D2EDBF08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739810, &qword_1D2EF5FA0);
  v35 = v4;
  result = sub_1D2EE50D8();
  v7 = result;
  if (*(v5 + 16))
  {
    v34 = v5;
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
      if ((v35 & 1) == 0)
      {

        v25 = v24;
      }

      sub_1D2EE5338();
      sub_1D2EE4AC8();
      result = sub_1D2EE5378();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v27) & ~*(v14 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v34;
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

    if ((v35 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero(v9, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v33;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

void sub_1D2EDC1AC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397A8, &qword_1D2EF5EB0);
  v2 = *v0;
  v3 = sub_1D2EE50C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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
}

void sub_1D2EDC324()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397F0, &qword_1D2EF5F08);
  v2 = *v0;
  v3 = sub_1D2EE50C8();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        LOBYTE(v21) = *(v21 + 8);
        v23 = (*(v4 + 48) + v17);
        *v23 = v20;
        v23[1] = v19;
        v24 = *(v4 + 56) + v17;
        *v24 = v22;
        *(v24 + 8) = v21;
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
}

void *sub_1D2EDC49C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397E8, &qword_1D2EF5F00);
  v2 = *v0;
  v3 = sub_1D2EE50C8();
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
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

void sub_1D2EDC5E8()
{
  v1 = v0;
  v33 = sub_1D2EE3EB8();
  v35 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739798, &qword_1D2EF5EA0);
  v3 = *v0;
  v4 = sub_1D2EE50C8();
  v5 = v4;
  if (*(v3 + 16))
  {
    v6 = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v28 = v1;
    v29 = v3 + 64;
    if (v5 != v3 || v6 >= &v7[8 * v8])
    {
      memmove(v6, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v34 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v30 = v35 + 32;
    v31 = v35 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v36 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v35;
        v20 = *(v35 + 72) * v18;
        v22 = v32;
        v21 = v33;
        (*(v35 + 16))(v32, *(v3 + 48) + v20, v33);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v3;
        v25 = v34;
        (*(v19 + 32))(*(v34 + 48) + v20, v22, v21);
        v26 = *(v25 + 56);
        v3 = v24;
        *(v26 + 8 * v18) = v23;

        v13 = v36;
      }

      while (v36);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v28;
        v5 = v34;
        goto LABEL_18;
      }

      v17 = *(v29 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v36 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }
}

id sub_1D2EDC868()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739810, &qword_1D2EF5FA0);
  v2 = *v0;
  v3 = sub_1D2EE50C8();
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

        result = v20;
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

void *sub_1D2EDC9D4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2EDCB80(a1, a2, a3, *v3, &qword_1EC7397A0, &qword_1D2EF5EA8, type metadata accessor for NewSmartAction);
  *v3 = result;
  return result;
}

char *sub_1D2EDCA18(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2EDCA7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1D2EDCA38(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1D2EDCB80(a1, a2, a3, *v3, &qword_1EC739778, &unk_1D2EF5E40, MEMORY[0x1E69695A8]);
  *v3 = result;
  return result;
}

char *sub_1D2EDCA7C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397D8, &qword_1D2EF5EE8);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

void *sub_1D2EDCB80(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

unint64_t sub_1D2EDCD5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397E0, &unk_1D2EF5EF0);
    v3 = sub_1D2EE50E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2E5D050(v4, v13, &qword_1EC739318, &qword_1D2EF4620);
      result = sub_1D2E4FD64(v13);
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
      result = sub_1D2EB5B88(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1D2EDCE98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397C0, &qword_1D2EF5EC8);
    v3 = sub_1D2EE50E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2E5D050(v4, &v13, &qword_1EC739408, &qword_1D2EF5ED0);
      v5 = v13;
      v6 = v14;
      result = sub_1D2E4FC44(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D2E4C014(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_1D2EDCFCC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397B0, &qword_1D2EF5EB8);
    v3 = sub_1D2EE50E8();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D2E5D050(v4, &v13, &qword_1EC7397B8, &qword_1D2EF5EC0);
      v5 = v13;
      v6 = v14;
      result = sub_1D2E4FC44(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D2EB5B88(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1D2EDD0FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397A8, &qword_1D2EF5EB0);
    v3 = sub_1D2EE50E8();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D2E4FC44(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1D2EDD210(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397F0, &qword_1D2EF5F08);
    v3 = sub_1D2EE50E8();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_1D2E4FC44(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
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

unint64_t sub_1D2EDD324(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397E8, &qword_1D2EF5F00);
    v3 = sub_1D2EE50E8();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_1D2E4FDA8(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
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

unint64_t sub_1D2EDD404(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397C8, &qword_1D2EF5ED8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739798, &qword_1D2EF5EA0);
    v7 = sub_1D2EE50E8();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D2E5D050(v9, v5, &qword_1EC7397C8, &qword_1D2EF5ED8);
      result = sub_1D2E4FE14(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D2EE3EB8();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
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

unint64_t sub_1D2EDD5EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739810, &qword_1D2EF5FA0);
    v3 = sub_1D2EE50E8();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D2E4FC44(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void *sub_1D2EDD6F0(unint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7397D0, &qword_1D2EF5EE0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v30 - v3;
  v5 = sub_1D2EE45A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v38 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SendableMessageWraper(0);
  v36 = *(v8 - 8);
  v37 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v35 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v30 - v11;
  if (a1 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D2EE50B8())
  {
    v14 = 0;
    v40 = a1 & 0xFFFFFFFFFFFFFF8;
    v41 = a1 & 0xC000000000000001;
    v39 = (v6 + 6);
    v30 = (v6 + 1);
    v31 = (v6 + 4);
    v6 = MEMORY[0x1E69E7CC0];
    v33 = v4;
    v34 = a1;
    v32 = i;
    while (1)
    {
      if (v41)
      {
        v15 = MEMORY[0x1D38AEA70](v14, a1);
      }

      else
      {
        if (v14 >= *(v40 + 16))
        {
          goto LABEL_18;
        }

        v15 = *(a1 + 8 * v14 + 32);
      }

      v16 = v15;
      v17 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      sub_1D2EE44E8();
      if ((*v39)(v4, 1, v5) == 1)
      {

        sub_1D2E5D0B8(v4, &qword_1EC7397D0, &qword_1D2EF5EE0);
      }

      else
      {
        v18 = v12;
        v19 = v5;
        v20 = v38;
        (*v31)(v38, v4, v19);
        v21 = v35;
        sub_1D2EE44D8();
        v22 = sub_1D2EE4598();
        v24 = v23;

        v25 = v20;
        v5 = v19;
        v12 = v18;
        (*v30)(v25, v5);
        v26 = (v21 + *(v37 + 20));
        *v26 = v22;
        v26[1] = v24;
        sub_1D2EDDD54(v21, v18, type metadata accessor for SendableMessageWraper);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v6 = sub_1D2EC8560(0, v6[2] + 1, 1, v6);
        }

        v28 = v6[2];
        v27 = v6[3];
        v4 = v33;
        a1 = v34;
        i = v32;
        if (v28 >= v27 >> 1)
        {
          v6 = sub_1D2EC8560((v27 > 1), v28 + 1, 1, v6);
        }

        v6[2] = v28 + 1;
        sub_1D2EDDD54(v12, v6 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v28, type metadata accessor for SendableMessageWraper);
      }

      ++v14;
      if (v17 == i)
      {
        return v6;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1D2EDDAF4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D2E5BA34;

  return sub_1D2EDA6EC(a1, v4, v5, v7, v6);
}

uint64_t sub_1D2EDDBB4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739788, &qword_1D2EF5E90);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D2EDDC44(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2EDDCAC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D2EDDD0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D2EDDD54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2EDDDBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D2E5BA34;

  return sub_1D2ED8878(a1, v4, v5, v6);
}

uint64_t sub_1D2EDDE98(uint64_t a1)
{
  result = sub_1D2EE3EB8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D2EDDF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[14] = a2;
  v3[15] = a3;
  v3[13] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D2EDDF78, 0, 0);
}

uint64_t sub_1D2EDDF78()
{
  v1 = v0[15];
  v2 = *(v1 + 16);
  v0[16] = v2;
  if (!v2)
  {
LABEL_8:
    v12 = v0[1];

    return v12();
  }

  v3 = 0;
  while (1)
  {
    v0[17] = v3;
    v4 = v0[13];
    v5 = (v1 + 32 * v3);
    v0[18] = v5[5];
    v6 = v5[6];
    v0[19] = v5[7];

    v0[20] = v6(v4);
    v0[21] = v7;
    if (v8)
    {
      goto LABEL_6;
    }

    v9 = sub_1D2EE4048();
    v0[22] = v9;
    if (v9)
    {
      break;
    }

    sub_1D2EDE5A0(v0[20], v0[21], 0);
LABEL_6:
    v11 = v0[16];
    v10 = v0[17];

    if (v10 + 1 == v11)
    {
      goto LABEL_8;
    }

    v3 = v0[17] + 1;
    v1 = v0[15];
  }

  v14 = v9;
  v15 = swift_task_alloc();
  v0[23] = v15;
  *v15 = v0;
  v15[1] = sub_1D2EDE134;
  v16.n128_u64[0] = 0;

  return MEMORY[0x1EEDF2D08](v14, v16);
}

uint64_t sub_1D2EDE134(uint64_t a1)
{
  *(*v1 + 192) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D2EDE254, 0, 0);
}

uint64_t sub_1D2EDE254()
{
  *(v0 + 88) = 0x73736563637573;
  v1 = *(v0 + 192);
  *(v0 + 96) = 0xE700000000000000;
  sub_1D2EE4F68();
  if (*(v1 + 16) && (v2 = sub_1D2E4FD64(v0 + 16), (v3 & 1) != 0))
  {
    sub_1D2E68F60(*(*(v0 + 192) + 56) + 32 * v2, v0 + 56);
    sub_1D2E5073C(v0 + 16);

    if (swift_dynamicCast())
    {
      v4 = *(v0 + 200);
    }

    else
    {
      v4 = 2;
    }
  }

  else
  {

    sub_1D2E5073C(v0 + 16);
    v4 = 2;
  }

  if (qword_1EC737C70 != -1)
  {
    swift_once();
  }

  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EC7466E8);
  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v9 = v4 != 2 && (v4 & 1) != 0;
    *(v8 + 4) = v9;
    v10 = v7;
    v11 = v8;
    _os_log_impl(&dword_1D2E46000, v6, v10, "ABC rule conditions met. Report triggered=%{BOOL}d", v8, 8u);
    MEMORY[0x1D38AF660](v11, -1, -1);
  }

  while (2)
  {
    sub_1D2EDE5A0(*(v0 + 160), *(v0 + 168), 0);
    do
    {
      v13 = *(v0 + 128);
      v12 = *(v0 + 136);

      if (v12 + 1 == v13)
      {
        v24 = *(v0 + 8);

        return v24();
      }

      v14 = *(v0 + 136) + 1;
      *(v0 + 136) = v14;
      v15 = *(v0 + 104);
      v16 = (*(v0 + 120) + 32 * v14);
      *(v0 + 144) = v16[5];
      v17 = v16[6];
      *(v0 + 152) = v16[7];

      *(v0 + 160) = v17(v15);
      *(v0 + 168) = v18;
    }

    while ((v19 & 1) != 0);
    v20 = sub_1D2EE4048();
    *(v0 + 176) = v20;
    if (!v20)
    {
      continue;
    }

    break;
  }

  v21 = v20;
  v22 = swift_task_alloc();
  *(v0 + 184) = v22;
  *v22 = v0;
  v22[1] = sub_1D2EDE134;
  v23.n128_u64[0] = 0;

  return MEMORY[0x1EEDF2D08](v21, v23);
}

uint64_t sub_1D2EDE5A0(uint64_t a1, uint64_t a2, char a3)
{
  if ((a3 & 1) == 0)
  {
  }

  return result;
}

uint64_t sub_1D2EDE5D8(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739268, &unk_1D2EF43B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19[-1] - v3;
  v5 = type metadata accessor for AudioHistEvent(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = (&v19[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if ((*(v10 + 8))(v9, v10) == 0xD000000000000037 && 0x80000001D2EE7580 == v11)
  {
  }

  else
  {
    v13 = sub_1D2EE5288();

    if ((v13 & 1) == 0)
    {
      return 3;
    }
  }

  sub_1D2E6912C(a1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739820, &unk_1D2EF5FF0);
  v15 = swift_dynamicCast();
  v16 = *(v6 + 56);
  if (v15)
  {
    v16(v4, 0, 1, v5);
    sub_1D2EDF244(v4, v8, type metadata accessor for AudioHistEvent);
    if ((v8[19] & 1) != 0 || v8[18] < 0.9 || (*(v8 + 217) & 1) != 0 || *(v8 + 219) != 4)
    {
      sub_1D2EDF2AC(v8, type metadata accessor for AudioHistEvent);
      return 2;
    }

    else
    {
      v19[0] = 0;
      v19[1] = 0xE000000000000000;
      sub_1D2EE4FB8();
      MEMORY[0x1D38AE570](0x6F7250636973756DLL, 0xED0000203D3E2062);
      sub_1D2EE4D58();
      MEMORY[0x1D38AE570](0xD000000000000017, 0x80000001D2EE9090);
      v17 = v19[0];
      sub_1D2EDF2AC(v8, type metadata accessor for AudioHistEvent);
      return v17;
    }
  }

  else
  {
    v16(v4, 1, 1, v5);
    sub_1D2E5D0B8(v4, &qword_1EC739268, &unk_1D2EF43B8);
    return 0;
  }
}

uint64_t sub_1D2EDE93C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739268, &unk_1D2EF43B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20[-v3 - 8];
  v5 = type metadata accessor for AudioHistEvent(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if ((*(v10 + 8))(v9, v10) == 0xD000000000000037 && 0x80000001D2EE7580 == v11)
  {
  }

  else
  {
    v13 = sub_1D2EE5288();

    if ((v13 & 1) == 0)
    {
      return 3;
    }
  }

  sub_1D2E6912C(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739820, &unk_1D2EF5FF0);
  v15 = swift_dynamicCast();
  v16 = *(v6 + 56);
  if (v15)
  {
    v16(v4, 0, 1, v5);
    sub_1D2EDF244(v4, v8, type metadata accessor for AudioHistEvent);
    v17 = v8[219];
    if (v17 == 3 || v17 == 4)
    {
      sub_1D2EDF2AC(v8, type metadata accessor for AudioHistEvent);
      return 1;
    }

    else
    {
      v20[0] = v8[219];
      v18 = sub_1D2EE4AA8();
      sub_1D2EDF2AC(v8, type metadata accessor for AudioHistEvent);
      return v18;
    }
  }

  else
  {
    v16(v4, 1, 1, v5);
    sub_1D2E5D0B8(v4, &qword_1EC739268, &unk_1D2EF43B8);
    return 0;
  }
}

unint64_t sub_1D2EDEC20(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739818, &qword_1D2EF5FE8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v19 - v3;
  v5 = type metadata accessor for ReturnToCallPredictorEvent(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if ((*(v10 + 8))(v9, v10) == 0xD000000000000030 && 0x80000001D2EE7080 == v11)
  {
  }

  else
  {
    v13 = sub_1D2EE5288();

    if ((v13 & 1) == 0)
    {
      return 3;
    }
  }

  sub_1D2E6912C(a1, &v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739820, &unk_1D2EF5FF0);
  v15 = swift_dynamicCast();
  v16 = *(v6 + 56);
  if (v15)
  {
    v16(v4, 0, 1, v5);
    sub_1D2EDF244(v4, v8, type metadata accessor for ReturnToCallPredictorEvent);
    if ((v8[240] & 1) != 0 || *(v8 + 29) < 0x191uLL || v8[225] != 8)
    {
      sub_1D2EDF2AC(v8, type metadata accessor for ReturnToCallPredictorEvent);
      return 2;
    }

    else
    {
      v20 = 0;
      v21 = 0xE000000000000000;
      sub_1D2EE4FB8();

      v20 = 0xD000000000000014;
      v21 = 0x80000001D2EE9070;
      v19 = 400;
      v17 = sub_1D2EE5258();
      MEMORY[0x1D38AE570](v17);

      v18 = v20;
      sub_1D2EDF2AC(v8, type metadata accessor for ReturnToCallPredictorEvent);
      return v18;
    }
  }

  else
  {
    v16(v4, 1, 1, v5);
    sub_1D2E5D0B8(v4, &qword_1EC739818, &qword_1D2EF5FE8);
    return 0;
  }
}

uint64_t sub_1D2EDEF60(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739818, &qword_1D2EF5FE8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v20[-v3 - 8];
  v5 = type metadata accessor for ReturnToCallPredictorEvent(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v9 = a1[3];
  v10 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v9);
  if ((*(v10 + 8))(v9, v10) == 0xD000000000000030 && 0x80000001D2EE7080 == v11)
  {
  }

  else
  {
    v13 = sub_1D2EE5288();

    if ((v13 & 1) == 0)
    {
      return 3;
    }
  }

  sub_1D2E6912C(a1, v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739820, &unk_1D2EF5FF0);
  v15 = swift_dynamicCast();
  v16 = *(v6 + 56);
  if (v15)
  {
    v16(v4, 0, 1, v5);
    sub_1D2EDF244(v4, v8, type metadata accessor for ReturnToCallPredictorEvent);
    v17 = v8[225];
    if (v17 == 3 || v17 == 8)
    {
      sub_1D2EDF2AC(v8, type metadata accessor for ReturnToCallPredictorEvent);
      return 1;
    }

    else
    {
      v20[0] = v8[225];
      v18 = sub_1D2EE4AA8();
      sub_1D2EDF2AC(v8, type metadata accessor for ReturnToCallPredictorEvent);
      return v18;
    }
  }

  else
  {
    v16(v4, 1, 1, v5);
    sub_1D2E5D0B8(v4, &qword_1EC739818, &qword_1D2EF5FE8);
    return 0;
  }
}

uint64_t sub_1D2EDF244(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D2EDF2AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D2EDF30C()
{
  v1 = v0;
  v2 = sub_1D2EDD5EC(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (*(v1 + 152))
  {
    v5 = 0.0;
  }

  else
  {
    v5 = *(v1 + 144);
  }

  v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v7 = [v6 initWithDouble_];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v7, v3, v4, isUniquelyReferenced_nonNull_native);

  v9 = *(v1 + 32);
  v10 = *(v1 + 40);
  if (*(v1 + 168))
  {
    v11 = 0.0;
  }

  else
  {
    v11 = *(v1 + 160);
  }

  v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v13 = [v12 initWithDouble_];
  v14 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v13, v9, v10, v14);

  v15 = *(v1 + 48);
  v16 = *(v1 + 56);
  if (*(v1 + 184))
  {
    v17 = 0.0;
  }

  else
  {
    v17 = *(v1 + 176);
  }

  v18 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v19 = [v18 initWithDouble_];
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v19, v15, v16, v20);

  v21 = *(v1 + 64);
  v22 = *(v1 + 72);
  if (*(v1 + 200))
  {
    v23 = 0.0;
  }

  else
  {
    v23 = *(v1 + 192);
  }

  v24 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v25 = [v24 initWithDouble_];
  v26 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v25, v21, v22, v26);

  v27 = *(v1 + 80);
  v28 = *(v1 + 88);
  if (*(v1 + 216))
  {
    v29 = 0.0;
  }

  else
  {
    v29 = *(v1 + 208);
  }

  v30 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v31 = [v30 initWithDouble_];
  v32 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v31, v27, v28, v32);

  v33 = *(v1 + 96);
  v34 = *(v1 + 104);
  v35 = *(v1 + 217);
  v36 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v37 = [v36 initWithBool_];
  v38 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v37, v33, v34, v38);

  v39 = *(v1 + 218);
  if (v39 != 3)
  {
    v40 = *(v1 + 112);
    v41 = *(v1 + 120);
    v42 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v43 = [v42 initWithUnsignedChar_];
    v44 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v43, v40, v41, v44);
  }

  v45 = *(v1 + 219);
  if (v45 != 4)
  {
    v47 = *(v1 + 128);
    v46 = *(v1 + 136);
    v48 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v49 = [v48 initWithUnsignedChar_];
    v50 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v49, v47, v46, v50);
  }

  return v2;
}

unsigned __int8 *sub_1D2EDF6C8@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (v2 >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

uint64_t sub_1D2EDF6E0()
{
  sub_1D2EE5338();
  sub_1D2EE5358();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EDF728(uint64_t a1)
{
  sub_1D2EE5338();
  sub_1D2EE5358();
  return sub_1D2EE5378();
}

uint64_t sub_1D2EDF76C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D2EDFA7C(*a1);
  *a2 = result;
  return result;
}

uint64_t type metadata accessor for AudioHistEvent(uint64_t a1)
{
  result = qword_1EC739828;
  if (!qword_1EC739828)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2EDF81C(uint64_t a1)
{
  sub_1D2EDF93C(319, &qword_1EC739838, MEMORY[0x1E69E63B0]);
  if (v1 <= 0x3F)
  {
    sub_1D2EDF93C(319, &qword_1EC739840, &type metadata for AudioHistEvent.TipUserAction);
    if (v2 <= 0x3F)
    {
      sub_1D2EDF93C(319, &qword_1EC739848, &type metadata for AudioHistEvent.AudioHistEventError);
      if (v3 <= 0x3F)
      {
        sub_1D2EE3E48();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D2EDF93C(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D2EE4E58();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D2EDF99C()
{
  result = qword_1EC739850;
  if (!qword_1EC739850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739850);
  }

  return result;
}

unint64_t sub_1D2EDF9F4()
{
  result = qword_1EC739858;
  if (!qword_1EC739858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC739858);
  }

  return result;
}

uint64_t sub_1D2EDFA48()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D2EDFA7C(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1D2EDFAC8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC739040, &qword_1D2EF2460);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v32 - v3;
  if (qword_1EC737C70 != -1)
  {
    swift_once();
  }

  v5 = sub_1D2EE4618();
  __swift_project_value_buffer(v5, qword_1EC7466E8);
  sub_1D2EE01D4(v0, &aBlock);
  sub_1D2EE01D4(v0, &v37);
  v6 = sub_1D2EE45F8();
  v7 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 136315394;
    v10 = *(&v34 + 1);
    v11 = v35;
    __swift_project_boxed_opaque_existential_1(&aBlock, *(&v34 + 1));
    v12 = (*(v11 + 1))(v10, v11);
    v14 = v13;
    sub_1D2E8E940(&aBlock);
    v15 = sub_1D2E685B0(v12, v14, &v32);

    *(v8 + 4) = v15;
    *(v8 + 12) = 2080;
    v16 = *(&v38 + 1);
    v17 = v39;
    __swift_project_boxed_opaque_existential_1(&v37, *(&v38 + 1));
    (*(v17 + 16))(v16, v17);
    sub_1D2EE0328();
    v18 = sub_1D2EE49C8();
    v20 = v19;

    sub_1D2E8E940(&v37);
    v21 = sub_1D2E685B0(v18, v20, &v32);

    *(v8 + 14) = v21;
    _os_log_impl(&dword_1D2E46000, v6, v7, "CoreAnalytics submission %s: %s", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D38AF660](v9, -1, -1);
    MEMORY[0x1D38AF660](v8, -1, -1);
  }

  else
  {

    sub_1D2E8E940(&v37);
    sub_1D2E8E940(&aBlock);
  }

  v22 = v1[3];
  v23 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v22);
  (*(v23 + 8))(v22, v23);
  v24 = sub_1D2EE4A38();

  sub_1D2EE01D4(v1, &v37);
  v25 = swift_allocObject();
  v26 = v38;
  *(v25 + 16) = v37;
  *(v25 + 32) = v26;
  *(v25 + 48) = v39;
  v35 = sub_1D2EE020C;
  v36 = v25;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v34 = sub_1D2EDFF24;
  *(&v34 + 1) = &block_descriptor_3;
  v27 = _Block_copy(&aBlock);

  AnalyticsSendEventLazy();
  _Block_release(v27);

  v28 = sub_1D2EE4CB8();
  (*(*(v28 - 8) + 56))(v4, 1, 1, v28);
  sub_1D2EE01D4(v1, &aBlock);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v29 + 24) = 0;
  v30 = v34;
  *(v29 + 32) = aBlock;
  *(v29 + 48) = v30;
  *(v29 + 64) = v35;
  sub_1D2E8CB18(0, 0, v4, &unk_1D2EF61D0, v29);

  return sub_1D2E82AB8(v4);
}

id sub_1D2EDFF24(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  if (v3)
  {
    sub_1D2EE0328();
    v4 = sub_1D2EE49A8();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t sub_1D2EDFFD0()
{
  sub_1D2EE4058();
  swift_allocObject();
  v1 = sub_1D2EE4028();
  v0[3] = v1;
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_1D2EE00C4;
  v3 = v0[2];

  return sub_1D2EDDF54(v3, v1, &unk_1F4E91688);
}

uint64_t sub_1D2EE00C4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D2EE020C()
{
  v1 = v0[5];
  v2 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v1);
  return (*(v2 + 16))(v1, v2);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D2EE0278(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1D2E5BA34;

  return sub_1D2EDFFB0(a1, v4, v5, v1 + 32);
}

unint64_t sub_1D2EE0328()
{
  result = qword_1EC739860;
  if (!qword_1EC739860)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC739860);
  }

  return result;
}

uint64_t sub_1D2EE0374(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D2EE03BC(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t type metadata accessor for ReturnToCallPredictorEvent(uint64_t a1)
{
  result = qword_1EC739868;
  if (!qword_1EC739868)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D2EE0488(uint64_t a1)
{
  sub_1D2EDF93C(319, &qword_1EC739878, MEMORY[0x1E69E6370]);
  if (v1 <= 0x3F)
  {
    sub_1D2EDF93C(319, &qword_1EC739880, MEMORY[0x1E69E6530]);
    if (v2 <= 0x3F)
    {
      sub_1D2EDF93C(319, &qword_1EC739888, MEMORY[0x1E69E76D8]);
      if (v3 <= 0x3F)
      {
        sub_1D2EDF93C(319, &qword_1EC739890, &type metadata for ReturnToCallModelError);
        if (v4 <= 0x3F)
        {
          sub_1D2EDF93C(319, &qword_1EC739898, &type metadata for ReturnToCallRequired);
          if (v5 <= 0x3F)
          {
            sub_1D2EDF93C(319, &qword_1EC7398A0, &type metadata for ReturnToCallPredictorEvent.UserAction);
            if (v6 <= 0x3F)
            {
              sub_1D2EE3E48();
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

unint64_t sub_1D2EE0654()
{
  v1 = v0;
  v2 = sub_1D2EDD5EC(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 192);
  if (v3 != 2)
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 24);
    v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v7 = [v6 initWithBool_];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v7, v4, v5, isUniquelyReferenced_nonNull_native);
  }

  if ((*(v1 + 208) & 1) == 0)
  {
    v9 = *(v1 + 200);
    v10 = *(v1 + 32);
    v11 = *(v1 + 40);
    v12 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v13 = [v12 initWithInteger_];
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v13, v10, v11, v14);
  }

  if ((*(v1 + 224) & 1) == 0)
  {
    v15 = *(v1 + 216);
    v16 = *(v1 + 48);
    v17 = *(v1 + 56);
    v18 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v19 = [v18 initWithUnsignedLongLong_];
    v20 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v19, v16, v17, v20);
  }

  v21 = *(v1 + 225);
  if (v21 <= 3)
  {
    v23 = 2;
    if (v21 != 2)
    {
      v23 = 3;
    }

    v24 = 1;
    if (!*(v1 + 225))
    {
      v24 = *(v1 + 225);
    }

    if (*(v1 + 225) <= 1u)
    {
      v22 = v24;
    }

    else
    {
      v22 = v23;
    }
  }

  else if (*(v1 + 225) <= 5u)
  {
    if (v21 == 4)
    {
      v22 = 4;
    }

    else
    {
      v22 = 5;
    }
  }

  else if (v21 == 6)
  {
    v22 = 6;
  }

  else
  {
    if (v21 != 7)
    {
      goto LABEL_24;
    }

    v22 = 7;
  }

  v25 = *(v1 + 64);
  v26 = *(v1 + 72);
  v27 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v28 = [v27 initWithInteger_];
  v29 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v28, v25, v26, v29);

LABEL_24:
  v30 = *(v1 + 226);
  if (v30 != 2)
  {
    v31 = *(v1 + 80);
    v32 = *(v1 + 88);
    v33 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v34 = [v33 initWithBool_];
    v35 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v34, v31, v32, v35);
  }

  if ((*(v1 + 240) & 1) == 0)
  {
    v36 = *(v1 + 232);
    v37 = *(v1 + 96);
    v38 = *(v1 + 104);
    v39 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v40 = [v39 initWithUnsignedLongLong_];
    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v40, v37, v38, v41);
  }

  v42 = *(v1 + 256);
  if (v42 != 255)
  {
    v43 = *(v1 + 112);
    v44 = *(v1 + 120);
    v45 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v46 = [v45 initWithInteger_];
    v47 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v46, v43, v44, v47);
  }

  v48 = *(v1 + 257);
  if (v48 == 3)
  {
    if (*(v1 + 272))
    {
      goto LABEL_32;
    }

LABEL_36:
    v67 = *(v1 + 264);
    v68 = *(v1 + 144);
    v69 = *(v1 + 152);
    v70 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v71 = [v70 initWithInteger_];
    v72 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v71, v68, v69, v72);

    if (*(v1 + 288))
    {
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v62 = *(v1 + 128);
  v63 = *(v1 + 136);
  v64 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v65 = [v64 initWithInteger_];
  v66 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v65, v62, v63, v66);

  if ((*(v1 + 272) & 1) == 0)
  {
    goto LABEL_36;
  }

LABEL_32:
  if ((*(v1 + 288) & 1) == 0)
  {
LABEL_33:
    v49 = *(v1 + 280);
    v50 = *(v1 + 176);
    v51 = *(v1 + 184);
    v52 = objc_allocWithZone(MEMORY[0x1E696AD98]);

    v53 = [v52 initWithInteger_];
    v54 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D2EC8FF0(v53, v50, v51, v54);
  }

LABEL_34:
  v55 = *(v1 + 160);
  v56 = *(v1 + 168);
  v57 = *(v1 + *(type metadata accessor for ReturnToCallPredictorEvent(0) + 108));
  v58 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v59 = [v58 initWithDouble_];
  v60 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D2EC8FF0(v59, v55, v56, v60);

  return v2;
}

unint64_t *sub_1D2EE0BB8@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

unint64_t sub_1D2EE0BD4()
{
  result = qword_1EC7398A8;
  if (!qword_1EC7398A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7398A8);
  }

  return result;
}

uint64_t sub_1D2EE0C2C@<X0>(char a1@<W0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v6 = type metadata accessor for ReturnToCallPredictorEvent(0);
  result = sub_1D2EE3E38();
  *a2 = 0xD000000000000030;
  *(a2 + 8) = 0x80000001D2EE7080;
  *(a2 + 16) = 0x69685F6568636163;
  *(a2 + 24) = 0xE900000000000074;
  *(a2 + 32) = 0x69735F6568636163;
  *(a2 + 40) = 0xEA0000000000657ALL;
  *(a2 + 48) = 0xD000000000000010;
  *(a2 + 56) = 0x80000001D2EE70C0;
  strcpy((a2 + 64), "failure_reason");
  *(a2 + 79) = -18;
  *(a2 + 80) = 0xD000000000000015;
  *(a2 + 88) = 0x80000001D2EE70E0;
  *(a2 + 96) = 0xD000000000000012;
  *(a2 + 104) = 0x80000001D2EE7100;
  *(a2 + 112) = 0x746C75736572;
  *(a2 + 120) = 0xE600000000000000;
  *(a2 + 128) = 0x7463615F72657375;
  *(a2 + 136) = 0xEB000000006E6F69;
  strcpy((a2 + 144), "utterance_size");
  *(a2 + 159) = -18;
  *(a2 + 160) = 0xD000000000000010;
  *(a2 + 168) = 0x80000001D2EE7120;
  *(a2 + 176) = 0x6574636172616863;
  *(a2 + 184) = 0xEF746E756F635F72;
  *(a2 + 192) = 2;
  *(a2 + 200) = 0;
  *(a2 + 208) = 1;
  *(a2 + 216) = 0;
  *(a2 + 224) = 1;
  *(a2 + 225) = a1;
  *(a2 + 226) = 2;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
  *(a2 + 248) = 0;
  *(a2 + 256) = 1023;
  *(a2 + 264) = 0;
  *(a2 + 272) = 1;
  *(a2 + 280) = 0;
  *(a2 + 288) = 1;
  *(a2 + *(v6 + 108)) = a3;
  return result;
}

uint64_t sub_1D2EE0E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 16) == 1)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  if (*(a1 + 16))
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = type metadata accessor for ReturnToCallPredictorEvent(0);
  result = sub_1D2EE3E38();
  *a2 = 0xD000000000000030;
  *(a2 + 8) = 0x80000001D2EE7080;
  *(a2 + 16) = 0x69685F6568636163;
  *(a2 + 24) = 0xE900000000000074;
  *(a2 + 32) = 0x69735F6568636163;
  *(a2 + 40) = 0xEA0000000000657ALL;
  *(a2 + 48) = 0xD000000000000010;
  *(a2 + 56) = 0x80000001D2EE70C0;
  strcpy((a2 + 64), "failure_reason");
  *(a2 + 79) = -18;
  *(a2 + 80) = 0xD000000000000015;
  *(a2 + 88) = 0x80000001D2EE70E0;
  *(a2 + 96) = 0xD000000000000012;
  *(a2 + 104) = 0x80000001D2EE7100;
  *(a2 + 112) = 0x746C75736572;
  *(a2 + 120) = 0xE600000000000000;
  *(a2 + 128) = 0x7463615F72657375;
  *(a2 + 136) = 0xEB000000006E6F69;
  strcpy((a2 + 144), "utterance_size");
  *(a2 + 159) = -18;
  *(a2 + 160) = 0xD000000000000010;
  *(a2 + 168) = 0x80000001D2EE7120;
  *(a2 + 176) = 0x6574636172616863;
  *(a2 + 184) = 0xEF746E756F635F72;
  *(a2 + 192) = 2;
  *(a2 + 200) = 0;
  *(a2 + 208) = 1;
  *(a2 + 216) = 0;
  *(a2 + 224) = 1;
  *(a2 + 225) = 520;
  *(a2 + 232) = 0;
  *(a2 + 240) = 1;
  *(a2 + 248) = 0;
  *(a2 + 256) = -1;
  *(a2 + 257) = v4;
  *(a2 + 264) = 0;
  *(a2 + 272) = 1;
  *(a2 + 280) = 0;
  *(a2 + 288) = 1;
  *(a2 + *(v5 + 108)) = 0;
  return result;
}

uint64_t sub_1D2EE101C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(a1 + 144);
  v5 = *(a1 + 152);
  v6 = *(a1 + 160);
  v7 = *(a1 + 168);
  v8 = *(a1 + 176);
  v9 = *(a1 + 184);
  v10 = *(a1 + 192);
  v11 = *(a1 + 200);
  v12 = *(a1 + 208);
  v15 = *(a1 + 216);
  v14 = *(a1 + 217);
  type metadata accessor for AudioHistEvent(0);
  result = sub_1D2EE3E38();
  *a3 = 0xD000000000000037;
  *(a3 + 8) = 0x80000001D2EE7580;
  *(a3 + 16) = 0xD000000000000011;
  *(a3 + 24) = 0x80000001D2EE75C0;
  *(a3 + 32) = 0xD000000000000014;
  *(a3 + 40) = 0x80000001D2EE75E0;
  *(a3 + 48) = 0xD000000000000011;
  *(a3 + 56) = 0x80000001D2EE7600;
  *(a3 + 64) = 0xD000000000000013;
  *(a3 + 72) = 0x80000001D2EE7620;
  *(a3 + 80) = 0xD000000000000012;
  *(a3 + 88) = 0x80000001D2EE7640;
  *(a3 + 96) = 0x6F6365725F706974;
  *(a3 + 104) = 0xEF6465646E656D6DLL;
  *(a3 + 112) = 0x726573755F706974;
  *(a3 + 120) = 0xEF6E6F697463615FLL;
  strcpy((a3 + 128), "failure_reason");
  *(a3 + 143) = -18;
  *(a3 + 144) = v4;
  *(a3 + 152) = v5;
  *(a3 + 160) = v6;
  *(a3 + 168) = v7;
  *(a3 + 176) = v8;
  *(a3 + 184) = v9;
  *(a3 + 192) = v10;
  *(a3 + 200) = v11;
  *(a3 + 208) = v12;
  *(a3 + 216) = v15;
  *(a3 + 217) = v14;
  *(a3 + 218) = a2;
  *(a3 + 219) = 4;
  return result;
}

uint64_t sub_1D2EE11EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1D2EE1234(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D2EE1290(uint64_t a1@<X8>)
{
  v2 = v1;
  if ((sub_1D2E6A298(*(v1 + 48)) & 1) == 0)
  {
    if (qword_1EDECF8A8 != -1)
    {
      swift_once();
    }

    v59 = sub_1D2EE4618();
    __swift_project_value_buffer(v59, qword_1EDED2D38);
    v60 = sub_1D2EE45F8();
    v61 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&dword_1D2E46000, v60, v61, "Trial experiments disabled by server bag - returning default Hold Assist Configuration", v62, 2u);
      MEMORY[0x1D38AF660](v62, -1, -1);
    }

    goto LABEL_71;
  }

  if (qword_1EDECF8A8 != -1)
  {
    swift_once();
  }

  v4 = sub_1D2EE4618();
  __swift_project_value_buffer(v4, qword_1EDED2D38);
  v5 = sub_1D2EE45F8();
  v6 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&dword_1D2E46000, v5, v6, "Subscribing to trial", v7, 2u);
    MEMORY[0x1D38AF660](v7, -1, -1);
  }

  v8 = [objc_opt_self() clientWithIdentifier_];
  if (!v8)
  {
    v63 = sub_1D2EE45F8();
    v64 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1D2E46000, v63, v64, "TRIClient is nil", v65, 2u);
      MEMORY[0x1D38AF660](v65, -1, -1);
    }

    v55 = xmmword_1D2EF6320;
    v56 = xmmword_1D2EF6330;
    v52 = xmmword_1D2EF6340;
    v30 = 0.5;
    if (!*(v1 + 24))
    {
      v51 = vdupq_n_s64(0xAuLL);
LABEL_72:
      v58 = 5;
      v57 = 30;
      v32 = 0.6;
      v33 = 0.3;
      v29 = 1000;
      v36 = 0.5;
      goto LABEL_73;
    }

    sub_1D2EE213C(&v109);
    if (sub_1D2EE2650(&v109) == 1)
    {
      v51 = vdupq_n_s64(0xAuLL);
      v58 = 5;
      v57 = 30;
      v32 = 0.6;
      v33 = 0.3;
      v29 = 1000;
      v36 = 0.5;
      v55 = xmmword_1D2EF6320;
      v52 = xmmword_1D2EF6340;
      v56 = xmmword_1D2EF6330;
      goto LABEL_73;
    }

    v92 = v110;
    v30 = *(&v111 + 1);
    v29 = v111;
    v95 = v112;
    v32 = *(&v113 + 1);
    v33 = *&v113;
    v98 = v114;
    v101 = v109;
    v36 = *&v115[8];
    v57 = *v115;
    v58 = *&v115[16];
    v81 = sub_1D2EE45F8();
    v82 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_1D2E46000, v81, v82, "Returning config from default path", v83, 2u);
      MEMORY[0x1D38AF660](v83, -1, -1);
    }

LABEL_65:
    v55 = v98;
    v52 = v101;
    v56 = v95;
    v51 = v92;
    goto LABEL_73;
  }

  v9 = v8;
  [v9 refresh];
  v10 = sub_1D2EE4A38();
  v11 = [v9 experimentIdentifiersWithNamespaceName_];

  if (!v11)
  {
    v66 = sub_1D2EE45F8();
    v67 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_1D2E46000, v66, v67, "experimentIds is nil, no active experiment", v68, 2u);
      MEMORY[0x1D38AF660](v68, -1, -1);
    }

    if (*(v1 + 24))
    {
      sub_1D2EE213C(&v109);
      if (sub_1D2EE2650(&v109) != 1)
      {
        v92 = v110;
        v30 = *(&v111 + 1);
        v29 = v111;
        v95 = v112;
        v32 = *(&v113 + 1);
        v33 = *&v113;
        v98 = v114;
        v101 = v109;
        v36 = *&v115[8];
        v57 = *v115;
        v58 = *&v115[16];
        v69 = sub_1D2EE45F8();
        v70 = sub_1D2EE4DD8();
        if (os_log_type_enabled(v69, v70))
        {
          v71 = swift_slowAlloc();
          *v71 = 0;
          _os_log_impl(&dword_1D2E46000, v69, v70, "Returning config from default path", v71, 2u);
          MEMORY[0x1D38AF660](v71, -1, -1);
        }

        goto LABEL_64;
      }
    }

    goto LABEL_55;
  }

  v12 = v11;
  v13 = sub_1D2EE45F8();
  v14 = sub_1D2EE4DD8();

  v93 = v12;
  if (os_log_type_enabled(v13, v14))
  {
    v99 = v9;
    v15 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v109.i64[0] = v96;
    *v15 = 136315138;
    v16 = v12;
    v17 = [v16 description];
    v18 = sub_1D2EE4A68();
    v20 = v19;

    v21 = sub_1D2E685B0(v18, v20, v109.i64);

    *(v15 + 4) = v21;
    _os_log_impl(&dword_1D2E46000, v13, v14, "experimentIds: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v96);
    MEMORY[0x1D38AF660](v96, -1, -1);
    v22 = v15;
    v9 = v99;
    MEMORY[0x1D38AF660](v22, -1, -1);
  }

  v23 = sub_1D2EE4A38();
  v24 = sub_1D2EE4A38();
  v25 = [v9 levelForFactor:v23 withNamespaceName:v24];

  if (!v25)
  {
    v78 = sub_1D2EE45F8();
    v79 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_1D2E46000, v78, v79, "Invalid Trial level", v80, 2u);
      MEMORY[0x1D38AF660](v80, -1, -1);
    }

    if (*(v2 + 24))
    {
      sub_1D2EE213C(&v109);
      if (sub_1D2EE2650(&v109) != 1)
      {
        v92 = v110;
        v30 = *(&v111 + 1);
        v29 = v111;
        v95 = v112;
        v32 = *(&v113 + 1);
        v33 = *&v113;
        v98 = v114;
        v101 = v109;
        v36 = *&v115[8];
        v57 = *v115;
        v58 = *&v115[16];
        v84 = sub_1D2EE45F8();
        v85 = sub_1D2EE4DD8();
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_1D2E46000, v84, v85, "Returning config from default path", v86, 2u);
          MEMORY[0x1D38AF660](v86, -1, -1);
        }

        goto LABEL_63;
      }
    }

LABEL_55:
LABEL_71:
    v55 = xmmword_1D2EF6320;
    v56 = xmmword_1D2EF6330;
    v52 = xmmword_1D2EF6340;
    v51 = vdupq_n_s64(0xAuLL);
    v30 = 0.5;
    goto LABEL_72;
  }

  v26 = [v25 fileValue];
  if (!v26 || (v27 = v26, v28 = [v26 path], v27, !v28))
  {
    v72 = sub_1D2EE45F8();
    v73 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      *v74 = 0;
      _os_log_impl(&dword_1D2E46000, v72, v73, "Invalid Asset Path. Treatment ended.", v74, 2u);
      MEMORY[0x1D38AF660](v74, -1, -1);
    }

    if (!*(v2 + 24))
    {
      goto LABEL_70;
    }

    sub_1D2EE213C(&v109);
    if (sub_1D2EE2650(&v109) == 1)
    {
      goto LABEL_70;
    }

    v92 = v110;
    v30 = *(&v111 + 1);
    v29 = v111;
    v95 = v112;
    v32 = *(&v113 + 1);
    v33 = *&v113;
    v98 = v114;
    v101 = v109;
    v36 = *&v115[8];
    v57 = *v115;
    v58 = *&v115[16];
    v75 = sub_1D2EE45F8();
    v76 = sub_1D2EE4DD8();
    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_49;
    }

    goto LABEL_48;
  }

  sub_1D2EE4A68();

  if (!sub_1D2EE4AD8())
  {

    v87 = sub_1D2EE45F8();
    v88 = sub_1D2EE4DD8();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&dword_1D2E46000, v87, v88, "Invalid Asset Path. Treatment ended.", v89, 2u);
      MEMORY[0x1D38AF660](v89, -1, -1);
    }

    if (!*(v2 + 24) || (sub_1D2EE213C(&v109), sub_1D2EE2650(&v109) == 1))
    {
LABEL_70:

      goto LABEL_71;
    }

    v92 = v110;
    v30 = *(&v111 + 1);
    v29 = v111;
    v95 = v112;
    v32 = *(&v113 + 1);
    v33 = *&v113;
    v98 = v114;
    v101 = v109;
    v36 = *&v115[8];
    v57 = *v115;
    v58 = *&v115[16];
    v75 = sub_1D2EE45F8();
    v76 = sub_1D2EE4DD8();
    if (!os_log_type_enabled(v75, v76))
    {
      goto LABEL_49;
    }

LABEL_48:
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_1D2E46000, v75, v76, "Returning config from default path", v77, 2u);
    MEMORY[0x1D38AF660](v77, -1, -1);
LABEL_49:

LABEL_63:
LABEL_64:

    goto LABEL_65;
  }

  v100 = v9;
  sub_1D2EE213C(&v102);
  v90 = v103;
  v91 = v102;
  v30 = *(&v104 + 1);
  v29 = v104;
  v31 = *(&v105 + 1);
  v97 = v105;
  v32 = *(&v106 + 1);
  v33 = *&v106;
  v34 = *(&v107 + 1);
  v94 = v107;
  v36 = *&v108[8];
  v35 = *v108;
  v37 = *&v108[16];

  v38 = sub_1D2EE45F8();
  v39 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = v29;
    v41 = v34;
    v42 = v31;
    v43 = v35;
    v44 = v37;
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_1D2E46000, v38, v39, "Returning Treatment config", v45, 2u);
    v46 = v45;
    v37 = v44;
    v35 = v43;
    v31 = v42;
    v34 = v41;
    v29 = v40;
    MEMORY[0x1D38AF660](v46, -1, -1);
  }

  v113 = v106;
  v114 = v107;
  *v115 = *v108;
  *&v115[9] = *&v108[9];
  v109 = v102;
  v110 = v103;
  v111 = v104;
  v112 = v105;
  v47 = sub_1D2EE2650(&v109);
  v48 = vdup_n_s32(v47 == 1);
  v49.i64[0] = v48.u32[0];
  v49.i64[1] = v48.u32[1];
  v50 = vcltzq_s64(vshlq_n_s64(v49, 0x3FuLL));
  v51 = vbslq_s8(v50, vdupq_n_s64(0xAuLL), v90);
  v52 = vbslq_s8(v50, xmmword_1D2EF6340, v91);
  if (v47 == 1)
  {
    v29 = 1000;
    v30 = 0.5;
    v33 = 0.3;
  }

  v53.i64[0] = v97;
  v53.i64[1] = v31;
  v54.i64[0] = v94;
  v54.i64[1] = v34;
  if (v47 == 1)
  {
    v32 = 0.6;
  }

  v55 = vbslq_s8(v50, xmmword_1D2EF6320, v54);
  v56 = vbslq_s8(v50, xmmword_1D2EF6330, v53);
  if (v47 == 1)
  {
    v57 = 30;
  }

  else
  {
    v57 = v35;
  }

  if (v47 == 1)
  {
    v36 = 0.5;
    v58 = 5;
  }

  else
  {
    v58 = v37;
  }

LABEL_73:
  *a1 = v52;
  *(a1 + 16) = v51;
  *(a1 + 32) = v29;
  *(a1 + 40) = v30;
  *(a1 + 48) = v56;
  *(a1 + 64) = v33;
  *(a1 + 72) = v32;
  *(a1 + 80) = v55;
  *(a1 + 96) = v57;
  *(a1 + 104) = v36;
  *(a1 + 112) = v58;
}

void sub_1D2EE1F50(uint64_t a1@<X0>, void *a2@<X8>)
{
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v5 = [objc_opt_self() bundleForClass_];
  v6 = sub_1D2EE4A38();
  v7 = sub_1D2EE4A38();
  v8 = [v5 pathForResource:v6 ofType:v7];

  if (v8)
  {
    v9 = sub_1D2EE4A68();
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0;
  }

  if (qword_1EDECF8A8 != -1)
  {
    swift_once();
  }

  v12 = sub_1D2EE4618();
  __swift_project_value_buffer(v12, qword_1EDED2D38);
  v13 = sub_1D2EE45F8();
  v14 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1D2E46000, v13, v14, "Initialize CallIntelligenceTrialManager", v15, 2u);
    MEMORY[0x1D38AF660](v15, -1, -1);
  }

  *a2 = 0xD000000000000038;
  a2[1] = 0x80000001D2EE90D0;
  a2[2] = v9;
  a2[3] = v11;
  a2[4] = 0xD000000000000014;
  a2[5] = 0x80000001D2EE9140;
  a2[6] = a1;
}

double sub_1D2EE213C@<D0>(_OWORD *a3@<X8>)
{
  v4 = sub_1D2EE3D88();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D2EE3D08();
  v8 = sub_1D2EE3DA8();
  v10 = v9;
  sub_1D2EE3CD8();
  swift_allocObject();
  sub_1D2EE3CC8();
  sub_1D2E95DDC();
  sub_1D2EE3CB8();
  v38 = v46;
  v39 = v47;
  v40 = v48;
  v41 = v49;
  v34 = v42;
  v35 = v43;
  v36 = v44;
  v37 = v45;
  if (qword_1EDECF8A8 != -1)
  {
    swift_once();
  }

  v15 = sub_1D2EE4618();
  __swift_project_value_buffer(v15, qword_1EDED2D38);
  v16 = sub_1D2EE45F8();
  v25 = sub_1D2EE4DD8();
  if (os_log_type_enabled(v16, v25))
  {
    v17 = swift_slowAlloc();
    v23 = v17;
    v24 = swift_slowAlloc();
    *&v27 = v24;
    *v17 = 136315138;
    v54 = v38;
    v55 = v39;
    *v56 = v40;
    *&v56[16] = v41;
    v50 = v34;
    v51 = v35;
    v52 = v36;
    v53 = v37;
    sub_1D2EE2700();
    v26 = v16;
    v18 = sub_1D2EE5258();
    v20 = sub_1D2E685B0(v18, v19, &v27);

    v21 = v23;
    *(v23 + 1) = v20;
    _os_log_impl(&dword_1D2E46000, v26, v25, "Loaded configuration: %s", v21, 0xCu);
    v22 = v24;
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1D38AF660](v22, -1, -1);
    MEMORY[0x1D38AF660](v21, -1, -1);

    sub_1D2E7EA2C(v8, v10);
  }

  else
  {

    sub_1D2E7EA2C(v8, v10);
  }

  (*(v5 + 8))(v7, v4);
  v31 = v38;
  v32 = v39;
  v33[0] = v40;
  *&v33[1] = v41;
  v27 = v34;
  v28 = v35;
  v29 = v36;
  v30 = v37;
  sub_1D2EE26F8(&v27);
  *v56 = v33[0];
  *&v56[9] = *(v33 + 9);
  v50 = v27;
  v51 = v28;
  v52 = v29;
  v53 = v30;
  v11 = v32;
  a3[4] = v31;
  a3[5] = v11;
  a3[6] = *v56;
  *(a3 + 105) = *&v56[9];
  v12 = v51;
  *a3 = v50;
  a3[1] = v12;
  result = *&v52;
  v14 = v53;
  a3[2] = v52;
  a3[3] = v14;
  return result;
}

uint64_t sub_1D2EE2650(uint64_t a1)
{
  if (*(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

double sub_1D2EE266C(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_1D2EE2690(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7392E8, &unk_1D2EF63D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D2EE2700()
{
  result = qword_1EC7398B0;
  if (!qword_1EC7398B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC7398B0);
  }

  return result;
}

uint64_t sub_1D2EE2754(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D2EE4E58();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v17 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    (*(v5 + 8))(v8, v4);
    return 7104878;
  }

  else
  {
    (*(v9 + 32))(v14, v8, a2);
    (*(v9 + 16))(v12, v14, a2);
    v16 = sub_1D2EE4AA8();
    (*(v9 + 8))(v14, a2);
    return v16;
  }
}

uint64_t sub_1D2EE2A38(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D2EE4618();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_1D2EE4608();
}

uint64_t sub_1D2EE2C28()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D2EE2D70()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_1D2EE2DCC()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_1D2EE4A38();
  v2 = sub_1D2EE4A38();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_1D2EE3D48();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D2EE2EC4()
{

  return swift_deallocClassInstance();
}

void sub_1D2EE3220()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_1D2EE4A38();
  v2 = sub_1D2EE4A38();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_1D2EE3D48();
  }

  else
  {
    __break(1u);
  }
}

void sub_1D2EE35E8()
{
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v4 = [objc_opt_self() bundleForClass_];
  v1 = sub_1D2EE4A38();
  v2 = sub_1D2EE4A38();
  v3 = [v4 URLForResource:v1 withExtension:v2];

  if (v3)
  {
    sub_1D2EE3D48();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D2EE3704(uint64_t a1)
{
  v2 = sub_1D2EE3EF8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v37 = &v30 - v7;
  v8 = *(a1 + 16);
  if (v8)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7398C0, &qword_1D2EF6608);
    v9 = sub_1D2EE4F98();
    v10 = 0;
    v12 = *(v3 + 16);
    v11 = v3 + 16;
    v35 = v12;
    v36 = v9 + 56;
    v13 = *(v11 + 64);
    v32 = v8;
    v33 = a1 + ((v13 + 32) & ~v13);
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    v31 = (v11 + 16);
    while (1)
    {
      v34 = v10;
      v35(v37, v33 + v14 * v10, v2);
      sub_1D2EE3B64(&qword_1EC7392C0, MEMORY[0x1E6969620]);
      v16 = sub_1D2EE49E8();
      v17 = ~(-1 << *(v9 + 32));
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = *(v36 + 8 * v19);
      v21 = 1 << (v16 & v17);
      if ((v21 & v20) != 0)
      {
        while (1)
        {
          v22 = v11;
          v35(v6, *(v9 + 48) + v18 * v14, v2);
          sub_1D2EE3B64(&qword_1EC7392C8, MEMORY[0x1E6969628]);
          v23 = sub_1D2EE4A08();
          v24 = *v15;
          (*v15)(v6, v2);
          if (v23)
          {
            break;
          }

          v18 = (v18 + 1) & v17;
          v19 = v18 >> 6;
          v20 = *(v36 + 8 * (v18 >> 6));
          v21 = 1 << v18;
          v11 = v22;
          if (((1 << v18) & v20) == 0)
          {
            goto LABEL_8;
          }
        }

        v24(v37, v2);
        v11 = v22;
      }

      else
      {
LABEL_8:
        v25 = v37;
        *(v36 + 8 * v19) = v21 | v20;
        result = (*v31)(*(v9 + 48) + v18 * v14, v25, v2);
        v27 = *(v9 + 16);
        v28 = __OFADD__(v27, 1);
        v29 = v27 + 1;
        if (v28)
        {
          __break(1u);
          return result;
        }

        *(v9 + 16) = v29;
      }

      v10 = v34 + 1;
      if (v34 + 1 == v32)
      {
        return v9;
      }
    }
  }

  return MEMORY[0x1E69E7CD0];
}

uint64_t sub_1D2EE39FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7398B8, &qword_1D2EF6600);
    v3 = sub_1D2EE4F98();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      sub_1D2EE5338();

      sub_1D2EE4AC8();
      result = sub_1D2EE5378();
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
          result = sub_1D2EE5288();
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

uint64_t sub_1D2EE3B64(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D2EE3EF8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}