uint64_t sub_1A9916080(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 344) = v14;
  *(v8 + 328) = v13;
  *(v8 + 312) = v12;
  *(v8 + 296) = v11;
  *(v8 + 280) = v10;
  *(v8 + 264) = a7;
  *(v8 + 272) = a8;
  *(v8 + 248) = a5;
  *(v8 + 256) = a6;
  *(v8 + 240) = a4;
  return MEMORY[0x1EEE6DFA0](sub_1A99160DC, 0, 0);
}

uint64_t sub_1A99160DC()
{
  v33 = v0;
  v1 = *(v0 + 240);
  v2 = type metadata accessor for SFXPCInvocation();
  *(v0 + 96) = v1;
  *(v0 + 120) = v2;
  sub_1A97AF7EC(v0 + 96, v0 + 128);
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FB0, &qword_1A99A89B8);
  if (swift_dynamicCast())
  {
    v4 = *(v0 + 344);
    v5 = *(v0 + 264);
    sub_1A967A538((v0 + 56), v0 + 16);
    __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_1((v0 + 16), v6);
    *(v0 + 184) = v4;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v0 + 160));
    (*(*(v4 - 8) + 16))(boxed_opaque_existential_0, v5, v4);
    v31 = *(v7 + 8) + **(v7 + 8);
    v9 = swift_task_alloc();
    *(v0 + 352) = v9;
    *v9 = v0;
    v9[1] = sub_1A99165C4;
    v35 = v6;
    v36 = v7;

    __asm { BRAA            X8, X16 }
  }

  *(v0 + 88) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  sub_1A97B06FC(v0 + 56, &qword_1EB3B5FB8, &unk_1A99A89C0);
  *(v0 + 216) = 0;
  *(v0 + 224) = 0xE000000000000000;
  sub_1A9977400();
  v11 = *(v0 + 216);
  v10 = *(v0 + 224);
  sub_1A97BCDE0();
  v12 = swift_allocError();
  *v13 = v11;
  v13[1] = v10;
  v13[2] = 0xD00000000000001FLL;
  v13[3] = 0x80000001A99A8950;
  v13[4] = 0;
  v13[5] = 0;
  v13[6] = 0xD00000000000004FLL;
  v13[7] = 0x80000001A99E8280;
  v13[8] = 285;
  v13[10] = 0xA000000000000000;
  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_0Tm((v0 + 96));
  if (qword_1EB3ACDC8 != -1)
  {
    swift_once();
  }

  v14 = sub_1A99764A0();
  __swift_project_value_buffer(v14, qword_1EB3ACDD0);

  v15 = v12;
  v16 = sub_1A9976480();
  v17 = sub_1A9976F90();

  if (os_log_type_enabled(v16, v17))
  {
    v19 = *(v0 + 312);
    v18 = *(v0 + 320);
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v32[0] = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_1A97AF148(v19, v18, v32);
    *(v20 + 12) = 2082;
    swift_getErrorValue();
    v22 = sub_1A99778E0();
    v24 = sub_1A97AF148(v22, v23, v32);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_1A9662000, v16, v17, "Invocation [%{public}s] FAIL -- Daemon post-async-invocation {error: %{public}s, sync: false}", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v21, -1, -1);
    MEMORY[0x1AC58D2C0](v20, -1, -1);
  }

  v25 = *(v0 + 328);
  v26 = objc_allocWithZone(type metadata accessor for _SFXPCError());
  v27 = v12;
  v28 = sub_1A99195C8(v12);

  v25(0, 0xF000000000000000, 0, 0, v28);
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_1A99165C4(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[45] = a1;
  v4[46] = a2;
  v4[47] = v2;

  if (v2)
  {
    v5 = sub_1A9916948;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0Tm(v4 + 20);
    v5 = sub_1A99166E4;
  }

  return MEMORY[0x1EEE6DFA0](v5, 0, 0);
}

uint64_t sub_1A99166E4()
{
  v24 = v0;
  if (qword_1EB3ACDC8 != -1)
  {
    swift_once();
  }

  v2 = v0[45];
  v1 = v0[46];
  v3 = sub_1A99764A0();
  __swift_project_value_buffer(v3, qword_1EB3ACDD0);

  sub_1A97B40FC(v2, v1);
  v4 = sub_1A9976480();
  v5 = sub_1A9976F90();

  sub_1A97B43C4(v2, v1);
  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[45];
    v6 = v0[46];
    v9 = v0[39];
    v8 = v0[40];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_1A97AF148(v9, v8, &v23);
    *(v10 + 12) = 2080;
    sub_1A97B40FC(v7, v6);
    v12 = sub_1A9976040();
    v14 = v13;
    sub_1A97B43C4(v7, v6);
    v15 = sub_1A97AF148(v12, v14, &v23);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_1A9662000, v4, v5, "Invocation [%{public}s] END -- Daemon {responseData: %s, sync: false}", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v11, -1, -1);
    MEMORY[0x1AC58D2C0](v10, -1, -1);
  }

  v17 = v0[45];
  v16 = v0[46];
  v18 = v0[41];
  v20 = v0[37];
  v19 = v0[38];
  sub_1A97B40FC(v17, v16);
  v18(v17, v16, v20, v19, 0);
  sub_1A97B43C4(v17, v16);
  sub_1A97B43C4(v17, v16);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v21 = v0[1];

  return v21();
}

uint64_t sub_1A9916948()
{
  v20 = v0;
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 20);
  __swift_destroy_boxed_opaque_existential_0Tm(v0 + 2);
  v1 = v0[47];
  if (qword_1EB3ACDC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1A99764A0();
  __swift_project_value_buffer(v2, qword_1EB3ACDD0);

  v3 = v1;
  v4 = sub_1A9976480();
  v5 = sub_1A9976F90();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = v0[39];
    v6 = v0[40];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136446466;
    *(v8 + 4) = sub_1A97AF148(v7, v6, &v19);
    *(v8 + 12) = 2082;
    swift_getErrorValue();
    v10 = sub_1A99778E0();
    v12 = sub_1A97AF148(v10, v11, &v19);

    *(v8 + 14) = v12;
    _os_log_impl(&dword_1A9662000, v4, v5, "Invocation [%{public}s] FAIL -- Daemon post-async-invocation {error: %{public}s, sync: false}", v8, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v9, -1, -1);
    MEMORY[0x1AC58D2C0](v8, -1, -1);
  }

  v13 = v0[41];
  v14 = objc_allocWithZone(type metadata accessor for _SFXPCError());
  v15 = v1;
  v16 = sub_1A99195C8(v1);

  v13(0, 0xF000000000000000, 0, 0, v16);
  v17 = v0[1];

  return v17();
}

void sub_1A9916B98(void *a1, int a2, void *a3, void *a4, uint64_t a5, uint64_t a6, int a7, void *aBlock)
{
  v14 = _Block_copy(aBlock);
  v15 = a3;
  v16 = a4;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v21 = a1;
  v17 = sub_1A9976070();
  v19 = v18;

  v20 = swift_allocObject();
  *(v20 + 16) = v14;
  SFXPCListener.ClientConnection.invoke(_:parametersData:parametersAsyncSequenceContainer:parametersBlocksContainer:sync:completion:)(v15, v17, v19, a5, a6, a7, sub_1A97C0D38, v20);

  sub_1A97B43C4(v17, v19);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

uint64_t sub_1A9916D50(uint64_t a1)
{
  sub_1A9903B30(a1 + qword_1EB3EAF98);

  sub_1A967C46C(*(a1 + qword_1EB3EAF90), *(a1 + qword_1EB3EAF90 + 8));
}

uint64_t sub_1A9916DC0()
{
  result = sub_1A9916DE8();
  qword_1ED7182C8 = result;
  unk_1ED7182D0 = v1;
  qword_1ED7182D8 = v2;
  unk_1ED7182E0 = v3;
  return result;
}

uint64_t sub_1A9916DE8()
{
  v0 = objc_opt_self();
  [v0 interfaceWithProtocol_];
  [v0 interfaceWithProtocol_];
  [v0 interfaceWithProtocol_];
  [v0 interfaceWithProtocol_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FC0, &qword_1A999A498);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1A9998170;
  v2 = sub_1A9812DE0(0, &unk_1ED717DE0, 0x1E696AEC0);
  *(v1 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FC8, &qword_1A99A89D0);
  *(v1 + 32) = v2;
  v3 = type metadata accessor for SFXPCInvocation();
  *(v1 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B5FD0, &qword_1A99A89D8);
  *(v1 + 64) = v3;
  v4 = objc_allocWithZone(MEMORY[0x1E695DFD8]);
  v5 = sub_1A9976AB0();

  [v4 initWithArray_];

  result = sub_1A9976E10();
  __break(1u);
  return result;
}

uint64_t _AnySFXPCSyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlockContainer:responseAsyncSequenceContainer:responseXPCBlockContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v74 = a8;
  v81 = a7;
  v90 = a6;
  v84 = a4;
  v87 = a3;
  v91 = a1;
  v92 = a2;
  v12 = *(a11 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v75 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v85 = &v71 - v13;
  v83 = a11;
  v88 = swift_getAssociatedTypeWitness();
  v82 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v89 = &v71 - v14;
  v94 = v12;
  v95 = a9;
  v97 = swift_getAssociatedTypeWitness();
  v86 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v96 = &v71 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v80 = &v71 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v79 = &v71 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v71 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v71 - v24;
  v26 = sub_1A9977460();
  v27 = *(v26 - 8);
  v28 = MEMORY[0x1EEE9AC00](v26);
  v73 = &v71 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = MEMORY[0x1EEE9AC00](v28);
  v78 = &v71 - v31;
  v32 = MEMORY[0x1EEE9AC00](v30);
  v34 = &v71 - v33;
  MEMORY[0x1EEE9AC00](v32);
  v36 = &v71 - v35;
  sub_1A9975E40();
  swift_allocObject();
  v37 = sub_1A9975E30();
  v77 = "rProtocol>24@_SFXPCError32";
  sub_1A9977450();
  v98 = *(v27 + 48);
  v99 = v27 + 48;
  result = v98(v25, 1, v26);
  if (result == 1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v39 = v26;
  v40 = v26;
  v41 = *(v27 + 32);
  v100 = v27 + 32;
  v41(v36, v25, v40);
  if (a5)
  {
    ObjectType = swift_getObjectType();
    v43 = a5;
  }

  else
  {
    v43 = 0;
    ObjectType = 0;
    v103 = 0;
    v104 = 0;
  }

  v102 = v43;
  v105 = ObjectType;
  swift_unknownObjectRetain();
  v106 = v37;
  v44 = sub_1A9975E20();
  sub_1A97DCC4C(&v102, v36);
  v44(v101, 0);
  sub_1A9977450();
  v45 = v39;
  result = v98(v23, 1, v39);
  if (result == 1)
  {
    goto LABEL_17;
  }

  v41(v34, v23, v39);
  v46 = v96;
  v47 = v90;
  v72 = v41;
  v71 = "amework/XPC/SFXPCBlock.swift";
  if (v90)
  {
    v48 = swift_getObjectType();
    v49 = v47;
  }

  else
  {
    v49 = 0;
    v48 = 0;
    v103 = 0;
    v104 = 0;
  }

  v102 = v49;
  v105 = v48;
  swift_unknownObjectRetain();
  v50 = sub_1A9975E20();
  sub_1A97DCC4C(&v102, v34);
  v50(v101, 0);
  v51 = v95;
  swift_getAssociatedConformanceWitness();
  v52 = v93;
  sub_1A9975E10();
  if (v52)
  {

    return v47;
  }

  v54 = v88;
  v53 = v89;
  tryCast<A>(_:as:description:file:line:)(v87, v88, 0, 0, 0xD00000000000004FLL, 0x80000001A99E8280, 440, v88, v89);
  (*(v83 + 24))(v46, v53, v84, v51);
  sub_1A9975E80();
  swift_allocObject();
  v55 = sub_1A9975E70();
  v56 = v79;
  sub_1A9977450();
  v57 = v98;
  result = v98(v56, 1, v45);
  if (result == 1)
  {
    goto LABEL_18;
  }

  v58 = v78;
  v59 = v56;
  v60 = v45;
  v61 = v45;
  v62 = v72;
  v72(v78, v59, v60);
  v105 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v102 = v81;
  v63 = v81;
  v93 = v55;
  v64 = sub_1A9975E60();
  sub_1A97DCC4C(&v102, v58);
  v64(v101, 0);
  v65 = v80;
  sub_1A9977450();
  result = v57(v65, 1, v61);
  if (result != 1)
  {
    v66 = v73;
    v62(v73, v65, v61);
    v105 = type metadata accessor for _SFXPCBlockContainer(0);
    v102 = v74;
    v67 = v74;
    v68 = sub_1A9975E60();
    sub_1A97DCC4C(&v102, v66);
    v68(v101, 0);
    v69 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    v70 = v85;
    v47 = sub_1A9975E50();

    (*(v75 + 8))(v70, v69);
    (*(v82 + 8))(v89, v54);
    (*(v86 + 8))(v96, v97);
    return v47;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t _AnySFXPCAsyncInvocableProtocol<>.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[27] = v17;
  v9[28] = v8;
  v9[25] = a8;
  v9[26] = v16;
  v9[23] = a6;
  v9[24] = a7;
  v9[21] = a4;
  v9[22] = a5;
  v9[19] = a2;
  v9[20] = a3;
  v9[18] = a1;
  v9[29] = *(v17 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[30] = AssociatedTypeWitness;
  v9[31] = *(AssociatedTypeWitness - 8);
  v9[32] = swift_task_alloc();
  v11 = swift_getAssociatedTypeWitness();
  v9[33] = v11;
  v9[34] = *(v11 - 8);
  v9[35] = swift_task_alloc();
  v12 = swift_getAssociatedTypeWitness();
  v9[36] = v12;
  v9[37] = *(v12 - 8);
  v9[38] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v9[39] = swift_task_alloc();
  v9[40] = swift_task_alloc();
  v9[41] = swift_task_alloc();
  v9[42] = swift_task_alloc();
  v13 = sub_1A9977460();
  v9[43] = v13;
  v9[44] = *(v13 - 8);
  v9[45] = swift_task_alloc();
  v9[46] = swift_task_alloc();
  v9[47] = swift_task_alloc();
  v9[48] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9917E74, 0, 0);
}

uint64_t sub_1A9917E74()
{
  v38 = v0;
  v2 = v0[43];
  v1 = v0[44];
  v3 = v0[42];
  sub_1A9975E40();
  swift_allocObject();
  v0[49] = sub_1A9975E30();
  sub_1A9977450();
  v4 = *(v1 + 48);
  v0[50] = v4;
  v0[51] = (v1 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  result = v4(v3, 1, v2);
  if (result == 1)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v6 = v0[48];
  v7 = v0[43];
  v8 = v0[44];
  v9 = v0[42];
  v10 = v0[22];
  v11 = *(v8 + 32);
  v0[52] = v11;
  v0[53] = (v8 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
  v11(v6, v9, v7);
  v12 = v0[22];
  v32 = v4;
  if (v10)
  {
    ObjectType = swift_getObjectType();
    v14 = v12;
  }

  else
  {
    v14 = 0;
    ObjectType = 0;
    v35 = 0;
    v36 = 0;
  }

  v15 = v0[48];
  v16 = v0[43];
  v17 = v0[41];
  v34 = v14;
  v37 = ObjectType;
  swift_unknownObjectRetain();
  v18 = sub_1A9975E20();
  sub_1A97DCC4C(&v34, v15);
  v18(v0 + 2, 0);
  sub_1A9977450();
  result = v32(v17, 1, v16);
  if (result == 1)
  {
    goto LABEL_13;
  }

  v19 = v0[23];
  v11(v0[47], v0[41], v0[43]);
  v20 = v0[23];
  if (v19)
  {
    v21 = swift_getObjectType();
    v22 = v20;
  }

  else
  {
    v22 = 0;
    v21 = 0;
    v35 = 0;
    v36 = 0;
  }

  v23 = v0[47];
  v34 = v22;
  v37 = v21;
  swift_unknownObjectRetain();
  v24 = sub_1A9975E20();
  sub_1A97DCC4C(&v34, v23);
  v24(v0 + 6, 0);
  swift_getAssociatedConformanceWitness();
  sub_1A9975E10();
  tryCast<A>(_:as:description:file:line:)(v0[20], v0[33], 0, 0, 0xD00000000000004FLL, 0x80000001A99E8280, 475, v0[33], v0[35]);
  v33 = (*(v0[27] + 24) + **(v0[27] + 24));
  v25 = swift_task_alloc();
  v0[54] = v25;
  *v25 = v0;
  v25[1] = sub_1A9918330;
  v26 = v0[38];
  v27 = v0[35];
  v28 = v0[32];
  v29 = v0[27];
  v30 = v0[26];
  v31 = v0[21];

  return v33(v28, v26, v27, v31, v30, v29);
}

uint64_t sub_1A9918330()
{
  *(*v1 + 440) = v0;

  if (v0)
  {
    v2 = sub_1A99188B8;
  }

  else
  {
    v2 = sub_1A9918444;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A9918444()
{
  v43 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 344);
  v3 = *(v0 + 320);
  sub_1A9975E80();
  swift_allocObject();
  sub_1A9975E70();
  sub_1A9977450();
  result = v1(v3, 1, v2);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(v0 + 400);
  v6 = *(v0 + 368);
  v7 = *(v0 + 344);
  v8 = *(v0 + 312);
  v9 = *(v0 + 192);
  (*(v0 + 416))(v6, *(v0 + 320), v7);
  v42 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v41[0] = v9;
  v10 = v9;
  v11 = sub_1A9975E60();
  sub_1A97DCC4C(v41, v6);
  v11(v0 + 80, 0);
  sub_1A9977450();
  result = v5(v8, 1, v7);
  if (result == 1)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  v38 = *(v0 + 440);
  v12 = *(v0 + 360);
  v13 = *(v0 + 200);
  (*(v0 + 416))(v12, *(v0 + 312), *(v0 + 344));
  v42 = type metadata accessor for _SFXPCBlockContainer(0);
  v41[0] = v13;
  v14 = v13;
  v15 = sub_1A9975E60();
  sub_1A97DCC4C(v41, v12);
  v15(v0 + 112, 0);
  swift_getAssociatedConformanceWitness();
  v16 = sub_1A9975E50();
  if (v38)
  {
    v18 = *(v0 + 296);
    v37 = *(v0 + 304);
    v20 = *(v0 + 280);
    v19 = *(v0 + 288);
    v22 = *(v0 + 264);
    v21 = *(v0 + 272);
    v23 = *(v0 + 248);
    v24 = *(v0 + 256);
    v25 = *(v0 + 240);

    (*(v23 + 8))(v24, v25);
    (*(v21 + 8))(v20, v22);
    (*(v18 + 8))(v37, v19);

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    v27 = *(v0 + 296);
    v36 = *(v0 + 304);
    v28 = *(v0 + 280);
    v29 = *(v0 + 288);
    v31 = *(v0 + 264);
    v30 = *(v0 + 272);
    v32 = *(v0 + 248);
    v33 = *(v0 + 256);
    v34 = *(v0 + 240);
    v39 = v16;
    v40 = v17;

    (*(v32 + 8))(v33, v34);
    (*(v30 + 8))(v28, v31);
    (*(v27 + 8))(v36, v29);

    v35 = *(v0 + 8);

    return v35(v39, v40);
  }
}

uint64_t sub_1A99188B8()
{
  v2 = v0[37];
  v1 = v0[38];
  v4 = v0[35];
  v3 = v0[36];
  v5 = v0[33];
  v6 = v0[34];

  (*(v6 + 8))(v4, v5);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t _SFXPCError.domain.getter()
{
  v1 = *(v0 + OBJC_IVAR____SFXPCError_domain);

  return v1;
}

uint64_t _SFXPCError.internalLocalizedDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____SFXPCError_internalLocalizedDescription);

  return v1;
}

uint64_t _SFXPCError.internalDebugDescription.getter()
{
  v1 = *(v0 + OBJC_IVAR____SFXPCError_internalDebugDescription);

  return v1;
}

uint64_t _SFXPCError.file.getter()
{
  v1 = *(v0 + OBJC_IVAR____SFXPCError_file);

  return v1;
}

uint64_t _SFXPCError.process.getter()
{
  v1 = *(v0 + OBJC_IVAR____SFXPCError_process);

  return v1;
}

id _SFXPCError.init(coder:)(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FA8, &unk_1A99A8868);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1A9996D60;
  v6 = sub_1A9812DE0(0, &unk_1ED717DE0, 0x1E696AEC0);
  *(v5 + 32) = v6;
  sub_1A9977010();

  if (!v43)
  {

LABEL_13:
    sub_1A97B06FC(v42, &qword_1EB3B0BA0, &unk_1A99923D0);
    goto LABEL_14;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

LABEL_14:
    swift_deallocPartialClassInstance();
    return 0;
  }

  v8 = v40;
  v7 = v41;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_1A9996D60;
  v10 = sub_1A9812DE0(0, &qword_1EB3AB620, 0x1E696AD98);
  *(v9 + 32) = v10;
  sub_1A9977010();

  if (!v43)
  {
    goto LABEL_12;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_16:

    goto LABEL_14;
  }

  v38 = v40;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1A9996D60;
  *(v11 + 32) = v6;
  sub_1A9977010();

  if (!v43)
  {
LABEL_12:

    goto LABEL_13;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_16;
  }

  v36 = v41;
  v37 = v40;
  v12 = &v2[OBJC_IVAR____SFXPCError_domain];
  *v12 = v8;
  *(v12 + 1) = v7;
  *&v2[OBJC_IVAR____SFXPCError_errorCode] = v38;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1A9996D60;
  *(v13 + 32) = v6;
  sub_1A9977010();

  if (v43)
  {
    v14 = swift_dynamicCast();
    v15 = v40;
    v16 = v41;
    if (!v14)
    {
      v15 = 0;
      v16 = 0;
    }
  }

  else
  {
    sub_1A97B06FC(v42, &qword_1EB3B0BA0, &unk_1A99923D0);
    v15 = 0;
    v16 = 0;
  }

  v18 = &v2[OBJC_IVAR____SFXPCError_internalLocalizedDescription];
  *v18 = v15;
  *(v18 + 1) = v16;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1A9996D60;
  *(v19 + 32) = v6;
  sub_1A9977010();

  if (v43)
  {
    v20 = swift_dynamicCast();
    v21 = v40;
    v22 = v41;
    if (!v20)
    {
      v21 = 0;
      v22 = 0;
    }
  }

  else
  {
    sub_1A97B06FC(v42, &qword_1EB3B0BA0, &unk_1A99923D0);
    v21 = 0;
    v22 = 0;
  }

  v23 = &v2[OBJC_IVAR____SFXPCError_internalDebugDescription];
  *v23 = v21;
  *(v23 + 1) = v22;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1A9996D60;
  *(v24 + 32) = v6;
  sub_1A9977010();

  if (v43)
  {
    v25 = swift_dynamicCast();
    v26 = v40;
    v27 = v41;
    if (!v25)
    {
      v26 = 0;
      v27 = 0;
    }
  }

  else
  {
    sub_1A97B06FC(v42, &qword_1EB3B0BA0, &unk_1A99923D0);
    v26 = 0;
    v27 = 0;
  }

  v28 = &v2[OBJC_IVAR____SFXPCError_file];
  *v28 = v26;
  *(v28 + 1) = v27;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_1A9996D60;
  *(v29 + 32) = v10;
  sub_1A9977010();

  if (v43)
  {
    v30 = swift_dynamicCast();
    v31 = v40;
    if (!v30)
    {
      v31 = 0;
    }

    v32 = v30 ^ 1;
  }

  else
  {
    sub_1A97B06FC(v42, &qword_1EB3B0BA0, &unk_1A99923D0);
    v31 = 0;
    v32 = 1;
  }

  v33 = &v2[OBJC_IVAR____SFXPCError_line];
  *v33 = v31;
  v33[8] = v32;
  v34 = &v2[OBJC_IVAR____SFXPCError_process];
  *v34 = v37;
  *(v34 + 1) = v36;
  v39.receiver = v2;
  v39.super_class = ObjectType;
  v35 = objc_msgSendSuper2(&v39, sel_init);

  return v35;
}

Swift::Void __swiftcall _SFXPCError.encode(with:)(NSCoder with)
{
  v3 = sub_1A99767E0();
  v4 = sub_1A99767E0();
  [(objc_class *)with.super.isa encodeObject:v3 forKey:v4];

  v5 = *(v1 + OBJC_IVAR____SFXPCError_errorCode);
  v6 = sub_1A99767E0();
  [(objc_class *)with.super.isa encodeInteger:v5 forKey:v6];

  if (*(v1 + OBJC_IVAR____SFXPCError_internalLocalizedDescription + 8))
  {
    v7 = sub_1A99767E0();
    v8 = sub_1A99767E0();
    [(objc_class *)with.super.isa encodeObject:v7 forKey:v8];
  }

  if (*(v1 + OBJC_IVAR____SFXPCError_internalDebugDescription + 8))
  {
    v9 = sub_1A99767E0();
    v10 = sub_1A99767E0();
    [(objc_class *)with.super.isa encodeObject:v9 forKey:v10];
  }

  if (*(v1 + OBJC_IVAR____SFXPCError_file + 8))
  {
    v11 = sub_1A99767E0();
    v12 = sub_1A99767E0();
    [(objc_class *)with.super.isa encodeObject:v11 forKey:v12];
  }

  if ((*(v1 + OBJC_IVAR____SFXPCError_line + 8) & 1) == 0)
  {
    v13 = *(v1 + OBJC_IVAR____SFXPCError_line);
    v14 = sub_1A99767E0();
    [(objc_class *)with.super.isa encodeInteger:v13 forKey:v14];
  }

  v15 = sub_1A99767E0();
  v16 = sub_1A99767E0();
  [(objc_class *)with.super.isa encodeObject:v15 forKey:v16];
}

id _SFXPCError.init(_:)(void *a1)
{
  v2 = sub_1A99195C8(a1);

  return v2;
}

id _SFXPCError.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id sub_1A99195C8(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  *&v67 = a1;
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  if (swift_dynamicCast())
  {
    v6 = *(&v75 + 1);
    v7 = *v76;
    v8 = *&v76[24];
    v9 = v77;
    v10 = *&v76[8];
    v11 = &v2[OBJC_IVAR____SFXPCError_domain];
    *v11 = v75;
    *(v11 + 1) = v6;
    *&v2[OBJC_IVAR____SFXPCError_errorCode] = v7;
    *&v2[OBJC_IVAR____SFXPCError_internalLocalizedDescription] = v10;
    goto LABEL_16;
  }

  v12 = sub_1A9975F10();
  v13 = [v12 domain];
  v14 = sub_1A9976820();
  v16 = v15;

  v17 = &v2[OBJC_IVAR____SFXPCError_domain];
  *v17 = v14;
  v17[1] = v16;
  v18 = [v12 code];
  *&v2[OBJC_IVAR____SFXPCError_errorCode] = v18;
  swift_getErrorValue();
  v19 = sub_1A99778E0();
  v20 = &v2[OBJC_IVAR____SFXPCError_internalLocalizedDescription];
  *v20 = v19;
  v20[1] = v21;
  v22 = [v12 userInfo];
  v23 = sub_1A9976700();

  v24 = sub_1A9976820();
  if (*(v23 + 16))
  {
    v26 = sub_1A97BCEB8(v24, v25);
    v28 = v27;

    if (v28)
    {
      sub_1A97AF7EC(*(v23 + 56) + 32 * v26, &v75);

      if (swift_dynamicCast())
      {

        v9 = *(&v67 + 1);
        v8 = v67;
        goto LABEL_16;
      }
    }

    else
    {
    }
  }

  else
  {
  }

  v29 = [v12 userInfo];
  v30 = sub_1A9976700();

  if (!*(v30 + 16) || (v31 = sub_1A97BCEB8(0xD000000000000015, 0x80000001A99E5AE0), (v32 & 1) == 0))
  {

    goto LABEL_15;
  }

  sub_1A97AF7EC(*(v30 + 56) + 32 * v31, &v75);

  sub_1A9812DE0(0, &unk_1EB3B5FE0, 0x1E695DF30);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    *&v75 = a1;
    v39 = a1;
    v8 = sub_1A9976860();
    v9 = v40;

    goto LABEL_16;
  }

  v33 = v67;
  *&v75 = 0;
  *(&v75 + 1) = 0xE000000000000000;
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000010, 0x80000001A99E5B00);
  *&v67 = [v67 name];
  type metadata accessor for NSExceptionName(0);
  sub_1A9977400();

  MEMORY[0x1AC5895B0](0x6E6F73616572202CLL, 0xEA0000000000203ALL);
  v34 = [v33 reason];
  if (v34)
  {
    v35 = v34;
    v36 = sub_1A9976820();
    v38 = v37;
  }

  else
  {
    v38 = 0xE500000000000000;
    v36 = 0x296C696E28;
  }

  MEMORY[0x1AC5895B0](v36, v38);

  v9 = *(&v75 + 1);
  v8 = v75;
LABEL_16:
  v41 = &v2[OBJC_IVAR____SFXPCError_internalDebugDescription];
  *v41 = v8;
  v41[1] = v9;
  v42 = [objc_opt_self() processInfo];
  v43 = [v42 processName];

  v44 = sub_1A9976820();
  v46 = v45;

  v81 = a1;
  v47 = a1;
  if (swift_dynamicCast())
  {
    v69 = *&v76[16];
    v70 = v77;
    v71 = v78;
    v72 = v79;
    v73 = v80;
    v67 = v75;
    v68 = *v76;
    v48 = *v76;
    v49 = *&v76[16];
    v50 = BYTE7(v79) >> 5;
    if (v50 > 3)
    {
      v59 = *(&v70 + 1);
      v58 = v71;
      if (BYTE7(v79) >> 5 > 5u)
      {
        v51 = *&v76[8];
        if (v50 == 6)
        {
          v60 = v72;
          v61 = *(&v71 + 1);
          v63 = *(&v72 + 1);
          v62 = v73;

          sub_1A991A970(&v67);
          v64 = &v2[OBJC_IVAR____SFXPCError_file];
          *v64 = v59;
          *(v64 + 1) = v58;
          v65 = &v2[OBJC_IVAR____SFXPCError_line];
          *v65 = v61;
          v65[8] = v60 & 1;
          v66 = &v2[OBJC_IVAR____SFXPCError_process];
          *v66 = v63;
          *(v66 + 1) = v62;
          goto LABEL_22;
        }
      }

      else if (v50 == 4)
      {
        v51 = *&v76[16];
        v49 = *(&v69 + 1);
        v48 = *&v76[8];
      }

      else
      {
        v51 = *(&v70 + 1);
        v48 = v70;
        v49 = v71;
      }
    }

    else
    {
      v51 = *&v76[8];
    }

    sub_1A991A970(&v67);
    v52 = &v2[OBJC_IVAR____SFXPCError_file];
    *v52 = v48;
    *(v52 + 1) = v51;
    v53 = &v2[OBJC_IVAR____SFXPCError_line];
    *v53 = v49;
    v53[8] = 0;
  }

  else
  {
    v54 = &v2[OBJC_IVAR____SFXPCError_file];
    *v54 = 0;
    *(v54 + 1) = 0;
    v55 = &v2[OBJC_IVAR____SFXPCError_line];
    *v55 = 0;
    v55[8] = 1;
  }

  v56 = &v2[OBJC_IVAR____SFXPCError_process];
  *v56 = v44;
  v56[1] = v46;
LABEL_22:
  v74.receiver = v2;
  v74.super_class = ObjectType;
  return objc_msgSendSuper2(&v74, sel_init, v67, v68, v69);
}

uint64_t sub_1A9919C30(void *a1)
{
  v2 = v1;
  v45[0] = *MEMORY[0x1E69E7D40] & *v2;
  v4 = type metadata accessor for SFClientIdentity(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = v45 - v8;
  v10 = a1;
  SFClientAccessLevel.init(xpcConnection:)(v10, &aBlock);
  v11 = aBlock;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5F50, &qword_1A99A6C40);
  v13 = v12[12];
  v14 = &v9[v12[16]];
  v15 = &v9[v12[20]];
  v16 = v12[24];
  sub_1A99762B0();
  *&v9[v13] = [v10 processIdentifier];
  *v14 = sub_1A986F808();
  v14[1] = v17;
  *v15 = 0;
  *(v15 + 1) = 0;
  *&v9[v16] = v11;
  swift_storeEnumTagMultiPayload();
  v18 = *(v2 + qword_1EB3B5F48);
  type metadata accessor for SFXPCConnection();
  v19 = swift_allocObject();
  *(v19 + 24) = 0;
  *(v19 + 16) = v10;
  v45[1] = v19 + 16;
  v20 = v10;
  [v20 sf:v18 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v20 setRemoteObjectInterface_];
  v23 = type metadata accessor for SFXPCListener.ClientConnection(0, *(v45[0] + 80), v21, v22);
  sub_1A9903A68(v9, v7);
  v24 = qword_1EB3B5F20;
  swift_beginAccess();
  v25 = *(v2 + v24);
  v26 = (v2 + qword_1EB3B5F38);
  swift_beginAccess();
  v28 = *v26;
  v27 = v26[1];

  sub_1A967C510(v28, v27);
  v29 = objc_allocWithZone(v23);
  v30 = SFXPCListener.ClientConnection.init(connection:clientIdentity:containerRegistry:contextProvider:)(v19, v7, v25, v28, v27);
  [v20 setExportedInterface_];
  [v20 setExportedObject_];
  v31 = swift_allocObject();
  *(v31 + 16) = v2;
  *(v31 + 24) = v30;
  v50 = sub_1A991A9DC;
  v51 = v31;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1A981D3F8;
  v49 = &block_descriptor_10;
  v32 = _Block_copy(&aBlock);
  v33 = v2;
  v34 = v30;

  [v20 setInvalidationHandler_];
  _Block_release(v32);
  v35 = swift_allocObject();
  *(v35 + 16) = v33;
  *(v35 + 24) = v34;
  v50 = sub_1A991A954;
  v51 = v35;
  aBlock = MEMORY[0x1E69E9820];
  v47 = 1107296256;
  v48 = sub_1A981D3F8;
  v49 = &block_descriptor_52;
  v36 = _Block_copy(&aBlock);
  v37 = v33;
  v38 = v34;

  [v20 setInterruptionHandler_];
  _Block_release(v36);
  v45[2] = v38;
  swift_beginAccess();
  sub_1A9976B60();
  v39 = v38;
  sub_1A9976B40();
  swift_endAccess();
  swift_beginAccess();
  [*(v19 + 16) activate];
  v40 = &v37[qword_1EB3B5F28];
  swift_beginAccess();
  v41 = *v40;
  if (*v40)
  {
    v42 = *(v40 + 1);
    swift_endAccess();
    v43 = qword_1EB3EAF98;

    v41(&v39[v43]);
    sub_1A967C46C(v41, v42);

    sub_1A9903B30(v9);
  }

  else
  {
    sub_1A9903B30(v9);
    swift_endAccess();
  }

  return 1;
}

uint64_t sub_1A991A1C0(uint64_t a1)
{
  v3 = v2;
  v4 = *(*(v1[4] - 8) + 64);
  v14 = (*(*(v1[4] - 8) + 80) + 64) & ~*(*(v1[4] - 8) + 80);
  v5 = *(type metadata accessor for SFClientIdentity(0) - 8);
  v6 = (v14 + v4 + *(v5 + 80)) & ~*(v5 + 80);
  v12 = v1[3];
  v13 = v1[2];
  v10 = v1[6];
  v11 = v1[5];
  v9 = v1[7];
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A97B2638;

  return sub_1A9916080(a1, v13, v12, v11, v10, v9, v1 + v14, v1 + v6);
}

uint64_t dispatch thunk of _SFXPCAsyncInvocableProtocol.invoke(with:context:client:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_1A97B2638;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1A991A630(uint64_t a1)
{
  result = type metadata accessor for SFClientIdentity(319);
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

uint64_t dispatch thunk of _AnySFXPCAsyncInvocableProtocol.invoke(with:context:client:parametersAsyncSequenceContainer:parametersBlocksContainer:responseAsyncSequenceContainer:responseXPCBlocksContainer:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v20 = (*(a10 + 8) + **(a10 + 8));
  v18 = swift_task_alloc();
  *(v10 + 16) = v18;
  *v18 = v10;
  v18[1] = sub_1A97E5E54;

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t SFAirDropClient.Identifier.description.getter()
{
  v1 = type metadata accessor for SFAirDropClient.Identifier(0);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A991DA0C(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0x755379636167656CLL;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1A991DA70(v3);
      result = 0x636972656E6567;
      break;
    case 2:
      return result;
    case 3:
      result = 6909027;
      break;
    case 4:
      result = 0x6E6F6D656164;
      break;
    case 5:
      result = 0x6568536572616873;
      break;
    case 6:
      result = 1886351202;
      break;
    case 7:
      result = 0x7265646E6966;
      break;
    case 8:
      result = 0x74656C6C6177;
      break;
    case 9:
      result = 0x4E706F7244726961;
      break;
    case 10:
      result = 0x55706F7264726961;
      break;
    case 11:
      result = 0xD000000000000010;
      break;
    case 12:
      result = 0x79636167656CLL;
      break;
    case 13:
      result = 1769301092;
      break;
    default:
      v6 = sub_1A99762C0();
      (*(*(v6 - 8) + 8))(v3, v6);
      result = 0x69577265646E6966;
      break;
  }

  return result;
}

unint64_t sub_1A991AC38(char a1)
{
  result = 0x755379636167656CLL;
  switch(a1)
  {
    case 1:
      result = 6909027;
      break;
    case 2:
      result = 0x6E6F6D656164;
      break;
    case 3:
      result = 0x6568536572616873;
      break;
    case 4:
      result = 1886351202;
      break;
    case 5:
      result = 0x7265646E6966;
      break;
    case 6:
      result = 0x74656C6C6177;
      break;
    case 7:
      result = 0x4E706F7244726961;
      break;
    case 8:
      result = 0x69577265646E6966;
      break;
    case 9:
      result = 0x55706F7264726961;
      break;
    case 10:
      result = 0xD000000000000010;
      break;
    case 11:
      result = 0x636972656E6567;
      break;
    case 12:
      result = 0x79636167656CLL;
      break;
    case 13:
      result = 1230324804;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1A991ADB0(uint64_t a1)
{
  v2 = sub_1A991DC70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991ADEC(uint64_t a1)
{
  v2 = sub_1A991DC70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991AE28(uint64_t a1)
{
  v2 = sub_1A991DC1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991AE64(uint64_t a1)
{
  v2 = sub_1A991DC1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991AEA0(uint64_t a1)
{
  v2 = sub_1A991DD18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991AEDC(uint64_t a1)
{
  v2 = sub_1A991DD18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991AF18(uint64_t a1)
{
  v2 = sub_1A991DE14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991AF54(uint64_t a1)
{
  v2 = sub_1A991DE14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991AF98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A991EA4C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A991AFC0(uint64_t a1)
{
  v2 = sub_1A991DACC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991AFFC(uint64_t a1)
{
  v2 = sub_1A991DACC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B038(uint64_t a1)
{
  v2 = sub_1A991DB20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B074(uint64_t a1)
{
  v2 = sub_1A991DB20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B0B0(uint64_t a1)
{
  v2 = sub_1A991DDC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B0EC(uint64_t a1)
{
  v2 = sub_1A991DDC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B128()
{
  if (*v0)
  {
    return 0x797469726F697270;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1A991B15C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A991B238(uint64_t a1)
{
  v2 = sub_1A991DBC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B274(uint64_t a1)
{
  v2 = sub_1A991DBC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B2B0(uint64_t a1)
{
  v2 = sub_1A991DB74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B2EC(uint64_t a1)
{
  v2 = sub_1A991DB74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B328(uint64_t a1)
{
  v2 = sub_1A991DE68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B364(uint64_t a1)
{
  v2 = sub_1A991DE68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B3A0(uint64_t a1)
{
  v2 = sub_1A991DD6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B3DC(uint64_t a1)
{
  v2 = sub_1A991DD6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991B418(uint64_t a1)
{
  v2 = sub_1A991DCC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991B454(uint64_t a1)
{
  v2 = sub_1A991DCC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropClient.Identifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FF0, &qword_1A99A89E0);
  v74 = *(v2 - 8);
  v75 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v73 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FF8, &qword_1A99A89E8);
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v70 = &v50 - v5;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6000, &qword_1A99A89F0);
  v51 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v80 = &v50 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6008, &qword_1A99A89F8);
  v68 = *(v7 - 8);
  v69 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v66 = &v50 - v8;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6010, &qword_1A99A8A00);
  v64 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v63 = &v50 - v9;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6018, &qword_1A99A8A08);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v50 - v10;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6020, &qword_1A99A8A10);
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v57 = &v50 - v11;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6028, &qword_1A99A8A18);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v79 = &v50 - v12;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6030, &qword_1A99A8A20);
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v78 = &v50 - v13;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6038, &qword_1A99A8A28);
  v77 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v15 = &v50 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6040, &qword_1A99A8A30);
  v76 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v50 - v17;
  v19 = type metadata accessor for SFAirDropClient.Identifier(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v50 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6048, &qword_1A99A8A38);
  v23 = *(v22 - 8);
  v83 = v22;
  v84 = v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v50 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A991DACC();
  v82 = v25;
  sub_1A9977AA0();
  sub_1A991DA0C(v81, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 5)
  {
    if (EnumCaseMultiPayload <= 10)
    {
      switch(EnumCaseMultiPayload)
      {
        case 6:
          v90 = 4;
          sub_1A991DD18();
          v48 = v57;
          v29 = v82;
          v28 = v83;
          sub_1A9977640();
          v30 = *(v58 + 8);
          v31 = v48;
          v32 = &v99;
          goto LABEL_26;
        case 8:
          v91 = 6;
          sub_1A991DCC4();
          v27 = v60;
          v29 = v82;
          v28 = v83;
          sub_1A9977640();
          v30 = *(v61 + 8);
          v31 = v27;
          v32 = &v100;
LABEL_26:
          v39 = *(v32 - 32);
LABEL_30:
          v30(v31, v39);
          return (*(v84 + 8))(v29, v28);
        case 10:
          v92 = 9;
          sub_1A991DC70();
          v49 = v63;
          v29 = v82;
          v28 = v83;
          sub_1A9977640();
          v30 = *(v64 + 8);
          v31 = v49;
          v32 = &v101;
          goto LABEL_26;
      }

      goto LABEL_32;
    }

    switch(EnumCaseMultiPayload)
    {
      case 11:
        v93 = 10;
        sub_1A991DC1C();
        v38 = v66;
        v29 = v82;
        v28 = v83;
        sub_1A9977640();
        v40 = v68;
        v39 = v69;
        goto LABEL_29;
      case 12:
        v97 = 12;
        sub_1A991DB74();
        v38 = v70;
        v29 = v82;
        v28 = v83;
        sub_1A9977640();
        v40 = v71;
        v39 = v72;
LABEL_29:
        v30 = *(v40 + 8);
        v31 = v38;
        goto LABEL_30;
      case 13:
        v98 = 13;
        sub_1A991DB20();
        v38 = v73;
        v29 = v82;
        v28 = v83;
        sub_1A9977640();
        v40 = v74;
        v39 = v75;
        goto LABEL_29;
    }

LABEL_32:
    result = sub_1A99777D0();
    __break(1u);
    return result;
  }

  v34 = v76;
  v33 = v77;
  v81 = v16;
  v36 = v78;
  v35 = v79;
  v37 = v80;
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v87 = 1;
      sub_1A991DE14();
      v46 = v82;
      v47 = v83;
      sub_1A9977640();
      (*(v33 + 8))(v15, v52);
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        v88 = 2;
        sub_1A991DDC0();
        v29 = v82;
        v28 = v83;
        sub_1A9977640();
        (*(v53 + 8))(v36, v54);
        return (*(v84 + 8))(v29, v28);
      }

      v89 = 3;
      sub_1A991DD6C();
      v46 = v82;
      v47 = v83;
      sub_1A9977640();
      (*(v55 + 8))(v35, v56);
    }

    return (*(v84 + 8))(v46, v47);
  }

  if (EnumCaseMultiPayload != 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      goto LABEL_32;
    }

    v86 = 0;
    sub_1A991DE68();
    v29 = v82;
    v28 = v83;
    sub_1A9977640();
    (*(v34 + 8))(v18, v81);
    return (*(v84 + 8))(v29, v28);
  }

  v96 = 11;
  sub_1A991DBC8();
  v42 = v82;
  v41 = v83;
  sub_1A9977640();
  v95 = 0;
  v43 = v67;
  v44 = v85;
  sub_1A9977690();

  if (!v44)
  {
    v94 = 1;
    sub_1A99776C0();
  }

  (*(v51 + 8))(v37, v43);
  return (*(v84 + 8))(v42, v41);
}

uint64_t SFAirDropClient.Identifier.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v105 = a2;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60B0, &qword_1A99A8A40);
  v95 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v104 = &v74 - v3;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60B8, &qword_1A99A8A48);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v103 = &v74 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60C0, &qword_1A99A8A50);
  v96 = *(v5 - 8);
  v97 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v108 = &v74 - v6;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60C8, &qword_1A99A8A58);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v102 = &v74 - v7;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60D0, &qword_1A99A8A60);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v101 = &v74 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60D8, &qword_1A99A8A68);
  v88 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v100 = &v74 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60E0, &qword_1A99A8A70);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v107 = &v74 - v10;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60E8, &qword_1A99A8A78);
  v83 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v99 = &v74 - v11;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60F0, &qword_1A99A8A80);
  v81 = *(v82 - 8);
  MEMORY[0x1EEE9AC00](v82);
  v98 = &v74 - v12;
  v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B60F8, &qword_1A99A8A88);
  v79 = *(v80 - 8);
  MEMORY[0x1EEE9AC00](v80);
  v106 = &v74 - v13;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6100, &qword_1A99A8A90);
  v77 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v15 = &v74 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6108, &unk_1A99A8A98);
  v110 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - v17;
  v19 = type metadata accessor for SFAirDropClient.Identifier(0);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v22 = (&v74 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v74 - v23;
  v25 = a1[3];
  v111 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1A991DACC();
  v26 = v112;
  sub_1A9977A70();
  v112 = v26;
  if (v26)
  {
LABEL_8:
    v42 = v111;
    return __swift_destroy_boxed_opaque_existential_0Tm(v42);
  }

  v75 = v15;
  v74 = v22;
  v27 = v106;
  v28 = v107;
  v30 = v108;
  v29 = v109;
  v76 = v19;
  v31 = sub_1A9977620();
  v32 = (2 * *(v31 + 16)) | 1;
  v113 = v31;
  v114 = v31 + 32;
  v115 = 0;
  v116 = v32;
  v33 = sub_1A97B2980();
  if (v115 != v116 >> 1)
  {
LABEL_5:
    v38 = sub_1A9977300();
    v39 = swift_allocError();
    v41 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v41 = v76;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v38 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v38);
    v112 = v39;
LABEL_6:
    swift_willThrow();
LABEL_7:
    (*(v110 + 8))(v18, v16);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  switch(v33)
  {
    case 0:
      v117 = 0;
      sub_1A991DE68();
      v57 = v75;
      v58 = v112;
      sub_1A9977530();
      v112 = v58;
      if (v58)
      {
        goto LABEL_7;
      }

      (*(v77 + 8))(v57, v78);
      (*(v110 + 8))(v18, v16);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 1:
      v117 = 1;
      sub_1A991DE14();
      v59 = v112;
      sub_1A9977530();
      v112 = v59;
      if (v59)
      {
        goto LABEL_7;
      }

      (*(v79 + 8))(v27, v80);
      (*(v110 + 8))(v18, v16);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 2:
      v117 = 2;
      sub_1A991DDC0();
      v53 = v98;
      v54 = v112;
      sub_1A9977530();
      v112 = v54;
      if (v54)
      {
        goto LABEL_7;
      }

      (*(v81 + 8))(v53, v82);
      (*(v110 + 8))(v18, v16);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 3:
      v117 = 3;
      sub_1A991DD6C();
      v55 = v99;
      v56 = v112;
      sub_1A9977530();
      v112 = v56;
      if (v56)
      {
        goto LABEL_7;
      }

      (*(v83 + 8))(v55, v84);
      (*(v110 + 8))(v18, v16);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 4:
      v117 = 4;
      sub_1A991DD18();
      v50 = v112;
      sub_1A9977530();
      v112 = v50;
      if (v50)
      {
        goto LABEL_7;
      }

      (*(v85 + 8))(v28, v86);
      (*(v110 + 8))(v18, v16);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 5:
    case 7:
    case 8:
      v34 = sub_1A9977300();
      v35 = swift_allocError();
      v37 = v36;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v34 - 8) + 104))(v37, *MEMORY[0x1E69E6B00], v34);
      v112 = v35;
      goto LABEL_6;
    case 6:
      v117 = 6;
      sub_1A991DCC4();
      v65 = v100;
      v66 = v112;
      sub_1A9977530();
      v112 = v66;
      if (v66)
      {
        goto LABEL_7;
      }

      (*(v88 + 8))(v65, v87);
      (*(v110 + 8))(v18, v16);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 9:
      v117 = 9;
      sub_1A991DC70();
      v51 = v101;
      v52 = v112;
      sub_1A9977530();
      v112 = v52;
      if (v52)
      {
        goto LABEL_7;
      }

      (*(v89 + 8))(v51, v90);
      (*(v110 + 8))(v18, v16);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 10:
      v117 = 10;
      sub_1A991DC1C();
      v63 = v102;
      v64 = v112;
      sub_1A9977530();
      v112 = v64;
      if (v64)
      {
        goto LABEL_7;
      }

      (*(v91 + 8))(v63, v92);
      (*(v110 + 8))(v18, v16);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 11:
      v117 = 11;
      sub_1A991DBC8();
      v44 = v112;
      sub_1A9977530();
      v112 = v44;
      if (v44)
      {
        goto LABEL_7;
      }

      v117 = 0;
      v45 = v97;
      v46 = sub_1A99775A0();
      v47 = v110;
      v112 = 0;
      v109 = v46;
      v68 = v30;
      v70 = v69;
      v117 = 1;
      v71 = sub_1A99775D0();
      v112 = 0;
      v72 = v71;
      (*(v96 + 8))(v68, v45);
      (*(v47 + 8))(v18, v16);
      swift_unknownObjectRelease();
      v73 = v74;
      *v74 = v109;
      *(v73 + 8) = v70;
      *(v73 + 16) = v72;
      swift_storeEnumTagMultiPayload();
      sub_1A991DEBC(v73, v24);
      goto LABEL_33;
    case 12:
      v117 = 12;
      sub_1A991DB74();
      v48 = v103;
      v49 = v112;
      sub_1A9977530();
      v112 = v49;
      if (v49)
      {
        goto LABEL_7;
      }

      (*(v93 + 8))(v48, v94);
      (*(v110 + 8))(v18, v16);
      swift_unknownObjectRelease();
      goto LABEL_32;
    case 13:
      v60 = v29;
      v117 = 13;
      sub_1A991DB20();
      v61 = v104;
      v62 = v112;
      sub_1A9977530();
      v112 = v62;
      if (v62)
      {
        goto LABEL_7;
      }

      (*(v95 + 8))(v61, v60);
      (*(v110 + 8))(v18, v16);
      swift_unknownObjectRelease();
LABEL_32:
      swift_storeEnumTagMultiPayload();
LABEL_33:
      v67 = v111;
      sub_1A991DEBC(v24, v105);
      v42 = v67;
      break;
    default:
      goto LABEL_5;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v42);
}

BOOL _s7Sharing15SFAirDropClientC10IdentifierO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropClient.Identifier(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = (&v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B61E8, &unk_1A99A9560);
  v11 = MEMORY[0x1EEE9AC00](v10 - 8);
  v13 = &v23 - v12;
  v14 = (&v23 + *(v11 + 56) - v12);
  sub_1A991DA0C(a1, &v23 - v12);
  sub_1A991DA0C(a2, v14);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      goto LABEL_18;
    case 2u:
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 3u:
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 4u:
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 5u:
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 6u:
      if (swift_getEnumCaseMultiPayload() != 6)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 7u:
      if (swift_getEnumCaseMultiPayload() == 7)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    case 8u:
      if (swift_getEnumCaseMultiPayload() == 8)
      {
        goto LABEL_34;
      }

      goto LABEL_36;
    case 9u:
      if (swift_getEnumCaseMultiPayload() == 9)
      {
        goto LABEL_17;
      }

      goto LABEL_36;
    case 0xAu:
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 0xBu:
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 0xCu:
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_36;
      }

      goto LABEL_34;
    case 0xDu:
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        goto LABEL_36;
      }

LABEL_34:
      sub_1A991DA70(v13);
      return 1;
    default:
      sub_1A991DA0C(v13, v9);
      if (swift_getEnumCaseMultiPayload())
      {
        v15 = sub_1A99762C0();
        (*(*(v15 - 8) + 8))(v9, v15);
LABEL_36:
        sub_1A991EEC4(v13);
        return 0;
      }

LABEL_17:
      sub_1A9977810();
      __break(1u);
LABEL_18:
      sub_1A991DA0C(v13, v7);
      v17 = *v7;
      v16 = v7[1];
      v18 = v7[2];
      if (swift_getEnumCaseMultiPayload() != 1)
      {

        goto LABEL_36;
      }

      v19 = v14[2];
      if (v17 == *v14 && v16 == v14[1])
      {
      }

      else
      {
        v21 = sub_1A99777E0();

        if ((v21 & 1) == 0)
        {
          sub_1A991DA70(v13);
          return 0;
        }
      }

      sub_1A991DA70(v13);
      return v18 == v19;
  }
}

uint64_t _s7Sharing15SFAirDropClientC10IdentifierO1loiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropClient.Identifier(0);
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v10 = &v30 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v12 = (&v30 - v11);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B61E8, &unk_1A99A9560);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v30 - v15;
  v17 = (&v30 + *(v14 + 56) - v15);
  sub_1A991DA0C(a1, &v30 - v15);
  sub_1A991DA0C(a2, v17);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A991DA0C(v16, v12);
    v19 = *v12;
    v18 = v12[1];
    v20 = v12[2];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v21 = v17[2];
      if (v20 == v21)
      {
        if (v19 == *v17 && v18 == v17[1])
        {
          v23 = 0;
        }

        else
        {
          v23 = sub_1A99777E0();
        }
      }

      else
      {

        v23 = v20 < v21;
      }

      sub_1A991DA70(v16);
      return v23 & 1;
    }
  }

  sub_1A991DA0C(a1, v10);
  v24 = 100;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_1A991DA70(v10);
      v24 = 600;
      break;
    case 2u:
      break;
    case 3u:
      v24 = 200;
      break;
    case 4u:
      v24 = 250;
      break;
    case 5u:
      v24 = 500;
      break;
    case 6u:
      v24 = 375;
      break;
    case 7u:
      v24 = 400;
      break;
    case 8u:
      v24 = 450;
      break;
    case 9u:
    case 0xAu:
      v24 = 300;
      break;
    case 0xBu:
      v24 = 350;
      break;
    case 0xCu:
      v24 = 700;
      break;
    case 0xDu:
      v24 = 750;
      break;
    default:
      v25 = sub_1A99762C0();
      (*(*(v25 - 8) + 8))(v10, v25);
      v24 = 425;
      break;
  }

  sub_1A991DA0C(a2, v7);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v27 = 100;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_1A991DA70(v7);
      v27 = 600;
      break;
    case 2:
      break;
    case 3:
      v27 = 200;
      break;
    case 4:
      v27 = 250;
      break;
    case 5:
      v27 = 500;
      break;
    case 6:
      v27 = 375;
      break;
    case 7:
      v27 = 400;
      break;
    case 8:
      v27 = 450;
      break;
    case 9:
    case 10:
      v27 = 300;
      break;
    case 11:
      v27 = 350;
      break;
    case 12:
      v27 = 700;
      break;
    case 13:
      v27 = 750;
      break;
    default:
      v28 = sub_1A99762C0();
      (*(*(v28 - 8) + 8))(v7, v28);
      v27 = 425;
      break;
  }

  v23 = v24 < v27;
  sub_1A991EEC4(v16);
  return v23 & 1;
}

uint64_t type metadata accessor for SFAirDropClient.Identifier(uint64_t a1)
{
  result = qword_1EB3AC650;
  if (!qword_1EB3AC650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A991DA0C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropClient.Identifier(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A991DA70(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropClient.Identifier(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A991DACC()
{
  result = qword_1EB3B6050;
  if (!qword_1EB3B6050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6050);
  }

  return result;
}

unint64_t sub_1A991DB20()
{
  result = qword_1EB3B6058;
  if (!qword_1EB3B6058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6058);
  }

  return result;
}

unint64_t sub_1A991DB74()
{
  result = qword_1EB3B6060;
  if (!qword_1EB3B6060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6060);
  }

  return result;
}

unint64_t sub_1A991DBC8()
{
  result = qword_1EB3B6068;
  if (!qword_1EB3B6068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6068);
  }

  return result;
}

unint64_t sub_1A991DC1C()
{
  result = qword_1EB3B6070;
  if (!qword_1EB3B6070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6070);
  }

  return result;
}

unint64_t sub_1A991DC70()
{
  result = qword_1EB3B6078;
  if (!qword_1EB3B6078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6078);
  }

  return result;
}

unint64_t sub_1A991DCC4()
{
  result = qword_1EB3B6080;
  if (!qword_1EB3B6080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6080);
  }

  return result;
}

unint64_t sub_1A991DD18()
{
  result = qword_1EB3B6088;
  if (!qword_1EB3B6088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6088);
  }

  return result;
}

unint64_t sub_1A991DD6C()
{
  result = qword_1EB3B6090;
  if (!qword_1EB3B6090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6090);
  }

  return result;
}

unint64_t sub_1A991DDC0()
{
  result = qword_1EB3B6098;
  if (!qword_1EB3B6098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6098);
  }

  return result;
}

unint64_t sub_1A991DE14()
{
  result = qword_1EB3B60A0;
  if (!qword_1EB3B60A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B60A0);
  }

  return result;
}

unint64_t sub_1A991DE68()
{
  result = qword_1EB3B60A8;
  if (!qword_1EB3B60A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B60A8);
  }

  return result;
}

uint64_t sub_1A991DEBC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropClient.Identifier(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1A991DF24()
{
  result = qword_1EB3B6110;
  if (!qword_1EB3B6110)
  {
    type metadata accessor for SFAirDropClient.Identifier(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6110);
  }

  return result;
}

void sub_1A991DF7C(uint64_t a1)
{
  sub_1A991DFF0();
  if (v1 <= 0x3F)
  {
    sub_1A991E038();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1A991DFF0()
{
  if (!qword_1EB3AC898)
  {
    v0 = sub_1A99762C0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AC898);
    }
  }
}

void sub_1A991E038()
{
  if (!qword_1EB3AB760)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB3AB760);
    }
  }
}

unint64_t sub_1A991E160()
{
  result = qword_1EB3B6118;
  if (!qword_1EB3B6118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6118);
  }

  return result;
}

unint64_t sub_1A991E1B8()
{
  result = qword_1EB3B6120;
  if (!qword_1EB3B6120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6120);
  }

  return result;
}

unint64_t sub_1A991E210()
{
  result = qword_1EB3B6128;
  if (!qword_1EB3B6128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6128);
  }

  return result;
}

unint64_t sub_1A991E268()
{
  result = qword_1EB3B6130;
  if (!qword_1EB3B6130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6130);
  }

  return result;
}

unint64_t sub_1A991E2C0()
{
  result = qword_1EB3B6138;
  if (!qword_1EB3B6138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6138);
  }

  return result;
}

unint64_t sub_1A991E318()
{
  result = qword_1EB3B6140;
  if (!qword_1EB3B6140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6140);
  }

  return result;
}

unint64_t sub_1A991E370()
{
  result = qword_1EB3B6148;
  if (!qword_1EB3B6148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6148);
  }

  return result;
}

unint64_t sub_1A991E3C8()
{
  result = qword_1EB3B6150;
  if (!qword_1EB3B6150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6150);
  }

  return result;
}

unint64_t sub_1A991E420()
{
  result = qword_1EB3B6158;
  if (!qword_1EB3B6158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6158);
  }

  return result;
}

unint64_t sub_1A991E478()
{
  result = qword_1EB3B6160;
  if (!qword_1EB3B6160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6160);
  }

  return result;
}

unint64_t sub_1A991E4D0()
{
  result = qword_1EB3B6168;
  if (!qword_1EB3B6168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6168);
  }

  return result;
}

unint64_t sub_1A991E528()
{
  result = qword_1EB3B6170;
  if (!qword_1EB3B6170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6170);
  }

  return result;
}

unint64_t sub_1A991E580()
{
  result = qword_1EB3B6178;
  if (!qword_1EB3B6178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6178);
  }

  return result;
}

unint64_t sub_1A991E5D8()
{
  result = qword_1EB3B6180;
  if (!qword_1EB3B6180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6180);
  }

  return result;
}

unint64_t sub_1A991E630()
{
  result = qword_1EB3B6188;
  if (!qword_1EB3B6188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6188);
  }

  return result;
}

unint64_t sub_1A991E688()
{
  result = qword_1EB3B6190;
  if (!qword_1EB3B6190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6190);
  }

  return result;
}

unint64_t sub_1A991E6E0()
{
  result = qword_1EB3B6198;
  if (!qword_1EB3B6198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6198);
  }

  return result;
}

unint64_t sub_1A991E738()
{
  result = qword_1EB3B61A0;
  if (!qword_1EB3B61A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61A0);
  }

  return result;
}

unint64_t sub_1A991E790()
{
  result = qword_1EB3B61A8;
  if (!qword_1EB3B61A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61A8);
  }

  return result;
}

unint64_t sub_1A991E7E8()
{
  result = qword_1EB3B61B0;
  if (!qword_1EB3B61B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61B0);
  }

  return result;
}

unint64_t sub_1A991E840()
{
  result = qword_1EB3B61B8;
  if (!qword_1EB3B61B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61B8);
  }

  return result;
}

unint64_t sub_1A991E898()
{
  result = qword_1EB3B61C0;
  if (!qword_1EB3B61C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61C0);
  }

  return result;
}

unint64_t sub_1A991E8F0()
{
  result = qword_1EB3B61C8;
  if (!qword_1EB3B61C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61C8);
  }

  return result;
}

unint64_t sub_1A991E948()
{
  result = qword_1EB3B61D0;
  if (!qword_1EB3B61D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61D0);
  }

  return result;
}

unint64_t sub_1A991E9A0()
{
  result = qword_1EB3B61D8;
  if (!qword_1EB3B61D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61D8);
  }

  return result;
}

unint64_t sub_1A991E9F8()
{
  result = qword_1EB3B61E0;
  if (!qword_1EB3B61E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B61E0);
  }

  return result;
}

uint64_t sub_1A991EA4C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x755379636167656CLL && a2 == 0xED000074726F7070;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6909027 && a2 == 0xE300000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F6D656164 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6568536572616873 && a2 == 0xEA00000000007465 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1886351202 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7265646E6966 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x74656C6C6177 && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x4E706F7244726961 && a2 == 0xED0000656369746FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x69577265646E6966 && a2 == 0xEC000000776F646ELL || (sub_1A99777E0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x55706F7264726961 && a2 == 0xE900000000000049 || (sub_1A99777E0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E8450 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x636972656E6567 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0x79636167656CLL && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 1230324804 && a2 == 0xE400000000000000)
  {

    return 13;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1A991EEC4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B61E8, &unk_1A99A9560);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Slice.initializeAll<A>(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();

  return sub_1A991F468(a1, a2, a3, a4, a5, AssociatedTypeWitness, a6, a7);
}

{
  v11 = sub_1A99770F0();

  return UnsafeMutableBufferPointer.initialize(fromContentsOf:)(a1, a2, v11, v10, a7);
}

uint64_t UnsafeMutableBufferPointer.initialize(fromContentsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 1)
  {
    return 0;
  }

  v5 = a2;
  if (a4 >= a2)
  {
    sub_1A99770B0();
    sub_1A99770B0();
    sub_1A9977050();
    return v5;
  }

  __break(1u);
  return v6;
}

uint64_t UnsafeMutableBufferPointer.initialize(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = a1;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_1A9977100();
  swift_getWitnessTable();
  v12 = sub_1A9977960();
  swift_getWitnessTable();
  result = sub_1A9976EC0();
  if (result < 1)
  {
    return 0;
  }

  v14 = result;
  if (result <= a6)
  {
    sub_1A99770B0();
    v16 = a1;
    v17 = a2;
    v18 = a3;
    v19 = a4;
    MEMORY[0x1AC58A5F0](&v15, v12);
    sub_1A99770B0();
    sub_1A9977930();
    sub_1A9977050();
    return v14;
  }

  __break(1u);
  return result;
}

uint64_t Slice.initialize<A>(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = sub_1A99770F0();
  v12 = UnsafeMutableBufferPointer.initialize(fromContentsOf:)(a1, a2, v10, v11, a7);
  sub_1A9977100();
  swift_getWitnessTable();
  sub_1A9977960();
  sub_1A9977930();
  result = v14 + v12;
  if (__OFADD__(v14, v12))
  {
    __break(1u);
  }

  return result;
}

uint64_t Slice.initialize<A>(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v13 = sub_1A99770F0();
  v15 = UnsafeMutableBufferPointer.initialize(fromContentsOf:)(a1, a2, a3, a4, v13, v14, a9);
  sub_1A9977100();
  swift_getWitnessTable();
  sub_1A9977960();
  sub_1A9977930();
  result = v17 + v15;
  if (__OFADD__(v17, v15))
  {
    __break(1u);
  }

  return result;
}

uint64_t UnsafeMutableBufferPointer.moveInitializeAll(fromContentsOf:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (result && a2)
  {
    if (a4 < a2)
    {
      __break(1u);
    }

    else
    {
      return sub_1A9977080();
    }
  }

  return result;
}

uint64_t sub_1A991F3EC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (!a3)
  {
    return 0;
  }

  v7 = a2 - result;
  if (a2 == result)
  {
    return v7;
  }

  if (v7 <= a6)
  {
    sub_1A9977080();
    return v7;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A991F468(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = sub_1A99770F0();
  v15 = _sSr7SharingE13initializeAll14fromContentsOfyqd___t7ElementQyd__RszSlRd__lF_0(a1, v13, v14, a6, a7, a8);
  v16 = __OFADD__(a2, v15);
  result = a2 + v15;
  if (v16)
  {
    __break(1u);
  }

  return result;
}

uint64_t Slice.initializeAll<A>(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = sub_1A99770F0();

  return UnsafeMutableBufferPointer.initialize(fromContentsOf:)(a1, a2, a3, a4, v14, v13, a9);
}

uint64_t Slice.moveInitializeAll<A>(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  result = sub_1A99770F0();
  if (a1 && a2)
  {
    if (v10 < a2)
    {
      __break(1u);
    }

    else
    {

      return sub_1A9977080();
    }
  }

  return result;
}

uint64_t Slice.moveInitializeAll<A>(fromContentsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v14 = sub_1A99770F0();

  return sub_1A991F3EC(a1, a2, a3, a4, v14, v13, a9);
}

uint64_t sub_1A991F704(uint64_t a1)
{
  v2 = sub_1A99201DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991F740(uint64_t a1)
{
  v2 = sub_1A99201DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991F77C()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  v3 = 0x54676E6974696177;
  v4 = 0x676E696E61656C63;
  if (v1 != 4)
  {
    v4 = 0x6465766F6D6572;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD000000000000015;
  if (v1 != 1)
  {
    v5 = 0x7661776B636F6873;
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

uint64_t sub_1A991F85C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A99211D8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A991F884(uint64_t a1)
{
  v2 = sub_1A9920134();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991F8C0(uint64_t a1)
{
  v2 = sub_1A9920134();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991F8FC(uint64_t a1)
{
  v2 = sub_1A992032C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991F938(uint64_t a1)
{
  v2 = sub_1A992032C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991F974(uint64_t a1)
{
  v2 = sub_1A99202D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991F9B0(uint64_t a1)
{
  v2 = sub_1A99202D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991F9EC(uint64_t a1)
{
  v2 = sub_1A9920188();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991FA28(uint64_t a1)
{
  v2 = sub_1A9920188();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991FA64(uint64_t a1)
{
  v2 = sub_1A9920284();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991FAA0(uint64_t a1)
{
  v2 = sub_1A9920284();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A991FADC(uint64_t a1)
{
  v2 = sub_1A9920230();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A991FB18(uint64_t a1)
{
  v2 = sub_1A9920230();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFShockwaveEffectState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B61F0, &qword_1A99A9570);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v26 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B61F8, &qword_1A99A9578);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v26 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6200, &qword_1A99A9580);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v26 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6208, &qword_1A99A9588);
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v30 = &v26 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6210, &qword_1A99A9590);
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6218, &qword_1A99A9598);
  v26 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v26 - v14;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6220, &qword_1A99A95A0);
  v16 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v18 = &v26 - v17;
  v19 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9920134();
  sub_1A9977AA0();
  v20 = (v16 + 8);
  if (v19 > 2)
  {
    if (v19 == 3)
    {
      v46 = 3;
      sub_1A9920230();
      v21 = v33;
      v22 = v42;
      sub_1A9977640();
      v24 = v34;
      v23 = v35;
    }

    else if (v19 == 4)
    {
      v47 = 4;
      sub_1A99201DC();
      v21 = v36;
      v22 = v42;
      sub_1A9977640();
      v24 = v37;
      v23 = v38;
    }

    else
    {
      v48 = 5;
      sub_1A9920188();
      v21 = v39;
      v22 = v42;
      sub_1A9977640();
      v24 = v40;
      v23 = v41;
    }

    goto LABEL_12;
  }

  if (v19)
  {
    if (v19 == 1)
    {
      v44 = 1;
      sub_1A99202D8();
      v21 = v27;
      v22 = v42;
      sub_1A9977640();
      v24 = v28;
      v23 = v29;
    }

    else
    {
      v45 = 2;
      sub_1A9920284();
      v21 = v30;
      v22 = v42;
      sub_1A9977640();
      v24 = v31;
      v23 = v32;
    }

LABEL_12:
    (*(v24 + 8))(v21, v23);
    return (*v20)(v18, v22);
  }

  v43 = 0;
  sub_1A992032C();
  v22 = v42;
  sub_1A9977640();
  (*(v26 + 8))(v15, v13);
  return (*v20)(v18, v22);
}

unint64_t sub_1A9920134()
{
  result = qword_1EB3B6228;
  if (!qword_1EB3B6228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6228);
  }

  return result;
}

unint64_t sub_1A9920188()
{
  result = qword_1EB3B6230;
  if (!qword_1EB3B6230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6230);
  }

  return result;
}

unint64_t sub_1A99201DC()
{
  result = qword_1EB3B6238;
  if (!qword_1EB3B6238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6238);
  }

  return result;
}

unint64_t sub_1A9920230()
{
  result = qword_1EB3B6240;
  if (!qword_1EB3B6240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6240);
  }

  return result;
}

unint64_t sub_1A9920284()
{
  result = qword_1EB3B6248;
  if (!qword_1EB3B6248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6248);
  }

  return result;
}

unint64_t sub_1A99202D8()
{
  result = qword_1EB3B6250;
  if (!qword_1EB3B6250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6250);
  }

  return result;
}

unint64_t sub_1A992032C()
{
  result = qword_1EB3B6258;
  if (!qword_1EB3B6258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6258);
  }

  return result;
}

uint64_t SFShockwaveEffectState.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFShockwaveEffectState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v52 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6260, &qword_1A99A95A8);
  v49 = *(v3 - 8);
  v50 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v55 = &v39 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6268, &qword_1A99A95B0);
  v6 = *(v5 - 8);
  v47 = v5;
  v48 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v54 = &v39 - v7;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6270, &qword_1A99A95B8);
  v46 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v53 = &v39 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6278, &qword_1A99A95C0);
  v44 = *(v9 - 8);
  v45 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v51 = &v39 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6280, &qword_1A99A95C8);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v39 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6288, &qword_1A99A95D0);
  v40 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v39 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6290, &unk_1A99A95D8);
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v39 - v19;
  v21 = a1[3];
  v57 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v21);
  sub_1A9920134();
  v22 = v56;
  sub_1A9977A70();
  if (!v22)
  {
    v23 = v16;
    v39 = v14;
    v56 = v13;
    v25 = v53;
    v24 = v54;
    v26 = v55;
    v27 = sub_1A9977620();
    v28 = (2 * *(v27 + 16)) | 1;
    v58 = v27;
    v59 = v27 + 32;
    v60 = 0;
    v61 = v28;
    v29 = sub_1A97B2984();
    v30 = v20;
    if (v29 == 6 || v60 != v61 >> 1)
    {
      v34 = sub_1A9977300();
      swift_allocError();
      v36 = v35;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v36 = &type metadata for SFShockwaveEffectState;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v34 - 8) + 104))(v36, *MEMORY[0x1E69E6AF8], v34);
      swift_willThrow();
      (*(v18 + 8))(v20, v17);
      swift_unknownObjectRelease();
    }

    else
    {
      v62 = v29;
      if (v29 > 2u)
      {
        v38 = v52;
        if (v29 == 3)
        {
          v63 = 3;
          sub_1A9920230();
          sub_1A9977530();
          (*(v46 + 8))(v25, v41);
        }

        else if (v29 == 4)
        {
          v63 = 4;
          sub_1A99201DC();
          sub_1A9977530();
          (*(v48 + 8))(v24, v47);
        }

        else
        {
          v63 = 5;
          sub_1A9920188();
          sub_1A9977530();
          (*(v49 + 8))(v26, v50);
        }

        (*(v18 + 8))(v30, v17);
        swift_unknownObjectRelease();
      }

      else
      {
        if (v29)
        {
          if (v29 == 1)
          {
            v63 = 1;
            sub_1A99202D8();
            v31 = v56;
            sub_1A9977530();
            v33 = v42;
            v32 = v43;
          }

          else
          {
            v63 = 2;
            sub_1A9920284();
            v31 = v51;
            sub_1A9977530();
            v33 = v44;
            v32 = v45;
          }

          (*(v33 + 8))(v31, v32);
        }

        else
        {
          v63 = 0;
          sub_1A992032C();
          sub_1A9977530();
          (*(v40 + 8))(v23, v39);
        }

        (*(v18 + 8))(v20, v17);
        swift_unknownObjectRelease();
        v38 = v52;
      }

      *v38 = v62;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v57);
}

unint64_t sub_1A9920BAC()
{
  result = qword_1EB3B6298;
  if (!qword_1EB3B6298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6298);
  }

  return result;
}

unint64_t sub_1A9920CB4()
{
  result = qword_1EB3B62A0;
  if (!qword_1EB3B62A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62A0);
  }

  return result;
}

unint64_t sub_1A9920D0C()
{
  result = qword_1EB3B62A8;
  if (!qword_1EB3B62A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62A8);
  }

  return result;
}

unint64_t sub_1A9920D64()
{
  result = qword_1EB3B62B0;
  if (!qword_1EB3B62B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62B0);
  }

  return result;
}

unint64_t sub_1A9920DBC()
{
  result = qword_1EB3B62B8;
  if (!qword_1EB3B62B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62B8);
  }

  return result;
}

unint64_t sub_1A9920E14()
{
  result = qword_1EB3B62C0;
  if (!qword_1EB3B62C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62C0);
  }

  return result;
}

unint64_t sub_1A9920E6C()
{
  result = qword_1EB3B62C8;
  if (!qword_1EB3B62C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62C8);
  }

  return result;
}

unint64_t sub_1A9920EC4()
{
  result = qword_1EB3B62D0;
  if (!qword_1EB3B62D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62D0);
  }

  return result;
}

unint64_t sub_1A9920F1C()
{
  result = qword_1EB3B62D8;
  if (!qword_1EB3B62D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62D8);
  }

  return result;
}

unint64_t sub_1A9920F74()
{
  result = qword_1EB3B62E0;
  if (!qword_1EB3B62E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62E0);
  }

  return result;
}

unint64_t sub_1A9920FCC()
{
  result = qword_1EB3B62E8;
  if (!qword_1EB3B62E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62E8);
  }

  return result;
}

unint64_t sub_1A9921024()
{
  result = qword_1EB3B62F0;
  if (!qword_1EB3B62F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62F0);
  }

  return result;
}

unint64_t sub_1A992107C()
{
  result = qword_1EB3B62F8;
  if (!qword_1EB3B62F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B62F8);
  }

  return result;
}

unint64_t sub_1A99210D4()
{
  result = qword_1EB3B6300;
  if (!qword_1EB3B6300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6300);
  }

  return result;
}

unint64_t sub_1A992112C()
{
  result = qword_1EB3B6308;
  if (!qword_1EB3B6308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6308);
  }

  return result;
}

unint64_t sub_1A9921184()
{
  result = qword_1EB3B6310;
  if (!qword_1EB3B6310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6310);
  }

  return result;
}

uint64_t sub_1A99211D8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x697463656E6E6F63 && a2 == 0xEE00746E69486E6FLL;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001A99E84B0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7661776B636F6873 && a2 == 0xE900000000000065 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x54676E6974696177 && a2 == 0xEF656C747465536FLL || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x676E696E61656C63 && a2 == 0xEA00000000007055 || (sub_1A99777E0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6465766F6D6572 && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A9921404()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B6318);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B6318);
  if (qword_1EB3ACCA8 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3ACCB0);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static SFAirDropReceive.PeerPayment.validateTransaction(for:)(uint64_t a1)
{
  v2 = sub_1A9976020();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EB3B0B78 != -1)
  {
    swift_once();
  }

  v6 = sub_1A99764A0();
  __swift_project_value_buffer(v6, qword_1EB3B6318);
  (*(v3 + 16))(v5, a1, v2);
  v7 = sub_1A9976480();
  v8 = sub_1A9976F90();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v19[1] = a1;
    v10 = v9;
    v11 = swift_slowAlloc();
    v20 = v11;
    *v10 = 136315138;
    sub_1A9921848();
    v12 = sub_1A9977730();
    v14 = v13;
    (*(v3 + 8))(v5, v2);
    v15 = sub_1A97AF148(v12, v14, &v20);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1A9662000, v7, v8, "PeerPayment: validating transaction for transactionURL: %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x1AC58D2C0](v11, -1, -1);
    MEMORY[0x1AC58D2C0](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v5, v2);
  }

  v16 = sub_1A9976030();
  sub_1A97B43C4(v16, v17);
  return 1;
}

unint64_t sub_1A9921848()
{
  result = qword_1EB3B1FA0;
  if (!qword_1EB3B1FA0)
  {
    sub_1A9976020();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B1FA0);
  }

  return result;
}

Sharing::SFMoveToAppShareSheetSettings_optional __swiftcall SFMoveToAppShareSheetSettings.init(rawValue:)(Swift::Int rawValue)
{
  if (rawValue == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (!rawValue)
  {
    v2 = 0;
  }

  *v1 = v2;
  return rawValue;
}

id SFAirDropInvocations.MoveToAppShareSheet.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___SFXPCInvocation_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v8, sel_init);
}

id SFAirDropInvocations.MoveToAppShareSheet.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___SFXPCInvocation_name];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SFAirDropInvocations.MoveToAppShareSheet.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SFAirDropInvocations.MoveToAppShareSheet.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SFAirDropInvocations.MoveToAppShareSheet.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98548EC(a1);

  return v4;
}

id SFAirDropInvocations.MoveToAppShareSheet.init(coder:)(void *a1)
{
  v2 = sub_1A98548EC(a1);

  return v2;
}

id SFAirDropInvocations.MoveToAppShareSheet.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1A9921B4C()
{
  result = qword_1EB3B6330;
  if (!qword_1EB3B6330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6330);
  }

  return result;
}

uint64_t sub_1A9921BEC()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3B6338);
  v1 = __swift_project_value_buffer(v0, qword_1EB3B6338);
  if (qword_1EB3B0B08 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1EB3B3620);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1A9921D7C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  sub_1A9976820();

  v5 = a2;
  v4();
}

void sub_1A9921EB8(id a1)
{
  v51 = *MEMORY[0x1E69E9840];
  if ((qword_1EB3B3940 & 0x10) != 0)
  {
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_isAttemptingRepair))
  {
    if (qword_1EB3B0B80 != -1)
    {
      swift_once();
    }

    v4 = sub_1A99764A0();
    __swift_project_value_buffer(v4, qword_1EB3B6338);
    v5 = a1;
    oslog = sub_1A9976480();
    v6 = sub_1A9976F90();

    if (os_log_type_enabled(oslog, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *&aBlock = v8;
      *v7 = 136315138;
      *&v45 = [v5 bleDevice];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6368, &qword_1A99A9DD8);
      v9 = sub_1A9976880();
      v11 = sub_1A97AF148(v9, v10, &aBlock);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_1A9662000, oslog, v6, "Ignoring proximity Repair with another %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v8);
      MEMORY[0x1AC58D2C0](v8, -1, -1);
      MEMORY[0x1AC58D2C0](v7, -1, -1);

      return;
    }

    v14 = oslog;
    goto LABEL_16;
  }

  if (([a1 problemFlags] & 0x10000) == 0)
  {
    v12 = [a1 model];
    if (v12)
    {
      v13 = v12;
      sub_1A9976820();
    }

    if (([a1 problemFlags] & 0x10) != 0)
    {
      v18 = sub_1A9976980();

      if (v18)
      {
        LODWORD(v45) = 0;
        v19 = WiFiCopyCurrentNetworkInfoEx();
        if (v19)
        {
          v20 = v19;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            *&aBlock = 0;
            sub_1A99766F0();
          }
        }
      }
    }

    else
    {
    }

    if (!SFDeviceRepairSessionProblemCanFixSilently([a1 problemFlags]))
    {
      if (qword_1EB3B0B80 != -1)
      {
        swift_once();
      }

      v32 = sub_1A99764A0();
      __swift_project_value_buffer(v32, qword_1EB3B6338);
      v33 = sub_1A9976480();
      v34 = sub_1A9976F90();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1A9662000, v33, v34, "Ignoring device that has problems that are not silently fixable", v35, 2u);
        MEMORY[0x1AC58D2C0](v35, -1, -1);
      }

      goto LABEL_54;
    }

    v21 = OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession;
    v22 = *(v1 + OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession);
    if (v22)
    {
      [v22 invalidate];
    }

    v23 = [objc_allocWithZone(SFDeviceRepairSession) init];
    [v23 setPeerDevice_];
    v24 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v49 = sub_1A99230D8;
    v50 = v24;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    *&v48 = sub_1A9922ED8;
    *(&v48 + 1) = &block_descriptor_11;
    v25 = _Block_copy(&aBlock);

    [v23 setProgressHandler_];
    _Block_release(v25);
    v26 = [a1 bleDevice];
    if (v26)
    {
      v27 = v26;
      v28 = [v26 foundTicks];

      if (v28)
      {
        if (mach_absolute_time() < v28)
        {
          __break(1u);
          goto LABEL_57;
        }

        [v23 setTriggerMs_];
      }
    }

    if (MEMORY[0x1E69A53F8])
    {
      v29 = [objc_opt_self() sharedInstance];
      v30 = sub_1A99767E0();
      v31 = [v29 objectForKey_];

      if (v31)
      {
        sub_1A99771B0();
        swift_unknownObjectRelease();
      }

      else
      {
        v45 = 0u;
        v46 = 0u;
      }

      aBlock = v45;
      v48 = v46;
      sub_1A97E4448(&aBlock, &v45);
      if (*(&v46 + 1))
      {
        sub_1A99230F8();
        if (swift_dynamicCast())
        {
          v28 = v44;
          if ([v44 BOOLValue])
          {
            v2 = v1;
            if (qword_1EB3B0B80 == -1)
            {
LABEL_47:
              v36 = sub_1A99764A0();
              __swift_project_value_buffer(v36, qword_1EB3B6338);
              v37 = sub_1A9976480();
              v38 = sub_1A9976F90();
              if (os_log_type_enabled(v37, v38))
              {
                v39 = swift_slowAlloc();
                *v39 = 0;
                _os_log_impl(&dword_1A9662000, v37, v38, "Disabling silent auth due to server bag value", v39, 2u);
                MEMORY[0x1AC58D2C0](v39, -1, -1);
              }

              [v23 setDisableSilentAuth_];
              sub_1A9812E28(&aBlock);
              v1 = v2;
              goto LABEL_53;
            }

LABEL_57:
            swift_once();
            goto LABEL_47;
          }

          sub_1A9812E28(&aBlock);

          goto LABEL_53;
        }

        p_aBlock = &aBlock;
      }

      else
      {
        sub_1A9812E28(&aBlock);
        p_aBlock = &v45;
      }

      sub_1A9812E28(p_aBlock);
    }

LABEL_53:
    v41 = *(v1 + v21);
    *(v1 + v21) = v23;
    v33 = v23;

    [v33 activate];
LABEL_54:

    return;
  }

  if (qword_1EB3B0B80 != -1)
  {
    swift_once();
  }

  v15 = sub_1A99764A0();
  __swift_project_value_buffer(v15, qword_1EB3B6338);
  osloga = sub_1A9976480();
  v16 = sub_1A9976F90();
  if (os_log_type_enabled(osloga, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1A9662000, osloga, v16, "Ignoring proximity repair for WiFi 802.1x (needs user)", v17, 2u);
    MEMORY[0x1AC58D2C0](v17, -1, -1);
  }

  v14 = osloga;
LABEL_16:
}

void sub_1A992282C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1A992289C(v4, a2);
  }
}

void sub_1A992289C(int a1, uint64_t a2)
{
  v3 = v2;
  if (qword_1EB3B0B80 != -1)
  {
    swift_once();
  }

  v6 = sub_1A99764A0();
  __swift_project_value_buffer(v6, qword_1EB3B6338);

  v7 = sub_1A9976480();
  v8 = sub_1A9976F90();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v56[0] = v10;
    *v9 = 136315394;
    LODWORD(v59[0]) = a1;
    type metadata accessor for SFDeviceSetupProgressEvent(0);
    v11 = sub_1A9976880();
    v13 = sub_1A97AF148(v11, v12, v56);

    *(v9 + 4) = v13;
    *(v9 + 12) = 2080;
    *&v59[0] = a2;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6378, &qword_1A99A9DE8);
    v14 = sub_1A9976880();
    v16 = sub_1A97AF148(v14, v15, v56);

    *(v9 + 14) = v16;
    _os_log_impl(&dword_1A9662000, v7, v8, "Repair silent progress: %s %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC58D2C0](v10, -1, -1);
    MEMORY[0x1AC58D2C0](v9, -1, -1);
  }

  switch(a1)
  {
    case 20:
      v41 = sub_1A9976480();
      v42 = sub_1A9976F90();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        _os_log_impl(&dword_1A9662000, v41, v42, "Repair finalized", v43, 2u);
        MEMORY[0x1AC58D2C0](v43, -1, -1);
      }

      break;
    case 96:
      v29 = v3;
      v30 = sub_1A9976480();
      v31 = sub_1A9976F90();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v56[0] = v33;
        *v32 = 136315138;
        v34 = *&v29[OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession];
        if (v34)
        {
          v34 = [v34 peerDevice];
        }

        *&v59[0] = v34;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6370, &qword_1A99A9DE0);
        v35 = sub_1A9976880();
        v37 = sub_1A97AF148(v35, v36, v56);

        *(v32 + 4) = v37;
        _os_log_impl(&dword_1A9662000, v30, v31, "Repair completed: %s", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v33);
        MEMORY[0x1AC58D2C0](v33, -1, -1);
        MEMORY[0x1AC58D2C0](v32, -1, -1);
      }

      v38 = OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession;
      v39 = *&v29[OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession];
      if (v39)
      {
        [v39 invalidate];
        v40 = *&v29[v38];
      }

      else
      {
        v40 = 0;
      }

      *&v29[v38] = 0;

      v29[OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_isAttemptingRepair] = 0;
      break;
    case 30:
      v17 = OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession;
      v18 = *&v3[OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_repairSession];
      if (!v18)
      {
        goto LABEL_29;
      }

      v19 = [v18 peerDevice];
      if (v19)
      {
        v20 = v19;
        v21 = *&v3[v17];
        if (v21)
        {
          v22 = [v21 idsIdentifier];
          if (v22)
          {
            v23 = v22;
            v24 = sub_1A9976820();
            v26 = v25;

            v27 = *&v3[OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_updateIDSCacheHandler];
            if (v27)
            {
              v28 = *&v3[OBJC_IVAR____TtC7Sharing29SFCommunalDeviceRepairManager_updateIDSCacheHandler + 8];

              v27(v20, v24, v26);

              sub_1A967C46C(v27, v28);

              goto LABEL_27;
            }
          }
        }
      }

LABEL_27:
      v44 = *&v3[v17];
      if (v44)
      {
        [v44 invalidate];
        v45 = *&v3[v17];
        goto LABEL_30;
      }

LABEL_29:
      v45 = 0;
LABEL_30:
      *&v3[v17] = 0;

      if (a2)
      {
        v57[0] = 28517;
        v57[1] = 0xE200000000000000;
        sub_1A9977250();
        if (*(a2 + 16))
        {
          v46 = sub_1A97BCF30(v56);
          if (v47)
          {
            sub_1A97AF7EC(*(a2 + 56) + 32 * v46, v59);
            sub_1A97C108C(v56);
LABEL_36:
            sub_1A97E4448(v59, v56);
            v48 = sub_1A9976480();
            v49 = sub_1A9976F70();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              v51 = swift_slowAlloc();
              v58 = v51;
              *v50 = 136315138;
              sub_1A97E4448(v56, v57);
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B0BA0, &unk_1A99923D0);
              v52 = sub_1A9976880();
              v54 = v53;
              sub_1A9812E28(v56);
              v55 = sub_1A97AF148(v52, v54, &v58);

              *(v50 + 4) = v55;
              _os_log_impl(&dword_1A9662000, v48, v49, "Repair silent done: %s", v50, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v51);
              MEMORY[0x1AC58D2C0](v51, -1, -1);
              MEMORY[0x1AC58D2C0](v50, -1, -1);
            }

            else
            {

              sub_1A9812E28(v56);
            }

            sub_1A9812E28(v59);
            return;
          }
        }

        sub_1A97C108C(v56);
      }

      memset(v59, 0, sizeof(v59));
      goto LABEL_36;
    default:
      return;
  }
}

uint64_t sub_1A9922ED8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 32);
  if (a3)
  {
    v5 = sub_1A9976700();
  }

  else
  {
    v5 = 0;
  }

  v4(a2, v5);
}

uint64_t block_copy_helper_11(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1A99230F8()
{
  result = qword_1EB3AB620;
  if (!qword_1EB3AB620)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB3AB620);
  }

  return result;
}

void sub_1A9923144(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 16);
  v6 = sub_1A99767E0();
  (*(v5 + 16))(v5, a1, v6);
}

uint64_t sub_1A99231BC(uint64_t a1)
{
  v2 = sub_1A9925D20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A99231F8(uint64_t a1)
{
  v2 = sub_1A9925D20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9923234(uint64_t a1)
{
  v2 = sub_1A9925D74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9923270(uint64_t a1)
{
  v2 = sub_1A9925D74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A99232AC(uint64_t a1)
{
  v2 = sub_1A9925DC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A99232E8(uint64_t a1)
{
  v2 = sub_1A9925DC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.Transfer.Metrics.TransferResult.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6380, &qword_1A99A9DF0);
  v27 = *(v2 - 8);
  v28 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v26 = &v22 - v3;
  v4 = type metadata accessor for SFAirDropReceive.Failure(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6388, &qword_1A99A9DF8);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6390, &qword_1A99A9E00);
  v13 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v15 = &v22 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9925D20();
  sub_1A9977AA0();
  sub_1A9925F40(v29, v12, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
  if ((*(v5 + 48))(v12, 1, v4) == 1)
  {
    v31 = 0;
    sub_1A9925DC8();
    v16 = v30;
    sub_1A9977640();
    (*(v23 + 8))(v9, v24);
    return (*(v13 + 8))(v15, v16);
  }

  else
  {
    v18 = v25;
    sub_1A9925E64(v12, v25, type metadata accessor for SFAirDropReceive.Failure);
    v32 = 1;
    sub_1A9925D74();
    v19 = v26;
    v20 = v30;
    sub_1A9977640();
    sub_1A9925E1C(&qword_1EB3B18F8, type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    v21 = v28;
    sub_1A99776E0();
    (*(v27 + 8))(v19, v21);
    sub_1A9925FA8(v18, type metadata accessor for SFAirDropReceive.Failure);
    return (*(v13 + 8))(v15, v20);
  }
}

uint64_t SFAirDropReceive.Transfer.Metrics.TransferResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63B0, &qword_1A99A9E08);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v48 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63B8, &qword_1A99A9E10);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63C0, &qword_1A99A9E18);
  v50 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v41 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_1A9925D20();
  v20 = v51;
  sub_1A9977A70();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v52);
  }

  v51 = v13;
  v42 = v16;
  v43 = v18;
  v22 = v48;
  v21 = v49;
  v23 = sub_1A9977620();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_1A97B2970();
  v26 = v10;
  v27 = v12;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v30 = sub_1A9977300();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v32 = v51;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v50 + 8))(v12, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v52);
  }

  if (v25)
  {
    v57 = 1;
    sub_1A9925D74();
    v28 = v22;
    sub_1A9977530();
    v29 = v50;
    v35 = v21;
    v36 = type metadata accessor for SFAirDropReceive.Failure(0);
    sub_1A9925E1C(&qword_1EB3B1AA0, type metadata accessor for SFAirDropReceive.Failure, &protocol conformance descriptor for SFAirDropReceive.Failure);
    v37 = v42;
    v38 = v46;
    sub_1A99775F0();
    (*(v47 + 8))(v28, v38);
    (*(v29 + 8))(v27, v26);
    swift_unknownObjectRelease();
    (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
    v39 = v43;
    sub_1A9925E64(v37, v43, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
  }

  else
  {
    v57 = 0;
    sub_1A9925DC8();
    sub_1A9977530();
    v34 = v50;
    v35 = v21;
    (*(v45 + 8))(v9, v44);
    (*(v34 + 8))(v12, v10);
    swift_unknownObjectRelease();
    v40 = type metadata accessor for SFAirDropReceive.Failure(0);
    v39 = v43;
    (*(*(v40 - 8) + 56))(v43, 1, 1, v40);
  }

  sub_1A9925E64(v39, v35, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
  return __swift_destroy_boxed_opaque_existential_0Tm(v52);
}

uint64_t SFAirDropReceive.Transfer.Metrics.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A9976230();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SFAirDropReceive.Transfer.Metrics.sensitive.setter(char a1)
{
  result = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  *(v1 + *(result + 24)) = a1;
  return result;
}

uint64_t SFAirDropReceive.Transfer.Metrics.init(startDate:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  v5 = v4[5];
  v6 = sub_1A9976230();
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v8(a2 + v5, 1, 1, v6);
  v9 = v4[6];
  v10 = v4[7];
  v11 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
  v13 = *(*(v11 - 8) + 56);
  (v13)((v11 - 8), a2 + v10, 1, 1, v11);
  (*(v7 + 32))(a2, a1, v6);
  sub_1A97B06FC(a2 + v5, &unk_1EB3B2A30, &unk_1A99983A0);
  v8(a2 + v5, 1, 1, v6);
  *(a2 + v9) = 2;
  sub_1A97B06FC(a2 + v10, &qword_1EB3B63C8, &unk_1A99A9E20);

  return v13(a2 + v10, 1, 1, v11);
}

uint64_t SFAirDropReceive.Transfer.Metrics.description.getter()
{
  v1 = v0;
  v2 = sub_1A99760A0();
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A99760C0();
  v52 = *(v5 - 8);
  v53 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5550, &qword_1A99A5978);
  v8 = MEMORY[0x1EEE9AC00](v50);
  v10 = &v47 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v49 = &v47 - v11;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3650, &qword_1A999BA80);
  MEMORY[0x1EEE9AC00](v48);
  v51 = &v47 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v47 - v14;
  v16 = sub_1A9976230();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  sub_1A97C13A4(v1 + *(v56 + 20), v15, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_1A97B06FC(v15, &unk_1EB3B2A30, &unk_1A99983A0);
    goto LABEL_8;
  }

  v20 = v17 + 32;
  v21 = *(v17 + 32);
  (v21)(v19, v15, v16);
  if (sub_1A9976110())
  {
    sub_1A9925E1C(&qword_1EB3B5558, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
    v22 = v16;
    if (sub_1A9976770())
    {
      v24 = *(v17 + 16);
      v54 = v21;
      v55 = v1;
      v25 = v49;
      v24(v49, v1, v16);
      v26 = v50;
      v24((v25 + *(v50 + 48)), v19, v16);
      sub_1A97C13A4(v25, v10, &qword_1EB3B5550, &qword_1A99A5978);
      v53 = *(v26 + 48);
      v27 = v51;
      v28 = v54;
      v54(v51, v10, v16);
      v4 = *(v17 + 8);
      (v4)(&v10[v53], v16);
      sub_1A98F54F0(v25, v10);
      v28(v27 + *(v48 + 36), &v10[*(v26 + 48)], v16);
      (v4)(v10, v16);
      v59 = 0x203A656D6974;
      v60 = 0xE600000000000000;
      sub_1A98734C4();
      sub_1A9976F40();
      MEMORY[0x1AC5895B0](v57, v58);

      v20 = v59;
      v1 = v60;
      v10 = sub_1A97AE618(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v21 = *(v10 + 2);
      v23 = *(v10 + 3);
      v22 = v21 + 1;
      if (v21 < v23 >> 1)
      {
LABEL_6:
        sub_1A97B06FC(v51, &qword_1EB3B3650, &qword_1A999BA80);
        (v4)(v19, v16);
        v29 = v55;
        goto LABEL_10;
      }
    }

    else
    {
      __break(1u);
    }

    v10 = sub_1A97AE618((v23 > 1), v22, 1, v10);
    goto LABEL_6;
  }

  (*(v17 + 8))(v19, v16);
LABEL_8:
  v59 = 0;
  v60 = 0xE000000000000000;
  sub_1A99772B0();

  v59 = 0x203A656D6974;
  v60 = 0xE600000000000000;
  sub_1A99760B0();
  sub_1A9976090();
  v29 = v1;
  v30 = sub_1A9976200();
  v32 = v31;
  (*(v54 + 1))(v4, v55);
  (*(v52 + 8))(v7, v53);
  MEMORY[0x1AC5895B0](v30, v32);

  MEMORY[0x1AC5895B0](0x6D6F636E49202D20, 0xED00006574656C70);
  v20 = v59;
  v1 = v60;
  v10 = sub_1A97AE618(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v21 = *(v10 + 2);
  v33 = *(v10 + 3);
  v22 = v21 + 1;
  if (v21 >= v33 >> 1)
  {
    v10 = sub_1A97AE618((v33 > 1), v21 + 1, 1, v10);
  }

LABEL_10:
  *(v10 + 2) = v22;
  v34 = &v10[16 * v21];
  *(v34 + 4) = v20;
  *(v34 + 5) = v1;
  v35 = *(v29 + *(v56 + 24));
  if (v35 != 2)
  {
    v59 = 0x76697469736E6573;
    v60 = 0xEB00000000203A65;
    if (v35)
    {
      v36 = 1702195828;
    }

    else
    {
      v36 = 0x65736C6166;
    }

    if (v35)
    {
      v37 = 0xE400000000000000;
    }

    else
    {
      v37 = 0xE500000000000000;
    }

    MEMORY[0x1AC5895B0](v36, v37);

    v38 = v59;
    v39 = v60;
    v41 = *(v10 + 2);
    v40 = *(v10 + 3);
    if (v41 >= v40 >> 1)
    {
      v10 = sub_1A97AE618((v40 > 1), v41 + 1, 1, v10);
    }

    *(v10 + 2) = v41 + 1;
    v42 = &v10[16 * v41];
    *(v42 + 4) = v38;
    *(v42 + 5) = v39;
  }

  v59 = 123;
  v60 = 0xE100000000000000;
  v57 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2AC0, &qword_1A9990580);
  sub_1A97BD6AC();
  v43 = sub_1A9976760();
  v45 = v44;

  MEMORY[0x1AC5895B0](v43, v45);

  MEMORY[0x1AC5895B0](125, 0xE100000000000000);
  return v59;
}

uint64_t sub_1A9924A60()
{
  v1 = 0x7461447472617473;
  v2 = 0x76697469736E6573;
  if (*v0 != 2)
  {
    v2 = 0x746C75736572;
  }

  if (*v0)
  {
    v1 = 0x65746144646E65;
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

uint64_t sub_1A9924AD8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9926648(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9924B00(uint64_t a1)
{
  v2 = sub_1A9925EEC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9924B3C(uint64_t a1)
{
  v2 = sub_1A9925EEC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.Transfer.Metrics.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63D0, &qword_1A99A9E30);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9925EEC();
  sub_1A9977AA0();
  v12 = 0;
  sub_1A9976230();
  sub_1A9925E1C(&qword_1EB3B0C58, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
  sub_1A99776E0();
  if (!v1)
  {
    type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
    v11 = 1;
    sub_1A9977680();
    v10 = 2;
    sub_1A9977660();
    v9 = 3;
    type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
    sub_1A9925E1C(&qword_1EB3B63E0, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult, &protocol conformance descriptor for SFAirDropReceive.Transfer.Metrics.TransferResult);
    sub_1A9977680();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SFAirDropReceive.Transfer.Metrics.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63C8, &unk_1A99A9E20);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v27 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31 = &v27 - v6;
  v7 = sub_1A9976230();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63E8, &qword_1A99A9E38);
  v32 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v27 - v10;
  v12 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 20);
  v30 = v8;
  v17 = *(v8 + 56);
  v38 = v16;
  v17(&v15[v16], 1, 1, v7);
  v18 = *(v12 + 28);
  v19 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
  v20 = *(*(v19 - 8) + 56);
  v37 = v18;
  v20(&v15[v18], 1, 1, v19);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9925EEC();
  v34 = v11;
  v21 = v36;
  sub_1A9977A70();
  if (v21)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    sub_1A97B06FC(&v15[v38], &unk_1EB3B2A30, &unk_1A99983A0);
    return sub_1A97B06FC(&v15[v37], &qword_1EB3B63C8, &unk_1A99A9E20);
  }

  else
  {
    v36 = v19;
    v23 = v30;
    v22 = v31;
    v42 = 0;
    sub_1A9925E1C(&qword_1EB3B0CE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    sub_1A99775F0();
    (*(v23 + 32))(v15, v33, v7);
    v41 = 1;
    sub_1A9977590();
    sub_1A98F5488(v22, &v15[v38], &unk_1EB3B2A30, &unk_1A99983A0);
    v40 = 2;
    v24 = a1;
    v15[*(v12 + 24)] = sub_1A9977560();
    v39 = 3;
    sub_1A9925E1C(&qword_1EB3B63F0, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult, &protocol conformance descriptor for SFAirDropReceive.Transfer.Metrics.TransferResult);
    v25 = v29;
    sub_1A9977590();
    (*(v32 + 8))(v34, v35);
    sub_1A98F5488(v25, &v15[v37], &qword_1EB3B63C8, &unk_1A99A9E20);
    sub_1A9925F40(v15, v28, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    return sub_1A9925FA8(v15, type metadata accessor for SFAirDropReceive.Transfer.Metrics);
  }
}

uint64_t _s7Sharing16SFAirDropReceiveO8TransferV7MetricsV0E6ResultO2eeoiySbAI_AItFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.Failure(0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6450, &qword_1A99AA3A0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v19 - v13;
  v15 = *(v12 + 56);
  sub_1A9925F40(a1, &v19 - v13, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
  sub_1A9925F40(a2, &v14[v15], type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) != 1)
  {
    sub_1A9925F40(v14, v10, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
    if (v16(&v14[v15], 1, v4) != 1)
    {
      sub_1A9925E64(&v14[v15], v7, type metadata accessor for SFAirDropReceive.Failure);
      v17 = _s7Sharing16SFAirDropReceiveO7FailureO2eeoiySbAE_AEtFZ_0(v10, v7);
      sub_1A9925FA8(v7, type metadata accessor for SFAirDropReceive.Failure);
      sub_1A9925FA8(v10, type metadata accessor for SFAirDropReceive.Failure);
      sub_1A9925FA8(v14, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
      return v17 & 1;
    }

    sub_1A9925FA8(v10, type metadata accessor for SFAirDropReceive.Failure);
    goto LABEL_6;
  }

  if (v16(&v14[v15], 1, v4) != 1)
  {
LABEL_6:
    sub_1A97B06FC(v14, &qword_1EB3B6450, &qword_1A99AA3A0);
    v17 = 0;
    return v17 & 1;
  }

  sub_1A9925FA8(v14, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
  v17 = 1;
  return v17 & 1;
}

BOOL _s7Sharing16SFAirDropReceiveO8TransferV7MetricsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult(0);
  v50 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B63C8, &unk_1A99A9E20);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v48 = &v42 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6458, &qword_1A99AA3A8);
  MEMORY[0x1EEE9AC00](v49);
  v10 = &v42 - v9;
  v11 = sub_1A9976230();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v51 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A30, &unk_1A99983A0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v42 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B1EB8, &unk_1A99A5F30);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v42 - v18;
  if ((sub_1A99761E0() & 1) == 0)
  {
    return 0;
  }

  v46 = v4;
  v47 = v10;
  v43 = v6;
  v44 = type metadata accessor for SFAirDropReceive.Transfer.Metrics(0);
  v45 = a1;
  v20 = v44[5];
  v21 = *(v17 + 48);
  sub_1A97C13A4(a1 + v20, v19, &unk_1EB3B2A30, &unk_1A99983A0);
  sub_1A97C13A4(a2 + v20, &v19[v21], &unk_1EB3B2A30, &unk_1A99983A0);
  v22 = *(v12 + 48);
  if (v22(v19, 1, v11) == 1)
  {
    if (v22(&v19[v21], 1, v11) == 1)
    {
      sub_1A97B06FC(v19, &unk_1EB3B2A30, &unk_1A99983A0);
      goto LABEL_12;
    }

LABEL_7:
    v23 = &qword_1EB3B1EB8;
    v24 = &unk_1A99A5F30;
    v25 = v19;
LABEL_8:
    sub_1A97B06FC(v25, v23, v24);
    return 0;
  }

  sub_1A97C13A4(v19, v16, &unk_1EB3B2A30, &unk_1A99983A0);
  if (v22(&v19[v21], 1, v11) == 1)
  {
    (*(v12 + 8))(v16, v11);
    goto LABEL_7;
  }

  v27 = v51;
  (*(v12 + 32))(v51, &v19[v21], v11);
  sub_1A9925E1C(&qword_1EB3B1EC0, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v28 = sub_1A99767A0();
  v29 = *(v12 + 8);
  v29(v27, v11);
  v29(v16, v11);
  sub_1A97B06FC(v19, &unk_1EB3B2A30, &unk_1A99983A0);
  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_12:
  v30 = v44[6];
  v31 = *(v45 + v30);
  v32 = *(a2 + v30);
  if (v31 == 2)
  {
    v34 = v46;
    v33 = v47;
    if (v32 != 2)
    {
      return 0;
    }

    goto LABEL_17;
  }

  result = 0;
  v34 = v46;
  v33 = v47;
  if (v32 != 2 && ((v32 ^ v31) & 1) == 0)
  {
LABEL_17:
    v35 = v44[7];
    v36 = *(v49 + 48);
    sub_1A97C13A4(v45 + v35, v33, &qword_1EB3B63C8, &unk_1A99A9E20);
    sub_1A97C13A4(a2 + v35, v33 + v36, &qword_1EB3B63C8, &unk_1A99A9E20);
    v37 = *(v50 + 48);
    if (v37(v33, 1, v34) == 1)
    {
      if (v37(v33 + v36, 1, v34) == 1)
      {
        sub_1A97B06FC(v33, &qword_1EB3B63C8, &unk_1A99A9E20);
        return 1;
      }
    }

    else
    {
      v38 = v48;
      sub_1A97C13A4(v33, v48, &qword_1EB3B63C8, &unk_1A99A9E20);
      if (v37(v33 + v36, 1, v34) != 1)
      {
        v39 = v33 + v36;
        v40 = v43;
        sub_1A9925E64(v39, v43, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
        v41 = _s7Sharing16SFAirDropReceiveO8TransferV7MetricsV0E6ResultO2eeoiySbAI_AItFZ_0(v38, v40);
        sub_1A9925FA8(v40, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
        sub_1A9925FA8(v38, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
        sub_1A97B06FC(v33, &qword_1EB3B63C8, &unk_1A99A9E20);
        return (v41 & 1) != 0;
      }

      sub_1A9925FA8(v38, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
    }

    v23 = &qword_1EB3B6458;
    v24 = &qword_1A99AA3A8;
    v25 = v33;
    goto LABEL_8;
  }

  return result;
}

unint64_t sub_1A9925D20()
{
  result = qword_1EB3B6398;
  if (!qword_1EB3B6398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6398);
  }

  return result;
}

unint64_t sub_1A9925D74()
{
  result = qword_1EB3B63A0;
  if (!qword_1EB3B63A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B63A0);
  }

  return result;
}

unint64_t sub_1A9925DC8()
{
  result = qword_1EB3B63A8;
  if (!qword_1EB3B63A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B63A8);
  }

  return result;
}

uint64_t sub_1A9925E1C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A9925E64(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A9925EEC()
{
  result = qword_1EB3B63D8;
  if (!qword_1EB3B63D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B63D8);
  }

  return result;
}

uint64_t sub_1A9925F40(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A9925FA8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1A9926030(uint64_t a1)
{
  sub_1A9976230();
  if (v1 <= 0x3F)
  {
    sub_1A992616C(319, &qword_1EB3AC8A0, MEMORY[0x1E6969530]);
    if (v2 <= 0x3F)
    {
      sub_1A992611C();
      if (v3 <= 0x3F)
      {
        sub_1A992616C(319, &qword_1EB3AC540, type metadata accessor for SFAirDropReceive.Transfer.Metrics.TransferResult);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A992611C()
{
  if (!qword_1EB3AB698)
  {
    v0 = sub_1A99770A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AB698);
    }
  }
}

void sub_1A992616C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1A99770A0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1A99261E8(uint64_t a1)
{
  v1 = type metadata accessor for SFAirDropReceive.Failure(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

unint64_t sub_1A9926284()
{
  result = qword_1EB3B63F8;
  if (!qword_1EB3B63F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B63F8);
  }

  return result;
}

unint64_t sub_1A99262DC()
{
  result = qword_1EB3B6400;
  if (!qword_1EB3B6400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6400);
  }

  return result;
}

unint64_t sub_1A9926334()
{
  result = qword_1EB3B6408;
  if (!qword_1EB3B6408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6408);
  }

  return result;
}

unint64_t sub_1A992638C()
{
  result = qword_1EB3B6410;
  if (!qword_1EB3B6410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6410);
  }

  return result;
}

unint64_t sub_1A99263E4()
{
  result = qword_1EB3B6418;
  if (!qword_1EB3B6418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6418);
  }

  return result;
}

unint64_t sub_1A992643C()
{
  result = qword_1EB3B6420;
  if (!qword_1EB3B6420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6420);
  }

  return result;
}

unint64_t sub_1A9926494()
{
  result = qword_1EB3B6428;
  if (!qword_1EB3B6428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6428);
  }

  return result;
}

unint64_t sub_1A99264EC()
{
  result = qword_1EB3B6430;
  if (!qword_1EB3B6430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6430);
  }

  return result;
}

unint64_t sub_1A9926544()
{
  result = qword_1EB3B6438;
  if (!qword_1EB3B6438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6438);
  }

  return result;
}

unint64_t sub_1A992659C()
{
  result = qword_1EB3B6440;
  if (!qword_1EB3B6440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6440);
  }

  return result;
}

unint64_t sub_1A99265F4()
{
  result = qword_1EB3B6448;
  if (!qword_1EB3B6448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6448);
  }

  return result;
}

uint64_t sub_1A9926648(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7461447472617473 && a2 == 0xE900000000000065;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65746144646E65 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x76697469736E6573 && a2 == 0xE900000000000065 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746C75736572 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t SFAirDrop.ContactRequest.description.getter()
{
  v1 = *(v0 + 24);
  if (!v1)
  {
    return 0x6F70707553746F6ELL;
  }

  if (v1 == 1)
  {
    return 0x656465654E746F6ELL;
  }

  v3 = SFAirDrop.ContactInfo.description.getter();
  MEMORY[0x1AC5895B0](v3);

  MEMORY[0x1AC5895B0](41, 0xE100000000000000);
  return 0x28746361746E6F63;
}

uint64_t SFAirDrop.ContactRequest.contact.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 3);
  if (v3 >= 2)
  {
    v4 = *v1;
    *a1 = *v1;
    v5 = *(v1 + 2);
    *(a1 + 16) = v5;
    v6 = v1[2];
    v7 = v1[3];
    *(a1 + 32) = v6;
    *(a1 + 48) = v7;
    v8 = *(v1 + 8);
    *(a1 + 64) = v8;
    v11 = v4;
    v12 = v5;
    v13 = v3;
    v14 = v6;
    v15 = v7;
    v16 = v8;
    result = sub_1A97B44C0(&v11, v10);
  }

  else
  {
    v3 = 0;
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 32) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0;
  }

  *(a1 + 24) = v3;
  return result;
}

uint64_t sub_1A9926928()
{
  v1 = 0x656465654E746F6ELL;
  if (*v0 != 1)
  {
    v1 = 0x746361746E6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F70707553746F6ELL;
  }
}

uint64_t sub_1A9926990@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9927DF8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A99269B8(uint64_t a1)
{
  v2 = sub_1A99277E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A99269F4(uint64_t a1)
{
  v2 = sub_1A99277E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9926A30(uint64_t a1)
{
  v2 = sub_1A9927834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9926A6C(uint64_t a1)
{
  v2 = sub_1A9927834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9926AA8(uint64_t a1)
{
  v2 = sub_1A9927888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9926AE4(uint64_t a1)
{
  v2 = sub_1A9927888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9926B20(uint64_t a1)
{
  v2 = sub_1A99278DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9926B5C(uint64_t a1)
{
  v2 = sub_1A99278DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.ContactRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6460, &qword_1A99AA3B0);
  v28 = *(v3 - 8);
  v29 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v21 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6468, &qword_1A99AA3B8);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6470, &qword_1A99AA3C0);
  v22 = *(v8 - 8);
  v23 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v21 - v9;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6478, &qword_1A99AA3C8);
  v11 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v13 = &v21 - v12;
  v27 = v1;
  v14 = *(v1 + 3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A99277E0();
  sub_1A9977AA0();
  if (v14 == 1)
  {
    LOBYTE(v31) = 1;
    sub_1A9927888();
    v17 = v30;
    sub_1A9977640();
    (*(v24 + 8))(v7, v25);
    return (*(v11 + 8))(v13, v17);
  }

  else
  {
    if (v14)
    {
      LOBYTE(v31) = 2;
      sub_1A9927834();
      v18 = v26;
      v15 = v30;
      sub_1A9977640();
      v31 = *v27;
      v32 = *(v27 + 2);
      v33 = v14;
      v19 = v27[3];
      v34 = v27[2];
      v35 = v19;
      v36 = *(v27 + 8);
      sub_1A97D7AEC();
      v20 = v29;
      sub_1A99776E0();
      (*(v28 + 8))(v18, v20);
    }

    else
    {
      LOBYTE(v31) = 0;
      sub_1A99278DC();
      v15 = v30;
      sub_1A9977640();
      (*(v22 + 8))(v10, v23);
    }

    return (*(v11 + 8))(v13, v15);
  }
}

uint64_t SFAirDrop.ContactRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B64A0, &qword_1A99AA3D0);
  v42 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v44 = &v37 - v3;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B64A8, &qword_1A99AA3D8);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v5 = &v37 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B64B0, &qword_1A99AA3E0);
  v39 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B64B8, &unk_1A99AA3E8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v37 - v11;
  v13 = a1[3];
  v56 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1A99277E0();
  v14 = v46;
  sub_1A9977A70();
  if (!v14)
  {
    v37 = v6;
    v38 = 0;
    v15 = v43;
    v46 = v10;
    v16 = v45;
    v17 = sub_1A9977620();
    v18 = (2 * *(v17 + 16)) | 1;
    v52 = v17;
    v53 = v17 + 32;
    v54 = 0;
    v55 = v18;
    v19 = sub_1A97B297C();
    if (v19 == 3 || v54 != v55 >> 1)
    {
      v25 = sub_1A9977300();
      swift_allocError();
      v27 = v26;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v27 = &type metadata for SFAirDrop.ContactRequest;
      v20 = v12;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
      swift_willThrow();
    }

    else if (v19)
    {
      if (v19 != 1)
      {
        LOBYTE(v47) = 2;
        sub_1A9927834();
        v33 = v12;
        v34 = v38;
        sub_1A9977530();
        if (!v34)
        {
          v32 = v16;
          sub_1A97D8218();
          v35 = v40;
          sub_1A99775F0();
          v36 = v46;
          (*(v42 + 8))(0, v35);
          (*(v36 + 8))(v33, v9);
          swift_unknownObjectRelease();
          v24 = v47;
          v23 = v48;
          v30 = v49;
          v31 = v50;
          v22 = v51;
          goto LABEL_15;
        }

        (*(v46 + 8))(v12, v9);
        goto LABEL_10;
      }

      LOBYTE(v47) = 1;
      sub_1A9927888();
      v20 = v12;
      v21 = v38;
      sub_1A9977530();
      if (!v21)
      {
        (*(v41 + 8))(v5, v15);
        (*(v46 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v22 = 0;
        v23 = xmmword_1A998EED0;
        v24 = 0uLL;
LABEL_14:
        v30 = 0uLL;
        v31 = 0uLL;
        v32 = v16;
LABEL_15:
        *v32 = v24;
        *(v32 + 16) = v23;
        *(v32 + 32) = v30;
        *(v32 + 48) = v31;
        *(v32 + 64) = v22;
        return __swift_destroy_boxed_opaque_existential_0Tm(v56);
      }
    }

    else
    {
      LOBYTE(v47) = 0;
      sub_1A99278DC();
      v20 = v12;
      v29 = v38;
      sub_1A9977530();
      if (!v29)
      {
        (*(v39 + 8))(v8, v37);
        (*(v46 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v22 = 0;
        v24 = 0uLL;
        v23 = 0uLL;
        goto LABEL_14;
      }
    }

    (*(v46 + 8))(v20, v9);
LABEL_10:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v56);
}

BOOL _s7Sharing9SFAirDropO14ContactRequestO2eeoiySbAE_AEtFZ_0(__int128 *a1, __int128 *a2)
{
  v2 = a1[3];
  v3 = a1[1];
  v29 = a1[2];
  v30 = v2;
  v4 = a1[1];
  v27 = *a1;
  v28 = v4;
  v5 = a2[3];
  v6 = a2[1];
  v33 = a2[2];
  v34 = v5;
  v7 = a2[1];
  v32[0] = *a2;
  v32[1] = v7;
  v8 = a1[3];
  v36[2] = v29;
  v36[3] = v8;
  v36[0] = v27;
  v36[1] = v3;
  v38 = v32[0];
  v41 = a2[3];
  v40 = v33;
  v31 = *(a1 + 8);
  v35 = *(a2 + 8);
  v9 = *(a2 + 8);
  v37 = *(a1 + 8);
  v42 = v9;
  v39 = v6;
  if (*(&v4 + 1) != 1)
  {
    if (*(&v28 + 1))
    {
      if (*(&v7 + 1) >= 2uLL)
      {
        v21 = *a1;
        v22 = *(a1 + 2);
        v23 = *(&v28 + 1);
        v11 = a1[3];
        v24 = a1[2];
        v25 = v11;
        v26 = *(a1 + 8);
        v15 = *a2;
        v16 = *(a2 + 2);
        v17 = *(&v7 + 1);
        v12 = a2[3];
        v18 = a2[2];
        v19 = v12;
        v20 = *(a2 + 8);
        sub_1A9927F1C(v32, v14);
        sub_1A9927F1C(&v27, v14);
        sub_1A9927F1C(v32, v14);
        sub_1A9927F1C(&v27, v14);
        v10 = _s7Sharing9SFAirDropO11ContactInfoV2eeoiySbAE_AEtFZ_0(&v21, &v15);
        sub_1A9927F54(v36);
        sub_1A97D7A44(v32);
        sub_1A97D7A44(&v27);
        return v10;
      }
    }

    else if (!*(&v7 + 1))
    {
      goto LABEL_6;
    }

LABEL_8:
    sub_1A9927F1C(v32, &v21);
    sub_1A9927F1C(&v27, &v21);
    sub_1A9927F54(v36);
    return 0;
  }

  if (*(&v7 + 1) != 1)
  {
    goto LABEL_8;
  }

LABEL_6:
  sub_1A9927F54(v36);
  return 1;
}

unint64_t sub_1A99277E0()
{
  result = qword_1EB3B6480;
  if (!qword_1EB3B6480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6480);
  }

  return result;
}

unint64_t sub_1A9927834()
{
  result = qword_1EB3B6488;
  if (!qword_1EB3B6488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6488);
  }

  return result;
}

unint64_t sub_1A9927888()
{
  result = qword_1EB3B6490;
  if (!qword_1EB3B6490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6490);
  }

  return result;
}

unint64_t sub_1A99278DC()
{
  result = qword_1EB3B6498;
  if (!qword_1EB3B6498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6498);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_7Sharing9SFAirDropO14ContactRequestO(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1A9927948(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 72))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A992799C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 64) = 0;
    *(result + 32) = 0u;
    *(result + 48) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

double sub_1A9927A04(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

unint64_t sub_1A9927A8C()
{
  result = qword_1EB3B64C0;
  if (!qword_1EB3B64C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64C0);
  }

  return result;
}

unint64_t sub_1A9927AE4()
{
  result = qword_1EB3B64C8;
  if (!qword_1EB3B64C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64C8);
  }

  return result;
}

unint64_t sub_1A9927B3C()
{
  result = qword_1EB3B64D0;
  if (!qword_1EB3B64D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64D0);
  }

  return result;
}

unint64_t sub_1A9927B94()
{
  result = qword_1EB3B64D8;
  if (!qword_1EB3B64D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64D8);
  }

  return result;
}

unint64_t sub_1A9927BEC()
{
  result = qword_1EB3B64E0;
  if (!qword_1EB3B64E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64E0);
  }

  return result;
}

unint64_t sub_1A9927C44()
{
  result = qword_1EB3B64E8;
  if (!qword_1EB3B64E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64E8);
  }

  return result;
}

unint64_t sub_1A9927C9C()
{
  result = qword_1EB3B64F0;
  if (!qword_1EB3B64F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64F0);
  }

  return result;
}

unint64_t sub_1A9927CF4()
{
  result = qword_1EB3B64F8;
  if (!qword_1EB3B64F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B64F8);
  }

  return result;
}

unint64_t sub_1A9927D4C()
{
  result = qword_1EB3B6500;
  if (!qword_1EB3B6500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6500);
  }

  return result;
}

unint64_t sub_1A9927DA4()
{
  result = qword_1EB3B6508;
  if (!qword_1EB3B6508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6508);
  }

  return result;
}

uint64_t sub_1A9927DF8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656465654E746F6ELL && a2 == 0xE900000000000064 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746361746E6F63 && a2 == 0xE700000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1A99777E0();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1A9927F54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6510, &qword_1A99AA988);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9927FBC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x6E776F6E6B6E75;
  v3 = a1;
  v4 = 0x6D79615072656570;
  v5 = 0xEB00000000746E65;
  v6 = 0xE400000000000000;
  if (a1 != 5)
  {
    v4 = 1230324804;
    v5 = 0xE400000000000000;
  }

  v7 = 1952802157;
  if (a1 != 3)
  {
    v7 = 0x6572616873;
    v6 = 0xE500000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0x636972656E6567;
  if (a1 != 1)
  {
    v8 = 0x706F7244726961;
  }

  if (!a1)
  {
    v8 = 0x6E776F6E6B6E75;
  }

  if (a1 <= 2u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v4;
  }

  if (v3 <= 2)
  {
    v10 = 0xE700000000000000;
  }

  else
  {
    v10 = v5;
  }

  if (a2 <= 2u)
  {
    v11 = 0xE700000000000000;
    if (a2)
    {
      if (a2 == 1)
      {
        if (v9 != 0x636972656E6567)
        {
          goto LABEL_36;
        }
      }

      else if (v9 != 0x706F7244726961)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v11 = 0xEB00000000746E65;
        if (v9 != 0x6D79615072656570)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v11 = 0xE400000000000000;
        if (v9 != 1230324804)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v11 = 0xE400000000000000;
      if (v9 != 1952802157)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v11 = 0xE500000000000000;
    v2 = 0x6572616873;
  }

  if (v9 != v2)
  {
LABEL_36:
    v12 = sub_1A99777E0();
    goto LABEL_37;
  }

LABEL_33:
  if (v10 != v11)
  {
    goto LABEL_36;
  }

  v12 = 1;
LABEL_37:

  return v12 & 1;
}

uint64_t sub_1A99281B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xED0000544341544ELL;
  if (a1 > 3u)
  {
    v3 = 0x80000001A99E2640;
    if (a1 == 6)
    {
      v9 = 0xD000000000000024;
    }

    else
    {
      v9 = 0x4F435F454259414DLL;
    }

    if (a1 != 6)
    {
      v3 = 0xED0000544341544ELL;
    }

    v5 = 0x80000001A99E25E0;
    if (a1 != 4)
    {
      v5 = 0x80000001A99E2610;
    }

    v7 = a1 <= 5u;
    if (a1 <= 5u)
    {
      v8 = 0xD000000000000023;
    }

    else
    {
      v8 = v9;
    }
  }

  else
  {
    v3 = 0x80000001A99E2590;
    v4 = 0xD000000000000025;
    if (a1 != 2)
    {
      v4 = 0xD000000000000017;
      v3 = 0x80000001A99E25C0;
    }

    v5 = 0x80000001A99E2530;
    v6 = 0xD000000000000022;
    if (a1)
    {
      v5 = 0x80000001A99E2560;
    }

    else
    {
      v6 = 0xD000000000000023;
    }

    v7 = a1 <= 1u;
    if (a1 <= 1u)
    {
      v8 = v6;
    }

    else
    {
      v8 = v4;
    }
  }

  if (v7)
  {
    v10 = v5;
  }

  else
  {
    v10 = v3;
  }

  if (a2 > 3u)
  {
    if (a2 <= 5u)
    {
      if (a2 == 4)
      {
        v11 = "ASK_TO_AIRDROP_RECEIVER_PRIVACY_ONE";
      }

      else
      {
        v11 = "ASK_TO_AIRDROP_RECEIVER_PRIVACY_TWO";
      }

LABEL_39:
      v2 = (v11 - 32) | 0x8000000000000000;
      if (v8 != 0xD000000000000023)
      {
        goto LABEL_46;
      }

      goto LABEL_44;
    }

    if (a2 == 6)
    {
      v2 = 0x80000001A99E2640;
      if (v8 != 0xD000000000000024)
      {
        goto LABEL_46;
      }
    }

    else if (v8 != 0x4F435F454259414DLL)
    {
LABEL_46:
      v12 = sub_1A99777E0();
      goto LABEL_47;
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v2 = 0x80000001A99E2590;
      if (v8 != 0xD000000000000025)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v2 = 0x80000001A99E25C0;
      if (v8 != 0xD000000000000017)
      {
        goto LABEL_46;
      }
    }
  }

  else
  {
    if (!a2)
    {
      v11 = "ASK_TO_AIRDROP_SENDER_PRIVACY_TITLE";
      goto LABEL_39;
    }

    v2 = 0x80000001A99E2560;
    if (v8 != 0xD000000000000022)
    {
      goto LABEL_46;
    }
  }

LABEL_44:
  if (v10 != v2)
  {
    goto LABEL_46;
  }

  v12 = 1;
LABEL_47:

  return v12 & 1;
}

uint64_t sub_1A9928400(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 > 3u)
  {
    v9 = 0x436C6F72746E6F43;
    v10 = 0xED00007265746E65;
    if (a1 != 6)
    {
      v9 = 0x73746361746E6F63;
      v10 = 0xE900000000000064;
    }

    v11 = 0xE600000000000000;
    v12 = 0x7265646E6946;
    if (a1 != 4)
    {
      v12 = 0x6F42676E69727053;
      v11 = 0xEB00000000647261;
    }

    if (a1 <= 5u)
    {
      v7 = v12;
    }

    else
    {
      v7 = v9;
    }

    if (v2 <= 5)
    {
      v8 = v11;
    }

    else
    {
      v8 = v10;
    }
  }

  else
  {
    v3 = 0xE800000000000000;
    v4 = 0xE700000000000000;
    v5 = 0x706F7244726941;
    if (a1 != 2)
    {
      v5 = 0x55706F7244726941;
      v4 = 0xE900000000000049;
    }

    v6 = 0xD000000000000012;
    if (a1)
    {
      v3 = 0x80000001A99E24C0;
    }

    else
    {
      v6 = 0x64676E6972616873;
    }

    if (a1 <= 1u)
    {
      v7 = v6;
    }

    else
    {
      v7 = v5;
    }

    if (v2 <= 1)
    {
      v8 = v3;
    }

    else
    {
      v8 = v4;
    }
  }

  if (a2 > 3u)
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v13 = 0xED00007265746E65;
        if (v7 != 0x436C6F72746E6F43)
        {
          goto LABEL_47;
        }
      }

      else
      {
        v13 = 0xE900000000000064;
        if (v7 != 0x73746361746E6F63)
        {
LABEL_47:
          v14 = sub_1A99777E0();
          goto LABEL_48;
        }
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xE600000000000000;
      if (v7 != 0x7265646E6946)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xEB00000000647261;
      if (v7 != 0x6F42676E69727053)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2 > 1u)
  {
    if (a2 == 2)
    {
      v13 = 0xE700000000000000;
      if (v7 != 0x706F7244726941)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v13 = 0xE900000000000049;
      if (v7 != 0x55706F7244726941)
      {
        goto LABEL_47;
      }
    }
  }

  else if (a2)
  {
    v13 = 0x80000001A99E24C0;
    if (v7 != 0xD000000000000012)
    {
      goto LABEL_47;
    }
  }

  else
  {
    v13 = 0xE800000000000000;
    if (v7 != 0x64676E6972616873)
    {
      goto LABEL_47;
    }
  }

  if (v8 != v13)
  {
    goto LABEL_47;
  }

  v14 = 1;
LABEL_48:

  return v14 & 1;
}

uint64_t sub_1A99286B8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD00000000000001CLL;
  v3 = "";
  if (a1 <= 3u)
  {
    v4 = "ySubjectOtherContactsCount";
    v5 = 0xD000000000000022;
    if (a1 != 2)
    {
      v5 = 0xD000000000000026;
      v4 = "ySubjectEventTitle";
    }

    v8 = "SFAirDropActivitySubjectMain";
    v9 = 0xD00000000000002ALL;
    if (!a1)
    {
      v9 = 0xD00000000000001CLL;
      v8 = "";
    }

    v10 = a1 <= 1u;
  }

  else
  {
    v4 = "ySubjectiTunesStoreLinkType";
    v5 = 0xD000000000000024;
    v6 = "ySubjectMapsLinkType";
    v7 = 0xD000000000000028;
    if (a1 != 7)
    {
      v7 = 0xD000000000000020;
      v6 = "ySubjectMusicAppLinkType";
    }

    if (a1 != 6)
    {
      v5 = v7;
      v4 = v6;
    }

    v8 = "ySubjectEventStartDate";
    v9 = 0xD000000000000025;
    if (a1 != 4)
    {
      v9 = 0xD00000000000002BLL;
      v8 = "ySubjectEventIsAllDay";
    }

    v10 = a1 <= 5u;
  }

  if (v10)
  {
    v11 = v9;
  }

  else
  {
    v11 = v5;
  }

  if (v10)
  {
    v12 = v8;
  }

  else
  {
    v12 = v4;
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 == 2)
      {
        v3 = "ySubjectOtherContactsCount";
        v2 = 0xD000000000000022;
      }

      else
      {
        v3 = "ySubjectEventTitle";
        v2 = 0xD000000000000026;
      }
    }

    else if (a2)
    {
      v3 = "SFAirDropActivitySubjectMain";
      v2 = 0xD00000000000002ALL;
    }
  }

  else if (a2 <= 5u)
  {
    if (a2 == 4)
    {
      v3 = "ySubjectEventStartDate";
      v2 = 0xD000000000000025;
    }

    else
    {
      v3 = "ySubjectEventIsAllDay";
      v2 = 0xD00000000000002BLL;
    }
  }

  else if (a2 == 6)
  {
    v3 = "ySubjectiTunesStoreLinkType";
    v2 = 0xD000000000000024;
  }

  else if (a2 == 7)
  {
    v3 = "ySubjectMapsLinkType";
    v2 = 0xD000000000000028;
  }

  else
  {
    v3 = "ySubjectMusicAppLinkType";
    v2 = 0xD000000000000020;
  }

  if (v11 == v2 && (v12 | 0x8000000000000000) == (v3 | 0x8000000000000000))
  {
    v13 = 1;
  }

  else
  {
    v13 = sub_1A99777E0();
  }

  return v13 & 1;
}

uint64_t sub_1A99288F0(uint64_t a1, unsigned __int8 a2)
{
  sub_1A99768D0();
}

uint64_t sub_1A9928A3C(uint64_t a1, unsigned __int8 a2)
{
  sub_1A99768D0();
}

uint64_t sub_1A9928B8C(uint64_t a1, unsigned __int8 a2)
{
  sub_1A99768D0();
}

uint64_t sub_1A9928CBC(uint64_t a1, unsigned __int8 a2)
{
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

uint64_t sub_1A9928E20(uint64_t a1, unsigned __int8 a2)
{
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

uint64_t sub_1A9928F80(uint64_t a1, unsigned __int8 a2)
{
  sub_1A9977980();
  sub_1A99768D0();

  return sub_1A99779B0();
}

uint64_t sub_1A992924C(uint64_t a1)
{
  v2 = sub_1A9929914();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9929288(uint64_t a1)
{
  v2 = sub_1A9929914();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A99292C4()
{
  v1 = 0x65766973736170;
  if (*v0 != 1)
  {
    v1 = 1819047270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6974616D6F747561;
  }
}

uint64_t sub_1A992931C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9934A84(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9929344(uint64_t a1)
{
  v2 = sub_1A9929818();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9929380(uint64_t a1)
{
  v2 = sub_1A9929818();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A99293BC(uint64_t a1)
{
  v2 = sub_1A992986C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A99293F8(uint64_t a1)
{
  v2 = sub_1A992986C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9929434(uint64_t a1)
{
  v2 = sub_1A99298C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9929470(uint64_t a1)
{
  v2 = sub_1A99298C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingDiscovery.PollingType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6520, &qword_1A99AA998);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6528, &qword_1A99AA9A0);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6530, &qword_1A99AA9A8);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6538, &qword_1A99AA9B0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9929818();
  sub_1A9977AA0();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      sub_1A99298C0();
      v9 = v21;
      sub_1A9977640();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      sub_1A992986C();
      v9 = v24;
      sub_1A9977640();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    sub_1A9929914();
    sub_1A9977640();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

unint64_t sub_1A9929818()
{
  result = qword_1EB3ABBE0;
  if (!qword_1EB3ABBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBE0);
  }

  return result;
}

unint64_t sub_1A992986C()
{
  result = qword_1EB3B6540;
  if (!qword_1EB3B6540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6540);
  }

  return result;
}

unint64_t sub_1A99298C0()
{
  result = qword_1EB3B6548;
  if (!qword_1EB3B6548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6548);
  }

  return result;
}

unint64_t sub_1A9929914()
{
  result = qword_1EB3ABBA8;
  if (!qword_1EB3ABBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABBA8);
  }

  return result;
}

uint64_t SFAirDrop.NearbySharingDiscovery.PollingType.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFAirDrop.NearbySharingDiscovery.PollingType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6550, &qword_1A99AA9B8);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6558, &qword_1A99AA9C0);
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6560, &qword_1A99AA9C8);
  v29 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6568, &unk_1A99AA9D0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1A9929818();
  v15 = v36;
  sub_1A9977A70();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = sub_1A9977620();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = sub_1A97B297C();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = sub_1A9977300();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v24 = &type metadata for SFAirDrop.NearbySharingDiscovery.PollingType;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x1E69E6AF8], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          sub_1A99298C0();
          sub_1A9977530();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          sub_1A992986C();
          v26 = v17;
          sub_1A9977530();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        sub_1A9929914();
        sub_1A9977530();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.pollingType.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.publicKey.getter()
{
  v1 = v0 + *(type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0) + 28);
  v2 = *v1;
  sub_1A97C1554(*v1, *(v1 + 8));
  return v2;
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.publicKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0) + 28);
  result = sub_1A97D8688(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.init(pollingType:applicationLabel:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0);
  *(a4 + v8[7]) = xmmword_1A999DA90;
  sub_1A99762B0();
  *(a4 + v8[5]) = v7;
  result = sub_1A9976980();
  if ((result & 1) == 0)
  {
    MEMORY[0x1AC5895B0](a2, a3);

    MEMORY[0x1AC5895B0](46, 0xE100000000000000);

    a2 = 0xD000000000000011;
    a3 = 0x80000001A99E2EC0;
  }

  v10 = (a4 + v8[6]);
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.init(pollingType:applicationLabel:publicKey:)@<X0>(char *a1@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = *a1;
  SFAirDrop.NearbySharingDiscovery.Request.init(pollingType:applicationLabel:)(&v11, a2, a3, a6);
  v9 = a6 + *(type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0) + 28);
  result = sub_1A97D8688(*v9, *(v9 + 8));
  *v9 = a4;
  *(v9 + 8) = a5;
  return result;
}

unint64_t sub_1A992A218()
{
  v1 = 25705;
  v2 = 0xD000000000000010;
  if (*v0 != 2)
  {
    v2 = 0x654B63696C627570;
  }

  if (*v0)
  {
    v1 = 0x54676E696C6C6F70;
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

uint64_t sub_1A992A298@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9934BA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A992A2C0(uint64_t a1)
{
  v2 = sub_1A992A590();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992A2FC(uint64_t a1)
{
  v2 = sub_1A992A590();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6570, &qword_1A99AA9E0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A992A590();
  sub_1A9977AA0();
  LOBYTE(v14) = 0;
  sub_1A99762C0();
  sub_1A992AAB8(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1A99776E0();
  if (!v2)
  {
    v9 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0);
    LOBYTE(v14) = *(v3 + *(v9 + 20));
    v16 = 1;
    sub_1A992A5E4();
    sub_1A99776E0();
    LOBYTE(v14) = 2;
    sub_1A9977690();
    v10 = (v3 + *(v9 + 28));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v16 = 3;
    sub_1A97C1554(v14, v11);
    sub_1A97B4370();
    sub_1A9977680();
    sub_1A97D8688(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A992A590()
{
  result = qword_1EB3ABB80;
  if (!qword_1EB3ABB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABB80);
  }

  return result;
}

unint64_t sub_1A992A5E4()
{
  result = qword_1EB3ABB90;
  if (!qword_1EB3ABB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABB90);
  }

  return result;
}

uint64_t SFAirDrop.NearbySharingDiscovery.Request.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = sub_1A99762C0();
  v28 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v31 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6578, &qword_1A99AA9E8);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request(0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = &v12[*(v10 + 28)];
  *v32 = xmmword_1A999DA90;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A992A590();
  sub_1A9977A70();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_1A97D8688(*v32, *(v32 + 1));
  }

  else
  {
    v13 = v12;
    v14 = v28;
    LOBYTE(v33) = 0;
    sub_1A992AAB8(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v15 = v30;
    sub_1A99775F0();
    v16 = *(v14 + 32);
    v17 = v13;
    v18 = v31;
    v31 = v4;
    v16(v13, v18, v4);
    v35 = 1;
    sub_1A992AB00();
    sub_1A99775F0();
    v13[*(v9 + 20)] = v33;
    LOBYTE(v33) = 2;
    v19 = sub_1A99775A0();
    v20 = v29;
    v21 = (v17 + *(v9 + 24));
    *v21 = v19;
    v21[1] = v22;
    v35 = 3;
    sub_1A97B446C();
    sub_1A9977590();
    (*(v20 + 8))(v8, v15);
    v23 = v33;
    v24 = v34;
    v25 = v32;
    sub_1A97D8688(*v32, *(v32 + 1));
    *v25 = v23;
    *(v25 + 1) = v24;
    sub_1A992AB54(v17, v27, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_1A992B5F4(v17, type metadata accessor for SFAirDrop.NearbySharingDiscovery.Request);
  }
}

uint64_t sub_1A992AAB8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A992AB00()
{
  result = qword_1EB3ABB88;
  if (!qword_1EB3ABB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ABB88);
  }

  return result;
}

uint64_t sub_1A992AB54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t SFAirDrop.NearbySharingAssertion.nearbySharingInteractionID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDrop.NearbySharingAssertion(0) + 20);
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_1A992ACA0(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 24));

  return v2;
}

uint64_t SFAirDrop.NearbySharingAssertion.init(nearbySharingInteractionID:explanation:client:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1A99762B0();
  v10 = type metadata accessor for SFAirDrop.NearbySharingAssertion(0);
  v11 = v10[5];
  v12 = sub_1A99762C0();
  (*(*(v12 - 8) + 32))(a5 + v11, a1, v12);
  v13 = (a5 + v10[6]);
  *v13 = a2;
  v13[1] = a3;
  return sub_1A9932D14(a4, a5 + v10[7], type metadata accessor for SFClientIdentity);
}

uint64_t SFAirDrop.NearbySharingAssertionRequest.explanation.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0) + 20));

  return v1;
}

uint64_t SFAirDrop.NearbySharingAssertionRequest.init(nearbySharingInteractionID:explanation:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = sub_1A99762C0();
  (*(*(v8 - 8) + 32))(a4, a1, v8);
  result = type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0);
  v10 = (a4 + *(result + 20));
  *v10 = a2;
  v10[1] = a3;
  return result;
}

uint64_t sub_1A992AEE0()
{
  if (*v0)
  {
    return 0x74616E616C707865;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1A992AF28@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD00000000000001ALL && 0x80000001A99E8630 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x74616E616C707865 && a2 == 0xEB000000006E6F69)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1A99777E0();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_1A992B014(uint64_t a1)
{
  v2 = sub_1A992B248();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992B050(uint64_t a1)
{
  v2 = sub_1A992B248();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingAssertionRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6580, &qword_1A99AA9F0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A992B248();
  sub_1A9977AA0();
  v8[15] = 0;
  sub_1A99762C0();
  sub_1A992AAB8(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1A99776E0();
  if (!v1)
  {
    type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0);
    v8[14] = 1;
    sub_1A9977690();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A992B248()
{
  result = qword_1EB3B6588;
  if (!qword_1EB3B6588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B6588);
  }

  return result;
}

uint64_t SFAirDrop.NearbySharingAssertionRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1A99762C0();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6590, &qword_1A99AA9F8);
  v24 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for SFAirDrop.NearbySharingAssertionRequest(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A992B248();
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_1A992AAB8(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v26;
  sub_1A99775F0();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_1A99775A0();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_1A992AB54(v19, v18, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A992B5F4(v19, type metadata accessor for SFAirDrop.NearbySharingAssertionRequest);
}

uint64_t sub_1A992B5F4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1A992B690(uint64_t a1)
{
  v2 = sub_1A992B81C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992B6CC(uint64_t a1)
{
  v2 = sub_1A992B81C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingInteraction.PresenceContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6598, &unk_1A99AAA00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A992B81C();
  sub_1A9977AA0();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_1A992B81C()
{
  result = qword_1EB3B65A0;
  if (!qword_1EB3B65A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B65A0);
  }

  return result;
}

uint64_t sub_1A992B898(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6598, &unk_1A99AAA00);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A992B81C();
  sub_1A9977AA0();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A9977510();

  v6 = 7;
  if (v4 < 7)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 0x6D79615072656570;
  if (v1 != 5)
  {
    v3 = 1230324804;
  }

  v4 = 1952802157;
  if (v1 != 3)
  {
    v4 = 0x6572616873;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x636972656E6567;
  if (v1 != 1)
  {
    v5 = 0x706F7244726961;
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

uint64_t sub_1A992BAEC(uint64_t a1)
{
  sub_1A99768D0();
}

void sub_1A992BC00(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x6E776F6E6B6E75;
  v5 = 0xEB00000000746E65;
  v6 = 0x6D79615072656570;
  v7 = 0xE400000000000000;
  if (v2 != 5)
  {
    v6 = 1230324804;
    v5 = 0xE400000000000000;
  }

  v8 = 1952802157;
  if (v2 != 3)
  {
    v8 = 0x6572616873;
    v7 = 0xE500000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x636972656E6567;
  if (v2 != 1)
  {
    v9 = 0x706F7244726961;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = 0xE700000000000000;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.contactIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 24));

  return v1;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.contactIdentifier.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 28));

  return v1;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceName.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceModel.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 32));

  return v1;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.deviceModel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 32));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.accountID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 36));

  return v1;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.accountID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 36));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.isSameAccount.setter(char a1)
{
  result = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.transactionIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 44);
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.transactionIdentifier.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 44);
  v4 = sub_1A99762C0();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.publicKey.getter()
{
  v1 = v0 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 52);
  v2 = *v1;
  sub_1A97C1554(*v1, *(v1 + 8));
  return v2;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.publicKey.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0) + 52);
  result = sub_1A97D8688(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.init(type:transactionIdentifier:endpointIdentifier:contactIdentifier:deviceName:deviceModel:accountID:isSameAccount:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, unsigned __int8 a13)
{
  v53 = a7;
  v54 = a8;
  v52 = a6;
  v51 = a13;
  v49 = a12;
  v50 = a5;
  v47 = a11;
  v48 = a4;
  v45 = a2;
  v46 = a10;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = v19;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v38 - v20;
  v42 = &v38 - v20;
  sub_1A97B06FC(a3, &unk_1EB3B29B0, &qword_1A9990640);
  v43 = *a1;
  v22 = sub_1A99762C0();
  v23 = *(v22 - 8);
  v24 = *(v23 + 56);
  v24(v21, 1, 1, v22);
  v24(v19, 1, 1, v22);
  v25 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v41 = v25[5];
  v24(&a9[v41], 1, 1, v22);
  v26 = &a9[v25[6]];
  v39 = &a9[v25[7]];
  v27 = &a9[v25[8]];
  v28 = &a9[v25[9]];
  v40 = v25[10];
  v29 = v25[12];
  v24(&a9[v29], 1, 1, v22);
  v30 = &a9[v25[13]];
  v38 = xmmword_1A999DA90;
  *v30 = xmmword_1A999DA90;
  *a9 = v43;
  (*(v23 + 32))(&a9[v25[11]], v45, v22);
  sub_1A98F5488(v42, &a9[v29], &unk_1EB3B29B0, &qword_1A9990640);
  sub_1A97D8688(*v30, *(v30 + 1));
  *v30 = v38;
  result = sub_1A98F5488(v44, &a9[v41], &unk_1EB3B29B0, &qword_1A9990640);
  v32 = v50;
  *v26 = v48;
  v26[1] = v32;
  v33 = v53;
  v35 = v39;
  v34 = v40;
  *v39 = v52;
  v35[1] = v33;
  v36 = v46;
  *v27 = v54;
  v27[1] = v36;
  v37 = v49;
  *v28 = v47;
  v28[1] = v37;
  a9[v34] = v51;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.init(type:transactionIdentifier:bonjourListenerUUID:publicKey:endpointIdentifier:contactIdentifier:deviceName:deviceModel:accountID:isSameAccount:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _BYTE *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  v28 = *a1;
  v17 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v18 = v17[5];
  v31 = v18;
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 56);
  v21(&a9[v18], 1, 1, v19);
  v22 = &a9[v17[6]];
  v29 = &a9[v17[7]];
  v23 = &a9[v17[8]];
  v24 = &a9[v17[9]];
  v30 = v17[10];
  v25 = v17[12];
  v21(&a9[v25], 1, 1, v19);
  v26 = &a9[v17[13]];
  *v26 = xmmword_1A999DA90;
  *a9 = v28;
  (*(v20 + 32))(&a9[v17[11]], a2, v19);
  sub_1A98F5488(a3, &a9[v25], &unk_1EB3B29B0, &qword_1A9990640);
  sub_1A97D8688(*v26, *(v26 + 1));
  *v26 = a4;
  *(v26 + 1) = a5;
  result = sub_1A98F5488(a6, &a9[v31], &unk_1EB3B29B0, &qword_1A9990640);
  *v22 = a7;
  v22[1] = a8;
  *v29 = a10;
  v29[1] = a11;
  *v23 = a12;
  v23[1] = a13;
  *v24 = a14;
  v24[1] = a15;
  a9[v30] = a16;
  return result;
}

uint64_t sub_1A992CA3C(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v4 = 0xD000000000000013;
    if (a1 != 8)
    {
      v4 = 0x654B63696C627570;
    }

    if (a1 == 7)
    {
      v4 = 0xD000000000000015;
    }

    v5 = 0x49746E756F636361;
    if (a1 != 5)
    {
      v5 = 0x6341656D61537369;
    }

    if (a1 <= 6u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v1 = 1701869940;
    v2 = 0x614E656369766564;
    if (a1 != 3)
    {
      v2 = 0x6F4D656369766564;
    }

    if (a1 == 2)
    {
      v2 = 0xD000000000000011;
    }

    if (a1)
    {
      v1 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1A992CBA4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9934D14(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A992CBCC(uint64_t a1)
{
  v2 = sub_1A99329CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992CC08(uint64_t a1)
{
  v2 = sub_1A99329CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B65A8, &qword_1A99AAA10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A99329CC();
  sub_1A9977AA0();
  LOBYTE(v13) = *v3;
  v15 = 0;
  sub_1A9932A20();
  sub_1A99776E0();
  if (!v2)
  {
    v9 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
    LOBYTE(v13) = 1;
    sub_1A99762C0();
    sub_1A992AAB8(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    sub_1A9977680();
    LOBYTE(v13) = 2;
    sub_1A9977650();
    LOBYTE(v13) = 3;
    sub_1A9977650();
    LOBYTE(v13) = 4;
    sub_1A9977650();
    LOBYTE(v13) = 5;
    sub_1A9977650();
    LOBYTE(v13) = 6;
    sub_1A9977660();
    LOBYTE(v13) = 7;
    sub_1A99776E0();
    LOBYTE(v13) = 8;
    sub_1A9977680();
    v10 = &v3[*(v9 + 52)];
    v11 = v10[1];
    v13 = *v10;
    v14 = v11;
    v15 = 9;
    sub_1A97C1554(v13, v11);
    sub_1A97B4370();
    sub_1A9977680();
    sub_1A97D8688(v13, v14);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v53 = a2;
  v3 = sub_1A99762C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v54 = v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = v52 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B65C0, &qword_1A99AAA18);
  v13 = *(v12 - 8);
  v55 = v12;
  v56 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v52 - v14;
  v16 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(v17 + 20);
  v58 = v4;
  v21 = *(v4 + 56);
  v64 = v20;
  v21(&v19[v20], 1, 1, v3);
  v65 = *(v16 + 48);
  v60 = v3;
  v21(&v19[v65], 1, 1, v3);
  v59 = v16;
  v22 = *(v16 + 52);
  v66 = v19;
  v62 = a1;
  v63 = &v19[v22];
  *v63 = xmmword_1A999DA90;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A99329CC();
  v57 = v15;
  v23 = v61;
  sub_1A9977A70();
  if (v23)
  {
    v25 = v64;
    v26 = v66;
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    sub_1A97B06FC(&v26[v25], &unk_1EB3B29B0, &qword_1A9990640);

    sub_1A97B06FC(&v26[v65], &unk_1EB3B29B0, &qword_1A9990640);
    return sub_1A97D8688(*v63, *(v63 + 1));
  }

  else
  {
    v24 = v11;
    v69 = 0;
    sub_1A9932A74();
    sub_1A99775F0();
    v27 = v66;
    *v66 = v67;
    LOBYTE(v67) = 1;
    v28 = sub_1A992AAB8(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1A9977590();
    sub_1A98F5488(v24, &v27[v64], &unk_1EB3B29B0, &qword_1A9990640);
    LOBYTE(v67) = 2;
    v29 = sub_1A9977550();
    v30 = v27;
    v31 = v59;
    v32 = &v30[v59[6]];
    *v32 = v29;
    v32[1] = v33;
    v61 = v33;
    LOBYTE(v67) = 3;
    v34 = sub_1A9977550();
    v52[0] = v28;
    v52[1] = v35;
    v36 = &v66[v31[7]];
    *v36 = v34;
    v36[1] = v35;
    LOBYTE(v67) = 4;
    v37 = sub_1A9977550();
    v38 = &v66[v31[8]];
    *v38 = v37;
    v38[1] = v39;
    LOBYTE(v67) = 5;
    v40 = sub_1A9977550();
    v41 = &v66[v31[9]];
    *v41 = v40;
    v41[1] = v42;
    LOBYTE(v67) = 6;
    v43 = sub_1A9977560();
    v44 = v31[10];
    v45 = v66;
    v66[v44] = v43;
    LOBYTE(v67) = 7;
    v46 = v54;
    sub_1A99775F0();
    (*(v58 + 32))(&v45[v59[11]], v46, v60);
    LOBYTE(v67) = 8;
    sub_1A9977590();
    sub_1A98F5488(v9, &v45[v65], &unk_1EB3B29B0, &qword_1A9990640);
    v69 = 9;
    sub_1A97B446C();
    sub_1A9977590();
    (*(v56 + 8))(v57, v55);
    v47 = v67;
    v48 = v68;
    v49 = v63;
    sub_1A97D8688(*v63, *(v63 + 1));
    *v49 = v47;
    *(v49 + 1) = v48;
    v50 = v66;
    sub_1A992AB54(v66, v53, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    __swift_destroy_boxed_opaque_existential_0Tm(v62);
    return sub_1A992B5F4(v50, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
  }
}

BOOL static SFAirDrop.NearbySharingInteraction.FailureType.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

uint64_t sub_1A992D850()
{
  if (*v0)
  {
    return 0x726F707075736E75;
  }

  else
  {
    return 0x796177416C6C7570;
  }
}

uint64_t sub_1A992D894@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x796177416C6C7570 && a2 == 0xE800000000000000;
  if (v6 || (sub_1A99777E0() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x726F707075736E75 && a2 == 0xEB00000000646574)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A99777E0();

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

uint64_t sub_1A992D974(uint64_t a1)
{
  v2 = sub_1A9932AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992D9B0(uint64_t a1)
{
  v2 = sub_1A9932AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992D9EC(uint64_t a1)
{
  v2 = sub_1A9932B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992DA28(uint64_t a1)
{
  v2 = sub_1A9932B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992DA7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x796C6C61636F6CLL && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1A99777E0();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1A992DB04(uint64_t a1)
{
  v2 = sub_1A9932B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992DB40(uint64_t a1)
{
  v2 = sub_1A9932B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingInteraction.FailureType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B65D0, &qword_1A99AAA20);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B65D8, &qword_1A99AAA28);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B65E0, &qword_1A99AAA30);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9932AC8();
  sub_1A9977AA0();
  if (v12 == 2)
  {
    v21 = 0;
    sub_1A9932B70();
    sub_1A9977640();
    (*(v16 + 8))(v7, v17);
  }

  else
  {
    v22 = 1;
    sub_1A9932B1C();
    v14 = v18;
    sub_1A9977640();
    v15 = v20;
    sub_1A99776A0();
    (*(v19 + 8))(v14, v15);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t SFAirDrop.NearbySharingInteraction.FailureType.init(from:)@<X0>(void *a1@<X0>, char *a2@<X8>)
{
  v35 = a2;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6600, &qword_1A99AAA38);
  v34 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v4 = &v30 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6608, &qword_1A99AAA40);
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6610, &qword_1A99AAA48);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_1A9932AC8();
  v13 = v36;
  sub_1A9977A70();
  if (v13)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  v31 = v5;
  v36 = v9;
  v14 = v35;
  v15 = sub_1A9977620();
  v16 = (2 * *(v15 + 16)) | 1;
  v38 = v15;
  v39 = v15 + 32;
  v40 = 0;
  v41 = v16;
  v17 = sub_1A97B2970();
  v18 = v8;
  if (v17 == 2 || v40 != v41 >> 1)
  {
    v21 = sub_1A9977300();
    swift_allocError();
    v23 = v22;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v23 = &type metadata for SFAirDrop.NearbySharingInteraction.FailureType;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
    swift_willThrow();
    (*(v36 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0Tm(v37);
  }

  if (v17)
  {
    v42 = 1;
    sub_1A9932B1C();
    v19 = v4;
    sub_1A9977530();
    v20 = v36;
    v26 = v14;
    v27 = v32;
    v28 = sub_1A99775B0();
    (*(v34 + 8))(v19, v27);
    (*(v20 + 8))(v11, v18);
    swift_unknownObjectRelease();
    v29 = v28 & 1;
  }

  else
  {
    v42 = 0;
    sub_1A9932B70();
    sub_1A9977530();
    v25 = v36;
    v26 = v14;
    (*(v33 + 8))(v7, v31);
    (*(v25 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v29 = 2;
  }

  *v26 = v29;
  return __swift_destroy_boxed_opaque_existential_0Tm(v37);
}

BOOL sub_1A992E398(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 2)
  {
    return v3 == 2;
  }

  if (v3 == 2)
  {
    return 0;
  }

  return (v3 ^ v2 ^ 1) & 1;
}

unint64_t sub_1A992E3DC()
{
  v1 = *v0;
  v2 = 0x697463656E6E6F63;
  v3 = 0x657463656E6E6F63;
  v4 = 0xD000000000000015;
  if (v1 != 3)
  {
    v4 = 0x6465646E65;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000010;
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

uint64_t sub_1A992E48C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A993505C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A992E4B4(uint64_t a1)
{
  v2 = sub_1A9932BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992E4F0(uint64_t a1)
{
  v2 = sub_1A9932BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992E52C(uint64_t a1)
{
  v2 = sub_1A9932D7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992E568(uint64_t a1)
{
  v2 = sub_1A9932D7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992E5A4(uint64_t a1)
{
  v2 = sub_1A9932DD0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992E5E0(uint64_t a1)
{
  v2 = sub_1A9932DD0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992E61C(uint64_t a1)
{
  v2 = sub_1A9932C6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992E658(uint64_t a1)
{
  v2 = sub_1A9932C6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992E694(uint64_t a1)
{
  v2 = sub_1A9932C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992E6D0(uint64_t a1)
{
  v2 = sub_1A9932C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A992E70C(uint64_t a1)
{
  v2 = sub_1A9932E24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A992E748(uint64_t a1)
{
  v2 = sub_1A9932E24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingInteraction.State.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6618, &qword_1A99AAA50);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v39 = &v32 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6620, &qword_1A99AAA58);
  v40 = *(v4 - 8);
  v41 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v32 - v5;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6628, &qword_1A99AAA60);
  v37 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v44 = &v32 - v6;
  v34 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  MEMORY[0x1EEE9AC00](v34);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6630, &qword_1A99AAA68);
  v35 = *(v9 - 8);
  v36 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v33 = &v32 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6638, &qword_1A99AAA70);
  v32 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - v12;
  v14 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6640, &qword_1A99AAA78);
  v47 = *(v17 - 8);
  v48 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v32 - v18;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9932BC4();
  sub_1A9977AA0();
  sub_1A992AB54(v46, v16, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v26 = v44;
    v25 = v45;
    if (EnumCaseMultiPayload)
    {
      sub_1A9932D14(v16, v8, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
      v51 = 2;
      sub_1A9932D7C();
      v27 = v48;
      sub_1A9977640();
      sub_1A992AAB8(&qword_1EB3B6670, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
      sub_1A99776E0();
      (*(v37 + 8))(v26, v25);
      sub_1A992B5F4(v8, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    }

    else
    {
      v49 = 0;
      sub_1A9932E24();
      v27 = v48;
      sub_1A9977640();
      sub_1A9932E78();
      sub_1A99776E0();
      (*(v32 + 8))(v13, v11);
    }

    return (*(v47 + 8))(v19, v27);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v28 = *v16;
    v53 = 3;
    sub_1A9932C6C();
    v29 = v38;
    v27 = v48;
    sub_1A9977640();
    v52 = v28;
    sub_1A9932CC0();
    v30 = v41;
    sub_1A99776E0();
    (*(v40 + 8))(v29, v30);
    return (*(v47 + 8))(v19, v27);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v50 = 1;
    sub_1A9932DD0();
    v21 = v33;
    v22 = v48;
    sub_1A9977640();
    v24 = v35;
    v23 = v36;
  }

  else
  {
    v54 = 4;
    sub_1A9932C18();
    v21 = v39;
    v22 = v48;
    sub_1A9977640();
    v24 = v42;
    v23 = v43;
  }

  (*(v24 + 8))(v21, v23);
  return (*(v47 + 8))(v19, v22);
}

uint64_t SFAirDrop.NearbySharingInteraction.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v77 = a2;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6690, &qword_1A99AAA80);
  v64 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v71 = &v55 - v3;
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6698, &qword_1A99AAA88);
  v69 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v76 = &v55 - v4;
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B66A0, &qword_1A99AAA90);
  v65 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v75 = &v55 - v5;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B66A8, &qword_1A99AAA98);
  v63 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v70 = &v55 - v6;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B66B0, &qword_1A99AAAA0);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v73 = &v55 - v7;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B66B8, &qword_1A99AAAA8);
  v72 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v9 = &v55 - v8;
  v10 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v55 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x1EEE9AC00](v11);
  v16 = &v55 - v15;
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v55 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v55 - v20;
  v22 = a1[3];
  v78 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1A9932BC4();
  v23 = v79;
  sub_1A9977A70();
  if (v23)
  {
    v24 = v78;
  }

  else
  {
    v56 = v19;
    v57 = v13;
    v58 = v16;
    v25 = v73;
    v26 = v75;
    v27 = v76;
    v79 = v10;
    v59 = v21;
    v28 = v77;
    v29 = v74;
    v30 = sub_1A9977620();
    v31 = (2 * *(v30 + 16)) | 1;
    v80 = v30;
    v81 = v30 + 32;
    v82 = 0;
    v83 = v31;
    v32 = sub_1A97B2978();
    if (v32 == 5 || v82 != v83 >> 1)
    {
      v35 = sub_1A9977300();
      swift_allocError();
      v36 = v29;
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v38 = v79;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v35 - 8) + 104))(v38, *MEMORY[0x1E69E6AF8], v35);
      swift_willThrow();
      (*(v72 + 8))(v9, v36);
      swift_unknownObjectRelease();
      v24 = v78;
    }

    else
    {
      if (v32 <= 1u)
      {
        if (v32)
        {
          v84 = 1;
          sub_1A9932DD0();
          v43 = v70;
          sub_1A9977530();
          v33 = v78;
          v44 = v72;
          v48 = v28;
          (*(v63 + 8))(v43, v60);
          (*(v44 + 8))(v9, v29);
          swift_unknownObjectRelease();
          v53 = v59;
          swift_storeEnumTagMultiPayload();
        }

        else
        {
          v84 = 0;
          sub_1A9932E24();
          v39 = v25;
          sub_1A9977530();
          v33 = v78;
          v40 = v29;
          v41 = v72;
          v48 = v28;
          sub_1A9932F20();
          v49 = v62;
          sub_1A99775F0();
          (*(v61 + 8))(v39, v49);
          (*(v41 + 8))(v9, v40);
          swift_unknownObjectRelease();
          v50 = v56;
          swift_storeEnumTagMultiPayload();
          v53 = v59;
          sub_1A9932D14(v50, v59, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
        }
      }

      else if (v32 == 2)
      {
        v84 = 2;
        sub_1A9932D7C();
        sub_1A9977530();
        v48 = v28;
        type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
        sub_1A992AAB8(&qword_1EB3B66C8, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
        v45 = v58;
        v46 = v67;
        sub_1A99775F0();
        v47 = v72;
        (*(v65 + 8))(v26, v46);
        (*(v47 + 8))(v9, v29);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v53 = v59;
        sub_1A9932D14(v45, v59, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
        v33 = v78;
      }

      else
      {
        if (v32 == 3)
        {
          v84 = 3;
          sub_1A9932C6C();
          sub_1A9977530();
          v33 = v78;
          sub_1A9932ECC();
          v34 = v66;
          sub_1A99775F0();
          (*(v69 + 8))(v27, v34);
          (*(v72 + 8))(v9, v29);
          swift_unknownObjectRelease();
          v51 = v57;
          *v57 = v84;
          swift_storeEnumTagMultiPayload();
          v52 = v51;
          v53 = v59;
          sub_1A9932D14(v52, v59, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
        }

        else
        {
          v84 = 4;
          sub_1A9932C18();
          v42 = v71;
          sub_1A9977530();
          v33 = v78;
          (*(v64 + 8))(v42, v68);
          (*(v72 + 8))(v9, v29);
          swift_unknownObjectRelease();
          v53 = v59;
          swift_storeEnumTagMultiPayload();
        }

        v48 = v28;
      }

      sub_1A9932D14(v53, v48, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
      v24 = v33;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v24);
}

uint64_t SFAirDrop.NearbySharingInteraction.state.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SFAirDrop.NearbySharingInteraction(0) + 20);

  return sub_1A9865834(a1, v3);
}

uint64_t SFAirDrop.NearbySharingInteraction.creationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SFAirDrop.NearbySharingInteraction(0) + 24);
  v4 = sub_1A9976230();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SFAirDrop.NearbySharingInteraction.isInitiatorRoleExpected.setter(char a1)
{
  result = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.isInitiator.setter(char a1)
{
  result = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t SFAirDrop.NearbySharingInteraction.init(state:id:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B29B0, &qword_1A9990640);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_1A99762C0();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
  v13 = v12[7];
  v14 = sub_1A99773D0();
  (*(*(v14 - 8) + 56))(a3 + v13, 1, 1, v14);
  *(a3 + v12[8]) = 0;
  *(a3 + v12[9]) = 0;
  sub_1A97C13A4(a2, v7, &unk_1EB3B29B0, &qword_1A9990640);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1A99762B0();
    if (v15(v7, 1, v8) != 1)
    {
      sub_1A97B06FC(v7, &unk_1EB3B29B0, &qword_1A9990640);
    }
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
  }

  (*(v9 + 32))(a3, v11, v8);
  sub_1A9976220();
  sub_1A97B06FC(a2, &unk_1EB3B29B0, &qword_1A9990640);
  return sub_1A9932D14(v18, a3 + v12[5], type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
}

uint64_t sub_1A992FF3C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x697463656E6E6F63;
  v4 = 0xD000000000000017;
  if (v1 != 4)
  {
    v4 = 0x616974696E497369;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6574617473;
  if (v1 != 1)
  {
    v5 = 0x6E6F697461657263;
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

uint64_t sub_1A9930008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A9935228(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9930030(uint64_t a1)
{
  v2 = sub_1A9932F74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A993006C(uint64_t a1)
{
  v2 = sub_1A9932F74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.NearbySharingInteraction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B66D8, &qword_1A99AAAB0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9932F74();
  sub_1A9977AA0();
  v8[15] = 0;
  sub_1A99762C0();
  sub_1A992AAB8(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1A99776E0();
  if (!v1)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
    v8[14] = 1;
    type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
    sub_1A992AAB8(&qword_1EB3B33B8, type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.State);
    sub_1A99776E0();
    v8[13] = 2;
    sub_1A9976230();
    sub_1A992AAB8(&qword_1EB3B0C58, MEMORY[0x1E6969530], MEMORY[0x1E6969538]);
    sub_1A99776E0();
    v8[12] = 3;
    sub_1A99773D0();
    sub_1A992AAB8(&qword_1EB3B66E8, MEMORY[0x1E69E87E8], MEMORY[0x1E69E87F0]);
    sub_1A9977680();
    v8[11] = 4;
    sub_1A99776A0();
    v8[10] = 5;
    sub_1A99776A0();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t SFAirDrop.NearbySharingInteraction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6518, &qword_1A99AA990);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v32 = v30 - v4;
  v5 = sub_1A9976230();
  v34 = *(v5 - 8);
  v35 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v33 = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  MEMORY[0x1EEE9AC00](v37);
  v8 = v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = sub_1A99762C0();
  v36 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v38 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B66F0, &qword_1A99AAAB8);
  v39 = *(v10 - 8);
  v40 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = v30 - v11;
  v13 = type metadata accessor for SFAirDrop.NearbySharingInteraction(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(v14 + 28);
  v18 = sub_1A99773D0();
  v19 = *(*(v18 - 8) + 56);
  v44 = v17;
  v19(&v16[v17], 1, 1, v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9932F74();
  v42 = v12;
  v20 = v43;
  sub_1A9977A70();
  if (v20)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_1A97B06FC(&v16[v44], &qword_1EB3B6518, &qword_1A99AA990);
  }

  else
  {
    v30[1] = v18;
    v43 = a1;
    v50 = 0;
    sub_1A992AAB8(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v21 = v38;
    sub_1A99775F0();
    (*(v36 + 32))(0, v21, v41);
    v49 = 1;
    sub_1A992AAB8(&qword_1EB3B33C8, type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.State);
    sub_1A99775F0();
    sub_1A9932D14(v8, v13[5], type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    v48 = 2;
    sub_1A992AAB8(&qword_1EB3B0CE0, MEMORY[0x1E6969530], MEMORY[0x1E6969558]);
    v22 = v33;
    v23 = v35;
    v38 = 0;
    sub_1A99775F0();
    (*(v34 + 32))(&v16[v13[6]], v22, v23);
    v47 = 3;
    sub_1A992AAB8(&qword_1EB3B66F8, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8810]);
    v24 = v32;
    sub_1A9977590();
    sub_1A98F5488(v24, &v16[v44], &qword_1EB3B6518, &qword_1A99AA990);
    v46 = 4;
    v25 = sub_1A99775B0();
    v26 = v43;
    *v13[8] = v25 & 1;
    v45 = 5;
    v27 = sub_1A99775B0();
    v28 = v13[9];
    (*(v39 + 8))(v42, v40);
    *v28 = v27 & 1;
    sub_1A992AB54(0, v31, type metadata accessor for SFAirDrop.NearbySharingInteraction);
    __swift_destroy_boxed_opaque_existential_0Tm(v26);
    return sub_1A992B5F4(0, type metadata accessor for SFAirDrop.NearbySharingInteraction);
  }
}

uint64_t SFAirDrop.NearbySharingInteraction.State.connectionContext.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A992AB54(v2, v6, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A9932D14(v6, a1, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    v7 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
    return (*(*(v7 - 8) + 56))(a1, 0, 1, v7);
  }

  else
  {
    v9 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
    (*(*(v9 - 8) + 56))(a1, 1, 1, v9);
    return sub_1A992B5F4(v6, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  }
}

BOOL SFAirDrop.NearbySharingInteraction.State.isConnected.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B6700, &qword_1A99AAAC0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v11 - v6;
  sub_1A992AB54(v1, v4, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A9932D14(v4, v7, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
    (*(*(v8 - 8) + 56))(v7, 0, 1, v8);
  }

  else
  {
    v8 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    sub_1A992B5F4(v4, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  }

  type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  v9 = (*(*(v8 - 8) + 48))(v7, 1, v8) != 1;
  sub_1A97B06FC(v7, &qword_1EB3B6700, &qword_1A99AAAC0);
  return v9;
}

uint64_t SFAirDrop.NearbySharingInteraction.State.description.getter()
{
  v1 = v0;
  v2 = 0x7463656E6E6F632ELL;
  v3 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A992AB54(v1, v8, type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_1A9932D14(v8, v5, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
      v11 = 0;
      v12 = 0xE000000000000000;
      MEMORY[0x1AC5895B0](0x7463656E6E6F632ELL, 0xEB00000000286465);
      sub_1A9977400();
      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      v2 = v11;
      sub_1A992B5F4(v5, type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext);
    }

    else
    {
      v11 = 0;
      v12 = 0xE000000000000000;
      sub_1A99772B0();
      MEMORY[0x1AC5895B0](0xD000000000000012, 0x80000001A99E8610);
      sub_1A9977400();
      MEMORY[0x1AC5895B0](41, 0xE100000000000000);
      return v11;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    return 0xD000000000000016;
  }

  else if (EnumCaseMultiPayload != 3)
  {
    return 0x6465646E652ELL;
  }

  return v2;
}

uint64_t SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E752ELL;
  v3 = 0x796150726565702ELL;
  if (v1 != 5)
  {
    v3 = 0x495544442ELL;
  }

  v4 = 0x7465656D2ELL;
  if (v1 != 3)
  {
    v4 = 0x65726168732ELL;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x636972656E65672ELL;
  if (v1 != 1)
  {
    v5 = 0x706F72447269612ELL;
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