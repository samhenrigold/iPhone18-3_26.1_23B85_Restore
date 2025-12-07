uint64_t sub_1DEF5A4A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned int a5, uint64_t a6, char a7, uint64_t a8, double a9, double a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  v42 = a8;
  v43 = a6;
  v52 = a5;
  v50 = a2;
  v51 = a4;
  v53 = a3;
  v46 = a1;
  v47 = a11;
  v48 = a12;
  v49 = a13;
  v40 = a17;
  v44 = a14;
  v45 = a16;
  v21 = type metadata accessor for Message(0);
  v41 = *(v21 - 8);
  v22 = *(v41 + 64);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v39 = &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24 = *(AssociatedTypeWitness - 8);
  v25 = *(v24 + 64);
  v26 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v28 = &v38 - v27;
  v55[0] = a7;
  *v54 = a9;
  v54[1] = v42;
  (*(v24 + 16))(&v38 - v27, a6, AssociatedTypeWitness, v26);
  sub_1DEE280F8(v53, &v38 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for Message);
  v29 = (*(v24 + 80) + 88) & ~*(v24 + 80);
  v30 = (v25 + *(v41 + 80) + v29) & ~*(v41 + 80);
  v31 = swift_allocObject();
  v32 = v45;
  *(v31 + 16) = v44;
  *(v31 + 24) = a15;
  v33 = v40;
  *(v31 + 32) = v32;
  *(v31 + 40) = v33;
  v34 = v47;
  *(v31 + 48) = v46;
  *(v31 + 56) = v34;
  v35 = v49;
  *(v31 + 64) = v48;
  *(v31 + 72) = a10;
  *(v31 + 80) = v35;
  (*(v24 + 32))(v31 + v29, v28, AssociatedTypeWitness);
  sub_1DEE13A28(v39, v31 + v30, type metadata accessor for Message);
  v36 = *(v33 + 136);

  v36(v53, v51, v52, v43, v55, v54, sub_1DEF5D7FC, v31, v38, v33);
}

void sub_1DEF5A790(uint64_t a1, uint64_t a2, void (*a3)(uint64_t *, char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v18 = *(a2 + 24);

  os_unfair_lock_lock(v18 + 4);
  if (*(a2 + 16))
  {
    v19 = *(a2 + 32) ^ 1;
  }

  else
  {
    v19 = 0;
  }

  sub_1DEF5E90C();
  os_unfair_lock_unlock(v18 + 4);

  sub_1DEF58AC0(v19 & 1, a3, a9, a4, a5, a6, a1, a7, a8, a10, a11, a12);
}

uint64_t sub_1DEF5A870(double a1, uint64_t a2, void (*a3)(void *, char *, uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v30 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IncomingNetworkMessage(255, AssociatedTypeWitness, v14, v15);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v16 = sub_1DEF8E808();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = (&v29 - v18);
  v20 = sub_1DEF8DDC8();
  v21 = *(v20 - 8);
  v22.n128_f64[0] = MEMORY[0x1EEE9AC00](v20);
  v24 = &v29 - v23;
  *v31 = a1;
  v31[1] = a5;
  v25 = *(AssociatedTypeWitness - 8);
  (*(v25 + 16))(&v29 - v23, a6, AssociatedTypeWitness, v22);
  (*(v25 + 56))(v24, 0, 1, AssociatedTypeWitness);
  sub_1DEF2ED44();
  v26 = swift_allocError();
  *v27 = 0;
  *v19 = v26;
  swift_storeEnumTagMultiPayload();
  v30(v31, v24, v19);
  (*(v17 + 8))(v19, v16);
  return (*(v21 + 8))(v24, v20);
}

uint64_t sub_1DEF5AB00(uint64_t a1, int64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, char *a7)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = sub_1DEF8DDC8();
  v13 = *(v12 - 1);
  MEMORY[0x1EEE9AC00](v12);
  v56 = &v42 - v14;
  v48 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v42 - v17;
  v19 = (*(a7 + 4))(a5, a7, v16);
  v20 = sub_1DEEA3AD8(v19);

  if (sub_1DEF4DB74(v20, a3))
  {
    goto LABEL_8;
  }

  if (*(a3 + 16) <= *(v20 + 16) >> 3)
  {
    v57 = v20;
    sub_1DEEC8D64(a3);
    v21 = v57;
    if (v57[2])
    {
      goto LABEL_4;
    }

LABEL_8:
  }

  v21 = sub_1DEEC9A18(a3, v20);
  if (!*(v21 + 16))
  {
    goto LABEL_8;
  }

LABEL_4:
  if (qword_1ECDE2E50 != -1)
  {
LABEL_26:
    swift_once();
  }

  v43 = v13;
  v22 = sub_1DEF8D508();
  __swift_project_value_buffer(v22, qword_1ECDF6010);

  v23 = sub_1DEF8D4D8();
  v24 = sub_1DEF8DCB8();
  v25 = os_log_type_enabled(v23, v24);
  v53 = a2;
  v54 = a5;
  v46 = v18;
  v47 = v12;
  if (v25)
  {
    v26 = v24;
    v27 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v57 = v12;
    *v27 = 134349314;
    *(v27 + 4) = *(v21 + 16);

    *(v27 + 12) = 2082;
    v28 = sub_1DEF8DBF8();
    v30 = v23;
    v31 = sub_1DEE12A5C(v28, v29, &v57);

    *(v27 + 14) = v31;
    _os_log_impl(&dword_1DEE0F000, v30, v26, "Disconnecting %{public}ld connected deviceID(s) no longer associated with the signed-in account: %{public}s", v27, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E12CCD70](v12, -1, -1);
    MEMORY[0x1E12CCD70](v27, -1, -1);
  }

  else
  {
  }

  v33 = 0;
  v55 = v21;
  v13 = (v21 + 56);
  v34 = 1 << *(v21 + 32);
  v35 = -1;
  if (v34 < 64)
  {
    v35 = ~(-1 << v34);
  }

  a5 = v35 & *(v21 + 56);
  a2 = (v34 + 63) >> 6;
  v49 = (v48 + 6);
  v50 = a7 + 120;
  v51 = AssociatedTypeWitness;
  v52 = a7;
  v44 = a7 + 112;
  v45 = (v48 + 4);
  ++v48;
  ++v43;
  v18 = a7;
  while (a5)
  {
    v21 = v33;
LABEL_22:
    v36 = __clz(__rbit64(a5));
    a5 &= a5 - 1;
    v37 = (*(v55 + 48) + ((v21 << 10) | (16 * v36)));
    v38 = *v37;
    v39 = v37[1];
    v40 = *(v18 + 15);

    a7 = v56;
    v12 = v54;
    v40(v38, v39, v54, v18);
    v41 = a7;

    AssociatedTypeWitness = v51;
    if ((*v49)(a7, 1, v51) == 1)
    {
      (*v43)(a7, v47);
    }

    else
    {
      a7 = v46;
      (*v45)(v46, v41, AssociatedTypeWitness);
      (*(v18 + 14))(a7, v12, v18);
      (*v48)(a7, AssociatedTypeWitness);
    }

    v33 = v21;
  }

  while (1)
  {
    v21 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      __break(1u);
      goto LABEL_26;
    }

    if (v21 >= a2)
    {
    }

    a5 = v13[v21];
    ++v33;
    if (a5)
    {
      goto LABEL_22;
    }
  }
}

uint64_t sub_1DEF5B034(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(result + 16);
  if (v3)
  {
    v5 = (result + 40);
    do
    {
      v8 = *v5;
      v9 = *(a3 + 16);
      if (v9)
      {
        v15 = *v5;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE42A0, &unk_1DEF95E40);
        v6 = swift_allocObject();
        v10 = _swift_stdlib_malloc_size(v6);
        v11 = v10 - 32;
        if (v10 < 32)
        {
          v11 = v10 - 17;
        }

        v6[2] = v9;
        v6[3] = 2 * (v11 >> 4);
        v12 = sub_1DEF2DE0C(&v17, v6 + 4, v9, a3);
        v13 = v17;
        v16 = v12;
        swift_unknownObjectRetain();

        result = sub_1DEEACDB8(v13);
        if (v16 != v9)
        {
          __break(1u);
          return result;
        }

        v8 = v15;
      }

      else
      {
        swift_unknownObjectRetain();
        v6 = MEMORY[0x1E69E7CC0];
      }

      ObjectType = swift_getObjectType();
      (*(v8 + 32))(a2, &off_1F5A21098, v6, ObjectType, v8);
      swift_unknownObjectRelease();

      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return result;
}

uint64_t sub_1DEF5B1B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 8))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DEF5B250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v10 = *(v4 + 24);
    ObjectType = swift_getObjectType();
    (*(v10 + 16))(a1, a2, a3, a4, ObjectType, v10);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1DEF5B2F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v8 = *(v3 + 24);
    ObjectType = swift_getObjectType();
    (*(v8 + 32))(a1, a2, a3, ObjectType, v8);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1DEF5B3BC(uint64_t a1)
{
  v2 = a1;
  v8[1] = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  if ((v3 & 0x3Fu) > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v7 = swift_slowAlloc();
      sub_1DEF5BB50(v7, v4, v2);
      MEMORY[0x1E12CCD70](v7, -1, -1);
      return;
    }
  }

  MEMORY[0x1EEE9AC00](a1);
  v6 = v8 - ((v5 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v6, v5);
  sub_1DEF5B51C(v6, v4, v2);
  if (v1)
  {
    swift_willThrow();
  }
}

void sub_1DEF5B51C(unint64_t *a1, uint64_t a2, void *a3)
{
  v61 = a2;
  v62 = a1;
  v4 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v76 = &v60 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v60 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v60 - v10;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v60 - v12;
  v74 = type metadata accessor for PairingRelationship(0);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74 - 8);
  v15 = &v60 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1DEF8D3F8();
  v19.n128_f64[0] = MEMORY[0x1EEE9AC00](v16);
  v81 = &v60 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = 0;
  v21 = 0;
  v77 = a3;
  v22 = a3;
  v23 = v17;
  v26 = v22[8];
  v25 = v22 + 8;
  v24 = v26;
  v27 = 1 << *(v25 - 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v24;
  v30 = (v27 + 63) >> 6;
  v67 = v18 + 16;
  v68 = v30;
  v69 = v25;
  v70 = v18;
  v78 = v18 + 8;
  v79 = v6;
  v82 = v13;
  v64 = v8;
  v71 = v17;
  v72 = v15;
  while (v29)
  {
    v31 = v15;
    v32 = __clz(__rbit64(v29));
    v80 = (v29 - 1) & v29;
LABEL_13:
    v35 = v32 | (v21 << 6);
    v36 = v77;
    v37 = v70;
    v38 = *(v70 + 16);
    v39 = v81;
    v38(v81, v77[6] + *(v70 + 72) * v35, v23, v19);
    v40 = v36[7];
    v41 = *(v73 + 72);
    v66 = v35;
    v42 = v40 + v41 * v35;
    v43 = v31;
    sub_1DEE280F8(v42, v31, type metadata accessor for PairingRelationship);
    v44 = v82;
    (v38)(v82, v39, v23);
    v45 = v79;
    sub_1DEE280F8(v43, v44 + *(v79 + 48), type metadata accessor for PairingRelationship);
    v46 = v44;
    v47 = v75;
    sub_1DEE17214(v46, v75, &unk_1ECDE4350, &qword_1DEF93400);
    v48 = v47 + *(v45 + 48);
    v49 = v74;
    v50 = v76;
    sub_1DEE280F8(v48 + *(v74 + 20), v76, type metadata accessor for DeviceDescriptor);
    sub_1DEE274C0(v48, type metadata accessor for PairingRelationship);
    LODWORD(v36) = *(v50 + 48);
    sub_1DEE274C0(v50, type metadata accessor for DeviceDescriptor);
    v51 = *(v37 + 8);
    v51(v47, v23);
    if (v36 != 4)
    {
      sub_1DEE171B4(v82, &unk_1ECDE4350, &qword_1DEF93400);
      v23 = v71;
      v15 = v72;
      goto LABEL_5;
    }

    v65 = v51;
    v52 = v82;
    v53 = v64;
    sub_1DEE17214(v82, v64, &unk_1ECDE4350, &qword_1DEF93400);
    v54 = v53 + *(v79 + 48);
    v55 = (v54 + *(v49 + 32));
    v56 = *v55;
    v57 = v55[1];
    sub_1DEE4F8C0(*v55, v57);
    sub_1DEE274C0(v54, type metadata accessor for PairingRelationship);
    if (v57 == 3)
    {
      sub_1DEE4F8D4(v56, 3uLL);
      sub_1DEE4F8D4(0, 3uLL);
      sub_1DEE4F8D4(v56, 3uLL);
      sub_1DEE171B4(v52, &unk_1ECDE4350, &qword_1DEF93400);
      v23 = v71;
      v51 = v65;
      v65(v53, v71);
      v15 = v72;
LABEL_5:
      v30 = v68;
      v25 = v69;
      v29 = v80;
      sub_1DEE274C0(v15, type metadata accessor for PairingRelationship);
      v51(v81, v23);
    }

    else
    {
      sub_1DEE4F8C0(v56, v57);
      sub_1DEE4F8D4(v56, v57);
      sub_1DEE4F8D4(0, 3uLL);
      sub_1DEE4F8D4(v56, v57);
      sub_1DEE171B4(v52, &unk_1ECDE4350, &qword_1DEF93400);
      v23 = v71;
      v58 = v65;
      v65(v53, v71);
      v15 = v72;
      sub_1DEE274C0(v72, type metadata accessor for PairingRelationship);
      v58(v81, v23);
      *(v62 + ((v66 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v66;
      v59 = __OFADD__(v63++, 1);
      v30 = v68;
      v25 = v69;
      v29 = v80;
      if (v59)
      {
        __break(1u);
LABEL_19:
        sub_1DEEC6068(v62, v61, v63, v77);
        return;
      }
    }
  }

  v33 = v21;
  while (1)
  {
    v21 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      break;
    }

    if (v21 >= v30)
    {
      goto LABEL_19;
    }

    v34 = v25[v21];
    ++v33;
    if (v34)
    {
      v31 = v15;
      v32 = __clz(__rbit64(v34));
      v80 = (v34 - 1) & v34;
      goto LABEL_13;
    }
  }

  __break(1u);
}

void *sub_1DEF5BB50(void *result, uint64_t a2, void *a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v4 = result;
      v5 = a2;
      bzero(result, 8 * a2);
      result = v4;
      a2 = v5;
    }

    sub_1DEF5B51C(result, a2, a3);
    v7 = v6;

    return v7;
  }

  return result;
}

void sub_1DEF5BBC8()
{
  v1 = *(v0 + *(*v0 + 168));
  os_unfair_lock_lock(v1 + 4);
  sub_1DEE15434(v2);
  os_unfair_lock_unlock(v1 + 4);
}

uint64_t sub_1DEF5BCA4(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Message(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = *(type metadata accessor for DeviceDescriptor(0) - 8);
  v12 = (v10 + *(v11 + 80) + 1) & ~*(v11 + 80);
  v13 = v12 + *(v11 + 64);
  return sub_1DEF5088C(a1, a2, v2 + v6, *(v2 + v7), v2 + v9, *(v2 + v10), (v2 + v12), *(v2 + v13), *(v2 + (v13 & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + (v13 & 0xFFFFFFFFFFFFFFF8) + 16), *(v2 + (((v13 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8)), *(v2 + (((v13 & 0xFFFFFFFFFFFFFFF8) + 31) & 0xFFFFFFFFFFFFFFF8) + 8));
}

__n128 sub_1DEF5BE58(uint64_t a1)
{
  v12 = *(v1 + 16);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(type metadata accessor for Message(0) - 8);
  v6 = (*(v5 + 80) + 56) & ~*(v5 + 80);
  v7 = *(v5 + 64);
  v8 = *(type metadata accessor for DeviceDescriptor(0) - 8);
  v9 = (v6 + v7 + *(v8 + 80)) & ~*(v8 + 80);
  v10 = (*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1DEF50D50(a1, *(v1 + 48), v1 + v6, v1 + v9, *(v1 + v10), *(v1 + v10 + 8), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v12, *(&v12 + 1), v3, v4);
  return result;
}

unint64_t sub_1DEF5BF8C()
{
  result = qword_1ECDE5240;
  if (!qword_1ECDE5240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5240);
  }

  return result;
}

uint64_t sub_1DEF5BFE0(uint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *(*(*(v3 + 24) - 8) + 64);
  v8 = (*(*(*(v3 + 24) - 8) + 80) + 72) & ~*(*(*(v3 + 24) - 8) + 80);
  v9 = *(type metadata accessor for Message(0) - 8);
  v10 = (v8 + v7 + *(v9 + 80)) & ~*(v9 + 80);
  v11 = (*(v9 + 64) + v10 + 7) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v13 = (v11 + *(v12 + 80) + 16) & ~*(v12 + 80);
  v14 = v13 + *(v12 + 64);
  v15 = *(type metadata accessor for DeviceDescriptor(0) - 8);
  return sub_1DEF56868(a1, a2, a3, *(v3 + 48), *(v3 + 56), *(v3 + 64), (v3 + v8), v3 + v10, *(v3 + v11), *(v3 + v11 + 8), (v3 + v13), *(v3 + v14), v3 + ((v14 + *(v15 + 80) + 1) & ~*(v15 + 80)), *(v3 + ((v14 + *(v15 + 80) + 1) & ~*(v15 + 80)) + *(v15 + 64)));
}

uint64_t sub_1DEF5C1F0(char *a1, void (*a2)(char *, uint64_t))
{
  v4 = *(v2 + 24);
  v5 = *(sub_1DEF8D378() - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (*(*(v4 - 8) + 80) + v8 + 16) & ~*(*(v4 - 8) + 80);
  v10 = (*(*(v4 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v10 + 23) & 0xFFFFFFFFFFFFFFF8;
  v12 = *(type metadata accessor for Message(0) - 8);
  v13 = (*(v12 + 80) + v11 + 8) & ~*(v12 + 80);
  v14 = *(v12 + 64);
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v16 = v2 + ((v13 + v14 + *(v15 + 80)) & ~*(v15 + 80));
  return sub_1DEF58E94(a1, a2, (v2 + v6), *(v2 + v7 + 8), *(v2 + v8), *(v2 + v8 + 8), v2 + v9, *(v2 + v10), *(v2 + v7), *(v2 + v10 + 8), *(v2 + v11), (v2 + v13), v16, *(v16 + *(v15 + 64)), *(v16 + *(v15 + 64) + 1));
}

uint64_t sub_1DEF5C438(uint64_t a1)
{
  v4 = v1[2];
  v3 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v7 = *(type metadata accessor for Message(0) - 8);
  v8 = (*(v7 + 80) + 48) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1DEF582CC(*(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8)), a1, v1 + v8, *(v1 + v9), *(v1 + v9 + 8), *(v1 + v10), *(v1 + v10 + 8), *(v1 + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), v1 + ((*(v11 + 80) + ((v10 + 23) & 0xFFFFFFFFFFFFFFF8) + 16) & ~*(v11 + 80)), v4, v3, v6, v5);
}

void sub_1DEF5C584(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = *(v1 + 32);
  v5 = *(v1 + 40);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (*(v7 + 80) + 88) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(type metadata accessor for Message(0) - 8);
  sub_1DEF5A790(a1, *(v1 + 48), *(v1 + 56), *(v1 + 64), *(v1 + 80), v1 + v8, v1 + ((v8 + v9 + *(v10 + 80)) & ~*(v10 + 80)), v3, *(v1 + 72), v4, v6, v5);
}

uint64_t objectdestroy_21Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 80) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

uint64_t sub_1DEF5C77C(uint64_t a1)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = *(v1 + 32);
  v6 = *(v1 + 40);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  return sub_1DEF5A870(*(v1 + 64), a1, *(v1 + 48), *(v1 + 56), *(v1 + 72), v1 + ((*(v7 + 80) + 80) & ~*(v7 + 80)), v3, v4, v5, v6);
}

uint64_t objectdestroy_30Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 88) & ~v3;
  v5 = *(v2 + 64);
  v6 = type metadata accessor for Message(0);
  v7 = *(*(v6 - 8) + 80);
  v14 = *(*(v6 - 8) + 64);

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);
  v15 = (v4 + v5 + v7) & ~v7;
  v8 = v0 + v15;
  v9 = sub_1DEF8D3F8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 8);
  v11(v0 + v15, v9);
  v12 = *(v6 + 20);
  if (!(*(v10 + 48))(v0 + v15 + v12, 1, v9))
  {
    v11(v8 + v12, v9);
  }

  sub_1DEE1BFA0(*(v8 + *(v6 + 36)), *(v8 + *(v6 + 36) + 8));

  return MEMORY[0x1EEE6BDD0](v0, v15 + v14, v3 | v7 | 7);
}

void sub_1DEF5CA84()
{
  v1 = *(v0 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for IncomingNetworkMessage(255, AssociatedTypeWitness, v3, v4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  v5 = *(sub_1DEF8E808() - 8);
  v19 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v6 = (*(v5 + 64) + v19 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = *(sub_1DEF8DDC8() - 8);
  v8 = (v6 + *(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = (v8 + *(v7 + 64) + *(*(v1 - 8) + 80)) & ~*(*(v1 - 8) + 80);
  v10 = (*(*(v1 - 8) + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  v11 = *(type metadata accessor for Message(0) - 8);
  v12 = (v10 + *(v11 + 80) + 16) & ~*(v11 + 80);
  v13 = (*(v11 + 64) + v12 + 7) & 0xFFFFFFFFFFFFFFF8;
  v14 = (v13 + 23) & 0xFFFFFFFFFFFFFFF8;
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v16 = (v14 + *(v15 + 80) + 8) & ~*(v15 + 80);
  v17 = v16 + *(v15 + 64);
  v18 = *(type metadata accessor for DeviceDescriptor(0) - 8);
  sub_1DEF57320(v0 + v19, *(v0 + v6), *(v0 + v6 + 8), v0 + v8, v0 + v9, *(v0 + v10 + 8), v0 + v12, *(v0 + v13), *(v0 + v10), *(v0 + v13 + 8), *(v0 + v14), v0 + v16, *(v0 + v17), (v0 + ((v17 + *(v18 + 80) + 1) & ~*(v18 + 80))), *(v0 + ((v17 + *(v18 + 80) + 1) & ~*(v18 + 80)) + *(v18 + 64)));
}

uint64_t sub_1DEF5CE08(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for Message(0) - 8);
  v6 = (*(v5 + 80) + 48) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v9 = (v7 + *(v8 + 80) + 8) & ~*(v8 + 80);
  v10 = v9 + *(v8 + 64);
  v11 = *(type metadata accessor for DeviceDescriptor(0) - 8);
  v12 = (v10 + *(v11 + 80) + 1) & ~*(v11 + 80);
  return sub_1DEF53474(a1, a2, v2 + v6, *(v2 + v7), v2 + v9, *(v2 + v10), (v2 + v12), *(v2 + v12 + *(v11 + 64)), *(v2 + ((v12 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + 8), *(v2 + ((v12 + *(v11 + 64)) & 0xFFFFFFFFFFFFFFF8) + 16));
}

void sub_1DEF5CFA4(uint64_t a1, char a2)
{
  v5 = *(type metadata accessor for Message(0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = v2 + v7;
  v11 = *v10;
  v12 = *(v10 + 8);
  v13 = *(v2 + v8);

  sub_1DEF53824(a1, a2 & 1, v9, v2 + v6, v11, v12, v13);
}

uint64_t sub_1DEF5D068(uint64_t a1, void *a2, char a3)
{
  v4 = (*(*(v3[3] - 8) + 80) + 72) & ~*(*(v3[3] - 8) + 80);
  v5 = (v3 + ((*(*(v3[3] - 8) + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));
  return sub_1DEF552A8(a1, a2, a3 & 1, v3[6], v3[7], v3[8], v3 + v4, *v5, v5[1]);
}

void sub_1DEF5D100(uint64_t a1, void *a2)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 32);
  v7 = *(v2 + 40);
  v8 = (*(*(v5 - 8) + 80) + 64) & ~*(*(v5 - 8) + 80);
  v9 = (*(*(v5 - 8) + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = *(type metadata accessor for Message(0) - 8);
  v11 = (v9 + *(v10 + 80) + 16) & ~*(v10 + 80);
  v12 = *(v10 + 64);
  v13 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4890, &qword_1DEF90990) - 8);
  v14 = (v11 + v12 + *(v13 + 80)) & ~*(v13 + 80);
  v15 = v14 + *(v13 + 64);
  sub_1DEF559E0(a1, a2, *(v2 + 48), *(v2 + 56), v2 + v8, *(v2 + v9), *(v2 + v9 + 8), v2 + v11, (v2 + v14), *(v2 + v15), *(v2 + v15 + 1), *(v2 + ((v15 + 9) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((v15 + 9) & 0xFFFFFFFFFFFFFFF8) + 8), v4, v5, v6, v7);
}

uint64_t objectdestroy_66Tm()
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2 = *(AssociatedTypeWitness - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 64) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, AssociatedTypeWitness);

  return MEMORY[0x1EEE6BDD0](v0, v4 + v5, v3 | 7);
}

void sub_1DEF5D43C()
{
  v2 = *(v0 + 16);
  v1 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 40);
  v5 = (*(*(v1 - 8) + 80) + 80) & ~*(*(v1 - 8) + 80);
  v6 = v5 + *(*(v1 - 8) + 64);
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = (v6 + *(v7 + 80)) & ~*(v7 + 80);
  v9 = v0 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8);
  sub_1DEF55664(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), v0 + v5, v0 + v8, *v9, *(v9 + 8), v2, v1, v4, v3);
}

uint64_t sub_1DEF5D5B8(uint64_t a1)
{
  v3 = *(v1 + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v3(a1, a1 + *(TupleTypeMetadata2 + 48));
}

uint64_t sub_1DEF5D62C(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + 96);
  v7[0] = *(v2 + 80);
  v7[1] = v4;
  type metadata accessor for NetworkSyncService.WeakDelegate(0, v7);
  v5 = swift_allocObject();
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return v5;
}

uint64_t sub_1DEF5D6B4@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(v2 + 48);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = v5(a1, a1 + *(TupleTypeMetadata2 + 48));
  *a2 = result;
  return result;
}

uint64_t sub_1DEF5D72C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DEF5D788()
{
  result = qword_1ECDE5248;
  if (!qword_1ECDE5248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5248);
  }

  return result;
}

uint64_t sub_1DEF5D83C(uint64_t a1, double a2)
{
  type metadata accessor for NearbyCompanionSubscriber();
  result = swift_allocObject();
  *(result + 16) = 0;
  qword_1ECDF6040 = result;
  return result;
}

uint64_t ReplicatorCodingError.hashValue.getter()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF60](v1);
  return sub_1DEF8E7F8();
}

unint64_t sub_1DEF5D920()
{
  result = qword_1ECDE5250;
  if (!qword_1ECDE5250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5250);
  }

  return result;
}

uint64_t DeviceType.description.getter()
{
  v1 = *v0;
  v2 = 0x6E776F6E6B6E75;
  v3 = 6578544;
  v4 = 0x6863746177;
  if (v1 != 4)
  {
    v4 = 30324;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 6513005;
  if (v1 != 1)
  {
    v5 = 0x656E6F6870;
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

unint64_t sub_1DEF5DAAC()
{
  result = qword_1ECDE35C8;
  if (!qword_1ECDE35C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE35C8);
  }

  return result;
}

uint64_t sub_1DEF5DB00()
{
  v1 = *v0;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v1);
  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF5DB74(uint64_t a1)
{
  v2 = *v1;
  sub_1DEF8E7A8();
  MEMORY[0x1E12CBF90](v2);
  return sub_1DEF8E7F8();
}

uint64_t static Watchdog.execute(within:failureQueue:action:failureHandler:)(uint64_t a1, void (*a2)(uint64_t))
{
  type metadata accessor for Watchdog();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = (v4 + 16);
  *(v3 + 24) = v4;
  *(v3 + 32) = 0;

  os_unfair_lock_lock(v5);
  sub_1DEE15434(v6);
  os_unfair_lock_unlock(v5);

  a2(v3);
}

uint64_t sub_1DEF5DD24()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEF12170(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t Watchdog.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t Watchdog.init()()
{
  *(v0 + 16) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4230, &qword_1DEF934E0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  return v0;
}

uint64_t sub_1DEF5DE4C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(v2 + 24);

  os_unfair_lock_lock(v4 + 4);
  sub_1DEE3DEF0(v5);
  os_unfair_lock_unlock(v4 + 4);

  return a2(v2);
}

uint64_t sub_1DEF5DF68(uint64_t (*a1)(void))
{
  v3 = *(v1 + 24);

  os_unfair_lock_lock(v3 + 4);
  if (*(v1 + 16))
  {
    v4 = *(v1 + 32) ^ 1;
  }

  else
  {
    v4 = 0;
  }

  sub_1DEF5E90C();
  os_unfair_lock_unlock(v3 + 4);

  return a1(v4 & 1);
}

uint64_t sub_1DEF5DFEC()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1DEE3DEF0(v2);
  os_unfair_lock_unlock(v1 + 4);
}

void sub_1DEF5E05C(void (*a1)(char *, uint64_t), uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v66 = a3;
  v59 = a1;
  v60 = a2;
  v7 = sub_1DEF8D698();
  v68 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v67 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1DEF8D6D8();
  v65 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v63 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1DEF8D778();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v56 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v64 = &v52 - v15;
  v16 = sub_1DEF8D688();
  v61 = *(v16 - 8);
  v62 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v58 = (&v52 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v57 = &v52 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v70 = (&v52 - v21);
  v22 = sub_1DEF8DD48();
  v55 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = *(v4 + 24);

  os_unfair_lock_assert_owner(v25 + 4);

  if (qword_1ECDE2E58 != -1)
  {
    swift_once();
  }

  v26 = sub_1DEF8D508();
  __swift_project_value_buffer(v26, qword_1ECDF6028);
  v27 = sub_1DEF8D4D8();
  v28 = sub_1DEF8DCB8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 134349056;
    *(v29 + 4) = a4;
    _os_log_impl(&dword_1DEE0F000, v27, v28, "Watchdog will fire in %{public}fs", v29, 0xCu);
    MEMORY[0x1E12CCD70](v29, -1, -1);
  }

  v30 = a4 * 1000000.0;
  if (COERCE__INT64(fabs(a4 * 1000000.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v30 <= -9.22337204e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v30 >= 9.22337204e18)
  {
LABEL_14:
    __break(1u);
    return;
  }

  v54 = v7;
  if (v30 >= 0x7FFFFFFF)
  {
    v31 = 0x7FFFFFFFLL;
  }

  else
  {
    v31 = v30;
  }

  sub_1DEE1B7BC();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1DEE1B5E4(&qword_1ECDE2BB8, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  v53 = v9;
  v52 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4790, &qword_1DEF93538);
  v69 = v11;
  sub_1DEE1B590(&qword_1ECDE2C28, &qword_1ECDE4790, &qword_1DEF93538);
  sub_1DEF8DE08();
  v32 = sub_1DEF8DD58();
  (*(v55 + 8))(v24, v22);
  v33 = v70;
  *v70 = v31;
  v34 = v61;
  v35 = v62;
  v36 = *(v61 + 104);
  v36(v33, *MEMORY[0x1E69E7F30], v62);
  v37 = v56;
  sub_1DEF8D768();
  v38 = v64;
  MEMORY[0x1E12CAF50](v37, v33);
  v39 = *(v12 + 8);
  v55 = v12 + 8;
  v59 = v39;
  v39(v37, v69);
  ObjectType = swift_getObjectType();
  v41 = v57;
  v36(v57, *MEMORY[0x1E69E7F40], v35);
  v42 = v58;
  *v58 = 0;
  v36(v42, *MEMORY[0x1E69E7F28], v35);
  v43 = v38;
  MEMORY[0x1E12CB550](v38, v41, v42, ObjectType);
  v44 = *(v34 + 8);
  v44(v42, v35);
  v45 = v35;
  v44(v41, v35);
  v46 = swift_allocObject();
  v47 = v52;
  v48 = v60;
  v46[2] = v52;
  v46[3] = v48;
  v46[4] = v66;
  aBlock[4] = sub_1DEF5EBFC;
  aBlock[5] = v46;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_20;
  v49 = _Block_copy(aBlock);

  v50 = v63;
  sub_1DEF8D6B8();
  v51 = v67;
  sub_1DEE160EC();
  sub_1DEF8DD78();
  _Block_release(v49);
  (*(v68 + 8))(v51, v54);
  (*(v65 + 8))(v50, v53);

  *(v47 + 16) = v32;
  swift_unknownObjectRetain_n();
  swift_unknownObjectRelease();
  sub_1DEF8DD98();
  swift_unknownObjectRelease_n();
  v59(v43, v69);
  v44(v70, v45);
}

uint64_t sub_1DEF5E86C(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4 = *(a1 + 24);

  os_unfair_lock_lock(v4 + 4);
  sub_1DEF12CD4(&v7);
  os_unfair_lock_unlock(v4 + 4);
  v5 = v7;

  if ((v5 & 1) == 0)
  {
    return a2(a1);
  }

  return result;
}

uint64_t sub_1DEF5E90C()
{
  v1 = v0;
  v2 = *(v0 + 24);

  os_unfair_lock_assert_owner(v2 + 4);

  if (*(v1 + 16))
  {
    if (qword_1ECDE2E58 != -1)
    {
      swift_once();
    }

    v4 = sub_1DEF8D508();
    __swift_project_value_buffer(v4, qword_1ECDF6028);
    v5 = sub_1DEF8D4D8();
    v6 = sub_1DEF8DCB8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_1DEE0F000, v5, v6, "Cancelling watchdog", v7, 2u);
      MEMORY[0x1E12CCD70](v7, -1, -1);
    }

    if (*(v1 + 16))
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1DEF8DD88();
      swift_unknownObjectRelease();
    }

    *(v1 + 16) = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t Watchdog.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t Watchdog.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF5EC08@<X0>(BOOL *a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3)
  {
    *(v1 + 32) = 1;
    result = sub_1DEF5E90C();
  }

  *a1 = v3 == 0;
  return result;
}

uint64_t NetworkMessagingConnectionType.description.getter()
{
  if (*v0)
  {
    return 0x73756E696D726574;
  }

  else
  {
    return 0x647261646E617473;
  }
}

unint64_t sub_1DEF5ECFC()
{
  result = qword_1ECDE5258;
  if (!qword_1ECDE5258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5258);
  }

  return result;
}

unint64_t sub_1DEF5ED54()
{
  result = qword_1ECDE2EE0;
  if (!qword_1ECDE2EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE2EE0);
  }

  return result;
}

uint64_t sub_1DEF5EDA8()
{
  if (*v0)
  {
    return 0x73756E696D726574;
  }

  else
  {
    return 0x647261646E617473;
  }
}

void sub_1DEF5EDDC(uint64_t a1)
{
  type metadata accessor for Message(319);
  if (v1 <= 0x3F)
  {
    sub_1DEED9C80(319);
    if (v2 <= 0x3F)
    {
      swift_checkMetadataState();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1DEF5EE7C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8)
  {
    v9 = v8 - 1;
  }

  else
  {
    v9 = 0;
  }

  if (v8 <= 0x7FFFFFFF)
  {
    v10 = 0x7FFFFFFF;
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(sub_1DEF8D1E8() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  if (v13)
  {
    v14 = v13 - 1;
  }

  else
  {
    v14 = 0;
  }

  if (v14 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v14;
  }

  v16 = *(*(a3 + 16) - 8);
  v17 = *(v16 + 84);
  if (v17 > v15)
  {
    v15 = *(v16 + 84);
  }

  v18 = *(v7 + 64);
  v19 = *(v7 + 80);
  v20 = *(v11 + 80);
  v21 = *(v11 + 64);
  v22 = *(v16 + 80);
  v23 = *(v16 + 64);
  if (v8)
  {
    v24 = 7;
  }

  else
  {
    v24 = 8;
  }

  if (v13)
  {
    v25 = v21;
  }

  else
  {
    v25 = v21 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v26 = ((((((((v24 + v18 + ((v18 + v19) & ~v19)) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v20 + 16;
  v27 = v25 + v22;
  if (a2 > v15)
  {
    v28 = ((v27 + (v26 & ~v20)) & ~v22) + v23;
    v29 = 8 * v28;
    if (v28 > 3)
    {
      goto LABEL_24;
    }

    v31 = ((a2 - v15 + ~(-1 << v29)) >> v29) + 1;
    if (HIWORD(v31))
    {
      v30 = *(a1 + v28);
      if (!v30)
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v31 > 0xFF)
    {
      v30 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_44;
      }

      goto LABEL_31;
    }

    if (v31 >= 2)
    {
LABEL_24:
      v30 = *(a1 + v28);
      if (!*(a1 + v28))
      {
        goto LABEL_44;
      }

LABEL_31:
      v32 = (v30 - 1) << v29;
      if (v28 > 3)
      {
        v32 = 0;
      }

      if (v28)
      {
        if (v28 <= 3)
        {
          v33 = v28;
        }

        else
        {
          v33 = 4;
        }

        if (v33 > 2)
        {
          if (v33 == 3)
          {
            v34 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v34 = *a1;
          }
        }

        else if (v33 == 1)
        {
          v34 = *a1;
        }

        else
        {
          v34 = *a1;
        }
      }

      else
      {
        v34 = 0;
      }

      return v15 + (v34 | v32) + 1;
    }
  }

LABEL_44:
  if (v10 == v15)
  {
    if (v8 >= 0x7FFFFFFF)
    {
      v35 = *(v7 + 48);

      return v35(a1, v8, v6);
    }

    v38 = (a1 + v18 + v19) & ~v19;
    if (v9 == v10)
    {
      if (v8 < 2)
      {
        return 0;
      }

      v37 = (*(v7 + 48))(v38, v8, v6);
      goto LABEL_68;
    }

    if (v8)
    {
      v41 = *(v7 + 64);
    }

    else
    {
      v41 = v18 + 1;
    }

    v42 = *(((v38 + v41 + 7) & 0xFFFFFFFFFFFFFFF8) + 8);
    if (v42 >= 0xFFFFFFFF)
    {
      LODWORD(v42) = -1;
    }

    return (v42 + 1);
  }

  else
  {
    if (v14 == v15)
    {
      if (v13 < 2)
      {
        return 0;
      }

      v37 = (*(v12 + 48))((a1 + v26) & ~v20);
LABEL_68:
      if (v37 >= 2)
      {
        return v37 - 1;
      }

      else
      {
        return 0;
      }
    }

    v39 = ~v22;
    v40 = *(*(*(a3 + 16) - 8) + 48);

    return v40((v27 + ((a1 + v26) & ~v20)) & v39, v17);
  }
}

void sub_1DEF5F28C(_BYTE *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v43 = v11;
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  v13 = sub_1DEF8D1E8();
  v14 = 0;
  v15 = *(v13 - 8);
  v16 = *(v15 + 84);
  if (v16)
  {
    v17 = v16 - 1;
  }

  else
  {
    v17 = 0;
  }

  if (v17 <= v12)
  {
    v18 = v12;
  }

  else
  {
    v18 = v17;
  }

  v19 = *(a4 + 16);
  v20 = *(v19 - 8);
  v21 = *(v20 + 84);
  v22 = *(v9 + 64);
  v23 = *(v9 + 80);
  v24 = *(v15 + 80);
  v25 = *(v20 + 80);
  if (v21 > v18)
  {
    v18 = *(v20 + 84);
  }

  if (v10)
  {
    v26 = *(v9 + 64);
  }

  else
  {
    v26 = v22 + 1;
  }

  v27 = v22 + v23;
  v28 = ((((((((v26 + ((v22 + v23) & ~v23) + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + v24 + 16;
  if (v16)
  {
    v29 = *(*(v13 - 8) + 64);
  }

  else
  {
    v29 = *(*(v13 - 8) + 64) + 1;
  }

  v30 = v29 + v25;
  v31 = ((v30 + (v28 & ~v24)) & ~v25) + *(v20 + 64);
  if (a3 <= v18)
  {
    goto LABEL_31;
  }

  if (v31 <= 3)
  {
    v32 = ((a3 - v18 + ~(-1 << (8 * v31))) >> (8 * v31)) + 1;
    if (HIWORD(v32))
    {
      v14 = 4;
      if (v18 >= a2)
      {
        goto LABEL_41;
      }

LABEL_32:
      v34 = ~v18 + a2;
      if (v31 >= 4)
      {
        bzero(a1, v31);
        *a1 = v34;
        v35 = 1;
        if (v14 > 1)
        {
          goto LABEL_69;
        }

        goto LABEL_66;
      }

      v35 = (v34 >> (8 * v31)) + 1;
      if (v31)
      {
        v36 = v34 & ~(-1 << (8 * v31));
        bzero(a1, v31);
        if (v31 != 3)
        {
          if (v31 == 2)
          {
            *a1 = v36;
            if (v14 > 1)
            {
LABEL_69:
              if (v14 == 2)
              {
                *&a1[v31] = v35;
              }

              else
              {
                *&a1[v31] = v35;
              }

              return;
            }
          }

          else
          {
            *a1 = v34;
            if (v14 > 1)
            {
              goto LABEL_69;
            }
          }

LABEL_66:
          if (v14)
          {
            a1[v31] = v35;
          }

          return;
        }

        *a1 = v36;
        a1[2] = BYTE2(v36);
      }

      if (v14 > 1)
      {
        goto LABEL_69;
      }

      goto LABEL_66;
    }

    if (v32 < 0x100)
    {
      v33 = 1;
    }

    else
    {
      v33 = 2;
    }

    if (v32 >= 2)
    {
      v14 = v33;
    }

    else
    {
      v14 = 0;
    }

LABEL_31:
    if (v18 >= a2)
    {
      goto LABEL_41;
    }

    goto LABEL_32;
  }

  v14 = 1;
  if (v18 < a2)
  {
    goto LABEL_32;
  }

LABEL_41:
  if (v14 > 1)
  {
    if (v14 != 2)
    {
      *&a1[v31] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *&a1[v31] = 0;
LABEL_47:
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!v14)
  {
    goto LABEL_47;
  }

  a1[v31] = 0;
  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v12 == v18)
  {
    if (v10 < 0x7FFFFFFF)
    {
      v38 = (&a1[v27] & ~v23);
      if (v43 != v12)
      {
        v42 = (&v38[v26 + 7] & 0xFFFFFFFFFFFFFFF8);
        if ((a2 & 0x80000000) != 0)
        {
          *v42 = a2 & 0x7FFFFFFF;
          v42[1] = 0;
        }

        else
        {
          v42[1] = (a2 - 1);
        }

        return;
      }

      v37 = *(v9 + 56);
      v39 = (a2 + 1);
    }

    else
    {
      v37 = *(v9 + 56);
      v38 = a1;
      v39 = a2;
    }

    v41 = v10;
    v19 = v8;
    goto LABEL_61;
  }

  if (v17 != v18)
  {
    v37 = *(v20 + 56);
    v38 = ((v30 + (&a1[v28] & ~v24)) & ~v25);
    v39 = a2;
    v41 = v21;
LABEL_61:

    v37(v38, v39, v41, v19);
    return;
  }

  v40 = *(v15 + 56);

  v40(&a1[v28] & ~v24, (a2 + 1));
}

uint64_t PropertyListTypeDecoder.__allocating_init(version:)(uint64_t a1, char a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  *(result + 24) = a2 & 1;
  return result;
}

uint64_t PropertyListTypeDecoder.init(version:)(uint64_t a1, char a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2 & 1;
  return v2;
}

uint64_t sub_1DEF5F790(uint64_t a1, uint64_t a2)
{
  if (a1 == MEMORY[0x1E6969080] && (sub_1DEE12F7C(a2, v14), sub_1DEE1EA18(0, &qword_1ED7863D8, 0x1E695DEF0), (swift_dynamicCast() & 1) != 0))
  {

    sub_1DEE12F7C(a2, v14);
    return swift_dynamicCast();
  }

  else
  {
    sub_1DEE12F7C(a2, v15);
    v8 = *(v5 + 16);
    v9 = *(v5 + 24);
    v10 = MEMORY[0x1E69E7CC0];
    v11 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
    v14[0] = v10;
    v14[1] = v11;
    v15[4] = v8;
    v16 = v9;
    sub_1DEE1DC98();
    v13 = swift_allocObject();
    sub_1DEE1DCEC(v14, v13 + 16);
    sub_1DEF8DBC8();
    return sub_1DEE1EBB4(v14);
  }
}

uint64_t sub_1DEF5F91C(uint64_t a1)
{
  sub_1DEE12F7C((v4 + 2), v16);
  if (a1 == MEMORY[0x1E6969080] && (sub_1DEE12F7C(v16, &v13), sub_1DEE1EA18(0, &qword_1ED7863D8, 0x1E695DEF0), (swift_dynamicCast() & 1) != 0))
  {

    sub_1DEE117C0(v16, &v13);
    return swift_dynamicCast();
  }

  else
  {
    v7 = *v4;
    sub_1DEE12F7C(v16, v14);
    v8 = v4[6];
    v9 = *(v4 + 56);

    v10 = sub_1DEE1DAAC(MEMORY[0x1E69E7CC0]);
    *&v13 = v7;
    *(&v13 + 1) = v10;
    v14[4] = v8;
    v15 = v9;
    sub_1DEE1DC98();
    v12 = swift_allocObject();
    sub_1DEE1DCEC(&v13, v12 + 16);
    sub_1DEF8DBC8();
    sub_1DEE1EBB4(&v13);
    return __swift_destroy_boxed_opaque_existential_1(v16);
  }
}

uint64_t sub_1DEF5FCB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_1DEE22CCC(a1, MEMORY[0x1E69E6370], a2, a5, a6, MEMORY[0x1E69E6370], &v10, a7);
  if (!v7)
  {
    v8 = v10;
  }

  return v8 & 1;
}

double sub_1DEF5FD14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_1DEE22CCC(a1, MEMORY[0x1E69E63B0], a2, a5, a6, MEMORY[0x1E69E63B0], &v9, a7);
  if (!v7)
  {
    return v9;
  }

  return result;
}

float sub_1DEF5FD70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  sub_1DEE22CCC(a1, MEMORY[0x1E69E6448], a2, a5, a6, MEMORY[0x1E69E6448], &v9, a7);
  if (!v7)
  {
    return v9;
  }

  return result;
}

uint64_t sub_1DEF5FDCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1DEE22CCC(a1, a8, a2, a5, a6, a8, &v10, a7);
  if (!v8)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1DEF5FE20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1DEE22CCC(a1, a8, a2, a5, a6, a8, &v10, a7);
  if (!v8)
  {
    return v10;
  }

  return result;
}

uint64_t sub_1DEF5FE74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = sub_1DEE22CCC(a1, a8, a2, a5, a6, a8, &v10, a7);
  if (!v8)
  {
    return v10;
  }

  return result;
}

void sub_1DEF5FEC8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v17 = sub_1DEE1EA18(0, &qword_1ED786078, 0x1E695DEC8);
  v18 = a4 & 1;
  sub_1DEE22CCC(a1, v17, a2, a5, a6, v17, &v25, a7);
  if (!v8)
  {
    v19 = v25;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    *(inited + 56) = a6;
    *(inited + 64) = a7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 32));
    (*(*(a6 - 8) + 16))(boxed_opaque_existential_1, a1, a6);
    v25 = a2;
    v22 = v19;

    sub_1DEE2262C(inited);
    v23 = v25;
    a8[3] = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder;
    a8[4] = sub_1DEE247F0();
    v24 = swift_allocObject();
    *a8 = v24;

    *(v24 + 16) = v23;
    *(v24 + 24) = 0;
    *(v24 + 32) = v22;
    *(v24 + 40) = a3;
    *(v24 + 48) = v18;
  }
}

uint64_t sub_1DEF603C8()
{
  result = sub_1DEF8E568();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF60418()
{
  result = sub_1DEF8E578();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF604C0()
{
  result = sub_1DEF8E5A8();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF60510()
{
  result = sub_1DEF8E588();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF6067C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(a1, a2, a3);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1DEF60770()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_1DEF607A0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = a2;
  *(a3 + 16) = 0;
  *(a3 + 24) = 1;
  return result;
}

uint64_t sub_1DEF607C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1DEF8E2E8();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = a1;
  *(a2 + 24) = 0;
  return result;
}

uint64_t sub_1DEF6081C(uint64_t a1)
{
  v2 = sub_1DEE2453C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF60858(uint64_t a1)
{
  v2 = sub_1DEE2453C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF60894()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v1 >= [v2 count])
  {
    v6 = sub_1DEF8DF68();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v8 = MEMORY[0x1E69E6370];
    v9 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v11 = sub_1DEF8E2E8();
    v13 = v12;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v14 + 32) = v1;
    *(v14 + 40) = 0;
    v26[0] = v9;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    swift_willThrow();
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v26, v25);
    v4 = MEMORY[0x1E69E6370];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v26);
      v5 = v27;
      v0[1] = v1 + 1;
    }

    else
    {
      v15 = sub_1DEF8DF68();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
      *v17 = v4;
      v18 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_1DEF907F0;
      v25[0] = v1;
      v20 = sub_1DEF8E2E8();
      v22 = v21;
      *(v19 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v19 + 64) = sub_1DEE2453C();
      v23 = swift_allocObject();
      *(v19 + 32) = v23;
      *(v23 + 16) = v20;
      *(v23 + 24) = v22;
      *(v23 + 32) = v1;
      *(v23 + 40) = 0;
      v25[0] = v18;

      sub_1DEE2262C(v19);
      sub_1DEF8DF48();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v15);
      swift_willThrow();
      __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }

  return v5 & 1;
}

uint64_t sub_1DEF60C1C()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v1 >= [v2 count])
  {
    v6 = sub_1DEF8DF68();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v8 = MEMORY[0x1E69E6158];
    v9 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v11 = sub_1DEF8E2E8();
    v13 = v12;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v14 + 32) = v1;
    *(v14 + 40) = 0;
    v26[0] = v9;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    return swift_willThrow();
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v26, v25);
    v4 = MEMORY[0x1E69E6158];
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v26);
      result = v24;
      v0[1] = v1 + 1;
    }

    else
    {
      v15 = sub_1DEF8DF68();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
      *v17 = v4;
      v18 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_1DEF907F0;
      v25[0] = v1;
      v20 = sub_1DEF8E2E8();
      v22 = v21;
      *(v19 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v19 + 64) = sub_1DEE2453C();
      v23 = swift_allocObject();
      *(v19 + 32) = v23;
      *(v23 + 16) = v20;
      *(v23 + 24) = v22;
      *(v23 + 32) = v1;
      *(v23 + 40) = 0;
      v25[0] = v18;

      sub_1DEE2262C(v19);
      sub_1DEF8DF48();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v15);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }

  return result;
}

uint64_t sub_1DEF60FA0()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v1 >= [v2 count])
  {
    v6 = sub_1DEF8DF68();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v8 = MEMORY[0x1E69E63B0];
    v9 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v11 = sub_1DEF8E2E8();
    v13 = v12;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v14 + 32) = v1;
    *(v14 + 40) = 0;
    v25[0] = v9;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    return swift_willThrow();
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v25, v24);
    v4 = MEMORY[0x1E69E63B0];
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1(v25);
      v0[1] = v1 + 1;
    }

    else
    {
      v15 = sub_1DEF8DF68();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
      *v17 = v4;
      v18 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_1DEF907F0;
      v24[0] = v1;
      v20 = sub_1DEF8E2E8();
      v22 = v21;
      *(v19 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v19 + 64) = sub_1DEE2453C();
      v23 = swift_allocObject();
      *(v19 + 32) = v23;
      *(v23 + 16) = v20;
      *(v23 + 24) = v22;
      *(v23 + 32) = v1;
      *(v23 + 40) = 0;
      v24[0] = v18;

      sub_1DEE2262C(v19);
      sub_1DEF8DF48();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v15);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  return result;
}

uint64_t sub_1DEF61324()
{
  v1 = v0[1];
  v2 = v0[2];
  if (v1 >= [v2 count])
  {
    v6 = sub_1DEF8DF68();
    swift_allocError();
    v8 = v7;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v8 = MEMORY[0x1E69E6448];
    v9 = *v0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v11 = sub_1DEF8E2E8();
    v13 = v12;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v14 = swift_allocObject();
    *(inited + 32) = v14;
    *(v14 + 16) = v11;
    *(v14 + 24) = v13;
    *(v14 + 32) = v1;
    *(v14 + 40) = 0;
    v25[0] = v9;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v6 - 8) + 104))(v8, *MEMORY[0x1E69E6B08], v6);
    return swift_willThrow();
  }

  else
  {
    v3 = [v2 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v25, v24);
    v4 = MEMORY[0x1E69E6448];
    if (swift_dynamicCast())
    {
      result = __swift_destroy_boxed_opaque_existential_1(v25);
      v0[1] = v1 + 1;
    }

    else
    {
      v15 = sub_1DEF8DF68();
      swift_allocError();
      v17 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
      *v17 = v4;
      v18 = *v0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v19 = swift_initStackObject();
      *(v19 + 16) = xmmword_1DEF907F0;
      v24[0] = v1;
      v20 = sub_1DEF8E2E8();
      v22 = v21;
      *(v19 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v19 + 64) = sub_1DEE2453C();
      v23 = swift_allocObject();
      *(v19 + 32) = v23;
      *(v23 + 16) = v20;
      *(v23 + 24) = v22;
      *(v23 + 32) = v1;
      *(v23 + 40) = 0;
      v24[0] = v18;

      sub_1DEE2262C(v19);
      sub_1DEF8DF48();
      (*(*(v15 - 8) + 104))(v17, *MEMORY[0x1E69E6AF8], v15);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v25);
    }
  }

  return result;
}

uint64_t sub_1DEF616A8(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  if (v3 >= [v4 count])
  {
    v7 = sub_1DEF8DF68();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v9 = a1;
    v10 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v12 = sub_1DEF8E2E8();
    v14 = v13;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v15 + 32) = v3;
    *(v15 + 40) = 0;
    v26[0] = v10;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    return swift_willThrow();
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v26, v25);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v26);
      result = v27[0];
      v1[1] = v3 + 1;
    }

    else
    {
      v16 = sub_1DEF8DF68();
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
      *v18 = a1;
      v19 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1DEF907F0;
      v25[0] = v3;
      v21 = sub_1DEF8E2E8();
      v23 = v22;
      *(v20 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v20 + 64) = sub_1DEE2453C();
      v24 = swift_allocObject();
      *(v20 + 32) = v24;
      *(v24 + 16) = v21;
      *(v24 + 24) = v23;
      *(v24 + 32) = v3;
      *(v24 + 40) = 0;
      v25[0] = v19;

      sub_1DEE2262C(v20);
      sub_1DEF8DF48();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }

  return result;
}

uint64_t sub_1DEF61A20(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  if (v3 >= [v4 count])
  {
    v7 = sub_1DEF8DF68();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v9 = a1;
    v10 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v12 = sub_1DEF8E2E8();
    v14 = v13;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v15 + 32) = v3;
    *(v15 + 40) = 0;
    v26[0] = v10;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    return swift_willThrow();
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v26, v25);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v26);
      result = v27;
      v1[1] = v3 + 1;
    }

    else
    {
      v16 = sub_1DEF8DF68();
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
      *v18 = a1;
      v19 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1DEF907F0;
      v25[0] = v3;
      v21 = sub_1DEF8E2E8();
      v23 = v22;
      *(v20 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v20 + 64) = sub_1DEE2453C();
      v24 = swift_allocObject();
      *(v20 + 32) = v24;
      *(v24 + 16) = v21;
      *(v24 + 24) = v23;
      *(v24 + 32) = v3;
      *(v24 + 40) = 0;
      v25[0] = v19;

      sub_1DEE2262C(v20);
      sub_1DEF8DF48();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }

  return result;
}

uint64_t sub_1DEF61D98(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  if (v3 >= [v4 count])
  {
    v7 = sub_1DEF8DF68();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v9 = a1;
    v10 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v12 = sub_1DEF8E2E8();
    v14 = v13;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v15 + 32) = v3;
    *(v15 + 40) = 0;
    v26[0] = v10;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    return swift_willThrow();
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v26, v25);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v26);
      result = v27;
      v1[1] = v3 + 1;
    }

    else
    {
      v16 = sub_1DEF8DF68();
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
      *v18 = a1;
      v19 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1DEF907F0;
      v25[0] = v3;
      v21 = sub_1DEF8E2E8();
      v23 = v22;
      *(v20 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v20 + 64) = sub_1DEE2453C();
      v24 = swift_allocObject();
      *(v20 + 32) = v24;
      *(v24 + 16) = v21;
      *(v24 + 24) = v23;
      *(v24 + 32) = v3;
      *(v24 + 40) = 0;
      v25[0] = v19;

      sub_1DEE2262C(v20);
      sub_1DEF8DF48();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v26);
    }
  }

  return result;
}

uint64_t sub_1DEF62110(uint64_t a1)
{
  v3 = v1[1];
  v4 = v1[2];
  if (v3 >= [v4 count])
  {
    v7 = sub_1DEF8DF68();
    swift_allocError();
    v9 = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v9 = a1;
    v10 = *v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v12 = sub_1DEF8E2E8();
    v14 = v13;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v15 = swift_allocObject();
    *(inited + 32) = v15;
    *(v15 + 16) = v12;
    *(v15 + 24) = v14;
    *(v15 + 32) = v3;
    *(v15 + 40) = 0;
    v27[0] = v10;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v7 - 8) + 104))(v9, *MEMORY[0x1E69E6B08], v7);
    return swift_willThrow();
  }

  else
  {
    v5 = [v4 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v27, v26);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v27);
      result = v25;
      v1[1] = v3 + 1;
    }

    else
    {
      v16 = sub_1DEF8DF68();
      swift_allocError();
      v18 = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
      *v18 = a1;
      v19 = *v1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v20 = swift_initStackObject();
      *(v20 + 16) = xmmword_1DEF907F0;
      v26[0] = v3;
      v21 = sub_1DEF8E2E8();
      v23 = v22;
      *(v20 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v20 + 64) = sub_1DEE2453C();
      v24 = swift_allocObject();
      *(v20 + 32) = v24;
      *(v24 + 16) = v21;
      *(v24 + 24) = v23;
      *(v24 + 32) = v3;
      *(v24 + 40) = 0;
      v26[0] = v19;

      sub_1DEE2262C(v20);
      sub_1DEF8DF48();
      (*(*(v16 - 8) + 104))(v18, *MEMORY[0x1E69E6AF8], v16);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }

  return result;
}

uint64_t sub_1DEF62488(unint64_t *a1, void *a2)
{
  v3 = sub_1DEE1EA18(0, a1, a2);
  v4 = v2[1];
  v5 = v2[2];
  if (v4 >= [v5 count])
  {
    v8 = sub_1DEF8DF68();
    swift_allocError();
    v10 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v10 = v3;
    v11 = *v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1DEF907F0;
    v13 = sub_1DEF8E2E8();
    v15 = v14;
    *(inited + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
    *(inited + 64) = sub_1DEE2453C();
    v16 = swift_allocObject();
    *(inited + 32) = v16;
    *(v16 + 16) = v13;
    *(v16 + 24) = v15;
    *(v16 + 32) = v4;
    *(v16 + 40) = 0;
    v27[0] = v11;

    sub_1DEE2262C(inited);
    sub_1DEF8DF48();
    (*(*(v8 - 8) + 104))(v10, *MEMORY[0x1E69E6B08], v8);
    return swift_willThrow();
  }

  else
  {
    v6 = [v5 objectAtIndexedSubscript_];
    sub_1DEF8DDE8();
    swift_unknownObjectRelease();
    sub_1DEE12F7C(v27, v26);
    if (swift_dynamicCast())
    {
      __swift_destroy_boxed_opaque_existential_1(v27);
      result = v28;
      v2[1] = v4 + 1;
    }

    else
    {
      v17 = sub_1DEF8DF68();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
      *v19 = v3;
      v20 = *v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4FC0, &unk_1DEF975B0);
      v21 = swift_initStackObject();
      *(v21 + 16) = xmmword_1DEF907F0;
      v26[0] = v4;
      v22 = sub_1DEF8E2E8();
      v24 = v23;
      *(v21 + 56) = &type metadata for PropertyListTypeDecoder.UnkeyedDecoder.__AKey;
      *(v21 + 64) = sub_1DEE2453C();
      v25 = swift_allocObject();
      *(v21 + 32) = v25;
      *(v25 + 16) = v22;
      *(v25 + 24) = v24;
      *(v25 + 32) = v4;
      *(v25 + 40) = 0;
      v26[0] = v20;

      sub_1DEE2262C(v21);
      sub_1DEF8DF48();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x1E69E6AF8], v17);
      swift_willThrow();
      return __swift_destroy_boxed_opaque_existential_1(v27);
    }
  }

  return result;
}

BOOL sub_1DEF62810()
{
  v1 = sub_1DEF8DF68();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DEF62488(&qword_1ED7860B0, 0x1E695DFB0);
  if (!v0)
  {

    return v0 == 0;
  }

  v11 = v0;
  v6 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3AC0, &unk_1DEF90B00);
  if (!swift_dynamicCast())
  {
LABEL_7:

    return v0 == 0;
  }

  if ((*(v2 + 88))(v4, v1) != *MEMORY[0x1E69E6AF8])
  {
    (*(v2 + 8))(v4, v1);
    goto LABEL_7;
  }

  (*(v2 + 96))(v4, v1);
  v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0) + 48);
  v8 = sub_1DEF8DF58();
  (*(*(v8 - 8) + 8))(&v4[v7], v8);

  return v0 == 0;
}

uint64_t sub_1DEF629FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1DEF62488(&qword_1ED7860B8, 0x1E695DF20);
  if (!v3)
  {
    type metadata accessor for PropertyListTypeDecoder.KeyedDecoder(0, a2, a3, v7);

    swift_getWitnessTable();
    return sub_1DEF8E238();
  }

  return result;
}

uint64_t sub_1DEF62CEC()
{
  result = sub_1DEF8E318();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF62D3C()
{
  result = sub_1DEF8E328();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF62DE4()
{
  result = sub_1DEF8E358();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF62E34()
{
  result = sub_1DEF8E338();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF62F74()
{
  result = sub_1DEF8E368();
  if (v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1DEF62FC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  result = a3(a1, a2);
  if (v3)
  {
    return v5;
  }

  return result;
}

void sub_1DEF63034(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v8 = sub_1DEF62488(&qword_1ED786078, 0x1E695DEC8);
  if (!v4)
  {
    v9 = v8;
    v10 = *v3;
    v11 = v3[3];
    v12 = *(v3 + 32);
    a3[3] = a1;
    a3[4] = a2;
    v13 = swift_allocObject();
    *a3 = v13;
    *(v13 + 16) = v10;
    *(v13 + 24) = 0;
    *(v13 + 32) = v9;
    *(v13 + 40) = v11;
    *(v13 + 48) = v12;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1DEF631E0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 57))
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

uint64_t sub_1DEF63228(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 57) = 1;
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

    *(result + 57) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DEF63288(uint64_t a1)
{
  result = sub_1DEE1DC98();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1DEF632B0()
{
  sub_1DEE12F7C(v0 + 16, v8);
  v1 = MEMORY[0x1E69E6370];
  if (swift_dynamicCast())
  {
    v2 = v7;
  }

  else
  {
    v3 = sub_1DEF8DF68();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v5 = v1;

    sub_1DEF8DF48();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
    swift_willThrow();
  }

  return v2 & 1;
}

uint64_t sub_1DEF633CC()
{
  sub_1DEE12F7C(v0 + 16, v6);
  v1 = MEMORY[0x1E69E6448];
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    v3 = sub_1DEF8DF68();
    swift_allocError();
    v5 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v5 = v1;

    sub_1DEF8DF48();
    (*(*(v3 - 8) + 104))(v5, *MEMORY[0x1E69E6AF8], v3);
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1DEF634E4(uint64_t a1)
{
  sub_1DEE12F7C(v1 + 16, v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  v4 = sub_1DEF8DF68();
  swift_allocError();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
  *v6 = a1;

  sub_1DEF8DF48();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
  return swift_willThrow();
}

uint64_t sub_1DEF635F8(uint64_t a1)
{
  sub_1DEE12F7C(v1 + 16, v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  v4 = sub_1DEF8DF68();
  swift_allocError();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
  *v6 = a1;

  sub_1DEF8DF48();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
  return swift_willThrow();
}

uint64_t sub_1DEF6370C(uint64_t a1)
{
  sub_1DEE12F7C(v1 + 16, v8);
  if (swift_dynamicCast())
  {
    return v7;
  }

  v4 = sub_1DEF8DF68();
  swift_allocError();
  v6 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
  *v6 = a1;

  sub_1DEF8DF48();
  (*(*(v4 - 8) + 104))(v6, *MEMORY[0x1E69E6AF8], v4);
  return swift_willThrow();
}

uint64_t sub_1DEF63820(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1DEF63868(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1DEF638B0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DEF638F0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1DEF63938(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1DEF63994(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1DEF639DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DEF63A34()
{
  result = qword_1ED786098;
  if (!qword_1ED786098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED786098);
  }

  return result;
}

unint64_t sub_1DEF63A8C()
{
  result = qword_1ED7860A0;
  if (!qword_1ED7860A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED7860A0);
  }

  return result;
}

void ReplicationSchedule.retry.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  if (*(v1 + 8))
  {
    if (v3 != 1)
    {
      goto LABEL_7;
    }

    v4 = __OFADD__(v2++, 1);
    if (!v4)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v4 = __OFADD__(v2++, 1);
  if (!v4)
  {
LABEL_7:
    *a1 = v2;
    *(a1 + 8) = v3;
    return;
  }

  __break(1u);
}

uint64_t static ReplicationSchedule.< infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 < v2;
  }

  v6 = v5;
  v7 = v3 < v2;
  if (v4 != 1)
  {
    v7 = 0;
  }

  if (!*(a2 + 8))
  {
    v7 = 1;
  }

  if (*(a1 + 8) != 1)
  {
    v7 = v4 < 2;
  }

  if (*(a1 + 8))
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t ReplicationSchedule.description.getter()
{
  if (!*(v0 + 8))
  {
    v1 = 0x74616964656D6D69;
    goto LABEL_5;
  }

  if (*(v0 + 8) == 1)
  {
    sub_1DEF8DF28();

    v1 = 0x6E7574726F70706FLL;
LABEL_5:
    v4 = v1;
    v2 = sub_1DEF8E2E8();
    MEMORY[0x1E12CB180](v2);

    MEMORY[0x1E12CB180](41, 0xE100000000000000);
    return v4;
  }

  return 0x646579616C6564;
}

BOOL static ReplicationSchedule.== infix(_:_:)(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (!*(a1 + 8))
  {
    if (*(a2 + 8))
    {
      return 0;
    }

    return *a1 == v2;
  }

  if (*(a1 + 8) == 1)
  {
    if (v3 != 1)
    {
      return 0;
    }

    return *a1 == v2;
  }

  return v3 == 2 && v2 == 0;
}

unint64_t sub_1DEF63CE8()
{
  result = qword_1ECDE5270;
  if (!qword_1ECDE5270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5270);
  }

  return result;
}

uint64_t sub_1DEF63D3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 < v2;
  }

  v6 = v5;
  v7 = v3 < v2;
  if (v4 != 1)
  {
    v7 = 0;
  }

  if (!*(a2 + 8))
  {
    v7 = 1;
  }

  if (*(a1 + 8) != 1)
  {
    v7 = v4 < 2;
  }

  if (*(a1 + 8))
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

BOOL sub_1DEF63D90(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*(a1 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 < v4;
  }

  v6 = v5;
  v7 = v2 < v4;
  if (v3 != 1)
  {
    v7 = 0;
  }

  if (!*(a1 + 8))
  {
    v7 = 1;
  }

  v8 = v3 < 2;
  if (*(a2 + 8) != 1)
  {
    v7 = v8;
  }

  if (!*(a2 + 8))
  {
    v7 = v6;
  }

  return !v7;
}

BOOL sub_1DEF63DE8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v3 < v2;
  }

  v6 = v5;
  v7 = v3 < v2;
  if (v4 != 1)
  {
    v7 = 0;
  }

  if (!*(a2 + 8))
  {
    v7 = 1;
  }

  if (*(a1 + 8) != 1)
  {
    v7 = v4 < 2;
  }

  if (!*(a1 + 8))
  {
    v7 = v6;
  }

  return !v7;
}

uint64_t sub_1DEF63E40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  if (*(a1 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 < v4;
  }

  v6 = v5;
  v7 = v2 < v4;
  if (v3 != 1)
  {
    v7 = 0;
  }

  if (!*(a1 + 8))
  {
    v7 = 1;
  }

  v8 = v3 < 2;
  if (*(a2 + 8) != 1)
  {
    v7 = v8;
  }

  if (*(a2 + 8))
  {
    return v7;
  }

  else
  {
    return v6;
  }
}

uint64_t sub_1DEF63E98(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 8);
  if (*(a2 + 8))
  {
    v5 = 0;
  }

  else
  {
    v5 = v2 == v3;
  }

  v6 = v5;
  v8 = v4 == 1 && v2 == v3;
  v10 = v4 == 2 && v3 == 0;
  if (*(a1 + 8) != 1)
  {
    v8 = v10;
  }

  if (*(a1 + 8))
  {
    return v8;
  }

  else
  {
    return v6;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ReplicationSchedule(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for ReplicationSchedule(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1DEF63F80(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1DEF63F98(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_1DEF63FF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Record.Value(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t PrioritizedRecordValue.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for PrioritizedRecordValue(0);
  *a1 = *(v2 + *(result + 20));
  return result;
}

uint64_t type metadata accessor for PrioritizedRecordValue(uint64_t a1)
{
  result = qword_1ECDE5278;
  if (!qword_1ECDE5278)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t PrioritizedRecordValue.init(value:priority:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *a2;
  sub_1DEF64114(a1, a3);
  result = type metadata accessor for PrioritizedRecordValue(0);
  *(a3 + *(result + 20)) = v4;
  return result;
}

uint64_t sub_1DEF64114(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Record.Value(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1DEF641A0(uint64_t a1)
{
  result = type metadata accessor for Record.Value(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16ReplicatorEngine22RecordValidationResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_1DEF6422C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFC && *(a1 + 8))
  {
    return (*a1 + 2147483644);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 3;
  if (v4 >= 5)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1DEF64280(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483644;
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFC)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t sub_1DEF6438C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v64 = a3;
  v63 = a2;
  v61 = sub_1DEF8D3F8();
  v76 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1DEF8D698();
  v69 = *(v6 - 8);
  v70 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v67 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = sub_1DEF8D6D8();
  v66 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PairingRelationship(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v75 = &v59 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v72 = &v59 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v59 - v15;
  v17 = v3[6];
  v18 = v3[7];
  v62 = v3;
  __swift_project_boxed_opaque_existential_1(v3 + 3, v17);
  v19 = (*(v18 + 8))(v17, v18);
  v20 = sub_1DEEA3AD8(v19);

  v21 = *(a1 + 16);
  v59 = v10;
  if (v21)
  {
    v22 = v21;
    v23 = 0;
    v24 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v77 = *(v10 + 72);
    v71 = v24;
    v74 = a1 + v24;
    v25 = v20 + 56;
    v73 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1DEEE42FC(v74 + v77 * v23, v16);
      if (*(v20 + 16) && (v26 = &v16[*(v9 + 20)], v28 = *v26, v27 = *(v26 + 1), sub_1DEF8E7A8(), sub_1DEF8D9B8(), v29 = sub_1DEF8E7F8(), v30 = -1 << *(v20 + 32), v31 = v29 & ~v30, ((*(v25 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) != 0))
      {
        v32 = ~v30;
        while (1)
        {
          v33 = (*(v20 + 48) + 16 * v31);
          v34 = *v33 == v28 && v33[1] == v27;
          if (v34 || (sub_1DEF8E4E8() & 1) != 0)
          {
            break;
          }

          v31 = (v31 + 1) & v32;
          if (((*(v25 + ((v31 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v31) & 1) == 0)
          {
            goto LABEL_3;
          }
        }

        sub_1DEF0A360(v16, v72);
        v35 = v73;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v79 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1DEEC7DA4(0, *(v35 + 16) + 1, 1);
          v35 = v79;
        }

        v38 = *(v35 + 16);
        v37 = *(v35 + 24);
        if (v38 >= v37 >> 1)
        {
          sub_1DEEC7DA4((v37 > 1), v38 + 1, 1);
          v35 = v79;
        }

        *(v35 + 16) = v38 + 1;
        v73 = v35;
        sub_1DEF0A360(v72, v35 + v71 + v38 * v77);
      }

      else
      {
LABEL_3:
        sub_1DEEE4360(v16);
      }

      ++v23;
    }

    while (v23 != v22);
  }

  else
  {
    v73 = MEMORY[0x1E69E7CC0];
  }

  v39 = v73;
  v40 = *(v73 + 16);
  v41 = MEMORY[0x1E69E7CC0];
  if (v40)
  {
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1DEEC7D60(0, v40, 0);
    v42 = aBlock[0];
    v43 = v39 + ((*(v59 + 80) + 32) & ~*(v59 + 80));
    v44 = *(v59 + 72);
    v45 = (v76 + 16);
    v46 = v61;
    v47 = v60;
    do
    {
      v48 = v75;
      sub_1DEEE42FC(v43, v75);
      (*v45)(v47, v48, v46);
      sub_1DEEE4360(v48);
      aBlock[0] = v42;
      v50 = *(v42 + 16);
      v49 = *(v42 + 24);
      if (v50 >= v49 >> 1)
      {
        sub_1DEEC7D60((v49 > 1), v50 + 1, 1);
        v42 = aBlock[0];
      }

      *(v42 + 16) = v50 + 1;
      (*(v76 + 32))(v42 + ((*(v76 + 80) + 32) & ~*(v76 + 80)) + *(v76 + 72) * v50, v47, v46);
      v43 += v44;
      --v40;
    }

    while (v40);
    v41 = MEMORY[0x1E69E7CC0];
  }

  else
  {
    v42 = MEMORY[0x1E69E7CC0];
  }

  v51 = swift_allocObject();
  v52 = v63;
  v51[2] = v42;
  v51[3] = v52;
  v53 = v73;
  v51[4] = v64;
  v51[5] = v53;
  aBlock[4] = sub_1DEF65118;
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1DEE3F0C0;
  aBlock[3] = &block_descriptor_21;
  v54 = _Block_copy(aBlock);

  v55 = v65;
  sub_1DEF8D6B8();
  v79 = v41;
  sub_1DEE1BA40(&qword_1ECDE2CF0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4210, &unk_1DEF90800);
  sub_1DEE1B590(&qword_1ECDE2C50, &unk_1ECDE4210, &unk_1DEF90800);
  v56 = v67;
  v57 = v70;
  sub_1DEF8DE08();
  MEMORY[0x1E12CB4D0](0, v55, v56, v54);
  _Block_release(v54);
  (*(v69 + 8))(v56, v57);
  (*(v66 + 8))(v55, v68);
}

uint64_t sub_1DEF64B0C(uint64_t a1, uint64_t (*a2)(uint64_t, void), uint64_t a3, uint64_t a4)
{
  if (qword_1ECDE2E48 != -1)
  {
    swift_once();
  }

  v7 = sub_1DEF8D508();
  __swift_project_value_buffer(v7, qword_1ECDF5FF8);

  v8 = sub_1DEF8D4D8();
  v9 = sub_1DEF8DCB8();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136446210;
    v12 = sub_1DEF8D3F8();
    v13 = MEMORY[0x1E12CB290](a1, v12);
    v15 = sub_1DEE12A5C(v13, v14, &v17);

    *(v10 + 4) = v15;
    _os_log_impl(&dword_1DEE0F000, v8, v9, "Fetched known relationships from sync service: %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    MEMORY[0x1E12CCD70](v11, -1, -1);
    MEMORY[0x1E12CCD70](v10, -1, -1);
  }

  return a2(a4, 0);
}

uint64_t sub_1DEF64C9C()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t sub_1DEF64D24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v16 - v11;
  (*(v6 + 32))(&v16 - v11, v10);
  type metadata accessor for SyncServiceKnownPairingRelationshipFilter();
  v13 = swift_allocObject();
  (*(v6 + 16))(v8, v12, a3);
  v14 = sub_1DEF64E6C(v8, v13, a3, a4);
  (*(v6 + 8))(v12, a3);
  return v14;
}

uint64_t sub_1DEF64E6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a2;
  v17 = sub_1DEF8DD08();
  v7 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v9 = v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1DEF8DCD8();
  MEMORY[0x1EEE9AC00](v10);
  v11 = sub_1DEF8D6D8();
  MEMORY[0x1EEE9AC00](v11 - 8);
  v21 = a3;
  v22 = a4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v20);
  (*(*(a3 - 8) + 32))(boxed_opaque_existential_1, a1, a3);
  v16[1] = sub_1DEE3C630();
  sub_1DEF8D6C8();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1DEE1BA40(&qword_1ECDE2C10, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEE1B590(&qword_1ECDE2C30, &unk_1ECDE4FF0, &unk_1DEF904D0);
  sub_1DEF8DE08();
  (*(v7 + 104))(v9, *MEMORY[0x1E69E8090], v17);
  v13 = sub_1DEF8DD38();
  v14 = v18;
  *(v18 + 16) = v13;
  sub_1DEE2F1AC(&v20, v14 + 24);
  return v14;
}

void sub_1DEF65124(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4088, &qword_1DEF91BC0);
    v2 = sub_1DEF8E148();
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

  v8 = 0;
  while (v5)
  {
LABEL_15:
    v12 = __clz(__rbit64(v5)) | (v8 << 6);
    v13 = (*(a1 + 48) + 16 * v12);
    v15 = *v13;
    v14 = v13[1];
    sub_1DEE12F7C(*(a1 + 56) + 32 * v12, v35);
    *&v34 = v15;
    *(&v34 + 1) = v14;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_1DEE117C0(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1DEE117C0(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1DEE117C0(v31, v32);
    v16 = sub_1DEF8DEA8();
    v17 = -1 << *(v2 + 32);
    v18 = v16 & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v7 + 8 * (v18 >> 6))) == 0)
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
        v23 = *(v7 + 8 * v19);
        if (v23 != -1)
        {
          v9 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v9 = __clz(__rbit64((-1 << v18) & ~*(v7 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
    v10 = *(v2 + 48) + 40 * v9;
    *v10 = v24;
    *(v10 + 16) = v25;
    *(v10 + 32) = v26;
    sub_1DEE117C0(v32, (*(v2 + 56) + 32 * v9));
    ++*(v2 + 16);
  }

  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      v8 = v11;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

void sub_1DEF653EC(unint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x1E69E7CC8];
    goto LABEL_6;
  }

  if (!sub_1DEF8DE68())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5290, &unk_1DEF978E8);
  v3 = sub_1DEF8E148();
LABEL_6:
  if (type metadata accessor for Zone.ID() != MEMORY[0x1E69E6158])
  {
    if (v2)
    {
      v4 = sub_1DEF8E038();
      v5 = 0;
      v6 = 0;
      v7 = 0;
      v8 = v4 | 0x8000000000000000;
    }

    else
    {
      v14 = -1 << *(a1 + 32);
      v6 = ~v14;
      v5 = a1 + 64;
      v15 = -v14;
      if (v15 < 64)
      {
        v16 = ~(-1 << v15);
      }

      else
      {
        v16 = -1;
      }

      v7 = v16 & *(a1 + 64);
      v8 = a1;
    }

    v17 = (v6 + 64) >> 6;
    v18 = v3 + 64;

    v19 = 0;
    for (i = v8; ; v8 = i)
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        v29 = sub_1DEF8E0D8();
        if (!v29)
        {
          v38 = v8;
          goto LABEL_62;
        }

        v63 = v29;
        swift_dynamicCast();
        type metadata accessor for Replicator.WeakSource();
        swift_dynamicCast();
        v27 = v62;
        v28 = v63;
        v23 = v19;
        v25 = v7;
        if (!v62)
        {
LABEL_38:
          v38 = i;
          goto LABEL_62;
        }
      }

      else
      {
        v22 = v7;
        v23 = v19;
        if (!v7)
        {
          v24 = v19;
          while (1)
          {
            v23 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v23 >= v17)
            {
              goto LABEL_38;
            }

            v22 = *(v5 + 8 * v23);
            ++v24;
            if (v22)
            {
              v8 = i;
              goto LABEL_25;
            }
          }

LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
          goto LABEL_68;
        }

LABEL_25:
        v25 = (v22 - 1) & v22;
        v26 = (v23 << 9) | (8 * __clz(__rbit64(v22)));
        v27 = *(*(v8 + 48) + v26);
        v28 = *(*(v8 + 56) + v26);

        if (!v27)
        {
          goto LABEL_38;
        }
      }

      v7 = v25;
      sub_1DEF8E7A8();
      sub_1DEF8D9B8();
      sub_1DEF8D9B8();
      v30 = sub_1DEF8E7F8();
      v31 = -1 << *(v3 + 32);
      v32 = v30 & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) != 0)
      {
        v20 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        do
        {
          if (++v33 == v35 && (v34 & 1) != 0)
          {
            __break(1u);
            goto LABEL_65;
          }

          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
        }

        while (v37 == -1);
        v20 = __clz(__rbit64(~v37)) + (v33 << 6);
      }

      *(v18 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      *(*(v3 + 48) + 8 * v20) = v27;
      v21 = (*(v3 + 56) + 16 * v20);
      *v21 = v28;
      v21[1] = &off_1F5A1AE70;
      ++*(v3 + 16);
      v19 = v23;
    }
  }

  if (v2)
  {
    v9 = sub_1DEF8E038();
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = v9 | 0x8000000000000000;
  }

  else
  {
    v39 = -1 << *(a1 + 32);
    v11 = ~v39;
    v10 = a1 + 64;
    v40 = -v39;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    else
    {
      v41 = -1;
    }

    v12 = v41 & *(a1 + 64);
    v13 = a1;
  }

  v42 = (v11 + 64) >> 6;

  v43 = 0;
  for (j = v13; ; v13 = j)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      v53 = sub_1DEF8E0D8();
      if (!v53)
      {
        v38 = v13;
        goto LABEL_62;
      }

      v64 = v53;
      swift_dynamicCast();
      type metadata accessor for Replicator.WeakSource();
      swift_dynamicCast();
      v51 = v62;
      v52 = v64;
      v47 = v43;
      v49 = v12;
      if (!v62)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v46 = v12;
      v47 = v43;
      if (!v12)
      {
        v48 = v43;
        while (1)
        {
          v47 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            goto LABEL_66;
          }

          if (v47 >= v42)
          {
            break;
          }

          v46 = *(v10 + 8 * v47);
          ++v48;
          if (v46)
          {
            v13 = j;
            goto LABEL_53;
          }
        }

LABEL_61:
        v38 = j;
LABEL_62:
        sub_1DEEACDB8(v38);

        return;
      }

LABEL_53:
      v49 = (v46 - 1) & v46;
      v50 = (v47 << 9) | (8 * __clz(__rbit64(v46)));
      v51 = *(*(v13 + 48) + v50);
      v52 = *(*(v13 + 56) + v50);

      if (!v51)
      {
        goto LABEL_61;
      }
    }

    v54 = sub_1DEEAF20C(v51);
    if (v55)
    {
      *(*(v3 + 48) + 8 * v54) = v51;
      v44 = v54;

      v45 = (*(v3 + 56) + 16 * v44);
      *v45 = v52;
      v45[1] = &off_1F5A1AE70;
      swift_unknownObjectRelease();
      goto LABEL_45;
    }

    if (*(v3 + 16) >= *(v3 + 24))
    {
      goto LABEL_67;
    }

    *(v3 + 64 + ((v54 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v54;
    *(*(v3 + 48) + 8 * v54) = v51;
    v56 = (*(v3 + 56) + 16 * v54);
    *v56 = v52;
    v56[1] = &off_1F5A1AE70;
    v57 = *(v3 + 16);
    v58 = __OFADD__(v57, 1);
    v59 = v57 + 1;
    if (v58)
    {
      break;
    }

    *(v3 + 16) = v59;
LABEL_45:
    v43 = v47;
    v12 = v49;
  }

LABEL_68:
  __break(1u);
}

void sub_1DEF65994(uint64_t a1)
{
  if (a1)
  {
    v27 = sub_1DEF8D948();
    sub_1DEF8DEC8();
    if (*(a1 + 16) && (v2 = sub_1DEEAF640(v30), (v3 & 1) != 0))
    {
      sub_1DEE12F7C(*(a1 + 56) + 32 * v2, v31);
      sub_1DEEBC62C(v30);
      sub_1DEF66798();
      if (swift_dynamicCast())
      {
        v4 = v27;
        if ([v27 BOOLValue])
        {
          if (qword_1ECDE3808 != -1)
          {
            swift_once();
          }

          v5 = sub_1DEF8D508();
          __swift_project_value_buffer(v5, qword_1ECDF60E8);
          v6 = sub_1DEF8D4D8();
          v7 = sub_1DEF8DC78();
          if (!os_log_type_enabled(v6, v7))
          {
            goto LABEL_36;
          }

          v8 = swift_slowAlloc();
          *v8 = 0;
          v9 = "Captured bug report successfully";
        }

        else
        {
          v28 = sub_1DEF8D948();
          v29 = v16;
          sub_1DEF8DEC8();
          if (*(a1 + 16) && (v17 = sub_1DEEAF640(v30), (v18 & 1) != 0))
          {
            sub_1DEE12F7C(*(a1 + 56) + 32 * v17, v31);
            sub_1DEEBC62C(v30);
            if (swift_dynamicCast())
            {
              if (qword_1ECDE3808 != -1)
              {
                swift_once();
              }

              v19 = sub_1DEF8D508();
              __swift_project_value_buffer(v19, qword_1ECDF60E8);

              v6 = sub_1DEF8D4D8();
              v20 = sub_1DEF8DC78();

              if (!os_log_type_enabled(v6, v20))
              {

                goto LABEL_36;
              }

              v21 = swift_slowAlloc();
              v22 = swift_slowAlloc();
              v30[0] = v22;
              *v21 = 136315138;
              v23 = sub_1DEE12A5C(v28, v29, v30);

              *(v21 + 4) = v23;
              _os_log_impl(&dword_1DEE0F000, v6, v20, "Failed to capture bug for reason: %s", v21, 0xCu);
              __swift_destroy_boxed_opaque_existential_1(v22);
              MEMORY[0x1E12CCD70](v22, -1, -1);
              v24 = v21;
LABEL_35:
              MEMORY[0x1E12CCD70](v24, -1, -1);
LABEL_36:

LABEL_37:
              return;
            }
          }

          else
          {
            sub_1DEEBC62C(v30);
          }

          if (qword_1ECDE3808 != -1)
          {
            swift_once();
          }

          v25 = sub_1DEF8D508();
          __swift_project_value_buffer(v25, qword_1ECDF60E8);
          v6 = sub_1DEF8D4D8();
          v7 = sub_1DEF8DC78();
          if (!os_log_type_enabled(v6, v7))
          {
            goto LABEL_36;
          }

          v8 = swift_slowAlloc();
          *v8 = 0;
          v9 = "Failed to capture bug for unknown reason";
        }

        _os_log_impl(&dword_1DEE0F000, v6, v7, v9, v8, 2u);
        v24 = v8;
        goto LABEL_35;
      }
    }

    else
    {
      sub_1DEEBC62C(v30);
    }

    if (qword_1ECDE3808 != -1)
    {
      swift_once();
    }

    v10 = sub_1DEF8D508();
    __swift_project_value_buffer(v10, qword_1ECDF60E8);
    v4 = sub_1DEF8D4D8();
    v11 = sub_1DEF8DC98();
    if (os_log_type_enabled(v4, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_1DEE0F000, v4, v11, "Received malformed response", v12, 2u);
      MEMORY[0x1E12CCD70](v12, -1, -1);
    }

    goto LABEL_37;
  }

  if (qword_1ECDE3808 != -1)
  {
    swift_once();
  }

  v13 = sub_1DEF8D508();
  __swift_project_value_buffer(v13, qword_1ECDF60E8);
  oslog = sub_1DEF8D4D8();
  v14 = sub_1DEF8DC98();
  if (os_log_type_enabled(oslog, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&dword_1DEE0F000, oslog, v14, "Failed to receive response", v15, 2u);
    MEMORY[0x1E12CCD70](v15, -1, -1);
  }
}

uint64_t sub_1DEF65EFC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  if (a2)
  {
    v3 = sub_1DEF8D848();
  }

  else
  {
    v3 = 0;
  }

  v2(v3);
}

uint64_t sub_1DEF65FB0()
{
  v0 = [objc_opt_self() processInfo];
  v1 = [v0 environment];

  v2 = sub_1DEF8D848();
  if (*(v2 + 16))
  {
    sub_1DEE13224(0xD000000000000010, 0x80000001DEF9E2E0);
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

void sub_1DEF66074(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v61 = a6;
  v15 = sub_1DEF8D378();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v50 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((sub_1DEF65FB0() & 1) == 0)
  {
    v59 = a5;
    v57 = a7;
    v58 = a8;
    v19 = [objc_allocWithZone(MEMORY[0x1E696AE30]) init];
    v62 = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
    v20 = sub_1DEF8D918();
    v55 = a1;
    v54 = a2;
    v21 = sub_1DEF8D918();
    v53 = a3;
    v56 = a4;
    v22 = sub_1DEF8D918();
    v60 = v19;
    v23 = [v19 processName];
    if (!v23)
    {
      sub_1DEF8D948();
      v23 = sub_1DEF8D918();
    }

    v24 = [v62 signatureWithDomain:v20 type:v21 subType:v22 detectedProcess:v23 triggerThresholdValues:0];

    v25 = v61;
    if (v24)
    {
      v52 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DB8, &qword_1DEF978E0);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1DEF90FD0;
      *(inited + 32) = sub_1DEF8D948();
      *(inited + 40) = v27;
      sub_1DEF8D368();
      sub_1DEF8D328();
      v29 = v28;
      (*(v16 + 8))(v18, v15);
      v30 = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
      *(inited + 72) = sub_1DEF66798();
      *(inited + 48) = v30;
      *(inited + 80) = sub_1DEF8D948();
      *(inited + 88) = v31;
      v32 = MEMORY[0x1E69E6158];
      *(inited + 120) = MEMORY[0x1E69E6158];
      *(inited + 96) = v59;
      *(inited + 104) = v25;
      *(inited + 128) = sub_1DEF8D948();
      *(inited + 136) = v33;
      *(inited + 168) = v32;
      v34 = v57;
      v35 = v58;
      *(inited + 144) = v57;
      *(inited + 152) = v35;

      v51 = sub_1DEEA31A8(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3DC8, &unk_1DEF9AFF0);
      swift_arrayDestroy();
      if (qword_1ECDE3808 != -1)
      {
        swift_once();
      }

      v36 = sub_1DEF8D508();
      __swift_project_value_buffer(v36, qword_1ECDF60E8);

      v37 = v54;

      v38 = v56;

      v39 = sub_1DEF8D4D8();
      v40 = sub_1DEF8DCB8();

      v41 = os_log_type_enabled(v39, v40);
      v42 = v55;
      if (v41)
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock[0] = v44;
        *v43 = 136315906;
        *(v43 + 4) = sub_1DEE12A5C(v42, v37, aBlock);
        *(v43 + 12) = 2080;
        *(v43 + 14) = sub_1DEE12A5C(v53, v38, aBlock);
        *(v43 + 22) = 2080;
        *(v43 + 24) = sub_1DEE12A5C(v59, v25, aBlock);
        *(v43 + 32) = 2080;
        *(v43 + 34) = sub_1DEE12A5C(v34, v35, aBlock);
        _os_log_impl(&dword_1DEE0F000, v39, v40, "Capturing bug report with type %s; subtype: %s; name: %s; value: %s", v43, 0x2Au);
        swift_arrayDestroy();
        MEMORY[0x1E12CCD70](v44, -1, -1);
        MEMORY[0x1E12CCD70](v43, -1, -1);
      }

      aBlock[0] = 0;
      v46 = v52;
      sub_1DEF8D838();
      if (aBlock[0])
      {

        v47 = sub_1DEF8D828();

        sub_1DEF65124(v51);

        v48 = sub_1DEF8D828();

        aBlock[4] = sub_1DEF65994;
        aBlock[5] = 0;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1DEF65EFC;
        aBlock[3] = &block_descriptor_22;
        v49 = _Block_copy(aBlock);
        [v62 snapshotWithSignature:v47 duration:v48 event:0 payload:v49 reply:120.0];

        _Block_release(v49);
      }

      else
      {
        __break(1u);
      }
    }

    else
    {

      v45 = v62;
    }
  }
}

unint64_t sub_1DEF66798()
{
  result = qword_1ECDE5288;
  if (!qword_1ECDE5288)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECDE5288);
  }

  return result;
}

uint64_t PairingRelationshipProviding.pairingRelationship(relationshipID:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v17 - v9;
  v11 = sub_1DEF8D3F8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1DEF8D388();
  if ((*(v12 + 48))(v10, 1, v11) == 1)
  {
    sub_1DEF32324(v10);
    v15 = type metadata accessor for PairingRelationship(0);
    return (*(*(v15 - 8) + 56))(a5, 1, 1, v15);
  }

  else
  {
    (*(v12 + 32))(v14, v10, v11);
    (*(a4 + 32))(v14, a3, a4);
    return (*(v12 + 8))(v14, v11);
  }
}

unint64_t sub_1DEF66A00()
{
  result = qword_1ECDE5298;
  if (!qword_1ECDE5298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5298);
  }

  return result;
}

unint64_t sub_1DEF66A58()
{
  result = qword_1ECDE52A0;
  if (!qword_1ECDE52A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52A0);
  }

  return result;
}

unint64_t sub_1DEF66AB0()
{
  result = qword_1ECDE52A8;
  if (!qword_1ECDE52A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52A8);
  }

  return result;
}

unint64_t sub_1DEF66B08()
{
  result = qword_1ECDE52B0;
  if (!qword_1ECDE52B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52B0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RecordMetadata.Options(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for RecordMetadata.Options(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 8) = v3;
  return result;
}

uint64_t dispatch thunk of Replicating.metadata(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 96))(a1, a2);
}

{
  return (*(a3 + 112))(a1, a2);
}

uint64_t sub_1DEF66F44(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55F8, &qword_1DEF989A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6EA6C();
  sub_1DEF8E858();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55E8, &qword_1DEF989A0);
  sub_1DEF6EBAC();
  sub_1DEF8E298();
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1DEF670A0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55A0, &qword_1DEF98980);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E874();
  sub_1DEF8E858();
  LOBYTE(v15) = 0;
  sub_1DEF8D3F8();
  sub_1DEF6D188(&qword_1ECDE3640, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1DEF8E298();
  if (!v2)
  {
    v9 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
    v10 = (v3 + *(v9 + 20));
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v14 = 1;
    sub_1DEE4F8C0(v15, v11);
    sub_1DEF6E91C();
    sub_1DEF8E298();
    sub_1DEE4F8D4(v15, v16);
    LOBYTE(v15) = 2;
    type metadata accessor for DeviceDescriptor(0);
    sub_1DEF6D188(&qword_1ECDE4968, type metadata accessor for DeviceDescriptor, &protocol conformance descriptor for DeviceDescriptor);
    sub_1DEF8E298();
    v15 = *(v3 + *(v9 + 28));
    v14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E8, &qword_1DEF92F08);
    sub_1DEEE0978();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DEF67350(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55C8, &qword_1DEF98990);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E970();
  sub_1DEF8E858();
  LOBYTE(v15) = 0;
  sub_1DEF8D3F8();
  sub_1DEF6D188(&qword_1ECDE3640, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1DEF8E298();
  if (!v2)
  {
    v9 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
    v10 = (v3 + v9[5]);
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v14 = 1;
    sub_1DEE4F8C0(v15, v11);
    sub_1DEF6E91C();
    sub_1DEF8E298();
    sub_1DEE4F8D4(v15, v16);
    LOBYTE(v15) = 2;
    type metadata accessor for DeviceDescriptor(0);
    sub_1DEF6D188(&qword_1ECDE4968, type metadata accessor for DeviceDescriptor, &protocol conformance descriptor for DeviceDescriptor);
    sub_1DEF8E298();
    v15 = *(v3 + v9[7]);
    v14 = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E8, &qword_1DEF92F08);
    sub_1DEEE0978();
    sub_1DEF8E298();
    v15 = *(v3 + v9[8]);
    v14 = 4;
    sub_1DEF6EA18();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DEF67644@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v19 = type metadata accessor for DeviceDescriptor(0);
  MEMORY[0x1EEE9AC00](v19);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1DEF8D3F8();
  v20 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55B0, &qword_1DEF98988);
  v22 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E970();
  v23 = v8;
  v12 = v25;
  sub_1DEF8E848();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v25 = v4;
  v13 = v20;
  LOBYTE(v26) = 0;
  sub_1DEF6D188(&qword_1ECDE3630, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v14 = v21;
  sub_1DEF8E1F8();
  (*(v13 + 32))(v11, v14, v5);
  v27 = 1;
  sub_1DEF6E8C8();
  sub_1DEF8E1F8();
  *&v11[v9[5]] = v26;
  LOBYTE(v26) = 2;
  sub_1DEF6D188(&qword_1ECDE4920, type metadata accessor for DeviceDescriptor, &protocol conformance descriptor for DeviceDescriptor);
  v15 = v25;
  v21 = 0;
  sub_1DEF8E1F8();
  v16 = v22;
  sub_1DEF6E54C(v15, &v11[v9[6]], type metadata accessor for DeviceDescriptor);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE46E8, &qword_1DEF92F08);
  v27 = 3;
  sub_1DEE2524C();
  sub_1DEF8E1F8();
  *&v11[v9[7]] = v26;
  v27 = 4;
  sub_1DEF6E9C4();
  sub_1DEF8E1F8();
  (*(v16 + 8))(v23, v24);
  *&v11[v9[8]] = v26;
  sub_1DEF6E6BC(v11, v18, type metadata accessor for ReplicatorMessage.Handshake.Response);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DEF6E5B4(v11, type metadata accessor for ReplicatorMessage.Handshake.Response);
}

uint64_t sub_1DEF67C04(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5620, &qword_1DEF989C0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6EC98();
  sub_1DEF8E858();
  LOBYTE(v15) = 0;
  sub_1DEF8D3F8();
  sub_1DEF6D188(&qword_1ECDE3640, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1DEF8E298();
  if (!v2)
  {
    v9 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
    v10 = (v3 + v9[5]);
    v11 = v10[1];
    v15 = *v10;
    v16 = v11;
    v14 = 1;
    sub_1DEE4F8C0(v15, v11);
    sub_1DEF6E91C();
    sub_1DEF8E298();
    sub_1DEE4F8D4(v15, v16);
    v15 = *(v3 + v9[6]);
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
    sub_1DEF6ECEC(&qword_1ECDE5628, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1DEF8E298();
    v15 = *(v3 + v9[7]);
    v14 = 3;
    sub_1DEF6EA18();
    sub_1DEF8E298();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DEF67EA8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = sub_1DEF8D3F8();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5608, &unk_1DEF989B0);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6EC98();
  v20 = v8;
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v16;
  LOBYTE(v21) = 0;
  sub_1DEF6D188(&qword_1ECDE3630, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v13 = v17;
  sub_1DEF8E1F8();
  (*(v12 + 32))(v11, v13, v4);
  v22 = 1;
  sub_1DEF6E8C8();
  sub_1DEF8E1F8();
  *&v11[v9[5]] = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C90, &unk_1DEF91590);
  v22 = 2;
  sub_1DEF6ECEC(&qword_1ECDE5618, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1DEF8E1F8();
  *&v11[v9[6]] = v21;
  v22 = 3;
  sub_1DEF6E9C4();
  sub_1DEF8E1F8();
  (*(v18 + 8))(v20, v19);
  *&v11[v9[7]] = v21;
  sub_1DEF6E6BC(v11, v15, type metadata accessor for ReplicatorMessage.Handshake.Complete);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DEF6E5B4(v11, type metadata accessor for ReplicatorMessage.Handshake.Complete);
}

uint64_t sub_1DEF68360(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5550, &qword_1DEF98950);
  v42 = *(v2 - 8);
  v43 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v41 = &v31 - v3;
  v39 = type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
  MEMORY[0x1EEE9AC00](v39);
  v40 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5558, &qword_1DEF98958);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v31 - v6;
  v34 = type metadata accessor for ReplicatorMessage.Handshake.Response(0);
  MEMORY[0x1EEE9AC00](v34);
  v35 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5560, &qword_1DEF98960);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v31 = type metadata accessor for ReplicatorMessage.Handshake.Request(0);
  MEMORY[0x1EEE9AC00](v31);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ReplicatorMessage.Handshake(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5568, &qword_1DEF98968);
  v16 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v18 = &v31 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E724();
  sub_1DEF8E858();
  sub_1DEF6E6BC(v44, v15, type metadata accessor for ReplicatorMessage.Handshake);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = (v16 + 8);
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v21 = v35;
      sub_1DEF6E54C(v15, v35, type metadata accessor for ReplicatorMessage.Handshake.Response);
      v47 = 1;
      sub_1DEF6E7CC();
      v22 = v36;
      v23 = v45;
      sub_1DEF8E248();
      sub_1DEF6D188(&qword_1ECDE5578, type metadata accessor for ReplicatorMessage.Handshake.Response, &unk_1DEF9820C);
      v24 = v38;
      sub_1DEF8E298();
      (*(v37 + 8))(v22, v24);
      v25 = type metadata accessor for ReplicatorMessage.Handshake.Response;
    }

    else
    {
      v21 = v40;
      sub_1DEF6E54C(v15, v40, type metadata accessor for ReplicatorMessage.Handshake.Complete);
      v48 = 2;
      sub_1DEF6E778();
      v29 = v41;
      v23 = v45;
      sub_1DEF8E248();
      sub_1DEF6D188(&qword_1ECDE5570, type metadata accessor for ReplicatorMessage.Handshake.Complete, &unk_1DEF9816C);
      v30 = v43;
      sub_1DEF8E298();
      (*(v42 + 8))(v29, v30);
      v25 = type metadata accessor for ReplicatorMessage.Handshake.Complete;
    }

    sub_1DEF6E5B4(v21, v25);
    return (*v20)(v18, v23);
  }

  else
  {
    sub_1DEF6E54C(v15, v12, type metadata accessor for ReplicatorMessage.Handshake.Request);
    v46 = 0;
    sub_1DEF6E820();
    v26 = v45;
    sub_1DEF8E248();
    sub_1DEF6D188(&qword_1ECDE5580, type metadata accessor for ReplicatorMessage.Handshake.Request, &unk_1DEF9825C);
    v27 = v33;
    sub_1DEF8E298();
    (*(v32 + 8))(v10, v27);
    sub_1DEF6E5B4(v12, type metadata accessor for ReplicatorMessage.Handshake.Request);
    return (*v20)(v18, v26);
  }
}

uint64_t sub_1DEF68A34@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v68 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54E8, &qword_1DEF98928);
  v4 = *(v3 - 8);
  v63 = v3;
  v64 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v67 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54F0, &qword_1DEF98930);
  v7 = *(v6 - 8);
  v61 = v6;
  v62 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v66 = &v54 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54F8, &qword_1DEF98938);
  v59 = *(v9 - 8);
  v60 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v65 = &v54 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5500, &qword_1DEF98940);
  v69 = *(v11 - 8);
  v70 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  v14 = type metadata accessor for ReplicatorMessage.Handshake(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v54 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v54 - v24;
  v26 = a1[3];
  v72 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v26);
  sub_1DEF6E724();
  v27 = v71;
  sub_1DEF8E848();
  if (!v27)
  {
    v55 = v19;
    v56 = v22;
    v57 = v16;
    v29 = v65;
    v28 = v66;
    v71 = 0;
    v58 = v14;
    v31 = v67;
    v30 = v68;
    v32 = v70;
    v33 = sub_1DEF8E228();
    v34 = (2 * *(v33 + 16)) | 1;
    v73 = v33;
    v74 = v33 + 32;
    v75 = 0;
    v76 = v34;
    v35 = sub_1DEE4F780();
    if (v35 == 3 || v75 != v76 >> 1)
    {
      v39 = sub_1DEF8DF68();
      swift_allocError();
      v41 = v40;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
      *v41 = v58;
      sub_1DEF8E188();
      sub_1DEF8DF48();
      (*(*(v39 - 8) + 104))(v41, *MEMORY[0x1E69E6AF8], v39);
      swift_willThrow();
    }

    else
    {
      if (v35)
      {
        if (v35 == 1)
        {
          v77 = 1;
          sub_1DEF6E7CC();
          v36 = v71;
          sub_1DEF8E178();
          v37 = v30;
          v38 = v69;
          if (v36)
          {
            goto LABEL_9;
          }

          v71 = v25;
          type metadata accessor for ReplicatorMessage.Handshake.Response(0);
          sub_1DEF6D188(&qword_1ECDE5528, type metadata accessor for ReplicatorMessage.Handshake.Response, &unk_1DEF98234);
          v51 = v55;
          v52 = v61;
          sub_1DEF8E1F8();
          (*(v62 + 8))(v28, v52);
          (*(v38 + 8))(v13, v70);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v44 = v51;
        }

        else
        {
          v77 = 2;
          sub_1DEF6E778();
          v46 = v31;
          v47 = v71;
          sub_1DEF8E178();
          v48 = v69;
          if (v47)
          {
            goto LABEL_9;
          }

          v37 = v30;
          v71 = v25;
          type metadata accessor for ReplicatorMessage.Handshake.Complete(0);
          sub_1DEF6D188(&qword_1ECDE5518, type metadata accessor for ReplicatorMessage.Handshake.Complete, &unk_1DEF98194);
          v49 = v57;
          v50 = v63;
          sub_1DEF8E1F8();
          (*(v64 + 8))(v46, v50);
          (*(v48 + 8))(v13, v32);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v44 = v49;
        }

LABEL_17:
        v53 = v71;
        sub_1DEF6E54C(v44, v71, type metadata accessor for ReplicatorMessage.Handshake);
        sub_1DEF6E54C(v53, v37, type metadata accessor for ReplicatorMessage.Handshake);
        return __swift_destroy_boxed_opaque_existential_1(v72);
      }

      v77 = 0;
      sub_1DEF6E820();
      v43 = v71;
      sub_1DEF8E178();
      if (!v43)
      {
        v71 = v25;
        type metadata accessor for ReplicatorMessage.Handshake.Request(0);
        sub_1DEF6D188(&qword_1ECDE5538, type metadata accessor for ReplicatorMessage.Handshake.Request, &unk_1DEF98284);
        v44 = v56;
        v45 = v60;
        sub_1DEF8E1F8();
        (*(v59 + 8))(v29, v45);
        (*(v69 + 8))(v13, v32);
        swift_unknownObjectRelease();
        swift_storeEnumTagMultiPayload();
        v37 = v30;
        goto LABEL_17;
      }
    }

LABEL_9:
    (*(v69 + 8))(v13, v32);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v72);
}

uint64_t sub_1DEF692CC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a2;
  v19 = a3;
  v20 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5640, &qword_1DEF989D0);
  v21 = *(v5 - 8);
  v22 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5648, &qword_1DEF989D8);
  v23 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5650, &unk_1DEF989E0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E1C8();
  v15 = v24;
  sub_1DEF8E858();
  if (v15)
  {
    LOBYTE(v26) = 0;
    sub_1DEF6E270();
    sub_1DEF8E248();
    v26 = v15;
    v28 = 0;
    type metadata accessor for RecordMetadata(0);
    sub_1DEF6D188(&qword_1ECDE43F0, type metadata accessor for RecordMetadata, &protocol conformance descriptor for RecordMetadata);
    v16 = v25;
    sub_1DEF8E298();
    if (!v16)
    {
      v26 = v19;
      v27 = v20;
      v28 = 1;
      sub_1DEEBBEC0();
      sub_1DEF8E298();
    }

    (*(v23 + 8))(v10, v8);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    LOBYTE(v26) = 1;
    sub_1DEF6E21C();
    sub_1DEF8E248();
    (*(v21 + 8))(v7, v22);
    return (*(v12 + 8))(v14, v11);
  }
}

uint64_t sub_1DEF69674@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x655664726F636572 && a2 == 0xEE00736E6F697372)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1DEF8E4E8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1DEF69704(uint64_t a1)
{
  v2 = sub_1DEF6EA6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69740(uint64_t a1)
{
  v2 = sub_1DEF6EA6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1DEF6977C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DEF6BEA0(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1DEF697C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DEF6FD8C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DEF697EC(uint64_t a1)
{
  v2 = sub_1DEF6E874();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69828(uint64_t a1)
{
  v2 = sub_1DEF6E874();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DEF69894()
{
  v1 = *v0;
  v2 = 0x496E6F6973736573;
  v3 = 0x656369766564;
  v4 = 0x73726556656E6F7ALL;
  if (v1 != 3)
  {
    v4 = 0x614D64726F636572;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000011;
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

uint64_t sub_1DEF69948@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DEF70084(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DEF69970(uint64_t a1)
{
  v2 = sub_1DEF6E970();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF699AC(uint64_t a1)
{
  v2 = sub_1DEF6E970();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t sub_1DEF69A18()
{
  v1 = 0x496E6F6973736573;
  v2 = 0x686374616D73696DLL;
  if (*v0 != 2)
  {
    v2 = 0x614D64726F636572;
  }

  if (*v0)
  {
    v1 = 0xD000000000000011;
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

uint64_t sub_1DEF69AB4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DEF6FF00(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DEF69ADC(uint64_t a1)
{
  v2 = sub_1DEF6EC98();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69B18(uint64_t a1)
{
  v2 = sub_1DEF6EC98();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF69B84()
{
  v1 = 0x65736E6F70736572;
  if (*v0 != 1)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74736575716572;
  }
}

uint64_t sub_1DEF69BE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DEF6FC74(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DEF69C08(uint64_t a1)
{
  v2 = sub_1DEF6E724();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69C44(uint64_t a1)
{
  v2 = sub_1DEF6E724();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF69C80(uint64_t a1)
{
  v2 = sub_1DEF6E778();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69CBC(uint64_t a1)
{
  v2 = sub_1DEF6E778();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF69CF8(uint64_t a1)
{
  v2 = sub_1DEF6E820();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69D34(uint64_t a1)
{
  v2 = sub_1DEF6E820();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF69D70(uint64_t a1)
{
  v2 = sub_1DEF6E7CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69DAC(uint64_t a1)
{
  v2 = sub_1DEF6E7CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF69E18()
{
  if (*v0)
  {
    return 1701736302;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t sub_1DEF69E3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701736302 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF69F18(uint64_t a1)
{
  v2 = sub_1DEF6E1C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF69F54(uint64_t a1)
{
  v2 = sub_1DEF6E1C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF69F90()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1DEF69FAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF6A078(uint64_t a1)
{
  v2 = sub_1DEF6E270();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6A0B4(uint64_t a1)
{
  v2 = sub_1DEF6E270();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6A0F0(uint64_t a1)
{
  v2 = sub_1DEF6E21C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6A12C(uint64_t a1)
{
  v2 = sub_1DEF6E21C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6A168@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DEF6C024(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t sub_1DEF6A1B8(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5630, &qword_1DEF989C8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E614();
  sub_1DEF8E858();
  LOBYTE(v19) = 0;
  sub_1DEF8D3F8();
  sub_1DEF6D188(&qword_1ECDE3640, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1DEF8E298();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for ReplicatorMessage.Sync(0) + 20));
    v10 = v9[1];
    v11 = v9[2];
    v12 = *(v9 + 40);
    v19 = *v9;
    v20 = v10;
    v21 = v11;
    v17 = *(v9 + 3);
    v22 = v17;
    v23 = v12;
    v18 = 1;

    sub_1DEEAB070(v10, v11, v17);
    sub_1DEF6ED58();
    sub_1DEF8E298();
    v13 = v20;
    v14 = v21;
    v15 = v22;

    sub_1DEEAB0B8(v13, v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DEF6A3DC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_1DEF8D3F8();
  v23 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE54D0, &qword_1DEF98920);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ReplicatorMessage.Sync(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6E614();
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  LOBYTE(v27) = 0;
  sub_1DEF6D188(&qword_1ECDE3630, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
  v15 = v26;
  v16 = v24;
  sub_1DEF8E1F8();
  (*(v14 + 32))(v13, v5, v15);
  v31 = 1;
  sub_1DEF6E668();
  sub_1DEF8E1F8();
  (*(v25 + 8))(v9, v16);
  v17 = v30;
  v18 = v22;
  v19 = v13 + *(v21 + 20);
  *v19 = v27;
  *(v19 + 8) = v28;
  *(v19 + 24) = v29;
  *(v19 + 40) = v17;
  sub_1DEF6E6BC(v13, v18, type metadata accessor for ReplicatorMessage.Sync);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_1DEF6E5B4(v13, type metadata accessor for ReplicatorMessage.Sync);
}

uint64_t sub_1DEF6A778@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE52F8, &qword_1DEF97C00);
  v61 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v65 = &v51 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5300, &qword_1DEF97C08);
  v59 = *(v4 - 8);
  v60 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v64 = &v51 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5308, &qword_1DEF97C10);
  v57 = *(v6 - 8);
  v58 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v51 - v7;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5310, &unk_1DEF97C18);
  v67 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v9 = &v51 - v8;
  v10 = type metadata accessor for ReplicatorMessage(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v51 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v51 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v51 - v20;
  v22 = a1[3];
  v69 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  sub_1DEF6D018();
  v23 = v68;
  sub_1DEF8E848();
  if (v23)
  {
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  v52 = v12;
  v53 = v15;
  v54 = v18;
  v24 = v62;
  v25 = v63;
  v26 = v64;
  v27 = v65;
  v68 = 0;
  v55 = v21;
  v28 = v10;
  v29 = v66;
  v30 = sub_1DEF8E228();
  v31 = (2 * *(v30 + 16)) | 1;
  v70 = v30;
  v71 = v30 + 32;
  v72 = 0;
  v73 = v31;
  v32 = sub_1DEE4F780();
  if (v32 == 3 || v72 != v73 >> 1)
  {
    v37 = sub_1DEF8DF68();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
    *v39 = v28;
    sub_1DEF8E188();
    sub_1DEF8DF48();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    goto LABEL_9;
  }

  if (!v32)
  {
    v74 = 0;
    sub_1DEF6D1D0();
    v41 = v68;
    sub_1DEF8E178();
    if (v41)
    {
      goto LABEL_9;
    }

    v65 = v10;
    type metadata accessor for ReplicatorMessage.Handshake(0);
    sub_1DEF6D188(&qword_1ECDE5348, type metadata accessor for ReplicatorMessage.Handshake, &unk_1DEF985DC);
    v42 = v54;
    v43 = v58;
    sub_1DEF8E1F8();
    (*(v57 + 8))(v24, v43);
    (*(v67 + 8))(v9, v25);
    swift_unknownObjectRelease();
    v68 = 0;
    v44 = v42;
    swift_storeEnumTagMultiPayload();
    v34 = v29;
LABEL_15:
    v49 = v44;
    goto LABEL_16;
  }

  if (v32 != 1)
  {
    v74 = 2;
    sub_1DEF6D06C();
    v45 = v27;
    v46 = v68;
    sub_1DEF8E178();
    if (v46)
    {
      goto LABEL_9;
    }

    v34 = v29;
    sub_1DEF6D0C0();
    v47 = v56;
    sub_1DEF8E1F8();
    v48 = v67;
    v68 = 0;
    (*(v61 + 8))(v45, v47);
    (*(v48 + 8))(v9, v25);
    swift_unknownObjectRelease();
    v44 = v52;
    swift_storeEnumTagMultiPayload();
    goto LABEL_15;
  }

  v74 = 1;
  sub_1DEF6D114();
  v33 = v68;
  sub_1DEF8E178();
  if (v33)
  {
LABEL_9:
    (*(v67 + 8))(v9, v25);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v69);
  }

  v34 = v29;
  type metadata accessor for ReplicatorMessage.Sync(0);
  sub_1DEF6D188(&qword_1ECDE5338, type metadata accessor for ReplicatorMessage.Sync, &unk_1DEF98654);
  v35 = v53;
  v36 = v60;
  sub_1DEF8E1F8();
  v68 = 0;
  (*(v59 + 8))(v26, v36);
  (*(v67 + 8))(v9, v25);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v49 = v35;
LABEL_16:
  v50 = v55;
  sub_1DEF6E54C(v49, v55, type metadata accessor for ReplicatorMessage);
  sub_1DEF6E54C(v50, v34, type metadata accessor for ReplicatorMessage);
  return __swift_destroy_boxed_opaque_existential_1(v69);
}

uint64_t sub_1DEF6AF9C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v15 = a4;
  v16 = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5490, &qword_1DEF988F8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6CE74();
  sub_1DEF8E858();
  v17 = a2;
  v20 = 0;
  type metadata accessor for Record.ID(0);
  sub_1DEF6D188(&qword_1ECDE5480, type metadata accessor for Record.ID, &protocol conformance descriptor for Record.ID);
  sub_1DEF8E298();
  if (!v5)
  {
    v17 = a3;
    v18 = v15;
    v19 = v16;
    v20 = 1;
    sub_1DEEAB070(a3, v15, v16);
    sub_1DEF6E4F8();
    sub_1DEF8E298();
    sub_1DEEAB0B8(v17, v18, v19);
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_1DEF6B18C()
{
  if (*v0)
  {
    return 0x64726F636572;
  }

  else
  {
    return 0x496E6F6973736573;
  }
}

uint64_t sub_1DEF6B1C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v6 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x64726F636572 && a2 == 0xE600000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF6B2A8(uint64_t a1)
{
  v2 = sub_1DEF6E614();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B2E4(uint64_t a1)
{
  v2 = sub_1DEF6E614();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B350(uint64_t a1)
{
  v2 = sub_1DEE29774();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B38C(uint64_t a1)
{
  v2 = sub_1DEE29774();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B3C8(uint64_t a1)
{
  v2 = sub_1DEF6D06C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B404(uint64_t a1)
{
  v2 = sub_1DEF6D06C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B440()
{
  v1 = 1668184435;
  if (*v0 != 1)
  {
    v1 = 7037793;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6B616873646E6168;
  }
}

uint64_t sub_1DEF6B490@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DEF6E2C4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DEF6B4B8(uint64_t a1)
{
  v2 = sub_1DEF6D018();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B4F4(uint64_t a1)
{
  v2 = sub_1DEF6D018();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B530(uint64_t a1)
{
  v2 = sub_1DEF6D1D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B56C(uint64_t a1)
{
  v2 = sub_1DEF6D1D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B5A8(uint64_t a1)
{
  v2 = sub_1DEF6D114();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B5E4(uint64_t a1)
{
  v2 = sub_1DEF6D114();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B650()
{
  if (*v0)
  {
    return 0x65756C6176;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DEF6B67C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_1DEF8E4E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF6B74C(uint64_t a1)
{
  v2 = sub_1DEF6CE74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6B788(uint64_t a1)
{
  v2 = sub_1DEF6CE74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6B7C4@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1DEF6C614(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1DEF6B814(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5478, &qword_1DEF988F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6CF1C();
  sub_1DEF8E858();
  *&v11 = *v3;
  v10[0] = 0;
  type metadata accessor for Record.ID(0);
  sub_1DEF6D188(&qword_1ECDE5480, type metadata accessor for Record.ID, &protocol conformance descriptor for Record.ID);
  sub_1DEF8E298();
  if (!v2)
  {
    v13 = *(v3 + 8);
    v14 = *(v3 + 24);
    v11 = *(v3 + 8);
    v12 = *(v3 + 24);
    v10[31] = 1;
    sub_1DEF6CE0C(&v13, v10);
    sub_1DEF6E4F8();
    sub_1DEF8E298();
    sub_1DEEAB0B8(v11, *(&v11 + 1), v12);
    LOBYTE(v11) = 2;
    sub_1DEF8E268();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1DEF6BA3C()
{
  v1 = 0x65756C6176;
  if (*v0 != 1)
  {
    v1 = 0x6C6F636F746F7270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_1DEF6BA94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1DEF6E3E4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1DEF6BABC(uint64_t a1)
{
  v2 = sub_1DEF6CF1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF6BAF8(uint64_t a1)
{
  v2 = sub_1DEF6CF1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1DEF6BB9C(uint64_t a1)
{
  v2 = v1;
  sub_1DEE29594(a1, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4418, &qword_1DEF92098);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4420, &qword_1DEF920A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    memset(v22, 0, sizeof(v22));
    sub_1DEE171B4(v22, &qword_1ECDE4428, &qword_1DEF920A8);
    goto LABEL_5;
  }

  sub_1DEE2F1AC(v22, v24);
  v3 = v25;
  v4 = v26;
  __swift_project_boxed_opaque_existential_1(v24, v25);
  v5 = (*(v4 + 16))(v3, v4);
  if (v6)
  {
    __swift_destroy_boxed_opaque_existential_1(v24);
LABEL_5:
    v7 = *v1;
    v8 = *(v2 + 40);
    v9 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Versions.V8;
    v28 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Versions.V8;
    v29 = sub_1DEF6CF70();
    v10 = swift_allocObject();
    v27[0] = v10;
    *(v10 + 16) = v7;
    v19 = *(v2 + 1);
    v20 = *(v2 + 3);
    *(v10 + 40) = v20;
    *(v10 + 24) = v19;
    *(v10 + 56) = v8;

    sub_1DEEAB070(v19, *(&v19 + 1), v20);
    goto LABEL_10;
  }

  v12 = *v1;
  v11 = v1[1];
  v13 = v2[2];
  v14 = v2[3];
  if (v5 > 7)
  {
    v21 = v2[4];
    v16 = *(v2 + 40);
    v9 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Versions.V8;
    v28 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Versions.V8;
    v29 = sub_1DEF6CF70();
    v17 = swift_allocObject();
    v27[0] = v17;
    *(v17 + 16) = v12;
    *(v17 + 24) = v11;
    *(v17 + 32) = v13;
    *(v17 + 40) = v14;
    *(v17 + 48) = v21;
    *(v17 + 56) = v16;
  }

  else
  {
    v9 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Versions.V0;
    v28 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Versions.V0;
    v29 = sub_1DEF6CFC4();
    v15 = swift_allocObject();
    v27[0] = v15;
    v15[2] = v12;
    v15[3] = v11;
    v15[4] = v13;
    v15[5] = v14;
  }

  sub_1DEEAB070(v11, v13, v14);
  __swift_destroy_boxed_opaque_existential_1(v24);
LABEL_10:
  __swift_project_boxed_opaque_existential_1(v27, v9);
  sub_1DEF8D8A8();
  return __swift_destroy_boxed_opaque_existential_1(v27);
}

double sub_1DEF6BE40@<D0>(void (*a1)(__int128 *__return_ptr)@<X3>, _OWORD *a2@<X8>)
{
  a1(&v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

void *sub_1DEF6BEA0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55D8, &qword_1DEF98998);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6EA6C();
  sub_1DEF8E848();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE55E8, &qword_1DEF989A0);
    sub_1DEF6EAC0();
    sub_1DEF8E1F8();
    (*(v4 + 8))(v6, v3);
    v7 = v9[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v7;
}

uint64_t sub_1DEF6C024(void *a1)
{
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5448, &qword_1DEF988D8);
  v24 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v3 = &v24 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5450, &qword_1DEF988E0);
  v25 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5458, &qword_1DEF988E8);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - v9;
  v11 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v11);
  sub_1DEF6E1C8();
  v12 = v27;
  sub_1DEF8E848();
  if (!v12)
  {
    v13 = v26;
    v27 = v8;
    v14 = sub_1DEF8E228();
    v15 = (2 * *(v14 + 16)) | 1;
    v31 = v14;
    v32 = v14 + 32;
    v33 = 0;
    v34 = v15;
    v16 = sub_1DEE25E0C();
    if (v16 == 2 || v33 != v34 >> 1)
    {
      v18 = sub_1DEF8DF68();
      swift_allocError();
      v20 = v19;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3B78, &qword_1DEF93FE0);
      *v20 = &type metadata for ReplicatorMessage.Sync.SyncRecord.Value;
      sub_1DEF8E188();
      sub_1DEF8DF48();
      (*(*(v18 - 8) + 104))(v20, *MEMORY[0x1E69E6AF8], v18);
      swift_willThrow();
      (*(v27 + 8))(v10, v7);
      swift_unknownObjectRelease();
    }

    else if (v16)
    {
      LOBYTE(v30) = 1;
      sub_1DEF6E21C();
      sub_1DEF8E178();
      v17 = v27;
      (*(v24 + 8))(v3, v13);
      (*(v17 + 8))(v10, v7);
      swift_unknownObjectRelease();
      v4 = 0;
    }

    else
    {
      LOBYTE(v30) = 0;
      sub_1DEF6E270();
      sub_1DEF8E178();
      v22 = v27;
      v26 = v10;
      type metadata accessor for RecordMetadata(0);
      LOBYTE(v30) = 0;
      sub_1DEF6D188(&qword_1ECDE4408, type metadata accessor for RecordMetadata, &protocol conformance descriptor for RecordMetadata);
      v23 = v4;
      sub_1DEF8E1F8();
      v4 = v35;
      v29 = 1;
      sub_1DEE1E77C();
      sub_1DEF8E1F8();
      (*(v25 + 8))(v6, v23);
      (*(v22 + 8))(v26, v7);
      swift_unknownObjectRelease();
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v28);
  return v4;
}

uint64_t sub_1DEF6C614(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE52B8, &qword_1DEF97BE8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v12 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_1DEF6CE74();
  sub_1DEF8E848();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    type metadata accessor for Record.ID(0);
    v13 = 0;
    sub_1DEF6D188(&qword_1ECDE52C8, type metadata accessor for Record.ID, &protocol conformance descriptor for Record.ID);
    sub_1DEF8E1F8();
    v7 = v12[0];
    v13 = 1;
    sub_1DEF6CEC8();
    sub_1DEF8E1F8();
    (*(v4 + 8))(v6, v3);
    v9 = v12[0];
    v10 = v12[1];
    v11 = v12[2];

    sub_1DEEAB070(v9, v10, v11);
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_1DEEAB0B8(v9, v10, v11);
  }

  return v7;
}

uint64_t sub_1DEF6C870@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE52D8, &unk_1DEF97BF0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEF6CF1C();
  sub_1DEF8E848();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  type metadata accessor for Record.ID(0);
  v25 = 0;
  sub_1DEF6D188(&qword_1ECDE52C8, type metadata accessor for Record.ID, &protocol conformance descriptor for Record.ID);
  sub_1DEF8E1F8();
  v21 = a2;
  v9 = v22;
  v25 = 1;
  sub_1DEF6CEC8();
  sub_1DEF8E1F8();
  v10 = v23;
  v19 = v24;
  v20 = v22;
  LOBYTE(v22) = 2;
  v11 = sub_1DEF8E1C8();
  v13 = v12;
  (*(v6 + 8))(v8, v5);

  v15 = v19;
  v14 = v20;
  v16 = v10;
  sub_1DEEAB070(v20, v10, v19);
  __swift_destroy_boxed_opaque_existential_1(a1);

  result = sub_1DEEAB0B8(v14, v10, v15);
  v18 = v21;
  *v21 = v9;
  v18[1] = v14;
  v18[2] = v16;
  v18[3] = v15;
  v18[4] = v11;
  *(v18 + 40) = v13 & 1;
  return result;
}

uint64_t sub_1DEF6CB6C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1DEE29594(a1, v22);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43C8, &qword_1DEF92070);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE43D0, &qword_1DEF92078);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v21 = 0;
    memset(v20, 0, sizeof(v20));
    sub_1DEE171B4(v20, &qword_1ECDE43D8, &qword_1DEF92080);
    goto LABEL_5;
  }

  sub_1DEE2F1AC(v20, v23);
  v5 = v24;
  v6 = v25;
  __swift_project_boxed_opaque_existential_1(v23, v24);
  v7 = (*(v6 + 16))(v5, v6);
  if (v8)
  {
    __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_5:
    sub_1DEE29594(a1, v23);
    sub_1DEF6C870(v23, &v31);
    result = __swift_destroy_boxed_opaque_existential_1(a1);
    if (v2)
    {
      return result;
    }

    v38 = v32;
    v10 = v31;
    v39 = v33;

    sub_1DEF6CE0C(&v38, v23);
    result = sub_1DEF6CE44(&v31);
    v12 = *(&v38 + 1);
    v11 = v38;
    v13 = v39;
    v14 = v34;
    v15 = v35;
    goto LABEL_15;
  }

  if (v7 > 7)
  {
    sub_1DEE29594(a1, v22);
    sub_1DEF6C870(v22, &v26);
    __swift_destroy_boxed_opaque_existential_1(a1);
    if (v2)
    {
      return __swift_destroy_boxed_opaque_existential_1(v23);
    }

    v36 = v27;
    v10 = v26;
    v37 = v28;

    sub_1DEF6CE0C(&v36, v22);
    sub_1DEF6CE44(&v26);
    v12 = *(&v36 + 1);
    v11 = v36;
    v13 = v37;
    v14 = v29;
    v15 = v30;
  }

  else
  {
    sub_1DEE29594(a1, v22);
    v16 = sub_1DEF6C614(v22);
    if (v2)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);
      return __swift_destroy_boxed_opaque_existential_1(v23);
    }

    v10 = v16;
    v11 = v17;
    v12 = v18;
    v13 = v19;
    __swift_destroy_boxed_opaque_existential_1(a1);

    sub_1DEEAB070(v11, v12, v13);

    sub_1DEEAB0B8(v11, v12, v13);
    v15 = 0;
    v14 = 1;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v23);
LABEL_15:
  *a2 = v10;
  *(a2 + 8) = v11;
  *(a2 + 16) = v12;
  *(a2 + 24) = v13;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15 & 1;
  return result;
}

unint64_t sub_1DEF6CE74()
{
  result = qword_1ECDE52C0;
  if (!qword_1ECDE52C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52C0);
  }

  return result;
}

unint64_t sub_1DEF6CEC8()
{
  result = qword_1ECDE52D0;
  if (!qword_1ECDE52D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52D0);
  }

  return result;
}

unint64_t sub_1DEF6CF1C()
{
  result = qword_1ECDE52E0;
  if (!qword_1ECDE52E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52E0);
  }

  return result;
}

unint64_t sub_1DEF6CF70()
{
  result = qword_1ECDE52E8;
  if (!qword_1ECDE52E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52E8);
  }

  return result;
}

unint64_t sub_1DEF6CFC4()
{
  result = qword_1ECDE52F0;
  if (!qword_1ECDE52F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE52F0);
  }

  return result;
}

unint64_t sub_1DEF6D018()
{
  result = qword_1ECDE5318;
  if (!qword_1ECDE5318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5318);
  }

  return result;
}

unint64_t sub_1DEF6D06C()
{
  result = qword_1ECDE5320;
  if (!qword_1ECDE5320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5320);
  }

  return result;
}

unint64_t sub_1DEF6D0C0()
{
  result = qword_1ECDE5328;
  if (!qword_1ECDE5328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5328);
  }

  return result;
}

unint64_t sub_1DEF6D114()
{
  result = qword_1ECDE5330;
  if (!qword_1ECDE5330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5330);
  }

  return result;
}

uint64_t sub_1DEF6D188(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1DEF6D1D0()
{
  result = qword_1ECDE5340;
  if (!qword_1ECDE5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5340);
  }

  return result;
}

uint64_t sub_1DEF6D294(uint64_t a1)
{
  result = type metadata accessor for ReplicatorMessage.Handshake.Request(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ReplicatorMessage.Handshake.Response(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for ReplicatorMessage.Handshake.Complete(319);
      if (v4 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

void sub_1DEF6D384(uint64_t a1)
{
  sub_1DEF8D3F8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DeviceDescriptor(319);
    if (v2 <= 0x3F)
    {
      sub_1DEEE0CF0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1DEF8D3F8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
LABEL_5:

    return v9(v10, a2, v8);
  }

  v11 = type metadata accessor for DeviceDescriptor(0);
  v12 = *(v11 - 8);
  if (*(v12 + 84) == a2)
  {
    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 24);
    goto LABEL_5;
  }

  v14 = *(a1 + *(a3 + 28));
  if (v14 >= 0xFFFFFFFF)
  {
    LODWORD(v14) = -1;
  }

  return (v14 + 1);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_1DEF8D3F8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = type metadata accessor for DeviceDescriptor(0);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 28)) = (a2 - 1);
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 24);
  }

  return v11(v12, a2, a2, v10);
}

void sub_1DEF6D664(uint64_t a1)
{
  sub_1DEF8D3F8();
  if (v1 <= 0x3F)
  {
    type metadata accessor for DeviceDescriptor(319);
    if (v2 <= 0x3F)
    {
      sub_1DEEE0CF0(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1DEF6D748(uint64_t a1)
{
  sub_1DEF8D3F8();
  if (v1 <= 0x3F)
  {
    sub_1DEF6D7DC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1DEF6D7DC()
{
  if (!qword_1ECDE5390)
  {
    v0 = sub_1DEF8DB28();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECDE5390);
    }
  }
}

uint64_t sub_1DEF6D88C(uint64_t a1)
{
  result = type metadata accessor for ReplicatorMessage.Handshake(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ReplicatorMessage.Sync(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_1DEF6D928(uint64_t a1)
{
  result = sub_1DEF8D3F8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_16ReplicatorEngine0A7MessageO4SyncV0D6RecordV5ValueO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_1DEF6DA1C(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t sub_1DEF6DA6C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

void *sub_1DEF6DAC4(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
    result[1] = 0;
    result[2] = 0;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = (a2 - 1);
  }

  *result = v2;
  return result;
}

uint64_t sub_1DEF6DAF4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_1DEF6DB3C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1DEF6DB9C()
{
  result = qword_1ECDE53B8;
  if (!qword_1ECDE53B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53B8);
  }

  return result;
}

unint64_t sub_1DEF6DBF4()
{
  result = qword_1ECDE53C0;
  if (!qword_1ECDE53C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53C0);
  }

  return result;
}

unint64_t sub_1DEF6DC4C()
{
  result = qword_1ECDE53C8;
  if (!qword_1ECDE53C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53C8);
  }

  return result;
}

unint64_t sub_1DEF6DCA4()
{
  result = qword_1ECDE53D0;
  if (!qword_1ECDE53D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53D0);
  }

  return result;
}

unint64_t sub_1DEF6DCFC()
{
  result = qword_1ECDE53D8;
  if (!qword_1ECDE53D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53D8);
  }

  return result;
}

unint64_t sub_1DEF6DD54()
{
  result = qword_1ECDE53E0;
  if (!qword_1ECDE53E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53E0);
  }

  return result;
}

unint64_t sub_1DEF6DDAC()
{
  result = qword_1ECDE53E8;
  if (!qword_1ECDE53E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53E8);
  }

  return result;
}

unint64_t sub_1DEF6DE04()
{
  result = qword_1ECDE53F0;
  if (!qword_1ECDE53F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53F0);
  }

  return result;
}

unint64_t sub_1DEF6DE5C()
{
  result = qword_1ECDE53F8;
  if (!qword_1ECDE53F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE53F8);
  }

  return result;
}

unint64_t sub_1DEF6DEB4()
{
  result = qword_1ECDE5400;
  if (!qword_1ECDE5400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5400);
  }

  return result;
}

unint64_t sub_1DEF6DF0C()
{
  result = qword_1ECDE5408;
  if (!qword_1ECDE5408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5408);
  }

  return result;
}

unint64_t sub_1DEF6DF64()
{
  result = qword_1ECDE5410;
  if (!qword_1ECDE5410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5410);
  }

  return result;
}

unint64_t sub_1DEF6DFBC()
{
  result = qword_1ECDE5418;
  if (!qword_1ECDE5418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5418);
  }

  return result;
}

unint64_t sub_1DEF6E014()
{
  result = qword_1ECDE5420;
  if (!qword_1ECDE5420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5420);
  }

  return result;
}

unint64_t sub_1DEF6E06C()
{
  result = qword_1ECDE5428;
  if (!qword_1ECDE5428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5428);
  }

  return result;
}

unint64_t sub_1DEF6E0C4()
{
  result = qword_1ECDE5430;
  if (!qword_1ECDE5430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5430);
  }

  return result;
}

unint64_t sub_1DEF6E11C()
{
  result = qword_1ECDE5438;
  if (!qword_1ECDE5438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5438);
  }

  return result;
}

unint64_t sub_1DEF6E174()
{
  result = qword_1ECDE5440;
  if (!qword_1ECDE5440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5440);
  }

  return result;
}

unint64_t sub_1DEF6E1C8()
{
  result = qword_1ECDE5460;
  if (!qword_1ECDE5460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5460);
  }

  return result;
}

unint64_t sub_1DEF6E21C()
{
  result = qword_1ECDE5468;
  if (!qword_1ECDE5468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5468);
  }

  return result;
}

unint64_t sub_1DEF6E270()
{
  result = qword_1ECDE5470;
  if (!qword_1ECDE5470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5470);
  }

  return result;
}

uint64_t sub_1DEF6E2C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6B616873646E6168 && a2 == 0xE900000000000065;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1668184435 && a2 == 0xE400000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7037793 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF6E3E4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C6F636F746F7270 && a2 == 0xEF6E6F6973726556)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

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

unint64_t sub_1DEF6E4F8()
{
  result = qword_1ECDE5488;
  if (!qword_1ECDE5488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5488);
  }

  return result;
}

uint64_t sub_1DEF6E54C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1DEF6E5B4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1DEF6E614()
{
  result = qword_1ECDE54D8;
  if (!qword_1ECDE54D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE54D8);
  }

  return result;
}

unint64_t sub_1DEF6E668()
{
  result = qword_1ECDE54E0;
  if (!qword_1ECDE54E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE54E0);
  }

  return result;
}

uint64_t sub_1DEF6E6BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1DEF6E724()
{
  result = qword_1ECDE5508;
  if (!qword_1ECDE5508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5508);
  }

  return result;
}

unint64_t sub_1DEF6E778()
{
  result = qword_1ECDE5510;
  if (!qword_1ECDE5510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5510);
  }

  return result;
}

unint64_t sub_1DEF6E7CC()
{
  result = qword_1ECDE5520;
  if (!qword_1ECDE5520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5520);
  }

  return result;
}

unint64_t sub_1DEF6E820()
{
  result = qword_1ECDE5530;
  if (!qword_1ECDE5530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5530);
  }

  return result;
}

unint64_t sub_1DEF6E874()
{
  result = qword_1ECDE5590;
  if (!qword_1ECDE5590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5590);
  }

  return result;
}

unint64_t sub_1DEF6E8C8()
{
  result = qword_1ECDE5598;
  if (!qword_1ECDE5598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5598);
  }

  return result;
}

unint64_t sub_1DEF6E91C()
{
  result = qword_1ECDE55A8;
  if (!qword_1ECDE55A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE55A8);
  }

  return result;
}

unint64_t sub_1DEF6E970()
{
  result = qword_1ECDE55B8;
  if (!qword_1ECDE55B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE55B8);
  }

  return result;
}

unint64_t sub_1DEF6E9C4()
{
  result = qword_1ECDE55C0;
  if (!qword_1ECDE55C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE55C0);
  }

  return result;
}

unint64_t sub_1DEF6EA18()
{
  result = qword_1ECDE55D0;
  if (!qword_1ECDE55D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE55D0);
  }

  return result;
}

unint64_t sub_1DEF6EA6C()
{
  result = qword_1ECDE55E0;
  if (!qword_1ECDE55E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE55E0);
  }

  return result;
}

unint64_t sub_1DEF6EAC0()
{
  result = qword_1ECDE55F0;
  if (!qword_1ECDE55F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE55E8, &qword_1DEF989A0);
    sub_1DEF6D188(&qword_1ECDE52C8, type metadata accessor for Record.ID, &protocol conformance descriptor for Record.ID);
    sub_1DEF6D188(&qword_1ECDE3630, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE55F0);
  }

  return result;
}

unint64_t sub_1DEF6EBAC()
{
  result = qword_1ECDE5600;
  if (!qword_1ECDE5600)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE55E8, &qword_1DEF989A0);
    sub_1DEF6D188(&qword_1ECDE5480, type metadata accessor for Record.ID, &protocol conformance descriptor for Record.ID);
    sub_1DEF6D188(&qword_1ECDE3640, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5600);
  }

  return result;
}

unint64_t sub_1DEF6EC98()
{
  result = qword_1ECDE5610;
  if (!qword_1ECDE5610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5610);
  }

  return result;
}

uint64_t sub_1DEF6ECEC(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECDE3C90, &unk_1DEF91590);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1DEF6ED58()
{
  result = qword_1ECDE5638;
  if (!qword_1ECDE5638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5638);
  }

  return result;
}

uint64_t sub_1DEF6EDDC(unsigned __int8 *a1, unsigned int a2)
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

uint64_t sub_1DEF6EE6C(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_1DEF6EFC0()
{
  result = qword_1ECDE5658;
  if (!qword_1ECDE5658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5658);
  }

  return result;
}

unint64_t sub_1DEF6F018()
{
  result = qword_1ECDE5660;
  if (!qword_1ECDE5660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5660);
  }

  return result;
}

unint64_t sub_1DEF6F070()
{
  result = qword_1ECDE5668;
  if (!qword_1ECDE5668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5668);
  }

  return result;
}

unint64_t sub_1DEF6F0C8()
{
  result = qword_1ECDE5670;
  if (!qword_1ECDE5670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5670);
  }

  return result;
}

unint64_t sub_1DEF6F120()
{
  result = qword_1ECDE5678;
  if (!qword_1ECDE5678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5678);
  }

  return result;
}

unint64_t sub_1DEF6F178()
{
  result = qword_1ECDE5680;
  if (!qword_1ECDE5680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5680);
  }

  return result;
}

unint64_t sub_1DEF6F1D0()
{
  result = qword_1ECDE5688;
  if (!qword_1ECDE5688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5688);
  }

  return result;
}

unint64_t sub_1DEF6F228()
{
  result = qword_1ECDE5690;
  if (!qword_1ECDE5690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5690);
  }

  return result;
}

unint64_t sub_1DEF6F280()
{
  result = qword_1ECDE5698;
  if (!qword_1ECDE5698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5698);
  }

  return result;
}

unint64_t sub_1DEF6F2D8()
{
  result = qword_1ECDE56A0;
  if (!qword_1ECDE56A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56A0);
  }

  return result;
}

unint64_t sub_1DEF6F330()
{
  result = qword_1ECDE56A8;
  if (!qword_1ECDE56A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56A8);
  }

  return result;
}

unint64_t sub_1DEF6F388()
{
  result = qword_1ECDE56B0;
  if (!qword_1ECDE56B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56B0);
  }

  return result;
}

unint64_t sub_1DEF6F3E0()
{
  result = qword_1ECDE56B8;
  if (!qword_1ECDE56B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56B8);
  }

  return result;
}

unint64_t sub_1DEF6F438()
{
  result = qword_1ECDE56C0;
  if (!qword_1ECDE56C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56C0);
  }

  return result;
}

unint64_t sub_1DEF6F490()
{
  result = qword_1ECDE56C8;
  if (!qword_1ECDE56C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56C8);
  }

  return result;
}

unint64_t sub_1DEF6F4E8()
{
  result = qword_1ECDE56D0;
  if (!qword_1ECDE56D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56D0);
  }

  return result;
}

unint64_t sub_1DEF6F540()
{
  result = qword_1ECDE56D8;
  if (!qword_1ECDE56D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56D8);
  }

  return result;
}

unint64_t sub_1DEF6F598()
{
  result = qword_1ECDE56E0;
  if (!qword_1ECDE56E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56E0);
  }

  return result;
}

unint64_t sub_1DEF6F5F0()
{
  result = qword_1ECDE56E8;
  if (!qword_1ECDE56E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56E8);
  }

  return result;
}

unint64_t sub_1DEF6F648()
{
  result = qword_1ECDE56F0;
  if (!qword_1ECDE56F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56F0);
  }

  return result;
}

unint64_t sub_1DEF6F6A0()
{
  result = qword_1ECDE56F8;
  if (!qword_1ECDE56F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE56F8);
  }

  return result;
}

unint64_t sub_1DEF6F6F8()
{
  result = qword_1ECDE5700;
  if (!qword_1ECDE5700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5700);
  }

  return result;
}

unint64_t sub_1DEF6F750()
{
  result = qword_1ECDE5708;
  if (!qword_1ECDE5708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5708);
  }

  return result;
}

unint64_t sub_1DEF6F7A8()
{
  result = qword_1ECDE5710;
  if (!qword_1ECDE5710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5710);
  }

  return result;
}

unint64_t sub_1DEF6F800()
{
  result = qword_1ECDE5718;
  if (!qword_1ECDE5718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5718);
  }

  return result;
}

unint64_t sub_1DEF6F858()
{
  result = qword_1ECDE5720;
  if (!qword_1ECDE5720)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5720);
  }

  return result;
}

unint64_t sub_1DEF6F8B0()
{
  result = qword_1ECDE5728;
  if (!qword_1ECDE5728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5728);
  }

  return result;
}

unint64_t sub_1DEF6F908()
{
  result = qword_1ECDE5730;
  if (!qword_1ECDE5730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5730);
  }

  return result;
}

unint64_t sub_1DEF6F960()
{
  result = qword_1ECDE5738;
  if (!qword_1ECDE5738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5738);
  }

  return result;
}

unint64_t sub_1DEF6F9B8()
{
  result = qword_1ECDE5740;
  if (!qword_1ECDE5740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5740);
  }

  return result;
}

unint64_t sub_1DEF6FA10()
{
  result = qword_1ECDE5748;
  if (!qword_1ECDE5748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5748);
  }

  return result;
}

unint64_t sub_1DEF6FA68()
{
  result = qword_1ECDE5750;
  if (!qword_1ECDE5750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5750);
  }

  return result;
}

unint64_t sub_1DEF6FAC0()
{
  result = qword_1ECDE5758;
  if (!qword_1ECDE5758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5758);
  }

  return result;
}

unint64_t sub_1DEF6FB18()
{
  result = qword_1ECDE5760;
  if (!qword_1ECDE5760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5760);
  }

  return result;
}

unint64_t sub_1DEF6FB70()
{
  result = qword_1ECDE5768;
  if (!qword_1ECDE5768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5768);
  }

  return result;
}

unint64_t sub_1DEF6FBC8()
{
  result = qword_1ECDE5770;
  if (!qword_1ECDE5770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5770);
  }

  return result;
}

unint64_t sub_1DEF6FC20()
{
  result = qword_1ECDE5778;
  if (!qword_1ECDE5778)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5778);
  }

  return result;
}

uint64_t sub_1DEF6FC74(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74736575716572 && a2 == 0xE700000000000000;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6574656C706D6F63 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF6FD8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DEF9E300 == a2 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73726556656E6F7ALL && a2 == 0xEC000000736E6F69)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF6FF00(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DEF9E300 == a2 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x686374616D73696DLL && a2 == 0xEF73656E6F5A6465 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x614D64726F636572 && a2 == 0xEE0074736566696ELL)
  {

    return 3;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

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

uint64_t sub_1DEF70084(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496E6F6973736573 && a2 == 0xE900000000000044;
  if (v4 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001DEF9E300 == a2 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656369766564 && a2 == 0xE600000000000000 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73726556656E6F7ALL && a2 == 0xEC000000736E6F69 || (sub_1DEF8E4E8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x614D64726F636572 && a2 == 0xEE0074736566696ELL)
  {

    return 4;
  }

  else
  {
    v6 = sub_1DEF8E4E8();

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

uint64_t Message.init(id:responseToID:messageType:senderDeviceID:protocolVersion:encodedBody:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = type metadata accessor for Message(0);
  v17 = v16[5];
  v18 = sub_1DEF8D3F8();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  (*(v19 + 32))(a9, a1, v18);
  result = sub_1DEE1E70C(a2, a9 + v17);
  v21 = (a9 + v16[6]);
  *v21 = a3;
  v21[1] = a4;
  v22 = (a9 + v16[7]);
  *v22 = a5;
  v22[1] = a6;
  *(a9 + v16[8]) = a7;
  v23 = (a9 + v16[9]);
  *v23 = a8;
  v23[1] = a10;
  return result;
}

uint64_t sub_1DEF703AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x65447265646E6573;
  v6 = 0xEE00444965636976;
  v7 = 0x6C6F636F746F7270;
  v8 = 0xEF6E6F6973726556;
  if (a1 != 4)
  {
    v7 = 0x426465646F636E65;
    v8 = 0xEB0000000079646FLL;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x65736E6F70736572;
  v10 = 0xEC00000044496F54;
  if (a1 != 1)
  {
    v9 = 0x546567617373656DLL;
    v10 = 0xEB00000000657079;
  }

  if (a1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xEE00444965636976;
      if (v11 != 0x65447265646E6573)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (a2 == 4)
    {
      v13 = 0xEF6E6F6973726556;
      if (v11 != 0x6C6F636F746F7270)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v14 = 0x426465646F636E65;
    v15 = 7955567;
  }

  else
  {
    if (!a2)
    {
      v13 = 0xE200000000000000;
      if (v11 != 25705)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    if (a2 == 1)
    {
      v13 = 0xEC00000044496F54;
      if (v11 != 0x65736E6F70736572)
      {
        goto LABEL_33;
      }

      goto LABEL_31;
    }

    v14 = 0x546567617373656DLL;
    v15 = 6647929;
  }

  v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
  if (v11 != v14)
  {
LABEL_33:
    v16 = sub_1DEF8E4E8();
    goto LABEL_34;
  }

LABEL_31:
  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v16 = 1;
LABEL_34:

  return v16 & 1;
}

uint64_t sub_1DEF705E0(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0x74616E6974736564;
  v6 = 0xEB000000006E6F69;
  v7 = 0x6974617269707865;
  v8 = 0xEA00000000006E6FLL;
  if (a1 != 4)
  {
    v7 = 0x736E6F6974706FLL;
    v8 = 0xE700000000000000;
  }

  if (a1 != 3)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0x6544746E65696C63;
  v10 = 0xEF444964656E6966;
  if (a1 != 1)
  {
    v9 = 0x6E6F6973726576;
    v10 = 0xE700000000000000;
  }

  if (a1)
  {
    v4 = v9;
    v3 = v10;
  }

  if (a1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (v2 <= 2)
  {
    v12 = v3;
  }

  else
  {
    v12 = v6;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xEB000000006E6F69;
      if (v11 != 0x74616E6974736564)
      {
        goto LABEL_33;
      }
    }

    else if (a2 == 4)
    {
      v13 = 0xEA00000000006E6FLL;
      if (v11 != 0x6974617269707865)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x736E6F6974706FLL)
      {
LABEL_33:
        v14 = sub_1DEF8E4E8();
        goto LABEL_34;
      }
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v13 = 0xEF444964656E6966;
      if (v11 != 0x6544746E65696C63)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0xE700000000000000;
      if (v11 != 0x6E6F6973726576)
      {
        goto LABEL_33;
      }
    }
  }

  else
  {
    v13 = 0xE200000000000000;
    if (v11 != 25705)
    {
      goto LABEL_33;
    }
  }

  if (v12 != v13)
  {
    goto LABEL_33;
  }

  v14 = 1;
LABEL_34:

  return v14 & 1;
}

uint64_t sub_1DEF707EC(unsigned __int8 a1)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF70918(unsigned __int8 a1)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF70A28(uint64_t a1, unsigned __int8 a2)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF70B34(uint64_t a1, unsigned __int8 a2)
{
  sub_1DEF8E7A8();
  sub_1DEF8D9B8();

  return sub_1DEF8E7F8();
}

uint64_t sub_1DEF70C70(uint64_t a1)
{
  sub_1DEF8D9B8();
}

unint64_t sub_1DEF70D8C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1DEF71884(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1DEF70DBC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 25705;
  v5 = 0xEE00444965636976;
  v6 = 0x65447265646E6573;
  v7 = 0xEF6E6F6973726556;
  v8 = 0x6C6F636F746F7270;
  if (v2 != 4)
  {
    v8 = 0x426465646F636E65;
    v7 = 0xEB0000000079646FLL;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEC00000044496F54;
  v10 = 0x65736E6F70736572;
  if (v2 != 1)
  {
    v10 = 0x546567617373656DLL;
    v9 = 0xEB00000000657079;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v11;
  a1[1] = v3;
}

unint64_t sub_1DEF70EA0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1DEF71884(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1DEF70ED4(uint64_t a1)
{
  v2 = sub_1DEE1E328();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1DEF70F10(uint64_t a1)
{
  v2 = sub_1DEE1E328();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Message.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Message.id.setter(uint64_t a1)
{
  v3 = sub_1DEF8D3F8();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Message.responseToID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for Message(0) + 20);

  return sub_1DEE205E0(v3, a1);
}

uint64_t Message.responseToID.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for Message(0) + 20);

  return sub_1DEE1E70C(a1, v3);
}

uint64_t Message.messageType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Message(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Message.senderDeviceID.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Message(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Message.protocolVersion.setter(uint64_t a1)
{
  result = type metadata accessor for Message(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t Message.encodedBody.getter()
{
  v1 = v0 + *(type metadata accessor for Message(0) + 36);
  v2 = *v1;
  sub_1DEE1BFF4(*v1, *(v1 + 8));
  return v2;
}

uint64_t Message.encodedBody.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for Message(0) + 36);
  result = sub_1DEE1BFA0(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t Message.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE5790, &qword_1DEF99710);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1DEE1E328();
  sub_1DEF8E858();
  LOBYTE(v14) = 0;
  sub_1DEF8D3F8();
  sub_1DEE1E37C(&qword_1ECDE3640, MEMORY[0x1E69695B0]);
  sub_1DEF8E298();
  if (!v2)
  {
    v9 = type metadata accessor for Message(0);
    LOBYTE(v14) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE3E80, &unk_1DEF90970);
    sub_1DEEBBE0C();
    sub_1DEF8E298();
    LOBYTE(v14) = 2;
    sub_1DEF8E278();
    LOBYTE(v14) = 3;
    sub_1DEF8E278();
    LOBYTE(v14) = 4;
    sub_1DEF8E2B8();
    v10 = (v3 + *(v9 + 36));
    v11 = v10[1];
    v14 = *v10;
    v15 = v11;
    v13[15] = 5;
    sub_1DEE1BFF4(v14, v11);
    sub_1DEEBBEC0();
    sub_1DEF8E298();
    sub_1DEE1BFA0(v14, v15);
  }

  return (*(v6 + 8))(v8, v5);
}

void sub_1DEF716C4(uint64_t a1)
{
  sub_1DEF8D3F8();
  if (v1 <= 0x3F)
  {
    sub_1DEEBC2D4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

unint64_t sub_1DEF71780()
{
  result = qword_1ECDE5798;
  if (!qword_1ECDE5798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE5798);
  }

  return result;
}

unint64_t sub_1DEF717D8()
{
  result = qword_1ECDE57A0;
  if (!qword_1ECDE57A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE57A0);
  }

  return result;
}

unint64_t sub_1DEF71830()
{
  result = qword_1ECDE57A8;
  if (!qword_1ECDE57A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECDE57A8);
  }

  return result;
}

unint64_t sub_1DEF71884(uint64_t a1, uint64_t a2)
{
  v2 = sub_1DEF8E168();

  if (v2 >= 6)
  {
    return 6;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1DEF71954(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), uint64_t (*a4)(void))
{
  if ((a2 & 0xC000000000000001) != 0)
  {

    v5 = sub_1DEF8E0B8();

    if (v5)
    {
      a4(0);
      swift_dynamicCast();
      return v8;
    }
  }

  else if (*(a2 + 16))
  {
    a3(a1);
    if (v7)
    {
    }
  }

  return 0;
}

uint64_t sub_1DEF71A1C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 24) = v2;
}

double sub_1DEF71A7C()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_1DEF71AB4(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 24) = a1;
}

uint64_t sub_1DEF71B4C(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 32) = v3;
  *(v4 + 40) = v2;
}

uint64_t sub_1DEF71BAC()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1DEF71BF8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
}

uint64_t sub_1DEF71DE4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

uint64_t sub_1DEF71E44(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t sub_1DEF71EDC(uint64_t a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE4DC0, &qword_1DEF91640);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  sub_1DEECF850(a1, &v10 - v5);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  swift_beginAccess();
  sub_1DEECF904(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t sub_1DEF71F9C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  swift_beginAccess();
  return sub_1DEECF850(v1 + v3, a1);
}

uint64_t sub_1DEF71FF4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  swift_beginAccess();
  sub_1DEECF904(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t MetadataInMemoryStore.__allocating_init()()
{
  v0 = swift_allocObject();
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = MEMORY[0x1E69E7CD0];
  v2 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  v3 = sub_1DEF8D378();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs) = v1;
  *(v0 + 48) = 1;
  return v0;
}

uint64_t MetadataInMemoryStore.init()()
{
  v1 = MEMORY[0x1E69E7CC8];
  *(v0 + 16) = MEMORY[0x1E69E7CC8];
  *(v0 + 24) = v1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 56) = MEMORY[0x1E69E7CD0];
  v2 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  v3 = sub_1DEF8D378();
  (*(*(v3 - 8) + 56))(v0 + v2, 1, 1, v3);
  *(v0 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs) = v1;
  *(v0 + 48) = 1;
  return v0;
}

uint64_t MetadataInMemoryStore.__allocating_init(pairingRelationship:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MetadataInMemoryStore.init(pairingRelationship:)(a1);
  return v2;
}

uint64_t MetadataInMemoryStore.init(pairingRelationship:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C18, &unk_1DEF94D20);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v16 - v5;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x1E69E7CC8];
  *(v2 + 16) = MEMORY[0x1E69E7CC8];
  *(v2 + 24) = v11;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 56) = MEMORY[0x1E69E7CD0];
  v12 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  v13 = sub_1DEF8D378();
  (*(*(v13 - 8) + 56))(v2 + v12, 1, 1, v13);
  *(v2 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs) = v11;
  (*(v8 + 16))(v10, a1, v7);
  sub_1DEE27FC0(a1, v6, type metadata accessor for PairingRelationship);
  v14 = type metadata accessor for PairingRelationship(0);
  (*(*(v14 - 8) + 56))(v6, 0, 1, v14);
  swift_beginAccess();
  sub_1DEF32880(v6, v10);
  swift_endAccess();
  sub_1DEEE4360(a1);
  *(v2 + 48) = 1;
  return v2;
}

uint64_t MetadataInMemoryStore.__allocating_init(pairingRelationships:)(uint64_t a1)
{
  swift_allocObject();
  v2 = sub_1DEF78A84(a1);

  return v2;
}

{
  v2 = swift_allocObject();
  MetadataInMemoryStore.init(pairingRelationships:)(a1);
  return v2;
}

uint64_t MetadataInMemoryStore.init(pairingRelationships:)(uint64_t a1)
{
  v1 = sub_1DEF78A84(a1);

  return v1;
}

{
  v3 = type metadata accessor for PairingRelationship(0);
  v75 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v78 = &v63 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v66 = &v63 - v6;
  v7 = sub_1DEF8D3F8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v79 = &v63 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v65 = &v63 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECDE3C98, &unk_1DEF95610);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v72 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v63 - v15;
  v17 = MEMORY[0x1E69E7CC8];
  v1[2] = MEMORY[0x1E69E7CC8];
  v1[3] = v17;
  v77 = v1 + 3;
  v1[4] = 0;
  v1[5] = 0;
  v1[7] = MEMORY[0x1E69E7CD0];
  v18 = OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_lastAuthKitReconciliationDate;
  v19 = sub_1DEF8D378();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  v20 = 0;
  v64 = v1;
  *(v1 + OBJC_IVAR____TtC16ReplicatorEngine21MetadataInMemoryStore_clientDefinedIDs) = v17;
  v67 = a1;
  v21 = a1 + 64;
  v22 = 1 << *(a1 + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & *(a1 + 64);
  v25 = (v22 + 63) >> 6;
  v73 = v8 + 16;
  v74 = v8;
  v76 = (v8 + 32);
  v69 = a1 + 64;
  v70 = (v8 + 8);
  v68 = v25;
  v71 = v16;
  while (v24)
  {
    v26 = v20;
LABEL_16:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = v30 | (v26 << 6);
    v32 = v67;
    v33 = v74;
    v34 = v65;
    (*(v74 + 16))(v65, *(v67 + 48) + *(v74 + 72) * v31, v7);
    v35 = v66;
    sub_1DEE27FC0(*(v32 + 56) + *(v75 + 72) * v31, v66, type metadata accessor for PairingRelationship);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    v37 = *(v36 + 48);
    v38 = *(v33 + 32);
    v29 = v72;
    v38(v72, v34, v7);
    sub_1DEE13A90(v35, v29 + v37, type metadata accessor for PairingRelationship);
    (*(*(v36 - 8) + 56))(v29, 0, 1, v36);
LABEL_17:
    v39 = v71;
    sub_1DEF78EC8(v29, v71);
    v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
    if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
    {

      result = v64;
      *(v64 + 48) = 1;
      return result;
    }

    v41 = *(v40 + 48);
    v42 = v79;
    v43 = v7;
    (*v76)(v79, v39, v7);
    v44 = v77;
    swift_beginAccess();
    sub_1DEE13A90(v39 + v41, v78, type metadata accessor for PairingRelationship);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v80 = *v44;
    v46 = v80;
    *v44 = 0x8000000000000000;
    v48 = sub_1DEEAF350(v42);
    v49 = v46[2];
    v50 = (v47 & 1) == 0;
    v51 = v49 + v50;
    if (__OFADD__(v49, v50))
    {
      goto LABEL_32;
    }

    v52 = v47;
    if (v46[3] >= v51)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v55 = v80;
        if (v47)
        {
          goto LABEL_4;
        }
      }

      else
      {
        sub_1DEEB7B04();
        v55 = v80;
        if (v52)
        {
          goto LABEL_4;
        }
      }
    }

    else
    {
      sub_1DEEB1C0C(v51, isUniquelyReferenced_nonNull_native);
      v53 = sub_1DEEAF350(v79);
      if ((v52 & 1) != (v54 & 1))
      {
        goto LABEL_34;
      }

      v48 = v53;
      v55 = v80;
      if (v52)
      {
LABEL_4:
        sub_1DEF78F38(v78, v55[7] + *(v75 + 72) * v48);
        v7 = v43;
        (*v70)(v79, v43);
        goto LABEL_5;
      }
    }

    v55[(v48 >> 6) + 8] |= 1 << v48;
    v56 = v74;
    v57 = v79;
    v7 = v43;
    (*(v74 + 16))(v55[6] + *(v74 + 72) * v48, v79, v43);
    sub_1DEE13A90(v78, v55[7] + *(v75 + 72) * v48, type metadata accessor for PairingRelationship);
    (*(v56 + 8))(v57, v43);
    v58 = v55[2];
    v59 = __OFADD__(v58, 1);
    v60 = v58 + 1;
    if (v59)
    {
      goto LABEL_33;
    }

    v55[2] = v60;
LABEL_5:
    *v77 = v55;

    swift_endAccess();
    v25 = v68;
    v21 = v69;
  }

  if (v25 <= v20 + 1)
  {
    v27 = v20 + 1;
  }

  else
  {
    v27 = v25;
  }

  v28 = v27 - 1;
  v29 = v72;
  while (1)
  {
    v26 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v26 >= v25)
    {
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECDE4350, &qword_1DEF93400);
      (*(*(v61 - 8) + 56))(v29, 1, 1, v61);
      v24 = 0;
      v20 = v28;
      goto LABEL_17;
    }

    v24 = *(v21 + 8 * v26);
    ++v20;
    if (v24)
    {
      v20 = v26;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  result = sub_1DEF8E6E8();
  __break(1u);
  return result;
}