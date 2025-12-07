uint64_t dispatch thunk of XPCDispatchClient.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 184) + **(*v4 + 184));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1BCF0A158;

  return v12(a1, a2, a3, a4);
}

uint64_t sub_1BCEF78D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = *v4;
  v5[7] = *v4;
  v7 = *(v6 + 80);
  v5[8] = v7;
  v8 = *(v7 - 8);
  v5[9] = v8;
  v5[10] = *(v8 + 64);
  v5[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCEF79D8, v4, 0);
}

uint64_t sub_1BCEF79D8()
{
  v1 = v0[11];
  v2 = v0[8];
  v3 = v0[9];
  v4 = v0[7];
  v6 = v0[4];
  v5 = v0[5];
  (*(v3 + 16))(v1, v0[3], v2);
  v7 = (*(v3 + 80) + 56) & ~*(v3 + 80);
  v8 = swift_allocObject();
  v0[12] = v8;
  *(v8 + 2) = v2;
  *(v8 + 3) = v6;
  *(v8 + 4) = *(v4 + 88);
  *(v8 + 5) = *(v4 + 96);
  *(v8 + 6) = v5;
  (*(v3 + 32))(&v8[v7], v1, v2);
  v9 = swift_task_alloc();
  v0[13] = v9;
  *v9 = v0;
  v9[1] = sub_1BCF06274;
  v10 = v0[4];
  v11 = v0[2];

  return sub_1BCEF7BB0(v11, 1, &unk_1BCF22BA0, v8, v10);
}

uint64_t sub_1BCEF7B30()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 56) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1BCEF7BB0(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 40) = a5;
  *(v6 + 48) = v5;
  *(v6 + 24) = a3;
  *(v6 + 32) = a4;
  *(v6 + 96) = a2;
  *(v6 + 16) = a1;
  *(v6 + 56) = *v5;
  return MEMORY[0x1EEE6DFA0](sub_1BCEF814C, v5, 0);
}

id sub_1BCEF7C04()
{
  v1 = v0;
  v2 = *v0;
  v3 = v1[16];
  v4 = *(v1 + 136);
  aBlock = v1[15];
  v33 = v3;
  LOBYTE(v34) = v4;
  sub_1BCEF8360(aBlock, v3, v4);
  v5 = v2[10];
  v6 = v2[11];
  v7 = v2[12];
  type metadata accessor for XPCDispatchClient.ServiceType(0, v5, v6, v7);
  v31 = sub_1BCF21A9C();
  v9 = v8;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v10 = sub_1BCF2170C();
  __swift_project_value_buffer(v10, qword_1EDDD2780);

  v11 = sub_1BCF216EC();
  v12 = sub_1BCF21CCC();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    aBlock = v14;
    *v13 = 136315138;
    *(v13 + 4) = sub_1BCEF84F4(v31, v9, &aBlock);
    _os_log_impl(&dword_1BCEF6000, v11, v12, "Opening connection to %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    MEMORY[0x1BFB32D20](v14, -1, -1);
    MEMORY[0x1BFB32D20](v13, -1, -1);
  }

  v15 = v1[16];
  if (*(v1 + 136))
  {
    if (*(v1 + 136) != 1)
    {

      type metadata accessor for XPCDispatchClient.Failure(0, v5, v6, v7);
      swift_getWitnessTable();
      swift_allocError();
      *v29 = 0;
      swift_willThrow();
      return v15;
    }

    v16 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v17 = sub_1BCF21A7C();
    v18 = [v16 initWithServiceName_];
  }

  else
  {
    v19 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v17 = sub_1BCF21A7C();
    v18 = [v19 initWithMachServiceName:v17 options:0];
  }

  v20 = v18;

  v21 = objc_opt_self();
  v15 = v20;
  v22 = [v21 interfaceWithProtocol_];
  [v15 setRemoteObjectInterface_];

  v23 = [v21 interfaceWithProtocol_];
  [v15 setExportedInterface_];

  type metadata accessor for XPCDispatchClientExport(0, v5, v6, v7);
  v24 = sub_1BCEF87D8(v1[14]);

  [v15 setExportedObject_];

  v25 = swift_allocObject();
  *(v25 + 16) = v31;
  *(v25 + 24) = v9;
  v36 = sub_1BCF09D18;
  v37 = v25;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1BCEFED68;
  v35 = &block_descriptor_0;
  v26 = _Block_copy(&aBlock);

  [v15 setInterruptionHandler_];
  _Block_release(v26);
  v27 = swift_allocObject();
  *(v27 + 16) = v31;
  *(v27 + 24) = v9;
  v36 = sub_1BCF09D44;
  v37 = v27;
  aBlock = MEMORY[0x1E69E9820];
  v33 = 1107296256;
  v34 = sub_1BCEFED68;
  v35 = &block_descriptor_45;
  v28 = _Block_copy(&aBlock);

  [v15 setInvalidationHandler_];
  _Block_release(v28);
  [v15 resume];

  return v15;
}

uint64_t sub_1BCEF8110()
{

  return swift_deallocObject();
}

uint64_t sub_1BCEF814C()
{
  v1 = *(v0 + 48);
  if (!*(v1 + 144))
  {
    v14 = sub_1BCEF7C04();
    v15 = *(v1 + 144);
    *(v1 + 144) = v14;

    v1 = *(v0 + 48);
  }

  v2 = *(v0 + 56);
  v3 = *(v0 + 40);
  v4 = *(v0 + 96);
  v5 = v2[10];
  v6 = v2[11];
  v7 = v2[12];
  type metadata accessor for XPCDispatchClient.RetryIsolator(0, v5, v6, v7);
  v8 = swift_allocObject();
  *(v0 + 64) = v8;

  v17 = *(v0 + 24);
  swift_defaultActor_initialize();
  *(v8 + 112) = v1;
  type metadata accessor for XPCDispatchClient(255, v5, v6, v7);
  WitnessTable = swift_getWitnessTable();
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *(v10 + 16) = v3;
  *(v10 + 24) = v1;
  *(v10 + 32) = v4;
  *(v10 + 40) = v8;
  *(v10 + 48) = v17;
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1BCF084CC;
  v12 = *(v0 + 40);
  v13 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v13, v1, WitnessTable, 0xD000000000000028, 0x80000001BCF26100, sub_1BCEF9054, v10, v12);
}

uint64_t sub_1BCEF8360(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_15FitnessDispatch17XPCDispatchClientC11ServiceTypeOyx_G(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_1BCEF83E0()
{
  v0 = sub_1BCF2170C();
  __swift_allocate_value_buffer(v0, qword_1EDDD2780);
  __swift_project_value_buffer(v0, qword_1EDDD2780);
  return sub_1BCF216FC();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

unint64_t sub_1BCEF84F4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_1BCEF85C0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_1BCEF8718(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

unint64_t sub_1BCEF85C0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_1BCEFCFC4(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_1BCF21E7C();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t sub_1BCEF8718(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1BCEF87D8(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1BCEF890C(uint64_t a1, uint64_t **a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v53 = a5;
  v57 = *a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v49 - v14;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v55 = a7;
  v16 = sub_1BCF21C1C();
  v54 = *(v16 - 8);
  v52 = *(v54 + 64);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v19 = a2[18];
  v56 = a1;
  if (v19)
  {
    v50 = a4;
    v20 = v54;
    (*(v54 + 16))(v18, a1, v16);
    v21 = v18;
    v22 = v15;
    v23 = v16;
    v24 = (*(v20 + 80) + 49) & ~*(v20 + 80);
    v25 = (v52 + v24 + 7) & 0xFFFFFFFFFFFFFFF8;
    v51 = a6;
    v26 = swift_allocObject();
    v27 = v57;
    v28 = v55;
    *(v26 + 16) = v57[10];
    *(v26 + 24) = v28;
    *(v26 + 32) = v27[11];
    *(v26 + 40) = v27[12];
    *(v26 + 48) = a3 & 1;
    v29 = v26 + v24;
    v16 = v23;
    v15 = v22;
    v18 = v21;
    (*(v20 + 32))(v29, v21, v16);
    *(v26 + v25) = v50;
    v30 = (v26 + ((v25 + 15) & 0xFFFFFFFFFFFFFFF8));
    a6 = v51;
    *v30 = v53;
    v30[1] = a6;
    v62 = sub_1BCF09D88;
    v63 = v26;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v61 = sub_1BCF0ABB0;
    *(&v61 + 1) = &block_descriptor_74;
    v31 = _Block_copy(&aBlock);
    v32 = v19;

    v33 = [v32 remoteObjectProxyWithErrorHandler_];
    _Block_release(v31);

    sub_1BCF21D6C();
    swift_unknownObjectRelease();
  }

  else
  {
    aBlock = 0u;
    v61 = 0u;
  }

  sub_1BCEF906C(&aBlock, v59);
  if (!v59[3])
  {
    sub_1BCEF90DC(v59, &unk_1EBD2A720, &unk_1BCF230D0);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD2A600, &qword_1BCF22E30);
  v34 = swift_dynamicCast();
  v35 = v56;
  if ((v34 & 1) == 0)
  {
LABEL_10:
    type metadata accessor for XPCDispatchClient.Failure(0, v57[10], v57[11], v57[12]);
    swift_getWitnessTable();
    v46 = swift_allocError();
    *v47 = 2;
    v59[0] = v46;
    sub_1BCF21BFC();
    return sub_1BCEF90DC(&aBlock, &unk_1EBD2A720, &unk_1BCF230D0);
  }

  v36 = v58;
  v37 = sub_1BCF21C5C();
  (*(*(v37 - 8) + 56))(v15, 1, 1, v37);
  v38 = v18;
  v39 = v54;
  (*(v54 + 16))(v38, v35, v16);
  v40 = v16;
  v41 = (*(v39 + 80) + 88) & ~*(v39 + 80);
  v42 = swift_allocObject();
  *(v42 + 2) = 0;
  *(v42 + 3) = 0;
  v43 = v57;
  v44 = v55;
  *(v42 + 4) = v57[10];
  *(v42 + 5) = v44;
  *(v42 + 6) = v43[11];
  v45 = v53;
  *(v42 + 7) = v43[12];
  *(v42 + 8) = v45;
  *(v42 + 9) = a6;
  *(v42 + 10) = v36;
  (*(v39 + 32))(&v42[v41], v38, v40);

  swift_unknownObjectRetain();
  sub_1BCF0E794(0, 0, v15, &unk_1BCF22E40, v42);
  swift_unknownObjectRelease();

  return sub_1BCEF90DC(&aBlock, &unk_1EBD2A720, &unk_1BCF230D0);
}

uint64_t sub_1BCEF8E80()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v1 = sub_1BCF21C1C();
  (*(*(v1 - 8) + 8))(v0 + ((*(*(v1 - 8) + 80) + 49) & ~*(*(v1 - 8) + 80)), v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEF8F58()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v1 = sub_1BCF21C1C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEF906C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD2A720, &unk_1BCF230D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCEF90DC(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1BCEF913C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BCF0A158;

  return sub_1BCEF91F4(a1, v4);
}

uint64_t sub_1BCEF91F4(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BCEFA9C0;

  return v6(a1);
}

uint64_t sub_1BCEF92EC(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v3 = *(sub_1BCF21C1C() - 8);
  v4 = (*(v3 + 80) + 88) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[8];
  v8 = v1[9];
  v9 = v1[10];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BCF0A158;

  return sub_1BCEF944C(a1, v5, v6, v7, v8, v9, v1 + v4);
}

uint64_t sub_1BCEF944C(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[3] = a7;
  v7[4] = v15;
  v7[5] = *(v15 - 8);
  v7[6] = swift_task_alloc();
  v10 = swift_task_alloc();
  v7[7] = v10;
  v13 = (a4 + *a4);
  v11 = swift_task_alloc();
  v7[8] = v11;
  *v11 = v7;
  v11[1] = sub_1BCF08EC0;

  return v13(v10, a6);
}

uint64_t sub_1BCEF95C0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = (*(*(v6 - 8) + 80) + 56) & ~*(*(v6 - 8) + 80);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1BCF0A158;

  return sub_1BCEF96D4(a1, a2, v2 + v11, v6, v7, v8, v9, v10);
}

uint64_t sub_1BCEF96D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[26] = a7;
  v8[27] = a8;
  v8[24] = a5;
  v8[25] = a6;
  v8[22] = a3;
  v8[23] = a4;
  v8[20] = a1;
  v8[21] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
  v8[28] = v9;
  v8[29] = *(v9 - 8);
  v8[30] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCEF97AC, 0, 0);
}

uint64_t sub_1BCEF97AC()
{
  v1 = *(v0 + 232);
  v2 = *(v0 + 240);
  v3 = *(v0 + 224);
  v7 = *(v0 + 168);
  sub_1BCF21B0C();
  v6 = *(v0 + 256);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1BCF06428;
  swift_continuation_init();
  *(v0 + 136) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  sub_1BCF21BEC();
  (*(v1 + 32))(boxed_opaque_existential_0, v2, v3);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BCF0A164;
  *(v0 + 104) = &block_descriptor_65;
  [v7 receiveWithMessageCode:v6 messageData:0 completionHandler:v0 + 80];
  (*(v1 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t *__swift_allocate_boxed_opaque_existential_0(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1BCEF9A10(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_1BCEF9A70(v7);

  return v9 & 1;
}

uint64_t sub_1BCEF9A70(void *a1)
{
  v2 = v1;
  v4 = (*MEMORY[0x1E69E7D40] & *v1);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v39 - v6;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1BCF2170C();
  __swift_project_value_buffer(v8, qword_1EDDD2780);
  v9 = sub_1BCF216EC();
  v10 = sub_1BCF21CCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BCEF6000, v9, v10, "New connection opened", v11, 2u);
    MEMORY[0x1BFB32D20](v11, -1, -1);
  }

  v12 = sub_1BCEFA078(a1);
  if (v12)
  {
    v13 = objc_opt_self();
    v40 = v7;
    v14 = [v13 interfaceWithProtocol_];
    [a1 setExportedInterface_];

    v15 = [v13 interfaceWithProtocol_];
    [a1 setRemoteObjectInterface_];

    v16 = v4[10];
    v17 = v4[11];
    v18 = v4[12];
    type metadata accessor for XPCDispatchListenerExport(0, v16, v17, v18);
    v19 = *&v2[qword_1EBD2A690];

    v20 = sub_1BCEFA25C(a1);
    [a1 setExportedObject_];

    v22 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v23 = swift_allocObject();
    v23[2] = v16;
    v23[3] = v17;
    v23[4] = v18;
    v23[5] = v22;
    v23[6] = a1;
    v45 = sub_1BCF0E2FC;
    v46 = v23;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1BCEFED68;
    v44 = &block_descriptor_1;
    v24 = _Block_copy(&aBlock);
    v25 = a1;

    [v25 setInvalidationHandler_];
    _Block_release(v24);
    v26 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v27 = swift_allocObject();
    v27[2] = v16;
    v27[3] = v17;
    v27[4] = v18;
    v27[5] = v26;
    v27[6] = v25;
    v45 = sub_1BCF0E36C;
    v46 = v27;
    aBlock = MEMORY[0x1E69E9820];
    v42 = 1107296256;
    v43 = sub_1BCEFED68;
    v44 = &block_descriptor_16;
    v28 = _Block_copy(&aBlock);
    v29 = v25;

    [v29 setInterruptionHandler_];
    _Block_release(v28);
    [v29 resume];
    v30 = sub_1BCF21C5C();
    v31 = v40;
    (*(*(v30 - 8) + 56))(v40, 1, 1, v30);
    v32 = swift_allocObject();
    v32[2] = 0;
    v32[3] = 0;
    v32[4] = v2;
    v32[5] = v29;
    v33 = v29;
    v34 = v2;
    sub_1BCF0E794(0, 0, v31, &unk_1BCF230E8, v32);
  }

  else
  {
    v35 = sub_1BCF216EC();
    v36 = sub_1BCF21CBC();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_1BCEF6000, v35, v36, "Rejecting connection that lacks required entitlements", v37, 2u);
      MEMORY[0x1BFB32D20](v37, -1, -1);
    }
  }

  return v12 & 1;
}

uint64_t sub_1BCEF9FF0()
{
  MEMORY[0x1BFB32DC0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_1BCEFA02C()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BCEFA078(void *a1)
{
  v3 = *(v1 + qword_1EBD2A698);
  v6 = *(v3 + 56);
  v5 = v3 + 56;
  v4 = v6;
  v7 = 1 << *(*(v1 + qword_1EBD2A698) + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & v4;
  v10 = (v7 + 63) >> 6;

  v12 = 0;
  while (v9)
  {
LABEL_9:

    v14 = sub_1BCF21A7C();

    v15 = [a1 valueForEntitlement_];

    if (v15)
    {
      sub_1BCF21D6C();
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0u;
      v18 = 0u;
    }

    v19[0] = v17;
    v19[1] = v18;
    if (!*(&v18 + 1))
    {

      sub_1BCEF90DC(v19, &unk_1EBD2A720, &unk_1BCF230D0);
      return 0;
    }

    result = swift_dynamicCast();
    if (result)
    {
      v9 &= v9 - 1;
      if (v16)
      {
        continue;
      }
    }

    return 0;
  }

  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v10)
    {

      return 1;
    }

    v9 = *(v5 + 8 * v13);
    ++v12;
    if (v9)
    {
      v12 = v13;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCEFA25C(void *a1)
{
  v2 = sub_1BCF21A7C();
  v3 = [a1 valueForEntitlement_];

  if (v3)
  {
    sub_1BCF21D6C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1BCEF90DC(v8, &unk_1EBD2A720, &unk_1BCF230D0);
    return 0;
  }
}

void *sub_1BCEFA354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  result[5] = a4;
  return result;
}

uint64_t sub_1BCEFA3AC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BCF0A158;

  return sub_1BCEFA46C(a1, v4, v5, v7, v6);
}

uint64_t sub_1BCEFA46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1BCEFA48C, 0, 0);
}

uint64_t sub_1BCEFA48C()
{
  sub_1BCF21C3C();
  *(v0 + 32) = sub_1BCF21C2C();
  v2 = sub_1BCF21BDC();

  return MEMORY[0x1EEE6DFA0](sub_1BCEFA520, v2, v1);
}

uint64_t sub_1BCEFA520()
{
  v1 = *(v0 + 24);

  sub_1BCEFA58C(v1);
  v2 = *(v0 + 8);

  return v2();
}

void sub_1BCEFA58C(void *a1)
{
  swift_beginAccess();
  sub_1BCEFA5FC(&v3, a1);
  v2 = v3;
  swift_endAccess();
}

uint64_t sub_1BCEFA5FC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_1BCF21DCC();

    if (v9)
    {

      sub_1BCEFA814();
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_1BCF21DBC();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_1BCF0CD60(v7, result + 1);
    v20 = *(v19 + 16);
    if (*(v19 + 24) <= v20)
    {
      sub_1BCF0CF40(v20 + 1);
    }

    v18 = v8;
    sub_1BCF0D168(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_1BCEFA814();
  v11 = sub_1BCF21D2C();
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_1BCEFA860(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_1BCF21D3C();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

unint64_t sub_1BCEFA814()
{
  result = qword_1EDDD20D0[0];
  if (!qword_1EDDD20D0[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EDDD20D0);
  }

  return result;
}

void sub_1BCEFA860(unint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1BCF0CF40(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      sub_1BCF0D1EC();
      goto LABEL_12;
    }

    sub_1BCF0D33C(v6 + 1);
  }

  v8 = *v3;
  v9 = sub_1BCF21D2C();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1BCEFA814();
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_1BCF21D3C();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1BCF21EFC();
  __break(1u);
}

uint64_t sub_1BCEFA9C0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BCEFAAB8(uint64_t a1, uint64_t a2, int a3, void *a4, const void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = a1;
  v14 = sub_1BCF21C5C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1BCF233E8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1BCF233F0;
  v16[5] = v15;
  v17 = a4;

  sub_1BCF10714(0, 0, v11, &unk_1BCF233F8, v16);
}

uint64_t sub_1BCEFAC4C()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1BCEFAC9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCEFAD04(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BCF0A158;

  return sub_1BCEF91F4(a1, v4);
}

uint64_t sub_1BCEFADBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1BCF0A158;

  return sub_1BCEFAE88(a1, v4, v5, v6);
}

uint64_t sub_1BCEFAE88(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v7 = (a4 + *a4);
  v5 = swift_task_alloc();
  *(v4 + 16) = v5;
  *v5 = v4;
  v5[1] = sub_1BCF099D4;

  return v7();
}

uint64_t sub_1BCEFAF70()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1BCF0A158;

  return sub_1BCEFB030(v2, v3, v4);
}

uint64_t sub_1BCEFB030(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_1BCF0A158;

  return v6();
}

uint64_t sub_1BCEFB118()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BCF099D4;

  return sub_1BCEFB1DC(v2, v3, v4, v5);
}

uint64_t sub_1BCEFB1DC(uint64_t a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;

    a2 = sub_1BCF215BC();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v4[4] = a2;
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1BCF104E4;

  return sub_1BCEFB2DC(a1, a2, v9);
}

uint64_t sub_1BCEFB2DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a1;
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BCF0903C;

  return sub_1BCEFB390(v6, a2, a3, 0, 1);
}

uint64_t sub_1BCEFB390(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 57) = a5;
  *(v6 + 80) = a4;
  *(v6 + 88) = v5;
  *(v6 + 64) = a2;
  *(v6 + 72) = a3;
  *(v6 + 60) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCEFB3BC, 0, 0);
}

uint64_t sub_1BCEFB3BC()
{
  v21 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  __swift_project_value_buffer(v1, qword_1EDDD2780);

  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 88);
    v5 = *(v0 + 60);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v20 = v7;
    *v6 = 67109378;
    *(v6 + 4) = v5;
    *(v6 + 8) = 2080;
    if (*(v4 + 32))
    {
      v8 = *(*(v0 + 88) + 24);
      v9 = *(v4 + 32);
    }

    else
    {
      v9 = 0xE700000000000000;
      v8 = 0x6E776F6E6B6E75;
    }

    v10 = sub_1BCEF84F4(v8, v9, &v20);

    *(v6 + 10) = v10;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "Received request: %u from: %s", v6, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v7);
    MEMORY[0x1BFB32D20](v7, -1, -1);
    MEMORY[0x1BFB32D20](v6, -1, -1);
  }

  v11 = *(v0 + 57);
  v13 = *(v0 + 80);
  v12 = *(v0 + 88);
  v14 = *(v12 + 32);
  *(v0 + 16) = *(v12 + 24);
  *(v0 + 24) = v14;
  *(v0 + 40) = 0;
  *(v0 + 48) = v13;
  *(v0 + 56) = v11 & 1;

  v15 = swift_task_alloc();
  *(v0 + 96) = v15;
  *v15 = v0;
  v15[1] = sub_1BCF10358;
  v16 = *(v0 + 64);
  v17 = *(v0 + 72);
  v18 = *(v0 + 60);

  return sub_1BCEFB608(v18, v0 + 16, v16, v17);
}

uint64_t sub_1BCEFB608(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 224) = a4;
  *(v5 + 232) = v4;
  *(v5 + 208) = a2;
  *(v5 + 216) = a3;
  *(v5 + 524) = a1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  *(v5 + 240) = v7;
  v8 = *(v7 - 8);
  *(v5 + 248) = v8;
  *(v5 + 256) = *(v8 + 64);
  *(v5 + 264) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  *(v5 + 272) = swift_task_alloc();
  v9 = sub_1BCF21C5C();
  *(v5 + 280) = v9;
  *(v5 + 288) = *(v9 - 8);
  *(v5 + 296) = swift_task_alloc();
  v10 = v6[11];
  *(v5 + 304) = v10;
  v11 = v6[12];
  *(v5 + 312) = v11;
  v12 = v6[13];
  *(v5 + 320) = v12;
  v13 = v6[14];
  *&v14 = v7;
  *(&v14 + 1) = v10;
  *&v15 = v11;
  *(&v15 + 1) = v12;
  *(v5 + 328) = v13;
  *(v5 + 32) = v15;
  *(v5 + 16) = v14;
  *(v5 + 48) = v13;
  v16 = type metadata accessor for DispatchListenerTable.Priority(0, v5 + 16);
  *(v5 + 336) = v16;
  *(v5 + 344) = *(v16 - 8);
  v17 = swift_task_alloc();
  *(v5 + 56) = v7;
  *&v18 = v10;
  *(&v18 + 1) = v11;
  *(v5 + 352) = v17;
  *&v19 = v12;
  *(&v19 + 1) = v13;
  *(v5 + 64) = v18;
  *(v5 + 80) = v19;
  v20 = type metadata accessor for DispatchListenerTable.Registration(255, v5 + 56);
  *(v5 + 360) = v20;
  v21 = sub_1BCF21D4C();
  *(v5 + 368) = v21;
  *(v5 + 376) = *(v21 - 8);
  *(v5 + 384) = swift_task_alloc();
  v22 = *(v20 - 8);
  *(v5 + 392) = v22;
  *(v5 + 400) = *(v22 + 64);
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = sub_1BCF21C3C();
  *(v5 + 432) = sub_1BCF21C2C();
  v24 = sub_1BCF21BDC();
  *(v5 + 440) = v24;
  *(v5 + 448) = v23;

  return MEMORY[0x1EEE6DFA0](sub_1BCEFB990, v24, v23);
}

uint64_t sub_1BCEFB990()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  *(v0 + 456) = __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 524);
    v5 = swift_slowAlloc();
    *v5 = 67109120;
    *(v5 + 4) = v4;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "Dispatching: %u", v5, 8u);
    MEMORY[0x1BFB32D20](v5, -1, -1);
  }

  v6 = *(v0 + 384);
  v7 = *(v0 + 392);
  v8 = *(v0 + 360);
  v9 = *(v0 + 524);

  swift_beginAccess();
  *(v0 + 520) = v9;

  sub_1BCF21A3C();

  if ((*(v7 + 48))(v6, 1, v8) == 1)
  {
    v11 = *(v0 + 376);
    v10 = *(v0 + 384);
    v12 = *(v0 + 368);
    v13 = *(v0 + 240);
    v14 = *(v0 + 524);
    v66 = *(v0 + 320);
    v68 = *(v0 + 304);

    (*(v11 + 8))(v10, v12);
    *(v0 + 96) = v13;
    *(v0 + 104) = v68;
    *(v0 + 120) = v66;
    type metadata accessor for DispatchListenerTable.Failure(0, v0 + 96);
    swift_getWitnessTable();
    v15 = swift_allocError();
    *v16 = v14;
    *(v16 + 4) = 1;
    swift_willThrow();
    v17 = v15;
    v18 = sub_1BCF216EC();
    v19 = sub_1BCF21CCC();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      v22 = v15;
      v23 = _swift_stdlib_bridgeErrorToNSError();
      *(v20 + 4) = v23;
      *v21 = v23;
      _os_log_impl(&dword_1BCEF6000, v18, v19, "Dispatch error: %@", v20, 0xCu);
      sub_1BCF05050(v21);
      MEMORY[0x1BFB32D20](v21, -1, -1);
      MEMORY[0x1BFB32D20](v20, -1, -1);
    }

    swift_getErrorValue();
    sub_1BCF20E14(*(v0 + 168), *(v0 + 176));
    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }

  else
  {
    v26 = *(v0 + 416);
    v27 = *(v0 + 352);
    v28 = *(v0 + 336);
    v29 = *(v0 + 344);
    v30 = *(v0 + 280);
    v31 = *(v0 + 288);
    v32 = *(*(v0 + 392) + 32);
    v32(v26, *(v0 + 384), *(v0 + 360));
    (*(v29 + 16))(v27, v26, v28);
    if ((*(v31 + 48))(v27, 1, v30) == 1)
    {
      v33 = (*(v0 + 416) + *(*(v0 + 360) + 60));
      v69 = (*v33 + **v33);
      v34 = swift_task_alloc();
      *(v0 + 464) = v34;
      *v34 = v0;
      v34[1] = sub_1BCF031C4;
      v35 = *(v0 + 216);
      v36 = *(v0 + 224);
      v37 = *(v0 + 208);

      return v69(v37, v35, v36);
    }

    else
    {
      v59 = *(v0 + 416);
      v38 = *(v0 + 408);
      v61 = *(v0 + 400);
      v39 = *(v0 + 392);
      v67 = *(v0 + 360);
      v40 = *(v0 + 288);
      v41 = *(v0 + 296);
      v43 = *(v0 + 272);
      v42 = *(v0 + 280);
      v64 = v32;
      v65 = *(v0 + 264);
      v60 = *(v0 + 256);
      v44 = *(v0 + 248);
      v58 = *(v0 + 240);
      v45 = *(v0 + 224);
      v70 = *(v0 + 216);
      v57 = *(v0 + 208);
      v62 = *(v0 + 320);
      v63 = *(v0 + 304);
      (*(v40 + 32))(v41, *(v0 + 352), v42);
      (*(v40 + 16))(v43, v41, v42);
      (*(v40 + 56))(v43, 0, 1, v42);
      (*(v39 + 16))(v38, v59, v67);
      (*(v44 + 16))(v65, v57, v58);
      sub_1BCEFC5E0(v70, v45);
      v46 = sub_1BCF21C2C();
      v47 = (*(v39 + 80) + 72) & ~*(v39 + 80);
      v48 = (v61 + *(v44 + 80) + v47) & ~*(v44 + 80);
      v49 = swift_allocObject();
      v50 = MEMORY[0x1E69E85E0];
      *(v49 + 16) = v46;
      *(v49 + 24) = v50;
      *(v49 + 32) = v58;
      *(v49 + 40) = v63;
      *(v49 + 56) = v62;
      v64(v49 + v47, v38, v67);
      (*(v44 + 32))(v49 + v48, v65, v58);
      v51 = (v49 + ((v60 + v48 + 7) & 0xFFFFFFFFFFFFFFF8));
      *v51 = v70;
      v51[1] = v45;
      v52 = sub_1BCF13238(0, 0, v43, &unk_1BCF22AF8, v49);
      *(v0 + 496) = v52;
      v53 = swift_task_alloc();
      *(v0 + 504) = v53;
      v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
      v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
      *v53 = v0;
      v53[1] = sub_1BCF033EC;
      v56 = MEMORY[0x1E69E7288];

      return MEMORY[0x1EEE6DA10](v0 + 184, v52, v54, v55, v56);
    }
  }
}

uint64_t sub_1BCEFC134()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);
  v14[0] = *(v0 + 32);
  v13 = *&v14[0];
  v14[1] = v2;
  v15 = v1;
  v3 = *(type metadata accessor for DispatchListenerTable.Registration(0, v14) - 8);
  v4 = (*(v3 + 80) + 72) & ~*(v3 + 80);
  v5 = *(v13 - 8);
  v6 = (v4 + *(v3 + 64) + *(v5 + 80)) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v8 = v0 + v4;
  v9 = sub_1BCF21C5C();
  v10 = *(v9 - 8);
  if (!(*(v10 + 48))(v8, 1, v9))
  {
    (*(v10 + 8))(v8, v9);
  }

  (*(v5 + 8))(v0 + v6, v13);
  v11 = *(v0 + v7 + 8);
  if (v11 >> 60 != 15)
  {
    sub_1BCF0510C(*(v0 + v7), v11);
  }

  return swift_deallocObject();
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1BCEFC37C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v10 = a1;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BCF0903C;

  return sub_1BCEFC444(v10, a2, a3, a4, a5 & 1);
}

uint64_t sub_1BCEFC444(int a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 92) = a5;
  *(v6 + 48) = a4;
  *(v6 + 56) = v5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 88) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCEFC470, v5, 0);
}

uint64_t sub_1BCEFC470()
{
  v1 = *(v0 + 92);
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  v4 = *(v0 + 32);
  v5 = *(v0 + 88);
  v6 = swift_allocObject();
  *(v0 + 64) = v6;
  *(v6 + 16) = v3;
  *(v6 + 24) = v1 & 1;
  *(v6 + 28) = v5;
  *(v6 + 32) = v4;
  *(v6 + 40) = v2;
  sub_1BCEFC5E0(v4, v2);
  v7 = swift_task_alloc();
  *(v0 + 72) = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
  *v7 = v0;
  v7[1] = sub_1BCF07D04;

  return sub_1BCEF7BB0(v0 + 16, 1, &unk_1BCF22BE8, v6, v8);
}

uint64_t sub_1BCEFC598()
{
  v1 = *(v0 + 40);
  if (v1 >> 60 != 15)
  {
    sub_1BCF0510C(*(v0 + 32), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1BCEFC5E0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BCF050B8(a1, a2);
  }

  return a1;
}

uint64_t sub_1BCEFC5F4(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 28);
  v10 = *(v2 + 32);
  v9 = *(v2 + 40);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1BCF0A158;

  return sub_1BCEFC6D0(a1, a2, v6, v7, v8, v10, v9);
}

uint64_t sub_1BCEFC6D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 328) = a6;
  *(v7 + 336) = a7;
  *(v7 + 400) = a5;
  *(v7 + 404) = a4;
  *(v7 + 312) = a2;
  *(v7 + 320) = a3;
  *(v7 + 304) = a1;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
  *(v7 + 344) = v8;
  *(v7 + 352) = *(v8 - 8);
  *(v7 + 360) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCEFC7AC, 0, 0);
}

uint64_t sub_1BCEFC7AC()
{
  v1 = *(v0 + 336);
  if (*(v0 + 404))
  {
    if (v1 >> 60 == 15)
    {
      v2 = 0;
    }

    else
    {
      v2 = sub_1BCF215AC();
    }

    v4 = v0 + 16;
    *(v0 + 384) = v2;
    v5 = *(v0 + 352);
    v6 = *(v0 + 360);
    v7 = *(v0 + 344);
    v19 = *(v0 + 400);
    v15 = v2;
    v17 = *(v0 + 312);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 272;
    *(v0 + 24) = sub_1BCF08030;
    swift_continuation_init();
    *(v0 + 200) = v7;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 176));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
    sub_1BCF21BEC();
    (*(v5 + 32))(boxed_opaque_existential_0, v6, v7);
    *(v0 + 144) = MEMORY[0x1E69E9820];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_1BCF0A164;
    *(v0 + 168) = &block_descriptor_50;
    [v17 receiveWithMessageCode:v19 messageData:v15 completionHandler:v0 + 144];
    (*(v5 + 8))(boxed_opaque_existential_0, v7);
  }

  else
  {
    if (v1 >> 60 == 15)
    {
      v3 = 0;
    }

    else
    {
      v3 = sub_1BCF215AC();
    }

    v4 = v0 + 80;
    *(v0 + 368) = v3;
    v9 = *(v0 + 352);
    v10 = *(v0 + 360);
    v11 = *(v0 + 344);
    v18 = *(v0 + 400);
    v20 = *(v0 + 320);
    v14 = v3;
    v16 = *(v0 + 312);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 288;
    *(v0 + 88) = sub_1BCF07EA8;
    swift_continuation_init();
    *(v0 + 264) = v11;
    v12 = __swift_allocate_boxed_opaque_existential_0((v0 + 240));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
    sub_1BCF21BEC();
    (*(v9 + 32))(v12, v10, v11);
    *(v0 + 208) = MEMORY[0x1E69E9820];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_1BCF0A164;
    *(v0 + 232) = &block_descriptor_54;
    [v16 receiveWithMessageCode:v18 messageData:v14 originatingProcessIdentifier:v20 completionHandler:v0 + 208];
    (*(v9 + 8))(v12, v11);
  }

  return MEMORY[0x1EEE6DEC8](v4);
}

uint64_t sub_1BCEFCB44(uint64_t a1, uint64_t a2, int a3, void *a4, uint64_t a5, const void *a6)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v21 - v12;
  v14 = _Block_copy(a6);
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  *(v15 + 40) = v14;
  *(v15 + 48) = a1;
  v16 = sub_1BCF21C5C();
  (*(*(v16 - 8) + 56))(v13, 1, 1, v16);
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_1BCF23390;
  v17[5] = v15;
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = &unk_1BCF22F90;
  v18[5] = v17;
  v19 = a4;

  sub_1BCF10714(0, 0, v13, &unk_1BCF233B0, v18);
}

uint64_t sub_1BCEFCCE4()
{
  _Block_release(*(v0 + 40));

  return swift_deallocObject();
}

uint64_t sub_1BCEFCD34()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v6 = *(v0 + 40);
  v5 = *(v0 + 48);
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_1BCF0A158;

  return sub_1BCEFCDFC(v2, v3, v4, v6, v5);
}

uint64_t sub_1BCEFCDFC(uint64_t a1, void *a2, uint64_t a3, void *aBlock, uint64_t a5)
{
  v8 = a1;
  v5[2] = a5;
  v5[3] = _Block_copy(aBlock);
  if (a2)
  {
    v9 = a2;

    a2 = sub_1BCF215BC();
    v11 = v10;
  }

  else
  {

    v11 = 0xF000000000000000;
  }

  v5[4] = a2;
  v5[5] = v11;
  v12 = swift_task_alloc();
  v5[6] = v12;
  *v12 = v5;
  v12[1] = sub_1BCF10A8C;

  return sub_1BCEFCF04(v8, a2, v11, a3);
}

uint64_t sub_1BCEFCF04(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BCF10A88;

  return sub_1BCEFB390(a1, a2, a3, a4, 0);
}

void *sub_1BCEFCFC4(uint64_t a1, unint64_t a2)
{
  v3 = sub_1BCEFD010(a1, a2);
  sub_1BCEFD1B8(&unk_1F3B66F00);
  return v3;
}

void *sub_1BCEFD010(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1BCEFD140(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_1BCF21E7C();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_1BCF21ADC();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = sub_1BCEFD140(v10, 0);
        result = sub_1BCF21E3C();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

void *sub_1BCEFD140(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A870, &unk_1BCF237D8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_1BCEFD1B8(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1BCF1C214(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1BCEFD2A4()
{

  return swift_deallocObject();
}

uint64_t sub_1BCEFD2DC()
{

  return swift_deallocObject();
}

uint64_t sub_1BCEFD314()
{

  return swift_deallocObject();
}

uint64_t sub_1BCEFD350(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1BCEFD368(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCF21C5C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCEFD3D4(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BCF21C5C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BCEFD45C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 48);
  v7 = *(a3 + 32);
  v12[0] = *(a3 + 16);
  v12[1] = v7;
  v13 = v6;
  v8 = type metadata accessor for DispatchListenerTable.Priority(0, v12);
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a2)
  {
    return (*(v9 + 48))(a1, a2, v8);
  }

  v11 = *(a1 + *(a3 + 60));
  if (v11 >= 0xFFFFFFFF)
  {
    LODWORD(v11) = -1;
  }

  return (v11 + 1);
}

uint64_t sub_1BCEFD51C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 48);
  v9 = *(a4 + 32);
  v12[0] = *(a4 + 16);
  v12[1] = v9;
  v13 = v8;
  result = type metadata accessor for DispatchListenerTable.Priority(0, v12);
  v11 = *(result - 8);
  if (*(v11 + 84) == a3)
  {
    return (*(v11 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 60)) = (a2 - 1);
  return result;
}

uint64_t sub_1BCEFD5E4()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 40) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1BCEFD664()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEFD75C()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = *(v1 - 8);
  v5 = (v3 + *(v2 + 64) + *(v4 + 80)) & ~*(v4 + 80);
  (*(v2 + 8))(v0 + v3);
  (*(v4 + 8))(v0 + v5, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEFD854()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v1 = sub_1BCF21C1C();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 88) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEFD950()
{
  _Block_release(*(v0 + 32));

  return swift_deallocObject();
}

uint64_t sub_1BCEFD9A4()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    sub_1BCF0510C(*(v0 + 48), v1);
  }

  return swift_deallocObject();
}

uint64_t sub_1BCEFD9FC()
{

  return swift_deallocObject();
}

uint64_t sub_1BCEFDA38()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BCEFDA80()
{

  return swift_deallocObject();
}

uint64_t sub_1BCEFDAC4()
{

  return swift_deallocObject();
}

uint64_t sub_1BCEFDB00()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BCEFDB38()
{

  return swift_deallocObject();
}

uint64_t sub_1BCEFDB70()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEFDC34()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1BCEFDCC8()
{

  return swift_deallocObject();
}

uint64_t sub_1BCEFDD00()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 64) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1BCEFDD98()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v1 + 8))(v0 + v2);
  __swift_destroy_boxed_opaque_existential_1((v0 + v3));

  return swift_deallocObject();
}

uint64_t sub_1BCEFDE2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1BCF21C5C();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 2)
  {
    return v5 - 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCEFDE98(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 1);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_1BCF21C5C();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_1BCEFDF18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a3 + 32);
  v11[0] = *(a3 + 16);
  v11[1] = v6;
  v7 = type metadata accessor for DispatchClientTable.Priority(0, v11);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    return (*(v8 + 48))(a1, a2, v7);
  }

  v10 = *(a1 + *(a3 + 52));
  if (v10 >= 0xFFFFFFFF)
  {
    LODWORD(v10) = -1;
  }

  return (v10 + 1);
}

uint64_t sub_1BCEFDFD0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = *(a4 + 32);
  v11[0] = *(a4 + 16);
  v11[1] = v8;
  result = type metadata accessor for DispatchClientTable.Priority(0, v11);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    return (*(v10 + 56))(a1, a2, a2, result);
  }

  *(a1 + *(a4 + 52)) = (a2 - 1);
  return result;
}

uint64_t sub_1BCEFE084()
{
  v1 = *(v0 + 48);
  v10[0] = *(v0 + 32);
  v10[1] = v1;
  v2 = *(type metadata accessor for DispatchClientTable.Registration(0, v10) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  v6 = sub_1BCF21C5C();
  v7 = *(v6 - 8);
  if (!(*(v7 + 48))(v5, 1, v6))
  {
    (*(v7 + 8))(v5, v6);
  }

  v8 = *(v0 + v4 + 8);
  if (v8 >> 60 != 15)
  {
    sub_1BCF0510C(*(v0 + v4), v8);
  }

  return swift_deallocObject();
}

uint64_t sub_1BCEFE1EC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_1BCF215FC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 44);

    return v9(v10, a2, v8);
  }
}

void *sub_1BCEFE298(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_1BCF215FC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 44);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1BCEFE33C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BCEFE374()
{
  (*(*(*(v0 + 16) - 8) + 8))(v0 + ((*(*(*(v0 + 16) - 8) + 80) + 48) & ~*(*(*(v0 + 16) - 8) + 80)));

  return swift_deallocObject();
}

uint64_t sub_1BCEFE408()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 72) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEFE4E0()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

uint64_t sub_1BCEFE518()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEFE5E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCEFE6C0()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A8D0, &qword_1BCF23B58);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 56) & ~*(v2 + 80);
  swift_unknownObjectRelease();

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t XPCHeader.bundleIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BCEFE810(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1BCEFE86C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void SigTermHandler.init()(uint64_t *a1@<X8>)
{
  sub_1BCEFE960(0, &unk_1EDDD1A10, 0x1E69E9630);
  sub_1BCEFE960(0, qword_1EDDD1CC8, 0x1E69E9610);
  v2 = sub_1BCF21CDC();
  v3 = sub_1BCF21CFC();

  *a1 = v3;
}

uint64_t sub_1BCEFE960(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

Swift::Void __swiftcall SigTermHandler.activate()()
{
  v0 = sub_1BCF219AC();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1BCF219DC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v8 = sub_1BCF2170C();
  __swift_project_value_buffer(v8, qword_1EDDD2780);
  v9 = sub_1BCF216EC();
  v10 = sub_1BCF21CCC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1BCEF6000, v9, v10, "SigTermHandler activating", v11, 2u);
    MEMORY[0x1BFB32D20](v11, -1, -1);
  }

  swift_getObjectType();
  aBlock[4] = sub_1BCEFEC80;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1BCEFED68;
  aBlock[3] = &block_descriptor;
  v12 = _Block_copy(aBlock);
  sub_1BCF219CC();
  sub_1BCEFEDAC();
  sub_1BCF21D0C();
  _Block_release(v12);
  (*(v1 + 8))(v3, v0);
  (*(v5 + 8))(v7, v4);
  v13 = sub_1BCF2171C();
  signal(15, v13);
  sub_1BCF21D1C();
}

uint64_t sub_1BCEFEC80()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BCF2170C();
  __swift_project_value_buffer(v0, qword_1EDDD2780);
  v1 = sub_1BCF216EC();
  v2 = sub_1BCF21CCC();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_1BCEF6000, v1, v2, "SigTerm received, exiting clean", v3, 2u);
    MEMORY[0x1BFB32D20](v3, -1, -1);
  }

  return MEMORY[0x1EEE75030]();
}

uint64_t sub_1BCEFED68(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_1BCEFEDAC()
{
  sub_1BCF219AC();
  sub_1BCEFEEDC();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD2A558, qword_1BCF22968);
  sub_1BCEFEF7C();
  return sub_1BCF21D7C();
}

uint64_t sub_1BCEFEE48(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1BCEFEE90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1BCEFEEDC()
{
  result = qword_1EDDD1A30;
  if (!qword_1EDDD1A30)
  {
    sub_1BCF219AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD1A30);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1BCEFEF7C()
{
  result = qword_1EDDD1A20;
  if (!qword_1EDDD1A20)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_1EBD2A558, qword_1BCF22968);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDD1A20);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1BCEFF088@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  v18 = type metadata accessor for DispatchListenerTable.Priority(0, &v21);
  (*(*(v18 - 8) + 32))(a9, a1, v18);
  v21 = a4;
  v22 = a5;
  v23 = a6;
  v24 = a7;
  v25 = a8;
  result = type metadata accessor for DispatchListenerTable.Registration(0, &v21);
  v20 = (a9 + *(result + 60));
  *v20 = a2;
  v20[1] = a3;
  return result;
}

uint64_t DispatchListenerTable.__allocating_init()()
{
  v0 = swift_allocObject();
  DispatchListenerTable.init()();
  return v0;
}

void *DispatchListenerTable.init()()
{
  v1 = *(*v0 + 112);
  v2 = *(*v0 + 96);
  v8[0] = *(*v0 + 80);
  v8[1] = v2;
  v9 = v1;
  v3 = type metadata accessor for DispatchListenerTable.Registration(255, v8);
  v4 = MEMORY[0x1E69E7668];
  swift_getTupleTypeMetadata2();
  v5 = sub_1BCF21B5C();
  v6 = sub_1BCF0408C(v5, v4, v3, MEMORY[0x1E69E7678]);

  v0[2] = v6;
  return v0;
}

uint64_t sub_1BCEFF278(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v40 = a2;
  v41 = a3;
  v6 = *(*v4 + 88);
  v7 = *(*v4 + 96);
  v8 = *(*v4 + 104);
  v9 = *(*v4 + 112);
  v47 = *(*v4 + 80);
  v5 = v47;
  v48 = v6;
  v49 = v7;
  v50 = v8;
  v51 = v9;
  v10 = type metadata accessor for DispatchListenerTable.Priority(0, &v47);
  v36 = *(v10 - 8);
  v37 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v38 = &v35 - v11;
  v46 = v5;
  v47 = v5;
  v48 = v6;
  v49 = v7;
  v43 = v8;
  v44 = v7;
  v50 = v8;
  v51 = v9;
  v12 = type metadata accessor for DispatchListenerTable.Registration(255, &v47);
  v13 = sub_1BCF21D4C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v39 = &v35 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v35 - v17;
  v45 = v6;
  sub_1BCF21B0C();
  v19 = v47;
  swift_beginAccess();
  v53 = v19;

  sub_1BCF21A3C();

  v20 = *(v12 - 8);
  LODWORD(v6) = (*(v20 + 48))(v18, 1, v12);
  (*(v14 + 8))(v18, v13);
  if (v6 == 1)
  {
    v21 = v45;
    sub_1BCF21B0C();
    v22 = v53;
    v23 = v38;
    (*(v36 + 16))(v38, v40, v37);
    v24 = swift_allocObject();
    v25 = v46;
    v24[2] = v46;
    v24[3] = v21;
    v27 = v43;
    v26 = v44;
    v24[4] = v44;
    v24[5] = v27;
    v28 = v41;
    v29 = v42;
    v24[6] = v9;
    v24[7] = v28;
    v24[8] = v29;
    v30 = v39;
    sub_1BCEFF088(v23, &unk_1BCF229A8, v24, v25, v21, v26, v27, v9, v39);
    (*(v20 + 56))(v30, 0, 1, v12);
    v52 = v22;
    swift_beginAccess();
    sub_1BCF21A1C();

    sub_1BCF21A4C();
    return swift_endAccess();
  }

  else
  {
    v32 = v45;
    sub_1BCF21B0C();
    v33 = v53;
    v47 = v46;
    v48 = v32;
    v49 = v44;
    v50 = v43;
    v51 = v9;
    type metadata accessor for DispatchListenerTable.Failure(0, &v47);
    swift_getWitnessTable();
    swift_allocError();
    *v34 = v33;
    *(v34 + 4) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1BCEFF6E8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v4[2] = sub_1BCF21C3C();
  v4[3] = sub_1BCF21C2C();
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  v4[4] = v7;
  *v7 = v4;
  v7[1] = sub_1BCEFF808;

  return v9(a1);
}

uint64_t sub_1BCEFF808()
{
  *(*v1 + 40) = v0;

  v3 = sub_1BCF21BDC();
  if (v0)
  {
    v4 = sub_1BCEFF9D0;
  }

  else
  {
    v4 = sub_1BCEFF964;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BCEFF964()
{

  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t sub_1BCEFF9D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCEFFA68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 136) = v14;
  *(v8 + 144) = v15;
  *(v8 + 120) = v13;
  *(v8 + 104) = a7;
  *(v8 + 112) = a8;
  *(v8 + 88) = a5;
  *(v8 + 96) = a6;
  *(v8 + 72) = a3;
  *(v8 + 80) = a4;
  *(v8 + 56) = a1;
  *(v8 + 64) = a2;
  *(v8 + 152) = *(a8 - 8);
  *(v8 + 160) = swift_task_alloc();
  sub_1BCF21C3C();
  *(v8 + 168) = sub_1BCF21C2C();
  v10 = sub_1BCF21BDC();
  *(v8 + 176) = v10;
  *(v8 + 184) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BCEFFB70, v10, v9);
}

uint64_t sub_1BCEFFB70()
{
  v1 = *(v0 + 72);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 136);
    v13 = *(v0 + 120);
    v14 = *(v0 + 96);

    *(v0 + 16) = v14;
    *(v0 + 32) = v13;
    *(v0 + 48) = v2;
    type metadata accessor for DispatchListenerTable.Failure(0, v0 + 16);
    swift_getWitnessTable();
    swift_allocError();
    *v3 = 0;
    *(v3 + 4) = 2;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 112);
    v6 = *(v0 + 64);
    v7 = *(v4 + 16);
    sub_1BCEFC5E0(v6, *(v0 + 72));
    sub_1BCF050B8(v6, v1);
    v7(v6, v1, v5, v4);
    v15 = (*(v0 + 80) + **(v0 + 80));
    v10 = swift_task_alloc();
    *(v0 + 192) = v10;
    *v10 = v0;
    v10[1] = sub_1BCEFFDC8;
    v11 = *(v0 + 160);
    v12 = *(v0 + 56);

    return v15(v12, v11);
  }
}

uint64_t sub_1BCEFFDC8()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  v3 = *(v2 + 184);
  v4 = *(v2 + 176);
  if (v0)
  {
    v5 = sub_1BCEFFFB8;
  }

  else
  {
    v5 = sub_1BCEFFF04;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BCEFFF04()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[14];
  v5 = v0[8];
  v4 = v0[9];

  sub_1BCF05424(v5, v4);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6(0, 0xF000000000000000);
}

uint64_t sub_1BCEFFFB8()
{
  v1 = v0[20];
  v2 = v0[19];
  v3 = v0[14];
  v5 = v0[8];
  v4 = v0[9];

  sub_1BCF05424(v5, v4);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BCF00098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a6;
  v48 = a8;
  v44 = a7;
  v45 = a5;
  v49 = a4;
  v46 = a3;
  v43 = a2;
  v10 = *(*v8 + 88);
  v11 = *(*v8 + 96);
  v12 = *(*v8 + 104);
  v13 = *(*v8 + 112);
  v54 = *(*v8 + 80);
  v9 = v54;
  v55 = v10;
  v56 = v11;
  v57 = v12;
  v58 = v13;
  v40 = type metadata accessor for DispatchListenerTable.Priority(0, &v54);
  v39 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v38 - v14;
  v53 = v9;
  v54 = v9;
  v55 = v10;
  v56 = v11;
  v50 = v12;
  v51 = v11;
  v57 = v12;
  v58 = v13;
  v15 = type metadata accessor for DispatchListenerTable.Registration(255, &v54);
  v16 = sub_1BCF21D4C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v42 = &v38 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v38 - v20;
  v52 = v10;
  sub_1BCF21B0C();
  v22 = v54;
  swift_beginAccess();
  v60 = v22;

  sub_1BCF21A3C();

  v23 = *(v15 - 8);
  LODWORD(v10) = (*(v23 + 48))(v21, 1, v15);
  (*(v17 + 8))(v21, v16);
  if (v10 == 1)
  {
    v24 = v52;
    sub_1BCF21B0C();
    v25 = v60;
    v26 = v41;
    (*(v39 + 16))(v41, v43, v40);
    v27 = swift_allocObject();
    v28 = v53;
    v27[2] = v53;
    v27[3] = v24;
    v30 = v50;
    v29 = v51;
    v27[4] = v45;
    v27[5] = v29;
    v27[6] = v30;
    v27[7] = v13;
    v31 = v46;
    v27[8] = v47;
    v27[9] = v31;
    v32 = v48;
    v27[10] = v49;
    v33 = v42;
    sub_1BCEFF088(v26, v32, v27, v28, v24, v29, v30, v13, v42);
    (*(v23 + 56))(v33, 0, 1, v15);
    v59 = v25;
    swift_beginAccess();
    sub_1BCF21A1C();

    sub_1BCF21A4C();
    return swift_endAccess();
  }

  else
  {
    v35 = v52;
    sub_1BCF21B0C();
    v36 = v60;
    v54 = v53;
    v55 = v35;
    v56 = v51;
    v57 = v50;
    v58 = v13;
    type metadata accessor for DispatchListenerTable.Failure(0, &v54);
    swift_getWitnessTable();
    swift_allocError();
    *v37 = v36;
    *(v37 + 4) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1BCF00528(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a8;
  v8[3] = v17;
  v11 = sub_1BCF21D4C();
  v8[4] = v11;
  v8[5] = *(v11 - 8);
  v8[6] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[7] = v12;
  v8[8] = sub_1BCF21C3C();
  v8[9] = sub_1BCF21C2C();
  v15 = (a4 + *a4);
  v13 = swift_task_alloc();
  v8[10] = v13;
  *v13 = v8;
  v13[1] = sub_1BCF006CC;

  return v15(v12, a1);
}

uint64_t sub_1BCF006CC()
{
  *(*v1 + 88) = v0;

  v3 = sub_1BCF21BDC();
  if (v0)
  {
    v4 = sub_1BCF00A60;
  }

  else
  {
    v4 = sub_1BCF00828;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BCF00828()
{
  v1 = v0[2];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  v6 = v0 + 4;
  v5 = v0[4];

  (*(v4 + 16))(v3, v2, v5);
  v7 = *(v1 - 8);
  if ((*(v7 + 48))(v3, 1, v1) == 1)
  {
    v8 = *(v0[5] + 8);
    v8(v0[7], v0[4]);
    v9 = 0;
    v10 = 0xF000000000000000;
LABEL_8:
    v8(v0[6], *v6);

    v19 = v0[1];

    return v19(v9, v10);
  }

  v11 = v0[11];
  v9 = (*(v0[3] + 8))(v0[2]);
  v13 = v0[7];
  v14 = (v7 + 8);
  if (!v11)
  {
    v10 = v12;
    (*(v0[5] + 8))(v13, v0[4]);
    v8 = *v14;
    v6 = v0 + 2;
    goto LABEL_8;
  }

  v15 = v0[6];
  v16 = v0[2];
  (*(v0[5] + 8))(v13, v0[4]);
  (*v14)(v15, v16);

  v17 = v0[1];

  return v17();
}

uint64_t sub_1BCF00A60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF00AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v51 = a4;
  v49 = a7;
  v50 = a8;
  v46 = a5;
  v47 = a6;
  v48 = a3;
  v45 = a2;
  v10 = *(*v8 + 88);
  v11 = *(*v8 + 96);
  v12 = *(*v8 + 104);
  v13 = *(*v8 + 112);
  v56 = *(*v8 + 80);
  v9 = v56;
  v57 = v10;
  v58 = v11;
  v59 = v12;
  v60 = v13;
  v42 = type metadata accessor for DispatchListenerTable.Priority(0, &v56);
  v41 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v40 - v14;
  v55 = v9;
  v56 = v9;
  v57 = v10;
  v58 = v11;
  v52 = v12;
  v53 = v11;
  v59 = v12;
  v60 = v13;
  v15 = type metadata accessor for DispatchListenerTable.Registration(255, &v56);
  v16 = sub_1BCF21D4C();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v44 = &v40 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v40 - v20;
  v54 = v10;
  sub_1BCF21B0C();
  v22 = v56;
  swift_beginAccess();
  v62 = v22;

  sub_1BCF21A3C();

  v23 = *(v15 - 8);
  LODWORD(v10) = (*(v23 + 48))(v21, 1, v15);
  (*(v17 + 8))(v21, v16);
  if (v10 == 1)
  {
    v24 = v54;
    sub_1BCF21B0C();
    v25 = v62;
    v26 = v43;
    (*(v41 + 16))(v43, v45, v42);
    v27 = swift_allocObject();
    v28 = v55;
    v27[2] = v55;
    v27[3] = v24;
    v29 = v47;
    v27[4] = v46;
    v27[5] = v29;
    v31 = v52;
    v30 = v53;
    v27[6] = v53;
    v27[7] = v31;
    v32 = v49;
    v33 = v50;
    v27[8] = v13;
    v27[9] = v32;
    v34 = v48;
    v27[10] = v33;
    v27[11] = v34;
    v27[12] = v51;
    v35 = v44;
    sub_1BCEFF088(v26, &unk_1BCF229D8, v27, v28, v24, v30, v31, v13, v44);
    (*(v23 + 56))(v35, 0, 1, v15);
    v61 = v25;
    swift_beginAccess();
    sub_1BCF21A1C();

    sub_1BCF21A4C();
    return swift_endAccess();
  }

  else
  {
    v37 = v54;
    sub_1BCF21B0C();
    v38 = v62;
    v56 = v55;
    v57 = v37;
    v58 = v53;
    v59 = v52;
    v60 = v13;
    type metadata accessor for DispatchListenerTable.Failure(0, &v56);
    swift_getWitnessTable();
    swift_allocError();
    *v39 = v38;
    *(v39 + 4) = 0;
    return swift_willThrow();
  }
}

uint64_t sub_1BCF00F84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 160) = v18;
  *(v8 + 128) = v16;
  *(v8 + 144) = v17;
  *(v8 + 112) = a8;
  *(v8 + 120) = v15;
  *(v8 + 96) = a6;
  *(v8 + 104) = a7;
  *(v8 + 80) = a4;
  *(v8 + 88) = a5;
  *(v8 + 64) = a2;
  *(v8 + 72) = a3;
  *(v8 + 56) = a1;
  v10 = sub_1BCF21D4C();
  *(v8 + 168) = v10;
  *(v8 + 176) = *(v10 - 8);
  *(v8 + 184) = swift_task_alloc();
  *(v8 + 192) = swift_task_alloc();
  *(v8 + 200) = *(a8 - 8);
  *(v8 + 208) = swift_task_alloc();
  sub_1BCF21C3C();
  *(v8 + 216) = sub_1BCF21C2C();
  v12 = sub_1BCF21BDC();
  *(v8 + 224) = v12;
  *(v8 + 232) = v11;

  return MEMORY[0x1EEE6DFA0](sub_1BCF01108, v12, v11);
}

uint64_t sub_1BCF01108()
{
  v1 = *(v0 + 72);
  if (v1 >> 60 == 15)
  {
    v2 = *(v0 + 144);
    v14 = *(v0 + 128);
    v15 = *(v0 + 96);

    *(v0 + 16) = v15;
    *(v0 + 32) = v14;
    *(v0 + 48) = v2;
    type metadata accessor for DispatchListenerTable.Failure(0, v0 + 16);
    swift_getWitnessTable();
    swift_allocError();
    *v3 = 0;
    *(v3 + 4) = 2;
    swift_willThrow();

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    v4 = *(v0 + 152);
    v5 = *(v0 + 112);
    v6 = *(v0 + 64);
    v7 = *(v4 + 16);
    sub_1BCEFC5E0(v6, *(v0 + 72));
    sub_1BCF050B8(v6, v1);
    v7(v6, v1, v5, v4);
    v16 = (*(v0 + 80) + **(v0 + 80));
    v10 = swift_task_alloc();
    *(v0 + 240) = v10;
    *v10 = v0;
    v10[1] = sub_1BCF01378;
    v11 = *(v0 + 208);
    v12 = *(v0 + 192);
    v13 = *(v0 + 56);

    return v16(v12, v13, v11);
  }
}

uint64_t sub_1BCF01378()
{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);
  if (v0)
  {
    v5 = sub_1BCF01794;
  }

  else
  {
    v5 = sub_1BCF014B4;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BCF014B4()
{
  v2 = v0 + 21;
  v1 = v0[21];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v6 = v0[15];

  (*(v5 + 16))(v4, v3, v1);
  v7 = *(v6 - 8);
  if ((*(v7 + 48))(v4, 1, v6) == 1)
  {
    v9 = v0[25];
    v8 = v0[26];
    v10 = v0[24];
    v11 = v0[21];
    v12 = v0[22];
    v13 = v0[14];
    sub_1BCF05424(v0[8], v0[9]);
    v14 = *(v12 + 8);
    v14(v10, v11);
    (*(v9 + 8))(v8, v13);
    v15 = 0;
    v16 = 0xF000000000000000;
LABEL_8:
    v14(v0[23], *v2);

    v31 = v0[1];

    return v31(v15, v16);
  }

  v17 = v0[31];
  v18 = (*(v0[20] + 8))(v0[15]);
  v21 = v0[25];
  v20 = v0[26];
  v22 = v0[24];
  if (!v17)
  {
    v15 = v18;
    v16 = v19;
    v29 = v0[21];
    v30 = v0[22];
    v33 = v0[14];
    sub_1BCF05424(v0[8], v0[9]);
    (*(v30 + 8))(v22, v29);
    (*(v21 + 8))(v20, v33);
    v14 = *(v7 + 8);
    v2 = v0 + 15;
    goto LABEL_8;
  }

  v23 = v0[22];
  v32 = v0[23];
  v24 = v0[21];
  v26 = v0[14];
  v25 = v0[15];
  sub_1BCF05424(v0[8], v0[9]);
  (*(v23 + 8))(v22, v24);
  (*(v21 + 8))(v20, v26);
  (*(v7 + 8))(v32, v25);

  v27 = v0[1];

  return v27();
}

uint64_t sub_1BCF01794()
{
  v1 = v0[26];
  v2 = v0[25];
  v3 = v0[14];
  v5 = v0[8];
  v4 = v0[9];

  sub_1BCF05424(v5, v4);
  (*(v2 + 8))(v1, v3);

  v6 = v0[1];

  return v6();
}

uint64_t sub_1BCF01854(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v60 = a2;
  v59 = a1;
  v5 = *(*v3 + 80);
  v6 = *(*v3 + 88);
  v7 = *(*v3 + 96);
  v8 = *(*v3 + 104);
  v9 = *(*v3 + 112);
  *&v78 = v5;
  *(&v78 + 1) = v6;
  v79 = v7;
  v80 = v8;
  v81 = v9;
  v58 = type metadata accessor for DispatchListenerTable.Priority(0, &v78);
  v10 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v74 = &v49[-v11];
  v64 = v5;
  *&v78 = v5;
  *(&v78 + 1) = v6;
  v63 = v7;
  v79 = v7;
  v80 = v8;
  v62 = v8;
  v75 = v9;
  v81 = v9;
  v12 = type metadata accessor for DispatchListenerTable.Registration(255, &v78);
  v66 = sub_1BCF21D4C();
  v13 = *(v66 - 8);
  v14 = MEMORY[0x1EEE9AC00](v66);
  v57 = &v49[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = MEMORY[0x1EEE9AC00](v14);
  v65 = &v49[-v17];
  v77 = *(v6 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v56 = &v49[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v49[-v21];
  v61 = v23;
  MEMORY[0x1EEE9AC00](v20);
  v67 = &v49[-v24];
  v76 = a3;
  result = sub_1BCF21B8C();
  if (result)
  {
    v26 = 0;
    v72 = (v77 + 32);
    v73 = (v77 + 16);
    v55 = v12 - 8;
    v54 = (v13 + 8);
    v51 = (v10 + 16);
    v53 = (v77 + 8);
    v52 = v12;
    v50 = v22;
    while (1)
    {
      v27 = sub_1BCF21B6C();
      sub_1BCF21B3C();
      if (v27)
      {
        v28 = *(v77 + 16);
        v29 = v67;
        result = v28(v67, v76 + ((*(v77 + 80) + 32) & ~*(v77 + 80)) + *(v77 + 72) * v26, v6);
      }

      else
      {
        result = sub_1BCF21E5C();
        v29 = v67;
        if (v61 != 8)
        {
          goto LABEL_14;
        }

        *&v78 = result;
        v28 = *v73;
        (*v73)(v67, &v78, v6);
        result = swift_unknownObjectRelease();
      }

      if (__OFADD__(v26, 1))
      {
        break;
      }

      v71 = v26 + 1;
      v70 = *v72;
      v70(v22, v29, v6);
      sub_1BCF21B0C();
      v30 = v78;
      swift_beginAccess();
      v83 = v30;

      v31 = v65;
      sub_1BCF21A3C();

      v32 = *(v12 - 8);
      v33 = (*(v32 + 48))(v31, 1, v12);
      (*v54)(v31, v66);
      if (v33 != 1)
      {
        v46 = v75;
        sub_1BCF21B0C();
        v47 = v83;
        *&v78 = v64;
        *(&v78 + 1) = v6;
        v79 = v63;
        v80 = v62;
        v81 = v46;
        type metadata accessor for DispatchListenerTable.Failure(0, &v78);
        swift_getWitnessTable();
        swift_allocError();
        *v48 = v47;
        *(v48 + 4) = 0;
        swift_willThrow();
        return (*v53)(v22, v6);
      }

      v34 = v22;
      v35 = v75;
      sub_1BCF21B0C();
      v68 = v83;
      (*v51)(v74, v60, v58);
      sub_1BCF049CC(v59, &v78);
      v69 = v26;
      v36 = v56;
      v28(v56, v34, v6);
      v37 = (*(v77 + 80) + 96) & ~*(v77 + 80);
      v38 = swift_allocObject();
      v39 = v35;
      v40 = v64;
      v38[2] = v64;
      v38[3] = v6;
      v41 = v63;
      v42 = v62;
      v38[4] = v63;
      v38[5] = v42;
      v38[6] = v39;
      sub_1BCEFD350(&v78, (v38 + 7));
      v70(v38 + v37, v36, v6);
      v43 = v57;
      v44 = v39;
      v12 = v52;
      sub_1BCEFF088(v74, &unk_1BCF229E8, v38, v40, v6, v41, v42, v44, v57);
      (*(v32 + 56))(v43, 0, 1, v12);
      v82 = v68;
      swift_beginAccess();
      sub_1BCF21A1C();
      sub_1BCF21A4C();
      swift_endAccess();
      v22 = v50;
      (*(v77 + 8))(v50, v6);
      v45 = v69;
      result = sub_1BCF21B8C();
      v26 = v45 + 1;
      if (v71 == result)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BCF02078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a8;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  sub_1BCF21C3C();
  v8[11] = sub_1BCF21C2C();
  v10 = sub_1BCF21BDC();
  v8[12] = v10;
  v8[13] = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BCF02128, v10, v9);
}

uint64_t sub_1BCF02128()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "Forwarding request", v4, 2u);
    MEMORY[0x1BFB32D20](v4, -1, -1);
  }

  v5 = *(v0 + 72);
  v6 = *(v0 + 56);
  v7 = *(v0 + 40);

  v9 = v7[3];
  v8 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v9);
  sub_1BCF21B0C();
  v10 = *(v0 + 144);
  v11 = (*(v5 + 16))(v6, v5);
  if (v12)
  {
    v13 = (*(*(v0 + 72) + 8))(*(v0 + 56));
    v15 = v14;
  }

  else
  {
    v13 = v11;
    v15 = 0;
  }

  v20 = (*(v8 + 8) + **(v8 + 8));
  v16 = swift_task_alloc();
  *(v0 + 112) = v16;
  *v16 = v0;
  v16[1] = sub_1BCF023A8;
  v17 = *(v0 + 24);
  v18 = *(v0 + 32);

  return v20(v10, v17, v18, v13, v15 & 1, v9, v8);
}

uint64_t sub_1BCF023A8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 120) = v2;

  if (v2)
  {
    v7 = v6[12];
    v8 = v6[13];
    v9 = sub_1BCF02544;
  }

  else
  {
    v6[16] = a2;
    v6[17] = a1;
    v7 = v6[12];
    v8 = v6[13];
    v9 = sub_1BCF024DC;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BCF024DC()
{

  v1 = v0[1];
  v3 = v0[16];
  v2 = v0[17];

  return v1(v2, v3);
}

uint64_t sub_1BCF02544()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF025A8(uint64_t a1, uint64_t a2)
{
  v55 = a1;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 96);
  v7 = *(*v2 + 104);
  v8 = *(*v2 + 112);
  *&v72 = *(*v2 + 80);
  v4 = v72;
  *(&v72 + 1) = v5;
  v73 = v6;
  v74 = v7;
  v75 = v8;
  v9 = type metadata accessor for DispatchListenerTable.Priority(0, &v72);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v70 = &v47[-v10];
  v59 = v4;
  *&v72 = v4;
  *(&v72 + 1) = v5;
  v58 = v6;
  v73 = v6;
  v74 = v7;
  v57 = v7;
  v75 = v8;
  v11 = type metadata accessor for DispatchListenerTable.Registration(255, &v72);
  v61 = sub_1BCF21D4C();
  v12 = *(v61 - 8);
  v13 = MEMORY[0x1EEE9AC00](v61);
  v54 = &v47[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = MEMORY[0x1EEE9AC00](v13);
  v60 = &v47[-v16];
  v71 = *(v5 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v53 = &v47[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v47[-v20];
  v56 = v22;
  MEMORY[0x1EEE9AC00](v19);
  v62 = &v47[-v23];
  v24 = a2;
  result = sub_1BCF21B8C();
  if (result)
  {
    v26 = 0;
    v68 = (v71 + 32);
    v69 = (v71 + 16);
    v52 = v11 - 8;
    v51 = (v12 + 8);
    v50 = (v71 + 8);
    v49 = v24;
    v48 = v11;
    while (1)
    {
      v27 = sub_1BCF21B6C();
      sub_1BCF21B3C();
      if (v27)
      {
        v28 = *(v71 + 16);
        v29 = v62;
        result = v28(v62, v24 + ((*(v71 + 80) + 32) & ~*(v71 + 80)) + *(v71 + 72) * v26, v5);
      }

      else
      {
        result = sub_1BCF21E5C();
        v29 = v62;
        if (v56 != 8)
        {
          goto LABEL_14;
        }

        *&v72 = result;
        v28 = *v69;
        (*v69)(v62, &v72, v5);
        result = swift_unknownObjectRelease();
      }

      if (__OFADD__(v26, 1))
      {
        break;
      }

      v67 = v26 + 1;
      v66 = *v68;
      v66(v21, v29, v5);
      sub_1BCF21B0C();
      v30 = v72;
      swift_beginAccess();
      v77 = v30;

      v31 = v60;
      sub_1BCF21A3C();

      v65 = *(v11 - 8);
      v32 = (*(v65 + 48))(v31, 1, v11);
      (*v51)(v31, v61);
      if (v32 != 1)
      {
        sub_1BCF21B0C();
        v45 = v77;
        *&v72 = v59;
        *(&v72 + 1) = v5;
        v73 = v58;
        v74 = v57;
        v75 = v8;
        type metadata accessor for DispatchListenerTable.Failure(0, &v72);
        swift_getWitnessTable();
        swift_allocError();
        *v46 = v45;
        *(v46 + 4) = 0;
        swift_willThrow();
        return (*v50)(v21, v5);
      }

      sub_1BCF21B0C();
      v63 = v77;
      v33 = sub_1BCF21C5C();
      (*(*(v33 - 8) + 56))(v70, 1, 1, v33);
      sub_1BCF049CC(v55, &v72);
      v64 = v26;
      v34 = v53;
      v28(v53, v21, v5);
      v35 = (*(v71 + 80) + 96) & ~*(v71 + 80);
      v36 = swift_allocObject();
      v37 = v8;
      v38 = v59;
      v36[2] = v59;
      v36[3] = v5;
      v39 = v58;
      v40 = v57;
      v36[4] = v58;
      v36[5] = v40;
      v36[6] = v37;
      sub_1BCEFD350(&v72, (v36 + 7));
      v66(v36 + v35, v34, v5);
      v41 = v54;
      v42 = v38;
      v8 = v37;
      v11 = v48;
      v43 = v49;
      sub_1BCEFF088(v70, &unk_1BCF229F8, v36, v42, v5, v39, v40, v8, v54);
      (*(v65 + 56))(v41, 0, 1, v11);
      v76 = v63;
      swift_beginAccess();
      sub_1BCF21A1C();
      sub_1BCF21A4C();
      swift_endAccess();
      (*(v71 + 8))(v21, v5);
      v24 = v43;
      v44 = v64;
      result = sub_1BCF21B8C();
      v26 = v44 + 1;
      if (v67 == result)
      {
        return result;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
  }

  return result;
}

uint64_t sub_1BCF02D80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a7;
  v7[7] = v12;
  v7[4] = a4;
  v7[5] = a5;
  v7[2] = a2;
  v7[3] = a3;
  sub_1BCF21C3C();
  v7[8] = sub_1BCF21C2C();
  v9 = sub_1BCF21BDC();
  v7[9] = v9;
  v7[10] = v8;

  return MEMORY[0x1EEE6DFA0](sub_1BCF02E28, v9, v8);
}

uint64_t sub_1BCF02E28()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "Forwarding request", v4, 2u);
    MEMORY[0x1BFB32D20](v4, -1, -1);
  }

  v5 = *(v0 + 32);

  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  sub_1BCF21B0C();
  v8 = *(v0 + 96);
  v13 = (*(v7 + 8) + **(v7 + 8));
  v9 = swift_task_alloc();
  *(v0 + 88) = v9;
  *v9 = v0;
  v9[1] = sub_1BCF03038;
  v10 = *(v0 + 16);
  v11 = *(v0 + 24);

  return v13(v8, v10, v11, v6, v7);
}

uint64_t sub_1BCF03038()
{
  v1 = *v0;

  v2 = *(v1 + 80);
  v3 = *(v1 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1BCF03158, v3, v2);
}

uint64_t sub_1BCF03158()
{

  v1 = *(v0 + 8);

  return v1(0, 0xF000000000000000);
}

uint64_t sub_1BCF031C4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 472) = v2;

  if (v2)
  {
    v7 = v6[55];
    v8 = v6[56];
    v9 = sub_1BCF03648;
  }

  else
  {
    v6[60] = a2;
    v6[61] = a1;
    v7 = v6[55];
    v8 = v6[56];
    v9 = sub_1BCF032F8;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BCF032F8()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[45];

  (*(v2 + 8))(v1, v3);
  v4 = v0[60];
  v5 = v0[61];

  v6 = v0[1];

  return v6(v5, v4);
}

uint64_t sub_1BCF033EC()
{
  v2 = *v1;
  *(*v1 + 512) = v0;

  v3 = *(v2 + 448);
  v4 = *(v2 + 440);
  if (v0)
  {
    v5 = sub_1BCF03838;
  }

  else
  {
    v5 = sub_1BCF03528;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BCF03528()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[45];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v8 = v0[23];
  v7 = v0[24];

  v9 = v0[1];

  return v9(v8, v7);
}

uint64_t sub_1BCF03648()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[45];

  (*(v2 + 8))(v1, v3);
  v4 = v0[59];
  v5 = v4;
  v6 = sub_1BCF216EC();
  v7 = sub_1BCF21CCC();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v4;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BCEF6000, v6, v7, "Dispatch error: %@", v8, 0xCu);
    sub_1BCF05050(v9);
    MEMORY[0x1BFB32D20](v9, -1, -1);
    MEMORY[0x1BFB32D20](v8, -1, -1);
  }

  swift_getErrorValue();
  sub_1BCF20E14(v0[21], v0[22]);
  swift_willThrow();

  v12 = v0[1];

  return v12();
}

uint64_t sub_1BCF03838()
{
  v1 = v0[52];
  v2 = v0[49];
  v3 = v0[45];
  v5 = v0[36];
  v4 = v0[37];
  v6 = v0[35];

  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);
  v7 = v0[64];
  v8 = v7;
  v9 = sub_1BCF216EC();
  v10 = sub_1BCF21CCC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    v13 = v7;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 4) = v14;
    *v12 = v14;
    _os_log_impl(&dword_1BCEF6000, v9, v10, "Dispatch error: %@", v11, 0xCu);
    sub_1BCF05050(v12);
    MEMORY[0x1BFB32D20](v12, -1, -1);
    MEMORY[0x1BFB32D20](v11, -1, -1);
  }

  swift_getErrorValue();
  sub_1BCF20E14(v0[21], v0[22]);
  swift_willThrow();

  v15 = v0[1];

  return v15();
}

uint64_t sub_1BCF03A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 120) = v14;
  *(v8 + 128) = v15;
  *(v8 + 104) = v13;
  *(v8 + 88) = a7;
  *(v8 + 96) = a8;
  *(v8 + 72) = a5;
  *(v8 + 80) = a6;
  *(v8 + 56) = a1;
  *(v8 + 64) = a4;
  sub_1BCF21C3C();
  *(v8 + 136) = sub_1BCF21C2C();
  v10 = sub_1BCF21BDC();
  *(v8 + 144) = v10;
  *(v8 + 152) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BCF03B08, v10, v9);
}

uint64_t sub_1BCF03B08()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 64);
  v3 = *(v0 + 112);
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 32) = v3;
  *(v0 + 48) = v1;
  v4 = (v2 + *(type metadata accessor for DispatchListenerTable.Registration(0, v0 + 16) + 60));
  v10 = (*v4 + **v4);
  v5 = swift_task_alloc();
  *(v0 + 160) = v5;
  *v5 = v0;
  v5[1] = sub_1BCF03C28;
  v6 = *(v0 + 80);
  v7 = *(v0 + 88);
  v8 = *(v0 + 72);

  return v10(v8, v6, v7);
}

uint64_t sub_1BCF03C28(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 168) = v2;

  if (v2)
  {
    v7 = v6[18];
    v8 = v6[19];
    v9 = sub_1BCF03DD4;
  }

  else
  {
    v6[22] = a2;
    v6[23] = a1;
    v7 = v6[18];
    v8 = v6[19];
    v9 = sub_1BCF03D5C;
  }

  return MEMORY[0x1EEE6DFA0](v9, v7, v8);
}

uint64_t sub_1BCF03D5C()
{
  v1 = v0[22];
  v2 = v0[23];
  v3 = v0[7];

  *v3 = v2;
  v3[1] = v1;
  v4 = v0[1];

  return v4();
}

uint64_t sub_1BCF03DD4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t DispatchListenerTable.__deallocating_deinit()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

unint64_t sub_1BCF03EA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1BCF21A5C();

  return sub_1BCF03F04(a1, v6, a2, a3);
}

unint64_t sub_1BCF03F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
      v19 = sub_1BCF21A6C();
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

unint64_t sub_1BCF0408C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v12 = v23 - v11;
  if (sub_1BCF21B8C())
  {
    sub_1BCF21EAC();
    v13 = sub_1BCF21E9C();
  }

  else
  {
    v13 = MEMORY[0x1E69E7CC8];
  }

  result = sub_1BCF21B8C();
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
        if (sub_1BCF21B6C())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = sub_1BCF21E5C();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = sub_1BCF03EA8(v12, a2, v27);
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

uint64_t sub_1BCF043A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 56);
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1BCF05438;

  return sub_1BCEFF6E8(a1, a2, a3, v7);
}

uint64_t sub_1BCF04498(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v11 = v3[9];
  v10 = v3[10];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1BCF05438;

  return sub_1BCEFFA68(a1, a2, a3, v11, v10, v7, v8, v9);
}

uint64_t sub_1BCF04598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v11 = v3[9];
  v10 = v3[10];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1BCF05438;

  return sub_1BCF00528(a1, a2, a3, v11, v10, v7, v8, v9);
}

uint64_t sub_1BCF04698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v11 = v3[11];
  v10 = v3[12];
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1BCF05438;

  return sub_1BCF00F84(a1, a2, a3, v11, v10, v7, v8, v9);
}

uint64_t sub_1BCF047A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  v10 = (*(*(v8 - 8) + 80) + 96) & ~*(*(v8 - 8) + 80);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_1BCF048C0;

  return sub_1BCF02078(a1, a2, a3, (v3 + 7), v3 + v10, v7, v8, v9);
}

uint64_t sub_1BCF048C0(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1BCF049CC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_15Tm()
{
  v1 = *(v0 + 24);
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 96) & ~*(v2 + 80);
  __swift_destroy_boxed_opaque_existential_1((v0 + 56));
  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1BCF04AEC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 16);
  v8 = *(v3 + 24);
  v9 = (*(*(v8 - 8) + 80) + 96) & ~*(*(v8 - 8) + 80);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_1BCF05438;

  return sub_1BCF02D80(a1, a2, a3, v3 + 56, v3 + v9, v7, v8);
}

uint64_t dispatch thunk of DispatchListenerTable.register<A>(messageCode:priority:handler:)()
{
  return (*(*v0 + 168))();
}

{
  return (*(*v0 + 176))();
}

uint64_t sub_1BCF04DE4(uint64_t a1)
{
  v1 = sub_1BCF21C5C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t __swift_memcpy5_4(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1BCF04E7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 5))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BCF04EC4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = -a2;
    }
  }

  return result;
}

uint64_t sub_1BCF04F08(uint64_t a1)
{
  if (*(a1 + 4) <= 1u)
  {
    return *(a1 + 4);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1BCF04F20(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 4) = a2;
  return result;
}

uint64_t sub_1BCF04F40(uint64_t a1)
{
  v1 = *(a1 + 48);
  v2 = *(a1 + 32);
  v6[0] = *(a1 + 16);
  v6[1] = v2;
  v7 = v1;
  result = type metadata accessor for DispatchListenerTable.Priority(319, v6);
  if (v4 <= 0x3F)
  {
    v8 = 0;
    *&v6[0] = result;
    result = sub_1BCF05000();
    if (v5 <= 0x3F)
    {
      v9 = 0;
      *(&v6[0] + 1) = result;
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1BCF05000()
{
  result = qword_1EDDD21D8[0];
  if (!qword_1EDDD21D8[0])
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, qword_1EDDD21D8);
  }

  return result;
}

uint64_t sub_1BCF05050(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD2A750, &unk_1BCF232D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1BCF050B8(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1BCF0510C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_1BCF05160(uint64_t a1)
{
  v3 = v2;
  v5 = v1[4];
  v4 = v1[5];
  v7 = v1[7];
  v6 = v1[6];
  v8 = v1[8];
  v3[2] = v5;
  v3[3] = v4;
  v3[4] = v6;
  v3[5] = v7;
  v3[6] = v8;
  v9 = *(type metadata accessor for DispatchListenerTable.Registration(0, (v3 + 2)) - 8);
  v10 = (*(v9 + 80) + 72) & ~*(v9 + 80);
  v11 = (v10 + *(v9 + 64) + *(*(v5 - 8) + 80)) & ~*(*(v5 - 8) + 80);
  v12 = v1[3];
  v18 = v1[2];
  v13 = (v1 + ((*(*(v5 - 8) + 64) + v11 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = *v13;
  v15 = v13[1];
  v16 = swift_task_alloc();
  v3[7] = v16;
  *v16 = v3;
  v16[1] = sub_1BCF05330;

  return sub_1BCF03A54(a1, v18, v12, v1 + v10, v1 + v11, v14, v15, v5);
}

uint64_t sub_1BCF05330()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1BCF05424(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1BCF0510C(result, a2);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1BCF05490(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 33))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCF054B0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 33) = v3;
  return result;
}

uint64_t sub_1BCF054F0(uint64_t a1)
{
  v2 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v2 + 112) = a1;
  return v2;
}

uint64_t sub_1BCF05530(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF05558, v4, 0);
}

uint64_t sub_1BCF05558()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = sub_1BCF2170C();
  __swift_project_value_buffer(v1, qword_1EDDD2780);
  v2 = sub_1BCF216EC();
  v3 = sub_1BCF21CCC();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1BCEF6000, v2, v3, "Retrying connection via retry isolator", v4, 2u);
    MEMORY[0x1BFB32D20](v4, -1, -1);
  }

  v5 = swift_task_alloc();
  v0[7] = v5;
  *v5 = v0;
  v5[1] = sub_1BCF05330;
  v6 = v0[4];
  v7 = v0[5];
  v8 = v0[2];
  v9 = v0[3];

  return sub_1BCEF7BB0(v8, 0, v9, v6, v7);
}

uint64_t sub_1BCF056B8()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BCF05734(unsigned __int8 a1)
{
  sub_1BCF21F4C();
  MEMORY[0x1BFB32720](a1);
  return sub_1BCF21F6C();
}

uint64_t sub_1BCF057B8(uint64_t a1)
{
  sub_1BCF21F4C();
  sub_1BCF0570C(v3, *v1);
  return sub_1BCF21F6C();
}

uint64_t XPCDispatchClient.__allocating_init(serviceType:)(uint64_t *a1)
{
  v2 = swift_allocObject();
  XPCDispatchClient.init(serviceType:)(a1);
  return v2;
}

uint64_t *XPCDispatchClient.init(serviceType:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *v1;
  swift_defaultActor_initialize();
  v1[18] = 0;
  v1[15] = v2;
  v1[16] = v3;
  *(v1 + 136) = v4;
  v6 = *(v5 + 96);
  v8 = *(v5 + 80);
  v9 = v6;
  v10 = MEMORY[0x1E69E7678];
  type metadata accessor for DispatchClientTable(0, &v8);
  v1[14] = DispatchClientTable.__allocating_init()();
  return v1;
}

void sub_1BCF0591C()
{
  v1 = *(v0 + 144);
  if (v1)
  {
    [v1 setInterruptionHandler_];
    v1 = *(v0 + 144);
    if (v1)
    {
      [v1 setInvalidationHandler_];
      v1 = *(v0 + 144);
    }
  }

  [v1 invalidate];
  v2 = *(v0 + 144);
  *(v0 + 144) = 0;
}

uint64_t sub_1BCF05988(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *v1;
  v4 = *(v3 + 80);
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v2[7] = *(v5 + 64);
  v2[8] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF05A84, v1, 0);
}

uint64_t sub_1BCF05A84()
{
  v1 = v0[8];
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[4];
  (*(v3 + 16))(v1, v0[2], v2);
  v5 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v6 = swift_allocObject();
  v0[9] = v6;
  *(v6 + 2) = v2;
  *(v6 + 3) = *(v4 + 88);
  *(v6 + 4) = *(v4 + 96);
  (*(v3 + 32))(&v6[v5], v1, v2);
  v7 = swift_task_alloc();
  v0[10] = v7;
  *v7 = v0;
  v7[1] = sub_1BCF05BD0;
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return sub_1BCEF7BB0(v7, 1, &unk_1BCF22B80, v6, v8);
}

uint64_t sub_1BCF05BD0()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 24);
    v4 = sub_1BCF05D5C;
  }

  else
  {
    v5 = *(v2 + 24);

    v4 = sub_1BCF05CF8;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BCF05CF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF05D5C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF05DC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[22] = a4;
  v6[23] = a6;
  v6[20] = a2;
  v6[21] = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
  v6[24] = v7;
  v6[25] = *(v7 - 8);
  v6[26] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF05E98, 0, 0);
}

uint64_t sub_1BCF05E98()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 208);
  v3 = *(v0 + 192);
  v7 = *(v0 + 160);
  sub_1BCF21B0C();
  v6 = *(v0 + 224);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1BCF06080;
  swift_continuation_init();
  *(v0 + 136) = v3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  sub_1BCF21BEC();
  (*(v1 + 32))(boxed_opaque_existential_0, v2, v3);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BCF0A164;
  *(v0 + 104) = &block_descriptor_87;
  [v7 receiveWithMessageCode:v6 messageData:0 completionHandler:v0 + 80];
  (*(v1 + 8))(boxed_opaque_existential_0, v3);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1BCF06080()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1BCF06200;
  }

  else
  {
    v2 = sub_1BCF06190;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BCF06190()
{
  sub_1BCF05424(v0[18], v0[19]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BCF06200()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF06274()
{
  v2 = *v1;
  v2[14] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x1EEE6DFA0](sub_1BCF063BC, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1BCF063BC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF06428()
{
  v1 = *(*v0 + 48);
  *(*v0 + 248) = v1;
  if (v1)
  {
    v2 = sub_1BCF0663C;
  }

  else
  {
    v2 = sub_1BCF06538;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BCF06538()
{
  if (v0[19] >> 60 == 15)
  {
    type metadata accessor for XPCDispatchClient.Failure(0, v0[23], v0[25], v0[26]);
    swift_getWitnessTable();
    swift_allocError();
    *v1 = 1;
    swift_willThrow();
  }

  else
  {
    (*(v0[27] + 16))(v0[18]);
  }

  v2 = v0[1];

  return v2();
}

uint64_t sub_1BCF0663C()
{
  swift_willThrow();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF066AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v7 = *v4;
  v5[7] = *v4;
  v8 = *(v7 + 80);
  v5[8] = v8;
  v9 = *(v8 - 8);
  v5[9] = v9;
  v5[10] = *(v9 + 64);
  v5[11] = swift_task_alloc();
  v10 = *(a3 - 8);
  v5[12] = v10;
  v5[13] = *(v10 + 64);
  v5[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF0680C, v4, 0);
}

uint64_t sub_1BCF0680C()
{
  v2 = v0[13];
  v1 = v0[14];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v16 = v3;
  v7 = v0[7];
  v6 = v0[8];
  v8 = v0[4];
  v17 = v0[5];
  v9 = v0[2];
  (*(v4 + 16))(v1, v0[3], v8);
  (*(v5 + 16))(v3, v9, v6);
  v10 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  v0[15] = v12;
  *(v12 + 2) = v6;
  *(v12 + 3) = v8;
  *(v12 + 4) = *(v7 + 88);
  *(v12 + 5) = *(v7 + 96);
  *(v12 + 6) = v17;
  (*(v4 + 32))(&v12[v10], v1, v8);
  (*(v5 + 32))(&v12[v11], v16, v6);
  v13 = swift_task_alloc();
  v0[16] = v13;
  *v13 = v0;
  v13[1] = sub_1BCF069D0;
  v14 = MEMORY[0x1E69E7CA8] + 8;

  return sub_1BCEF7BB0(v13, 1, &unk_1BCF22BB8, v12, v14);
}

uint64_t sub_1BCF069D0()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_1BCF06B68;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1BCF06AF8;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BCF06AF8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF06B68()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF06BE0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a8;
  v8[26] = v12;
  v8[23] = a5;
  v8[24] = a6;
  v8[21] = a3;
  v8[22] = a4;
  v8[20] = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
  v8[27] = v9;
  v8[28] = *(v9 - 8);
  v8[29] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF06CC0, 0, 0);
}

uint64_t sub_1BCF06CC0()
{
  *(v0 + 240) = (*(*(v0 + 208) + 8))(*(v0 + 192));
  *(v0 + 248) = v1;
  v2 = *(v0 + 224);
  v3 = *(v0 + 232);
  v4 = *(v0 + 216);
  v9 = *(v0 + 160);
  sub_1BCF21B0C();
  v8 = *(v0 + 272);
  v5 = sub_1BCF215AC();
  *(v0 + 256) = v5;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1BCF06F48;
  swift_continuation_init();
  *(v0 + 136) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  sub_1BCF21BEC();
  (*(v2 + 32))(boxed_opaque_existential_0, v3, v4);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BCF0A164;
  *(v0 + 104) = &block_descriptor_61;
  [v9 receiveWithMessageCode:v8 messageData:v5 completionHandler:?];
  (*(v2 + 8))(boxed_opaque_existential_0, v4);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1BCF06F48()
{
  v1 = *(*v0 + 48);
  *(*v0 + 264) = v1;
  if (v1)
  {
    v2 = sub_1BCF070D4;
  }

  else
  {
    v2 = sub_1BCF07058;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BCF07058()
{
  v1 = v0[32];
  sub_1BCF0510C(v0[30], v0[31]);
  sub_1BCF05424(v0[18], v0[19]);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1BCF070D4()
{
  v1 = v0[32];
  v2 = v0[30];
  v3 = v0[31];
  swift_willThrow();
  sub_1BCF0510C(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BCF07164(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v10 = *v7;
  v8[10] = *v7;
  v11 = *(v10 + 80);
  v8[11] = v11;
  v12 = *(v11 - 8);
  v8[12] = v12;
  v8[13] = *(v12 + 64);
  v8[14] = swift_task_alloc();
  v13 = *(a4 - 8);
  v8[15] = v13;
  v8[16] = *(v13 + 64);
  v8[17] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF072C8, v7, 0);
}

uint64_t sub_1BCF072C8()
{
  v2 = *(v0 + 128);
  v1 = *(v0 + 136);
  v3 = *(v0 + 112);
  v4 = *(v0 + 120);
  v19 = v3;
  v5 = *(v0 + 96);
  v7 = *(v0 + 80);
  v6 = *(v0 + 88);
  v8 = *(v0 + 24);
  v17 = *(v0 + 40);
  v9 = *(v0 + 40);
  v18 = *(v0 + 56);
  (*(v4 + 16))(v1, *(v0 + 32), v9);
  (*(v5 + 16))(v3, v8, v6);
  v10 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v11 = (v2 + *(v5 + 80) + v10) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v0 + 144) = v12;
  *(v12 + 16) = v6;
  *(v12 + 24) = v17;
  *(v12 + 40) = *(v7 + 88);
  *(v12 + 48) = *(v7 + 96);
  *(v12 + 56) = v18;
  (*(v4 + 32))(v12 + v10, v1, v9);
  (*(v5 + 32))(v12 + v11, v19, v6);
  v13 = swift_task_alloc();
  *(v0 + 152) = v13;
  *v13 = v0;
  v13[1] = sub_1BCF074A8;
  v14 = *(v0 + 48);
  v15 = *(v0 + 16);

  return sub_1BCEF7BB0(v15, 1, &unk_1BCF22BD0, v12, v14);
}

uint64_t sub_1BCF074A8()
{
  v2 = *v1;
  v2[20] = v0;

  if (v0)
  {
    v3 = v2[9];

    return MEMORY[0x1EEE6DFA0](sub_1BCF075FC, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_1BCF075FC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF07674(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 240) = v13;
  *(v8 + 224) = v12;
  *(v8 + 208) = a7;
  *(v8 + 216) = a8;
  *(v8 + 192) = a5;
  *(v8 + 200) = a6;
  *(v8 + 176) = a3;
  *(v8 + 184) = a4;
  *(v8 + 160) = a1;
  *(v8 + 168) = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
  *(v8 + 248) = v9;
  *(v8 + 256) = *(v9 - 8);
  *(v8 + 264) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1BCF07760, 0, 0);
}

uint64_t sub_1BCF07760()
{
  v1 = (*(*(v0 + 232) + 8))(*(v0 + 200));
  *(v0 + 272) = 0;
  *(v0 + 280) = v1;
  *(v0 + 288) = v2;
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  v10 = *(v0 + 168);
  sub_1BCF21B0C();
  v9 = *(v0 + 312);
  v6 = sub_1BCF215AC();
  *(v0 + 296) = v6;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 144;
  *(v0 + 24) = sub_1BCF079EC;
  swift_continuation_init();
  *(v0 + 136) = v5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E8, &unk_1BCF22B00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  sub_1BCF21BEC();
  (*(v3 + 32))(boxed_opaque_existential_0, v4, v5);
  *(v0 + 80) = MEMORY[0x1E69E9820];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_1BCF0A164;
  *(v0 + 104) = &block_descriptor_57;
  [v10 receiveWithMessageCode:v9 messageData:v6 completionHandler:?];
  (*(v3 + 8))(boxed_opaque_existential_0, v5);

  return MEMORY[0x1EEE6DEC8](v0 + 16);
}

uint64_t sub_1BCF079EC()
{
  v1 = *(*v0 + 48);
  *(*v0 + 304) = v1;
  if (v1)
  {
    v2 = sub_1BCF07C74;
  }

  else
  {
    v2 = sub_1BCF07AFC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BCF07AFC()
{
  v1 = v0[19];
  v2 = v0[37];
  if (v1 >> 60 == 15)
  {
    v4 = v0[35];
    v3 = v0[36];
    v6 = v0[27];
    v5 = v0[28];
    v7 = v0[24];

    type metadata accessor for XPCDispatchClient.Failure(0, v7, v6, v5);
    swift_getWitnessTable();
    swift_allocError();
    *v8 = 1;
    swift_willThrow();
    v9 = v4;
    v10 = v3;
  }

  else
  {
    v11 = v0[30];
    v12 = v0[26];
    v13 = v0[18];

    (*(v11 + 16))(v13, v1, v12, v11);
    v9 = v0[35];
    v10 = v0[36];
  }

  sub_1BCF0510C(v9, v10);

  v14 = v0[1];

  return v14();
}

uint64_t sub_1BCF07C74()
{
  v1 = v0[37];
  v2 = v0[35];
  v3 = v0[36];
  swift_willThrow();
  sub_1BCF0510C(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BCF07D04()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = *(v2 + 56);
    v4 = sub_1BCF07E44;
  }

  else
  {
    v5 = *(v2 + 56);

    v4 = sub_1BCF07E28;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BCF07E44()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF07EA8()
{
  v1 = *(*v0 + 112);
  *(*v0 + 376) = v1;
  if (v1)
  {
    v2 = sub_1BCF08230;
  }

  else
  {
    v2 = sub_1BCF07FB8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BCF07FB8()
{
  v1 = *(v0 + 368);
  **(v0 + 304) = *(v0 + 288);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BCF08030()
{
  v1 = *(*v0 + 48);
  *(*v0 + 392) = v1;
  if (v1)
  {
    v2 = sub_1BCF081B8;
  }

  else
  {
    v2 = sub_1BCF08140;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BCF08140()
{
  v1 = *(v0 + 384);
  **(v0 + 304) = *(v0 + 272);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BCF081B8()
{
  v1 = *(v0 + 384);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1BCF08230()
{
  v1 = *(v0 + 368);
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

void sub_1BCF082A8(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
    sub_1BCF21BFC();
  }

  else
  {
    if (a2)
    {
      v6 = a2;
      sub_1BCF215BC();
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F8, &qword_1BCF22E08);
    sub_1BCF21C0C();
  }
}

void sub_1BCF08374(uint64_t a1, unint64_t a2, const char *a3)
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v6 = sub_1BCF2170C();
  __swift_project_value_buffer(v6, qword_1EDDD2780);

  oslog = sub_1BCF216EC();
  v7 = sub_1BCF21CCC();

  if (os_log_type_enabled(oslog, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v11 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_1BCEF84F4(a1, a2, &v11);
    _os_log_impl(&dword_1BCEF6000, oslog, v7, a3, v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB32D20](v9, -1, -1);
    MEMORY[0x1BFB32D20](v8, -1, -1);
  }
}

uint64_t sub_1BCF084CC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  if (v0)
  {
    v3 = *(v2 + 48);
    v4 = sub_1BCF08658;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_1BCF085F4;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1BCF085F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF08658()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF086C4(void *a1, char a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a5;
  v9 = a4;
  v45 = a3;
  v12 = *a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v13 = sub_1BCF21C1C();
  v43 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v41 = &v39 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v44 = &v39 - v16;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v17 = sub_1BCF2170C();
  __swift_project_value_buffer(v17, qword_1EDDD2780);
  v18 = a1;
  v19 = sub_1BCF216EC();
  v20 = sub_1BCF21CCC();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v39 = v9;
    v40 = v13;
    v22 = a7;
    v23 = a6;
    v24 = v21;
    v25 = v12;
    v26 = a2;
    v27 = swift_slowAlloc();
    *v24 = 138412290;
    v28 = a1;
    v29 = _swift_stdlib_bridgeErrorToNSError();
    *(v24 + 4) = v29;
    *v27 = v29;
    _os_log_impl(&dword_1BCEF6000, v19, v20, "XPC connection error: %@", v24, 0xCu);
    sub_1BCEF90DC(v27, qword_1EBD2A750, &unk_1BCF232D0);
    v30 = v27;
    a2 = v26;
    v12 = v25;
    MEMORY[0x1BFB32D20](v30, -1, -1);
    v31 = v24;
    a6 = v23;
    a7 = v22;
    v9 = v39;
    v13 = v40;
    MEMORY[0x1BFB32D20](v31, -1, -1);
  }

  if ((a2 & 1) != 0 && (swift_getErrorValue(), sub_1BCF20F94(v46, v47) == 4097))
  {
    v32 = sub_1BCF21C5C();
    (*(*(v32 - 8) + 56))(v44, 1, 1, v32);
    v33 = v43;
    v34 = v41;
    (*(v43 + 16))(v41, v45, v13);
    v35 = (*(v33 + 80) + 88) & ~*(v33 + 80);
    v36 = swift_allocObject();
    *(v36 + 2) = 0;
    *(v36 + 3) = 0;
    *(v36 + 4) = v12[10];
    *(v36 + 5) = a7;
    *(v36 + 6) = v12[11];
    *(v36 + 7) = v12[12];
    *(v36 + 8) = v9;
    *(v36 + 9) = v42;
    *(v36 + 10) = a6;
    (*(v33 + 32))(&v36[v35], v34, v13);

    sub_1BCF0E794(0, 0, v44, &unk_1BCF22E50, v36);
  }

  else
  {
    v48 = a1;
    v38 = a1;
    return sub_1BCF21BFC();
  }
}

uint64_t sub_1BCF08AD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[3] = a7;
  v8[4] = a8;
  v8[5] = *(a8 - 8);
  v8[6] = swift_task_alloc();
  v12 = swift_task_alloc();
  v8[7] = v12;
  v13 = swift_task_alloc();
  v8[8] = v13;
  *v13 = v8;
  v13[1] = sub_1BCF08C00;

  return sub_1BCF05530(v12, a5, a6, a8);
}

uint64_t sub_1BCF08C00()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1BCF08E08;
  }

  else
  {
    v2 = sub_1BCF08D14;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1BCF08D14()
{
  v1 = v0[7];
  v2 = v0[4];
  v3 = v0[5];
  (*(v3 + 16))(v0[6], v1, v2);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  sub_1BCF21C1C();
  sub_1BCF21C0C();
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1BCF08E08()
{
  v0[2] = v0[9];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  sub_1BCF21C1C();
  sub_1BCF21BFC();

  v1 = v0[1];

  return v1();
}

uint64_t sub_1BCF08EC0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1BCF0A150;
  }

  else
  {
    v2 = sub_1BCF0A154;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t XPCDispatchClient.deinit()
{

  sub_1BCF0953C(*(v0 + 120), *(v0 + 128), *(v0 + 136));

  swift_defaultActor_destroy();
  return v0;
}

uint64_t XPCDispatchClient.__deallocating_deinit()
{
  XPCDispatchClient.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

uint64_t sub_1BCF0903C(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t sub_1BCF0914C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = (*(*(v6 - 8) + 80) + 40) & ~*(*(v6 - 8) + 80);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1BCF0A158;

  return sub_1BCF05DC8(a1, a2, v2 + v9, v6, v7, v8);
}

uint64_t sub_1BCF0924C(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = (*(*(v7 - 8) + 80) + 56) & ~*(*(v7 - 8) + 80);
  v11 = (v10 + *(*(v7 - 8) + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1BCF0A158;

  return sub_1BCF06BE0(a1, a2, v2 + v10, v2 + v11, v6, v7, v8, v9);
}

uint64_t sub_1BCF093BC(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = (*(*(v7 - 8) + 80) + 72) & ~*(*(v7 - 8) + 80);
  v11 = (v10 + *(*(v7 - 8) + 64) + *(*(v6 - 8) + 80)) & ~*(*(v6 - 8) + 80);
  v12 = swift_task_alloc();
  *(v4 + 16) = v12;
  *v12 = v4;
  v12[1] = sub_1BCF0A158;

  return sub_1BCF07674(a1, a2, v2 + v10, v2 + v11, v6, v7, v8, v9);
}

uint64_t sub_1BCF0953C(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t dispatch thunk of XPCDispatchClient.send(_:)(uint64_t a1)
{
  v6 = (*(*v1 + 176) + **(*v1 + 176));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1BCF0A158;

  return v6(a1);
}

uint64_t dispatch thunk of XPCDispatchClient.send<A>(_:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 192) + **(*v4 + 192));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_1BCF0A158;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of XPCDispatchClient.send<A, B>(_:request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v18 = (*(*v7 + 200) + **(*v7 + 200));
  v16 = swift_task_alloc();
  *(v8 + 16) = v16;
  *v16 = v8;
  v16[1] = sub_1BCF099D4;

  return v18(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t sub_1BCF099D4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of XPCDispatchClient.forward(messageCode:messageData:originatingProcessIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14 = (*(*v5 + 208) + **(*v5 + 208));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = sub_1BCF048C0;

  return v14(a1, a2, a3, a4, a5 & 1);
}

uint64_t sub_1BCF09C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_1BCF09C74(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1BCF09CBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t sub_1BCF09D00(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t sub_1BCF09D88(void *a1)
{
  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v4 = *(sub_1BCF21C1C() - 8);
  v5 = (*(v4 + 80) + 49) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1 + 48);
  v8 = *(v1 + v6);
  v9 = (v1 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];

  return sub_1BCF086C4(a1, v7, v1 + v5, v8, v10, v11, v3);
}

uint64_t sub_1BCF09E6C(uint64_t a1)
{
  v3 = v2;
  v5 = v1[5];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EBD2A5F0, qword_1BCF22E10);
  v6 = *(sub_1BCF21C1C() - 8);
  v7 = (*(v6 + 80) + 88) & ~*(v6 + 80);
  v8 = v1[2];
  v9 = v1[3];
  v10 = v1[8];
  v11 = v1[9];
  v12 = v1[10];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1BCF099D4;

  return sub_1BCF08AD4(a1, v8, v9, v10, v11, v12, v1 + v7, v5);
}

uint64_t sub_1BCF09FC4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1BCF0A054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1BCF0A168(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 60) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF0A190, 0, 0);
}

uint64_t sub_1BCF0A190()
{
  *(v0 + 56) = *(v0 + 60);
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_1BCF0A238;
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1BCF14BE8(v0 + 56, v2, v3);
}

uint64_t sub_1BCF0A238()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BCF0A36C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1BCF0A384(uint64_t a1, uint64_t a2, int a3, void *a4, const void *a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;
  *(v13 + 32) = v12;
  *(v13 + 40) = a1;
  v14 = sub_1BCF21C5C();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_1BCF22F88;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_1BCF22F90;
  v16[5] = v15;
  v17 = a4;

  sub_1BCF10714(0, 0, v11, &unk_1BCF233B0, v16);
}

uint64_t sub_1BCF0A518(int a1, void *a2, void *aBlock, uint64_t a4)
{
  v4[2] = a4;
  v4[3] = _Block_copy(aBlock);
  if (a2)
  {
    v7 = a2;

    a2 = sub_1BCF215BC();
    v9 = v8;
  }

  else
  {

    v9 = 0xF000000000000000;
  }

  v4[4] = a2;
  v4[5] = v9;
  v10 = swift_task_alloc();
  v4[6] = v10;
  *v10 = v4;
  v10[1] = sub_1BCF0A618;

  return sub_1BCF0A168(a1, a2, v9);
}

uint64_t sub_1BCF0A618()
{
  v2 = v0;
  v4 = *v1;
  v3 = *v1;
  v5 = *(*v1 + 40);
  v6 = *(*v1 + 32);
  v7 = *v1;

  sub_1BCF05424(v6, v5);
  v8 = *(v3 + 24);
  if (v2)
  {
    v9 = sub_1BCF2159C();

    (*(v8 + 16))(v8, v9);
  }

  else
  {
    (*(v8 + 16))(*(v3 + 24), 0);
  }

  _Block_release(*(v4 + 24));
  v10 = *(v7 + 8);

  return v10();
}

uint64_t sub_1BCF0A7DC()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1BCF0A814()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1BCF099D4;

  return sub_1BCF0A518(v2, v3, v4, v5);
}

uint64_t objectdestroy_6Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t dispatch thunk of DispatchForwardingConnection.forward(messageCode:messageData:originatingProcessIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 8) + **(a7 + 8));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_1BCF048C0;

  return v17(a1, a2, a3, a4, a5 & 1, a6, a7);
}

uint64_t dispatch thunk of DispatchReverseForwardingConnection.reverseForward(messageCode:messageData:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BCF099D4;

  return v13(a1, a2, a3, a4, a5);
}

void sub_1BCF0ABB0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

char *XPCDispatchListener.init(endpoint:requiredEntitlements:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = a1[1];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x50);
  v7 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x58);
  v8 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x60);
  v16[0] = &type metadata for XPCHeader;
  v16[1] = v6;
  v16[2] = &protocol witness table for XPCHeader;
  v16[3] = v7;
  v16[4] = v8;
  type metadata accessor for DispatchListenerTable(0, v16);
  *&v2[qword_1EBD2A690] = DispatchListenerTable.__allocating_init()();
  *&v2[qword_1EBD2A698] = a2;
  if (MEMORY[0x1E69E7CC0] >> 62 && sub_1BCF21DBC())
  {
    sub_1BCF0D9D0(MEMORY[0x1E69E7CC0]);
  }

  else
  {
    v9 = MEMORY[0x1E69E7CD0];
  }

  *&v2[qword_1EBD2A6A0] = v9;
  if (v5)
  {
    v10 = objc_allocWithZone(MEMORY[0x1E696B0D8]);
    v11 = sub_1BCF21A7C();
    v12 = [v10 initWithMachServiceName_];
  }

  else
  {
    v12 = [objc_opt_self() serviceListener];
  }

  *&v3[qword_1EBD2A6A8] = v12;
  v15.receiver = v3;
  v15.super_class = type metadata accessor for XPCDispatchListener(0, v6, v7, v8);
  v13 = objc_msgSendSuper2(&v15, sel_init);
  [*(v13 + qword_1EBD2A6A8) setDelegate_];
  return v13;
}

id sub_1BCF0AE64()
{
  v1 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v2 = sub_1BCF2170C();
  __swift_project_value_buffer(v2, qword_1EDDD2780);
  v3 = sub_1BCF216EC();
  v4 = sub_1BCF21CCC();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_1BCEF6000, v3, v4, "Listener starting", v5, 2u);
    MEMORY[0x1BFB32D20](v5, -1, -1);
  }

  v6 = *(v1 + qword_1EBD2A6A8);

  return [v6 resume];
}

uint64_t sub_1BCF0AF7C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *MEMORY[0x1E69E7D40] & *v1;
  sub_1BCF21C3C();
  v2[5] = sub_1BCF21C2C();
  v4 = sub_1BCF21BDC();

  return MEMORY[0x1EEE6DFA0](sub_1BCF0B04C, v4, v3);
}

uint64_t sub_1BCF0B04C()
{

  sub_1BCF21B0C();
  sub_1BCF0B988(*(v0 + 48), 0, 0xF000000000000000);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF0B0DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *MEMORY[0x1E69E7D40] & *v4;
  sub_1BCF21C3C();
  v5[8] = sub_1BCF21C2C();
  v7 = sub_1BCF21BDC();

  return MEMORY[0x1EEE6DFA0](sub_1BCF0B1B4, v7, v6);
}

uint64_t sub_1BCF0B1B4()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);

  sub_1BCF21B0C();
  v3 = *(v0 + 72);
  v4 = (*(v1 + 8))(v2, v1);
  v5 = v3;
  v7 = v6;
  sub_1BCF0B988(v5, v4, v6);
  sub_1BCF0510C(v4, v7);
  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1BCF0B2A4(int a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a3;
  *(v4 + 32) = v3;
  *(v4 + 16) = a2;
  *(v4 + 48) = a1;
  sub_1BCF21C3C();
  *(v4 + 40) = sub_1BCF21C2C();
  v6 = sub_1BCF21BDC();

  return MEMORY[0x1EEE6DFA0](sub_1BCF0B344, v6, v5);
}

uint64_t sub_1BCF0B344()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v3 = *(v0 + 48);

  sub_1BCF0B988(v3, v2, v1);
  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1BCF0B3CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF0B3F0, 0, 0);
}

uint64_t sub_1BCF0B3F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    sub_1BCF21C3C();
    *(v0 + 72) = sub_1BCF21C2C();
    v3 = sub_1BCF21BDC();

    return MEMORY[0x1EEE6DFA0](sub_1BCF0B4E8, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1BCF0B4E8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  sub_1BCF0CA04(v2);

  return MEMORY[0x1EEE6DFA0](sub_1BCF0E790, 0, 0);
}

uint64_t sub_1BCF0B560(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, const char *a6, uint64_t a7, uint64_t a8)
{
  v34 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v32 - v14;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v16 = sub_1BCF2170C();
  __swift_project_value_buffer(v16, qword_1EDDD2780);
  v17 = sub_1BCF216EC();
  v18 = sub_1BCF21CCC();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v33 = v15;
    v20 = a3;
    v21 = a4;
    v22 = a5;
    v23 = a8;
    v24 = v19;
    *v19 = 0;
    _os_log_impl(&dword_1BCEF6000, v17, v18, v34, v19, 2u);
    v25 = v24;
    a8 = v23;
    a5 = v22;
    a4 = v21;
    a3 = v20;
    v15 = v33;
    MEMORY[0x1BFB32D20](v25, -1, -1);
  }

  v26 = sub_1BCF21C5C();
  (*(*(v26 - 8) + 56))(v15, 1, 1, v26);
  v27 = swift_allocObject();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakInit();

  v29 = swift_allocObject();
  v29[2] = 0;
  v29[3] = 0;
  v29[4] = a3;
  v29[5] = a4;
  v29[6] = a5;
  v29[7] = v27;
  v29[8] = a2;
  v30 = a2;
  sub_1BCF0EA84(0, 0, v15, a8, v29);
}

uint64_t sub_1BCF0B7CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[5] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1BCF0B7F0, 0, 0);
}

uint64_t sub_1BCF0B7F0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 64) = Strong;
  if (Strong)
  {
    sub_1BCF21C3C();
    *(v0 + 72) = sub_1BCF21C2C();
    v3 = sub_1BCF21BDC();

    return MEMORY[0x1EEE6DFA0](sub_1BCF0B8E8, v3, v2);
  }

  else
  {
    **(v0 + 40) = 1;
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_1BCF0B8E8()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  sub_1BCF0CA04(v2);

  return MEMORY[0x1EEE6DFA0](sub_1BCF0B960, 0, 0);
}

void *sub_1BCF0B988(int a1, uint64_t a2, unint64_t a3)
{
  v46 = a2;
  v47 = a3;
  v45 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v41 - v8;
  v10 = qword_1EBD2A6A0;
  swift_beginAccess();
  v11 = *(v3 + v10);
  if ((v11 & 0xC000000000000001) != 0)
  {

    sub_1BCF21DAC();
    sub_1BCEFA814();
    sub_1BCF0E5C4();
    result = sub_1BCF21C9C();
    v11 = v57;
    v13 = v58;
    v15 = v59;
    v14 = v60;
    v16 = v61;
  }

  else
  {
    v17 = -1 << *(v11 + 32);
    v13 = v11 + 56;
    v15 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v16 = v19 & *(v11 + 56);

    v14 = 0;
  }

  v41[1] = v15;
  v20 = (v15 + 64) >> 6;
  v43 = v11;
  v42 = v13;
  v44 = v20;
  while (v11 < 0)
  {
    v26 = sub_1BCF21DDC();
    if (!v26)
    {
      return sub_1BCF0E61C(v11);
    }

    v51 = v26;
    sub_1BCEFA814();
    swift_dynamicCast();
    v25 = v52;
    v23 = v14;
    v24 = v16;
    if (!v52)
    {
      return sub_1BCF0E61C(v11);
    }

LABEL_19:
    v50 = v24;
    v27 = sub_1BCF21C5C();
    v48 = *(v27 - 8);
    (*(v48 + 56))(v9, 1, 1, v27);
    sub_1BCF21C3C();
    v28 = v25;
    v29 = v46;
    v30 = v9;
    v31 = v7;
    v32 = v47;
    sub_1BCEFC5E0(v46, v47);
    v33 = sub_1BCF21C2C();
    v34 = swift_allocObject();
    *(v34 + 16) = v33;
    *(v34 + 24) = MEMORY[0x1E69E85E0];
    *(v34 + 32) = v45;
    v49 = v28;
    *(v34 + 40) = v28;
    *(v34 + 48) = v29;
    v35 = v48;
    *(v34 + 56) = v32;
    v7 = v31;
    v9 = v30;
    sub_1BCF0E6FC(v30, v7);
    LODWORD(v33) = (*(v35 + 48))(v7, 1, v27);

    if (v33 == 1)
    {
      sub_1BCEF90DC(v7, &qword_1EBD2A5E0, &unk_1BCF22AE0);
    }

    else
    {
      sub_1BCF21C4C();
      (*(v35 + 8))(v7, v27);
    }

    v36 = *(v34 + 16);
    swift_unknownObjectRetain();

    v16 = v50;
    if (v36)
    {
      swift_getObjectType();
      v37 = sub_1BCF21BDC();
      v39 = v38;
      swift_unknownObjectRelease();
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    sub_1BCEF90DC(v9, &qword_1EBD2A5E0, &unk_1BCF22AE0);
    v40 = swift_allocObject();
    *(v40 + 16) = &unk_1BCF23118;
    *(v40 + 24) = v34;
    if (v39 | v37)
    {
      v53 = 0;
      v54 = 0;
      v55 = v37;
      v56 = v39;
    }

    v11 = v43;
    v13 = v42;
    swift_task_create();

    v14 = v23;
    v20 = v44;
  }

  v21 = v14;
  v22 = v16;
  v23 = v14;
  if (v16)
  {
LABEL_15:
    v24 = (v22 - 1) & v22;
    v25 = *(*(v11 + 48) + ((v23 << 9) | (8 * __clz(__rbit64(v22)))));
    if (!v25)
    {
      return sub_1BCF0E61C(v11);
    }

    goto LABEL_19;
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      return sub_1BCF0E61C(v11);
    }

    v22 = *(v13 + 8 * v23);
    ++v21;
    if (v22)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1BCF0BE6C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 272) = a6;
  *(v7 + 280) = a7;
  *(v7 + 264) = a5;
  *(v7 + 368) = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A738, &unk_1BCF23128);
  *(v7 + 288) = v8;
  *(v7 + 296) = *(v8 - 8);
  *(v7 + 304) = swift_task_alloc();
  sub_1BCF21C3C();
  *(v7 + 312) = sub_1BCF21C2C();
  v10 = sub_1BCF21BDC();
  *(v7 + 320) = v10;
  *(v7 + 328) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1BCF0BF74, v10, v9);
}

uint64_t sub_1BCF0BF74()
{
  v33 = v0;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 264);
  v2 = sub_1BCF2170C();
  *(v0 + 336) = __swift_project_value_buffer(v2, qword_1EDDD2780);
  v3 = v1;
  v4 = sub_1BCF216EC();
  v5 = sub_1BCF21CCC();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 264);
    v7 = *(v0 + 368);
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v32 = v9;
    *v8 = 67109378;
    *(v8 + 4) = v7;
    *(v8 + 8) = 2080;
    v10 = [v6 endpoint];
    v11 = [v10 description];

    v12 = sub_1BCF21A8C();
    v14 = v13;

    v15 = sub_1BCEF84F4(v12, v14, &v32);

    *(v8 + 10) = v15;
    _os_log_impl(&dword_1BCEF6000, v4, v5, "Broadcasting message code %u to connection: %s", v8, 0x12u);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1BFB32D20](v9, -1, -1);
    MEMORY[0x1BFB32D20](v8, -1, -1);
  }

  v16 = *(v0 + 264);
  *(v0 + 176) = sub_1BCF0C88C;
  *(v0 + 184) = 0;
  *(v0 + 144) = MEMORY[0x1E69E9820];
  *(v0 + 152) = 1107296256;
  *(v0 + 160) = sub_1BCF0ABB0;
  *(v0 + 168) = &block_descriptor_41;
  v17 = _Block_copy((v0 + 144));
  v18 = [v16 remoteObjectProxyWithErrorHandler_];
  _Block_release(v17);
  sub_1BCF21D6C();
  swift_unknownObjectRelease();
  sub_1BCEF8718(v0 + 192, v0 + 224);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBD2A740, &unk_1BCF23138);
  if (swift_dynamicCast())
  {
    v19 = *(v0 + 280);
    v31 = *(v0 + 256);
    *(v0 + 344) = v31;
    if (v19 >> 60 == 15)
    {
      v20 = 0;
    }

    else
    {
      v20 = sub_1BCF215AC();
    }

    *(v0 + 352) = v20;
    v26 = *(v0 + 296);
    v27 = *(v0 + 304);
    v28 = *(v0 + 288);
    v30 = *(v0 + 368);
    *(v0 + 16) = v0;
    *(v0 + 24) = sub_1BCF0C48C;
    swift_continuation_init();
    *(v0 + 136) = v28;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 112));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5F0, qword_1BCF22E10);
    sub_1BCF21BEC();
    (*(v26 + 32))(boxed_opaque_existential_0, v27, v28);
    *(v0 + 80) = MEMORY[0x1E69E9820];
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_1BCF0C974;
    *(v0 + 104) = &block_descriptor_44;
    [v31 receiveWithMessageCode:v30 messageData:v20 completionHandler:v0 + 80];
    (*(v26 + 8))(boxed_opaque_existential_0, v28);

    return MEMORY[0x1EEE6DEC8](v0 + 16);
  }

  else
  {

    v21 = sub_1BCF216EC();
    v22 = sub_1BCF21CBC();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_1BCEF6000, v21, v22, "Unexpected interface mismatch", v23, 2u);
      MEMORY[0x1BFB32D20](v23, -1, -1);
    }

    __swift_destroy_boxed_opaque_existential_1((v0 + 192));

    v24 = *(v0 + 8);

    return v24();
  }
}

uint64_t sub_1BCF0C48C()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 360) = v2;
  v3 = *(v1 + 328);
  v4 = *(v1 + 320);
  if (v2)
  {
    v5 = sub_1BCF0C63C;
  }

  else
  {
    v5 = sub_1BCF0C5BC;
  }

  return MEMORY[0x1EEE6DFA0](v5, v4, v3);
}

uint64_t sub_1BCF0C5BC()
{
  v1 = v0[44];

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  v2 = v0[1];

  return v2();
}

uint64_t sub_1BCF0C63C()
{
  v25 = v0;
  v2 = v0[44];
  v1 = v0[45];
  v3 = v0[33];

  swift_willThrow();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(v0 + 24);

  v4 = v3;
  v5 = v1;
  v6 = sub_1BCF216EC();
  v7 = sub_1BCF21CBC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[45];
  if (v8)
  {
    v10 = v0[33];
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v11 = 136315394;
    v14 = [v10 endpoint];
    v15 = [v14 description];

    v16 = sub_1BCF21A8C();
    v18 = v17;

    v19 = sub_1BCEF84F4(v16, v18, &v24);

    *(v11 + 4) = v19;
    *(v11 + 12) = 2112;
    v20 = v9;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v21;
    *v12 = v21;
    _os_log_impl(&dword_1BCEF6000, v6, v7, "Failed to publish to connection (%s): %@", v11, 0x16u);
    sub_1BCEF90DC(v12, qword_1EBD2A750, &unk_1BCF232D0);
    MEMORY[0x1BFB32D20](v12, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1BFB32D20](v13, -1, -1);
    MEMORY[0x1BFB32D20](v11, -1, -1);
  }

  else
  {
  }

  v22 = v0[1];

  return v22();
}

void sub_1BCF0C88C()
{
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v0 = sub_1BCF2170C();
  __swift_project_value_buffer(v0, qword_1EDDD2780);
  oslog = sub_1BCF216EC();
  v1 = sub_1BCF21CBC();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_1BCEF6000, oslog, v1, "Error getting proxy object", v2, 2u);
    MEMORY[0x1BFB32D20](v2, -1, -1);
  }
}

void sub_1BCF0C974(uint64_t a1, void *a2)
{
  __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  if (a2)
  {
    v3 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A738, &unk_1BCF23128);
    sub_1BCF21BFC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A738, &unk_1BCF23128);
    sub_1BCF21C0C();
  }
}

void sub_1BCF0CA04(void *a1)
{
  swift_beginAccess();
  v2 = sub_1BCF0D550(a1);
  swift_endAccess();
}

id XPCDispatchListener.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1BCF0CAF0(void *a1)
{
  sub_1BCF21C3C();
  sub_1BCF21C2C();
  sub_1BCF21BDC();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  sub_1BCF0DC9C();
}

id XPCDispatchListener.__deallocating_deinit()
{
  v1 = type metadata accessor for XPCDispatchListener(0, *((*MEMORY[0x1E69E7D40] & *v0) + 0x50), *((*MEMORY[0x1E69E7D40] & *v0) + 0x58), *((*MEMORY[0x1E69E7D40] & *v0) + 0x60));
  v3.receiver = v0;
  v3.super_class = v1;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t sub_1BCF0CC44(uint64_t a1)
{
}

uint64_t sub_1BCF0CCB0(int a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1BCF099D4;

  return sub_1BCF0B2A4(a1, a2, a3);
}

uint64_t sub_1BCF0CD60(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A718, &qword_1BCF230C8);
    v2 = sub_1BCF21E1C();
    v15 = v2;
    sub_1BCF21DAC();
    if (sub_1BCF21DDC())
    {
      sub_1BCEFA814();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1BCF0CF40(v9 + 1);
        }

        v2 = v15;
        result = sub_1BCF21D2C();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_1BCF21DDC());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v2;
}

uint64_t sub_1BCF0CF40(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A718, &qword_1BCF230C8);
  result = sub_1BCF21E0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1BCF21D2C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1BCF0D168(uint64_t a1, uint64_t a2)
{
  sub_1BCF21D2C();
  result = sub_1BCF21D9C();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

id sub_1BCF0D1EC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A718, &qword_1BCF230C8);
  v2 = *v0;
  v3 = sub_1BCF21DFC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        result = v18;
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

      v16 = *(v2 + 56 + 8 * v8);
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

uint64_t sub_1BCF0D33C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A718, &qword_1BCF230C8);
  result = sub_1BCF21E0C();
  v5 = result;
  if (*(v3 + 16))
  {
    v24 = v1;
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = sub_1BCF21D2C();
      v17 = -1 << *(v5 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v17) >> 6;
        while (++v19 != v21 || (v20 & 1) == 0)
        {
          v22 = v19 == v21;
          if (v19 == v21)
          {
            v19 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v24;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
    *v2 = v5;
  }

  return result;
}

uint64_t sub_1BCF0D550(void *a1)
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
    v6 = sub_1BCF21DEC();

    if (v6)
    {
      v7 = sub_1BCF0D6D8(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  sub_1BCEFA814();
  v10 = sub_1BCF21D2C();
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
    v15 = sub_1BCF21D3C();

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
    sub_1BCF0D1EC();
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_1BCF0D830(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t sub_1BCF0D6D8(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_1BCF21DBC();
  v5 = swift_unknownObjectRetain();
  v6 = sub_1BCF0CD60(v5, v4);
  v15 = v6;

  v7 = sub_1BCF21D2C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    sub_1BCEFA814();
    while (1)
    {
      v11 = *(*(v6 + 48) + 8 * v9);
      v12 = sub_1BCF21D3C();

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
  sub_1BCF0D830(v9);
  result = sub_1BCF21D3C();
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

unint64_t sub_1BCF0D830(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_1BCF21D8C();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        v11 = sub_1BCF21D2C();

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

void sub_1BCF0D9D0(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_1BCF21DBC())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A718, &qword_1BCF230C8);
      v3 = sub_1BCF21E2C();
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_1BCF21DBC();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x1E69E7CD0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = v3 + 56;
  v37 = v5;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    v35 = v1;
    while (1)
    {
      v8 = MEMORY[0x1BFB32630](v7, v1);
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_1BCF21D2C();
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *(v6 + 8 * (v13 >> 6));
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        sub_1BCEFA814();
        while (1)
        {
          v18 = *(*(v3 + 48) + 8 * v13);
          v19 = sub_1BCF21D3C();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *(v6 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v1 = v35;
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v1 = v35;
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *(v6 + 8 * v14) = v16 | v15;
        *(*(v3 + 48) + 8 * v13) = v10;
        v20 = *(v3 + 16);
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        *(v3 + 16) = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = *(v1 + 32 + 8 * v22);
      v24 = sub_1BCF21D2C();
      v25 = -1 << *(v3 + 32);
      v26 = v24 & ~v25;
      v27 = v26 >> 6;
      v28 = *(v6 + 8 * (v26 >> 6));
      v29 = 1 << v26;
      if (((1 << v26) & v28) != 0)
      {
        v30 = ~v25;
        sub_1BCEFA814();
        while (1)
        {
          v31 = *(*(v3 + 48) + 8 * v26);
          v32 = sub_1BCF21D3C();

          if (v32)
          {
            break;
          }

          v26 = (v26 + 1) & v30;
          v27 = v26 >> 6;
          v28 = *(v6 + 8 * (v26 >> 6));
          v29 = 1 << v26;
          if (((1 << v26) & v28) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *(v6 + 8 * v27) = v29 | v28;
        *(*(v3 + 48) + 8 * v26) = v23;
        v33 = *(v3 + 16);
        v9 = __OFADD__(v33, 1);
        v34 = v33 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        *(v3 + 16) = v34;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t dispatch thunk of XPCDispatchListener.broadcast(messageCode:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0xB8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BCF0A158;

  return v7(a1);
}

uint64_t dispatch thunk of XPCDispatchListener.broadcast<A>(messageCode:message:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0xC0);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_1BCF099D4;

  return v13(a1, a2, a3, a4);
}

uint64_t dispatch thunk of XPCDispatchListener.reverseForward(messageCode:messageData:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *((*MEMORY[0x1E69E7D40] & *v3) + 0xC8);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_1BCF099D4;

  return v11(a1, a2, a3);
}

uint64_t sub_1BCF0E1C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1BCF0E208(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1BCF0E258(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_1BCF0E2AC(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1BCF0E2C4(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{

  return swift_deallocObject();
}

uint64_t sub_1BCF0E3C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BCF0A158;

  return sub_1BCF0B7CC(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_23Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1BCF0E4E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = v1[8];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BCF0A158;

  return sub_1BCF0B3CC(a1, v4, v5, v6, v7);
}

unint64_t sub_1BCF0E5C4()
{
  result = qword_1EBD2A730;
  if (!qword_1EBD2A730)
  {
    sub_1BCEFA814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EBD2A730);
  }

  return result;
}

uint64_t sub_1BCF0E624(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1BCF0A158;

  return sub_1BCF0BE6C(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_1BCF0E6FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1BCF0E794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BCF0E6FC(a3, v25 - v10);
  v12 = sub_1BCF21C5C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BCEF90DC(v11, &qword_1EBD2A5E0, &unk_1BCF22AE0);
  }

  else
  {
    sub_1BCF21C4C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BCF21BDC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BCF21AAC() + 32;
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

      sub_1BCEF90DC(a3, &qword_1EBD2A5E0, &unk_1BCF22AE0);

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

  sub_1BCEF90DC(a3, &qword_1EBD2A5E0, &unk_1BCF22AE0);
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

uint64_t sub_1BCF0EA84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  sub_1BCF0E6FC(a3, v25 - v10);
  v12 = sub_1BCF21C5C();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1BCEF90DC(v11, &qword_1EBD2A5E0, &unk_1BCF22AE0);
  }

  else
  {
    sub_1BCF21C4C();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1BCF21BDC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_1BCF21AAC() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A7E0, &qword_1BCF232A8);
      v21 = (v18 | v16);
      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v22 = swift_task_create();

      sub_1BCEF90DC(a3, &qword_1EBD2A5E0, &unk_1BCF22AE0);

      return v22;
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

  sub_1BCEF90DC(a3, &qword_1EBD2A5E0, &unk_1BCF22AE0);
  v24 = swift_allocObject();
  *(v24 + 16) = a4;
  *(v24 + 24) = a5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A7E0, &qword_1BCF232A8);
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_1BCF0ED90()
{
  sub_1BCF21F4C();
  MEMORY[0x1BFB32720](0);
  return sub_1BCF21F6C();
}

uint64_t sub_1BCF0EDFC(uint64_t a1)
{
  sub_1BCF21F4C();
  MEMORY[0x1BFB32720](0);
  return sub_1BCF21F6C();
}

uint64_t NetworkDispatchListener.__allocating_init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  NetworkDispatchListener.init(serviceName:)(a1, a2);
  return v4;
}

uint64_t *NetworkDispatchListener.init(serviceName:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *v2;
  v2[5] = 0;
  v7 = *(v5 + 80);
  v9[0] = &type metadata for NetworkHeader;
  v9[1] = v7;
  v9[2] = &protocol witness table for NetworkHeader;
  v10 = *(v6 + 88);
  type metadata accessor for DispatchListenerTable(0, v9);
  v2[2] = DispatchListenerTable.__allocating_init()();
  v2[3] = a1;
  v2[4] = a2;
  return v2;
}

void *NetworkDispatchListener.deinit()
{
  if (*(v0 + 40))
  {

    sub_1BCF21C7C();
  }

  return v0;
}

uint64_t NetworkDispatchListener.__deallocating_deinit()
{
  NetworkDispatchListener.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NetworkDispatchListener.startListening()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v27 - v4;
  v6 = sub_1BCF2175C();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v27 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v28 = &v27 - v10;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1BCF2170C();
  __swift_project_value_buffer(v11, qword_1EDDD2780);
  v12 = sub_1BCF216EC();
  v13 = sub_1BCF21CCC();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = v5;
    v15 = v6;
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1BCEF6000, v12, v13, "NetworkDispatchListener starting", v16, 2u);
    v17 = v16;
    v6 = v15;
    v5 = v14;
    MEMORY[0x1BFB32D20](v17, -1, -1);
  }

  if (v1[5])
  {
    type metadata accessor for NetworkDispatchListener.Failure(0, v2[10], v2[11], v2[12]);
    swift_getWitnessTable();
    v29 = swift_allocError();
    swift_willThrow();
  }

  else
  {

    v18 = v28;
    sub_1BCF2174C();
    sub_1BCF0FEB4(1, 60.0);
    (*(v7 + 16))(v27, v18, v6);
    sub_1BCF2186C();
    swift_allocObject();

    v19 = sub_1BCF2185C();
    type metadata accessor for NetworkDispatchInterface(0, v2[10], v2[11], v2[12]);
    v20 = v1[2];

    v21 = sub_1BCF1C6E8(v19, v20);
    sub_1BCF2181C();
    v22 = sub_1BCF21C5C();
    (*(*(v22 - 8) + 56))(v5, 1, 1, v22);
    sub_1BCF21C3C();

    v23 = sub_1BCF21C2C();
    v24 = swift_allocObject();
    v25 = MEMORY[0x1E69E85E0];
    v24[2] = v23;
    v24[3] = v25;
    v24[4] = v19;
    v24[5] = v21;
    v26 = sub_1BCF0E794(0, 0, v5, &unk_1BCF23150, v24);

    (*(v7 + 8))(v28, v6);
    v1[5] = v26;
  }
}

uint64_t sub_1BCF0F434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t **a5)
{
  v7 = *a5;
  v5[2] = sub_1BCF21C3C();
  v5[3] = sub_1BCF21C2C();
  v8 = swift_task_alloc();
  v5[4] = v8;
  v9 = type metadata accessor for NetworkDispatchInterface(0, v7[10], v7[11], v7[12]);
  WitnessTable = swift_getWitnessTable();
  *v8 = v5;
  v8[1] = sub_1BCF0F568;

  return MEMORY[0x1EEDD27C0](a5, v9, WitnessTable);
}

uint64_t sub_1BCF0F568()
{
  *(*v1 + 40) = v0;

  v3 = sub_1BCF21BDC();
  if (v0)
  {
    v4 = sub_1BCF0F724;
  }

  else
  {
    v4 = sub_1BCF0F6C4;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, v2);
}

uint64_t sub_1BCF0F6C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1BCF0F724()
{

  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 40);
  v2 = sub_1BCF2170C();
  __swift_project_value_buffer(v2, qword_1EDDD2780);
  v3 = v1;
  v4 = sub_1BCF216EC();
  v5 = sub_1BCF21CBC();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 40);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_1BCEF6000, v4, v5, "Error publishing network interface actor: %@", v8, 0xCu);
    sub_1BCEF90DC(v9, qword_1EBD2A750, &unk_1BCF232D0);
    MEMORY[0x1BFB32D20](v9, -1, -1);
    MEMORY[0x1BFB32D20](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1BCF0F8D0(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_1BCF0F9C4;

  return v5(v2 + 32);
}

uint64_t sub_1BCF0F9C4()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1BCF0FAD8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1BCF099D4;

  return sub_1BCF0F434(a1, v4, v5, v7, v6);
}

uint64_t sub_1BCF0FC54(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *sub_1BCF0FCA4(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t sub_1BCF0FD44(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BCF0A158;

  return sub_1BCF0F8D0(a1, v4);
}

uint64_t sub_1BCF0FDFC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BCF099D4;

  return sub_1BCF0F8D0(a1, v4);
}

uint64_t sub_1BCF0FEB4(char a1, double a2)
{
  v4 = sub_1BCF217AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BCF217FC();
  v8 = sub_1BCF217DC();
  (*(v5 + 104))(v7, *MEMORY[0x1E6977C48], v4);
  sub_1BCF217CC();
  sub_1BCF2179C();
  sub_1BCF2176C();
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1EBD2A7E8, qword_1BCF232F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1BCF232E0;
  *(v9 + 32) = 0xD000000000000016;
  *(v9 + 40) = 0x80000001BCF26280;
  v10 = 0x766C6F7365525341;
  if (a1)
  {
    v10 = 0x6E657473694C5341;
  }

  *(v9 + 48) = v10;
  *(v9 + 56) = 0xEA00000000007265;
  sub_1BCF2177C();
  sub_1BCF217BC();
  v11 = sub_1BCF2178C();

  v22 = MEMORY[0x1E69E7CC0];
  if (!(v11 >> 62))
  {
    v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_5;
    }

LABEL_23:
    v14 = MEMORY[0x1E69E7CC0];
    goto LABEL_24;
  }

LABEL_22:
  v12 = sub_1BCF21DBC();
  if (!v12)
  {
    goto LABEL_23;
  }

LABEL_5:
  v13 = 0;
  v14 = MEMORY[0x1E69E7CC0];
  do
  {
    v15 = v13;
    while (1)
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1BFB32630](v15, v11);
        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_20;
        }
      }

      else
      {
        if (v15 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }

        v13 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
LABEL_20:
          __break(1u);
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      sub_1BCF2188C();
      if (swift_dynamicCastClass())
      {
        break;
      }

      ++v15;
      if (v13 == v12)
      {
        goto LABEL_24;
      }
    }

    MEMORY[0x1BFB322F0]();
    if (*((v22 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1BCF21B4C();
    }

    sub_1BCF21B7C();
    v14 = v22;
  }

  while (v13 != v12);
LABEL_24:
  v21 = v8;

  if (v14 >> 62)
  {
    goto LABEL_42;
  }

  for (i = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1BCF21DBC())
  {
    v17 = 0;
    a2 = a2 * 1000.0;
    while ((v14 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1BFB32630](v17, v14);
      v18 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_37;
      }

LABEL_30:
      if ((*&a2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_39;
      }

      if (a2 <= -9.22337204e18)
      {
        goto LABEL_40;
      }

      if (a2 >= 9.22337204e18)
      {
        goto LABEL_41;
      }

      sub_1BCF2187C();

      ++v17;
      if (v18 == i)
      {
        goto LABEL_43;
      }
    }

    if (v17 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

    v18 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      goto LABEL_30;
    }

LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    ;
  }

LABEL_43:

  v19 = v21;
  sub_1BCF217EC();
  nw_parameters_set_account_id();
  swift_unknownObjectRelease();
  sub_1BCF217EC();
  nw_parameters_set_attach_protocol_listener();
  swift_unknownObjectRelease();
  sub_1BCF217EC();
  nw_parameters_set_traffic_class();
  swift_unknownObjectRelease();
  return v19;
}

uint64_t sub_1BCF10358(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 104) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_1BCF104CC, 0, 0);
  }

  else
  {

    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t sub_1BCF104E4(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *v3;
  v8 = *(*v3 + 40);
  v9 = *(*v3 + 32);
  v10 = *v3;

  sub_1BCF05424(v9, v8);
  if (v4)
  {
    v11 = sub_1BCF2159C();

    v12 = v11;
    v13 = 0;
  }

  else if (a2 >> 60 == 15)
  {
    v12 = 0;
    v13 = 0;
    v11 = 0;
  }

  else
  {
    v14 = sub_1BCF215AC();
    sub_1BCF05424(a1, a2);
    v13 = v14;
    v12 = 0;
    v11 = v14;
  }

  v15 = *(v7 + 24);
  (v15)[2](v15, v13, v12);

  _Block_release(v15);
  v16 = *(v10 + 8);

  return v16();
}

uint64_t sub_1BCF106D4()
{

  return MEMORY[0x1EEE6BDC0](v0, 48, 7);
}

uint64_t sub_1BCF10714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBD2A5E0, &unk_1BCF22AE0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1BCF0E6FC(a3, v23 - v10);
  v12 = sub_1BCF21C5C();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(v11, 1, v12) == 1)
  {
    sub_1BCEFAC9C(v11);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v14 = 0;
    v16 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  sub_1BCF21C4C();
  (*(v13 + 8))(v11, v12);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  swift_getObjectType();
  swift_unknownObjectRetain();
  v14 = sub_1BCF21BDC();
  v16 = v15;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v17 = sub_1BCF21AAC() + 32;
    v18 = swift_allocObject();
    *(v18 + 16) = a4;
    *(v18 + 24) = a5;

    if (v16 | v14)
    {
      v24[0] = 0;
      v24[1] = 0;
      v19 = v24;
      v24[2] = v14;
      v24[3] = v16;
    }

    else
    {
      v19 = 0;
    }

    v23[1] = 7;
    v23[2] = v19;
    v23[3] = v17;
    v21 = swift_task_create();

    sub_1BCEFAC9C(a3);

    return v21;
  }

LABEL_8:
  sub_1BCEFAC9C(a3);
  v20 = swift_allocObject();
  *(v20 + 16) = a4;
  *(v20 + 24) = a5;
  if (v16 | v14)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v14;
    v24[7] = v16;
  }

  return swift_task_create();
}

uint64_t sub_1BCF109D0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1BCF099D4;

  return sub_1BCEF91F4(a1, v4);
}

uint64_t DarwinDispatchListener.__allocating_init()()
{
  v0 = swift_allocObject();
  DarwinDispatchListener.init()();
  return v0;
}

void *DarwinDispatchListener.init()()
{
  v1 = v0;
  v2 = *v0;
  v9 = *(*v0 + 80);
  v3 = v9;
  v10 = *(v2 + 96);
  v8 = v10;
  v11 = MEMORY[0x1E69E6168];
  type metadata accessor for DispatchClientTable(0, &v9);
  v0[2] = DispatchClientTable.__allocating_init()();
  v4 = MEMORY[0x1E69E72F0];
  swift_getTupleTypeMetadata2();
  v5 = sub_1BCF21B5C();
  v6 = sub_1BCF0408C(v5, v3, v4, v8);

  v1[3] = v6;
  return v1;
}

void sub_1BCF10BCC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 80);
  v41 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v37 - v5;
  v7 = sub_1BCF21D4C();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v45 = &v37 - v8;
  v9 = *(v2 + 88);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v43 = &v37 - v11;
  v40 = *(swift_getAssociatedConformanceWitness() + 8);
  v44 = AssociatedTypeWitness;
  v12 = swift_getAssociatedTypeWitness();
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v37 - v13;
  swift_beginAccess();
  v15 = *(v2 + 96);

  LOBYTE(v2) = MEMORY[0x1BFB321D0](v16, v4, MEMORY[0x1E69E72F0], v15);

  if (v2)
  {
    v37 = v15;
    v39 = v3;
    if (qword_1EDDD22E0 != -1)
    {
      swift_once();
    }

    v17 = v1;
    v18 = sub_1BCF2170C();
    __swift_project_value_buffer(v18, qword_1EDDD2780);
    v19 = sub_1BCF216EC();
    v20 = sub_1BCF21CAC();
    v21 = v12;
    if (os_log_type_enabled(v19, v20))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_1BCEF6000, v19, v20, "Darwin listener starting", v22, 2u);
      MEMORY[0x1BFB32D20](v22, -1, -1);
    }

    v38 = v9;
    sub_1BCF21E4C();
    sub_1BCF21AEC();
    swift_getAssociatedConformanceWitness();
    v23 = v45;
    v44 = v14;
    sub_1BCF21D5C();
    v24 = v23;
    v25 = v41;
    v26 = *(v41 + 48);
    v27 = v26(v24, 1, v4);
    v43 = v17;
    v28 = v25;
    v29 = v21;
    if (v27 != 1)
    {
      v30 = *(v28 + 32);
      do
      {
        v30(v6, v24, v4);
        sub_1BCF11BE4(v6);
        (*(v28 + 8))(v6, v4);
        sub_1BCF21D5C();
        v24 = v45;
      }

      while (v26(v45, 1, v4) != 1);
    }

    (*(v42 + 8))(v44, v29);
    sub_1BCF12F90();
    v31 = sub_1BCF21CDC();
    v32 = swift_allocObject();
    swift_weakInit();
    v33 = swift_allocObject();
    v34 = v37;
    v35 = v38;
    v33[2] = v4;
    v33[3] = v35;
    v33[4] = v34;
    v33[5] = *(v39 + 104);
    v33[6] = v32;
    aBlock[4] = sub_1BCF12FDC;
    aBlock[5] = v33;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1BCF11834;
    aBlock[3] = &block_descriptor_2;
    v36 = _Block_copy(aBlock);

    xpc_set_event_stream_handler("com.apple.notifyd.matching", v31, v36);
    _Block_release(v36);
  }
}

void sub_1BCF11184(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a2;
  v8 = sub_1BCF21D4C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v40[-v11];
  v13 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v47 = &v40[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v15 = sub_1BCF2170C();
  __swift_project_value_buffer(v15, qword_1EDDD2780);
  swift_unknownObjectRetain();
  v16 = sub_1BCF216EC();
  v17 = sub_1BCF21CCC();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v45 = v13;
    v19 = v18;
    v42 = swift_slowAlloc();
    v48[0] = v42;
    *v19 = 136315138;
    v20 = [a1 description];
    v44 = a1;
    v21 = v20;
    v22 = sub_1BCF21A8C();
    v41 = v17;
    v23 = v12;
    v24 = a3;
    v25 = v8;
    v26 = v22;
    v43 = v9;
    v28 = v27;

    v29 = v26;
    v8 = v25;
    a3 = v24;
    v12 = v23;
    v30 = sub_1BCEF84F4(v29, v28, v48);
    v9 = v43;

    *(v19 + 4) = v30;
    a1 = v44;
    _os_log_impl(&dword_1BCEF6000, v16, v41, "Handling xpc stream event %s", v19, 0xCu);
    v31 = v42;
    __swift_destroy_boxed_opaque_existential_1(v42);
    MEMORY[0x1BFB32D20](v31, -1, -1);
    v32 = v19;
    v13 = v45;
    MEMORY[0x1BFB32D20](v32, -1, -1);
  }

  if (xpc_dictionary_get_string(a1, *MEMORY[0x1E69E9E40]))
  {
    v48[0] = sub_1BCF21ACC();
    v48[1] = v33;
    sub_1BCF21B1C();
    if ((*(v13 + 48))(v12, 1, a3) == 1)
    {
      (*(v9 + 8))(v12, v8);
      v34 = sub_1BCF216EC();
      v35 = sub_1BCF21CBC();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_1BCEF6000, v34, v35, "Event name didn't match any message code", v36, 2u);
        MEMORY[0x1BFB32D20](v36, -1, -1);
      }
    }

    else
    {
      (*(v13 + 32))(v47, v12, a3);
      swift_beginAccess();
      if (swift_weakLoadStrong())
      {
        sub_1BCF12410(v47);
      }

      (*(v13 + 8))(v47, a3);
    }
  }

  else
  {
    v37 = sub_1BCF216EC();
    v38 = sub_1BCF21CBC();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&dword_1BCEF6000, v37, v38, "Stream event missing name", v39, 2u);
      MEMORY[0x1BFB32D20](v39, -1, -1);
    }
  }

  sub_1BCF1165C(a1);
}

void sub_1BCF1165C(void *a1)
{
  if (xpc_dictionary_create_reply(a1))
  {
    if (qword_1EDDD22E0 != -1)
    {
      swift_once();
    }

    v1 = sub_1BCF2170C();
    __swift_project_value_buffer(v1, qword_1EDDD2780);
    v2 = sub_1BCF216EC();
    v3 = sub_1BCF21CCC();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1BCEF6000, v2, v3, "Sending xpc stream reply", v4, 2u);
      MEMORY[0x1BFB32D20](v4, -1, -1);
    }

    xpc_dictionary_send_reply();

    swift_unknownObjectRelease();
  }

  else
  {
    if (qword_1EDDD22E0 != -1)
    {
      swift_once();
    }

    v5 = sub_1BCF2170C();
    __swift_project_value_buffer(v5, qword_1EDDD2780);
    oslog = sub_1BCF216EC();
    v6 = sub_1BCF21CCC();
    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1BCEF6000, oslog, v6, "No xpc stream reply required", v7, 2u);
      MEMORY[0x1BFB32D20](v7, -1, -1);
    }
  }
}

uint64_t sub_1BCF11834(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1BCF11894(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v17 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v16 - v3;
  v5 = sub_1BCF21D4C();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v19 = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedTypeWitness();
  v18 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - v10;
  sub_1BCF21E4C();
  sub_1BCF21AEC();
  swift_getAssociatedConformanceWitness();
  v20 = v11;
  v21 = v9;
  sub_1BCF21D5C();
  v12 = v17;
  v13 = *(v17 + 48);
  if (v13(v7, 1, v2) != 1)
  {
    v14 = *(v12 + 32);
    do
    {
      v14(v4, v7, v2);
      sub_1BCF12BF0(v4);
      (*(v12 + 8))(v4, v2);
      sub_1BCF21D5C();
    }

    while (v13(v7, 1, v2) != 1);
  }

  return (*(v18 + 8))(v20, v21);
}

uint64_t sub_1BCF11BE4(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v48[2] = *MEMORY[0x1E69E9840];
  v4 = *v1;
  v5 = *(*v1 + 80);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](a1);
  v36 = v8;
  v37 = v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v34 - v9;
  if (qword_1EDDD22E0 != -1)
  {
    swift_once();
  }

  v11 = sub_1BCF2170C();
  __swift_project_value_buffer(v11, qword_1EDDD2780);
  v39 = *(v6 + 16);
  v40 = v6 + 16;
  v39(v10, v3, v5);
  v12 = sub_1BCF216EC();
  v13 = sub_1BCF21CCC();
  v14 = os_log_type_enabled(v12, v13);
  v38 = v3;
  if (v14)
  {
    v15 = swift_slowAlloc();
    v16 = v4;
    v34[0] = v4;
    v17 = v15;
    v18 = swift_slowAlloc();
    v48[0] = v18;
    *v17 = 136315138;
    v19 = *(v16 + 104);
    sub_1BCF21B0C();
    (*(v6 + 8))(v10, v5);
    v20 = sub_1BCEF84F4(aBlock, v43, v48);

    *(v17 + 4) = v20;
    v21 = v34[0];
    _os_log_impl(&dword_1BCEF6000, v12, v13, "Registering darwin notification %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v18);
    v22 = v18;
    v3 = v38;
    MEMORY[0x1BFB32D20](v22, -1, -1);
    MEMORY[0x1BFB32D20](v17, -1, -1);
  }

  else
  {

    (*(v6 + 8))(v10, v5);
    v19 = *(v4 + 104);
    v21 = v4;
  }

  out_token = -1;
  sub_1BCF21B0C();
  v34[1] = v48[1];
  v34[2] = v48[0];
  sub_1BCF12F90();
  v35 = sub_1BCF21CDC();
  v23 = v3;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = v37;
  v39(v37, v23, v5);
  v26 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v27 = v36 + v26 + 7;
  v36 = v2;
  v28 = v27 & 0xFFFFFFFFFFFFFFF8;
  v29 = swift_allocObject();
  *(v29 + 2) = v5;
  *(v29 + 3) = *(v21 + 88);
  *(v29 + 4) = *(v21 + 96);
  *(v29 + 5) = v19;
  (*(v6 + 32))(&v29[v26], v25, v5);
  *&v29[v28] = v24;
  v46 = sub_1BCF131C4;
  v47 = v29;
  aBlock = MEMORY[0x1E69E9820];
  v43 = 1107296256;
  v44 = sub_1BCF123BC;
  v45 = &block_descriptor_15;
  v30 = _Block_copy(&aBlock);

  v31 = sub_1BCF21AAC();

  v32 = v35;
  notify_register_dispatch((v31 + 32), &out_token, v35, v30);

  _Block_release(v30);

  v39(v25, v38, v5);
  LODWORD(v48[0]) = out_token;
  BYTE4(v48[0]) = 0;
  swift_beginAccess();
  sub_1BCF21A1C();
  sub_1BCF21A4C();
  return swift_endAccess();
}