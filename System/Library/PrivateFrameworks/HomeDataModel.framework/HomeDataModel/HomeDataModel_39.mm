uint64_t sub_1D1A26014()
{
  v1 = *(*v0 + 168);

  return MEMORY[0x1EEE6DFA0](sub_1D1A26140, v1, 0);
}

uint64_t sub_1D1A26140()
{
  v1 = v0[53];
  v2 = v0[39];
  v3 = v0[34];
  sub_1D1A28C54(v0[33], type metadata accessor for MatterStateSnapshot);
  v1(v2, v3);
  v0[50] = v0[52];
  v4 = v0[49];
  v5 = v0[21];
  v6 = swift_task_alloc();
  v0[51] = v6;
  *v6 = v0;
  v6[1] = sub_1D1A25464;
  v7 = v0[40];
  v8 = v0[41];

  return MEMORY[0x1EEE6D8A8](v7, v5, v4, v8);
}

uint64_t sub_1D1A2623C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v8 + 177) = v14;
  *(v8 + 176) = a8;
  *(v8 + 48) = a7;
  *(v8 + 56) = v13;
  *(v8 + 32) = a5;
  *(v8 + 40) = a6;
  *(v8 + 16) = a1;
  *(v8 + 24) = a4;
  *(v8 + 64) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491B0, &qword_1D1E92B08);
  *(v8 + 72) = swift_task_alloc();
  v9 = type metadata accessor for MatterStateSnapshot(0);
  *(v8 + 80) = v9;
  *(v8 + 88) = *(v9 - 8);
  *(v8 + 96) = swift_task_alloc();
  *(v8 + 104) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  *(v8 + 112) = swift_task_alloc();
  *(v8 + 120) = swift_task_alloc();
  *(v8 + 128) = swift_task_alloc();
  *(v8 + 136) = swift_task_alloc();
  v10 = sub_1D1E66A7C();
  *(v8 + 144) = v10;
  *(v8 + 152) = *(v10 - 8);
  *(v8 + 160) = swift_task_alloc();
  *(v8 + 168) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A26424, 0, 0);
}

uint64_t sub_1D1A26424()
{
  v81 = v0;
  v1 = *(v0 + 32);
  v2 = [*(v0 + 24) uniqueIdentifier];
  sub_1D1E66A5C();

  if (*(v1 + 16) && (v3 = sub_1D1742188(), (v4 & 1) != 0))
  {
    sub_1D1A28BEC(*(*(v0 + 32) + 56) + *(*(v0 + 88) + 72) * v3, *(v0 + 136), type metadata accessor for MatterStateSnapshot);
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = *(v0 + 128);
  v7 = *(v0 + 136);
  v66 = *(v0 + 160);
  v67 = *(v0 + 104);
  v64 = *(v0 + 88);
  v70 = *(v0 + 120);
  v72 = *(v0 + 72);
  v74 = *(v0 + 64);
  v8 = *(v0 + 48);
  v9 = *(v0 + 56);
  v10 = *(v0 + 40);
  v11 = *(v0 + 24);
  v68 = *(v0 + 80);
  v69 = *(v64 + 56);
  v12 = *(v0 + 176);
  v13 = *(v0 + 177);
  v69(v7, v5, 1);
  v76 = sub_1D1A2725C(v11, v10, v8, v12);
  v65 = v6;
  sub_1D1741C08(v7, v6, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D186145C(v9, v13);
  v14 = sub_1D1A2B978(v6, v10, v8, v12, v11, v9, v13);
  v15 = [v11 matterControllerID];
  v16 = sub_1D1E6781C();
  v18 = v17;

  v19 = [v11 uniqueIdentifier];
  sub_1D1E66A5C();

  v78 = v9;
  LOBYTE(v79) = v13;
  sub_1D1A28CB8(v16, v18, v66, v14, &v78, v67);
  sub_1D1741A30(v65, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1A27A08(v76, v67);
  sub_1D1A28BEC(v67, v70, type metadata accessor for MatterStateSnapshot);
  (v69)(v70, 0, 1, v68);
  v20 = *(v74 + 48);
  sub_1D1741C08(v7, v72, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1741C08(v70, v72 + v20, &unk_1EC64F390, &qword_1D1E92B10);
  v21 = *(v64 + 48);
  if (v21(v72, 1, v68) == 1)
  {
    v22 = *(v0 + 80);
    sub_1D1741A30(*(v0 + 120), &unk_1EC64F390, &qword_1D1E92B10);
    if (v21(v72 + v20, 1, v22) == 1)
    {
      sub_1D1741A30(*(v0 + 72), &unk_1EC64F390, &qword_1D1E92B10);
      v23 = 0;
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  v24 = *(v0 + 80);
  sub_1D1741C08(*(v0 + 72), *(v0 + 112), &unk_1EC64F390, &qword_1D1E92B10);
  v25 = v21(v72 + v20, 1, v24);
  v26 = *(v0 + 112);
  v27 = *(v0 + 120);
  if (v25 == 1)
  {
    sub_1D1741A30(*(v0 + 120), &unk_1EC64F390, &qword_1D1E92B10);
    sub_1D1A28C54(v26, type metadata accessor for MatterStateSnapshot);
LABEL_10:
    sub_1D1741A30(*(v0 + 72), &qword_1EC6491B0, &qword_1D1E92B08);
    v23 = 1;
    goto LABEL_12;
  }

  v28 = *(v0 + 96);
  v29 = *(v0 + 72);
  sub_1D1A28448(v72 + v20, v28);
  v30 = _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0(v26, v28);
  sub_1D1A28C54(v28, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v27, &unk_1EC64F390, &qword_1D1E92B10);
  sub_1D1A28C54(v26, type metadata accessor for MatterStateSnapshot);
  sub_1D1741A30(v29, &unk_1EC64F390, &qword_1D1E92B10);
  v23 = !v30;
LABEL_12:
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v32 = *(v0 + 40);
  v31 = *(v0 + 48);
  v33 = *(v0 + 24);
  v34 = *(v0 + 176);
  v35 = sub_1D1E6709C();
  __swift_project_value_buffer(v35, qword_1EE07A0B0);
  v36 = v33;
  sub_1D1A28388(v32, v31, v34);
  v37 = sub_1D1E6707C();
  v38 = sub_1D1E6835C();

  sub_1D1A283E8(v32, v31, v34);
  v39 = os_log_type_enabled(v37, v38);
  v40 = *(v0 + 136);
  if (v39)
  {
    v75 = *(v0 + 136);
    v42 = *(v0 + 40);
    v41 = *(v0 + 48);
    v43 = *(v0 + 24);
    v71 = v23;
    v44 = *(v0 + 176);
    v45 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v77 = v73;
    *v45 = 136446722;
    v46 = [v43 matterControllerID];
    v47 = sub_1D1E6781C();
    v49 = v48;

    v50 = sub_1D1B1312C(v47, v49, &v77);

    *(v45 + 4) = v50;
    *(v45 + 12) = 2082;
    v78 = v42;
    v79 = v41;
    v80 = v44;
    sub_1D1A28388(v42, v41, v44);
    updated = MatterStateSnapshot.UpdateType.description.getter();
    v53 = v52;
    sub_1D1A283E8(v78, v79, v80);
    v54 = sub_1D1B1312C(updated, v53, &v77);

    *(v45 + 14) = v54;
    *(v45 + 22) = 1026;
    *(v45 + 24) = v71;
    _os_log_impl(&dword_1D16EC000, v37, v38, "new matter snapshot for '%{public}s', updateType:%{public}s, didChange:%{BOOL,public}d", v45, 0x1Cu);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v73, -1, -1);
    MEMORY[0x1D3893640](v45, -1, -1);

    v55 = v75;
  }

  else
  {

    v55 = v40;
  }

  sub_1D1741A30(v55, &unk_1EC64F390, &qword_1D1E92B10);
  v56 = *(v0 + 168);
  v57 = *(v0 + 144);
  v58 = *(v0 + 152);
  v59 = *(v0 + 104);
  v60 = *(v0 + 16);
  v61 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860) + 48);
  (*(v58 + 32))(v60, v56, v57);
  sub_1D1A28448(v59, v60 + v61);

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_1D1A26B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v6[8] = swift_task_alloc();
  v8 = sub_1D1E66A7C();
  v6[9] = v8;
  v6[10] = *(v8 - 8);
  v6[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A26C94, a4, 0);
}

uint64_t sub_1D1A26C94()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[7];
  (*(v0[10] + 16))(v1, v0[6], v0[9]);
  sub_1D1A28BEC(v3, v2, type metadata accessor for MatterStateSnapshot);
  v4 = type metadata accessor for MatterStateSnapshot(0);
  (*(*(v4 - 8) + 56))(v2, 0, 1, v4);
  swift_beginAccess();
  sub_1D1B0E5E8(v2, v1);
  swift_endAccess();
  v5 = swift_task_alloc();
  v0[12] = v5;
  *v5 = v0;
  v5[1] = sub_1D1A26DE4;
  v6 = v0[7];

  return sub_1D1A22FC4(v6);
}

uint64_t sub_1D1A26DE4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D1A26F10@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_1D1E6884C();

  v12 = 3829371;
  v13 = 0xE300000000000000;
  v4 = type metadata accessor for StaticMatterDevice(0);
  MEMORY[0x1D3890F70](*(a1 + v4[6]), *(a1 + v4[6] + 8));
  MEMORY[0x1D3890F70](0x3A65707974202CLL, 0xE700000000000000);
  static MatterDeviceType.primaryDeviceType(for:)(*(a1 + v4[8]), &v11);
  if (v11 == 28)
  {
    v5 = 0xE300000000000000;
    v6 = 7104878;
  }

  else
  {
    v6 = sub_1D1E6789C();
    v5 = v7;
  }

  MEMORY[0x1D3890F70](v6, v5);

  MEMORY[0x1D3890F70](0xD000000000000011, 0x80000001D1EC3610);
  v11 = *(*(a1 + v4[14]) + 16);
  v8 = sub_1D1E68FAC();
  MEMORY[0x1D3890F70](v8);

  result = MEMORY[0x1D3890F70](125, 0xE100000000000000);
  v10 = v13;
  *a2 = v12;
  a2[1] = v10;
  return result;
}

uint64_t sub_1D1A27088@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v4 = sub_1D1E66A7C();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - v8;
  v10 = type metadata accessor for MatterStateSnapshot(0);
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = sub_1D1A2B978(v9, 0, 0, 4, a1, 0, 255);
  v12 = [a1 matterControllerID];
  v13 = sub_1D1E6781C();
  v15 = v14;

  v16 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v18 = 0;
  v19 = -1;
  sub_1D1A28CB8(v13, v15, v6, v11, &v18, a2);
  return sub_1D1741A30(v9, &unk_1EC64F390, &qword_1D1E92B10);
}

uint64_t sub_1D1A2725C(void *a1, void *a2, void *a3, uint64_t a4)
{
  v4 = a4;
  v8 = sub_1D1E66A7C();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v52 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D1E66FDC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v46 - v15;
  if (qword_1EE07A050 != -1)
  {
    swift_once();
  }

  v17 = sub_1D1E6701C();
  __swift_project_value_buffer(v17, qword_1EE07A058);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  v18 = a1;
  sub_1D1A28388(a2, a3, v4);
  v19 = sub_1D1E66FFC();
  v20 = sub_1D1E683EC();

  sub_1D1A283E8(a2, a3, v4);
  if (sub_1D1E6855C())
  {
    v21 = swift_slowAlloc();
    v49 = v19;
    v48 = v20;
    v22 = v21;
    v50 = swift_slowAlloc();
    v58 = v50;
    *v22 = 136315650;
    v23 = [v18 name];
    v24 = sub_1D1E6781C();
    v51 = v10;
    v25 = v24;
    v47 = v4;
    v26 = v14;
    v27 = v11;
    v29 = v28;

    v30 = sub_1D1B1312C(v25, v29, &v58);
    v11 = v27;
    v14 = v26;

    *(v22 + 4) = v30;
    *(v22 + 12) = 2082;
    v31 = [v18 uniqueIdentifier];
    v32 = v52;
    sub_1D1E66A5C();

    sub_1D1A28BA4(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v33 = v54;
    v34 = sub_1D1E68FAC();
    v36 = v35;
    (*(v53 + 8))(v32, v33);
    v37 = sub_1D1B1312C(v34, v36, &v58);

    *(v22 + 14) = v37;
    *(v22 + 22) = 2082;
    v10 = v51;
    v55 = a2;
    v56 = a3;
    v57 = v47;
    sub_1D1A28388(a2, a3, v47);
    updated = MatterStateSnapshot.UpdateType.description.getter();
    v40 = v39;
    sub_1D1A283E8(v55, v56, v57);
    v41 = sub_1D1B1312C(updated, v40, &v58);

    *(v22 + 24) = v41;
    v42 = sub_1D1E66FBC();
    v19 = v49;
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v49, v48, v42, "MatterSnapshot", "home: %s (%{public}s) updating %{public}s", v22, 0x20u);
    v43 = v50;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v43, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  (*(v11 + 16))(v14, v16, v10);
  sub_1D1E6705C();
  swift_allocObject();
  v44 = sub_1D1E6704C();
  (*(v11 + 8))(v16, v10);
  return v44;
}

uint64_t sub_1D1A276F8(uint64_t a1)
{
  v30 = a1;
  v1 = type metadata accessor for StaticMatterDevice(0);
  v29 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v28 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EE07B280 != -1)
  {
    goto LABEL_21;
  }

  while (byte_1EE07B288 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491E8, &qword_1D1E92C28);
    v4 = v30;
    v5 = sub_1D1E68BAC();
    v6 = v5;
    v7 = 0;
    v10 = *(v4 + 64);
    v9 = v4 + 64;
    v8 = v10;
    v11 = 1 << *(v9 - 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & v8;
    v14 = (v11 + 63) >> 6;
    v15 = v5 + 64;
    if ((v12 & v8) != 0)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = v16 | (v7 << 6);
        v20 = *(*(v30 + 48) + 8 * v19);
        sub_1D1A28BEC(*(v30 + 56) + *(v29 + 72) * v19, v3, type metadata accessor for StaticMatterDevice);
        sub_1D1A26F10(v3, v31);
        sub_1D1A28C54(v3, type metadata accessor for StaticMatterDevice);
        *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
        *(v6[6] + 8 * v19) = v20;
        v21 = (v6[7] + 16 * v19);
        v22 = v31[1];
        *v21 = v31[0];
        v21[1] = v22;
        v23 = v6[2];
        v24 = __OFADD__(v23, 1);
        v25 = v23 + 1;
        if (v24)
        {
          break;
        }

        v6[2] = v25;
        if (!v13)
        {
          goto LABEL_7;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v7;
      while (1)
      {
        v7 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v7 >= v14)
        {
          v27 = sub_1D1E6760C();

          return v27;
        }

        v18 = *(v9 + 8 * v7);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_21:
    swift_once();
  }

  return sub_1D1E6762C();
}

uint64_t sub_1D1A27A08(uint64_t a1, unint64_t a2)
{
  v83 = a1;
  v3 = sub_1D1E6702C();
  v79 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v78 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = sub_1D1E66FDC();
  v5 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v7 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticMatterDevice(0);
  v82 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v84 = &v66 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for MatterStateSnapshot(0);
  v10 = MEMORY[0x1EEE9AC00](v81);
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v66 - v16;
  if (qword_1EE07A0A8 != -1)
  {
    goto LABEL_32;
  }

  while (1)
  {
    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EE07A0B0);
    sub_1D1A28BEC(a2, v17, type metadata accessor for MatterStateSnapshot);
    sub_1D1A28BEC(a2, v15, type metadata accessor for MatterStateSnapshot);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6835C();
    if (!os_log_type_enabled(v19, v20))
    {

      sub_1D1A28C54(v17, type metadata accessor for MatterStateSnapshot);
      sub_1D1A28C54(v15, type metadata accessor for MatterStateSnapshot);
      goto LABEL_22;
    }

    v71 = v20;
    v77 = v3;
    v73 = v19;
    v74 = a2;
    v75 = v5;
    v21 = swift_slowAlloc();
    v70 = swift_slowAlloc();
    v86[0] = v70;
    *v21 = 136315394;
    v22 = v81;
    a2 = *(v81 + 20);
    sub_1D1E66A7C();
    sub_1D1A28BA4(&qword_1EE07B250, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v23 = sub_1D1E68FAC();
    v25 = v24;
    sub_1D1A28C54(v17, type metadata accessor for MatterStateSnapshot);
    v26 = sub_1D1B1312C(v23, v25, v86);

    *(v21 + 4) = v26;
    v72 = v21;
    *(v21 + 12) = 2082;
    v17 = *&v15[*(v22 + 24)];
    if (qword_1EE07B280 != -1)
    {
      swift_once();
    }

    v3 = v77;
    if (byte_1EE07B288 != 1)
    {
      break;
    }

    v67 = v15;
    v68 = v12;
    v69 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491E8, &qword_1D1E92C28);
    v27 = sub_1D1E68BAC();
    v28 = v27;
    v7 = 0;
    v5 = v17 + 64;
    v29 = 1 << v17[32];
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v3 = v30 & *(v17 + 8);
    v15 = ((v29 + 63) >> 6);
    v76 = v27 + 64;
    v31 = v84;
    if (v3)
    {
      while (1)
      {
        v32 = __clz(__rbit64(v3));
        v3 &= v3 - 1;
LABEL_15:
        a2 = v32 | (v7 << 6);
        v12 = *(*(v17 + 6) + 8 * a2);
        sub_1D1A28BEC(*(v17 + 7) + *(v82 + 72) * a2, v31, type metadata accessor for StaticMatterDevice);
        sub_1D1A26F10(v31, v85);
        sub_1D1A28C54(v31, type metadata accessor for StaticMatterDevice);
        *(v76 + ((a2 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << a2;
        *(v28[6] + 8 * a2) = v12;
        v35 = (v28[7] + 16 * a2);
        v36 = v85[1];
        *v35 = v85[0];
        v35[1] = v36;
        v37 = v28[2];
        v38 = __OFADD__(v37, 1);
        v39 = v37 + 1;
        if (v38)
        {
          break;
        }

        v28[2] = v39;
        v31 = v84;
        if (!v3)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
LABEL_10:
      v33 = v7;
      v3 = v77;
      while (1)
      {
        v7 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v7 >= v15)
        {
          v40 = sub_1D1E6760C();
          v42 = v43;

          v5 = v75;
          v12 = v68;
          v7 = v69;
          v15 = v67;
          goto LABEL_21;
        }

        v34 = *&v5[8 * v7];
        ++v33;
        if (v34)
        {
          v32 = __clz(__rbit64(v34));
          v3 = (v34 - 1) & v34;
          goto LABEL_15;
        }
      }

      __break(1u);
    }

    __break(1u);
LABEL_32:
    swift_once();
  }

  v40 = sub_1D1E6762C();
  v42 = v41;
  v5 = v75;
LABEL_21:
  v44 = v73;
  sub_1D1A28C54(v15, type metadata accessor for MatterStateSnapshot);
  v45 = sub_1D1B1312C(v40, v42, v86);

  v46 = v72;
  *(v72 + 14) = v45;
  _os_log_impl(&dword_1D16EC000, v44, v71, "MatterSnapshotModerator: produced snapshot for home %s with devices: %{public}s", v46, 0x16u);
  v47 = v70;
  swift_arrayDestroy();
  MEMORY[0x1D3893640](v47, -1, -1);
  MEMORY[0x1D3893640](v46, -1, -1);

  a2 = v74;
LABEL_22:
  if (qword_1EE07A050 != -1)
  {
    swift_once();
  }

  v48 = sub_1D1E6701C();
  __swift_project_value_buffer(v48, qword_1EE07A058);
  sub_1D1A28BEC(a2, v12, type metadata accessor for MatterStateSnapshot);
  v49 = sub_1D1E66FFC();
  sub_1D1E6703C();
  v50 = sub_1D1E683DC();
  if (sub_1D1E6855C())
  {
    v51 = v7;

    v52 = v78;
    sub_1D1E6706C();

    v53 = v79;
    if ((*(v79 + 88))(v52, v3) == *MEMORY[0x1E69E93E8])
    {
      v54 = 0;
      v55 = 0;
      v56 = "[Error] Interval already ended";
    }

    else
    {
      (*(v53 + 8))(v52, v3);
      v56 = "produced devices %{public}s";
      v55 = 2;
      v54 = 1;
    }

    v58 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v85[0] = v59;
    *v58 = v55;
    *(v58 + 1) = v54;
    *(v58 + 2) = 2082;
    v60 = v12;
    v61 = sub_1D1A276F8(*&v12[*(v81 + 24)]);
    v63 = v62;
    sub_1D1A28C54(v60, type metadata accessor for MatterStateSnapshot);
    v64 = sub_1D1B1312C(v61, v63, v85);

    *(v58 + 4) = v64;
    v65 = sub_1D1E66FBC();
    _os_signpost_emit_with_name_impl(&dword_1D16EC000, v49, v50, v65, "MatterSnapshot", v56, v58, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v59);
    MEMORY[0x1D3893640](v59, -1, -1);
    MEMORY[0x1D3893640](v58, -1, -1);

    return (*(v5 + 1))(v51, v80);
  }

  else
  {

    (*(v5 + 1))(v7, v80);
    return sub_1D1A28C54(v12, type metadata accessor for MatterStateSnapshot);
  }
}

id sub_1D1A28388(id result, void *a2, unsigned __int8 a3)
{
  if (a3 - 1 < 2)
  {

    result = a2;

    return result;
  }

  if (!a3)
  {

    return result;
  }

  return result;
}

void sub_1D1A283E8(void *a1, void *a2, unsigned __int8 a3)
{
  if (a3 - 1 < 2)
  {

    a1 = a2;

LABEL_4:

    return;
  }

  if (!a3)
  {

    goto LABEL_4;
  }
}

uint64_t sub_1D1A28448(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterStateSnapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for MatterSnapshotModerator(uint64_t a1)
{
  result = qword_1EE07A5B8;
  if (!qword_1EE07A5B8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1A284F8(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = *(v2 + 40);
  v12 = *(v2 + 56);
  v9 = *(v2 + 48);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1D17C4CF0;

  return sub_1D1A24CBC(a1, a2, v5, v6, v7, v8, v9, v12);
}

void sub_1D1A28600(uint64_t a1)
{
  sub_1D1A2875C(319, &qword_1EE079DF8, MEMORY[0x1E69E8698]);
  if (v1 <= 0x3F)
  {
    sub_1D1A2875C(319, &qword_1EE079E08, MEMORY[0x1E69E8660]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_1D1A2875C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v6 = type metadata accessor for MatterStateSnapshot(255);
    v7 = a3(a1, v6);
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

unint64_t sub_1D1A287BC()
{
  result = qword_1EC6491C8;
  if (!qword_1EC6491C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6491A0, &unk_1D1E92AF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6491C8);
  }

  return result;
}

uint64_t sub_1D1A28820(uint64_t a1)
{
  v13 = *(v1 + 16);
  v11 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  v8 = *(v1 + 64);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D17C4BFC;

  return sub_1D1A2623C(a1, v13, v11, v4, v5, v6, v7, v8);
}

uint64_t sub_1D1A28928(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D17C4BFC;

  return sub_1D1B2258C(a1, v4);
}

uint64_t sub_1D1A289E0(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1D1E66A7C() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for MatterStateSnapshot(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D17C4CF0;

  return sub_1D1A26B94(a1, v10, v11, v12, v1 + v6, v1 + v9);
}

uint64_t sub_1D1A28B40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MatterStateSnapshot(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A28BA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1A28BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A28C54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A28CB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v125 = &v92 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v127 = &v92 - v16;
  v112 = type metadata accessor for EndpointPath(0);
  v107 = *(v112 - 8);
  v17 = MEMORY[0x1EEE9AC00](v112);
  v123 = &v92 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v111 = &v92 - v19;
  v110 = type metadata accessor for MatterTilePath(0);
  MEMORY[0x1EEE9AC00](v110);
  v124 = &v92 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
  MEMORY[0x1EEE9AC00](v109);
  v122 = (&v92 - v21);
  v103 = type metadata accessor for StaticMatterDevice(0);
  v102 = *(v103 - 8);
  MEMORY[0x1EEE9AC00](v103);
  v23 = &v92 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = *a5;
  v95 = *(a5 + 8);
  *a6 = a1;
  a6[1] = a2;
  v24 = type metadata accessor for MatterStateSnapshot(0);
  v25 = *(v13 + 16);
  v26 = a6 + *(v24 + 20);
  v97 = a3;
  v117 = v25;
  v118 = v13 + 16;
  v25(v26, a3, v12);
  v94 = v24;
  v27 = *(v24 + 24);
  v98 = a6;
  *(a6 + v27) = a4;

  v28 = sub_1D18D6954(MEMORY[0x1E69E7CC0]);
  v29 = a4 + 64;
  v30 = 1 << *(a4 + 32);
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  else
  {
    v31 = -1;
  }

  v32 = v31 & *(a4 + 64);
  v33 = (v30 + 63) >> 6;
  v106 = v13;
  v126 = (v13 + 8);
  v104 = a4;
  v34 = v28;

  v35 = 0;
  v108 = xmmword_1D1E739C0;
  v100 = v29;
  v99 = v33;
  v113 = v12;
  v101 = v23;
LABEL_6:
  if (v32)
  {
    v36 = v35;
LABEL_11:
    v105 = (v32 - 1) & v32;
    sub_1D1A30E90(*(v104 + 56) + *(v102 + 72) * (__clz(__rbit64(v32)) | (v36 << 6)), v23, type metadata accessor for StaticMatterDevice);
    v37 = *&v23[*(v103 + 56)];
    v40 = *(v37 + 64);
    v39 = v37 + 64;
    v38 = v40;
    v41 = 1 << *(*&v23[*(v103 + 56)] + 32);
    if (v41 < 64)
    {
      v42 = ~(-1 << v41);
    }

    else
    {
      v42 = -1;
    }

    v43 = v42 & v38;
    v44 = (v41 + 63) >> 6;
    v116 = *&v23[*(v103 + 56)];
    swift_bridgeObjectRetain_n();
    v45 = 0;
    v114 = v44;
    for (i = v39; ; v39 = i)
    {
      if (!v43)
      {
        while (1)
        {
          v46 = v45 + 1;
          if (__OFADD__(v45, 1))
          {
            break;
          }

          if (v46 >= v44)
          {

            v23 = v101;
            sub_1D1A30EF8(v101, type metadata accessor for StaticMatterDevice);

            v35 = v36;
            v29 = v100;
            v33 = v99;
            v32 = v105;
            goto LABEL_6;
          }

          v43 = *(v39 + 8 * v46);
          ++v45;
          if (v43)
          {
            v121 = v34;
            v45 = v46;
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_37;
      }

      v121 = v34;
LABEL_23:
      v47 = __clz(__rbit64(v43)) | (v45 << 6);
      v48 = *(v116 + 56);
      v49 = *(*(v116 + 48) + 2 * v47);
      v50 = (type metadata accessor for StaticEndpoint(0) - 8);
      v51 = v122;
      v52 = v122 + *(v109 + 48);
      sub_1D1A30E90(v48 + *(*v50 + 72) * v47, v52, type metadata accessor for StaticEndpoint);
      *v51 = v49;
      v119 = v50[7];
      v120 = v52;
      v53 = v111;
      sub_1D1A30E90(v52 + v119, v111, type metadata accessor for EndpointPath);
      v54 = v124;
      v55 = v117;
      v117(v124, v53, v12);
      v56 = *(v53 + *(v112 + 20));
      v57 = *(v53 + *(v112 + 24));
      sub_1D1A30EF8(v53, type metadata accessor for EndpointPath);
      v58 = v54 + *(v110 + 24);
      *(v54 + *(v110 + 20)) = v56;
      *v58 = v57;
      *(v58 + 2) = 0;
      v55(v125, v54, v12);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434A8, &qword_1D1E8EC00);
      v59 = swift_allocObject();
      *(v59 + 16) = v108;
      v128 = v56;
      *(v59 + 32) = sub_1D1E68FAC();
      *(v59 + 40) = v60;
      LOWORD(v128) = v57;
      v61 = sub_1D1E68FAC();
      v64 = *(v59 + 16);
      v63 = *(v59 + 24);
      if (v64 >= v63 >> 1)
      {
        v93 = v61;
        v85 = v62;
        v86 = sub_1D177CF00((v63 > 1), v64 + 1, 1, v59);
        v62 = v85;
        v59 = v86;
        v61 = v93;
      }

      *(v59 + 16) = v64 + 1;
      v65 = v59 + 16 * v64;
      *(v65 + 32) = v61;
      *(v65 + 40) = v62;
      v66 = objc_opt_self();
      v67 = v125;
      v68 = sub_1D1E66A2C();
      v69 = sub_1D1E67BFC();

      v70 = [v66 hmf:v68 UUIDWithNamespace:0 data:v69 salts:?];

      sub_1D1E66A5C();
      v71 = *v126;
      v12 = v113;
      (*v126)(v67, v113);
      sub_1D1A30EF8(v124, type metadata accessor for MatterTilePath);
      sub_1D1A30E90(v120 + v119, v123, type metadata accessor for EndpointPath);
      v72 = v121;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v128 = v72;
      v74 = sub_1D1742188();
      v76 = v72[2];
      v77 = (v75 & 1) == 0;
      v78 = __OFADD__(v76, v77);
      v79 = v76 + v77;
      if (v78)
      {
        goto LABEL_38;
      }

      v80 = v75;
      if (v72[3] < v79)
      {
        break;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_30;
      }

      v87 = v74;
      sub_1D173B260();
      v74 = v87;
      v34 = v128;
      if (v80)
      {
LABEL_15:
        sub_1D1A32128(v123, v34[7] + *(v107 + 72) * v74, type metadata accessor for EndpointPath);
        goto LABEL_16;
      }

LABEL_31:
      v34[(v74 >> 6) + 8] |= 1 << v74;
      v82 = v74;
      v117((v34[6] + *(v106 + 72) * v74), v127, v12);
      sub_1D1A320C0(v123, v34[7] + *(v107 + 72) * v82, type metadata accessor for EndpointPath);
      v83 = v34[2];
      v78 = __OFADD__(v83, 1);
      v84 = v83 + 1;
      if (v78)
      {
        goto LABEL_39;
      }

      v34[2] = v84;
LABEL_16:
      v43 &= v43 - 1;
      v71(v127, v12);
      sub_1D1741A30(v122, &qword_1EC6448D0, &qword_1D1E76600);
      v44 = v114;
    }

    sub_1D172C524(v79, isUniquelyReferenced_nonNull_native);
    v74 = sub_1D1742188();
    if ((v80 & 1) != (v81 & 1))
    {
      goto LABEL_40;
    }

LABEL_30:
    v34 = v128;
    if (v80)
    {
      goto LABEL_15;
    }

    goto LABEL_31;
  }

  while (1)
  {
    v36 = v35 + 1;
    if (__OFADD__(v35, 1))
    {
      break;
    }

    if (v36 >= v33)
    {
      (*v126)(v97, v12);

      v89 = v94;
      v90 = v98;
      *(v98 + *(v94 + 28)) = v34;
      v91 = v90 + *(v89 + 32);
      *v91 = v96;
      v91[8] = v95;
      return result;
    }

    v32 = *(v29 + 8 * v36);
    ++v35;
    if (v32)
    {
      goto LABEL_11;
    }
  }

LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t MatterStateSnapshot.controllerID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MatterStateSnapshot.homeID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for MatterStateSnapshot(0) + 20);
  v4 = sub_1D1E66A7C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MatterStateSnapshot.staticDevices.getter()
{
  type metadata accessor for MatterStateSnapshot(0);
}

uint64_t MatterStateSnapshot.endpointPathsDictionary.getter()
{
  type metadata accessor for MatterStateSnapshot(0);
}

uint64_t MatterStateSnapshot.endpointPathsDictionary.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for MatterStateSnapshot(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t MatterStateSnapshot.filter.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MatterStateSnapshot(0) + 32);
  v4 = *v3;
  *a1 = *v3;
  v5 = *(v3 + 8);
  *(a1 + 8) = v5;

  return sub_1D186145C(v4, v5);
}

uint64_t sub_1D1A298AC()
{
  v1 = *v0;
  v2 = 0x6C6C6F72746E6F63;
  v3 = 0x6544636974617473;
  v4 = 0xD000000000000017;
  if (v1 != 3)
  {
    v4 = 0x7265746C6966;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4449656D6F68;
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

uint64_t sub_1D1A29958@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1A31D14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1A29980(uint64_t a1)
{
  v2 = sub_1D1A2FFBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A299BC(uint64_t a1)
{
  v2 = sub_1D1A2FFBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterStateSnapshot.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6491F0, &qword_1D1E92C40);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A2FFBC();
  sub_1D1E6930C();
  LOBYTE(v13) = 0;
  sub_1D1E68ECC();
  if (!v2)
  {
    v9 = type metadata accessor for MatterStateSnapshot(0);
    LOBYTE(v13) = 1;
    sub_1D1E66A7C();
    sub_1D1A3124C(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D1E68F1C();
    v13 = *(v3 + v9[6]);
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649200, &qword_1D1E92C48);
    sub_1D1A30010();
    sub_1D1E68F1C();
    v13 = *(v3 + v9[7]);
    v15 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649218, &qword_1D1E92C50);
    sub_1D1A300CC();
    sub_1D1E68F1C();
    v10 = v3 + v9[8];
    v11 = *(v10 + 8);
    v13 = *v10;
    v14 = v11;
    v15 = 4;
    sub_1D186145C(v13, v11);
    sub_1D1A301B8();
    sub_1D1E68E5C();
    sub_1D1861470(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MatterStateSnapshot.hash(into:)(__int128 *a1)
{
  sub_1D1E678EC();
  v3 = type metadata accessor for MatterStateSnapshot(0);
  sub_1D1E66A7C();
  sub_1D1A3124C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  sub_1D185A4EC(a1, *(v1 + v3[6]));
  sub_1D185893C(a1, *(v1 + v3[7]));
  v4 = v1 + v3[8];
  v5 = *(v4 + 8);
  if (v5 == 255)
  {
    return sub_1D1E6922C();
  }

  v7 = *v4;
  sub_1D1E6922C();
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      MEMORY[0x1D3892850](2);

      sub_1D176DB8C(a1, v7);
      v8 = v7;
      v9 = 2;
    }

    else
    {
      MEMORY[0x1D3892850](3);
      v8 = v7;
      v9 = 3;
    }
  }

  else if (v5)
  {
    MEMORY[0x1D3892850](1);

    sub_1D176DCC0(a1, v7);
    v8 = v7;
    v9 = 1;
  }

  else
  {
    MEMORY[0x1D3892850](0);

    sub_1D176D4E8(a1, v7);
    v8 = v7;
    v9 = 0;
  }

  return sub_1D1861470(v8, v9);
}

uint64_t MatterStateSnapshot.hashValue.getter()
{
  sub_1D1E6920C();
  MatterStateSnapshot.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t MatterStateSnapshot.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = sub_1D1E66A7C();
  v21 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649230, &qword_1D1E92C58);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v6 = &v18 - v5;
  v7 = type metadata accessor for MatterStateSnapshot(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A2FFBC();
  v10 = v23;
  sub_1D1E692FC();
  if (v10)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v11 = v9;
  v12 = v21;
  v13 = v19;
  LOBYTE(v24) = 0;
  *v11 = sub_1D1E68D2C();
  v11[1] = v14;
  v23 = v14;
  LOBYTE(v24) = 1;
  sub_1D1A3124C(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D1E68D7C();
  (*(v12 + 32))(v11 + v7[5], v4, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649200, &qword_1D1E92C48);
  v26 = 2;
  sub_1D1A3020C();
  sub_1D1E68D7C();
  *(v11 + v7[6]) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649218, &qword_1D1E92C50);
  v26 = 3;
  sub_1D1A302C8();
  sub_1D1E68D7C();
  *(v11 + v7[7]) = v24;
  v26 = 4;
  sub_1D1A303B4();
  sub_1D1E68CBC();
  (*(v20 + 8))(v6, v22);
  v15 = v25;
  v16 = v11 + v7[8];
  *v16 = v24;
  v16[8] = v15;
  sub_1D1A30E90(v11, v18, type metadata accessor for MatterStateSnapshot);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1A30EF8(v11, type metadata accessor for MatterStateSnapshot);
}

uint64_t sub_1D1A2A408()
{
  sub_1D1E6920C();
  MatterStateSnapshot.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A2A44C(uint64_t a1)
{
  sub_1D1E6920C();
  MatterStateSnapshot.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t MatterStateSnapshot.UpdateType.description.getter()
{
  v2 = *v0;
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  if (v3 <= 1)
  {
    if (*(v0 + 16))
    {
      sub_1D1E6884C();

      v18 = 0x2873656369766564;
      v13 = sub_1D1E6817C();
      MEMORY[0x1D3890F70](v13);

      MEMORY[0x1D3890F70](0x206E69202CLL, 0xE500000000000000);
      v6 = [v1 name];
    }

    else
    {
      v18 = 0x28656D6F68;
      v6 = [v2 name];
    }

    v14 = v6;
    v15 = sub_1D1E6781C();
    v17 = v16;

    MEMORY[0x1D3890F70](v15, v17);
LABEL_17:

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return v18;
  }

  if (v3 != 2)
  {
    if (v3 != 3)
    {
      return 7105633;
    }

    sub_1D1E6884C();

    v18 = 0xD000000000000019;
    if (v2)
    {
      v4 = 1702195828;
    }

    else
    {
      v4 = 0x65736C6166;
    }

    if (v2)
    {
      v5 = 0xE400000000000000;
    }

    else
    {
      v5 = 0xE500000000000000;
    }

    MEMORY[0x1D3890F70](v4, v5);
    goto LABEL_17;
  }

  sub_1D1E6884C();

  v18 = 0xD000000000000011;
  v7 = sub_1D1E6817C();
  MEMORY[0x1D3890F70](v7);

  MEMORY[0x1D3890F70](0x206E69202CLL, 0xE500000000000000);
  v8 = [v1 name];
  v9 = sub_1D1E6781C();
  v11 = v10;

  MEMORY[0x1D3890F70](v9, v11);

  return v18;
}

const char *MatterStateSnapshot.UpdateType.metricsID.getter()
{
  v1 = *(v0 + 16);
  v2 = "MatterStateSnapshot.all";
  if (v1 == 3)
  {
    v2 = "MatterStateSnapshot.snapshotStreamDisabled";
  }

  if (v1 == 2)
  {
    v2 = "MatterStateSnapshot.devicesWithReads";
  }

  v3 = "MatterStateSnapshot.home";
  if (*(v0 + 16))
  {
    v3 = "MatterStateSnapshot.devices";
  }

  if (*(v0 + 16) <= 1u)
  {
    return v3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D1A2A7C8(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  if (v3 <= 1)
  {
    if (!*(v1 + 16))
    {
      v5 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1D1E73FA0;
      *(v6 + 32) = v5;
      v7 = v5;
      return v6;
    }

    goto LABEL_7;
  }

  if (v3 == 2)
  {
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E10, &unk_1D1E76480);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_1D1E73FA0;
    *(v8 + 32) = v2;
    v9 = v2;
    return v8;
  }

  if (v3 == 3)
  {
    return MEMORY[0x1E69E7CC0];
  }

  else
  {
  }
}

uint64_t sub_1D1A2A8B0(int64_t a1, int64_t a2, void *a3, void *a4)
{
  v165 = a4;
  v164 = type metadata accessor for MatterTilePath(0);
  v8 = MEMORY[0x1EEE9AC00](v164);
  v10 = &v147 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v147 - v11;
  v13 = sub_1D1E66A7C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v166 = &v147 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v15);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v147 - v19;
  v21 = *v4;
  if (*(v4 + 8) > 1u)
  {
    if (*(v4 + 8) != 2)
    {
      return 0;
    }

    v39 = *v4;
    ObjectType = swift_getObjectType();
    MatterDevice.primaryDeviceType.getter(a2, &v167);
    v41 = v167;
    if (v167 == 28)
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v42 = sub_1D1E6709C();
      __swift_project_value_buffer(v42, qword_1EE07A0B0);
      swift_unknownObjectRetain();
      v43 = a3;
      v44 = sub_1D1E6707C();
      v45 = sub_1D1E6831C();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v167 = v47;
        *v46 = 134218242;
        *(v46 + 4) = (*(a2 + 8))(ObjectType, a2);
        swift_unknownObjectRelease();
        *(v46 + 12) = 2080;
        v48 = [v43 name];
        v49 = sub_1D1E6781C();
        v51 = v50;

        v52 = sub_1D1B1312C(v49, v51, &v167);

        *(v46 + 14) = v52;
        _os_log_impl(&dword_1D16EC000, v44, v45, "Skipping device %llu (named %s) because there is a device type filter but device doesn't have a primary type", v46, 0x16u);
        __swift_destroy_boxed_opaque_existential_1(v47);
        v53 = v47;
LABEL_38:
        MEMORY[0x1D3893640](v53, -1, -1);
        MEMORY[0x1D3893640](v46, -1, -1);

        return 0;
      }

      goto LABEL_42;
    }

    if (!sub_1D1719A64(v167, v39))
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v115 = sub_1D1E6709C();
      __swift_project_value_buffer(v115, qword_1EE07A0B0);
      swift_unknownObjectRetain();
      v116 = a3;

      v117 = sub_1D1E6707C();
      v118 = sub_1D1E6831C();

      if (os_log_type_enabled(v117, v118))
      {
        v119 = swift_slowAlloc();
        v120 = swift_slowAlloc();
        v121 = a2;
        v122 = v120;
        v173[0] = v120;
        *v119 = 134218754;
        *(v119 + 4) = (*(v121 + 8))(ObjectType);
        swift_unknownObjectRelease();
        *(v119 + 12) = 2080;
        v123 = [v116 name];
        v124 = sub_1D1E6781C();
        v126 = v125;

        v127 = sub_1D1B1312C(v124, v126, v173);

        *(v119 + 14) = v127;
        *(v119 + 22) = 2080;
        v167 = v39;
        LOBYTE(v168) = 2;
        v128 = MatterStateSnapshot.Filter.description.getter();
        v130 = sub_1D1B1312C(v128, v129, v173);

        *(v119 + 24) = v130;
        *(v119 + 32) = 2080;
        LOBYTE(v167) = v41;
        v131 = sub_1D1E6789C();
        v133 = sub_1D1B1312C(v131, v132, v173);

        *(v119 + 34) = v133;
        _os_log_impl(&dword_1D16EC000, v117, v118, "Skipping device %llu (named %s) because filter is %s which doesn't contain device type %s", v119, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1D3893640](v122, -1, -1);
        MEMORY[0x1D3893640](v119, -1, -1);

        return 0;
      }

LABEL_48:
      swift_unknownObjectRelease();
      return 0;
    }

    return 1;
  }

  if (*(v4 + 8))
  {
    v54 = swift_getObjectType();
    v55 = a2;
    v56 = *(a2 + 8);
    v57 = v55;
    v58 = v56();
    if (!sub_1D17199BC(v58, v21))
    {
      if (qword_1EE07A0A8 != -1)
      {
        swift_once();
      }

      v59 = sub_1D1E6709C();
      __swift_project_value_buffer(v59, qword_1EE07A0B0);
      swift_unknownObjectRetain();
      v60 = a3;

      v44 = sub_1D1E6707C();
      v61 = sub_1D1E6831C();

      if (os_log_type_enabled(v44, v61))
      {
        v46 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v173[0] = v166;
        *v46 = 134218498;
        LODWORD(v165) = v61;
        *(v46 + 4) = (v56)(v54, v57);
        swift_unknownObjectRelease();
        *(v46 + 12) = 2080;
        v62 = [v60 name];
        v63 = sub_1D1E6781C();
        v65 = v64;

        v66 = sub_1D1B1312C(v63, v65, v173);

        *(v46 + 14) = v66;
        *(v46 + 22) = 2080;
        v167 = v21;
        LOBYTE(v168) = 1;
        v67 = MatterStateSnapshot.Filter.description.getter();
        v69 = sub_1D1B1312C(v67, v68, v173);

        *(v46 + 24) = v69;
        _os_log_impl(&dword_1D16EC000, v44, v165, "Skipping device %llu (named %s) because filter is %s", v46, 0x20u);
        v70 = v166;
        swift_arrayDestroy();
        v53 = v70;
        goto LABEL_38;
      }

LABEL_42:

      goto LABEL_48;
    }

    return 1;
  }

  v160 = v18;
  v22 = [v165 uniqueIdentifier];
  sub_1D1E66A5C();

  v23 = swift_getObjectType();
  v24 = *(a2 + 8);
  v161 = v23;
  v162 = v24;
  v163 = a2 + 8;
  v25 = v24(v23, a2);
  v26 = &v12[*(v164 + 24)];
  *&v12[*(v164 + 20)] = v25;
  *v26 = 1;
  v26[2] = 0;
  MatterTilePath.uuid.getter();
  sub_1D1A30EF8(v12, type metadata accessor for MatterTilePath);
  LOBYTE(v22) = sub_1D1719534(v20, v21);
  v158 = *(v14 + 8);
  v159 = v14 + 8;
  v158(v20, v13);
  if (v22)
  {
    if (qword_1EE07A0A8 != -1)
    {
LABEL_56:
      swift_once();
    }

    v27 = sub_1D1E6709C();
    __swift_project_value_buffer(v27, qword_1EE07A0B0);
    swift_unknownObjectRetain();
    v28 = a3;
    v29 = sub_1D1E6707C();
    v30 = sub_1D1E6831C();

    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v167 = v32;
      *v31 = 134218242;
      *(v31 + 4) = v162(v161, a2);
      swift_unknownObjectRelease();
      *(v31 + 12) = 2080;
      v33 = [v28 name];
      v34 = sub_1D1E6781C();
      v36 = v35;

      v37 = sub_1D1B1312C(v34, v36, &v167);

      *(v31 + 14) = v37;
      _os_log_impl(&dword_1D16EC000, v29, v30, "Endpoint ID filter passed for device %llu (named %s) in fast path", v31, 0x16u);
      __swift_destroy_boxed_opaque_existential_1(v32);
      MEMORY[0x1D3893640](v32, -1, -1);
      MEMORY[0x1D3893640](v31, -1, -1);

      return 1;
    }
  }

  else
  {
    v149 = a3;
    v154 = v21;
    v71 = qword_1EC642248;
    swift_unknownObjectRetain();
    if (v71 != -1)
    {
      swift_once();
    }

    v167 = qword_1EC6BE118;
    v168 = unk_1EC6BE120;
    v169 = 0;
    v170 = 0;
    v171 = a1;
    v172 = a2;
    v155 = a2;

    v72 = DescriptorClusterDecoder.endpointIDs.getter();
    v156 = a1;
    swift_unknownObjectRelease();

    v73 = 0;
    a3 = v72 + 56;
    v74 = *(v72 + 7);
    v157 = v72;
    v75 = 1 << v72[32];
    v76 = -1;
    if (v75 < 64)
    {
      v76 = ~(-1 << v75);
    }

    v77 = v76 & v74;
    a2 = (v75 + 63) >> 6;
    v152 = (v14 + 16);
    v151 = xmmword_1D1E739C0;
    v153 = v13;
    do
    {
      if (!v77)
      {
        while (1)
        {
          v78 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            __break(1u);
            goto LABEL_56;
          }

          if (v78 >= a2)
          {
            break;
          }

          v77 = *(a3 + v78);
          ++v73;
          if (v77)
          {
            v73 = v78;
            goto LABEL_28;
          }
        }

        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v100 = sub_1D1E6709C();
        __swift_project_value_buffer(v100, qword_1EE07A0B0);
        swift_unknownObjectRetain();
        v101 = v149;
        v102 = v154;

        v44 = sub_1D1E6707C();
        v103 = sub_1D1E6831C();

        v104 = os_log_type_enabled(v44, v103);
        v105 = v155;
        if (v104)
        {
          v46 = swift_slowAlloc();
          v106 = swift_slowAlloc();
          v173[0] = v106;
          *v46 = 134218498;
          *(v46 + 4) = v162(v161, v105);
          swift_unknownObjectRelease();
          *(v46 + 12) = 2080;
          v107 = [v101 name];
          v108 = sub_1D1E6781C();
          v110 = v109;

          v111 = sub_1D1B1312C(v108, v110, v173);

          *(v46 + 14) = v111;
          *(v46 + 22) = 2080;
          v167 = v102;
          LOBYTE(v168) = 0;
          v112 = MatterStateSnapshot.Filter.description.getter();
          v114 = sub_1D1B1312C(v112, v113, v173);

          *(v46 + 24) = v114;
          _os_log_impl(&dword_1D16EC000, v44, v103, "Skipping device %llu (named %s) because filter is %s", v46, 0x20u);
          swift_arrayDestroy();
          v53 = v106;
          goto LABEL_38;
        }

        goto LABEL_42;
      }

LABEL_28:
      v79 = *(*(v157 + 6) + ((v73 << 7) | (2 * __clz(__rbit64(v77)))));
      v80 = [v165 uniqueIdentifier];
      sub_1D1E66A5C();

      v81 = v162(v161, v155);
      v82 = &v10[*(v164 + 24)];
      *&v10[*(v164 + 20)] = v81;
      *v82 = v79;
      v82[2] = 0;
      (*v152)(v166, v10, v13);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434A8, &qword_1D1E8EC00);
      v83 = swift_allocObject();
      *(v83 + 16) = v151;
      v167 = v81;
      *(v83 + 32) = sub_1D1E68FAC();
      *(v83 + 40) = v84;
      v150 = v79;
      LOWORD(v167) = v79;
      v85 = sub_1D1E68FAC();
      v88 = *(v83 + 16);
      v87 = *(v83 + 24);
      if (v88 >= v87 >> 1)
      {
        v148 = v85;
        v98 = v86;
        v99 = sub_1D177CF00((v87 > 1), v88 + 1, 1, v83);
        v86 = v98;
        v83 = v99;
        v85 = v148;
      }

      v77 &= v77 - 1;
      *(v83 + 16) = v88 + 1;
      v89 = v83 + 16 * v88;
      *(v89 + 32) = v85;
      *(v89 + 40) = v86;
      v90 = objc_opt_self();
      v91 = v166;
      v92 = sub_1D1E66A2C();
      v93 = sub_1D1E67BFC();

      v94 = [v90 hmf:v92 UUIDWithNamespace:0 data:v93 salts:?];

      v95 = v160;
      sub_1D1E66A5C();

      v96 = v91;
      v13 = v153;
      v97 = v158;
      v158(v96, v153);
      sub_1D1A30EF8(v10, type metadata accessor for MatterTilePath);
      LOBYTE(v92) = sub_1D1719534(v95, v154);
      v97(v95, v13);
    }

    while ((v92 & 1) == 0);
    if (qword_1EE07A0A8 != -1)
    {
      swift_once();
    }

    v134 = sub_1D1E6709C();
    __swift_project_value_buffer(v134, qword_1EE07A0B0);
    swift_unknownObjectRetain();
    v135 = v149;
    v136 = sub_1D1E6707C();
    v137 = sub_1D1E6831C();

    v138 = os_log_type_enabled(v136, v137);
    v139 = v155;
    if (v138)
    {
      v140 = swift_slowAlloc();
      v141 = swift_slowAlloc();
      v167 = v141;
      *v140 = 134218498;
      *(v140 + 4) = v162(v161, v139);
      swift_unknownObjectRelease();
      *(v140 + 12) = 2080;
      v142 = [v135 name];
      v143 = sub_1D1E6781C();
      v145 = v144;

      v146 = sub_1D1B1312C(v143, v145, &v167);

      *(v140 + 14) = v146;
      *(v140 + 22) = 512;
      *(v140 + 24) = v150;
      _os_log_impl(&dword_1D16EC000, v136, v137, "Endpoint ID filter passed for device %llu (named %s) for endpoint %hu", v140, 0x1Au);
      __swift_destroy_boxed_opaque_existential_1(v141);
      MEMORY[0x1D3893640](v141, -1, -1);
      MEMORY[0x1D3893640](v140, -1, -1);

      return 1;
    }
  }

  swift_unknownObjectRelease();
  return 1;
}

unint64_t sub_1D1A2B978(uint64_t a1, uint64_t a2, void *a3, int a4, void *a5, uint64_t a6, int a7)
{
  LODWORD(v7) = a7;
  v70 = a6;
  v71 = a5;
  LODWORD(v8) = a4;
  *&v68 = a2;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v66 = &v64 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v64 - v17;
  v19 = type metadata accessor for MatterStateSnapshot(0);
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v64 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v64 - v24;
  v69 = a1;
  sub_1D1A32050(a1, v18);
  v26 = *(v20 + 48);
  if (v26(v18, 1, v19) == 1)
  {
    sub_1D1741A30(v18, &unk_1EC64F390, &qword_1D1E92B10);
  }

  else
  {
    sub_1D1A320C0(v18, v25, type metadata accessor for MatterStateSnapshot);
    if (v8 == 1)
    {
      v72 = v70;
      LOBYTE(v73) = v7;
      LODWORD(v65) = v8;
      v8 = a3;
      v27 = v68;

      v28 = v8;
      v67 = v7;
      v7 = v28;
      v29 = sub_1D1A307D8(v71, v25, v27, v28, &v72);
      a3 = v8;
      LOBYTE(v8) = v65;

      LODWORD(v7) = v67;
      sub_1D1A30EF8(v25, type metadata accessor for MatterStateSnapshot);
      if (v29)
      {
        return v29;
      }
    }

    else
    {
      sub_1D1A30EF8(v25, type metadata accessor for MatterStateSnapshot);
    }
  }

  sub_1D1A32050(v69, v16);
  if (v26(v16, 1, v19) == 1)
  {
    sub_1D1741A30(v16, &unk_1EC64F390, &qword_1D1E92B10);
  }

  else
  {
    sub_1D1A320C0(v16, v23, type metadata accessor for MatterStateSnapshot);
    if (v8 == 2)
    {
      v72 = v70;
      LOBYTE(v73) = v7;
      v30 = a3;
      v31 = v68;

      v32 = v30;
      v29 = sub_1D1A307D8(v71, v23, v31, v32, &v72);

      sub_1D1A30EF8(v23, type metadata accessor for MatterStateSnapshot);
      if (v29)
      {
        return v29;
      }
    }

    else
    {
      sub_1D1A30EF8(v23, type metadata accessor for MatterStateSnapshot);
    }
  }

  v33 = HMHome.matterAccessories.getter();
  v29 = sub_1D18D677C(MEMORY[0x1E69E7CC0]);
  v74 = v29;
  if (v33 >> 62)
  {
    goto LABEL_45;
  }

  for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v67 = v7;
    v36 = 0;
    v7 = (v33 & 0xC000000000000001);
    *&v34 = 134218242;
    v68 = v34;
    while (1)
    {
      if (v7)
      {
        v37 = MEMORY[0x1D3891EF0](v36, v33);
      }

      else
      {
        if (v36 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v37 = *(v33 + 8 * v36 + 32);
      }

      v38 = v37;
      v29 = v36 + 1;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      if (_s13HomeDataModel19MatterStateSnapshotV17allowSnapshotting9accessorySbSo11HMAccessoryC_tFZ_0(v37))
      {
        v39 = sub_1D1E682DC();
        if ((v40 & 1) == 0)
        {
          v41 = v39;
          v42 = sub_1D1E682DC();
          if ((v43 & 1) == 0)
          {
            if (v42)
            {
              v69 = v42;
              v44 = HMAccessory.matterDevice.getter();
              if (!v44)
              {
                if (qword_1EE07A0A8 != -1)
                {
                  swift_once();
                }

                v53 = sub_1D1E6709C();
                __swift_project_value_buffer(v53, qword_1EE07A0B0);
                v54 = v38;
                v55 = sub_1D1E6707C();
                v56 = sub_1D1E6835C();

                if (os_log_type_enabled(v55, v56))
                {
                  v57 = swift_slowAlloc();
                  v58 = swift_slowAlloc();
                  v65 = v55;
                  v59 = v58;
                  *v57 = v68;
                  *(v57 + 4) = v69;
                  *(v57 + 12) = 2112;
                  *(v57 + 14) = v54;
                  *v58 = v54;
                  v60 = v54;
                  v61 = v56;
                  v62 = v65;
                  _os_log_impl(&dword_1D16EC000, v65, v61, "HMAccessory had a matter node ID (%llu) but didn't return a device: (%@)", v57, 0x16u);
                  sub_1D1741A30(v59, &unk_1EC644000, &unk_1D1E75B00);
                  MEMORY[0x1D3893640](v59, -1, -1);
                  MEMORY[0x1D3893640](v57, -1, -1);
                }

                else
                {
                }

                goto LABEL_29;
              }

              v46 = v44;
              v69 = v45;
              if (!*(v74 + 16) || (sub_1D17420B0(v41), (v47 & 1) == 0))
              {
                if (v67 == 0xFF || (v72 = v70, LOBYTE(v73) = v67, , v48 = sub_1D1A2A8B0(v46, v69, v38, v71), , (v48 & 1) != 0))
                {
                  ObjectType = swift_getObjectType();
                  MatterDevice.readAllSupportedAttributes()(ObjectType, v69);
                  v50 = v38;
                  v65 = v50;
                  v51 = swift_unknownObjectRetain();
                  v52 = v66;
                  StaticMatterDevice.init(device:valueSource:accessory:)(v51, v69, &v72, v50, v66);
                  sub_1D1B0E394(v52, v41);
                  swift_unknownObjectRelease();
                }

                else
                {

                  swift_unknownObjectRelease();
                }

                goto LABEL_29;
              }

              swift_unknownObjectRelease();
            }
          }
        }
      }

LABEL_29:
      ++v36;
      if (v29 == i)
      {
        v29 = v74;
        goto LABEL_41;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    ;
  }

LABEL_41:

  return v29;
}

void MatterStateSnapshot.tileInfo(for:)(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v79 = a2;
  v4 = type metadata accessor for MatterTilePath(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v76 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448D0, &qword_1D1E76600);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = (&v69 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = (&v69 - v14);
  MEMORY[0x1EEE9AC00](v13);
  v73 = &v69 - v16;
  v75 = type metadata accessor for StaticEndpoint(0);
  v78 = *(v75 - 8);
  v17 = MEMORY[0x1EEE9AC00](v75);
  v72 = &v69 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v74 = &v69 - v19;
  v77 = type metadata accessor for StaticMatterDevice(0);
  v20 = *(v77 - 8);
  v21 = MEMORY[0x1EEE9AC00](v77);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v69 - v24;
  v26 = *(v2 + *(type metadata accessor for MatterStateSnapshot(0) + 24));
  if (*(v26 + 16))
  {
    v27 = sub_1D17420B0(*(a1 + *(v4 + 20)));
    if (v28)
    {
      sub_1D1A30E90(*(v26 + 56) + *(v20 + 72) * v27, v23, type metadata accessor for StaticMatterDevice);
      sub_1D1A320C0(v23, v25, type metadata accessor for StaticMatterDevice);
      v29 = (a1 + *(v4 + 24));
      if ((v29[1] & 1) == 0)
      {
        v71 = *v29;
        v7 = *&v25[*(v77 + 56)];
        v30 = 1 << v7[32];
        v31 = -1;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        v32 = v31 & *(v7 + 8);
        v33 = (v30 + 63) >> 6;

        v34 = 0;
        v70 = v25;
        if (v32)
        {
          while (1)
          {
            v35 = v34;
LABEL_11:
            v36 = __clz(__rbit64(v32)) | (v35 << 6);
            v37 = *(*(v7 + 6) + 2 * v36);
            sub_1D1A30E90(*(v7 + 7) + *(v78 + 72) * v36, v15 + *(v9 + 48), type metadata accessor for StaticEndpoint);
            *v15 = v37;
            sub_1D1820EE8(v15, v12);
            if (*v12 == v71)
            {
              break;
            }

            v32 &= v32 - 1;
            sub_1D1741A30(v12, &qword_1EC6448D0, &qword_1D1E76600);
            v34 = v35;
            if (!v32)
            {
              goto LABEL_8;
            }
          }

          v63 = v73;
          sub_1D1820EE8(v12, v73);
          v64 = v63 + *(v9 + 48);
          v65 = v72;
          sub_1D1A320C0(v64, v72, type metadata accessor for StaticEndpoint);
          v66 = v74;
          sub_1D1A320C0(v65, v74, type metadata accessor for StaticEndpoint);
          v67 = v79;
          v79[3] = v75;
          v67[4] = sub_1D1A3124C(&qword_1EC649260, type metadata accessor for StaticEndpoint, &protocol conformance descriptor for StaticEndpoint);
          boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v67);
          sub_1D1A320C0(v66, boxed_opaque_existential_1, type metadata accessor for StaticEndpoint);
          sub_1D1A30EF8(v70, type metadata accessor for StaticMatterDevice);
          return;
        }

        while (1)
        {
LABEL_8:
          v35 = v34 + 1;
          if (__OFADD__(v34, 1))
          {
            __break(1u);
            goto LABEL_28;
          }

          if (v35 >= v33)
          {
            break;
          }

          v32 = *&v7[8 * v35 + 64];
          ++v34;
          if (v32)
          {
            goto LABEL_11;
          }
        }

        if (qword_1EE07A0A8 != -1)
        {
          swift_once();
        }

        v48 = sub_1D1E6709C();
        __swift_project_value_buffer(v48, qword_1EE07A0B0);
        v49 = v76;
        sub_1D1A30E90(a1, v76, type metadata accessor for MatterTilePath);

        v50 = sub_1D1E6707C();
        v51 = sub_1D1E6833C();

        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v80 = v53;
          *v52 = 136315650;
          *(v52 + 4) = sub_1D1B1312C(0x6F666E49656C6974, 0xEE00293A726F6628, &v80);
          *(v52 + 12) = 2082;
          v54 = MatterTilePath.description.getter();
          v56 = v55;
          sub_1D1A30EF8(v49, type metadata accessor for MatterTilePath);
          v57 = sub_1D1B1312C(v54, v56, &v80);

          *(v52 + 14) = v57;
          *(v52 + 22) = 2080;
          v58 = sub_1D1E6760C();
          v60 = sub_1D1B1312C(v58, v59, &v80);

          *(v52 + 24) = v60;
          _os_log_impl(&dword_1D16EC000, v50, v51, "%s Failed to find static endpoint for path %{public}s in endpoints %s", v52, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1D3893640](v53, -1, -1);
          MEMORY[0x1D3893640](v52, -1, -1);
        }

        else
        {

          sub_1D1A30EF8(v49, type metadata accessor for MatterTilePath);
        }

        v25 = v70;
      }

      v61 = v79;
      v79[3] = v77;
      v61[4] = sub_1D1A3124C(&qword_1EC649258, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
      v62 = __swift_allocate_boxed_opaque_existential_1(v61);
      sub_1D1A320C0(v25, v62, type metadata accessor for StaticMatterDevice);
      return;
    }
  }

  if (qword_1EE07A0A8 != -1)
  {
LABEL_28:
    swift_once();
  }

  v38 = sub_1D1E6709C();
  __swift_project_value_buffer(v38, qword_1EE07A0B0);
  sub_1D1A30E90(a1, v7, type metadata accessor for MatterTilePath);
  v39 = sub_1D1E6707C();
  v40 = sub_1D1E6833C();
  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v80 = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_1D1B1312C(0x6F666E49656C6974, 0xEE00293A726F6628, &v80);
    *(v41 + 12) = 2082;
    v43 = MatterTilePath.description.getter();
    v45 = v44;
    sub_1D1A30EF8(v7, type metadata accessor for MatterTilePath);
    v46 = sub_1D1B1312C(v43, v45, &v80);

    *(v41 + 14) = v46;
    _os_log_impl(&dword_1D16EC000, v39, v40, "%s Failed to get static device for path %{public}s", v41, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v42, -1, -1);
    MEMORY[0x1D3893640](v41, -1, -1);
  }

  else
  {

    sub_1D1A30EF8(v7, type metadata accessor for MatterTilePath);
  }

  v47 = v79;
  v79[4] = 0;
  *v47 = 0u;
  *(v47 + 1) = 0u;
}

uint64_t MatterStateSnapshot.accessoryDetails(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for AccessoryDetails(0);
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t MatterStateSnapshot.tilePaths.getter()
{
  v1 = *(v0 + *(type metadata accessor for MatterStateSnapshot(0) + 24));
  v6 = v0;

  v2 = sub_1D1892A20(sub_1D1A30408, &v5, v1);

  v3 = sub_1D178547C(v2);

  return v3;
}

uint64_t sub_1D1A2CAC0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *(type metadata accessor for MatterStateSnapshot(0) + 20);
  v7 = sub_1D1E66A7C();
  (*(*(v7 - 8) + 16))(a3, a2 + v6, v7);
  result = type metadata accessor for MatterTilePath(0);
  v9 = a3 + *(result + 24);
  *(a3 + *(result + 20)) = v5;
  *v9 = 0;
  *(v9 + 2) = 1;
  return result;
}

uint64_t MatterStateSnapshot.staticEndpoint(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v37 = a1;
  v3 = type metadata accessor for StaticMatterDevice(0);
  v36 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for EndpointPath(0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v10 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v36 - v11;
  v13 = type metadata accessor for MatterStateSnapshot(0);
  v14 = *(v1 + *(v13 + 28));
  if (*(v14 + 16) && (v15 = v13, v16 = sub_1D1742188(), (v17 & 1) != 0))
  {
    sub_1D1A30E90(*(v14 + 56) + *(v7 + 72) * v16, v10, type metadata accessor for EndpointPath);
    sub_1D1A320C0(v10, v12, type metadata accessor for EndpointPath);
    v18 = *(v2 + *(v15 + 24));
    if (*(v18 + 16))
    {
      v19 = sub_1D17420B0(*&v12[*(v6 + 20)]);
      if (v20)
      {
        sub_1D1A30E90(*(v18 + 56) + *(v36 + 72) * v19, v5, type metadata accessor for StaticMatterDevice);
        v21 = *&v5[*(v3 + 56)];

        sub_1D1A30EF8(v5, type metadata accessor for StaticMatterDevice);
        if (*(v21 + 16))
        {
          v22 = sub_1D171D15C(*&v12[*(v6 + 24)]);
          if (v23)
          {
            v24 = v22;
            v25 = *(v21 + 56);
            v26 = type metadata accessor for StaticEndpoint(0);
            v27 = *(v26 - 8);
            v28 = v25 + *(v27 + 72) * v24;
            v29 = v37;
            sub_1D1A30E90(v28, v37, type metadata accessor for StaticEndpoint);
            sub_1D1A30EF8(v12, type metadata accessor for EndpointPath);

            return (*(v27 + 56))(v29, 0, 1, v26);
          }
        }
      }
    }

    sub_1D1A30EF8(v12, type metadata accessor for EndpointPath);
    v35 = type metadata accessor for StaticEndpoint(0);
    return (*(*(v35 - 8) + 56))(v37, 1, 1, v35);
  }

  else
  {
    v31 = type metadata accessor for StaticEndpoint(0);
    v32 = *(*(v31 - 8) + 56);
    v33 = v31;
    v34 = v37;

    return v32(v34, 1, 1, v33);
  }
}

uint64_t MatterStateSnapshot.staticEndpoint(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for StaticMatterDevice(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v2 + *(type metadata accessor for MatterStateSnapshot(0) + 24));
  v10 = type metadata accessor for EndpointPath(0);
  if (*(v9 + 16) && (v11 = v10, v12 = sub_1D17420B0(*(a1 + *(v10 + 20))), (v13 & 1) != 0))
  {
    sub_1D1A30E90(*(v9 + 56) + *(v6 + 72) * v12, v8, type metadata accessor for StaticMatterDevice);
    v14 = *&v8[*(v5 + 56)];

    sub_1D1A30EF8(v8, type metadata accessor for StaticMatterDevice);
    if (*(v14 + 16) && (v15 = sub_1D171D15C(*(a1 + *(v11 + 24))), (v16 & 1) != 0))
    {
      v17 = v15;
      v18 = *(v14 + 56);
      v19 = type metadata accessor for StaticEndpoint(0);
      v20 = *(v19 - 8);
      sub_1D1A30E90(v18 + *(v20 + 72) * v17, a2, type metadata accessor for StaticEndpoint);

      return (*(v20 + 56))(a2, 0, 1, v19);
    }

    else
    {

      v24 = type metadata accessor for StaticEndpoint(0);
      return (*(*(v24 - 8) + 56))(a2, 1, 1, v24);
    }
  }

  else
  {
    v22 = type metadata accessor for StaticEndpoint(0);
    v23 = *(*(v22 - 8) + 56);

    return v23(a2, 1, 1, v22);
  }
}

uint64_t MatterStateSnapshot.staticMatterDevice(for:)@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for EndpointPath(0);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v27 - v9;
  v11 = type metadata accessor for MatterStateSnapshot(0);
  v12 = *(v1 + *(v11 + 28));
  if (*(v12 + 16) && (v13 = v11, v14 = sub_1D1742188(), (v15 & 1) != 0))
  {
    sub_1D1A30E90(*(v12 + 56) + *(v5 + 72) * v14, v8, type metadata accessor for EndpointPath);
    sub_1D1A320C0(v8, v10, type metadata accessor for EndpointPath);
    v16 = *(v2 + *(v13 + 24));
    if (*(v16 + 16) && (v17 = sub_1D17420B0(*&v10[*(v4 + 20)]), (v18 & 1) != 0))
    {
      v19 = v17;
      v20 = *(v16 + 56);
      v21 = type metadata accessor for StaticMatterDevice(0);
      v22 = *(v21 - 8);
      sub_1D1A30E90(v20 + *(v22 + 72) * v19, a1, type metadata accessor for StaticMatterDevice);
      sub_1D1A30EF8(v10, type metadata accessor for EndpointPath);
      return (*(v22 + 56))(a1, 0, 1, v21);
    }

    else
    {
      sub_1D1A30EF8(v10, type metadata accessor for EndpointPath);
      v26 = type metadata accessor for StaticMatterDevice(0);
      return (*(*(v26 - 8) + 56))(a1, 1, 1, v26);
    }
  }

  else
  {
    v24 = type metadata accessor for StaticMatterDevice(0);
    v25 = *(*(v24 - 8) + 56);

    return v25(a1, 1, 1, v24);
  }
}

uint64_t MatterStateSnapshot.tileInfoFromStaticEndpointId(id:)@<X0>(uint64_t *a1@<X8>)
{
  v21 = a1;
  v1 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MatterTilePath(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644780, &qword_1D1E91AA0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v20 - v8;
  v10 = type metadata accessor for StaticEndpoint(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MatterStateSnapshot.staticEndpoint(for:)(v9);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    result = sub_1D1741A30(v9, &qword_1EC644780, &qword_1D1E91AA0);
    v15 = v21;
    *v21 = 0u;
    *(v15 + 1) = 0u;
    v15[4] = 0;
  }

  else
  {
    sub_1D1A320C0(v9, v13, type metadata accessor for StaticEndpoint);
    sub_1D1A30E90(&v13[*(v10 + 20)], v3, type metadata accessor for EndpointPath);
    v16 = sub_1D1E66A7C();
    (*(*(v16 - 8) + 16))(v6, v3, v16);
    v17 = *&v3[*(v1 + 20)];
    v18 = *&v3[*(v1 + 24)];
    sub_1D1A30EF8(v3, type metadata accessor for EndpointPath);
    v19 = &v6[*(v4 + 24)];
    *&v6[*(v4 + 20)] = v17;
    *v19 = v18;
    v19[2] = 0;
    MatterStateSnapshot.tileInfo(for:)(v6, v21);
    sub_1D1A30EF8(v6, type metadata accessor for MatterTilePath);
    return sub_1D1A30EF8(v13, type metadata accessor for StaticEndpoint);
  }

  return result;
}

uint64_t MatterStateSnapshot.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for StaticMatterDevice(0);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v28 - v10;
  v12 = *(v2 + *(type metadata accessor for MatterStateSnapshot(0) + 24));
  v13 = type metadata accessor for EndpointPath(0);
  if (*(v12 + 16) && (v14 = v13, v15 = sub_1D17420B0(*(a1 + *(v13 + 20))), (v16 & 1) != 0))
  {
    sub_1D1A30E90(*(v12 + 56) + *(v6 + 72) * v15, v9, type metadata accessor for StaticMatterDevice);
    sub_1D1A320C0(v9, v11, type metadata accessor for StaticMatterDevice);
    v17 = *&v11[*(v5 + 56)];
    if (*(v17 + 16) && (v18 = sub_1D171D15C(*(a1 + *(v14 + 24))), (v19 & 1) != 0))
    {
      v20 = v18;
      v21 = *(v17 + 56);
      v22 = type metadata accessor for StaticEndpoint(0);
      v23 = *(v22 - 8);
      sub_1D1A30E90(v21 + *(v23 + 72) * v20, a2, type metadata accessor for StaticEndpoint);
      (*(v23 + 56))(a2, 0, 1, v22);
    }

    else
    {
      v27 = type metadata accessor for StaticEndpoint(0);
      (*(*(v27 - 8) + 56))(a2, 1, 1, v27);
    }

    return sub_1D1A30EF8(v11, type metadata accessor for StaticMatterDevice);
  }

  else
  {
    v24 = type metadata accessor for StaticEndpoint(0);
    v25 = *(*(v24 - 8) + 56);

    return v25(a2, 1, 1, v24);
  }
}

uint64_t sub_1D1A2DAD8()
{
  v1 = 0x746E696F70646E65;
  v2 = 0x7954656369766564;
  if (*v0 != 2)
  {
    v2 = 0x6563697665446F6ELL;
  }

  if (*v0)
  {
    v1 = 0x4449656369766564;
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

uint64_t sub_1D1A2DB68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1A31ED0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1A2DB90(uint64_t a1)
{
  v2 = sub_1D1A30F58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A2DBCC(uint64_t a1)
{
  v2 = sub_1D1A30F58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A2DC08(uint64_t a1)
{
  v2 = sub_1D1A31054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A2DC44(uint64_t a1)
{
  v2 = sub_1D1A31054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A2DC80(uint64_t a1)
{
  v2 = sub_1D1A31000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A2DCBC(uint64_t a1)
{
  v2 = sub_1D1A31000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A2DCF8(uint64_t a1)
{
  v2 = sub_1D1A310A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A2DD34(uint64_t a1)
{
  v2 = sub_1D1A310A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A2DD70(uint64_t a1)
{
  v2 = sub_1D1A30FAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A2DDAC(uint64_t a1)
{
  v2 = sub_1D1A30FAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MatterStateSnapshot.Filter.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649268, &qword_1D1E92C60);
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v30 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649270, &qword_1D1E92C68);
  v33 = *(v6 - 8);
  v34 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649278, &qword_1D1E92C70);
  v28 = *(v9 - 8);
  v29 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649280, &qword_1D1E92C78);
  v27 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649288, &unk_1D1E92C80);
  v36 = *(v15 - 8);
  v37 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v35 = *v2;
  v18 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A30F58();
  sub_1D1E6930C();
  if (v18 > 1)
  {
    if (v18 == 2)
    {
      LOBYTE(v38) = 2;
      sub_1D1A31000();
      v21 = v37;
      sub_1D1E68DFC();
      v38 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
      sub_1D1904180(&qword_1EC646B30, sub_1D18F16D8, MEMORY[0x1E69E64F0]);
      v22 = v34;
      sub_1D1E68F1C();
      (*(v33 + 8))(v8, v22);
      return (*(v36 + 8))(v17, v21);
    }

    else
    {
      LOBYTE(v38) = 3;
      sub_1D1A30FAC();
      v25 = v30;
      v26 = v37;
      sub_1D1E68DFC();
      (*(v31 + 8))(v25, v32);
      return (*(v36 + 8))(v17, v26);
    }
  }

  else if (v18)
  {
    LOBYTE(v38) = 1;
    sub_1D1A31054();
    v23 = v37;
    sub_1D1E68DFC();
    v38 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492B0, &unk_1D1E92C90);
    sub_1D1A31198(&qword_1EC6492B8, MEMORY[0x1E69E76E0], MEMORY[0x1E69E64F0]);
    v24 = v29;
    sub_1D1E68F1C();
    (*(v28 + 8))(v11, v24);
    return (*(v36 + 8))(v17, v23);
  }

  else
  {
    LOBYTE(v38) = 0;
    sub_1D1A310A8();
    v19 = v37;
    sub_1D1E68DFC();
    v38 = v35;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1A310FC(&qword_1EC646B10, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    (*(v27 + 8))(v14, v12);
    return (*(v36 + 8))(v17, v19);
  }
}

uint64_t MatterStateSnapshot.Filter.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) == 2)
    {
      MEMORY[0x1D3892850](2);

      return sub_1D176DB8C(a1, v3);
    }

    else
    {
      return MEMORY[0x1D3892850](3);
    }
  }

  else if (*(v1 + 8))
  {
    MEMORY[0x1D3892850](1);

    return sub_1D176DCC0(a1, v3);
  }

  else
  {
    MEMORY[0x1D3892850](0);

    return sub_1D176D4E8(a1, v3);
  }
}

uint64_t MatterStateSnapshot.Filter.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D1E6920C();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D176DB8C(v4, v1);
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }
  }

  else if (v2)
  {
    MEMORY[0x1D3892850](1);
    sub_1D176DCC0(v4, v1);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    sub_1D176D4E8(v4, v1);
  }

  return sub_1D1E6926C();
}

uint64_t MatterStateSnapshot.Filter.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492C8, &qword_1D1E92CA0);
  v46 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v45 = &v34[-v3];
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492D0, &qword_1D1E92CA8);
  v42 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v44 = &v34[-v4];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492D8, &qword_1D1E92CB0);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v34[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492E0, &qword_1D1E92CB8);
  v37 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v34[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492E8, &unk_1D1E92CC0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v34[-v13];
  v15 = a1[3];
  v48 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D1A30F58();
  v16 = v47;
  sub_1D1E692FC();
  if (!v16)
  {
    v47 = v10;
    v36 = v8;
    v18 = v45;
    v17 = v46;
    v19 = v44;
    v20 = sub_1D1E68DDC();
    v21 = (2 * *(v20 + 16)) | 1;
    v49 = v20;
    v50 = v20 + 32;
    v51 = 0;
    v52 = v21;
    v22 = sub_1D18085BC();
    if (v22 == 4 || v51 != v52 >> 1)
    {
      v25 = sub_1D1E688EC();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v27 = &type metadata for MatterStateSnapshot.Filter;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
      (*(v12 + 8))(v14, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      v35 = v22;
      if (v22 > 1u)
      {
        if (v22 == 2)
        {
          LOBYTE(v53) = 2;
          sub_1D1A31000();
          sub_1D1E68C4C();
          v29 = v43;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
          sub_1D1904180(&qword_1EC646B98, sub_1D18F1924, MEMORY[0x1E69E6510]);
          v30 = v38;
          sub_1D1E68D7C();
          (*(v42 + 8))(v19, v30);
          (*(v12 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v32 = v53;
          v33 = v29;
        }

        else
        {
          LOBYTE(v53) = 3;
          sub_1D1A30FAC();
          sub_1D1E68C4C();
          v33 = v43;
          (*(v17 + 8))(v18, v39);
          (*(v12 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v32 = 0;
        }
      }

      else
      {
        if (v22)
        {
          LOBYTE(v53) = 1;
          sub_1D1A31054();
          sub_1D1E68C4C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6492B0, &unk_1D1E92C90);
          sub_1D1A31198(&qword_1EC6492F0, MEMORY[0x1E69E7708], MEMORY[0x1E69E6510]);
          v31 = v41;
          sub_1D1E68D7C();
          (*(v40 + 8))(v7, v31);
        }

        else
        {
          LOBYTE(v53) = 0;
          sub_1D1A310A8();
          v23 = v47;
          sub_1D1E68C4C();
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
          sub_1D1A310FC(&qword_1EC646B78, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
          v24 = v36;
          sub_1D1E68D7C();
          (*(v37 + 8))(v23, v24);
        }

        (*(v12 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v32 = v53;
        v33 = v43;
      }

      *v33 = v32;
      *(v33 + 8) = v35;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v48);
}

uint64_t sub_1D1A2EDE8()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  sub_1D1E6920C();
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D176DB8C(v4, v1);
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }
  }

  else if (v2)
  {
    MEMORY[0x1D3892850](1);
    sub_1D176DCC0(v4, v1);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    sub_1D176D4E8(v4, v1);
  }

  return sub_1D1E6926C();
}

uint64_t sub_1D1A2EE9C(__int128 *a1)
{
  v3 = *v1;
  if (*(v1 + 8) > 1u)
  {
    if (*(v1 + 8) == 2)
    {
      MEMORY[0x1D3892850](2);

      return sub_1D176DB8C(a1, v3);
    }

    else
    {
      return MEMORY[0x1D3892850](3);
    }
  }

  else if (*(v1 + 8))
  {
    MEMORY[0x1D3892850](1);

    return sub_1D176DCC0(a1, v3);
  }

  else
  {
    MEMORY[0x1D3892850](0);

    return sub_1D176D4E8(a1, v3);
  }
}

uint64_t sub_1D1A2EF88(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  sub_1D1E6920C();
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      MEMORY[0x1D3892850](2);
      sub_1D176DB8C(v5, v2);
    }

    else
    {
      MEMORY[0x1D3892850](3);
    }
  }

  else if (v3)
  {
    MEMORY[0x1D3892850](1);
    sub_1D176DCC0(v5, v2);
  }

  else
  {
    MEMORY[0x1D3892850](0);
    sub_1D176D4E8(v5, v2);
  }

  return sub_1D1E6926C();
}

uint64_t MatterStateSnapshot.Filter.description.getter()
{
  if (*(v0 + 8) <= 1u)
  {
    if (*(v0 + 8))
    {
      strcpy(v3, "deviceIDs(");
      BYTE3(v3[1]) = 0;
      HIDWORD(v3[1]) = -369098752;
    }

    else
    {
      sub_1D1E6884C();

      strcpy(v3, "endpointUUIDs(");
      HIBYTE(v3[1]) = -18;
      sub_1D1E66A7C();
      sub_1D1A3124C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    }

    goto LABEL_7;
  }

  if (*(v0 + 8) == 2)
  {
    strcpy(v3, "deviceTypes(");
    BYTE5(v3[1]) = 0;
    HIWORD(v3[1]) = -5120;
    sub_1D1785A60();
LABEL_7:
    v1 = sub_1D1E6817C();
    MEMORY[0x1D3890F70](v1);

    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return v3[0];
  }

  return 0x6563697665446F6ELL;
}

uint64_t sub_1D1A2F1EC()
{
  v0 = sub_1D1E66A7C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for MatterStateSnapshot(0);
  __swift_allocate_value_buffer(v4, qword_1EE07D4A0);
  v5 = __swift_project_value_buffer(v4, qword_1EE07D4A0);
  if (qword_1EE07DD70 != -1)
  {
    swift_once();
  }

  v6 = __swift_project_value_buffer(v0, qword_1EE081518);
  (*(v1 + 16))(v3, v6, v0);
  v7 = sub_1D18D677C(MEMORY[0x1E69E7CC0]);
  v9 = 0;
  v10 = -1;
  return sub_1D1A28CB8(0x7974706D65, 0xE500000000000000, v3, v7, &v9, v5);
}

uint64_t static MatterStateSnapshot.empty.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EE07D498 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for MatterStateSnapshot(0);
  v3 = __swift_project_value_buffer(v2, qword_1EE07D4A0);
  return sub_1D1A30E90(v3, a1, type metadata accessor for MatterStateSnapshot);
}

uint64_t sub_1D1A2F3DC@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645428, &qword_1D1E96C40) + 48);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646210, &unk_1D1E7E870);
  v6 = *a1;
  result = sub_1D1A30E90(a1 + v4, a2 + *(v5 + 48), type metadata accessor for StaticMatterDevice);
  *a2 = v6;
  return result;
}

uint64_t _s13HomeDataModel19MatterStateSnapshotV10UpdateTypeO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 1)
  {
    if (!*(a1 + 16))
    {
      v9 = *a1;
      if (!*(a2 + 16))
      {
        sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
        sub_1D1A28388(v5, v6, 0);
        sub_1D1A28388(v2, v3, 0);
        v10 = sub_1D1E684FC();
        sub_1D1A283E8(v2, v3, 0);
        v11 = v5;
        v12 = v6;
        v13 = 0;
        goto LABEL_21;
      }

LABEL_23:
      v16 = v9;
      goto LABEL_24;
    }

    if (v7 == 1)
    {
      if ((sub_1D17A7DC0(*a1, *a2) & 1) == 0)
      {
        sub_1D1A28388(v5, v6, 1u);
        sub_1D1A28388(v2, v3, 1u);
        sub_1D1A283E8(v2, v3, 1u);
        v17 = v5;
        v18 = v6;
        v19 = 1;
        goto LABEL_25;
      }

      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      sub_1D1A28388(v5, v6, 1u);
      sub_1D1A28388(v2, v3, 1u);
      LOBYTE(v10) = sub_1D1E684FC();
      sub_1D1A283E8(v2, v3, 1u);
      v11 = v5;
      v12 = v6;
      v13 = 1;
      goto LABEL_21;
    }

LABEL_22:

    v9 = v3;
    goto LABEL_23;
  }

  if (v4 == 2)
  {
    if (v7 == 2)
    {
      if ((sub_1D17A7DC0(*a1, *a2) & 1) == 0)
      {
        sub_1D1A28388(v5, v6, 2u);
        sub_1D1A28388(v2, v3, 2u);
        sub_1D1A283E8(v2, v3, 2u);
        v17 = v5;
        v18 = v6;
        v19 = 2;
        goto LABEL_25;
      }

      sub_1D1741B10(0, &qword_1EE07B260, 0x1E69E58C0);
      sub_1D1A28388(v5, v6, 2u);
      sub_1D1A28388(v2, v3, 2u);
      LOBYTE(v10) = sub_1D1E684FC();
      sub_1D1A283E8(v2, v3, 2u);
      v11 = v5;
      v12 = v6;
      v13 = 2;
LABEL_21:
      sub_1D1A283E8(v11, v12, v13);
      return v10 & 1;
    }

    goto LABEL_22;
  }

  if (v4 != 3)
  {
    if (v7 == 4 && (v6 | v5) == 0)
    {
      sub_1D1A283E8(*a1, v3, 4u);
      sub_1D1A283E8(0, 0, 4u);
      v8 = 1;
      return v8 & 1;
    }

    goto LABEL_24;
  }

  if (v7 != 3)
  {
LABEL_24:
    sub_1D1A28388(v5, v6, v7);
    sub_1D1A283E8(v2, v3, v4);
    v17 = v5;
    v18 = v6;
    v19 = v7;
LABEL_25:
    sub_1D1A283E8(v17, v18, v19);
    v8 = 0;
    return v8 & 1;
  }

  sub_1D1A283E8(*a1, v3, 3u);
  sub_1D1A283E8(v5, v6, 3u);
  v8 = v5 ^ v2 ^ 1;
  return v8 & 1;
}

BOOL _s13HomeDataModel19MatterStateSnapshotV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {
    v5 = type metadata accessor for MatterStateSnapshot(0);
    if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) != 0 && (sub_1D184A234(*(a1 + v5[6]), *(a2 + v5[6])) & 1) != 0 && (sub_1D184A6D8(*(a1 + v5[7]), *(a2 + v5[7])))
    {
      v6 = v5[8];
      v7 = a1 + v6;
      v8 = *(a1 + v6);
      v9 = v7[8];
      v10 = a2 + v6;
      v11 = *v10;
      v12 = v10[8];
      if (v9 == 255)
      {
        sub_1D186145C(v8, 255);
        if (v12 == 255)
        {
          sub_1D186145C(v11, 255);
          sub_1D1861470(v8, 255);
          return 1;
        }

        sub_1D186145C(v11, v12);
      }

      else
      {
        v17 = v8;
        v18 = v9;
        if (v12 != 255)
        {
          v15 = v11;
          v16 = v12;
          sub_1D186145C(v8, v9);
          sub_1D186145C(v11, v12);
          sub_1D186145C(v8, v9);
          v13 = _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(&v17, &v15);

          sub_1D1861470(v8, v9);
          return (v13 & 1) != 0;
        }

        sub_1D186145C(v8, v9);
        sub_1D186145C(v11, 255);
        sub_1D186145C(v8, v9);
      }

      sub_1D1861470(v8, v9);
      sub_1D1861470(v11, v12);
    }
  }

  return 0;
}

uint64_t _s13HomeDataModel19MatterStateSnapshotV6FilterO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a1 + 8) <= 1u)
  {
    if (!*(a1 + 8))
    {
      if (!v4)
      {
        v5 = v3;

        v7 = sub_1D17A6E98(v6, v5);

        return v7 & 1;
      }

      return 0;
    }

    if (v4 == 1)
    {
      v10 = *a1;

      return sub_1D17A7DC0(v10, v3);
    }

    return 0;
  }

  if (*(a1 + 8) != 2)
  {
    if (v4 == 3 && v3 == 0)
    {

      return 1;
    }

    return 0;
  }

  if (v4 != 2)
  {
    return 0;
  }

  v9 = *a1;

  return sub_1D17A7F14(v9, v3);
}

uint64_t _s13HomeDataModel19MatterStateSnapshotV17allowSnapshotting9accessorySbSo11HMAccessoryC_tFZ_0(id a1)
{
  if (qword_1EC6422B0 != -1)
  {
    swift_once();
  }

  if (byte_1EC649198)
  {
    LODWORD(v2) = 1;
  }

  else
  {
    LODWORD(v2) = [a1 supportsNativeMatter];
  }

  v3 = [a1 category];
  v4 = [v3 categoryType];

  v5 = sub_1D1E6781C();
  v7 = v6;

  if (v5 == sub_1D1E6781C() && v7 == v8)
  {
    v31 = 1;
  }

  else
  {
    v31 = sub_1D1E6904C();
  }

  v32[3] = &type metadata for HomeKitFeatures;
  v32[4] = sub_1D18076E8();
  LOBYTE(v32[0]) = 3;
  v10 = sub_1D1E66D5C();
  __swift_destroy_boxed_opaque_existential_1(v32);
  if (v10)
  {
    v11 = [a1 category];
    v12 = [v11 categoryType];

    v13 = sub_1D1E6781C();
    v15 = v14;

    if (v13 == sub_1D1E6781C() && v15 == v16)
    {
      v17 = 1;
    }

    else
    {
      v17 = sub_1D1E6904C();
    }
  }

  else
  {
    v17 = 0;
  }

  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v18 = sub_1D1E6709C();
  __swift_project_value_buffer(v18, qword_1EE07A0B0);
  v19 = a1;
  v20 = sub_1D1E6707C();
  v21 = sub_1D1E6832C();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v32[0] = v24;
    *v22 = 136316674;
    *(v22 + 4) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EC3750, v32);
    *(v22 + 12) = 1026;
    *(v22 + 14) = v2;
    *(v22 + 18) = 1026;
    *(v22 + 20) = v31 & 1;
    *(v22 + 24) = 1026;
    *(v22 + 26) = 0;
    *(v22 + 30) = 1026;
    *(v22 + 32) = v17 & 1;
    *(v22 + 36) = 2114;
    v25 = [v19 &selRef_setIdentifyTime_];
    *(v22 + 38) = v25;
    *(v22 + 46) = 2112;
    *(v22 + 48) = v19;
    *v23 = v25;
    v23[1] = v19;
    v26 = v19;
    _os_log_impl(&dword_1D16EC000, v20, v21, "%s: allowRVC:%{BOOL,public}d isLock:%{BOOL,public}d isLight:%{BOOL,public}d allowHomeActivityState:%{BOOL,public}d accessory category:%{public}@ accessory:%@", v22, 0x38u);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC644000, &unk_1D1E75B00);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v23, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v24);
    MEMORY[0x1D3893640](v24, -1, -1);
    MEMORY[0x1D3893640](v22, -1, -1);
  }

  if (qword_1EE07AE38 != -1)
  {
    swift_once();
  }

  if (qword_1EE07AE40 <= 7)
  {
    if (((1 << qword_1EE07AE40) & 0x1C) != 0)
    {
      return v2 & 1;
    }

    if (((1 << qword_1EE07AE40) & 3) != 0)
    {
      LOBYTE(v2) = v2 | v31 | v17;
      return v2 & 1;
    }

    if (((1 << qword_1EE07AE40) & 0xC0) != 0)
    {
      LOBYTE(v2) = v2 | v17;
      return v2 & 1;
    }
  }

  v2 = sub_1D1E6707C();
  v27 = sub_1D1E6833C();
  if (os_log_type_enabled(v2, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v32[0] = v29;
    *v28 = 136315138;
    *(v28 + 4) = sub_1D1B1312C(0xD00000000000001DLL, 0x80000001D1EC3750, v32);
    _os_log_impl(&dword_1D16EC000, v2, v27, "%s Unsupported context. Cannot get supported devices.", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1D3893640](v29, -1, -1);
    MEMORY[0x1D3893640](v28, -1, -1);
  }

  LOBYTE(v2) = 0;
  return v2 & 1;
}

uint64_t type metadata accessor for MatterStateSnapshot(uint64_t a1)
{
  result = qword_1EE07C628;
  if (!qword_1EE07C628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D1A2FFBC()
{
  result = qword_1EC6491F8;
  if (!qword_1EC6491F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6491F8);
  }

  return result;
}

unint64_t sub_1D1A30010()
{
  result = qword_1EC649208;
  if (!qword_1EC649208)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649200, &qword_1D1E92C48);
    sub_1D1A3124C(&qword_1EC649210, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649208);
  }

  return result;
}

unint64_t sub_1D1A300CC()
{
  result = qword_1EC649220;
  if (!qword_1EC649220)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649218, &qword_1D1E92C50);
    sub_1D1A3124C(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1D1A3124C(&qword_1EC646B18, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649220);
  }

  return result;
}

unint64_t sub_1D1A301B8()
{
  result = qword_1EC649228;
  if (!qword_1EC649228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649228);
  }

  return result;
}

unint64_t sub_1D1A3020C()
{
  result = qword_1EC649238;
  if (!qword_1EC649238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649200, &qword_1D1E92C48);
    sub_1D1A3124C(&qword_1EC649240, type metadata accessor for StaticMatterDevice, &protocol conformance descriptor for StaticMatterDevice);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649238);
  }

  return result;
}

unint64_t sub_1D1A302C8()
{
  result = qword_1EC649248;
  if (!qword_1EC649248)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC649218, &qword_1D1E92C50);
    sub_1D1A3124C(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1D1A3124C(&qword_1EC646B80, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649248);
  }

  return result;
}

unint64_t sub_1D1A303B4()
{
  result = qword_1EC649250;
  if (!qword_1EC649250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649250);
  }

  return result;
}

uint64_t sub_1D1A30428(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for StaticMatterDevice(0);
  v49 = *(v10 - 8);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v41 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649390, &qword_1D1E936B8);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = (v41 - v17);
  v19 = -1 << *(a1 + 32);
  v20 = ~v19;
  v21 = *(a1 + 64);
  v22 = -v19;
  v42 = a1;
  v43 = a1 + 64;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  else
  {
    v23 = -1;
  }

  v44 = v20;
  v45 = 0;
  v46 = v23 & v21;
  v47 = a2;
  v48 = a3;

  v41[1] = a3;

  while (1)
  {
    sub_1D1ABFF5C(v18);
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646210, &unk_1D1E7E870);
    if ((*(*(v25 - 8) + 48))(v18, 1, v25) == 1)
    {
      sub_1D1716918(v42);
    }

    v26 = *v18;
    sub_1D1A320C0(v18 + *(v25 + 48), v15, type metadata accessor for StaticMatterDevice);
    v27 = *a5;
    v29 = sub_1D17420B0(v26);
    v30 = v27[2];
    v31 = (v28 & 1) == 0;
    v32 = v30 + v31;
    if (__OFADD__(v30, v31))
    {
      break;
    }

    v33 = v28;
    if (v27[3] >= v32)
    {
      if (a4)
      {
        v36 = *a5;
        if ((v28 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

      else
      {
        sub_1D173A0D0();
        v36 = *a5;
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      v24 = *(v49 + 72) * v29;
      sub_1D1A30E90(v36[7] + v24, v13, type metadata accessor for StaticMatterDevice);
      sub_1D1A30EF8(v15, type metadata accessor for StaticMatterDevice);
      sub_1D1A32128(v13, v36[7] + v24, type metadata accessor for StaticMatterDevice);
      a4 = 1;
    }

    else
    {
      sub_1D172A6BC(v32, a4 & 1);
      v34 = sub_1D17420B0(v26);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_21;
      }

      v29 = v34;
      v36 = *a5;
      if (v33)
      {
        goto LABEL_5;
      }

LABEL_14:
      v36[(v29 >> 6) + 8] |= 1 << v29;
      *(v36[6] + 8 * v29) = v26;
      sub_1D1A320C0(v15, v36[7] + *(v49 + 72) * v29, type metadata accessor for StaticMatterDevice);
      v37 = v36[2];
      v38 = __OFADD__(v37, 1);
      v39 = v37 + 1;
      if (v38)
      {
        goto LABEL_20;
      }

      v36[2] = v39;
      a4 = 1;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D1A307D8(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  v72 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643650, &qword_1D1E71D40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v73 = &v68 - v10;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v68 - v16;
  v71 = *a5;
  v74 = *(a5 + 8);
  v18 = [a1 uniqueIdentifier];
  sub_1D1E66A5C();

  v19 = [a4 uniqueIdentifier];
  sub_1D1E66A5C();

  LOBYTE(v19) = _s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0();
  v20 = *(v12 + 8);
  v20(v15, v11);
  v20(v17, v11);
  result = 0;
  if ((v19 & 1) == 0)
  {
    return result;
  }

  v77 = MEMORY[0x1E69E7CC8];
  v22 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v23 = sub_1D1E67C1C();

  v75 = MEMORY[0x1E69E7CC0];
  if (v23 >> 62)
  {
    goto LABEL_25;
  }

  v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a1; v24; i = a1)
  {
    a1 = 0;
    v25 = v23 & 0xC000000000000001;
    v26 = v23 & 0xFFFFFFFFFFFFFF8;
    *&v70 = v23;
    v27 = v23 + 32;
    v28 = a3 + 56;
    while (1)
    {
      if (v25)
      {
        v29 = MEMORY[0x1D3891EF0](a1, v70);
      }

      else
      {
        if (a1 >= *(v26 + 16))
        {
          goto LABEL_24;
        }

        v29 = *(v27 + 8 * a1);
      }

      v30 = v29;
      if (__OFADD__(a1++, 1))
      {
        break;
      }

      v32 = sub_1D1E682DC();
      if (v33)
      {
        v23 = 0;
      }

      else
      {
        v23 = v32;
      }

      if (*(a3 + 16) && (v34 = sub_1D1E691FC(), v35 = -1 << *(a3 + 32), v36 = v34 & ~v35, ((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) != 0))
      {
        v37 = ~v35;
        while (*(*(a3 + 48) + 8 * v36) != v23)
        {
          v36 = (v36 + 1) & v37;
          if (((*(v28 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
          {
            goto LABEL_5;
          }
        }

        v23 = &v75;
        sub_1D1E6896C();
        sub_1D1E689AC();
        sub_1D1E689BC();
        sub_1D1E6897C();
        if (a1 == v24)
        {
LABEL_22:
          v38 = v75;
          goto LABEL_27;
        }
      }

      else
      {
LABEL_5:

        if (a1 == v24)
        {
          goto LABEL_22;
        }
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    v24 = sub_1D1E6873C();
  }

  v38 = MEMORY[0x1E69E7CC0];
LABEL_27:

  if (v38 < 0 || (v38 & 0x4000000000000000) != 0)
  {
    result = sub_1D1E6873C();
    v40 = result;
    if (result)
    {
      goto LABEL_30;
    }

LABEL_54:

    v65 = *(v72 + *(type metadata accessor for MatterStateSnapshot(0) + 24));

    v66 = v77;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v66;
    sub_1D1A30428(v65, sub_1D1A2F3DC, 0, isUniquelyReferenced_nonNull_native, &v75);

    return v75;
  }

  v40 = *(v38 + 16);
  if (!v40)
  {
    goto LABEL_54;
  }

LABEL_30:
  if (v40 >= 1)
  {
    v41 = 0;
    *&v39 = 134218242;
    v70 = v39;
    while (1)
    {
      if ((v38 & 0xC000000000000001) != 0)
      {
        v42 = MEMORY[0x1D3891EF0](v41, v38);
      }

      else
      {
        v42 = *(v38 + 8 * v41 + 32);
      }

      v43 = v42;
      v44 = sub_1D1E682DC();
      if ((v45 & 1) == 0 && v44)
      {
        v46 = v44;
        v47 = HMAccessory.matterDevice.getter();
        if (!v47)
        {
          if (qword_1EE07A0A8 != -1)
          {
            swift_once();
          }

          v59 = sub_1D1E6709C();
          __swift_project_value_buffer(v59, qword_1EE07A0B0);
          v60 = v43;
          v61 = sub_1D1E6707C();
          v62 = sub_1D1E6835C();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            *v63 = v70;
            *(v63 + 4) = v46;
            *(v63 + 12) = 2112;
            *(v63 + 14) = v60;
            *v64 = v60;
            v60 = v60;
            _os_log_impl(&dword_1D16EC000, v61, v62, "HMAccessory had a matter node ID (%llu) but didn't return a device: (%@)", v63, 0x16u);
            sub_1D1741A30(v64, &unk_1EC644000, &unk_1D1E75B00);
            MEMORY[0x1D3893640](v64, -1, -1);
            MEMORY[0x1D3893640](v63, -1, -1);
          }

          goto LABEL_34;
        }

        v49 = v47;
        v50 = v48;
        v51 = sub_1D1E682DC();
        if ((v52 & 1) == 0)
        {
          v53 = v51;
          if (*(v77 + 16))
          {
            sub_1D17420B0(v51);
            if (v54)
            {
              goto LABEL_47;
            }
          }

          if (v74 == 255 || (v75 = v71, LOBYTE(v76) = v74, , v55 = sub_1D1A2A8B0(v49, v50, v43, i), , (v55 & 1) != 0))
          {
            ObjectType = swift_getObjectType();
            MatterDevice.readAllSupportedAttributes()(ObjectType, v50);
            v43 = v43;
            v57 = swift_unknownObjectRetain();
            v58 = v73;
            StaticMatterDevice.init(device:valueSource:accessory:)(v57, v50, &v75, v43, v73);
            sub_1D1B0E394(v58, v53);
LABEL_47:

            swift_unknownObjectRelease();
            goto LABEL_34;
          }
        }

        swift_unknownObjectRelease();
      }

LABEL_34:
      if (v40 == ++v41)
      {
        goto LABEL_54;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D1A30E90(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A30EF8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D1A30F58()
{
  result = qword_1EC649290;
  if (!qword_1EC649290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649290);
  }

  return result;
}

unint64_t sub_1D1A30FAC()
{
  result = qword_1EC649298;
  if (!qword_1EC649298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649298);
  }

  return result;
}

unint64_t sub_1D1A31000()
{
  result = qword_1EC6492A0;
  if (!qword_1EC6492A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6492A0);
  }

  return result;
}

unint64_t sub_1D1A31054()
{
  result = qword_1EC6492A8;
  if (!qword_1EC6492A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6492A8);
  }

  return result;
}

unint64_t sub_1D1A310A8()
{
  result = qword_1EC6492C0;
  if (!qword_1EC6492C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6492C0);
  }

  return result;
}

uint64_t sub_1D1A310FC(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1A3124C(a2, MEMORY[0x1E69695A8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1A31198(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC6492B0, &unk_1D1E92C90);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D1A3124C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1D1A31298()
{
  result = qword_1EC649300;
  if (!qword_1EC649300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649300);
  }

  return result;
}

void sub_1D1A31314(uint64_t a1)
{
  sub_1D1E66A7C();
  if (v1 <= 0x3F)
  {
    sub_1D1A313D8(319);
    if (v2 <= 0x3F)
    {
      sub_1D1A31440(319);
      if (v3 <= 0x3F)
      {
        sub_1D1A314EC();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1D1A313D8(uint64_t a1)
{
  if (!qword_1EE07B760)
  {
    type metadata accessor for StaticMatterDevice(255);
    v1 = sub_1D1E6769C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B760);
    }
  }
}

void sub_1D1A31440(uint64_t a1)
{
  if (!qword_1EE07B7E0)
  {
    sub_1D1E66A7C();
    type metadata accessor for EndpointPath(255);
    sub_1D1A3124C(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v1 = sub_1D1E6769C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE07B7E0);
    }
  }
}

void sub_1D1A314EC()
{
  if (!qword_1EE07C638[0])
  {
    v0 = sub_1D1E685AC();
    if (!v1)
    {
      atomic_store(v0, qword_1EE07C638);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel19MatterStateSnapshotV10UpdateTypeO(uint64_t a1)
{
  if ((*(a1 + 16) & 4) != 0)
  {
    return (*a1 + 4);
  }

  else
  {
    return *(a1 + 16) & 7;
  }
}

uint64_t sub_1D1A31558(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFC && *(a1 + 17))
  {
    return (*a1 + 252);
  }

  v3 = *(a1 + 16);
  if (v3 <= 4)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D1A315A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D1A315E4(uint64_t result, unsigned int a2)
{
  if (a2 >= 4)
  {
    *result = a2 - 4;
    *(result + 8) = 0;
    LOBYTE(a2) = 4;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t get_enum_tag_for_layout_string_13HomeDataModel19MatterStateSnapshotV6FilterO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_1D1A31628(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D1A31670(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D1A316B4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_1D1A31740()
{
  result = qword_1EC649308;
  if (!qword_1EC649308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649308);
  }

  return result;
}

unint64_t sub_1D1A31798()
{
  result = qword_1EC649310;
  if (!qword_1EC649310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649310);
  }

  return result;
}

unint64_t sub_1D1A317F0()
{
  result = qword_1EC649318;
  if (!qword_1EC649318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649318);
  }

  return result;
}

unint64_t sub_1D1A31848()
{
  result = qword_1EC649320;
  if (!qword_1EC649320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649320);
  }

  return result;
}

unint64_t sub_1D1A318A0()
{
  result = qword_1EC649328;
  if (!qword_1EC649328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649328);
  }

  return result;
}

unint64_t sub_1D1A318F8()
{
  result = qword_1EC649330;
  if (!qword_1EC649330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649330);
  }

  return result;
}

unint64_t sub_1D1A31950()
{
  result = qword_1EC649338;
  if (!qword_1EC649338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649338);
  }

  return result;
}

unint64_t sub_1D1A319A8()
{
  result = qword_1EC649340;
  if (!qword_1EC649340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649340);
  }

  return result;
}

unint64_t sub_1D1A31A00()
{
  result = qword_1EC649348;
  if (!qword_1EC649348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649348);
  }

  return result;
}

unint64_t sub_1D1A31A58()
{
  result = qword_1EC649350;
  if (!qword_1EC649350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649350);
  }

  return result;
}

unint64_t sub_1D1A31AB0()
{
  result = qword_1EC649358;
  if (!qword_1EC649358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649358);
  }

  return result;
}

unint64_t sub_1D1A31B08()
{
  result = qword_1EC649360;
  if (!qword_1EC649360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649360);
  }

  return result;
}

unint64_t sub_1D1A31B60()
{
  result = qword_1EC649368;
  if (!qword_1EC649368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649368);
  }

  return result;
}

unint64_t sub_1D1A31BB8()
{
  result = qword_1EC649370;
  if (!qword_1EC649370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649370);
  }

  return result;
}

unint64_t sub_1D1A31C10()
{
  result = qword_1EC649378;
  if (!qword_1EC649378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649378);
  }

  return result;
}

unint64_t sub_1D1A31C68()
{
  result = qword_1EC649380;
  if (!qword_1EC649380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649380);
  }

  return result;
}

unint64_t sub_1D1A31CC0()
{
  result = qword_1EC649388;
  if (!qword_1EC649388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649388);
  }

  return result;
}

uint64_t sub_1D1A31D14(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6C6F72746E6F63 && a2 == 0xEC00000044497265;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656D6F68 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6544636974617473 && a2 == 0xED00007365636976 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D1EC3730 == a2 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7265746C6966 && a2 == 0xE600000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1D1A31ED0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E696F70646E65 && a2 == 0xED00007344495555;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449656369766564 && a2 == 0xE900000000000073 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7954656369766564 && a2 == 0xEB00000000736570 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6563697665446F6ELL && a2 == 0xE900000000000073)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D1E6904C();

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

uint64_t sub_1D1A32050(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64F390, &qword_1D1E92B10);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D1A320C0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A32128(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t StaticRVCClusterGroup.actionStatusString.getter()
{
  v1 = type metadata accessor for StaticRVCClusterGroup(0);
  v2 = 0;
  v3 = *(v0 + *(v1 + 20));
  if (v3 <= 6)
  {
    v4 = v1;
    v5 = 0xD000000000000014;
    if (((1 << v3) & 0x76) != 0)
    {
      v6 = "HFRVCAutomation_VacuumAndMop";
      return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
    }

    if (v3)
    {
      return v2;
    }

    if (*(v0 + *(v4 + 28) + 16))
    {
      if (StaticRVCClusterGroup.CleanMode.isVacuumAndMop.getter())
      {
        v6 = "HFRVCAutomation_Vacuum";
        v5 = 0xD00000000000001CLL;
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      }

      if (StaticRVCClusterGroup.CleanMode.isVacuum.getter())
      {
        v6 = "HFRVCAutomation_Mop";
        v5 = 0xD000000000000016;
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      }

      if (StaticRVCClusterGroup.CleanMode.isMop.getter())
      {
        v6 = "allowSnapshotting(accessory:)";
        v5 = 0xD000000000000013;
        return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
      }
    }

    v6 = "HFStatusVacuumStateCharging";
    v5 = 0xD00000000000001BLL;
    return static String.hfLocalized(_:)(v5, v6 | 0x8000000000000000);
  }

  return v2;
}

uint64_t StaticCluster.copyApplying(overridingAttributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for StaticColorControlCluster(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StaticCluster(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1A386E0(v3, v11, type metadata accessor for StaticCluster);
  if (swift_getEnumCaseMultiPayload() == 4)
  {
    sub_1D1A377A0(v11, v8, type metadata accessor for StaticColorControlCluster);
    StaticColorControlCluster.copyApplying(overridingAttributes:)(a1, a2);
    sub_1D1A38680(v8, type metadata accessor for StaticColorControlCluster);
    return swift_storeEnumTagMultiPayload();
  }

  else
  {
    sub_1D1A386E0(v3, a2, type metadata accessor for StaticCluster);
    return sub_1D1A38680(v11, type metadata accessor for StaticCluster);
  }
}

uint64_t type metadata accessor for StaticCluster(uint64_t a1)
{
  result = qword_1EE07CD10;
  if (!qword_1EE07CD10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1A324EC(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  type metadata accessor for StaticColorControlCluster(0);
  v2[4] = swift_task_alloc();
  type metadata accessor for StaticOnOffCluster(0);
  v2[5] = swift_task_alloc();
  v2[6] = type metadata accessor for StaticCluster(0);
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();
  v2[9] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649588, &unk_1D1E940A0);
  v2[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A32620, 0, 0);
}

uint64_t sub_1D1A32620()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(*(v0 + 72) + 48);
  *(v0 + 128) = v4;
  sub_1D1A386E0(v2, v1, type metadata accessor for StaticCluster);
  sub_1D17419CC(v3, v1 + v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload != 4)
  {
    if (EnumCaseMultiPayload != 1)
    {
LABEL_15:
      sub_1D1741A30(*(v0 + 80), &qword_1EC649588, &unk_1D1E940A0);

      v15 = *(v0 + 8);

      return v15();
    }

    sub_1D1A386E0(*(v0 + 80), *(v0 + 64), type metadata accessor for StaticCluster);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
    v6 = swift_dynamicCast();
    v7 = *(v0 + 64);
    if (v6)
    {
      v8 = *(v0 + 137);
      sub_1D1A377A0(v7, *(v0 + 40), type metadata accessor for StaticOnOffCluster);
      if (v8)
      {
        v9 = swift_task_alloc();
        *(v0 + 96) = v9;
        *v9 = v0;
        v9[1] = sub_1D1A32AD0;

        return StaticOnOffCluster.off()();
      }

      else
      {
        v16 = swift_task_alloc();
        *(v0 + 88) = v16;
        *v16 = v0;
        v16[1] = sub_1D1A329B0;

        return StaticOnOffCluster.on()();
      }
    }

    v14 = type metadata accessor for StaticOnOffCluster;
LABEL_14:
    sub_1D1A38680(v7, v14);
    goto LABEL_15;
  }

  sub_1D1A386E0(*(v0 + 80), *(v0 + 56), type metadata accessor for StaticCluster);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if (!swift_dynamicCast())
  {
    v7 = *(v0 + 56);
    v14 = type metadata accessor for StaticColorControlCluster;
    goto LABEL_14;
  }

  v11 = *(v0 + 132);
  v12 = *(v0 + 136);
  sub_1D1A377A0(*(v0 + 56), *(v0 + 32), type metadata accessor for StaticColorControlCluster);
  *(v0 + 138) = v11;
  *(v0 + 142) = v12;
  v13 = swift_task_alloc();
  *(v0 + 112) = v13;
  *v13 = v0;
  v13[1] = sub_1D1A32DB0;

  return StaticColorControlCluster.run(command:)(v0 + 138);
}

uint64_t sub_1D1A329B0()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 104) = v0;
    v3 = sub_1D1A32CCC;
  }

  else
  {
    v3 = sub_1D1A32BF0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A32AD0()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 104) = v0;
    v3 = sub_1D1A32CCC;
  }

  else
  {
    v3 = sub_1D1A32BF0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A32BF0()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  sub_1D1A38680(*(v0 + 40), type metadata accessor for StaticOnOffCluster);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1));
  sub_1D1A38680(v2, type metadata accessor for StaticCluster);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1A32CCC()
{
  sub_1D1A38680(*(v0 + 40), type metadata accessor for StaticOnOffCluster);
  v1 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1((v1 + *(v0 + 128)));
  sub_1D1A38680(v1, type metadata accessor for StaticCluster);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1A32DB0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_1D1A32FA0;
  }

  else
  {
    v2 = sub_1D1A32EC4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A32EC4()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  sub_1D1A38680(*(v0 + 32), type metadata accessor for StaticColorControlCluster);
  __swift_destroy_boxed_opaque_existential_1((v2 + v1));
  sub_1D1A38680(v2, type metadata accessor for StaticCluster);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D1A32FA0()
{
  sub_1D1A38680(*(v0 + 32), type metadata accessor for StaticColorControlCluster);
  v1 = *(v0 + 80);
  __swift_destroy_boxed_opaque_existential_1((v1 + *(v0 + 128)));
  sub_1D1A38680(v1, type metadata accessor for StaticCluster);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1D1A33088(uint64_t a1)
{
  v2 = sub_1D1A3774C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A330C4(uint64_t a1)
{
  v2 = sub_1D1A3774C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A33100()
{
  v1 = *v0;
  v2 = 0x666E496369736162;
  v3 = 0x6E6F436C6576656CLL;
  v4 = 0x6E6F43726F6C6F63;
  if (v1 != 4)
  {
    v4 = 0x756F537265776F70;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x66664F6E6FLL;
  if (v1 != 1)
  {
    v5 = 0x6B636F4C726F6F64;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1D1A331D4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1A38470(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1A331FC(uint64_t a1)
{
  v2 = sub_1D1A37554();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A33238(uint64_t a1)
{
  v2 = sub_1D1A37554();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A33274(uint64_t a1)
{
  v2 = sub_1D1A375FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A332B0(uint64_t a1)
{
  v2 = sub_1D1A375FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A332EC(uint64_t a1)
{
  v2 = sub_1D1A376A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A33328(uint64_t a1)
{
  v2 = sub_1D1A376A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A33364(uint64_t a1)
{
  v2 = sub_1D1A37650();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A333A0(uint64_t a1)
{
  v2 = sub_1D1A37650();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A333DC(uint64_t a1)
{
  v2 = sub_1D1A376F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A33418(uint64_t a1)
{
  v2 = sub_1D1A376F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D1A33454(uint64_t a1)
{
  v2 = sub_1D1A375A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A33490(uint64_t a1)
{
  v2 = sub_1D1A375A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticCluster.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493A8, &qword_1D1E93700);
  v71 = *(v2 - 8);
  v72 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v70 = &v45 - v3;
  v68 = type metadata accessor for StaticClusterPowerSource(0);
  MEMORY[0x1EEE9AC00](v68);
  v69 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493B0, &qword_1D1E93708);
  v66 = *(v5 - 8);
  v67 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v65 = &v45 - v6;
  v63 = type metadata accessor for StaticColorControlCluster(0);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493B8, &qword_1D1E93710);
  v61 = *(v8 - 8);
  v62 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v60 = &v45 - v9;
  v58 = type metadata accessor for StaticLevelControlCluster(0);
  MEMORY[0x1EEE9AC00](v58);
  v59 = &v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493C0, &qword_1D1E93718);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v55 = &v45 - v11;
  v53 = type metadata accessor for StaticDoorLockCluster(0);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493C8, &qword_1D1E93720);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v45 - v13;
  v48 = type metadata accessor for StaticOnOffCluster(0);
  MEMORY[0x1EEE9AC00](v48);
  v49 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493D0, &qword_1D1E93728);
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v16 = &v45 - v15;
  v17 = type metadata accessor for StaticBasicInfoCluster(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StaticCluster(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6493D8, &qword_1D1E93730);
  v74 = *(v23 - 8);
  v75 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v45 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A37554();
  v73 = v25;
  sub_1D1E6930C();
  sub_1D1A386E0(v76, v22, type metadata accessor for StaticCluster);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v27 = v59;
      sub_1D1A377A0(v22, v59, type metadata accessor for StaticLevelControlCluster);
      v80 = 3;
      sub_1D1A37650();
      v39 = v60;
      v29 = v75;
      v30 = v73;
      sub_1D1E68DFC();
      sub_1D1A37850(&qword_1EC649410, type metadata accessor for StaticLevelControlCluster, &protocol conformance descriptor for StaticLevelControlCluster);
      v40 = v62;
      sub_1D1E68F1C();
      (*(v61 + 8))(v39, v40);
      v32 = type metadata accessor for StaticLevelControlCluster;
    }

    else
    {
      v29 = v75;
      v30 = v73;
      if (EnumCaseMultiPayload == 4)
      {
        v27 = v64;
        sub_1D1A377A0(v22, v64, type metadata accessor for StaticColorControlCluster);
        v81 = 4;
        sub_1D1A375FC();
        v33 = v65;
        sub_1D1E68DFC();
        sub_1D1A37850(&qword_1EC649400, type metadata accessor for StaticColorControlCluster, &protocol conformance descriptor for StaticColorControlCluster);
        v34 = v67;
        sub_1D1E68F1C();
        (*(v66 + 8))(v33, v34);
        v32 = type metadata accessor for StaticColorControlCluster;
      }

      else
      {
        v27 = v69;
        sub_1D1A377A0(v22, v69, type metadata accessor for StaticClusterPowerSource);
        v82 = 5;
        sub_1D1A375A8();
        v43 = v70;
        sub_1D1E68DFC();
        sub_1D1A37850(&qword_1EC6493F0, type metadata accessor for StaticClusterPowerSource, &protocol conformance descriptor for StaticClusterPowerSource);
        v44 = v72;
        sub_1D1E68F1C();
        (*(v71 + 8))(v43, v44);
        v32 = type metadata accessor for StaticClusterPowerSource;
      }
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D1A377A0(v22, v19, type metadata accessor for StaticBasicInfoCluster);
      v77 = 0;
      sub_1D1A3774C();
      v35 = v75;
      v36 = v73;
      sub_1D1E68DFC();
      sub_1D1A37850(&qword_1EC649440, type metadata accessor for StaticBasicInfoCluster, &protocol conformance descriptor for StaticBasicInfoCluster);
      v37 = v47;
      sub_1D1E68F1C();
      (*(v46 + 8))(v16, v37);
      sub_1D1A38680(v19, type metadata accessor for StaticBasicInfoCluster);
      return (*(v74 + 8))(v36, v35);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v27 = v49;
      sub_1D1A377A0(v22, v49, type metadata accessor for StaticOnOffCluster);
      v78 = 1;
      sub_1D1A376F8();
      v28 = v50;
      v29 = v75;
      v30 = v73;
      sub_1D1E68DFC();
      sub_1D1A37850(&qword_1EC649430, type metadata accessor for StaticOnOffCluster, &protocol conformance descriptor for StaticOnOffCluster);
      v31 = v52;
      sub_1D1E68F1C();
      (*(v51 + 8))(v28, v31);
      v32 = type metadata accessor for StaticOnOffCluster;
    }

    else
    {
      v27 = v54;
      sub_1D1A377A0(v22, v54, type metadata accessor for StaticDoorLockCluster);
      v79 = 2;
      sub_1D1A376A4();
      v41 = v55;
      v29 = v75;
      v30 = v73;
      sub_1D1E68DFC();
      sub_1D1A37850(&qword_1EC649420, type metadata accessor for StaticDoorLockCluster, &protocol conformance descriptor for StaticDoorLockCluster);
      v42 = v57;
      sub_1D1E68F1C();
      (*(v56 + 8))(v41, v42);
      v32 = type metadata accessor for StaticDoorLockCluster;
    }
  }

  sub_1D1A38680(v27, v32);
  return (*(v74 + 8))(v30, v29);
}

uint64_t StaticCluster.hash(into:)(uint64_t a1)
{
  v34 = a1;
  v2 = type metadata accessor for StaticClusterPowerSource(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for StaticColorControlCluster(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticLevelControlCluster(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticDoorLockCluster(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StaticOnOffCluster(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for StaticBasicInfoCluster(0);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v33 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for StaticCluster(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1A386E0(v1, v22, type metadata accessor for StaticCluster);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D1A377A0(v22, v10, type metadata accessor for StaticLevelControlCluster);
      v29 = v34;
      MEMORY[0x1D3892850](3);
      StaticLevelControlCluster.hash(into:)(v29);
      v25 = type metadata accessor for StaticLevelControlCluster;
      v26 = v10;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1D1A377A0(v22, v7, type metadata accessor for StaticColorControlCluster);
      v27 = v34;
      MEMORY[0x1D3892850](4);
      StaticColorControlCluster.hash(into:)(v27);
      v25 = type metadata accessor for StaticColorControlCluster;
      v26 = v7;
    }

    else
    {
      sub_1D1A377A0(v22, v4, type metadata accessor for StaticClusterPowerSource);
      v31 = v34;
      MEMORY[0x1D3892850](5);
      StaticClusterPowerSource.hash(into:)(v31);
      v25 = type metadata accessor for StaticClusterPowerSource;
      v26 = v4;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1A377A0(v22, v16, type metadata accessor for StaticOnOffCluster);
      MEMORY[0x1D3892850](1);
      sub_1D1E66A7C();
      sub_1D1A37850(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
      sub_1D1E676EC();
      v24 = type metadata accessor for EndpointPath(0);
      MEMORY[0x1D3892890](*&v16[*(v24 + 20)]);
      sub_1D1E6923C();
      type metadata accessor for ClusterPath(0);
      sub_1D1E6924C();
      sub_1D1E6922C();
      v25 = type metadata accessor for StaticOnOffCluster;
      v26 = v16;
    }

    else
    {
      sub_1D1A377A0(v22, v13, type metadata accessor for StaticDoorLockCluster);
      v30 = v34;
      MEMORY[0x1D3892850](2);
      StaticDoorLockCluster.hash(into:)(v30);
      v25 = type metadata accessor for StaticDoorLockCluster;
      v26 = v13;
    }
  }

  else
  {
    sub_1D1A377A0(v22, v19, type metadata accessor for StaticBasicInfoCluster);
    v28 = v34;
    MEMORY[0x1D3892850](0);
    StaticBasicInfoCluster.hash(into:)(v28);
    v25 = type metadata accessor for StaticBasicInfoCluster;
    v26 = v19;
  }

  return sub_1D1A38680(v26, v25);
}

uint64_t StaticCluster.hashValue.getter()
{
  sub_1D1E6920C();
  StaticCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticCluster.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v104 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649448, &qword_1D1E93738);
  v4 = *(v3 - 8);
  v95 = v3;
  v96 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v98 = &v77 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649450, &qword_1D1E93740);
  v93 = *(v6 - 8);
  v94 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v97 = &v77 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649458, &qword_1D1E93748);
  v92 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v103 = &v77 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649460, &qword_1D1E93750);
  v90 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v102 = &v77 - v9;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649468, &qword_1D1E93758);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v101 = &v77 - v10;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649470, &qword_1D1E93760);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v99 = &v77 - v11;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649478, &unk_1D1E93768);
  v105 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v13 = &v77 - v12;
  v106 = type metadata accessor for StaticCluster(0);
  v14 = MEMORY[0x1EEE9AC00](v106);
  v84 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v83 = &v77 - v17;
  v18 = MEMORY[0x1EEE9AC00](v16);
  v20 = &v77 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v77 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v77 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v29 = &v77 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v31 = &v77 - v30;
  v32 = a1[3];
  v109 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_1D1A37554();
  v100 = v13;
  v33 = v108;
  sub_1D1E692FC();
  if (!v33)
  {
    v78 = v26;
    v79 = v23;
    v80 = v20;
    v81 = v29;
    v34 = v99;
    v36 = v101;
    v35 = v102;
    v108 = 0;
    v37 = v103;
    v82 = v31;
    v39 = v106;
    v38 = v107;
    v40 = v104;
    v41 = v100;
    v42 = sub_1D1E68DDC();
    v43 = (2 * *(v42 + 16)) | 1;
    v110 = v42;
    v111 = v42 + 32;
    v112 = 0;
    v113 = v43;
    v44 = sub_1D18085D8();
    v45 = v38;
    if (v44 == 6 || v112 != v113 >> 1)
    {
      v51 = sub_1D1E688EC();
      swift_allocError();
      v53 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
      *v53 = v39;
      sub_1D1E68C5C();
      sub_1D1E688DC();
      (*(*(v51 - 8) + 104))(v53, *MEMORY[0x1E69E6AF8], v51);
      swift_willThrow();
      (*(v105 + 8))(v41, v45);
    }

    else
    {
      if (v44 <= 2u)
      {
        if (v44)
        {
          v46 = v108;
          if (v44 != 1)
          {
            v114 = 2;
            sub_1D1A376A4();
            v66 = v35;
            sub_1D1E68C4C();
            if (!v46)
            {
              type metadata accessor for StaticDoorLockCluster(0);
              sub_1D1A37850(&qword_1EC649498, type metadata accessor for StaticDoorLockCluster, &protocol conformance descriptor for StaticDoorLockCluster);
              v73 = v79;
              v74 = v87;
              sub_1D1E68D7C();
              v75 = v105;
              (*(v90 + 8))(v66, v74);
              (*(v75 + 8))(v41, v38);
              swift_unknownObjectRelease();
              swift_storeEnumTagMultiPayload();
              v76 = v73;
              goto LABEL_27;
            }

            (*(v105 + 8))(v41, v38);
            goto LABEL_10;
          }

          v114 = 1;
          sub_1D1A376F8();
          v47 = v36;
          v48 = v38;
          sub_1D1E68C4C();
          if (!v46)
          {
            type metadata accessor for StaticOnOffCluster(0);
            sub_1D1A37850(&qword_1EC6494A0, type metadata accessor for StaticOnOffCluster, &protocol conformance descriptor for StaticOnOffCluster);
            v49 = v78;
            v50 = v89;
            sub_1D1E68D7C();
            (*(v88 + 8))(v47, v50);
            (*(v105 + 8))(v41, v48);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v76 = v49;
LABEL_27:
            v55 = v40;
            goto LABEL_28;
          }
        }

        else
        {
          v114 = 0;
          sub_1D1A3774C();
          v48 = v38;
          v61 = v108;
          sub_1D1E68C4C();
          if (!v61)
          {
            type metadata accessor for StaticBasicInfoCluster(0);
            sub_1D1A37850(&qword_1EC6494A8, type metadata accessor for StaticBasicInfoCluster, &protocol conformance descriptor for StaticBasicInfoCluster);
            v62 = v81;
            v63 = v86;
            sub_1D1E68D7C();
            (*(v85 + 8))(v34, v63);
            (*(v105 + 8))(v41, v48);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v55 = v40;
            v76 = v62;
LABEL_28:
            v56 = v82;
            goto LABEL_29;
          }
        }

        goto LABEL_24;
      }

      v55 = v40;
      if (v44 != 3)
      {
        v56 = v82;
        if (v44 == 4)
        {
          v114 = 4;
          sub_1D1A375FC();
          v57 = v97;
          v48 = v45;
          v58 = v108;
          sub_1D1E68C4C();
          if (!v58)
          {
            type metadata accessor for StaticColorControlCluster(0);
            sub_1D1A37850(&qword_1EC649488, type metadata accessor for StaticColorControlCluster, &protocol conformance descriptor for StaticColorControlCluster);
            v59 = v83;
            v60 = v94;
            sub_1D1E68D7C();
            (*(v93 + 8))(v57, v60);
            (*(v105 + 8))(v41, v107);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v76 = v59;
LABEL_29:
            sub_1D1A377A0(v76, v56, type metadata accessor for StaticCluster);
            sub_1D1A377A0(v56, v55, type metadata accessor for StaticCluster);
            return __swift_destroy_boxed_opaque_existential_1(v109);
          }
        }

        else
        {
          v114 = 5;
          sub_1D1A375A8();
          v48 = v45;
          v67 = v108;
          sub_1D1E68C4C();
          if (!v67)
          {
            type metadata accessor for StaticClusterPowerSource(0);
            sub_1D1A37850(&qword_1EC649480, type metadata accessor for StaticClusterPowerSource, &protocol conformance descriptor for StaticClusterPowerSource);
            v68 = v84;
            v69 = v95;
            v70 = v98;
            sub_1D1E68D7C();
            (*(v96 + 8))(v70, v69);
            (*(v105 + 8))(v41, v48);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v76 = v68;
            goto LABEL_29;
          }
        }

LABEL_24:
        (*(v105 + 8))(v41, v48);
        goto LABEL_10;
      }

      v64 = v40;
      v114 = 3;
      sub_1D1A37650();
      v65 = v108;
      sub_1D1E68C4C();
      v56 = v82;
      if (!v65)
      {
        type metadata accessor for StaticLevelControlCluster(0);
        sub_1D1A37850(&qword_1EC649490, type metadata accessor for StaticLevelControlCluster, &protocol conformance descriptor for StaticLevelControlCluster);
        v71 = v80;
        v72 = v91;
        sub_1D1E68D7C();
        (*(v92 + 8))(v37, v72);
        (*(v105 + 8))(v41, v107);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v76 = v71;
        v55 = v64;
        goto LABEL_29;
      }

      (*(v105 + 8))(v41, v45);
    }

LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v109);
}

uint64_t sub_1D1A35560()
{
  sub_1D1E6920C();
  StaticCluster.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A355A4(uint64_t a1)
{
  sub_1D1E6920C();
  StaticCluster.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A35610()
{
  result = sub_1D1E6821C();
  qword_1EC6BE168 = result;
  return result;
}

id sub_1D1A35634()
{
  if (qword_1EC6422E0 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC6BE168;
  qword_1EC649398 = qword_1EC6BE168;

  return v1;
}

uint64_t static StaticCluster.expectedValueInterval.getter()
{
  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v0 = qword_1EC649398;
  v1 = qword_1EC649398;
  return v0;
}

void static StaticCluster.resetExpectedValueInterval()()
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1D1E6709C();
  __swift_project_value_buffer(v0, qword_1EE07A0B0);
  v1 = sub_1D1E6707C();
  v2 = sub_1D1E6835C();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1D16EC000, v1, v2, "StaticCluster: Resetting command expected interval to default", v3, 2u);
    MEMORY[0x1D3893640](v3, -1, -1);
  }

  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  if (qword_1EC6422E0 != -1)
  {
    swift_once();
  }

  v5 = qword_1EC649398;
  qword_1EC649398 = qword_1EC6BE168;
  v4 = qword_1EC6BE168;
}

void static StaticCluster.set(expectedValueInterval:reason:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_1EE07A0A8 != -1)
  {
    swift_once();
  }

  v5 = sub_1D1E6709C();
  __swift_project_value_buffer(v5, qword_1EE07A0B0);
  v6 = a1;
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v21 = v19;
    *v9 = 136315394;
    if (a1)
    {
      v10 = [v6 description];
      v11 = sub_1D1E6781C();
      v13 = v12;
    }

    else
    {
      v13 = 0xE300000000000000;
      v11 = 7104878;
    }

    v14 = sub_1D1B1312C(v11, v13, &v21);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = sub_1D1E6888C();
    v17 = sub_1D1B1312C(v15, v16, &v21);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_1D16EC000, v7, v8, "StaticCluster: Setting command expected interval to %s for %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v19, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  if (qword_1EC6422E8 != -1)
  {
    swift_once();
  }

  v20 = qword_1EC649398;
  qword_1EC649398 = a1;
  v18 = v6;
}

uint64_t sub_1D1A35AD8@<X0>(unsigned __int8 *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v97 = a4;
  v98 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6448C8, &qword_1D1E94060);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v96 = &v74 - v7;
  v8 = type metadata accessor for StaticClusterPowerSource(0);
  v94 = *(v8 - 8);
  v95 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v79 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649560, &unk_1D1E94068);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v93 = &v74 - v11;
  v12 = type metadata accessor for StaticDoorLockCluster(0);
  v91 = *(v12 - 8);
  v92 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v78 = &v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646F08, &unk_1D1E83910);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v90 = &v74 - v15;
  v16 = type metadata accessor for StaticColorControlCluster(0);
  v88 = *(v16 - 8);
  v89 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v77 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649568, &qword_1D1E94078);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v87 = &v74 - v19;
  v20 = type metadata accessor for StaticLevelControlCluster(0);
  v85 = *(v20 - 8);
  v86 = v20;
  MEMORY[0x1EEE9AC00](v20);
  v75 = &v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649570, &qword_1D1E94080);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v82 = &v74 - v23;
  v24 = type metadata accessor for StaticOnOffCluster(0);
  v80 = *(v24 - 8);
  v81 = v24;
  v25 = MEMORY[0x1EEE9AC00](v24);
  v84 = &v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v76 = &v74 - v27;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649578, &qword_1D1E94088);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = &v74 - v29;
  v31 = type metadata accessor for StaticBasicInfoCluster(0);
  v83 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v33 = &v74 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for ClusterPath(0);
  v35 = v34 - 8;
  v36 = MEMORY[0x1EEE9AC00](v34);
  v38 = &v74 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = MEMORY[0x1EEE9AC00](v36);
  v41 = &v74 - v40;
  MEMORY[0x1EEE9AC00](v39);
  v43 = &v74 - v42;
  v44 = *a1;
  v45 = *a2;
  v46 = a2[1];
  sub_1D1A386E0(v98, &v74 - v42, type metadata accessor for EndpointPath);
  v43[*(v35 + 28)] = v44;
  if (v44 > 11)
  {
    switch(v44)
    {
      case 12:
        sub_1D1A386E0(v43, v41, type metadata accessor for ClusterPath);
        v99 = v45;
        v100 = v46;

        v51 = v87;
        sub_1D19C801C(v41, &v99, v87);
        sub_1D1A38680(v43, type metadata accessor for ClusterPath);
        if ((*(v85 + 48))(v51, 1, v86) != 1)
        {
          v57 = v51;
          v58 = v75;
          sub_1D1A377A0(v57, v75, type metadata accessor for StaticLevelControlCluster);
          v59 = v58;
          v55 = v97;
          sub_1D1A377A0(v59, v97, type metadata accessor for StaticLevelControlCluster);
          v56 = type metadata accessor for StaticCluster(0);
          goto LABEL_33;
        }

        v52 = &qword_1EC649568;
        v53 = &qword_1D1E94078;
        break;
      case 17:
        sub_1D1A386E0(v43, v41, type metadata accessor for ClusterPath);
        v99 = v45;
        v100 = v46;

        v51 = v90;
        StaticColorControlCluster.init(path:valueSource:)(v41, &v99, v90);
        sub_1D1A38680(v43, type metadata accessor for ClusterPath);
        if ((*(v88 + 48))(v51, 1, v89) != 1)
        {
          v71 = v51;
          v72 = v77;
          sub_1D1A377A0(v71, v77, type metadata accessor for StaticColorControlCluster);
          v73 = v72;
          v55 = v97;
          sub_1D1A377A0(v73, v97, type metadata accessor for StaticColorControlCluster);
          v56 = type metadata accessor for StaticCluster(0);
          goto LABEL_33;
        }

        v52 = &qword_1EC646F08;
        v53 = &unk_1D1E83910;
        break;
      case 22:
        sub_1D1A386E0(v43, v41, type metadata accessor for ClusterPath);
        v99 = v45;
        v100 = v46;

        v51 = v93;
        StaticDoorLockCluster.init(path:valueSource:)(v41, &v99, v93);
        sub_1D1A38680(v43, type metadata accessor for ClusterPath);
        if ((*(v91 + 48))(v51, 1, v92) != 1)
        {
          v62 = v51;
          v63 = v78;
          sub_1D1A377A0(v62, v78, type metadata accessor for StaticDoorLockCluster);
          v64 = v63;
          v55 = v97;
          sub_1D1A377A0(v64, v97, type metadata accessor for StaticDoorLockCluster);
          v56 = type metadata accessor for StaticCluster(0);
          goto LABEL_33;
        }

        v52 = &qword_1EC649560;
        v53 = &unk_1D1E94068;
        break;
      default:
        goto LABEL_16;
    }

LABEL_26:
    v54 = v51;
    goto LABEL_27;
  }

  if (v44 == 1)
  {
    sub_1D1A386E0(v43, v41, type metadata accessor for ClusterPath);
    v99 = v45;
    v100 = v46;

    StaticBasicInfoCluster.init(path:valueSource:)(v41, &v99, v30);
    sub_1D1A38680(v43, type metadata accessor for ClusterPath);
    if ((*(v83 + 48))(v30, 1, v31) == 1)
    {
      v52 = &qword_1EC649578;
      v53 = &qword_1D1E94088;
      v54 = v30;
LABEL_27:
      sub_1D1741A30(v54, v52, v53);
      goto LABEL_28;
    }

    sub_1D1A377A0(v30, v33, type metadata accessor for StaticBasicInfoCluster);
    v55 = v97;
    sub_1D1A377A0(v33, v97, type metadata accessor for StaticBasicInfoCluster);
    v56 = type metadata accessor for StaticCluster(0);
    goto LABEL_33;
  }

  if (v44 == 2)
  {
    sub_1D1A386E0(v43, v41, type metadata accessor for ClusterPath);
    v99 = v45;
    v100 = v46;

    v51 = v96;
    StaticClusterPowerSource.init(path:valueSource:)(v41, &v99, v96);
    sub_1D1A38680(v43, type metadata accessor for ClusterPath);
    if ((*(v94 + 48))(v51, 1, v95) != 1)
    {
      v68 = v51;
      v69 = v79;
      sub_1D1A377A0(v68, v79, type metadata accessor for StaticClusterPowerSource);
      v70 = v69;
      v55 = v97;
      sub_1D1A377A0(v70, v97, type metadata accessor for StaticClusterPowerSource);
      v56 = type metadata accessor for StaticCluster(0);
      goto LABEL_33;
    }

    v52 = &qword_1EC6448C8;
    v53 = &qword_1D1E94060;
    goto LABEL_26;
  }

  if (v44 != 11)
  {
LABEL_16:
    sub_1D1A38680(v43, type metadata accessor for ClusterPath);
LABEL_28:
    v60 = type metadata accessor for StaticCluster(0);
    return (*(*(v60 - 8) + 56))(v97, 1, 1, v60);
  }

  sub_1D1A386E0(v43, v38, type metadata accessor for ClusterPath);
  v47 = v84;
  sub_1D1A386E0(v38, v84, type metadata accessor for ClusterPath);
  v48 = sub_1D19BE5F8(0, v38, v45, v46);
  sub_1D1A38680(v38, type metadata accessor for ClusterPath);
  sub_1D1A38680(v43, type metadata accessor for ClusterPath);
  if (v48 == 2)
  {
    sub_1D1A38680(v47, type metadata accessor for ClusterPath);
    v49 = v80;
    v50 = v81;
    v51 = v82;
    (*(v80 + 56))(v82, 1, 1, v81);
  }

  else
  {
    v50 = v81;
    v51 = v82;
    *(v47 + *(v81 + 20)) = v48 & 1;
    sub_1D1A386E0(v47, v51, type metadata accessor for StaticOnOffCluster);
    v49 = v80;
    (*(v80 + 56))(v51, 0, 1, v50);
    sub_1D1A38680(v47, type metadata accessor for StaticOnOffCluster);
  }

  if ((*(v49 + 48))(v51, 1, v50) == 1)
  {
    v52 = &qword_1EC649570;
    v53 = &qword_1D1E94080;
    goto LABEL_26;
  }

  v65 = v51;
  v66 = v76;
  sub_1D1A377A0(v65, v76, type metadata accessor for StaticOnOffCluster);
  v67 = v66;
  v55 = v97;
  sub_1D1A377A0(v67, v97, type metadata accessor for StaticOnOffCluster);
  v56 = type metadata accessor for StaticCluster(0);
LABEL_33:
  swift_storeEnumTagMultiPayload();
  return (*(*(v56 - 8) + 56))(v55, 0, 1, v56);
}

void *sub_1D1A36818()
{
  result = sub_1D179B598(&unk_1F4D60010);
  off_1EC6493A0 = result;
  return result;
}

uint64_t StaticCluster.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for StaticClusterPowerSource(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for StaticColorControlCluster(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StaticLevelControlCluster(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticDoorLockCluster(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for StaticOnOffCluster(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for StaticBasicInfoCluster(0);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v21 = &v28 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for StaticCluster(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v28 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1A386E0(v2, v24, type metadata accessor for StaticCluster);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D1A377A0(v24, v12, type metadata accessor for StaticLevelControlCluster);
      v26 = v12;
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_1D1A377A0(v24, v9, type metadata accessor for StaticColorControlCluster);
        sub_1D1A386E0(v9, a1, type metadata accessor for ClusterPath);
        return sub_1D1A38680(v9, type metadata accessor for StaticColorControlCluster);
      }

      sub_1D1A377A0(v24, v6, type metadata accessor for StaticClusterPowerSource);
      v26 = v6;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      sub_1D1A377A0(v24, v21, type metadata accessor for StaticBasicInfoCluster);
      sub_1D1A386E0(v21, a1, type metadata accessor for ClusterPath);
      return sub_1D1A38680(v21, type metadata accessor for StaticBasicInfoCluster);
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_1D1A377A0(v24, v18, type metadata accessor for StaticOnOffCluster);
      v26 = v18;
    }

    else
    {
      sub_1D1A377A0(v24, v15, type metadata accessor for StaticDoorLockCluster);
      v26 = v15;
    }
  }

  return sub_1D1A377A0(v26, a1, type metadata accessor for ClusterPath);
}

uint64_t _s13HomeDataModel13StaticClusterO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v64 = a1;
  v65 = a2;
  v2 = type metadata accessor for StaticClusterPowerSource(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v62 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for StaticColorControlCluster(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v61 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for StaticLevelControlCluster(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v59 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for StaticDoorLockCluster(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v58 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for StaticOnOffCluster(0);
  MEMORY[0x1EEE9AC00](v57);
  v60 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for StaticBasicInfoCluster(0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for StaticCluster(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = &v56 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v56 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v56 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v56 - v25;
  v27 = MEMORY[0x1EEE9AC00](v24);
  v63 = &v56 - v28;
  MEMORY[0x1EEE9AC00](v27);
  v30 = &v56 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649580, &qword_1D1E94090);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v34 = &v56 - v33;
  v35 = *(v32 + 56);
  sub_1D1A386E0(v64, &v56 - v33, type metadata accessor for StaticCluster);
  sub_1D1A386E0(v65, &v34[v35], type metadata accessor for StaticCluster);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      sub_1D1A386E0(v34, v23, type metadata accessor for StaticCluster);
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        v48 = type metadata accessor for StaticLevelControlCluster;
        v49 = v23;
        goto LABEL_31;
      }

      v50 = v59;
      sub_1D1A377A0(&v34[v35], v59, type metadata accessor for StaticLevelControlCluster);
      v43 = _s13HomeDataModel25StaticLevelControlClusterV2eeoiySbAC_ACtFZ_0(v23, v50);
      v46 = type metadata accessor for StaticLevelControlCluster;
      sub_1D1A38680(v50, type metadata accessor for StaticLevelControlCluster);
      v47 = v23;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      sub_1D1A386E0(v34, v20, type metadata accessor for StaticCluster);
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        v48 = type metadata accessor for StaticColorControlCluster;
        v49 = v20;
        goto LABEL_31;
      }

      v44 = &v34[v35];
      v45 = v61;
      sub_1D1A377A0(v44, v61, type metadata accessor for StaticColorControlCluster);
      v43 = _s13HomeDataModel25StaticColorControlClusterV2eeoiySbAC_ACtFZ_0(v20, v45);
      v46 = type metadata accessor for StaticColorControlCluster;
      sub_1D1A38680(v45, type metadata accessor for StaticColorControlCluster);
      v47 = v20;
    }

    else
    {
      sub_1D1A386E0(v34, v17, type metadata accessor for StaticCluster);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        v48 = type metadata accessor for StaticClusterPowerSource;
        v49 = v17;
        goto LABEL_31;
      }

      v52 = v62;
      sub_1D1A377A0(&v34[v35], v62, type metadata accessor for StaticClusterPowerSource);
      v43 = _s13HomeDataModel24StaticClusterPowerSourceV2eeoiySbAC_ACtFZ_0(v17, v52);
      v46 = type metadata accessor for StaticClusterPowerSource;
      sub_1D1A38680(v52, type metadata accessor for StaticClusterPowerSource);
      v47 = v17;
    }

LABEL_23:
    v53 = v46;
LABEL_24:
    sub_1D1A38680(v47, v53);
    sub_1D1A38680(v34, type metadata accessor for StaticCluster);
    return v43 & 1;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_1D1A386E0(v34, v30, type metadata accessor for StaticCluster);
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1D1A377A0(&v34[v35], v13, type metadata accessor for StaticBasicInfoCluster);
      v43 = _s13HomeDataModel22StaticBasicInfoClusterV2eeoiySbAC_ACtFZ_0(v30, v13);
      sub_1D1A38680(v13, type metadata accessor for StaticBasicInfoCluster);
      v47 = v30;
      v53 = type metadata accessor for StaticBasicInfoCluster;
      goto LABEL_24;
    }

    v48 = type metadata accessor for StaticBasicInfoCluster;
    v49 = v30;
LABEL_31:
    sub_1D1A38680(v49, v48);
    sub_1D1741A30(v34, &qword_1EC649580, &qword_1D1E94090);
LABEL_32:
    v43 = 0;
    return v43 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1D1A386E0(v34, v26, type metadata accessor for StaticCluster);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      v54 = type metadata accessor for StaticDoorLockCluster;
      goto LABEL_29;
    }

    v51 = v58;
    sub_1D1A377A0(&v34[v35], v58, type metadata accessor for StaticDoorLockCluster);
    v43 = _s13HomeDataModel21StaticDoorLockClusterV2eeoiySbAC_ACtFZ_0(v26, v51);
    v46 = type metadata accessor for StaticDoorLockCluster;
    sub_1D1A38680(v51, type metadata accessor for StaticDoorLockCluster);
    v47 = v26;
    goto LABEL_23;
  }

  v26 = v63;
  sub_1D1A386E0(v34, v63, type metadata accessor for StaticCluster);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v54 = type metadata accessor for StaticOnOffCluster;
LABEL_29:
    v48 = v54;
    v49 = v26;
    goto LABEL_31;
  }

  v37 = v60;
  sub_1D1A377A0(&v34[v35], v60, type metadata accessor for StaticOnOffCluster);
  if ((_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0() & 1) == 0 || (v38 = type metadata accessor for EndpointPath(0), *&v26[*(v38 + 20)] != *(v37 + *(v38 + 20))) || *&v26[*(v38 + 24)] != *(v37 + *(v38 + 24)) || (v39 = type metadata accessor for ClusterPath(0), dword_1D1E940B4[v26[*(v39 + 20)]] != dword_1D1E940B4[*(v37 + *(v39 + 20))]))
  {
    sub_1D1A38680(v37, type metadata accessor for StaticOnOffCluster);
    goto LABEL_35;
  }

  v40 = *(v57 + 20);
  v41 = v26[v40];
  v42 = *(v37 + v40);
  sub_1D1A38680(v37, type metadata accessor for StaticOnOffCluster);
  if (v41 != v42)
  {
LABEL_35:
    sub_1D1A38680(v26, type metadata accessor for StaticOnOffCluster);
    sub_1D1A38680(v34, type metadata accessor for StaticCluster);
    goto LABEL_32;
  }

  sub_1D1A38680(v26, type metadata accessor for StaticOnOffCluster);
  sub_1D1A38680(v34, type metadata accessor for StaticCluster);
  v43 = 1;
  return v43 & 1;
}

unint64_t sub_1D1A37554()
{
  result = qword_1EC6493E0;
  if (!qword_1EC6493E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6493E0);
  }

  return result;
}

unint64_t sub_1D1A375A8()
{
  result = qword_1EC6493E8;
  if (!qword_1EC6493E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6493E8);
  }

  return result;
}

unint64_t sub_1D1A375FC()
{
  result = qword_1EC6493F8;
  if (!qword_1EC6493F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6493F8);
  }

  return result;
}

unint64_t sub_1D1A37650()
{
  result = qword_1EC649408;
  if (!qword_1EC649408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649408);
  }

  return result;
}

unint64_t sub_1D1A376A4()
{
  result = qword_1EC649418;
  if (!qword_1EC649418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649418);
  }

  return result;
}

unint64_t sub_1D1A376F8()
{
  result = qword_1EC649428;
  if (!qword_1EC649428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649428);
  }

  return result;
}

unint64_t sub_1D1A3774C()
{
  result = qword_1EC649438;
  if (!qword_1EC649438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649438);
  }

  return result;
}

uint64_t sub_1D1A377A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A37850(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D1A37898(uint64_t a1)
{
  result = type metadata accessor for StaticBasicInfoCluster(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for StaticOnOffCluster(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for StaticDoorLockCluster(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for StaticLevelControlCluster(319);
        if (v5 <= 0x3F)
        {
          result = type metadata accessor for StaticColorControlCluster(319);
          if (v6 <= 0x3F)
          {
            result = type metadata accessor for StaticClusterPowerSource(319);
            if (v7 <= 0x3F)
            {
              swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D1A379D0()
{
  result = qword_1EC6494B8;
  if (!qword_1EC6494B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494B8);
  }

  return result;
}

unint64_t sub_1D1A37A28()
{
  result = qword_1EC6494C0;
  if (!qword_1EC6494C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494C0);
  }

  return result;
}

unint64_t sub_1D1A37A80()
{
  result = qword_1EC6494C8;
  if (!qword_1EC6494C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494C8);
  }

  return result;
}

unint64_t sub_1D1A37AD8()
{
  result = qword_1EC6494D0;
  if (!qword_1EC6494D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494D0);
  }

  return result;
}

unint64_t sub_1D1A37B30()
{
  result = qword_1EC6494D8;
  if (!qword_1EC6494D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494D8);
  }

  return result;
}

unint64_t sub_1D1A37B88()
{
  result = qword_1EC6494E0;
  if (!qword_1EC6494E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494E0);
  }

  return result;
}

unint64_t sub_1D1A37BE0()
{
  result = qword_1EC6494E8;
  if (!qword_1EC6494E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494E8);
  }

  return result;
}

unint64_t sub_1D1A37C38()
{
  result = qword_1EC6494F0;
  if (!qword_1EC6494F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494F0);
  }

  return result;
}

unint64_t sub_1D1A37C90()
{
  result = qword_1EC6494F8;
  if (!qword_1EC6494F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6494F8);
  }

  return result;
}

unint64_t sub_1D1A37CE8()
{
  result = qword_1EC649500;
  if (!qword_1EC649500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649500);
  }

  return result;
}

unint64_t sub_1D1A37D40()
{
  result = qword_1EC649508;
  if (!qword_1EC649508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649508);
  }

  return result;
}

unint64_t sub_1D1A37D98()
{
  result = qword_1EC649510;
  if (!qword_1EC649510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649510);
  }

  return result;
}

unint64_t sub_1D1A37DF0()
{
  result = qword_1EC649518;
  if (!qword_1EC649518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649518);
  }

  return result;
}

unint64_t sub_1D1A37E48()
{
  result = qword_1EC649520;
  if (!qword_1EC649520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649520);
  }

  return result;
}

unint64_t sub_1D1A37EA0()
{
  result = qword_1EC649528;
  if (!qword_1EC649528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649528);
  }

  return result;
}

unint64_t sub_1D1A37EF8()
{
  result = qword_1EC649530;
  if (!qword_1EC649530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649530);
  }

  return result;
}

unint64_t sub_1D1A37F50()
{
  result = qword_1EC649538;
  if (!qword_1EC649538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649538);
  }

  return result;
}

unint64_t sub_1D1A37FA8()
{
  result = qword_1EC649540;
  if (!qword_1EC649540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649540);
  }

  return result;
}

unint64_t sub_1D1A38000()
{
  result = qword_1EC649548;
  if (!qword_1EC649548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649548);
  }

  return result;
}

unint64_t sub_1D1A38058()
{
  result = qword_1EC649550;
  if (!qword_1EC649550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649550);
  }

  return result;
}

unint64_t sub_1D1A380B0()
{
  result = qword_1EC649558;
  if (!qword_1EC649558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649558);
  }

  return result;
}

uint64_t sub_1D1A38104(uint64_t a1, _BYTE *a2)
{
  v2 = a1;
  v3 = *a2;
  if (v3 > 0x15)
  {
    if (v3 - 24 >= 3)
    {
      if (v3 != 29)
      {
        goto LABEL_17;
      }

      v7 = sub_1D19B5690(a1);
      if (v7 == 8)
      {
LABEL_28:
        if (v2 > 65530)
        {
          switch(v2)
          {
            case 65531:
              return 0x7475626972747461;
            case 65532:
              return 0x4D65727574616566;
            case 65533:
              return 0xD000000000000011;
          }

          goto LABEL_25;
        }

        if (v2 != 65528)
        {
          if (v2 == 65529)
          {
            return 0xD000000000000015;
          }

          goto LABEL_25;
        }

        return 0xD000000000000016;
      }

      v6 = v7 | 0x80;
      return sub_1D19B37E8(v6);
    }

    LOBYTE(v13[0]) = *a2;
    result = sub_1D197C780(a1, v13);
    if (v5)
    {
      return result;
    }

LABEL_17:
    if (v2 > 65530)
    {
      if (v2 != 65531)
      {
        if (v2 != 65532)
        {
          if (v2 == 65533)
          {
            return 0xD000000000000011;
          }

          goto LABEL_25;
        }

        return 0x4D65727574616566;
      }

      return 0x7475626972747461;
    }

    if (v2 != 65528)
    {
      if (v2 == 65529)
      {
        return 0xD000000000000015;
      }

LABEL_25:
      v9 = MTRAttributeNameForID();
      if (v9)
      {
        v10 = v9;
        v11 = sub_1D1E6781C();

        return v11;
      }

      else
      {
        v13[0] = 0x2D6E776F6E6B6E75;
        v13[1] = 0xE800000000000000;
        v12 = sub_1D1E68FAC();
        MEMORY[0x1D3890F70](v12);

        return v13[0];
      }
    }

    return 0xD000000000000016;
  }

  if (*a2 > 0xAu)
  {
    if (v3 - 11 >= 2 && v3 == 19)
    {
      v6 = sub_1D19B5730(a1);
      if (v6 == 15)
      {
        goto LABEL_28;
      }

      return sub_1D19B37E8(v6);
    }

    goto LABEL_17;
  }

  if (!*a2)
  {
    if (a1 <= 65527)
    {
      if (a1 > 1)
      {
        if (a1 == 2)
        {
          return 0x694C746E65696C63;
        }

        if (a1 == 3)
        {
          return 0x73694C7374726170;
        }
      }

      else
      {
        if (!a1)
        {
          return 0xD000000000000010;
        }

        if (a1 == 1)
        {
          return 0x694C726576726573;
        }
      }

      goto LABEL_25;
    }

    goto LABEL_28;
  }

  if (v3 != 1)
  {
    goto LABEL_17;
  }

  result = sub_1D19BF704(a1);
  if (!v8)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_1D1A38470(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x666E496369736162 && a2 == 0xE90000000000006FLL;
  if (v4 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x66664F6E6FLL && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6B636F4C726F6F64 && a2 == 0xE800000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F436C6576656CLL && a2 == 0xEC0000006C6F7274 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6E6F43726F6C6F63 && a2 == 0xEC0000006C6F7274 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x756F537265776F70 && a2 == 0xEB00000000656372)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D1A38680(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A386E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t StaticClusterGroups.copyApplying(overridingAttributes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for StaticRVCClusterGroup(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v25 - v14;
  sub_1D1A3BD7C(v3, a2, type metadata accessor for StaticClusterGroups);
  sub_1D1741C08(v3, v8, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    return sub_1D1741A30(v8, &qword_1EC644778, &unk_1D1E75B10);
  }

  v26 = a2;
  sub_1D1A3BE38(v8, v15, type metadata accessor for StaticRVCClusterGroup);
  v17 = 1 << *(a1 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a1 + 64);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  if (v19)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      v24 = v26;
      sub_1D1741A30(v26, &qword_1EC644778, &unk_1D1E75B10);
      sub_1D1A3BE38(v15, v24, type metadata accessor for StaticRVCClusterGroup);
      return (*(v10 + 56))(v24, 0, 1, v9);
    }

    v19 = *(a1 + 64 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      do
      {
LABEL_11:
        v19 &= v19 - 1;

        sub_1D1928EEC(v23, v13);

        sub_1D1A3BEA0(v15, type metadata accessor for StaticRVCClusterGroup);
        result = sub_1D1A3BE38(v13, v15, type metadata accessor for StaticRVCClusterGroup);
      }

      while (v19);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for StaticClusterGroups(uint64_t a1)
{
  result = qword_1EE07C530;
  if (!qword_1EE07C530)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D1A38ABC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v17[-v3];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17[-v6];
  v8 = type metadata accessor for StaticRVCClusterGroup(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1E69E7CD0];
  sub_1D1741C08(v1, v7, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D1741A30(v7, &qword_1EC644778, &unk_1D1E75B10);
  }

  else
  {
    sub_1D1A3BE38(v7, v11, type metadata accessor for StaticRVCClusterGroup);
    v12 = StaticRVCClusterGroup.representedClusterKinds.getter();
    sub_1D19303DC(v12);
    sub_1D1A3BEA0(v11, type metadata accessor for StaticRVCClusterGroup);
  }

  v13 = type metadata accessor for StaticClusterGroups(0);
  sub_1D1741C08(v1 + *(v13 + 20), v4, &qword_1EC644790, &unk_1D1E75B48);
  v14 = type metadata accessor for StaticThermostatClusterGroup(0);
  v15 = (*(*(v14 - 8) + 48))(v4, 1, v14);
  sub_1D1741A30(v4, &qword_1EC644790, &unk_1D1E75B48);
  if (v15 != 1)
  {
    sub_1D1761BE0(&v19, 19);
    sub_1D1761BE0(&v18, 29);
  }

  return v20;
}

uint64_t sub_1D1A38D68(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  v2[21] = swift_task_alloc();
  v3 = type metadata accessor for StaticThermostatClusterGroup(0);
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  v2[25] = swift_task_alloc();
  v4 = type metadata accessor for StaticRVCClusterGroup(0);
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D1A38EF4, 0, 0);
}

uint64_t sub_1D1A38EF4()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 216);
  v3 = *(v0 + 200);
  sub_1D1741C08(*(v0 + 160), v3, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D1741A30(*(v0 + 200), &qword_1EC644778, &unk_1D1E75B10);
  }

  else
  {
    v4 = *(v0 + 152);
    sub_1D1A3BE38(*(v0 + 200), *(v0 + 224), type metadata accessor for StaticRVCClusterGroup);
    sub_1D17419CC(v4, v0 + 56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
    if (swift_dynamicCast())
    {
      v5 = *(v0 + 120);
      *(v0 + 232) = v5;
      v6 = *(v0 + 128);
      *(v0 + 114) = v6;
      *(v0 + 136) = v5;
      *(v0 + 144) = v6;
      v7 = swift_task_alloc();
      *(v0 + 240) = v7;
      *v7 = v0;
      v7[1] = sub_1D1A39310;

      return StaticRVCClusterGroup.run(command:)((v0 + 136));
    }

    sub_1D1A3BEA0(*(v0 + 224), type metadata accessor for StaticRVCClusterGroup);
  }

  v9 = *(v0 + 176);
  v10 = *(v0 + 184);
  v12 = *(v0 + 160);
  v11 = *(v0 + 168);
  v13 = type metadata accessor for StaticClusterGroups(0);
  sub_1D1741C08(v12 + *(v13 + 20), v11, &qword_1EC644790, &unk_1D1E75B48);
  if ((*(v10 + 48))(v11, 1, v9) == 1)
  {
    sub_1D1741A30(*(v0 + 168), &qword_1EC644790, &unk_1D1E75B48);
LABEL_16:

    v19 = *(v0 + 8);

    return v19();
  }

  v14 = *(v0 + 152);
  sub_1D1A3BE38(*(v0 + 168), *(v0 + 192), type metadata accessor for StaticThermostatClusterGroup);
  sub_1D17419CC(v14, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D1A3BEA0(*(v0 + 192), type metadata accessor for StaticThermostatClusterGroup);
    goto LABEL_16;
  }

  v15 = *(v0 + 96);
  v16 = *(v0 + 112);
  if (v16 < 0)
  {
    v20 = swift_task_alloc();
    *(v0 + 272) = v20;
    *v20 = v0;
    v20[1] = sub_1D1A39804;

    return StaticThermostatClusterGroup.pauseFollowingGuidance(untilTomorrow:)(v15 & 1);
  }

  else
  {
    v17 = *(v0 + 104);
    *(v0 + 113) = v15 & 1;
    v18 = swift_task_alloc();
    *(v0 + 256) = v18;
    *v18 = v0;
    v18[1] = sub_1D1A396F0;

    return StaticThermostatClusterGroup.updateSetpointHold(hold:holdUntilPresetChange:duration:)((v0 + 113), BYTE1(v15) & 1, v17, v16 & 1);
  }
}

uint64_t sub_1D1A39310()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v3 = sub_1D1A39A98;
  }

  else
  {
    sub_1D19630E4(*(v2 + 232), *(v2 + 114));
    v3 = sub_1D1A39430;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A39430()
{
  sub_1D1A3BEA0(*(v0 + 224), type metadata accessor for StaticRVCClusterGroup);
  v1 = *(v0 + 176);
  v2 = *(v0 + 184);
  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v5 = type metadata accessor for StaticClusterGroups(0);
  sub_1D1741C08(v4 + *(v5 + 20), v3, &qword_1EC644790, &unk_1D1E75B48);
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_1D1741A30(*(v0 + 168), &qword_1EC644790, &unk_1D1E75B48);
LABEL_9:

    v12 = *(v0 + 8);

    return v12();
  }

  v6 = *(v0 + 152);
  sub_1D1A3BE38(*(v0 + 168), *(v0 + 192), type metadata accessor for StaticThermostatClusterGroup);
  sub_1D17419CC(v6, v0 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643810, &qword_1D1E71F80);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1D1A3BEA0(*(v0 + 192), type metadata accessor for StaticThermostatClusterGroup);
    goto LABEL_9;
  }

  v7 = *(v0 + 96);
  v8 = *(v0 + 112);
  if (v8 < 0)
  {
    v13 = swift_task_alloc();
    *(v0 + 272) = v13;
    *v13 = v0;
    v13[1] = sub_1D1A39804;

    return StaticThermostatClusterGroup.pauseFollowingGuidance(untilTomorrow:)(v7 & 1);
  }

  else
  {
    v9 = *(v0 + 104);
    *(v0 + 113) = v7 & 1;
    v10 = swift_task_alloc();
    *(v0 + 256) = v10;
    *v10 = v0;
    v10[1] = sub_1D1A396F0;

    return StaticThermostatClusterGroup.updateSetpointHold(hold:holdUntilPresetChange:duration:)((v0 + 113), BYTE1(v7) & 1, v9, v8 & 1);
  }
}

uint64_t sub_1D1A396F0()
{
  *(*v1 + 264) = v0;

  if (v0)
  {
    v2 = sub_1D1A39924;
  }

  else
  {
    v2 = sub_1D1A39948;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A39804()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 280) = v0;
    v3 = sub_1D1A399F0;
  }

  else
  {
    v3 = sub_1D1A39948;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D1A39948()
{
  sub_1D1A3BEA0(*(v0 + 192), type metadata accessor for StaticThermostatClusterGroup);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1A399F0()
{
  sub_1D1A3BEA0(*(v0 + 192), type metadata accessor for StaticThermostatClusterGroup);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D1A39A98()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 114);
  sub_1D1A3BEA0(*(v0 + 224), type metadata accessor for StaticRVCClusterGroup);
  sub_1D19630E4(v1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t StaticClusterGroups.init(rvc:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticRVCClusterGroup(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(type metadata accessor for StaticClusterGroups(0) + 20);
  v6 = type metadata accessor for StaticThermostatClusterGroup(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  return sub_1D17B4270(a1, a2, &qword_1EC644778, &unk_1D1E75B10);
}

uint64_t StaticClusterGroups.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for StaticRVCClusterGroup(0);
  (*(*(v2 - 8) + 56))(a1, 1, 1, v2);
  v3 = *(type metadata accessor for StaticClusterGroups(0) + 20);
  v4 = type metadata accessor for StaticThermostatClusterGroup(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1 + v3, 1, 1, v4);
}

uint64_t StaticClusterGroups.init(thermostat:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for StaticRVCClusterGroup(0);
  (*(*(v4 - 8) + 56))(a2, 1, 1, v4);
  v5 = *(type metadata accessor for StaticClusterGroups(0) + 20);
  v6 = type metadata accessor for StaticThermostatClusterGroup(0);
  (*(*(v6 - 8) + 56))(a2 + v5, 1, 1, v6);
  return sub_1D17B4270(a1, a2 + v5, &qword_1EC644790, &unk_1D1E75B48);
}

uint64_t StaticClusterGroups.init(valueSource:path:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  v9 = type metadata accessor for EndpointPath(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v25 - v14;
  v17 = *a1;
  v16 = a1[1];
  v18 = type metadata accessor for StaticRVCClusterGroup(0);
  (*(*(v18 - 8) + 56))(a3, 1, 1, v18);
  v19 = *(type metadata accessor for StaticClusterGroups(0) + 20);
  v20 = type metadata accessor for StaticThermostatClusterGroup(0);
  (*(*(v20 - 8) + 56))(a3 + v19, 1, 1, v20);
  v21 = *(a2 + *(v10 + 32));
  v26 = v17;
  v27 = v16;
  v28 = v21;
  v29 = 0;
  v30 = 0;
  v31 = 0;

  v22 = DescriptorClusterDecoder.availableClusterKinds.getter();

  if (sub_1D17198DC(24, v22) && sub_1D17198DC(25, v22))
  {
    sub_1D1A3BD7C(a2, v12, type metadata accessor for EndpointPath);
    v26 = v17;
    v27 = v16;

    StaticRVCClusterGroup.init(endpointPath:valueSource:)(v12, &v26, v15);
    sub_1D17B4270(v15, a3, &qword_1EC644778, &unk_1D1E75B10);
  }

  v23 = sub_1D17198DC(19, v22);

  if (v23)
  {
    sub_1D1A3BD7C(a2, v12, type metadata accessor for EndpointPath);
    v26 = v17;
    v27 = v16;
    sub_1D1984070(v12, &v26, v8);
    sub_1D1A3BEA0(a2, type metadata accessor for EndpointPath);
    return sub_1D17B4270(v8, a3 + v19, &qword_1EC644790, &unk_1D1E75B48);
  }

  else
  {
    sub_1D1A3BEA0(a2, type metadata accessor for EndpointPath);
  }
}

uint64_t StaticClusterGroups.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v34 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v34 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6434A8, &qword_1D1E8EC00);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1D1E739C0;
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_1D1E6884C();

  v34[0] = 0xD000000000000018;
  v34[1] = 0x80000001D1EC3870;
  sub_1D1741C08(v0, v7, &qword_1EC644778, &unk_1D1E75B10);
  v9 = type metadata accessor for StaticRVCClusterGroup(0);
  v10 = (*(*(v9 - 8) + 48))(v7, 1, v9);
  sub_1D1741A30(v7, &qword_1EC644778, &unk_1D1E75B10);
  if (v10 == 1)
  {
    v11 = 0x65736C6166;
  }

  else
  {
    v11 = 1702195828;
  }

  if (v10 == 1)
  {
    v12 = 0xE500000000000000;
  }

  else
  {
    v12 = 0xE400000000000000;
  }

  MEMORY[0x1D3890F70](v11, v12);

  v13 = v34[1];
  *(v8 + 32) = v34[0];
  *(v8 + 40) = v13;
  strcpy(v34, "thermostat: ");
  BYTE5(v34[1]) = 0;
  HIWORD(v34[1]) = -5120;
  v14 = type metadata accessor for StaticClusterGroups(0);
  sub_1D1741C08(v1 + *(v14 + 20), v4, &qword_1EC644790, &unk_1D1E75B48);
  v15 = type metadata accessor for StaticThermostatClusterGroup(0);
  v16 = (*(*(v15 - 8) + 48))(v4, 1, v15);
  if (v16 == 1)
  {
    v17 = 0x65736C6166;
  }

  else
  {
    v17 = 1702195828;
  }

  if (v16 == 1)
  {
    v18 = 0xE500000000000000;
  }

  else
  {
    v18 = 0xE400000000000000;
  }

  sub_1D1741A30(v4, &qword_1EC644790, &unk_1D1E75B48);
  MEMORY[0x1D3890F70](v17, v18);

  v19 = v34[0];
  v20 = v34[1];
  v22 = *(v8 + 16);
  v21 = *(v8 + 24);
  if (v22 >= v21 >> 1)
  {
    v8 = sub_1D177CF00((v21 > 1), v22 + 1, 1, v8);
  }

  *(v8 + 16) = v22 + 1;
  v23 = v8 + 16 * v22;
  *(v23 + 32) = v19;
  *(v23 + 40) = v20;
  v34[0] = 0;
  v34[1] = 0xE000000000000000;
  sub_1D1E6884C();

  v34[0] = 0xD000000000000017;
  v34[1] = 0x80000001D1EC3890;
  sub_1D1A38ABC();
  sub_1D1785A0C();
  v24 = sub_1D1E6817C();
  v26 = v25;

  MEMORY[0x1D3890F70](v24, v26);

  v27 = v34[0];
  v28 = v34[1];
  v30 = *(v8 + 16);
  v29 = *(v8 + 24);
  if (v30 >= v29 >> 1)
  {
    v8 = sub_1D177CF00((v29 > 1), v30 + 1, 1, v8);
  }

  *(v8 + 16) = v30 + 1;
  v31 = v8 + 16 * v30;
  *(v31 + 32) = v27;
  *(v31 + 40) = v28;
  v34[0] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17B3684();
  v32 = sub_1D1E6770C();

  return v32;
}

uint64_t sub_1D1A3A62C()
{
  if (*v0)
  {
    return 0x74736F6D72656874;
  }

  else
  {
    return 6518386;
  }
}

uint64_t sub_1D1A3A664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6518386 && a2 == 0xE300000000000000;
  if (v5 || (sub_1D1E6904C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74736F6D72656874 && a2 == 0xEA00000000007461)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1D1E6904C();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_1D1A3A748(uint64_t a1)
{
  v2 = sub_1D1A3BDE4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A3A784(uint64_t a1)
{
  v2 = sub_1D1A3BDE4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticClusterGroups.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649590, &qword_1D1E94130);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A3BDE4();
  sub_1D1E6930C();
  v8[15] = 0;
  type metadata accessor for StaticRVCClusterGroup(0);
  sub_1D1A3BF48(&qword_1EC6495A0, type metadata accessor for StaticRVCClusterGroup, &protocol conformance descriptor for StaticRVCClusterGroup);
  sub_1D1E68E5C();
  if (!v1)
  {
    type metadata accessor for StaticClusterGroups(0);
    v8[14] = 1;
    type metadata accessor for StaticThermostatClusterGroup(0);
    sub_1D1A3BF48(&qword_1EC6495A8, type metadata accessor for StaticThermostatClusterGroup, &protocol conformance descriptor for StaticThermostatClusterGroup);
    sub_1D1E68E5C();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t StaticClusterGroups.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v23 = a1;
  v24 = type metadata accessor for StaticThermostatClusterGroup(0);
  v3 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v22 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v21 - v6;
  v8 = type metadata accessor for StaticRVCClusterGroup(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v21 - v13;
  v15 = v2;
  sub_1D1741C08(v2, &v21 - v13, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    v16 = v23;
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A3BE38(v14, v11, type metadata accessor for StaticRVCClusterGroup);
    v17 = v23;
    sub_1D1E6922C();
    StaticRVCClusterGroup.hash(into:)(v17);
    sub_1D1A3BEA0(v11, type metadata accessor for StaticRVCClusterGroup);
    v16 = v17;
  }

  v18 = type metadata accessor for StaticClusterGroups(0);
  sub_1D1741C08(v15 + *(v18 + 20), v7, &qword_1EC644790, &unk_1D1E75B48);
  if ((*(v3 + 48))(v7, 1, v24) == 1)
  {
    return sub_1D1E6922C();
  }

  v20 = v22;
  sub_1D1A3BE38(v7, v22, type metadata accessor for StaticThermostatClusterGroup);
  sub_1D1E6922C();
  StaticThermostatClusterGroup.hash(into:)(v16);
  return sub_1D1A3BEA0(v20, type metadata accessor for StaticThermostatClusterGroup);
}

uint64_t StaticClusterGroups.hashValue.getter()
{
  v1 = v0;
  v17 = type metadata accessor for StaticThermostatClusterGroup(0);
  v2 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v4 = &v17 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for StaticRVCClusterGroup(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  sub_1D1E6920C();
  sub_1D1741C08(v1, v14, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A3BE38(v14, v11, type metadata accessor for StaticRVCClusterGroup);
    sub_1D1E6922C();
    StaticRVCClusterGroup.hash(into:)(v18);
    sub_1D1A3BEA0(v11, type metadata accessor for StaticRVCClusterGroup);
  }

  v15 = type metadata accessor for StaticClusterGroups(0);
  sub_1D1741C08(v1 + *(v15 + 20), v7, &qword_1EC644790, &unk_1D1E75B48);
  if ((*(v2 + 48))(v7, 1, v17) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A3BE38(v7, v4, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D1E6922C();
    StaticThermostatClusterGroup.hash(into:)(v18);
    sub_1D1A3BEA0(v4, type metadata accessor for StaticThermostatClusterGroup);
  }

  return sub_1D1E6926C();
}

uint64_t StaticClusterGroups.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v24 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v25 = &v22 - v6;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6495B0, &qword_1D1E94138);
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v8 = &v22 - v7;
  v9 = type metadata accessor for StaticClusterGroups(0);
  v10 = v9 - 8;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for StaticRVCClusterGroup(0);
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = *(v10 + 28);
  v15 = type metadata accessor for StaticThermostatClusterGroup(0);
  (*(*(v15 - 8) + 56))(&v12[v14], 1, 1, v15);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A3BDE4();
  v16 = v27;
  sub_1D1E692FC();
  if (!v16)
  {
    v27 = v14;
    v18 = v23;
    v17 = v24;
    v29 = 0;
    sub_1D1A3BF48(&qword_1EC6495B8, type metadata accessor for StaticRVCClusterGroup, &protocol conformance descriptor for StaticRVCClusterGroup);
    sub_1D1E68CBC();
    sub_1D17B4270(v25, v12, &qword_1EC644778, &unk_1D1E75B10);
    v28 = 1;
    sub_1D1A3BF48(&qword_1EC6495C0, type metadata accessor for StaticThermostatClusterGroup, &protocol conformance descriptor for StaticThermostatClusterGroup);
    v19 = v17;
    v20 = v26;
    sub_1D1E68CBC();
    (*(v18 + 8))(v8, v20);
    sub_1D17B4270(v19, &v12[v27], &qword_1EC644790, &unk_1D1E75B48);
    sub_1D1A3BD7C(v12, v22, type metadata accessor for StaticClusterGroups);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1D1A3BEA0(v12, type metadata accessor for StaticClusterGroups);
}

uint64_t sub_1D1A3B44C(uint64_t a1, uint64_t a2)
{
  v18 = a2;
  v19 = type metadata accessor for StaticThermostatClusterGroup(0);
  v3 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v17 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for StaticRVCClusterGroup(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v17 - v13;
  sub_1D1E6920C();
  sub_1D1741C08(v2, v14, &qword_1EC644778, &unk_1D1E75B10);
  if ((*(v9 + 48))(v14, 1, v8) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1A3BE38(v14, v11, type metadata accessor for StaticRVCClusterGroup);
    sub_1D1E6922C();
    StaticRVCClusterGroup.hash(into:)(v20);
    sub_1D1A3BEA0(v11, type metadata accessor for StaticRVCClusterGroup);
  }

  sub_1D1741C08(v2 + *(v18 + 20), v7, &qword_1EC644790, &unk_1D1E75B48);
  if ((*(v3 + 48))(v7, 1, v19) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    v15 = v17;
    sub_1D1A3BE38(v7, v17, type metadata accessor for StaticThermostatClusterGroup);
    sub_1D1E6922C();
    StaticThermostatClusterGroup.hash(into:)(v20);
    sub_1D1A3BEA0(v15, type metadata accessor for StaticThermostatClusterGroup);
  }

  return sub_1D1E6926C();
}

BOOL _s13HomeDataModel19StaticClusterGroupsV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticThermostatClusterGroup(0);
  v41 = *(v4 - 8);
  v42 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v35 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644790, &unk_1D1E75B48);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v36 = &v35 - v7;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6495E8, &qword_1D1E94378);
  MEMORY[0x1EEE9AC00](v37);
  v38 = &v35 - v8;
  v9 = type metadata accessor for StaticRVCClusterGroup(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644778, &unk_1D1E75B10);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6495F0, &qword_1D1E94380);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v35 - v18;
  v20 = *(v17 + 56);
  v39 = a1;
  sub_1D1741C08(a1, &v35 - v18, &qword_1EC644778, &unk_1D1E75B10);
  v40 = a2;
  sub_1D1741C08(a2, &v19[v20], &qword_1EC644778, &unk_1D1E75B10);
  v21 = *(v10 + 48);
  if (v21(v19, 1, v9) != 1)
  {
    sub_1D1741C08(v19, v15, &qword_1EC644778, &unk_1D1E75B10);
    if (v21(&v19[v20], 1, v9) != 1)
    {
      sub_1D1A3BE38(&v19[v20], v12, type metadata accessor for StaticRVCClusterGroup);
      v25 = _s13HomeDataModel21StaticRVCClusterGroupV2eeoiySbAC_ACtFZ_0(v15, v12);
      sub_1D1A3BEA0(v12, type metadata accessor for StaticRVCClusterGroup);
      sub_1D1A3BEA0(v15, type metadata accessor for StaticRVCClusterGroup);
      sub_1D1741A30(v19, &qword_1EC644778, &unk_1D1E75B10);
      if (!v25)
      {
        return 0;
      }

      goto LABEL_8;
    }

    sub_1D1A3BEA0(v15, type metadata accessor for StaticRVCClusterGroup);
LABEL_6:
    v22 = &qword_1EC6495F0;
    v23 = &qword_1D1E94380;
    v24 = v19;
LABEL_14:
    sub_1D1741A30(v24, v22, v23);
    return 0;
  }

  if (v21(&v19[v20], 1, v9) != 1)
  {
    goto LABEL_6;
  }

  sub_1D1741A30(v19, &qword_1EC644778, &unk_1D1E75B10);
LABEL_8:
  v26 = *(type metadata accessor for StaticClusterGroups(0) + 20);
  v27 = v38;
  v28 = *(v37 + 48);
  sub_1D1741C08(v39 + v26, v38, &qword_1EC644790, &unk_1D1E75B48);
  sub_1D1741C08(v40 + v26, v27 + v28, &qword_1EC644790, &unk_1D1E75B48);
  v29 = v42;
  v30 = *(v41 + 48);
  if (v30(v27, 1, v42) == 1)
  {
    if (v30(v27 + v28, 1, v29) == 1)
    {
      sub_1D1741A30(v27, &qword_1EC644790, &unk_1D1E75B48);
      return 1;
    }

    goto LABEL_13;
  }

  v31 = v36;
  sub_1D1741C08(v27, v36, &qword_1EC644790, &unk_1D1E75B48);
  if (v30(v27 + v28, 1, v29) == 1)
  {
    sub_1D1A3BEA0(v31, type metadata accessor for StaticThermostatClusterGroup);
LABEL_13:
    v22 = &qword_1EC6495E8;
    v23 = &qword_1D1E94378;
    v24 = v27;
    goto LABEL_14;
  }

  v33 = v35;
  sub_1D1A3BE38(v27 + v28, v35, type metadata accessor for StaticThermostatClusterGroup);
  v34 = _s13HomeDataModel28StaticThermostatClusterGroupV2eeoiySbAC_ACtFZ_0(v31, v33);
  sub_1D1A3BEA0(v33, type metadata accessor for StaticThermostatClusterGroup);
  sub_1D1A3BEA0(v31, type metadata accessor for StaticThermostatClusterGroup);
  sub_1D1741A30(v27, &qword_1EC644790, &unk_1D1E75B48);
  return v34;
}

uint64_t sub_1D1A3BD7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D1A3BDE4()
{
  result = qword_1EC649598;
  if (!qword_1EC649598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC649598);
  }

  return result;
}

uint64_t sub_1D1A3BE38(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D1A3BEA0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D1A3BF48(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D1A3BFB8(uint64_t a1)
{
  sub_1D1A3C074(319, qword_1EE07C378, type metadata accessor for StaticRVCClusterGroup);
  if (v1 <= 0x3F)
  {
    sub_1D1A3C074(319, qword_1EE07B918, type metadata accessor for StaticThermostatClusterGroup);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D1A3C074(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D1E685AC();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D1A3C0DC()
{
  result = qword_1EC6495D0;
  if (!qword_1EC6495D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6495D0);
  }

  return result;
}

unint64_t sub_1D1A3C134()
{
  result = qword_1EC6495D8;
  if (!qword_1EC6495D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6495D8);
  }

  return result;
}

unint64_t sub_1D1A3C18C()
{
  result = qword_1EC6495E0;
  if (!qword_1EC6495E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6495E0);
  }

  return result;
}

uint64_t StaticEndpoint.activateCHIPPairingModeAndCreateSetupPayloadString()()
{
  v1 = swift_task_alloc();
  *(v0 + 160) = v1;
  *v1 = v0;
  v1[1] = sub_1D1A3C270;

  return sub_1D1A42D00();
}

uint64_t sub_1D1A3C270(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D1A3C370, 0, 0);
}

uint64_t sub_1D1A3C370()
{
  v1 = v0[21];
  if (v1)
  {
    v0[2] = v0;
    v0[7] = v0 + 18;
    v0[3] = sub_1D1A3C4C8;
    v2 = swift_continuation_init();
    v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644788, &qword_1D1E75B28);
    v0[10] = MEMORY[0x1E69E9820];
    v0[11] = 1107296256;
    v0[12] = sub_1D17FC60C;
    v0[13] = &block_descriptor_34;
    v0[14] = v2;
    [v1 activateCHIPPairingModeAndCreateSetupPayloadStringWithCompletion_];

    return MEMORY[0x1EEE6DEC8](v0 + 2);
  }

  else
  {
    v3 = v0[1];

    return v3(0, 0);
  }
}

uint64_t sub_1D1A3C4C8()
{
  v1 = *(*v0 + 48);
  *(*v0 + 176) = v1;
  if (v1)
  {
    v2 = sub_1D1A3C648;
  }

  else
  {
    v2 = sub_1D1A3C5D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D1A3C5D8()
{
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);

  v3 = *(v0 + 8);

  return v3(v2, v1);
}

uint64_t sub_1D1A3C648(uint64_t a1)
{
  v2 = *(v1 + 168);
  swift_willThrow();

  v3 = *(v1 + 8);

  return v3();
}

uint64_t StaticEndpoint.set(name:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for EndpointPath(0);
  v3[12] = swift_task_alloc();
  v3[13] = sub_1D1E67E1C();
  v3[14] = sub_1D1E67E0C();
  v3[15] = sub_1D1E67E0C();
  v4 = swift_task_alloc();
  v3[16] = v4;
  *v4 = v3;
  v4[1] = sub_1D1A3C7B0;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A3C7B0(uint64_t a1)
{
  *(*v1 + 136) = a1;

  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A3C8F4, v3, v2);
}

uint64_t sub_1D1A3C8F4()
{
  v1 = *(v0 + 136);

  if (v1)
  {
    v2 = *(v0 + 136);
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);
    v6 = *(type metadata accessor for StaticEndpoint(0) + 20);
    *(v0 + 152) = v6;
    v7 = *(v5 + v6 + *(v4 + 20));
    sub_1D1A43740(v5 + v6, v3, type metadata accessor for EndpointPath);
    v8 = HMHomeManager.matterDevice(with:inHomeWithID:)(v7, v3);
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;

    *(v0 + 144) = v8;
    v10 = sub_1D1E66A7C();
    (*(*(v10 - 8) + 8))(v3, v10);
    v11 = sub_1D1E67D4C();
    v13 = v12;
    v14 = sub_1D1A3CA54;
  }

  else
  {
    v11 = sub_1D1E67D4C();
    v13 = v15;
    v14 = sub_1D1A4413C;
  }

  return MEMORY[0x1EEE6DFA0](v14, v11, v13);
}

uint64_t sub_1D1A3CA54()
{
  v14 = v0;
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = *(v0 + 88);
    v4 = *(v0 + 64);
    v3 = *(v0 + 72);
    v5 = *(v0 + 56);
    v6 = *(v0 + 80) + *(v0 + 152);
    ObjectType = swift_getObjectType();
    v8 = *(v6 + *(v2 + 24));
    v9 = MEMORY[0x1E69E6158];
    *(v0 + 16) = v4;
    v13[0] = 0;
    *(v0 + 40) = v9;
    *(v0 + 24) = v3;
    v10 = *(v5 + 72);

    v10(v13, v8, v0 + 16, ObjectType, v5);
    swift_unknownObjectRelease();
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t StaticEndpoint.set(roomID:)(uint64_t a1)
{
  v2[8] = a1;
  v2[9] = v1;
  v2[10] = type metadata accessor for EndpointPath(0);
  v2[11] = swift_task_alloc();
  v2[12] = sub_1D1E67E1C();
  v2[13] = sub_1D1E67E0C();
  v2[14] = sub_1D1E67E0C();
  v3 = swift_task_alloc();
  v2[15] = v3;
  *v3 = v2;
  v3[1] = sub_1D1A3CC70;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A3CC70(uint64_t a1)
{
  *(*v1 + 128) = a1;

  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A3CDB4, v3, v2);
}

uint64_t sub_1D1A3CDB4()
{
  v1 = *(v0 + 128);

  if (v1)
  {
    v2 = *(v0 + 128);
    v4 = *(v0 + 80);
    v3 = *(v0 + 88);
    v5 = *(v0 + 72);
    v6 = *(type metadata accessor for StaticEndpoint(0) + 20);
    *(v0 + 160) = v6;
    v7 = *(v5 + v6 + *(v4 + 20));
    sub_1D1A43740(v5 + v6, v3, type metadata accessor for EndpointPath);
    v8 = HMHomeManager.matterDevice(with:inHomeWithID:)(v7, v3);
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;

    *(v0 + 136) = v8;
    v10 = sub_1D1E66A7C();
    *(v0 + 144) = v10;
    v11 = *(v10 - 8);
    *(v0 + 152) = v11;
    (*(v11 + 8))(v3, v10);
    v12 = sub_1D1E67D4C();
    v14 = v13;
    v15 = sub_1D1A3CF2C;
  }

  else
  {
    v12 = sub_1D1E67D4C();
    v14 = v16;
    v15 = sub_1D1A3D060;
  }

  return MEMORY[0x1EEE6DFA0](v15, v12, v14);
}

uint64_t sub_1D1A3CF2C()
{
  v14 = v0;
  v1 = *(v0 + 136);

  if (v1)
  {
    v2 = *(v0 + 144);
    v3 = *(v0 + 152);
    v4 = *(v0 + 80);
    v5 = *(v0 + 56);
    v6 = *(v0 + 64);
    v7 = *(v0 + 72) + *(v0 + 160);
    ObjectType = swift_getObjectType();
    v13[0] = 1;
    v9 = *(v7 + *(v4 + 24));
    *(v0 + 40) = v2;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 16));
    (*(v3 + 16))(boxed_opaque_existential_1, v6, v2);
    (*(v5 + 72))(v13, v9, v0 + 16, ObjectType, v5);
    swift_unknownObjectRelease();
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D1A3D060()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t StaticEndpoint.set(shouldShowInDashboard:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 140) = a1;
  *(v2 + 72) = type metadata accessor for EndpointPath(0);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = sub_1D1E67E1C();
  *(v2 + 96) = sub_1D1E67E0C();
  *(v2 + 104) = sub_1D1E67E0C();
  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  *v3 = v2;
  v3[1] = sub_1D1A3D1C0;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A3D1C0(uint64_t a1)
{
  *(*v1 + 120) = a1;

  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A3D304, v3, v2);
}

uint64_t sub_1D1A3D304()
{
  v1 = *(v0 + 120);

  if (v1)
  {
    v2 = *(v0 + 120);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 64);
    v6 = *(type metadata accessor for StaticEndpoint(0) + 20);
    *(v0 + 136) = v6;
    v7 = *(v5 + v6 + *(v4 + 20));
    sub_1D1A43740(v5 + v6, v3, type metadata accessor for EndpointPath);
    v8 = HMHomeManager.matterDevice(with:inHomeWithID:)(v7, v3);
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;

    *(v0 + 128) = v8;
    v10 = sub_1D1E66A7C();
    (*(*(v10 - 8) + 8))(v3, v10);
    v11 = sub_1D1E67D4C();
    v13 = v12;
    v14 = sub_1D1A3D464;
  }

  else
  {
    v11 = sub_1D1E67D4C();
    v13 = v15;
    v14 = sub_1D1A44138;
  }

  return MEMORY[0x1EEE6DFA0](v14, v11, v13);
}

uint64_t sub_1D1A3D464()
{
  v12 = v0;
  v1 = *(v0 + 128);

  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    v4 = *(v0 + 140);
    v5 = *(v0 + 64) + *(v0 + 136);
    ObjectType = swift_getObjectType();
    v11[0] = 4;
    v7 = *(v5 + *(v2 + 24));
    v8 = MEMORY[0x1E69E6370];
    *(v0 + 16) = v4;
    *(v0 + 40) = v8;
    (*(v3 + 72))(v11, v7, v0 + 16, ObjectType, v3);
    swift_unknownObjectRelease();
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t StaticEndpoint.set(favorite:)(char a1)
{
  *(v2 + 64) = v1;
  *(v2 + 140) = a1;
  *(v2 + 72) = type metadata accessor for EndpointPath(0);
  *(v2 + 80) = swift_task_alloc();
  *(v2 + 88) = sub_1D1E67E1C();
  *(v2 + 96) = sub_1D1E67E0C();
  *(v2 + 104) = sub_1D1E67E0C();
  v3 = swift_task_alloc();
  *(v2 + 112) = v3;
  *v3 = v2;
  v3[1] = sub_1D1A3D664;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A3D664(uint64_t a1)
{
  *(*v1 + 120) = a1;

  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A3D7A8, v3, v2);
}

uint64_t sub_1D1A3D7A8()
{
  v1 = *(v0 + 120);

  if (v1)
  {
    v2 = *(v0 + 120);
    v4 = *(v0 + 72);
    v3 = *(v0 + 80);
    v5 = *(v0 + 64);
    v6 = *(type metadata accessor for StaticEndpoint(0) + 20);
    *(v0 + 136) = v6;
    v7 = *(v5 + v6 + *(v4 + 20));
    sub_1D1A43740(v5 + v6, v3, type metadata accessor for EndpointPath);
    v8 = HMHomeManager.matterDevice(with:inHomeWithID:)(v7, v3);
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;

    *(v0 + 128) = v8;
    v10 = sub_1D1E66A7C();
    (*(*(v10 - 8) + 8))(v3, v10);
    v11 = sub_1D1E67D4C();
    v13 = v12;
    v14 = sub_1D1A3D908;
  }

  else
  {
    v11 = sub_1D1E67D4C();
    v13 = v15;
    v14 = sub_1D1A44138;
  }

  return MEMORY[0x1EEE6DFA0](v14, v11, v13);
}

uint64_t sub_1D1A3D908()
{
  v12 = v0;
  v1 = *(v0 + 128);

  if (v1)
  {
    v2 = *(v0 + 72);
    v3 = *(v0 + 56);
    v4 = *(v0 + 140);
    v5 = *(v0 + 64) + *(v0 + 136);
    ObjectType = swift_getObjectType();
    v11[0] = 3;
    v7 = *(v5 + *(v2 + 24));
    v8 = MEMORY[0x1E69E6370];
    *(v0 + 16) = v4;
    *(v0 + 40) = v8;
    (*(v3 + 72))(v11, v7, v0 + 16, ObjectType, v3);
    swift_unknownObjectRelease();
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v9 = *(v0 + 8);

  return v9();
}

uint64_t StaticEndpoint.set(customIconSymbol:)(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  v3[11] = type metadata accessor for EndpointPath(0);
  v3[12] = swift_task_alloc();
  v3[13] = sub_1D1E67E1C();
  v3[14] = sub_1D1E67E0C();
  v3[15] = sub_1D1E67E0C();
  v4 = swift_task_alloc();
  v3[16] = v4;
  *v4 = v3;
  v4[1] = sub_1D1A3DB08;

  return sub_1D1E387D4();
}

uint64_t sub_1D1A3DB08(uint64_t a1)
{
  *(*v1 + 136) = a1;

  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D1A3DC4C, v3, v2);
}

uint64_t sub_1D1A3DC4C()
{
  v1 = *(v0 + 136);

  if (v1)
  {
    v2 = *(v0 + 136);
    v4 = *(v0 + 88);
    v3 = *(v0 + 96);
    v5 = *(v0 + 80);
    v6 = *(type metadata accessor for StaticEndpoint(0) + 20);
    *(v0 + 152) = v6;
    v7 = *(v5 + v6 + *(v4 + 20));
    sub_1D1A43740(v5 + v6, v3, type metadata accessor for EndpointPath);
    v8 = HMHomeManager.matterDevice(with:inHomeWithID:)(v7, v3);
    *(v0 + 48) = v8;
    *(v0 + 56) = v9;

    *(v0 + 144) = v8;
    v10 = sub_1D1E66A7C();
    (*(*(v10 - 8) + 8))(v3, v10);
    v11 = sub_1D1E67D4C();
    v13 = v12;
    v14 = sub_1D1A3DDAC;
  }

  else
  {
    v11 = sub_1D1E67D4C();
    v13 = v15;
    v14 = sub_1D1A3DEE0;
  }

  return MEMORY[0x1EEE6DFA0](v14, v11, v13);
}

uint64_t sub_1D1A3DDAC()
{
  v14 = v0;
  v1 = *(v0 + 144);

  if (v1)
  {
    v2 = *(v0 + 56);
    v3 = *(v0 + 88);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80) + *(v0 + 152);
    v13[0] = 2;
    v6 = *(v5 + *(v3 + 24));
    if (v4)
    {
      v7 = *(v0 + 64);
      v8 = MEMORY[0x1E69E6158];
    }

    else
    {
      v7 = 0;
      v8 = 0;
      *(v0 + 32) = 0;
    }

    *(v0 + 16) = v7;
    *(v0 + 24) = v4;
    *(v0 + 40) = v8;
    ObjectType = swift_getObjectType();
    v10 = *(v2 + 72);

    v10(v13, v6, v0 + 16, ObjectType, v2);
    swift_unknownObjectRelease();
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t sub_1D1A3DEE0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t StaticEndpoint.primaryDeviceType.getter@<X0>(char *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for StaticEndpoint(0) + 32));

  return static MatterDeviceType.primaryDeviceType(for:)(v3, a1);
}

uint64_t StaticEndpoint.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D1E66A7C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t StaticEndpoint.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for StaticEndpoint(0) + 24));

  return v1;
}

uint64_t StaticEndpoint.deviceTypes.getter()
{
  type metadata accessor for StaticEndpoint(0);
}

uint64_t StaticEndpoint.clusters.getter()
{
  type metadata accessor for StaticEndpoint(0);
}

uint64_t StaticEndpoint.linkedEndpointIDs.getter()
{
  type metadata accessor for StaticEndpoint(0);
}

uint64_t StaticEndpoint.roomIds.getter()
{
  type metadata accessor for StaticEndpoint(0);
}

uint64_t StaticEndpoint.identifyType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for StaticEndpoint(0);
  *a1 = *(v1 + *(result + 60));
  return result;
}

uint64_t StaticEndpoint.init(id:endpointPath:name:deviceState:deviceTypes:clusters:clusterGroups:linkedEndpointIDs:roomIds:metadata:identifyTime:identifyType:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, int a13, unsigned __int8 *a14)
{
  v84 = a7;
  v85 = a8;
  v82 = a4;
  v83 = a6;
  v93 = a3;
  v94 = a5;
  v96 = a1;
  v97 = a12;
  v98 = a2;
  v88 = a13;
  v86 = a11;
  v87 = a10;
  v16 = type metadata accessor for StaticClusterGroups(0);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v95 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EndpointPath(0);
  v19 = MEMORY[0x1EEE9AC00](v18);
  v89 = &v80 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v80 - v21;
  v23 = type metadata accessor for MatterTilePath(0);
  v24 = v23 - 8;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v80 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = *a14;
  sub_1D1A43740(a2, v22, type metadata accessor for EndpointPath);
  v27 = sub_1D1E66A7C();
  v90 = *(v27 - 8);
  v28 = *(v90 + 16);
  v28(v26, v22, v27);
  v80 = v18;
  v29 = *(v18 + 24);
  v30 = *&v22[*(v18 + 20)];
  v31 = *&v22[v29];
  sub_1D1A43810(v22, type metadata accessor for EndpointPath);
  v32 = *(v24 + 28);
  v33 = &v26[*(v24 + 32)];
  v91 = v27;
  v92 = v26;
  *&v26[v32] = v30;
  v35 = v82;
  v34 = v83;
  v36 = v84;
  *v33 = v31;
  v33[2] = 0;
  v28(a9, v96, v27);
  v37 = v85;
  v38 = type metadata accessor for StaticEndpoint(0);
  sub_1D1A43740(v98, &a9[v38[5]], type metadata accessor for EndpointPath);
  *&a9[v38[12]] = v86;
  *&a9[v38[9]] = v36;
  sub_1D1A43740(v37, &a9[v38[10]], type metadata accessor for StaticClusterGroups);
  *&a9[v38[7]] = v94;
  *&a9[v38[11]] = v87;
  *&a9[v38[8]] = v34;
  v39 = &a9[v38[6]];
  *v39 = v93;
  *(v39 + 1) = v35;
  sub_1D1A43740(v97, &a9[v38[13]], type metadata accessor for MatterTileMetadata);
  v40 = &a9[v38[14]];
  v41 = BYTE2(v88);
  *v40 = v88;
  v40[2] = v41 & 1;
  a9[v38[15]] = v81;
  v42 = qword_1EE07A0A8;

  if (v42 != -1)
  {
    swift_once();
  }

  v43 = sub_1D1E6709C();
  __swift_project_value_buffer(v43, qword_1EE07A0B0);
  v44 = v89;
  sub_1D1A43740(v98, v89, type metadata accessor for EndpointPath);
  v45 = v95;
  sub_1D1A43740(v37, v95, type metadata accessor for StaticClusterGroups);

  v46 = sub_1D1E6707C();
  v47 = sub_1D1E6832C();

  v48 = v35;
  if (os_log_type_enabled(v46, v47))
  {
    v88 = v47;
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v87 = v50;
    *v49 = 136447746;
    v101 = 0xE300000000000000;
    v102[0] = v50;
    v51 = v80;
    v99 = *(v44 + *(v80 + 20));
    v100 = 3829371;
    v52 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v52);

    MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
    LOWORD(v99) = *(v44 + *(v51 + 24));
    v53 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v53);

    MEMORY[0x1D3890F70](125, 0xE100000000000000);
    v54 = v100;
    v55 = v101;
    sub_1D1A43810(v44, type metadata accessor for EndpointPath);
    v56 = sub_1D1B1312C(v54, v55, v102);

    *(v49 + 4) = v56;
    *(v49 + 12) = 2080;
    v57 = sub_1D1B1312C(v93, v48, v102);

    *(v49 + 14) = v57;
    *(v49 + 22) = 2082;
    sub_1D1785A60();
    v58 = sub_1D1E6817C();
    v60 = v34;
    v61 = sub_1D1B1312C(v58, v59, v102);

    *(v49 + 24) = v61;
    *(v49 + 32) = 2082;
    static MatterDeviceType.primaryDeviceType(for:)(v60, &v100);

    if (v100 == 28)
    {
      v62 = 0xE600000000000000;
      v63 = 0x296C6C756E28;
    }

    else
    {
      LOBYTE(v99) = v100;
      v63 = sub_1D1E6789C();
      v62 = v64;
    }

    v65 = sub_1D1B1312C(v63, v62, v102);

    *(v49 + 34) = v65;
    *(v49 + 42) = 2082;
    v66 = MTRDeviceState.description.getter(v94);
    v68 = sub_1D1B1312C(v66, v67, v102);

    *(v49 + 44) = v68;
    *(v49 + 52) = 2082;
    type metadata accessor for StaticCluster(0);
    sub_1D1785A0C();
    v69 = sub_1D1E6762C();
    v71 = v70;

    v72 = sub_1D1B1312C(v69, v71, v102);

    *(v49 + 54) = v72;
    *(v49 + 62) = 2082;
    v73 = v95;
    v74 = StaticClusterGroups.description.getter();
    v76 = v75;
    sub_1D1A43810(v73, type metadata accessor for StaticClusterGroups);
    v77 = sub_1D1B1312C(v74, v76, v102);

    *(v49 + 64) = v77;
    _os_log_impl(&dword_1D16EC000, v46, v88, "Creating StaticEndpoint: (%{public}s) name: (%s) deviceTypes:%{public}s primaryDeviceType:(%{public}s) deviceState: (%{public}s) clusters: %{public}s clusterGroup: (%{public}s)", v49, 0x48u);
    v78 = v87;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v78, -1, -1);
    MEMORY[0x1D3893640](v49, -1, -1);

    sub_1D1A43810(v97, type metadata accessor for MatterTileMetadata);
    sub_1D1A43810(v37, type metadata accessor for StaticClusterGroups);
    sub_1D1A43810(v98, type metadata accessor for EndpointPath);
    (*(v90 + 8))(v96, v91);
  }

  else
  {

    sub_1D1A43810(v97, type metadata accessor for MatterTileMetadata);
    sub_1D1A43810(v37, type metadata accessor for StaticClusterGroups);
    sub_1D1A43810(v98, type metadata accessor for EndpointPath);
    (*(v90 + 8))(v96, v91);
    sub_1D1A43810(v45, type metadata accessor for StaticClusterGroups);
    sub_1D1A43810(v44, type metadata accessor for EndpointPath);
  }

  return sub_1D1A43810(v92, type metadata accessor for MatterTilePath);
}

uint64_t sub_1D1A3EB38(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x617461646174656DLL;
    if (a1 != 9)
    {
      v6 = 0x796669746E656469;
    }

    v7 = 0x4772657473756C63;
    v8 = 0xD000000000000011;
    if (a1 != 7)
    {
      v8 = 0x7364496D6F6F72;
    }

    if (a1 != 6)
    {
      v7 = v8;
    }

    if (a1 <= 8u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 25705;
    v2 = 0x7453656369766564;
    v3 = 0x7954656369766564;
    if (a1 != 4)
    {
      v3 = 0x7372657473756C63;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 0x746E696F70646E65;
    if (a1 != 1)
    {
      v4 = 1701667182;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D1A3ECD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D1A43D58(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D1A3ED00(uint64_t a1)
{
  v2 = sub_1D1A43544();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D1A3ED3C(uint64_t a1)
{
  v2 = sub_1D1A43544();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StaticEndpoint.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6495F8, &qword_1D1E943C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A43544();
  sub_1D1E6930C();
  LOBYTE(v12) = 0;
  sub_1D1E66A7C();
  sub_1D1A43A24(&qword_1EE07B258, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D1E68F1C();
  if (!v2)
  {
    v9 = type metadata accessor for StaticEndpoint(0);
    LOBYTE(v12) = 1;
    type metadata accessor for EndpointPath(0);
    sub_1D1A43A24(&qword_1EC646B18, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath);
    sub_1D1E68F1C();
    LOBYTE(v12) = 2;
    sub_1D1E68ECC();
    v12 = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    type metadata accessor for MTRDeviceState(0);
    sub_1D1A43A24(&qword_1EC646B28, type metadata accessor for MTRDeviceState, &protocol conformance descriptor for MTRDeviceState);
    sub_1D1E68F1C();
    v12 = *(v3 + v9[8]);
    HIBYTE(v11) = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
    sub_1D1904180(&qword_1EC646B30, sub_1D18F16D8, MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    v12 = *(v3 + v9[9]);
    HIBYTE(v11) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B38, &qword_1D1E82200);
    sub_1D19001F8();
    sub_1D1E68F1C();
    LOBYTE(v12) = 6;
    type metadata accessor for StaticClusterGroups(0);
    sub_1D1A43A24(&qword_1EC646B58, type metadata accessor for StaticClusterGroups, &protocol conformance descriptor for StaticClusterGroups);
    sub_1D1E68F1C();
    v12 = *(v3 + v9[11]);
    HIBYTE(v11) = 7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B60, &qword_1D1E82208);
    sub_1D19004B4(&qword_1EC646B68, MEMORY[0x1E69E7600], MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    v12 = *(v3 + v9[12]);
    HIBYTE(v11) = 8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
    sub_1D1A43598(&qword_1EC646B10, &qword_1EE07B258, MEMORY[0x1E69695B0], MEMORY[0x1E69E64F0]);
    sub_1D1E68F1C();
    LOBYTE(v12) = 9;
    type metadata accessor for MatterTileMetadata(0);
    sub_1D1A43A24(&qword_1EC646B20, type metadata accessor for MatterTileMetadata, &protocol conformance descriptor for MatterTileMetadata);
    sub_1D1E68F1C();
    LOBYTE(v12) = 10;
    sub_1D1E68E9C();
    LOBYTE(v12) = *(v3 + v9[15]);
    HIBYTE(v11) = 11;
    sub_1D1A43634();
    sub_1D1E68E5C();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t StaticEndpoint.hash(into:)(__int128 *a1)
{
  sub_1D1E66A7C();
  sub_1D1A43A24(qword_1EE07DD78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D1E676EC();
  v3 = type metadata accessor for StaticEndpoint(0);
  v4 = v1 + v3[5];
  sub_1D1E676EC();
  v5 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1D3892890](*(v4 + *(v5 + 20)));
  sub_1D1E6923C();
  sub_1D1E678EC();
  MEMORY[0x1D3892850](*(v1 + v3[7]));
  sub_1D176DB8C(a1, *(v1 + v3[8]));
  sub_1D185BAEC(a1, *(v1 + v3[9]));
  StaticClusterGroups.hash(into:)(a1);
  sub_1D176E508(a1, *(v1 + v3[11]));
  sub_1D176D4E8(a1, *(v1 + v3[12]));
  MatterTileMetadata.hash(into:)(a1);
  if (*(v1 + v3[14] + 2) == 1)
  {
    sub_1D1E6922C();
  }

  else
  {
    sub_1D1E6922C();
    sub_1D1E6923C();
  }

  if (*(v1 + v3[15]) != 6)
  {
    sub_1D1E6922C();
  }

  return sub_1D1E6922C();
}

uint64_t StaticEndpoint.hashValue.getter()
{
  sub_1D1E6920C();
  StaticEndpoint.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t StaticEndpoint.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v41 = type metadata accessor for MatterTileMetadata(0);
  MEMORY[0x1EEE9AC00](v41);
  v42 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for StaticClusterGroups(0);
  MEMORY[0x1EEE9AC00](v43);
  v44 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = type metadata accessor for EndpointPath(0);
  MEMORY[0x1EEE9AC00](v47);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D1E66A7C();
  v45 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v50 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649610, &qword_1D1E943D0);
  v46 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v10 = &v37 - v9;
  v11 = type metadata accessor for StaticEndpoint(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D1A43544();
  v49 = v10;
  v14 = v51;
  sub_1D1E692FC();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v46;
  v38 = v11;
  v39 = v13;
  v51 = a1;
  LOBYTE(v53) = 0;
  sub_1D1A43A24(&qword_1EC644B20, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  sub_1D1E68D7C();
  v17 = *(v45 + 32);
  v18 = v39;
  v37 = v7;
  v17(v39, v50, v7);
  LOBYTE(v53) = 1;
  sub_1D1A43A24(&qword_1EC646B80, type metadata accessor for EndpointPath, &protocol conformance descriptor for EndpointPath);
  sub_1D1E68D7C();
  v19 = v38;
  sub_1D1A437A8(v6, &v18[v38[5]], type metadata accessor for EndpointPath);
  LOBYTE(v53) = 2;
  v47 = 0;
  v20 = sub_1D1E68D2C();
  v21 = &v18[v19[6]];
  *v21 = v20;
  v21[1] = v22;
  type metadata accessor for MTRDeviceState(0);
  v52 = 3;
  sub_1D1A43A24(&qword_1EC646B90, type metadata accessor for MTRDeviceState, &protocol conformance descriptor for MTRDeviceState);
  sub_1D1E68D7C();
  *&v18[v19[7]] = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643410, &qword_1D1E71890);
  v52 = 4;
  sub_1D1904180(&qword_1EC646B98, sub_1D18F1924, MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  *&v18[v19[8]] = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B38, &qword_1D1E82200);
  v52 = 5;
  sub_1D19003A4();
  sub_1D1E68D7C();
  *&v18[v19[9]] = v53;
  LOBYTE(v53) = 6;
  sub_1D1A43A24(&qword_1EC646BB8, type metadata accessor for StaticClusterGroups, &protocol conformance descriptor for StaticClusterGroups);
  v28 = v44;
  sub_1D1E68D7C();
  sub_1D1A437A8(v28, &v18[v19[10]], type metadata accessor for StaticClusterGroups);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646B60, &qword_1D1E82208);
  v52 = 7;
  sub_1D19004B4(&qword_1EC646BC0, MEMORY[0x1E69E7628], MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  *&v39[v19[11]] = v53;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6438F0, &qword_1D1E99360);
  v52 = 8;
  sub_1D1A43598(&qword_1EC646B78, &qword_1EC644B20, MEMORY[0x1E69695D0], MEMORY[0x1E69E6510]);
  sub_1D1E68D7C();
  v50 = 0;
  *&v39[v38[12]] = v53;
  LOBYTE(v53) = 9;
  sub_1D1A43A24(&qword_1EC646B88, type metadata accessor for MatterTileMetadata, &protocol conformance descriptor for MatterTileMetadata);
  v29 = v50;
  sub_1D1E68D7C();
  v50 = v29;
  if (v29)
  {
    (*(v15 + 8))(v49, v48);
    v30 = 0;
    v31 = v51;
  }

  else
  {
    sub_1D1A437A8(v42, &v39[v38[13]], type metadata accessor for MatterTileMetadata);
    LOBYTE(v53) = 10;
    v32 = v50;
    v33 = sub_1D1E68CFC();
    v50 = v32;
    if (!v32)
    {
      v34 = &v39[v38[14]];
      *v34 = v33;
      v34[2] = BYTE2(v33) & 1;
      v52 = 11;
      sub_1D1A43688();
      v35 = v50;
      sub_1D1E68CBC();
      v50 = v35;
      if (!v35)
      {
        (*(v15 + 8))(v49, v48);
        v36 = v39;
        v39[v38[15]] = v53;
        sub_1D1A43740(v36, v40, type metadata accessor for StaticEndpoint);
        __swift_destroy_boxed_opaque_existential_1(v51);
        return sub_1D1A43810(v36, type metadata accessor for StaticEndpoint);
      }
    }

    (*(v15 + 8))(v49, v48);
    v30 = 1;
    v31 = v51;
  }

  v23 = v45;
  v24 = v47;
  __swift_destroy_boxed_opaque_existential_1(v31);
  v25 = *(v23 + 8);
  v26 = v39;
  v25(v39, v37);
  if (!v24)
  {
    sub_1D1A43810(&v26[v38[5]], type metadata accessor for EndpointPath);
  }

  v27 = v38;

  sub_1D1A43810(&v26[v27[10]], type metadata accessor for StaticClusterGroups);

  if (v30)
  {
    return sub_1D1A43810(&v26[v27[13]], type metadata accessor for MatterTileMetadata);
  }

  return result;
}

uint64_t sub_1D1A4018C()
{
  sub_1D1E6920C();
  StaticEndpoint.hash(into:)(v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D1A401D0(uint64_t a1)
{
  sub_1D1E6920C();
  StaticEndpoint.hash(into:)(v2);
  return sub_1D1E6926C();
}

uint64_t StaticEndpoint.init(device:valueSource:path:roomId:accessoryName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  object = a7;
  countAndFlagsBits = a6;
  v170 = a5;
  v161 = a2;
  v168 = a1;
  v160 = a8;
  v155 = type metadata accessor for MatterTilePath(0);
  MEMORY[0x1EEE9AC00](v155);
  v171 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = type metadata accessor for StaticEndpoint(0);
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v173 = &v146 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v172 = sub_1D1E66A7C();
  v180 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v179 = &v146 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EndpointPath(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v157 = &v146 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v176 = &v146 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v154 = &v146 - v17;
  v18 = type metadata accessor for StaticClusterGroups(0);
  v19 = MEMORY[0x1EEE9AC00](v18 - 8);
  v163 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v175 = &v146 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v169 = &v146 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646AF8, &unk_1D1E97C50);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v146 - v25;
  v164 = type metadata accessor for StaticCluster(0);
  v27 = *(v164 - 8);
  v28 = MEMORY[0x1EEE9AC00](v164);
  v150 = &v146 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v149 = &v146 - v30;
  v151 = type metadata accessor for ClusterPath(0);
  MEMORY[0x1EEE9AC00](v151);
  v167 = &v146 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for MatterTileMetadata(0);
  v33 = MEMORY[0x1EEE9AC00](v32);
  v166 = &v146 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v36 = &v146 - v35;
  v38 = *a3;
  v37 = a3[1];
  v162 = v12;
  v39 = *(v12 + 24);
  v182 = a4;
  LODWORD(a4) = *(a4 + v39);
  v188 = v38;
  v189 = v37;
  v190 = a4;
  v191 = 0;
  v192 = 0;
  v193 = 0;

  v153 = DescriptorClusterDecoder.endpointIDs.getter();
  v188 = v38;
  v189 = v37;
  v190 = a4;
  v191 = 0;
  v192 = 0;
  v193 = 0;
  v156 = DescriptorClusterDecoder.deviceTypes.getter();
  if (qword_1EC642290 != -1)
  {
LABEL_49:
    swift_once();
  }

  v41 = __swift_project_value_buffer(v32, qword_1EC648EE8);
  v178 = v36;
  sub_1D1A43740(v41, v36, type metadata accessor for MatterTileMetadata);
  v188 = v38;
  v189 = v37;
  v181 = v37;
  LODWORD(v152) = a4;
  v190 = a4;
  v191 = 0;
  v192 = 0;
  v193 = 0;
  v42 = DescriptorClusterDecoder.availableClusterKinds.getter();
  a4 = v42;
  v36 = 0;
  v37 = v42 + 56;
  v43 = 1 << *(v42 + 32);
  v44 = -1;
  if (v43 < 64)
  {
    v44 = ~(-1 << v43);
  }

  v45 = v44 & *(v42 + 56);
  v46 = (v43 + 63) >> 6;
  v148 = v27;
  v27 = (v27 + 48);
  v165 = MEMORY[0x1E69E7CC8];
  v47 = v164;
  while (1)
  {
    v48 = v36;
    if (!v45)
    {
      break;
    }

LABEL_9:
    v49 = __clz(__rbit64(v45));
    v32 = *(*(a4 + 48) + (v49 | (v36 << 6)));
    LOBYTE(v185) = *(*(a4 + 48) + (v49 | (v36 << 6)));
    v45 &= v45 - 1;
    v188 = v38;
    v189 = v181;
    sub_1D1A35AD8(&v185, &v188, v182, v26);
    if ((*v27)(v26, 1, v47) == 1)
    {
      sub_1D1741A30(v26, &qword_1EC646AF8, &unk_1D1E97C50);
    }

    else
    {
      v50 = v149;
      sub_1D1A437A8(v26, v149, type metadata accessor for StaticCluster);
      sub_1D1A43740(v50, v150, type metadata accessor for StaticCluster);
      v51 = v165;
      LODWORD(v147) = swift_isUniquelyReferenced_nonNull_native();
      v188 = v51;
      v53 = sub_1D171D278(v32);
      v54 = *(v51 + 16);
      v55 = (v52 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        __break(1u);
LABEL_51:
        __break(1u);
LABEL_52:
        result = sub_1D1E690FC();
        __break(1u);
        return result;
      }

      if (*(v51 + 24) >= v56)
      {
        v47 = v164;
        if (v147)
        {
          goto LABEL_17;
        }

        v147 = v53;
        LODWORD(v165) = v52;
        sub_1D1739780();
        LOBYTE(v52) = v165;
        v53 = v147;
      }

      else
      {
        LODWORD(v165) = v52;
        sub_1D1729800(v56, v147);
        v57 = sub_1D171D278(v32);
        v58 = v52 & 1;
        LOBYTE(v52) = v165;
        if ((v165 & 1) != v58)
        {
          goto LABEL_52;
        }

        v53 = v57;
      }

      v47 = v164;
LABEL_17:
      v165 = v188;
      if (v52)
      {
        sub_1D1A436DC(v150, *(v188 + 56) + *(v148 + 9) * v53);
        sub_1D1A43810(v149, type metadata accessor for StaticCluster);
      }

      else
      {
        *(v188 + 8 * (v53 >> 6) + 64) |= 1 << v53;
        *(*(v165 + 48) + v53) = v32;
        sub_1D1A437A8(v150, *(v165 + 56) + *(v148 + 9) * v53, type metadata accessor for StaticCluster);
        sub_1D1A43810(v149, type metadata accessor for StaticCluster);
        v59 = *(v165 + 16);
        v60 = __OFADD__(v59, 1);
        v61 = v59 + 1;
        if (v60)
        {
          goto LABEL_51;
        }

        *(v165 + 16) = v61;
      }
    }
  }

  while (1)
  {
    v36 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      __break(1u);
      goto LABEL_49;
    }

    if (v36 >= v46)
    {
      break;
    }

    v45 = *(v37 + 8 * v36);
    ++v48;
    if (v45)
    {
      goto LABEL_9;
    }
  }

  ObjectType = swift_getObjectType();
  v161 = (*(v161 + 40))(ObjectType);
  v63 = v178[1];
  if (v63)
  {
    countAndFlagsBits = *v178;

    object = v63;
    v64 = v180;
    v65 = v181;
    v66 = v176;
    v67 = v167;
    v68 = v152;
    v69 = v151;
  }

  else
  {
    v65 = v181;
    v188 = v38;
    v189 = v181;
    v68 = v152;
    v70 = AttributeValueSet.defaultName(in:)(v152);
    v64 = v180;
    v66 = v176;
    v67 = v167;
    v69 = v151;
    if (v70.value._object)
    {

      countAndFlagsBits = v70.value._countAndFlagsBits;
      object = v70.value._object;
    }
  }

  sub_1D1A43740(v182, v67, type metadata accessor for EndpointPath);
  *(v67 + *(v69 + 20)) = 10;
  v188 = v38;
  v189 = v65;
  v190 = v68;
  v191 = 0;
  v192 = 0;
  v193 = 0;
  v71 = DescriptorClusterDecoder.availableClusterKinds.getter();
  v72 = sub_1D17198DC(10, v71);

  if (!v72)
  {
    LODWORD(v151) = 0;
    LODWORD(v150) = 1;
    goto LABEL_38;
  }

  v192 = v69;
  v73 = sub_1D1A43A24(&qword_1EC646A70, type metadata accessor for ClusterPath, &protocol conformance descriptor for ClusterPath);
  v193 = v73;
  v74 = __swift_allocate_boxed_opaque_existential_1(&v188);
  sub_1D1A43740(v67, v74, type metadata accessor for ClusterPath);
  v183 = v38;
  v184 = v65;
  AttributeValueSet.value(for:in:)(0, &v188, &v185);
  __swift_destroy_boxed_opaque_existential_1(&v188);
  if (v186)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    v75 = swift_dynamicCast();
    if (v75)
    {
      LODWORD(v151) = *v187;
    }

    else
    {
      LODWORD(v151) = 0;
      *v187 = 0;
    }

    v76 = v75 ^ 1;
  }

  else
  {
    sub_1D1741A30(&v185, &qword_1EC645D58, &unk_1D1E7E530);
    LODWORD(v151) = 0;
    v76 = 1;
  }

  v192 = v69;
  v193 = v73;
  v77 = __swift_allocate_boxed_opaque_existential_1(&v188);
  sub_1D1A43740(v67, v77, type metadata accessor for ClusterPath);
  v183 = v38;
  v184 = v65;
  AttributeValueSet.value(for:in:)(1, &v188, &v185);
  __swift_destroy_boxed_opaque_existential_1(&v188);
  LODWORD(v150) = v76;
  if (!v186)
  {
    sub_1D1741A30(&v185, &qword_1EC645D58, &unk_1D1E7E530);
    goto LABEL_38;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    LODWORD(v149) = 6;
    v187[0] = 6;
    goto LABEL_39;
  }

  StaticEndpoint.IdentifyType.init(rawValue:)(v188, v187);
  LODWORD(v149) = v187[0];
LABEL_39:
  v188 = v38;
  v189 = v65;
  v78 = v182;
  v79 = v154;
  sub_1D1A43740(v182, v154, type metadata accessor for EndpointPath);
  v80 = v169;
  StaticClusterGroups.init(valueSource:path:)(&v188, v79, v169);
  v81 = v162;
  static UUID.matterObjectIdentifier(deviceID:endpointID:)(*(v78 + *(v162 + 20)), v68, v179);
  sub_1D1A43740(v78, v66, type metadata accessor for EndpointPath);
  v148 = type metadata accessor for StaticClusterGroups;
  sub_1D1A43740(v80, v175, type metadata accessor for StaticClusterGroups);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643350, &qword_1D1E72040);
  v82 = v66;
  v83 = (*(v64 + 80) + 32) & ~*(v64 + 80);
  v84 = swift_allocObject();
  *(v84 + 16) = xmmword_1D1E739C0;
  v85 = *(v64 + 16);
  v86 = v172;
  v85(v84 + v83, v170, v172);
  v147 = sub_1D179BE14(v84);
  swift_setDeallocating();
  v87 = *(v64 + 8);
  v180 = v64 + 8;
  v152 = v87;
  v87(v84 + v83, v86);
  swift_deallocClassInstance();
  v88 = v166;
  sub_1D1A43740(v178, v166, type metadata accessor for MatterTileMetadata);
  sub_1D1A43740(v82, v79, type metadata accessor for EndpointPath);
  v89 = v171;
  v85(v171, v79, v86);
  v90 = *(v79 + *(v81 + 20));
  LOWORD(v81) = *(v79 + *(v81 + 24));
  sub_1D1A43810(v79, type metadata accessor for EndpointPath);
  v91 = v89 + *(v155 + 24);
  *(v89 + *(v155 + 20)) = v90;
  v92 = v176;
  *v91 = v81;
  *(v91 + 2) = 0;
  v93 = v173;
  v94 = v86;
  v95 = v92;
  v85(v173, v179, v94);
  v96 = v175;
  v97 = v159;
  sub_1D1A43740(v95, v93 + *(v159 + 20), type metadata accessor for EndpointPath);
  *(v93 + v97[12]) = v147;
  *(v93 + v97[9]) = v165;
  sub_1D1A43740(v96, v93 + v97[10], v148);
  *(v93 + v97[7]) = v161;
  *(v93 + v97[11]) = v153;
  v98 = v156;
  *(v93 + v97[8]) = v156;
  v99 = (v93 + v97[6]);
  v100 = object;
  *v99 = countAndFlagsBits;
  v99[1] = v100;
  sub_1D1A43740(v88, v93 + v97[13], type metadata accessor for MatterTileMetadata);
  v101 = v93 + v97[14];
  *v101 = v151;
  *(v101 + 2) = v150;
  *(v93 + v97[15]) = v149;
  v102 = v100;
  v103 = qword_1EE07A0A8;

  if (v103 != -1)
  {
    swift_once();
  }

  v104 = sub_1D1E6709C();
  __swift_project_value_buffer(v104, qword_1EE07A0B0);
  v105 = v157;
  sub_1D1A43740(v95, v157, type metadata accessor for EndpointPath);
  v106 = v163;
  sub_1D1A43740(v96, v163, type metadata accessor for StaticClusterGroups);

  v107 = sub_1D1E6707C();
  v108 = v96;
  v109 = v95;
  v110 = sub_1D1E6832C();

  if (os_log_type_enabled(v107, v110))
  {
    v111 = swift_slowAlloc();
    v155 = swift_slowAlloc();
    *&v185 = v155;
    *v111 = 136447746;
    v188 = 3829371;
    v189 = 0xE300000000000000;
    v112 = v98;
    v113 = v162;
    v183 = *(v105 + *(v162 + 20));
    v114 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v114);

    MEMORY[0x1D3890F70](3826988, 0xE300000000000000);
    LOWORD(v183) = *(v105 + *(v113 + 24));
    v115 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v115);

    MEMORY[0x1D3890F70](125, 0xE100000000000000);
    v116 = v188;
    v117 = v189;
    sub_1D1A43810(v105, type metadata accessor for EndpointPath);
    v118 = sub_1D1B1312C(v116, v117, &v185);

    *(v111 + 4) = v118;
    *(v111 + 12) = 2080;
    v119 = sub_1D1B1312C(countAndFlagsBits, v102, &v185);

    *(v111 + 14) = v119;
    *(v111 + 22) = 2082;
    sub_1D1785A60();
    v120 = sub_1D1E6817C();
    v122 = sub_1D1B1312C(v120, v121, &v185);

    *(v111 + 24) = v122;
    *(v111 + 32) = 2082;
    static MatterDeviceType.primaryDeviceType(for:)(v112, &v188);

    if (v188 == 28)
    {
      v123 = 0xE600000000000000;
      v124 = 0x296C6C756E28;
    }

    else
    {
      LOBYTE(v183) = v188;
      v124 = sub_1D1E6789C();
      v123 = v127;
    }

    v128 = sub_1D1B1312C(v124, v123, &v185);

    *(v111 + 34) = v128;
    *(v111 + 42) = 2082;
    v129 = MTRDeviceState.description.getter(v161);
    v131 = sub_1D1B1312C(v129, v130, &v185);

    *(v111 + 44) = v131;
    *(v111 + 52) = 2082;
    sub_1D1785A0C();
    v132 = sub_1D1E6762C();
    v134 = v133;

    v135 = sub_1D1B1312C(v132, v134, &v185);

    *(v111 + 54) = v135;
    *(v111 + 62) = 2082;
    v136 = v163;
    v137 = StaticClusterGroups.description.getter();
    v139 = v138;
    sub_1D1A43810(v136, type metadata accessor for StaticClusterGroups);
    v140 = sub_1D1B1312C(v137, v139, &v185);

    *(v111 + 64) = v140;
    _os_log_impl(&dword_1D16EC000, v107, v110, "Creating StaticEndpoint: (%{public}s) name: (%s) deviceTypes:%{public}s primaryDeviceType:(%{public}s) deviceState: (%{public}s) clusters: %{public}s clusterGroup: (%{public}s)", v111, 0x48u);
    v141 = v155;
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v141, -1, -1);
    MEMORY[0x1D3893640](v111, -1, -1);
    swift_unknownObjectRelease();

    v142 = v172;
    v143 = v152;
    v152(v170, v172);
    sub_1D1A43810(v182, type metadata accessor for EndpointPath);
    sub_1D1A43810(v171, type metadata accessor for MatterTilePath);
    sub_1D1A43810(v166, type metadata accessor for MatterTileMetadata);
    sub_1D1A43810(v175, type metadata accessor for StaticClusterGroups);
    sub_1D1A43810(v176, type metadata accessor for EndpointPath);
    v143(v179, v142);
  }

  else
  {
    swift_unknownObjectRelease();

    v125 = v172;
    v126 = v152;
    v152(v170, v172);
    sub_1D1A43810(v182, type metadata accessor for EndpointPath);
    sub_1D1A43810(v106, type metadata accessor for StaticClusterGroups);
    sub_1D1A43810(v105, type metadata accessor for EndpointPath);
    sub_1D1A43810(v171, type metadata accessor for MatterTilePath);
    sub_1D1A43810(v166, type metadata accessor for MatterTileMetadata);
    sub_1D1A43810(v108, type metadata accessor for StaticClusterGroups);
    sub_1D1A43810(v109, type metadata accessor for EndpointPath);
    v126(v179, v125);
  }

  sub_1D1A43810(v169, type metadata accessor for StaticClusterGroups);
  sub_1D1A43810(v167, type metadata accessor for ClusterPath);
  sub_1D1A43810(v178, type metadata accessor for MatterTileMetadata);
  v144 = v160;
  sub_1D1A437A8(v173, v160, type metadata accessor for StaticEndpoint);
  return (*(v158 + 56))(v144, 0, 1, v97);
}