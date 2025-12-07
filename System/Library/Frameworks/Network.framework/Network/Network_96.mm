uint64_t sub_18209F5E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_18209F60C, 0, 0);
}

uint64_t sub_18209F60C()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_18209F728;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000021, 0x8000000182BDD080, sub_1820AAE18, v4, v7);
}

uint64_t sub_18209F728()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18209F864, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_18209F864()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_18209F8C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  *(v6 + 80) = a6;
  *(v6 + 40) = a4;
  *(v6 + 48) = a5;
  *(v6 + 24) = a2;
  *(v6 + 32) = a3;
  *(v6 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_18209F8F4, 0, 0);
}

uint64_t sub_18209F8F4()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v9 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v9;
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
  *(v4 + 48) = v1;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_18209F214;
  v6 = *(v0 + 16);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000021, 0x8000000182BDD080, sub_1820AADD8, v4, v7);
}

void sub_18209FA10(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v30[1] = a3;
    v31 = a5;
    v32 = a6;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v17 = qword_1EA8433A8;
    v18 = *(v16 + 24);
    os_unfair_lock_lock((v18 + 96));
    v19 = *(v18 + 93);
    os_unfair_lock_unlock((v18 + 96));
    if ((v19 & 1) == 0)
    {
      NWConnection.start(queue:)(v17);
    }

    (*(v13 + 16))(v15, a1, v12);
    v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v21 = swift_allocObject();
    (*(v13 + 32))(v21 + v20, v15, v12);
    v23 = *(v16 + 16);
    v24 = v31;
    if (a4 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_182AD2138();
    }

    v26 = NWCreateDispatchDataFromNSData(v25, v22);

    v27 = *(v24 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1820AC68C;
    *(v28 + 24) = v21;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_236;
    v29 = _Block_copy(aBlock);

    nw_connection_send(v23, v26, v27, v32 & 1, v29);

    _Block_release(v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_18209FCD0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v30[1] = a3;
    v31 = a5;
    v32 = a6;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v17 = qword_1EA8433A8;
    v18 = *(v16 + 24);
    os_unfair_lock_lock((v18 + 96));
    v19 = *(v18 + 93);
    os_unfair_lock_unlock((v18 + 96));
    if ((v19 & 1) == 0)
    {
      NWConnection.start(queue:)(v17);
    }

    (*(v13 + 16))(v15, a1, v12);
    v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v21 = swift_allocObject();
    (*(v13 + 32))(v21 + v20, v15, v12);
    v23 = *(v16 + 16);
    v24 = v31;
    if (a4 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_182AD2138();
    }

    v26 = NWCreateDispatchDataFromNSData(v25, v22);

    v27 = *(v24 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1820AC68C;
    *(v28 + 24) = v21;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_206;
    v29 = _Block_copy(aBlock);

    nw_connection_send(v23, v26, v27, v32 & 1, v29);

    _Block_release(v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_18209FF90(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v30[1] = a3;
    v31 = a5;
    v32 = a6;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v17 = qword_1EA8433A8;
    v18 = *(v16 + 24);
    os_unfair_lock_lock((v18 + 96));
    v19 = *(v18 + 93);
    os_unfair_lock_unlock((v18 + 96));
    if ((v19 & 1) == 0)
    {
      NWConnection.start(queue:)(v17);
    }

    (*(v13 + 16))(v15, a1, v12);
    v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v21 = swift_allocObject();
    (*(v13 + 32))(v21 + v20, v15, v12);
    v23 = *(v16 + 16);
    v24 = v31;
    if (a4 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_182AD2138();
    }

    v26 = NWCreateDispatchDataFromNSData(v25, v22);

    v27 = *(v24 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1820AC68C;
    *(v28 + 24) = v21;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_176;
    v29 = _Block_copy(aBlock);

    nw_connection_send(v23, v26, v27, v32 & 1, v29);

    _Block_release(v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_1820A0250(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v30[1] = a3;
    v31 = a5;
    v32 = a6;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v17 = qword_1EA8433A8;
    v18 = *(v16 + 24);
    os_unfair_lock_lock((v18 + 96));
    v19 = *(v18 + 93);
    os_unfair_lock_unlock((v18 + 96));
    if ((v19 & 1) == 0)
    {
      NWConnection.start(queue:)(v17);
    }

    (*(v13 + 16))(v15, a1, v12);
    v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v21 = swift_allocObject();
    (*(v13 + 32))(v21 + v20, v15, v12);
    v23 = *(v16 + 16);
    v24 = v31;
    if (a4 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_182AD2138();
    }

    v26 = NWCreateDispatchDataFromNSData(v25, v22);

    v27 = *(v24 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1820AC68C;
    *(v28 + 24) = v21;
    aBlock[4] = sub_181FE5014;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_103;
    v29 = _Block_copy(aBlock);

    nw_connection_send(v23, v26, v27, v32 & 1, v29);

    _Block_release(v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_1820A0510(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, int a6)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839790, &qword_182AE5F68);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v30 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v30[1] = a3;
    v31 = a5;
    v32 = a6;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v17 = qword_1EA8433A8;
    v18 = *(v16 + 24);
    os_unfair_lock_lock((v18 + 96));
    v19 = *(v18 + 93);
    os_unfair_lock_unlock((v18 + 96));
    if ((v19 & 1) == 0)
    {
      NWConnection.start(queue:)(v17);
    }

    (*(v13 + 16))(v15, a1, v12);
    v20 = (*(v13 + 80) + 16) & ~*(v13 + 80);
    v21 = swift_allocObject();
    (*(v13 + 32))(v21 + v20, v15, v12);
    v23 = *(v16 + 16);
    v24 = v31;
    if (a4 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_182AD2138();
    }

    v26 = NWCreateDispatchDataFromNSData(v25, v22);

    v27 = *(v24 + 16);
    v28 = swift_allocObject();
    *(v28 + 16) = sub_1820AADF0;
    *(v28 + 24) = v21;
    aBlock[4] = sub_181BEBE54;
    aBlock[5] = v28;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181AA4EBC;
    aBlock[3] = &block_descriptor_90;
    v29 = _Block_copy(aBlock);

    nw_connection_send(v23, v26, v27, v32 & 1, v29);

    _Block_release(v29);
  }

  else
  {
    __break(1u);
  }
}

void sub_1820A07D0(uint64_t a1)
{
  v2 = *(a1 + 24);
  os_unfair_lock_lock((v2 + 92));
  v3 = sub_1820A0918((v2 + 16));
  os_unfair_lock_unlock((v2 + 92));
  if ((v3 & 1) == 0)
  {
    v4 = *(a1 + 16);
    if (v4)
    {
      v5 = *(v4 + 16);

      nw_connection_cancel(v5);
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_1820A085C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[3];
  v9 = *(*v4 + 80);
  v10 = *(v5 + 88);
  type metadata accessor for Connection7.LockedState(0, v9, v10, a4);
  sub_181F50DA0(sub_1820AB8A0, &v8, v6);
  if ((v11 & 1) == 0)
  {
    v7 = v4[2];
    if (v7)
    {
      nw_connection_cancel(*(v7 + 16));
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_1820A0918(uint64_t *a1)
{
  if (*a1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD3608();
  }

  *a1 = 0;
  if (a1[1])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD3608();
  }

  a1[1] = 0;
  if (a1[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD3608();
  }

  a1[2] = 0;
  if (a1[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD3608();
  }

  a1[3] = 0;
  return *(a1 + 72);
}

void *sub_1820A0A54@<X0>(void *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = result;
  if (*result)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD3608();
  }

  *v2 = 0;
  if (v2[1])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD3608();
  }

  v2[1] = 0;
  if (v2[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD3608();
  }

  v2[2] = 0;
  if (v2[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD3608();
  }

  v2[3] = 0;
  *a2 = *(v2 + 72);
  return result;
}

uint64_t Connection7.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1820A085C(a1, a2, a3, a4);

  return v4;
}

uint64_t Connection7.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Connection7.deinit(a1, a2, a3, a4);

  return swift_deallocClassInstance();
}

uint64_t Connection7.hashValue.getter()
{
  v1 = *v0;
  v5 = v0;
  sub_182AD44E8();
  WitnessTable = swift_getWitnessTable();
  ConnectionProtocol.hash(into:)(&v4, v1, WitnessTable);
  return sub_182AD4558();
}

uint64_t sub_1820A0C94@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  WitnessTable = swift_getWitnessTable();
  result = ConnectionProtocol.id.getter(a1, WitnessTable);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_1820A0D10(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return ConnectionProtocol.hash(into:)(a1, a2, WitnessTable);
}

uint64_t sub_1820A0D70(uint64_t a1, uint64_t a2)
{
  sub_182AD44E8();
  WitnessTable = swift_getWitnessTable();
  ConnectionProtocol.hash(into:)(v5, a2, WitnessTable);
  return sub_182AD4558();
}

void Connection7.prependProtocols<A, B>(_:)(void (*TupleTypeMetadata)(char *, __n128), uint64_t a2, unint64_t a3, void (*a4)(char *, __n128), uint64_t a5, uint64_t a6, uint64_t a7)
{
  v65 = a6;
  v66 = a7;
  v67 = TupleTypeMetadata;
  v68 = a2;
  v61 = *v7;
  v11 = a4;
  if (!a3)
  {
    goto LABEL_8;
  }

  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v13 = (v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v13 = a4;
  v14 = a5 & 0xFFFFFFFFFFFFFFFELL;
  if (a3 >= 6 && v13 - v14 + 8 >= 0x20)
  {
    v15 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    v55 = v13 + 3;
    v56 = (v14 + 16);
    v57 = a3 & 0xFFFFFFFFFFFFFFFCLL;
    do
    {
      v58 = *v56;
      *(v55 - 1) = *(v56 - 1);
      *v55 = v58;
      v55 += 2;
      v56 += 2;
      v57 -= 4;
    }

    while (v57);
    if (v15 == a3)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v15 = 0;
  }

  v16 = a3 - v15;
  v17 = 8 * v15;
  v18 = &v13[v15 + 1];
  v19 = (v14 + v17);
  do
  {
    v20 = *v19++;
    *v18++ = v20;
    --v16;
  }

  while (v16);
LABEL_7:
  TupleTypeMetadata = swift_getTupleTypeMetadata();
  v11 = TupleTypeMetadata;
LABEL_8:
  v21 = *(v11 - 1);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = v59 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59[1] = v59;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v27 = v59 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = a4;
  v64 = a5;
  if (a3)
  {
    v28 = (v11 + 48);
    v29 = a3;
    v30 = v27;
    do
    {
      v31 = *v28;
      v28 += 4;
      *v30++ = &v23[v31];
      --v29;
    }

    while (v29);
    v32 = *(v11 + 8);
  }

  else
  {
    v32 = 0;
  }

  v62 = a3;
  v67(&v23[v32], v25);
  v33 = sub_182185B3C(v23, v11);
  (*(v21 + 8))(v23, v11);
  v60 = v7;
  if (v7[2])
  {
    v34 = v33[2];
    v35 = OBJC_IVAR____TtC7Network13_NWConnection_parameters;
    v69 = v7[2];

    if (!v34)
    {
LABEL_18:

      v42 = v63;
      v43 = v65;
      type metadata accessor for Connection7(0, v63, v65, v44);

      v46 = v62;
      v47 = v64;
      v48 = v66;
      v50 = sub_18209A594(v45, v67, v68, v62, v64, v66, v49);
      v51 = v60[3];
      MEMORY[0x1EEE9AC00](v50);
      v52 = *(v61 + 80);
      v53 = *(v61 + 88);
      v59[-8] = v46;
      v59[-7] = v52;
      v59[-6] = v42;
      v59[-5] = v47;
      v59[-4] = v53;
      v59[-3] = v43;
      v59[-2] = v48;
      type metadata accessor for Connection7.LockedState(0, v52, v53, v54);
      sub_181F50DA0(sub_1820AA020, &v59[-10], v51);

      return;
    }

    v36 = 0;
    v37 = (v33 + 4);
    while (v36 < v33[2])
    {
      sub_181F75240(v37, v70);
      ++v36;
      v38 = v71;
      v39 = v72;
      __swift_project_boxed_opaque_existential_1(v70, v71);
      v40 = *(*(v69 + v35) + 16);
      os_unfair_lock_lock((v40 + 24));
      v41 = *(v40 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v40 + 24));
      (*(v39 + 56))(v41, v38, v39);
      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1(v70);
      v37 += 40;
      if (v34 == v36)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  __break(1u);
}

uint64_t sub_1820A120C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820A1230, 0, 0);
}

uint64_t sub_1820A1230()
{
  v1 = *(v0 + 40);
  v7 = *(v0 + 24);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *(v2 + 16) = v7;
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 56) = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40, &qword_182AFC160);
  *v3 = v0;
  v3[1] = sub_1820A1348;
  v5 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v5, 0, 0, 0xD00000000000001FLL, 0x8000000182BDD0B0, sub_1820AB0A4, v2, v4);
}

uint64_t sub_1820A1348()
{
  v2 = *v1;
  *(v2 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1820AC698, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1820A1484(uint64_t a1, uint64_t a2, uint64_t a3, uint32_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0, &qword_182AFE0F0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = a3;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v13 = qword_1EA8433A8;
    v14 = *(v12 + 24);
    os_unfair_lock_lock((v14 + 96));
    v15 = *(v14 + 93);
    os_unfair_lock_unlock((v14 + 96));
    if ((v15 & 1) == 0)
    {
      NWConnection.start(queue:)(v13);
    }

    (*(v9 + 16))(v11, a1, v8);
    v16 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v17 = swift_allocObject();
    (*(v9 + 32))(v17 + v16, v11, v8);
    v18 = *(v12 + 16);
    v19 = swift_allocObject();
    *(v19 + 16) = sub_1820AB0B0;
    *(v19 + 24) = v17;
    aBlock[4] = sub_181D47AA0;
    aBlock[5] = v19;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_120;
    v20 = _Block_copy(aBlock);

    nw_connection_receive(v18, v22, a4, v20);
    _Block_release(v20);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1820A16F0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820A1710, 0, 0);
}

uint64_t sub_1820A1710()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE30, &qword_182AFC0F0);
  *v1 = v0;
  v1[1] = sub_1820A17F4;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000010, 0x8000000182BDD060, sub_1820AB614, v4, v2);
}

uint64_t sub_1820A17F4()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1820AC688, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1820A1928(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820A1948, 0, 0);
}

uint64_t sub_1820A1948()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A118, &qword_182AF3688);
  *v1 = v0;
  v1[1] = sub_1820A17F4;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000010, 0x8000000182BDD060, sub_1820AB350, v4, v2);
}

uint64_t sub_1820A1A2C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820A1A4C, 0, 0);
}

uint64_t sub_1820A1A4C()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40, &qword_182AFC160);
  *v1 = v0;
  v1[1] = sub_1820A17F4;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000010, 0x8000000182BDD060, sub_1820AB190, v4, v2);
}

uint64_t sub_1820A1B30(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820A1B50, 0, 0);
}

uint64_t sub_1820A1B50()
{
  v1 = swift_task_alloc();
  v0[4] = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A120, &qword_182AF3778);
  *v1 = v0;
  v1[1] = sub_1820A1C34;
  v3 = v0[2];
  v4 = v0[3];

  return MEMORY[0x1EEE6DE38](v3, 0, 0, 0xD000000000000010, 0x8000000182BDD060, sub_1820AAC50, v4, v2);
}

uint64_t sub_1820A1C34()
{
  v2 = *v1;
  *(v2 + 40) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_18208DFC4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void sub_1820A1D68(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A130, &qword_182AFE620);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 16);
  if (v8)
  {
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA8433A8;
    v10 = *(v8 + 24);
    os_unfair_lock_lock((v10 + 96));
    v11 = *(v10 + 93);
    os_unfair_lock_unlock((v10 + 96));
    if ((v11 & 1) == 0)
    {
      NWConnection.start(queue:)(v9);
    }

    (*(v5 + 16))(v7, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v7, v4);
    v14 = *(v8 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1820AB61C;
    *(v15 + 24) = v13;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_218;
    v16 = _Block_copy(aBlock);

    nw_connection_receive_message(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_1820A1FC0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A128, &qword_182AFE230);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 16);
  if (v8)
  {
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA8433A8;
    v10 = *(v8 + 24);
    os_unfair_lock_lock((v10 + 96));
    v11 = *(v10 + 93);
    os_unfair_lock_unlock((v10 + 96));
    if ((v11 & 1) == 0)
    {
      NWConnection.start(queue:)(v9);
    }

    (*(v5 + 16))(v7, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v7, v4);
    v14 = *(v8 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1820AB358;
    *(v15 + 24) = v13;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_188;
    v16 = _Block_copy(aBlock);

    nw_connection_receive_message(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_1820A2218(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0, &qword_182AFE0F0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 16);
  if (v8)
  {
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA8433A8;
    v10 = *(v8 + 24);
    os_unfair_lock_lock((v10 + 96));
    v11 = *(v10 + 93);
    os_unfair_lock_unlock((v10 + 96));
    if ((v11 & 1) == 0)
    {
      NWConnection.start(queue:)(v9);
    }

    (*(v5 + 16))(v7, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v7, v4);
    v14 = *(v8 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1820AB198;
    *(v15 + 24) = v13;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_138;
    v16 = _Block_copy(aBlock);

    nw_connection_receive_message(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

void sub_1820A2470(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF80, &qword_182AF39D0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - v6;
  v8 = *(a2 + 16);
  if (v8)
  {
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v9 = qword_1EA8433A8;
    v10 = *(v8 + 24);
    os_unfair_lock_lock((v10 + 96));
    v11 = *(v10 + 93);
    os_unfair_lock_unlock((v10 + 96));
    if ((v11 & 1) == 0)
    {
      NWConnection.start(queue:)(v9);
    }

    (*(v5 + 16))(v7, a1, v4);
    v12 = (*(v5 + 80) + 16) & ~*(v5 + 80);
    v13 = swift_allocObject();
    (*(v5 + 32))(v13 + v12, v7, v4);
    v14 = *(v8 + 16);
    v15 = swift_allocObject();
    *(v15 + 16) = sub_1820AAC58;
    *(v15 + 24) = v13;
    aBlock[4] = sub_181D47AA0;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_18;
    v16 = _Block_copy(aBlock);

    nw_connection_receive_message(v14, v16);
    _Block_release(v16);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1820A26C8(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if ((~a5 & 0xFF00000000) != 0)
  {
    v9 = HIDWORD(a5);
    v10 = a5;
    sub_181F4B3B8();
    v11 = swift_allocError();
    *v12 = v10;
    *(v12 + 4) = v9;
LABEL_7:
    aBlock = v11;
    goto LABEL_16;
  }

  if (!a3)
  {
    sub_181F4B3B8();
    v11 = swift_allocError();
    *v13 = 22;
    *(v13 + 4) = 0;
    goto LABEL_7;
  }

  if (a2 >> 60 == 15)
  {
    swift_retain_n();
  }

  else
  {
    v18 = qword_1EA837040;
    swift_retain_n();
    if (v18 != -1)
    {
      swift_once();
    }

    v19 = *(a3 + 16);
    v20 = nw_content_context_copy_protocol_metadata(v19, *(off_1EA838800 + 4));
    if (v20)
    {
      v21 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(v20);
      swift_unknownObjectRelease();
      if (v21)
      {
        type metadata accessor for NWProtocolWebSocket.Metadata();
        v22 = swift_dynamicCastClass();
        if (v22)
        {
          v34 = *(v22 + 24);
          v23 = v22;
          swift_beginAccess();
          v31 = *(v23 + 42);
          v32 = *(a3 + 64);
          v33 = *(v23 + 40);
          v24 = swift_allocObject();
          *(v24 + 16) = MEMORY[0x1E69E7CC0];
          v25 = (v24 + 16);
          v40 = a7;
          v41 = v24;
          aBlock = MEMORY[0x1E69E9820];
          v37 = 1107296256;
          v38 = sub_181F25CD0;
          v39 = a8;
          v26 = _Block_copy(&aBlock);
          sub_181F49B44(a1, a2);

          nw_content_context_foreach_protocol_metadata(v19, v26);

          _Block_release(v26);

          swift_beginAccess();
          v27 = *v25;

          aBlock = a1;
          v37 = a2;
          LOBYTE(v38) = v34;
          BYTE4(v38) = v31;
          WORD1(v38) = v33;
          BYTE5(v38) = a4 & 1;
          BYTE6(v38) = v32;
          v39 = v27;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0, &qword_182AFE0F0);
          sub_182AD34C8();
        }
      }
    }
  }

  sub_181F4B3B8();
  v29 = swift_allocError();
  *v30 = 22;
  *(v30 + 4) = 0;
  swift_willThrow();

  aBlock = v29;
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AFC0, &qword_182AFE0F0);
  return sub_182AD34B8();
}

uint64_t sub_1820A2A30(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unint64_t a5)
{
  if ((~a5 & 0xFF00000000) != 0)
  {
    v9 = HIDWORD(a5);
    v10 = a5;
    sub_181F4B3B8();
    swift_allocError();
    *v11 = v10;
    *(v11 + 4) = v9;
  }

  else
  {
    if (a3)
    {

      sub_182272170(&v15, &v14, a1, a2, a3, a4 & 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF80, &qword_182AF39D0);
      sub_182AD34C8();
    }

    sub_181F4B3B8();
    swift_allocError();
    *v12 = 22;
    *(v12 + 4) = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF80, &qword_182AF39D0);
  return sub_182AD34B8();
}

uint64_t Connection7<>.send(_:endOfStream:options:metadata:)(uint64_t a1, uint64_t a2, char a3, _BYTE *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 56) = a7;
  *(v8 + 64) = v7;
  *(v8 + 40) = a5;
  *(v8 + 48) = a6;
  *(v8 + 120) = a3;
  *(v8 + 24) = a1;
  *(v8 + 32) = a2;
  *(v8 + 72) = *v7;
  *(v8 + 80) = *(*v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *(v8 + 88) = AssociatedTypeWitness;
  *(v8 + 96) = *(AssociatedTypeWitness - 8);
  *(v8 + 104) = swift_task_alloc();
  *(v8 + 121) = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1820A2CC0, 0, 0);
}

uint64_t sub_1820A2CC0()
{
  if (*(v0 + 121))
  {
    v1 = swift_task_alloc();
    *(v0 + 112) = v1;
    *v1 = v0;
    v1[1] = sub_1820A2EAC;
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v4 = *(v0 + 120);
    v6 = *(v0 + 24);
    v5 = *(v0 + 32);

    return sub_18209E9EC(v6, v5, 0, v2, v3, 1, v4);
  }

  else
  {
    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 80);
    v11 = *(v0 + 72);
    v12 = *(v0 + 56);
    v13 = *(v0 + 40);
    v14 = *(v0 + 120);
    v20 = *(v0 + 32);
    v21 = *(v0 + 88);
    v19 = *(v0 + 24);
    *(v0 + 16) = *(v0 + 64);
    v15 = v13();
    (*(v12 + 40))(v14, v15, v10, v12);

    v16 = *(v12 + 24);
    WitnessTable = swift_getWitnessTable();
    v16(v0 + 16, v19, v20, v8, v11, WitnessTable, v10, v12);
    (*(v9 + 8))(v8, v21);

    v18 = *(v0 + 8);

    return v18();
  }
}

uint64_t sub_1820A2EAC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t Connection7<>.receive(atLeast:atMost:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = swift_getAssociatedTypeWitness();
  v5[8] = swift_getTupleTypeMetadata2();
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820A30B0, 0, 0);
}

uint64_t sub_1820A30B0()
{
  v2 = v0[5];
  v1 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  v5 = swift_task_alloc();
  v0[10] = v5;
  v5[2] = v2;
  v5[3] = v1;
  v5[4] = v4;
  v5[5] = v3;
  v6 = swift_task_alloc();
  v0[11] = v6;
  *(v6 + 16) = v2;
  *(v6 + 24) = v1;
  v7 = swift_task_alloc();
  v0[12] = v7;
  *v7 = v0;
  v7[1] = sub_1820A31C4;
  v9 = v0[8];
  v8 = v0[9];

  return MEMORY[0x1EEE6DE18](v8, &unk_182AF3618, v5, sub_1820AA0EC, v6, 0, 0, v9);
}

uint64_t sub_1820A31C4()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_1820A339C;
  }

  else
  {

    v2 = sub_1820A32E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A32E8()
{
  v1 = v0[9];
  v2 = *v1;
  v3 = *(v1 + 1);
  (*(*(v0[7] - 8) + 32))(v0[2], &v1[*(v0[8] + 48)]);

  v4 = v0[1];

  return v4(v2, v3);
}

uint64_t sub_1820A339C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820A3414(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v5[7] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1820A3464, 0, 0);
}

uint64_t sub_1820A3464()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);
  v8 = *(v0 + 24);
  v3 = swift_task_alloc();
  *(v0 + 64) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v8;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  *v4 = v0;
  v4[1] = sub_181FC1030;
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000018, 0x8000000182BDD0D0, sub_1820AB76C, v3, TupleTypeMetadata2);
}

void sub_1820A35BC(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *a2;
  v28 = a5;
  v10 = *(v9 + 80);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v11 = sub_182AD34D8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v25 - v13;
  v15 = a2[2];
  if (v15)
  {
    v26 = a3;
    v27 = a4;
    if (qword_1EA837208 != -1)
    {
      swift_once();
    }

    v16 = qword_1EA8433A8;
    v17 = *(v15 + 24);
    os_unfair_lock_lock((v17 + 96));
    v18 = *(v17 + 93);
    os_unfair_lock_unlock((v17 + 96));
    if ((v18 & 1) == 0)
    {
      NWConnection.start(queue:)(v16);
    }

    (*(v12 + 16))(v14, a1, v11);
    v19 = (*(v12 + 80) + 32) & ~*(v12 + 80);
    v20 = swift_allocObject();
    v21 = v28;
    *(v20 + 16) = v10;
    *(v20 + 24) = v21;
    (*(v12 + 32))(v20 + v19, v14, v11);
    v22 = *(v15 + 16);
    v23 = swift_allocObject();
    *(v23 + 16) = sub_1820AB778;
    *(v23 + 24) = v20;
    aBlock[4] = sub_181FE4FD0;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181D478F8;
    aBlock[3] = &block_descriptor_248;
    v24 = _Block_copy(aBlock);

    nw_connection_receive(v22, v26, v27, v24);
    _Block_release(v24);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1820A38A4(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unsigned int *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v47 = a4;
  v46 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v17 = v39 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v21 = v39 - v20;
  if (*(a5 + 4) == 255)
  {
    if (a2 >> 60 == 15)
    {
      if (a3)
      {
        v44 = v19;
        v22 = swift_allocObject();
        *(v22 + 16) = MEMORY[0x1E69E7CC0];
        v23 = (v22 + 16);
        v43 = *(a3 + 16);
        v46 = TupleTypeMetadata2;
        v52 = sub_181FE5010;
        v53 = v22;
        aBlock = MEMORY[0x1E69E9820];
        v49 = 1107296256;
        v50 = sub_181F25CD0;
        v51 = &block_descriptor_253;
        v24 = _Block_copy(&aBlock);
        v45 = a6;

        nw_content_context_foreach_protocol_metadata(v43, v24);
        _Block_release(v24);
        swift_beginAccess();
        v25 = *v23;

        (*(a8 + 40))(v47 & 1, v25, a7, a8);

        v26 = *(v46 + 48);
        *v17 = xmmword_182AE7580;
        (*(v44 + 32))(&v17[v26], v21, AssociatedTypeWitness);
        __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
        sub_182AD34D8();
        sub_182AD34C8();
      }
    }

    else if (a3)
    {
      v44 = v19;
      v31 = swift_allocObject();
      v43 = v31;
      v45 = a6;
      v31[2].isa = MEMORY[0x1E69E7CC0];
      v40 = *(a3 + 16);
      v41 = v31 + 2;
      v52 = sub_181FE5010;
      v53 = v31;
      aBlock = MEMORY[0x1E69E9820];
      v49 = 1107296256;
      v50 = sub_181F25CD0;
      v51 = &block_descriptor_258;
      v32 = _Block_copy(&aBlock);
      v42 = a3;
      v33 = v32;
      v39[1] = v53;
      v34 = v46;
      sub_181F49B44(v46, a2);
      sub_181F49B44(v34, a2);

      nw_content_context_foreach_protocol_metadata(v40, v33);
      _Block_release(v33);
      v35 = v41;
      swift_beginAccess();
      isa = v35->isa;

      (*(a8 + 40))(v47 & 1, isa, a7, a8);

      v37 = *(TupleTypeMetadata2 + 48);
      *v17 = v34;
      *(v17 + 1) = a2;
      (*(v44 + 32))(&v17[v37], v21, AssociatedTypeWitness);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
      sub_182AD34D8();
      sub_182AD34C8();
      sub_181D9D680(v34, a2);
    }

    sub_181F4B3B8();
    v29 = swift_allocError();
    *v38 = 54;
    *(v38 + 4) = 0;
  }

  else
  {
    v28 = *a5 | (*(a5 + 4) << 32);
    sub_181F4B3B8();
    v29 = swift_allocError();
    *v30 = v28;
    *(v30 + 4) = BYTE4(v28);
  }

  aBlock = v29;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  sub_182AD34D8();
  return sub_182AD34B8();
}

uint64_t Connection7<>.receive(exactly:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v9 = *(*v3 + 80);
  *(v4 + 16) = v3;
  v13 = (*(a3 + 32) + **(a3 + 32));
  v10 = swift_task_alloc();
  *(v4 + 24) = v10;
  WitnessTable = swift_getWitnessTable();
  *v10 = v4;
  v10[1] = sub_1820A3FE4;

  return v13(a1, v4 + 16, a2, a2, v8, WitnessTable, v9, a3);
}

uint64_t sub_1820A3FE4(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(v6 + 32) = v2;

  if (v2)
  {

    return MEMORY[0x1EEE6DFA0](sub_181FDF540, 0, 0);
  }

  else
  {
    v7 = *(v6 + 8);

    return v7(a1, a2);
  }
}

uint64_t Connection7.send<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1820A415C, 0, 0);
}

{
  v5[14] = a4;
  v5[15] = v4;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1820A4834, 0, 0);
}

uint64_t sub_1820A415C()
{
  v1 = (*(v0 + 104))();
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 128) = inited;
  v3 = nw_content_context_create("sendContext");
  *(inited + 16) = v3;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v4 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v4, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v3, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v3, 0);
  v5 = swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v1 >> 62)
  {
    v5 = sub_182AD3EB8();
    v13 = v5;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = MEMORY[0x1865DA790](i, v1);
      nw_content_context_set_metadata_for_protocol(v3, *(v15 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v16 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v3, *(*(v1 + v16) + 16));
      v16 += 8;
      --v13;
    }

    while (v13);
  }

LABEL_10:

  v17 = *(v0 + 120);
  v19 = *(v0 + 88);
  v18 = *(v0 + 96);
  v20 = swift_task_alloc();
  *(v0 + 136) = v20;
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  *(v20 + 32) = v18;
  *(v20 + 40) = inited;
  *(v20 + 48) = 1;
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_1820A43A4;
  v9 = *(v0 + 120);
  v6 = &unk_182AF3638;
  v8 = sub_1820AC61C;
  v12 = MEMORY[0x1E69E7CA8] + 8;
  v7 = v20;
  v10 = 0;
  v11 = 0;

  return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1820A43A4()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1820A4538;
  }

  else
  {

    v2 = sub_1820A44C0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A44C0()
{
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820A4538()
{

  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Connection7.receive<>()(uint64_t a1)
{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1820A45D4, 0, 0);
}

{
  *(v2 + 40) = a1;
  *(v2 + 48) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1820A4BB8, 0, 0);
}

{
  *(v2 + 48) = a1;
  *(v2 + 56) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1820A8108, 0, 0);
}

{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1820A92B4, 0, 0);
}

uint64_t sub_1820A45D4()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE30, &qword_182AFC0F0);
  *v1 = v0;
  v1[1] = sub_1820A46BC;
  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182AF3650, v3, sub_1820AC61C, v3, 0, 0, v2);
}

uint64_t sub_1820A46BC()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1820A47F4;
  }

  else
  {
    v2 = sub_1820A47D0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A47D0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  **(v0 + 40) = *(v0 + 32);
  return (*(v0 + 8))(v1, v2);
}

uint64_t sub_1820A4834()
{
  v1 = (*(v0 + 104))();
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 128) = inited;
  v3 = nw_content_context_create("sendContext");
  *(inited + 16) = v3;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v4 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v4, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v3, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v3, 0);
  v5 = swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v1 >> 62)
  {
    v5 = sub_182AD3EB8();
    v13 = v5;
    if (!v5)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v13 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_10;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
  }

  if ((v1 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = MEMORY[0x1865DA790](i, v1);
      nw_content_context_set_metadata_for_protocol(v3, *(v15 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v16 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v3, *(*(v1 + v16) + 16));
      v16 += 8;
      --v13;
    }

    while (v13);
  }

LABEL_10:

  v17 = *(v0 + 120);
  v19 = *(v0 + 88);
  v18 = *(v0 + 96);
  v20 = swift_task_alloc();
  *(v0 + 136) = v20;
  *(v20 + 16) = v17;
  *(v20 + 24) = v19;
  *(v20 + 32) = v18;
  *(v20 + 40) = inited;
  *(v20 + 48) = 1;
  v5 = swift_task_alloc();
  *(v0 + 144) = v5;
  *v5 = v0;
  v5[1] = sub_1820A4A7C;
  v9 = *(v0 + 120);
  v6 = &unk_182AF3668;
  v8 = sub_1820AC61C;
  v12 = MEMORY[0x1E69E7CA8] + 8;
  v7 = v20;
  v10 = 0;
  v11 = 0;

  return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1820A4A7C()
{
  *(*v1 + 152) = v0;

  if (v0)
  {
    v2 = sub_1820AC624;
  }

  else
  {

    v2 = sub_1820AC628;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A4BB8()
{
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A118, &qword_182AF3688);
  *v1 = v0;
  v1[1] = sub_1820A4CA0;
  v3 = *(v0 + 48);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182AF3680, v3, sub_1820AC61C, v3, 0, 0, v2);
}

uint64_t sub_1820A4CA0()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1820AC630;
  }

  else
  {
    v2 = sub_1820AC638;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t Connection7.send<>(_:options:metadata:)(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 120) = a5;
  *(v6 + 128) = v5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a4;
  *(v6 + 96) = a1;
  *(v6 + 81) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1820A4DE4, 0, 0);
}

{
  *(v6 + 120) = a5;
  *(v6 + 128) = v5;
  *(v6 + 104) = a2;
  *(v6 + 112) = a4;
  *(v6 + 96) = a1;
  *(v6 + 81) = *a3;
  return MEMORY[0x1EEE6DFA0](sub_1820A56A4, 0, 0);
}

uint64_t sub_1820A4DE4()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 96);
  v3 = *(v0 + 104);

  v4 = sub_181F76154(v2, v3);
  v6 = v5;
  *(v0 + 136) = v4;
  *(v0 + 144) = v5;
  if (v1)
  {
    v7 = *(v0 + 112);
    type metadata accessor for NWProtocolWebSocket.Metadata();
    v8 = swift_allocObject();
    *(v0 + 152) = v8;
    *(v8 + 24) = 1;
    *(v8 + 40) = 4;
    *(v8 + 42) = 0;
    *(v8 + 32) = 0;
    *(v8 + 16) = nw_ws_create_metadata(nw_ws_opcode_text);
    *(v0 + 88) = v7();

    MEMORY[0x1865D9F10](v9);
    if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    v10 = *(v0 + 88);
    type metadata accessor for NWConnection.ContentContext();
    inited = swift_initStackObject();
    *(v0 + 160) = inited;
    v12 = nw_content_context_create("sendContext");
    *(inited + 16) = v12;
    *(inited + 24) = 0x746E6F43646E6573;
    *(inited + 32) = 0xEB00000000747865;
    *(inited + 40) = 0;
    v13 = swift_unknownObjectRetain();
    nw_content_context_set_expiration_milliseconds(v13, 0);
    *(inited + 48) = 0x3FE0000000000000;
    nw_content_context_set_relative_priority(v12, 0.5);
    *(inited + 64) = 0;
    nw_content_context_set_is_final(v12, 0);
    v14 = swift_unknownObjectRelease();
    *(inited + 56) = 0;
    if (v10 >> 62)
    {
      v14 = sub_182AD3EB8();
      v22 = v14;
      if (!v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v22 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v22)
      {
        goto LABEL_16;
      }
    }

    if (v22 < 1)
    {
      __break(1u);
      return MEMORY[0x1EEE6DE18](v14, v15, v16, v17, v18, v19, v20, v21);
    }

    if ((v10 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v22; ++i)
      {
        v24 = MEMORY[0x1865DA790](i, v10);
        nw_content_context_set_metadata_for_protocol(v12, *(v24 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v28 = 32;
      do
      {
        nw_content_context_set_metadata_for_protocol(v12, *(*(v10 + v28) + 16));
        v28 += 8;
        --v22;
      }

      while (v22);
    }

LABEL_16:

    v29 = *(v0 + 128);
    v30 = swift_task_alloc();
    *(v0 + 168) = v30;
    *(v30 + 16) = v29;
    *(v30 + 24) = v4;
    *(v30 + 32) = v6;
    *(v30 + 40) = inited;
    *(v30 + 48) = 1;
    v14 = swift_task_alloc();
    *(v0 + 176) = v14;
    *v14 = v0;
    v14[1] = sub_1820A517C;
    v18 = *(v0 + 128);
    v15 = &unk_182AF36A0;
    v17 = sub_1820AC61C;
    v21 = MEMORY[0x1E69E7CA8] + 8;
    v16 = v30;
    v19 = 0;
    v20 = 0;

    return MEMORY[0x1EEE6DE18](v14, v15, v16, v17, v18, v19, v20, v21);
  }

  v25 = *(v0 + 128);
  (*(v0 + 112))();
  sub_1820A552C(v25, v4, v6);
  sub_181C1F2E4(v4, v6);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1820A517C()
{
  *(*v1 + 184) = v0;

  if (v0)
  {
    v2 = sub_1820A532C;
  }

  else
  {

    v2 = sub_1820A5298;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A5298()
{
  v2 = v0[17];
  v1 = v0[18];

  sub_181C1F2E4(v2, v1);
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v3 = v0[1];

  return v3();
}

uint64_t sub_1820A532C()
{
  v1 = v0[18];
  v2 = v0[17];

  sub_181C1F2E4(v2, v1);
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v3 = v0[1];

  return v3();
}

void sub_1820A53CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  if (qword_1EA837208 != -1)
  {
    a1 = swift_once();
  }

  v4 = *(v3 + 32);
  MEMORY[0x1EEE9AC00](a1);
  os_unfair_lock_lock((v4 + 24));
  sub_1820AAC34((v4 + 16));
  os_unfair_lock_unlock((v4 + 24));
  v5 = *(v3 + 16);
  if (v5)
  {
    v6 = WebSocket.Metadata.toContentContext()();
    v7 = *(v5 + 16);
    v8 = sub_182AD2138();
    v10 = NWCreateDispatchDataFromNSData(v8, v9);

    nw_connection_send_idempotent(v7, v10, *(v6 + 16), 1);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1820A552C(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (qword_1EA837208 != -1)
  {
    v12 = result;
    swift_once();
    result = v12;
    v3 = *(v12 + 16);
    if (v3)
    {
      goto LABEL_3;
    }

LABEL_9:
    __break(1u);
    return result;
  }

  v3 = *(result + 16);
  if (!v3)
  {
    goto LABEL_9;
  }

LABEL_3:
  v4 = qword_1EA8433A8;
  v5 = *(v3 + 24);
  os_unfair_lock_lock((v5 + 96));
  v6 = *(v5 + 93);
  os_unfair_lock_unlock((v5 + 96));
  if ((v6 & 1) == 0)
  {
    NWConnection.start(queue:)(v4);
  }

  v7 = WebSocket.Metadata.toContentContext()();
  v8 = *(v3 + 16);
  v9 = sub_182AD2138();
  v11 = NWCreateDispatchDataFromNSData(v9, v10);

  nw_connection_send_idempotent(v8, v11, *(v7 + 16), 1);
}

uint64_t sub_1820A56A4()
{
  if (*(v0 + 81))
  {
    v1 = *(v0 + 112);
    type metadata accessor for NWProtocolWebSocket.Metadata();
    v2 = swift_allocObject();
    *(v0 + 136) = v2;
    *(v2 + 24) = 2;
    *(v2 + 40) = 4;
    *(v2 + 42) = 0;
    *(v2 + 32) = 0;
    *(v2 + 16) = nw_ws_create_metadata(nw_ws_opcode_binary);
    *(v0 + 88) = v1();

    MEMORY[0x1865D9F10](v3);
    if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_182AD3408();
    }

    sub_182AD3448();
    v4 = *(v0 + 88);
    type metadata accessor for NWConnection.ContentContext();
    inited = swift_initStackObject();
    *(v0 + 144) = inited;
    v6 = nw_content_context_create("sendContext");
    *(inited + 16) = v6;
    *(inited + 24) = 0x746E6F43646E6573;
    *(inited + 32) = 0xEB00000000747865;
    *(inited + 40) = 0;
    v7 = swift_unknownObjectRetain();
    nw_content_context_set_expiration_milliseconds(v7, 0);
    *(inited + 48) = 0x3FE0000000000000;
    nw_content_context_set_relative_priority(v6, 0.5);
    *(inited + 64) = 0;
    nw_content_context_set_is_final(v6, 0);
    v8 = swift_unknownObjectRelease();
    *(inited + 56) = 0;
    if (v4 >> 62)
    {
      v8 = sub_182AD3EB8();
      v16 = v8;
      if (!v8)
      {
        goto LABEL_16;
      }
    }

    else
    {
      v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        goto LABEL_16;
      }
    }

    if (v16 < 1)
    {
      __break(1u);
      return MEMORY[0x1EEE6DE18](v8, v9, v10, v11, v12, v13, v14, v15);
    }

    if ((v4 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v16; ++i)
      {
        v18 = MEMORY[0x1865DA790](i, v4);
        nw_content_context_set_metadata_for_protocol(v6, *(v18 + 16));
        swift_unknownObjectRelease();
      }
    }

    else
    {
      v24 = 32;
      do
      {
        nw_content_context_set_metadata_for_protocol(v6, *(*(v4 + v24) + 16));
        v24 += 8;
        --v16;
      }

      while (v16);
    }

LABEL_16:

    v25 = *(v0 + 128);
    v27 = *(v0 + 96);
    v26 = *(v0 + 104);
    v28 = swift_task_alloc();
    *(v0 + 152) = v28;
    *(v28 + 16) = v25;
    *(v28 + 24) = v27;
    *(v28 + 32) = v26;
    *(v28 + 40) = inited;
    *(v28 + 48) = 1;
    v8 = swift_task_alloc();
    *(v0 + 160) = v8;
    *v8 = v0;
    v8[1] = sub_1820A5A08;
    v12 = *(v0 + 128);
    v9 = &unk_182AF36B0;
    v11 = sub_1820AC61C;
    v15 = MEMORY[0x1E69E7CA8] + 8;
    v10 = v28;
    v13 = 0;
    v14 = 0;

    return MEMORY[0x1EEE6DE18](v8, v9, v10, v11, v12, v13, v14, v15);
  }

  v19 = *(v0 + 128);
  v20 = *(v0 + 104);
  v21 = *(v0 + 96);
  (*(v0 + 112))();
  sub_1820A552C(v19, v21, v20);

  v22 = *(v0 + 8);

  return v22();
}

uint64_t sub_1820A5A08()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1820AC620;
  }

  else
  {

    v2 = sub_1820AC62C;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t Connection7.startSend<>(_:metadata:handler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1820A5B50, 0, 0);
}

{
  v7[5] = a6;
  v7[6] = v6;
  v7[3] = a4;
  v7[4] = a5;
  v7[2] = a3;
  return MEMORY[0x1EEE6DFA0](sub_1820A691C, 0, 0);
}

uint64_t sub_1820A5B50()
{
  v1 = *(v0 + 64);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  v5 = *(v0 + 48);
  *(v4 + 16) = *(v0 + 32);
  *(v4 + 32) = v1;
  *(v4 + 40) = v3;
  *(v4 + 48) = v2;
  *(v4 + 56) = v5;
  v6 = swift_task_alloc();
  *(v0 + 80) = v6;
  *v6 = v0;
  v6[1] = sub_1820A5C58;
  v7 = *(v0 + 64);
  v8 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v6, &unk_182AF36C8, v4, sub_1820AC61C, v7, 0, 0, v8);
}

uint64_t sub_1820A5C58()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_1820A5D74;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A5D74()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820A5DD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[13] = a3;
  v8[14] = a4;
  v8[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820A5E04, 0, 0);
}

uint64_t sub_1820A5E04()
{
  *(v0 + 88) = (*(v0 + 96))();
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v1 = swift_allocObject();
  *(v1 + 24) = 1;
  *(v1 + 40) = 4;
  *(v1 + 42) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = nw_ws_create_metadata(nw_ws_opcode_text);
  MEMORY[0x1865D9F10]();
  if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v2 = *(v0 + 88);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 152) = inited;
  v4 = nw_content_context_create("WebSocket");
  *(inited + 16) = v4;
  *(inited + 24) = 0x656B636F53626557;
  *(inited + 32) = 0xE900000000000074;
  *(inited + 40) = 0;
  nw_content_context_set_expiration_milliseconds(v4, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v4, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v4, 0);
  *(inited + 56) = 0;
  if (v2 >> 62)
  {
    v5 = sub_182AD3EB8();
    v13 = v5;
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v13 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      goto LABEL_12;
    }
  }

  if (v13 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v13; ++i)
    {
      v15 = MEMORY[0x1865DA790](i, v2);
      nw_content_context_set_metadata_for_protocol(v4, *(v15 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v16 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v4, *(*(v2 + v16) + 16));
      v16 += 8;
      --v13;
    }

    while (v13);
  }

LABEL_12:

  v18 = *(v0 + 120);
  v17 = *(v0 + 128);
  v19 = *(v0 + 112);

  v20 = sub_181F76154(v18, v17);
  v22 = v21;
  *(v0 + 160) = v20;
  *(v0 + 168) = v21;
  v23 = swift_task_alloc();
  *(v0 + 176) = v23;
  *(v23 + 16) = v19;
  *(v23 + 24) = v20;
  *(v23 + 32) = v22;
  *(v23 + 40) = inited;
  *(v23 + 48) = 0;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_1820A60E4;
  v9 = *(v0 + 112);
  v6 = &unk_182AF3A28;
  v8 = sub_1820AC61C;
  v12 = MEMORY[0x1E69E7CA8] + 8;
  v7 = v23;
  v10 = 0;
  v11 = 0;

  return MEMORY[0x1EEE6DE18](v5, v6, v7, v8, v9, v10, v11, v12);
}

uint64_t sub_1820A60E4()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1820A6450;
  }

  else
  {

    v2 = sub_1820A6200;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A6200()
{
  v1 = v0[19];
  v2 = v0[17];
  v3 = v0[14];
  sub_181C1F2E4(v0[20], v0[21]);
  v4 = swift_task_alloc();
  v0[25] = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  v7 = (v2 + *v2);
  v5 = swift_task_alloc();
  v0[26] = v5;
  *v5 = v0;
  v5[1] = sub_1820A6334;

  return v7(&unk_182AF3A38, v4);
}

uint64_t sub_1820A6334()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1820A6540;
  }

  else
  {

    v2 = sub_1820A64C8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A6450()
{
  sub_181C1F2E4(v0[20], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1820A64C8()
{
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820A6540()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820A65B0(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 88) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820A65D8, 0, 0);
}

uint64_t sub_1820A65D8()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 88);
  v4 = *(v0 + 16);
  v5 = *(v0 + 24);

  v6 = sub_181F76154(v4, v5);
  v8 = v7;
  *(v0 + 48) = v6;
  *(v0 + 56) = v7;
  v9 = swift_task_alloc();
  *(v0 + 64) = v9;
  *(v9 + 16) = v2;
  *(v9 + 24) = v6;
  *(v9 + 32) = v8;
  *(v9 + 40) = v1;
  *(v9 + 48) = v3;
  v10 = swift_task_alloc();
  *(v0 + 72) = v10;
  *v10 = v0;
  v10[1] = sub_1820A6704;
  v11 = *(v0 + 32);
  v12 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v10, &unk_182AF3A40, v9, sub_1820AC61C, v11, 0, 0, v12);
}

uint64_t sub_1820A6704()
{
  *(*v1 + 80) = v0;

  if (v0)
  {
    v2 = sub_1820A6884;
  }

  else
  {

    v2 = sub_1820A6820;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A6820()
{
  sub_181C1F2E4(v0[6], v0[7]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_1820A6884()
{
  sub_181C1F2E4(v0[6], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1820A691C()
{
  v1 = *(v0 + 48);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 32);
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v3;
  *(v2 + 48) = v1;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_1820A6A10;
  v5 = *(v0 + 48);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v4, &unk_182AF36E0, v2, sub_1820AC61C, v5, 0, 0, v6);
}

uint64_t sub_1820A6A10()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_1820AC694;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A6B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[15] = a5;
  v6[16] = a6;
  v6[13] = a3;
  v6[14] = a4;
  v6[12] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820A6B54, 0, 0);
}

void sub_1820A6B54()
{
  *(v0 + 88) = (*(v0 + 96))();
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v1 = swift_allocObject();
  *(v1 + 24) = 2;
  *(v1 + 40) = 4;
  *(v1 + 42) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = nw_ws_create_metadata(nw_ws_opcode_binary);
  MEMORY[0x1865D9F10]();
  if (*((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v2 = *(v0 + 88);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 136) = inited;
  v4 = nw_content_context_create("WebSocket");
  *(inited + 16) = v4;
  *(inited + 24) = 0x656B636F53626557;
  *(inited + 32) = 0xE900000000000074;
  *(inited + 40) = 0;
  nw_content_context_set_expiration_milliseconds(v4, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v4, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v4, 0);
  *(inited + 56) = 0;
  if (v2 >> 62)
  {
    v5 = sub_182AD3EB8();
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v5 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_12;
    }
  }

  if (v5 < 1)
  {
    __break(1u);
    return;
  }

  if ((v2 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v5; ++i)
    {
      v7 = MEMORY[0x1865DA790](i, v2);
      nw_content_context_set_metadata_for_protocol(v4, *(v7 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v8 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v4, *(*(v2 + v8) + 16));
      v8 += 8;
      --v5;
    }

    while (v5);
  }

LABEL_12:

  v9 = *(v0 + 128);
  v10 = *(v0 + 112);
  v11 = swift_task_alloc();
  *(v0 + 144) = v11;
  *(v11 + 16) = v9;
  *(v11 + 24) = inited;
  v13 = (v10 + *v10);
  v12 = swift_task_alloc();
  *(v0 + 152) = v12;
  *v12 = v0;
  v12[1] = sub_1820A6E3C;

  v13(&unk_182AF3A18, v11);
}

uint64_t sub_1820A6E3C()
{
  *(*v1 + 160) = v0;

  if (v0)
  {
    v2 = sub_1820A6FD0;
  }

  else
  {

    v2 = sub_1820A6F58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A6F58()
{
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820A6FD0()
{
  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820A7050(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 32) = a4;
  *(v5 + 40) = a5;
  *(v5 + 72) = a3;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820A7078, 0, 0);
}

uint64_t sub_1820A7078()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 72);
  v9 = *(v0 + 16);
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *(v4 + 16) = v2;
  *(v4 + 24) = v9;
  *(v4 + 40) = v1;
  *(v4 + 48) = v3;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *v5 = v0;
  v5[1] = sub_1820A7190;
  v6 = *(v0 + 32);
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v5, &unk_182AF3A20, v4, sub_1820AC61C, v6, 0, 0, v7);
}

uint64_t sub_1820A7190()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1820AC698;
  }

  else
  {

    v2 = sub_181F5EB58;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t Connection7.ping<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1820A72D4, 0, 0);
}

uint64_t sub_1820A72D4()
{
  v1 = v0[14];
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v2 = swift_allocObject();
  v0[17] = v2;
  *(v2 + 24) = 4;
  *(v2 + 40) = 4;
  *(v2 + 42) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = nw_ws_create_metadata(nw_ws_opcode_ping);
  v0[11] = v1();

  MEMORY[0x1865D9F10](v3);
  if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v4 = v0[11];
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v0[18] = inited;
  v6 = nw_content_context_create("sendContext");
  *(inited + 16) = v6;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v7 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v7, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v6, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v6, 0);
  v8 = swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v4 >> 62)
  {
    v8 = sub_182AD3EB8();
    v16 = v8;
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v8, v9, v10, v11, v12, v13, v14, v15);
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v16; ++i)
    {
      v18 = MEMORY[0x1865DA790](i, v4);
      nw_content_context_set_metadata_for_protocol(v6, *(v18 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v19 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v6, *(*(v4 + v19) + 16));
      v19 += 8;
      --v16;
    }

    while (v16);
  }

LABEL_12:

  v20 = v0[16];
  v22 = v0[12];
  v21 = v0[13];
  v23 = swift_task_alloc();
  v0[19] = v23;
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  *(v23 + 32) = v21;
  *(v23 + 40) = inited;
  *(v23 + 48) = 1;
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_1820A75B0;
  v12 = v0[16];
  v9 = &unk_182AF36F0;
  v11 = sub_1820AC61C;
  v15 = MEMORY[0x1E69E7CA8] + 8;
  v10 = v23;
  v13 = 0;
  v14 = 0;

  return MEMORY[0x1EEE6DE18](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t sub_1820A75B0()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_1820A7748;
  }

  else
  {

    v2 = sub_1820A76CC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A76CC()
{

  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820A7748()
{

  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t Connection7.pong<>(_:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[15] = a4;
  v5[16] = v4;
  v5[13] = a2;
  v5[14] = a3;
  v5[12] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1820A77F8, 0, 0);
}

uint64_t sub_1820A77F8()
{
  v1 = v0[14];
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v2 = swift_allocObject();
  v0[17] = v2;
  *(v2 + 24) = 5;
  *(v2 + 40) = 4;
  *(v2 + 42) = 0;
  *(v2 + 32) = 0;
  *(v2 + 16) = nw_ws_create_metadata(nw_ws_opcode_pong);
  v0[11] = v1();

  MEMORY[0x1865D9F10](v3);
  if (*((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v0[11] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v4 = v0[11];
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  v0[18] = inited;
  v6 = nw_content_context_create("sendContext");
  *(inited + 16) = v6;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v7 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v7, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v6, 0.5);
  *(inited + 64) = 0;
  nw_content_context_set_is_final(v6, 0);
  v8 = swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v4 >> 62)
  {
    v8 = sub_182AD3EB8();
    v16 = v8;
    if (!v8)
    {
      goto LABEL_12;
    }
  }

  else
  {
    v16 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v16)
    {
      goto LABEL_12;
    }
  }

  if (v16 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v8, v9, v10, v11, v12, v13, v14, v15);
  }

  if ((v4 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v16; ++i)
    {
      v18 = MEMORY[0x1865DA790](i, v4);
      nw_content_context_set_metadata_for_protocol(v6, *(v18 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v19 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v6, *(*(v4 + v19) + 16));
      v19 += 8;
      --v16;
    }

    while (v16);
  }

LABEL_12:

  v20 = v0[16];
  v22 = v0[12];
  v21 = v0[13];
  v23 = swift_task_alloc();
  v0[19] = v23;
  *(v23 + 16) = v20;
  *(v23 + 24) = v22;
  *(v23 + 32) = v21;
  *(v23 + 40) = inited;
  *(v23 + 48) = 1;
  v8 = swift_task_alloc();
  v0[20] = v8;
  *v8 = v0;
  v8[1] = sub_1820A5A08;
  v12 = v0[16];
  v9 = &unk_182AF3700;
  v11 = sub_1820AC61C;
  v15 = MEMORY[0x1E69E7CA8] + 8;
  v10 = v23;
  v13 = 0;
  v14 = 0;

  return MEMORY[0x1EEE6DE18](v8, v9, v10, v11, v12, v13, v14, v15);
}

uint64_t Connection7.close<>(code:reason:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 144) = a5;
  *(v6 + 152) = v5;
  *(v6 + 128) = a3;
  *(v6 + 136) = a4;
  *(v6 + 120) = a2;
  *(v6 + 82) = *a1;
  *(v6 + 81) = *(a1 + 2);
  return MEMORY[0x1EEE6DFA0](sub_1820A7B10, 0, 0);
}

uint64_t sub_1820A7B10()
{
  v1 = *(v0 + 81);
  v2 = *(v0 + 82);
  type metadata accessor for NWProtocolWebSocket.Metadata();
  v3 = swift_allocObject();
  *(v0 + 160) = v3;
  *(v3 + 24) = 3;
  *(v3 + 40) = 4;
  *(v3 + 42) = 0;
  *(v3 + 32) = 0;
  metadata = nw_ws_create_metadata(nw_ws_opcode_close);
  *(v3 + 16) = metadata;
  swift_beginAccess();
  *(v3 + 40) = v2;
  *(v3 + 42) = v1;
  v5 = *(v0 + 82);
  if (!v1)
  {
    v5 = word_182AF3B5A[v5];
  }

  v6 = *(v0 + 128);
  nw_ws_metadata_set_close_code(metadata, v5);
  if (v6)
  {
    v7 = *(v0 + 120);
    v8 = *(v0 + 128);

    v6 = sub_181F76154(v7, v8);
    v10 = v9;
  }

  else
  {
    v10 = 0xF000000000000000;
  }

  *(v0 + 168) = v6;
  *(v0 + 176) = v10;
  v11 = *(v0 + 136);

  *(v0 + 112) = v11(v12);

  MEMORY[0x1865D9F10](v13);
  if (*((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v0 + 112) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_182AD3408();
  }

  sub_182AD3448();
  v14 = *(v0 + 112);
  type metadata accessor for NWConnection.ContentContext();
  inited = swift_initStackObject();
  *(v0 + 184) = inited;
  v16 = nw_content_context_create("sendContext");
  *(inited + 16) = v16;
  *(inited + 24) = 0x746E6F43646E6573;
  *(inited + 32) = 0xEB00000000747865;
  *(inited + 40) = 0;
  v17 = swift_unknownObjectRetain();
  nw_content_context_set_expiration_milliseconds(v17, 0);
  *(inited + 48) = 0x3FE0000000000000;
  nw_content_context_set_relative_priority(v16, 0.5);
  *(inited + 64) = 1;
  nw_content_context_set_is_final(v16, 1);
  v18 = swift_unknownObjectRelease();
  *(inited + 56) = 0;
  if (v14 >> 62)
  {
    v18 = sub_182AD3EB8();
    v26 = v18;
    if (!v18)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v26 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v26)
    {
      goto LABEL_17;
    }
  }

  if (v26 < 1)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE18](v18, v19, v20, v21, v22, v23, v24, v25);
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v26; ++i)
    {
      v28 = MEMORY[0x1865DA790](i, v14);
      nw_content_context_set_metadata_for_protocol(v16, *(v28 + 16));
      swift_unknownObjectRelease();
    }
  }

  else
  {
    v29 = 32;
    do
    {
      nw_content_context_set_metadata_for_protocol(v16, *(*(v14 + v29) + 16));
      v29 += 8;
      --v26;
    }

    while (v26);
  }

LABEL_17:

  v30 = *(v0 + 152);
  v31 = swift_task_alloc();
  *(v0 + 192) = v31;
  *(v31 + 16) = v30;
  *(v31 + 24) = v6;
  *(v31 + 32) = v10;
  *(v31 + 40) = inited;
  *(v31 + 48) = 1;
  v18 = swift_task_alloc();
  *(v0 + 200) = v18;
  *v18 = v0;
  v18[1] = sub_1820A7E84;
  v22 = *(v0 + 152);
  v19 = &unk_182AF3710;
  v21 = sub_1820AC61C;
  v25 = MEMORY[0x1E69E7CA8] + 8;
  v20 = v31;
  v23 = 0;
  v24 = 0;

  return MEMORY[0x1EEE6DE18](v18, v19, v20, v21, v22, v23, v24, v25);
}

uint64_t sub_1820A7E84()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_1820A8040;
  }

  else
  {

    v2 = sub_1820A7FA0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A7FA0()
{
  v1 = v0[22];
  v2 = v0[21];

  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();

  sub_181D9D680(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1820A8040()
{
  v2 = v0[21];
  v1 = v0[22];

  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();

  sub_181D9D680(v2, v1);
  v3 = v0[1];

  return v3();
}

uint64_t sub_1820A8108()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40, &qword_182AFC160);
  *v1 = v0;
  v1[1] = sub_1820A81F0;
  v3 = *(v0 + 56);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182AF3728, v3, sub_1820AC61C, v3, 0, 0, v2);
}

uint64_t sub_1820A81F0()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_18208E600;
  }

  else
  {
    v2 = sub_1820AC634;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t Connection7.startReceive<>(_:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1820A8328, 0, 0);
}

uint64_t sub_1820A8328()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *(v2 + 16) = *(v0 + 16);
  *(v2 + 32) = v1;
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  *v3 = v0;
  v3[1] = sub_1820A841C;
  v4 = *(v0 + 32);
  v5 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v3, &unk_182AF3740, v2, sub_1820AA794, v4, 0, 0, v5);
}

uint64_t sub_1820A841C()
{
  *(*v1 + 56) = v0;

  if (v0)
  {
    v2 = sub_181F51218;
  }

  else
  {

    v2 = sub_181F57584;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A8538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820A855C, 0, 0);
}

uint64_t sub_1820A855C()
{
  v4 = (v0[2] + *v0[2]);
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_1820A865C;
  v2 = v0[4];

  return v4(&unk_182AF39F8, v2);
}

uint64_t sub_1820A865C()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1820A8790, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1820A87A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[8] = a3;
  v4[9] = a4;
  v4[6] = a1;
  v4[7] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820A87CC, 0, 0);
}

uint64_t sub_1820A87CC()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];
  v4 = swift_task_alloc();
  v0[10] = v4;
  v4[2] = v1;
  v4[3] = v3;
  v4[4] = v2;
  v5 = swift_task_alloc();
  v0[11] = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83AE40, &qword_182AFC160);
  *v5 = v0;
  v5[1] = sub_1820A88DC;
  v7 = v0[9];

  return MEMORY[0x1EEE6DE18](v0 + 2, &unk_182AF3A08, v4, sub_1820AC61C, v7, 0, 0, v6);
}

uint64_t sub_1820A88DC()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_181F5759C;
  }

  else
  {

    v2 = sub_1820A89F8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A89F8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 36);
  v4 = *(v0 + 34);
  v5 = *(v0 + 37);
  v6 = *(v0 + 38);
  v8 = *(v0 + 40);
  v7 = *(v0 + 48);
  *v7 = *(v0 + 32);
  *(v7 + 2) = v4;
  *(v7 + 4) = v3;
  *(v7 + 5) = v5;
  *(v7 + 6) = v6;
  *(v7 + 8) = v8;
  return (*(v0 + 8))(v1, v2);
}

uint64_t Connection7.send<>(_:type:lastMessage:options:metadata:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  *(v8 + 128) = a7;
  *(v8 + 136) = v7;
  *(v8 + 81) = a4;
  *(v8 + 112) = a3;
  *(v8 + 120) = a6;
  *(v8 + 96) = a1;
  *(v8 + 104) = a2;
  *(v8 + 82) = *a5;
  return MEMORY[0x1EEE6DFA0](sub_1820A8A78, 0, 0);
}

uint64_t sub_1820A8A78(void *a1, uint64_t a2, uint64_t a3, void (*a4)(), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a9)
{
  v10 = *(v9 + 104);
  v11 = v10 >> 62;
  if (*(v9 + 82))
  {
    if ((v10 >> 62) <= 1)
    {
      if (!v11)
      {
        a2 = BYTE6(v10);
        goto LABEL_21;
      }

      goto LABEL_16;
    }

    if (v11 != 2)
    {
      a2 = 0;
      goto LABEL_21;
    }

    v11 = *(*(v9 + 96) + 16);
    v13 = *(*(v9 + 96) + 24);
    a2 = v13 - v11;
    if (!__OFSUB__(v13, v11))
    {
LABEL_21:
      v23 = *(v9 + 120);
      *(v9 + 144) = _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(*(v9 + 112), a2);
      *(v9 + 88) = v23();

      MEMORY[0x1865D9F10](v24);
      if (*((*(v9 + 88) & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*(v9 + 88) & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_182AD3408();
      }

      v25 = *(v9 + 81);
      sub_182AD3448();
      v26 = *(v9 + 88);
      type metadata accessor for NWConnection.ContentContext();
      inited = swift_initStackObject();
      *(v9 + 152) = inited;
      v28 = nw_content_context_create("sendContext");
      *(inited + 16) = v28;
      *(inited + 24) = 0x746E6F43646E6573;
      *(inited + 32) = 0xEB00000000747865;
      *(inited + 40) = 0;
      v29 = swift_unknownObjectRetain();
      nw_content_context_set_expiration_milliseconds(v29, 0);
      *(inited + 48) = 0x3FE0000000000000;
      nw_content_context_set_relative_priority(v28, 0.5);
      *(inited + 64) = v25;
      nw_content_context_set_is_final(v28, v25);
      a1 = swift_unknownObjectRelease();
      *(inited + 56) = 0;
      if (v26 >> 62)
      {
        a1 = sub_182AD3EB8();
        v30 = a1;
        if (a1)
        {
          goto LABEL_25;
        }
      }

      else
      {
        v30 = *((v26 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v30)
        {
LABEL_25:
          if (v30 >= 1)
          {
            if ((v26 & 0xC000000000000001) != 0)
            {
              for (i = 0; i != v30; ++i)
              {
                v32 = MEMORY[0x1865DA790](i, v26);
                nw_content_context_set_metadata_for_protocol(v28, *(v32 + 16));
                swift_unknownObjectRelease();
              }
            }

            else
            {
              v41 = 32;
              do
              {
                nw_content_context_set_metadata_for_protocol(v28, *(*(v26 + v41) + 16));
                v41 += 8;
                --v30;
              }

              while (v30);
            }

            goto LABEL_39;
          }

          __break(1u);
          goto LABEL_45;
        }
      }

LABEL_39:

      v42 = *(v9 + 136);
      v44 = *(v9 + 96);
      v43 = *(v9 + 104);
      v45 = swift_task_alloc();
      *(v9 + 160) = v45;
      *(v45 + 16) = v42;
      *(v45 + 24) = v44;
      *(v45 + 32) = v43;
      *(v45 + 40) = inited;
      *(v45 + 48) = 1;
      a1 = swift_task_alloc();
      *(v9 + 168) = a1;
      *a1 = v9;
      a1[1] = sub_1820A8E68;
      a5 = *(v9 + 136);
      a2 = &unk_182AF3758;
      a4 = sub_1820AC61C;
      a8 = MEMORY[0x1E69E7CA8] + 8;
      a3 = v45;
      a6 = 0;
      a7 = 0;

      return MEMORY[0x1EEE6DE18](a1, a2, a3, a4, a5, a6, a7, a8);
    }

    __break(1u);
  }

  else if ((v10 >> 62) <= 1)
  {
    if (v11)
    {
      v20 = *(v9 + 96);
      v21 = *(v9 + 100);
      v18 = __OFSUB__(v21, v20);
      v22 = v21 - v20;
      if (v18)
      {
LABEL_46:
        __break(1u);
        return MEMORY[0x1EEE6DE18](a1, a2, a3, a4, a5, a6, a7, a8);
      }

      v12 = v22;
    }

    else
    {
      v12 = BYTE6(v10);
    }

    goto LABEL_31;
  }

  if (v11 == 2)
  {
    v14 = *(*(v9 + 96) + 16);
    v15 = *(*(v9 + 96) + 24);
    v12 = v15 - v14;
    if (__OFSUB__(v15, v14))
    {
      __break(1u);
LABEL_16:
      v16 = *(v9 + 96);
      v17 = *(v9 + 100);
      v18 = __OFSUB__(v17, v16);
      v19 = v17 - v16;
      if (v18)
      {
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      a2 = v19;
      goto LABEL_21;
    }
  }

  else
  {
    v12 = 0;
  }

LABEL_31:
  v33 = *(v9 + 136);
  v34 = *(v9 + 81);
  v35 = *(v9 + 112);
  v36 = *(v9 + 96);
  v37 = (*(v9 + 120))(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  if (v34)
  {
    v38 = 257;
  }

  else
  {
    v38 = 1;
  }

  sub_1820A908C(v33, v36, v10, v35, v12, v38, v37);

  v39 = *(v9 + 8);

  return v39();
}

uint64_t sub_1820A8E68()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_1820A9000;
  }

  else
  {

    v2 = sub_1820A8F84;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A8F84()
{

  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820A9000()
{

  swift_setDeallocating();
  NWConnection.ContentContext.deinit();
  swift_deallocClassInstance();
  v1 = *(v0 + 8);

  return v1();
}

void sub_1820A908C(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (qword_1EA837208 == -1)
  {
    v11 = *(a1 + 16);
    if (v11)
    {
      goto LABEL_3;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  swift_once();
  v11 = *(a1 + 16);
  if (!v11)
  {
    goto LABEL_20;
  }

LABEL_3:
  v12 = qword_1EA8433A8;
  v13 = *(v11 + 24);
  os_unfair_lock_lock((v13 + 96));
  v14 = *(v13 + 93);
  os_unfair_lock_unlock((v13 + 96));
  if ((v14 & 1) == 0)
  {
    NWConnection.start(queue:)(v12);
  }

  v15 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v15)
    {
      v16 = BYTE6(a3);
      goto LABEL_15;
    }

    goto LABEL_12;
  }

  if (v15 != 2)
  {
    v16 = 0;
    goto LABEL_15;
  }

  v18 = *(a2 + 16);
  v17 = *(a2 + 24);
  v16 = v17 - v18;
  if (__OFSUB__(v17, v18))
  {
    __break(1u);
LABEL_12:
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      __break(1u);
      return;
    }

    v16 = HIDWORD(a2) - a2;
  }

LABEL_15:

  _s7Network16NWProtocolFramerC7MessageC4type6lengthAESi_SitcfC_0(a4, v16);
  MEMORY[0x1865D9F10]();
  if (*((a7 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((a7 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
LABEL_21:
    sub_182AD3408();
  }

  sub_182AD3448();

  v19 = TLV.Metadata.toContentContext()();
  v20 = *(v11 + 16);
  v21 = sub_182AD2138();
  v23 = NWCreateDispatchDataFromNSData(v21, v22);

  nw_connection_send_idempotent(v20, v23, *(v19 + 16), 1);
}

uint64_t sub_1820A92B4()
{
  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A120, &qword_182AF3778);
  *v1 = v0;
  v1[1] = sub_1820A939C;
  v3 = *(v0 + 72);

  return MEMORY[0x1EEE6DE18](v0 + 16, &unk_182AF3770, v3, sub_1820AC61C, v3, 0, 0, v2);
}

uint64_t sub_1820A939C()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_181FE1D24;
  }

  else
  {
    v2 = sub_1820A94B0;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A94B0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 48);
  v4 = *(v0 + 49);
  v6 = *(v0 + 56);
  v5 = *(v0 + 64);
  *v5 = *(v0 + 32);
  *(v5 + 16) = v3;
  *(v5 + 17) = v4;
  *(v5 + 24) = v6;
  return (*(v0 + 8))(v1, v2);
}

uint64_t Connection7<>.messages.getter(uint64_t a1)
{
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  *(v3 + 24) = v1;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();

  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();

  return MEMORY[0x1EEE6DBA8](&unk_182AF3788, v3, TupleTypeMetadata2, v5);
}

uint64_t sub_1820A95F4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v7 = *a2;
  v3[3] = a1;
  v8 = *(*a2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v3[4] = TupleTypeMetadata2;
  v10 = *(TupleTypeMetadata2 + 48);
  v3[2] = a2;
  v14 = (*(a3 + 40) + **(a3 + 40));
  v11 = swift_task_alloc();
  v3[5] = v11;
  WitnessTable = swift_getWitnessTable();
  *v11 = v3;
  v11[1] = sub_1820A980C;

  return v14(a1, a1 + v10, v3 + 2, v7, WitnessTable, v8, a3);
}

uint64_t sub_1820A980C()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1820A8790;
  }

  else
  {
    v2 = sub_1820A9920;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820A9920()
{
  (*(*(v0[4] - 8) + 56))(v0[3], 0, 1);
  v1 = v0[1];

  return v1();
}

nw_protocol_metadata_t sub_1820A99E0(nw_protocol_metadata_t result)
{
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = result;
    if (qword_1EA8370D0 != -1)
    {
      swift_once();
    }

    result = nw_connection_copy_protocol_metadata(*(v2 + 16), *(off_1EA839710 + 4));
    if (result)
    {
      v4 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(result);
      result = swift_unknownObjectRelease();
      if (v4)
      {
        type metadata accessor for NWProtocolQUIC.Metadata();
        v5 = swift_dynamicCastClassUnconditional();
        v6 = (v3)(*(v5 + 16));

        return v6;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

nw_protocol_metadata_t Connection7<>.streamApplicationErrorCode.setter(nw_protocol_metadata_t result)
{
  v2 = *(v1 + 16);
  if (!v2)
  {
    goto LABEL_10;
  }

  v3 = result;
  if (qword_1EA8370D0 != -1)
  {
    swift_once();
  }

  result = nw_connection_copy_protocol_metadata(*(v2 + 16), *(off_1EA839710 + 4));
  if (!result || (v4 = _s7Network18NWProtocolMetadataC6fromNWyACSgSo23OS_nw_protocol_metadata_pFZ_0(result), result = swift_unknownObjectRelease(), !v4))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  type metadata accessor for NWProtocolQUIC.Metadata();
  v5 = swift_dynamicCastClassUnconditional();
  nw_quic_set_stream_application_error(*(v5 + 16), v3);
}

nw_protocol_metadata_t (*Connection7<>.streamApplicationErrorCode.modify(nw_protocol_metadata_t *a1))(nw_protocol_metadata_t *a1)
{
  a1[1] = v1;
  *a1 = Connection7<>.streamApplicationErrorCode.getter();
  return sub_1820A9BD4;
}

void *sub_1820A9BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = type metadata accessor for NWEndpoint(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v8 + 80);
  v13 = *(v8 + 88);
  memset(v26, 0, 73);
  locked = type metadata accessor for Connection7.LockedState(0, v12, v13, v14);
  v16 = sub_1820C6414(v26, locked);
  (*(*(locked - 8) + 8))(v26, locked);
  v4[3] = v16;
  v17 = NWEndpoint.nw.getter();
  if (v17)
  {
    v18 = v17;
    if (nw_endpoint_get_type(v17) == nw_endpoint_type_url)
    {
      v19 = *(a2 + 16);
      os_unfair_lock_lock((v19 + 24));
      v20 = *(v19 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v19 + 24));
      nw_parameters_set_url_endpoint(v20, v18);
      swift_unknownObjectRelease();
    }

    swift_unknownObjectRelease();
  }

  sub_181D8E1E8(a1, v11, type metadata accessor for NWEndpoint);
  type metadata accessor for NWConnection(0);
  swift_allocObject();

  v21 = sub_181E60914(v11, a2);

  v4[2] = v21;
  sub_181AB5D28(a3, v26, &qword_1EA83A290, &qword_182AF3B50);
  sub_182099E84(v26, v22, v23, v24);
  sub_181F49A88(a3, &qword_1EA83A290, &qword_182AF3B50);
  sub_181FDAD5C(a1);
  return v4;
}

void *sub_1820A9E14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 88);
  memset(v15, 0, 73);
  locked = type metadata accessor for Connection7.LockedState(0, v7, v8, a4);
  v10 = sub_1820C6414(v15, locked);
  (*(*(locked - 8) + 8))(v15, locked);
  v4[2] = a1;
  v4[3] = v10;
  sub_181AB5D28(a2, v15, &qword_1EA83A290, &qword_182AF3B50);

  sub_182099E84(v15, v11, v12, v13);
  sub_181F49A88(a2, &qword_1EA83A290, &qword_182AF3B50);
  return v4;
}

uint64_t sub_1820AA02C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_181F5EB68;

  return sub_1820A3414(a1, v5, v7, v6, v4);
}

uint64_t sub_1820AA110(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_18209F0CC(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1820AA1D8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1820A16F0(a1, v1);
}

uint64_t sub_1820AA274(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_18209F350(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1820AA33C(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1820A1928(a1, v1);
}

uint64_t sub_1820AA3D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_18209F498(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1820AA4A0(uint64_t a1)
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
  v11[1] = sub_181F5EB68;

  return sub_1820A5DD8(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1820AA57C(uint64_t a1)
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

  return sub_1820A6B2C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1820AA644(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1820A1A2C(a1, v1);
}

uint64_t sub_1820AA6E0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F54964;

  return sub_1820A8538(a1, v4, v5, v6);
}

uint64_t sub_1820AA7B0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_18209F5E0(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1820AA878(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_181F5EB68;

  return sub_1820A1B30(a1, v1);
}

uint64_t sub_1820AA914(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_181F5EB68;

  return sub_1820A95F4(a1, v4, v5);
}

uint64_t sub_1820AA9E8(uint64_t a1, uint64_t a2)
{
  *(a1 + 8) = swift_getWitnessTable();
  result = swift_getWitnessTable();
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1820AAAF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_7Network0A5Coder_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy73_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1820AAB70(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 73))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1820AABCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 73) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1820AAC58(uint64_t a1, unint64_t a2, uint64_t a3, char a4, unsigned int *a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83AF80, &qword_182AF39D0);
  v10 = *a5 | (*(a5 + 4) << 32);

  return sub_1820A2A30(a1, a2, a3, a4, v10);
}

uint64_t sub_1820AAD0C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_181F5EB68;

  return sub_18209F8C8(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1820AAE30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = sub_1820AAEE4;

  return sub_1820A87A8(a1, a2, a3, v3);
}

uint64_t sub_1820AAEE4(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t sub_1820AAFF0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_181F5EB68;

  return sub_1820A120C(a1, v4, v5, v6);
}

uint64_t sub_1820AB1B8(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_181F5EB68;

  return sub_1820A7050(a1, a2, a3, v9, v8);
}

uint64_t sub_1820AB278(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *(v3 + 16);
  v8 = *(v3 + 24);
  v10 = swift_task_alloc();
  *(v4 + 16) = v10;
  *v10 = v4;
  v10[1] = sub_181F5EB68;

  return sub_1820A65B0(a1, a2, a3, v9, v8);
}

uint64_t sub_1820AB3A8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t a8, uint64_t a9)
{
  if ((~a4 & 0xFF00000000) != 0)
  {
    v13 = HIDWORD(a4);
    v14 = a4;
    sub_181F4B3B8();
    v15 = swift_allocError();
    *v16 = v14;
    *(v16 + 4) = v13;
LABEL_7:
    aBlock[0] = v15;
    goto LABEL_8;
  }

  if (!a3)
  {
    sub_181F4B3B8();
    v15 = swift_allocError();
    *v17 = 22;
    *(v17 + 4) = 0;
    goto LABEL_7;
  }

  if (a2 >> 60 != 15)
  {
    v23 = swift_allocObject();
    *(v23 + 16) = MEMORY[0x1E69E7CC0];
    context = *(a3 + 16);
    aBlock[4] = a8;
    aBlock[5] = v23;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_181F25CD0;
    aBlock[3] = a9;
    v24 = _Block_copy(aBlock);
    swift_retain_n();
    sub_181F49B44(a1, a2);

    nw_content_context_foreach_protocol_metadata(context, v24);

    _Block_release(v24);

    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    sub_182AD34C8();
  }

  sub_181F4B3B8();
  v11 = swift_allocError();
  *v12 = 22;
  *(v12 + 4) = 0;
  swift_willThrow();
  aBlock[0] = v11;
LABEL_8:
  __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  return sub_182AD34B8();
}

uint64_t sub_1820AB778(uint64_t a1, unint64_t a2, uint64_t a3, int a4, unsigned int *a5)
{
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v13 = *(sub_182AD34D8() - 8);
  v14 = v5 + ((*(v13 + 80) + 32) & ~*(v13 + 80));

  return sub_1820A38A4(a1, a2, a3, a4, a5, v14, v11, v12);
}

uint64_t sub_1820AB8BC(uint64_t a1)
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

  return sub_18209DCD4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1820AB98C(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_18209E298(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1820ABA54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_18209E954(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1820ABB18(uint64_t a1)
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

  return sub_18209CD8C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1820ABBE8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_18209D254(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1820ABCB0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_18209D910(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1820ABDE8(uint64_t a1)
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

  return sub_18209B958(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1820ABEB8(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_18209C1D4(a1, a2, v6, v7, v9, v8);
}

uint64_t sub_1820ABF80(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NWPath(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1820ABFE4()
{
  v2 = *(type metadata accessor for NWPath(0) - 8);
  v3 = (*(v2 + 80) + 64) & ~*(v2 + 80);
  v4 = v0[2];
  v5 = v0[3];
  v6 = v0[6];
  v7 = v0[7];
  v8 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v1 + 16) = v9;
  *v9 = v1;
  v9[1] = sub_181F5EB68;

  return sub_18209CA6C(v4, v5, v6, v7, v0 + v3, v8);
}

uint64_t sub_1820AC10C(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A150, &qword_182AF3AF0);

  return sub_18209C07C(a1);
}

uint64_t objectdestroy_262Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1820AC1D0(uint64_t a1)
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

  return sub_18209A860(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1820AC2A0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v9 = v2[4];
  v8 = v2[5];
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = sub_181F5EB68;

  return sub_18209AEC8(a1, a2, v6, v7, v9, v8);
}

uint64_t objectdestroy_271Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1820AC3B0()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48) | (*(v0 + 52) << 32);
  v7 = *(v0 + 56);
  v8 = swift_task_alloc();
  *(v1 + 16) = v8;
  *v8 = v1;
  v8[1] = sub_181F5EB68;

  return sub_18209B628(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1820AC4A4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v6 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a2, a3) - 8);
  v7 = v4 + ((*(v6 + 80) + 16) & ~*(v6 + 80));

  return a4(a1, v7);
}

uint64_t sub_1820AC560(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A290, &qword_182AF3B50);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
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

uint64_t sub_1820AC700(uint64_t a1, int a2)
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

uint64_t sub_1820AC720(uint64_t result, int a2, int a3)
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

unint64_t sub_1820AC760()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839990, &unk_182AF3DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_182AE9730;
  *(inited + 32) = 0xD00000000000001ALL;
  v3 = inited + 32;
  v4 = *v0;
  v5 = MEMORY[0x1E69E6530];
  *(inited + 72) = MEMORY[0x1E69E6530];
  *(inited + 40) = 0x8000000182BDD100;
  *(inited + 48) = v4;
  v6 = sub_181E7BE80(inited);
  swift_setDeallocating();
  sub_181E7BFD4(v3);
  if ((v1[2] & 1) == 0)
  {
    v7 = v1[1];
    v17 = v5;
    *&v16 = v7;
    sub_181E7BFC4(&v16, v15);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_182259BA0(v15, 0xD00000000000001ALL, 0x8000000182BDD120, isUniquelyReferenced_nonNull_native);
  }

  if ((v1[4] & 1) == 0)
  {
    v9 = v1[3];
    v10 = swift_initStackObject();
    *(v10 + 16) = xmmword_182AE9730;
    *(v10 + 32) = 0xD000000000000013;
    v11 = v10 + 32;
    *(v10 + 72) = MEMORY[0x1E69E7360];
    *(v10 + 40) = 0x8000000182BDC4E0;
    *(v10 + 48) = v9;
    v12 = sub_181E7BE80(v10);
    swift_setDeallocating();
    sub_181E7BFD4(v11);
    v13 = swift_isUniquelyReferenced_nonNull_native();
    *&v16 = v6;
    sub_1820ACF88(v12, sub_1820AD864, 0, v13, &v16);

    return v16;
  }

  return v6;
}

uint64_t sub_1820AC928(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A198, &unk_182AF3C10);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1820ACE8C();
  sub_182AD4638();
  v14 = 0;
  sub_182AD4108();
  if (!v2)
  {
    v13 = 1;
    sub_182AD40C8();
    v11 = *(v3 + 24);
    v12 = *(v3 + 32);
    v10[15] = 2;
    sub_1820ACF34();
    sub_182AD40D8();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_1820ACB14()
{
  v1 = 0x654D65746F6D6572;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1820ACB84@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1820AD3B8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1820ACBAC(uint64_t a1)
{
  v2 = sub_1820ACE8C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1820ACBE8(uint64_t a1)
{
  v2 = sub_1820ACE8C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1820ACC24@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1820ACC84(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_1820ACC84@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A180, &qword_182AF3C08);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1820ACE8C();
  sub_182AD45E8();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = 0;
  v9 = sub_182AD3FE8();
  v20 = 1;
  v10 = sub_182AD3F98();
  v18 = v11;
  v12 = v10;
  v19 = 2;
  sub_1820ACEE0();
  sub_182AD3FA8();
  (*(v6 + 8))(v8, v5);
  v13 = v16;
  v14 = v17;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v9;
  *(a2 + 8) = v12;
  *(a2 + 16) = v18 & 1;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  return result;
}

unint64_t sub_1820ACE8C()
{
  result = qword_1EA83A188;
  if (!qword_1EA83A188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A188);
  }

  return result;
}

unint64_t sub_1820ACEE0()
{
  result = qword_1EA83A190;
  if (!qword_1EA83A190)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A190);
  }

  return result;
}

unint64_t sub_1820ACF34()
{
  result = qword_1EA83A1A0;
  if (!qword_1EA83A1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A1A0);
  }

  return result;
}

unint64_t sub_1820ACF88(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v45 = a1;
  v46 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v47 = v8;
  v48 = 0;
  v49 = v11 & v9;
  v50 = a2;
  v51 = a3;

  sub_1820ADA4C(&v43);
  v12 = *(&v43 + 1);
  if (!*(&v43 + 1))
  {
    goto LABEL_25;
  }

  v13 = v43;
  sub_181E7BFC4(v44, v42);
  v14 = *a5;
  result = sub_181CA266C(v13, v12);
  v17 = v14[2];
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v21 = v16;
  if (v14[3] < v20)
  {
    sub_182253ED8(v20, a4 & 1);
    result = sub_181CA266C(v13, v12);
    if ((v21 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_182AD4408();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_182257570();
    result = v26;
    v23 = *a5;
    if (v21)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v21)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    __swift_destroy_boxed_opaque_existential_1(v25);
    sub_181E7BFC4(v42, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  v27 = (v23[6] + 16 * result);
  *v27 = v13;
  v27[1] = v12;
  result = sub_181E7BFC4(v42, (v23[7] + 32 * result));
  v28 = v23[2];
  v19 = __OFADD__(v28, 1);
  v29 = v28 + 1;
  if (!v19)
  {
    v23[2] = v29;
LABEL_15:
    sub_1820ADA4C(&v43);
    v12 = *(&v43 + 1);
    if (*(&v43 + 1))
    {
      v21 = 1;
      do
      {
        v13 = v43;
        sub_181E7BFC4(v44, v42);
        v32 = *a5;
        result = sub_181CA266C(v13, v12);
        v34 = v32[2];
        v35 = (v33 & 1) == 0;
        v19 = __OFADD__(v34, v35);
        v36 = v34 + v35;
        if (v19)
        {
          goto LABEL_26;
        }

        a4 = v33;
        if (v32[3] < v36)
        {
          sub_182253ED8(v36, 1);
          result = sub_181CA266C(v13, v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v30 = result;

          v31 = (v38[7] + 32 * v30);
          __swift_destroy_boxed_opaque_existential_1(v31);
          sub_181E7BFC4(v42, v31);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          v39 = (v38[6] + 16 * result);
          *v39 = v13;
          v39[1] = v12;
          result = sub_181E7BFC4(v42, (v38[7] + 32 * result));
          v40 = v38[2];
          v19 = __OFADD__(v40, 1);
          v41 = v40 + 1;
          if (v19)
          {
            goto LABEL_27;
          }

          v38[2] = v41;
        }

        sub_1820ADA4C(&v43);
        v12 = *(&v43 + 1);
      }

      while (*(&v43 + 1));
    }

LABEL_25:
    sub_1820AD298();
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_1820AD2B4()
{
  result = qword_1EA83A1A8;
  if (!qword_1EA83A1A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A1A8);
  }

  return result;
}

unint64_t sub_1820AD30C()
{
  result = qword_1EA83A1B0;
  if (!qword_1EA83A1B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A1B0);
  }

  return result;
}

unint64_t sub_1820AD364()
{
  result = qword_1EA83A1B8;
  if (!qword_1EA83A1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA83A1B8);
  }

  return result;
}

uint64_t sub_1820AD3B8(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD00000000000001ALL && 0x8000000182BDD100 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000182BDD120 == a2 || (sub_182AD4268() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654D65746F6D6572 && a2 == 0xED00007363697274)
  {

    return 2;
  }

  else
  {
    v5 = sub_182AD4268();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1820AD4EC(uint64_t a1)
{
  swift_defaultActor_initialize();
  *(v1 + 152) = 0u;
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 168) = 256;
  *(v1 + 170) = 0;
  type metadata accessor for NWActivity();
  v3 = swift_allocObject();
  v4 = nw_activity_create(57, 2);
  *(v3 + 16) = v4;
  *(v3 + 24) = xmmword_182AF3D40;
  *(v1 + 112) = v3;
  if (a1)
  {
    nw_activity_set_parent_activity(v4, *(a1 + 16));
  }

  else
  {
    nw_activity_set_parent_activity(v4, 0);
  }

  return v1;
}

void sub_1820AD594(uint64_t a1)
{
  if ((*(v1 + 170) & 1) == 0)
  {
    v2 = *a1;
    v3 = *(a1 + 8);
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    v6 = *(v1 + 112);
    v7 = sub_1820AD694();
    sub_1820ECF38(v7);
    if (v8)
    {

      nw_activity_submit_metrics(*(v6 + 16));
      swift_unknownObjectRelease();
      v9[0] = v2;
      v9[1] = v3;
      v9[2] = v4;
      v10 = v5;
      NWActivity.complete(reason:)(v9);
      *(v1 + 170) = 1;
    }

    else
    {
      sub_182AD3EA8();
      __break(1u);
    }
  }
}

unint64_t sub_1820AD694()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839990, &unk_182AF3DC0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_182AF06D0;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x8000000182BDD190;
  v2 = MEMORY[0x1E69E6530];
  *(inited + 48) = *(v0 + 120);
  *(inited + 72) = v2;
  *(inited + 80) = 0xD000000000000015;
  *(inited + 88) = 0x8000000182BDD1B0;
  v3 = *(v0 + 128);
  *(inited + 120) = v2;
  *(inited + 96) = v3;
  v4 = sub_181E7BE80(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83B680, &qword_182AF3C20);
  swift_arrayDestroy();
  if ((*(v0 + 169) & 1) == 0)
  {
    v5 = *(v0 + 168);
    v6 = *(v0 + 160);
    v7 = *(v0 + 152);
    v12 = *(v0 + 136);
    v13 = v7 & 1;
    v14 = v6;
    v15 = v5 & 1;
    v8 = sub_1820AC760();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = v4;
    sub_1820ACF88(v8, sub_1820AD864, 0, isUniquelyReferenced_nonNull_native, &v11);

    return v11;
  }

  return v4;
}

uint64_t sub_1820AD7FC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x1EEE6DEF0](v0);
}

double sub_1820AD864@<D0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  sub_181C65504((a1 + 2), (a2 + 2));
  *a2 = v4;
  a2[1] = v3;

  return result;
}

uint64_t sub_1820AD8B0()
{
  v1 = *v0;
  v2 = v0[1];
  if ((v2 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v3 = *v0 & 0xFFFFFFFFFFFFLL;
  }

  v4 = v0[2];
  v5 = v4 >> 14;
  if (v4 >> 14 == 4 * v3)
  {
    v6 = 0;
    return v6 | ((v5 == 4 * v3) << 8);
  }

  v7 = (v1 >> 59) & 1;
  if ((v2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = v0[2] & 0xC;
  v9 = 4 << v7;
  v10 = v0[2];
  if (v8 == v9)
  {
    v23 = v0[2];
    v26 = *v0;
    v14 = v0[1];
    v15 = sub_18208A330(v4, v1, v2);
    v2 = v14;
    v10 = v15;
    v4 = v23;
    v1 = v26;
  }

  v11 = v10 >> 16;
  if (v10 >> 16 >= v3)
  {
    __break(1u);
LABEL_20:
    v24 = v4;
    v27 = v1;
    v16 = v2;
    v17 = sub_182AD31C8();
    v2 = v16;
    v11 = v17;
    v4 = v24;
    v1 = v27;
    if (v8 == v9)
    {
      goto LABEL_21;
    }

    goto LABEL_17;
  }

  if ((v2 & 0x1000000000000000) != 0)
  {
    goto LABEL_20;
  }

  if ((v2 & 0x2000000000000000) != 0)
  {
    v30[0] = v1;
    v30[1] = v2 & 0xFFFFFFFFFFFFFFLL;
    v12 = v30;
  }

  else
  {
    if ((v1 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    v12 = ((v2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  while (1)
  {
    LOBYTE(v11) = *(v12 + v11);
    if (v8 == v9)
    {
LABEL_21:
      v28 = v1;
      v21 = v2;
      v4 = sub_18208A330(v4, v1, v2);
      v2 = v21;
      v1 = v28;
      if ((v21 & 0x1000000000000000) == 0)
      {
LABEL_18:
        v13 = (v4 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_24;
      }
    }

    else
    {
LABEL_17:
      if ((v2 & 0x1000000000000000) == 0)
      {
        goto LABEL_18;
      }
    }

    if (v3 > v4 >> 16)
    {
      break;
    }

    __break(1u);
LABEL_27:
    v25 = v4;
    v29 = v1;
    v22 = v2;
    v20 = sub_182AD3CF8();
    v1 = v29;
    v12 = v20;
    v2 = v22;
    v4 = v25;
  }

  v13 = sub_182AD3178();
LABEL_24:
  v0[2] = v13;
  v18 = v0[3];
  LOBYTE(v30[0]) = v11;
  v18(&v31, v30);
  v6 = v31;
  return v6 | ((v5 == 4 * v3) << 8);
}

void sub_1820ADA4C(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_181C65504(*(v3 + 56) + 32 * v13, v20);
    *&v21 = v16;
    *(&v21 + 1) = v15;
    sub_181E7BFC4(v20, &v22);

    v17 = *(&v21 + 1);
    v18 = v21;
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v17)
    {
      v19 = v1[5];
      *&v20[0] = v18;
      *(&v20[0] + 1) = v17;
      v20[1] = v22;
      v20[2] = v23;
      v19(v20);
      sub_1820ADB9C(v20);
    }

    else
    {
      a1[1] = 0u;
      a1[2] = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v17 = 0;
        v18 = 0;
        v12 = 0;
        v22 = 0u;
        v23 = 0u;
        v21 = 0u;
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1820ADB9C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA83A1C0, &unk_182AF3DD0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double sub_1820ADC2C@<D0>(uint64_t a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  if (v1[8])
  {

    sub_181AB612C(0, 0);
    if (v6)
    {

      swift_unknownObjectRetain();
      sub_181AB612C(0, 0);
    }

    else
    {
      v5 = 0;
    }

    *a1 = 1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = v4;
    *(a1 + 32) = v3;
    *(a1 + 40) = 0;
    *(a1 + 48) = 0;
    v9 = v5;
    *(a1 + 56) = v6;
  }

  else
  {
    v8 = v1[4];
    v7 = v1[5];
    v10 = v1[6];
    v9 = v1[7];

    sub_181AB612C(0, 0);
    if (v10)
    {

      swift_unknownObjectRetain();
      sub_181AB612C(0, 0);
    }

    else
    {
      v9 = 0;
    }

    *a1 = 0;
    *(a1 + 8) = v4;
    *(a1 + 16) = v3;
    *(a1 + 24) = v6;
    *(a1 + 32) = v5;
    *(a1 + 40) = v8;
    *(a1 + 48) = v7;
    *(a1 + 56) = v10;
  }

  *(a1 + 64) = v9;
  result = 0.0;
  *(a1 + 72) = xmmword_182AE8230;
  *(a1 + 88) = xmmword_182AE8230;
  *(a1 + 104) = 0;
  *(a1 + 105) = 3;
  return result;
}

char *Listener1.init(using:ready:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = qword_1EA83A1D0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1D8, &qword_182AF3DE0);
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v8 = &v3[qword_1EA83A1E0];
  v8[4] = -4;
  *v8 = 0;
  v9 = *(*v3 + 144);
  v21 = *(v5 + 80);
  v10 = *(v5 + 104);
  v22 = *(v5 + 88);
  v23 = v10;
  type metadata accessor for Connection1(255, &v21);
  v11 = sub_182AD35A8();
  (*(*(v11 - 8) + 56))(&v3[v9], 1, 1, v11);
  v12 = *(*v3 + 152);
  swift_checkMetadataState();
  *&v3[v12] = sub_182AD2E28();
  swift_beginAccess();
  v24 = 0;
  type metadata accessor for NWListener();
  swift_allocObject();

  v14 = NWListener.init(using:on:)(v13, &v24);
  if (v4)
  {

    sub_181F49A88(&v3[v6], &qword_1EA83A1E8, &qword_182AF3DE8);
    v15 = sub_182AD39B8();
    (*(*(v15 - 8) + 8))(&v3[v9], v15);

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 2) = v14;
    v16 = swift_allocObject();
    v16[2] = v3;
    v16[3] = a2;
    v16[4] = a3;

    sub_181AA39C0(sub_1820C5E90, v16);
    NWListener.stateUpdateHandler.setter(sub_1820C5E90, v16);

    sub_181AA39C0(sub_1820CAAA0, v3);
    NWListener.newConnectionHandler.setter(sub_1820CAAA0, v3);

    v17 = qword_1EA837208;

    if (v17 != -1)
    {
      swift_once();
    }

    NWListener.start(queue:)(qword_1EA8433A8);
  }

  return v3;
}

uint64_t Listener1.__allocating_init(for:using:)(__int128 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Listener1.init(for:using:)(a1, a2);
  return v4;
}

void Listener1.init(for:using:)(__int128 *a1, uint64_t a2)
{
  v4 = *v2;
  v5 = a1[3];
  v39 = a1[2];
  v40 = v5;
  v41 = *(a1 + 64);
  v6 = a1[1];
  v37 = *a1;
  v38 = v6;
  v7 = qword_1EA83A1D0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1D8, &qword_182AF3DE0);
  v9 = *(*(v8 - 8) + 56);
  v42 = v7;
  v9(&v2[v7], 1, 1, v8);
  v10 = &v2[qword_1EA83A1E0];
  v10[4] = -4;
  *v10 = 0;
  v11 = *(*v2 + 144);
  *&v28[0] = *(v4 + 80);
  *(v28 + 8) = *(v4 + 88);
  *(&v28[1] + 8) = *(v4 + 104);
  type metadata accessor for Connection1(255, v28);
  v12 = sub_182AD35A8();
  (*(*(v12 - 8) + 56))(&v2[v11], 1, 1, v12);
  v13 = *(*v2 + 152);
  swift_checkMetadataState();
  *&v2[v13] = sub_182AD2E28();
  swift_beginAccess();
  v30[0] = 0;
  type metadata accessor for NWListener();
  swift_allocObject();

  v15 = NWListener.init(using:on:)(v14, v30);
  if (v3)
  {
    sub_1820C5EC0(&v37);

    sub_181F49A88(&v2[v42], &qword_1EA83A1E8, &qword_182AF3DE8);
    v16 = sub_182AD39B8();
    (*(*(v16 - 8) + 8))(&v2[v11], v16);

    swift_deallocPartialClassInstance();
  }

  else
  {
    v17 = v15;
    *(v2 + 2) = v15;
    v26[4] = v39;
    v26[5] = v40;
    v27 = v41;
    v26[2] = v37;
    v26[3] = v38;

    sub_1820ADC2C(&v21);
    v18 = sub_1820C5EC0(&v37);
    v28[4] = v25;
    v29[0] = v26[0];
    *(v29 + 11) = *(v26 + 11);
    v28[2] = v23;
    v28[3] = v24;
    v28[0] = v21;
    v28[1] = v22;
    *(v36 + 11) = *(v26 + 11);
    v33 = v23;
    v34 = v24;
    v35 = v25;
    v36[0] = v26[0];
    v31 = v21;
    v32 = v22;
    v19 = v17[2];
    MEMORY[0x1EEE9AC00](v18);
    os_unfair_lock_lock((v19 + 208));
    sub_181FF0D8C((v19 + 16));
    os_unfair_lock_unlock((v19 + 208));
    sub_181FF0DB0(v28);

    sub_181AA39C0(sub_1820C5EF0, v2);
    NWListener.stateUpdateHandler.setter(sub_1820C5EF0, v2);

    sub_181AA39C0(sub_1820C5F1C, v2);
    NWListener.newConnectionHandler.setter(sub_1820C5F1C, v2);

    v20 = qword_1EA837208;

    if (v20 != -1)
    {
      swift_once();
    }

    NWListener.start(queue:)(qword_1EA8433A8);
  }
}

double Listener1.states.getter@<D0>(void *a1@<X8>)
{
  sub_182185004(sub_1820C5F78, v1, a1);

  return result;
}

char *Listener2.init(using:ready:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = qword_1EA83A1F0;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1D8, &qword_182AF3DE0);
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v8 = &v3[qword_1EA83A1F8];
  v8[4] = -4;
  *v8 = 0;
  v9 = *(*v3 + 144);
  v21 = *(v5 + 80);
  v10 = *(v5 + 104);
  v22 = *(v5 + 88);
  v23 = v10;
  type metadata accessor for Connection1(255, &v21);
  v11 = sub_182AD35A8();
  (*(*(v11 - 8) + 56))(&v3[v9], 1, 1, v11);
  v12 = *(*v3 + 152);
  swift_checkMetadataState();
  *&v3[v12] = sub_182AD2E28();
  swift_beginAccess();
  v24 = 0;
  type metadata accessor for NWListener();
  swift_allocObject();

  v14 = NWListener.init(using:on:)(v13, &v24);
  if (v4)
  {

    sub_181F49A88(&v3[v6], &qword_1EA83A1E8, &qword_182AF3DE8);
    v15 = sub_182AD39B8();
    (*(*(v15 - 8) + 8))(&v3[v9], v15);

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 2) = v14;
    v16 = swift_allocObject();
    v16[2] = v3;
    v16[3] = a2;
    v16[4] = a3;

    sub_181AA39C0(sub_1820C5FB8, v16);
    NWListener.stateUpdateHandler.setter(sub_1820C5FB8, v16);

    sub_181AA39C0(sub_1820CAAA0, v3);
    NWListener.newConnectionHandler.setter(sub_1820CAAA0, v3);

    v17 = qword_1EA837208;

    if (v17 != -1)
    {
      swift_once();
    }

    NWListener.start(queue:)(qword_1EA8433A8);
  }

  return v3;
}

uint64_t sub_1820AEAF8(unsigned int *a1, uint64_t a2, uint64_t (*a3)(int *), uint64_t a4, uint64_t *a5, void *a6)
{
  v24 = a6;
  v27 = a4;
  v28 = a3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A298, &qword_182AF48B8);
  v25 = *(v9 - 8);
  v26 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1E8, &qword_182AF3DE8);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1D8, &qword_182AF3DE0);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v23 - v17;
  v19 = *a1 | (*(a1 + 4) << 32);
  v20 = *a5;
  swift_beginAccess();
  sub_181AB5D28(a2 + v20, v14, &qword_1EA83A1E8, &qword_182AF3DE8);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    result = sub_181F49A88(v14, &qword_1EA83A1E8, &qword_182AF3DE8);
    v22 = a2 + *v24;
    *(v22 + 4) = BYTE4(v19);
    *v22 = v19;
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
    v30 = BYTE4(v19);
    v29 = v19;
    sub_182AD3588();
    (*(v25 + 8))(v11, v26);
    result = (*(v16 + 8))(v18, v15);
  }

  if ((v19 & 0xFFFFFFFFFFLL) == 0x8000000001)
  {
    LOWORD(v29) = nw_listener_get_port(*(*(a2 + 16) + 24));
    return v28(&v29);
  }

  return result;
}

uint64_t sub_1820AEE50(unsigned int *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v22 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A298, &qword_182AF48B8);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1E8, &qword_182AF3DE8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v21 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1D8, &qword_182AF3DE0);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v21 - v15;
  v17 = *a1 | (*(a1 + 4) << 32);
  v18 = *a3;
  swift_beginAccess();
  sub_181AB5D28(a2 + v18, v12, &qword_1EA83A1E8, &qword_182AF3DE8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    result = sub_181F49A88(v12, &qword_1EA83A1E8, &qword_182AF3DE8);
    v20 = a2 + *v22;
    *(v20 + 4) = BYTE4(v17);
    *v20 = v17;
  }

  else
  {
    (*(v14 + 32))(v16, v12, v13);
    v26 = BYTE4(v17);
    v25 = v17;
    sub_182AD3588();
    (*(v23 + 8))(v9, v24);
    return (*(v14 + 8))(v16, v13);
  }

  return result;
}

double Listener2.states.getter@<D0>(void *a1@<X8>)
{
  sub_182185004(sub_1820C6054, v1, a1);

  return result;
}

void sub_1820AF15C(uint64_t a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v25 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A298, &qword_182AF48B8);
  v23 = *(v7 - 8);
  v24 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v22 = &v22 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1E8, &qword_182AF3DE8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v22 - v13;
  v15 = *a3;
  swift_beginAccess();
  sub_181AB5D28(a1 + v15, v14, &qword_1EA83A1E8, &qword_182AF3DE8);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1D8, &qword_182AF3DE0);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v14, 1, v16);
  sub_181F49A88(v14, &qword_1EA83A1E8, &qword_182AF3DE8);
  if (v18 == 1)
  {
    (*(v17 + 16))(v11, a2, v16);
    (*(v17 + 56))(v11, 0, 1, v16);
    swift_beginAccess();
    sub_1820CA468(v11, a1 + v15);
    swift_endAccess();
    v19 = (a1 + *v25);
    if (*(v19 + 4) >> 2 <= 0x3EuLL)
    {
      v20 = *v19 | (*(v19 + 4) << 32);
      v26 = v20;
      v27 = BYTE4(v20);
      v21 = v22;
      sub_182AD3588();
      (*(v23 + 8))(v21, v24);
    }
  }

  else
  {
    sub_182AD3598();
  }
}

uint64_t *sub_1820AF434(void *a1)
{
  v3 = *v1;
  v4 = *v1;

  sub_181F49A88(v1 + *a1, &qword_1EA83A1E8, &qword_182AF3DE8);
  v5 = *(*v1 + 144);
  v9 = *(v3 + 80);
  v6 = *(v4 + 104);
  v10 = *(v4 + 88);
  v11 = v6;
  type metadata accessor for Connection1(255, &v9);
  sub_182AD35A8();
  v7 = sub_182AD39B8();
  (*(*(v7 - 8) + 8))(v1 + v5, v7);

  return v1;
}

char *Listener3.init(for:ready:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = qword_1EA83A200;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1D8, &qword_182AF3DE0);
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v8 = &v3[qword_1EA83A208];
  v8[4] = -4;
  *v8 = 0;
  v9 = *(*v3 + 144);
  v21 = *(v5 + 80);
  v10 = *(v5 + 104);
  v22 = *(v5 + 88);
  v23 = v10;
  type metadata accessor for Connection1(255, &v21);
  v11 = sub_182AD35A8();
  (*(*(v11 - 8) + 56))(&v3[v9], 1, 1, v11);
  v12 = *(*v3 + 152);
  swift_checkMetadataState();
  *&v3[v12] = sub_182AD2E28();
  swift_beginAccess();
  v24 = 0;
  type metadata accessor for NWListener();
  swift_allocObject();

  v14 = NWListener.init(using:on:)(v13, &v24);
  if (v4)
  {

    sub_181F49A88(&v3[v6], &qword_1EA83A1E8, &qword_182AF3DE8);
    v15 = sub_182AD39B8();
    (*(*(v15 - 8) + 8))(&v3[v9], v15);

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 2) = v14;
    v16 = swift_allocObject();
    v16[2] = v3;
    v16[3] = a2;
    v16[4] = a3;

    sub_181AA39C0(sub_1820C6094, v16);
    NWListener.stateUpdateHandler.setter(sub_1820C6094, v16);

    sub_181AA39C0(sub_1820CAAA0, v3);
    NWListener.newConnectionHandler.setter(sub_1820CAAA0, v3);

    v17 = qword_1EA837208;

    if (v17 != -1)
    {
      swift_once();
    }

    NWListener.start(queue:)(qword_1EA8433A8);
  }

  return v3;
}

char *sub_1820AF9F8(unsigned __int16 *a1, uint64_t a2, uint64_t *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v8 = v6;
  v10 = *v6;
  v11 = *v6;
  v12 = *a1;
  v13 = *a3;
  v14 = v11;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1D8, &qword_182AF3DE0);
  v32 = v13;
  (*(*(v15 - 8) + 56))(&v8[v13], 1, 1, v15);
  v16 = &v8[*a4];
  v16[4] = -4;
  *v16 = 0;
  v17 = *(*v8 + 144);
  v34 = *(v10 + 80);
  v18 = *(v14 + 104);
  v35 = *(v14 + 88);
  v36 = v18;
  type metadata accessor for Connection1(255, &v34);
  v19 = sub_182AD35A8();
  v31 = v17;
  (*(*(v19 - 8) + 56))(&v8[v17], 1, 1, v19);
  v20 = *(*v8 + 152);
  swift_checkMetadataState();
  *&v8[v20] = sub_182AD2E28();
  swift_beginAccess();
  v21 = *(*(a2 + 16) + 16);

  os_unfair_lock_lock((v21 + 24));
  v22 = *(v21 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v21 + 24));

  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("::", v12);
  nw_parameters_set_local_endpoint(v22, host_with_numeric_port);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v24 = *(a2 + 16);

  v37 = 0;
  type metadata accessor for NWListener();
  swift_allocObject();
  v25 = NWListener.init(using:on:)(v24, &v37);
  if (v33)
  {

    sub_181F49A88(&v8[v32], &qword_1EA83A1E8, &qword_182AF3DE8);
    v26 = sub_182AD39B8();
    (*(*(v26 - 8) + 8))(&v8[v31], v26);

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v8 + 2) = v25;

    sub_181AA39C0(a5, v8);
    NWListener.stateUpdateHandler.setter(a5, v8);

    sub_181AA39C0(a6, v8);
    NWListener.newConnectionHandler.setter(a6, v8);

    v27 = qword_1EA837208;

    if (v27 != -1)
    {
      swift_once();
    }

    NWListener.start(queue:)(qword_1EA8433A8);
  }

  return v8;
}

double Listener3.states.getter@<D0>(void *a1@<X8>)
{
  sub_182185004(sub_1820C6130, v1, a1);

  return result;
}

uint64_t sub_1820AFEAC(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t))
{
  v8 = swift_allocObject();
  a4(a1, a2, a3);
  return v8;
}

char *Listener4.init(with:ready:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v3;
  v6 = qword_1EA83A210;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1D8, &qword_182AF3DE0);
  (*(*(v7 - 8) + 56))(&v3[v6], 1, 1, v7);
  v8 = &v3[qword_1EA83A218];
  v8[4] = -4;
  *v8 = 0;
  v9 = *(*v3 + 144);
  v21 = *(v5 + 80);
  v10 = *(v5 + 104);
  v22 = *(v5 + 88);
  v23 = v10;
  type metadata accessor for Connection1(255, &v21);
  v11 = sub_182AD35A8();
  (*(*(v11 - 8) + 56))(&v3[v9], 1, 1, v11);
  v12 = *(*v3 + 152);
  swift_checkMetadataState();
  *&v3[v12] = sub_182AD2E28();
  swift_beginAccess();
  v24 = 0;
  type metadata accessor for NWListener();
  swift_allocObject();

  v14 = NWListener.init(using:on:)(v13, &v24);
  if (v4)
  {

    sub_181F49A88(&v3[v6], &qword_1EA83A1E8, &qword_182AF3DE8);
    v15 = sub_182AD39B8();
    (*(*(v15 - 8) + 8))(&v3[v9], v15);

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v3 + 2) = v14;
    v16 = swift_allocObject();
    v16[2] = v3;
    v16[3] = a2;
    v16[4] = a3;

    sub_181AA39C0(sub_1820C61B0, v16);
    NWListener.stateUpdateHandler.setter(sub_1820C61B0, v16);

    sub_181AA39C0(sub_1820CAAA0, v3);
    NWListener.newConnectionHandler.setter(sub_1820CAAA0, v3);

    v17 = qword_1EA837208;

    if (v17 != -1)
    {
      swift_once();
    }

    NWListener.start(queue:)(qword_1EA8433A8);
  }

  return v3;
}

uint64_t sub_1820B0320(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = swift_allocObject();
  a3(a1, a2);
  return v6;
}

uint64_t sub_1820B03D8(uint64_t a1, char *a2)
{
  v3 = *a2;
  v26 = *(*a2 + 80);
  v4 = *(v3 + 104);
  v27 = *(v3 + 88);
  v28 = v4;
  type metadata accessor for Connection1(255, &v26);
  v5 = sub_182AD3558();
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v21 - v6;
  v7 = sub_182AD35A8();
  v8 = sub_182AD39B8();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - v10;
  v12 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v21 - v14;
  swift_checkMetadataState();

  v17 = sub_1821DE4C4(v16);

  v18 = *(*a2 + 144);
  swift_beginAccess();
  (*(v9 + 16))(v11, &a2[v18], v8);
  if ((*(v12 + 48))(v11, 1, v7) == 1)
  {
    (*(v9 + 8))(v11, v8);
    v25 = v17;
    swift_beginAccess();
    sub_182AD3488();

    sub_182AD3468();
    swift_endAccess();
  }

  else
  {
    (*(v12 + 32))(v15, v11, v7);
    v24 = v17;
    v20 = v21;
    sub_182AD3588();
    (*(v22 + 8))(v20, v23);
    return (*(v12 + 8))(v15, v7);
  }
}

double sub_1820B0788@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *v2;
  v8 = *(*v2 + 80);
  v6 = *(v5 + 104);
  v9 = *(v5 + 88);
  v10 = v6;
  type metadata accessor for Connection1(0, &v8);
  sub_182185004(a1, v2, a2);

  return result;
}

uint64_t sub_1820B0834(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v31 = a4;
  v32 = a5;
  v30[2] = a3;
  v7 = *a2;
  v8 = sub_182AD27A8();
  v37 = *(v8 - 8);
  v38 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v36 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_182AD27C8();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v33 = v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v7[10];
  v13 = v7[11];
  v14 = v7[12];
  v15 = v7[13];
  v16 = v7[14];
  aBlock = v12;
  v41 = v13;
  v42 = v14;
  v43 = v15;
  v30[0] = v15;
  v44 = v16;
  type metadata accessor for Connection1(255, &aBlock);
  v17 = sub_182AD35A8();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v30 - v19;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v30[1] = qword_1EA8433A8;
  (*(v18 + 16))(v20, a1, v17);
  v21 = (*(v18 + 80) + 64) & ~*(v18 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = v12;
  *(v22 + 3) = v13;
  MetadataPack = swift_allocateMetadataPack();
  v24 = v30[0];
  *(v22 + 4) = MetadataPack;
  *(v22 + 5) = v24;
  *(v22 + 6) = swift_allocateWitnessTablePack();
  *(v22 + 7) = a2;
  (*(v18 + 32))(&v22[v21], v20, v17);
  v44 = v31;
  v45 = v22;
  aBlock = MEMORY[0x1E69E9820];
  v41 = 1107296256;
  v42 = sub_181B7D048;
  v43 = v32;
  v25 = _Block_copy(&aBlock);

  v26 = v33;
  sub_182AD27B8();
  v39 = MEMORY[0x1E69E7CC0];
  sub_181FE485C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50, &qword_182AF48B0);
  sub_181B7CFE4();
  v27 = v36;
  v28 = v38;
  sub_182AD3AC8();
  MEMORY[0x1865DA490](0, v26, v27, v25);
  _Block_release(v25);
  (*(v37 + 8))(v27, v28);
  (*(v34 + 8))(v26, v35);
}

uint64_t sub_1820B0C54(char *a1, uint64_t a2, uint64_t a3)
{
  v31 = a3;
  v32 = a2;
  v4 = *a1;
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 96);
  v7 = *(*a1 + 104);
  v8 = *(*a1 + 112);
  v29 = *(*a1 + 88);
  v30 = v5;
  v34[0] = v5;
  v34[1] = v29;
  v27 = v7;
  v28 = v6;
  v34[2] = v6;
  v34[3] = v7;
  v26 = v8;
  v34[4] = v8;
  type metadata accessor for Connection1(255, v34);
  v9 = sub_182AD35A8();
  v10 = sub_182AD39B8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = *(v4 + 144);
  swift_beginAccess();
  (*(v11 + 16))(v16, &a1[v17], v10);
  v18 = *(v9 - 8);
  LODWORD(v4) = (*(v18 + 48))(v16, 1, v9);
  (*(v11 + 8))(v16, v10);
  if (v4 != 1)
  {
    return sub_182AD3598();
  }

  v19 = v32;
  (*(v18 + 16))(v13, v32, v9);
  (*(v18 + 56))(v13, 0, 1, v9);
  swift_beginAccess();
  (*(v11 + 40))(&a1[v17], v13, v10);
  swift_endAccess();
  v20 = *(*a1 + 152);
  v21 = swift_beginAccess();
  v33 = *&a1[v20];
  MEMORY[0x1EEE9AC00](v21);
  v22 = v29;
  *(&v25 - 6) = v30;
  *(&v25 - 5) = v22;
  v23 = v27;
  *(&v25 - 4) = v28;
  *(&v25 - 3) = v23;
  *(&v25 - 2) = v26;
  *(&v25 - 1) = v19;
  sub_182AD3488();

  swift_getWitnessTable();
  sub_182AD32F8();

  *&a1[v20] = sub_182AD3418();
}

uint64_t sub_1820B1004(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14[0] = a3;
  v14[1] = a4;
  v14[2] = a5;
  v14[3] = a6;
  v14[4] = a7;
  type metadata accessor for Connection1(255, v14);
  v8 = sub_182AD3558();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v14[-1] - v10;
  v14[0] = *a1;
  sub_182AD35A8();

  sub_182AD3588();
  return (*(v9 + 8))(v11, v8);
}

double Listener4.states.getter@<D0>(void *a1@<X8>)
{
  sub_182185004(sub_1820C624C, v1, a1);

  return result;
}

uint64_t sub_1820B1178(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v24 = a4;
  v25 = a5;
  v23[2] = a3;
  v7 = *a2;
  v8 = sub_182AD27A8();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_182AD27C8();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A1D8, &qword_182AF3DE0);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = v23 - v16;
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  v23[1] = qword_1EA8433A8;
  (*(v15 + 16))(v17, a1, v14);
  v18 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v19 = swift_allocObject();
  *(v19 + 2) = v7[10];
  *(v19 + 3) = v7[11];
  *(v19 + 4) = swift_allocateMetadataPack();
  *(v19 + 5) = v7[13];
  *(v19 + 6) = swift_allocateWitnessTablePack();
  *(v19 + 7) = a2;
  (*(v15 + 32))(&v19[v18], v17, v14);
  aBlock[4] = v24;
  aBlock[5] = v19;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181B7D048;
  aBlock[3] = v25;
  v20 = _Block_copy(aBlock);

  sub_182AD27B8();
  v30 = MEMORY[0x1E69E7CC0];
  sub_181FE485C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839F50, &qword_182AF48B0);
  sub_181B7CFE4();
  v21 = v29;
  sub_182AD3AC8();
  MEMORY[0x1865DA490](0, v13, v10, v20);
  _Block_release(v20);
  (*(v28 + 8))(v10, v21);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_1820B1568(void (*a1)(void))
{
  a1();

  return swift_deallocClassInstance();
}

double Listener5.__allocating_init(using:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = -1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 114) = 1;
  *(v2 + 16) = a1;
  return result;
}

uint64_t Listener5.init(using:)(uint64_t a1)
{
  *(v1 + 72) = 0u;
  *(v1 + 56) = 0u;
  *(v1 + 40) = 0u;
  *(v1 + 24) = 0u;
  *(v1 + 88) = -1;
  *(v1 + 96) = 0;
  *(v1 + 104) = 0;
  *(v1 + 112) = 0;
  *(v1 + 114) = 1;
  *(v1 + 16) = a1;
  return v1;
}

uint64_t Listener5.__allocating_init(for:using:)(unsigned __int16 *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  Listener5.init(for:using:)(a1, a2);
  return v4;
}

uint64_t Listener5.init(for:using:)(unsigned __int16 *a1, uint64_t a2)
{
  v4 = *a1;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 88) = -1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 114) = 1;
  swift_beginAccess();
  v5 = *(*(a2 + 16) + 16);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 24));

  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("::", v4);
  nw_parameters_set_local_endpoint(v6, host_with_numeric_port);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  *(v2 + 16) = a2;
  return v2;
}

uint64_t Listener5.__allocating_init(for:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 24) = 0u;
  *(v4 + 88) = -1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 114) = 1;
  *(v4 + 16) = a2;
  v12 = -1;
  v5 = *(v4 + 40);
  v6 = *(v4 + 72);
  v11[2] = *(v4 + 56);
  v11[3] = v6;
  v11[0] = *(v4 + 24);
  v11[1] = v5;
  v7 = *(a1 + 16);
  *(v4 + 24) = *a1;
  v8 = *(a1 + 32);
  v9 = *(a1 + 48);
  *(v4 + 88) = *(a1 + 64);
  *(v4 + 72) = v9;
  *(v4 + 56) = v8;
  *(v4 + 40) = v7;
  sub_181F49A88(v11, &unk_1EA83A220, &unk_182AF3DF0);
  return v4;
}

uint64_t Listener5.init(for:using:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 88) = -1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 114) = 1;
  *(v2 + 16) = a2;
  v10 = -1;
  v3 = *(v2 + 40);
  v4 = *(v2 + 72);
  v9[2] = *(v2 + 56);
  v9[3] = v4;
  v9[0] = *(v2 + 24);
  v9[1] = v3;
  v5 = *(a1 + 16);
  *(v2 + 24) = *a1;
  v6 = *(a1 + 32);
  v7 = *(a1 + 48);
  *(v2 + 88) = *(a1 + 64);
  *(v2 + 72) = v7;
  *(v2 + 56) = v6;
  *(v2 + 40) = v5;
  sub_181F49A88(v9, &unk_1EA83A220, &unk_182AF3DF0);
  return v2;
}

uint64_t sub_1820B19A4(uint64_t a1, void *a2)
{
  v51 = a1;
  v3 = *(*a2 + 88);
  v4 = *(*a2 + 96);
  v5 = *(*a2 + 104);
  v6 = *(*a2 + 112);
  v46 = *(*a2 + 80);
  *&v71 = v46;
  *(&v71 + 1) = v3;
  v48 = v3;
  v49 = v6;
  *&v72 = v4;
  *(&v72 + 1) = v5;
  v50 = v5;
  *&v73 = v6;
  type metadata accessor for Connection3(255, &v71);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v7 = sub_182AD36C8();
  v45 = *(v7 - 8);
  v8 = *(v45 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v40 - v9;
  v11 = a2[2];
  swift_beginAccess();
  v70 = 0;
  type metadata accessor for NWListener();
  swift_allocObject();

  v13 = NWListener.init(using:on:)(v12, &v70);
  v42 = v10;
  v43 = v8;
  v14 = swift_allocObject();
  v15 = v48;
  v14[2] = v46;
  v14[3] = v15;
  v44 = v4;
  MetadataPack = swift_allocateMetadataPack();
  v17 = v50;
  v14[4] = MetadataPack;
  v14[5] = v17;
  v14[6] = swift_allocateWitnessTablePack();
  v14[7] = v13;

  sub_182AD3688();
  v18 = *(v11 + 40);
  v19 = *(v11 + 56);
  v65 = *(v11 + 88);
  v20 = *(v11 + 72);
  v63 = v19;
  v64 = v20;
  v62 = v18;
  v61 = *(v11 + 24);
  v21 = *(v11 + 40);
  v66 = *(v11 + 24);
  v67 = v21;
  v68 = *(v11 + 56);
  v69 = v20;
  v22 = v7;
  if (v65 != 255)
  {
    v52 = v66;
    v53 = v67;
    v54 = v68;
    v55 = v69;
    v56 = v65;
    v57[2] = v63;
    v57[3] = v64;
    v58 = v65;
    v57[0] = v61;
    v57[1] = v62;
    sub_1820C9F40(v57, &v71);
    sub_1820ADC2C(v59);
    v75 = v59[4];
    v76[0] = v60[0];
    *(v76 + 11) = *(v60 + 11);
    v73 = v59[2];
    v74 = v59[3];
    v71 = v59[0];
    v72 = v59[1];
    v23 = v13[2];
    MEMORY[0x1EEE9AC00](v24);
    *(&v40 - 2) = &v71;
    *(&v40 - 1) = v13;
    os_unfair_lock_lock((v23 + 208));
    sub_181FF1D1C((v23 + 16));
    os_unfair_lock_unlock((v23 + 208));
    sub_181F49A88(&v61, &unk_1EA83A220, &unk_182AF3DF0);
    sub_181FF0DB0(v59);
    v22 = v7;
  }

  v25 = v45;
  v47 = v13;
  v26 = *(v45 + 16);
  v40 = v45 + 16;
  v41 = v26;
  v27 = v42;
  v26(v42, v51, v22);
  v28 = *(v25 + 80);
  v29 = swift_allocObject();
  v30 = v46;
  v31 = v48;
  *(v29 + 2) = v46;
  *(v29 + 3) = v31;
  v32 = swift_allocateMetadataPack();
  v33 = v50;
  *(v29 + 4) = v32;
  *(v29 + 5) = v33;
  *(v29 + 6) = swift_allocateWitnessTablePack();
  *(v29 + 7) = a2;
  *(v29 + 8) = v47;
  v34 = *(v25 + 32);
  v34(&v29[(v28 + 72) & ~v28], v27, v22);

  sub_181AA39C0(sub_1820CA300, v29);
  NWListener.stateUpdateHandler.setter(sub_1820CA300, v29);

  v41(v27, v51, v22);
  v35 = swift_allocObject();
  v36 = v48;
  *(v35 + 2) = v30;
  *(v35 + 3) = v36;
  v37 = swift_allocateMetadataPack();
  v38 = v50;
  *(v35 + 4) = v37;
  *(v35 + 5) = v38;
  *(v35 + 6) = swift_allocateWitnessTablePack();
  v34(&v35[(v28 + 56) & ~v28], v27, v22);
  sub_181AA39C0(sub_1820CA414, v35);
  NWListener.newConnectionHandler.setter(sub_1820CA414, v35);

  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  NWListener.start(queue:)(qword_1EA8433A8);
}

uint64_t Listener5.AsyncSequenceConnections.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1820B1F8C()
{
  Listener5.AsyncSequenceConnections.makeAsyncIterator()();
}

uint64_t Listener5.__deallocating_deinit()
{
  Listener5.deinit();

  return swift_deallocClassInstance();
}

uint64_t Listener6.__allocating_init(using:where:)(void (*a1)(char *, __n128), uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  Listener6.init(using:where:)(a1, a2, a3);
  return v6;
}

uint64_t Listener6.init(using:where:)(void (*TupleTypeMetadata)(char *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  v6 = *(*v3 + 80);
  if (v6)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = (v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v10 = *(v9 + 88);
    v11 = *(v9 + 96);
    *v8 = v10;
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if (v6 >= 6 && v8 - v12 + 8 >= 0x20)
    {
      v13 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v40 = v8 + 3;
      v41 = (v12 + 16);
      v42 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v43 = *v41;
        *(v40 - 1) = *(v41 - 1);
        *v40 = v43;
        v40 += 2;
        v41 += 2;
        v42 -= 4;
      }

      while (v42);
      if (v6 == v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v6 - v13;
    v15 = 8 * v13;
    v16 = &v8[v13 + 1];
    v17 = (v12 + v15);
    do
    {
      v18 = *v17++;
      *v16++ = v18;
      --v14;
    }

    while (v14);
LABEL_7:
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v19 = TupleTypeMetadata;
    goto LABEL_9;
  }

  v19 = *(*v3 + 88);
LABEL_9:
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = v44 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44[1] = v44;
  *(v3 + 72) = 0u;
  *(v3 + 56) = 0u;
  *(v3 + 40) = 0u;
  *(v3 + 24) = 0u;
  *(v3 + 88) = -1;
  *(v3 + 96) = 0;
  *(v3 + 104) = 0;
  *(v3 + 112) = 0;
  *(v3 + 114) = 1;
  v24.n128_f64[0] = MEMORY[0x1EEE9AC00](v23);
  v26 = v44 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = v3;
  if (v6)
  {
    v27 = (v19 + 48);
    v28 = v26;
    do
    {
      v29 = *v27;
      v27 += 4;
      *v28++ = &v22[v29];
      --v6;
    }

    while (v6);
    v30 = *(v19 + 32);
  }

  else
  {
    v30 = 0;
  }

  v5(&v22[v30], v24);
  v31 = sub_182185B3C(v22, v19);
  result = (*(v20 + 8))(v22, v19);
  v33 = v31[2];
  if (v33)
  {
    v34 = 0;
    v35 = (v31 + 4);
    while (v34 < v31[2])
    {
      sub_181F75240(v35, v46);
      ++v34;
      v36 = v47;
      v37 = v48;
      __swift_project_boxed_opaque_existential_1(v46, v47);
      v38 = *(a3 + 16);
      os_unfair_lock_lock((v38 + 24));
      v39 = *(v38 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v38 + 24));
      (*(v37 + 56))(v39, v36, v37);
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1(v46);
      v35 += 40;
      if (v33 == v34)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    result = v45;
    *(v45 + 16) = a3;
  }

  return result;
}

uint64_t Listener6.__allocating_init(for:using:where:)(unsigned __int16 *a1, void (*a2)(_BYTE *, __n128), uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  Listener6.init(for:using:where:)(a1, a2, a3, a4);
  return v8;
}

uint64_t Listener6.init(for:using:where:)(unsigned __int16 *TupleTypeMetadata, void (*a2)(_BYTE *, __n128), uint64_t a3, uint64_t a4)
{
  v7 = TupleTypeMetadata;
  v8 = *(*v4 + 80);
  if (v8)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = &v49[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
    v12 = *(v11 + 88);
    v13 = *(v11 + 96);
    *v10 = v12;
    v14 = v13 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 >= 6 && v10 - v14 + 8 >= 0x20)
    {
      v15 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v45 = v10 + 3;
      v46 = (v14 + 16);
      v47 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v48 = *v46;
        *(v45 - 1) = *(v46 - 1);
        *v45 = v48;
        v45 += 2;
        v46 += 2;
        v47 -= 4;
      }

      while (v47);
      if (v8 == v15)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v15 = 0;
    }

    v16 = v8 - v15;
    v17 = 8 * v15;
    v18 = &v10[v15 + 1];
    v19 = (v14 + v17);
    do
    {
      v20 = *v19++;
      *v18++ = v20;
      --v16;
    }

    while (v16);
LABEL_7:
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v21 = TupleTypeMetadata;
    goto LABEL_9;
  }

  v21 = *(*v4 + 88);
LABEL_9:
  v22 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v24 = &v49[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v51 = v49;
  v50 = *v7;
  *(v4 + 24) = 0u;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 88) = -1;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  *(v4 + 114) = 1;
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v25);
  v28 = &v49[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v52 = v4;
  if (v8)
  {
    v29 = (v21 + 48);
    v30 = v28;
    do
    {
      v31 = *v29;
      v29 += 4;
      *v30++ = &v24[v31];
      --v8;
    }

    while (v8);
    v32 = *(v21 + 32);
  }

  else
  {
    v32 = 0;
  }

  a2(&v24[v32], v26);
  v33 = sub_182185B3C(v24, v21);
  result = (*(v22 + 8))(v24, v21);
  v35 = v33[2];
  if (v35)
  {
    v36 = 0;
    v37 = (v33 + 4);
    while (v36 < v33[2])
    {
      sub_181F75240(v37, v53);
      ++v36;
      v38 = v54;
      v39 = v55;
      __swift_project_boxed_opaque_existential_1(v53, v54);
      v40 = *(a4 + 16);
      os_unfair_lock_lock((v40 + 24));
      v41 = *(v40 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v40 + 24));
      (*(v39 + 56))(v41, v38, v39);
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1(v53);
      v37 += 40;
      if (v35 == v36)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    v42 = *(a4 + 16);
    os_unfair_lock_lock((v42 + 24));
    v43 = *(v42 + 16);
    swift_unknownObjectRetain();
    os_unfair_lock_unlock((v42 + 24));
    host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("::", v50);
    nw_parameters_set_local_endpoint(v43, host_with_numeric_port);
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();
    result = v52;
    *(v52 + 16) = a4;
  }

  return result;
}

uint64_t Listener6.__allocating_init(for:using:where:)(uint64_t a1, void (*a2)(char *, __n128), uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  Listener6.init(for:using:where:)(a1, a2, a3, a4);
  return v8;
}

uint64_t Listener6.init(for:using:where:)(uint64_t TupleTypeMetadata, void (*a2)(char *, __n128), uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v6 = TupleTypeMetadata;
  v7 = *(*v4 + 80);
  if (v7)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v9 = (v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = *(v10 + 88);
    v12 = *(v10 + 96);
    *v9 = v11;
    v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
    if (v7 >= 6 && v9 - v13 + 8 >= 0x20)
    {
      v14 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      v49 = v9 + 3;
      v50 = (v13 + 16);
      v51 = v7 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v52 = *v50;
        *(v49 - 1) = *(v50 - 1);
        *v49 = v52;
        v49 += 2;
        v50 += 2;
        v51 -= 4;
      }

      while (v51);
      if (v7 == v14)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = v7 - v14;
    v16 = 8 * v14;
    v17 = &v9[v14 + 1];
    v18 = (v13 + v16);
    do
    {
      v19 = *v18++;
      *v17++ = v19;
      --v15;
    }

    while (v15);
LABEL_7:
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v20 = TupleTypeMetadata;
    goto LABEL_9;
  }

  v20 = *(*v4 + 88);
LABEL_9:
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v23 = v53 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53[1] = v53;
  v24 = *(v6 + 48);
  v63 = *(v6 + 32);
  v64 = v24;
  v65 = *(v6 + 64);
  v25 = *(v6 + 16);
  v61 = *v6;
  v62 = v25;
  v54 = v4;
  *(v4 + 24) = 0u;
  v26 = (v4 + 24);
  *(v4 + 88) = -1;
  *(v4 + 114) = 1;
  *(v4 + 40) = 0u;
  *(v4 + 56) = 0u;
  *(v4 + 72) = 0u;
  *(v4 + 96) = 0;
  *(v4 + 104) = 0;
  *(v4 + 112) = 0;
  v28.n128_f64[0] = MEMORY[0x1EEE9AC00](v27);
  v30 = v53 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v7)
  {
    v31 = (v20 + 48);
    v32 = v30;
    do
    {
      v33 = *v31;
      v31 += 4;
      *v32++ = &v23[v33];
      --v7;
    }

    while (v7);
    v34 = *(v20 + 32);
  }

  else
  {
    v34 = 0;
  }

  a2(&v23[v34], v28);
  v35 = sub_182185B3C(v23, v20);
  result = (*(v21 + 8))(v23, v20);
  v37 = v35[2];
  if (v37)
  {
    v38 = 0;
    v39 = (v35 + 4);
    while (v38 < v35[2])
    {
      sub_181F75240(v39, v58);
      ++v38;
      v40 = v59;
      v41 = v60;
      __swift_project_boxed_opaque_existential_1(v58, v59);
      v42 = *(v55 + 16);
      os_unfair_lock_lock((v42 + 24));
      v43 = *(v42 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v42 + 24));
      (*(v41 + 56))(v43, v40, v41);
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1(v58);
      v39 += 40;
      if (v37 == v38)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_18:

    v44 = v54;
    *(v54 + 16) = v55;
    v45 = *(v4 + 72);
    v56[2] = *(v4 + 56);
    v56[3] = v45;
    v57 = *(v4 + 88);
    v46 = *v26;
    v56[1] = *(v4 + 40);
    v56[0] = v46;
    v47 = v62;
    *v26 = v61;
    *(v4 + 40) = v47;
    v48 = v64;
    *(v4 + 56) = v63;
    *(v4 + 72) = v48;
    *(v4 + 88) = v65;
    sub_181F49A88(v56, &unk_1EA83A220, &unk_182AF3DF0);
    return v44;
  }

  return result;
}

uint64_t sub_1820B2CC8(uint64_t a1, void *a2)
{
  v58 = a1;
  v3 = *(*a2 + 88);
  v4 = *(*a2 + 96);
  v5 = *(*a2 + 104);
  v6 = *(*a2 + 112);
  v54 = *(*a2 + 80);
  *&v78 = v54;
  *(&v78 + 1) = v3;
  *&v79 = v4;
  *(&v79 + 1) = v5;
  v56 = v6;
  v57 = v5;
  *&v80 = v6;
  type metadata accessor for Connection4(255, &v78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v7 = sub_182AD36C8();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v46 - v9;
  v11 = a2[2];
  v77 = 0;
  type metadata accessor for NWListener();
  swift_allocObject();

  v13 = NWListener.init(using:on:)(v12, &v77);
  v50 = v8;
  v48 = v10;
  v14 = v13;
  v15 = swift_allocObject();
  v15[2] = v54;
  v15[3] = v3;
  v51 = v4;
  v52 = v3;
  v16 = v14;
  MetadataPack = swift_allocateMetadataPack();
  v18 = v57;
  v15[4] = MetadataPack;
  v15[5] = v18;
  v15[6] = swift_allocateWitnessTablePack();
  v15[7] = v14;

  v19 = v58;
  sub_182AD3688();
  v20 = *(v11 + 40);
  v21 = *(v11 + 56);
  v72 = *(v11 + 88);
  v22 = *(v11 + 72);
  v70 = v21;
  v71 = v22;
  v69 = v20;
  v68 = *(v11 + 24);
  v23 = *(v11 + 40);
  v73 = *(v11 + 24);
  v74 = v23;
  v75 = *(v11 + 56);
  v76 = v22;
  v49 = v7;
  if (v72 != 255)
  {
    v59 = v73;
    v60 = v74;
    v61 = v75;
    v62 = v76;
    v63 = v72;
    v64[2] = v70;
    v64[3] = v71;
    v65 = v72;
    v64[0] = v68;
    v64[1] = v69;
    sub_1820C9F40(v64, &v78);
    sub_1820ADC2C(v66);
    v82 = v66[4];
    v83[0] = v67[0];
    *(v83 + 11) = *(v67 + 11);
    v80 = v66[2];
    v81 = v66[3];
    v78 = v66[0];
    v79 = v66[1];
    v24 = v16[2];
    MEMORY[0x1EEE9AC00](v25);
    v46[-2] = &v78;
    v46[-1] = v16;
    os_unfair_lock_lock((v24 + 208));
    sub_181FF1D1C((v24 + 16));
    os_unfair_lock_unlock((v24 + 208));
    sub_181F49A88(&v68, &unk_1EA83A220, &unk_182AF3DF0);
    sub_181FF0DB0(v66);
  }

  v26 = v53;
  v27 = *(v53 + 16);
  v46[1] = v53 + 16;
  v47 = v27;
  v55 = v16;
  v29 = v48;
  v28 = v49;
  v27(v48, v19, v49);
  v30 = *(v26 + 80);
  v31 = swift_allocObject();
  v32 = v54;
  v33 = v52;
  *(v31 + 2) = v54;
  *(v31 + 3) = v33;
  v34 = v32;
  v35 = swift_allocateMetadataPack();
  v36 = v57;
  *(v31 + 4) = v35;
  *(v31 + 5) = v36;
  *(v31 + 6) = swift_allocateWitnessTablePack();
  *(v31 + 7) = a2;
  *(v31 + 8) = v55;
  v37 = *(v26 + 32);
  v37(&v31[(v30 + 72) & ~v30], v29, v28);

  sub_181AA39C0(sub_1820C9F78, v31);
  NWListener.stateUpdateHandler.setter(sub_1820C9F78, v31);

  v38 = v29;
  v39 = v29;
  v40 = v49;
  v47(v39, v58, v49);
  v41 = swift_allocObject();
  v42 = v52;
  *(v41 + 2) = v34;
  *(v41 + 3) = v42;
  v43 = swift_allocateMetadataPack();
  v44 = v57;
  *(v41 + 4) = v43;
  *(v41 + 5) = v44;
  *(v41 + 6) = swift_allocateWitnessTablePack();
  v37(&v41[(v30 + 56) & ~v30], v38, v40);
  sub_181AA39C0(sub_1820CA098, v41);
  NWListener.newConnectionHandler.setter(sub_1820CA098, v41);

  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  NWListener.start(queue:)(qword_1EA8433A8);
}

uint64_t sub_1820B3244()
{
  Listener6.AsyncSequenceConnections.makeAsyncIterator()();
}

uint64_t Listener6.__deallocating_deinit()
{
  Listener6.deinit();

  return swift_deallocClassInstance();
}

uint64_t _s7Network9Listener5C4portAA10NWEndpointO4PortVSgvg_0@<X0>(uint64_t a1@<X8>)
{
  result = swift_beginAccess();
  v4 = *(v1 + 114);
  *a1 = *(v1 + 112);
  *(a1 + 2) = v4;
  return result;
}

uint64_t _s7Network9Listener5C4portAA10NWEndpointO4PortVSgvs_0(__int16 *a1)
{
  v2 = *a1;
  v3 = *(a1 + 2);
  result = swift_beginAccess();
  *(v1 + 112) = v2;
  *(v1 + 114) = v3;
  return result;
}

uint64_t sub_1820B3418(uint64_t a1, uint64_t a2)
{
  *(v2 + 72) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 24) = 0u;
  *(v2 + 88) = -1;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 114) = 1;
  v3 = a2;
  v21 = a1;
  if (a2)
  {
    goto LABEL_4;
  }

  v4 = sub_1821DE5E4(&v21);
  if (v4)
  {
    v3 = v4;

LABEL_4:
    v5 = *(v3 + 16);
    swift_retain_n();
    goto LABEL_5;
  }

  type metadata accessor for NWParameters();
  v3 = swift_allocObject();
  v16 = nw_parameters_create();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA839A00, &qword_182AEE4C0);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  *(v5 + 16) = v16;
  *(v3 + 16) = v5;
LABEL_5:
  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v5 + 24));
  nw_parameters_set_attach_protocol_listener(v6);
  result = swift_unknownObjectRelease();
  v8 = v21;
  v9 = *(v21 + 16);
  if (v9)
  {
    v10 = 0;
    v11 = v21 + 32;
    while (v10 < *(v8 + 16))
    {
      sub_181F75240(v11, v18);
      ++v10;
      v12 = v19;
      v13 = v20;
      __swift_project_boxed_opaque_existential_1(v18, v19);
      v14 = *(v3 + 16);
      os_unfair_lock_lock((v14 + 24));
      v15 = *(v14 + 16);
      swift_unknownObjectRetain();
      os_unfair_lock_unlock((v14 + 24));
      (*(v13 + 56))(v15, v12, v13);
      swift_unknownObjectRelease();
      result = __swift_destroy_boxed_opaque_existential_1(v18);
      v11 += 40;
      if (v9 == v10)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:

    result = v17;
    *(v17 + 16) = v3;
  }

  return result;
}

uint64_t Listener7.__allocating_init(using:where:)(void (*TupleTypeMetadata)(char *, __n128), uint64_t a2, uint64_t a3)
{
  v5 = TupleTypeMetadata;
  v6 = v3[10];
  if (v6)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v8 = (&v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
    v9 = v3[12];
    *v8 = v3[11];
    v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
    if (v6 >= 6 && v8 - v10 + 8 >= 0x20)
    {
      v11 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      v31 = v8 + 3;
      v32 = (v10 + 16);
      v33 = v6 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v34 = *v32;
        *(v31 - 1) = *(v32 - 1);
        *v31 = v34;
        v31 += 2;
        v32 += 2;
        v33 -= 4;
      }

      while (v33);
      if (v6 == v11)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v11 = 0;
    }

    v12 = v6 - v11;
    v13 = 8 * v11;
    v14 = &v8[v11 + 1];
    v15 = (v10 + v13);
    do
    {
      v16 = *v15++;
      *v14++ = v16;
      --v12;
    }

    while (v12);
LABEL_7:
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v17 = TupleTypeMetadata;
    goto LABEL_9;
  }

  v17 = v3[11];
LABEL_9:
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v21);
  v24 = &v35 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v6)
  {
    v25 = (v17 + 48);
    v26 = v24;
    do
    {
      v27 = *v25;
      v25 += 4;
      *v26++ = &v20[v27];
      --v6;
    }

    while (v6);
    v28 = *(v17 + 32);
  }

  else
  {
    v28 = 0;
  }

  v5(&v20[v28], v22);
  v29 = sub_182185B3C(v20, v17);
  (*(v18 + 8))(v20, v17);
  swift_allocObject();
  return sub_1820B3418(v29, a3);
}

void Listener7.__allocating_init(for:where:)()
{
  sub_182AD3EA8();
  __break(1u);
}

{
  sub_182AD3EA8();
  __break(1u);
}

uint64_t Listener7.__allocating_init(for:using:where:)(unsigned __int16 *TupleTypeMetadata, void (*a2)(char *, __n128), uint64_t a3, uint64_t a4)
{
  v7 = TupleTypeMetadata;
  v8 = v4[10];
  if (v8)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = (&v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = v4[12];
    *v10 = v4[11];
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 >= 6 && v10 - v12 + 8 >= 0x20)
    {
      v13 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v38 = v10 + 3;
      v39 = (v12 + 16);
      v40 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v41 = *v39;
        *(v38 - 1) = *(v39 - 1);
        *v38 = v41;
        v38 += 2;
        v39 += 2;
        v40 -= 4;
      }

      while (v40);
      if (v8 == v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v8 - v13;
    v15 = 8 * v13;
    v16 = &v10[v13 + 1];
    v17 = (v12 + v15);
    do
    {
      v18 = *v17++;
      *v16++ = v18;
      --v14;
    }

    while (v14);
LABEL_7:
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v19 = TupleTypeMetadata;
    goto LABEL_9;
  }

  v19 = v4[11];
LABEL_9:
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *v7;
  v25.n128_f64[0] = MEMORY[0x1EEE9AC00](v24);
  v27 = &v42 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    v28 = (v19 + 48);
    v29 = v27;
    do
    {
      v30 = *v28;
      v28 += 4;
      *v29++ = &v22[v30];
      --v8;
    }

    while (v8);
    v31 = *(v19 + 32);
  }

  else
  {
    v31 = 0;
  }

  a2(&v22[v31], v25);
  v32 = sub_182185B3C(v22, v19);
  (*(v20 + 8))(v22, v19);
  swift_allocObject();

  v33 = sub_1820B3418(v32, a4);
  v34 = *(*(v33 + 16) + 16);

  os_unfair_lock_lock((v34 + 24));
  v35 = *(v34 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v34 + 24));

  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("::", v23);
  nw_parameters_set_local_endpoint(v35, host_with_numeric_port);

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v33;
}

uint64_t Listener7.__allocating_init(for:using:where:)(uint64_t TupleTypeMetadata, void (*a2)(char *, __n128), uint64_t a3, uint64_t a4)
{
  v7 = TupleTypeMetadata;
  v8 = v4[10];
  if (v8)
  {
    MEMORY[0x1EEE9AC00](TupleTypeMetadata);
    v10 = (v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
    v11 = v4[12];
    *v10 = v4[11];
    v12 = v11 & 0xFFFFFFFFFFFFFFFELL;
    if (v8 >= 6 && v10 - v12 + 8 >= 0x20)
    {
      v13 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      v41 = v10 + 3;
      v42 = (v12 + 16);
      v43 = v8 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        v44 = *v42;
        *(v41 - 1) = *(v42 - 1);
        *v41 = v44;
        v41 += 2;
        v42 += 2;
        v43 -= 4;
      }

      while (v43);
      if (v8 == v13)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v13 = 0;
    }

    v14 = v8 - v13;
    v15 = 8 * v13;
    v16 = &v10[v13 + 1];
    v17 = (v12 + v15);
    do
    {
      v18 = *v17++;
      *v16++ = v18;
      --v14;
    }

    while (v14);
LABEL_7:
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    v19 = TupleTypeMetadata;
    goto LABEL_9;
  }

  v19 = v4[11];
LABEL_9:
  v20 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](TupleTypeMetadata);
  v22 = v45 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v7 + 48);
  v49 = *(v7 + 32);
  v50 = v23;
  v51 = *(v7 + 64);
  v24 = *(v7 + 16);
  v47 = *v7;
  v48 = v24;
  v26.n128_f64[0] = MEMORY[0x1EEE9AC00](v25);
  v28 = v45 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v8)
  {
    v29 = (v19 + 48);
    v30 = v28;
    do
    {
      v31 = *v29;
      v29 += 4;
      *v30++ = &v22[v31];
      --v8;
    }

    while (v8);
    v32 = *(v19 + 32);
  }

  else
  {
    v32 = 0;
  }

  a2(&v22[v32], v26);
  v33 = sub_182185B3C(v22, v19);
  (*(v20 + 8))(v22, v19);
  swift_allocObject();
  v34 = sub_1820B3418(v33, a4);
  v35 = *(v34 + 40);
  v36 = *(v34 + 56);
  v46 = *(v34 + 88);
  v37 = *(v34 + 72);
  v45[2] = v36;
  v45[3] = v37;
  v45[1] = v35;
  v45[0] = *(v34 + 24);
  v38 = v49;
  *(v34 + 72) = v50;
  v39 = v47;
  *(v34 + 40) = v48;
  *(v34 + 88) = v51;
  *(v34 + 56) = v38;
  *(v34 + 24) = v39;

  sub_181F49A88(v45, &unk_1EA83A220, &unk_182AF3DF0);

  return v34;
}

double sub_1820B3F48(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *(v3 + 96);
  v5 = *(v3 + 104);
  *(v3 + 96) = a1;
  *(v3 + 104) = a2;
  a3(v6, v5);

  return result;
}

uint64_t sub_1820B3FC4(uint64_t (*a1)(uint64_t, uint64_t *), uint64_t a2)
{
  v3 = *v2;
  v16 = *(*v2 + 80);
  v4 = *(v3 + 104);
  v17 = *(v3 + 88);
  v18 = v4;
  a1(255, &v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD3698();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - v7;
  v9 = sub_182AD3728();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v15 - v12;
  (*(v6 + 104))(v8, *MEMORY[0x1E69E8790], v5, v11);
  sub_182AD3738();
  sub_182AD35B8();
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_1820B4200(uint64_t a1, void *a2)
{
  v58 = a1;
  v3 = *(*a2 + 88);
  v4 = *(*a2 + 96);
  v5 = *(*a2 + 104);
  v6 = *(*a2 + 112);
  v54 = *(*a2 + 80);
  *&v78 = v54;
  *(&v78 + 1) = v3;
  *&v79 = v4;
  *(&v79 + 1) = v5;
  v56 = v6;
  v57 = v5;
  *&v80 = v6;
  type metadata accessor for Connection5(255, &v78);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v7 = sub_182AD36C8();
  v53 = *(v7 - 8);
  v8 = *(v53 + 64);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v46 - v9;
  v11 = a2[2];
  v77 = 0;
  type metadata accessor for NWListener();
  swift_allocObject();

  v13 = NWListener.init(using:on:)(v12, &v77);
  v50 = v8;
  v48 = v10;
  v14 = v13;
  v15 = swift_allocObject();
  v15[2] = v54;
  v15[3] = v3;
  v51 = v4;
  v52 = v3;
  v16 = v14;
  MetadataPack = swift_allocateMetadataPack();
  v18 = v57;
  v15[4] = MetadataPack;
  v15[5] = v18;
  v15[6] = swift_allocateWitnessTablePack();
  v15[7] = v14;

  v19 = v58;
  sub_182AD3688();
  v20 = *(v11 + 40);
  v21 = *(v11 + 56);
  v72 = *(v11 + 88);
  v22 = *(v11 + 72);
  v70 = v21;
  v71 = v22;
  v69 = v20;
  v68 = *(v11 + 24);
  v23 = *(v11 + 40);
  v73 = *(v11 + 24);
  v74 = v23;
  v75 = *(v11 + 56);
  v76 = v22;
  v49 = v7;
  if (v72 != 255)
  {
    v59 = v73;
    v60 = v74;
    v61 = v75;
    v62 = v76;
    v63 = v72;
    v64[2] = v70;
    v64[3] = v71;
    v65 = v72;
    v64[0] = v68;
    v64[1] = v69;
    sub_1820C9F40(v64, &v78);
    sub_1820ADC2C(v66);
    v82 = v66[4];
    v83[0] = v67[0];
    *(v83 + 11) = *(v67 + 11);
    v80 = v66[2];
    v81 = v66[3];
    v78 = v66[0];
    v79 = v66[1];
    v24 = v16[2];
    MEMORY[0x1EEE9AC00](v25);
    v46[-2] = &v78;
    v46[-1] = v16;
    os_unfair_lock_lock((v24 + 208));
    sub_181FF1D1C((v24 + 16));
    os_unfair_lock_unlock((v24 + 208));
    sub_181F49A88(&v68, &unk_1EA83A220, &unk_182AF3DF0);
    sub_181FF0DB0(v66);
  }

  v26 = v53;
  v27 = *(v53 + 16);
  v46[1] = v53 + 16;
  v47 = v27;
  v55 = v16;
  v29 = v48;
  v28 = v49;
  v27(v48, v19, v49);
  v30 = *(v26 + 80);
  v31 = swift_allocObject();
  v32 = v54;
  v33 = v52;
  *(v31 + 2) = v54;
  *(v31 + 3) = v33;
  v34 = v32;
  v35 = swift_allocateMetadataPack();
  v36 = v57;
  *(v31 + 4) = v35;
  *(v31 + 5) = v36;
  *(v31 + 6) = swift_allocateWitnessTablePack();
  *(v31 + 7) = a2;
  *(v31 + 8) = v55;
  v37 = *(v26 + 32);
  v37(&v31[(v30 + 72) & ~v30], v29, v28);

  sub_181AA39C0(sub_1820C9EC0, v31);
  NWListener.stateUpdateHandler.setter(sub_1820C9EC0, v31);

  v38 = v29;
  v39 = v29;
  v40 = v49;
  v47(v39, v58, v49);
  v41 = swift_allocObject();
  v42 = v52;
  *(v41 + 2) = v34;
  *(v41 + 3) = v42;
  v43 = swift_allocateMetadataPack();
  v44 = v57;
  *(v41 + 4) = v43;
  *(v41 + 5) = v44;
  *(v41 + 6) = swift_allocateWitnessTablePack();
  v37(&v41[(v30 + 56) & ~v30], v38, v40);
  sub_181AA39C0(sub_1820C9F00, v41);
  NWListener.newConnectionHandler.setter(sub_1820C9F00, v41);

  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  NWListener.start(queue:)(qword_1EA8433A8);
}

unsigned int *sub_1820B477C(unsigned int *result, uint64_t *a2, uint64_t a3, uint64_t a4, void (*a5)(uint64_t, uint64_t *, uint64_t, uint64_t), uint64_t (*a6)(void (*)(uint64_t, uint64_t *, __n128), uint64_t))
{
  v8 = *a2;
  v9 = *result | (*(result + 4) << 32);
  v10 = *(result + 4) >> 6;
  if (v10 == 1)
  {
    v12 = *a2;
    sub_181F4B3B8();
    v13 = swift_allocError();
    *v14 = v9;
    *(v14 + 4) = BYTE4(v9) & 0x3F;
    v23 = v13;
    v20 = *(v12 + 80);
    v21 = *(v12 + 88);
    v22 = *(v12 + 104);
    (a5)(255, &v20);
LABEL_7:
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
    sub_182AD36C8();
    result = sub_182AD36B8();
    goto LABEL_8;
  }

  if (v10 != 2)
  {
    goto LABEL_8;
  }

  if (v9 != 0x8000000001)
  {
    if (v9 != 0x8000000002)
    {
      goto LABEL_8;
    }

    v23 = 0;
    v20 = *(v8 + 80);
    v21 = *(v8 + 88);
    v22 = *(v8 + 104);
    a5(255, &v20, a3, a4);
    goto LABEL_7;
  }

  v18 = a2[2];
  port = nw_listener_get_port(*(a3 + 24));
  result = swift_beginAccess();
  *(v18 + 112) = port;
  *(v18 + 114) = 0;
LABEL_8:
  v15 = a2[2];
  v16 = *(v15 + 96);
  if (v16)
  {
    v17 = *(v15 + 104);
    BYTE4(v23) = BYTE4(v9);
    LODWORD(v23) = v9;

    (v16)(v15, &v23);
    return a6(v16, v17);
  }

  return result;
}

uint64_t sub_1820B4968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t (*a8)(uint64_t, void *), uint64_t (*a9)(uint64_t))
{
  v16[0] = a3;
  v16[1] = a4;
  v16[2] = a5;
  v16[3] = a6;
  v16[4] = a7;
  a8(255, v16);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v10 = sub_182AD3678();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v16[-1] - v12;
  swift_checkMetadataState();
  v16[0] = a9(a1);
  sub_182AD36C8();

  sub_182AD36A8();
  return (*(v11 + 8))(v13, v10);
}

uint64_t sub_1820B4AE4()
{
  Listener7.AsyncSequenceConnections.makeAsyncIterator()();
}

uint64_t sub_1820B4B34(uint64_t (*a1)(void, uint64_t *))
{
  v2 = *v1;
  v6 = *(*v1 + 80);
  v3 = *(v2 + 104);
  v7 = *(v2 + 88);
  v8 = v3;
  a1(0, &v6);
  v4 = swift_allocObject();
  *(v4 + 16) = v1;

  return v4;
}

uint64_t sub_1820B4BF4(void (*a1)(void, void))
{

  sub_1820C62AC(*(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 72), *(v1 + 80), *(v1 + 88));
  a1(*(v1 + 96), *(v1 + 104));
  return v1;
}

uint64_t Listener7.__deallocating_deinit()
{
  Listener7.deinit();

  return swift_deallocClassInstance();
}

uint64_t Listener8.__allocating_init<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  Listener8.init<A>(using:)(a1, a2, a3, a4);
  return v8;
}

uint64_t Listener8.__allocating_init<A>(on:using:)(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  Listener8.init<A>(on:using:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t Listener8.__allocating_init<A>(provider:using:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  Listener8.init<A>(provider:using:)(a1, a2, a3, a4, a5);
  return v10;
}

void Listener8.init<A>(provider:using:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(*v5 + 80);
  v12 = *(*v5 + 88);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  *&v33 = 0;
  locked = type metadata accessor for Listener8.LockedState(0, v11, v12, a4);
  v14 = sub_1820C6398(&v29, locked);
  (*(*(locked - 8) + 8))(&v29, locked);
  *(v6 + 24) = v14;
  v35 = v9;
  v36 = v10;
  *&v29 = a3;
  *(&v29 + 1) = v11;
  *&v30 = a4;
  *(&v30 + 1) = v12;
  *&v31 = a5;
  v15 = type metadata accessor for NWParametersBuilder(0, &v29);
  v16 = NWParametersBuilder.parameters(for:)(a1, v15);

  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 24))(v16, v17, v18);
  v43 = 0;
  type metadata accessor for NWListener();
  swift_allocObject();

  v20 = NWListener.init(using:on:)(v19, &v43);
  if (v28)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v6 + 16) = v20;
    v21 = a1[3];
    v22 = a1[4];
    v23 = v20;
    __swift_project_boxed_opaque_existential_1(a1, v21);
    v24 = (*(v22 + 8))(&v29, v21, v22);
    v41 = v33;
    *v42 = v34[0];
    *&v42[11] = *(v34 + 11);
    v39 = v31;
    v40 = v32;
    v37 = v29;
    v38 = v30;
    v25 = v23[2];
    MEMORY[0x1EEE9AC00](v24);
    os_unfair_lock_lock((v25 + 208));
    sub_181FF1D1C((v25 + 16));
    os_unfair_lock_unlock((v25 + 208));

    sub_181FF0DB0(&v29);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Listener8.__allocating_init<A>(port:provider:builder:)(unsigned __int16 *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  Listener8.init<A>(port:provider:builder:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void Listener8.init<A>(port:provider:builder:)(unsigned __int16 *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v50 = *a1;
  v10 = *a3;
  v11 = a3[1];
  v12 = *(v9 + 80);
  v13 = *(v9 + 88);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  *&v40 = 0;
  locked = type metadata accessor for Listener8.LockedState(0, v12, v13, a4);
  v15 = sub_1820C6398(&v36, locked);
  (*(*(locked - 8) + 8))(&v36, locked);
  v35 = v6;
  v6[3] = v15;
  v42 = v10;
  v43 = v11;
  *&v36 = a4;
  *(&v36 + 1) = v12;
  *&v37 = a5;
  *(&v37 + 1) = v13;
  *&v38 = a6;
  v16 = type metadata accessor for NWParametersBuilder(0, &v36);
  v17 = NWParametersBuilder.parameters(for:)(a2, v16);

  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 24))(v17, v18, v19);
  v20 = *(v17 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v20 + 24));
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("::", v50);
  nw_parameters_set_local_endpoint(v21, host_with_numeric_port);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = *(v17 + 16);
  os_unfair_lock_lock((v23 + 24));
  v24 = *(v23 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v23 + 24));
  nw_parameters_set_attach_protocol_listener(v24);
  swift_unknownObjectRelease();
  v51 = 0;
  type metadata accessor for NWListener();
  swift_allocObject();

  v26 = NWListener.init(using:on:)(v25, &v51);
  if (v34)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v35[2] = v26;
    v27 = a2[3];
    v28 = a2[4];
    v29 = v26;
    __swift_project_boxed_opaque_existential_1(a2, v27);
    v30 = (*(v28 + 8))(&v36, v27, v28);
    v48 = v40;
    *v49 = v41[0];
    *&v49[11] = *(v41 + 11);
    v46 = v38;
    v47 = v39;
    v44 = v36;
    v45 = v37;
    v31 = v29[2];
    MEMORY[0x1EEE9AC00](v30);
    os_unfair_lock_lock((v31 + 208));
    sub_181FF1D1C((v31 + 16));
    os_unfair_lock_unlock((v31 + 208));

    sub_181FF0DB0(&v36);
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t (*Listener8.newConnectionLimit.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = nw_listener_get_new_connection_limit(*(*(v1 + 16) + 24));
  return sub_1820CAAFC;
}

uint64_t Listener8.service.setter(_OWORD *a1)
{
  v2 = a1[5];
  v7[4] = a1[4];
  v8[0] = v2;
  *(v8 + 11) = *(a1 + 91);
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock((v5 + 208));
  sub_181FF1D1C((v5 + 16));
  os_unfair_lock_unlock((v5 + 208));
  return sub_181F49A88(v7, &qword_1EA83A230, &qword_182AF3E00);
}

uint64_t (*Listener8.service.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1C8uLL);
  }

  *a1 = v3;
  *(v3 + 448) = v1;
  NetworkListener.service.getter(v3);
  return sub_1820B58D8;
}

uint64_t _s7Network9Listener8C3runyyyAA11Connection6CyxGYaYbKYAcYaKF(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1820B5914, 0, 0);
}

uint64_t sub_1820B5914()
{
  v1 = *(v0 + 32);
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  v3 = *(v0 + 16);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 48) = v4;
  *v4 = v0;
  v4[1] = sub_181F510FC;
  v5 = *(v0 + 32);
  v6 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v4, &unk_182AF3E18, v2, sub_1820C6564, v5, 0, 0, v6);
}

uint64_t sub_1820B5A08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a3;
  v4[4] = a4;
  v4[2] = a2;
  v4[5] = type metadata accessor for Listener8.Event(255, *(*a2 + 80), *(*a2 + 88), a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v5 = sub_182AD3698();
  v4[6] = v5;
  v4[7] = *(v5 - 8);
  v4[8] = swift_task_alloc();
  v6 = sub_182AD3728();
  v4[9] = v6;
  v4[10] = *(v6 - 8);
  v4[11] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820B5BA8, 0, 0);
}

uint64_t sub_1820B5BA8()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 16);
  v6 = *(v0 + 24);
  (*(*(v0 + 56) + 104))(*(v0 + 64), *MEMORY[0x1E69E8790], *(v0 + 48));
  sub_182AD3738();
  v3 = swift_task_alloc();
  *(v0 + 96) = v3;
  *(v3 + 16) = v1;
  *(v3 + 24) = v6;
  *(v3 + 40) = v2;
  v4 = swift_task_alloc();
  *(v0 + 104) = v4;
  *v4 = v0;
  v4[1] = sub_181F51570;

  return MEMORY[0x1EEE6DE40]();
}

void sub_1820B5CFC(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*a2 + 80);
  v7 = *(*a2 + 88);
  type metadata accessor for Listener8.Event(255, v6, v7, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v8 = sub_182AD36C8();
  v34 = v8;
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v34 - v12;

  v42 = a2;
  sub_182AD3688();
  v35 = a2[2];
  v14 = *(v9 + 16);
  v43 = v9 + 16;
  v44 = v14;
  v41 = v13;
  v15 = a1;
  v37 = a1;
  v14(v13, a1, v8);
  v45 = *(v9 + 80);
  v16 = (v45 + 32) & ~v45;
  v17 = v16 + v10;
  v18 = swift_allocObject();
  v39 = v7;
  v40 = v6;
  *(v18 + 16) = v6;
  *(v18 + 24) = v7;
  v19 = *(v9 + 32);
  v38 = v16;
  v20 = v34;
  v19(v18 + v16, v13, v34);
  v21 = v18;
  v22 = v35;
  NWListener.stateUpdateHandler.setter(sub_1820C9BF4, v21);
  v23 = v36;
  v24 = v15;
  v25 = v20;
  v44(v36, v24, v20);
  v26 = swift_allocObject();
  *(v26 + 16) = v6;
  *(v26 + 24) = v7;
  v19(v26 + v16, v23, v25);
  v27 = *(v22 + 16);
  v46 = sub_1820C9CE4;
  v47 = v26;
  os_unfair_lock_lock(v27 + 52);
  sub_1820AC69C(&v27[4]);
  os_unfair_lock_unlock(v27 + 52);
  v28 = *(v22 + 24);
  v29 = swift_allocObject();
  *(v29 + 16) = sub_1820C9CE4;
  *(v29 + 24) = v26;
  aBlock[4] = sub_1820CA9C0;
  aBlock[5] = v29;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_181FEE4AC;
  aBlock[3] = &block_descriptor_385;
  v30 = _Block_copy(aBlock);

  nw_listener_set_advertised_endpoint_changed_handler(v28, v30);
  _Block_release(v30);

  v31 = v41;
  v44(v41, v37, v25);
  v32 = swift_allocObject();
  v33 = v39;
  *(v32 + 16) = v40;
  *(v32 + 24) = v33;
  v19(v32 + v38, v31, v25);
  *(v32 + ((v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = v42;

  NWListener.newConnectionHandler.setter(sub_1820C9D10, v32);
  if (qword_1EA837208 != -1)
  {
    swift_once();
  }

  NWListener.start(queue:)(qword_1EA8433A8);
}

uint64_t sub_1820B6160(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v5 = *(*a3 + 80);
  v6 = *(*a3 + 88);
  v7 = type metadata accessor for Listener8.Event(0, v5, v6, a4);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v21[-1] - v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v10 = sub_182AD3678();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21[-1] - v12;
  type metadata accessor for Connection6(0, v5, v6, v14);

  sub_1820B6354(v15, v16, v17, v18);
  *v9 = Connection6.__allocating_init(using:with:)(a1, v21);
  swift_storeEnumTagMultiPayload();
  sub_182AD36C8();
  sub_182AD36A8();
  return (*(v11 + 8))(v13, v10);
}

void sub_1820B6354(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = v4[3];
  v8 = *(*v4 + 80);
  v9 = *(v5 + 88);
  type metadata accessor for Listener8.LockedState(0, v8, v9, a4);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EA83A290, &qword_182AF3B50);
  sub_181F50DA0(sub_1820C9DE8, &v7, v6);
}

uint64_t sub_1820B640C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6[13] = a5;
  v6[14] = a6;
  v6[11] = a3;
  v6[12] = a4;
  v6[10] = a2;
  v7 = *a6;
  v8 = *(*a6 + 80);
  v6[15] = v8;
  v9 = *(v7 + 88);
  v6[16] = v9;
  v10 = type metadata accessor for Listener8.Event(0, v8, v9, a4);
  v6[17] = v10;
  v11 = *(v10 - 8);
  v6[18] = v11;
  v6[19] = *(v11 + 64);
  v6[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EA839850, &qword_182AF4770);
  v6[21] = swift_task_alloc();
  v6[22] = swift_task_alloc();
  sub_182AD39B8();
  v6[23] = swift_task_alloc();
  v6[24] = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_1EA839900, &unk_182AEE160);
  v12 = sub_182AD3708();
  v6[25] = v12;
  v6[26] = *(v12 - 8);
  v6[27] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820B660C, 0, 0);
}

uint64_t sub_1820B660C()
{
  sub_182AD3728();
  sub_182AD35B8();
  v1 = swift_task_alloc();
  v0[28] = v1;
  *v1 = v0;
  v1[1] = sub_1820B66E0;
  v2 = v0[25];
  v3 = v0[23];

  return MEMORY[0x1EEE6DB90](v3, 0, 0, v2, v0 + 9);
}

uint64_t sub_1820B66E0()
{

  if (v0)
  {
    v1 = sub_1820B6C40;
  }

  else
  {
    v1 = sub_1820B67F0;
  }

  return MEMORY[0x1EEE6DFA0](v1, 0, 0);
}

uint64_t sub_1820B67F0()
{
  v1 = *(v0 + 184);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(*(v0 + 208) + 8))(*(v0 + 216), *(v0 + 200));
    sub_182AD4248();

    v4 = *(v0 + 8);

    return v4();
  }

  else
  {
    v6 = *(v0 + 176);
    v7 = *(v0 + 152);
    v8 = *(v0 + 160);
    v26 = v8;
    v30 = *(v0 + 112);
    v31 = *(v0 + 168);
    v29 = *(v0 + 104);
    v28 = *(v0 + 96);
    v9 = sub_182AD3548();
    v10 = *(v9 - 8);
    v27 = *(v0 + 120);
    (*(v10 + 56))(v6, 1, 1, v9);
    v11 = *(v2 + 32);
    v11(v8, v1, v3);
    v12 = (*(v2 + 80) + 48) & ~*(v2 + 80);
    v13 = (v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
    v14 = swift_allocObject();
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = v27;
    v11(v14 + v12, v26, v3);
    v15 = (v14 + v13);
    *v15 = v28;
    v15[1] = v29;
    *(v14 + ((v13 + 23) & 0xFFFFFFFFFFFFFFF8)) = v30;
    sub_181AB5D28(v6, v31, &unk_1EA839850, &qword_182AF4770);
    LODWORD(v6) = (*(v10 + 48))(v31, 1, v9);

    v16 = *(v0 + 168);
    if (v6 == 1)
    {
      sub_181F49A88(*(v0 + 168), &unk_1EA839850, &qword_182AF4770);
    }

    else
    {
      sub_182AD3538();
      (*(v10 + 8))(v16, v9);
    }

    if (*(v14 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      v17 = sub_182AD34A8();
      v19 = v18;
      swift_unknownObjectRelease();
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v20 = **(v0 + 80);

    if (v19 | v17)
    {
      v21 = v0 + 16;
      *(v0 + 16) = 0;
      *(v0 + 24) = 0;
      *(v0 + 32) = v17;
      *(v0 + 40) = v19;
    }

    else
    {
      v21 = 0;
    }

    v22 = *(v0 + 176);
    *(v0 + 48) = 1;
    *(v0 + 56) = v21;
    *(v0 + 64) = v20;
    swift_task_create();

    sub_181F49A88(v22, &unk_1EA839850, &qword_182AF4770);
    v23 = swift_task_alloc();
    *(v0 + 224) = v23;
    *v23 = v0;
    v23[1] = sub_1820B66E0;
    v24 = *(v0 + 200);
    v25 = *(v0 + 184);

    return MEMORY[0x1EEE6DB90](v25, 0, 0, v24, v0 + 72);
  }
}

uint64_t sub_1820B6C40()
{
  (*(v0[26] + 8))(v0[27], v0[25]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1820B6CF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[14] = *a6;
  v7 = *a6;
  v6[15] = type metadata accessor for NWListener.ServiceRegistrationChange(0);
  v6[16] = swift_task_alloc();
  v8 = *(v7 + 80);
  v6[17] = v8;
  v9 = *(v7 + 88);
  v6[18] = v9;
  v11 = type metadata accessor for Listener8.Event(0, v8, v9, v10);
  v6[19] = v11;
  v6[20] = *(v11 - 8);
  v6[21] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1820B6E4C, 0, 0);
}

uint64_t sub_1820B6E4C()
{
  (*(*(v0 + 160) + 16))(*(v0 + 168), *(v0 + 80), *(v0 + 152));
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v2 = *(v0 + 168);
      v3 = *(v0 + 136);
      v4 = *(v0 + 144);
      v5 = *(v0 + 112);
      v6 = *(v2 + 4);
      v7 = *v2;
      v8 = *(*(v0 + 104) + 24);
      v9 = swift_task_alloc();
      *(v9 + 16) = v3;
      *(v9 + 24) = v4;
      type metadata accessor for Listener8.LockedState(0, v3, v4, v10);
      *(v0 + 64) = v5;
      *(v0 + 72) = &type metadata for NWListener.State;
      swift_getExtendedFunctionTypeMetadata();
      sub_182AD39B8();
      sub_181F50DA0(sub_1820C9B98, v9, v8);

      v12 = *(v0 + 48);
      v11 = *(v0 + 56);
      *(v0 + 200) = v12;
      *(v0 + 208) = v11;
      if (v12)
      {
        v13 = v7 | (v6 << 32);
        v14 = *(v11 + 16);
        *(v0 + 216) = v14;
        v15 = *(v11 + 24);
        v16 = swift_allocObject();
        *(v0 + 224) = v16;
        v16[2] = v14;
        v16[3] = v15;
        v16[4] = v12;
        v16[5] = v11;
        *(v0 + 268) = BYTE4(v13);
        *(v0 + 264) = v13;
        swift_unknownObjectRetain_n();
        sub_181AA39C0(v12, v11);
        if (v14)
        {
          swift_getObjectType();
          v17 = sub_182AD34A8();
          v19 = v18;
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v40 = sub_1820B747C;
LABEL_20:

        return MEMORY[0x1EEE6DFA0](v40, v17, v19);
      }
    }

    else
    {
      v25 = *(v0 + 136);
      v26 = *(v0 + 144);
      v27 = *(v0 + 120);
      v28 = *(v0 + 104);
      v29 = *(v0 + 112);
      sub_1820C7DE0(*(v0 + 168), *(v0 + 128), type metadata accessor for NWListener.ServiceRegistrationChange);
      v30 = *(v28 + 24);
      v31 = swift_task_alloc();
      *(v31 + 16) = v25;
      *(v31 + 24) = v26;
      type metadata accessor for Listener8.LockedState(0, v25, v26, v32);
      *(v0 + 32) = v29;
      *(v0 + 40) = v27;
      swift_getExtendedFunctionTypeMetadata();
      sub_182AD39B8();
      sub_181F50DA0(sub_1820C9B7C, v31, v30);

      v33 = *(v0 + 16);
      v34 = *(v0 + 24);
      *(v0 + 232) = v33;
      *(v0 + 240) = v34;
      if (v33)
      {
        v35 = *(v34 + 16);
        *(v0 + 248) = v35;
        v36 = *(v34 + 24);
        v37 = swift_allocObject();
        *(v0 + 256) = v37;
        v37[2] = v35;
        v37[3] = v36;
        v37[4] = v33;
        v37[5] = v34;
        swift_unknownObjectRetain_n();
        sub_181AA39C0(v33, v34);
        if (v35)
        {
          swift_getObjectType();
          v17 = sub_182AD34A8();
          v19 = v38;
        }

        else
        {
          v17 = 0;
          v19 = 0;
        }

        v40 = sub_1820B7590;
        goto LABEL_20;
      }

      sub_1820C7D20(*(v0 + 128));
    }

    v39 = *(v0 + 8);

    return v39();
  }

  else
  {
    v20 = *(v0 + 168);
    v21 = *(v0 + 88);
    v22 = *v20;
    *(v0 + 176) = *v20;
    v41 = (v21 + *v21);
    v23 = swift_task_alloc();
    *(v0 + 184) = v23;
    *v23 = v0;
    v23[1] = sub_1820B72F0;

    return v41(v22);
  }
}

uint64_t sub_1820B72F0()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_1820B76B0;
  }

  else
  {
    v2 = sub_1820B7404;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1820B7404()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820B747C()
{
  v5 = v0;
  v1 = v0[26];
  v2 = v0[25];
  v4 = v0[13];
  v2(&v4, v0 + 33);
  swift_unknownObjectRelease();
  sub_181A554F4(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1820B7518, 0, 0);
}

uint64_t sub_1820B7518()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1820B7590()
{
  v6 = v0;
  v1 = v0[30];
  v2 = v0[29];
  v3 = v0[16];
  v5 = v0[13];
  v2(&v5, v3);
  swift_unknownObjectRelease();
  sub_181A554F4(v2, v1);

  return MEMORY[0x1EEE6DFA0](sub_1820B762C, 0, 0);
}

uint64_t sub_1820B762C()
{
  v1 = *(v0 + 128);

  sub_1820C7D20(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1820B76B0()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1820B7728(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = a1[1];
  if (*a1)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_1820CA9C4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  sub_181AA39C0(v5, v6);
}

void sub_1820B77D4(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v5)
  {
    v9 = *(v6 + 16);
    v10 = *(v6 + 24);
    v11 = swift_allocObject();
    v11[2] = v9;
    v11[3] = v10;
    v11[4] = a2;
    v11[5] = a3;
    v11[6] = v5;
    v11[7] = v6;
    swift_unknownObjectRetain();
    v12 = sub_1820CA9C4;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a4 = v12;
  a4[1] = v11;
  sub_181AA39C0(v5, v6);
}

uint64_t sub_1820B78B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(__int128 *, uint64_t, uint64_t, uint64_t), double a7)
{
  NWParametersBuilder.init(_:)(&v15, a7, a1, a2, a3, *(v7 + 80), a4);
  v14 = v15;
  v12 = swift_allocObject();
  a6(&v14, a3, a4, a5);
  return v12;
}

uint64_t Listener9.__allocating_init<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  Listener9.init<A>(using:)(a1, a2, a3, a4);
  return v8;
}

uint64_t *sub_1820B79E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, uint64_t, uint64_t))
{
  v6 = v5;
  v9 = *(*v5 + 80);
  v10 = *(*v5 + 88);
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0;
  v11 = a5(0, v9, v10);
  v12 = sub_1820C6398(&v21, v11);
  (*(*(v11 - 8) + 8))(&v21, v11);
  *(v6 + 24) = v12;
  *&v21 = a2;
  *(&v21 + 1) = v9;
  *&v22 = a3;
  *(&v22 + 1) = v10;
  *&v23 = a4;
  type metadata accessor for NWParametersBuilder(0, &v21);
  NWParametersBuilder.parameters(applicationService:)(0);
  v14 = v13;

  v15 = *(v14 + 16);
  os_unfair_lock_lock((v15 + 24));
  v16 = *(v15 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v15 + 24));
  nw_parameters_set_attach_protocol_listener(v16);
  swift_unknownObjectRelease();
  LOWORD(v21) = 0;
  type metadata accessor for NWListener();
  swift_allocObject();
  v17 = v26;
  v18 = NWListener.init(using:on:)(v14, &v21);
  if (v17)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v6 + 16) = v18;
  }

  return v6;
}

uint64_t sub_1820B7C08(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int16 *, __int128 *, uint64_t, uint64_t, uint64_t), double a8)
{
  v17 = *a1;
  NWParametersBuilder.init(_:)(&v16, a8, a2, a3, a4, *(v8 + 80), a5);
  v15 = v16;
  v13 = swift_allocObject();
  a7(&v17, &v15, a4, a5, a6);
  return v13;
}

uint64_t Listener9.__allocating_init<A>(on:using:)(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  Listener9.init<A>(on:using:)(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t *sub_1820B7D60(unsigned __int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void, uint64_t, uint64_t))
{
  v7 = v6;
  v25 = *a1;
  v10 = *(*v6 + 80);
  v11 = *(*v6 + 88);
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0;
  v12 = a6(0, v10, v11);
  v13 = sub_1820C6398(&v26, v12);
  (*(*(v12 - 8) + 8))(&v26, v12);
  *(v7 + 24) = v13;
  *&v26 = a3;
  *(&v26 + 1) = v10;
  *&v27 = a4;
  *(&v27 + 1) = v11;
  *&v28 = a5;
  type metadata accessor for NWParametersBuilder(0, &v26);
  NWParametersBuilder.parameters(applicationService:)(0);
  v15 = v14;

  v16 = *(v15 + 16);
  os_unfair_lock_lock((v16 + 24));
  v17 = *(v16 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v16 + 24));
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("::", v25);
  nw_parameters_set_local_endpoint(v17, host_with_numeric_port);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v19 = *(v15 + 16);
  os_unfair_lock_lock((v19 + 24));
  v20 = *(v19 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v19 + 24));
  nw_parameters_set_attach_protocol_listener(v20);
  swift_unknownObjectRelease();
  LOWORD(v26) = 0;
  type metadata accessor for NWListener();
  swift_allocObject();
  v21 = v31;
  v22 = NWListener.init(using:on:)(v15, &v26);
  if (v21)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v7 + 16) = v22;
  }

  return v7;
}

uint64_t Listener9.__allocating_init<A>(provider:using:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  Listener9.init<A>(provider:using:)(a1, a2, a3, a4, a5);
  return v10;
}

void Listener9.init<A>(provider:using:)(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v9 = *a2;
  v10 = a2[1];
  v11 = *(*v5 + 80);
  v12 = *(*v5 + 88);
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  *&v33 = 0;
  locked = type metadata accessor for Listener9.LockedState(0, v11, v12, a4);
  v14 = sub_1820C6398(&v29, locked);
  (*(*(locked - 8) + 8))(&v29, locked);
  *(v6 + 24) = v14;
  v35 = v9;
  v36 = v10;
  *&v29 = a3;
  *(&v29 + 1) = v11;
  *&v30 = a4;
  *(&v30 + 1) = v12;
  *&v31 = a5;
  v15 = type metadata accessor for NWParametersBuilder(0, &v29);
  v16 = NWParametersBuilder.parameters(for:)(a1, v15);

  v17 = a1[3];
  v18 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v17);
  (*(v18 + 24))(v16, v17, v18);
  v43 = 0;
  type metadata accessor for NWListener();
  swift_allocObject();

  v20 = NWListener.init(using:on:)(v19, &v43);
  if (v28)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    *(v6 + 16) = v20;
    v21 = a1[3];
    v22 = a1[4];
    v23 = v20;
    __swift_project_boxed_opaque_existential_1(a1, v21);
    v24 = (*(v22 + 8))(&v29, v21, v22);
    v41 = v33;
    *v42 = v34[0];
    *&v42[11] = *(v34 + 11);
    v39 = v31;
    v40 = v32;
    v37 = v29;
    v38 = v30;
    v25 = v23[2];
    MEMORY[0x1EEE9AC00](v24);
    os_unfair_lock_lock((v25 + 208));
    sub_181FF1D1C((v25 + 16));
    os_unfair_lock_unlock((v25 + 208));

    sub_181FF0DB0(&v29);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1820B83A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(_BYTE *, __int128 *, uint64_t, uint64_t, uint64_t))
{
  sub_181F75240(a1, v20);
  NWParametersBuilder.init(_:)(&v19, v15, a2, a3, a4, *(v7 + 80), a5);
  v18 = v19;
  v16 = swift_allocObject();
  a7(v20, &v18, a4, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v16;
}

uint64_t sub_1820B84B0(void *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(_BYTE *, __int128 *, uint64_t, uint64_t, uint64_t))
{
  sub_181F75240(a1, v15);
  v14 = *a2;
  v12 = swift_allocObject();
  a6(v15, &v14, a3, a4, a5);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v12;
}

uint64_t Listener9.__allocating_init<A>(port:provider:builder:)(unsigned __int16 *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v12 = swift_allocObject();
  Listener9.init<A>(port:provider:builder:)(a1, a2, a3, a4, a5, a6);
  return v12;
}

void Listener9.init<A>(port:provider:builder:)(unsigned __int16 *a1, void *a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  v50 = *a1;
  v10 = *a3;
  v11 = a3[1];
  v12 = *(v9 + 80);
  v13 = *(v9 + 88);
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  v39 = 0u;
  *&v40 = 0;
  locked = type metadata accessor for Listener9.LockedState(0, v12, v13, a4);
  v15 = sub_1820C6398(&v36, locked);
  (*(*(locked - 8) + 8))(&v36, locked);
  v35 = v6;
  v6[3] = v15;
  v42 = v10;
  v43 = v11;
  *&v36 = a4;
  *(&v36 + 1) = v12;
  *&v37 = a5;
  *(&v37 + 1) = v13;
  *&v38 = a6;
  v16 = type metadata accessor for NWParametersBuilder(0, &v36);
  v17 = NWParametersBuilder.parameters(for:)(a2, v16);

  v18 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v18);
  (*(v19 + 24))(v17, v18, v19);
  v20 = *(v17 + 16);
  os_unfair_lock_lock((v20 + 24));
  v21 = *(v20 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v20 + 24));
  host_with_numeric_port = nw_endpoint_create_host_with_numeric_port("::", v50);
  nw_parameters_set_local_endpoint(v21, host_with_numeric_port);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v23 = *(v17 + 16);
  os_unfair_lock_lock((v23 + 24));
  v24 = *(v23 + 16);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v23 + 24));
  nw_parameters_set_attach_protocol_listener(v24);
  swift_unknownObjectRelease();
  v51 = 0;
  type metadata accessor for NWListener();
  swift_allocObject();

  v26 = NWListener.init(using:on:)(v25, &v51);
  if (v34)
  {

    swift_deallocPartialClassInstance();
  }

  else
  {
    v35[2] = v26;
    v27 = a2[3];
    v28 = a2[4];
    v29 = v26;
    __swift_project_boxed_opaque_existential_1(a2, v27);
    v30 = (*(v28 + 8))(&v36, v27, v28);
    v48 = v40;
    *v49 = v41[0];
    *&v49[11] = *(v41 + 11);
    v46 = v38;
    v47 = v39;
    v44 = v36;
    v45 = v37;
    v31 = v29[2];
    MEMORY[0x1EEE9AC00](v30);
    os_unfair_lock_lock((v31 + 208));
    sub_181FF1D1C((v31 + 16));
    os_unfair_lock_unlock((v31 + 208));

    sub_181FF0DB0(&v36);
  }

  __swift_destroy_boxed_opaque_existential_1(a2);
}

uint64_t sub_1820B8A08(__int16 *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void (*a8)(__int16 *, _BYTE *, __int128 *, uint64_t, uint64_t, uint64_t))
{
  v22 = *a1;
  sub_181F75240(a2, v21);
  NWParametersBuilder.init(_:)(&v20, v16, a3, a4, a5, *(v8 + 80), a6);
  v19 = v20;
  v17 = swift_allocObject();
  a8(&v22, v21, &v19, a5, a6, a7);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v17;
}

uint64_t sub_1820B8B20(__int16 *a1, void *a2, __int128 *a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(__int16 *, _BYTE *, __int128 *, uint64_t, uint64_t, uint64_t))
{
  v17 = *a1;
  sub_181F75240(a2, v16);
  v15 = *a3;
  v13 = swift_allocObject();
  a7(&v17, v16, &v15, a4, a5, a6);
  __swift_destroy_boxed_opaque_existential_1(a2);
  return v13;
}

uint64_t (*Listener9.newConnectionLimit.modify(void *a1))()
{
  a1[1] = v1;
  *a1 = nw_listener_get_new_connection_limit(*(*(v1 + 16) + 24));
  return sub_1820CAAFC;
}

void _s7Network0A8ListenerC7serviceAA10NWListenerC7ServiceVSgvg_0(_OWORD *a1@<X8>)
{
  v3 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock((v3 + 208));
  v4 = *(v3 + 160);
  v15 = *(v3 + 144);
  v5 = v15;
  v16[0] = v4;
  *(v16 + 11) = *(v3 + 171);
  v6 = *(v16 + 11);
  v7 = *(v3 + 96);
  v12[0] = *(v3 + 80);
  v12[1] = v7;
  v8 = *(v3 + 128);
  v10 = *(v3 + 80);
  v9 = *(v3 + 96);
  v13 = *(v3 + 112);
  v14 = v8;
  a1[2] = v13;
  a1[3] = v8;
  a1[4] = v5;
  a1[5] = v4;
  *(a1 + 91) = v6;
  *a1 = v10;
  a1[1] = v9;
  sub_181AB5D28(v12, &v11, &qword_1EA83A230, &qword_182AF3E00);
  os_unfair_lock_unlock((v3 + 208));
}

uint64_t Listener9.service.setter(_OWORD *a1)
{
  v2 = a1[5];
  v7[4] = a1[4];
  v8[0] = v2;
  *(v8 + 11) = *(a1 + 91);
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v5 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock((v5 + 208));
  sub_181FF1D1C((v5 + 16));
  os_unfair_lock_unlock((v5 + 208));
  return sub_181F49A88(v7, &qword_1EA83A230, &qword_182AF3E00);
}

uint64_t (*Listener9.service.modify(uint64_t *a1))()
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x1C8uLL);
  }

  *a1 = v3;
  *(v3 + 448) = v1;
  NetworkListener.service.getter(v3);
  return sub_1820B8E30;
}

void sub_1820B8E48(_OWORD **a1, char a2, void (*a3)(__int128 *))
{
  v4 = *a1;
  if (a2)
  {
    v5 = v4[3];
    v7 = v4[4];
    v6 = v4[5];
    v4[18] = v7;
    v4[19] = v6;
    *(v4 + 315) = *(v4 + 91);
    v8 = v4[1];
    v4[14] = *v4;
    v4[15] = v8;
    v9 = v4[3];
    v11 = *v4;
    v10 = v4[1];
    v12 = v4[2];
    v4[16] = v12;
    v4[17] = v9;
    v13 = v4[5];
    v24 = v7;
    v25[0] = v13;
    *(v25 + 11) = *(v4 + 91);
    v20 = v11;
    v21 = v10;
    v22 = v12;
    v23 = v5;
    sub_181AB5D28((v4 + 14), (v4 + 21), &qword_1EA83A230, &qword_182AF3E00);
    a3(&v20);
    v14 = v4[5];
    v4[11] = v4[4];
    v4[12] = v14;
    *(v4 + 203) = *(v4 + 91);
    v15 = v4[1];
    v4[7] = *v4;
    v4[8] = v15;
    v16 = v4[3];
    v4[9] = v4[2];
    v4[10] = v16;
    sub_181F49A88((v4 + 7), &qword_1EA83A230, &qword_182AF3E00);
  }

  else
  {
    v17 = v4[5];
    v24 = v4[4];
    v25[0] = v17;
    *(v25 + 11) = *(v4 + 91);
    v18 = v4[1];
    v20 = *v4;
    v21 = v18;
    v19 = v4[3];
    v22 = v4[2];
    v23 = v19;
    a3(&v20);
  }

  free(v4);
}

uint64_t _s7Network9Listener8Cfd_0()
{

  return v0;
}

uint64_t _s7Network9Listener8CfD_0()
{

  return swift_deallocClassInstance();
}

uint64_t _s7Network9Listener9CA2A05OneToC8ProtocolRzrlE3runyyyAA11Connection7CyxGYaYbKYAcYaKF(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1820B9004, 0, 0);
}

uint64_t sub_1820B9004()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = swift_task_alloc();
  *(v0 + 48) = v3;
  v4 = *(v0 + 16);
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  *(v3 + 32) = v4;
  v5 = swift_task_alloc();
  *(v0 + 56) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v1;
  v6 = swift_task_alloc();
  *(v0 + 64) = v6;
  *v6 = v0;
  v6[1] = sub_1820B9114;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v6, &unk_182AF3E30, v3, sub_1820CAA08, v5, 0, 0, v7);
}