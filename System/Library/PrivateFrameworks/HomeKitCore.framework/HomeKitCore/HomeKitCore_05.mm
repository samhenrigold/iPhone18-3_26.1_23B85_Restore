uint64_t sub_2531304AC(unint64_t a1, char a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_2530BDB14(a3, a4[7] + 40 * a1);
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

uint64_t sub_253130518(unint64_t a1, uint64_t a2, __int128 *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = sub_253148944();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  result = sub_2530BDB14(a3, a4[7] + 40 * a1);
  v11 = a4[2];
  v12 = __OFADD__(v11, 1);
  v13 = v11 + 1;
  if (v12)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v13;
  }

  return result;
}

uint64_t sub_2531305DC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a6[6];
  v13 = sub_253148534();
  result = (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v15 = (a6[7] + 24 * a1);
  *v15 = a3;
  v15[1] = a4;
  v15[2] = a5;
  v16 = a6[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v18;
  }

  return result;
}

uint64_t sub_2531306B0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  v7 = a4[7];
  v8 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
  result = sub_253131220(a3, v7 + *(*(v8 - 8) + 72) * a1);
  v10 = a4[2];
  v11 = __OFADD__(v10, 1);
  v12 = v10 + 1;
  if (v11)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v12;
  }

  return result;
}

_OWORD *sub_253130744(unint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2530C02F4(a4, (a5[7] + 32 * a1));
  v8 = a5[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v10;
  }

  return result;
}

uint64_t sub_2531307D8(unint64_t *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(_BYTE *, unint64_t))
{
  v50 = a7;
  v13 = sub_253148944();
  v48 = *(v13 - 8);
  v49 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v45 = v42 - v17;
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  if (a4[2] == a3)
  {

    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  result = sub_2531495D4();
  v19 = result;
  if (a2 < 1)
  {
    v20 = 0;
  }

  else
  {
    v20 = *a1;
  }

  v21 = 0;
  v42[2] = v48 + 16;
  v43 = result;
  v22 = result + 64;
  v44 = a1;
  v42[0] = a4;
  v42[1] = v48 + 32;
  while (v20)
  {
    v23 = v16;
    v24 = __clz(__rbit64(v20));
    v46 = (v20 - 1) & v20;
LABEL_16:
    v27 = v24 | (v21 << 6);
    v28 = a4[6];
    v30 = v48;
    v29 = v49;
    v47 = *(v48 + 72);
    v31 = v45;
    (*(v48 + 16))(v45, v28 + v47 * v27, v49);
    sub_2530C25FC(a4[7] + 40 * v27, v52);
    v32 = *(v30 + 32);
    v16 = v23;
    v32(v23, v31, v29);
    v50(v52, v51);
    v19 = v43;
    sub_2531311D8(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    result = sub_253148B04();
    v33 = -1 << *(v19 + 32);
    v34 = result & ~v33;
    v35 = v34 >> 6;
    if (((-1 << v34) & ~*(v22 + 8 * (v34 >> 6))) == 0)
    {
      v37 = 0;
      v38 = (63 - v33) >> 6;
      a1 = v44;
      while (++v35 != v38 || (v37 & 1) == 0)
      {
        v39 = v35 == v38;
        if (v35 == v38)
        {
          v35 = 0;
        }

        v37 |= v39;
        v40 = *(v22 + 8 * v35);
        if (v40 != -1)
        {
          v36 = __clz(__rbit64(~v40)) + (v35 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v36 = __clz(__rbit64((-1 << v34) & ~*(v22 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
    a1 = v44;
LABEL_26:
    *(v22 + ((v36 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v36;
    v32((*(v19 + 48) + v36 * v47), v16, v49);
    result = v50(v51, *(v19 + 56) + 40 * v36);
    ++*(v19 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v42[0];
    v20 = v46;
    if (!a3)
    {
      return v19;
    }
  }

  v25 = v21;
  while (1)
  {
    v21 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v21 >= a2)
    {
      return v19;
    }

    v26 = a1[v21];
    ++v25;
    if (v26)
    {
      v23 = v16;
      v24 = __clz(__rbit64(v26));
      v46 = (v26 - 1) & v26;
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

uint64_t sub_253130B94(unint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v40 = a2;
  v41 = a1;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D00, &qword_253150318);
  v6 = MEMORY[0x28223BE20](v57);
  v53 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v51 = &v39 - v8;
  v9 = sub_253148944();
  result = MEMORY[0x28223BE20](v9);
  v52 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = 0;
  v13 = 0;
  v49 = a3;
  v16 = a3[8];
  v15 = a3 + 8;
  v14 = v16;
  v17 = 1 << *(v15 - 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v14;
  v43 = (v17 + 63) >> 6;
  v46 = v11 + 16;
  v47 = v11;
  v45 = (v11 + 8);
  v48 = result;
  while (v19)
  {
    v25 = __clz(__rbit64(v19));
    v50 = (v19 - 1) & v19;
LABEL_13:
    v28 = v25 | (v13 << 6);
    v29 = v49;
    v30 = *(v47 + 16);
    v31 = v52;
    v30(v52, v49[6] + *(v47 + 72) * v28, v9);
    v32 = v29[7];
    v44 = v28;
    sub_2530C25FC(v32 + 40 * v28, v56);
    v33 = v51;
    v30(v51, v31, v9);
    sub_2530C25FC(v56, v33 + *(v57 + 48));
    v34 = v33;
    v35 = v53;
    sub_253131168(v34, v53);
    if (*(a4 + 16) && (v36 = sub_25311D834(v35), (v37 & 1) != 0))
    {
      sub_2530C25FC(*(a4 + 56) + 40 * v36, v54);
      sub_2530CD33C(v51, &qword_27F581D00, &qword_253150318);
      v20 = 1;
    }

    else
    {
      sub_2530CD33C(v51, &qword_27F581D00, &qword_253150318);
      v20 = 0;
      memset(v54, 0, sizeof(v54));
      v55 = 0;
    }

    v21 = *(v57 + 48);
    sub_2530CD33C(v54, &qword_27F581370, &qword_25314D908);
    v22 = v53;
    __swift_destroy_boxed_opaque_existential_0((v53 + v21));
    v23 = *v45;
    v24 = v22;
    v9 = v48;
    (*v45)(v24, v48);
    __swift_destroy_boxed_opaque_existential_0(v56);
    result = v23(v52, v9);
    v19 = v50;
    if (v20)
    {
      *(v41 + ((v44 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v44;
      if (__OFADD__(v42++, 1))
      {
        __break(1u);
        return sub_2531307D8(v41, v40, v42, v49, &qword_27F580728, &qword_25314C488, sub_2530BDB14);
      }
    }
  }

  v26 = v13;
  while (1)
  {
    v13 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      break;
    }

    if (v13 >= v43)
    {
      return sub_2531307D8(v41, v40, v42, v49, &qword_27F580728, &qword_25314C488, sub_2530BDB14);
    }

    v27 = v15[v13];
    ++v26;
    if (v27)
    {
      v25 = __clz(__rbit64(v27));
      v50 = (v27 - 1) & v27;
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_253130FA8(uint64_t a1, uint64_t a2)
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

      v10 = sub_25312E6AC(v12, v7, a1, a2);
      MEMORY[0x259BFDC60](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      return v10;
    }
  }

  MEMORY[0x28223BE20](v9);
  bzero(v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0), v8);

  v10 = sub_253130B94((v13 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0)), v7, a1, a2);

  if (v2)
  {
    swift_willThrow();
  }

  swift_bridgeObjectRelease_n();
  return v10;
}

uint64_t sub_253131168(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D00, &qword_253150318);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2531311D8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_253131220(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_253131284(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.CoreData.ManagedObjectChangeSet.Delete(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_2531312E8(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = swift_getAssociatedTypeWitness();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_25313142C()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 8))(v0 + v1, AssociatedTypeWitness);
  __swift_destroy_boxed_opaque_existential_0((v0 + *(*v0 + 104)));
  (*(*(v2 - 8) + 8))(v0 + *(*v0 + 112), v2);
  return v0;
}

uint64_t sub_253131590(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v8 = dynamic_cast_existential_2_conditional(a1, a1, &protocol descriptor for CoreDataRepresentable, &protocol descriptor for HomesStore.Model);
  if (v8)
  {
    v11 = v8;
    v12 = v9;
    v13 = *(*v3 + 104);
    v27 = v10;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815E8, &qword_25314E3B0);
    v26 = a3;
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_25314D290;
    v15 = v3;
    *(inited + 32) = sub_2530EB040(v11, v12);
    *(inited + 40) = v16;
    v28 = *(*v3 + 96);
    sub_2530C25FC(v3 + v13, v29);
    v17 = swift_allocObject();
    v18 = *(v7 + 80);
    v17[2] = v18;
    v17[3] = a2;
    v19 = *(v7 + 88);
    v17[4] = v19;
    v17[5] = v26;
    sub_2530BDB14(v29, (v17 + 6));
    v17[11] = v11;
    v17[12] = v12;
    v17[13] = v27;
    v21 = _s5ProxyCMa(0, v18, v19, v20);
    v22 = sub_253148D64();
    WitnessTable = swift_getWitnessTable();
    sub_253146CC4(inited, v15 + v28, sub_2531329B0, v17, v21, v22, WitnessTable);

    swift_setDeallocating();
    result = sub_2530DAA9C(inited + 32);
    if (!v4)
    {
      return v30;
    }
  }

  else
  {
    sub_2530F5D8C();
    swift_allocError();
    *v25 = 0;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_2531317D4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = *v4;
  v10 = dynamic_cast_existential_2_conditional(a1, a1, &protocol descriptor for CoreDataRepresentable, &protocol descriptor for HomesStore.Model);
  if (v10)
  {
    v13 = v10;
    v14 = v11;
    v15 = v12;
    v32 = a2;
    v16 = *(*v4 + 104);
    v17 = v4;
    v18 = sub_2530EB040(v10, v11);
    v30 = v19;
    v31 = v18;
    v29 = *(*v4 + 96);
    sub_2530C25FC(v4 + v16, v33);
    v20 = swift_allocObject();
    v21 = *(v9 + 80);
    v20[2] = v21;
    v20[3] = a3;
    v22 = *(v9 + 88);
    v20[4] = v22;
    v20[5] = a4;
    sub_2530BDB14(v33, (v20 + 6));
    v20[11] = v13;
    v20[12] = v14;
    v20[13] = v15;
    v24 = _s5ProxyCMa(0, v21, v22, v23);
    v25 = sub_253148D64();
    WitnessTable = swift_getWitnessTable();
    sub_253146AE8(v31, v30, v17 + v29, v32, sub_25313296C, v20, v24, v25, WitnessTable);

    if (v5)
    {
    }

    else
    {

      return v34;
    }
  }

  else
  {
    sub_2530F5D8C();
    swift_allocError();
    *v28 = 0;
    return swift_willThrow();
  }
}

uint64_t sub_2531319E8(uint64_t a1)
{
  v36 = *v1;
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 32);
    v4 = MEMORY[0x277D84F90];
    do
    {
      v6 = *v3++;
      v5 = v6;
      if (v6 > 3)
      {
        if (v5 > 5)
        {
          if (v5 == 6)
          {
            v7 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
            v8 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice;
            v9 = &protocol conformance descriptor for HomesStore.Accessory.AppleMediaDevice;
            v10 = &qword_27F5806F0;
          }

          else
          {
            v7 = type metadata accessor for HomesStore.User.SharedSettings(0);
            v8 = type metadata accessor for HomesStore.User.SharedSettings;
            v9 = &protocol conformance descriptor for HomesStore.User.SharedSettings;
            v10 = &unk_27F5806E8;
          }
        }

        else if (v5 == 4)
        {
          v7 = type metadata accessor for HomesStore.User(0);
          v8 = type metadata accessor for HomesStore.User;
          v9 = &protocol conformance descriptor for HomesStore.User;
          v10 = &qword_27F580700;
        }

        else
        {
          v7 = type metadata accessor for HomesStore.Zone(0);
          v8 = type metadata accessor for HomesStore.Zone;
          v9 = &protocol conformance descriptor for HomesStore.Zone;
          v10 = &qword_27F5806F8;
        }
      }

      else if (v5 > 1)
      {
        if (v5 == 2)
        {
          v7 = type metadata accessor for HomesStore.Home(0);
          v8 = type metadata accessor for HomesStore.Home;
          v9 = &protocol conformance descriptor for HomesStore.Home;
          v10 = &qword_27F580710;
        }

        else
        {
          v7 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
          v8 = type metadata accessor for HomesStore.HomesRelationshipModel;
          v9 = &protocol conformance descriptor for HomesStore.HomesRelationshipModel;
          v10 = &qword_27F580708;
        }
      }

      else if (v5)
      {
        v7 = type metadata accessor for HomesStore.Room(0);
        v8 = type metadata accessor for HomesStore.Room;
        v9 = &protocol conformance descriptor for HomesStore.Room;
        v10 = &qword_27F580718;
      }

      else
      {
        v7 = type metadata accessor for HomesStore.Accessory(0);
        v8 = type metadata accessor for HomesStore.Accessory;
        v9 = &protocol conformance descriptor for HomesStore.Accessory;
        v10 = &qword_27F580720;
      }

      v11 = sub_2530F5D1C(v10, v8, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_2530F4904(0, *(v4 + 2) + 1, 1, v4);
      }

      v13 = *(v4 + 2);
      v12 = *(v4 + 3);
      v14 = v13 + 1;
      if (v13 >= v12 >> 1)
      {
        v4 = sub_2530F4904((v12 > 1), v13 + 1, 1, v4);
      }

      *(v4 + 2) = v14;
      v15 = &v4[16 * v13];
      *(v15 + 4) = v7;
      *(v15 + 5) = v11;
      --v2;
    }

    while (v2);
  }

  else
  {
    v4 = MEMORY[0x277D84F90];
    v14 = *(MEMORY[0x277D84F90] + 16);
    v16 = MEMORY[0x277D84F90];
    if (!v14)
    {
      goto LABEL_36;
    }
  }

  v16 = MEMORY[0x277D84F90];
  v17 = 32;
  do
  {
    v19 = *&v4[v17];
    v20 = swift_conformsToProtocol2();
    if (v20)
    {
      v21 = v19 == 0;
    }

    else
    {
      v21 = 1;
    }

    if (!v21)
    {
      v22 = sub_2530EB040(v19, v20);
      v24 = v23;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_2530F459C(0, *(v16 + 2) + 1, 1, v16);
      }

      v26 = *(v16 + 2);
      v25 = *(v16 + 3);
      if (v26 >= v25 >> 1)
      {
        v16 = sub_2530F459C((v25 > 1), v26 + 1, 1, v16);
      }

      *(v16 + 2) = v26 + 1;
      v18 = &v16[16 * v26];
      *(v18 + 4) = v22;
      *(v18 + 5) = v24;
    }

    v17 += 16;
    --v14;
  }

  while (v14);
LABEL_36:

  v27 = *(*v37 + 96);
  sub_2530C25FC(v37 + *(*v37 + 104), v39);
  v28 = swift_allocObject();
  v29 = *(v36 + 80);
  *(v28 + 16) = v29;
  v30 = *(v36 + 88);
  *(v28 + 24) = v30;
  sub_2530BDB14(v39, v28 + 32);
  v32 = _s5ProxyCMa(0, v29, v30, v31);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5815E0, &qword_25314E3A8);
  WitnessTable = swift_getWitnessTable();
  sub_253146CC4(v16, v37 + v27, sub_25313294C, v28, v32, v33, WitnessTable);

  if (v38)
  {
  }

  return v40;
}

uint64_t sub_253131F2C@<X0>(uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  swift_getAssociatedTypeWitness();
  sub_253148D64();
  swift_getWitnessTable();
  result = sub_253148C34();
  if (!v11)
  {
    *a9 = result;
  }

  return result;
}

uint64_t sub_253131FF8@<X0>(uint64_t *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X6>, uint64_t a6@<X8>)
{
  v11 = *a1;
  v12 = a2[3];
  v13 = a2[4];
  v14 = __swift_project_boxed_opaque_existential_1(a2, v12);
  MEMORY[0x28223BE20](v14);
  result = (*(v13 + 40))(v11, a3, a3, a4, v12, v13);
  if (!v6)
  {
    v16 = swift_dynamicCast();
    return (*(*(a5 - 8) + 56))(a6, v16 ^ 1u, 1, a5);
  }

  return result;
}

uint64_t sub_253132138@<X0>(uint64_t a1@<X0>, void *a2@<X1>, void *a5@<X8>)
{
  v6 = v5;
  v44 = a2;
  v38 = a5;
  v43 = sub_253148944();
  v8 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v46 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  result = sub_253148D44();
  if (!result)
  {
    v13 = MEMORY[0x277D84F98];
LABEL_23:
    *v38 = v13;
    return result;
  }

  v12 = 0;
  v39 = v8 + 16;
  v40 = v8;
  v42 = (v8 + 8);
  v13 = MEMORY[0x277D84F98];
  v41 = AssociatedTypeWitness;
  while (1)
  {
    v15 = sub_253148CF4();
    sub_253148CC4();
    if ((v15 & 1) == 0)
    {
      break;
    }

    v16 = *(a1 + 8 * v12 + 32);
    swift_unknownObjectRetain();
    v17 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      goto LABEL_25;
    }

LABEL_7:
    v18 = v44[3];
    v19 = v44[4];
    __swift_project_boxed_opaque_existential_1(v44, v18);
    (*(v19 + 32))(v48, v16, v18, v19);
    if (v6)
    {

      return swift_unknownObjectRelease();
    }

    v45 = 0;
    v20 = a1;
    __swift_project_boxed_opaque_existential_1(v48, v48[3]);
    v21 = v46;
    sub_2531493D4();
    sub_2530C25FC(v48, v47);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v49 = v13;
    v24 = sub_25311D834(v21);
    v25 = v13[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_26;
    }

    v28 = v23;
    if (v13[3] >= v27)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v13 = v49;
        if (v23)
        {
          goto LABEL_3;
        }
      }

      else
      {
        sub_25312B6DC();
        v13 = v49;
        if (v28)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
      sub_25312C8DC(v27, isUniquelyReferenced_nonNull_native);
      v29 = sub_25311D834(v46);
      if ((v28 & 1) != (v30 & 1))
      {
        goto LABEL_28;
      }

      v24 = v29;
      v13 = v49;
      if (v28)
      {
LABEL_3:
        v14 = (v13[7] + 40 * v24);
        __swift_destroy_boxed_opaque_existential_0(v14);
        sub_2530BDB14(v47, v14);
        swift_unknownObjectRelease();
        (*v42)(v46, v43);
        goto LABEL_4;
      }
    }

    v13[(v24 >> 6) + 8] |= 1 << v24;
    v31 = v40;
    v32 = v46;
    v33 = v43;
    (*(v40 + 16))(v13[6] + *(v40 + 72) * v24, v46, v43);
    sub_2530BDB14(v47, v13[7] + 40 * v24);
    swift_unknownObjectRelease();
    (*(v31 + 8))(v32, v33);
    v34 = v13[2];
    v35 = __OFADD__(v34, 1);
    v36 = v34 + 1;
    if (v35)
    {
      goto LABEL_27;
    }

    v13[2] = v36;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_0(v48);
    a1 = v20;
    result = sub_253148D44();
    ++v12;
    v6 = v45;
    if (v17 == result)
    {
      goto LABEL_23;
    }
  }

  v16 = sub_2531493F4();
  v17 = v12 + 1;
  if (!__OFADD__(v12, 1))
  {
    goto LABEL_7;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  result = sub_253149784();
  __break(1u);
  return result;
}

uint64_t sub_25313252C()
{
  sub_25313142C();

  return swift_deallocClassInstance();
}

uint64_t sub_253132630(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

char *sub_25313266C(uint64_t a1, __int128 *a2)
{
  v3 = v2;
  v19 = a1;
  v20 = a2;
  v4 = *v2;
  v5 = *(*v2 + 88);
  v6 = *(*v2 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v17 - v9;
  v11 = *(v6 - 8);
  MEMORY[0x28223BE20](v8);
  v13 = &v17 - v12;
  v14 = *(v4 + 112);
  v15 = *(v11 + 16);
  v15(&v3[v14], v19, v6);
  v15(v13, &v3[v14], v6);
  (*(v5 + 56))(v6, v5);
  (*(v11 + 8))(v13, v6);
  (*(v7 + 32))(&v3[*(*v3 + 96)], v10, AssociatedTypeWitness);
  sub_2530BDB14(v20, &v3[*(*v3 + 104)]);
  return v3;
}

char *sub_2531328F8(uint64_t a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  _s5ProxyCMa(0, *(v4 + 80), *(v4 + 88), a4);
  swift_allocObject();
  return sub_25313266C(a1, a2);
}

uint64_t HomesStore.Zone.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomesStore.Zone.name.getter()
{
  v1 = *(v0 + *(type metadata accessor for HomesStore.Zone(0) + 20));

  return v1;
}

uint64_t type metadata accessor for HomesStore.Zone(uint64_t a1)
{
  result = qword_27F5823B0;
  if (!qword_27F5823B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t static HomesStore.Zone.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for HomesStore.Zone(0) + 20);
  v5 = *(a1 + v4);
  v6 = *(a1 + v4 + 8);
  v7 = (a2 + v4);
  if (v5 == *v7 && v6 == v7[1])
  {
    return 1;
  }

  return sub_253149734();
}

uint64_t sub_253132BE0(uint64_t a1)
{
  v2 = sub_253132E14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253132C1C(uint64_t a1)
{
  v2 = sub_253132E14();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.Zone.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582360, &qword_2531511D8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253132E14();
  sub_253149894();
  v8[15] = 0;
  sub_253148944();
  sub_2531338A0(&qword_27F580630, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2531496D4();
  if (!v1)
  {
    type metadata accessor for HomesStore.Zone(0);
    v8[14] = 1;
    sub_2531496B4();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_253132E14()
{
  result = qword_27F582368;
  if (!qword_27F582368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582368);
  }

  return result;
}

uint64_t HomesStore.Zone.hash(into:)(uint64_t a1)
{
  sub_253148944();
  sub_2531338A0(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  type metadata accessor for HomesStore.Zone(0);

  return sub_253148BB4();
}

uint64_t HomesStore.Zone.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_2531338A0(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  type metadata accessor for HomesStore.Zone(0);
  sub_253148BB4();
  return sub_253149844();
}

uint64_t HomesStore.Zone.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = sub_253148944();
  v25 = *(v4 - 8);
  v26 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582370, &qword_2531511E0);
  v24 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v8 = &v22 - v7;
  v9 = type metadata accessor for HomesStore.Zone(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253132E14();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v11;
  v12 = v24;
  v13 = v25;
  v29 = 0;
  sub_2531338A0(&qword_27F5805E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v14 = v26;
  sub_253149664();
  (*(v13 + 32))(v22, v6, v14);
  v28 = 1;
  v15 = sub_253149644();
  v17 = v16;
  (*(v12 + 8))(v8, v27);
  v19 = v22;
  v18 = v23;
  v20 = &v22[*(v9 + 20)];
  *v20 = v15;
  v20[1] = v17;
  sub_253133500(v19, v18);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_253133564(v19);
}

uint64_t sub_253133318(uint64_t a1)
{
  sub_253149814();
  sub_253148944();
  sub_2531338A0(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_2531333C0(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_2531338A0(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();

  return sub_253148BB4();
}

uint64_t sub_25313345C(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148944();
  sub_2531338A0(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_253148BB4();
  return sub_253149844();
}

uint64_t sub_253133500(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Zone(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253133564(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.Zone(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PartialModelRelationshipDescriptor<>.zone.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582378, &qword_2531511E8);

  return MEMORY[0x2821FEAF0](v0, &unk_27F580418);
}

uint64_t sub_253133600(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5823D8, &qword_253151478);
  swift_allocObject();

  v3 = sub_2531432E4(v2);

  qword_27F582358 = v3;
  return result;
}

uint64_t sub_2531336CC(void *a1)
{
  a1[1] = sub_2531338A0(&qword_27F582380, type metadata accessor for HomesStore.Zone, &protocol conformance descriptor for HomesStore.Zone);
  a1[2] = sub_2531338A0(&qword_27F582388, type metadata accessor for HomesStore.Zone, &protocol conformance descriptor for HomesStore.Zone);
  a1[3] = sub_2531338A0(&qword_27F582390, type metadata accessor for HomesStore.Zone, &protocol conformance descriptor for HomesStore.Zone);
  a1[4] = sub_2531338A0(&qword_27F582398, type metadata accessor for HomesStore.Zone, &protocol conformance descriptor for HomesStore.Zone);
  result = sub_2531338A0(&qword_27F5823A0, type metadata accessor for HomesStore.Zone, &protocol conformance descriptor for HomesStore.Zone);
  a1[5] = result;
  return result;
}

uint64_t sub_2531338A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_253133924()
{
  result = qword_27F5823C0;
  if (!qword_27F5823C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5823C0);
  }

  return result;
}

unint64_t sub_25313397C()
{
  result = qword_27F5823C8;
  if (!qword_27F5823C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5823C8);
  }

  return result;
}

unint64_t sub_2531339D4()
{
  result = qword_27F5823D0;
  if (!qword_27F5823D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5823D0);
  }

  return result;
}

uint64_t Array<A>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_253148D64();
  swift_getWitnessTable();
  return sub_253148C44();
}

uint64_t sub_253133AC0(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return (*(AssociatedConformanceWitness + 48))(AssociatedTypeWitness, AssociatedConformanceWitness);
}

uint64_t ComposableModelDescriptor.id.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = &v9 - v6;
  (*(a2 + 32))(a1, a2);
  swift_getAssociatedConformanceWitness();
  sub_2531493D4();
  return (*(v5 + 8))(v7, AssociatedTypeWitness);
}

uint64_t sub_253133C8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_253148944();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2531493D4();
  v8 = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
  (*(v5 + 8))(v7, v4);
  return v8 & 1;
}

uint64_t sub_253133DCC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  v10 = sub_253148944();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2530CD26C(a1, v9, a3, a4);
  (*(v11 + 32))(v13, v9, v10);
  v14 = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
  (*(v11 + 8))(v13, v10);
  return v14 & 1;
}

uint64_t sub_253133F40@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  MEMORY[0x28223BE20](v7);
  v11 = &v18 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v18 = v9;
    v19 = v8;
    v20 = a3;
    v13 = a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
    v14 = *(v9 + 72);
    while (1)
    {
      sub_2530CD26C(v13, v11, &qword_27F5816A0, &qword_253151500);
      v15 = a1(v11);
      if (v3)
      {
        return sub_2530CD33C(v11, &qword_27F5816A0, &qword_253151500);
      }

      if (v15)
      {
        break;
      }

      sub_2530CD33C(v11, &qword_27F5816A0, &qword_253151500);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v20;
        goto LABEL_10;
      }
    }

    a3 = v20;
    sub_2530CD2D4(v11, v20, &qword_27F5816A0, &qword_253151500);
    v16 = 0;
LABEL_10:
    v9 = v18;
    v8 = v19;
  }

  else
  {
    v16 = 1;
  }

  return (*(v9 + 56))(a3, v16, 1, v8);
}

uint64_t sub_25313410C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t (*a5)(void)@<X5>, uint64_t a6@<X8>)
{
  v24 = a5;
  v11 = a3(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v15 = &v22 - v14;
  v16 = *(a2 + 16);
  if (v16)
  {
    v22 = v13;
    v23 = a6;
    v17 = a2 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v18 = *(v12 + 72);
    while (1)
    {
      sub_25313A0D4(v17, v15, a4);
      v19 = a1(v15);
      if (v6)
      {
        return sub_25313A13C(v15, a4);
      }

      if (v19)
      {
        break;
      }

      sub_25313A13C(v15, a4);
      v17 += v18;
      if (!--v16)
      {
        v20 = 1;
        a6 = v23;
        goto LABEL_10;
      }
    }

    a6 = v23;
    sub_25313C0D0(v15, v23, v24);
    v20 = 0;
LABEL_10:
    v13 = v22;
  }

  else
  {
    v20 = 1;
  }

  return (*(v12 + 56))(a6, v20, 1, v13);
}

uint64_t HomesStore.HomesRelationshipModel.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_25313437C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v62 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v60 = &v47 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v47 - v7;
  v59 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v61 = *(v59 - 8);
  v9 = MEMORY[0x28223BE20](v59);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v47 - v12;
  v57 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v14 = MEMORY[0x28223BE20](v57);
  v16 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v19 = &v47 - v18;
  v20 = *(a1 + 16);
  if (v20 != *(a2 + 16))
  {
LABEL_30:
    v46 = 0;
    return v46 & 1;
  }

  if (!v20 || a1 == a2)
  {
    v46 = 1;
    return v46 & 1;
  }

  v21 = 0;
  v22 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v23 = a1 + v22;
  v50 = *(a1 + 16);
  v51 = a2 + v22;
  v24 = *(v17 + 72);
  v53 = &v47 - v18;
  v54 = v16;
  v48 = v24;
  v49 = a1 + v22;
  while (1)
  {
    v25 = v24 * v21;
    result = sub_25313A0D4(v23 + v24 * v21, v19, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    if (v21 == v20)
    {
      break;
    }

    v52 = v21;
    sub_25313A0D4(v51 + v25, v16, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    result = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
    if ((result & 1) == 0 || (v27 = v57[5], v28 = *&v53[v27], v29 = *&v54[v27], v30 = *(v28 + 16), v30 != *(v29 + 16)))
    {
LABEL_29:
      sub_25313A13C(v54, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      sub_25313A13C(v53, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      goto LABEL_30;
    }

    if (v30 && v28 != v29)
    {
      v31 = 0;
      v32 = (*(v61 + 80) + 32) & ~*(v61 + 80);
      v58 = v28 + v32;
      v56 = v29 + v32;
      while (v31 < *(v28 + 16))
      {
        v33 = *(v61 + 72) * v31;
        result = sub_25313A0D4(v58 + v33, v13, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        if (v31 >= *(v29 + 16))
        {
          goto LABEL_35;
        }

        sub_25313A0D4(v56 + v33, v11, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
        {
          sub_25313A13C(v11, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
          sub_25313A13C(v13, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
          goto LABEL_29;
        }

        v34 = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
        sub_25313A13C(v11, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        result = sub_25313A13C(v13, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
        if ((v34 & 1) == 0)
        {
          goto LABEL_29;
        }

        if (v30 == ++v31)
        {
          goto LABEL_16;
        }
      }

      goto LABEL_34;
    }

LABEL_16:
    v35 = v57[6];
    v36 = *&v53[v35];
    v37 = *&v54[v35];
    v38 = *(v37 + 16);
    v58 = *(v36 + 16);
    if (v58 != v38)
    {
      goto LABEL_29;
    }

    if (v58 && v36 != v37)
    {
      v39 = 0;
      v40 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v55 = v37 + v40;
      v56 = v36 + v40;
      while (v39 < *(v36 + 16))
      {
        v41 = *(v62 + 72) * v39;
        result = sub_2530CD26C(v56 + v41, v8, &qword_27F5816A0, &qword_253151500);
        if (v39 >= *(v37 + 16))
        {
          goto LABEL_33;
        }

        v42 = v8;
        v43 = v60;
        sub_2530CD26C(v55 + v41, v60, &qword_27F5816A0, &qword_253151500);
        v44 = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
        v45 = v43;
        v8 = v42;
        sub_2530CD33C(v45, &qword_27F5816A0, &qword_253151500);
        result = sub_2530CD33C(v42, &qword_27F5816A0, &qword_253151500);
        if ((v44 & 1) == 0)
        {
          goto LABEL_29;
        }

        if (v58 == ++v39)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      break;
    }

LABEL_24:
    v19 = v53;
    v16 = v54;
    v46 = sub_253134D24(*&v53[v57[7]], *&v54[v57[7]]);
    sub_25313A13C(v16, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    sub_25313A13C(v19, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    if (v46)
    {
      v21 = v52 + 1;
      v23 = v49;
      v20 = v50;
      v24 = v48;
      if (v52 + 1 != v50)
      {
        continue;
      }
    }

    return v46 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_253134964(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
LABEL_11:
    v16 = 0;
    return v16 & 1;
  }

  if (v11 && a1 != a2)
  {
    v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
    v13 = a1 + v12;
    v14 = a2 + v12;
    v15 = *(v8 + 72);
    while (1)
    {
      sub_25313A0D4(v13, v10, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      sub_25313A0D4(v14, v7, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
      {
        break;
      }

      v16 = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
      sub_25313A13C(v7, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      sub_25313A13C(v10, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      if (v16)
      {
        v14 += v15;
        v13 += v15;
        if (--v11)
        {
          continue;
        }
      }

      return v16 & 1;
    }

    sub_25313A13C(v7, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
    sub_25313A13C(v10, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
    goto LABEL_11;
  }

  v16 = 1;
  return v16 & 1;
}

uint64_t sub_253134B6C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500) - 8;
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v10 = &v18 - v9;
  v11 = *(a1 + 16);
  if (v11 == *(a2 + 16))
  {
    if (!v11 || a1 == a2)
    {
      v16 = 1;
    }

    else
    {
      v12 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v13 = a1 + v12;
      v14 = a2 + v12;
      v15 = *(v8 + 72);
      do
      {
        sub_2530CD26C(v13, v10, &qword_27F5816A0, &qword_253151500);
        sub_2530CD26C(v14, v7, &qword_27F5816A0, &qword_253151500);
        v16 = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
        sub_2530CD33C(v7, &qword_27F5816A0, &qword_253151500);
        sub_2530CD33C(v10, &qword_27F5816A0, &qword_253151500);
        if ((v16 & 1) == 0)
        {
          break;
        }

        v14 += v15;
        v13 += v15;
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v16 = 0;
  }

  return v16 & 1;
}

uint64_t sub_253134D24(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4 - 8);
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v33 - v9;
  v11 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v18 = &v33 - v17;
  v19 = *(a1 + 16);
  if (v19 != *(a2 + 16))
  {
    return 0;
  }

  if (!v19 || a1 == a2)
  {
    return 1;
  }

  v33 = v5;
  v34 = v19;
  v20 = 0;
  v21 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v35 = v15;
  v36 = a2 + v21;
  v37 = *(v16 + 72);
  v38 = a1 + v21;
  v39 = &v33 - v17;
  v40 = v14;
  while (1)
  {
    v23 = v37 * v20;
    result = sub_25313A0D4(v38 + v37 * v20, v18, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
    if (v20 == v19)
    {
      break;
    }

    sub_25313A0D4(v36 + v23, v14, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
    if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
    {
      goto LABEL_16;
    }

    v24 = *(v35 + 20);
    v25 = *&v39[v24];
    v26 = *&v40[v24];
    v27 = *(v25 + 16);
    if (v27 != *(v26 + 16))
    {
      goto LABEL_16;
    }

    if (v27 && v25 != v26)
    {
      v28 = (*(v33 + 80) + 32) & ~*(v33 + 80);
      v29 = v25 + v28;
      v30 = v26 + v28;
      v31 = *(v33 + 72);
      while (1)
      {
        sub_2530CD26C(v29, v10, &qword_27F5816A0, &qword_253151500);
        sub_2530CD26C(v30, v8, &qword_27F5816A0, &qword_253151500);
        v32 = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
        sub_2530CD33C(v8, &qword_27F5816A0, &qword_253151500);
        sub_2530CD33C(v10, &qword_27F5816A0, &qword_253151500);
        if ((v32 & 1) == 0)
        {
          break;
        }

        v30 += v31;
        v29 += v31;
        if (!--v27)
        {
          goto LABEL_5;
        }
      }

LABEL_16:
      sub_25313A13C(v40, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
      sub_25313A13C(v39, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
      return 0;
    }

LABEL_5:
    ++v20;
    v14 = v40;
    sub_25313A13C(v40, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
    v18 = v39;
    sub_25313A13C(v39, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
    result = 1;
    v19 = v34;
    if (v20 == v34)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2531350A8()
{
  if (*v0)
  {
    return 0x73656D6F68;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_2531350D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v5 || (sub_253149734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x73656D6F68 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_253149734();

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

uint64_t sub_2531351A4(uint64_t a1)
{
  v2 = sub_253135400();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2531351E0(uint64_t a1)
{
  v2 = sub_253135400();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.HomesRelationshipModel.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5823E0, &qword_2531514E0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253135400();
  sub_253149894();
  v12 = 0;
  sub_253148944();
  sub_253135508(&qword_27F580630, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2531496D4();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for HomesStore.HomesRelationshipModel(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5823F0, &qword_2531514E8);
    sub_253135454();
    sub_2531496D4();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t sub_253135400()
{
  result = qword_27F5823E8;
  if (!qword_27F5823E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5823E8);
  }

  return result;
}

unint64_t sub_253135454()
{
  result = qword_27F5823F8;
  if (!qword_27F5823F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5823F0, &qword_2531514E8);
    sub_253135508(&qword_27F582400, type metadata accessor for HomesStore.HomesRelationshipModel.Home, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Home);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5823F8);
  }

  return result;
}

uint64_t sub_253135508(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t HomesStore.HomesRelationshipModel.hash(into:)(uint64_t a1)
{
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  v3 = *(v1 + *(type metadata accessor for HomesStore.HomesRelationshipModel(0) + 20));

  return sub_2531399C4(a1, v3);
}

uint64_t HomesStore.HomesRelationshipModel.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  v1 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
  sub_2531399C4(v3, *(v0 + *(v1 + 20)));
  return sub_253149844();
}

uint64_t HomesStore.HomesRelationshipModel.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v26 = sub_253148944();
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582408, &qword_2531514F0);
  v7 = *(v6 - 8);
  v24 = v6;
  v25 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v20 - v8;
  v10 = type metadata accessor for HomesStore.HomesRelationshipModel(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253135400();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = v10;
  v13 = v12;
  v14 = v23;
  v29 = 0;
  sub_253135508(&qword_27F5805E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v15 = v26;
  v16 = v24;
  sub_253149664();
  v17 = *(v14 + 32);
  v20 = v13;
  v17(v13, v5, v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5823F0, &qword_2531514E8);
  v28 = 1;
  sub_253139FAC();
  sub_253149664();
  (*(v25 + 8))(v9, v16);
  v18 = v20;
  *(v20 + *(v21 + 20)) = v27;
  sub_25313A0D4(v18, v22, type metadata accessor for HomesStore.HomesRelationshipModel);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25313A13C(v18, type metadata accessor for HomesStore.HomesRelationshipModel);
}

uint64_t sub_253135A6C(uint64_t a1)
{
  sub_253149814();
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_2531399C4(v4, *(v1 + *(a1 + 20)));
  return sub_253149844();
}

uint64_t sub_253135B10(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  v5 = *(v2 + *(a2 + 20));

  return sub_2531399C4(a1, v5);
}

uint64_t sub_253135BA8(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_2531399C4(v5, *(v2 + *(a2 + 20)));
  return sub_253149844();
}

uint64_t static HomesStore.HomesRelationshipModel.Accessory.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);

  return _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t sub_253135D38()
{
  if (*v0)
  {
    return 1836019570;
  }

  else
  {
    return 0x6373654465736162;
  }
}

uint64_t sub_253135D78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6373654465736162 && a2 == 0xEE00726F74706972;
  if (v6 || (sub_253149734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1836019570 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_253149734();

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

uint64_t sub_253135E5C(uint64_t a1)
{
  v2 = sub_25313A080();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253135E98(uint64_t a1)
{
  v2 = sub_25313A080();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.HomesRelationshipModel.Accessory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582428, &qword_253151508);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313A080();
  sub_253149894();
  v10 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582420, &qword_2531514F8);
  sub_25313B148(&qword_27F582438, &qword_27F582420, &qword_2531514F8, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
  sub_2531496D4();
  if (!v1)
  {
    type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
    v9 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
    sub_25313B148(&qword_27F582440, &qword_27F5816A0, &qword_253151500, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
    sub_2531496D4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t HomesStore.HomesRelationshipModel.Accessory.hash(into:)(uint64_t a1)
{
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  return sub_253148B14();
}

uint64_t HomesStore.HomesRelationshipModel.Accessory.hashValue.getter()
{
  sub_253149814();
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  sub_253148B14();
  return sub_253149844();
}

uint64_t HomesStore.HomesRelationshipModel.Accessory.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  MEMORY[0x28223BE20](v20);
  v5 = &v17 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582420, &qword_2531514F8);
  MEMORY[0x28223BE20](v22);
  v23 = &v17 - v6;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582448, &qword_253151510);
  v21 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v8 = &v17 - v7;
  v9 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313A080();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v18 = a1;
  v12 = v21;
  v13 = v11;
  v26 = 0;
  sub_25313B148(&qword_27F582450, &qword_27F582420, &qword_2531514F8, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
  v14 = v23;
  v15 = v24;
  sub_253149664();
  sub_2530CD2D4(v14, v13, &qword_27F582420, &qword_2531514F8);
  v25 = 1;
  sub_25313B148(&qword_27F582458, &qword_27F5816A0, &qword_253151500, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
  sub_253149664();
  (*(v12 + 8))(v8, v15);
  sub_2530CD2D4(v5, v13 + *(v9 + 20), &qword_27F5816A0, &qword_253151500);
  sub_25313A0D4(v13, v19, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
  __swift_destroy_boxed_opaque_existential_0(v18);
  return sub_25313A13C(v13, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
}

uint64_t sub_253136668()
{
  sub_253149814();
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_253136718(uint64_t a1)
{
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  return sub_253148B14();
}

uint64_t sub_2531367B8(uint64_t a1)
{
  sub_253149814();
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  sub_253148B14();
  return sub_253149844();
}

uint64_t sub_253136864(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  return _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
}

uint64_t sub_253136914(uint64_t (*a1)(void))
{
  a1(0);
}

uint64_t sub_25313697C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t))
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v7 = *(a3(0) + 20);
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);

  return a4(v8, v9);
}

uint64_t sub_253136A08()
{
  if (*v0)
  {
    return 0x736D6F6F72;
  }

  else
  {
    return 0x6373654465736162;
  }
}

uint64_t sub_253136A4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6373654465736162 && a2 == 0xEE00726F74706972;
  if (v6 || (sub_253149734() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736D6F6F72 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_253149734();

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

uint64_t sub_253136B2C(uint64_t a1)
{
  v2 = sub_25313A1BC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253136B68(uint64_t a1)
{
  v2 = sub_25313A1BC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.HomesRelationshipModel.Zone.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582468, &qword_253151520);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313A1BC();
  sub_253149894();
  v12 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582460, &qword_253151518);
  sub_25313B148(&qword_27F582478, &qword_27F582460, &qword_253151518, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
  sub_2531496D4();
  if (!v2)
  {
    v11 = *(v3 + *(type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0) + 20));
    v10[15] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582480, &qword_253151528);
    sub_25313A210(&qword_27F582488, &qword_27F582440, &protocol conformance descriptor for ModelIdentifierDescriptor<A>, MEMORY[0x277D83948]);
    sub_2531496D4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t HomesStore.HomesRelationshipModel.Zone.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v5 = &v11 - v4;
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  v6 = *(v1 + *(type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0) + 20));
  result = MEMORY[0x259BFD420](*(v6 + 16));
  v8 = *(v6 + 16);
  if (v8)
  {
    v9 = v6 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    do
    {
      sub_2530CD26C(v9, v5, &qword_27F5816A0, &qword_253151500);
      sub_253148B14();
      result = sub_2530CD33C(v5, &qword_27F5816A0, &qword_253151500);
      v9 += v10;
      --v8;
    }

    while (v8);
  }

  return result;
}

uint64_t HomesStore.HomesRelationshipModel.Zone.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582460, &qword_253151518);
  MEMORY[0x28223BE20](v4);
  v20 = &v16 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582490, &qword_253151530);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313A1BC();
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v11;
  v13 = v18;
  v23 = 0;
  sub_25313B148(&qword_27F582498, &qword_27F582460, &qword_253151518, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
  v14 = v19;
  sub_253149664();
  sub_2530CD2D4(v20, v12, &qword_27F582460, &qword_253151518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582480, &qword_253151528);
  v22 = 1;
  sub_25313A210(&qword_27F5824A0, &qword_27F582458, &protocol conformance descriptor for ModelIdentifierDescriptor<A>, MEMORY[0x277D83978]);
  sub_253149664();
  (*(v13 + 8))(v8, v14);
  *(v12 + *(v9 + 20)) = v21;
  sub_25313A0D4(v12, v17, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25313A13C(v12, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
}

uint64_t sub_253137328@<X0>(uint64_t *a1@<X2>, uint64_t *a2@<X3>, uint64_t a3@<X8>)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v12 - v8;
  sub_2530CD26C(v3, &v12 - v8, a1, a2);
  v10 = sub_253148944();
  return (*(*(v10 - 8) + 32))(a3, v9, v10);
}

uint64_t sub_253137474(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v8 = *(a3 + 20);
  v9 = *(a1 + v8);
  v10 = *(a2 + v8);

  return a5(v9, v10);
}

uint64_t HomesStore.HomesRelationshipModel.Home.rooms.getter()
{
  type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
}

uint64_t HomesStore.HomesRelationshipModel.Home.zones.getter()
{
  type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
}

uint64_t sub_2531375A8()
{
  v1 = 0x6373654465736162;
  v2 = 0x736D6F6F72;
  if (*v0 != 2)
  {
    v2 = 0x73656E6F7ALL;
  }

  if (*v0)
  {
    v1 = 0x726F737365636361;
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

uint64_t sub_253137630@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25313BF08(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_253137658(uint64_t a1)
{
  v2 = sub_25313A600();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253137694(uint64_t a1)
{
  v2 = sub_25313A600();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.HomesRelationshipModel.Home.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824B0, &qword_253151540);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313A600();
  sub_253149894();
  LOBYTE(v12) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824A8, &qword_253151538);
  sub_25313B148(&qword_27F5824C0, &qword_27F5824A8, &qword_253151538, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
  sub_2531496D4();
  if (!v2)
  {
    v9 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
    v12 = *(v3 + v9[5]);
    HIBYTE(v11) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824C8, &qword_253151548);
    sub_25313A654();
    sub_2531496D4();
    v12 = *(v3 + v9[6]);
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582480, &qword_253151528);
    sub_25313A210(&qword_27F582488, &qword_27F582440, &protocol conformance descriptor for ModelIdentifierDescriptor<A>, MEMORY[0x277D83948]);
    sub_2531496D4();
    v12 = *(v3 + v9[7]);
    HIBYTE(v11) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824E0, &qword_253151550);
    sub_25313A708();
    sub_2531496D4();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t HomesStore.HomesRelationshipModel.Home.hash(into:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v19 - v4;
  v6 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  v20 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v21 = v1;
  v10 = *(v1 + v20[5]);
  MEMORY[0x259BFD420](*(v10 + 16));
  v11 = *(v10 + 16);
  if (v11)
  {
    v22 = *(v6 + 20);
    v12 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v13 = *(v7 + 72);
    do
    {
      sub_25313A0D4(v12, v9, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      sub_253148B14();
      sub_253148B14();
      sub_25313A13C(v9, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      v12 += v13;
      --v11;
    }

    while (v11);
  }

  v14 = *(v21 + v20[6]);
  MEMORY[0x259BFD420](*(v14 + 16));
  v15 = *(v14 + 16);
  if (v15)
  {
    v16 = v14 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
    v17 = *(v19 + 72);
    do
    {
      sub_2530CD26C(v16, v5, &qword_27F5816A0, &qword_253151500);
      sub_253148B14();
      sub_2530CD33C(v5, &qword_27F5816A0, &qword_253151500);
      v16 += v17;
      --v15;
    }

    while (v15);
  }

  return sub_25313A2A8(a1, *(v21 + v20[7]));
}

uint64_t sub_253137C98(uint64_t (*a1)(void *))
{
  sub_253149814();
  a1(v3);
  return sub_253149844();
}

uint64_t HomesStore.HomesRelationshipModel.Home.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824A8, &qword_253151538);
  MEMORY[0x28223BE20](v4);
  v18 = &v16 - v5;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824F8, &qword_253151558);
  v17 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v7 = &v16 - v6;
  v8 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313A600();
  v20 = v7;
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = v17;
  v12 = v10;
  LOBYTE(v22) = 0;
  sub_25313B148(&qword_27F582500, &qword_27F5824A8, &qword_253151538, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
  v14 = v18;
  v13 = v19;
  sub_253149664();
  sub_2530CD2D4(v14, v12, &qword_27F5824A8, &qword_253151538);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824C8, &qword_253151548);
  v21 = 1;
  sub_25313A7BC();
  sub_253149664();
  *(v12 + v8[5]) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582480, &qword_253151528);
  v21 = 2;
  sub_25313A210(&qword_27F5824A0, &qword_27F582458, &protocol conformance descriptor for ModelIdentifierDescriptor<A>, MEMORY[0x277D83978]);
  sub_253149664();
  *(v12 + v8[6]) = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824E0, &qword_253151550);
  v21 = 3;
  sub_25313A870();
  sub_253149664();
  (*(v11 + 8))(v20, v13);
  *(v12 + v8[7]) = v22;
  sub_25313A0D4(v12, v16, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_25313A13C(v12, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
}

uint64_t sub_253138218(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_253149814();
  a3(v5);
  return sub_253149844();
}

uint64_t sub_25313827C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_253149814();
  a4(v6);
  return sub_253149844();
}

uint64_t HomesStore.HomesRelationshipModel.visitKeyPaths<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v6 = *(a3 + 48);
  v7 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v8 = sub_253135508(&qword_27F582528, type metadata accessor for HomesStore.HomesRelationshipModel.Home, "ex93(2");
  v6(KeyPath, v7, &protocol witness table for HomesStore.HomesRelationshipModel.Home, v8, a2, a3);
}

{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5824A8, &qword_253151538);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_253148944();
  v39 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v36 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = v10;
  v11 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v29 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v40 = *(a3 + 72);
  v35 = sub_253135508(&qword_27F582528, type metadata accessor for HomesStore.HomesRelationshipModel.Home, "ex93(2");
  v38 = a3;
  (v40)(KeyPath, v11);

  result = type metadata accessor for HomesStore.HomesRelationshipModel(0);
  v16 = *(v41 + *(result + 20));
  v17 = *(v16 + 16);
  if (v17)
  {
    v31 = *(v38 + 64);
    v32 = v38 + 64;
    v18 = v16 + ((*(v29 + 80) + 32) & ~*(v29 + 80));
    v29 = *(v29 + 72);
    v30 = (v39 + 32);
    v33 = v13;
    v34 = v8;
    do
    {
      v40 = type metadata accessor for HomesStore.HomesRelationshipModel.Home;
      v41 = v17;
      sub_25313A0D4(v18, v13, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      v39 = swift_getKeyPath();
      sub_2530CD26C(v13, v8, &qword_27F5824A8, &qword_253151538);
      v19 = a1;
      v20 = a2;
      v21 = *v30;
      v22 = v11;
      v23 = v36;
      v24 = (*v30)(v36, v8, v9);
      MEMORY[0x28223BE20](v24);
      v26 = v23;
      v11 = v22;
      v21(&v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0), v26, v9);
      a2 = v20;
      a1 = v19;
      v27 = swift_getKeyPath();
      v8 = v34;
      v31(v39, v27, v22, &protocol witness table for HomesStore.HomesRelationshipModel.Home, v35, a2, v38);

      v13 = v33;

      result = sub_25313A13C(v13, v40);
      v18 += v29;
      v17 = v41 - 1;
    }

    while (v41 != 1);
  }

  return result;
}

uint64_t sub_25313875C(uint64_t a1, uint64_t a2)
{
  sub_253148944();
  sub_253135508(&qword_27F580C40, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  return sub_253148B44() & 1;
}

uint64_t HomesStore.HomesRelationshipModel.Accessory.visitKeyPaths<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v6 = *(a3 + 16);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v8 = sub_25313B148(&qword_27F582530, &qword_27F5816A0, &qword_253151500, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
  v6(KeyPath, v7, v8, a2, a3);
}

{
  KeyPath = swift_getKeyPath();
  v6 = *(a3 + 32);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v8 = sub_25313B148(&qword_27F582530, &qword_27F5816A0, &qword_253151500, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
  v6(KeyPath, v7, v8, a2, a3);
}

uint64_t HomesStore.HomesRelationshipModel.Zone.visitKeyPaths<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v6 = *(a3 + 40);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v8 = sub_25313B148(&qword_27F582530, &qword_27F5816A0, &qword_253151500, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
  v6(KeyPath, v7, v8, a2, a3);
}

{
  v35 = sub_253148944();
  v27 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = v5;
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v28 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v33 = &v26 - v8;
  KeyPath = swift_getKeyPath();
  v10 = *(a3 + 72);
  v32 = sub_25313B148(&qword_27F582530, &qword_27F5816A0, &qword_253151500, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
  v36 = a2;
  v37 = a3;
  v10(KeyPath, v7);

  result = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v12 = *(v31 + *(result + 20));
  v13 = *(v12 + 16);
  if (v13)
  {
    v30 = *(v37 + 56);
    v31 = v37 + 56;
    v14 = v12 + ((*(v28 + 80) + 32) & ~*(v28 + 80));
    v28 = *(v28 + 72);
    v29 = (v27 + 2);
    v27 += 4;
    do
    {
      v15 = v33;
      sub_2530CD26C(v14, v33, &qword_27F5816A0, &qword_253151500);
      v16 = swift_getKeyPath();
      v17 = v6;
      v18 = v7;
      v19 = v6;
      v20 = v35;
      (*v29)(v17, v15, v35);
      v21 = sub_2530CD33C(v15, &qword_27F5816A0, &qword_253151500);
      MEMORY[0x28223BE20](v21);
      v23 = v19;
      v24 = v20;
      v6 = v19;
      v7 = v18;
      (*v27)(&v26 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0), v23, v24);
      v25 = swift_getKeyPath();
      v30(v16, v25, v18, v32, v36, v37);

      v14 += v28;
      --v13;
    }

    while (v13);
  }

  return result;
}

uint64_t HomesStore.HomesRelationshipModel.Home.visitKeyPaths<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  KeyPath = swift_getKeyPath();
  v6 = *(a3 + 48);
  v7 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v8 = sub_253135508(&qword_27F582538, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Accessory);
  v6(KeyPath, v7, &protocol witness table for HomesStore.HomesRelationshipModel.Accessory, v8, a2, a3);

  v9 = swift_getKeyPath();
  v10 = *(a3 + 40);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v12 = sub_25313B148(&qword_27F582530, &qword_27F5816A0, &qword_253151500, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
  v10(v9, v11, v12, a2, a3);

  v13 = swift_getKeyPath();
  v14 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v15 = sub_253135508(&qword_27F582540, type metadata accessor for HomesStore.HomesRelationshipModel.Zone, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Zone);
  v6(v13, v14, &protocol witness table for HomesStore.HomesRelationshipModel.Zone, v15, a2, a3);
}

{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582460, &qword_253151518);
  MEMORY[0x28223BE20](v8 - 8);
  v85 = &v68 - v9;
  v84 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v70 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v89 = &v68 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v69 = *(v83 - 1);
  MEMORY[0x28223BE20](v83);
  v71 = &v68 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582420, &qword_2531514F8);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v68 - v13;
  v92 = sub_253148944();
  v72 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v90 = &v68 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v91 = v15;
  v16 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v87 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v68 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  KeyPath = swift_getKeyPath();
  v20 = *(a3 + 72);
  v82 = sub_253135508(&qword_27F582538, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Accessory);
  v93 = a1;
  v94 = a3;
  v74 = v20;
  v75 = a3 + 72;
  (v20)(KeyPath, v16);

  v73 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v21 = v73[5];
  v76 = v4;
  v22 = *(v4 + v21);
  v23 = v18;
  v24 = *(v22 + 16);
  v88 = a2;
  if (v24)
  {
    v80 = *(v94 + 64);
    v81 = v94 + 64;
    v25 = v22 + ((*(v87 + 80) + 32) & ~*(v87 + 80));
    v78 = v14;
    v79 = (v72 + 32);
    v77 = *(v87 + 9);
    do
    {
      v87 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory;
      sub_25313A0D4(v25, v23, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
      v86 = swift_getKeyPath();
      sub_2530CD26C(v23, v14, &qword_27F582420, &qword_2531514F8);
      v26 = *v79;
      v27 = v16;
      v28 = v90;
      v29 = v23;
      v30 = v92;
      v31 = (*v79)(v90, v14, v92);
      MEMORY[0x28223BE20](v31);
      v33 = v28;
      v16 = v27;
      v34 = v30;
      v23 = v29;
      v26(&v68 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v33, v34);
      v35 = swift_getKeyPath();
      v14 = v78;
      a2 = v88;
      (v80)(v86, v35, v27, &protocol witness table for HomesStore.HomesRelationshipModel.Accessory, v82, v88, v94);

      sub_25313A13C(v29, v87);
      v25 += v77;
      --v24;
    }

    while (v24);
  }

  v36 = swift_getKeyPath();
  v37 = sub_25313B148(&qword_27F582530, &qword_27F5816A0, &qword_253151500, &protocol conformance descriptor for ModelIdentifierDescriptor<A>);
  v74(v36, v83, v37, a2, v94);

  v38 = *(v76 + v73[6]);
  v39 = *(v38 + 16);
  v40 = v71;
  if (v39)
  {
    v86 = *(v94 + 56);
    v87 = (v94 + 56);
    v41 = v38 + ((*(v69 + 80) + 32) & ~*(v69 + 80));
    v81 = *(v69 + 72);
    v82 = (v72 + 16);
    v80 = (v72 + 32);
    v42 = v90;
    do
    {
      sub_2530CD26C(v41, v40, &qword_27F5816A0, &qword_253151500);
      v43 = swift_getKeyPath();
      v44 = v37;
      v45 = v92;
      (*v82)(v42, v40, v92);
      v46 = sub_2530CD33C(v40, &qword_27F5816A0, &qword_253151500);
      MEMORY[0x28223BE20](v46);
      v48 = v45;
      v37 = v44;
      (*v80)(&v68 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0), v42, v48);
      v49 = swift_getKeyPath();
      v86(v43, v49, v83, v44, a2, v94);

      v41 += v81;
      --v39;
    }

    while (v39);
  }

  v50 = swift_getKeyPath();
  v51 = sub_253135508(&qword_27F582540, type metadata accessor for HomesStore.HomesRelationshipModel.Zone, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Zone);
  v74(v50, v84, v51, a2, v94);

  v53 = *(v76 + v73[7]);
  v54 = *(v53 + 16);
  v55 = v85;
  v56 = v89;
  if (v54)
  {
    v83 = *(v94 + 64);
    v86 = (v94 + 64);
    v57 = v53 + ((*(v70 + 80) + 32) & ~*(v70 + 80));
    v81 = *(v70 + 72);
    v82 = (v72 + 32);
    do
    {
      v87 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone;
      sub_25313A0D4(v57, v56, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
      v58 = swift_getKeyPath();
      sub_2530CD26C(v89, v55, &qword_27F582460, &qword_253151518);
      v59 = *v82;
      v60 = v90;
      v61 = v55;
      v62 = v51;
      v63 = v92;
      v64 = (*v82)(v90, v61, v92);
      MEMORY[0x28223BE20](v64);
      v66 = v63;
      v51 = v62;
      v59(&v68 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0), v60, v66);
      v67 = swift_getKeyPath();
      (v83)(v58, v67, v84, &protocol witness table for HomesStore.HomesRelationshipModel.Zone, v62, v88, v94);
      v55 = v85;
      v56 = v89;

      result = sub_25313A13C(v56, v87);
      v57 += v81;
      --v54;
    }

    while (v54);
  }

  return result;
}

uint64_t sub_2531399C4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v44 = *(v4 - 8);
  v45 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v54 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v42 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v61 = &v42 - v11;
  v12 = type metadata accessor for HomesStore.HomesRelationshipModel.Accessory(0);
  v42 = *(v12 - 8);
  v43 = v12;
  MEMORY[0x28223BE20](v12);
  v62 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  v15 = *(v14 - 1);
  MEMORY[0x28223BE20](v14);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(a2 + 16);
  result = MEMORY[0x259BFD420](v18);
  v51 = v18;
  if (v18)
  {
    v20 = 0;
    v21 = v14[5];
    v49 = v14[6];
    v50 = v21;
    v22 = v14[7];
    v47 = a2 + ((*(v15 + 80) + 32) & ~*(v15 + 80));
    v48 = v22;
    v46 = *(v15 + 72);
    v59 = v6;
    v53 = v17;
    do
    {
      v52 = v20;
      sub_25313A0D4(v47 + v46 * v20, v17, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
      sub_253148944();
      sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_253148B14();
      v23 = *&v17[v50];
      MEMORY[0x259BFD420](*(v23 + 16));
      v24 = a1;
      v25 = *(v23 + 16);
      v26 = v62;
      if (v25)
      {
        v60 = *(v43 + 20);
        v27 = v23 + ((*(v42 + 80) + 32) & ~*(v42 + 80));
        v58 = *(v42 + 72);
        do
        {
          sub_25313A0D4(v27, v26, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
          sub_253148B14();
          sub_253148B14();
          v26 = v62;
          sub_25313A13C(v62, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
          v27 += v58;
          --v25;
        }

        while (v25);
      }

      v28 = *&v53[v49];
      MEMORY[0x259BFD420](*(v28 + 16));
      v29 = *(v28 + 16);
      v30 = v61;
      if (v29)
      {
        v31 = v28 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
        v32 = *(v54 + 72);
        do
        {
          sub_2530CD26C(v31, v30, &qword_27F5816A0, &qword_253151500);
          sub_253148B14();
          v30 = v61;
          sub_2530CD33C(v61, &qword_27F5816A0, &qword_253151500);
          v31 += v32;
          --v29;
        }

        while (v29);
      }

      v33 = *&v53[v48];
      MEMORY[0x259BFD420](*(v33 + 16));
      a1 = v24;
      v34 = v59;
      v58 = *(v33 + 16);
      if (v58)
      {
        v35 = 0;
        v36 = *(v45 + 20);
        v56 = v33 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
        v57 = v36;
        v55 = *(v44 + 72);
        do
        {
          v60 = v35;
          sub_25313A0D4(v56 + v55 * v35, v34, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
          sub_253148B14();
          v37 = *(v34 + v57);
          MEMORY[0x259BFD420](*(v37 + 16));
          v38 = a1;
          v39 = *(v37 + 16);
          if (v39)
          {
            v40 = v37 + ((*(v54 + 80) + 32) & ~*(v54 + 80));
            v41 = *(v54 + 72);
            do
            {
              sub_2530CD26C(v40, v10, &qword_27F5816A0, &qword_253151500);
              sub_253148B14();
              sub_2530CD33C(v10, &qword_27F5816A0, &qword_253151500);
              v40 += v41;
              --v39;
            }

            while (v39);
          }

          v34 = v59;
          v35 = v60 + 1;
          sub_25313A13C(v59, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
          a1 = v38;
        }

        while (v35 != v58);
      }

      v17 = v53;
      v20 = v52 + 1;
      result = sub_25313A13C(v53, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    }

    while (v20 != v51);
  }

  return result;
}

unint64_t sub_253139FAC()
{
  result = qword_27F582410;
  if (!qword_27F582410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5823F0, &qword_2531514E8);
    sub_253135508(&qword_27F582418, type metadata accessor for HomesStore.HomesRelationshipModel.Home, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Home);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582410);
  }

  return result;
}

unint64_t sub_25313A080()
{
  result = qword_27F582430;
  if (!qword_27F582430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582430);
  }

  return result;
}

uint64_t sub_25313A0D4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25313A13C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25313A1BC()
{
  result = qword_27F582470;
  if (!qword_27F582470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582470);
  }

  return result;
}

uint64_t sub_25313A210(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F582480, &qword_253151528);
    sub_25313B148(a2, &qword_27F5816A0, &qword_253151500, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_25313A2A8(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5816A0, &qword_253151500);
  v19 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v18 - v4;
  v6 = type metadata accessor for HomesStore.HomesRelationshipModel.Zone(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a2 + 16);
  result = MEMORY[0x259BFD420](v10);
  v24 = v10;
  if (v10)
  {
    v12 = 0;
    v13 = *(v6 + 20);
    v21 = a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v22 = v13;
    v20 = *(v7 + 72);
    v23 = v9;
    do
    {
      v25 = v12;
      sub_25313A0D4(v21 + v20 * v12, v9, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
      sub_253148944();
      sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_253148B14();
      v14 = *&v9[v22];
      MEMORY[0x259BFD420](*(v14 + 16));
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = v14 + ((*(v19 + 80) + 32) & ~*(v19 + 80));
        v17 = *(v19 + 72);
        do
        {
          sub_2530CD26C(v16, v5, &qword_27F5816A0, &qword_253151500);
          sub_253148B14();
          sub_2530CD33C(v5, &qword_27F5816A0, &qword_253151500);
          v16 += v17;
          --v15;
        }

        while (v15);
      }

      v12 = v25 + 1;
      v9 = v23;
      result = sub_25313A13C(v23, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
    }

    while (v12 != v24);
  }

  return result;
}

uint64_t _s11HomeKitCore10HomesStoreC0D17RelationshipModelV0A0V2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for HomesStore.HomesRelationshipModel.Home(0);
  if ((sub_253134964(*(a1 + v4[5]), *(a2 + v4[5])) & 1) == 0 || (sub_253134B6C(*(a1 + v4[6]), *(a2 + v4[6])) & 1) == 0)
  {
    return 0;
  }

  v5 = v4[7];
  v6 = *(a1 + v5);
  v7 = *(a2 + v5);

  return sub_253134D24(v6, v7);
}

unint64_t sub_25313A600()
{
  result = qword_27F5824B8;
  if (!qword_27F5824B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5824B8);
  }

  return result;
}

unint64_t sub_25313A654()
{
  result = qword_27F5824D0;
  if (!qword_27F5824D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5824C8, &qword_253151548);
    sub_253135508(&qword_27F5824D8, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Accessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5824D0);
  }

  return result;
}

unint64_t sub_25313A708()
{
  result = qword_27F5824E8;
  if (!qword_27F5824E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5824E0, &qword_253151550);
    sub_253135508(&qword_27F5824F0, type metadata accessor for HomesStore.HomesRelationshipModel.Zone, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Zone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5824E8);
  }

  return result;
}

unint64_t sub_25313A7BC()
{
  result = qword_27F582508;
  if (!qword_27F582508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5824C8, &qword_253151548);
    sub_253135508(&qword_27F582510, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Accessory);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582508);
  }

  return result;
}

unint64_t sub_25313A870()
{
  result = qword_27F582518;
  if (!qword_27F582518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5824E0, &qword_253151550);
    sub_253135508(&qword_27F582520, type metadata accessor for HomesStore.HomesRelationshipModel.Zone, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Zone);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582518);
  }

  return result;
}

uint64_t sub_25313A924()
{
  sub_253148944();
  sub_253135508(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  return sub_253148B24();
}

uint64_t keypath_copyTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t keypath_arg_initTm(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_25313AB20(uint64_t a1)
{
  result = sub_253135508(&qword_27F580708, type metadata accessor for HomesStore.HomesRelationshipModel, &protocol conformance descriptor for HomesStore.HomesRelationshipModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25313AB78(void *a1)
{
  a1[1] = sub_253135508(&qword_27F582548, type metadata accessor for HomesStore.HomesRelationshipModel, &protocol conformance descriptor for HomesStore.HomesRelationshipModel);
  a1[2] = sub_253135508(&qword_27F582550, type metadata accessor for HomesStore.HomesRelationshipModel, &protocol conformance descriptor for HomesStore.HomesRelationshipModel);
  a1[3] = sub_253135508(&qword_27F582558, type metadata accessor for HomesStore.HomesRelationshipModel, &protocol conformance descriptor for HomesStore.HomesRelationshipModel);
  a1[4] = sub_253135508(&qword_27F582560, type metadata accessor for HomesStore.HomesRelationshipModel, &protocol conformance descriptor for HomesStore.HomesRelationshipModel);
  result = sub_253135508(&qword_27F582568, type metadata accessor for HomesStore.HomesRelationshipModel, &protocol conformance descriptor for HomesStore.HomesRelationshipModel);
  a1[5] = result;
  return result;
}

uint64_t sub_25313AD48(uint64_t a1)
{
  result = sub_253135508(&qword_27F582538, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Accessory);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25313ADE8(void *a1)
{
  a1[1] = sub_253135508(&qword_27F582510, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Accessory);
  a1[2] = sub_253135508(&qword_27F5824D8, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Accessory);
  a1[3] = sub_253135508(&qword_27F582580, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Accessory);
  result = sub_253135508(&qword_27F582588, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Accessory);
  a1[4] = result;
  return result;
}

uint64_t sub_25313AF48(uint64_t a1)
{
  result = sub_253135508(&qword_27F582540, type metadata accessor for HomesStore.HomesRelationshipModel.Zone, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Zone);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25313AFE8(void *a1)
{
  a1[1] = sub_253135508(&qword_27F582520, type metadata accessor for HomesStore.HomesRelationshipModel.Zone, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Zone);
  a1[2] = sub_253135508(&qword_27F5824F0, type metadata accessor for HomesStore.HomesRelationshipModel.Zone, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Zone);
  a1[3] = sub_253135508(&qword_27F5825A0, type metadata accessor for HomesStore.HomesRelationshipModel.Zone, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Zone);
  result = sub_253135508(&qword_27F5825A8, type metadata accessor for HomesStore.HomesRelationshipModel.Zone, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Zone);
  a1[4] = result;
  return result;
}

uint64_t sub_25313B148(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t sub_25313B190(uint64_t a1)
{
  result = sub_253135508(&qword_27F582528, type metadata accessor for HomesStore.HomesRelationshipModel.Home, "ex93(2");
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25313B230(void *a1)
{
  a1[1] = sub_253135508(&qword_27F582418, type metadata accessor for HomesStore.HomesRelationshipModel.Home, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Home);
  a1[2] = sub_253135508(&qword_27F582400, type metadata accessor for HomesStore.HomesRelationshipModel.Home, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Home);
  a1[3] = sub_253135508(&qword_27F5825C0, type metadata accessor for HomesStore.HomesRelationshipModel.Home, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Home);
  result = sub_253135508(&qword_27F5825C8, type metadata accessor for HomesStore.HomesRelationshipModel.Home, &protocol conformance descriptor for HomesStore.HomesRelationshipModel.Home);
  a1[4] = result;
  return result;
}

void sub_25313B374(uint64_t a1)
{
  sub_253148944();
  if (v1 <= 0x3F)
  {
    sub_25313B914(319, &qword_27F5825E8, type metadata accessor for HomesStore.HomesRelationshipModel.Home);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_25313B468(uint64_t a1)
{
  if (!qword_27F582600)
  {
    v2 = type metadata accessor for HomesStore.Accessory(255);
    v3 = sub_253135508(&qword_27F580720, type metadata accessor for HomesStore.Accessory, &protocol conformance descriptor for HomesStore.Accessory);
    v5 = type metadata accessor for ModelIdentifierDescriptor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27F582600);
    }
  }
}

void sub_25313B4FC(uint64_t a1)
{
  if (!qword_27F582608)
  {
    v2 = type metadata accessor for HomesStore.Room(255);
    v3 = sub_253135508(&qword_27F580718, type metadata accessor for HomesStore.Room, &protocol conformance descriptor for HomesStore.Room);
    v5 = type metadata accessor for ModelIdentifierDescriptor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27F582608);
    }
  }
}

uint64_t sub_25313B5E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_25313B674(uint64_t a1)
{
  if (!qword_27F582620)
  {
    v2 = type metadata accessor for HomesStore.Zone(255);
    v3 = sub_253135508(&qword_27F5806F8, type metadata accessor for HomesStore.Zone, &protocol conformance descriptor for HomesStore.Zone);
    v5 = type metadata accessor for ModelIdentifierDescriptor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27F582620);
    }
  }
}

void sub_25313B708(uint64_t a1)
{
  if (!qword_27F582628)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5816A0, &qword_253151500);
    v1 = sub_253148D64();
    if (!v2)
    {
      atomic_store(v1, &qword_27F582628);
    }
  }
}

void sub_25313B794(uint64_t a1)
{
  sub_25313B880(319);
  if (v1 <= 0x3F)
  {
    sub_25313B914(319, &qword_27F582648, type metadata accessor for HomesStore.HomesRelationshipModel.Accessory);
    if (v2 <= 0x3F)
    {
      sub_25313B708(319);
      if (v3 <= 0x3F)
      {
        sub_25313B914(319, &qword_27F582650, type metadata accessor for HomesStore.HomesRelationshipModel.Zone);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_25313B880(uint64_t a1)
{
  if (!qword_27F582640)
  {
    v2 = type metadata accessor for HomesStore.Home(255);
    v3 = sub_253135508(&qword_27F580710, type metadata accessor for HomesStore.Home, &protocol conformance descriptor for HomesStore.Home);
    v5 = type metadata accessor for ModelIdentifierDescriptor(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_27F582640);
    }
  }
}

void sub_25313B914(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_253148D64();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t _s22HomesRelationshipModelV4HomeV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s22HomesRelationshipModelV4HomeV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_25313BAEC()
{
  result = qword_27F582658;
  if (!qword_27F582658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582658);
  }

  return result;
}

unint64_t sub_25313BB44()
{
  result = qword_27F582660;
  if (!qword_27F582660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582660);
  }

  return result;
}

unint64_t sub_25313BB9C()
{
  result = qword_27F582668;
  if (!qword_27F582668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582668);
  }

  return result;
}

unint64_t sub_25313BBF4()
{
  result = qword_27F582670;
  if (!qword_27F582670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582670);
  }

  return result;
}

unint64_t sub_25313BC4C()
{
  result = qword_27F582678;
  if (!qword_27F582678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582678);
  }

  return result;
}

unint64_t sub_25313BCA4()
{
  result = qword_27F582680;
  if (!qword_27F582680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582680);
  }

  return result;
}

unint64_t sub_25313BCFC()
{
  result = qword_27F582688;
  if (!qword_27F582688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582688);
  }

  return result;
}

unint64_t sub_25313BD54()
{
  result = qword_27F582690;
  if (!qword_27F582690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582690);
  }

  return result;
}

unint64_t sub_25313BDAC()
{
  result = qword_27F582698;
  if (!qword_27F582698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582698);
  }

  return result;
}

unint64_t sub_25313BE04()
{
  result = qword_27F5826A0;
  if (!qword_27F5826A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5826A0);
  }

  return result;
}

unint64_t sub_25313BE5C()
{
  result = qword_27F5826A8;
  if (!qword_27F5826A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5826A8);
  }

  return result;
}

unint64_t sub_25313BEB4()
{
  result = qword_27F5826B0[0];
  if (!qword_27F5826B0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5826B0);
  }

  return result;
}

uint64_t sub_25313BF08(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6373654465736162 && a2 == 0xEE00726F74706972;
  if (v4 || (sub_253149734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F737365636361 && a2 == 0xEB00000000736569 || (sub_253149734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x736D6F6F72 && a2 == 0xE500000000000000 || (sub_253149734() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73656E6F7ALL && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_253149734();

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

uint64_t sub_25313C0D0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_25313C170(uint64_t a1)
{
  result = swift_checkMetadataState();
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

uint64_t sub_25313C204()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96));

  return swift_deallocClassInstance();
}

void sub_25313C37C(id *a1@<X0>, SEL *a2@<X3>, uint64_t (*a3)(void)@<X4>, unint64_t *a4@<X5>, uint64_t (*a5)(uint64_t)@<X6>, uint64_t *a6@<X8>)
{
  v10 = [*a1 *a2];
  a3(0);
  sub_25313C954(a4, 255, a5, MEMORY[0x277D85378]);
  v11 = sub_253148F74();

  *a6 = v11;
}

void sub_25313C45C(uint64_t *a1, void **a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), SEL *a8)
{
  v11 = *a2;
  a5(0);
  sub_25313C954(a6, 255, a7, MEMORY[0x277D85378]);
  v12 = sub_253148F64();
  [v11 *a8];
}

id HMCDRoomModel.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id HMCDRoomModel.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for HMCDRoomModel();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id HMCDRoomModel.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for HMCDRoomModel();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void (*sub_25313C6A0(void *a1))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  v2[4] = sub_25313C710(v2);
  return sub_2530D0B14;
}

void (*sub_25313C710(void *a1))(void ***a1, char a2)
{
  v3 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = sub_253148944();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
    v5[4] = v10;
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
    v5[4] = v10;
    v11 = malloc(v9);
  }

  v12 = v11;
  v5[5] = v11;
  v13 = [v1 modelID];
  sub_253148924();

  (*(v8 + 32))(v12, v10, v6);
  return sub_2530D0CD8;
}

uint64_t sub_25313C8B0(uint64_t a1, uint64_t a2)
{
  result = sub_25313C954(qword_27F582738, a2, type metadata accessor for HMCDRoomModel, &protocol conformance descriptor for HMCDRoomModel);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25313C908@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for HMCDRoomModel();
  result = sub_2531493E4();
  *a2 = result;
  return result;
}

uint64_t sub_25313C954(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t RelationshipResolver.ModelProxy.underlyingModel.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(*(AssociatedTypeWitness - 8) + 16);

  return v6(a2, v2 + v4, AssociatedTypeWitness);
}

uint64_t sub_25313CA70@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v42 = a1;
  v40 = a7;
  v12 = sub_253148944();
  v38 = *(v12 - 8);
  v39 = v12;
  MEMORY[0x28223BE20](v12);
  v37 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = sub_2531491F4();
  v34 = *(v15 - 8);
  v35 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v33 - v17;
  v19 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v33 - v20;
  v43 = a3;
  v44 = a4;
  v45 = a5;
  v46 = a6;
  v22 = type metadata accessor for RelationshipResolver.ModelProxy(0, &v43);
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v33 - v24;
  v26 = a2[3];
  v41 = a2;
  __swift_project_boxed_opaque_existential_1(a2, v26);
  v36 = a6;
  sub_25313DCDC(v42, &type metadata for ModelProvider, a4, &off_2864ECFE0, a6, v18);
  if ((*(v19 + 48))(v18, 1, AssociatedTypeWitness) == 1)
  {
    (*(v34 + 8))(v18, v35);
    v43 = 0;
    v44 = 0xE000000000000000;
    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD000000000000039, 0x800000025314BA20);
    v30 = v37;
    sub_2531493D4();
    sub_2530C2A80(&qword_27F5807B8, MEMORY[0x277CC9628]);
    v31 = v39;
    v32 = sub_2531496F4();
    MEMORY[0x259BFC7D0](v32);

    (*(v38 + 8))(v30, v31);
    result = sub_253149594();
    __break(1u);
  }

  else
  {
    v27 = *(v19 + 32);
    v27(v21, v18, AssociatedTypeWitness);
    (*(*(a4 - 8) + 32))(v25, v42, a4);
    v27(&v25[*(v22 + 52)], v21, AssociatedTypeWitness);
    v28 = v41;
    sub_2530C25FC(v41, &v25[*(v22 + 56)]);
    (*(v23 + 32))(v40, v25, v22);
    return __swift_destroy_boxed_opaque_existential_0(v28);
  }

  return result;
}

uint64_t RelationshipResolver.ModelProxy.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18[-1] - v14;
  swift_getAtKeyPath();
  (*(v10 + 16))(v13, v15, v9);
  sub_2530C25FC(v5 + *(a2 + 56), v18);
  sub_25313CA70(v13, v18, *(a2 + 16), v9, *(a2 + 32), a3, a4);
  return (*(v10 + 8))(v15, v9);
}

uint64_t RelationshipResolver.ModelProxy.subscript.getter(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  swift_getAtKeyPath();
  v20[5] = v20[0];
  v7 = *(a2 + 32);
  v15 = *(a2 + 16);
  v8 = *(v6 + *MEMORY[0x277D84DE8] + 8);
  v16 = *(v8 + 16);
  v17 = v7;
  v18 = a3;
  v19 = v3;
  v20[0] = v15;
  v20[1] = v16;
  v20[2] = v7;
  v20[3] = a3;
  v9 = type metadata accessor for RelationshipResolver.ModelProxy(0, v20);
  WitnessTable = swift_getWitnessTable();
  v12 = sub_253146F4C(sub_25313D2E4, &v14, v8, v9, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);

  return v12;
}

uint64_t sub_25313D1AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v18 = &v23[-1] - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v19 + 16))(v18);
  v23[0] = a3;
  v23[1] = a4;
  v23[2] = a6;
  v23[3] = a7;
  v20 = type metadata accessor for RelationshipResolver.ModelProxy(0, v23);
  sub_2530C25FC(a2 + *(v20 + 56), v23);
  return sub_25313CA70(v18, v23, a3, a5, a6, a8, a9);
}

uint64_t static RelationshipResolver.ModelProxy.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = sub_253148944();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v19 - v15;
  v19[0] = a3;
  v19[1] = a4;
  v19[2] = a5;
  v19[3] = a6;
  type metadata accessor for RelationshipResolver.ModelProxy(0, v19);
  sub_2531493D4();
  sub_2531493D4();
  LOBYTE(a6) = _s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0();
  v17 = *(v11 + 8);
  v17(v14, v10);
  v17(v16, v10);
  return a6 & 1;
}

uint64_t RelationshipResolver.ModelProxy.hash(into:)(uint64_t a1, uint64_t a2)
{
  v2 = sub_253148944();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2531493D4();
  sub_2530C2A80(&qword_27F580560, MEMORY[0x277CC9600]);
  sub_253148B14();
  return (*(v3 + 8))(v5, v2);
}

uint64_t RelationshipResolver.ModelProxy.hashValue.getter(uint64_t a1)
{
  sub_253149814();
  RelationshipResolver.ModelProxy.hash(into:)(v3, a1);
  return sub_253149844();
}

uint64_t sub_25313D614(uint64_t a1, uint64_t a2)
{
  sub_253149814();
  RelationshipResolver.ModelProxy.hash(into:)(v4, a2);
  return sub_253149844();
}

unint64_t sub_25313D684(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      AssociatedTypeWitness = sub_25313DC78();
      if (v4 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t sub_25313D748(int *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(a3 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = *(v9 + 80);
  if (v10 <= v7)
  {
    v12 = v7;
  }

  else
  {
    v12 = *(v9 + 84);
  }

  if (v12 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(v6 + 64) + v11;
  v14 = *(*(AssociatedTypeWitness - 8) + 64) + 7;
  if (v12 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 40;
  v16 = v15 & 0xFFFFFFF8;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v17 = 2;
  }

  else
  {
    v17 = a2 - v12 + 1;
  }

  if (v17 >= 0x10000)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  if (v17 < 0x100)
  {
    v18 = 1;
  }

  if (v17 >= 2)
  {
    v19 = v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

    else
    {
      v20 = *(a1 + v15);
      if (!v20)
      {
        goto LABEL_29;
      }
    }

LABEL_26:
    v22 = v20 - 1;
    if (v16)
    {
      v22 = 0;
      v23 = *a1;
    }

    else
    {
      v23 = 0;
    }

    return v12 + (v23 | v22) + 1;
  }

  if (v19)
  {
    v20 = *(a1 + v15);
    if (v20)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v7 == v12)
  {
    v24 = *(v6 + 48);

    return v24(a1, v7, v5);
  }

  else
  {
    v25 = (a1 + v13) & ~v11;
    if (v10 == v12)
    {
      v26 = *(v9 + 48);

      return v26(v25);
    }

    else
    {
      v27 = *(((v14 + v25) & 0xFFFFFFFFFFFFFFF8) + 24);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      return (v27 + 1);
    }
  }
}

double sub_25313D9B8(_DWORD *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v29 = v8;
  v9 = *(v8 + 84);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v12 = *(AssociatedTypeWitness - 8);
  v13 = *(v12 + 84);
  v14 = *(v12 + 80);
  if (v13 <= v9)
  {
    v15 = v9;
  }

  else
  {
    v15 = *(v12 + 84);
  }

  if (v15 <= 0x7FFFFFFF)
  {
    v15 = 0x7FFFFFFF;
  }

  v16 = *(v8 + 64) + v14;
  v17 = *(*(AssociatedTypeWitness - 8) + 64) + 7;
  v18 = ((v17 + (v16 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v17 + (v16 & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v19 = a3 - v15 + 1;
  }

  else
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v15 < a3)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (a2 > v15)
  {
    if (((v17 + (v16 & ~v14)) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v23 = a2 - v15;
    }

    else
    {
      v23 = 1;
    }

    if (((v17 + (v16 & ~v14)) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v24 = ~v15 + a2;
      bzero(a1, ((v17 + (v16 & ~v14)) & 0xFFFFFFFFFFFFFFF8) + 40);
      *a1 = v24;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        *(a1 + v18) = v23;
      }

      else
      {
        *(a1 + v18) = v23;
      }
    }

    else if (v22)
    {
      *(a1 + v18) = v23;
    }

    return result;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(a1 + v18) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_38;
    }

    *(a1 + v18) = 0;
  }

  else if (v22)
  {
    *(a1 + v18) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_38;
  }

  if (!a2)
  {
    return result;
  }

LABEL_38:
  if (v9 == v15)
  {
    v25 = *(v29 + 56);

    v25(a1, a2, v9, v7);
  }

  else
  {
    v26 = (a1 + v16) & ~v14;
    if (v13 == v15)
    {
      v27 = *(v12 + 56);

      v27(v26, a2);
    }

    else
    {
      v28 = (v17 + v26) & 0xFFFFFFFFFFFFFFF8;
      if ((a2 & 0x80000000) != 0)
      {
        result = 0.0;
        *(v28 + 8) = 0u;
        *(v28 + 24) = 0u;
        *v28 = a2 & 0x7FFFFFFF;
      }

      else
      {
        *(v28 + 24) = (a2 - 1);
      }
    }
  }

  return result;
}

unint64_t sub_25313DC78()
{
  result = qword_27F5827C0;
  if (!qword_27F5827C0)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_27F5827C0);
  }

  return result;
}

uint64_t sub_25313DCDC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v15[3] = a3;
  v15[4] = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v15);
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  (*(a4 + 8))(v16, v15, a2, a4);
  __swift_destroy_boxed_opaque_existential_0(v15);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5806E0, &qword_25314D900);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v13 = swift_dynamicCast();
  return (*(*(AssociatedTypeWitness - 8) + 56))(a6, v13 ^ 1u, 1, AssociatedTypeWitness);
}

unint64_t sub_25313DE28()
{
  result = qword_27F580950;
  if (!qword_27F580950)
  {
    type metadata accessor for HMCDZoneModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580950);
  }

  return result;
}

uint64_t sub_25313DE8C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a2 - 8);
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [v7 modelID];
  sub_253148924();

  v11 = [a1 name];
  v12 = sub_253148B64();
  v14 = v13;

  v15 = &v9[*(a2 + 20)];
  *v15 = v12;
  v15[1] = v14;
  sub_25313E108(v9, a3);
  return (*(v6 + 56))(a3, 0, 1, a2);
}

uint64_t sub_25313DFC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25314E1C0;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 1701667182;
  *(inited + 72) = 0xE400000000000000;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D0B0 = v1;
  return result;
}

uint64_t sub_25313E0AC()
{
  if (qword_27F580328 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25313E108(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Zone(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_25313E170()
{
  result = qword_27F580948;
  if (!qword_27F580948)
  {
    type metadata accessor for HMCDAppleMediaDeviceModel();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F580948);
  }

  return result;
}

uint64_t sub_25313E1D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [a1 modelID];
  sub_253148924();

  v7[*(v4 + 20)] = [a1 isCurrentDevice];
  v9 = [a1 idsDestination];
  if (v9)
  {
    v10 = v9;
    v11 = sub_253148B64();
    v13 = v12;
  }

  else
  {

    v11 = 0;
    v13 = 0;
  }

  v14 = &v7[*(v4 + 24)];
  *v14 = v11;
  v14[1] = v13;
  sub_25313E4D4(v7, a2);
  return (*(v5 + 56))(a2, 0, 1, v4);
}

uint64_t sub_25313E34C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB0, &qword_25314D550);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_253152480;
  *(inited + 32) = swift_getKeyPath();
  *(inited + 40) = 0x44496C65646F6DLL;
  *(inited + 48) = 0xE700000000000000;
  *(inited + 56) = swift_getKeyPath();
  *(inited + 64) = 0x6E65727275437369;
  *(inited + 72) = 0xEF65636976654474;
  *(inited + 80) = swift_getKeyPath();
  strcpy((inited + 88), "idsDestination");
  *(inited + 103) = -18;
  v1 = sub_253109C78(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580EB8, &qword_25314D638);
  result = swift_arrayDestroy();
  qword_27F58D0B8 = v1;
  return result;
}

uint64_t sub_25313E478()
{
  if (qword_27F580330 != -1)
  {
    swift_once();
  }
}

uint64_t sub_25313E4D4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.Accessory.AppleMediaDevice(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_25313E538()
{
  v1 = OBJC_IVAR____TtC11HomeKitCore15XPCSubscription_continuation;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC11HomeKitCore15XPCSubscription_changes;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807C8, &qword_25314D940);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = OBJC_IVAR____TtC11HomeKitCore15XPCSubscription_id;
  v6 = sub_253148944();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for XPCSubscription(uint64_t a1)
{
  result = qword_27F5827D0;
  if (!qword_27F5827D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_25313E6C0(uint64_t a1)
{
  sub_25313E7FC(319, &qword_27F5827E0, MEMORY[0x277D858B0]);
  if (v1 <= 0x3F)
  {
    sub_25313E7FC(319, &qword_27F581BD0, MEMORY[0x277D858D8]);
    if (v2 <= 0x3F)
    {
      sub_253148944();
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_25313E7FC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, void))
{
  if (!*a2)
  {
    v6 = type metadata accessor for AnyModelStateChange(255);
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F580730, &qword_25314F190);
    v8 = a3(a1, v6, v7, MEMORY[0x277D84950]);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

uint64_t sub_25313E880@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC11HomeKitCore15XPCSubscription_id;
  v5 = sub_253148944();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_25313E8FC(uint64_t a1)
{
  v66[1] = *MEMORY[0x277D85DE8];
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581D08, &qword_253150320);
  v50 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v49 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5821E0, &qword_253150FF8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v49 - v6;
  v8 = type metadata accessor for XPCModelStateChange(0);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v57 = &v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v56 = &v49 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5807B0, &qword_25314D460);
  MEMORY[0x28223BE20](v13 - 8);
  v64 = &v49 - v14;
  v63 = type metadata accessor for AnyModelStateChange(0);
  v15 = MEMORY[0x28223BE20](v63);
  v55 = &v49 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v17);
  v51 = &v49 - v19;
  v52 = v18;
  v20 = *(a1 + 16);
  v49 = v21;
  if (v20)
  {
    v62 = *MEMORY[0x277CCA308];
    v58 = (v9 + 48);
    v53 = (v18 + 56);
    v54 = (v18 + 48);
    v22 = (a1 + 40);
    v60 = v4;
    v61 = MEMORY[0x277D84F90];
    v59 = v2;
    while (1)
    {
      v65 = v20;
      v24 = v8;
      v25 = v7;
      v27 = *(v22 - 1);
      v26 = *v22;
      v28 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
      sub_2530CAA1C(v27, v26);
      sub_2530CAA1C(v27, v26);
      v29 = sub_2531488A4();
      v66[0] = 0;
      v30 = [v28 initForReadingFromData:v29 error:v66];

      if (!v30)
      {
        v46 = v66[0];
        sub_2530C2478(v27, v26);
        v47 = sub_253148844();

        swift_willThrow();
        sub_2530C2478(v27, v26);
      }

      v31 = v66[0];
      sub_2530C2478(v27, v26);
      sub_253148B64();
      sub_25313F108(&qword_27F5827E8, type metadata accessor for XPCModelStateChange, &unk_25314BECC);
      v7 = v25;
      v8 = v24;
      sub_2531490E4();

      if ((*v58)(v7, 1, v24) == 1)
      {
        sub_2530C2478(v27, v26);
        sub_2530CD33C(v7, &qword_27F5821E0, &qword_253150FF8);
        v23 = v64;
        (*v53)(v64, 1, 1, v63);
      }

      else
      {
        v32 = v56;
        sub_25313F1AC(v7, v56, type metadata accessor for XPCModelStateChange);
        v33 = v57;
        sub_2530C24CC(v32, v57, type metadata accessor for XPCModelStateChange);
        v23 = v64;
        sub_2530C1D94(v33, v64);
        sub_2530C2478(v27, v26);
        sub_25313F150(v32);
        if ((*v54)(v23, 1, v63) != 1)
        {
          v34 = v51;
          sub_25313F1AC(v23, v51, type metadata accessor for AnyModelStateChange);
          sub_25313F1AC(v34, v55, type metadata accessor for AnyModelStateChange);
          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v35 = v61;
          }

          else
          {
            v35 = sub_2530F46D0(0, v61[2] + 1, 1, v61);
          }

          v37 = v35[2];
          v36 = v35[3];
          if (v37 >= v36 >> 1)
          {
            v35 = sub_2530F46D0((v36 > 1), v37 + 1, 1, v35);
          }

          v35[2] = v37 + 1;
          v38 = (*(v52 + 80) + 32) & ~*(v52 + 80);
          v61 = v35;
          sub_25313F1AC(v55, v35 + v38 + *(v52 + 72) * v37, type metadata accessor for AnyModelStateChange);
          goto LABEL_5;
        }
      }

      sub_2530CD33C(v23, &qword_27F5807B0, &qword_25314D460);
LABEL_5:
      v2 = v59;
      v4 = v60;
      v22 += 2;
      v20 = v65 - 1;
      if (v65 == 1)
      {
        goto LABEL_16;
      }
    }
  }

  v61 = MEMORY[0x277D84F90];
LABEL_16:
  v39 = v61[2];
  if (v39)
  {
    v40 = v4;
    v41 = v2;
    v42 = v61 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
    v43 = *(v52 + 72);
    v44 = (v50 + 8);
    v45 = v49;
    do
    {
      sub_2530C24CC(v42, v45, type metadata accessor for AnyModelStateChange);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F580770, &qword_25314C4D8);
      sub_253148EE4();
      (*v44)(v40, v41);
      v42 += v43;
      --v39;
    }

    while (v39);
  }
}

uint64_t sub_25313F108(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25313F150(uint64_t a1)
{
  v2 = type metadata accessor for XPCModelStateChange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25313F1AC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_25313F230(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && a1[24])
  {
    return (*a1 + 249);
  }

  v3 = *a1;
  v4 = v3 >= 8;
  v5 = v3 - 8;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_25313F274(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 7;
    }
  }

  return result;
}

uint64_t sub_25313F2C8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582800, &qword_253152670);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = *(v1 + 2);
  v11[0] = *(v1 + 1);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313F820();
  sub_253149894();
  LOBYTE(v12) = v7;
  v14 = 0;
  sub_2530C2AC4();
  v9 = v11[1];
  sub_2531496D4();
  if (!v9)
  {
    v12 = v11[0];
    v13 = v8;
    v14 = 1;
    sub_2530CAA1C(v11[0], v8);
    sub_2530C2B18();
    sub_2531496D4();
    sub_2530C2478(v12, v13);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_25313F478@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5827F0, &qword_253152668);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25313F820();
  sub_253149884();
  if (!v2)
  {
    v13 = 0;
    sub_2530C2930();
    sub_253149664();
    v9 = v12;
    v13 = 1;
    sub_2530C29D8();
    sub_253149664();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_25313F650()
{
  if (*v0)
  {
    return 0x7461446C65646F6DLL;
  }

  else
  {
    return 0x7079546C65646F6DLL;
  }
}

uint64_t sub_25313F690@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0x7079546C65646F6DLL && a2 == 0xE900000000000065 || (sub_253149734() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7461446C65646F6DLL && a2 == 0xE900000000000061)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_253149734();

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

uint64_t sub_25313F778(uint64_t a1)
{
  v2 = sub_25313F820();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25313F7B4(uint64_t a1)
{
  v2 = sub_25313F820();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_25313F820()
{
  result = qword_27F5827F8;
  if (!qword_27F5827F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5827F8);
  }

  return result;
}

unint64_t sub_25313F888()
{
  result = qword_27F582808;
  if (!qword_27F582808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582808);
  }

  return result;
}

unint64_t sub_25313F8E0()
{
  result = qword_27F582810;
  if (!qword_27F582810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582810);
  }

  return result;
}

unint64_t sub_25313F938()
{
  result = qword_27F582818[0];
  if (!qword_27F582818[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F582818);
  }

  return result;
}

uint64_t sub_25313F98C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v55 = a4;
  v7 = sub_2531491F4();
  v50 = *(v7 - 8);
  v51 = v7;
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v48 - v12;
  v52 = *(a2 - 8);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v14);
  v49 = &v48 - v18;
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  v21 = type metadata accessor for AnyModelStateChange(0);
  MEMORY[0x28223BE20](v21);
  v23 = &v48 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for ModelStateChange(0, a2, a3, v24);
  v53 = *(v25 - 8);
  v54 = v25;
  MEMORY[0x28223BE20](v25);
  v27 = (&v48 - v26);
  sub_253119048(a1, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      sub_253140790(a1);
      sub_2531407EC(v23, v27);
      v31 = v54;
      goto LABEL_10;
    }

    sub_253140790(a1);
    v32 = *(v23 + 1);
    v57 = *v23;
    v58 = v32;
    v59 = *(v23 + 4);
    sub_2530BDB14(&v57, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
    v33 = swift_dynamicCast();
    v34 = v52;
    v35 = *(v52 + 56);
    if (v33)
    {
      v35(v10, 0, 1, a2);
      v36 = *(v34 + 32);
      v36(v16, v10, a2);
      v37 = v49;
      v36(v49, v16, a2);
      v36(v27, v37, a2);
      v31 = v54;
      goto LABEL_10;
    }

    v35(v10, 1, 1, a2);
    (*(v50 + 8))(v10, v51);
LABEL_13:
    v46 = 1;
    v31 = v54;
    v45 = v55;
    v44 = v53;
    return (*(v44 + 56))(v45, v46, 1, v31);
  }

  if (EnumCaseMultiPayload)
  {
    sub_253140790(a1);
    v38 = *(v23 + 1);
    v57 = *v23;
    v58 = v38;
    v59 = *(v23 + 4);
    sub_2530BDB14(&v57, v56);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
    v39 = swift_dynamicCast();
    v40 = v52;
    v41 = *(v52 + 56);
    if (v39)
    {
      v41(v13, 0, 1, a2);
      v42 = *(v40 + 32);
      v42(v20, v13, a2);
      v43 = v49;
      v42(v49, v20, a2);
      v42(v27, v43, a2);
      v31 = v54;
      goto LABEL_10;
    }

    v41(v13, 1, 1, a2);
    (*(v50 + 8))(v13, v51);
    goto LABEL_13;
  }

  *&v57 = *v23;
  MEMORY[0x28223BE20](EnumCaseMultiPayload);
  *(&v48 - 2) = a2;
  *(&v48 - 1) = a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582920, &qword_253152800);
  type metadata accessor for ModelState(0, a2, a3, v29);
  sub_253140AFC();
  v30 = sub_253148C34();
  sub_253140790(a1);

  *v27 = v30;
  v31 = v54;
LABEL_10:
  swift_storeEnumTagMultiPayload();
  v44 = v53;
  v45 = v55;
  (*(v53 + 32))(v55, v27, v31);
  v46 = 0;
  return (*(v44 + 56))(v45, v46, 1, v31);
}

uint64_t sub_25313FFAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25314001C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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

char *sub_25314015C(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
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

uint64_t sub_25314037C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = type metadata accessor for ModelState(255, *(a1 + 16), *(a1 + 24), a4);
  v6 = v5;
  result = sub_253148D64();
  if (v8 <= 0x3F)
  {
    if (v6 > 0x3F)
    {
      return v4;
    }

    else
    {
      result = type metadata accessor for AnyModelStateChange.Tombstone(319);
      if (v9 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_253140428(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(*(*(a3 + 16) - 8) + 64);
  v6 = *(*(sub_253148944() - 8) + 64);
  if (v5 <= v6 + 1)
  {
    v7 = v6 + 1;
  }

  else
  {
    v7 = v5;
  }

  v8 = 8;
  if (v7 > 8)
  {
    v8 = v7;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_28;
  }

  v9 = v8 + 1;
  v10 = 8 * (v8 + 1);
  if ((v8 + 1) <= 3)
  {
    v13 = ((a2 + ~(-1 << v10) - 252) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_28;
      }

      goto LABEL_17;
    }

    if (v13 < 2)
    {
LABEL_28:
      v15 = *(a1 + v8);
      if (v15 >= 4)
      {
        return (v15 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_28;
  }

LABEL_17:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return (v9 | v14) + 253;
}

void sub_253140590(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(*(*(a4 + 16) - 8) + 64);
  v8 = *(*(sub_253148944() - 8) + 64);
  if (v7 <= v8 + 1)
  {
    v9 = v8 + 1;
  }

  else
  {
    v9 = v7;
  }

  if (v9 <= 8)
  {
    v9 = 8;
  }

  v10 = v9 + 1;
  if (a3 < 0xFD)
  {
    v11 = 0;
  }

  else if (v10 <= 3)
  {
    v14 = ((a3 + ~(-1 << (8 * v10)) - 252) >> (8 * v10)) + 1;
    if (HIWORD(v14))
    {
      v11 = 4;
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
        v11 = v15;
      }

      else
      {
        v11 = 0;
      }
    }
  }

  else
  {
    v11 = 1;
  }

  if (a2 > 0xFC)
  {
    v12 = a2 - 253;
    if (v10 >= 4)
    {
      bzero(a1, v9 + 1);
      *a1 = v12;
      v13 = 1;
      if (v11 > 1)
      {
        goto LABEL_42;
      }

      goto LABEL_39;
    }

    v13 = (v12 >> (8 * v10)) + 1;
    if (v9 != -1)
    {
      v16 = v12 & ~(-1 << (8 * v10));
      bzero(a1, v10);
      if (v10 != 3)
      {
        if (v10 == 2)
        {
          *a1 = v16;
          if (v11 > 1)
          {
LABEL_42:
            if (v11 == 2)
            {
              *&a1[v10] = v13;
            }

            else
            {
              *&a1[v10] = v13;
            }

            return;
          }
        }

        else
        {
          *a1 = v12;
          if (v11 > 1)
          {
            goto LABEL_42;
          }
        }

LABEL_39:
        if (v11)
        {
          a1[v10] = v13;
        }

        return;
      }

      *a1 = v16;
      a1[2] = BYTE2(v16);
    }

    if (v11 > 1)
    {
      goto LABEL_42;
    }

    goto LABEL_39;
  }

  if (v11 <= 1)
  {
    if (v11)
    {
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

LABEL_28:
      a1[v9] = -a2;
      return;
    }

LABEL_27:
    if (!a2)
    {
      return;
    }

    goto LABEL_28;
  }

  if (v11 == 2)
  {
    *&a1[v10] = 0;
    goto LABEL_27;
  }

  *&a1[v10] = 0;
  if (a2)
  {
    goto LABEL_28;
  }
}

uint64_t sub_253140790(uint64_t a1)
{
  v2 = type metadata accessor for AnyModelStateChange(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2531407EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnyModelStateChange.Tombstone(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_253140850@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v25 = a3;
  v7 = sub_2531491F4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v26[-v10 - 8];
  v12 = *(a2 - 8);
  v13 = MEMORY[0x28223BE20](v9);
  v15 = &v26[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v13);
  v17 = &v26[-v16 - 8];
  sub_2530C25FC(a1, v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F581378, &unk_25314D910);
  v18 = swift_dynamicCast();
  v19 = *(v12 + 56);
  if (v18)
  {
    v19(v11, 0, 1, a2);
    v20 = *(v12 + 32);
    v20(v17, v11, a2);
    v20(v15, v17, a2);
    v20(a4, v15, a2);
    v22 = 0;
  }

  else
  {
    v22 = 1;
    v19(v11, 1, 1, a2);
    (*(v8 + 8))(v11, v7);
  }

  v23 = type metadata accessor for ModelState(0, a2, v25, v21);
  return (*(*(v23 - 8) + 56))(a4, v22, 1, v23);
}

unint64_t sub_253140AFC()
{
  result = qword_27F582928;
  if (!qword_27F582928)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F582920, &qword_253152800);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582928);
  }

  return result;
}

uint64_t HomesStore.User.SharedSettings.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_253148944();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t type metadata accessor for HomesStore.User.SharedSettings(uint64_t a1)
{
  result = qword_27F582988;
  if (!qword_27F582988)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_253140CFC()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0xD000000000000018;
    if (v1 != 1)
    {
      v5 = 0xD000000000000016;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 25705;
    }
  }

  else
  {
    v2 = 0xD000000000000021;
    if (v1 != 5)
    {
      v2 = 0xD00000000000001ALL;
    }

    v3 = 0xD000000000000013;
    if (v1 != 3)
    {
      v3 = 0xD000000000000016;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_253140DE4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_253144280(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_253140E18(uint64_t a1)
{
  v2 = sub_253143C48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_253140E54(uint64_t a1)
{
  v2 = sub_253143C48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomesStore.User.SharedSettings.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582938, &qword_253152808);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253143C48();
  sub_253149894();
  v8[15] = 0;
  sub_253148944();
  sub_253143F30(&qword_27F580630, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
  sub_2531496D4();
  if (!v1)
  {
    type metadata accessor for HomesStore.User.SharedSettings(0);
    v8[14] = 1;
    sub_2531496C4();
    v8[13] = 2;
    sub_2531496C4();
    v8[12] = 3;
    sub_2531496C4();
    v8[11] = 4;
    sub_2531496C4();
    v8[10] = 5;
    sub_2531496C4();
    v8[9] = 6;
    sub_2531496C4();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t HomesStore.User.SharedSettings.hash(into:)(uint64_t a1)
{
  sub_253148944();
  sub_253143F30(&qword_27F580560, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_253148B14();
  type metadata accessor for HomesStore.User.SharedSettings(0);
  sub_253149834();
  sub_253149834();
  sub_253149834();
  sub_253149834();
  sub_253149834();
  return sub_253149834();
}

uint64_t HomesStore.User.SharedSettings.hashValue.getter()
{
  sub_253149814();
  HomesStore.User.SharedSettings.hash(into:)(v1);
  return sub_253149844();
}

uint64_t HomesStore.User.SharedSettings.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v4 = sub_253148944();
  v19 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v21 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582948, &qword_253152810);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v17 - v6;
  v8 = type metadata accessor for HomesStore.User.SharedSettings(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_253143C48();
  v22 = v7;
  sub_253149884();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = v18;
  v12 = v19;
  v29 = 0;
  sub_253143F30(&qword_27F5805E8, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  v13 = v20;
  sub_253149664();
  (*(v12 + 32))(v10, v21, v4);
  v28 = 1;
  v14 = sub_253149654();
  v21 = v8;
  v10[*(v8 + 20)] = v14 & 1;
  v27 = 2;
  v10[v21[6]] = sub_253149654() & 1;
  v26 = 3;
  v10[v21[7]] = sub_253149654() & 1;
  v25 = 4;
  v10[v21[8]] = sub_253149654() & 1;
  v24 = 5;
  v10[v21[9]] = sub_253149654() & 1;
  v23 = 6;
  v15 = sub_253149654();
  (*(v11 + 8))(v22, v13);
  v10[v21[10]] = v15 & 1;
  sub_253143C9C(v10, v17);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return sub_253143D00(v10);
}

uint64_t sub_253141698()
{
  sub_253149814();
  HomesStore.User.SharedSettings.hash(into:)(v1);
  return sub_253149844();
}

uint64_t sub_2531416DC(uint64_t a1)
{
  sub_253149814();
  HomesStore.User.SharedSettings.hash(into:)(v2);
  return sub_253149844();
}

uint64_t sub_25314175C(uint64_t a1, uint64_t a2)
{
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5829B0, &qword_253152AD8);
  swift_allocObject();

  v3 = sub_253143734(v2);

  qword_27F582930 = v3;
  return result;
}

uint64_t sub_2531418B0(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v21 = 0xED00004025203D3DLL;
    v22 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v2 + 16) = v22;
    *(v2 + 24) = v21;
    return v2;
  }

  type metadata accessor for HMCDAppleMediaDeviceModel();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 relationshipsByName];
  sub_2530DFADC();
  v5 = sub_253148AD4();

  v6 = sub_253149234();
  v8 = v7;

  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v5 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_25311D908(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](0xD000000000000010, 0x800000025314AB30);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](0xD000000000000013, 0x800000025314BC30);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v12 = *(*(v5 + 56) + 8 * v9);

  v13 = [v12 inverseRelationship];
  if (v13)
  {
    v14 = v13;
    if ([v13 isToMany])
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v15 = [v14 name];
      v16 = sub_253148B64();
      v18 = v17;

      MEMORY[0x259BFC7D0](v16, v18);

      v19 = 0xD00000000000002ALL;
      v20 = 0x800000025314BBA0;
    }

    else
    {
      sub_2531493C4();

      v23 = [v14 name];
      v24 = sub_253148B64();
      v26 = v25;

      v28 = v24;
      v29 = v26;
      v19 = 0x44496C65646F6D2ELL;
      v20 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v19, v20);

    v22 = v28;
    v21 = v29;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](0xD000000000000010, 0x800000025314AB30);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](0xD000000000000013, 0x800000025314BC30);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_253141D10(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v21 = 0xED00004025203D3DLL;
    v22 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v2 + 16) = v22;
    *(v2 + 24) = v21;
    return v2;
  }

  type metadata accessor for HMCDUserModel();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 relationshipsByName];
  sub_2530DFADC();
  v5 = sub_253148AD4();

  v6 = sub_253149234();
  v8 = v7;

  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v5 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_25311D908(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](1919251285, 0xE400000000000000);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](0xD000000000000018, 0x800000025314BC10);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v12 = *(*(v5 + 56) + 8 * v9);

  v13 = [v12 inverseRelationship];
  if (v13)
  {
    v14 = v13;
    if ([v13 isToMany])
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v15 = [v14 name];
      v16 = sub_253148B64();
      v18 = v17;

      MEMORY[0x259BFC7D0](v16, v18);

      v19 = 0xD00000000000002ALL;
      v20 = 0x800000025314BBA0;
    }

    else
    {
      sub_2531493C4();

      v23 = [v14 name];
      v24 = sub_253148B64();
      v26 = v25;

      v28 = v24;
      v29 = v26;
      v19 = 0x44496C65646F6D2ELL;
      v20 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v19, v20);

    v22 = v28;
    v21 = v29;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](1919251285, 0xE400000000000000);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](0xD000000000000018, 0x800000025314BC10);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_253142134(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v21 = 0xED00004025203D3DLL;
    v22 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v2 + 16) = v22;
    *(v2 + 24) = v21;
    return v2;
  }

  type metadata accessor for HMCDAccessoryModel();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 relationshipsByName];
  sub_2530DFADC();
  v5 = sub_253148AD4();

  v6 = sub_253149234();
  v8 = v7;

  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v5 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_25311D908(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](0x726F737365636341, 0xE900000000000079);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](1701670728, 0xE400000000000000);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v12 = *(*(v5 + 56) + 8 * v9);

  v13 = [v12 inverseRelationship];
  if (v13)
  {
    v14 = v13;
    if ([v13 isToMany])
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v15 = [v14 name];
      v16 = sub_253148B64();
      v18 = v17;

      MEMORY[0x259BFC7D0](v16, v18);

      v19 = 0x800000025314BBA0;
      v20 = 0xD00000000000002ALL;
    }

    else
    {
      sub_2531493C4();

      v23 = [v14 name];
      v24 = sub_253148B64();
      v26 = v25;

      v28 = v24;
      v29 = v26;
      v20 = 0x44496C65646F6D2ELL;
      v19 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v20, v19);

    v22 = v28;
    v21 = v29;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](0x726F737365636341, 0xE900000000000079);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](1701670728, 0xE400000000000000);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_25314255C(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v21 = 0xED00004025203D3DLL;
    v22 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v2 + 16) = v22;
    *(v2 + 24) = v21;
    return v2;
  }

  type metadata accessor for HMCDAccessoryModel();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 relationshipsByName];
  sub_2530DFADC();
  v5 = sub_253148AD4();

  v6 = sub_253149234();
  v8 = v7;

  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v5 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_25311D908(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](0x726F737365636341, 0xE900000000000079);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](0x6C616E6F6974704FLL, 0xEE003E6D6F6F523CLL);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v12 = *(*(v5 + 56) + 8 * v9);

  v13 = [v12 inverseRelationship];
  if (v13)
  {
    v14 = v13;
    if ([v13 isToMany])
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v15 = [v14 name];
      v16 = sub_253148B64();
      v18 = v17;

      MEMORY[0x259BFC7D0](v16, v18);

      v19 = 0x800000025314BBA0;
      v20 = 0xD00000000000002ALL;
    }

    else
    {
      sub_2531493C4();

      v23 = [v14 name];
      v24 = sub_253148B64();
      v26 = v25;

      v28 = v24;
      v29 = v26;
      v20 = 0x44496C65646F6D2ELL;
      v19 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v20, v19);

    v22 = v28;
    v21 = v29;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](0x726F737365636341, 0xE900000000000079);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](0x6C616E6F6974704FLL, 0xEE003E6D6F6F523CLL);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_2531429AC(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v21 = 0xED00004025203D3DLL;
    v22 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v2 + 16) = v22;
    *(v2 + 24) = v21;
    return v2;
  }

  type metadata accessor for HMCDAccessoryModel();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 relationshipsByName];
  sub_2530DFADC();
  v5 = sub_253148AD4();

  v6 = sub_253149234();
  v8 = v7;

  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v5 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_25311D908(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](0x726F737365636341, 0xE900000000000079);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](0xD00000000000001ALL, 0x800000025314BBF0);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v12 = *(*(v5 + 56) + 8 * v9);

  v13 = [v12 inverseRelationship];
  if (v13)
  {
    v14 = v13;
    if ([v13 isToMany])
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v15 = [v14 name];
      v16 = sub_253148B64();
      v18 = v17;

      MEMORY[0x259BFC7D0](v16, v18);

      v19 = 0xD00000000000002ALL;
      v20 = 0x800000025314BBA0;
    }

    else
    {
      sub_2531493C4();

      v23 = [v14 name];
      v24 = sub_253148B64();
      v26 = v25;

      v28 = v24;
      v29 = v26;
      v19 = 0x44496C65646F6D2ELL;
      v20 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v19, v20);

    v22 = v28;
    v21 = v29;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](0x726F737365636341, 0xE900000000000079);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](0xD00000000000001ALL, 0x800000025314BBF0);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_253142E0C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3)
{
  v4 = v3;
  if (!a1)
  {
    v24 = 0xED00004025203D3DLL;
    v25 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v4 + 16) = v25;
    *(v4 + 24) = v24;
    return v4;
  }

  a2(0);
  v6 = [swift_getObjCClassFromMetadata() entity];
  v7 = [v6 relationshipsByName];
  sub_2530DFADC();
  v8 = sub_253148AD4();

  v9 = sub_253149234();
  v11 = v10;

  if (!v11)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v8 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v12 = sub_25311D908(v9, v11);
  v14 = v13;

  if ((v14 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](a3, 0xE400000000000000);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](0xD000000000000010, 0x800000025314BBD0);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v15 = *(*(v8 + 56) + 8 * v12);

  v16 = [v15 inverseRelationship];
  if (v16)
  {
    v17 = v16;
    if ([v16 isToMany])
    {
      v31 = 0;
      v32 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v18 = [v17 name];
      v19 = sub_253148B64();
      v21 = v20;

      MEMORY[0x259BFC7D0](v19, v21);

      v22 = 0xD00000000000002ALL;
      v23 = 0x800000025314BBA0;
    }

    else
    {
      sub_2531493C4();

      v26 = [v17 name];
      v27 = sub_253148B64();
      v29 = v28;

      v31 = v27;
      v32 = v29;
      v22 = 0x44496C65646F6D2ELL;
      v23 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v22, v23);

    v25 = v31;
    v24 = v32;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](a3, 0xE400000000000000);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](0xD000000000000010, 0x800000025314BBD0);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_253143320(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (!a1)
  {
    v28 = 0xED00004025203D3DLL;
    v29 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v6 + 16) = v29;
    *(v6 + 24) = v28;
    return v6;
  }

  a2(0);
  v10 = [swift_getObjCClassFromMetadata() entity];
  v11 = [v10 relationshipsByName];
  sub_2530DFADC();
  v12 = sub_253148AD4();

  v13 = sub_253149234();
  v15 = v14;

  if (!v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v12 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v16 = sub_25311D908(v13, v15);
  v18 = v17;

  if ((v18 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](a3, 0xE400000000000000);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](a4, a5);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v19 = *(*(v12 + 56) + 8 * v16);

  v20 = [v19 inverseRelationship];
  if (v20)
  {
    v21 = v20;
    if ([v20 isToMany])
    {
      v35 = 0;
      v36 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v22 = [v21 name];
      v23 = sub_253148B64();
      v25 = v24;

      MEMORY[0x259BFC7D0](v23, v25);

      v26 = 0x800000025314BBA0;
      v27 = 0xD00000000000002ALL;
    }

    else
    {
      sub_2531493C4();

      v30 = [v21 name];
      v31 = sub_253148B64();
      v33 = v32;

      v35 = v31;
      v36 = v33;
      v27 = 0x44496C65646F6D2ELL;
      v26 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v27, v26);

    v29 = v35;
    v28 = v36;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](a3, 0xE400000000000000);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](a4, a5);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t sub_253143734(uint64_t a1)
{
  v2 = v1;
  if (!a1)
  {
    v21 = 0xED00004025203D3DLL;
    v22 = 0x2044496C65646F6DLL;
LABEL_11:
    *(v2 + 16) = v22;
    *(v2 + 24) = v21;
    return v2;
  }

  type metadata accessor for HMCDUserSharedSettingsModel();
  v3 = [swift_getObjCClassFromMetadata() entity];
  v4 = [v3 relationshipsByName];
  sub_2530DFADC();
  v5 = sub_253148AD4();

  v6 = sub_253149234();
  v8 = v7;

  if (!v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (!*(v5 + 16))
  {
LABEL_13:

    goto LABEL_14;
  }

  v9 = sub_25311D908(v6, v8);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
LABEL_14:

    sub_2531493C4();
    MEMORY[0x259BFC7D0](0xD00000000000003BLL, 0x800000025314BB10);
    MEMORY[0x259BFC7D0](0x6553646572616853, 0xEE0073676E697474);
    MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
    MEMORY[0x259BFC7D0](0x6C616E6F6974704FLL, 0xEE003E726573553CLL);
    MEMORY[0x259BFC7D0](62, 0xE100000000000000);
    goto LABEL_16;
  }

  v12 = *(*(v5 + 56) + 8 * v9);

  v13 = [v12 inverseRelationship];
  if (v13)
  {
    v14 = v13;
    if ([v13 isToMany])
    {
      v28 = 0;
      v29 = 0xE000000000000000;
      sub_2531493C4();
      MEMORY[0x259BFC7D0](0x5952455551425553, 0xE900000000000028);
      v15 = [v14 name];
      v16 = sub_253148B64();
      v18 = v17;

      MEMORY[0x259BFC7D0](v16, v18);

      v19 = 0x800000025314BBA0;
      v20 = 0xD00000000000002ALL;
    }

    else
    {
      sub_2531493C4();

      v23 = [v14 name];
      v24 = sub_253148B64();
      v26 = v25;

      v28 = v24;
      v29 = v26;
      v20 = 0x44496C65646F6D2ELL;
      v19 = 0xEE004025203D3D20;
    }

    MEMORY[0x259BFC7D0](v20, v19);

    v22 = v28;
    v21 = v29;
    goto LABEL_11;
  }

  sub_2531493C4();
  MEMORY[0x259BFC7D0](0xD000000000000043, 0x800000025314BB50);
  MEMORY[0x259BFC7D0](0x6553646572616853, 0xEE0073676E697474);
  MEMORY[0x259BFC7D0](8236, 0xE200000000000000);
  MEMORY[0x259BFC7D0](0x6C616E6F6974704FLL, 0xEE003E726573553CLL);
  MEMORY[0x259BFC7D0](62, 0xE100000000000000);
LABEL_16:
  result = sub_253149594();
  __break(1u);
  return result;
}

uint64_t _s11HomeKitCore10HomesStoreC4UserV14SharedSettingsV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((_s11HomeKitCore25ModelIdentifierDescriptorV2eeoiySbACyxG_AEtFZ_0() & 1) != 0 && (v4 = type metadata accessor for HomesStore.User.SharedSettings(0), *(a1 + v4[5]) == *(a2 + v4[5])) && *(a1 + v4[6]) == *(a2 + v4[6]) && *(a1 + v4[7]) == *(a2 + v4[7]) && *(a1 + v4[8]) == *(a2 + v4[8]) && *(a1 + v4[9]) == *(a2 + v4[9]))
  {
    v5 = *(a1 + v4[10]) ^ *(a2 + v4[10]) ^ 1;
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

unint64_t sub_253143C48()
{
  result = qword_27F582940;
  if (!qword_27F582940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582940);
  }

  return result;
}

uint64_t sub_253143C9C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomesStore.User.SharedSettings(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_253143D00(uint64_t a1)
{
  v2 = type metadata accessor for HomesStore.User.SharedSettings(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_253143D5C(void *a1)
{
  a1[1] = sub_253143F30(&qword_27F582958, type metadata accessor for HomesStore.User.SharedSettings, &protocol conformance descriptor for HomesStore.User.SharedSettings);
  a1[2] = sub_253143F30(&qword_27F582960, type metadata accessor for HomesStore.User.SharedSettings, &protocol conformance descriptor for HomesStore.User.SharedSettings);
  a1[3] = sub_253143F30(&qword_27F582968, type metadata accessor for HomesStore.User.SharedSettings, &protocol conformance descriptor for HomesStore.User.SharedSettings);
  a1[4] = sub_253143F30(&qword_27F582970, type metadata accessor for HomesStore.User.SharedSettings, &protocol conformance descriptor for HomesStore.User.SharedSettings);
  result = sub_253143F30(&qword_27F582978, type metadata accessor for HomesStore.User.SharedSettings, &protocol conformance descriptor for HomesStore.User.SharedSettings);
  a1[5] = result;
  return result;
}

uint64_t sub_253143F30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_253143FA0(uint64_t a1)
{
  result = sub_253148944();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t _s14SharedSettingsV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s14SharedSettingsV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25314417C()
{
  result = qword_27F582998;
  if (!qword_27F582998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582998);
  }

  return result;
}

unint64_t sub_2531441D4()
{
  result = qword_27F5829A0;
  if (!qword_27F5829A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5829A0);
  }

  return result;
}

unint64_t sub_25314422C()
{
  result = qword_27F5829A8;
  if (!qword_27F5829A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5829A8);
  }

  return result;
}

uint64_t sub_253144280(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_253149734() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000025314ABB0 == a2 || (sub_253149734() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025314ABD0 == a2 || (sub_253149734() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000013 && 0x800000025314ABF0 == a2 || (sub_253149734() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x800000025314AC10 == a2 || (sub_253149734() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000021 && 0x800000025314BAB0 == a2 || (sub_253149734() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x800000025314AC50 == a2)
  {

    return 6;
  }

  else
  {
    v6 = sub_253149734();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_2531444C0()
{
  v1 = v0;
  v72 = *MEMORY[0x277D85DE8];
  v62 = sub_253148884();
  v2 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v56 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_2531488E4();
  v4 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_253148944();
  v6 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = v1;
  v8 = [v1 entity];
  v9 = [v8 attributesByName];

  sub_2530CF970(0, &qword_27F5829D0, 0x277CBE358);
  v10 = sub_253148AD4();

  v11 = v10;
  v12 = 0;
  v13 = v11 + 64;
  v14 = 1 << *(v11 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v11 + 64);
  v17 = (v14 + 63) >> 6;
  v63 = (v6 + 8);
  v58 = (v2 + 8);
  v57 = (v4 + 8);
  v18 = &off_279719000;
  v19 = &off_279719000;
  v20 = &off_279719000;
  v67 = v11;
  while (v16)
  {
LABEL_9:
    v22 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v23 = *(*(v67 + 56) + ((v12 << 9) | (8 * v22)));
    v24 = [v23 v18[177]];
    if (v24 > 799)
    {
      if (v24 > 1199)
      {
        if (v24 != 1200)
        {
          goto LABEL_42;
        }

        v39 = v19;
        v40 = v64;
        sub_253148934();
        sub_2531488F4();
        (*v63)(v40, v65);
        v41 = v61;
        sub_253148854();

        v42 = sub_253148864();
        v43 = v41;
        v19 = v39;
        (*v58)(v43, v62);
        v44 = [v23 v39 + 3064];
        if (!v44)
        {
          sub_253148B64();
          v44 = sub_253148B54();
          v20 = &off_279719000;
        }

        [v66 v20[178]];

        v18 = &off_279719000;
      }

      else if (v24 > 999)
      {
        if (v24 != 1000)
        {
          if (v24 == 1100)
          {
            v32 = v19;
            v33 = v64;
            sub_253148934();
            v25 = sub_253148904();
            v34 = v33;
            v19 = v32;
            (*v63)(v34, v65);
            v26 = [v23 v32 + 3064];
            goto LABEL_55;
          }

          goto LABEL_42;
        }

        sub_253148434();
        swift_allocObject();
        v45 = sub_253148424() | 0x4000000000000000;
        v70 = 0;
        v71 = v45;
        v46 = 32;
        do
        {
          v69[0] = 0;
          MEMORY[0x259BFDC80](v69, 8);
          v48 = v69[0];
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5829D8, &qword_253152B38);
          v69[3] = v47;
          v69[4] = sub_2531451C8();
          LOBYTE(v69[0]) = v48;
          v68 = *__swift_project_boxed_opaque_existential_1(v69, v47);
          sub_253148894();
          __swift_destroy_boxed_opaque_existential_0(v69);
          --v46;
        }

        while (v46);
        v49 = v70;
        v50 = v71;
        v51 = sub_2531488A4();
        v52 = [v23 v19[36]];
        if (v52)
        {
          v53 = v52;
        }

        else
        {
          sub_253148B64();
          v53 = sub_253148B54();

          v49 = v70;
          v50 = v71;
        }

        [v66 setValue:v51 forKey:v53];

        v54 = v50;
        v20 = &off_279719000;
        sub_2530C2478(v49, v54);
        v18 = &off_279719000;
        v19 = &off_279719000;
      }

      else
      {
        if (v24 == 800)
        {
          v69[0] = 0;
          MEMORY[0x259BFDC80](v69, 8);
          v25 = sub_253148D74();
          v26 = [v23 v19[36]];
          goto LABEL_55;
        }

        if (v24 == 900)
        {
          do
          {
            v69[0] = 0;
            MEMORY[0x259BFDC80](v69, 8);
          }

          while ((0x20000000000001 * v69[0]) < 0x1FFFFFFFFFF801);
          v27 = v19;
          v28 = v59;
          sub_2531488D4();
          v25 = sub_2531488C4();
          (*v57)(v28, v60);
          v19 = v27;
          v26 = [v23 v27 + 3064];
          goto LABEL_55;
        }

LABEL_42:
      }
    }

    else
    {
      if (v24 <= 399)
      {
        if (v24 > 199)
        {
          if (v24 == 200)
          {
            v69[0] = 0;
            MEMORY[0x259BFDC80](v69, 8);
            v25 = sub_2531497E4();
            v26 = [v23 v19[36]];
LABEL_55:
            v38 = v26;
            if (!v38)
            {
              sub_253148B64();
              v38 = sub_253148B54();
              v20 = &off_279719000;
            }

            goto LABEL_57;
          }

          if (v24 == 300)
          {
            v69[0] = 0;
            MEMORY[0x259BFDC80](v69, 8);
            v25 = sub_2531497F4();
            v26 = [v23 v19[36]];
            goto LABEL_55;
          }
        }

        else if (v24 == 100)
        {
          v69[0] = 0;
          MEMORY[0x259BFDC80](v69, 8);
          v25 = sub_2531497D4();
          v26 = [v23 v19[36]];
          goto LABEL_55;
        }

        goto LABEL_42;
      }

      if (v24 <= 599)
      {
        if (v24 == 400)
        {
          do
          {
            v69[0] = 0;
            v29 = MEMORY[0x259BFDC80](v69, 8);
          }

          while ((0x20000000000001 * v69[0]) < 0x1FFFFFFFFFF801);
          v31 = (v69[0] * 0x20000000000001uLL) >> 64;
          v30.n128_f64[0] = vcvtd_n_f64_u64(v31, 0x35uLL) * 100.0 + 0.0;
          if (v31 == 0x20000000000000)
          {
            v30.n128_f64[0] = 100.0;
          }

          MEMORY[0x259BFCDC0](v29, v30);
          v25 = sub_2531491B4();
          v26 = [v23 v19[36]];
          goto LABEL_55;
        }

        if (v24 == 500)
        {
          do
          {
            v69[0] = 0;
            MEMORY[0x259BFDC80](v69, 8);
          }

          while ((0x20000000000001 * v69[0]) < 0x1FFFFFFFFFF801);
          v25 = sub_253148F44();
          v26 = [v23 v19[36]];
          goto LABEL_55;
        }

        goto LABEL_42;
      }

      if (v24 == 600)
      {
        v69[0] = 0;
        MEMORY[0x259BFDC80](v69, 8);
        while ((16777217 * LODWORD(v69[0])) < 0xFFFF01)
        {
          v69[0] = 0;
          MEMORY[0x259BFDC80](v69, 8);
        }

        v25 = sub_253148F54();
        v26 = [v23 v19[36]];
        goto LABEL_55;
      }

      if (v24 != 700)
      {
        goto LABEL_42;
      }

      v35 = v19;
      v36 = v64;
      sub_253148934();
      sub_2531488F4();
      v37 = v36;
      v19 = v35;
      (*v63)(v37, v65);
      v25 = sub_253148B54();

      v38 = [v23 v35 + 3064];
      if (!v38)
      {
        sub_253148B64();
        v38 = sub_253148B54();
      }

      v20 = &off_279719000;
LABEL_57:
      [v66 v20[178]];
    }
  }

  while (1)
  {
    v21 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      __break(1u);
    }

    if (v21 >= v17)
    {
    }

    v16 = *(v13 + 8 * v21);
    ++v12;
    if (v16)
    {
      v12 = v21;
      goto LABEL_9;
    }
  }
}

uint64_t sub_253144F3C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  sub_2530CF970(0, &qword_27F580EA8, 0x277CBE438);
  v6 = v5;
  v7 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v7 ^ 1u, 1, a1);
}

id sub_25314500C()
{
  v1 = [*(v0 + 16) entity];

  return v1;
}

id sub_253145044@<X0>(void *a1@<X8>)
{
  result = [*(v1 + 16) managedObjectContext];
  *a1 = result;
  return result;
}

uint64_t sub_253145084()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_253148B64();

  return v2;
}

unint64_t sub_2531450E4()
{
  result = qword_27F5829B8;
  if (!qword_27F5829B8)
  {
    sub_2530CF970(255, &qword_27F5829C0, 0x277CBE440);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5829B8);
  }

  return result;
}

unint64_t sub_25314514C(uint64_t a1)
{
  result = sub_253145174();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_253145174()
{
  result = qword_27F5829C8;
  if (!qword_27F5829C8)
  {
    _s5ProxyCMa_0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5829C8);
  }

  return result;
}

unint64_t sub_2531451C8()
{
  result = qword_27F5829E0;
  if (!qword_27F5829E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5829D8, &qword_253152B38);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5829E0);
  }

  return result;
}

void *sub_253145238(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2531492E4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v16 = MEMORY[0x277D84F90];
  result = sub_2530F4DD0(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v16;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x259BFD000](v5, a1);
        v16 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_2530F4DD0((v7 > 1), v8 + 1, 1);
          v3 = v16;
        }

        ++v5;
        v14 = _s5ProxyCMa_0();
        v15 = sub_253145174();
        *&v13 = v6;
        *(v3 + 16) = v8 + 1;
        sub_2530BDB14(&v13, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v16 = v3;
        v11 = *(v3 + 16);
        v12 = *(v3 + 24);

        if (v11 >= v12 >> 1)
        {
          sub_2530F4DD0((v12 > 1), v11 + 1, 1);
          v3 = v16;
        }

        v14 = _s5ProxyCMa_0();
        v15 = sub_253145174();
        *&v13 = v10;
        *(v3 + 16) = v11 + 1;
        sub_2530BDB14(&v13, v3 + 40 * v11 + 32);
        ++v9;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

char *sub_2531453E8(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_2531492E4();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v13 = MEMORY[0x277D84F90];
  result = sub_2530F4ED8(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x259BFD000](i, a1);
        sub_2530FC2B4();
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_2530F4ED8((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_2530C02F4(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2530FC2B4();
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_2530F4ED8((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_2530C02F4(v12, (v3 + 32 * v11 + 32));
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

id sub_2531455B4(unint64_t a1)
{
  v2 = *v1;
  sub_2531453E8(a1);
  v3 = sub_253148C84();

  v4 = [v2 currentPersistentHistoryTokenFromStores_];

  return v4;
}

id static HMCDModel.fetchRequest()(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582A00, &qword_253152B88);
  v1 = [swift_getObjCClassFromMetadata() entityName];
  v2 = sub_253148B64();
  v4 = v3;

  v5 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  return sub_253146440(v2, v4);
}

void HMCDModel.legacyUniqueIdentifier.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = sub_253148944();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [v3 managedObjectContext];
  if (!v11)
  {
    goto LABEL_15;
  }

  v12 = v11;
  v13 = [v11 persistentStoreCoordinator];

  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = [v13 persistentStores];

  sub_2530CF970(0, &qword_27F581398, 0x277CBE4D0);
  v15 = sub_253148C94();

  if (!(v15 >> 62))
  {
    if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_11:

    goto LABEL_15;
  }

  if (!sub_2531492E4())
  {
    goto LABEL_11;
  }

LABEL_5:
  v25[0] = v7;
  v25[1] = a3;
  if ((v15 & 0xC000000000000001) != 0)
  {
    v16 = a1;
    v17 = MEMORY[0x259BFD000](0, v15);
  }

  else
  {
    if (!*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_15;
    }

    v16 = a1;
    v17 = *(v15 + 32);
  }

  v18 = v17;

  sub_253145A04(&v26);
  v19 = *(&v26 + 1);
  if (*(&v26 + 1) >> 60 != 15)
  {
    v20 = v26;
    v21 = objc_opt_self();
    (*(a2 + 16))(v16, a2);
    v22 = sub_253148904();
    (*(v8 + 8))(v10, v25[0]);
    v23 = sub_2531488A4();
    v24 = [v21 hmf:v22 UUIDWithNamespace:v23 data:0 salts:?];

    sub_253148924();
    sub_2530FC300(v20, v19);

    return;
  }

LABEL_15:
  sub_253149594();
  __break(1u);
}

uint64_t sub_253145A04@<X0>(_OWORD *a1@<X8>)
{
  result = [v1 metadata];
  if (result)
  {
    v4 = result;
    v5 = sub_253148AD4();

    if (*(v5 + 16) && (v6 = sub_25311D908(0xD000000000000032, 0x800000025314A550), (v7 & 1) != 0))
    {
      sub_2530C0304(*(v5 + 56) + 32 * v6, v8);
    }

    else
    {

      memset(v8, 0, sizeof(v8));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5818A0, &qword_25314E9C0);
    result = swift_dynamicCast();
    if ((result & 1) == 0)
    {
      *a1 = xmmword_253152B70;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_253145B14()
{
  v0 = sub_253148A94();
  __swift_allocate_value_buffer(v0, qword_27F5829E8);
  __swift_project_value_buffer(v0, qword_27F5829E8);
  return sub_253148A84();
}

uint64_t static HMCDModel.fetch(withModelID:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = sub_253148944();
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582A00, &qword_253152B88);
  v4 = [swift_getObjCClassFromMetadata() entityName];
  v5 = sub_253148B64();
  v7 = v6;

  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v9 = sub_253146440(v5, v7);
  sub_2530CF970(0, &qword_27F581968, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582A08, "hR");
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_25314D290;
  v11 = sub_253148904();
  *(v10 + 56) = sub_2530CF970(0, &qword_27F582A10, 0x277CCAD78);
  *(v10 + 64) = sub_253146054();
  *(v10 + 32) = v11;
  v12 = sub_253149084();
  [v9 setPredicate_];

  [v9 setFetchBatchSize_];
  sub_253149154();
  sub_253148D64();
  swift_getWitnessTable();
  sub_253149034();

  return v14;
}

unint64_t sub_253146054()
{
  result = qword_27F582A18;
  if (!qword_27F582A18)
  {
    sub_2530CF970(255, &qword_27F582A10, 0x277CCAD78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F582A18);
  }

  return result;
}

uint64_t static HMCDModel.fetch(in:)(uint64_t a1, uint64_t a2)
{
  v2 = static HMCDModel.fetchRequest()(a2);
  v3 = sub_253149154();

  return v3;
}

void HMCDModel.updateProperty<A>(at:newValue:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*a1 + *MEMORY[0x277D84568] + 8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v13 - v8;
  v14 = v4;
  v10 = v4;
  swift_getAtKeyPath();

  v11 = sub_253148B44();
  (*(v7 + 8))(v9, v6);
  if ((v11 & 1) == 0)
  {
    (*(v7 + 16))(v9, a2, v6);
    v14 = v10;
    v12 = v10;
    swift_setAtReferenceWritableKeyPath();
  }
}

id sub_253146440(uint64_t a1, uint64_t a2)
{
  v3 = sub_253148B54();

  v4 = [v2 initWithEntityName_];

  return v4;
}

unint64_t sub_253146498(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_253146564(v11, 0, 0, 1, a1, a2);
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
    sub_2530C0304(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_253146564(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_253146670(a5, a6);
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
    result = sub_253149464();
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

void *sub_253146670(uint64_t a1, unint64_t a2)
{
  v3 = sub_2531466BC(a1, a2);
  sub_2531467EC(&unk_2864E9AB8);
  return v3;
}

void *sub_2531466BC(uint64_t a1, unint64_t a2)
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

  v6 = sub_2531468D8(v5, 0);
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

  result = sub_253149464();
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
        v10 = sub_253148BE4();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_2531468D8(v10, 0);
        result = sub_2531493B4();
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

uint64_t sub_2531467EC(uint64_t result)
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

  result = sub_25314694C(result, v11, 1, v3);
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

void *sub_2531468D8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582A20, &qword_253152BA8);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_25314694C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582A20, &qword_253152BA8);
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

unint64_t sub_253146A40()
{
  result = qword_27F5807B8;
  if (!qword_27F5807B8)
  {
    sub_253148944();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5807B8);
  }

  return result;
}

uint64_t sub_253146AE8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(void), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v19 = a5;
  v16[0] = a1;
  v16[1] = a2;
  v16[2] = a4;
  v17 = 1;
  v18 = 0;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = *(AssociatedConformanceWitness + 32);
  v13 = a4;

  v14 = swift_checkMetadataState();
  v12(v16, v14, AssociatedConformanceWitness);
  if (v9)
  {
  }

  else
  {
    v19();
  }
}

uint64_t sub_253146CC4(uint64_t a1, uint64_t a2, void (*a3)(void), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  v10 = sub_253148AA4();
  v23 = v10;
  v11 = *(a1 + 16);
  if (v11)
  {
    v19 = a3;
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    v13 = *(AssociatedConformanceWitness + 32);
    v14 = (a1 + 40);
    while (1)
    {
      v15 = *v14;
      v20[0] = *(v14 - 1);
      v20[1] = v15;
      v20[2] = 0;
      v21 = 1;
      v22 = 0;

      v16 = swift_checkMetadataState();
      v13(v20, v16, AssociatedConformanceWitness);
      if (v7)
      {
        break;
      }

      sub_253148D04();

      v14 += 2;
      if (!--v11)
      {
        v17 = v23;
        a3 = v19;
        goto LABEL_7;
      }
    }
  }

  else
  {
    v17 = v10;
LABEL_7:
    a3(v17);
  }
}

unint64_t sub_253146EF8()
{
  result = qword_27F582A28[0];
  if (!qword_27F582A28[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F582A28);
  }

  return result;
}

uint64_t sub_253146F4C(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v38 = a1;
  v39 = a2;
  v10 = *(a5 - 8);
  MEMORY[0x28223BE20](a1);
  v40 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v42 = *(AssociatedTypeWitness - 8);
  v12 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v14 = &v27 - v13;
  MEMORY[0x28223BE20](v12);
  v36 = &v27 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v30 = *(v16 - 8);
  v31 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v27 - v17;
  v19 = sub_253149014();
  if (!v19)
  {
    return sub_253148CE4();
  }

  v41 = v19;
  v45 = sub_253149504();
  v32 = sub_253149514();
  sub_2531494B4();
  result = sub_253149004();
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
      v22 = sub_253149054();
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
      sub_2531494F4();
      result = sub_253149024();
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

uint64_t RelationshipResolver.model<A>(at:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v28 = a4;
  v8 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](a1);
  v12 = &v28 - v11;
  v13 = *(v8 + 16);
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v28 - v18;
  swift_getAtKeyPath();
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    (*(v9 + 8))(v12, v8);
    v20 = *(a2 + 24);
    v29 = *(a2 + 16);
    v30 = v13;
    v31 = v20;
    v32 = a3;
    v21 = type metadata accessor for RelationshipResolver.ModelProxy(0, &v29);
    v22 = 1;
    v23 = v28;
  }

  else
  {
    (*(v14 + 32))(v19, v12, v13);
    (*(v14 + 16))(v17, v19, v13);
    sub_2530C25FC(v5 + *(a2 + 36), &v29);
    v25 = *(a2 + 16);
    v24 = *(a2 + 24);
    v26 = v28;
    sub_25313CA70(v17, &v29, v25, v13, v24, a3, v28);
    (*(v14 + 8))(v19, v13);
    v29 = v25;
    v30 = v13;
    v31 = v24;
    v32 = a3;
    v21 = type metadata accessor for RelationshipResolver.ModelProxy(0, &v29);
    v22 = 0;
    v23 = v26;
  }

  return (*(*(v21 - 8) + 56))(v23, v22, 1);
}

uint64_t RelationshipResolver.models<A>(at:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  return sub_253147A6C(a1, a2, a3, sub_2531481F0);
}

{
  v4 = v3;
  v7 = *a1;
  v8 = swift_getAtKeyPath();
  if (!v22[0])
  {
    return 0;
  }

  v22[5] = v22[0];
  MEMORY[0x28223BE20](v8);
  v9 = *(a2 + 24);
  v17 = *(a2 + 16);
  v10 = *(*(v7 + *MEMORY[0x277D84DE8] + 8) + 16);
  v18 = *(v10 + 16);
  v19 = v9;
  v20 = a3;
  v21 = v4;
  v22[0] = v17;
  v22[1] = v18;
  v22[2] = v9;
  v22[3] = a3;
  v11 = type metadata accessor for RelationshipResolver.ModelProxy(0, v22);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_253146F4C(sub_253147890, &v16, v10, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  return v14;
}

uint64_t sub_2531477CC@<X0>(uint64_t a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  v10 = a5 + *(type metadata accessor for RelationshipResolver(0, a3, a4, v9) + 36);

  return sub_2530BDB14(a2, v10);
}

uint64_t _s11HomeKitCore20RelationshipResolverV5model2atAC10ModelProxyVyx_qd__Gs7KeyPathCyxqd__G_tAA0H10DescriptorRd__lF_0@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v9 = *(*a1 + *MEMORY[0x277D84DE8] + 8);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](a1);
  v13 = &v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v18[-1] - v14;
  swift_getAtKeyPath();
  (*(v10 + 16))(v13, v15, v9);
  sub_2530C25FC(v5 + *(a2 + 36), v18);
  sub_25313CA70(v13, v18, *(a2 + 16), v9, *(a2 + 24), a3, a4);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_253147A6C(uint64_t *a1, uint64_t a2, uint64_t a3, void (*a4)(char *, char *))
{
  v8 = *a1;
  swift_getAtKeyPath();
  v22[5] = v22[0];
  v9 = *(a2 + 24);
  v17 = *(a2 + 16);
  v10 = *(v8 + *MEMORY[0x277D84DE8] + 8);
  v18 = *(v10 + 16);
  v19 = v9;
  v20 = a3;
  v21 = v4;
  v22[0] = v17;
  v22[1] = v18;
  v22[2] = v9;
  v22[3] = a3;
  v11 = type metadata accessor for RelationshipResolver.ModelProxy(0, v22);
  WitnessTable = swift_getWitnessTable();
  v14 = sub_253146F4C(a4, &v16, v10, v11, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v13);

  return v14;
}

uint64_t sub_253147B88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v14 = &v20[-1] - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14);
  v17 = type metadata accessor for RelationshipResolver(0, a3, a5, v16);
  sub_2530C25FC(a2 + *(v17 + 36), v20);
  return sub_25313CA70(v14, v20, a3, a4, a5, a6, a7);
}

unint64_t sub_253147CAC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_25313DC78();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_253147D34(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 64);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  if (v7 >= a2)
  {
    goto LABEL_28;
  }

  v8 = ((v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  v9 = a2 - v7;
  v10 = v8 & 0xFFFFFFF8;
  if ((v8 & 0xFFFFFFF8) != 0)
  {
    v11 = 2;
  }

  else
  {
    v11 = v9 + 1;
  }

  if (v11 >= 0x10000)
  {
    v12 = 4;
  }

  else
  {
    v12 = 2;
  }

  if (v11 < 0x100)
  {
    v12 = 1;
  }

  if (v11 >= 2)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }

    else
    {
      v14 = *(a1 + v8);
      if (!v14)
      {
        goto LABEL_28;
      }
    }
  }

  else if (!v13 || (v14 = *(a1 + v8)) == 0)
  {
LABEL_28:
    if (v5 >= 0x7FFFFFFF)
    {
      return (*(v4 + 48))(a1);
    }

    v17 = *(((a1 + v6 + 7) & 0xFFFFFFFFFFFFFFF8) + 24);
    if (v17 >= 0xFFFFFFFF)
    {
      LODWORD(v17) = -1;
    }

    return (v17 + 1);
  }

  v16 = v14 - 1;
  if (v10)
  {
    v16 = 0;
    LODWORD(v10) = *a1;
  }

  return v7 + (v10 | v16) + 1;
}

double sub_253147E70(_DWORD *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  if (v6 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v5 + 84);
  }

  v8 = *(*(*(a4 + 16) - 8) + 64);
  v9 = ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40;
  if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
  {
    v10 = a3 - v7 + 1;
  }

  else
  {
    v10 = 2;
  }

  if (v10 >= 0x10000)
  {
    v11 = 4;
  }

  else
  {
    v11 = 2;
  }

  if (v10 < 0x100)
  {
    v11 = 1;
  }

  if (v10 >= 2)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  if (v7 < a3)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  if (a2 > v7)
  {
    if (((v8 + 7) & 0xFFFFFFF8) == 0xFFFFFFD8)
    {
      v14 = a2 - v7;
    }

    else
    {
      v14 = 1;
    }

    if (((v8 + 7) & 0xFFFFFFF8) != 0xFFFFFFD8)
    {
      v15 = ~v7 + a2;
      v16 = a1;
      bzero(a1, ((v8 + 7) & 0xFFFFFFFFFFFFFFF8) + 40);
      a1 = v16;
      *v16 = v15;
    }

    if (v13 > 1)
    {
      if (v13 == 2)
      {
        *(a1 + v9) = v14;
      }

      else
      {
        *(a1 + v9) = v14;
      }
    }

    else if (v13)
    {
      *(a1 + v9) = v14;
    }

    return result;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *(a1 + v9) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_36;
    }

    *(a1 + v9) = 0;
  }

  else if (v13)
  {
    *(a1 + v9) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_36;
  }

  if (!a2)
  {
    return result;
  }

LABEL_36:
  if (v6 < 0x7FFFFFFF)
  {
    v19 = (a1 + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
    if ((a2 & 0x80000000) != 0)
    {
      result = 0.0;
      *(v19 + 8) = 0u;
      *(v19 + 24) = 0u;
      *v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      *(v19 + 24) = a2 - 1;
    }
  }

  else
  {
    v18 = *(v5 + 56);

    v18();
  }

  return result;
}

uint64_t sub_25314804C(uint64_t a1)
{
  result = sub_253148944();
  if (v3 <= 0x3F)
  {
    v4 = result;
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    *(*(a1 - 8) + 84) = *(*(v4 - 8) + 84);
    return 0;
  }

  return result;
}

uint64_t sub_2531480F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_253148944();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_25314815C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_253148944();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, a2, a3, v6);
}

uint64_t ModelRelationshipDescriptor.predicate(for:)()
{
  sub_2530CF970(0, &qword_27F581968, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F582A08, "hR");
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_25314D290;
  v1 = sub_253148904();
  *(v0 + 56) = sub_2530CF970(0, &qword_27F582A10, 0x277CCAD78);
  *(v0 + 64) = sub_253146054();
  *(v0 + 32) = v1;
  return sub_253149084();
}

uint64_t ModelRelationshipDescriptor.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}