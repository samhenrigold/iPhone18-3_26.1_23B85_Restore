uint64_t sub_1A984912C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F30, &qword_1A9999460);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984C1FC;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_185;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_196;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A98494C0(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F28, &qword_1A9999450);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984C080;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_147;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_158;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9849854(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F20, &qword_1A9999440);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984BE6C;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_109;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_120;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9849BE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v28[0] = a5;
  v28[1] = a3;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FD8, &qword_1A99995C0);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x1EEE9AC00](v11);
  v15 = v28 - v14;
  (*(v12 + 16))(v28 - v14, a1, v11);
  v16 = (*(v12 + 80) + 40) & ~*(v12 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a2;
  *(v17 + 3) = a3;
  *(v17 + 4) = a4;
  (*(v12 + 32))(&v17[v16], v15, v11);
  v18 = &v17[(v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v18 = v28[0];
  *(v18 + 1) = a6;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1A984D7A8;
  *(v19 + 24) = v17;
  aBlock[4] = sub_1A984E098;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_633;
  v20 = _Block_copy(aBlock);
  v21 = _Block_copy(v20);
  v22 = swift_allocObject();
  *(v22 + 16) = v21;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A984E0BC;
  *(v23 + 24) = v22;
  v29[4] = sub_1A984E098;
  v29[5] = v23;
  v29[0] = MEMORY[0x1E69E9820];
  v29[1] = 1107296256;
  v29[2] = sub_1A981E5CC;
  v29[3] = &block_descriptor_644;
  v24 = _Block_copy(v29);

  v25 = a4;

  _Block_copy(v21);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v24);
  _Block_release(v20);
  _Block_release(v21);
  _Block_release(v24);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A9849F7C(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t *, uint64_t), uint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v63 = a6;
  v64 = a5;
  v70 = a1;
  v67 = a9;
  v68 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v58 - v15;
  v72 = sub_1A9976230();
  v17 = *(v72 - 8);
  v18 = MEMORY[0x1EEE9AC00](v72);
  v60 = &v58 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v62 = &v58 - v21;
  v22 = MEMORY[0x1EEE9AC00](v20);
  v59 = &v58 - v23;
  MEMORY[0x1EEE9AC00](v22);
  v25 = &v58 - v24;
  sub_1A9976220();
  if (qword_1EB3AD0E0 != -1)
  {
    swift_once();
  }

  v66 = a11;
  v65 = a10;
  v26 = sub_1A99764A0();
  v27 = __swift_project_value_buffer(v26, qword_1EB3AD0F0);

  v69 = v27;
  v28 = sub_1A9976480();
  v29 = sub_1A9976F90();

  v30 = os_log_type_enabled(v28, v29);
  v71 = a2;
  if (v30)
  {
    v31 = swift_slowAlloc();
    v58 = v17;
    v61 = v25;
    v32 = v13;
    v33 = a4;
    v34 = v31;
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_1A97AF148(v70, a2, aBlock);
    _os_log_impl(&dword_1A9662000, v28, v29, "asyncXPC [%{public}s] START -- Client", v34, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v35);
    MEMORY[0x1AC58D2C0](v35, -1, -1);
    v36 = v34;
    a4 = v33;
    v13 = v32;
    v25 = v61;
    v17 = v58;
    MEMORY[0x1AC58D2C0](v36, -1, -1);
  }

  (*(v14 + 16))(v16, a4, v13);
  v37 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v38 = swift_allocObject();
  (*(v14 + 32))(v38 + v37, v16, v13);
  aBlock[4] = v65;
  aBlock[5] = v38;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A984AA04;
  aBlock[3] = v66;
  v39 = _Block_copy(aBlock);

  v40 = [v68 remoteObjectProxyWithErrorHandler_];
  _Block_release(v39);
  sub_1A99771B0();
  swift_unknownObjectRelease();
  v41 = sub_1A97B5EF8(v75, 0, 0, 0xD000000000000051, 0x80000001A99E51F0, 217);
  v42 = v72;
  v43 = v41;
  aBlock[0] = v41;
  v64(aBlock, a4);
  v44 = v59;
  (*(v17 + 16))(v59, v25, v42);
  v45 = v71;

  disableAirDropTLS();
  disableAirDropTLS();
  v46 = sub_1A9976480();
  v47 = sub_1A9976F90();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v68 = v43;
    v49 = v17;
    v50 = v48;
    v51 = swift_slowAlloc();
    v73 = v51;
    *v50 = 136446722;
    *(v50 + 4) = sub_1A97AF148(v70, v45, &v73);
    *(v50 + 12) = 1040;
    *(v50 + 14) = 3;
    *(v50 + 18) = 2048;
    v52 = v60;
    sub_1A9976220();
    sub_1A99760D0();
    v54 = v53;
    v55 = *(v49 + 8);
    v55(v52, v42);
    v55(v44, v42);
    *(v50 + 20) = v54;
    _os_log_impl(&dword_1A9662000, v46, v47, "asyncXPC [%{public}s] END -- {duration: %.*f}", v50, 0x1Cu);
    __swift_destroy_boxed_opaque_existential_0Tm(v51);
    MEMORY[0x1AC58D2C0](v51, -1, -1);
    MEMORY[0x1AC58D2C0](v50, -1, -1);
    swift_unknownObjectRelease();

    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    return (v55)(v25, v42);
  }

  else
  {

    v57 = *(v17 + 8);
    v57(v44, v42);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    return (v57)(v25, v42);
  }
}

uint64_t sub_1A984A9A8(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  return sub_1A9976B90();
}

void sub_1A984AA04(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t sub_1A984AA90(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A97B2988;

  return sub_1A9838CB0(a1, v1);
}

uint64_t sub_1A984AB6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A984ABCC()
{
  result = qword_1EB3B2DF0;
  if (!qword_1EB3B2DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2DF0);
  }

  return result;
}

uint64_t sub_1A984AC20(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1A984AC68()
{
  result = qword_1EB3B2DF8;
  if (!qword_1EB3B2DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2DF8);
  }

  return result;
}

unint64_t sub_1A984ACBC()
{
  result = qword_1EB3B2E08;
  if (!qword_1EB3B2E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2E08);
  }

  return result;
}

uint64_t sub_1A984AD10(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1A984AD78()
{
  result = qword_1EB3B2E18;
  if (!qword_1EB3B2E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2E18);
  }

  return result;
}

unint64_t sub_1A984ADCC()
{
  result = qword_1EB3B2E28;
  if (!qword_1EB3B2E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2E28);
  }

  return result;
}

unint64_t sub_1A984AE20()
{
  result = qword_1EB3B2E40;
  if (!qword_1EB3B2E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2E40);
  }

  return result;
}

unint64_t sub_1A984AF04()
{
  result = qword_1EB3AC760;
  if (!qword_1EB3AC760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC760);
  }

  return result;
}

unint64_t sub_1A984AF58()
{
  result = qword_1EB3AC768;
  if (!qword_1EB3AC768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC768);
  }

  return result;
}

unint64_t sub_1A984B03C()
{
  result = qword_1EB3AC660;
  if (!qword_1EB3AC660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC660);
  }

  return result;
}

unint64_t sub_1A984B090()
{
  result = qword_1EB3ACB70;
  if (!qword_1EB3ACB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ACB70);
  }

  return result;
}

uint64_t dispatch thunk of SFProximityHandoffClient.proximityHandoffInteractions()(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x78);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A97B2988;

  return v7(a1);
}

uint64_t dispatch thunk of SFProximityHandoffClient.nearbySharingInteractionView(update:viewState:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x80);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A97B2638;

  return v9(a1, a2);
}

uint64_t dispatch thunk of SFProximityHandoffClient.performHandoffContent(action:on:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x88);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A97B2988;

  return v9(a1, a2);
}

uint64_t sub_1A984B53C(uint64_t a1, unsigned int a2)
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

uint64_t sub_1A984B58C(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1A984B5E0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1A984B5F8(void *result, int a2)
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

uint64_t sub_1A984B710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1A984B7FC()
{
  result = qword_1EB3B2EA0;
  if (!qword_1EB3B2EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EA0);
  }

  return result;
}

unint64_t sub_1A984B854()
{
  result = qword_1EB3B2EA8;
  if (!qword_1EB3B2EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EA8);
  }

  return result;
}

unint64_t sub_1A984B8AC()
{
  result = qword_1EB3B2EB0;
  if (!qword_1EB3B2EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EB0);
  }

  return result;
}

unint64_t sub_1A984B904()
{
  result = qword_1EB3B2EB8;
  if (!qword_1EB3B2EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EB8);
  }

  return result;
}

unint64_t sub_1A984B95C()
{
  result = qword_1EB3B2EC0;
  if (!qword_1EB3B2EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EC0);
  }

  return result;
}

unint64_t sub_1A984B9B4()
{
  result = qword_1EB3B2EC8;
  if (!qword_1EB3B2EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EC8);
  }

  return result;
}

unint64_t sub_1A984BA0C()
{
  result = qword_1EB3B2ED0;
  if (!qword_1EB3B2ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2ED0);
  }

  return result;
}

unint64_t sub_1A984BA64()
{
  result = qword_1EB3B2ED8;
  if (!qword_1EB3B2ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2ED8);
  }

  return result;
}

unint64_t sub_1A984BABC()
{
  result = qword_1EB3B2EE0;
  if (!qword_1EB3B2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EE0);
  }

  return result;
}

unint64_t sub_1A984BB14()
{
  result = qword_1EB3B2EE8;
  if (!qword_1EB3B2EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EE8);
  }

  return result;
}

unint64_t sub_1A984BB6C()
{
  result = qword_1EB3B2EF0;
  if (!qword_1EB3B2EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EF0);
  }

  return result;
}

unint64_t sub_1A984BBC4()
{
  result = qword_1EB3B2EF8;
  if (!qword_1EB3B2EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2EF8);
  }

  return result;
}

unint64_t sub_1A984BC1C()
{
  result = qword_1EB3B2F00;
  if (!qword_1EB3B2F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2F00);
  }

  return result;
}

unint64_t sub_1A984BC74()
{
  result = qword_1EB3B2F08;
  if (!qword_1EB3B2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2F08);
  }

  return result;
}

uint64_t sub_1A984BD0C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F10, &unk_1A9999410) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F10, &unk_1A9999410, &unk_1F1D2A238, sub_1A984BE14, &block_descriptor_88_0);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A984BE6C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F20, &qword_1A9999440) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F20, &qword_1A9999440, &unk_1F1D2A3F0, sub_1A984BF54, &block_descriptor_126);
}

uint64_t sub_1A984C080()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F28, &qword_1A9999450) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F28, &qword_1A9999450, &unk_1F1D2A5A8, sub_1A984C168, &block_descriptor_164);
}

uint64_t sub_1A984C1FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F30, &qword_1A9999460) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F30, &qword_1A9999460, &unk_1F1D2A760, sub_1A984C2E4, &block_descriptor_202);
}

void sub_1A984C320(void **a1, uint64_t a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B17A8, &unk_1A9999470) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A9844DA4(*a1, a2, *(v2 + 16), *(v2 + 24), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_1A984C3FC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F50, &qword_1A9999490) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F50, &qword_1A9999490, &unk_1F1D2A8F0, sub_1A984C4E4, &block_descriptor_240);
}

uint64_t objectdestroyTm_0()
{

  return swift_deallocObject();
}

uint64_t sub_1A984C5DC()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F58, &qword_1A99994A0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F58, &qword_1A99994A0, &unk_1F1D2AAA8, sub_1A984C6C4, &block_descriptor_278);
}

void sub_1A984C73C(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = *(sub_1A99762C0() - 8);
  v12 = (*(v11 + 80) + 32) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A9844870(*a1, a2, *(v5 + 16), *(v5 + 24), v5 + v12, *(v5 + v13), *(v5 + ((v13 + 15) & 0xFFFFFFFFFFFFFFF8)), a3, a4, a5);
}

uint64_t sub_1A984C8B8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1A984C960(void *a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void, uint64_t, void, void, unint64_t, void, void))
{
  v8 = *(a3(0) - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a4(*a1, a2, *(v4 + 16), *(v4 + 24), v4 + v9, *(v4 + v10), *(v4 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t objectdestroy_298Tm()
{
  v1 = (type metadata accessor for SFAirDropClient.BoopAtADistance.Transaction(0) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = (((*(*v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v4 = v0 + v2;
  v5 = sub_1A99762C0();
  (*(*(v5 - 8) + 8))(v4, v5);
  v6 = v1[7];
  v7 = sub_1A9976230();
  (*(*(v7 - 8) + 8))(v4 + v6, v7);

  return swift_deallocObject();
}

uint64_t sub_1A984CC00()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F60, &qword_1A99994C8) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F60, &qword_1A99994C8, &unk_1F1D2ADC8, sub_1A984CCE8, &block_descriptor_352);
}

uint64_t sub_1A984CDA8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F80, &qword_1A99994F8) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F80, &qword_1A99994F8, &unk_1F1D2AFF8, sub_1A984CE90, &block_descriptor_402);
}

uint64_t objectdestroy_172Tm()
{
  v1 = sub_1A99762C0();
  v2 = *(v1 - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v3, v1);

  return swift_deallocObject();
}

uint64_t sub_1A984D118()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2F88, &qword_1A9999518) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2F88, &qword_1A9999518, &unk_1F1D2B228, sub_1A984D200, &block_descriptor_452);
}

uint64_t sub_1A984D23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a6, a7) - 8);
  v15 = v8 + ((*(v14 + 80) + 16) & ~*(v14 + 80));

  return a8(a1, a2, a3, a4, a5, v15);
}

uint64_t sub_1A984D3D4()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FA8, &qword_1A9999558) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2FA8, &qword_1A9999558, &unk_1F1D2B548, sub_1A984D4BC, &block_descriptor_526);
}

uint64_t sub_1A984D578(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1A984D5E8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FB8, &qword_1A9999588) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2FB8, &qword_1A9999588, &unk_1F1D2B7F0, sub_1A984D6D0, &block_descriptor_588);
}

uint64_t sub_1A984D7A8()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FD8, &qword_1A99995C0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2FD8, &qword_1A99995C0, &unk_1F1D2BA98, sub_1A984D890, &block_descriptor_650);
}

uint64_t sub_1A984D96C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FE8, &qword_1A99995E0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2FE8, &qword_1A99995E0, &unk_1F1D2BCC8, sub_1A984DA54, &block_descriptor_700);
}

uint64_t objectdestroy_546Tm(uint64_t (*a1)(void))
{
  v2 = *(a1(0) - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = (((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  v5 = sub_1A99762C0();
  (*(*(v5 - 8) + 8))(v1 + v3, v5);

  return swift_deallocObject();
}

uint64_t objectdestroy_96Tm()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_68Tm(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  v4 = *(v3 - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);

  (*(v4 + 8))(v2 + v5, v3);

  return swift_deallocObject();
}

uint64_t sub_1A984DD9C()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B2FF0, &qword_1A99995F0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A9849F7C(*(v0 + 16), *(v0 + 24), *(v0 + 32), v0 + v2, *v3, *(v3 + 8), &qword_1EB3B2FF0, &qword_1A99995F0, &unk_1F1D2BF70, sub_1A984DE84, &block_descriptor_764);
}

uint64_t objectdestroy_84Tm_0(uint64_t *a1, uint64_t *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  (*(*(v3 - 8) + 8))(v2 + ((*(*(v3 - 8) + 80) + 16) & ~*(*(v3 - 8) + 80)), v3);

  return swift_deallocObject();
}

uint64_t Deque<A>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1A99770A0();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = v22 - v11;
  sub_1A982DD1C(sub_1A982B85C, 0, a2, &type metadata for _DequeBufferHeader, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v21);
  v22[0] = a1;
  MEMORY[0x1AC58A630](v23);
  v23 = Deque.makeIterator()(a2, a3);
  v24 = v13;
  v25 = v14;
  v16 = type metadata accessor for Deque.Iterator(0, a3, v14, v15);
  Deque.Iterator.next()(v16, v12);
  v17 = *(v7 + 48);
  if (v17(v12, 1, a3) != 1)
  {
    v19 = v7 + 32;
    v18 = *(v7 + 32);
    do
    {
      v18(v9, v12, a3);
      sub_1A9976740();
      (*(v19 - 24))(v9, a3);
      Deque.Iterator.next()(v16, v12);
    }

    while (v17(v12, 1, a3) != 1);
  }
}

uint64_t Deque<A>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1A9977980();
  Deque<A>.hash(into:)(v7, a1, a2, a3);
  return sub_1A99779B0();
}

uint64_t sub_1A984E4CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  sub_1A9977980();
  Deque<A>.hash(into:)(v7, *v3, *(a2 + 16), v5);
  return sub_1A99779B0();
}

uint64_t Deque._storage.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t sub_1A984E5C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t static Deque<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = MEMORY[0x1E69E73E0];
  v7 = MEMORY[0x1E69E6530];
  v8 = MEMORY[0x1E69E7410];
  sub_1A982DD1C(sub_1A982B85C, 0, a1, &type metadata for _DequeBufferHeader, a3, MEMORY[0x1E69E73E0], MEMORY[0x1E69E6530], MEMORY[0x1E69E7410], v16);
  sub_1A982DD1C(sub_1A982B85C, 0, a2, &type metadata for _DequeBufferHeader, a3, v6, v7, v8, v17);
  if (!v18 || (nullsub_1(), v10 = v9, nullsub_1(), v10 == v13))
  {
    v14 = 1;
  }

  else
  {
    type metadata accessor for Deque(0, a3, v11, v12);
    swift_getWitnessTable();
    v14 = sub_1A9976A20();
  }

  return v14 & 1;
}

uint64_t Deque.init(arrayLiteral:)(uint64_t a1, uint64_t a2)
{
  v7 = a1;
  v3 = sub_1A9976B60();
  WitnessTable = swift_getWitnessTable();
  v5 = sub_1A98348B4(&v7, a2, v3, WitnessTable);

  return v5;
}

uint64_t sub_1A984E83C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v9 = a1;
  v4 = *(a2 + 16);
  v5 = sub_1A9976B60();
  WitnessTable = swift_getWitnessTable();
  v7 = sub_1A98348B4(&v9, v4, v5, WitnessTable);

  *a3 = v7;
  return result;
}

uint64_t Range<>._count.getter(uint64_t a1, uint64_t a2)
{
  v2 = __OFSUB__(a2, a1);
  result = a2 - a1;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

Sharing::_DequeSlot __swiftcall _DequeSlot.orIfZero(_:)(Sharing::_DequeSlot result)
{
  if (v1.position > 0)
  {
    return v1;
  }

  return result;
}

uint64_t _DequeSlot.description.getter()
{
  v0 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v0);

  return 64;
}

uint64_t sub_1A984E9A0()
{
  v0 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v0);

  return 64;
}

unint64_t sub_1A984EA20()
{
  result = qword_1EB3B2FF8;
  if (!qword_1EB3B2FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B2FF8);
  }

  return result;
}

uint64_t sub_1A984EAD4(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v60 = a7;
  v63 = a5;
  v62 = a3;
  v77 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v65 = &v57 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v66 = &v57 - v12;
  v13 = sub_1A9977460();
  v67 = *(v13 - 8);
  v68 = v13;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v59 = &v57 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v69 = (&v57 - v18);
  v19 = sub_1A99762C0();
  v20 = *(v19 - 8);
  v21 = *(v20 + 64);
  v22 = MEMORY[0x1EEE9AC00](v19);
  v58 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v57 - v23;
  v71 = type metadata accessor for _SFXPCAsyncSequenceContainer(0);
  v25 = objc_allocWithZone(v71);

  sub_1A99762B0();
  v26 = *(v20 + 16);
  v26(&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_uuid], v24, v19);
  v27 = &v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_name];
  *v27 = v77;
  *(v27 + 1) = a2;
  v72 = a2;

  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences] = sub_1A97BE618(MEMORY[0x1E69E7CC0]);
  *&v25[OBJC_IVAR____SFXPCAsyncSequenceContainer_containerRegistry] = a4;
  v70 = a4;
  if (a4)
  {
    v28 = sub_1A9976C00();
    (*(*(v28 - 8) + 56))(v69, 1, 1, v28);
    v29 = v58;
    v26(v58, v24, v19);
    v30 = (*(v20 + 80) + 40) & ~*(v20 + 80);
    v31 = (v21 + v30 + 7) & 0xFFFFFFFFFFFFFFF8;
    v32 = swift_allocObject();
    *(v32 + 2) = 0;
    *(v32 + 3) = 0;
    v33 = v70;
    *(v32 + 4) = v70;
    (*(v20 + 32))(&v32[v30], v29, v19);
    v34 = &v32[v31];
    v35 = v72;
    *v34 = v77;
    *(v34 + 1) = v35;
    swift_retain_n();
    sub_1A97B4F40(0, 0, v69, &unk_1A9999B40, v32);

    (*(v20 + 8))(v24, v19);
  }

  else
  {
    (*(v20 + 8))(v24, v19);

    v33 = v70;
  }

  v76.receiver = v25;
  v76.super_class = v71;
  v36 = objc_msgSendSuper2(&v76, sel_init);

  v69 = type metadata accessor for _SFXPCBlockContainer(0);
  objc_allocWithZone(v69);

  v77 = sub_1A97BE9E8(v77, v72, v33);

  sub_1A9975E80();
  swift_allocObject();
  sub_1A9975E70();
  v37 = v66;
  sub_1A9977450();
  v38 = v67;
  v39 = v68;
  v40 = *(v67 + 48);
  result = v40(v37, 1, v68);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v42 = *(v38 + 32);
  v43 = v64;
  v42(v64, v37, v39);
  v75 = v71;
  v74[0] = v36;
  v72 = v36;
  v44 = sub_1A9975E60();
  sub_1A97DCC4C(v74, v43);
  v44(v73, 0);
  v45 = v65;
  sub_1A9977450();
  result = v40(v45, 1, v39);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v46 = v59;
  v42(v59, v45, v39);
  v75 = v69;
  v74[0] = v77;
  v47 = v77;
  v48 = sub_1A9975E60();
  sub_1A97DCC4C(v74, v46);
  v48(v73, 0);
  v49 = v62;
  v50 = v63;
  v51 = v61;
  v52 = sub_1A9975E50();
  (*(*(v50 - 8) + 8))(v49, v50);

  if (v51)
  {
  }

  else
  {

    v53 = OBJC_IVAR____SFXPCAsyncSequenceContainer_sequences;
    v54 = v72;
    swift_beginAccess();
    if (!*(*&v54[v53] + 16))
    {
    }

    v55 = OBJC_IVAR____SFXPCBlockContainer_registeredAsyncBlocks;
    swift_beginAccess();
    if (!*(*&v47[v55] + 16))
    {
      v56 = OBJC_IVAR____SFXPCBlockContainer_registeredSyncBlocks;
      swift_beginAccess();
      if (!*(*&v47[v56] + 16))
      {
      }
    }
  }

  return v52;
}

uint64_t sub_1A984F298@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a5@<X4>, uint64_t x8_0@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9850590(sub_1A9855390, x8_0);

  sub_1A97D8688(a1, a2);
  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

uint64_t sub_1A984F364(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = v11;
  v9[10] = v8;
  v9[7] = a7;
  v9[8] = a8;
  v9[5] = a5;
  v9[6] = a6;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A984F39C, 0, 0);
}

uint64_t sub_1A984F39C()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v9 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  v4 = *(v0 + 40);
  *(v3 + 16) = *(v0 + 56);
  *(v3 + 32) = v2;
  *(v3 + 40) = v9;
  *(v3 + 56) = v1;
  *(v3 + 64) = v4;
  v5 = swift_task_alloc();
  *(v0 + 96) = v5;
  *v5 = v0;
  v5[1] = sub_1A984F4BC;
  v6 = *(v0 + 72);
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000014, 0x80000001A99E51D0, sub_1A9855510, v3, v6);
}

uint64_t sub_1A984F4BC()
{
  v2 = *v1;
  *(v2 + 104) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A984F5F8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A984F5F8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A984F65C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

void sub_1A984F72C(uint64_t a1@<X0>, unint64_t a2@<X1>, void (*a3)(char *)@<X3>, uint64_t a4@<X4>, void *a5@<X6>, uint64_t a6@<X7>, uint64_t a7@<X8>)
{
  v8 = v7;
  v93 = a4;
  v94 = a3;
  v88 = a7;
  v113 = *MEMORY[0x1E69E9840];
  v87 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = v14;
  v92 = sub_1A99770A0();
  v91 = *(v92 - 8);
  v15 = MEMORY[0x1EEE9AC00](v92);
  v17 = (&v85 - v16);
  v100 = a5;
  v95 = *(a5 - 1);
  MEMORY[0x1EEE9AC00](v15);
  v97 = &v85 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1A9976230();
  v103 = *(v19 - 8);
  v20 = MEMORY[0x1EEE9AC00](v19);
  v101 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x1EEE9AC00](v20);
  v98 = &v85 - v23;
  v24 = MEMORY[0x1EEE9AC00](v22);
  v86 = &v85 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v27 = &v85 - v26;
  v105 = "syncXPC";
  v106 = 7;
  v107 = 2;
  v108 = 2;
  v109.opaque[0] = 0;
  v109.opaque[1] = 0;
  LODWORD(v112[0]) = 2;
  SF_os_activity.init(_:dso:options:)(aBlock, &dword_1A9662000, "syncXPC", 2, v112);
  if (aBlock[0])
  {
    os_activity_scope_enter(aBlock[0], &v109);
    swift_unknownObjectRelease();
  }

  v90 = v13;
  sub_1A9976220();
  if (qword_1EB3AD0E0 != -1)
  {
    swift_once();
  }

  v28 = sub_1A99764A0();
  v29 = __swift_project_value_buffer(v28, qword_1EB3AD0F0);

  v30 = sub_1A9976480();
  v31 = sub_1A9976F90();

  v32 = os_log_type_enabled(v30, v31);
  v104 = v19;
  v102 = v27;
  v99 = a1;
  if (v32)
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    aBlock[0] = v34;
    *v33 = 136446210;
    *(v33 + 4) = sub_1A97AF148(a1, a2, aBlock);
    _os_log_impl(&dword_1A9662000, v30, v31, "syncXPC [%{public}s] START -- Client", v33, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v34);
    MEMORY[0x1AC58D2C0](v34, -1, -1);
    MEMORY[0x1AC58D2C0](v33, -1, -1);
  }

  v35 = swift_allocObject();
  v35[2].isa = 0;
  p_isa = &v35[2].isa;
  if ([v8 respondsToSelector_])
  {
    aBlock[4] = sub_1A985537C;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989D634;
    aBlock[3] = &block_descriptor_28;
    v37 = _Block_copy(aBlock);
    swift_retain_n();
    v38 = [v8 synchronousRemoteObjectProxyWithErrorHandler_];
    _Block_release(v37);
    sub_1A99771B0();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v112, 0, sizeof(v112));
  }

  v39 = v17;
  swift_beginAccess();
  v40 = *p_isa;
  if (*p_isa)
  {
    v111 = *p_isa;
    v41 = v40;
    v42 = v40;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v43 = sub_1A99777A0();
    if (v43)
    {
      v44 = v43;
      v45 = a2;
    }

    else
    {
      v45 = a2;
      v44 = swift_allocError();
      *v50 = v40;
    }

    v48 = v104;
    v49 = v102;
    swift_willThrow();

LABEL_17:
    sub_1A97B06FC(v112, &qword_1EB3B0BA0, &unk_1A99923D0);

    goto LABEL_18;
  }

  v45 = a2;
  v46 = v97;
  v47 = v96;
  tryCast<A>(_:as:description:file:line:)(v112, v100, 0, 0, 0xD000000000000051, 0x80000001A99E51F0, 194, v100, v97);
  v44 = v47;
  if (!v47)
  {
    v96 = v29;
    v94(v46);
    v94 = v39;
    v64 = *p_isa;
    if (!*p_isa)
    {
      Optional.tryUnwrap(_:file:line:)(0x746C75736572, 0xE600000000000000, 0xD000000000000051, 0x80000001A99E51F0, 197, v92, v90);
      v68 = v102;
      v70 = v104;
      v71 = v86;
      (*(v103 + 16))(v86, v102, v104);

      disableAirDropTLS();
      disableAirDropTLS();
      v72 = v68;
      v73 = sub_1A9976480();
      v74 = sub_1A9976F90();

      if (os_log_type_enabled(v73, v74))
      {
        v76 = swift_slowAlloc();
        v77 = swift_slowAlloc();
        v111 = v77;
        *v76 = 136446722;
        *(v76 + 4) = sub_1A97AF148(v99, a2, &v111);
        *(v76 + 12) = 1040;
        *(v76 + 14) = 3;
        *(v76 + 18) = 2048;
        v78 = v98;
        sub_1A9976220();
        sub_1A99760D0();
        v80 = v79;
        v101 = 0;
        v81 = *(v103 + 8);
        v82 = v78;
        v83 = v104;
        v81(v82, v104);
        v81(v71, v83);
        *(v76 + 20) = v80;
        _os_log_impl(&dword_1A9662000, v73, v74, "syncXPC [%{public}s] END -- Client {duration: %.*f}", v76, 0x1Cu);
        __swift_destroy_boxed_opaque_existential_0Tm(v77);
        MEMORY[0x1AC58D2C0](v77, -1, -1);
        MEMORY[0x1AC58D2C0](v76, -1, -1);

        (*(v91 + 8))(v94, v92);
        (*(v95 + 8))(v97, v100);
        sub_1A97B06FC(v112, &qword_1EB3B0BA0, &unk_1A99923D0);
        v81(v102, v83);
      }

      else
      {

        v84 = *(v103 + 8);
        v84(v71, v70);
        (*(v91 + 8))(v94, v92);
        (*(v95 + 8))(v97, v100);
        sub_1A97B06FC(v112, &qword_1EB3B0BA0, &unk_1A99923D0);
        v84(v72, v70);
      }

      (*(v87 + 32))(v88, v90, v89);

      os_activity_scope_leave(&v109);
      return;
    }

    v111 = *p_isa;
    v65 = v64;
    v66 = v64;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
    v67 = sub_1A99777A0();
    v49 = v102;
    if (v67)
    {
      v44 = v67;
    }

    else
    {
      v44 = swift_allocError();
      *v69 = v64;
    }

    v48 = v104;
    swift_willThrow();

    (*(v91 + 8))(v94, v92);
    (*(v95 + 8))(v97, v100);
    goto LABEL_17;
  }

  sub_1A97B06FC(v112, &qword_1EB3B0BA0, &unk_1A99923D0);

  v48 = v104;
  v49 = v102;
LABEL_18:
  v51 = v101;
  (*(v103 + 16))(v101, v49, v48);

  v52 = v44;
  disableAirDropTLS();
  disableAirDropTLS();
  v53 = sub_1A9976480();
  v54 = sub_1A9976F70();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v100 = v56;
    v101 = swift_slowAlloc();
    *&v112[0] = v101;
    *v55 = 136446978;
    *(v55 + 4) = sub_1A97AF148(v99, v45, v112);
    *(v55 + 12) = 2114;
    v57 = sub_1A9975F10();
    *(v55 + 14) = v57;
    *v56 = v57;
    *(v55 + 22) = 1040;
    *(v55 + 24) = 3;
    *(v55 + 28) = 2048;
    v58 = v98;
    sub_1A9976220();
    sub_1A99760D0();
    v60 = v59;
    v61 = *(v103 + 8);
    v61(v58, v104);
    v61(v51, v104);
    *(v55 + 30) = v60;
    _os_log_impl(&dword_1A9662000, v53, v54, "syncXPC [%{public}s] FAIL -- Client {error: %{public}@, duration: %.*f}", v55, 0x26u);
    v62 = v100;
    sub_1A97B06FC(v100, &unk_1EB3B2A50, &unk_1A9999420);
    MEMORY[0x1AC58D2C0](v62, -1, -1);
    v63 = v101;
    __swift_destroy_boxed_opaque_existential_0Tm(v101);
    v48 = v104;
    MEMORY[0x1AC58D2C0](v63, -1, -1);
    MEMORY[0x1AC58D2C0](v55, -1, -1);
  }

  else
  {

    v61 = *(v103 + 8);
    v61(v51, v48);
  }

  swift_willThrow();
  v61(v102, v48);
  os_activity_scope_leave(&v109);
}

uint64_t sub_1A9850590@<X0>(void (*a1)(_BYTE *)@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x1EEE9AC00](a1);
  v5 = &v11[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1A9977A20();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-v8];
  a1(v5);
  swift_storeEnumTagMultiPayload();
  return (*(v7 + 32))(a2, v9, v6);
}

uint64_t SFXPCConnection.__allocating_init(machServiceName:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v5 = sub_1A99767E0();

  v6 = [v4 initWithMachServiceName:v5 options:0];

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  v8 = v6;
  [v8 sf:a3 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v8 setRemoteObjectInterface_];

  return v7;
}

uint64_t SFXPCConnection.asyncInvoke<A>(_:parameters:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[11] = a5;
  v6[12] = v5;
  v6[9] = a3;
  v6[10] = a4;
  v6[8] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6[13] = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  v6[14] = v8;
  v6[15] = *(v8 + 64);
  v6[16] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9850990, 0, 0);
}

uint64_t sub_1A9850990()
{
  v1 = [objc_allocWithZone(*(v0 + 80)) init];
  *(v0 + 136) = v1;
  v25 = v1;
  if (*&v1[OBJC_IVAR___SFXPCInvocation_name + 8])
  {
    v27 = *&v1[OBJC_IVAR___SFXPCInvocation_name];
    v2 = *&v1[OBJC_IVAR___SFXPCInvocation_name + 8];
  }

  else
  {
    v2 = 0x80000001A99E51B0;
    v27 = 0xD00000000000001BLL;
  }

  *(v0 + 144) = v2;
  v3 = *(v0 + 120);
  v4 = *(v0 + 128);
  v21 = v4;
  v22 = v2;
  v6 = *(v0 + 104);
  v5 = *(v0 + 112);
  v7 = *(v0 + 88);
  v8 = *(v0 + 96);
  v10 = *(v0 + 72);
  v9 = *(v0 + 80);
  swift_beginAccess();
  v11 = *(v8 + 24);
  *(v0 + 152) = v11;
  swift_beginAccess();
  v23 = *(v8 + 16);
  *(v0 + 160) = v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16B0, &qword_1A9992880);
  (*(v5 + 16))(v4, v10, v6);
  v12 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v13 = (v3 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = swift_allocObject();
  *(v0 + 168) = v14;
  *(v14 + 2) = v9;
  *(v14 + 3) = v7;
  *(v14 + 4) = v27;
  *(v14 + 5) = v22;
  (*(v5 + 32))(&v14[v12], v21, v6);
  *&v14[v13] = v11;
  *&v14[(v13 + 15) & 0xFFFFFFFFFFFFFFF8] = v25;
  swift_retain_n();

  v23;

  v15 = v25;
  v16 = swift_task_alloc();
  *(v0 + 176) = v16;
  v17 = sub_1A985487C();
  swift_getAssociatedTypeWitness();
  *v16 = v0;
  v16[1] = sub_1A9850C34;
  v19 = *(v0 + 64);

  return sub_1A984F364(v19, v27, v22, v18, sub_1A9854794, v14, v17, v24);
}

uint64_t sub_1A9850C34()
{
  v2 = *v1;
  *(*v1 + 184) = v0;

  v3 = *(v2 + 160);

  if (v0)
  {
    v4 = sub_1A9850E14;
  }

  else
  {
    v4 = sub_1A9850D9C;
  }

  return MEMORY[0x1EEE6DFA0](v4, 0, 0);
}

uint64_t sub_1A9850D9C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A9850E14()
{

  v1 = *(v0 + 8);

  return v1();
}

id SFXPCInvocation.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = &v2[OBJC_IVAR___SFXPCInvocation_name];
  *v3 = a1;
  *(v3 + 1) = a2;
  v5.receiver = v2;
  v5.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v5, sel_init);
}

id SFXPCInvocation.init(coder:)(void *a1)
{
  v2 = sub_1A98548EC(a1);

  return v2;
}

void sub_1A9850F00(void *a1)
{
  if (*(v1 + OBJC_IVAR___SFXPCInvocation_name + 8))
  {
    v3 = sub_1A99767E0();
    v4 = sub_1A99767E0();
    [a1 encodeObject:v3 forKey:v4];
  }
}

uint64_t sub_1A9850F9C()
{
  v0 = sub_1A99764A0();
  __swift_allocate_value_buffer(v0, qword_1EB3AD0F0);
  v1 = __swift_project_value_buffer(v0, qword_1EB3AD0F0);
  if (qword_1ED717D40 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_1ED717D48);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1A9851074(uint64_t a1)
{
  v2 = sub_1A98549F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98510B0(uint64_t a1)
{
  v2 = sub_1A98549F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9851184(uint64_t a1)
{
  v2 = sub_1A9854A48();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98511C0(uint64_t a1)
{
  v2 = sub_1A9854A48();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9851240(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  sub_1A9977AA0();
  return (*(v8 + 8))(v10, v7);
}

uint64_t sub_1A98513CC(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  sub_1A9977AA0();
  return (*(v10 + 8))(v12, v9);
}

id SFXPCConnection.connection.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SFXPCConnection.containerRegistry.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t SFXPCConnection.__allocating_init(_:queue:)(void *a1, void *a2)
{
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = 0;
  v5 = a1;
  [v5 sf:a2 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v5 setRemoteObjectInterface_];

  return v4;
}

uint64_t SFXPCConnection.init(_:queue:)(void *a1, void *a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = 0;
  v4 = a1;
  [v4 sf:a2 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v4 setRemoteObjectInterface_];

  return v2;
}

uint64_t *SFXPCConnection.__allocating_init(_:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  swift_allocObject();
  v6 = sub_1A9854A9C(a1, a2, a3);

  return v6;
}

uint64_t *SFXPCConnection.init(_:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1A9854A9C(a1, a2, a3);

  return v4;
}

uint64_t sub_1A98517D8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
    v6 = sub_1A99767E0();
    v7 = [v5 initWithMachServiceName:v6 options:0];

    swift_beginAccess();
    v8 = *(v4 + 16);
    *(v4 + 16) = v7;
    v9 = v7;

    [v9 sf:a2 setQueue:?];
    if (qword_1ED717DF0 != -1)
    {
      swift_once();
    }

    [v9 setRemoteObjectInterface_];

    [*(v4 + 16) activate];
  }

  return result;
}

uint64_t SFXPCConnection.__allocating_init(serviceName:queue:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v5 = sub_1A99767E0();

  v6 = [v4 initWithServiceName_];

  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  *(v7 + 24) = 0;
  v8 = v6;
  [v8 sf:a3 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v8 setRemoteObjectInterface_];

  return v7;
}

uint64_t SFXPCConnection.__allocating_init(listenerEndpoint:queue:)(void *a1, void *a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E696B0B8]) initWithListenerEndpoint_];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = 0;
  v6 = v4;
  [v6 sf:a2 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v6 setRemoteObjectInterface_];

  return v5;
}

id SFXPCInvocation.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1A9851B2C(void **a1, void *a2, void *a3, char *a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v45 = a7;
  v46 = a5;
  v47 = a3;
  v44 = a2;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v13 = sub_1A9976BB0();
  v42 = *(v13 - 8);
  v43 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v40 - v17;
  v19 = *a1;
  (*(v20 + 16))(&v40 - v17, v46, AssociatedTypeWitness);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v22 = AssociatedConformanceWitness;
  v23 = v49;
  v25 = sub_1A984EAD4(v47, a4, v18, a6, AssociatedTypeWitness, v24, v22);
  if (!v23)
  {
    v29 = v27;
    v30 = v28;
    v46 = v26;
    v47 = v25;
    v49 = 0;
    v41 = sub_1A9976060();
    v32 = v42;
    v31 = v43;
    (*(v42 + 16))(v15, v44, v43);
    v33 = *(v32 + 80);
    v44 = v19;
    v34 = (v33 + 32) & ~v33;
    v35 = swift_allocObject();
    *(v35 + 16) = a8;
    *(v35 + 24) = a9;
    (*(v32 + 32))(v35 + v34, v15, v31);
    aBlock[4] = sub_1A98556D8;
    aBlock[5] = v35;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_80;
    v36 = _Block_copy(aBlock);
    v37 = v29;
    v38 = v30;

    v39 = v41;
    [v44 invoke:v45 parametersData:v41 parametersAsyncSequenceContainer:v37 parametersBlocksContainer:v38 sync:0 completion:v36];
    _Block_release(v36);

    sub_1A97B43C4(v47, v46);
  }
}

uint64_t sub_1A9851EA8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a6;
  v34 = a5;
  v35 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v36 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v33 = sub_1A9977A20();
  v31 = *(v33 - 8);
  v11 = MEMORY[0x1EEE9AC00](v33);
  v29 = &v26 - v12;
  v28 = *(AssociatedTypeWitness - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v27 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v26 - v15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18 = swift_getAssociatedConformanceWitness();
  v32 = type metadata accessor for SFXPCConnection.PerformedInvocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v20 = &v26 - v19;
  sub_1A97C1554(a1, a2);
  v21 = v34;
  v22 = v34;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A984F298(a1, a2, v21, v20);
  v23 = v33;
  (*(v31 + 16))(v29, v20, v33);
  sub_1A984F65C(v23, &v38, v16);
  v24 = v28;
  (*(v28 + 16))(v27, v16, AssociatedTypeWitness);
  sub_1A9976BB0();
  sub_1A9976BA0();
  (*(v24 + 8))(v16, AssociatedTypeWitness);
  return (*(v30 + 8))(v20, v32);
}

void SFXPCConnection.syncInvoke<A>(_:parameters:)(objc_class *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v38 = a2;
  v6 = v5;
  v34 = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v33 = sub_1A9977A20();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v32 = &v29 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for SFXPCConnection.PerformedInvocation(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v30 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v36 = &v29 - v15;
  v16 = [objc_allocWithZone(a1) init];
  v17 = *&v16[OBJC_IVAR___SFXPCInvocation_name + 8];
  v37 = v14;
  if (v17)
  {
    v18 = *&v16[OBJC_IVAR___SFXPCInvocation_name];
    v19 = v17;
  }

  else
  {
    v19 = 0x80000001A99E5270;
    v18 = 0xD000000000000019;
  }

  swift_beginAccess();
  v20 = *(v6 + 16);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B16B0, &qword_1A9992880);
  v35 = &v29;
  MEMORY[0x1EEE9AC00](v21);
  *(&v29 - 8) = a3;
  *(&v29 - 7) = a4;
  *(&v29 - 6) = v18;
  *(&v29 - 5) = v19;
  *(&v29 - 4) = v38;
  *(&v29 - 3) = v22;
  v23 = v16;
  *(&v29 - 2) = v16;
  sub_1A985487C();

  v24 = v20;
  v25 = v36;
  v26 = v37;
  v27 = v39;
  sub_1A984F72C(v18, v19, sub_1A9854CD8, (&v29 - 10), v21, v37, v36);

  if (v27)
  {
  }

  else
  {

    v28 = v33;
    (*(v31 + 16))(v32, v25, v33);
    sub_1A984F65C(v28, &v40, v34);
    (*(v30 + 8))(v25, v26);
  }
}

uint64_t sub_1A9852638@<X0>(void **a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v50 = a6;
  v51 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v18 = &v45 - v17;
  v19 = *a1;
  (*(v20 + 16))(&v45 - v17, a4, AssociatedTypeWitness);
  swift_beginAccess();
  v21 = *(a5 + 24);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();

  v23 = AssociatedConformanceWitness;
  v24 = v53;
  result = sub_1A984EAD4(a2, a3, v18, v21, AssociatedTypeWitness, v25, v23);
  if (!v24)
  {
    v30 = v28;
    v46 = result;
    v47 = v27;
    v48 = v29;
    v49 = v19;
    v53 = 0;
    v31 = swift_getAssociatedTypeWitness();
    v32 = swift_getAssociatedConformanceWitness();
    v33 = swift_getAssociatedConformanceWitness();
    v34 = type metadata accessor for SFXPCConnection.PerformedInvocation(255, v31, v32, v33);
    v35 = sub_1A99770A0();
    v36 = swift_allocBox();
    v38 = v37;
    (*(*(v34 - 8) + 56))(v37, 1, 1, v34);
    v39 = v46;
    v40 = sub_1A9976060();
    v41 = swift_allocObject();
    v41[2] = a7;
    v41[3] = a8;
    v41[4] = v36;
    aBlock[4] = sub_1A9855384;
    aBlock[5] = v41;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1A989629C;
    aBlock[3] = &block_descriptor_34;
    v42 = _Block_copy(aBlock);
    v43 = v30;
    v44 = v48;

    [v49 invoke:v50 parametersData:v40 parametersAsyncSequenceContainer:v43 parametersBlocksContainer:v44 sync:1 completion:v42];
    sub_1A97B43C4(v39, v47);

    _Block_release(v42);
    swift_beginAccess();
    (*(*(v35 - 8) + 16))(v51, v38, v35);
  }

  return result;
}

uint64_t sub_1A98529FC(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v25 = a6;
  v27 = a5;
  v28 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = swift_getAssociatedConformanceWitness();
  v11 = type metadata accessor for SFXPCConnection.PerformedInvocation(255, AssociatedTypeWitness, AssociatedConformanceWitness, v23);
  v26 = sub_1A99770A0();
  v12 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v14 = &v22 - v13;
  v15 = swift_projectBox();
  v16 = a1;
  v17 = a1;
  v18 = a2;
  sub_1A97C1554(v17, a2);
  v19 = v27;
  v20 = v27;
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  sub_1A984F298(v16, v18, v19, v14);
  (*(*(v11 - 8) + 56))(v14, 0, 1, v11);
  swift_beginAccess();
  return (*(v12 + 40))(v15, v14, v26);
}

uint64_t sub_1A9852C44()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_1A9852D18;

  return MEMORY[0x1EEE6DDE0]();
}

uint64_t sub_1A9852D18()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9852E14, 0, 0);
}

void sub_1A9852E28(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B3030, &qword_1A9999B38);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &aBlock[-1] - v6;
  swift_beginAccess();
  v8 = *(a2 + 16);
  (*(v5 + 16))(v7, a1, v4);
  v9 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v10 = swift_allocObject();
  (*(v5 + 32))(v10 + v9, v7, v4);
  aBlock[4] = sub_1A98552F8;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981D3F8;
  aBlock[3] = &block_descriptor_6;
  v11 = _Block_copy(aBlock);
  v12 = v8;

  [v12 scheduleSendBarrierBlock_];
  _Block_release(v11);
}

uint64_t sub_1A9853000@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>, uint64_t *a9)
{
  v48 = a7;
  v49 = a4;
  v45 = a2;
  v46 = a6;
  v53 = a5;
  v47 = a8;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B1480, &unk_1A9994AB0);
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v15 = v38 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v17 = v38 - v16;
  v18 = sub_1A9977460();
  v19 = *(v18 - 8);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = v38 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v24 = v38 - v23;
  result = Optional<A>.throwIfNotNil()(a1);
  if (v9)
  {
    goto LABEL_13;
  }

  v26 = v49;
  v43 = v22;
  v44 = v15;
  v27 = v53;
  if (a3 >> 60 == 15)
  {
    sub_1A97BCDE0();
    v28 = swift_allocError();
    *v29 = xmmword_1A99997D0;
    *(v29 + 16) = 0xD000000000000051;
    *(v29 + 24) = 0x80000001A99E51F0;
    v30 = 164;
LABEL_12:
    *(v29 + 32) = v30;
    *(v29 + 80) = 0x2000000000000000;
    v37 = v28;
    result = swift_willThrow();
    v9 = v37;
    goto LABEL_13;
  }

  if (!v49)
  {
    sub_1A97BCDE0();
    v28 = swift_allocError();
    *v29 = 0xD000000000000018;
    *(v29 + 8) = 0x80000001A99E52F0;
    *(v29 + 16) = 0xD000000000000051;
    *(v29 + 24) = 0x80000001A99E51F0;
    v30 = 165;
    goto LABEL_12;
  }

  if (!v53)
  {
    sub_1A97BCDE0();
    v28 = swift_allocError();
    *v29 = 0xD000000000000011;
    *(v29 + 8) = 0x80000001A99E5310;
    *(v29 + 16) = 0xD000000000000051;
    *(v29 + 24) = 0x80000001A99E51F0;
    v30 = 166;
    goto LABEL_12;
  }

  v40 = 0;
  sub_1A9975E40();
  swift_allocObject();
  v42 = sub_1A9975E30();
  sub_1A9977450();
  v41 = *(v19 + 48);
  result = v41(v17, 1, v18);
  if (result == 1)
  {
    __break(1u);
    goto LABEL_15;
  }

  v31 = *(v19 + 32);
  v38[1] = v19 + 32;
  v39 = v31;
  v31(v24, v17, v18);
  ObjectType = swift_getObjectType();
  v51[0] = v26;
  swift_unknownObjectRetain();
  v32 = v18;
  v33 = sub_1A9975E20();
  sub_1A97DCC4C(v51, v24);
  v33(v50, 0);
  v34 = v44;
  sub_1A9977450();
  result = v41(v34, 1, v18);
  if (result == 1)
  {
LABEL_15:
    __break(1u);
    return result;
  }

  v35 = v43;
  v39(v43, v34, v32);
  ObjectType = swift_getObjectType();
  v51[0] = v27;
  swift_unknownObjectRetain();
  v36 = sub_1A9975E20();
  sub_1A97DCC4C(v51, v35);
  v36(v50, 0);
  v9 = v40;
  sub_1A9975E10();

  if (v9)
  {
LABEL_13:
    *a9 = v9;
  }

  return result;
}

uint64_t SFXPCConnection.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

id sub_1A98534E4(void *a1, uint64_t a2)
{
  swift_beginAccess();
  v4 = *(a2 + 16);
  *(a2 + 16) = a1;

  return a1;
}

uint64_t sub_1A9853538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32 = a7;
  v33 = a8;
  v34 = a5;
  v35 = a6;
  v36 = a3;
  v37 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v13 = sub_1A9976BB0();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v31 - v16;
  (*(v14 + 16))(&v31 - v16, a1, v13);
  v18 = (*(v14 + 80) + 64) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v33;
  *(v19 + 2) = v32;
  *(v19 + 3) = v20;
  *(v19 + 4) = a9;
  *(v19 + 5) = a2;
  *(v19 + 6) = a3;
  *(v19 + 7) = a4;
  (*(v14 + 32))(&v19[v18], v17, v13);
  v21 = &v19[(v15 + v18 + 7) & 0xFFFFFFFFFFFFFFF8];
  v22 = v35;
  *v21 = v34;
  v21[1] = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_1A9855544;
  *(v23 + 24) = v19;
  aBlock[4] = sub_1A981321C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981E5CC;
  aBlock[3] = &block_descriptor_58;
  v24 = _Block_copy(aBlock);
  v25 = _Block_copy(v24);
  v26 = swift_allocObject();
  *(v26 + 16) = v25;
  v27 = swift_allocObject();
  *(v27 + 16) = sub_1A984BE0C;
  *(v27 + 24) = v26;
  v38[4] = sub_1A984E098;
  v38[5] = v27;
  v38[0] = MEMORY[0x1E69E9820];
  v38[1] = 1107296256;
  v38[2] = sub_1A981E5CC;
  v38[3] = &block_descriptor_68;
  v28 = _Block_copy(v38);

  swift_unknownObjectRetain();

  _Block_copy(v25);

  _os_activity_initiate(&dword_1A9662000, "asyncXPC", OS_ACTIVITY_FLAG_IF_NONE_PRESENT, v28);
  _Block_release(v24);
  _Block_release(v25);
  _Block_release(v28);
  LOBYTE(v28) = swift_isEscapingClosureAtFileLocation();

  if (v28)
  {
    __break(1u);
    goto LABEL_5;
  }

  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

uint64_t sub_1A98538F8(uint64_t a1, unint64_t a2, void *a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = a8;
  v65 = a7;
  v61 = a6;
  v62 = a5;
  v67 = a3;
  v68 = a1;
  v63 = *(a8 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v71 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v64 = a9;
  v73 = sub_1A9976BB0();
  v13 = *(v73 - 1);
  MEMORY[0x1EEE9AC00](v73);
  v15 = &v56 - v14;
  v16 = sub_1A9976230();
  v70 = *(v16 - 8);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v60 = &v56 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v59 = &v56 - v20;
  v21 = MEMORY[0x1EEE9AC00](v19);
  v58 = &v56 - v22;
  MEMORY[0x1EEE9AC00](v21);
  v24 = &v56 - v23;
  sub_1A9976220();
  if (qword_1EB3AD0E0 != -1)
  {
    swift_once();
  }

  v72 = v24;
  v25 = sub_1A99764A0();
  v26 = __swift_project_value_buffer(v25, qword_1EB3AD0F0);

  v66 = v26;
  v27 = sub_1A9976480();
  v28 = sub_1A9976F90();

  v29 = os_log_type_enabled(v27, v28);
  v69 = a2;
  if (v29)
  {
    v30 = swift_slowAlloc();
    v57 = v16;
    v31 = v9;
    v32 = v30;
    v33 = swift_slowAlloc();
    aBlock[0] = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_1A97AF148(v68, a2, aBlock);
    _os_log_impl(&dword_1A9662000, v27, v28, "asyncXPC [%{public}s] START -- Client", v32, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v33);
    MEMORY[0x1AC58D2C0](v33, -1, -1);
    v34 = v32;
    v9 = v31;
    v16 = v57;
    MEMORY[0x1AC58D2C0](v34, -1, -1);
  }

  v35 = v73;
  (*(v13 + 16))(v15, a4, v73);
  v36 = (*(v13 + 80) + 40) & ~*(v13 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = v65;
  *(v37 + 3) = v9;
  *(v37 + 4) = v64;
  (*(v13 + 32))(&v37[v36], v15, v35);
  aBlock[4] = sub_1A9855620;
  aBlock[5] = v37;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A984AA04;
  aBlock[3] = &block_descriptor_74;
  v38 = _Block_copy(aBlock);

  v39 = [v67 remoteObjectProxyWithErrorHandler_];
  _Block_release(v38);
  sub_1A99771B0();
  swift_unknownObjectRelease();
  v40 = v71;
  tryCast<A>(_:as:description:file:line:)(v75, v9, 0, 0, 0xD000000000000051, 0x80000001A99E51F0, 217, v9, v71);
  v62(v40, a4);
  v41 = v72;
  v42 = v70;
  v43 = v58;
  (*(v70 + 16))(v58, v72, v16);
  v44 = v69;

  disableAirDropTLS();
  disableAirDropTLS();
  v45 = sub_1A9976480();
  v46 = v16;
  v47 = sub_1A9976F90();

  if (os_log_type_enabled(v45, v47))
  {
    v48 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    aBlock[0] = v73;
    *v48 = 136446722;
    *(v48 + 4) = sub_1A97AF148(v68, v44, aBlock);
    *(v48 + 12) = 1040;
    *(v48 + 14) = 3;
    *(v48 + 18) = 2048;
    v49 = v59;
    sub_1A9976220();
    sub_1A99760D0();
    v51 = v50;
    v52 = *(v42 + 8);
    v52(v49, v46);
    v52(v43, v46);
    *(v48 + 20) = v51;
    _os_log_impl(&dword_1A9662000, v45, v47, "asyncXPC [%{public}s] END -- {duration: %.*f}", v48, 0x1Cu);
    v53 = v73;
    __swift_destroy_boxed_opaque_existential_0Tm(v73);
    MEMORY[0x1AC58D2C0](v53, -1, -1);
    MEMORY[0x1AC58D2C0](v48, -1, -1);

    (*(v63 + 8))(v40, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    v54 = v72;
  }

  else
  {

    v52 = *(v42 + 8);
    v52(v43, v46);
    (*(v63 + 8))(v40, v9);
    __swift_destroy_boxed_opaque_existential_0Tm(v75);
    v54 = v41;
  }

  return (v52)(v54, v46);
}

uint64_t sub_1A9854438(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  sub_1A9976BB0();
  return sub_1A9976B90();
}

id SFXPCInvocation.__allocating_init(name:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = &v5[OBJC_IVAR___SFXPCInvocation_name];
  *v6 = a1;
  *(v6 + 1) = a2;
  v8.receiver = v5;
  v8.super_class = v2;
  return objc_msgSendSuper2(&v8, sel_init);
}

id SFXPCInvocation.init()()
{
  swift_getObjectType();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v2 = NSStringFromClass(ObjCClassFromMetadata);
  v3 = sub_1A9976820();
  v5 = v4;

  v6 = &v0[OBJC_IVAR___SFXPCInvocation_name];
  *v6 = v3;
  v6[1] = v5;
  v8.receiver = v0;
  v8.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v8, sel_init);
}

id SFXPCInvocation.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = sub_1A98548EC(a1);

  return v4;
}

id SFXPCInvocation.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void sub_1A9854794(void **a1, void *a2)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1A9851B2C(a1, a2, *(v2 + 32), *(v2 + 40), v2 + v8, *(v2 + v9), *(v2 + ((v9 + 15) & 0xFFFFFFFFFFFFFFF8)), v5, v6);
}

unint64_t sub_1A985487C()
{
  result = qword_1EB3ACFD8[0];
  if (!qword_1EB3ACFD8[0])
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, qword_1EB3ACFD8);
  }

  return result;
}

id sub_1A98548EC(void *a1)
{
  v3 = sub_1A99767E0();
  v4 = [a1 decodeObjectForKey_];

  if (v4)
  {
    sub_1A99771B0();
    swift_unknownObjectRelease();
    sub_1A967C4DC(v14, v15);
    sub_1A967C4DC(v15, v14);
    v5 = swift_dynamicCast();
    v6 = v11;
    v7 = v12;
    if (!v5)
    {
      v6 = 0;
      v7 = 0;
    }

    v8 = &v1[OBJC_IVAR___SFXPCInvocation_name];
    *v8 = v6;
    *(v8 + 1) = v7;
  }

  else
  {
    v9 = &v1[OBJC_IVAR___SFXPCInvocation_name];
    *v9 = 0;
    *(v9 + 1) = 0;
  }

  v13.receiver = v1;
  v13.super_class = type metadata accessor for SFXPCInvocation();
  return objc_msgSendSuper2(&v13, sel_init);
}

unint64_t sub_1A98549F4()
{
  result = qword_1EB3ACB98[0];
  if (!qword_1EB3ACB98[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3ACB98);
  }

  return result;
}

unint64_t sub_1A9854A48()
{
  result = qword_1EB3AC788;
  if (!qword_1EB3AC788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC788);
  }

  return result;
}

uint64_t *sub_1A9854A9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *v3;

  v3[3] = 0;
  v6 = objc_allocWithZone(MEMORY[0x1E696B0B8]);
  v7 = sub_1A99767E0();
  v8 = [v6 initWithMachServiceName:v7 options:0];

  v3[2] = v8;
  v9 = v8;
  [v9 sf:a3 setQueue:?];
  if (qword_1ED717DF0 != -1)
  {
    swift_once();
  }

  [v9 setRemoteObjectInterface_];

  swift_beginAccess();
  v10 = v3[2];
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  v12[2] = v11;
  v12[3] = a3;
  v12[4] = v5;
  aBlock[4] = sub_1A9855504;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A981D3F8;
  aBlock[3] = &block_descriptor_47;
  v13 = _Block_copy(aBlock);
  v14 = v10;
  v15 = a3;

  [v14 setInterruptionHandler_];
  _Block_release(v13);

  return v3;
}

uint64_t dispatch thunk of SFXPCConnection.__allocating_init(_:queue:)()
{
  return (*(v0 + 96))();
}

{
  return (*(v0 + 104))();
}

uint64_t sub_1A9854E14(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  result = sub_1A9977A20();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A9854EA8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 8;
  if (*(v3 + 64) > 8uLL)
  {
    v4 = *(v3 + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v5 = v4 + 1;
  v6 = 8 * (v4 + 1);
  if ((v4 + 1) <= 3)
  {
    v9 = ((a2 + ~(-1 << v6) - 254) >> v6) + 1;
    if (HIWORD(v9))
    {
      v7 = *(a1 + v5);
      if (!v7)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 > 0xFF)
    {
      v7 = *(a1 + v5);
      if (!*(a1 + v5))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v9 < 2)
    {
LABEL_25:
      v11 = *(a1 + v4);
      if (v11 >= 2)
      {
        return (v11 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v7 = *(a1 + v5);
  if (!*(a1 + v5))
  {
    goto LABEL_25;
  }

LABEL_14:
  v10 = (v7 - 1) << v6;
  if (v5 > 3)
  {
    v10 = 0;
  }

  if (v5)
  {
    if (v5 > 3)
    {
      LODWORD(v5) = 4;
    }

    if (v5 > 2)
    {
      if (v5 == 3)
      {
        LODWORD(v5) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v5) = *a1;
      }
    }

    else if (v5 == 1)
    {
      LODWORD(v5) = *a1;
    }

    else
    {
      LODWORD(v5) = *a1;
    }
  }

  return (v5 | v10) + 255;
}

void sub_1A9854FC0(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

unint64_t sub_1A985519C()
{
  result = qword_1EB3AC770;
  if (!qword_1EB3AC770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC770);
  }

  return result;
}

unint64_t sub_1A98551F4()
{
  result = qword_1EB3AC778;
  if (!qword_1EB3AC778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3AC778);
  }

  return result;
}

unint64_t sub_1A985524C()
{
  result = qword_1EB3ACB80;
  if (!qword_1EB3ACB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ACB80);
  }

  return result;
}

unint64_t sub_1A98552A4()
{
  result = qword_1EB3ACB88;
  if (!qword_1EB3ACB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3ACB88);
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A98553C8(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_1A99762C0() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = v1[4];
  v10 = (v1 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1A97B2638;

  return sub_1A98140D4(a1, v7, v8, v9, v1 + v6, v11, v12);
}

uint64_t sub_1A9855544()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v4 = *(sub_1A9976BB0() - 8);
  v5 = (*(v4 + 80) + 64) & ~*(v4 + 80);
  v6 = v0 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8);
  return sub_1A98538F8(*(v0 + 40), *(v0 + 48), *(v0 + 56), v0 + v5, *v6, *(v6 + 8), v1, v2, v3);
}

uint64_t sub_1A9855620(void *a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v6 = *(sub_1A9976BB0() - 8);
  v7 = v1 + ((*(v6 + 80) + 40) & ~*(v6 + 80));

  return sub_1A9854438(a1, v7, v3, v4, v5);
}

uint64_t sub_1A98556D8(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v13 = *(sub_1A9976BB0() - 8);
  v14 = v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80));

  return sub_1A9851EA8(a1, a2, a3, a4, a5, v14, v11, v12);
}

uint64_t sub_1A985588C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X2>, uint64_t a4@<X3>)
{
  v6 = *(a1 + 16);
  v7 = type metadata accessor for SFPlatformValue(0, v6, a3, a4);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v12 - v8;
  (*(v10 + 16))(&v12 - v8, v4);
  return (*(*(v6 - 8) + 32))(a2, v9, v6);
}

uint64_t SFVariantValue.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  sub_1A985588C(v3, v5, v6, v7);
  sub_1A99777B0();
  (*(v2 + 8))(v5, v1);
  return v9[0];
}

uint64_t SFVariantValue<A>.userDefaultsRepresentation.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A985588C(v5, v7, v8, v9);
  (*(a2 + 8))(v3, a2);
  return (*(v4 + 8))(v7, v3);
}

uint64_t SFVariantValue<A>.init(userDefaultsString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v30 = a4;
  v31 = a5;
  v8 = type metadata accessor for SFPlatformValue(255, a3, a3, a4);
  v9 = sub_1A99770A0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v30 - v12;
  v14 = *(v8 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v30 - v18;
  SFPlatformValue<A>.init(userDefaultsString:)(a1, a2, a3, v30, v13);
  if ((*(v14 + 48))(v13, 1, v8) == 1)
  {
    (*(v10 + 8))(v13, v9);
    v22 = 1;
    v23 = v31;
  }

  else
  {
    v24 = *(v14 + 32);
    v24(v19, v13, v8);
    v24(v17, v19, v8);
    v27 = type metadata accessor for SFPlatformValue(0, a3, v25, v26);
    v23 = v31;
    (*(*(v27 - 8) + 32))(v31, v17, v27);
    v22 = 0;
  }

  v28 = type metadata accessor for SFVariantValue(0, a3, v20, v21);
  return (*(*(v28 - 8) + 56))(v23, v22, 1, v28);
}

uint64_t SFPlatformValue<A>.init(userDefaultsString:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v28 = a5;
  v9 = sub_1A99770A0();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v27 - v12;
  v14 = *(a3 - 8);
  v15 = MEMORY[0x1EEE9AC00](v11);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v27 - v18;
  (*(a4 + 16))(a1, a2, a3, a4);
  if ((*(v14 + 48))(v13, 1, a3) == 1)
  {
    (*(v10 + 8))(v13, v9);
    v22 = 1;
    v23 = v28;
  }

  else
  {
    v24 = *(v14 + 32);
    v24(v19, v13, a3);
    v24(v17, v19, a3);
    v23 = v28;
    v24(v28, v17, a3);
    v22 = 0;
  }

  v25 = type metadata accessor for SFPlatformValue(0, a3, v20, v21);
  return (*(*(v25 - 8) + 56))(v23, v22, 1, v25);
}

uint64_t sub_1A98560AC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A985611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for SFPlatformValue(319, *(a1 + 16), a3, a4);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A985618C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (!a2)
  {
    return 0;
  }

  v7 = a2 - v5;
  if (a2 <= v5)
  {
    return (*(v4 + 48))();
  }

  v8 = 8 * v6;
  if (v6 <= 3)
  {
    v10 = ((v7 + ~(-1 << v8)) >> v8) + 1;
    if (HIWORD(v10))
    {
      v9 = *(a1 + v6);
      if (!v9)
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 > 0xFF)
    {
      v9 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_22;
      }

      goto LABEL_11;
    }

    if (v10 < 2)
    {
LABEL_22:
      if (v5)
      {
        return (*(v4 + 48))();
      }

      return 0;
    }
  }

  v9 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_22;
  }

LABEL_11:
  v11 = (v9 - 1) << v8;
  if (v6 > 3)
  {
    v11 = 0;
  }

  if (v6)
  {
    if (v6 > 3)
    {
      LODWORD(v6) = 4;
    }

    if (v6 > 2)
    {
      if (v6 == 3)
      {
        LODWORD(v6) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v6) = *a1;
      }
    }

    else if (v6 == 1)
    {
      LODWORD(v6) = *a1;
    }

    else
    {
      LODWORD(v6) = *a1;
    }
  }

  return v5 + (v6 | v11) + 1;
}

char *sub_1A98562CC(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = a3 >= v6;
  v9 = a3 - v6;
  if (v9 != 0 && v8)
  {
    if (v7 <= 3)
    {
      v14 = ((v9 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      if (HIWORD(v14))
      {
        v10 = 4;
      }

      else
      {
        if (v14 < 0x100)
        {
          v15 = 1;
        }

        else
        {
          v15 = 2;
        }

        if (v14 >= 2)
        {
          v10 = v15;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  else
  {
    v10 = 0;
  }

  if (v6 < a2)
  {
    v11 = ~v6 + a2;
    if (v7 < 4)
    {
      v13 = (v11 >> (8 * v7)) + 1;
      if (v7)
      {
        v16 = v11 & ~(-1 << (8 * v7));
        v17 = result;
        bzero(result, v7);
        result = v17;
        if (v7 != 3)
        {
          if (v7 == 2)
          {
            *v17 = v16;
            if (v10 > 1)
            {
LABEL_39:
              if (v10 == 2)
              {
                *&result[v7] = v13;
              }

              else
              {
                *&result[v7] = v13;
              }

              return result;
            }
          }

          else
          {
            *v17 = v11;
            if (v10 > 1)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_36;
        }

        *v17 = v16;
        v17[2] = BYTE2(v16);
      }

      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = result;
      bzero(result, v7);
      result = v12;
      *v12 = v11;
      v13 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }
    }

LABEL_36:
    if (v10)
    {
      result[v7] = v13;
    }

    return result;
  }

  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&result[v7] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_28;
    }

    *&result[v7] = 0;
  }

  else if (v10)
  {
    result[v7] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_28;
  }

  if (!a2)
  {
    return result;
  }

LABEL_28:
  v18 = *(v5 + 56);

  return v18();
}

uint64_t SFAirDropReceive.ItemDestination.url.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1A9975F80();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B2A40, &qword_1A99983B0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v21 - v9;
  v11 = type metadata accessor for SFAirDropReceive.ItemDestination(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v21 - v15;
  sub_1A9858830(v2, &v21 - v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      v20 = sub_1A9976020();
      return (*(*(v20 - 8) + 32))(a1, v16, v20);
    }
  }

  else if (EnumCaseMultiPayload != 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v18 = sub_1A9976020();
      (*(*(v18 - 8) + 56))(v10, 1, 1, v18);
      (*(v5 + 104))(v7, *MEMORY[0x1E6968F70], v4);
      return sub_1A9976010();
    }

    goto LABEL_8;
  }

  sub_1A9858894(v16);
LABEL_8:
  swift_storeEnumTagMultiPayload();
  SFAirDropReceive.ItemDestination.url.getter(a1);
  return sub_1A9858894(v14);
}

uint64_t SFAirDropReceive.ItemDestination.description.getter()
{
  v1 = v0;
  v2 = sub_1A9976020();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFAirDropReceive.ItemDestination(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1A9858830(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      return *v8;
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      sub_1A9858B94(&qword_1EB3B1FA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v11 = sub_1A9977730();
      (*(v3 + 8))(v5, v2);
      return v11;
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    sub_1A9858894(v8);
    return 0x7461646174656D2ELL;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return 0x746C75616665642ELL;
  }

  else
  {
    return 0x6D6574496F6E2ELL;
  }
}

uint64_t sub_1A98569A0()
{
  v1 = *v0;
  v2 = 0x746C7561666564;
  v3 = 0x70416D6F74737563;
  v4 = 0x6D6574496F6ELL;
  if (v1 != 3)
  {
    v4 = 0x617461646174656DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x52556D6F74737563;
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

uint64_t sub_1A9856A44@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A98592C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9856A6C(uint64_t a1)
{
  v2 = sub_1A98588F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9856AA8(uint64_t a1)
{
  v2 = sub_1A98588F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9856AFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000)
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

uint64_t sub_1A9856B84(uint64_t a1)
{
  v2 = sub_1A98589EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9856BC0(uint64_t a1)
{
  v2 = sub_1A98589EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9856BFC(uint64_t a1)
{
  v2 = sub_1A9858A40();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9856C38(uint64_t a1)
{
  v2 = sub_1A9858A40();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9856C74(uint64_t a1)
{
  v2 = sub_1A9858A94();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9856CB0(uint64_t a1)
{
  v2 = sub_1A9858A94();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9856CEC(uint64_t a1)
{
  v2 = sub_1A9858944();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9856D28(uint64_t a1)
{
  v2 = sub_1A9858944();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9856D64(uint64_t a1)
{
  v2 = sub_1A9858998();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9856DA0(uint64_t a1)
{
  v2 = sub_1A9858998();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDropReceive.ItemDestination.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B30C8, &qword_1A9999C38);
  v52 = *(v2 - 8);
  v53 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v51 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B30D0, &qword_1A9999C40);
  v49 = *(v4 - 8);
  v50 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v48 = &v46 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B30D8, &qword_1A9999C48);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v58 = &v46 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B30E0, &qword_1A9999C50);
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v46 - v9;
  v10 = sub_1A9976020();
  v54 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B30E8, &qword_1A9999C58);
  v46 = *(v13 - 8);
  v47 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v46 - v14;
  v16 = type metadata accessor for SFAirDropReceive.ItemDestination(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = (&v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B30F0, &qword_1A9999C60);
  v63 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v20 = &v46 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98588F0();
  v61 = v20;
  sub_1A9977AA0();
  sub_1A9858830(v62, v18);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v24 = v58;
    v25 = v59;
    v26 = v55;
    v27 = v10;
    v28 = v56;
    v29 = v57;
    v30 = v60;
    if (EnumCaseMultiPayload)
    {
      LOBYTE(v64) = 2;
      sub_1A98589EC();
      v43 = v24;
      v44 = v66;
      v45 = v61;
      sub_1A9977640();
      sub_1A9977690();

      (*(v25 + 8))(v43, v30);
      return (*(v63 + 8))(v45, v44);
    }

    else
    {
      v31 = v54;
      v32 = v12;
      v33 = v27;
      (*(v54 + 32))(v12, v18, v27);
      LOBYTE(v64) = 1;
      sub_1A9858A40();
      v34 = v61;
      sub_1A9977640();
      sub_1A9858B94(&qword_1EB3B1918, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
      sub_1A99776E0();
      (*(v28 + 8))(v26, v29);
      (*(v31 + 8))(v32, v33);
      return (*(v63 + 8))(v34, v66);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v37 = *v18;
    v36 = v18[1];
    LOBYTE(v64) = 4;
    sub_1A9858944();
    v38 = v51;
    v39 = v66;
    v40 = v61;
    sub_1A9977640();
    v64 = v37;
    v65 = v36;
    sub_1A97B4370();
    v41 = v53;
    sub_1A9977680();
    (*(v52 + 8))(v38, v41);
    (*(v63 + 8))(v40, v39);
    return sub_1A97D8688(v37, v36);
  }

  else
  {
    v22 = v61;
    if (EnumCaseMultiPayload == 3)
    {
      LOBYTE(v64) = 0;
      sub_1A9858A94();
      v23 = v66;
      sub_1A9977640();
      (*(v46 + 8))(v15, v47);
    }

    else
    {
      LOBYTE(v64) = 3;
      sub_1A9858998();
      v42 = v48;
      v23 = v66;
      sub_1A9977640();
      (*(v49 + 8))(v42, v50);
    }

    return (*(v63 + 8))(v22, v23);
  }
}

uint64_t SFAirDropReceive.ItemDestination.hash(into:)(uint64_t a1)
{
  v2 = sub_1A9976020();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFAirDropReceive.ItemDestination(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v13 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A9858830(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      MEMORY[0x1AC58A630](2);
      sub_1A99768D0();
    }

    else
    {
      (*(v3 + 32))(v5, v8, v2);
      MEMORY[0x1AC58A630](1);
      sub_1A9858B94(&qword_1EB3AC8C0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
      sub_1A9976740();
      return (*(v3 + 8))(v5, v2);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v11 = *v8;
    v12 = v8[1];
    MEMORY[0x1AC58A630](4);
    if (v12 >> 60 == 15)
    {
      return sub_1A99779A0();
    }

    else
    {
      sub_1A99779A0();
      sub_1A9976080();
      return sub_1A97D8688(v11, v12);
    }
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return MEMORY[0x1AC58A630](0);
  }

  else
  {
    return MEMORY[0x1AC58A630](3);
  }
}

uint64_t SFAirDropReceive.ItemDestination.hashValue.getter()
{
  sub_1A9977980();
  SFAirDropReceive.ItemDestination.hash(into:)(v1);
  return sub_1A99779B0();
}

uint64_t SFAirDropReceive.ItemDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v84 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3128, &qword_1A9999C68);
  v75 = *(v3 - 8);
  v76 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v83 = &v62 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3130, &qword_1A9999C70);
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v78 = &v62 - v6;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3138, &qword_1A9999C78);
  v72 = *(v71 - 8);
  MEMORY[0x1EEE9AC00](v71);
  v82 = &v62 - v7;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3140, &qword_1A9999C80);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v81 = &v62 - v8;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3148, &qword_1A9999C88);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v77 = &v62 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3150, &unk_1A9999C90);
  v79 = *(v10 - 8);
  v80 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v62 - v11;
  v13 = type metadata accessor for SFAirDropReceive.ItemDestination(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (&v62 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = &v62 - v18;
  v20 = MEMORY[0x1EEE9AC00](v17);
  v22 = &v62 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v24 = &v62 - v23;
  v25 = a1[3];
  v85 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v25);
  sub_1A98588F0();
  v26 = v91;
  sub_1A9977A70();
  if (!v26)
  {
    v63 = v19;
    v65 = v22;
    v64 = v16;
    v28 = v81;
    v27 = v82;
    v29 = v83;
    v66 = v24;
    v91 = v13;
    v30 = v84;
    v31 = v80;
    v32 = v12;
    v33 = sub_1A9977620();
    v34 = (2 * *(v33 + 16)) | 1;
    v87 = v33;
    v88 = v33 + 32;
    v89 = 0;
    v90 = v34;
    v35 = sub_1A97B2978();
    if (v35 != 5 && v89 == v90 >> 1)
    {
      if (v35 <= 1u)
      {
        if (!v35)
        {
          LOBYTE(v86) = 0;
          sub_1A9858A94();
          v43 = v77;
          sub_1A9977530();
          v44 = v79;
          v51 = v30;
          (*(v67 + 8))(v43, v68);
          (*(v44 + 8))(v12, v31);
          swift_unknownObjectRelease();
          v37 = v66;
          swift_storeEnumTagMultiPayload();
LABEL_17:
          v59 = v85;
LABEL_19:
          sub_1A9858AE8(v37, v51);
          v41 = v59;
          return __swift_destroy_boxed_opaque_existential_0Tm(v41);
        }

        LOBYTE(v86) = 1;
        sub_1A9858A40();
        sub_1A9977530();
        v50 = v79;
        v51 = v30;
        sub_1A9976020();
        sub_1A9858B94(&qword_1EB3B1AB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
        v52 = v70;
        sub_1A99775F0();
        (*(v69 + 8))(v28, v52);
        (*(v50 + 8))(v12, v31);
        swift_unknownObjectRelease();
        v53 = v65;
        swift_storeEnumTagMultiPayload();
        v58 = v53;
      }

      else
      {
        if (v35 != 2)
        {
          if (v35 == 3)
          {
            LOBYTE(v86) = 3;
            sub_1A9858998();
            v36 = v78;
            sub_1A9977530();
            (*(v73 + 8))(v36, v74);
            (*(v79 + 8))(v12, v31);
            swift_unknownObjectRelease();
            v37 = v66;
            swift_storeEnumTagMultiPayload();
          }

          else
          {
            LOBYTE(v86) = 4;
            sub_1A9858944();
            sub_1A9977530();
            sub_1A97B446C();
            v49 = v76;
            sub_1A9977590();
            (*(v75 + 8))(v29, v49);
            (*(v79 + 8))(v12, v31);
            swift_unknownObjectRelease();
            v60 = v64;
            *v64 = v86;
            swift_storeEnumTagMultiPayload();
            v61 = v60;
            v37 = v66;
            sub_1A9858AE8(v61, v66);
          }

          v59 = v85;
          v51 = v30;
          goto LABEL_19;
        }

        LOBYTE(v86) = 2;
        sub_1A98589EC();
        v45 = v27;
        sub_1A9977530();
        v51 = v30;
        v46 = v71;
        v47 = sub_1A99775A0();
        v48 = v79;
        v54 = v47;
        v56 = v55;
        (*(v72 + 8))(v45, v46);
        (*(v48 + 8))(v32, v31);
        swift_unknownObjectRelease();
        v57 = v63;
        *v63 = v54;
        v57[1] = v56;
        swift_storeEnumTagMultiPayload();
        v58 = v57;
      }

      v37 = v66;
      sub_1A9858AE8(v58, v66);
      goto LABEL_17;
    }

    v38 = sub_1A9977300();
    swift_allocError();
    v40 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v40 = v91;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v38 - 8) + 104))(v40, *MEMORY[0x1E69E6AF8], v38);
    swift_willThrow();
    (*(v79 + 8))(v12, v31);
    swift_unknownObjectRelease();
  }

  v41 = v85;
  return __swift_destroy_boxed_opaque_existential_0Tm(v41);
}

uint64_t sub_1A9858310()
{
  sub_1A9977980();
  SFAirDropReceive.ItemDestination.hash(into:)(v1);
  return sub_1A99779B0();
}

uint64_t sub_1A9858354(uint64_t a1)
{
  sub_1A9977980();
  SFAirDropReceive.ItemDestination.hash(into:)(v2);
  return sub_1A99779B0();
}

uint64_t _s7Sharing16SFAirDropReceiveO15ItemDestinationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A9976020();
  v36 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for SFAirDropReceive.ItemDestination(0);
  v8 = MEMORY[0x1EEE9AC00](v7);
  v10 = (&v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x1EEE9AC00](v8);
  v13 = (&v35 - v12);
  MEMORY[0x1EEE9AC00](v11);
  v15 = &v35 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B31D8, qword_1A999A3B8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v35 - v18;
  v20 = (&v35 + *(v17 + 56) - v18);
  sub_1A9858830(a1, &v35 - v18);
  sub_1A9858830(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v22 = v36;
    if (!EnumCaseMultiPayload)
    {
      sub_1A9858830(v19, v15);
      if (!swift_getEnumCaseMultiPayload())
      {
        (*(v22 + 32))(v6, v20, v4);
        v31 = sub_1A9975FD0();
        v32 = *(v22 + 8);
        v32(v6, v4);
        v32(v15, v4);
        sub_1A9858894(v19);
        return v31 & 1;
      }

      (*(v22 + 8))(v15, v4);
      goto LABEL_24;
    }

    sub_1A9858830(v19, v13);
    v28 = *v13;
    v27 = v13[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v28 == *v20 && v27 == v20[1])
      {

        goto LABEL_31;
      }

      v30 = sub_1A99777E0();

      if (v30)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        if (swift_getEnumCaseMultiPayload() == 3)
        {
          goto LABEL_31;
        }
      }

      else if (swift_getEnumCaseMultiPayload() == 4)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    sub_1A9858830(v19, v10);
    v24 = *v10;
    v23 = v10[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v25 = *v20;
      v26 = v20[1];
      if (v23 >> 60 == 15)
      {
        if (v26 >> 60 == 15)
        {
          sub_1A97D8688(v24, v23);
LABEL_31:
          sub_1A9858894(v19);
          v31 = 1;
          return v31 & 1;
        }
      }

      else if (v26 >> 60 != 15)
      {
        sub_1A97C1554(v24, v23);
        sub_1A97C1554(v25, v26);
        v34 = sub_1A993184C(v24, v23, v25, v26);
        sub_1A97D8688(v25, v26);
        sub_1A97D8688(v25, v26);
        sub_1A97D8688(v24, v23);
        sub_1A97D8688(v24, v23);
        if (v34)
        {
          goto LABEL_31;
        }

        goto LABEL_29;
      }

      sub_1A97D8688(v24, v23);
      sub_1A97D8688(v25, v26);
LABEL_29:
      sub_1A9858894(v19);
      goto LABEL_25;
    }

    sub_1A97D8688(v24, v23);
  }

LABEL_24:
  sub_1A985947C(v19);
LABEL_25:
  v31 = 0;
  return v31 & 1;
}

uint64_t type metadata accessor for SFAirDropReceive.ItemDestination(uint64_t a1)
{
  result = qword_1EB3AC580;
  if (!qword_1EB3AC580)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A9858830(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.ItemDestination(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9858894(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.ItemDestination(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1A98588F0()
{
  result = qword_1EB3B30F8;
  if (!qword_1EB3B30F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B30F8);
  }

  return result;
}

unint64_t sub_1A9858944()
{
  result = qword_1EB3B3100;
  if (!qword_1EB3B3100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3100);
  }

  return result;
}

unint64_t sub_1A9858998()
{
  result = qword_1EB3B3108;
  if (!qword_1EB3B3108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3108);
  }

  return result;
}

unint64_t sub_1A98589EC()
{
  result = qword_1EB3B3110;
  if (!qword_1EB3B3110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3110);
  }

  return result;
}

unint64_t sub_1A9858A40()
{
  result = qword_1EB3B3118;
  if (!qword_1EB3B3118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3118);
  }

  return result;
}

unint64_t sub_1A9858A94()
{
  result = qword_1EB3B3120;
  if (!qword_1EB3B3120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3120);
  }

  return result;
}

uint64_t sub_1A9858AE8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDropReceive.ItemDestination(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A9858B94(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1A9858BDC(uint64_t a1)
{
  sub_1A9976020();
  if (v1 <= 0x3F)
  {
    sub_1A9858C64();
    if (v2 <= 0x3F)
    {
      sub_1A9858C94();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_1A9858C64()
{
  result = qword_1EB3AB720;
  if (!qword_1EB3AB720)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB3AB720);
  }

  return result;
}

void sub_1A9858C94()
{
  if (!qword_1EB3AC8A8)
  {
    v0 = sub_1A99770A0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3AC8A8);
    }
  }
}

unint64_t sub_1A9858D48()
{
  result = qword_1EB3B3158;
  if (!qword_1EB3B3158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3158);
  }

  return result;
}

unint64_t sub_1A9858DA0()
{
  result = qword_1EB3B3160;
  if (!qword_1EB3B3160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3160);
  }

  return result;
}

unint64_t sub_1A9858DF8()
{
  result = qword_1EB3B3168;
  if (!qword_1EB3B3168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3168);
  }

  return result;
}

unint64_t sub_1A9858E50()
{
  result = qword_1EB3B3170;
  if (!qword_1EB3B3170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3170);
  }

  return result;
}

unint64_t sub_1A9858EA8()
{
  result = qword_1EB3B3178;
  if (!qword_1EB3B3178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3178);
  }

  return result;
}

unint64_t sub_1A9858F00()
{
  result = qword_1EB3B3180;
  if (!qword_1EB3B3180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3180);
  }

  return result;
}

unint64_t sub_1A9858F58()
{
  result = qword_1EB3B3188;
  if (!qword_1EB3B3188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3188);
  }

  return result;
}

unint64_t sub_1A9858FB0()
{
  result = qword_1EB3B3190;
  if (!qword_1EB3B3190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3190);
  }

  return result;
}

unint64_t sub_1A9859008()
{
  result = qword_1EB3B3198;
  if (!qword_1EB3B3198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3198);
  }

  return result;
}

unint64_t sub_1A9859060()
{
  result = qword_1EB3B31A0;
  if (!qword_1EB3B31A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31A0);
  }

  return result;
}

unint64_t sub_1A98590B8()
{
  result = qword_1EB3B31A8;
  if (!qword_1EB3B31A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31A8);
  }

  return result;
}

unint64_t sub_1A9859110()
{
  result = qword_1EB3B31B0;
  if (!qword_1EB3B31B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31B0);
  }

  return result;
}

unint64_t sub_1A9859168()
{
  result = qword_1EB3B31B8;
  if (!qword_1EB3B31B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31B8);
  }

  return result;
}

unint64_t sub_1A98591C0()
{
  result = qword_1EB3B31C0;
  if (!qword_1EB3B31C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31C0);
  }

  return result;
}

unint64_t sub_1A9859218()
{
  result = qword_1EB3B31C8;
  if (!qword_1EB3B31C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31C8);
  }

  return result;
}

unint64_t sub_1A9859270()
{
  result = qword_1EB3B31D0;
  if (!qword_1EB3B31D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31D0);
  }

  return result;
}

uint64_t sub_1A98592C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746C7561666564 && a2 == 0xE700000000000000;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x52556D6F74737563 && a2 == 0xE90000000000004CLL || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x70416D6F74737563 && a2 == 0xE900000000000070 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D6574496F6ELL && a2 == 0xE600000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xE800000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A985947C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B31D8, qword_1A999A3B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A985952C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v18 - v8;
  sub_1A98614D8(a1, v18 - v8);
  v10 = sub_1A9976C00();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1A9860FD4(v9);
    if (*(a3 + 16))
    {
LABEL_3:
      swift_getObjectType();
      swift_unknownObjectRetain();
      v12 = sub_1A9976B80();
      v14 = v13;
      swift_unknownObjectRelease();
      goto LABEL_6;
    }
  }

  else
  {
    sub_1A9976BF0();
    (*(v11 + 8))(v9, v10);
    if (*(a3 + 16))
    {
      goto LABEL_3;
    }
  }

  v12 = 0;
  v14 = 0;
LABEL_6:
  v15 = *v4;
  v16 = (v14 | v12);
  if (v14 | v12)
  {
    v19[0] = 0;
    v19[1] = 0;
    v16 = v19;
    v19[2] = v12;
    v19[3] = v14;
  }

  v18[1] = 1;
  v18[2] = v16;
  v18[3] = v15;
  swift_task_create();
}

void sub_1A98596FC()
{
  v1 = *v0;
  v2 = v0[2];
  v10 = *(*v0 + 80);
  v11 = v1[11];
  v12 = v1[12];
  v13 = v1[13];
  v14 = v1[14];
  v15 = v1[15];
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  type metadata accessor for CombineLatestStateMachine(0, &v16);
  v16 = v10;
  v17 = v11;
  v18 = v12;
  v19 = v13;
  v20 = v14;
  v21 = v15;
  type metadata accessor for CombineLatestStateMachine.IteratorDeinitializedAction(255, &v16);
  sub_1A99770A0();
  sub_1A9862D90(sub_1A9860A0C, v9, v2);
  v3 = v16;
  if (v16)
  {
    v4 = *(v17 + 16);
    v8 = v17;
    if (v4)
    {
      v5 = v17 + 32;
      sub_1A9976BC0();
      sub_1A97FC63C();

      do
      {
        v5 += 8;
        v6 = swift_allocError();
        sub_1A99766C0();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
        swift_allocError();
        *v7 = v6;
        swift_continuation_throwingResumeWithError();
        --v4;
      }

      while (v4);
    }

    else
    {
    }

    sub_1A9976CB0();
    sub_1A9860A70(v3, v8);
  }
}

uint64_t sub_1A9859938(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x1EEE6DFA0](sub_1A9859980, 0, 0);
}

uint64_t sub_1A9859980()
{
  v1 = swift_task_alloc();
  v0[5] = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  swift_getTupleTypeMetadata3();
  v2 = sub_1A99770A0();
  *v1 = v0;
  v1[1] = sub_1A9859AF8;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE18](v3, &unk_1A999A428, v4, sub_1A9860B4C, v4, 0, 0, v2);
}

uint64_t sub_1A9859AF8()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1A9859C2C, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1A9859C44(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v3 = sub_1A9977A20();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A9859E38, 0, 0);
}

uint64_t sub_1A9859E38()
{
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_1A9859F00;
  v2 = v0[6];
  v3 = v0[3];

  return sub_1A985B1A0(v2, 0, 0, sub_1A9860C14, v3);
}

uint64_t sub_1A9859F00()
{

  return MEMORY[0x1EEE6DFA0](sub_1A9859FFC, 0, 0);
}

uint64_t sub_1A9859FFC()
{
  v2 = v0[5];
  v1 = v0[6];
  v3 = v0[4];
  WitnessTable = swift_getWitnessTable();
  sub_1A982C780(v3, WitnessTable);
  (*(v2 + 8))(v1, v3);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1A985A0D0(uint64_t a1, void *a2)
{
  v49 = a1;
  v3 = *a2;
  v48 = *(*a2 + 104);
  v47 = v3[10];
  swift_getAssociatedTypeWitness();
  v4 = v3[14];
  v5 = v3[11];
  swift_getAssociatedTypeWitness();
  v6 = v3[15];
  v7 = v3[12];
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v8 = sub_1A9977A20();
  v45 = *(v8 - 8);
  v46 = v8;
  v9 = MEMORY[0x1EEE9AC00](v8);
  v43 = &TupleTypeMetadata3 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v44 = &TupleTypeMetadata3 - v11;
  v12 = v47;
  v13 = v48;
  v53 = v47;
  v54 = v5;
  v55 = v7;
  v56 = v48;
  v57 = v4;
  v58 = v6;
  Action = type metadata accessor for CombineLatestStateMachine.NextAction(255, &v53);
  v15 = sub_1A99770A0();
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &TupleTypeMetadata3 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x1EEE9AC00](v16);
  v20 = a2[2];
  v51 = v49;
  v52 = a2;
  v53 = v12;
  v54 = v5;
  v22 = &TupleTypeMetadata3 - v21;
  v23 = v19;
  v55 = v7;
  v56 = v13;
  v25 = v24;
  v57 = v4;
  v58 = v6;
  type metadata accessor for CombineLatestStateMachine(0, &v53);
  sub_1A9862D90(sub_1A9860C1C, v50, v20);
  (*(v25 + 16))(v18, v22, v23);
  if ((*(*(Action - 8) + 48))(v18, 1, Action) == 1)
  {
    return (*(v25 + 8))(v22, v23);
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    v30 = *v18;
    v31 = v44;
    (*(*(TupleTypeMetadata3 - 8) + 56))(v44, 1, 1);
    v32 = v46;
    swift_storeEnumTagMultiPayload();
    (*(v45 + 32))(*(*(v30 + 64) + 40), v31, v32);
    swift_continuation_resume();
    return (*(v25 + 8))(v22, v23);
  }

  if (EnumCaseMultiPayload == 1)
  {
    v27 = *v18;
    v28 = *(*v18 + 16);
    if (v28)
    {
      v29 = v27 + 32;
      do
      {
        v29 += 8;
        swift_continuation_throwingResume();
        --v28;
      }

      while (v28);
    }

    return (*(v25 + 8))(v22, v23);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v33 = *v18;
    v34 = v46;
    sub_1A9976CE0();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v36 = v45;
    v37 = *(v45 + 32);
    v38 = &v18[*(TupleTypeMetadata2 + 48)];
    v39 = v44;
    v37(v44, v38, v34);
    v40 = v43;
    (*(v36 + 16))(v43, v39, v34);
    v37(*(*(v33 + 64) + 40), v40, v34);
    swift_continuation_resume();
    (*(v36 + 8))(v39, v34);
    return (*(v25 + 8))(v22, v23);
  }

  result = sub_1A9977470();
  __break(1u);
  return result;
}

uint64_t sub_1A985A694@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v56 = a4;
  v6 = *a3;
  v7 = *(*a3 + 96);
  v52 = sub_1A99770A0();
  v48 = *(v52 - 8);
  v8 = MEMORY[0x1EEE9AC00](v52);
  v47 = v43 - v9;
  v46 = *(v6[11] - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v44 = v43 - v11;
  v49 = *(v6[10] - 8);
  MEMORY[0x1EEE9AC00](v10);
  v50 = v43 - v12;
  v13 = v6[13];
  v14 = v6[14];
  v51 = v15;
  *&v16 = v15;
  v53 = v17;
  *(&v16 + 1) = v17;
  v55 = v16;
  v45 = v7;
  *&v18 = v7;
  v43[1] = v13;
  *(&v18 + 1) = v13;
  v54 = v18;
  v19 = v6[15];
  v58 = v18;
  v57 = v16;
  v59 = v14;
  v60 = v19;
  Action = type metadata accessor for CombineLatestStateMachine.NextAction(0, &v57);
  v21 = *(Action - 8);
  v22 = MEMORY[0x1EEE9AC00](Action);
  v24 = v43 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v26 = (v43 - v25);
  v58 = v54;
  v57 = v55;
  v59 = v14;
  v60 = v19;
  v27 = type metadata accessor for CombineLatestStateMachine(0, &v57);
  *&v55 = a2;
  *&v54 = a1;
  sub_1A97FB57C(a2, v27, v26);
  (*(v21 + 16))(v24, v26, Action);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      *&v55 = swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      swift_getAssociatedTypeWitness();
      sub_1A99770A0();
      swift_getTupleTypeMetadata3();
      sub_1A99770A0();
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
      v39 = sub_1A9977A20();
      sub_1A9976CE0();
      v40 = *(swift_getTupleTypeMetadata2() + 48);
      v41 = v56;
      (*(v21 + 32))(v56, v26, Action);
      (*(v21 + 56))(v41, 0, 1, Action);
      return (*(*(v39 - 8) + 8))(&v24[v40], v39);
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      v29 = v51;
      v30 = v53;
      TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
      v32 = *(TupleTypeMetadata3 + 48);
      v45 = *(TupleTypeMetadata3 + 64);
      (*(v49 + 32))(v50, v24, v29);
      v33 = v46;
      v34 = v44;
      (*(v46 + 32))(v44, &v24[v32], v30);
      v35 = v48;
      v36 = &v24[v45];
      v37 = v47;
      (*(v48 + 32))(v47, v36, v52);
      sub_1A985AD18(v54, v50, v34, v37, v55);
      (*(v35 + 8))(v37, v52);
      (*(v33 + 8))(v34, v53);
      (*(v49 + 8))(v50, v51);
      (*(v21 + 8))(v26, Action);
      return (*(v21 + 56))(v56, 1, 1, Action);
    }

    (*(v21 + 8))(v24, Action);
  }

  v42 = v56;
  (*(v21 + 32))(v56, v26, Action);
  return (*(v21 + 56))(v42, 0, 1, Action);
}

uint64_t sub_1A985AD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v55 = a1;
  v56 = a5;
  v54 = a4;
  v51 = a2;
  v52 = a3;
  v7 = *v5;
  v60 = *(*v5 + 96);
  v59 = sub_1A99770A0();
  v57 = *(v59 - 8);
  v53 = *(v57 + 64);
  v8 = MEMORY[0x1EEE9AC00](v59);
  v58 = &v44 - v9;
  v49 = v7[11];
  v10 = *(v49 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x1EEE9AC00](v8);
  v14 = &v44 - v13;
  v48 = &v44 - v13;
  v15 = v7[10];
  v46 = v15;
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  MEMORY[0x1EEE9AC00](v12);
  v19 = &v44 - v18;
  v47 = &v44 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v44 - v21;
  v50 = &v44 - v21;
  v23 = sub_1A9976C00();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  (*(v16 + 16))(v19, v51, v15);
  v45 = v10;
  v24 = v14;
  v25 = v49;
  (*(v10 + 16))(v24, v52, v49);
  v26 = v57;
  (*(v57 + 16))(v58, v54, v59);
  v27 = (*(v16 + 80) + 80) & ~*(v16 + 80);
  v28 = (v17 + v27 + 7) & 0xFFFFFFFFFFFFFFF8;
  v29 = (*(v10 + 80) + v28 + 8) & ~*(v10 + 80);
  v30 = (v11 + *(v26 + 80) + v29) & ~*(v26 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v33 = v46;
  v32 = v47;
  *(v31 + 4) = v46;
  *(v31 + 5) = v25;
  v34 = v25;
  *(v31 + 6) = v60;
  v35 = v7[13];
  *(v31 + 7) = v35;
  v54 = v7[14];
  *(v31 + 8) = v54;
  v36 = v7[15];
  *(v31 + 9) = v36;
  v37 = &v31[v27];
  v38 = v33;
  (*(v16 + 32))(v37, v32);
  *&v31[v28] = v6;
  (*(v45 + 32))(&v31[v29], v48, v34);
  (*(v57 + 32))(&v31[v30], v58, v59);

  v39 = sub_1A97B4F40(0, 0, v50, &unk_1A999A448, v31);
  *&v40 = v38;
  *(&v40 + 1) = v34;
  *&v41 = v60;
  *(&v41 + 1) = v35;
  v61[1] = v41;
  v61[0] = v40;
  v62 = v54;
  v63 = v36;
  v42 = type metadata accessor for CombineLatestStateMachine(0, v61);
  sub_1A97F479C(v39, v56, v42);
}

uint64_t sub_1A985B1A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[11] = a4;
  v5[12] = a5;
  v5[10] = a1;
  if (a2)
  {
    swift_getObjectType();
    v6 = sub_1A9976B80();
    v8 = v7;
  }

  else
  {
    v6 = 0;
    v8 = 0;
  }

  return MEMORY[0x1EEE6DFA0](sub_1A985B234, v6, v8);
}

uint64_t sub_1A985B234()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[7] = v2;
  v0[3] = sub_1A985B2DC;
  v3 = swift_continuation_init();
  v1(v3);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A985B2DC()
{
  v1 = *(*v0 + 8);

  return v1();
}

void sub_1A985B3B4(void *a1)
{
  v2 = *a1;
  v31 = *(*a1 + 104);
  v3 = v2[10];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v4 = v2[14];
  v5 = v2[11];
  swift_getAssociatedTypeWitness();
  v6 = v2[15];
  v7 = v2[12];
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v9 = sub_1A9977A20();
  v29 = *(v9 - 8);
  AssociatedTypeWitness = v9;
  MEMORY[0x1EEE9AC00](v9);
  v28 = &v26 - v10;
  v11 = a1[2];
  v33 = v3;
  v34 = v5;
  v12 = v31;
  v35 = v7;
  v36 = v31;
  v37 = v4;
  v38 = v6;
  v39 = v3;
  v40 = v5;
  v41 = v7;
  v42 = v31;
  v43 = v4;
  v44 = v6;
  type metadata accessor for CombineLatestStateMachine(0, &v39);
  v39 = v3;
  v40 = v5;
  v41 = v7;
  v42 = v12;
  v43 = v4;
  v44 = v6;
  type metadata accessor for CombineLatestStateMachine.CancelledAction(255, &v39);
  sub_1A99770A0();
  sub_1A9862D90(sub_1A9860B54, v32, v11);
  v13 = v39;
  if ((~v39 & 0xF000000000000007) != 0)
  {
    v14 = v40;
    v31 = v41;
    if (v39 < 0)
    {
      v19 = *(v40 + 16);
      if (v19)
      {
        v20 = v40 + 32;
        sub_1A9976BC0();
        sub_1A97FC63C();

        do
        {
          v20 += 8;
          v21 = swift_allocError();
          sub_1A99766C0();
          swift_allocError();
          *v22 = v21;
          swift_continuation_throwingResumeWithError();
          --v19;
        }

        while (v19);
      }

      else
      {
      }

      sub_1A9976CB0();
      sub_1A9860BBC(v13, v14, v31);
    }

    else
    {
      v26 = TupleTypeMetadata3;
      v27 = v40;
      v15 = *(v41 + 16);
      if (v15)
      {
        v16 = v41 + 32;
        sub_1A9976BC0();
        sub_1A97FC63C();

        do
        {
          v16 += 8;
          v17 = swift_allocError();
          sub_1A99766C0();
          swift_allocError();
          *v18 = v17;
          swift_continuation_throwingResumeWithError();
          --v15;
        }

        while (v15);
      }

      else
      {
      }

      v23 = v27;
      sub_1A9976CB0();
      v24 = v28;
      (*(*(v26 - 8) + 56))(v28, 1, 1);
      v25 = AssociatedTypeWitness;
      swift_storeEnumTagMultiPayload();
      (*(v29 + 32))(*(*(v13 + 64) + 40), v24, v25);
      swift_continuation_resume();

      sub_1A9860BBC(v13, v23, v31);
    }
  }
}

uint64_t sub_1A985B880(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[5] = a6;
  v7[6] = a7;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A985B8A8, 0, 0);
}

uint64_t sub_1A985B8A8()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = *(v0 + 40);
  *(v1 + 16) = *(v0 + 24);
  *(v1 + 32) = v2;
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *v3 = v0;
  v3[1] = sub_1A985B998;
  v4 = *(v0 + 16);

  return MEMORY[0x1EEE6DD58](v4);
}

void sub_1A985B998()
{
  v2 = *v1;

  if (v0)
  {
  }

  else
  {

    v3 = *(v2 + 8);

    v3();
  }
}

uint64_t sub_1A985BACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[21] = a5;
  v6[22] = a6;
  v6[19] = a3;
  v6[20] = a4;
  v6[18] = a2;
  v7 = *a4;
  v6[23] = *(*a4 + 104);
  v8 = v7[10];
  v6[24] = v8;
  swift_getAssociatedTypeWitness();
  v6[25] = v7[14];
  v9 = v7[11];
  v6[26] = v9;
  swift_getAssociatedTypeWitness();
  v6[27] = v7[15];
  v10 = v7[12];
  v6[28] = v10;
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  v6[29] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v11 = sub_1A9977A20();
  v6[30] = v11;
  v6[31] = *(v11 - 8);
  v6[32] = swift_task_alloc();
  v12 = sub_1A99770A0();
  v6[33] = v12;
  v6[34] = *(v12 - 8);
  v6[35] = swift_task_alloc();
  v13 = *(v10 - 8);
  v6[36] = v13;
  v6[37] = *(v13 + 64);
  v6[38] = swift_task_alloc();
  v6[39] = swift_task_alloc();
  v14 = *(v9 - 8);
  v6[40] = v14;
  v6[41] = *(v14 + 64);
  v6[42] = swift_task_alloc();
  v15 = *(v8 - 8);
  v6[43] = v15;
  v6[44] = *(v15 + 64);
  v6[45] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  v6[46] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A985BE7C, 0, 0);
}

uint64_t sub_1A985BE7C()
{
  v2 = v0[45];
  v1 = v0[46];
  v3 = v0[43];
  v27 = v0[44];
  v29 = v1;
  v32 = v0[42];
  v33 = v0[41];
  v31 = v0[40];
  v35 = v0[34];
  v36 = v0[35];
  v38 = v0[33];
  v40 = v0[36];
  v48 = v0[28];
  v50 = v0[27];
  v4 = v0[26];
  v46 = v0[25];
  v5 = v0[24];
  v34 = v0[22];
  v30 = v0[21];
  v6 = v0[19];
  v42 = v0[20];
  v44 = v0[23];
  v7 = sub_1A9976C00();
  v8 = *(*(v7 - 8) + 56);
  v8(v1, 1, 1, v7);
  (*(v3 + 16))(v2, v6, v5);
  v9 = (*(v3 + 80) + 80) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = 0;
  *(v10 + 3) = 0;
  *(v10 + 4) = v5;
  *(v10 + 5) = v4;
  *(v10 + 6) = v48;
  *(v10 + 7) = v44;
  *(v10 + 8) = v46;
  *(v10 + 9) = v50;
  (*(v3 + 32))(&v10[v9], v2, v5);
  *&v10[(v27 + v9 + 7) & 0xFFFFFFFFFFFFFFF8] = v42;

  sub_1A985952C(v29, &unk_1A999A468, v10);
  sub_1A9860FD4(v29);
  v26 = v8;
  v28 = v7;
  v8(v29, 1, 1, v7);
  (*(v31 + 16))(v32, v30, v4);
  v11 = (*(v31 + 80) + 80) & ~*(v31 + 80);
  v12 = swift_allocObject();
  *(v12 + 2) = 0;
  *(v12 + 3) = 0;
  *(v12 + 4) = v5;
  *(v12 + 5) = v4;
  *(v12 + 6) = v48;
  *(v12 + 7) = v44;
  *(v12 + 8) = v46;
  *(v12 + 9) = v50;
  (*(v31 + 32))(&v12[v11], v32, v4);
  *&v12[(v33 + v11 + 7) & 0xFFFFFFFFFFFFFFF8] = v42;

  sub_1A985952C(v29, &unk_1A999A478, v12);
  sub_1A9860FD4(v29);
  (*(v35 + 16))(v36, v34, v38);
  if ((*(v40 + 48))(v36, 1, v48) == 1)
  {
    (*(v0[34] + 8))(v0[35], v0[33]);
  }

  else
  {
    v13 = v0[46];
    v14 = v0[38];
    v15 = v0[39];
    v16 = v0[36];
    v37 = v14;
    v39 = v0[37];
    v17 = v0[28];
    v49 = v0[27];
    v45 = v0[26];
    v47 = v0[25];
    v41 = v0[24];
    v43 = v0[23];
    v18 = v0[20];
    v19 = *(v16 + 32);
    v19(v15, v0[35], v17);
    v26(v13, 1, 1, v28);
    (*(v16 + 16))(v14, v15, v17);
    v20 = (*(v16 + 80) + 80) & ~*(v16 + 80);
    v21 = swift_allocObject();
    v21[2] = 0;
    v21[3] = 0;
    v21[4] = v41;
    v21[5] = v45;
    v21[6] = v17;
    v21[7] = v43;
    v21[8] = v47;
    v21[9] = v49;
    v19(v21 + v20, v37, v17);
    *(v21 + ((v39 + v20 + 7) & 0xFFFFFFFFFFFFFFF8)) = v18;

    sub_1A985952C(v13, &unk_1A999A490, v21);
    sub_1A9860FD4(v13);
    (*(v16 + 8))(v15, v17);
  }

  if (sub_1A9976D00())
  {

    v22 = v0[1];

    return v22();
  }

  else
  {
    v24 = swift_task_alloc();
    v0[47] = v24;
    v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B31E0, &qword_1A999A480);
    *v24 = v0;
    v24[1] = sub_1A985C424;

    return MEMORY[0x1EEE6DAC8](v0 + 49, 0, 0, v25);
  }
}

uint64_t sub_1A985C424()
{
  *(*v1 + 384) = v0;

  if (v0)
  {
    v2 = sub_1A985C6B0;
  }

  else
  {
    v2 = sub_1A985C538;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A985C538()
{
  if (sub_1A9976D00())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    v3 = swift_task_alloc();
    *(v0 + 376) = v3;
    v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B31E0, &qword_1A999A480);
    *v3 = v0;
    v3[1] = sub_1A985C424;

    return MEMORY[0x1EEE6DAC8](v0 + 392, 0, 0, v4);
  }
}

uint64_t sub_1A985C6B0()
{
  v1 = v0[48];
  v3 = v0[27];
  v2 = v0[28];
  v5 = v0[25];
  v4 = v0[26];
  v7 = v0[23];
  v6 = v0[24];
  v34 = *(v0[20] + 16);
  v8 = swift_task_alloc();
  v8[2] = v6;
  v8[3] = v4;
  v8[4] = v2;
  v8[5] = v7;
  v8[6] = v5;
  v8[7] = v3;
  v8[8] = v1;
  v0[2] = v6;
  v0[3] = v4;
  v0[4] = v2;
  v0[5] = v7;
  v0[6] = v5;
  v0[7] = v3;
  type metadata accessor for CombineLatestStateMachine(0, (v0 + 2));
  v0[8] = v6;
  v0[9] = v4;
  v0[10] = v2;
  v0[11] = v7;
  v0[12] = v5;
  v0[13] = v3;
  type metadata accessor for CombineLatestStateMachine.UpstreamThrewAction(255, (v0 + 8));
  sub_1A99770A0();
  sub_1A9862D90(sub_1A9861158, v8, v34);

  v10 = v0[14];
  v9 = v0[15];
  v11 = v0[16];
  v12 = v0[17];
  if ((~(v10 & v11) & 0xF000000000000007) != 0)
  {
    v33 = v0[15];
    v31 = v0[17];
    v32 = v0[16];
    if (v11 < 0)
    {
      v17 = *(v12 + 16);
      if (v17)
      {
        v18 = v12 + 32;
        v19 = v9;
        sub_1A9976BC0();
        sub_1A97FC63C();

        do
        {
          v18 += 8;
          v20 = swift_allocError();
          sub_1A99766C0();
          swift_allocError();
          *v21 = v20;
          swift_continuation_throwingResumeWithError();
          --v17;
        }

        while (v17);
      }

      else
      {
        v22 = v9;
      }

      v24 = v0[31];
      v23 = v0[32];
      v25 = v0[30];
      sub_1A9976CB0();
      v9 = v33;
      *v23 = v33;
      swift_storeEnumTagMultiPayload();
      (*(v24 + 32))(*(*(v10 + 64) + 40), v23, v25);
      swift_continuation_resume();
    }

    else
    {
      v13 = v9[2];
      if (v13)
      {
        v14 = v9 + 4;
        sub_1A9976BC0();
        sub_1A97FC63C();

        do
        {
          ++v14;
          v15 = swift_allocError();
          sub_1A99766C0();
          swift_allocError();
          *v16 = v15;
          swift_continuation_throwingResumeWithError();
          --v13;
        }

        while (v13);
      }

      else
      {
      }

      sub_1A9976CB0();
      v9 = v33;
    }

    v12 = v31;
    v11 = v32;
  }

  v26 = v0[48];
  sub_1A9976D10();
  sub_1A98611D4(v10, v9, v11, v12);

  if (sub_1A9976D00())
  {

    v27 = v0[1];

    return v27();
  }

  else
  {
    v29 = swift_task_alloc();
    v0[47] = v29;
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B31E0, &qword_1A999A480);
    *v29 = v0;
    v29[1] = sub_1A985C424;

    return MEMORY[0x1EEE6DAC8](v0 + 49, 0, 0, v30);
  }
}

uint64_t sub_1A985CB74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  v6 = *a5;
  v7 = *(*a5 + 104);
  *(v5 + 312) = v7;
  v22 = v7;
  v21 = v6[10];
  *(v5 + 320) = v21;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 328) = AssociatedTypeWitness;
  v9 = v6[14];
  *(v5 + 336) = v9;
  v10 = v6[11];
  *(v5 + 344) = v10;
  swift_getAssociatedTypeWitness();
  v11 = v6[15];
  *(v5 + 352) = v11;
  v12 = v6[12];
  *(v5 + 360) = v12;
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  *(v5 + 368) = swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  *(v5 + 376) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v13 = sub_1A9977A20();
  *(v5 + 384) = v13;
  v14 = *(v13 - 8);
  *(v5 + 392) = v14;
  *(v5 + 400) = v14;
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *&v15 = v21;
  *(&v15 + 1) = v10;
  *&v16 = v12;
  *(&v16 + 1) = v22;
  *(v5 + 96) = v16;
  *(v5 + 80) = v15;
  *(v5 + 112) = v9;
  *(v5 + 120) = v11;
  *(v5 + 424) = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(255, v5 + 80);
  v17 = sub_1A99770A0();
  *(v5 + 432) = v17;
  *(v5 + 440) = *(v17 - 8);
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  v18 = sub_1A99770A0();
  *(v5 + 464) = v18;
  *(v5 + 472) = *(v18 - 8);
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = *(AssociatedTypeWitness - 8);
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = *(v21 - 8);
  *(v5 + 512) = swift_task_alloc();
  v19 = swift_getAssociatedTypeWitness();
  *(v5 + 520) = v19;
  *(v5 + 528) = *(v19 - 8);
  *(v5 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A985CFD8, 0, 0);
}

uint64_t sub_1A985CFD8()
{
  (*(v0[63] + 16))(v0[64], v0[37], v0[40]);
  sub_1A9976D30();

  return MEMORY[0x1EEE6DFA0](sub_1A985D07C, 0, 0);
}

uint64_t sub_1A985D07C()
{
  v1 = v0[38];
  v0[2] = v0;
  v0[3] = sub_1A985D128;
  v2 = swift_continuation_init();
  sub_1A9860434(v2, v1, sub_1A986163C);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A985D128(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 544) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1A9861A9C, 0, 0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = swift_task_alloc();
    v2[69] = v6;
    *v6 = v3;
    v6[1] = sub_1A985D2DC;
    v7 = v2[65];
    v8 = v2[60];

    return MEMORY[0x1EEE6D8C8](v8, v7, AssociatedConformanceWitness);
  }
}

uint64_t sub_1A985D2DC()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1A9861AA0;
  }

  else
  {
    v2 = sub_1A985D3F0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A985D3F0()
{
  v2 = v0[60];
  v1 = v0[61];
  if ((*(v1 + 48))(v2, 1, v0[41]) == 1)
  {
    v4 = v0[44];
    v3 = v0[45];
    v5 = v0[42];
    v6 = v0[43];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    (*(v0[59] + 8))(v2, v0[58]);
    v51 = *(v9 + 16);
    v10 = swift_task_alloc();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v3;
    v10[5] = v7;
    v10[6] = v5;
    v10[7] = v4;
    v0[16] = v8;
    v0[17] = v6;
    v0[18] = v3;
    v0[19] = v7;
    v0[20] = v5;
    v0[21] = v4;
    type metadata accessor for CombineLatestStateMachine(0, (v0 + 16));
    v0[22] = v8;
    v0[23] = v6;
    v0[24] = v3;
    v0[25] = v7;
    v0[26] = v5;
    v0[27] = v4;
    type metadata accessor for CombineLatestStateMachine.UpstreamFinishedAction(255, (v0 + 22));
    sub_1A99770A0();
    sub_1A9862D90(sub_1A9861548, v10, v51);

    v11 = v0[34];
    if ((~v11 & 0xF000000000000007) != 0)
    {
      v52 = v0[36];
      v54 = v0[35];
      if (v11 < 0)
      {
        v36 = *(v0[36] + 16);
        if (v36)
        {
          v37 = v52 + 32;
          sub_1A9976BC0();
          sub_1A97FC63C();
          do
          {
            v37 += 8;
            v38 = swift_allocError();
            sub_1A99766C0();
            swift_allocError();
            *v39 = v38;
            swift_continuation_throwingResumeWithError();
            --v36;
          }

          while (v36);
        }

        v40 = v0[52];
        v42 = v0[48];
        v41 = v0[49];
        v43 = v0[46];
        v16 = v54;
        sub_1A9976CB0();
        (*(*(v43 - 8) + 56))(v40, 1, 1, v43);
        swift_storeEnumTagMultiPayload();
        (*(v41 + 32))(*(*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x40) + 40), v40, v42);
        swift_continuation_resume();
      }

      else
      {
        v12 = *(v0[35] + 16);
        if (v12)
        {
          v13 = v54 + 32;
          sub_1A9976BC0();
          sub_1A97FC63C();
          do
          {
            v13 += 8;
            v14 = swift_allocError();
            sub_1A99766C0();
            swift_allocError();
            *v15 = v14;
            swift_continuation_throwingResumeWithError();
            --v12;
          }

          while (v12);
        }

        sub_1A9976CB0();
        v16 = v54;
      }

      sub_1A98613A4(v11, v16, v52);
    }

    (*(v0[66] + 8))(v0[67], v0[65]);

    v44 = v0[1];

    return v44();
  }

  else
  {
    v50 = v0[55];
    v48 = v0[57];
    v49 = v0[54];
    v53 = v0[56];
    v55 = v0[53];
    v17 = v0[45];
    v46 = v0[62];
    v47 = v0[44];
    v19 = v0[42];
    v18 = v0[43];
    v20 = v0[39];
    v21 = v0[40];
    v22 = v0[38];
    (*(v1 + 32))();
    v23 = *(v22 + 16);
    v24 = swift_task_alloc();
    v24[2] = v21;
    v24[3] = v18;
    v24[4] = v17;
    v24[5] = v20;
    v24[6] = v19;
    v24[7] = v47;
    v24[8] = v46;
    v0[28] = v21;
    v0[29] = v18;
    v0[30] = v17;
    v0[31] = v20;
    v0[32] = v19;
    v0[33] = v47;
    type metadata accessor for CombineLatestStateMachine(0, (v0 + 28));
    sub_1A9862D90(sub_1A98615E0, v24, v23);

    (*(v50 + 16))(v53, v48, v49);
    if ((*(*(v55 - 8) + 48))(v53, 1) != 1)
    {
      v25 = v0[56];
      v27 = v0[51];
      v26 = v0[52];
      v28 = v0[49];
      v29 = v0[50];
      v30 = v0[48];
      v31 = *v25;
      sub_1A9976CE0();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v29 + 32))(v26, &v25[*(TupleTypeMetadata2 + 48)], v30);
      (*(v29 + 16))(v27, v26, v30);
      (*(v28 + 32))(*(*(v31 + 64) + 40), v27, v30);
      swift_continuation_resume();
      (*(v29 + 8))(v26, v30);
    }

    v34 = v0[61];
    v33 = v0[62];
    v35 = v0[41];
    (*(v0[55] + 8))(v0[57], v0[54]);
    (*(v34 + 8))(v33, v35);

    return MEMORY[0x1EEE6DFA0](sub_1A985D07C, 0, 0);
  }
}

uint64_t sub_1A985DAAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v33 = a8;
  v28 = a2;
  v29 = a7;
  v24 = a3;
  v25 = a6;
  v31 = a5;
  v27 = a4;
  v35 = a9;
  v36 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = sub_1A99770A0();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v11 = (&v23 - v10);
  v12 = swift_getAssociatedTypeWitness();
  v30 = sub_1A99770A0();
  v13 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v15 = &v23 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v26 = sub_1A99770A0();
  v17 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v19 = &v23 - v18;
  v20 = *(v16 - 8);
  (*(v20 + 16))(&v23 - v18, v28, v16);
  (*(v20 + 56))(v19, 0, 1, v16);
  (*(*(v12 - 8) + 56))(v15, 1, 1, v12);
  (*(*(AssociatedTypeWitness - 8) + 56))(v11, 1, 1, AssociatedTypeWitness);
  v37[0] = v24;
  v37[1] = v27;
  v37[2] = v31;
  v37[3] = v25;
  v37[4] = v29;
  v37[5] = v33;
  v21 = type metadata accessor for CombineLatestStateMachine(0, v37);
  sub_1A97F5A20(v19, v15, v11, v21, v35);
  (*(v32 + 8))(v11, v34);
  (*(v13 + 8))(v15, v30);
  return (*(v17 + 8))(v19, v26);
}

uint64_t sub_1A985DE5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  v6 = *a5;
  v7 = *(*a5 + 104);
  *(v5 + 312) = v7;
  v8 = v6[10];
  *(v5 + 320) = v8;
  swift_getAssociatedTypeWitness();
  v21 = v6[14];
  *(v5 + 328) = v21;
  v20 = v6[11];
  *(v5 + 336) = v20;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 344) = AssociatedTypeWitness;
  v10 = v6[15];
  *(v5 + 352) = v10;
  v11 = v6[12];
  *(v5 + 360) = v11;
  swift_getAssociatedTypeWitness();
  sub_1A99770A0();
  *(v5 + 368) = swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  *(v5 + 376) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v12 = sub_1A9977A20();
  *(v5 + 384) = v12;
  v13 = *(v12 - 8);
  *(v5 + 392) = v13;
  *(v5 + 400) = v13;
  *(v5 + 408) = swift_task_alloc();
  *(v5 + 416) = swift_task_alloc();
  *&v14 = v8;
  *(&v14 + 1) = v20;
  *&v15 = v11;
  *(&v15 + 1) = v7;
  *(v5 + 96) = v15;
  *(v5 + 80) = v14;
  *(v5 + 112) = v21;
  *(v5 + 120) = v10;
  *(v5 + 424) = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(255, v5 + 80);
  v16 = sub_1A99770A0();
  *(v5 + 432) = v16;
  *(v5 + 440) = *(v16 - 8);
  *(v5 + 448) = swift_task_alloc();
  *(v5 + 456) = swift_task_alloc();
  v17 = sub_1A99770A0();
  *(v5 + 464) = v17;
  *(v5 + 472) = *(v17 - 8);
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = *(AssociatedTypeWitness - 8);
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = *(v20 - 8);
  *(v5 + 512) = swift_task_alloc();
  v18 = swift_getAssociatedTypeWitness();
  *(v5 + 520) = v18;
  *(v5 + 528) = *(v18 - 8);
  *(v5 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A985E2BC, 0, 0);
}

uint64_t sub_1A985E2BC()
{
  (*(v0[63] + 16))(v0[64], v0[37], v0[42]);
  sub_1A9976D30();

  return MEMORY[0x1EEE6DFA0](sub_1A985E360, 0, 0);
}

uint64_t sub_1A985E360()
{
  v1 = v0[38];
  v0[2] = v0;
  v0[3] = sub_1A985E40C;
  v2 = swift_continuation_init();
  sub_1A9860434(v2, v1, sub_1A98614BC);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A985E40C(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 544) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1A985E6D4, 0, 0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = swift_task_alloc();
    v2[69] = v6;
    *v6 = v3;
    v6[1] = sub_1A985E5C0;
    v7 = v2[65];
    v8 = v2[60];

    return MEMORY[0x1EEE6D8C8](v8, v7, AssociatedConformanceWitness);
  }
}

uint64_t sub_1A985E5C0()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1A985EE80;
  }

  else
  {
    v2 = sub_1A985E7C4;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A985E6D4()
{
  (*(v0[66] + 8))(v0[67], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A985E7C4()
{
  v2 = v0[60];
  v1 = v0[61];
  if ((*(v1 + 48))(v2, 1, v0[43]) == 1)
  {
    v4 = v0[44];
    v3 = v0[45];
    v5 = v0[41];
    v6 = v0[42];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    (*(v0[59] + 8))(v2, v0[58]);
    v51 = *(v9 + 16);
    v10 = swift_task_alloc();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v3;
    v10[5] = v7;
    v10[6] = v5;
    v10[7] = v4;
    v0[16] = v8;
    v0[17] = v6;
    v0[18] = v3;
    v0[19] = v7;
    v0[20] = v5;
    v0[21] = v4;
    type metadata accessor for CombineLatestStateMachine(0, (v0 + 16));
    v0[22] = v8;
    v0[23] = v6;
    v0[24] = v3;
    v0[25] = v7;
    v0[26] = v5;
    v0[27] = v4;
    type metadata accessor for CombineLatestStateMachine.UpstreamFinishedAction(255, (v0 + 22));
    sub_1A99770A0();
    sub_1A9862D90(sub_1A9861474, v10, v51);

    v11 = v0[34];
    if ((~v11 & 0xF000000000000007) != 0)
    {
      v52 = v0[36];
      v54 = v0[35];
      if (v11 < 0)
      {
        v36 = *(v0[36] + 16);
        if (v36)
        {
          v37 = v52 + 32;
          sub_1A9976BC0();
          sub_1A97FC63C();
          do
          {
            v37 += 8;
            v38 = swift_allocError();
            sub_1A99766C0();
            swift_allocError();
            *v39 = v38;
            swift_continuation_throwingResumeWithError();
            --v36;
          }

          while (v36);
        }

        v40 = v0[52];
        v42 = v0[48];
        v41 = v0[49];
        v43 = v0[46];
        v16 = v54;
        sub_1A9976CB0();
        (*(*(v43 - 8) + 56))(v40, 1, 1, v43);
        swift_storeEnumTagMultiPayload();
        (*(v41 + 32))(*(*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x40) + 40), v40, v42);
        swift_continuation_resume();
      }

      else
      {
        v12 = *(v0[35] + 16);
        if (v12)
        {
          v13 = v54 + 32;
          sub_1A9976BC0();
          sub_1A97FC63C();
          do
          {
            v13 += 8;
            v14 = swift_allocError();
            sub_1A99766C0();
            swift_allocError();
            *v15 = v14;
            swift_continuation_throwingResumeWithError();
            --v12;
          }

          while (v12);
        }

        sub_1A9976CB0();
        v16 = v54;
      }

      sub_1A98613A4(v11, v16, v52);
    }

    (*(v0[66] + 8))(v0[67], v0[65]);

    v44 = v0[1];

    return v44();
  }

  else
  {
    v50 = v0[55];
    v48 = v0[57];
    v49 = v0[54];
    v53 = v0[56];
    v55 = v0[53];
    v17 = v0[45];
    v46 = v0[62];
    v47 = v0[44];
    v19 = v0[41];
    v18 = v0[42];
    v20 = v0[39];
    v21 = v0[40];
    v22 = v0[38];
    (*(v1 + 32))();
    v23 = *(v22 + 16);
    v24 = swift_task_alloc();
    v24[2] = v21;
    v24[3] = v18;
    v24[4] = v17;
    v24[5] = v20;
    v24[6] = v19;
    v24[7] = v47;
    v24[8] = v46;
    v0[28] = v21;
    v0[29] = v18;
    v0[30] = v17;
    v0[31] = v20;
    v0[32] = v19;
    v0[33] = v47;
    type metadata accessor for CombineLatestStateMachine(0, (v0 + 28));
    sub_1A9862D90(sub_1A9861490, v24, v23);

    (*(v50 + 16))(v53, v48, v49);
    if ((*(*(v55 - 8) + 48))(v53, 1) != 1)
    {
      v25 = v0[56];
      v27 = v0[51];
      v26 = v0[52];
      v28 = v0[49];
      v29 = v0[50];
      v30 = v0[48];
      v31 = *v25;
      sub_1A9976CE0();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v29 + 32))(v26, &v25[*(TupleTypeMetadata2 + 48)], v30);
      (*(v29 + 16))(v27, v26, v30);
      (*(v28 + 32))(*(*(v31 + 64) + 40), v27, v30);
      swift_continuation_resume();
      (*(v29 + 8))(v26, v30);
    }

    v34 = v0[61];
    v33 = v0[62];
    v35 = v0[43];
    (*(v0[55] + 8))(v0[57], v0[54]);
    (*(v34 + 8))(v33, v35);

    return MEMORY[0x1EEE6DFA0](sub_1A985E360, 0, 0);
  }
}

uint64_t sub_1A985EE80()
{
  (*(v0[66] + 8))(v0[67], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A985EF70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v32 = a8;
  v26 = a4;
  v27 = a7;
  v24 = a3;
  v25 = a6;
  v30 = a5;
  v28 = a2;
  v34 = a9;
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = sub_1A99770A0();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v11 = (&v24 - v10);
  v12 = swift_getAssociatedTypeWitness();
  v29 = sub_1A99770A0();
  v13 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v15 = &v24 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_1A99770A0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  (*(*(v16 - 8) + 56))(&v24 - v19, 1, 1, v16);
  v21 = *(v12 - 8);
  (*(v21 + 16))(v15, v28, v12);
  (*(v21 + 56))(v15, 0, 1, v12);
  (*(*(AssociatedTypeWitness - 8) + 56))(v11, 1, 1, AssociatedTypeWitness);
  v36[0] = v24;
  v36[1] = v26;
  v36[2] = v30;
  v36[3] = v25;
  v36[4] = v27;
  v36[5] = v32;
  v22 = type metadata accessor for CombineLatestStateMachine(0, v36);
  sub_1A97F5A20(v20, v15, v11, v22, v34);
  (*(v31 + 8))(v11, v33);
  (*(v13 + 8))(v15, v29);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_1A985F320(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 296) = a4;
  *(v5 + 304) = a5;
  v6 = *a5;
  v7 = *(*a5 + 104);
  *(v5 + 312) = v7;
  v22 = v7;
  v8 = v6[10];
  *(v5 + 320) = v8;
  swift_getAssociatedTypeWitness();
  v9 = v6[14];
  *(v5 + 328) = v9;
  v10 = v6[11];
  *(v5 + 336) = v10;
  swift_getAssociatedTypeWitness();
  v21 = v6[15];
  *(v5 + 344) = v21;
  v11 = v6[12];
  *(v5 + 352) = v11;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v5 + 360) = AssociatedTypeWitness;
  v13 = sub_1A99770A0();
  *(v5 + 368) = v13;
  *(v5 + 376) = swift_getTupleTypeMetadata3();
  sub_1A99770A0();
  *(v5 + 384) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EB3B0CF0, &qword_1A9992950);
  v14 = sub_1A9977A20();
  *(v5 + 392) = v14;
  v15 = *(v14 - 8);
  *(v5 + 400) = v15;
  *(v5 + 408) = v15;
  *(v5 + 416) = swift_task_alloc();
  *(v5 + 424) = swift_task_alloc();
  *&v16 = v8;
  *(&v16 + 1) = v10;
  *&v17 = v11;
  *(&v17 + 1) = v22;
  *(v5 + 96) = v17;
  *(v5 + 80) = v16;
  *(v5 + 112) = v9;
  *(v5 + 120) = v21;
  *(v5 + 432) = type metadata accessor for CombineLatestStateMachine.ElementProducedAction(255, v5 + 80);
  v18 = sub_1A99770A0();
  *(v5 + 440) = v18;
  *(v5 + 448) = *(v18 - 8);
  *(v5 + 456) = swift_task_alloc();
  *(v5 + 464) = swift_task_alloc();
  *(v5 + 472) = *(v13 - 8);
  *(v5 + 480) = swift_task_alloc();
  *(v5 + 488) = *(AssociatedTypeWitness - 8);
  *(v5 + 496) = swift_task_alloc();
  *(v5 + 504) = *(v11 - 8);
  *(v5 + 512) = swift_task_alloc();
  v19 = swift_getAssociatedTypeWitness();
  *(v5 + 520) = v19;
  *(v5 + 528) = *(v19 - 8);
  *(v5 + 536) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A985F77C, 0, 0);
}

uint64_t sub_1A985F77C()
{
  (*(v0[63] + 16))(v0[64], v0[37], v0[44]);
  sub_1A9976D30();

  return MEMORY[0x1EEE6DFA0](sub_1A985F820, 0, 0);
}

uint64_t sub_1A985F820()
{
  v1 = v0[38];
  v0[2] = v0;
  v0[3] = sub_1A985F8CC;
  v2 = swift_continuation_init();
  sub_1A9860434(v2, v1, sub_1A9861424);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1A985F8CC(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v4 = *(*v1 + 48);
  *(*v1 + 544) = v4;
  if (v4)
  {
    swift_willThrow();

    return MEMORY[0x1EEE6DFA0](sub_1A985FB94, 0, 0);
  }

  else
  {
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v6 = swift_task_alloc();
    v2[69] = v6;
    *v6 = v3;
    v6[1] = sub_1A985FA80;
    v7 = v2[65];
    v8 = v2[60];

    return MEMORY[0x1EEE6D8C8](v8, v7, AssociatedConformanceWitness);
  }
}

uint64_t sub_1A985FA80()
{
  *(*v1 + 560) = v0;

  if (v0)
  {
    v2 = sub_1A9860344;
  }

  else
  {
    v2 = sub_1A985FC84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A985FB94()
{
  (*(v0[66] + 8))(v0[67], v0[65]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A985FC84()
{
  v2 = v0[60];
  v1 = v0[61];
  if ((*(v1 + 48))(v2, 1, v0[45]) == 1)
  {
    v4 = v0[43];
    v3 = v0[44];
    v5 = v0[41];
    v6 = v0[42];
    v7 = v0[39];
    v8 = v0[40];
    v9 = v0[38];
    (*(v0[59] + 8))(v2, v0[46]);
    v51 = *(v9 + 16);
    v10 = swift_task_alloc();
    v10[2] = v8;
    v10[3] = v6;
    v10[4] = v3;
    v10[5] = v7;
    v10[6] = v5;
    v10[7] = v4;
    v0[16] = v8;
    v0[17] = v6;
    v0[18] = v3;
    v0[19] = v7;
    v0[20] = v5;
    v0[21] = v4;
    type metadata accessor for CombineLatestStateMachine(0, (v0 + 16));
    v0[22] = v8;
    v0[23] = v6;
    v0[24] = v3;
    v0[25] = v7;
    v0[26] = v5;
    v0[27] = v4;
    type metadata accessor for CombineLatestStateMachine.UpstreamFinishedAction(255, (v0 + 22));
    sub_1A99770A0();
    sub_1A9862D90(sub_1A9861388, v10, v51);

    v11 = v0[34];
    if ((~v11 & 0xF000000000000007) != 0)
    {
      v52 = v0[36];
      v54 = v0[35];
      if (v11 < 0)
      {
        v36 = *(v0[36] + 16);
        if (v36)
        {
          v37 = v52 + 32;
          sub_1A9976BC0();
          sub_1A97FC63C();
          do
          {
            v37 += 8;
            v38 = swift_allocError();
            sub_1A99766C0();
            swift_allocError();
            *v39 = v38;
            swift_continuation_throwingResumeWithError();
            --v36;
          }

          while (v36);
        }

        v40 = v0[53];
        v42 = v0[49];
        v41 = v0[50];
        v43 = v0[47];
        v16 = v54;
        sub_1A9976CB0();
        (*(*(v43 - 8) + 56))(v40, 1, 1, v43);
        swift_storeEnumTagMultiPayload();
        (*(v41 + 32))(*(*((v11 & 0x7FFFFFFFFFFFFFFFLL) + 0x40) + 40), v40, v42);
        swift_continuation_resume();
      }

      else
      {
        v12 = *(v0[35] + 16);
        if (v12)
        {
          v13 = v54 + 32;
          sub_1A9976BC0();
          sub_1A97FC63C();
          do
          {
            v13 += 8;
            v14 = swift_allocError();
            sub_1A99766C0();
            swift_allocError();
            *v15 = v14;
            swift_continuation_throwingResumeWithError();
            --v12;
          }

          while (v12);
        }

        sub_1A9976CB0();
        v16 = v54;
      }

      sub_1A98613A4(v11, v16, v52);
    }

    (*(v0[66] + 8))(v0[67], v0[65]);

    v44 = v0[1];

    return v44();
  }

  else
  {
    v50 = v0[56];
    v48 = v0[58];
    v49 = v0[55];
    v53 = v0[57];
    v55 = v0[54];
    v17 = v0[44];
    v46 = v0[62];
    v47 = v0[43];
    v19 = v0[41];
    v18 = v0[42];
    v20 = v0[39];
    v21 = v0[40];
    v22 = v0[38];
    (*(v1 + 32))();
    v23 = *(v22 + 16);
    v24 = swift_task_alloc();
    v24[2] = v21;
    v24[3] = v18;
    v24[4] = v17;
    v24[5] = v20;
    v24[6] = v19;
    v24[7] = v47;
    v24[8] = v46;
    v0[28] = v21;
    v0[29] = v18;
    v0[30] = v17;
    v0[31] = v20;
    v0[32] = v19;
    v0[33] = v47;
    type metadata accessor for CombineLatestStateMachine(0, (v0 + 28));
    sub_1A9862D90(sub_1A98613F8, v24, v23);

    (*(v50 + 16))(v53, v48, v49);
    if ((*(*(v55 - 8) + 48))(v53, 1) != 1)
    {
      v25 = v0[57];
      v27 = v0[52];
      v26 = v0[53];
      v28 = v0[50];
      v29 = v0[51];
      v30 = v0[49];
      v31 = *v25;
      sub_1A9976CE0();
      TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
      (*(v29 + 32))(v26, &v25[*(TupleTypeMetadata2 + 48)], v30);
      (*(v29 + 16))(v27, v26, v30);
      (*(v28 + 32))(*(*(v31 + 64) + 40), v27, v30);
      swift_continuation_resume();
      (*(v29 + 8))(v26, v30);
    }

    v34 = v0[61];
    v33 = v0[62];
    v35 = v0[45];
    (*(v0[56] + 8))(v0[58], v0[55]);
    (*(v34 + 8))(v33, v35);

    return MEMORY[0x1EEE6DFA0](sub_1A985F820, 0, 0);
  }
}

uint64_t sub_1A9860344()
{
  (*(v0[66] + 8))(v0[67], v0[65]);

  v1 = v0[1];

  return v1();
}

void sub_1A9860434(uint64_t a1, void *a2, void (*a3)(uint64_t))
{
  v4 = *a2;
  v5 = a2[2];
  v10 = *(*a2 + 80);
  v11 = v4[11];
  v12 = v4[12];
  v13 = v4[13];
  v14 = v4[14];
  v15 = v4[15];
  v16 = a1;
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  type metadata accessor for CombineLatestStateMachine(0, &v17);
  v17 = v10;
  v18 = v11;
  v19 = v12;
  v20 = v13;
  v21 = v14;
  v22 = v15;
  type metadata accessor for CombineLatestStateMachine.ChildTaskSuspendedAction(255, &v17);
  sub_1A99770A0();
  sub_1A9862D90(a3, &v9, v5);
  v6 = v17;
  v7 = v18;
  if ((~v17 & 0xF00000000000000FLL) != 0 || (v18 & 0xF000000000000007) != 0xF000000000000007)
  {
    if (v18 < 0)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CF0, &qword_1A9992950);
      swift_allocError();
      *v8 = v7 & 0x7FFFFFFFFFFFFFFFLL;
      swift_continuation_throwingResumeWithError();
    }

    else
    {
      swift_continuation_throwingResume();
      sub_1A9861440(v6, v7);
    }
  }
}

uint64_t sub_1A98605F0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v32 = a8;
  v26 = a4;
  v27 = a7;
  v24 = a3;
  v25 = a6;
  v29 = a2;
  v30 = a5;
  v34 = a9;
  v35 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v33 = sub_1A99770A0();
  v31 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v11 = (&v24 - v10);
  v12 = swift_getAssociatedTypeWitness();
  v28 = sub_1A99770A0();
  v13 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v15 = &v24 - v14;
  v16 = swift_getAssociatedTypeWitness();
  v17 = sub_1A99770A0();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = &v24 - v19;
  (*(*(v16 - 8) + 56))(&v24 - v19, 1, 1, v16);
  (*(*(v12 - 8) + 56))(v15, 1, 1, v12);
  v21 = *(AssociatedTypeWitness - 8);
  (*(v21 + 16))(v11, v29, AssociatedTypeWitness);
  (*(v21 + 56))(v11, 0, 1, AssociatedTypeWitness);
  v36[0] = v24;
  v36[1] = v26;
  v36[2] = v30;
  v36[3] = v25;
  v36[4] = v27;
  v36[5] = v32;
  v22 = type metadata accessor for CombineLatestStateMachine(0, v36);
  sub_1A97F5A20(v20, v15, v11, v22, v34);
  (*(v31 + 8))(v11, v33);
  (*(v13 + 8))(v15, v28);
  return (*(v18 + 8))(v20, v17);
}

uint64_t sub_1A98609BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A9860A0C@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[2];
  v7[0] = v1[1];
  v7[1] = v3;
  v7[2] = v1[3];
  v4 = type metadata accessor for CombineLatestStateMachine(0, v7);
  result = sub_1A97F3F28(v4);
  *a1 = result;
  a1[1] = v6;
  return result;
}

uint64_t sub_1A9860A70(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1A9860AB0(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_1A97B2638;

  return sub_1A9859C44(a1, v1);
}

char *sub_1A9860B54@<X0>(char **a1@<X8>)
{
  v3 = v1[2];
  v8[0] = v1[1];
  v8[1] = v3;
  v8[2] = v1[3];
  v4 = type metadata accessor for CombineLatestStateMachine(0, v8);
  result = sub_1A97FA764(v4);
  *a1 = result;
  a1[1] = v6;
  a1[2] = v7;
  return result;
}

uint64_t sub_1A9860BBC(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1A9860BD0(result, a2, a3);
  }

  return result;
}

uint64_t sub_1A9860BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

uint64_t sub_1A9860C38(uint64_t a1)
{
  v3 = v2;
  v5 = (*(*(v1[4] - 8) + 80) + 80) & ~*(*(v1[4] - 8) + 80);
  v6 = (*(*(v1[4] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(v1[5] - 8);
  v8 = *(v7 + 64);
  v9 = (v6 + *(v7 + 80) + 8) & ~*(v7 + 80);
  v10 = *(sub_1A99770A0() - 8);
  v11 = (v9 + v8 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v1[2];
  v13 = v1[3];
  v14 = *(v1 + v6);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_1A97B2638;

  return sub_1A985B880(a1, v12, v13, v1 + v5, v14, v1 + v9, v1 + v11);
}

uint64_t sub_1A9860DF0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_1A97B2988;

  return sub_1A985BACC(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1A9860EB8(uint64_t a1)
{
  v4 = v1[3];
  v5 = (*(*(v1[4] - 8) + 80) + 80) & ~*(*(v1[4] - 8) + 80);
  v6 = v1[2];
  v7 = *(v1 + ((*(*(v1[4] - 8) + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2988;

  return sub_1A985CB74(a1, v6, v4, v1 + v5, v7);
}

uint64_t sub_1A9860FD4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A986103C(uint64_t a1)
{
  v4 = (*(*(v1[5] - 8) + 80) + 80) & ~*(*(v1[5] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + ((*(*(v1[5] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2988;

  return sub_1A985DE5C(a1, v5, v6, v1 + v4, v7);
}

char *sub_1A9861158@<X0>(char **a1@<X8>)
{
  v3 = *(v1 + 64);
  v4 = *(v1 + 32);
  v10[0] = *(v1 + 16);
  v10[1] = v4;
  v10[2] = *(v1 + 48);
  v5 = type metadata accessor for CombineLatestStateMachine(0, v10);
  result = sub_1A97F9A20(v3, v5);
  *a1 = result;
  a1[1] = v7;
  a1[2] = v8;
  a1[3] = v9;
  return result;
}

uint64_t sub_1A98611D4(uint64_t result, id a2, uint64_t a3, uint64_t a4)
{
  if ((~(result & a3) & 0xF000000000000007) != 0)
  {
    return sub_1A98611EC(result, a2, a3, a4);
  }

  return result;
}

uint64_t sub_1A98611EC(uint64_t a1, id a2, uint64_t a3, uint64_t a4)
{
  if (a3 < 0)
  {
  }

  else
  {
  }
}

uint64_t sub_1A986126C(uint64_t a1)
{
  v4 = (*(*(v1[6] - 8) + 80) + 80) & ~*(*(v1[6] - 8) + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + ((*(*(v1[6] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1A97B2988;

  return sub_1A985F320(a1, v5, v6, v1 + v4, v7);
}

uint64_t sub_1A98613A4(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((~result & 0xF000000000000007) != 0)
  {
    return sub_1A98613B8(result, a2, a3);
  }

  return result;
}

uint64_t sub_1A98613B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
}

void sub_1A9861440(uint64_t result, uint64_t a2)
{
  if ((~result & 0xF00000000000000FLL) != 0 || (a2 & 0xF000000000000007) != 0xF000000000000007)
  {
    sub_1A9861464(result, a2);
  }
}

void sub_1A9861464(uint64_t a1, uint64_t a2)
{
  if (a2 < 0)
  {
  }
}

uint64_t sub_1A98614D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B29C0, &qword_1A9991A00);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

char *sub_1A9861564@<X0>(unint64_t a1@<X1>, char **a2@<X8>)
{
  v5 = v2[2];
  v10[0] = v2[1];
  v10[1] = v5;
  v10[2] = v2[3];
  v6 = type metadata accessor for CombineLatestStateMachine(0, v10);
  result = sub_1A97F868C(a1, v6);
  *a2 = result;
  a2[1] = v8;
  a2[2] = v9;
  return result;
}

uint64_t sub_1A9861658@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 64);
  v6 = *(v2 + 32);
  v10[0] = *(v2 + 16);
  v10[1] = v6;
  v10[2] = *(v2 + 48);
  v7 = type metadata accessor for CombineLatestStateMachine(0, v10);
  result = sub_1A97F5454(a1, v5, v7);
  *a2 = result;
  a2[1] = v9;
  return result;
}

void *sub_1A98616D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v38 = a2;
  v39 = a3;
  v36 = a1;
  v4 = *v3;
  v32 = *(*v3 + 96);
  v5 = v32;
  v37 = sub_1A99770A0();
  v35 = *(v37 - 8);
  v6 = MEMORY[0x1EEE9AC00](v37);
  v34 = &v30 - v7;
  v8 = v4[11];
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v6);
  v33 = &v30 - v11;
  v12 = v4[10];
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = &v30 - v14;
  v31 = v4[13];
  v30 = v4[14];
  *&v16 = v12;
  *(&v16 + 1) = v8;
  *&v17 = v5;
  *(&v17 + 1) = v31;
  v18 = v4[15];
  v40[0] = v16;
  v40[1] = v17;
  v41 = v30;
  v42 = v18;
  v19 = type metadata accessor for CombineLatestStateMachine(0, v40);
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v22 = &v30 - v21;
  (*(v13 + 16))(v15, v36, v12);
  v23 = *(v9 + 16);
  v24 = v33;
  v23(v33, v38, v8);
  v25 = v34;
  (*(v35 + 16))(v34, v39, v37);
  sub_1A97F3D00(v15, v24, v25, v12, v8, v32, v31, v30, v22, v18);
  v28 = sub_1A9862F08(v22, v19, v26, v27);
  (*(v20 + 8))(v22, v19);
  v3[2] = v28;
  return v3;
}

uint64_t _arrayDescription<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *&v29 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v7 = &v27 - v6;
  v8 = sub_1A99770A0();
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v27 - v10;
  v12 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_getAssociatedTypeWitness();
  v28 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v27 - v16;
  v33 = 91;
  v34 = 0xE100000000000000;
  (*(v12 + 16))(v14, a1, a2);
  sub_1A99769E0();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v31 = v17;
  v32 = v15;
  v30 = AssociatedConformanceWitness;
  sub_1A9977160();
  v19 = v29;
  v20 = *(v29 + 48);
  if (v20(v11, 1, AssociatedTypeWitness) != 1)
  {
    v24 = *(v19 + 32);
    v22 = v19 + 32;
    v23 = v24;
    v24(v7, v11, AssociatedTypeWitness);
    v29 = xmmword_1A9996D60;
    while (1)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FC0, &qword_1A999A498);
      v25 = swift_allocObject();
      *(v25 + 16) = v29;
      *(v25 + 56) = AssociatedTypeWitness;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v25 + 32));
      (*(v22 - 16))(boxed_opaque_existential_0, v7, AssociatedTypeWitness);
      sub_1A9977220();

      (*(v22 - 24))(v7, AssociatedTypeWitness);
      sub_1A9977160();
      if (v20(v11, 1, AssociatedTypeWitness) == 1)
      {
        break;
      }

      v23(v7, v11, AssociatedTypeWitness);
      MEMORY[0x1AC5895B0](8236, 0xE200000000000000);
    }
  }

  (*(v28 + 8))(v31, v32);
  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return v33;
}

uint64_t sub_1A9861EBC(uint64_t a1)
{
  sub_1A9861F94();
  v1 = sub_1A99769A0();
  MEMORY[0x1AC5895B0](v1);

  return 30768;
}

uint64_t _addressString<A>(for:)(uint64_t a1)
{
  sub_1A9861F94();
  v1 = sub_1A99769A0();
  MEMORY[0x1AC5895B0](v1);

  return 30768;
}

unint64_t sub_1A9861F94()
{
  result = qword_1EB3B31E8;
  if (!qword_1EB3B31E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31E8);
  }

  return result;
}

uint64_t _dictionaryDescription<A, B, C>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *&v55 = *(a3 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v57 = &v39 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v56 = &v39 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v54 = sub_1A99770A0();
  v49 = *(v54 - 8);
  v14 = MEMORY[0x1EEE9AC00](v54);
  v53 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v14);
  v18 = &v39 - v17;
  v51 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v39 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = *(a5 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v22 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v24 = (&v39 - v23);
  v52 = a4;
  if (sub_1A9976E80())
  {
    return 6109787;
  }

  v40 = v22;
  v58 = 91;
  v59 = 0xE100000000000000;
  v51[2](v20, a1, v52);
  v51 = v24;
  sub_1A99769E0();
  v52 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v49 += 4;
  v50 = AssociatedConformanceWitness;
  v27 = TupleTypeMetadata2;
  v47 = (v42 + 32);
  v48 = TupleTypeMetadata2 - 8;
  v45 = (v42 + 16);
  v46 = (v55 + 32);
  v43 = (v55 + 8);
  v44 = (v55 + 16);
  v28 = (v42 + 8);
  v29 = 1;
  v55 = xmmword_1A9996D60;
  while (1)
  {
    v36 = v53;
    sub_1A9977160();
    (*v49)(v18, v36, v54);
    if ((*(*(v27 - 8) + 48))(v18, 1, v27) == 1)
    {
      break;
    }

    v37 = v27;
    v38 = *(v27 + 48);
    (*v47)(v56, v18, a2);
    (*v46)(v57, &v18[v38], a3);
    if ((v29 & 1) == 0)
    {
      MEMORY[0x1AC5895B0](8236, 0xE200000000000000);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B5FC0, &qword_1A999A498);
    v30 = swift_allocObject();
    *(v30 + 16) = v55;
    *(v30 + 56) = a2;
    boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((v30 + 32));
    v32 = v56;
    (*v45)(boxed_opaque_existential_0, v56, a2);
    sub_1A9977220();

    MEMORY[0x1AC5895B0](8250, 0xE200000000000000);
    v33 = swift_allocObject();
    *(v33 + 16) = v55;
    *(v33 + 56) = a3;
    v34 = __swift_allocate_boxed_opaque_existential_0((v33 + 32));
    v35 = v57;
    (*v44)(v34, v57, a3);
    sub_1A9977220();

    (*v43)(v35, a3);
    (*v28)(v32, a2);
    v29 = 0;
    v27 = v37;
  }

  (*(v40 + 8))(v51, v52);
  MEMORY[0x1AC5895B0](93, 0xE100000000000000);
  return v58;
}

uint64_t SFAirDrop.EndpointMetadata.imageData.getter()
{
  v1 = *v0;
  sub_1A97C1554(*v0, *(v0 + 8));
  return v1;
}

uint64_t SFAirDrop.EndpointMetadata.init(imageData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

unint64_t SFAirDrop.EndpointMetadata.description.getter()
{
  v1 = *(v0 + 8);
  sub_1A99772B0();

  if (v1 >> 60 == 15)
  {
    v2 = 0xE300000000000000;
    v3 = 7104878;
  }

  else
  {
    v3 = sub_1A9976040();
    v2 = v4;
  }

  MEMORY[0x1AC5895B0](v3, v2);

  return 0xD00000000000002CLL;
}

uint64_t sub_1A9862718@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461446567616D69 && a2 == 0xE900000000000061)
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

uint64_t sub_1A98627A8(uint64_t a1)
{
  v2 = sub_1A9862984();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98627E4(uint64_t a1)
{
  v2 = sub_1A9862984();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFAirDrop.EndpointMetadata.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B31F0, &qword_1A999A4A0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A97C1554(v7, v8);
  sub_1A9862984();
  sub_1A9977AA0();
  v10 = v7;
  v11 = v8;
  sub_1A97B4370();
  sub_1A9977680();
  sub_1A97D8688(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A9862984()
{
  result = qword_1EB3B31F8;
  if (!qword_1EB3B31F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B31F8);
  }

  return result;
}

uint64_t SFAirDrop.EndpointMetadata.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3200, &qword_1A999A4A8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9862984();
  sub_1A9977A70();
  if (!v2)
  {
    sub_1A97B446C();
    sub_1A9977590();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(a1);
}

uint64_t sub_1A9862B7C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1A9862BD8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = a2 - 12;
    *(result + 8) = 0;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

unint64_t sub_1A9862C48()
{
  result = qword_1EB3B3208;
  if (!qword_1EB3B3208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3208);
  }

  return result;
}

unint64_t sub_1A9862CA0()
{
  result = qword_1EB3B3210;
  if (!qword_1EB3B3210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3210);
  }

  return result;
}

unint64_t sub_1A9862CF8()
{
  result = qword_1EB3B3218[0];
  if (!qword_1EB3B3218[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3B3218);
  }

  return result;
}

void sub_1A9862D90(void (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(*a3 + *MEMORY[0x1E69E6B68] + 16);
  v6 = (*(*a3 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((a3 + v6));
  a1(a3 + v5);
  os_unfair_lock_unlock((a3 + v6));
}

uint64_t sub_1A9862E48()
{
  MEMORY[0x1AC589FD0]();

  return swift_deallocClassInstance();
}

uint64_t sub_1A9862EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1A9862F6C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *(v2 + 16);
  v4 = *a1;
  *(a1 + ((*(v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  return (*(*(*(v4 + *MEMORY[0x1E69E6B68]) - 8) + 16))(a2, v3);
}

uint64_t sub_1A9863018()
{
  v1 = 1852141679;
  v2 = 0x6572616873;
  if (*v0 != 2)
  {
    v2 = 0x726566736E617274;
  }

  if (*v0)
  {
    v1 = 1684956531;
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

uint64_t sub_1A9863080@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A986760C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A98630A8(uint64_t a1)
{
  v2 = sub_1A9863738();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98630E4(uint64_t a1)
{
  v2 = sub_1A9863738();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9863120(uint64_t a1)
{
  v2 = sub_1A9863888();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986315C(uint64_t a1)
{
  v2 = sub_1A9863888();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9863198(uint64_t a1)
{
  v2 = sub_1A9863834();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98631D4(uint64_t a1)
{
  v2 = sub_1A9863834();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9863210(uint64_t a1)
{
  v2 = sub_1A98637E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A986324C(uint64_t a1)
{
  v2 = sub_1A98637E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A9863288(uint64_t a1)
{
  v2 = sub_1A986378C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98632C4(uint64_t a1)
{
  v2 = sub_1A986378C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoff.Content.Action.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32A0, &qword_1A999A7B0);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v22 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32A8, &qword_1A999A7B8);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = &v22 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32B0, &qword_1A999A7C0);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v24 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32B8, &qword_1A999A7C8);
  v22 = *(v9 - 8);
  v23 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32C0, &qword_1A999A7D0);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v22 - v14;
  v16 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9863738();
  sub_1A9977AA0();
  v17 = (v13 + 8);
  if (v16 > 1)
  {
    if (v16 == 2)
    {
      v35 = 2;
      sub_1A98637E0();
      v18 = v27;
      sub_1A9977640();
      v20 = v28;
      v19 = v29;
    }

    else
    {
      v36 = 3;
      sub_1A986378C();
      v18 = v30;
      sub_1A9977640();
      v20 = v31;
      v19 = v32;
    }

    goto LABEL_8;
  }

  if (v16)
  {
    v34 = 1;
    sub_1A9863834();
    v18 = v24;
    sub_1A9977640();
    v20 = v25;
    v19 = v26;
LABEL_8:
    (*(v20 + 8))(v18, v19);
    return (*v17)(v15, v12);
  }

  v33 = 0;
  sub_1A9863888();
  sub_1A9977640();
  (*(v22 + 8))(v11, v23);
  return (*v17)(v15, v12);
}

unint64_t sub_1A9863738()
{
  result = qword_1EB3B32C8;
  if (!qword_1EB3B32C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B32C8);
  }

  return result;
}

unint64_t sub_1A986378C()
{
  result = qword_1EB3B32D0;
  if (!qword_1EB3B32D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B32D0);
  }

  return result;
}

unint64_t sub_1A98637E0()
{
  result = qword_1EB3B32D8;
  if (!qword_1EB3B32D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B32D8);
  }

  return result;
}

unint64_t sub_1A9863834()
{
  result = qword_1EB3B32E0;
  if (!qword_1EB3B32E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B32E0);
  }

  return result;
}

unint64_t sub_1A9863888()
{
  result = qword_1EB3B32E8;
  if (!qword_1EB3B32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B32E8);
  }

  return result;
}

uint64_t SFProximityHandoff.Content.Action.hashValue.getter()
{
  v1 = *v0;
  sub_1A9977980();
  MEMORY[0x1AC58A630](v1);
  return sub_1A99779B0();
}

uint64_t SFProximityHandoff.Content.Action.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v45 = a2;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32F0, &qword_1A999A7D8);
  v39 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v44 = &v34 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B32F8, &qword_1A999A7E0);
  v38 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v43 = &v34 - v4;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3300, &qword_1A999A7E8);
  v36 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3308, &qword_1A999A7F0);
  v37 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3310, &unk_1A999A7F8);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v34 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1A9863738();
  v15 = v46;
  sub_1A9977A70();
  if (!v15)
  {
    v16 = v9;
    v34 = v7;
    v35 = 0;
    v17 = v6;
    v18 = v43;
    v19 = v44;
    v46 = v11;
    v20 = v45;
    v21 = v13;
    v22 = sub_1A9977620();
    v23 = (2 * *(v22 + 16)) | 1;
    v48 = v22;
    v49 = v22 + 32;
    v50 = 0;
    v51 = v23;
    v24 = sub_1A97B2974();
    if (v24 == 4 || v50 != v51 >> 1)
    {
      v26 = sub_1A9977300();
      swift_allocError();
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
      *v28 = &type metadata for SFProximityHandoff.Content.Action;
      sub_1A9977540();
      sub_1A99772F0();
      (*(*(v26 - 8) + 104))(v28, *MEMORY[0x1E69E6AF8], v26);
      swift_willThrow();
LABEL_9:
      (*(v46 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0Tm(v47);
    }

    v52 = v24;
    if (v24 <= 1u)
    {
      if (v24)
      {
        v53 = 1;
        sub_1A9863834();
        v32 = v35;
        sub_1A9977530();
        if (!v32)
        {
          (*(v36 + 8))(v17, v40);
          goto LABEL_17;
        }
      }

      else
      {
        v53 = 0;
        sub_1A9863888();
        v25 = v35;
        sub_1A9977530();
        if (!v25)
        {
          (*(v37 + 8))(v16, v34);
LABEL_17:
          (*(v46 + 8))(v13, v10);
LABEL_22:
          swift_unknownObjectRelease();
          *v20 = v52;
          return __swift_destroy_boxed_opaque_existential_0Tm(v47);
        }
      }

      goto LABEL_9;
    }

    v30 = v46;
    if (v24 == 2)
    {
      v53 = 2;
      sub_1A98637E0();
      v31 = v35;
      sub_1A9977530();
      if (!v31)
      {
        (*(v38 + 8))(v18, v42);
LABEL_21:
        (*(v30 + 8))(v21, v10);
        goto LABEL_22;
      }
    }

    else
    {
      v53 = 3;
      sub_1A986378C();
      v33 = v35;
      sub_1A9977530();
      if (!v33)
      {
        (*(v39 + 8))(v19, v41);
        goto LABEL_21;
      }
    }

    (*(v30 + 8))(v21, v10);
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_0Tm(v47);
}

uint64_t sub_1A9863FFC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t sub_1A9864084(uint64_t a1)
{
  v2 = sub_1A986446C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A98640C0(uint64_t a1)
{
  v2 = sub_1A986446C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A98640FC(uint64_t a1)
{
  v2 = sub_1A98644C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9864138(uint64_t a1)
{
  v2 = sub_1A98644C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoff.Content.Item.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3318, &qword_1A999A808);
  v16 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v15 - v3;
  v5 = type metadata accessor for SFProximityHandoff.Content.Item(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3320, &qword_1A999A810);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v15 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986446C();
  v12 = v2;
  sub_1A9977AA0();
  sub_1A9865680(v15, v7, type metadata accessor for SFProximityHandoff.Content.Item);
  sub_1A98644C0();
  sub_1A9977640();
  v13 = sub_1A9976020();
  sub_1A9864928(&qword_1EB3B1918, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1A99776E0();
  (*(*(v13 - 8) + 8))(v7, v13);
  (*(v16 + 8))(v4, v12);
  return (*(v9 + 8))(v11, v8);
}

unint64_t sub_1A986446C()
{
  result = qword_1EB3B3328;
  if (!qword_1EB3B3328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3328);
  }

  return result;
}

unint64_t sub_1A98644C0()
{
  result = qword_1EB3B3330;
  if (!qword_1EB3B3330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3330);
  }

  return result;
}

uint64_t SFProximityHandoff.Content.Item.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v22 = type metadata accessor for SFProximityHandoff.Content.Item(0);
  MEMORY[0x1EEE9AC00](v22);
  v4 = &v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3338, &qword_1A999A818);
  v23 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v22 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3340, &qword_1A999A820);
  v25 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A986446C();
  v11 = v30;
  sub_1A9977A70();
  if (v11)
  {
    goto LABEL_10;
  }

  v30 = a1;
  v13 = v23;
  v12 = v24;
  v14 = sub_1A9977620();
  v15 = (2 * *(v14 + 16)) | 1;
  v26 = v14;
  v27 = v14 + 32;
  v28 = 0;
  v29 = v15;
  v16 = v10;
  if (sub_1A97AB800() || v28 != v29 >> 1)
  {
    v18 = sub_1A9977300();
    swift_allocError();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB3B0CD0, &unk_1A9990630);
    *v20 = v22;
    sub_1A9977540();
    sub_1A99772F0();
    (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
    swift_willThrow();
    (*(v25 + 8))(v16, v8);
    swift_unknownObjectRelease();
    a1 = v30;
LABEL_10:
    v17 = a1;
    return __swift_destroy_boxed_opaque_existential_0Tm(v17);
  }

  sub_1A98644C0();
  sub_1A9977530();
  sub_1A9976020();
  sub_1A9864928(&qword_1EB3B1AB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v22 = v10;
  sub_1A99775F0();
  (*(v13 + 8))(v7, v5);
  (*(v25 + 8))(v22, v8);
  swift_unknownObjectRelease();
  sub_1A9865BC0(v4, v12, type metadata accessor for SFProximityHandoff.Content.Item);
  v17 = v30;
  return __swift_destroy_boxed_opaque_existential_0Tm(v17);
}

uint64_t sub_1A9864928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t SFProximityHandoff.Content.bundleIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFProximityHandoff.Content(0) + 20));

  return v1;
}

uint64_t SFProximityHandoff.Content.items.getter()
{
  type metadata accessor for SFProximityHandoff.Content(0);
}

uint64_t SFProximityHandoff.Content.supportedActions.getter()
{
  type metadata accessor for SFProximityHandoff.Content(0);
}

uint64_t SFProximityHandoff.Content.title.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFProximityHandoff.Content(0) + 32));

  return v1;
}

int *SFProximityHandoff.Content.init(interactionID:bundleIdentifier:items:supportedActions:title:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v16 = sub_1A99762C0();
  (*(*(v16 - 8) + 32))(a8, a1, v16);
  result = type metadata accessor for SFProximityHandoff.Content(0);
  v18 = (a8 + result[5]);
  *v18 = a2;
  v18[1] = a3;
  *(a8 + result[6]) = a4;
  *(a8 + result[7]) = a5;
  v19 = (a8 + result[8]);
  *v19 = a6;
  v19[1] = a7;
  return result;
}

unint64_t sub_1A9864B68()
{
  v1 = *v0;
  v2 = 0x7463617265746E69;
  v3 = 0x736D657469;
  v4 = 0xD000000000000010;
  if (v1 != 3)
  {
    v4 = 0x656C746974;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
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

uint64_t sub_1A9864C10@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A986776C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9864C38(uint64_t a1)
{
  v2 = sub_1A9864FB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9864C74(uint64_t a1)
{
  v2 = sub_1A9864FB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoff.Content.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3348, &qword_1A999A828);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9864FB8();
  sub_1A9977AA0();
  LOBYTE(v12) = 0;
  sub_1A99762C0();
  sub_1A9864928(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1A99776E0();
  if (!v2)
  {
    v9 = type metadata accessor for SFProximityHandoff.Content(0);
    LOBYTE(v12) = 1;
    sub_1A9977690();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3358, &qword_1A999A830);
    sub_1A986556C(&qword_1EB3B3360, &qword_1EB3B3368, &protocol conformance descriptor for SFProximityHandoff.Content.Item, MEMORY[0x1E69E6300]);
    sub_1A99776E0();
    v12 = *(v3 + *(v9 + 28));
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3370, &qword_1A999A838);
    sub_1A9865608(&qword_1EB3B3378, sub_1A984ADCC, MEMORY[0x1E69E6300]);
    sub_1A99776E0();
    LOBYTE(v12) = 4;
    sub_1A9977650();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1A9864FB8()
{
  result = qword_1EB3B3350;
  if (!qword_1EB3B3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3350);
  }

  return result;
}

uint64_t SFProximityHandoff.Content.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_1A99762C0();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v25 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3380, &qword_1A999A840);
  v26 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v7 = &v22 - v6;
  v8 = type metadata accessor for SFProximityHandoff.Content(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A9864FB8();
  v27 = v7;
  sub_1A9977A70();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(a1);
  }

  v11 = v24;
  LOBYTE(v30) = 0;
  sub_1A9864928(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v12 = v25;
  sub_1A99775F0();
  (*(v11 + 32))(v10, v12, v4);
  LOBYTE(v30) = 1;
  v13 = sub_1A99775A0();
  v14 = &v10[v8[5]];
  *v14 = v13;
  v14[1] = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3358, &qword_1A999A830);
  v29 = 2;
  sub_1A986556C(&qword_1EB3B3388, &qword_1EB3B3390, &protocol conformance descriptor for SFProximityHandoff.Content.Item, MEMORY[0x1E69E6330]);
  sub_1A99775F0();
  v16 = v26;
  *&v10[v8[6]] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B3370, &qword_1A999A838);
  v29 = 3;
  sub_1A9865608(&qword_1EB3B3398, sub_1A984AE20, MEMORY[0x1E69E6330]);
  sub_1A99775F0();
  v25 = 0;
  *&v10[v8[7]] = v30;
  LOBYTE(v30) = 4;
  v17 = sub_1A9977550();
  v19 = v18;
  (*(v16 + 8))(v27, v28);
  v20 = &v10[v8[8]];
  *v20 = v17;
  v20[1] = v19;
  sub_1A9865680(v10, v23, type metadata accessor for SFProximityHandoff.Content);
  __swift_destroy_boxed_opaque_existential_0Tm(a1);
  return sub_1A9866774(v10, type metadata accessor for SFProximityHandoff.Content);
}

uint64_t sub_1A986556C(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B3358, &qword_1A999A830);
    sub_1A9864928(a2, type metadata accessor for SFProximityHandoff.Content.Item, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A9865608(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EB3B3370, &qword_1A999A838);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A9865680(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s7Sharing9SFAirDropO17PermissionRequestV13TelemetryDataV2id10Foundation4UUIDVvg_0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1A99762C0();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SFProximityHandoff.Interaction.state.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SFProximityHandoff.Interaction(0) + 20);

  return sub_1A9865834(a1, v3);
}

uint64_t sub_1A9865834(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SFProximityHandoff.Interaction.content.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFProximityHandoff.Interaction(0) + 24);

  return sub_1A9865924(v3, a1);
}

uint64_t sub_1A9865924(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33A0, &qword_1A999A848);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SFProximityHandoff.Interaction.content.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SFProximityHandoff.Interaction(0) + 24);

  return sub_1A98659D8(a1, v3);
}

uint64_t sub_1A98659D8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33A0, &qword_1A999A848);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t SFProximityHandoff.Interaction.init(id:state:content:showDeviceDetails:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for SFProximityHandoff.Interaction(0);
  v11 = v10[6];
  v12 = type metadata accessor for SFProximityHandoff.Content(0);
  (*(*(v12 - 8) + 56))(a5 + v11, 1, 1, v12);
  v13 = sub_1A99762C0();
  (*(*(v13 - 8) + 32))(a5, a1, v13);
  sub_1A9865BC0(a2, a5 + v10[5], type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  result = sub_1A98659D8(a3, a5 + v11);
  *(a5 + v10[7]) = a4;
  return result;
}

uint64_t sub_1A9865BC0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t SFProximityHandoff.Interaction.init(id:state:content:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for SFProximityHandoff.Interaction(0);
  v9 = v8[6];
  v10 = type metadata accessor for SFProximityHandoff.Content(0);
  (*(*(v10 - 8) + 56))(a4 + v9, 1, 1, v10);
  v11 = sub_1A99762C0();
  (*(*(v11 - 8) + 32))(a4, a1, v11);
  sub_1A9865BC0(a2, a4 + v8[5], type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
  result = sub_1A98659D8(a3, a4 + v9);
  *(a4 + v8[7]) = 0;
  return result;
}

unint64_t sub_1A9865D28()
{
  v1 = 25705;
  v2 = 0x746E65746E6F63;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0x6574617473;
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

uint64_t sub_1A9865D98@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A986792C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A9865DC0(uint64_t a1)
{
  v2 = sub_1A98660DC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A9865DFC(uint64_t a1)
{
  v2 = sub_1A98660DC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SFProximityHandoff.Interaction.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33A8, &qword_1A999A850);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98660DC();
  sub_1A9977AA0();
  v8[15] = 0;
  sub_1A99762C0();
  sub_1A9864928(&unk_1EB3ACFC0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1A99776E0();
  if (!v1)
  {
    type metadata accessor for SFProximityHandoff.Interaction(0);
    v8[14] = 1;
    type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
    sub_1A9864928(&qword_1EB3B33B8, type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.State);
    sub_1A99776E0();
    v8[13] = 2;
    type metadata accessor for SFProximityHandoff.Content(0);
    sub_1A9864928(&qword_1EB3B2E20, type metadata accessor for SFProximityHandoff.Content, &protocol conformance descriptor for SFProximityHandoff.Content);
    sub_1A9977680();
    v8[12] = 3;
    sub_1A99776A0();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1A98660DC()
{
  result = qword_1EB3B33B0;
  if (!qword_1EB3B33B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B33B0);
  }

  return result;
}

uint64_t SFProximityHandoff.Interaction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v28 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33A0, &qword_1A999A848);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v29 = &v27 - v4;
  v32 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State(0);
  MEMORY[0x1EEE9AC00](v32);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1A99762C0();
  v30 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33C0, &qword_1A999A858);
  v31 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v10 = &v27 - v9;
  v11 = type metadata accessor for SFProximityHandoff.Interaction(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v12 + 24);
  v16 = type metadata accessor for SFProximityHandoff.Content(0);
  v17 = *(*(v16 - 8) + 56);
  v37 = v15;
  v38 = v14;
  v17(&v14[v15], 1, 1, v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1A98660DC();
  v35 = v10;
  v18 = v36;
  sub_1A9977A70();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_1A986670C(&v38[v37]);
  }

  else
  {
    v19 = v31;
    v36 = v11;
    v42 = 0;
    sub_1A9864928(&qword_1EB3AD060, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1A99775F0();
    v20 = v7;
    v21 = *(v30 + 32);
    v22 = v38;
    v23 = v33;
    v33 = v20;
    v21(v38, v23, v20);
    v41 = 1;
    sub_1A9864928(&qword_1EB3B33C8, type metadata accessor for SFAirDrop.NearbySharingInteraction.State, &protocol conformance descriptor for SFAirDrop.NearbySharingInteraction.State);
    sub_1A99775F0();
    sub_1A9865BC0(v6, v22 + *(v36 + 20), type metadata accessor for SFAirDrop.NearbySharingInteraction.State);
    v40 = 2;
    sub_1A9864928(&qword_1EB3B2E38, type metadata accessor for SFProximityHandoff.Content, &protocol conformance descriptor for SFProximityHandoff.Content);
    v24 = v29;
    sub_1A9977590();
    sub_1A98659D8(v24, v22 + v37);
    v39 = 3;
    v25 = sub_1A99775B0();
    (*(v19 + 8))(v35, v34);
    *(v22 + *(v36 + 28)) = v25 & 1;
    sub_1A9865680(v22, v28, type metadata accessor for SFProximityHandoff.Interaction);
    __swift_destroy_boxed_opaque_existential_0Tm(a1);
    return sub_1A9866774(v22, type metadata accessor for SFProximityHandoff.Interaction);
  }
}

uint64_t sub_1A986670C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B33A0, &qword_1A999A848);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A9866774(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1A98667D8()
{
  result = qword_1EB3B33D0;
  if (!qword_1EB3B33D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B33D0);
  }

  return result;
}

void sub_1A98668DC(uint64_t a1)
{
  sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    sub_1A9866CF8(319, &qword_1EB3B33E8, type metadata accessor for SFProximityHandoff.Content.Item, MEMORY[0x1E69E62F8]);
    if (v2 <= 0x3F)
    {
      sub_1A9866A10(319, &qword_1EB3B33F0, &type metadata for SFProximityHandoff.Content.Action, MEMORY[0x1E69E62F8]);
      if (v3 <= 0x3F)
      {
        sub_1A9866A10(319, &qword_1EB3AB718, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1A9866A10(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t sub_1A9866A70(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A9976020();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1A9866ADC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1A9976020();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t sub_1A9866B58(uint64_t a1)
{
  result = sub_1A9976020();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

void sub_1A9866C24(uint64_t a1)
{
  sub_1A99762C0();
  if (v1 <= 0x3F)
  {
    type metadata accessor for SFAirDrop.NearbySharingInteraction.State(319);
    if (v2 <= 0x3F)
    {
      sub_1A9866CF8(319, &qword_1EB3B3418, type metadata accessor for SFProximityHandoff.Content, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1A9866CF8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

unint64_t sub_1A9866DF0()
{
  result = qword_1EB3B3420;
  if (!qword_1EB3B3420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3420);
  }

  return result;
}

unint64_t sub_1A9866E48()
{
  result = qword_1EB3B3428;
  if (!qword_1EB3B3428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3428);
  }

  return result;
}

unint64_t sub_1A9866EA0()
{
  result = qword_1EB3B3430;
  if (!qword_1EB3B3430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3430);
  }

  return result;
}

unint64_t sub_1A9866EF8()
{
  result = qword_1EB3B3438;
  if (!qword_1EB3B3438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3438);
  }

  return result;
}

unint64_t sub_1A9866F50()
{
  result = qword_1EB3B3440;
  if (!qword_1EB3B3440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3440);
  }

  return result;
}

unint64_t sub_1A9866FA8()
{
  result = qword_1EB3B3448;
  if (!qword_1EB3B3448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3448);
  }

  return result;
}

unint64_t sub_1A9867000()
{
  result = qword_1EB3B3450;
  if (!qword_1EB3B3450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3450);
  }

  return result;
}

unint64_t sub_1A9867058()
{
  result = qword_1EB3B3458;
  if (!qword_1EB3B3458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3458);
  }

  return result;
}

unint64_t sub_1A98670B0()
{
  result = qword_1EB3B3460;
  if (!qword_1EB3B3460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3460);
  }

  return result;
}

unint64_t sub_1A9867108()
{
  result = qword_1EB3B3468;
  if (!qword_1EB3B3468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3468);
  }

  return result;
}

unint64_t sub_1A9867160()
{
  result = qword_1EB3B3470;
  if (!qword_1EB3B3470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3470);
  }

  return result;
}

unint64_t sub_1A98671B8()
{
  result = qword_1EB3B3478;
  if (!qword_1EB3B3478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3478);
  }

  return result;
}

unint64_t sub_1A9867210()
{
  result = qword_1EB3B3480;
  if (!qword_1EB3B3480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3480);
  }

  return result;
}

unint64_t sub_1A9867268()
{
  result = qword_1EB3B3488;
  if (!qword_1EB3B3488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3488);
  }

  return result;
}

unint64_t sub_1A98672C0()
{
  result = qword_1EB3B3490;
  if (!qword_1EB3B3490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3490);
  }

  return result;
}

unint64_t sub_1A9867318()
{
  result = qword_1EB3B3498;
  if (!qword_1EB3B3498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B3498);
  }

  return result;
}

unint64_t sub_1A9867370()
{
  result = qword_1EB3B34A0;
  if (!qword_1EB3B34A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34A0);
  }

  return result;
}

unint64_t sub_1A98673C8()
{
  result = qword_1EB3B34A8;
  if (!qword_1EB3B34A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34A8);
  }

  return result;
}

unint64_t sub_1A9867420()
{
  result = qword_1EB3B34B0;
  if (!qword_1EB3B34B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34B0);
  }

  return result;
}

unint64_t sub_1A9867478()
{
  result = qword_1EB3B34B8;
  if (!qword_1EB3B34B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34B8);
  }

  return result;
}

unint64_t sub_1A98674D0()
{
  result = qword_1EB3B34C0;
  if (!qword_1EB3B34C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34C0);
  }

  return result;
}

unint64_t sub_1A9867528()
{
  result = qword_1EB3B34C8;
  if (!qword_1EB3B34C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34C8);
  }

  return result;
}

unint64_t sub_1A9867580()
{
  result = qword_1EB3B34D0;
  if (!qword_1EB3B34D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB3B34D0);
  }

  return result;
}

uint64_t sub_1A986760C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1852141679 && a2 == 0xE400000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684956531 && a2 == 0xE400000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6572616873 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x726566736E617274 && a2 == 0xE800000000000000)
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

uint64_t sub_1A986776C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7463617265746E69 && a2 == 0xED000044496E6F69;
  if (v4 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E4F10 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D657469 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001A99E53D0 == a2 || (sub_1A99777E0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1A99777E0();

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

uint64_t sub_1A986792C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1A99777E0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000 || (sub_1A99777E0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001A99E53F0 == a2)
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

uint64_t SFAirDropReceive.AskRequest.type.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 20);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1A9867B38(v4, v5, v6);
}

uint64_t sub_1A9867B38(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t SFAirDropReceive.AskRequest.contactIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 40));

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.senderBundleID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 44));

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.senderComputerName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 48));

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.senderModelName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 52));

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.senderEmail.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 56));

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.senderEmailHash.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 60));

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.senderCompositeName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 64));

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.senderFirstName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 68));

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.senderLastName.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 72));

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.senderID.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 76));

  return v1;
}

void *SFAirDropReceive.AskRequest.senderIcon.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 80));
  v2 = v1;
  return v1;
}

void sub_1A9867E94(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 80);
  v5 = *(a2 + v4);
  v6 = v3;

  *(a2 + v4) = v3;
}

void SFAirDropReceive.AskRequest.senderIcon.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 80);

  *(v1 + v3) = a1;
}

void *SFAirDropReceive.AskRequest.smallPreviewImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 84));
  v2 = v1;
  return v1;
}

void sub_1A9867F98(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 84);
  v5 = *(a2 + v4);
  v6 = v3;

  *(a2 + v4) = v3;
}

void SFAirDropReceive.AskRequest.smallPreviewImage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 84);

  *(v1 + v3) = a1;
}

void *SFAirDropReceive.AskRequest.previewImage.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 88));
  v2 = v1;
  return v1;
}

void sub_1A986809C(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 88);
  v5 = *(a2 + v4);
  v6 = v3;

  *(a2 + v4) = v3;
}

void SFAirDropReceive.AskRequest.previewImage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 88);

  *(v1 + v3) = a1;
}

uint64_t SFAirDropReceive.AskRequest.itemsDescription.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 92));

  return v1;
}

uint64_t SFAirDropReceive.AskRequest.itemsDescriptionAdvanced.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 96);

  return sub_1A98681F0(v3, a1);
}

uint64_t sub_1A98681F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB3B34D8, &qword_1A999B320);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SFAirDropReceive.AskRequest.urlItems.getter()
{
  type metadata accessor for SFAirDropReceive.AskRequest(0);
}

uint64_t SFAirDropReceive.AskRequest.items.getter()
{
  type metadata accessor for SFAirDropReceive.AskRequest(0);
}

uint64_t SFAirDropReceive.AskRequest.customPayload.getter()
{
  v1 = v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 108);
  v2 = *v1;
  sub_1A97C1554(*v1, *(v1 + 8));
  return v2;
}

char *SFAirDropReceive.AskRequest.files.getter()
{
  v1 = *(v0 + *(type metadata accessor for SFAirDropReceive.AskRequest(0) + 104));
  v2 = *(v1 + 16);
  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v3 = sub_1A986C0A0(*(v1 + 16), 0);
  v4 = sub_1A986C52C(&v7, v3 + 32, v2, v1);
  v5 = v7;

  sub_1A982B3C0(v5);
  if (v4 != v2)
  {
    __break(1u);
    return MEMORY[0x1E69E7CC0];
  }

  return v3;
}

uint64_t SFAirDropReceive.AskRequest.init(id:type:transferTypes:canAutoAccept:verifiableIdentity:senderIsMe:contactIdentifier:senderBundleID:senderComputerName:senderModelName:senderEmail:senderEmailHash:senderCompositeName:senderFirstName:senderLastName:senderID:senderIcon:smallPreviewImage:previewImage:itemsDescription:itemsDescriptionAdvanced:urlItems:items:customPayload:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, char a5@<W4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37)
{
  v38 = *a2;
  v39 = a2[1];
  v40 = *(a2 + 16);
  v41 = type metadata accessor for SFAirDropReceive.AskRequest(0);
  v42 = v41[20];
  *(a9 + v42) = 0;
  v43 = v41[21];
  *(a9 + v43) = 0;
  v44 = v41[22];
  *(a9 + v44) = 0;
  sub_1A986E044(a1, a9, type metadata accessor for SFAirDrop.TransferIdentifier);
  v45 = a9 + v41[5];
  *v45 = v38;
  *(v45 + 8) = v39;
  *(v45 + 16) = v40;
  *(a9 + v41[6]) = a3;
  *(a9 + v41[7]) = a4;
  *(a9 + v41[8]) = a5;
  *(a9 + v41[9]) = a6;
  v46 = (a9 + v41[10]);
  *v46 = a7;
  v46[1] = a8;
  v47 = (a9 + v41[11]);
  *v47 = a10;
  v47[1] = a11;
  v48 = (a9 + v41[12]);
  *v48 = a12;
  v48[1] = a13;
  v49 = (a9 + v41[13]);
  *v49 = a14;
  v49[1] = a15;
  v50 = (a9 + v41[14]);
  *v50 = a16;
  v50[1] = a17;
  v51 = (a9 + v41[15]);
  *v51 = a18;
  v51[1] = a19;
  v52 = (a9 + v41[16]);
  *v52 = a20;
  v52[1] = a21;
  v53 = (a9 + v41[17]);
  *v53 = a22;
  v53[1] = a23;
  v54 = (a9 + v41[18]);
  *v54 = a24;
  v54[1] = a25;
  v55 = (a9 + v41[19]);
  *v55 = a26;
  v55[1] = a27;

  *(a9 + v42) = a28;
  *(a9 + v43) = a29;

  *(a9 + v44) = a30;
  v56 = (a9 + v41[23]);
  *v56 = a31;
  v56[1] = a32;
  result = sub_1A986C6B8(a33, a9 + v41[24]);
  *(a9 + v41[25]) = a34;
  *(a9 + v41[26]) = a35;
  v58 = (a9 + v41[27]);
  *v58 = a36;
  v58[1] = a37;
  return result;
}

uint64_t SFAirDropReceive.AskRequest.senderDisplayName.getter()
{
  v1 = type metadata accessor for SFAirDropReceive.AskRequest(0);
  v2 = (v0 + *(v1 + 64));
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = *(v0 + *(v1 + 48));
  }

  return v3;
}

uint64_t SFAirDropReceive.AskRequest.description.getter()
{
  sub_1A99772B0();
  MEMORY[0x1AC5895B0](0xD000000000000023, 0x80000001A99E5410);
  v1 = type metadata accessor for SFAirDropReceive.AskRequest(0);
  MEMORY[0x1AC5895B0](*(v0 + *(v1 + 76)), *(v0 + *(v1 + 76) + 8));
  MEMORY[0x1AC5895B0](0x7665725073614820, 0xEC00000020776569);
  if (*(v0 + *(v1 + 88)))
  {
    v2 = 1702195828;
  }

  else
  {
    v2 = 0x65736C6166;
  }

  if (*(v0 + *(v1 + 88)))
  {
    v3 = 0xE400000000000000;
  }

  else
  {
    v3 = 0xE500000000000000;
  }

  MEMORY[0x1AC5895B0](v2, v3);

  MEMORY[0x1AC5895B0](0x20736D65744920, 0xE700000000000000);
  v4 = sub_1A9977730();
  MEMORY[0x1AC5895B0](v4);

  return 0;
}

unint64_t sub_1A9868844(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 1701869940;
      break;
    case 2:
      result = 0x726566736E617274;
      break;
    case 3:
      result = 0x416F7475416E6163;
      break;
    case 4:
    case 8:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0x73497265646E6573;
      break;
    case 6:
      result = 0xD000000000000011;
      break;
    case 7:
      result = 0x75427265646E6573;
      break;
    case 9:
      result = 0x6F4D7265646E6573;
      break;
    case 10:
    case 11:
      result = 0x6D457265646E6573;
      break;
    case 12:
      result = 0xD000000000000013;
      break;
    case 13:
      result = 0x69467265646E6573;
      break;
    case 14:
      result = 0x614C7265646E6573;
      break;
    case 15:
      result = 0x44497265646E6573;
      break;
    case 16:
      result = 0x63497265646E6573;
      break;
    case 17:
      result = 0xD000000000000011;
      break;
    case 18:
      result = 0x4977656976657270;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0xD000000000000018;
      break;
    case 21:
      result = 0x736D6574496C7275;
      break;
    case 22:
      result = 0x736D657469;
      break;
    case 23:
      result = 0x61506D6F74737563;
      break;
    default:
      return result;
  }

  return result;
}