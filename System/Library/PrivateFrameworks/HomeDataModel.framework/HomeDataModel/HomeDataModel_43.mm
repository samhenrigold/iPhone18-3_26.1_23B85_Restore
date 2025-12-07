uint64_t sub_1D1A8FE88()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D1A8FFD8, v1, 0);
}

uint64_t sub_1D1A8FFD8()
{
  v6 = v0;
  v1 = v0[9];
  v2 = v0[5];
  v5 = 7;
  sub_1D1AFCA44(&v5);

  v3 = v0[1];

  return v3(v2);
}

uint64_t sub_1D1A90060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4[6] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC64ABE8;
  v4[7] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A90138, v5, 0);
}

void sub_1D1A90138()
{
  v18 = v0;
  v1 = v0[4];
  if (v1 >> 62)
  {
    v2 = sub_1D1E6873C();
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  if (v2 < 1)
  {
    __break(1u);
    return;
  }

  v3 = 0;
  v16 = v0[4] + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x1D3891EF0](v3, v0[4]);
    }

    else
    {
      v4 = *(v16 + 8 * v3);
    }

    v5 = v4;
    v7 = v0[5];
    v6 = v0[6];
    ++v3;
    v8 = [v4 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v9 = sub_1D1E67C1C();

    v10 = sub_1D1A8D678(v9);

    v11 = sub_1D1E67E7C();
    (*(*(v11 - 8) + 56))(v6, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v7;
    v12[5] = v10;
    v12[6] = v5;

    sub_1D1DE29CC(v6, &unk_1D1E96238, v12);
    sub_1D1741A30(v6, &unk_1EC6442C0, &qword_1D1E741A0);
  }

  while (v2 != v3);
LABEL_10:
  v13 = v0[3];
  v17[0] = 6;
  sub_1D1AFCA44(v17);
  v14 = *v13;
  v15 = swift_task_alloc();
  v0[8] = v15;
  *v15 = v0;
  v15[1] = sub_1D1A903AC;

  sub_1D17C2F64(v14);
}

void sub_1D1A903AC(uint64_t a1)
{
  v3 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
  }

  else
  {
    v4 = v3[7];

    MEMORY[0x1EEE6DFA0](sub_1D1AA5590, v4, 0);
  }
}

uint64_t sub_1D1A904E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a1;
  v6[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v6[15] = *(v8 + 64);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A90648, 0, 0);
}

uint64_t sub_1D1A90648()
{
  v1 = *(*(v0 + 72) + 168);
  *(v0 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A9066C, v1, 0);
}

uint64_t sub_1D1A9066C()
{
  v57 = v0;
  v1 = v0[10];
  v56 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_33;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = v0[21];
  swift_beginAccess();
  if (v2)
  {
    v4 = 0;
    v48 = v0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v0 = (v0[10] + 32);
    v53 = v2;
    v55 = v3;
    v50 = v1 & 0xFFFFFFFFFFFFFF8;
    v51 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x1D3891EF0](v4, v48[10]);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_32;
        }

        v7 = v0[v4];
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v2 = sub_1D1E6873C();
        goto LABEL_3;
      }

      v10 = *(v3 + 120);
      if ((v10 & 0xC000000000000001) != 0)
      {

        v1 = v8;
        v11 = sub_1D1E6878C();

        if (v11)
        {

          goto LABEL_7;
        }
      }

      else if (*(v10 + 16))
      {
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);

        v12 = sub_1D1E684EC();
        v13 = -1 << *(v10 + 32);
        v14 = v12 & ~v13;
        if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          v15 = ~v13;
          while (1)
          {
            v16 = *(*(v10 + 48) + 8 * v14);
            v1 = sub_1D1E684FC();

            if (v1)
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v2 = v53;
          v3 = v55;
          v6 = v50;
          v5 = v51;
          goto LABEL_7;
        }

LABEL_5:

        v2 = v53;
        v3 = v55;
        v6 = v50;
        v5 = v51;
      }

      sub_1D1E6896C();
      sub_1D1E689AC();
      sub_1D1E689BC();
      v1 = &v56;
      sub_1D1E6897C();
LABEL_7:
      if (v4 == v2)
      {
        v17 = v56;
        v0 = v48;
        goto LABEL_25;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_25:
  swift_beginAccess();

  sub_1D19519A4(v18);
  swift_endAccess();

  if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
  {
    if (sub_1D1E6873C())
    {
      goto LABEL_28;
    }
  }

  else if (*(v17 + 16))
  {
LABEL_28:
    v19 = v0[21];
    v20 = v0[16];
    v21 = v0[17];
    v22 = v0;
    v25 = v0 + 14;
    v23 = v0[14];
    v24 = v25[1];
    v26 = v22[12];
    v27 = v22[13];
    v46 = v27;
    v47 = v20;
    v28 = v22[11];
    v49 = v22[10];

    sub_1D1A97360(v29, v21);

    v54 = sub_1D1E67E7C();
    v52 = *(*(v54 - 8) + 56);
    v52(v26, 1, 1, v54);
    (*(v23 + 16))(v20, v21, v27);
    v30 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48, &protocol conformance descriptor for CharacteristicValueModerator<A>);
    v31 = (*(v23 + 80) + 56) & ~*(v23 + 80);
    v32 = (v24 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 2) = v19;
    *(v33 + 3) = v30;
    *(v33 + 4) = 3;
    *(v33 + 5) = v49;
    *(v33 + 6) = v19;
    (*(v23 + 32))(&v33[v31], v47, v46);
    *&v33[v32] = v28;
    *&v33[(v32 + 15) & 0xFFFFFFFFFFFFFFF8] = v17;
    swift_retain_n();

    v34 = v28;
    v35 = sub_1D1B02614(0, 0, v26, &unk_1D1E96240, v33);
    v22[22] = v35;
    v52(v26, 1, 1, v54);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v35;

    v37 = sub_1D1B02614(0, 0, v26, &unk_1D1E96248, v36);
    v22[23] = v37;
    v38 = swift_task_alloc();
    v22[24] = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v38 = v22;
    v38[1] = sub_1D1A90C60;
    v41 = v22[18];
    v40 = v22[19];
    v42 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v40, v37, v41, v39, v42);
  }

  v43 = v0[20];

  v44 = type metadata accessor for StateSnapshot(0);
  (*(*(v44 - 8) + 56))(v43, 1, 1, v44);

  return MEMORY[0x1EEE6DFA0](sub_1D1AA5560, 0, 0);
}

uint64_t sub_1D1A90C60()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_1D1A90E60;
  }

  else
  {
    v4 = sub_1D1A90DA8;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1A90DA8()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[14];

  (*(v5 + 8))(v3, v4);
  sub_1D1741A90(v1, v2, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D1AA5560, 0, 0);
}

uint64_t sub_1D1A90E60()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1AA5564, 0, 0);
}

uint64_t sub_1D1A90EF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v7 + 152) = a6;
  *(v7 + 160) = v6;
  *(v7 + 264) = a5;
  *(v7 + 136) = a3;
  *(v7 + 144) = a4;
  *(v7 + 120) = a1;
  *(v7 + 128) = a2;
  *(v7 + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  *(v7 + 176) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  *(v7 + 184) = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  *(v7 + 192) = v8;
  v9 = *(v8 - 8);
  *(v7 + 200) = v9;
  *(v7 + 208) = *(v9 + 64);
  *(v7 + 216) = swift_task_alloc();
  *(v7 + 224) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A91050, v6, 0);
}

uint64_t sub_1D1A91050()
{
  v1 = v0[16];
  v67 = MEMORY[0x1E69E7CC0];
  if ((v1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38, MEMORY[0x1E69E81B8]);
    sub_1D1E681BC();
    v1 = v0[2];
    v2 = v0[3];
    v3 = v0[4];
    v4 = v0[5];
    v5 = v0[6];
  }

  else
  {
    v6 = -1 << *(v1 + 32);
    v2 = v1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(v1 + 56);

    v4 = 0;
  }

  v9 = v0[20];
  v59 = v9;
  v10 = (v3 + 64) >> 6;
  v63 = v1;
  v64 = v0;
  v61 = v2;
  if ((v1 & 0x8000000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_18:
  while (2)
  {
    v16 = sub_1D1E6877C();
    if (v16)
    {
      v0[14] = v16;
      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
      swift_dynamicCast();
      v15 = v0[13];
      v13 = v4;
      v14 = v5;
      if (v15)
      {
        while (1)
        {
          v65 = v14;
          swift_beginAccess();
          v17 = *(v9 + 120);
          if ((v17 & 0xC000000000000001) != 0)
          {
            break;
          }

          if (!*(v17 + 16))
          {
            goto LABEL_10;
          }

          sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);

          v20 = sub_1D1E684EC();
          v21 = -1 << *(v17 + 32);
          v22 = v20 & ~v21;
          if (((*(v17 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
          {
LABEL_9:

            v1 = v63;
            v0 = v64;
            v9 = v59;
            v2 = v61;
            goto LABEL_10;
          }

          v23 = ~v21;
          while (1)
          {
            v24 = *(*(v17 + 48) + 8 * v22);
            v25 = sub_1D1E684FC();

            if (v25)
            {
              break;
            }

            v22 = (v22 + 1) & v23;
            if (((*(v17 + 56 + ((v22 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v22) & 1) == 0)
            {
              goto LABEL_9;
            }
          }

          v4 = v13;
          v0 = v64;
          v5 = v65;
          v2 = v61;
          v1 = v63;
          v9 = v59;
          if (v63 < 0)
          {
            goto LABEL_18;
          }

LABEL_12:
          v11 = v4;
          v12 = v5;
          v13 = v4;
          if (!v5)
          {
            while (1)
            {
              v13 = v11 + 1;
              if (__OFADD__(v11, 1))
              {
                break;
              }

              if (v13 >= v10)
              {
                goto LABEL_31;
              }

              v12 = *(v2 + 8 * v13);
              ++v11;
              if (v12)
              {
                goto LABEL_16;
              }
            }

            __break(1u);
LABEL_41:
            if (!sub_1D1E6873C())
            {
              goto LABEL_42;
            }

LABEL_34:
            v27 = v0[28];
            v29 = v0[25];
            v28 = v0[26];
            v30 = v0[24];
            v31 = v64[20];
            v57 = v0[23];
            v58 = v64[19];
            v66 = *(v64 + 264);
            v32 = v64[17];
            v55 = v0[27];
            v56 = v64[16];

            sub_1D1A97360(v33, v27);

            v60 = sub_1D1E67E7C();
            v62 = *(*(v60 - 8) + 56);
            v62(v57, 1, 1, v60);
            v34 = v30;
            (*(v29 + 16))(v55, v27, v30);
            v35 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48, &protocol conformance descriptor for CharacteristicValueModerator<A>);
            v36 = (*(v29 + 80) + 56) & ~*(v29 + 80);
            v37 = (v28 + v36 + 7) & 0xFFFFFFFFFFFFFFF8;
            v38 = swift_allocObject();
            *(v38 + 2) = v31;
            *(v38 + 3) = v35;
            *(v38 + 4) = v58;
            *(v38 + 5) = v56;
            *(v38 + 6) = v31;
            (*(v29 + 32))(&v38[v36], v55, v34);
            *&v38[v37] = v32;
            *&v38[(v37 + 15) & 0xFFFFFFFFFFFFFFF8] = v1;
            swift_retain_n();

            v39 = v32;
            v40 = sub_1D1B02614(0, 0, v57, &unk_1D1E96198, v38);
            v64[29] = v40;
            v62(v57, 1, 1, v60);
            v41 = v64[23];
            if (v66)
            {
              v42 = swift_allocObject();
              *(v42 + 16) = 0;
              *(v42 + 24) = 0;
              *(v42 + 32) = v40;

              v43 = &unk_1D1E961A0;
            }

            else
            {
              v44 = v64[18];
              v42 = swift_allocObject();
              *(v42 + 16) = 0;
              *(v42 + 24) = 0;
              *(v42 + 32) = v40;
              *(v42 + 40) = v44;
              *(v42 + 48) = 1;

              v43 = &unk_1D1E961A8;
            }

            v45 = sub_1D1B02614(0, 0, v41, v43, v42);
            v64[30] = v45;
            v46 = swift_task_alloc();
            v64[31] = v46;
            v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
            *v46 = v64;
            v46[1] = sub_1D1A9180C;
            v49 = v64[21];
            v48 = v64[22];
            v50 = MEMORY[0x1E69E7288];

            return MEMORY[0x1EEE6DA10](v48, v45, v49, v47, v50);
          }

LABEL_16:
          v14 = (v12 - 1) & v12;
          v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
          if (!v15)
          {
            goto LABEL_31;
          }
        }

        v18 = v15;
        v19 = sub_1D1E6878C();

        if (v19)
        {
        }

        else
        {
LABEL_10:
          sub_1D1E6896C();
          sub_1D1E689AC();
          sub_1D1E689BC();
          sub_1D1E6897C();
        }

        v4 = v13;
        v5 = v65;
        if (v1 < 0)
        {
          continue;
        }

        goto LABEL_12;
      }
    }

    break;
  }

LABEL_31:
  sub_1D1716918(v1);
  v1 = v67;
  swift_beginAccess();

  sub_1D19519A4(v26);
  swift_endAccess();

  if (v67 < 0 || (v67 & 0x4000000000000000) != 0)
  {
    goto LABEL_41;
  }

  if (*(v67 + 16))
  {
    goto LABEL_34;
  }

LABEL_42:
  v51 = v0[15];
  v52 = type metadata accessor for StateSnapshot(0);
  (*(*(v52 - 8) + 56))(v51, 1, 1, v52);

  v53 = v0[1];

  return v53();
}

uint64_t sub_1D1A9180C()
{
  v2 = *v1;
  *(*v1 + 256) = v0;

  v3 = *(v2 + 160);
  if (v0)
  {
    v4 = sub_1D1A91A2C;
  }

  else
  {
    v4 = sub_1D1A91954;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1A91954()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];
  v4 = v0[22];
  v5 = v0[15];

  (*(v3 + 8))(v1, v2);
  sub_1D1741A90(v4, v5, &unk_1EC649E30, &unk_1D1E91250);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1A91A2C()
{
  v1 = v0[28];
  v2 = v0[24];
  v3 = v0[25];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t HomeState.Stream.fetchAllCharacteristics(for:limitToServiceIDs:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[10] = a3;
  v4[11] = v3;
  v4[8] = a1;
  v4[9] = a2;
  v4[12] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v4[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4[14] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v4[15] = v5;
  v6 = *(v5 - 8);
  v4[16] = v6;
  v4[17] = *(v6 + 64);
  v4[18] = swift_task_alloc();
  v4[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642590, qword_1D1E71260);
  v4[20] = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  v4[21] = v7;
  v4[22] = *(v7 - 8);
  v4[23] = swift_task_alloc();
  v4[24] = swift_task_alloc();
  v4[25] = swift_task_alloc();
  v4[26] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v8 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A91D28, v8, 0);
}

uint64_t sub_1D1A91D28()
{
  v105 = v0;
  v1 = v0[10];
  if (!*(v1 + 16))
  {
    if (qword_1EC642328 != -1)
    {
      swift_once();
    }

    v12 = sub_1D1E6709C();
    __swift_project_value_buffer(v12, qword_1EC64A290);
    v13 = sub_1D1E6707C();
    v14 = sub_1D1E6833C();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&dword_1D16EC000, v13, v14, "We should never invoke fetchAllCharacteristicsValues with an empty list of limitToServiceIDs", v15, 2u);
      v0 = v101;
      MEMORY[0x1D3893640](v15, -1, -1);
    }

    v16 = v0[8];

LABEL_81:
    v74 = type metadata accessor for StateSnapshot(0);
    (*(*(v74 - 8) + 56))(v16, 1, 1, v74);

    v75 = v0[1];

    return v75();
  }

  if (qword_1EC642328 != -1)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v2 = sub_1D1E6709C();
    __swift_project_value_buffer(v2, qword_1EC64A290);

    v3 = sub_1D1E6707C();
    v4 = sub_1D1E6835C();

    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v104[0] = v6;
      *v5 = 136315138;
      sub_1D1AA3AF8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      v7 = sub_1D1E6817C();
      v9 = sub_1D1B1312C(v7, v8, v104);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_1D16EC000, v3, v4, "Fetching for only services with IDs: %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1D3893640](v6, -1, -1);
      v10 = v5;
      v11 = v101;
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    else
    {

      v11 = v101;
    }

    v17 = [v11[9] accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v18 = sub_1D1E67C1C();

    v19 = v18;
    v104[0] = MEMORY[0x1E69E7CC0];
    if (v18 >> 62)
    {
      break;
    }

    v20 = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      goto LABEL_49;
    }

LABEL_13:
    v77 = v19;
    v21 = 0;
    v80 = v19 & 0xFFFFFFFFFFFFFF8;
    v81 = v19 & 0xC000000000000001;
    v79 = v19 + 32;
    v102 = v11[10];
    v100 = v102 + 56;
    v82 = v11[22];
    v83 = v1;
    v22 = (v82 + 8);
    v23 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
    v78 = v20;
    while (1)
    {
      if (v81)
      {
        v24 = MEMORY[0x1D3891EF0](v21, v77);
        v25 = __OFADD__(v21, 1);
        v26 = v21 + 1;
        if (v25)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v21 >= *(v80 + 16))
        {
          goto LABEL_46;
        }

        v24 = *(v79 + 8 * v21);
        v25 = __OFADD__(v21, 1);
        v26 = v21 + 1;
        if (v25)
        {
          goto LABEL_45;
        }
      }

      v84 = v24;
      v27 = [v24 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v28 = sub_1D1E67C1C();

      v85 = v26;
      v86 = v28;
      if (v28 >> 62)
      {
        break;
      }

      v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v29)
      {
        goto LABEL_21;
      }

LABEL_41:

LABEL_15:
      v21 = v85;
      if (v85 == v78)
      {
        v43 = v104[0];
        goto LABEL_50;
      }
    }

    v29 = sub_1D1E6873C();
    if (!v29)
    {
      goto LABEL_41;
    }

LABEL_21:
    v30 = 0;
    log = (v28 & 0xFFFFFFFFFFFFFF8);
    v94 = v28 & 0xC000000000000001;
    buf = v29;
    v90 = v28 + 32;
    while (v94)
    {
      v31 = MEMORY[0x1D3891EF0](v30, v86);
      v25 = __OFADD__(v30++, 1);
      if (v25)
      {
        goto LABEL_43;
      }

LABEL_25:
      v97 = v31;
      v32 = [v31 v23[61]];
      sub_1D1E66A5C();

      if (*(v1 + 16) && (sub_1D1AA3AF8(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]), v33 = sub_1D1E676DC(), v34 = -1 << *(v102 + 32), v35 = v33 & ~v34, ((*(v100 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
      {
        v36 = ~v34;
        v37 = *(v82 + 72);
        v38 = *(v82 + 16);
        do
        {
          v39 = v101[25];
          v40 = v101[21];
          v38(v39, *(v102 + 48) + v35 * v37, v40);
          sub_1D1AA3AF8(&qword_1EE07D170, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
          v41 = sub_1D1E6775C();
          v42 = *v22;
          (*v22)(v39, v40);
          if (v41)
          {
            v11 = v101;
            v42(v101[26], v101[21]);

            sub_1D1E6896C();
            sub_1D1E689AC();
            sub_1D1E689BC();
            sub_1D1E6897C();
            v1 = v83;
            v23 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
            goto LABEL_15;
          }

          v35 = (v35 + 1) & v36;
        }

        while (((*(v100 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0);
        v11 = v101;
        v1 = v83;
        v23 = &_OBJC_LABEL_PROTOCOL___HMUserActionPredictionControllerDelegate;
      }

      else
      {
        v42 = *v22;
      }

      v42(v11[26], v11[21]);

      if (v30 == buf)
      {
        goto LABEL_41;
      }
    }

    if (v30 >= log[2].isa)
    {
      goto LABEL_44;
    }

    v31 = *(v90 + 8 * v30);
    v25 = __OFADD__(v30++, 1);
    if (!v25)
    {
      goto LABEL_25;
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
    swift_once();
  }

  v44 = v18;
  v20 = sub_1D1E6873C();
  v19 = v44;
  if (v20)
  {
    goto LABEL_13;
  }

LABEL_49:
  v43 = MEMORY[0x1E69E7CC0];
LABEL_50:

  v45 = sub_1D1E6707C();
  v0 = sub_1D1E6835C();

  if (!os_log_type_enabled(v45, v0))
  {
LABEL_72:

    v0 = v11;
    v70 = sub_1D1A8D678(v43);
    v11[27] = v70;

    if (v70 >> 62)
    {
      goto LABEL_79;
    }

    v71 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v11[28] = v71;
    if (v71)
    {
      goto LABEL_74;
    }

LABEL_80:
    v16 = v0[8];

    goto LABEL_81;
  }

  v46 = swift_slowAlloc();
  v87 = swift_slowAlloc();
  v104[0] = v87;
  bufa = v46;
  *v46 = 136315138;
  if ((v43 & 0x8000000000000000) != 0 || (v43 & 0x4000000000000000) != 0)
  {
    v47 = sub_1D1E6873C();
  }

  else
  {
    v47 = *(v43 + 16);
  }

  v91 = v0;
  loga = v45;
  if (!v47)
  {
    v103 = MEMORY[0x1E69E7CC0];
LABEL_71:
    v66 = MEMORY[0x1D3891260](v103, v11[21]);
    v68 = v67;

    v69 = sub_1D1B1312C(v66, v68, v104);

    *(bufa + 4) = v69;
    v45 = loga;
    _os_log_impl(&dword_1D16EC000, loga, v91, "Accessories containing filtered services: %s", bufa, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v87);
    MEMORY[0x1D3893640](v87, -1, -1);
    MEMORY[0x1D3893640](bufa, -1, -1);
    goto LABEL_72;
  }

  v48 = 0;
  v49 = v11[22];
  v50 = (v49 + 32);
  v98 = (v49 + 56);
  v103 = MEMORY[0x1E69E7CC0];
  v95 = v49;
  v96 = (v49 + 48);
  v99 = v47;
  while ((v43 & 0xC000000000000001) != 0)
  {
    v51 = MEMORY[0x1D3891EF0](v48, v43);
    v52 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      goto LABEL_77;
    }

LABEL_61:
    v53 = v11[25];
    v0 = v11;
    v54 = v11[21];
    v55 = v0[20];
    v56 = v51;
    v57 = [v56 uniqueIdentifier];
    sub_1D1E66A5C();

    v58 = *v50;
    (*v50)(v55, v53, v54);

    (*v98)(v55, 0, 1, v54);
    if ((*v96)(v55, 1, v54) == 1)
    {
      sub_1D1741A30(v0[20], &qword_1EC642590, qword_1D1E71260);
      v11 = v0;
    }

    else
    {
      v59 = v0[23];
      v60 = v0[24];
      v61 = v0[21];
      v58(v60, v0[20], v61);
      v58(v59, v60, v61);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v103 = sub_1D177D0AC(0, v103[2] + 1, 1, v103);
      }

      v11 = v101;
      v63 = v103[2];
      v62 = v103[3];
      if (v63 >= v62 >> 1)
      {
        v103 = sub_1D177D0AC((v62 > 1), v63 + 1, 1, v103);
      }

      v64 = v101[23];
      v65 = v101[21];
      v103[2] = v63 + 1;
      v58(v103 + ((*(v95 + 80) + 32) & ~*(v95 + 80)) + *(v95 + 72) * v63, v64, v65);
    }

    ++v48;
    if (v52 == v99)
    {
      goto LABEL_71;
    }
  }

  if (v48 >= *(v43 + 16))
  {
    goto LABEL_78;
  }

  v51 = *(v43 + 8 * v48 + 32);
  v52 = v48 + 1;
  if (!__OFADD__(v48, 1))
  {
    goto LABEL_61;
  }

LABEL_77:
  __break(1u);
LABEL_78:
  __break(1u);
LABEL_79:
  v73 = sub_1D1E6873C();
  v0[28] = v73;
  if (!v73)
  {
    goto LABEL_80;
  }

LABEL_74:
  v72 = *(v0[11] + 168);
  v0[29] = v72;

  return MEMORY[0x1EEE6DFA0](sub_1D1A928E4, v72, 0);
}

uint64_t sub_1D1A928E4()
{
  v1 = v0[29];
  v2 = v0[27];
  v57 = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v3 = 0;
  v4 = v2 & 0xC000000000000001;
  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  v6 = v2 + 32;
  v54 = v1;
  v56 = v0;
  v51 = v2 & 0xFFFFFFFFFFFFFF8;
  v53 = v2 & 0xC000000000000001;
  do
  {
    if (v4)
    {
      v7 = MEMORY[0x1D3891EF0](v3, v0[27]);
    }

    else
    {
      if (v3 >= *(v5 + 16))
      {
        goto LABEL_27;
      }

      v7 = *(v6 + 8 * v3);
    }

    v8 = v7;
    if (__OFADD__(v3++, 1))
    {
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      if (sub_1D1E6873C())
      {
        goto LABEL_23;
      }

      goto LABEL_29;
    }

    v10 = *(v1 + 120);
    if ((v10 & 0xC000000000000001) != 0)
    {

      v11 = v8;
      v12 = sub_1D1E6878C();

      if ((v12 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (!*(v10 + 16))
      {
        goto LABEL_3;
      }

      sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);

      v13 = sub_1D1E684EC();
      v14 = -1 << *(v10 + 32);
      v15 = v13 & ~v14;
      if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
      {
LABEL_2:

        v1 = v54;
        v0 = v56;
        v5 = v51;
        v4 = v53;
LABEL_3:
        sub_1D1E6896C();
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
        continue;
      }

      v16 = ~v14;
      while (1)
      {
        v17 = *(*(v10 + 48) + 8 * v15);
        v18 = sub_1D1E684FC();

        if (v18)
        {
          break;
        }

        v15 = (v15 + 1) & v16;
        if (((*(v10 + 56 + ((v15 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v15) & 1) == 0)
        {
          goto LABEL_2;
        }
      }

      v1 = v54;
      v0 = v56;
      v5 = v51;
      v4 = v53;
    }
  }

  while (v3 != v0[28]);
  v3 = v57;
  swift_beginAccess();

  sub_1D19519A4(v19);
  swift_endAccess();

  if ((v57 & 0x8000000000000000) != 0 || (v57 & 0x4000000000000000) != 0)
  {
    goto LABEL_28;
  }

  if (*(v57 + 16))
  {
LABEL_23:
    v20 = v0[29];
    v55 = v0[27];
    v21 = v0[18];
    v22 = v0[19];
    v48 = v21;
    v23 = v0;
    v26 = v0 + 16;
    v24 = v0[16];
    v25 = v26[1];
    v27 = v23[14];
    v28 = v23[15];
    v49 = v20;
    v29 = v23[9];

    sub_1D1A97360(v30, v22);

    v50 = sub_1D1E67E7C();
    v52 = *(*(v50 - 8) + 56);
    v52(v27, 1, 1, v50);
    (*(v24 + 16))(v21, v22, v28);
    v31 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48, &protocol conformance descriptor for CharacteristicValueModerator<A>);
    v32 = (*(v24 + 80) + 56) & ~*(v24 + 80);
    v33 = (v25 + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
    v34 = swift_allocObject();
    *(v34 + 2) = v49;
    *(v34 + 3) = v31;
    *(v34 + 4) = 3;
    *(v34 + 5) = v55;
    *(v34 + 6) = v49;
    (*(v24 + 32))(&v34[v32], v48, v28);
    *&v34[v33] = v29;
    *&v34[(v33 + 15) & 0xFFFFFFFFFFFFFFF8] = v3;
    swift_retain_n();
    v35 = v29;
    v36 = sub_1D1B02614(0, 0, v27, &unk_1D1E960C0, v34);
    v23[30] = v36;
    v52(v27, 1, 1, v50);
    v37 = swift_allocObject();
    v37[2] = 0;
    v37[3] = 0;
    v37[4] = v36;

    v38 = sub_1D1B02614(0, 0, v27, &unk_1D1E960C8, v37);
    v23[31] = v38;
    v39 = swift_task_alloc();
    v23[32] = v39;
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v39 = v23;
    v39[1] = sub_1D1A92EFC;
    v42 = v23[12];
    v41 = v23[13];
    v43 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v41, v38, v42, v40, v43);
  }

LABEL_29:
  v44 = v0[8];

  v45 = type metadata accessor for StateSnapshot(0);
  (*(*(v45 - 8) + 56))(v44, 1, 1, v45);

  v46 = v0[1];

  return v46();
}

uint64_t sub_1D1A92EFC()
{
  v2 = *v1;
  *(*v1 + 264) = v0;

  v3 = *(v2 + 232);

  if (v0)
  {
    v4 = sub_1D1A9315C;
  }

  else
  {
    v4 = sub_1D1A93044;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1A93044()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[13];
  v5 = v0[8];

  (*(v3 + 8))(v1, v2);
  sub_1D1741A90(v4, v5, &unk_1EC649E30, &unk_1D1E91250);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1A9315C()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[16];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t HomeState.Stream.fetchCharacteristics<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC64ABE8;
  v4[9] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A932FC, v5, 0);
}

uint64_t sub_1D1A932FC()
{
  v2 = v0[8];
  v1 = v0[9];
  v0[3] = MEMORY[0x1E69E7CC8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C78, &qword_1D1E960D8);
  sub_1D1E67A9C();
  v3 = v0[2];
  v0[10] = v3;
  v4 = sub_1D1AA3AF8(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
  v5 = swift_task_alloc();
  v0[11] = v5;
  *(v5 + 16) = v3;
  *(v5 + 24) = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C60, &qword_1D1E960A0);
  v8 = swift_task_alloc();
  v0[12] = v8;
  *v8 = v0;
  v8[1] = sub_1D1A934C8;

  return MEMORY[0x1EEE6DBF8](v0 + 4, v6, v7, v1, v4, &unk_1D1E960E8, v5, v6);
}

uint64_t sub_1D1A934C8()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D1A93618, v1, 0);
}

id sub_1D1A93630(void *a1, void **a2)
{
  v35 = sub_1D1E66A7C();
  v5 = *(v35 - 1);
  v6 = MEMORY[0x1EEE9AC00](v35);
  v8 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v31 - v9;
  v11 = *a2;
  result = [v11 home];
  if (result)
  {
    v34 = v5;
    v31[0] = v2;
    v13 = result;
    v14 = [result uniqueIdentifier];
    sub_1D1E66A5C();

    v15 = swift_allocObject();
    *(v15 + 16) = v13;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_1D1AA4B90;
    *(v16 + 24) = v15;
    v33 = v16;
    v32 = v13;
    v31[1] = v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v36 = *a1;
    v18 = v36;
    v20 = sub_1D1742188();
    v21 = v18[2];
    v22 = (v19 & 1) == 0;
    v23 = v21 + v22;
    if (__OFADD__(v21, v22))
    {
      __break(1u);
    }

    else
    {
      v24 = v19;
      if (v18[3] >= v23)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D173B870();
          v18 = v36;
        }
      }

      else
      {
        sub_1D172CEC8(v23, isUniquelyReferenced_nonNull_native);
        v18 = v36;
        v25 = sub_1D1742188();
        if ((v24 & 1) != (v26 & 1))
        {
          result = sub_1D1E690FC();
          __break(1u);
          return result;
        }

        v20 = v25;
      }

      *a1 = v18;
      a1 = v35;
      if ((v24 & 1) == 0)
      {
        v27 = sub_1D1AA4B90();
        v29 = v28;
        (*(v34 + 16))(v8, v10, a1);
        sub_1D19DBB64(v20, v8, v27, v29, v18);
      }

      v30 = v18[7] + 16 * v20;
      MEMORY[0x1D3891220]();
      if (*((*(v30 + 8) & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*(v30 + 8) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        goto LABEL_11;
      }
    }

    sub_1D1E67C5C();
LABEL_11:
    sub_1D1E67CAC();

    (*(v34 + 8))(v10, a1);
  }

  return result;
}

uint64_t sub_1D1A93948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4[6] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC64ABE8;
  v4[7] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A93A20, v5, 0);
}

uint64_t sub_1D1A93A20()
{
  v1 = *(v0 + 32);
  v4 = *(v1 + 64);
  v3 = v1 + 64;
  v2 = v4;
  v5 = -1;
  v6 = -1 << *(*(v0 + 32) + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & v2;
  v8 = (63 - v6) >> 6;
  v23 = *(v0 + 32);

  v10 = 0;
  if (v7)
  {
    while (1)
    {
      v11 = v10;
LABEL_9:
      v12 = v24[5];
      v13 = v24[6];
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = *(*(v23 + 56) + ((v11 << 10) | (16 * v14)));

      v17 = sub_1D1A8D678(v16);

      v18 = sub_1D1E67E7C();
      (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
      v19 = swift_allocObject();
      v19[2] = 0;
      v19[3] = 0;
      v19[4] = v12;
      v19[5] = v17;
      v19[6] = v15;

      sub_1D1DE29CC(v13, &unk_1D1E961F8, v19);
      result = sub_1D1741A30(v13, &unk_1EC6442C0, &qword_1D1E741A0);
      if (!v7)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      return result;
    }

    if (v11 >= v8)
    {
      break;
    }

    v7 = *(v3 + 8 * v11);
    ++v10;
    if (v7)
    {
      v10 = v11;
      goto LABEL_9;
    }
  }

  v20 = v24[3];

  v21 = *v20;
  v22 = swift_task_alloc();
  v24[8] = v22;
  *v22 = v24;
  v22[1] = sub_1D1A93C74;

  return sub_1D17C2F64(v21);
}

void sub_1D1A93C74(uint64_t a1)
{
  v3 = *v2;
  v3[9] = a1;
  v3[10] = v1;

  if (v1)
  {
  }

  else
  {
    v4 = v3[7];

    MEMORY[0x1EEE6DFA0](sub_1D1A93DAC, v4, 0);
  }
}

uint64_t sub_1D1A93DAC()
{
  v7 = v0;
  v1 = *(v0 + 72);
  if (*(v1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B68, &qword_1D1E6E8B0);
    v2 = sub_1D1E68BCC();
    v1 = *(v0 + 72);
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = *(v0 + 80);
  v6 = v2;
  sub_1D1AA2F94(v1, 1, &v6);
  if (v3)
  {

    return MEMORY[0x1EEE6C130](v3, "Swift/Dictionary.swift", 22, 1, 490);
  }

  else
  {
    **(v0 + 16) = v6;

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D1A93EB8@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = [*a1 serviceType];
  v4 = sub_1D1E6781C();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  ServiceKind.init(rawValue:)(v7);
  v8 = ServiceKind.stateStatusDependentCharaceristicKinds.getter();
  v9 = MEMORY[0x1E69E7CC0];
  v18 = MEMORY[0x1E69E7CC0];
  v10 = v8 + 56;
  v11 = 1 << *(v8 + 32);
  v12 = -1;
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  v13 = v12 & *(v8 + 56);
  v14 = (v11 + 63) >> 6;

  v16 = 0;
  if (!v13)
  {
    goto LABEL_6;
  }

  do
  {
LABEL_4:
    while (1)
    {
      v13 &= v13 - 1;
      result = HMService.subscript.getter();
      if (result)
      {
        break;
      }

      if (!v13)
      {
        goto LABEL_6;
      }
    }

    MEMORY[0x1D3891220]();
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v18 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D1E67C5C();
    }

    result = sub_1D1E67CAC();
    v9 = v18;
  }

  while (v13);
LABEL_6:
  while (1)
  {
    v17 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v17 >= v14)
    {

      *a2 = v9;
      return result;
    }

    v13 = *(v10 + 8 * v17);
    ++v16;
    if (v13)
    {
      v16 = v17;
      goto LABEL_4;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1A9407C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[10] = a5;
  v6[11] = a6;
  v6[8] = a1;
  v6[9] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v6[12] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v6[13] = v7;
  v8 = *(v7 - 8);
  v6[14] = v8;
  v6[15] = *(v8 + 64);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v6[18] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v6[19] = swift_task_alloc();
  v6[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A941E0, 0, 0);
}

uint64_t sub_1D1A941E0()
{
  v1 = *(*(v0 + 72) + 168);
  *(v0 + 168) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D1A94204, v1, 0);
}

uint64_t sub_1D1A94204()
{
  v57 = v0;
  v1 = v0[10];
  v56 = MEMORY[0x1E69E7CC0];
  if (v1 >> 62)
  {
    goto LABEL_33;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v3 = v0[21];
  swift_beginAccess();
  if (v2)
  {
    v4 = 0;
    v48 = v0;
    v5 = v1 & 0xC000000000000001;
    v6 = v1 & 0xFFFFFFFFFFFFFF8;
    v0 = (v0[10] + 32);
    v53 = v2;
    v55 = v3;
    v50 = v1 & 0xFFFFFFFFFFFFFF8;
    v51 = v1 & 0xC000000000000001;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x1D3891EF0](v4, v48[10]);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_32;
        }

        v7 = v0[v4];
      }

      v8 = v7;
      if (__OFADD__(v4++, 1))
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        v2 = sub_1D1E6873C();
        goto LABEL_3;
      }

      v10 = *(v3 + 120);
      if ((v10 & 0xC000000000000001) != 0)
      {

        v1 = v8;
        v11 = sub_1D1E6878C();

        if (v11)
        {

          goto LABEL_7;
        }
      }

      else if (*(v10 + 16))
      {
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);

        v12 = sub_1D1E684EC();
        v13 = -1 << *(v10 + 32);
        v14 = v12 & ~v13;
        if ((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
        {
          v15 = ~v13;
          while (1)
          {
            v16 = *(*(v10 + 48) + 8 * v14);
            v1 = sub_1D1E684FC();

            if (v1)
            {
              break;
            }

            v14 = (v14 + 1) & v15;
            if (((*(v10 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v2 = v53;
          v3 = v55;
          v6 = v50;
          v5 = v51;
          goto LABEL_7;
        }

LABEL_5:

        v2 = v53;
        v3 = v55;
        v6 = v50;
        v5 = v51;
      }

      sub_1D1E6896C();
      sub_1D1E689AC();
      sub_1D1E689BC();
      v1 = &v56;
      sub_1D1E6897C();
LABEL_7:
      if (v4 == v2)
      {
        v17 = v56;
        v0 = v48;
        goto LABEL_25;
      }
    }
  }

  v17 = MEMORY[0x1E69E7CC0];
LABEL_25:
  swift_beginAccess();

  sub_1D19519A4(v18);
  swift_endAccess();

  if (v17 < 0 || (v17 & 0x4000000000000000) != 0)
  {
    if (sub_1D1E6873C())
    {
      goto LABEL_28;
    }
  }

  else if (*(v17 + 16))
  {
LABEL_28:
    v19 = v0[21];
    v20 = v0[16];
    v21 = v0[17];
    v22 = v0;
    v25 = v0 + 14;
    v23 = v0[14];
    v24 = v25[1];
    v26 = v22[12];
    v27 = v22[13];
    v46 = v27;
    v47 = v20;
    v28 = v22[11];
    v49 = v22[10];

    sub_1D1A97360(v29, v21);

    v54 = sub_1D1E67E7C();
    v52 = *(*(v54 - 8) + 56);
    v52(v26, 1, 1, v54);
    (*(v23 + 16))(v20, v21, v27);
    v30 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48, &protocol conformance descriptor for CharacteristicValueModerator<A>);
    v31 = (*(v23 + 80) + 56) & ~*(v23 + 80);
    v32 = (v24 + v31 + 7) & 0xFFFFFFFFFFFFFFF8;
    v33 = swift_allocObject();
    *(v33 + 2) = v19;
    *(v33 + 3) = v30;
    *(v33 + 4) = 3;
    *(v33 + 5) = v49;
    *(v33 + 6) = v19;
    (*(v23 + 32))(&v33[v31], v47, v46);
    *&v33[v32] = v28;
    *&v33[(v32 + 15) & 0xFFFFFFFFFFFFFFF8] = v17;
    swift_retain_n();

    v34 = v28;
    v35 = sub_1D1B02614(0, 0, v26, &unk_1D1E96200, v33);
    v22[22] = v35;
    v52(v26, 1, 1, v54);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v35;

    v37 = sub_1D1B02614(0, 0, v26, &unk_1D1E96208, v36);
    v22[23] = v37;
    v38 = swift_task_alloc();
    v22[24] = v38;
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    *v38 = v22;
    v38[1] = sub_1D1A947F8;
    v41 = v22[18];
    v40 = v22[19];
    v42 = MEMORY[0x1E69E7288];

    return MEMORY[0x1EEE6DA10](v40, v37, v41, v39, v42);
  }

  v43 = v0[20];

  v44 = type metadata accessor for StateSnapshot(0);
  (*(*(v44 - 8) + 56))(v43, 1, 1, v44);

  return MEMORY[0x1EEE6DFA0](sub_1D1A94940, 0, 0);
}

uint64_t sub_1D1A947F8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 168);
  if (v0)
  {
    v4 = sub_1D1A94B14;
  }

  else
  {
    v4 = sub_1D1A94A5C;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1A94940()
{
  v1 = v0[20];
  v2 = v0[11];
  v3 = v0[8];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0) + 48);
  v5 = [v2 uniqueIdentifier];
  sub_1D1E66A5C();

  sub_1D1741A90(v1, v3 + v4, &unk_1EC649E30, &unk_1D1E91250);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B60, &qword_1D1E7E800);
  swift_storeEnumTagMultiPayload();

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D1A94A5C()
{
  v1 = v0[19];
  v2 = v0[20];
  v3 = v0[17];
  v4 = v0[13];
  v5 = v0[14];

  (*(v5 + 8))(v3, v4);
  sub_1D1741A90(v1, v2, &unk_1EC649E30, &unk_1D1E91250);

  return MEMORY[0x1EEE6DFA0](sub_1D1A94940, 0, 0);
}

uint64_t sub_1D1A94B14()
{
  v1 = v0[17];
  v2 = v0[13];
  v3 = v0[14];

  (*(v3 + 8))(v1, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1A94BA4, 0, 0);
}

uint64_t sub_1D1A94BA4()
{
  v1 = v0[25];
  v2 = v0[11];
  v3 = v0[8];
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0) + 48);
  v5 = [v2 uniqueIdentifier];
  sub_1D1E66A5C();

  *(v3 + v4) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B60, &qword_1D1E7E800);
  swift_storeEnumTagMultiPayload();

  v6 = v0[1];

  return v6();
}

uint64_t HomeState.Stream.fetchCharacteristics(for:characteristicsKindMap:timeout:snapshotPreference:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t *a6)
{
  *(v7 + 72) = a4;
  *(v7 + 80) = v6;
  *(v7 + 216) = a5;
  *(v7 + 56) = a2;
  *(v7 + 64) = a3;
  *(v7 + 48) = a1;
  *(v7 + 88) = *(type metadata accessor for StaticService(0) - 8);
  *(v7 + 96) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C80, &qword_1D1E960F8);
  *(v7 + 104) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a6;
  *(v7 + 112) = v9;
  *(v7 + 120) = v10;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v11 = qword_1EC64ABE8;
  *(v7 + 128) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A94DF4, v11, 0);
}

uint64_t sub_1D1A94DF4()
{
  v47 = v0;
  v1 = *(v0 + 80);
  swift_beginAccess();
  v2 = *(v1 + 64);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v4 = [v2 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    sub_1D1E67C1C();

    v46 = sub_1D1749970(v5);
    sub_1D1747DDC(&v46);

    v6 = v46;
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v8 + 16) = v7;
  v9 = sub_1D174A6C4(sub_1D1749C64, v8, v6);
  *(v0 + 136) = v9;

  if (v9)
  {
    if (v3 >> 62 && sub_1D1E6873C())
    {
      sub_1D179CED0(MEMORY[0x1E69E7CC0]);
    }

    else
    {
      v10 = MEMORY[0x1E69E7CD0];
    }

    v11 = *(v0 + 88);
    v12 = *(v0 + 64);
    *(v0 + 40) = v10;
    v13 = *(v12 + 32);
    *(v0 + 217) = v13;
    v14 = -1;
    v15 = -1 << v13;
    if (-(-1 << v13) < 64)
    {
      v14 = ~(-1 << -v15);
    }

    v16 = v14 & *(v12 + 64);
    *(v0 + 144) = 0;

    if (v16)
    {
      v17 = 0;
LABEL_17:
      v25 = *(v0 + 96);
      v24 = *(v0 + 104);
      v26 = __clz(__rbit64(v16));
      v27 = (v16 - 1) & v16;
      v28 = v26 | (v17 << 6);
      sub_1D1AA43E0(*(v12 + 48) + *(v11 + 72) * v28, v25, type metadata accessor for StaticService);
      v29 = *(*(v12 + 56) + 8 * v28);
      v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C88, &qword_1D1E96100);
      v31 = *(v30 + 48);
      sub_1D1AA4538(v25, v24, type metadata accessor for StaticService);
      *(v24 + v31) = v29;
      (*(*(v30 - 8) + 56))(v24, 0, 1, v30);

      v23 = v17;
    }

    else
    {
      v22 = 0;
      v23 = ((63 - v15) >> 6) - 1;
      while (v23 != v22)
      {
        v17 = v22 + 1;
        v16 = *(v12 + 72 + 8 * v22++);
        if (v16)
        {
          goto LABEL_17;
        }
      }

      v44 = *(v0 + 104);
      v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C88, &qword_1D1E96100);
      (*(*(v45 - 8) + 56))(v44, 1, 1, v45);
      v27 = 0;
    }

    *(v0 + 152) = v27;
    *(v0 + 160) = v23;
    v32 = *(v0 + 112);
    sub_1D1741A90(*(v0 + 104), v32, &qword_1EC649C80, &qword_1D1E960F8);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C88, &qword_1D1E96100);
    if ((*(*(v33 - 8) + 48))(v32, 1, v33) == 1)
    {
      v34 = *(v0 + 136);
      v35 = *(v0 + 216);

      v36 = *(v0 + 40);
      *(v0 + 192) = v36;
      v37 = swift_task_alloc();
      *(v0 + 200) = v37;
      *v37 = v0;
      v37[1] = sub_1D1A958A0;
      v38 = *(v0 + 120);
      v39 = *(v0 + 72);
      v40 = *(v0 + 48);

      return sub_1D1A90EF0(v40, v36, v34, v39, v35 & 1, v38);
    }

    else
    {
      v41 = *(v0 + 112);
      v42 = *(v0 + 96);
      *(v0 + 168) = *(v41 + *(v33 + 48));
      sub_1D1AA4538(v41, v42, type metadata accessor for StaticService);
      v43 = swift_task_alloc();
      *(v0 + 176) = v43;
      *v43 = v0;
      v43[1] = sub_1D1A9539C;

      return StaticService.service.getter();
    }
  }

  else
  {
    v18 = *(v0 + 48);
    v19 = type metadata accessor for StateSnapshot(0);
    (*(*(v19 - 8) + 56))(v18, 1, 1, v19);

    v20 = *(v0 + 8);

    return v20();
  }
}

uint64_t sub_1D1A9539C(uint64_t a1)
{
  v2 = *(*v1 + 128);
  *(*v1 + 184) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A954B4, v2, 0);
}

uint64_t sub_1D1A954B4()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 168);
  v3 = *(v0 + 144);
  v4 = *(v0 + 96);
  v5 = v1;
  sub_1D1AA3B40(v2, v1);

  result = sub_1D1AA3F34(v4, type metadata accessor for StaticService);
  v7 = *(v0 + 152);
  v8 = *(v0 + 160);
  *(v0 + 144) = v3;
  if (v7)
  {
    v9 = *(v0 + 64);
LABEL_11:
    v14 = *(v0 + 96);
    v15 = *(v0 + 104);
    v16 = (v7 - 1) & v7;
    v17 = __clz(__rbit64(v7)) | (v8 << 6);
    sub_1D1AA43E0(*(v9 + 48) + *(*(v0 + 88) + 72) * v17, v14, type metadata accessor for StaticService);
    v18 = *(*(v9 + 56) + 8 * v17);
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C88, &qword_1D1E96100);
    v20 = *(v19 + 48);
    sub_1D1AA4538(v14, v15, type metadata accessor for StaticService);
    *(v15 + v20) = v18;
    (*(*(v19 - 8) + 56))(v15, 0, 1, v19);

    v12 = v8;
LABEL_12:
    *(v0 + 152) = v16;
    *(v0 + 160) = v12;
    v21 = *(v0 + 112);
    sub_1D1741A90(*(v0 + 104), v21, &qword_1EC649C80, &qword_1D1E960F8);
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C88, &qword_1D1E96100);
    if ((*(*(v22 - 8) + 48))(v21, 1, v22) == 1)
    {
      v23 = *(v0 + 136);
      v24 = *(v0 + 216);

      v25 = *(v0 + 40);
      *(v0 + 192) = v25;
      v26 = swift_task_alloc();
      *(v0 + 200) = v26;
      *v26 = v0;
      v26[1] = sub_1D1A958A0;
      v27 = *(v0 + 120);
      v28 = *(v0 + 72);
      v29 = *(v0 + 48);

      return sub_1D1A90EF0(v29, v25, v23, v28, v24 & 1, v27);
    }

    else
    {
      v30 = *(v0 + 112);
      v31 = *(v0 + 96);
      *(v0 + 168) = *(v30 + *(v22 + 48));
      sub_1D1AA4538(v30, v31, type metadata accessor for StaticService);
      v32 = swift_task_alloc();
      *(v0 + 176) = v32;
      *v32 = v0;
      v32[1] = sub_1D1A9539C;

      return StaticService.service.getter();
    }
  }

  else
  {
    v10 = ((1 << *(v0 + 217)) + 63) >> 6;
    if (v10 <= (v8 + 1))
    {
      v11 = v8 + 1;
    }

    else
    {
      v11 = ((1 << *(v0 + 217)) + 63) >> 6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v13 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v13 >= v10)
      {
        v33 = *(v0 + 104);
        v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C88, &qword_1D1E96100);
        (*(*(v34 - 8) + 56))(v33, 1, 1, v34);
        v16 = 0;
        goto LABEL_12;
      }

      v9 = *(v0 + 64);
      v7 = *(v9 + 8 * v13 + 64);
      ++v8;
      if (v7)
      {
        v8 = v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1D1A958A0()
{
  v2 = *v1;
  *(*v1 + 208) = v0;

  v3 = *(v2 + 128);
  if (v0)
  {
    v4 = sub_1D1A95A54;
  }

  else
  {
    v4 = sub_1D1A959CC;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1D1A959CC()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1A95A54()
{
  v1 = *(v0 + 136);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t HomeState.Stream.toggle(tileInfoID:)(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v3[15] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v4 = qword_1EC64ABE8;
  v3[16] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A95BC0, v4, 0);
}

uint64_t sub_1D1A95BC0()
{
  v1 = *(v0 + 120);
  HomeState.AllHomesModel.currentStateSnapshot.getter(v1);
  v2 = type metadata accessor for StateSnapshot(0);
  v3 = *(v2 - 8);
  v4 = (*(v3 + 48))(v1, 1, v2);
  v5 = *(v0 + 120);
  if (v4 == 1)
  {
    sub_1D1741A30(*(v0 + 120), &unk_1EC649E30, &unk_1D1E91250);
    *(v0 + 56) = 0u;
    *(v0 + 72) = 0u;
    *(v0 + 88) = 0;
LABEL_7:
    v11 = *(v0 + 96);
    sub_1D1741A30(v0 + 56, &qword_1EC643668, &qword_1D1E71D60);
    (*(v3 + 56))(v11, 1, 1, v2);

    v12 = *(v0 + 8);

    return v12();
  }

  StateSnapshot.tileInfo(for:)(*(v0 + 104), (v0 + 56));
  sub_1D1AA3F34(v5, type metadata accessor for StateSnapshot);
  if (!*(v0 + 80))
  {
    goto LABEL_7;
  }

  sub_1D16EEE20((v0 + 56), v0 + 16);
  v6 = *(v0 + 40);
  v7 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
  v13 = (*(v7 + 200) + **(v7 + 200));
  v8 = swift_task_alloc();
  *(v0 + 136) = v8;
  *v8 = v0;
  v8[1] = sub_1D1A95E48;
  v9 = *(v0 + 96);

  return v13(v9, v6, v7);
}

uint64_t sub_1D1A95E48()
{
  v1 = *(*v0 + 128);

  return MEMORY[0x1EEE6DFA0](sub_1D1A95F58, v1, 0);
}

uint64_t sub_1D1A95F58()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t HomeState.Stream.write(characteristicValueSet:timeout:)(uint64_t a1, uint64_t *a2, uint64_t a3, char a4)
{
  *(v5 + 48) = a3;
  *(v5 + 56) = v4;
  *(v5 + 184) = a4;
  *(v5 + 40) = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C90, &qword_1D1E96120);
  *(v5 + 64) = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  *(v5 + 72) = v7;
  *(v5 + 80) = *(v7 - 8);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = swift_task_alloc();
  v8 = swift_task_alloc();
  v9 = *a2;
  *(v5 + 112) = v8;
  *(v5 + 120) = v9;
  *(v5 + 185) = *(a2 + 8);
  *(v5 + 128) = a2[2];
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v10 = qword_1EC64ABE8;
  *(v5 + 136) = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A96134, v10, 0);
}

uint64_t sub_1D1A96134()
{
  v65 = v0;
  v1 = *(v0 + 64);
  sub_1D1771FF8(*(v0 + 120), v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D1741A30(*(v0 + 64), &qword_1EC649C90, &qword_1D1E96120);
LABEL_33:
    if (qword_1EC642328 != -1)
    {
LABEL_41:
      swift_once();
    }

    v47 = sub_1D1E6709C();
    __swift_project_value_buffer(v47, qword_1EC64A290);

    v48 = sub_1D1E6707C();
    v49 = sub_1D1E6833C();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 185);
      v52 = *(v0 + 120);
      v51 = *(v0 + 128);
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v63 = v51;
      v64[0] = v54;
      *v53 = 136315138;
      v61 = v52;
      v62 = v50;
      v55 = CharacteristicValueSet.description.getter();
      v57 = sub_1D1B1312C(v55, v56, v64);

      *(v53 + 4) = v57;
      _os_log_impl(&dword_1D16EC000, v48, v49, "Exit early in write characteristic due to missing home, characteristicValueSet: %s", v53, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v54);
      MEMORY[0x1D3893640](v54, -1, -1);
      MEMORY[0x1D3893640](v53, -1, -1);
    }

    v58 = *(v0 + 40);
    v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
    (*(*(v59 - 8) + 56))(v58, 1, 1, v59);

    v60 = *(v0 + 8);

    return v60();
  }

  else
  {
    v4 = *(v0 + 104);
    v3 = *(v0 + 112);
    v5 = *(v0 + 72);
    v6 = *(v0 + 80);
    v8 = *(v0 + 56);
    v7 = *(v0 + 64);

    v9 = *(v6 + 32);
    v9(v4, v7, v5);
    v9(v3, v4, v5);
    swift_beginAccess();
    v10 = *(v8 + 64);
    if (v10)
    {
      v11 = [v10 homes];
      sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
      sub_1D1E67C1C();

      v61 = sub_1D1749970(v12);
      sub_1D1747DDC(&v61);

      v13 = v61;
    }

    else
    {
      v13 = MEMORY[0x1E69E7CC0];
    }

    v14 = *(v0 + 112);
    v15 = *(v0 + 88);
    v16 = *(v0 + 72);
    v17 = *(*(v0 + 80) + 16);
    v17(*(v0 + 96), v14, v16);
    v17(v15, v14, v16);
    if (v13 >> 62)
    {
      v18 = sub_1D1E6873C();
    }

    else
    {
      v18 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v19 = 0;
    v20 = v13 & 0xC000000000000001;
    v21 = (v13 + 32);
    while (1)
    {
      if (v18 == v19)
      {
        goto LABEL_19;
      }

      if (v20)
      {
        v22 = MEMORY[0x1D3891EF0](v19, v13);
      }

      else
      {
        if (v19 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_40:
          __break(1u);
          goto LABEL_41;
        }

        v22 = *(v13 + 8 * v19 + 32);
      }

      v23 = v22;
      v24 = *(v0 + 88);
      v61 = v22;
      sub_1D1A8B334(&v61, v24, v64);

      v16 = v64[0];
      if (v16)
      {
        break;
      }

      if (__OFADD__(v19++, 1))
      {
        goto LABEL_40;
      }
    }

    v18 = v19;
LABEL_19:
    if (!(v13 >> 62))
    {
      if (v18 != *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_21;
      }

LABEL_31:
      v43 = *(v0 + 112);
      v44 = *(v0 + 88);
      v45 = *(v0 + 72);
      v46 = *(*(v0 + 80) + 8);
      v46(*(v0 + 96), v45);

      v46(v44, v45);
      v46(v43, v45);
      goto LABEL_33;
    }

    if (v18 == sub_1D1E6873C())
    {
      goto LABEL_31;
    }

LABEL_21:
    if (!v20)
    {
      if (v18 < *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v26 = v21[v18];
        goto LABEL_24;
      }

      __break(1u);
LABEL_45:
      result = (v21)(v19, v16);
      __break(1u);
      return result;
    }

    v26 = MEMORY[0x1D3891EF0](v18, v13);
LABEL_24:
    v27 = v26;
    v28 = *(v0 + 96);
    v29 = *(v0 + 72);
    v30 = *(v0 + 80);
    v61 = v26;
    sub_1D1A8B334(&v61, v28, v64);
    v21 = *(v30 + 8);
    *(v0 + 144) = v21;
    *(v0 + 152) = (v30 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (v21)(v28, v29);

    v31 = v64[0];
    *(v0 + 160) = v64[0];
    v19 = *(v0 + 88);
    v16 = *(v0 + 72);
    if (!v31)
    {
      goto LABEL_45;
    }

    (v21)(v19, v16);
    v32 = [v31 accessory];
    if (!v32 || (v33 = v32, v34 = [v32 home], *(v0 + 168) = v34, v33, !v34))
    {
      (v21)(*(v0 + 112), *(v0 + 72));

      goto LABEL_33;
    }

    v35 = *(v0 + 184);
    v36 = swift_task_alloc();
    *(v0 + 176) = v36;
    *v36 = v0;
    v36[1] = sub_1D1A9681C;
    v37 = *(v0 + 185);
    v38 = *(v0 + 120);
    v39 = *(v0 + 128);
    v40 = *(v0 + 40);
    v41 = *(v0 + 48);

    return sub_1D1A8DDCC(v40, v38, v37, v39, v34, v41, v35 & 1);
  }
}

uint64_t sub_1D1A9681C()
{
  v1 = *(*v0 + 136);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9692C, v1, 0);
}

uint64_t sub_1D1A9692C()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 144);
  v3 = *(v0 + 112);
  v4 = *(v0 + 72);

  v2(v3, v4);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t HomeState.Stream.refreshActionSets(for:)(uint64_t a1)
{
  v2[5] = a1;
  v2[6] = v1;
  v2[7] = type metadata accessor for StateSnapshot.UpdateType(0);
  v2[8] = swift_task_alloc();
  type metadata accessor for StateSnapshot(0);
  v2[9] = swift_task_alloc();
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC64ABE8;
  v2[10] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1A96AE0, v3, 0);
}

uint64_t sub_1D1A96AE0()
{
  v1 = v0[6];
  swift_beginAccess();
  v2 = *(v1 + 64);
  v0[11] = v2;
  if (v2)
  {
    v3 = v0[5];
    v0[12] = *(*(v0[6] + 144) + qword_1EC6BE170);
    v30 = v2;

    v4 = [v3 actionSets];
    sub_1D1741B10(0, &qword_1EE07B680, 0x1E696CAF0);
    v5 = sub_1D1E67C1C();

    v6 = sub_1D18DA708(MEMORY[0x1E69E7CC0]);
    if (v5 >> 62)
    {
LABEL_33:
      v7 = sub_1D1E6873C();
      v31 = v0;
      if (v7)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v31 = v0;
      if (v7)
      {
LABEL_4:
        v8 = 0;
        do
        {
          if ((v5 & 0xC000000000000001) != 0)
          {
            v9 = MEMORY[0x1D3891EF0](v8, v5);
          }

          else
          {
            if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_30;
            }

            v9 = *(v5 + 8 * v8 + 32);
          }

          v10 = v9;
          v0 = (v8 + 1);
          if (__OFADD__(v8, 1))
          {
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
LABEL_32:
            __break(1u);
            goto LABEL_33;
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v13 = sub_1D171D3B8(v10);
          v14 = v6[2];
          v15 = (v12 & 1) == 0;
          v16 = v14 + v15;
          if (__OFADD__(v14, v15))
          {
            goto LABEL_31;
          }

          v17 = v12;
          if (v6[3] >= v16)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              if (v12)
              {
                goto LABEL_5;
              }
            }

            else
            {
              sub_1D173BB28();
              if (v17)
              {
                goto LABEL_5;
              }
            }
          }

          else
          {
            sub_1D172D590(v16, isUniquelyReferenced_nonNull_native);
            v18 = sub_1D171D3B8(v10);
            if ((v17 & 1) != (v19 & 1))
            {

              return sub_1D1E690FC();
            }

            v13 = v18;
            if (v17)
            {
LABEL_5:
              *(v6[7] + 2 * v13) = 0x8000;

              goto LABEL_6;
            }
          }

          v6[(v13 >> 6) + 8] |= 1 << v13;
          *(v6[6] + 8 * v13) = v10;
          *(v6[7] + 2 * v13) = 0x8000;
          v20 = v6[2];
          v21 = __OFADD__(v20, 1);
          v22 = v20 + 1;
          if (v21)
          {
            goto LABEL_32;
          }

          v6[2] = v22;
LABEL_6:
          ++v8;
        }

        while (v0 != v7);
      }
    }

    v25 = v31[8];

    *v25 = v6;
    swift_storeEnumTagMultiPayload();
    v26 = swift_task_alloc();
    v31[13] = v26;
    *v26 = v31;
    v26[1] = sub_1D1A96E7C;
    v28 = v31[8];
    v27 = v31[9];
    v29 = v31[5];

    return sub_1D1E5A250(v27, v28, v30, v29, 0);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1D1A96E7C()
{
  v1 = *(*v0 + 80);
  v2 = *(*v0 + 72);
  v3 = *(*v0 + 64);

  sub_1D1AA3F34(v3, type metadata accessor for StateSnapshot.UpdateType);
  sub_1D1AA3F34(v2, type metadata accessor for StateSnapshot);

  return MEMORY[0x1EEE6DFA0](sub_1D1A97010, v1, 0);
}

uint64_t sub_1D1A97010()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1A97080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = sub_1D18D8A70(MEMORY[0x1E69E7CC0]);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v42 = a1;

  v9 = 0;
  v40 = v8;
  v41 = v4;
  while (v7)
  {
LABEL_11:
    v16 = __clz(__rbit64(v7)) | (v9 << 6);
    v17 = *(*(v42 + 48) + 8 * v16);
    v18 = *(v42 + 56) + 32 * v16;
    v20 = *v18;
    v19 = *(v18 + 8);
    v21 = *(v18 + 16);
    v22 = *(v18 + 24);
    sub_1D17418FC(*v18, v19, v21, v22);
    sub_1D17418FC(v20, v19, v21, v22);
    v23 = v17;
    sub_1D1757A60(v20, v19, v21, v22);
    v24 = v23;
    sub_1D17418FC(v20, v19, v21, v22);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_1D171D368(v24);
    v28 = v3[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_23;
    }

    v32 = v27;
    if (v3[3] < v31)
    {
      sub_1D172629C(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1D171D368(v24);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      if (v32)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v37 = v26;
    sub_1D1737AA0();
    v26 = v37;
    if (v32)
    {
LABEL_4:
      v10 = v3[7] + 32 * v26;
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      *v10 = v20;
      *(v10 + 8) = v19;
      *(v10 + 16) = v21;
      v14 = *(v10 + 24);
      *(v10 + 24) = v22;
      sub_1D1757A60(v11, v12, v13, v14);

      sub_1D1757A60(v20, v19, v21, v22);
      goto LABEL_5;
    }

LABEL_17:
    v3[(v26 >> 6) + 8] |= 1 << v26;
    *(v3[6] + 8 * v26) = v24;
    v34 = v3[7] + 32 * v26;
    *v34 = v20;
    *(v34 + 8) = v19;
    *(v34 + 16) = v21;
    *(v34 + 24) = v22;

    sub_1D1757A60(v20, v19, v21, v22);
    v35 = v3[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_24;
    }

    v3[2] = v36;
LABEL_5:
    v7 &= v7 - 1;

    v8 = v40;
    v4 = v41;
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v15 >= v8)
    {

      *a2 = v3;
      *(a2 + 8) = 0;
      *(a2 + 16) = 1;
      return result;
    }

    v7 = *(v4 + 8 * v15);
    ++v9;
    if (v7)
    {
      v9 = v15;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1A97360@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v167 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v171 = &v142 - v4;
  v183 = sub_1D1E66FDC();
  v173 = *(v183 - 8);
  v5 = MEMORY[0x1EEE9AC00](v183);
  v181 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v157 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v182 = &v142 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C98, &qword_1D1E96138);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v142 - v10;
  v186 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  v177 = *(v186 - 8);
  v12 = MEMORY[0x1EEE9AC00](v186);
  v156 = &v142 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v154 = &v142 - v15;
  v155 = v16;
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v142 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v166 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v184 = &v142 - v20;
  v185 = sub_1D1E66A7C();
  v191 = *(v185 - 8);
  v21 = MEMORY[0x1EEE9AC00](v185);
  v180 = &v142 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v160 = &v142 - v24;
  v170 = v25;
  MEMORY[0x1EEE9AC00](v23);
  v194 = &v142 - v26;
  v27 = sub_1D1E6709C();
  v189 = *(v27 - 8);
  v28 = MEMORY[0x1EEE9AC00](v27);
  v188 = &v142 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v179 = v29;
  MEMORY[0x1EEE9AC00](v28);
  v195 = &v142 - v30;
  v31 = sub_1D1E6701C();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x1EEE9AC00](v31);
  v187 = &v142 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = v34;
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v142 - v35;
  if (qword_1EC642350 != -1)
  {
    swift_once();
  }

  v37 = __swift_project_value_buffer(v31, qword_1EC6BE198);
  v176 = v32;
  v39 = *(v32 + 16);
  v38 = v32 + 16;
  v190 = v31;
  v168 = v39;
  v39(v36, v37, v31);
  if (qword_1EC642348 != -1)
  {
    swift_once();
  }

  v193 = v18;
  v40 = __swift_project_value_buffer(v27, qword_1EC6BE180);
  v42 = v189 + 16;
  v41 = *(v189 + 16);
  v192 = v27;
  v178 = v41;
  v41(v195, v40, v27);
  sub_1D1E66A6C();
  v172 = a1;
  if (a1 >> 62)
  {
    v43 = sub_1D1E6873C();
  }

  else
  {
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643340, &qword_1D1E717A0);
  (*(v9 + 104))(v11, *MEMORY[0x1E69E8790], v8);
  v44 = v193;
  sub_1D1E6804C();
  (*(v9 + 8))(v11, v8);
  if (v43 < 1)
  {
    sub_1D1E67D8C();
    sub_1D1AA3AF8(&qword_1EC6486C8, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v81 = swift_allocError();
    sub_1D1E6759C();
    v196 = v81;
    v82 = v186;
    sub_1D1E680AC();
    (*(v177 + 8))(v44, v82);
    (*(v191 + 8))(v194, v185);
    (*(v176 + 8))(v36, v190);
    v83 = v192;
    v84 = v189;
  }

  else
  {
    v174 = v42;
    v165 = v38;
    sub_1D1E66FFC();
    v45 = v182;
    sub_1D1E66FAC();
    v46 = sub_1D1E66FFC();
    v47 = sub_1D1E683EC();
    v48 = sub_1D1E6855C();
    v49 = v185;
    if (v48)
    {
      v50 = swift_slowAlloc();
      *v50 = 134217984;
      *(v50 + 4) = v43;
      v51 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v46, v47, v51, "BatchCharacteristicRead", "#characteristics: %ld", v50, 0xCu);
      MEMORY[0x1D3893640](v50, -1, -1);
    }

    v175 = v36;
    v153 = v19;

    v52 = *(v173 + 16);
    v151 = v173 + 16;
    v150 = v52;
    v52(v181, v45, v183);
    sub_1D1E6705C();
    swift_allocObject();
    v164 = sub_1D1E6704C();
    v53 = v191;
    v54 = *(v191 + 16);
    v55 = v160;
    v162 = v191 + 16;
    v161 = v54;
    v54(v160, v194, v49);
    v56 = v163;
    v57 = v195;
    v58 = sub_1D1E6707C();
    v59 = sub_1D1E6831C();
    v60 = os_log_type_enabled(v58, v59);
    v163 = v56;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v159 = swift_slowAlloc();
      v196 = v159;
      *v61 = 134218754;
      *(v61 + 4) = v43;
      *(v61 + 12) = 2082;
      v158 = sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v62 = sub_1D1E68FAC();
      v64 = v63;
      v149 = *(v191 + 8);
      v152 = (v191 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v149(v55, v49);
      v65 = sub_1D1B1312C(v62, v64, &v196);

      *(v61 + 14) = v65;
      *(v61 + 22) = 2080;
      v66 = [v56 name];
      v67 = v56;
      v68 = sub_1D1E6781C();
      v70 = v69;

      v71 = sub_1D1B1312C(v68, v70, &v196);

      *(v61 + 24) = v71;
      *(v61 + 32) = 2082;
      v72 = [v67 uniqueIdentifier];
      v73 = v180;
      sub_1D1E66A5C();

      v74 = sub_1D1E68FAC();
      v76 = v75;

      v149(v73, v49);
      v57 = v195;
      v53 = v191;
      v77 = sub_1D1B1312C(v74, v76, &v196);

      *(v61 + 34) = v77;
      _os_log_impl(&dword_1D16EC000, v58, v59, "Starting batch characteristic read operation with %ld characteristics (ID: %{public}s, home: %s (%{public}s))", v61, 0x2Au);
      v78 = v159;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v78, -1, -1);
      MEMORY[0x1D3893640](v61, -1, -1);

      v80 = v176;
    }

    else
    {

      v85 = *(v53 + 8);
      v152 = (v53 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v79 = v85(v55, v49);
      v80 = v176;
      v73 = v180;
    }

    MEMORY[0x1EEE9AC00](v79);
    *(&v142 - 2) = v57;
    sub_1D1D3926C(sub_1D1AA4BC4, (&v142 - 4), v172);
    v161(v73, v194, v49);
    v178(v188, v57, v192);
    v86 = v190;
    v168(v187, v175, v190);
    v87 = *(v53 + 80);
    v88 = (v87 + 16) & ~v87;
    v147 = v87;
    v89 = v53;
    v90 = v189;
    v158 = *(v189 + 80);
    v91 = (v170 + v158 + v88) & ~v158;
    v144 = *(v80 + 80);
    v92 = v80;
    v93 = (v179 + v144 + v91) & ~v144;
    v148 = v158 | v87 | v144 | 7;
    v143 = (v93 + v169 + 7) & 0xFFFFFFFFFFFFFFF8;
    v142 = ((v93 + v169 + 31) & 0xFFFFFFFFFFFFFFF8);
    v94 = swift_allocObject();
    v95 = *(v89 + 32);
    v191 = v89 + 32;
    v149 = v95;
    (v95)(v94 + v88, v73, v49);
    v96 = *(v90 + 32);
    v159 = v90 + 32;
    v160 = v96;
    v97 = v94 + v91;
    v98 = v188;
    v99 = v192;
    (v96)(v97, v188, v192);
    v100 = *(v92 + 32);
    v145 = v92 + 32;
    v146 = v100;
    v100(v94 + v93, v187, v86);
    v101 = v94 + v143;
    *v101 = "BatchCharacteristicRead";
    *(v101 + 8) = 23;
    *(v101 + 16) = 2;
    *(v142 + v94) = v164;

    v102 = v186;
    v103 = v193;
    sub_1D1E6807C();
    v178(v98, v195, v99);
    v104 = v177;
    v142 = *(v177 + 16);
    v105 = v154;
    v142(v154, v103, v102);
    v106 = (v158 + 16) & ~v158;
    v107 = *(v104 + 80);
    v108 = (v106 + v179 + v107) & ~v107;
    v109 = swift_allocObject();
    v143 = v109;
    v110 = v98;
    v111 = v192;
    (v160)(v109 + v106, v110, v192);
    v112 = *(v104 + 32);
    v113 = v109 + v108;
    v114 = v186;
    v112(v113, v105, v186);
    v115 = v156;
    v142(v156, v193, v114);
    v155 = swift_allocObject();
    v112(v155 + ((v107 + 16) & ~v107), v115, v114);
    v196 = 0x6165526863746142;
    v197 = 0xEA00000000002D64;
    v116 = [v163 name];
    v117 = sub_1D1E6781C();
    v119 = v118;

    MEMORY[0x1D3890F70](v117, v119);

    v156 = v196;
    v154 = v197;
    v120 = v171;
    sub_1D1E67F8C();
    v121 = sub_1D1E67E7C();
    (*(*(v121 - 8) + 56))(v120, 0, 1, v121);
    v168(v187, v175, v190);
    v150(v181, v182, v183);
    v178(v188, v195, v111);
    v161(v180, v194, v185);
    v122 = (v144 + 32) & ~v144;
    v123 = (v169 + v122 + 7) & 0xFFFFFFFFFFFFFFF8;
    v124 = v173;
    v125 = (v123 + *(v173 + 80) + 17) & ~*(v173 + 80);
    v126 = (v157 + v158 + v125) & ~v158;
    v127 = (v179 + v147 + v126) & ~v147;
    v128 = (v170 + v127 + 7) & 0xFFFFFFFFFFFFFFF8;
    v129 = (v128 + 15) & 0xFFFFFFFFFFFFFFF8;
    v130 = swift_allocObject();
    *(v130 + 16) = 0;
    *(v130 + 24) = 0;
    v131 = v130 + v122;
    v83 = v192;
    v146(v131, v187, v190);
    v132 = v130 + v123;
    *v132 = "BatchCharacteristicRead";
    *(v132 + 8) = 23;
    *(v132 + 16) = 2;
    v133 = v183;
    (*(v124 + 32))(v130 + v125, v181, v183);
    (v160)(v130 + v126, v188, v83);
    v134 = v185;
    v135 = v191;
    (v149)(v130 + v127, v180, v185);
    v136 = v163;
    *(v130 + v128) = v163;
    *(v130 + v129) = v172;
    v137 = (v130 + ((v129 + 15) & 0xFFFFFFFFFFFFFFF8));
    v138 = v143;
    *v137 = sub_1D1AA4D6C;
    v137[1] = v138;
    v139 = v155;
    v137[2] = sub_1D1AA4E4C;
    v137[3] = v139;
    v140 = v136;

    sub_1D17C6EF0(v156, v154, v171, &unk_1D1E96220, v130);

    v84 = v189;

    (*(v124 + 8))(v182, v133);
    (*(v177 + 8))(v193, v186);
    (*(v135 - 24))(v194, v134);
    (*(v176 + 8))(v175, v190);
    v19 = v153;
  }

  (*(v166 + 32))(v167, v184, v19);
  return (*(v84 + 8))(v195, v83);
}

uint64_t sub_1D1A9878C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v15;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a1;
  v10 = sub_1D1E66A7C();
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8);
  v8[35] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
  v8[36] = v11;
  v8[37] = *(*(v11 - 8) + 64);
  v8[38] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v8[39] = v12;
  v8[40] = *(v12 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD8, &qword_1D1E961C8);
  v8[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = type metadata accessor for StateSnapshot.UpdateType(0);
  v8[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A98A34, a6, 0);
}

uint64_t sub_1D1A98A34()
{
  if (*(v0 + 184))
  {
    v20 = *(v0 + 400);
    v21 = *(v0 + 200);
    v22 = sub_1D1A9CFA8(*(v0 + 192), 0, 0, 0, 0);
    *(v0 + 408) = *(v21 + 112);

    sub_1D1A97080(v22, v0 + 136);

    v23 = *(v0 + 152);
    *v20 = *(v0 + 136);
    *(v20 + 16) = v23;
    swift_storeEnumTagMultiPayload();
    v24 = swift_task_alloc();
    *(v0 + 416) = v24;
    *v24 = v0;
    v24[1] = sub_1D1A98E9C;
    v25 = *(v0 + 400);

    return sub_1D1AB6894(v25, 0, 0, 0, 0);
  }

  else
  {
    v1 = *(v0 + 384);
    v2 = *(v0 + 352);
    v26 = *(v0 + 344);
    v27 = *(v0 + 336);
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    v5 = *(v0 + 304);
    __n = *(v0 + 296);
    v6 = *(v0 + 280);
    v28 = *(v0 + 328);
    v29 = *(v0 + 288);
    v7 = *(v0 + 272);
    v8 = *(v0 + 208);
    v9 = type metadata accessor for StateSnapshot(0);
    *(v0 + 424) = v9;
    v10 = *(v9 - 8);
    *(v0 + 432) = v10;
    v11 = *(v10 + 56);
    *(v0 + 440) = v11;
    *(v0 + 448) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v1, 1, 1, v9);
    v12 = *(v4 + 16);
    v12(v2, v8, v3);
    *(v2 + *(v26 + 36)) = 1;
    v12(v27, v2, v3);
    v12(v28, v27, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE0, &qword_1D1E961D0);
    v13 = swift_allocObject();
    *(v0 + 456) = v13;
    *(v6 + *(v7 + 36)) = 0;
    *(v6 + *(v7 + 40)) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
    swift_storeEnumTagMultiPayload();
    *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF0, &qword_1D1E961E0) + 36)) = 1;
    *v5 = 0;
    v14 = *(v29 + 28);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF8, &qword_1D1E961E8);
    bzero(v5 + v14, *(*(v15 - 8) + 64));
    sub_1D1741A90(v6, v5 + v14, &qword_1EC649CC8, &qword_1D1E961B8);
    memcpy((v13 + *(*v13 + 96)), v5, __n);
    (*(v4 + 32))(v13 + *(*v13 + 104), v28, v3);
    (*(v4 + 8))(v27, v3);
    sub_1D1741A30(v2, &qword_1EC649CD8, &qword_1D1E961C8);
    v16 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48, &protocol conformance descriptor for CharacteristicValueModerator<A>);
    v17 = MEMORY[0x1E69E7CC8];
    *(v0 + 464) = v16;
    *(v0 + 472) = v17;
    v18 = swift_task_alloc();
    *(v0 + 480) = v18;
    *v18 = v0;
    v18[1] = sub_1D1A99368;

    return sub_1D1ACDA64();
  }
}

uint64_t sub_1D1A98E9C()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 200);

  sub_1D1AA3F34(v1, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9900C, v2, 0);
}

uint64_t sub_1D1A9900C()
{
  v1 = v0[48];
  v2 = v0[44];
  v20 = v0[43];
  v21 = v0[42];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[38];
  __n = v0[37];
  v6 = v0[35];
  v22 = v0[41];
  v23 = v0[36];
  v7 = v0[34];
  v8 = v0[26];
  v9 = type metadata accessor for StateSnapshot(0);
  v0[53] = v9;
  v10 = *(v9 - 8);
  v0[54] = v10;
  v11 = *(v10 + 56);
  v0[55] = v11;
  v0[56] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v1, 1, 1, v9);
  v12 = *(v4 + 16);
  v12(v2, v8, v3);
  *(v2 + *(v20 + 36)) = 1;
  v12(v21, v2, v3);
  v12(v22, v21, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE0, &qword_1D1E961D0);
  v13 = swift_allocObject();
  v0[57] = v13;
  *(v6 + *(v7 + 36)) = 0;
  *(v6 + *(v7 + 40)) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF0, &qword_1D1E961E0) + 36)) = 1;
  *v5 = 0;
  v14 = *(v23 + 28);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF8, &qword_1D1E961E8);
  bzero(v5 + v14, *(*(v15 - 8) + 64));
  sub_1D1741A90(v6, v5 + v14, &qword_1EC649CC8, &qword_1D1E961B8);
  memcpy((v13 + *(*v13 + 96)), v5, __n);
  (*(v4 + 32))(v13 + *(*v13 + 104), v22, v3);
  (*(v4 + 8))(v21, v3);
  sub_1D1741A30(v2, &qword_1EC649CD8, &qword_1D1E961C8);
  v16 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48, &protocol conformance descriptor for CharacteristicValueModerator<A>);
  v17 = MEMORY[0x1E69E7CC8];
  v0[58] = v16;
  v0[59] = v17;
  v18 = swift_task_alloc();
  v0[60] = v18;
  *v18 = v0;
  v18[1] = sub_1D1A99368;

  return sub_1D1ACDA64();
}

uint64_t sub_1D1A99368(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v5 = *(v3 + 200);
  if (v1)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1D1E67D4C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1D1A99B10;
    v10 = v6;
  }

  else
  {
    v9 = sub_1D1A994DC;
    v10 = v5;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, v8);
}

void sub_1D1A994DC()
{
  v38 = v0;
  v1 = *(v0 + 488);
  if (!v1)
  {
    v14 = *(v0 + 184);

    v15 = *(v0 + 472);
    *(v0 + 544) = v15;
    v16 = *(v0 + 224);
    swift_beginAccess();
    sub_1D1A9D59C(v16);
    swift_endAccess();
    v17 = *(v0 + 400);
    if ((v14 & 4) == 0)
    {
      sub_1D1741A90(*(v0 + 384), *(v0 + 176), &unk_1EC649E30, &unk_1D1E91250);

      v18 = *(v0 + 8);

      v18();
      return;
    }

    *(v0 + 552) = *(*(v0 + 200) + 112);

    sub_1D1A97080(v15, v0 + 88);
    v31 = *(v0 + 104);
    *v17 = *(v0 + 88);
    *(v17 + 16) = v31;
    swift_storeEnumTagMultiPayload();
    v32 = swift_task_alloc();
    *(v0 + 560) = v32;
    *v32 = v0;
    v32[1] = sub_1D1A9A5C8;
    v33 = *(v0 + 400);
    goto LABEL_39;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_43;
      }

      v5 = *(v1 + 32 + 8 * v3);
      v6 = *(v5 + 16);
      v7 = v4[2];
      v8 = v7 + v6;
      if (__OFADD__(v7, v6))
      {
        goto LABEL_44;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v8 <= v4[3] >> 1)
      {
        if (!*(v5 + 16))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v7 <= v8)
        {
          v10 = v7 + v6;
        }

        else
        {
          v10 = v7;
        }

        v4 = sub_1D177E530(isUniquelyReferenced_nonNull_native, v10, 1, v4);
        if (!*(v5 + 16))
        {
LABEL_4:

          if (v6)
          {
            goto LABEL_45;
          }

          goto LABEL_5;
        }
      }

      if ((v4[3] >> 1) - v4[2] < v6)
      {
        goto LABEL_46;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643330, &qword_1D1E71790);
      swift_arrayInitWithCopy();

      if (v6)
      {
        v11 = v4[2];
        v12 = __OFADD__(v11, v6);
        v13 = v11 + v6;
        if (v12)
        {
          goto LABEL_47;
        }

        v4[2] = v13;
      }

LABEL_5:
      if (v2 == ++v3)
      {
        goto LABEL_25;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_25:

  v19 = v4[2];
  v20 = MEMORY[0x1E69E7CC0];
  if (!v19)
  {
LABEL_30:
    v25 = *(v0 + 184);
    swift_beginAccess();
    sub_1D1A9D59C(v20);
    swift_endAccess();

    if (!v25)
    {

      goto LABEL_34;
    }

    v26 = *(v0 + 472);
    v27 = *(v0 + 184);
    v28 = sub_1D1A9D6A4(v4);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v26;
    sub_1D1AA47E0(v28, sub_1D1B327B4, 0, v29, &v37);

    *(v0 + 512) = v37;
    if ((v27 & 2) == 0)
    {

      *(v0 + 472) = *(v0 + 512);
LABEL_34:
      v30 = swift_task_alloc();
      *(v0 + 480) = v30;
      *v30 = v0;
      v30[1] = sub_1D1A99368;

      sub_1D1ACDA64();
      return;
    }

    v34 = *(v0 + 400);
    *(v0 + 520) = *(*(v0 + 200) + 112);

    sub_1D1A97080(v28, v0 + 112);

    v35 = *(v0 + 128);
    *v34 = *(v0 + 112);
    *(v34 + 16) = v35;
    swift_storeEnumTagMultiPayload();
    v36 = swift_task_alloc();
    *(v0 + 528) = v36;
    *v36 = v0;
    v36[1] = sub_1D1A9A218;
    v33 = *(v0 + 400);
LABEL_39:

    sub_1D1AB6894(v33, 0, 0, 0, 0);
    return;
  }

  *(v0 + 168) = MEMORY[0x1E69E7CC0];
  sub_1D1E6899C();
  v21 = 0;
  v22 = (v4 + 4);
  while (v21 < v4[2])
  {
    ++v21;
    v23 = *v22;
    v22 += 2;
    v24 = v23;
    sub_1D1E6896C();
    sub_1D1E689AC();
    sub_1D1E689BC();
    sub_1D1E6897C();
    if (v19 == v21)
    {
      v20 = *(v0 + 168);
      goto LABEL_30;
    }
  }

  __break(1u);
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
}

uint64_t sub_1D1A99B10()
{
  v1 = v0[25];
  v0[20] = v0[62];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1D1A99BA8, v1, 0);
}

uint64_t sub_1D1A99BA8()
{
  v1 = *(v0 + 62);
  v2 = *(v0 + 28);

  v3 = v1;
  v4 = sub_1D1E6655C();
  v62 = [v4 code];
  v5 = [v4 domain];
  v61 = sub_1D1E6781C();
  v7 = v6;

  if (v2 >> 62)
  {
LABEL_51:
    v64 = v2 & 0xFFFFFFFFFFFFFF8;
    v8 = sub_1D1E6873C();
  }

  else
  {
    v64 = v2 & 0xFFFFFFFFFFFFFF8;
    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = *(v0 + 28);
  v10 = *(v0 + 59);
  *(v0 + 63) = v10;
  if (!v8)
  {
    v63 = MEMORY[0x1E69E7CC8];
LABEL_38:
    v48 = *(v0 + 23);

    if ((v48 & 4) != 0)
    {
      v53 = *(v0 + 62);

      *(v0 + 68) = v10;
      v54 = *(v0 + 28);
      swift_beginAccess();
      sub_1D1A9D59C(v54);
      swift_endAccess();
      v55 = *(v0 + 50);
      *(v0 + 69) = *(*(v0 + 25) + 112);

      sub_1D1A97080(v10, (v0 + 88));
      v56 = v0[104];
      *v55 = *(v0 + 88);
      *(v55 + 16) = v56;
      swift_storeEnumTagMultiPayload();
      v57 = swift_task_alloc();
      *(v0 + 70) = v57;
      *v57 = v0;
      v57[1] = sub_1D1A9A5C8;
    }

    else
    {
      v49 = *(v0 + 50);
      *(v0 + 72) = *(*(v0 + 25) + 112);

      sub_1D1A97080(v63, (v0 + 64));

      v50 = v0[80];
      *v49 = *(v0 + 4);
      *(v49 + 16) = v50;
      swift_storeEnumTagMultiPayload();
      v51 = swift_task_alloc();
      *(v0 + 73) = v51;
      *v51 = v0;
      v51[1] = sub_1D1A9AA04;
    }

    v52 = *(v0 + 50);

    return sub_1D1AB6894(v52, 0, 0, 0, 0);
  }

  v11 = 0;
  v12 = v2 & 0xC000000000000001;
  v13 = v9 + 32;
  v63 = MEMORY[0x1E69E7CC8];
  v58 = v0;
  v59 = v2 & 0xC000000000000001;
  v60 = v7;
  while (2)
  {
    v14 = v11;
    while (1)
    {
      if (v12)
      {
        v15 = MEMORY[0x1D3891EF0](v14, *(v0 + 28));
      }

      else
      {
        if (v14 >= *(v64 + 16))
        {
          goto LABEL_48;
        }

        v15 = *(v13 + 8 * v14);
      }

      v2 = v15;
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (!v10[2])
      {
        break;
      }

      sub_1D171D368(v15);
      if ((v16 & 1) == 0)
      {
        break;
      }

      ++v14;
      if (v11 == v8)
      {
        goto LABEL_38;
      }
    }

    v0 = v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1D171D368(v0);
    v20 = v63[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v7 = v19;
    if (v63[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_1D1737AA0();
        v18 = v29;
        if (v7)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }

LABEL_20:
      if (v7)
      {
LABEL_21:
        v25 = v63[7] + 32 * v18;
        v27 = *v25;
        v26 = *(v25 + 8);
        v28 = *(v25 + 16);
        *v25 = v62;
        *(v25 + 8) = v61;
        *(v25 + 16) = v60;
        v7 = *(v25 + 24);
        *(v25 + 24) = 2;

        sub_1D1757A60(v27, v26, v28, v7);

        goto LABEL_25;
      }

LABEL_23:
      v63[(v18 >> 6) + 8] |= 1 << v18;
      *(v63[6] + 8 * v18) = v0;
      v30 = v63[7] + 32 * v18;
      *v30 = v62;
      *(v30 + 8) = v61;
      result = v60;
      *(v30 + 16) = v60;
      *(v30 + 24) = 2;
      v32 = v63[2];
      v22 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v22)
      {
        __break(1u);
        goto LABEL_53;
      }

      v63[2] = v33;

LABEL_25:
      v2 = swift_isUniquelyReferenced_nonNull_native();
      v35 = sub_1D171D368(v0);
      v36 = v10[2];
      v37 = (v34 & 1) == 0;
      result = v36 + v37;
      if (!__OFADD__(v36, v37))
      {
        v38 = v34;
        if (v10[3] >= result)
        {
          if ((v2 & 1) == 0)
          {
            result = sub_1D1737AA0();
          }

          v2 = v0;
          v12 = v59;
          if ((v38 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1D172629C(result, v2);
          v2 = v0;
          result = sub_1D171D368(v0);
          v12 = v59;
          if ((v38 & 1) != (v39 & 1))
          {
            goto LABEL_44;
          }

          v35 = result;
          if ((v38 & 1) == 0)
          {
LABEL_29:
            v10[(v35 >> 6) + 8] |= 1 << v35;
            *(v10[6] + 8 * v35) = v2;
            v40 = v10[7] + 32 * v35;
            *v40 = v62;
            *(v40 + 8) = v61;
            v7 = v60;
            *(v40 + 16) = v60;
            *(v40 + 24) = 2;
            v41 = v10[2];
            v22 = __OFADD__(v41, 1);
            v42 = v41 + 1;
            if (!v22)
            {
              v10[2] = v42;
              goto LABEL_35;
            }

LABEL_53:
            __break(1u);
            return result;
          }
        }

        v43 = v10[7] + 32 * v35;
        v44 = *v43;
        v45 = *(v43 + 8);
        v46 = *(v43 + 16);
        *v43 = v62;
        *(v43 + 8) = v61;
        v7 = v60;
        *(v43 + 16) = v60;
        v47 = *(v43 + 24);
        *(v43 + 24) = 2;
        sub_1D1757A60(v44, v45, v46, v47);

LABEL_35:
        v0 = v58;
        *(v58 + 63) = v10;
        if (v11 != v8)
        {
          continue;
        }

        goto LABEL_38;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    break;
  }

  sub_1D172629C(v23, isUniquelyReferenced_nonNull_native);
  v18 = sub_1D171D368(v0);
  if ((v7 & 1) == (v24 & 1))
  {
    goto LABEL_20;
  }

LABEL_44:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);

  return sub_1D1E690FC();
}

uint64_t sub_1D1A9A218(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 200);
  *(*v1 + 536) = a1;

  sub_1D1AA3F34(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9A384, v3, 0);
}

uint64_t sub_1D1A9A384()
{
  v1 = *(v0 + 536);
  v2 = [*(v0 + 216) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v3 = sub_1D1742188();
    if (v4)
    {
      v5 = *(v0 + 384);
      v6 = *(v0 + 264);
      v7 = *(v0 + 232);
      v8 = *(v0 + 240);
      sub_1D1AA43E0(*(*(v0 + 536) + 56) + *(*(v0 + 432) + 72) * v3, *(v0 + 376), type metadata accessor for StateSnapshot);
      (*(v8 + 8))(v6, v7);
      sub_1D1741A30(v5, &unk_1EC649E30, &unk_1D1E91250);

      v9 = 0;
      goto LABEL_7;
    }

    v15 = *(v0 + 384);
    v16 = *(v0 + 264);
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);

    (*(v18 + 8))(v16, v17);
    v14 = v15;
  }

  else
  {
    v10 = *(v0 + 384);
    v11 = *(v0 + 264);
    v12 = *(v0 + 232);
    v13 = *(v0 + 240);

    (*(v13 + 8))(v11, v12);
    v14 = v10;
  }

  sub_1D1741A30(v14, &unk_1EC649E30, &unk_1D1E91250);
  v9 = 1;
LABEL_7:
  v19 = *(v0 + 376);
  v20 = *(v0 + 384);
  (*(v0 + 440))(v19, v9, 1, *(v0 + 424));
  sub_1D1741A90(v19, v20, &unk_1EC649E30, &unk_1D1E91250);
  *(v0 + 472) = *(v0 + 512);
  v21 = swift_task_alloc();
  *(v0 + 480) = v21;
  *v21 = v0;
  v21[1] = sub_1D1A99368;

  return sub_1D1ACDA64();
}

uint64_t sub_1D1A9A5C8(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 200);
  *(*v1 + 568) = a1;

  sub_1D1AA3F34(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9A734, v3, 0);
}

uint64_t sub_1D1A9A734()
{
  v1 = *(v0 + 568);
  v2 = [*(v0 + 216) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v3 = sub_1D1742188();
    if (v4)
    {
      v5 = *(v0 + 384);
      v6 = *(v0 + 256);
      v7 = *(v0 + 232);
      v8 = *(v0 + 240);
      sub_1D1AA43E0(*(*(v0 + 568) + 56) + *(*(v0 + 432) + 72) * v3, *(v0 + 368), type metadata accessor for StateSnapshot);
      (*(v8 + 8))(v6, v7);
      sub_1D1741A30(v5, &unk_1EC649E30, &unk_1D1E91250);

      v9 = 0;
      goto LABEL_7;
    }

    v15 = *(v0 + 384);
    v16 = *(v0 + 256);
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);

    (*(v18 + 8))(v16, v17);
    v14 = v15;
  }

  else
  {
    v10 = *(v0 + 384);
    v11 = *(v0 + 256);
    v12 = *(v0 + 232);
    v13 = *(v0 + 240);

    (*(v13 + 8))(v11, v12);
    v14 = v10;
  }

  sub_1D1741A30(v14, &unk_1EC649E30, &unk_1D1E91250);
  v9 = 1;
LABEL_7:
  v19 = *(v0 + 384);
  v20 = *(v0 + 368);
  (*(v0 + 440))(v20, v9, 1, *(v0 + 424));
  sub_1D1741A90(v20, v19, &unk_1EC649E30, &unk_1D1E91250);
  sub_1D1741A90(*(v0 + 384), *(v0 + 176), &unk_1EC649E30, &unk_1D1E91250);

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_1D1A9AA04(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 200);
  *(*v1 + 592) = a1;

  sub_1D1AA3F34(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9AB70, v3, 0);
}

uint64_t sub_1D1A9AB70()
{
  v1 = *(v0 + 592);
  v2 = [*(v0 + 216) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v3 = sub_1D1742188();
    v4 = *(v0 + 496);
    if (v5)
    {
      v6 = *(v0 + 384);
      v8 = *(v0 + 240);
      v7 = *(v0 + 248);
      v9 = *(v0 + 232);
      sub_1D1AA43E0(*(*(v0 + 592) + 56) + *(*(v0 + 432) + 72) * v3, *(v0 + 360), type metadata accessor for StateSnapshot);

      (*(v8 + 8))(v7, v9);
      sub_1D1741A30(v6, &unk_1EC649E30, &unk_1D1E91250);

      v10 = 0;
      goto LABEL_7;
    }

    v17 = *(v0 + 384);
    v19 = *(v0 + 240);
    v18 = *(v0 + 248);
    v20 = *(v0 + 232);

    (*(v19 + 8))(v18, v20);
    v16 = v17;
  }

  else
  {
    v11 = *(v0 + 496);
    v12 = *(v0 + 384);
    v14 = *(v0 + 240);
    v13 = *(v0 + 248);
    v15 = *(v0 + 232);

    (*(v14 + 8))(v13, v15);
    v16 = v12;
  }

  sub_1D1741A30(v16, &unk_1EC649E30, &unk_1D1E91250);
  v10 = 1;
LABEL_7:
  v21 = *(v0 + 384);
  v22 = *(v0 + 360);
  (*(v0 + 440))(v22, v10, 1, *(v0 + 424));
  sub_1D1741A90(v22, v21, &unk_1EC649E30, &unk_1D1E91250);
  *(v0 + 544) = *(v0 + 504);
  v23 = *(v0 + 224);
  swift_beginAccess();
  sub_1D1A9D59C(v23);
  swift_endAccess();
  sub_1D1741A90(*(v0 + 384), *(v0 + 176), &unk_1EC649E30, &unk_1D1E91250);

  v24 = *(v0 + 8);

  return v24();
}

uint64_t sub_1D1A9AE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a8;
  v8[28] = v15;
  v8[25] = a6;
  v8[26] = a7;
  v8[23] = a4;
  v8[24] = a5;
  v8[22] = a1;
  v10 = sub_1D1E66A7C();
  v8[29] = v10;
  v8[30] = *(v10 - 8);
  v8[31] = swift_task_alloc();
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC8, &qword_1D1E961B8);
  v8[35] = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD0, &qword_1D1E961C0);
  v8[36] = v11;
  v8[37] = *(*(v11 - 8) + 64);
  v8[38] = swift_task_alloc();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v8[39] = v12;
  v8[40] = *(v12 - 8);
  v8[41] = swift_task_alloc();
  v8[42] = swift_task_alloc();
  v8[43] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CD8, &qword_1D1E961C8);
  v8[44] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E30, &unk_1D1E91250);
  v8[45] = swift_task_alloc();
  v8[46] = swift_task_alloc();
  v8[47] = swift_task_alloc();
  v8[48] = swift_task_alloc();
  v8[49] = type metadata accessor for StateSnapshot.UpdateType(0);
  v8[50] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A9B13C, a6, 0);
}

uint64_t sub_1D1A9B13C()
{
  if (*(v0 + 184))
  {
    v20 = *(v0 + 400);
    v21 = *(v0 + 200);
    v22 = sub_1D1A9D220(*(v0 + 192), 0, 0, 0, 0);
    *(v0 + 408) = *(v21 + 112);

    sub_1D1A97080(v22, v0 + 136);

    v23 = *(v0 + 152);
    *v20 = *(v0 + 136);
    *(v20 + 16) = v23;
    swift_storeEnumTagMultiPayload();
    v24 = swift_task_alloc();
    *(v0 + 416) = v24;
    *v24 = v0;
    v24[1] = sub_1D1A9B5A4;
    v25 = *(v0 + 400);

    return sub_1D1AB6894(v25, 0, 0, 0, 0);
  }

  else
  {
    v1 = *(v0 + 384);
    v2 = *(v0 + 352);
    v26 = *(v0 + 344);
    v27 = *(v0 + 336);
    v3 = *(v0 + 312);
    v4 = *(v0 + 320);
    v5 = *(v0 + 304);
    __n = *(v0 + 296);
    v6 = *(v0 + 280);
    v28 = *(v0 + 328);
    v29 = *(v0 + 288);
    v7 = *(v0 + 272);
    v8 = *(v0 + 208);
    v9 = type metadata accessor for StateSnapshot(0);
    *(v0 + 424) = v9;
    v10 = *(v9 - 8);
    *(v0 + 432) = v10;
    v11 = *(v10 + 56);
    *(v0 + 440) = v11;
    *(v0 + 448) = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
    v11(v1, 1, 1, v9);
    v12 = *(v4 + 16);
    v12(v2, v8, v3);
    *(v2 + *(v26 + 36)) = 1;
    v12(v27, v2, v3);
    v12(v28, v27, v3);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE0, &qword_1D1E961D0);
    v13 = swift_allocObject();
    *(v0 + 456) = v13;
    *(v6 + *(v7 + 36)) = 0;
    *(v6 + *(v7 + 40)) = MEMORY[0x1E69E7CC0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
    swift_storeEnumTagMultiPayload();
    *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF0, &qword_1D1E961E0) + 36)) = 1;
    *v5 = 0;
    v14 = *(v29 + 28);
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF8, &qword_1D1E961E8);
    bzero(v5 + v14, *(*(v15 - 8) + 64));
    sub_1D1741A90(v6, v5 + v14, &qword_1EC649CC8, &qword_1D1E961B8);
    memcpy((v13 + *(*v13 + 96)), v5, __n);
    (*(v4 + 32))(v13 + *(*v13 + 104), v28, v3);
    (*(v4 + 8))(v27, v3);
    sub_1D1741A30(v2, &qword_1EC649CD8, &qword_1D1E961C8);
    v16 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48, &protocol conformance descriptor for CharacteristicValueModerator<A>);
    v17 = MEMORY[0x1E69E7CC8];
    *(v0 + 464) = v16;
    *(v0 + 472) = v17;
    v18 = swift_task_alloc();
    *(v0 + 480) = v18;
    *v18 = v0;
    v18[1] = sub_1D1A9BA70;

    return sub_1D1ACDA64();
  }
}

uint64_t sub_1D1A9B5A4()
{
  v1 = *(*v0 + 400);
  v2 = *(*v0 + 200);

  sub_1D1AA3F34(v1, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9B714, v2, 0);
}

uint64_t sub_1D1A9B714()
{
  v1 = v0[48];
  v2 = v0[44];
  v20 = v0[43];
  v21 = v0[42];
  v3 = v0[39];
  v4 = v0[40];
  v5 = v0[38];
  __n = v0[37];
  v6 = v0[35];
  v22 = v0[41];
  v23 = v0[36];
  v7 = v0[34];
  v8 = v0[26];
  v9 = type metadata accessor for StateSnapshot(0);
  v0[53] = v9;
  v10 = *(v9 - 8);
  v0[54] = v10;
  v11 = *(v10 + 56);
  v0[55] = v11;
  v0[56] = (v10 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v11(v1, 1, 1, v9);
  v12 = *(v4 + 16);
  v12(v2, v8, v3);
  *(v2 + *(v20 + 36)) = 1;
  v12(v21, v2, v3);
  v12(v22, v21, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE0, &qword_1D1E961D0);
  v13 = swift_allocObject();
  v0[57] = v13;
  *(v6 + *(v7 + 36)) = 0;
  *(v6 + *(v7 + 40)) = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CE8, &qword_1D1E961D8);
  swift_storeEnumTagMultiPayload();
  *(v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF0, &qword_1D1E961E0) + 36)) = 1;
  *v5 = 0;
  v14 = *(v23 + 28);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CF8, &qword_1D1E961E8);
  bzero(v5 + v14, *(*(v15 - 8) + 64));
  sub_1D1741A90(v6, v5 + v14, &qword_1EC649CC8, &qword_1D1E961B8);
  memcpy((v13 + *(*v13 + 96)), v5, __n);
  (*(v4 + 32))(v13 + *(*v13 + 104), v22, v3);
  (*(v4 + 8))(v21, v3);
  sub_1D1741A30(v2, &qword_1EC649CD8, &qword_1D1E961C8);
  v16 = sub_1D17D8EA8(&qword_1EC649C70, &qword_1EC649C18, &qword_1D1E95F48, &protocol conformance descriptor for CharacteristicValueModerator<A>);
  v17 = MEMORY[0x1E69E7CC8];
  v0[58] = v16;
  v0[59] = v17;
  v18 = swift_task_alloc();
  v0[60] = v18;
  *v18 = v0;
  v18[1] = sub_1D1A9BA70;

  return sub_1D1ACDA64();
}

uint64_t sub_1D1A9BA70(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 488) = a1;
  *(v4 + 496) = v1;

  v5 = *(v3 + 200);
  if (v1)
  {
    if (v5)
    {
      swift_getObjectType();
      v6 = sub_1D1E67D4C();
      v8 = v7;
    }

    else
    {
      v6 = 0;
      v8 = 0;
    }

    v9 = sub_1D1A9C218;
    v10 = v6;
  }

  else
  {
    v9 = sub_1D1A9BBE4;
    v10 = v5;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v9, v10, v8);
}

void sub_1D1A9BBE4()
{
  v38 = v0;
  v1 = *(v0 + 488);
  if (!v1)
  {
    v14 = *(v0 + 184);

    v15 = *(v0 + 472);
    *(v0 + 544) = v15;
    v16 = *(v0 + 224);
    swift_beginAccess();
    sub_1D1A9D59C(v16);
    swift_endAccess();
    v17 = *(v0 + 400);
    if ((v14 & 4) == 0)
    {
      sub_1D1741A90(*(v0 + 384), *(v0 + 176), &unk_1EC649E30, &unk_1D1E91250);

      v18 = *(v0 + 8);

      v18();
      return;
    }

    *(v0 + 552) = *(*(v0 + 200) + 112);

    sub_1D1A97080(v15, v0 + 88);
    v31 = *(v0 + 104);
    *v17 = *(v0 + 88);
    *(v17 + 16) = v31;
    swift_storeEnumTagMultiPayload();
    v32 = swift_task_alloc();
    *(v0 + 560) = v32;
    *v32 = v0;
    v32[1] = sub_1D1A9CCD0;
    v33 = *(v0 + 400);
    goto LABEL_39;
  }

  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = 0;
    v4 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v3 >= *(v1 + 16))
      {
        goto LABEL_43;
      }

      v5 = *(v1 + 32 + 8 * v3);
      v6 = *(v5 + 16);
      v7 = v4[2];
      v8 = v7 + v6;
      if (__OFADD__(v7, v6))
      {
        goto LABEL_44;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if ((isUniquelyReferenced_nonNull_native & 1) != 0 && v8 <= v4[3] >> 1)
      {
        if (!*(v5 + 16))
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (v7 <= v8)
        {
          v10 = v7 + v6;
        }

        else
        {
          v10 = v7;
        }

        v4 = sub_1D177E530(isUniquelyReferenced_nonNull_native, v10, 1, v4);
        if (!*(v5 + 16))
        {
LABEL_4:

          if (v6)
          {
            goto LABEL_45;
          }

          goto LABEL_5;
        }
      }

      if ((v4[3] >> 1) - v4[2] < v6)
      {
        goto LABEL_46;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643330, &qword_1D1E71790);
      swift_arrayInitWithCopy();

      if (v6)
      {
        v11 = v4[2];
        v12 = __OFADD__(v11, v6);
        v13 = v11 + v6;
        if (v12)
        {
          goto LABEL_47;
        }

        v4[2] = v13;
      }

LABEL_5:
      if (v2 == ++v3)
      {
        goto LABEL_25;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_25:

  v19 = v4[2];
  v20 = MEMORY[0x1E69E7CC0];
  if (!v19)
  {
LABEL_30:
    v25 = *(v0 + 184);
    swift_beginAccess();
    sub_1D1A9D59C(v20);
    swift_endAccess();

    if (!v25)
    {

      goto LABEL_34;
    }

    v26 = *(v0 + 472);
    v27 = *(v0 + 184);
    v28 = sub_1D1A9D6A4(v4);

    v29 = swift_isUniquelyReferenced_nonNull_native();
    v37 = v26;
    sub_1D1AA47E0(v28, sub_1D1B327B4, 0, v29, &v37);

    *(v0 + 512) = v37;
    if ((v27 & 2) == 0)
    {

      *(v0 + 472) = *(v0 + 512);
LABEL_34:
      v30 = swift_task_alloc();
      *(v0 + 480) = v30;
      *v30 = v0;
      v30[1] = sub_1D1A9BA70;

      sub_1D1ACDA64();
      return;
    }

    v34 = *(v0 + 400);
    *(v0 + 520) = *(*(v0 + 200) + 112);

    sub_1D1A97080(v28, v0 + 112);

    v35 = *(v0 + 128);
    *v34 = *(v0 + 112);
    *(v34 + 16) = v35;
    swift_storeEnumTagMultiPayload();
    v36 = swift_task_alloc();
    *(v0 + 528) = v36;
    *v36 = v0;
    v36[1] = sub_1D1A9C920;
    v33 = *(v0 + 400);
LABEL_39:

    sub_1D1AB6894(v33, 0, 0, 0, 0);
    return;
  }

  *(v0 + 168) = MEMORY[0x1E69E7CC0];
  sub_1D1E6899C();
  v21 = 0;
  v22 = (v4 + 4);
  while (v21 < v4[2])
  {
    ++v21;
    v23 = *v22;
    v22 += 2;
    v24 = v23;
    sub_1D1E6896C();
    sub_1D1E689AC();
    sub_1D1E689BC();
    sub_1D1E6897C();
    if (v19 == v21)
    {
      v20 = *(v0 + 168);
      goto LABEL_30;
    }
  }

  __break(1u);
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
}

uint64_t sub_1D1A9C218()
{
  v1 = v0[25];
  v0[20] = v0[62];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
  swift_willThrowTypedImpl();

  return MEMORY[0x1EEE6DFA0](sub_1D1A9C2B0, v1, 0);
}

uint64_t sub_1D1A9C2B0()
{
  v1 = *(v0 + 62);
  v2 = *(v0 + 28);

  v3 = v1;
  v4 = sub_1D1E6655C();
  v62 = [v4 code];
  v5 = [v4 domain];
  v61 = sub_1D1E6781C();
  v7 = v6;

  if (v2 >> 62)
  {
LABEL_51:
    v64 = v2 & 0xFFFFFFFFFFFFFF8;
    v8 = sub_1D1E6873C();
  }

  else
  {
    v64 = v2 & 0xFFFFFFFFFFFFFF8;
    v8 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = *(v0 + 28);
  v10 = *(v0 + 59);
  *(v0 + 63) = v10;
  if (!v8)
  {
    v63 = MEMORY[0x1E69E7CC8];
LABEL_38:
    v48 = *(v0 + 23);

    if ((v48 & 4) != 0)
    {
      v53 = *(v0 + 62);

      *(v0 + 68) = v10;
      v54 = *(v0 + 28);
      swift_beginAccess();
      sub_1D1A9D59C(v54);
      swift_endAccess();
      v55 = *(v0 + 50);
      *(v0 + 69) = *(*(v0 + 25) + 112);

      sub_1D1A97080(v10, (v0 + 88));
      v56 = v0[104];
      *v55 = *(v0 + 88);
      *(v55 + 16) = v56;
      swift_storeEnumTagMultiPayload();
      v57 = swift_task_alloc();
      *(v0 + 70) = v57;
      *v57 = v0;
      v57[1] = sub_1D1A9CCD0;
    }

    else
    {
      v49 = *(v0 + 50);
      *(v0 + 72) = *(*(v0 + 25) + 112);

      sub_1D1A97080(v63, (v0 + 64));

      v50 = v0[80];
      *v49 = *(v0 + 4);
      *(v49 + 16) = v50;
      swift_storeEnumTagMultiPayload();
      v51 = swift_task_alloc();
      *(v0 + 73) = v51;
      *v51 = v0;
      v51[1] = sub_1D1A9CE3C;
    }

    v52 = *(v0 + 50);

    return sub_1D1AB6894(v52, 0, 0, 0, 0);
  }

  v11 = 0;
  v12 = v2 & 0xC000000000000001;
  v13 = v9 + 32;
  v63 = MEMORY[0x1E69E7CC8];
  v58 = v0;
  v59 = v2 & 0xC000000000000001;
  v60 = v7;
  while (2)
  {
    v14 = v11;
    while (1)
    {
      if (v12)
      {
        v15 = MEMORY[0x1D3891EF0](v14, *(v0 + 28));
      }

      else
      {
        if (v14 >= *(v64 + 16))
        {
          goto LABEL_48;
        }

        v15 = *(v13 + 8 * v14);
      }

      v2 = v15;
      v11 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

      if (!v10[2])
      {
        break;
      }

      sub_1D171D368(v15);
      if ((v16 & 1) == 0)
      {
        break;
      }

      ++v14;
      if (v11 == v8)
      {
        goto LABEL_38;
      }
    }

    v0 = v2;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = sub_1D171D368(v0);
    v20 = v63[2];
    v21 = (v19 & 1) == 0;
    v22 = __OFADD__(v20, v21);
    v23 = v20 + v21;
    if (v22)
    {
LABEL_49:
      __break(1u);
      goto LABEL_50;
    }

    v7 = v19;
    if (v63[3] >= v23)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v29 = v18;
        sub_1D1737AA0();
        v18 = v29;
        if (v7)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }

LABEL_20:
      if (v7)
      {
LABEL_21:
        v25 = v63[7] + 32 * v18;
        v27 = *v25;
        v26 = *(v25 + 8);
        v28 = *(v25 + 16);
        *v25 = v62;
        *(v25 + 8) = v61;
        *(v25 + 16) = v60;
        v7 = *(v25 + 24);
        *(v25 + 24) = 2;

        sub_1D1757A60(v27, v26, v28, v7);

        goto LABEL_25;
      }

LABEL_23:
      v63[(v18 >> 6) + 8] |= 1 << v18;
      *(v63[6] + 8 * v18) = v0;
      v30 = v63[7] + 32 * v18;
      *v30 = v62;
      *(v30 + 8) = v61;
      result = v60;
      *(v30 + 16) = v60;
      *(v30 + 24) = 2;
      v32 = v63[2];
      v22 = __OFADD__(v32, 1);
      v33 = v32 + 1;
      if (v22)
      {
        __break(1u);
        goto LABEL_53;
      }

      v63[2] = v33;

LABEL_25:
      v2 = swift_isUniquelyReferenced_nonNull_native();
      v35 = sub_1D171D368(v0);
      v36 = v10[2];
      v37 = (v34 & 1) == 0;
      result = v36 + v37;
      if (!__OFADD__(v36, v37))
      {
        v38 = v34;
        if (v10[3] >= result)
        {
          if ((v2 & 1) == 0)
          {
            result = sub_1D1737AA0();
          }

          v2 = v0;
          v12 = v59;
          if ((v38 & 1) == 0)
          {
            goto LABEL_29;
          }
        }

        else
        {
          sub_1D172629C(result, v2);
          v2 = v0;
          result = sub_1D171D368(v0);
          v12 = v59;
          if ((v38 & 1) != (v39 & 1))
          {
            goto LABEL_44;
          }

          v35 = result;
          if ((v38 & 1) == 0)
          {
LABEL_29:
            v10[(v35 >> 6) + 8] |= 1 << v35;
            *(v10[6] + 8 * v35) = v2;
            v40 = v10[7] + 32 * v35;
            *v40 = v62;
            *(v40 + 8) = v61;
            v7 = v60;
            *(v40 + 16) = v60;
            *(v40 + 24) = 2;
            v41 = v10[2];
            v22 = __OFADD__(v41, 1);
            v42 = v41 + 1;
            if (!v22)
            {
              v10[2] = v42;
              goto LABEL_35;
            }

LABEL_53:
            __break(1u);
            return result;
          }
        }

        v43 = v10[7] + 32 * v35;
        v44 = *v43;
        v45 = *(v43 + 8);
        v46 = *(v43 + 16);
        *v43 = v62;
        *(v43 + 8) = v61;
        v7 = v60;
        *(v43 + 16) = v60;
        v47 = *(v43 + 24);
        *(v43 + 24) = 2;
        sub_1D1757A60(v44, v45, v46, v47);

LABEL_35:
        v0 = v58;
        *(v58 + 63) = v10;
        if (v11 != v8)
        {
          continue;
        }

        goto LABEL_38;
      }

LABEL_50:
      __break(1u);
      goto LABEL_51;
    }

    break;
  }

  sub_1D172629C(v23, isUniquelyReferenced_nonNull_native);
  v18 = sub_1D171D368(v0);
  if ((v7 & 1) == (v24 & 1))
  {
    goto LABEL_20;
  }

LABEL_44:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);

  return sub_1D1E690FC();
}

uint64_t sub_1D1A9C920(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 200);
  *(*v1 + 536) = a1;

  sub_1D1AA3F34(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9CA8C, v3, 0);
}

uint64_t sub_1D1A9CA8C()
{
  v1 = *(v0 + 536);
  v2 = [*(v0 + 216) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16))
  {
    v3 = sub_1D1742188();
    if (v4)
    {
      v5 = *(v0 + 384);
      v6 = *(v0 + 264);
      v7 = *(v0 + 232);
      v8 = *(v0 + 240);
      sub_1D1AA43E0(*(*(v0 + 536) + 56) + *(*(v0 + 432) + 72) * v3, *(v0 + 376), type metadata accessor for StateSnapshot);
      (*(v8 + 8))(v6, v7);
      sub_1D1741A30(v5, &unk_1EC649E30, &unk_1D1E91250);

      v9 = 0;
      goto LABEL_7;
    }

    v15 = *(v0 + 384);
    v16 = *(v0 + 264);
    v17 = *(v0 + 232);
    v18 = *(v0 + 240);

    (*(v18 + 8))(v16, v17);
    v14 = v15;
  }

  else
  {
    v10 = *(v0 + 384);
    v11 = *(v0 + 264);
    v12 = *(v0 + 232);
    v13 = *(v0 + 240);

    (*(v13 + 8))(v11, v12);
    v14 = v10;
  }

  sub_1D1741A30(v14, &unk_1EC649E30, &unk_1D1E91250);
  v9 = 1;
LABEL_7:
  v19 = *(v0 + 376);
  v20 = *(v0 + 384);
  (*(v0 + 440))(v19, v9, 1, *(v0 + 424));
  sub_1D1741A90(v19, v20, &unk_1EC649E30, &unk_1D1E91250);
  *(v0 + 472) = *(v0 + 512);
  v21 = swift_task_alloc();
  *(v0 + 480) = v21;
  *v21 = v0;
  v21[1] = sub_1D1A9BA70;

  return sub_1D1ACDA64();
}

uint64_t sub_1D1A9CCD0(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 200);
  *(*v1 + 568) = a1;

  sub_1D1AA3F34(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AA558C, v3, 0);
}

uint64_t sub_1D1A9CE3C(uint64_t a1)
{
  v2 = *(*v1 + 400);
  v3 = *(*v1 + 200);
  *(*v1 + 592) = a1;

  sub_1D1AA3F34(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AA5588, v3, 0);
}

void *sub_1D1A9CFA8(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t isUniquelyReferenced_nonNull_native)
{
  v10 = sub_1D18D8A70(MEMORY[0x1E69E7CC0]);
  if (a1 >> 62)
  {
LABEL_24:
    v11 = sub_1D1E6873C();
    if (v11)
    {
      goto LABEL_3;
    }

    return v10;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v11)
  {
    return v10;
  }

LABEL_3:
  v12 = 0;
  v34 = a1 & 0xFFFFFFFFFFFFFF8;
  v35 = a1 & 0xC000000000000001;
  v33 = a1;
  while (1)
  {
    if (v35)
    {
      v18 = MEMORY[0x1D3891EF0](v12, a1);
    }

    else
    {
      if (v12 >= *(v34 + 16))
      {
        goto LABEL_21;
      }

      v18 = *(a1 + 8 * v12 + 32);
    }

    v37 = v18;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    v36 = v12 + 1;
    v19 = a2;
    v20 = a3;
    a1 = a4;
    v21 = a4;
    a4 = isUniquelyReferenced_nonNull_native;
    sub_1D17418FC(a2, a3, v21, isUniquelyReferenced_nonNull_native);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a3 = sub_1D171D368(v37);
    v23 = v10[2];
    v24 = (v22 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_22;
    }

    a2 = v22;
    if (v10[3] < v25)
    {
      break;
    }

    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_1D1737AA0();
    }

LABEL_16:
    isUniquelyReferenced_nonNull_native = a4;
    if (a2)
    {
      v13 = v10[7] + 32 * a3;
      v14 = *v13;
      v15 = *(v13 + 8);
      v16 = *(v13 + 16);
      a2 = v19;
      *v13 = v19;
      *(v13 + 8) = v20;
      a3 = v20;
      a4 = a1;
      *(v13 + 16) = a1;
      v17 = *(v13 + 24);
      *(v13 + 24) = isUniquelyReferenced_nonNull_native;
      sub_1D1757A60(v14, v15, v16, v17);
    }

    else
    {
      v10[(a3 >> 6) + 8] |= 1 << a3;
      *(v10[6] + 8 * a3) = v37;
      v28 = v10[7] + 32 * a3;
      *v28 = v19;
      *(v28 + 8) = v20;
      *(v28 + 16) = a1;
      *(v28 + 24) = a4;
      v29 = v10[2];
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_23;
      }

      a2 = v19;
      a3 = v20;
      a4 = a1;
      v10[2] = v31;
    }

    ++v12;
    a1 = v33;
    if (v36 == v11)
    {
      return v10;
    }
  }

  sub_1D172629C(v25, isUniquelyReferenced_nonNull_native);
  v26 = sub_1D171D368(v37);
  if ((a2 & 1) == (v27 & 1))
  {
    a3 = v26;
    goto LABEL_16;
  }

  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

void *sub_1D1A9D220(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = sub_1D18D8A70(MEMORY[0x1E69E7CC0]);
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D1E686EC();
    sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
    sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38, MEMORY[0x1E69E81B8]);
    sub_1D1E681BC();
    a1 = v44;
    v7 = v45;
    v8 = v46;
    v9 = v47;
    v10 = v48;
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v7 = a1 + 56;
    v8 = ~v11;
    v12 = -v11;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v10 = v13 & *(a1 + 56);

    v9 = 0;
  }

  v14 = (v8 + 64) >> 6;
  while (a1 < 0)
  {
    if (!sub_1D1E6877C() || (sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38), swift_dynamicCast(), v24 = v43, v22 = v9, v23 = v10, !v43))
    {
LABEL_29:
      sub_1D1716918(a1);
      return v6;
    }

LABEL_19:
    sub_1D17418FC(a2, a3, a4, a5);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v43 = v6;
    v26 = sub_1D171D368(v24);
    v28 = v6[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v6[3] < v31)
    {
      sub_1D172629C(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1D171D368(v24);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_24:
      if (v32)
      {
        goto LABEL_8;
      }

      goto LABEL_25;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_24;
    }

    v37 = v26;
    sub_1D1737AA0();
    v26 = v37;
    v6 = v43;
    if (v32)
    {
LABEL_8:
      v15 = v6[7] + 32 * v26;
      v16 = *v15;
      v17 = *(v15 + 8);
      v18 = *(v15 + 16);
      *v15 = a2;
      *(v15 + 8) = a3;
      *(v15 + 16) = a4;
      v19 = *(v15 + 24);
      *(v15 + 24) = a5;
      sub_1D1757A60(v16, v17, v18, v19);

      goto LABEL_9;
    }

LABEL_25:
    v6[(v26 >> 6) + 8] |= 1 << v26;
    *(v6[6] + 8 * v26) = v24;
    v34 = v6[7] + 32 * v26;
    *v34 = a2;
    *(v34 + 8) = a3;
    *(v34 + 16) = a4;
    *(v34 + 24) = a5;
    v35 = v6[2];
    v30 = __OFADD__(v35, 1);
    v36 = v35 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v6[2] = v36;
LABEL_9:
    v9 = v22;
    v10 = v23;
  }

  v20 = v9;
  v21 = v10;
  v22 = v9;
  if (v10)
  {
LABEL_15:
    v23 = (v21 - 1) & v21;
    v24 = *(*(a1 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v21)))));
    if (!v24)
    {
      goto LABEL_29;
    }

    goto LABEL_19;
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v14)
    {
      goto LABEL_29;
    }

    v21 = *(v7 + 8 * v22);
    ++v20;
    if (v21)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

void sub_1D1A9D59C(unint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_1D1E6873C())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D3891EF0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = sub_1D1AE0760(v5);

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void *sub_1D1A9D6A4(uint64_t a1)
{
  v2 = sub_1D18D8A70(MEMORY[0x1E69E7CC0]);
  v3 = *(a1 + 16);
  if (!v3)
  {
    return v2;
  }

  for (i = (a1 + 40); ; i += 2)
  {
    v11 = *(i - 1);
    v10 = *i;
    if (!*i)
    {
      v32 = v11;
      v33 = 0;
      v34 = v32;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = sub_1D171D368(v34);
      v38 = v2[2];
      v39 = (v37 & 1) == 0;
      v28 = __OFADD__(v38, v39);
      v40 = v38 + v39;
      if (v28)
      {
        goto LABEL_29;
      }

      v41 = v37;
      if (v2[3] >= v40)
      {
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v52 = v36;
          sub_1D1737AA0();
          v36 = v52;
          if ((v41 & 1) == 0)
          {
LABEL_25:
            v2[(v36 >> 6) + 8] |= 1 << v36;
            *(v2[6] + 8 * v36) = v34;
            v53 = v2[7] + 32 * v36;
            *(v53 + 8) = 0;
            *(v53 + 16) = 0;
            *v53 = 1;
            *(v53 + 24) = 3;

            v54 = v2[2];
            v28 = __OFADD__(v54, 1);
            v45 = v54 + 1;
            if (v28)
            {
              goto LABEL_31;
            }

LABEL_26:
            v2[2] = v45;
            goto LABEL_4;
          }

          goto LABEL_21;
        }
      }

      else
      {
        sub_1D172629C(v40, isUniquelyReferenced_nonNull_native);
        v36 = sub_1D171D368(v34);
        if ((v41 & 1) != (v42 & 1))
        {
          goto LABEL_32;
        }
      }

      if ((v41 & 1) == 0)
      {
        goto LABEL_25;
      }

LABEL_21:
      v46 = v2[7] + 32 * v36;
      v47 = *v46;
      v48 = *(v46 + 8);
      v49 = *(v46 + 16);
      *v46 = 1;
      *(v46 + 8) = 0;
      *(v46 + 16) = 0;
      v50 = *(v46 + 24);
      *(v46 + 24) = 3;
      sub_1D1757A60(v47, v48, v49, v50);

      goto LABEL_4;
    }

    v12 = v10;
    v13 = v10;
    v14 = v11;
    v15 = v10;
    v16 = sub_1D1E6655C();
    v17 = [v16 code];
    v18 = [v16 domain];
    v19 = sub_1D1E6781C();
    v21 = v20;

    v22 = v14;
    v23 = swift_isUniquelyReferenced_nonNull_native();
    v24 = sub_1D171D368(v22);
    v26 = v2[2];
    v27 = (v25 & 1) == 0;
    v28 = __OFADD__(v26, v27);
    v29 = v26 + v27;
    if (v28)
    {
      break;
    }

    v30 = v25;
    if (v2[3] >= v29)
    {
      if ((v23 & 1) == 0)
      {
        v51 = v24;
        sub_1D1737AA0();
        v24 = v51;
        if ((v30 & 1) == 0)
        {
LABEL_16:
          v2[(v24 >> 6) + 8] |= 1 << v24;
          *(v2[6] + 8 * v24) = v22;
          v43 = v2[7] + 32 * v24;
          *v43 = v17;
          *(v43 + 8) = v19;
          *(v43 + 16) = v21;
          *(v43 + 24) = 2;

          v44 = v2[2];
          v28 = __OFADD__(v44, 1);
          v45 = v44 + 1;
          if (v28)
          {
            goto LABEL_30;
          }

          goto LABEL_26;
        }

        goto LABEL_3;
      }
    }

    else
    {
      sub_1D172629C(v29, v23);
      v24 = sub_1D171D368(v22);
      if ((v30 & 1) != (v31 & 1))
      {
        goto LABEL_32;
      }
    }

    if ((v30 & 1) == 0)
    {
      goto LABEL_16;
    }

LABEL_3:
    v5 = v2[7] + 32 * v24;
    v6 = *v5;
    v7 = *(v5 + 8);
    v8 = *(v5 + 16);
    *v5 = v17;
    *(v5 + 8) = v19;
    *(v5 + 16) = v21;
    v9 = *(v5 + 24);
    *(v5 + 24) = 2;
    sub_1D1757A60(v6, v7, v8, v9);

LABEL_4:
    if (!--v3)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1A9DA48(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 152) = a5;
  *(v6 + 160) = v5;
  *(v6 + 136) = a2;
  *(v6 + 144) = a4;
  *(v6 + 296) = a3;
  *(v6 + 128) = a1;
  v7 = sub_1D1E66A7C();
  *(v6 + 168) = v7;
  *(v6 + 176) = *(v7 - 8);
  *(v6 + 184) = swift_task_alloc();
  *(v6 + 192) = swift_task_alloc();
  *(v6 + 200) = type metadata accessor for StateSnapshot.UpdateType(0);
  *(v6 + 208) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A9DB50, 0, 0);
}

uint64_t sub_1D1A9DB50()
{
  v60 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 296);
  v56 = *(v0 + 136);
  LOBYTE(v57) = v3;
  v58 = v2;
  v4 = CharacteristicValueSet.characteristicsAndValues(in:)(v1);
  v5 = sub_1D18D8770(MEMORY[0x1E69E7CC0]);
  v6 = v4 + 64;
  v7 = -1;
  v8 = -1 << *(v4 + 32);
  if (-v8 < 64)
  {
    v7 = ~(-1 << -v8);
  }

  v9 = v7 & *(v4 + 64);
  v10 = (63 - v8) >> 6;
  v55 = v4;

  v11 = 0;
  v52 = v10;
  v53 = v4 + 64;
  v54 = v0;
  while (1)
  {
    *(v0 + 216) = v5;
    if (!v9)
    {
      while (1)
      {
        v17 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
          goto LABEL_38;
        }

        if (v17 >= v10)
        {
          break;
        }

        v9 = *(v6 + 8 * v17);
        ++v11;
        if (v9)
        {
          v16 = v5;
          v11 = v17;
          goto LABEL_12;
        }
      }

      v40 = *(v0 + 296);

      if (v40)
      {
        if (qword_1EC642348 != -1)
        {
          goto LABEL_40;
        }

        goto LABEL_25;
      }

      if (qword_1EC642358 != -1)
      {
        swift_once();
      }

      v49 = qword_1EC64ABE8;
      *(v0 + 224) = qword_1EC64ABE8;
      v50 = sub_1D1A9E0BC;
LABEL_31:

      return MEMORY[0x1EEE6DFA0](v50, v49, 0);
    }

    v16 = v5;
LABEL_12:
    v18 = __clz(__rbit64(v9)) | (v11 << 6);
    v19 = *(*(v55 + 48) + 8 * v18);
    sub_1D1741970(*(v55 + 56) + 32 * v18, v0 + 24);
    *(v0 + 16) = v19;
    sub_1D1741C08(v0 + 16, v0 + 56, &qword_1EC6460A8, &qword_1D1E7E4F0);
    v20 = *(v0 + 48);
    v21 = *(v0 + 56);
    v22 = __swift_project_boxed_opaque_existential_1((v0 + 24), v20);
    *(v0 + 120) = v20;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 96));
    (*(*(v20 - 8) + 16))(boxed_opaque_existential_1, v22, v20);
    v24 = v19;
    StateSnapshot.CharacteristicUpdateType.ValueType.init(value:)((v0 + 96), &v56);
    v25 = v56;
    v26 = v57;
    v27 = v58;
    v5 = v16;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v5;
    v29 = sub_1D171D368(v21);
    v31 = v5[2];
    v32 = (v30 & 1) == 0;
    v33 = __OFADD__(v31, v32);
    v34 = v31 + v32;
    if (v33)
    {
LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
LABEL_40:
      swift_once();
LABEL_25:
      v41 = sub_1D1E6709C();
      __swift_project_value_buffer(v41, qword_1EC6BE180);

      v42 = sub_1D1E6707C();
      v43 = sub_1D1E6835C();

      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v56 = v45;
        *v44 = 136446210;
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        sub_1D174A5B8(&qword_1EC643038, &qword_1EE079CD0, 0x1E696CB38, MEMORY[0x1E69E81B8]);
        v46 = sub_1D1E6760C();
        v48 = sub_1D1B1312C(v46, v47, &v56);

        *(v44 + 4) = v48;
        _os_log_impl(&dword_1D16EC000, v42, v43, "Starting local override writing: %{public}s", v44, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v45);
        MEMORY[0x1D3893640](v45, -1, -1);
        MEMORY[0x1D3893640](v44, -1, -1);
      }

      v49 = *(v0 + 160);
      v50 = sub_1D1A9E74C;
      goto LABEL_31;
    }

    v35 = v30;
    if (v5[3] < v34)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v30)
      {
        goto LABEL_4;
      }
    }

    else
    {
      v0 = v29;
      sub_1D1737914();
      v29 = v0;
      v5 = v59;
      if (v35)
      {
LABEL_4:
        v12 = v5[7] + 24 * v29;
        v13 = *v12;
        v14 = *(v12 + 8);
        *v12 = v25;
        *(v12 + 8) = v26;
        v15 = *(v12 + 16);
        *(v12 + 16) = v27;
        sub_1D1778940(v13, v14, v15);

        goto LABEL_5;
      }
    }

LABEL_19:
    v5[(v29 >> 6) + 8] |= 1 << v29;
    *(v5[6] + 8 * v29) = v21;
    v37 = v5[7] + 24 * v29;
    *v37 = v25;
    *(v37 + 8) = v26;
    *(v37 + 16) = v27;
    v38 = v5[2];
    v33 = __OFADD__(v38, 1);
    v39 = v38 + 1;
    if (v33)
    {
      goto LABEL_39;
    }

    v5[2] = v39;
LABEL_5:
    v9 &= v9 - 1;
    v0 = v54;
    __swift_destroy_boxed_opaque_existential_1((v54 + 64));
    sub_1D1741A30(v54 + 16, &qword_1EC6460A8, &qword_1D1E7E4F0);
    v10 = v52;
    v6 = v53;
  }

  sub_1D1725FFC(v34, isUniquelyReferenced_nonNull_native);
  v0 = v59;
  v29 = sub_1D171D368(v21);
  if ((v35 & 1) == (v36 & 1))
  {
    v5 = v0;
    if (v35)
    {
      goto LABEL_4;
    }

    goto LABEL_19;
  }

  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);

  return sub_1D1E690FC();
}

uint64_t sub_1D1A9E0BC()
{
  if (qword_1EC642500 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 224);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E14C, v1, 0);
}

uint64_t sub_1D1A9E174()
{
  v1 = v0[28];
  v2 = sub_1D1A8D2B8(v0[17]);
  v0[30] = sub_1D1784EEC(v2);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E200, v1, 0);
}

uint64_t sub_1D1A9E200()
{
  v1 = *(v0 + 160);
  sub_1D1E633F4(*(v0 + 240));

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E280, v1, 0);
}

uint64_t sub_1D1A9E280()
{
  *(v0 + 248) = *(*(v0 + 160) + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E2F4, 0, 0);
}

uint64_t sub_1D1A9E2F4()
{
  v1 = v0[26];
  *v1 = v0[27];
  *(v1 + 8) = 0;
  *(v1 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  v0[32] = v2;
  *v2 = v0;
  v2[1] = sub_1D1A9E3CC;
  v3 = v0[26];

  return sub_1D1AB6894(v3, 0, 0, 0, 0);
}

uint64_t sub_1D1A9E3CC(uint64_t a1)
{
  v2 = *(*v1 + 208);
  *(*v1 + 264) = a1;

  sub_1D1AA3F34(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E51C, 0, 0);
}

uint64_t sub_1D1A9E51C()
{
  v1 = *(v0 + 264);
  v2 = [*(v0 + 152) uniqueIdentifier];
  sub_1D1E66A5C();

  v3 = *(v0 + 192);
  if (*(v1 + 16))
  {
    v4 = sub_1D1742188();
    v5 = *(v0 + 192);
    v6 = *(v0 + 168);
    v7 = *(v0 + 176);
    if (v8)
    {
      v9 = v4;
      v10 = *(v0 + 128);
      v11 = *(*(v0 + 264) + 56);
      v12 = type metadata accessor for StateSnapshot(0);
      v13 = *(v12 - 8);
      sub_1D1AA43E0(v11 + *(v13 + 72) * v9, v10, type metadata accessor for StateSnapshot);
      (*(v7 + 8))(v5, v6);

      v14 = 0;
      goto LABEL_7;
    }

    (*(v7 + 8))(v5, v6);
  }

  else
  {
    v15 = *(v0 + 168);
    v16 = *(v0 + 176);

    (*(v16 + 8))(v3, v15);
  }

  v12 = type metadata accessor for StateSnapshot(0);
  v13 = *(v12 - 8);
  v14 = 1;
LABEL_7:
  (*(v13 + 56))(*(v0 + 128), v14, 1, v12);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D1A9E74C()
{
  *(v0 + 272) = *(*(v0 + 160) + 112);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E7C0, 0, 0);
}

uint64_t sub_1D1A9E7C0()
{
  v1 = v0[26];
  *v1 = v0[27];
  *(v1 + 8) = 0;
  *(v1 + 16) = 3;
  swift_storeEnumTagMultiPayload();
  v2 = swift_task_alloc();
  v0[35] = v2;
  *v2 = v0;
  v2[1] = sub_1D1A9E898;
  v3 = v0[26];

  return sub_1D1AB6894(v3, 0, 0, 0, 0);
}

uint64_t sub_1D1A9E898(uint64_t a1)
{
  v2 = *(*v1 + 208);
  *(*v1 + 288) = a1;

  sub_1D1AA3F34(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1A9E9E8, 0, 0);
}

uint64_t sub_1D1A9E9E8()
{
  v1 = *(v0 + 288);
  v2 = [*(v0 + 152) uniqueIdentifier];
  sub_1D1E66A5C();

  v3 = *(v0 + 184);
  if (*(v1 + 16))
  {
    v4 = sub_1D1742188();
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 168);
    if (v8)
    {
      v9 = v4;
      v10 = *(v0 + 128);
      v11 = *(*(v0 + 288) + 56);
      v12 = type metadata accessor for StateSnapshot(0);
      v13 = *(v12 - 8);
      sub_1D1AA43E0(v11 + *(v13 + 72) * v9, v10, type metadata accessor for StateSnapshot);
      (*(v6 + 8))(v5, v7);

      v14 = 0;
      goto LABEL_7;
    }

    (*(v6 + 8))(v5, v7);
  }

  else
  {
    v15 = *(v0 + 168);
    v16 = *(v0 + 176);

    (*(v16 + 8))(v3, v15);
  }

  v12 = type metadata accessor for StateSnapshot(0);
  v13 = *(v12 - 8);
  v14 = 1;
LABEL_7:
  (*(v13 + 56))(*(v0 + 128), v14, 1, v12);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1D1A9EC18(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC0, &qword_1D1E96188);
  v5 = *(v4 - 8);
  result = MEMORY[0x1EEE9AC00](v4);
  v8 = v9 - v7;
  LOBYTE(v7) = atomic_load((a2 + 16));
  if ((v7 & 1) == 0)
  {
    v9[1] = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
    sub_1D1E6809C();
    return (*(v5 + 8))(v8, v4);
  }

  return result;
}

void *sub_1D1A9ED2C(void *result, uint64_t a2)
{
  v2 = atomic_load((a2 + 16));
  if ((v2 & 1) == 0)
  {
    atomic_store(1u, (a2 + 16));
    v3 = result;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
    return sub_1D1E680AC();
  }

  return result;
}

uint64_t sub_1D1A9ED94(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(v6 + 32) = a5;
  *(v6 + 40) = a6;
  *(v6 + 24) = a1;
  v7 = sub_1D1E68A4C();
  *(v6 + 48) = v7;
  *(v6 + 56) = *(v7 - 8);
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A9EE58, 0, 0);
}

uint64_t sub_1D1A9EE58()
{
  v1 = sub_1D1E693AC();
  v3 = v2;
  sub_1D1E6912C();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D1A9EF34;

  return sub_1D1A01910(v1, v3, 0, 0, 1);
}

uint64_t sub_1D1A9EF34()
{
  v2 = *v1;

  v3 = v2[8];
  v4 = v2[7];
  v5 = v2[6];
  if (v0)
  {

    (*(v4 + 8))(v3, v5);
    v6 = sub_1D1AA5584;
  }

  else
  {
    (*(v4 + 8))(v3, v5);
    v6 = sub_1D1A9F0CC;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1D1A9F0CC()
{
  v1 = atomic_load((v0[4] + 16));
  if ((v1 & 1) == 0)
  {
    atomic_store(1u, (v0[4] + 16));
    sub_1D1E67D8C();
    sub_1D1AA3AF8(&qword_1EC6486C8, MEMORY[0x1E69E8550], MEMORY[0x1E69E8558]);
    v2 = swift_allocError();
    sub_1D1E6759C();
    v0[2] = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
    sub_1D1E680AC();
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1D1A9F1DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[30] = a7;
  v7[31] = v13;
  v7[28] = a5;
  v7[29] = a6;
  v7[26] = a1;
  v7[27] = a4;
  v7[32] = type metadata accessor for StateSnapshot.UpdateType(0);
  v7[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C90, &qword_1D1E96120);
  v7[34] = swift_task_alloc();
  v7[35] = swift_task_alloc();
  v9 = sub_1D1E66A7C();
  v7[36] = v9;
  v7[37] = *(v9 - 8);
  v7[38] = swift_task_alloc();
  v7[39] = swift_task_alloc();
  v7[40] = swift_task_alloc();
  v7[41] = swift_task_alloc();
  v7[42] = swift_task_alloc();
  v7[43] = swift_task_alloc();
  v7[44] = swift_task_alloc();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v7[45] = v10;
  v7[46] = *(v10 - 8);
  v7[47] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A9F3D4, a6, 0);
}

uint64_t sub_1D1A9F3D4()
{
  (*(v0[46] + 16))(v0[47], v0[27], v0[45]);
  v1 = swift_task_alloc();
  v0[48] = v1;
  *v1 = v0;
  v1[1] = sub_1D1A9F49C;

  return sub_1D1AA0B60((v0 + 25));
}

uint64_t sub_1D1A9F49C(uint64_t a1)
{
  v2 = *(*v1 + 232);
  *(*v1 + 392) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A9F5B4, v2, 0);
}

uint64_t sub_1D1A9F5B4()
{
  v2 = v1;
  v3 = v1[49];
  v165 = v1[25];
  v1[50] = v165;
  v4 = *(v3 + 16);
  v161 = v2;
  if (v4)
  {
    v5 = 0;
    v6 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v5 >= *(v3 + 16))
      {
        goto LABEL_152;
      }

      v7 = *(v3 + 32 + 8 * v5);
      v8 = *(v7 + 16);
      v9 = v6[2];
      v0 = (v9 + v8);
      if (__OFADD__(v9, v8))
      {
        goto LABEL_153;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (isUniquelyReferenced_nonNull_native && v0 <= v6[3] >> 1)
      {
        if (!*(v7 + 16))
        {
          goto LABEL_3;
        }
      }

      else
      {
        if (v9 <= v0)
        {
          v11 = v9 + v8;
        }

        else
        {
          v11 = v9;
        }

        v6 = sub_1D177E530(isUniquelyReferenced_nonNull_native, v11, 1, v6);
        if (!*(v7 + 16))
        {
LABEL_3:

          if (v8)
          {
            goto LABEL_154;
          }

          goto LABEL_4;
        }
      }

      v12 = v6[2];
      if ((v6[3] >> 1) - v12 < v8)
      {
        goto LABEL_156;
      }

      v0 = &v6[2 * v12];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643330, &qword_1D1E71790);
      swift_arrayInitWithCopy();

      if (v8)
      {
        v13 = v6[2];
        v14 = __OFADD__(v13, v8);
        v15 = v13 + v8;
        if (v14)
        {
          goto LABEL_158;
        }

        v6[2] = v15;
      }

LABEL_4:
      if (v4 == ++v5)
      {
        goto LABEL_21;
      }
    }
  }

  v6 = MEMORY[0x1E69E7CC0];
LABEL_21:
  v16 = *(v2 + 232);

  v3 = v6[2];
  swift_beginAccess();
  if (!v3)
  {
    v168 = MEMORY[0x1E69E7CC0];
    goto LABEL_40;
  }

  v17 = 0;
  v18 = (*(v2 + 296) + 8);
  v170 = -v3;
  v168 = MEMORY[0x1E69E7CC0];
  do
  {
    v0 = &v6[2 * v17++ + 5];
    while (1)
    {
      if ((v17 - 1) >= v6[2])
      {
        __break(1u);
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
        goto LABEL_157;
      }

      v19 = *v0;
      v20 = *(v0 - 1);
      v21 = v19;
      v22 = [v20 uniqueIdentifier];
      sub_1D1E66A5C();

      v3 = *(v16 + 136);
      if (!*(v3 + 16))
      {
        goto LABEL_32;
      }

      v23 = sub_1D1742188();
      if ((v24 & 1) == 0)
      {
        break;
      }

      v25 = *(v2 + 352);
      v26 = *(v2 + 288);
      v4 = *(v2 + 224);
      v27 = *(*(v3 + 56) + 8 * v23);
      (*v18)(v25, v26);

      v28 = v27 > v4;
      v2 = v161;
      if (!v28)
      {
        goto LABEL_33;
      }

      ++v17;
      v0 = (v0 + 16);
      if (v170 + v17 == 1)
      {
        goto LABEL_40;
      }
    }

LABEL_32:
    (*v18)(*(v2 + 352), *(v2 + 288));
LABEL_33:
    v3 = v168;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      sub_1D178D6E4(0, *(v168 + 16) + 1, 1);
      v3 = v168;
    }

    v30 = *(v3 + 16);
    v29 = *(v3 + 24);
    v4 = v30 + 1;
    if (v30 >= v29 >> 1)
    {
      sub_1D178D6E4((v29 > 1), v30 + 1, 1);
      v3 = v168;
    }

    *(v3 + 16) = v4;
    v168 = v3;
    v31 = v3 + 16 * v30;
    *(v31 + 32) = v20;
    *(v31 + 40) = v19;
  }

  while (v170 + v17);
LABEL_40:

  v32 = *(v168 + 16);
  if (v32)
  {
    v33 = 0;
    v171 = *(v2 + 296);
    v0 = (v168 + 40);
    while (v33 < *(v168 + 16))
    {
      v34 = *v0;
      v35 = *(v0 - 1);
      v36 = v34;
      if (v35)
      {

        v4 = [v35 uniqueIdentifier];
        sub_1D1E66A5C();

        swift_beginAccess();
        v3 = *(v16 + 136);
        v37 = sub_1D1742188();
        if (v38)
        {
          v39 = v37;
          v40 = swift_isUniquelyReferenced_nonNull_native();
          v3 = *(v16 + 136);
          *(v16 + 136) = 0x8000000000000000;
          if (!v40)
          {
            sub_1D1739E3C();
          }

          v4 = *(v2 + 344);
          v41 = *(v2 + 288);
          v42 = *(v171 + 8);
          v42(*(v3 + 48) + *(v171 + 72) * v39, v41);
          sub_1D1750CA4(v39, v3);
          v42(v4, v41);
          v2 = v161;
          *(v16 + 136) = v3;
        }

        else
        {
          (*(v171 + 8))(*(v2 + 344), *(v2 + 288));
        }

        ++v33;
        swift_endAccess();
        v0 = (v0 + 16);
        if (v32 != v33)
        {
          continue;
        }
      }

      goto LABEL_50;
    }

LABEL_157:
    __break(1u);
LABEL_158:
    __break(1u);
LABEL_159:
    __break(1u);
LABEL_160:
    __break(1u);
LABEL_161:
    result = (v0)(v3, v4);
    __break(1u);
    return result;
  }

LABEL_50:
  if (v165)
  {
    v43 = v165;
    v44 = sub_1D1E6655C();
    v144 = [v44 code];
    v45 = [v44 domain];
    v46 = sub_1D1E6781C();
    v142 = v47;
    v143 = v46;

    v141 = 2;
  }

  else
  {
    v142 = 0;
    v143 = 0;
    v141 = 3;
    v144 = 1;
  }

  v4 = *(v2 + 296);
  v48 = *(v2 + 240);
  v49 = sub_1D1A9D6A4(v168);

  v140 = v48 + 64;
  v50 = -1 << *(v48 + 32);
  if (-v50 < 64)
  {
    v51 = ~(-1 << -v50);
  }

  else
  {
    v51 = -1;
  }

  v52 = v51 & *(v48 + 64);
  v139 = (63 - v50) >> 6;
  v149 = (v4 + 32);
  v145 = v48;
  v146 = v4;
  v154 = (v4 + 16);
  v155 = (v4 + 8);

  v0 = 0;
  v53 = 0;
  while (1)
  {
    *(v2 + 408) = v49;
    v150 = v49;
    if (v52)
    {
      v54 = v52;
      v169 = v0;
      v3 = v53;
LABEL_67:
      v56 = *(v2 + 336);
      v57 = *(v2 + 288);
      v58 = *(v2 + 272);
      v148 = (v54 - 1) & v54;
      v59 = __clz(__rbit64(v54)) | (v3 << 6);
      (*(v146 + 16))(v56, *(v145 + 48) + *(v146 + 72) * v59, v57);
      v60 = *(*(v145 + 56) + 8 * v59);
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
      v62 = *(v61 + 48);
      (*(v146 + 32))(v58, v56, v57);
      *(v58 + v62) = v60;
      (*(*(v61 - 8) + 56))(v58, 0, 1, v61);

      v147 = v3;
    }

    else
    {
      if (v139 <= v53 + 1)
      {
        v55 = v53 + 1;
      }

      else
      {
        v55 = v139;
      }

      while (1)
      {
        v3 = v53 + 1;
        if (__OFADD__(v53, 1))
        {
          goto LABEL_155;
        }

        if (v3 >= v139)
        {
          break;
        }

        v54 = *(v140 + 8 * v3);
        ++v53;
        if (v54)
        {
          v169 = v0;
          goto LABEL_67;
        }
      }

      v147 = v55 - 1;
      v169 = v0;
      v131 = *(v2 + 272);
      v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
      (*(*(v132 - 8) + 56))(v131, 1, 1, v132);
      v148 = 0;
    }

    v63 = *(v2 + 280);
    sub_1D1741A90(*(v2 + 272), v63, &qword_1EC649C90, &qword_1D1E96120);
    v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
    if ((*(*(v64 - 8) + 48))(v63, 1, v64) == 1)
    {
      goto LABEL_143;
    }

    v65 = *(*(v2 + 280) + *(v64 + 48));
    (*v149)(*(v2 + 328));
    v66 = 0;
    v67 = v65 + 64;
    v151 = v65;
    v68 = -1 << *(v65 + 32);
    if (-v68 < 64)
    {
      v69 = ~(-1 << -v68);
    }

    else
    {
      v69 = -1;
    }

    v70 = v69 & *(v65 + 64);
    v4 = (63 - v68) >> 6;
    v0 = v169;
    v152 = v4;
    v153 = v65 + 64;
LABEL_73:
    if (!v70)
    {
      if (v4 <= v66 + 1)
      {
        v72 = v66 + 1;
      }

      else
      {
        v72 = v4;
      }

      v73 = v72 - 1;
      while (1)
      {
        v71 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          break;
        }

        if (v71 >= v4)
        {
          v158 = 0;
          *(v2 + 88) = 0;
          *(v2 + 72) = 0u;
          *(v2 + 56) = 0u;
          goto LABEL_83;
        }

        v70 = *(v67 + 8 * v71);
        ++v66;
        if (v70)
        {
          goto LABEL_82;
        }
      }

LABEL_142:
      __break(1u);
LABEL_143:
      v133 = *(v2 + 264);
      v134 = *(v2 + 232);

      sub_1D1757A60(v144, v143, v142, v141);
      *(v2 + 416) = *(v134 + 112);

      sub_1D1A97080(v150, v2 + 176);
      v135 = *(v2 + 192);
      *v133 = *(v2 + 176);
      *(v133 + 16) = v135;
      swift_storeEnumTagMultiPayload();
      v136 = swift_task_alloc();
      *(v2 + 424) = v136;
      *v136 = v2;
      v136[1] = sub_1D1AA06A8;
      v137 = *(v2 + 264);

      return sub_1D1AB6894(v137, 0, 0, 0, 0);
    }

    v71 = v66;
LABEL_82:
    v158 = (v70 - 1) & v70;
    v74 = __clz(__rbit64(v70)) | (v71 << 6);
    v4 = *(*(v151 + 48) + v74);
    sub_1D1741970(*(v151 + 56) + 32 * v74, v2 + 96);
    *(v2 + 56) = v4;
    sub_1D1742194((v2 + 96), (v2 + 64));
    v73 = v71;
LABEL_83:
    *(v2 + 48) = *(v2 + 88);
    v75 = *(v2 + 72);
    *(v2 + 16) = *(v2 + 56);
    *(v2 + 32) = v75;
    v76 = *(v2 + 328);
    if (*(v2 + 48))
    {
      break;
    }

    (*v155)(*(v2 + 328), *(v2 + 288));

    v53 = v147;
    v52 = v148;
    v49 = v150;
  }

  v156 = v73;
  v77 = *(v2 + 312);
  v4 = *(v2 + 320);
  v78 = *(v2 + 288);
  v172 = *(v2 + 16);
  v79 = sub_1D174A5B8(&qword_1EE079C20, &qword_1EE07B620, 0x1E696CB98, &protocol conformance descriptor for HMHome);
  v80 = *(v79 + 168);
  v81 = sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
  v82 = v80(v81, v79);
  v83 = *v154;
  (*v154)(v4, v76, v78);
  v83(v77, v76, v78);
  v157 = v82 >> 62;
  v84 = v82 & 0xFFFFFFFFFFFFFF8;
  if (v82 >> 62)
  {
    v167 = sub_1D1E6873C();
  }

  else
  {
    v167 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = 0;
  v166 = v82 & 0xC000000000000001;
  v159 = v82;
  v164 = v82 + 32;
  v2 = v161;
  v160 = v82 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if (v85 == v167)
    {
      v3 = v167;
      if (!v157)
      {
        goto LABEL_112;
      }

LABEL_115:
      v106 = sub_1D1E6873C();
LABEL_116:
      if (v3 == v106)
      {
        v107 = *(v2 + 312);
        v108 = *(v2 + 288);
        v109 = *v155;
        (*v155)(*(v2 + 320), v108);

        v109(v107, v108);
        __swift_destroy_boxed_opaque_existential_1((v2 + 24));
        v66 = v156;
        v4 = v152;
        v67 = v153;
        v70 = v158;
        goto LABEL_73;
      }

      if (v166)
      {
        v110 = v0;
        v111 = MEMORY[0x1D3891EF0](v3, v159);
      }

      else
      {
        if (v3 >= *(v84 + 16))
        {
          goto LABEL_159;
        }

        v110 = v0;
        v111 = *(v164 + 8 * v3);
      }

      v112 = v111;
      v113 = *(v2 + 320);
      v114 = *(v2 + 288);
      v115 = sub_1D1A8F820(v111, v113, v172);
      v0 = *v155;
      (*v155)(v113, v114);

      v3 = *(v2 + 312);
      v4 = *(v2 + 288);
      if (!v115)
      {
        goto LABEL_161;
      }

      v0(v3, v4);
      v116 = v150;
      if (*(v150 + 16))
      {
        sub_1D171D368(v115);
        v116 = v150;
        if (v117)
        {

LABEL_138:
          v0 = v110;
          v4 = v152;
          v67 = v153;
          __swift_destroy_boxed_opaque_existential_1((v2 + 24));
          v66 = v156;
          v70 = v158;
          goto LABEL_73;
        }
      }

      sub_1D17418FC(v144, v143, v142, v141);
      v4 = swift_isUniquelyReferenced_nonNull_native();
      v173 = v116;
      v118 = sub_1D171D368(v115);
      v3 = v150;
      v120 = *(v150 + 16);
      v121 = (v119 & 1) == 0;
      v14 = __OFADD__(v120, v121);
      v122 = v120 + v121;
      if (v14)
      {
        goto LABEL_160;
      }

      v123 = v119;
      if (*(v150 + 24) < v122)
      {
        sub_1D172629C(v122, v4);
        v118 = sub_1D171D368(v115);
        if ((v123 & 1) != (v124 & 1))
        {
          goto LABEL_148;
        }

        v3 = v173;
        if ((v123 & 1) == 0)
        {
          goto LABEL_136;
        }

LABEL_132:
        v125 = *(v3 + 56) + 32 * v118;
        v126 = *v125;
        v127 = *(v125 + 8);
        v128 = *(v125 + 16);
        *v125 = v144;
        *(v125 + 8) = v143;
        *(v125 + 16) = v142;
        v129 = *(v125 + 24);
        *(v125 + 24) = v141;
        sub_1D1757A60(v126, v127, v128, v129);

LABEL_137:
        v150 = v3;
        goto LABEL_138;
      }

      if (v4)
      {
        if (v119)
        {
          goto LABEL_132;
        }
      }

      else
      {
        v130 = v118;
        sub_1D1737AA0();
        v118 = v130;
        v3 = v173;
        if (v123)
        {
          goto LABEL_132;
        }
      }

LABEL_136:
      sub_1D19DB4F8(v118, v115, v144, v143, v142, v141, v3);
      goto LABEL_137;
    }

    if (v166)
    {
      v87 = MEMORY[0x1D3891EF0](v85, v159);
      goto LABEL_93;
    }

    if (v85 < *(v84 + 16))
    {
      v87 = *(v164 + 8 * v85);
LABEL_93:
      v86 = v87;
      v88 = *(v2 + 312);
      v89 = [v87 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v4 = sub_1D1E67C1C();

      v90 = swift_task_alloc();
      *(v90 + 16) = v88;
      v91 = sub_1D174A6C4(sub_1D1AA5568, v90, v4);

      if (v91)
      {
        v4 = [v91 characteristics];
        sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
        v92 = sub_1D1E67C1C();

        v162 = v86;
        v163 = v85;
        if (v92 >> 62)
        {
          v93 = sub_1D1E6873C();
          if (v93)
          {
LABEL_96:
            v94 = 0;
            v2 = v92 & 0xFFFFFFFFFFFFFF8;
            while (1)
            {
              if ((v92 & 0xC000000000000001) != 0)
              {
                v95 = MEMORY[0x1D3891EF0](v94, v92);
              }

              else
              {
                if (v94 >= *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_141;
                }

                v95 = *(v92 + 8 * v94 + 32);
              }

              v96 = v95;
              v97 = v94 + 1;
              if (__OFADD__(v94, 1))
              {
                __break(1u);
LABEL_141:
                __break(1u);
                goto LABEL_142;
              }

              v98 = [v95 characteristicType];
              v99 = sub_1D1E6781C();
              v101 = v100;

              v102._countAndFlagsBits = v99;
              v102._object = v101;
              CharacteristicKind.init(rawValue:)(v102);
              v4 = CharacteristicKind.rawValue.getter();
              v104 = v103;
              if (v4 == CharacteristicKind.rawValue.getter() && v104 == v105)
              {
                break;
              }

              v4 = sub_1D1E6904C();

              if (v4)
              {
                goto LABEL_111;
              }

              ++v94;
              if (v97 == v93)
              {
                goto LABEL_87;
              }
            }

LABEL_111:

            v2 = v161;
            v84 = v160;
            v3 = v163;
            if (v157)
            {
              goto LABEL_115;
            }

LABEL_112:
            v106 = *(v84 + 16);
            goto LABEL_116;
          }
        }

        else
        {
          v93 = *((v92 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v93)
          {
            goto LABEL_96;
          }
        }

LABEL_87:

        v2 = v161;
        v86 = v162;
        v84 = v160;
        v85 = v163;
      }

      v14 = __OFADD__(v85++, 1);
      if (v14)
      {
        goto LABEL_147;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);

  return sub_1D1E690FC();
}

uint64_t sub_1D1AA06A8(uint64_t a1)
{
  v2 = *(*v1 + 264);
  v3 = *(*v1 + 232);
  *(*v1 + 432) = a1;

  sub_1D1AA3F34(v2, type metadata accessor for StateSnapshot.UpdateType);

  return MEMORY[0x1EEE6DFA0](sub_1D1AA0814, v3, 0);
}

uint64_t sub_1D1AA0814()
{
  v1 = *(v0 + 432);
  if (*(v0 + 400))
  {

    swift_willThrow();

    v2 = *(v0 + 8);
    goto LABEL_10;
  }

  v3 = [*(v0 + 248) uniqueIdentifier];
  sub_1D1E66A5C();

  v4 = *(v1 + 16);
  v5 = *(v0 + 304);
  if (!v4)
  {
    v18 = *(v0 + 288);
    v19 = *(v0 + 296);

    (*(v19 + 8))(v5, v18);
LABEL_8:
    v16 = type metadata accessor for StateSnapshot(0);
    v15 = *(v16 - 8);
    v17 = 1;
    goto LABEL_9;
  }

  v6 = sub_1D1742188();
  v8 = *(v0 + 296);
  v7 = *(v0 + 304);
  v9 = *(v0 + 288);
  if ((v10 & 1) == 0)
  {

    (*(v8 + 8))(v7, v9);
    goto LABEL_8;
  }

  v11 = v6;
  v12 = *(v0 + 208);
  v13 = *(*(v0 + 432) + 56);
  v14 = type metadata accessor for StateSnapshot(0);
  v15 = *(v14 - 8);
  sub_1D1AA43E0(v13 + *(v15 + 72) * v11, v12, type metadata accessor for StateSnapshot);
  (*(v8 + 8))(v7, v9);

  v16 = v14;
  v17 = 0;
LABEL_9:
  (*(v15 + 56))(*(v0 + 208), v17, 1, v16);

  v2 = *(v0 + 8);
LABEL_10:

  return v2();
}

uint64_t sub_1D1AA0B60(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA8, &qword_1D1E96180);
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AA0C2C, 0, 0);
}

uint64_t sub_1D1AA0C2C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  sub_1D17D8EA8(&qword_1EC649CB0, &qword_1EC649C68, &qword_1D1E960B0, MEMORY[0x1E69E87D0]);
  sub_1D1E6801C();
  *(v0 + 72) = MEMORY[0x1E69E7CC0];
  sub_1D17D8EA8(&qword_1EC649CB8, &qword_1EC649CA8, &qword_1D1E96180, MEMORY[0x1E69E87C0]);
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_1D1AA0D8C;

  return MEMORY[0x1EEE6D8D0](v0 + 16, 0, 0);
}

uint64_t sub_1D1AA0D8C()
{

  if (v0)
  {
    v1 = sub_1D1AA105C;
  }

  else
  {
    v1 = sub_1D1AA0E9C;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1D1AA0E9C()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v3 = *(v0 + 72);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v3 = sub_1D177E664(0, v3[2] + 1, 1, v3);
    }

    v5 = v3[2];
    v4 = v3[3];
    if (v5 >= v4 >> 1)
    {
      v3 = sub_1D177E664((v4 > 1), v5 + 1, 1, v3);
    }

    v3[2] = v5 + 1;
    v3[v5 + 4] = v1;
    *(v0 + 72) = v3;
    sub_1D17D8EA8(&qword_1EC649CB8, &qword_1EC649CA8, &qword_1D1E96180, MEMORY[0x1E69E87C0]);
    v6 = swift_task_alloc();
    *(v0 + 80) = v6;
    *v6 = v0;
    v6[1] = sub_1D1AA0D8C;

    return MEMORY[0x1EEE6D8D0](v0 + 16, 0, 0);
  }

  else
  {
    (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
    **(v0 + 32) = 0;

    v7 = *(v0 + 8);
    v8 = *(v0 + 72);

    return v7(v8);
  }
}

uint64_t sub_1D1AA105C()
{
  (*(*(v0 + 56) + 8))(*(v0 + 64), *(v0 + 48));
  **(v0 + 32) = *(v0 + 24);

  v1 = *(v0 + 8);
  v2 = *(v0 + 72);

  return v1(v2);
}

void sub_1D1AA10E0(void *a1)
{
  v2 = sub_1D1E66A7C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v42 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [a1 service];
  if (v6)
  {
    v45 = v6;
    v7 = a1;
    v8 = sub_1D1E6707C();
    v9 = sub_1D1E6832C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v50 = v44;
      *v10 = 136315906;
      v11 = [v7 characteristicType];
      v43 = v9;
      v12 = v11;
      v13 = sub_1D1E6781C();
      v15 = v14;

      v16._countAndFlagsBits = v13;
      v16._object = v15;
      CharacteristicKind.init(rawValue:)(v16);
      v17 = v49;
      if (v49 == 174)
      {
        v17 = 0;
      }

      v48 = v17;
      v18 = sub_1D1E6789C();
      v20 = sub_1D1B1312C(v18, v19, &v50);

      *(v10 + 4) = v20;
      *(v10 + 12) = 2080;
      v21 = [v7 characteristicType];
      v22 = sub_1D1E6781C();
      v24 = v23;

      v25._countAndFlagsBits = v22;
      v25._object = v24;
      CharacteristicKind.init(rawValue:)(v25);
      v26 = v47;
      if (v47 == 174)
      {
        v26 = 0;
      }

      v46 = v26;
      v27 = sub_1D1D8227C();
      v29 = sub_1D1B1312C(v27, v28, &v50);

      *(v10 + 14) = v29;
      *(v10 + 22) = 2080;
      v30 = [v45 name];
      v31 = sub_1D1E6781C();
      v33 = v32;

      v34 = sub_1D1B1312C(v31, v33, &v50);

      *(v10 + 24) = v34;
      *(v10 + 32) = 2082;
      v35 = [v45 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v36 = sub_1D1E68FAC();
      v38 = v37;

      (*(v3 + 8))(v5, v2);
      v39 = sub_1D1B1312C(v36, v38, &v50);

      *(v10 + 34) = v39;
      _os_log_impl(&dword_1D16EC000, v8, v43, "\t %s/%s - %s (%{public}s)", v10, 0x2Au);
      v40 = v44;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v40, -1, -1);
      MEMORY[0x1D3893640](v10, -1, -1);
    }

    else
    {

      v41 = v45;
    }
  }
}

uint64_t sub_1D1AA14F8(uint64_t a1, _DWORD *a2, void *a3, uint64_t a4, unint64_t a5, uint64_t a6, unsigned __int8 a7, const char *a8)
{
  v127 = a5;
  v128 = a8;
  v124 = a3;
  v125 = a4;
  v123 = a2;
  v119 = a7;
  v120 = sub_1D1E6702C();
  v126 = *(v120 - 8);
  v9 = MEMORY[0x1EEE9AC00](v120);
  v113 = &v111 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v112 = &v111 - v12;
  v13 = MEMORY[0x1EEE9AC00](v11);
  v111 = &v111 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v114 = &v111 - v15;
  v16 = sub_1D1E66FDC();
  v121 = *(v16 - 8);
  v122 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v116 = &v111 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v117 = &v111 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v115 = &v111 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v118 = &v111 - v23;
  v24 = sub_1D1E66A7C();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v28 = &v111 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x1EEE9AC00](v26);
  v31 = &v111 - v30;
  v32 = MEMORY[0x1EEE9AC00](v29);
  v34 = &v111 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v111 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649D00, &qword_1D1E96228);
  v38 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v40 = (&v111 - v39);
  (*(v38 + 16))(&v111 - v39, a1, v37);
  v41 = (*(v38 + 88))(v40, v37);
  if (v41 != *MEMORY[0x1E69E8758])
  {
    v56 = *(v25 + 16);
    if (v41 == *MEMORY[0x1E69E8760])
    {
      v57 = v24;
      v56(v36, v123, v24);
      v58 = sub_1D1E6707C();
      v40 = sub_1D1E6833C();
      v59 = os_log_type_enabled(v58, v40);
      v60 = v126;
      v37 = v128;
      if (v59)
      {
        v24 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        v132 = v61;
        *v24 = 136446210;
        sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v62 = sub_1D1E68FAC();
        v64 = v63;
        (*(v25 + 8))(v36, v57);
        v65 = sub_1D1B1312C(v62, v64, &v132);

        *(v24 + 4) = v65;
        _os_log_impl(&dword_1D16EC000, v58, v40, "Batch read operation cancelled (ID: %{public}s)", v24, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v61);
        v66 = v61;
        v37 = v128;
        MEMORY[0x1D3893640](v66, -1, -1);
        MEMORY[0x1D3893640](v24, -1, -1);
      }

      else
      {

        (*(v25 + 8))(v36, v24);
      }

      v25 = v127;
      v42 = sub_1D1E66FFC();
      v38 = v117;
      sub_1D1E6703C();
      v34 = sub_1D1E683DC();
      result = sub_1D1E6855C();
      if ((result & 1) == 0)
      {
        goto LABEL_56;
      }

      if (v119)
      {
        v89 = v120;
        if (HIDWORD(v25))
        {
LABEL_72:
          __break(1u);
          goto LABEL_73;
        }

        if ((v25 & 0xFFFFF800) == 0xD800)
        {
LABEL_79:
          __break(1u);
          goto LABEL_80;
        }

        if (v25 >> 16 > 0x10)
        {
          goto LABEL_74;
        }

        v25 = &v131;
      }

      else
      {
        v89 = v120;
        if (!v25)
        {
          __break(1u);
          goto LABEL_23;
        }
      }

      v99 = v112;
      sub_1D1E6706C();

      if ((*(v60 + 11))(v99, v89) == *MEMORY[0x1E69E93E8])
      {
        v100 = "[Error] Interval already ended";
      }

      else
      {
        (*(v60 + 1))(v99, v89);
        v100 = "Batch read canceled";
      }

      v103 = swift_slowAlloc();
      *v103 = 0;
      v104 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v42, v34, v104, v25, v100, v103, 2u);
      MEMORY[0x1D3893640](v103, -1, -1);
      goto LABEL_56;
    }

    v56(v34, v123, v24);
    v42 = sub_1D1E6707C();
    v67 = sub_1D1E6833C();
    if (os_log_type_enabled(v42, v67))
    {
      v68 = swift_slowAlloc();
      v123 = v68;
      v124 = swift_slowAlloc();
      v132 = v124;
      *v68 = 136446210;
      sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v69 = sub_1D1E68FAC();
      v71 = v70;
      (*(v25 + 8))(v34, v24);
      v72 = sub_1D1B1312C(v69, v71, &v132);

      v73 = v123;
      *(v123 + 1) = v72;
      v74 = v73;
      _os_log_impl(&dword_1D16EC000, v42, v67, "Batch read operation terminated with unknown reason (ID: %{public}s)", v73, 0xCu);
      v75 = v124;
      __swift_destroy_boxed_opaque_existential_1(v124);
      MEMORY[0x1D3893640](v75, -1, -1);
      MEMORY[0x1D3893640](v74, -1, -1);

      goto LABEL_24;
    }

LABEL_23:

    (*(v25 + 8))(v34, v24);
LABEL_24:
    v90 = v126;
    v28 = v127;
    v91 = v116;
    v76 = sub_1D1E66FFC();
    sub_1D1E6703C();
    v25 = sub_1D1E683DC();
    result = sub_1D1E6855C();
    if (result)
    {
      LODWORD(v127) = v25;
      if (v119)
      {
        v92 = v120;
        if (v28 >> 32)
        {
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        if ((v28 & 0xFFFFF800) == 0xD800)
        {
LABEL_80:
          __break(1u);
          goto LABEL_81;
        }

        if (v28 >> 16 > 0x10)
        {
          goto LABEL_75;
        }

        v28 = &v133;
      }

      else
      {
        v92 = v120;
        if (!v28)
        {
          __break(1u);
          goto LABEL_28;
        }
      }

      v101 = v113;
      sub_1D1E6706C();

      if ((*(v90 + 11))(v101, v92) == *MEMORY[0x1E69E93E8])
      {
        v102 = "[Error] Interval already ended";
      }

      else
      {
        (*(v90 + 1))(v101, v92);
        v102 = "Batch read canceled";
      }

      v105 = swift_slowAlloc();
      *v105 = 0;
      v106 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v76, v127, v106, v28, v102, v105, 2u);
      MEMORY[0x1D3893640](v105, -1, -1);
    }

    (*(v121 + 8))(v91, v122);
    return (*(v38 + 8))(v40, v37);
  }

  (*(v38 + 96))(v40, v37);
  v42 = *v40;
  if (*v40)
  {
    v43 = v24;
    (*(v25 + 16))(v31, v123, v24);
    v44 = v42;
    v45 = sub_1D1E6707C();
    v46 = sub_1D1E6833C();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      v132 = v48;
      *v47 = 136446466;
      sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v49 = sub_1D1E68FAC();
      v51 = v50;
      (*(v25 + 8))(v31, v43);
      v52 = sub_1D1B1312C(v49, v51, &v132);

      *(v47 + 4) = v52;
      *(v47 + 12) = 2080;
      swift_getErrorValue();
      v53 = sub_1D1E6915C();
      v55 = sub_1D1B1312C(v53, v54, &v132);

      *(v47 + 14) = v55;
      _os_log_impl(&dword_1D16EC000, v45, v46, "Batch read operation failed (ID: %{public}s): %s", v47, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v48, -1, -1);
      MEMORY[0x1D3893640](v47, -1, -1);
    }

    else
    {

      (*(v25 + 8))(v31, v24);
    }

    v38 = v127;
    v28 = v118;
    v84 = sub_1D1E66FFC();
    sub_1D1E6703C();
    LOBYTE(v85) = sub_1D1E683DC();
    result = sub_1D1E6855C();
    v87 = v126;
    if ((result & 1) == 0)
    {
      goto LABEL_17;
    }

    if ((v119 & 1) == 0)
    {
      v88 = v120;
      if (!v38)
      {
        __break(1u);
LABEL_17:

        return (*(v121 + 8))(v28, v122);
      }

LABEL_37:

      v95 = v114;
      sub_1D1E6706C();

      if ((*(v87 + 11))(v95, v88) == *MEMORY[0x1E69E93E8])
      {
        v96 = "[Error] Interval already ended";
      }

      else
      {
        (*(v87 + 1))(v95, v88);
        v96 = "Batch read terminated successfully";
      }

      v97 = swift_slowAlloc();
      *v97 = 0;
      v98 = sub_1D1E66FBC();
      _os_signpost_emit_with_name_impl(&dword_1D16EC000, v84, v85, v98, v38, v96, v97, 2u);
      MEMORY[0x1D3893640](v97, -1, -1);

      return (*(v121 + 8))(v28, v122);
    }

    goto LABEL_33;
  }

  v38 = v24;
  (*(v25 + 16))(v28, v123, v24);
  v76 = sub_1D1E6707C();
  v77 = sub_1D1E6835C();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    v79 = swift_slowAlloc();
    v132 = v79;
    *v78 = 136446210;
    sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v80 = sub_1D1E68FAC();
    v82 = v81;
    (*(v25 + 8))(v28, v38);
    v83 = sub_1D1B1312C(v80, v82, &v132);

    *(v78 + 4) = v83;
    _os_log_impl(&dword_1D16EC000, v76, v77, "Batch read operation completed successfully (ID: %{public}s)", v78, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v79);
    MEMORY[0x1D3893640](v79, -1, -1);
    MEMORY[0x1D3893640](v78, -1, -1);

    goto LABEL_29;
  }

LABEL_28:

  (*(v25 + 8))(v28, v38);
LABEL_29:
  v85 = v126;
  v87 = v128;
  v42 = sub_1D1E66FFC();
  v38 = v115;
  sub_1D1E6703C();
  v84 = sub_1D1E683DC();
  result = sub_1D1E6855C();
  v93 = v127;
  if ((result & 1) == 0)
  {
LABEL_56:

    return (*(v121 + 8))(v38, v122);
  }

  if (v119)
  {
    v94 = v120;
    if (HIDWORD(v127))
    {
LABEL_76:
      __break(1u);
LABEL_77:
      __break(1u);
      goto LABEL_78;
    }

    if ((v127 & 0xFFFFF800) == 0xD800)
    {
LABEL_81:
      __break(1u);
      return result;
    }

    if (v127 >> 16 > 0x10)
    {
      goto LABEL_77;
    }

    v93 = &v130;
  }

  else
  {
    v94 = v120;
    if (!v127)
    {
      __break(1u);
LABEL_33:
      v88 = v120;
      if (HIDWORD(v38))
      {
        __break(1u);
      }

      else
      {
        if ((v38 & 0xFFFFF800) == 0xD800)
        {
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        if (v38 >> 16 <= 0x10)
        {
          v38 = &v129;
          goto LABEL_37;
        }
      }

      __break(1u);
      goto LABEL_72;
    }
  }

  v107 = v111;
  sub_1D1E6706C();

  if ((*(v85 + 11))(v107, v94) == *MEMORY[0x1E69E93E8])
  {
    v108 = "[Error] Interval already ended";
  }

  else
  {
    (*(v85 + 1))(v107, v94);
    v108 = "Batch read terminated successfully";
  }

  v109 = swift_slowAlloc();
  *v109 = 0;
  v110 = sub_1D1E66FBC();
  _os_signpost_emit_with_name_impl(&dword_1D16EC000, v42, v84, v110, v93, v108, v109, 2u);
  MEMORY[0x1D3893640](v109, -1, -1);

  return (*(v121 + 8))(v38, v122);
}

uint64_t sub_1D1AA2524(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CC0, &qword_1D1E96188);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v13 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 40);
    do
    {
      v9 = *v8;
      v10 = *(v8 - 1);
      v11 = v9;
      sub_1D1AA2684(v10, v9);

      v8 += 2;
      --v7;
    }

    while (v7);
  }

  v13[1] = a1;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  sub_1D1E6809C();
  return (*(v4 + 8))(v6, v3);
}

void sub_1D1AA2684(void *a1, void *a2)
{
  if (a2)
  {
    v3 = a1;
    v4 = a2;
    v5 = a2;
    v6 = v3;
    v7 = a2;
    v8 = a2;
    v9 = sub_1D1E6707C();
    v10 = sub_1D1E6833C();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v61 = v13;
      *v11 = 136315650;
      v14 = [v6 characteristicType];
      v15 = sub_1D1E6781C();
      v17 = v16;

      v18._countAndFlagsBits = v15;
      v18._object = v17;
      CharacteristicKind.init(rawValue:)(v18);
      v19 = sub_1D1E6789C();
      v21 = v20;

      v22 = sub_1D1B1312C(v19, v21, &v61);

      *(v11 + 4) = v22;
      *(v11 + 12) = 2080;
      v23 = [v6 characteristicType];
      v24 = sub_1D1E6781C();
      v26 = v25;

      v27._countAndFlagsBits = v24;
      v27._object = v26;
      CharacteristicKind.init(rawValue:)(v27);
      v28 = sub_1D1D8227C();
      v30 = v29;

      v31 = sub_1D1B1312C(v28, v30, &v61);

      *(v11 + 14) = v31;
      *(v11 + 22) = 2114;
      v32 = a2;
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 24) = v33;
      *v12 = v33;
      _os_log_impl(&dword_1D16EC000, v9, v10, "\t❌ Failed to read characteristic: %s/%s with error: %{public}@", v11, 0x20u);
      sub_1D1741A30(v12, &unk_1EC644000, &unk_1D1E75B00);
      MEMORY[0x1D3893640](v12, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v13, -1, -1);
      MEMORY[0x1D3893640](v11, -1, -1);

      return;
    }

    v60 = a2;
  }

  else
  {
    v34 = a1;
    v35 = 0;
    v36 = v34;
    v37 = 0;
    v38 = sub_1D1E6707C();
    v39 = sub_1D1E6832C();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v61 = v41;
      *v40 = 136315394;
      v42 = [v36 characteristicType];
      v43 = sub_1D1E6781C();
      v45 = v44;

      v46._countAndFlagsBits = v43;
      v46._object = v45;
      CharacteristicKind.init(rawValue:)(v46);
      v47 = sub_1D1E6789C();
      v49 = v48;

      v50 = sub_1D1B1312C(v47, v49, &v61);

      *(v40 + 4) = v50;
      *(v40 + 12) = 2080;
      v51 = [v36 characteristicType];
      v52 = sub_1D1E6781C();
      v54 = v53;

      v55._countAndFlagsBits = v52;
      v55._object = v54;
      CharacteristicKind.init(rawValue:)(v55);
      v56 = sub_1D1D8227C();
      v58 = v57;

      v59 = sub_1D1B1312C(v56, v58, &v61);

      *(v40 + 14) = v59;
      _os_log_impl(&dword_1D16EC000, v38, v39, "\t✅ Successfully read characteristic: %s/%s", v40, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v41, -1, -1);
      MEMORY[0x1D3893640](v40, -1, -1);

      return;
    }

    v60 = 0;
  }
}

uint64_t sub_1D1AA2B98(void *a1)
{
  v1 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  return sub_1D1E680AC();
}

uint64_t sub_1D1AA2BE8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 96) = v15;
  *(v8 + 104) = v16;
  *(v8 + 64) = v13;
  *(v8 + 80) = v14;
  *(v8 + 48) = v12;
  *(v8 + 32) = a5;
  *(v8 + 40) = a8;
  *(v8 + 136) = a7;
  *(v8 + 24) = a4;
  v9 = sub_1D1E66A7C();
  *(v8 + 112) = v9;
  *(v8 + 120) = *(v9 - 8);
  *(v8 + 128) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1AA2CCC, 0, 0);
}

uint64_t sub_1D1AA2CCC(uint64_t a1)
{
  v24 = v1;
  v2 = sub_1D1E66FFC();
  v3 = sub_1D1E683FC();
  result = sub_1D1E6855C();
  if (result)
  {
    v5 = *(v1 + 32);
    if ((*(v1 + 136) & 1) == 0)
    {
      if (v5)
      {
LABEL_9:
        v6 = swift_slowAlloc();
        *v6 = 0;
        v7 = sub_1D1E66FBC();
        _os_signpost_emit_with_name_impl(&dword_1D16EC000, v2, v3, v7, v5, "Starting HomeKit batch operation", v6, 2u);
        MEMORY[0x1D3893640](v6, -1, -1);
        goto LABEL_10;
      }

      __break(1u);
    }

    if (v5 >> 32)
    {
      __break(1u);
    }

    else
    {
      if ((v5 & 0xFFFFF800) == 0xD800)
      {
LABEL_18:
        __break(1u);
        return result;
      }

      if (v5 >> 16 <= 0x10)
      {
        v5 = (v1 + 16);
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_10:

  (*(*(v1 + 120) + 16))(*(v1 + 128), *(v1 + 56), *(v1 + 112));
  v8 = sub_1D1E6707C();
  v9 = sub_1D1E6831C();
  v10 = os_log_type_enabled(v8, v9);
  v12 = *(v1 + 120);
  v11 = *(v1 + 128);
  v13 = *(v1 + 112);
  if (v10)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v23[0] = v15;
    *v14 = 136446210;
    sub_1D1AA3AF8(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = sub_1D1E68FAC();
    v18 = v17;
    (*(v12 + 8))(v11, v13);
    v19 = sub_1D1B1312C(v16, v18, v23);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_1D16EC000, v8, v9, "Starting HomeKit batch operation (ID: %{public}s)", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x1D3893640](v15, -1, -1);
    MEMORY[0x1D3893640](v14, -1, -1);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v22 = *(v1 + 72);
  v20 = *(v1 + 96);
  v23[0] = *(v1 + 80);
  v23[1] = v20;
  HMHome.perform(batchReadRequest:handlers:)(&v22, v23);

  v21 = *(v1 + 8);

  return v21();
}

void sub_1D1AA2F94(uint64_t a1, char a2, void *a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B60, &qword_1D1E7E800);
  v56 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v60 = &v52 - v8;
  v61 = sub_1D1E66A7C();
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0);
  v58 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v52 - v13;
  v55 = *(a1 + 16);
  if (!v55)
  {
    goto LABEL_23;
  }

  v52 = v3;
  if (!*(a1 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = *(v12 + 48);
  v16 = *(v58 + 80);
  v57 = a1;
  v17 = (v59 + 32);
  v53 = a1 + ((v16 + 32) & ~v16);
  sub_1D1741C08(v53, v14, &unk_1EC649E20, &unk_1D1E717B0);
  v18 = *v17;
  (*v17)(v10, v14, v61);
  v54 = v15;
  sub_1D1741A90(&v14[v15], v60, &qword_1EC642B60, &qword_1D1E7E800);
  v19 = *a3;
  v20 = sub_1D1742188();
  v22 = v19[2];
  v23 = (v21 & 1) == 0;
  v24 = __OFADD__(v22, v23);
  v25 = v22 + v23;
  if (v24)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v26 = v21;
  if (v19[3] < v25)
  {
    sub_1D172CEA4(v25, a2 & 1);
    v20 = sub_1D1742188();
    if ((v26 & 1) != (v27 & 1))
    {
LABEL_6:
      sub_1D1E690FC();
      __break(1u);
      goto LABEL_23;
    }

LABEL_9:
    if (v26)
    {
      goto LABEL_10;
    }

    goto LABEL_13;
  }

  if (a2)
  {
    goto LABEL_9;
  }

  v30 = v20;
  sub_1D173B84C();
  v20 = v30;
  if (v26)
  {
LABEL_10:
    v28 = swift_allocError();
    swift_willThrow();

    v64 = v28;
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    if ((swift_dynamicCast() & 1) == 0)
    {
      sub_1D1741A30(v60, &qword_1EC642B60, &qword_1D1E7E800);
      (*(v59 + 8))(v10, v61);

      return;
    }

    goto LABEL_27;
  }

LABEL_13:
  v31 = *a3;
  *(*a3 + 8 * (v20 >> 6) + 64) |= 1 << v20;
  v32 = v20;
  v18((v31[6] + *(v59 + 72) * v20), v10, v61);
  sub_1D1741A90(v60, v31[7] + *(v56 + 72) * v32, &qword_1EC642B60, &qword_1D1E7E800);
  v33 = v31[2];
  v24 = __OFADD__(v33, 1);
  v34 = v33 + 1;
  if (!v24)
  {
    v31[2] = v34;
    if (v55 == 1)
    {
LABEL_23:

      return;
    }

    v35 = &qword_1EC642B60;
    v36 = 1;
    while (v36 < *(v57 + 16))
    {
      sub_1D1741C08(v53 + *(v58 + 72) * v36, v14, &unk_1EC649E20, &unk_1D1E717B0);
      v37 = *v17;
      (*v17)(v10, v14, v61);
      v38 = v35;
      sub_1D1741A90(&v14[v54], v60, v35, &qword_1D1E7E800);
      v39 = *a3;
      v40 = sub_1D1742188();
      v42 = v39[2];
      v43 = (v41 & 1) == 0;
      v24 = __OFADD__(v42, v43);
      v44 = v42 + v43;
      if (v24)
      {
        goto LABEL_25;
      }

      v45 = v41;
      if (v39[3] < v44)
      {
        sub_1D172CEA4(v44, 1);
        v40 = sub_1D1742188();
        if ((v45 & 1) != (v46 & 1))
        {
          goto LABEL_6;
        }
      }

      if (v45)
      {
        goto LABEL_10;
      }

      v47 = *a3;
      *(*a3 + 8 * (v40 >> 6) + 64) |= 1 << v40;
      v48 = v40;
      v37((v47[6] + *(v59 + 72) * v40), v10, v61);
      v49 = v47[7] + *(v56 + 72) * v48;
      v35 = v38;
      sub_1D1741A90(v60, v49, v38, &qword_1D1E7E800);
      v50 = v47[2];
      v24 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v24)
      {
        goto LABEL_26;
      }

      ++v36;
      v47[2] = v51;
      if (v55 == v36)
      {
        goto LABEL_23;
      }
    }

    goto LABEL_24;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  v62 = 0;
  v63 = 0xE000000000000000;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0xD00000000000001BLL, 0x80000001D1EC3EC0);
  sub_1D1E68ABC();
  MEMORY[0x1D3890F70](39, 0xE100000000000000);
  sub_1D1E68AFC();
  __break(1u);
}

uint64_t sub_1D1AA35F0(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v13 - v6;
  v8 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v7, v2, v11);
  sub_1D1E66E1C();
  (*(v8 + 8))(v10, v3);
  return sub_1D1E6858C();
}

uint64_t sub_1D1AA3748(id *a1, uint64_t a2)
{
  v3 = sub_1D1E66A7C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v8 = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  (*(v4 + 8))(v6, v3);
  return v8 & 1;
}

uint64_t sub_1D1AA3854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a5;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D17C4BFC;

  return sub_1D1A9878C(a1, a2, a3, a4, v16, a6, a7, a8);
}

uint64_t sub_1D1AA394C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *a5;
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = sub_1D17C4CF0;

  return sub_1D1A9AE94(a1, a2, a3, a4, v16, a6, a7, a8);
}

uint64_t sub_1D1AA3A44(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1A90060(a1, a2, v7, v6);
}

uint64_t sub_1D1AA3AF8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1AA3B40(uint64_t a1, uint64_t a2)
{
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;

  v9 = 0;
  while (v7)
  {
    v10 = v7;
LABEL_10:
    v7 = (v10 - 1) & v10;
    if (a2)
    {
      v14 = *(*(a1 + 48) + (__clz(__rbit64(v10)) | (v9 << 6)));
      v12 = HMService.subscript.getter();
      if (v12)
      {
        sub_1D1764A98(&v13, v12);
      }
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= v8)
    {

      return;
    }

    v10 = *(v4 + 8 * v11);
    ++v9;
    if (v10)
    {
      v9 = v11;
      goto LABEL_10;
    }
  }

  __break(1u);
}

void sub_1D1AA3C58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  JUMPOUT(0x1D1AA3854);
}

uint64_t sub_1D1AA3DCC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4CF0;

  return sub_1D1B0AAFC(a1, v4, v5, v6);
}

uint64_t sub_1D1AA3E80(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1A93948(a1, a2, v7, v6);
}

uint64_t sub_1D1AA3F34(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t objectdestroy_23Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1D1AA4094(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140) - 8);
  v5 = *(v2 + 16);
  v6 = v2 + ((*(v4 + 80) + 24) & ~*(v4 + 80));

  return a2(a1, v5, v6);
}

uint64_t sub_1D1AA4128(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 24);
  v13 = *(v1 + 16);
  v8 = *(v1 + v5);
  v9 = *(v1 + v6);
  v10 = *(v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D1A9F1DC(a1, v13, v7, v1 + v4, v8, v9, v10);
}

uint64_t sub_1D1AA42AC(uint64_t a1)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140) - 8);
  v5 = (*(v4 + 80) + 48) & ~*(v4 + 80);
  v6 = *(v1 + 2);
  v7 = *(v1 + 3);
  v8 = v1[4];
  v9 = *(v1 + 5);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1A9ED94(v8, a1, v6, v7, v9, v1 + v5);
}

uint64_t sub_1D1AA43E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1AA4448(uint64_t a1)
{
  v4 = *(type metadata accessor for StateSnapshot(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4CF0;

  return sub_1D1B076BC(a1, v6, v7, v1 + v5);
}

uint64_t sub_1D1AA4538(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_1D1AA45A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4CF0;

  JUMPOUT(0x1D1AA394CLL);
}

uint64_t sub_1D1AA4714(uint64_t a1)
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

  return sub_1D1B0AC54(a1, v7, v4, v5, v6, v8);
}

uint64_t sub_1D1AA47E0(uint64_t a1, void (*a2)(uint64_t *__return_ptr, id *), uint64_t a3, char a4, void *a5)
{
  v62 = a5;
  v5 = a1 + 64;
  v6 = -1 << *(a1 + 32);
  if (-v6 < 64)
  {
    v7 = ~(-1 << -v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a1 + 64);
  v9 = (63 - v6) >> 6;

  v10 = 0;
  v49 = v9;
  for (i = v5; ; v5 = i)
  {
    v17 = v10;
    if (!v8)
    {
      break;
    }

LABEL_12:
    v19 = __clz(__rbit64(v8)) | (v17 << 6);
    v20 = *(*(a1 + 48) + 8 * v19);
    v21 = *(a1 + 56) + 32 * v19;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v25 = *(v21 + 24);
    v55 = v20;
    v56 = v22;
    v57 = v23;
    v58 = v24;
    v59 = v25;
    v26 = v20;
    sub_1D17418FC(v22, v23, v24, v25);
    a2(v60, &v55);
    v27 = v56;
    v28 = v57;
    v29 = v58;
    LOBYTE(v23) = v59;

    sub_1D1757A60(v27, v28, v29, v23);
    v30 = v60[0];
    if (!v60[0])
    {
LABEL_22:
      sub_1D1716918(a1);
    }

    v32 = v60[1];
    v31 = v60[2];
    v33 = v60[3];
    v34 = v61;
    v35 = *v62;
    v36 = sub_1D171D368(v60[0]);
    v38 = v35[2];
    v39 = (v37 & 1) == 0;
    v40 = __OFADD__(v38, v39);
    v41 = v38 + v39;
    if (v40)
    {
      goto LABEL_24;
    }

    v42 = v37;
    if (v35[3] >= v41)
    {
      if ((a4 & 1) == 0)
      {
        v54 = v36;
        sub_1D1737AA0();
        v36 = v54;
      }
    }

    else
    {
      sub_1D172629C(v41, a4 & 1);
      v36 = sub_1D171D368(v30);
      if ((v42 & 1) != (v43 & 1))
      {
        goto LABEL_26;
      }
    }

    v8 &= v8 - 1;
    v44 = *v62;
    if (v42)
    {
      v11 = v36;

      v12 = v44[7] + 32 * v11;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      *v12 = v32;
      *(v12 + 8) = v31;
      *(v12 + 16) = v33;
      v16 = *(v12 + 24);
      *(v12 + 24) = v34;
      sub_1D1757A60(v13, v14, v15, v16);
    }

    else
    {
      v44[(v36 >> 6) + 8] |= 1 << v36;
      *(v44[6] + 8 * v36) = v30;
      v45 = v44[7] + 32 * v36;
      *v45 = v32;
      *(v45 + 8) = v31;
      *(v45 + 16) = v33;
      *(v45 + 24) = v34;
      v46 = v44[2];
      v40 = __OFADD__(v46, 1);
      v47 = v46 + 1;
      if (v40)
      {
        goto LABEL_25;
      }

      v44[2] = v47;
    }

    a4 = 1;
    v10 = v17;
    v9 = v49;
  }

  v18 = v10;
  while (1)
  {
    v17 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v17 >= v9)
    {
      goto LABEL_22;
    }

    v8 = *(v5 + 8 * v17);
    ++v18;
    if (v8)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  sub_1D1741B10(0, &qword_1EE079CD0, 0x1E696CB38);
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1AA4AC8(uint64_t a1)
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

  return sub_1D1A9407C(a1, v4, v5, v6, v7, v8);
}

void *sub_1D1AA4B90()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

uint64_t sub_1D1AA4BF4(uint64_t a1)
{
  v3 = *(sub_1D1E66A7C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v3 + 64);
  v6 = *(sub_1D1E6709C() - 8);
  v7 = (v4 + v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = *(v6 + 64);
  v9 = *(sub_1D1E6701C() - 8);
  v10 = (v7 + v8 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = v10 + *(v9 + 64);
  v12 = v1 + ((v11 + 7) & 0xFFFFFFFFFFFFFFF8);
  v13 = *v12;
  v14 = *(v12 + 8);
  v15 = *(v1 + ((v11 + 31) & 0xFFFFFFFFFFFFFFF8));
  v16 = *(v12 + 16);

  return sub_1D1AA14F8(a1, (v1 + v4), (v1 + v7), v1 + v10, v13, v14, v16, v15);
}

uint64_t sub_1D1AA4D6C(uint64_t a1)
{
  v3 = *(sub_1D1E6709C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);

  return sub_1D1AA2524(a1, v1 + v4);
}

uint64_t sub_1D1AA4E4C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649CA0, &qword_1D1E96140);

  return sub_1D1AA2B98(a1);
}

uint64_t sub_1D1AA4EC8(uint64_t a1)
{
  v2 = *(sub_1D1E6701C() - 8);
  v15 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v3 = (*(v2 + 64) + v15 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(sub_1D1E66FDC() - 8);
  v13 = (v3 + *(v4 + 80) + 17) & ~*(v4 + 80);
  sub_1D1E6709C();
  sub_1D1E66A7C();
  v11 = *(v1 + 24);
  v12 = *(v1 + 16);
  v5 = v1 + v3;
  v6 = *(v1 + v3);
  v7 = *(v5 + 8);
  v8 = *(v5 + 16);
  v9 = swift_task_alloc();
  *(v14 + 16) = v9;
  *v9 = v14;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1AA2BE8(a1, v12, v11, v1 + v15, v6, v7, v8, v1 + v13);
}

uint64_t objectdestroy_72Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 56, 7);
}

uint64_t sub_1D1AA51CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4CF0;

  return sub_1D1A904E4(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_7()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 56) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x1EEE6BDD0](v0, ((v5 + 15) & 0xFFFFFFFFFFFFFFF8) + 8, v3 | 7);
}

void sub_1D1AA53A0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C68, &qword_1D1E960B0);
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1D17C4BFC;

  JUMPOUT(0x1D1AA3854);
}

uint64_t objectdestroy_5Tm(uint64_t a1)
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

double HomeState.Stream.Config.init()@<D0>(_DWORD *a1@<X8>)
{
  *&result = 16842752;
  *a1 = 16842752;
  return result;
}

uint64_t HomeState.Stream.Config.hash(into:)()
{
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6922C();
}

uint64_t HomeState.Stream.Config.hashValue.getter()
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

uint64_t sub_1D1AA5758(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  sub_1D1E6922C();
  return sub_1D1E6926C();
}

unint64_t sub_1D1AA582C()
{
  result = qword_1EC649D08[0];
  if (!qword_1EC649D08[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EC649D08);
  }

  return result;
}

uint64_t _s6ConfigVwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[4])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t _s6ConfigVwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 4) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 4) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D1AA59DC(uint64_t a1, void (*a2)(uint64_t, uint64_t), void (*a3)(void))
{
  v6 = v3;
  v7 = sub_1D1742188();
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *v3;
  v16 = *v6;
  if (!isUniquelyReferenced_nonNull_native)
  {
    a3();
    v11 = v16;
  }

  v12 = *(v11 + 48);
  v13 = sub_1D1E66A7C();
  (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v9, v13);
  v14 = *(*(v11 + 56) + 8 * v9);
  a2(v9, v11);
  *v6 = v11;
  return v14;
}

uint64_t sub_1D1AA5B10@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t (*a2)(void)@<X2>, void (*a3)(uint64_t, uint64_t)@<X3>, void (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v10 = v5;
  v12 = sub_1D1742188();
  if (v13)
  {
    v14 = v12;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v5;
    v29 = *v10;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a4();
      v16 = v29;
    }

    v17 = *(v16 + 48);
    v18 = sub_1D1E66A7C();
    v19 = v14;
    (*(*(v18 - 8) + 8))(v17 + *(*(v18 - 8) + 72) * v14, v18);
    v20 = *(v16 + 56);
    v21 = a1(0);
    v28 = *(v21 - 8);
    sub_1D1AAE3F4(v20 + *(v28 + 72) * v19, a5, a2);
    a3(v19, v16);
    *v10 = v16;
    v22 = *(v28 + 56);
    v23 = a5;
    v24 = 0;
    v25 = v21;
  }

  else
  {
    v26 = a1(0);
    v22 = *(*(v26 - 8) + 56);
    v25 = v26;
    v23 = a5;
    v24 = 1;
  }

  return v22(v23, v24, 1, v25);
}

uint64_t sub_1D1AA5CD0()
{
  v1 = v0;
  v2 = sub_1D1742188();
  if ((v3 & 1) == 0)
  {
    return 0;
  }

  v4 = v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *v0;
  v11 = *v1;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_1D173E908();
    v6 = v11;
  }

  v7 = *(v6 + 48);
  v8 = sub_1D1E66A7C();
  (*(*(v8 - 8) + 8))(v7 + *(*(v8 - 8) + 72) * v4, v8);
  v9 = *(*(v6 + 56) + 8 * v4);
  sub_1D1757DE0();
  *v1 = v6;
  return v9;
}

uint64_t sub_1D1AA5D98(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v3 = qword_1EC64ABE8;
  v2[5] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA5E34, v3, 0);
}

uint64_t sub_1D1AA5E34()
{
  v21 = v0;
  v1 = v0[3];
  v19 = MEMORY[0x1E69E7CC8];
  if (v1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v5 = v1 & 0xFFFFFFFFFFFFFF8;
    v6 = v0[3] + 32;
    while (1)
    {
      if (v4)
      {
        v7 = MEMORY[0x1D3891EF0](v3, v0[3]);
      }

      else
      {
        if (v3 >= *(v5 + 16))
        {
          goto LABEL_12;
        }

        v7 = *(v6 + 8 * v3);
      }

      v8 = v7;
      v9 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        break;
      }

      v20 = v7;
      v1 = 0;
      sub_1D1A93630(&v19, &v20);

      ++v3;
      if (v9 == i)
      {
        v10 = v19;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }

  v10 = MEMORY[0x1E69E7CC8];
LABEL_15:
  v0[6] = v10;
  v12 = v0[4];
  v11 = v0[5];
  v13 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
  v14 = swift_task_alloc();
  v0[7] = v14;
  *(v14 + 16) = v10;
  *(v14 + 24) = v12;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649C60, &qword_1D1E960A0);
  v17 = swift_task_alloc();
  v0[8] = v17;
  *v17 = v0;
  v17[1] = sub_1D1AA60AC;
  v23 = v16;

  return MEMORY[0x1EEE6DBF8](v0 + 2, v15, v16, v11, v13, &unk_1D1E960E8, v14, v15);
}

uint64_t sub_1D1AA60AC()
{
  v1 = *(*v0 + 40);

  return MEMORY[0x1EEE6DFA0](sub_1D1AA61FC, v1, 0);
}

uint64_t sub_1D1AA6214()
{
  os_unfair_lock_lock(v0 + 4);
  Strong = swift_weakLoadStrong();
  swift_weakAssign();
  os_unfair_lock_unlock(v0 + 4);
  return Strong;
}

uint64_t sub_1D1AA6268(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A270, &qword_1D1E71780);
  v3 = v2 - 8;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC0, &qword_1D1E96500);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v13 - v8;
  sub_1D1AAE2C4(a1, v5, type metadata accessor for StateSnapshot.UpdateType);
  v10 = *(v3 + 52);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DC8, &qword_1D1E96508);
  (*(*(v11 - 8) + 56))(&v5[v10], 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DD0, &qword_1D1E96510);
  sub_1D1E67ECC();
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_1D1AA643C(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  v4 = v3 - 8;
  MEMORY[0x1EEE9AC00](v3);
  v6 = v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v17 - v9;
  v11 = *a1;
  v12 = *(a1 + 8);
  v17[1] = *(**(v1 + 40) + 120);
  v13 = *(v4 + 52);
  v14 = *(a1 + 16);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
  (*(*(v15 - 8) + 56))(&v6[v13], 1, 1, v15);
  *v6 = v11;
  *(v6 + 1) = v12;
  v6[16] = v14;
  sub_1D1A28388(v11, v12, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
  sub_1D1E67ECC();
  return (*(v8 + 8))(v10, v7);
}

void sub_1D1AA6624(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643318, &qword_1D1E71770);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22[-1] - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649DE0, &unk_1D1E96BD0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v22[-1] - v10;
  sub_1D1AB5660(a1, v3, v22);
  v12 = v23;
  if (v23 == 255)
  {
    if (qword_1EC6422F8 != -1)
    {
      swift_once();
    }

    v17 = sub_1D1E6709C();
    __swift_project_value_buffer(v17, qword_1EC649730);
    v21 = sub_1D1E6707C();
    v18 = sub_1D1E6834C();
    if (os_log_type_enabled(v21, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_1D16EC000, v21, v18, "Received update for type that isnt an HM object! Haven't handled that case yet", v19, 2u);
      MEMORY[0x1D3893640](v19, -1, -1);
    }

    v20 = v21;
  }

  else
  {
    v14 = v22[0];
    v13 = v22[1];
    v15 = *(v5 + 44);
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645C58, &qword_1D1E7C010);
    (*(*(v16 - 8) + 56))(&v7[v15], 1, 1, v16);
    *v7 = v14;
    *(v7 + 1) = v13;
    v7[16] = v12;
    sub_1D1A28388(v14, v13, v12);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649DF0, &qword_1D1E7C018);
    sub_1D1E67ECC();
    sub_1D1AADE88(v14, v13, v12);
    (*(v9 + 8))(v11, v8);
  }
}

void *sub_1D1AA694C()
{

  return v0;
}

uint64_t sub_1D1AA6984()
{
  sub_1D1AA694C();

  return swift_deallocClassInstance();
}

os_unfair_lock_s *sub_1D1AA69D0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v30[-1] - v5;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v9 = &v30[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1AA6214();
  if (!v10 || (v11 = v10, swift_beginAccess(), v12 = *(v11 + 64), v13 = v12, , !v12))
  {
    v14 = sub_1D1AA6214();
    if (!v14)
    {
      goto LABEL_8;
    }

    v15 = v14;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      swift_unknownObjectRetain();
    }

    swift_beginAccess();
    v13 = *(v15 + 64);
    *(v15 + 64) = v16;
  }

LABEL_8:
  if (sub_1D1AA6214())
  {
    sub_1D1A81190();
  }

  swift_storeEnumTagMultiPayload();
  sub_1D1AA6268(v9);
  sub_1D1AAE264(v9, type metadata accessor for StateSnapshot.UpdateType);
  v30[0] = 0;
  v30[1] = 0;
  v31 = 4;
  sub_1D1AA643C(v30);
  if (sub_1D1AA6214())
  {

    LOBYTE(v30[0]) = 3;
    sub_1D1AFCA44(v30);
  }

  v17 = sub_1D1AA6214();
  if (v17)
  {
    v18 = v17;
    swift_beginAccess();
    if (*(*(v18 + 32) + 16))
    {
      sub_1D1ADB844();
    }
  }

  v19 = sub_1D1E67E7C();
  v20 = *(*(v19 - 8) + 56);
  v20(v6, 1, 1, v19);
  v21 = qword_1EC642358;
  swift_unknownObjectRetain();

  if (v21 != -1)
  {
    swift_once();
  }

  v22 = qword_1EC64ABE8;
  v23 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
  v24 = swift_allocObject();
  v24[2] = v22;
  v24[3] = v23;
  v24[4] = a1;
  v24[5] = a2;

  sub_1D17C6EF0(0, 0, v6, &unk_1D1E96528, v24);

  result = sub_1D1AA6214();
  if (result)
  {
    v26 = result;
    os_unfair_lock_lock(result + 4);
    os_unfair_lock_opaque_low = LOBYTE(v26[5]._os_unfair_lock_opaque);
    os_unfair_lock_unlock(v26 + 4);

    if (os_unfair_lock_opaque_low == 1)
    {
      v20(v6, 1, 1, v19);
      v28 = swift_allocObject();
      v28[2] = v22;
      v28[3] = v23;
      v28[4] = a1;

      sub_1D17C7E40(0, 0, v6, &unk_1D1E96538, v28);
    }
  }

  return result;
}

uint64_t sub_1D1AA6DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA6E88, v6, 0);
}

uint64_t sub_1D1AA6E88()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_1D1AAE478;
  v2 = *(v0 + 24);

  return sub_1D1B10594(v2);
}

uint64_t sub_1D1AA6F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a1;
  v4[3] = a4;
  if (qword_1EC642358 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC64ABE8;
  v4[4] = qword_1EC64ABE8;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA6FC0, v5, 0);
}

uint64_t sub_1D1AA6FC0()
{
  v1 = sub_1D1AA6214();
  *(v0 + 40) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 48) = v2;
    *v2 = v0;
    v2[1] = sub_1D1AA70A0;

    return HomeState.Stream.fetchAllCharacteristics(in:)(0);
  }

  else
  {
    **(v0 + 16) = 0;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1D1AA70A0(uint64_t a1)
{
  v2 = *(*v1 + 32);
  *(*v1 + 56) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1AA71D4, v2, 0);
}

uint64_t sub_1D1AA71F4()
{
  result = sub_1D1AA6214();
  if (result)
  {
    sub_1D1A81190();
  }

  return result;
}

uint64_t sub_1D1AA7244(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC6442C0, &qword_1D1E741A0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = sub_1D1E67E7C();
  v10 = *(*(v9 - 8) + 56);
  v10(v8, 1, 1, v9);
  sub_1D1741C08(v8, v6, &unk_1EC6442C0, &qword_1D1E741A0);
  v11 = qword_1EC642358;
  swift_retain_n();
  if (v11 != -1)
  {
    swift_once();
  }

  v12 = qword_1EC64ABE8;
  v13 = sub_1D1AAE21C(&qword_1EC649DA0, type metadata accessor for HomeDataActor, &protocol conformance descriptor for HomeDataActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = sub_1D1AADBBC;
  v14[5] = v1;

  sub_1D17C6EF0(0, 0, v6, &unk_1D1E964E0, v14);

  sub_1D1741A30(v8, &unk_1EC6442C0, &qword_1D1E741A0);
  v10(v8, 1, 1, v9);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v1;
  v15[5] = a1;

  swift_unknownObjectRetain();
  sub_1D17C6EF0(0, 0, v8, &unk_1D1E964F0, v15);
}