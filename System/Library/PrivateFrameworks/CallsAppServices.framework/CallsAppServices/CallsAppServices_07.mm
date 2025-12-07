uint64_t sub_1D33B55B8(uint64_t a1)
{
  v2 = v1;
  v71 = sub_1D33DDDC4();
  v4 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v70 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v69 = sub_1D33DDE84();
  v73 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v68 = &v60 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D33DDB54();
  v72 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v83 = &v60 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CD8, &unk_1D33E4A60);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v80 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v60 - v14;
  v16 = type metadata accessor for ReminderStatus(0);
  v76 = *(v16 - 8);
  v77 = v16;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v82 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v84 = &v60 - v19;
  v20 = sub_1D33DDDB4();
  v81 = *(v20 - 8);
  v21 = MEMORY[0x1EEE9AC00](v20);
  v85 = &v60 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v60 - v23;
  if (qword_1EDEBF058 != -1)
  {
LABEL_26:
    swift_once();
  }

  v25 = sub_1D33DE464();
  __swift_project_value_buffer(v25, qword_1EDEC1440);

  v26 = sub_1D33DE444();
  v27 = sub_1D33DEAF4();

  v28 = os_log_type_enabled(v26, v27);
  v78 = v7;
  v79 = v20;
  v60 = v2;
  if (v28)
  {
    v29 = v4;
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v87[0] = v31;
    *v30 = 136315138;
    v32 = MEMORY[0x1D38B6F50](a1, v20);
    v34 = sub_1D3328B48(v32, v33, v87);
    v7 = v78;

    *(v30 + 4) = v34;
    v20 = v79;
    _os_log_impl(&dword_1D331A000, v26, v27, "Setting cache state to deleted for %s", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v31);
    MEMORY[0x1D38B81C0](v31, -1, -1);
    v4 = v29;
    MEMORY[0x1D38B81C0](v30, -1, -1);
  }

  swift_beginAccess();

  sub_1D33DE4F4();

  v2 = *(a1 + 16);
  if (v2)
  {
    v35 = *(v81 + 16);
    v36 = a1 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    a1 = *(v81 + 72);
    v75 = (v72 + 7);
    v74 = (v72 + 6);
    v66 = (v72 + 4);
    v65 = (v4 + 104);
    v64 = (v4 + 8);
    v4 = v35;
    v63 = *MEMORY[0x1E6969868];
    v62 = (v73 + 8);
    v61 = (v72 + 1);
    v81 += 16;
    v72 = (v81 - 8);
    v73 = v24;
    while (1)
    {
      (v4)(v24, v36, v20);
      (v4)(v85, v24, v20);
      (*v75)(v15, 1, 1, v7);
      *v84 = 1;
      v38 = v80;
      sub_1D331E818(v15, v80, &qword_1EC761CD8, &unk_1D33E4A60);
      if ((*v74)(v38, 1, v7) == 1)
      {
        v39 = sub_1D33DDD34();
        (*(*(v39 - 8) + 56))(v83, 1, 1, v39);
      }

      else
      {
        v24 = v67;
        (*v66)(v67, v80, v7);
        v41 = v70;
        v40 = v71;
        (*v65)(v70, v63, v71);
        v20 = v68;
        sub_1D33DDDD4();
        (*v64)(v41, v40);
        sub_1D33DDE44();
        (*v62)(v20, v69);
        (*v61)(v24, v7);
      }

      v42 = v77;
      v43 = v84;
      sub_1D333842C(v83, &v84[*(v77 + 20)], &qword_1EC760E10, &unk_1D33E1A90);
      *(v43 + *(v42 + 24)) = 0;
      sub_1D331E880(v15, &qword_1EC761CD8, &unk_1D33E4A60);
      sub_1D33B6048(v43, v82);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v45 = v88;
      v86 = v88;
      v7 = sub_1D33B926C(v85);
      v47 = v45[2];
      v48 = (v46 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
        __break(1u);
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      v50 = v46;
      if (v45[3] >= v49)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v53 = v86;
          if (v46)
          {
            goto LABEL_6;
          }
        }

        else
        {
          sub_1D3399FE0();
          v53 = v86;
          if (v50)
          {
            goto LABEL_6;
          }
        }
      }

      else
      {
        sub_1D3397A8C(v49, isUniquelyReferenced_nonNull_native);
        v51 = sub_1D33B926C(v85);
        if ((v50 & 1) != (v52 & 1))
        {
          result = sub_1D33DF1E4();
          __break(1u);
          return result;
        }

        v7 = v51;
        v53 = v86;
        if (v50)
        {
LABEL_6:
          sub_1D33B60AC(v82, v53[7] + *(v76 + 72) * v7);
          v37 = *v72;
          v20 = v79;
          (*v72)(v85, v79);
          v24 = v73;
          v37(v73, v20);
          goto LABEL_7;
        }
      }

      v53[(v7 >> 6) + 8] |= 1 << v7;
      v54 = v85;
      v20 = v79;
      (v4)(v53[6] + v7 * a1, v85, v79);
      sub_1D33B6048(v82, v53[7] + *(v76 + 72) * v7);
      v7 = v72;
      v55 = *v72;
      (*v72)(v54, v20);
      v24 = v73;
      v55(v73, v20);
      v56 = v53[2];
      v57 = __OFADD__(v56, 1);
      v58 = v56 + 1;
      if (v57)
      {
        goto LABEL_25;
      }

      v53[2] = v58;
LABEL_7:
      v88 = v53;
      v36 += a1;
      --v2;
      v7 = v78;
      if (!v2)
      {
        goto LABEL_23;
      }
    }
  }

  v53 = v88;
LABEL_23:
  v86 = v53;

  sub_1D33DE4E4();
  swift_bridgeObjectRelease_n();
}

uint64_t RecentsReminderCache.deinit()
{

  return v0;
}

uint64_t RecentsReminderCache.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D33B6048(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderStatus(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D33B60AC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderStatus(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1D33B6110(uint64_t a1, int a2, void *a3)
{
  v7 = type metadata accessor for ReminderStatus(0);
  v55 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v50 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1D33DDDB4();
  v58 = *(v10 - 8);
  v59 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761450, &qword_1D33E1B10);
  v57 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v50 - v15;
  v54 = *(a1 + 16);
  if (!v54)
  {
    goto LABEL_24;
  }

  v50 = v3;
  if (!*(a1 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v51 = a2;
  v17 = *(v14 + 48);
  v18 = *(v57 + 80);
  v56 = a1;
  v19 = (v58 + 32);
  v52 = a1 + ((v18 + 32) & ~v18);
  sub_1D331E818(v52, v16, &qword_1EC761450, &qword_1D33E1B10);
  v20 = *v19;
  (*v19)(v12, v16, v59);
  v53 = v17;
  sub_1D33B6048(&v16[v17], v9);
  v21 = *a3;
  v23 = sub_1D33B926C(v12);
  v24 = v21[2];
  v25 = (v22 & 1) == 0;
  v26 = v24 + v25;
  if (__OFADD__(v24, v25))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v27 = v22;
  if (v21[3] >= v26)
  {
    if (v51)
    {
      if ((v22 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    else
    {
      sub_1D3399FE0();
      if ((v27 & 1) == 0)
      {
        goto LABEL_14;
      }
    }

    goto LABEL_11;
  }

  sub_1D3397A8C(v26, v51 & 1);
  v28 = sub_1D33B926C(v12);
  if ((v27 & 1) == (v29 & 1))
  {
    v23 = v28;
    if ((v27 & 1) == 0)
    {
LABEL_14:
      v32 = *a3;
      *(*a3 + 8 * (v23 >> 6) + 64) |= 1 << v23;
      v20((v32[6] + *(v58 + 72) * v23), v12, v59);
      sub_1D33B6048(v9, v32[7] + *(v55 + 72) * v23);
      v33 = v32[2];
      v34 = __OFADD__(v33, 1);
      v35 = v33 + 1;
      if (v34)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v32[2] = v35;
      if (v54 != 1)
      {
        v36 = 1;
        while (v36 < *(v56 + 16))
        {
          sub_1D331E818(v52 + *(v57 + 72) * v36, v16, &qword_1EC761450, &qword_1D33E1B10);
          v37 = *v19;
          (*v19)(v12, v16, v59);
          sub_1D33B6048(&v16[v53], v9);
          v38 = *a3;
          v39 = sub_1D33B926C(v12);
          v41 = v38[2];
          v42 = (v40 & 1) == 0;
          v34 = __OFADD__(v41, v42);
          v43 = v41 + v42;
          if (v34)
          {
            goto LABEL_26;
          }

          v44 = v40;
          if (v38[3] < v43)
          {
            sub_1D3397A8C(v43, 1);
            v39 = sub_1D33B926C(v12);
            if ((v44 & 1) != (v45 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v44)
          {
            goto LABEL_11;
          }

          v46 = *a3;
          *(*a3 + 8 * (v39 >> 6) + 64) |= 1 << v39;
          v47 = v39;
          v37((v46[6] + *(v58 + 72) * v39), v12, v59);
          sub_1D33B6048(v9, v46[7] + *(v55 + 72) * v47);
          v48 = v46[2];
          v34 = __OFADD__(v48, 1);
          v49 = v48 + 1;
          if (v34)
          {
            goto LABEL_27;
          }

          ++v36;
          v46[2] = v49;
          if (v54 == v36)
          {
            goto LABEL_24;
          }
        }

        goto LABEL_25;
      }

LABEL_24:

      return;
    }

LABEL_11:
    v30 = swift_allocError();
    swift_willThrow();
    v62 = v30;
    v31 = v30;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760EF0, &unk_1D33E1A30);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_1D3337A54(v9, type metadata accessor for ReminderStatus);
      (*(v58 + 8))(v12, v59);

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  sub_1D33DF1E4();
  __break(1u);
LABEL_29:
  v60 = 0;
  v61 = 0xE000000000000000;
  sub_1D33DEF24();
  MEMORY[0x1D38B6ED0](0xD00000000000001BLL, 0x80000001D33E6C30);
  sub_1D33DF004();
  MEMORY[0x1D38B6ED0](39, 0xE100000000000000);
  sub_1D33DF0D4();
  __break(1u);
}

uint64_t sub_1D33B6714(uint64_t a1, uint64_t a2)
{
  v94 = *MEMORY[0x1E69E9840];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = (&v65 - v9);
  v11 = sub_1D33DDDB4();
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
      sub_1D331E880(v30, &qword_1EC7612B0, qword_1D33E2830);
      v59 = a1;
      goto LABEL_53;
    }

    v71 = *v76;
    v71(v80, v30, v11);
    v70 = sub_1D33B850C(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    v32 = sub_1D33DE724();
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
    v35 = sub_1D33B850C(&qword_1EDEBFD30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
    v36 = sub_1D33DE774();
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
        sub_1D331E880(v24, &qword_1EC7612B0, qword_1D33E2830);
        a2 = sub_1D336713C(v80, v65, v67, a2);
        goto LABEL_52;
      }

      v71(v85, v24, v11);
      v51 = sub_1D33DE724();
      v52 = a2;
      v53 = -1 << *(a2 + 32);
      v54 = v51 & ~v53;
      v26 = v54 >> 6;
      v20 = 1 << v54;
      if (((1 << v54) & v82[v54 >> 6]) != 0)
      {
        v83(v16, *(v52 + 48) + v54 * v84, v11);
        v55 = sub_1D33DE774();
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
            v57 = sub_1D33DE774();
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
  a2 = sub_1D33B74D8(v64, v65, v80, v24, &v89);

  MEMORY[0x1D38B81C0](v64, -1, -1);
LABEL_52:
  v59 = v89;
LABEL_53:
  sub_1D331FEEC(v59);
  return a2;
}

uint64_t sub_1D33B7178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D00, &qword_1D33E4A78) + 48);
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761450, &qword_1D33E1B10) + 48);
  v6 = sub_1D33DDDB4();
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return sub_1D332CE34(a1 + v4, a2 + v5, type metadata accessor for ReminderStatus);
}

uint64_t sub_1D33B7230@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1D33DDDB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  sub_1D33B850C(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v31 = a1;
  v10 = sub_1D33DE724();
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
      sub_1D33B850C(&qword_1EDEBFD30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v19 = sub_1D33DE774();
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
      sub_1D3365C5C();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    sub_1D33B79AC(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t sub_1D33B74D8(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v47 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v46 - v10;
  v12 = sub_1D33DDDB4();
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
          sub_1D331E880(v11, &qword_1EC7612B0, qword_1D33E2830);
          v45 = v61;

          return sub_1D336713C(v49, v47, v48, v45);
        }

        (*v53)(v63, v11, v12);
        v34 = v61;
        sub_1D33B850C(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v35 = sub_1D33DE724();
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
        sub_1D33B850C(&qword_1EDEBFD30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
        v43 = sub_1D33DE774();
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

uint64_t sub_1D33B79AC(int64_t a1)
{
  v3 = sub_1D33DDDB4();
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

    v13 = sub_1D33DED84();
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
        sub_1D33B850C(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
        v24 = sub_1D33DE724();
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

uint64_t sub_1D33B7CB4@<X0>(uint64_t a1@<X8>)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D00, &qword_1D33E4A78);
  v43 = *(v2 - 8);
  v44 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v40 = &v40 - v3;
  v4 = type metadata accessor for ReminderStatus(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D33DDDB4();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CF8, &qword_1D33E4A70);
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
    sub_1D332CE34(*(v18 + 56) + *(v5 + 72) * v26, v7, type metadata accessor for ReminderStatus);
    v27 = v7;
    v28 = v44;
    v29 = *(v44 + 48);
    v30 = v42;
    (*(v9 + 32))();
    sub_1D33B6048(v27, v30 + v29);
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
    sub_1D333842C(v30, v33, &qword_1EC761CF8, &qword_1D33E4A70);
    v35 = 1;
    v36 = (*(v31 + 48))(v33, 1, v28);
    v37 = v47;
    if (v36 != 1)
    {
      v38 = v40;
      sub_1D333842C(v33, v40, &qword_1EC761D00, &qword_1D33E4A78);
      v34(v38);
      sub_1D331E880(v38, &qword_1EC761D00, &qword_1D33E4A78);
      v35 = 0;
    }

    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761450, &qword_1D33E1B10);
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

uint64_t sub_1D33B8128(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v10 = type metadata accessor for ReminderStatus(0);
  v44 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v53 = v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1D33DDDB4();
  v12 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v14 = v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D08, &qword_1D33E4A80);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = v41 - v16;
  v18 = -1 << *(a1 + 32);
  v19 = ~v18;
  v20 = *(a1 + 64);
  v21 = -v18;
  v46 = a1;
  v47 = a1 + 64;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v48 = v19;
  v49 = 0;
  v50 = v22 & v20;
  v51 = a2;
  v52 = a3;
  v23 = (v12 + 32);
  v42 = (v12 + 8);
  v43 = v12;

  v41[1] = a3;

  while (1)
  {
    sub_1D33B7CB4(v17);
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761450, &qword_1D33E1B10);
    if ((*(*(v24 - 8) + 48))(v17, 1, v24) == 1)
    {
      sub_1D331FEEC(v46);
    }

    v25 = *(v24 + 48);
    v26 = *v23;
    (*v23)(v14, v17, v45);
    sub_1D33B6048(&v17[v25], v53);
    v27 = *a5;
    v29 = sub_1D33B926C(v14);
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
        sub_1D3399FE0();
        v36 = *a5;
        if ((v33 & 1) == 0)
        {
          goto LABEL_14;
        }
      }

LABEL_5:
      (*v42)(v14, v45);
      sub_1D33B60AC(v53, v36[7] + *(v44 + 72) * v29);
      a4 = 1;
    }

    else
    {
      sub_1D3397A8C(v32, a4 & 1);
      v34 = sub_1D33B926C(v14);
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
      v26((v36[6] + *(v43 + 72) * v29), v14, v45);
      sub_1D33B6048(v53, v36[7] + *(v44 + 72) * v29);
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
  result = sub_1D33DF1E4();
  __break(1u);
  return result;
}

uint64_t sub_1D33B850C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D33B8594(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D334D4B4;

  return sub_1D33B4B6C(a1, v4, v5, v6);
}

uint64_t RecentsItem.getReminderStatus()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for ReminderStatus(0);
  v50 = *(v2 - 8);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v48 = v41 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v47 = v41 - v6;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v44 = v41 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v45 = v41 - v9;
  v10 = sub_1D33DDDB4();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1D3337D6C()[2];

  if (v14)
  {
    if (qword_1EDEBF9C0 != -1)
    {
      swift_once();
    }

    swift_beginAccess();

    sub_1D33DE4F4();

    v15 = v51;
    v16 = sub_1D3337D6C();
    v17 = v16[2];
    if (v17)
    {
      v42 = a1;
      v43 = v2;
      v19 = v11 + 16;
      v18 = *(v11 + 16);
      v20 = *(v19 + 64);
      v41[1] = v16;
      v21 = v16 + ((v20 + 32) & ~v20);
      v22 = *(v19 + 56);
      v23 = (v19 - 8);
      v49 = MEMORY[0x1E69E7CC0];
      v46 = v19;
      v18(v13, v21, v10);
      while (1)
      {
        if (*(v15 + 16) && (v24 = sub_1D33B926C(v13), (v25 & 1) != 0))
        {
          v26 = *(v50 + 72);
          v27 = v48;
          sub_1D33B9F3C(*(v15 + 56) + v26 * v24, v48);
          (*v23)(v13, v10);
          v28 = v27;
          v29 = v47;
          sub_1D33B6048(v28, v47);
          if (*v29)
          {
            sub_1D33B9FA0(v29);
          }

          else
          {
            v30 = v29;
            v31 = v44;
            sub_1D33B6048(v30, v44);
            sub_1D33B6048(v31, v45);
            v32 = (swift_isUniquelyReferenced_nonNull_native() & 1) != 0 ? v49 : sub_1D3359B18(0, v49[2] + 1, 1, v49);
            v34 = v32[2];
            v33 = v32[3];
            v35 = (v34 + 1);
            v36 = v50;
            if (v34 >= v33 >> 1)
            {
              v49 = (v34 + 1);
              v32 = sub_1D3359B18((v33 > 1), v34 + 1, 1, v32);
              v35 = v49;
              v36 = v50;
            }

            v32[2] = v35;
            v37 = *(v36 + 80);
            v49 = v32;
            sub_1D33B6048(v45, v32 + ((v37 + 32) & ~v37) + v34 * v26);
          }
        }

        else
        {
          (*v23)(v13, v10);
        }

        v21 += v22;
        if (!--v17)
        {
          break;
        }

        v18(v13, v21, v10);
      }

      a1 = v42;
      v2 = v43;
      v38 = v49;
    }

    else
    {

      v38 = MEMORY[0x1E69E7CC0];
    }

    v51 = v38;

    sub_1D33B9E94(&v51);

    if (v51[2])
    {
      sub_1D33B9F3C(v51 + ((*(v50 + 80) + 32) & ~*(v50 + 80)), a1);

      return (*(v50 + 56))(a1, 0, 1, v2);
    }

    else
    {

      return (*(v50 + 56))(a1, 1, 1, v2);
    }
  }

  else
  {
    v39 = *(v50 + 56);

    return v39(a1, 1, 1, v2);
  }
}

uint64_t _s16CallsAppServices11RecentsItemV012shouldShowInD9RemindersSbvg_0()
{
  v0 = type metadata accessor for ReminderStatus(0);
  v26 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v25 = &v24 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1D33DDDB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D3337D6C()[2];

  if (v6)
  {
    if (qword_1EDEBF9C0 != -1)
    {
      goto LABEL_17;
    }

    while (1)
    {
      swift_beginAccess();

      sub_1D33DE4F4();

      v7 = v28;
      v8 = sub_1D3337D6C();
      v9 = v8;
      v6 = v8[2];
      if (!v6)
      {
        break;
      }

      v10 = 0;
      v11 = v8 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
      v27 = v3 + 16;
      v12 = (v3 + 8);
      v24 = v7;
      while (v10 < v9[2])
      {
        (*(v3 + 16))(v5, &v11[*(v3 + 72) * v10], v2);
        if (*(v7 + 16) && (v13 = sub_1D33B926C(v5), (v14 & 1) != 0))
        {
          v15 = *(v7 + 56) + *(v26 + 72) * v13;
          v16 = v3;
          v17 = v11;
          v18 = v6;
          v19 = v9;
          v20 = v25;
          sub_1D33B9F3C(v15, v25);
          (*v12)(v5, v2);
          v21 = *v20;
          v22 = v20;
          v9 = v19;
          v6 = v18;
          v11 = v17;
          v3 = v16;
          v7 = v24;
          sub_1D33B9FA0(v22);
          if (!v21)
          {

            v6 = 1;
            goto LABEL_14;
          }
        }

        else
        {
          (*v12)(v5, v2);
        }

        if (v6 == ++v10)
        {

          v6 = 0;
          goto LABEL_14;
        }
      }

      __break(1u);
LABEL_17:
      swift_once();
    }

LABEL_14:
  }

  return v6;
}

uint64_t sub_1D33B8E58(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v26 = a2;
  v2 = sub_1D33DDD34();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BA0, &qword_1D33E4748);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - v11;
  v13 = *(type metadata accessor for ReminderStatus(0) + 20);
  v14 = *(v10 + 48);
  sub_1D331E818(v25 + v13, v12, &qword_1EC760E10, &unk_1D33E1A90);
  sub_1D331E818(v26 + v13, &v12[v14], &qword_1EC760E10, &unk_1D33E1A90);
  v15 = v3[6];
  if (v15(v12, 1, v2) != 1)
  {
    sub_1D331E818(v12, v9, &qword_1EC760E10, &unk_1D33E1A90);
    if (v15(&v12[v14], 1, v2) == 1)
    {
      v17 = v3[1];
      ++v3;
      v17(v9, v2);
      v16 = 1;
      if (v15(&v12[v14], 1, v2) == 1)
      {
        goto LABEL_7;
      }

      sub_1D33DF1A4();
      __break(1u);
    }

    v18 = v3[4];
    v19 = v23;
    v18(v23, v9, v2);
    v20 = v24;
    v18(v24, &v12[v14], v2);
    v16 = sub_1D33DDCB4();
    v21 = v3[1];
    v21(v20, v2);
    v21(v19, v2);
    goto LABEL_7;
  }

  sub_1D331E880(&v12[v14], &qword_1EC760E10, &unk_1D33E1A90);
  v16 = 0;
LABEL_7:
  sub_1D331E880(v12, &qword_1EC760E10, &unk_1D33E1A90);
  return v16 & 1;
}

unint64_t sub_1D33B9198(uint64_t a1)
{
  sub_1D33DE374();
  v2 = MEMORY[0x1E696EDC8];
  sub_1D33B9FFC(&qword_1EC7611A8, MEMORY[0x1E696EDC8], MEMORY[0x1E696EDF8]);
  v3 = sub_1D33DE724();
  return sub_1D33B9678(a1, v3, MEMORY[0x1E696EDC8], &qword_1EC7611B0, v2, MEMORY[0x1E696EE10]);
}

unint64_t sub_1D33B926C(uint64_t a1)
{
  sub_1D33DDDB4();
  v2 = MEMORY[0x1E69695A8];
  sub_1D33B9FFC(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  v3 = sub_1D33DE724();
  return sub_1D33B9678(a1, v3, MEMORY[0x1E69695A8], &qword_1EDEBFD30, v2, MEMORY[0x1E69695C8]);
}

unint64_t sub_1D33B9390(uint64_t a1)
{
  v2 = sub_1D33DDDB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v11 - v7;
  sub_1D33DF284();
  sub_1D331E818(a1, v8, &qword_1EC7612B0, qword_1D33E2830);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    sub_1D33DF2A4();
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    sub_1D33DF2A4();
    sub_1D33B9FFC(&qword_1EDEBFD38, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
    sub_1D33DE734();
    (*(v3 + 8))(v5, v2);
  }

  v9 = sub_1D33DF2C4();
  return sub_1D33B9818(a1, v9);
}

unint64_t sub_1D33B95A0(uint64_t a1)
{
  v2 = sub_1D33DEE94();

  return sub_1D33B9C94(a1, v2);
}

unint64_t sub_1D33B95E4(uint64_t a1)
{
  v2 = sub_1D33DF274();

  return sub_1D33B9D5C(a1, v2);
}

unint64_t sub_1D33B9678(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v21[1] = a1;
  v8 = a3(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - v10;
  v22 = v6;
  v12 = -1 << *(v6 + 32);
  v13 = a2 & ~v12;
  v21[0] = v6 + 64;
  if ((*(v6 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v14 = ~v12;
    v17 = *(v9 + 16);
    v16 = v9 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    do
    {
      v15(v11, *(v22 + 48) + v18 * v13, v8);
      sub_1D33B9FFC(v23, v24, v25);
      v19 = sub_1D33DE774();
      (*(v16 - 8))(v11, v8);
      if (v19)
      {
        break;
      }

      v13 = (v13 + 1) & v14;
    }

    while (((*(v21[0] + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  return v13;
}

unint64_t sub_1D33B9818(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v38 = a1;
  v5 = sub_1D33DDDB4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v30 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761A90, &qword_1D33E3F98);
  MEMORY[0x1EEE9AC00](v37);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830) - 8;
  v11 = MEMORY[0x1EEE9AC00](v10);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v28 - v14;
  v39 = v3;
  v16 = -1 << *(v3 + 32);
  v17 = a2 & ~v16;
  v36 = v3 + 64;
  if ((*(v3 + 64 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
  {
    v18 = ~v16;
    v19 = (v6 + 48);
    v20 = *(v12 + 72);
    v34 = v13;
    v35 = v20;
    v28 = (v6 + 48);
    v29 = (v6 + 32);
    v32 = (v6 + 8);
    v33 = ~v16;
    while (1)
    {
      sub_1D331E818(*(v39 + 48) + v35 * v17, v15, &qword_1EC7612B0, qword_1D33E2830);
      v21 = *(v37 + 48);
      sub_1D331E818(v15, v9, &qword_1EC7612B0, qword_1D33E2830);
      sub_1D331E818(v38, &v9[v21], &qword_1EC7612B0, qword_1D33E2830);
      v22 = *v19;
      if ((*v19)(v9, 1, v5) == 1)
      {
        break;
      }

      v23 = v34;
      sub_1D331E818(v9, v34, &qword_1EC7612B0, qword_1D33E2830);
      if (v22(&v9[v21], 1, v5) == 1)
      {
        sub_1D331E880(v15, &qword_1EC7612B0, qword_1D33E2830);
        (*v32)(v23, v5);
        v18 = v33;
LABEL_4:
        sub_1D331E880(v9, &qword_1EC761A90, &qword_1D33E3F98);
        goto LABEL_5;
      }

      v24 = &v9[v21];
      v25 = v30;
      (*v29)(v30, v24, v5);
      sub_1D33B9FFC(&qword_1EDEBFD30, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
      v31 = sub_1D33DE774();
      v26 = *v32;
      (*v32)(v25, v5);
      sub_1D331E880(v15, &qword_1EC7612B0, qword_1D33E2830);
      v26(v23, v5);
      v19 = v28;
      sub_1D331E880(v9, &qword_1EC7612B0, qword_1D33E2830);
      v18 = v33;
      if (v31)
      {
        return v17;
      }

LABEL_5:
      v17 = (v17 + 1) & v18;
      if (((*(v36 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
      {
        return v17;
      }
    }

    sub_1D331E880(v15, &qword_1EC7612B0, qword_1D33E2830);
    if (v22(&v9[v21], 1, v5) == 1)
    {
      sub_1D331E880(v9, &qword_1EC7612B0, qword_1D33E2830);
      return v17;
    }

    goto LABEL_4;
  }

  return v17;
}

unint64_t sub_1D33B9C94(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1D334CD04(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1D38B7530](v9, a1);
      sub_1D334CCA0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1D33B9D5C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_1D33B9DC8(uint64_t a1, uint64_t a2, unint64_t *a3, void *a4)
{
  v5 = -1 << *(v4 + 32);
  v6 = a2 & ~v5;
  if ((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    sub_1D331DA18(0, a3, a4);
    do
    {
      v8 = *(*(v4 + 48) + 8 * v6);
      v9 = sub_1D33DEC74();

      if (v9)
      {
        break;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  return v6;
}

uint64_t sub_1D33B9E94(uint64_t *a1)
{
  v2 = *(type metadata accessor for ReminderStatus(0) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1D33A93D8(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_1D33BA044(v6);
  *a1 = v3;
  return result;
}

uint64_t sub_1D33B9F3C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D33B9FA0(uint64_t a1)
{
  v2 = type metadata accessor for ReminderStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D33B9FFC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D33BA044(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1D33DF164();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        type metadata accessor for ReminderStatus(0);
        v6 = sub_1D33DE8E4();
        *(v6 + 16) = v5;
      }

      v7 = *(type metadata accessor for ReminderStatus(0) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1D33BA6F8(v8, v9, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D33BA170(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D33BA170(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v79 = sub_1D33DDD34();
  v8 = *(v79 - 8);
  v9 = MEMORY[0x1EEE9AC00](v79);
  v66 = &v57[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v57[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v67 = &v57[-v13];
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BA0, &qword_1D33E4748);
  MEMORY[0x1EEE9AC00](v73);
  v15 = &v57[-v14];
  v74 = type metadata accessor for ReminderStatus(0);
  v16 = MEMORY[0x1EEE9AC00](v74);
  v70 = &v57[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = MEMORY[0x1EEE9AC00](v16);
  v78 = &v57[-v19];
  result = MEMORY[0x1EEE9AC00](v18);
  v77 = &v57[-v22];
  v59 = a2;
  if (a3 != a2)
  {
    v23 = *a4;
    v24 = *(v21 + 72);
    v64 = (v8 + 32);
    v71 = (v8 + 8);
    v72 = (v8 + 48);
    v25 = v23 + v24 * (a3 - 1);
    v68 = -v24;
    v69 = v23;
    v26 = a1 - a3;
    v58 = v24;
    v27 = v23 + v24 * a3;
    v28 = &qword_1EC760E10;
    v29 = &unk_1D33E1A90;
LABEL_6:
    v62 = v25;
    v63 = a3;
    v60 = v27;
    v61 = v26;
    v30 = v26;
    v31 = v25;
    v32 = v67;
    while (1)
    {
      v75 = v30;
      v76 = v27;
      v33 = v77;
      sub_1D33B9F3C(v27, v77);
      v34 = v29;
      v35 = v28;
      v36 = v78;
      sub_1D33B9F3C(v31, v78);
      v37 = *(v74 + 20);
      v38 = *(v73 + 48);
      sub_1D331E818(&v33[v37], v15, v35, v34);
      v39 = &v36[v37];
      v28 = v35;
      sub_1D331E818(v39, &v15[v38], v35, v34);
      v40 = *v72;
      if ((*v72)(v15, 1, v79) == 1)
      {
        sub_1D331E880(&v15[v38], v35, v34);
        sub_1D331E880(v15, v35, v34);
        sub_1D33B9FA0(v78);
        result = sub_1D33B9FA0(v77);
        v29 = v34;
LABEL_5:
        a3 = v63 + 1;
        v25 = v62 + v58;
        v26 = v61 - 1;
        v27 = v60 + v58;
        if (v63 + 1 == v59)
        {
          return result;
        }

        goto LABEL_6;
      }

      sub_1D331E818(v15, v32, v35, v34);
      if (v40(&v15[v38], 1, v79) == 1)
      {
        v41 = v79;
        (*v71)(v32, v79);
        if (v40(&v15[v38], 1, v41) != 1)
        {
          goto LABEL_17;
        }

        v28 = v35;
        v42 = v35;
        v29 = v34;
        sub_1D331E880(v15, v42, v34);
        sub_1D33B9FA0(v78);
        sub_1D33B9FA0(v77);
        v44 = v75;
        v43 = v76;
      }

      else
      {
        v45 = v65;
        v46 = *v64;
        v47 = v32;
        v48 = v79;
        (*v64)(v65, v47, v79);
        v49 = v66;
        v46(v66, &v15[v38], v48);
        v50 = v71;
        v51 = sub_1D33DDCB4();
        v52 = *v50;
        v53 = v49;
        v54 = v48;
        v32 = v67;
        (*v50)(v53, v54);
        v52(v45, v54);
        v28 = &qword_1EC760E10;
        sub_1D331E880(v15, &qword_1EC760E10, v34);
        sub_1D33B9FA0(v78);
        result = sub_1D33B9FA0(v77);
        v29 = v34;
        v44 = v75;
        v43 = v76;
        if ((v51 & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      if (!v69)
      {
        break;
      }

      v55 = v70;
      sub_1D33B6048(v43, v70);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_1D33B6048(v55, v31);
      v31 += v68;
      v27 = v43 + v68;
      v56 = __CFADD__(v44, 1);
      v30 = v44 + 1;
      if (v56)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
LABEL_17:
    result = sub_1D33DF1A4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1D33BA6F8(unint64_t *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v5 = v4;
  v155 = a1;
  v187 = sub_1D33DDD34();
  v8 = *(v187 - 8);
  v9 = MEMORY[0x1EEE9AC00](v187);
  v173 = &v151 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v172 = &v151 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = &v151 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v157 = &v151 - v16;
  v179 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BA0, &qword_1D33E4748);
  v17 = MEMORY[0x1EEE9AC00](v179);
  v182 = &v151 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v163 = &v151 - v19;
  v180 = type metadata accessor for ReminderStatus(0);
  v166 = *(v180 - 8);
  v20 = MEMORY[0x1EEE9AC00](v180);
  v158 = &v151 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v176 = &v151 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v186 = &v151 - v25;
  v26 = MEMORY[0x1EEE9AC00](v24);
  v185 = &v151 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v169 = &v151 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v168 = &v151 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  MEMORY[0x1EEE9AC00](v32);
  v167 = a3;
  if (*(a3 + 8) < 1)
  {
    v37 = MEMORY[0x1E69E7CC0];
LABEL_106:
    a3 = *v155;
    if (!*v155)
    {
      goto LABEL_146;
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_108;
    }

    goto LABEL_140;
  }

  v35 = *(a3 + 8);
  v152 = &v151 - v33;
  v153 = v34;
  v151 = a4;
  v181 = (v8 + 48);
  v171 = (v8 + 32);
  v177 = v15;
  v178 = (v8 + 8);
  v36 = 0;
  v37 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v36 + 1 >= v35)
    {
      v48 = v36 + 1;
    }

    else
    {
      v170 = v35;
      v38 = *v167;
      a3 = *(v166 + 72);
      v39 = v36;
      v40 = *v167 + a3 * (v36 + 1);
      v41 = v152;
      sub_1D33B9F3C(v40, v152);
      v42 = v153;
      sub_1D33B9F3C(v38 + a3 * v39, v153);
      LODWORD(v183) = sub_1D33B8E58(v41, v42);
      if (v5)
      {
        sub_1D33B9FA0(v42);
        sub_1D33B9FA0(v41);
      }

      sub_1D33B9FA0(v42);
      sub_1D33B9FA0(v41);
      v154 = v39;
      v43 = v39 + 2;
      v44 = v38 + a3 * (v39 + 2);
      v165 = 0;
      v184 = a3;
      v164 = v37;
      while (1)
      {
        v48 = v170;
        if (v170 == v43)
        {
          break;
        }

        v49 = v168;
        sub_1D33B9F3C(v44, v168);
        v50 = v169;
        sub_1D33B9F3C(v40, v169);
        v51 = *(v180 + 20);
        v52 = *(v179 + 48);
        v53 = v49 + v51;
        v54 = v163;
        sub_1D331E818(v53, v163, &qword_1EC760E10, &unk_1D33E1A90);
        v55 = v50 + v51;
        v56 = v181;
        v57 = v54;
        sub_1D331E818(v55, v54 + v52, &qword_1EC760E10, &unk_1D33E1A90);
        v58 = *v56;
        if ((*v56)(v57, 1, v187) == 1)
        {
          sub_1D331E880(v57 + v52, &qword_1EC760E10, &unk_1D33E1A90);
          v45 = v57;
          v46 = 0;
          v5 = v165;
          v37 = v164;
        }

        else
        {
          v59 = v157;
          sub_1D331E818(v57, v157, &qword_1EC760E10, &unk_1D33E1A90);
          v60 = v57;
          if (v58(v57 + v52, 1, v187) == 1)
          {
            v61 = v59;
            v62 = v187;
            (*v178)(v61, v187);
            v46 = 1;
            v63 = v58(v60 + v52, 1, v62) == 1;
            v45 = v60;
            v5 = v165;
            v37 = v164;
            if (!v63)
            {
              goto LABEL_147;
            }
          }

          else
          {
            v64 = v172;
            v65 = *v171;
            (*v171)(v172, v59, v187);
            v66 = v173;
            v65(v173, v60 + v52, v187);
            v46 = sub_1D33DDCB4();
            v67 = *v178;
            (*v178)(v66, v187);
            v67(v64, v187);
            v45 = v60;
            v5 = v165;
            v37 = v164;
          }
        }

        sub_1D331E880(v45, &qword_1EC760E10, &unk_1D33E1A90);
        sub_1D33B9FA0(v169);
        sub_1D33B9FA0(v168);
        v47 = v183 ^ v46;
        ++v43;
        a3 = v184;
        v44 += v184;
        v40 += v184;
        if (v47)
        {
          v48 = v43 - 1;
          break;
        }
      }

      v36 = v154;
      if (v183)
      {
        if (v48 < v154)
        {
          goto LABEL_139;
        }

        if (v154 < v48)
        {
          v68 = a3 * (v48 - 1);
          v69 = v48 * a3;
          v70 = v48;
          v71 = v154;
          v72 = v154 * a3;
          do
          {
            if (v71 != --v70)
            {
              v73 = *v167;
              if (!*v167)
              {
                goto LABEL_143;
              }

              sub_1D33B6048(v73 + v72, v158);
              if (v72 < v68 || v73 + v72 >= v73 + v69)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v72 != v68)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_1D33B6048(v158, v73 + v68);
              a3 = v184;
            }

            ++v71;
            v68 -= a3;
            v69 -= a3;
            v72 += a3;
          }

          while (v71 < v70);
          v5 = v165;
          v37 = v164;
          v36 = v154;
        }
      }
    }

    v74 = v167[1];
    if (v48 < v74)
    {
      if (__OFSUB__(v48, v36))
      {
        goto LABEL_136;
      }

      if (v48 - v36 < v151)
      {
        break;
      }
    }

LABEL_54:
    if (v48 < v36)
    {
      goto LABEL_135;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v37 = sub_1D3359A14(0, *(v37 + 2) + 1, 1, v37);
    }

    a3 = *(v37 + 2);
    v101 = *(v37 + 3);
    v102 = a3 + 1;
    if (a3 >= v101 >> 1)
    {
      v37 = sub_1D3359A14((v101 > 1), a3 + 1, 1, v37);
    }

    *(v37 + 2) = v102;
    v103 = &v37[16 * a3];
    *(v103 + 4) = v36;
    *(v103 + 5) = v48;
    v159 = v48;
    if (!*v155)
    {
      goto LABEL_145;
    }

    if (a3)
    {
      v104 = *v155;
      while (1)
      {
        v105 = v102 - 1;
        if (v102 >= 4)
        {
          break;
        }

        if (v102 == 3)
        {
          v106 = *(v37 + 4);
          v107 = *(v37 + 5);
          v116 = __OFSUB__(v107, v106);
          v108 = v107 - v106;
          v109 = v116;
LABEL_75:
          if (v109)
          {
            goto LABEL_124;
          }

          v122 = &v37[16 * v102];
          v124 = *v122;
          v123 = *(v122 + 1);
          v125 = __OFSUB__(v123, v124);
          v126 = v123 - v124;
          v127 = v125;
          if (v125)
          {
            goto LABEL_127;
          }

          v128 = &v37[16 * v105 + 32];
          v130 = *v128;
          v129 = *(v128 + 1);
          v116 = __OFSUB__(v129, v130);
          v131 = v129 - v130;
          if (v116)
          {
            goto LABEL_130;
          }

          if (__OFADD__(v126, v131))
          {
            goto LABEL_131;
          }

          if (v126 + v131 >= v108)
          {
            if (v108 < v131)
            {
              v105 = v102 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v132 = &v37[16 * v102];
        v134 = *v132;
        v133 = *(v132 + 1);
        v116 = __OFSUB__(v133, v134);
        v126 = v133 - v134;
        v127 = v116;
LABEL_89:
        if (v127)
        {
          goto LABEL_126;
        }

        v135 = &v37[16 * v105];
        v137 = *(v135 + 4);
        v136 = *(v135 + 5);
        v116 = __OFSUB__(v136, v137);
        v138 = v136 - v137;
        if (v116)
        {
          goto LABEL_129;
        }

        if (v138 < v126)
        {
          goto LABEL_3;
        }

LABEL_96:
        a3 = v105 - 1;
        if (v105 - 1 >= v102)
        {
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
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
          goto LABEL_138;
        }

        if (!*v167)
        {
          goto LABEL_142;
        }

        v143 = *&v37[16 * a3 + 32];
        v144 = *&v37[16 * v105 + 40];
        sub_1D33BB688(*v167 + *(v166 + 72) * v143, *v167 + *(v166 + 72) * *&v37[16 * v105 + 32], *v167 + *(v166 + 72) * v144, v104);
        if (v5)
        {
        }

        if (v144 < v143)
        {
          goto LABEL_120;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1D33A9330(v37);
        }

        if (a3 >= *(v37 + 2))
        {
          goto LABEL_121;
        }

        v145 = &v37[16 * a3];
        *(v145 + 4) = v143;
        *(v145 + 5) = v144;
        v188 = v37;
        sub_1D33A92A4(v105);
        v37 = v188;
        v102 = *(v188 + 2);
        if (v102 <= 1)
        {
          goto LABEL_3;
        }
      }

      v110 = &v37[16 * v102 + 32];
      v111 = *(v110 - 64);
      v112 = *(v110 - 56);
      v116 = __OFSUB__(v112, v111);
      v113 = v112 - v111;
      if (v116)
      {
        goto LABEL_122;
      }

      v115 = *(v110 - 48);
      v114 = *(v110 - 40);
      v116 = __OFSUB__(v114, v115);
      v108 = v114 - v115;
      v109 = v116;
      if (v116)
      {
        goto LABEL_123;
      }

      v117 = &v37[16 * v102];
      v119 = *v117;
      v118 = *(v117 + 1);
      v116 = __OFSUB__(v118, v119);
      v120 = v118 - v119;
      if (v116)
      {
        goto LABEL_125;
      }

      v116 = __OFADD__(v108, v120);
      v121 = v108 + v120;
      if (v116)
      {
        goto LABEL_128;
      }

      if (v121 >= v113)
      {
        v139 = &v37[16 * v105 + 32];
        v141 = *v139;
        v140 = *(v139 + 1);
        v116 = __OFSUB__(v140, v141);
        v142 = v140 - v141;
        if (v116)
        {
          goto LABEL_132;
        }

        if (v108 < v142)
        {
          v105 = v102 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v35 = v167[1];
    v36 = v159;
    if (v159 >= v35)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v36, v151))
  {
    goto LABEL_137;
  }

  if (v36 + v151 < v74)
  {
    v74 = v36 + v151;
  }

  if (v74 < v36)
  {
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    v37 = sub_1D33A9330(v37);
LABEL_108:
    v188 = v37;
    v146 = *(v37 + 2);
    if (v146 >= 2)
    {
      while (*v167)
      {
        v147 = *&v37[16 * v146];
        v148 = *&v37[16 * v146 + 24];
        sub_1D33BB688(*v167 + *(v166 + 72) * v147, *v167 + *(v166 + 72) * *&v37[16 * v146 + 16], *v167 + *(v166 + 72) * v148, a3);
        if (v5)
        {
        }

        if (v148 < v147)
        {
          goto LABEL_133;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v37 = sub_1D33A9330(v37);
        }

        if (v146 - 2 >= *(v37 + 2))
        {
          goto LABEL_134;
        }

        v149 = &v37[16 * v146];
        *v149 = v147;
        *(v149 + 1) = v148;
        v188 = v37;
        sub_1D33A92A4(v146 - 1);
        v37 = v188;
        v146 = *(v188 + 2);
        if (v146 <= 1)
        {
        }
      }

      goto LABEL_144;
    }
  }

  v159 = v74;
  if (v48 == v74)
  {
    goto LABEL_54;
  }

  v164 = v37;
  v165 = v5;
  v75 = *v167;
  v76 = *(v166 + 72);
  v77 = *v167 + v76 * (v48 - 1);
  v174 = -v76;
  v154 = v36;
  v78 = v36 - v48;
  v170 = v48;
  v175 = v75;
  v156 = v76;
  v79 = v75 + v48 * v76;
  v80 = v180;
  v81 = v177;
  while (2)
  {
    v160 = v79;
    v161 = v78;
    v82 = v78;
    v162 = v77;
    v83 = v77;
LABEL_43:
    v183 = v79;
    v184 = v82;
    v84 = v185;
    sub_1D33B9F3C(v79, v185);
    v85 = v186;
    sub_1D33B9F3C(v83, v186);
    v86 = *(v80 + 20);
    a3 = *(v179 + 48);
    v87 = v84 + v86;
    v88 = v182;
    sub_1D331E818(v87, v182, &qword_1EC760E10, &unk_1D33E1A90);
    sub_1D331E818(v85 + v86, v88 + a3, &qword_1EC760E10, &unk_1D33E1A90);
    v89 = *v181;
    if ((*v181)(v88, 1, v187) == 1)
    {
      sub_1D331E880(v88 + a3, &qword_1EC760E10, &unk_1D33E1A90);
      sub_1D331E880(v88, &qword_1EC760E10, &unk_1D33E1A90);
      sub_1D33B9FA0(v186);
      sub_1D33B9FA0(v185);
      v80 = v180;
      goto LABEL_41;
    }

    sub_1D331E818(v88, v81, &qword_1EC760E10, &unk_1D33E1A90);
    if (v89(v88 + a3, 1, v187) != 1)
    {
      v91 = *v171;
      v92 = v172;
      (*v171)(v172, v81, v187);
      v93 = v88 + a3;
      v94 = v173;
      v91(v173, v93, v187);
      a3 = sub_1D33DDCB4();
      v95 = *v178;
      v96 = v94;
      v97 = v187;
      (*v178)(v96, v187);
      v95(v92, v97);
      sub_1D331E880(v182, &qword_1EC760E10, &unk_1D33E1A90);
      sub_1D33B9FA0(v186);
      sub_1D33B9FA0(v185);
      v80 = v180;
      if (a3)
      {
        goto LABEL_48;
      }

      v81 = v177;
LABEL_41:
      v77 = v162 + v156;
      v78 = v161 - 1;
      v79 = v160 + v156;
      if (++v170 == v159)
      {
        v5 = v165;
        v37 = v164;
        v36 = v154;
        v48 = v159;
        goto LABEL_54;
      }

      continue;
    }

    break;
  }

  v90 = v187;
  (*v178)(v81, v187);
  if (v89(v88 + a3, 1, v90) != 1)
  {
    goto LABEL_147;
  }

  sub_1D331E880(v88, &qword_1EC760E10, &unk_1D33E1A90);
  sub_1D33B9FA0(v186);
  sub_1D33B9FA0(v185);
  v80 = v180;
LABEL_48:
  v98 = v184;
  if (v175)
  {
    v99 = v183;
    a3 = v176;
    sub_1D33B6048(v183, v176);
    swift_arrayInitWithTakeFrontToBack();
    sub_1D33B6048(a3, v83);
    v83 += v174;
    v79 = v99 + v174;
    v100 = __CFADD__(v98, 1);
    v82 = v98 + 1;
    v81 = v177;
    if (v100)
    {
      goto LABEL_41;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  result = sub_1D33DF1A4();
  __break(1u);
  return result;
}

uint64_t sub_1D33BB688(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v96 = a4;
  v93 = sub_1D33DDD34();
  v7 = *(v93 - 8);
  v8 = MEMORY[0x1EEE9AC00](v93);
  v82 = &v78 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v81 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v83 = (&v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v78 - v14;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761BA0, &qword_1D33E4748);
  v16 = MEMORY[0x1EEE9AC00](v92);
  v18 = &v78 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v78 - v19;
  v97 = type metadata accessor for ReminderStatus(0);
  v21 = MEMORY[0x1EEE9AC00](v97);
  v90 = &v78 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x1EEE9AC00](v21);
  v88 = &v78 - v24;
  v25 = MEMORY[0x1EEE9AC00](v23);
  v91 = &v78 - v26;
  MEMORY[0x1EEE9AC00](v25);
  v89 = *(v28 + 72);
  if (!v89)
  {
    __break(1u);
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v29 = a2 - a1;
  if (a2 - a1 == 0x8000000000000000 && v89 == -1)
  {
    goto LABEL_74;
  }

  v30 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v89 == -1)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    result = sub_1D33DF1A4();
    __break(1u);
    return result;
  }

  v100 = a1;
  v31 = v96;
  v99 = v96;
  if (v29 / v89 >= v30 / v89)
  {
    v35 = v30 / v89 * v89;
    if (v96 < a2 || a2 + v35 <= v96)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (v96 == a2)
      {
LABEL_44:
        v53 = v31 + v35;
        v54 = v93;
        if (v35 < 1)
        {
          goto LABEL_71;
        }

        v55 = v7;
        v56 = -v89;
        v85 = (v55 + 48);
        v79 = (v55 + 32);
        v80 = (v55 + 8);
        v57 = v53;
        v95 = a1;
        v84 = -v89;
        while (1)
        {
          v87 = v53;
          v78 = v53;
          v58 = a2;
          a2 += v56;
          v94 = a2;
          v86 = v58;
          while (1)
          {
            if (v58 <= a1)
            {
              v100 = v58;
              v98 = v78;
              goto LABEL_72;
            }

            v59 = a3;
            v60 = v54;
            v91 = v57;
            v61 = v57 + v56;
            v89 = v57 + v56;
            v62 = v88;
            sub_1D33B9F3C(v61, v88);
            v63 = a2;
            v64 = v90;
            sub_1D33B9F3C(v63, v90);
            v65 = *(v97 + 20);
            v66 = *(v92 + 48);
            sub_1D331E818(v62 + v65, v18, &qword_1EC760E10, &unk_1D33E1A90);
            sub_1D331E818(v64 + v65, &v18[v66], &qword_1EC760E10, &unk_1D33E1A90);
            v67 = *v85;
            if ((*v85)(v18, 1, v60) == 1)
            {
              sub_1D331E880(&v18[v66], &qword_1EC760E10, &unk_1D33E1A90);
              v68 = 0;
LABEL_57:
              v71 = v89;
              goto LABEL_58;
            }

            v69 = v83;
            sub_1D331E818(v18, v83, &qword_1EC760E10, &unk_1D33E1A90);
            if (v67(&v18[v66], 1, v60) != 1)
            {
              v72 = *v79;
              v73 = v81;
              (*v79)(v81, v83, v60);
              v74 = &v18[v66];
              v75 = v82;
              v72(v82, v74, v60);
              v68 = sub_1D33DDCB4();
              v76 = *v80;
              (*v80)(v75, v60);
              v76(v73, v60);
              goto LABEL_57;
            }

            (*v80)(v69, v60);
            v68 = 1;
            v70 = v67(&v18[v66], 1, v60);
            v71 = v89;
            if (v70 != 1)
            {
              goto LABEL_76;
            }

LABEL_58:
            v56 = v84;
            a3 = v59 + v84;
            sub_1D331E880(v18, &qword_1EC760E10, &unk_1D33E1A90);
            sub_1D33B9FA0(v90);
            sub_1D33B9FA0(v88);
            a2 = v94;
            if (v68)
            {
              break;
            }

            v57 = v71;
            v54 = v93;
            a1 = v95;
            if (v59 < v91 || a3 >= v91)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v59 != v91)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v87 = v71;
            v58 = v86;
            if (v71 <= v96)
            {
              a2 = v86;
              v53 = v87;
              goto LABEL_71;
            }
          }

          v54 = v93;
          a1 = v95;
          if (v59 < v86 || a3 >= v86)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v59 != v86)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v57 = v91;
          v53 = v87;
          if (v91 <= v96)
          {
LABEL_71:
            v100 = a2;
            v98 = v53;
            goto LABEL_72;
          }
        }
      }

      swift_arrayInitWithTakeBackToFront();
    }

    v31 = v96;
    goto LABEL_44;
  }

  v32 = v29 / v89 * v89;
  v84 = v15;
  v90 = &v78 - v27;
  v87 = v20;
  v95 = a1;
  if (v96 < a1 || a1 + v32 <= v96)
  {
    swift_arrayInitWithTakeFrontToBack();
    v31 = v96;
    v34 = v91;
  }

  else
  {
    v33 = v96 == a1;
    v34 = v91;
    if (!v33)
    {
      swift_arrayInitWithTakeBackToFront();
      v31 = v96;
    }
  }

  v88 = v31 + v32;
  v98 = v31 + v32;
  if (v32 >= 1 && a2 < a3)
  {
    v85 = (v7 + 48);
    v86 = a3;
    v80 = (v7 + 32);
    v83 = (v7 + 8);
    do
    {
      v94 = a2;
      v37 = v31;
      v38 = v90;
      sub_1D33B9F3C(a2, v90);
      v96 = v37;
      sub_1D33B9F3C(v37, v34);
      v39 = *(v97 + 20);
      v40 = *(v92 + 48);
      v41 = v87;
      sub_1D331E818(v38 + v39, v87, &qword_1EC760E10, &unk_1D33E1A90);
      sub_1D331E818(v34 + v39, v41 + v40, &qword_1EC760E10, &unk_1D33E1A90);
      v42 = *v85;
      v43 = v93;
      if ((*v85)(v41, 1, v93) == 1)
      {
        sub_1D331E880(v41 + v40, &qword_1EC760E10, &unk_1D33E1A90);
        sub_1D331E880(v41, &qword_1EC760E10, &unk_1D33E1A90);
        sub_1D33B9FA0(v34);
        sub_1D33B9FA0(v38);
        v44 = v89;
        v45 = v95;
      }

      else
      {
        v48 = v84;
        sub_1D331E818(v41, v84, &qword_1EC760E10, &unk_1D33E1A90);
        if (v42((v41 + v40), 1, v43) == 1)
        {
          (*v83)(v48, v43);
          if (v42((v41 + v40), 1, v43) != 1)
          {
            goto LABEL_76;
          }

          sub_1D331E880(v41, &qword_1EC760E10, &unk_1D33E1A90);
          sub_1D33B9FA0(v91);
          sub_1D33B9FA0(v90);
          v44 = v89;
          v45 = v95;
LABEL_33:
          a2 = v94 + v44;
          if (v45 < v94 || v45 >= a2)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v45 != v94)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v31 = v96;
          v47 = v86;
          goto LABEL_39;
        }

        v49 = v81;
        v50 = *v80;
        (*v80)(v81, v48, v43);
        v51 = v82;
        (v50)(v82, v41 + v40, v43);
        LOBYTE(v50) = sub_1D33DDCB4();
        v52 = *v83;
        (*v83)(v51, v43);
        v52(v49, v43);
        sub_1D331E880(v41, &qword_1EC760E10, &unk_1D33E1A90);
        sub_1D33B9FA0(v91);
        sub_1D33B9FA0(v90);
        v44 = v89;
        v45 = v95;
        if (v50)
        {
          goto LABEL_33;
        }
      }

      v46 = v96 + v44;
      if (v45 < v96 || v45 >= v46)
      {
        swift_arrayInitWithTakeFrontToBack();
        v47 = v86;
      }

      else
      {
        v47 = v86;
        if (v45 != v96)
        {
          swift_arrayInitWithTakeBackToFront();
        }
      }

      v99 = v46;
      v31 = v46;
      a2 = v94;
LABEL_39:
      v95 = v45 + v44;
      v100 = v45 + v44;
      v34 = v91;
    }

    while (v31 < v88 && a2 < v47);
  }

LABEL_72:
  sub_1D3385370(&v100, &v99, &v98);
  return 1;
}

id UUID.reminderID.getter()
{
  v1 = v0;
  v2 = sub_1D33DDDB4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v5, v1, v2);
  v6 = [objc_opt_self() cdEntityName];
  if (!v6)
  {
    sub_1D33DE7B4();
    v6 = sub_1D33DE784();
  }

  v7 = objc_allocWithZone(MEMORY[0x1E69C6D10]);
  v8 = sub_1D33DDD64();
  v9 = [v7 initWithUUID:v8 entityName:v6];

  (*(v3 + 8))(v5, v2);
  return v9;
}

id sub_1D33BC280()
{
  type metadata accessor for ReminderFactory();
  v0 = swift_allocObject();
  v1 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  v2 = [v1 callRemindersEnabled];

  if (v2)
  {
    result = [objc_allocWithZone(MEMORY[0x1E69C6D28]) init];
  }

  else
  {
    result = 0;
  }

  *(v0 + 16) = result;
  qword_1EC762108 = v0;
  return result;
}

void sub_1D33BC314(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v70[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D33DDDB4();
  v66 = *(v4 - 8);
  v67 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D38, "xv");
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v61 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761CD8, &unk_1D33E4A60);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v61 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v61 - v13;
  v15 = sub_1D33DDC44();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v61 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(v2 + 16);
  if (v19)
  {
    v20 = objc_allocWithZone(MEMORY[0x1E69C6D20]);
    v21 = v19;
    v22 = v20;
    v23 = v21;
    v69 = [v22 initWithStore_];
    v70[0] = 0;
    v24 = [v23 fetchDefaultListWithError_];
    if (v70[0])
    {
      v25 = v24;
      v70[0];

      swift_willThrow();
    }

    else if (v24)
    {
      v61 = v11;
      v27 = v69;
      v63 = v24;
      v64 = v23;
      v28 = [v69 updateList_];
      v29 = sub_1D33DE784();
      v62 = v28;
      v30 = [v27 addReminderWithTitle:v29 toListChangeItem:v28];

      v31 = type metadata accessor for RecentsItemReminder(0);
      sub_1D331E818(a1 + *(v31 + 20), v14, &unk_1EC760EA0, &qword_1D33E2210);
      if ((*(v16 + 48))(v14, 1, v15) == 1)
      {
        sub_1D331E880(v14, &unk_1EC760EA0, &qword_1D33E2210);
      }

      else
      {
        (*(v16 + 32))(v18, v14, v15);
        v33 = objc_allocWithZone(MEMORY[0x1E69C6D30]);
        v34 = v31;
        v35 = sub_1D33DDC04();
        v36 = [v33 initWithUniversalLink_];

        v31 = v34;
        [v30 setUserActivity_];

        (*(v16 + 8))(v18, v15);
      }

      v37 = v61;
      sub_1D331E818(a1 + *(v31 + 24), v8, &qword_1EC761D38, "xv");
      v38 = type metadata accessor for ReminderTime(0);
      if ((*(*(v38 - 8) + 48))(v8, 1, v38) == 1)
      {
        sub_1D331E880(v8, &qword_1EC761D38, "xv");
        v39 = sub_1D33DDB54();
        (*(*(v39 - 8) + 56))(v37, 1, 1, v39);
        v40 = 0;
      }

      else
      {
        sub_1D33C097C(v37);
        sub_1D33BDCE8(v8);
        v41 = sub_1D33DDB54();
        v42 = *(v41 - 8);
        v40 = 0;
        if ((*(v42 + 48))(v37, 1, v41) != 1)
        {
          v40 = sub_1D33DDB14();
          (*(v42 + 8))(v37, v41);
        }
      }

      [v30 setDueDateComponents_];

      if (qword_1EDEBF058 != -1)
      {
        swift_once();
      }

      v43 = sub_1D33DE464();
      __swift_project_value_buffer(v43, qword_1EDEC1440);
      v44 = v30;
      v45 = sub_1D33DE444();
      v46 = sub_1D33DEAF4();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v70[0] = v48;
        *v47 = 136315138;
        v49 = [v44 objectID];
        v50 = [v49 uuid];

        v51 = v65;
        sub_1D33DDD84();

        sub_1D33BDC90();
        v52 = v67;
        v53 = sub_1D33DF174();
        v55 = v54;
        (*(v66 + 8))(v51, v52);
        v56 = sub_1D3328B48(v53, v55, v70);

        *(v47 + 4) = v56;
        _os_log_impl(&dword_1D331A000, v45, v46, "Creating reminder with UUID: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v48);
        MEMORY[0x1D38B81C0](v48, -1, -1);
        MEMORY[0x1D38B81C0](v47, -1, -1);
      }

      v70[0] = 0;
      if ([v69 saveSynchronouslyWithError_])
      {
        v57 = v70[0];
        v58 = [v44 objectID];
        v59 = [v58 uuid];

        sub_1D33DDD84();
      }

      else
      {
        v60 = v70[0];
        sub_1D33DDBE4();

        swift_willThrow();
      }
    }

    else
    {
      sub_1D33BD65C();
      swift_allocError();
      *v32 = 0;
      swift_willThrow();
    }
  }

  else
  {
    sub_1D33BD65C();
    swift_allocError();
    *v26 = 2;
    swift_willThrow();
  }
}

void sub_1D33BCBB4(uint64_t a1)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D33DDDB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - v9;
  v11 = *(v1 + 16);
  if (v11)
  {
    v49[0] = MEMORY[0x1E69E7CC0];
    v12 = *(a1 + 16);
    v44 = v11;
    if (v12)
    {
      v43 = v2;
      v13 = objc_opt_self();
      v14 = (v5 + 16);
      v46 = *(v5 + 16);
      v47 = v13;
      v15 = (a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
      v45 = v14[7];
      v48 = v14;
      v16 = (v14 - 1);
      v17 = v11;
      do
      {
        v18 = v46;
        v46(v10, v15, v4);
        v18(v8, v10, v4);
        v19 = [v47 cdEntityName];
        if (!v19)
        {
          sub_1D33DE7B4();
          v19 = sub_1D33DE784();
        }

        v20 = objc_allocWithZone(MEMORY[0x1E69C6D10]);
        v21 = sub_1D33DDD64();
        [v20 initWithUUID:v21 entityName:v19];

        v22 = *v16;
        (*v16)(v8, v4);
        v23 = (v22)(v10, v4);
        MEMORY[0x1D38B6F20](v23);
        if (*((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D33DE8D4();
        }

        sub_1D33DE8F4();
        v15 += v45;
        --v12;
      }

      while (v12);
      v11 = v44;
    }

    else
    {
      v25 = v11;
    }

    v26 = [objc_allocWithZone(MEMORY[0x1E69C6D20]) initWithStore_];
    sub_1D331DA18(0, &qword_1EC761CE0, 0x1E69C6D10);
    v27 = sub_1D33DE8A4();

    v49[0] = 0;
    v28 = [v11 fetchRemindersWithObjectIDs:v27 error:v49];

    v29 = v49[0];
    if (v28)
    {
      sub_1D331DA18(0, &qword_1EC761CE8, 0x1E69C6D18);
      sub_1D33BD6B0();
      v30 = sub_1D33DE6F4();
      v31 = v29;

      v32 = v26;
      v33 = sub_1D33BDA0C(v30, v32);

      v48 = v32;
      if (v33 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
      {
        v35 = 0;
        while (1)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x1D38B75D0](v35, v33);
          }

          else
          {
            if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v36 = *(v33 + 8 * v35 + 32);
          }

          v37 = v36;
          v38 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          [v36 removeFromList];

          ++v35;
          if (v38 == i)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

LABEL_27:

      v49[0] = 0;
      v40 = v48;
      if ([v48 saveSynchronouslyWithError_])
      {
        v41 = v49[0];
      }

      else
      {
        v42 = v49[0];
        sub_1D33DDBE4();

        swift_willThrow();
      }
    }

    else
    {
      v39 = v49[0];
      sub_1D33DDBE4();

      swift_willThrow();
    }
  }

  else
  {
    sub_1D33BD65C();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
  }
}

void sub_1D33BD0D8(uint64_t a1)
{
  v49[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1D33DDDB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v43 - v9;
  v11 = *(v1 + 16);
  if (v11)
  {
    v49[0] = MEMORY[0x1E69E7CC0];
    v12 = *(a1 + 16);
    v44 = v11;
    if (v12)
    {
      v43 = v2;
      v13 = objc_opt_self();
      v14 = (v5 + 16);
      v46 = *(v5 + 16);
      v47 = v13;
      v15 = (a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)));
      v45 = v14[7];
      v48 = v14;
      v16 = (v14 - 1);
      v17 = v11;
      do
      {
        v18 = v46;
        v46(v10, v15, v4);
        v18(v8, v10, v4);
        v19 = [v47 cdEntityName];
        if (!v19)
        {
          sub_1D33DE7B4();
          v19 = sub_1D33DE784();
        }

        v20 = objc_allocWithZone(MEMORY[0x1E69C6D10]);
        v21 = sub_1D33DDD64();
        [v20 initWithUUID:v21 entityName:v19];

        v22 = *v16;
        (*v16)(v8, v4);
        v23 = (v22)(v10, v4);
        MEMORY[0x1D38B6F20](v23);
        if (*((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v49[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D33DE8D4();
        }

        sub_1D33DE8F4();
        v15 += v45;
        --v12;
      }

      while (v12);
      v11 = v44;
    }

    else
    {
      v25 = v11;
    }

    v26 = [objc_allocWithZone(MEMORY[0x1E69C6D20]) initWithStore_];
    sub_1D331DA18(0, &qword_1EC761CE0, 0x1E69C6D10);
    v27 = sub_1D33DE8A4();

    v49[0] = 0;
    v28 = [v11 fetchRemindersWithObjectIDs:v27 error:v49];

    v29 = v49[0];
    if (v28)
    {
      sub_1D331DA18(0, &qword_1EC761CE8, 0x1E69C6D18);
      sub_1D33BD6B0();
      v30 = sub_1D33DE6F4();
      v31 = v29;

      v32 = v26;
      v33 = sub_1D33BDA0C(v30, v32);

      v48 = v32;
      if (v33 >> 62)
      {
        goto LABEL_26;
      }

      for (i = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
      {
        v35 = 0;
        while (1)
        {
          if ((v33 & 0xC000000000000001) != 0)
          {
            v36 = MEMORY[0x1D38B75D0](v35, v33);
          }

          else
          {
            if (v35 >= *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_25;
            }

            v36 = *(v33 + 8 * v35 + 32);
          }

          v37 = v36;
          v38 = v35 + 1;
          if (__OFADD__(v35, 1))
          {
            break;
          }

          [v36 setCompleted_];

          ++v35;
          if (v38 == i)
          {
            goto LABEL_27;
          }
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        ;
      }

LABEL_27:

      v49[0] = 0;
      v40 = v48;
      if ([v48 saveSynchronouslyWithError_])
      {
        v41 = v49[0];
      }

      else
      {
        v42 = v49[0];
        sub_1D33DDBE4();

        swift_willThrow();
      }
    }

    else
    {
      v39 = v49[0];
      sub_1D33DDBE4();

      swift_willThrow();
    }
  }

  else
  {
    sub_1D33BD65C();
    swift_allocError();
    *v24 = 2;
    swift_willThrow();
  }
}

uint64_t sub_1D33BD600()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D33BD65C()
{
  result = qword_1EC761D28;
  if (!qword_1EC761D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761D28);
  }

  return result;
}

unint64_t sub_1D33BD6B0()
{
  result = qword_1EC761CF0;
  if (!qword_1EC761CF0)
  {
    sub_1D331DA18(255, &qword_1EC761CE0, 0x1E69C6D10);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761CF0);
  }

  return result;
}

void sub_1D33BD718(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (sub_1D33DF054() == *(a4 + 36))
    {
      sub_1D33DF064();
      sub_1D331DA18(0, &qword_1EC761CE0, 0x1E69C6D10);
      swift_dynamicCast();
      sub_1D33B9628(v6);
      v5 = v4;

      if (v5)
      {
        sub_1D33DF034();
        sub_1D33DF084();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  sub_1D33DED94();
}

void sub_1D33BD87C(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      sub_1D33DF094();
      sub_1D331DA18(0, &qword_1EC761CE8, 0x1E69C6D18);
      swift_dynamicCast();
      return;
    }

    goto LABEL_20;
  }

  if ((a3 & 1) == 0)
  {
    if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 64) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
          goto LABEL_12;
        }

LABEL_19:
        __break(1u);
LABEL_20:
        __break(1u);
        return;
      }

      goto LABEL_17;
    }

LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (sub_1D33DF054() != *(a4 + 36))
  {
    __break(1u);
    goto LABEL_16;
  }

  sub_1D33DF064();
  sub_1D331DA18(0, &qword_1EC761CE0, 0x1E69C6D10);
  swift_dynamicCast();
  v5 = sub_1D33B9628(v10);
  v7 = v6;

  if ((v7 & 1) == 0)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  a1 = v5;
LABEL_12:
  v8 = *(*(a4 + 56) + 8 * a1);

  v9 = v8;
}

uint64_t sub_1D33BDA0C(uint64_t a1, void *a2)
{
  v2 = a1;
  v24 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = sub_1D33DEE14();
    result = MEMORY[0x1E69E7CC0];
    if (!v3)
    {
      return result;
    }

    v30 = MEMORY[0x1E69E7CC0];
    sub_1D33DEFA4();
    result = sub_1D33DF014();
    v27 = result;
    v28 = v5;
    v29 = 1;
    if ((v3 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v3 = *(v2 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (!v3)
  {
    return result;
  }

  v30 = MEMORY[0x1E69E7CC0];
  sub_1D33DEFA4();
  result = sub_1D33DED74();
  v6 = *(v2 + 36);
  v27 = result;
  v28 = v6;
  v29 = 0;
LABEL_7:
  v7 = 0;
  v23 = v3;
  while (v7 < v3)
  {
    v14 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      goto LABEL_20;
    }

    v16 = v27;
    v15 = v28;
    v17 = v29;
    sub_1D33BD87C(v27, v28, v29, v2);
    v19 = v18;
    v20 = [a2 updateReminder_];

    sub_1D33DEF84();
    v21 = v2;
    sub_1D33DEFB4();
    sub_1D33DEFC4();
    result = sub_1D33DEF94();
    if (v24)
    {
      if (!v17)
      {
        goto LABEL_21;
      }

      if (sub_1D33DF044())
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v3 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D30, "Vv");
      v22 = sub_1D33DE714();
      sub_1D33DF0C4();
      result = v22(v26, 0);
    }

    else
    {
      sub_1D33BD718(v16, v15, v17, v2);
      v9 = v8;
      v11 = v10;
      v13 = v12;
      result = sub_1D335665C(v16, v15, v17);
      v27 = v9;
      v28 = v11;
      v29 = v13 & 1;
      v2 = v21;
      v3 = v23;
    }

    ++v7;
    if (v14 == v3)
    {
      sub_1D335665C(v27, v28, v29);
      return v30;
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

unint64_t sub_1D33BDC90()
{
  result = qword_1EC761A00;
  if (!qword_1EC761A00)
  {
    sub_1D33DDDB4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761A00);
  }

  return result;
}

uint64_t sub_1D33BDCE8(uint64_t a1)
{
  v2 = type metadata accessor for ReminderTime(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D33BDD58()
{
  result = qword_1EC761D40;
  if (!qword_1EC761D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761D40);
  }

  return result;
}

void *RecentsReminderActionProvider.__allocating_init(callProviderManager:)(uint64_t a1)
{
  v2 = swift_allocObject();
  v2[6] = 0;
  v2[3] = 0;
  v2[4] = 0;
  swift_unknownObjectWeakInit();
  v2[2] = a1;
  return v2;
}

uint64_t sub_1D33BDDFC()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    if (qword_1EC760958 != -1)
    {
      swift_once();
    }

    v1 = qword_1EC762108;
    *(v0 + 24) = qword_1EC762108;
    swift_retain_n();
  }

  return v1;
}

void *sub_1D33BDE94()
{
  if (*(v0 + 32))
  {
    v1 = *(v0 + 32);
  }

  else
  {
    if (qword_1EDEBF9C0 != -1)
    {
      swift_once();
    }

    v1 = off_1EDEBF9C8;
    *(v0 + 32) = off_1EDEBF9C8;
    swift_retain_n();
  }

  return v1;
}

uint64_t sub_1D33BDF68(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 48) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_1D33BDFC8(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 48);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_1D33BE05C;
}

void sub_1D33BE05C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 48) = *(*a1 + 32);
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

void *RecentsReminderActionProvider.init(callProviderManager:)(uint64_t a1)
{
  v1[6] = 0;
  v1[3] = 0;
  v1[4] = 0;
  swift_unknownObjectWeakInit();
  v1[2] = a1;
  return v1;
}

uint64_t sub_1D33BE11C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for ReminderTime(0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = type metadata accessor for RecentsItem(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_1D33DE9B4();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_1D332CE9C(a1, &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for RecentsItem);
  sub_1D332CE9C(a2, &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ReminderTime);
  v15 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v16 = (v10 + *(v6 + 80) + v15) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = 0;
  sub_1D3329140(&v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v15, type metadata accessor for RecentsItem);
  sub_1D3329140(&v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, type metadata accessor for ReminderTime);
  *(v17 + ((v7 + v16 + 7) & 0xFFFFFFFFFFFFFFF8)) = v2;

  sub_1D333DD88(0, 0, v13, &unk_1D33E4BD0, v17);
}

uint64_t sub_1D33BE3D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[7] = a5;
  v6[8] = a6;
  v6[6] = a4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v6[9] = swift_task_alloc();
  v7 = sub_1D33DDDB4();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v6[13] = swift_task_alloc();
  v8 = type metadata accessor for ReminderTime(0);
  v6[14] = v8;
  v6[15] = *(v8 - 8);
  v6[16] = swift_task_alloc();
  v6[17] = swift_task_alloc();
  v9 = type metadata accessor for RecentsItem(0);
  v6[18] = v9;
  v6[19] = *(v9 - 8);
  v6[20] = swift_task_alloc();
  v6[21] = type metadata accessor for RecentsItemReminder(0);
  v6[22] = swift_task_alloc();
  v6[23] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33BE604, 0, 0);
}

uint64_t sub_1D33BE604()
{
  v2 = v0[21];
  v1 = v0[22];
  v3 = v0[19];
  v4 = v0[17];
  v51 = v0[20];
  v52 = v0[18];
  v55 = v4;
  v6 = v0[14];
  v5 = v0[15];
  v53 = v6;
  v8 = v0[7];
  v7 = v0[8];
  sub_1D332CE9C(v0[6], v51, type metadata accessor for RecentsItem);
  sub_1D332CE9C(v8, v4, type metadata accessor for ReminderTime);
  v56 = *(v7 + 16);
  v9 = *(v2 + 24);
  v54 = *(v5 + 56);
  v54(v1 + v9, 1, 1, v6);
  v10 = *(v2 + 28);
  sub_1D332CE9C(v51, v1 + v10, type metadata accessor for RecentsItem);
  (*(v3 + 56))(v1 + v10, 0, 1, v52);
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v12 = [objc_opt_self() bundleForClass_];
  sub_1D33DDB74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D33E2410;
  v14 = *(v51 + 48);
  v15 = *(v51 + 56);
  *(v13 + 56) = MEMORY[0x1E69E6158];
  *(v13 + 64) = sub_1D3387AE4();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    v16 = 0;
  }

  if (v15)
  {
    v17 = v15;
  }

  else
  {
    v17 = 0xE000000000000000;
  }

  *(v13 + 32) = v16;
  *(v13 + 40) = v17;

  v18 = sub_1D33DE7D4();
  v20 = v19;

  *v1 = v18;
  v1[1] = v20;
  sub_1D331E880(v1 + v9, &qword_1EC761D38, "xv");
  sub_1D332CE9C(v55, v1 + v9, type metadata accessor for ReminderTime);
  v54(v1 + v9, 0, 1, v53);
  v21 = v56;
  if (v56)
  {
    v22 = v56;
  }

  else
  {
    v22 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
    v21 = 0;
  }

  v24 = v0[22];
  v23 = v0[23];
  v25 = v0[20];
  v26 = v0[21];
  v27 = v0[17];
  v29 = v0[12];
  v28 = v0[13];
  v30 = v21;
  sub_1D33C2774(v25, v22, v28);

  sub_1D3337B14(v27, type metadata accessor for ReminderTime);
  sub_1D3337B14(v25, type metadata accessor for RecentsItem);
  sub_1D33C090C(v28, v24 + *(v26 + 20));
  sub_1D3329140(v24, v23, type metadata accessor for RecentsItemReminder);
  sub_1D33BDDFC();
  sub_1D33BC314(v23, v29);
  v31 = v0[19];
  v33 = v0[11];
  v32 = v0[12];
  v34 = v0[9];
  v35 = v0[10];
  v36 = v0[6];

  (*(v33 + 16))(v34, v32, v35);
  (*(v33 + 56))(v34, 0, 1, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761F80, &qword_1D33E55C0);
  v37 = (*(v31 + 80) + 32) & ~*(v31 + 80);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_1D33E2410;
  sub_1D332CE9C(v36, v38 + v37, type metadata accessor for RecentsItem);
  sub_1D33C0344(v34, v38);

  sub_1D331E880(v34, &qword_1EC7612B0, qword_1D33E2830);
  if (qword_1EC760920 != -1)
  {
    swift_once();
  }

  v39 = v0[16];
  v40 = v0[7];
  v41 = sub_1D33BEEF4();
  sub_1D332CE9C(v40, v39, type metadata accessor for ReminderTime);
  v42 = sub_1D33DDB54();
  v43 = (*(*(v42 - 8) + 48))(v39, 3, v42);
  if (v43 > 1)
  {
    if (v43 == 2)
    {
      v44 = 2;
    }

    else
    {
      v44 = 3;
    }
  }

  else if (v43)
  {
    v44 = 1;
  }

  else
  {
    sub_1D3337B14(v0[16], type metadata accessor for ReminderTime);
    v44 = 4;
  }

  v45 = v0[23];
  v47 = v0[11];
  v46 = v0[12];
  v48 = v0[10];
  sub_1D333BB44(1u, v41, v44);
  (*(v47 + 8))(v46, v48);
  sub_1D3337B14(v45, type metadata accessor for RecentsItemReminder);

  v49 = v0[1];

  return v49();
}

uint64_t sub_1D33BED6C(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for RecentsItem(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for ReminderTime(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = *(v1 + 24);
  v12 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D334D4B4;

  return sub_1D33BE3D0(a1, v10, v11, v1 + v6, v1 + v9, v12);
}

uint64_t sub_1D33BEF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7612B0, qword_1D33E2830);
  v5[8] = swift_task_alloc();
  v5[9] = *(type metadata accessor for RecentsItem(0) - 8);
  v5[10] = swift_task_alloc();
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33BF028, 0, 0);
}

uint64_t sub_1D33BF028()
{
  v49 = v0;
  v1 = v0[7];
  sub_1D33BDDFC();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v4 = v0[7] + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = MEMORY[0x1E69E7CC0];
    v7 = *(v1 + 16);
    do
    {
      v8 = v0[11];
      sub_1D332CE9C(v4, v8, type metadata accessor for RecentsItem);
      v9 = sub_1D3337D6C();
      sub_1D3337B14(v8, type metadata accessor for RecentsItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D3337BEC(0, v6[2] + 1, 1, v6);
      }

      v11 = v6[2];
      v10 = v6[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        v6 = sub_1D3337BEC((v10 > 1), v11 + 1, 1, v6);
      }

      v6[2] = v12;
      v6[v11 + 4] = v9;
      v4 += v5;
      --v7;
    }

    while (v7);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    v12 = *(MEMORY[0x1E69E7CC0] + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (!v12)
    {
LABEL_27:

      sub_1D33BCBB4(v13);
      v35 = v0[7];
      v34 = v0[8];

      v36 = sub_1D33DDDB4();
      (*(*(v36 - 8) + 56))(v34, 1, 1, v36);
      sub_1D33C0344(v34, v35);
      sub_1D331E880(v34, &qword_1EC7612B0, qword_1D33E2830);
      if (v2)
      {
        v37 = v0[9];
        v38 = v0[10];
        v39 = v0[7] + ((*(v37 + 80) + 32) & ~*(v37 + 80));
        v40 = *(v37 + 72);
        do
        {
          sub_1D332CE9C(v39, v0[10], type metadata accessor for RecentsItem);
          if (qword_1EC760920 != -1)
          {
            swift_once();
          }

          v41 = *(v38 + 32);
          v42 = v41 - 4;
          v43 = 2 * ((v41 & 0xFE) == 2);
          if (v42 < 3)
          {
            v44 = 1;
          }

          else
          {
            v44 = v43;
          }

          v45 = v0[10];
          sub_1D333BB44(6u, v44, 0);
          sub_1D3337B14(v45, type metadata accessor for RecentsItem);
          v39 += v40;
          --v2;
        }

        while (v2);
      }

      goto LABEL_40;
    }
  }

  v14 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v14 < v6[2])
  {
    v15 = v6[v14 + 4];
    v16 = *(v15 + 16);
    v17 = v13[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_44;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= v13[3] >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v13 = sub_1D3338090(isUniquelyReferenced_nonNull_native, v20, 1, v13);
      if (*(v15 + 16))
      {
LABEL_23:
        v21 = (v13[3] >> 1) - v13[2];
        sub_1D33DDDB4();
        if (v21 < v16)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v22 = v13[2];
          v23 = __OFADD__(v22, v16);
          v24 = v22 + v16;
          if (v23)
          {
            goto LABEL_47;
          }

          v13[2] = v24;
        }

        goto LABEL_12;
      }
    }

    if (v16)
    {
      goto LABEL_45;
    }

LABEL_12:
    if (v12 == ++v14)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  swift_once();
  v25 = sub_1D33DE464();
  __swift_project_value_buffer(v25, qword_1EDEC1440);
  v26 = v6;
  v27 = sub_1D33DE444();
  v28 = sub_1D33DEAD4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v48 = v30;
    *v29 = 136315138;
    swift_getErrorValue();
    v31 = sub_1D33DF224();
    v33 = sub_1D3328B48(v31, v32, &v48);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_1D331A000, v27, v28, "Error deleting reminders: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1D38B81C0](v30, -1, -1);
    MEMORY[0x1D38B81C0](v29, -1, -1);
  }

  else
  {
  }

LABEL_40:

  v46 = v0[1];

  return v46();
}

uint64_t sub_1D33BF5CC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334D4B4;

  return sub_1D33BEF28(a1, v4, v5, v7, v6);
}

uint64_t sub_1D33BF6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7610E0, &qword_1D33E16C0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v13 - v8;
  v10 = sub_1D33DE9B4();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = v5;
  v11[5] = a1;

  sub_1D333DD88(0, 0, v9, a3, v11);
}

uint64_t sub_1D33BF7C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[8] = *(type metadata accessor for RecentsItem(0) - 8);
  v5[9] = swift_task_alloc();
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D33BF888, 0, 0);
}

uint64_t sub_1D33BF888()
{
  v46 = v0;
  v1 = v0[7];
  sub_1D33BDDFC();
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[8];
    v4 = v0[7] + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v5 = *(v3 + 72);
    v6 = MEMORY[0x1E69E7CC0];
    v7 = *(v1 + 16);
    do
    {
      v8 = v0[10];
      sub_1D332CE9C(v4, v8, type metadata accessor for RecentsItem);
      v9 = sub_1D3337D6C();
      sub_1D3337B14(v8, type metadata accessor for RecentsItem);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v6 = sub_1D3337BEC(0, v6[2] + 1, 1, v6);
      }

      v11 = v6[2];
      v10 = v6[3];
      v12 = v11 + 1;
      if (v11 >= v10 >> 1)
      {
        v6 = sub_1D3337BEC((v10 > 1), v11 + 1, 1, v6);
      }

      v6[2] = v12;
      v6[v11 + 4] = v9;
      v4 += v5;
      --v7;
    }

    while (v7);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
    v12 = *(MEMORY[0x1E69E7CC0] + 16);
    v13 = MEMORY[0x1E69E7CC0];
    if (!v12)
    {
LABEL_27:

      sub_1D33BD0D8(v13);

      if (v2)
      {
        v34 = v0[8];
        v35 = v0[9];
        v36 = v0[7] + ((*(v34 + 80) + 32) & ~*(v34 + 80));
        v37 = *(v34 + 72);
        do
        {
          sub_1D332CE9C(v36, v0[9], type metadata accessor for RecentsItem);
          if (qword_1EC760920 != -1)
          {
            swift_once();
          }

          v38 = *(v35 + 32);
          v39 = v38 - 4;
          v40 = 2 * ((v38 & 0xFE) == 2);
          if (v39 < 3)
          {
            v41 = 1;
          }

          else
          {
            v41 = v40;
          }

          v42 = v0[9];
          sub_1D333BB44(5u, v41, 0);
          sub_1D3337B14(v42, type metadata accessor for RecentsItem);
          v36 += v37;
          --v2;
        }

        while (v2);
      }

      goto LABEL_40;
    }
  }

  v14 = 0;
  v13 = MEMORY[0x1E69E7CC0];
  while (v14 < v6[2])
  {
    v15 = v6[v14 + 4];
    v16 = *(v15 + 16);
    v17 = v13[2];
    v18 = v17 + v16;
    if (__OFADD__(v17, v16))
    {
      goto LABEL_44;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v18 <= v13[3] >> 1)
    {
      if (*(v15 + 16))
      {
        goto LABEL_23;
      }
    }

    else
    {
      if (v17 <= v18)
      {
        v20 = v17 + v16;
      }

      else
      {
        v20 = v17;
      }

      v13 = sub_1D3338090(isUniquelyReferenced_nonNull_native, v20, 1, v13);
      if (*(v15 + 16))
      {
LABEL_23:
        v21 = (v13[3] >> 1) - v13[2];
        sub_1D33DDDB4();
        if (v21 < v16)
        {
          goto LABEL_46;
        }

        swift_arrayInitWithCopy();

        if (v16)
        {
          v22 = v13[2];
          v23 = __OFADD__(v22, v16);
          v24 = v22 + v16;
          if (v23)
          {
            goto LABEL_47;
          }

          v13[2] = v24;
        }

        goto LABEL_12;
      }
    }

    if (v16)
    {
      goto LABEL_45;
    }

LABEL_12:
    if (v12 == ++v14)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  __break(1u);
  swift_once();
  v25 = sub_1D33DE464();
  __swift_project_value_buffer(v25, qword_1EDEC1440);
  v26 = v6;
  v27 = sub_1D33DE444();
  v28 = sub_1D33DEAD4();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v45 = v30;
    *v29 = 136315138;
    swift_getErrorValue();
    v31 = sub_1D33DF224();
    v33 = sub_1D3328B48(v31, v32, &v45);

    *(v29 + 4) = v33;
    _os_log_impl(&dword_1D331A000, v27, v28, "Error marking reminders as complete: %s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    MEMORY[0x1D38B81C0](v30, -1, -1);
    MEMORY[0x1D38B81C0](v29, -1, -1);
  }

  else
  {
  }

LABEL_40:

  v43 = v0[1];

  return v43();
}

uint64_t objectdestroy_3Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1D33BFDE4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D334CF9C;

  return sub_1D33BF7C0(a1, v4, v5, v7, v6);
}

uint64_t sub_1D33BFEA4()
{
  v0 = sub_1D33DDC44();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D33DDDB4();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v24 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v24 - v12;
  v14 = sub_1D3337D6C();
  if (*(v14 + 2))
  {
    v24 = v1;
    v25 = v0;
    v15 = *(v5 + 16);
    v15(v11, &v14[(*(v5 + 80) + 32) & ~*(v5 + 80)], v4);

    (*(v5 + 32))(v13, v11, v4);
    sub_1D33BDDFC();

    v15(v8, v13, v4);
    v16 = [objc_opt_self() cdEntityName];
    if (!v16)
    {
      sub_1D33DE7B4();
      v16 = sub_1D33DE784();
    }

    v17 = objc_allocWithZone(MEMORY[0x1E69C6D10]);
    v18 = sub_1D33DDD64();
    v19 = [v17 initWithUUID:v18 entityName:v16];

    v20 = *(v5 + 8);
    v20(v8, v4);
    v21 = [v19 urlRepresentation];

    sub_1D33DDC24();
    sub_1D33DDC14();
    v22 = sub_1D33DDC04();
    TUOpenURL();

    (*(v24 + 8))(v3, v25);
    return (v20)(v13, v4);
  }

  else
  {
  }
}

void sub_1D33C01FC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761F80, &qword_1D33E55C0);
  v4 = *(type metadata accessor for RecentsItem(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D33E2410;
  sub_1D332CE9C(a2, v6 + v5, type metadata accessor for RecentsItem);
  sub_1D33C0344(a1, v6);

  if (qword_1EC760920 != -1)
  {
    swift_once();
  }

  v7 = sub_1D33BEEF4();
  sub_1D333BB44(1u, v7, 4u);
}

uint64_t sub_1D33C0344(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for RecentsItem(0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    v9 = *(v2 + 48);
    ObjectType = swift_getObjectType();
    (*(v9 + 8))(a1, a2, ObjectType, v9);
    swift_unknownObjectRelease();
  }

  v11 = sub_1D33DDDB4();
  result = (*(*(v11 - 8) + 48))(a1, 1, v11);
  if (result != 1)
  {
    return result;
  }

  result = sub_1D33BDE94();
  v31 = result;
  v13 = *(a2 + 16);
  if (v13)
  {
    v14 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v15 = *(v6 + 72);
    v16 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D332CE9C(v14, v8, type metadata accessor for RecentsItem);
      v17 = sub_1D3337D6C();
      sub_1D3337B14(v8, type metadata accessor for RecentsItem);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D3337BEC(0, v16[2] + 1, 1, v16);
        v16 = result;
      }

      v19 = v16[2];
      v18 = v16[3];
      v20 = v19 + 1;
      if (v19 >= v18 >> 1)
      {
        result = sub_1D3337BEC((v18 > 1), v19 + 1, 1, v16);
        v16 = result;
      }

      v16[2] = v20;
      v16[v19 + 4] = v17;
      v14 += v15;
      --v13;
    }

    while (v13);
  }

  else
  {
    v16 = MEMORY[0x1E69E7CC0];
    v20 = *(MEMORY[0x1E69E7CC0] + 16);
    v21 = MEMORY[0x1E69E7CC0];
    if (!v20)
    {
LABEL_30:

      sub_1D33B55B8(v21);
    }
  }

  v22 = 0;
  v21 = MEMORY[0x1E69E7CC0];
  while (v22 < v16[2])
  {
    v23 = v16[v22 + 4];
    v24 = *(v23 + 16);
    v25 = v21[2];
    v26 = v25 + v24;
    if (__OFADD__(v25, v24))
    {
      goto LABEL_33;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v26 <= v21[3] >> 1)
    {
      if (*(v23 + 16))
      {
        goto LABEL_26;
      }
    }

    else
    {
      if (v25 <= v26)
      {
        v27 = v25 + v24;
      }

      else
      {
        v27 = v25;
      }

      result = sub_1D3338090(result, v27, 1, v21);
      v21 = result;
      if (*(v23 + 16))
      {
LABEL_26:
        if ((v21[3] >> 1) - v21[2] < v24)
        {
          goto LABEL_35;
        }

        swift_arrayInitWithCopy();

        if (v24)
        {
          v28 = v21[2];
          v29 = __OFADD__(v28, v24);
          v30 = v28 + v24;
          if (v29)
          {
            goto LABEL_36;
          }

          v21[2] = v30;
        }

        goto LABEL_15;
      }
    }

    if (v24)
    {
      goto LABEL_34;
    }

LABEL_15:
    if (v20 == ++v22)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
  return result;
}

uint64_t RecentsReminderActionProvider.deinit()
{

  sub_1D3323A28(v0 + 40);
  return v0;
}

uint64_t RecentsReminderActionProvider.__deallocating_deinit()
{

  sub_1D3323A28(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1D33C090C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D33C097C@<X0>(uint64_t a1@<X8>)
{
  v104 = a1;
  v92 = sub_1D33DDE14();
  v90 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v88 = &v82 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = sub_1D33DDE24();
  v89 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v86 = &v82 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = sub_1D33DDDF4();
  v87 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v85 = &v82 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D33DDE74();
  v5 = *(v4 - 8);
  v6 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v93 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReminderTime(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v99 = &v82 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC760E10, &unk_1D33E1A90);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v97 = &v82 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v84 = &v82 - v14;
  v15 = MEMORY[0x1EEE9AC00](v13);
  v101 = &v82 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v107 = &v82 - v17;
  v108 = sub_1D33DDD34();
  v98 = *(v108 - 8);
  v18 = MEMORY[0x1EEE9AC00](v108);
  v91 = &v82 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v83 = &v82 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v82 - v22;
  v24 = sub_1D33DDDC4();
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v82 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1D33DDE84();
  v102 = *(v28 - 8);
  v103 = v28;
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v82 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v25 + 104))(v27, *MEMORY[0x1E6969868], v24);
  v106 = v30;
  sub_1D33DDDD4();
  (*(v25 + 8))(v27, v24);
  v105 = v23;
  sub_1D33DDD24();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D48, "Ju");
  v31 = *(v5 + 72);
  v32 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1D33E4CB0;
  v34 = *MEMORY[0x1E6969A68];
  v94 = v6;
  v35 = *(v6 + 104);
  v35(v33 + v32, v34, v4);
  v35(v33 + v32 + v31, *MEMORY[0x1E6969A78], v4);
  v36 = *MEMORY[0x1E6969A48];
  v35(v33 + v32 + 2 * v31, v36, v4);
  v37 = *MEMORY[0x1E6969A58];
  v35(v33 + v32 + 3 * v31, v37, v4);
  v35(v33 + v32 + 4 * v31, *MEMORY[0x1E6969A88], v4);
  v38 = 5 * v31;
  v39 = v98;
  v35(v33 + v32 + v38, *MEMORY[0x1E6969A98], v4);
  v40 = sub_1D33A7318(v33);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v41 = v99;
  (*(v39 + 56))(v107, 1, 1, v108);
  sub_1D332CE9C(v100, v41, type metadata accessor for ReminderTime);
  v42 = sub_1D33DDB54();
  v43 = *(v42 - 8);
  v44 = (*(v43 + 48))(v41, 3, v42);
  if (v44 > 1)
  {
    v100 = v40;
    if (v44 == 2)
    {
      v46 = *MEMORY[0x1E69698D0];
      v94 = v43;
      v47 = v87;
      v48 = *(v87 + 104);
      v99 = v42;
      v49 = v85;
      v48(v85, v46, v95);
      v50 = v89;
      v51 = v86;
      (*(v89 + 104))(v86, *MEMORY[0x1E69699C8], v96);
      v52 = v90;
      v53 = v88;
      v54 = v92;
      (*(v90 + 104))(v88, *MEMORY[0x1E6969998], v92);
      v55 = v105;
      sub_1D33DDE34();
      (*(v52 + 8))(v53, v54);
      (*(v50 + 8))(v51, v96);
      v56 = v49;
      v42 = v99;
      (*(v47 + 8))(v56, v95);
      v43 = v94;
    }

    else
    {
      v61 = v93;
      v35(v93, v36, v4);
      v62 = v84;
      v55 = v105;
      sub_1D33DDE54();
      (*(v94 + 8))(v61, v4);
      if ((*(v39 + 48))(v62, 1, v108) == 1)
      {
        sub_1D331E880(v62, &qword_1EC760E10, &unk_1D33E1A90);
        v45 = v104;
        v63 = v97;
        v59 = v107;
        goto LABEL_12;
      }

      v64 = v83;
      (*(v39 + 32))(v83, v62, v108);
      v65 = *MEMORY[0x1E69698D0];
      v94 = v43;
      v66 = v87;
      v67 = *(v87 + 104);
      v99 = v42;
      v68 = v85;
      v67(v85, v65, v95);
      v69 = v89;
      v70 = v86;
      (*(v89 + 104))(v86, *MEMORY[0x1E69699C8], v96);
      v71 = v90;
      v72 = v88;
      v73 = v92;
      (*(v90 + 104))(v88, *MEMORY[0x1E6969998], v92);
      sub_1D33DDE34();
      v74 = v72;
      v55 = v105;
      (*(v71 + 8))(v74, v73);
      (*(v69 + 8))(v70, v96);
      v75 = v68;
      v42 = v99;
      (*(v66 + 8))(v75, v95);
      v43 = v94;
      (*(v39 + 8))(v64, v108);
    }

    v59 = v107;
    sub_1D331E880(v107, &qword_1EC760E10, &unk_1D33E1A90);
    v60 = v101;
  }

  else
  {
    if (!v44)
    {

      sub_1D331E880(v107, &qword_1EC760E10, &unk_1D33E1A90);
      (*(v39 + 8))(v105, v108);
      (*(v102 + 8))(v106, v103);
      v45 = v104;
      (*(v43 + 32))(v104, v41, v42);
LABEL_15:
      v76 = 0;
      return (*(v43 + 56))(v45, v76, 1, v42);
    }

    v100 = v40;
    v57 = v93;
    v35(v93, v37, v4);
    v58 = v101;
    v55 = v105;
    sub_1D33DDE54();
    (*(v94 + 8))(v57, v4);
    v59 = v107;
    sub_1D331E880(v107, &qword_1EC760E10, &unk_1D33E1A90);
    v60 = v58;
  }

  sub_1D333842C(v60, v59, &qword_1EC760E10, &unk_1D33E1A90);
  v45 = v104;
  v63 = v97;
LABEL_12:
  sub_1D331E818(v59, v63, &qword_1EC760E10, &unk_1D33E1A90);
  if ((*(v39 + 48))(v63, 1, v108) != 1)
  {
    v77 = v91;
    v78 = v108;
    (*(v39 + 32))(v91, v63, v108);
    v79 = v106;
    sub_1D33DDE04();

    v80 = *(v39 + 8);
    v80(v77, v78);
    sub_1D331E880(v59, &qword_1EC760E10, &unk_1D33E1A90);
    v80(v55, v78);
    (*(v102 + 8))(v79, v103);
    goto LABEL_15;
  }

  sub_1D331E880(v59, &qword_1EC760E10, &unk_1D33E1A90);
  (*(v39 + 8))(v55, v108);
  (*(v102 + 8))(v106, v103);
  sub_1D331E880(v63, &qword_1EC760E10, &unk_1D33E1A90);
  v76 = 1;
  return (*(v43 + 56))(v45, v76, 1, v42);
}

uint64_t RecentsItemReminder.init(item:reminderTime:callProviderManager:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, char *a4@<X8>)
{
  v31 = a2;
  v32 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v34 = v30 - v7;
  v8 = type metadata accessor for RecentsItemReminder(0);
  v9 = *(v8 + 24);
  v10 = type metadata accessor for ReminderTime(0);
  v11 = *(v10 - 8);
  v30[0] = *(v11 + 56);
  v30[1] = v11 + 56;
  (v30[0])(&a4[v9], 1, 1, v10);
  v33 = v8;
  v12 = *(v8 + 28);
  sub_1D332CE9C(a1, &a4[v12], type metadata accessor for RecentsItem);
  v13 = type metadata accessor for RecentsItem(0);
  (*(*(v13 - 8) + 56))(&a4[v12], 0, 1, v13);
  type metadata accessor for BundleClass();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v15 = [objc_opt_self() bundleForClass_];
  sub_1D33DDB74();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C8, &unk_1D33E3B50);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D33E2410;
  v18 = *(a1 + 48);
  v17 = *(a1 + 56);
  *(v16 + 56) = MEMORY[0x1E69E6158];
  *(v16 + 64) = sub_1D3387AE4();
  if (v17)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = 0xE000000000000000;
  }

  v21 = v31;
  *(v16 + 32) = v19;
  *(v16 + 40) = v20;

  v22 = sub_1D33DE7D4();
  v24 = v23;

  *a4 = v22;
  *(a4 + 1) = v24;
  v25 = v32;
  sub_1D331E880(&a4[v9], &qword_1EC761D38, "xv");
  sub_1D332CE9C(v21, &a4[v9], type metadata accessor for ReminderTime);
  (v30[0])(&a4[v9], 0, 1, v10);
  if (v25)
  {
    v26 = v25;
  }

  else
  {
    v26 = [objc_allocWithZone(MEMORY[0x1E69D8A90]) init];
  }

  v27 = v25;
  v28 = v34;
  sub_1D33C2774(a1, v26, v34);

  sub_1D33C311C(v21, type metadata accessor for ReminderTime);
  sub_1D33C311C(a1, type metadata accessor for RecentsItem);
  return sub_1D333842C(v28, &a4[*(v33 + 20)], &unk_1EC760EA0, &qword_1D33E2210);
}

uint64_t ReminderTime.canBeScheduled.getter()
{
  v1 = sub_1D33DDB54();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D33DDD34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D33DDE84();
  v29 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ReminderTime(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v26 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D332CE9C(v0, v14, type metadata accessor for ReminderTime);
  if ((*(v2 + 48))(v14, 3, v1) == 2)
  {
    sub_1D33DDE64();
    sub_1D33DDD24();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D48, "Ju");
    v15 = sub_1D33DDE74();
    v16 = *(v15 - 8);
    v28 = v1;
    v17 = v6;
    v18 = v16;
    v19 = *(v16 + 80);
    v27 = v5;
    v20 = (v19 + 32) & ~v19;
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D33E2410;
    (*(v18 + 104))(v21 + v20, *MEMORY[0x1E6969A58], v15);
    sub_1D33A7318(v21);
    v26 = v9;
    swift_setDeallocating();
    (*(v18 + 8))(v21 + v20, v15);
    swift_deallocClassInstance();
    sub_1D33DDE04();

    v22 = sub_1D33DDB44();
    LOBYTE(v15) = v23;
    (*(v2 + 8))(v4, v28);
    (*(v17 + 8))(v8, v27);
    (*(v29 + 8))(v11, v26);
    v24 = v15 | (v22 < 21);
  }

  else
  {
    sub_1D33C311C(v14, type metadata accessor for ReminderTime);
    v24 = 1;
  }

  return v24 & 1;
}

uint64_t ReminderTime.actionTitle.getter()
{
  v1 = type metadata accessor for ReminderTime(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D332CE9C(v0, v3, type metadata accessor for ReminderTime);
  v4 = sub_1D33DDB54();
  if ((*(*(v4 - 8) + 48))(v3, 3, v4))
  {
    type metadata accessor for BundleClass();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v9 = [objc_opt_self() bundleForClass_];
    v7 = sub_1D33DDB74();
  }

  else
  {
    type metadata accessor for BundleClass();
    v5 = swift_getObjCClassFromMetadata();
    v6 = [objc_opt_self() bundleForClass_];
    v7 = sub_1D33DDB74();

    sub_1D33C311C(v3, type metadata accessor for ReminderTime);
  }

  return v7;
}

uint64_t ReminderTime.hash(into:)(uint64_t a1)
{
  v2 = sub_1D33DDB54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReminderTime(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D332CE9C(v1, v8, type metadata accessor for ReminderTime);
  v9 = (*(v3 + 48))(v8, 3, v2);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v11 = 1;
    }

    else
    {
      v11 = 2;
    }
  }

  else
  {
    if (!v9)
    {
      (*(v3 + 32))(v5, v8, v2);
      MEMORY[0x1D38B7920](3);
      sub_1D33C34FC(&qword_1EC761D50, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
      sub_1D33DE734();
      return (*(v3 + 8))(v5, v2);
    }

    v11 = 0;
  }

  return MEMORY[0x1D38B7920](v11);
}

uint64_t ReminderTime.hashValue.getter()
{
  v1 = v0;
  v2 = sub_1D33DDB54();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ReminderTime(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D33DF284();
  sub_1D332CE9C(v1, v8, type metadata accessor for ReminderTime);
  v9 = (*(v3 + 48))(v8, 3, v2);
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = 1;
    }

    else
    {
      v10 = 2;
    }

    goto LABEL_8;
  }

  if (v9)
  {
    v10 = 0;
LABEL_8:
    MEMORY[0x1D38B7920](v10);
    return sub_1D33DF2C4();
  }

  (*(v3 + 32))(v5, v8, v2);
  MEMORY[0x1D38B7920](3);
  sub_1D33C34FC(&qword_1EC761D50, MEMORY[0x1E6968278], MEMORY[0x1E6968288]);
  sub_1D33DE734();
  (*(v3 + 8))(v5, v2);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33C25A0(uint64_t a1)
{
  sub_1D33DF284();
  ReminderTime.hash(into:)(v2);
  return sub_1D33DF2C4();
}

uint64_t RecentsItemReminder.title.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1D33C2774@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v81 = a2;
  v83 = sub_1D33DDB04();
  v5 = *(v83 - 8);
  v6 = MEMORY[0x1EEE9AC00](v83);
  v79 = &v76 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v82 = &v76 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760EA0, &qword_1D33E2210);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v77 = &v76 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v76 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v76 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v76 - v18;
  v20 = sub_1D33DDC44();
  v78 = *(v20 - 8);
  v21 = *(v78 + 56);
  v84 = v20;
  v85 = a3;
  v80 = v21;
  (v21)(a3, 1, 1);
  v22 = *a1;
  v23 = *(a1 + 32);
  if (((1 << v23) & 0x187) == 0)
  {
    v24 = 0;
    v25 = 0;
    if (((1 << v23) & 0x70) == 0)
    {
LABEL_27:
      v23 = *(a1 + 32);
      v22 = *a1;
      goto LABEL_28;
    }

    v26 = v22;
    v27 = [v26 validRemoteParticipantHandles];
    if (!v27)
    {
      goto LABEL_16;
    }

    v28 = v27;
    sub_1D331F56C();
    sub_1D33C34FC(&qword_1EDEBEE80, sub_1D331F56C, MEMORY[0x1E69E81B8]);
    v29 = sub_1D33DEA54();

    v30 = (v29 & 0xC000000000000001) != 0 ? sub_1D33DEE14() : *(v29 + 16);

    if (v30 < 2)
    {
      goto LABEL_16;
    }

    v76 = v26;
    v31 = [v26 serviceProvider];
    if (v31)
    {
      v32 = v31;
      v33 = sub_1D33DE7B4();
      v35 = v34;

      v36 = sub_1D33DE7B4();
      if (v35)
      {
        v26 = v76;
        if (v33 == v36 && v35 == v37)
        {

LABEL_54:
          v70 = [v81 joinConversationRequestForRecentCall_];
          if (v70)
          {
            v71 = v70;
            [v70 setOriginatingUIType_];
            v72 = [v71 URL];
            sub_1D33DDC24();

            v80(v19, 0, 1, v84);
            sub_1D33C36E8(v19, v85, &unk_1EC760EA0, &qword_1D33E2210);
            v73 = [v71 provider];
            v74 = [v73 bundleIdentifier];

            if (v74)
            {
              sub_1D33DE7B4();
              v25 = v75;

LABEL_24:
              v47 = [v26 name];
              if (v47)
              {
                v48 = v47;
                sub_1D33DE7B4();
                v24 = v49;
              }

              else
              {

                v24 = 0;
              }

              goto LABEL_27;
            }

LABEL_21:
            v25 = 0;
            goto LABEL_24;
          }

          v80(v19, 1, 1, v84);
          v43 = v19;
LABEL_20:
          sub_1D33C36E8(v43, v85, &unk_1EC760EA0, &qword_1D33E2210);
          goto LABEL_21;
        }

        v69 = sub_1D33DF1B4();

        if (v69)
        {
          goto LABEL_54;
        }

LABEL_16:
        v38 = [v81 dialRequestForRecentCall_];
        if (v38)
        {
          v39 = v38;
          [v38 setOriginatingUIType_];
          v40 = [v39 URL];
          if (v40)
          {
            v41 = v40;
            sub_1D33DDC24();

            v42 = 0;
          }

          else
          {
            v42 = 1;
          }

          v80(v14, v42, 1, v84);
          sub_1D333842C(v14, v17, &unk_1EC760EA0, &qword_1D33E2210);
          sub_1D33C36E8(v17, v85, &unk_1EC760EA0, &qword_1D33E2210);
          v44 = [v39 provider];
          v45 = [v44 displayAppBundleIdentifier];

          sub_1D33DE7B4();
          v25 = v46;

          goto LABEL_24;
        }

        v80(v17, 1, 1, v84);
        v43 = v17;
        goto LABEL_20;
      }
    }

    else
    {
      sub_1D33DE7B4();
    }

    v26 = v76;

    goto LABEL_16;
  }

  v24 = 0;
  v25 = 0;
LABEL_28:
  v50 = v82;
  if (v23 > 8)
  {
    goto LABEL_32;
  }

  if (((1 << v23) & 0x1B0) != 0)
  {
LABEL_33:
    v52 = v83;
    goto LABEL_38;
  }

  v51 = *(a1 + 8);
  if (v23 != 3 && v23 != 6)
  {
LABEL_32:
    v51 = v22;
    if (v23 < 2)
    {
      goto LABEL_33;
    }
  }

  v53 = v51;

  v54 = Message.dialRequest(with:)(v81);
  [v54 setOriginatingUIType_];
  v55 = [v54 URL];
  if (v55)
  {
    v56 = v77;
    v57 = v55;
    sub_1D33DDC24();

    v58 = 0;
    v52 = v83;
  }

  else
  {
    v58 = 1;
    v52 = v83;
    v56 = v77;
  }

  v80(v56, v58, 1, v84);
  sub_1D33C36E8(v56, v85, &unk_1EC760EA0, &qword_1D33E2210);
  v59 = [v54 provider];
  v60 = [v59 displayAppBundleIdentifier];

  sub_1D33DE7B4();
  v25 = v61;

LABEL_38:
  if (!v24)
  {
    v62 = MEMORY[0x1E69E7CC0];
    if (!v25)
    {
      goto LABEL_49;
    }

    goto LABEL_44;
  }

  sub_1D33DDAF4();

  v62 = sub_1D3359EE0(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v64 = v62[2];
  v63 = v62[3];
  if (v64 >= v63 >> 1)
  {
    v62 = sub_1D3359EE0((v63 > 1), v64 + 1, 1, v62);
  }

  v62[2] = v64 + 1;
  (*(v5 + 32))(v62 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v64, v50, v52);
  if (v25)
  {
LABEL_44:
    v65 = v79;
    sub_1D33DDAF4();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v62 = sub_1D3359EE0(0, v62[2] + 1, 1, v62);
    }

    v67 = v62[2];
    v66 = v62[3];
    if (v67 >= v66 >> 1)
    {
      v62 = sub_1D3359EE0((v66 > 1), v67 + 1, 1, v62);
    }

    v62[2] = v67 + 1;
    (*(v5 + 32))(v62 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v67, v65, v52);
  }

LABEL_49:
  if (v62[2] && !(*(v78 + 48))(v85, 1, v84))
  {
    sub_1D33DDC34();
  }
}

uint64_t sub_1D33C311C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s16CallsAppServices12ReminderTimeO2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D33DDB54();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ReminderTime(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761D88, &qword_1D33E4DA8);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v21 - v13;
  v15 = *(v12 + 56);
  sub_1D332CE9C(a1, &v21 - v13, type metadata accessor for ReminderTime);
  sub_1D332CE9C(a2, &v14[v15], type metadata accessor for ReminderTime);
  v16 = *(v5 + 48);
  v17 = v16(v14, 3, v4);
  if (v17 > 1)
  {
    if (v17 == 2)
    {
      if (v16(&v14[v15], 3, v4) == 2)
      {
        goto LABEL_9;
      }
    }

    else if (v16(&v14[v15], 3, v4) == 3)
    {
      goto LABEL_9;
    }

LABEL_11:
    sub_1D331E880(v14, &qword_1EC761D88, &qword_1D33E4DA8);
    v18 = 0;
    return v18 & 1;
  }

  if (!v17)
  {
    sub_1D332CE9C(v14, v10, type metadata accessor for ReminderTime);
    if (!v16(&v14[v15], 3, v4))
    {
      (*(v5 + 32))(v7, &v14[v15], v4);
      v18 = MEMORY[0x1D38B61B0](v10, v7);
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_1D33C311C(v14, type metadata accessor for ReminderTime);
      return v18 & 1;
    }

    (*(v5 + 8))(v10, v4);
    goto LABEL_11;
  }

  if (v16(&v14[v15], 3, v4) != 1)
  {
    goto LABEL_11;
  }

LABEL_9:
  sub_1D33C311C(v14, type metadata accessor for ReminderTime);
  v18 = 1;
  return v18 & 1;
}

uint64_t sub_1D33C34FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D33C3594(uint64_t a1)
{
  sub_1D33C3694(319, &qword_1EC761D70, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    sub_1D33C3694(319, &qword_1EC761D78, type metadata accessor for ReminderTime);
    if (v2 <= 0x3F)
    {
      sub_1D33C3694(319, &qword_1EC761D80, type metadata accessor for RecentsItem);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D33C3694(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D33DECF4();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D33C36E8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D33C3750()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D33C37D4()
{
  sub_1D33DF284();
  MEMORY[0x1D38B7920](0);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33C3840(uint64_t a1)
{
  sub_1D33DF284();
  MEMORY[0x1D38B7920](0);
  return sub_1D33DF2C4();
}

uint64_t sub_1D33C3880()
{
  v1 = v0;
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  v2 = *(v0 + 56);
  v3 = swift_allocObject();
  *(v3 + 16) = v9;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D33C7970;
  *(v4 + 24) = v3;
  v8[4] = sub_1D33C7D98;
  v8[5] = v4;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 1107296256;
  v8[2] = sub_1D33C39EC;
  v8[3] = &block_descriptor_26_1;
  v5 = _Block_copy(v8);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9[0];

    return v7;
  }

  return result;
}

uint64_t sub_1D33C3A14()
{
  v1 = v0;
  v9 = MEMORY[0x1E69E7CC0];
  v2 = *(v0 + 56);
  v3 = swift_allocObject();
  *(v3 + 16) = &v9;
  *(v3 + 24) = v1;
  v4 = swift_allocObject();
  *(v4 + 16) = sub_1D33C792C;
  *(v4 + 24) = v3;
  aBlock[4] = sub_1D3356568;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D33C39EC;
  aBlock[3] = &block_descriptor_4;
  v5 = _Block_copy(aBlock);

  dispatch_sync(v2, v5);
  _Block_release(v5);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    v7 = v9;

    return v7;
  }

  return result;
}

void *sub_1D33C3B80(int a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v18 = a3;
  v19 = a4;
  v17 = a2;
  v16 = a1;
  v15 = sub_1D33DEB84();
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D33DEB24();
  MEMORY[0x1EEE9AC00](v9);
  v10 = sub_1D33DE6A4();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v4[4] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  sub_1D331DA18(0, &qword_1EDEBEEC8, 0x1E69E9610);
  sub_1D33DE684();
  v20 = MEMORY[0x1E69E7CC0];
  sub_1D33C7C50();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC760F10, &qword_1D33E2E40);
  sub_1D33C7CA8();
  sub_1D33DED64();
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8090], v15);
  v4[7] = sub_1D33DEBD4();
  v4[8] = 0;
  v4[9] = 0xE000000000000000;
  v4[10] = MEMORY[0x1E69E7CC0];
  v11 = [objc_allocWithZone(MEMORY[0x1E695CE28]) init];
  if ([v5[4] junkFilteringEnabled])
  {
    [v11 setIncludeAcceptedIntroductions_];
  }

  *(v5 + 24) = v16;
  v12 = v17;
  if (!v17)
  {
    v12 = [objc_allocWithZone(MEMORY[0x1E695CE18]) initWithConfiguration_];
  }

  v5[2] = v12;
  v13 = v19;
  v5[5] = v18;
  v5[6] = v13;
  return v5;
}

uint64_t sub_1D33C3ED4()
{
  v0 = sub_1D33C3A14();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  v2 = sub_1D33DEE14();
  if (!v2)
  {
    goto LABEL_11;
  }

LABEL_3:
  v8 = MEMORY[0x1E69E7CC0];
  result = sub_1D33DEFA4();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = 0;
    do
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D38B75D0](v4, v1);
      }

      else
      {
        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      ++v4;
      v7 = [v5 contact];

      sub_1D33DEF84();
      sub_1D33DEFB4();
      sub_1D33DEFC4();
      sub_1D33DEF94();
    }

    while (v2 != v4);

    return v8;
  }

  return result;
}

uint64_t sub_1D33C4010(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 344) = a2;
  *(v4 + 352) = v3;
  *(v4 + 416) = a3;
  *(v4 + 336) = a1;
  v5 = sub_1D33DDD34();
  *(v4 + 360) = v5;
  *(v4 + 368) = *(v5 - 8);
  *(v4 + 376) = swift_task_alloc();
  *(v4 + 384) = swift_task_alloc();
  *(v4 + 392) = swift_task_alloc();
  *(v4 + 400) = swift_task_alloc();
  sub_1D33DE974();
  *(v4 + 408) = sub_1D33DE964();
  v7 = sub_1D33DE914();

  return MEMORY[0x1EEE6DFA0](sub_1D33C4164, v7, v6);
}

uint64_t sub_1D33C4164()
{
  v116 = v0;
  v115[1] = *MEMORY[0x1E69E9840];
  v1 = v0[43];

  v2 = MEMORY[0x1E69E7CC0];
  if (!v1)
  {
    goto LABEL_50;
  }

  v3 = v0[43];
  if ((v0[52] & 1) == 0)
  {
    v38 = v0[42];
    if (sub_1D33C3880() == v38 && v3 == v39)
    {
    }

    else
    {
      v41 = sub_1D33DF1B4();

      if ((v41 & 1) == 0)
      {
        goto LABEL_3;
      }
    }

    v2 = sub_1D33C3A14();
    goto LABEL_50;
  }

LABEL_3:
  v4 = v0[44];
  v5 = v0[42];
  v6 = *(v4 + 56);
  v7 = swift_allocObject();
  v7[2] = v4;
  v7[3] = v5;
  v7[4] = v3;
  v8 = swift_allocObject();
  *(v8 + 16) = sub_1D33C7974;
  *(v8 + 24) = v7;
  v0[6] = sub_1D33C7D98;
  v0[7] = v8;
  v0[2] = MEMORY[0x1E69E9820];
  v0[3] = 1107296256;
  v0[4] = sub_1D33C39EC;
  v0[5] = &block_descriptor_36_0;
  v9 = _Block_copy(v0 + 2);

  dispatch_sync(v6, v9);
  _Block_release(v9);
  LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

  if (v4)
  {
    __break(1u);
LABEL_54:
    swift_once();
    goto LABEL_9;
  }

  v10 = v0[43];
  if ((v10 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(v10) & 0xF;
  }

  else
  {
    v11 = v0[42] & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    v42 = v0[44];
    v30 = swift_allocObject();
    v30[2] = v42;
    v30[3] = v2;
    v43 = swift_allocObject();
    *(v43 + 16) = sub_1D33C7D90;
    *(v43 + 24) = v30;
    v0[30] = sub_1D33C7D98;
    v0[31] = v43;
    v0[26] = MEMORY[0x1E69E9820];
    v0[27] = 1107296256;
    v0[28] = sub_1D33C39EC;
    v0[29] = &block_descriptor_81;
    v44 = _Block_copy(v0 + 26);

    dispatch_sync(v6, v44);
    _Block_release(v44);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if ((v44 & 1) == 0)
    {
      goto LABEL_50;
    }

    __break(1u);
LABEL_26:
    v45 = v30;
    v37 = sub_1D33DDBE4();

LABEL_27:
    swift_willThrow();

    v46 = v37;
    v47 = sub_1D33DE444();
    v48 = sub_1D33DEAD4();

    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v49 = 138412290;
      v51 = v37;
      v52 = _swift_stdlib_bridgeErrorToNSError();
      *(v49 + 4) = v52;
      *v50 = v52;
      _os_log_impl(&dword_1D331A000, v47, v48, "Error searching contacts %@", v49, 0xCu);
      sub_1D331E880(v50, &qword_1EC761D90, &unk_1D33E4E90);
      MEMORY[0x1D38B81C0](v50, -1, -1);
      MEMORY[0x1D38B81C0](v49, -1, -1);
    }

    v53 = v0[50];
    v54 = v0[45];
    v55 = v0[46];

    swift_willThrow();
    (*(v55 + 8))(v53, v54);

    v56 = v0[1];

    return v56();
  }

  aBlock = v0 + 8;
  if (qword_1EC760998 != -1)
  {
    goto LABEL_54;
  }

LABEL_9:
  v12 = sub_1D33DE464();
  __swift_project_value_buffer(v12, qword_1EC762148);

  v13 = sub_1D33DE444();
  v14 = sub_1D33DEAF4();

  v111 = v6;
  if (os_log_type_enabled(v13, v14))
  {
    v15 = v0[42];
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v115[0] = v17;
    *v16 = 136446210;
    *(v16 + 4) = sub_1D3328B48(v15, v3, v115);
    _os_log_impl(&dword_1D331A000, v13, v14, "Searching for %{public}s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v17);
    MEMORY[0x1D38B81C0](v17, -1, -1);
    MEMORY[0x1D38B81C0](v16, -1, -1);
  }

  v18 = v0[44];
  v19 = v0[42];
  sub_1D33C5100();
  v20 = objc_allocWithZone(MEMORY[0x1E695CD78]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761150, &qword_1D33E2530);
  v21 = sub_1D33DE8A4();

  v22 = [v20 initWithKeysToFetch_];

  v23 = sub_1D33C52D8();
  [v22 setPredicate_];

  [v22 setSortOrder_];
  sub_1D33DDD24();
  v24 = swift_allocObject();
  *(v24 + 16) = v2;
  v110 = (v24 + 16);
  v25 = swift_allocObject();
  *(v25 + 16) = 0;
  v26 = *(v18 + 16);
  v27 = swift_allocObject();
  v27[2] = v18;
  v27[3] = v19;
  v27[4] = v3;
  v27[5] = v25;
  v27[6] = v24;
  v0[12] = sub_1D33C79B8;
  v0[13] = v27;
  v0[8] = MEMORY[0x1E69E9820];
  v0[9] = 1107296256;
  v0[10] = sub_1D33C5B80;
  v0[11] = &block_descriptor_48;
  v28 = _Block_copy(aBlock);

  v0[41] = 0;
  v112 = v22;
  v29 = [v26 enumerateContactsAndMatchInfoWithFetchRequest:v22 error:v0 + 41 usingBlock:v28];
  _Block_release(v28);
  v30 = v0[41];
  if (!v29)
  {
    goto LABEL_26;
  }

  swift_beginAccess();
  if (*(v25 + 16) == 1)
  {

    v31 = v30;
    v32 = sub_1D33DE444();
    v33 = sub_1D33DEAF4();

    if (os_log_type_enabled(v32, v33))
    {
      v34 = v0[42];
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v115[0] = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_1D3328B48(v34, v3, v115);
      _os_log_impl(&dword_1D331A000, v32, v33, "Search was cancelled for %{public}s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v36);
      MEMORY[0x1D38B81C0](v36, -1, -1);
      MEMORY[0x1D38B81C0](v35, -1, -1);
    }

    sub_1D33C79CC();
    v37 = swift_allocError();
    goto LABEL_27;
  }

  v58 = v0 + 14;

  v59 = v30;
  v60 = sub_1D33DE444();
  v61 = sub_1D33DEAF4();
  if (!os_log_type_enabled(v60, v61))
  {

    v63 = v111;
    goto LABEL_37;
  }

  v62 = swift_slowAlloc();
  *v62 = 134349056;
  swift_beginAccess();
  v63 = v111;
  if (*v110 >> 62)
  {
    goto LABEL_56;
  }

  for (i = *((*v110 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_1D33DEE14())
  {
    *(v62 + 4) = i;

    _os_log_impl(&dword_1D331A000, v60, v61, "Found %{public}ld contacts", v62, 0xCu);
    MEMORY[0x1D38B81C0](v62, -1, -1);
LABEL_37:

    v62 = v0[44];
    swift_beginAccess();
    v65 = *(v24 + 16);
    v60 = swift_allocObject();
    v60[2].isa = v62;
    v60[3].isa = v65;
    v66 = swift_allocObject();
    v61 = v66;
    *(v66 + 16) = sub_1D33C79C8;
    *(v66 + 24) = v60;
    v0[18] = sub_1D33C7D98;
    v0[19] = v66;
    v0[14] = MEMORY[0x1E69E9820];
    v0[15] = 1107296256;
    v0[16] = sub_1D33C39EC;
    v0[17] = &block_descriptor_59;
    v58 = _Block_copy(v58);

    dispatch_sync(v63, v58);
    _Block_release(v58);
    LOBYTE(v65) = swift_isEscapingClosureAtFileLocation();

    if ((v65 & 1) == 0)
    {
      break;
    }

    __break(1u);
LABEL_56:
    ;
  }

  v68 = v0[49];
  v67 = v0[50];
  v69 = v0[45];
  v70 = v0[46];
  sub_1D33C5C14();
  v71 = *(v70 + 16);
  v71(v68, v67, v69);
  v72 = sub_1D33DE444();
  v73 = sub_1D33DEAF4();
  v74 = os_log_type_enabled(v72, v73);
  v75 = v0[49];
  if (v74)
  {
    v76 = v0[48];
    v77 = v0[45];
    v78 = v0[46];
    aBlocka = v71;
    v79 = swift_slowAlloc();
    *v79 = 134349056;
    sub_1D33DDD04();
    sub_1D33DDC74();
    v81 = v80;
    v82 = *(v78 + 8);
    v82(v76, v77);
    sub_1D33DDC74();
    v84 = v83;
    v82(v75, v77);
    v63 = v111;
    *(v79 + 4) = v81 - v84;
    _os_log_impl(&dword_1D331A000, v72, v73, "Contact search time: %{public}f", v79, 0xCu);
    v85 = v79;
    v71 = aBlocka;
    MEMORY[0x1D38B81C0](v85, -1, -1);
  }

  else
  {
    v87 = v0[45];
    v86 = v0[46];

    v82 = *(v86 + 8);
    v82(v75, v87);
  }

  if ([*(v0[44] + 32) smartDialerRankingEnabled])
  {
    v88 = v0[44];
    sub_1D33C3A14();

    if (*(v88 + 24))
    {
      v89 = *(v0[44] + 40);
      sub_1D33C3A14();
      v90 = v89();
    }

    else
    {
      v90 = sub_1D33C3A14();
    }

    v91 = v0[44];
    v92 = swift_allocObject();
    *(v92 + 16) = v91;
    *(v92 + 24) = v90;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_1D33C7D90;
    *(v93 + 24) = v92;
    v0[24] = sub_1D33C7D98;
    v0[25] = v93;
    v0[20] = MEMORY[0x1E69E9820];
    v0[21] = 1107296256;
    v0[22] = sub_1D33C39EC;
    v0[23] = &block_descriptor_70;
    v94 = _Block_copy(v0 + 20);

    dispatch_sync(v63, v94);
    _Block_release(v94);
    LOBYTE(v91) = swift_isEscapingClosureAtFileLocation();

    if (v91)
    {
      __break(1u);
    }

    v71(v0[47], v0[50], v0[45]);
    v95 = sub_1D33DE444();
    v96 = sub_1D33DEAF4();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = v0[47];
      v98 = v0[48];
      v99 = v0[45];
      v100 = swift_slowAlloc();
      *v100 = 134349056;
      sub_1D33DDD04();
      sub_1D33DDC74();
      v102 = v101;
      v82(v98, v99);
      sub_1D33DDC74();
      v104 = v103;
      v82(v97, v99);
      *(v100 + 4) = v102 - v104;
      _os_log_impl(&dword_1D331A000, v95, v96, "Contact ranking time: %{public}f", v100, 0xCu);
      MEMORY[0x1D38B81C0](v100, -1, -1);
    }

    else
    {
      v105 = v0[47];
      v106 = v0[45];

      v82(v105, v106);
    }
  }

  v107 = v0[50];
  v108 = v0[45];
  v2 = sub_1D33C3A14();

  v82(v107, v108);
LABEL_50:

  v109 = v0[1];

  return v109(v2);
}

uint64_t sub_1D33C5100()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D33E4E60;
  v3 = *MEMORY[0x1E695C258];
  v4 = *MEMORY[0x1E695C330];
  *(v2 + 32) = *MEMORY[0x1E695C258];
  *(v2 + 40) = v4;
  v5 = *MEMORY[0x1E695C208];
  v6 = *MEMORY[0x1E695C310];
  v7 = MEMORY[0x1E695C328];
  *(v2 + 48) = *MEMORY[0x1E695C208];
  *(v2 + 56) = v6;
  v8 = *v7;
  *(v2 + 64) = *v7;
  v19 = v2;
  v9 = objc_opt_self();
  v10 = v3;
  v11 = v4;
  v12 = v5;
  v13 = v6;
  v14 = v8;
  v15 = [v9 descriptorForRequiredKeysForStyle_];
  MEMORY[0x1D38B6F20]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D33DE8D4();
  }

  sub_1D33DE8F4();
  v16 = [objc_opt_self() descriptorForRequiredKeys];
  MEMORY[0x1D38B6F20]();
  if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_1D33DE8D4();
  }

  sub_1D33DE8F4();
  if (!*(v1 + 24))
  {
    v17 = sub_1D33C7B58();
    sub_1D33CCABC(v17);
  }

  return v19;
}

id sub_1D33C52D8()
{
  v1 = v0;
  v2 = objc_opt_self();
  v3 = [v2 predicateWithValue_];
  if ([*(v0 + 32) phoneLargeFormatUIEnabled])
  {
    sub_1D33C3880();
    sub_1D33DE854();
    if (v4)
    {
      do
      {
        if (sub_1D33DE744())
        {
        }

        else
        {
          v6 = sub_1D33DE754();

          if ((v6 & 1) == 0)
          {
            v7 = 0;
            goto LABEL_11;
          }
        }

        sub_1D33DE854();
      }

      while (v5);
    }

    v7 = 1;
LABEL_11:
  }

  else
  {
    v7 = 1;
  }

  if (*(v1 + 24) > 1u)
  {
    if (*(v1 + 24) != 2)
    {
      goto LABEL_18;
    }

    if (v7)
    {
      goto LABEL_19;
    }

LABEL_17:
    v8 = objc_opt_self();
    sub_1D33C3880();
    v9 = sub_1D33DE784();

    v10 = [v8 predicateForContactsMatchingFullTextSearch:v9 containerIdentifiers:0 groupIdentifiers:0];

    goto LABEL_21;
  }

  if (!*(v1 + 24))
  {
    goto LABEL_17;
  }

LABEL_18:
  if ((v7 & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_19:
  v11 = objc_opt_self();
  sub_1D33C3880();
  v12 = sub_1D33DE784();

  v10 = [v11 predicateForContactsMatchingSmartDialerString_];

  if (!v10)
  {
    v10 = [v2 predicateWithValue_];
  }

LABEL_21:

  return v10;
}

uint64_t sub_1D33C54E4(void *a1, void *a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (sub_1D33C3880() == a5 && v15 == a6)
  {
  }

  else
  {
    v16 = sub_1D33DF1B4();

    if ((v16 & 1) == 0)
    {
LABEL_6:
      *a3 = 1;
      result = swift_beginAccess();
      *(a7 + 16) = 1;
      return result;
    }
  }

  if (sub_1D33DE9F4())
  {
    goto LABEL_6;
  }

  if (!*(a4 + 24) || ((v18 = [a1 phoneNumbers], __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC7620A0, "8x"), v19 = sub_1D33DE8B4(), v18, v19 >> 62) ? (v20 = sub_1D33DEE14()) : (v20 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10)), result = , v20))
  {
    result = sub_1D33C56D8(a2);
    if (result)
    {
      [objc_allocWithZone(MEMORY[0x1E69BDCF8]) initWithContact:a1 matchInfo:a2 preferredPhoneNumber:0];
      v21 = swift_beginAccess();
      MEMORY[0x1D38B6F20](v21);
      if (*((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(a8 + 16) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D33DE8D4();
      }

      sub_1D33DE8F4();
      return swift_endAccess();
    }
  }

  return result;
}

uint64_t sub_1D33C56D8(void *a1)
{
  v2 = [a1 matchedProperties];
  if (v2)
  {
    v3 = v2;
    v4 = sub_1D33DE6F4();
  }

  else
  {
    v4 = 0;
  }

  if (*(v1 + 24) <= 1u)
  {

    LOBYTE(v4) = 1;
    return v4 & 1;
  }

  if (*(v1 + 24) == 2)
  {
    if (!v4)
    {
      return v4 & 1;
    }

    v5 = 1 << *(v4 + 32);
    v6 = -1;
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    v7 = v6 & *(v4 + 64);
    v8 = (v5 + 63) >> 6;

    v10 = 0;
    v11 = MEMORY[0x1E69E7CC0];
    while (v7)
    {
LABEL_16:
      v13 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      sub_1D334CD04(*(v4 + 48) + 40 * (v13 | (v10 << 6)), &v48);
      v43 = v48;
      v44 = v49;
      v45 = v50;
      result = swift_dynamicCast();
      if (result)
      {
        v14 = v47;
        if (v47)
        {
          v42 = v46;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D3359DD4(0, *(v11 + 16) + 1, 1, v11);
            v11 = result;
          }

          v16 = *(v11 + 16);
          v15 = *(v11 + 24);
          v17 = v16 + 1;
          if (v16 >= v15 >> 1)
          {
            v41 = v16 + 1;
            v19 = v11;
            v20 = v16;
            result = sub_1D3359DD4((v15 > 1), v16 + 1, 1, v19);
            v16 = v20;
            v17 = v41;
            v11 = result;
          }

          *(v11 + 16) = v17;
          v18 = v11 + 16 * v16;
          *(v18 + 32) = v42;
          *(v18 + 40) = v14;
        }
      }
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {

        *&v48 = sub_1D33DE7B4();
        *(&v48 + 1) = v36;
        MEMORY[0x1EEE9AC00](v48);
        v40 = &v48;
        LOBYTE(v4) = sub_1D33580EC(sub_1D33C7AE4, v39, v11);

        return v4 & 1;
      }

      v7 = *(v4 + 64 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    if (!v4)
    {
      return v4 & 1;
    }

    v21 = 1 << *(v4 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v4 + 64);
    v24 = (v21 + 63) >> 6;

    v25 = 0;
    v26 = MEMORY[0x1E69E7CC0];
    while (v23)
    {
LABEL_32:
      v28 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
      sub_1D334CD04(*(v4 + 48) + 40 * (v28 | (v25 << 6)), &v48);
      v43 = v48;
      v44 = v49;
      v45 = v50;
      result = swift_dynamicCast();
      if (result)
      {
        v29 = v47;
        if (v47)
        {
          v42 = v46;
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D3359DD4(0, *(v26 + 16) + 1, 1, v26);
            v26 = result;
          }

          v31 = *(v26 + 16);
          v30 = *(v26 + 24);
          v32 = v31 + 1;
          if (v31 >= v30 >> 1)
          {
            v41 = v31 + 1;
            v34 = v26;
            v35 = v31;
            result = sub_1D3359DD4((v30 > 1), v31 + 1, 1, v34);
            v31 = v35;
            v32 = v41;
            v26 = result;
          }

          *(v26 + 16) = v32;
          v33 = v26 + 16 * v31;
          *(v33 + 32) = v42;
          *(v33 + 40) = v29;
        }
      }
    }

    while (1)
    {
      v27 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v27 >= v24)
      {

        *&v48 = sub_1D33DE7B4();
        *(&v48 + 1) = v37;
        MEMORY[0x1EEE9AC00](v48);
        v40 = &v48;
        v38 = sub_1D33580EC(sub_1D33C7DB8, v39, v26);

        LOBYTE(v4) = v38 ^ 1;
        return v4 & 1;
      }

      v23 = *(v4 + 64 + 8 * v27);
      ++v25;
      if (v23)
      {
        v25 = v27;
        goto LABEL_32;
      }
    }
  }

  __break(1u);
  return result;
}

void sub_1D33C5B80(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v9 = a2;
  v8 = a3;
  v7(v9, v8, a4);
}

uint64_t sub_1D33C5C14()
{
  v0 = sub_1D33C3A14();
  v1 = v0;
  if (v0 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D33DEE14())
  {
    v2 = 0;
    v3 = v1 & 0xC000000000000001;
    v25 = v1 & 0xFFFFFFFFFFFFFF8;
    v24 = *MEMORY[0x1E695C330];
    v20 = v1 & 0xC000000000000001;
    v21 = v1;
    while (1)
    {
      if (v3)
      {
        v6 = MEMORY[0x1D38B75D0](v2, v1);
      }

      else
      {
        if (v2 >= *(v25 + 16))
        {
          goto LABEL_17;
        }

        v6 = *(v1 + 8 * v2 + 32);
      }

      v7 = v6;
      v8 = v2 + 1;
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v9 = [v6 matchInfo];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 matchedProperties];

        if (v11)
        {
          sub_1D33DE6F4();

          v12 = objc_opt_self();
          v13 = sub_1D33DE6E4();

          v14 = [v12 matchedProperties:v13 contains:v24];

          if (v14)
          {
            v15 = [v7 contact];
            v29[0] = 0;
            v29[1] = 0xE000000000000000;
            queue = *(v22 + 56);
            v16 = swift_allocObject();
            *(v16 + 16) = v29;
            *(v16 + 24) = v22;
            v17 = swift_allocObject();
            *(v17 + 16) = sub_1D33C7D94;
            *(v17 + 24) = v16;
            aBlock[4] = sub_1D33C7D98;
            v28 = v17;
            aBlock[0] = MEMORY[0x1E69E9820];
            aBlock[1] = 1107296256;
            aBlock[2] = sub_1D33C39EC;
            aBlock[3] = &block_descriptor_92_0;
            v18 = _Block_copy(aBlock);
            v1 = v28;

            dispatch_sync(queue, v18);
            _Block_release(v18);
            LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

            if (v18)
            {
              goto LABEL_18;
            }

            v4 = sub_1D33DE784();

            v5 = [v12 matchedPhoneNumberFor:v15 searchText:v4 allowMatchingLastFour:*(v22 + 24) != 0];

            [v7 setPreferredPhoneNumber_];
            v3 = v20;
            v1 = v21;
          }
        }
      }

      ++v2;
      if (v8 == i)
      {
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }
}

void sub_1D33C5FC0()
{
  if (qword_1EC760998 != -1)
  {
    swift_once();
  }

  v0 = sub_1D33DE464();
  __swift_project_value_buffer(v0, qword_1EC762148);

  oslog = sub_1D33DE444();
  v1 = sub_1D33DEAF4();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    v4 = sub_1D33C3880();
    v6 = sub_1D3328B48(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1D331A000, oslog, v1, "Search cancelled for %{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1D38B81C0](v3, -1, -1);
    MEMORY[0x1D38B81C0](v2, -1, -1);
  }
}

uint64_t sub_1D33C6124()
{

  return swift_deallocClassInstance();
}

uint64_t ContactSearchManager.results.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

uint64_t ContactSearchManager.searchText.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t ContactSearchManager.searchText.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

void *sub_1D33C6344(int a1)
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7CC0];
  v1[2] = MEMORY[0x1E69E7CC0];
  v1[3] = v4;
  v1[4] = 0;
  v1[5] = 0;
  v1[6] = v4;
  v1[9] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
  type metadata accessor for ContactSearchDataSource();
  v5 = swift_allocObject();
  sub_1D33C3B80(a1, 0, j__swift_bridgeObjectRetain, 0);
  v2[7] = v5;
  *(v2 + 64) = a1;
  return v2;
}

uint64_t ContactSearchManager.search(with:searchTokens:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[27] = a3;
  v4[28] = v3;
  v4[25] = a1;
  v4[26] = a2;
  sub_1D33DDB64();
  v4[29] = swift_task_alloc();
  sub_1D33DE974();
  v4[30] = sub_1D33DE964();
  v6 = sub_1D33DE914();
  v4[31] = v6;
  v4[32] = v5;

  return MEMORY[0x1EEE6DFA0](sub_1D33C64B0, v6, v5);
}

uint64_t sub_1D33C64B0()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 208);
  swift_beginAccess();
  v3 = *(v1 + 40);
  if (v2)
  {
    if (!v3)
    {
      goto LABEL_12;
    }

    v4 = *(v1 + 32) == *(v0 + 200) && v3 == *(v0 + 208);
    if (!v4 && (sub_1D33DF1B4() & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else if (v3)
  {
    goto LABEL_12;
  }

  v5 = *(v0 + 216);

  LOBYTE(v5) = sub_1D3374154(v6, v5);

  if (v5)
  {

LABEL_67:

    v50 = *(v0 + 8);

    return v50();
  }

LABEL_12:
  *(*(v0 + 224) + 48) = *(v0 + 216);

  if (!v2)
  {
    goto LABEL_28;
  }

  v7 = *(v0 + 208);
  if (sub_1D33DE834() <= 0)
  {
    v8 = *(v0 + 216);
    if (v8 >> 62)
    {
      goto LABEL_77;
    }

    if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
LABEL_28:

      v17 = *(v0 + 224);
      v19 = *(v0 + 200);
      v18 = *(v0 + 208);
      swift_beginAccess();
      v20 = MEMORY[0x1E69E7CC0];
      *(v17 + 16) = MEMORY[0x1E69E7CC0];

      *(v17 + 24) = v20;

      *(v1 + 32) = v19;
      *(v1 + 40) = v18;

      goto LABEL_67;
    }
  }

  while (1)
  {
    v9 = *(v0 + 224);
    if (*(v9 + 64))
    {
      if ([*(v9 + 72) phoneLargeFormatUIEnabled])
      {
        v10 = *(v0 + 208);
        if ((v10 & 0x2000000000000000) != 0)
        {
          v11 = HIBYTE(v10) & 0xF;
        }

        else
        {
          v11 = *(v0 + 200) & 0xFFFFFFFFFFFFLL;
        }

        v60 = *(v0 + 200);
        v62 = v7;
        v63 = 0;
        v65 = v11;

        sub_1D33DE854();
        if (v12)
        {
          do
          {
            if (sub_1D33DE744())
            {
            }

            else
            {
              v14 = sub_1D33DE754();

              if ((v14 & 1) == 0)
              {
                v16 = *(v0 + 200);
                v15 = *(v0 + 208);

                *(v1 + 32) = v16;
                *(v1 + 40) = v15;
                goto LABEL_30;
              }
            }

            sub_1D33DE854();
          }

          while (v13);
        }
      }

      v21 = sub_1D33DE784();
      v22 = [v21 unformattedNumberInLatin];

      if (v22)
      {
        v23 = sub_1D33DE7B4();
        v25 = v24;
      }

      else
      {
        v23 = 0;
        v25 = 0;
      }

      *(v1 + 32) = v23;
      *(v1 + 40) = v25;
    }

    else
    {
      *(v1 + 32) = *(v0 + 200);
LABEL_30:
    }

    v26 = *(v0 + 216);

    if (v26 >> 62)
    {
      v27 = sub_1D33DEE14();
    }

    else
    {
      v27 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v0 + 264) = v27;
    if (v27 < 1)
    {
      goto LABEL_71;
    }

    if ((v26 & 0xC000000000000001) != 0)
    {
      break;
    }

    if (*((v26 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v28 = *(*(v0 + 216) + 32);
      goto LABEL_42;
    }

    __break(1u);
LABEL_77:
    if (sub_1D33DEE14() < 1)
    {
      goto LABEL_28;
    }
  }

  v28 = MEMORY[0x1D38B75D0](0, *(v0 + 216));
LABEL_42:
  v29 = v28;
  v30 = [v28 representedObject];

  if (v30)
  {
    sub_1D33DED44();
    swift_unknownObjectRelease();
  }

  else
  {
    v61 = 0u;
    v64 = 0u;
  }

  *(v0 + 16) = v61;
  *(v0 + 32) = v64;
  if (!*(v0 + 40))
  {

    sub_1D331E880(v0 + 16, &qword_1EC7616D0, &unk_1D33E2890);
LABEL_56:
    v42 = *(v0 + 224);
    swift_beginAccess();
    v43 = MEMORY[0x1E69E7CC0];
    *(v42 + 16) = MEMORY[0x1E69E7CC0];

    *(v42 + 24) = v43;

    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v44 = sub_1D33DE464();
    __swift_project_value_buffer(v44, qword_1EC762160);
    v38 = sub_1D33DE444();
    v45 = sub_1D33DEAF4();
    if (os_log_type_enabled(v38, v45))
    {
      v46 = swift_slowAlloc();
      *v46 = 0;
      _os_log_impl(&dword_1D331A000, v38, v45, "ContactsSearchController: Could not extract suggestion object from search token", v46, 2u);
      MEMORY[0x1D38B81C0](v46, -1, -1);
    }

    goto LABEL_66;
  }

  sub_1D331DA18(0, &unk_1EC7616A0, 0x1E6964EA8);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_56;
  }

  v31 = *(v0 + 192);
  v32 = [v31 currentToken];
  if (!v32 || (v33 = v32, v34 = [v32 tokenKind], v33, v34 != 16))
  {
    v47 = *(v0 + 224);

    swift_beginAccess();
    v48 = MEMORY[0x1E69E7CC0];
    *(v47 + 16) = MEMORY[0x1E69E7CC0];

    *(v47 + 24) = v48;

    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v49 = sub_1D33DE464();
    __swift_project_value_buffer(v49, qword_1EC762160);
    v38 = sub_1D33DE444();
    v39 = sub_1D33DEAF4();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_65;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "ContactsSearchController: Aborting contacts search because search token doesn't contain person suggestion";
    goto LABEL_64;
  }

  if (sub_1D33DE834() >= 1)
  {
    v35 = *(v0 + 224);

    swift_beginAccess();
    v36 = MEMORY[0x1E69E7CC0];
    *(v35 + 16) = MEMORY[0x1E69E7CC0];

    *(v35 + 24) = v36;

    if (qword_1EC7609A0 != -1)
    {
      swift_once();
    }

    v37 = sub_1D33DE464();
    __swift_project_value_buffer(v37, qword_1EC762160);
    v38 = sub_1D33DE444();
    v39 = sub_1D33DEAF4();
    if (!os_log_type_enabled(v38, v39))
    {
      goto LABEL_65;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    v41 = "ContactsSearchController: Aborting contacts search because both searchtoken and text are present";
LABEL_64:
    _os_log_impl(&dword_1D331A000, v38, v39, v41, v40, 2u);
    MEMORY[0x1D38B81C0](v40, -1, -1);
LABEL_65:

LABEL_66:
    goto LABEL_67;
  }

  sub_1D331DA18(0, &unk_1EC761D98, 0x1E696AAB0);
  sub_1D33DEAC4();
  v52 = sub_1D33DEBE4();
  v53 = [v52 string];

  v54 = sub_1D33DE7B4();
  v56 = v55;

  *(v1 + 32) = v54;
  *(v1 + 40) = v56;

LABEL_71:
  v57 = *(v1 + 32);
  v58 = *(v1 + 40);
  *(v0 + 272) = v58;

  v59 = swift_task_alloc();
  *(v0 + 280) = v59;
  *v59 = v0;
  v59[1] = sub_1D33C6CFC;

  return sub_1D33C4010(v57, v58, 0);
}

uint64_t sub_1D33C6CFC(uint64_t a1)
{
  v3 = *v2;
  v3[36] = a1;
  v3[37] = v1;

  if (v1)
  {
    v4 = v3[31];
    v5 = v3[32];
    v6 = sub_1D33C71DC;
  }

  else
  {

    v4 = v3[31];
    v5 = v3[32];
    v6 = sub_1D33C6E18;
  }

  return MEMORY[0x1EEE6DFA0](v6, v4, v5);
}

char *sub_1D33C6E18()
{
  v1 = v0[33];

  v36 = v0;
  v2 = v0[36];
  if (v1 >= 1)
  {
    v37 = MEMORY[0x1E69E7CC0];
    if (v2 >> 62)
    {
      goto LABEL_29;
    }

    v3 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    for (i = v2; v3; i = v36[36])
    {
      v5 = 0;
      v35 = v2 & 0xC000000000000001;
      v6 = v2 & 0xFFFFFFFFFFFFFF8;
      v7 = i + 32;
      while (1)
      {
        if (v35)
        {
          v8 = MEMORY[0x1D38B75D0](v5, v36[36]);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_28;
          }

          v8 = *(v7 + 8 * v5);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v11 = [v8 contact];
        v12 = [v11 displayName];

        v2 = v36[28];
        if (v12)
        {
          v13 = sub_1D33DE7B4();
          v15 = v14;

          v16 = *(v2 + 40);
          if (v15)
          {
            if (!v16)
            {

              goto LABEL_7;
            }

            if (v13 == *(v2 + 32) && v16 == v15)
            {
            }

            else
            {
              v18 = sub_1D33DF1B4();

              if ((v18 & 1) == 0)
              {
                goto LABEL_23;
              }
            }

            goto LABEL_6;
          }
        }

        else
        {
          v16 = *(v2 + 40);
        }

        if (v16)
        {
LABEL_23:

          goto LABEL_7;
        }

LABEL_6:
        sub_1D33DEF84();
        sub_1D33DEFB4();
        sub_1D33DEFC4();
        sub_1D33DEF94();
LABEL_7:
        ++v5;
        if (v10 == v3)
        {
          v2 = v37;
          goto LABEL_31;
        }
      }

      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      v3 = sub_1D33DEE14();
    }

    v2 = MEMORY[0x1E69E7CC0];
LABEL_31:
  }

  v19 = v36[28];
  swift_beginAccess();
  *(v19 + 16) = v2;

  if (v2 >> 62)
  {
    v20 = sub_1D33DEE14();
  }

  else
  {
    v20 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x1E69E7CC0];
  if (v20)
  {
    v38 = MEMORY[0x1E69E7CC0];

    result = sub_1D334A9E0(0, v20 & ~(v20 >> 63), 0);
    if (v20 < 0)
    {
      __break(1u);
      return result;
    }

    v23 = 0;
    v21 = v38;
    do
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v24 = MEMORY[0x1D38B75D0](v23, v2);
      }

      else
      {
        v24 = *(v2 + 8 * v23 + 32);
      }

      v25 = v24;
      v26 = [v24 contact];
      v27 = [v26 identifier];

      v28 = sub_1D33DE7B4();
      v30 = v29;

      v32 = *(v38 + 16);
      v31 = *(v38 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_1D334A9E0((v31 > 1), v32 + 1, 1);
      }

      ++v23;
      *(v38 + 16) = v32 + 1;
      v33 = v38 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
    }

    while (v20 != v23);
  }

  *(v36[28] + 24) = v21;

  v34 = v36[1];

  return v34();
}

uint64_t sub_1D33C71DC()
{

  if (qword_1EC7609A0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 296);
  v2 = sub_1D33DE464();
  __swift_project_value_buffer(v2, qword_1EC762160);
  v3 = v1;
  v4 = sub_1D33DE444();
  v5 = sub_1D33DEAD4();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 296);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1D331A000, v4, v5, "ContactsSearchController: Error searching contacts: %@", v8, 0xCu);
    sub_1D331E880(v9, &qword_1EC761D90, &unk_1D33E4E90);
    MEMORY[0x1D38B81C0](v9, -1, -1);
    MEMORY[0x1D38B81C0](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

Swift::Void __swiftcall ContactSearchManager.cancelPreviousSearch()()
{
  if (qword_1EC760998 != -1)
  {
    swift_once();
  }

  v0 = sub_1D33DE464();
  __swift_project_value_buffer(v0, qword_1EC762148);

  oslog = sub_1D33DE444();
  v1 = sub_1D33DEAF4();

  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v8 = v3;
    *v2 = 136446210;
    v4 = sub_1D33C3880();
    v6 = sub_1D3328B48(v4, v5, &v8);

    *(v2 + 4) = v6;
    _os_log_impl(&dword_1D331A000, oslog, v1, "Search cancelled for %{public}s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v3);
    MEMORY[0x1D38B81C0](v3, -1, -1);
    MEMORY[0x1D38B81C0](v2, -1, -1);
  }
}

uint64_t ContactSearchManager.deinit()
{

  return v0;
}

uint64_t ContactSearchManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1D33C75EC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1D334CF9C;

  return ContactSearchManager.search(with:searchTokens:)(a1, a2, a3);
}

uint64_t sub_1D33C76C4(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

uint64_t getEnumTagSinglePayload for ContactSearchType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ContactSearchType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D33C78D8()
{
  result = qword_1EC761DA8;
  if (!qword_1EC761DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761DA8);
  }

  return result;
}

uint64_t sub_1D33C792C()
{
  **(v0 + 16) = *(*(v0 + 24) + 80);
}

uint64_t sub_1D33C7974()
{
  v1 = v0[2];
  v2 = v0[4];
  *(v1 + 64) = v0[3];
  *(v1 + 72) = v2;
}

unint64_t sub_1D33C79CC()
{
  result = qword_1EC761DB0;
  if (!qword_1EC761DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761DB0);
  }

  return result;
}

uint64_t objectdestroy_51Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

uint64_t sub_1D33C7A60()
{
  *(*(v0 + 16) + 80) = *(v0 + 24);
}

uint64_t sub_1D33C7AA0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v2 + 72);
  *v1 = *(v2 + 64);
  v1[1] = v3;
}

uint64_t sub_1D33C7B00(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1D33DF1B4() & 1;
  }
}

uint64_t sub_1D33C7B58()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1D33E4E70;
  v1 = *MEMORY[0x1E695C1F8];
  v2 = *MEMORY[0x1E695C2C8];
  *(v0 + 32) = *MEMORY[0x1E695C1F8];
  *(v0 + 40) = v2;
  v3 = *MEMORY[0x1E695C320];
  v4 = *MEMORY[0x1E695C360];
  *(v0 + 48) = *MEMORY[0x1E695C320];
  *(v0 + 56) = v4;
  v5 = *MEMORY[0x1E695C418];
  v6 = *MEMORY[0x1E695C3A8];
  *(v0 + 64) = *MEMORY[0x1E695C418];
  *(v0 + 72) = v6;
  v7 = *MEMORY[0x1E695C3D0];
  v8 = *MEMORY[0x1E695C2B0];
  *(v0 + 80) = *MEMORY[0x1E695C3D0];
  *(v0 + 88) = v8;
  v9 = v1;
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v16 = v8;
  return v0;
}

unint64_t sub_1D33C7C50()
{
  result = qword_1EDEBEEE0;
  if (!qword_1EDEBEEE0)
  {
    sub_1D33DEB24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEEE0);
  }

  return result;
}

unint64_t sub_1D33C7CA8()
{
  result = qword_1EDEBEF20;
  if (!qword_1EDEBEF20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EC760F10, &qword_1D33E2E40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDEBEF20);
  }

  return result;
}

unint64_t sub_1D33C7D20()
{
  result = qword_1EC761DB8;
  if (!qword_1EC761DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC761DB8);
  }

  return result;
}

void sub_1D33C7DD4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC761E30, &unk_1D33E5458);
    v2 = sub_1D33DF124();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v12 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v13 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v14 = v13 | (v12 << 6);
        v15 = (*(a1 + 48) + 16 * v14);
        v17 = *v15;
        v16 = v15[1];
        v18 = *(*(a1 + 56) + 8 * v14);

        v19 = v18;
        v20 = sub_1D33378A8(v17, v16);
        if (v21)
        {
          v8 = (v2[6] + 16 * v20);
          *v8 = v17;
          v8[1] = v16;
          v9 = v20;

          v10 = v2[7];
          v11 = *(v10 + 8 * v9);
          *(v10 + 8 * v9) = v19;

          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v20;
          v22 = (v2[6] + 16 * v20);
          *v22 = v17;
          v22[1] = v16;
          *(v2[7] + 8 * v20) = v19;
          v23 = v2[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_21;
          }

          v2[2] = v25;
          v7 = v12;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v12 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_1D33C7FB4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7613F0, &qword_1D33E5430);
    v2 = sub_1D33DF124();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 64;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = (*(a1 + 48) + ((v9 << 10) | (16 * __clz(__rbit64(v5)))));
    v14 = v13[1];
    *&v30[0] = *v13;
    *(&v30[0] + 1) = v14;

    swift_dynamicCast();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761E08, &qword_1D33E5438);
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_1D334CCF4(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_1D334CCF4(v29, v30);
    result = sub_1D33DEE94();
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*(v7 + 8 * (v16 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *(v7 + 8 * v17);
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*(v7 + 8 * (v16 >> 6)))) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = *(v2 + 48) + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_1D334CCF4(v30, (*(v2 + 56) + 32 * v10));
    ++*(v2 + 16);
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

unint64_t sub_1D33C8290(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return a1 & 0xFFFFFFFFFFFFFF8;
  }

  v3 = sub_1D33DEE14();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x1E69E7CC0];
  }

  v4 = v3;
  v5 = sub_1D33D6CA4();
  sub_1D33D2D28(v5 + 32, v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

void *sub_1D33C8324(uint64_t a1)
{
  v1 = a1;
  v25 = MEMORY[0x1E69E7CC0];
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_1D33DEDC4();
    sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
    sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
    result = sub_1D33DEA94();
    v1 = v20;
    v3 = v21;
    v4 = v22;
    v5 = v23;
    v6 = v24;
  }

  else
  {
    v7 = -1 << *(a1 + 32);
    v3 = a1 + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(a1 + 56);

    v5 = 0;
  }

  v10 = MEMORY[0x1E69E7CC0];
  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v11 = v5;
    v12 = v6;
    v13 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v14 = (v12 - 1) & v12;
    v15 = *(*(v1 + 48) + ((v13 << 9) | (8 * __clz(__rbit64(v12)))));
    if (!v15)
    {
LABEL_25:
      sub_1D331FEEC(v1);
      return v10;
    }

    while (1)
    {
      v16 = [v15 type];
      if (v16 > 3)
      {
        v17 = 1;
      }

      else
      {
        v17 = qword_1D33E5468[v16];
      }

      v18 = [v15 value];
      if (!v18)
      {
        sub_1D33DE7B4();
        v18 = sub_1D33DE784();
      }

      [objc_allocWithZone(MEMORY[0x1E69D8C00]) initWithType:v17 value:v18];

      MEMORY[0x1D38B6F20]();
      if (*((v25 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1D33DE8D4();
      }

      result = sub_1D33DE8F4();
      v10 = v25;
      v5 = v13;
      v6 = v14;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_1D33DEE54())
      {
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        swift_dynamicCast();
        v15 = v19;
        v13 = v5;
        v14 = v6;
        if (v19)
        {
          continue;
        }
      }

      goto LABEL_25;
    }
  }

  while (1)
  {
    v13 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      break;
    }

    if (v13 >= ((v4 + 64) >> 6))
    {
      goto LABEL_25;
    }

    v12 = *(v3 + 8 * v13);
    ++v11;
    if (v12)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D33C8614(int a1)
{
  if (*MEMORY[0x1E69935D0] == a1)
  {
    return 0x6E776F6E6B6E75;
  }

  if (*MEMORY[0x1E69935B0] == a1)
  {
    return 0xD000000000000011;
  }

  if (*MEMORY[0x1E69935B8] == a1)
  {
    return 0xD000000000000011;
  }

  if (*MEMORY[0x1E69935A0] == a1)
  {
    return 0xD000000000000011;
  }

  if (*MEMORY[0x1E69935C8] == a1)
  {
    return 0x64657373696DLL;
  }

  if (*MEMORY[0x1E69935A8] == a1)
  {
    return 0x656C6C65636E6163;
  }

  return 0;
}

__n128 ReportSpamManager.SpamDataModel.init(invitedMembers:callType:callLength:hasLink:recipientHandleValue:senderHandle:messageId:spamTime:messageKey:callStatus:linkName:snapFirstName:snapLastName:snapRecordId:snapRecordInfo:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, __int128 a10, uint64_t a11, uint64_t a12, char a13, __int128 a14, __int128 a15, __int128 a16, __int128 a17, __int128 a18, __n128 a19, uint64_t a20)
{
  result = a19;
  *a9 = a1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = a4;
  *(a9 + 32) = a5 & 1;
  *(a9 + 33) = a6;
  *(a9 + 40) = a7;
  *(a9 + 48) = a8;
  *(a9 + 56) = a10;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = a13 & 1;
  *(a9 + 96) = a14;
  *(a9 + 112) = a15;
  *(a9 + 128) = a16;
  *(a9 + 144) = a17;
  *(a9 + 160) = a18;
  *(a9 + 176) = a19;
  *(a9 + 192) = a20;
  return result;
}

unint64_t sub_1D33C8784()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  if (v5 <= 3)
  {
    if (v5 >= 2 && v5 == 2)
    {
      v20 = v1;
      v21 = sub_1D33DE124();
      if (v21)
      {
        v22 = v21;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7617C0, &unk_1D33E2270);
        v9 = swift_allocObject();
        *(v9 + 16) = xmmword_1D33E1DE0;
        *(v9 + 32) = v22;
        sub_1D332B1DC(v1, v2, v4, v3, 2u);
        return v9;
      }

      sub_1D332B1DC(v1, v2, v4, v3, 2u);
      return MEMORY[0x1E69E7CC0];
    }

    v11 = v1;
    v12 = [v11 remoteMembers];

    sub_1D331DA18(0, &unk_1EC761E40, 0x1E69D8B80);
    sub_1D33565AC(&unk_1EC7619C0, &unk_1EC761E40, 0x1E69D8B80);
    v13 = sub_1D33DEA54();

    v14 = sub_1D339AAE8(v13);

    return sub_1D33C8290(v14);
  }

  else
  {
    if (v5 - 4 < 3)
    {
      v6 = v1;
      v7 = [v6 remoteParticipantHandles];

      if (v7)
      {
        sub_1D331DA18(0, &qword_1EDEBEE90, 0x1E6993578);
        sub_1D33565AC(&qword_1EDEBEE80, &qword_1EDEBEE90, 0x1E6993578);
        v8 = sub_1D33DEA54();

        v9 = sub_1D33C8324(v8);

        return v9;
      }

      return MEMORY[0x1E69E7CC0];
    }

    v9 = MEMORY[0x1E69E7CC0];
    if (v5 != 7)
    {
      return v9;
    }

    v16 = v2;

    v17 = [v16 invitedMemberHandles];
    if (v17)
    {
      v18 = v17;
      sub_1D331DA18(0, &unk_1EDEC0120, 0x1E69D8C00);
      sub_1D33565AC(&unk_1EDEC0040, &unk_1EDEC0120, 0x1E69D8C00);
      v19 = sub_1D33DEA54();
    }

    else if (v9 >> 62 && sub_1D33DEE14())
    {
      sub_1D33A6DF0(MEMORY[0x1E69E7CC0]);
      v19 = v24;
    }

    else
    {
      v19 = MEMORY[0x1E69E7CD0];
    }

    v23 = sub_1D33A5AC0(v19);
    sub_1D332B1DC(v1, v2, v4, v3, 7u);

    return v23;
  }
}

void sub_1D33C8AC8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  v1 = sub_1D33DE784();
  v2 = [v0 initWithService_];

  if (v2)
  {
    type metadata accessor for IDSSpamReportingService();
    v3 = swift_allocObject();
    *(v3 + 16) = v2;
    type metadata accessor for ReportSpamManager();
    v4 = swift_allocObject();
    v4[3] = 0;
    swift_unknownObjectWeakInit();
    v4[6] = [objc_opt_self() sharedInstance];
    v4[7] = [objc_opt_self() sharedController];
    v4[4] = v3;
    v4[5] = &off_1F4EE7C90;
    swift_beginAccess();
    v4[3] = 0;
    swift_unknownObjectWeakAssign();
    v4[8] = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    qword_1EC761DC0 = v4;
  }

  else
  {
    __break(1u);
  }
}

unint64_t ReportSpamManager.IDSServiceType.rawValue.getter()
{
  if (*v0)
  {
    return 0xD000000000000026;
  }

  else
  {
    return 0xD00000000000002ALL;
  }
}

void ReportSpamManager.__allocating_init(idsServiceType:contextProvider:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = objc_allocWithZone(MEMORY[0x1E69A48A8]);
  v6 = sub_1D33DE784();
  v7 = [v5 initWithService_];

  if (v7)
  {

    type metadata accessor for IDSSpamReportingService();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
    v9 = swift_allocObject();
    v9[3] = 0;
    swift_unknownObjectWeakInit();
    v9[6] = [objc_opt_self() sharedInstance];
    v9[7] = [objc_opt_self() sharedController];
    v9[4] = v8;
    v9[5] = &off_1F4EE7C90;
    swift_beginAccess();
    v9[3] = a4;
    swift_unknownObjectWeakAssign();
    v10 = [objc_allocWithZone(MEMORY[0x1E69D8BE8]) init];
    swift_unknownObjectRelease();
    v9[8] = v10;
  }

  else
  {
    __break(1u);
  }
}

uint64_t static ReportSpamManager.faceTime.getter()
{
  if (qword_1EC760960 != -1)
  {
    swift_once();
  }
}

uint64_t sub_1D33C8E28()
{
  v0 = sub_1D33DE464();
  __swift_allocate_value_buffer(v0, qword_1EC761DC8);
  __swift_project_value_buffer(v0, qword_1EC761DC8);
  return sub_1D33DE454();
}

uint64_t static ReportSpamManager.logger.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC760968 != -1)
  {
    swift_once();
  }

  v2 = sub_1D33DE464();
  v3 = __swift_project_value_buffer(v2, qword_1EC761DC8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

CallsAppServices::ReportSpamManager::IDSServiceType_optional __swiftcall ReportSpamManager.IDSServiceType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D33DF144();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D33C8FB0(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000026;
  }

  else
  {
    v3 = 0xD00000000000002ALL;
  }

  if (v2)
  {
    v4 = "nvited";
  }

  else
  {
    v4 = "e.alloy.facetime.messaging";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000026;
  }

  else
  {
    v6 = 0xD00000000000002ALL;
  }

  if (*a2)
  {
    v7 = "e.alloy.facetime.messaging";
  }

  else
  {
    v7 = "nvited";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = sub_1D33DF1B4();
  }

  return v9 & 1;
}

uint64_t sub_1D33C905C()
{
  sub_1D33DF284();
  sub_1D33DE824();

  return sub_1D33DF2C4();
}

uint64_t sub_1D33C90DC(uint64_t a1)
{
  sub_1D33DE824();
}

uint64_t sub_1D33C9148(uint64_t a1)
{
  sub_1D33DF284();
  sub_1D33DE824();

  return sub_1D33DF2C4();
}

uint64_t sub_1D33C91C4@<X0>(char *a2@<X8>)
{
  v3 = sub_1D33DF144();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_1D33C9224(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000026;
  }

  else
  {
    v2 = 0xD00000000000002ALL;
  }

  if (*v1)
  {
    v3 = "e.alloy.facetime.messaging";
  }

  else
  {
    v3 = "nvited";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t sub_1D33C9264()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  v78 = *(v0 + 33);
  v79 = *(v0 + 32);
  v117 = *(v0 + 34);
  v118 = *(v0 + 38);
  v76 = *(v0 + 48);
  v77 = *(v0 + 40);
  v5 = *(v0 + 56);
  v6 = *(v0 + 72);
  v74 = *(v0 + 80);
  v75 = *(v0 + 64);
  v7 = *(v0 + 88);
  v8 = *(v0 + 89);
  *(v116 + 3) = *(v0 + 92);
  v116[0] = v8;
  v72 = *(v0 + 104);
  v73 = *(v0 + 96);
  v70 = *(v0 + 120);
  v71 = *(v0 + 112);
  v9 = *(v0 + 136);
  v69 = *(v0 + 128);
  v10 = *(v0 + 160);
  v112 = *(v0 + 144);
  v113 = v10;
  v114 = *(v0 + 176);
  v115 = *(v0 + 192);
  v11 = sub_1D336C04C(MEMORY[0x1E69E7CC0]);
  *(&v107 + 1) = 0xEF737265626D656DLL;
  v12 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC7616B0, &qword_1D33E3DD0);
  *&v107 = v1;
  sub_1D334CCF4(&v107, &v109);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(&v109, &v81, isUniquelyReferenced_nonNull_native);
  sub_1D334CCA0(&v81);
  v111 = v11;
  if (v7)
  {

    if (qword_1EC760968 != -1)
    {
      swift_once();
    }

    v14 = sub_1D33DE464();
    __swift_project_value_buffer(v14, qword_1EC761DC8);
    v15 = sub_1D33DE444();
    v16 = sub_1D33DEAD4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_22;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "call date is nil, kIDSGeneralSpamReportTimeOfMessageKey is required to report spams";
LABEL_21:
    _os_log_impl(&dword_1D331A000, v15, v16, v18, v17, 2u);
    MEMORY[0x1D38B81C0](v17, -1, -1);
LABEL_22:

    return 0;
  }

  if (!v6)
  {

    if (qword_1EC760968 != -1)
    {
      swift_once();
    }

    v36 = sub_1D33DE464();
    __swift_project_value_buffer(v36, qword_1EC761DC8);
    v15 = sub_1D33DE444();
    v16 = sub_1D33DEAD4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_22;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "message id is nil, kIDSGeneralSpamReportMessageIDKey is required to report spams";
    goto LABEL_21;
  }

  if (!v5)
  {

LABEL_17:
    if (qword_1EC760968 != -1)
    {
      swift_once();
    }

    v37 = sub_1D33DE464();
    __swift_project_value_buffer(v37, qword_1EC761DC8);
    v15 = sub_1D33DE444();
    v16 = sub_1D33DEAD4();
    if (!os_log_type_enabled(v15, v16))
    {
      goto LABEL_22;
    }

    v17 = swift_slowAlloc();
    *v17 = 0;
    v18 = "senderHandle is nil, kIDSGeneralSpamReportSenderURIKey is required to report spams";
    goto LABEL_21;
  }

  v67 = v9;
  v68 = v3;
  v19 = v5;

  v20 = TUCopyIDSFromIDForHandle();
  if (!v20)
  {

    goto LABEL_17;
  }

  v21 = v20;
  v63 = v19;
  v64 = v4;
  v65 = v2;
  v22 = sub_1D33DE784();
  v23 = TUHandleForIDSCanonicalAddress();

  v66 = TUHandleForIDSCanonicalAddress();
  *&v107 = sub_1D33DE7B4();
  *(&v107 + 1) = v24;
  sub_1D33DEEB4();
  v108 = v12;
  *&v107 = v73;
  *(&v107 + 1) = v72;
  sub_1D334CCF4(&v107, &v109);

  v25 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(&v109, &v81, v25);
  sub_1D334CCA0(&v81);
  *&v107 = sub_1D33DE7B4();
  *(&v107 + 1) = v26;
  sub_1D33DEEB4();
  v108 = MEMORY[0x1E69E63B0];
  *&v107 = v74;
  sub_1D334CCF4(&v107, &v109);
  v27 = swift_isUniquelyReferenced_nonNull_native();
  *&v80[0] = v11;
  sub_1D3398C48(&v109, &v81, v27);
  sub_1D334CCA0(&v81);
  v111 = v11;
  *&v107 = sub_1D33DE7B4();
  *(&v107 + 1) = v28;
  sub_1D33DEEB4();
  v29 = v23;
  v30 = TUCopyIDSFromIDForHandle();
  if (v30)
  {
    v31 = v30;
    v32 = sub_1D33DE7B4();
    v34 = v33;

    v108 = v12;
    *&v107 = v32;
    *(&v107 + 1) = v34;
    sub_1D334CCF4(&v107, &v109);
    v35 = swift_isUniquelyReferenced_nonNull_native();
    *&v80[0] = v11;
    sub_1D3398C48(&v109, &v81, v35);
    sub_1D334CCA0(&v81);
    v111 = v11;
  }

  else
  {
    sub_1D334BCE4(&v107, &v81);
    sub_1D331E880(&v107, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(&v81);
    v11 = v111;
  }

  *&v107 = sub_1D33DE7B4();
  *(&v107 + 1) = v39;
  sub_1D33DEEB4();
  v108 = v12;
  *&v107 = v75;
  *(&v107 + 1) = v6;
  sub_1D334CCF4(&v107, &v109);
  v40 = swift_isUniquelyReferenced_nonNull_native();
  *&v80[0] = v11;
  sub_1D3398C48(&v109, &v81, v40);
  sub_1D334CCA0(&v81);
  v111 = v11;
  *&v107 = 0x7079742D6C6C6163;
  *(&v107 + 1) = 0xE900000000000065;
  sub_1D33DEEB4();
  if (v68)
  {
    v108 = v12;
    *&v107 = v65;
    *(&v107 + 1) = v68;
    sub_1D334CCF4(&v107, &v109);

    v41 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(&v109, &v81, v41);
    sub_1D334CCA0(&v81);
    v111 = v11;
  }

  else
  {
    sub_1D334BCE4(&v107, &v81);
    sub_1D331E880(&v107, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(&v81);
  }

  *&v107 = 0x6E656C2D6C6C6163;
  *(&v107 + 1) = 0xEB00000000687467;
  sub_1D33DEEB4();
  if (v79)
  {
    sub_1D334BCE4(&v107, &v81);
    sub_1D331E880(&v107, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(&v81);
    v42 = v111;
  }

  else
  {
    v108 = MEMORY[0x1E69E63B0];
    *&v107 = v64;
    sub_1D334CCF4(&v107, &v109);
    v42 = v111;
    v43 = swift_isUniquelyReferenced_nonNull_native();
    *&v80[0] = v42;
    sub_1D3398C48(&v109, &v81, v43);
    sub_1D334CCA0(&v81);
    v111 = v42;
  }

  *&v107 = 0x6B6E696C2D736168;
  *(&v107 + 1) = 0xE800000000000000;
  v44 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  v108 = MEMORY[0x1E69E6370];
  LOBYTE(v107) = v78 & 1;
  sub_1D334CCF4(&v107, &v109);
  v45 = swift_isUniquelyReferenced_nonNull_native();
  *&v80[0] = v42;
  sub_1D3398C48(&v109, &v81, v45);
  sub_1D334CCA0(&v81);
  v111 = v42;
  *&v107 = 0x6174732D6C6C6163;
  *(&v107 + 1) = 0xEB00000000737574;
  sub_1D33DEEB4();
  v46 = v70;
  if (v70)
  {
    v108 = v44;
    *&v107 = v71;
    *(&v107 + 1) = v70;
    sub_1D334CCF4(&v107, &v109);

    v47 = swift_isUniquelyReferenced_nonNull_native();
    *&v80[0] = v42;
    sub_1D3398C48(&v109, &v81, v47);
    sub_1D334CCA0(&v81);
    v111 = v42;
  }

  else
  {
    sub_1D334BCE4(&v107, &v81);
    sub_1D331E880(&v107, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(&v81);
  }

  *&v107 = 0x6D616E2D6B6E696CLL;
  *(&v107 + 1) = 0xE900000000000065;
  v48 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  if (v67)
  {
    v108 = v48;
    *&v107 = v69;
    *(&v107 + 1) = v67;
    sub_1D334CCF4(&v107, &v109);

    v49 = v111;
    v50 = swift_isUniquelyReferenced_nonNull_native();
    *&v80[0] = v49;
    sub_1D3398C48(&v109, &v81, v50);
    sub_1D334CCA0(&v81);
    v111 = v49;
  }

  else
  {
    sub_1D334BCE4(&v107, &v81);
    sub_1D331E880(&v107, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(&v81);
  }

  *&v107 = sub_1D33DE7B4();
  *(&v107 + 1) = v51;
  v52 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  v53 = TUCopyIDSFromIDForHandle();
  if (v53)
  {
    v54 = v53;
    v55 = sub_1D33DE7B4();
    v57 = v56;

    v108 = v52;
    *&v107 = v55;
    *(&v107 + 1) = v57;
    v46 = v70;
    sub_1D334CCF4(&v107, &v109);
    v58 = v111;
    v59 = swift_isUniquelyReferenced_nonNull_native();
    *&v80[0] = v58;
    sub_1D3398C48(&v109, &v81, v59);
    sub_1D334CCA0(&v81);
    v60 = v58;
  }

  else
  {
    sub_1D334BCE4(&v107, &v81);
    sub_1D331E880(&v107, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(&v81);
    v60 = v111;
  }

  v81 = 0xD00000000000001CLL;
  v82 = 0x80000001D33E7450;
  sub_1D33DEEB4();
  v81 = v1;
  v82 = v65;
  v83 = v68;
  v84 = v64;
  v85 = v79;
  v86 = v78;
  v87 = v117;
  v88 = v118;
  v89 = v77;
  v90 = v76;
  v91 = v5;
  v92 = v75;
  v93 = v6;
  v94 = v74;
  v95 = v7;
  *&v96[3] = *(v116 + 3);
  *v96 = v116[0];
  v97 = v73;
  v98 = v72;
  v99 = v71;
  v100 = v46;
  v101 = v69;
  v102 = v67;
  v106 = v115;
  v104 = v113;
  v105 = v114;
  v103 = v112;
  v61 = sub_1D33C9E50();
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B70, qword_1D33E4450);
  *&v109 = v61;
  sub_1D334CCF4(&v109, v80);
  v62 = swift_isUniquelyReferenced_nonNull_native();
  sub_1D3398C48(v80, &v107, v62);

  sub_1D334CCA0(&v107);
  return v60;
}

unint64_t sub_1D33C9E50()
{
  v2 = v0[18];
  v1 = v0[19];
  v4 = v0[20];
  v3 = v0[21];
  v6 = v0[22];
  v5 = v0[23];
  v7 = v0[24];

  v8 = sub_1D336C04C(MEMORY[0x1E69E7CC0]);
  v24 = v8;
  *&v21 = 0x616E2D7473726966;
  *(&v21 + 1) = 0xEA0000000000656DLL;
  v9 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  if (v1)
  {
    v22 = v9;
    *&v21 = v2;
    *(&v21 + 1) = v1;
    sub_1D334CCF4(&v21, v20);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, isUniquelyReferenced_nonNull_native);
    sub_1D334CCA0(v23);
    v24 = v8;
  }

  else
  {
    sub_1D334BCE4(&v21, v23);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
  }

  *&v21 = 0x6D616E2D7473616CLL;
  *(&v21 + 1) = 0xE900000000000065;
  v11 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  if (v3)
  {
    v22 = v11;
    *&v21 = v4;
    *(&v21 + 1) = v3;
    sub_1D334CCF4(&v21, v20);

    v12 = v24;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, v13);
    sub_1D334CCA0(v23);
    v24 = v12;
  }

  else
  {
    sub_1D334BCE4(&v21, v23);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
  }

  *&v21 = 0x644964726F636572;
  *(&v21 + 1) = 0xE800000000000000;
  v14 = MEMORY[0x1E69E6158];
  sub_1D33DEEB4();
  if (v5)
  {
    v22 = v14;
    *&v21 = v6;
    *(&v21 + 1) = v5;
    sub_1D334CCF4(&v21, v20);

    v15 = v24;
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, v16);
    sub_1D334CCA0(v23);
    v24 = v15;
  }

  else
  {
    sub_1D334BCE4(&v21, v23);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
  }

  *&v21 = 0xD000000000000017;
  *(&v21 + 1) = 0x80000001D33E7470;
  sub_1D33DEEB4();
  if (v7)
  {
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC761B78, &qword_1D33E4538);
    *&v21 = v7;
    sub_1D334CCF4(&v21, v20);

    v17 = v24;
    v18 = swift_isUniquelyReferenced_nonNull_native();
    sub_1D3398C48(v20, v23, v18);
    sub_1D334CCA0(v23);
    return v17;
  }

  else
  {
    sub_1D334BCE4(&v21, v23);
    sub_1D331E880(&v21, &qword_1EC7616D0, &unk_1D33E2890);
    sub_1D334CCA0(v23);
    return v24;
  }
}

uint64_t ReportSpamManager.contextProvider.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*ReportSpamManager.contextProvider.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  return sub_1D33CA300;
}

void sub_1D33CA300(uint64_t a1, char a2)
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

uint64_t sub_1D33CA3B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v12 = a5(a1, a3, a4, v5, ObjectType, a2);
  swift_unknownObjectRelease();
  return v12;
}