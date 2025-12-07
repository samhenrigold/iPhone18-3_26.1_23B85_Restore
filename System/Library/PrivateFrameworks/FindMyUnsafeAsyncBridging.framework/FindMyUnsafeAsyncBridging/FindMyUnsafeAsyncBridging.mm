uint64_t sub_24B3522F8()
{

  return MEMORY[0x2822009F8](sub_24B3523F4, 0, 0);
}

uint64_t sub_24B3523F4()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v5 = v0[5];
  v4 = v0[6];
  (*(*(v0[7] - 8) + 56))(v1, 0, 1);
  v6 = *(*v5 + 88);
  swift_beginAccess();
  (*(v2 + 40))(v5 + v6, v1, v3);
  swift_endAccess();
  dispatch_group_leave(v4);

  v7 = v0[1];

  return v7();
}

uint64_t sub_24B3524FC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_24B3525F0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t unsafeFromAsyncTask<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v7 = sub_24B35B820();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v24 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4840, &qword_24B35BEA0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v24 - v12;
  sub_24B35B590();
  type metadata accessor for UnsafeSendableBox(0, a3, v14, v15);
  v16 = UnsafeSendableBox.__allocating_init()();
  v17 = dispatch_group_create();
  dispatch_group_enter(v17);
  v18 = sub_24B35B780();
  (*(*(v18 - 8) + 56))(v13, 1, 1, v18);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v16;
  v19[5] = a1;
  v19[6] = a2;
  v19[7] = v17;

  v20 = v17;
  sub_24B357B34(0, 0, v13, &unk_24B35BEC8, v19);

  sub_24B35B7C0();
  v21 = *(*v16 + 88);
  swift_beginAccess();
  (*(v8 + 16))(v10, v16 + v21, v7);
  v22 = *(a3 - 8);
  result = (*(v22 + 48))(v10, 1, a3);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    return (*(v22 + 32))(v24, v10, a3);
  }

  return result;
}

uint64_t sub_24B3529AC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t UnsafeSendableBox.__deallocating_deinit()
{
  v1 = *(*v0 + 88);
  v2 = sub_24B35B820();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t sub_24B352ABC(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t UnsafeSendableBox.__allocating_init()()
{
  v0 = swift_allocObject();
  (*(*(*(*v0 + 80) - 8) + 56))(v0 + *(*v0 + 88), 1, 1);
  return v0;
}

uint64_t unsafeBlocking<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24B3524FC;

  return unsafeBlocking<A>(context:_:)(a1, 0x746C7561666564, 0xE700000000000000, a2, a3, a4);
}

{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_24B3524FC;

  return unsafeBlocking<A>(context:_:)(a1, 0x746C7561666564, 0xE700000000000000, a2, a3, a4);
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24B352CC0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_24B352D08(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_24B352D5C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4840, &qword_24B35BEA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24B352DC4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B3524F8;

  return sub_24B352E7C(a1, v4);
}

uint64_t sub_24B352E7C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_24B3525F0;

  return v6(a1);
}

uint64_t sub_24B352F74()
{
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[6];
  v4 = v0[7];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_24B3524F8;

  return sub_24B353020(v6, v7, v8, v2, v3, v5, v4);
}

uint64_t sub_24B353020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int *a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a4;
  v7[6] = a7;
  v7[7] = *(*a4 + 80);
  v9 = sub_24B35B820();
  v7[8] = v9;
  v7[9] = *(v9 - 8);
  v10 = swift_task_alloc();
  v7[10] = v10;
  v13 = (a5 + *a5);
  v11 = swift_task_alloc();
  v7[11] = v11;
  *v11 = v7;
  v11[1] = sub_24B3522F8;

  return v13(v10);
}

uint64_t sub_24B353198()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_24B3531F0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B353228()
{
  v12 = sub_24B35B8A0();
  v1 = *(v12 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = sub_24B35B760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7;
  v11 = *(v6 + 64);
  v9 = v2 | v7;

  (*(v1 + 8))(v0 + v3, v12);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v11, v9 | 7);
}

uint64_t sub_24B3533E0()
{
  v12 = sub_24B35B8A0();
  v1 = *(v12 - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 40) & ~v2;
  v4 = (((*(v1 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 47) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE4890, &qword_24B35C058);
  v5 = sub_24B35B760();
  v6 = *(v5 - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + ((((v4 + 15) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~v7;
  v11 = *(v6 + 64);
  v9 = v2 | v7;

  (*(v1 + 8))(v0 + v3, v12);

  (*(v6 + 8))(v0 + v8, v5);

  return MEMORY[0x2821FE8E8](v0, v8 + v11, v9 | 7);
}

uint64_t sub_24B3535A8()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_24B353654(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = MEMORY[0x277D84F98];
  *a4 = result;
  return result;
}

uint64_t sub_24B3536A0()
{
  type metadata accessor for UnsafeBlockingActor();
  v0 = swift_allocObject();
  result = swift_defaultActor_initialize();
  qword_281064768 = v0;
  return result;
}

uint64_t sub_24B3536DC()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_24B353718()
{
  if (qword_281064760 != -1)
  {
    swift_once();
  }
}

uint64_t sub_24B353774(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for UnsafeBlockingActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t unsafeBlocking<A>(context:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = sub_24B35B8A0();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B353940, 0, 0);
}

{
  v6[11] = a5;
  v6[12] = a6;
  v6[9] = a3;
  v6[10] = a4;
  v6[7] = a1;
  v6[8] = a2;
  v7 = sub_24B35B8A0();
  v6[13] = v7;
  v6[14] = *(v7 - 8);
  v6[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24B353ED8, 0, 0);
}

uint64_t sub_24B353940()
{
  v24 = v0;
  sub_24B35B880();
  if (qword_2810646B0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = qword_2810646B8;
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  os_unfair_lock_lock((v3 + 24));
  sub_24B3574BC((v3 + 16), v22);
  os_unfair_lock_unlock((v3 + 24));
  v5 = *&v22[0];
  *(v0 + 128) = *&v22[0];

  if (qword_281064680 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = qword_281064688;
  v9 = swift_task_alloc();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  os_unfair_lock_lock((v8 + 24));
  sub_24B357EDC((v8 + 16), v22);
  os_unfair_lock_unlock((v8 + 24));
  v10 = *(v0 + 120);
  v11 = *(v0 + 96);
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);
  v21 = *(v0 + 80);

  v14 = v22[1];
  *(v0 + 16) = v22[0];
  *(v0 + 32) = v14;
  *(v0 + 48) = v23;
  v15 = sub_24B35B5A0();
  *(v0 + 136) = v15;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v12;
  *(v16 + 40) = v0 + 16;
  *(v16 + 48) = v5;
  *(v16 + 56) = v10;
  *(v16 + 64) = v21;
  *(v16 + 80) = v15;
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_24B353BB4;
  v18 = *(v0 + 96);
  v19 = *(v0 + 56);

  return MEMORY[0x2822008A0](v19, 0, 0, 0xD00000000000001ALL, 0x800000024B35C0E0, sub_24B357F08, v16, v18);
}

uint64_t sub_24B353BB4()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_24B353D68;
  }

  else
  {

    v2 = sub_24B353CD8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B353CD8()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24B353D68()
{
  v1 = v0[15];
  v2 = v0[16];
  v3 = v0[13];
  v4 = v0[14];

  (*(v4 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_24B353ED8()
{
  v24 = v0;
  sub_24B35B880();
  if (qword_2810646B0 != -1)
  {
    swift_once();
  }

  v2 = *(v0 + 64);
  v1 = *(v0 + 72);
  v3 = qword_2810646B8;
  v4 = swift_task_alloc();
  *(v4 + 16) = v2;
  *(v4 + 24) = v1;
  os_unfair_lock_lock((v3 + 24));
  sub_24B35B530((v3 + 16), v22);
  os_unfair_lock_unlock((v3 + 24));
  v5 = *&v22[0];
  *(v0 + 128) = *&v22[0];

  if (qword_281064680 != -1)
  {
    swift_once();
  }

  v7 = *(v0 + 64);
  v6 = *(v0 + 72);
  v8 = qword_281064688;
  v9 = swift_task_alloc();
  *(v9 + 16) = v7;
  *(v9 + 24) = v6;
  os_unfair_lock_lock((v8 + 24));
  sub_24B35B548((v8 + 16), v22);
  v10 = *(v0 + 120);
  v11 = *(v0 + 96);
  v13 = *(v0 + 64);
  v12 = *(v0 + 72);
  v21 = *(v0 + 80);
  os_unfair_lock_unlock((v8 + 24));

  v14 = v22[1];
  *(v0 + 16) = v22[0];
  *(v0 + 32) = v14;
  *(v0 + 48) = v23;
  v15 = sub_24B35B5A0();
  *(v0 + 136) = v15;
  v16 = swift_task_alloc();
  *(v0 + 144) = v16;
  *(v16 + 16) = v11;
  *(v16 + 24) = v13;
  *(v16 + 32) = v12;
  *(v16 + 40) = v0 + 16;
  *(v16 + 48) = v5;
  *(v16 + 56) = v10;
  *(v16 + 64) = v21;
  *(v16 + 80) = v15;
  v17 = swift_task_alloc();
  *(v0 + 152) = v17;
  *v17 = v0;
  v17[1] = sub_24B354180;
  v18 = *(v0 + 96);
  v19 = *(v0 + 56);

  return MEMORY[0x2822007B8](v19, 0, 0, 0xD00000000000001ALL, 0x800000024B35C0E0, sub_24B357F20, v16, v18);
}

uint64_t sub_24B354180()
{

  return MEMORY[0x2822009F8](sub_24B3542B4, 0, 0);
}

uint64_t sub_24B3542B4()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 104);
  v3 = *(v0 + 112);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24B354340(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v68 = a7;
  v69 = a8;
  v64 = a6;
  v76 = a5;
  v14 = sub_24B35B670();
  v74 = *(v14 - 8);
  v75 = v14;
  MEMORY[0x28223BE20](v14);
  v72 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = sub_24B35B6A0();
  v71 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v70 = &v57 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE4890, &qword_24B35C058);
  v65 = a10;
  v79 = sub_24B35B760();
  v61 = *(v79 - 8);
  v62 = *(v61 + 64);
  MEMORY[0x28223BE20](v79);
  v77 = &v57 - v17;
  v60 = sub_24B35B8A0();
  v18 = *(v60 - 8);
  v19 = *(v18 + 64);
  v20 = MEMORY[0x28223BE20](v60);
  if (qword_2810646A0 != -1)
  {
    v20 = swift_once();
  }

  v63 = a9;
  v21 = qword_2810646A8;
  MEMORY[0x28223BE20](v20);
  v66 = a2;
  *(&v57 - 2) = a2;
  *(&v57 - 1) = a3;
  v78 = a3;
  os_unfair_lock_lock((v21 + 24));
  sub_24B35B560((v21 + 16), aBlock);
  os_unfair_lock_unlock((v21 + 24));
  v67 = a4;
  if (*a4)
  {
    v22 = aBlock[0];
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v23 = sub_24B35B660();
    __swift_project_value_buffer(v23, qword_2810647F0);
    v24 = v76;
    v25 = sub_24B35B640();
    v26 = sub_24B35B790();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v58 = a1;
      v29 = v28;
      aBlock[0] = v28;
      *v27 = 136315394;
      v30 = sub_24B35B810();
      v32 = sub_24B358FD4(v30, v31, aBlock);

      *(v27 + 4) = v32;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v22;
      _os_log_impl(&dword_24B351000, v25, v26, "unsafeBlocking [%s] queue push: %ld", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v29);
      v33 = v29;
      a1 = v58;
      MEMORY[0x24C23DEC0](v33, -1, -1);
      MEMORY[0x24C23DEC0](v27, -1, -1);
    }
  }

  v34 = *(v18 + 16);
  v59 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = v60;
  v34(v59, v64, v60);
  v36 = v61;
  (*(v61 + 16))(v77, a1, v79);
  v37 = (*(v18 + 80) + 40) & ~*(v18 + 80);
  v38 = (v19 + v37 + 7) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 47) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 15) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 23) & 0xFFFFFFFFFFFFFFF8;
  v42 = (*(v36 + 80) + v41 + 8) & ~*(v36 + 80);
  v43 = swift_allocObject();
  v44 = v66;
  *(v43 + 2) = v65;
  *(v43 + 3) = v44;
  *(v43 + 4) = v78;
  (*(v18 + 32))(&v43[v37], v59, v35);
  v45 = &v43[v38];
  v46 = v67;
  v47 = v67[1];
  *v45 = *v67;
  *(v45 + 1) = v47;
  *(v45 + 4) = *(v46 + 4);
  v49 = v76;
  v48 = v77;
  *&v43[v39] = v76;
  v50 = &v43[v40];
  v51 = v69;
  *v50 = v68;
  v50[1] = v51;
  *&v43[v41] = v63;
  (*(v36 + 32))(&v43[v42], v48, v79);
  aBlock[4] = sub_24B35B1AC;
  aBlock[5] = v43;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B352ABC;
  aBlock[3] = &block_descriptor_40;
  v52 = _Block_copy(aBlock);
  v49;

  v53 = v70;
  sub_24B35B680();
  v80 = MEMORY[0x277D84F90];
  sub_24B352CC0(qword_2810645C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4860, &qword_24B35C028);
  sub_24B352D08(&qword_2810645B0, &qword_27EFE4860, &qword_24B35C028);
  v54 = v72;
  v55 = v75;
  sub_24B35B830();
  MEMORY[0x24C23D900](0, v53, v54, v52);
  _Block_release(v52);
  (*(v74 + 8))(v54, v55);
  (*(v71 + 8))(v53, v73);
}

uint64_t sub_24B354A8C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v115 = a8;
  v116 = a6;
  v117 = a7;
  v126 = a5;
  v130 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE4890, &qword_24B35C058);
  v131 = a10;
  v13 = sub_24B35B930();
  v123 = *(v13 - 8);
  v124 = v13;
  MEMORY[0x28223BE20](v13);
  v129 = v113 - v14;
  v15 = sub_24B35B8A0();
  v121 = *(v15 - 8);
  v122 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v127 = v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v128 = v113 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = v113 - v21;
  if (qword_2810646A0 != -1)
  {
    v20 = swift_once();
  }

  v23 = qword_2810646A8;
  MEMORY[0x28223BE20](v20);
  v119 = a1;
  v120 = a2;
  v113[-2] = a1;
  v113[-1] = a2;
  os_unfair_lock_lock((v23 + 24));
  sub_24B35B578((v23 + 16), v133);
  v118 = 0;
  os_unfair_lock_unlock((v23 + 24));
  v24 = v133[0];
  sub_24B35B880();
  v25 = sub_24B35B890();
  v27 = v26;
  LODWORD(a1) = *a4;
  v28 = 0x281064000uLL;
  v125 = v22;
  if (a1)
  {
    v114 = a1;
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v29 = sub_24B35B660();
    __swift_project_value_buffer(v29, qword_2810647F0);
    v30 = v126;
    v31 = sub_24B35B640();
    v32 = sub_24B35B790();

    v33 = os_log_type_enabled(v31, v32);
    v113[1] = v27;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v113[0] = v25;
      v36 = v35;
      v133[0] = v35;
      *v34 = 136315394;
      v37 = sub_24B35B810();
      v39 = sub_24B358FD4(v37, v38, v133);

      *(v34 + 4) = v39;
      *(v34 + 12) = 2048;
      *(v34 + 14) = v24;
      _os_log_impl(&dword_24B351000, v31, v32, "unsafeBlocking [%s] queue pop: %ld", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v36);
      MEMORY[0x24C23DEC0](v36, -1, -1);
      MEMORY[0x24C23DEC0](v34, -1, -1);
    }

    v40 = v30;
    v41 = sub_24B35B640();
    v42 = sub_24B35B790();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v133[0] = v44;
      *v43 = 136315394;
      v45 = sub_24B35B810();
      v47 = sub_24B358FD4(v45, v46, v133);

      *(v43 + 4) = v47;
      *(v43 + 12) = 2080;
      v48 = sub_24B35B940();
      v50 = sub_24B358FD4(v48, v49, v133);

      *(v43 + 14) = v50;
      _os_log_impl(&dword_24B351000, v41, v42, "unsafeBlocking [%s] queue duration: %s", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23DEC0](v44, -1, -1);
      MEMORY[0x24C23DEC0](v43, -1, -1);

      v22 = v125;
      v28 = 0x281064000;
    }

    else
    {

      v22 = v125;
      v28 = 0x281064000uLL;
    }

    LODWORD(a1) = v114;
  }

  if (sub_24B35B950())
  {
    if (*(v28 + 1656) != -1)
    {
      swift_once();
    }

    v51 = sub_24B35B660();
    __swift_project_value_buffer(v51, qword_2810647F0);
    v52 = v126;
    v53 = sub_24B35B640();
    v54 = sub_24B35B7A0();

    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      v114 = a1;
      a1 = v55;
      v56 = swift_slowAlloc();
      v133[0] = v56;
      *a1 = 136315394;
      v57 = sub_24B35B810();
      v59 = v28;
      v60 = sub_24B358FD4(v57, v58, v133);

      *(a1 + 4) = v60;
      *(a1 + 12) = 2080;
      v61 = sub_24B35B940();
      v63 = sub_24B358FD4(v61, v62, v133);

      *(a1 + 14) = v63;
      v28 = v59;
      _os_log_impl(&dword_24B351000, v53, v54, "Excessive unsafeBlocking [%s] queue duration: %s", a1, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23DEC0](v56, -1, -1);
      v64 = a1;
      LOBYTE(a1) = v114;
      MEMORY[0x24C23DEC0](v64, -1, -1);
    }

    v22 = v125;
  }

  v65 = sub_24B35B880();
  MEMORY[0x28223BE20](v65);
  v67 = v116;
  v66 = v117;
  v113[-4] = v131;
  v113[-3] = v67;
  v113[-2] = v66;
  sub_24B3556A8(sub_24B35B2EC, v129);
  sub_24B35B880();
  v68 = sub_24B35B890();
  v70 = v69;
  if (a1)
  {
    if (*(v28 + 1656) != -1)
    {
      swift_once();
    }

    v71 = sub_24B35B660();
    __swift_project_value_buffer(v71, qword_2810647F0);
    v72 = v126;
    v73 = sub_24B35B640();
    v74 = sub_24B35B7A0();

    if (os_log_type_enabled(v73, v74))
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v133[0] = v76;
      *v75 = 136315394;
      v77 = sub_24B35B810();
      v79 = v28;
      v80 = sub_24B358FD4(v77, v78, v133);

      *(v75 + 4) = v80;
      *(v75 + 12) = 2080;
      v81 = sub_24B35B940();
      v83 = sub_24B358FD4(v81, v82, v133);

      *(v75 + 14) = v83;
      v28 = v79;
      _os_log_impl(&dword_24B351000, v73, v74, "unsafeBlocking [%s] run duration: %s", v75, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23DEC0](v76, -1, -1);
      MEMORY[0x24C23DEC0](v75, -1, -1);
    }

    v22 = v125;
  }

  v84 = sub_24B35B950();
  if (v84)
  {
    v117 = a9;
    if (*(v28 + 1656) != -1)
    {
      swift_once();
    }

    v85 = sub_24B35B660();
    __swift_project_value_buffer(v85, qword_2810647F0);
    v86 = v126;
    v87 = sub_24B35B640();
    v88 = sub_24B35B7A0();

    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      v90 = swift_slowAlloc();
      v133[0] = v90;
      *v89 = 136315394;
      v91 = sub_24B35B810();
      v93 = sub_24B358FD4(v91, v92, v133);

      *(v89 + 4) = v93;
      *(v89 + 12) = 2080;
      v94 = sub_24B35B940();
      v96 = sub_24B358FD4(v94, v95, v133);

      *(v89 + 14) = v96;
      _os_log_impl(&dword_24B351000, v87, v88, "Excessive unsafeBlocking [%s] run duration: %s", v89, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23DEC0](v90, -1, -1);
      v97 = v89;
      v22 = v125;
      MEMORY[0x24C23DEC0](v97, -1, -1);
    }

    v98 = v115;

    v99 = sub_24B35B640();
    v100 = sub_24B35B7B0();

    if (os_log_type_enabled(v99, v100))
    {
      v101 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v133[0] = v102;
      *v101 = 136446210;
      v132 = v98;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4868, &qword_24B35C030);
      sub_24B352D08(&qword_2810645B8, &qword_27EFE4868, &qword_24B35C030);
      v103 = sub_24B35B710();
      v105 = sub_24B358FD4(v103, v104, v133);

      *(v101 + 4) = v105;
      _os_log_impl(&dword_24B351000, v99, v100, "callstack: %{public}s", v101, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v102);
      MEMORY[0x24C23DEC0](v102, -1, -1);
      MEMORY[0x24C23DEC0](v101, -1, -1);
    }
  }

  if (qword_281064690 != -1)
  {
    v84 = swift_once();
  }

  v106 = qword_281064698;
  MEMORY[0x28223BE20](v84);
  v107 = v120;
  v113[-4] = v119;
  v113[-3] = v107;
  v113[-2] = v68;
  v113[-1] = v70;
  os_unfair_lock_lock((v106 + 24));
  sub_24B35B514((v106 + 16));
  os_unfair_lock_unlock((v106 + 24));
  v108 = sub_24B35B760();
  v109 = v129;
  sub_24B35585C(v129, v108);
  v110 = v122;
  v111 = *(v121 + 8);
  v111(v127, v122);
  (*(v123 + 8))(v109, v124);
  v111(v128, v110);
  return (v111)(v22, v110);
}

uint64_t sub_24B3556A8@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_24B35B930();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t sub_24B35585C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 24);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v5);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B35B930();
  MEMORY[0x28223BE20](v13);
  v15 = &v18 - v14;
  (*(v16 + 16))(&v18 - v14, a1, v13);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v10 + 32))(v12, v15, v9);
    return sub_24B35B740();
  }

  else
  {
    (*(v4 + 32))(v7, v15, v3);
    return sub_24B35B750();
  }
}

uint64_t sub_24B355A98(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v69 = a7;
  v70 = a8;
  v64 = a6;
  v77 = a5;
  v65 = a1;
  v13 = sub_24B35B670();
  v75 = *(v13 - 8);
  v76 = v13;
  MEMORY[0x28223BE20](v13);
  v73 = &v57 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = sub_24B35B6A0();
  v72 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v71 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a10;
  v16 = sub_24B35B760();
  v17 = *(v16 - 8);
  v62 = *(v17 + 64);
  MEMORY[0x28223BE20](v16);
  v79 = &v57 - v18;
  v61 = sub_24B35B8A0();
  v60 = *(v61 - 8);
  v19 = *(v60 + 64);
  v20 = MEMORY[0x28223BE20](v61);
  if (qword_2810646A0 != -1)
  {
    v20 = swift_once();
  }

  v63 = a9;
  v21 = qword_2810646A8;
  MEMORY[0x28223BE20](v20);
  v67 = a2;
  *(&v57 - 2) = a2;
  *(&v57 - 1) = a3;
  v78 = a3;
  os_unfair_lock_lock((v21 + 24));
  sub_24B35AB58((v21 + 16), aBlock);
  os_unfair_lock_unlock((v21 + 24));
  v68 = a4;
  if (*a4)
  {
    v22 = aBlock[0];
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v23 = sub_24B35B660();
    __swift_project_value_buffer(v23, qword_2810647F0);
    v24 = v77;
    v25 = sub_24B35B640();
    v26 = sub_24B35B790();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v57 = v17;
      v29 = v16;
      v30 = v28;
      aBlock[0] = v28;
      *v27 = 136315394;
      v31 = sub_24B35B810();
      v33 = sub_24B358FD4(v31, v32, aBlock);

      *(v27 + 4) = v33;
      *(v27 + 12) = 2048;
      *(v27 + 14) = v22;
      _os_log_impl(&dword_24B351000, v25, v26, "unsafeBlocking [%s] queue push: %ld", v27, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v30);
      v34 = v30;
      v16 = v29;
      v17 = v57;
      MEMORY[0x24C23DEC0](v34, -1, -1);
      MEMORY[0x24C23DEC0](v27, -1, -1);
    }
  }

  v58 = v16;
  v35 = v60;
  v36 = *(v60 + 16);
  v59 = &v57 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v61;
  v36(v59, v64, v61);
  (*(v17 + 16))(v79, v65, v16);
  v38 = (*(v35 + 80) + 40) & ~*(v35 + 80);
  v39 = (v19 + v38 + 7) & 0xFFFFFFFFFFFFFFF8;
  v40 = (v39 + 47) & 0xFFFFFFFFFFFFFFF8;
  v41 = (v40 + 15) & 0xFFFFFFFFFFFFFFF8;
  v42 = (v41 + 23) & 0xFFFFFFFFFFFFFFF8;
  v43 = (*(v17 + 80) + v42 + 8) & ~*(v17 + 80);
  v44 = swift_allocObject();
  v45 = v67;
  *(v44 + 2) = v66;
  *(v44 + 3) = v45;
  *(v44 + 4) = v78;
  (*(v35 + 32))(&v44[v38], v59, v37);
  v46 = &v44[v39];
  v47 = v68;
  v48 = v68[1];
  *v46 = *v68;
  *(v46 + 1) = v48;
  *(v46 + 4) = *(v47 + 4);
  v49 = v77;
  *&v44[v40] = v77;
  v50 = &v44[v41];
  v51 = v70;
  *v50 = v69;
  v50[1] = v51;
  *&v44[v42] = v63;
  (*(v17 + 32))(&v44[v43], v79, v58);
  aBlock[4] = sub_24B35AB84;
  aBlock[5] = v44;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24B352ABC;
  aBlock[3] = &block_descriptor;
  v52 = _Block_copy(aBlock);
  v49;

  v53 = v71;
  sub_24B35B680();
  v80 = MEMORY[0x277D84F90];
  sub_24B352CC0(qword_2810645C0, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4860, &qword_24B35C028);
  sub_24B352D08(&qword_2810645B0, &qword_27EFE4860, &qword_24B35C028);
  v54 = v73;
  v55 = v76;
  sub_24B35B830();
  MEMORY[0x24C23D900](0, v53, v54, v52);
  _Block_release(v52);
  (*(v75 + 8))(v54, v55);
  (*(v72 + 8))(v53, v74);
}

uint64_t sub_24B3561EC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, uint64_t (*a6)(uint64_t), uint64_t a7, uint64_t a8, uint64_t (*a9)(uint64_t), uint64_t a10)
{
  v114 = a8;
  v115 = a7;
  v116 = a6;
  v126 = a5;
  v124 = a10;
  v123 = *(a10 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v120 = v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v129 = v112 - v15;
  v16 = sub_24B35B8A0();
  v121 = *(v16 - 8);
  v122 = v16;
  v17 = MEMORY[0x28223BE20](v16);
  v127 = v112 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v128 = v112 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v112 - v22;
  if (qword_2810646A0 != -1)
  {
    v21 = swift_once();
  }

  v28 = qword_2810646A8;
  MEMORY[0x28223BE20](v21);
  v118 = a1;
  v119 = a2;
  v112[-2] = a1;
  v112[-1] = a2;
  os_unfair_lock_lock((v28 + 24));
  sub_24B35ACFC((v28 + 16), v131);
  v117 = 0;
  os_unfair_lock_unlock((v28 + 24));
  v24 = v131[0];
  sub_24B35B880();
  v25 = sub_24B35B890();
  v27 = v26;
  LODWORD(v28) = *a4;
  v125 = v23;
  if (v28)
  {
    v112[2] = v25;
    v113 = v28;
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v29 = sub_24B35B660();
    __swift_project_value_buffer(v29, qword_2810647F0);
    v30 = v126;
    v31 = sub_24B35B640();
    v32 = sub_24B35B790();

    v33 = os_log_type_enabled(v31, v32);
    v112[1] = v27;
    if (v33)
    {
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v131[0] = v35;
      *v34 = 136315394;
      v36 = sub_24B35B810();
      v38 = sub_24B358FD4(v36, v37, v131);

      *(v34 + 4) = v38;
      *(v34 + 12) = 2048;
      *(v34 + 14) = v24;
      _os_log_impl(&dword_24B351000, v31, v32, "unsafeBlocking [%s] queue pop: %ld", v34, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v35);
      MEMORY[0x24C23DEC0](v35, -1, -1);
      MEMORY[0x24C23DEC0](v34, -1, -1);
    }

    v39 = v30;
    v40 = sub_24B35B640();
    v41 = sub_24B35B790();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v131[0] = v43;
      *v42 = 136315394;
      v44 = sub_24B35B810();
      v46 = sub_24B358FD4(v44, v45, v131);

      *(v42 + 4) = v46;
      *(v42 + 12) = 2080;
      v47 = sub_24B35B940();
      v49 = sub_24B358FD4(v47, v48, v131);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_24B351000, v40, v41, "unsafeBlocking [%s] queue duration: %s", v42, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23DEC0](v43, -1, -1);
      MEMORY[0x24C23DEC0](v42, -1, -1);
    }

    v23 = v125;
    LODWORD(v28) = v113;
  }

  if (sub_24B35B950())
  {
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v50 = sub_24B35B660();
    __swift_project_value_buffer(v50, qword_2810647F0);
    v51 = v126;
    v52 = sub_24B35B640();
    v53 = sub_24B35B7A0();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v113 = v28;
      v28 = v54;
      v55 = swift_slowAlloc();
      v131[0] = v55;
      *v28 = 136315394;
      v56 = sub_24B35B810();
      v58 = sub_24B358FD4(v56, v57, v131);

      *(v28 + 4) = v58;
      *(v28 + 12) = 2080;
      v59 = sub_24B35B940();
      v61 = sub_24B358FD4(v59, v60, v131);

      *(v28 + 14) = v61;
      _os_log_impl(&dword_24B351000, v52, v53, "Excessive unsafeBlocking [%s] queue duration: %s", v28, 0x16u);
      swift_arrayDestroy();
      v62 = v55;
      v23 = v125;
      MEMORY[0x24C23DEC0](v62, -1, -1);
      v63 = v28;
      LOBYTE(v28) = v113;
      MEMORY[0x24C23DEC0](v63, -1, -1);
    }
  }

  v64 = sub_24B35B880();
  v116(v64);
  sub_24B35B880();
  v65 = sub_24B35B890();
  v67 = v66;
  if (v28)
  {
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v68 = sub_24B35B660();
    __swift_project_value_buffer(v68, qword_2810647F0);
    v69 = v126;
    v70 = sub_24B35B640();
    v71 = sub_24B35B7A0();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v131[0] = v73;
      *v72 = 136315394;
      v74 = sub_24B35B810();
      v76 = sub_24B358FD4(v74, v75, v131);

      *(v72 + 4) = v76;
      *(v72 + 12) = 2080;
      v77 = sub_24B35B940();
      v79 = sub_24B358FD4(v77, v78, v131);

      *(v72 + 14) = v79;
      _os_log_impl(&dword_24B351000, v70, v71, "unsafeBlocking [%s] run duration: %s", v72, 0x16u);
      swift_arrayDestroy();
      v80 = v73;
      v23 = v125;
      MEMORY[0x24C23DEC0](v80, -1, -1);
      MEMORY[0x24C23DEC0](v72, -1, -1);
    }
  }

  v81 = sub_24B35B950();
  if (v81)
  {
    if (qword_281064678 != -1)
    {
      swift_once();
    }

    v82 = sub_24B35B660();
    __swift_project_value_buffer(v82, qword_2810647F0);
    v83 = v126;
    v84 = sub_24B35B640();
    v85 = sub_24B35B7A0();

    v86 = os_log_type_enabled(v84, v85);
    v116 = a9;
    if (v86)
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v131[0] = v88;
      *v87 = 136315394;
      v89 = sub_24B35B810();
      v91 = sub_24B358FD4(v89, v90, v131);

      *(v87 + 4) = v91;
      *(v87 + 12) = 2080;
      v92 = sub_24B35B940();
      v94 = sub_24B358FD4(v92, v93, v131);

      *(v87 + 14) = v94;
      _os_log_impl(&dword_24B351000, v84, v85, "Excessive unsafeBlocking [%s] run duration: %s", v87, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x24C23DEC0](v88, -1, -1);
      MEMORY[0x24C23DEC0](v87, -1, -1);
    }

    v95 = v114;

    v96 = sub_24B35B640();
    v97 = sub_24B35B7B0();

    v98 = os_log_type_enabled(v96, v97);
    v23 = v125;
    if (v98)
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v131[0] = v100;
      *v99 = 136446210;
      v130 = v95;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4868, &qword_24B35C030);
      sub_24B352D08(&qword_2810645B8, &qword_27EFE4868, &qword_24B35C030);
      v101 = sub_24B35B710();
      v103 = sub_24B358FD4(v101, v102, v131);

      *(v99 + 4) = v103;
      _os_log_impl(&dword_24B351000, v96, v97, "callstack: %{public}s", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v100);
      MEMORY[0x24C23DEC0](v100, -1, -1);
      MEMORY[0x24C23DEC0](v99, -1, -1);
    }
  }

  if (qword_281064690 != -1)
  {
    v81 = swift_once();
  }

  v104 = qword_281064698;
  MEMORY[0x28223BE20](v81);
  v105 = v119;
  v112[-4] = v118;
  v112[-3] = v105;
  v112[-2] = v65;
  v112[-1] = v67;
  os_unfair_lock_lock((v104 + 24));
  sub_24B35AD28((v104 + 16));
  os_unfair_lock_unlock((v104 + 24));
  v107 = v123;
  v106 = v124;
  v108 = v129;
  (*(v123 + 16))(v120, v129, v124);
  sub_24B35B760();
  sub_24B35B750();
  v109 = v122;
  v110 = *(v121 + 8);
  v110(v127, v122);
  (*(v107 + 8))(v108, v106);
  v110(v128, v109);
  return (v110)(v23, v109);
}

uint64_t UnsafeBlockingQueueConfiguration.init(verbose:queueDurationThreshold:runDurationThreshold:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  *a6 = result;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 24) = a4;
  *(a6 + 32) = a5;
  return result;
}

void setUnsafeQueueConfiguration(context:config:)(uint64_t a1, unint64_t a2, __int128 *a3)
{
  v5 = a3[1];
  v17 = *a3;
  v18 = v5;
  v19 = *(a3 + 4);
  if (qword_281064678 != -1)
  {
    swift_once();
  }

  v6 = sub_24B35B660();
  __swift_project_value_buffer(v6, qword_2810647F0);

  v7 = sub_24B35B640();
  v8 = sub_24B35B7B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16[0] = v10;
    *v9 = 136446466;
    *(v9 + 4) = sub_24B358FD4(a1, a2, v16);
    *(v9 + 12) = 2082;
    v11 = sub_24B35B6C0();
    v13 = sub_24B358FD4(v11, v12, v16);

    *(v9 + 14) = v13;
    _os_log_impl(&dword_24B351000, v7, v8, "Setting configuration for unsafeBlocking queue %{public}s to %{public}s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x24C23DEC0](v10, -1, -1);
    MEMORY[0x24C23DEC0](v9, -1, -1);
  }

  if (qword_281064680 != -1)
  {
    v14 = swift_once();
  }

  v15 = qword_281064688;
  MEMORY[0x28223BE20](v14);
  os_unfair_lock_lock((v15 + 24));
  sub_24B358F5C((v15 + 16));
  os_unfair_lock_unlock((v15 + 24));
}

id sub_24B357040@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v34 = sub_24B35B7D0();
  MEMORY[0x28223BE20](v34);
  v33 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24B35B7E0();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_24B35B6A0();
  MEMORY[0x28223BE20](v13 - 8);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4840, &qword_24B35BEA0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v31 - v15;
  v35 = a1;
  v36 = a2;
  v17 = *a1;
  if (!*(v17 + 16))
  {
    v32 = a4;
    v18 = sub_24B35B780();
    (*(*(v18 - 8) + 56))(v16, 1, 1, v18);
    if (qword_281064760 != -1)
    {
      swift_once();
    }

    v19 = qword_281064768;
    v20 = sub_24B359834();
    v21 = swift_allocObject();
    *(v21 + 16) = v19;
    *(v21 + 24) = v20;

    sub_24B357B34(0, 0, v16, &unk_24B35C078, v21);

    a4 = v32;
    a2 = v36;
    if (!*(v17 + 16))
    {
      goto LABEL_9;
    }
  }

  v22 = sub_24B359A6C(a2, a3);
  if (v23)
  {
    v24 = *(*(v17 + 56) + 8 * v22);
    *a4 = v24;

    return v24;
  }

  else
  {
LABEL_9:
    v32 = sub_24B35B324();
    v37 = 0;
    v38 = 0xE000000000000000;
    sub_24B35B860();

    v37 = 0xD000000000000020;
    v38 = 0x800000024B35C1E0;
    MEMORY[0x24C23D800](a2, a3);
    sub_24B35B690();
    (*(v10 + 104))(v12, *MEMORY[0x277D85268], v9);
    v37 = MEMORY[0x277D84F90];
    sub_24B352CC0(&qword_281064598, MEMORY[0x277D85230], MEMORY[0x277D85238]);
    v26 = a4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE48A0, &qword_24B35C068);
    sub_24B352D08(&qword_2810645A8, &qword_27EFE48A0, &qword_24B35C068);
    sub_24B35B830();
    v27 = sub_24B35B800();

    v28 = v27;
    v29 = v35;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v37 = *v29;
    sub_24B35A73C(v28, v36, a3, isUniquelyReferenced_nonNull_native);

    *v29 = v37;
    *v26 = v28;
  }

  return result;
}

uint64_t sub_24B3574E8()
{
  if (qword_281064760 != -1)
  {
    swift_once();
  }

  v0 = qword_281064768;

  return MEMORY[0x2822009F8](sub_24B35757C, v0, 0);
}

uint64_t sub_24B35757C()
{
  sub_24B35B5F0();
  swift_allocObject();
  qword_2810646C0 = sub_24B35B600();

  v1 = *(v0 + 8);

  return v1();
}

void sub_24B35761C(uint64_t a1@<X8>)
{
  v43 = *MEMORY[0x277D85DE8];
  v3 = sub_24B35B630();
  v38 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v37 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24B35B620();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v33 - v10;
  sub_24B35B610();
  (*(v6 + 104))(v9, *MEMORY[0x277D08A98], v5);
  sub_24B352CC0(&qword_281064668, MEMORY[0x277D08AA0], MEMORY[0x277D08AA8]);
  sub_24B35B720();
  sub_24B35B720();
  v12 = *(v6 + 8);
  v12(v9, v5);
  v12(v11, v5);
  if (v41 != v40)
  {
    v27 = 1;
LABEL_16:
    v31 = sub_24B35B5E0();
    (*(*(v31 - 8) + 56))(a1, v27, 1, v31);
    return;
  }

  v34 = v3;
  v35 = a1;
  v36 = v1;
  v13 = [objc_allocWithZone(MEMORY[0x277CBEB38]) init];
  if (qword_281064690 != -1)
  {
LABEL_19:
    swift_once();
  }

  v14 = qword_281064698;
  os_unfair_lock_lock((qword_281064698 + 24));
  v15 = *(v14 + 16);

  os_unfair_lock_unlock((v14 + 24));
  v16 = 0;
  v17 = 1 << *(v15 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v15 + 64);
  v20 = (v17 + 63) >> 6;
  v39 = v13;
  if (v19)
  {
    while (1)
    {
      v21 = v16;
LABEL_11:
      v22 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v23 = *(v15 + 56) + 24 * (v22 | (v21 << 6));
      v24 = *(v23 + 16);
      v41 = *v23;
      v42 = v24;

      sub_24B35B6C0();
      v25 = sub_24B35B6B0();

      v26 = sub_24B35B6B0();

      v13 = v39;
      [v39 setValue:v25 forKey:v26];

      if (!v19)
      {
        goto LABEL_7;
      }
    }
  }

  while (1)
  {
LABEL_7:
    v21 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    if (v21 >= v20)
    {
      break;
    }

    v19 = *(v15 + 64 + 8 * v21);
    ++v16;
    if (v19)
    {
      v16 = v21;
      goto LABEL_11;
    }
  }

  v28 = objc_opt_self();
  *&v41 = 0;
  v29 = [v28 dataWithPropertyList:v13 format:200 options:0 error:&v41];
  v30 = v41;
  if (v29)
  {
    sub_24B35B5C0();

    (*(v38 + 104))(v37, *MEMORY[0x277D08AB0], v34);
    a1 = v35;
    sub_24B35B5D0();

    v27 = 0;
    goto LABEL_16;
  }

  v32 = v30;
  sub_24B35B5B0();

  swift_willThrow();
}

uint64_t sub_24B357B34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4840, &qword_24B35BEA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_24B359888(a3, v25 - v10);
  v12 = sub_24B35B780();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_24B352D5C(v11);
  }

  else
  {
    sub_24B35B770();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_24B35B730();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_24B35B6D0() + 32;
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

      sub_24B352D5C(a3);

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

  sub_24B352D5C(a3);
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

double sub_24B357DF4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  if (*(*a1 + 16) && (v9 = sub_24B359A6C(a2, a3), (v10 & 1) != 0))
  {
    v11 = *(v8 + 56) + 40 * v9;
    *a4 = *v11;
    *(a4 + 8) = *(v11 + 8);
    v12 = *(v11 + 24);
    *(a4 + 24) = v12;
  }

  else
  {
    v17[0] = 0;
    *&v17[8] = xmmword_24B35BE60;
    *&v17[24] = xmmword_24B35BE70;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = *a1;
    sub_24B35A5B0(v17, a2, a3, isUniquelyReferenced_nonNull_native);
    *a1 = v16;
    *&v12 = *v17;
    v14 = *&v17[16];
    *a4 = *v17;
    *(a4 + 16) = v14;
    *(a4 + 32) = *&v17[32];
  }

  return *&v12;
}

unint64_t sub_24B357F78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  v27 = *a1;
  result = sub_24B359A6C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_24B35A050(v16, isUniquelyReferenced_nonNull_native);
    v10 = v27;
    result = sub_24B359A6C(a2, a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    result = sub_24B35B900();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  *a1 = v10;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10[(result >> 6) + 8] |= 1 << result;
  v18 = (v10[6] + 16 * result);
  *v18 = a2;
  v18[1] = a3;
  *(v10[7] + 8 * result) = 0;
  v19 = v10[2];
  v15 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v10[2] = v20;
    a1 = result;

    result = a1;
LABEL_9:
    while (1)
    {
      v21 = v10[7];
      v22 = *(v21 + 8 * result);
      v15 = __OFADD__(v22, 1);
      v23 = v22 + 1;
      if (!v15)
      {
        break;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      v26 = result;
      sub_24B35AEC4();
      result = v26;
      v10 = v27;
      *a1 = v27;
      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *(v21 + 8 * result) = v23;
    v24 = v10[2];
    if (v24)
    {
      result = sub_24B359A6C(a2, a3);
      if (v25)
      {
        v24 = *(v10[7] + 8 * result);
      }

      else
      {
        v24 = 0;
      }
    }

    *a4 = v24;
  }

  return result;
}

unint64_t sub_24B358110@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *a1;
  v27 = *a1;
  result = sub_24B359A6C(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v4 = v12;
  if (v10[3] < v16)
  {
    sub_24B35A050(v16, isUniquelyReferenced_nonNull_native);
    v10 = v27;
    result = sub_24B359A6C(a2, a3);
    if ((v4 & 1) == (v17 & 1))
    {
      goto LABEL_6;
    }

    result = sub_24B35B900();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_17;
  }

LABEL_6:
  *a1 = v10;
  if (v4)
  {
    goto LABEL_9;
  }

LABEL_7:
  v10[(result >> 6) + 8] |= 1 << result;
  v18 = (v10[6] + 16 * result);
  *v18 = a2;
  v18[1] = a3;
  *(v10[7] + 8 * result) = 0;
  v19 = v10[2];
  v15 = __OFADD__(v19, 1);
  v20 = v19 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    v10[2] = v20;
    a1 = result;

    result = a1;
LABEL_9:
    while (1)
    {
      v21 = v10[7];
      v22 = *(v21 + 8 * result);
      v15 = __OFSUB__(v22, 1);
      v23 = v22 - 1;
      if (!v15)
      {
        break;
      }

LABEL_16:
      __break(1u);
LABEL_17:
      v26 = result;
      sub_24B35AEC4();
      result = v26;
      v10 = v27;
      *a1 = v27;
      if ((v4 & 1) == 0)
      {
        goto LABEL_7;
      }
    }

    *(v21 + 8 * result) = v23;
    v24 = v10[2];
    if (v24)
    {
      result = sub_24B359A6C(a2, a3);
      if (v25)
      {
        v24 = *(v10[7] + 8 * result);
      }

      else
      {
        v24 = 0;
      }
    }

    *a4 = v24;
  }

  return result;
}

uint64_t sub_24B3582A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a1;
  v32 = *a1;
  v14 = sub_24B359A6C(a2, a3);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_15;
  }

  v5 = v13;
  if (v12[3] >= v17)
  {
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      goto LABEL_16;
    }

    *a1 = v12;
    if ((v13 & 1) == 0)
    {
      goto LABEL_8;
    }

LABEL_10:
    while (1)
    {
      v27 = (v12[7] + 24 * v14);
      if (!__OFADD__(*v27, 1))
      {
        break;
      }

LABEL_15:
      __break(1u);
LABEL_16:
      sub_24B35B02C();
      v12 = v32;
      *a1 = v32;
      if ((v5 & 1) == 0)
      {
LABEL_8:
        v20 = sub_24B35B970();
        v12[(v14 >> 6) + 8] |= 1 << v14;
        v21 = (v12[6] + 16 * v14);
        *v21 = a2;
        v21[1] = a3;
        v22 = (v12[7] + 24 * v14);
        *v22 = 0;
        v22[1] = v20;
        v22[2] = v23;
        v24 = v12[2];
        v25 = __OFADD__(v24, 1);
        v26 = v24 + 1;
        if (v25)
        {
          __break(1u);
          goto LABEL_19;
        }

        v12[2] = v26;
      }
    }

    ++*v27;
    v28 = (v27 + 1);
    v29 = a4;
    v30 = a5;
  }

  else
  {
    sub_24B35A2F0(v17, isUniquelyReferenced_nonNull_native);
    v12 = v32;
    v18 = sub_24B359A6C(a2, a3);
    if ((v5 & 1) == (v19 & 1))
    {
      v14 = v18;
      *a1 = v32;
      if ((v5 & 1) == 0)
      {
        goto LABEL_8;
      }

      goto LABEL_10;
    }

LABEL_19:
    v28 = sub_24B35B900();
    __break(1u);
  }

  return MEMORY[0x2821FE670](v28, v29, v30);
}

uint64_t UnsafeSendableBox.contents.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  v4 = sub_24B35B820();
  return (*(*(v4 - 8) + 16))(a1, v1 + v3, v4);
}

uint64_t UnsafeSendableBox.contents.setter(uint64_t a1)
{
  v3 = *(*v1 + 88);
  swift_beginAccess();
  v4 = sub_24B35B820();
  (*(*(v4 - 8) + 40))(v1 + v3, a1, v4);
  return swift_endAccess();
}

uint64_t UnsafeSendableBox.deinit()
{
  v1 = *(*v0 + 88);
  v2 = sub_24B35B820();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

void unsafeFromAsyncTask<A>(_:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a4;
  v27 = a1;
  v6 = sub_24B35B820();
  v25 = *(v6 - 8);
  v26 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4840, &qword_24B35BEA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v24 - v10;
  sub_24B35B590();
  type metadata accessor for UnsafeSendableBox(0, a3, v12, v13);
  v14 = UnsafeSendableBox.__allocating_init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4848, &qword_24B35BEA8);
  v15 = swift_allocObject();
  *(v15 + 16) = 1;
  v16 = dispatch_group_create();
  dispatch_group_enter(v16);
  v17 = sub_24B35B780();
  (*(*(v17 - 8) + 56))(v11, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v14;
  v18[6] = v27;
  v18[7] = a2;
  v18[8] = v15;
  v19 = v16;

  sub_24B357B34(0, 0, v11, &unk_24B35BEB8, v18);

  sub_24B35B7C0();
  swift_beginAccess();
  v20 = *(v15 + 16);
  if (v20 >= 2)
  {
    swift_willThrow();
    v23 = v20;
  }

  else
  {
    v21 = *(*v14 + 88);
    swift_beginAccess();
    (*(v25 + 16))(v8, v14 + v21, v26);
    v22 = *(a3 - 8);
    if ((*(v22 + 48))(v8, 1, a3) == 1)
    {
      __break(1u);
    }

    else
    {

      (*(v22 + 32))(v24, v8, a3);
    }
  }
}

uint64_t sub_24B358A74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, uint64_t a8)
{
  v8[9] = a5;
  v8[10] = a8;
  v8[8] = a4;
  v8[11] = *(*a5 + 80);
  v10 = sub_24B35B820();
  v8[12] = v10;
  v8[13] = *(v10 - 8);
  v11 = swift_task_alloc();
  v8[14] = v11;
  v14 = (a6 + *a6);
  v12 = swift_task_alloc();
  v8[15] = v12;
  *v12 = v8;
  v12[1] = sub_24B358BF0;

  return v14(v11);
}

uint64_t sub_24B358BF0()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_24B358E0C;
  }

  else
  {
    v2 = sub_24B358D04;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_24B358D04()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);
  (*(*(*(v0 + 88) - 8) + 56))(v1, 0, 1);
  v5 = *(*v4 + 88);
  swift_beginAccess();
  (*(v2 + 40))(v4 + v5, v1, v3);
  swift_endAccess();
  dispatch_group_leave(*(v0 + 64));

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_24B358E0C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 80);
  swift_beginAccess();
  v3 = *(v2 + 16);
  *(v2 + 16) = v1;
  sub_24B3599B0(v3);
  dispatch_group_leave(*(v0 + 64));

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_24B358EA0()
{
  v0 = sub_24B35B660();
  __swift_allocate_value_buffer(v0, qword_2810647F0);
  __swift_project_value_buffer(v0, qword_2810647F0);
  return sub_24B35B650();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t sub_24B358F5C(uint64_t *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *a1;
  result = sub_24B35A5B0(v5, v3, v4, isUniquelyReferenced_nonNull_native);
  *a1 = v8;
  return result;
}

unint64_t sub_24B358FD4(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_24B3590A0(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
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
    sub_24B359A0C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_24B3590A0(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_24B3591AC(a5, a6);
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
    result = sub_24B35B870();
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

void *sub_24B3591AC(uint64_t a1, unint64_t a2)
{
  v3 = sub_24B3591F8(a1, a2);
  sub_24B359328(&unk_285E5CB78);
  return v3;
}

void *sub_24B3591F8(uint64_t a1, unint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  v6 = sub_24B359414(v5, 0);
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

  result = sub_24B35B870();
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
        v10 = sub_24B35B700();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_24B359414(v10, 0);
        result = sub_24B35B850();
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

uint64_t sub_24B359328(uint64_t result)
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

  result = sub_24B359488(result, v11, 1, v3);
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

void *sub_24B359414(uint64_t a1, uint64_t a2)
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
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4850, &qword_24B35C018);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_24B359488(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4850, &qword_24B35C018);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
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

uint64_t sub_24B3595C4()
{
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v0[7];
  v6 = v0[8];
  v7 = swift_task_alloc();
  *(v1 + 16) = v7;
  *v7 = v1;
  v7[1] = sub_24B3524FC;

  return sub_24B358A74(v7, v8, v9, v2, v3, v4, v5, v6);
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_24B3596BC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
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

uint64_t sub_24B359710(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24B359770(uint64_t a1)
{
  result = sub_24B35B820();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_24B359834()
{
  result = qword_281064750;
  if (!qword_281064750)
  {
    type metadata accessor for UnsafeBlockingActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281064750);
  }

  return result;
}

uint64_t sub_24B359888(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4840, &qword_24B35BEA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24B3598F8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_24B3524FC;

  return sub_24B352E7C(a1, v4);
}

uint64_t sub_24B3599B0(uint64_t result)
{
  if (result != 1)
  {
    JUMPOUT(0x24C23DDB0);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(void *a1)
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

uint64_t sub_24B359A0C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_24B359A6C(uint64_t a1, uint64_t a2)
{
  sub_24B35B910();
  sub_24B35B6E0();
  v4 = sub_24B35B920();

  return sub_24B35A8B4(a1, a2, v4);
}

uint64_t sub_24B359AE4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4858, &qword_24B35C020);
  v36 = v4;
  result = sub_24B35B8C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 40 * v21;
      v26 = *v25;
      v37 = *(v25 + 24);
      v38 = *(v25 + 8);
      if ((v36 & 1) == 0)
      {
      }

      sub_24B35B910();
      sub_24B35B6E0();
      result = sub_24B35B920();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 40 * v15;
      *v17 = v26;
      *(v17 + 8) = v38;
      *(v17 + 24) = v37;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24B359DAC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE48A8, &qword_24B35C080);
  v35 = v4;
  result = sub_24B35B8C0();
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

      sub_24B35B910();
      sub_24B35B6E0();
      result = sub_24B35B920();
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

uint64_t sub_24B35A050(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4880, &qword_24B35C048);
  v34 = v4;
  result = sub_24B35B8C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v33 = v5;
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
      if ((v34 & 1) == 0)
      {
      }

      sub_24B35B910();
      sub_24B35B6E0();
      result = sub_24B35B920();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      *(*(v7 + 56) + 8 * v15) = v24;
      ++*(v7 + 16);
      v5 = v33;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero(v9, ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_24B35A2F0(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4870, &qword_24B35C038);
  v36 = v4;
  result = sub_24B35B8C0();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v5;
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
      v18 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = *(v5 + 56) + 24 * v21;
      v37 = *v25;
      v26 = *(v25 + 16);
      if ((v36 & 1) == 0)
      {
      }

      sub_24B35B910();
      sub_24B35B6E0();
      result = sub_24B35B920();
      v27 = -1 << *(v7 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v14 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v14 + 8 * v29);
          if (v33 != -1)
          {
            v15 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v28) & ~*(v14 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = *(v7 + 56) + 24 * v15;
      *v17 = v37;
      *(v17 + 16) = v26;
      ++*(v7 + 16);
      v5 = v35;
    }

    v19 = v8;
    while (1)
    {
      v8 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v8 >= v13)
      {
        break;
      }

      v20 = v9[v8];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v12 = (v20 - 1) & v20;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v2;
    if (v34 >= 64)
    {
      bzero(v9, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

unint64_t sub_24B35A5B0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  result = sub_24B359A6C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24B359AE4(v16, a4 & 1);
      result = sub_24B359A6C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        result = sub_24B35B900();
        __break(1u);
        return result;
      }
    }

    else
    {
      v19 = result;
      sub_24B35A96C();
      result = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    v22 = v21[7] + 40 * result;
    v23 = *(a1 + 16);
    *v22 = *a1;
    *(v22 + 16) = v23;
    *(v22 + 32) = *(a1 + 32);
    return result;
  }

  v21[(result >> 6) + 8] |= 1 << result;
  v24 = (v21[6] + 16 * result);
  *v24 = a2;
  v24[1] = a3;
  v25 = v21[7] + 40 * result;
  v26 = *(a1 + 16);
  *v25 = *a1;
  *(v25 + 16) = v26;
  *(v25 + 32) = *(a1 + 32);
  v27 = v21[2];
  v15 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v28;
}

uint64_t sub_24B35A73C(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_24B359A6C(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      sub_24B359DAC(v16, a4 & 1);
      v11 = sub_24B359A6C(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        sub_24B35B900();
        __break(1u);
        return MEMORY[0x2821F96F8]();
      }
    }

    else
    {
      v19 = v11;
      sub_24B35AD58();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return MEMORY[0x2821F96F8]();
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

unint64_t sub_24B35A8B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_24B35B8E0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

void *sub_24B35A96C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4858, &qword_24B35C020);
  v2 = *v0;
  v3 = sub_24B35B8B0();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 40;
        v22 = *(v2 + 56) + v17;
        v23 = *v22;
        v24 = (*(v4 + 48) + v18);
        v25 = *(v22 + 8);
        v26 = *(v22 + 24);
        *v24 = v21;
        v24[1] = v20;
        v27 = *(v4 + 56) + v17;
        *v27 = v23;
        *(v27 + 8) = v25;
        *(v27 + 24) = v26;
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

uint64_t sub_24B35AB84()
{
  v1 = v0[2];
  v2 = *(sub_24B35B8A0() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_24B35B760() - 8);
  return sub_24B3561EC(v0[3], v0[4], v0 + v3, (v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), (v0 + ((*(v7 + 80) + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v7 + 80))), v1);
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

id sub_24B35AD58()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE48A8, &qword_24B35C080);
  v2 = *v0;
  v3 = sub_24B35B8B0();
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

void *sub_24B35AEC4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4880, &qword_24B35C048);
  v2 = *v0;
  v3 = sub_24B35B8B0();
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
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

void *sub_24B35B02C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EFE4870, &qword_24B35C038);
  v2 = *v0;
  v3 = sub_24B35B8B0();
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
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = *(v2 + 56) + v17;
        v23 = *(v22 + 16);
        v24 = (*(v4 + 48) + v18);
        v25 = *v22;
        *v24 = v21;
        v24[1] = v20;
        v26 = *(v4 + 56) + v17;
        *v26 = v25;
        *(v26 + 16) = v23;
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

uint64_t sub_24B35B1AC()
{
  v1 = v0[2];
  v2 = *(sub_24B35B8A0() - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 47) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EFE4890, &qword_24B35C058);
  v7 = *(sub_24B35B760() - 8);
  return sub_24B354A8C(v0[3], v0[4], v0 + v3, (v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + v6 + 8), *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8)), v0 + ((*(v7 + 80) + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8) + 8) & ~*(v7 + 80)), v1);
}

uint64_t sub_24B35B2EC(void *a1)
{
  result = (*(v1 + 24))();
  if (v2)
  {
    *a1 = v2;
  }

  return result;
}

unint64_t sub_24B35B324()
{
  result = qword_281064590;
  if (!qword_281064590)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_281064590);
  }

  return result;
}

uint64_t sub_24B35B370()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_24B3524F8;

  return sub_24B3574E8();
}

uint64_t sub_24B35B408(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24B35B428(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2810645A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_2810645A0);
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UnsafeBlockingQueueMetrics(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UnsafeBlockingQueueMetrics(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}