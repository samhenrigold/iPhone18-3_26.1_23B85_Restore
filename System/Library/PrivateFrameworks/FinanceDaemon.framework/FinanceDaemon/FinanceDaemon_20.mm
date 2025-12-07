unint64_t sub_226CBB724()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE0, qword_226D771A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_226D71190;
  strcpy((inited + 32), "numberOfGroups");
  *(inited + 47) = -18;
  *(inited + 48) = sub_226D6E8EC();
  *(inited + 56) = 0xD00000000000001BLL;
  *(inited + 64) = 0x8000000226D86E80;
  *(inited + 72) = sub_226D6E85C();
  *(inited + 80) = 0xD000000000000020;
  *(inited + 88) = 0x8000000226D86EA0;
  *(inited + 96) = sub_226D6E8EC();
  *(inited + 104) = 0xD000000000000020;
  *(inited + 112) = 0x8000000226D86ED0;
  *(inited + 120) = sub_226D6E8EC();
  v1 = sub_226B224E8(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A77D8, &qword_226D75660);
  swift_arrayDestroy();
  return v1;
}

unint64_t sub_226CBB898()
{
  result = qword_2810615F8[0];
  if (!qword_2810615F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_2810615F8);
  }

  return result;
}

unint64_t *sub_226CBB8EC(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_226CBDBF4(v7, a2, a3, a4);
    swift_bridgeObjectRelease_n();

    return v8;
  }

  return result;
}

uint64_t sub_226CBB988(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for WebServicePendingTasksRetryState.TaskState(0);
  v37 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v38 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v36 = &v35 - v11;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6A80, &qword_226D7AD90);
  result = sub_226D6F10C();
  v13 = result;
  if (a2 < 1)
  {
    v14 = 0;
  }

  else
  {
    v14 = *a1;
  }

  v15 = 0;
  v16 = result + 64;
  v35 = a4;
  while (v14)
  {
    v17 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_16:
    v20 = v17 | (v15 << 6);
    sub_226AE4FD4(a4[6] + 40 * v20, v42);
    v21 = a4[7];
    v22 = v36;
    v23 = *(v37 + 72);
    sub_226CBEC80(v21 + v23 * v20, v36, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
    v39 = v42[0];
    v40 = v42[1];
    v41 = v43;
    sub_226CBECE8(v22, v38, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
    result = sub_226D6EE6C();
    v24 = -1 << *(v13 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*(v16 + 8 * (v25 >> 6))) == 0)
    {
      v28 = 0;
      v29 = (63 - v24) >> 6;
      while (++v26 != v29 || (v28 & 1) == 0)
      {
        v30 = v26 == v29;
        if (v26 == v29)
        {
          v26 = 0;
        }

        v28 |= v30;
        v31 = *(v16 + 8 * v26);
        if (v31 != -1)
        {
          v27 = __clz(__rbit64(~v31)) + (v26 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v27 = __clz(__rbit64((-1 << v25) & ~*(v16 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v16 + ((v27 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v27;
    v32 = *(v13 + 48) + 40 * v27;
    v33 = v40;
    *v32 = v39;
    *(v32 + 16) = v33;
    *(v32 + 32) = v41;
    result = sub_226CBECE8(v38, *(v13 + 56) + v27 * v23, type metadata accessor for WebServicePendingTasksRetryState.TaskState);
    ++*(v13 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v35;
    if (!a3)
    {
      return v13;
    }
  }

  v18 = v15;
  while (1)
  {
    v15 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v15 >= a2)
    {
      return v13;
    }

    v19 = a1[v15];
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v14 = (v19 - 1) & v19;
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

uint64_t sub_226CBBCB8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v58 = sub_226D67E5C();
  v54 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v57 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v48 = v44 - v10;
  v11 = sub_226D6D52C();
  v53 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v56 = v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v47 = v44 - v14;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C50, &qword_226D77F50);
  result = sub_226D6F10C();
  v16 = result;
  if (a2 < 1)
  {
    v17 = 0;
  }

  else
  {
    v17 = *a1;
  }

  v18 = 0;
  v44[3] = v53 + 16;
  v45 = a2;
  v55 = v53 + 32;
  v19 = result + 64;
  v46 = a1;
  v44[0] = a4;
  v44[1] = v54 + 32;
  v44[2] = v54 + 16;
  while (v17)
  {
    v20 = __clz(__rbit64(v17));
    v49 = (v17 - 1) & v17;
LABEL_16:
    v23 = v20 | (v18 << 6);
    v24 = a4[6];
    v25 = v53;
    v52 = *(v53 + 72);
    v26 = v47;
    (*(v53 + 16))(v47, v24 + v52 * v23, v11);
    v27 = a4[7];
    v28 = v54;
    v51 = *(v54 + 72);
    v29 = v27 + v51 * v23;
    v30 = v11;
    v31 = v48;
    v32 = v58;
    (*(v54 + 16))(v48, v29, v58);
    v50 = *(v25 + 32);
    v50(v56, v26, v30);
    v33 = *(v28 + 32);
    v34 = v31;
    v11 = v30;
    v33(v57, v34, v32);
    sub_226CBDA0C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_226D6E2FC();
    v35 = -1 << *(v16 + 32);
    v36 = result & ~v35;
    v37 = v36 >> 6;
    if (((-1 << v36) & ~*(v19 + 8 * (v36 >> 6))) == 0)
    {
      v39 = 0;
      v40 = (63 - v35) >> 6;
      a2 = v45;
      a1 = v46;
      while (++v37 != v40 || (v39 & 1) == 0)
      {
        v41 = v37 == v40;
        if (v37 == v40)
        {
          v37 = 0;
        }

        v39 |= v41;
        v42 = *(v19 + 8 * v37);
        if (v42 != -1)
        {
          v38 = __clz(__rbit64(~v42)) + (v37 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v38 = __clz(__rbit64((-1 << v36) & ~*(v19 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
    a2 = v45;
    a1 = v46;
LABEL_26:
    *(v19 + ((v38 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v38;
    v50((*(v16 + 48) + v38 * v52), v56, v30);
    result = (v33)(*(v16 + 56) + v38 * v51, v57, v58);
    ++*(v16 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v44[0];
    v17 = v49;
    if (!a3)
    {
      return v16;
    }
  }

  v21 = v18;
  while (1)
  {
    v18 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v18 >= a2)
    {
      return v16;
    }

    v22 = a1[v18];
    ++v21;
    if (v22)
    {
      v20 = __clz(__rbit64(v22));
      v49 = (v22 - 1) & v22;
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

uint64_t sub_226CBC15C(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Permission(0);
  v47 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v46 = &v40 - v12;
  v13 = type metadata accessor for PermissionIdentifier(0);
  v44 = *(v13 - 8);
  v45 = v13;
  MEMORY[0x28223BE20](v13);
  v51 = &v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v43 = &v40 - v16;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (*(a4 + 16) == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8C40, &unk_226D7AE70);
  result = sub_226D6F10C();
  v18 = result;
  v42 = a4;
  if (a2 < 1)
  {
    v19 = 0;
  }

  else
  {
    v19 = *a1;
  }

  v20 = 0;
  v21 = result + 64;
  v41 = a1;
  while (v19)
  {
    v22 = __clz(__rbit64(v19));
    v48 = (v19 - 1) & v19;
LABEL_16:
    v25 = v22 | (v20 << 6);
    v27 = v42;
    v26 = v43;
    v28 = *(v42 + 48);
    v50 = *(v44 + 72);
    sub_226CBEC80(v28 + v50 * v25, v43, type metadata accessor for PermissionIdentifier);
    v29 = *(v27 + 56);
    v30 = v46;
    v49 = *(v47 + 72);
    sub_226CBEC80(v29 + v49 * v25, v46, type metadata accessor for Permission);
    sub_226CBECE8(v26, v51, type metadata accessor for PermissionIdentifier);
    sub_226CBECE8(v30, v10, type metadata accessor for Permission);
    sub_226D6F2FC();
    sub_226D67F0C();
    sub_226D6E42C();

    sub_226D6D52C();
    sub_226CBDA0C(&qword_281062B60, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_226D6E30C();
    result = sub_226D6F35C();
    v31 = -1 << *(v18 + 32);
    v32 = result & ~v31;
    v33 = v32 >> 6;
    if (((-1 << v32) & ~*(v21 + 8 * (v32 >> 6))) == 0)
    {
      v35 = 0;
      v36 = (63 - v31) >> 6;
      a1 = v41;
      while (++v33 != v36 || (v35 & 1) == 0)
      {
        v37 = v33 == v36;
        if (v33 == v36)
        {
          v33 = 0;
        }

        v35 |= v37;
        v38 = *(v21 + 8 * v33);
        if (v38 != -1)
        {
          v34 = __clz(__rbit64(~v38)) + (v33 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v34 = __clz(__rbit64((-1 << v32) & ~*(v21 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
    a1 = v41;
LABEL_26:
    *(v21 + ((v34 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v34;
    sub_226CBECE8(v51, *(v18 + 48) + v34 * v50, type metadata accessor for PermissionIdentifier);
    result = sub_226CBECE8(v10, *(v18 + 56) + v34 * v49, type metadata accessor for Permission);
    ++*(v18 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    v19 = v48;
    if (!a3)
    {
      return v18;
    }
  }

  v23 = v20;
  while (1)
  {
    v20 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      break;
    }

    if (v20 >= a2)
    {
      return v18;
    }

    v24 = a1[v20];
    ++v23;
    if (v24)
    {
      v22 = __clz(__rbit64(v24));
      v48 = (v24 - 1) & v24;
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

uint64_t sub_226CBC5F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_226CBEED8;

  return sub_226CB461C(a2, a3, a4, a5, a6);
}

uint64_t sub_226CBC6C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5, double a6)
{
  *(v6 + 16) = a1;
  v12 = swift_task_alloc();
  *(v6 + 24) = v12;
  *v12 = v6;
  v12[1] = sub_226CBC788;

  return sub_226CB4E78(a2, a3, a4, a5, a6);
}

uint64_t sub_226CBC788(uint64_t a1, double a2, double a3)
{
  v7 = *(*v3 + 16);
  v10 = *v3;

  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3;
  v8 = *(v10 + 8);

  return v8();
}

uint64_t sub_226CBC8AC(void *a1)
{
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F710);
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9EC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_226AB4000, v3, v4, "Pruning merchants and brands", v5, 2u);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_226CBD8E8;
  *(v7 + 24) = v6;
  v19 = sub_226B2A194;
  v20 = v7;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_226CAD254;
  v18 = &block_descriptor_45;
  v8 = _Block_copy(&v15);
  v9 = a1;

  [v9 performBlockAndWait_];
  _Block_release(v8);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    goto LABEL_9;
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_226CBD920;
  *(v12 + 24) = v11;
  v19 = sub_226B2A194;
  v20 = v12;
  v15 = MEMORY[0x277D85DD0];
  v16 = 1107296256;
  v17 = sub_226CAD254;
  v18 = &block_descriptor_55_1;
  v13 = _Block_copy(&v15);
  v14 = v9;

  [v14 performBlockAndWait_];
  _Block_release(v13);
  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
LABEL_9:
    __break(1u);
  }

  return result;
}

uint64_t sub_226CBCBD4(uint64_t a1, void *a2)
{
  v50 = a2;
  v2 = sub_226D6D4AC();
  v48 = *(v2 - 8);
  v3 = v48;
  MEMORY[0x28223BE20](v2);
  v5 = v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v45 - v7;
  v49 = v9;
  MEMORY[0x28223BE20](v10);
  v12 = v45 - v11;
  sub_226D6D3DC();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6E07C();
  __swift_project_value_buffer(v13, qword_28105F710);
  v14 = *(v3 + 16);
  v53 = v12;
  v14(v8, v12, v2);
  v15 = sub_226D6E05C();
  v16 = sub_226D6E9EC();
  v17 = os_log_type_enabled(v15, v16);
  v51 = v14;
  v52 = v3 + 16;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    aBlock = v19;
    *v18 = 136315138;
    sub_226CBDA0C(&qword_281062B80, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
    v20 = sub_226D6F1CC();
    v21 = v3;
    v23 = v22;
    v24 = *(v21 + 8);
    v46 = v5;
    v47 = v24;
    v24(v8, v2);
    v25 = sub_226AC4530(v20, v23, &aBlock);
    v3 = v21;
    v5 = v46;

    *(v18 + 4) = v25;
    _os_log_impl(&dword_226AB4000, v15, v16, "Pruning debug entities created before %s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x22AA8BEE0](v19, -1, -1);
    v26 = v18;
    v14 = v51;
    MEMORY[0x22AA8BEE0](v26, -1, -1);
  }

  else
  {

    v47 = *(v3 + 8);
    v47(v8, v2);
  }

  v14(v5, v53, v2);
  v27 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v28 = (v49 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  v30 = *(v3 + 32);
  v45[0] = v3 + 32;
  v46 = v30;
  (v30)(v29 + v27, v5, v2);
  v31 = v50;
  *(v29 + v28) = v50;
  v32 = swift_allocObject();
  *(v32 + 16) = sub_226CBD800;
  *(v32 + 24) = v29;
  v49 = v29;
  v58 = sub_226B1BA20;
  v59 = v32;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v45[1] = &v56;
  v56 = sub_226CAD254;
  v57 = &block_descriptor_16;
  v33 = _Block_copy(&aBlock);
  v34 = v31;
  v35 = v5;
  v36 = v34;

  [v36 performBlockAndWait_];
  _Block_release(v33);
  LOBYTE(v33) = swift_isEscapingClosureAtFileLocation();

  if (v33)
  {
    __break(1u);
    goto LABEL_10;
  }

  v38 = v5;
  v39 = v53;
  v51(v38, v53, v2);
  v40 = swift_allocObject();
  (v46)(v40 + v27, v35, v2);
  *(v40 + v28) = v36;
  v41 = swift_allocObject();
  *(v41 + 16) = sub_226CBD830;
  *(v41 + 24) = v40;
  v58 = sub_226B2A194;
  v59 = v41;
  aBlock = MEMORY[0x277D85DD0];
  v55 = 1107296256;
  v56 = sub_226CAD254;
  v57 = &block_descriptor_35;
  v42 = _Block_copy(&aBlock);
  v43 = v36;

  [v43 performBlockAndWait_];
  _Block_release(v42);
  v47(v39, v2);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_10:
    __break(1u);
  }

  return result;
}

uint64_t sub_226CBD394(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  sub_226D6842C();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    v13 = result - v6;
    if (!__OFSUB__(result, v6))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = sub_226D6EDFC();
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    goto LABEL_23;
  }

LABEL_6:
  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || v14 >= &v15[8 * v13])
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_226D6EDFC();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_24;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_226CBD494(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_226D6EDFC();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = sub_226D6EDFC();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  sub_226CEFCA8(result, 1);

  return sub_226CBD394(v5, v3, 0);
}

void *sub_226CBD56C(unint64_t a1)
{
  v29 = MEMORY[0x277D84F98];
  if (a1 >> 62)
  {
LABEL_24:
    v2 = sub_226D6EDFC();
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
      v3 = 0;
      v4 = MEMORY[0x277D84F98];
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x22AA8AFD0](v3, a1);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v7 = *(a1 + 8 * v3 + 32);
          v8 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            __break(1u);
LABEL_23:
            __break(1u);
            goto LABEL_24;
          }
        }

        v28 = v8;
        v9 = v7;
        v10 = [v7 id];
        v11 = sub_226D6E39C();
        v13 = v12;

        v15 = sub_226C2FDD4(v11, v13);
        v16 = v4[2];
        v17 = (v14 & 1) == 0;
        v18 = v16 + v17;
        if (__OFADD__(v16, v17))
        {
          goto LABEL_22;
        }

        v19 = v14;
        if (v4[3] < v18)
        {
          sub_226C35D28(v18, 1);
          v4 = v29;
          v20 = sub_226C2FDD4(v11, v13);
          if ((v19 & 1) != (v21 & 1))
          {
            result = sub_226D6F25C();
            __break(1u);
            return result;
          }

          v15 = v20;
        }

        if (v19)
        {

          v6 = (v4[7] + 8 * v15);
          MEMORY[0x22AA8A610](v5);
          if (*((*v6 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_226D6E61C();
          }

          sub_226D6E65C();
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
          v22 = swift_allocObject();
          *(v22 + 16) = xmmword_226D71F20;
          *(v22 + 32) = v9;
          v4[(v15 >> 6) + 8] |= 1 << v15;
          v23 = (v4[6] + 16 * v15);
          *v23 = v11;
          v23[1] = v13;
          *(v4[7] + 8 * v15) = v22;
          v24 = v4[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_23;
          }

          v4[2] = v26;
        }

        ++v3;
        if (v28 == v2)
        {
          return v4;
        }
      }
    }
  }

  return MEMORY[0x277D84F98];
}

uint64_t block_copy_helper_16(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226CBD848(uint64_t (*a1)(unint64_t, uint64_t))
{
  v2 = *(sub_226D6D4AC() - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = *(v1 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a1(v1 + v3, v4);
}

uint64_t sub_226CBD958(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226CB673C(a1, v4, v5, v6);
}

uint64_t sub_226CBDA0C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226CBDA54(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226CB743C(a1, v4, v5, v6);
}

uint64_t sub_226CBDB08(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v9 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226AE5A84;

  return sub_226CBC6C0(a1, a2, v6, v9, v7, v8);
}

void sub_226CBDBE8(id a1, char a2)
{
  if (a2)
  {
  }
}

unint64_t *sub_226CBDBF4(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22 = result;
  v23 = 0;
  v5 = 0;
  v27 = a3;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  v11 = a4 + 56;
  while (v9)
  {
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_13:
    v24 = v12 | (v5 << 6);
    sub_226AE4FD4(v27[6] + 40 * v24, v26);
    if (*(a4 + 16) && (v15 = sub_226D6EE6C(), v16 = -1 << *(a4 + 32), v17 = v15 & ~v16, ((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) != 0))
    {
      v18 = ~v16;
      while (1)
      {
        sub_226AE4FD4(*(a4 + 48) + 40 * v17, v25);
        v19 = MEMORY[0x22AA8AF20](v25, v26);
        sub_226AE5030(v25);
        if (v19)
        {
          break;
        }

        v17 = (v17 + 1) & v18;
        if (((*(v11 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17) & 1) == 0)
        {
          goto LABEL_5;
        }
      }

      result = sub_226AE5030(v26);
      *(v22 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
        return sub_226CBB988(v22, a2, v23, v27);
      }
    }

    else
    {
LABEL_5:
      result = sub_226AE5030(v26);
    }
  }

  v13 = v5;
  while (1)
  {
    v5 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_226CBB988(v22, a2, v23, v27);
    }

    v14 = *(v6 + 8 * v5);
    ++v13;
    if (v14)
    {
      v12 = __clz(__rbit64(v14));
      v9 = (v14 - 1) & v14;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

unint64_t *sub_226CBDDD8(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = 8 * v7;
  v9 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();

      v10 = sub_226CBB8EC(v12, v7, a1, a2);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_226CBDBF4((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_226CBDF98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AD827C;

  return sub_226CB121C(a1, v4, v5, v6);
}

uint64_t sub_226CBE058(uint64_t a1)
{
  v2 = type metadata accessor for ActivityRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_226CBE0BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226CB634C(a1, v4, v5, v6);
}

uint64_t sub_226CBE170(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226CAD650(a1, v4, v5, v6);
}

uint64_t sub_226CBE26C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226AE5A84;

  return sub_226CAE100();
}

uint64_t sub_226CBE320(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = v2[4];
  v9 = *(v2 + 5);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_226AE5A84;

  return sub_226CBC5F8(a1, a2, v6, v9, v7, v8);
}

uint64_t sub_226CBE400(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226AE5A84;

  return sub_226CB1040(a1, v4, v5, v6);
}

uint64_t objectdestroy_124Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_226CBE52C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_226AE5A84;

  return sub_226CAE070();
}

char *sub_226CBE5E0(uint64_t a1)
{
  sub_226D6842C();
  v3 = sub_226D6840C();
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v4 = MEMORY[0x277D84F90];
  v5 = sub_226D6E91C();
  [v3 setPredicate_];

  v6 = a1;
  v7 = sub_226D6EBBC();
  if (v1)
  {

    return v6;
  }

  v8 = v7;
  if (!(v7 >> 62))
  {
    v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_5;
    }

LABEL_18:

    return MEMORY[0x277D84F90];
  }

  v9 = sub_226D6EDFC();
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_5:
  result = sub_226AE1D68(0, v9 & ~(v9 >> 63), 0);
  if ((v9 & 0x8000000000000000) == 0)
  {
    v28 = v3;
    v6 = v4;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        MEMORY[0x22AA8AFD0](v11, v8);
        v12 = [swift_unknownObjectRetain() id];
        v13 = sub_226D6E39C();
        v15 = v14;
        swift_unknownObjectRelease_n();

        v17 = *(v6 + 16);
        v16 = *(v6 + 24);
        if (v17 >= v16 >> 1)
        {
          sub_226AE1D68((v16 > 1), v17 + 1, 1);
        }

        ++v11;
        *(v6 + 16) = v17 + 1;
        v18 = v6 + 16 * v17;
        *(v18 + 32) = v13;
        *(v18 + 40) = v15;
      }

      while (v9 != v11);
    }

    else
    {
      v19 = 32;
      do
      {
        v20 = *(v8 + v19);
        v21 = [v20 id];
        v22 = sub_226D6E39C();
        v24 = v23;

        v26 = *(v6 + 16);
        v25 = *(v6 + 24);
        if (v26 >= v25 >> 1)
        {
          sub_226AE1D68((v25 > 1), v26 + 1, 1);
        }

        *(v6 + 16) = v26 + 1;
        v27 = v6 + 16 * v26;
        *(v27 + 32) = v22;
        *(v27 + 40) = v24;
        v19 += 8;
        --v9;
      }

      while (v9);
    }

    return v6;
  }

  __break(1u);
  return result;
}

uint64_t sub_226CBE88C(uint64_t a1, uint64_t a2)
{
  v26 = a2;
  v21 = a1;
  v2 = sub_226D6BD9C();
  v22 = *(v2 - 8);
  v23 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_226D69F0C();
  v5 = sub_226D69DDC();
  v24 = v5;
  [v5 setReturnsObjectsAsFaults_];
  v6 = sub_226D6E5CC();
  [v5 setRelationshipKeyPathsForPrefetching_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226D71F30;
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  *(v7 + 32) = sub_226D6E91C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v8 = swift_allocObject();
  v20 = xmmword_226D70840;
  *(v8 + 16) = xmmword_226D70840;
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A5FC0, &unk_226D75DC0);
  *(v8 + 64) = sub_226AC4194(&qword_28105F520, &qword_27D7A5FC0, &unk_226D75DC0, MEMORY[0x277CC9C50]);
  *(v8 + 32) = v21;

  *(v7 + 40) = sub_226D6E91C();
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_226D71F40;
  *(v9 + 32) = sub_226D6E91C();
  v10 = swift_allocObject();
  *(v10 + 16) = v20;
  sub_226D6BD6C();
  LODWORD(v8) = sub_226D6BD7C();
  (*(v22 + 8))(v4, v23);
  v11 = MEMORY[0x277D84A20];
  *(v10 + 56) = MEMORY[0x277D849A8];
  *(v10 + 64) = v11;
  *(v10 + 32) = v8;
  *(v9 + 40) = sub_226D6E91C();
  v12 = sub_226D6E5CC();

  v13 = objc_opt_self();
  v14 = [v13 orPredicateWithSubpredicates_];

  *(v7 + 48) = v14;
  v15 = sub_226D6E5CC();

  v16 = [v13 andPredicateWithSubpredicates_];

  v17 = v24;
  [v24 setPredicate_];

  v18 = sub_226D6EBBC();
  return v18;
}

uint64_t sub_226CBEC80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226CBECE8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_226CBED58()
{
  result = qword_27D7A8CD8;
  if (!qword_27D7A8CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8CD8);
  }

  return result;
}

uint64_t sub_226CBEDAC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_226CBEDF4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_226CBEE50(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226CBEE70(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 40) = v3;
  return result;
}

uint64_t sub_226CBEF40(uint64_t a1, unint64_t a2)
{
  v4 = sub_226D6CCFC();
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x2000000000000000) != 0)
  {
    v8 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v8 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v8)
  {
    v9 = 0;
    v19 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
    v20 = a2 & 0xFFFFFFFFFFFFFFLL;
    v21[3] = "emailMessageID != nil";
    v10 = (v5 + 8);
    while (1)
    {
      if ((a2 & 0x1000000000000000) != 0)
      {
        sub_226D6EEEC();
        v14 = v13;
      }

      else
      {
        if ((a2 & 0x2000000000000000) != 0)
        {
          v21[0] = a1;
          v21[1] = v20;
          v12 = v21 + v9;
        }

        else
        {
          v11 = v19;
          if ((a1 & 0x1000000000000000) == 0)
          {
            v11 = sub_226D6EF4C();
          }

          v12 = (v11 + v9);
        }

        if ((*v12 & 0x80000000) == 0)
        {
          goto LABEL_14;
        }

        v16 = (__clz(*v12 ^ 0xFF) - 24);
        if (v16 > 2)
        {
          if (v16 == 3)
          {
            v14 = 3;
          }

          else
          {
            v14 = 4;
          }

          goto LABEL_15;
        }

        if (v16 == 1)
        {
LABEL_14:
          v14 = 1;
        }

        else
        {
          v14 = 2;
        }
      }

LABEL_15:
      sub_226D6CCBC();
      v15 = sub_226D6CCDC();
      (*v10)(v7, v4);
      if (v15)
      {
        v9 += v14;
        if (v9 < v8)
        {
          continue;
        }
      }

      return v15 & 1;
    }
  }

  v15 = 1;
  return v15 & 1;
}

void sub_226CBF18C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v16[1] = *MEMORY[0x277D85DE8];
  v7 = [objc_opt_self() currentQueryGenerationToken];
  v16[0] = 0;
  v8 = [a1 setQueryGenerationFromToken:v7 error:v16];

  v9 = v16[0];
  if (!v8)
  {
    goto LABEL_8;
  }

  v10 = v16[0];
  sub_226CC0554();
  if (v4)
  {
    return;
  }

  sub_226CC0750();
  sub_226CC0944();
  sub_226CBF2F0(a1, v11, v12, a4);
  v16[0] = 0;
  v13 = [a1 save_];
  v9 = v16[0];
  if (v13)
  {
    v14 = v16[0];
  }

  else
  {
LABEL_8:
    v15 = v9;
    sub_226D6D04C();

    swift_willThrow();
  }
}

void sub_226CBF2F0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v128 = a4;
  v138 = a1;
  v4 = sub_226D6D52C();
  MEMORY[0x28223BE20](v4 - 8);
  v153 = &v105 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v127 = &v105 - v7;
  v8 = sub_226D6D4AC();
  MEMORY[0x28223BE20](v8 - 8);
  v141 = &v105 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v115 = sub_226D6B49C();
  v133 = *(v115 - 8);
  MEMORY[0x28223BE20](v115);
  v116 = &v105 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = sub_226D6708C();
  v132 = *(v129 - 8);
  MEMORY[0x28223BE20](v129);
  v140 = &v105 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v126 = &v105 - v13;
  MEMORY[0x28223BE20](v14);
  v142 = (&v105 - v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE8, &qword_226D7AFD8);
  MEMORY[0x28223BE20](v16 - 8);
  v139 = &v105 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v143 = (&v105 - v19);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6898, &unk_226D75B90);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v105 - v21;
  v23 = sub_226D670CC();
  v117 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v25 = &v105 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v105 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v105 - v30;
  v32 = sub_226D69D0C();
  v33 = sub_226D69CBC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_226D71F20;
  sub_226B2A4F4();
  *(v34 + 32) = sub_226D6E91C();
  v35 = sub_226D6E5CC();

  v36 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v33 setPredicate_];
  v37 = v32;
  v38 = v154;
  v39 = sub_226D6EBBC();
  v152 = v38;
  if (v38)
  {

    return;
  }

  v40 = v117;
  v151 = v31;
  v124 = v28;
  v125 = v25;
  v150 = v23;
  v145 = v22;
  v41 = v129;
  v149 = v39;
  if (v39 >> 62)
  {
LABEL_41:
    v42 = sub_226D6EDFC();
    v39 = v149;
  }

  else
  {
    v42 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v43 = v142;
  v44 = v153;
  v112 = v33;
  if (!v42)
  {
LABEL_38:

    return;
  }

  v122 = v37;
  v37 = 0;
  v147 = v39 & 0xFFFFFFFFFFFFFF8;
  v148 = v39 & 0xC000000000000001;
  v144 = (v40 + 48);
  v136 = (v132 + 11);
  v137 = (v40 + 32);
  v135 = *MEMORY[0x277CC6AC8];
  v121 = *MEMORY[0x277CC6AB8];
  v114 = *MEMORY[0x277CC6AC0];
  v113 = *MEMORY[0x277CC6AD0];
  v111 = *MEMORY[0x277CC6AB0];
  v107 = *MEMORY[0x277CC6AA8];
  v134 = (v132 + 7);
  v123 = (v132 + 1);
  v131 = (v132 + 12);
  v130 = (v132 + 13);
  v110 = (v133 + 4);
  v133 = (v132 + 6);
  v120 = (v132 + 4);
  v119 = (v132 + 2);
  v118 = (v40 + 16);
  v132 = (v40 + 8);
  v40 = *MEMORY[0x277CC6AA0];
  v146 = v42;
  v106 = v40;
  while (1)
  {
    if (v148)
    {
      v45 = MEMORY[0x22AA8AFD0](v37, v39);
      v46 = (v37 + 1);
      if (__OFADD__(v37, 1))
      {
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }
    }

    else
    {
      if (v37 >= *(v147 + 16))
      {
        __break(1u);
        goto LABEL_41;
      }

      v45 = *(v39 + 8 * v37 + 32);
      v46 = (v37 + 1);
      if (__OFADD__(v37, 1))
      {
        goto LABEL_37;
      }
    }

    v47 = v44;
    v154 = v45;
    v48 = [v45 emailMessageID];
    if (!v48)
    {
      break;
    }

    v49 = v48;
    v153 = v46;
    v50 = sub_226D6E39C();
    v40 = v51;

    if (sub_226D6E43C() == 64)
    {
      v52 = v152;
      v53 = sub_226CBEF40(v50, v40);
      v152 = v52;

      v44 = v47;
      v54 = v151;
      if (v53)
      {

        goto LABEL_8;
      }
    }

    else
    {

      v44 = v47;
      v54 = v151;
    }

    v33 = v154;
    v55 = v145;
    sub_226D69C8C();
    v40 = v150;
    if ((*v144)(v55, 1, v150) == 1)
    {

      sub_226AC47B0(v55, &qword_27D7A6898, &unk_226D75B90);
      goto LABEL_8;
    }

    (*v137)(v54, v55, v40);
    sub_226D670AC();
    v56 = (*v136)(v43, v41);
    v57 = v135;
    if (v56 == v135 || (v57 = v121, v56 == v121) || (v57 = v114, v56 == v114))
    {
LABEL_21:
      (*v131)(v43, v41);
      v58 = *v43;
      v59 = v43[1];
      v33 = v41;
      v60 = v43[2];
      v61 = v43[3];
      v62 = sub_226CC019C(v58, v59);
      v64 = v63;

      v65 = v143;
      *v143 = v62;
      v65[1] = v64;
      v44 = v47;
      v66 = v65;
      v65[2] = v60;
      v65[3] = v61;
      goto LABEL_22;
    }

    if (v56 == v113)
    {
      (*v131)(v43, v41);
      v82 = *v43;
      v83 = v43[1];
      v84 = v43[3];
      v117 = v43[2];
      v109 = v84;
      v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A66B8, &unk_226D718D0);
      v33 = v41;
      v86 = *v110;
      v87 = v43 + *(v85 + 64);
      v88 = v115;
      (*v110)(v116, v87, v115);
      v108 = *(v85 + 64);
      v89 = sub_226CC019C(v82, v83);
      v91 = v90;

      v92 = v143;
      *v143 = v89;
      v92[1] = v91;
      v44 = v47;
      v66 = v92;
      v93 = v109;
      v66[2] = v117;
      v66[3] = v93;
      v86(v66 + v108, v116, v88);
      v68 = v33;
      (*v130)(v66, v113, v33);
      goto LABEL_23;
    }

    v57 = v111;
    if (v56 == v111)
    {
      goto LABEL_21;
    }

    v57 = v107;
    if (v56 == v107)
    {
      goto LABEL_21;
    }

    v57 = v106;
    if (v56 == v106)
    {
      (*v131)(v43, v41);
      v94 = *v43;
      v95 = v43[1];
      v96 = v43[2];
      v97 = v43[3];
      v33 = v41;
      v98 = v43[4];
      v99 = v43[5];
      v117 = sub_226CC019C(v94, v95);
      v109 = v100;

      v101 = sub_226CC019C(v96, v97);
      v103 = v102;
      v44 = v47;

      v66 = v143;
      v104 = v109;
      *v143 = v117;
      v66[1] = v104;
      v66[2] = v101;
      v66[3] = v103;
      v66[4] = v98;
      v66[5] = v99;
LABEL_22:
      v67 = v57;
      v68 = v33;
      (*v130)(v66, v67, v33);
LABEL_23:
      (*v134)(v66, 0, 1, v33);
      goto LABEL_24;
    }

    v66 = v143;
    (*v134)(v143, 1, 1, v41);
    (*v123)(v43, v41);
    v68 = v41;
LABEL_24:
    v69 = v140;
    v40 = v139;
    sub_226CC0BF0(v66, v139);
    if ((*v133)(v40, 1, v68) == 1)
    {

      sub_226AC47B0(v66, &qword_27D7A8CE8, &qword_226D7AFD8);
      (*v132)(v151, v150);
      sub_226AC47B0(v40, &qword_27D7A8CE8, &qword_226D7AFD8);
      v41 = v68;
      v43 = v142;
    }

    else
    {
      v70 = v44;
      v71 = v126;
      (*v120)(v126, v40, v68);
      (*v119)(v69, v71, v68);
      v72 = v151;
      sub_226D670BC();
      v73 = *(v128 + 16);
      v74 = (*(*v73 + 48) + 3) & 0x1FFFFFFFCLL;
      os_unfair_lock_lock((v73 + v74));
      v75 = v152;
      sub_226CC4EC4(v127);
      v152 = v75;
      v48 = (v73 + v74);
      if (v75)
      {
        goto LABEL_43;
      }

      os_unfair_lock_unlock(v48);
      sub_226D6D51C();
      v76 = v124;
      sub_226D6709C();
      v77 = v150;
      (*v118)(v125, v76, v150);
      v78 = v138;
      v79 = sub_226D69CEC();

      v40 = v77;
      v80 = v71;
      v44 = v70;
      v33 = v129;
      (*v123)(v80, v129);
      sub_226AC47B0(v143, &qword_27D7A8CE8, &qword_226D7AFD8);
      v81 = *v132;
      (*v132)(v72, v40);
      v81(v76, v40);
      v41 = v33;
      v43 = v142;
    }

LABEL_8:
    ++v37;
    v39 = v149;
    if (v153 == v146)
    {
      goto LABEL_38;
    }
  }

  __break(1u);
LABEL_43:
  os_unfair_lock_unlock(v48);
  __break(1u);
}

void sub_226CC00DC(uint64_t a1)
{
  v1 = sub_226D676AC();
  sub_226D6EB7C();
}

uint64_t sub_226CC019C(uint64_t a1, uint64_t a2)
{
  v2 = sub_226D6E29C();
  v21 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_226D6E3DC();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D6E21C();
  v22 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6E3BC();
  v12 = sub_226D6E3AC();
  v14 = v13;
  result = (*(v6 + 8))(v8, v5);
  if (v14 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_226B3FA78(&qword_27D7A6E00, MEMORY[0x277CC5540], MEMORY[0x277CC5538]);
    sub_226D6E20C();
    sub_226B11B44(v12, v14);
    sub_226B3F488(v12, v14, v4);
    sub_226B3FAEC(v12, v14);
    sub_226D6E1FC();
    sub_226B3FAEC(v12, v14);
    (*(v21 + 8))(v4, v2);
    v26 = v9;
    v27 = sub_226B3FA78(&qword_27D7A6E08, MEMORY[0x277CC5290], MEMORY[0x277CC5280]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v25);
    v17 = v22;
    (*(v22 + 16))(boxed_opaque_existential_1, v11, v9);
    __swift_project_boxed_opaque_existential_1(v25, v26);
    sub_226D6CEFC();
    v18 = v23;
    v19 = v24;
    __swift_destroy_boxed_opaque_existential_0Tm(v25);
    v25[0] = v18;
    v25[1] = v19;
    sub_226C61B28();
    v20 = sub_226D6CD0C();
    (*(v17 + 8))(v11, v9);
    sub_226B11B98(v18, v19);
    return v20;
  }

  return result;
}

void sub_226CC0554()
{
  sub_226D6BECC();
  v1 = sub_226D6BEBC();
  sub_226B2A4F4();
  v2 = sub_226D6E91C();
  [v1 setPredicate_];

  v3 = sub_226D6EBBC();
  if (v0)
  {

    return;
  }

  v4 = v3;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_13:

    return;
  }

  v5 = sub_226D6EDFC();
  if (!v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  if (v5 >= 1)
  {
    for (i = 0; i != v5; ++i)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA8AFD0](i, v4);
      }

      else
      {
        v7 = *(v4 + 8 * i + 32);
      }

      v8 = v7;
      v9 = [v7 messageID];
      if (v9)
      {
        v10 = v9;
        v11 = sub_226D6E39C();
        v13 = v12;

        sub_226CC019C(v11, v13);

        v14 = sub_226D6E36C();

        [v8 setMessageIDHash_];
      }
    }

    goto LABEL_13;
  }

  __break(1u);
}

void sub_226CC0750()
{
  sub_226D69D3C();
  v1 = sub_226D69D1C();
  sub_226B2A4F4();
  v2 = sub_226D6E91C();
  [v1 setPredicate_];

  v3 = sub_226D6EBBC();
  if (v0)
  {

    return;
  }

  v4 = v3;
  if (!(v3 >> 62))
  {
    v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v5)
    {
      goto LABEL_5;
    }

LABEL_11:

    return;
  }

  v5 = sub_226D6EDFC();
  if (!v5)
  {
    goto LABEL_11;
  }

LABEL_5:
  if (v5 >= 1)
  {
    v6 = 0;
    do
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x22AA8AFD0](v6, v4);
      }

      else
      {
        v7 = *(v4 + 8 * v6 + 32);
      }

      v8 = v7;
      ++v6;
      v9 = [v7 messageID];
      v10 = sub_226D6E39C();
      v12 = v11;

      sub_226CC019C(v10, v12);

      v13 = sub_226D6E36C();

      [v8 setMessageIDHash_];
    }

    while (v5 != v6);
    goto LABEL_11;
  }

  __break(1u);
}

void sub_226CC0944()
{
  sub_226D6990C();
  v1 = sub_226D6989C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_226D71F40;
  sub_226B2A4F4();
  *(v2 + 32) = sub_226D6E91C();
  *(v2 + 40) = sub_226D6E91C();
  v3 = sub_226D6E5CC();

  v4 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v1 setPredicate_];
  v5 = sub_226D6EBBC();
  if (v0)
  {

    return;
  }

  v6 = v5;
  if (!(v5 >> 62))
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v7)
    {
      goto LABEL_5;
    }

LABEL_16:

    return;
  }

  v7 = sub_226D6EDFC();
  if (!v7)
  {
    goto LABEL_16;
  }

LABEL_5:
  v17 = v1;
  if (v7 < 1)
  {
    __break(1u);
  }

  else
  {
    v8 = 0;
    do
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v14 = MEMORY[0x22AA8AFD0](v8, v6);
      }

      else
      {
        v14 = *(v6 + 8 * v8 + 32);
      }

      v15 = v14;
      v16 = [v14 merchantEmailMessageID];
      if (v16)
      {
        v9 = v16;
        v10 = sub_226D6E39C();
        v12 = v11;

        sub_226CC019C(v10, v12);
        swift_bridgeObjectRelease_n();
        v13 = sub_226D6E36C();
      }

      else
      {
        v13 = 0;
      }

      ++v8;
      [v15 setMerchantEmailMessageIDHash_];
    }

    while (v7 != v8);
  }
}

uint64_t sub_226CC0BF0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8CE8, &qword_226D7AFD8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t BankConnectServiceImplementation.updateConsentStatus(forConsentID:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = sub_226D6D4AC();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CC0D24, 0, 0);
}

uint64_t sub_226CC0D24()
{
  v23 = v0;
  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[5];
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_226D6BAAC();
  v4 = sub_226D676AC();
  v0[11] = v4;

  v5 = swift_task_alloc();
  v5[2] = v3;
  v5[3] = v1;
  v5[4] = v4;
  sub_226D6EB8C();

  v6 = v0[3];
  v0[12] = v0[2];
  v0[13] = v6;
  sub_226D6D46C();
  if (qword_27D7A5F60 != -1)
  {
    swift_once();
  }

  v7 = sub_226D6E07C();
  v0[14] = __swift_project_value_buffer(v7, qword_27D7A7D10);

  v8 = sub_226D6E05C();
  v9 = sub_226D6E9AC();

  if (os_log_type_enabled(v8, v9))
  {
    v11 = v0[5];
    v10 = v0[6];
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v12 = 136315138;
    *(v12 + 4) = sub_226AC4530(v11, v10, v22);
    _os_log_impl(&dword_226AB4000, v8, v9, "Fetching and updating consent status for consentID: %s.", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  v14 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  v22[3] = &type metadata for BankConnectEnvironmentImplementation;
  v22[4] = sub_226B41FC0();
  v22[0] = swift_allocObject();
  sub_226B42014(v14, v22[0] + 16);
  v15 = sub_226D6BF3C();
  swift_allocObject();
  v16 = sub_226D6BF2C();
  v0[15] = v16;
  v0[4] = v16;
  v17 = swift_task_alloc();
  v0[16] = v17;
  *v17 = v0;
  v17[1] = sub_226CC106C;
  v19 = v0[5];
  v18 = v0[6];
  v20 = MEMORY[0x277CC81A8];

  return MEMORY[0x28211A700](v19, v18, v15, v20);
}

uint64_t sub_226CC106C()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = sub_226CC124C;
  }

  else
  {
    v2 = sub_226CC1180;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226CC1180()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[8];
  v6 = v0[9];
  v7 = v0[7];

  sub_226CC15FC(v7, v1, v2, v3);

  (*(v6 + 8))(v3, v5);

  v8 = v0[1];

  return v8();
}

uint64_t sub_226CC124C()
{
  v26 = v0;
  v1 = v0[17];

  v2 = v1;
  v3 = sub_226D6E05C();
  v4 = sub_226D6E9CC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v7 = v0[5];
    v6 = v0[6];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v25 = v10;
    *v8 = 136315394;
    *(v8 + 4) = sub_226AC4530(v7, v6, &v25);
    *(v8 + 12) = 2112;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_226AB4000, v3, v4, "Failed to fetch and update consent status for consentID: %s with: %@.", v8, 0x16u);
    sub_226B17298(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v10);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  v13 = v0[17];
  v15 = v0[12];
  v14 = v0[13];
  v16 = v0[10];
  v17 = v0[11];
  v18 = v0[9];
  v24 = v0[8];
  v19 = v0[7];
  v20 = sub_226D6A0DC();
  sub_226BD7738();
  swift_allocError();
  *v21 = v13;
  (*(*(v20 - 8) + 104))(v21, *MEMORY[0x277CC7AB0], v20);
  swift_willThrow();
  sub_226CC15FC(v19, v15, v14, v16);

  (*(v18 + 8))(v16, v24);

  v22 = v0[1];

  return v22();
}

void sub_226CC14C4(uint64_t *a4@<X8>)
{
  sub_226D6842C();
  v6 = sub_226D683FC();
  if (!v4)
  {
    if (v6)
    {
      v7 = v6;
      v8 = [v6 id];
      v9 = sub_226D6E39C();
      v11 = v10;

      *a4 = v9;
      a4[1] = v11;
    }

    else
    {
      v12 = sub_226D6A0DC();
      sub_226BD7738();
      swift_allocError();
      (*(*(v12 - 8) + 104))(v13, *MEMORY[0x277CC7AB8], v12);
      swift_willThrow();
    }
  }
}

uint64_t sub_226CC15FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_226D6D4AC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D6D46C();
  v11 = __swift_project_boxed_opaque_existential_1((a1 + 16), *(a1 + 40));
  sub_226AE532C((v11 + 41), v17);
  __swift_project_boxed_opaque_existential_1(v17, v17[3]);
  sub_226D6D3BC();
  v13 = v12;
  v16[3] = &_s24InstitutionDurationEventVN;
  v16[4] = sub_226B420B8();
  v14 = swift_allocObject();
  v16[0] = v14;
  v14[2] = 0xD000000000000032;
  v14[3] = 0x8000000226D86FB0;
  v14[4] = a2;
  v14[5] = a3;
  v14[6] = v13;

  sub_226D69AFC();
  (*(v8 + 8))(v10, v7);
  __swift_destroy_boxed_opaque_existential_0Tm(v16);
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t type metadata accessor for OrderWebServiceRequestTokenTask(uint64_t a1)
{
  result = qword_27D7A8CF0;
  if (!qword_27D7A8CF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_226CC181C(uint64_t a1)
{
  sub_226B20350(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t sub_226CC18A0(uint64_t a1)
{
  v2[7] = a1;
  v2[8] = v1;
  type metadata accessor for OrderWebServiceRequestTokenTask(0);
  v2[9] = swift_task_alloc();
  v2[10] = swift_task_alloc();
  v2[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CC1948, 0, 0);
}

uint64_t sub_226CC1948()
{
  v32 = v0;
  if (qword_28105F5B8 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  v3 = sub_226D6E07C();
  *(v0 + 96) = __swift_project_value_buffer(v3, qword_28105F5C0);
  sub_226CC28BC(v2, v1);
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9EC();
  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 88);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v31[0] = v9;
    *v8 = 136315138;
    v10 = *v7;
    v11 = v7[1];

    sub_226CC293C(v7, type metadata accessor for OrderWebServiceRequestTokenTask);
    v12 = sub_226AC4530(v10, v11, v31);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_226AB4000, v4, v5, "Starting request token task for order type %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  else
  {

    sub_226CC293C(v7, type metadata accessor for OrderWebServiceRequestTokenTask);
  }

  v13 = *(v0 + 64);
  v14 = sub_226D676AC();
  *(v0 + 104) = v14;
  v15 = swift_task_alloc();
  *(v15 + 16) = v13;
  *(v15 + 24) = v14;
  sub_226D6EB7C();

  if (*(v0 + 128) == 1)
  {
    sub_226AE532C(*(v0 + 56) + 96, v0 + 16);
    v16 = sub_226D6E05C();
    v17 = sub_226D6E9EC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_226AB4000, v16, v17, "Updating enabled topics", v18, 2u);
      MEMORY[0x22AA8BEE0](v18, -1, -1);
    }

    __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
    v19 = swift_task_alloc();
    *(v0 + 112) = v19;
    *v19 = v0;
    v19[1] = sub_226CC1E24;

    return sub_226D0A5C4();
  }

  else
  {
    sub_226CC28BC(*(v0 + 64), *(v0 + 72));
    v21 = sub_226D6E05C();
    v22 = sub_226D6E9EC();
    v23 = os_log_type_enabled(v21, v22);
    v24 = *(v0 + 72);
    if (v23)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v31[0] = v26;
      *v25 = 136315138;
      v27 = *v24;
      v28 = v24[1];

      sub_226CC293C(v24, type metadata accessor for OrderWebServiceRequestTokenTask);
      v29 = sub_226AC4530(v27, v28, v31);

      *(v25 + 4) = v29;
      _os_log_impl(&dword_226AB4000, v21, v22, "Order type %s not found", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v26);
      MEMORY[0x22AA8BEE0](v26, -1, -1);
      MEMORY[0x22AA8BEE0](v25, -1, -1);
    }

    else
    {

      sub_226CC293C(v24, type metadata accessor for OrderWebServiceRequestTokenTask);
    }

    v30 = *(v0 + 8);

    return v30();
  }
}

uint64_t sub_226CC1E24()
{

  return MEMORY[0x2822009F8](sub_226CC1F20, 0, 0);
}

uint64_t sub_226CC1F20()
{
  v16 = v0;
  sub_226CC28BC(v0[8], v0[10]);
  v1 = sub_226D6E05C();
  v2 = sub_226D6E9EC();
  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[10];
  if (v3)
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    v7 = *v4;
    v8 = v4[1];

    sub_226CC293C(v4, type metadata accessor for OrderWebServiceRequestTokenTask);
    v9 = sub_226AC4530(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_226AB4000, v1, v2, "Requesting token for order type %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v6);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
    MEMORY[0x22AA8BEE0](v5, -1, -1);
  }

  else
  {

    sub_226CC293C(v4, type metadata accessor for OrderWebServiceRequestTokenTask);
  }

  v10 = v0[8];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_task_alloc();
  v0[15] = v13;
  *v13 = v0;
  v13[1] = sub_226CC2104;

  return sub_226D0B2F4(v12, v11);
}

uint64_t sub_226CC2104()
{

  return MEMORY[0x2822009F8](sub_226CC2200, 0, 0);
}

uint64_t sub_226CC2200()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

void sub_226CC2288(void *a2@<X1>, char *a3@<X8>)
{
  v17[1] = *MEMORY[0x277D85DE8];
  v6 = sub_226D6D4AC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226D67FDC();
  v10 = sub_226D67FBC();
  if (!v3)
  {
    v11 = v10;
    if (!v10)
    {
      v15 = 0;
      goto LABEL_7;
    }

    v12 = [v10 requestTokenAttemptCount];
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    [v11 setRequestTokenAttemptCount_];
    sub_226D6D46C();
    v13 = sub_226D6D3EC();
    (*(v7 + 8))(v9, v6);
    [v11 setLastRequestTokenAttemptDate_];

    v17[0] = 0;
    if ([a2 save_])
    {
      v14 = v17[0];

      v15 = 1;
LABEL_7:
      *a3 = v15;
      return;
    }

    v16 = v17[0];
    sub_226D6D04C();

    swift_willThrow();
  }
}

double sub_226CC2480@<D0>(void *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  *a1 = v3;
  a1[1] = v4;
  type metadata accessor for OrderWebServiceTaskIdentifier(0);
  swift_storeEnumTagMultiPayload();

  return result;
}

uint64_t sub_226CC24D4()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8630, &unk_226D79550);
  v1 = *(type metadata accessor for OrderWebServiceTaskExclusivityIdentifier(0) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_226D70840;
  v4 = (v3 + v2);
  v5 = *v0;
  v6 = v0[1];
  *v4 = v5;
  v4[1] = v6;
  swift_storeEnumTagMultiPayload();

  v7 = sub_226B1FBC0(v3);
  swift_setDeallocating();
  sub_226CC293C(v4, type metadata accessor for OrderWebServiceTaskExclusivityIdentifier);
  swift_deallocClassInstance();
  return v7;
}

uint64_t sub_226CC25F4(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226AD827C;

  return sub_226CC18A0(a1);
}

unint64_t sub_226CC2688()
{
  sub_226D6EEFC();

  MEMORY[0x22AA8A510](*v0, v0[1]);
  MEMORY[0x22AA8A510](41, 0xE100000000000000);
  return 0xD000000000000028;
}

uint64_t sub_226CC2708(uint64_t a1)
{
  *(a1 + 8) = sub_226CC2874(&qword_27D7A8D00, type metadata accessor for OrderWebServiceRequestTokenTask, &unk_226D7B054);
  result = sub_226CC2874(&qword_27D7A8D08, type metadata accessor for OrderWebServiceRequestTokenTask, &unk_226D7B038);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_226CC281C(uint64_t a1)
{
  result = sub_226CC2874(&qword_27D7A8D10, type metadata accessor for OrderWebServiceRequestTokenTask, &unk_226D7B010);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_226CC2874(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226CC28BC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OrderWebServiceRequestTokenTask(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CC293C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_226CC29A0()
{
  v1 = v0;
  v2 = 0xD000000000000031;
  v3 = sub_226D6921C();
  MEMORY[0x28223BE20](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CC2D10(v1, v5, MEMORY[0x277CC77F8]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D30, &qword_226D79790) + 48);
      v8 = sub_226D6B49C();
      v9 = *(*(v8 - 8) + 8);
      v9(&v5[v7], v8);
      v9(v5, v8);
      return 0xD000000000000032;
    }

    else
    {
      return 0xD000000000000040;
    }
  }

  else
  {
    sub_226CC2D78(v5, MEMORY[0x277CC77F8]);
  }

  return v2;
}

unint64_t sub_226CC2B20()
{
  v1 = v0;
  v2 = 0xD000000000000043;
  v3 = sub_226D66DFC();
  MEMORY[0x28223BE20](v3);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CC2D10(v1, v5, MEMORY[0x277CC6528]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v7 = sub_226D6D4AC();
        (*(*(v7 - 8) + 8))(v5, v7);
      }

      else
      {
        return 0xD00000000000003ALL;
      }
    }

    else if (EnumCaseMultiPayload != 4)
    {
      sub_226CC2D78(v5, MEMORY[0x277CC6528]);
      return 0xD000000000000030;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      return 0xD000000000000034;
    }

    else
    {
      sub_226B905C4(v5);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_226CC2D78(v5, MEMORY[0x277CC6528]);
    return 0xD000000000000032;
  }

  else
  {
    sub_226CC2D78(v5, MEMORY[0x277CC6528]);
    return 0xD00000000000003BLL;
  }

  return v2;
}

uint64_t sub_226CC2D10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_226CC2D78(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_226CC2DF0(uint64_t a1)
{
  v2 = sub_226D6ED6C();
  if (v2 == 1 << *(a1 + 32))
  {
    return 0;
  }

  v4 = sub_226CCD230(v2, *(a1 + 36), 0, a1);

  return v4;
}

uint64_t sub_226CC2E6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_226D6ED6C();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    sub_226CCCEEC(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = sub_226D6D52C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_226CC2F28(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v25 = a2;
  v24 = a3;
  v23 = sub_226D670CC();
  v5 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_226D6D4AC();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_226D6D52C();
  MEMORY[0x28223BE20](v9 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v22 - v11;
  v13 = sub_226D6708C();
  v14 = MEMORY[0x28223BE20](v13);
  (*(v16 + 16))(v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v14);
  v17 = *(v3 + 16);
  v18 = (*(*v17 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v17 + v18));
  v19 = v22[1];
  sub_226CC4EC4(v12);
  os_unfair_lock_unlock((v17 + v18));
  if (v19)
  {
    __break(1u);
  }

  else
  {
    sub_226D6D51C();
    sub_226D6D46C();
    v20 = v24;
    sub_226D6709C();
    sub_226D69D0C();
    (*(v5 + 16))(v7, v20, v23);
    v21 = v25;
  }
}

void sub_226CC3218(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = v5;
  v74 = a4;
  v73 = a3;
  v69 = sub_226D670CC();
  v72 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v10 = &v54 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_226D6708C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v67 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_226CC2DF0(a1);
  if (!v15)
  {
    return;
  }

  v16 = v14;
  v17 = v15;
  v70 = v12;
  v63 = v4;
  v61 = v11;
  v62 = v10;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A62D8, &unk_226D74950);
  v19 = a2;
  inited = swift_initStackObject();
  v68 = xmmword_226D70840;
  *(inited + 16) = xmmword_226D70840;
  *(inited + 32) = v16;
  *(inited + 40) = v17;

  v21 = v16;
  v22 = sub_226B1EC00(inited);
  swift_setDeallocating();
  sub_226BC751C(inited + 32);
  sub_226BDF504(v22, v19, v73, v74);
  v24 = v23;

  if (v5)
  {
LABEL_31:

    return;
  }

  v60 = v18;
  v59 = v21;
  v66 = v19;
  v75 = v24;
  v25 = a1 + 56;
  v26 = 1 << *(a1 + 32);
  if (v26 < 64)
  {
    v27 = ~(-1 << v26);
  }

  else
  {
    v27 = -1;
  }

  v28 = v27 & *(a1 + 56);
  v29 = (v26 + 63) >> 6;
  v57 = *MEMORY[0x277CC6AA0];
  v56 = (v70 + 104);
  v55 = (v72 + 8);
  v58 = (v70 + 8);
  v70 = a1;

  v30 = 0;
  v71 = v17;
  v31 = v67;
  v65 = v25;
  for (i = v29; v28; v29 = i)
  {
LABEL_11:
    v72 = v6;
    v33 = __clz(__rbit64(v28));
    v28 &= v28 - 1;
    v34 = (*(v70 + 48) + ((v30 << 10) | (16 * v33)));
    v36 = *v34;
    v35 = v34[1];
    v37 = v75;
    if (*(v75 + 16))
    {
      sub_226D6F2FC();

      sub_226D6E42C();
      v38 = sub_226D6F35C();
      v39 = -1 << *(v37 + 32);
      v40 = v38 & ~v39;
      if ((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40))
      {
        v41 = ~v39;
        while (1)
        {
          v42 = (*(v37 + 48) + 16 * v40);
          v43 = *v42 == v36 && v42[1] == v35;
          if (v43 || (sub_226D6F21C() & 1) != 0)
          {
            break;
          }

          v40 = (v40 + 1) & v41;
          if (((*(v37 + 56 + ((v40 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v40) & 1) == 0)
          {
            goto LABEL_22;
          }
        }

        v6 = v72;
        goto LABEL_28;
      }
    }

    else
    {
    }

LABEL_22:
    v44 = swift_initStackObject();
    *(v44 + 16) = v68;
    *(v44 + 32) = v36;
    *(v44 + 40) = v35;

    v45 = sub_226B1EC00(v44);
    swift_setDeallocating();
    sub_226BC751C(v44 + 32);
    v46 = v72;
    sub_226BDF504(v45, v66, v73, v74);
    v6 = v46;
    if (v46)
    {

      return;
    }

    v48 = v47;

    sub_226C993BC(v48, v37);
    if (v49)
    {
      *v31 = v36;
      v31[1] = v35;
      v50 = v71;
      v31[2] = v59;
      v31[3] = v50;
      v51 = v73;
      v31[4] = v66;
      v31[5] = v51;
      v52 = v61;
      (*v56)(v31, v57, v61);

      v53 = v62;
      sub_226CC2F28(v31, v74, v62);
      (*v55)(v53, v69);
      (*v58)(v31, v52);
    }

    else
    {
    }

    sub_226B04404(v48);
LABEL_28:
    v25 = v65;
  }

  while (1)
  {
    v32 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    if (v32 >= v29)
    {

      goto LABEL_31;
    }

    v28 = *(v25 + 8 * v32);
    ++v30;
    if (v28)
    {
      v30 = v32;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_226CC3898(uint64_t a1, void *a2)
{
  v4 = v3;
  v182 = a2;
  v6 = sub_226D6D4AC();
  MEMORY[0x28223BE20](v6 - 8);
  v169 = &v139 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v8 - 8);
  v164 = &v139 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v162 = &v139 - v11;
  v171 = sub_226D6D52C();
  v12 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v176 = &v139 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v168 = &v139 - v15;
  v161 = sub_226D670CC();
  v16 = *(v161 - 8);
  MEMORY[0x28223BE20](v161);
  v167 = &v139 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v157 = &v139 - v19;
  MEMORY[0x28223BE20](v20);
  v158 = &v139 - v21;
  v179 = sub_226D6708C();
  MEMORY[0x28223BE20](v179);
  v178 = &v139 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v177 = (&v139 - v24);
  MEMORY[0x28223BE20](v25);
  v159 = (&v139 - v26);
  MEMORY[0x28223BE20](v27);
  v180 = (&v139 - v29);
  v30 = MEMORY[0x277D84FA0];
  v189 = MEMORY[0x277D84FA0];
  v31 = a1 + 56;
  v32 = 1 << *(a1 + 32);
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  else
  {
    v33 = -1;
  }

  v34 = v33 & *(a1 + 56);
  v35 = (v32 + 63) >> 6;
  v156 = *MEMORY[0x277CC6AF0];
  v173 = (v28 + 104);
  v160 = (v16 + 8);
  v174 = (v28 + 8);
  v172 = *MEMORY[0x277CC6A98];
  v166 = (v28 + 16);
  v175 = "userDefaultsLock";
  v170 = (v12 + 48);
  v165 = (v12 + 32);
  v163 = (v12 + 8);
  v194 = a1;

  v185 = 0;
  v184 = 0;
  v186 = 0;
  v36 = 0;
  v37 = 0;
  v183 = MEMORY[0x277D84F90];
  v181 = xmmword_226D70840;
  while (1)
  {
    v38 = v37;
    v39 = v36;
    if (!v34)
    {
      goto LABEL_7;
    }

    while (1)
    {
      v37 = v38;
LABEL_10:
      v40 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v41 = *(v194 + 48) + 56 * (v40 | (v37 << 6));
      v43 = *(v41 + 16);
      v42 = *(v41 + 32);
      v44 = *v41;
      v193 = *(v41 + 48);
      v191 = v43;
      v192 = v42;
      v190 = v44;
      sub_226AE50D8(&v190, v187);
      if ((sub_226D4DAB0(&v190, v30) & 1) == 0)
      {
        break;
      }

      sub_226B16458(&v190);
      v38 = v37;
      if (!v34)
      {
LABEL_7:
        while (1)
        {
          v37 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            break;
          }

          if (v37 >= v35)
          {
            sub_226CC51D0(v185, v184);

            goto LABEL_61;
          }

          v34 = *(v31 + 8 * v37);
          ++v38;
          if (v34)
          {
            goto LABEL_10;
          }
        }

        __break(1u);
        goto LABEL_63;
      }
    }

    v154 = v2;
    v153 = sub_226D69D0C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A68A0, &unk_226D75900);
    inited = swift_initStackObject();
    *(inited + 16) = v181;
    v46 = v193;
    v48 = v191;
    v47 = v192;
    *(inited + 32) = v190;
    *(inited + 48) = v48;
    *(inited + 64) = v47;
    *(inited + 80) = v46;
    v49 = v4;
    v50 = sub_226B1E2BC(inited);
    swift_setDeallocating();
    sub_226B16458(inited + 32);
    sub_226B132E8(v50, v182);
    v155 = v49;
    if (v49)
    {
LABEL_63:

      sub_226CC51D0(v185, v184);
      goto LABEL_64;
    }

    v52 = v51;

    sub_226C98C10(v52, v30);
    if ((v53 & 1) == 0)
    {
      v71 = v185;
      v152 = v186;
      v72 = v52;
      goto LABEL_47;
    }

    v148 = 0;
    v151 = 0;
    v147 = 0;
    v149 = 0;
    v54 = 0;
    v55 = v52 + 56;
    v56 = 1 << *(v52 + 32);
    v57 = v56 < 64 ? ~(-1 << v56) : -1;
    v58 = v57 & *(v52 + 56);
    v59 = v52;
    v60 = (v56 + 63) >> 6;
    v61 = (&v181 + 8);
    while (2)
    {
      *(v61 - 32) = v59;

      v62 = v180;
      v63 = v186;
      v64 = v185;
LABEL_21:
      if (v58)
      {
        goto LABEL_26;
      }

      do
      {
        v65 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          __break(1u);
          goto LABEL_66;
        }

        if (v65 >= v60)
        {
          v73 = v186;
          v74 = v185;

          v75 = v74;
          v76 = v184;
          v77 = v73;
          v78 = v155;
          goto LABEL_32;
        }

        v58 = *(v55 + 8 * v65);
        ++v54;
      }

      while (!v58);
      v54 = v65;
LABEL_26:
      v66 = __clz(__rbit64(v58));
      v58 &= v58 - 1;
      v67 = *(v150 + 48) + 56 * (v66 | (v54 << 6));
      if (!*(v67 + 48))
      {
        if (!v184)
        {
          if (!v151)
          {
            v68 = *(v67 + 8);
            v148 = *v67;
            v70 = *(v67 + 16);
            v69 = *(v67 + 24);
            v147 = v70;
            v152 = v69;
            v151 = v68;

            v59 = v152;
            v61 = &v181;
            continue;
          }

          goto LABEL_21;
        }

        v99 = *(v67 + 8);
        v152 = *v67;
        v100 = *(v67 + 16);
        v101 = *(v67 + 24);
        v103 = *(v67 + 32);
        v102 = *(v67 + 40);
        v151 = v103;
        v149 = v102;
        *v180 = v152;
        v62[1] = v99;
        v62[2] = v100;
        v62[3] = v101;
        v104 = v184;
        v62[4] = v64;
        v62[5] = v104;
        v62[6] = v63;
        v62[7] = v39;
        v105 = *v173;
        v186 = v63;
        v185 = v64;
        v105(v62, v172, v179);
        v148 = v100;
        sub_226AFD74C(v152, v99, v100, v101, v151, v149, 0);
        v147 = v99;

        v146 = v101;

        v153 = v39;
        sub_226CC518C(v185, v184, v186, v39);
        v106 = v158;
        v107 = v155;
        sub_226CC2F28(v180, v182, v158);
        if (!v107)
        {
          v155 = 0;
          v108 = v150;

          sub_226AE5134(v152, v147, v148, v146, v151, v149, 0);
          (*v160)(v106, v161);
          (*v174)(v180, v179);
          v72 = v108;
          v71 = v185;
          v152 = v186;
          v39 = v153;
          goto LABEL_47;
        }

LABEL_66:

        sub_226CC51D0(v185, v184);

        sub_226CC51D0(0, 0);

        sub_226AE5134(v152, v147, v148, v146, v151, v149, 0);
        (*v174)(v180, v179);
LABEL_64:

LABEL_61:

        return;
      }

      break;
    }

    if (*(v67 + 48) == 2)
    {
      goto LABEL_21;
    }

    v86 = *(v67 + 8);
    v146 = *v67;
    v87 = *(v67 + 16);
    v88 = *(v67 + 24);
    v89 = *(v67 + 40);
    v140 = *(v67 + 32);
    v90 = v184;
    v152 = v87;
    v144 = v88;
    v142 = v86;
    v139 = v89;
    if (!v184)
    {
      break;
    }

    v91 = v87;
    v92 = v159;
    *v159 = v146;
    v92[1] = v86;
    v92[2] = v91;
    v92[3] = v88;
    v92[4] = v64;
    v92[5] = v90;
    v92[6] = v63;
    v92[7] = v39;
    v93 = v86;
    v94 = *v173;
    v184 = v90;
    v186 = v63;
    v185 = v64;
    v94(v92, v156, v179);
    sub_226AFD74C(v146, v93, v152, v144, v140, v89, 1u);
    v95 = v184;
    v153 = v39;
    sub_226CC518C(v185, v184, v186, v39);

    v96 = v157;
    v97 = v155;
    sub_226CC2F28(v92, v182, v157);
    v98 = v95;
    v78 = v97;
    if (v97)
    {

      sub_226CC51D0(v185, v98);

      sub_226CC51D0(v148, v151);

      sub_226AE5134(v146, v142, v152, v144, v140, v139, 1u);
      (*v174)(v159, v179);
      goto LABEL_64;
    }

    sub_226AE5134(v146, v142, v152, v144, v140, v139, 1u);
    (*v160)(v96, v161);
    (*v174)(v159, v179);
    v75 = v185;
    v76 = v98;
    v77 = v186;
    v39 = v153;
LABEL_32:
    v155 = v78;
    v152 = v77;
    if (!v151)
    {
      v184 = v76;
      goto LABEL_36;
    }

    if (v76)
    {
      v79 = v76;

      v184 = v79;
LABEL_36:
      v72 = v150;
      v71 = v75;
      goto LABEL_47;
    }

    v146 = v75;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v183 = sub_226BBAF90(0, v183[2] + 1, 1, v183);
    }

    v81 = v183[2];
    v80 = v183[3];
    v72 = v150;
    if (v81 >= v80 >> 1)
    {
      v183 = sub_226BBAF90((v80 > 1), v81 + 1, 1, v183);
      v72 = v150;
    }

    v184 = 0;
    v82 = v183;
    v183[2] = v81 + 1;
    v83 = &v82[4 * v81];
    v84 = v151;
    v83[4] = v148;
    v83[5] = v84;
    v85 = v149;
    v83[6] = v147;
    v83[7] = v85;
    v71 = v146;
LABEL_47:
    sub_226B040FC(v72);
    v30 = v189;
    v185 = v71;
    v186 = v152;
    v36 = v39;
    v2 = v154;
    v4 = v155;
  }

  v109 = v183;
  v110 = v183[2];
  v111 = v86;

  sub_226AFD74C(v146, v111, v87, v88, v140, v89, 1u);

  v141 = v110;
  if (!v110)
  {
LABEL_59:

    v138 = v142;

    v39 = v144;

    v75 = v146;
    v77 = v152;
    sub_226AE5134(v146, v138, v152, v39, v140, v139, 1u);
    v76 = v138;
    v78 = v155;
    goto LABEL_32;
  }

  v112 = 0;
  v113 = v109 + 7;
  while (1)
  {
    v119 = v183[2];
    v185 = v112;
    if (v112 >= v119)
    {
      break;
    }

    v184 = *v113;
    v120 = v184;
    v122 = *(v113 - 2);
    v121 = *(v113 - 1);
    v145 = v113;
    v123 = v177;
    *v177 = *(v113 - 3);
    v123[1] = v122;
    v123[2] = v121;
    v123[3] = v120;
    v124 = v142;
    v123[4] = v146;
    v123[5] = v124;
    v125 = v144;
    v123[6] = v152;
    v123[7] = v125;
    v126 = v179;
    (*v173)(v123, v172, v179);
    (*v166)(v178, v123, v126);
    v127 = *(v154 + 16);
    v128 = *(*v127 + *MEMORY[0x277D841D0] + 16);
    v129 = (*(*v127 + 48) + 3) & 0x1FFFFFFFCLL;

    v184 = v129;
    os_unfair_lock_lock((v127 + v129));
    sub_226D6B5DC();
    v186 = v127;
    if (v188)
    {
      if (swift_dynamicCast())
      {
        v114 = v162;
        sub_226D6D4BC();
        v115 = v171;
        v116 = (*v170)(v114, 1, v171);
        v117 = v185;
        if (v116 == 1)
        {
          goto LABEL_70;
        }

        goto LABEL_51;
      }

      v143 = v128;
    }

    else
    {
      v143 = v128;
      sub_226B5AAF4(v187);
    }

    v130 = v176;
    v117 = v185;
    sub_226D6D51C();
    v131 = sub_226D6D4CC();
    v133 = v132;
    v134 = v130;
    v135 = v171;
    (*v163)(v134, v171);
    v188 = MEMORY[0x277D837D0];
    v187[0] = v131;
    v187[1] = v133;

    sub_226D6B5BC();
    sub_226B5AAF4(v187);
    v136 = v164;
    sub_226D6D4BC();
    v137 = (*v170)(v136, 1, v135);
    v114 = v136;
    v115 = v135;
    if (v137 == 1)
    {
      goto LABEL_69;
    }

LABEL_51:
    v112 = v117 + 1;

    (*v165)(v168, v114, v115);
    os_unfair_lock_unlock((v186 + v184));
    sub_226D6D51C();
    sub_226D6D46C();
    sub_226D6709C();
    v118 = v182;

    (*v174)(v177, v179);
    v113 = v145 + 4;
    if (v141 == v112)
    {
      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_69:
  __break(1u);
LABEL_70:
  __break(1u);
}

uint64_t sub_226CC4CA8()
{
  v0 = sub_226D6B5EC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v11[-v5];
  sub_226D6B58C();
  type metadata accessor for ExtractedOrderUserEventDonator();
  v7 = swift_allocObject();
  v12[3] = v0;
  v12[4] = MEMORY[0x277CC7F70];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v12);
  (*(v1 + 16))(boxed_opaque_existential_1, v6, v0);
  sub_226AE532C(v12, v11);
  sub_226D6B5FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D18, &unk_226D7B170);
  v9 = swift_allocObject();
  *(v9 + ((*(*v9 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  __swift_destroy_boxed_opaque_existential_0Tm(v12);
  (*(v1 + 32))(v9 + *(*v9 + *MEMORY[0x277D841D0] + 16), v3, v0);
  *(v7 + 16) = v9;
  result = (*(v1 + 8))(v6, v0);
  qword_281064530 = v7;
  return result;
}

uint64_t sub_226CC4EC4@<X0>(uint64_t a1@<X8>)
{
  v16 = a1;
  v1 = sub_226D6D52C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6D68, &qword_226D75210);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v15 - v9;
  sub_226D6B5DC();
  if (v18)
  {
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_6;
    }

    sub_226D6D4BC();
    v7 = v10;
    if ((*(v2 + 48))(v10, 1, v1) != 1)
    {
LABEL_7:

      return (*(v2 + 32))(v16, v7, v1);
    }

    __break(1u);
  }

  sub_226B5AAF4(v17);
LABEL_6:
  sub_226D6D51C();
  v11 = sub_226D6D4CC();
  v13 = v12;
  (*(v2 + 8))(v4, v1);
  v18 = MEMORY[0x277D837D0];
  v17[0] = v11;
  v17[1] = v13;

  sub_226D6B5BC();
  sub_226B5AAF4(v17);
  sub_226D6D4BC();
  result = (*(v2 + 48))(v7, 1, v1);
  if (result != 1)
  {
    goto LABEL_7;
  }

  __break(1u);
  return result;
}

double sub_226CC518C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_226CC51D0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

void sub_226CC5214(void *a1)
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_self();
  v3 = [v2 fetchRequestForEvents];
  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_226D70840;
  v5 = MEMORY[0x277D83C10];
  *(v4 + 56) = MEMORY[0x277D83B88];
  *(v4 + 64) = v5;
  *(v4 + 32) = 2;
  v6 = sub_226D6E91C();
  [v3 setPredicate_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_226D71F20;
  v8 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v9 = sub_226D6E36C();
  v10 = [v8 initWithKey:v9 ascending:0];

  *(v7 + 32) = v10;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v11 = sub_226D6E5CC();

  [v3 setSortDescriptors_];

  [v3 setFetchLimit_];
  v12 = [v2 fetchEventsMatchingFetchRequest_];
  [v12 setResultType_];
  *&v41[0] = 0;
  v13 = [a1 executeRequest:v12 error:v41];
  v14 = *&v41[0];
  if (v13)
  {
    v15 = v13;
    objc_opt_self();
    v16 = swift_dynamicCastObjCClass();
    if (v16)
    {
      v17 = v16;
      v18 = v14;
      v19 = v15;
      if ([v17 result])
      {
        sub_226D6ED0C();
        swift_unknownObjectRelease();
      }

      else
      {
        v39 = 0u;
        v40 = 0u;
      }

      v41[0] = v39;
      v41[1] = v40;
      if (*(&v40 + 1))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D68, &qword_226D7B418);
        if (swift_dynamicCast())
        {
          if (v38 >> 62)
          {
            if (sub_226D6EDFC())
            {
              goto LABEL_12;
            }
          }

          else if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
LABEL_12:

            if ((v38 & 0xC000000000000001) != 0)
            {
              v23 = MEMORY[0x22AA8AFD0](0);
              goto LABEL_15;
            }

            if (*((v38 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              v23 = *(v38 + 32);
LABEL_15:
              v24 = v23;

              v25 = [v24 startDate];
              sub_226D6D45C();

              return;
            }

            __break(1u);
            goto LABEL_31;
          }

          if (qword_28105F5F8 == -1)
          {
LABEL_26:
            v33 = sub_226D6E07C();
            __swift_project_value_buffer(v33, qword_28105F600);
            v34 = sub_226D6E05C();
            v35 = sub_226D6E9AC();
            if (os_log_type_enabled(v34, v35))
            {
              v36 = swift_slowAlloc();
              *v36 = 0;
              _os_log_impl(&dword_226AB4000, v34, v35, "Never exported to iCloud. Skipping history pruning.", v36, 2u);
              MEMORY[0x22AA8BEE0](v36, -1, -1);
            }

            sub_226CCA838();
            swift_allocError();
            *v37 = 0x8000000000000018;
            swift_willThrow();

            v21 = v19;
            goto LABEL_23;
          }

LABEL_31:
          swift_once();
          goto LABEL_26;
        }
      }

      else
      {

        sub_226AC47B0(v41, &unk_27D7A8BB0, &unk_226D74340);
      }
    }

    else
    {
      v22 = v14;
    }

    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v26 = sub_226D6E07C();
    __swift_project_value_buffer(v26, qword_28105F600);
    v21 = v15;
    v27 = sub_226D6E05C();
    v28 = sub_226D6E9AC();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *v29 = 138412290;
      *(v29 + 4) = v21;
      *v30 = v15;
      v31 = v21;
      _os_log_impl(&dword_226AB4000, v27, v28, "Cannot extract recent events from %@. Skipping history pruning.", v29, 0xCu);
      sub_226AC47B0(v30, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v30, -1, -1);
      MEMORY[0x22AA8BEE0](v29, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v32 = 0x8000000000000018;
    swift_willThrow();

    v19 = v12;
    goto LABEL_23;
  }

  v20 = *&v41[0];
  sub_226D6D04C();

  swift_willThrow();
  v19 = v12;
  v21 = v3;
LABEL_23:
}

void sub_226CC589C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v97[4] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6B70C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v84 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 104))(v8, *MEMORY[0x277CC7FE8], v4, v6);
  v9 = sub_226B5F38C(v8);
  (*(v5 + 8))(v8, v4);
  if (!v9)
  {
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v39 = sub_226D6E07C();
    __swift_project_value_buffer(v39, qword_28105F600);
    v40 = sub_226D6E05C();
    v41 = sub_226D6E9AC();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_226AB4000, v40, v41, "No cloud store token found. Skipping history pruning.", v42, 2u);
      MEMORY[0x22AA8BEE0](v42, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v43 = 0x8000000000000008;
    swift_willThrow();
    return;
  }

  v10 = [objc_opt_self() fetchRequest];
  if (!v10)
  {
    __break(1u);
    goto LABEL_71;
  }

  v11 = v10;
  v12 = sub_226D6EB2C();
  if (!v12)
  {
    goto LABEL_20;
  }

  v13 = v12;
  v14 = [v12 identifier];

  if (!v14)
  {
    goto LABEL_20;
  }

  v89 = a2;
  v15 = sub_226D6E39C();
  v94 = v16;

  v93 = v9;
  v17 = [v9 storeTokens];
  if (!v17)
  {
LABEL_71:
    __break(1u);
    return;
  }

  v18 = v17;
  v19 = sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
  v20 = sub_226D6E2BC();

  if (!*(v20 + 16) || (v21 = sub_226C2FDD4(v15, v94), (v22 & 1) == 0))
  {

    v9 = v93;
LABEL_20:
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v44 = sub_226D6E07C();
    __swift_project_value_buffer(v44, qword_28105F600);
    v45 = v9;
    v46 = sub_226D6E05C();
    v47 = sub_226D6E9AC();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      *v48 = 138412290;
      *(v48 + 4) = v45;
      *v49 = v9;
      v50 = v45;
      _os_log_impl(&dword_226AB4000, v46, v47, "Cloud store token is invalid (%@). Skipping history pruning.", v48, 0xCu);
      sub_226AC47B0(v49, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v49, -1, -1);
      MEMORY[0x22AA8BEE0](v48, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v51 = 0x8000000000000008;
    swift_willThrow();

    return;
  }

  v92 = v15;
  v23 = *(*(v20 + 56) + 8 * v21);

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  v88 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_226D70840;
  *(v24 + 56) = v19;
  *(v24 + 64) = sub_226C8BE70(&qword_27D7A8D30, &qword_27D7A6278, 0x277CCABB0);
  *(v24 + 32) = v23;
  v25 = v23;
  v26 = v88;
  v27 = sub_226D6E91C();
  [v26 setPredicate_];
  v28 = [objc_opt_self() fetchHistoryWithFetchRequest_];
  [v28 setResultType_];
  v97[0] = 0;
  v29 = [a1 executeRequest:v28 error:v97];
  v30 = v97[0];
  if (!v29)
  {
    v59 = v97[0];

    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  v31 = v29;
  v32 = v26;
  v85 = v28;
  v86 = v27;
  v87 = v25;
  objc_opt_self();
  v33 = swift_dynamicCastObjCClassUnconditional();
  v34 = v30;
  v35 = v31;
  if (![v33 result])
  {

    v38 = v32;
    goto LABEL_42;
  }

  sub_226D6ED0C();
  swift_unknownObjectRelease();
  sub_226AC4708(v97, v96);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v38 = v32;
    __swift_destroy_boxed_opaque_existential_0Tm(v97);

LABEL_42:
    if (qword_28105F5F8 != -1)
    {
      goto LABEL_48;
    }

    goto LABEL_43;
  }

  v36 = v95;
  v96[0] = MEMORY[0x277D84F90];
  v84 = v31;
  if (v95 >> 62)
  {
    v37 = sub_226D6EDFC();
    if (v37)
    {
      goto LABEL_13;
    }

LABEL_50:

    v68 = v96[0];
    if (v96[0] < 0 || (v96[0] & 0x4000000000000000) != 0)
    {
      v69 = sub_226D6EDFC();
      v71 = v87;
      v70 = v88;
      v73 = v85;
      v72 = v86;
      if (v69)
      {
LABEL_53:
        v74 = __OFSUB__(v69, 1);
        v75 = v69 - 1;
        if (v74)
        {
          __break(1u);
        }

        else if ((v68 & 0xC000000000000001) == 0)
        {
          if ((v75 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v75 < *(v68 + 16))
          {
            v76 = *(v68 + 8 * v75 + 32);
LABEL_58:
            v77 = v76;

            v78 = [v77 timestamp];
            sub_226D6D45C();

LABEL_64:
            __swift_destroy_boxed_opaque_existential_0Tm(v97);
            return;
          }

          __break(1u);
          goto LABEL_69;
        }

        v76 = MEMORY[0x22AA8AFD0](v75, v68);
        goto LABEL_58;
      }
    }

    else
    {
      v69 = *(v96[0] + 16);
      v71 = v87;
      v70 = v88;
      v73 = v85;
      v72 = v86;
      if (v69)
      {
        goto LABEL_53;
      }
    }

    if (qword_28105F5F8 == -1)
    {
LABEL_61:
      v79 = sub_226D6E07C();
      __swift_project_value_buffer(v79, qword_28105F600);
      v80 = sub_226D6E05C();
      v81 = sub_226D6E9AC();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&dword_226AB4000, v80, v81, "Cloud store history is empty. Skipping pruning.", v82, 2u);
        MEMORY[0x22AA8BEE0](v82, -1, -1);
      }

      sub_226CCA838();
      swift_allocError();
      *v83 = 0x8000000000000008;
      swift_willThrow();

      goto LABEL_64;
    }

LABEL_69:
    swift_once();
    goto LABEL_61;
  }

  v37 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v37)
  {
    goto LABEL_50;
  }

LABEL_13:
  v38 = 0;
  v90 = v36 & 0xFFFFFFFFFFFFFF8;
  v91 = v36 & 0xC000000000000001;
  while (1)
  {
    if (v91)
    {
      v52 = MEMORY[0x22AA8AFD0](v38, v36);
    }

    else
    {
      if (v38 >= *(v90 + 16))
      {
        goto LABEL_47;
      }

      v52 = *(v36 + 8 * v38 + 32);
    }

    v35 = v52;
    v33 = (v38 + 1);
    if (__OFADD__(v38, 1))
    {
      break;
    }

    v53 = [v52 storeID];
    v54 = sub_226D6E39C();
    v56 = v55;

    if (v54 == v92 && v56 == v94)
    {
    }

    else
    {
      v58 = sub_226D6F21C();

      if ((v58 & 1) == 0)
      {

        goto LABEL_27;
      }
    }

    sub_226D6EF6C();
    sub_226D6EF9C();
    sub_226D6EFAC();
    sub_226D6EF7C();
LABEL_27:
    ++v38;
    if (v33 == v37)
    {
      goto LABEL_50;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  swift_once();
LABEL_43:
  v60 = sub_226D6E07C();
  __swift_project_value_buffer(v60, qword_28105F600);
  v61 = v35;
  v62 = sub_226D6E05C();
  v63 = sub_226D6E9AC();

  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    *v64 = 138412290;
    *(v64 + 4) = v33;
    *v65 = v33;
    v66 = v61;
    _os_log_impl(&dword_226AB4000, v62, v63, "Cannot extract history from %@. Skipping pruning.", v64, 0xCu);
    sub_226AC47B0(v65, &qword_27D7A5FB0, &qword_226D70870);
    MEMORY[0x22AA8BEE0](v65, -1, -1);
    MEMORY[0x22AA8BEE0](v64, -1, -1);
  }

  sub_226CCA838();
  swift_allocError();
  *v67 = 0x8000000000000008;
  swift_willThrow();
}

void sub_226CC6434(uint64_t a1)
{
  v1 = sub_226D6769C();
  v2 = [v1 newBackgroundContext];

  sub_226D6D4AC();
  sub_226D6EB8C();
}

unint64_t PruningError.description.getter()
{
  v1 = *v0 >> 62;
  if (!v1)
  {
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0xD000000000000010, 0x8000000226D87360);
    swift_getErrorValue();
    goto LABEL_5;
  }

  if (v1 == 1)
  {
    sub_226D6EEFC();
    MEMORY[0x22AA8A510](0xD000000000000019, 0x8000000226D87340);
    swift_getErrorValue();
LABEL_5:
    sub_226D6F20C();
    return 0;
  }

  v3 = __ROR8__(*v0 ^ 0x8000000000000000, 3);
  v4 = 0xD00000000000002ALL;
  if (v3 == 2)
  {
    v4 = 0xD000000000000019;
  }

  v5 = 0xD00000000000001CLL;
  if (!v3)
  {
    v5 = 0xD00000000000001FLL;
  }

  if (v3 <= 1)
  {
    return v5;
  }

  else
  {
    return v4;
  }
}

unint64_t sub_226CC663C()
{
  if (*v0)
  {
    return 0xD000000000000029;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void sub_226CC6678(double a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_226CC6964(a2);
  if (v4)
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v7 = sub_226D6E07C();
    __swift_project_value_buffer(v7, qword_28105F5E0);
    v8 = v4;
    v9 = sub_226D6E05C();
    v10 = sub_226D6E9CC();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      *v11 = 138412290;
      v13 = v4;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v11 + 4) = v14;
      *v12 = v14;
      _os_log_impl(&dword_226AB4000, v9, v10, "Error compacting persistent history: %@", v11, 0xCu);
      sub_226AC47B0(v12, &qword_27D7A5FB0, &qword_226D70870);
      MEMORY[0x22AA8BEE0](v12, -1, -1);
      MEMORY[0x22AA8BEE0](v11, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v15 = v4 | 0x4000000000000000;
    swift_willThrow();
  }

  else if (sub_226CC87D0(v6, a1))
  {
    v16 = sub_226D676AC();
    MEMORY[0x28223BE20](v16);
    sub_226D6EB8C();
  }

  else
  {
    if (qword_28105F5D8 != -1)
    {
      swift_once();
    }

    v17 = sub_226D6E07C();
    __swift_project_value_buffer(v17, qword_28105F5E0);
    v18 = sub_226D6E05C();
    v19 = sub_226D6E9AC();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_226AB4000, v18, v19, "Not pruning history because pruning interval hasn't elapsed", v20, 2u);
      MEMORY[0x22AA8BEE0](v20, -1, -1);
    }
  }
}

void sub_226CC6964(uint64_t a1)
{
  v2 = sub_226D676AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D38, &qword_226D7B318);
  v3 = sub_226D6EB8C();
  if (v1)
  {
  }

  else
  {
    v4 = *(v6 + 16);
    if (v4)
    {
      v5 = 0;
      while (v5 < *(v6 + 16))
      {
        MEMORY[0x28223BE20](v3);
        v3 = sub_226D6EB8C();
        if (v4 == ++v5)
        {
          goto LABEL_7;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_7:
    }
  }
}

void sub_226CC6ABC(id a1@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  v92[4] = *MEMORY[0x277D85DE8];
  sub_226D6BA1C();
  v8 = sub_226D6B9FC();
  [v8 setFetchLimit_];
  v9 = sub_226D6EBBC();
  if (v3)
  {

    return;
  }

  if (v9 >> 62)
  {
    v14 = v9;
    v10 = sub_226D6EDFC();
    v9 = v14;
    if (v10)
    {
      goto LABEL_5;
    }

LABEL_10:

    v13 = 0;
    v12 = 0;
    goto LABEL_11;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v11 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_55:
      sub_226D6E61C();
      goto LABEL_35;
    }

    v11 = *(v9 + 32);
  }

  v12 = v11;

  v13 = [v12 lastConvertedHistoryTransactionID];
LABEL_11:
  v15 = objc_opt_self();
  v82 = [v15 fetchRequest];
  if (!v82)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v77 = v12;
  v16 = [v15 entityDescriptionWithContext_];
  if (!v16)
  {
LABEL_62:
    __break(1u);
    return;
  }

  v74 = a3;
  v75 = v13;
  v79 = v10;
  v88 = a1;
  v90 = MEMORY[0x277D84F90];
  v87 = v16;
  v17 = [v16 propertiesByName];
  sub_226AE59B4(0, &unk_28105F430, 0x277CBE4F0);
  v18 = MEMORY[0x277D837D0];
  v19 = sub_226D6E2BC();
  if (!*(v19 + 16) || (v20 = sub_226C2FDD4(0x795465676E616863, 0xEA00000000006570), (v21 & 1) == 0))
  {

    __break(1u);
LABEL_60:

    __break(1u);
    goto LABEL_61;
  }

  v22 = v20;

  v23 = *(*(v19 + 56) + 8 * v22);

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_226D71840;
  v76 = v23;
  v25 = [v23 name];
  v26 = sub_226D6E39C();
  v28 = v27;

  *(v24 + 56) = v18;
  v78 = sub_226B16404();
  *(v24 + 64) = v78;
  *(v24 + 32) = v26;
  *(v24 + 40) = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D48, &qword_226D7B328);
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_226D71840;
  *(v29 + 32) = xmmword_226D7B180;
  *(v24 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D50, &qword_226D7B330);
  *(v24 + 104) = sub_226CCA944(&qword_27D7A8D58, &qword_27D7A8D50, &qword_226D7B330);
  *(v24 + 72) = v29;
  v30 = sub_226D6E91C();
  MEMORY[0x22AA8A610]();
  if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_52:
    sub_226D6E61C();
  }

  v84 = v8;
  v81 = v30;
  sub_226D6E65C();
  v31 = [v87 propertiesByName];
  v32 = sub_226D6E2BC();
  if (!*(v32 + 16))
  {
    goto LABEL_60;
  }

  v33 = sub_226C2FDD4(0x456465676E616863, 0xED0000797469746ELL);
  if ((v34 & 1) == 0)
  {
    goto LABEL_60;
  }

  v35 = v33;

  v83 = *(*(v32 + 56) + 8 * v35);

  v36 = MEMORY[0x277D84F90];
  v92[0] = MEMORY[0x277D84F90];
  v37 = 1 << a2[32];
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v8 = v38 & *(a2 + 7);
  v39 = (v37 + 63) >> 6;

  v40 = 0;
  v80 = v36;
  if (!v8)
  {
    goto LABEL_23;
  }

  do
  {
LABEL_21:
    while (1)
    {
      v8 &= v8 - 1;
      v30 = objc_opt_self();

      v41 = sub_226D6E36C();
      v42 = [v30 entityForName:v41 inManagedObjectContext:v88];

      if (v42)
      {
        break;
      }

      if (!v8)
      {
        goto LABEL_23;
      }
    }

    MEMORY[0x22AA8A610]();
    if (*((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v92[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_226D6E61C();
    }

    sub_226D6E65C();
    v80 = v92[0];
  }

  while (v8);
  while (1)
  {
LABEL_23:
    v43 = v40 + 1;
    if (__OFADD__(v40, 1))
    {
      __break(1u);
      goto LABEL_52;
    }

    if (v43 >= v39)
    {
      break;
    }

    v8 = *&a2[8 * v43 + 56];
    ++v40;
    if (v8)
    {
      v40 = v43;
      goto LABEL_21;
    }
  }

  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_226D71840;
  v8 = v83;
  v45 = [v83 name];
  v46 = sub_226D6E39C();
  v48 = v47;

  *(v44 + 56) = MEMORY[0x277D837D0];
  *(v44 + 64) = v78;
  *(v44 + 32) = v46;
  *(v44 + 40) = v48;
  *(v44 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D40, &qword_226D7B320);
  *(v44 + 104) = sub_226CCA944(&unk_28105F508, &qword_27D7A8D40, &qword_226D7B320);
  *(v44 + 72) = v80;
  v49 = sub_226D6E91C();
  MEMORY[0x22AA8A610]();
  if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_226D6E61C();
  }

  sub_226D6E65C();
  v10 = v84;
  v4 = v88;
  if (v79)
  {
    a1 = v49;
    v50 = swift_allocObject();
    *(v50 + 16) = xmmword_226D70840;
    v51 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithLongLong_];
    *(v50 + 56) = sub_226AE59B4(0, &qword_27D7A6278, 0x277CCABB0);
    *(v50 + 64) = sub_226C8BE70(&qword_27D7A8D30, &qword_27D7A6278, 0x277CCABB0);
    *(v50 + 32) = v51;
    a2 = sub_226D6E91C();
    MEMORY[0x22AA8A610]();
    if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      goto LABEL_55;
    }

LABEL_35:
    sub_226D6E65C();

    v49 = a1;
  }

  v52 = sub_226D6E5CC();
  v53 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v82 setPredicate_];
  v54 = [objc_opt_self() fetchHistoryWithFetchRequest_];
  [v54 setResultType_];
  v92[0] = 0;
  v55 = v4;
  v56 = v54;
  v57 = [v55 executeRequest:v54 error:v92];
  v58 = v92[0];
  if (!v57)
  {
    v73 = v92[0];

    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  v59 = v57;
  objc_opt_self();
  v60 = v59;
  v61 = swift_dynamicCastObjCClassUnconditional();
  v62 = v58;
  if (![v61 result])
  {

    *v74 = MEMORY[0x277D84F90];
    return;
  }

  v86 = v60;
  sub_226D6ED0C();
  swift_unknownObjectRelease();
  sub_226AC4708(v92, v91);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
  swift_dynamicCast();
  if (v89 >> 62)
  {
    v63 = sub_226D6EDFC();
    if (v63)
    {
      goto LABEL_40;
    }

LABEL_57:

    __swift_destroy_boxed_opaque_existential_0Tm(v92);

    *v74 = MEMORY[0x277D84F90];
    return;
  }

  v63 = *((v89 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v63)
  {
    goto LABEL_57;
  }

LABEL_40:
  v85 = v49;
  v91[0] = MEMORY[0x277D84F90];
  sub_226AE23A4(0, v63 & ~(v63 >> 63), 0);
  if (v63 < 0)
  {
    __break(1u);
  }

  v64 = 0;
  v65 = v91[0];
  v66 = v89;
  v67 = v63;
  do
  {
    if ((v89 & 0xC000000000000001) != 0)
    {
      v68 = MEMORY[0x22AA8AFD0](v64, v66);
    }

    else
    {
      v68 = *(v66 + 8 * v64 + 32);
    }

    v69 = v68;
    v70 = [v68 transactionNumber];

    v91[0] = v65;
    v72 = *(v65 + 16);
    v71 = *(v65 + 24);
    if (v72 >= v71 >> 1)
    {
      sub_226AE23A4((v71 > 1), v72 + 1, 1);
      v65 = v91[0];
    }

    ++v64;
    *(v65 + 16) = v72 + 1;
    *(v65 + 8 * v72 + 32) = v70;
    v66 = v89;
  }

  while (v67 != v64);
  __swift_destroy_boxed_opaque_existential_0Tm(v92);

  *v74 = v65;
}

void sub_226CC7724(unint64_t a1, id *a2, _BYTE *a3)
{
  v4 = v3;
  v119 = a3;
  v117 = a2;
  v125[4] = *MEMORY[0x277D85DE8];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v92 - v7);
  v9 = sub_226D6D1AC();
  v116 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v92 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v92 - v13;
  v15 = sub_226D6BA1C();
  v16 = sub_226D6B9FC();
  [v16 setFetchLimit_];
  v17 = sub_226D6EBBC();
  if (v3)
  {

    return;
  }

  v114 = 0;
  v115 = a1;
  v18 = v117;
  v120 = v14;
  v121 = v11;
  v118 = v9;
  if (v17 >> 62)
  {
    goto LABEL_71;
  }

  v19 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
  v20 = v18;
  v21 = v115;
  v112 = v15;
  v113 = v8;
  if (v19)
  {
    if ((v17 & 0xC000000000000001) == 0)
    {
      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v22 = *(v17 + 32);
        goto LABEL_9;
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      goto LABEL_77;
    }

    goto LABEL_73;
  }

  v25 = 0;
  v23 = 0;
  while (1)
  {
    v26 = objc_opt_self();
    v27 = [v26 fetchRequest];
    if (!v27)
    {
      goto LABEL_30;
    }

    v28 = v27;
    v29 = [v26 entityDescriptionWithContext_];
    if (!v29)
    {

LABEL_30:
      return;
    }

    v30 = v29;
    v110 = v16;
    v16 = [v29 propertiesByName];
    sub_226AE59B4(0, &unk_28105F430, 0x277CBE4F0);
    v31 = sub_226D6E2BC();

    if (!*(v31 + 16) || (v32 = sub_226C2FDD4(0x456465676E616863, 0xED0000797469746ELL), (v33 & 1) == 0))
    {

      return;
    }

    v104 = v25;
    v96 = v30;
    v107 = v28;
    v108 = v23;
    v100 = *(*(v31 + 56) + 8 * v32);

    v18 = sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
    v4 = "TRANSACTIONID = %@";
    v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
    v34 = swift_allocObject();
    v35 = MEMORY[0x277D84A28];
    *(v34 + 16) = xmmword_226D70840;
    v36 = MEMORY[0x277D84A90];
    *(v34 + 56) = v35;
    *(v34 + 64) = v36;
    *(v34 + 32) = v20;
    v111 = v18;
    v109 = sub_226D6E91C();
    v103 = MEMORY[0x277D84F90];
    v125[0] = MEMORY[0x277D84F90];
    v37 = v119;
    v38 = v119 + 56;
    v39 = 1 << v119[32];
    v40 = -1;
    if (v39 < 64)
    {
      v40 = ~(-1 << v39);
    }

    v41 = v40 & *(v119 + 7);
    v15 = ((v39 + 63) >> 6);

    a1 = 0;
    v8 = &selRef_setSortDescriptors_;
    if (!v41)
    {
      goto LABEL_20;
    }

    do
    {
LABEL_18:
      while (1)
      {
        v42 = __clz(__rbit64(v41));
        v41 &= v41 - 1;
        v4 = *(*(v37 + 6) + ((a1 << 10) | (16 * v42)) + 8);
        v43 = objc_opt_self();

        v18 = sub_226D6E36C();
        v16 = [v43 entityForName:v18 inManagedObjectContext:v115];

        if (v16)
        {
          break;
        }

        if (!v41)
        {
          goto LABEL_20;
        }
      }

      v18 = v125;
      MEMORY[0x22AA8A610]();
      if (*((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v4 = *((v125[0] & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_226D6E61C();
      }

      v17 = sub_226D6E65C();
      v103 = v125[0];
    }

    while (v41);
    while (1)
    {
LABEL_20:
      v44 = a1 + 1;
      if (__OFADD__(a1, 1))
      {
LABEL_70:
        __break(1u);
LABEL_71:
        v14 = v17;
        v19 = sub_226D6EDFC();
        v17 = v14;
        goto LABEL_5;
      }

      if (v44 >= v15)
      {
        break;
      }

      v41 = *&v38[8 * v44];
      ++a1;
      if (v41)
      {
        a1 = v44;
        goto LABEL_18;
      }
    }

    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_226D71840;
    v46 = v100;
    v47 = [v100 name];
    v48 = sub_226D6E39C();
    v50 = v49;

    *(v45 + 56) = MEMORY[0x277D837D0];
    *(v45 + 64) = sub_226B16404();
    *(v45 + 32) = v48;
    *(v45 + 40) = v50;
    *(v45 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D40, &qword_226D7B320);
    *(v45 + 104) = sub_226CCA944(&unk_28105F508, &qword_27D7A8D40, &qword_226D7B320);
    *(v45 + 72) = v103;

    v51 = sub_226D6E91C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
    v52 = swift_allocObject();
    *(v52 + 16) = xmmword_226D71F40;
    v53 = v109;
    *(v52 + 32) = v109;
    *(v52 + 40) = v51;
    v54 = v53;
    v55 = v51;
    v56 = sub_226D6E5CC();

    v57 = [objc_opt_self() andPredicateWithSubpredicates_];

    v15 = v107;
    [v107 setPredicate_];

    v58 = [objc_opt_self() fetchHistoryWithFetchRequest_];
    [v58 setResultType_];
    v125[0] = 0;
    a1 = v115;
    v59 = [v115 executeRequest:v58 error:v125];
    v60 = v125[0];
    if (!v59)
    {
      v82 = v125[0];

      sub_226D6D04C();

      swift_willThrow();
      return;
    }

    v61 = v59;
    v94 = v58;
    v95 = v55;
    objc_opt_self();
    v62 = v61;
    v63 = swift_dynamicCastObjCClassUnconditional();
    v64 = v60;
    v65 = [v63 result];
    v16 = v108;
    if (!v65)
    {

      return;
    }

    v92 = v62;
    v93 = v54;
    sub_226D6ED0C();
    swift_unknownObjectRelease();
    sub_226AC4708(v125, v124);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
    swift_dynamicCast();
    v4 = v123;
    v123 = MEMORY[0x277D84FA0];
    v14 = v114;
    if (!(v4 >> 62))
    {
      break;
    }

LABEL_77:
    v20 = sub_226D6EDFC();
    v66 = v116;
    v8 = v117;
    if (!v20)
    {
      goto LABEL_78;
    }

LABEL_35:
    v67 = 0;
    v109 = v4 & 0xC000000000000001;
    v102 = v4 & 0xFFFFFFFFFFFFFF8;
    v101 = v4 + 32;
    v116 = v66 + 1;
    v106 = v4;
    v105 = v20;
    while (1)
    {
      if (v109)
      {
        v68 = MEMORY[0x22AA8AFD0](v67, v4);
      }

      else
      {
        if (v67 >= *(v102 + 16))
        {
          goto LABEL_75;
        }

        v68 = *(v101 + 8 * v67);
      }

      v69 = v68;
      v70 = __OFADD__(v67, 1);
      v67 = (v67 + 1);
      if (v70)
      {
        break;
      }

      v71 = [v68 changes];
      v72 = v69;
      if (v71)
      {
        v73 = v71;
        v119 = v72;
        sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
        v4 = sub_226D6E5EC();

        if (v4 >> 62)
        {
          v17 = sub_226D6EDFC();
          a1 = v17;
        }

        else
        {
          a1 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v18 = v119;
        v14 = v120;
        v111 = v67;
        if (a1)
        {
          v16 = 0;
          while (1)
          {
            if ((v4 & 0xC000000000000001) != 0)
            {
              v17 = MEMORY[0x22AA8AFD0](v16, v4);
            }

            else
            {
              if (v16 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_69;
              }

              v17 = *(v4 + 8 * v16 + 32);
            }

            v8 = v17;
            v15 = (v16 + 1);
            if (__OFADD__(v16, 1))
            {
              __break(1u);
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

            v74 = [v17 changeType];
            if (v74 == 1)
            {
              break;
            }

            if (v74 == 2)
            {
              v75 = [v8 changedObjectID];
              v76 = [v75 URIRepresentation];

              sub_226D6D14C();
              v14 = v120;
              sub_226C27170(v120, v121);
              v18 = v119;

              v17 = (*v116)(v14, v118);
LABEL_55:
              ++v16;
              goto LABEL_56;
            }

            if (v74)
            {
              v124[0] = 0;
              v124[1] = 0xE000000000000000;
              sub_226D6EEFC();
              MEMORY[0x22AA8A510](0x742065676E616843, 0xEC00000020657079);
              v122 = [v8 changeType];
              type metadata accessor for NSPersistentHistoryChangeType(0);
              sub_226D6EFBC();
              MEMORY[0x22AA8A510](0x63657220746F6E20, 0xEF64657A696E676FLL);
              sub_226D6F0AC();
              __break(1u);
              return;
            }

            v16 = (v104 + 1);
            if (__OFADD__(v104, 1))
            {
              goto LABEL_76;
            }

            v99 = sub_226D6A26C();
            v104 = [v8 changedObjectID];
            v77 = [v104 entityName];

            v98 = sub_226D6E39C();
            v97 = v78;

            v104 = [v8 changedObjectID];
            v79 = [v104 URIRepresentation];

            sub_226D6D14C();
            [v119 transactionNumber];
            v80 = v115;
            v104 = v16;
            v81 = sub_226D6A25C();

            v18 = v119;
            v16 = v15;
LABEL_56:
            if (v15 == a1)
            {
              goto LABEL_36;
            }
          }

          goto LABEL_55;
        }

LABEL_36:

        v14 = v114;
        a1 = v115;
        v16 = v108;
        v15 = v107;
        v8 = v117;
        v4 = v106;
        v20 = v105;
        v67 = v111;
        if (v111 == v105)
        {
          goto LABEL_78;
        }
      }

      else
      {

        if (v67 == v20)
        {
          goto LABEL_78;
        }
      }
    }

    __break(1u);
LABEL_73:
    v22 = MEMORY[0x22AA8AFD0](0);
LABEL_9:
    v23 = v22;

    v24 = v23;
    v25 = sub_226D6B9CC();

    v21 = v115;
  }

  v20 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v66 = v116;
  v8 = v117;
  if (v20)
  {
    goto LABEL_35;
  }

LABEL_78:

  sub_226D6A26C();
  sub_226D6A20C();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v125);
  }

  else
  {

    if (v16)
    {
      v83 = v16;
      [v83 setLastConvertedHistoryTransactionID_];
      sub_226D6B9DC();
    }

    else
    {
      v84 = sub_226D6D4AC();
      (*(*(v84 - 8) + 56))(v113, 1, 1, v84);
      v85 = a1;
      v83 = sub_226D6B9EC();
    }

    v124[0] = 0;
    v86 = [a1 save_];
    v87 = v93;
    v88 = v95;
    v89 = v94;
    if (v86)
    {
      v90 = v124[0];
      __swift_destroy_boxed_opaque_existential_0Tm(v125);
    }

    else
    {
      v91 = v124[0];
      sub_226D6D04C();

      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_0Tm(v125);
    }
  }
}

uint64_t sub_226CC87D0(uint64_t a1, double a2)
{
  v3 = sub_226D676AC();
  sub_226D6EB8C();

  return v4;
}

id sub_226CC89AC@<X0>(_BYTE *a1@<X1>, unint64_t a2@<X2>, void *a3@<X3>, _BYTE *a4@<X8>)
{
  v21[1] = *MEMORY[0x277D85DE8];
  result = sub_226CC8BE4(a1, a2, a3);
  if (!v4)
  {
    v21[0] = 0;
    v8 = [a3 save_];
    v9 = v21[0];
    if (v8)
    {
      *a4 = 0;
      return v9;
    }

    else
    {
      v10 = v21[0];
      v11 = sub_226D6D04C();

      swift_willThrow();
      if (qword_28105F5D8 != -1)
      {
        swift_once();
      }

      v12 = sub_226D6E07C();
      __swift_project_value_buffer(v12, qword_28105F5E0);
      v13 = v11;
      v14 = sub_226D6E05C();
      v15 = sub_226D6E9CC();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        v18 = v11;
        v19 = _swift_stdlib_bridgeErrorToNSError();
        *(v16 + 4) = v19;
        *v17 = v19;
        _os_log_impl(&dword_226AB4000, v14, v15, "Error pruning persistent history: %@", v16, 0xCu);
        sub_226AC47B0(v17, &qword_27D7A5FB0, &qword_226D70870);
        MEMORY[0x22AA8BEE0](v17, -1, -1);
        MEMORY[0x22AA8BEE0](v16, -1, -1);
      }

      sub_226CCA838();
      swift_allocError();
      *v20 = v11;
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_226CC8BE4(_BYTE *a1, unint64_t a2, void *a3)
{
  v137 = a1;
  v138 = a3;
  v135 = a2;
  v142[1] = *MEMORY[0x277D85DE8];
  v4 = sub_226D6D4AC();
  v5 = *(v4 - 8);
  v139 = v4;
  v140 = v5;
  MEMORY[0x28223BE20](v4);
  v134 = &v122[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v136 = &v122[-v8];
  MEMORY[0x28223BE20](v9);
  v11 = &v122[-v10];
  MEMORY[0x28223BE20](v12);
  v14 = &v122[-v13];
  MEMORY[0x28223BE20](v15);
  v17 = &v122[-v16];
  MEMORY[0x28223BE20](v18);
  v20 = &v122[-v19];
  MEMORY[0x28223BE20](v21);
  v23 = &v122[-v22];
  MEMORY[0x28223BE20](v24);
  v26 = &v122[-v25];
  MEMORY[0x28223BE20](v27);
  v29 = &v122[-v28];
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v30 = v141;
  sub_226CC6434(v3[2]);
  if (v30)
  {
    return 0;
  }

  v132 = v17;
  v133 = v20;
  v129 = v11;
  v130 = v14;
  v141 = v23;
  v31 = v139;
  v32 = 0;
  __swift_project_boxed_opaque_existential_1(v3 + 3, v3[6]);
  v33 = v138;
  sub_226CC589C(v138, v26);
  v131 = v26;
  sub_226CCA88C(&qword_27D7A66D8, MEMORY[0x277CC9590]);
  v34 = v29;
  v35 = v137;
  v36 = v31;
  v37 = sub_226D6E32C();
  v38 = v140;
  v39 = *(v140 + 16);
  v127 = v39;
  v128 = v34;
  if (v37)
  {
    v40 = v132;
    v41 = v132;
    v42 = v34;
  }

  else
  {
    v41 = v132;
    v42 = v35;
    v40 = v132;
  }

  v39(v41, v42, v36);
  v43 = v131;
  if (sub_226D6E32C())
  {
    (*(v38 + 8))(v40, v36);
    v44 = v133;
    v127(v133, v43, v36);
    v45 = *(v38 + 32);
  }

  else
  {
    v45 = *(v38 + 32);
    v46 = v40;
    v44 = v133;
    v45(v133, v46, v36);
  }

  v47 = v141;
  v45(v141, v44, v36);
  sub_226CCA04C(v47, v33);
  if (!v48)
  {
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v49 = sub_226D6E07C();
    __swift_project_value_buffer(v49, qword_28105F600);
    v50 = sub_226D6E05C();
    v51 = sub_226D6E9EC();
    v52 = os_log_type_enabled(v50, v51);
    v53 = v131;
    if (v52)
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_226AB4000, v50, v51, "No purgeable token found. Aborting.", v54, 2u);
      MEMORY[0x22AA8BEE0](v54, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v55 = 0x8000000000000000;
    swift_willThrow();
    v56 = *(v38 + 8);
    v56(v47, v36);
    v57 = v53;
    goto LABEL_14;
  }

  v137 = v48;
  sub_226D6BA1C();
  v59 = sub_226D6B9FC();
  [v59 setFetchLimit_];
  v60 = sub_226D6EBBC();
  if (!(v60 >> 62))
  {
    if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_25;
    }

    goto LABEL_39;
  }

  v32 = v60;
  v121 = sub_226D6EDFC();
  v60 = v32;
  if (!v121)
  {
LABEL_39:

    v61 = v131;
    if (qword_28105F5F8 != -1)
    {
      swift_once();
    }

    v62 = sub_226D6E07C();
    __swift_project_value_buffer(v62, qword_28105F600);
    v63 = sub_226D6E05C();
    v64 = sub_226D6E9CC();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_226AB4000, v63, v64, "No metadata found. Aborting.", v65, 2u);
      MEMORY[0x22AA8BEE0](v65, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v66 = 0x8000000000000010;
    swift_willThrow();

    v56 = *(v38 + 8);
    v56(v47, v36);
    v57 = v61;
LABEL_14:
    v56(v57, v36);
    v56(v128, v36);
    return 0;
  }

LABEL_25:
  v132 = 0;
  if ((v60 & 0xC000000000000001) != 0)
  {
    v32 = v60;
    v67 = MEMORY[0x22AA8AFD0](0);
  }

  else
  {
    if (!*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

    v32 = v60;
    v67 = *(v60 + 32);
  }

  v68 = v67;

  v69 = objc_opt_self();
  if ((v135 & 0x8000000000000000) == 0)
  {
    v133 = v68;
    v135 = [v69 deleteHistoryBeforeToken:v137 whenHistoryPercentageOfStoreIsGreaterThan:?];
    [v135 setResultType_];
    v32 = v129;
    if (qword_28105F5F8 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_43;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  swift_once();
LABEL_30:
  v70 = sub_226D6E07C();
  v71 = __swift_project_value_buffer(v70, qword_28105F600);
  v72 = v127;
  v127(v130, v47, v36);
  v72(v32, v128, v36);
  v73 = v131;
  v72(v136, v131, v36);
  v127 = v71;
  v74 = sub_226D6E05C();
  v75 = sub_226D6E9EC();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v126 = v59;
    v77 = v76;
    v125 = swift_slowAlloc();
    v142[0] = v125;
    *v77 = 136315650;
    sub_226CCA88C(&qword_281062B80, MEMORY[0x277CC95B8]);
    v124 = v74;
    v123 = v75;
    v78 = v130;
    v79 = sub_226D6F1CC();
    v81 = v80;
    v82 = *(v38 + 8);
    v82(v78, v36);
    v83 = sub_226AC4530(v79, v81, v142);

    *(v77 + 4) = v83;
    *(v77 + 12) = 2080;
    v84 = sub_226D6F1CC();
    v86 = v85;
    v82(v32, v36);
    v87 = sub_226AC4530(v84, v86, v142);

    *(v77 + 14) = v87;
    *(v77 + 22) = 2080;
    v73 = v131;
    v88 = v136;
    v89 = sub_226D6F1CC();
    v91 = v90;
    v82(v88, v36);
    v47 = v141;
    v92 = sub_226AC4530(v89, v91, v142);

    *(v77 + 24) = v92;
    v93 = v124;
    _os_log_impl(&dword_226AB4000, v124, v123, "    Pruning from %s.     Last CK sync %s,     last synced date %s", v77, 0x20u);
    v94 = v125;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v94, -1, -1);
    v95 = v77;
    v59 = v126;
    MEMORY[0x22AA8BEE0](v95, -1, -1);
  }

  else
  {

    v82 = *(v38 + 8);
    v82(v136, v36);
    v82(v32, v36);
    v82(v130, v36);
  }

  v142[0] = 0;
  v96 = v135;
  v97 = [v138 executeRequest:v135 error:v142];
  v98 = v142[0];
  v99 = v134;
  if (v97)
  {
    v100 = v97;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6200, &unk_226D70C30);
    v101 = swift_allocObject();
    *(v101 + 16) = xmmword_226D70840;
    *(v101 + 56) = sub_226AE59B4(0, &qword_27D7A8D28, 0x277CBE4E8);
    *(v101 + 32) = v100;
    v102 = v98;
    v103 = v100;
    sub_226D6F2DC();

    sub_226D6D46C();
    v104 = v133;
    sub_226D6BA0C();

    v105 = v139;
    v82(v99, v139);
    v82(v47, v105);
    v82(v73, v105);
    v82(v128, v105);
  }

  else
  {
    v106 = v59;
    v107 = v142[0];
    v108 = sub_226D6D04C();

    swift_willThrow();
    v109 = v108;
    v110 = sub_226D6E05C();
    v111 = sub_226D6E9CC();

    if (os_log_type_enabled(v110, v111))
    {
      v112 = swift_slowAlloc();
      v113 = v73;
      v114 = swift_slowAlloc();
      *v112 = 138412290;
      v115 = v108;
      v116 = _swift_stdlib_bridgeErrorToNSError();
      *(v112 + 4) = v116;
      *v114 = v116;
      _os_log_impl(&dword_226AB4000, v110, v111, "CoreData error: %@. Aboorting.", v112, 0xCu);
      sub_226AC47B0(v114, &qword_27D7A5FB0, &qword_226D70870);
      v117 = v114;
      v73 = v113;
      v47 = v141;
      MEMORY[0x22AA8BEE0](v117, -1, -1);
      v96 = v135;
      MEMORY[0x22AA8BEE0](v112, -1, -1);
    }

    sub_226CCA838();
    swift_allocError();
    *v118 = v108;
    swift_willThrow();
    v119 = v108;

    v120 = v139;
    v82(v47, v139);
    v82(v73, v120);
    v82(v128, v120);
  }

  return 0;
}

uint64_t sub_226CC9918()
{

  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t _s13FinanceDaemon12PruningErrorO2eeoiySbAC_ACtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4)
  {
    if (v4 != 1)
    {
      v8 = __ROR8__(v2 ^ 0x8000000000000000, 3);
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          if (v3 != 0x8000000000000010)
          {
            goto LABEL_15;
          }
        }

        else if (v3 != 0x8000000000000018)
        {
          goto LABEL_15;
        }
      }

      else if (v8)
      {
        if (v3 != 0x8000000000000008)
        {
          goto LABEL_15;
        }
      }

      else if (v3 != 0x8000000000000000)
      {
        goto LABEL_15;
      }

      sub_226CCA9B8(*a2);
      v7 = 1;
      goto LABEL_18;
    }

    if (v3 >> 62 == 1)
    {
      goto LABEL_6;
    }

LABEL_15:
    sub_226CCA9B8(*a2);
    sub_226CCA9B8(v2);
    v7 = 0;
    goto LABEL_18;
  }

  if (v3 >> 62)
  {
    goto LABEL_15;
  }

LABEL_6:
  sub_226AE59B4(0, &qword_27D7A6580, 0x277D82BB8);
  sub_226CCA9B8(v3);
  sub_226CCA9B8(v2);
  sub_226CCA9B8(v3);
  sub_226CCA9B8(v2);
  v5 = sub_226D6D03C();
  v6 = sub_226D6D03C();
  v7 = sub_226D6EC3C();

  sub_226CCA9D4(v3);
  sub_226CCA9D4(v2);
LABEL_18:
  sub_226CCA9D4(v2);
  sub_226CCA9D4(v3);
  return v7 & 1;
}

unint64_t get_enum_tag_for_layout_string_13FinanceDaemon12PruningErrorO(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 62;
  }

  else
  {
    return (*a1 >> 3) + 2;
  }
}

uint64_t sub_226CC9B3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_226CC9B98(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_226CC9BF8(void *result, uint64_t a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
  }

  else
  {
    *result = (8 * (a2 - 2)) | 0x8000000000000000;
  }

  return result;
}

unint64_t sub_226CC9C58(char a1, double a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8BE0, &unk_226D718F0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = v36 - v7;
  v9 = sub_226D6D4AC();
  v37 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = v36 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = v36 - v16;
  sub_226D6BA1C();
  v18 = sub_226D6B9FC();
  [v18 setFetchLimit_];
  v19 = a1;
  v20 = v38;
  result = sub_226D6EBBC();
  if (v20)
  {

    return v19 & 1;
  }

  v36[0] = v14;
  v36[1] = 0;
  v38 = v8;
  v22 = v37;
  if (result >> 62)
  {
    v35 = result;
    v23 = sub_226D6EDFC();
    result = v35;
  }

  else
  {
    v23 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = v11;
  v25 = v9;
  if (!v23)
  {

    goto LABEL_13;
  }

  v26 = v5;
  if ((result & 0xC000000000000001) != 0)
  {
    v27 = MEMORY[0x22AA8AFD0](0);
LABEL_9:
    v28 = v27;

    if (v28)
    {
      v29 = [v28 lastPruneDate];
      if (v29)
      {
        v30 = v29;
        sub_226D6D45C();

        (*(v22 + 56))(v26, 0, 1, v25);
      }

      else
      {
        (*(v22 + 56))(v26, 1, 1, v25);
      }

      v32 = v36[0];
      v33 = v26;
      v31 = v38;
      sub_226B72784(v33, v38);
      if ((*(v22 + 48))(v31, 1, v25) != 1)
      {
        (*(v22 + 32))(v17, v31, v25);
        sub_226D6D3DC();
        sub_226D6D46C();
        v19 = sub_226D6D40C();

        v34 = *(v22 + 8);
        v34(v24, v25);
        v34(v32, v25);
        v34(v17, v25);
        return v19 & 1;
      }

      goto LABEL_17;
    }

LABEL_13:

    v31 = v38;
    (*(v22 + 56))(v38, 1, 1, v25);
LABEL_17:
    sub_226AC47B0(v31, &qword_27D7A8BE0, &unk_226D718F0);
    v19 = 1;
    return v19 & 1;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v27 = *(result + 32);
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

void sub_226CCA04C(uint64_t a1, void *a2)
{
  v73 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_self();
  v4 = [v3 fetchRequest];
  if (!v4)
  {
    goto LABEL_48;
  }

  v5 = v4;
  v6 = [v3 entityDescriptionWithContext_];
  if (!v6)
  {
    goto LABEL_49;
  }

  v65 = v6;
  v66 = v5;
  v7 = [v6 propertiesByName];
  sub_226AE59B4(0, &unk_28105F430, 0x277CBE4F0);
  v8 = MEMORY[0x277D837D0];
  v9 = sub_226D6E2BC();
  if (!*(v9 + 16) || (v10 = sub_226C2FDD4(0x6D617473656D6974, 0xE900000000000070), (v11 & 1) == 0))
  {
LABEL_47:

    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  v12 = v10;

  v13 = *(*(v9 + 56) + 8 * v12);

  sub_226AE59B4(0, &qword_28105F4B8, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B80, &qword_226D73120);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_226D71840;
  v15 = [v13 name];
  v16 = sub_226D6E39C();
  v18 = v17;

  *(v14 + 56) = v8;
  *(v14 + 64) = sub_226B16404();
  *(v14 + 32) = v16;
  *(v14 + 40) = v18;
  v19 = sub_226D6D3EC();
  *(v14 + 96) = sub_226AE59B4(0, &qword_28105F410, 0x277CBEAA8);
  *(v14 + 104) = sub_226C8BE70(&qword_28105F400, &qword_28105F410, 0x277CBEAA8);
  *(v14 + 72) = v19;
  v20 = sub_226D6E91C();
  [v66 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8B70, &qword_226D73130);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_226D71F20;
  v22 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v23 = sub_226D6E36C();
  v24 = [v22 initWithKey:v23 ascending:0];

  *(v21 + 32) = v24;
  sub_226AE59B4(0, &qword_28105F498, 0x277CCAC98);
  v25 = sub_226D6E5CC();

  [v66 setSortDescriptors_];

  [v66 setFetchLimit_];
  v26 = [objc_opt_self() fetchHistoryWithFetchRequest_];
  [v26 setResultType_];
  [v26 setFetchLimit_];
  *&v72[0] = 0;
  v27 = [a2 executeRequest:v26 error:v72];
  v28 = *&v72[0];
  if (!v27)
  {
    v50 = *&v72[0];
    sub_226D6D04C();

    swift_willThrow();
    return;
  }

  v29 = v27;
  v63 = v26;
  v64 = v13;
  objc_opt_self();
  v30 = swift_dynamicCastObjCClassUnconditional();
  v31 = v28;
  if ([v30 result])
  {
    sub_226D6ED0C();
    swift_unknownObjectRelease();
    sub_226B24A98(&v71, v72);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A6F50, &unk_226D7D360);
    swift_dynamicCast();
    v32 = v70;
    v33 = sub_226D6EB3C();
    if (!v33)
    {

      return;
    }

    v62 = v29;
    v34 = v33;
    v35 = [v33 identifier];

    if (!v35)
    {

      return;
    }

    v69 = sub_226D6E39C();
    v37 = v36;

    *&v72[0] = MEMORY[0x277D84F90];
    v61 = v20;
    if (v70 >> 62)
    {
      goto LABEL_31;
    }

    for (i = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
    {
      v39 = 0;
      v67 = v32 & 0xFFFFFFFFFFFFFF8;
      v68 = v32 & 0xC000000000000001;
      while (1)
      {
        if (v68)
        {
          v40 = MEMORY[0x22AA8AFD0](v39, v32);
        }

        else
        {
          if (v39 >= *(v67 + 16))
          {
            goto LABEL_30;
          }

          v40 = *(v32 + 8 * v39 + 32);
        }

        v41 = v40;
        v42 = v39 + 1;
        if (__OFADD__(v39, 1))
        {
          break;
        }

        v43 = v32;
        v44 = [v40 storeID];
        v45 = sub_226D6E39C();
        v47 = v46;

        if (v45 == v69 && v47 == v37)
        {
        }

        else
        {
          v49 = sub_226D6F21C();

          if ((v49 & 1) == 0)
          {

            goto LABEL_14;
          }
        }

        sub_226D6EF6C();
        sub_226D6EF9C();
        sub_226D6EFAC();
        sub_226D6EF7C();
LABEL_14:
        v32 = v43;
        ++v39;
        if (v42 == i)
        {
          goto LABEL_32;
        }
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      ;
    }

LABEL_32:

    v51 = *&v72[0];
    if ((*&v72[0] & 0x8000000000000000) != 0 || (*&v72[0] & 0x4000000000000000) != 0)
    {
      v52 = sub_226D6EDFC();
      v53 = v64;
      v54 = v66;
      v55 = v61;
      v56 = v63;
      if (v52)
      {
LABEL_35:
        v57 = __OFSUB__(v52, 1);
        v58 = v52 - 1;
        if (v57)
        {
          __break(1u);
        }

        else if ((v51 & 0xC000000000000001) == 0)
        {
          if ((v58 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v58 < *(v51 + 16))
          {
            v59 = *(v51 + 8 * v58 + 32);
LABEL_40:
            v60 = v59;

            [v60 token];

            return;
          }

          __break(1u);
          goto LABEL_47;
        }

        v59 = MEMORY[0x22AA8AFD0](v58, v51);
        goto LABEL_40;
      }
    }

    else
    {
      v52 = *(*&v72[0] + 16);
      v53 = v64;
      v54 = v66;
      v55 = v61;
      v56 = v63;
      if (v52)
      {
        goto LABEL_35;
      }
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_226CCA838()
{
  result = qword_27D7A8D20;
  if (!qword_27D7A8D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8D20);
  }

  return result;
}

uint64_t sub_226CCA88C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_226D6D4AC();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_226CCA8D0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_226CC9C58(*(v1 + 32), *(v1 + 24));
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t sub_226CCA944(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_226CCA9B8(unint64_t result)
{
  if (result >> 62)
  {
    if (result >> 62 != 1)
    {
      return result;
    }

    result &= 0x3FFFFFFFFFFFFFFFuLL;
  }

  return result;
}

void sub_226CCA9D4(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 != 1)
    {
      return;
    }

    a1 &= 0x3FFFFFFFFFFFFFFFuLL;
  }
}

unint64_t sub_226CCAA14()
{
  result = qword_27D7A8D60;
  if (!qword_27D7A8D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8D60);
  }

  return result;
}

uint64_t sub_226CCAA84(void *a1, void *a2)
{
  v4 = [a1 trackedOrderIdentifier];
  v5 = sub_226D6E39C();
  v7 = v6;

  if (qword_28105F6A0 != -1)
  {
    swift_once();
  }

  v8 = sub_226D6E07C();
  __swift_project_value_buffer(v8, qword_28105F6A8);

  v9 = sub_226D6E05C();
  v10 = sub_226D6E9EC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_226AC4530(v5, v7, &v14);
    _os_log_impl(&dword_226AB4000, v9, v10, "Deleting extracted order with id: %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
  }

  [a2 deleteObject_];
  return v5;
}

uint64_t sub_226CCAC20(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_226D66DBC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v14[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226CCAF20(v3, v14);
  if (!v15)
  {
    return sub_226AC47B0(v14, &unk_27D7A7660, &unk_226D7B420);
  }

  (*(v7 + 104))(v9, *MEMORY[0x277CC64F0], v6);
  v10 = sub_226D66D6C();
  (*(v7 + 8))(v9, v6);
  if (v10)
  {
    v11 = __swift_project_boxed_opaque_existential_1(v14, v15);
    MEMORY[0x28223BE20](v11);
    *(&v13 - 2) = a1;
    *(&v13 - 1) = a2;
    off_283A6EDE8(sub_226C471B8, (&v13 - 4));
  }

  return sub_226B4FC54(v14);
}

uint64_t sub_226CCAF20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A7660, &unk_226D7B420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_226CCAF90(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_226D6F21C();
  }
}

uint64_t get_enum_tag_for_layout_string_13FinanceDaemon30TrackedOrderBiomeStreamDonatorVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_226CCAFE8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_226CCB044(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

void sub_226CCB0B0(uint64_t a1)
{
  v1 = a1;
  v34 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v2 = sub_226D6EDFC();
  }

  else
  {
    v2 = *(a1 + 16);
  }

  if (v2)
  {
    v41 = MEMORY[0x277D84F90];
    sub_226AE1D68(0, v2 & ~(v2 >> 63), 0);
    v36 = v41;
    if (v34)
    {
      v3 = sub_226D6EDAC();
    }

    else
    {
      v3 = sub_226D6ED6C();
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
        sub_226CCCFAC(v38, v39, v40, v1, &unk_28105F430, 0x277CBE4F0);
        v12 = v11;
        v13 = [v11 name];
        v14 = sub_226D6E39C();
        v16 = v15;

        v17 = v36;
        v41 = v36;
        v19 = *(v36 + 16);
        v18 = *(v36 + 24);
        if (v19 >= v18 >> 1)
        {
          sub_226AE1D68((v18 > 1), v19 + 1, 1);
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
          if (sub_226D6EDCC())
          {
            swift_isUniquelyReferenced_nonNull_native();
          }

          v2 = v33;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D88, &qword_226D7B538);
          v6 = sub_226D6E8CC();
          sub_226D6EE4C();
          v6(v37, 0);
          if (v5 == v33)
          {
LABEL_32:
            sub_226AE5444(v38, v39, v40);
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
                sub_226AE5444(v8, v35, 0);
                v21 = __clz(__rbit64(v28)) + v25;
                goto LABEL_31;
              }
            }

            sub_226AE5444(v8, v35, 0);
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

uint64_t sub_226CCB428(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

void sub_226CCB4D4(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v17 = a1;
  v5 = type metadata accessor for AccountAndStartingDate(0);
  v16 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = 1 << *(a3 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a3 + 56);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (v10)
  {
LABEL_9:
    sub_226AE51A0(*(a3 + 48) + *(v16 + 72) * (__clz(__rbit64(v10)) | (v12 << 6)), v7);
    v14 = v17(v7);
    sub_226AE5204(v7);
    if (!v3)
    {
      v10 &= v10 - 1;
      if ((v14 & 1) == 0)
      {
        continue;
      }
    }

LABEL_11:

    return;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {
      goto LABEL_11;
    }

    v10 = *(a3 + 56 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_226CCB67C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_226D6EB6C();
  *a1 = result;
  return result;
}

void sub_226CCB6B8(void *a1, uint64_t a2)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v4 = [objc_opt_self() currentQueryGenerationToken];
  v30[0] = 0;
  v5 = [a1 setQueryGenerationFromToken:v4 error:v30];

  v6 = v30[0];
  if (v5)
  {
    v7 = *(a2 + 56);
    v8 = v6;
    v20 = sub_226D6EB5C();

    if (v20 >> 62)
    {
      v21 = sub_226D6EDFC();
      if (v21)
      {
LABEL_10:
        sub_226CCD420(v20);
        if (v22)
        {
          sub_226CCBA50(a1);
        }

        else
        {
          v23 = sub_226CCD748(v20);
          sub_226CCBFA0(v23);

          v24 = sub_226CCDC00(v20);
          sub_226CCC1C0(v24, a1);
        }

        v25 = v21 - 1;
        if (__OFSUB__(v21, 1))
        {
          __break(1u);
        }

        else if ((v20 & 0xC000000000000001) == 0)
        {
          if ((v25 & 0x8000000000000000) != 0)
          {
            __break(1u);
          }

          else if (v25 < *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v26 = *(v20 + 8 * v25 + 32);
LABEL_18:
            v27 = v26;

            v28 = [v27 token];

            v29 = *(a2 + 56);
            *(a2 + 56) = v28;

LABEL_21:
            sub_226B6D63C(a1);
            return;
          }

          __break(1u);
        }

        v26 = MEMORY[0x22AA8AFD0](v25, v20);
        goto LABEL_18;
      }
    }

    else
    {
      v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v21)
      {
        goto LABEL_10;
      }
    }

    goto LABEL_21;
  }

  v9 = v30[0];
  v10 = sub_226D6D04C();

  swift_willThrow();
  if (qword_28105F708 != -1)
  {
    swift_once();
  }

  v11 = sub_226D6E07C();
  __swift_project_value_buffer(v11, qword_28105F710);
  v12 = v10;
  v13 = sub_226D6E05C();
  v14 = sub_226D6E9CC();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v30[0] = v16;
    *v15 = 136315138;
    swift_getErrorValue();
    v17 = sub_226D6F26C();
    v19 = sub_226AC4530(v17, v18, v30);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_226AB4000, v13, v14, " Failed to process account changes in the daemon %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v16);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
    MEMORY[0x22AA8BEE0](v15, -1, -1);
  }

  [a1 reset];
}

char *sub_226CCBA50(uint64_t a1)
{
  v2 = v1;
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_226AE532C((v3 + 16), v56);
  v4 = v57;
  v5 = v58;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  (*(v5 + 8))(&v59, v4, v5);
  v6 = v59;
  __swift_destroy_boxed_opaque_existential_0Tm(v56);
  v7 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_226AE532C((v7 + 103), v56);
  v53 = v6;
  v59 = v6;
  v8 = BankConnectPaymentPassDataSource.paymentPasses()();
  v9 = v8;
  if (v8 >> 62)
  {
    v10 = sub_226D6EDFC();
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_13:

    v13 = MEMORY[0x277D84F90];
    goto LABEL_14;
  }

  v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v10)
  {
    goto LABEL_13;
  }

LABEL_3:
  v59 = MEMORY[0x277D84F90];
  result = sub_226AE1D68(0, v10 & ~(v10 >> 63), 0);
  if (v10 < 0)
  {
    __break(1u);
    return result;
  }

  v12 = 0;
  v13 = v59;
  do
  {
    v14 = v13;
    if ((v9 & 0xC000000000000001) != 0)
    {
      v15 = MEMORY[0x22AA8AFD0](v12, v9);
    }

    else
    {
      v15 = *(v9 + 8 * v12 + 32);
    }

    v16 = v15;
    v17 = [v16 primaryAccountIdentifier];
    v18 = sub_226D6E39C();
    v20 = v19;

    v13 = v14;
    v59 = v14;
    v21 = *(v14 + 16);
    v22 = *(v13 + 24);
    if (v21 >= v22 >> 1)
    {
      sub_226AE1D68((v22 > 1), v21 + 1, 1);
      v13 = v59;
    }

    ++v12;
    *(v13 + 16) = v21 + 1;
    v23 = v13 + 16 * v21;
    *(v23 + 32) = v18;
    *(v23 + 40) = v20;
  }

  while (v10 != v12);

LABEL_14:
  v24 = *(v13 + 16);
  if (v24)
  {
    v25 = (v13 + 40);
    do
    {
      v34 = *(v25 - 1);
      v33 = *v25;
      v35 = __swift_project_boxed_opaque_existential_1(v56, v57);
      v36 = *(*v35 + 40);
      v37 = *(*v35 + 48);
      __swift_project_boxed_opaque_existential_1((*v35 + 16), v36);
      v38 = *(v37 + 8);

      v39 = v38(&v59, v36, v37);
      v40 = v59;
      MEMORY[0x28223BE20](v39);
      sub_226D6EB8C();
      if (v55)
      {
        sub_226CCE0AC();
        v41 = swift_allocError();
        *v42 = v55;
        swift_willThrow();

LABEL_22:
        v55 = 0;
        if (qword_28105F708 != -1)
        {
          swift_once();
        }

        v47 = sub_226D6E07C();
        __swift_project_value_buffer(v47, qword_28105F710);

        v48 = v41;
        v49 = sub_226D6E05C();
        v50 = sub_226D6E9CC();

        if (os_log_type_enabled(v49, v50))
        {
          v26 = swift_slowAlloc();
          v27 = swift_slowAlloc();
          v54 = v24;
          v28 = swift_slowAlloc();
          v59 = v28;
          *v26 = 136315394;
          v29 = sub_226AC4530(v34, v33, &v59);

          *(v26 + 4) = v29;
          *(v26 + 12) = 2112;
          v30 = v41;
          v31 = _swift_stdlib_bridgeErrorToNSError();
          *(v26 + 14) = v31;
          *v27 = v31;
          _os_log_impl(&dword_226AB4000, v49, v50, "Failed to refresh card art for %s: %@.", v26, 0x16u);
          sub_226B17298(v27);
          MEMORY[0x22AA8BEE0](v27, -1, -1);
          __swift_destroy_boxed_opaque_existential_0Tm(v28);
          v32 = v28;
          v24 = v54;
          MEMORY[0x22AA8BEE0](v32, -1, -1);
          MEMORY[0x22AA8BEE0](v26, -1, -1);
        }

        else
        {
        }

        goto LABEL_17;
      }

      v43 = v59;
      v59 = v40;
      v44._countAndFlagsBits = v34;
      v44._object = v33;
      v45 = BankConnectPaymentPassDataSource.isDynamicCardArtEnabled(for:)(v44);
      if (v46)
      {

        v41 = v46;
        goto LABEL_22;
      }

      v55 = 0;
      if (v45)
      {
        if ((v43 & 1) == 0)
        {
          v59 = v40;
          v51 = 0;
LABEL_31:
          v52._countAndFlagsBits = v34;
          v52._object = v33;
          BankConnectPaymentPassDataSource.setDynamicCardArt(enabled:for:)(v51, v52);
        }
      }

      else if (v43)
      {
        v59 = v40;
        v51 = 1;
        goto LABEL_31;
      }

LABEL_17:
      v25 += 2;
      --v24;
    }

    while (v24);
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v56);
}

void sub_226CCBFA0(uint64_t a1)
{
  v3 = __swift_project_boxed_opaque_existential_1((v1 + 16), *(v1 + 40));
  sub_226AE532C((v3 + 16), v25);
  v4 = v26;
  v5 = v27;
  __swift_project_boxed_opaque_existential_1(v25, v26);
  (*(v5 + 8))(&v24, v4, v5);
  v6 = v24;
  __swift_destroy_boxed_opaque_existential_0Tm(v25);
  v7 = *(a1 + 16);
  if (v7)
  {
    v8 = (a1 + 40);
    v9 = &unk_28105F000;
    v10 = qword_28105F710;
    v23 = v6;
    do
    {
      v13 = *(v8 - 1);
      v12 = *v8;
      v14 = v9[225];

      if (v14 != -1)
      {
        swift_once();
      }

      v15 = sub_226D6E07C();
      __swift_project_value_buffer(v15, v10);

      v16 = sub_226D6E05C();
      v17 = sub_226D6E9EC();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = v10;
        v19 = v9;
        v20 = swift_slowAlloc();
        v21 = swift_slowAlloc();
        v25[0] = v21;
        *v20 = 136315138;
        *(v20 + 4) = sub_226AC4530(v13, v12, v25);
        _os_log_impl(&dword_226AB4000, v16, v17, "Deleted an account matched with %s, disabling the card art.", v20, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v21);
        MEMORY[0x22AA8BEE0](v21, -1, -1);
        v22 = v20;
        v9 = v19;
        v10 = v18;
        v6 = v23;
        MEMORY[0x22AA8BEE0](v22, -1, -1);
      }

      v25[0] = v6;
      v11._countAndFlagsBits = v13;
      v11._object = v12;
      BankConnectPaymentPassDataSource.setDynamicCardArt(enabled:for:)(0, v11);

      v8 += 2;
      --v7;
    }

    while (v7);
  }
}

uint64_t sub_226CCC1C0(uint64_t a1, void *a2)
{
  v5 = __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_226AE532C((v5 + 16), v15);
  v6 = v16;
  v7 = v17;
  __swift_project_boxed_opaque_existential_1(v15, v16);
  (*(v7 + 1))(v20, v6, v7);
  v8 = v20[0];
  __swift_destroy_boxed_opaque_existential_0Tm(v15);
  __swift_project_boxed_opaque_existential_1((v2 + 16), *(v2 + 40));
  sub_226D6BADC();
  sub_226AE532C(v20, v19);
  v9 = swift_allocObject();
  v9[2] = a1;
  v9[3] = a2;
  sub_226B6B030(v19, (v9 + 4));
  v9[9] = v8;
  v10 = swift_allocObject();
  *(v10 + 16) = sub_226CCE100;
  *(v10 + 24) = v9;
  v17 = sub_226CBEEEC;
  v18 = v10;
  v15[0] = MEMORY[0x277D85DD0];
  v15[1] = 1107296256;
  v15[2] = sub_226CAD254;
  v16 = &block_descriptor_14;
  v11 = _Block_copy(v15);

  v12 = a2;
  v13 = v8;

  [v12 performBlockAndWait_];
  _Block_release(v11);

  __swift_destroy_boxed_opaque_existential_0Tm(v20);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  return result;
}

void sub_226CCC3E0(unint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v63 = a4;
  v61 = a3;
  v53 = a2;
  v60 = sub_226D6831C();
  v5 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = (&v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_226D6A30C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - v12;
  v76 = sub_226D6D06C();
  v14 = *(v76 - 8);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v76);
  v75 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
    goto LABEL_39;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v18 = 0;
    v52 = a1 & 0xC000000000000001;
    v47 = a1 & 0xFFFFFFFFFFFFFF8;
    v46 = a1 + 32;
    v51 = v14 + 1;
    v50 = *MEMORY[0x277CC7B60];
    v72 = v8 + 13;
    v74 = v8 + 1;
    v67 = *MEMORY[0x277CC7B68];
    v58 = *MEMORY[0x277CC72A0];
    v57 = (v5 + 104);
    v56 = (v5 + 8);
    v19 = MEMORY[0x277D84F90];
    v49 = a1;
    v48 = i;
    while (1)
    {
      if (v52)
      {
        v20 = MEMORY[0x22AA8AFD0](v18, a1, v15);
      }

      else
      {
        if (v18 >= *(v47 + 16))
        {
          goto LABEL_38;
        }

        v20 = *(v46 + 8 * v18);
      }

      v8 = v20;
      if (__OFADD__(v18++, 1))
      {
        break;
      }

      v14 = [v53 objectWithID_];
      sub_226D6794C();
      v22 = swift_dynamicCastClass();
      if (v22)
      {
        v62 = v14;
        v54 = v8;
        v55 = v18;
        v14 = [v22 accountObjects];
        v82 = v19;
        a1 = v75;
        sub_226D6EBEC();
        sub_226AC44A0(&qword_27D7A8D78, MEMORY[0x277CC9178], MEMORY[0x277CC9180]);
        sub_226D6ECBC();
        if (v81)
        {
          v77 = v19;
          do
          {
            sub_226B24A98(&v80, &v78);
            sub_226D69F0C();
            if ((swift_dynamicCast() & 1) != 0 && v79)
            {
              MEMORY[0x22AA8A610]();
              if (*((v82 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v82 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                a1 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
                sub_226D6E61C();
              }

              sub_226D6E65C();
              v77 = v82;
            }

            sub_226D6ECBC();
          }

          while (v81);
        }

        else
        {
          v77 = v19;
        }

        (*v51)(v75, v76);
        sub_226D678CC();
        v71 = *v72;
        v71(v10, v50, v7);
        v5 = sub_226AC44A0(&qword_27D7A6E78, MEMORY[0x277CC7B70], MEMORY[0x277CC7B78]);
        sub_226D6E53C();
        v8 = v10;
        v70 = v5;
        sub_226D6E53C();
        v73 = *v74;
        v73(v10, v7);
        v65 = v80;
        v64 = v78;
        v23 = v77;
        if (v77 >> 62)
        {
          v5 = v77;
          v24 = sub_226D6EDFC();
          v23 = v5;
        }

        else
        {
          v24 = *((v77 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v25 = v62;
        if (v24)
        {
          if (v24 < 1)
          {
            goto LABEL_37;
          }

          v26 = 0;
          v68 = v23 & 0xC000000000000001;
          v69 = v24;
          do
          {
            if (v68)
            {
              v27 = MEMORY[0x22AA8AFD0](v26);
            }

            else
            {
              v27 = *(v23 + 8 * v26 + 32);
            }

            v14 = v27;
            v71(v10, v67, v7);
            sub_226D6E53C();
            v8 = v10;
            sub_226D6E53C();
            v73(v10, v7);
            if (v80 == v78)
            {
              v28 = v61[3];
              v66 = v61[4];
              v8 = __swift_project_boxed_opaque_existential_1(v61, v28);
              v29 = v7;
              v30 = v10;
              v31 = [v14 accountId];
              v32 = v13;
              v33 = sub_226D6E39C();
              v35 = v34;

              v36 = v59;
              *v59 = v33;
              v36[1] = v35;
              v13 = v32;
              v37 = v60;
              (*v57)(v36, v58, v60);
              sub_226D6AD5C();
              v38 = v36;
              v10 = v30;
              v7 = v29;
              v25 = v62;
              (*v56)(v38, v37);
            }

            v39 = [v14 externalAccountId];
            if (v39)
            {
              v40 = v65 == v64;
              v41 = v39;
              v42 = sub_226D6E39C();
              v44 = v43;

              *&v80 = v63;
              v8 = &v80;
              v45._countAndFlagsBits = v42;
              v45._object = v44;
              BankConnectPaymentPassDataSource.setDynamicCardArt(enabled:for:)(v40, v45);
            }

            v23 = v77;
            ++v26;
          }

          while (v69 != v26);
        }

        v5 = v23;

        v73(v13, v7);
        a1 = v49;
        i = v48;
        v18 = v55;
        v19 = MEMORY[0x277D84F90];
        if (v55 == v48)
        {
          return;
        }
      }

      else
      {

        if (v18 == i)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    ;
  }
}

uint64_t sub_226CCCC4C()
{
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 16));

  return swift_deallocClassInstance();
}

void sub_226CCCCEC(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
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

      MEMORY[0x22AA8AEC0](a1, a2, v7);
      sub_226D69F0C();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_226D69F0C();
    if (sub_226D6EDDC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_226D6EDEC();
    swift_dynamicCast();
    v4 = v15;
    v8 = sub_226D6EC2C();
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = sub_226D6EC3C();

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

uint64_t sub_226CCCEEC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_226D6D52C();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_226CCCFAC(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t *a5, void *a6)
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

      MEMORY[0x22AA8AEC0](a1, a2, v11);
      sub_226AE59B4(0, a5, a6);
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    sub_226AE59B4(0, a5, a6);
    if (sub_226D6EDDC() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    sub_226D6EDEC();
    swift_dynamicCast();
    v6 = v19;
    v12 = sub_226D6EC2C();
    v13 = -1 << *(a4 + 32);
    v10 = v12 & ~v13;
    if ((*(a4 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v14 = ~v13;
      do
      {
        v15 = *(*(a4 + 48) + 8 * v10);
        v16 = sub_226D6EC3C();

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

uint64_t sub_226CCD1D8(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return sub_226D6F21C() & 1;
  }
}

uint64_t sub_226CCD230(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 48) + 16 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_226CCD284()
{
  __swift_project_boxed_opaque_existential_1((v0 + 16), *(v0 + 40));
  v1 = sub_226D676AC();
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;
  v3 = swift_allocObject();
  *(v3 + 16) = sub_226CCD400;
  *(v3 + 24) = v2;
  v8[4] = sub_226B2A000;
  v8[5] = v3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = sub_226CAD254;
  v8[3] = &block_descriptor_17;
  v4 = _Block_copy(v8);
  v5 = v1;

  [v5 performBlockAndWait_];

  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_17(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_226CCD420(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_37:
    v2 = sub_226D6EDFC();
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
      v3 = 0;
      v4 = v1 & 0xC000000000000001;
      v27 = v1 + 32;
      v28 = v1 & 0xFFFFFFFFFFFFFF8;
      v5 = &selRef_setSortDescriptors_;
      v30 = v2;
      v31 = v1;
      v29 = v1 & 0xC000000000000001;
      do
      {
        if (v4)
        {
          v7 = MEMORY[0x22AA8AFD0](v3, v1);
        }

        else
        {
          if (v3 >= *(v28 + 16))
          {
            __break(1u);
            return;
          }

          v7 = *(v27 + 8 * v3);
        }

        v6 = v7;
        if (__OFADD__(v3++, 1))
        {
          goto LABEL_36;
        }

        v9 = [v7 v5[94]];
        if (v9)
        {
          v10 = v9;
          v32 = v3;
          v33 = v6;
          sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
          v1 = sub_226D6E5EC();

          if (v1 >> 62)
          {
            v11 = sub_226D6EDFC();
            if (v11)
            {
LABEL_14:
              v12 = 0;
              while (1)
              {
                if ((v1 & 0xC000000000000001) != 0)
                {
                  v13 = MEMORY[0x22AA8AFD0](v12, v1);
                }

                else
                {
                  if (v12 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_35;
                  }

                  v13 = *(v1 + 8 * v12 + 32);
                }

                v14 = v13;
                v15 = v12 + 1;
                if (__OFADD__(v12, 1))
                {
                  break;
                }

                v16 = [v13 changedObjectID];
                v17 = [v16 entity];

                v18 = [v17 name];
                if (v18)
                {
                  v19 = sub_226D6E39C();
                  v21 = v20;
                }

                else
                {
                  v19 = 0;
                  v21 = 0;
                }

                sub_226D68E6C();
                v22 = [swift_getObjCClassFromMetadata() entityName];
                v23 = sub_226D6E39C();
                v25 = v24;

                if (v21)
                {
                  if (v19 == v23 && v21 == v25)
                  {

                    goto LABEL_33;
                  }

                  v26 = sub_226D6F21C();

                  if (v26)
                  {
                    v14 = v33;
LABEL_33:

                    return;
                  }
                }

                else
                {
                }

                ++v12;
                if (v15 == v11)
                {
                  goto LABEL_4;
                }
              }

              __break(1u);
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
              goto LABEL_37;
            }
          }

          else
          {
            v11 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v11)
            {
              goto LABEL_14;
            }
          }

LABEL_4:

          v2 = v30;
          v1 = v31;
          v3 = v32;
          v6 = v33;
          v4 = v29;
          v5 = &selRef_setSortDescriptors_;
        }
      }

      while (v3 != v2);
    }
  }
}

char *sub_226CCD748(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
    goto LABEL_47;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v38 = v1 + 32;
    v39 = v1 & 0xFFFFFFFFFFFFFF8;
    v42 = v1;
    v43 = MEMORY[0x277D84F90];
    v5 = &selRef_setSortDescriptors_;
    v40 = v1 & 0xC000000000000001;
    v41 = i;
    while (1)
    {
      if (v4)
      {
        v6 = MEMORY[0x22AA8AFD0](v3, v1);
      }

      else
      {
        if (v3 >= *(v39 + 16))
        {
          goto LABEL_46;
        }

        v6 = *(v38 + 8 * v3);
      }

      v7 = v6;
      if (__OFADD__(v3++, 1))
      {
        __break(1u);
        goto LABEL_45;
      }

      v9 = [v6 v5[94]];
      if (v9)
      {
        break;
      }

LABEL_4:
      if (v3 == i)
      {
        return v43;
      }
    }

    v10 = v9;
    sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
    v11 = sub_226D6E5EC();

    if (!(v11 >> 62))
    {
      v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_13;
      }

      goto LABEL_43;
    }

    v12 = sub_226D6EDFC();
    if (!v12)
    {
LABEL_43:

      goto LABEL_4;
    }

LABEL_13:
    sub_226D69F0C();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    if (v12 >= 1)
    {
      v14 = ObjCClassFromMetadata;
      v44 = v7;
      v45 = v3;
      v15 = 0;
      while (1)
      {
        if ((v11 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x22AA8AFD0](v15, v11);
        }

        else
        {
          v16 = *(v11 + 8 * v15 + 32);
        }

        v17 = v16;
        v18 = [v16 changedObjectID];
        v19 = [v18 entity];

        v20 = [v19 name];
        if (v20)
        {
          v21 = sub_226D6E39C();
          v23 = v22;
        }

        else
        {
          v21 = 0;
          v23 = 0;
        }

        v24 = [v14 entityName];
        v25 = sub_226D6E39C();
        v27 = v26;

        if (v23)
        {
          if (v21 == v25 && v23 == v27)
          {
          }

          else
          {
            v28 = sub_226D6F21C();

            if ((v28 & 1) == 0)
            {
              goto LABEL_37;
            }
          }

          if ([v17 changeType] == 2)
          {
            v29 = [v17 tombstone];
            if (v29)
            {
              v30 = v29;
              v31 = sub_226D6E2BC();

              sub_226D6EE8C();
              if (!*(v31 + 16) || (v32 = sub_226C2FE4C(v46), (v33 & 1) == 0))
              {

                sub_226AE5030(v46);
                goto LABEL_38;
              }

              sub_226AC4708(*(v31 + 56) + 32 * v32, v47);
              sub_226AE5030(v46);

              if (swift_dynamicCast())
              {
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v43 = sub_226BBAB0C(0, *(v43 + 2) + 1, 1, v43);
                }

                v35 = *(v43 + 2);
                v34 = *(v43 + 3);
                if (v35 >= v34 >> 1)
                {
                  v43 = sub_226BBAB0C((v34 > 1), v35 + 1, 1, v43);
                }

                *(v43 + 2) = v35 + 1;
                v36 = &v43[16 * v35];
                *(v36 + 4) = 0xD000000000000011;
                *(v36 + 5) = 0x8000000226D86610;
                goto LABEL_38;
              }
            }
          }
        }

        else
        {
        }

LABEL_37:

LABEL_38:
        if (v12 == ++v15)
        {

          i = v41;
          v1 = v42;
          v3 = v45;
          v4 = v40;
          v5 = &selRef_setSortDescriptors_;
          goto LABEL_4;
        }
      }
    }

LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    ;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_226CCDC00(unint64_t a1)
{
  v1 = a1;
  v47 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_41;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_226D6EDFC())
  {
    v3 = 0;
    v4 = v1 & 0xC000000000000001;
    v36 = v1 + 32;
    v37 = v1 & 0xFFFFFFFFFFFFFF8;
    v40 = v1;
    v41 = MEMORY[0x277D84F90];
    v43 = 0x8000000226D87550;
    v38 = v1 & 0xC000000000000001;
    v39 = i;
    while (1)
    {
      if (v4)
      {
        v5 = MEMORY[0x22AA8AFD0](v3, v1);
      }

      else
      {
        if (v3 >= *(v37 + 16))
        {
          goto LABEL_40;
        }

        v5 = *(v36 + 8 * v3);
      }

      v6 = v5;
      if (__OFADD__(v3++, 1))
      {
        __break(1u);
        goto LABEL_39;
      }

      v8 = [v5 changes];
      if (v8)
      {
        break;
      }

LABEL_4:
      if (v3 == i)
      {
        return v41;
      }
    }

    v9 = v8;
    v44 = v6;
    sub_226AE59B4(0, &unk_27D7A8C30, 0x277CBE4A8);
    v10 = sub_226D6E5EC();

    if (!(v10 >> 62))
    {
      v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v11)
      {
        goto LABEL_13;
      }

      goto LABEL_37;
    }

    v11 = sub_226D6EDFC();
    if (!v11)
    {
LABEL_37:

      goto LABEL_4;
    }

LABEL_13:
    if (v11 >= 1)
    {
      v42 = v3;
      v12 = 0;
      v45 = v10 & 0xC000000000000001;
      while (1)
      {
        if (v45)
        {
          v13 = MEMORY[0x22AA8AFD0](v12, v10);
        }

        else
        {
          v13 = *(v10 + 8 * v12 + 32);
        }

        v14 = v13;
        v15 = [v13 changedObjectID];
        v16 = [v15 entity];

        v17 = [v16 name];
        if (!v17)
        {
          goto LABEL_32;
        }

        v18 = sub_226D6E39C();
        v20 = v19;

        sub_226D6794C();
        v21 = [swift_getObjCClassFromMetadata() entityName];
        v22 = sub_226D6E39C();
        v24 = v23;

        if (v18 == v22 && v20 == v24)
        {
        }

        else
        {
          v26 = sub_226D6F21C();

          if ((v26 & 1) == 0)
          {
            goto LABEL_32;
          }
        }

        if ([v14 changeType] == 1)
        {
          v27 = [v14 updatedProperties];
          if (v27)
          {
            v28 = v27;
            sub_226AE59B4(0, &unk_28105F430, 0x277CBE4F0);
            sub_226CCE110();
            v29 = sub_226D6E89C();

            sub_226CCB0B0(v29);
            v31 = v30;

            v46[0] = 0xD000000000000012;
            v46[1] = v43;
            MEMORY[0x28223BE20](v32);
            v35[2] = v46;
            LOBYTE(v29) = sub_226CCB428(sub_226CCE178, v35, v31);

            if (v29)
            {
              v33 = [v14 changedObjectID];
              MEMORY[0x22AA8A610]();
              if (*((v47 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v47 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
              {
                sub_226D6E61C();
              }

              sub_226D6E65C();

              v41 = v47;
              goto LABEL_33;
            }
          }
        }

LABEL_32:

LABEL_33:
        if (v11 == ++v12)
        {

          i = v39;
          v1 = v40;
          v3 = v42;
          v4 = v38;
          goto LABEL_4;
        }
      }
    }

LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    ;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_226CCE0AC()
{
  result = qword_27D7A8D70;
  if (!qword_27D7A8D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8D70);
  }

  return result;
}

unint64_t sub_226CCE110()
{
  result = qword_27D7A8D80;
  if (!qword_27D7A8D80)
  {
    sub_226AE59B4(255, &unk_28105F430, 0x277CBE4F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8D80);
  }

  return result;
}

uint64_t sub_226CCE178(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_226D6F21C() & 1;
  }
}

uint64_t BankConnectServiceImplementation.getConsent(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = sub_226D6EB9C();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = sub_226D6B9BC();
  v3[8] = v5;
  v6 = *(v5 - 8);
  v3[9] = v6;
  v3[10] = *(v6 + 64);
  v3[11] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CCE300, 0, 0);
}

uint64_t sub_226CCE300()
{
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[6];
  v16 = v0[7];
  v6 = v0[5];
  v7 = v0[3];
  __swift_project_boxed_opaque_existential_1((v0[4] + 16), *(v0[4] + 40));
  v8 = sub_226D676AC();
  v0[12] = v8;
  (*(v4 + 16))(v1, v7, v3);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  v0[13] = v10;
  (*(v4 + 32))(v10 + v9, v1, v3);
  *(v10 + ((v2 + v9 + 7) & 0xFFFFFFFFFFFFFFF8)) = v8;
  (*(v5 + 104))(v16, *MEMORY[0x277CBE110], v6);
  v8;
  v11 = swift_task_alloc();
  v0[14] = v11;
  v12 = sub_226D682FC();
  *v11 = v0;
  v11[1] = sub_226CCE4BC;
  v13 = v0[7];
  v14 = v0[2];

  return MEMORY[0x28210EE50](v14, v13, sub_226CCE81C, v10, v12);
}

uint64_t sub_226CCE4BC()
{
  v2 = *(*v1 + 56);
  v3 = *(*v1 + 48);
  v4 = *(*v1 + 40);
  *(*v1 + 120) = v0;

  (*(v3 + 8))(v2, v4);

  if (v0)
  {
    v5 = sub_226CCE6C8;
  }

  else
  {
    v5 = sub_226CCE650;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_226CCE650()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226CCE6C8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_226CCE740(uint64_t a1, uint64_t a2)
{
  sub_226D6794C();
  result = sub_226D6789C();
  if (!v2)
  {
    if (result)
    {
      return sub_226D6830C();
    }

    else
    {
      v4 = sub_226D6A90C();
      sub_226CCE8B4();
      swift_allocError();
      (*(*(v4 - 8) + 104))(v5, *MEMORY[0x277CC7CB8], v4);
      return swift_willThrow();
    }
  }

  return result;
}

uint64_t sub_226CCE81C()
{
  v1 = *(sub_226D6B9BC() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_226CCE740(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

unint64_t sub_226CCE8B4()
{
  result = qword_27D7A8D90;
  if (!qword_27D7A8D90)
  {
    sub_226D6A90C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7A8D90);
  }

  return result;
}

uint64_t sub_226CCE90C(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = aBlock - v11;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6E07C();
  __swift_project_value_buffer(v13, qword_28105F5E0);

  v14 = sub_226D6E05C();
  v15 = sub_226D6E9EC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_226AC4530(a2, a3, aBlock);
    _os_log_impl(&dword_226AB4000, v14, v15, "System task with identifier: %s started running.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  v18 = sub_226D6E79C();
  (*(*(v18 - 8) + 56))(v12, 1, 1, v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a2;
  v20[7] = a3;
  v20[8] = v19;

  v21 = sub_226B60364(0, 0, v12, &unk_226D7B568, v20);
  v22 = swift_allocObject();
  v22[2] = a2;
  v22[3] = a3;
  v22[4] = v21;
  aBlock[4] = sub_226CCFEB4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226C0B9A8;
  aBlock[3] = &block_descriptor_23;
  v23 = _Block_copy(aBlock);

  [a1 setExpirationHandler_];
  _Block_release(v23);
}

uint64_t sub_226CCEC44(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[6] = a7;
  v8[7] = a8;
  v8[5] = a6;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  v8[8] = v9;
  *v9 = v8;
  v9[1] = sub_226CCED34;

  return v11();
}

uint64_t sub_226CCED34()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_226CCF004;
  }

  else
  {
    v2 = sub_226CCEE48;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_226CCEE48()
{
  v13 = v0;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F5E0);

  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[5];
    v4 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v12 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_226AC4530(v5, v4, &v12);
    _os_log_impl(&dword_226AB4000, v2, v3, "System task with identifier: %s completed successfully.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v9 = Strong;
    [Strong setTaskCompleted];
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_226CCF004()
{
  v20 = v0;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_226D6E07C();
  __swift_project_value_buffer(v2, qword_28105F5E0);

  v3 = v1;
  v4 = sub_226D6E05C();
  v5 = sub_226D6E9CC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v9 = v0[5];
    v8 = v0[6];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v19 = v12;
    *v10 = 136315394;
    *(v10 + 4) = sub_226AC4530(v9, v8, &v19);
    *(v10 + 12) = 2112;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v10 + 14) = v14;
    *v11 = v14;
    _os_log_impl(&dword_226AB4000, v4, v5, "System task with identifier: %s failed with error: %@", v10, 0x16u);
    sub_226B17298(v11);
    MEMORY[0x22AA8BEE0](v11, -1, -1);
    __swift_destroy_boxed_opaque_existential_0Tm(v12);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
    MEMORY[0x22AA8BEE0](v10, -1, -1);
  }

  else
  {
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    [Strong setTaskCompleted];
  }

  v17 = v0[1];

  return v17();
}

uint64_t sub_226CCF240(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7A8BA0, &qword_226D734E0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = aBlock - v11;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6E07C();
  __swift_project_value_buffer(v13, qword_28105F5E0);

  v14 = sub_226D6E05C();
  v15 = sub_226D6E9EC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    aBlock[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = sub_226AC4530(a2, a3, aBlock);
    _os_log_impl(&dword_226AB4000, v14, v15, "System task with identifier: %s started running.", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v17);
    MEMORY[0x22AA8BEE0](v17, -1, -1);
    MEMORY[0x22AA8BEE0](v16, -1, -1);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A8D98, &qword_226D7B548);
  v18 = swift_allocObject();
  *(v18 + 20) = 0;
  *(v18 + 16) = 0;
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v20 = swift_allocObject();
  *(v20 + 16) = v18;
  *(v20 + 24) = v19;
  v21 = sub_226D6E79C();
  (*(*(v21 - 8) + 56))(v12, 1, 1, v21);
  v22 = swift_allocObject();
  v22[2] = 0;
  v22[3] = 0;
  v22[4] = a4;
  v22[5] = a5;
  v22[6] = sub_226CCF6A8;
  v22[7] = v20;
  v22[8] = a2;
  v22[9] = a3;
  v22[10] = v18;
  swift_retain_n();

  v23 = sub_226B60364(0, 0, v12, &unk_226D7B558, v22);
  v24 = swift_allocObject();
  v24[2] = a2;
  v24[3] = a3;
  v24[4] = v23;
  aBlock[4] = sub_226CCFEDC;
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_226C0B9A8;
  aBlock[3] = &block_descriptor_18;
  v25 = _Block_copy(aBlock);

  [a1 setExpirationHandler_];
  _Block_release(v25);
}

uint64_t sub_226CCF5F8(os_unfair_lock_s *a1, uint64_t a2)
{
  swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  os_unfair_lock_lock(a1 + 5);
  sub_226CCFD7C(&a1[4]);
  os_unfair_lock_unlock(a1 + 5);
}

void sub_226CCF6B0(_BYTE *a1, uint64_t a2)
{
  if ((*a1 & 1) == 0)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v4 = Strong;
      [Strong setTaskCompleted];
    }

    *a1 = 1;
  }
}

uint64_t sub_226CCF734(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = v15;
  v8[4] = v16;
  v8[2] = a8;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v8[5] = v11;
  *v11 = v8;
  v11[1] = sub_226CCF848;

  return v13(a6, a7);
}

uint64_t sub_226CCF848()
{

  return MEMORY[0x2822009F8](sub_226CCF944, 0, 0);
}

void sub_226CCF944()
{
  v11 = v0;
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v1 = sub_226D6E07C();
  __swift_project_value_buffer(v1, qword_28105F5E0);

  v2 = sub_226D6E05C();
  v3 = sub_226D6E9EC();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = v0[2];
    v4 = v0[3];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v10 = v7;
    *v6 = 136315138;
    *(v6 + 4) = sub_226AC4530(v5, v4, &v10);
    _os_log_impl(&dword_226AB4000, v2, v3, "System task with identifier: %s finished running.", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v7);
    MEMORY[0x22AA8BEE0](v7, -1, -1);
    MEMORY[0x22AA8BEE0](v6, -1, -1);
  }

  v8 = v0[4];
  os_unfair_lock_lock((v8 + 20));
  if (*(v8 + 16) == 1)
  {
    os_unfair_lock_unlock((v8 + 20));
    v9 = v0[1];

    v9();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_226CCFAEC(uint64_t a1)
{
  v4 = v1[3];
  v12 = v1[2];
  v5 = v1[4];
  v6 = v1[5];
  v7 = v1[6];
  v8 = v1[7];
  v9 = v1[8];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_226AE5A84;

  return sub_226CCF734(a1, v12, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_226CCFBE0(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (qword_28105F5D8 != -1)
  {
    swift_once();
  }

  v5 = sub_226D6E07C();
  __swift_project_value_buffer(v5, qword_28105F5E0);

  v6 = sub_226D6E05C();
  v7 = sub_226D6E9EC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_226AC4530(a1, a2, &v11);
    _os_log_impl(&dword_226AB4000, v6, v7, "System task with identifier: %s expired. Cancelling concurrency task.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x22AA8BEE0](v9, -1, -1);
    MEMORY[0x22AA8BEE0](v8, -1, -1);
  }

  return sub_226D6E80C();
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_226CCFD98(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_226AD827C;

  return sub_226CCEC44(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t objectdestroy_9Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_226CCFEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_226D67F1C();
  v46 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v41 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_226D66F5C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v41 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F680 != -1)
  {
    swift_once();
  }

  v13 = sub_226D6E07C();
  __swift_project_value_buffer(v13, qword_28105F688);
  v14 = *(v10 + 16);
  v48 = a2;
  v14(v12, a2, v9);
  v15 = v46;
  v16 = *(v46 + 16);
  v49 = a3;
  v16(v8, a3, v6);

  v17 = sub_226D6E05C();
  v18 = sub_226D6E9EC();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v42 = v6;
    v44 = v17;
    v20 = v19;
    v45 = swift_slowAlloc();
    v50 = v45;
    *v20 = 136315650;
    sub_226CD0940(&qword_281062C38, MEMORY[0x277CC6690], MEMORY[0x277CC66A8]);
    v43 = v18;
    v21 = sub_226D6F1CC();
    v22 = v15;
    v23 = a1;
    v25 = v24;
    (*(v10 + 8))(v12, v9);
    v26 = sub_226AC4530(v21, v25, &v50);

    *(v20 + 4) = v26;
    *(v20 + 12) = 2080;
    v27 = sub_226D66F6C();
    v28 = MEMORY[0x22AA8A6A0](v23, v27);
    v30 = sub_226AC4530(v28, v29, &v50);

    *(v20 + 14) = v30;
    *(v20 + 22) = 2080;
    a1 = v23;
    sub_226CD0940(&qword_281062BC0, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
    v31 = v42;
    v32 = sub_226D6F1CC();
    v34 = v33;
    (*(v22 + 8))(v8, v31);
    v35 = sub_226AC4530(v32, v34, &v50);

    *(v20 + 24) = v35;
    v36 = v44;
    _os_log_impl(&dword_226AB4000, v44, v43, "Enabling %s background delivery of %s for: %s", v20, 0x20u);
    v37 = v45;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v37, -1, -1);
    MEMORY[0x22AA8BEE0](v20, -1, -1);
  }

  else
  {

    (*(v15 + 8))(v8, v6);
    (*(v10 + 8))(v12, v9);
  }

  v38 = v47[49];
  v39 = v47[50];
  __swift_project_boxed_opaque_existential_1(v47 + 46, v38);
  return (*(v39 + 8))(a1, v48, v49, v38, v39);
}

uint64_t sub_226CD0360(uint64_t a1, uint64_t a2)
{
  v5 = sub_226D67F1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F680 != -1)
  {
    swift_once();
  }

  v9 = sub_226D6E07C();
  __swift_project_value_buffer(v9, qword_28105F688);
  (*(v6 + 16))(v8, a2, v5);

  v10 = sub_226D6E05C();
  v11 = sub_226D6E9EC();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v29 = a2;
    v13 = v12;
    v28 = swift_slowAlloc();
    v32 = v28;
    *v13 = 136315394;
    v14 = sub_226D66F6C();
    v15 = MEMORY[0x22AA8A6A0](a1, v14);
    v17 = sub_226AC4530(v15, v16, &v32);
    v30 = v2;
    v18 = v17;

    *(v13 + 4) = v18;
    *(v13 + 12) = 2080;
    sub_226CD0940(&qword_281062BC0, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
    v19 = sub_226D6F1CC();
    v21 = v20;
    (*(v6 + 8))(v8, v5);
    v22 = sub_226AC4530(v19, v21, &v32);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_226AB4000, v10, v11, "Disabling background delivery of %s for: %s", v13, 0x16u);
    v23 = v28;
    swift_arrayDestroy();
    MEMORY[0x22AA8BEE0](v23, -1, -1);
    v24 = v13;
    a2 = v29;
    MEMORY[0x22AA8BEE0](v24, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v8, v5);
  }

  v25 = v31[49];
  v26 = v31[50];
  __swift_project_boxed_opaque_existential_1(v31 + 46, v25);
  return (*(v26 + 16))(a1, a2, v25, v26);
}

uint64_t sub_226CD0684(uint64_t a1)
{
  v3 = sub_226D67F1C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_28105F680 != -1)
  {
    swift_once();
  }

  v7 = sub_226D6E07C();
  __swift_project_value_buffer(v7, qword_28105F688);
  v8 = *(v4 + 16);
  v23 = a1;
  v8(v6, a1, v3);
  v9 = sub_226D6E05C();
  v10 = sub_226D6E9EC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v21[1] = v1;
    v12 = v11;
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    sub_226CD0940(&qword_281062BC0, MEMORY[0x277CC7098], MEMORY[0x277CC70C8]);
    v14 = sub_226D6F1CC();
    v16 = v15;
    (*(v4 + 8))(v6, v3);
    v17 = sub_226AC4530(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_226AB4000, v9, v10, "Disabling background delivery for: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v13);
    MEMORY[0x22AA8BEE0](v13, -1, -1);
    MEMORY[0x22AA8BEE0](v12, -1, -1);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  v18 = v22[49];
  v19 = v22[50];
  __swift_project_boxed_opaque_existential_1(v22 + 46, v18);
  return (*(v19 + 24))(v23, v18, v19);
}

uint64_t sub_226CD0940(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_226CD0988(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v11 - v4;
  v6 = sub_226D66ECC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_226AC40E8(a2, v12, &qword_27D7A70E0, &qword_226D741B0);
  if (!v13)
  {
    return sub_226AC47B0(v12, &qword_27D7A70E0, &qword_226D741B0);
  }

  __swift_project_boxed_opaque_existential_1(v12, v13);
  sub_226D66EBC();
  sub_226D67DFC();
  sub_226D66EAC();
  sub_226AC47B0(v5, &qword_27D7A7180, &qword_226D74600);
  (*(v7 + 8))(v9, v6);
  sub_226D69AFC();
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return __swift_destroy_boxed_opaque_existential_0Tm(v12);
}

uint64_t sub_226CD0B68(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_226CD0B88, 0, 0);
}

uint64_t sub_226CD0B88()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_226B6507C;

  return sub_226C778C4();
}

uint64_t sub_226CD0C80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D66E9C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CD0D44, 0, 0);
}

uint64_t sub_226CD0D44()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[8];
  (*(v2 + 104))();
  sub_226CD0988(v4, v3);
  (*(v2 + 8))(v4, v1);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_226CD8E38;
  v6 = v0[5];

  return sub_226CDAA94(v6);
}

uint64_t sub_226CD0EC0(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, __int16 a5)
{
  *(v5 + 74) = a5;
  *(v5 + 72) = a4;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 16) = a1;
  v6 = sub_226D66E9C();
  *(v5 + 40) = v6;
  *(v5 + 48) = *(v6 - 8);
  *(v5 + 56) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CD0F8C, 0, 0);
}

uint64_t sub_226CD0F8C()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 56);
  (*(v2 + 104))();
  sub_226CD0988(v4, v3);
  (*(v2 + 8))(v4, v1);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_226CD110C;
  v6 = *(v0 + 74);
  v7 = *(v0 + 72);

  return sub_226CDAC3C(v7, v6);
}

uint64_t sub_226CD110C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226CD1224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  v5 = sub_226D66E9C();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CD12E8, 0, 0);
}

uint64_t sub_226CD12E8()
{
  swift_getKeyPath();
  sub_226D67DEC();

  v1 = v0[6];
  v2 = v0[7];
  v3 = v0[3];
  v4 = v0[8];
  (*(v2 + 104))();
  sub_226CD0988(v4, v3);
  (*(v2 + 8))(v4, v1);
  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_226CD1464;
  v6 = v0[5];

  return sub_226CDB0C4(v6);
}

uint64_t sub_226CD1464()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_226CD157C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v12;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7A7180, &qword_226D74600);
  v8[11] = swift_task_alloc();
  v9 = sub_226D66E9C();
  v8[12] = v9;
  v8[13] = *(v9 - 8);
  v8[14] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_226CD168C, 0, 0);
}

uint64_t sub_226CD168C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[12];
  v4 = v0[3];
  (*(v2 + 104))(v1, *MEMORY[0x277CC65C0], v3);
  sub_226CD0988(v1, v4);
  (*(v2 + 8))(v1, v3);
  v5 = sub_226D6798C();
  v7 = v6;
  v0[15] = v5;
  v0[16] = v6;
  sub_226D67DFC();
  v8 = swift_task_alloc();
  v0[17] = v8;
  *v8 = v0;
  v8[1] = sub_226CD17D0;
  v9 = v0[10];
  v10 = v0[11];
  v11 = v0[8];
  v12 = v0[9];
  v13 = v0[7];
  v14 = v0[2];

  return sub_226CDBA0C(v14, v5, v7, v13, v11, v12, v9, v10);
}

uint64_t sub_226CD17D0()
{
  v2 = *(*v1 + 88);
  *(*v1 + 144) = v0;

  sub_226AC47B0(v2, &qword_27D7A7180, &qword_226D74600);
  if (v0)
  {
    v3 = sub_226CD198C;
  }

  else
  {
    v3 = sub_226CD1910;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_226CD1910()
{
  sub_226B11B98(v0[15], v0[16]);

  v1 = v0[1];

  return v1();
}