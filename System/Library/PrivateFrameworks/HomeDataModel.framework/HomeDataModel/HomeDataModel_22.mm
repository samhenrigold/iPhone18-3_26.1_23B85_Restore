void sub_1D18CFB08(id *a1)
{
  v1 = [*a1 uniqueIdentifier];
  sub_1D1E66A5C();
}

uint64_t CharacteristicValueSet.add(values:on:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_1D1E66A7C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  if (*(v10 + 16) && (v11 = sub_1D1742188(), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
    (*(v7 + 16))(v9, a2, v6);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = v13;
    sub_1D18DC2C4(a1, sub_1D18D2F9C, 0, isUniquelyReferenced_nonNull_native, &v20);

    v15 = v20;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_1D1752B8C(v15, v9, v16);
    result = (*(v7 + 8))(v9, v6);
  }

  else
  {

    v18 = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    result = sub_1D1752B8C(a1, a2, v18);
  }

  *v3 = v20;
  return result;
}

uint64_t CharacteristicValueSet.add(values:on:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v5 = a2[3];
  v6 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v5);
  v7 = sub_1D1E66A7C();
  v9 = sub_1D18CE91C(sub_1D18DC7C4, 0, v5, v7, MEMORY[0x1E69E73E0], v6, MEMORY[0x1E69E7410], v8);
  sub_1D18D41EC(a1, v9, v3);
}

{
  v4 = a2[3];
  v5 = a2[4];
  v6 = __swift_project_boxed_opaque_existential_1(a2, v4);

  return sub_1D18D4A14(a1, v6, v2, v4, v5);
}

uint64_t CharacteristicValueSet.add<A>(values:on:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v9 = a2[3];
  v10 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v9);
  v15[4] = a3;
  v15[5] = a4;
  v15[2] = a4;
  v15[3] = swift_getKeyPath();
  v11 = sub_1D1E66A7C();
  v13 = sub_1D18CE91C(sub_1D18DC59C, v15, v9, v11, MEMORY[0x1E69E73E0], v10, MEMORY[0x1E69E7410], v12);

  sub_1D18D41EC(a1, v13, v5);
}

unint64_t CharacteristicValueSet.characteristicsAndValues(in:)(void *a1)
{
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  MEMORY[0x1EEE9AC00](v57);
  v58 = &v54 - v3;
  v65 = sub_1D1E66A7C();
  v4 = *(v65 - 8);
  v5 = MEMORY[0x1EEE9AC00](v65);
  v59 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v54 - v7;
  v9 = *v1;
  v10 = [a1 accessories];
  sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
  v11 = sub_1D1E67C1C();

  v12 = sub_1D18CED3C(v11);
  v63 = 0;

  v13 = sub_1D18D6B94(MEMORY[0x1E69E7CC0], &qword_1EC646270, &unk_1D1E7E930, &qword_1EC642C00, &qword_1D1E6E950);
  if (v12 >> 62)
  {
    goto LABEL_40;
  }

  v64 = v12 & 0xFFFFFFFFFFFFFF8;
  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v61 = v4;
    v62 = v13;
    v60 = (v4 + 2);
    if (v14)
    {
      v15 = 0;
      ++v4;
      while (2)
      {
        v16 = v15;
        while (1)
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1D3891EF0](v16, v12);
          }

          else
          {
            if (v16 >= *(v64 + 16))
            {
              goto LABEL_39;
            }

            v13 = *(v12 + 8 * v16 + 32);
          }

          v17 = v13;
          v15 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            goto LABEL_38;
          }

          v18 = [v13 uniqueIdentifier];
          sub_1D1E66A5C();

          if (*(v9 + 16))
          {
            sub_1D1742188();
            if (v19)
            {
              break;
            }
          }

          (*v4)(v8, v65);

          ++v16;
          if (v15 == v14)
          {
            goto LABEL_26;
          }
        }

        v20 = *v4;

        v56 = v20;
        v20(v8, v65);

        v21 = [v17 uniqueIdentifier];
        sub_1D1E66A5C();

        v55 = v17;
        v22 = v62;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v66 = v22;
        v24 = sub_1D1742188();
        v26 = *(v22 + 16);
        v27 = (v25 & 1) == 0;
        v28 = __OFADD__(v26, v27);
        v29 = v26 + v27;
        if (v28)
        {
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v30 = v25;
        if (*(v22 + 24) >= v29)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v43 = v24;
            sub_1D1739E28();
            v24 = v43;
          }
        }

        else
        {
          sub_1D172A2BC(v29, isUniquelyReferenced_nonNull_native);
          v24 = sub_1D1742188();
          if ((v30 & 1) != (v31 & 1))
          {
            goto LABEL_44;
          }
        }

        v32 = v66;
        v62 = v66;
        if (v30)
        {
          v33 = *(v66 + 56);
          v34 = *(v33 + 8 * v24);
          v35 = v55;
          *(v33 + 8 * v24) = v55;

          v13 = (v56)(v59, v65);
          if (v15 != v14)
          {
            continue;
          }
        }

        else
        {
          *(v66 + 8 * (v24 >> 6) + 64) |= 1 << v24;
          v36 = v32[6] + v61[9] * v24;
          v37 = v61[2];
          v54 = v24;
          v38 = v59;
          v39 = v65;
          (v37)(v36, v59, v65);
          v40 = v55;
          *(v32[7] + 8 * v54) = v55;

          v13 = (v56)(v38, v39);
          v41 = v32[2];
          v28 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v28)
          {
            goto LABEL_42;
          }

          v32[2] = v42;
          if (v15 != v14)
          {
            continue;
          }
        }

        break;
      }
    }

LABEL_26:

    v66 = sub_1D18D7DB4(MEMORY[0x1E69E7CC0]);
    v4 = (v9 + 64);
    v44 = 1 << *(v9 + 32);
    v45 = -1;
    if (v44 < 64)
    {
      v45 = ~(-1 << v44);
    }

    v46 = v45 & *(v9 + 64);
    v47 = (v44 + 63) >> 6;

    v48 = 0;
    v8 = v57;
    v12 = v58;
    if (v46)
    {
      break;
    }

LABEL_30:
    while (1)
    {
      v49 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v49 >= v47)
      {

        return v66;
      }

      v46 = v4[v49];
      ++v48;
      if (v46)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    v53 = v13;
    v64 = v12 & 0xFFFFFFFFFFFFFF8;
    v14 = sub_1D1E6873C();
    v13 = v53;
  }

  while (1)
  {
    v49 = v48;
LABEL_33:
    v50 = __clz(__rbit64(v46)) | (v49 << 6);
    (v61[2])(v12, *(v9 + 48) + v61[9] * v50, v65);
    *(v12 + *(v8 + 12)) = *(*(v9 + 56) + 8 * v50);

    v51 = v63;
    sub_1D18D05D0(&v66, v12, v62);
    v63 = v51;
    if (v51)
    {
      break;
    }

    v46 &= v46 - 1;
    v13 = sub_1D1741A30(v12, &qword_1EC6430E0, &qword_1D1E71438);
    v48 = v49;
    if (!v46)
    {
      goto LABEL_30;
    }
  }

LABEL_43:

  sub_1D1741A30(v12, &qword_1EC6430E0, &qword_1D1E71438);

  __break(1u);
LABEL_44:
  result = sub_1D1E690FC();
  __break(1u);
  return result;
}

uint64_t sub_1D18D05D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v41 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - v10;
  v12 = sub_1D1E66A7C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D1741C08(a2, v11, &qword_1EC6430E0, &qword_1D1E71438);

  v42 = v13;
  (*(v13 + 32))(v15, v11, v12);
  if (!*(a3 + 16))
  {
    return (*(v42 + 8))(v15, v12);
  }

  v16 = sub_1D1742188();
  if ((v17 & 1) == 0)
  {
    return (*(v42 + 8))(v15, v12);
  }

  v39 = v15;
  v40 = v3;
  v43 = *(*(a3 + 56) + 8 * v16);
  v18 = v41;
  sub_1D1741C08(a2, v41, &qword_1EC6430E0, &qword_1D1E71438);
  v19 = *(v18 + *(v7 + 48));
  v20 = 1 << *(v19 + 32);
  v21 = -1;
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  v22 = v21 & *(v19 + 64);
  v23 = v42 + 8;
  v24 = *(v42 + 8);
  v43 = v43;
  v41 = v12;
  v42 = v23;
  v38 = v24;
  result = v24(v18, v12);
  v26 = 0;
  v27 = (v20 + 63) >> 6;
  if (!v22)
  {
    goto LABEL_8;
  }

  do
  {
    while (1)
    {
      v30 = v26;
LABEL_18:
      v31 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
      v32 = v31 | (v30 << 6);
      v33 = *(*(v19 + 48) + v32);
      sub_1D1741970(*(v19 + 56) + 32 * v32, v46);
      LOBYTE(v47) = v33;
      sub_1D16EEE38(v46, (&v47 + 8));
LABEL_19:
      v50[0] = v47;
      v50[1] = v48;
      v51 = v49;
      if (!v49)
      {

        return v38(v39, v41);
      }

      v34 = v50[0];
      sub_1D16EEE38((v50 + 8), &v47);
      LOBYTE(v46[0]) = v34;
      v35 = HMService.subscript.getter();
      if (v35)
      {
        break;
      }

      result = __swift_destroy_boxed_opaque_existential_1(&v47);
      if (!v22)
      {
        goto LABEL_8;
      }
    }

    v36 = v35;
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    sub_1D1741970(&v47, v46);
    LOBYTE(v52) = v34;
    static HMService.convert(_:characteristicKind:)(v46, &v52, &v44);
    sub_1D1741A30(v46, &qword_1EC645D58, &unk_1D1E7E530);
    if (v45)
    {
      sub_1D16EEE38(&v44, v46);
    }

    else
    {
      sub_1D1741970(&v47, v46);
      if (v45)
      {
        sub_1D1741A30(&v44, &qword_1EC645D58, &unk_1D1E7E530);
      }
    }

    sub_1D16EEE38(v46, &v44);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v52 = *a1;
    sub_1D1752BCC(&v44, v36, isUniquelyReferenced_nonNull_native);

    result = __swift_destroy_boxed_opaque_existential_1(&v47);
    *a1 = v52;
  }

  while (v22);
LABEL_8:
  if (v27 <= v26 + 1)
  {
    v28 = v26 + 1;
  }

  else
  {
    v28 = v27;
  }

  v29 = v28 - 1;
  while (1)
  {
    v30 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v30 >= v27)
    {
      v22 = 0;
      v49 = 0;
      v26 = v29;
      v47 = 0u;
      v48 = 0u;
      goto LABEL_19;
    }

    v22 = *(v19 + 64 + 8 * v30);
    ++v26;
    if (v22)
    {
      v26 = v30;
      goto LABEL_18;
    }
  }

  __break(1u);
  return result;
}

uint64_t CharacteristicValueSet.characteristicsAndValues.getter()
{
  v2 = sub_1D1E66A7C();
  v1[37] = v2;
  v1[38] = *(v2 - 8);
  v1[39] = swift_task_alloc();
  v1[40] = swift_task_alloc();
  v1[41] = swift_task_alloc();
  v1[42] = swift_task_alloc();
  v1[43] = swift_task_alloc();
  v1[44] = swift_task_alloc();
  v1[45] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  v1[46] = swift_task_alloc();
  v1[47] = swift_task_alloc();
  v3 = swift_task_alloc();
  v4 = *v0;
  v1[48] = v3;
  v1[49] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1D18D0BB4, 0, 0);
}

uint64_t sub_1D18D0BB4()
{
  v1 = *(v0 + 392);
  v2 = sub_1D18D7DB4(MEMORY[0x1E69E7CC0]);
  v3 = *(v1 + 32);
  *(v0 + 544) = v3;
  v4 = -1;
  v5 = -1 << v3;
  v6 = *(v1 + 64);
  if (-v5 < 64)
  {
    v4 = ~(-1 << -v5);
  }

  *(v0 + 400) = v2;
  *(v0 + 408) = v2;
  *(v0 + 416) = 0;
  v7 = v4 & v6;
  if (v7)
  {
    v8 = 0;
    v9 = *(v0 + 392);
LABEL_8:
    *(v0 + 424) = v7;
    *(v0 + 432) = v8;
    v13 = *(v0 + 376);
    v12 = *(v0 + 384);
    v14 = *(v0 + 360);
    v15 = *(v0 + 296);
    v16 = *(v0 + 304);
    v17 = __clz(__rbit64(v7)) | (v8 << 6);
    v18 = *(v9 + 48) + *(v16 + 72) * v17;
    v19 = *(v16 + 16);
    *(v0 + 440) = v19;
    *(v0 + 448) = (v16 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v19(v12, v18, v15);
    v20 = *(*(v9 + 56) + 8 * v17);
    v21 = *(v14 + 48);
    (*(v16 + 32))(v13, v12, v15);
    *(v13 + v21) = v20;
    v22 = qword_1EE07AF78;

    if (v22 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EE07AF80);
    v23 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v23 == 2 || (v23 & 1) == 0)
    {
      goto LABEL_21;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v24 = *(v0 + 280);
    if (v24)
    {
      goto LABEL_18;
    }

    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);
    v24 = off_1EC649BC8;

    os_unfair_lock_unlock(&dword_1EC649BC0);
    if (v24)
    {
LABEL_18:
      *(v0 + 456) = v24;
      if (qword_1EC642358 != -1)
      {
        swift_once();
      }

      v25 = qword_1EC64ABE8;
      v26 = sub_1D18D0F6C;
      v27 = 0;
    }

    else
    {
LABEL_21:
      *(v0 + 488) = sub_1D1E67E1C();
      *(v0 + 496) = sub_1D1E67E0C();
      v28 = sub_1D1E67D4C();
      v30 = v29;
      v26 = sub_1D18D23F0;
      v25 = v28;
      v27 = v30;
    }

    return MEMORY[0x1EEE6DFA0](v26, v25, v27);
  }

  else
  {
    v10 = 0;
    v11 = ((63 - v5) >> 6) - 1;
    v9 = *(v0 + 392);
    while (v11 != v10)
    {
      v8 = v10 + 1;
      v7 = *(v9 + 8 * v10++ + 72);
      if (v7)
      {
        goto LABEL_8;
      }
    }

    v31 = *(v0 + 8);
    v32 = *(v0 + 408);

    return v31(v32);
  }
}

uint64_t sub_1D18D0F6C()
{
  v5 = v0[57];
  swift_beginAccess();
  v6 = *(v5 + 64);
  if (v6)
  {
    v7 = [v6 homes];
    sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
    v8 = sub_1D1E67C1C();

    if (v8 >> 62)
    {
LABEL_83:
      v77 = sub_1D1E6873C();
      if (v77)
      {
        v78 = v77;
        v9 = sub_1D1808600();

        sub_1D18D2FC0(v9 + 32, v78, v8);
        v80 = v79;

        if (v80 != v78)
        {
          __break(1u);
          goto LABEL_86;
        }
      }

      else
      {
LABEL_94:
        v9 = MEMORY[0x1E69E7CC0];
      }
    }

    else
    {
      v9 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v10 = v0[52];
    v0[36] = v9;
    sub_1D1747DDC(v0 + 36);
    if (v10)
    {
    }

    v2 = 0;
    v3 = v0[36];
  }

  else
  {
    v2 = v0[52];
    v3 = MEMORY[0x1E69E7CC0];
  }

  v1 = v0[55];
  v8 = v0[47];
  v12 = v0[43];
  v93 = v0;
  v13 = v0[37];
  (v1)(v0[44], v8, v13);
  (v1)(v12, v8, v13);
  v83 = v3 >> 62;
  if (!(v3 >> 62))
  {
    v89 = v3 & 0xFFFFFFFFFFFFFF8;
    v88 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    goto LABEL_12;
  }

LABEL_86:
  v89 = v3 & 0xFFFFFFFFFFFFFF8;
  v88 = sub_1D1E6873C();
LABEL_12:
  v14 = 0;
  v84 = v3;
  v86 = (v3 + 32);
  v87 = v3 & 0xC000000000000001;
  v0 = v93;
  while (1)
  {
    if (v14 == v88)
    {
      v8 = v88;
      goto LABEL_45;
    }

    v92 = v14;
    if (v87)
    {
      v15 = MEMORY[0x1D3891EF0]();
    }

    else
    {
      if (v14 >= *(v89 + 16))
      {
LABEL_79:
        __break(1u);
LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v15 = *&v86[8 * v14];
    }

    v1 = v0[55];
    v8 = v0[56];
    v17 = v0[42];
    v16 = v0[43];
    v18 = v0[41];
    v19 = v0[37];
    v90 = v15;
    v20 = [v15 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v21 = sub_1D1E67C1C();

    v4 = v21;
    (v1)(v17, v16, v19);
    (v1)(v18, v16, v19);
    v91 = (v21 >> 62);
    v94 = v21 & 0xFFFFFFFFFFFFFF8;
    v22 = v21 >> 62 ? sub_1D1E6873C() : *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v3 = 0;
    v0 = (v21 & 0xC000000000000001);
    v85 = v4 + 32;
    while (v22 != v3)
    {
      if (v0)
      {
        v1 = v4;
        v23 = MEMORY[0x1D3891EF0](v3, v4);
      }

      else
      {
        if (v3 >= *(v94 + 16))
        {
          __break(1u);
LABEL_78:
          __break(1u);
          goto LABEL_79;
        }

        v1 = v4;
        v23 = *(v4 + 8 * v3 + 32);
      }

      v24 = v23;
      v25 = v93[41];
      v26 = [v23 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v27 = sub_1D1E67C1C();

      v28 = swift_task_alloc();
      *(v28 + 16) = v25;
      v8 = sub_1D174A6C4(sub_1D1749C64, v28, v27);

      if (v8)
      {
        v22 = v3;
        v4 = v1;
        break;
      }

      v29 = __OFADD__(v3++, 1);
      v4 = v1;
      if (v29)
      {
        goto LABEL_78;
      }
    }

    if (!v91)
    {
      break;
    }

    if (v22 != sub_1D1E6873C())
    {
      goto LABEL_40;
    }

LABEL_34:
    v0 = v93;
    v8 = v93[41];
    v30 = v93[37];
    v31 = v93[38];
    v32 = *(v31 + 8);
    v1 = v31 + 8;
    v32(v93[42], v30);

    v32(v8, v30);

    v14 = v92 + 1;
    if (__OFADD__(v92, 1))
    {
      goto LABEL_80;
    }
  }

  if (v22 == *(v94 + 16))
  {
    goto LABEL_34;
  }

LABEL_40:
  if (v0)
  {
    goto LABEL_92;
  }

  if (v22 >= *(v94 + 16))
  {
    __break(1u);
    goto LABEL_94;
  }

  for (i = *(v85 + 8 * v22); ; i = MEMORY[0x1D3891EF0](v22, v4))
  {
    v34 = i;
    v0 = v93;
    v35 = v93[42];
    v37 = v93[37];
    v36 = v93[38];
    v38 = [i services];
    sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
    v4 = sub_1D1E67C1C();

    v39 = swift_task_alloc();
    *(v39 + 16) = v35;
    v40 = sub_1D174A6C4(sub_1D1778988, v39, v4);

    v42 = *(v36 + 8);
    v1 = v36 + 8;
    v41 = v42;
    v42(v35, v37);

    v43 = v93[41];
    v44 = v93[37];
    if (!v40)
    {
      goto LABEL_97;
    }

    (v41)(v43, v44);

    v8 = v92;
LABEL_45:
    v0[58] = v2;
    if (v83)
    {
      if (v8 == sub_1D1E6873C())
      {
LABEL_63:
        v56 = v0[43];
        v57 = v0[37];
        v58 = *(v0[38] + 8);
        v58(v0[44], v57);

        v58(v56, v57);
        v59 = sub_1D18D1A2C;
        goto LABEL_74;
      }
    }

    else if (v8 == *(v89 + 16))
    {
      goto LABEL_63;
    }

    if (v87)
    {
      v45 = MEMORY[0x1D3891EF0](v8, v84);
      goto LABEL_50;
    }

    if (v8 >= *(v89 + 16))
    {
      break;
    }

    v45 = *&v86[8 * v8];
LABEL_50:
    v46 = v0[55];
    v47 = v0[44];
    v49 = v0[39];
    v48 = v0[40];
    v22 = v0[37];
    v91 = v45;
    v3 = [v45 accessories];
    sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
    v4 = sub_1D1E67C1C();

    v46(v48, v47, v22);
    v46(v49, v47, v22);
    v92 = v4 >> 62;
    v95 = v4 & 0xFFFFFFFFFFFFFF8;
    if (v4 >> 62)
    {
      v8 = sub_1D1E6873C();
    }

    else
    {
      v8 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v1 = 0;
    v50 = v4 & 0xC000000000000001;
    v90 = (v4 + 32);
    while (v8 != v1)
    {
      if (v50)
      {
        v0 = v4;
        v51 = MEMORY[0x1D3891EF0](v1, v4);
      }

      else
      {
        if (v1 >= *(v95 + 16))
        {
          goto LABEL_81;
        }

        v0 = v4;
        v51 = *(v4 + 8 * v1 + 32);
      }

      v52 = v51;
      v53 = v93[39];
      v54 = [v51 services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v55 = sub_1D1E67C1C();

      v22 = swift_task_alloc();
      *(v22 + 16) = v53;
      v3 = sub_1D174A6C4(sub_1D1778988, v22, v55);

      if (v3)
      {
        v8 = v1;
        v4 = v0;
        break;
      }

      v29 = __OFADD__(v1++, 1);
      v4 = v0;
      if (v29)
      {
        goto LABEL_82;
      }
    }

    v1 = v93;
    if (v92)
    {
      v60 = sub_1D1E6873C();
    }

    else
    {
      v60 = *(v95 + 16);
    }

    if (v8 == v60)
    {
      v41 = v93[43];
      v43 = v93[44];
      v44 = v93[39];
      v62 = v93[37];
      v81 = v93[38];
      v82 = *(v81 + 8);
      v69 = (v81 + 8);
      v82(v93[40], v62);

      v82(v44, v62);
      v82(v43, v62);

      v82(v41, v62);
      __break(1u);
      goto LABEL_96;
    }

    v89 = v4;
    if (v50)
    {
      goto LABEL_90;
    }

    if (v8 < *(v95 + 16))
    {
      v61 = *(v90 + v8);
      goto LABEL_72;
    }

    __break(1u);
LABEL_92:
    ;
  }

  __break(1u);
LABEL_90:
  v61 = MEMORY[0x1D3891EF0](v8, v4);
LABEL_72:
  v43 = v61;
  v62 = v1;
  v63 = *(v1 + 320);
  v64 = v62[37];
  v65 = v62[38];
  v66 = [v61 services];
  sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
  v67 = sub_1D1E67C1C();

  v41 = swift_task_alloc();
  *(v41 + 16) = v63;
  v44 = v2;
  v68 = sub_1D174A6C4(sub_1D1778988, v41, v67);
  v62[59] = v68;
  v62[60] = v44;

  v69 = *(v65 + 8);
  v69(v63, v64);

  if (!v68)
  {
LABEL_96:
    v69(v62[39], v62[37]);
    __break(1u);
LABEL_97:
    v74 = (v41)(v43, v44);
    __break(1u);
    return MEMORY[0x1EEE6DFA0](v74, v75, v76);
  }

  v70 = v62[43];
  v71 = v62[44];
  v72 = v62[39];
  v73 = v62[37];

  v69(v72, v73);
  v69(v71, v73);

  v69(v70, v73);
  v59 = sub_1D18D1DDC;
LABEL_74:
  v74 = v59;
  v75 = 0;
  v76 = 0;

  return MEMORY[0x1EEE6DFA0](v74, v75, v76);
}

uint64_t sub_1D18D1A2C()
{

  v1 = *(v0 + 464);
  sub_1D1741A30(*(v0 + 376), &qword_1EC6430E0, &qword_1D1E71438);
  v3 = *(v0 + 424);
  v2 = *(v0 + 432);
  *(v0 + 416) = v1;
  v4 = (v3 - 1) & v3;
  if (v4)
  {
    v5 = *(v0 + 392);
LABEL_7:
    *(v0 + 424) = v4;
    *(v0 + 432) = v2;
    v8 = *(v0 + 376);
    v7 = *(v0 + 384);
    v9 = *(v0 + 360);
    v10 = *(v0 + 296);
    v11 = *(v0 + 304);
    v12 = __clz(__rbit64(v4)) | (v2 << 6);
    v13 = *(v5 + 48) + *(v11 + 72) * v12;
    v14 = *(v11 + 16);
    *(v0 + 440) = v14;
    *(v0 + 448) = (v11 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v14(v7, v13, v10);
    v15 = *(*(v5 + 56) + 8 * v12);
    v16 = *(v9 + 48);
    (*(v11 + 32))(v8, v7, v10);
    *(v8 + v16) = v15;
    v17 = qword_1EE07AF78;

    if (v17 != -1)
    {
LABEL_27:
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EE07AF80);
    v18 = byte_1EE07AF84;
    os_unfair_lock_unlock(&dword_1EE07AF80);
    if (v18 == 2 || (v18 & 1) == 0)
    {
      goto LABEL_19;
    }

    if (qword_1EC642308 != -1)
    {
      swift_once();
    }

    sub_1D1E693FC();
    v19 = *(v0 + 280);
    if (v19)
    {
      goto LABEL_16;
    }

    if (qword_1EC642310 != -1)
    {
      swift_once();
    }

    os_unfair_lock_lock(&dword_1EC649BC0);
    v19 = off_1EC649BC8;

    os_unfair_lock_unlock(&dword_1EC649BC0);
    if (v19)
    {
LABEL_16:
      *(v0 + 456) = v19;
      if (qword_1EC642358 != -1)
      {
        swift_once();
      }

      v20 = qword_1EC64ABE8;
      v21 = sub_1D18D0F6C;
      v22 = 0;
    }

    else
    {
LABEL_19:
      *(v0 + 488) = sub_1D1E67E1C();
      *(v0 + 496) = sub_1D1E67E0C();
      v23 = sub_1D1E67D4C();
      v25 = v24;
      v21 = sub_1D18D23F0;
      v20 = v23;
      v22 = v25;
    }

    return MEMORY[0x1EEE6DFA0](v21, v20, v22);
  }

  else
  {
    while (1)
    {
      v6 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      v5 = *(v0 + 392);
      if (v6 >= (((1 << *(v0 + 544)) + 63) >> 6))
      {
        break;
      }

      v4 = *(v5 + 8 * v6 + 64);
      ++v2;
      if (v4)
      {
        v2 = v6;
        goto LABEL_7;
      }
    }

    v26 = *(v0 + 8);
    v27 = *(v0 + 408);

    return v26(v27);
  }
}

uint64_t sub_1D18D1DDC()
{
  v56 = v0;

  v1 = *(v0 + 472);
  v52 = *(v0 + 480);
  v2 = *(v0 + 368);
  v3 = *(v0 + 360);
  v4 = *(v0 + 296);
  v5 = *(v0 + 304);
  sub_1D1741C08(*(v0 + 376), v2, &qword_1EC6430E0, &qword_1D1E71438);
  v6 = *(v2 + *(v3 + 48));
  v7 = -1 << *(v6 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(v6 + 64);
  (*(v5 + 8))(v2, v4);
  v10 = 0;
  v11 = (63 - v7) >> 6;
  v12 = *(v0 + 400);
LABEL_5:
  v53 = v12;
  v13 = v10;
  if (v9)
  {
    while (1)
    {
      v14 = v13;
LABEL_14:
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v17 = v16 | (v14 << 6);
      v18 = *(*(v6 + 48) + v17);
      sub_1D1741970(*(v6 + 56) + 32 * v17, v0 + 96);
      *(v0 + 56) = v18;
      sub_1D16EEE38((v0 + 96), (v0 + 64));
      v10 = v14;
LABEL_15:
      *(v0 + 48) = *(v0 + 88);
      v19 = *(v0 + 72);
      *(v0 + 16) = *(v0 + 56);
      *(v0 + 32) = v19;
      if (!*(v0 + 48))
      {
        break;
      }

      v20 = *(v0 + 16);
      sub_1D16EEE38((v0 + 24), (v0 + 128));
      v21 = HMService.subscript.getter();
      if (v21)
      {
        v22 = v21;
        sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
        sub_1D1741970(v0 + 128, v0 + 224);
        v54 = v20;
        static HMService.convert(_:characteristicKind:)(v0 + 224, &v54, v0 + 192);
        sub_1D1741A30(v0 + 224, &qword_1EC645D58, &unk_1D1E7E530);
        if (*(v0 + 216))
        {
          sub_1D16EEE38((v0 + 192), (v0 + 160));
        }

        else
        {
          sub_1D1741970(v0 + 128, v0 + 160);
          if (*(v0 + 216))
          {
            sub_1D1741A30(v0 + 192, &qword_1EC645D58, &unk_1D1E7E530);
          }
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v55 = v53.f64[0];
        sub_1D1752BCC((v0 + 160), v22, isUniquelyReferenced_nonNull_native);

        __swift_destroy_boxed_opaque_existential_1((v0 + 128));
        v24 = &v55;
        v12 = vld1q_dup_f64(v24);
        goto LABEL_5;
      }

      __swift_destroy_boxed_opaque_existential_1((v0 + 128));
      v13 = v10;
      if (!v9)
      {
        goto LABEL_7;
      }
    }

    sub_1D1741A30(*(v0 + 376), &qword_1EC6430E0, &qword_1D1E71438);

    v26 = *(v0 + 424);
    v25 = *(v0 + 432);
    *(v0 + 400) = v53;
    *(v0 + 416) = v52;
    v27 = (v26 - 1) & v26;
    if (v27)
    {
      v28 = *(v0 + 392);
LABEL_31:
      *(v0 + 424) = v27;
      *(v0 + 432) = v25;
      v31 = *(v0 + 376);
      v30 = *(v0 + 384);
      v32 = *(v0 + 360);
      v33 = *(v0 + 296);
      v34 = *(v0 + 304);
      v35 = __clz(__rbit64(v27)) | (v25 << 6);
      v36 = *(v28 + 48) + *(v34 + 72) * v35;
      v37 = *(v34 + 16);
      *(v0 + 440) = v37;
      *(v0 + 448) = (v34 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v37(v30, v36, v33);
      v38 = *(*(v28 + 56) + 8 * v35);
      v39 = *(v32 + 48);
      (*(v34 + 32))(v31, v30, v33);
      *(v31 + v39) = v38;
      v40 = qword_1EE07AF78;

      if (v40 == -1)
      {
        goto LABEL_32;
      }

      goto LABEL_52;
    }

    while (1)
    {
      v29 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v28 = *(v0 + 392);
      if (v29 >= (((1 << *(v0 + 544)) + 63) >> 6))
      {

        v49 = *(v0 + 8);
        v50 = *(v0 + 408);

        return v49(v50);
      }

      v27 = *(v28 + 8 * v29 + 64);
      ++v25;
      if (v27)
      {
        v25 = v29;
        goto LABEL_31;
      }
    }
  }

  else
  {
LABEL_7:
    if (v11 <= v13 + 1)
    {
      v15 = v13 + 1;
    }

    else
    {
      v15 = v11;
    }

    v10 = v15 - 1;
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        v9 = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
        goto LABEL_15;
      }

      v9 = *(v6 + 64 + 8 * v14);
      ++v13;
      if (v9)
      {
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_52:
  swift_once();
LABEL_32:
  os_unfair_lock_lock(&dword_1EE07AF80);
  v41 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v41 == 2 || (v41 & 1) == 0)
  {
    goto LABEL_43;
  }

  if (qword_1EC642308 != -1)
  {
    swift_once();
  }

  sub_1D1E693FC();
  v42 = *(v0 + 280);
  if (v42)
  {
    goto LABEL_40;
  }

  if (qword_1EC642310 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BC0);
  v42 = off_1EC649BC8;

  os_unfair_lock_unlock(&dword_1EC649BC0);
  if (v42)
  {
LABEL_40:
    *(v0 + 456) = v42;
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v43 = qword_1EC64ABE8;
    v44 = sub_1D18D0F6C;
    v45 = 0;
  }

  else
  {
LABEL_43:
    *(v0 + 488) = sub_1D1E67E1C();
    *(v0 + 496) = sub_1D1E67E0C();
    v46 = sub_1D1E67D4C();
    v48 = v47;
    v44 = sub_1D18D23F0;
    v43 = v46;
    v45 = v48;
  }

  return MEMORY[0x1EEE6DFA0](v44, v43, v45);
}

uint64_t sub_1D18D23F0()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D18D2488, 0, 0);
}

uint64_t sub_1D18D2488(uint64_t a1)
{
  *(v1 + 504) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18D2514, v3, v2);
}

uint64_t sub_1D18D2514()
{

  *(v0 + 512) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D18D2588, 0, 0);
}

uint64_t sub_1D18D2588(uint64_t a1)
{
  *(v1 + 520) = sub_1D1E66A2C();
  *(v1 + 528) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18D2620, v3, v2);
}

uint64_t sub_1D18D2620()
{
  v1 = v0[65];
  v2 = v0[64];

  v0[67] = [v2 serviceFor_];

  return MEMORY[0x1EEE6DFA0](sub_1D18D26B4, 0, 0);
}

uint64_t sub_1D18D26B4()
{
  v57 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 416);
  v3 = *(v0 + 376);
  if (v1)
  {
    v53 = *(v0 + 416);
    v5 = *(v0 + 360);
    v4 = *(v0 + 368);
    v6 = *(v0 + 296);
    v7 = *(v0 + 304);
    sub_1D1741C08(v3, v4, &qword_1EC6430E0, &qword_1D1E71438);
    v8 = *(v4 + *(v5 + 48));
    v9 = -1 << *(v8 + 32);
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v8 + 64);
    (*(v7 + 8))(v4, v6);
    v12 = 0;
    v13 = (63 - v9) >> 6;
    v14 = *(v0 + 400);
LABEL_6:
    v54 = v14;
    v15 = v12;
    if (v11)
    {
      while (1)
      {
        v16 = v15;
LABEL_15:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = v18 | (v16 << 6);
        v20 = *(*(v8 + 48) + v19);
        sub_1D1741970(*(v8 + 56) + 32 * v19, v0 + 96);
        *(v0 + 56) = v20;
        sub_1D16EEE38((v0 + 96), (v0 + 64));
        v12 = v16;
LABEL_16:
        *(v0 + 48) = *(v0 + 88);
        v21 = *(v0 + 72);
        *(v0 + 16) = *(v0 + 56);
        *(v0 + 32) = v21;
        if (!*(v0 + 48))
        {
          break;
        }

        v22 = *(v0 + 16);
        sub_1D16EEE38((v0 + 24), (v0 + 128));
        v23 = HMService.subscript.getter();
        if (v23)
        {
          v24 = v23;
          sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
          sub_1D1741970(v0 + 128, v0 + 224);
          v55 = v22;
          static HMService.convert(_:characteristicKind:)(v0 + 224, &v55, v0 + 192);
          sub_1D1741A30(v0 + 224, &qword_1EC645D58, &unk_1D1E7E530);
          if (*(v0 + 216))
          {
            sub_1D16EEE38((v0 + 192), (v0 + 160));
          }

          else
          {
            sub_1D1741970(v0 + 128, v0 + 160);
            if (*(v0 + 216))
            {
              sub_1D1741A30(v0 + 192, &qword_1EC645D58, &unk_1D1E7E530);
            }
          }

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v56 = v54.f64[0];
          sub_1D1752BCC((v0 + 160), v24, isUniquelyReferenced_nonNull_native);

          __swift_destroy_boxed_opaque_existential_1((v0 + 128));
          v26 = &v56;
          v14 = vld1q_dup_f64(v26);
          goto LABEL_6;
        }

        __swift_destroy_boxed_opaque_existential_1((v0 + 128));
        v15 = v12;
        if (!v11)
        {
          goto LABEL_8;
        }
      }

      sub_1D1741A30(*(v0 + 376), &qword_1EC6430E0, &qword_1D1E71438);

      v27 = *(v0 + 432);
      v28 = (*(v0 + 424) - 1) & *(v0 + 424);
      *(v0 + 400) = v54;
      *(v0 + 416) = v53;
      if (!v28)
      {
        goto LABEL_29;
      }

      goto LABEL_27;
    }

LABEL_8:
    if (v13 <= v15 + 1)
    {
      v17 = v15 + 1;
    }

    else
    {
      v17 = v13;
    }

    v12 = v17 - 1;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v16 >= v13)
      {
        v11 = 0;
        *(v0 + 88) = 0;
        *(v0 + 72) = 0u;
        *(v0 + 56) = 0u;
        goto LABEL_16;
      }

      v11 = *(v8 + 64 + 8 * v16);
      ++v15;
      if (v11)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    sub_1D1741A30(v3, &qword_1EC6430E0, &qword_1D1E71438);
    v27 = *(v0 + 432);
    v28 = (*(v0 + 424) - 1) & *(v0 + 424);
    *(v0 + 416) = v2;
    if (v28)
    {
LABEL_27:
      v29 = *(v0 + 392);
LABEL_33:
      *(v0 + 424) = v28;
      *(v0 + 432) = v27;
      v32 = *(v0 + 376);
      v31 = *(v0 + 384);
      v33 = *(v0 + 360);
      v34 = *(v0 + 296);
      v35 = *(v0 + 304);
      v36 = __clz(__rbit64(v28)) | (v27 << 6);
      v37 = *(v29 + 48) + *(v35 + 72) * v36;
      v38 = *(v35 + 16);
      *(v0 + 440) = v38;
      *(v0 + 448) = (v35 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v38(v31, v37, v34);
      v39 = *(*(v29 + 56) + 8 * v36);
      v40 = *(v33 + 48);
      (*(v35 + 32))(v32, v31, v34);
      *(v32 + v40) = v39;
      v41 = qword_1EE07AF78;

      if (v41 == -1)
      {
        goto LABEL_34;
      }

      goto LABEL_54;
    }

LABEL_29:
    while (1)
    {
      v30 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      v29 = *(v0 + 392);
      if (v30 >= (((1 << *(v0 + 544)) + 63) >> 6))
      {

        v50 = *(v0 + 8);
        v51 = *(v0 + 408);

        return v50(v51);
      }

      v28 = *(v29 + 8 * v30 + 64);
      ++v27;
      if (v28)
      {
        v27 = v30;
        goto LABEL_33;
      }
    }
  }

  __break(1u);
LABEL_54:
  swift_once();
LABEL_34:
  os_unfair_lock_lock(&dword_1EE07AF80);
  v42 = byte_1EE07AF84;
  os_unfair_lock_unlock(&dword_1EE07AF80);
  if (v42 == 2 || (v42 & 1) == 0)
  {
    goto LABEL_45;
  }

  if (qword_1EC642308 != -1)
  {
    swift_once();
  }

  sub_1D1E693FC();
  v43 = *(v0 + 280);
  if (v43)
  {
    goto LABEL_42;
  }

  if (qword_1EC642310 != -1)
  {
    swift_once();
  }

  os_unfair_lock_lock(&dword_1EC649BC0);
  v43 = off_1EC649BC8;

  os_unfair_lock_unlock(&dword_1EC649BC0);
  if (v43)
  {
LABEL_42:
    *(v0 + 456) = v43;
    if (qword_1EC642358 != -1)
    {
      swift_once();
    }

    v44 = qword_1EC64ABE8;
    v45 = sub_1D18D0F6C;
    v46 = 0;
  }

  else
  {
LABEL_45:
    *(v0 + 488) = sub_1D1E67E1C();
    *(v0 + 496) = sub_1D1E67E0C();
    v47 = sub_1D1E67D4C();
    v49 = v48;
    v45 = sub_1D18D23F0;
    v44 = v47;
    v46 = v49;
  }

  return MEMORY[0x1EEE6DFA0](v45, v44, v46);
}

uint64_t CharacteristicValueSet.description.getter()
{
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6430E0, &qword_1D1E71438);
  MEMORY[0x1EEE9AC00](v21);
  v20 = &v20 - v1;
  v2 = *v0 + 64;
  v3 = 1 << *(*v0 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(*v0 + 64);
  v6 = (v3 + 63) >> 6;
  v22 = *v0;

  v8 = 0;
  v9 = 0;
  for (i = 0xE000000000000000; v5; result = sub_1D1741A30(v17, &qword_1EC6430E0, &qword_1D1E71438))
  {
    v23 = v9;
    v11 = v8;
LABEL_9:
    v12 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v13 = v12 | (v11 << 6);
    v14 = v22;
    v15 = *(v22 + 48);
    v16 = sub_1D1E66A7C();
    v17 = v20;
    (*(*(v16 - 8) + 16))(v20, v15 + *(*(v16 - 8) + 72) * v13, v16);
    *(v17 + *(v21 + 48)) = *(*(v14 + 56) + 8 * v13);
    v24 = 0;
    v25 = 0xE000000000000000;

    sub_1D1E6884C();

    v24 = v23;
    v25 = i;
    MEMORY[0x1D3890F70](0x203A4449555520, 0xE700000000000000);
    sub_1D1886B8C();
    v18 = sub_1D1E68FAC();
    MEMORY[0x1D3890F70](v18);

    MEMORY[0x1D3890F70](0x206874697720, 0xE600000000000000);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
    sub_1D17857C0();
    v19 = sub_1D1E6760C();
    MEMORY[0x1D3890F70](v19);

    v9 = v24;
    i = v25;
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

      return v9;
    }

    v5 = *(v2 + 8 * v11);
    ++v8;
    if (v5)
    {
      v23 = v9;
      v8 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D2FC0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EE079E18, &qword_1EC646260, &qword_1D1E7E918);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646260, &qword_1D1E7E918);
            v9 = sub_1D1790CDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EE07B620, 0x1E696CB98);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D3160(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EC6462F0, &qword_1EC64FE40, &qword_1D1EB0F40);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC64FE40, &qword_1D1EB0F40);
            v9 = sub_1D1790CDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EE07B650, 0x1E696CCA8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D3300(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EC6462E0, &qword_1EC6462D8, &qword_1D1E7E9D8);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6462D8, &qword_1D1E7E9D8);
            v9 = sub_1D1790CDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EC643058, 0x1E696CB30);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D34A0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EC6461A0, &qword_1EC646198, &qword_1D1E7E780);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646198, &qword_1D1E7E780);
            v9 = sub_1D1790CDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EE079C00, 0x1E696CC38);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D3640(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EC6461D0, &qword_1EC6461C8, &qword_1D1E7E808);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6461C8, &qword_1D1E7E808);
            v9 = sub_1D1790CDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EE079BF8, 0x1E696CCA0);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D37E0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EC646110, &qword_1EC646108, &qword_1D1E7E668);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646108, &qword_1D1E7E668);
            v9 = sub_1D1790D5C(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EE07B690, 0x1E696CAC8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D3980(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1D1E6873C();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1D1E6873C();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1D17DA8F0(&qword_1EC646168, &qword_1EC646160, &qword_1D1E7E718);
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646160, &qword_1D1E7E718);
            v9 = sub_1D1790CDC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1D1741B10(0, &qword_1EE079CF0, 0x1E696CBB8);
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18D3B20(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = result;
  v7 = *(a5 + 48);
  v8 = sub_1D1E66A7C();
  (*(*(v8 - 8) + 16))(v6, v7 + *(*(v8 - 8) + 72) * a2, v8);
}

id sub_1D18D3BF0(id result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a5 + 36) != a3)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(*(a5 + 48) + 8 * a2);
  sub_1D1741970(*(a5 + 56) + 32 * a2, result);

  return v6;
}

uint64_t sub_1D18D3C80(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  if (a3 < 0 || 1 << *(a6 + 32) <= a3)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a6 + 8 * (a3 >> 6) + 64) >> a3) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a6 + 36) != a4)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = result;
  v10 = *(a6 + 48);
  v11 = sub_1D1E66A7C();
  (*(*(v11 - 8) + 16))(v9, v10 + *(*(v11 - 8) + 72) * a3, v11);
  v12 = *(a6 + 56);
  v13 = v12 + *(*(type metadata accessor for StaticService(0) - 8) + 72) * a3;

  return sub_1D18DC660(v13, a2);
}

void *sub_1D18D3D7C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 24 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    *result = *v6;
    result[1] = v8;
    v9 = *(v6 + 16);
    *(result + 16) = v9;
    v10 = v5;
    sub_1D1741830(v7, v8, v9);
    return v10;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1D18D3E20(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 8 * a2);
    v6 = *(a5 + 56) + 32 * a2;
    v7 = *v6;
    v8 = *(v6 + 8);
    v9 = *(v6 + 16);
    *result = *v6;
    result[1] = v8;
    result[2] = v9;
    v10 = *(v6 + 24);
    *(result + 24) = v10;
    v11 = v5;
    sub_1D17418FC(v7, v8, v9, v10);
    return v11;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1D18D3ED4(uint64_t a1, unsigned __int8 *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v22[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24[3] = a5;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v24);
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_1, a1, a5);
  v15 = *a2;
  if (!*(*a4 + 16) || (sub_1D1742188(), (v16 & 1) == 0))
  {
    v17 = sub_1D18D7C94(MEMORY[0x1E69E7CC0]);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v23[0] = *a4;
    sub_1D1752B8C(v17, a3, isUniquelyReferenced_nonNull_native);
    *a4 = v23[0];
  }

  (*(v11 + 16))(v13, a3, v10);
  v19 = sub_1D1C76E38(v23);
  if (*v20)
  {
    sub_1D1741970(v24, v22);
    sub_1D1B0CE00(v22, v15);
  }

  (v19)(v23, 0);
  (*(v11 + 8))(v13, v10);
  return __swift_destroy_boxed_opaque_existential_1(v24);
}

uint64_t sub_1D18D40C0(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v12 = &v17[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v10 + 16))(v12, v13, v14);
  v15 = *a2;
  v18 = a4;
  v19 = a1;
  v20 = v15;
  sub_1D1E67ADC();
  return (*(v10 + 8))(v12, a5);
}

uint64_t sub_1D18D41EC(uint64_t a1, uint64_t a2, void *a3)
{
  v94 = a1;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v81 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v84 = &v81 - v10;
  v11 = MEMORY[0x1EEE9AC00](v9);
  v91 = &v81 - v12;
  result = MEMORY[0x1EEE9AC00](v11);
  v15 = &v81 - v14;
  v88 = *(a2 + 16);
  if (!v88)
  {
    return result;
  }

  v16 = 0;
  v18 = *(v6 + 16);
  v17 = v6 + 16;
  v93 = v18;
  v87 = a2 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
  v19 = v94 + 64;
  v90 = *(v17 + 56);
  v85 = (v17 - 8);
  v89 = v17;
  v86 = &v81 - v14;
  v83 = a3;
  v82 = v5;
  do
  {
    v92 = v16;
    v93(v15, v87 + v90 * v16, v5);
    v21 = *a3;
    if (*(*a3 + 16))
    {
      v22 = sub_1D1742188();
      if (v23)
      {
        v24 = v15;
        v25 = *(*(v21 + 56) + 8 * v22);
        v93(v84, v24, v5);
        v26 = v94;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v102 = v25;
        v28 = 1 << *(v26 + 32);
        if (v28 < 64)
        {
          v29 = ~(-1 << v28);
        }

        else
        {
          v29 = -1;
        }

        v30 = v29 & *(v26 + 64);
        v31 = (v28 + 63) >> 6;

        v32 = 0;
        while (1)
        {
          if (!v30)
          {
            if (v31 <= v32 + 1)
            {
              v35 = v32 + 1;
            }

            else
            {
              v35 = v31;
            }

            v36 = v35 - 1;
            while (1)
            {
              v34 = v32 + 1;
              if (__OFADD__(v32, 1))
              {
                break;
              }

              if (v34 >= v31)
              {
                v30 = 0;
                v99 = 0;
                v32 = v36;
                v97 = 0u;
                v98 = 0u;
                goto LABEL_25;
              }

              v30 = *(v19 + 8 * v34);
              ++v32;
              if (v30)
              {
                v32 = v34;
                goto LABEL_24;
              }
            }

            __break(1u);
LABEL_61:
            __break(1u);
LABEL_62:
            __break(1u);
LABEL_63:
            __break(1u);
LABEL_64:
            __break(1u);
LABEL_65:
            __break(1u);
LABEL_66:
            sub_1D1E690FC();
            __break(1u);
LABEL_67:
            result = sub_1D1E690FC();
            __break(1u);
            return result;
          }

          v34 = v32;
LABEL_24:
          v37 = __clz(__rbit64(v30));
          v30 &= v30 - 1;
          v38 = v37 | (v34 << 6);
          v39 = *(*(v94 + 48) + v38);
          sub_1D1741970(*(v94 + 56) + 32 * v38, v95);
          LOBYTE(v97) = v39;
          sub_1D16EEE38(v95, (&v97 + 8));
LABEL_25:
          v95[0] = v97;
          v95[1] = v98;
          v96 = v99;
          if (!v99)
          {
            v101 = 0;
            memset(v100, 0, sizeof(v100));
LABEL_49:

            a3 = v83;
            v67 = swift_isUniquelyReferenced_nonNull_native();
            *&v100[0] = *a3;
            v68 = *&v100[0];
            v69 = sub_1D1742188();
            v71 = *(v68 + 16);
            v72 = (v70 & 1) == 0;
            v50 = __OFADD__(v71, v72);
            v73 = v71 + v72;
            if (v50)
            {
              goto LABEL_65;
            }

            v74 = v70;
            if (*(v68 + 24) >= v73)
            {
              v5 = v82;
              if (v67)
              {
                goto LABEL_54;
              }

              v79 = v69;
              sub_1D1734AF0();
              v69 = v79;
              v76 = *&v100[0];
              if ((v74 & 1) == 0)
              {
                goto LABEL_57;
              }

LABEL_55:
              *(*(v76 + 56) + 8 * v69) = v25;

              v77 = v84;
            }

            else
            {
              sub_1D1721C88(v73, v67);
              v69 = sub_1D1742188();
              v5 = v82;
              if ((v74 & 1) != (v75 & 1))
              {
                goto LABEL_67;
              }

LABEL_54:
              v76 = *&v100[0];
              if (v74)
              {
                goto LABEL_55;
              }

LABEL_57:
              v77 = v84;
              v93(v81, v84, v5);
              sub_1D19DD7D8();
            }

            v80 = *v85;
            (*v85)(v77, v5);
            *a3 = v76;
            v15 = v86;
            result = (v80)(v86, v5);
            goto LABEL_5;
          }

          LOBYTE(v100[0]) = v95[0];
          sub_1D1741970(v95 + 8, v100 + 8);
          sub_1D1741A30(v95, &qword_1EC646288, &qword_1D1E7E948);
          if (!v101)
          {
            goto LABEL_49;
          }

          v40 = LOBYTE(v100[0]);
          sub_1D16EEE38((v100 + 8), &v97);
          v42 = sub_1D171D140(v40);
          v43 = v25[2];
          v44 = (v41 & 1) == 0;
          v45 = v43 + v44;
          if (__OFADD__(v43, v44))
          {
            goto LABEL_61;
          }

          v46 = v41;
          if (v25[3] >= v45)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              v25 = v102;
              if (v41)
              {
                goto LABEL_12;
              }
            }

            else
            {
              sub_1D1734AC8();
              v25 = v102;
              if (v46)
              {
                goto LABEL_12;
              }
            }
          }

          else
          {
            sub_1D1721C60(v45, isUniquelyReferenced_nonNull_native & 1);
            v47 = sub_1D171D140(v40);
            if ((v46 & 1) != (v48 & 1))
            {
              goto LABEL_66;
            }

            v42 = v47;
            v25 = v102;
            if (v46)
            {
LABEL_12:
              v33 = (v25[7] + 32 * v42);
              __swift_destroy_boxed_opaque_existential_1(v33);
              sub_1D16EEE38(&v97, v33);
              goto LABEL_13;
            }
          }

          v25[(v42 >> 6) + 8] |= 1 << v42;
          *(v25[6] + v42) = v40;
          sub_1D16EEE38(&v97, (v25[7] + 32 * v42));
          v49 = v25[2];
          v50 = __OFADD__(v49, 1);
          v51 = v49 + 1;
          if (v50)
          {
            goto LABEL_62;
          }

          v25[2] = v51;
LABEL_13:
          isUniquelyReferenced_nonNull_native = 1;
        }
      }
    }

    v93(v91, v15, v5);
    v52 = swift_isUniquelyReferenced_nonNull_native();
    *&v100[0] = *a3;
    v53 = *&v100[0];
    v54 = sub_1D1742188();
    v56 = *(v53 + 16);
    v57 = (v55 & 1) == 0;
    v50 = __OFADD__(v56, v57);
    v58 = v56 + v57;
    if (v50)
    {
      goto LABEL_63;
    }

    v59 = v55;
    if (*(v53 + 24) >= v58)
    {
      if ((v52 & 1) == 0)
      {
        v78 = v54;
        sub_1D1734AF0();
        v54 = v78;
      }
    }

    else
    {
      sub_1D1721C88(v58, v52);
      v54 = sub_1D1742188();
      if ((v59 & 1) != (v60 & 1))
      {
        goto LABEL_67;
      }
    }

    v61 = *&v100[0];
    if (v59)
    {
      *(*(*&v100[0] + 56) + 8 * v54) = v94;

      v20 = *v85;
      (*v85)(v91, v5);
      v15 = v86;
      result = (v20)(v86, v5);
    }

    else
    {
      *(*&v100[0] + 8 * (v54 >> 6) + 64) |= 1 << v54;
      v62 = v54;
      v63 = v91;
      v93((v61[6] + v54 * v90), v91, v5);
      *(v61[7] + 8 * v62) = v94;
      v64 = *v85;

      v64(v63, v5);
      v15 = v86;
      result = (v64)(v86, v5);
      v65 = v61[2];
      v50 = __OFADD__(v65, 1);
      v66 = v65 + 1;
      if (v50)
      {
        goto LABEL_64;
      }

      v61[2] = v66;
    }

    *a3 = v61;
LABEL_5:
    v16 = v92 + 1;
  }

  while (v92 + 1 != v88);
  return result;
}

uint64_t sub_1D18D4A14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v10 = &v12[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v8 + 16))(v10);
  v13 = a3;
  v14 = a1;
  sub_1D1E67ADC();
  return (*(v8 + 8))(v10, a4);
}

unint64_t sub_1D18D4B28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA0, &qword_1D1E7E980);
  v3 = sub_1D1E68BCC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 36);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  result = sub_1D171D1A4(v4 | (v5 << 32));
  if (v9)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v10 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v11 = v3[6] + 8 * result;
    *v11 = v4;
    *(v11 + 4) = v5;
    v12 = v3[7] + 16 * result;
    *v12 = v6;
    *(v12 + 8) = v7;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    sub_1D1741AF8(v6, v7);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v10 - 4);
    v5 = *(v10 - 12);
    v6 = *(v10 - 1);
    v7 = *v10;
    result = sub_1D171D1A4(v4 | (v5 << 32));
    v10 += 24;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18D4C50(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BD8, &unk_1D1E7E900);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);
      sub_1D1741AF8(v5, v6);
      result = sub_1D171D228(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = v3[7] + 16 * result;
      *v10 = v5;
      *(v10 + 8) = v6;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1D18D4DA0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6461F0, &unk_1D1E7E840);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C78, &unk_1D1E6E9D0);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC6461F0, &unk_1D1E7E840);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = sub_1D1E669FC();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

void *sub_1D18D4FC0(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645AE8, &qword_1D1E7BC10);
  v3 = sub_1D1E68BCC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = a1[6];
  v7 = sub_1D171D128(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v6;
  v11 = a1 + 9;
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + 8 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v5;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 2);
    v5 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1D171D128(v4);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18D50D4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643710, &unk_1D1EA2630);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B08, &unk_1D1E6E850);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC643710, &unk_1D1EA2630);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticActionSet(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticActionSet);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D5304(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437A8, &unk_1D1E71F00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A80, &qword_1D1E6E7D0);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC6437A8, &unk_1D1E71F00);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticAccessory(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticAccessory);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D5520(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643798, &qword_1D1E71EF0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B30, &qword_1D1E6E878);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC643798, &qword_1D1E71EF0);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticCameraProfile(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticCameraProfile);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D573C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643768, &qword_1D1E71EC0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B00, &unk_1D1E7BBF0);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC643768, &qword_1D1E71EC0);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticMediaSystem(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticMediaSystem);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D5958(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643750, &unk_1D1E7E6B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AF8, &unk_1D1E6E840);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC643750, &unk_1D1E7E6B0);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticMediaProfile(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticMediaProfile);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D5B74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437B8, &unk_1D1E7E730);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A88, &qword_1D1E6E7D8);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC6437B8, &unk_1D1E7E730);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticServiceGroup(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticServiceGroup);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D5D90(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6436E8, &unk_1D1E71E40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB8, &qword_1D1E7E7A0);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC6436E8, &unk_1D1E71E40);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticService(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticService);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D5FAC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646170, &unk_1D1E7E720);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642948, &qword_1D1E6E6A8);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646170, &unk_1D1E7E720);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticMatterDevice(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticMatterDevice);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D61C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6461A8, &qword_1D1E7E788);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AF0, &unk_1D1E7E790);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC6461A8, &qword_1D1E7E788);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticHH2Update(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticHH2Update);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D640C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642928, &qword_1D1E7E5E0);
    v3 = sub_1D1E68BCC();
    for (i = a1 + 32; ; i += 48)
    {
      sub_1D1741C08(i, &v14, &qword_1EC6460C8, &qword_1D1E91100);
      v5 = v14;
      result = sub_1D171D4E0(v14);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      v8 = v3[7] + 40 * result;
      v9 = v15;
      v10 = v16;
      *(v8 + 32) = v17;
      *v8 = v9;
      *(v8 + 16) = v10;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

unint64_t sub_1D18D6538(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BA8, &unk_1D1E6E8F0);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, &v13, &qword_1EC646238, &qword_1D1E7E8D0);
      v5 = v13;
      v6 = v14;
      result = sub_1D171D2F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D16EEE38(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1D18D6668(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BB8, &unk_1D1E6E900);
    v3 = sub_1D1E68BCC();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1D1741C08(i, v10, &qword_1EC646218, &unk_1D1E7E890);
      result = sub_1D171DB60(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_1D16EEE38(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
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

unint64_t sub_1D18D677C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646210, &unk_1D1E7E870);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B98, &unk_1D1E6E8E0);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646210, &unk_1D1E7E870);
      v11 = *v5;
      result = sub_1D17420B0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for StaticMatterDevice(0);
      result = sub_1D18DC75C(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for StaticMatterDevice);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_1D18D6954(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6461B0, &qword_1D1E7E7A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B90, &unk_1D1E7E7B0);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC6461B0, &qword_1D1E7E7A8);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for EndpointPath(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for EndpointPath);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D6B94(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v27 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v26 - v11;
  v13 = *(a1 + 16);
  if (v13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    v14 = sub_1D1E68BCC();
    v15 = *(v9 + 48);
    v16 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v17 = *(v10 + 72);

    while (1)
    {
      sub_1D1741C08(v16, v12, a2, v27);
      result = sub_1D1742188();
      if (v19)
      {
        break;
      }

      v20 = result;
      *(v14 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v21 = v14[6];
      v22 = sub_1D1E66A7C();
      result = (*(*(v22 - 8) + 32))(v21 + *(*(v22 - 8) + 72) * v20, v12, v22);
      *(v14[7] + 8 * v20) = *&v12[v15];
      v23 = v14[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        goto LABEL_10;
      }

      v14[2] = v25;
      v16 += v17;
      if (!--v13)
      {

        return v14;
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

unint64_t sub_1D18D6D74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C80, &unk_1D1E8DED0);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_1D171D2F0(v5, v6);
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

unint64_t sub_1D18D6E78(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BF0, &unk_1D1E7E8B0);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, &v13, &qword_1EC646228, &qword_1D1E8A0C0);
      v5 = v13;
      v6 = v14;
      result = sub_1D171D2F0(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1D16EEE38(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1D18D6FA8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646230, &unk_1D1E7E8C0);
  v3 = sub_1D1E68BCC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_1D171D4E0(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    v10 = v3[7] + 16 * result;
    *v10 = v5;
    *(v10 + 8) = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_1D1741AF8(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 4);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_1D171D4E0(v4);
    v9 += 24;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18D70C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646118, &unk_1D1E7E670);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642930, &qword_1D1E6E690);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646118, &unk_1D1E7E670);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StateSnapshot(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StateSnapshot);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D72DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646208, &unk_1D1E7E860);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642950, &unk_1D1E6E6B0);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646208, &unk_1D1E7E860);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for MatterStateSnapshot(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for MatterStateSnapshot);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D74F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429E0, &qword_1D1E6E738);
  v3 = sub_1D1E68BCC();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v16 = *(a1 + 48);
  v18 = *(a1 + 64);
  result = sub_1D17420B0(v4);
  v7 = v16;
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    swift_unknownObjectRetain();

    return v3;
  }

  v9 = (a1 + 112);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    v10 = v3[7] + 40 * result;
    *v10 = v5;
    *(v10 + 8) = v7;
    *(v10 + 24) = v18;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v9 + 3;
    v4 = *(v9 - 4);
    v5 = *(v9 - 3);
    v17 = *(v9 - 1);
    v18 = *v9;

    swift_unknownObjectRetain();

    result = sub_1D17420B0(v4);
    v9 = v14;
    v7 = v17;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18D765C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646120, &unk_1D1E7E680);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429F0, &qword_1D1E6E748);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646120, &unk_1D1E7E680);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticHome(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticHome);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D7878(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646200, &qword_1D1E7E858);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429E8, &qword_1D1E6E740);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646200, &qword_1D1E7E858);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 16 * v13) = *&v5[v8];
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

unint64_t sub_1D18D7A60(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6462C8, &qword_1D1E7E9C0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C60, &qword_1D1E6E9B8);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC6462C8, &qword_1D1E7E9C0);
      v11 = *v5;
      result = sub_1D17420B0(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644610, &qword_1D1E6E9B0);
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v5 + v8, v16);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t sub_1D18D7C94(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A58, &qword_1D1E7E6F0);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, v10, &qword_1EC646150, &unk_1D1E7E6F8);
      result = sub_1D171D140(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_1D16EEE38(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
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

unint64_t sub_1D18D7DB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BF8, &qword_1D1E7E920);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, &v11, &qword_1EC646268, &qword_1D1E7E928);
      v5 = v11;
      result = sub_1D171D368(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1D16EEE38(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
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

unint64_t sub_1D18D7F00(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437C8, &qword_1D1E71F28);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B38, &unk_1D1E6E880);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC6437C8, &qword_1D1E71F28);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticZone(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticZone);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D811C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643740, &qword_1D1E71E98);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B18, &qword_1D1E6E860);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC643740, &qword_1D1E71E98);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticRoom(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticRoom);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D8338(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6437D8, &unk_1D1EAAD40);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B40, &qword_1D1E7E7D0);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC6437D8, &unk_1D1EAAD40);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticUser(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticUser);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D8554(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643730, &unk_1D1EA7CA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B10, &unk_1D1E7E7C0);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC643730, &unk_1D1EA7CA0);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticResident(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticResident);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D8770(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642978, &unk_1D1E7BC00);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;
      v8 = *(i - 3);
      sub_1D1741830(v5, v6, v7);
      result = sub_1D171D368(v8);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v8;
      v11 = v3[7] + 24 * result;
      *v11 = v5;
      *(v11 + 8) = v6;
      *(v11 + 16) = v7;
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

unint64_t sub_1D18D888C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646290, &unk_1D1E7E950);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C08, &qword_1D1E6E958);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646290, &unk_1D1E7E950);
      result = sub_1D171D54C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for BatchRequestError.ID(0);
      result = sub_1D18DC75C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for BatchRequestError.ID);
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

unint64_t sub_1D18D8A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429D0, &qword_1D1E7E660);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;
      v9 = *(i - 4);
      sub_1D17418FC(v5, v6, v7, v8);
      result = sub_1D171D368(v9);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v9;
      v12 = v3[7] + 32 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      *(v12 + 24) = v8;
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

unint64_t sub_1D18D8BFC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646100, &unk_1D1E7E650);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1D171D228(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1D18D8D08(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C10, &qword_1D1E6E960);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1D171D2F0(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
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

void *sub_1D18D8E0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6462A8, &unk_1D1E7E970);
  v3 = sub_1D1E68BCC();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_1D174218C();
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    *(v3[6] + v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 3;
    v4 = *(v11 - 16);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_1D174218C();
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18D8F20(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6452F0, &qword_1D1E96C50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C40, &qword_1D1E6E990);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC6452F0, &qword_1D1E96C50);
      result = sub_1D171D710(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for StaticServiceCharacteristicDoublet(0);
      sub_1D18DC75C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for StaticServiceCharacteristicDoublet);
      v16 = v7[7];
      v17 = type metadata accessor for IconTextValueStringDataHolder(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for IconTextValueStringDataHolder);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18D9138(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6460F8, &unk_1D1E7E640);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C38, &qword_1D1E6E988);
    v7 = sub_1D1E68BCC();
    v8 = &v5[*(v2 + 48)];
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC6460F8, &unk_1D1E7E640);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = (v7[7] + 32 * v13);
      v17 = *(v8 + 1);
      *v16 = *v8;
      v16[1] = v17;
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

void *sub_1D18D9378(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6460F0, &unk_1D1E7E630);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v23 - v4;
  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C28, &unk_1D1E7BBE0);
  v7 = sub_1D1E68BCC();
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = *(v3 + 72);
  v25 = *(v2 + 48);
  v26 = v9;

  sub_1D1741C08(a1 + v8, v5, &qword_1EC6460F0, &unk_1D1E7E630);
  v10 = sub_1D1742188();
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  v24 = sub_1D1E66A7C();
  v13 = *(v24 - 8);
  v14 = *(v13 + 32);
  v15 = *(v13 + 72);
  v16 = a1 + v26 + v8;
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    v14(v7[6] + v15 * v12, v5, v24);
    result = memmove((v7[7] + (v12 << 7)), &v5[v25], 0x80uLL);
    v18 = v7[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v7[2] = v20;
    if (!--v6)
    {
      goto LABEL_8;
    }

    v21 = v16 + v26;
    sub_1D1741C08(v16, v5, &qword_1EC6460F0, &unk_1D1E7E630);
    v12 = sub_1D1742188();
    v16 = v21;
    if (v22)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18D95FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642C20, &unk_1D1E6E970);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, v13, &qword_1EC6462A0, &qword_1D1E7E968);
      result = sub_1D171D804(v13);
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
      result = sub_1D16EEE38(&v15, (v3[7] + 32 * result));
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

unint64_t sub_1D18D974C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D1E68BCC();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_1D171D2F0(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1D18D9848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646298, &qword_1D1E7E960);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_1D171D2F0(v5, v6);
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

unint64_t sub_1D18D995C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6461C0, &qword_1D1E7E7E8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642988, &unk_1D1E7E7F0);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC6461C0, &qword_1D1E7E7E8);
      result = sub_1D171D934(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = _s7MergeIdVMa(0);
      result = sub_1D18DC75C(v5, v14 + *(*(v15 - 8) + 72) * v13, _s7MergeIdVMa);
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

unint64_t sub_1D18D9B68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BF0, &unk_1D1E6E940);
    v3 = sub_1D1E68BCC();
    for (i = a1 + 32; ; i += 40)
    {
      sub_1D1741C08(i, &v11, &qword_1EC6460D0, &qword_1D1E7E5E8);
      v5 = v11;
      result = sub_1D171D4E0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_1D16EEE38(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_1D18D9C84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646250, &unk_1D1E7E8F0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BD0, &unk_1D1E6E920);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646250, &unk_1D1E7E8F0);
      result = sub_1D171D278(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = type metadata accessor for StaticCluster(0);
      result = sub_1D18DC75C(&v5[v8], v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for StaticCluster);
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

unint64_t sub_1D18D9E5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646248, &unk_1D1E7E8E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BC8, &qword_1D1E6E918);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646248, &unk_1D1E7E8E0);
      v11 = *v5;
      result = sub_1D171D15C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 2 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for ActionEndpoint(0);
      result = sub_1D18DC75C(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for ActionEndpoint);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

void *sub_1D18DA05C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v7 = sub_1D1E68BCC();
  LOBYTE(v8) = *(a1 + 32);
  v9 = *(a1 + 40);
  v10 = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v7;
  }

  v12 = v10;
  result = v9;
  v14 = (a1 + 56);
  while (1)
  {
    *(v7 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v12;
    *(v7[6] + v12) = v8;
    *(v7[7] + 8 * v12) = result;
    v15 = v7[2];
    v16 = __OFADD__(v15, 1);
    v17 = v15 + 1;
    if (v16)
    {
      break;
    }

    v7[2] = v17;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v18 = v14 + 2;
    v8 = *(v14 - 8);
    v19 = *v14;

    v12 = a4(v8);
    v14 = v18;
    result = v19;
    if (v20)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18DA170(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429C0, &qword_1D1E6E718);
  v3 = sub_1D1E68BCC();
  v4 = *(a1 + 32);
  v14 = *(a1 + 40);
  result = sub_1D17420B0(v4);
  v6 = v14;
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    swift_unknownObjectRetain();
    return v3;
  }

  v8 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v6;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = (v8 + 24);
    v4 = *(v8 - 1);
    v15 = *v8;
    swift_unknownObjectRetain();
    result = sub_1D17420B0(v4);
    v8 = v12;
    v6 = v15;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18DA288(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642BC0, &qword_1D1E7E8A0);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, &v15, &qword_1EC646220, &qword_1D1E7E8A8);
      v5 = v15;
      v6 = v16;
      result = sub_1D171D2F0(v15, v16);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

void *sub_1D18DA3CC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (!v3)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v5 = sub_1D1E68BCC();
  LOWORD(v6) = *(a1 + 32);
  v7 = *(a1 + 40);
  v8 = sub_1D171D15C(v6);
  if (v9)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v5;
  }

  v10 = v8;
  result = v7;
  v12 = (a1 + 56);
  while (1)
  {
    *(v5 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v10;
    *(v5[6] + 2 * v10) = v6;
    *(v5[7] + 8 * v10) = result;
    v13 = v5[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v5[2] = v15;
    if (!--v3)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v6 = *(v12 - 4);
    v17 = *v12;

    v10 = sub_1D171D15C(v6);
    v12 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18DA4D4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642908, &qword_1D1E6E668);
    v3 = sub_1D1E68BCC();
    for (i = a1 + 32; ; i += 48)
    {
      sub_1D1741C08(i, &v15, &qword_1EC6460C0, &unk_1D1E7E5D0);
      result = sub_1D171D1A4(v15 | (v16 << 32));
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 8 * result;
      v8 = v16;
      *v7 = v15;
      *(v7 + 4) = v8;
      v9 = v3[7] + 40 * result;
      v10 = v17;
      v11 = v18;
      *(v9 + 32) = v19;
      *v9 = v10;
      *(v9 + 16) = v11;
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

unint64_t sub_1D18DA614(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B78, &qword_1D1E6E8C0);
  v3 = sub_1D1E68BCC();
  v5 = a1[4];
  v4 = a1[5];
  result = sub_1D17420B0(v5);
  if (v7)
  {
LABEL_7:
    __break(1u);
    return MEMORY[0x1E69E7CC8];
  }

  v8 = (a1 + 7);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v5;
    *(v3[7] + 8 * result) = v4;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    v12 = v4;
    if (!--v1)
    {
      return v3;
    }

    v5 = *(v8 - 1);
    v4 = *v8;
    result = sub_1D17420B0(v5);
    v8 += 2;
    if (v13)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18DA708(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B50, &qword_1D1E6E898);
    v3 = sub_1D1E68BCC();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_1D171D3B8(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 2 * result) = v5;
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

unint64_t sub_1D18DA7F8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6461B8, &qword_1D1E7E7D8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6428F8, &qword_1D1E7E7E0);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC6461B8, &qword_1D1E7E7D8);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for HomeState(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for HomeState);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18DAA38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E20, &unk_1D1E717B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B68, &qword_1D1E6E8B0);
    v7 = sub_1D1E68BCC();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v8, v5, &unk_1EC649E20, &unk_1D1E717B0);
      result = sub_1D1742188();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = sub_1D1E66A7C();
      (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B60, &qword_1D1E7E800);
      result = sub_1D1741A90(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &qword_1EC642B60, &qword_1D1E7E800);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
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

unint64_t sub_1D18DAC64(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A68, &qword_1D1E6E7B8);
    v3 = sub_1D1E68BCC();
    v4 = a1 + 32;

    while (1)
    {
      sub_1D1741C08(v4, v10, &qword_1EC646178, &unk_1D1E7E740);
      result = sub_1D171D140(v10[0]);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v10[0];
      result = sub_1D16EEE38(&v11, (v3[7] + 32 * result));
      v7 = v3[2];
      v8 = __OFADD__(v7, 1);
      v9 = v7 + 1;
      if (v8)
      {
        goto LABEL_10;
      }

      v3[2] = v9;
      v4 += 40;
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

unint64_t sub_1D18DAD84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BC8, &unk_1D1EB2A50);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BE0, &unk_1D1E7E600);
    v7 = sub_1D1E68BCC();
    v21 = *(v2 + 48);
    v8 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v9 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v8, v5, &qword_1EC645BC8, &unk_1D1EB2A50);
      result = sub_1D1742188();
      if (v11)
      {
        break;
      }

      v12 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = v7[6];
      v14 = sub_1D1E66A7C();
      (*(*(v14 - 8) + 32))(v13 + *(*(v14 - 8) + 72) * v12, v5, v14);
      v15 = v7[7];
      v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BD0, &qword_1D1E96B30);
      result = sub_1D1741A90(&v5[v21], v15 + *(*(v16 - 8) + 72) * v12, &qword_1EC645BD0, &qword_1D1E96B30);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
      v8 += v9;
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

unint64_t sub_1D18DAFD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646190, &unk_1D1E7E770);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429C8, &unk_1D1E6E720);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646190, &unk_1D1E7E770);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
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

unint64_t sub_1D18DB1BC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646180, &unk_1D1E7E750);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v19 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429D8, &qword_1D1E6E730);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646180, &unk_1D1E7E750);
      result = sub_1D171DF0C(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for PhoenixMetricsAggregator.IntervalKey(0);
      result = sub_1D18DC75C(v5, v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for PhoenixMetricsAggregator.IntervalKey);
      *(v7[7] + 8 * v13) = *(v5 + v8);
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

unint64_t sub_1D18DB3A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AB0, &unk_1D1E6E800);
    v3 = sub_1D1E68BCC();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1D171D128(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
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

unint64_t sub_1D18DB490(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
    v5 = sub_1D1E68BCC();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *(i - 8);
      v8 = *i;

      result = sub_1D171D408(v7);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + result) = v7;
      *(v5[7] + 8 * result) = v8;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
      if (!--v3)
      {

        return v5;
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

unint64_t sub_1D18DB57C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646148, &unk_1D1E7E6E0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A40, &qword_1D1E6E798);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646148, &unk_1D1E7E6E0);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticLightProfile(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticLightProfile);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18DB798(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646158, &qword_1D1E7E708);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642AE0, &qword_1D1E7E710);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646158, &qword_1D1E7E708);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for StaticTelevisionProfile(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for StaticTelevisionProfile);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18DB9B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643248, &qword_1D1E716A0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A28, &qword_1D1E6E780);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC643248, &qword_1D1E716A0);
      result = sub_1D171D140(*v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + result) = *v5;
      v14 = v7[7];
      v15 = type metadata accessor for StaticCharacteristic(0);
      result = sub_1D18DC75C(&v5[v8], v14 + *(*(v15 - 8) + 72) * v13, type metadata accessor for StaticCharacteristic);
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

unint64_t sub_1D18DBB98(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646140, &unk_1D1E7E6D0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A38, &qword_1D1E6E790);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646140, &unk_1D1E7E6D0);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for ActionService(0);
      result = sub_1D18DC75C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for ActionService);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
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

unint64_t sub_1D18DBDD8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646130, &qword_1D1E7E6A8);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642B88, &unk_1D1E6E8D0);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646130, &qword_1D1E7E6A8);
      v11 = *v5;
      result = sub_1D171D15C(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 2 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for StaticEndpoint(0);
      result = sub_1D18DC75C(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for StaticEndpoint);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

void *sub_1D18DBFD4(void *a1)
{
  v1 = a1[2];
  if (!v1)
  {
    return MEMORY[0x1E69E7CC8];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC642A10, &qword_1D1E7E6A0);
  v3 = sub_1D1E68BCC();
  v4 = a1[4];
  v5 = a1[5];
  v6 = sub_1D17420B0(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 7);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 8 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 1);
    v15 = *v10;

    v8 = sub_1D17420B0(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18DC0DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646128, &unk_1D1E7E690);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6429F8, &unk_1D1E6E750);
    v7 = sub_1D1E68BCC();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1D1741C08(v9, v5, &qword_1EC646128, &unk_1D1E7E690);
      result = sub_1D1742188();
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1D1E66A7C();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + v13) = v5[v8];
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

unint64_t sub_1D18DC2C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v41 = a1;
  v42 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v43 = v8;
  v44 = 0;
  v45 = v11 & v9;
  v46 = a2;
  v47 = a3;

  sub_1D1ABFE14(&v38);
  if (!v40)
  {
    goto LABEL_25;
  }

  v12 = v38;
  sub_1D16EEE38(&v39, v37);
  v13 = *a5;
  result = sub_1D171D140(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1D1721C60(v19, a4 & 1);
    result = sub_1D171D140(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_1D1E690FC();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    sub_1D1734AC8();
    result = v24;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = (v22[7] + 32 * result);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_1D16EEE38(v37, v23);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + result) = v12;
  result = sub_1D16EEE38(v37, (v22[7] + 32 * result));
  v25 = v22[2];
  v18 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v18)
  {
    v22[2] = v26;
LABEL_15:
    sub_1D1ABFE14(&v38);
    if (v40)
    {
      v20 = 1;
      do
      {
        v12 = v38;
        sub_1D16EEE38(&v39, v37);
        v28 = *a5;
        result = sub_1D171D140(v12);
        v30 = v28[2];
        v31 = (v29 & 1) == 0;
        v18 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v29;
        if (v28[3] < v32)
        {
          sub_1D1721C60(v32, 1);
          result = sub_1D171D140(v12);
          if ((a4 & 1) != (v33 & 1))
          {
            goto LABEL_8;
          }
        }

        v34 = *a5;
        if (a4)
        {
          v27 = (v34[7] + 32 * result);
          __swift_destroy_boxed_opaque_existential_1(v27);
          sub_1D16EEE38(v37, v27);
        }

        else
        {
          v34[(result >> 6) + 8] |= 1 << result;
          *(v34[6] + result) = v12;
          result = sub_1D16EEE38(v37, (v34[7] + 32 * result));
          v35 = v34[2];
          v18 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v34[2] = v36;
        }

        sub_1D1ABFE14(&v38);
      }

      while (v40);
    }

LABEL_25:
    sub_1D1716918(v41);
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1D18DC5C8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_1D18DC610(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_1D18DC660(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StaticService(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18DC6F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v8 = *(v1 + 32);
  v5 = v3[3];
  v6 = __swift_project_boxed_opaque_existential_1(v3, v5);
  return sub_1D18D3ED4(v6, &v8, a1, v4, v5);
}

uint64_t sub_1D18DC75C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D18DC824()
{
  result = qword_1EC6462F8;
  if (!qword_1EC6462F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC6462F8);
  }

  return result;
}

unint64_t sub_1D18DC87C()
{
  result = qword_1EC646300;
  if (!qword_1EC646300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646300);
  }

  return result;
}

unint64_t sub_1D18DC8D4()
{
  result = qword_1EC646308;
  if (!qword_1EC646308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646308);
  }

  return result;
}

unint64_t sub_1D18DC92C()
{
  result = qword_1EC646310;
  if (!qword_1EC646310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646310);
  }

  return result;
}

uint64_t ServiceKind.foregroundColor.getter()
{
  v1 = *v0;
  v12[1] = *v0;
  ServiceKind.umbrellaCategory.getter(v12);
  v2 = "00-8000-0026BB765291";
  v3 = "17-A590-755E1AAC02AE";
  if (v12[0] != 6)
  {
    v3 = "73-8FBD-0E8978A33403";
  }

  v4 = "60-AD68-D91053B75F44";
  if (v12[0] != 4)
  {
    v4 = "7E-BE63-1D00B1500545";
  }

  if (v12[0] <= 5u)
  {
    v3 = v4;
  }

  v5 = "73-A058-C5E64BC487B2";
  if (v12[0] != 2)
  {
    v5 = "CE-986D-63B28F62C9E3";
  }

  if (v12[0])
  {
    v2 = "13-AA62-01754F256DD5";
  }

  if (v12[0] > 1u)
  {
    v2 = v5;
  }

  if (v12[0] <= 3u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v3;
  }

  if ((v6 | 0x8000000000000000) == 0x80000001D1EB37F0)
  {
  }

  else
  {
    v7 = sub_1D1E6904C();

    if ((v7 & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  if (sub_1D17C4E00(v1, &unk_1F4D62268))
  {
    return sub_1D1E673FC();
  }

LABEL_21:
  v11[2] = v1;
  ServiceKind.rawValue.getter();
  if (0x80000001D1EB34F0 == v9)
  {
  }

  else
  {
    v10 = sub_1D1E6904C();

    if ((v10 & 1) == 0)
    {
      v11[1] = v1;
      ServiceKind.umbrellaCategory.getter(v11);
      if (v11[0] <= 2u)
      {
        if (!v11[0])
        {
          return sub_1D1E6735C();
        }

        if (v11[0] == 2)
        {
          return sub_1D1E673FC();
        }
      }

      else
      {
        switch(v11[0])
        {
          case 3:
            return sub_1D1E673CC();
          case 4:
            return sub_1D1E6738C();
          case 6:
            return sub_1D1E6734C();
        }
      }

      return sub_1D1E673AC();
    }
  }

  return sub_1D1E6739C();
}

uint64_t ServiceKind.localizedDescription.getter()
{
  v1 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D1E677DC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  result = *v0;
  switch(*v0)
  {
    case 1:
      v4 = "AccessoryInformationService_ServiceTypeCapitalized";
      goto LABEL_22;
    case 2:
      v7 = 0x7363697274654DLL;
      v15 = 0xE700000000000000;
      goto LABEL_69;
    case 3:
      v8 = "AirPurifier_ServiceTypeCapitalized";
      goto LABEL_56;
    case 4:
      v14 = "AirQualitySensor_ServiceTypeCapitalized";
      goto LABEL_53;
    case 5:
      v18 = "Battery_ServiceTypeCapitalized";
      goto LABEL_60;
    case 6:
      v13 = "CameraControl_ServiceTypeCapitalized";
      goto LABEL_45;
    case 7:
      v16 = "CameraRTPStreamManagement_ServiceTypeCapitalized";
      goto LABEL_43;
    case 8:
      v16 = "CameraRecordingManagement_ServiceTypeCapitalized";
LABEL_43:
      v6 = (v16 - 32);
      v7 = 0xD000000000000030;
      goto LABEL_68;
    case 9:
      v6 = "nsor_ServiceTypeCapitalized";
      v7 = 0xD00000000000002ALL;
      goto LABEL_68;
    case 0xA:
      v6 = "rviceTypeCapitalized";
      v7 = 0xD00000000000002BLL;
      goto LABEL_68;
    case 0xB:
      v13 = "ContactSensor_ServiceTypeCapitalized";
      goto LABEL_45;
    case 0xC:
      return 0x6C616E7265746E49;
    case 0xD:
      v7 = 0x74736F6E67616944;
      v15 = 0xEB00000000736369;
      goto LABEL_69;
    case 0xE:
      v6 = "_ServiceTypeShortCapitalized";
      v7 = 0xD00000000000001BLL;
      goto LABEL_68;
    case 0xF:
      v12 = "VideoDoorbell_CategoryCapitalized";
      goto LABEL_65;
    case 0x10:
      v6 = "Faucet_ServiceTypeCapitalized";
      v7 = 0xD00000000000001ALL;
      goto LABEL_68;
    case 0x11:
      v11 = "Faucet_ServiceTypeCapitalized";
      goto LABEL_67;
    case 0x12:
      v19 = "FilterMaintenance_ServiceTypeCapitalized";
      goto LABEL_49;
    case 0x13:
      v14 = "GarageDoorOpener_ServiceTypeCapitalized";
      goto LABEL_53;
    case 0x14:
      v17 = "HeaterCooler_ServiceTypeCapitalized";
      goto LABEL_47;
    case 0x15:
      v6 = "erviceTypeCapitalized";
      v7 = 0xD00000000000002DLL;
      goto LABEL_68;
    case 0x16:
      v10 = "HumiditySensor_ServiceTypeCapitalized";
      goto LABEL_63;
    case 0x17:
      v8 = "InputSource_ServiceTypeCapitalized";
      goto LABEL_56;
    case 0x18:
      v14 = "IrrigationSystem_ServiceTypeCapitalized";
LABEL_53:
      v6 = (v14 - 32);
      v7 = 0xD000000000000027;
      goto LABEL_68;
    case 0x19:
      v9 = "Label_ServiceTypeCapitalized";
      goto LABEL_26;
    case 0x1A:
      v12 = "LeakSensor_ServiceTypeCapitalized";
      goto LABEL_65;
    case 0x1B:
      v8 = "LightSensor_ServiceTypeCapitalized";
      goto LABEL_56;
    case 0x1C:
      v6 = "erviceTypeCapitalized";
      v7 = 0xD000000000000020;
      goto LABEL_68;
    case 0x1D:
      v10 = "LockManagement_ServiceTypeCapitalized";
      goto LABEL_63;
    case 0x1E:
      v13 = "LockMechanism_ServiceTypeCapitalized";
LABEL_45:
      v6 = (v13 - 32);
      v7 = 0xD000000000000024;
      goto LABEL_68;
    case 0x1F:
      v12 = "Microphone_ServiceTypeCapitalized";
      goto LABEL_65;
    case 0x20:
      v17 = "MotionSensor_ServiceTypeCapitalized";
LABEL_47:
      v6 = (v17 - 32);
      v7 = 0xD000000000000023;
      goto LABEL_68;
    case 0x21:
      v6 = "Outlet_ServiceTypeCapitalized";
      v7 = 0xD000000000000026;
      goto LABEL_68;
    case 0x22:
      v11 = "Outlet_ServiceTypeCapitalized";
      goto LABEL_67;
    case 0x23:
      v10 = "SecuritySystem_ServiceTypeCapitalized";
      goto LABEL_63;
    case 0x24:
      v9 = "Slats_ServiceTypeCapitalized";
      goto LABEL_26;
    case 0x25:
      v8 = "SmokeSensor_ServiceTypeCapitalized";
LABEL_56:
      v6 = (v8 - 32);
      v7 = 0xD000000000000022;
      goto LABEL_68;
    case 0x26:
      v18 = "Speaker_ServiceTypeCapitalized";
LABEL_60:
      v6 = (v18 - 32);
      v7 = 0xD00000000000001ELL;
      goto LABEL_68;
    case 0x27:
      v6 = "iceTypeCapitalized";
      v7 = 0xD000000000000031;
      goto LABEL_68;
    case 0x28:
      v4 = "StatelessProgrammableSwitch_ServiceTypeCapitalized";
LABEL_22:
      v6 = (v4 - 32);
      v7 = 0xD000000000000032;
      goto LABEL_68;
    case 0x29:
      v11 = "Switch_ServiceTypeCapitalized";
      goto LABEL_67;
    case 0x2A:
      v7 = 0x4320746567726154;
      v15 = 0xEE006C6F72746E6FLL;
      goto LABEL_69;
    case 0x2B:
      v6 = "ceTypeCapitalized";
      v7 = 0xD000000000000019;
      goto LABEL_68;
    case 0x2C:
      v12 = "Television_ServiceTypeCapitalized";
      goto LABEL_65;
    case 0x2D:
      v19 = "TemperatureSensor_ServiceTypeCapitalized";
LABEL_49:
      v6 = (v19 - 32);
      v7 = 0xD000000000000028;
      goto LABEL_68;
    case 0x2E:
      v12 = "Thermostat_ServiceTypeCapitalized";
LABEL_65:
      v15 = (v12 - 32) | 0x8000000000000000;
      v7 = 0xD000000000000021;
      goto LABEL_69;
    case 0x2F:
      v9 = "Valve_ServiceTypeCapitalized";
LABEL_26:
      v6 = (v9 - 32);
      v7 = 0xD00000000000001CLL;
      goto LABEL_68;
    case 0x30:
      v10 = "VentilationFan_ServiceTypeCapitalized";
      goto LABEL_63;
    case 0x31:
      result = MobileGestalt_get_current_device();
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_72;
    case 0x32:
      result = MobileGestalt_get_current_device();
      if (result)
      {
LABEL_4:
        v5 = result;
        MobileGestalt_get_wapiCapability();

        sub_1D1E6776C();
        sub_1D1E66ACC();
        return sub_1D1E6787C();
      }

      else
      {
        __break(1u);
LABEL_72:
        __break(1u);
      }

      return result;
    case 0x33:
      v11 = "Window_ServiceTypeCapitalized";
LABEL_67:
      v6 = (v11 - 32);
      v7 = 0xD00000000000001DLL;
      goto LABEL_68;
    case 0x34:
      v10 = "WindowCovering_ServiceTypeCapitalized";
LABEL_63:
      v6 = (v10 - 32);
      v7 = 0xD000000000000025;
LABEL_68:
      v15 = v6 | 0x8000000000000000;
LABEL_69:
      result = static String.hfLocalized(_:)(v7, v15);
      break;
    default:
      return result;
  }

  return result;
}

HomeDataModel::ServiceKind_optional String.serviceKind.getter@<W0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  result.value = ServiceKind.init(rawValue:)(v6).value;
  v8 = v9;
  if (v9 == 53)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

HomeDataModel::ServiceSubKind_optional String.serviceSubKind.getter@<W0>(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  result.value = ServiceSubKind.init(rawValue:)(v6).value;
  v8 = v9;
  if (v9 == 5)
  {
    v8 = 0;
  }

  *a3 = v8;
  return result;
}

uint64_t ServiceKind.requiredCharacteristicKinds.getter()
{
  v1 = *v0 - 1;
  if (v1 <= 0x33 && ((0xCFFBFFEFFE7DFuLL >> v1) & 1) != 0)
  {
    return sub_1D179B3D4(*(&off_1E83EF3D8 + (*v0 - 1)));
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t ServiceKind.optionalCharacteristicKinds.getter()
{
  v1 = *v0 - 1;
  if (v1 <= 0x33 && ((0xCF3BFFEFFE71DuLL >> v1) & 1) != 0)
  {
    return sub_1D179B3D4(*(&off_1E83EF578 + (*v0 - 1)));
  }

  else
  {
    return MEMORY[0x1E69E7CD0];
  }
}

HomeDataModel::ServiceKind_optional __swiftcall ServiceKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E6908C();

  v5 = 0;
  v6 = 35;
  switch(v3)
  {
    case 0:
      goto LABEL_50;
    case 1:
      v5 = 1;
      goto LABEL_50;
    case 2:
      v5 = 2;
      goto LABEL_50;
    case 3:
      v5 = 3;
      goto LABEL_50;
    case 4:
      v5 = 4;
      goto LABEL_50;
    case 5:
      v5 = 5;
      goto LABEL_50;
    case 6:
      v5 = 6;
      goto LABEL_50;
    case 7:
      v5 = 7;
      goto LABEL_50;
    case 8:
      v5 = 8;
      goto LABEL_50;
    case 9:
      v5 = 9;
      goto LABEL_50;
    case 10:
      v5 = 10;
      goto LABEL_50;
    case 11:
      v5 = 11;
      goto LABEL_50;
    case 12:
      v5 = 12;
      goto LABEL_50;
    case 13:
      v5 = 13;
      goto LABEL_50;
    case 14:
      v5 = 14;
      goto LABEL_50;
    case 15:
      v5 = 15;
      goto LABEL_50;
    case 16:
      v5 = 16;
      goto LABEL_50;
    case 17:
      v5 = 17;
      goto LABEL_50;
    case 18:
      v5 = 18;
      goto LABEL_50;
    case 19:
      v5 = 19;
      goto LABEL_50;
    case 20:
      v5 = 20;
      goto LABEL_50;
    case 21:
      v5 = 21;
      goto LABEL_50;
    case 22:
      v5 = 22;
      goto LABEL_50;
    case 23:
      v5 = 23;
      goto LABEL_50;
    case 24:
      v5 = 24;
      goto LABEL_50;
    case 25:
      v5 = 25;
      goto LABEL_50;
    case 26:
      v5 = 26;
      goto LABEL_50;
    case 27:
      v5 = 27;
      goto LABEL_50;
    case 28:
      v5 = 28;
      goto LABEL_50;
    case 29:
      v5 = 29;
      goto LABEL_50;
    case 30:
      v5 = 30;
      goto LABEL_50;
    case 31:
      v5 = 31;
      goto LABEL_50;
    case 32:
      v5 = 32;
      goto LABEL_50;
    case 33:
      v5 = 33;
      goto LABEL_50;
    case 34:
      v5 = 34;
LABEL_50:
      v6 = v5;
      break;
    case 35:
      break;
    case 36:
      v6 = 36;
      break;
    case 37:
      v6 = 37;
      break;
    case 38:
      v6 = 38;
      break;
    case 39:
      v6 = 39;
      break;
    case 40:
      v6 = 40;
      break;
    case 41:
      v6 = 41;
      break;
    case 42:
      v6 = 42;
      break;
    case 43:
      v6 = 43;
      break;
    case 44:
      v6 = 44;
      break;
    case 45:
      v6 = 45;
      break;
    case 46:
      v6 = 46;
      break;
    case 47:
      v6 = 47;
      break;
    case 48:
      v6 = 48;
      break;
    case 49:
      v6 = 49;
      break;
    case 50:
      v6 = 50;
      break;
    case 51:
      v6 = 51;
      break;
    case 52:
      v6 = 52;
      break;
    default:
      v6 = 53;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_1D18DD7B0()
{
  ServiceKind.rawValue.getter();
  v1 = v0;
  ServiceKind.rawValue.getter();
  if (v1 == v2)
  {
    v3 = 1;
  }

  else
  {
    v3 = sub_1D1E6904C();
  }

  return v3 & 1;
}

unint64_t sub_1D18DD858@<X0>(void *a1@<X8>)
{
  result = ServiceKind.rawValue.getter();
  *a1 = 0xD000000000000024;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D18DD948()
{
  sub_1D1E6920C();
  ServiceKind.rawValue.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18DD9B0(uint64_t a1)
{
  ServiceKind.rawValue.getter();
  sub_1D1E678EC();
}

uint64_t sub_1D18DDA14(uint64_t a1)
{
  sub_1D1E6920C();
  ServiceKind.rawValue.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

unint64_t sub_1D18DDAB4@<X0>(void *a1@<X8>)
{
  result = ServiceKind.rawValue.getter();
  *a1 = 0xD000000000000024;
  a1[1] = v3;
  return result;
}

uint64_t ServiceKind.supportedCharacteristicKinds.getter()
{
  v0 = ServiceKind.requiredCharacteristicKinds.getter();
  v1 = ServiceKind.optionalCharacteristicKinds.getter();

  return sub_1D18C0104(v1, v0);
}

HomeDataModel::ServiceSubKind_optional __swiftcall ServiceSubKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D18DDCCC()
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18DDD80(uint64_t a1)
{
  sub_1D1E678EC();
}

uint64_t sub_1D18DDE20(uint64_t a1)
{
  sub_1D1E6920C();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

void sub_1D18DDEDC(void *a1@<X8>)
{
  v2 = *v1;
  v3 = "dentifierValveSideJets";
  v4 = "F6-8E38-5291C7FB7545";
  v5 = "AC-A277-EA6D097A190C";
  if (v2 != 3)
  {
    v5 = "4C-B87C-C35305FA9FFC";
  }

  if (v2 != 2)
  {
    v4 = v5;
  }

  if (*v1)
  {
    v3 = "47-BAC7-A7CF9EBD35EA";
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  *a1 = 0xD000000000000024;
  a1[1] = v6 | 0x8000000000000000;
}

uint64_t ServiceKind.pluralLocalizedDescription.getter()
{
  v1 = sub_1D1E66ADC();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1D1E677DC();
  MEMORY[0x1EEE9AC00](v2 - 8);
  result = *v0;
  switch(*v0)
  {
    case 1:
      v4 = "AccessoryInformationService_ServiceTypeCapitalizedPlural";
      goto LABEL_22;
    case 2:
      v7 = 0x7363697274654DLL;
      v15 = 0xE700000000000000;
      goto LABEL_69;
    case 3:
      v8 = "AirPurifier_ServiceTypeCapitalizedPlural";
      goto LABEL_56;
    case 4:
      v14 = "AirQualitySensor_ServiceTypeCapitalizedPlural";
      goto LABEL_53;
    case 5:
      v18 = "Battery_ServiceTypeCapitalizedPlural";
      goto LABEL_60;
    case 6:
      v13 = "CameraControl_ServiceTypeCapitalizedPlural";
      goto LABEL_45;
    case 7:
      v16 = "CameraRTPStreamManagement_ServiceTypeCapitalizedPlural";
      goto LABEL_43;
    case 8:
      v16 = "CameraRecordingManagement_ServiceTypeCapitalizedPlural";
LABEL_43:
      v6 = (v16 - 32);
      v7 = 0xD000000000000036;
      goto LABEL_68;
    case 9:
      v6 = "CapitalizedPlural";
      v7 = 0xD000000000000030;
      goto LABEL_68;
    case 0xA:
      v6 = "rviceTypeCapitalizedPlural";
      v7 = 0xD000000000000031;
      goto LABEL_68;
    case 0xB:
      v13 = "ContactSensor_ServiceTypeCapitalizedPlural";
      goto LABEL_45;
    case 0xC:
      v7 = 0x6C616E7265746E49;
      v15 = 0xE800000000000000;
      goto LABEL_69;
    case 0xD:
      v7 = 0x74736F6E67616944;
      v15 = 0xEB00000000736369;
      goto LABEL_69;
    case 0xE:
      v6 = "tCapitalizedPlural";
      v7 = 0xD000000000000021;
      goto LABEL_68;
    case 0xF:
      v12 = "VideoDoorbell_CategoryCapitalizedPlural";
      goto LABEL_65;
    case 0x10:
      v6 = "peCapitalizedPlural";
      v7 = 0xD000000000000020;
      goto LABEL_68;
    case 0x11:
      v11 = "Faucet_ServiceTypeCapitalizedPlural";
      goto LABEL_67;
    case 0x12:
      v19 = "FilterMaintenance_ServiceTypeCapitalizedPlural";
      goto LABEL_49;
    case 0x13:
      v14 = "GarageDoorOpener_ServiceTypeCapitalizedPlural";
      goto LABEL_53;
    case 0x14:
      v17 = "HeaterCooler_ServiceTypeCapitalizedPlural";
      goto LABEL_47;
    case 0x15:
      v6 = "erviceTypeCapitalizedPlural";
      v7 = 0xD000000000000033;
      goto LABEL_68;
    case 0x16:
      v10 = "HumiditySensor_ServiceTypeCapitalizedPlural";
      goto LABEL_63;
    case 0x17:
      v8 = "InputSource_ServiceTypeCapitalizedPlural";
      goto LABEL_56;
    case 0x18:
      v14 = "IrrigationSystem_ServiceTypeCapitalizedPlural";
LABEL_53:
      v6 = (v14 - 32);
      v7 = 0xD00000000000002DLL;
      goto LABEL_68;
    case 0x19:
      v9 = "Label_ServiceTypeCapitalizedPlural";
      goto LABEL_26;
    case 0x1A:
      v12 = "LeakSensor_ServiceTypeCapitalizedPlural";
      goto LABEL_65;
    case 0x1B:
      v8 = "LightSensor_ServiceTypeCapitalizedPlural";
      goto LABEL_56;
    case 0x1C:
      v6 = "erviceTypeCapitalizedPlural";
      v7 = 0xD000000000000026;
      goto LABEL_68;
    case 0x1D:
      v10 = "LockManagement_ServiceTypeCapitalizedPlural";
      goto LABEL_63;
    case 0x1E:
      v13 = "LockMechanism_ServiceTypeCapitalizedPlural";
LABEL_45:
      v6 = (v13 - 32);
      v7 = 0xD00000000000002ALL;
      goto LABEL_68;
    case 0x1F:
      v12 = "Microphone_ServiceTypeCapitalizedPlural";
      goto LABEL_65;
    case 0x20:
      v17 = "MotionSensor_ServiceTypeCapitalizedPlural";
LABEL_47:
      v6 = (v17 - 32);
      v7 = 0xD000000000000029;
      goto LABEL_68;
    case 0x21:
      v6 = "peCapitalizedPlural";
      v7 = 0xD00000000000002CLL;
      goto LABEL_68;
    case 0x22:
      v11 = "Outlet_ServiceTypeCapitalizedPlural";
      goto LABEL_67;
    case 0x23:
      v10 = "SecuritySystem_ServiceTypeCapitalizedPlural";
      goto LABEL_63;
    case 0x24:
      v9 = "Slats_ServiceTypeCapitalizedPlural";
      goto LABEL_26;
    case 0x25:
      v8 = "SmokeSensor_ServiceTypeCapitalizedPlural";
LABEL_56:
      v6 = (v8 - 32);
      v7 = 0xD000000000000028;
      goto LABEL_68;
    case 0x26:
      v18 = "Speaker_ServiceTypeCapitalizedPlural";
LABEL_60:
      v6 = (v18 - 32);
      v7 = 0xD000000000000024;
      goto LABEL_68;
    case 0x27:
      v6 = "iceTypeCapitalizedPlural";
      v7 = 0xD000000000000037;
      goto LABEL_68;
    case 0x28:
      v4 = "StatelessProgrammableSwitch_ServiceTypeCapitalizedPlural";
LABEL_22:
      v6 = (v4 - 32);
      v7 = 0xD000000000000038;
      goto LABEL_68;
    case 0x29:
      v11 = "Switch_ServiceTypeCapitalizedPlural";
      goto LABEL_67;
    case 0x2A:
      v7 = 0x4320746567726154;
      v15 = 0xEF736C6F72746E6FLL;
      goto LABEL_69;
    case 0x2B:
      v6 = "ceTypeCapitalized";
      v7 = 0xD000000000000019;
      goto LABEL_68;
    case 0x2C:
      v12 = "Television_ServiceTypeCapitalizedPlural";
      goto LABEL_65;
    case 0x2D:
      v19 = "TemperatureSensor_ServiceTypeCapitalizedPlural";
LABEL_49:
      v6 = (v19 - 32);
      v7 = 0xD00000000000002ELL;
      goto LABEL_68;
    case 0x2E:
      v12 = "Thermostat_ServiceTypeCapitalizedPlural";
LABEL_65:
      v15 = (v12 - 32) | 0x8000000000000000;
      v7 = 0xD000000000000027;
      goto LABEL_69;
    case 0x2F:
      v9 = "Valve_ServiceTypeCapitalizedPlural";
LABEL_26:
      v6 = (v9 - 32);
      v7 = 0xD000000000000022;
      goto LABEL_68;
    case 0x30:
      v10 = "VentilationFan_ServiceTypeCapitalizedPlural";
      goto LABEL_63;
    case 0x31:
      result = MobileGestalt_get_current_device();
      if (result)
      {
        goto LABEL_4;
      }

      goto LABEL_71;
    case 0x32:
      result = MobileGestalt_get_current_device();
      if (result)
      {
LABEL_4:
        v5 = result;
        MobileGestalt_get_wapiCapability();

        sub_1D1E6776C();
        sub_1D1E66ACC();
        return sub_1D1E6787C();
      }

      else
      {
        __break(1u);
LABEL_71:
        __break(1u);
      }

      return result;
    case 0x33:
      v11 = "Window_ServiceTypeCapitalizedPlural";
LABEL_67:
      v6 = (v11 - 32);
      v7 = 0xD000000000000023;
      goto LABEL_68;
    case 0x34:
      v10 = "WindowCovering_ServiceTypeCapitalizedPlural";
LABEL_63:
      v6 = (v10 - 32);
      v7 = 0xD00000000000002BLL;
LABEL_68:
      v15 = v6 | 0x8000000000000000;
LABEL_69:
      result = static String.hfLocalized(_:)(v7, v15);
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Collection<>.humanReadableServiceKinds.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1D18CE91C(sub_1D18DE6D8, 0, a1, MEMORY[0x1E69E6158], MEMORY[0x1E69E73E0], a2, MEMORY[0x1E69E7410], a8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC643CB0, &qword_1D1E73640);
  sub_1D17D8EA8(&qword_1EE07B278, &qword_1EC643CB0, &qword_1D1E73640, MEMORY[0x1E69E6310]);
  v8 = sub_1D1E6770C();

  return v8;
}

uint64_t sub_1D18DE6D8@<X0>(uint64_t *a1@<X8>)
{
  result = ServiceKind.localizedDescription.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D18DE74C(uint64_t (*a1)(_BYTE *))
{
  v6 = *v1;
  v3 = static IconSymbol.defaultSymbol(serviceKind:)(&v6, &v5);
  return a1(v3);
}

unint64_t ServiceKind.iconSymbolDeactivatedSlashedVersion.getter()
{
  v2 = *v0;
  static IconSymbol.defaultSymbol(serviceKind:)(&v2, &v3);
  if (v3 == 31)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0;
  }
}

void *ServiceKind.iconSymbolDeactivatedRenderingMode.getter@<X0>(char *a1@<X8>)
{
  v6 = *v1;
  result = static IconSymbol.defaultSymbol(serviceKind:)(&v6, &v7);
  if (v7 - 41 < 7 || v7 == 27)
  {
    v5 = 2;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return result;
}

void *ServiceKind.iconSymbolActivatedRenderingMode.getter@<X0>(char *a1@<X8>)
{
  v9 = *v1;
  result = static IconSymbol.defaultSymbol(serviceKind:)(&v9, &v10);
  v4 = v10 - 26;
  v5 = v4 > 0x2D;
  v6 = (1 << v4) & 0x200000000181;
  if (v5 || v6 == 0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 0;
  }

  *a1 = v8;
  return result;
}

uint64_t sub_1D18DE8E8(uint64_t (*a1)(_BYTE *))
{
  v3 = *v1;
  v8 = 47;
  v7 = v3;
  v4 = static IconSymbol.defaultSymbol(for:subKind:)(&v8, &v7, &v6);
  return a1(v4);
}

void *sub_1D18DE93C()
{
  result = sub_1D179ACDC(&unk_1F4D62290);
  off_1EC646318 = result;
  return result;
}

uint64_t static ServiceKind.serviceKindsThatRequireSpecialToggleHandling.getter()
{
  if (qword_1EC642230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static ServiceKind.serviceKindsThatRequireSpecialToggleHandling.setter(void *a1)
{
  if (qword_1EC642230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  off_1EC646318 = a1;
}

uint64_t (*static ServiceKind.serviceKindsThatRequireSpecialToggleHandling.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1EC642230 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void ServiceKind.togglingCharacteristicKind.getter(_BYTE *a1@<X8>)
{
  v2 = *v1;
  if (*v1 > 0x1Eu)
  {
    if (v2 <= 0x30)
    {
      if (((1 << v2) & 0x1940000000000) != 0)
      {
        goto LABEL_15;
      }

      if (v2 == 38)
      {
        goto LABEL_16;
      }

      if (v2 == 41)
      {
        goto LABEL_18;
      }
    }

    if (v2 != 31)
    {
      if (v2 == 34)
      {
        goto LABEL_18;
      }

LABEL_13:
      *a1 = -82;
      return;
    }

LABEL_16:
    *a1 = 84;
    return;
  }

  if (*v1 <= 0x13u)
  {
    if (v2 != 3)
    {
      if (v2 != 16)
      {
        if (v2 != 17)
        {
          goto LABEL_13;
        }

        goto LABEL_15;
      }

      goto LABEL_18;
    }

LABEL_15:
    *a1 = 3;
    return;
  }

  if ((v2 - 20) < 2)
  {
    goto LABEL_15;
  }

  if (v2 != 28)
  {
    goto LABEL_13;
  }

LABEL_18:
  *a1 = 105;
}

uint64_t ServiceKind.canBeToggled.getter()
{
  v1 = *v0;
  if (v1 - 3) < 0x2E && ((0x32C892066001uLL >> (v1 - 3)))
  {
    v2 = 1;
  }

  else
  {
    if (qword_1EC642230 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v3 = off_1EC646318;

    v2 = sub_1D171951C(v1, v3);
  }

  return v2 & 1;
}

uint64_t ServiceKind.stateStatusDependentCharaceristicKinds.getter()
{
  v1 = &unk_1F4D5EEA0;
  switch(*v0)
  {
    case 3:
      goto LABEL_4;
    case 4:
      result = sub_1D179B3D4(&unk_1F4D5EEC8);
      break;
    case 9:
      result = sub_1D179B3D4(&unk_1F4D5EEF0);
      break;
    case 0xA:
      result = sub_1D179B3D4(&unk_1F4D5EF18);
      break;
    case 0xB:
      result = sub_1D179B3D4(&unk_1F4D5EF40);
      break;
    case 0xE:
      result = sub_1D179B3D4(&unk_1F4D5EF68);
      break;
    case 0x10:
      result = sub_1D179B3D4(&unk_1F4D5EF90);
      break;
    case 0x11:
      result = sub_1D179B3D4(&unk_1F4D5EFB8);
      break;
    case 0x13:
      result = sub_1D179B3D4(&unk_1F4D5EFE0);
      break;
    case 0x14:
      result = sub_1D179B3D4(&unk_1F4D5F008);
      break;
    case 0x15:
      result = sub_1D179B3D4(&unk_1F4D5F030);
      break;
    case 0x16:
      result = sub_1D179B3D4(&unk_1F4D5F058);
      break;
    case 0x17:
      result = sub_1D179B3D4(&unk_1F4D5F080);
      break;
    case 0x18:
      result = sub_1D179B3D4(&unk_1F4D5F0A8);
      break;
    case 0x1A:
      result = sub_1D179B3D4(&unk_1F4D5F0D0);
      break;
    case 0x1B:
      result = sub_1D179B3D4(&unk_1F4D5F0F8);
      break;
    case 0x1C:
      result = sub_1D179B3D4(&unk_1F4D5F120);
      break;
    case 0x1E:
      result = sub_1D179B3D4(&unk_1F4D5F148);
      break;
    case 0x1F:
      result = sub_1D179B3D4(&unk_1F4D5F170);
      break;
    case 0x20:
      result = sub_1D179B3D4(&unk_1F4D5F198);
      break;
    case 0x21:
      result = sub_1D179B3D4(&unk_1F4D5F1C0);
      break;
    case 0x22:
      result = sub_1D179B3D4(&unk_1F4D5F1E8);
      break;
    case 0x23:
      result = sub_1D179B3D4(&unk_1F4D5F210);
      break;
    case 0x25:
      result = sub_1D179B3D4(&unk_1F4D5F238);
      break;
    case 0x26:
      v1 = &unk_1F4D5F260;
LABEL_4:
      result = sub_1D179B3D4(v1);
      break;
    case 0x29:
      result = sub_1D179B3D4(&unk_1F4D5F288);
      break;
    case 0x2C:
      result = sub_1D179B3D4(&unk_1F4D5F2B0);
      break;
    case 0x2D:
      result = sub_1D179B3D4(&unk_1F4D5F2D8);
      break;
    case 0x2E:
      result = sub_1D179B3D4(&unk_1F4D5F300);
      break;
    case 0x2F:
      result = sub_1D179B3D4(&unk_1F4D5F328);
      break;
    case 0x30:
      result = sub_1D179B3D4(&unk_1F4D5F350);
      break;
    case 0x33:
      result = sub_1D179B3D4(&unk_1F4D5F378);
      break;
    case 0x34:
      result = sub_1D179B3D4(&unk_1F4D5F3A0);
      break;
    default:
      result = MEMORY[0x1E69E7CD0];
      break;
  }

  return result;
}

unint64_t sub_1D18DEE18()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646358, &qword_1D1E7EFA0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D1E7EBC0;
  *(inited + 32) = sub_1D1E6781C();
  v1 = MEMORY[0x1E69E7CD0];
  *(inited + 40) = v2;
  *(inited + 48) = v1;
  *(inited + 56) = sub_1D1E6781C();
  *(inited + 64) = v3;
  *(inited + 72) = sub_1D179ACDC(&unk_1F4D5FBF0);
  *(inited + 80) = sub_1D1E6781C();
  *(inited + 88) = v4;
  *(inited + 96) = sub_1D179ACDC(&unk_1F4D5FC18);
  *(inited + 104) = sub_1D1E6781C();
  *(inited + 112) = v5;
  *(inited + 120) = sub_1D179ACDC(&unk_1F4D5FC40);
  *(inited + 128) = sub_1D1E6781C();
  *(inited + 136) = v6;
  *(inited + 144) = sub_1D179ACDC(&unk_1F4D5FC68);
  *(inited + 152) = sub_1D1E6781C();
  *(inited + 160) = v7;
  *(inited + 168) = sub_1D179ACDC(&unk_1F4D5FC90);
  *(inited + 176) = sub_1D1E6781C();
  *(inited + 184) = v8;
  *(inited + 192) = sub_1D179ACDC(&unk_1F4D5FCB8);
  *(inited + 200) = sub_1D1E6781C();
  *(inited + 208) = v9;
  *(inited + 216) = sub_1D179ACDC(&unk_1F4D5FCE0);
  *(inited + 224) = sub_1D1E6781C();
  *(inited + 232) = v10;
  *(inited + 240) = sub_1D179ACDC(&unk_1F4D5FD08);
  *(inited + 248) = sub_1D1E6781C();
  *(inited + 256) = v11;
  if (qword_1EE07AB30 != -1)
  {
    swift_once();
  }

  *(inited + 264) = off_1EE07AB38;
  *(inited + 272) = sub_1D1E6781C();
  *(inited + 280) = v12;

  *(inited + 288) = sub_1D179ACDC(&unk_1F4D5FD30);
  *(inited + 296) = sub_1D1E6781C();
  *(inited + 304) = v13;
  *(inited + 312) = sub_1D179ACDC(&unk_1F4D5FD58);
  *(inited + 320) = sub_1D1E6781C();
  *(inited + 328) = v14;
  *(inited + 336) = sub_1D179ACDC(&unk_1F4D5FD80);
  *(inited + 344) = sub_1D1E6781C();
  *(inited + 352) = v15;
  *(inited + 360) = sub_1D179ACDC(&unk_1F4D5FDA8);
  *(inited + 368) = sub_1D1E6781C();
  *(inited + 376) = v16;
  *(inited + 384) = sub_1D179ACDC(&unk_1F4D5FDD0);
  *(inited + 392) = sub_1D1E6781C();
  *(inited + 400) = v17;
  *(inited + 408) = sub_1D179ACDC(&unk_1F4D5FDF8);
  *(inited + 416) = sub_1D1E6781C();
  *(inited + 424) = v18;
  *(inited + 432) = sub_1D179ACDC(&unk_1F4D5FE20);
  *(inited + 440) = sub_1D1E6781C();
  *(inited + 448) = v19;
  *(inited + 456) = sub_1D179ACDC(&unk_1F4D5FE48);
  *(inited + 464) = sub_1D1E6781C();
  *(inited + 472) = v20;
  *(inited + 480) = sub_1D179ACDC(&unk_1F4D5FE70);
  *(inited + 488) = sub_1D1E6781C();
  *(inited + 496) = v21;
  *(inited + 504) = sub_1D179ACDC(&unk_1F4D5FE98);
  *(inited + 512) = sub_1D1E6781C();
  *(inited + 520) = v22;
  *(inited + 528) = sub_1D179ACDC(&unk_1F4D5FEC0);
  *(inited + 536) = sub_1D1E6781C();
  *(inited + 544) = v23;
  *(inited + 552) = sub_1D179ACDC(&unk_1F4D5FEE8);
  v24 = sub_1D18D63E4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646360, &qword_1D1E7EFA8);
  swift_arrayDestroy();
  return v24;
}

unint64_t sub_1D18DF248()
{
  result = qword_1EE07ADD8;
  if (!qword_1EE07ADD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07ADD8);
  }

  return result;
}

unint64_t sub_1D18DF2A0()
{
  result = qword_1EC646330;
  if (!qword_1EC646330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646330);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ServiceKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCC)
  {
    goto LABEL_17;
  }

  if (a2 + 52 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 52) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 52;
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

      return (*a1 | (v4 << 8)) - 52;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 52;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x35;
  v8 = v6 - 53;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ServiceKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 52 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 52) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCC)
  {
    v4 = 0;
  }

  if (a2 > 0xCB)
  {
    v5 = ((a2 - 204) >> 8) + 1;
    *result = a2 + 52;
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
    *result = a2 + 52;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D18DF498()
{
  result = qword_1EC646348;
  if (!qword_1EC646348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646348);
  }

  return result;
}

unint64_t sub_1D18DF4EC()
{
  result = qword_1EC646350;
  if (!qword_1EC646350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646350);
  }

  return result;
}

uint64_t ServiceKind.serviceStatusCountString.getter()
{
  v1 = 0xD000000000000021;
  v2 = "tactSensor_Multiple";
  v3 = 0;
  switch(*v0)
  {
    case 3:
      goto LABEL_22;
    case 0xB:
      v6 = "HFStatusTitleContactSensor_Multiple";
      goto LABEL_21;
    case 0xE:
      v7 = "HFStatusTitleDoor_Multiple";
      goto LABEL_17;
    case 0x10:
    case 0x30:
      v2 = "workRouter_Multiple";
      v1 = 0xD000000000000019;
      goto LABEL_22;
    case 0x11:
      v4 = "HFStatusTitleFaucet_Multiple";
      goto LABEL_19;
    case 0x13:
      v5 = "HFStatusTitleGarageDoor_Multiple";
      goto LABEL_7;
    case 0x18:
      v2 = "HFStatusTitleLightbulb_Multiple";
      v1 = 0xD000000000000026;
      goto LABEL_22;
    case 0x1C:
      v2 = "HFStatusTitleLock_Multiple";
      v1 = 0xD00000000000001FLL;
      goto LABEL_22;
    case 0x1E:
      v7 = "HFStatusTitleLock_Multiple";
LABEL_17:
      v2 = (v7 - 32);
      v1 = 0xD00000000000001ALL;
      goto LABEL_22;
    case 0x22:
      v4 = "HFStatusTitleOutlet_Multiple";
      goto LABEL_19;
    case 0x26:
      v2 = "HFStatusTitleSwitch_Multiple";
      v1 = 0xD00000000000001DLL;
      goto LABEL_22;
    case 0x27:
    case 0x28:
      v4 = "HFStatusTitleSwitch_Multiple";
      goto LABEL_19;
    case 0x2C:
      v5 = "HFStatusTitleTelevision_Multiple";
LABEL_7:
      v2 = (v5 - 32);
      v1 = 0xD000000000000020;
      goto LABEL_22;
    case 0x2F:
      v2 = "HFStatusTitleFan_Multiple";
      v1 = 0xD00000000000001BLL;
      goto LABEL_22;
    case 0x31:
      v6 = "HFStatusTitleNetworkRouter_Multiple";
LABEL_21:
      v2 = (v6 - 32);
      v1 = 0xD000000000000023;
      goto LABEL_22;
    case 0x33:
      v4 = "HFStatusTitleWindow_Multiple";
      goto LABEL_19;
    case 0x34:
      v4 = "HFStatusTitleBlinds_Multiple";
LABEL_19:
      v2 = (v4 - 32);
      v1 = 0xD00000000000001CLL;
LABEL_22:
      v3 = static String.hfLocalized(_:)(v1, v2 | 0x8000000000000000);
      break;
    default:
      return v3;
  }

  return v3;
}

unint64_t sub_1D18DF6C4(char a1)
{
  result = 0x656D6F486465656ELL;
  switch(a1)
  {
    case 2:
      return result;
    case 3:
      result = 0x694669576465656ELL;
      break;
    case 4:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0x65746E496465656ELL;
      break;
    case 6:
      result = 0x647261486465656ELL;
      break;
    case 7:
    case 16:
      result = 0xD000000000000015;
      break;
    case 8:
      result = 0x6F4E6F6572657473;
      break;
    case 9:
      result = 0x72456F6572657473;
      break;
    case 10:
      result = 0xD000000000000013;
      break;
    case 11:
      result = 0xD000000000000012;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000013;
      break;
    case 15:
      result = 0xD000000000000013;
      break;
    case 17:
      result = 0xD000000000000019;
      break;
    case 18:
      result = 0xD000000000000013;
      break;
    case 19:
      result = 0xD000000000000017;
      break;
    case 20:
      result = 0x465044436465656ELL;
      break;
    case 21:
      result = 0x656E65476465656ELL;
      break;
    case 22:
      result = 0x6F72506E49786966;
      break;
    case 23:
      result = 0xD00000000000001ALL;
      break;
    default:
      result = 0xD000000000000014;
      break;
  }

  return result;
}

uint64_t sub_1D18DF9A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D18E5718(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D18DF9DC(uint64_t a1)
{
  v2 = sub_1D18E1B54();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFA18(uint64_t a1)
{
  v2 = sub_1D18E1B54();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFA54(uint64_t a1)
{
  v2 = sub_1D18E1BFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFA90(uint64_t a1)
{
  v2 = sub_1D18E1BFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFACC(uint64_t a1)
{
  v2 = sub_1D18E1E9C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFB08(uint64_t a1)
{
  v2 = sub_1D18E1E9C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFB44(uint64_t a1)
{
  v2 = sub_1D18E1CA4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFB80(uint64_t a1)
{
  v2 = sub_1D18E1CA4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFBBC(uint64_t a1)
{
  v2 = sub_1D18E1CF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFBF8(uint64_t a1)
{
  v2 = sub_1D18E1CF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFC34(uint64_t a1)
{
  v2 = sub_1D18E1C50();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFC70(uint64_t a1)
{
  v2 = sub_1D18E1C50();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFCAC(uint64_t a1)
{
  v2 = sub_1D18E213C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFCE8(uint64_t a1)
{
  v2 = sub_1D18E213C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFD24(uint64_t a1)
{
  v2 = sub_1D18E228C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFD60(uint64_t a1)
{
  v2 = sub_1D18E228C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFD9C(uint64_t a1)
{
  v2 = sub_1D18E2190();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFDD8(uint64_t a1)
{
  v2 = sub_1D18E2190();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFE14(uint64_t a1)
{
  v2 = sub_1D18E1DF4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFE50(uint64_t a1)
{
  v2 = sub_1D18E1DF4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFE8C(uint64_t a1)
{
  v2 = sub_1D18E1DA0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFEC8(uint64_t a1)
{
  v2 = sub_1D18E1DA0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFF04(uint64_t a1)
{
  v2 = sub_1D18E2238();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFF40(uint64_t a1)
{
  v2 = sub_1D18E2238();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFF7C(uint64_t a1)
{
  v2 = sub_1D18E21E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18DFFB8(uint64_t a1)
{
  v2 = sub_1D18E21E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18DFFF4(uint64_t a1)
{
  v2 = sub_1D18E1E48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0030(uint64_t a1)
{
  v2 = sub_1D18E1E48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E006C(uint64_t a1)
{
  v2 = sub_1D18E2334();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E00A8(uint64_t a1)
{
  v2 = sub_1D18E2334();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E00E4(uint64_t a1)
{
  v2 = sub_1D18E22E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0120(uint64_t a1)
{
  v2 = sub_1D18E22E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E015C(uint64_t a1)
{
  v2 = sub_1D18E1F98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0198(uint64_t a1)
{
  v2 = sub_1D18E1F98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E01D4(uint64_t a1)
{
  v2 = sub_1D18E1D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0210(uint64_t a1)
{
  v2 = sub_1D18E1D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E024C(uint64_t a1)
{
  v2 = sub_1D18E1F44();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0288(uint64_t a1)
{
  v2 = sub_1D18E1F44();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E02C4(uint64_t a1)
{
  v2 = sub_1D18E1BA8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0300(uint64_t a1)
{
  v2 = sub_1D18E1BA8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E033C(uint64_t a1)
{
  v2 = sub_1D18E2040();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0378(uint64_t a1)
{
  v2 = sub_1D18E2040();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E03B4(uint64_t a1)
{
  v2 = sub_1D18E2094();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E03F0(uint64_t a1)
{
  v2 = sub_1D18E2094();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E042C(uint64_t a1)
{
  v2 = sub_1D18E20E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0468(uint64_t a1)
{
  v2 = sub_1D18E20E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E04A4(uint64_t a1)
{
  v2 = sub_1D18E1EF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E04E0(uint64_t a1)
{
  v2 = sub_1D18E1EF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18E051C(uint64_t a1)
{
  v2 = sub_1D18E1FEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18E0558(uint64_t a1)
{
  v2 = sub_1D18E1FEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SymptomError.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646368, &qword_1D1E7EFF0);
  v134 = *(v4 - 8);
  v135 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v133 = &v66 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646370, &qword_1D1E7EFF8);
  v131 = *(v6 - 8);
  v132 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v130 = &v66 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646378, &qword_1D1E7F000);
  v128 = *(v8 - 8);
  v129 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v127 = &v66 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646380, &qword_1D1E7F008);
  v125 = *(v10 - 8);
  v126 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v124 = &v66 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646388, &qword_1D1E7F010);
  v122 = *(v12 - 8);
  v123 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v121 = &v66 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646390, &qword_1D1E7F018);
  v119 = *(v14 - 8);
  v120 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v118 = &v66 - v15;
  v117 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646398, &qword_1D1E7F020);
  v116 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v115 = &v66 - v16;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463A0, &qword_1D1E7F028);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v112 = &v66 - v17;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463A8, &qword_1D1E7F030);
  v110 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v109 = &v66 - v18;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463B0, &qword_1D1E7F038);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v106 = &v66 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463B8, &qword_1D1E7F040);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v66 - v20;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463C0, &qword_1D1E7F048);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v100 = &v66 - v21;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463C8, &qword_1D1E7F050);
  v98 = *(v99 - 8);
  MEMORY[0x1EEE9AC00](v99);
  v97 = &v66 - v22;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463D0, &qword_1D1E7F058);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v94 = &v66 - v23;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463D8, &qword_1D1E7F060);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v91 = &v66 - v24;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463E0, &qword_1D1E7F068);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v88 = &v66 - v25;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463E8, &qword_1D1E7F070);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v85 = &v66 - v26;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463F0, &qword_1D1E7F078);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v66 - v27;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6463F8, &qword_1D1E7F080);
  v80 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v79 = &v66 - v28;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646400, &qword_1D1E7F088);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v76 = &v66 - v29;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646408, &qword_1D1E7F090);
  v74 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v73 = &v66 - v30;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646410, &qword_1D1E7F098);
  v71 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v70 = &v66 - v31;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646418, &qword_1D1E7F0A0);
  v68 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v33 = &v66 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646420, &qword_1D1E7F0A8);
  v67 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v66 - v35;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646428, &qword_1D1E7F0B0);
  v37 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v39 = &v66 - v38;
  v40 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18E1B54();
  v136 = v39;
  sub_1D1E6930C();
  v41 = (v37 + 8);
  switch(v40)
  {
    case 1:
      v138 = 1;
      sub_1D18E22E0();
      v54 = v136;
      v55 = v137;
      sub_1D1E68DFC();
      (*(v68 + 8))(v33, v69);
      return (*v41)(v54, v55);
    case 2:
      v138 = 2;
      sub_1D18E228C();
      v50 = v70;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v71 + 8))(v50, v72);
      return (*v41)(v43, v42);
    case 3:
      v138 = 3;
      sub_1D18E2238();
      v52 = v73;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v74 + 8))(v52, v75);
      return (*v41)(v43, v42);
    case 4:
      v138 = 4;
      sub_1D18E21E4();
      v47 = v76;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v77 + 8))(v47, v78);
      return (*v41)(v43, v42);
    case 5:
      v138 = 5;
      sub_1D18E2190();
      v61 = v79;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v80 + 8))(v61, v81);
      return (*v41)(v43, v42);
    case 6:
      v138 = 6;
      sub_1D18E213C();
      v63 = v82;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v83 + 8))(v63, v84);
      return (*v41)(v43, v42);
    case 7:
      v138 = 7;
      sub_1D18E20E8();
      v53 = v85;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v86 + 8))(v53, v87);
      return (*v41)(v43, v42);
    case 8:
      v138 = 8;
      sub_1D18E2094();
      v65 = v88;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v89 + 8))(v65, v90);
      return (*v41)(v43, v42);
    case 9:
      v138 = 9;
      sub_1D18E2040();
      v49 = v91;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v92 + 8))(v49, v93);
      return (*v41)(v43, v42);
    case 10:
      v138 = 10;
      sub_1D18E1FEC();
      v64 = v94;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v95 + 8))(v64, v96);
      return (*v41)(v43, v42);
    case 11:
      v138 = 11;
      sub_1D18E1F98();
      v46 = v97;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v98 + 8))(v46, v99);
      return (*v41)(v43, v42);
    case 12:
      v138 = 12;
      sub_1D18E1F44();
      v48 = v100;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v101 + 8))(v48, v102);
      return (*v41)(v43, v42);
    case 13:
      v138 = 13;
      sub_1D18E1EF0();
      v62 = v103;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v104 + 8))(v62, v105);
      return (*v41)(v43, v42);
    case 14:
      v138 = 14;
      sub_1D18E1E9C();
      v45 = v106;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v107 + 8))(v45, v108);
      return (*v41)(v43, v42);
    case 15:
      v138 = 15;
      sub_1D18E1E48();
      v51 = v109;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v110 + 8))(v51, v111);
      return (*v41)(v43, v42);
    case 16:
      v138 = 16;
      sub_1D18E1DF4();
      v44 = v112;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v113 + 8))(v44, v114);
      return (*v41)(v43, v42);
    case 17:
      v138 = 17;
      sub_1D18E1DA0();
      v57 = v115;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v116 + 8))(v57, v117);
      return (*v41)(v43, v42);
    case 18:
      v138 = 18;
      sub_1D18E1D4C();
      v58 = v118;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      v60 = v119;
      v59 = v120;
      goto LABEL_26;
    case 19:
      v138 = 19;
      sub_1D18E1CF8();
      v58 = v121;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      v60 = v122;
      v59 = v123;
      goto LABEL_26;
    case 20:
      v138 = 20;
      sub_1D18E1CA4();
      v58 = v124;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      v60 = v125;
      v59 = v126;
      goto LABEL_26;
    case 21:
      v138 = 21;
      sub_1D18E1C50();
      v58 = v127;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      v60 = v128;
      v59 = v129;
      goto LABEL_26;
    case 22:
      v138 = 22;
      sub_1D18E1BFC();
      v58 = v130;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      v60 = v131;
      v59 = v132;
      goto LABEL_26;
    case 23:
      v138 = 23;
      sub_1D18E1BA8();
      v58 = v133;
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      v60 = v134;
      v59 = v135;
LABEL_26:
      (*(v60 + 8))(v58, v59);
      break;
    default:
      v138 = 0;
      sub_1D18E2334();
      v43 = v136;
      v42 = v137;
      sub_1D1E68DFC();
      (*(v67 + 8))(v36, v34);
      break;
  }

  return (*v41)(v43, v42);
}