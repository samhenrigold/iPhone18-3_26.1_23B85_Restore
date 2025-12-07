uint64_t static BlockList.shared.getter()
{
  v1 = *sub_1B98CB6E0();

  return v1;
}

void *sub_1B9831110()
{
  type metadata accessor for BlockList();
  result = BlockList.__allocating_init()();
  qword_1EDBDB1D8 = result;
  return result;
}

uint64_t sub_1B9831184()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4FF8, &qword_1B98F8B20);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B983120C()
{
  v7 = 0;
  v14 = v0;
  v13 = sub_1B98D1D9C();
  v11 = v13;
  v12 = BYTE2(v13);
  *(v0 + 16) = 0;
  *(v0 + 16) = 0;
  *(v0 + 20) = 0;
  *(v0 + 22) = 0;
  sub_1B985253C(&v11, v0 + 20, &unk_1F379B420);
  *(v0 + 23) = 0;
  v10 = 0;
  v3 = MEMORY[0x1E69E82E8];
  sub_1B985253C(&v10, v0 + 23, MEMORY[0x1E69E82E8]);
  *(v0 + 24) = 0;
  v9 = 0;
  sub_1B985253C(&v9, v0 + 24, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E80, &qword_1B98FCA90);
  *(v4 + 32) = sub_1B98F360C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E88, &unk_1B98FCA98);
  *(v4 + 40) = sub_1B98F360C();
  *(v4 + 48) = 0;
  v8 = -1;
  sub_1B985253C(&v8, v4 + 48, MEMORY[0x1E69E82F8]);
  v7 = -1;

  sub_1B987E980(&v7, sub_1B98DDB2C, v4, MEMORY[0x1E69E72F0], MEMORY[0x1E69E73E0], MEMORY[0x1E69E7668], MEMORY[0x1E69E7410], v5);

  if (v6)
  {
    v2 = 0;
  }

  else
  {
    v2 = v7 != 0;
  }

  if (v2)
  {
    atomic_store(v7, (v4 + 48));
  }

  return v4;
}

unint64_t type metadata accessor for os_unfair_lock_s(uint64_t a1)
{
  v5 = qword_1EDBDB4A8;
  if (!qword_1EDBDB4A8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EDBDB4A8);
      return v2;
    }
  }

  return v5;
}

uint64_t BlockList.isHandleBlocked(_:)(uint64_t a1)
{
  v37 = a1;
  v47 = 0;
  v46 = 0;
  v45 = 0;
  v44 = 0;
  v25 = 0;
  v40 = 0;
  v39 = 0;
  v26 = 0;
  v27 = sub_1B98F5078();
  v28 = *(v27 - 8);
  v29 = v27 - 8;
  v30 = (*(v28 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v31 = &v10 - v30;
  v33 = (*(*(type metadata accessor for BlockedHandle(v1) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v37);
  v34 = &v10 - v33;
  v47 = &v10 - v33;
  v46 = v2;
  v45 = v3;
  v35 = *(v3 + 56);
  v36 = *(v3 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v38 = (*(v36 + 32))(v37, ObjectType);
  if (v38 == 2)
  {
    v5 = v25;
    swift_unknownObjectRelease();
    (*(v28 + 16))(v31, v37, v27);
    v16 = sub_1B98C5608();
    v6 = sub_1B98C5654();
    BlockedHandle.init(handle:normalizedValue:associatedContacts:allowedApps:)(v31, 0, 0, v16, v6, v34);
    v17 = v41;
    sub_1B98CB8A8(v32 + 16, v41);
    v18 = v42;
    v19 = v43;
    __swift_project_boxed_opaque_existential_1(v17, v42);
    v20 = (*(v19 + 24))(v34, v18);
    v21 = v5;
    if (v5)
    {
      v10 = v21;
      __swift_destroy_boxed_opaque_existential_1(v41);
      v9 = v10;
      v40 = v10;
      v44 = 0;

      v15 = 0;
    }

    else
    {
      v14 = v20;
      v44 = v20 & 1;
      __swift_destroy_boxed_opaque_existential_1(v41);
      v15 = v14;
    }

    v13 = v15;
    v12 = *(v32 + 56);
    v11 = *(v32 + 64);
    swift_unknownObjectRetain();
    v7 = swift_getObjectType();
    (*(v11 + 48))(v13 & 1, v34, v7);
    swift_unknownObjectRelease();
    sub_1B983A3AC(v34);
    v23 = v13;
  }

  else
  {
    v24 = v38;
    v22 = v38;
    v39 = v38 & 1;
    swift_unknownObjectRelease();
    v23 = v22;
  }

  return v23 & 1;
}

void *BlockList.init()()
{
  v3[5] = 0;
  v3[3] = type metadata accessor for CommunicationTrustClient();
  v3[4] = &off_1F37935B0;
  v3[0] = sub_1B984999C();
  sub_1B98CB914(v3, v2 + 2);
  type metadata accessor for BlockListCache();
  v0 = sub_1B98D1D60();
  result = v2;
  v2[7] = v0;
  v2[8] = &off_1F379B6A0;
  return result;
}

uint64_t sub_1B9831924()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EE8, &qword_1B98FCDC8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B9831970()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4FF8, &qword_1B98F8B20);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B98319BC()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5E98, &qword_1B98FCAB8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t BlockList.handles()()
{
  v33 = &unk_1B98FCA00;
  v45 = 0;
  v40 = 0;
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5980, &qword_1B98FB410);
  v35 = (*(*(v0 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v0);
  v36 = v12 - v35;
  v45 = v1;
  v38 = *(v1 + 56);
  v37 = *(v1 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  v44 = (*(v37 + 8))(ObjectType);
  v39 = BYTE2(v44);
  swift_unknownObjectRelease();
  if (v39)
  {
    v14 = *(v34 + 56);
    v13 = *(v34 + 64);
    swift_unknownObjectRetain();
    v10 = swift_getObjectType();
    v15 = (*(v13 + 64))(v10);
    swift_unknownObjectRelease();
    v24 = v15;
    v25 = v32;
    return v24;
  }

  v26 = v41;
  sub_1B98CB8A8(v34 + 16, v41);
  v28 = v42;
  v27 = v43;
  __swift_project_boxed_opaque_existential_1(v26, v42);
  v3 = v32;
  v4 = (*(v27 + 8))(v28);
  v29 = v3;
  v30 = v4;
  v31 = v3;
  if (!v3)
  {
    v23 = v30;
    v40 = v30;
    __swift_destroy_boxed_opaque_existential_1(v41);
    v20 = 0;
    v5 = sub_1B98F5988();
    (*(*(v5 - 8) + 56))(v36, 1);
    v18 = 7;
    v19 = swift_allocObject();
    v16 = v19 + 16;

    v17 = v34;
    swift_weakInit();

    sub_1B98F54D8();
    v6 = swift_allocObject();
    v7 = v23;
    v8 = v6;
    v9 = v19;
    v21 = v8;
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = v9;
    v8[5] = v7;

    v22 = sub_1B98CE0E8(v20, v20, v36, v33, v21, MEMORY[0x1E69E7CA8] + 8);
    sub_1B98975AC(v36);

    v24 = v23;
    v25 = v29;
    return v24;
  }

  v12[1] = v31;
  __swift_destroy_boxed_opaque_existential_1(v41);
  return v12[2];
}

uint64_t sub_1B9831DD0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B9831E20()
{
  v3 = sub_1B984A450();
  if (v0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_1B9831E84()
{
  v2 = qword_1EDBDB1E8;
  if (!qword_1EDBDB1E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1E8);
    return WitnessTable;
  }

  return v2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  v2 = *(*(a2 - 8) + 80);
  if ((v2 & 0x20000) != 0)
  {
    return (*result + ((v2 + 16) & ~v2));
  }

  return result;
}

uint64_t type metadata accessor for BlockedHandle(uint64_t a1)
{
  v2 = qword_1EDBDB678;
  if (!qword_1EDBDB678)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

unint64_t sub_1B9831FDC(uint64_t a1)
{
  v5 = qword_1EDBDB4C8;
  if (!qword_1EDBDB4C8)
  {
    v4 = sub_1B98F5C38();
    v5 = v4;
    if (!v1)
    {
      v2 = v4;
      atomic_store(v4, &qword_1EDBDB4C8);
      return v2;
    }
  }

  return v5;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    return *a2;
  }

  return v3;
}

unint64_t sub_1B98320C8(uint64_t a1)
{
  v6 = sub_1B98F5078();
  if (v1 <= 0x3F)
  {
    v6 = sub_1B9831FDC(319);
    if (v2 <= 0x3F)
    {
      v6 = sub_1B98CAAFC(319);
      if (v3 <= 0x3F)
      {
        v6 = sub_1B98CAB9C(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return v6;
}

unint64_t sub_1B983220C()
{
  v2 = qword_1EDBDB6A0;
  if (!qword_1EDBDB6A0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6A0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B983229C()
{
  v2 = qword_1EDBDB698;
  if (!qword_1EDBDB698)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB698);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9832330()
{
  v2 = qword_1EDBDB4E8;
  if (!qword_1EDBDB4E8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB4E8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98323C4()
{
  v2 = qword_1EDBDB4F0;
  if (!qword_1EDBDB4F0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB4F0);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9832468(uint64_t a1)
{
  v3 = type metadata accessor for BlockedHandle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_1B9832500()
{
  v2 = qword_1EDBDB6D0;
  if (!qword_1EDBDB6D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9832590()
{
  v2 = qword_1EDBDB6C0;
  if (!qword_1EDBDB6C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t type metadata accessor for IsHandleBlocked(uint64_t a1)
{
  v2 = qword_1EDBDB560;
  if (!qword_1EDBDB560)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

__n128 sub_1B9832680(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 32))(a2, a1);
  v3 = type metadata accessor for BlockedHandle(0);
  *(a2 + v3[5]) = *(a1 + v3[5]);
  *(a2 + v3[6]) = *(a1 + v3[6]);
  *(a2 + v3[7]) = *(a1 + v3[7]);
  result = *(a1 + v3[8]);
  *(a2 + v3[8]) = result;
  return result;
}

uint64_t sub_1B9832738(uint64_t a1)
{
  v42 = a1;
  v49 = sub_1B984AB84;
  v52 = sub_1B9853250;
  v54 = sub_1B9853240;
  v56 = sub_1B9853248;
  v59 = sub_1B985325C;
  v73 = 0;
  v72 = 0;
  v70 = 0;
  v37 = 0;
  v35 = (*(*(type metadata accessor for BlockedHandle(0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v1 = MEMORY[0x1EEE9AC00](0);
  v36 = v19 - v35;
  IsHandleBlocked = type metadata accessor for IsHandleBlocked(v1);
  v39 = (*(*(IsHandleBlocked - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v40 = v19 - v39;
  v47 = sub_1B98F5138();
  v45 = *(v47 - 8);
  v46 = v47 - 8;
  v43 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v42);
  v3 = v19 - v43;
  v44 = v19 - v43;
  v73 = v2;
  v72 = v4;
  v5 = sub_1B98F1B1C();
  (*(v45 + 16))(v3, v5, v47);
  v63 = sub_1B98F5118();
  v64 = sub_1B98F5BD8();
  v48 = 17;
  v51 = 7;
  v55 = swift_allocObject();
  *(v55 + 16) = 32;
  v57 = swift_allocObject();
  *(v57 + 16) = 8;
  v50 = 32;
  v6 = swift_allocObject();
  v53 = v6;
  *(v6 + 16) = v49;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v8 = v53;
  v60 = v7;
  *(v7 + 16) = v52;
  *(v7 + 24) = v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v58 = sub_1B98F5F98();
  v61 = v9;

  v10 = v55;
  v11 = v61;
  *v61 = v54;
  v11[1] = v10;

  v12 = v57;
  v13 = v61;
  v61[2] = v56;
  v13[3] = v12;

  v14 = v60;
  v15 = v61;
  v61[4] = v59;
  v15[5] = v14;
  sub_1B9851B38();

  if (os_log_type_enabled(v63, v64))
  {
    v27 = sub_1B98F5C28();
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v28 = sub_1B985263C(0, v26, v26);
    v29 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v30 = &v69;
    v69 = v27;
    v31 = &v68;
    v68 = v28;
    v32 = &v67;
    v67 = v29;
    sub_1B9852690(2, &v69);
    sub_1B9852690(1, v30);
    v16 = v34;
    v65 = v54;
    v66 = v55;
    sub_1B98526A4(&v65, v30, v31, v32);
    v33 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v65 = v56;
      v66 = v57;
      sub_1B98526A4(&v65, &v69, &v68, &v67);
      v24 = 0;
      v65 = v59;
      v66 = v60;
      sub_1B98526A4(&v65, &v69, &v68, &v67);
      v23 = 0;
      _os_log_impl(&dword_1B982F000, v63, v64, "%s", v27, 0xCu);
      sub_1B985281C(v28, 0, v26);
      sub_1B985281C(v29, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v25 = v23;
    }
  }

  else
  {

    v25 = v34;
  }

  v20 = v25;
  MEMORY[0x1E69E5920](v63);
  (*(v45 + 8))(v44, v47);
  v19[1] = *(v41 + 16);

  sub_1B9833334(v42, v36);
  sub_1B985EE80(v36, v40);
  sub_1B9853268();
  v17 = v20;
  sub_1B98F5208(&v71);
  v21 = v17;
  v22 = v17;
  if (v17)
  {
    v19[0] = v22;
    sub_1B98532E8(v40);

    return (&vars0 - 208) & 1;
  }

  else
  {
    sub_1B98532E8(v40);

    v70 = v71 & 1;
    return v71 & 1;
  }
}

uint64_t type metadata accessor for UpdateServerTrust(uint64_t a1)
{
  v2 = qword_1EDBDB850;
  if (!qword_1EDBDB850)
  {
    return swift_getSingletonMetadata();
  }

  return v2;
}

uint64_t sub_1B983307C(uint64_t a1)
{
  v3 = type metadata accessor for BlockedHandle(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return v3;
}

unint64_t sub_1B9833160()
{
  v2 = qword_1EDBDB4D8;
  if (!qword_1EDBDB4D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB4D8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98331DC()
{
  v1 = sub_1B98F5138();
  __swift_allocate_value_buffer(v1, qword_1EDBDD4A0);
  __swift_project_value_buffer(v1, qword_1EDBDD4A0);
  sub_1B98F55E8("com.apple.communicationTrust", 28, 1);
  sub_1B98F55E8("Client", 6, 1);
  return sub_1B98F5128();
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v5 = a2;
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v2 = swift_slowAlloc();
    *a2 = v2;
    return v2;
  }

  return v5;
}

uint64_t sub_1B9833334(uint64_t a1, uint64_t a2)
{
  v2 = sub_1B98F5078();
  (*(*(v2 - 8) + 16))(a2, a1);
  v13 = type metadata accessor for BlockedHandle(0);
  v3 = (a1 + v13[5]);
  v6 = (a2 + v13[5]);
  *v6 = *v3;
  v7 = v3[1];
  sub_1B98F54D8();
  v6[1] = v7;
  v8 = v13[6];
  v9 = *(a1 + v8);
  sub_1B98F54D8();
  *(a2 + v8) = v9;
  v11 = v13[7];
  v12 = *(a1 + v11);
  sub_1B98F54D8();
  *(a2 + v11) = v12;
  v4 = v13[8];
  v15 = a2 + v4;
  *(a2 + v4) = *(a1 + v4);
  v16 = *(a1 + v4 + 8);
  sub_1B98F54D8();
  result = a2;
  *(v15 + 8) = v16;
  return result;
}

__n128 sub_1B98334F8(uint64_t a1, uint64_t a2)
{
  *a2 = *a1;
  result = *(a1 + 16);
  *(a2 + 16) = result;
  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_1B98335B4(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  sub_1B98F54D8();
  v14 = sub_1B98337BC(&v17, 0, 0, 1, a1, a2);
  v15 = v3;
  v16 = v4;
  v11 = v17;
  swift_unknownObjectRetain();
  if (v14)
  {
    swift_unknownObjectRelease();

    v12[3] = swift_getObjectType();
    swift_unknownObjectRetain();
    v12[0] = v14;
    v6 = *a3;
    if (*a3)
    {
      sub_1B9833758(v12, v6);
      swift_unknownObjectRelease();
      *a3 = v6 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v12);
  }

  else
  {
    v13[3] = MEMORY[0x1E69E6A18];
    v13[0] = a1;
    v13[1] = a2;
    v7 = *a3;
    if (*a3)
    {
      sub_1B9833758(v13, v7);
      swift_unknownObjectRelease();
      *a3 = v7 + 32;
    }

    else
    {
      swift_unknownObjectRelease();
    }

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  return v11;
}

uint64_t sub_1B9833758(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  *(a2 + 24) = v2;
  (**(v2 - 8))(a2);
  return a2;
}

void *sub_1B98337BC(void *result, char *a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  v19 = result;
  v25 = a6;
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (a2)
      {
        if (!a3)
        {
          __break(1u);
        }

        v18 = a3 - a2;
      }

      else
      {
        v18 = 0;
      }

      v17 = (a6 & 0xF00000000000000uLL) >> 56;
      if (v17 < v18)
      {
        if (a2)
        {
          v16 = a2;
        }

        else
        {
          sub_1B98F5E08();
          __break(1u);
        }

        v22[0] = a5;
        v22[1] = a6 & (-bswap64(0xFFuLL) - 1);
        sub_1B9852954(v22, v17, v16);
        sub_1B98F5C58();
        *v19 = v16;
        v12 = 0;
        v13 = v17;
        v14 = 1;
        v15 = 0;
        goto LABEL_28;
      }
    }

    goto LABEL_14;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
LABEL_14:
    v6 = sub_1B9833C0C(a5, a6);
    *v19 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 0;
    v15 = 1;
LABEL_28:
    v22[2] = v12;
    v22[3] = v13;
    v23 = v14 & 1;
    v24 = v15 & 1;
    return v12;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
    {
      v11 = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
      goto LABEL_23;
    }

    __break(1u);
  }

  result = sub_1B98F5D68();
  if (result)
  {
    v10 = result;
  }

  else
  {
    result = sub_1B98F5E08();
    __break(1u);
  }

  v11 = v10;
LABEL_23:
  *v19 = v11;
  if (a6 < 0)
  {
    v9 = 0;
LABEL_27:
    v12 = v9;
    v13 = a5 & 0xFFFFFFFFFFFFLL;
    v14 = 0;
    v15 = 0;
    goto LABEL_28;
  }

  if ((a6 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    swift_unknownObjectRetain();
    v9 = a6 & 0xFFFFFFFFFFFFFFFLL;
    goto LABEL_27;
  }

  __break(1u);
  return result;
}

void *sub_1B9833C0C(uint64_t a1, uint64_t a2)
{
  v8 = sub_1B9833E0C(a1, a2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5098, &unk_1B98F8FA0);
  inited = swift_initStackObject();
  v3 = sub_1B9852AD0(inited, 1);
  *v4 = 0;
  sub_1B9852B1C(v3);
  sub_1B9834644(v5);

  v9 = sub_1B9852B50(v8);

  result = v9;
  if (!__OFSUB__(v9, 1))
  {
    return v8;
  }

  __break(1u);
  return result;
}

void *sub_1B9833CC8(uint64_t a1, uint64_t a2)
{
  if (a2 < a1)
  {
    v7 = a1;
  }

  else
  {
    v7 = a2;
  }

  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5098, &unk_1B98F8FA0);
    v6 = swift_allocObject();

    if (_swift_stdlib_has_malloc_size())
    {
      v4 = _swift_stdlib_malloc_size(v6) - 32;
      v6[2] = a1;
      v6[3] = 2 * v4;
    }

    else
    {
      v6[2] = a1;
      v6[3] = 2 * v7;
    }

    return v6;
  }

  else
  {
    v3 = MEMORY[0x1E69E7CC0];

    return v3;
  }
}

void *sub_1B9833E0C(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  if ((a2 & 0x1000000000000000) != 0)
  {
    v13 = sub_1B98F5718();
  }

  else
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v12 = (a2 & 0xF00000000000000uLL) >> 56;
    }

    else
    {
      v12 = a1 & 0xFFFFFFFFFFFFLL;
    }

    v13 = v12;
  }

  if (!v13)
  {
    return sub_1B9852F2C();
  }

  v10 = sub_1B9833CC8(v13, 0);

  v11 = (v10 + 4);

  if (v13 < 0)
  {
LABEL_30:
    sub_1B98F5E48();
    __break(1u);
    return sub_1B9852F2C();
  }

  v16[12] = a2;
  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v16[0] = a1;
      v16[1] = a2 & (-bswap64(0xFFuLL) - 1);
      if (v13 >= ((a2 & 0xF00000000000000uLL) >> 56))
      {
        sub_1B9852B68(v16, (a2 & 0xF00000000000000uLL) >> 56, v11);
        v8 = (a2 & 0xF00000000000000uLL) >> 56;
        goto LABEL_26;
      }

      goto LABEL_29;
    }

    if ((a1 & 0x1000000000000000) != 0)
    {
      if ((a2 & 0xFFFFFFFFFFFFFFFLL) != 0xFFFFFFFFFFFFFFE0)
      {
        v6 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v7 = a1 & 0xFFFFFFFFFFFFLL;
        goto LABEL_22;
      }

      __break(1u);
    }

    v6 = sub_1B98F5D68();
    v7 = v3;
LABEL_22:
    if (v13 >= v7)
    {
      if (!v6)
      {
        __break(1u);
      }

      sub_1B9852B68(v6, v7, v11);
      v8 = v7;
      goto LABEL_26;
    }

    goto LABEL_29;
  }

  v9 = sub_1B98F5D18();
  if (v2)
  {
LABEL_29:
    sub_1B98F5E08();
    __break(1u);
    goto LABEL_30;
  }

  v8 = v9;
LABEL_26:
  v16[11] = 0xE000000000000000;
  sub_1B98F54D8();
  v17[0] = 0;
  v17[1] = 0xE000000000000000;
  v16[10] = 0xE000000000000000;
  if (v8 != v13)
  {
    sub_1B98F5E08();
    __break(1u);
  }

  sub_1B9855BA4(v17);
  return v10;
}

void sub_1B9834644(uint64_t a1)
{
  v18 = sub_1B9852B50(a1);
  v2 = sub_1B9852B50(*v1);
  v19 = v2 + v18;
  if (__OFADD__(v2, v18))
  {
    goto LABEL_31;
  }

  v14 = *v17;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v17 = v14;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v19 > *(*v17 + 24) >> 1)
  {
    if (*(*v17 + 16) < v19)
    {
      v13 = v19;
    }

    else
    {
      v13 = *(*v17 + 16);
    }

    v12 = *v17;
    sub_1B98F54D8();
    *v17 = sub_1B9852F68(isUniquelyReferenced_nonNull_native, v13, 1, v12);
  }

  v4 = *(*v17 + 16);
  v10 = (*v17 + 32 + v4);
  v5 = *(*v17 + 24) >> 1;
  v11 = v5 - v4;
  if (__OFSUB__(v5, v4))
  {
    goto LABEL_32;
  }

  if (v11 < 0)
  {
LABEL_30:
    sub_1B98F5E48();
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!sub_1B98530D4(a1))
  {
LABEL_21:

    if (v18 <= 0)
    {
      goto LABEL_28;
    }

    sub_1B98F5E08();
    __break(1u);
    goto LABEL_30;
  }

  if (v11 < v18)
  {
    sub_1B98F5E08();
    __break(1u);
    goto LABEL_21;
  }

  sub_1B9852B68((a1 + 32), v18, v10);
  sub_1B98F54D8();

  swift_unknownObjectRelease();
  if (v18 <= 0)
  {
    goto LABEL_28;
  }

  v7 = *(*v17 + 16);
  v9 = v7 + v18;
  if (!__OFADD__(v7, v18))
  {
    *(*v17 + 16) = v9;
LABEL_28:
    sub_1B9852F5C();
    return;
  }

LABEL_33:
  __break(1u);
}

unint64_t sub_1B9834A40()
{
  v2 = qword_1EDBDAF10;
  if (!qword_1EDBDAF10)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAF10);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9834ABC(uint64_t a1)
{
  v101 = a1;
  v143 = 0;
  v142 = 0;
  v141 = 0;
  v137 = 0;
  v93 = 0;
  v100 = sub_1B98F5138();
  v94 = v100;
  v95 = *(v100 - 8);
  v99 = v95;
  v96 = v95;
  v97 = *(v95 + 64);
  v1 = v43 - ((v97 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = v1;
  v143 = MEMORY[0x1EEE9AC00](v101);
  v142 = v2;
  v3 = sub_1B98F1E6C();
  (*(v99 + 16))(v1, v3, v100);

  sub_1B98F54D8();
  v116 = 7;
  v102 = swift_allocObject();
  *(v102 + 16) = v101;

  v110 = 32;
  v115 = 32;
  v4 = swift_allocObject();
  v5 = v102;
  v117 = v4;
  *(v4 + 16) = sub_1B988D5DC;
  *(v4 + 24) = v5;

  v6 = sub_1B98F5118();
  v7 = v103;
  v130 = v6;
  v104 = v6;
  v129 = sub_1B98F5BD8();
  v105 = v129;
  v111 = 17;
  v120 = swift_allocObject();
  v106 = v120;
  *(v120 + 16) = v110;
  v121 = swift_allocObject();
  v107 = v121;
  v113 = 8;
  *(v121 + 16) = 8;
  v8 = swift_allocObject();
  v108 = v8;
  *(v8 + 16) = sub_1B988D5D4;
  *(v8 + 24) = v7;
  v9 = swift_allocObject();
  v10 = v108;
  v122 = v9;
  v109 = v9;
  *(v9 + 16) = sub_1B988D65C;
  *(v9 + 24) = v10;
  v123 = swift_allocObject();
  v112 = v123;
  *(v123 + 16) = v110;
  v124 = swift_allocObject();
  v114 = v124;
  *(v124 + 16) = v113;
  v11 = swift_allocObject();
  v12 = v117;
  v118 = v11;
  *(v11 + 16) = sub_1B988D5E4;
  *(v11 + 24) = v12;
  v13 = swift_allocObject();
  v14 = v118;
  v127 = v13;
  v119 = v13;
  *(v13 + 16) = sub_1B988D684;
  *(v13 + 24) = v14;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v125 = sub_1B98F5F98();
  v126 = v15;

  v16 = v120;
  v17 = v126;
  *v126 = sub_1B988D64C;
  v17[1] = v16;

  v18 = v121;
  v19 = v126;
  v126[2] = sub_1B988D654;
  v19[3] = v18;

  v20 = v122;
  v21 = v126;
  v126[4] = sub_1B988D668;
  v21[5] = v20;

  v22 = v123;
  v23 = v126;
  v126[6] = sub_1B988D674;
  v23[7] = v22;

  v24 = v124;
  v25 = v126;
  v126[8] = sub_1B988D67C;
  v25[9] = v24;

  v26 = v126;
  v27 = v127;
  v126[10] = sub_1B988D690;
  v26[11] = v27;
  sub_1B9851B38();

  if (os_log_type_enabled(v130, v129))
  {
    v28 = v93;
    v86 = sub_1B98F5C28();
    v83 = v86;
    v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v87 = sub_1B985263C(0, v84, v84);
    v85 = v87;
    v89 = 2;
    v88 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v135[0] = v86;
    v134 = v87;
    v133 = v88;
    v90 = v135;
    sub_1B9852690(v89, v135);
    sub_1B9852690(v89, v90);
    v131 = sub_1B988D64C;
    v132 = v106;
    sub_1B98526A4(&v131, v90, &v134, &v133);
    v91 = v28;
    v92 = v28;
    if (v28)
    {
      v81 = 0;

      __break(1u);
    }

    else
    {
      v131 = sub_1B988D654;
      v132 = v107;
      sub_1B98526A4(&v131, v135, &v134, &v133);
      v79 = 0;
      v80 = 0;
      v131 = sub_1B988D668;
      v132 = v109;
      sub_1B98526A4(&v131, v135, &v134, &v133);
      v77 = 0;
      v78 = 0;
      v131 = sub_1B988D674;
      v132 = v112;
      sub_1B98526A4(&v131, v135, &v134, &v133);
      v75 = 0;
      v76 = 0;
      v131 = sub_1B988D67C;
      v132 = v114;
      sub_1B98526A4(&v131, v135, &v134, &v133);
      v73 = 0;
      v74 = 0;
      v131 = sub_1B988D690;
      v132 = v119;
      sub_1B98526A4(&v131, v135, &v134, &v133);
      v71 = 0;
      v72 = 0;
      _os_log_impl(&dword_1B982F000, v104, v105, "%s: Querying contacts for %s", v83, 0x16u);
      sub_1B985281C(v85, 0, v84);
      sub_1B985281C(v88, 2, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v82 = v71;
    }
  }

  else
  {
    v29 = v93;

    v82 = v29;
  }

  v30 = v82;

  (*(v96 + 8))(v98, v94);
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CF0, &unk_1B98FB210);
  v49 = sub_1B98F5F98();
  v47 = v31;
  v56 = *MEMORY[0x1E695C258];
  v32 = v56;
  sub_1B98F5658();
  v55 = v33;
  *v47 = sub_1B98F5648();
  v54 = *MEMORY[0x1E695C208];
  v34 = v54;
  sub_1B98F5658();
  v53 = v35;
  v47[1] = sub_1B98F5648();
  v52 = *MEMORY[0x1E695C330];
  v36 = v52;
  sub_1B98F5658();
  v50 = v37;
  v47[2] = sub_1B98F5648();
  sub_1B9851B38();
  v57 = v38;
  v51 = v38;

  v141 = v57;
  v60 = v138;
  sub_1B988BE04(v103 + 16, v138);
  v58 = v139;
  v59 = v140;
  __swift_project_boxed_opaque_existential_1(v60, v139);
  v65 = (*(v59 + 8))(v101, v57, v58);
  v61 = v65;
  v137 = v65;
  __swift_destroy_boxed_opaque_existential_1(v60);
  sub_1B98F54D8();
  v62 = v43;
  MEMORY[0x1EEE9AC00](v43);
  v64 = &v43[-4];
  v43[-2] = sub_1B988D23C;
  v43[-1] = 0;
  v66 = type metadata accessor for BlockedHandle(0);
  v63 = v66;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
  v68 = sub_1B9853574();
  v39 = sub_1B98F5528();
  v69 = v30;
  v70 = v39;
  if (v30)
  {
    __break(1u);
    result = 0;
    __break(1u);
  }

  else
  {
    v136 = v70;
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5810, &unk_1B98FB220);
    v40 = sub_1B988D6CC();
    v46 = sub_1B985D064(sub_1B988D2EC, 0, v45, v63, MEMORY[0x1E69E73E0], v40, MEMORY[0x1E69E7410], v41);
    v43[0] = v46;
    sub_1B988AED4(&v136);
    v135[1] = v43[0];
    v43[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
    sub_1B9871820();
    v44 = sub_1B98F5AE8();

    return v44;
  }

  return result;
}

uint64_t sub_1B9835C08()
{
  v12 = v0;
  sub_1B989FF34(v0 + 16, v9);
  v4 = v10;
  v3 = v11;
  __swift_project_boxed_opaque_existential_1(v9, v10);
  v8 = (*(v3 + 16))(v4);
  __swift_destroy_boxed_opaque_existential_1(v9);
  v6 = *(v5 + 64);
  swift_unknownObjectRetain();
  ObjectType = swift_getObjectType();
  (*(v6 + 8))(v8, ObjectType);
  swift_unknownObjectRelease();
  type metadata accessor for BlockedHandle(0);
  sub_1B9853574();
  v7 = sub_1B98F5A28();

  return v7;
}

uint64_t BlockList.contacts()()
{
  sub_1B98CD0A8();
  if (v0)
  {
    return v2;
  }

  return result;
}

{
  v1[4] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v1[3] = v0;
  return MEMORY[0x1EEE6DFA0](sub_1B98CCF88, 0);
}

unint64_t sub_1B9835D90()
{
  v2 = qword_1EDBDB1E0;
  if (!qword_1EDBDB1E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9835E5C()
{
  v2 = qword_1EDBDAC78;
  if (!qword_1EDBDAC78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9835ED8()
{
  v2 = qword_1EDBDB4E0;
  if (!qword_1EDBDB4E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB4E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9835F6C()
{
  v2 = qword_1EDBDB7A8;
  if (!qword_1EDBDB7A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB7A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9836000()
{
  v2 = qword_1EDBDB7B0;
  if (!qword_1EDBDB7B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB7B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9836094()
{
  v2 = qword_1EDBDB6D8;
  if (!qword_1EDBDB6D8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6D8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9836128()
{
  v2 = qword_1EDBDB6E0;
  if (!qword_1EDBDB6E0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6E0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98361BC()
{
  v2 = qword_1EDBDB5C8;
  if (!qword_1EDBDB5C8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5C8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9836250()
{
  v2 = qword_1EDBDB5D0;
  if (!qword_1EDBDB5D0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5D0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9836338()
{
  v2 = qword_1EDBDB1B0;
  if (!qword_1EDBDB1B0)
  {
    objc_opt_self();
    ObjCClassMetadata = swift_getObjCClassMetadata();
    atomic_store(ObjCClassMetadata, &qword_1EDBDB1B0);
    return ObjCClassMetadata;
  }

  return v2;
}

unint64_t sub_1B983641C()
{
  v2 = qword_1EDBDB7B8;
  if (!qword_1EDBDB7B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB7B8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98364B0(uint64_t a1)
{
  v18 = 0;
  v17 = 0;
  v19 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CF0, &unk_1B98FB210);
  sub_1B98F5F98();
  v6 = v2;
  v9 = *MEMORY[0x1E695C258];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695C258]);
  sub_1B98F5658();
  *v6 = sub_1B98F5648();
  v8 = *MEMORY[0x1E695C208];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695C208]);
  sub_1B98F5658();
  v6[1] = sub_1B98F5648();
  v7 = *MEMORY[0x1E695C330];
  MEMORY[0x1E69E5928](*MEMORY[0x1E695C330]);
  sub_1B98F5658();
  v6[2] = sub_1B98F5648();
  sub_1B9851B38();
  v10 = v3;

  MEMORY[0x1E69E5920](v7);

  MEMORY[0x1E69E5920](v8);

  MEMORY[0x1E69E5920](v9);
  v17 = v10;
  sub_1B988BE04(v1 + 16, v14);
  v11 = v15;
  v12 = v16;
  __swift_project_boxed_opaque_existential_1(v14, v15);
  (*(v12 + 8))(a1, v10, v11);
  __swift_destroy_boxed_opaque_existential_1(v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5810, &unk_1B98FB220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
  sub_1B988D754();
  sub_1B988D7DC();
  sub_1B98F57C8();
  sub_1B9836338();
  sub_1B9837150();
  v5 = sub_1B98F5AE8();

  return v5;
}

uint64_t sub_1B9836778(uint64_t a1, uint64_t a2)
{
  v84 = a1;
  v78 = a2;
  v121 = 0;
  v120 = 0;
  v119 = 0;
  v118 = 0;
  v117 = 0;
  __len = 40;
  __c = 0;
  memset(__b, 0, sizeof(__b));
  v115 = 0;
  v113 = 0;
  memset(__dst, 0, sizeof(__dst));
  v108 = 0;
  v109 = 0;
  v105 = 0;
  v104[0] = 0;
  v104[1] = 0;
  v102 = 0;
  v99 = 0;
  v98[0] = 0;
  v98[1] = 0;
  v93 = 0;
  v94 = 0;
  v92 = 0;
  v83 = type metadata accessor for BlockedHandle(0);
  v70 = *(v83 - 8);
  v71 = v83 - 8;
  v72 = (*(v70 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v83);
  v73 = v14 - v72;
  v74 = (v3 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14 - v72);
  v75 = v14 - v74;
  v76 = (v4 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14 - v74);
  v77 = v14 - v76;
  v121 = v14 - v76;
  v79 = (*(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57B0, &unk_1B98FAF10) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v5 = MEMORY[0x1EEE9AC00](v84);
  v80 = v14 - v79;
  v81 = (v6 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = MEMORY[0x1EEE9AC00](v5);
  v82 = v14 - v81;
  v120 = v7;
  v119 = v8;
  v118 = v2;
  v85 = sub_1B9853574();
  if (sub_1B98F5AA8())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57C0, &qword_1B98FB178);
    v14[1] = sub_1B98F5F98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
    return sub_1B98F54A8();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57D0, &qword_1B98FB188);
    v65 = sub_1B98F5F98();
    v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55C8, &qword_1B98FAAC0);
    v117 = sub_1B98F54A8();
    sub_1B98F54D8();
    v67 = &v122;
    sub_1B98F5A58();
    memcpy(__b, v67, sizeof(__b));
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E0, &unk_1B98FAA90);
      sub_1B98F5AB8();
      v61 = *(v70 + 48);
      v62 = (v70 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
      v9 = v61(v82, 1, v83);
      v63 = v61;
      v64 = v62;
      if (v9 == 1)
      {
        break;
      }

      sub_1B9832680(v82, v77);
      v59 = sub_1B988AC1C(v77);
      v99 = v59;
      sub_1B98F54D8();
      v97 = v59;
      v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
      sub_1B988AFE0();
      sub_1B98F5B88();
      while (1)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5828, &qword_1B98FB1A0);
        sub_1B98F5DE8();
        v57 = v95;
        v58 = v96;
        if (!v96)
        {
          break;
        }

        v55 = v57;
        v56 = v58;
        v52 = v58;
        v51 = v57;
        v93 = v57;
        v94 = v58;
        sub_1B98F54D8();
        v53 = v90;
        v90[0] = v51;
        v90[1] = v52;
        sub_1B98F55B8();
        sub_1B9868BFC(v53);
        v54 = v91;
        if (v91)
        {
          v50 = v54;
          v49 = &v92;
          v92 = v54;
          sub_1B9833334(v77, v75);
          sub_1B98F5908();
          sub_1B98F54D8();
          v46 = v92;
          sub_1B98F54D8();
          v48 = &v87;
          v87 = v46;
          v47 = v86;
          v86[0] = v51;
          v86[1] = v52;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5830, &qword_1B98FB1A8);
          sub_1B98F55C8();
          sub_1B988B094(v49);
        }

        else
        {
          sub_1B98F54D8();
          v43 = sub_1B98F5F98();
          sub_1B9833334(v77, v10);
          sub_1B9851B38();
          v45 = &v89;
          v89 = v11;
          v44 = v88;
          v88[0] = v51;
          v88[1] = v52;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5830, &qword_1B98FB1A8);
          sub_1B98F55C8();
        }
      }

      sub_1B988B068(v98);

      sub_1B983A3AC(v77);
    }

    v30 = v64;
    v31 = v63;
    sub_1B9871430();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD57C0, &qword_1B98FB178);
    v32 = sub_1B98F5F98();
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
    v115 = sub_1B98F54A8();
    v33 = v117;
    sub_1B98F54D8();
    v39 = MEMORY[0x1E69E6158];
    v41 = MEMORY[0x1E69E6168];
    v34 = sub_1B98F54D8();

    v36 = &v114;
    v114 = v34;
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57E8, &qword_1B98FB190);
    sub_1B988AB94();
    v37 = sub_1B98F5938();
    v38 = sub_1B983B410(v37, v78);

    v113 = v38;
    v12 = sub_1B98F54D8();
    v42 = &v123;
    MEMORY[0x1BFADD440](v12, v39, v40, v41);
    memcpy(__dst, v42, sizeof(__dst));
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD57F8, &qword_1B98FB198);
      sub_1B98F54C8();
      v28 = v110;
      v29 = v111;
      if (!v111)
      {
        break;
      }

      v26 = v28;
      v27 = v29;
      v23 = v29;
      v22 = v28;
      v108 = v28;
      v109 = v29;
      sub_1B98F54D8();
      v24 = v106;
      v106[0] = v22;
      v106[1] = v23;
      sub_1B98F55B8();
      sub_1B9868BFC(v24);
      v25 = v107;
      if (v107)
      {
        v21 = v25;
        v20 = v25;
        v105 = v25;
        sub_1B98F54D8();
        v103 = v20;
        sub_1B988AF2C();
        sub_1B98F5B88();
        while (1)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5808, &qword_1B98FD3C0);
          sub_1B98F5DE8();
          if (v31(v80, 1, v83) == 1)
          {
            break;
          }

          v102 = v75;
          sub_1B9832680(v80, v75);
          sub_1B9833334(v75, v73);
          sub_1B98F54D8();
          v18 = v101;
          v101[0] = v22;
          v101[1] = v23;
          sub_1B98F55B8();
          sub_1B9868BFC(v18);
          v19 = &v100;
          v100 = v101[2];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5810, &unk_1B98FB220);
          sub_1B98F55C8();
          sub_1B983A3AC(v75);
        }

        sub_1B988AFB4(v104);
      }

      else
      {
      }
    }

    sub_1B988AE50(__dst);
    v15 = &v115;
    v16 = v115;
    sub_1B98F54D8();

    sub_1B988AED4(v15);
    sub_1B988AF00(&v117);
    return v16;
  }
}

unint64_t sub_1B9837150()
{
  v2 = qword_1EDBDAC00;
  if (!qword_1EDBDAC00)
  {
    sub_1B9836338();
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC00);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98371D0(uint64_t a1, unint64_t a2)
{
  v3 = (a2 >> 62) & 3;
  if (v3 == 1)
  {
  }

  if (v3 == 2)
  {
  }

  return result;
}

unint64_t sub_1B983724C()
{
  v2 = qword_1EDBDB7C0[0];
  if (!qword_1EDBDB7C0[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EDBDB7C0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98372F8()
{
  v2 = qword_1EDBDB4F8;
  if (!qword_1EDBDB4F8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB4F8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9837374()
{
  v2 = qword_1EDBDB500[0];
  if (!qword_1EDBDB500[0])
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, qword_1EDBDB500);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9837420()
{
  v2 = sub_1B98F5148();
  __swift_allocate_value_buffer(v2, qword_1EDBDD4D0);
  v3 = __swift_project_value_buffer(v2, qword_1EDBDD4D0);
  *v3 = sub_1B98F55E8("com.apple.communicationtrustd.service", 37, 1);
  v3[1] = v0;
  return (*(*(v2 - 8) + 104))();
}

unint64_t sub_1B983759C()
{
  v2 = qword_1EDBDAF00;
  if (!qword_1EDBDAF00)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAF00);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9837648()
{
  v2 = qword_1EDBDB5B0;
  if (!qword_1EDBDB5B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98376C4()
{
  v2 = qword_1EDBDAF08;
  if (!qword_1EDBDAF08)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAF08);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9837758()
{
  v2 = qword_1EDBDB5B8;
  if (!qword_1EDBDB5B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98377D4()
{
  v2 = qword_1EDBDB5C0;
  if (!qword_1EDBDB5C0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5C0);
    return WitnessTable;
  }

  return v2;
}

uint64_t BlockedHandle.encode(to:)(uint64_t a1)
{
  v39 = a1;
  v64 = 0;
  v63 = 0;
  v51 = sub_1B98F5078();
  v46 = *(v51 - 8);
  v47 = v51 - 8;
  v38 = (*(v46 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v51);
  v53 = v12 - v38;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5D40, &qword_1B98FC1B8);
  v40 = *(v50 - 8);
  v41 = v50 - 8;
  v42 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v39);
  v45 = v12 - v42;
  v64 = v2;
  v63 = v1;
  v43 = v2[3];
  v44 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v43);
  sub_1B9838030();
  sub_1B98F6078();
  (*(v46 + 16))(v53, v48, v51);
  v49 = &v62;
  v62 = 0;
  sub_1B98C93C0();
  v3 = v52;
  sub_1B98F5F28();
  v54 = v3;
  v55 = v3;
  if (v3)
  {
    v15 = v55;
    (*(v46 + 8))(v53, v51);
    result = (*(v40 + 8))(v45, v50);
    v16 = v15;
  }

  else
  {
    (*(v46 + 8))(v53, v51);
    v4 = type metadata accessor for BlockedHandle(0);
    v5 = v54;
    v33 = v4;
    v6 = (v48 + *(v4 + 20));
    v34 = *v6;
    v35 = v6[1];
    sub_1B98F54D8();
    v61 = 1;
    sub_1B98F5EE8();
    v36 = v5;
    v37 = v5;
    if (v5)
    {
      v14 = v37;

      result = (*(v40 + 8))(v45, v50);
      v16 = v14;
    }

    else
    {

      v27 = *(v48 + v33[6]);
      sub_1B98F54D8();
      v30 = &v60;
      v60 = v27;
      v28 = &v59;
      v59 = 2;
      v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
      sub_1B98C9440();
      v7 = v36;
      sub_1B98F5F28();
      v31 = v7;
      v32 = v7;
      if (v7)
      {
        v13 = v32;
        sub_1B98BF3E4(&v60);
        result = (*(v40 + 8))(v45, v50);
        v16 = v13;
      }

      else
      {
        sub_1B98BF3E4(&v60);
        v21 = *(v48 + v33[7]);
        sub_1B98F54D8();
        v24 = &v58;
        v58 = v21;
        v22 = &v57;
        v57 = 3;
        v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B70, &qword_1B98FBE40);
        sub_1B98C94D8();
        v8 = v31;
        sub_1B98F5F28();
        v25 = v8;
        v26 = v8;
        if (v8)
        {
          v12[1] = v26;
          sub_1B98BF51C(&v58);
          return (*(v40 + 8))(v45, v50);
        }

        else
        {
          sub_1B98BF51C(&v58);
          v9 = v25;
          v10 = (v48 + v33[8]);
          v17 = *v10;
          v18 = v10[1];
          sub_1B98F54D8();
          v56 = 4;
          sub_1B98F5EE8();
          v19 = v9;
          v20 = v9;
          if (v9)
          {
            v12[0] = v20;
          }

          return (*(v40 + 8))(v45, v50);
        }
      }
    }
  }

  return result;
}

unint64_t sub_1B9837F20()
{
  v2 = qword_1EDBDB6A8;
  if (!qword_1EDBDB6A8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6A8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9837FB4()
{
  v2 = qword_1EDBDB6B0;
  if (!qword_1EDBDB6B0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6B0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9838030()
{
  v2 = qword_1EDBDB6B8;
  if (!qword_1EDBDB6B8)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB6B8);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98380C4()
{
  v2 = qword_1EDBDB490;
  if (!qword_1EDBDB490)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB490);
    return WitnessTable;
  }

  return v2;
}

_BYTE *sub_1B9838154(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

_BYTE *sub_1B983831C(_BYTE *result, int a2, int a3)
{
  v5 = 0;
  if (a3)
  {
    v4 = 1;
    if ((a3 + 1) >= 0x100)
    {
      if ((a3 + 1) >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v4 = v3;
    }

    v5 = v4;
  }

  if (a2)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        *result = a2;
      }

      else if (v5 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }
  }

  else if (v5)
  {
    if (v5 == 1)
    {
      *result = 0;
    }

    else if (v5 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  return result;
}

unint64_t sub_1B98384E4()
{
  v2 = qword_1EDBDB498;
  if (!qword_1EDBDB498)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB498);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9838560(uint64_t a1)
{
  v27 = a1;
  v38 = 0;
  v47 = 0;
  v46 = 0;
  v35 = sub_1B98F5138();
  v28 = v35;
  v29 = *(v35 - 8);
  v34 = v29;
  v30 = v29;
  v31 = *(v29 + 64);
  v1 = &v7 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v1;
  v47 = MEMORY[0x1EEE9AC00](v27);
  v33 = *(v2 + 8);
  v46 = v2;
  v3 = sub_1B98F1E00();
  (*(v34 + 16))(v1, v3, v35);
  v40 = sub_1B98F5118();
  v36 = v40;
  v39 = sub_1B98F5BD8();
  v37 = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v41 = sub_1B98F5F98();
  if (os_log_type_enabled(v40, v39))
  {
    v24 = v26;
    v16 = sub_1B98F5C28();
    v12 = v16;
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v14 = 0;
    v17 = sub_1B985263C(0, v13, v13);
    v15 = v17;
    v18 = sub_1B985263C(v14, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v45 = v16;
    v44 = v17;
    v43 = v18;
    v19 = 0;
    v20 = &v45;
    sub_1B9852690(0, &v45);
    sub_1B9852690(v19, v20);
    v42 = v41;
    v21 = &v7;
    MEMORY[0x1EEE9AC00](&v7);
    v22 = &v7 - 6;
    *(&v7 - 4) = v4;
    *(&v7 - 3) = &v44;
    *(&v7 - 2) = &v43;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    v5 = v24;
    sub_1B98F57D8();
    v25 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v36, v37, "Handling incoming FetchHandlesRequest message", v12, 2u);
      v10 = 0;
      sub_1B985281C(v15, 0, v13);
      sub_1B985281C(v18, v10, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v11 = v25;
    }
  }

  else
  {

    v11 = v26;
  }

  v9 = v11;

  (*(v30 + 8))(v32, v28);

  v8 = sub_1B9835C08();

  return v8;
}

uint64_t sub_1B9838970(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1B9838AC0(unsigned __int8 *a1, int a2)
{
  if (a2)
  {
    v6 = 1;
    if ((a2 + 1) >= 0x100)
    {
      if ((a2 + 1) >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v6 = v2;
    }

    if (v6 == 1)
    {
      v5 = *a1;
    }

    else if (v6 == 2)
    {
      v5 = *a1;
    }

    else
    {
      v5 = *a1;
    }

    if (v5)
    {
      v4 = v5 - 1;
    }

    else
    {
      v4 = -1;
    }
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

_BYTE *sub_1B9838D38(_BYTE *result, unsigned int a2, unsigned int a3)
{
  v7 = 0;
  if (a3 > 0xFB)
  {
    v5 = ((a3 + 4) >> 8) + 1;
    v6 = 1;
    if (v5 >= 0x100)
    {
      if (v5 >= 0x10000)
      {
        v3 = 4;
      }

      else
      {
        v3 = 2;
      }

      v6 = v3;
    }

    v7 = v6;
  }

  if (a2 > 0xFB)
  {
    v4 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = v4;
      }

      else if (v7 == 2)
      {
        *(result + 1) = v4;
      }

      else
      {
        *(result + 1) = v4;
      }
    }
  }

  else
  {
    if (v7)
    {
      if (v7 == 1)
      {
        result[1] = 0;
      }

      else if (v7 == 2)
      {
        *(result + 1) = 0;
      }

      else
      {
        *(result + 1) = 0;
      }
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

uint64_t sub_1B9838F5C(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = sub_1B98F5078();
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B983904C(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 <= 0xFB)
    {
      goto LABEL_15;
    }

    v7 = ((a2 + 4) >> 8) + 1;
    v8 = 1;
    if (v7 >= 0x100)
    {
      if (v7 >= 0x10000)
      {
        v2 = 4;
      }

      else
      {
        v2 = 2;
      }

      v8 = v2;
    }

    if (v8 == 1)
    {
      v6 = a1[1];
    }

    else
    {
      v6 = v8 == 2 ? *(a1 + 1) : *(a1 + 1);
    }

    if (v6)
    {
      v5 = (*a1 | ((v6 - 1) << 8)) + 251;
    }

    else
    {
LABEL_15:
      v3 = *a1 - 5;
      if (v3 < 0)
      {
        v3 = -1;
      }

      v5 = v3;
    }
  }

  else
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1B9839264(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = sub_1B98F5078();
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 24)) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 24));
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1B9839398@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a2;
  v22 = a1;
  v31 = 0;
  v17 = 0;
  v14 = type metadata accessor for BlockedHandle(0);
  v15 = (*(*(v14 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v14);
  v16 = v8 - v15;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5480, &qword_1B98FA9B0);
  v19 = *(v18 - 8);
  v20 = v18 - 8;
  v21 = (*(v19 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v17);
  v25 = v8 - v21;
  v23 = (*(*(type metadata accessor for IsHandleBlocked(v2) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v22);
  v24 = v8 - v23;
  v31 = v3;
  v27 = v3[3];
  v28 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v27);
  sub_1B98377D4();
  v4 = v26;
  sub_1B98F6068();
  v29 = v4;
  v30 = v4;
  if (v4)
  {
    v10 = v30;
  }

  else
  {
    sub_1B9868250();
    v5 = v29;
    sub_1B98F5EB8();
    v11 = v5;
    v12 = v5;
    if (!v5)
    {
      v6 = sub_1B9832680(v16, v24);
      (*(v19 + 8))(v25, v18, v6);
      sub_1B9868C28(v24, v13);
      __swift_destroy_boxed_opaque_existential_1(v22);
      return sub_1B98532E8(v24);
    }

    v9 = v12;
    (*(v19 + 8))(v25, v18);
    v10 = v9;
  }

  v8[1] = v10;
  return __swift_destroy_boxed_opaque_existential_1(v22);
}

uint64_t sub_1B98396B4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *(result + 40) = 0;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

uint64_t sub_1B983988C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFF)
  {
    *result = a2 + 0x80000000;
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 - 1;
    }
  }

  return result;
}

void BlockedHandle.init(from:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v58 = a1;
  v75 = 0;
  v53 = 0;
  v48 = sub_1B98F5078();
  v49 = *(v48 - 8);
  v50 = v48 - 8;
  v51 = (*(v49 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v48);
  v52 = v20 - v51;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D68, &qword_1B98FC1D0);
  v55 = *(v54 - 8);
  v56 = v54 - 8;
  v57 = (*(v55 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = MEMORY[0x1EEE9AC00](v53);
  v62 = v20 - v57;
  v60 = type metadata accessor for BlockedHandle(v2);
  v59 = (*(*(v60 - 1) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v3 = MEMORY[0x1EEE9AC00](v58);
  v4 = v60;
  v5 = v20 - v59;
  v61 = v20 - v59;
  v75 = v3;
  v6 = (v20 + v60[5] - v59);
  *v6 = 0;
  v6[1] = 0;
  v7 = &v5[v4[8]];
  *v7 = 0;
  *(v7 + 1) = 0;
  v64 = v3[3];
  v65 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v64);
  sub_1B9838030();
  v8 = v63;
  sub_1B98F6068();
  v66 = v8;
  v67 = v8;
  if (v8)
  {
    v26 = v67;
    v27 = 18;
  }

  else
  {
    v44 = &v74;
    v74 = 0;
    sub_1B98C9A04();
    v9 = v66;
    sub_1B98F5EB8();
    v45 = v9;
    v46 = v9;
    if (v9)
    {
      v25 = v46;
      (*(v55 + 8))(v62, v54);
      v26 = v25;
      v27 = 18;
    }

    else
    {
      (*(v49 + 32))(v61, v52, v48);
      v10 = v45;
      v73 = 1;
      v11 = sub_1B98F5E78();
      v40 = v10;
      v41 = v11;
      v42 = v12;
      v43 = v10;
      if (v10)
      {
        v24 = v43;
        (*(v55 + 8))(v62, v54);
        v26 = v24;
        v27 = 19;
      }

      else
      {
        v13 = v42;
        v14 = (v61 + v60[5]);
        *v14 = v41;
        v14[1] = v13;

        v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5D50, &unk_1B98FC1C0);
        v36 = &v71;
        v71 = 2;
        sub_1B98C9A84();
        v15 = v40;
        sub_1B98F5EB8();
        v38 = v15;
        v39 = v15;
        if (v15)
        {
          v23 = v39;
          (*(v55 + 8))(v62, v54);
          v26 = v23;
          v27 = 19;
        }

        else
        {
          *(v61 + v60[6]) = v72;
          v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5B70, &qword_1B98FBE40);
          v32 = &v69;
          v69 = 3;
          sub_1B98C9B98();
          v16 = v38;
          sub_1B98F5EB8();
          v34 = v16;
          v35 = v16;
          if (!v16)
          {
            *(v61 + v60[7]) = v70;
            v68 = 4;
            v17 = sub_1B98F5E78();
            v28 = 0;
            v29 = v17;
            v30 = v18;
            v31 = 0;
            v19 = (v61 + v60[8]);
            *v19 = v17;
            v19[1] = v18;

            (*(v55 + 8))(v62, v54);
            sub_1B9833334(v61, v47);
            __swift_destroy_boxed_opaque_existential_1(v58);
            sub_1B983A3AC(v61);
            return;
          }

          v22 = v35;
          (*(v55 + 8))(v62, v54);
          v26 = v22;
          v27 = 23;
        }
      }
    }
  }

  v21 = v27;
  v20[1] = v26;
  __swift_destroy_boxed_opaque_existential_1(v58);
  if (v21)
  {
    (*(v49 + 8))(v61, v48);
  }

  sub_1B985EE4C(v61 + v60[5]);
  if ((v21 & 4) != 0)
  {
    sub_1B98BF3E4((v61 + v60[6]));
  }

  if ((v21 & 8) != 0)
  {
    sub_1B98BF51C((v61 + v60[7]));
  }

  sub_1B985EE4C(v61 + v60[8]);
}

unint64_t sub_1B983A2A4()
{
  v2 = qword_1EDBDB220;
  if (!qword_1EDBDB220)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB220);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B983A334()
{
  v2 = qword_1EDBDB228;
  if (!qword_1EDBDB228)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB228);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B983A3AC(uint64_t a1)
{
  v1 = sub_1B98F5078();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for BlockedHandle(0);

  return a1;
}

unint64_t sub_1B983A4C8()
{
  v2 = qword_1EDBDAC68;
  if (!qword_1EDBDAC68)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC68);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B983A544(uint64_t a1)
{
  v31 = a1;
  v42 = 0;
  v51 = 0;
  v50 = 0;
  v28 = 0;
  type metadata accessor for BlockedHandle(0);
  v1 = MEMORY[0x1EEE9AC00](0);
  v29 = &v11[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for IsHandleBlocked(v1);
  MEMORY[0x1EEE9AC00](v42);
  v30 = &v11[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v39 = sub_1B98F5138();
  v32 = v39;
  v33 = *(v39 - 8);
  v38 = v33;
  v34 = v33;
  v35 = *(v33 + 64);
  v4 = MEMORY[0x1EEE9AC00](v31);
  v5 = &v11[-((v35 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v36 = v5;
  v51 = v4;
  v37 = *(v6 + 8);
  v50 = v6;
  v7 = sub_1B98F1E00();
  (*(v38 + 16))(v5, v7, v39);
  v44 = sub_1B98F5118();
  v40 = v44;
  v43 = sub_1B98F5BD8();
  v41 = v43;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v45 = sub_1B98F5F98();
  if (os_log_type_enabled(v44, v43))
  {
    v8 = v28;
    v19 = sub_1B98F5C28();
    v15 = v19;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v17 = 0;
    v20 = sub_1B985263C(0, v16, v16);
    v18 = v20;
    v21 = sub_1B985263C(v17, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v49 = v19;
    v48 = v20;
    v47 = v21;
    v22 = 0;
    v23 = &v49;
    sub_1B9852690(0, &v49);
    sub_1B9852690(v22, v23);
    v46 = v45;
    v24 = v11;
    MEMORY[0x1EEE9AC00](v11);
    v25 = &v11[-48];
    *&v11[-32] = v9;
    *&v11[-24] = &v48;
    *&v11[-16] = &v47;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();
    v27 = v8;
    if (v8)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v40, v41, "Handling incoming IsHandleBlocked message", v15, 2u);
      v13 = 0;
      sub_1B985281C(v18, 0, v16);
      sub_1B985281C(v21, v13, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v14 = v27;
    }
  }

  else
  {

    v14 = v28;
  }

  (*(v34 + 8))(v36, v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5278, &qword_1B98F8FE0);
  sub_1B98F5158();
  sub_1B9833334(v30, v29);
  sub_1B98532E8(v30);
  v12 = sub_1B9897F7C(v29);
  sub_1B983A3AC(v29);

  return v12 & 1;
}

unint64_t sub_1B983AA70()
{
  v2 = qword_1EDBDAC70;
  if (!qword_1EDBDAC70)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAC70);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B983AAEC(uint64_t a1)
{
  v4 = type metadata accessor for BlockedHandle(0);
  if (!(*(*(v4 - 8) + 48))(a1, 1))
  {
    v1 = sub_1B98F5078();
    (*(*(v1 - 8) + 8))(a1);
  }

  return a1;
}

uint64_t sub_1B983ABEC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v53 = a2;
  v55 = 0;
  v78 = 0;
  v77 = 0;
  v54 = 0;
  v75 = 0;
  v73 = 0;
  v70 = 0uLL;
  v56 = sub_1B98F5018();
  v57 = *(v56 - 8);
  v58 = v57;
  v2 = MEMORY[0x1EEE9AC00](0);
  v59 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for BlockedHandle(v2);
  v61 = *(v60 - 8);
  v62 = v61;
  v63 = *(v61 + 64);
  v4 = MEMORY[0x1EEE9AC00](v67);
  v65 = (v63 + 15) & 0xFFFFFFFFFFFFFFF0;
  v64 = &v26 - v65;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v66 = &v26 - v65;
  v78 = &v26 - v65;
  v77 = v5;
  swift_unknownObjectRetain();
  Type = CMFItemGetType();
  swift_unknownObjectRelease();
  v69 = Type;
  if (Type)
  {
    if (v69 != 1)
    {
      v39 = v54;
LABEL_25:
      v27 = v39;
      swift_unknownObjectRelease();
      (*(v62 + 56))(v53, 1, 1, v60);
      return v27;
    }

    v17 = v54;
    v76 = 0;
    swift_unknownObjectRetain();
    v36 = &v26;
    MEMORY[0x1EEE9AC00](&v26);
    v37 = &v26 - 4;
    *(&v26 - 2) = v18;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5C90, &qword_1B98FC150);
    sub_1B987E980(&v76, sub_1B98C6808, v37, v19, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v20);
    v38 = v17;
    if (!v17)
    {
      swift_unknownObjectRelease();
      v35 = v76;
      if (!v76)
      {
        v39 = v38;
        goto LABEL_25;
      }

      v34 = v35;
      v33 = v35;
      v75 = v35;
      (*(v58 + 104))(v59, *MEMORY[0x1E696ED90], v56);
      v21 = v33;
      v22 = v33;

      v30 = sub_1B98F5658();
      v31 = v23;
      v32 = sub_1B98C5FFC();
      v24 = sub_1B98C6048();
      BlockedHandle.init(type:value:normalizedValue:associatedContacts:allowedApps:)(v59, v30, v31, 0, 0, v32, v24, v64);

      sub_1B9832680(v64, v66);
      v42 = v38;
LABEL_24:
      v28 = v42;
      sub_1B9833334(v66, v53);
      (*(v62 + 56))(v53, 0, 1, v60);
      swift_unknownObjectRelease();
      sub_1B983A3AC(v66);
      return v28;
    }
  }

  else
  {
    v6 = v54;
    v74 = 0;
    swift_unknownObjectRetain();
    v50 = &v26;
    MEMORY[0x1EEE9AC00](&v26);
    v51 = &v26 - 4;
    *(&v26 - 2) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5C98, &qword_1B98FC158);
    sub_1B987E980(&v74, sub_1B98C6834, v51, v8, MEMORY[0x1E69E73E0], MEMORY[0x1E69E7CA8] + 8, MEMORY[0x1E69E7410], v9);
    v52 = v6;
    if (!v6)
    {
      swift_unknownObjectRelease();
      if (v74)
      {
        v48 = v74;
        v10 = v74;
        v11 = v48;

        v49 = v48;
      }

      else
      {
        v49 = 0;
      }

      v47 = v49;
      if (v49)
      {
        v46 = v47;
        v45 = v47;
        v73 = v47;
        *&v71 = sub_1B98C6570();
        *(&v71 + 1) = v12;
        v13 = v45;
        if (*(&v71 + 1))
        {
          v72 = v71;
        }

        else
        {
          *&v72 = sub_1B98C6670();
          *(&v72 + 1) = v14;
          if (*(&v71 + 1))
          {
            sub_1B985EE4C(&v71);
          }
        }

        v44 = v72;
        if (*(&v72 + 1))
        {
          v43 = v44;
          v15 = v52;
          v40 = v44;
          v70 = v44;
          (*(v58 + 104))(v59, *MEMORY[0x1E696ED80], v56);
          v41 = sub_1B98C5FFC();
          v16 = sub_1B98C6048();
          BlockedHandle.init(type:value:normalizedValue:associatedContacts:allowedApps:)(v59, v40, *(&v40 + 1), 0, 0, v41, v16, v64);
          sub_1B9832680(v64, v66);

          v42 = v15;
          goto LABEL_24;
        }
      }

      v39 = v52;
      goto LABEL_25;
    }

    swift_unknownObjectRelease();
    __break(1u);
  }

  result = swift_unknownObjectRelease();
  __break(1u);
  return result;
}

uint64_t sub_1B983B410(uint64_t a1, uint64_t a2)
{
  v260 = a2;
  v259 = a1;
  v314 = *MEMORY[0x1E69E9840];
  v257 = 0;
  v304 = 0;
  v303 = 0;
  v302 = 0;
  v300 = 0;
  v299 = 0;
  v258 = 0;
  v297 = 0;
  v295 = 0;
  v293 = 0;
  v291 = 0;
  v288 = 0;
  v287[1] = 0;
  v287[0] = 0;
  v285 = 0;
  v284 = 0;
  v282 = 0;
  v278 = 0;
  v275 = 0;
  v261 = sub_1B98F5138();
  v262 = *(v261 - 8);
  v263 = v262;
  v265 = *(v262 + 64);
  v3 = MEMORY[0x1EEE9AC00](v259);
  v267 = (v265 + 15) & 0xFFFFFFFFFFFFFFF0;
  v264 = &v72 - v267;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v266 = &v72 - v267;
  v5 = MEMORY[0x1EEE9AC00](v4);
  v268 = &v72 - v267;
  v304 = v5;
  v303 = v6;
  v302 = v2;
  v301 = v5;
  v270 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
  v269 = v270;
  v271 = sub_1B988AFE0();
  if (sub_1B98F5B58())
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5848, &unk_1B98FB1B8);
    v138 = sub_1B98F5F98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
    v141 = sub_1B98F54A8();
    v142 = v258;
    return v141;
  }

  sub_1B988B174();
  sub_1B98F54D8();
  v7 = sub_1B988B1D8(v260);
  v8 = v268;
  v226 = v7;
  v220 = v7;
  v300 = v7;
  v221 = objc_opt_self();
  sub_1B98F54D8();
  v222 = sub_1B98F58A8();

  v223 = [v221 predicateForContactsMatchingHandleStrings_];

  [v226 setPredicate_];
  v9 = sub_1B98F1E6C();
  v224 = *(v263 + 16);
  v225 = (v263 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v224(v8, v9, v261);
  v10 = v226;
  v227 = 24;
  v240 = 7;
  v11 = swift_allocObject();
  v12 = v256;
  v232 = v11;
  *(v11 + 16) = v226;
  v13 = v12;
  v241 = swift_allocObject();
  *(v241 + 16) = v256;
  v255 = sub_1B98F5118();
  v228 = v255;
  v254 = sub_1B98F5BD8();
  v229 = v254;
  v235 = 17;
  v245 = swift_allocObject();
  v230 = v245;
  *(v245 + 16) = 65;
  v246 = swift_allocObject();
  v231 = v246;
  v237 = 8;
  *(v246 + 16) = 8;
  v239 = 32;
  v14 = swift_allocObject();
  v15 = v232;
  v233 = v14;
  *(v14 + 16) = sub_1B988B248;
  *(v14 + 24) = v15;
  v16 = swift_allocObject();
  v17 = v233;
  v247 = v16;
  v234 = v16;
  *(v16 + 16) = sub_1B988B89C;
  *(v16 + 24) = v17;
  v248 = swift_allocObject();
  v236 = v248;
  *(v248 + 16) = 64;
  v249 = swift_allocObject();
  v238 = v249;
  *(v249 + 16) = v237;
  v18 = swift_allocObject();
  v19 = v241;
  v242 = v18;
  *(v18 + 16) = sub_1B988B280;
  *(v18 + 24) = v19;
  v20 = swift_allocObject();
  v21 = v242;
  v252 = v20;
  v243 = v20;
  *(v20 + 16) = sub_1B988B8C4;
  *(v20 + 24) = v21;
  v253 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v244 = v253;
  v250 = sub_1B98F5F98();
  v251 = v22;

  v23 = v245;
  v24 = v251;
  *v251 = sub_1B988B88C;
  v24[1] = v23;

  v25 = v246;
  v26 = v251;
  v251[2] = sub_1B988B894;
  v26[3] = v25;

  v27 = v247;
  v28 = v251;
  v251[4] = sub_1B988B8A8;
  v28[5] = v27;

  v29 = v248;
  v30 = v251;
  v251[6] = sub_1B988B8B4;
  v30[7] = v29;

  v31 = v249;
  v32 = v251;
  v251[8] = sub_1B988B8BC;
  v32[9] = v31;

  v33 = v251;
  v34 = v252;
  v251[10] = sub_1B988B8D0;
  v33[11] = v34;
  sub_1B9851B38();

  if (os_log_type_enabled(v255, v254))
  {
    v35 = v258;
    v213 = sub_1B98F5C28();
    v210 = v213;
    v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v216 = 2;
    v214 = sub_1B985263C(2, v211, v211);
    v212 = v214;
    v215 = sub_1B985263C(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v274 = v213;
    v306 = v214;
    v305 = v215;
    v217 = &v274;
    sub_1B9852690(3, &v274);
    sub_1B9852690(v216, v217);
    v272 = sub_1B988B88C;
    v273 = v230;
    sub_1B98526A4(&v272, v217, &v306, &v305);
    v218 = v35;
    v219 = v35;
    if (v35)
    {
      v208 = 0;

      __break(1u);
    }

    else
    {
      v272 = sub_1B988B894;
      v273 = v231;
      sub_1B98526A4(&v272, &v274, &v306, &v305);
      v206 = 0;
      v207 = 0;
      v272 = sub_1B988B8A8;
      v273 = v234;
      sub_1B98526A4(&v272, &v274, &v306, &v305);
      v204 = 0;
      v205 = 0;
      v272 = sub_1B988B8B4;
      v273 = v236;
      sub_1B98526A4(&v272, &v274, &v306, &v305);
      v202 = 0;
      v203 = 0;
      v272 = sub_1B988B8BC;
      v273 = v238;
      sub_1B98526A4(&v272, &v274, &v306, &v305);
      v200 = 0;
      v201 = 0;
      v272 = sub_1B988B8D0;
      v273 = v243;
      sub_1B98526A4(&v272, &v274, &v306, &v305);
      v198 = 0;
      v199 = 0;
      _os_log_impl(&dword_1B982F000, v228, v229, "Executing contact fetch request %{private}@ using contact store %@", v210, 0x16u);
      sub_1B985281C(v212, 2, v211);
      sub_1B985281C(v215, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v209 = v198;
    }
  }

  else
  {
    v36 = v258;

    v209 = v36;
  }

  v192 = v209;

  v193 = *(v263 + 8);
  v194 = (v263 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v193(v268, v261);
  v313 = 0;
  v298 = 0;
  v197 = [v256 executeFetchRequest:v220 error:&v298];
  v195 = v197;
  v196 = v298;
  v37 = v298;
  v38 = v313;
  v313 = v196;

  if (v197)
  {
    v191 = v195;
    v190 = v195;
    v278 = v195;
    v277 = [v195 value];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5880, &qword_1B98FB1C8);
    if (swift_dynamicCast())
    {
      v189 = v276;
    }

    else
    {
      v189 = 0;
    }

    v188 = v189;
    if (v189)
    {
      v187 = v188;
      v186 = v188;
      v275 = v188;
      sub_1B98F54D8();
      v299 = v186;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5848, &unk_1B98FB1B8);
      v185 = sub_1B98F5F98();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
      v299 = sub_1B98F54A8();
    }

    v184 = v192;
  }

  else
  {
    v116 = v313;
    v119 = sub_1B98F4F38();
    v117 = v119;

    swift_willThrow();
    v48 = v266;
    v118 = 0;
    v49 = v119;
    v297 = v119;
    v50 = sub_1B98F1E6C();
    v224(v48, v50, v261);
    v51 = v119;
    v127 = 7;
    v125 = swift_allocObject();
    *(v125 + 16) = v119;
    sub_1B98745B0();

    v137 = sub_1B98F5118();
    v120 = v137;
    v136 = sub_1B98F5BB8();
    v121 = v136;
    v122 = 17;
    v131 = swift_allocObject();
    v123 = v131;
    *(v131 + 16) = 64;
    v132 = swift_allocObject();
    v124 = v132;
    *(v132 + 16) = 8;
    v126 = 32;
    v52 = swift_allocObject();
    v53 = v125;
    v128 = v52;
    *(v52 + 16) = sub_1B988B8DC;
    *(v52 + 24) = v53;
    v54 = swift_allocObject();
    v55 = v128;
    v129 = v54;
    *(v54 + 16) = sub_1B988B8F4;
    *(v54 + 24) = v55;
    v56 = swift_allocObject();
    v57 = v129;
    v135 = v56;
    v130 = v56;
    *(v56 + 16) = sub_1B988B900;
    *(v56 + 24) = v57;
    v133 = sub_1B98F5F98();
    v134 = v58;

    v59 = v131;
    v60 = v134;
    *v134 = sub_1B988B8E4;
    v60[1] = v59;

    v61 = v132;
    v62 = v134;
    v134[2] = sub_1B988B8EC;
    v62[3] = v61;

    v63 = v134;
    v64 = v135;
    v134[4] = sub_1B988B90C;
    v63[5] = v64;
    sub_1B9851B38();

    if (os_log_type_enabled(v137, v136))
    {
      v65 = v118;
      v109 = sub_1B98F5C28();
      v106 = v109;
      v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v112 = 1;
      v110 = sub_1B985263C(1, v107, v107);
      v108 = v110;
      v111 = sub_1B985263C(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v281[0] = v109;
      v308[0] = v110;
      v307 = v111;
      v113 = v281;
      sub_1B9852690(2, v281);
      sub_1B9852690(v112, v113);
      v279 = sub_1B988B8E4;
      v280 = v123;
      sub_1B98526A4(&v279, v113, v308, &v307);
      v114 = v65;
      v115 = v65;
      if (v65)
      {
        v104 = 0;

        __break(1u);
      }

      else
      {
        v279 = sub_1B988B8EC;
        v280 = v124;
        sub_1B98526A4(&v279, v281, v308, &v307);
        v102 = 0;
        v103 = 0;
        v279 = sub_1B988B90C;
        v280 = v130;
        sub_1B98526A4(&v279, v281, v308, &v307);
        v100 = 0;
        v101 = 0;
        _os_log_impl(&dword_1B982F000, v120, v121, "Contact fetch failed with the following error: %@", v106, 0xCu);
        sub_1B985281C(v108, 1, v107);
        sub_1B985281C(v111, 0, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v105 = v100;
      }
    }

    else
    {
      v66 = v118;

      v105 = v66;
    }

    v99 = v105;

    v193(v266, v261);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5848, &unk_1B98FB1B8);
    v98 = sub_1B98F5F98();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
    v299 = sub_1B98F54A8();

    v184 = v99;
  }

  v39 = v184;
  sub_1B98F54D8();
  v296 = v259;
  v180 = &v72;
  MEMORY[0x1EEE9AC00](&v72);
  v181 = &v72 - 4;
  *(&v72 - 2) = &v299;
  sub_1B988B944();
  v40 = sub_1B98F5D78();
  v182 = v39;
  v183 = v40;
  if (v39)
  {
    __break(1u);
LABEL_38:
    v88 = v312;
    v91 = sub_1B98F4F38();
    v89 = v91;

    swift_willThrow();
    v67 = v264;
    v93 = 0;
    v90 = 0;
    v68 = v91;
    v291 = v91;
    v69 = sub_1B98F1E6C();
    v224(v67, v69, v261);
    v96 = sub_1B98F5118();
    v92 = v96;
    v95 = sub_1B98F5BB8();
    v94 = v95;
    v97 = sub_1B98F5F98();
    if (os_log_type_enabled(v96, v95))
    {
      v70 = v90;
      v79 = sub_1B98F5C28();
      v75 = v79;
      v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v77 = 0;
      v80 = sub_1B985263C(0, v76, v76);
      v78 = v80;
      v81 = sub_1B985263C(v77, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v290 = v79;
      v311 = v80;
      v310 = v81;
      v82 = 0;
      v83 = &v290;
      sub_1B9852690(0, &v290);
      sub_1B9852690(v82, v83);
      v289 = v97;
      v84 = &v72;
      MEMORY[0x1EEE9AC00](&v72);
      v85 = &v72 - 6;
      *(&v72 - 4) = v71;
      *(&v72 - 3) = &v311;
      *(&v72 - 2) = &v310;
      v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
      sub_1B9852720();
      sub_1B98F57D8();
      v87 = v70;
      if (v70)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B982F000, v92, v94, "Failed to query contacts using predicate", v75, 2u);
        v73 = 0;
        sub_1B985281C(v78, 0, v76);
        sub_1B985281C(v81, v73, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v74 = v87;
      }
    }

    else
    {

      v74 = v90;
    }

    v72 = v74;

    v193(v264, v261);
    v146 = v72;
LABEL_26:
    v143 = v146;

    v144 = v143;
LABEL_28:
    v140 = v144;
    v139 = v299;
    sub_1B98F54D8();

    sub_1B988B9CC(&v299);

    v141 = v139;
    v142 = v140;
    return v141;
  }

  v179 = v183;
  v295 = v183;
  v294 = v183;
  if (sub_1B98F5B58())
  {
    v144 = v182;
    goto LABEL_28;
  }

  v171 = objc_opt_self();
  sub_1B98F54D8();
  v172 = sub_1B98F58A8();

  v174 = [v171 predicateForContactsMatchingHandleStrings_];
  v173 = v174;

  v293 = v174;
  v312 = 0;
  sub_1B98F54D8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5CF0, &unk_1B98FB210);
  v177 = sub_1B98F58A8();

  v292 = v312;
  v178 = [v256 unifiedContactsMatchingPredicate:v174 keysToFetch:v177 error:&v292];
  v175 = v178;
  v176 = v292;
  v41 = v292;
  v42 = v312;
  v312 = v176;

  if (!v178)
  {
    goto LABEL_38;
  }

  v170 = v175;
  v165 = v175;
  v164 = sub_1B9836338();
  v167 = sub_1B98F58B8();
  v166 = v167;
  v288 = v167;

  v287[2] = v167;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5920, &qword_1B98FB180);
  v168 = v169;
  sub_1B988BA28();
  if (sub_1B98F5B58())
  {
    v147 = v182;
LABEL_25:
    v145 = v147;

    v146 = v145;
    goto LABEL_26;
  }

  v43 = v182;
  sub_1B98F54D8();
  v286 = v179;
  sub_1B98F5B88();
  for (i = v43; ; i = v149)
  {
    v160 = i;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5828, &qword_1B98FB1A0);
    sub_1B98F5DE8();
    v161 = v308[2];
    v162 = v309;
    if (!v309)
    {
      sub_1B988B068(v287);
      v147 = v160;
      goto LABEL_25;
    }

    v158 = v161;
    v159 = v162;
    v44 = v160;
    v152 = v162;
    v150 = v161;
    v284 = v161;
    v285 = v162;
    sub_1B98F54D8();
    v283 = v166;
    sub_1B98F54D8();
    v153 = &v72;
    MEMORY[0x1EEE9AC00](&v72);
    v151 = &v72 - 4;
    *(&v72 - 2) = v150;
    *(&v72 - 1) = v45;
    sub_1B988BAE0();
    v46 = sub_1B98F5D78();
    v154 = v44;
    v155 = v46;
    v156 = v152;
    v157 = v153;
    if (v44)
    {
      break;
    }

    v148 = v155;
    v149 = 0;

    v282 = v148;
    sub_1B98F54D8();
    sub_1B98F54D8();
    v308[1] = v148;
    v281[1] = v150;
    v281[2] = v152;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBBD5880, &qword_1B98FB1C8);
    sub_1B98F55C8();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B983DB9C()
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5260, &unk_1B98F8FC0) - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B983E024()
{

  return swift_deallocObject();
}

uint64_t sub_1B983E06C()
{

  return swift_deallocObject();
}

uint64_t sub_1B983E0B4()
{

  return swift_deallocObject();
}

uint64_t sub_1B983E0FC()
{

  return swift_deallocObject();
}

uint64_t sub_1B983E144()
{

  return swift_deallocObject();
}

uint64_t sub_1B983E18C()
{

  return swift_deallocObject();
}

uint64_t sub_1B983E1D4()
{

  return swift_deallocObject();
}

uint64_t sub_1B983E21C()
{

  return swift_deallocObject();
}

uint64_t sub_1B983E264()
{

  return swift_deallocObject();
}

uint64_t sub_1B983E2AC()
{

  return swift_deallocObject();
}

uint64_t sub_1B983E334(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v9 = type metadata accessor for BlockedHandle(0);
  if (a2 == *(*(v9 - 8) + 84))
  {
    return (*(*(v9 - 8) + 48))(a1, a2, v9);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v4 = -1;
    if (*(a1 + *(a3 + 24) + 8) < 0x100000000uLL)
    {
      v4 = *(a1 + *(a3 + 24) + 8);
    }

    return (v4 + 1);
  }

  else
  {
    __break(1u);
  }

  return v5;
}

uint64_t sub_1B983E450(uint64_t a1, unsigned int a2, int a3, uint64_t a4)
{
  result = type metadata accessor for BlockedHandle(0);
  if (a3 == *(*(result - 8) + 84))
  {
    return (*(*(result - 8) + 56))(a1, a2, a2, result);
  }

  if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24) + 8) = a2 - 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1B983E774()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B0, &unk_1B98FAAB0);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1B983EA70()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B0, &unk_1B98FAAB0);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1B983EFFC()
{
  type metadata accessor for BlockedHandle(0);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

uint64_t sub_1B983F21C()
{
  v1 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55A8, &qword_1B98FAAA8) - 8) + 80);
  v4 = (v1 + 16) & ~v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55B0, &unk_1B98FAAB0);
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(v0 + v4, 1))
  {
    (*(v6 + 8))(v3 + v4, v5);
  }

  return swift_deallocObject();
}

uint64_t sub_1B983F518()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD55F8, &qword_1B98FABB8);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B983F6BC()
{

  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1B983F70C()
{
  type metadata accessor for BlockedHandle(0);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

uint64_t sub_1B983FA04()
{

  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1B983FC84()
{

  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1B983FCD4()
{
  type metadata accessor for BlockedHandle(0);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

uint64_t sub_1B9840124()
{

  MEMORY[0x1E69E5920](*(v0 + 24));
  return swift_deallocObject();
}

uint64_t sub_1B9840174()
{
  type metadata accessor for BlockedHandle(0);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

uint64_t sub_1B984046C()
{
  MEMORY[0x1E69E5920](*(v0 + 16));

  return swift_deallocObject();
}

uint64_t sub_1B9840E38()
{
  type metadata accessor for BlockedHandle(0);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

uint64_t sub_1B9841438()
{
  type metadata accessor for BlockedHandle(0);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

uint64_t sub_1B9841730()
{
  type metadata accessor for BlockedHandle(0);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

uint64_t sub_1B9841A28()
{
  type metadata accessor for BlockedHandle(0);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

uint64_t sub_1B9841F10()
{
  type metadata accessor for BlockedHandle(0);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

uint64_t sub_1B9842130()
{
  type metadata accessor for BlockedHandle(0);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

uint64_t sub_1B9842428()
{
  type metadata accessor for BlockedHandle(0);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

uint64_t sub_1B9842720()
{
  type metadata accessor for BlockedHandle(0);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

uint64_t sub_1B9842D4C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B984326C()
{
  if (MEMORY[0x1E69E7D58])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5990, &qword_1B98FB4C0);
  }

  else
  {
    return MEMORY[0x1E69E7CA8] + 8;
  }
}

uint64_t sub_1B9847360()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1B9847440()
{
  v2 = *(sub_1B98F5078() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9847610()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();
  type metadata accessor for BlockedHandle(0);

  return swift_deallocObject();
}

uint64_t sub_1B98479C0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5EA8, &qword_1B98FCAC8);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();
  type metadata accessor for BlockedHandle(0);

  return swift_deallocObject();
}

uint64_t sub_1B9847D70()
{
  type metadata accessor for BlockedHandle(0);
  v0 = sub_1B98F5078();
  (*(*(v0 - 8) + 8))();

  return swift_deallocObject();
}

__n128 sub_1B984921C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t sub_1B9849238(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v6 = -1;
    if (*(a1 + 8) < 0x100000000uLL)
    {
      v6 = *(a1 + 8);
    }

    return (v6 + 1);
  }

  else
  {
    v4 = *(a3 + 16);
    if (a2 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 48))(a1 + *(a3 + 40), a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return v5;
}

uint64_t sub_1B9849358(uint64_t result, unsigned int a2, int a3, uint64_t a4)
{
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = a2 - 1;
  }

  else
  {
    v4 = *(a4 + 16);
    if (a3 == *(*(v4 - 8) + 84))
    {
      return (*(*(v4 - 8) + 56))(result + *(a4 + 40), a2, a2, v4);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1B9849450()
{
  v2 = *(sub_1B98F4F88() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B984978C()
{
  v2 = *(sub_1B98F4F88() - 8);
  (*(v2 + 8))(v0 + ((*(v2 + 80) + 16) & ~*(v2 + 80)));
  return swift_deallocObject();
}

uint64_t sub_1B9849970()
{
  v2 = *(v0 + 16);

  return v2;
}

uint64_t sub_1B98499D8()
{
  v4 = v0;
  *(v0 + 24) = 0;
  v3 = 0;
  sub_1B985253C(&v3, v0 + 24, MEMORY[0x1E69E82E8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F30, &unk_1B98F89D0);
  *(v2 + 16) = sub_1B98F5218();

  swift_allocObject();

  swift_weakInit();

  sub_1B98F51D8();
  sub_1B9852608(sub_1B9852600);

  return v2;
}

uint64_t sub_1B9849AF0(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v29 = a1;
  v40 = 0;
  v51 = 0;
  v50 = 0;
  v48 = 0;
  v28 = 0;
  v37 = sub_1B98F5138();
  v31 = v37;
  v32 = *(v37 - 8);
  v36 = v32;
  v33 = v32;
  v2 = MEMORY[0x1EEE9AC00](v29);
  v4 = v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = v4;
  v51 = v2;
  v35 = v5 + 16;
  v50 = v5 + 16;
  v6 = sub_1B98F1B1C();
  (*(v36 + 16))(v4, v6, v37);
  v42 = sub_1B98F5118();
  v38 = v42;
  v41 = sub_1B98F5BD8();
  v39 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v43 = sub_1B98F5F98();
  if (os_log_type_enabled(v42, v41))
  {
    v7 = v28;
    v19 = sub_1B98F5C28();
    v15 = v19;
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v17 = 0;
    v20 = sub_1B985263C(0, v16, v16);
    v18 = v20;
    v21 = sub_1B985263C(v17, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v47 = v19;
    v46 = v20;
    v45 = v21;
    v22 = 0;
    v23 = &v47;
    sub_1B9852690(0, &v47);
    sub_1B9852690(v22, v23);
    v44 = v43;
    v24 = v10;
    MEMORY[0x1EEE9AC00](v10);
    v25 = &v10[-6];
    v10[-4] = v8;
    v10[-3] = &v46;
    v10[-2] = &v45;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();
    v27 = v7;
    if (v7)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v38, v39, "Server disconnected", v15, 2u);
      v13 = 0;
      sub_1B985281C(v18, 0, v16);
      sub_1B985281C(v21, v13, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v14 = v27;
    }
  }

  else
  {

    v14 = v28;
  }

  (*(v33 + 8))(v34, v31);
  v10[1] = &v49;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v11 = Strong;
  swift_endAccess();
  result = Strong;
  if (Strong)
  {
    v10[0] = v11;
    v48 = v11;
    atomic_store(0, (v11 + 24));
  }

  return result;
}

uint64_t sub_1B9849F90()
{
  v1[8] = v0;
  v1[2] = v1;
  v1[3] = 0;
  v2 = sub_1B98F5138();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[3] = v0;

  return MEMORY[0x1EEE6DFA0](sub_1B984A084, 0);
}

uint64_t sub_1B984A084()
{
  v1 = *(v0 + 64);
  *(v0 + 16) = v0;
  LOBYTE(v1) = atomic_load((v1 + 24));
  if ((v1 & 1) == 0)
  {
    v2 = *(v20 + 88);
    v16 = *(v20 + 72);
    v15 = *(v20 + 80);
    v3 = sub_1B98F1B1C();
    (*(v15 + 16))(v2, v3, v16);
    v18 = sub_1B98F5118();
    v17 = sub_1B98F5BD8();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v19 = sub_1B98F5F98();
    if (os_log_type_enabled(v18, v17))
    {
      buf = sub_1B98F5C28();
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v12 = sub_1B985263C(0, v10, v10);
      v13 = sub_1B985263C(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      *(v20 + 32) = buf;
      *(v20 + 40) = v12;
      *(v20 + 48) = v13;
      sub_1B9852690(0, (v20 + 32));
      sub_1B9852690(0, (v20 + 32));
      *(v20 + 56) = v19;
      v14 = swift_task_alloc();
      v14[2] = v20 + 32;
      v14[3] = v20 + 40;
      v14[4] = v20 + 48;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
      sub_1B9852720();
      sub_1B98F57D8();

      _os_log_impl(&dword_1B982F000, v18, v17, "Requesting initial state", buf, 2u);
      sub_1B985281C(v12, 0, v10);
      sub_1B985281C(v13, 0, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();
    }

    v7 = *(v20 + 88);
    v8 = *(v20 + 72);
    v9 = *(v20 + 64);
    v6 = *(v20 + 80);
    MEMORY[0x1E69E5920](v18);
    (*(v6 + 8))(v7, v8);
    atomic_store(1u, (v9 + 24));
  }

  v4 = *(*(v20 + 16) + 8);

  return v4();
}

uint64_t sub_1B984A450()
{
  v5 = v0;

  nullsub_5();
  sub_1B9831E84();
  sub_1B98F5208(&v4);

  if (v2)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B984A504()
{
  v40 = sub_1B984AB54;
  v43 = sub_1B9853228;
  v45 = sub_1B9853218;
  v47 = sub_1B9853220;
  v50 = sub_1B9853234;
  v62 = 0;
  v38 = sub_1B98F5138();
  v36 = *(v38 - 8);
  v37 = v38 - 8;
  v34 = (*(v36 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v38);
  v0 = v16 - v34;
  v35 = v16 - v34;
  v62 = v1;
  v2 = sub_1B98F1B1C();
  (*(v36 + 16))(v0, v2, v38);
  v54 = sub_1B98F5118();
  v55 = sub_1B98F5BD8();
  v39 = 17;
  v42 = 7;
  v46 = swift_allocObject();
  *(v46 + 16) = 32;
  v48 = swift_allocObject();
  *(v48 + 16) = 8;
  v41 = 32;
  v3 = swift_allocObject();
  v44 = v3;
  *(v3 + 16) = v40;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  v5 = v44;
  v51 = v4;
  *(v4 + 16) = v43;
  *(v4 + 24) = v5;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v49 = sub_1B98F5F98();
  v52 = v6;

  v7 = v46;
  v8 = v52;
  *v52 = v45;
  v8[1] = v7;

  v9 = v48;
  v10 = v52;
  v52[2] = v47;
  v10[3] = v9;

  v11 = v51;
  v12 = v52;
  v52[4] = v50;
  v12[5] = v11;
  sub_1B9851B38();

  if (os_log_type_enabled(v54, v55))
  {
    v25 = sub_1B98F5C28();
    v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v26 = sub_1B985263C(0, v24, v24);
    v27 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v28 = &v60;
    v60 = v25;
    v29 = &v59;
    v59 = v26;
    v30 = &v58;
    v58 = v27;
    sub_1B9852690(2, &v60);
    sub_1B9852690(1, v28);
    v13 = v32;
    v56 = v45;
    v57 = v46;
    sub_1B98526A4(&v56, v28, v29, v30);
    v31 = v13;
    if (v13)
    {

      __break(1u);
    }

    else
    {
      v56 = v47;
      v57 = v48;
      sub_1B98526A4(&v56, &v60, &v59, &v58);
      v21 = 0;
      v56 = v50;
      v57 = v51;
      sub_1B98526A4(&v56, &v60, &v59, &v58);
      v20 = 0;
      _os_log_impl(&dword_1B982F000, v54, v55, "%s", v25, 0xCu);
      sub_1B985281C(v26, 0, v24);
      sub_1B985281C(v27, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v22 = v20;
    }
  }

  else
  {

    v22 = v32;
  }

  v17 = v22;
  MEMORY[0x1E69E5920](v54);
  (*(v36 + 8))(v35, v38);
  v16[1] = *(v33 + 16);

  nullsub_6();
  sub_1B9835D90();
  v14 = v17;
  sub_1B98F5208(&v61);
  v18 = v14;
  v19 = v14;
  if (v14)
  {
    v16[0] = v19;

    return v23;
  }

  else
  {

    return v61;
  }
}

uint64_t sub_1B984ABB4(uint64_t a1)
{
  v2[8] = v1;
  v2[7] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_1B98F5138();
  v2[9] = v3;
  v2[10] = *(v3 - 8);
  v2[11] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B984ACCC, 0);
}

uint64_t sub_1B984ACCC(uint64_t a1)
{
  v38 = v1;
  v2 = v1[11];
  v18 = v1[10];
  v19 = v1[9];
  v20 = v1[7];
  v1[2] = v1;
  v3 = sub_1B98F1B1C();
  (*(v18 + 16))(v2, v3, v19);
  sub_1B98F54D8();
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  v31 = sub_1B98F5118();
  v32 = sub_1B98F5BD8();
  v24 = swift_allocObject();
  *(v24 + 16) = 32;
  v25 = swift_allocObject();
  *(v25 + 16) = 8;
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1B984B8C4;
  *(v21 + 24) = 0;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1B98533C4;
  *(v26 + 24) = v21;
  v27 = swift_allocObject();
  *(v27 + 16) = 32;
  v28 = swift_allocObject();
  *(v28 + 16) = 8;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B98533AC;
  *(v23 + 24) = v22;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1B98533EC;
  *(v29 + 24) = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v30 = v4;

  *v30 = sub_1B98533B4;
  v30[1] = v24;

  v30[2] = sub_1B98533BC;
  v30[3] = v25;

  v30[4] = sub_1B98533D0;
  v30[5] = v26;

  v30[6] = sub_1B98533DC;
  v30[7] = v27;

  v30[8] = sub_1B98533E4;
  v30[9] = v28;

  v30[10] = sub_1B98533F8;
  v30[11] = v29;
  sub_1B9851B38();

  if (os_log_type_enabled(v31, v32))
  {
    buf = sub_1B98F5C28();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v15 = sub_1B985263C(0, v13, v13);
    v16 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v33 = buf;
    v34 = v15;
    v35 = v16;
    sub_1B9852690(2, &v33);
    sub_1B9852690(2, &v33);
    v36 = sub_1B98533B4;
    v37 = v24;
    sub_1B98526A4(&v36, &v33, &v34, &v35);
    v36 = sub_1B98533BC;
    v37 = v25;
    sub_1B98526A4(&v36, &v33, &v34, &v35);
    v36 = sub_1B98533D0;
    v37 = v26;
    sub_1B98526A4(&v36, &v33, &v34, &v35);
    v36 = sub_1B98533DC;
    v37 = v27;
    sub_1B98526A4(&v36, &v33, &v34, &v35);
    v36 = sub_1B98533E4;
    v37 = v28;
    sub_1B98526A4(&v36, &v33, &v34, &v35);
    v36 = sub_1B98533F8;
    v37 = v29;
    sub_1B98526A4(&v36, &v33, &v34, &v35);
    _os_log_impl(&dword_1B982F000, v31, v32, "%s: handles: %s", buf, 0x16u);
    sub_1B985281C(v15, 0, v13);
    sub_1B985281C(v16, 2, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v10 = v17[11];
  v11 = v17[9];
  v12 = v17[8];
  v9 = v17[10];
  MEMORY[0x1E69E5920](v31);
  (*(v9 + 8))(v10, v11);
  v17[12] = *(v12 + 16);

  sub_1B98F54D8();
  nullsub_7();
  v17[6] = v5;
  v6 = swift_task_alloc();
  v17[13] = v6;
  v7 = sub_1B9853404();
  *v6 = v17[2];
  v6[1] = sub_1B984B5D0;

  return MEMORY[0x1EEDF2DF0](v17 + 5, v17 + 6, &unk_1F3793BB8, v7);
}

uint64_t sub_1B984B5D0()
{
  v4 = *v1;
  v4[2] = *v1;
  v4[14] = v0;

  if (v0)
  {
    v2 = sub_1B984B804;
  }

  else
  {
    sub_1B985347C(v4 + 6);

    v2 = sub_1B984B764;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B984B764()
{
  *(v0 + 16) = v0;
  v3 = *(v0 + 40);

  v1 = *(*(v0 + 16) + 8);

  return v1(v3);
}

uint64_t sub_1B984B804()
{
  *(v0 + 16) = v0;
  sub_1B985347C((v0 + 48));

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B984B8F4(uint64_t a1)
{
  sub_1B98F54D8();
  v5 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5090, &qword_1B98FA940);
  v4 = sub_1B98F1B88(&v5, v1);
  sub_1B9855ACC(&v5);
  return v4;
}

uint64_t sub_1B984B964(uint64_t a1, uint64_t a2)
{
  v47 = a1;
  v46 = a2;
  v55 = sub_1B984C1EC;
  v58 = sub_1B98534B8;
  v60 = sub_1B98534A8;
  v62 = sub_1B98534B0;
  v65 = sub_1B98534C4;
  v89 = 0;
  v88 = 0;
  v87 = 0;
  v80 = 0;
  v53 = sub_1B98F5138();
  v51 = *(v53 - 8);
  v52 = v53 - 8;
  v48 = (*(v51 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v2 = v20 - v48;
  v49 = v20 - v48;
  v89 = MEMORY[0x1EEE9AC00](v47);
  v50 = *v3;
  v88 = v50;
  v87 = v4;
  v5 = sub_1B98F1B1C();
  (*(v51 + 16))(v2, v5, v53);
  v69 = sub_1B98F5118();
  v70 = sub_1B98F5BD8();
  v54 = 17;
  v57 = 7;
  v61 = swift_allocObject();
  *(v61 + 16) = 32;
  v63 = swift_allocObject();
  *(v63 + 16) = 8;
  v56 = 32;
  v6 = swift_allocObject();
  v59 = v6;
  *(v6 + 16) = v55;
  *(v6 + 24) = 0;
  v7 = swift_allocObject();
  v8 = v59;
  v66 = v7;
  *(v7 + 16) = v58;
  *(v7 + 24) = v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v64 = sub_1B98F5F98();
  v67 = v9;

  v10 = v61;
  v11 = v67;
  *v67 = v60;
  v11[1] = v10;

  v12 = v63;
  v13 = v67;
  v67[2] = v62;
  v13[3] = v12;

  v14 = v66;
  v15 = v67;
  v67[4] = v65;
  v15[5] = v14;
  sub_1B9851B38();

  if (os_log_type_enabled(v69, v70))
  {
    v37 = sub_1B98F5C28();
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v38 = sub_1B985263C(0, v36, v36);
    v39 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v40 = &v75;
    v75 = v37;
    v41 = &v74;
    v74 = v38;
    v42 = &v73;
    v73 = v39;
    sub_1B9852690(2, &v75);
    sub_1B9852690(1, v40);
    v16 = v44;
    v71 = v60;
    v72 = v61;
    sub_1B98526A4(&v71, v40, v41, v42);
    v43 = v16;
    if (v16)
    {

      __break(1u);
    }

    else
    {
      v71 = v62;
      v72 = v63;
      sub_1B98526A4(&v71, &v75, &v74, &v73);
      v34 = 0;
      v71 = v65;
      v72 = v66;
      sub_1B98526A4(&v71, &v75, &v74, &v73);
      v33 = 0;
      _os_log_impl(&dword_1B982F000, v69, v70, "%s", v37, 0xCu);
      sub_1B985281C(v38, 0, v36);
      sub_1B985281C(v39, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v35 = v33;
    }
  }

  else
  {

    v35 = v44;
  }

  v29 = v35;
  MEMORY[0x1E69E5920](v69);
  (*(v51 + 8))(v49, v53);
  v28 = *(v45 + 16);

  sub_1B98F54D8();
  v83 = v50;
  sub_1B985EEA0(v47, &v83, &v84);
  v30 = &v81;
  v81 = v84;
  v82 = v85;
  sub_1B98534D0();
  v17 = v29;
  sub_1B98F5208(&v86);
  v31 = v17;
  v32 = v17;
  if (v17)
  {
    v20[0] = v32;
    sub_1B9853548(&v81);

    return v20[1];
  }

  else
  {
    sub_1B9853548(&v81);

    v24 = v86;
    v80 = v86;
    v23 = type metadata accessor for BlockedHandle(0);
    sub_1B9853574();
    v18 = sub_1B98F5538();
    v27 = v78;
    v78[0] = v18;
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F68, &qword_1B98F89F8);
    v25 = sub_1B98535F4();
    sub_1B985367C();
    sub_1B98F57F8();
    sub_1B98536F4(v27);
    v76 = v78[1];
    v77 = v79 & 1;
    if (v79)
    {
      v22 = 4;
    }

    else
    {
      v22 = v76;
    }

    v21 = v22;

    return v21;
  }
}

uint64_t sub_1B984C21C(uint64_t a1, char *a2)
{
  *(v3 + 120) = v2;
  *(v3 + 112) = a1;
  *(v3 + 64) = v3;
  *(v3 + 72) = 0;
  *(v3 + 176) = 0;
  *(v3 + 80) = 0;
  *(v3 + 96) = 0;
  v4 = sub_1B98F5138();
  *(v3 + 128) = v4;
  *(v3 + 136) = *(v4 - 8);
  *(v3 + 144) = swift_task_alloc();
  *(v3 + 72) = a1;
  v5 = *a2;
  *(v3 + 25) = *a2;
  *(v3 + 176) = v5;
  *(v3 + 80) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B984C35C, 0);
}

uint64_t sub_1B984C35C(uint64_t a1)
{
  v35 = v1;
  v2 = v1[18];
  v20 = v1[17];
  v21 = v1[16];
  v1[8] = v1;
  v3 = sub_1B98F1B1C();
  (*(v20 + 16))(v2, v3, v21);
  v27 = sub_1B98F5118();
  v28 = sub_1B98F5BD8();
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B984CE1C;
  *(v22 + 24) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B9853730;
  *(v25 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v26 = v4;

  *v26 = sub_1B9853720;
  v26[1] = v23;

  v26[2] = sub_1B9853728;
  v26[3] = v24;

  v26[4] = sub_1B985373C;
  v26[5] = v25;
  sub_1B9851B38();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_1B98F5C28();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v17 = sub_1B985263C(0, v15, v15);
    v18 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v30 = buf;
    v31 = v17;
    v32 = v18;
    sub_1B9852690(2, &v30);
    sub_1B9852690(1, &v30);
    v33 = sub_1B9853720;
    v34 = v23;
    sub_1B98526A4(&v33, &v30, &v31, &v32);
    v33 = sub_1B9853728;
    v34 = v24;
    sub_1B98526A4(&v33, &v30, &v31, &v32);
    v33 = sub_1B985373C;
    v34 = v25;
    sub_1B98526A4(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_1B982F000, v27, v28, "%s", buf, 0xCu);
    sub_1B985281C(v17, 0, v15);
    sub_1B985281C(v18, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v14 = *(v19 + 25);
  v10 = *(v19 + 144);
  v11 = *(v19 + 128);
  v12 = *(v19 + 120);
  v13 = *(v19 + 112);
  v9 = *(v19 + 136);
  MEMORY[0x1E69E5920](v27);
  (*(v9 + 8))(v10, v11);
  *(v19 + 152) = *(v12 + 16);

  sub_1B98F54D8();
  v29[0] = v14;
  sub_1B985EEB4(v13, v29, v19 + 16);
  v5 = *(v19 + 24);
  *(v19 + 32) = *(v19 + 16);
  *(v19 + 40) = v5;
  v6 = swift_task_alloc();
  *(v19 + 160) = v6;
  v7 = sub_1B9853748();
  *v6 = *(v19 + 64);
  v6[1] = sub_1B984C9C0;

  return MEMORY[0x1EEDF2DF0](v19 + 88, v19 + 32, &unk_1F3793CC8, v7);
}

uint64_t sub_1B984C9C0()
{
  v4 = *v1;
  v4[8] = *v1;
  v4[21] = v0;

  if (v0)
  {
    v2 = sub_1B984CD58;
  }

  else
  {
    sub_1B98537C0(v4 + 4);

    v2 = sub_1B984CB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B984CB58()
{
  *(v0 + 64) = v0;
  *(v0 + 96) = *(v0 + 88);
  type metadata accessor for BlockedHandle(0);
  sub_1B9853574();
  *(v0 + 104) = sub_1B98F5538();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F68, &qword_1B98F89F8);
  sub_1B98535F4();
  sub_1B985367C();
  sub_1B98F57F8();
  sub_1B98536F4((v0 + 104));
  if (*(v0 + 56))
  {
    v3 = 4;
  }

  else
  {
    v3 = *(v0 + 48);
  }

  v1 = *(*(v4 + 64) + 8);

  return v1(v3);
}

uint64_t sub_1B984CD58()
{
  *(v0 + 64) = v0;
  sub_1B98537C0((v0 + 32));

  v1 = *(*(v3 + 64) + 8);

  return v1();
}

uint64_t sub_1B984CE4C(uint64_t a1, char *a2)
{
  *(v3 + 96) = v2;
  *(v3 + 88) = a1;
  *(v3 + 48) = v3;
  *(v3 + 56) = 0;
  *(v3 + 152) = 0;
  *(v3 + 64) = 0;
  *(v3 + 80) = 0;
  v4 = sub_1B98F5138();
  *(v3 + 104) = v4;
  *(v3 + 112) = *(v4 - 8);
  *(v3 + 120) = swift_task_alloc();
  *(v3 + 56) = a1;
  v5 = *a2;
  *(v3 + 25) = *a2;
  *(v3 + 152) = v5;
  *(v3 + 64) = v2;

  return MEMORY[0x1EEE6DFA0](sub_1B984CF8C, 0);
}

uint64_t sub_1B984CF8C(uint64_t a1)
{
  v35 = v1;
  v2 = v1[15];
  v20 = v1[14];
  v21 = v1[13];
  v1[6] = v1;
  v3 = sub_1B98F1B1C();
  (*(v20 + 16))(v2, v3, v21);
  v27 = sub_1B98F5118();
  v28 = sub_1B98F5BD8();
  v23 = swift_allocObject();
  *(v23 + 16) = 32;
  v24 = swift_allocObject();
  *(v24 + 16) = 8;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_1B984D900;
  *(v22 + 24) = 0;
  v25 = swift_allocObject();
  *(v25 + 16) = sub_1B98537FC;
  *(v25 + 24) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v26 = v4;

  *v26 = sub_1B98537EC;
  v26[1] = v23;

  v26[2] = sub_1B98537F4;
  v26[3] = v24;

  v26[4] = sub_1B9853808;
  v26[5] = v25;
  sub_1B9851B38();

  if (os_log_type_enabled(v27, v28))
  {
    buf = sub_1B98F5C28();
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v17 = sub_1B985263C(0, v15, v15);
    v18 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v30 = buf;
    v31 = v17;
    v32 = v18;
    sub_1B9852690(2, &v30);
    sub_1B9852690(1, &v30);
    v33 = sub_1B98537EC;
    v34 = v23;
    sub_1B98526A4(&v33, &v30, &v31, &v32);
    v33 = sub_1B98537F4;
    v34 = v24;
    sub_1B98526A4(&v33, &v30, &v31, &v32);
    v33 = sub_1B9853808;
    v34 = v25;
    sub_1B98526A4(&v33, &v30, &v31, &v32);
    _os_log_impl(&dword_1B982F000, v27, v28, "%s", buf, 0xCu);
    sub_1B985281C(v17, 0, v15);
    sub_1B985281C(v18, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v14 = *(v19 + 25);
  v10 = *(v19 + 120);
  v11 = *(v19 + 104);
  v12 = *(v19 + 96);
  v13 = *(v19 + 88);
  v9 = *(v19 + 112);
  MEMORY[0x1E69E5920](v27);
  (*(v9 + 8))(v10, v11);
  *(v19 + 128) = *(v12 + 16);

  sub_1B98F54D8();
  v29 = v14;
  sub_1B985EEB4(v13, &v29, v19 + 16);
  v5 = *(v19 + 24);
  *(v19 + 32) = *(v19 + 16);
  *(v19 + 40) = v5;
  v6 = swift_task_alloc();
  *(v19 + 136) = v6;
  v7 = sub_1B9853748();
  *v6 = *(v19 + 48);
  v6[1] = sub_1B984D5F0;

  return MEMORY[0x1EEDF2DF0](v19 + 72, v19 + 32, &unk_1F3793CC8, v7);
}

uint64_t sub_1B984D5F0()
{
  v4 = *v1;
  v4[6] = *v1;
  v4[18] = v0;

  if (v0)
  {
    v2 = sub_1B984D83C;
  }

  else
  {
    sub_1B98537C0(v4 + 4);

    v2 = sub_1B984D788;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0);
}

uint64_t sub_1B984D788()
{
  v0[6] = v0;
  v3 = v0[9];
  v0[10] = v3;

  v1 = *(v0[6] + 8);

  return v1(v3);
}

uint64_t sub_1B984D83C()
{
  *(v0 + 48) = v0;
  sub_1B98537C0((v0 + 32));

  v1 = *(*(v3 + 48) + 8);

  return v1();
}

uint64_t sub_1B984D930(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 80) = v4;
  *(v5 + 72) = a4;
  *(v5 + 64) = a3;
  *(v5 + 161) = a2 & 1;
  *(v5 + 56) = a1;
  *(v5 + 32) = v5;
  *(v5 + 40) = 0;
  *(v5 + 160) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *(v5 + 48) = 0;
  type metadata accessor for BlockedHandle(0);
  *(v5 + 88) = swift_task_alloc();
  *(v5 + 96) = type metadata accessor for UpdateServerTrust(0);
  *(v5 + 104) = swift_task_alloc();
  v6 = sub_1B98F5138();
  *(v5 + 112) = v6;
  *(v5 + 120) = *(v6 - 8);
  *(v5 + 128) = swift_task_alloc();
  *(v5 + 40) = a1;
  *(v5 + 160) = a2 & 1;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;
  *(v5 + 48) = v4;

  return MEMORY[0x1EEE6DFA0](sub_1B984DB28, 0);
}

uint64_t sub_1B984DB28(uint64_t a1)
{
  v39 = v1;
  v2 = v1[16];
  v25 = v1[15];
  v26 = v1[14];
  v1[4] = v1;
  v3 = sub_1B98F1B1C();
  (*(v25 + 16))(v2, v3, v26);
  v32 = sub_1B98F5118();
  v33 = sub_1B98F5BD8();
  v28 = swift_allocObject();
  *(v28 + 16) = 32;
  v29 = swift_allocObject();
  *(v29 + 16) = 8;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1B984E4A4;
  *(v27 + 24) = 0;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1B9853824;
  *(v30 + 24) = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v31 = v4;

  *v31 = sub_1B9853814;
  v31[1] = v28;

  v31[2] = sub_1B985381C;
  v31[3] = v29;

  v31[4] = sub_1B9853830;
  v31[5] = v30;
  sub_1B9851B38();

  if (os_log_type_enabled(v32, v33))
  {
    buf = sub_1B98F5C28();
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v22 = sub_1B985263C(0, v20, v20);
    v23 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v34 = buf;
    v35 = v22;
    v36 = v23;
    sub_1B9852690(2, &v34);
    sub_1B9852690(1, &v34);
    v37 = sub_1B9853814;
    v38 = v28;
    sub_1B98526A4(&v37, &v34, &v35, &v36);
    v37 = sub_1B985381C;
    v38 = v29;
    sub_1B98526A4(&v37, &v34, &v35, &v36);
    v37 = sub_1B9853830;
    v38 = v30;
    sub_1B98526A4(&v37, &v34, &v35, &v36);
    _os_log_impl(&dword_1B982F000, v32, v33, "%s", buf, 0xCu);
    sub_1B985281C(v22, 0, v20);
    sub_1B985281C(v23, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v11 = *(v24 + 128);
  v12 = *(v24 + 112);
  v16 = *(v24 + 104);
  v15 = *(v24 + 88);
  v13 = *(v24 + 80);
  v19 = *(v24 + 72);
  v18 = *(v24 + 64);
  v17 = *(v24 + 161);
  v14 = *(v24 + 56);
  v10 = *(v24 + 120);
  MEMORY[0x1E69E5920](v32);
  (*(v10 + 8))(v11, v12);
  *(v24 + 136) = *(v13 + 16);

  sub_1B9833334(v14, v15);
  sub_1B98F54D8();
  sub_1B985EEC8(v15, v17 & 1, v18, v19, v16);
  v5 = swift_task_alloc();
  *(v24 + 144) = v5;
  v6 = sub_1B985383C();
  *v5 = *(v24 + 32);
  v5[1] = sub_1B984E1C4;
  v7 = *(v24 + 104);
  v8 = *(v24 + 96);

  return MEMORY[0x1EEDF2E08](v7, v8, v6);
}

uint64_t sub_1B984E1C4()
{
  v4 = *v1;
  v4[4] = *v1;
  v4[19] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B984E3C0, 0);
  }

  else
  {
    sub_1B98538BC(v4[13]);

    v2 = *(v4[4] + 8);

    return v2();
  }
}

uint64_t sub_1B984E3C0()
{
  v1 = *(v0 + 104);
  *(v0 + 32) = v0;
  sub_1B98538BC(v1);

  v2 = *(*(v0 + 32) + 8);

  return v2();
}

uint64_t sub_1B984E4D4(uint64_t a1)
{
  v2[7] = v1;
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_1B98F5138();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B984E5EC, 0);
}

uint64_t sub_1B984E5EC(uint64_t a1)
{
  v32 = v1;
  v2 = v1[10];
  v18 = v1[9];
  v19 = v1[8];
  v1[2] = v1;
  v3 = sub_1B98F1B1C();
  (*(v18 + 16))(v2, v3, v19);
  v25 = sub_1B98F5118();
  v26 = sub_1B98F5BD8();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B984EE84;
  *(v20 + 24) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B98539B0;
  *(v23 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v24 = v4;

  *v24 = sub_1B98539A0;
  v24[1] = v21;

  v24[2] = sub_1B98539A8;
  v24[3] = v22;

  v24[4] = sub_1B98539BC;
  v24[5] = v23;
  sub_1B9851B38();

  if (os_log_type_enabled(v25, v26))
  {
    buf = sub_1B98F5C28();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v15 = sub_1B985263C(0, v13, v13);
    v16 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v27 = buf;
    v28 = v15;
    v29 = v16;
    sub_1B9852690(2, &v27);
    sub_1B9852690(1, &v27);
    v30 = sub_1B98539A0;
    v31 = v21;
    sub_1B98526A4(&v30, &v27, &v28, &v29);
    v30 = sub_1B98539A8;
    v31 = v22;
    sub_1B98526A4(&v30, &v27, &v28, &v29);
    v30 = sub_1B98539BC;
    v31 = v23;
    sub_1B98526A4(&v30, &v27, &v28, &v29);
    _os_log_impl(&dword_1B982F000, v25, v26, "%s", buf, 0xCu);
    sub_1B985281C(v15, 0, v13);
    sub_1B985281C(v16, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v10 = v17[10];
  v11 = v17[8];
  v12 = v17[7];
  v9 = v17[9];
  MEMORY[0x1E69E5920](v25);
  (*(v9 + 8))(v10, v11);
  v17[11] = *(v12 + 16);

  sub_1B98F54D8();
  nullsub_8();
  v17[5] = v5;
  v6 = swift_task_alloc();
  v17[12] = v6;
  v7 = sub_1B98539C8();
  *v6 = v17[2];
  v6[1] = sub_1B984EBF8;

  return MEMORY[0x1EEDF2E08](v17 + 5, &unk_1F3793FA0, v7);
}

uint64_t sub_1B984EBF8()
{
  v4 = *v1;
  v4[2] = *v1;
  v4[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B984EDC8, 0);
  }

  else
  {
    sub_1B9853A40(v4 + 5);

    v2 = *(v4[2] + 8);

    return v2();
  }
}

uint64_t sub_1B984EDC8()
{
  *(v0 + 16) = v0;
  sub_1B9853A40((v0 + 40));

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B984EEB4(uint64_t a1)
{
  v2[7] = v1;
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_1B98F5138();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B984EFCC, 0);
}

uint64_t sub_1B984EFCC(uint64_t a1)
{
  v32 = v1;
  v2 = v1[10];
  v18 = v1[9];
  v19 = v1[8];
  v1[2] = v1;
  v3 = sub_1B98F1B1C();
  (*(v18 + 16))(v2, v3, v19);
  v25 = sub_1B98F5118();
  v26 = sub_1B98F5BD8();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B984F864;
  *(v20 + 24) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B9853A7C;
  *(v23 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v24 = v4;

  *v24 = sub_1B9853A6C;
  v24[1] = v21;

  v24[2] = sub_1B9853A74;
  v24[3] = v22;

  v24[4] = sub_1B9853A88;
  v24[5] = v23;
  sub_1B9851B38();

  if (os_log_type_enabled(v25, v26))
  {
    buf = sub_1B98F5C28();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v15 = sub_1B985263C(0, v13, v13);
    v16 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v27 = buf;
    v28 = v15;
    v29 = v16;
    sub_1B9852690(2, &v27);
    sub_1B9852690(1, &v27);
    v30 = sub_1B9853A6C;
    v31 = v21;
    sub_1B98526A4(&v30, &v27, &v28, &v29);
    v30 = sub_1B9853A74;
    v31 = v22;
    sub_1B98526A4(&v30, &v27, &v28, &v29);
    v30 = sub_1B9853A88;
    v31 = v23;
    sub_1B98526A4(&v30, &v27, &v28, &v29);
    _os_log_impl(&dword_1B982F000, v25, v26, "%s", buf, 0xCu);
    sub_1B985281C(v15, 0, v13);
    sub_1B985281C(v16, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v10 = v17[10];
  v11 = v17[8];
  v12 = v17[7];
  v9 = v17[9];
  MEMORY[0x1E69E5920](v25);
  (*(v9 + 8))(v10, v11);
  v17[11] = *(v12 + 16);

  sub_1B98F54D8();
  nullsub_9();
  v17[5] = v5;
  v6 = swift_task_alloc();
  v17[12] = v6;
  v7 = sub_1B9853A94();
  *v6 = v17[2];
  v6[1] = sub_1B984F5D8;

  return MEMORY[0x1EEDF2E08](v17 + 5, &unk_1F3794058, v7);
}

uint64_t sub_1B984F5D8()
{
  v4 = *v1;
  v4[2] = *v1;
  v4[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B984F7A8, 0);
  }

  else
  {
    sub_1B9853B0C(v4 + 5);

    v2 = *(v4[2] + 8);

    return v2();
  }
}

uint64_t sub_1B984F7A8()
{
  *(v0 + 16) = v0;
  sub_1B9853B0C((v0 + 40));

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B984F894(uint64_t a1)
{
  v2[7] = v1;
  v2[6] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_1B98F5138();
  v2[8] = v3;
  v2[9] = *(v3 - 8);
  v2[10] = swift_task_alloc();
  v2[3] = a1;
  v2[4] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B984F9AC, 0);
}

uint64_t sub_1B984F9AC(uint64_t a1)
{
  v32 = v1;
  v2 = v1[10];
  v18 = v1[9];
  v19 = v1[8];
  v1[2] = v1;
  v3 = sub_1B98F1B1C();
  (*(v18 + 16))(v2, v3, v19);
  v25 = sub_1B98F5118();
  v26 = sub_1B98F5BD8();
  v21 = swift_allocObject();
  *(v21 + 16) = 32;
  v22 = swift_allocObject();
  *(v22 + 16) = 8;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_1B9850244;
  *(v20 + 24) = 0;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1B9853B48;
  *(v23 + 24) = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  sub_1B98F5F98();
  v24 = v4;

  *v24 = sub_1B9853B38;
  v24[1] = v21;

  v24[2] = sub_1B9853B40;
  v24[3] = v22;

  v24[4] = sub_1B9853B54;
  v24[5] = v23;
  sub_1B9851B38();

  if (os_log_type_enabled(v25, v26))
  {
    buf = sub_1B98F5C28();
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v15 = sub_1B985263C(0, v13, v13);
    v16 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v27 = buf;
    v28 = v15;
    v29 = v16;
    sub_1B9852690(2, &v27);
    sub_1B9852690(1, &v27);
    v30 = sub_1B9853B38;
    v31 = v21;
    sub_1B98526A4(&v30, &v27, &v28, &v29);
    v30 = sub_1B9853B40;
    v31 = v22;
    sub_1B98526A4(&v30, &v27, &v28, &v29);
    v30 = sub_1B9853B54;
    v31 = v23;
    sub_1B98526A4(&v30, &v27, &v28, &v29);
    _os_log_impl(&dword_1B982F000, v25, v26, "%s", buf, 0xCu);
    sub_1B985281C(v15, 0, v13);
    sub_1B985281C(v16, 1, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  else
  {
  }

  v10 = v17[10];
  v11 = v17[8];
  v12 = v17[7];
  v9 = v17[9];
  MEMORY[0x1E69E5920](v25);
  (*(v9 + 8))(v10, v11);
  v17[11] = *(v12 + 16);

  sub_1B98F54D8();
  nullsub_10();
  v17[5] = v5;
  v6 = swift_task_alloc();
  v17[12] = v6;
  v7 = sub_1B9853B60();
  *v6 = v17[2];
  v6[1] = sub_1B984FFB8;

  return MEMORY[0x1EEDF2E08](v17 + 5, &unk_1F3794110, v7);
}

uint64_t sub_1B984FFB8()
{
  v4 = *v1;
  v4[2] = *v1;
  v4[13] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B9850188, 0);
  }

  else
  {
    sub_1B9853BD8(v4 + 5);

    v2 = *(v4[2] + 8);

    return v2();
  }
}

uint64_t sub_1B9850188()
{
  *(v0 + 16) = v0;
  sub_1B9853BD8((v0 + 40));

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B9850274()
{
  v39 = sub_1B98508D4;
  v42 = sub_1B9853C14;
  v44 = sub_1B9853C04;
  v46 = sub_1B9853C0C;
  v49 = sub_1B9853C20;
  v62 = 0;
  v60 = 0;
  v37 = sub_1B98F5138();
  v35 = *(v37 - 8);
  v36 = v37 - 8;
  v33 = (*(v35 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v37);
  v0 = v16 - v33;
  v34 = v16 - v33;
  v62 = v1;
  v2 = sub_1B98F1B1C();
  (*(v35 + 16))(v0, v2, v37);
  v53 = sub_1B98F5118();
  v54 = sub_1B98F5BD8();
  v38 = 17;
  v41 = 7;
  v45 = swift_allocObject();
  *(v45 + 16) = 32;
  v47 = swift_allocObject();
  *(v47 + 16) = 8;
  v40 = 32;
  v3 = swift_allocObject();
  v43 = v3;
  *(v3 + 16) = v39;
  *(v3 + 24) = 0;
  v4 = swift_allocObject();
  v5 = v43;
  v50 = v4;
  *(v4 + 16) = v42;
  *(v4 + 24) = v5;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v48 = sub_1B98F5F98();
  v51 = v6;

  v7 = v45;
  v8 = v51;
  *v51 = v44;
  v8[1] = v7;

  v9 = v47;
  v10 = v51;
  v51[2] = v46;
  v10[3] = v9;

  v11 = v50;
  v12 = v51;
  v51[4] = v49;
  v12[5] = v11;
  sub_1B9851B38();

  if (os_log_type_enabled(v53, v54))
  {
    v24 = sub_1B98F5C28();
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v25 = sub_1B985263C(0, v23, v23);
    v26 = sub_1B985263C(1, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v27 = &v59;
    v59 = v24;
    v28 = &v58;
    v58 = v25;
    v29 = &v57;
    v57 = v26;
    sub_1B9852690(2, &v59);
    sub_1B9852690(1, v27);
    v13 = v31;
    v55 = v44;
    v56 = v45;
    sub_1B98526A4(&v55, v27, v28, v29);
    v30 = v13;
    if (v13)
    {

      __break(1u);
    }

    else
    {
      v55 = v46;
      v56 = v47;
      sub_1B98526A4(&v55, &v59, &v58, &v57);
      v21 = 0;
      v55 = v49;
      v56 = v50;
      sub_1B98526A4(&v55, &v59, &v58, &v57);
      v20 = 0;
      _os_log_impl(&dword_1B982F000, v53, v54, "%s", v24, 0xCu);
      sub_1B985281C(v25, 0, v23);
      sub_1B985281C(v26, 1, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v22 = v20;
    }
  }

  else
  {

    v22 = v31;
  }

  v17 = v22;
  MEMORY[0x1E69E5920](v53);
  (*(v35 + 8))(v34, v37);
  v16[1] = *(v32 + 16);

  nullsub_11();
  sub_1B9853C2C();
  v14 = v17;
  sub_1B98F5208(&v61);
  v18 = v14;
  v19 = v14;
  if (v14)
  {
    v16[0] = v19;

    return (&vars0 - 144) & 1;
  }

  else
  {

    v60 = v61 & 1;
    return v61 & 1;
  }
}

uint64_t sub_1B9850904()
{

  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4FF8, &qword_1B98F8B20);
  (*(*(v1 - 8) + 8))(v0 + 24);
  return v3;
}

uint64_t sub_1B9850980()
{
  v3 = sub_1B984A504();
  if (v0)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1B98509E4(uint64_t a1)
{
  v3 = sub_1B9832738(a1);
  if (v1)
  {
    return v1 & 1;
  }

  else
  {
    return v3 & 1;
  }
}

uint64_t sub_1B9850A4C(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1B9850B04;

  return sub_1B984ABB4(a1);
}

uint64_t sub_1B9850B04(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v8 = v3 + 16;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

uint64_t sub_1B9850C98(uint64_t a1, uint64_t a2)
{
  v5 = sub_1B984B964(a1, a2);
  if (v2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t sub_1B9850CFC(uint64_t a1, char *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B9850DBC;

  return sub_1B984C21C(a1, a2);
}

uint64_t sub_1B9850DBC(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v8 = v3 + 16;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

uint64_t sub_1B9850F50(uint64_t a1, char *a2)
{
  v5 = v2;
  *(v2 + 16) = v2;
  v3 = swift_task_alloc();
  *(v5 + 24) = v3;
  *v3 = *(v5 + 16);
  v3[1] = sub_1B9851010;

  return sub_1B984CE4C(a1, a2);
}

uint64_t sub_1B9851010(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v8 = v3 + 16;

  if (v1)
  {
    v5 = *(*v8 + 8);
  }

  else
  {
    v4 = a1;
    v5 = *(*v8 + 8);
  }

  return v5(v4);
}

uint64_t sub_1B98511A4(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B9851278;

  return sub_1B984D930(a1, a2 & 1, a3, a4);
}

uint64_t sub_1B9851278()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_1B9851404(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1B98514BC;

  return sub_1B984E4D4(a1);
}

uint64_t sub_1B98514BC()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_1B9851648(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1B9851700;

  return sub_1B984EEB4(a1);
}

uint64_t sub_1B9851700()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_1B985188C(uint64_t a1)
{
  v4 = v1;
  *(v1 + 16) = v1;
  v2 = swift_task_alloc();
  *(v4 + 24) = v2;
  *v2 = *(v4 + 16);
  v2[1] = sub_1B9851944;

  return sub_1B984F894(a1);
}

uint64_t sub_1B9851944()
{
  v2 = *v1;
  *(v2 + 16) = *v1;
  v5 = v2 + 16;

  if (v0)
  {
    v3 = *(*v5 + 8);
  }

  else
  {
    v3 = *(*v5 + 8);
  }

  return v3();
}

uint64_t sub_1B9851AD0()
{
  v2 = sub_1B9850274();
  if (v0)
  {
    return v0 & 1;
  }

  else
  {
    return v2 & 1;
  }
}

uint64_t sub_1B9851B84(uint64_t a1)
{
  sub_1B98558DC();
  sub_1B985595C();
  return sub_1B98F6158();
}

uint64_t sub_1B9851D88(uint64_t a1, uint64_t a2)
{
  sub_1B98558DC();
  sub_1B985595C();
  return sub_1B98F6148();
}

uint64_t sub_1B9851DCC(uint64_t a1, uint64_t a2)
{
  sub_1B98558DC();
  sub_1B985595C();
  return sub_1B98F6128();
}

uint64_t sub_1B9851E10(uint64_t a1, uint64_t a2)
{
  sub_1B98558DC();
  sub_1B985595C();
  return sub_1B98F6138();
}

uint64_t sub_1B9851F30(uint64_t a1)
{
  sub_1B98559D4();
  sub_1B9855A54();
  return sub_1B98F6158();
}

uint64_t sub_1B9852134(uint64_t a1, uint64_t a2)
{
  sub_1B98559D4();
  sub_1B9855A54();
  return sub_1B98F6148();
}

uint64_t sub_1B9852178(uint64_t a1, uint64_t a2)
{
  sub_1B98559D4();
  sub_1B9855A54();
  return sub_1B98F6128();
}

uint64_t sub_1B98521BC(uint64_t a1, uint64_t a2)
{
  sub_1B98559D4();
  sub_1B9855A54();
  return sub_1B98F6138();
}

void sub_1B9852454(uint64_t a1@<X8>)
{
  nullsub_1();
  *a1 = v1;
  *(a1 + 8) = 0;
}

void sub_1B98524C8(uint64_t a1@<X8>)
{
  nullsub_2();
  *a1 = v1;
  *(a1 + 8) = 0;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContext2 = swift_getTypeByMangledNameInContext2();
    *a1 = TypeByMangledNameInContext2;
    return TypeByMangledNameInContext2;
  }

  return v5;
}

uint64_t sub_1B9852608(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1B985263C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    return sub_1B98F5C28();
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1B9852690(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

unint64_t sub_1B9852720()
{
  v2 = qword_1EBBD4F50;
  if (!qword_1EBBD4F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD4F50);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  if (!*a1)
  {
    TypeByMangledNameInContextInMetadataState2 = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = TypeByMangledNameInContextInMetadataState2;
    return TypeByMangledNameInContextInMetadataState2;
  }

  return v5;
}

uint64_t sub_1B985281C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result)
  {
    sub_1B98F5C18();
    return sub_1B98F5C08();
  }

  return result;
}

void *sub_1B98528B8(void *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v4 = (a4)(a1, a2);
  sub_1B98335B4(v4, v5, a3);
  v8 = *a1;

  sub_1B98F5C48();
  result = a1;
  *a1 = v8 + 8;
  return result;
}

char *sub_1B9852954(char *result, int64_t a2, char *a3)
{
  if (a2 < 0)
  {
LABEL_7:
    result = sub_1B98F5E48();
    __break(1u);
    goto LABEL_8;
  }

  if ((a2 * 1) >> 64 == a2 >> 63)
  {
    if (result >= &a3[a2] || a3 >= &result[a2])
    {
      memcpy(a3, result, a2);
      return a3;
    }

    sub_1B98F5E48();
    __break(1u);
    goto LABEL_7;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1B9852AD0(uint64_t a1, uint64_t a2)
{

  *(a1 + 16) = a2;
  *(a1 + 24) = 2 * a2;

  return a1;
}

void *sub_1B9852B68(char *a1, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (a1 >= &a3[a2] || a3 >= &a1[a2])
    {
      return memcpy(a3, a1, a2);
    }

    sub_1B98F5E48();
    __break(1u);
  }

  result = sub_1B98F5E48();
  __break(1u);
  return result;
}

unint64_t sub_1B9852CB8(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v11 = a1;
  if ((a3 & 0x1000000000000000) != 0 && (a2 & 0x800000000000000) == 0)
  {
    v10 = a1 >> 16;
    if ((a3 & 0x1000000000000000) != 0)
    {
      v9 = MEMORY[0x1BFADD6C0](15, v10, a2, a3);
LABEL_11:
      if (v11 >> 14)
      {
        v7 = ((v9 >> 16) + (v11 >> 14)) << 16;
      }

      else
      {
        v7 = v9 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
      }

      return v7 | 8;
    }

    if ((v10 & 0x8000000000000000) == 0)
    {
      v8 = (a3 & 0x2000000000000000) != 0 ? (a3 & 0xF00000000000000uLL) >> 56 : a2 & 0xFFFFFFFFFFFFLL;
      if (v8 >= v10)
      {
        v9 = (v10 << 16) | 4;
        goto LABEL_11;
      }
    }

    sub_1B98F5E08();
    __break(1u);
  }

  v5 = sub_1B98F5758();
  if (v11 >> 14)
  {
    v4 = ((v5 >> 16) + (v11 >> 14)) << 16;
  }

  else
  {
    v4 = v5 & 0xFFFFFFFFFFFFFFFCLL | v11 & 3;
  }

  return v4 | 4;
}

uint64_t sub_1B9852F2C()
{
  v1 = MEMORY[0x1E69E7CC0];

  return v1;
}

char *sub_1B9852F68(char *result, uint64_t a2, char a3, uint64_t a4)
{
  v7 = result;
  v9 = *(a4 + 24) >> 1;
  if (a3)
  {
    if (v9 < a2)
    {
      if ((v9 * 2) >> 64 != (2 * v9) >> 63)
      {
        __break(1u);
        return result;
      }

      if (2 * v9 < a2)
      {
        v6 = a2;
      }

      else
      {
        v6 = 2 * v9;
      }
    }

    else
    {
      v6 = *(a4 + 24) >> 1;
    }
  }

  else
  {
    v6 = a2;
  }

  v4 = *(a4 + 16);
  v5 = sub_1B9833CC8(v4, v6);
  if (v7)
  {
    sub_1B98530DC((a4 + 32), v4, v5 + 32);
    sub_1B98F54D8();

    *(a4 + 16) = 0;
  }

  else
  {
    sub_1B98F54D8();

    sub_1B9852B68((a4 + 32), v4, v5 + 32);
    swift_unknownObjectRelease();
  }

  return v5;
}

char *sub_1B98530DC(char *result, size_t a2, char *a3)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    result = sub_1B98F5E48();
    __break(1u);
  }

  else if (a3 < result || a3 >= &result[a2] || a3 != result)
  {
    return memmove(a3, result, a2);
  }

  return result;
}

_BYTE **sub_1B9853204(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

unint64_t sub_1B9853268()
{
  v2 = qword_1EDBDB5A8;
  if (!qword_1EDBDB5A8)
  {
    type metadata accessor for IsHandleBlocked(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB5A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98532E8(uint64_t a1)
{
  v1 = sub_1B98F5078();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for BlockedHandle(0);

  return a1;
}

unint64_t sub_1B9853404()
{
  v2 = qword_1EBBD4F60;
  if (!qword_1EBBD4F60)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD4F60);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98534D0()
{
  v2 = qword_1EDBDB198;
  if (!qword_1EDBDB198)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB198);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9853574()
{
  v2 = qword_1EDBDAFD0;
  if (!qword_1EDBDAFD0)
  {
    type metadata accessor for BlockedHandle(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAFD0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98535F4()
{
  v2 = qword_1EBBD4F70;
  if (!qword_1EBBD4F70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBBD4F68, &qword_1B98F89F8);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD4F70);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B985367C()
{
  v2 = qword_1EBBD4F78;
  if (!qword_1EBBD4F78)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD4F78);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9853748()
{
  v2 = qword_1EDBDB190;
  if (!qword_1EDBDB190)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB190);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B985383C()
{
  v2 = qword_1EDBDB1A8;
  if (!qword_1EDBDB1A8)
  {
    type metadata accessor for UpdateServerTrust(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB1A8);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B98538BC(uint64_t a1)
{
  v1 = sub_1B98F5078();
  (*(*(v1 - 8) + 8))(a1);
  type metadata accessor for BlockedHandle(0);

  type metadata accessor for UpdateServerTrust(0);

  return a1;
}

unint64_t sub_1B98539C8()
{
  v2 = qword_1EDBDB000;
  if (!qword_1EDBDB000)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB000);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9853A94()
{
  v2 = qword_1EBBD4F88;
  if (!qword_1EBBD4F88)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD4F88);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9853B60()
{
  v2 = qword_1EDBDAFC0;
  if (!qword_1EDBDAFC0)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDAFC0);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9853C2C()
{
  v2 = qword_1EDBDB238;
  if (!qword_1EDBDB238)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EDBDB238);
    return WitnessTable;
  }

  return v2;
}

uint64_t sub_1B9853D20(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v9 = (*(a3 + 32) + **(a3 + 32));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9853E5C;

  return v9(a1, a2, a3);
}

uint64_t sub_1B9853E5C(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_1B9853FB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 48) + **(a4 + 48));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B98540F8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1B98540F8(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_1B9854228(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = v4;
  *(v4 + 16) = v4;
  v11 = (*(a4 + 56) + **(a4 + 56));
  v5 = swift_task_alloc();
  *(v7 + 24) = v5;
  *v5 = *(v7 + 16);
  v5[1] = sub_1B985436C;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_1B985436C(uint64_t a1)
{
  v4 = *v1;
  *(v4 + 16) = *v1;

  v2 = *(*(v4 + 16) + 8);

  return v2(a1);
}

uint64_t sub_1B985449C(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = v6;
  *(v6 + 16) = v6;
  v15 = (*(a6 + 64) + **(a6 + 64));
  v7 = swift_task_alloc();
  *(v9 + 24) = v7;
  *v7 = *(v9 + 16);
  v7[1] = sub_1B98545F4;

  return v15(a1, a2 & 1, a3, a4, a5, a6);
}

uint64_t sub_1B98545F4()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B985471C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v9 = (*(a3 + 72) + **(a3 + 72));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9854858;

  return v9(a1, a2, a3);
}

uint64_t sub_1B9854858()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B9854980(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v9 = (*(a3 + 80) + **(a3 + 80));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9854ABC;

  return v9(a1, a2, a3);
}

uint64_t sub_1B9854ABC()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

uint64_t sub_1B9854BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  *(v3 + 16) = v3;
  v9 = (*(a3 + 88) + **(a3 + 88));
  v4 = swift_task_alloc();
  *(v6 + 24) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9854D20;

  return v9(a1, a2, a3);
}

uint64_t sub_1B9854D20()
{
  v3 = *v0;
  *(v3 + 16) = *v0;

  v1 = *(*(v3 + 16) + 8);

  return v1();
}

unint64_t type metadata accessor for container_query_flags_t(uint64_t a1)
{
  v5 = qword_1EBBD5000;
  if (!qword_1EBBD5000)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBD5000);
      return v2;
    }
  }

  return v5;
}

uint64_t sub_1B9854F18(uint64_t a1, int a2)
{
  if (a2)
  {
    if (*(a1 + 4))
    {
      v3 = *a1;
    }

    else
    {
      v3 = -1;
    }
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1B9855020(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
    if (a3)
    {
      *(result + 4) = 1;
    }
  }

  else if (a3)
  {
    *(result + 4) = 0;
  }

  return result;
}

unint64_t type metadata accessor for CFPhoneNumberStringOptions(uint64_t a1)
{
  v5 = qword_1EBBD5010;
  if (!qword_1EBBD5010)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBD5010);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CFPhoneNumber(uint64_t a1)
{
  v5 = qword_1EBBD5018;
  if (!qword_1EBBD5018)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBD5018);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CFString(uint64_t a1)
{
  v5 = qword_1EBBD5020;
  if (!qword_1EBBD5020)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBD5020);
      return v2;
    }
  }

  return v5;
}

unint64_t type metadata accessor for CFArray(uint64_t a1)
{
  v5 = qword_1EBBD5028;
  if (!qword_1EBBD5028)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    v5 = ForeignTypeMetadata;
    if (!v1)
    {
      v2 = ForeignTypeMetadata;
      atomic_store(ForeignTypeMetadata, &qword_1EBBD5028);
      return v2;
    }
  }

  return v5;
}

unint64_t sub_1B9855434()
{
  v2 = qword_1EBBD5030;
  if (!qword_1EBBD5030)
  {
    type metadata accessor for CFPhoneNumberStringOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5030);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98554CC()
{
  v2 = qword_1EBBD5038;
  if (!qword_1EBBD5038)
  {
    type metadata accessor for CFPhoneNumberStringOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5038);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9855564()
{
  v2 = qword_1EBBD5040;
  if (!qword_1EBBD5040)
  {
    type metadata accessor for container_query_flags_t(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5040);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98555FC()
{
  v2 = qword_1EBBD5048;
  if (!qword_1EBBD5048)
  {
    type metadata accessor for container_query_flags_t(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5048);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9855694()
{
  v2 = qword_1EBBD5050;
  if (!qword_1EBBD5050)
  {
    type metadata accessor for container_query_flags_t(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5050);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B985572C()
{
  v2 = qword_1EBBD5058;
  if (!qword_1EBBD5058)
  {
    type metadata accessor for container_query_flags_t(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5058);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98557C4()
{
  v2 = qword_1EBBD5060;
  if (!qword_1EBBD5060)
  {
    type metadata accessor for CFPhoneNumberStringOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5060);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B985585C()
{
  v2 = qword_1EBBD5068;
  if (!qword_1EBBD5068)
  {
    type metadata accessor for CFPhoneNumberStringOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5068);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98558DC()
{
  v2 = qword_1EBBD5070;
  if (!qword_1EBBD5070)
  {
    type metadata accessor for CFPhoneNumberStringOptions(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5070);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B985595C()
{
  v2 = qword_1EBBD5078;
  if (!qword_1EBBD5078)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5078);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B98559D4()
{
  v2 = qword_1EBBD5080;
  if (!qword_1EBBD5080)
  {
    type metadata accessor for container_query_flags_t(255);
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5080);
    return WitnessTable;
  }

  return v2;
}

unint64_t sub_1B9855A54()
{
  v2 = qword_1EBBD5088;
  if (!qword_1EBBD5088)
  {
    WitnessTable = swift_getWitnessTable();
    atomic_store(WitnessTable, &qword_1EBBD5088);
    return WitnessTable;
  }

  return v2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t a1)
{
  v2 = *(a1 + 24);
  if ((*(*(v2 - 8) + 80) & 0x20000) != 0)
  {
  }

  else
  {
    return (*(*(v2 - 8) + 8))(a1);
  }
}

uint64_t sub_1B9855C00()
{
  result = sub_1B98F55E8("com.apple.communicationtrustd", 29, 1);
  qword_1EBBD5220 = result;
  qword_1EBBD5228 = v1;
  return result;
}

uint64_t *sub_1B9855C44()
{
  if (qword_1EBBD4E30 != -1)
  {
    swift_once();
  }

  return &qword_1EBBD5220;
}

uint64_t static CommunicationTrustDaemon.embeddedSandboxProfileName.getter()
{
  v1 = *sub_1B9855C44();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B9855CE0()
{
  result = sub_1B98F55E8("com.apple.communicationtrustd", 29, 1);
  qword_1EBBD5230 = result;
  qword_1EBBD5238 = v1;
  return result;
}

uint64_t *sub_1B9855D24()
{
  if (qword_1EBBD4E38 != -1)
  {
    swift_once();
  }

  return &qword_1EBBD5230;
}

uint64_t static CommunicationTrustDaemon.macOSSandboxProfileName.getter()
{
  v1 = *sub_1B9855D24();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B9855DC0()
{
  result = sub_1B98F55E8("com.apple.communicationtrustd", 29, 1);
  qword_1EBBD5240 = result;
  qword_1EBBD5248 = v1;
  return result;
}

uint64_t *sub_1B9855E04()
{
  if (qword_1EBBD4E40 != -1)
  {
    swift_once();
  }

  return &qword_1EBBD5240;
}

uint64_t static CommunicationTrustDaemon.daemonEntitlementKey.getter()
{
  v1 = *sub_1B9855E04();
  sub_1B98F54D8();
  return v1;
}

void sub_1B9855EA0()
{
  sub_1B98F5F98();
  v4 = v0;
  *v0 = sub_1B98F55E8("read", 4, 1);
  v4[1] = v1;
  v4[2] = sub_1B98F55E8("write", 5, 1);
  v4[3] = v2;
  sub_1B9851B38();
  qword_1EBBD5250 = v3;
}

uint64_t *sub_1B9855F4C()
{
  if (qword_1EBBD4E48 != -1)
  {
    swift_once();
  }

  return &qword_1EBBD5250;
}

uint64_t sub_1B9855FAC()
{
  v1 = *sub_1B9855F4C();
  sub_1B98F54D8();
  return v1;
}

uint64_t sub_1B9855FDC()
{
  v2 = *v0;

  return v2;
}

uint64_t sub_1B9856010()
{
  v2 = *(v0 + 8);

  return v2;
}

uint64_t CommunicationTrustDaemon.init()@<X0>(_OWORD *a1@<X8>)
{
  v56 = a1;
  v66 = 0;
  v79 = 0uLL;
  v57 = 0;
  v78 = 0;
  v63 = sub_1B98F5138();
  v58 = v63;
  v59 = *(v63 - 8);
  v62 = v59;
  v60 = v59;
  MEMORY[0x1EEE9AC00](v63 - 8);
  v2 = &v18 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = v2;
  v3 = sub_1B98F1E00();
  (*(v62 + 16))(v2, v3, v63);
  v68 = sub_1B98F5118();
  v64 = v68;
  v67 = sub_1B98F5BD8();
  v65 = v67;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v69 = sub_1B98F5F98();
  if (os_log_type_enabled(v68, v67))
  {
    v4 = v57;
    v47 = sub_1B98F5C28();
    v43 = v47;
    v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v45 = 0;
    v48 = sub_1B985263C(0, v44, v44);
    v46 = v48;
    v49 = sub_1B985263C(v45, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v73 = v47;
    v72 = v48;
    v71 = v49;
    v50 = 0;
    v51 = &v73;
    sub_1B9852690(0, &v73);
    sub_1B9852690(v50, v51);
    v70 = v69;
    v52 = &v18;
    MEMORY[0x1EEE9AC00](&v18);
    v53 = &v18 - 6;
    v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();
    v55 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v64, v65, "Initialising communicationtrustd", v43, 2u);
      v41 = 0;
      sub_1B985281C(v46, 0, v44);
      sub_1B985281C(v49, v41, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v42 = v55;
    }
  }

  else
  {

    v42 = v57;
  }

  v5 = v42;

  (*(v60 + 8))(v61, v58);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5258, &qword_1B98F8FB8);
  v39 = sub_1B98F5168();
  v40 = v5;
  if (v5)
  {
    v21 = v40;
    v22 = 0;
    v11 = v40;
    v78 = v21;
    v12 = v21;
    v19 = 27;
    v23 = 1;
    v76 = sub_1B98F5F88();
    v77 = v13;
    v14 = sub_1B98F55E8("Failed to set up XPC host: ", v19, v23);
    v20 = v15;
    v25 = &v76;
    MEMORY[0x1BFADDF00](v14);

    swift_getErrorValue();
    sub_1B98F5F58();
    v16 = sub_1B98F55E8("", v22, v23);
    v24 = v17;
    MEMORY[0x1BFADDF00](v16);

    v27 = v76;
    v26 = v77;
    sub_1B98F54D8();
    sub_1B9856788(v25);
    sub_1B98F56A8();
    result = sub_1B98F5E18();
    __break(1u);
  }

  else
  {
    *&v79 = v39;
    v29 = 0;
    type metadata accessor for CommunicationTrustDataSourceManager();
    v31 = &v75;
    sub_1B98578D4(&v75);
    v32 = sub_1B9857954();
    v33 = v6;
    v34 = sub_1B98579A8();
    v35 = v7;
    v36 = sub_1B98579F4();
    v37 = v8;
    v38 = sub_1B9857A28();
    v30 = v9;
    v28 = &v74;
    sub_1B9857A74(&v74);
    result = sub_1B9897EC4(v31, v32, v33, v34, v35, v36, v37, v38, v30, v29, v28);
    *(&v79 + 1) = result;
    *v56 = v79;
  }

  return result;
}

uint64_t sub_1B98567B4(uint64_t a1)
{
  v150 = a1;
  v152 = 0;
  v190 = 0;
  v151 = 0;
  v174 = 0;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5260, &unk_1B98F8FC0);
  v153 = v168;
  v154 = *(v168 - 8);
  v155 = v154;
  v156 = *(v154 + 64);
  v157 = (v156 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](0);
  v158 = &v37 - v157;
  v159 = sub_1B98F5138();
  v160 = *(v159 - 8);
  v161 = v160;
  v163 = *(v160 + 64);
  MEMORY[0x1EEE9AC00](v159 - 8);
  v165 = (v163 + 15) & 0xFFFFFFFFFFFFFFF0;
  v162 = &v37 - v165;
  MEMORY[0x1EEE9AC00](&v37 - v165);
  v164 = &v37 - v165;
  MEMORY[0x1EEE9AC00](&v37 - v165);
  v166 = &v37 - v165;
  v190 = a1;
  v2 = sub_1B9855E04();
  v167 = *v2;
  v169 = v2[1];
  sub_1B98F54D8();
  sub_1B98F5188();

  if (v188)
  {
    v147 = v189;
    sub_1B98334F8(v187, v189);
    v148 = v182;
    sub_1B9833758(v147, v182);
    v149 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5268, &qword_1B98FAC20);
    if (swift_dynamicCast())
    {
      v146 = v181;
    }

    else
    {
      v146 = 0;
    }

    v145 = v146;
    if (v146)
    {
      v144 = v145;
      v136 = v145;
      v174 = v145;
      v135 = *sub_1B9855F4C();
      sub_1B98F54D8();
      v173[2] = v135;
      v137 = sub_1B985DBF4();
      v140 = MEMORY[0x1E69E6158];
      v141 = MEMORY[0x1E69E6168];
      v138 = sub_1B98F5AE8();
      sub_1B98F54D8();
      v173[1] = v136;
      v139 = sub_1B98F5AE8();
      v142 = MEMORY[0x1BFADD9D0](v139, v138, v140, v141);

      v143 = sub_1B98F5AA8();

      if ((v143 & 1) == 0)
      {
        v3 = v166;
        v4 = sub_1B98F1E00();
        (*(v161 + 16))(v3, v4, v159);
        v133 = sub_1B98F5118();
        v130 = v133;
        v132 = sub_1B98F5BD8();
        v131 = v132;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
        v134 = sub_1B98F5F98();
        if (os_log_type_enabled(v133, v132))
        {
          v5 = v151;
          v121 = sub_1B98F5C28();
          v117 = v121;
          v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
          v119 = 0;
          v122 = sub_1B985263C(0, v118, v118);
          v120 = v122;
          v123 = sub_1B985263C(v119, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
          v173[0] = v121;
          v172 = v122;
          v171 = v123;
          v124 = 0;
          v125 = v173;
          sub_1B9852690(0, v173);
          sub_1B9852690(v124, v125);
          v170 = v134;
          v126 = &v37;
          MEMORY[0x1EEE9AC00](&v37);
          v127 = &v37 - 6;
          *(&v37 - 4) = v6;
          *(&v37 - 3) = &v172;
          *(&v37 - 2) = &v171;
          v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
          sub_1B9852720();
          sub_1B98F57D8();
          v129 = v5;
          if (v5)
          {
            __break(1u);
          }

          else
          {
            _os_log_impl(&dword_1B982F000, v130, v131, "Accepting incoming XPC connection request", v117, 2u);
            v115 = 0;
            sub_1B985281C(v120, 0, v118);
            sub_1B985281C(v123, v115, MEMORY[0x1E69E7CA0] + 8);
            sub_1B98F5C08();

            v116 = v129;
          }
        }

        else
        {

          v116 = v151;
        }

        v112 = v116;

        (*(v161 + 8))(v166, v159);

        __swift_destroy_boxed_opaque_existential_0(v189);
        v113 = 1;
        v114 = v112;
        return v113 & 1;
      }
    }

    v7 = v164;
    v8 = sub_1B98F1E00();
    (*(v161 + 16))(v7, v8, v159);
    (*(v155 + 16))(v158, v150, v153);
    v82 = (*(v155 + 80) + 16) & ~*(v155 + 80);
    v88 = swift_allocObject();
    (*(v155 + 32))(v88 + v82, v158, v153);
    v83 = v180;
    sub_1B9833758(v189, v180);
    v97 = 7;
    v98 = swift_allocObject();
    sub_1B98334F8(v83, v98 + 16);
    v111 = sub_1B98F5118();
    v84 = v111;
    v110 = sub_1B98F5BD8();
    v85 = v110;
    v92 = 17;
    v101 = swift_allocObject();
    v86 = v101;
    v91 = 34;
    *(v101 + 16) = 34;
    v102 = swift_allocObject();
    v87 = v102;
    v94 = 8;
    *(v102 + 16) = 8;
    v96 = 32;
    v9 = swift_allocObject();
    v10 = v88;
    v89 = v9;
    *(v9 + 16) = sub_1B985DB2C;
    *(v9 + 24) = v10;
    v11 = swift_allocObject();
    v12 = v89;
    v103 = v11;
    v90 = v11;
    *(v11 + 16) = sub_1B985DBB4;
    *(v11 + 24) = v12;
    v104 = swift_allocObject();
    v93 = v104;
    *(v104 + 16) = v91;
    v105 = swift_allocObject();
    v95 = v105;
    *(v105 + 16) = v94;
    v13 = swift_allocObject();
    v14 = v98;
    v99 = v13;
    *(v13 + 16) = sub_1B985DB9C;
    *(v13 + 24) = v14;
    v15 = swift_allocObject();
    v16 = v99;
    v108 = v15;
    v100 = v15;
    *(v15 + 16) = sub_1B985DBDC;
    *(v15 + 24) = v16;
    v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v106 = sub_1B98F5F98();
    v107 = v17;

    v18 = v101;
    v19 = v107;
    *v107 = sub_1B985DBA4;
    v19[1] = v18;

    v20 = v102;
    v21 = v107;
    v107[2] = sub_1B985DBAC;
    v21[3] = v20;

    v22 = v103;
    v23 = v107;
    v107[4] = sub_1B985DBC0;
    v23[5] = v22;

    v24 = v104;
    v25 = v107;
    v107[6] = sub_1B985DBCC;
    v25[7] = v24;

    v26 = v105;
    v27 = v107;
    v107[8] = sub_1B985DBD4;
    v27[9] = v26;

    v28 = v107;
    v29 = v108;
    v107[10] = sub_1B985DBE8;
    v28[11] = v29;
    sub_1B9851B38();

    if (os_log_type_enabled(v111, v110))
    {
      v30 = v151;
      v75 = sub_1B98F5C28();
      v72 = v75;
      v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v76 = sub_1B985263C(0, v73, v73);
      v74 = v76;
      v78 = 2;
      v77 = sub_1B985263C(2, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v179 = v75;
      v178 = v76;
      v177 = v77;
      v79 = &v179;
      sub_1B9852690(v78, &v179);
      sub_1B9852690(v78, v79);
      v175 = sub_1B985DBA4;
      v176 = v86;
      sub_1B98526A4(&v175, v79, &v178, &v177);
      v80 = v30;
      v81 = v30;
      if (v30)
      {
        v70 = 0;

        __break(1u);
      }

      else
      {
        v175 = sub_1B985DBAC;
        v176 = v87;
        sub_1B98526A4(&v175, &v179, &v178, &v177);
        v68 = 0;
        v69 = 0;
        v175 = sub_1B985DBC0;
        v176 = v90;
        sub_1B98526A4(&v175, &v179, &v178, &v177);
        v66 = 0;
        v67 = 0;
        v175 = sub_1B985DBCC;
        v176 = v93;
        sub_1B98526A4(&v175, &v179, &v178, &v177);
        v64 = 0;
        v65 = 0;
        v175 = sub_1B985DBD4;
        v176 = v95;
        sub_1B98526A4(&v175, &v179, &v178, &v177);
        v62 = 0;
        v63 = 0;
        v175 = sub_1B985DBE8;
        v176 = v100;
        sub_1B98526A4(&v175, &v179, &v178, &v177);
        v60 = 0;
        v61 = 0;
        _os_log_impl(&dword_1B982F000, v84, v85, "Rejecting connection from process %{public}s with invalid entitlement: %{public}s", v72, 0x16u);
        sub_1B985281C(v74, 0, v73);
        sub_1B985281C(v77, 2, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v71 = v60;
      }
    }

    else
    {
      v31 = v151;

      v71 = v31;
    }

    v59 = v71;

    (*(v161 + 8))(v164, v159);
    __swift_destroy_boxed_opaque_existential_0(v189);
    v113 = 0;
    v114 = v59;
  }

  else
  {
    v32 = v162;
    sub_1B985DAC0(v187);
    v33 = sub_1B98F1E00();
    (*(v161 + 16))(v32, v33, v159);
    v57 = sub_1B98F5118();
    v54 = v57;
    v56 = sub_1B98F5BD8();
    v55 = v56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
    v58 = sub_1B98F5F98();
    if (os_log_type_enabled(v57, v56))
    {
      v34 = v151;
      v45 = sub_1B98F5C28();
      v41 = v45;
      v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
      v43 = 0;
      v46 = sub_1B985263C(0, v42, v42);
      v44 = v46;
      v47 = sub_1B985263C(v43, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
      v186 = v45;
      v185 = v46;
      v184 = v47;
      v48 = 0;
      v49 = &v186;
      sub_1B9852690(0, &v186);
      sub_1B9852690(v48, v49);
      v183 = v58;
      v50 = &v37;
      MEMORY[0x1EEE9AC00](&v37);
      v51 = &v37 - 6;
      *(&v37 - 4) = v35;
      *(&v37 - 3) = &v185;
      *(&v37 - 2) = &v184;
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
      sub_1B9852720();
      sub_1B98F57D8();
      v53 = v34;
      if (v34)
      {
        __break(1u);
      }

      else
      {
        _os_log_impl(&dword_1B982F000, v54, v55, "Rejecting connection from unentitled process", v41, 2u);
        v39 = 0;
        sub_1B985281C(v44, 0, v42);
        sub_1B985281C(v47, v39, MEMORY[0x1E69E7CA0] + 8);
        sub_1B98F5C08();

        v40 = v53;
      }
    }

    else
    {

      v40 = v151;
    }

    v38 = v40;

    (*(v161 + 8))(v162, v159);
    v113 = 0;
    v114 = v38;
  }

  return v113 & 1;
}

void sub_1B98578D4(uint64_t *a1@<X8>)
{
  sub_1B985DA50(v3);
  a1[3] = &unk_1F3796530;
  a1[4] = &off_1F3796548;
  v1 = swift_allocObject();
  *a1 = v1;
  sub_1B9880E2C(v3, v1 + 16);
}

uint64_t sub_1B9857954()
{
  type metadata accessor for ContactsDataSource();
  memset(v1, 0, sizeof(v1));
  return sub_1B988BE70(v1);
}

uint64_t sub_1B98579A8()
{
  type metadata accessor for CallHistoryDataSource();
  sub_1B985DA08(v1);
  return sub_1B987A460(v1);
}

uint64_t sub_1B9857A28()
{
  type metadata accessor for CallDirectoryDataSource();
  sub_1B985D9C0(v1);
  return sub_1B9872CA0(v1);
}

uint64_t sub_1B9857A74@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for ServerTrustScoreDataSource();
  result = sub_1B9896AFC();
  a1[3] = v2;
  a1[4] = &off_1F3797560;
  *a1 = result;
  return result;
}

Swift::Void __swiftcall CommunicationTrustDaemon.start()()
{
  v99 = 0;
  v118 = 0;
  v117 = 0;
  v87 = 0;
  v96 = sub_1B98F5138();
  v88 = v96;
  v89 = *(v96 - 8);
  v95 = v89;
  v90 = v89;
  v91 = *(v89 + 64);
  MEMORY[0x1EEE9AC00](v96 - 8);
  v0 = &v39 - ((v91 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = v0;
  v93 = *v1;
  v94 = v1[1];
  v117 = v93;
  v118 = v94;
  v2 = sub_1B98F1E00();
  (*(v95 + 16))(v0, v2, v96);
  v101 = sub_1B98F5118();
  v97 = v101;
  v100 = sub_1B98F5BD8();
  v98 = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v102 = sub_1B98F5F98();
  if (os_log_type_enabled(v101, v100))
  {
    v3 = v87;
    v78 = sub_1B98F5C28();
    v74 = v78;
    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v76 = 0;
    v79 = sub_1B985263C(0, v75, v75);
    v77 = v79;
    v80 = sub_1B985263C(v76, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v106 = v78;
    v105 = v79;
    v104 = v80;
    v81 = 0;
    v82 = &v106;
    sub_1B9852690(0, &v106);
    sub_1B9852690(v81, v82);
    v103 = v102;
    v83 = &v39;
    MEMORY[0x1EEE9AC00](&v39);
    v84 = &v39 - 6;
    *(&v39 - 4) = v4;
    *(&v39 - 3) = &v105;
    *(&v39 - 2) = &v104;
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();
    v86 = v3;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v97, v98, "Starting communicationtrustd", v74, 2u);
      v72 = 0;
      sub_1B985281C(v77, 0, v75);
      sub_1B985281C(v80, v72, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v73 = v86;
    }
  }

  else
  {

    v73 = v87;
  }

  v5 = v93;

  (*(v90 + 8))(v92, v88);

  v52 = 0;
  IsHandleBlocked = type metadata accessor for IsHandleBlocked(0);
  v116[0] = v5;
  v116[1] = v94;
  v39 = sub_1B9858694(v116);
  v40 = v6;
  v67 = 32;
  v66 = 7;
  v7 = swift_allocObject();
  v8 = v40;
  v42 = v7;
  *(v7 + 16) = v39;
  *(v7 + 24) = v8;
  sub_1B9853268();
  sub_1B98F51A8();
  v9 = v93;

  v115[0] = v9;
  v115[1] = v94;
  v43 = sub_1B98587FC(v115);
  v44 = v10;
  v11 = swift_allocObject();
  v12 = v44;
  v45 = v11;
  *(v11 + 16) = v43;
  *(v11 + 24) = v12;
  sub_1B9853404();
  sub_1B98F51A8();
  v13 = v93;

  v114[0] = v13;
  v114[1] = v94;
  v46 = sub_1B9858DD0(v114);
  v47 = v14;
  v15 = swift_allocObject();
  v16 = v47;
  v48 = v15;
  *(v15 + 16) = v46;
  *(v15 + 24) = v16;
  sub_1B9853748();
  sub_1B98F5198();
  v17 = v93;

  v113[0] = v17;
  v113[1] = v94;
  v49 = sub_1B9859C38(v113);
  v50 = v18;
  v19 = swift_allocObject();
  v20 = v50;
  v51 = v19;
  *(v19 + 16) = v49;
  *(v19 + 24) = v20;
  sub_1B98534D0();
  sub_1B98F51A8();
  v21 = v93;

  updated = type metadata accessor for UpdateServerTrust(v52);
  v112[0] = v21;
  v112[1] = v94;
  v53 = sub_1B985A330(v112);
  v55 = v22;
  sub_1B985383C();
  sub_1B98F51B8();
  v23 = v93;

  v111[0] = v23;
  v111[1] = v94;
  v56 = sub_1B985AD44(v111);
  v57 = v24;
  v25 = swift_allocObject();
  v26 = v57;
  v58 = v25;
  *(v25 + 16) = v56;
  *(v25 + 24) = v26;
  sub_1B9831E84();
  sub_1B98F51A8();
  v27 = v93;

  v110[0] = v27;
  v110[1] = v94;
  v59 = sub_1B985AEDC(v110);
  v60 = v28;
  v29 = swift_allocObject();
  v30 = v60;
  v61 = v29;
  *(v29 + 16) = v59;
  *(v29 + 24) = v30;
  sub_1B9835D90();
  sub_1B98F51A8();
  v31 = v93;

  v109[0] = v31;
  v109[1] = v94;
  v62 = sub_1B985B5C4(v109);
  v63 = v32;
  sub_1B98539C8();
  sub_1B98F51B8();
  v33 = v93;

  v108[0] = v33;
  v108[1] = v94;
  v64 = sub_1B985BE74(v108);
  v65 = v34;
  sub_1B9853B60();
  sub_1B98F51B8();
  v35 = v93;

  v107[0] = v35;
  v107[1] = v94;
  v68 = sub_1B985C724(v107);
  v69 = v36;
  v37 = swift_allocObject();
  v38 = v69;
  v70 = v37;
  *(v37 + 16) = v68;
  *(v37 + 24) = v38;
  sub_1B9853C2C();
  sub_1B98F51A8();

  sub_1B98F51C8();

  v71 = [objc_opt_self() currentRunLoop];
  [v71 run];
}

uint64_t (*sub_1B9858694(uint64_t *a1))(uint64_t a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = sub_1B983AA64;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B9858788@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t (*sub_1B98587FC(uint64_t *a1))(uint64_t a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = sub_1B985EDD4;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B98588EC(uint64_t a1)
{
  v25 = a1;
  v36 = 0;
  v45 = 0;
  v44 = 0;
  v24 = 0;
  v33 = sub_1B98F5138();
  v26 = v33;
  v27 = *(v33 - 8);
  v32 = v27;
  v28 = v27;
  v29 = *(v27 + 64);
  v1 = &v7 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = v1;
  v45 = MEMORY[0x1EEE9AC00](v25);
  v31 = *(v2 + 8);
  v44 = v2;
  v3 = sub_1B98F1E00();
  (*(v32 + 16))(v1, v3, v33);
  v38 = sub_1B98F5118();
  v34 = v38;
  v37 = sub_1B98F5BD8();
  v35 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v39 = sub_1B98F5F98();
  if (os_log_type_enabled(v38, v37))
  {
    v4 = v24;
    v15 = sub_1B98F5C28();
    v11 = v15;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v13 = 0;
    v16 = sub_1B985263C(0, v12, v12);
    v14 = v16;
    v17 = sub_1B985263C(v13, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v43[0] = v15;
    v42 = v16;
    v41 = v17;
    v18 = 0;
    v19 = v43;
    sub_1B9852690(0, v43);
    sub_1B9852690(v18, v19);
    v40 = v39;
    v20 = &v7;
    MEMORY[0x1EEE9AC00](&v7);
    v21 = (&v7 - 6);
    *(&v7 - 4) = v5;
    *(&v7 - 3) = &v42;
    *(&v7 - 2) = &v41;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();
    v23 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v34, v35, "Handling incoming AreHandlesBlocked message", v11, 2u);
      v9 = 0;
      sub_1B985281C(v14, 0, v12);
      sub_1B985281C(v17, v9, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v10 = v23;
    }
  }

  else
  {

    v10 = v24;
  }

  (*(v28 + 8))(v30, v26);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5280, &qword_1B98F8FE8);
  sub_1B98F5158();
  v7 = v43[1];
  sub_1B98F54D8();

  v8 = sub_1B9898018(v7);

  return v8;
}

uint64_t sub_1B9858D60@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1B9858DD0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = &unk_1B98F9138;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B9858E68(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[9] = a2;
  v3[8] = a1;
  v3[6] = v3;
  v3[7] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[7] = a1;
  v3[2] = a2;
  v3[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B9858EC8, 0);
}

uint64_t sub_1B9858EC8()
{
  v1 = v0[10];
  v2 = v0[9];
  v0[6] = v0;
  v0[4] = v2;
  v0[5] = v1;
  v3 = swift_task_alloc();
  v6[11] = v3;
  *v3 = v6[6];
  v3[1] = sub_1B9858F90;
  v4 = v6[8];

  return sub_1B985917C(v4);
}

uint64_t sub_1B9858F90(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 48) = *v2;
  *(v6 + 96) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B9859130, 0);
  }

  else
  {
    v3 = *(*(v6 + 48) + 8);

    return v3(a1);
  }
}

uint64_t sub_1B985917C(uint64_t a1)
{
  v2[13] = a1;
  v2[6] = v2;
  v2[7] = 0;
  v2[8] = 0;
  v3 = sub_1B98F5138();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[7] = a1;
  v2[17] = *(v1 + 8);
  v2[8] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B9859294, 0);
}

uint64_t sub_1B9859294(uint64_t a1)
{
  v2 = v1[16];
  v17 = v1[15];
  v18 = v1[14];
  v1[6] = v1;
  v3 = sub_1B98F1E00();
  (*(v17 + 16))(v2, v3, v18);
  v20 = sub_1B98F5118();
  v19 = sub_1B98F5BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v21 = sub_1B98F5F98();
  if (os_log_type_enabled(v20, v19))
  {
    buf = sub_1B98F5C28();
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v13 = sub_1B985263C(0, v11, v11);
    v14 = sub_1B985263C(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v16 + 72) = buf;
    *(v16 + 80) = v13;
    *(v16 + 88) = v14;
    sub_1B9852690(0, (v16 + 72));
    sub_1B9852690(0, (v16 + 72));
    *(v16 + 96) = v21;
    v15 = swift_task_alloc();
    v15[2] = v16 + 72;
    v15[3] = v16 + 80;
    v15[4] = v16 + 88;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();

    _os_log_impl(&dword_1B982F000, v20, v19, "Handling incoming GetTrustScores message", buf, 2u);
    sub_1B985281C(v13, 0, v11);
    sub_1B985281C(v14, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  v7 = *(v16 + 128);
  v8 = *(v16 + 112);
  v6 = *(v16 + 120);
  MEMORY[0x1E69E5920](v20);
  (*(v6 + 8))(v7, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5288, &qword_1B98F8FF8);
  sub_1B98F5158();
  v10 = *(v16 + 16);
  *(v16 + 144) = v10;
  sub_1B98F54D8();

  sub_1B98F5158();
  v9 = *(v16 + 40);

  *(v16 + 25) = v9;
  v4 = swift_task_alloc();
  *(v16 + 152) = v4;
  *v4 = *(v16 + 48);
  v4[1] = sub_1B98596D4;

  return sub_1B989A4E4(v10, (v16 + 25));
}

uint64_t sub_1B98596D4(uint64_t a1)
{
  v6 = *v2;
  *(v6 + 48) = *v2;
  *(v6 + 160) = v1;

  if (v1)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B98598B4, 0);
  }

  else
  {

    v3 = *(*(v6 + 48) + 8);

    return v3(a1);
  }
}

uint64_t sub_1B98598B4()
{
  *(v0 + 48) = v0;

  v1 = *(*(v0 + 48) + 8);

  return v1();
}

uint64_t sub_1B9859978(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = v3;
  *(v3 + 24) = a1;
  *(v3 + 16) = v3;
  v7 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v6 + 32) = v4;
  *v4 = *(v6 + 16);
  v4[1] = sub_1B9859A90;

  return v7(a2);
}

uint64_t sub_1B9859A90(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 16) = *v2;
  v7 = v3 + 16;
  v8 = v3 + 16;

  if (v1)
  {
    v4 = *(*v8 + 8);
  }

  else
  {
    **(v7 + 8) = a1;
    v4 = *(*v8 + 8);
  }

  return v4();
}

uint64_t (*sub_1B9859C38(uint64_t *a1))(uint64_t a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = sub_1B985EBAC;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B9859CD0(uint64_t a1)
{
  v4 = sub_1B9859D60(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B9859D60(uint64_t a1)
{
  v37 = a1;
  v48 = 0;
  v59 = 0;
  v58 = 0;
  v45 = sub_1B98F5138();
  v38 = v45;
  v39 = *(v45 - 8);
  v44 = v39;
  v40 = v39;
  v41 = *(v39 + 64);
  v1 = v9 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v1;
  v59 = MEMORY[0x1EEE9AC00](v37);
  v43 = *(v2 + 8);
  v58 = v2;
  v3 = sub_1B98F1E00();
  (*(v44 + 16))(v1, v3, v45);
  v50 = sub_1B98F5118();
  v46 = v50;
  v49 = sub_1B98F5BD8();
  v47 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v51 = sub_1B98F5F98();
  if (os_log_type_enabled(v50, v49))
  {
    v34 = v36;
    v26 = sub_1B98F5C28();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v24 = 0;
    v27 = sub_1B985263C(0, v23, v23);
    v25 = v27;
    v28 = sub_1B985263C(v24, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v55 = v26;
    v54 = v27;
    v53 = v28;
    v29 = 0;
    v30 = &v55;
    sub_1B9852690(0, &v55);
    sub_1B9852690(v29, v30);
    v52 = v51;
    v31 = v9;
    MEMORY[0x1EEE9AC00](v9);
    v32 = &v9[-6];
    v9[-4] = v4;
    v9[-3] = &v54;
    v9[-2] = &v53;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    v5 = v34;
    sub_1B98F57D8();
    v35 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v46, v47, "Handling incoming GetTrustScoresSync message", v22, 2u);
      v20 = 0;
      sub_1B985281C(v25, 0, v23);
      sub_1B985281C(v28, v20, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v21 = v35;
    }
  }

  else
  {

    v21 = v36;
  }

  v16 = v21;

  (*(v40 + 8))(v42, v38);

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5290, &qword_1B98F9000);
  sub_1B98F5158();
  v15 = v57;
  v12 = v57;
  sub_1B98F54D8();

  sub_1B98F5158();
  v14 = v56[9];

  v6 = v16;
  v56[0] = v14;
  v7 = sub_1B98980B0(v15, v56);
  v17 = v6;
  v18 = v7;
  v19 = v6;
  if (v6)
  {
    v9[1] = v19;
  }

  else
  {
    v10 = v18;
    v11 = 0;

    return v10;
  }
}

uint64_t sub_1B985A2C0@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1B985A330(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = &unk_1B98F9128;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B985A3C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[9] = a2;
  v3[8] = a1;
  v3[6] = v3;
  v3[7] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[7] = a1;
  v3[2] = a2;
  v3[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B985A428, 0);
}

uint64_t sub_1B985A428()
{
  v1 = v0[10];
  v2 = v0[9];
  v0[6] = v0;
  v0[4] = v2;
  v0[5] = v1;
  v3 = swift_task_alloc();
  v6[11] = v3;
  *v3 = v6[6];
  v3[1] = sub_1B985A4F0;
  v4 = v6[8];

  return sub_1B985A6D4(v4);
}

uint64_t sub_1B985A4F0()
{
  v4 = *v1;
  *(v4 + 48) = *v1;
  *(v4 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B985A688, 0);
  }

  else
  {
    v2 = *(*(v4 + 48) + 8);

    return v2();
  }
}

uint64_t sub_1B985A6D4(uint64_t a1)
{
  v2[9] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  type metadata accessor for BlockedHandle(0);
  v2[10] = swift_task_alloc();
  v2[11] = type metadata accessor for UpdateServerTrust(0);
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v2[14] = swift_task_alloc();
  v3 = sub_1B98F5138();
  v2[15] = v3;
  v2[16] = *(v3 - 8);
  v2[17] = swift_task_alloc();
  v2[3] = a1;
  v2[18] = *(v1 + 8);
  v2[4] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B985A888, 0);
}

uint64_t sub_1B985A888(uint64_t a1)
{
  v2 = v1[17];
  v24 = v1[16];
  v25 = v1[15];
  v1[2] = v1;
  v3 = sub_1B98F1E00();
  (*(v24 + 16))(v2, v3, v25);
  v27 = sub_1B98F5118();
  v26 = sub_1B98F5BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v28 = sub_1B98F5F98();
  if (os_log_type_enabled(v27, v26))
  {
    buf = sub_1B98F5C28();
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v20 = sub_1B985263C(0, v18, v18);
    v21 = sub_1B985263C(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v23 + 40) = buf;
    *(v23 + 48) = v20;
    *(v23 + 56) = v21;
    sub_1B9852690(0, (v23 + 40));
    sub_1B9852690(0, (v23 + 40));
    *(v23 + 64) = v28;
    v22 = swift_task_alloc();
    v22[2] = v23 + 40;
    v22[3] = v23 + 48;
    v22[4] = v23 + 56;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();

    _os_log_impl(&dword_1B982F000, v27, v26, "Handling incoming UpdateServerTrust message", buf, 2u);
    sub_1B985281C(v20, 0, v18);
    sub_1B985281C(v21, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  v13 = *(v23 + 136);
  v8 = *(v23 + 120);
  v14 = *(v23 + 112);
  v15 = *(v23 + 104);
  v16 = *(v23 + 96);
  v9 = *(v23 + 88);
  v17 = *(v23 + 80);
  v7 = *(v23 + 128);
  MEMORY[0x1E69E5920](v27);
  (*(v7 + 8))(v13, v8);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5298, &qword_1B98F9010);
  sub_1B98F5158();
  sub_1B9833334(v14, v17);
  sub_1B98538BC(v14);
  sub_1B98F5158();
  v10 = *(v15 + *(v9 + 20));
  sub_1B98538BC(v15);
  sub_1B98F5158();
  v4 = (v16 + *(v9 + 24));
  v11 = *v4;
  v12 = v4[1];
  sub_1B98F54D8();
  sub_1B98538BC(v16);
  sub_1B989FA58(v17, v10 & 1, v11, v12);

  sub_1B983A3AC(v17);

  v5 = *(*(v23 + 16) + 8);

  return v5();
}

uint64_t (*sub_1B985AD44(uint64_t *a1))(uint64_t a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = sub_1B985E98C;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B985ADDC(uint64_t a1)
{
  v4 = sub_1B9838560(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B985AE6C@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t (*sub_1B985AEDC(uint64_t *a1))(uint64_t a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = sub_1B985E960;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B985AF74(uint64_t a1)
{
  v4 = sub_1B985B004(a1);
  if (v1)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1B985B004(uint64_t a1)
{
  v37 = a1;
  v48 = 0;
  v59 = 0;
  v58 = 0;
  v57 = 0;
  v45 = sub_1B98F5138();
  v38 = v45;
  v39 = *(v45 - 8);
  v44 = v39;
  v40 = v39;
  v41 = *(v39 + 64);
  v1 = &v10 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = v1;
  v59 = MEMORY[0x1EEE9AC00](v37);
  v43 = *(v2 + 8);
  v58 = v2;
  v3 = sub_1B98F1E00();
  (*(v44 + 16))(v1, v3, v45);
  v50 = sub_1B98F5118();
  v46 = v50;
  v49 = sub_1B98F5BD8();
  v47 = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v51 = sub_1B98F5F98();
  if (os_log_type_enabled(v50, v49))
  {
    v34 = v36;
    v26 = sub_1B98F5C28();
    v22 = v26;
    v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v24 = 0;
    v27 = sub_1B985263C(0, v23, v23);
    v25 = v27;
    v28 = sub_1B985263C(v24, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v55 = v26;
    v54 = v27;
    v53 = v28;
    v29 = 0;
    v30 = &v55;
    sub_1B9852690(0, &v55);
    sub_1B9852690(v29, v30);
    v52 = v51;
    v31 = &v10;
    MEMORY[0x1EEE9AC00](&v10);
    v32 = &v10 - 6;
    *(&v10 - 4) = v4;
    *(&v10 - 3) = &v54;
    *(&v10 - 2) = &v53;
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    v5 = v34;
    sub_1B98F57D8();
    v35 = v5;
    if (v5)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v46, v47, "Handling incoming FetchBlockedContactsRequest message", v22, 2u);
      v20 = 0;
      sub_1B985281C(v25, 0, v23);
      sub_1B985281C(v28, v20, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v21 = v35;
    }
  }

  else
  {

    v21 = v36;
  }

  v17 = v21;

  (*(v40 + 8))(v42, v38);

  v14 = sub_1B989F84C();
  v13 = v14;

  v57 = v14;
  v56[1] = v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD52A0, &qword_1B98F9018);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD52A8, &qword_1B98F9020);
  v6 = sub_1B985E0C4();
  v7 = v17;
  v8 = sub_1B985D064(sub_1B985CEAC, 0, v15, MEMORY[0x1E6969080], v16, v6, MEMORY[0x1E69E7288], v56);
  v18 = v7;
  v19 = v8;
  if (v7)
  {
    v10 = v56[0];
  }

  else
  {
    v11 = v19;
    v12 = 0;

    return v11;
  }
}

uint64_t sub_1B985B554@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void *sub_1B985B5C4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = &unk_1B98F9118;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B985B65C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[9] = a2;
  v3[8] = a1;
  v3[6] = v3;
  v3[7] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[7] = a1;
  v3[2] = a2;
  v3[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B985B6BC, 0);
}

uint64_t sub_1B985B6BC()
{
  v1 = v0[10];
  v2 = v0[9];
  v0[6] = v0;
  v0[4] = v2;
  v0[5] = v1;
  v3 = swift_task_alloc();
  v6[11] = v3;
  *v3 = v6[6];
  v3[1] = sub_1B985B784;
  v4 = v6[8];

  return sub_1B985B968(v4);
}

uint64_t sub_1B985B784()
{
  v4 = *v1;
  *(v4 + 48) = *v1;
  *(v4 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B985B91C, 0);
  }

  else
  {
    v2 = *(*(v4 + 48) + 8);

    return v2();
  }
}

uint64_t sub_1B985B968(uint64_t a1)
{
  v2[10] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_1B98F5138();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[3] = a1;
  v2[14] = *(v1 + 8);
  v2[4] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B985BA80, 0);
}

uint64_t sub_1B985BA80(uint64_t a1)
{
  v2 = v1[13];
  v16 = v1[12];
  v17 = v1[11];
  v1[2] = v1;
  v3 = sub_1B98F1E00();
  (*(v16 + 16))(v2, v3, v17);
  v19 = sub_1B98F5118();
  v18 = sub_1B98F5BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v20 = sub_1B98F5F98();
  if (os_log_type_enabled(v19, v18))
  {
    buf = sub_1B98F5C28();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v12 = sub_1B985263C(0, v10, v10);
    v13 = sub_1B985263C(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v15 + 48) = buf;
    *(v15 + 56) = v12;
    *(v15 + 64) = v13;
    sub_1B9852690(0, (v15 + 48));
    sub_1B9852690(0, (v15 + 48));
    *(v15 + 72) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 48;
    v14[3] = v15 + 56;
    v14[4] = v15 + 64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();

    _os_log_impl(&dword_1B982F000, v19, v18, "Handling incoming SaveHandles message", buf, 2u);
    sub_1B985281C(v12, 0, v10);
    sub_1B985281C(v13, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  v9 = *(v15 + 104);
  v7 = *(v15 + 88);
  v6 = *(v15 + 96);
  MEMORY[0x1E69E5920](v19);
  (*(v6 + 8))(v9, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD52B8, &qword_1B98F9030);
  sub_1B98F5158();
  v8 = *(v15 + 40);
  sub_1B98F54D8();

  sub_1B989F940(v8);

  v4 = *(*(v15 + 16) + 8);

  return v4();
}

void *sub_1B985BE74(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = &unk_1B98F9108;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B985BF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[10] = a3;
  v3[9] = a2;
  v3[8] = a1;
  v3[6] = v3;
  v3[7] = 0;
  v3[2] = 0;
  v3[3] = 0;
  v3[7] = a1;
  v3[2] = a2;
  v3[3] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1B985BF6C, 0);
}

uint64_t sub_1B985BF6C()
{
  v1 = v0[10];
  v2 = v0[9];
  v0[6] = v0;
  v0[4] = v2;
  v0[5] = v1;
  v3 = swift_task_alloc();
  v6[11] = v3;
  *v3 = v6[6];
  v3[1] = sub_1B985C034;
  v4 = v6[8];

  return sub_1B985C218(v4);
}

uint64_t sub_1B985C034()
{
  v4 = *v1;
  *(v4 + 48) = *v1;
  *(v4 + 96) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1B985C1CC, 0);
  }

  else
  {
    v2 = *(*(v4 + 48) + 8);

    return v2();
  }
}

uint64_t sub_1B985C218(uint64_t a1)
{
  v2[10] = a1;
  v2[2] = v2;
  v2[3] = 0;
  v2[4] = 0;
  v3 = sub_1B98F5138();
  v2[11] = v3;
  v2[12] = *(v3 - 8);
  v2[13] = swift_task_alloc();
  v2[3] = a1;
  v2[14] = *(v1 + 8);
  v2[4] = v1;

  return MEMORY[0x1EEE6DFA0](sub_1B985C330, 0);
}

uint64_t sub_1B985C330(uint64_t a1)
{
  v2 = v1[13];
  v16 = v1[12];
  v17 = v1[11];
  v1[2] = v1;
  v3 = sub_1B98F1E00();
  (*(v16 + 16))(v2, v3, v17);
  v19 = sub_1B98F5118();
  v18 = sub_1B98F5BD8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v20 = sub_1B98F5F98();
  if (os_log_type_enabled(v19, v18))
  {
    buf = sub_1B98F5C28();
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v12 = sub_1B985263C(0, v10, v10);
    v13 = sub_1B985263C(0, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    *(v15 + 48) = buf;
    *(v15 + 56) = v12;
    *(v15 + 64) = v13;
    sub_1B9852690(0, (v15 + 48));
    sub_1B9852690(0, (v15 + 48));
    *(v15 + 72) = v20;
    v14 = swift_task_alloc();
    v14[2] = v15 + 48;
    v14[3] = v15 + 56;
    v14[4] = v15 + 64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();

    _os_log_impl(&dword_1B982F000, v19, v18, "Handling incoming RemoveHandles message", buf, 2u);
    sub_1B985281C(v12, 0, v10);
    sub_1B985281C(v13, 0, MEMORY[0x1E69E7CA0] + 8);
    sub_1B98F5C08();
  }

  v9 = *(v15 + 104);
  v7 = *(v15 + 88);
  v6 = *(v15 + 96);
  MEMORY[0x1E69E5920](v19);
  (*(v6 + 8))(v9, v7);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD52C0, &qword_1B98F9040);
  sub_1B98F5158();
  v8 = *(v15 + 40);
  sub_1B98F54D8();

  sub_1B989F9CC(v8);

  v4 = *(*(v15 + 16) + 8);

  return v4();
}

uint64_t (*sub_1B985C724(uint64_t *a1))(uint64_t a1)
{
  v3 = *a1;
  v4 = a1[1];

  v1 = swift_allocObject();
  result = sub_1B985E56C;
  *(v1 + 16) = v3;
  *(v1 + 24) = v4;
  return result;
}

uint64_t sub_1B985C818(uint64_t a1)
{
  v25 = a1;
  v36 = 0;
  v45 = 0;
  v44 = 0;
  v24 = 0;
  v33 = sub_1B98F5138();
  v26 = v33;
  v27 = *(v33 - 8);
  v32 = v27;
  v28 = v27;
  v29 = *(v27 + 64);
  v1 = &v7[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v30 = v1;
  v45 = MEMORY[0x1EEE9AC00](v25);
  v31 = *(v2 + 8);
  v44 = v2;
  v3 = sub_1B98F1E00();
  (*(v32 + 16))(v1, v3, v33);
  v38 = sub_1B98F5118();
  v34 = v38;
  v37 = sub_1B98F5BD8();
  v35 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F38, &qword_1B98F8FB0);
  v39 = sub_1B98F5F98();
  if (os_log_type_enabled(v38, v37))
  {
    v4 = v24;
    v15 = sub_1B98F5C28();
    v11 = v15;
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F40, &unk_1B98F89E0);
    v13 = 0;
    v16 = sub_1B985263C(0, v12, v12);
    v14 = v16;
    v17 = sub_1B985263C(v13, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E7CA0] + 8);
    v43 = v15;
    v42 = v16;
    v41 = v17;
    v18 = 0;
    v19 = &v43;
    sub_1B9852690(0, &v43);
    sub_1B9852690(v18, v19);
    v40 = v39;
    v20 = v7;
    MEMORY[0x1EEE9AC00](v7);
    v21 = &v7[-48];
    *&v7[-32] = v5;
    *&v7[-24] = &v42;
    *&v7[-16] = &v41;
    v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD4F48, &unk_1B98FC9E0);
    sub_1B9852720();
    sub_1B98F57D8();
    v23 = v4;
    if (v4)
    {
      __break(1u);
    }

    else
    {
      _os_log_impl(&dword_1B982F000, v34, v35, "Handling incoming IsBlockListEmpty message", v11, 2u);
      v9 = 0;
      sub_1B985281C(v14, 0, v12);
      sub_1B985281C(v17, v9, MEMORY[0x1E69E7CA0] + 8);
      sub_1B98F5C08();

      v10 = v23;
    }
  }

  else
  {

    v10 = v24;
  }

  (*(v28 + 8))(v30, v26);

  v8 = sub_1B989FB20();

  return v8 & 1;
}

uint64_t sub_1B985CC34@<X0>(uint64_t (*a1)(void)@<X1>, _BYTE *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_1B985CCA8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBBD5260, &unk_1B98F8FC0);
  v3 = sub_1B98F5178();
  v4 = v0;
  if (v0)
  {
    v5 = v3;
    v6 = v4;
  }

  else
  {
    v5 = sub_1B98F55E8("(unknown)", 9, 1);
    v6 = v1;
  }

  return v5;
}

uint64_t sub_1B985CD58(void *a1)
{
  v8 = a1[3];
  v4[1] = __swift_project_boxed_opaque_existential_0(a1, v8);
  v12 = sub_1B98F5C38();
  v9 = *(v12 - 8);
  v10 = v12 - 8;
  v5 = (*(v9 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v12);
  v11 = v4 - v5;
  v6 = *(v1 - 8);
  v7 = v1 - 8;
  (*(v6 + 16))();
  (*(v6 + 56))(v11, 0, 1, v8);
  v13 = sub_1B98F1B88(v11, v8);
  v14 = v2;
  (*(v9 + 8))(v11, v12);
  return v13;
}

uint64_t sub_1B985CEAC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v14 = *a1;
  v15 = 0;
  v10 = objc_opt_self();
  MEMORY[0x1E69E5928](v14);
  v13 = 0;
  v12 = [v10 archivedDataWithRootObject:v14 requiringSecureCoding:1 error:&v13];
  v11 = v13;
  MEMORY[0x1E69E5928](v13);
  v3 = v15;
  v15 = v11;
  MEMORY[0x1E69E5920](v3);
  swift_unknownObjectRelease();
  if (v12)
  {
    *a3 = sub_1B98F4F98();
    a3[1] = v4;
    return MEMORY[0x1E69E5920](v12);
  }

  else
  {
    v6 = v15;
    v7 = sub_1B98F4F38();
    MEMORY[0x1E69E5920](v6);
    swift_willThrow();
    result = v7;
    *a2 = v7;
  }

  return result;
}

uint64_t sub_1B985D064(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v34 = a1;
  v35 = a2;
  v59 = a3;
  v49 = a4;
  v36 = a5;
  v58 = a6;
  v38 = a8;
  v39 = "Fatal error";
  v40 = "Range requires lowerBound <= upperBound";
  v41 = "Swift/Range.swift";
  v42 = "Index out of range";
  v43 = "invalid Collection: count differed in successive traversals";
  v44 = "Swift/ArrayShared.swift";
  v72 = a3;
  v71 = a4;
  v70 = a5;
  v45 = *(a5 - 8);
  v46 = a5 - 8;
  v47 = (*(v45 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](a1);
  v48 = &v15 - v47;
  v50 = 0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v52 = *(AssociatedTypeWitness - 8);
  v53 = AssociatedTypeWitness - 8;
  v54 = (*(v52 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v8 = MEMORY[0x1EEE9AC00](v50);
  v55 = &v15 - v54;
  v56 = (*(*(v9 - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v8);
  v57 = &v15 - v56;
  v60 = swift_getAssociatedTypeWitness();
  v61 = *(v60 - 8);
  v62 = v60 - 8;
  v63 = (*(v61 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  v10 = MEMORY[0x1EEE9AC00](v59);
  v64 = &v15 - v63;
  v65 = (v11 + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v15 - v65;
  v67 = sub_1B98F5B08();
  if (!v67)
  {
    goto LABEL_24;
  }

  v69 = sub_1B98F5DA8();
  v33 = sub_1B98F5DB8();
  sub_1B98F5D88();
  result = sub_1B98F5AF8();
  if (v67 < 0)
  {
    sub_1B98F5E08();
    __break(1u);
LABEL_24:
    v17 = sub_1B98F58D8();
    v18 = v37;
    return v17;
  }

  if (!v67)
  {
LABEL_19:
    v23 = v37;
LABEL_20:
    v19 = v23;
    sub_1B98F5B18();
    swift_getAssociatedConformanceWitness();
    v22 = sub_1B98F5638();
    v20 = *(v61 + 8);
    v21 = v61 + 8;
    v20(v64, v60);
    if ((v22 & 1) == 0)
    {
      sub_1B98F5E48();
      __break(1u);
    }

    v20(v66, v60);
    v16 = v69;

    v17 = v16;
    v18 = v19;
    return v17;
  }

  v31 = 0;
  for (i = v37; ; i = v27)
  {
    v29 = i;
    v30 = v31;
    if (v31 < 0 || v30 >= v67)
    {
      goto LABEL_18;
    }

    if (v67 < 0)
    {
      sub_1B98F5E08();
      __break(1u);
LABEL_18:
      sub_1B98F5E48();
      __break(1u);
      goto LABEL_19;
    }

    v28 = v30 + 1;
    if (__OFADD__(v30, 1))
    {
      break;
    }

    v26 = &v68;
    v25 = sub_1B98F5B98();
    (*(v52 + 16))(v55);
    v25();
    v14 = v29;
    v34(v55, v48);
    v27 = v14;
    if (v14)
    {
      (*(v52 + 8))(v55, AssociatedTypeWitness);
      (*(v61 + 8))(v66, v60);
      sub_1B985E540();
      (*(v45 + 32))(v38, v48, v36);
      return v24;
    }

    (*(v52 + 8))(v55, AssociatedTypeWitness);
    sub_1B98F5D98();
    sub_1B98F5B28();
    if (v28 == v67)
    {
      v23 = v27;
      goto LABEL_20;
    }

    result = v27;
    v31 = v28;
  }

  __break(1u);
  return result;
}