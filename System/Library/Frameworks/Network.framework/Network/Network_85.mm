uint64_t sub_181FC2880()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0, &unk_182B05830);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v5 - v1;
  v3 = sub_182AD2258();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839820, &qword_182AED950);
  swift_allocObject();
  result = sub_182AD46B8();
  qword_1EA836B88 = result;
  return result;
}

uint64_t NWActorSystem.assignID<A>(_:)@<X0>(char *x8_0@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0, &unk_182B05830);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v16 - v6;
  v8 = sub_182AD2258();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v16 - v13;
  if (qword_1EA836B90 != -1)
  {
    swift_once();
  }

  sub_182AD46C8();
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_181F49A88(v7, &qword_1EA8394C0, &unk_182B05830);
    sub_182AD2248();
    return sub_182167834(v11, x8_0);
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    (*(v9 + 16))(v11, v14, v8);
    sub_182167834(v11, x8_0);
    return (*(v9 + 8))(v14, v8);
  }
}

void NWActorSystem.actorReady<A>(_:)()
{
  v1 = *(v0 + 144);
  os_unfair_lock_lock(v1 + 4);
  sub_181FCE69C();
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_181FC2C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = (v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13[1] = a2;
  sub_182AD3BD8();
  type metadata accessor for WeakDistributedActor();
  v10 = swift_allocObject();
  *(v10 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v10 + 24) = a4;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + 152);
  *(a1 + 152) = 0x8000000000000000;
  sub_182259040(v10, v9, isUniquelyReferenced_nonNull_native);
  sub_181FCE158(v9, type metadata accessor for NWActorID);
  *(a1 + 152) = v14;
  return swift_endAccess();
}

uint64_t sub_181FC2D68@<X0>(uint64_t *a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839800, &qword_182AF6850);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v13 - v6;
  v8 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181FCDFD4(a2, v10, type metadata accessor for NWActorID);
  swift_beginAccess();
  sub_1820FA314(0, v10);
  swift_endAccess();
  sub_181FCDFD4(a2, v10, type metadata accessor for NWActorID);
  v11 = type metadata accessor for NWActorDiscoveryMechanism(0);
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  swift_beginAccess();
  sub_1820FA4BC(v7, v10);
  swift_endAccess();
  swift_beginAccess();
  *a3 = sub_18207A568(a2);
  return swift_endAccess();
}

Network::NWActorSystemInvocationEncoder __swiftcall NWActorSystem.makeInvocationEncoder()()
{
  v1 = MEMORY[0x1E69E7CC0];
  *v0 = MEMORY[0x1E69E7CC0];
  v0[1] = v1;
  return result;
}

uint64_t NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[15] = v17;
  v9[16] = v8;
  v9[13] = v15;
  v9[14] = v16;
  v9[11] = a7;
  v9[12] = a8;
  v9[9] = a3;
  v9[10] = a4;
  v9[7] = a1;
  v9[8] = a2;
  v9[17] = swift_conformsToProtocol();
  v9[18] = swift_conformsToProtocol();
  v10 = sub_182AD25E8();
  v9[19] = v10;
  v9[20] = *(v10 - 8);
  v9[21] = swift_task_alloc();
  v9[22] = swift_task_alloc();
  v9[23] = type metadata accessor for NWActorID(0);
  v9[24] = swift_task_alloc();
  v9[25] = swift_task_alloc();
  v11 = sub_182AD22D8();
  v9[26] = v11;
  v9[27] = *(v11 - 8);
  v9[28] = swift_task_alloc();
  v9[29] = swift_task_alloc();
  v9[30] = swift_task_alloc();
  v12 = sub_182AD2258();
  v9[31] = v12;
  v9[32] = *(v12 - 8);
  v9[33] = swift_task_alloc();
  v9[34] = swift_task_alloc();
  v9[35] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC3184, 0, 0);
}

uint64_t sub_181FC3184(uint64_t a1)
{
  v100 = v1;
  sub_182AD2248();
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 272);
  v3 = *(v1 + 280);
  v4 = *(v1 + 248);
  v5 = *(v1 + 256);
  v6 = *(v1 + 240);
  v95 = *(v1 + 232);
  v8 = *(v1 + 208);
  v7 = *(v1 + 216);
  v9 = *(v1 + 72);
  v10 = sub_182AD2698();
  *(v1 + 288) = __swift_project_value_buffer(v10, qword_1EA836B70);
  v11 = *(v5 + 16);
  *(v1 + 296) = v11;
  *(v1 + 304) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v3, v4);
  v12 = *(v7 + 16);
  v12(v6, v9, v8);
  v93 = v12;
  v12(v95, v9, v8);
  swift_unknownObjectRetain_n();
  v13 = sub_182AD2678();
  v14 = sub_182AD38D8();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v1 + 272);
  v18 = *(v1 + 248);
  v17 = *(v1 + 256);
  v90 = *(v1 + 240);
  v92 = *(v1 + 232);
  v20 = *(v1 + 208);
  v19 = *(v1 + 216);
  if (v15)
  {
    v21 = *(v1 + 200);
    v85 = *(v1 + 64);
    v88 = v14;
    v22 = swift_slowAlloc();
    v89 = swift_slowAlloc();
    v97 = v89;
    *v22 = 136315906;
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v23 = sub_182AD41B8();
    log = v13;
    v25 = v24;
    v86 = *(v17 + 8);
    v86(v16, v18);
    v26 = sub_181C64FFC(v23, v25, &v97);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    *(v1 + 48) = v85;
    sub_182AD3BD8();
    swift_unknownObjectRelease();
    v98 = 0;
    v99 = 0xE000000000000000;
    sub_182AD3BA8();

    v98 = 0x49726F746341574ELL;
    v99 = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v21, v21[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    v27 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v27);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    swift_unknownObjectRelease();
    v29 = v98;
    v28 = v99;
    sub_181FCE158(v21, type metadata accessor for NWActorID);
    v30 = sub_181C64FFC(v29, v28, &v97);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2080;
    sub_181FCE110(&qword_1EA8397B0, 255, MEMORY[0x1E69E8168], MEMORY[0x1E69E8170]);
    v31 = sub_182AD41B8();
    v33 = v32;
    v34 = *(v19 + 8);
    v34(v90, v20);
    v35 = sub_181C64FFC(v31, v33, &v97);

    *(v22 + 24) = v35;
    *(v22 + 32) = 2080;
    v36 = sub_182AD22C8();
    v38 = v37;
    v34(v92, v20);
    v39 = sub_181C64FFC(v36, v38, &v97);
    v40 = v86;

    *(v22 + 34) = v39;
    _os_log_impl(&dword_181A37000, log, v88, "Call %s: %s, target: %s, target.identifier: %s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v89, -1, -1);
    MEMORY[0x1865DF520](v22, -1, -1);
  }

  else
  {
    swift_unknownObjectRelease_n();

    v34 = *(v19 + 8);
    v34(v92, v20);
    v34(v90, v20);
    v40 = *(v17 + 8);
    v40(v16, v18);
  }

  *(v1 + 312) = v40;
  if (qword_1EA8370F0 != -1)
  {
    swift_once();
  }

  v41 = *(v1 + 224);
  v42 = *(v1 + 208);
  v43 = *(v1 + 72);
  v44 = sub_182AD2618();
  __swift_project_value_buffer(v44, qword_1EA839738);
  sub_182AD2608();
  sub_182AD25B8();
  v93(v41, v43, v42);
  swift_unknownObjectRetain_n();
  v45 = sub_182AD2608();
  v46 = sub_182AD3958();
  if (sub_182AD3998())
  {
    v47 = *(v1 + 224);
    v48 = *(v1 + 200);
    v49 = *(v1 + 208);
    v96 = v45;
    v50 = *(v1 + 64);
    v91 = v46;
    v51 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v97 = v94;
    *v51 = 136315394;
    v52 = sub_182AD22C8();
    v54 = v53;
    v34(v47, v49);
    v55 = sub_181C64FFC(v52, v54, &v97);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2080;
    *(v1 + 40) = v50;
    sub_182AD3BD8();
    swift_unknownObjectRelease();
    v98 = 0;
    v99 = 0xE000000000000000;
    sub_182AD3BA8();

    v98 = 0x49726F746341574ELL;
    v99 = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v48, v48[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v56 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v56);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    swift_unknownObjectRelease();
    v57 = v98;
    v58 = v99;
    sub_181FCE158(v48, type metadata accessor for NWActorID);
    v59 = sub_181C64FFC(v57, v58, &v97);

    *(v51 + 14) = v59;
    v60 = sub_182AD25C8();
    _os_signpost_emit_with_name_impl(&dword_181A37000, v96, v91, v60, "remoteCall", "Call to %s, actor: %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v94, -1, -1);
    MEMORY[0x1865DF520](v51, -1, -1);
  }

  else
  {
    v61 = *(v1 + 224);
    v62 = *(v1 + 208);
    swift_unknownObjectRelease_n();

    v34(v61, v62);
  }

  (*(*(v1 + 160) + 16))(*(v1 + 168), *(v1 + 176), *(v1 + 152));
  sub_182AD2658();
  swift_allocObject();
  *(v1 + 320) = sub_182AD2648();
  if (qword_1EA837100 != -1)
  {
    swift_once();
  }

  v63 = *(v1 + 192);
  v64 = *(v1 + 128);
  v65 = *(v1 + 64);
  sub_182AD46C8();
  v66 = *(v1 + 16);
  _s18RemoteCallActivityCMa();
  swift_allocObject();
  v67 = sub_1820AD4EC(v66);
  *(v1 + 328) = v67;
  *(v1 + 24) = v65;
  sub_182AD3BD8();
  v68 = *(v64 + 144);
  v69 = swift_task_alloc();
  v69[2] = v64;
  v69[3] = v63;
  v69[4] = v67;
  v70 = swift_task_alloc();
  *(v70 + 16) = sub_181FCD238;
  *(v70 + 24) = v69;
  os_unfair_lock_lock(v68 + 4);
  sub_181FCCB84(&v98);
  v71 = *(v1 + 192);
  os_unfair_lock_unlock(v68 + 4);
  v72 = v98;
  *(v1 + 336) = v98;

  sub_181FCE158(v71, type metadata accessor for NWActorID);
  if (qword_1EA837108 != -1)
  {
    swift_once();
  }

  v73 = *(v1 + 280);
  v75 = *(v1 + 120);
  v74 = *(v1 + 128);
  v76 = *(v1 + 80);
  *(v1 + 32) = v72;
  v77 = swift_task_alloc();
  *(v1 + 344) = v77;
  v78 = *(v1 + 104);
  v79 = *(v1 + 136);
  v80 = *(v1 + 64);
  *(v77 + 16) = *(v1 + 88);
  *(v77 + 32) = v78;
  *(v77 + 48) = v75;
  *(v77 + 56) = v79;
  *(v77 + 72) = v72;
  *(v77 + 80) = v74;
  *(v77 + 88) = v73;
  *(v77 + 96) = v80;
  *(v77 + 112) = v76;
  *(v77 + 120) = v67;

  v81 = swift_task_alloc();
  *(v1 + 352) = v81;
  *v81 = v1;
  v81[1] = sub_181FC3FC8;
  v82 = *(v1 + 104);
  v83 = *(v1 + 56);
  v102 = 324;
  v103 = v82;

  return MEMORY[0x1EEE6DE98](v83, v1 + 32, &unk_182AED590, v77, 0, 0, 0xD00000000000001BLL, 0x8000000182BD6A40);
}

uint64_t sub_181FC3FC8()
{
  *(*v1 + 360) = v0;

  if (v0)
  {
    v2 = sub_181FC4250;
  }

  else
  {
    v2 = sub_181FC40FC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FC40FC()
{
  v1 = v0[39];
  v2 = v0[40];
  v3 = v0[35];
  v4 = v0[31];
  v5 = v0[22];
  v6 = v0[19];
  v7 = v0[20];

  sub_181FC8028(v2, "remoteCall");

  (*(v7 + 8))(v5, v6);
  v1(v3, v4);

  v8 = v0[1];

  return v8();
}

uint64_t sub_181FC4250()
{
  v32 = v0;

  v1 = v0[37];
  v2 = v0[35];
  v30 = v0[45];
  v3 = v0[33];
  v4 = v0[31];
  v5 = v0[22];
  v7 = v0[19];
  v6 = v0[20];
  sub_181FC8028(v0[40], "remoteCall");

  (*(v6 + 8))(v5, v7);
  v1(v3, v2, v4);
  v8 = v30;
  v9 = sub_182AD2678();
  v10 = sub_182AD38B8();

  v11 = os_log_type_enabled(v9, v10);
  v12 = v0[39];
  v13 = v0[33];
  v14 = v0[31];
  if (v11)
  {
    v28 = v10;
    v15 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v31 = v29;
    *v15 = 136315394;
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v16 = sub_182AD41B8();
    v18 = v17;
    v12(v13, v14);
    v19 = sub_181C64FFC(v16, v18, &v31);

    *(v15 + 4) = v19;
    *(v15 + 12) = 2112;
    v20 = v30;
    v21 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v21;
    *v27 = v21;
    _os_log_impl(&dword_181A37000, v9, v28, "Call %s failed: %@", v15, 0x16u);
    sub_181F49A88(v27, &unk_1EA83AA30, &qword_182AF8600);
    MEMORY[0x1865DF520](v27, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x1865DF520](v29, -1, -1);
    MEMORY[0x1865DF520](v15, -1, -1);
  }

  else
  {

    v12(v13, v14);
  }

  v22 = v0[39];
  v23 = v0[35];
  v24 = v0[31];
  swift_willThrow();
  v22(v23, v24);

  v25 = v0[1];

  return v25();
}

uint64_t sub_181FC45C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[16] = v14;
  v8[17] = v15;
  v8[14] = v12;
  v8[15] = v13;
  v8[12] = a8;
  v8[13] = v11;
  v8[10] = a6;
  v8[11] = a7;
  v8[8] = a4;
  v8[9] = a5;
  v8[6] = a2;
  v8[7] = a3;
  v8[5] = a1;
  type metadata accessor for NWActorID(0);
  v8[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC4678, 0, 0);
}

uint64_t sub_181FC4678(double a1)
{
  v2 = *(v1 + 88);
  *(v1 + 32) = *(v1 + 72);
  sub_182AD3BD8();
  v3 = v2[1];
  *(v1 + 16) = *v2;
  *(v1 + 24) = v3;

  v4 = swift_task_alloc();
  *(v1 + 152) = v4;
  *v4 = v1;
  v4[1] = sub_181FC4780;
  v6 = *(v1 + 144);
  v7 = *(v1 + 112);
  v8 = *(v1 + 96);
  v9 = *(v1 + 80);
  v10 = *(v1 + 56);
  v11 = *(v1 + 64);
  v12 = *(v1 + 40);

  return sub_1821504E4(v12, v10, v11, v6, v9, (v1 + 16), v7, v8, v5);
}

uint64_t sub_181FC4780()
{
  v2 = *(*v1 + 144);
  v3 = *v1;
  *(*v1 + 160) = v0;

  sub_181FCE158(v2, type metadata accessor for NWActorID);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FC4930, 0, 0);
  }

  else
  {

    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_181FC4930()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[20] = a7;
  v8[21] = v7;
  v8[18] = a3;
  v8[19] = a5;
  v8[16] = a1;
  v8[17] = a2;
  v9 = sub_182AD25E8();
  v8[22] = v9;
  v8[23] = *(v9 - 8);
  v8[24] = swift_task_alloc();
  v8[25] = swift_task_alloc();
  v8[26] = type metadata accessor for NWActorID(0);
  v8[27] = swift_task_alloc();
  v8[28] = swift_task_alloc();
  v8[29] = swift_task_alloc();
  v10 = sub_182AD22D8();
  v8[30] = v10;
  v8[31] = *(v10 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v8[34] = swift_task_alloc();
  v11 = sub_182AD2258();
  v8[35] = v11;
  v8[36] = *(v11 - 8);
  v8[37] = swift_task_alloc();
  v8[38] = swift_task_alloc();
  v8[39] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC4B98, 0, 0);
}

uint64_t sub_181FC4B98(uint64_t a1)
{
  v94 = v1;
  sub_182AD2248();
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v2 = *(v1 + 304);
  v3 = *(v1 + 312);
  v4 = *(v1 + 280);
  v5 = *(v1 + 288);
  v6 = *(v1 + 272);
  v88 = *(v1 + 264);
  v8 = *(v1 + 240);
  v7 = *(v1 + 248);
  v9 = *(v1 + 136);
  v10 = sub_182AD2698();
  *(v1 + 320) = __swift_project_value_buffer(v10, qword_1EA836B70);
  v11 = *(v5 + 16);
  *(v1 + 328) = v11;
  *(v1 + 336) = (v5 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v11(v2, v3, v4);
  v12 = *(v7 + 16);
  v12(v6, v9, v8);
  v86 = v12;
  v12(v88, v9, v8);
  swift_unknownObjectRetain_n();
  v13 = sub_182AD2678();
  v14 = sub_182AD38D8();
  v15 = os_log_type_enabled(v13, v14);
  v16 = *(v1 + 304);
  v18 = *(v1 + 280);
  v17 = *(v1 + 288);
  v83 = *(v1 + 272);
  v85 = *(v1 + 264);
  v20 = *(v1 + 240);
  v19 = *(v1 + 248);
  if (v15)
  {
    v21 = *(v1 + 232);
    v78 = *(v1 + 128);
    v81 = v14;
    v22 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v91 = v82;
    *v22 = 136315906;
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v23 = sub_182AD41B8();
    log = v13;
    v25 = v24;
    v79 = *(v17 + 8);
    v79(v16, v18);
    v26 = sub_181C64FFC(v23, v25, &v91);

    *(v22 + 4) = v26;
    *(v22 + 12) = 2080;
    *(v1 + 120) = v78;
    sub_182AD3BD8();
    swift_unknownObjectRelease();
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_182AD3BA8();

    v92 = 0x49726F746341574ELL;
    v93 = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v21, v21[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    v27 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v27);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    swift_unknownObjectRelease();
    v29 = v92;
    v28 = v93;
    sub_181FCE158(v21, type metadata accessor for NWActorID);
    v30 = sub_181C64FFC(v29, v28, &v91);

    *(v22 + 14) = v30;
    *(v22 + 22) = 2080;
    sub_181FCE110(&qword_1EA8397B0, 255, MEMORY[0x1E69E8168], MEMORY[0x1E69E8170]);
    v31 = sub_182AD41B8();
    v33 = v32;
    v34 = *(v19 + 8);
    v34(v83, v20);
    v35 = sub_181C64FFC(v31, v33, &v91);

    *(v22 + 24) = v35;
    *(v22 + 32) = 2080;
    v36 = sub_182AD22C8();
    v38 = v37;
    v34(v85, v20);
    v39 = sub_181C64FFC(v36, v38, &v91);
    v40 = v79;

    *(v22 + 34) = v39;
    _os_log_impl(&dword_181A37000, log, v81, "Call %s: %s, target: %s, target.identifier: %s", v22, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v82, -1, -1);
    MEMORY[0x1865DF520](v22, -1, -1);
  }

  else
  {
    swift_unknownObjectRelease_n();

    v34 = *(v19 + 8);
    v34(v85, v20);
    v34(v83, v20);
    v40 = *(v17 + 8);
    v40(v16, v18);
  }

  *(v1 + 344) = v40;
  if (qword_1EA8370F0 != -1)
  {
    swift_once();
  }

  v41 = *(v1 + 256);
  v42 = *(v1 + 240);
  v43 = *(v1 + 136);
  v44 = sub_182AD2618();
  __swift_project_value_buffer(v44, qword_1EA839738);
  sub_182AD2608();
  sub_182AD25B8();
  v86(v41, v43, v42);
  swift_unknownObjectRetain_n();
  v45 = sub_182AD2608();
  v46 = sub_182AD3958();
  if (sub_182AD3998())
  {
    v47 = *(v1 + 256);
    v48 = *(v1 + 232);
    v49 = *(v1 + 240);
    v89 = v45;
    v50 = *(v1 + 128);
    v84 = v46;
    v51 = swift_slowAlloc();
    v87 = swift_slowAlloc();
    v91 = v87;
    *v51 = 136315394;
    v52 = sub_182AD22C8();
    v54 = v53;
    v34(v47, v49);
    v55 = sub_181C64FFC(v52, v54, &v91);

    *(v51 + 4) = v55;
    *(v51 + 12) = 2080;
    *(v1 + 112) = v50;
    sub_182AD3BD8();
    swift_unknownObjectRelease();
    v92 = 0;
    v93 = 0xE000000000000000;
    sub_182AD3BA8();

    v92 = 0x49726F746341574ELL;
    v93 = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v48, v48[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v56 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v56);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    swift_unknownObjectRelease();
    v57 = v92;
    v58 = v93;
    sub_181FCE158(v48, type metadata accessor for NWActorID);
    v59 = sub_181C64FFC(v57, v58, &v91);

    *(v51 + 14) = v59;
    v60 = sub_182AD25C8();
    _os_signpost_emit_with_name_impl(&dword_181A37000, v89, v84, v60, "remoteCallVoid", "Call to %s, actor: %s", v51, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1865DF520](v87, -1, -1);
    MEMORY[0x1865DF520](v51, -1, -1);
  }

  else
  {
    v61 = *(v1 + 256);
    v62 = *(v1 + 240);
    swift_unknownObjectRelease_n();

    v34(v61, v62);
  }

  (*(*(v1 + 184) + 16))(*(v1 + 192), *(v1 + 200), *(v1 + 176));
  sub_182AD2658();
  swift_allocObject();
  *(v1 + 352) = sub_182AD2648();
  if (qword_1EA837100 != -1)
  {
    swift_once();
  }

  v63 = *(v1 + 224);
  v64 = *(v1 + 168);
  v65 = *(v1 + 128);
  sub_182AD46C8();
  v66 = *(v1 + 88);
  _s18RemoteCallActivityCMa();
  swift_allocObject();
  v67 = sub_1820AD4EC(v66);
  *(v1 + 360) = v67;
  *(v1 + 96) = v65;
  sub_182AD3BD8();
  v68 = *(v64 + 144);
  v69 = swift_task_alloc();
  v69[2] = v64;
  v69[3] = v63;
  v69[4] = v67;
  v70 = swift_task_alloc();
  *(v70 + 16) = sub_181FCE648;
  *(v70 + 24) = v69;
  os_unfair_lock_lock(v68 + 4);
  sub_181FCE618(&v92);
  v71 = *(v1 + 224);
  v90 = *(v1 + 144);
  v72 = *(v1 + 128);
  os_unfair_lock_unlock(v68 + 4);
  *(v1 + 368) = v92;

  sub_181FCE158(v71, type metadata accessor for NWActorID);
  *(v1 + 104) = v72;
  sub_182AD3BD8();
  *(v1 + 72) = *&v90->isa;
  v73 = swift_task_alloc();
  *(v1 + 376) = v73;
  *v73 = v1;
  v73[1] = sub_181FC5954;
  v74 = *(v1 + 312);
  v75 = *(v1 + 216);
  v76 = *(v1 + 136);

  return sub_182151ADC(v1 + 16, v74, v75, v76, (v1 + 72), v67);
}

uint64_t sub_181FC5954()
{
  v2 = *v1;
  *(*v1 + 384) = v0;

  if (v0)
  {
    v3 = sub_181FC5BF8;
  }

  else
  {
    sub_181FCD3B0(v2 + 16);
    v3 = sub_181FC5A70;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_181FC5A70()
{
  v1 = v0[44];
  v2 = v0[39];
  v9 = v0[43];
  v8 = v0[35];
  v3 = v0[25];
  v5 = v0[22];
  v4 = v0[23];
  sub_181FCE158(v0[27], type metadata accessor for NWActorID);

  sub_181FC8028(v1, "remoteCallVoid");

  (*(v4 + 8))(v3, v5);
  v9(v2, v8);

  v6 = v0[1];

  return v6();
}

uint64_t sub_181FC5BF8()
{
  v33 = v0;
  sub_181FCE158(v0[27], type metadata accessor for NWActorID);

  v1 = v0[44];
  v2 = v0[41];
  v3 = v0[39];
  v31 = v0[48];
  v4 = v0[37];
  v5 = v0[35];
  v6 = v0[25];
  v8 = v0[22];
  v7 = v0[23];

  sub_181FC8028(v1, "remoteCallVoid");

  (*(v7 + 8))(v6, v8);
  v2(v4, v3, v5);
  v9 = v31;
  v10 = sub_182AD2678();
  v11 = sub_182AD38B8();

  v12 = os_log_type_enabled(v10, v11);
  v13 = v0[43];
  v14 = v0[37];
  v15 = v0[35];
  if (v12)
  {
    v29 = v11;
    v16 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v32 = v30;
    *v16 = 136315394;
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v17 = sub_182AD41B8();
    v19 = v18;
    v13(v14, v15);
    v20 = sub_181C64FFC(v17, v19, &v32);

    *(v16 + 4) = v20;
    *(v16 + 12) = 2112;
    v21 = v31;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v22;
    *v28 = v22;
    _os_log_impl(&dword_181A37000, v10, v29, "Call %s failed: %@", v16, 0x16u);
    sub_181F49A88(v28, &unk_1EA83AA30, &qword_182AF8600);
    MEMORY[0x1865DF520](v28, -1, -1);
    __swift_destroy_boxed_opaque_existential_1(v30);
    MEMORY[0x1865DF520](v30, -1, -1);
    MEMORY[0x1865DF520](v16, -1, -1);
  }

  else
  {

    v13(v14, v15);
  }

  v23 = v0[43];
  v24 = v0[39];
  v25 = v0[35];
  swift_willThrow();
  v23(v24, v25);

  v26 = v0[1];

  return v26();
}

uint64_t NWActorSystem.deinit()
{
  sub_181FCD404(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));

  return v0;
}

uint64_t NWActorSystem.__deallocating_deinit()
{
  NWActorSystem.deinit();

  return swift_deallocClassInstance();
}

uint64_t NWActorSystem.invokeHandlerOnReturn(handler:resultBuffer:metatype:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_181FC6084, 0, 0);
}

uint64_t sub_181FC6084()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[4], v0[4], MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_181FCE5CC;
  v8 = v0[2];
  v7 = v0[3];

  return sub_181FC6154(v1, v7, v8, v1, v3, v5);
}

uint64_t sub_181FC6154(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a4 - 8);
  v6[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC6210, 0, 0);
}

uint64_t sub_181FC6210()
{
  sub_182AD3318();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_181FC62C4;
  v2 = v0[9];
  v3 = v0[5];

  return NWActorSystemResultHandler.onReturn<A>(value:)(v2, v3);
}

uint64_t sub_181FC62C4()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_181FC6458;
  }

  else
  {
    v2 = sub_181FC63D8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FC63D8()
{
  (*(v0[8] + 8))(v0[9], v0[5]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_181FC6458()
{
  (*(v0[8] + 8))(v0[9], v0[5]);

  v1 = v0[1];

  return v1();
}

void sub_181FC655C(void *a1@<X8>)
{
  v1 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v1;
}

uint64_t sub_181FC656C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_conformsToProtocol();
  swift_conformsToProtocol();
  v17 = swift_task_alloc();
  *(v9 + 16) = v17;
  *v17 = v9;
  v17[1] = sub_181F54964;

  return NWActorSystem.remoteCall<A, B, C>(on:target:invocation:throwing:returning:)(a1, a2, a3, a4, v15, v16, a7, a8);
}

uint64_t sub_181FC6680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  *v13 = v7;
  v13[1] = sub_181F5EB68;

  return NWActorSystem.remoteCallVoid<A, B>(on:target:invocation:throwing:)(a1, a2, a3, v14, a5, v15, a7);
}

uint64_t sub_181FC674C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_181FC6770, 0, 0);
}

uint64_t sub_181FC6770()
{
  v1 = dynamic_cast_existential_2_unconditional(v0[4], v0[4], MEMORY[0x1E69E6440], MEMORY[0x1E69E5E78]);
  v3 = v2;
  v5 = v4;
  v6 = swift_task_alloc();
  v0[5] = v6;
  *v6 = v0;
  v6[1] = sub_181FC6840;
  v8 = v0[2];
  v7 = v0[3];

  return sub_181FC6154(v1, v7, v8, v1, v3, v5);
}

uint64_t sub_181FC6840()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_181FC6934(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839800, &qword_182AF6850);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - v10;
  v12 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v22 - v16);
  sub_181FCDFD4(a2, &v22 - v16, type metadata accessor for NWActorID);
  sub_181FCDFD4(a3, v11, type metadata accessor for NWActorDiscoveryMechanism);
  v18 = type metadata accessor for NWActorDiscoveryMechanism(0);
  (*(*(v18 - 8) + 56))(v11, 0, 1, v18);
  swift_beginAccess();
  sub_1820FA4BC(v11, v17);
  swift_endAccess();
  sub_181FCDFD4(a2, v14, type metadata accessor for NWActorID);
  if (a4)
  {
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    v20 = sub_181FCDDD4;
  }

  else
  {
    v20 = 0;
    v19 = 0;
  }

  swift_beginAccess();
  sub_181AA39C0(a4, a5);
  sub_1820FA6A4(v20, v19, v14);
  return swift_endAccess();
}

uint64_t sub_181FC6B80(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  v4 = sub_182AD25E8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839810, &qword_182AED938);
  v3[10] = swift_task_alloc();
  v3[11] = type metadata accessor for RemoteCallEnvelope(0);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC6CD0, 0, 0);
}

uint64_t sub_181FC6CD0(double a1)
{
  v45 = v1;
  v2 = v1[7].i64[0];
  v3 = v1[5].i64[1];
  sub_181FCDFD4(v1[1].i64[1], v2, type metadata accessor for RemoteCallEnvelope);
  v4 = sub_181FC76D4((v2 + *(v3 + 20)));
  v1[7].i64[1] = v4;
  if (v4)
  {
    v6 = v4;
    v41 = v5;
    if (*(v1[7].i64[0] + *(v1[5].i64[1] + 36)))
    {
      sub_182AD3D98();
      v7 = 0;
    }

    else
    {
      v7 = 1;
    }

    v11 = v1[5].i64[0];
    v12 = sub_182AD3DC8();
    (*(*(v12 - 8) + 56))(v11, v7, 1, v12);
    if (qword_1EA8370F0 != -1)
    {
      swift_once();
    }

    v14 = v1[6].i64[1];
    v13 = v1[7].i64[0];
    v15 = v1[6].i64[0];
    v16 = sub_182AD2618();
    __swift_project_value_buffer(v16, qword_1EA839738);
    sub_182AD2608();
    sub_182AD25B8();
    sub_181FCDFD4(v13, v14, type metadata accessor for RemoteCallEnvelope);
    sub_181FCDFD4(v13, v15, type metadata accessor for RemoteCallEnvelope);
    v17 = sub_182AD2608();
    v18 = sub_182AD3958();
    v19 = sub_182AD3998();
    v21 = v1[6].i64[0];
    v20 = v1[6].i64[1];
    if (v19)
    {
      v40 = v18;
      v22 = v1[5].i64[1];
      v23 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v42 = v39;
      *v23 = 136315394;
      v24 = (v20 + *(v22 + 24));
      v25 = *v24;
      v26 = v24[1];

      sub_181FCE158(v20, type metadata accessor for RemoteCallEnvelope);
      v27 = sub_181C64FFC(v25, v26, &v42);

      *(v23 + 4) = v27;
      *(v23 + 12) = 2080;
      v28 = (v21 + *(v3 + 20));
      v43 = 0;
      v44 = 0xE000000000000000;
      sub_182AD3BA8();

      v43 = 0x49726F746341574ELL;
      v44 = 0xEA00000000002844;
      MEMORY[0x1865D9CA0](*v28, v28[1]);
      MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
      type metadata accessor for NWActorID(0);
      sub_182AD2258();
      sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
      v29 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v29);

      MEMORY[0x1865D9CA0](41, 0xE100000000000000);
      v31 = v43;
      v30 = v44;
      sub_181FCE158(v21, type metadata accessor for RemoteCallEnvelope);
      v32 = sub_181C64FFC(v31, v30, &v42);

      *(v23 + 14) = v32;
      v33 = sub_182AD25C8();
      _os_signpost_emit_with_name_impl(&dword_181A37000, v17, v40, v33, "executeRemoteCall", "Executing %s on %s", v23, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v39, -1, -1);
      MEMORY[0x1865DF520](v23, -1, -1);
    }

    else
    {

      sub_181FCE158(v21, type metadata accessor for RemoteCallEnvelope);
      sub_181FCE158(v20, type metadata accessor for RemoteCallEnvelope);
    }

    (*(v1[3].i64[1] + 16))(v1[4].i64[0], v1[4].i64[1], v1[3].i64[0]);
    sub_182AD2658();
    swift_allocObject();
    v1[8].i64[0] = sub_182AD2648();
    if (qword_1EA837108 != -1)
    {
      swift_once();
    }

    v34 = v1[7].i64[0];
    v35 = v1[5].i64[0];
    v36 = swift_task_alloc();
    v37 = vextq_s8(v1[2], v1[2], 8uLL);
    v1[1].i64[0] = v1[2].i64[0];
    v1[8].i64[1] = v36;
    *(v36 + 16) = v34;
    *(v36 + 24) = v37;
    *(v36 + 40) = v35;
    *(v36 + 48) = v6;
    *(v36 + 56) = v41;

    v38 = swift_task_alloc();
    v1[9].i64[0] = v38;
    *v38 = v1;
    v38[1] = sub_181FC7338;
    v47 = 382;
    v48 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DE98](v38, &v1[1], &unk_182AED948, v36, 0, 0, 0xD00000000000001BLL, 0x8000000182BD6A40);
  }

  else
  {
    sub_181FCD1A0();
    swift_allocError();
    *v8 = xmmword_182AE8BA0;
    *(v8 + 16) = 0xB000000000000000;
    swift_willThrow();
    sub_181FCE158(v1[7].i64[0], type metadata accessor for RemoteCallEnvelope);

    v9 = v1->i64[1];

    return v9();
  }
}

uint64_t sub_181FC7338()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_181FC75A8;
  }

  else
  {
    v2 = sub_181FC7474;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FC7474()
{
  v1 = v0[14];
  v3 = v0[9];
  v2 = v0[10];
  v4 = v0[7];
  v5 = v0[6];
  sub_181FC8028(v0[16], "executeRemoteCall");
  swift_unknownObjectRelease();

  (*(v4 + 8))(v3, v5);
  sub_181F49A88(v2, &qword_1EA839810, &qword_182AED938);
  sub_181FCE158(v1, type metadata accessor for RemoteCallEnvelope);

  v6 = v0[1];

  return v6();
}

uint64_t sub_181FC75A8()
{
  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[6];
  v4 = v0[7];
  sub_181FC8028(v0[16], "executeRemoteCall");
  swift_unknownObjectRelease();

  (*(v4 + 8))(v2, v3);
  sub_181F49A88(v1, &qword_1EA839810, &qword_182AED938);
  sub_181FCE158(v0[14], type metadata accessor for RemoteCallEnvelope);

  v5 = v0[1];

  return v5();
}

uint64_t sub_181FC76D4(uint64_t *a1)
{
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8394C0, &unk_182B05830);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v55 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v55 - v5;
  v61 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v61);
  v60 = (&v55 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for NWActorSystem.ServerRole(0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v66 = (&v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v55 - v11;
  v13 = *(v1 + 144);
  v69 = sub_181FCDED4;
  v70 = v1;
  os_unfair_lock_lock(v13 + 4);
  sub_181FCE618(&v71);
  os_unfair_lock_unlock(v13 + 4);
  v14 = v71;
  v67 = sub_181FCDEEC;
  v68 = v1;
  v62 = v1;
  os_unfair_lock_lock(v13 + 4);
  sub_181FCE618(&v71);
  os_unfair_lock_unlock(v13 + 4);
  v15 = v71;
  if (!*(v71 + 16) || (sub_18224F288(a1), (v16 & 1) == 0))
  {
    if (!*(v14 + 16) || (v18 = sub_181CA266C(*a1, a1[1]), (v19 & 1) == 0))
    {

      return 0;
    }

    v59 = a1;
    v20 = v12;
    sub_181FCDFD4(*(v14 + 56) + *(v8 + 72) * v18, v12, type metadata accessor for NWActorSystem.ServerRole);

    v21 = v66;
    sub_181FCDFD4(v12, v66, type metadata accessor for NWActorSystem.ServerRole);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v22 = *v21;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839798, &qword_182AED578) + 48);
      if (*(v15 + 16))
      {
        sub_18224F288(v59);
        if (v24)
        {

          Strong = swift_unknownObjectWeakLoadStrong();

          sub_181FCE158(v20, type metadata accessor for NWActorSystem.ServerRole);
          v25 = v21 + v23;
LABEL_25:
          sub_181F49A88(v25, &unk_1EA8397E0, qword_182AED8E8);
          return Strong;
        }
      }

      v58 = v23;

      if (qword_1EA836B68 != -1)
      {
        swift_once();
      }

      v35 = sub_182AD2698();
      __swift_project_value_buffer(v35, qword_1EA836B70);
      v36 = v60;
      sub_181FCDFD4(v59, v60, type metadata accessor for NWActorID);
      v37 = sub_182AD2678();
      v38 = sub_182AD38D8();
      v39 = os_log_type_enabled(v37, v38);
      v40 = v61;
      v57 = v22;
      if (v39)
      {
        v41 = swift_slowAlloc();
        v42 = swift_slowAlloc();
        v56 = v42;
        *v41 = 136315138;
        v71 = 0;
        v72 = 0xE000000000000000;
        v73[0] = v42;
        sub_182AD3BA8();

        v71 = 0x49726F746341574ELL;
        v72 = 0xEA00000000002844;
        MEMORY[0x1865D9CA0](*v36, v36[1]);
        MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
        sub_182AD2258();
        v43 = v38;
        sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v44 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v44);

        MEMORY[0x1865D9CA0](41, 0xE100000000000000);
        v45 = v71;
        v46 = v72;
        sub_181FCE158(v36, type metadata accessor for NWActorID);
        v47 = sub_181C64FFC(v45, v46, v73);

        *(v41 + 4) = v47;
        _os_log_impl(&dword_181A37000, v37, v43, "Creating on demand actor for id %s", v41, 0xCu);
        v48 = v56;
        __swift_destroy_boxed_opaque_existential_1(v56);
        MEMORY[0x1865DF520](v48, -1, -1);
        MEMORY[0x1865DF520](v41, -1, -1);
      }

      else
      {

        sub_181FCE158(v36, type metadata accessor for NWActorID);
      }

      if (qword_1EA836B90 != -1)
      {
        swift_once();
      }

      v50 = *(v40 + 20);
      v51 = sub_182AD2258();
      v52 = *(v51 - 8);
      v53 = v64;
      (*(v52 + 16))(v64, v59 + v50, v51);
      (*(v52 + 56))(v53, 0, 1, v51);
      sub_181AB5D28(v53, v63, &qword_1EA8394C0, &unk_182B05830);
      swift_task_localValuePush();
      Strong = v57(v62);
      swift_task_localValuePop();

      sub_181F49A88(v53, &qword_1EA8394C0, &unk_182B05830);
      sub_181FCE158(v20, type metadata accessor for NWActorSystem.ServerRole);
      v49 = v58;
    }

    else
    {

      Strong = *v21;
      v26 = v21[1];
      if (qword_1EA836B68 != -1)
      {
        swift_once();
      }

      v27 = sub_182AD2698();
      __swift_project_value_buffer(v27, qword_1EA836B70);
      swift_unknownObjectRetain();
      v28 = sub_182AD2678();
      v29 = sub_182AD38D8();
      swift_unknownObjectRelease();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        v72 = v26;
        v73[0] = v31;
        *v30 = 136315138;
        v71 = Strong;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA8397D8, &qword_182AED8E0);
        v32 = sub_182AD3038();
        v34 = sub_181C64FFC(v32, v33, v73);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_181A37000, v28, v29, "Returning singleton: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v31);
        MEMORY[0x1865DF520](v31, -1, -1);
        MEMORY[0x1865DF520](v30, -1, -1);
      }

      sub_181FCE158(v20, type metadata accessor for NWActorSystem.ServerRole);
      v49 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839788, &qword_182AED558) + 48);
    }

    v25 = v21 + v49;
    goto LABEL_25;
  }

  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

uint64_t sub_181FC8028(uint64_t a1, const char *a2)
{
  v18 = a2;
  v2 = sub_182AD2628();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_182AD25E8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EA8370F0 != -1)
  {
    swift_once();
  }

  v10 = sub_182AD2618();
  __swift_project_value_buffer(v10, qword_1EA839738);
  v11 = sub_182AD2608();
  sub_182AD2638();
  v12 = sub_182AD3948();
  if (sub_182AD3998())
  {

    sub_182AD2668();

    if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
    {
      v13 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v5, v2);
      v13 = "";
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    v15 = sub_182AD25C8();
    _os_signpost_emit_with_name_impl(&dword_181A37000, v11, v12, v15, v18, v13, v14, 2u);
    MEMORY[0x1865DF520](v14, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_181FC82B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a6;
  v7[13] = a7;
  v7[10] = a4;
  v7[11] = a5;
  v7[8] = a2;
  v7[9] = a3;
  v7[14] = type metadata accessor for NWActorSystemResultHandler(0);
  v7[15] = swift_task_alloc();
  v7[16] = type metadata accessor for NWFileSerializationContext(0);
  v7[17] = swift_task_alloc();
  v7[18] = type metadata accessor for RemoteCallEnvelope(0);
  v7[19] = swift_task_alloc();
  v7[20] = type metadata accessor for NWActorSystemInvocationDecoder(0);
  v7[21] = swift_task_alloc();
  v8 = sub_182AD22D8();
  v7[22] = v8;
  v7[23] = *(v8 - 8);
  v7[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FC8440, 0, 0);
}

uint64_t sub_181FC8440()
{
  v1 = v0[20];
  v2 = v0[18];
  v3 = v0[19];
  v4 = v0[17];
  v24 = v0[21];
  v25 = v0[16];
  v5 = v0[15];
  v28 = v0[14];
  v29 = v0[11];
  v23 = v0[10];
  v26 = v0[9];
  v6 = v0[8];

  sub_182AD22E8();
  sub_181FCDFD4(v6, v3, type metadata accessor for RemoteCallEnvelope);
  v27 = _s15ActorConnectionCMa(0);
  v0[5] = v27;
  v0[6] = &off_1EEFC3108;
  v0[2] = v23;
  sub_181FCDFD4(v3, v24 + *(v1 + 20), type metadata accessor for RemoteCallEnvelope);
  v7 = (v24 + *(v1 + 24));
  *v7 = *(v3 + *(v2 + 32));
  v7[1] = 0;
  sub_181F75240((v0 + 2), v4);
  sub_181FCDFD4(v3 + *(v2 + 20), v4 + *(v25 + 20), type metadata accessor for NWActorID);

  v8 = sub_181F80CAC(v26, v4);
  sub_181FCE158(v4, type metadata accessor for NWFileSerializationContext);
  sub_181FCE158(v3, type metadata accessor for RemoteCallEnvelope);
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  *v24 = v8;
  v9 = sub_182AD2258();
  (*(*(v9 - 8) + 16))(v5, v6, v9);
  v10 = (v5 + v28[5]);
  v10[3] = v27;
  v10[4] = &off_1EEFC3128;
  *v10 = v23;
  sub_181FCDFD4(v6 + *(v2 + 20), v5 + v28[6], type metadata accessor for NWActorID);
  v11 = (v5 + v28[7]);
  v11[3] = v27;
  v11[4] = &off_1EEFC3108;
  *v11 = v23;
  sub_181AB5D28(v29, v5 + v28[8], &qword_1EA839810, &qword_182AED938);
  ObjectType = swift_getObjectType();
  v0[7] = v26;
  swift_retain_n();
  v13 = swift_task_alloc();
  v0[25] = v13;
  v14 = type metadata accessor for NWActorSystem();
  v16 = sub_181FCE110(&qword_1EA839818, v15, type metadata accessor for NWActorSystem, &protocol conformance descriptor for NWActorSystem);
  *v13 = v0;
  v13[1] = sub_181FC87A0;
  v17 = v0[24];
  v18 = v0[21];
  v19 = v0[15];
  v20 = v0[12];
  v21 = v0[13];

  return MEMORY[0x1EEE6CC70](v20, v17, v18, v19, v14, ObjectType, v16, v21);
}

uint64_t sub_181FC87A0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_181FC89B4;
  }

  else
  {
    v2 = sub_181FC88B4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FC88B4()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  sub_181FCE158(v0[15], type metadata accessor for NWActorSystemResultHandler);
  sub_181FCE158(v4, type metadata accessor for NWActorSystemInvocationDecoder);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_181FC89B4()
{
  v2 = v0[23];
  v1 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  sub_181FCE158(v0[15], type metadata accessor for NWActorSystemResultHandler);
  sub_181FCE158(v4, type metadata accessor for NWActorSystemInvocationDecoder);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_181FC8AB4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v46 = a4;
  v8 = type metadata accessor for NWActorSystem.ServerRole(0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839830, &qword_182AED960);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v43 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  swift_beginAccess();
  v44 = a1;
  v17 = *(a1 + 160);
  if (*(v17 + 16) && (v18 = sub_181CA266C(a2, a3), (v19 & 1) != 0))
  {
    sub_181FCDFD4(*(v17 + 56) + *(v9 + 72) * v18, v16, type metadata accessor for NWActorSystem.ServerRole);
    v20 = 0;
  }

  else
  {
    v20 = 1;
  }

  v42 = *(v9 + 56);
  v42(v16, v20, 1, v8);
  swift_endAccess();
  v21 = (*(v9 + 48))(v16, 1, v8);
  sub_181F49A88(v16, &qword_1EA839830, &qword_182AED960);
  if (v21 == 1)
  {
    v22 = a2;
    if (qword_1EA836B68 != -1)
    {
      swift_once();
    }

    v23 = sub_182AD2698();
    __swift_project_value_buffer(v23, qword_1EA836B70);
    sub_181FCDFD4(v46, v11, type metadata accessor for NWActorSystem.ServerRole);

    v24 = sub_182AD2678();
    v25 = sub_182AD38D8();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v41 = v4;
      v27 = v26;
      v39 = swift_slowAlloc();
      v45[0] = v39;
      *v27 = 136315394;
      v40 = v22;
      *(v27 + 4) = sub_181C64FFC(v22, a3, v45);
      *(v27 + 12) = 2080;
      v28 = sub_181FBD958();
      v29 = a3;
      v31 = v30;
      sub_181FCE158(v11, type metadata accessor for NWActorSystem.ServerRole);
      v32 = sub_181C64FFC(v28, v31, v45);
      a3 = v29;

      *(v27 + 14) = v32;
      _os_log_impl(&dword_181A37000, v24, v25, "Registering %s as %s", v27, 0x16u);
      v33 = v39;
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v33, -1, -1);
      MEMORY[0x1865DF520](v27, -1, -1);

      v34 = v40;
    }

    else
    {

      sub_181FCE158(v11, type metadata accessor for NWActorSystem.ServerRole);
      v34 = v22;
    }

    v37 = v43;
    sub_181FCDFD4(v46, v43, type metadata accessor for NWActorSystem.ServerRole);
    v42(v37, 0, 1, v8);
    swift_beginAccess();

    sub_1820FA800(v37, v34, a3);
    return swift_endAccess();
  }

  else
  {
    sub_181FCD1A0();
    swift_allocError();
    *v35 = xmmword_182AED520;
    *(v35 + 16) = 0xB000000000000000;
    return swift_willThrow();
  }
}

uint64_t sub_181FC8F68(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v45 = a2;
  v38 = type metadata accessor for NWActorID(0);
  v48 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v44 = (&v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = *(a1 + 80);
  v49 = sub_181FCDF3C;
  v50 = a1;
  os_unfair_lock_lock(v9 + 4);
  v10 = 0;
  sub_181FCDF58(v52);
  os_unfair_lock_unlock(v9 + 4);
  result = *&v52[0];
  v47 = *(*&v52[0] + 16);
  if (!v47)
  {
  }

  v13 = 0;
  *&v11 = 136315138;
  v37 = v11;
  v42 = v8;
  v43 = v2;
  v46 = *&v52[0];
  while (v13 < *(result + 16))
  {
    v18 = sub_181FCDFD4(result + ((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v13, v8, type metadata accessor for NWActorID);
    v19 = *(v3 + 144);
    MEMORY[0x1EEE9AC00](v18);
    *(&v37 - 2) = v3;
    *(&v37 - 1) = v8;
    MEMORY[0x1EEE9AC00](v20);
    *(&v37 - 2) = sub_181FCDF74;
    *(&v37 - 1) = v21;
    os_unfair_lock_lock(v19 + 4);
    sub_181FCE630(v52);
    os_unfair_lock_unlock(v19 + 4);
    v23 = *&v52[0];
    if (*&v52[0])
    {
      v24 = *(&v52[0] + 1);
      v15 = swift_allocObject();
      *(v15 + 16) = v23;
      *(v15 + 24) = v24;
      v25 = qword_1EA836B68;

      if (v25 != -1)
      {
        swift_once();
      }

      v26 = sub_182AD2698();
      __swift_project_value_buffer(v26, qword_1EA836B70);
      v27 = v44;
      sub_181FCDFD4(v8, v44, type metadata accessor for NWActorID);
      v28 = sub_182AD2678();
      v29 = sub_182AD38D8();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        v39 = v30;
        v40 = swift_slowAlloc();
        v51 = v40;
        *&v52[0] = 0;
        *v30 = v37;
        *(&v52[0] + 1) = 0xE000000000000000;
        sub_182AD3BA8();

        *&v52[0] = 0x49726F746341574ELL;
        *(&v52[0] + 1) = 0xEA00000000002844;
        MEMORY[0x1865D9CA0](*v27, v27[1]);
        MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
        sub_182AD2258();
        v41 = v10;
        sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v31 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v31);

        MEMORY[0x1865D9CA0](41, 0xE100000000000000);
        v32 = v52[0];
        v10 = v41;
        sub_181FCE158(v27, type metadata accessor for NWActorID);
        v33 = sub_181C64FFC(v32, *(&v32 + 1), &v51);

        v34 = v39;
        *(v39 + 1) = v33;
        v35 = v34;
        _os_log_impl(&dword_181A37000, v28, v29, "Calling invalidation handler for %s", v34, 0xCu);
        v36 = v40;
        __swift_destroy_boxed_opaque_existential_1(v40);
        MEMORY[0x1865DF520](v36, -1, -1);
        MEMORY[0x1865DF520](v35, -1, -1);
      }

      else
      {

        sub_181FCE158(v27, type metadata accessor for NWActorID);
      }

      *&v52[0] = v45;

      v23(v52);

      v22 = sub_181A554F4(v23, v24);
      v14 = sub_181FCE5A8;
      v8 = v42;
      v3 = v43;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    ++v13;
    MEMORY[0x1EEE9AC00](v22);
    *(&v37 - 2) = v3;
    *(&v37 - 1) = v8;
    MEMORY[0x1EEE9AC00](v16);
    *(&v37 - 2) = sub_181FCE5E8;
    *(&v37 - 1) = v17;
    os_unfair_lock_lock(v19 + 4);
    sub_181FCE69C();
    os_unfair_lock_unlock(v19 + 4);
    sub_181A554F4(v14, v15);
    sub_181FCE158(v8, type metadata accessor for NWActorID);
    result = v46;
    if (v47 == v13)
    {
    }
  }

  __break(1u);
  return result;
}

__n128 sub_181FC950C@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, __n128 *a3@<X8>)
{
  swift_beginAccess();
  v6 = sub_18224F288(a2);
  v14 = 0u;
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *(a1 + 208);
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1822567D0();
    }

    v11 = *(v10 + 48);
    v12 = type metadata accessor for NWActorID(0);
    sub_181FCE158(v11 + *(*(v12 - 8) + 72) * v8, type metadata accessor for NWActorID);
    v14 = *(*(v10 + 56) + 16 * v8);
    sub_181FAB6EC(v8, v10);
    *(a1 + 208) = v10;
  }

  swift_endAccess();
  result = v14;
  *a3 = v14;
  return result;
}

uint64_t sub_181FC9610(void *a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = swift_allocObject();
  swift_weakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v5 = a1[3];
  v6 = a1[4];
  a1[3] = &unk_182AED928;
  a1[4] = v4;

  sub_181A554F4(v5, v6);

  v7 = swift_allocObject();
  swift_weakInit();
  v8 = swift_allocObject();
  swift_weakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v7;
  v10 = a1[5];
  v11 = a1[6];
  a1[5] = sub_181FCDEC4;
  a1[6] = v9;

  sub_181A554F4(v10, v11);

  v12 = swift_allocObject();
  swift_weakInit();
  v13 = a1[7];
  v14 = a1[8];
  a1[7] = sub_181FCDECC;
  a1[8] = v12;

  sub_181A554F4(v13, v14);
}

uint64_t sub_181FC97F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[9] = a2;
  v3[10] = a3;
  v3[8] = a1;
  return MEMORY[0x1EEE6DFA0](sub_181FC9814, 0, 0);
}

uint64_t sub_181FC9814()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[11] = Strong;
  if (Strong)
  {
    v2 = Strong;
    swift_beginAccess();
    v3 = swift_weakLoadStrong();
    v0[12] = v3;
    if (v3)
    {
      v4 = swift_task_alloc();
      v0[13] = v4;
      *v4 = v0;
      v4[1] = sub_181FC9944;
      v5 = v0[8];

      return sub_181FC6B80(v5, v2);
    }
  }

  v7 = v0[1];

  return v7();
}

uint64_t sub_181FC9944()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_181FC9AC4;
  }

  else
  {

    v2 = sub_181FC9A60;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FC9A60()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FC9AC4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_181FC9B30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = result;
    swift_beginAccess();
    if (swift_weakLoadStrong())
    {
      sub_181FC8F68(v5, a1);
    }
  }

  return result;
}

uint64_t sub_181FC9BCC(uint64_t *a1, uint64_t a2)
{
  swift_beginAccess();
  if (!swift_weakLoadStrong())
  {
    return 0;
  }

  v3 = sub_181FC76D4(a1);

  return v3;
}

void sub_181FC9C54(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v89 = a3;
  v94 = a4;
  v92 = type metadata accessor for NWActorDiscoveryMechanism.Target(0);
  MEMORY[0x1EEE9AC00](v92);
  v8 = v86 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for NWEndpoint(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v88 = v86 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v93 = v86 - v12;
  v91 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v91);
  v90 = (v86 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v16 = (v86 - v15);
  v17 = type metadata accessor for NWActorDiscoveryMechanism(0);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v86 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v95 = v86 - v22;
  swift_beginAccess();
  v23 = *(a1 + 200);
  if (*(v23 + 16))
  {
    v24 = sub_18224F288(a2);
    if (v25)
    {
      v26 = *(*(v23 + 56) + 8 * v24);
      swift_endAccess();
      *v94 = v26;

      return;
    }
  }

  v96 = a2;
  swift_endAccess();
  swift_beginAccess();
  v27 = *(a1 + 168);
  if (!*(v27 + 16) || (v28 = sub_18224F288(v96), (v29 & 1) == 0))
  {
    swift_endAccess();
    sub_181FCD1A0();
    swift_allocError();
    *v42 = 0xD000000000000061;
    v42[1] = 0x8000000182BD6BB0;
    v42[2] = 0x4000000000000000;
    swift_willThrow();
    return;
  }

  v87 = v4;
  sub_181FCDFD4(*(v27 + 56) + *(v18 + 72) * v28, v20, type metadata accessor for NWActorDiscoveryMechanism);
  v30 = v95;
  sub_181FCE30C(v20, v95, type metadata accessor for NWActorDiscoveryMechanism);
  swift_endAccess();
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v31 = sub_182AD2698();
  v32 = __swift_project_value_buffer(v31, qword_1EA836B70);
  sub_181FCDFD4(v96, v16, type metadata accessor for NWActorID);
  v33 = sub_182AD2678();
  v34 = sub_182AD38D8();
  v35 = os_log_type_enabled(v33, v34);
  v86[1] = v32;
  if (v35)
  {
    v36 = swift_slowAlloc();
    v86[0] = swift_slowAlloc();
    v97 = v86[0];
    *v36 = 136315138;
    aBlock = 0;
    v100 = 0xE000000000000000;
    sub_182AD3BA8();

    aBlock = 0x49726F746341574ELL;
    v100 = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v16, v16[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    sub_182AD2258();
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v37 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v37);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    v38 = aBlock;
    v39 = v100;
    sub_181FCE158(v16, type metadata accessor for NWActorID);
    v40 = sub_181C64FFC(v38, v39, &v97);
    v30 = v95;

    *(v36 + 4) = v40;
    _os_log_impl(&dword_181A37000, v33, v34, "Establishing connection for %s", v36, 0xCu);
    v41 = v86[0];
    __swift_destroy_boxed_opaque_existential_1(v86[0]);
    MEMORY[0x1865DF520](v41, -1, -1);
    MEMORY[0x1865DF520](v36, -1, -1);
  }

  else
  {

    sub_181FCE158(v16, type metadata accessor for NWActorID);
  }

  sub_181FCDFD4(v30, v8, type metadata accessor for NWActorDiscoveryMechanism.Target);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v44 = v87;
  if (EnumCaseMultiPayload != 1)
  {
    sub_181FCE158(v8, type metadata accessor for NWActorDiscoveryMechanism.Target);
    sub_181FCD1A0();
    swift_allocError();
    *v85 = 0xD00000000000004CLL;
    v85[1] = 0x8000000182BD6C20;
    v85[2] = 0x9000000000000000;
    swift_willThrow();
    sub_181FCE158(v30, type metadata accessor for NWActorDiscoveryMechanism);
    return;
  }

  sub_181FCE30C(v8, v93, type metadata accessor for NWEndpoint);
  v45 = *(*(v30 + *(v17 + 28)) + 16);
  os_unfair_lock_lock((v45 + 24));
  v46 = nw_parameters_copy(*(v45 + 16));
  type metadata accessor for NWParameters();
  v47 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00, &qword_182AEE4C0);
  v48 = swift_allocObject();
  *(v48 + 24) = 0;
  v49 = (v48 + 24);
  *(v48 + 16) = v46;
  v86[0] = v47;
  v47[2] = v48;
  os_unfair_lock_unlock((v45 + 24));
  if (qword_1EA836BC8 != -1)
  {
    swift_once();
  }

  v50 = qword_1EA8431A8;
  type metadata accessor for NWProtocolFramer.Options();
  v51 = swift_allocObject();
  options = nw_framer_create_options(*(v50 + 32));
  v92 = v51;
  *(v51 + 16) = options;
  v53 = sub_182AD2678();
  v54 = sub_182AD38D8();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    *v55 = 0;
    _os_log_impl(&dword_181A37000, v53, v54, "Inserting Actor WireProtocol framer", v55, 2u);
    MEMORY[0x1865DF520](v55, -1, -1);
  }

  os_unfair_lock_lock(v49);
  v56 = nw_parameters_copy_default_protocol_stack(*(v48 + 16));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839780, &qword_182AED530);
  inited = swift_initStackObject();
  *(inited + 24) = 0;
  v58 = (inited + 24);
  *(inited + 16) = v56;
  v59 = (inited + 16);
  os_unfair_lock_unlock(v49);
  os_unfair_lock_lock(v58);
  v97 = MEMORY[0x1E69E7CC0];
  v60 = swift_allocObject();
  *(v60 + 16) = &v97;
  v61 = swift_allocObject();
  *(v61 + 16) = sub_181EC65EC;
  *(v61 + 24) = v60;
  v103 = sub_181FCE6B4;
  v104 = v61;
  aBlock = MEMORY[0x1E69E9820];
  v100 = 1107296256;
  v101 = sub_181EC635C;
  v102 = &block_descriptor_79;
  v62 = _Block_copy(&aBlock);

  nw_protocol_stack_iterate_application_protocols(v56, v62);
  _Block_release(v62);
  LOBYTE(v56) = swift_isEscapingClosureAtFileLocation();

  if (v56)
  {
    __break(1u);
  }

  else
  {
    os_unfair_lock_unlock(v58);
    aBlock = v97;
    v62 = v93;
    if (!(v97 >> 62))
    {
      goto LABEL_19;
    }
  }

  if (sub_182AD3EB8() < 0)
  {
    __break(1u);
    goto LABEL_28;
  }

LABEL_19:
  v63 = v92;

  sub_181FCCE80(0, 0, v63, sub_18206A4F8);

  v65 = aBlock;
  MEMORY[0x1EEE9AC00](v64);
  v86[-2] = v65;
  os_unfair_lock_lock(v58);
  sub_181C4E3C0(v59);
  if (v44)
  {
LABEL_28:
    os_unfair_lock_unlock(v58);
    __break(1u);
    return;
  }

  os_unfair_lock_unlock(v58);

  v66 = v88;
  sub_181FCDFD4(v62, v88, type metadata accessor for NWEndpoint);
  type metadata accessor for NWConnection(0);
  swift_allocObject();
  v67 = v86[0];

  v68 = sub_181E60914(v66, v67);

  swift_beginAccess();
  LOBYTE(v66) = *(a1 + 16);
  _s15ActorConnectionCMa(0);
  swift_allocObject();
  v69 = sub_182151708(v68, v66);

  sub_181FC9610(v69);
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v105 = *(a1 + 200);
  *(a1 + 200) = 0x8000000000000000;
  v71 = v96;
  sub_18225902C(v69, v96, isUniquelyReferenced_nonNull_native);
  *(a1 + 200) = v105;
  swift_endAccess();
  sub_182150CDC(v71, v89);
  v72 = v71;
  v73 = v90;
  sub_181FCDFD4(v72, v90, type metadata accessor for NWActorID);
  swift_retain_n();
  v74 = sub_182AD2678();
  v75 = sub_182AD38D8();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v96 = swift_slowAlloc();
    v97 = 0;
    v105 = v96;
    *v76 = 136315394;
    v98 = 0xE000000000000000;
    sub_182AD3BA8();

    v97 = 0x49726F746341574ELL;
    v98 = 0xEA00000000002844;
    MEMORY[0x1865D9CA0](*v73, v73[1]);
    MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
    sub_182AD2258();
    v77 = v73;
    sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
    v78 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v78);

    MEMORY[0x1865D9CA0](41, 0xE100000000000000);
    v79 = v97;
    v80 = v98;
    sub_181FCE158(v77, type metadata accessor for NWActorID);
    v81 = sub_181C64FFC(v79, v80, &v105);

    *(v76 + 4) = v81;
    *(v76 + 12) = 2048;
    id = nw_connection_get_id(v68[2].isa);

    *(v76 + 14) = id;

    _os_log_impl(&dword_181A37000, v74, v75, "Established connection for %s: C%llu", v76, 0x16u);
    v83 = v96;
    __swift_destroy_boxed_opaque_existential_1(v96);
    MEMORY[0x1865DF520](v83, -1, -1);
    MEMORY[0x1865DF520](v76, -1, -1);

    v84 = v93;
  }

  else
  {

    sub_181FCE158(v73, type metadata accessor for NWActorID);
    v84 = v62;
  }

  sub_181FCE158(v84, type metadata accessor for NWEndpoint);
  sub_181FCE158(v95, type metadata accessor for NWActorDiscoveryMechanism);
  *v94 = v69;
}

void sub_181FCAA78(uint64_t *result@<X0>, uint64_t **a2@<X8>)
{
  if (result[22])
  {
    *a2 = 0;
    return;
  }

  v29 = v3;
  v30 = v4;
  v5 = *(result + 3);
  v6 = *(result + 13);
  *&v27[64] = *(result + 11);
  *&v27[80] = v6;
  *&v27[96] = *(result + 15);
  v7 = result[17];
  v28 = v7;
  v8 = *(result + 5);
  *v27 = v5;
  *&v27[16] = v8;
  v9 = *(result + 9);
  *&v27[32] = *(result + 7);
  *&v27[48] = v9;
  if (!(v7 >> 62))
  {
    v10 = result;
    v11 = a2;
    v18 = *v27;
    v19 = *&v27[8];
    v20 = *&v27[24];
    v21 = *&v27[40];
    v22 = *&v27[56];
    v23 = *&v27[72];
    v24 = *&v27[88];
    v26 = v27[106];
    v25 = *&v27[104];
    sub_181FCE418(v27, v17);
    sub_181FF0A24(&v18, v7 & 0x3FFFFFFFFFFFFFFFLL);
    if (v2)
    {
      return;
    }

    goto LABEL_8;
  }

  if (v7 >> 62 == 1)
  {
    v10 = result;
    v11 = a2;
    v17[0] = 0;
    type metadata accessor for NWListener();
    swift_allocObject();

    v13 = NWListener.init(using:on:)(v12, v17);
    if (v2)
    {
      return;
    }

LABEL_8:
    v14 = v13;
    v15 = swift_allocObject();
    swift_weakInit();

    NWListener.newConnectionHandler.setter(sub_181FCE408, v15);

    v16 = swift_allocObject();
    swift_weakInit();

    NWListener.stateUpdateHandler.setter(sub_181FCE410, v16);

    v10[22] = v14;

    *v11 = v14;
    return;
  }

  *a2 = 0;
}

uint64_t sub_181FCAC94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_181FCACF4(a1);
  }

  return result;
}

uint64_t sub_181FCACF4(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21[-1] - v5;
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v7 = sub_182AD2698();
  __swift_project_value_buffer(v7, qword_1EA836B70);

  v8 = sub_182AD2678();
  v9 = sub_182AD38D8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v20 = a1;
    v21[0] = v11;
    *v10 = 136315138;
    type metadata accessor for NWConnection(0);

    v12 = sub_182AD3038();
    v14 = sub_181C64FFC(v12, v13, v21);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_181A37000, v8, v9, "Received connection: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1865DF520](v11, -1, -1);
    MEMORY[0x1865DF520](v10, -1, -1);
  }

  swift_beginAccess();
  v15 = *(v2 + 16);
  _s15ActorConnectionCMa(0);
  swift_allocObject();
  v16 = sub_182151708(a1, v15);

  sub_181FC9610(v16);
  v17 = sub_182AD3548();
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v16;
  v18[5] = v2;

  sub_181F774B4(0, 0, v6, &unk_182AED980, v18);
}

uint64_t sub_181FCAFAC(unsigned int *a1, uint64_t a2)
{
  v2 = *(a1 + 4);
  v3 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = v3;
    v6 = (v3 | (v2 << 32)) >> 32;
    sub_181FCB028(&v5);
  }

  return result;
}

void sub_181FCB028(unsigned int *a1)
{
  v1 = *a1 | (*(a1 + 4) << 32);
  if (qword_1EA836B68 != -1)
  {
    goto LABEL_27;
  }

  while (1)
  {
    v2 = sub_182AD2698();
    __swift_project_value_buffer(v2, qword_1EA836B70);
    v3 = sub_182AD2678();
    v4 = sub_182AD38D8();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v42 = v6;
      *v5 = 136315138;
      v7 = sub_182AD3038();
      v9 = sub_181C64FFC(v7, v8, &v42);

      *(v5 + 4) = v9;
      _os_log_impl(&dword_181A37000, v3, v4, "Listener state changed to %s", v5, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v6);
      MEMORY[0x1865DF520](v6, -1, -1);
      MEMORY[0x1865DF520](v5, -1, -1);
    }

    if (!(v1 >> 38))
    {
      break;
    }

    if (v1 >> 38 != 1)
    {
      if (v1 == 0x8000000001)
      {
        sub_181FCB4F8();
      }

      return;
    }

    v10 = sub_182AD2678();
    v11 = sub_182AD38B8();
    v40 = v1;
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v42 = v13;
      *v12 = 136315138;
      v14 = HIDWORD(v1) & 0x3F;
      v15 = sub_182AD3038();
      v17 = sub_181C64FFC(v15, v16, &v42);

      *(v12 + 4) = v17;
      _os_log_impl(&dword_181A37000, v10, v11, "Listener moved to failed state with error: %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x1865DF520](v13, -1, -1);
      MEMORY[0x1865DF520](v12, -1, -1);
    }

    else
    {
      v14 = HIDWORD(v1) & 0x3F;
    }

    v25 = *(v41 + 144);
    MEMORY[0x1EEE9AC00](v26);
    os_unfair_lock_lock(v25 + 4);
    sub_181FCCB84(&v42);
    os_unfair_lock_unlock(v25 + 4);
    v27 = v42;
    v28 = v42 + 8;
    v29 = 1 << *(v42 + 32);
    v30 = -1;
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    v1 = v30 & v42[8];
    v31 = (v29 + 63) >> 6;

    v32 = 0;
    while (v1)
    {
      v33 = v32;
LABEL_22:
      v34 = __clz(__rbit64(v1));
      v1 &= v1 - 1;
      v35 = (*(v27 + 48) + ((v33 << 10) | (16 * v34)));
      v36 = *v35;
      v37 = v35[1];
      sub_181F4B3B8();
      v38 = swift_allocError();
      *v39 = v40;
      *(v39 + 4) = v14;

      sub_181FC1468(v36, v37, v38);
    }

    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v31)
      {

        return;
      }

      v1 = v28[v33];
      ++v32;
      if (v1)
      {
        v32 = v33;
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_27:
    swift_once();
  }

  v18 = sub_182AD2678();
  v19 = sub_182AD38B8();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v42 = v21;
    *v20 = 136315138;
    v22 = sub_182AD3038();
    v24 = sub_181C64FFC(v22, v23, &v42);

    *(v20 + 4) = v24;
    _os_log_impl(&dword_181A37000, v18, v19, "Listener moved to waiting state with error: %s", v20, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v21);
    MEMORY[0x1865DF520](v21, -1, -1);
    MEMORY[0x1865DF520](v20, -1, -1);
  }
}

uint64_t sub_181FCB4F8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v13[-v3];
  v5 = *(v0 + 144);
  v14 = sub_181FCE4A0;
  v15 = v0;
  os_unfair_lock_lock(v5 + 4);
  sub_181FCE618(&v16);
  os_unfair_lock_unlock(v5 + 4);
  v6 = *(v16 + 16);
  if (v6)
  {
    v9 = *(v2 + 16);
    v7 = v2 + 16;
    v8 = v9;
    v10 = v16 + ((*(v7 + 64) + 32) & ~*(v7 + 64));
    v11 = *(v7 + 56);
    do
    {
      v8(v4, v10, v1);
      sub_182AD34C8();
      (*(v7 - 8))(v4, v1);
      v10 += v11;
      --v6;
    }

    while (v6);
  }
}

uint64_t sub_181FCB66C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[5] = type metadata accessor for NWActorID(0);
  v5[6] = swift_task_alloc();
  v5[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_181FCB70C, 0, 0);
}

uint64_t sub_181FCB70C()
{
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_181FCB7E0;
  v2 = v0[7];
  v3 = v0[5];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v2, 0, 0, 0xD00000000000001FLL, 0x8000000182BD6CC0, sub_181FCE580, v4, v3);
}

uint64_t sub_181FCB7E0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_181FCBCA0;
  }

  else
  {
    v2 = sub_181FCB8F4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_181FCB8F4()
{
  v27 = v0;
  v1 = v0[9];
  v2 = v0[7];
  v4 = v0[3];
  v3 = v0[4];
  v5 = *(v3 + 144);
  v6 = swift_task_alloc();
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v4;
  v7 = swift_task_alloc();
  *(v7 + 16) = sub_181FCE588;
  *(v7 + 24) = v6;
  os_unfair_lock_lock(v5 + 4);
  sub_181FCE618(&v25);
  os_unfair_lock_unlock(v5 + 4);
  if (v1)
  {
  }

  else
  {
    v9 = v25;

    if (v9)
    {
      if (qword_1EA836B68 != -1)
      {
        swift_once();
      }

      v11 = v0[6];
      v10 = v0[7];
      v12 = sub_182AD2698();
      __swift_project_value_buffer(v12, qword_1EA836B70);
      sub_181FCDFD4(v10, v11, type metadata accessor for NWActorID);
      v13 = sub_182AD2678();
      v14 = sub_182AD38B8();
      v15 = os_log_type_enabled(v13, v14);
      v16 = v0[6];
      if (v15)
      {
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v24 = v18;
        v25 = 0;
        *v17 = 136315138;
        v26 = 0xE000000000000000;
        sub_182AD3BA8();

        v25 = 0x49726F746341574ELL;
        v26 = 0xEA00000000002844;
        MEMORY[0x1865D9CA0](*v16, v16[1]);
        MEMORY[0x1865D9CA0](8236, 0xE200000000000000);
        sub_182AD2258();
        sub_181FCE110(&qword_1EA8397A0, 255, MEMORY[0x1E69695A8], MEMORY[0x1E69695E0]);
        v19 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v19);

        MEMORY[0x1865D9CA0](41, 0xE100000000000000);
        v20 = v25;
        v21 = v26;
        sub_181FCE158(v16, type metadata accessor for NWActorID);
        v22 = sub_181C64FFC(v20, v21, &v24);

        *(v17 + 4) = v22;
        _os_log_impl(&dword_181A37000, v13, v14, "Unexpectedly received another connection for %s, invalidating old connection", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v18);
        MEMORY[0x1865DF520](v18, -1, -1);
        MEMORY[0x1865DF520](v17, -1, -1);
      }

      else
      {

        sub_181FCE158(v16, type metadata accessor for NWActorID);
      }

      sub_18214FECC();
    }

    sub_181FCE158(v0[7], type metadata accessor for NWActorID);

    v23 = v0[1];

    return v23();
  }
}

uint64_t sub_181FCBCA0()
{
  v17 = v0;
  if (qword_1EA836B68 != -1)
  {
    swift_once();
  }

  v1 = v0[9];
  v2 = sub_182AD2698();
  __swift_project_value_buffer(v2, qword_1EA836B70);
  v3 = v1;
  v4 = sub_182AD2678();
  v5 = sub_182AD38B8();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[9];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v16 = v9;
    *v8 = 136315138;
    v0[2] = v7;
    v10 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    v11 = sub_182AD3038();
    v13 = sub_181C64FFC(v11, v12, &v16);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_181A37000, v4, v5, "Failed to retrieve actorID for incoming connection: %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v9);
    MEMORY[0x1865DF520](v9, -1, -1);
    MEMORY[0x1865DF520](v8, -1, -1);
  }

  else
  {
  }

  v14 = v0[1];

  return v14();
}

uint64_t sub_181FCBE80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  swift_beginAccess();
  v8 = *(a1 + 200);
  if (*(v8 + 16) && (v9 = sub_18224F288(a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = 0;
  }

  swift_endAccess();
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *(a1 + 200);
  *(a1 + 200) = 0x8000000000000000;
  sub_18225902C(a3, a2, isUniquelyReferenced_nonNull_native);
  *(a1 + 200) = v14;
  result = swift_endAccess();
  *a4 = v11;
  return result;
}

uint64_t sub_181FCBF7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  v8 = sub_181CA266C(a2, a3);
  if (v9)
  {
    v10 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(a1 + 160);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_182256A10();
    }

    v13 = *(v12 + 56);
    v14 = type metadata accessor for NWActorSystem.ServerRole(0);
    v15 = *(v14 - 8);
    sub_181FCE30C(v13 + *(v15 + 72) * v10, a4, type metadata accessor for NWActorSystem.ServerRole);
    sub_181FABA20(v10, v12);
    *(a1 + 160) = v12;
    (*(v15 + 56))(a4, 0, 1, v14);
  }

  else
  {
    v16 = type metadata accessor for NWActorSystem.ServerRole(0);
    (*(*(v16 - 8) + 56))(a4, 1, 1, v16);
  }

  return swift_endAccess();
}

void sub_181FCC120(uint64_t a1, uint64_t a2)
{
  v63 = a1;
  v64 = a2;
  v3 = type metadata accessor for NWActorID(0);
  v57 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839838, &qword_182AED968);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v51 - v12;
  v14 = *(v2 + 144);
  v65 = sub_181FCE2BC;
  v66 = v2;
  v55 = v2;
  os_unfair_lock_lock(v14 + 4);
  sub_181FCE618(v68);
  v15 = v5;
  v61 = 0;
  v54 = v14;
  os_unfair_lock_unlock(v14 + 4);
  v16 = v68[0] + 64;
  v17 = 1 << *(v68[0] + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(v68[0] + 64);
  v52 = (v17 + 63) >> 6;
  v58 = v68[0];

  v20 = 0;
  v21.n128_u64[0] = 136315394;
  v51 = v21;
  v59 = v10;
  v60 = v13;
  v62 = v15;
  v53 = v16;
  while (v19)
  {
    v28 = v20;
LABEL_16:
    v31 = __clz(__rbit64(v19));
    v19 &= v19 - 1;
    v32 = v31 | (v28 << 6);
    v33 = v58;
    v34 = v56;
    sub_181FCDFD4(*(v58 + 48) + *(v57 + 72) * v32, v56, type metadata accessor for NWActorID);
    v35 = *(*(v33 + 56) + 8 * v32);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839840, &qword_182AED970);
    v37 = *(v36 + 48);
    sub_181FCE30C(v34, v10, type metadata accessor for NWActorID);
    *&v10[v37] = v35;
    (*(*(v36 - 8) + 56))(v10, 0, 1, v36);

    v13 = v60;
    v15 = v62;
LABEL_17:
    sub_181B7D08C(v10, v13, &qword_1EA839838, &qword_182AED968);
    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839840, &qword_182AED970);
    if ((*(*(v38 - 8) + 48))(v13, 1, v38) == 1)
    {

      return;
    }

    v39 = *&v13[*(v38 + 48)];
    sub_181FCE30C(v13, v15, type metadata accessor for NWActorID);
    if (*v15 == v63 && v15[1] == v64 || (sub_182AD4268() & 1) != 0)
    {
      if (qword_1EA836B68 != -1)
      {
        swift_once();
      }

      v40 = sub_182AD2698();
      __swift_project_value_buffer(v40, qword_1EA836B70);

      v41 = sub_182AD2678();
      v42 = sub_182AD38D8();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        v68[0] = v44;
        *v43 = v51.n128_u32[0];
        v67 = v39;
        _s15ActorConnectionCMa(0);

        v45 = sub_182AD3038();
        v47 = sub_181C64FFC(v45, v46, v68);
        v13 = v60;

        *(v43 + 4) = v47;
        v48 = v63;
        v49 = v64;
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_181C64FFC(v48, v49, v68);
        _os_log_impl(&dword_181A37000, v41, v42, "Canceling connection %s associated with %s", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v44, -1, -1);
        MEMORY[0x1865DF520](v43, -1, -1);
      }

      v22 = sub_18214FECC();
      MEMORY[0x1EEE9AC00](v22);
      v23 = v62;
      *(&v51 - 2) = v55;
      *(&v51 - 1) = v23;
      MEMORY[0x1EEE9AC00](v24);
      *(&v51 - 2) = sub_181FCE374;
      *(&v51 - 1) = v25;
      v26 = v54;
      os_unfair_lock_lock(v54 + 4);
      v27 = v61;
      sub_181FCE69C();
      v15 = v23;
      v61 = v27;
      os_unfair_lock_unlock(v26 + 4);

      v16 = v53;
    }

    else
    {
    }

    sub_181FCE158(v15, type metadata accessor for NWActorID);
    v10 = v59;
  }

  if (v52 <= v20 + 1)
  {
    v29 = v20 + 1;
  }

  else
  {
    v29 = v52;
  }

  v30 = v29 - 1;
  while (1)
  {
    v28 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v28 >= v52)
    {
      v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839840, &qword_182AED970);
      (*(*(v50 - 8) + 56))(v10, 1, 1, v50);
      v19 = 0;
      v20 = v30;
      goto LABEL_17;
    }

    v19 = *(v16 + 8 * v28);
    ++v20;
    if (v19)
    {
      v20 = v28;
      goto LABEL_16;
    }
  }

  __break(1u);
}

uint64_t sub_181FCC7C0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for NWActorID(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = (&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_181FCDFD4(a2, v5, type metadata accessor for NWActorID);
  swift_beginAccess();
  sub_1820FA2D4(0, v5);
  return swift_endAccess();
}

uint64_t sub_181FCC88C(uint64_t result, int64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = (result - a2);
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v10 = &v9[v7];
  if (__OFADD__(v7, v9))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > v6[3] >> 1)
  {
    if (v7 <= v10)
    {
      v12 = v10;
    }

    else
    {
      v12 = v7;
    }

    v6 = sub_181CA2688(isUniquelyReferenced_nonNull_native, v12, 1, v6);
    *v4 = v6;
  }

  result = sub_182064734(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_181FCC990(unint64_t result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_181B81258(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_1820648D8(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_181FCCA90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v8 = *v6;
  v9 = *(*v6 + 16);
  if (v9 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v10 = result;
  v11 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v12 = __OFSUB__(1, v11);
  v13 = 1 - v11;
  if (v12)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v14 = v9 + v13;
  if (__OFADD__(v9, v13))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 24) >> 1)
  {
    v8 = a5();
    *v6 = v8;
  }

  result = a6(v10, a2, 1, a3, a4);
  *v6 = v8;
  return result;
}

unint64_t sub_181FCCB9C()
{
  result = qword_1EA836B50;
  if (!qword_1EA836B50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA83AB70, &unk_182AE9650);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836B50);
  }

  return result;
}

unint64_t sub_181FCCC44(unint64_t result, _BYTE *a2, uint64_t *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = &v6[v10];
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_181F59790(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_182064BD0(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_181FCCD18(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = a2;
  v8 = *v5;
  if (*(*v5 + 2) < a2)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v9 = result;
  v10 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_182AD3168();
    v11 = result;
    v12 = result - v10;
    if (!__OFSUB__(result, v10))
    {
      goto LABEL_9;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v4 = a4;
  v6 = a3;
  if ((a4 & 0x1000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v11 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v12 = v11 - v10;
  if (__OFSUB__(v11, v10))
  {
    goto LABEL_22;
  }

LABEL_9:
  v13 = *(v8 + 2);
  v14 = v13 + v12;
  if (__OFADD__(v13, v12))
  {
LABEL_23:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v8;
  if (!isUniquelyReferenced_nonNull_native || v14 > *(v8 + 3) >> 1)
  {
    if (v13 <= v14)
    {
      v16 = v14;
    }

    else
    {
      v16 = v13;
    }

    v8 = sub_181ADBA10(isUniquelyReferenced_nonNull_native, v16, 1, v8);
    *v5 = v8;
  }

  result = sub_1820650DC(v9, v7, v11, v6, v4);
  *v5 = v8;
  return result;
}

uint64_t sub_181FCCE80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v5 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v6;
    v10 = *v6 >> 62;
    v16 = a4;
    if (!v10)
    {
      result = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = sub_182AD3EB8();
  if (result < v7)
  {
    goto LABEL_15;
  }

LABEL_4:
  v12 = v7 - v8;
  if (__OFSUB__(v7, v8))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = 1 - v12;
  if (__OFSUB__(1, v12))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v10)
  {
    v14 = sub_182AD3EB8();
  }

  else
  {
    v14 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v15 = __OFADD__(v14, v13);
  result = v14 + v13;
  if (v15)
  {
    goto LABEL_18;
  }

  sub_181A49C08(result, 1);

  return v16(v8, v7, 1, v5);
}

uint64_t sub_181FCCF8C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_181FC0EF8(a1, v4, v5, v6, v7, v8);
}

uint64_t type metadata accessor for NWActorSystem.ServerRole(uint64_t a1)
{
  result = qword_1EA836BA0;
  if (!qword_1EA836BA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_181FCD148(uint64_t a1)
{
  v2 = *(v1 + 16);
  v4 = a1;
  return v2(&v4);
}

unint64_t sub_181FCD1A0()
{
  result = qword_1EA836958;
  if (!qword_1EA836958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA836958);
  }

  return result;
}

uint64_t sub_181FCD258(uint64_t a1)
{
  v4 = v1[9];
  v5 = v1[10];
  v6 = v1[11];
  v7 = v1[12];
  v8 = v1[13];
  v10 = v1[14];
  v9 = v1[15];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_181F54964;

  return sub_181FC45C0(a1, v4, v5, v6, v7, v8, v10, v9);
}

void *sub_181FCD36C@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_181FCD404(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, unint64_t a13, uint64_t a14, unint64_t a15)
{
  if (a15 >> 62 != 1)
  {
    if (a15 >> 62)
    {
      return v16;
    }

    sub_181AB612C(a8, a9);
    sub_181D9D680(a10, a11);
    sub_181D9D680(a12, a13);
  }
}

uint64_t dynamic_cast_existential_2_unconditional(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_conformsToProtocol2();
  if (result)
  {
    result = swift_conformsToProtocol2();
    if (result)
    {
      return a1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_181FCD5F0()
{
  result = qword_1EA8397C8;
  if (!qword_1EA8397C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8397C8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Network11NWTXTRecordVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t get_enum_tag_for_layout_string_7Network13NWActorSystemC4Role33_C0A7D50B08BE5B6E2370D86208C89EBCLLO(void *a1)
{
  v1 = a1[14];
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return ((*a1 >> 2) & 0xFFFFFFFE | *a1 & 1) + 2;
  }
}

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_181FCD770(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*a1 >> 58) & 0x3C | (*a1 >> 1) & 3 | (*(a1 + 104) >> 11) & 0xFFFFE000 | (*(a1 + 104) >> 1 << 6);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double sub_181FCD7E0(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 104) = 0u;
    *(a1 + 88) = 0u;
    *(a1 + 72) = 0u;
    *(a1 + 56) = 0u;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 120) = 1;
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
      v4 = -a2;
      *a1 = ((v4 << 58) | (2 * v4)) & 0xF000000000000007;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0u;
      *(a1 + 72) = 0u;
      *(a1 + 88) = 0u;
      *(a1 + 104) = (v4 >> 5) & 0xFE | ((v4 >> 13) << 24);
      *(a1 + 112) = 0;
      return result;
    }

    *(a1 + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_181FCD888(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 104) & 0xFFFF01;
    v3 = *(result + 112) & 0xFFFFFFFFFFFFFF8 | (a2 << 62);
    *result &= 0xFFFFFFFFFFFFFF9uLL;
    *(result + 104) = v2;
    *(result + 112) = v3;
  }

  else
  {
    *result = (a2 - 2) & 1 | (8 * ((a2 - 2) >> 1));
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 104) = 0;
    *(result + 112) = 0x8000000000000000;
  }

  return result;
}

void sub_181FCD904(uint64_t a1)
{
  sub_181FCD9A8(319, &unk_1EA836BE0, &qword_1EA8397D8, &qword_182AED8E0);
  if (v1 <= 0x3F)
  {
    sub_181FCD9A8(319, &qword_1EA836B38, &unk_1EA8397F0, &qword_182AE5F58);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_181FCD9A8(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA8397E0, qword_182AED8E8);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v6)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

uint64_t sub_181FCDA80(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

unint64_t sub_181FCDB58(unint64_t result, int64_t a2, __int128 *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 16);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = v6 + v10;
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > v5[3] >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_181CA2688(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_18206A7AC(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

char *sub_181FCDC2C(char *result, int64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = *(a3 + 16);
  v11 = __OFSUB__(v10, v8);
  v12 = v10 - v8;
  if (v11)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v13 = v6 + v12;
  if (__OFADD__(v6, v12))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v13 > *(v5 + 3) >> 1)
  {
    if (v6 <= v13)
    {
      v15 = v13;
    }

    else
    {
      v15 = v6;
    }

    v5 = sub_181ADBA10(isUniquelyReferenced_nonNull_native, v15, 1, v5);
    *v3 = v5;
  }

  result = sub_18206AA78(v7, a2, v10, a3);
  *v3 = v5;
  return result;
}

unint64_t sub_181FCDD00(unint64_t result, _BYTE *a2, uint64_t *a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v5 = *v3;
  v6 = *(*v3 + 2);
  if (v6 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v7 = result;
  v8 = &a2[-result];
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v9 = __OFSUB__(1, v8);
  v10 = 1 - v8;
  if (v9)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = &v6[v10];
  if (__OFADD__(v6, v10))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v3 = v5;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v5 + 3) >> 1)
  {
    if (v6 <= v11)
    {
      v14 = v11;
    }

    else
    {
      v14 = v6;
    }

    v5 = sub_181DDDFD0(isUniquelyReferenced_nonNull_native, v14, 1, v5);
    *v3 = v5;
  }

  result = sub_18206AB64(v7, a2, 1, a3);
  *v3 = v5;
  return result;
}

uint64_t sub_181FCDDDC(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_181F5EB68;

  return sub_181FC97F0(a1, v5, v4);
}

uint64_t objectdestroy_88Tm()
{

  return swift_deallocObject();
}

double sub_181FCDEEC@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 152);

  return result;
}

double sub_181FCDF90@<D0>(_OWORD *a1@<X8>)
{
  (*(v1 + 16))(&v5);
  if (!v2)
  {
    result = *&v5;
    *a1 = v5;
  }

  return result;
}

uint64_t sub_181FCDFD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_181FCE03C(uint64_t a1)
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
  v10[1] = sub_181F5EB68;

  return sub_181FC82B8(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_181FCE110(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_181FCE158(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_181FCE21C@<X0>(BOOL *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = *(*(v1 + 160) + 16) == 0;
  return result;
}

void sub_181FCE290(void *a1@<X8>)
{
  *(v1 + 184) = 0;
  v2 = *(v1 + 176);
  *(v1 + 176) = 0;
  *a1 = v2;
}

void sub_181FCE2A4(void *a1@<X8>)
{
  v2 = *(v1 + 192);
  *(v1 + 192) = MEMORY[0x1E69E7CC0];
  *a1 = v2;
}

double sub_181FCE2BC@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 200);

  return result;
}

uint64_t sub_181FCE30C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

double sub_181FCE450@<D0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 160);

  return result;
}

void sub_181FCE4A0(void *a1@<X8>)
{
  *(v1 + 184) = 1;
  v2 = *(v1 + 192);
  *(v1 + 192) = MEMORY[0x1E69E7CC0];
  *a1 = v2;
}

uint64_t sub_181FCE4C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F54964;

  return sub_181FCB66C(a1, v4, v5, v7, v6);
}

uint64_t destroy for StreamSendBuffer(uint64_t a1)
{
  Frame.deinit();
}

unint64_t sub_181FCE700(unint64_t result)
{
  v4 = result;
  v5 = *(v1 + 232);
  if (*(v1 + 224))
  {
    v6 = 0;
    goto LABEL_26;
  }

  v2 = *(v1 + 216);
  if (*(v1 + 24) == 5)
  {
    v6 = nw_frame_unclaimed_length(*v1);
    if (!v2)
    {
      goto LABEL_25;
    }

LABEL_10:
    v12 = v2[4];
    v13 = v2[3] + v12;
    if (v2[2] < v13)
    {
      v13 = v2[2];
    }

    v35 = v2;
    v36 = v12;
    v37 = v13;
    swift_retain_n();
    v15 = v2;
    do
    {
      if (v12 == v37)
      {
        if ((sub_181AC81FC(v14) & 1) == 0)
        {

          goto LABEL_25;
        }

        v15 = v35;
        v12 = v36;
      }

      v17 = v15 + 8 * v12++;
      v36 = v12;
      v18 = *(v17 + 40);
      swift_beginAccess();
      if (*(v18 + 40) == 5)
      {
        v16 = *(v18 + 16);

        v3 = nw_frame_unclaimed_length(v16);
      }

      else
      {
        v19 = *(v18 + 88);
        if (v19)
        {
          v20 = *(v18 + 72);
          v21 = *(v18 + 80);
          v10 = __OFADD__(v20, v21);
          v22 = v20 + v21;
          if (v10)
          {
            goto LABEL_39;
          }

          v3 = v19 - v22;
          if (__OFSUB__(v19, v22))
          {
            goto LABEL_40;
          }
        }

        else
        {

          v3 = 0;
        }
      }

      swift_endAccess();

      v10 = __OFADD__(v6, v3);
      v6 += v3;
    }

    while (!v10);
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v7 = *(v1 + 72);
  if (v7)
  {
    v8 = *(v1 + 56);
    v9 = *(v1 + 64);
    v10 = __OFADD__(v8, v9);
    v11 = v8 + v9;
    if (v10)
    {
      __break(1u);
    }

    else
    {
      v6 = v7 - v11;
      if (!__OFSUB__(v7, v11))
      {
        if (!v2)
        {
          goto LABEL_25;
        }

        goto LABEL_10;
      }
    }

    __break(1u);
    return result;
  }

  v6 = 0;
  if (v2)
  {
    goto LABEL_10;
  }

LABEL_25:
  if (v6 < 0)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

LABEL_26:
  v23 = v5 + v6;
  if (__CFADD__(v5, v6))
  {
LABEL_42:
    __break(1u);
LABEL_43:
    swift_once();
LABEL_30:
    v26 = sub_182AD2698();
    __swift_project_value_buffer(v26, qword_1EA843418);

    v27 = sub_182AD2678();
    v28 = sub_182AD38B8();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      v35 = v30;
      *v29 = 136315650;
      v31 = sub_182AD3BF8();
      v33 = sub_181C64FFC(v31, v32, &v35);

      *(v29 + 4) = v33;
      *(v29 + 12) = 2080;
      *(v29 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v35);
      *(v29 + 22) = 2080;
      v34 = sub_181C64FFC(v3, v2, &v35);

      *(v29 + 24) = v34;
      _os_log_impl(&dword_181A37000, v27, v28, "%s %s %s", v29, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v30, -1, -1);
      MEMORY[0x1865DF520](v29, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  result = v23 - v4;
  if (v23 > v4)
  {
    if (v5 <= v4)
    {
      return result;
    }

    v35 = 0;
    v36 = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD6D20);
    v24 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v24);

    MEMORY[0x1865D9CA0](0xD000000000000024, 0x8000000182BD6D40);
    v25 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v25);

    v3 = 0;
    v2 = 0xE000000000000000;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_43;
  }

  return 0;
}

unint64_t sub_181FCEB24(size_t a1, unint64_t a2, _DWORD *a3)
{
  v7 = *v3;
  v177 = *(v3 + 1);
  LODWORD(v8) = *(v3 + 24);
  v176[0] = *(v3 + 25);
  *(v176 + 15) = *(v3 + 5);
  v9 = v3[8];
  v136 = v3[7];
  v10 = v3[9];
  v11 = *(v3 + 8);
  v169 = *(v3 + 7);
  v170 = v11;
  v175 = *(v3 + 208);
  v12 = *(v3 + 12);
  v173 = *(v3 + 11);
  v174 = v12;
  v13 = *(v3 + 10);
  v171 = *(v3 + 9);
  v172 = v13;
  v14 = *(v3 + 6);
  v167 = *(v3 + 5);
  v168 = v14;
  v133 = v3[27];
  LOBYTE(v15) = *(v3 + 224);
  v16 = v3[29];
  if (qword_1EA837250 != -1)
  {
LABEL_103:
    swift_once();
  }

  v132 = byte_1EA843430;
  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    *v140 = 0;
    *&v140[8] = 0xE000000000000000;
    sub_182AD3BA8();
    MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BD6ED0);
    v119 = a1;
    *&v153 = a1;
    v86 = sub_182AD41B8();
    v127 = a3;
    MEMORY[0x1865D9CA0](v86);

    MEMORY[0x1865D9CA0](0xD000000000000015, 0x8000000182BD6EF0);
    *&v153 = a2;
    v87 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v87);

    MEMORY[0x1865D9CA0](0xD000000000000012, 0x8000000182BD6F10);
    *&v153 = *(a3 + 7);
    v88 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v88);

    v134 = *&v140[8];
    oslog = *v140;
    if (qword_1EA837248 != -1)
    {
      goto LABEL_126;
    }

    goto LABEL_105;
  }

  while (1)
  {
    if (a1 < v16)
    {
      *v140 = 0;
      *&v140[8] = 0xE000000000000000;
      sub_182AD3BA8();
      MEMORY[0x1865D9CA0](0xD000000000000029, 0x8000000182BD6EA0);
      *&v153 = a1;
      v17 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v17);

      MEMORY[0x1865D9CA0](0x6761726F7473202CLL, 0xED00002074612065);
      *&v153 = v16;
      v18 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v18);

      v19 = *v140;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v20 = sub_182AD2698();
      __swift_project_value_buffer(v20, qword_1EA843418);

      v21 = sub_182AD2678();
      v22 = sub_182AD38B8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *v140 = v24;
        *v23 = 136315650;
        v25 = sub_182AD3BF8();
        v27 = sub_181C64FFC(v25, v26, v140);

        *(v23 + 4) = v27;
        *(v23 + 12) = 2080;
        *(v23 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, v140);
        *(v23 + 22) = 2080;
        v28 = sub_181C64FFC(v19, *(&v19 + 1), v140);

        *(v23 + 24) = v28;
        _os_log_impl(&dword_181A37000, v21, v22, "%s %s %s", v23, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v24, -1, -1);
        MEMORY[0x1865DF520](v23, -1, -1);
      }

      else
      {
      }

      return 0;
    }

    if (*(a3 + 24) == 5)
    {
      v29 = nw_frame_unclaimed_length(*a3);
    }

    else
    {
      v29 = *(a3 + 9);
      if (v29)
      {
        v30 = *(a3 + 7);
        v31 = *(a3 + 8);
        v32 = __OFADD__(v30, v31);
        v33 = v30 + v31;
        if (v32)
        {
          goto LABEL_115;
        }

        v32 = __OFSUB__(v29, v33);
        v29 -= v33;
        if (v32)
        {
          goto LABEL_116;
        }

        if ((v29 & 0x8000000000000000) != 0)
        {
          __break(1u);
          goto LABEL_108;
        }
      }
    }

    if (v29 >= a2)
    {
      v29 = a2;
    }

    v130 = v29;
    if (v15)
    {
      return 0;
    }

    if (v8 == 5)
    {
      v15 = nw_frame_unclaimed_length(v7);
      a2 = v133;
      goto LABEL_30;
    }

    a2 = v133;
    if (!v10)
    {
      goto LABEL_29;
    }

    v35 = v136 + v9;
    if (__OFADD__(v136, v9))
    {
      goto LABEL_120;
    }

    v15 = v10 - v35;
    if (__OFSUB__(v10, v35))
    {
      goto LABEL_121;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      __break(1u);
LABEL_29:
      v15 = 0;
    }

LABEL_30:
    v127 = a3;
    a3 = (v16 + v15);
    if (__CFADD__(v16, v15))
    {
      __break(1u);
LABEL_110:
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      goto LABEL_114;
    }

    if (a3 <= a1)
    {
      v10 = 0;
      if (!a2)
      {
        return v10;
      }
    }

    else
    {
      *v140 = v7;
      *&v140[8] = v177;
      v140[24] = v8;
      *&v140[25] = v176[0];
      *&v140[40] = *(v176 + 15);
      v141 = v136;
      v142 = v9;
      v143 = v10;
      v150 = v173;
      v151 = v174;
      v152 = v175;
      v146 = v169;
      v147 = v170;
      v148 = v171;
      v149 = v172;
      v144 = v167;
      v145 = v168;
      if ((a1 - v16) < 0)
      {
        goto LABEL_117;
      }

      v9 = v130;
      v36 = sub_181FD03A0(v127, 0, a1 - v16, v130);
      if (!v36)
      {
        goto LABEL_118;
      }

      v10 = v36;
      if (v15 < v36)
      {
        goto LABEL_119;
      }

      if (v36 >= v130 || !a2)
      {
        return v10;
      }
    }

    v37 = *(a2 + 32);
    v38 = *(a2 + 24) + v37;
    if (*(a2 + 16) < v38)
    {
      v38 = *(a2 + 16);
    }

    v164 = a2;
    v165 = v37;
    v166 = v38;
    swift_retain_n();
    v119 = a1;
LABEL_42:
    v128 = v10;
    v40 = __CFADD__(a1, v10);
    v10 += a1;
    LODWORD(v8) = v40;
    v9 = a3;
    while (1)
    {
      if (v37 == v166 && (sub_181AC81FC(v39) & 1) == 0)
      {

        return v128;
      }

      v41 = v165;
      v136 = ++v165;
      v7 = *(v164 + 8 * v41 + 40);
      swift_beginAccess();
      a3 = *(v7 + 16);
      v163 = *(v7 + 24);
      LODWORD(v15) = *(v7 + 40);
      *v162 = *(v7 + 41);
      *&v162[15] = *(v7 + 56);
      v42 = *(v7 + 72);
      v43 = *(v7 + 80);
      v16 = *(v7 + 88);
      v45 = *(v7 + 144);
      v44 = *(v7 + 160);
      v46 = *(v7 + 112);
      v155 = *(v7 + 128);
      v156 = v45;
      v47 = *(v7 + 208);
      v48 = *(v7 + 176);
      v159 = *(v7 + 192);
      v160 = v47;
      v161 = *(v7 + 224);
      v157 = v44;
      v158 = v48;
      v153 = *(v7 + 96);
      v154 = v46;
      v134 = v43;
      oslog = v42;
      if (v15 == 5)
      {

        v49 = nw_frame_unclaimed_length(a3);
      }

      else if (v16)
      {
        v50 = v42 + v43;
        if (__OFADD__(v42, v43))
        {
          goto LABEL_101;
        }

        v32 = __OFSUB__(v16, v50);
        v51 = v16 - v50;
        if (v32)
        {
          goto LABEL_102;
        }

        a2 = v51;

        v49 = a2;
        if ((a2 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
          goto LABEL_103;
        }
      }

      else
      {

        v49 = 0;
      }

      a2 = a3;
      a3 = (v9 + v49);
      if (__CFADD__(v9, v49))
      {
        goto LABEL_99;
      }

      if (v8)
      {
        goto LABEL_100;
      }

      if (v10 < a3)
      {
        break;
      }

      swift_endAccess();

      v9 = a3;
      v37 = v136;
    }

    v52 = v10 - v9;
    if (v10 < v9)
    {
      goto LABEL_110;
    }

    v10 = v130 - v128;
    if (v130 < v128)
    {
      goto LABEL_111;
    }

    if (((v10 | v128 | v52) & 0x8000000000000000) != 0)
    {
      goto LABEL_112;
    }

    v120 = v49;
    v122 = v130 - v128;
    v125 = v52;
    if (v132 && __nwlog_is_datapath_logging_enabled())
    {
      *v140 = 0;
      *&v140[8] = 0xE000000000000000;
      sub_182AD3BA8();

      *v140 = 0x204D4F5246;
      *&v140[8] = 0xE500000000000000;
      v139 = v125;
      v70 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v70);

      MEMORY[0x1865D9CA0](0x206874676E656C20, 0xE800000000000000);
      v139 = v130 - v128;
      v71 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v71);

      MEMORY[0x1865D9CA0](0x666F204F544E4920, 0xED00002074657366);
      v139 = v128;
      v72 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v72);

      v73 = *v140;
      if (qword_1EA837248 != -1)
      {
        swift_once();
      }

      v74 = sub_182AD2698();
      __swift_project_value_buffer(v74, qword_1EA843418);
      v75 = swift_allocObject();
      *(v75 + 16) = "copyIntoFrame(_:atOffset:fromOffset:length:)";
      *(v75 + 24) = 44;
      *(v75 + 32) = 2;
      v76 = swift_allocObject();
      *(v76 + 16) = sub_181F8C724;
      *(v76 + 24) = v75;
      v113 = swift_allocObject();
      *(v113 + 16) = 1564427099;
      *(v113 + 24) = 0xE400000000000000;
      v102 = swift_allocObject();
      *(v102 + 16) = v73;

      v10 = sub_182AD2678();
      v77 = sub_182AD38A8();
      v104 = swift_allocObject();
      *(v104 + 16) = 32;
      v105 = swift_allocObject();
      *(v105 + 16) = 8;
      v78 = swift_allocObject();
      *(v78 + 16) = sub_181F8C71C;
      *(v78 + 24) = v76;
      v79 = swift_allocObject();
      *(v79 + 16) = sub_181F8C718;
      *(v79 + 24) = v78;
      v106 = v79;
      v107 = swift_allocObject();
      *(v107 + 16) = 32;
      v108 = swift_allocObject();
      *(v108 + 16) = 8;
      v80 = swift_allocObject();
      *(v80 + 16) = sub_181F8C720;
      *(v80 + 24) = v113;
      v81 = swift_allocObject();
      *(v81 + 16) = sub_181F8C718;
      *(v81 + 24) = v80;
      buf = v81;
      v111 = swift_allocObject();
      *(v111 + 16) = 32;
      v114 = swift_allocObject();
      *(v114 + 16) = 8;
      v82 = swift_allocObject();
      *(v82 + 16) = sub_181F8C720;
      *(v82 + 24) = v102;
      v9 = swift_allocObject();
      *(v9 + 16) = sub_181F8C718;
      *(v9 + 24) = v82;
      v103 = v77;
      v83 = v77;
      v8 = v10;
      if (os_log_type_enabled(v10, v83))
      {
        v10 = swift_slowAlloc();
        v84 = swift_slowAlloc();
        v137 = v84;
        v138 = 0;
        *v10 = 770;
        v85 = v84;
        v139 = v10 + 2;
        *v140 = sub_181F8C728;
        *&v140[8] = v104;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C728;
        *&v140[8] = v105;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C714;
        *&v140[8] = v106;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C728;
        *&v140[8] = v107;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C728;
        *&v140[8] = v108;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C714;
        *&v140[8] = buf;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C728;
        *&v140[8] = v111;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C728;
        *&v140[8] = v114;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        *v140 = sub_181F8C714;
        *&v140[8] = v9;
        sub_181F73AE0(v140, &v139, &v138, &v137);

        v9 = v8;
        _os_log_impl(&dword_181A37000, v8, v103, "%s %s %s", v10, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1865DF520](v85, -1, -1);
        MEMORY[0x1865DF520](v10, -1, -1);
      }

      else
      {
      }
    }

    *v140 = a2;
    *&v140[8] = v163;
    v140[24] = v15;
    *&v140[25] = *v162;
    *&v140[40] = *&v162[15];
    v141 = oslog;
    v142 = v134;
    v143 = v16;
    v150 = v159;
    v151 = v160;
    v152 = v161;
    v146 = v155;
    v147 = v156;
    v148 = v157;
    v149 = v158;
    v144 = v153;
    v145 = v154;
    v53 = Frame.unclaimedBytes.getter();
    if ((v55 & 1) == 0)
    {
      v56 = v53;
      if (v53)
      {
        v9 = v54 - v53 - v125;
        if (v54 - v53 > v125)
        {
          v57 = *(v127 + 1);
          *v140 = *v127;
          *&v140[16] = v57;
          *&v140[32] = *(v127 + 2);
          v58 = *(v127 + 6);
          v16 = *(v127 + 7);
          v152 = *(v127 + 208);
          v10 = *(v127 + 8);
          v8 = *(v127 + 9);
          v59 = *(v127 + 12);
          v150 = *(v127 + 11);
          v151 = v59;
          v60 = *(v127 + 8);
          v146 = *(v127 + 7);
          v147 = v60;
          v61 = *(v127 + 10);
          v148 = *(v127 + 9);
          v149 = v61;
          v62 = *(v127 + 6);
          v144 = *(v127 + 5);
          v145 = v62;
          *&v140[48] = v58;
          v141 = v16;
          v142 = v10;
          v143 = v8;
          v63 = Frame.unclaimedBytes.getter();
          if ((v64 & 1) == 0)
          {
            break;
          }
        }
      }
    }

LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    swift_once();
LABEL_105:
    v89 = sub_182AD2698();
    __swift_project_value_buffer(v89, qword_1EA843418);
    v90 = swift_allocObject();
    *(v90 + 16) = "copyOutSendData(offset:length:into:)";
    *(v90 + 24) = 36;
    *(v90 + 32) = 2;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_181F8C724;
    *(v91 + 24) = v90;
    v92 = swift_allocObject();
    *(v92 + 16) = 1564427099;
    *(v92 + 24) = 0xE400000000000000;
    v115 = swift_allocObject();
    *(v115 + 16) = oslog;
    *(v115 + 24) = v134;

    oslog = sub_182AD2678();
    v131 = sub_182AD38A8();
    v118 = swift_allocObject();
    *(v118 + 16) = 32;
    v117 = swift_allocObject();
    *(v117 + 16) = 8;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_181F8C71C;
    *(v93 + 24) = v91;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_181F8C718;
    *(v94 + 24) = v93;
    v121 = v94;
    v123 = swift_allocObject();
    *(v123 + 16) = 32;
    v124 = swift_allocObject();
    v124[16] = 8;
    v95 = swift_allocObject();
    *(v95 + 16) = sub_181F8C720;
    *(v95 + 24) = v92;
    v96 = swift_allocObject();
    *(v96 + 16) = sub_181F8C718;
    *(v96 + 24) = v95;
    v126 = v96;
    v129 = swift_allocObject();
    *(v129 + 16) = 32;
    v97 = swift_allocObject();
    *(v97 + 16) = 8;
    v98 = swift_allocObject();
    *(v98 + 16) = sub_181F8C720;
    *(v98 + 24) = v115;
    v99 = swift_allocObject();
    *(v99 + 16) = sub_181F8C718;
    *(v99 + 24) = v98;
    if (os_log_type_enabled(oslog, v131))
    {
      v112 = v97;
      v116 = v99;
      v100 = swift_slowAlloc();
      v101 = swift_slowAlloc();
      *v162 = 0;
      v109 = v101;
      *v100 = 770;
      v164 = v101;
      *&v153 = v100 + 2;
      *v140 = sub_181F8C728;
      *&v140[8] = v118;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C728;
      *&v140[8] = v117;
      sub_181F73AE0(v140, &v153, v162, &v164);
      a3 = v127;

      *v140 = sub_181F8C714;
      *&v140[8] = v121;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C728;
      *&v140[8] = v123;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C728;
      *&v140[8] = v124;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C714;
      *&v140[8] = v126;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C728;
      *&v140[8] = v129;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C728;
      *&v140[8] = v112;
      sub_181F73AE0(v140, &v153, v162, &v164);

      *v140 = sub_181F8C714;
      *&v140[8] = v116;
      sub_181F73AE0(v140, &v153, v162, &v164);

      _os_log_impl(&dword_181A37000, oslog, v131, "%s %s %s", v100, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v109, -1, -1);
      MEMORY[0x1865DF520](v100, -1, -1);

      a1 = v119;
    }

    else
    {
LABEL_108:

      a1 = v119;
      a3 = v127;
    }
  }

  v65 = v63;
  if (*(v127 + 24) == 5)
  {
    v66 = nw_frame_unclaimed_length(*v127);
    goto LABEL_74;
  }

  if (!v8)
  {
    if (v9 >= v122)
    {
      v16 = v122 & (v122 >> 63);
    }

    else
    {
      v16 = v9 & (v9 >> 63);
    }

    v68 = v128;
    goto LABEL_79;
  }

  v67 = v16 + v10;
  if (__OFADD__(v16, v10))
  {
    goto LABEL_122;
  }

  v32 = __OFSUB__(v8, v67);
  v66 = v8 - v67;
  if (v32)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

LABEL_74:
  v68 = v128;
  v69 = v130 - v128;
  if (v9 < v122)
  {
    v69 = v9;
  }

  if (v66 >= v69)
  {
    v16 = v69;
  }

  else
  {
    v16 = v66;
  }

LABEL_79:
  if (!v65)
  {
    goto LABEL_125;
  }

  if ((v16 & 0x8000000000000000) != 0)
  {
    goto LABEL_113;
  }

  memmove((v65 + v68), (v56 + v125), v16);
  if (!v16)
  {
    goto LABEL_124;
  }

  if (v120 < v16)
  {
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v10 = v16 + v128;
  a1 = v119;
  if (v130 < v16)
  {
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    if (v10 != v130)
    {

      v37 = v136;
      goto LABEL_42;
    }

    v10 = v130;
  }

  return v10;
}

int64_t sub_181FD03A0(__int128 *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v5 + 176);
  v93 = *(v5 + 160);
  v94 = v9;
  v95 = *(v5 + 192);
  v96 = *(v5 + 208);
  v10 = *(v5 + 112);
  v89 = *(v5 + 96);
  v90 = v10;
  v11 = *(v5 + 144);
  v91 = *(v5 + 128);
  v92 = v11;
  v12 = *(v5 + 48);
  v85 = *(v5 + 32);
  v86 = v12;
  v13 = *(v5 + 80);
  v87 = *(v5 + 64);
  v88 = v13;
  v14 = *(v5 + 16);
  v83 = *v5;
  v84 = v14;
  if (((a3 | a2 | a4) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_28;
  }

  v7 = a4;
  v4 = a3;
  v6 = a2;
  v8 = a1;
  if (qword_1EA837250 != -1)
  {
LABEL_28:
    swift_once();
  }

  if (byte_1EA843430 == 1 && __nwlog_is_datapath_logging_enabled())
  {
    sub_182AD3BA8();

    *&v69 = 0x204D4F5246;
    *(&v69 + 1) = 0xE500000000000000;
    v39 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v39);

    MEMORY[0x1865D9CA0](0x206874676E656C20, 0xE800000000000000);
    v40 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v40);

    MEMORY[0x1865D9CA0](0x666F204F544E4920, 0xED00002074657366);
    v68 = v6;
    v41 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v41);

    v23 = 0xE500000000000000;
    v19 = 0x204D4F5246;
    if (qword_1EA837248 == -1)
    {
      goto LABEL_30;
    }

    goto LABEL_36;
  }

  while (1)
  {
    v79 = v93;
    v80 = v94;
    v81 = v95;
    v82 = v96;
    v75 = v89;
    v76 = v90;
    v77 = v91;
    v78 = v92;
    v71 = v85;
    v72 = v86;
    v73 = v87;
    v74 = v88;
    v69 = v83;
    v70 = v84;
    v16 = Frame.unclaimedBytes.getter();
    result = 0;
    if ((v18 & 1) != 0 || !v16)
    {
      return result;
    }

    v19 = v15 - v16 - v4;
    if (v15 - v16 <= v4)
    {
      return 0;
    }

    v20 = v16;
    v21 = v8[1];
    v69 = *v8;
    v70 = v21;
    v71 = v8[2];
    v22 = *(v8 + 6);
    v23 = *(v8 + 7);
    v82 = *(v8 + 208);
    v25 = *(v8 + 8);
    v24 = *(v8 + 9);
    v26 = v8[12];
    v80 = v8[11];
    v81 = v26;
    v27 = v8[8];
    v76 = v8[7];
    v77 = v27;
    v28 = v8[10];
    v78 = v8[9];
    v79 = v28;
    v29 = v8[6];
    v74 = v8[5];
    v75 = v29;
    *&v72 = v22;
    *(&v72 + 1) = v23;
    *&v73 = v25;
    *(&v73 + 1) = v24;
    v30 = Frame.unclaimedBytes.getter();
    if (v31)
    {
      return 0;
    }

    if (*(v8 + 24) == 5)
    {
      v32 = v30;
      LODWORD(v33) = nw_frame_unclaimed_length(*v8);
      v30 = v32;
      v33 = v33;
LABEL_15:
      if (v19 >= v7)
      {
        v36 = v7;
      }

      else
      {
        v36 = v19;
      }

      if (v33 >= v36)
      {
        v33 = v36;
      }

LABEL_20:
      if (!v30)
      {
        __break(1u);

        while (1)
        {

          __break(1u);
        }
      }

      if ((v33 & 0x8000000000000000) == 0)
      {
        v37 = &v20[v4];
        v38 = v33;
        memmove((v30 + v6), v37, v33);
        return v38;
      }

      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    if (!v24)
    {
      if (v19 >= v7)
      {
        v33 = v7 & (v7 >> 63);
      }

      else
      {
        v33 = v19 & (v19 >> 63);
      }

      goto LABEL_20;
    }

    v34 = v23 + v25;
    if (__OFADD__(v23, v25))
    {
      goto LABEL_34;
    }

    v35 = __OFSUB__(v24, v34);
    v33 = v24 - v34;
    if (!v35)
    {
      goto LABEL_15;
    }

LABEL_35:
    __break(1u);
LABEL_36:
    swift_once();
LABEL_30:
    v42 = sub_182AD2698();
    __swift_project_value_buffer(v42, qword_1EA843418);
    v43 = swift_allocObject();
    *(v43 + 16) = "copyIntoFrame(_:atOffset:fromOffset:length:)";
    *(v43 + 24) = 44;
    *(v43 + 32) = 2;
    v44 = swift_allocObject();
    *(v44 + 16) = sub_181F8C724;
    *(v44 + 24) = v43;
    v45 = swift_allocObject();
    *(v45 + 16) = 1564427099;
    *(v45 + 24) = 0xE400000000000000;
    v46 = swift_allocObject();
    *(v46 + 16) = v19;
    *(v46 + 24) = v23;

    oslog = sub_182AD2678();
    v64 = sub_182AD38A8();
    buf = swift_allocObject();
    buf[16] = 32;
    v59 = swift_allocObject();
    *(v59 + 16) = 8;
    v47 = swift_allocObject();
    *(v47 + 16) = sub_181F8C71C;
    *(v47 + 24) = v44;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_181F8C718;
    *(v48 + 24) = v47;
    v62 = v48;
    v63 = swift_allocObject();
    *(v63 + 16) = 32;
    v61 = swift_allocObject();
    *(v61 + 16) = 8;
    v49 = swift_allocObject();
    *(v49 + 16) = sub_181F8C720;
    *(v49 + 24) = v45;
    v50 = swift_allocObject();
    *(v50 + 16) = sub_181F8C718;
    *(v50 + 24) = v49;
    v51 = swift_allocObject();
    *(v51 + 16) = 32;
    v52 = swift_allocObject();
    *(v52 + 16) = 8;
    v53 = swift_allocObject();
    *(v53 + 16) = sub_181F8C720;
    *(v53 + 24) = v46;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_181F8C718;
    *(v54 + 24) = v53;
    if (os_log_type_enabled(oslog, v64))
    {
      v58 = v52;
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v66 = v56;
      v67 = 0;
      *v55 = 770;
      v57 = v56;
      v68 = v55 + 2;
      *&v69 = sub_181F8C728;
      *(&v69 + 1) = buf;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C728;
      *(&v69 + 1) = v59;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C714;
      *(&v69 + 1) = v62;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C728;
      *(&v69 + 1) = v63;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C728;
      *(&v69 + 1) = v61;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C714;
      *(&v69 + 1) = v50;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C728;
      *(&v69 + 1) = v51;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C728;
      *(&v69 + 1) = v58;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      *&v69 = sub_181F8C714;
      *(&v69 + 1) = v54;
      sub_181F73AE0(&v69, &v68, &v67, &v66);

      _os_log_impl(&dword_181A37000, oslog, v64, "%s %s %s", v55, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v57, -1, -1);
      MEMORY[0x1865DF520](v55, -1, -1);
    }

    else
    {
    }
  }
}

uint64_t sub_181FD0DD0(uint64_t result, uint64_t a2)
{
  v6 = result + a2;
  if (__CFADD__(result, a2))
  {
LABEL_45:
    __break(1u);
LABEL_46:
    result = sub_181F59CEC(0, *(v2 + 16) + 1, 1, v2);
    v2 = result;
    goto LABEL_19;
  }

  v4 = a2;
  v5 = result;
  v7 = 0;
  v8 = v3[31];
  v3 += 31;
  v2 = v8;
  v9 = *(v8 + 16);
  v10 = 24;
  do
  {
    if (v9 == v7)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_46;
      }

LABEL_19:
      v22 = *(v2 + 16);
      v21 = *(v2 + 24);
      if (v22 >= v21 >> 1)
      {
        result = sub_181F59CEC((v21 > 1), v22 + 1, 1, v2);
        v2 = result;
      }

      *(v2 + 16) = v22 + 1;
      v23 = v2 + 16 * v22;
      *(v23 + 32) = v5;
      *(v23 + 40) = v4;
      goto LABEL_39;
    }

    if (v7 >= *(v2 + 16))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    v11 = *(v2 + v10 + 8);
    v12 = *(v2 + v10 + 16);
    v13 = v11 + v12;
    if (__CFADD__(v11, v12))
    {
      goto LABEL_42;
    }

    if (v6 < v11)
    {
      return sub_181FCC964(v7, v7, v5, v4);
    }

    if (v6 == v11)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_182083584(v2);
        v2 = result;
      }

      if (v7 >= *(v2 + 16))
      {
        __break(1u);
      }

      else
      {
        v24 = v2 + v10;
        *(v2 + v10 + 8) = v5;
        v25 = *(v2 + v10 + 16);
        v17 = __CFADD__(v25, v4);
        v26 = v25 + v4;
        if (!v17)
        {
          goto LABEL_33;
        }

        __break(1u);
LABEL_29:
        v4 = v6 - v13;
        if (v6 <= v13)
        {
          return result;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if (result)
        {
          goto LABEL_31;
        }
      }

      result = sub_182083584(v2);
      v2 = result;
LABEL_31:
      if (v7 >= *(v2 + 16))
      {
        __break(1u);
      }

      else
      {
        v24 = v2 + v10;
        v27 = *(v2 + v10 + 16);
        v17 = __CFADD__(v27, v4);
        v26 = v27 + v4;
        if (!v17)
        {
LABEL_33:
          *(v24 + 16) = v26;
          goto LABEL_39;
        }
      }

      __break(1u);
LABEL_51:
      result = sub_182083584(v2);
      v2 = result;
LABEL_36:
      if (v5 >= *(v2 + 16))
      {
        __break(1u);
      }

      else
      {
        v28 = *(v2 + v10);
        v17 = __CFADD__(v28, v4);
        v29 = v28 + v4;
        if (!v17)
        {
          *(v2 + v10) = v29;
LABEL_39:
          *v3 = v2;
          return result;
        }
      }

      __break(1u);
      return result;
    }

    v14 = v11 - v5;
    if (v11 > v5)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_182083584(v2);
        v2 = result;
      }

      v15 = v2 + v10;
      v16 = *(v2 + v10 + 8);
      v17 = v16 >= v14;
      v18 = v16 - v14;
      if (!v17)
      {
        goto LABEL_43;
      }

      *(v15 + 8) = v18;
      v19 = *(v15 + 16);
      v17 = __CFADD__(v19, v14);
      v20 = v19 + v14;
      if (v17)
      {
        goto LABEL_44;
      }

      *(v15 + 16) = v20;
      *v3 = v2;
      v11 = *(v15 + 8);
    }

    if (v11 >= v5)
    {
      goto LABEL_29;
    }

    v10 += 16;
    ++v7;
  }

  while (v13 < v5);
  v4 = v6 - v13;
  if (v6 > v13)
  {
    v5 = v7 - 1;
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_36;
    }

    goto LABEL_51;
  }

  return result;
}

char *sub_181FD1044(char *result, uint64_t a2)
{
  v3 = &result[a2];
  if (__CFADD__(result, a2))
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    return result;
  }

  v4 = *(v2 + 232);
  v5 = v4 < result || v4 >= v3;
  if (v5)
  {
    goto LABEL_21;
  }

  v6 = *(v2 + 248);
  v7 = *(v6 + 2);
  if (!v7 || v3 < *(v6 + 4))
  {
    return 0;
  }

  do
  {
    v9 = *(v6 + 4);
    if (v3 < v9)
    {
      break;
    }

    v10 = *(v6 + 5);
    v5 = __CFADD__(v9, v10);
    v11 = (v9 + v10);
    if (v5)
    {
      __break(1u);
      goto LABEL_20;
    }

    if (v11 > v3)
    {
      v3 = v11;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || (v7 - 1) > *(v6 + 3) >> 1)
    {
      v6 = sub_181F59CEC(isUniquelyReferenced_nonNull_native, v7, 1, v6);
    }

    v8 = *(v6 + 2);
    result = memmove(v6 + 32, v6 + 48, 16 * v8 - 16);
    *(v6 + 2) = v8 - 1;
    *(v2 + 248) = v6;
    v7 = *(v6 + 2);
  }

  while (v7);
  return v3;
}

uint64_t sub_181FD1138(char *a1, uint64_t a2)
{
  v5 = &a1[a2];
  if (__CFADD__(a1, a2))
  {
LABEL_48:
    __break(1u);
  }

  else if (qword_1EA837250 == -1)
  {
    goto LABEL_3;
  }

  v39 = a1;
  v40 = v2;
  v41 = a2;
  swift_once();
  a1 = v39;
  a2 = v41;
  v2 = v40;
LABEL_3:
  v6 = byte_1EA843430;
  v115 = v2;
  if (byte_1EA843430 != 1)
  {
    v7 = (v2 + 232);
    v8 = *(v2 + 232);
    if (v8 >= v5)
    {
      return 0;
    }

    if (v8 >= a1)
    {
      goto LABEL_7;
    }

LABEL_30:
    sub_181FD0DD0(a1, a2);
    return 0;
  }

  v3 = a1;
  v4 = a2;
  if (__nwlog_is_datapath_logging_enabled())
  {
    v112 = 1;
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_182AD3BA8();

    v120 = 0x203A666F204B4341;
    v121 = 0xE800000000000000;
    v130[0] = v3;
    v42 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v42);

    MEMORY[0x1865D9CA0](0x74676E656C202B20, 0xEA00000000002068);
    v130[0] = v4;
    v43 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v43);

    MEMORY[0x1865D9CA0](61, 0xE100000000000000);
    v130[0] = v5;
    v44 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v44);

    MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD6E20);
    v130[0] = *(v2 + 232);
    v45 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v45);

    v17 = v120;
    v18 = v121;
    if (qword_1EA837248 != -1)
    {
LABEL_77:
      swift_once();
    }

    v46 = sub_182AD2698();
    __swift_project_value_buffer(v46, qword_1EA843418);
    v47 = swift_allocObject();
    *(v47 + 16) = "acknowledgedSendData(offset:length:)";
    *(v47 + 24) = 36;
    *(v47 + 32) = 2;
    v48 = swift_allocObject();
    *(v48 + 16) = sub_181F8C724;
    *(v48 + 24) = v47;
    v49 = swift_allocObject();
    *(v49 + 16) = 1564427099;
    *(v49 + 24) = 0xE400000000000000;
    v50 = swift_allocObject();
    *(v50 + 16) = v17;
    *(v50 + 24) = v18;

    oslog = sub_182AD2678();
    v109 = sub_182AD38A8();
    v102 = swift_allocObject();
    *(v102 + 16) = 32;
    v100 = swift_allocObject();
    *(v100 + 16) = 8;
    v51 = swift_allocObject();
    *(v51 + 16) = sub_181F8C71C;
    *(v51 + 24) = v48;
    v52 = swift_allocObject();
    *(v52 + 16) = sub_181F8C718;
    *(v52 + 24) = v51;
    v104 = swift_allocObject();
    *(v104 + 16) = 32;
    v53 = swift_allocObject();
    *(v53 + 16) = 8;
    v54 = swift_allocObject();
    *(v54 + 16) = sub_181F8C720;
    *(v54 + 24) = v49;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_181F8C718;
    *(v55 + 24) = v54;
    v56 = swift_allocObject();
    *(v56 + 16) = 32;
    v57 = swift_allocObject();
    *(v57 + 16) = 8;
    v58 = swift_allocObject();
    *(v58 + 16) = sub_181F8C720;
    *(v58 + 24) = v50;
    v59 = swift_allocObject();
    *(v59 + 16) = sub_181F8C718;
    *(v59 + 24) = v58;
    if (os_log_type_enabled(oslog, v109))
    {
      v97 = v52;
      v60 = v53;
      v61 = swift_slowAlloc();
      v128 = swift_slowAlloc();
      v129 = 0;
      v98 = v128;
      *v61 = 770;
      v130[0] = v61 + 2;
      v120 = sub_181F8C728;
      v121 = v102;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v100;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v97;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v104;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v60;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v55;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v56;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v57;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v59;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      _os_log_impl(&dword_181A37000, oslog, v109, "%s %s %s", v61, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v98, -1, -1);
      MEMORY[0x1865DF520](v61, -1, -1);

      v2 = v115;
    }

    else
    {
LABEL_55:

      v2 = v115;
    }

    v6 = v112;
  }

  v7 = (v2 + 232);
  v8 = *(v2 + 232);
  if (v8 >= v5)
  {
    result = __nwlog_is_datapath_logging_enabled();
    if (!result)
    {
      return result;
    }

    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v62 = sub_182AD2698();
    __swift_project_value_buffer(v62, qword_1EA843418);
    v63 = swift_allocObject();
    *(v63 + 16) = "acknowledgedSendData(offset:length:)";
    *(v63 + 24) = 36;
    *(v63 + 32) = 2;
    v64 = swift_allocObject();
    *(v64 + 16) = sub_181F8C258;
    *(v64 + 24) = v63;
    v65 = swift_allocObject();
    *(v65 + 16) = 1564427099;
    *(v65 + 24) = 0xE400000000000000;
    v66 = swift_allocObject();
    *(v66 + 16) = 0xD000000000000022;
    *(v66 + 24) = 0x8000000182BD6DA0;
    v67 = sub_182AD2678();
    v68 = sub_182AD38A8();
    v105 = swift_allocObject();
    *(v105 + 16) = 32;
    v107 = swift_allocObject();
    *(v107 + 16) = 8;
    v69 = swift_allocObject();
    *(v69 + 16) = sub_181F8C264;
    *(v69 + 24) = v64;
    v70 = swift_allocObject();
    *(v70 + 16) = sub_181F8C27C;
    *(v70 + 24) = v69;
    v110 = swift_allocObject();
    *(v110 + 16) = 32;
    v113 = swift_allocObject();
    *(v113 + 16) = 8;
    v71 = swift_allocObject();
    *(v71 + 16) = sub_181F8C26C;
    *(v71 + 24) = v65;
    v72 = swift_allocObject();
    *(v72 + 16) = sub_181F8C718;
    *(v72 + 24) = v71;
    v116 = swift_allocObject();
    *(v116 + 16) = 32;
    osloga = swift_allocObject();
    LOBYTE(osloga[2].isa) = 8;
    v73 = swift_allocObject();
    *(v73 + 16) = sub_181F8C26C;
    *(v73 + 24) = v66;
    v74 = swift_allocObject();
    *(v74 + 16) = sub_181F8C718;
    *(v74 + 24) = v73;
    v75 = v67;
    if (os_log_type_enabled(v67, v68))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v128 = v77;
      v129 = 0;
      *v76 = 770;
      v130[0] = v76 + 2;
      v120 = sub_181F8C274;
      v121 = v105;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v107;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C284;
      v121 = v70;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v110;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v113;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v72;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v116;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = osloga;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v74;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      _os_log_impl(&dword_181A37000, v75, v68, "%s %s %s", v76, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v77, -1, -1);
      MEMORY[0x1865DF520](v76, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  a2 = v4;
  a1 = v3;
  if (v8 < v3)
  {
    goto LABEL_30;
  }

LABEL_7:
  v108 = v7;
  v112 = v6;
  a1 = sub_181FD1044(a1, a2);
  if (a2)
  {
    v9 = v5;
  }

  else
  {
    v9 = a1;
  }

  if (v8 < v9)
  {
    do
    {
      if (*(v2 + 224))
      {
        v24 = v2;
        v120 = 0;
        v121 = 0xE000000000000000;
        sub_182AD3BA8();

        v120 = 541803329;
        v121 = 0xE400000000000000;
        v130[0] = v9;
        v25 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v25);

        MEMORY[0x1865D9CA0](0xD000000000000020, 0x8000000182BD6DF0);
        v130[0] = v8;
        v26 = sub_182AD41B8();
        MEMORY[0x1865D9CA0](v26);

        MEMORY[0x1865D9CA0](33, 0xE100000000000000);
        v28 = v120;
        v27 = v121;
        if (qword_1EA837248 != -1)
        {
          swift_once();
        }

        v29 = sub_182AD2698();
        __swift_project_value_buffer(v29, qword_1EA843418);

        v30 = sub_182AD2678();
        v31 = sub_182AD38C8();

        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          v33 = swift_slowAlloc();
          v120 = v33;
          *v32 = 136315650;
          v34 = sub_182AD3BF8();
          v36 = sub_181C64FFC(v34, v35, &v120);

          *(v32 + 4) = v36;
          v24 = v115;
          *(v32 + 12) = 2080;
          *(v32 + 14) = sub_181C64FFC(1564427099, 0xE400000000000000, &v120);
          *(v32 + 22) = 2080;
          v37 = sub_181C64FFC(v28, v27, &v120);

          *(v32 + 24) = v37;
          _os_log_impl(&dword_181A37000, v30, v31, "%s %s %s", v32, 0x20u);
          swift_arrayDestroy();
          MEMORY[0x1865DF520](v33, -1, -1);
          MEMORY[0x1865DF520](v32, -1, -1);
        }

        else
        {
        }

        return *(v24 + 240);
      }

      if (*(v2 + 24) == 5)
      {
        a1 = nw_frame_unclaimed_length(*v2);
        v12 = a1;
      }

      else
      {
        v12 = *(v2 + 72);
        if (v12)
        {
          v13 = *(v2 + 56);
          v14 = *(v2 + 64);
          v15 = __OFADD__(v13, v14);
          v16 = v13 + v14;
          if (v15)
          {
            __break(1u);
LABEL_54:
            __break(1u);
            goto LABEL_55;
          }

          v15 = __OFSUB__(v12, v16);
          v12 -= v16;
          if (v15)
          {
            goto LABEL_54;
          }

          if (v12 < 0)
          {
            __break(1u);
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }
      }

      v17 = v8 + v12;
      if (__CFADD__(v8, v12))
      {
        goto LABEL_47;
      }

      if (v9 < v17)
      {
        *v108 = v9;
        if (&v9[-v8] < 0)
        {
          __break(1u);
        }

        else
        {
          v38 = Frame.claim(fromStart:fromEnd:adjustSingleIPAggregate:)(&v9[-v8], 0, 1);
          v10 = v112;
          if (v38)
          {
            goto LABEL_40;
          }
        }

        __break(1u);
        goto LABEL_64;
      }

      v18 = v9;
      oslog = v17;
      *(v2 + 232) = v17;
      FrameArray.popFirst()(&v120);
      Frame.finalize(success:)(1);
      v19 = v120;
      v20 = v121;
      v21 = v122;
      v3 = v123;
      v22 = *(&v124 + 1);
      v4 = v124;
      v5 = v125;
      if (v125 != 2 || v124 != 0)
      {
        sub_181F68EF4(v120, v121, v122, v123);

        sub_181F68F3C(v4, v22, v5);
        __break(1u);
        goto LABEL_77;
      }

      if ((v127 & 1) == 0 && v126)
      {
        MEMORY[0x1865DF520](v126, -1, -1);
      }

      sub_181F68EF4(v19, v20, v21, v3);

      v9 = v18;
      v11 = v17 >= v18;
      v2 = v115;
      v8 = v17;
    }

    while (!v11);
  }

  v10 = v112;
  if (v8 != v9)
  {
    return 0;
  }

LABEL_40:
  if (*(v2 + 224) != 1)
  {
    return 0;
  }

  if (v10 && __nwlog_is_datapath_logging_enabled())
  {
LABEL_64:
    v120 = 0;
    v121 = 0xE000000000000000;
    sub_182AD3BA8();

    v120 = 0xD000000000000018;
    v121 = 0x8000000182BD6DD0;
    if (*(v2 + 240))
    {
      v78 = 1702195828;
    }

    else
    {
      v78 = 0x65736C6166;
    }

    if (*(v2 + 240))
    {
      v79 = 0xE400000000000000;
    }

    else
    {
      v79 = 0xE500000000000000;
    }

    MEMORY[0x1865D9CA0](v78, v79);

    v80 = v120;
    oslogb = v121;
    if (qword_1EA837248 != -1)
    {
      swift_once();
    }

    v81 = sub_182AD2698();
    __swift_project_value_buffer(v81, qword_1EA843418);
    v82 = swift_allocObject();
    *(v82 + 16) = "acknowledgedSendData(offset:length:)";
    *(v82 + 24) = 36;
    *(v82 + 32) = 2;
    v83 = swift_allocObject();
    *(v83 + 16) = sub_181F8C724;
    *(v83 + 24) = v82;
    v84 = swift_allocObject();
    *(v84 + 16) = 1564427099;
    *(v84 + 24) = 0xE400000000000000;
    v85 = swift_allocObject();
    *(v85 + 16) = v80;
    *(v85 + 24) = oslogb;

    v86 = sub_182AD2678();
    LOBYTE(v82) = sub_182AD38A8();
    v87 = swift_allocObject();
    *(v87 + 16) = 32;
    v106 = swift_allocObject();
    *(v106 + 16) = 8;
    v88 = swift_allocObject();
    *(v88 + 16) = sub_181F8C71C;
    *(v88 + 24) = v83;
    v89 = swift_allocObject();
    *(v89 + 16) = sub_181F8C718;
    *(v89 + 24) = v88;
    v103 = swift_allocObject();
    *(v103 + 16) = 32;
    v111 = swift_allocObject();
    *(v111 + 16) = 8;
    v90 = swift_allocObject();
    *(v90 + 16) = sub_181F8C720;
    *(v90 + 24) = v84;
    v91 = swift_allocObject();
    *(v91 + 16) = sub_181F8C718;
    *(v91 + 24) = v90;
    v92 = swift_allocObject();
    *(v92 + 16) = 32;
    v114 = swift_allocObject();
    *(v114 + 16) = 8;
    v93 = swift_allocObject();
    *(v93 + 16) = sub_181F8C720;
    *(v93 + 24) = v85;
    v94 = swift_allocObject();
    *(v94 + 16) = sub_181F8C718;
    *(v94 + 24) = v93;
    v101 = v82;
    if (os_log_type_enabled(v86, v82))
    {
      v95 = swift_slowAlloc();
      v96 = swift_slowAlloc();
      v128 = v96;
      v129 = 0;
      *v95 = 770;
      v99 = v96;
      v130[0] = v95 + 2;
      v120 = sub_181F8C728;
      v121 = v87;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v106;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v89;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v103;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v111;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v91;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v92;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C728;
      v121 = v114;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      v120 = sub_181F8C714;
      v121 = v94;
      sub_181F73AE0(&v120, v130, &v129, &v128);

      _os_log_impl(&dword_181A37000, v86, v101, "%s %s %s", v95, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1865DF520](v99, -1, -1);
      MEMORY[0x1865DF520](v95, -1, -1);
    }

    else
    {
    }

    v2 = v115;
  }

  return *(v2 + 240);
}

__n128 __swift_memcpy256_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t assignWithTake for StreamSendBuffer(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1;
  v7 = *(a1 + 8);
  v8 = *(a1 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v9 = *(a1 + 24);
  *(a1 + 24) = v5;
  sub_181F68EF4(v6, v7, v8, v9);
  v10 = *(a2 + 48);
  v11 = *(a1 + 32);
  v12 = *(a1 + 40);
  *(a1 + 32) = *(a2 + 32);
  v13 = *(a1 + 48);
  *(a1 + 48) = v10;
  sub_181F68F3C(v11, v12, v13);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 72) = *(a2 + 72);
  *(a1 + 88) = *(a2 + 88);
  v14 = *(a2 + 112);
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 112) = v14;
  *(a1 + 122) = *(a2 + 122);
  *(a1 + 138) = *(a2 + 138);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 160) = *(a2 + 160);
  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
  *(a1 + 177) = *(a2 + 177);
  *(a1 + 193) = *(a2 + 193);
  *(a1 + 194) = *(a2 + 194);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 216) = *(a2 + 216);

  *(a1 + 224) = *(a2 + 224);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = *(a2 + 248);

  return a1;
}

uint64_t getEnumTagSinglePayload for StreamSendBuffer(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 248);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for StreamSendBuffer(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 248) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t PathStatus.description.getter()
{
  v1 = 0x64696C61766E69;
  v2 = 0x6673697461736E75;
  if (*v0 != 2)
  {
    v2 = 0x6169667369746173;
  }

  if (*v0)
  {
    v1 = 0x6569667369746173;
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

uint64_t sub_181FD2F38()
{
  v1 = 0x64696C61766E69;
  v2 = 0x6673697461736E75;
  if (*v0 != 2)
  {
    v2 = 0x6169667369746173;
  }

  if (*v0)
  {
    v1 = 0x6569667369746173;
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

const char *PathProperties.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v95 = *(v0 + 16);
  v97 = *(v0 + 24);
  v3 = *(v0 + 80);
  v163 = *(v0 + 64);
  v164 = v3;
  v165 = *(v0 + 96);
  v166 = *(v0 + 112);
  v4 = *(v0 + 48);
  v161 = *(v0 + 32);
  v162 = v4;
  v5 = *(v0 + 116);
  v105 = *(v0 + 117);
  v102 = *(v0 + 118);
  v6 = *(v0 + 120);
  v7 = *(v0 + 128);
  v160 = *(v0 + 152);
  v159 = *(v0 + 136);
  v94 = *(v0 + 153);
  v100 = *(v0 + 154);
  v112 = *(v0 + 156);
  v8 = *(v0 + 200);
  v158 = *(v0 + 192);
  v9 = *(v0 + 176);
  v156 = *(v0 + 160);
  v157 = v9;
  v155 = *(v0 + 208);
  v109 = *(v0 + 224);
  v110 = v8;
  v10 = *(v0 + 232);
  v11 = *(v0 + 248);
  v12 = *(v0 + 272);
  v154 = *(v0 + 264);
  v152 = v10;
  v153 = v11;
  *&v108 = *(v0 + 280);
  *(&v108 + 1) = v12;
  v13 = *(v0 + 288);
  v111 = *(v0 + 292);
  v14 = *(v0 + 296);
  v15 = *(v0 + 312);
  v16 = *(v0 + 328);
  v151 = *(v0 + 344);
  v149 = v15;
  v150 = v16;
  v148 = v14;
  v17 = 0xE700000000000000;
  v103 = *(v0 + 352);
  v104 = v13;
  v107 = *(v0 + 356);
  v18 = 0xEB00000000646569;
  v19 = 0x6673697461736E75;
  v20 = *(v0 + 358);
  if (v5 != 2)
  {
    v19 = 0x6169667369746173;
    v18 = 0xEB00000000656C62;
  }

  *(&v147[0].n128_u32[3] + 3) = *(v0 + 373);
  v21 = 0x6569667369746173;
  v99 = *(v0 + 357);
  if (v5)
  {
    v17 = 0xE900000000000064;
  }

  else
  {
    v21 = 0x64696C61766E69;
  }

  v147[0] = v20;
  v106 = v5;
  if (v5 <= 1)
  {
    v22 = v17;
  }

  else
  {
    v21 = v19;
    v22 = v18;
  }

  v23 = *(v0 + 377);
  v117.n128_u64[0] = v21;
  v117.n128_u64[1] = v22;

  MEMORY[0x1865D9CA0](10272, 0xE200000000000000);

  v96 = v6;
  if (!v7)
  {
    v6 = 0x6F73616572206F6ELL;
  }

  v24 = v7;
  if (!v7)
  {
    v7 = 0xE90000000000006ELL;
  }

  v101 = v24;

  MEMORY[0x1865D9CA0](v6, v7);

  MEMORY[0x1865D9CA0](41, 0xE100000000000000);

  v146 = v117;
  v98 = v23;
  if (v23)
  {
    MEMORY[0x1865D9CA0](0x656C62616976202CLL, 0xE800000000000000);
  }

  v26 = v97;
  v27 = v103;
  if (v2)
  {
    v28 = *(v2 + 40);
    v29 = *(v2 + 48);
    strcpy(&v117, ", interface: ");
    v117.n128_u16[7] = -4864;

    MEMORY[0x1865D9CA0](v28, v29);
    MEMORY[0x1865D9CA0](v117.n128_u64[0], v117.n128_u64[1]);

    result = *(v2 + 120);
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(result >> 32))
    {
      if (!result)
      {
        v27 = v103;
        if (*(v2 + 184) != 1)
        {
LABEL_24:

          goto LABEL_25;
        }

        v33 = 0xE600000000000000;
        v31 = 0x31312E323038;
LABEL_23:
        v117.n128_u64[0] = 91;
        v117.n128_u64[1] = 0xE100000000000000;
        MEMORY[0x1865D9CA0](v31, v33);

        MEMORY[0x1865D9CA0](93, 0xE100000000000000);
        MEMORY[0x1865D9CA0](91, 0xE100000000000000);

        goto LABEL_24;
      }

      result = nw_interface_radio_type_to_string(result);
      v27 = v103;
      if (result)
      {
        v31 = sub_182AD3158();
        v33 = v32;
        goto LABEL_23;
      }

LABEL_155:
      __break(1u);
      return result;
    }

    __break(1u);
    goto LABEL_155;
  }

LABEL_25:
  if ((v104 == 12 || v104 == 6) && v111)
  {
    MEMORY[0x1865D9CA0](0x6465706F6373202CLL, 0xE800000000000000);
  }

  if ((v112 & 0x40) != 0)
  {
    MEMORY[0x1865D9CA0](0x34767069202CLL, 0xE600000000000000);
    if ((v112 & 0x80) == 0)
    {
LABEL_31:
      if (!v109)
      {
        goto LABEL_37;
      }

      goto LABEL_35;
    }
  }

  else if ((v112 & 0x80) == 0)
  {
    goto LABEL_31;
  }

  MEMORY[0x1865D9CA0](0x36767069202CLL, 0xE600000000000000);
  if (!v109)
  {
    goto LABEL_37;
  }

LABEL_35:
  if (*(v109 + 24) >= 1)
  {
    MEMORY[0x1865D9CA0](0x736E64202CLL, 0xE500000000000000);
  }

LABEL_37:
  if ((v112 & 0x80000) != 0)
  {
LABEL_40:
    MEMORY[0x1865D9CA0](0x736E65707865202CLL, 0xEB00000000657669);
    goto LABEL_41;
  }

  if (v1)
  {
    if (*(v1 + 136))
    {
      goto LABEL_40;
    }
  }

  else if (v110)
  {
    v34 = v110;
    v35 = v110[4];
    v36 = v110[2];
    if (v36 >= v110[3] + v35)
    {
      v36 = v110[3] + v35;
    }

    v114 = v110;
    v115 = v35;
    v116 = v36;
    while (1)
    {
      if (v35 == v36)
      {
        if ((sub_181AC81FC(v25) & 1) == 0)
        {

          v26 = v97;
          goto LABEL_70;
        }

        v34 = v114;
        v35 = v115;
      }

      v37 = v35 + 1;
      v115 = v35 + 1;
      v38 = &v34[26 * v35];
      v39 = *(v38 + 9);
      v40 = *(v38 + 13);
      v41 = *(v38 + 7);
      v120 = *(v38 + 11);
      v121 = v40;
      v118 = v41;
      v119 = v39;
      v42 = *(v38 + 17);
      v43 = *(v38 + 21);
      v44 = *(v38 + 15);
      v124 = *(v38 + 19);
      *v125 = v43;
      v122 = v44;
      v123 = v42;
      v45 = *(v38 + 25);
      v46 = *(v38 + 27);
      v47 = *(v38 + 23);
      *&v127[10] = *(v38 + 226);
      v126 = v45;
      *v127 = v46;
      *&v125[16] = v47;
      v25 = *(v38 + 5);
      v117 = v25;
      v48 = v25.n128_u64[1];
      if (v25.n128_u64[1])
      {
        if (v127[24])
        {
          break;
        }
      }

      v36 = v116;
      v35 = v37;
    }

    sub_181AFE6F4(&v117, v113);

    sub_181AFE6A0(&v117);
    v49 = *(v48 + 136);

    v26 = v97;
    if (v49)
    {
      goto LABEL_40;
    }
  }

LABEL_70:
  if (v106 == 1 && v105 != 4 && v105 != 29 && (v2 && (*(v2 + 136) & 1) != 0 || v95 && (*(v95 + 136) & 1) != 0 || v26 && (*(v26 + 136) & 1) != 0))
  {
    goto LABEL_40;
  }

LABEL_41:
  if ((v112 & 0x100000) != 0)
  {
LABEL_90:
    MEMORY[0x1865D9CA0](0x7274736E6F63202CLL, 0xED000064656E6961);
    goto LABEL_91;
  }

  if (v1)
  {
    if ((*(v1 + 136) & 0x40) != 0)
    {
      goto LABEL_90;
    }
  }

  else if (v110)
  {
    v50 = v110;
    v51 = v110[4];
    v52 = v110[2];
    if (v52 >= v110[3] + v51)
    {
      v52 = v110[3] + v51;
    }

    v114 = v110;
    v115 = v51;
    v116 = v52;
    while (1)
    {
      if (v51 == v52)
      {
        if ((sub_181AC81FC(v25) & 1) == 0)
        {

          v26 = v97;
          goto LABEL_81;
        }

        v50 = v114;
        v51 = v115;
      }

      v53 = v51 + 1;
      v115 = v51 + 1;
      v54 = &v50[26 * v51];
      v55 = *(v54 + 9);
      v56 = *(v54 + 13);
      v57 = *(v54 + 7);
      v120 = *(v54 + 11);
      v121 = v56;
      v118 = v57;
      v119 = v55;
      v58 = *(v54 + 17);
      v59 = *(v54 + 21);
      v60 = *(v54 + 15);
      v124 = *(v54 + 19);
      *v125 = v59;
      v122 = v60;
      v123 = v58;
      v61 = *(v54 + 25);
      v62 = *(v54 + 27);
      v63 = *(v54 + 23);
      *&v127[10] = *(v54 + 226);
      v126 = v61;
      *v127 = v62;
      *&v125[16] = v63;
      v25 = *(v54 + 5);
      v117 = v25;
      v64 = v25.n128_u64[1];
      if (v25.n128_u64[1])
      {
        if (v127[24])
        {
          break;
        }
      }

      v52 = v116;
      v51 = v53;
    }

    sub_181AFE6F4(&v117, v113);

    sub_181AFE6A0(&v117);
    v65 = *(v64 + 136);

    v26 = v97;
    if ((v65 & 0x40) == 0)
    {
      goto LABEL_81;
    }

    goto LABEL_90;
  }

LABEL_81:
  if ((v106 == 1 || v105 != 4 && v105 != 29) && (v2 && (*(v2 + 136) & 0x40) != 0 || v95 && (*(v95 + 136) & 0x40) != 0 || v26 && (*(v26 + 136) & 0x40) != 0))
  {
    goto LABEL_90;
  }

LABEL_91:
  if (!v1)
  {
    if (v110)
    {
      v66 = v110;
      v67 = v110[4];
      v68 = v110[2];
      if (v68 >= v110[3] + v67)
      {
        v68 = v110[3] + v67;
      }

      v114 = v110;
      v115 = v67;
      v116 = v68;
      while (1)
      {
        if (v67 == v68)
        {
          if ((sub_181AC81FC(v25) & 1) == 0)
          {

            v26 = v97;
            goto LABEL_107;
          }

          v66 = v114;
          v67 = v115;
        }

        v69 = v67 + 1;
        v115 = v67 + 1;
        v70 = &v66[26 * v67];
        v71 = *(v70 + 9);
        v72 = *(v70 + 13);
        v73 = *(v70 + 7);
        v120 = *(v70 + 11);
        v121 = v72;
        v118 = v73;
        v119 = v71;
        v74 = *(v70 + 17);
        v75 = *(v70 + 21);
        v76 = *(v70 + 15);
        v124 = *(v70 + 19);
        *v125 = v75;
        v122 = v76;
        v123 = v74;
        v77 = *(v70 + 25);
        v78 = *(v70 + 27);
        v79 = *(v70 + 23);
        *&v127[10] = *(v70 + 226);
        v126 = v77;
        *v127 = v78;
        *&v125[16] = v79;
        v25 = *(v70 + 5);
        v117 = v25;
        v80 = v25.n128_u64[1];
        if (v25.n128_u64[1])
        {
          if (v127[24])
          {
            break;
          }
        }

        v68 = v116;
        v67 = v69;
      }

      sub_181AFE6F4(&v117, v113);

      sub_181AFE6A0(&v117);
      v81 = *(v80 + 136);

      v26 = v97;
      if ((v81 & 0x4000) == 0)
      {
        goto LABEL_107;
      }

      goto LABEL_114;
    }

LABEL_107:
    v113[0] = 0;
    v113[1] = 0;
    v117.n128_u64[0] = v1;
    v117.n128_u64[1] = v2;
    *&v118 = v95;
    *(&v118 + 1) = v26;
    v121 = v163;
    v122 = v164;
    v123 = v165;
    LODWORD(v124) = v166;
    v119 = v161;
    v120 = v162;
    BYTE4(v124) = v106;
    BYTE5(v124) = v105;
    WORD3(v124) = v102;
    *(&v124 + 1) = v96;
    *v125 = v101;
    *&v125[8] = v159;
    v125[24] = v160;
    v125[25] = v94;
    *&v125[26] = v100;
    *&v125[28] = v112;
    v126 = v156;
    *v127 = v157;
    *&v127[16] = v158;
    *&v127[24] = v110;
    v128 = v155;
    v129 = v109;
    v132 = v154;
    v131 = v153;
    v130 = v152;
    v133 = *(&v108 + 1);
    v134 = v108;
    v135 = v104;
    v136 = v111;
    v138 = v149;
    v139 = v150;
    v137 = v148;
    v140 = v151;
    v141 = v27;
    v142 = v107;
    v143 = v99;
    *&v144[15] = *(&v147[0].n128_u32[3] + 3);
    *v144 = v147[0];
    v145 = v23;
    v82 = sub_181ADEF94(0, 0, &v114, v113);

    if ((v82 & 1) == 0 || (!v2 || (*(v2 + 137) & 0x40) == 0) && (!v95 || (*(v95 + 137) & 0x40) == 0) && (!v26 || (*(v26 + 136) & 0x4000) == 0))
    {
      goto LABEL_115;
    }

    goto LABEL_114;
  }

  if ((*(v1 + 137) & 0x40) == 0)
  {
    goto LABEL_107;
  }

LABEL_114:
  MEMORY[0x1865D9CA0](0xD000000000000013, 0x8000000182BD6F90);
LABEL_115:
  v117.n128_u64[0] = v1;
  v117.n128_u64[1] = v2;
  *&v118 = v95;
  *(&v118 + 1) = v26;
  v121 = v163;
  v122 = v164;
  v123 = v165;
  LODWORD(v124) = v166;
  v119 = v161;
  v120 = v162;
  BYTE4(v124) = v106;
  BYTE5(v124) = v105;
  WORD3(v124) = v102;
  *(&v124 + 1) = v96;
  *v125 = v101;
  *&v125[8] = v159;
  v125[24] = v160;
  v125[25] = v94;
  *&v125[26] = v100;
  *&v125[28] = v112;
  v126 = v156;
  *v127 = v157;
  *&v127[16] = v158;
  *&v127[24] = v110;
  v128 = v155;
  v129 = v109;
  v132 = v154;
  v131 = v153;
  v130 = v152;
  v133 = *(&v108 + 1);
  v134 = v108;
  v135 = v104;
  v136 = v111;
  v138 = v149;
  v139 = v150;
  v137 = v148;
  v140 = v151;
  v141 = v27;
  v142 = v107;
  v143 = v99;
  *&v144[15] = *(&v147[0].n128_u32[3] + 3);
  *v144 = v147[0];
  v145 = v23;
  LOBYTE(v113[0]) = 1;
  if (sub_181A3DFE8(v113, v147[0]))
  {
    MEMORY[0x1865D9CA0](0x772073657375202CLL, 0xEB00000000696669);
  }

  v117.n128_u64[0] = v1;
  v117.n128_u64[1] = v2;
  *&v118 = v95;
  *(&v118 + 1) = v97;
  v121 = v163;
  v122 = v164;
  v123 = v165;
  LODWORD(v124) = v166;
  v119 = v161;
  v120 = v162;
  BYTE4(v124) = v106;
  BYTE5(v124) = v105;
  WORD3(v124) = v102;
  *(&v124 + 1) = v96;
  *v125 = v101;
  *&v125[8] = v159;
  v125[24] = v160;
  v125[25] = v94;
  *&v125[26] = v100;
  *&v125[28] = v112;
  v126 = v156;
  *v127 = v157;
  *&v127[16] = v158;
  *&v127[24] = v110;
  v128 = v155;
  v129 = v109;
  v132 = v154;
  v131 = v153;
  v130 = v152;
  v133 = *(&v108 + 1);
  v134 = v108;
  v135 = v104;
  v136 = v111;
  v138 = v149;
  v139 = v150;
  v137 = v148;
  v140 = v151;
  v141 = v27;
  v142 = v107;
  v143 = v99;
  *&v144[15] = *(&v147[0].n128_u32[3] + 3);
  *v144 = v147[0];
  v145 = v23;
  LOBYTE(v113[0]) = 2;
  if (sub_181A3DFE8(v113, v147[0]))
  {
    MEMORY[0x1865D9CA0](0x632073657375202CLL, 0xEB000000006C6C65);
  }

  if (v108 != 0)
  {
    MEMORY[0x1865D9CA0](0x79786F7270202CLL, 0xE700000000000000);
  }

  v117.n128_u64[0] = v1;
  v117.n128_u64[1] = v2;
  *&v118 = v95;
  *(&v118 + 1) = v97;
  v121 = v163;
  v122 = v164;
  v123 = v165;
  LODWORD(v124) = v166;
  v119 = v161;
  v120 = v162;
  BYTE4(v124) = v106;
  BYTE5(v124) = v105;
  WORD3(v124) = v102;
  *(&v124 + 1) = v96;
  *v125 = v101;
  *&v125[8] = v159;
  v125[24] = v160;
  v125[25] = v94;
  *&v125[26] = v100;
  *&v125[28] = v112;
  v126 = v156;
  *v127 = v157;
  *&v127[16] = v158;
  *&v127[24] = v110;
  v128 = v155;
  v129 = v109;
  v132 = v154;
  v131 = v153;
  v130 = v152;
  v133 = *(&v108 + 1);
  v134 = v108;
  v135 = v104;
  v136 = v111;
  v138 = v149;
  v139 = v150;
  v137 = v148;
  v140 = v151;
  v141 = v103;
  v142 = v107;
  v143 = v99;
  *&v144[15] = *(&v147[0].n128_u32[3] + 3);
  *v144 = v147[0];
  v145 = v23;
  if (sub_181B5AEA8(0))
  {
    v117.n128_u64[0] = v1;
    v117.n128_u64[1] = v2;
    *&v118 = v95;
    *(&v118 + 1) = v97;
    v121 = v163;
    v122 = v164;
    v123 = v165;
    LODWORD(v124) = v166;
    v119 = v161;
    v120 = v162;
    BYTE4(v124) = v106;
    BYTE5(v124) = v105;
    WORD3(v124) = v102;
    *(&v124 + 1) = v96;
    *v125 = v101;
    v125[24] = v160;
    *&v125[8] = v159;
    v125[25] = v94;
    *&v125[26] = v100;
    *&v125[28] = v112;
    v126 = v156;
    *v127 = v157;
    *&v127[16] = v158;
    *&v127[24] = v110;
    v128 = v155;
    v129 = v109;
    v132 = v154;
    v131 = v153;
    v130 = v152;
    v133 = *(&v108 + 1);
    v134 = v108;
    v135 = v104;
    v136 = v111;
    v138 = v149;
    v139 = v150;
    v137 = v148;
    v140 = v151;
    v141 = v103;
    v142 = v107;
    v143 = v99;
    *&v144[15] = *(&v147[0].n128_u32[3] + 3);
    *v144 = v147[0];
    v145 = v23;
    v83 = sub_181EA6088();
    MEMORY[0x1865D9CA0](v83);
  }

  if (v104 == 4 && v111)
  {
    v117.n128_u64[0] = 0;
    v117.n128_u64[1] = 0xE000000000000000;
    sub_182AD3BA8();

    v117.n128_u64[0] = 0x6420776F6C66202CLL;
    v117.n128_u64[1] = 0xEF203A7472657669;
    LODWORD(v113[0]) = v111;
    v84 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v84);

    MEMORY[0x1865D9CA0](v117.n128_u64[0], v117.n128_u64[1]);
  }

  if (v103)
  {
    v117.n128_u64[0] = 0;
    v117.n128_u64[1] = 0xE000000000000000;
    sub_182AD3BA8();

    v117.n128_u64[0] = 0xD000000000000013;
    v117.n128_u64[1] = 0x8000000182BD6F70;
    LODWORD(v113[0]) = v103;
    v85 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v85);

    MEMORY[0x1865D9CA0](v117.n128_u64[0], v117.n128_u64[1]);
  }

  if (nw_bucket_to_throughput(v107))
  {
    v117.n128_u64[0] = 0;
    v117.n128_u64[1] = 0xE000000000000000;
    sub_182AD3BA8();

    v117.n128_u64[0] = 0xD000000000000014;
    v117.n128_u64[1] = 0x8000000182BD6F50;
    v113[0] = nw_bucket_to_throughput(v107);
    v86 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v86);

    MEMORY[0x1865D9CA0](7565378, 0xE300000000000000);
    MEMORY[0x1865D9CA0](v117.n128_u64[0], v117.n128_u64[1]);
  }

  if (nw_bucket_to_throughput(v99))
  {
    v117.n128_u64[0] = 0;
    v117.n128_u64[1] = 0xE000000000000000;
    sub_182AD3BA8();

    v117.n128_u64[0] = 0xD000000000000016;
    v117.n128_u64[1] = 0x8000000182BD6F30;
    v113[0] = nw_bucket_to_throughput(v99);
    v87 = sub_182AD41B8();
    MEMORY[0x1865D9CA0](v87);

    MEMORY[0x1865D9CA0](7565378, 0xE300000000000000);
    MEMORY[0x1865D9CA0](v117.n128_u64[0], v117.n128_u64[1]);
  }

  v117.n128_u64[0] = v1;
  v117.n128_u64[1] = v2;
  *&v118 = v95;
  *(&v118 + 1) = v97;
  v121 = v163;
  v122 = v164;
  v123 = v165;
  LODWORD(v124) = v166;
  v119 = v161;
  v120 = v162;
  BYTE4(v124) = v106;
  BYTE5(v124) = v105;
  WORD3(v124) = v102;
  v88 = v96;
  *(&v124 + 1) = v96;
  *v125 = v101;
  *&v125[8] = v159;
  v125[24] = v160;
  v125[25] = v94;
  *&v125[26] = v100;
  *&v125[28] = v112;
  v126 = v156;
  *v127 = v157;
  *&v127[16] = v158;
  *&v127[24] = v110;
  v128 = v155;
  v129 = v109;
  v132 = v154;
  v131 = v153;
  v130 = v152;
  v133 = *(&v108 + 1);
  v134 = v108;
  v135 = v104;
  v136 = v111;
  v89 = v94;
  v138 = v149;
  v139 = v150;
  v137 = v148;
  v140 = v151;
  v141 = v103;
  v142 = v107;
  v143 = v99;
  *&v144[15] = *(&v147[0].n128_u32[3] + 3);
  *v144 = v147[0];
  v145 = v98;
  LOBYTE(v113[0]) = 1;
  if (sub_181A3DFE8(v113, v147[0]))
  {
    v90 = 0xE700000000000000;
    strcpy(&v117, ", LQM: ");
    v117.n128_u64[1] = 0xE700000000000000;
    if (v94 > 49)
    {
      if (v94 == 50)
      {
        v90 = 0xE800000000000000;
        v91 = 0x6574617265646F6DLL;
      }

      else
      {
        v91 = 0x6E776F6E6B6E75;
        if (v94 == 100)
        {
          v90 = 0xE400000000000000;
          v91 = 1685024615;
        }
      }
    }

    else if (v94 == 10 || (v91 = 0x6E776F6E6B6E75, v94 == 20))
    {
      v91 = 0x6C616D696E696DLL;
    }

    MEMORY[0x1865D9CA0](v91, v90);

    MEMORY[0x1865D9CA0](v117.n128_u64[0], v117.n128_u64[1]);

    v89 = v94;
    v88 = v96;
  }

  v117.n128_u64[0] = v1;
  v117.n128_u64[1] = v2;
  *&v118 = v95;
  *(&v118 + 1) = v97;
  v121 = v163;
  v122 = v164;
  v123 = v165;
  LODWORD(v124) = v166;
  v119 = v161;
  v120 = v162;
  BYTE4(v124) = v106;
  BYTE5(v124) = v105;
  WORD3(v124) = v102;
  *(&v124 + 1) = v88;
  *v125 = v101;
  *&v125[8] = v159;
  v125[24] = v160;
  v125[25] = v89;
  *&v125[26] = v100;
  *&v125[28] = v112;
  v126 = v156;
  *v127 = v157;
  *&v127[16] = v158;
  *&v127[24] = v110;
  v128 = v155;
  v129 = v109;
  v132 = v154;
  v131 = v153;
  v130 = v152;
  v133 = *(&v108 + 1);
  v134 = v108;
  v135 = v104;
  v136 = v111;
  v138 = v149;
  v139 = v150;
  v137 = v148;
  v140 = v151;
  v141 = v103;
  v142 = v107;
  v143 = v99;
  *&v144[15] = *(&v147[0].n128_u32[3] + 3);
  *v144 = v147[0];
  v145 = v98;
  LOBYTE(v113[0]) = 2;
  if (sub_181A3DFE8(v113, v147[0]))
  {
    v92 = 0xE700000000000000;
    strcpy(&v117, ", LQM: ");
    v117.n128_u64[1] = 0xE700000000000000;
    if (v89 > 49)
    {
      v93 = 0x6E776F6E6B6E75;
      if (v89 == 50)
      {
        v92 = 0xE800000000000000;
        v93 = 0x6574617265646F6DLL;
      }

      else if (v89 == 100)
      {
        v92 = 0xE400000000000000;
        v93 = 1685024615;
      }
    }

    else
    {
      v93 = 0x6E776F6E6B6E75;
      if (v89 == 10 || v89 == 20)
      {
        v93 = 0x6C616D696E696DLL;
      }
    }

    MEMORY[0x1865D9CA0](v93, v92);

    MEMORY[0x1865D9CA0](v117.n128_u64[0], v117.n128_u64[1]);
  }

  return v146.n128_u64[0];
}

double sub_181FD45CC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 64) = 1;
  *(a3 + 73) = 0;
  *(a3 + 65) = 0;
  *(a3 + 81) = 1;
  *(a3 + 90) = 0;
  *(a3 + 82) = 0;
  *(a3 + 98) = 1;
  *(a3 + 144) = 0;
  *(a3 + 152) = 0;
  *(a3 + 108) = 0;
  *(a3 + 100) = 0;
  *(a3 + 116) = 0;
  *(a3 + 135) = 0;
  *(a3 + 120) = 0;
  *(a3 + 128) = 0;
  *(a3 + 224) = 0u;
  v4 = a3 + 224;
  *(v4 - 24) = 0u;
  *(v4 - 36) = 0u;
  *(v4 - 52) = 0u;
  *(v4 - 68) = 0u;
  *(v4 - 8) = MEMORY[0x1E69E7CC0];
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 126) = 0;
  *(v4 + 136) = 0;
  *(v4 + 144) = 0;
  *(v4 + 152) = 1;
  *(v4 - 192) = a2;
  *(v4 - 184) = a1;
  return result;
}

void *PathProperties.init(parameters:)@<X0>(const void *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 40) = 0;
  *(a2 + 64) = 1;
  *(a2 + 73) = 0;
  *(a2 + 65) = 0;
  *(a2 + 81) = 1;
  *(a2 + 90) = 0;
  *(a2 + 82) = 0;
  *(a2 + 98) = 1;
  *(a2 + 144) = 0;
  *(a2 + 152) = 0;
  *(a2 + 116) = 0;
  *(a2 + 100) = 0;
  *(a2 + 108) = 0;
  *(a2 + 224) = 0u;
  v3 = a2 + 224;
  *(a2 + 120) = 0;
  *(a2 + 128) = 0;
  *(a2 + 135) = 0;
  *(a2 + 156) = 0u;
  *(a2 + 172) = 0u;
  *(a2 + 188) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 216) = MEMORY[0x1E69E7CC0];
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 350) = 0;
  *(a2 + 360) = 0;
  *(a2 + 368) = 0;
  *(a2 + 376) = 1;
  type metadata accessor for MutableParametersStorage();
  v4 = swift_allocObject();
  result = memcpy((v4 + 16), a1, 0x188uLL);
  *(v3 - 192) = v4;
  return result;
}

BOOL sub_181FD4738(void *__src, char a2)
{
  memcpy(__dst, __src, 0x17AuLL);
  v4 = *(v2 + 8);
  v5 = *(v2 + 116);
  if (sub_181FD7540(__dst) == 1)
  {
    return 0;
  }

  if (v5 == BYTE4(__dst[14]) || v5 != 1 || BYTE4(__dst[14]) != 2)
  {
    v10 = v5 != BYTE4(__dst[14]) && v5 == 2 && BYTE4(__dst[14]) == 1;
    if (v10 || (a2 & 1) == 0)
    {
      return 0;
    }

    if (v4)
    {
      v13 = v4;
      if (__dst[1])
      {
        v12 = __dst[1];
        v11 = _s7Network9InterfaceV2eeoiySbAC_ACtFZ_0(&v13, &v12);

        swift_retain_n();

        return (v11 & 1) == 0;
      }
    }

    else if (!__dst[1])
    {
      return 0;
    }
  }

  return 1;
}

uint64_t PathProperties.maximumPacketSize.getter()
{
  v1 = type metadata accessor for Endpoint.EndpointType(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(v0 + 16);
  v15[0] = *v0;
  v15[1] = v4;
  v5 = *(v0 + 40);
  v16 = *(v0 + 32);
  memcpy(v18, (v0 + 48), sizeof(v18));
  v17 = v5;
  result = sub_181B6C108();
  if (result < 1)
  {
    return 1500;
  }

  v7 = result - 40;
  if (result >= 0x28)
  {
    if (v5)
    {
      v8 = result;
      v9 = OBJC_IVAR____TtC7Network8Endpoint_type;
      swift_beginAccess();
      sub_181B5C0FC(v5 + v9, v3);
      if (swift_getEnumCaseMultiPayload())
      {
        sub_181B5C160(v3);
      }

      else
      {
        v10 = *(v3 + 2);
        v11 = *(v3 + 3);
        v12 = *(v3 + 4);
        v13 = *(v3 + 20);
        v14 = v3[42];

        if (!v14)
        {
          sub_181AD1DE4(v10, v11, v12, v13, 0);
          return v8 - 20;
        }

        sub_181AD1DE4(v10, v11, v12, v13, v14);
      }
    }

    return v7;
  }

  return result;
}

BOOL sub_181FD49D0()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 72);
  v3 = *(v0 + 88);
  swift_beginAccess();
  result = 0;
  if (*(v1 + 234))
  {
    if (!v3 && v2 != 4)
    {
      v5 = v0[1];
      v18 = *v0;
      v19 = v5;
      v20 = v1;
      v6 = *(v0 + 248);
      v35 = *(v0 + 264);
      v33 = *(v0 + 232);
      v34 = v6;
      v36 = *(v0 + 35);
      v7 = *(v0 + 184);
      v29 = *(v0 + 168);
      v30 = v7;
      v8 = *(v0 + 216);
      v31 = *(v0 + 200);
      v32 = v8;
      v9 = *(v0 + 120);
      v25 = *(v0 + 104);
      v26 = v9;
      v10 = *(v0 + 152);
      v27 = *(v0 + 136);
      v28 = v10;
      v11 = *(v0 + 56);
      v21 = *(v0 + 40);
      v22 = v11;
      v12 = *(v0 + 88);
      v23 = *(v0 + 72);
      v24 = v12;
      v37 = v2;
      v13 = *(v0 + 308);
      v38 = *(v0 + 292);
      v39 = v13;
      *v40 = *(v0 + 324);
      *&v40[12] = v0[21];
      v41 = 0;
      v42[0] = *(v0 + 356);
      v14 = v42[0];
      *(&v42[0].n128_u64[1] + 6) = *(v0 + 370);
      v17 = 4;
      if ((sub_181CCC278(&v17, v14) & 1) == 0)
      {
        if ((*(v1 + 234) & 0xFE) == 2)
        {
          return 1;
        }

        v16 = *(v1 + 240);
        if (!v16 || !*(v16 + 16))
        {
          return 1;
        }
      }
    }
  }

  return result;
}

unint64_t sub_181FD4B3C()
{
  v160 = *MEMORY[0x1E69E9840];
  v2 = *(v0 + 32);
  result = swift_beginAccess();
  v4 = *(v2 + 240);
  if (v4 && *(v4 + 16))
  {
    return result;
  }

  v5 = *(v0 + 156);
  if ((v5 & 0x30) != 0)
  {
    return result;
  }

  if ((*(v2 + 234) & 0xFE) == 2)
  {
    return result;
  }

  v116 = 0;
  v115 = 0;
  v114 = 0;
  result = sub_181ADC1F8();
  v7 = *(v0 + 264);
  if (!v7)
  {
    return result;
  }

  v108 = v6;
  v109 = result;
  v158 = 0;
  v159 = 0;
  v8 = 1 << *(v7 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(v7 + 64);
  v11 = (v8 + 63) >> 6;

  advisory = 0;
  v13 = 0;
  if (!v10)
  {
    goto LABEL_11;
  }

  do
  {
LABEL_9:
    while (1)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v1 = *(*(v7 + 56) + ((v13 << 9) | (8 * v14)));
      if ((*(v1 + 80) & 2) != 0)
      {
        break;
      }

      if (!v10)
      {
        goto LABEL_11;
      }
    }

    advisory = nw_path_bridge_ne_session_agent_get_advisory();
  }

  while (v10);
LABEL_11:
  while (1)
  {
    v15 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v15 >= v11)
    {

      if ((advisory & 1) == 0)
      {
        return result;
      }

      *(v0 + 112) = 0;
      if (v116)
      {
        sub_181E378A4(v116, &v113, v153);
        v26 = v155;
        type metadata accessor for Interface.BackingClass();
        v27 = swift_allocObject();
        v28 = v27;
        v29 = v153[5];
        *(v27 + 80) = v153[4];
        *(v27 + 96) = v29;
        *(v27 + 112) = v153[6];
        *(v27 + 128) = v154;
        v30 = v153[1];
        *(v27 + 16) = v153[0];
        *(v27 + 32) = v30;
        v31 = v153[3];
        *(v27 + 48) = v153[2];
        *(v27 + 64) = v31;
        *(v27 + 136) = v26;
        *(v27 + 170) = *(v157 + 14);
        *(v27 + 156) = v157[0];
        *(v27 + 140) = v156;
        if (v26 & 1) != 0 && (*(v2 + 230))
        {

          if (qword_1ED4106B8 != -1)
          {
            swift_once();
          }

          v32 = sub_182AD2698();
          __swift_project_value_buffer(v32, qword_1ED411DA8);

          v33 = sub_182AD2678();
          v34 = sub_182AD3898();

          if (os_log_type_enabled(v33, v34))
          {
            v35 = swift_slowAlloc();
            v36 = swift_slowAlloc();
            v120.n128_u64[0] = v36;
            *v35 = 136446210;
            v37 = *(v28 + 40);
            v38 = *(v28 + 48);

            v39 = sub_181C64FFC(v37, v38, &v120);

            *(v35 + 4) = v39;
            v40 = "Fallback to expensive interface %{public}s prohibited by parameters";
            goto LABEL_70;
          }

LABEL_125:
        }

        if ((v26 & 0x40) != 0 && (*(v2 + 230) & 2) != 0)
        {

          if (qword_1ED4106B8 != -1)
          {
            swift_once();
          }

          v41 = sub_182AD2698();
          __swift_project_value_buffer(v41, qword_1ED411DA8);

          v33 = sub_182AD2678();
          v34 = sub_182AD3898();

          if (!os_log_type_enabled(v33, v34))
          {
            goto LABEL_125;
          }

          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v120.n128_u64[0] = v36;
          *v35 = 136446210;
          v42 = *(v28 + 40);
          v43 = *(v28 + 48);

          v44 = sub_181C64FFC(v42, v43, &v120);

          *(v35 + 4) = v44;
          v40 = "Fallback to constrained interface %{public}s prohibited by parameters";
LABEL_70:
          _os_log_impl(&dword_181A37000, v33, v34, v40, v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v36);
          MEMORY[0x1865DF520](v36, -1, -1);
          MEMORY[0x1865DF520](v35, -1, -1);
        }

        if ((v26 & 0x4000) != 0 && (*(v2 + 231) & 1) == 0)
        {
          v45 = *v0;
          v105 = *(v0 + 8);
          v47 = *(v0 + 16);
          v46 = *(v0 + 24);
          v2 = *(v0 + 32);
          v48 = *(v0 + 152);
          v149 = *(v0 + 136);
          v150 = v48;
          v49 = *(v0 + 184);
          v151 = *(v0 + 168);
          v152 = v49;
          v50 = *(v0 + 88);
          v145 = *(v0 + 72);
          v146 = v50;
          v51 = *(v0 + 120);
          v147 = *(v0 + 104);
          v148 = v51;
          v52 = *(v0 + 56);
          v143 = *(v0 + 40);
          v144 = v52;
          v53 = *(v0 + 200);
          v54 = *(v0 + 352);
          v141 = *(v0 + 336);
          v142[0] = v54;
          *(v142 + 10) = *(v0 + 362);
          v55 = *(v0 + 288);
          v137 = *(v0 + 272);
          v138 = v55;
          v56 = *(v0 + 320);
          v139 = *(v0 + 304);
          v140 = v56;
          v57 = *(v0 + 224);
          v133 = *(v0 + 208);
          v134 = v57;
          v58 = *(v0 + 256);
          v135 = *(v0 + 240);
          v136 = v58;
          if (v45)
          {
            if ((*(v45 + 137) & 0x40) != 0)
            {
              goto LABEL_107;
            }

LABEL_95:
            v107 = v0;
            v117 = 0;
            v118 = 0;
            v120.n128_u64[0] = v45;
            v120.n128_u64[1] = v105;
            loga = v47;
            *&v121 = v47;
            *(&v121 + 1) = v46;
            v85 = v46;
            *&v122[104] = v149;
            *&v122[120] = v150;
            *&v122[136] = v151;
            *&v122[152] = v152;
            *&v122[40] = v145;
            *&v122[56] = v146;
            *&v122[72] = v147;
            *&v122[88] = v148;
            *&v122[8] = v143;
            *&v122[24] = v144;
            *v122 = v2;
            *&v122[168] = v53;
            *(v132 + 10) = *(v142 + 10);
            v131 = v141;
            v132[0] = v142[0];
            v127 = v137;
            v128 = v138;
            v129 = v139;
            v130 = v140;
            v123 = v133;
            v124 = v134;
            v125 = v135;
            v126 = v136;
            v86 = sub_181ADEF94(0, 0, &v110, &v117);

            if ((v86 & 1) == 0 || (!v105 || (*(v105 + 137) & 0x40) == 0) && (!loga || (BYTE1(loga[17].isa) & 0x40) == 0) && (!v85 || (*(v85 + 136) & 0x4000) == 0))
            {

              if (qword_1ED4106B8 != -1)
              {
                swift_once();
              }

              v87 = sub_182AD2698();
              __swift_project_value_buffer(v87, qword_1ED411DA8);

              v33 = sub_182AD2678();
              v34 = sub_182AD3898();

              if (!os_log_type_enabled(v33, v34))
              {
                goto LABEL_125;
              }

              v35 = swift_slowAlloc();
              v36 = swift_slowAlloc();
              v120.n128_u64[0] = v36;
              *v35 = 136446210;
              v88 = *(v28 + 40);
              v89 = *(v28 + 48);

              v90 = sub_181C64FFC(v88, v89, &v120);

              *(v35 + 4) = v90;
              v40 = "Fallback to ultra constrained interface %{public}s prohibited by parameters";
              goto LABEL_70;
            }

            v0 = v107;
          }

          else
          {
            if (!v53)
            {
              goto LABEL_95;
            }

            log = v47;
            v102 = v46;
            v69 = v53[4];
            if (v53[2] >= v53[3] + v69)
            {
              v70 = v53[3] + v69;
            }

            else
            {
              v70 = v53[2];
            }

            v110 = v53;
            v111 = v69;
            v112 = v70;
            v71 = v53;
            while (1)
            {
              if (v69 == v70)
              {
                if ((sub_181AC81FC(v58) & 1) == 0)
                {

                  v46 = v102;
                  v47 = log;
                  goto LABEL_95;
                }

                v71 = v110;
                v69 = v111;
              }

              v72 = v69 + 1;
              v111 = v69 + 1;
              v73 = &v71[26 * v69];
              v74 = *(v73 + 9);
              v75 = *(v73 + 13);
              v76 = *(v73 + 7);
              *&v122[16] = *(v73 + 11);
              *&v122[32] = v75;
              v121 = v76;
              *v122 = v74;
              v77 = *(v73 + 17);
              v78 = *(v73 + 21);
              v79 = *(v73 + 15);
              *&v122[80] = *(v73 + 19);
              *&v122[96] = v78;
              *&v122[48] = v79;
              *&v122[64] = v77;
              v80 = *(v73 + 25);
              v81 = *(v73 + 27);
              v82 = *(v73 + 23);
              *&v122[154] = *(v73 + 226);
              *&v122[128] = v80;
              *&v122[144] = v81;
              *&v122[112] = v82;
              v58 = *(v73 + 5);
              v120 = v58;
              v83 = v58.n128_u64[1];
              if (v58.n128_u64[1])
              {
                if (v122[168])
                {
                  break;
                }
              }

              v70 = v112;
              v69 = v72;
            }

            sub_181AFE6F4(&v120, &v117);

            sub_181AFE6A0(&v120);
            v84 = *(v83 + 136);

            v46 = v102;
            v47 = log;
            if ((v84 & 0x4000) == 0)
            {
              goto LABEL_95;
            }
          }
        }

LABEL_107:
        swift_beginAccess();
        v92 = *(v2 + 240);
        if (v92)
        {
          v93 = *(v92 + 24);
          if (v93)
          {
            v94 = v93[4];
            v95 = v93[3] + v94;
            if (v93[2] < v95)
            {
              v95 = v93[2];
            }

            v117 = v93;
            v118 = v94;
            v119 = v95;
            v96 = v93;
            while (1)
            {
              if (v94 == v119)
              {
                if ((sub_181AC81FC(v91) & 1) == 0)
                {

                  LOBYTE(v92) = 0;
                  goto LABEL_119;
                }

                v96 = v117;
                v94 = v118;
              }

              v97 = v96 + v94++;
              v118 = v94;
              if (*(v97 + 40) == 2)
              {

                LOBYTE(v92) = 1;
                goto LABEL_119;
              }
            }
          }

          LOBYTE(v92) = 0;
        }

LABEL_119:
        if (*(v28 + 184) == 2 && ((v92 & 1) != 0 || (v114 & 1) == 0 && (v114 & 0x100) == 0 && (*(v2 + 236) & 0x10) != 0))
        {

          if (qword_1ED4106B8 != -1)
          {
            swift_once();
          }

          v98 = sub_182AD2698();
          __swift_project_value_buffer(v98, qword_1ED411DA8);

          v33 = sub_182AD2678();
          v34 = sub_182AD3898();

          if (!os_log_type_enabled(v33, v34))
          {
            goto LABEL_125;
          }

          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          v117 = v36;
          *v35 = 136446210;
          v99 = *(v28 + 40);
          v100 = *(v28 + 48);

          v101 = sub_181C64FFC(v99, v100, &v117);

          *(v35 + 4) = v101;
          v40 = "Fallback to cellular interface %{public}s) prohibited by parameters";
          goto LABEL_70;
        }

        v106 = v0;
        *(v0 + 24) = v28;
      }

      else
      {

        v106 = v0;
        *(v0 + 24) = 0;
      }

      v117 = 0;
      v118 = 0xE000000000000000;
      sub_182AD3BA8();

      v117 = 0xD000000000000014;
      v118 = 0x8000000182BD7170;
      LODWORD(v153[0]) = 0;
      v16 = sub_182AD41B8();
      MEMORY[0x1865D9CA0](v16);

      MEMORY[0x1865D9CA0](0x207865646E6920, 0xE700000000000000);
      *&v153[0] = *(v106 + 24);

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA8398B0, &unk_182AEDF38);
      v17 = sub_182AD3018();
      MEMORY[0x1865D9CA0](v17);

      if (HIBYTE(v115) == 1)
      {
        MEMORY[0x1865D9CA0](0x6B616577202CLL, 0xE600000000000000);
      }

      if (HIBYTE(v114) == 1)
      {
        MEMORY[0x1865D9CA0](0x646563726F66202CLL, 0xE800000000000000);
      }

      if (v114 == 1)
      {
        MEMORY[0x1865D9CA0](0x726566657270202CLL, 0xEB00000000646572);
      }

      if (qword_1ED4106B8 != -1)
      {
        swift_once();
      }

      v18 = sub_182AD2698();
      __swift_project_value_buffer(v18, qword_1ED411DA8);
      v20 = v117;
      v19 = v118;

      v21 = sub_182AD2678();
      v22 = sub_182AD38A8();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        *&v153[0] = v24;
        *v23 = 136315138;
        v25 = sub_181C64FFC(v20, v19, v153);

        *(v23 + 4) = v25;
        _os_log_impl(&dword_181A37000, v21, v22, "%s", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v24);
        MEMORY[0x1865DF520](v24, -1, -1);
        MEMORY[0x1865DF520](v23, -1, -1);
      }

      else
      {
      }

      *&v153[0] = v109;
      *(&v153[0] + 1) = v108;
      advisory = v106;
      if (!SystemUUID.isUUIDNULL.getter())
      {
        *(v106 + 82) = v109;
        *(v106 + 90) = v108;
        *(v106 + 98) = 0;
      }

      goto LABEL_41;
    }

    v10 = *(v7 + 64 + 8 * v15);
    ++v13;
    if (v10)
    {
      v13 = v15;
      goto LABEL_9;
    }
  }

  __break(1u);

  v59 = sub_181AC47A8(v13, v1);
  v61 = v60;
  v62 = sub_181AC49BC(v10, v2);
  v64 = v63;
  v65 = *(advisory + 216);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v65 = sub_181F5A47C(0, *(v65 + 2) + 1, 1, v65);
  }

  v67 = *(v65 + 2);
  v66 = *(v65 + 3);
  if (v67 >= v66 >> 1)
  {
    v65 = sub_181F5A47C((v66 > 1), v67 + 1, 1, v65);
  }

  *(v65 + 2) = v67 + 1;
  v68 = &v65[32 * v67];
  *(v68 + 4) = v59;
  *(v68 + 5) = v61;
  *(v68 + 6) = v62;
  *(v68 + 7) = v64;
  *(advisory + 216) = v65;
LABEL_41:
  if (HIBYTE(v115) == 1)
  {
    if (v5)
    {
      goto LABEL_47;
    }

    v5 |= 1u;
  }

  else
  {
    if ((v5 & 1) == 0)
    {
      goto LABEL_47;
    }

    v5 &= 0xFFFFFFCE;
  }

  *(advisory + 156) = v5;
LABEL_47:
  if (v115)
  {
    if ((v5 & 2) != 0)
    {
      goto LABEL_53;
    }

    v5 |= 2u;
  }

  else
  {
    if ((v5 & 2) == 0)
    {
      goto LABEL_53;
    }

    v5 &= ~2u;
  }

  *(advisory + 156) = v5;
LABEL_53:
  if (v114)
  {
    if ((v5 & 8) != 0)
    {
      goto LABEL_59;
    }

    v5 |= 8u;
  }

  else
  {
    if ((v5 & 8) == 0)
    {
      goto LABEL_59;
    }

    v5 &= ~8u;
  }

  *(advisory + 156) = v5;
LABEL_59:
  if ((v114 & 0x100) != 0)
  {
    if ((v5 & 4) == 0)
    {
      *(advisory + 156) = v5 | 4;
    }
  }

  else if ((v5 & 4) != 0)
  {
    *(advisory + 156) = v5 & 0xFFFFFFFB;
  }

  return result;
}

uint64_t sub_181FD5D5C()
{
  v19 = *MEMORY[0x1E69E9840];
  v1 = *(v0 + 264);
  v2 = *(v0 + 312);
  if (*(v0 + 168) == 0 || v2 == 0)
  {
LABEL_15:
    if (v1)
    {
      v8 = 0;
      v9 = 1 << *(v1 + 32);
      v10 = -1;
      if (v9 < 64)
      {
        v10 = ~(-1 << v9);
      }

      v11 = v10 & *(v1 + 64);
      while (v11)
      {
LABEL_24:
        v13 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v14 = *(*(*(v1 + 56) + ((v8 << 9) | (8 * v13))) + 80);
        if ((v14 & 0x100) != 0 && (v14 & 0x13) != 1)
        {
          return 1;
        }
      }

      while (1)
      {
        v12 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          __break(1u);
        }

        if (v12 >= ((v9 + 63) >> 6))
        {
          break;
        }

        v11 = *(v1 + 64 + 8 * v12);
        ++v8;
        if (v11)
        {
          v8 = v12;
          goto LABEL_24;
        }
      }
    }

    return 0;
  }

  else
  {
    v4 = v2[4];
    v5 = v2[3] + v4;
    if (v2[2] < v5)
    {
      v5 = v2[2];
    }

    v16 = v2;
    v17 = v4;
    v18 = v5;

    do
    {
      if (v4 == v18)
      {
        if ((sub_181AC81FC(v6) & 1) == 0)
        {

          goto LABEL_15;
        }

        v2 = v16;
        v4 = v17;
      }

      v17 = v4 + 1;
      v15 = *&v2[3 * v4++ + 6];
    }

    while (uuid_is_null(&v15) == 1);

    return 1;
  }
}

void *sub_181FD5F04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = a1;
  v92 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 224);
  if (v6)
  {
    v7 = *(v6 + 80);
    if (v7)
    {
      v63 = *(a2 + 32);
      v8 = v7[4];
      v9 = v7[3] + v8;
      if (v7[2] < v9)
      {
        v9 = v7[2];
      }

      *&v67 = *(v6 + 80);
      *(&v67 + 1) = v8;
      *&v68 = v9;
      swift_retain_n();
      v11 = v7;
      while (1)
      {
        if (v8 == v68)
        {
          if ((sub_181AC81FC(v10) & 1) == 0)
          {

            break;
          }

          v8 = *(&v67 + 1);
          v11 = v67;
        }

        *(&v67 + 1) = v8 + 1;
        v12 = *&v11[2 * v8 + 5];
        *uu2 = v63;
        *uu1 = v12;
        ++v8;
        if (!uuid_compare(uu1, uu2))
        {

LABEL_144:

          *a3 = 1;
          return result;
        }
      }
    }
  }

  v13 = v4[11];
  v77 = v4[10];
  v78 = v13;
  v14 = v4[13];
  v79 = v4[12];
  v80 = v14;
  v15 = v4[7];
  v73 = v4[6];
  v74 = v15;
  v16 = v4[9];
  v75 = v4[8];
  v76 = v16;
  v17 = v4[3];
  v69 = v4[2];
  v70 = v17;
  v18 = v4[5];
  v71 = v4[4];
  v72 = v18;
  v19 = v4[1];
  v67 = *v4;
  v68 = v19;
  v20 = *(v4 + 344);
  v88 = *(v4 + 328);
  v89 = v20;
  v21 = *(v4 + 376);
  v90 = *(v4 + 360);
  v91 = v21;
  v22 = *(v4 + 280);
  v84 = *(v4 + 264);
  v85 = v22;
  v23 = *(v4 + 312);
  v86 = *(v4 + 296);
  v87 = v23;
  v24 = *(v4 + 248);
  v82 = *(v4 + 232);
  v81 = v6;
  v83 = v24;
  v25 = sub_181AD3638(a1);
  if (!v25)
  {
    goto LABEL_79;
  }

  v27 = v25;
  v28 = *(a2 + 56);
  v64 = *(a2 + 48);
  v29 = *(a2 + 72);
  v61 = a3;
  v62 = *(a2 + 64);
  v30 = v25[4];
  v31 = v25[3] + v30;
  if (v25[2] < v31)
  {
    v31 = v25[2];
  }

  *&v67 = v25;
  *(&v67 + 1) = v30;
  *&v68 = v31;
  while (1)
  {
    if (v30 != v31)
    {
      goto LABEL_21;
    }

    if ((sub_181AC81FC(v26) & 1) == 0)
    {
      break;
    }

    v30 = *(&v67 + 1);
    v27 = v67;
LABEL_21:
    v32 = &v27[4 * v30++];
    *(&v67 + 1) = v30;
    v33 = v32[6];
    v34 = v32[7];
    v35 = v32[8];
    if (v33 > 2)
    {
      switch(v33)
      {
        case 3:
          if (v28 != 3)
          {
            goto LABEL_17;
          }

          goto LABEL_44;
        case 4:
          if (v28 != 4)
          {
            goto LABEL_17;
          }

          goto LABEL_44;
        case 5:
          if (v28 != 5)
          {
            goto LABEL_17;
          }

          goto LABEL_44;
      }
    }

    else
    {
      switch(v33)
      {
        case 0:
          if (v28)
          {
            goto LABEL_17;
          }

          goto LABEL_44;
        case 1:
          if (v28 != 1)
          {
            goto LABEL_17;
          }

          goto LABEL_44;
        case 2:
          if (v28 != 2)
          {
            goto LABEL_17;
          }

          goto LABEL_44;
      }
    }

    if (v28 < 6 || (v32[5] != v64 || v33 != v28) && (sub_182AD4268() & 1) == 0)
    {
      goto LABEL_17;
    }

LABEL_44:
    if (v35 > 4)
    {
      if (v35 <= 6)
      {
        if (v35 == 5)
        {
          if (v29 == 5)
          {
            goto LABEL_77;
          }
        }

        else if (v29 == 6)
        {
          goto LABEL_77;
        }

        goto LABEL_17;
      }

      switch(v35)
      {
        case 7:
          if (v29 == 7)
          {
            goto LABEL_77;
          }

          goto LABEL_17;
        case 8:
          if (v29 == 8)
          {
            goto LABEL_77;
          }

          goto LABEL_17;
        case 9:
          if (v29 == 9)
          {
            goto LABEL_77;
          }

          goto LABEL_17;
      }
    }

    else
    {
      if (v35 > 1)
      {
        if (v35 == 2)
        {
          if (v29 == 2)
          {
            goto LABEL_77;
          }
        }

        else if (v35 == 3)
        {
          if (v29 == 3)
          {
            goto LABEL_77;
          }
        }

        else if (v29 == 4)
        {
          goto LABEL_77;
        }

        goto LABEL_17;
      }

      if (!v35)
      {
        if (!v29)
        {
          goto LABEL_77;
        }

        goto LABEL_17;
      }

      if (v35 == 1)
      {
        if (v29 == 1)
        {
          goto LABEL_77;
        }

        goto LABEL_17;
      }
    }

    if (v29 >= 0xA && (v34 == v62 && v35 == v29 || (sub_182AD4268() & 1) != 0))
    {
LABEL_77:

      *v61 = 1;
      return result;
    }

LABEL_17:
    v31 = v68;
  }

  a3 = v61;
LABEL_79:
  v37 = v4[11];
  v77 = v4[10];
  v78 = v37;
  v38 = v4[13];
  v79 = v4[12];
  v80 = v38;
  v39 = v4[7];
  v73 = v4[6];
  v74 = v39;
  v40 = v4[9];
  v75 = v4[8];
  v76 = v40;
  v41 = v4[3];
  v69 = v4[2];
  v70 = v41;
  v42 = v4[5];
  v71 = v4[4];
  v72 = v42;
  v43 = v4[1];
  v67 = *v4;
  v68 = v43;
  v44 = *(v4 + 344);
  v88 = *(v4 + 328);
  v89 = v44;
  v45 = *(v4 + 376);
  v90 = *(v4 + 360);
  v91 = v45;
  v46 = *(v4 + 280);
  v84 = *(v4 + 264);
  v85 = v46;
  v47 = *(v4 + 312);
  v86 = *(v4 + 296);
  v87 = v47;
  v48 = *(v4 + 248);
  v82 = *(v4 + 232);
  v81 = v6;
  v83 = v48;
  result = sub_181AD41DC(v25);
  if (!result)
  {
    goto LABEL_146;
  }

  v50 = result;
  v51 = *(a2 + 48);
  v52 = *(a2 + 56);
  v54 = *(a2 + 64);
  v53 = *(a2 + 72);
  v55 = result[4];
  v56 = result[3] + v55;
  if (result[2] < v56)
  {
    v56 = result[2];
  }

  *&v67 = result;
  *(&v67 + 1) = v55;
  *&v68 = v56;
  while (2)
  {
    if (v55 != v56)
    {
LABEL_88:
      v57 = &v50[4 * v55++];
      *(&v67 + 1) = v55;
      v58 = v57[6];
      v59 = v57[7];
      v60 = v57[8];
      if (v58 > 2)
      {
        switch(v58)
        {
          case 3:
            if (v52 != 3)
            {
              goto LABEL_84;
            }

            goto LABEL_111;
          case 4:
            if (v52 != 4)
            {
              goto LABEL_84;
            }

            goto LABEL_111;
          case 5:
            if (v52 != 5)
            {
              goto LABEL_84;
            }

            goto LABEL_111;
        }
      }

      else
      {
        switch(v58)
        {
          case 0:
            if (v52)
            {
              goto LABEL_84;
            }

            goto LABEL_111;
          case 1:
            if (v52 != 1)
            {
              goto LABEL_84;
            }

            goto LABEL_111;
          case 2:
            if (v52 != 2)
            {
              goto LABEL_84;
            }

            goto LABEL_111;
        }
      }

      if (v52 < 6 || (v57[5] != v51 || v58 != v52) && (sub_182AD4268() & 1) == 0)
      {
        goto LABEL_84;
      }

LABEL_111:
      if (v60 > 4)
      {
        if (v60 <= 6)
        {
          if (v60 == 5)
          {
            if (v53 == 5)
            {
              goto LABEL_144;
            }
          }

          else if (v53 == 6)
          {
            goto LABEL_144;
          }

          goto LABEL_84;
        }

        if (v60 == 7)
        {
          if (v53 == 7)
          {
            goto LABEL_144;
          }

          goto LABEL_84;
        }

        if (v60 == 8)
        {
          if (v53 == 8)
          {
            goto LABEL_144;
          }

          goto LABEL_84;
        }

        if (v60 != 9)
        {
          goto LABEL_140;
        }

        if (v53 == 9)
        {
          goto LABEL_144;
        }
      }

      else
      {
        if (v60 > 1)
        {
          if (v60 == 2)
          {
            if (v53 == 2)
            {
              goto LABEL_144;
            }
          }

          else if (v60 == 3)
          {
            if (v53 == 3)
            {
              goto LABEL_144;
            }
          }

          else if (v53 == 4)
          {
            goto LABEL_144;
          }

          goto LABEL_84;
        }

        if (v60)
        {
          if (v60 == 1)
          {
            if (v53 == 1)
            {
              goto LABEL_144;
            }

            goto LABEL_84;
          }

LABEL_140:
          if (v53 >= 0xA && (v59 == v54 && v60 == v53 || (sub_182AD4268() & 1) != 0))
          {
            goto LABEL_144;
          }

          goto LABEL_84;
        }

        if (!v53)
        {
          goto LABEL_144;
        }
      }

LABEL_84:
      v56 = v68;
      continue;
    }

    break;
  }

  if (sub_181AC81FC(v49))
  {
    v55 = *(&v67 + 1);
    v50 = v67;
    goto LABEL_88;
  }

LABEL_146:
  *a3 = 0;
  return result;
}

uint64_t sub_181FD6598(uint64_t result, unsigned int a2, unint64_t *a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v17[2] = *MEMORY[0x1E69E9840];
  if (!result)
  {
    __break(1u);
  }

  if ((a3[2] & 1) == 0)
  {
    v11 = *a3;
    v10 = a3[1];
    v12 = *a3 >> 8;
    v13 = *a3 >> 16;
    v15[0] = *a3;
    v15[1] = v12;
    v15[2] = v13;
    v15[3] = BYTE3(v11);
    v15[4] = BYTE4(v11);
    v15[5] = BYTE5(v11);
    v15[6] = BYTE6(v11);
    v15[7] = HIBYTE(v11);
    v16 = v10;

    sub_181AC04E8(v15, a4, a2, v17);

    result = v17[0];
    if (v17[0])
    {
      v14 = v17[1];

      *a7 = v14;

      return swift_unknownObjectRelease();
    }
  }

  return result;
}

uint64_t sub_181FD670C(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4 = swift_dynamicCastObjCProtocolUnconditional();
  result = *a3;
  v6 = *(*a3 + 24);
  v7 = v6 + 1;
  if (__OFADD__(v6, 1))
  {
    __break(1u);
  }

  else
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *a3;
    if (*(*a3 + 16) < v7 || (isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_181AA69D8(isUniquelyReferenced_nonNull_native, v7, 0);
      v9 = *a3;
    }

    sub_181AA8240((v9 + 16), v9 + 40, v4);
    return 1;
  }

  return result;
}

uint64_t sub_181FD67BC@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 264);
  if (!v3)
  {
LABEL_73:
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    return result;
  }

  v4 = 0;
  v5 = *(result + 8);
  v25 = *result;
  v6 = 1 << *(v3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = *(result + 16);
  v9 = *(result + 24);
  v10 = v7 & *(v3 + 64);
  v11 = (v6 + 63) >> 6;
  while (v10)
  {
LABEL_10:
    v13 = *(*(v3 + 56) + ((v4 << 9) | (8 * __clz(__rbit64(v10)))));
    v10 &= v10 - 1;
    result = *(v13 + 48);
    v14 = *(v13 + 56);
    v15 = *(v13 + 64);
    v16 = *(v13 + 72);
    if (v14 > 2)
    {
      switch(v14)
      {
        case 3:
          if (v5 == 3)
          {
            goto LABEL_35;
          }

          break;
        case 4:
          if (v5 == 4)
          {
LABEL_35:
            if (v16 > 4)
            {
              if (v16 <= 6)
              {
                if (v16 == 5)
                {
                  if (v9 == 5)
                  {
                    goto LABEL_72;
                  }
                }

                else if (v9 == 6)
                {
                  goto LABEL_72;
                }
              }

              else
              {
                switch(v16)
                {
                  case 7:
                    if (v9 == 7)
                    {
                      goto LABEL_72;
                    }

                    break;
                  case 8:
                    if (v9 == 8)
                    {
                      goto LABEL_72;
                    }

                    break;
                  case 9:
                    if (v9 == 9)
                    {
                      goto LABEL_72;
                    }

                    break;
                  default:
                    goto LABEL_66;
                }
              }
            }

            else if (v16 <= 1)
            {
              if (v16)
              {
                if (v16 == 1)
                {
                  if (v9 == 1)
                  {
                    goto LABEL_72;
                  }
                }

                else
                {
LABEL_66:
                  if (v9 >= 0xA)
                  {
                    v19 = v15 == v8 && v16 == v9;
                    if (v19 || (v20 = v8, v21 = v9, v22 = a2, result = sub_182AD4268(), v9 = v21, v8 = v20, a2 = v22, (result & 1) != 0))
                    {
LABEL_72:
                      *a2 = *(v13 + 32);
                      *(a2 + 16) = 0;
                      return result;
                    }
                  }
                }
              }

              else if (!v9)
              {
                goto LABEL_72;
              }
            }

            else if (v16 == 2)
            {
              if (v9 == 2)
              {
                goto LABEL_72;
              }
            }

            else if (v16 == 3)
            {
              if (v9 == 3)
              {
                goto LABEL_72;
              }
            }

            else if (v9 == 4)
            {
              goto LABEL_72;
            }
          }

          break;
        case 5:
          if (v5 == 5)
          {
            goto LABEL_35;
          }

          break;
        default:
LABEL_25:
          if (v5 >= 6)
          {
            if (result == v25 && v14 == v5)
            {
              goto LABEL_35;
            }

            v23 = v9;
            v24 = v8;
            v18 = a2;
            result = sub_182AD4268();
            v9 = v23;
            v8 = v24;
            a2 = v18;
            if (result)
            {
              goto LABEL_35;
            }
          }

          break;
      }
    }

    else if (v14)
    {
      if (v14 == 1)
      {
        if (v5 == 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        if (v14 != 2)
        {
          goto LABEL_25;
        }

        if (v5 == 2)
        {
          goto LABEL_35;
        }
      }
    }

    else if (!v5)
    {
      goto LABEL_35;
    }
  }

  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v11)
    {
      goto LABEL_73;
    }

    v10 = *(v3 + 64 + 8 * v12);
    ++v4;
    if (v10)
    {
      v4 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}