uint64_t sub_1D18BCFE8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D18BD04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7, uint64_t a8)
{
  *(v8 + 40) = a6;
  *(v8 + 48) = a8;
  *(v8 + 80) = a7;
  *(v8 + 24) = a4;
  *(v8 + 32) = a5;
  *(v8 + 16) = a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18BD078, 0, 0);
}

uint64_t sub_1D18BD078()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 40);
  v2 = *(v0 + 48);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = *(v0 + 24);
  *(v4 + 32) = v3;
  *(v4 + 40) = v1;
  *(v4 + 48) = v2;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645CF8, &qword_1D1E7C3C8);
  *v5 = v0;
  v5[1] = sub_1D18BD19C;
  v7 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v7, 0, 0, 0xD000000000000040, 0x80000001D1EBBDE0, sub_1D18BE9D8, v4, v6);
}

uint64_t sub_1D18BD19C()
{
  v2 = *v1;
  *(v2 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D18BD2D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D18BD2D8()
{

  v1 = *(v0 + 8);

  return v1();
}

id sub_1D18BD33C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v25 = a1;
  v26 = a6;
  v24 = a2;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D18, &unk_1D1E7C4D0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v23 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a5;
  v31 = sub_1D18BE9EC;
  v32 = v15;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1D1E0290C;
  v30 = &block_descriptor_20;
  v16 = _Block_copy(&aBlock);

  [a2 setProgressHandler_];
  _Block_release(v16);
  (*(v11 + 16))(v14, v25, v10);
  v17 = (*(v11 + 80) + 16) & ~*(v11 + 80);
  v18 = (v12 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  (*(v11 + 32))(v19 + v17, v14, v10);
  *(v19 + v18) = a4;
  *(v19 + ((v18 + 15) & 0xFFFFFFFFFFFFFFF8)) = a3;
  v31 = sub_1D18BEA40;
  v32 = v19;
  aBlock = MEMORY[0x1E69E9820];
  v28 = 1107296256;
  v29 = sub_1D1C40BA8;
  v30 = &block_descriptor_28_0;
  v20 = _Block_copy(&aBlock);

  v21 = v24;
  [v24 setCompletionHandler_];
  _Block_release(v20);
  return [v26 performBatchCharacteristicRequest_];
}

void sub_1D18BD600(void **a1, unint64_t *a2, uint64_t a3, int a4)
{
  LODWORD(v70) = a4;
  v69 = a3;
  updated = type metadata accessor for StateSnapshot.UpdateType(0);
  MEMORY[0x1EEE9AC00](updated);
  v67 = (&v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64FFF0, &qword_1D1E7BDE0);
  v65 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v60 - v8;
  v68 = type metadata accessor for BatchRequestError.ID(0);
  MEMORY[0x1EEE9AC00](v68);
  v10 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1D1E66A7C();
  v72 = *(v11 - 8);
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v60 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v60 - v15;
  v16 = *a1;
  swift_beginAccess();
  v17 = *a2;
  *v75 = v16;
  v74 = v75;

  v18 = sub_1D18B8754(sub_1D18BEAF4, v73, v17);

  if ((v18 & 1) == 0)
  {
    v19 = [v16 request];
    v20 = [v19 characteristic];

    v21 = [v20 service];
    if (v21)
    {
      v61 = a2;
      v62 = updated;
      v22 = [v21 uniqueIdentifier];

      sub_1D1E66A5C();
      v23 = v11;
      v24 = v72;
      v25 = v71;
      (*(v72 + 32))(v71, v14, v23);
      v26 = [v16 request];
      v27 = [v26 characteristic];

      v28 = [v27 characteristicType];
      v29 = sub_1D1E6781C();
      v31 = v30;

      v32._countAndFlagsBits = v29;
      v32._object = v31;
      CharacteristicKind.init(rawValue:)(v32);
      v33 = v75[0];
      if (v75[0] == 174)
      {
        (*(v24 + 8))(v25, v23);
      }

      else
      {
        v63 = v23;
        v34 = [v16 error];
        if (v34)
        {
          v35 = v34;
          v36 = v72;
          v37 = v71;
          (*(v72 + 16))(v10, v71, v63);
          v10[*(v68 + 20)] = v33;
          v38 = v69;
          swift_beginAccess();
          v39 = v35;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v76 = *v38;
          *v38 = 0x8000000000000000;
          v41 = v35;
          v42 = v37;
          sub_1D1754D80(v41, v10, isUniquelyReferenced_nonNull_native);
          sub_1D18BE73C(v10);
          *v38 = v76;
          swift_endAccess();
        }

        else
        {
          v36 = v72;
          v42 = v71;
          (*(v72 + 16))(v10, v71, v63);
          v10[*(v68 + 20)] = v33;
          v43 = v69;
          swift_beginAccess();
          v44 = swift_isUniquelyReferenced_nonNull_native();
          v76 = *v43;
          *v43 = 0x8000000000000000;
          sub_1D1754D80(0, v10, v44);
          sub_1D18BE73C(v10);
          *v43 = v76;
          swift_endAccess();
        }

        v45 = v61;
        if (v70)
        {
          v46 = [v16 error];
          if (v46)
          {
            v47 = v46;
            v48 = sub_1D1E6655C();
            v70 = [v48 code];
            v49 = [v48 domain];
            v69 = sub_1D1E6781C();
            v68 = v50;

            LODWORD(v62) = 2;
          }

          else
          {
            v69 = 0;
            v68 = 0;
            LODWORD(v62) = 3;
            v70 = 1;
          }

          if (qword_1EE07DC88 != -1)
          {
            swift_once();
          }

          v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645BB8, &qword_1D1E7C4E0);
          __swift_project_value_buffer(v51, qword_1EE07DCE0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC649E40, &qword_1D1E7C4E8);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1D1E739C0;
          v53 = [v16 request];
          v54 = [v53 characteristic];

          *(inited + 32) = v54;
          v55 = v69;
          *(inited + 40) = v70;
          *(inited + 48) = v55;
          *(inited + 56) = v68;
          *(inited + 64) = v62;
          v56 = sub_1D18D8A70(inited);
          swift_setDeallocating();
          sub_1D1741A30(inited + 32, &qword_1EC645D20, qword_1D1E7C4F0);
          v57 = v67;
          *v67 = v56;
          v57[1] = 0;
          *(v57 + 16) = 1;
          swift_storeEnumTagMultiPayload();
          v58 = v64;
          sub_1D1E67ECC();
          (*(v65 + 8))(v58, v66);
          v36 = v72;
          v42 = v71;
        }

        swift_beginAccess();
        v59 = v16;
        MEMORY[0x1D3891220]();
        if (*((*v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D1E67C5C();
          v42 = v71;
          v36 = v72;
        }

        sub_1D1E67CAC();
        swift_endAccess();
        (*(v36 + 8))(v42, v63);
      }
    }
  }
}

uint64_t sub_1D18BDE6C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    swift_beginAccess();
    v6 = *(a3 + 16);
    sub_1D18BE984();
    swift_allocError();
    *v7 = v6;
    v7[1] = a1;
    v8 = a1;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D18, &unk_1D1E7C4D0);
    return sub_1D1E67D5C();
  }

  else
  {
    swift_beginAccess();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D18, &unk_1D1E7C4D0);
    return sub_1D1E67D6C();
  }
}

uint64_t sub_1D18BDF5C(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 48) = a5;
  *(v5 + 40) = a1;
  v6 = sub_1D1E68A4C();
  *(v5 + 56) = v6;
  *(v5 + 64) = *(v6 - 8);
  *(v5 + 72) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18BE020, 0, 0);
}

uint64_t sub_1D18BE020()
{
  v1 = sub_1D1E693AC();
  v3 = v2;
  sub_1D1E6912C();
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_1D18BE0FC;

  return sub_1D1A01910(v1, v3, 0, 0, 1);
}

uint64_t sub_1D18BE0FC()
{
  v2 = *v1;
  *(*v1 + 88) = v0;

  (*(v2[8] + 8))(v2[9], v2[7]);
  if (v0)
  {
    v3 = sub_1D18BE3D8;
  }

  else
  {
    v3 = sub_1D18BE264;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D18BE264()
{
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v1 = sub_1D1E6709C();
  __swift_project_value_buffer(v1, qword_1EE07B5D8);
  v2 = sub_1D1E6707C();
  v3 = sub_1D1E6835C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D16EC000, v2, v3, "batch request timeout has been hit", v4, 2u);
    MEMORY[0x1D3893640](v4, -1, -1);
  }

  v5 = *(v0 + 48);

  swift_beginAccess();
  v6 = *(v5 + 16);
  sub_1D18BE984();
  swift_allocError();
  *v7 = v6;
  v7[1] = 0;
  swift_willThrow();

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D18BE3D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D18BE43C(uint64_t a1, uint64_t a2)
{
  if (_s13HomeDataModel15ScrubberElementO2IDV2eeoiySbAE_AEtFZ_0())
  {
    type metadata accessor for BatchRequestError.ID(0);
    v2 = CharacteristicKind.rawValue.getter();
    v4 = v3;
    if (v2 == CharacteristicKind.rawValue.getter() && v4 == v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1D1E6904C();
    }
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

uint64_t sub_1D18BE500(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  v8 = *(v2 + 32);
  v9 = *(v2 + 40);
  v10 = *(v2 + 48);
  v11 = *(v2 + 56);
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_1D17C4CF0;

  return sub_1D18BC8E0(a1, a2, v6, v7, v8, v9, v10, v11);
}

uint64_t sub_1D18BE5F4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_1D18BE63C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1D18BE688()
{
  result = qword_1EC643038;
  if (!qword_1EC643038)
  {
    sub_1D1741B10(255, &qword_1EE079CD0, 0x1E696CB38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC643038);
  }

  return result;
}

uint64_t type metadata accessor for BatchRequestError.ID(uint64_t a1)
{
  result = qword_1EC645D28;
  if (!qword_1EC645D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D18BE73C(uint64_t a1)
{
  v2 = type metadata accessor for BatchRequestError.ID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D18BE798(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D18BE7E0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_1D17C4CF0;

  return sub_1D18BD04C(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_1D18BE8C0(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = v1[4];
  v7 = *(v1 + 5);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D17C4BFC;

  return sub_1D18BDF5C(v6, a1, v4, v5, v7);
}

unint64_t sub_1D18BE984()
{
  result = qword_1EC645D10;
  if (!qword_1EC645D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645D10);
  }

  return result;
}

uint64_t block_copy_helper_20(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1D18BEA40(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D18, &unk_1D1E7C4D0) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D18BDE6C(a1, v1 + v4, v6, v7);
}

uint64_t sub_1D18BEB5C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1D18BEBAC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_1D18BEC00(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1D18BEC50(uint64_t a1)
{
  result = sub_1D1E66A7C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1D18BED14()
{
  v0 = sub_1D1E6709C();
  __swift_allocate_value_buffer(v0, qword_1EE081480);
  __swift_project_value_buffer(v0, qword_1EE081480);
  return sub_1D1E6708C();
}

void sub_1D18BEDEC()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock(v1 + 4);
  v2 = *(v0 + 24);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock(v1 + 4);
  if (v2)
  {
    [v2 cancel];
    swift_unknownObjectRelease();
  }

  os_unfair_lock_lock(v1 + 4);
  *(v0 + 24) = 0;
  swift_unknownObjectRelease();

  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1D18BEE74()
{

  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1D18BEEB4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D18BEED4, 0, 0);
}

uint64_t sub_1D18BEED4()
{
  _s11CancellableCMa();
  v1 = swift_allocObject();
  v0[2].i64[0] = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D40, &qword_1D1E7C5F8);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v1 + 16) = v2;
  *(v1 + 24) = 0;
  v3 = swift_task_alloc();
  v0[2].i64[1] = v3;
  v4 = v0[1];
  *(v3 + 16) = v1;
  *(v3 + 24) = vextq_s8(v4, v4, 8uLL);
  v5 = swift_allocObject();
  v0[3].i64[0] = v5;
  swift_weakInit();
  v6 = swift_task_alloc();
  v0[3].i64[1] = v6;
  *v6 = v0;
  v6[1] = sub_1D18BF03C;
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE6DE18](v6, &unk_1D1E7C608, v3, sub_1D18BFC70, v5, 0, 0, v7);
}

uint64_t sub_1D18BF03C()
{
  *(*v1 + 64) = v0;

  if (v0)
  {
    v2 = sub_1D18BF1C4;
  }

  else
  {

    v2 = sub_1D18BF160;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D18BF160()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D18BF1C4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D18BF23C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[11] = a3;
  v4[12] = a4;
  v4[10] = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D18BF260, 0, 0);
}

uint64_t sub_1D18BF260()
{
  v1 = v0[11];
  v2 = v0[10];
  v0[2] = v0;
  v0[3] = sub_1D18BF30C;
  v3 = swift_continuation_init();
  sub_1D18BF528(v3, v2, v1);

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1D18BF30C(uint64_t a1)
{
  v2 = *(*v1 + 48);
  *(*v1 + 104) = v2;
  if (v2)
  {
    swift_willThrow();
    v3 = sub_1D18BF4A8;
  }

  else
  {
    v3 = sub_1D18BF428;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D18BF428()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  *(v1 + 24) = 0;
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v2 + 4);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D18BF4A8()
{
  v1 = *(v0 + 80);
  v2 = *(v1 + 16);
  os_unfair_lock_lock(v2 + 4);
  *(v1 + 24) = 0;
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v2 + 4);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D18BF528(uint64_t a1, uint64_t a2, void *a3)
{
  if (qword_1EE07A070 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EE081480);
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v9 = 136315138;
    *(v9 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EBBEA0, v17);
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s Sending homed request to refresh graph with local process", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v10);
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  v11 = sub_1D1E6694C();
  v12 = swift_allocObject();
  *(v12 + 16) = a1;
  v17[4] = sub_1D18BFC78;
  v17[5] = v12;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 1107296256;
  v17[2] = sub_1D1C40BA8;
  v17[3] = &block_descriptor_21;
  v13 = _Block_copy(v17);

  v14 = [a3 _refreshBeforeDate_completionHandler_];
  _Block_release(v13);

  v15 = *(a2 + 16);
  os_unfair_lock_lock(v15 + 4);
  *(a2 + 24) = v14;
  swift_unknownObjectRetain();
  swift_unknownObjectRelease();
  os_unfair_lock_unlock(v15 + 4);
  return swift_unknownObjectRelease();
}

uint64_t sub_1D18BF774(void *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = a1;
    if (qword_1EE07A070 != -1)
    {
      swift_once();
    }

    v5 = sub_1D1E6709C();
    __swift_project_value_buffer(v5, qword_1EE081480);
    v6 = a1;
    v7 = sub_1D1E6707C();
    v8 = sub_1D1E6833C();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EBBEA0, &v24);
      *(v9 + 12) = 2112;
      v12 = a1;
      v13 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v13;
      *v10 = v13;
      _os_log_impl(&dword_1D16EC000, v7, v8, "%s HMHomeManager returned error: %@", v9, 0x16u);
      sub_1D179F28C(v10);
      MEMORY[0x1D3893640](v10, -1, -1);
      __swift_destroy_boxed_opaque_existential_1(v11);
      MEMORY[0x1D3893640](v11, -1, -1);
      MEMORY[0x1D3893640](v9, -1, -1);
    }

    sub_1D18BFC98();
    v14 = swift_allocError();
    *v15 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC64A360, &qword_1D1E73FC0);
    v16 = swift_allocError();
    *v17 = v14;

    return MEMORY[0x1EEE6DEE8](a2, v16);
  }

  else
  {
    if (qword_1EE07A070 != -1)
    {
      swift_once();
    }

    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EE081480);
    v19 = sub_1D1E6707C();
    v20 = sub_1D1E6835C();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v24 = v22;
      *v21 = 136315138;
      *(v21 + 4) = sub_1D1B1312C(0xD000000000000010, 0x80000001D1EBBEA0, &v24);
      _os_log_impl(&dword_1D16EC000, v19, v20, "%s Finished refreshing with homed", v21, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v22);
      MEMORY[0x1D3893640](v22, -1, -1);
      MEMORY[0x1D3893640](v21, -1, -1);
    }

    return MEMORY[0x1EEE6DEE0](a2);
  }
}

uint64_t sub_1D18BFACC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D18BEDEC();
  }

  return result;
}

id HMHomeManager.dataSyncStateString.getter()
{
  [v0 dataSyncState];
  result = HMHomeManagerDataSyncStateToString();
  if (result)
  {
    v2 = result;
    v3 = sub_1D1E6781C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D18BFBBC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D17C4BFC;

  return sub_1D18BF23C(a1, v4, v5, v6);
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_1D18BFC98()
{
  result = qword_1EC645D48;
  if (!qword_1EC645D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645D48);
  }

  return result;
}

id static HMHomeManagerConfiguration.widgetConfiguration(with:)(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E696CC08]) initWithOptions:a1 cachePolicy:0];
  [v1 setDiscretionary_];
  [v1 setInactiveUpdatingLevel_];
  return v1;
}

id sub_1D18BFD90()
{
  v0 = [objc_allocWithZone(MEMORY[0x1E696CC08]) initWithOptions:-1 cachePolicy:0];
  [v0 setDiscretionary_];
  result = [v0 setInactiveUpdatingLevel_];
  qword_1EC645D50 = v0;
  return result;
}

id static HMHomeManagerConfiguration.manualAssertion.getter()
{
  if (qword_1EC642228 != -1)
  {
    swift_once();
  }

  v1 = qword_1EC645D50;

  return v1;
}

HMCharacteristic_optional __swiftcall HMService.characteristic(for:)(HomeDataModel::CharacteristicKind a1)
{
  v1 = HMService.subscript.getter();
  result.value.super.isa = v1;
  result.is_nil = v2;
  return result;
}

HomeDataModel::ServiceKind_optional HMService.serviceKind.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = [v1 serviceType];
  v4 = sub_1D1E6781C();
  v6 = v5;

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  result.value = ServiceKind.init(rawValue:)(v7).value;
  v9 = v10;
  if (v10 == 53)
  {
    v9 = 0;
  }

  *a1 = v9;
  return result;
}

char HMService.serviceSubKind.getter@<W0>(_BYTE *a1@<X8>)
{
  v3 = [v1 serviceSubtype];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D1E6781C();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    LOBYTE(v3) = ServiceSubKind.init(rawValue:)(v8);
    v9 = v11;
    if (v11 == 5)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  *a1 = v9;
  return v3;
}

char HMService.associatedServiceKind.getter@<W0>(char *a1@<X8>)
{
  v3 = [v1 associatedServiceType];
  if (v3)
  {
    v4 = v3;
    v5 = sub_1D1E6781C();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    LOBYTE(v3) = ServiceKind.init(rawValue:)(v8);
    v9 = v11;
    if (v11 == 53)
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 53;
  }

  *a1 = v9;
  return v3;
}

uint64_t HMService.supportedCharacteristicKinds.getter()
{
  v1 = v0;
  v2 = [v0 serviceType];
  v3 = sub_1D1E6781C();
  v5 = v4;

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  ServiceKind.init(rawValue:)(v6);
  v7 = ServiceKind.requiredCharacteristicKinds.getter();
  v8 = [v1 serviceType];
  v9 = sub_1D1E6781C();
  v11 = v10;

  v12._countAndFlagsBits = v9;
  v12._object = v11;
  ServiceKind.init(rawValue:)(v12);
  v13 = ServiceKind.optionalCharacteristicKinds.getter();

  return sub_1D18C0104(v13, v7);
}

uint64_t sub_1D18C0104(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_1D1765F38(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18C01E0(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 64;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 64);
  for (i = (v5 + 63) >> 6; v7; result = sub_1D17653AC(&v11, *(*(v2 + 48) + ((v9 << 7) | (2 * v10)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D18C02C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D1E66A7C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = v25 - v10;
  result = MEMORY[0x1EEE9AC00](v9);
  v14 = v25 - v13;
  v15 = 0;
  v26 = a1;
  v27 = a2;
  v18 = *(a1 + 56);
  v17 = a1 + 56;
  v16 = v18;
  v19 = 1 << *(v17 - 24);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v22 = (v19 + 63) >> 6;
  v25[2] = v5 + 32;
  v25[3] = v5 + 16;
  v25[1] = v5 + 8;
  if ((v20 & v16) != 0)
  {
    do
    {
      v23 = v15;
LABEL_9:
      v24 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
      (*(v5 + 16))(v14, *(v26 + 48) + *(v5 + 72) * (v24 | (v23 << 6)), v4);
      (*(v5 + 32))(v8, v14, v4);
      sub_1D1762CB8(v11, v8);
      result = (*(v5 + 8))(v11, v4);
    }

    while (v21);
  }

  while (1)
  {
    v23 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v23 >= v22)
    {

      return v27;
    }

    v21 = *(v17 + 8 * v23);
    ++v15;
    if (v21)
    {
      v15 = v23;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

HomeDataModel::ServiceKind_optional ServiceProtocol.serviceKind.getter@<W0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3._countAndFlagsBits = (*(a1 + 72))();
  result.value = ServiceKind.init(rawValue:)(v3).value;
  v5 = v6;
  if (v6 == 53)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

char ServiceProtocol.serviceSubKind.getter@<W0>(uint64_t a1@<X1>, _BYTE *a2@<X8>)
{
  v3 = (*(a1 + 80))();
  if (v4)
  {
    LOBYTE(v3) = ServiceSubKind.init(rawValue:)(*&v3);
    v5 = v7;
    if (v7 == 5)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  *a2 = v5;
  return v3;
}

char ServiceProtocol.associatedServiceKind.getter@<W0>(uint64_t a1@<X1>, char *a2@<X8>)
{
  v3 = (*(a1 + 96))();
  if (v4)
  {
    LOBYTE(v3) = ServiceKind.init(rawValue:)(*&v3);
    v5 = v7;
    if (v7 == 53)
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 53;
  }

  *a2 = v5;
  return v3;
}

uint64_t ServiceProtocol.supportedCharacteristicKinds.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 72);
  v5._countAndFlagsBits = v4();
  ServiceKind.init(rawValue:)(v5);
  v6 = ServiceKind.requiredCharacteristicKinds.getter();
  v7._countAndFlagsBits = (v4)(a1, a2);
  ServiceKind.init(rawValue:)(v7);
  v8 = ServiceKind.optionalCharacteristicKinds.getter();

  return sub_1D18C0104(v8, v6);
}

void *HMService.subscript.getter()
{
  v1 = [v0 characteristics];
  sub_1D18C2060();
  v2 = sub_1D1E67C1C();

  if (v2 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1D1E6873C())
  {
    v4 = 0;
    while (1)
    {
      if ((v2 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x1D3891EF0](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v5 = *(v2 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = [v5 characteristicType];
      v9 = sub_1D1E6781C();
      v11 = v10;

      v12._countAndFlagsBits = v9;
      v12._object = v11;
      CharacteristicKind.init(rawValue:)(v12);
      v13 = CharacteristicKind.rawValue.getter();
      v15 = v14;
      if (v13 == CharacteristicKind.rawValue.getter() && v15 == v16)
      {

LABEL_15:

        return v6;
      }

      v17 = sub_1D1E6904C();

      if (v17)
      {
        goto LABEL_15;
      }

      ++v4;
      if (v7 == i)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

LABEL_19:

  return 0;
}

uint64_t HMService.fetchedValue(for:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  *(v3 + 48) = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D18C08D0, 0, 0);
}

uint64_t sub_1D18C08D0()
{
  v1 = HMService.subscript.getter();
  v0[4] = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    v0[5] = v2;
    *v2 = v0;
    v2[1] = sub_1D18C09C4;
    v3 = v0[2];

    return HMCharacteristic.fetchedValue()(v3);
  }

  else
  {
    v5 = v0[2];
    *v5 = 0u;
    v5[1] = 0u;
    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1D18C09C4()
{
  v1 = *(*v0 + 32);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

double HMService.cachedValue(for:)@<D0>(_BYTE *a1@<X0>, _OWORD *a2@<X8>)
{
  LOBYTE(v6) = *a1;
  v3 = HMService.subscript.getter();
  if (v3)
  {
    v4 = v3;
    if ([v3 value])
    {
      sub_1D1E6866C();
      swift_unknownObjectRelease();
    }

    else
    {

      v6 = 0u;
      v7 = 0u;
    }

    result = *&v6;
    *a2 = v6;
    a2[1] = v7;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t HMService.BOOL(for:)(_BYTE *a1)
{
  *(v2 + 48) = v1;
  *(v2 + 73) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18C0B94, 0, 0);
}

uint64_t sub_1D18C0B94()
{
  v1 = HMService.subscript.getter();
  *(v0 + 56) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    *v2 = v0;
    v2[1] = sub_1D18C0CA0;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
    v4 = *(v0 + 8);

    return v4(2);
  }
}

uint64_t sub_1D18C0CA0()
{
  v1 = *(*v0 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1D18C0DB4, 0, 0);
}

uint64_t sub_1D18C0DB4()
{
  if (*(v0 + 40))
  {
    if (swift_dynamicCast())
    {
      v1 = *(v0 + 72);
    }

    else
    {
      v1 = 2;
    }
  }

  else
  {
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
    v1 = 2;
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

Swift::Bool_optional __swiftcall HMService.cachedBool(for:)(HomeDataModel::CharacteristicKind a1)
{
  LOBYTE(v6) = *a1;
  v1 = HMService.subscript.getter();
  if (!v1)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_10:
    sub_1D1741A30(&v6, &qword_1EC649700, &qword_1D1E6E910);
    return 2;
  }

  v2 = v1;
  if ([v1 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {

    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_10;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 2;
  }
}

uint64_t HMService.int(for:)(_BYTE *a1)
{
  *(v2 + 56) = v1;
  *(v2 + 80) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18C0F7C, 0, 0);
}

uint64_t sub_1D18C0F7C()
{
  v1 = HMService.subscript.getter();
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1D18C108C;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
    v4 = *(v0 + 8);

    return v4(0, 1);
  }
}

uint64_t sub_1D18C108C()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D18C11A0, 0, 0);
}

uint64_t sub_1D18C11A0()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    if (v1)
    {
      v2 = v0[6];
    }

    else
    {
      v2 = 0;
    }

    v3 = v1 ^ 1u;
  }

  else
  {
    sub_1D1741A30((v0 + 2), &qword_1EC649700, &qword_1D1E6E910);
    v2 = 0;
    v3 = 1;
  }

  v4 = v0[1];

  return v4(v2, v3);
}

Swift::Int_optional __swiftcall HMService.cachedInt(for:)(HomeDataModel::CharacteristicKind a1)
{
  LOBYTE(v8) = *a1;
  v1 = HMService.subscript.getter();
  if (!v1)
  {
    v8 = 0u;
    v9 = 0u;
LABEL_11:
    sub_1D1741A30(&v8, &qword_1EC649700, &qword_1D1E6E910);
    v4 = 0;
    v5 = 1;
    goto LABEL_12;
  }

  v2 = v1;
  if ([v1 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {

    v6 = 0u;
    v7 = 0u;
  }

  v8 = v6;
  v9 = v7;
  if (!*(&v7 + 1))
  {
    goto LABEL_11;
  }

  v3 = swift_dynamicCast();
  if (v3)
  {
    v4 = v6;
  }

  else
  {
    v4 = 0;
  }

  v5 = v3 ^ 1;
LABEL_12:
  result.value = v4;
  result.is_nil = v5;
  return result;
}

uint64_t HMService.double(for:)(_BYTE *a1)
{
  *(v2 + 56) = v1;
  *(v2 + 80) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18C1378, 0, 0);
}

uint64_t sub_1D18C1378()
{
  v1 = HMService.subscript.getter();
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = sub_1D18C1488;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
    v4 = *(v0 + 8);

    return v4(0, 1);
  }
}

uint64_t sub_1D18C1488()
{
  v1 = *(*v0 + 64);

  return MEMORY[0x1EEE6DFA0](sub_1D18C159C, 0, 0);
}

uint64_t sub_1D18C159C()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    if (v1)
    {
      v2 = v0[6];
    }

    else
    {
      v2 = 0;
    }

    v3 = v1 ^ 1u;
  }

  else
  {
    sub_1D1741A30((v0 + 2), &qword_1EC649700, &qword_1D1E6E910);
    v2 = 0;
    v3 = 1;
  }

  v4 = v0[1];

  return v4(v2, v3);
}

Swift::Double_optional __swiftcall HMService.cachedDouble(for:)(HomeDataModel::CharacteristicKind a1)
{
  LOBYTE(v7) = *a1;
  v1 = HMService.subscript.getter();
  if (!v1)
  {
    v7 = 0u;
    v8 = 0u;
LABEL_11:
    sub_1D1741A30(&v7, &qword_1EC649700, &qword_1D1E6E910);
    v4 = 0;
    goto LABEL_12;
  }

  v2 = v1;
  if ([v1 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {

    v5 = 0u;
    v6 = 0u;
  }

  v7 = v5;
  v8 = v6;
  if (!*(&v6 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    v4 = v5;
  }

  else
  {
    v4 = 0;
  }

LABEL_12:
  result.value = v3;
  result.is_nil = v4;
  return result;
}

uint64_t HMService.data(for:)(_BYTE *a1)
{
  *(v2 + 64) = v1;
  *(v2 + 88) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18C1774, 0, 0);
}

uint64_t sub_1D18C1774()
{
  v1 = HMService.subscript.getter();
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_1D18C1884;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
    v4 = *(v0 + 8);

    return v4(0, 0xF000000000000000);
  }
}

uint64_t sub_1D18C1884()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D18C1998, 0, 0);
}

uint64_t sub_1D18C1998()
{
  if (v0[5])
  {
    v1 = swift_dynamicCast();
    v2 = v1 == 0;
    if (v1)
    {
      v3 = v0[6];
    }

    else
    {
      v3 = 0;
    }

    if (v2)
    {
      v4 = 0xF000000000000000;
    }

    else
    {
      v4 = v0[7];
    }
  }

  else
  {
    sub_1D1741A30((v0 + 2), &qword_1EC649700, &qword_1D1E6E910);
    v3 = 0;
    v4 = 0xF000000000000000;
  }

  v5 = v0[1];

  return v5(v3, v4);
}

uint64_t HMService.tlv8(for:)(_BYTE *a1)
{
  *(v2 + 64) = v1;
  *(v2 + 88) = *a1;
  return MEMORY[0x1EEE6DFA0](sub_1D18C1A80, 0, 0);
}

uint64_t sub_1D18C1A80()
{
  v1 = HMService.subscript.getter();
  *(v0 + 72) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 80) = v2;
    *v2 = v0;
    v2[1] = sub_1D18C1B90;

    return HMCharacteristic.fetchedValue()(v0 + 16);
  }

  else
  {
    *(v0 + 16) = 0u;
    *(v0 + 32) = 0u;
    sub_1D1741A30(v0 + 16, &qword_1EC649700, &qword_1D1E6E910);
    v4 = *(v0 + 8);

    return v4(0, 0xF000000000000000);
  }
}

uint64_t sub_1D18C1B90()
{
  v1 = *(*v0 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1D18C218C, 0, 0);
}

uint64_t _sSo9HMServiceC13HomeDataModelE06cachedC03for10Foundation0C0VSgAC18CharacteristicKindO_tF_0(_BYTE *a1)
{
  LOBYTE(v6) = *a1;
  v1 = HMService.subscript.getter();
  if (!v1)
  {
    v6 = 0u;
    v7 = 0u;
LABEL_11:
    sub_1D1741A30(&v6, &qword_1EC649700, &qword_1D1E6E910);
    return 0;
  }

  v2 = v1;
  if ([v1 value])
  {
    sub_1D1E6866C();
    swift_unknownObjectRelease();
  }

  else
  {

    v4 = 0u;
    v5 = 0u;
  }

  v6 = v4;
  v7 = v5;
  if (!*(&v5 + 1))
  {
    goto LABEL_11;
  }

  if (swift_dynamicCast())
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

_OWORD *static HMService.convert(_:characteristicKind:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1D18C20AC(a1, &v9);
  if (v10)
  {
    sub_1D1742194(&v9, v11);
    if (v4 > 148)
    {
      if (v4 == 149 || v4 == 156)
      {
        goto LABEL_16;
      }

      if (v4 != 158)
      {
        return sub_1D1742194(v11, a3);
      }

      sub_1D1741970(v11, &v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = v8;
        if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v8 > -9.22337204e18)
          {
            if (v8 >= 9.22337204e18)
            {
              __break(1u);
              goto LABEL_16;
            }

LABEL_25:
            v7 = v6;
            goto LABEL_26;
          }

          goto LABEL_32;
        }

        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }
    }

    else
    {
      if (v4 == 3)
      {
        sub_1D1741970(v11, &v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
        if (swift_dynamicCast())
        {
          v7 = LOBYTE(v8);
          goto LABEL_26;
        }

        goto LABEL_27;
      }

      if (v4 != 12)
      {
        if (v4 != 114)
        {
          return sub_1D1742194(v11, a3);
        }

LABEL_16:
        sub_1D1741970(v11, &v9);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
        if (swift_dynamicCast())
        {
          v7 = (LOBYTE(v8) & 1) == 0;
LABEL_26:
          *(a3 + 24) = MEMORY[0x1E69E6530];
          *a3 = v7;
          return __swift_destroy_boxed_opaque_existential_1(v11);
        }

        goto LABEL_27;
      }

      sub_1D1741970(v11, &v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC6435E0, &unk_1D1E71C80);
      result = swift_dynamicCast();
      if (result)
      {
        v6 = v8;
        if ((*&v8 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
        {
          if (v8 > -9.22337204e18)
          {
            if (v8 < 9.22337204e18)
            {
              goto LABEL_25;
            }

LABEL_34:
            __break(1u);
            return result;
          }

LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        goto LABEL_31;
      }
    }

LABEL_27:
    result = __swift_destroy_boxed_opaque_existential_1(v11);
    goto LABEL_28;
  }

  result = sub_1D1741A30(&v9, &qword_1EC645D58, &unk_1D1E7E530);
LABEL_28:
  *a3 = 0u;
  *(a3 + 16) = 0u;
  return result;
}

void *sub_1D18C2020@<X0>(void *a1@<X8>)
{
  result = HMService.subscript.getter();
  *a1 = result;
  return result;
}

unint64_t sub_1D18C2060()
{
  result = qword_1EE079CD0;
  if (!qword_1EE079CD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE079CD0);
  }

  return result;
}

uint64_t sub_1D18C20AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D58, &unk_1D1E7E530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18C211C(uint64_t a1, uint64_t a2)
{
  v7 = a2;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      sub_1D1771B24(v4);
      sub_1D17642C8(&v6, v4);
      sub_1D1771B10(v6);
      --v2;
    }

    while (v2);
    return v7;
  }

  return a2;
}

uint64_t sub_1D18C21B0(char *a1, char *a2)
{
  v2 = *a2;
  v3 = CategoryKind.description.getter(*a1);
  v5 = v4;
  if (v3 == CategoryKind.description.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D1E6904C();
  }

  return v8 & 1;
}

uint64_t sub_1D18C2248()
{
  v1 = *v0;
  sub_1D1E6920C();
  CategoryKind.description.getter(v1);
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18C22AC(uint64_t a1)
{
  CategoryKind.description.getter(*v1);
  sub_1D1E678EC();
}

uint64_t sub_1D18C2300(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  CategoryKind.description.getter(v2);
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18C2430@<X0>(Swift::String *a1@<X0>, HomeDataModel::CategoryKind_optional *a2@<X8>)
{
  result = _s13HomeDataModel12CategoryKindO8rawValueACSgSS_tcfC_0(a1->_countAndFlagsBits, a1->_object);
  a2->value = result;
  return result;
}

uint64_t sub_1D18C2460@<X0>(uint64_t *a1@<X8>)
{
  result = CategoryKind.description.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t CategoryKind.debugDescription.getter(char a1)
{
  result = 0xD000000000000025;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000026;
      break;
    case 2:
    case 16:
    case 25:
      result = 0xD000000000000020;
      break;
    case 3:
    case 7:
    case 20:
    case 32:
      result = 0xD000000000000024;
      break;
    case 4:
    case 6:
    case 15:
    case 24:
      result = 0xD00000000000001ELL;
      break;
    case 5:
      result = 0xD000000000000022;
      break;
    case 8:
    case 13:
    case 18:
    case 22:
    case 26:
    case 34:
      result = 0xD00000000000001DLL;
      break;
    case 9:
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 10:
      result = 0xD00000000000001BLL;
      break;
    case 12:
      result = 0xD00000000000001ALL;
      break;
    case 14:
    case 27:
      result = 0xD000000000000027;
      break;
    case 17:
      result = 0xD00000000000001CLL;
      break;
    case 19:
      result = 0xD000000000000029;
      break;
    case 21:
    case 35:
      result = 0xD000000000000025;
      break;
    case 23:
    case 28:
    case 31:
    case 33:
      result = 0xD000000000000021;
      break;
    case 29:
      result = 0xD00000000000002ALL;
      break;
    case 30:
      result = 0xD00000000000002FLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t _s13HomeDataModel12CategoryKindO8rawValueACSgSS_tcfC_0(uint64_t a1, uint64_t a2)
{
  if (sub_1D1E6781C() == a1 && v4 == a2)
  {
    v7 = 0;
LABEL_8:

    goto LABEL_9;
  }

  v6 = sub_1D1E6904C();

  if (v6)
  {
    v7 = 0;
LABEL_9:

    return v7;
  }

  if (sub_1D1E6781C() == a1 && v9 == a2)
  {
    v7 = 1;
    goto LABEL_8;
  }

  v11 = sub_1D1E6904C();

  if (v11)
  {
    v7 = 1;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v12 == a2)
  {
    v7 = 2;
    goto LABEL_8;
  }

  v14 = sub_1D1E6904C();

  if (v14)
  {
    v7 = 2;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v15 == a2)
  {
    v7 = 3;
    goto LABEL_8;
  }

  v16 = sub_1D1E6904C();

  if (v16)
  {
    v7 = 3;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v17 == a2)
  {
    v7 = 4;
    goto LABEL_8;
  }

  v18 = sub_1D1E6904C();

  if (v18)
  {
    v7 = 4;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v19 == a2)
  {
    v7 = 5;
    goto LABEL_8;
  }

  v20 = sub_1D1E6904C();

  if (v20)
  {
    v7 = 5;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v21 == a2)
  {
    v7 = 6;
    goto LABEL_8;
  }

  v22 = sub_1D1E6904C();

  if (v22)
  {
    v7 = 6;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v23 == a2)
  {
    v7 = 7;
    goto LABEL_8;
  }

  v24 = sub_1D1E6904C();

  if (v24)
  {
    v7 = 7;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v25 == a2)
  {
    v7 = 8;
    goto LABEL_8;
  }

  v26 = sub_1D1E6904C();

  if (v26)
  {
    v7 = 8;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v27 == a2)
  {
    v7 = 9;
    goto LABEL_8;
  }

  v28 = sub_1D1E6904C();

  if (v28)
  {
    v7 = 9;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v29 == a2)
  {
    v7 = 10;
    goto LABEL_8;
  }

  v30 = sub_1D1E6904C();

  if (v30)
  {
    v7 = 10;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v31 == a2)
  {
    v7 = 11;
    goto LABEL_8;
  }

  v32 = sub_1D1E6904C();

  if (v32)
  {
    v7 = 11;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v33 == a2)
  {
    v7 = 12;
    goto LABEL_8;
  }

  v34 = sub_1D1E6904C();

  if (v34)
  {
    v7 = 12;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v35 == a2)
  {
    v7 = 13;
    goto LABEL_8;
  }

  v36 = sub_1D1E6904C();

  if (v36)
  {
    v7 = 13;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v37 == a2)
  {
    v7 = 14;
    goto LABEL_8;
  }

  v38 = sub_1D1E6904C();

  if (v38)
  {
    v7 = 14;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v39 == a2)
  {
    v7 = 15;
    goto LABEL_8;
  }

  v40 = sub_1D1E6904C();

  if (v40)
  {
    v7 = 15;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v41 == a2)
  {
    v7 = 16;
    goto LABEL_8;
  }

  v42 = sub_1D1E6904C();

  if (v42)
  {
    v7 = 16;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v43 == a2)
  {
    v7 = 17;
    goto LABEL_8;
  }

  v44 = sub_1D1E6904C();

  if (v44)
  {
    v7 = 17;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v45 == a2)
  {
    v7 = 18;
    goto LABEL_8;
  }

  v46 = sub_1D1E6904C();

  if (v46)
  {
    v7 = 18;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v47 == a2)
  {
    v7 = 19;
    goto LABEL_8;
  }

  v48 = sub_1D1E6904C();

  if (v48)
  {
    v7 = 19;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v49 == a2)
  {
    v7 = 20;
    goto LABEL_8;
  }

  v50 = sub_1D1E6904C();

  if (v50)
  {
    v7 = 20;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v51 == a2)
  {
    v7 = 21;
    goto LABEL_8;
  }

  v52 = sub_1D1E6904C();

  if (v52)
  {
    v7 = 21;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v53 == a2)
  {
    v7 = 22;
    goto LABEL_8;
  }

  v54 = sub_1D1E6904C();

  if (v54)
  {
    v7 = 22;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v55 == a2)
  {
    v7 = 23;
    goto LABEL_8;
  }

  v56 = sub_1D1E6904C();

  if (v56)
  {
    v7 = 23;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v57 == a2)
  {
    v7 = 24;
    goto LABEL_8;
  }

  v58 = sub_1D1E6904C();

  if (v58)
  {
    v7 = 24;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v59 == a2)
  {
    v7 = 25;
    goto LABEL_8;
  }

  v60 = sub_1D1E6904C();

  if (v60)
  {
    v7 = 25;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v61 == a2)
  {
    v7 = 26;
    goto LABEL_8;
  }

  v62 = sub_1D1E6904C();

  if (v62)
  {
    v7 = 26;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v63 == a2)
  {
    v7 = 27;
    goto LABEL_8;
  }

  v64 = sub_1D1E6904C();

  if (v64)
  {
    v7 = 27;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v65 == a2)
  {
    v7 = 28;
    goto LABEL_8;
  }

  v66 = sub_1D1E6904C();

  if (v66)
  {
    v7 = 28;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v67 == a2)
  {
    v7 = 29;
    goto LABEL_8;
  }

  v68 = sub_1D1E6904C();

  if (v68)
  {
    v7 = 29;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v69 == a2)
  {
    v7 = 30;
    goto LABEL_8;
  }

  v70 = sub_1D1E6904C();

  if (v70)
  {
    v7 = 30;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v71 == a2)
  {
    v7 = 31;
    goto LABEL_8;
  }

  v72 = sub_1D1E6904C();

  if (v72)
  {
    v7 = 31;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v73 == a2)
  {
    v7 = 32;
    goto LABEL_8;
  }

  v74 = sub_1D1E6904C();

  if (v74)
  {
    v7 = 32;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v75 == a2)
  {
    v7 = 33;
    goto LABEL_8;
  }

  v76 = sub_1D1E6904C();

  if (v76)
  {
    v7 = 33;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v77 == a2)
  {
    v7 = 34;
    goto LABEL_8;
  }

  v78 = sub_1D1E6904C();

  if (v78)
  {
    v7 = 34;
    goto LABEL_9;
  }

  if (sub_1D1E6781C() == a1 && v79 == a2)
  {
    v7 = 35;
    goto LABEL_8;
  }

  v80 = sub_1D1E6904C();

  if (v80)
  {
    return 35;
  }

  else
  {
    return 36;
  }
}

unint64_t sub_1D18C33F4()
{
  result = qword_1EC645D60;
  if (!qword_1EC645D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC645D68, &qword_1D1E7C6D8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645D60);
  }

  return result;
}

unint64_t sub_1D18C3458()
{
  result = qword_1EC645D70;
  if (!qword_1EC645D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645D70);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CategoryKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDD)
  {
    goto LABEL_17;
  }

  if (a2 + 35 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 35) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 35;
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

      return (*a1 | (v4 << 8)) - 35;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 35;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x24;
  v8 = v6 - 36;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CategoryKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 35 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 35) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDD)
  {
    v4 = 0;
  }

  if (a2 > 0xDC)
  {
    v5 = ((a2 - 221) >> 8) + 1;
    *result = a2 + 35;
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
    *result = a2 + 35;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D18C35FC()
{
  result = qword_1EC645D78;
  if (!qword_1EC645D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645D78);
  }

  return result;
}

void static CharacteristicKind.Value.typedValue(for:value:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = a2;
  v5 = sub_1D1E66A7C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [a1 metadata];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 format];
    if (v11)
    {
      v12 = v6;
      v13 = v11;
      v14 = sub_1D1E6781C();
      v16 = v15;

      v6 = v12;
      v17._countAndFlagsBits = v14;
      v17._object = v16;
      CharacteristicKind.Format.init(rawValue:)(v17);
      if (v81[0] != 11)
      {
        static CharacteristicKind.Value.typedValue(for:valueFormat:)(v78, v81, a3);

        return;
      }
    }

    v77 = v6;
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v18 = sub_1D1E6709C();
    __swift_project_value_buffer(v18, qword_1EE07B5D8);
    sub_1D18CA7C0(v78, v81);
    v19 = a1;
    v20 = v10;
    v21 = sub_1D1E6707C();
    v22 = sub_1D1E6833C();

    if (os_log_type_enabled(v21, v22))
    {
      v75 = v21;
      LODWORD(v78) = v22;
      v23 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v80 = v76;
      *v23 = 136316162;
      *(v23 + 4) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EBC4B0, &v80);
      *(v23 + 12) = 2080;
      sub_1D18CA7C0(v81, v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
      v24 = sub_1D1E6789C();
      v26 = v25;
      sub_1D18B9B30(v81);
      v27 = sub_1D1B1312C(v24, v26, &v80);

      *(v23 + 14) = v27;
      *(v23 + 22) = 2080;
      v28 = [v20 format];
      if (v28)
      {
        v29 = v28;
        v30 = sub_1D1E6781C();
        v32 = v31;
      }

      else
      {
        v32 = 0xE300000000000000;
        v30 = 7104878;
      }

      v57 = v75;
      v58 = sub_1D1B1312C(v30, v32, &v80);

      *(v23 + 24) = v58;
      *(v23 + 32) = 2080;
      v59 = [v19 characteristicType];
      v60 = sub_1D1E6781C();
      v62 = v61;

      v63._countAndFlagsBits = v60;
      v63._object = v62;
      CharacteristicKind.init(rawValue:)(v63);
      v64 = v79[0];
      if (v79[0] == 174)
      {
        v64 = 0;
      }

      v79[0] = v64;
      v65 = sub_1D1E6789C();
      v67 = sub_1D1B1312C(v65, v66, &v80);

      *(v23 + 34) = v67;
      *(v23 + 42) = 2080;
      v68 = [v19 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1886B8C();
      v69 = sub_1D1E68FAC();
      v71 = v70;
      (*(v77 + 8))(v8, v5);
      v72 = sub_1D1B1312C(v69, v71, &v80);

      *(v23 + 44) = v72;
      _os_log_impl(&dword_1D16EC000, v57, v78, "%s unable to slurp value %s (bad format: %s) for characteristic %s (%s)", v23, 0x34u);
      v73 = v76;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v73, -1, -1);
      MEMORY[0x1D3893640](v23, -1, -1);

LABEL_22:
      goto LABEL_23;
    }
  }

  else
  {
    if (qword_1EE07B5D0 != -1)
    {
      swift_once();
    }

    v33 = sub_1D1E6709C();
    __swift_project_value_buffer(v33, qword_1EE07B5D8);
    sub_1D18CA7C0(v78, v81);
    v34 = a1;
    v20 = sub_1D1E6707C();
    v35 = sub_1D1E6833C();

    if (os_log_type_enabled(v20, v35))
    {
      v36 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v80 = v78;
      *v36 = 136315906;
      *(v36 + 4) = sub_1D1B1312C(0xD000000000000016, 0x80000001D1EBC4B0, &v80);
      *(v36 + 12) = 2080;
      sub_1D18CA7C0(v81, v79);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
      v37 = sub_1D1E6789C();
      LODWORD(v77) = v35;
      v38 = v37;
      v40 = v39;
      sub_1D18B9B30(v81);
      v41 = sub_1D1B1312C(v38, v40, &v80);

      *(v36 + 14) = v41;
      *(v36 + 22) = 2080;
      v42 = [v34 characteristicType];
      v43 = sub_1D1E6781C();
      v45 = v44;

      v46._countAndFlagsBits = v43;
      v46._object = v45;
      CharacteristicKind.init(rawValue:)(v46);
      v47 = v79[0];
      if (v79[0] == 174)
      {
        v47 = 0;
      }

      v79[0] = v47;
      v48 = sub_1D1E6789C();
      v50 = sub_1D1B1312C(v48, v49, &v80);

      *(v36 + 24) = v50;
      *(v36 + 32) = 2080;
      v51 = [v34 uniqueIdentifier];
      sub_1D1E66A5C();

      sub_1D1886B8C();
      v52 = sub_1D1E68FAC();
      v54 = v53;
      (*(v6 + 8))(v8, v5);
      v55 = sub_1D1B1312C(v52, v54, &v80);

      *(v36 + 34) = v55;
      _os_log_impl(&dword_1D16EC000, v20, v77, "%s unable to slurp value %s (missing metadata) for characteristic %s (%s)", v36, 0x2Au);
      v56 = v78;
      swift_arrayDestroy();
      MEMORY[0x1D3893640](v56, -1, -1);
      MEMORY[0x1D3893640](v36, -1, -1);
      goto LABEL_22;
    }
  }

  sub_1D18B9B30(v81);
LABEL_23:
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = -1;
}

uint64_t CharacteristicKind.Value.rawObjectValue.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  if (v3 <= 5)
  {
    if (*(v2 + 16) <= 2u)
    {
      if (!*(v2 + 16))
      {
        return sub_1D1E67D2C();
      }

      if (v3 == 1)
      {
        return sub_1D1E691BC();
      }

      return sub_1D1E692AC();
    }

    if (v3 == 3)
    {
      return sub_1D1E692CC();
    }

    if (v3 == 4)
    {
      return sub_1D1E692DC();
    }

    return sub_1D1E691AC();
  }

  if (*(v2 + 16) > 8u)
  {
    if (v3 == 9 || v3 == 10)
    {
      return sub_1D1E6688C();
    }

    else
    {
      return 0;
    }
  }

  else
  {
    if (v3 == 6)
    {
      return sub_1D1E691AC();
    }

    if (v3 == 7)
    {
      return sub_1D1E680EC();
    }

    else
    {
      return sub_1D1E677EC();
    }
  }
}

HomeDataModel::CharacteristicKind_optional __swiftcall CharacteristicKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E6908C();

  v5 = v3 - 128;
  if (v3 >= 0x80)
  {
    v6 = -100;
    LOBYTE(v3) = 0x80;
    switch(v5)
    {
      case 0uLL:
        goto LABEL_2;
      case 1uLL:
        LOBYTE(v3) = -127;
        goto LABEL_2;
      case 2uLL:
        LOBYTE(v3) = -126;
        goto LABEL_2;
      case 3uLL:
        LOBYTE(v3) = -125;
        goto LABEL_2;
      case 4uLL:
        LOBYTE(v3) = -124;
        goto LABEL_2;
      case 5uLL:
        LOBYTE(v3) = -123;
        goto LABEL_2;
      case 6uLL:
        LOBYTE(v3) = -122;
        goto LABEL_2;
      case 7uLL:
        LOBYTE(v3) = -121;
        goto LABEL_2;
      case 8uLL:
        LOBYTE(v3) = -120;
        goto LABEL_2;
      case 9uLL:
        LOBYTE(v3) = -119;
        goto LABEL_2;
      case 0xAuLL:
        LOBYTE(v3) = -118;
        goto LABEL_2;
      case 0xBuLL:
        LOBYTE(v3) = -117;
        goto LABEL_2;
      case 0xCuLL:
        LOBYTE(v3) = -116;
        goto LABEL_2;
      case 0xDuLL:
        LOBYTE(v3) = -115;
        goto LABEL_2;
      case 0xEuLL:
        LOBYTE(v3) = -114;
        goto LABEL_2;
      case 0xFuLL:
        LOBYTE(v3) = -113;
        goto LABEL_2;
      case 0x10uLL:
        LOBYTE(v3) = -112;
        goto LABEL_2;
      case 0x11uLL:
        LOBYTE(v3) = -111;
        goto LABEL_2;
      case 0x12uLL:
        LOBYTE(v3) = -110;
        goto LABEL_2;
      case 0x13uLL:
        LOBYTE(v3) = -109;
        goto LABEL_2;
      case 0x14uLL:
        LOBYTE(v3) = -108;
        goto LABEL_2;
      case 0x15uLL:
        LOBYTE(v3) = -107;
        goto LABEL_2;
      case 0x16uLL:
        LOBYTE(v3) = -106;
        goto LABEL_2;
      case 0x17uLL:
        LOBYTE(v3) = -105;
        goto LABEL_2;
      case 0x18uLL:
        LOBYTE(v3) = -104;
        goto LABEL_2;
      case 0x19uLL:
        LOBYTE(v3) = -103;
        goto LABEL_2;
      case 0x1AuLL:
        LOBYTE(v3) = -102;
        goto LABEL_2;
      case 0x1BuLL:
        LOBYTE(v3) = -101;
        goto LABEL_2;
      case 0x1CuLL:
        break;
      case 0x1DuLL:
        v6 = -99;
        break;
      case 0x1EuLL:
        v6 = -98;
        break;
      case 0x1FuLL:
        v6 = -97;
        break;
      case 0x20uLL:
        v6 = -96;
        break;
      case 0x21uLL:
        v6 = -95;
        break;
      case 0x22uLL:
        v6 = -94;
        break;
      case 0x23uLL:
        v6 = -93;
        break;
      case 0x24uLL:
        v6 = -92;
        break;
      case 0x25uLL:
        v6 = -91;
        break;
      case 0x26uLL:
        v6 = -90;
        break;
      case 0x27uLL:
        v6 = -89;
        break;
      case 0x28uLL:
        v6 = -88;
        break;
      case 0x29uLL:
        v6 = -87;
        break;
      case 0x2AuLL:
        v6 = -86;
        break;
      case 0x2BuLL:
        v6 = -85;
        break;
      case 0x2CuLL:
        v6 = -84;
        break;
      case 0x2DuLL:
        v6 = -83;
        break;
      default:
        v6 = -82;
        break;
    }
  }

  else
  {
LABEL_2:
    v6 = v3;
  }

  *v2 = v6;
  return result;
}

unint64_t sub_1D18C4908@<X0>(void *a1@<X8>)
{
  result = CharacteristicKind.rawValue.getter();
  *a1 = 0xD000000000000024;
  a1[1] = v3;
  return result;
}

uint64_t sub_1D18C4938()
{
  CharacteristicKind.rawValue.getter();
  v1 = v0;
  CharacteristicKind.rawValue.getter();
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

uint64_t sub_1D18C49E4()
{
  CharacteristicKind.rawValue.getter();
  v1 = v0;
  CharacteristicKind.rawValue.getter();
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1D1E6904C();
  }

  return v3 & 1;
}

uint64_t static CharacteristicKind.< infix(_:_:)()
{
  CharacteristicKind.rawValue.getter();
  v1 = v0;
  CharacteristicKind.rawValue.getter();
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1D1E6904C();
  }

  return v3 & 1;
}

uint64_t sub_1D18C4B1C()
{
  CharacteristicKind.rawValue.getter();
  v1 = v0;
  CharacteristicKind.rawValue.getter();
  if (v1 == v2)
  {

    v4 = 1;
  }

  else
  {
    v3 = sub_1D1E6904C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D18C4BCC()
{
  CharacteristicKind.rawValue.getter();
  v1 = v0;
  CharacteristicKind.rawValue.getter();
  if (v1 == v2)
  {

    v4 = 1;
  }

  else
  {
    v3 = sub_1D1E6904C();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_1D18C4C7C()
{
  CharacteristicKind.rawValue.getter();
  v1 = v0;
  CharacteristicKind.rawValue.getter();
  if (v1 == v2)
  {
    v3 = 0;
  }

  else
  {
    v3 = sub_1D1E6904C();
  }

  return v3 & 1;
}

uint64_t sub_1D18C4D18()
{
  sub_1D1E6920C();
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t sub_1D18C4D80(uint64_t a1)
{
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();
}

uint64_t sub_1D18C4DE4(uint64_t a1)
{
  sub_1D1E6920C();
  CharacteristicKind.rawValue.getter();
  sub_1D1E678EC();

  return sub_1D1E6926C();
}

uint64_t CharacteristicKind.Value.id.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D1778244(v2, v3, v4);
}

HomeDataModel::CharacteristicKind::Format_optional __swiftcall CharacteristicKind.Format.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 11;
  if (v3 < 0xB)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t static CharacteristicKind.Value.typedValue(for:valueFormat:)@<X0>(uint64_t a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1D18CA7C0(a1, &v39);
  if (!v40)
  {
    result = sub_1D18B9B30(&v39);
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  sub_1D1742194(&v39, v41);
  sub_1D1741970(v41, &v39);
  if (!swift_dynamicCast())
  {
    if (swift_dynamicCast())
    {
      sub_1D1741970(v41, v36);
      v8 = swift_dynamicCast();
      v9 = v34;
      if (!v8)
      {
        v9 = 0;
      }

      sub_1D18C5638(v9 | ((v8 ^ 1u) << 8), v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v41, v36);
      v10 = swift_dynamicCast();
      v11 = v34;
      if (!v10)
      {
        v11 = 0;
      }

      sub_1D18C5798(v11 | ((v10 ^ 1u) << 16), v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v41, v36);
      v12 = swift_dynamicCast();
      v13 = v34;
      LOBYTE(v34) = v12 ^ 1;
      if (!v12)
      {
        v13 = 0;
      }

      sub_1D18C590C(v13 | ((v12 ^ 1u) << 32), v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v41, v36);
      v5 = swift_dynamicCast();
      if (v5)
      {
        v6 = v34;
      }

      else
      {
        v6 = 0;
      }

      goto LABEL_6;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v41, v36);
      v14 = swift_dynamicCast();
      v15 = v34;
      if (!v14)
      {
        v15 = 0;
      }

      sub_1D18C5BFC(v15 | ((v14 ^ 1u) << 8), v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v41, v36);
      v16 = swift_dynamicCast();
      v17 = v34;
      if (!v16)
      {
        v17 = 0;
      }

      sub_1D18C5D44(v17 | ((v16 ^ 1u) << 16), v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v41, v36);
      v18 = swift_dynamicCast();
      v19 = v34;
      LOBYTE(v34) = v18 ^ 1;
      if (!v18)
      {
        v19 = 0;
      }

      sub_1D18C5E98(v19 | ((v18 ^ 1u) << 32), v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v41, v36);
      v20 = swift_dynamicCast();
      if (v20)
      {
        v21 = v34;
      }

      else
      {
        v21 = 0;
      }

      sub_1D18C6000(v21, v20 ^ 1, v4, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v41, v36);
      v22 = swift_dynamicCast();
      v24 = v34;
      LOBYTE(v34) = v22 ^ 1;
      if (!v22)
      {
        v24 = 0;
      }

      sub_1D18C6160(v24 | ((v22 ^ 1u) << 32), v4, a3, v23);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v41, v36);
      v25 = swift_dynamicCast();
      if (v25)
      {
        v27 = v34;
      }

      else
      {
        v27 = 0;
      }

      sub_1D18C6410(v27, v25 ^ 1, v4, a3, v26);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {
      sub_1D1741970(v41, v36);
      if (swift_dynamicCast())
      {
        v28 = v34;
      }

      else
      {
        v28 = 2;
      }

      LOBYTE(v34) = v4;
      sub_1D18C66BC(v28, &v34, a3);
      goto LABEL_20;
    }

    if (swift_dynamicCast())
    {

      sub_1D1742194(v41, v36);
      if (swift_dynamicCast())
      {
        v29 = v34;
        v30 = v35;
        v31 = 8;
      }

      else
      {
        v29 = 0;
        v30 = 0;
        v31 = -1;
      }

      *a3 = v29;
      *(a3 + 8) = v30;
      *(a3 + 16) = v31;
      return __swift_destroy_boxed_opaque_existential_1(&v39);
    }

    if (swift_dynamicCast())
    {
      sub_1D174E7C4(v37, v38);
      sub_1D1742194(v41, v36);
      if (swift_dynamicCast())
      {
        v32 = v35;
        if (v4 == 9)
        {
          *a3 = v34;
          *(a3 + 8) = v32;
          v33 = 9;
          goto LABEL_69;
        }

        if (v4 == 10)
        {
          *a3 = v34;
          *(a3 + 8) = v32;
          v33 = 10;
LABEL_69:
          *(a3 + 16) = v33;
          return __swift_destroy_boxed_opaque_existential_1(&v39);
        }

        sub_1D174E7C4(v34, v35);
      }
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v41);
    }

    *a3 = 0;
    *(a3 + 8) = 0;
    v33 = -1;
    goto LABEL_69;
  }

  sub_1D1741970(v41, v36);
  v5 = swift_dynamicCast();
  if (v5)
  {
    v6 = v34;
  }

  else
  {
    v6 = 0;
  }

LABEL_6:
  sub_1D18C5A80(v6, v5 ^ 1, v4, a3);
LABEL_20:
  __swift_destroy_boxed_opaque_existential_1(v41);
  return __swift_destroy_boxed_opaque_existential_1(&v39);
}

uint64_t sub_1D18C5638@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if ((result & 0x100) != 0)
  {
    goto LABEL_11;
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 - 5 >= 2)
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
      }

      else
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 5;
      }

      return result;
    }

    if (a2 == 8)
    {
      result = sub_1D1E68FAC();
      *a3 = result;
      *(a3 + 8) = v4;
      *(a3 + 16) = 8;
      return result;
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      *a3 = result & ~(result >> 31);
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else if (a2 == 2)
  {
    *a3 = result & ~(result >> 31);
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  else if (a2 == 3)
  {
    *a3 = result & ~(result >> 31);
    *(a3 + 8) = 0;
    *(a3 + 16) = 3;
  }

  else if ((result & 0x80) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = result & 0x7F;
    *(a3 + 8) = 0;
    *(a3 + 16) = 4;
  }

  return result;
}

uint64_t sub_1D18C5798@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if ((result & 0x10000) != 0)
  {
    goto LABEL_13;
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 - 5 >= 2)
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
      }

      else
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 5;
      }

      return result;
    }

    if (a2 == 8)
    {
      result = sub_1D1E68FAC();
      *a3 = result;
      *(a3 + 8) = v5;
      *(a3 + 16) = 8;
      return result;
    }

LABEL_13:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = result;
      if (result >= 0x100u)
      {
        v6 = 255;
      }

      if ((result & 0x8000) != 0)
      {
        v6 = 0;
      }

      *a3 = v6;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else if (a2 == 2)
  {
    *a3 = result & ~(result >> 31);
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  else if (a2 == 3)
  {
    v3 = result;
    if (v3 < 0)
    {
      v3 = 0;
    }

    *a3 = v3;
    *(a3 + 8) = 0;
    *(a3 + 16) = 3;
  }

  else if ((result & 0x8000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = result & 0x7FFF;
    *(a3 + 8) = 0;
    *(a3 + 16) = 4;
  }

  return result;
}

uint64_t sub_1D18C590C@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_11;
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 - 5 >= 2)
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
      }

      else
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 5;
      }

      return result;
    }

    if (a2 == 8)
    {
      result = sub_1D1E68FAC();
      *a3 = result;
      *(a3 + 8) = v5;
      *(a3 + 16) = 8;
      return result;
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v6 = result;
      if (result > 255)
      {
        v6 = 255;
      }

      if (result < 0)
      {
        v6 = 0;
      }

      *a3 = v6;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else if (a2 == 2)
  {
    v3 = result;
    if (result >= 0x10000)
    {
      v3 = 0xFFFFLL;
    }

    if (result < 0)
    {
      v3 = 0;
    }

    *a3 = v3;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  else if (a2 == 3)
  {
    *a3 = result & ~(result >> 31);
    *(a3 + 8) = 0;
    *(a3 + 16) = 3;
  }

  else if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a3 = result & 0x7FFFFFFF;
    *(a3 + 8) = 0;
    *(a3 + 16) = 4;
  }

  return result;
}

uint64_t sub_1D18C5A80@<X0>(uint64_t result@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a6@<X8>)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if (a3 <= 4u)
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        v11 = 255;
        if (result < 255)
        {
          v11 = result;
        }

        *a6 = v11 & ~(v11 >> 63);
        *(a6 + 8) = 0;
        *(a6 + 16) = 1;
      }

      else
      {
        *a6 = result == 1;
        *(a6 + 8) = 0;
        *(a6 + 16) = 0;
      }
    }

    else if (a3 == 2)
    {
      v8 = 0xFFFFLL;
      if (result < 0xFFFF)
      {
        v8 = result;
      }

      *a6 = v8 & ~(v8 >> 63);
      *(a6 + 8) = 0;
      *(a6 + 16) = 2;
    }

    else if (a3 == 3)
    {
      v7 = 0xFFFFFFFFLL;
      if (result < 0xFFFFFFFFLL)
      {
        v7 = result;
      }

      *a6 = v7 & ~(v7 >> 63);
      *(a6 + 8) = 0;
      *(a6 + 16) = 3;
    }

    else if (result < 0)
    {
      __break(1u);
    }

    else
    {
      *a6 = result;
      *(a6 + 8) = 0;
      *(a6 + 16) = 4;
    }
  }

  else if (a3 > 7u)
  {
    if (a3 != 8)
    {
LABEL_2:
      *a6 = 0;
      *(a6 + 8) = 0;
      *(a6 + 16) = -1;
      return result;
    }

    result = sub_1D1E68FAC();
    *a6 = result;
    *(a6 + 8) = v10;
    *(a6 + 16) = 8;
  }

  else if (a3 - 5 >= 2)
  {
    *a6 = result;
    *(a6 + 8) = 0;
    *(a6 + 16) = 7;
  }

  else
  {
    v6 = 0x7FFFFFFFLL;
    if (result < 0x7FFFFFFF)
    {
      v6 = result;
    }

    if (v6 <= 0xFFFFFFFF80000000)
    {
      LODWORD(v6) = 0x80000000;
    }

    *a6 = v6;
    *(a6 + 8) = 0;
    *(a6 + 16) = 5;
  }

  return result;
}

uint64_t sub_1D18C5BFC@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if ((result & 0x100) != 0)
  {
    goto LABEL_11;
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 - 5 >= 2)
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
      }

      else
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 5;
      }

      return result;
    }

    if (a2 == 8)
    {
      result = sub_1D1E68FAC();
      *a3 = result;
      *(a3 + 8) = v4;
      *(a3 + 16) = 8;
      return result;
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      *a3 = result;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else if (a2 == 2)
  {
    *a3 = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = 0;
    if (a2 == 3)
    {
      *(a3 + 16) = 3;
    }

    else
    {
      *(a3 + 16) = 4;
    }
  }

  return result;
}

uint64_t sub_1D18C5D44@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if ((result & 0x10000) != 0)
  {
    goto LABEL_11;
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 - 5 >= 2)
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
      }

      else
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 5;
      }

      return result;
    }

    if (a2 == 8)
    {
      result = sub_1D1E68FAC();
      *a3 = result;
      *(a3 + 8) = v4;
      *(a3 + 16) = 8;
      return result;
    }

LABEL_11:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v5 = result;
      if ((result & 0xFF00) != 0)
      {
        v5 = 255;
      }

      *a3 = v5;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else if (a2 == 2)
  {
    *a3 = result;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = 0;
    if (a2 == 3)
    {
      *(a3 + 16) = 3;
    }

    else
    {
      *(a3 + 16) = 4;
    }
  }

  return result;
}

uint64_t sub_1D18C5E98@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_14;
  }

  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 - 5 >= 2)
      {
        *a3 = result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
      }

      else
      {
        if (result >= 0x7FFFFFFF)
        {
          v3 = 0x7FFFFFFFLL;
        }

        else
        {
          v3 = result;
        }

        *a3 = v3;
        *(a3 + 8) = 0;
        *(a3 + 16) = 5;
      }

      return result;
    }

    if (a2 == 8)
    {
      result = sub_1D1E68FAC();
      *a3 = result;
      *(a3 + 8) = v6;
      *(a3 + 16) = 8;
      return result;
    }

LABEL_14:
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = -1;
    return result;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v7 = result;
      if (result > 0xFF)
      {
        v7 = 255;
      }

      *a3 = v7;
      *(a3 + 8) = 0;
      *(a3 + 16) = 1;
    }

    else
    {
      *a3 = result == 1;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
    }
  }

  else if (a2 == 2)
  {
    v4 = result;
    if (WORD1(result))
    {
      v4 = 0xFFFFLL;
    }

    *a3 = v4;
    *(a3 + 8) = 0;
    *(a3 + 16) = 2;
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = 0;
    if (a2 == 3)
    {
      *(a3 + 16) = 3;
    }

    else
    {
      *(a3 + 16) = 4;
    }
  }

  return result;
}

unint64_t sub_1D18C6000@<X0>(unint64_t result@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    goto LABEL_2;
  }

  if (a3 <= 4u)
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        v9 = 255;
        if (result < 0xFF)
        {
          v9 = result;
        }

        *a4 = v9;
        *(a4 + 8) = 0;
        *(a4 + 16) = 1;
      }

      else
      {
        *a4 = result == 1;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
      }
    }

    else if (a3 == 2)
    {
      v6 = 0xFFFFLL;
      if (result < 0xFFFF)
      {
        v6 = result;
      }

      *a4 = v6;
      *(a4 + 8) = 0;
      *(a4 + 16) = 2;
    }

    else if (a3 == 3)
    {
      v5 = 0xFFFFFFFFLL;
      if (result < 0xFFFFFFFF)
      {
        v5 = result;
      }

      *a4 = v5;
      *(a4 + 8) = 0;
      *(a4 + 16) = 3;
    }

    else
    {
      *a4 = result;
      *(a4 + 8) = 0;
      *(a4 + 16) = 4;
    }
  }

  else if (a3 > 7u)
  {
    if (a3 != 8)
    {
LABEL_2:
      *a4 = 0;
      *(a4 + 8) = 0;
      *(a4 + 16) = -1;
      return result;
    }

    result = sub_1D1E68FAC();
    *a4 = result;
    *(a4 + 8) = v8;
    *(a4 + 16) = 8;
  }

  else if (a3 - 5 >= 2)
  {
    *a4 = result;
    *(a4 + 8) = 0;
    *(a4 + 16) = 7;
  }

  else
  {
    v4 = 0x7FFFFFFFLL;
    if (result < 0x7FFFFFFF)
    {
      v4 = result;
    }

    *a4 = v4;
    *(a4 + 8) = 0;
    *(a4 + 16) = 5;
  }

  return result;
}

uint64_t sub_1D18C6160@<X0>(uint64_t result@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  if ((result & 0x100000000) != 0)
  {
    goto LABEL_20;
  }

  a4.n128_u32[0] = result;
  if (a2 > 4u)
  {
    if (a2 <= 7u)
    {
      if (a2 != 5 && a2 != 6)
      {
        *a3 = *&result;
        *(a3 + 8) = 0;
        *(a3 + 16) = 7;
        return result;
      }

      v4 = a3;
      result = sub_1D18CA5DC(&v10, a4);
      if ((v11 & 1) == 0)
      {
        v5 = v10;
        if (v10 >= 0x7FFFFFFF)
        {
          v5 = 0x7FFFFFFFLL;
        }

        if (v5 <= 0xFFFFFFFF80000000)
        {
          LODWORD(v5) = 0x80000000;
        }

        *v4 = v5;
        *(v4 + 8) = 0;
        v6 = 6;
        goto LABEL_34;
      }

      goto LABEL_36;
    }

    if (a2 != 8)
    {
LABEL_20:
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = -1;
      return result;
    }

    v4 = a3;
    result = sub_1D1E68ABC();
    *v4 = 0;
    *(v4 + 8) = 0xE000000000000000;
    v6 = 8;
LABEL_34:
    *(v4 + 16) = v6;
    return result;
  }

  if (a2 <= 1u)
  {
    if (!a2)
    {
      *a3 = *&result != 0.0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return result;
    }

    v4 = a3;
    result = sub_1D18CA5DC(&v10, a4);
    if ((v11 & 1) == 0)
    {
      v9 = v10;
      if (v10 >= 255)
      {
        v9 = 255;
      }

      *v4 = v9 & ~(v9 >> 63);
      *(v4 + 8) = 0;
      v6 = 1;
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  v4 = a3;
  if (a2 == 2)
  {
    result = sub_1D18CA5DC(&v10, a4);
    if ((v11 & 1) == 0)
    {
      v8 = v10;
      if (v10 >= 0xFFFF)
      {
        v8 = 0xFFFFLL;
      }

      *v4 = v8 & ~(v8 >> 63);
      *(v4 + 8) = 0;
      v6 = 2;
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  if (a2 == 3)
  {
    result = sub_1D18CA5DC(&v10, a4);
    if ((v11 & 1) == 0)
    {
      v7 = v10;
      if (v10 >= 0xFFFFFFFFLL)
      {
        v7 = 0xFFFFFFFFLL;
      }

      *v4 = v7 & ~(v7 >> 63);
      *(v4 + 8) = 0;
      v6 = 3;
      goto LABEL_34;
    }

    goto LABEL_36;
  }

  result = sub_1D18CA5DC(&v10, a4);
  if ((v11 & 1) == 0)
  {
    *v4 = v10 & ~(v10 >> 63);
    *(v4 + 8) = 0;
    v6 = 4;
    goto LABEL_34;
  }

LABEL_36:
  v10 = 0;
  v11 = 0xE000000000000000;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x74616F6C46, 0xE500000000000000);
  MEMORY[0x1D3890F70](0xD00000000000001ELL, 0x80000001D1EBC4F0);
  MEMORY[0x1D3890F70](7630409, 0xE300000000000000);
  MEMORY[0x1D3890F70](0xD00000000000002ELL, 0x80000001D1EBC510);
  result = sub_1D1E68AFC();
  __break(1u);
  return result;
}

unint64_t sub_1D18C6410@<X0>(unint64_t result@<X0>, char a2@<W1>, unsigned __int8 a3@<W2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  if (a2)
  {
    goto LABEL_2;
  }

  a5.n128_u64[0] = result;
  if (a3 <= 4u)
  {
    if (a3 <= 1u)
    {
      if (!a3)
      {
        *a4 = *&result != 0.0;
        *(a4 + 8) = 0;
        *(a4 + 16) = 0;
        return result;
      }

      v5 = a4;
      result = sub_1D18CA3EC(&v11, a5);
      if ((v12 & 1) == 0)
      {
        v10 = v11;
        if (v11 >= 255)
        {
          v10 = 255;
        }

        *v5 = v10 & ~(v10 >> 63);
        *(v5 + 8) = 0;
        v7 = 1;
        goto LABEL_35;
      }
    }

    else
    {
      v5 = a4;
      if (a3 == 2)
      {
        result = sub_1D18CA3EC(&v11, a5);
        if ((v12 & 1) == 0)
        {
          v9 = v11;
          if (v11 >= 0xFFFF)
          {
            v9 = 0xFFFFLL;
          }

          *v5 = v9 & ~(v9 >> 63);
          *(v5 + 8) = 0;
          v7 = 2;
          goto LABEL_35;
        }
      }

      else if (a3 == 3)
      {
        result = sub_1D18CA3EC(&v11, a5);
        if ((v12 & 1) == 0)
        {
          v8 = v11;
          if (v11 >= 0xFFFFFFFFLL)
          {
            v8 = 0xFFFFFFFFLL;
          }

          *v5 = v8 & ~(v8 >> 63);
          *(v5 + 8) = 0;
          v7 = 3;
          goto LABEL_35;
        }
      }

      else
      {
        result = sub_1D18CA3EC(&v11, a5);
        if ((v12 & 1) == 0)
        {
          *v5 = v11 & ~(v11 >> 63);
          *(v5 + 8) = 0;
          v7 = 4;
LABEL_35:
          *(v5 + 16) = v7;
          return result;
        }
      }
    }
  }

  else
  {
    if (a3 > 7u)
    {
      if (a3 != 8)
      {
LABEL_2:
        *a4 = 0;
        *(a4 + 8) = 0;
        *(a4 + 16) = -1;
        return result;
      }

      v5 = a4;
      *&result = COERCE_DOUBLE(sub_1D1E68ABC());
      *v5 = 0;
      *(v5 + 8) = 0xE000000000000000;
      v7 = 8;
      goto LABEL_35;
    }

    if (a3 != 5 && a3 != 6)
    {
      *a4 = *&result;
      *(a4 + 8) = 0;
      *(a4 + 16) = 7;
      return result;
    }

    v5 = a4;
    result = sub_1D18CA3EC(&v11, a5);
    if ((v12 & 1) == 0)
    {
      v6 = v11;
      if (v11 >= 0x7FFFFFFF)
      {
        v6 = 0x7FFFFFFFLL;
      }

      if (v6 <= 0xFFFFFFFF80000000)
      {
        LODWORD(v6) = 0x80000000;
      }

      *v5 = v6;
      *(v5 + 8) = 0;
      v7 = 6;
      goto LABEL_35;
    }
  }

  v11 = 0;
  v12 = 0xE000000000000000;
  sub_1D1E6884C();
  MEMORY[0x1D3890F70](0x656C62756F44, 0xE600000000000000);
  MEMORY[0x1D3890F70](0xD00000000000001ELL, 0x80000001D1EBC4F0);
  MEMORY[0x1D3890F70](7630409, 0xE300000000000000);
  MEMORY[0x1D3890F70](0xD00000000000002ELL, 0x80000001D1EBC510);
  *&result = COERCE_DOUBLE(sub_1D1E68AFC());
  __break(1u);
  return result;
}

void sub_1D18C66BC(char a1@<W0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a2;
  if (qword_1EE07B5D0 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6709C();
  __swift_project_value_buffer(v6, qword_1EE07B5D8);
  v7 = sub_1D1E6707C();
  v8 = sub_1D1E6835C();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34 = v10;
    *v9 = 136315650;
    *(v9 + 4) = sub_1D1B1312C(0xD000000000000020, 0x80000001D1EBC540, &v34);
    *(v9 + 12) = 2080;
    v11 = 1702195828;
    if ((a1 & 1) == 0)
    {
      v11 = 0x65736C6166;
    }

    if (a1 == 2)
    {
      v12 = 1280070990;
    }

    else
    {
      v12 = v11;
    }

    if ((a1 == 2) | a1 & 1)
    {
      v13 = 0xE400000000000000;
    }

    else
    {
      v13 = 0xE500000000000000;
    }

    v14 = sub_1D1B1312C(v12, v13, &v34);

    *(v9 + 14) = v14;
    *(v9 + 22) = 2080;
    if (v5 <= 4)
    {
      v23 = 1819242338;
      v24 = 0x3631746E6975;
      v25 = 0x3233746E6975;
      if (v5 != 3)
      {
        v25 = 0x3436746E6975;
      }

      if (v5 != 2)
      {
        v24 = v25;
      }

      v26 = 0xE500000000000000;
      if (v5)
      {
        v23 = 0x38746E6975;
      }

      else
      {
        v26 = 0xE400000000000000;
      }

      if (v5 <= 1)
      {
        v21 = v23;
      }

      else
      {
        v21 = v24;
      }

      if (v5 <= 1)
      {
        v22 = v26;
      }

      else
      {
        v22 = 0xE600000000000000;
      }
    }

    else
    {
      v15 = 0xE600000000000000;
      v16 = 0x676E69727473;
      v17 = 947285108;
      if (v5 != 9)
      {
        v17 = 1635017060;
      }

      if (v5 != 8)
      {
        v16 = v17;
        v15 = 0xE400000000000000;
      }

      v18 = 0xE300000000000000;
      v19 = 7630441;
      v20 = 0x3233746E69;
      if (v5 != 6)
      {
        v20 = 0x74616F6C66;
      }

      if (v5 != 5)
      {
        v19 = v20;
        v18 = 0xE500000000000000;
      }

      if (v5 <= 7)
      {
        v21 = v19;
      }

      else
      {
        v21 = v16;
      }

      if (v5 <= 7)
      {
        v22 = v18;
      }

      else
      {
        v22 = v15;
      }
    }

    v27 = sub_1D1B1312C(v21, v22, &v34);

    *(v9 + 24) = v27;
    _os_log_impl(&dword_1D16EC000, v7, v8, "%s Returning BOOLTypedValue for BOOLValue = %s with valueFormat: %s", v9, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1D3893640](v10, -1, -1);
    MEMORY[0x1D3893640](v9, -1, -1);
  }

  if (a1 == 2)
  {
LABEL_42:
    *a3 = 0;
    *(a3 + 8) = 0;
    v28 = -1;
LABEL_43:
    *(a3 + 16) = v28;
    return;
  }

  if (v5 > 4)
  {
    if (v5 <= 7)
    {
      if ((v5 - 5) >= 2)
      {
        v30 = 0x3FF0000000000000;
        if ((a1 & 1) == 0)
        {
          v30 = 0;
        }

        *a3 = v30;
        *(a3 + 8) = 0;
        v28 = 7;
      }

      else
      {
        *a3 = a1 & 1;
        *(a3 + 8) = 0;
        v28 = 5;
      }

      goto LABEL_43;
    }

    if (v5 == 8)
    {
      v34 = 0;
      v35 = 0xE000000000000000;
      if (a1)
      {
        v31 = 1702195828;
      }

      else
      {
        v31 = 0x65736C6166;
      }

      if (a1)
      {
        v32 = 0xE400000000000000;
      }

      else
      {
        v32 = 0xE500000000000000;
      }

      MEMORY[0x1D3890F70](v31, v32);

      v33 = v35;
      *a3 = v34;
      *(a3 + 8) = v33;
      v28 = 8;
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (v5 > 1)
  {
    v29 = a1 & 1;
    if (v5 == 2)
    {
      *a3 = v29;
      *(a3 + 8) = 0;
      v28 = 2;
    }

    else
    {
      *a3 = v29;
      *(a3 + 8) = 0;
      if (v5 == 3)
      {
        v28 = 3;
      }

      else
      {
        v28 = 4;
      }
    }

    goto LABEL_43;
  }

  if (v5)
  {
    *a3 = a1 & 1;
    *(a3 + 8) = 0;
    v28 = 1;
    goto LABEL_43;
  }

  *a3 = a1 & 1;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
}

uint64_t CharacteristicKind.Value.description.getter()
{
  v1 = *v0;
  v2 = *(v0 + 16);
  if (v2 <= 5)
  {
    if (*(v0 + 16) <= 2u)
    {
      if (!*(v0 + 16))
      {
        v10 = 0x286C6F6F622ELL;
        v4 = (v1 & 1) == 0;
        if (v1)
        {
          v5 = 1702195828;
        }

        else
        {
          v5 = 0x65736C6166;
        }

        if (v4)
        {
          v6 = 0xE500000000000000;
        }

        else
        {
          v6 = 0xE400000000000000;
        }

        v7 = v6;
        goto LABEL_32;
      }

      if (v2 == 1)
      {
        v10 = 0x2838746E69752ELL;
      }

      else
      {
        v10 = 0x283631746E69752ELL;
      }

      goto LABEL_31;
    }

    if (v2 == 3)
    {
      v10 = 0x283233746E69752ELL;
      goto LABEL_31;
    }

    if (v2 == 4)
    {
      v10 = 0x283436746E69752ELL;
LABEL_31:
      v5 = sub_1D1E68FAC();
      goto LABEL_32;
    }

    v8 = 0x28746E692ELL;
LABEL_30:
    v10 = v8;
    goto LABEL_31;
  }

  if (*(v0 + 16) <= 8u)
  {
    if (v2 != 6)
    {
      if (v2 == 7)
      {
        v10 = 0;
        MEMORY[0x1D3890F70](0x28656C62756F642ELL, 0xE800000000000000);
        sub_1D1E6811C();
      }

      else
      {
        v10 = 0x28676E697274732ELL;
        MEMORY[0x1D3890F70](v1, v0[1]);
      }

      goto LABEL_33;
    }

    v8 = 0x283233746E692ELL;
    goto LABEL_30;
  }

  if (v2 == 9)
  {
    v3 = 0x2838766C742ELL;
    goto LABEL_26;
  }

  if (v2 == 10)
  {
    v3 = 0x28617461642ELL;
LABEL_26:
    v10 = v3;
    v5 = sub_1D1E6683C();
LABEL_32:
    MEMORY[0x1D3890F70](v5, v7);

LABEL_33:
    MEMORY[0x1D3890F70](41, 0xE100000000000000);
    return v10;
  }

  return 0x6C6C756E2ELL;
}

uint64_t sub_1D18C6DA0(unsigned __int8 a1)
{
  if (a1 > 5u)
  {
    v6 = 0x676E69727473;
    v7 = 947285108;
    if (a1 != 10)
    {
      v7 = 1635017060;
    }

    if (a1 != 9)
    {
      v6 = v7;
    }

    v8 = 7630441;
    v9 = 0x3233746E69;
    if (a1 != 7)
    {
      v9 = 0x656C62756F64;
    }

    if (a1 != 6)
    {
      v8 = v9;
    }

    if (a1 <= 8u)
    {
      return v8;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 1819047278;
    v2 = 0x3631746E6975;
    v3 = 0x3233746E6975;
    if (a1 != 4)
    {
      v3 = 0x3436746E6975;
    }

    if (a1 != 3)
    {
      v2 = v3;
    }

    v4 = 1819242338;
    if (a1 != 1)
    {
      v4 = 0x38746E6975;
    }

    if (a1)
    {
      v1 = v4;
    }

    if (a1 <= 2u)
    {
      return v1;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D18C6ED8(uint64_t a1)
{
  v2 = sub_1D18CB054();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C6F14(uint64_t a1)
{
  v2 = sub_1D18CB054();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C6F58@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D18CC65C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D18C6F80(uint64_t a1)
{
  v2 = sub_1D18CAC64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C6FBC(uint64_t a1)
{
  v2 = sub_1D18CAC64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C6FF8(uint64_t a1)
{
  v2 = sub_1D18CACB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C7034(uint64_t a1)
{
  v2 = sub_1D18CACB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C7070(uint64_t a1)
{
  v2 = sub_1D18CAE08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C70AC(uint64_t a1)
{
  v2 = sub_1D18CAE08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C70E8(uint64_t a1)
{
  v2 = sub_1D18CAE5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C7124(uint64_t a1)
{
  v2 = sub_1D18CAE5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C7160(uint64_t a1)
{
  v2 = sub_1D18CAEB0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C719C(uint64_t a1)
{
  v2 = sub_1D18CAEB0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C71D8(uint64_t a1)
{
  v2 = sub_1D18CB0A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C7214(uint64_t a1)
{
  v2 = sub_1D18CB0A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C7250(uint64_t a1)
{
  v2 = sub_1D18CADB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C728C(uint64_t a1)
{
  v2 = sub_1D18CADB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C72C8(uint64_t a1)
{
  v2 = sub_1D18CAD60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C7304(uint64_t a1)
{
  v2 = sub_1D18CAD60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C7340(uint64_t a1)
{
  v2 = sub_1D18CAFAC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C737C(uint64_t a1)
{
  v2 = sub_1D18CAFAC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C73B8(uint64_t a1)
{
  v2 = sub_1D18CAF58();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C73F4(uint64_t a1)
{
  v2 = sub_1D18CAF58();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C7430(uint64_t a1)
{
  v2 = sub_1D18CAF04();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C746C(uint64_t a1)
{
  v2 = sub_1D18CAF04();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D18C74A8(uint64_t a1)
{
  v2 = sub_1D18CB000();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D18C74E4(uint64_t a1)
{
  v2 = sub_1D18CB000();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CharacteristicKind.Value.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D80, &qword_1D1E7C898);
  v78 = *(v3 - 8);
  v79 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v77 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D88, &qword_1D1E7C8A0);
  v75 = *(v5 - 8);
  v76 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v74 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D90, &qword_1D1E7C8A8);
  v72 = *(v7 - 8);
  v73 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v71 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645D98, &qword_1D1E7C8B0);
  v69 = *(v9 - 8);
  v70 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v68 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DA0, &qword_1D1E7C8B8);
  v66 = *(v11 - 8);
  v67 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v65 = &v46 - v12;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DA8, &qword_1D1E7C8C0);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v46 - v13;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DB0, &qword_1D1E7C8C8);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v46 - v14;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DB8, &qword_1D1E7C8D0);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v46 - v15;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DC0, &qword_1D1E7C8D8);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v46 - v16;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DC8, &qword_1D1E7C8E0);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v46 - v17;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DD0, &qword_1D1E7C8E8);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v19 = &v46 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DD8, &qword_1D1E7C8F0);
  v47 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v46 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645DE0, &qword_1D1E7C8F8);
  v24 = *(v23 - 8);
  v82 = v23;
  v83 = v24;
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v46 - v25;
  v27 = *v1;
  v80 = v1[1];
  v81 = v27;
  v28 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D18CAC64();
  sub_1D1E6930C();
  if (v28 <= 5)
  {
    if (v28 <= 2)
    {
      v29 = v26;
      if (!v28)
      {
        LOBYTE(v84) = 1;
        sub_1D18CB054();
        v42 = v82;
        sub_1D1E68DFC();
        v43 = v49;
        sub_1D1E68EDC();
        (*(v48 + 8))(v19, v43);
        return (*(v83 + 8))(v26, v42);
      }

      if (v28 == 1)
      {
        LOBYTE(v84) = 2;
        sub_1D18CB000();
        v30 = v50;
        v31 = v82;
        sub_1D1E68DFC();
        v32 = v52;
        sub_1D1E68F3C();
        (*(v51 + 8))(v30, v32);
        return (*(v83 + 8))(v29, v31);
      }

      LOBYTE(v84) = 3;
      sub_1D18CAFAC();
      v39 = v53;
      v34 = v82;
      sub_1D1E68DFC();
      v40 = v55;
      sub_1D1E68F4C();
      v41 = v54;
      goto LABEL_21;
    }

    if (v28 == 3)
    {
      LOBYTE(v84) = 4;
      sub_1D18CAF58();
      v35 = v56;
      v34 = v82;
      sub_1D1E68DFC();
      v36 = v58;
      sub_1D1E68F5C();
      v38 = &v86;
    }

    else
    {
      v34 = v82;
      if (v28 == 4)
      {
        LOBYTE(v84) = 5;
        sub_1D18CAF04();
        v35 = v59;
        sub_1D1E68DFC();
        v36 = v61;
        sub_1D1E68F6C();
        v38 = &v87;
      }

      else
      {
        LOBYTE(v84) = 6;
        sub_1D18CAEB0();
        v35 = v62;
        sub_1D1E68DFC();
        v36 = v64;
        sub_1D1E68F2C();
        v38 = &v88;
      }
    }

    v37 = *(v38 - 32);
LABEL_25:
    (*(v37 + 8))(v35, v36);
    v44 = *(v83 + 8);
    v45 = v26;
    return v44(v45, v34);
  }

  if (v28 <= 8)
  {
    v34 = v82;
    if (v28 == 6)
    {
      LOBYTE(v84) = 7;
      sub_1D18CAE5C();
      v35 = v65;
      sub_1D1E68DFC();
      v36 = v67;
      sub_1D1E68F2C();
      v37 = v66;
    }

    else if (v28 == 7)
    {
      LOBYTE(v84) = 8;
      sub_1D18CAE08();
      v35 = v68;
      sub_1D1E68DFC();
      v36 = v70;
      sub_1D1E68EEC();
      v37 = v69;
    }

    else
    {
      LOBYTE(v84) = 9;
      sub_1D18CADB4();
      v35 = v71;
      sub_1D1E68DFC();
      v36 = v73;
      sub_1D1E68ECC();
      v37 = v72;
    }

    goto LABEL_25;
  }

  v34 = v82;
  v29 = v26;
  if (v28 == 9)
  {
    LOBYTE(v84) = 10;
    sub_1D18CAD60();
    v39 = v74;
    sub_1D1E68DFC();
    v84 = v81;
    v85 = v80;
    sub_1D18CAD0C();
    v40 = v76;
    sub_1D1E68F1C();
    v41 = v75;
    goto LABEL_21;
  }

  if (v28 == 10)
  {
    LOBYTE(v84) = 11;
    sub_1D18CACB8();
    v39 = v77;
    sub_1D1E68DFC();
    v84 = v81;
    v85 = v80;
    sub_1D18CAD0C();
    v40 = v79;
    sub_1D1E68F1C();
    v41 = v78;
LABEL_21:
    (*(v41 + 8))(v39, v40);
    v44 = *(v83 + 8);
    v45 = v29;
    return v44(v45, v34);
  }

  LOBYTE(v84) = 0;
  sub_1D18CB0A8();
  sub_1D1E68DFC();
  (*(v47 + 8))(v22, v20);
  return (*(v83 + 8))(v26, v34);
}

uint64_t CharacteristicKind.Value.hash(into:)(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 16);
  if (v3 <= 5)
  {
    if (*(v1 + 16) <= 2u)
    {
      if (!*(v1 + 16))
      {
        MEMORY[0x1D3892850](1);
        return sub_1D1E6922C();
      }

      if (v3 == 1)
      {
        MEMORY[0x1D3892850](2);
        return sub_1D1E6922C();
      }

      MEMORY[0x1D3892850](3);
      return sub_1D1E6923C();
    }

    if (v3 == 3)
    {
      v7 = 4;
    }

    else
    {
      if (v3 == 4)
      {
        MEMORY[0x1D3892850](5);
        return MEMORY[0x1D3892890](v2);
      }

      v7 = 6;
    }

LABEL_32:
    MEMORY[0x1D3892850](v7);
    return sub_1D1E6924C();
  }

  if (*(v1 + 16) <= 8u)
  {
    if (v3 != 6)
    {
      if (v3 == 7)
      {
        MEMORY[0x1D3892850](8);
        if ((v2 & 0x7FFFFFFFFFFFFFFFLL) != 0)
        {
          v4 = v2;
        }

        else
        {
          v4 = 0;
        }

        return MEMORY[0x1D3892890](v4);
      }

      else
      {
        MEMORY[0x1D3892850](9);

        return sub_1D1E678EC();
      }
    }

    v7 = 7;
    goto LABEL_32;
  }

  if (v3 == 9)
  {
    v6 = 10;
  }

  else
  {
    if (v3 != 10)
    {
      return MEMORY[0x1D3892850](0);
    }

    v6 = 11;
  }

  MEMORY[0x1D3892850](v6);

  return sub_1D1E668CC();
}

uint64_t CharacteristicKind.Value.hashValue.getter()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  CharacteristicKind.Value.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t CharacteristicKind.Value.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v117 = a2;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E58, &qword_1D1E7C900);
  v110 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v116 = &v85 - v3;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E60, &qword_1D1E7C908);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v113 = &v85 - v4;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E68, &qword_1D1E7C910);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v121 = &v85 - v5;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E70, &qword_1D1E7C918);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v115 = &v85 - v6;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E78, &qword_1D1E7C920);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v114 = &v85 - v7;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E80, &qword_1D1E7C928);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v120 = &v85 - v8;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E88, &qword_1D1E7C930);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v112 = &v85 - v9;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E90, &qword_1D1E7C938);
  v96 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v111 = &v85 - v10;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645E98, &qword_1D1E7C940);
  v94 = *(v91 - 8);
  MEMORY[0x1EEE9AC00](v91);
  v119 = &v85 - v11;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645EA0, &qword_1D1E7C948);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v118 = &v85 - v12;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645EA8, &qword_1D1E7C950);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v14 = &v85 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645EB0, &qword_1D1E7C958);
  v88 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v85 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC645EB8, &unk_1D1E7C960);
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v85 - v20;
  v22 = a1[3];
  v123 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1D18CAC64();
  v23 = v122;
  sub_1D1E692FC();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v123);
  }

  v24 = v17;
  v85 = v15;
  v86 = v14;
  v25 = v118;
  v26 = v119;
  v27 = v120;
  v28 = v121;
  v87 = 0;
  v122 = v19;
  v29 = sub_1D1E68DDC();
  v30 = (2 * *(v29 + 16)) | 1;
  v126 = v29;
  v127 = v29 + 32;
  v128 = 0;
  v129 = v30;
  v31 = sub_1D18085C0();
  if (v31 == 12 || v128 != v129 >> 1)
  {
    v42 = v21;
    v43 = sub_1D1E688EC();
    swift_allocError();
    v45 = v44;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC644738, &unk_1D1E75AD0);
    *v45 = &type metadata for CharacteristicKind.Value;
    sub_1D1E68C5C();
    sub_1D1E688DC();
    (*(*(v43 - 8) + 104))(v45, *MEMORY[0x1E69E6AF8], v43);
    swift_willThrow();
    (*(v122 + 8))(v42, v18);
    goto LABEL_11;
  }

  if (v31 > 5u)
  {
    if (v31 > 8u)
    {
      v41 = v117;
      v57 = v122;
      if (v31 == 9)
      {
        LOBYTE(v124) = 9;
        sub_1D18CADB4();
        v68 = v87;
        sub_1D1E68C4C();
        if (!v68)
        {
          v75 = v21;
          v76 = v106;
          v40 = sub_1D1E68D2C();
          v38 = v81;
          (*(v105 + 8))(v28, v76);
          (*(v57 + 8))(v75, v18);
          swift_unknownObjectRelease();
          v39 = 8;
          goto LABEL_47;
        }
      }

      else
      {
        if (v31 != 10)
        {
          LOBYTE(v124) = 11;
          sub_1D18CACB8();
          v73 = v116;
          v74 = v87;
          sub_1D1E68C4C();
          if (!v74)
          {
            sub_1D18CB0FC();
            v79 = v73;
            v80 = v107;
            sub_1D1E68D7C();
            (*(v110 + 8))(v79, v80);
            (*(v57 + 8))(v21, v18);
            swift_unknownObjectRelease();
            v40 = v124;
            v38 = v125;
            v39 = 10;
            goto LABEL_47;
          }

          (*(v57 + 8))(v21, v18);
          swift_unknownObjectRelease();
          return __swift_destroy_boxed_opaque_existential_1(v123);
        }

        LOBYTE(v124) = 10;
        sub_1D18CAD60();
        v58 = v113;
        v59 = v87;
        sub_1D1E68C4C();
        if (!v59)
        {
          sub_1D18CB0FC();
          v60 = v109;
          sub_1D1E68D7C();
          (*(v108 + 8))(v58, v60);
          (*(v57 + 8))(v21, v18);
          swift_unknownObjectRelease();
          v40 = v124;
          v38 = v125;
          v39 = 9;
          goto LABEL_47;
        }
      }

      (*(v57 + 8))(v21, v18);
    }

    else
    {
      v41 = v117;
      v47 = v122;
      if (v31 == 6)
      {
        LOBYTE(v124) = 6;
        sub_1D18CAEB0();
        v61 = v27;
        v62 = v87;
        sub_1D1E68C4C();
        if (!v62)
        {
          v63 = v21;
          v64 = v100;
          v38 = 0;
          LODWORD(v40) = sub_1D1E68D8C();
          (*(v99 + 8))(v61, v64);
          (*(v47 + 8))(v63, v18);
          swift_unknownObjectRelease();
          v40 = v40;
          v39 = 5;
          goto LABEL_47;
        }
      }

      else
      {
        v48 = v87;
        if (v31 == 7)
        {
          LOBYTE(v124) = 7;
          sub_1D18CAE5C();
          v49 = v114;
          sub_1D1E68C4C();
          if (!v48)
          {
            v50 = v21;
            v51 = v102;
            v38 = 0;
            LODWORD(v40) = sub_1D1E68D8C();
            (*(v101 + 8))(v49, v51);
            (*(v47 + 8))(v50, v18);
            swift_unknownObjectRelease();
            v40 = v40;
            v39 = 6;
            goto LABEL_47;
          }
        }

        else
        {
          LOBYTE(v124) = 8;
          sub_1D18CAE08();
          v70 = v115;
          sub_1D1E68C4C();
          if (!v48)
          {
            v71 = v104;
            sub_1D1E68D4C();
            v38 = 0;
            v84 = v83;
            (*(v103 + 8))(v70, v71);
            (*(v47 + 8))(v21, v18);
            swift_unknownObjectRelease();
            v40 = v84;
            v39 = 7;
            goto LABEL_47;
          }
        }
      }

      (*(v47 + 8))(v21, v18);
    }

LABEL_11:
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v123);
  }

  if (v31 > 2u)
  {
    v52 = v122;
    v53 = v87;
    if (v31 == 3)
    {
      LOBYTE(v124) = 3;
      sub_1D18CAFAC();
      v65 = v26;
      sub_1D1E68C4C();
      v41 = v117;
      if (!v53)
      {
        v66 = v21;
        v67 = v91;
        v38 = 0;
        LOWORD(v40) = sub_1D1E68DAC();
        (*(v94 + 8))(v65, v67);
        (*(v52 + 8))(v66, v18);
        swift_unknownObjectRelease();
        v40 = v40;
        v39 = 2;
        goto LABEL_47;
      }
    }

    else
    {
      v41 = v117;
      if (v31 == 4)
      {
        LOBYTE(v124) = 4;
        sub_1D18CAF58();
        v54 = v111;
        sub_1D1E68C4C();
        if (!v53)
        {
          v55 = v21;
          v56 = v95;
          v38 = 0;
          LODWORD(v40) = sub_1D1E68DBC();
          (*(v96 + 8))(v54, v56);
          (*(v52 + 8))(v55, v18);
          swift_unknownObjectRelease();
          v40 = v40;
          v39 = 3;
          goto LABEL_47;
        }
      }

      else
      {
        LOBYTE(v124) = 5;
        sub_1D18CAF04();
        v72 = v112;
        sub_1D1E68C4C();
        if (!v53)
        {
          v77 = v21;
          v78 = v98;
          v38 = 0;
          v40 = sub_1D1E68DCC();
          (*(v97 + 8))(v72, v78);
          (*(v52 + 8))(v77, v18);
          swift_unknownObjectRelease();
          v39 = 4;
          goto LABEL_47;
        }
      }
    }

    (*(v52 + 8))(v21, v18);
    goto LABEL_11;
  }

  v32 = v87;
  if (!v31)
  {
    LOBYTE(v124) = 0;
    sub_1D18CB0A8();
    sub_1D1E68C4C();
    v38 = v32;
    if (!v32)
    {
      (*(v88 + 8))(v24, v85);
      (*(v122 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v40 = 0;
      v39 = 11;
      v41 = v117;
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  if (v31 != 1)
  {
    LOBYTE(v124) = 2;
    sub_1D18CB000();
    sub_1D1E68C4C();
    if (!v32)
    {
      v69 = v93;
      v38 = 0;
      v82 = sub_1D1E68D9C();
      (*(v92 + 8))(v25, v69);
      (*(v122 + 8))(v21, v18);
      swift_unknownObjectRelease();
      v40 = v82;
      v39 = 1;
      v41 = v117;
      goto LABEL_47;
    }

    goto LABEL_36;
  }

  LOBYTE(v124) = 1;
  sub_1D18CB054();
  v33 = v86;
  sub_1D1E68C4C();
  if (v32)
  {
LABEL_36:
    (*(v122 + 8))(v21, v18);
    goto LABEL_11;
  }

  v34 = v90;
  v35 = v21;
  v36 = sub_1D1E68D3C();
  (*(v89 + 8))(v33, v34);
  v37 = v35;
  v38 = 0;
  (*(v122 + 8))(v37, v18);
  swift_unknownObjectRelease();
  v39 = 0;
  v40 = v36 & 1;
  v41 = v117;
LABEL_47:
  *v41 = v40;
  *(v41 + 8) = v38;
  *(v41 + 16) = v39;
  return __swift_destroy_boxed_opaque_existential_1(v123);
}

uint64_t sub_1D18C9888()
{
  v1 = *(v0 + 16);
  v4 = *v0;
  v5 = v1;
  sub_1D1E6920C();
  CharacteristicKind.Value.hash(into:)(v3);
  return sub_1D1E6926C();
}

uint64_t sub_1D18C98E0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = *v1;
  v6 = v2;
  sub_1D1E6920C();
  CharacteristicKind.Value.hash(into:)(v4);
  return sub_1D1E6926C();
}

uint64_t sub_1D18C9930@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  v4 = *(v1 + 16);
  *(a1 + 16) = v4;
  return sub_1D1778244(v2, v3, v4);
}

uint64_t sub_1D18C99CC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = a2[1];
  if (sub_1D1E6714C() == v3 && v5 == v4)
  {

    goto LABEL_20;
  }

  v7 = sub_1D1E6904C();

  if (v7)
  {
LABEL_20:
    if (*a1)
    {
      return result;
    }

    v16 = *a1 | 1;
    goto LABEL_22;
  }

  if (sub_1D1E6781C() == v3 && v9 == v4)
  {

    goto LABEL_25;
  }

  v11 = sub_1D1E6904C();

  if (v11)
  {
LABEL_25:
    if ((*a1 & 2) != 0)
    {
      return result;
    }

    v16 = *a1 | 2;
    goto LABEL_22;
  }

  if (sub_1D1E6781C() == v3 && v12 == v4)
  {

    goto LABEL_28;
  }

  v14 = sub_1D1E6904C();

  if (v14)
  {
LABEL_28:
    if ((*a1 & 4) != 0)
    {
      return result;
    }

    v16 = *a1 | 4;
LABEL_22:
    *a1 = v16;
    return result;
  }

  if (sub_1D1E6781C() == v3 && v15 == v4)
  {

    goto LABEL_31;
  }

  v17 = sub_1D1E6904C();

  if (v17)
  {
LABEL_31:
    if ((*a1 & 8) == 0)
    {
      v16 = *a1 | 8;
      goto LABEL_22;
    }

    return result;
  }

  if (sub_1D1E6781C() == v3 && v18 == v4)
  {
  }

  else
  {
    v19 = sub_1D1E6904C();

    if ((v19 & 1) == 0)
    {
      return result;
    }
  }

  if ((*a1 & 0x10) == 0)
  {
    v16 = *a1 | 0x10;
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D18C9C7C()
{
  v1 = *v0;
  if (v1 <= 4)
  {
    v7 = 1819242338;
    v8 = 0x3631746E6975;
    v9 = 0x3233746E6975;
    if (v1 != 3)
    {
      v9 = 0x3436746E6975;
    }

    if (v1 != 2)
    {
      v8 = v9;
    }

    if (*v0)
    {
      v7 = 0x38746E6975;
    }

    if (*v0 <= 1u)
    {
      return v7;
    }

    else
    {
      return v8;
    }
  }

  else
  {
    v2 = 0x676E69727473;
    v3 = 947285108;
    if (v1 != 9)
    {
      v3 = 1635017060;
    }

    if (v1 != 8)
    {
      v2 = v3;
    }

    v4 = 7630441;
    v5 = 0x3233746E69;
    if (v1 != 6)
    {
      v5 = 0x74616F6C66;
    }

    if (v1 != 5)
    {
      v4 = v5;
    }

    if (*v0 <= 7u)
    {
      return v4;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D18C9DD4()
{
  v1 = *v0;
  sub_1D1E6920C();
  sub_1D1B33020(v3, v1);
  return sub_1D1E6926C();
}

uint64_t sub_1D18C9E24(uint64_t a1)
{
  v2 = *v1;
  sub_1D1E6920C();
  sub_1D1B33020(v4, v2);
  return sub_1D1E6926C();
}

HomeDataModel::CharacteristicKind::Unit_optional __swiftcall CharacteristicKind.Unit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D1E68C2C();

  v5 = 7;
  if (v3 < 7)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t CharacteristicKind.Unit.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x737569736C6563;
  v3 = 7894380;
  if (v1 != 5)
  {
    v3 = 0x7373656C74696E75;
  }

  v4 = 0x6572676564637261;
  if (v1 != 3)
  {
    v4 = 0x73646E6F636573;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x65686E6572686166;
  if (v1 != 1)
  {
    v5 = 0x61746E6563726570;
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

uint64_t sub_1D18CA078(uint64_t a1)
{
  sub_1D1E678EC();
}

uint64_t sub_1D18CA1A0@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x737569736C6563;
  v5 = 0xE300000000000000;
  v6 = 7894380;
  if (v2 != 5)
  {
    v6 = 0x7373656C74696E75;
    v5 = 0xE800000000000000;
  }

  v7 = 0xEA00000000007365;
  v8 = 0x6572676564637261;
  result = 0x73646E6F636573;
  if (v2 != 3)
  {
    v8 = 0x73646E6F636573;
    v7 = 0xE700000000000000;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = 0xEA00000000007469;
  v11 = 0x65686E6572686166;
  if (v2 != 1)
  {
    v11 = 0x61746E6563726570;
    v10 = 0xEA00000000006567;
  }

  if (*v1)
  {
    v4 = v11;
    v3 = v10;
  }

  v14 = __OFSUB__(v2, 2);
  v12 = v2 == 2;
  v13 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v15 = v4;
  }

  else
  {
    v15 = v6;
  }

  if (!(v13 ^ v14 | v12))
  {
    v3 = v5;
  }

  *a1 = v15;
  a1[1] = v3;
  return result;
}

uint64_t CharacteristicKind.humanReadableDescription.getter()
{
  v0 = objc_opt_self();
  CharacteristicKind.rawValue.getter();
  v1 = sub_1D1E677EC();

  v2 = [v0 localizedDescriptionForCharacteristicType_];

  v3 = sub_1D1E6781C();
  return v3;
}

BOOL sub_1D18CA3EC(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f64[0];
  v4 = (a2.n128_u64[0] >> 52) & 0x7FF;
  v5 = a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  v6 = v4 | a2.n128_u64[0] & 0xFFFFFFFFFFFFFLL;
  if (!v6)
  {
    v14 = 0;
    result = 1;
    goto LABEL_35;
  }

  if (v4 == 2047)
  {
    goto LABEL_38;
  }

  v7 = sub_1D1E6812C();
  if (v7 > 63)
  {
    goto LABEL_38;
  }

  v8 = v7;
  v9 = sub_1D1E6810C();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit64(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 <= 63)
  {
    if (v12 < -64 || v12 > 64)
    {
LABEL_8:
      if (v8 != 63)
      {
        if (v8 < -64)
        {
          do
          {
            v13 = 0;
            v14 = 0;
LABEL_29:
            v14 |= v13;
LABEL_30:
            if (v2 >= 0.0)
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_34;
              }
            }

            else
            {
              if ((v14 & 0x8000000000000000) == 0)
              {
                goto LABEL_32;
              }

              __break(1u);
            }

            __break(1u);
LABEL_42:
            ;
          }

          while (v8 != -64);
          goto LABEL_15;
        }

        goto LABEL_17;
      }

LABEL_37:
      if (v2 >= 0.0)
      {
LABEL_38:
        v14 = 0;
        result = 0;
        LOBYTE(v6) = 1;
        goto LABEL_35;
      }

LABEL_50:
      LOBYTE(v6) = 0;
      v14 = 0x8000000000000000;
      goto LABEL_35;
    }

    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

LABEL_24:
      v14 = v5 << v12;
      if (v8 != 63)
      {
        goto LABEL_25;
      }

      goto LABEL_48;
    }

    if (v12 == -64)
    {
      goto LABEL_8;
    }

LABEL_47:
    v14 = v5 >> (v11 - v8);
    if (v8 != 63)
    {
LABEL_25:
      if (v8 >= -64)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_28:
          v13 = 1 << v8;
          goto LABEL_29;
        }

        if (v8 == -64)
        {
          goto LABEL_30;
        }
      }

      v13 = 0;
      goto LABEL_29;
    }

LABEL_48:
    if (v2 >= 0.0 || v14)
    {
      goto LABEL_38;
    }

    goto LABEL_50;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 != -64)
      {
        goto LABEL_47;
      }
    }

    else if (v12 != 64)
    {
      goto LABEL_24;
    }
  }

  if (v8 == 63)
  {
    goto LABEL_37;
  }

  if (v8 >= -64)
  {
LABEL_17:
    if (v8 < 0)
    {
      goto LABEL_42;
    }

    v14 = 0;
    goto LABEL_28;
  }

LABEL_15:
  v14 = 0;
  if (v2 < 0.0)
  {
LABEL_32:
    LOBYTE(v6) = 0;
    v14 = -v14;
  }

  else
  {
LABEL_34:
    LOBYTE(v6) = 0;
  }

LABEL_35:
  *a1 = v14;
  *(a1 + 8) = v6;
  return result;
}

BOOL sub_1D18CA5DC(uint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v4 = (a2.n128_u32[0] >> 23);
  v5 = a2.n128_u32[0] & 0x7FFFFF;
  v6 = v4 | a2.n128_u8[0];
  if (!(v4 | v5))
  {
    v12 = 0;
    result = 1;
    goto LABEL_32;
  }

  if (v4 == 255 || (v7 = sub_1D1E6814C(), v7 > 63))
  {
LABEL_44:
    v12 = 0;
    result = 0;
    v6 = 1;
    goto LABEL_32;
  }

  v8 = v7;
  v9 = sub_1D1E6813C();
  result = v8 >= v9;
  v11 = v9 + __clz(__rbit32(v5));
  v12 = v8 - v11;
  if (__OFSUB__(v8, v11))
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v11 > 63)
  {
    if ((v12 - 33) <= 0xFFFFFFFFFFFFFFBELL)
    {
      goto LABEL_13;
    }

    if (v12 < 0)
    {
      if (v12 <= 0xFFFFFFFFFFFFFFE0)
      {
        LODWORD(v12) = 0;
      }

      else
      {
        LODWORD(v12) = v5 >> (v11 - v8);
      }

      goto LABEL_17;
    }

    if (v12 >= 0x20)
    {
LABEL_13:
      LODWORD(v12) = 0;
    }

    else
    {
      LODWORD(v12) = v5 << v12;
    }

LABEL_17:
    v12 = v12;
LABEL_18:
    if (v8 != 63)
    {
      if (v8 > -65)
      {
        if ((v8 & 0x8000000000000000) == 0)
        {
LABEL_25:
          v13 = 1 << v8;
          goto LABEL_26;
        }

        if (v8 != -64)
        {
          v13 = 0;
LABEL_26:
          v12 |= v13;
        }
      }

      if (v2 >= 0.0)
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
LABEL_31:
          v6 = 0;
          goto LABEL_32;
        }
      }

      else
      {
        if ((v12 & 0x8000000000000000) == 0)
        {
          goto LABEL_29;
        }

        __break(1u);
      }

      __break(1u);
LABEL_43:
      if (v2 >= 0.0)
      {
        goto LABEL_44;
      }

LABEL_39:
      v6 = 0;
      v12 = 0x8000000000000000;
      goto LABEL_32;
    }

LABEL_37:
    if (v2 >= 0.0 || v12)
    {
      goto LABEL_44;
    }

    goto LABEL_39;
  }

  if (v12 >= -64 && v12 <= 64)
  {
    if (v12 < 0)
    {
      if (v12 == -64)
      {
        goto LABEL_8;
      }

      v12 = v5 >> (v11 - v8);
    }

    else
    {
      if (v12 == 64)
      {
        goto LABEL_8;
      }

      v12 = v5 << v12;
    }

    goto LABEL_18;
  }

LABEL_8:
  if (v8 == 63)
  {
    goto LABEL_43;
  }

  if (v8 < -64)
  {
    goto LABEL_10;
  }

  if ((v8 & 0x8000000000000000) == 0)
  {
    v12 = 0;
    goto LABEL_25;
  }

  if (v8 != -64)
  {
    v13 = 0;
    v12 = 0;
    goto LABEL_26;
  }

LABEL_10:
  v12 = 0;
  if (v2 >= 0.0)
  {
    goto LABEL_31;
  }

LABEL_29:
  v6 = 0;
  v12 = -v12;
LABEL_32:
  *a1 = v12;
  *(a1 + 8) = v6;
  return result;
}

uint64_t sub_1D18CA7C0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC649700, &qword_1D1E6E910);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s13HomeDataModel18CharacteristicKindO5ValueO2eeoiySbAE_AEtFZ_0(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  v5 = *a2;
  v6 = *(a2 + 8);
  v7 = *(a2 + 16);
  if (v4 <= 5)
  {
    if (*(a1 + 16) <= 2u)
    {
      if (*(a1 + 16))
      {
        if (v4 == 1)
        {
          if (v7 == 1)
          {
            v8 = *a1;
            sub_1D1778284(*a1, v3, 1);
            sub_1D1778284(v5, v6, 1);
            v9 = v8 == v5;
            return v9 & 1;
          }
        }

        else if (v7 == 2)
        {
          v17 = *a1;
          sub_1D1778284(*a1, v3, 2);
          sub_1D1778284(v5, v6, 2);
          v9 = v17 == v5;
          return v9 & 1;
        }
      }

      else if (!*(a2 + 16))
      {
        sub_1D1778284(*a1, v3, 0);
        sub_1D1778284(v5, v6, 0);
        v9 = v5 ^ v2 ^ 1;
        return v9 & 1;
      }

      goto LABEL_44;
    }

    if (v4 != 3)
    {
      if (v4 == 4)
      {
        if (v7 == 4)
        {
          sub_1D1778284(*a1, v3, 4);
          sub_1D1778284(v5, v6, 4);
          v9 = v2 == v5;
          return v9 & 1;
        }

        goto LABEL_44;
      }

      if (v7 == 5)
      {
        sub_1D1778284(*a1, v3, 5);
        v14 = v5;
        v15 = v6;
        v16 = 5;
        goto LABEL_38;
      }

LABEL_44:
      sub_1D1778244(v5, v6, v7);
      sub_1D1778284(v2, v3, v4);
      sub_1D1778284(v5, v6, v7);
      goto LABEL_45;
    }

    if (v7 != 3)
    {
      goto LABEL_44;
    }

    sub_1D1778284(*a1, v3, 3);
    v14 = v5;
    v15 = v6;
    v16 = 3;
LABEL_38:
    sub_1D1778284(v14, v15, v16);
    v9 = v2 == v5;
    return v9 & 1;
  }

  if (*(a1 + 16) > 8u)
  {
    if (v4 == 9)
    {
      if (v7 == 9)
      {
        sub_1D1778244(*a2, *(a2 + 8), 9);
        sub_1D1778244(v2, v3, 9);
        v10 = sub_1D199F344(v2, v3, v5, v6);
        sub_1D1778284(v2, v3, 9);
        v11 = v5;
        v12 = v6;
        v13 = 9;
        goto LABEL_48;
      }
    }

    else
    {
      if (v4 != 10)
      {
        if (v7 != 11 || v6 | v5)
        {
          goto LABEL_44;
        }

        sub_1D1778284(*a1, v3, 11);
        v18 = 0;
        v19 = 0;
        v20 = 11;
LABEL_42:
        sub_1D1778284(v18, v19, v20);
        v9 = 1;
        return v9 & 1;
      }

      if (v7 == 10)
      {
        sub_1D1778244(*a2, *(a2 + 8), 10);
        sub_1D1778244(v2, v3, 10);
        v10 = sub_1D199F344(v2, v3, v5, v6);
        sub_1D1778284(v2, v3, 10);
        v11 = v5;
        v12 = v6;
        v13 = 10;
        goto LABEL_48;
      }
    }

    sub_1D1741854(*a1, v3);
    goto LABEL_44;
  }

  if (v4 == 6)
  {
    if (v7 != 6)
    {
      goto LABEL_44;
    }

    sub_1D1778284(*a1, v3, 6);
    v14 = v5;
    v15 = v6;
    v16 = 6;
    goto LABEL_38;
  }

  if (v4 == 7)
  {
    if (v7 == 7)
    {
      sub_1D1778284(*a1, v3, 7);
      sub_1D1778284(v5, v6, 7);
      if (*&v2 == *&v5)
      {
        v9 = 1;
        return v9 & 1;
      }

LABEL_45:
      v9 = 0;
      return v9 & 1;
    }

    goto LABEL_44;
  }

  if (v7 != 8)
  {

    goto LABEL_44;
  }

  if (v2 == v5 && v3 == v6)
  {
    sub_1D1778244(*a1, v3, 8);
    sub_1D1778244(v2, v3, 8);
    sub_1D1778284(v2, v3, 8);
    v18 = v2;
    v19 = v3;
    v20 = 8;
    goto LABEL_42;
  }

  v10 = sub_1D1E6904C();
  sub_1D1778244(v5, v6, 8);
  sub_1D1778244(v2, v3, 8);
  sub_1D1778284(v2, v3, 8);
  v11 = v5;
  v12 = v6;
  v13 = 8;
LABEL_48:
  sub_1D1778284(v11, v12, v13);
  return v10 & 1;
}

unint64_t sub_1D18CAC64()
{
  result = qword_1EC645DE8;
  if (!qword_1EC645DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645DE8);
  }

  return result;
}

unint64_t sub_1D18CACB8()
{
  result = qword_1EC645DF0;
  if (!qword_1EC645DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645DF0);
  }

  return result;
}

unint64_t sub_1D18CAD0C()
{
  result = qword_1EC645DF8;
  if (!qword_1EC645DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645DF8);
  }

  return result;
}

unint64_t sub_1D18CAD60()
{
  result = qword_1EC645E00;
  if (!qword_1EC645E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E00);
  }

  return result;
}

unint64_t sub_1D18CADB4()
{
  result = qword_1EC645E08;
  if (!qword_1EC645E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E08);
  }

  return result;
}

unint64_t sub_1D18CAE08()
{
  result = qword_1EC645E10;
  if (!qword_1EC645E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E10);
  }

  return result;
}

unint64_t sub_1D18CAE5C()
{
  result = qword_1EC645E18;
  if (!qword_1EC645E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E18);
  }

  return result;
}

unint64_t sub_1D18CAEB0()
{
  result = qword_1EC645E20;
  if (!qword_1EC645E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E20);
  }

  return result;
}

unint64_t sub_1D18CAF04()
{
  result = qword_1EC645E28;
  if (!qword_1EC645E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E28);
  }

  return result;
}

unint64_t sub_1D18CAF58()
{
  result = qword_1EC645E30;
  if (!qword_1EC645E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E30);
  }

  return result;
}

unint64_t sub_1D18CAFAC()
{
  result = qword_1EC645E38;
  if (!qword_1EC645E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E38);
  }

  return result;
}

unint64_t sub_1D18CB000()
{
  result = qword_1EC645E40;
  if (!qword_1EC645E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E40);
  }

  return result;
}

unint64_t sub_1D18CB054()
{
  result = qword_1EC645E48;
  if (!qword_1EC645E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E48);
  }

  return result;
}

unint64_t sub_1D18CB0A8()
{
  result = qword_1EC645E50;
  if (!qword_1EC645E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645E50);
  }

  return result;
}

unint64_t sub_1D18CB0FC()
{
  result = qword_1EC645EC0;
  if (!qword_1EC645EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645EC0);
  }

  return result;
}

unint64_t sub_1D18CB180()
{
  result = qword_1EE07A8B8;
  if (!qword_1EE07A8B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07A8B8);
  }

  return result;
}

unint64_t sub_1D18CB1D8()
{
  result = qword_1EC645ED8;
  if (!qword_1EC645ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645ED8);
  }

  return result;
}

unint64_t sub_1D18CB230()
{
  result = qword_1EC645EE0;
  if (!qword_1EC645EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645EE0);
  }

  return result;
}

unint64_t sub_1D18CB288()
{
  result = qword_1EC645EE8;
  if (!qword_1EC645EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645EE8);
  }

  return result;
}

unint64_t sub_1D18CB2E0()
{
  result = qword_1EC645EF0;
  if (!qword_1EC645EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645EF0);
  }

  return result;
}

unint64_t sub_1D18CB334()
{
  result = qword_1EC645EF8;
  if (!qword_1EC645EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645EF8);
  }

  return result;
}

unint64_t sub_1D18CB398()
{
  result = qword_1EC645F00;
  if (!qword_1EC645F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F00);
  }

  return result;
}

unint64_t sub_1D18CB420()
{
  result = qword_1EC645F18;
  if (!qword_1EC645F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F18);
  }

  return result;
}

unint64_t sub_1D18CB484()
{
  result = qword_1EC645F20;
  if (!qword_1EC645F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CharacteristicKind(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x53)
  {
    goto LABEL_17;
  }

  if (a2 + 173 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 173) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 173;
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

      return (*a1 | (v4 << 8)) - 173;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 173;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xAE;
  v8 = v6 - 174;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CharacteristicKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 173 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 173) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x53)
  {
    v4 = 0;
  }

  if (a2 > 0x52)
  {
    v5 = ((a2 - 83) >> 8) + 1;
    *result = a2 - 83;
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
    *result = a2 - 83;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D18CB658(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 17))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 16);
  if (v3 <= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1D18CB6A0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 16) = 0;
    *result = a2 - 245;
    *(result + 8) = 0;
    if (a3 >= 0xF5)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
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

uint64_t sub_1D18CB6E4(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xB)
  {
    *result = a2 - 11;
    *(result + 8) = 0;
    LOBYTE(a2) = 11;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for CharacteristicKind.Format(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CharacteristicKind.Format(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D18CB950()
{
  result = qword_1EC645F38;
  if (!qword_1EC645F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F38);
  }

  return result;
}

unint64_t sub_1D18CB9A8()
{
  result = qword_1EC645F40;
  if (!qword_1EC645F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F40);
  }

  return result;
}

unint64_t sub_1D18CBA00()
{
  result = qword_1EC645F48;
  if (!qword_1EC645F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F48);
  }

  return result;
}

unint64_t sub_1D18CBA58()
{
  result = qword_1EC645F50;
  if (!qword_1EC645F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F50);
  }

  return result;
}

unint64_t sub_1D18CBAB0()
{
  result = qword_1EC645F58;
  if (!qword_1EC645F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F58);
  }

  return result;
}

unint64_t sub_1D18CBB08()
{
  result = qword_1EC645F60;
  if (!qword_1EC645F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F60);
  }

  return result;
}

unint64_t sub_1D18CBB60()
{
  result = qword_1EC645F68;
  if (!qword_1EC645F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F68);
  }

  return result;
}

unint64_t sub_1D18CBBB8()
{
  result = qword_1EC645F70;
  if (!qword_1EC645F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F70);
  }

  return result;
}

unint64_t sub_1D18CBC10()
{
  result = qword_1EC645F78;
  if (!qword_1EC645F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F78);
  }

  return result;
}

unint64_t sub_1D18CBC68()
{
  result = qword_1EC645F80;
  if (!qword_1EC645F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F80);
  }

  return result;
}

unint64_t sub_1D18CBCC0()
{
  result = qword_1EC645F88;
  if (!qword_1EC645F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F88);
  }

  return result;
}

unint64_t sub_1D18CBD18()
{
  result = qword_1EC645F90;
  if (!qword_1EC645F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F90);
  }

  return result;
}

unint64_t sub_1D18CBD70()
{
  result = qword_1EC645F98;
  if (!qword_1EC645F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645F98);
  }

  return result;
}

unint64_t sub_1D18CBDC8()
{
  result = qword_1EC645FA0;
  if (!qword_1EC645FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FA0);
  }

  return result;
}

unint64_t sub_1D18CBE20()
{
  result = qword_1EC645FA8;
  if (!qword_1EC645FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FA8);
  }

  return result;
}

unint64_t sub_1D18CBE78()
{
  result = qword_1EC645FB0;
  if (!qword_1EC645FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FB0);
  }

  return result;
}

unint64_t sub_1D18CBED0()
{
  result = qword_1EC645FB8;
  if (!qword_1EC645FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FB8);
  }

  return result;
}

unint64_t sub_1D18CBF28()
{
  result = qword_1EC645FC0;
  if (!qword_1EC645FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FC0);
  }

  return result;
}

unint64_t sub_1D18CBF80()
{
  result = qword_1EC645FC8;
  if (!qword_1EC645FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FC8);
  }

  return result;
}

unint64_t sub_1D18CBFD8()
{
  result = qword_1EC645FD0;
  if (!qword_1EC645FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FD0);
  }

  return result;
}

unint64_t sub_1D18CC030()
{
  result = qword_1EC645FD8;
  if (!qword_1EC645FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FD8);
  }

  return result;
}

unint64_t sub_1D18CC088()
{
  result = qword_1EC645FE0;
  if (!qword_1EC645FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FE0);
  }

  return result;
}

unint64_t sub_1D18CC0E0()
{
  result = qword_1EC645FE8;
  if (!qword_1EC645FE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FE8);
  }

  return result;
}

unint64_t sub_1D18CC138()
{
  result = qword_1EC645FF0;
  if (!qword_1EC645FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FF0);
  }

  return result;
}

unint64_t sub_1D18CC190()
{
  result = qword_1EC645FF8;
  if (!qword_1EC645FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC645FF8);
  }

  return result;
}

unint64_t sub_1D18CC1E8()
{
  result = qword_1EC646000;
  if (!qword_1EC646000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646000);
  }

  return result;
}

unint64_t sub_1D18CC240()
{
  result = qword_1EC646008;
  if (!qword_1EC646008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646008);
  }

  return result;
}

unint64_t sub_1D18CC298()
{
  result = qword_1EC646010;
  if (!qword_1EC646010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646010);
  }

  return result;
}

unint64_t sub_1D18CC2F0()
{
  result = qword_1EC646018;
  if (!qword_1EC646018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646018);
  }

  return result;
}

unint64_t sub_1D18CC348()
{
  result = qword_1EC646020;
  if (!qword_1EC646020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646020);
  }

  return result;
}

unint64_t sub_1D18CC3A0()
{
  result = qword_1EC646028;
  if (!qword_1EC646028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646028);
  }

  return result;
}

unint64_t sub_1D18CC3F8()
{
  result = qword_1EC646030;
  if (!qword_1EC646030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646030);
  }

  return result;
}

unint64_t sub_1D18CC450()
{
  result = qword_1EC646038;
  if (!qword_1EC646038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646038);
  }

  return result;
}

unint64_t sub_1D18CC4A8()
{
  result = qword_1EC646040;
  if (!qword_1EC646040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646040);
  }

  return result;
}

unint64_t sub_1D18CC500()
{
  result = qword_1EC646048;
  if (!qword_1EC646048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646048);
  }

  return result;
}

unint64_t sub_1D18CC558()
{
  result = qword_1EC646050;
  if (!qword_1EC646050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646050);
  }

  return result;
}

unint64_t sub_1D18CC5B0()
{
  result = qword_1EC646058;
  if (!qword_1EC646058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646058);
  }

  return result;
}

unint64_t sub_1D18CC608()
{
  result = qword_1EC646060;
  if (!qword_1EC646060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646060);
  }

  return result;
}

uint64_t sub_1D18CC65C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1819047278 && a2 == 0xE400000000000000;
  if (v3 || (sub_1D1E6904C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1819242338 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x38746E6975 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x3631746E6975 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x3233746E6975 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x3436746E6975 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7630441 && a2 == 0xE300000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x3233746E69 && a2 == 0xE500000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x656C62756F64 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x676E69727473 && a2 == 0xE600000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 947285108 && a2 == 0xE400000000000000 || (sub_1D1E6904C() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
  {

    return 11;
  }

  else
  {
    v6 = sub_1D1E6904C();

    if (v6)
    {
      return 11;
    }

    else
    {
      return 12;
    }
  }
}

unint64_t sub_1D18CCA04()
{
  result = qword_1EC646068;
  if (!qword_1EC646068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646068);
  }

  return result;
}

unint64_t sub_1D18CCA58()
{
  result = qword_1EC646070;
  if (!qword_1EC646070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646070);
  }

  return result;
}

unint64_t sub_1D18CCAAC()
{
  result = qword_1EC646078;
  if (!qword_1EC646078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC646078);
  }

  return result;
}

uint64_t sub_1D18CCB18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[13] = a2;
  v3[14] = a3;
  v3[12] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646080, &qword_1D1E7E488);
  v3[15] = swift_task_alloc();
  v4 = sub_1D1E66A7C();
  v3[16] = v4;
  v3[17] = *(v4 - 8);
  v3[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D18CCC14, 0, 0);
}

uint64_t sub_1D18CCC14(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 104);
  if (v4 >> 62)
  {
    a1 = sub_1D1E6873C();
    v5 = a1;
    if (!a1)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v5 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      goto LABEL_20;
    }
  }

  v6 = v4 & 0xC000000000000001;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1D3891EF0](0, *(v3 + 104), a3);
  }

  else
  {
    if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_26;
    }

    v7 = *(*(v3 + 104) + 32);
  }

  v8 = v7;
  v9 = [v7 accessory];

  if (!v9 || (v10 = [v9 home], *(v3 + 152) = v10, v9, !v10))
  {
LABEL_20:
    *(v3 + 216) = sub_1D1E67E1C();
    *(v3 + 224) = sub_1D1E67E0C();
    v26 = sub_1D1E67D4C();
    v28 = v30;
    v29 = sub_1D18CD554;
LABEL_21:
    a1 = v29;
    a2 = v26;
    a3 = v28;

    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v31 = v10;
  a1 = sub_1D18D7C70(MEMORY[0x1E69E7CC0]);
  *(v3 + 40) = a1;
  *(v3 + 48) = 0;
  *(v3 + 56) = 2;
  if (v5 < 1)
  {
LABEL_26:
    __break(1u);
    return MEMORY[0x1EEE6DFA0](a1, a2, a3);
  }

  v11 = 0;
  v32 = *(v3 + 104) + 32;
  v12 = (*(v3 + 136) + 8);
  do
  {
    if (v6)
    {
      v13 = MEMORY[0x1D3891EF0](v11, *(v3 + 104));
    }

    else
    {
      v13 = *(v32 + 8 * v11);
    }

    v14 = v13;
    v15 = *(v3 + 144);
    v16 = *(v3 + 128);
    ++v11;
    v17 = sub_1D18A74EC(*(v3 + 112));
    v18 = [v14 uniqueIdentifier];
    sub_1D1E66A5C();

    CharacteristicValueSet.add(values:on:)(v17, v15);

    (*v12)(v15, v16);
  }

  while (v5 != v11);
  v19 = _s13HomeDataModel0A5StateV6StreamC17sharedIfAvailableAESgvgZ_0();
  *(v3 + 160) = v19;
  if (!v19)
  {
    *(v3 + 184) = sub_1D1E67E1C();
    *(v3 + 192) = sub_1D1E67E0C();
    v26 = sub_1D1E67D4C();
    v28 = v27;
    v29 = sub_1D18CD1D8;
    goto LABEL_21;
  }

  v20 = *(v3 + 40);
  *(v3 + 168) = v20;
  v21 = *(v3 + 48);
  v22 = *(v3 + 56);
  v23 = swift_task_alloc();
  *(v3 + 176) = v23;
  *v23 = v3;
  v23[1] = sub_1D18CCF6C;
  v24 = *(v3 + 120);

  return sub_1D1A8DDCC(v24, v20, v21, v22, v31, 0, 1);
}

uint64_t sub_1D18CCF6C()
{

  return MEMORY[0x1EEE6DFA0](sub_1D18CD084, 0, 0);
}

uint64_t sub_1D18CD084()
{
  v1 = *(v0 + 120);

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646088, &qword_1D1E7E4B8);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    sub_1D18CE794(*(v0 + 120));
    v3 = 1;
  }

  else
  {
    v4 = *(v0 + 96);
    v5 = *(v0 + 120);

    sub_1D18CE7FC(v5, v4);
    v3 = 0;
  }

  v6 = *(v0 + 96);
  v7 = type metadata accessor for StateSnapshot(0);
  (*(*(v7 - 8) + 56))(v6, v3, 1, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1D18CD1D8()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D18CD270, 0, 0);
}

uint64_t sub_1D18CD270(uint64_t a1)
{
  *(v1 + 200) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18CD2FC, v3, v2);
}

uint64_t sub_1D18CD2FC()
{

  v1 = *(v0 + 48);
  *(v0 + 64) = *(v0 + 40);
  v2 = *(v0 + 56);
  *(v0 + 72) = v1;
  *(v0 + 80) = v2;
  v3 = swift_task_alloc();
  *(v0 + 208) = v3;
  *v3 = v0;
  v3[1] = sub_1D18CD3C8;
  v4 = *(v0 + 96);

  return DataModel.write(characteristicValueSet:home:)(v4, (v0 + 64), 0);
}

uint64_t sub_1D18CD3C8()
{

  return MEMORY[0x1EEE6DFA0](sub_1D18CD4E0, 0, 0);
}

uint64_t sub_1D18CD4E0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D18CD554()
{

  if (qword_1EE07DC58 != -1)
  {
    swift_once();
  }

  return MEMORY[0x1EEE6DFA0](sub_1D18CD5EC, 0, 0);
}

uint64_t sub_1D18CD5EC(uint64_t a1)
{
  *(v1 + 232) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18CD678, v3, v2);
}

uint64_t sub_1D18CD678()
{

  *(v0 + 240) = qword_1EE07DC60;

  return MEMORY[0x1EEE6DFA0](sub_1D18CD6EC, 0, 0);
}

uint64_t sub_1D18CD6EC(uint64_t a1)
{
  *(v1 + 248) = sub_1D1E67E0C();
  v3 = sub_1D1E67D4C();

  return MEMORY[0x1EEE6DFA0](sub_1D18CD778, v3, v2);
}

uint64_t sub_1D18CD778()
{
  v1 = v0[30];
  v2 = v0[12];

  swift_getKeyPath();
  v0[11] = v1;
  sub_1D18CE6D8();
  sub_1D1E66CAC();

  v3 = OBJC_IVAR____TtC13HomeDataModel9DataModel__currentStateSnapshot;
  swift_beginAccess();
  sub_1D18CE730(v1 + v3, v2);

  return MEMORY[0x1EEE6DFA0](sub_1D18CD85C, 0, 0);
}

uint64_t sub_1D18CD85C()
{
  v1 = *(v0 + 96);
  v2 = type metadata accessor for StateSnapshot(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D18CD90C(uint64_t a1, uint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 72) = a4;
  *(v5 + 80) = a5;
  *(v5 + 64) = a1;
  *(v5 + 88) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646090, &qword_1D1E7E4C8);
  *(v5 + 96) = swift_task_alloc();
  *(v5 + 104) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0);
  *(v5 + 112) = swift_task_alloc();
  v7 = sub_1D1E66A7C();
  *(v5 + 120) = v7;
  *(v5 + 128) = *(v7 - 8);
  *(v5 + 136) = swift_task_alloc();
  v8 = a3[1];
  *(v5 + 144) = *a3;
  *(v5 + 160) = v8;
  sub_1D1E67E1C();
  *(v5 + 176) = sub_1D1E67E0C();
  v10 = sub_1D1E67D4C();
  *(v5 + 184) = v10;
  *(v5 + 192) = v9;

  return MEMORY[0x1EEE6DFA0](sub_1D18CDA88, v10, v9);
}

uint64_t sub_1D18CDA88()
{
  v1 = *(v0 + 72);
  result = sub_1D18D7C70(MEMORY[0x1E69E7CC0]);
  *(v0 + 16) = result;
  *(v0 + 24) = 0;
  *(v0 + 32) = 2;
  if (v1 >> 62)
  {
    result = sub_1D1E6873C();
    v3 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v20 = *(v0 + 72) + 32;
  v21 = v1 & 0xC000000000000001;
  v5 = (*(v0 + 128) + 8);
  do
  {
    if (v21)
    {
      v6 = MEMORY[0x1D3891EF0](v4, *(v0 + 72));
    }

    else
    {
      v6 = *(v20 + 8 * v4);
    }

    v7 = v6;
    v8 = *(v0 + 136);
    v9 = *(v0 + 120);
    ++v4;
    v10 = sub_1D18A74EC(*(v0 + 80));
    v11 = [v7 uniqueIdentifier];
    sub_1D1E66A5C();

    CharacteristicValueSet.add(values:on:)(v10, v8);

    (*v5)(v8, v9);
  }

  while (v3 != v4);
LABEL_10:
  if (*(v0 + 152) > 1uLL && (v12 = *(v0 + 16), *(v0 + 168)))
  {
    *(v0 + 200) = v12;
    v13 = *(v0 + 24);
    *(v0 + 40) = v12;
    v14 = *(v0 + 32);
    *(v0 + 48) = v13;
    *(v0 + 56) = v14;

    v15 = swift_task_alloc();
    *(v0 + 208) = v15;
    *v15 = v0;
    v15[1] = sub_1D18CDD2C;

    return CharacteristicValueSet.batchWrites.getter();
  }

  else
  {

    v16 = swift_task_alloc();
    *(v0 + 264) = v16;
    *v16 = v0;
    v16[1] = sub_1D18CE538;
    v17 = *(v0 + 72);
    v18 = *(v0 + 80);
    v19 = *(v0 + 64);

    return sub_1D18CCB18(v19, v17, v18);
  }
}

uint64_t sub_1D18CDD2C(uint64_t a1)
{
  v2 = *v1;
  *(*v1 + 216) = a1;

  v3 = *(v2 + 192);
  v4 = *(v2 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D18CDE54, v4, v3);
}

uint64_t sub_1D18CDE54()
{
  v1 = *(v0 + 216);

  if (v1 >> 62)
  {
    sub_1D18CE860();

    v2 = sub_1D1E68B0C();
  }

  else
  {

    sub_1D1E6906C();
    sub_1D18CE860();
    v2 = *(v0 + 216);
  }

  v4 = *(v0 + 160);
  v3 = *(v0 + 168);
  v10 = *(v0 + 144);
  v5 = *(v0 + 112);

  *(v5 + 8) = v10;
  *(v5 + 24) = v4;
  *(v5 + 32) = v3;
  *v5 = v2;
  *(v5 + 40) = 1;
  if (qword_1EC642488 != -1)
  {
    swift_once();
  }

  v6 = sub_1D1E6701C();
  __swift_project_value_buffer(v6, qword_1EC6BE2B8);
  sub_1D1E66FFC();
  sub_1D1E66FAC();
  if (qword_1EE07AC80 != -1)
  {
    swift_once();
  }

  *(v0 + 224) = qword_1EE07B4E0;
  type metadata accessor for WidgetDataModel();
  *(v0 + 232) = swift_initStaticObject();
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);

  return MEMORY[0x1EEE6DFA0](sub_1D18CE014, v7, v8);
}

uint64_t sub_1D18CE014()
{
  sub_1D18CE8AC(v0[14], v0[12]);
  swift_storeEnumTagMultiPayload();
  v1 = swift_task_alloc();
  v0[30] = v1;
  *v1 = v0;
  v1[1] = sub_1D18CE0C8;

  return WidgetDataModel.snapshotModerator.getter();
}

uint64_t sub_1D18CE0C8(uint64_t a1)
{
  v2 = *v1;
  v3 = *v1;
  v2[31] = a1;

  v4 = swift_task_alloc();
  v2[32] = v4;
  *v4 = v3;
  v4[1] = sub_1D18CE244;
  v5 = v2[12];
  v6 = v2[8];
  v7.n128_u64[0] = 20.0;

  return (sub_1D1BF8FC0)(v6, v5, v7);
}

uint64_t sub_1D18CE244()
{
  v2 = *v1;

  if (v0)
  {

    v3 = v2[23];
    v4 = v2[24];
    v5 = sub_1D18CE474;
  }

  else
  {
    v6 = v2[28];

    v5 = sub_1D18CE398;
    v3 = v6;
    v4 = 0;
  }

  return MEMORY[0x1EEE6DFA0](v5, v3, v4);
}

uint64_t sub_1D18CE3B0()
{
  v1 = *(v0 + 64);

  v2 = type metadata accessor for StateSnapshot(0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D18CE474()
{
  v1 = *(v0 + 64);

  v2 = type metadata accessor for StateSnapshot(0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1D18CE538()
{
  v1 = *v0;

  v2 = *(v1 + 192);
  v3 = *(v1 + 184);

  return MEMORY[0x1EEE6DFA0](sub_1D18CE658, v3, v2);
}

uint64_t sub_1D18CE658()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1D18CE6D8()
{
  result = qword_1EE07CFB0;
  if (!qword_1EE07CFB0)
  {
    type metadata accessor for DataModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE07CFB0);
  }

  return result;
}

uint64_t sub_1D18CE730(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapshot(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18CE794(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646080, &qword_1D1E7E488);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1D18CE7FC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for StateSnapshot(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D18CE860()
{
  result = qword_1EC6460A0;
  if (!qword_1EC6460A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EC6460A0);
  }

  return result;
}

uint64_t sub_1D18CE8AC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646098, &unk_1D1E7E4D0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D18CE91C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v27 - v17;
  v19 = sub_1D1E6826C();
  if (!v19)
  {
    return sub_1D1E67C7C();
  }

  v41 = v19;
  v45 = sub_1D1E689DC();
  v32 = sub_1D1E689EC();
  sub_1D1E6898C();
  result = sub_1D1E6824C();
  if ((v41 & 0x8000000000000000) == 0)
  {
    v27 = v10;
    v28 = a5;
    v21 = 0;
    v33 = (v42 + 16);
    v34 = (v42 + 8);
    v35 = v8;
    while (!__OFADD__(v21, 1))
    {
      v42 = v21 + 1;
      v22 = sub_1D1E682BC();
      v23 = v14;
      v24 = v14;
      v25 = AssociatedTypeWitness;
      (*v33)(v23);
      v22(v44, 0);
      v26 = v43;
      v38(v24, v40);
      if (v26)
      {
        (*v34)(v24, v25);
        (*(v30 + 8))(v18, v31);

        return (*(v27 + 32))(v29, v40, v28);
      }

      v43 = 0;
      (*v34)(v24, v25);
      sub_1D1E689CC();
      result = sub_1D1E6828C();
      ++v21;
      v14 = v24;
      if (v42 == v41)
      {
        (*(v30 + 8))(v18, v31);
        return v45;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_1D18CED3C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_45;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x1E69E7CC0];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x1D3891EF0](v2, v26);
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_40;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v28 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2, 1);
      v6 = v2 + 1;
      if (v5)
      {
        break;
      }

      v7 = [isUniquelyReferenced_nonNull_bridgeObject services];
      sub_1D1741B10(0, &qword_1EE079BD0, 0x1E696CC40);
      v8 = sub_1D1E67C1C();

      v9 = v8 >> 62;
      if (v8 >> 62)
      {
        v10 = sub_1D1E6873C();
      }

      else
      {
        v10 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
LABEL_38:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
        {
          goto LABEL_38;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_21;
          }

          goto LABEL_20;
        }

LABEL_19:
        sub_1D1E6873C();
        goto LABEL_20;
      }

      if (v11)
      {
        goto LABEL_19;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E688CC();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_1D1E6873C();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_42;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_44;
            }

            sub_1D17DA8F0(&qword_1EC646280, &qword_1EC646278, &qword_1D1E7E940);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC646278, &qword_1D1E7E940);
              v19 = sub_1D1790CDC(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_43;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_25;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_41;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_1D1E6873C();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x1E69E7CC0];
}

unint64_t CharacteristicValueSet.init(valueSet:options:)@<X0>(unint64_t result@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  if (!result)
  {
    result = sub_1D18D6B94(MEMORY[0x1E69E7CC0], &qword_1EC6462D0, &unk_1D1E7E9C8, &qword_1EC642A60, &qword_1D1E6E7B0);
  }

  *a3 = result;
  *(a3 + 8) = v4 & 1;
  *(a3 + 16) = v4;
  return result;
}

uint64_t CharacteristicValueSet.add<A>(value:for:on:)(void *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v11 = sub_1D1E66A7C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a2;
  (*(a5 + 56))(a4, a5);
  v15 = a1[3];
  v16 = __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D18D3ED4(v16, &v19, v14, v6, v15);
  return (*(v12 + 8))(v14, v11);
}

uint64_t CharacteristicValueSet.add<A>(values:on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_1D1E66A7C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(a4 + 56))(a3, a4);
  CharacteristicValueSet.add(values:on:)(a1, v10);
  return (*(v8 + 8))(v10, v7);
}

uint64_t CharacteristicValueSet.batchWrites.getter()
{
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  *(v1 + 136) = *v0;
  *(v1 + 144) = v2;
  *(v1 + 152) = v3;
  v4 = swift_task_alloc();
  *(v1 + 160) = v4;
  *v4 = v1;
  v4[1] = sub_1D18CF420;

  return CharacteristicValueSet.characteristicsAndValues.getter();
}

uint64_t sub_1D18CF420(uint64_t a1)
{
  *(*v1 + 168) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1D18CF520, 0, 0);
}

uint64_t sub_1D18CF520()
{
  v1 = *(v0 + 168);
  v2 = *(v1 + 16);
  if (v2)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D1E6899C();
    v3 = sub_1D1E6869C();
    v4 = *(v1 + 36);
    v12 = objc_opt_self();
    for (i = v2 - 1; ; --i)
    {
      *(v0 + 56) = sub_1D18D3BF0((v0 + 24), v3, v4, 0, *(v0 + 168));
      sub_1D16EEE38((v0 + 24), (v0 + 64));
      sub_1D1741C08(v0 + 56, v0 + 96, &qword_1EC6460A8, &qword_1D1E7E4F0);
      v6 = *(v0 + 96);
      __swift_project_boxed_opaque_existential_1((v0 + 64), *(v0 + 88));
      v7 = [v12 writeRequestWithCharacteristic:v6 value:sub_1D1E6903C()];

      swift_unknownObjectRelease();
      __swift_destroy_boxed_opaque_existential_1((v0 + 104));
      sub_1D1741A30(v0 + 56, &qword_1EC6460A8, &qword_1D1E7E4F0);
      sub_1D1E6896C();
      sub_1D1E689AC();
      sub_1D1E689BC();
      result = sub_1D1E6897C();
      if (v3 < 0 || v3 >= -(-1 << *(v1 + 32)))
      {
        break;
      }

      if (((*(v1 + 64 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v3) & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v4 != *(v1 + 36))
      {
        goto LABEL_16;
      }

      v9 = sub_1D1E686BC();
      if (!i)
      {

        v10 = v13;
        goto LABEL_11;
      }

      v3 = v9;
      v4 = *(v1 + 36);
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
LABEL_11:
    v11 = *(v0 + 8);

    return v11(v10);
  }

  return result;
}

uint64_t CharacteristicValueSet.valueSet.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t CharacteristicValueSet.add(value:for:on:)(void *a1, unsigned __int8 *a2, uint64_t a3)
{
  v6 = a1[3];
  v7 = __swift_project_boxed_opaque_existential_1(a1, v6);

  return sub_1D18D3ED4(v7, a2, a3, v3, v6);
}

uint64_t CharacteristicValueSet.add(value:for:on:)(void *a1, char *a2, uint64_t a3)
{
  v8 = *a2;
  v5 = a1[3];
  v6 = __swift_project_boxed_opaque_existential_1(a1, v5);
  return sub_1D18D3ED4(v6, &v8, a3, v3, v5);
}

uint64_t CharacteristicValueSet.add(value:for:on:)(void *a1, char *a2, void *a3)
{
  return sub_1D18CF918(a1, a2, a3, sub_1D18DC7C4);
}

{
  return sub_1D18CF918(a1, a2, a3, sub_1D18CFB08);
}

uint64_t CharacteristicValueSet.add(value:for:on:)(uint64_t a1, char *a2, void *a3)
{
  v6 = a3[3];
  v7 = a3[4];
  v8 = __swift_project_boxed_opaque_existential_1(a3, v6);

  return sub_1D18D40C0(a1, a2, v8, v3, v6, v7);
}

uint64_t sub_1D18CF918(void *a1, char *a2, void *a3, void (*a4)(char *, char *))
{
  v6 = v4;
  v10 = sub_1D1E66A7C();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a2;
  v15 = a3[3];
  v16 = a3[4];
  __swift_project_boxed_opaque_existential_1(a3, v15);
  v18 = sub_1D18CE91C(a4, 0, v15, v10, MEMORY[0x1E69E73E0], v16, MEMORY[0x1E69E7410], v17);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = *(v11 + 16);
    v21 = *(v11 + 80);
    v26[1] = v18;
    v22 = v18 + ((v21 + 32) & ~v21);
    v27 = *(v11 + 72);
    v28 = v20;
    do
    {
      v28(v13, v22, v10);
      v29[0] = v14;
      v23 = a1[3];
      v24 = __swift_project_boxed_opaque_existential_1(a1, v23);
      sub_1D18D3ED4(v24, v29, v13, v6, v23);
      (*(v11 + 8))(v13, v10);
      v22 += v27;
      --v19;
    }

    while (v19);
  }
}