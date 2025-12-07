uint64_t sub_2273420C0(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  __swift_project_boxed_opaque_existential_0(a1 + 15, a1[18]);
  sub_226F19410();
  sub_226F19464();
  return sub_22766A120();
}

uint64_t sub_227342174@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, char **a4@<X8>)
{
  v55 = a4;
  v7 = *a2;
  v8 = sub_22766B390();
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x28223BE20](v8);
  v58 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SyncZoneChangeWindow(0);
  v11 = v10 - 8;
  v12 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v7 + 80);
  v60 = a2;
  v17 = type metadata accessor for ServerSyncZoneCoordinator(0, v15, *(v7 + 88), v16);
  WitnessTable = swift_getWitnessTable();
  sub_2274F5148(v17, WitnessTable);
  v56 = type metadata accessor for SyncZoneChangeset(0);
  v18 = *(v56 + 20);
  v59 = a3;
  v19 = (a3 + v18);
  v20 = *v19;
  v21 = v19[1];
  v22 = &v14[*(v11 + 28)];
  *v22 = v20;
  v22[1] = v21;
  v23 = a1;
  v24 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BACF0, &qword_227679758);
  v25 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_227670CD0;
  v62 = v14;
  sub_227344180(v14, v26 + v25, type metadata accessor for SyncZoneChangeWindow);
  v27 = v24[1];
  v28 = v24[3];
  v29 = *(v24 + 16);
  sub_226F5E0B4(v20, v21);
  v30 = v61;
  sub_2275665A4(v26, v27, v29, v28);

  if (v30)
  {
    return sub_227343F70(v62, type metadata accessor for SyncZoneChangeWindow);
  }

  v33 = WitnessTable;
  v32 = v58;
  v34 = (v59 + *(v56 + 24));
  v35 = *v34;
  v36 = v34[1];
  if (sub_2275D6484(*v34, v36))
  {
    sub_22766A6B0();

    v37 = sub_22766B380();
    v38 = sub_22766C8B0();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = v32;
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v63 = v41;
      *v40 = 136446210;
      v42 = sub_2274F6F4C(v17, v33);
      v44 = sub_226E97AE8(v42, v43, &v63);

      *(v40 + 4) = v44;
      _os_log_impl(&dword_226E8E000, v37, v38, "Changeset was empty for %{public}s", v40, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v41);
      MEMORY[0x22AA9A450](v41, -1, -1);
      MEMORY[0x22AA9A450](v40, -1, -1);

      (*(v53 + 8))(v39, v54);
    }

    else
    {

      (*(v53 + 8))(v32, v54);
    }

    result = sub_227343F70(v62, type metadata accessor for SyncZoneChangeWindow);
    v51 = v55;
    *v55 = 0;
    v51[1] = 0;
    v51[2] = 0;
  }

  else
  {
    v45 = sub_22733F5B0(v35, v36, v23);
    v47 = v46;
    v49 = v48;
    result = sub_227343F70(v62, type metadata accessor for SyncZoneChangeWindow);
    v50 = v55;
    *v55 = v45;
    v50[1] = v47;
    v50[2] = v49;
  }

  return result;
}

void *sub_227342610(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_22739B884(a3, AssociatedTypeWitness, AssociatedConformanceWitness, a1);
  if (!v5)
  {
    v11 = a2;
  }

  return a2;
}

uint64_t sub_2273426CC@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(char *, uint64_t)@<X1>, void *a5@<X5>, char *a6@<X8>)
{
  v10 = *a1;
  sub_226E99364(255, &qword_281398A20, 0x277CBC5A0);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  result = a2(&a6[*(TupleTypeMetadata2 + 48)], v10);
  if (v6)
  {
    *a5 = v6;
  }

  else
  {
    *a6 = result;
  }

  return result;
}

uint64_t sub_2273427AC@<X0>(uint64_t a2@<X1>, void *a5@<X4>, uint64_t x8_0@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_22739B884(a2, AssociatedTypeWitness, AssociatedConformanceWitness, x8_0);
  if (v6)
  {
    *a5 = v6;
  }

  return result;
}

uint64_t sub_227342868@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  sub_226E99364(255, &qword_281398A20, 0x277CBC5A0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v10 = (&v13 - v9);
  (*(v11 + 16))(&v13 - v9, a1, TupleTypeMetadata2, v8);

  return (*(*(AssociatedTypeWitness - 8) + 32))(a4, v10 + *(TupleTypeMetadata2 + 48), AssociatedTypeWitness);
}

uint64_t sub_2273429D0(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return sub_22766D160();
}

uint64_t sub_227342A88(void *a1, uint64_t a2, uint64_t *a3, void *a4)
{
  v40 = a4;
  v38[1] = a2;
  v5 = *a3;
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SyncChangeTag(0);
  v39 = *(v10 - 8);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = (v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = [a1 etag];
  if (v14)
  {
    v15 = v14;
    v38[0] = sub_22766C000();
    v17 = v16;

    v20 = v5 + 80;
    v19 = *(v5 + 80);
    v18 = *(v20 + 8);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    v21 = sub_22766D140();
    v23 = v22;
    v25 = type metadata accessor for ServerSyncZoneCoordinator(0, v19, v18, v24);
    WitnessTable = swift_getWitnessTable();
    sub_2274F5148(v25, WitnessTable);
    *v13 = v21;
    v13[1] = v23;
    v27 = (v13 + *(v10 + 24));
    *v27 = v38[0];
    v27[1] = v17;
    v28 = __swift_project_boxed_opaque_existential_0(v40, v40[3]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAD50, &qword_2276797B8);
    v29 = (*(v39 + 80) + 32) & ~*(v39 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_227670CD0;
    sub_227344180(v13, v30 + v29, type metadata accessor for SyncChangeTag);
    sub_227566B54(v30, v28[1], *(v28 + 16), v28[3]);

    return sub_227343F70(v13, type metadata accessor for SyncChangeTag);
  }

  else
  {
    sub_22766A6B0();
    v32 = a1;
    v33 = sub_22766B380();
    v34 = sub_22766C890();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      *v35 = 138543362;
      v37 = [v32 recordID];
      *(v35 + 4) = v37;
      *v36 = v37;
      _os_log_impl(&dword_226E8E000, v33, v34, "Etag doesn't exist on inserting record: %{public}@", v35, 0xCu);
      sub_226E97D1C(v36, &unk_27D7B9660, &qword_2276740C0);
      MEMORY[0x22AA9A450](v36, -1, -1);
      MEMORY[0x22AA9A450](v35, -1, -1);
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t sub_227342EA4(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  sub_226E99364(255, &qword_281398A20, 0x277CBC5A0);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

BOOL sub_227342F64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_226E99364(255, &qword_281398A20, 0x277CBC5A0);
  swift_getAssociatedTypeWitness();
  swift_getTupleTypeMetadata2();
  sub_22766C3D0();
  swift_getWitnessTable();
  swift_getAssociatedConformanceWitness();
  return (sub_22766C280() & 1) == 0;
}

void sub_227343084(void *a1@<X0>, void (*a2)(void, void, void)@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v67 = a2;
  v77 = a4;
  v5 = *a3;
  v76 = *(*a3 + 88);
  v68 = a3;
  v6 = *(v5 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = *(AssociatedTypeWitness - 8);
  v71 = AssociatedTypeWitness;
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v61 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v60 - v10;
  v11 = sub_22766B390();
  v72 = *(v11 - 8);
  v73 = v11;
  MEMORY[0x28223BE20](v11);
  v74 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766AF40();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v60 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = a1;
  v18 = [a1 encryptedValues];
  swift_getObjectType();
  v19 = *(v14 + 104);
  LODWORD(v65) = *MEMORY[0x277D544E8];
  v64 = v19;
  (v19)(v17);
  sub_22766AF30();
  v63 = *(v14 + 8);
  v63(v17, v13);
  sub_22766CA00();

  v20 = v77;
  swift_unknownObjectRelease();
  v21 = v75;
  sub_2276676F0();
  if (v21)
  {
    v75 = v21;
    v62 = v6;
    [v66 encryptedValues];
    swift_getObjectType();
    (v64)(v17, v65, v13);
    sub_22766AF30();
    v63(v17, v13);
    sub_22766CA00();

    swift_unknownObjectRelease();
    v22 = 0;
    v23 = 0;
    v24 = v79;
    if (v79 >> 60 != 15)
    {
      v25 = v78;
      v22 = sub_227662570();
      v23 = v26;
      sub_226FB1424(v25, v24);
    }

    v66 = v22;
    v27 = v74;
    sub_22766A6B0();
    v29 = v69;
    v28 = v70;
    v30 = v67;
    v31 = v71;
    v67 = *(v70 + 16);
    v67(v69, v30, v71);

    v32 = sub_22766B380();
    v33 = sub_22766C8A0();

    LODWORD(v68) = v33;
    v34 = os_log_type_enabled(v32, v33);
    v35 = v62;
    if (v34)
    {
      v36 = swift_slowAlloc();
      v64 = v32;
      v37 = v28;
      v38 = v36;
      v65 = swift_slowAlloc();
      v80 = v65;
      *v38 = 136446979;
      v40 = v31;
      v41 = type metadata accessor for ServerSyncZoneCoordinator(0, v35, v76, v39);
      WitnessTable = swift_getWitnessTable();
      v43 = sub_2274F6F4C(v41, WitnessTable);
      v45 = sub_226E97AE8(v43, v44, &v80);

      *(v38 + 4) = v45;
      *(v38 + 12) = 2082;
      v46 = v29;
      v47 = v61;
      v67(v61, v46, v40);
      v48 = *(v37 + 8);
      v48(v46, v40);
      swift_getAssociatedConformanceWitness();
      v49 = sub_22766D140();
      v51 = v50;
      v48(v47, v40);
      v52 = sub_226E97AE8(v49, v51, &v80);

      *(v38 + 14) = v52;
      *(v38 + 22) = 2160;
      *(v38 + 24) = 1752392040;
      *(v38 + 32) = 2081;
      v78 = v66;
      v79 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v53 = sub_22766CB80();
      v55 = v54;

      v56 = sub_226E97AE8(v53, v55, &v80);

      *(v38 + 34) = v56;
      v57 = v64;
      _os_log_impl(&dword_226E8E000, v64, v68, "Failed to parse record of type %{public}s: %{public}s, %{private,mask.hash}s", v38, 0x2Au);
      v58 = v65;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v58, -1, -1);
      MEMORY[0x22AA9A450](v38, -1, -1);

      (*(v72 + 8))(v74, v73);
    }

    else
    {
      (*(v28 + 8))(v29, v31);

      (*(v72 + 8))(v27, v73);
    }

    v59 = v77;
    sub_2276693D0();
    if (sub_2276693B0())
    {
      swift_willThrow();
    }

    else
    {
      (*(*(v62 - 8) + 56))(v59, 1, 1);
    }
  }

  else
  {
    (*(*(v6 - 8) + 56))(v20, 0, 1, v6);
  }
}

uint64_t sub_227343810(char *a1, uint64_t (*a2)(uint64_t, char *), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = *a1;
  sub_226E99364(255, &qword_281398A20, 0x277CBC5A0);
  swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(v7, &a1[*(TupleTypeMetadata2 + 48)]);
}

uint64_t sub_227343908(uint64_t a1, uint64_t a2, double a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_226E93028;

  return sub_22733E554(a1, a2, a3);
}

uint64_t sub_2273439B8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E92F34;

  return sub_227341488(a1);
}

void *sub_227343AC0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *), uint64_t a5)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      v8 = a5;
      v9 = a4;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
      a4 = v9;
      a5 = v8;
    }

    sub_2272C547C(result, a2, a3, a4, a5);
    v11 = v10;

    return v11;
  }

  return result;
}

uint64_t sub_227343B50(void *a1, uint64_t a2, uint64_t a3)
{
  v30 = sub_2276694E0();
  v7 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v27 - v14;
  v17 = type metadata accessor for ServerSyncZoneCoordinator(0, a2, a3, v16);
  WitnessTable = swift_getWitnessTable();
  sub_2274F5148(v17, WitnessTable);
  v29 = a1;
  sub_22712F4F0(v15, a1);
  if (v3)
  {
    return (*(v7 + 8))(v15, v30);
  }

  v28 = v9;
  v20 = v15;
  v21 = v30;
  v22 = *(v7 + 8);
  v22(v20, v30);
  sub_2274F5148(v17, WitnessTable);
  v23 = v29;
  sub_22712F964(v12, v29);
  v24 = v12;
  v25 = v22;
  v22(v24, v21);
  v26 = v28;
  sub_2274F5148(v17, WitnessTable);
  sub_22712FDD8(v26, v23);
  return v25(v26, v21);
}

uint64_t sub_227343E40(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227343E88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_227343F70(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_2273440E0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 32))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_227344180(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_22734420C()
{
  result = qword_281398A18;
  if (!qword_281398A18)
  {
    sub_226E99364(255, &qword_281398A20, 0x277CBC5A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398A18);
  }

  return result;
}

unint64_t sub_22734429C(uint64_t a1)
{
  result = sub_2273442C4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_2273442C4()
{
  result = qword_27D7BCDC0;
  if (!qword_27D7BCDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCDC0);
  }

  return result;
}

unint64_t sub_227344324(uint64_t a1)
{
  result = sub_22734434C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_22734434C()
{
  result = qword_27D7BCDC8;
  if (!qword_27D7BCDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCDC8);
  }

  return result;
}

uint64_t sub_2273443A0(uint64_t a1, uint64_t a2)
{
  v4 = sub_22733622C();

  return MEMORY[0x2821B22E0](a1, a2, v4);
}

char *sub_22734441C(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDD0, &qword_227681498);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  v14 = sub_2272370B8(100);
  swift_setDeallocating();

  v15 = qword_2813B2078;
  v16 = sub_22766A100();
  (*(*(v16 - 8) + 8))(v11 + v15, v16);
  swift_deallocClassInstance();
  return v14;
}

void sub_22734466C(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v6, v3);
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v11 = *(v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDD0, &qword_227681498);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  v15 = qword_2813B2078;
  swift_beginAccess();
  v16 = sub_2275430E0(v12 + v15, v11, v10);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v17 = sub_227249F00(0);
    if (!v1)
    {
      v18 = v17;
      [v17 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v19 = sub_22766C9E0();
      v20 = sub_226EDAB24(v19);

      sub_226EDAB78(v20, v14);

      return;
    }
  }
}

char *sub_227344918(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v3 + 8))(v5, v2);
  v6 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v7 = *v6;
  v8 = v6[1];
  v9 = *(v6 + 16);
  v10 = v6[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDD8, qword_2276814A0);
  v11 = swift_allocObject();
  v12 = v7;
  v13 = v8;

  sub_22766A070();
  *(v11 + 16) = v12;
  *(v11 + 24) = v13;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  swift_getKeyPath();
  v14 = sub_227666B80();
  v16 = v15;
  v37[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v37[0] = v14;
  v37[1] = v16;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v17 = sub_22766C820();
  sub_226ED25F8(v37, v35);
  v18 = v36;
  if (v36)
  {
    v19 = __swift_project_boxed_opaque_existential_0(v35, v36);
    v20 = *(v18 - 8);
    v21 = MEMORY[0x28223BE20](v19);
    v23 = v35 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v20 + 16))(v23, v21);
    v24 = sub_22766D170();
    (*(v20 + 8))(v23, v18);
    __swift_destroy_boxed_opaque_existential_0(v35);
  }

  else
  {
    v24 = 0;
  }

  v25 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v26 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDE0 qword_2276814E0))];

  sub_226EBC888(v37);
  swift_beginAccess();
  v27 = v26;
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v37, 0);
  swift_endAccess();

  v31 = sub_2272373B8(100);
  swift_setDeallocating();

  v32 = qword_2813B2078;
  v33 = sub_22766A100();
  (*(*(v33 - 8) + 8))(v11 + v32, v33);
  swift_deallocClassInstance();
  return v31;
}

char *sub_227344DFC(uint64_t a1, void *a2)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v6, v3);
  v7 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = *(v7 + 16);
  v11 = v7[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDD8, qword_2276814A0);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v10;
  *(v12 + 40) = v11;
  swift_getKeyPath();
  v15 = sub_227666B80();
  v17 = v16;
  v38[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
  v38[0] = v15;
  v38[1] = v17;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226ED25F8(v38, v36);
  v19 = v37;
  if (v37)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v36, v37);
    v21 = *(v19 - 8);
    v22 = MEMORY[0x28223BE20](v20);
    v24 = v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v36);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  v27 = [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDE0 qword_2276814E0))];

  sub_226EBC888(v38);
  swift_beginAccess();
  v28 = v27;
  v29 = sub_22766A080();
  v31 = v30;
  MEMORY[0x22AA985C0]();
  if (*((*v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v29(v38, 0);
  swift_endAccess();

  v32 = sub_2272373B8(100);
  swift_setDeallocating();

  v33 = qword_2813B2078;
  v34 = sub_22766A100();
  (*(*(v34 - 8) + 8))(v12 + v33, v34);
  swift_deallocClassInstance();
  return v32;
}

void sub_2273452EC(void *a1)
{
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v4 + 8))(v6, v3);
  v7 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  v8 = *v7;
  v9 = v7[1];
  v10 = v7[3];
  v11 = *(v7 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDD8, qword_2276814A0);
  v12 = swift_allocObject();
  v13 = v8;
  v14 = v9;

  sub_22766A070();
  *(v12 + 16) = v13;
  *(v12 + 24) = v14;
  *(v12 + 32) = v11;
  *(v12 + 40) = v10;
  v15 = qword_2813B2078;
  swift_beginAccess();
  v16 = sub_227543128(v12 + v15, v11, v10);
  if (v16)
  {
    if (v16 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v17 = sub_226ED2668(0);
    if (!v1)
    {
      v18 = v17;
      [v17 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v19 = sub_22766C9E0();
      v20 = sub_226EDAB24(v19);

      sub_226EDAB78(v20, v14);

      return;
    }
  }
}

void sub_227345598(uint64_t a1, void *a2)
{
  v4 = sub_22766B390();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A770();
  sub_22766B370();
  (*(v5 + 8))(v7, v4);
  v8 = __swift_project_boxed_opaque_existential_0(a2, a2[3]);
  v9 = *v8;
  v10 = v8[1];
  v11 = *(v8 + 16);
  v12 = v8[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDD0, &qword_227681498);
  v13 = swift_allocObject();
  v14 = v9;
  v15 = v10;

  sub_22766A070();
  v38 = v15;
  v39 = v14;
  *(v13 + 16) = v14;
  *(v13 + 24) = v15;
  v44 = v11;
  *(v13 + 32) = v11;
  *(v13 + 40) = v12;
  swift_getKeyPath();
  sub_227230638(a1);
  v17 = v16;
  v43[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8588, &unk_227672CD0);
  v43[0] = v17;
  sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);

  v18 = sub_22766C820();
  sub_226ED25F8(v43, v41);
  v19 = v42;
  if (v42)
  {
    v20 = __swift_project_boxed_opaque_existential_0(v41, v42);
    v21 = *(v19 - 8);
    v22 = MEMORY[0x28223BE20](v20);
    v24 = &v37 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v21 + 16))(v24, v22);
    v25 = sub_22766D170();
    (*(v21 + 8))(v24, v19);
    __swift_destroy_boxed_opaque_existential_0(v41);
  }

  else
  {
    v25 = 0;
  }

  v26 = [objc_opt_self() expressionForConstantValue_];
  swift_unknownObjectRelease();
  [objc_allocWithZone(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDE8 &qword_2276835A0))];

  sub_226EBC888(v43);
  v27 = qword_2813B2078;
  swift_beginAccess();
  v28 = sub_22766A080();
  v30 = v29;
  MEMORY[0x22AA985C0]();
  if (*((*v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22766C360();
  }

  sub_22766C3A0();
  v28(v43, 0);
  swift_endAccess();

  v31 = sub_2275430E0(v13 + v27, v44, v12);
  if (v31)
  {
    if (v31 != 1)
    {
      swift_willThrow();
    }
  }

  else
  {
    v32 = v40;
    v33 = sub_227249F00(0);
    if (!v32)
    {
      v34 = v33;
      [v33 setResultType_];
      sub_226E99364(0, &qword_281398AE0, 0x277CBE448);
      v35 = sub_22766C9E0();
      v36 = sub_226EDAB24(v35);

      sub_226EDAB78(v36, v38);

      return;
    }
  }
}

uint64_t sub_227345AA0@<X0>(uint64_t a1@<X8>)
{
  v86 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v93 = *(v2 - 8);
  v94 = v2;
  v82 = *(v93 + 64);
  MEMORY[0x28223BE20](v2);
  v81 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v92 = &v67 - v5;
  v95 = sub_227662750();
  v85 = *(v95 - 8);
  v84 = *(v85 + 64);
  MEMORY[0x28223BE20](v95);
  v83 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v96 = &v67 - v8;
  v76 = sub_22766B360();
  v75 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22766B340();
  MEMORY[0x28223BE20](v11 - 8);
  v74 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  MEMORY[0x28223BE20](v13);
  v16 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v19 = &v67 - v18;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v89 = *(v91 - 8);
  v20 = v89[8];
  MEMORY[0x28223BE20](v91);
  v77 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v78 = &v67 - v22;
  MEMORY[0x28223BE20](v23);
  v87 = &v67 - v24;
  v25 = sub_227669890();
  v79 = *(v25 - 8);
  v80 = v25;
  MEMORY[0x28223BE20](v25);
  v88 = &v67 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A800();
  v27 = swift_allocObject();
  *(v27 + 16) = "SeymourServices/KeyProvider.swift";
  *(v27 + 24) = 33;
  *(v27 + 32) = 2;
  *(v27 + 40) = 216;
  *(v27 + 48) = &unk_227681628;
  *(v27 + 56) = v1;
  sub_2276624A0();

  sub_227669270();
  (*(v14 + 16))(v16, v19, v13);
  v28 = (*(v14 + 80) + 16) & ~*(v14 + 80);
  v29 = swift_allocObject();
  (*(v14 + 32))(v29 + v28, v16, v13);
  v30 = (v29 + ((v15 + v28 + 7) & 0xFFFFFFFFFFFFFFF8));
  *v30 = sub_22735539C;
  v30[1] = v1;
  v90 = sub_227666130();

  v31 = v87;
  sub_227669270();
  (*(v14 + 8))(v19, v13);
  sub_2276697A0();
  swift_allocObject();
  v32 = sub_227669770();
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v75 + 8))(v10, v76);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v33 = sub_22766A8F0();
  v76 = v33;
  v97 = v32;
  v34 = sub_22766C060();
  v75 = v34;
  v36 = v35;
  sub_227662720();
  v37 = swift_allocObject();
  v73 = v32;
  *(v37 + 16) = v32;
  *(v37 + 24) = v33;
  *(v37 + 32) = v34;
  *(v37 + 40) = v36;
  v74 = v36;
  *(v37 + 48) = "KeyProvider.fetchCertificateContext";
  *(v37 + 56) = 35;
  *(v37 + 64) = 2;

  v38 = v92;
  sub_227669270();
  v39 = v89;
  v40 = v89[2];
  v70 = v89 + 2;
  v72 = v40;
  v41 = v77;
  v42 = v31;
  v43 = v91;
  v40(v77, v42, v91);
  v71 = *(v39 + 80);
  v67 = ((v71 + 16) & ~v71) + v20;
  v44 = (v71 + 16) & ~v71;
  v69 = v44;
  v45 = swift_allocObject();
  v68 = v39[4];
  v68(v45 + v44, v41, v43);
  v47 = v93;
  v46 = v94;
  v48 = v81;
  (*(v93 + 16))(v81, v38, v94);
  v49 = (*(v47 + 80) + 16) & ~*(v47 + 80);
  v50 = (v82 + v49 + 7) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  (*(v47 + 32))(v51 + v49, v48, v46);
  v52 = (v51 + v50);
  *v52 = sub_2273553CC;
  v52[1] = v45;
  v53 = v78;
  sub_227669270();
  v54 = v85;
  v55 = v83;
  v56 = v95;
  (*(v85 + 16))(v83, v96, v95);
  v57 = (*(v54 + 80) + 49) & ~*(v54 + 80);
  v58 = (v84 + v57 + 7) & 0xFFFFFFFFFFFFFFF8;
  v59 = swift_allocObject();
  v60 = v74;
  *(v59 + 16) = v75;
  *(v59 + 24) = v60;
  *(v59 + 32) = "KeyProvider.fetchCertificateContext";
  *(v59 + 40) = 35;
  *(v59 + 48) = 2;
  (*(v54 + 32))(v59 + v57, v55, v56);
  *(v59 + v58) = v76;
  *(v59 + ((v58 + 15) & 0xFFFFFFFFFFFFFFF8)) = v73;
  v61 = v91;
  v72(v41, v53, v91);
  v62 = (v67 + 7) & 0xFFFFFFFFFFFFFFF8;
  v63 = swift_allocObject();
  v68(v63 + v69, v41, v61);
  v64 = (v63 + v62);
  *v64 = sub_227355408;
  v64[1] = v59;

  sub_227669270();
  v65 = v89[1];
  v65(v53, v61);
  (*(v93 + 8))(v92, v94);
  (*(v54 + 8))(v96, v95);
  v65(v87, v61);
  (*(v79 + 8))(v88, v80);
}

uint64_t sub_227346554@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v58 = a2;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v57 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v53 = v3;
  v54 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v55 = &v46 - v5;
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v50 = v8;
  v51 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = sub_22766B390();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  v16 = *(v7 + 16);
  v59 = v7 + 16;
  v60 = a1;
  v49 = v16;
  v16(v11, a1, v6);
  v17 = sub_22766B380();
  v18 = sub_22766C8B0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v48 = v12;
    v20 = v19;
    v47 = swift_slowAlloc();
    v61 = v47;
    *v20 = 141558274;
    *(v20 + 4) = 1752392040;
    *(v20 + 12) = 2080;
    sub_227354B64(&qword_28139BDD0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v21 = sub_22766D140();
    v23 = v22;
    (*(v7 + 8))(v11, v6);
    v24 = sub_226E97AE8(v21, v23, &v61);

    *(v20 + 14) = v24;
    _os_log_impl(&dword_226E8E000, v17, v18, "fetchRemoteCertificate for url: %{mask.hash}s", v20, 0x16u);
    v25 = v47;
    __swift_destroy_boxed_opaque_existential_0(v47);
    MEMORY[0x22AA9A450](v25, -1, -1);
    MEMORY[0x22AA9A450](v20, -1, -1);

    (*(v13 + 8))(v15, v48);
  }

  else
  {

    (*(v7 + 8))(v11, v6);
    (*(v13 + 8))(v15, v12);
  }

  v26 = v51;
  v27 = v49;
  v49(v51, v60, v6);
  v28 = *(v7 + 80);
  v29 = v6;
  v30 = v7;
  v31 = v50;
  v32 = swift_allocObject();
  v33 = v56;
  *(v32 + 16) = v56;
  v48 = *(v30 + 32);
  v48(v32 + ((v28 + 24) & ~v28), v26, v29);
  v34 = swift_allocObject();
  *(v34 + 16) = "SeymourServices/KeyProvider.swift";
  *(v34 + 24) = 33;
  *(v34 + 32) = 2;
  *(v34 + 40) = 42;
  *(v34 + 48) = &unk_227681580;
  *(v34 + 56) = v32;
  sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

  v35 = v55;
  sub_227669270();
  v27(v26, v60, v29);
  v36 = (v28 + 16) & ~v28;
  v37 = swift_allocObject();
  v48(v37 + v36, v26, v29);
  *(v37 + ((v31 + v36 + 7) & 0xFFFFFFFFFFFFFFF8)) = v33;
  v38 = v57;
  v39 = v54;
  v40 = v52;
  (*(v57 + 16))(v54, v35, v52);
  v41 = (*(v38 + 80) + 16) & ~*(v38 + 80);
  v42 = (v53 + v41 + 7) & 0xFFFFFFFFFFFFFFF8;
  v43 = swift_allocObject();
  (*(v38 + 32))(v43 + v41, v39, v40);
  v44 = (v43 + v42);
  *v44 = sub_227353BD4;
  v44[1] = v37;
  sub_227666130();

  sub_227669270();
  return (*(v38 + 8))(v35, v40);
}

uint64_t sub_227346B80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[11] = a2;
  v3[12] = a3;
  v3[10] = a1;
  return MEMORY[0x2822009F8](sub_227346BA4, 0, 0);
}

uint64_t sub_227346BA4()
{
  *(v0 + 104) = *(*(v0 + 88) + 16);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  v1 = objc_opt_self();
  v2 = [objc_opt_self() currentProcess];
  v3 = [v1 userAgentForProcessInfo_];

  v4 = sub_22766C000();
  v6 = v5;

  *(v0 + 112) = v4;
  *(v0 + 120) = v6;
  v7 = swift_task_alloc();
  *(v0 + 128) = v7;
  *v7 = v0;
  v7[1] = sub_227346CC0;

  return sub_2273CFC4C(0);
}

uint64_t sub_227346CC0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 136) = a1;

  if (v1)
  {

    *(v3 + 192) = v1;
    sub_226E97D1C(v3 + 16, &unk_27D7BC990, &qword_227670A30);
    v4 = sub_227347398;
  }

  else
  {
    v4 = sub_227346E04;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227346E04(uint64_t a1)
{
  v2 = sub_2276623E0();
  sub_226E93170(v1 + 16, v1 + 48, &unk_27D7BC990, &qword_227670A30);
  v3 = *(v1 + 72);
  if (v3)
  {
    v4 = __swift_project_boxed_opaque_existential_0((v1 + 48), *(v1 + 72));
    v5 = *(v3 - 8);
    v6 = swift_task_alloc();
    (*(v5 + 16))(v6, v4, v3);
    v7 = sub_22766D170();
    (*(v5 + 8))(v6, v3);

    __swift_destroy_boxed_opaque_existential_0((v1 + 48));
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v1 + 120);
  v9 = [*(v1 + 136) requestWithMethod:2 URL:v2 parameters:v7];
  *(v1 + 144) = v9;
  swift_unknownObjectRelease();

  v10 = swift_task_alloc();
  *(v1 + 152) = v10;
  *v10 = v1;
  v10[1] = sub_227346FF4;
  v11 = *(v1 + 112);

  return sub_2273D1154(v9, 8, 0, v11, v8);
}

uint64_t sub_227346FF4(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 160) = a1;
  *(v3 + 168) = v1;

  if (v1)
  {
    v4 = sub_22734730C;
  }

  else
  {
    v4 = sub_227347128;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227347128()
{
  v1 = *(v0 + 136);

  sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);
  v2 = swift_task_alloc();
  *(v0 + 176) = v2;
  *v2 = v0;
  v2[1] = sub_2273471E4;
  v3 = *(v0 + 160);

  return sub_2273CDC0C(v3);
}

uint64_t sub_2273471E4(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 184) = v1;

  if (v1)
  {
    v5 = sub_227347420;
  }

  else
  {
    *(v4 + 200) = a1;
    v5 = sub_2273473B0;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22734730C()
{
  v1 = *(v0 + 136);

  *(v0 + 192) = *(v0 + 168);
  sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);

  return MEMORY[0x2822009F8](sub_227347398, 0, 0);
}

uint64_t sub_2273473B0()
{
  v1 = *(v0 + 200);
  v2 = *(v0 + 80);

  *v2 = v1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227347420()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227347484@<X0>(void **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v28[1] = a3;
  v30 = a4;
  v6 = sub_227666130();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v29 = v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v28 - v10;
  v12 = type metadata accessor for KeyCertificate(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v28 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *a1;
  v17 = sub_2276624A0();
  (*(*(v17 - 8) + 16))(v15, a2, v17);
  v18 = [v16 data];
  v19 = sub_227662590();
  v21 = v20;

  v22 = &v15[*(v13 + 28)];
  *v22 = v19;
  v22[1] = v21;
  sub_227347734(v15);
  v23 = [v16 data];
  sub_227662590();

  sub_227666110();
  v24 = v29;
  (*(v7 + 16))(v29, v11, v6);
  v25 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v26 = swift_allocObject();
  (*(v7 + 32))(v26 + v25, v24, v6);
  sub_227669280();
  (*(v7 + 8))(v11, v6);
  return sub_22734A3E8(v15);
}

uint64_t sub_227347734(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v41 = &v33 - v4;
  v5 = type metadata accessor for KeyCertificate(0);
  v37 = *(v5 - 8);
  v6 = *(v37 + 64);
  MEMORY[0x28223BE20](v5 - 8);
  v38 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v33 - v8;
  v36 = sub_22766B390();
  v10 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  v39 = a1;
  sub_22734A384(a1, v9);
  v13 = sub_22766B380();
  v14 = sub_22766C8B0();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v34 = v3;
    v17 = v16;
    v42 = v16;
    *v15 = 141558274;
    *(v15 + 4) = 1752392040;
    *(v15 + 12) = 2080;
    sub_2276624A0();
    v35 = v2;
    sub_227354B64(&qword_28139BDD0, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v18 = sub_22766D140();
    v20 = v19;
    sub_22734A3E8(v9);
    v21 = sub_226E97AE8(v18, v20, &v42);
    v2 = v35;

    *(v15 + 14) = v21;
    _os_log_impl(&dword_226E8E000, v13, v14, "Saving key certificate for URL: %{mask.hash}s", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v17);
    v22 = v17;
    v3 = v34;
    MEMORY[0x22AA9A450](v22, -1, -1);
    MEMORY[0x22AA9A450](v15, -1, -1);
  }

  else
  {

    sub_22734A3E8(v9);
  }

  (*(v10 + 8))(v12, v36);
  v23 = v40;
  v24 = v40[11];
  v25 = v40[12];
  __swift_project_boxed_opaque_existential_0(v40 + 8, v24);
  v26 = v38;
  sub_22734A384(v39, v38);
  v27 = (*(v37 + 80) + 24) & ~*(v37 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = v23;
  sub_22734A444(v26, v28 + v27);

  v29 = v41;
  sub_226ECF5D8(sub_22734A4A8, v28, v24, MEMORY[0x277D84F78] + 8, v25, v41);

  v30 = sub_227669290();
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *(v31 + 24) = 0;
  v30(sub_226E9F7B0, v31);

  return (*(v3 + 8))(v29, v2);
}

uint64_t sub_227347BB8(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BAFF8, &qword_227679AE8);
  v5 = *(type metadata accessor for KeyCertificate(0) - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_227670CD0;
  sub_22734A384(a3, v7 + v6);
  sub_2275677BC(v7, v4[1], *(v4 + 16), v4[3]);
}

uint64_t sub_227347CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_227347CDC, 0, 0);
}

uint64_t sub_227347CDC()
{
  v1 = sub_227666200();
  v3 = v2;
  v0[5] = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_227347D9C;
  v5 = v0[2];

  return sub_2273CD428(v5, v1, v3);
}

uint64_t sub_227347D9C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227347ED8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_227347ED8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227347F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, void *a7@<X6>, uint64_t a8@<X8>)
{
  v72 = a8;
  v73 = a7;
  v63 = a6;
  v61 = a5;
  v59 = a4;
  v76 = a2;
  v69 = a1;
  v67 = sub_227666230();
  v71 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v70 = v9;
  v75 = &v58 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  MEMORY[0x28223BE20](v10 - 8);
  v64 = &v58 - v11;
  v12 = sub_2276624A0();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v65 = v14;
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276707E0;
  *(inited + 32) = 25705;
  v17 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0;
  *(inited + 72) = v17;
  *(inited + 80) = 0x64692D6D616461;
  *(inited + 88) = 0xE700000000000000;
  v18 = sub_2276661F0();
  v19 = MEMORY[0x277D837D0];
  *(inited + 96) = v18;
  *(inited + 104) = v20;
  *(inited + 120) = v19;
  *(inited + 128) = 6910581;
  *(inited + 136) = 0xE300000000000000;
  v21 = a3;
  sub_227666220();
  v22 = sub_227662390();
  v24 = v23;
  v66 = v13;
  v25 = *(v13 + 8);
  v74 = v15;
  v68 = v12;
  v25(v15, v12);
  *(inited + 144) = v22;
  *(inited + 152) = v24;
  *(inited + 168) = v19;
  *(inited + 176) = 6516851;
  *(inited + 184) = 0xE300000000000000;
  v60 = v21;
  v26 = sub_227666210();
  v28 = v27;
  v29 = sub_227662570();
  v31 = v30;
  sub_226EDC420(v26, v28);
  *(inited + 216) = v19;
  *(inited + 192) = v29;
  *(inited + 200) = v31;
  v32 = sub_227149264(inited);
  v33 = v61;
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
  swift_arrayDestroy();
  if (v33)
  {
    v34 = swift_initStackObject();
    *(v34 + 16) = xmmword_227670CD0;
    *(v34 + 32) = 0x64692D746F6C73;
    *(v34 + 72) = v19;
    v35 = v59;
    *(v34 + 40) = 0xE700000000000000;
    *(v34 + 48) = v35;
    *(v34 + 56) = v33;

    v36 = sub_227149264(v34);
    swift_setDeallocating();
    sub_226E97D1C(v34 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v77[0] = v32;
    sub_226FDAC14(v36, sub_227553D14, 0, isUniquelyReferenced_nonNull_native, v77);

    v32 = v77[0];
  }

  v38 = swift_initStackObject();
  *(v38 + 16) = xmmword_2276728D0;
  *(v38 + 32) = 0x6E6F6973726576;
  v39 = v63;
  *(v38 + 40) = 0xE700000000000000;
  *(v38 + 48) = v39;
  *(v38 + 72) = MEMORY[0x277D83B88];
  *(v38 + 80) = 0xD000000000000010;
  *(v38 + 88) = 0x800000022769E200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB060, &qword_227679B88);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_227670CD0;
  *(v40 + 32) = v32;
  *(v38 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDF0, &qword_227687560);
  *(v38 + 96) = v40;
  v63 = sub_227149264(v38);
  swift_setDeallocating();
  swift_arrayDestroy();
  v41 = v64;
  v42 = v60;
  sub_2276661D0();
  v43 = sub_227664900();
  LODWORD(v62) = (*(*(v43 - 8) + 48))(v41, 1, v43) != 1;
  sub_226E97D1C(v41, &unk_27D7B96D0, &qword_227674908);
  v44 = v66;
  v45 = v68;
  (*(v66 + 16))(v74, v69, v68);
  v46 = v71;
  v47 = v67;
  (*(v71 + 16))(v75, v42, v67);
  v48 = (*(v44 + 80) + 24) & ~*(v44 + 80);
  v49 = (v65 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (*(v46 + 80) + v49 + 9) & ~*(v46 + 80);
  v51 = (v70 + v50 + 7) & 0xFFFFFFFFFFFFFFF8;
  v52 = swift_allocObject();
  *(v52 + 16) = v76;
  (*(v44 + 32))(v52 + v48, v74, v45);
  v53 = v52 + v49;
  *v53 = v63;
  *(v53 + 8) = v62;
  (*(v46 + 32))(v52 + v50, v75, v47);
  v54 = v73;
  *(v52 + v51) = v73;
  v55 = swift_allocObject();
  *(v55 + 16) = "SeymourServices/KeyProvider.swift";
  *(v55 + 24) = 33;
  *(v55 + 32) = 2;
  *(v55 + 40) = 105;
  *(v55 + 48) = &unk_2276815A8;
  *(v55 + 56) = v52;
  sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

  v56 = v54;
  return sub_227669270();
}

uint64_t sub_227348614(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 112) = a6;
  *(v7 + 120) = a7;
  *(v7 + 232) = a5;
  *(v7 + 96) = a3;
  *(v7 + 104) = a4;
  *(v7 + 80) = a1;
  *(v7 + 88) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B96D0, &qword_227674908);
  *(v7 + 128) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2273486BC, 0, 0);
}

uint64_t sub_2273486BC()
{
  v1 = *(v0 + 104);
  *(v0 + 40) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
  *(v0 + 16) = v1;
  v2 = objc_opt_self();
  v3 = objc_opt_self();

  v4 = [v3 currentProcess];
  v5 = [v2 userAgentForProcessInfo_];

  v6 = sub_22766C000();
  v8 = v7;

  *(v0 + 136) = v6;
  *(v0 + 144) = v8;
  v9 = swift_task_alloc();
  *(v0 + 152) = v9;
  *v9 = v0;
  v9[1] = sub_227348800;
  v10 = *(v0 + 232);

  return sub_2273CFC4C(v10);
}

uint64_t sub_227348800(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 160) = a1;

  if (v1)
  {

    *(v3 + 216) = v1;
    v4 = sub_227348EE4;
  }

  else
  {
    v4 = sub_22734892C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22734892C(uint64_t a1)
{
  v2 = sub_2276623E0();
  sub_226E93170(v1 + 16, v1 + 48, &unk_27D7BC990, &qword_227670A30);
  v3 = *(v1 + 72);
  if (v3)
  {
    v4 = __swift_project_boxed_opaque_existential_0((v1 + 48), *(v1 + 72));
    v5 = *(v3 - 8);
    v6 = swift_task_alloc();
    (*(v5 + 16))(v6, v4, v3);
    v7 = sub_22766D170();
    (*(v5 + 8))(v6, v3);

    __swift_destroy_boxed_opaque_existential_0((v1 + 48));
  }

  else
  {
    v7 = 0;
  }

  v8 = *(v1 + 144);
  v9 = [*(v1 + 160) requestWithMethod:4 URL:v2 parameters:v7];
  *(v1 + 168) = v9;
  swift_unknownObjectRelease();

  v10 = swift_task_alloc();
  *(v1 + 176) = v10;
  *v10 = v1;
  v10[1] = sub_227348B1C;
  v11 = *(v1 + 136);

  return sub_2273D1154(v9, 8, 0, v11, v8);
}

uint64_t sub_227348B1C(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 184) = a1;
  *(v3 + 192) = v1;

  if (v1)
  {

    v4 = sub_227348E70;
  }

  else
  {
    v4 = sub_227348C38;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_227348C38()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 128);

  sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);
  sub_2276661D0();
  sub_22745BC80(v2);
  sub_226E97D1C(v2, &unk_27D7B96D0, &qword_227674908);
  v3 = swift_task_alloc();
  *(v0 + 200) = v3;
  *v3 = v0;
  v3[1] = sub_227348D48;
  v4 = *(v0 + 184);

  return sub_2273CDC0C(v4);
}

uint64_t sub_227348D48(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_227348FE4;
  }

  else
  {
    *(v4 + 224) = a1;
    v5 = sub_227348F60;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_227348E70()
{
  v1 = *(v0 + 160);

  *(v0 + 216) = *(v0 + 192);

  return MEMORY[0x2822009F8](sub_227348EE4, 0, 0);
}

uint64_t sub_227348EE4()
{
  sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227348F60()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 80);

  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_227348FE4()
{

  v1 = *(v0 + 8);

  return v1();
}

BOOL sub_227349050(void *a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A690();
  v6 = a1;
  v7 = sub_22766B380();
  v8 = sub_22766C8B0();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v22 = v10;
    *v9 = 136446210;
    swift_getErrorValue();
    v11 = MEMORY[0x22AA995D0](v21[2], v21[3]);
    v13 = sub_226E97AE8(v11, v12, &v22);

    *(v9 + 4) = v13;
    _os_log_impl(&dword_226E8E000, v7, v8, "Checking condition for downloadContext retry for %{public}s", v9, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v10);
    MEMORY[0x22AA9A450](v10, -1, -1);
    MEMORY[0x22AA9A450](v9, -1, -1);
  }

  (*(v3 + 8))(v5, v2);
  swift_getErrorValue();
  v14 = sub_22766D280();
  v16 = v15;
  if (v14 == sub_22766C000() && v16 == v17)
  {

    goto LABEL_10;
  }

  v19 = sub_22766D190();

  result = 0;
  if (v19)
  {
LABEL_10:
    swift_getErrorValue();
    return sub_22766D270() == 1;
  }

  return result;
}

uint64_t sub_2273492FC(uint64_t a1)
{
  v2 = sub_22766B390();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227664740();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE00, &qword_2276815B8);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v45 - v11;
  sub_226E97CC0(a1, v47);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v25 = sub_227664CB0();
    sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    swift_allocError();
    v27 = v26;
    v28 = MEMORY[0x277D50EF0];
LABEL_14:
    (*(*(v25 - 8) + 104))(v27, *v28, v25);
    return swift_willThrow();
  }

  v46 = v3;
  v13 = v48;
  if (!v48[2] || (v14 = sub_226E92000(0xD000000000000011, 0x800000022769E1A0), (v15 & 1) == 0) || (sub_226E97CC0(v13[7] + 32 * v14, v47), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDF0, &qword_227687560), result = swift_dynamicCast(), (result & 1) == 0))
  {

    v25 = sub_227664CB0();
    sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    swift_allocError();
    v27 = v29;
    v28 = MEMORY[0x277D50F30];
    goto LABEL_14;
  }

  if (!v48[2])
  {
    __break(1u);
    return result;
  }

  v17 = v48[4];

  if (!*(v17 + 16) || (v18 = sub_226E92000(0x737574617473, 0xE600000000000000), (v19 & 1) == 0))
  {

    goto LABEL_17;
  }

  sub_226E97CC0(*(v17 + 56) + 32 * v18, v47);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:

    v25 = sub_227664CB0();
    sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    swift_allocError();
    v27 = v30;
    v28 = MEMORY[0x277D50F10];
    goto LABEL_14;
  }

  v20 = v48;
  if (v48)
  {
    sub_227664720();
    if ((*(v7 + 48))(v12, 1, v6) == 1)
    {
      sub_226E97D1C(v12, &qword_27D7BCE00, &qword_2276815B8);
      (*(v7 + 104))(v9, *MEMORY[0x277D50BD8], v6);
      sub_227354B64(&qword_27D7BCE08, MEMORY[0x277D50BE8], MEMORY[0x277D50BF0]);
      v21 = v20;
      sub_22766D280();
      (*(v7 + 8))(v9, v6);
      v22 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
      v23 = sub_22766BFD0();

      v24 = [v22 initWithDomain:v23 code:v21 userInfo:0];
    }

    else
    {
      sub_227354B64(&qword_27D7BCE08, MEMORY[0x277D50BE8], MEMORY[0x277D50BF0]);
      v24 = swift_allocError();
      (*(v7 + 32))(v31, v12, v6);
    }

    sub_22766A6C0();
    v32 = v24;

    v33 = sub_22766B380();
    v34 = sub_22766C890();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v47[0] = v45;
      *v35 = 136446722;
      v48 = v24;
      v36 = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA3C0, &qword_2276709C0);
      v37 = sub_22766C060();
      v39 = sub_226E97AE8(v37, v38, v47);

      *(v35 + 4) = v39;
      *(v35 + 12) = 2160;
      *(v35 + 14) = 1752392040;
      *(v35 + 22) = 2080;
      v40 = sub_22766BEC0();
      v42 = v41;

      v43 = sub_226E97AE8(v40, v42, v47);

      *(v35 + 24) = v43;
      _os_log_impl(&dword_226E8E000, v33, v34, "Failed to validate context. Status: %{public}s -> %{mask.hash}s", v35, 0x20u);
      v44 = v45;
      swift_arrayDestroy();
      MEMORY[0x22AA9A450](v44, -1, -1);
      MEMORY[0x22AA9A450](v35, -1, -1);
    }

    else
    {
    }

    (*(v46 + 8))(v5, v2);
    return swift_willThrow();
  }
}

uint64_t sub_227349AC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v62 = a2;
  v3 = sub_22766B390();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v57 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v57 - v11;
  sub_226E97CC0(a1, v64);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v29 = sub_227664CB0();
    sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    swift_allocError();
    v31 = v30;
    v32 = MEMORY[0x277D50EF0];
LABEL_11:
    (*(*(v29 - 8) + 104))(v31, *v32, v29);
    return swift_willThrow();
  }

  v14 = v63;
  if (!*(v63 + 16))
  {
    goto LABEL_9;
  }

  v15 = sub_226E92000(0xD000000000000011, 0x800000022769E1A0);
  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

  sub_226E97CC0(*(v14 + 56) + 32 * v15, v64);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDF0, &qword_227687560);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v29 = sub_227664CB0();
    sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    swift_allocError();
    v31 = v33;
    v32 = MEMORY[0x277D50F30];
    goto LABEL_11;
  }

  v61 = v4;
  v17 = v63;
  if (!*(v63 + 16))
  {
LABEL_9:

    goto LABEL_10;
  }

  v60 = *(v63 + 32);

  sub_22766A690();

  v18 = sub_22766B380();
  v19 = sub_22766C8B0();

  v59 = v19;
  v20 = v19;
  v21 = v18;
  if (os_log_type_enabled(v18, v20))
  {
    v22 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v64[0] = v58;
    *v22 = 136446210;
    v23 = MEMORY[0x22AA98660](v17, v13);
    v57 = v21;
    v25 = v24;

    v26 = sub_226E97AE8(v23, v25, v64);

    *(v22 + 4) = v26;
    v27 = v57;
    _os_log_impl(&dword_226E8E000, v57, v59, "[Keys] license-responses keys: %{public}s", v22, 0xCu);
    v28 = v58;
    __swift_destroy_boxed_opaque_existential_0(v58);
    MEMORY[0x22AA9A450](v28, -1, -1);
    MEMORY[0x22AA9A450](v22, -1, -1);
  }

  else
  {
  }

  v35 = *(v61 + 8);
  v35(v12, v3);
  v36 = v60;
  if (*(v60 + 16))
  {
    v37 = sub_226E92000(0x737574617473, 0xE600000000000000);
    if (v38)
    {
      sub_226E97CC0(*(v36 + 56) + 32 * v37, v64);
      if (swift_dynamicCast())
      {
        if (v63)
        {
          sub_22735413C(v36, v63);

          return swift_willThrow();
        }
      }
    }
  }

  if (!*(v36 + 16) || (v39 = sub_226E92000(6515555, 0xE300000000000000), (v40 & 1) == 0) || (sub_226E97CC0(*(v36 + 56) + 32 * v39, v64), (swift_dynamicCast() & 1) == 0))
  {

    sub_22766A690();
    v47 = sub_22766B380();
    v48 = sub_22766C890();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134349056;
      *(v49 + 4) = 0;
      _os_log_impl(&dword_226E8E000, v47, v48, "CKC Malformed. Status: %{public}ld", v49, 0xCu);
      MEMORY[0x22AA9A450](v49, -1, -1);
    }

    v35(v6, v3);
    v29 = sub_227664CB0();
    sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    swift_allocError();
    v31 = v50;
    v32 = MEMORY[0x277D50ED8];
    goto LABEL_11;
  }

  sub_227662510();
  v42 = v41;

  if (v42 >> 60 == 15)
  {

    sub_22766A690();
    v43 = sub_22766B380();
    v44 = sub_22766C890();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 134349056;
      *(v45 + 4) = 0;
      _os_log_impl(&dword_226E8E000, v43, v44, "CKC Data malformed. Status: %{public}ld", v45, 0xCu);
      MEMORY[0x22AA9A450](v45, -1, -1);
    }

    v35(v9, v3);
    v29 = sub_227664CB0();
    sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    swift_allocError();
    v31 = v46;
    v32 = MEMORY[0x277D50F18];
    goto LABEL_11;
  }

  v51 = v60;
  if (*(v60 + 16))
  {
    v52 = sub_226E92000(0x66612D77656E6572, 0xEB00000000726574);
    if (v53)
    {
      sub_226E97CC0(*(v51 + 56) + 32 * v52, v64);
      swift_dynamicCast();
    }
  }

  v54 = v60;
  if (*(v60 + 16) && (v55 = sub_226E92000(0x762D776F6C2D7369, 0xEC00000065756C61), (v56 & 1) != 0))
  {
    sub_226E97CC0(*(v54 + 56) + 32 * v55, v64);

    swift_dynamicCast();
  }

  else
  {
  }

  return sub_2276631E0();
}

uint64_t sub_22734A318()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_22734A384(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyCertificate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22734A3E8(uint64_t a1)
{
  v2 = type metadata accessor for KeyCertificate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22734A444(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyCertificate(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22734A528(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22734A548, 0, 0);
}

uint64_t sub_22734A548()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_2273556E8;
  v2 = *(v0 + 16);

  return sub_2273CD428(v2, 0x747265632D737066, 0xE800000000000000);
}

uint64_t sub_22734A5F8@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v37 = a1;
  v44 = a3;
  v5 = sub_2276624A0();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v33 = v7;
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96C0, &unk_227684560);
  v42 = *(v9 - 8);
  v43 = v9;
  v41 = *(v42 + 64);
  MEMORY[0x28223BE20](v9);
  v40 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v35 = &v31 - v12;
  v13 = a2[11];
  v38 = a2[12];
  v34 = __swift_project_boxed_opaque_existential_0(a2 + 8, v13);
  v36 = *(v6 + 16);
  v14 = a1;
  v15 = v5;
  v31 = v5;
  v36(v8, v14, v5);
  v16 = (*(v6 + 80) + 24) & ~*(v6 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  v32 = *(v6 + 32);
  v32(v17 + v16, v8, v15);
  v18 = sub_227666130();
  v39 = v18;

  v19 = v35;
  sub_226ECF5D8(sub_22735550C, v17, v13, v18, v38, v35);

  v20 = v31;
  v36(v8, v37, v31);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  v32(v21 + v16, v8, v20);
  v22 = v42;
  v23 = v43;
  v24 = v40;
  (*(v42 + 16))(v40, v19, v43);
  v25 = v22;
  v26 = (*(v22 + 80) + 16) & ~*(v22 + 80);
  v27 = (v41 + v26 + 7) & 0xFFFFFFFFFFFFFFF8;
  v28 = swift_allocObject();
  (*(v25 + 32))(v28 + v26, v24, v23);
  v29 = (v28 + v27);
  *v29 = sub_22735558C;
  v29[1] = v21;

  sub_227669270();
  return (*(v25 + 8))(v19, v23);
}

uint64_t sub_22734A98C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v43 = a1;
  v44 = a3;
  v41 = a4;
  v5 = sub_22766B390();
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v41 - v9;
  v11 = type metadata accessor for KeyCertificate(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE10, &qword_227681630);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v19 = *(a2 + 48);
  v20 = (a2 + 24);
  v22 = &v41 - v21;
  __swift_project_boxed_opaque_existential_0(v20, v19);
  v23 = v45;
  result = sub_2274EBF64(v43, v22);
  if (!v23)
  {
    v25 = v10;
    v26 = v42;
    v45 = 0;
    sub_226E93170(v22, v17, &qword_27D7BCE10, &qword_227681630);
    if ((*(v12 + 48))(v17, 1, v11) == 1)
    {
      sub_226E97D1C(v17, &qword_27D7BCE10, &qword_227681630);
      v27 = v25;
      sub_22766A690();
      v28 = sub_22766B380();
      v29 = sub_22766C8B0();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = v22;
        v31 = swift_slowAlloc();
        *v31 = 0;
        _os_log_impl(&dword_226E8E000, v28, v29, "No saved certificate.", v31, 2u);
        v32 = v31;
        v22 = v30;
        MEMORY[0x22AA9A450](v32, -1, -1);
      }

      (*(v26 + 8))(v27, v5);
      v33 = sub_227664CB0();
      sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
      swift_allocError();
      (*(*(v33 - 8) + 104))(v34, *MEMORY[0x277D50EF8], v33);
      swift_willThrow();
      return sub_226E97D1C(v22, &qword_27D7BCE10, &qword_227681630);
    }

    else
    {
      v44 = v11;
      v35 = v14;
      sub_22734A444(v17, v14);
      sub_22766A690();
      v36 = sub_22766B380();
      v37 = sub_22766C8B0();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = v22;
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_226E8E000, v36, v37, "Found saved certificate.", v39, 2u);
        v40 = v39;
        v22 = v38;
        v35 = v14;
        MEMORY[0x22AA9A450](v40, -1, -1);
      }

      (*(v26 + 8))(v7, v5);
      sub_226F5E0B4(*(v35 + *(v44 + 20)), *(v35 + *(v44 + 20) + 8));
      sub_227666110();
      sub_22734A3E8(v35);
      return sub_226E97D1C(v22, &qword_27D7BCE10, &qword_227681630);
    }
  }

  return result;
}

uint64_t sub_22734AE4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v86 = a3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v90 = *(v7 - 8);
  v91 = v7;
  v80 = *(v90 + 64);
  MEMORY[0x28223BE20](v7);
  v79 = &v64 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v64 - v10;
  v92 = sub_227662750();
  v84 = *(v92 - 8);
  v83 = *(v84 + 64);
  MEMORY[0x28223BE20](v92);
  v81 = &v64 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v93 = &v64 - v13;
  v75 = sub_22766B360();
  v14 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v16 = &v64 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22766B340();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v87 = *(v18 - 8);
  v88 = v18;
  v19 = v87[8];
  MEMORY[0x28223BE20](v18);
  v76 = &v64 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v78 = &v64 - v21;
  MEMORY[0x28223BE20](v22);
  v24 = &v64 - v23;
  v85 = sub_227669890();
  v82 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v26 = &v64 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A800();
  v27 = swift_allocObject();
  v27[2] = v4;
  v27[3] = a1;
  v27[4] = a2;
  v28 = swift_allocObject();
  *(v28 + 16) = "SeymourServices/KeyProvider.swift";
  *(v28 + 24) = 33;
  *(v28 + 32) = 2;
  *(v28 + 40) = 236;
  *(v28 + 48) = &unk_2276815D0;
  *(v28 + 56) = v27;

  v74 = v24;
  sub_227669270();
  sub_2276697A0();
  swift_allocObject();
  v29 = sub_227669770();
  v77 = v26;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v14 + 8))(v16, v75);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v30 = sub_22766A8F0();
  v75 = v30;
  v94 = v29;
  v31 = sub_22766C060();
  v72 = v31;
  v33 = v32;
  sub_227662720();
  v34 = swift_allocObject();
  v73 = v29;
  *(v34 + 16) = v29;
  *(v34 + 24) = v30;
  *(v34 + 32) = v31;
  *(v34 + 40) = v33;
  v71 = v33;
  *(v34 + 48) = "KeyProvider.fetchStreamingKeyNonce";
  *(v34 + 56) = 34;
  *(v34 + 64) = 2;

  v35 = v89;
  sub_227669270();
  v36 = v87;
  v37 = v87[2];
  v68 = v87 + 2;
  v70 = v37;
  v38 = v76;
  v39 = v88;
  v37(v76, v24, v88);
  v40 = v36;
  v69 = *(v36 + 80);
  v65 = ((v69 + 16) & ~v69) + v19;
  v41 = (v69 + 16) & ~v69;
  v67 = v41;
  v42 = swift_allocObject();
  v66 = v40[4];
  v66(v42 + v41, v38, v39);
  v43 = v90;
  v44 = v91;
  v45 = v79;
  (*(v90 + 16))(v79, v35, v91);
  v46 = (*(v43 + 80) + 16) & ~*(v43 + 80);
  v47 = (v80 + v46 + 7) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  (*(v43 + 32))(v48 + v46, v45, v44);
  v49 = (v48 + v47);
  *v49 = sub_227354CF0;
  v49[1] = v42;
  v50 = v78;
  sub_227669270();
  v51 = v84;
  v52 = v81;
  v53 = v92;
  (*(v84 + 16))(v81, v93, v92);
  v54 = (*(v51 + 80) + 49) & ~*(v51 + 80);
  v55 = (v83 + v54 + 7) & 0xFFFFFFFFFFFFFFF8;
  v56 = swift_allocObject();
  v57 = v71;
  *(v56 + 16) = v72;
  *(v56 + 24) = v57;
  *(v56 + 32) = "KeyProvider.fetchStreamingKeyNonce";
  *(v56 + 40) = 34;
  *(v56 + 48) = 2;
  (*(v51 + 32))(v56 + v54, v52, v53);
  *(v56 + v55) = v75;
  *(v56 + ((v55 + 15) & 0xFFFFFFFFFFFFFFF8)) = v73;
  v58 = v88;
  v70(v38, v50, v88);
  v59 = (v65 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  v66(v60 + v67, v38, v58);
  v61 = (v60 + v59);
  *v61 = sub_227354D2C;
  v61[1] = v56;

  sub_227669270();
  v62 = v87[1];
  v62(v50, v58);
  (*(v90 + 8))(v89, v91);
  (*(v51 + 8))(v93, v92);
  v62(v74, v58);
  (*(v82 + 8))(v77, v85);
}

uint64_t sub_22734B794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22734B7B8, 0, 0);
}

uint64_t sub_22734B7B8()
{
  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = v3[11];
  v5 = v3[12];
  __swift_project_boxed_opaque_existential_0(v3 + 8, v4);
  v6 = swift_allocObject();
  v0[6] = v6;
  v6[2] = v3;
  v6[3] = v2;
  v6[4] = v1;
  v7 = *(v5 + 24);

  v12 = (v7 + *v7);
  v8 = swift_task_alloc();
  v0[7] = v8;
  *v8 = v0;
  v8[1] = sub_226F73E2C;
  v9 = v0[2];
  v10 = MEMORY[0x277CC9318];

  return (v12)(v9, sub_227354E10, v6, v10, v4, v5);
}

void *sub_22734B954@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  __swift_project_boxed_opaque_existential_0((a2 + 24), *(a2 + 48));
  result = sub_2274EBB60(a3, a4, a1, &v23);
  if (!v5)
  {
    v11 = v26;
    if (v26)
    {
      v13 = v24;
      v12 = v25;
      v14 = v23;
      sub_226F5E0B4(v23, v24);
      result = sub_227354E30(v14, v13, v12, v11);
      *a5 = v14;
      a5[1] = v13;
    }

    else
    {
      v15 = sub_227662580();
      v17 = v16;
      v18 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB008, &qword_227679B08);
      v19 = swift_allocObject();
      *(v19 + 16) = xmmword_227670CD0;
      *(v19 + 32) = v15;
      *(v19 + 40) = v17;
      *(v19 + 48) = a3;
      *(v19 + 56) = a4;
      v20 = v18[1];
      v21 = v18[3];
      v22 = *(v18 + 16);
      sub_226F5E0B4(v15, v17);

      sub_226F5E0B4(v15, v17);

      sub_227567CC0(v19, v20, v22, v21);

      sub_226EDC420(v15, v17);

      *a5 = v15;
      a5[1] = v17;
    }
  }

  return result;
}

uint64_t sub_22734BB0C(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22734BB2C, 0, 0);
}

uint64_t sub_22734BB2C()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = sub_22734BBE0;
  v2 = *(v0 + 16);

  return sub_2273CD428(v2, 0xD000000000000024, 0x800000022769E2D0);
}

uint64_t sub_22734BBE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22734BCD4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v34 = a4;
  v35 = a9;
  v31 = a8;
  v32 = a10;
  v14 = sub_2276624A0();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227661FD0();
  v33 = swift_allocBox();
  (*(v15 + 16))(v17, a1, v14);
  sub_227661FA0();
  sub_227661FC0();
  v18 = objc_opt_self();
  v19 = [objc_opt_self() currentProcess];
  v20 = [v18 userAgentForProcessInfo_];

  sub_22766C000();
  sub_227661FC0();

  sub_227661F70();
  v21 = sub_227353F60(a5, a6, a7, v31);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276728D0;
  *(inited + 32) = 0x6E6F6973726576;
  v23 = MEMORY[0x277D83B88];
  v24 = v32;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = v24;
  *(inited + 72) = v23;
  strcpy((inited + 80), "nonce-requests");
  *(inited + 95) = -18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB060, &qword_227679B88);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_227670CD0;
  *(v25 + 32) = v21;
  *(inited + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDF0, &qword_227687560);
  *(inited + 96) = v25;
  v26 = sub_227149264(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
  swift_arrayDestroy();
  v27 = swift_allocObject();
  v28 = v33;
  v27[2] = v34;
  v27[3] = v28;
  v27[4] = v26;
  v29 = swift_allocObject();
  *(v29 + 16) = "SeymourServices/KeyProvider.swift";
  *(v29 + 24) = 33;
  *(v29 + 32) = 2;
  *(v29 + 40) = 274;
  *(v29 + 48) = &unk_227681610;
  *(v29 + 56) = v27;
  sub_226E99364(0, &qword_281398B38, 0x277CEE6D0);

  return sub_227669270();
}

uint64_t sub_22734C0A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a2;
  v4[15] = a4;
  v4[13] = a1;
  v5 = sub_227661FD0();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_22734C174, 0, 0);
}

uint64_t sub_22734C174()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  swift_beginAccess();
  (*(v4 + 16))(v2, v1, v3);
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
  v0[2] = v5;
  v6 = objc_opt_self();
  v7 = objc_opt_self();

  v8 = [v7 currentProcess];
  v9 = [v6 userAgentForProcessInfo_];

  v10 = sub_22766C000();
  v12 = v11;

  v0[20] = v10;
  v0[21] = v12;
  v13 = swift_task_alloc();
  v0[22] = v13;
  *v13 = v0;
  v13[1] = sub_22734C2F0;

  return sub_2273CFC4C(0);
}

uint64_t sub_22734C2F0(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 184) = a1;

  if (v1)
  {

    v3[28] = v1;
    (*(v3[17] + 8))(v3[18], v3[16]);
    v4 = sub_22734C8B0;
  }

  else
  {
    v4 = sub_22734C428;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22734C428()
{
  v1 = sub_227661F80();
  sub_226E93170(v0 + 16, v0 + 48, &unk_27D7BC990, &qword_227670A30);
  v2 = *(v0 + 72);
  if (v2)
  {
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 48), *(v0 + 72));
    v4 = *(v2 - 8);
    v5 = swift_task_alloc();
    (*(v4 + 16))(v5, v3, v2);
    v6 = sub_22766D170();
    (*(v4 + 8))(v5, v2);

    __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 168);
  v8 = [*(v0 + 184) requestByEncodingRequest:v1 parameters:v6];
  *(v0 + 192) = v8;
  swift_unknownObjectRelease();

  v9 = swift_task_alloc();
  *(v0 + 200) = v9;
  *v9 = v0;
  v9[1] = sub_22734C614;
  v10 = *(v0 + 160);

  return sub_2273D1154(v8, 8, 0, v10, v7);
}

uint64_t sub_22734C614(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 208) = v1;

  if (v1)
  {
    v5 = sub_22734C824;
  }

  else
  {
    *(v4 + 216) = a1;
    v5 = sub_22734C760;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22734C760()
{
  v1 = *(v0 + 216);
  v2 = *(v0 + 184);
  v4 = *(v0 + 136);
  v3 = *(v0 + 144);
  v5 = *(v0 + 128);
  v6 = *(v0 + 104);

  (*(v4 + 8))(v3, v5);
  sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);
  *v6 = v1;

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22734C824()
{
  v1 = *(v0 + 184);

  *(v0 + 224) = *(v0 + 208);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

  return MEMORY[0x2822009F8](sub_22734C8B0, 0, 0);
}

uint64_t sub_22734C8B0()
{
  sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22734C930(void **a1, uint64_t a2)
{
  v3 = *a1;
  v4 = swift_allocObject();
  *(v4 + 16) = a2;
  *(v4 + 24) = v3;
  v5 = swift_allocObject();
  *(v5 + 16) = "SeymourServices/KeyProvider.swift";
  *(v5 + 24) = 33;
  *(v5 + 32) = 2;
  *(v5 + 40) = 284;
  *(v5 + 48) = &unk_227681600;
  *(v5 + 56) = v4;
  sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

  v6 = v3;

  return sub_227669270();
}

uint64_t sub_22734CA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22734CA4C, 0, 0);
}

uint64_t sub_22734CA4C()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_22734CAE8;
  v2 = *(v0 + 32);

  return sub_2273CDC0C(v2);
}

uint64_t sub_22734CAE8(uint64_t a1)
{
  v4 = *v2;
  v5 = *v2;

  if (v1)
  {
    v6 = *(v5 + 8);

    return v6();
  }

  else
  {
    *(v4 + 48) = a1;

    return MEMORY[0x2822009F8](sub_22734CC34, 0, 0);
  }
}

uint64_t sub_22734CC58@<X0>(id *a1@<X0>, uint64_t *a2@<X8>)
{
  v75 = a2;
  v3 = sub_227664CB0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v76 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v79 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v77 = &v70 - v10;
  MEMORY[0x28223BE20](v11);
  v74 = &v70 - v12;
  MEMORY[0x28223BE20](v13);
  v78 = &v70 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v70 - v16;
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v70 - v20;
  if ([*a1 object])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
  }

  else
  {
    v80 = 0u;
    v81 = 0u;
  }

  v82[0] = v80;
  v82[1] = v81;
  if (!*(&v81 + 1))
  {
    sub_226E97D1C(v82, &unk_27D7BC990, &qword_227670A30);
    goto LABEL_20;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:
    sub_22766A690();
    v46 = sub_22766B380();
    v47 = sub_22766C890();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_226E8E000, v46, v47, "[Keys] Nonce response couldn't be parsed as JSON", v48, 2u);
      MEMORY[0x22AA9A450](v48, -1, -1);
    }

    (*(v7 + 8))(v21, v6);
    sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    swift_allocError();
    v50 = v49;
    v51 = MEMORY[0x277D50EF0];
    goto LABEL_28;
  }

  v22 = v83;
  sub_22766A690();

  v23 = sub_22766B380();
  v24 = sub_22766C8B0();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v73 = v3;
    v26 = v25;
    v27 = swift_slowAlloc();
    v72 = v4;
    v70 = v27;
    *&v82[0] = v27;
    *v26 = 136315138;
    v28 = sub_22766BEC0();
    v71 = v7;
    v30 = sub_226E97AE8(v28, v29, v82);
    v7 = v71;

    *(v26 + 4) = v30;
    _os_log_impl(&dword_226E8E000, v23, v24, "[Keys] Nonce request result: %s", v26, 0xCu);
    v31 = v70;
    __swift_destroy_boxed_opaque_existential_0(v70);
    v4 = v72;
    MEMORY[0x22AA9A450](v31, -1, -1);
    v32 = v26;
    v3 = v73;
    MEMORY[0x22AA9A450](v32, -1, -1);
  }

  v33 = *(v7 + 8);
  v33(v17, v6);
  if (!*(v22 + 16))
  {
    goto LABEL_23;
  }

  v34 = sub_226E92000(0x65722D65636E6F6ELL, 0xEF7365736E6F7073);
  if ((v35 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_226E97CC0(*(v22 + 56) + 32 * v34, v82);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDF0, &qword_227687560);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_24:
    v52 = v79;
    sub_22766A690();
    v53 = sub_22766B380();
    v54 = sub_22766C890();
    if (!os_log_type_enabled(v53, v54))
    {
LABEL_27:

      v33(v52, v6);
      sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
      swift_allocError();
      v50 = v57;
      v51 = MEMORY[0x277D50F28];
LABEL_28:
      (*(v4 + 104))(v50, *v51, v3);
      return swift_willThrow();
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "[Keys] Nonce responses couldn't be parsed";
LABEL_26:
    _os_log_impl(&dword_226E8E000, v53, v54, v56, v55, 2u);
    MEMORY[0x22AA9A450](v55, -1, -1);
    goto LABEL_27;
  }

  if (!*(v80 + 16))
  {
LABEL_23:

    goto LABEL_24;
  }

  v36 = *(v80 + 32);

  if (*(v36 + 16))
  {
    v37 = sub_226E92000(0x737574617473, 0xE600000000000000);
    if (v38)
    {
      sub_226E97CC0(*(v36 + 56) + 32 * v37, v82);
      if (swift_dynamicCast())
      {
        v39 = v80;
        if (v80)
        {

          sub_22766A690();
          v40 = sub_22766B380();
          v41 = sub_22766C890();
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            *v42 = 134349056;
            *(v42 + 4) = v39;
            _os_log_impl(&dword_226E8E000, v40, v41, "[Keys] Nonce response has error status %{public}ld", v42, 0xCu);
            MEMORY[0x22AA9A450](v42, -1, -1);
          }

          v33(v77, v6);
          v43 = v76;
          (*(v4 + 104))(v76, *MEMORY[0x277D50EB0], v3);
          sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
          sub_22766D280();
          (*(v4 + 8))(v43, v3);
          v44 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
          v45 = sub_22766BFD0();

          [v44 initWithDomain:v45 code:v39 userInfo:0];

          return swift_willThrow();
        }
      }
    }
  }

  if (!*(v36 + 16) || (v59 = sub_226E92000(0x65636E6F6ELL, 0xE500000000000000), (v60 & 1) == 0))
  {

    goto LABEL_38;
  }

  sub_226E97CC0(*(v36 + 56) + 32 * v59, v82);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    v52 = v78;
    sub_22766A690();
    v53 = sub_22766B380();
    v54 = sub_22766C890();
    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_27;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "[Keys] Nonce data string couldn't be parsed";
    goto LABEL_26;
  }

  v61 = sub_227662510();
  v63 = v62;

  if (v63 >> 60 == 15)
  {
    v64 = v74;
    sub_22766A690();
    v65 = sub_22766B380();
    v66 = sub_22766C890();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      *v67 = 0;
      _os_log_impl(&dword_226E8E000, v65, v66, "[Keys] Unable to parse nonce data", v67, 2u);
      MEMORY[0x22AA9A450](v67, -1, -1);
    }

    v33(v64, v6);
    sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    swift_allocError();
    v50 = v68;
    v51 = MEMORY[0x277D50F18];
    goto LABEL_28;
  }

  v69 = v75;
  *v75 = v61;
  v69[1] = v63;
  return result;
}

uint64_t sub_22734D698(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_22734D6BC, 0, 0);
}

uint64_t sub_22734D6BC()
{
  v1 = sub_227666200();
  v3 = v2;
  v0[5] = v2;
  v4 = swift_task_alloc();
  v0[6] = v4;
  *v4 = v0;
  v4[1] = sub_22734D77C;
  v5 = v0[2];

  return sub_2273CD428(v5, v1, v3);
}

uint64_t sub_22734D77C()
{
  v2 = *v1;
  *(v2 + 56) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_227355748, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_22734D8B8@<X0>(uint64_t a1@<X0>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v48 = a6;
  v49 = a7;
  v47 = a5;
  v51 = a4;
  v52 = a8;
  v9 = sub_2276624A0();
  v45 = *(v9 - 8);
  v10 = v45;
  *&v46 = v9;
  MEMORY[0x28223BE20](v9);
  v12 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227661FD0();
  v50 = swift_allocBox();
  (*(v10 + 16))(v12, a1, v9);
  sub_227661FA0();
  sub_227661FC0();
  v13 = objc_opt_self();
  v14 = [objc_opt_self() currentProcess];
  v15 = [v13 userAgentForProcessInfo_];

  sub_22766C000();
  sub_227661FC0();

  sub_227661F70();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276707E0;
  *(inited + 32) = 25705;
  v17 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0;
  *(inited + 72) = v17;
  *(inited + 80) = 0x64692D6D616461;
  *(inited + 88) = 0xE700000000000000;
  v18 = sub_2276661F0();
  v19 = MEMORY[0x277D837D0];
  *(inited + 96) = v18;
  *(inited + 104) = v20;
  *(inited + 120) = v19;
  *(inited + 128) = 6910581;
  *(inited + 136) = 0xE300000000000000;
  sub_227666220();
  v21 = sub_227662390();
  v23 = v22;
  (*(v45 + 8))(v12, v46);
  *(inited + 144) = v21;
  *(inited + 152) = v23;
  *(inited + 168) = v19;
  *(inited + 176) = 6516851;
  *(inited + 184) = 0xE300000000000000;
  v24 = sub_227666210();
  v26 = v25;
  v27 = sub_227662570();
  v29 = v28;
  sub_226EDC420(v24, v26);
  *(inited + 216) = v19;
  *(inited + 192) = v27;
  *(inited + 200) = v29;
  v30 = sub_227149264(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
  swift_arrayDestroy();
  v31 = swift_initStackObject();
  v46 = xmmword_227670CD0;
  *(v31 + 16) = xmmword_227670CD0;
  *(v31 + 32) = 0x64692D746F6C73;
  *(v31 + 72) = v19;
  v32 = v47;
  *(v31 + 40) = 0xE700000000000000;
  *(v31 + 48) = v32;
  *(v31 + 56) = v48;

  v33 = sub_227149264(v31);
  swift_setDeallocating();
  sub_226E97D1C(v31 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v53[0] = v30;
  sub_226FDAC14(v33, sub_227553D14, 0, isUniquelyReferenced_nonNull_native, v53);

  v35 = v53[0];
  v36 = swift_initStackObject();
  *(v36 + 16) = xmmword_2276728D0;
  *(v36 + 32) = 0x6E6F6973726576;
  v37 = v49;
  *(v36 + 40) = 0xE700000000000000;
  *(v36 + 48) = v37;
  *(v36 + 72) = MEMORY[0x277D83B88];
  *(v36 + 80) = 0xD000000000000010;
  *(v36 + 88) = 0x800000022769E200;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB060, &qword_227679B88);
  v38 = swift_allocObject();
  *(v38 + 16) = v46;
  *(v38 + 32) = v35;
  *(v36 + 120) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDF0, &qword_227687560);
  *(v36 + 96) = v38;
  v39 = sub_227149264(v36);
  swift_setDeallocating();
  swift_arrayDestroy();
  v40 = swift_allocObject();
  v41 = v50;
  v40[2] = v51;
  v40[3] = v41;
  v40[4] = v39;
  v42 = swift_allocObject();
  *(v42 + 16) = "SeymourServices/KeyProvider.swift";
  *(v42 + 24) = 33;
  *(v42 + 32) = 2;
  *(v42 + 40) = 335;
  *(v42 + 48) = &unk_2276815E8;
  *(v42 + 56) = v40;
  sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

  return sub_227669270();
}

uint64_t sub_22734DE70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[14] = a2;
  v4[15] = a4;
  v4[13] = a1;
  v5 = sub_227661FD0();
  v4[16] = v5;
  v4[17] = *(v5 - 8);
  v4[18] = swift_task_alloc();
  v4[19] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_22734DF44, 0, 0);
}

uint64_t sub_22734DF44()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[16];
  v4 = v0[17];
  v5 = v0[15];
  v0[20] = *(v0[14] + 16);
  swift_beginAccess();
  (*(v4 + 16))(v2, v1, v3);
  v0[5] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9CA8, &unk_227675D20);
  v0[2] = v5;
  v6 = objc_opt_self();
  v7 = objc_opt_self();

  v8 = [v7 currentProcess];
  v9 = [v6 userAgentForProcessInfo_];

  v10 = sub_22766C000();
  v12 = v11;

  v0[21] = v10;
  v0[22] = v12;
  v13 = swift_task_alloc();
  v0[23] = v13;
  *v13 = v0;
  v13[1] = sub_22734E0C4;

  return sub_2273CFC4C(0);
}

uint64_t sub_22734E0C4(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 192) = a1;

  if (v1)
  {

    v3[31] = v1;
    (*(v3[17] + 8))(v3[18], v3[16]);
    v4 = sub_22734E7B4;
  }

  else
  {
    v4 = sub_22734E1FC;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22734E1FC()
{
  v1 = sub_227661F80();
  sub_226E93170(v0 + 16, v0 + 48, &unk_27D7BC990, &qword_227670A30);
  v2 = *(v0 + 72);
  if (v2)
  {
    v3 = __swift_project_boxed_opaque_existential_0((v0 + 48), *(v0 + 72));
    v4 = *(v2 - 8);
    v5 = swift_task_alloc();
    (*(v4 + 16))(v5, v3, v2);
    v6 = sub_22766D170();
    (*(v4 + 8))(v5, v2);

    __swift_destroy_boxed_opaque_existential_0((v0 + 48));
  }

  else
  {
    v6 = 0;
  }

  v7 = *(v0 + 176);
  v8 = [*(v0 + 192) requestByEncodingRequest:v1 parameters:v6];
  *(v0 + 200) = v8;
  swift_unknownObjectRelease();

  v9 = swift_task_alloc();
  *(v0 + 208) = v9;
  *v9 = v0;
  v9[1] = sub_22734E3E8;
  v10 = *(v0 + 168);

  return sub_2273D1154(v8, 8, 0, v10, v7);
}

uint64_t sub_22734E3E8(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v1;

  if (v1)
  {
    v4 = sub_22734E728;
  }

  else
  {
    v4 = sub_22734E51C;
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t sub_22734E51C()
{
  v1 = *(v0 + 192);
  v3 = *(v0 + 136);
  v2 = *(v0 + 144);
  v4 = *(v0 + 128);

  (*(v3 + 8))(v2, v4);
  sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);
  v5 = swift_task_alloc();
  *(v0 + 232) = v5;
  *v5 = v0;
  v5[1] = sub_22734E600;
  v6 = *(v0 + 216);

  return sub_2273CDC0C(v6);
}

uint64_t sub_22734E600(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v5 = sub_22734E8B4;
  }

  else
  {
    *(v4 + 256) = a1;
    v5 = sub_22734E830;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22734E728()
{
  v1 = *(v0 + 192);

  *(v0 + 248) = *(v0 + 224);
  (*(*(v0 + 136) + 8))(*(v0 + 144), *(v0 + 128));

  return MEMORY[0x2822009F8](sub_22734E7B4, 0, 0);
}

uint64_t sub_22734E7B4()
{
  sub_226E97D1C(v0 + 16, &unk_27D7BC990, &qword_227670A30);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22734E830()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 104);

  *v2 = v1;

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22734E8B4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22734E950@<X0>(const char *a1@<X1>, id *a2@<X0>, const char *a3@<X2>, void *a4@<X8>, int8x8_t a5@<D0>, ...)
{
  v10 = sub_22766B390();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v35 - v16;
  if ([*a2 object])
  {
    sub_22766CC20();
    swift_unknownObjectRelease();
    sub_22766A690();
    sub_226E97CC0(a4, v40);
    v18 = sub_22766B380();
    v19 = sub_22766C8B0();
    if (os_log_type_enabled(v18, v19))
    {
      v36 = v10;
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v39 = v21;
      *v20 = vuzp1_s8(a5, v22).u32[0];
      sub_226E97CC0(v40, v37);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB9E0, &unk_22767B668);
      v23 = swift_dynamicCast();
      v35 = a1;
      if (v23)
      {
        v24 = v38;
      }

      else
      {
        v24 = 0;
        v38 = 0;
      }

      v37[0] = v24;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCDF8, &qword_227681598);
      v31 = sub_22766CB80();
      v33 = v32;
      __swift_destroy_boxed_opaque_existential_0(v40);

      v34 = sub_226E97AE8(v31, v33, &v39);

      *(v20 + 4) = v34;
      _os_log_impl(&dword_226E8E000, v18, v19, v35, v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x22AA9A450](v21, -1, -1);
      MEMORY[0x22AA9A450](v20, -1, -1);

      return (*(v11 + 8))(v13, v36);
    }

    else
    {

      __swift_destroy_boxed_opaque_existential_0(v40);
      return (*(v11 + 8))(v13, v10);
    }
  }

  else
  {
    sub_22766A690();
    v25 = sub_22766B380();
    v26 = sub_22766C890();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      *v27 = 0;
      _os_log_impl(&dword_226E8E000, v25, v26, a3, v27, 2u);
      MEMORY[0x22AA9A450](v27, -1, -1);
    }

    (*(v11 + 8))(v17, v10);
    v28 = sub_227664CB0();
    sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    swift_allocError();
    (*(*(v28 - 8) + 104))(v29, *MEMORY[0x277D50EF0], v28);
    return swift_willThrow();
  }
}

uint64_t sub_22734ED60@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v138 = a4;
  v136 = a3;
  v135 = a2;
  v124 = a1;
  v157 = a5;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v166 = *(v5 - 8);
  v167 = v5;
  v153 = *(v166 + 64);
  MEMORY[0x28223BE20](v5);
  v152 = &v121 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v165 = &v121 - v8;
  v168 = sub_227662750();
  v156 = *(v168 - 8);
  v155 = *(v156 + 64);
  MEMORY[0x28223BE20](v168);
  v154 = &v121 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v169 = &v121 - v11;
  v149 = sub_22766B360();
  v148 = *(v149 - 8);
  MEMORY[0x28223BE20](v149);
  v145 = &v121 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22766B340();
  MEMORY[0x28223BE20](v13 - 8);
  v144 = (&v121 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v128 = *(v129 - 8);
  v127 = *(v128 + 64);
  MEMORY[0x28223BE20](v129);
  v126 = &v121 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v125 = &v121 - v17;
  v132 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v134 = *(v132 - 8);
  v139 = *(v134 + 64);
  MEMORY[0x28223BE20](v132);
  v130 = &v121 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v131 = &v121 - v20;
  v123 = sub_22766B390();
  v21 = *(v123 - 1);
  MEMORY[0x28223BE20](v123);
  v23 = &v121 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD670, &qword_227680080);
  v140 = *(v141 - 8);
  v158 = *(v140 + 64);
  MEMORY[0x28223BE20](v141);
  v137 = &v121 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v133 = &v121 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
  v162 = *(v27 - 8);
  v163 = v27;
  v143 = v162[8];
  MEMORY[0x28223BE20](v27);
  v161 = &v121 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v147 = &v121 - v30;
  MEMORY[0x28223BE20](v31);
  v160 = &v121 - v32;
  v33 = sub_227666230();
  v34 = *(v33 - 8);
  v35 = *(v34 + 64);
  MEMORY[0x28223BE20](v33);
  MEMORY[0x28223BE20](v36);
  v38 = &v121 - v37;
  v151 = sub_227669890();
  v150 = *(v151 - 8);
  MEMORY[0x28223BE20](v151);
  v159 = &v121 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A800();
  v40 = *(v34 + 16);
  v164 = v38;
  v40(v38, v124, v33);
  v122 = v40;
  sub_22766A690();
  sub_22766B370();
  (*(v21 + 8))(v23, v123);
  v41 = v170;
  v124 = *(v170 + 16);
  v42 = v33;
  v40(&v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0), v38, v33);
  v146 = v34;
  v43 = *(v34 + 80);
  v121 = (v43 + 24) & ~v43;
  v44 = swift_allocObject();
  *(v44 + 16) = v41;
  v123 = *(v34 + 32);
  v45 = &v121 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = v33;
  v123(v44 + ((v43 + 24) & ~v43), v45, v33);
  v46 = swift_allocObject();
  *(v46 + 16) = "SeymourServices/KeyProvider.swift";
  *(v46 + 24) = 33;
  *(v46 + 32) = 2;
  *(v46 + 40) = 97;
  *(v46 + 48) = &unk_227681590;
  *(v46 + 56) = v44;
  sub_2276624A0();
  v47 = v170;

  v48 = v125;
  sub_227669270();
  v122(v45, v164, v42);
  v49 = (((v43 + 24) & ~v43) + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = (v49 + 23) & 0xFFFFFFFFFFFFFFF8;
  v51 = swift_allocObject();
  *(v51 + 16) = v47;
  v123(v51 + v121, v45, v42);
  v52 = (v51 + v49);
  v53 = v136;
  *v52 = v135;
  v52[1] = v53;
  *(v51 + v50) = v138;
  v54 = v124;
  *(v51 + ((v50 + 15) & 0xFFFFFFFFFFFFFFF8)) = v124;
  v55 = v128;
  v56 = v126;
  v57 = v129;
  (*(v128 + 16))(v126, v48, v129);
  v58 = (*(v55 + 80) + 16) & ~*(v55 + 80);
  v59 = (v127 + v58 + 7) & 0xFFFFFFFFFFFFFFF8;
  v60 = swift_allocObject();
  (*(v55 + 32))(v60 + v58, v56, v57);
  v61 = (v60 + v59);
  *v61 = sub_227353E10;
  v61[1] = v51;
  sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

  v62 = v54;
  v63 = v130;
  sub_227669270();
  (*(v55 + 8))(v48, v57);
  v171[3] = sub_22766A4E0();
  v171[4] = MEMORY[0x277D4F7C0];
  __swift_allocate_boxed_opaque_existential_0(v171);
  sub_22766A4D0();
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v64 = sub_22766C950();
  v65 = v131;
  v66 = v132;
  sub_2276691F0();

  v67 = v134;
  v68 = *(v134 + 8);
  v68(v63, v66);
  __swift_destroy_boxed_opaque_existential_0(v171);
  v69 = swift_allocObject();
  *(v69 + 16) = sub_2273492CC;
  *(v69 + 24) = 0;
  (*(v67 + 16))(v63, v65, v66);
  v70 = v67;
  v71 = (*(v67 + 80) + 16) & ~*(v67 + 80);
  v72 = &v139[v71 + 7] & 0xFFFFFFFFFFFFFFF8;
  v73 = swift_allocObject();
  (*(v70 + 32))(v73 + v71, v63, v66);
  v74 = (v73 + v72);
  *v74 = sub_22730EB74;
  v74[1] = v69;
  v75 = v133;
  sub_227669270();
  v68(v65, v66);
  v76 = v140;
  v77 = v137;
  v78 = v141;
  (*(v140 + 16))(v137, v75, v141);
  v79 = (*(v76 + 80) + 16) & ~*(v76 + 80);
  v80 = (v158 + v79 + 7) & 0xFFFFFFFFFFFFFFF8;
  v81 = swift_allocObject();
  (*(v76 + 32))(v81 + v79, v77, v78);
  v82 = (v81 + v80);
  v83 = v170;
  *v82 = sub_227353E64;
  v82[1] = v83;
  v158 = sub_2276631F0();

  v84 = v160;
  sub_227669270();
  (*(v76 + 8))(v75, v78);
  sub_2276697A0();
  swift_allocObject();
  v85 = sub_227669770();
  v86 = v145;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v148 + 8))(v86, v149);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v87 = sub_22766A8F0();
  v149 = v87;
  v171[0] = v85;
  v88 = sub_22766C060();
  v148 = v88;
  v90 = v89;
  sub_227662720();
  v91 = swift_allocObject();
  v170 = v85;
  *(v91 + 16) = v85;
  *(v91 + 24) = v87;
  *(v91 + 32) = v88;
  *(v91 + 40) = v90;
  v145 = v90;
  *(v91 + 48) = "KeyProvider.fetchOfflineContext";
  *(v91 + 56) = 31;
  *(v91 + 64) = 2;

  v92 = v165;
  sub_227669270();
  v93 = v162;
  v144 = v162[2];
  v94 = v161;
  v95 = v163;
  v144(v161, v84, v163);
  v141 = *(v93 + 80);
  v139 = v143 + ((v141 + 16) & ~v141);
  v96 = (v141 + 16) & ~v141;
  v140 = v96;
  v97 = swift_allocObject();
  v143 = v93[4];
  v143(v97 + v96, v94, v95);
  v99 = v166;
  v98 = v167;
  v100 = v152;
  (*(v166 + 16))(v152, v92, v167);
  v101 = (*(v99 + 80) + 16) & ~*(v99 + 80);
  v102 = (v153 + v101 + 7) & 0xFFFFFFFFFFFFFFF8;
  v103 = swift_allocObject();
  (*(v99 + 32))(v103 + v101, v100, v98);
  v104 = (v103 + v102);
  *v104 = sub_227353EC4;
  v104[1] = v97;
  v105 = v147;
  sub_227669270();
  v106 = v156;
  v107 = v154;
  v108 = v168;
  (*(v156 + 16))(v154, v169, v168);
  v109 = (*(v106 + 80) + 49) & ~*(v106 + 80);
  v110 = (v155 + v109 + 7) & 0xFFFFFFFFFFFFFFF8;
  v111 = swift_allocObject();
  v112 = v145;
  *(v111 + 16) = v148;
  *(v111 + 24) = v112;
  *(v111 + 32) = "KeyProvider.fetchOfflineContext";
  *(v111 + 40) = 31;
  *(v111 + 48) = 2;
  (*(v106 + 32))(v111 + v109, v107, v108);
  *(v111 + v110) = v149;
  *(v111 + ((v110 + 15) & 0xFFFFFFFFFFFFFFF8)) = v170;
  v113 = v161;
  v114 = v105;
  v115 = v163;
  v144(v161, v105, v163);
  v116 = (v139 + 7) & 0xFFFFFFFFFFFFFFF8;
  v117 = swift_allocObject();
  v143(v117 + v140, v113, v115);
  v118 = (v117 + v116);
  *v118 = sub_227353F00;
  v118[1] = v111;

  sub_227669270();
  v119 = v162[1];
  v119(v114, v115);
  (*(v166 + 8))(v165, v167);
  (*(v106 + 8))(v169, v168);
  v119(v160, v115);
  (*(v146 + 8))(v164, v142);
  (*(v150 + 8))(v159, v151);
}

uint64_t sub_227350054@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a1;
  v150 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v160 = *(v2 - 8);
  v161 = v2;
  v146 = *(v160 + 64);
  MEMORY[0x28223BE20](v2);
  v145 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v159 = &v116 - v5;
  v162 = sub_227662750();
  v149 = *(v162 - 8);
  v148 = *(v149 + 64);
  MEMORY[0x28223BE20](v162);
  v147 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v163 = &v116 - v8;
  v142 = sub_22766B360();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v138 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B340();
  MEMORY[0x28223BE20](v10 - 8);
  v137 = (&v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v124 = *(v125 - 8);
  v123 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v122 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v121 = &v116 - v14;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v130 = *(v128 - 8);
  v132 = *(v130 + 64);
  MEMORY[0x28223BE20](v128);
  v126 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v127 = &v116 - v17;
  v119 = sub_22766B390();
  v18 = *(v119 - 1);
  MEMORY[0x28223BE20](v119);
  v20 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD670, &qword_227680080);
  v133 = *(v134 - 8);
  v152 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v131 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v129 = &v116 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
  v156 = *(v24 - 8);
  v157 = v24;
  v136 = v156[8];
  MEMORY[0x28223BE20](v24);
  v155 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v140 = &v116 - v27;
  MEMORY[0x28223BE20](v28);
  v154 = &v116 - v29;
  v30 = sub_227666230();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v33);
  v35 = &v116 - v34;
  v144 = sub_227669890();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v153 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A800();
  v37 = *(v31 + 16);
  v158 = v35;
  v37(v35, v120, v30);
  v118 = v37;
  sub_22766A690();
  sub_22766B370();
  (*(v18 + 8))(v20, v119);
  v38 = v151;
  v120 = *(v151 + 16);
  v37(&v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v30);
  v139 = v31;
  v39 = *(v31 + 80);
  v117 = (v39 + 24) & ~v39;
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  v119 = *(v31 + 32);
  v41 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119(v40 + ((v39 + 24) & ~v39), v41, v30);
  v42 = swift_allocObject();
  *(v42 + 16) = "SeymourServices/KeyProvider.swift";
  *(v42 + 24) = 33;
  *(v42 + 32) = 2;
  *(v42 + 40) = 97;
  *(v42 + 48) = &unk_2276815D8;
  *(v42 + 56) = v40;
  sub_2276624A0();

  v43 = v121;
  sub_227669270();
  v135 = v30;
  v118(v41, v158, v30);
  v44 = (((v39 + 24) & ~v39) + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v38;
  v119(v46 + v117, v41, v30);
  v47 = (v46 + v44);
  *v47 = 0;
  v47[1] = 0;
  *(v46 + v45) = 1;
  v48 = v120;
  *(v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) = v120;
  v49 = v124;
  v50 = v122;
  v51 = v125;
  (*(v124 + 16))(v122, v43, v125);
  v52 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v53 = (v123 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v49 + 32))(v54 + v52, v50, v51);
  v55 = (v54 + v53);
  *v55 = sub_22735572C;
  v55[1] = v46;
  sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

  v56 = v48;
  v57 = v126;
  sub_227669270();
  (*(v49 + 8))(v43, v51);
  v164[3] = sub_22766A4E0();
  v164[4] = MEMORY[0x277D4F7C0];
  __swift_allocate_boxed_opaque_existential_0(v164);
  sub_22766A4D0();
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v58 = sub_22766C950();
  v59 = v127;
  v60 = v128;
  v61 = v57;
  sub_2276691F0();

  v62 = v130;
  v63 = *(v130 + 8);
  v63(v57, v60);
  __swift_destroy_boxed_opaque_existential_0(v164);
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2273492CC;
  *(v64 + 24) = 0;
  (*(v62 + 16))(v57, v59, v60);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v67 = &v132[v66 + 7] & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  (*(v65 + 32))(v68 + v66, v61, v60);
  v69 = (v68 + v67);
  *v69 = sub_2273556EC;
  v69[1] = v64;
  v70 = v129;
  sub_227669270();
  v63(v59, v60);
  v71 = v133;
  v72 = v131;
  v73 = v134;
  (*(v133 + 16))(v131, v70, v134);
  v74 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v75 = (v152 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (*(v71 + 32))(v76 + v74, v72, v73);
  v77 = (v76 + v75);
  v78 = v151;
  *v77 = sub_227355038;
  v77[1] = v78;
  v152 = sub_2276631F0();

  v79 = v154;
  sub_227669270();
  (*(v71 + 8))(v70, v73);
  sub_2276697A0();
  swift_allocObject();
  v80 = sub_227669770();
  v81 = v138;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v141 + 8))(v81, v142);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v82 = sub_22766A8F0();
  v142 = v82;
  v164[0] = v80;
  v83 = sub_22766C060();
  v141 = v83;
  v85 = v84;
  sub_227662720();
  v86 = swift_allocObject();
  v151 = v80;
  *(v86 + 16) = v80;
  *(v86 + 24) = v82;
  *(v86 + 32) = v83;
  *(v86 + 40) = v85;
  v138 = v85;
  *(v86 + 48) = "KeyProvider.fetchContext";
  *(v86 + 56) = 24;
  *(v86 + 64) = 2;

  v87 = v159;
  sub_227669270();
  v88 = v156;
  v137 = v156[2];
  v89 = v155;
  v90 = v157;
  v137(v155, v79, v157);
  v134 = *(v88 + 80);
  v132 = v136 + ((v134 + 16) & ~v134);
  v91 = (v134 + 16) & ~v134;
  v133 = v91;
  v92 = swift_allocObject();
  v136 = v88[4];
  v136(v92 + v91, v89, v90);
  v94 = v160;
  v93 = v161;
  v95 = v145;
  (*(v160 + 16))(v145, v87, v161);
  v96 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v97 = (v146 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  (*(v94 + 32))(v98 + v96, v95, v93);
  v99 = (v98 + v97);
  *v99 = sub_22735573C;
  v99[1] = v92;
  v100 = v140;
  sub_227669270();
  v101 = v149;
  v102 = v147;
  v103 = v162;
  (*(v149 + 16))(v147, v163, v162);
  v104 = (*(v101 + 80) + 49) & ~*(v101 + 80);
  v105 = (v148 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = swift_allocObject();
  v107 = v138;
  *(v106 + 16) = v141;
  *(v106 + 24) = v107;
  *(v106 + 32) = "KeyProvider.fetchContext";
  *(v106 + 40) = 24;
  *(v106 + 48) = 2;
  (*(v101 + 32))(v106 + v104, v102, v103);
  *(v106 + v105) = v142;
  *(v106 + ((v105 + 15) & 0xFFFFFFFFFFFFFFF8)) = v151;
  v108 = v155;
  v109 = v100;
  v110 = v157;
  v137(v155, v100, v157);
  v111 = (v132 + 7) & 0xFFFFFFFFFFFFFFF8;
  v112 = swift_allocObject();
  v136(v112 + v133, v108, v110);
  v113 = (v112 + v111);
  *v113 = sub_227355720;
  v113[1] = v106;

  sub_227669270();
  v114 = v156[1];
  v114(v109, v110);
  (*(v160 + 8))(v159, v161);
  (*(v101 + 8))(v163, v162);
  v114(v154, v110);
  (*(v139 + 8))(v158, v135);
  (*(v143 + 8))(v153, v144);
}

uint64_t sub_227351318@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v120 = a1;
  v150 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v160 = *(v2 - 8);
  v161 = v2;
  v146 = *(v160 + 64);
  MEMORY[0x28223BE20](v2);
  v145 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v159 = &v116 - v5;
  v162 = sub_227662750();
  v149 = *(v162 - 8);
  v148 = *(v149 + 64);
  MEMORY[0x28223BE20](v162);
  v147 = &v116 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v163 = &v116 - v8;
  v142 = sub_22766B360();
  v141 = *(v142 - 8);
  MEMORY[0x28223BE20](v142);
  v138 = &v116 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B340();
  MEMORY[0x28223BE20](v10 - 8);
  v137 = (&v116 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v125 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v124 = *(v125 - 8);
  v123 = *(v124 + 64);
  MEMORY[0x28223BE20](v125);
  v122 = &v116 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v121 = &v116 - v14;
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v130 = *(v128 - 8);
  v132 = *(v130 + 64);
  MEMORY[0x28223BE20](v128);
  v126 = &v116 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v127 = &v116 - v17;
  v119 = sub_22766B390();
  v18 = *(v119 - 1);
  MEMORY[0x28223BE20](v119);
  v20 = &v116 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD670, &qword_227680080);
  v133 = *(v134 - 8);
  v152 = *(v133 + 64);
  MEMORY[0x28223BE20](v134);
  v131 = &v116 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v129 = &v116 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9670, qword_2276748A0);
  v156 = *(v24 - 8);
  v157 = v24;
  v136 = v156[8];
  MEMORY[0x28223BE20](v24);
  v155 = &v116 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v140 = &v116 - v27;
  MEMORY[0x28223BE20](v28);
  v154 = &v116 - v29;
  v30 = sub_227666230();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  MEMORY[0x28223BE20](v33);
  v35 = &v116 - v34;
  v144 = sub_227669890();
  v143 = *(v144 - 8);
  MEMORY[0x28223BE20](v144);
  v153 = &v116 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A800();
  v37 = *(v31 + 16);
  v158 = v35;
  v37(v35, v120, v30);
  v118 = v37;
  sub_22766A690();
  sub_22766B370();
  (*(v18 + 8))(v20, v119);
  v38 = v151;
  v120 = *(v151 + 16);
  v37(&v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), v35, v30);
  v139 = v31;
  v39 = *(v31 + 80);
  v117 = (v39 + 24) & ~v39;
  v40 = swift_allocObject();
  *(v40 + 16) = v38;
  v119 = *(v31 + 32);
  v41 = &v116 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119(v40 + ((v39 + 24) & ~v39), v41, v30);
  v42 = swift_allocObject();
  *(v42 + 16) = "SeymourServices/KeyProvider.swift";
  *(v42 + 24) = 33;
  *(v42 + 32) = 2;
  *(v42 + 40) = 97;
  *(v42 + 48) = &unk_2276815C0;
  *(v42 + 56) = v40;
  sub_2276624A0();

  v43 = v121;
  sub_227669270();
  v135 = v30;
  v118(v41, v158, v30);
  v44 = (((v39 + 24) & ~v39) + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v45 = (v44 + 23) & 0xFFFFFFFFFFFFFFF8;
  v46 = swift_allocObject();
  *(v46 + 16) = v38;
  v119(v46 + v117, v41, v30);
  v47 = (v46 + v44);
  *v47 = 0;
  v47[1] = 0;
  *(v46 + v45) = 1;
  v48 = v120;
  *(v46 + ((v45 + 15) & 0xFFFFFFFFFFFFFFF8)) = v120;
  v49 = v124;
  v50 = v122;
  v51 = v125;
  (*(v124 + 16))(v122, v43, v125);
  v52 = (*(v49 + 80) + 16) & ~*(v49 + 80);
  v53 = (v123 + v52 + 7) & 0xFFFFFFFFFFFFFFF8;
  v54 = swift_allocObject();
  (*(v49 + 32))(v54 + v52, v50, v51);
  v55 = (v54 + v53);
  *v55 = sub_22735572C;
  v55[1] = v46;
  sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

  v56 = v48;
  v57 = v126;
  sub_227669270();
  (*(v49 + 8))(v43, v51);
  v164[3] = sub_22766A4E0();
  v164[4] = MEMORY[0x277D4F7C0];
  __swift_allocate_boxed_opaque_existential_0(v164);
  sub_22766A4D0();
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v58 = sub_22766C950();
  v59 = v127;
  v60 = v128;
  v61 = v57;
  sub_2276691F0();

  v62 = v130;
  v63 = *(v130 + 8);
  v63(v57, v60);
  __swift_destroy_boxed_opaque_existential_0(v164);
  v64 = swift_allocObject();
  *(v64 + 16) = sub_2273492CC;
  *(v64 + 24) = 0;
  (*(v62 + 16))(v57, v59, v60);
  v65 = v62;
  v66 = (*(v62 + 80) + 16) & ~*(v62 + 80);
  v67 = &v132[v66 + 7] & 0xFFFFFFFFFFFFFFF8;
  v68 = swift_allocObject();
  (*(v65 + 32))(v68 + v66, v61, v60);
  v69 = (v68 + v67);
  *v69 = sub_2273556EC;
  v69[1] = v64;
  v70 = v129;
  sub_227669270();
  v63(v59, v60);
  v71 = v133;
  v72 = v131;
  v73 = v134;
  (*(v133 + 16))(v131, v70, v134);
  v74 = (*(v71 + 80) + 16) & ~*(v71 + 80);
  v75 = (v152 + v74 + 7) & 0xFFFFFFFFFFFFFFF8;
  v76 = swift_allocObject();
  (*(v71 + 32))(v76 + v74, v72, v73);
  v77 = (v76 + v75);
  v78 = v151;
  *v77 = sub_227354BAC;
  v77[1] = v78;
  v152 = sub_2276631F0();

  v79 = v154;
  sub_227669270();
  (*(v71 + 8))(v70, v73);
  sub_2276697A0();
  swift_allocObject();
  v80 = sub_227669770();
  v81 = v138;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v141 + 8))(v81, v142);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v82 = sub_22766A8F0();
  v142 = v82;
  v164[0] = v80;
  v83 = sub_22766C060();
  v141 = v83;
  v85 = v84;
  sub_227662720();
  v86 = swift_allocObject();
  v151 = v80;
  *(v86 + 16) = v80;
  *(v86 + 24) = v82;
  *(v86 + 32) = v83;
  *(v86 + 40) = v85;
  v138 = v85;
  *(v86 + 48) = "KeyProvider.renewContext";
  *(v86 + 56) = 24;
  *(v86 + 64) = 2;

  v87 = v159;
  sub_227669270();
  v88 = v156;
  v137 = v156[2];
  v89 = v155;
  v90 = v157;
  v137(v155, v79, v157);
  v134 = *(v88 + 80);
  v132 = v136 + ((v134 + 16) & ~v134);
  v91 = (v134 + 16) & ~v134;
  v133 = v91;
  v92 = swift_allocObject();
  v136 = v88[4];
  v136(v92 + v91, v89, v90);
  v94 = v160;
  v93 = v161;
  v95 = v145;
  (*(v160 + 16))(v145, v87, v161);
  v96 = (*(v94 + 80) + 16) & ~*(v94 + 80);
  v97 = (v146 + v96 + 7) & 0xFFFFFFFFFFFFFFF8;
  v98 = swift_allocObject();
  (*(v94 + 32))(v98 + v96, v95, v93);
  v99 = (v98 + v97);
  *v99 = sub_22735573C;
  v99[1] = v92;
  v100 = v140;
  sub_227669270();
  v101 = v149;
  v102 = v147;
  v103 = v162;
  (*(v149 + 16))(v147, v163, v162);
  v104 = (*(v101 + 80) + 49) & ~*(v101 + 80);
  v105 = (v148 + v104 + 7) & 0xFFFFFFFFFFFFFFF8;
  v106 = swift_allocObject();
  v107 = v138;
  *(v106 + 16) = v141;
  *(v106 + 24) = v107;
  *(v106 + 32) = "KeyProvider.renewContext";
  *(v106 + 40) = 24;
  *(v106 + 48) = 2;
  (*(v101 + 32))(v106 + v104, v102, v103);
  *(v106 + v105) = v142;
  *(v106 + ((v105 + 15) & 0xFFFFFFFFFFFFFFF8)) = v151;
  v108 = v155;
  v109 = v100;
  v110 = v157;
  v137(v155, v100, v157);
  v111 = (v132 + 7) & 0xFFFFFFFFFFFFFFF8;
  v112 = swift_allocObject();
  v136(v112 + v133, v108, v110);
  v113 = (v112 + v111);
  *v113 = sub_227355720;
  v113[1] = v106;

  sub_227669270();
  v114 = v156[1];
  v114(v109, v110);
  (*(v160 + 8))(v159, v161);
  (*(v101 + 8))(v163, v162);
  v114(v154, v110);
  (*(v139 + 8))(v158, v135);
  (*(v143 + 8))(v153, v144);
}

uint64_t sub_2273525DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_226E97CC0(a1, v7);
  v5 = swift_allocObject();
  sub_226F04970(v7, (v5 + 16));
  *(v5 + 48) = a2;
  sub_2276631F0();

  return sub_227669280();
}

uint64_t sub_227352674@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v123 = a1;
  v152 = a2;
  v161 = sub_227662750();
  v151 = *(v161 - 8);
  v150 = *(v151 + 64);
  MEMORY[0x28223BE20](v161);
  v149 = &v120 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v163 = &v120 - v4;
  v146 = sub_22766B360();
  v145 = *(v146 - 8);
  MEMORY[0x28223BE20](v146);
  v144 = &v120 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B340();
  MEMORY[0x28223BE20](v6 - 8);
  v143 = &v120 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD680, &unk_227680050);
  v127 = *(v128 - 8);
  v126 = *(v127 + 64);
  MEMORY[0x28223BE20](v128);
  v125 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v124 = &v120 - v10;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCAF0, &unk_227680068);
  v133 = *(v131 - 8);
  v135 = *(v133 + 64);
  MEMORY[0x28223BE20](v131);
  v129 = &v120 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v130 = &v120 - v13;
  v122 = sub_22766B390();
  v14 = *(v122 - 1);
  MEMORY[0x28223BE20](v122);
  v16 = &v120 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v138 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BD670, &qword_227680080);
  v137 = *(v138 - 1);
  v136 = *(v137 + 64);
  MEMORY[0x28223BE20](v138);
  v134 = &v120 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v132 = &v120 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7B9540, &unk_227670860);
  v157 = *(v20 - 8);
  v158 = v20;
  v140 = v157[8];
  MEMORY[0x28223BE20](v20);
  v141 = &v120 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v156 = &v120 - v23;
  MEMORY[0x28223BE20](v24);
  v160 = &v120 - v25;
  MEMORY[0x28223BE20](v26);
  v155 = &v120 - v27;
  MEMORY[0x28223BE20](v28);
  v154 = &v120 - v29;
  v30 = sub_227666230();
  v31 = *(v30 - 8);
  v32 = *(v31 + 64);
  MEMORY[0x28223BE20](v30);
  v33 = &v120 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v34);
  v36 = &v120 - v35;
  v148 = sub_227669890();
  v147 = *(v148 - 8);
  MEMORY[0x28223BE20](v148);
  v153 = &v120 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A800();
  v38 = *(v31 + 16);
  v159 = v36;
  v38(v36, v123, v30);
  v121 = v38;
  sub_22766A690();
  sub_22766B370();
  (*(v14 + 8))(v16, v122);
  v39 = v162;
  v123 = *(v162 + 16);
  v38(v33, v36, v30);
  v40 = v31;
  v142 = v31;
  v41 = *(v31 + 80);
  v120 = (v41 + 24) & ~v41;
  v42 = swift_allocObject();
  *(v42 + 16) = v39;
  v122 = *(v40 + 32);
  v122(v42 + ((v41 + 24) & ~v41), v33, v30);
  v43 = swift_allocObject();
  *(v43 + 16) = "SeymourServices/KeyProvider.swift";
  *(v43 + 24) = 33;
  *(v43 + 32) = 2;
  *(v43 + 40) = 97;
  *(v43 + 48) = &unk_2276815B0;
  *(v43 + 56) = v42;
  sub_2276624A0();
  v44 = v39;

  v45 = v124;
  sub_227669270();
  v139 = v30;
  v121(v33, v159, v30);
  v46 = (((v41 + 24) & ~v41) + v32 + 7) & 0xFFFFFFFFFFFFFFF8;
  v47 = (v46 + 23) & 0xFFFFFFFFFFFFFFF8;
  v48 = swift_allocObject();
  *(v48 + 16) = v44;
  v122(v48 + v120, v33, v30);
  v49 = (v48 + v46);
  *v49 = 0;
  v49[1] = 0;
  *(v48 + v47) = 1;
  v50 = v123;
  *(v48 + ((v47 + 15) & 0xFFFFFFFFFFFFFFF8)) = v123;
  v51 = v127;
  v52 = v125;
  v53 = v45;
  v54 = v128;
  (*(v127 + 16))(v125, v45, v128);
  v55 = (*(v51 + 80) + 16) & ~*(v51 + 80);
  v56 = (v126 + v55 + 7) & 0xFFFFFFFFFFFFFFF8;
  v57 = swift_allocObject();
  (*(v51 + 32))(v57 + v55, v52, v54);
  v58 = (v57 + v56);
  *v58 = sub_22735572C;
  v58[1] = v48;
  sub_226E99364(0, &qword_281398B50, 0x277CEE6E8);

  v59 = v50;
  v60 = v129;
  sub_227669270();
  (*(v51 + 8))(v53, v54);
  v164[3] = sub_22766A4E0();
  v164[4] = MEMORY[0x277D4F7C0];
  __swift_allocate_boxed_opaque_existential_0(v164);
  sub_22766A4D0();
  sub_226E99364(0, &qword_2813A5840, 0x277D85C78);
  v61 = sub_22766C950();
  v62 = v130;
  v63 = v131;
  sub_2276691F0();

  v64 = v133;
  v65 = *(v133 + 8);
  v65(v60, v63);
  __swift_destroy_boxed_opaque_existential_0(v164);
  v66 = swift_allocObject();
  *(v66 + 16) = sub_2273492CC;
  *(v66 + 24) = 0;
  (*(v64 + 16))(v60, v62, v63);
  v67 = v64;
  v68 = (*(v64 + 80) + 16) & ~*(v64 + 80);
  v69 = (v135 + v68 + 7) & 0xFFFFFFFFFFFFFFF8;
  v70 = swift_allocObject();
  (*(v67 + 32))(v70 + v68, v60, v63);
  v71 = (v70 + v69);
  *v71 = sub_2273556EC;
  v71[1] = v66;
  v72 = v132;
  sub_227669270();
  v65(v62, v63);
  v73 = v137;
  v74 = v134;
  v75 = v138;
  (*(v137 + 16))(v134, v72, v138);
  v76 = (*(v73 + 80) + 16) & ~*(v73 + 80);
  v77 = (v136 + v76 + 7) & 0xFFFFFFFFFFFFFFF8;
  v78 = swift_allocObject();
  (*(v73 + 32))(v78 + v76, v74, v75);
  v79 = (v78 + v77);
  v80 = v162;
  *v79 = sub_227354A30;
  v79[1] = v80;

  v81 = v154;
  sub_227669270();
  (*(v73 + 8))(v72, v75);
  sub_2276697A0();
  swift_allocObject();
  v82 = sub_227669770();
  v83 = v144;
  sub_227669880();

  sub_22766B350();
  sub_22766B330();
  (*(v145 + 8))(v83, v146);
  sub_227669880();
  sub_22766A920();
  swift_allocObject();
  v84 = sub_22766A8F0();
  v146 = v84;
  v164[0] = v82;
  v85 = sub_22766C060();
  v145 = v85;
  v87 = v86;
  sub_227662720();
  v88 = swift_allocObject();
  v162 = v82;
  *(v88 + 16) = v82;
  *(v88 + 24) = v84;
  *(v88 + 32) = v85;
  *(v88 + 40) = v87;
  v144 = v87;
  *(v88 + 48) = "KeyProvider.releaseContext";
  *(v88 + 56) = 26;
  *(v88 + 64) = 2;

  v89 = v155;
  sub_227669270();
  v91 = v156;
  v90 = v157;
  v92 = (v157 + 2);
  v93 = v157[2];
  v94 = v81;
  v95 = v158;
  v93(v156, v94, v158);
  v138 = v93;
  v143 = v92;
  v96 = (*(v90 + 80) + 16) & ~*(v90 + 80);
  v97 = &v140[v96];
  v137 = *(v90 + 80);
  v135 = swift_allocObject();
  v98 = v90[4];
  v136 = v96;
  v99 = v95;
  v140 = v98;
  (v98)(v135 + v96, v91, v95);
  v100 = v141;
  v93(v141, v89, v99);
  v101 = (v97 + 7) & 0xFFFFFFFFFFFFFFF8;
  v102 = swift_allocObject();
  (v98)(v102 + v96, v100, v99);
  v103 = (v102 + v101);
  v104 = v135;
  *v103 = sub_226EC14C0;
  v103[1] = v104;
  sub_227669270();
  v105 = v151;
  v106 = v149;
  v107 = v161;
  (*(v151 + 16))(v149, v163, v161);
  v108 = (*(v105 + 80) + 49) & ~*(v105 + 80);
  v109 = (v150 + v108 + 7) & 0xFFFFFFFFFFFFFFF8;
  v110 = swift_allocObject();
  v111 = v144;
  *(v110 + 16) = v145;
  *(v110 + 24) = v111;
  *(v110 + 32) = "KeyProvider.releaseContext";
  *(v110 + 40) = 26;
  *(v110 + 48) = 2;
  (*(v105 + 32))(v110 + v108, v106, v107);
  *(v110 + v109) = v146;
  *(v110 + ((v109 + 15) & 0xFFFFFFFFFFFFFFF8)) = v162;
  v112 = v156;
  v113 = v160;
  v114 = v158;
  (v138)(v156, v160, v158);
  v115 = swift_allocObject();
  v116 = v114;
  (v140)(v115 + v136, v112, v114);
  v117 = (v115 + v101);
  *v117 = sub_227354A90;
  v117[1] = v110;

  sub_227669270();
  v118 = v157[1];
  v118(v113, v116);
  v118(v155, v116);
  (*(v105 + 8))(v163, v161);
  v118(v154, v116);
  (*(v142 + 8))(v159, v139);
  (*(v147 + 8))(v153, v148);
}

uint64_t sub_2273538A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_226E97CC0(a1, v6);
  v4 = swift_allocObject();
  sub_226F04970(v6, (v4 + 16));
  return sub_227669280();
}

uint64_t sub_22735391C(void **a1, uint64_t a2, uint64_t a3)
{
  v5 = *a1;
  v6 = swift_allocObject();
  v6[2] = a2;
  v6[3] = a3;
  v6[4] = v5;

  v7 = v5;

  return sub_227669270();
}

uint64_t sub_227353A10@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BA1B0, &unk_2276775B0);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

uint64_t sub_227353AD8(uint64_t a1)
{
  v4 = *(sub_2276624A0() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_227346B80(a1, v6, v1 + v5);
}

uint64_t sub_227353BD4@<X0>(void **a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_2276624A0() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_227347484(a1, v2 + v6, v7, a2);
}

uint64_t sub_227353D14(uint64_t a1)
{
  v4 = *(sub_227666230() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_227347CB8(a1, v6, v1 + v5);
}

unint64_t sub_227353F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2276728D0;
  *(inited + 32) = 25705;
  v9 = MEMORY[0x277D83B88];
  *(inited + 40) = 0xE200000000000000;
  *(inited + 48) = 0;
  *(inited + 72) = v9;
  *(inited + 80) = 0x64692D6D616461;
  v10 = MEMORY[0x277D837D0];
  *(inited + 120) = MEMORY[0x277D837D0];
  *(inited + 88) = 0xE700000000000000;
  *(inited + 96) = a1;
  *(inited + 104) = a2;

  v11 = sub_227149264(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BE5C0, &qword_22767D1D0);
  swift_arrayDestroy();
  if (a4)
  {
    v12 = swift_initStackObject();
    *(v12 + 16) = xmmword_227670CD0;
    *(v12 + 32) = 0x64692D746F6C73;
    *(v12 + 72) = v10;
    *(v12 + 40) = 0xE700000000000000;
    *(v12 + 48) = a3;
    *(v12 + 56) = a4;

    v13 = sub_227149264(v12);
    swift_setDeallocating();
    sub_226E97D1C(v12 + 32, &unk_27D7BE5C0, &qword_22767D1D0);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v16 = v11;
    sub_226FDAC14(v13, sub_227553D14, 0, isUniquelyReferenced_nonNull_native, &v16);

    return v16;
  }

  return v11;
}

id sub_22735413C(uint64_t a1, uint64_t a2)
{
  v50 = a1;
  v3 = sub_227664CB0();
  v51 = *(v3 - 8);
  v52 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v45 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = sub_227665E90();
  v47 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_227664740();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v45 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_22766B390();
  v11 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v49 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = &v45 - v14;
  sub_22766A690();
  v16 = sub_22766B380();
  v17 = sub_22766C890();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134349056;
    *(v18 + 4) = a2;
    _os_log_impl(&dword_226E8E000, v16, v17, "CKC response has error status: %{public}ld", v18, 0xCu);
    MEMORY[0x22AA9A450](v18, -1, -1);
  }

  v19 = *(v11 + 8);
  v19(v15, v53);
  (*(v8 + 104))(v10, *MEMORY[0x277D50BE0], v7);
  v20 = sub_227664730();
  (*(v8 + 8))(v10, v7);
  v21 = a2;
  if (v20 == a2 && (v22 = v50, *(v50 + 16)) && (v23 = sub_226E92000(0xD000000000000012, 0x800000022769E1C0), (v24 & 1) != 0) && (sub_226E97CC0(*(v22 + 56) + 32 * v23, v56), (swift_dynamicCast() & 1) != 0))
  {
    v26 = v54;
    v25 = v55;
    v27 = v49;
    sub_22766A690();

    v28 = sub_22766B380();
    v29 = sub_22766C890();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v56[0] = v31;
      *v30 = 136315138;
      *(v30 + 4) = sub_226E97AE8(v26, v25, v56);
      _os_log_impl(&dword_226E8E000, v28, v29, "Returning PlaybackVoucherError, currentKeyVersion: %s", v30, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v31);
      MEMORY[0x22AA9A450](v31, -1, -1);
      MEMORY[0x22AA9A450](v30, -1, -1);

      v19(v49, v53);
    }

    else
    {

      v19(v27, v53);
    }

    v38 = v47;
    v39 = v46;
    v40 = v48;
    (*(v47 + 104))(v46, *MEMORY[0x277D51F00], v48);
    sub_227354B64(&qword_28139B6E8, MEMORY[0x277D51F70], MEMORY[0x277D51F78]);
    sub_22766D280();
    (*(v38 + 8))(v39, v40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B96E0, &unk_227674910);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_227670CD0;
    *(inited + 32) = 0xD000000000000011;
    v42 = inited + 32;
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = 0x800000022769E1E0;
    *(inited + 48) = v26;
    *(inited + 56) = v25;
    sub_227149264(inited);
    swift_setDeallocating();
    sub_226E97D1C(v42, &unk_27D7BE5C0, &qword_22767D1D0);
    v43 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v44 = sub_22766BFD0();

    v35 = sub_22766BE90();

    v36 = [v43 initWithDomain:v44 code:v21 userInfo:v35];
  }

  else
  {
    v33 = v51;
    v32 = v52;
    (*(v51 + 104))(v5, *MEMORY[0x277D50ED8], v52);
    sub_227354B64(&qword_28139B8E8, MEMORY[0x277D50F38], MEMORY[0x277D50F40]);
    sub_22766D280();
    (*(v33 + 8))(v5, v32);
    v34 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    v35 = sub_22766BFD0();

    v36 = [v34 initWithDomain:v35 code:v21 userInfo:0];
  }

  return v36;
}

uint64_t sub_22735488C(uint64_t a1)
{
  v3 = v2;
  v5 = *(sub_2276624A0() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(sub_227666230() - 8);
  v9 = (v7 + *(v8 + 80) + 9) & ~*(v8 + 80);
  v10 = *(v1 + 16);
  v11 = v1 + v7;
  v12 = *(v1 + v7);
  v13 = *(v11 + 8);
  v14 = *(v1 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = sub_226E93028;

  return sub_227348614(a1, v10, v1 + v6, v12, v13, v1 + v9, v14);
}

uint64_t sub_227354A90(uint64_t a1)
{
  v3 = *(sub_227662750() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22742A6F4(*a1, *(a1 + 8), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_227354B64(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t objectdestroy_78Tm_0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_227354C24(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E92F34;

  return sub_22734B794(a1, v4, v5, v6);
}

uint64_t sub_227354D2C(uint64_t a1)
{
  v3 = *(sub_227662750() - 8);
  v4 = (*(v3 + 80) + 49) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  return sub_22742A0B8(*a1, *(a1 + 8), *(a1 + 16), *(v1 + 16), *(v1 + 24), *(v1 + 32), *(v1 + 40), *(v1 + 48), v1 + v4, *(v1 + v5), *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_227354E30(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    sub_226EDC420(result, a2);
  }

  return result;
}

uint64_t objectdestroy_48Tm()
{
  v1 = sub_227666230();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (((((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_227354F6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(sub_227666230() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + 16);
  v10 = (v2 + v7);
  v11 = *v10;
  v12 = v10[1];
  v13 = *(v2 + v8);
  v14 = *(v2 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_227347F3C(a1, v9, v2 + v6, v11, v12, v13, v14, a2);
}

uint64_t sub_227355070(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22734DE70(a1, v4, v5, v6);
}

uint64_t sub_227355124(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_226E93028;

  return sub_22734CA28(a1, v5, v4);
}

uint64_t objectdestroy_283Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_227355218(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_226E93028;

  return sub_22734C0A0(a1, v4, v5, v6);
}

uint64_t sub_2273552E4(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22734A528(a1, v1);
}

uint64_t sub_227355420(uint64_t a1, uint64_t (*a2)(uint64_t, void, void, void, void, void, unint64_t, void, void))
{
  v5 = *(sub_227662750() - 8);
  v6 = (*(v5 + 80) + 49) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  return a2(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), v2 + v6, *(v2 + v7), *(v2 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_227355620(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(uint64_t, uint64_t, unint64_t, uint64_t, uint64_t))
{
  v8 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a3, a4) - 8);
  v9 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v10 = (v5 + ((*(v8 + 64) + v9 + 7) & 0xFFFFFFFFFFFFFFF8));
  v11 = *v10;
  v12 = v10[1];

  return a5(a1, a2, v5 + v9, v11, v12);
}

void sub_22735574C(void *a1@<X0>, char *a2@<X8>)
{
  v24 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BB570, &unk_227670FC0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v23 - v4;
  v6 = sub_2276624A0();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 remoteURL];
  if (v11)
  {
    v12 = v11;
    sub_22766C000();
  }

  sub_227662310();
  if ((*(v7 + 48))(v5, 1, v6) == 1)
  {
    sub_226E97D1C(v5, &unk_27D7BB570, &unk_227670FC0);
  }

  else
  {
    v13 = *(v7 + 32);
    v13(v10, v5, v6);
    v14 = [a1 data];
    if (v14)
    {
      v15 = v14;
      v16 = sub_227662590();
      v18 = v17;

      v19 = v24;
      v13(v24, v10, v6);
      v20 = &v19[*(type metadata accessor for KeyCertificate(0) + 20)];
      *v20 = v16;
      v20[1] = v18;
      return;
    }

    (*(v7 + 8))(v10, v6);
  }

  v21 = sub_227664DD0();
  sub_227355EB0(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277D51028], v21);
  swift_willThrow();
}

void sub_227355A58(void *a1, uint64_t a2, uint64_t a3)
{
  sub_227662390();
  v4 = sub_22766BFD0();

  [a1 setRemoteURL_];

  v5 = sub_227662560();
  [a1 setData_];
}

uint64_t _s15SeymourServices14KeyCertificateV21representativeSamplesSayACGyFZ_0()
{
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE18, &unk_227681680);
  v0 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v2 = &v21 - v1;
  v22 = type metadata accessor for KeyCertificate(0);
  v3 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_2276622F0();
  v29 = sub_2276624D0();
  v30[0] = v6;
  v30[1] = v30;
  v30[2] = &v29;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B90F8, &qword_227679D10);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8D38, &qword_227671F00);
  v25 = sub_226F5BF60(&qword_27D7B9108, &qword_27D7B90F8, &qword_227679D10);
  v26 = sub_226F5BF60(&qword_27D7B8D48, &qword_27D7B8D38, &qword_227671F00);
  v7 = sub_2276638E0();

  v8 = *(v7 + 16);
  if (v8)
  {
    v24 = MEMORY[0x277D84F90];
    v21 = v8;
    result = sub_226F20508(0, v8, 0);
    v10 = 0;
    v11 = v24;
    v12 = v7 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
    while (v10 < *(v7 + 16))
    {
      v13 = v0;
      sub_227355EF8(v12 + *(v0 + 72) * v10, v2);
      v14 = &v2[*(v23 + 48)];
      v15 = *v14;
      v16 = v14[1];
      v17 = sub_2276624A0();
      (*(*(v17 - 8) + 16))(v5, v2, v17);
      v18 = &v5[*(v22 + 20)];
      *v18 = v15;
      v18[1] = v16;
      sub_226F5E0B4(v15, v16);
      sub_226E97D1C(v2, &qword_27D7BCE18, &unk_227681680);
      v24 = v11;
      v20 = *(v11 + 16);
      v19 = *(v11 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_226F20508((v19 > 1), v20 + 1, 1);
        v11 = v24;
      }

      ++v10;
      *(v11 + 16) = v20 + 1;
      result = sub_22734A444(v5, v11 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20);
      v0 = v13;
      if (v21 == v10)
      {

        return v11;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

uint64_t sub_227355E58(uint64_t a1)
{
  result = sub_227355EB0(qword_28139AEA8, type metadata accessor for KeyCertificate, &protocol conformance descriptor for KeyCertificate);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_227355EB0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_227355EF8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE18, &unk_227681680);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227355F68@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53D50];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_227355FDC@<X0>(uint64_t *a2@<X8>)
{
  result = sub_227668290();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_227356004(uint64_t a1)
{
  *(a1 + 24) = sub_22735606C(&qword_2813A5598, &unk_227673D00);
  result = sub_22735606C(&qword_2813A5590, MEMORY[0x277D53458]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22735606C(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_2276682A0();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

id sub_2273560B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v34 = MEMORY[0x277D84F90];
  sub_226F20368(0, v1, 0);
  v4 = a1;
  v5 = a1 + 64;
  result = sub_22766CC90();
  v2 = v34;
  v7 = result;
  v8 = 0;
  v33 = *(a1 + 36);
  v28 = a1 + 72;
  v29 = v1;
  v30 = a1 + 64;
  while ((v7 & 0x8000000000000000) == 0 && v7 < 1 << *(v4 + 32))
  {
    v10 = v7 >> 6;
    if ((*(v5 + 8 * (v7 >> 6)) & (1 << v7)) == 0)
    {
      goto LABEL_30;
    }

    if (v33 != *(v4 + 36))
    {
      goto LABEL_31;
    }

    if (*(*(v4 + 48) + v7) > 1u)
    {
      if (*(*(v4 + 48) + v7) == 2)
      {
        v32 = 0xD000000000000012;
        v11 = 0x8000000227692380;
      }

      else
      {
        v32 = 0xD000000000000010;
        v11 = 0x80000002276923A0;
      }
    }

    else
    {
      if (*(*(v4 + 48) + v7))
      {
        v31 = 0xE900000000000065;
        v32 = 0x726F63536E616C70;
        goto LABEL_17;
      }

      v32 = 0x6574614C6E616C70;
      v11 = 0xEB0000000079636ELL;
    }

    v31 = v11;
LABEL_17:
    v12 = *(*(v4 + 56) + 8 * v7);
    v35 = v2;
    v13 = v4;
    v14 = *(v2 + 16);
    v15 = *(v2 + 24);
    v16 = v2;
    result = v12;
    v2 = v16;
    if (v14 >= v15 >> 1)
    {
      v27 = result;
      sub_226F20368((v15 > 1), v14 + 1, 1);
      result = v27;
      v2 = v35;
    }

    *(v2 + 16) = v14 + 1;
    v17 = (v2 + 24 * v14);
    v17[4] = v32;
    v17[5] = v31;
    v17[6] = result;
    v9 = 1 << *(v13 + 32);
    v5 = v30;
    if (v7 >= v9)
    {
      goto LABEL_32;
    }

    v18 = *(v30 + 8 * v10);
    if ((v18 & (1 << v7)) == 0)
    {
      goto LABEL_33;
    }

    v4 = v13;
    if (v33 != *(v13 + 36))
    {
      goto LABEL_34;
    }

    v19 = v18 & (-2 << (v7 & 0x3F));
    if (v19)
    {
      v9 = __clz(__rbit64(v19)) | v7 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v20 = v10 << 6;
      v21 = v10 + 1;
      v22 = (v28 + 8 * v10);
      while (v21 < (v9 + 63) >> 6)
      {
        v24 = *v22++;
        v23 = v24;
        v20 += 64;
        ++v21;
        if (v24)
        {
          v25 = v2;
          result = sub_226EB526C(v7, v33, 0);
          v2 = v25;
          v9 = __clz(__rbit64(v23)) + v20;
          goto LABEL_4;
        }
      }

      v26 = v2;
      result = sub_226EB526C(v7, v33, 0);
      v2 = v26;
    }

LABEL_4:
    ++v8;
    v7 = v9;
    if (v8 == v29)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
LABEL_34:
  __break(1u);
  return result;
}

uint64_t sub_2273563E4()
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

uint64_t sub_2273564C0(uint64_t a1)
{
  sub_22766C100();
}

uint64_t sub_227356588(uint64_t a1)
{
  sub_22766D370();
  sub_22766C100();

  return sub_22766D3F0();
}

unint64_t sub_227356660@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_227356994(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_227356690(unint64_t *a1@<X8>)
{
  v2 = 0xEB0000000079636ELL;
  v3 = 0x6574614C6E616C70;
  v4 = 0x8000000227692380;
  v5 = 0xD000000000000012;
  if (*v1 != 2)
  {
    v5 = 0xD000000000000010;
    v4 = 0x80000002276923A0;
  }

  if (*v1)
  {
    v3 = 0x726F63536E616C70;
    v2 = 0xE900000000000065;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_227356728(uint64_t a1, double a2, double a3)
{
  v3 = sub_22714B464(MEMORY[0x277D84F90]);
  v4 = sub_22766C4E0();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_22736BA54(v4, 0, isUniquelyReferenced_nonNull_native);
  v6 = sub_22766C4E0();
  v7 = swift_isUniquelyReferenced_nonNull_native();
  sub_22736BA54(v6, 1, v7);
  v8 = sub_22766C750();
  v9 = swift_isUniquelyReferenced_nonNull_native();
  v14 = v3;
  sub_22736BA54(v8, 3, v9);
  v10 = sub_2273560B0(v3);

  if (v10[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97E0, &qword_227674C38);
    v11 = sub_22766D010();
  }

  else
  {
    v11 = MEMORY[0x277D84F98];
  }

  v14 = v11;

  sub_22722D490(v12, 1, &v14);

  return v14;
}

uint64_t getEnumTagSinglePayload for CreatePlanAnalyticsEvent(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for CreatePlanAnalyticsEvent(uint64_t result, int a2, int a3)
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

unint64_t sub_227356940()
{
  result = qword_27D7BCE20;
  if (!qword_27D7BCE20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCE20);
  }

  return result;
}

unint64_t sub_227356994(uint64_t a1, uint64_t a2)
{
  v2 = sub_22766D030();

  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

void sub_2273569E0(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_227662750();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v21 - v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = v21 - v13;
  v15 = [a1 identifier];
  if (v15)
  {
    v21[3] = a2;
    v16 = v15;
    v21[1] = sub_22766C000();

    v17 = [a1 dateWatched];
    if (v17)
    {
      v18 = v17;
      sub_227662710();

      (*(v5 + 32))(v14, v10, v4);
      (*(v5 + 16))(v7, v14, v4);
      sub_227666140();

      (*(v5 + 8))(v14, v4);
      return;
    }
  }

  v19 = sub_227664DD0();
  sub_2273572D4(&qword_28139B8D0, MEMORY[0x277D51040], MEMORY[0x277D51048]);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, *MEMORY[0x277D51028], v19);
  swift_willThrow();
}

void *static MarketingVideoJournal.representativeSamples()()
{
  v27 = sub_227662750();
  v0 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v26 = &v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
  v2 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v4 = &v19 - v3;
  v24 = sub_227666170();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766C090();
  v33 = sub_227662630();
  v34[0] = v8;
  v34[1] = v34;
  v34[2] = &v33;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B84E0, &qword_22767C6B0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8CF0, &qword_227671E48);
  v29 = sub_226F5BF60(&qword_27D7B8500, &qword_27D7B84E0, &qword_22767C6B0);
  v30 = sub_226F5BF60(&qword_27D7B8D10, &qword_27D7B8CF0, &qword_227671E48);
  v9 = sub_2276638E0();

  v10 = *(v9 + 16);
  if (v10)
  {
    v23 = v7;
    v28 = MEMORY[0x277D84F90];
    result = sub_226F1F648(0, v10, 0);
    v12 = 0;
    v13 = v28;
    v21 = v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v22 = v5;
    v19 = v5 + 32;
    v20 = (v0 + 16);
    v14 = v26;
    v15 = v23;
    while (v12 < *(v9 + 16))
    {
      v16 = v2;
      sub_2273571A4(v21 + *(v2 + 72) * v12, v4);
      (*v20)(v14, &v4[*(v25 + 48)], v27);

      sub_227666140();
      sub_227357214(v4);
      v28 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        sub_226F1F648((v17 > 1), v18 + 1, 1);
        v13 = v28;
      }

      ++v12;
      *(v13 + 16) = v18 + 1;
      result = (*(v22 + 32))(v13 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v18, v15, v24);
      v2 = v16;
      if (v10 == v12)
      {

        return v13;
      }
    }

    __break(1u);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return result;
}

void sub_227357070(void *a1)
{
  v2 = sub_227662750();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_227666150();
  v6 = sub_22766BFD0();

  [a1 setIdentifier_];

  sub_227666160();
  v7 = sub_2276626A0();
  (*(v3 + 8))(v5, v2);
  [a1 setDateWatched_];
}

uint64_t sub_2273571A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_227357214(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B93B0, &unk_22768C130);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22735727C(uint64_t a1)
{
  result = sub_2273572D4(&qword_2813A56B8, MEMORY[0x277D520D0], &protocol conformance descriptor for MarketingVideoJournal);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_2273572D4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_22735731C()
{
  v2 = v0[17];
  v1 = v0[18];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[13];
  v6 = v0[12];
  (*(v0[10] + 8))(v0[11], v0[9]);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v1, v3);

  v7 = v0[1];

  return v7();
}

uint64_t sub_227357408()
{
  v1 = v0[25];
  v3 = v0[21];
  v2 = v0[22];
  v4 = v0[20];
  (*(v0[18] + 8))(v0[19], v0[17]);
  (*(v3 + 8))(v2, v4);
  sub_226E97D1C(v1, &unk_27D7BB570, &unk_227670FC0);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_22735751C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_2273575AC()
{
  (*(v0[21] + 8))(v0[22], v0[20]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_227357654()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = OBJC_IVAR____TtC15SeymourServices18ScriptBundleLoader__useSystemJetPack;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_22735770C(uint64_t a1)
{
  sub_226F57660();
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t sub_2273577A8(uint64_t a1, uint64_t a2)
{
  v2[175] = a2;
  v2[169] = a1;
  v3 = sub_22766B390();
  v2[181] = v3;
  v2[187] = *(v3 - 8);
  v2[193] = swift_task_alloc();
  v2[199] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE28, &unk_227681918);
  v2[200] = v4;
  v2[201] = *(v4 - 8);
  v2[202] = swift_task_alloc();
  v2[203] = swift_task_alloc();
  v2[204] = swift_task_alloc();
  v2[205] = swift_task_alloc();
  v5 = sub_22766B5F0();
  v2[206] = v5;
  v2[207] = *(v5 - 8);
  v2[208] = swift_task_alloc();
  v2[209] = swift_task_alloc();
  v2[210] = swift_task_alloc();
  v2[211] = swift_task_alloc();
  v2[212] = swift_task_alloc();
  v2[213] = swift_task_alloc();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC880, &unk_227671C60);
  v2[214] = v6;
  v2[215] = *(v6 - 8);
  v2[216] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_227357A04, 0, 0);
}

uint64_t sub_227357A04()
{
  v1 = *(v0 + 1728);
  v2 = *(v0 + 1720);
  v3 = *(v0 + 1712);
  (*(v2 + 16))(v1, *(v0 + 1400) + OBJC_IVAR____TtC15SeymourServices18ScriptBundleLoader__useSystemJetPack, v3);
  sub_227669730();
  (*(v2 + 8))(v1, v3);
  if (*(v0 + 1788))
  {
    sub_22766A730();
    v4 = sub_22766B380();
    v5 = sub_22766C8B0();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_226E8E000, v4, v5, "[ScriptBundleLoader] Default set, using local JetPack from system bundle", v6, 2u);
      MEMORY[0x22AA9A450](v6, -1, -1);
    }

    v7 = *(v0 + 1544);
    v8 = *(v0 + 1496);
    v9 = *(v0 + 1448);

    (*(v8 + 8))(v7, v9);
    v10 = swift_task_alloc();
    *(v0 + 1768) = v10;
    *v10 = v0;
    v10[1] = sub_22735894C;
    v11 = *(v0 + 1664);

    return sub_226E957BC(v11);
  }

  else
  {
    v13 = *(v0 + 1608);

    swift_asyncLet_begin();

    swift_asyncLet_begin();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE30, &qword_227681948);
    *(v0 + 1736) = *(v13 + 72);
    *(v0 + 1784) = *(v13 + 80);
    *(v0 + 1744) = swift_allocObject();
    v14 = *(v0 + 1704);

    return MEMORY[0x282200930](v0 + 16, v14, sub_227357CAC, v0 + 1296);
  }
}

uint64_t sub_227357CAC()
{
  if (v0)
  {

    v1 = sub_227358D74;
  }

  else
  {
    v1 = sub_227357D28;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_227357D28()
{
  (*(*(v0 + 1656) + 16))(*(v0 + 1744) + ((*(v0 + 1784) + 32) & ~*(v0 + 1784)), *(v0 + 1704), *(v0 + 1648));
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1648);
  v3 = (*(v0 + 1784) + 32) & ~*(v0 + 1784);
  v4 = *(*(v0 + 1656) + 56);
  *(v0 + 1752) = v4;
  v4(v1 + v3, 0, 1, v2);
  v5 = *(v0 + 1696);

  return MEMORY[0x282200930](v0 + 656, v5, sub_227357DF4, v0 + 1360);
}

uint64_t sub_227357DF4()
{
  if (v0)
  {

    v1 = sub_227358E10;
  }

  else
  {
    v1 = sub_227357E70;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_227357E70()
{
  v67 = v0;
  (*(*(v0 + 1656) + 16))(*(v0 + 1744) + *(v0 + 1736) + ((*(v0 + 1784) + 32) & ~*(v0 + 1784)), *(v0 + 1696), *(v0 + 1648));
  v1 = *(v0 + 1656);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1624);
  v5 = *(v0 + 1744) + ((*(v0 + 1784) + 32) & ~*(v0 + 1784));
  (*(v0 + 1752))(v5 + *(v0 + 1736), 0, 1, v2);
  sub_226E93170(v5, v3, &qword_27D7BCE28, &unk_227681918);
  sub_226E95D18(v3, v4, &qword_27D7BCE28, &unk_227681918);
  v6 = (v1 + 32);
  v7 = *(v1 + 48);
  v65 = (v1 + 32);
  if (v7(v4, 1, v2) == 1)
  {
    sub_226E97D1C(*(v0 + 1624), &qword_27D7BCE28, &unk_227681918);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = *v6;
    (*v6)(*(v0 + 1688), *(v0 + 1624), *(v0 + 1648));
    v8 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_226EA7754(0, *(v8 + 2) + 1, 1, v8);
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_226EA7754((v10 > 1), v11 + 1, 1, v8);
    }

    v12 = *(v0 + 1688);
    v13 = *(v0 + 1648);
    *(v8 + 2) = v11 + 1;
    v9(&v8[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11], v12, v13);
  }

  v14 = *(v0 + 1648);
  v15 = *(v0 + 1632);
  v16 = *(v0 + 1624);
  sub_226E93170(*(v0 + 1744) + *(v0 + 1736) + ((*(v0 + 1784) + 32) & ~*(v0 + 1784)), v15, &qword_27D7BCE28, &unk_227681918);
  sub_226E95D18(v15, v16, &qword_27D7BCE28, &unk_227681918);
  if (v7(v16, 1, v14) == 1)
  {
    sub_226E97D1C(*(v0 + 1624), &qword_27D7BCE28, &unk_227681918);
  }

  else
  {
    v17 = *v65;
    (*v65)(*(v0 + 1688), *(v0 + 1624), *(v0 + 1648));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_226EA7754(0, *(v8 + 2) + 1, 1, v8);
    }

    v19 = *(v8 + 2);
    v18 = *(v8 + 3);
    if (v19 >= v18 >> 1)
    {
      v8 = sub_226EA7754((v18 > 1), v19 + 1, 1, v8);
    }

    v20 = *(v0 + 1688);
    v21 = *(v0 + 1648);
    *(v8 + 2) = v19 + 1;
    v17(&v8[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19], v20, v21);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v8 + 2))
  {
    (*(*(v0 + 1656) + 16))(*(v0 + 1640), &v8[(*(v1 + 80) + 32) & ~*(v1 + 80)], *(v0 + 1648));
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(v0 + 1752);
  v24 = *(v0 + 1648);
  v25 = *(v0 + 1640);
  v26 = *(v0 + 1616);

  v23(v25, v22, 1, v24);
  sub_226E93170(v25, v26, &qword_27D7BCE28, &unk_227681918);
  if (v7(v26, 1, v24) == 1)
  {
    v27 = *(v0 + 1640);
    sub_226E97D1C(*(v0 + 1616), &qword_27D7BCE28, &unk_227681918);
    sub_226F6649C();
    *(v0 + 1760) = swift_allocError();
    *v28 = 13;
    swift_willThrow();
    sub_226E97D1C(v27, &qword_27D7BCE28, &unk_227681918);
    v29 = sub_227358648;
    v30 = *(v0 + 1696);
    v31 = v0 + 656;
    v32 = v0 + 1408;
  }

  else
  {
    v33 = *(v0 + 1680);
    v34 = *(v0 + 1672);
    v35 = *(v0 + 1656);
    v36 = *(v0 + 1648);
    v64 = *v65;
    (*v65)(v33, *(v0 + 1616), v36);
    sub_22766A730();
    (*(v35 + 16))(v34, v33, v36);
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 1672);
    v41 = *(v0 + 1656);
    v42 = *(v0 + 1648);
    v43 = *(v0 + 1592);
    v44 = *(v0 + 1496);
    v45 = *(v0 + 1448);
    if (v39)
    {
      v46 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v66 = v62;
      *v46 = 136315138;
      v63 = v43;
      *(v0 + 1336) = sub_22766B690();
      *(v0 + 1344) = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v48 = sub_22766CB80();
      v61 = v38;
      v50 = v49;
      (*(v41 + 8))(v40, v42);

      v51 = sub_226E97AE8(v48, v50, &v66);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_226E8E000, v37, v61, "[ScriptBundleLoader] Selected JetPack with version: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x22AA9A450](v62, -1, -1);
      MEMORY[0x22AA9A450](v46, -1, -1);

      (*(v44 + 8))(v63, v45);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
      (*(v44 + 8))(v43, v45);
    }

    v52 = [objc_opt_self() standardUserDefaults];
    sub_22766B690();
    if (v53)
    {
      v54 = sub_22766BFD0();
    }

    else
    {
      v54 = 0;
    }

    v55 = *(v0 + 1680);
    v56 = *(v0 + 1648);
    v57 = *(v0 + 1640);
    v58 = *(v0 + 1352);
    v59 = sub_22766BFD0();
    [v52 setObject:v54 forKey:v59];

    swift_unknownObjectRelease();
    sub_226E97D1C(v57, &qword_27D7BCE28, &unk_227681918);
    v64(v58, v55, v56);
    v29 = sub_2273587CC;
    v30 = *(v0 + 1696);
    v31 = v0 + 656;
    v32 = v0 + 1504;
  }

  return MEMORY[0x282200920](v31, v30, v29, v32);
}

uint64_t sub_2273586A0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227358824()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22735894C()
{
  *(*v1 + 1776) = v0;

  if (v0)
  {
    v2 = sub_227358C54;
  }

  else
  {
    v2 = sub_227358A60;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_227358A60()
{
  v1 = [objc_opt_self() standardUserDefaults];
  sub_22766B690();
  if (v2)
  {
    v3 = sub_22766BFD0();
  }

  else
  {
    v3 = 0;
  }

  v4 = v0[208];
  v5 = v0[207];
  v6 = v0[206];
  v7 = v0[169];
  v8 = sub_22766BFD0();
  [v1 setObject:v3 forKey:v8];

  swift_unknownObjectRelease();
  (*(v5 + 32))(v7, v4, v6);

  v9 = v0[1];

  return v9();
}

uint64_t sub_227358C54()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_227358D74()
{
  v1 = *(v0 + 1744);
  v2 = *(v0 + 1648);
  v3 = (*(v0 + 1784) + 32) & ~*(v0 + 1784);
  v4 = *(*(v0 + 1656) + 56);
  *(v0 + 1752) = v4;
  v4(v1 + v3, 1, 1, v2);
  v5 = *(v0 + 1696);

  return MEMORY[0x282200930](v0 + 656, v5, sub_227357DF4, v0 + 1360);
}

uint64_t sub_227358E10()
{
  v67 = v0;
  v1 = *(v0 + 1656);
  v2 = *(v0 + 1648);
  v3 = *(v0 + 1632);
  v4 = *(v0 + 1624);
  v5 = *(v0 + 1744) + ((*(v0 + 1784) + 32) & ~*(v0 + 1784));
  (*(v0 + 1752))(v5 + *(v0 + 1736), 1, 1, v2);
  sub_226E93170(v5, v3, &qword_27D7BCE28, &unk_227681918);
  sub_226E95D18(v3, v4, &qword_27D7BCE28, &unk_227681918);
  v6 = (v1 + 32);
  v7 = *(v1 + 48);
  v65 = (v1 + 32);
  if (v7(v4, 1, v2) == 1)
  {
    sub_226E97D1C(*(v0 + 1624), &qword_27D7BCE28, &unk_227681918);
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v9 = *v6;
    (*v6)(*(v0 + 1688), *(v0 + 1624), *(v0 + 1648));
    v8 = MEMORY[0x277D84F90];
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_226EA7754(0, *(v8 + 2) + 1, 1, v8);
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = sub_226EA7754((v10 > 1), v11 + 1, 1, v8);
    }

    v12 = *(v0 + 1688);
    v13 = *(v0 + 1648);
    *(v8 + 2) = v11 + 1;
    v9(&v8[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v11], v12, v13);
  }

  v14 = *(v0 + 1648);
  v15 = *(v0 + 1632);
  v16 = *(v0 + 1624);
  sub_226E93170(*(v0 + 1744) + *(v0 + 1736) + ((*(v0 + 1784) + 32) & ~*(v0 + 1784)), v15, &qword_27D7BCE28, &unk_227681918);
  sub_226E95D18(v15, v16, &qword_27D7BCE28, &unk_227681918);
  if (v7(v16, 1, v14) == 1)
  {
    sub_226E97D1C(*(v0 + 1624), &qword_27D7BCE28, &unk_227681918);
  }

  else
  {
    v17 = *v65;
    (*v65)(*(v0 + 1688), *(v0 + 1624), *(v0 + 1648));
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_226EA7754(0, *(v8 + 2) + 1, 1, v8);
    }

    v19 = *(v8 + 2);
    v18 = *(v8 + 3);
    if (v19 >= v18 >> 1)
    {
      v8 = sub_226EA7754((v18 > 1), v19 + 1, 1, v8);
    }

    v20 = *(v0 + 1688);
    v21 = *(v0 + 1648);
    *(v8 + 2) = v19 + 1;
    v17(&v8[((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v19], v20, v21);
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  if (*(v8 + 2))
  {
    (*(*(v0 + 1656) + 16))(*(v0 + 1640), &v8[(*(v1 + 80) + 32) & ~*(v1 + 80)], *(v0 + 1648));
    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v23 = *(v0 + 1752);
  v24 = *(v0 + 1648);
  v25 = *(v0 + 1640);
  v26 = *(v0 + 1616);

  v23(v25, v22, 1, v24);
  sub_226E93170(v25, v26, &qword_27D7BCE28, &unk_227681918);
  if (v7(v26, 1, v24) == 1)
  {
    v27 = *(v0 + 1640);
    sub_226E97D1C(*(v0 + 1616), &qword_27D7BCE28, &unk_227681918);
    sub_226F6649C();
    *(v0 + 1760) = swift_allocError();
    *v28 = 13;
    swift_willThrow();
    sub_226E97D1C(v27, &qword_27D7BCE28, &unk_227681918);
    v29 = sub_227358648;
    v30 = *(v0 + 1696);
    v31 = v0 + 656;
    v32 = v0 + 1408;
  }

  else
  {
    v33 = *(v0 + 1680);
    v34 = *(v0 + 1672);
    v35 = *(v0 + 1656);
    v36 = *(v0 + 1648);
    v64 = *v65;
    (*v65)(v33, *(v0 + 1616), v36);
    sub_22766A730();
    (*(v35 + 16))(v34, v33, v36);
    v37 = sub_22766B380();
    v38 = sub_22766C8B0();
    v39 = os_log_type_enabled(v37, v38);
    v40 = *(v0 + 1672);
    v41 = *(v0 + 1656);
    v42 = *(v0 + 1648);
    v43 = *(v0 + 1592);
    v44 = *(v0 + 1496);
    v45 = *(v0 + 1448);
    if (v39)
    {
      v46 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      v66 = v62;
      *v46 = 136315138;
      v63 = v43;
      *(v0 + 1336) = sub_22766B690();
      *(v0 + 1344) = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
      v48 = sub_22766CB80();
      v61 = v38;
      v50 = v49;
      (*(v41 + 8))(v40, v42);

      v51 = sub_226E97AE8(v48, v50, &v66);

      *(v46 + 4) = v51;
      _os_log_impl(&dword_226E8E000, v37, v61, "[ScriptBundleLoader] Selected JetPack with version: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v62);
      MEMORY[0x22AA9A450](v62, -1, -1);
      MEMORY[0x22AA9A450](v46, -1, -1);

      (*(v44 + 8))(v63, v45);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
      (*(v44 + 8))(v43, v45);
    }

    v52 = [objc_opt_self() standardUserDefaults];
    sub_22766B690();
    if (v53)
    {
      v54 = sub_22766BFD0();
    }

    else
    {
      v54 = 0;
    }

    v55 = *(v0 + 1680);
    v56 = *(v0 + 1648);
    v57 = *(v0 + 1640);
    v58 = *(v0 + 1352);
    v59 = sub_22766BFD0();
    [v52 setObject:v54 forKey:v59];

    swift_unknownObjectRelease();
    sub_226E97D1C(v57, &qword_27D7BCE28, &unk_227681918);
    v64(v58, v55, v56);
    v29 = sub_2273587CC;
    v30 = *(v0 + 1696);
    v31 = v0 + 656;
    v32 = v0 + 1504;
  }

  return MEMORY[0x282200920](v31, v30, v29, v32);
}

uint64_t sub_2273595B0(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_226E950FC(a1);
}

uint64_t sub_22735964C(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E92F34;

  return sub_226E957BC(a1);
}

uint64_t sub_2273596E8(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_2273577A8(a1, v1);
}

uint64_t sub_227359798(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E93028;

  return sub_2273595B0(a1);
}

uint64_t sub_227359834(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_226E92F34;

  return sub_22735964C(a1);
}

uint64_t type metadata accessor for EngagementBadgeAdded(uint64_t a1)
{
  result = qword_2813A0EF0;
  if (!qword_2813A0EF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_227359944@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_22766D030();

  *a2 = v3 != 0;
  return result;
}

unint64_t sub_227359998()
{
  v0 = sub_22714B580(MEMORY[0x277D84F90]);
  sub_227664EC0();
  sub_22714F81C();
  sub_22766D270();
  v1 = sub_22766C750();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = v0;
  sub_22736BC18(v1, isUniquelyReferenced_nonNull_native);
  v3 = sub_22722CFA0(v0);

  if (v3[2])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B97E0, &qword_227674C38);
    v4 = sub_22766D010();
  }

  else
  {
    v4 = MEMORY[0x277D84F98];
  }

  v7 = v4;

  sub_22722D490(v5, 1, &v7);

  return v7;
}

uint64_t type metadata accessor for ModifyPlanFailureAnalyticsEvent(uint64_t a1)
{
  result = qword_27D7BCE48;
  if (!qword_27D7BCE48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_227359B58()
{
  result = qword_27D7BCE58;
  if (!qword_27D7BCE58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCE58);
  }

  return result;
}

BOOL sub_227359BD8(uint64_t a1)
{
  v1 = sub_2276672A0();
  v2 = sub_227666A50();
  v4 = sub_22718C70C(v2, v3, v1);

  return (v4 & 1) == 0;
}

void sub_227359C44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v25 = v6 + 56;

      v11 = 0;
      v24 = v4;
      v22 = v10;
      while (v9)
      {
        v12 = v9;
LABEL_19:
        v9 = (v12 - 1) & v12;
        if (*(v6 + 16))
        {
          v23 = (v12 - 1) & v12;
          v14 = *(v4 + 48) + 24 * (__clz(__rbit64(v12)) | (v11 << 6));
          v15 = *v14;
          v16 = *(v14 + 8);
          v17 = *(v14 + 16);
          sub_22766D370();
          sub_226F491DC(v15, v16, v17);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEF50, &qword_227671540);
          sub_226F4364C();
          sub_227663B10();
          v18 = sub_22766D3F0();
          v19 = -1 << *(v6 + 32);
          v20 = v18 & ~v19;
          if ((*(v25 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            sub_226F50DC8();
            sub_226F50E1C();
            while ((sub_227663B20() & 1) == 0)
            {
              v20 = (v20 + 1) & v21;
              if (((*(v25 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
              {
                goto LABEL_24;
              }
            }

            sub_226F518C0(v15, v16, v17);
            return;
          }

LABEL_24:
          sub_226F518C0(v15, v16, v17);
          v9 = v23;
          v4 = v24;
          v10 = v22;
        }
      }

      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          return;
        }

        v12 = *(v5 + 8 * v13);
        ++v11;
        if (v12)
        {
          v11 = v13;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

void sub_227359ED8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      v5 = v4 + 56;
      if (v2 >= v3)
      {
        v6 = a2;
      }

      else
      {
        v6 = a1;
      }

      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v11 = v6 + 56;

      v12 = 0;
      v24 = v4;
      while (v9)
      {
        v13 = v9;
LABEL_19:
        v9 = (v13 - 1) & v13;
        if (*(v6 + 16))
        {
          v15 = (*(v4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v13)))));
          v17 = *v15;
          v16 = v15[1];
          sub_22766D370();

          sub_22766C100();
          v18 = sub_22766D3F0();
          v19 = -1 << *(v6 + 32);
          v20 = v18 & ~v19;
          if ((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
          {
            v21 = ~v19;
            while (1)
            {
              v22 = (*(v6 + 48) + 16 * v20);
              v23 = *v22 == v17 && v22[1] == v16;
              if (v23 || (sub_22766D190() & 1) != 0)
              {
                break;
              }

              v20 = (v20 + 1) & v21;
              if (((*(v11 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
              {
                goto LABEL_28;
              }
            }

            return;
          }

LABEL_28:

          v4 = v24;
        }
      }

      while (1)
      {
        v14 = v12 + 1;
        if (__OFADD__(v12, 1))
        {
          break;
        }

        if (v14 >= v10)
        {

          return;
        }

        v13 = *(v5 + 8 * v14);
        ++v12;
        if (v13)
        {
          v12 = v14;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

void *sub_22735A148(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a1;
  v48 = *MEMORY[0x277D85DE8];
  v7 = sub_227664530();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a3 + 32);
  v12 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v36 = v12;
    v42 = v11;
    v43 = v9;
    v47 = v4;
    v38 = &v35;
    MEMORY[0x28223BE20](v9);
    v37 = &v35 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v13);
    v14 = 0;
    v45 = a3;
    v16 = *(a3 + 56);
    a3 += 56;
    v15 = v16;
    v17 = 1 << *(a3 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v11 = ((v17 + 63) >> 6);
    v39 = 0;
    v40 = v8 + 16;
    v41 = (v8 + 8);
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v46 = (v19 - 1) & v19;
LABEL_12:
      v12 = v20 | (v14 << 6);
      v23 = *(v45 + 48) + *(v8 + 72) * v12;
      v4 = v8;
      v24 = *(v8 + 16);
      v25 = v42;
      v26 = v43;
      v24(v42, v23, v43);
      v27 = v47;
      v28 = v44(v25);
      v47 = v27;
      if (v27)
      {
        (*v41)(v25, v26);

        return swift_willThrow();
      }

      v29 = v28;
      v9 = (*v41)(v25, v26);
      v8 = v4;
      v19 = v46;
      if (v29)
      {
        *&v37[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
          return sub_22726A210(v37, v36, v39, v45);
        }
      }
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        return sub_22726A210(v37, v36, v39, v45);
      }

      v22 = *(a3 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v32 = v9;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v32;
  }

  v33 = swift_slowAlloc();
  v34 = sub_226FA3C7C(v33, v12, a3, v44, a2);

  result = MEMORY[0x22AA9A450](v33, -1, -1);
  if (!v4)
  {
    return v34;
  }

  return result;
}

void *sub_22735A4E0(uint64_t (*a1)(uint64_t (*)(char *, unint64_t, uint64_t, uint64_t)), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(char *, unint64_t, uint64_t, uint64_t), uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v47 = a1;
  v51 = *MEMORY[0x277D85DE8];
  v10 = a4(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v14 = (&v38 - v13);
  LOBYTE(v13) = *(a3 + 32);
  v39 = ((1 << v13) + 63) >> 6;
  if ((v13 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v45 = v14;
    v46 = v12;
    v38 = a5;
    v41 = &v38;
    MEMORY[0x28223BE20](v12);
    v40 = &v38 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v40, v15);
    a6 = 0;
    v48 = a3;
    v17 = *(a3 + 56);
    a3 += 56;
    v16 = v17;
    v18 = 1 << *(a3 - 24);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & v16;
    v21 = ((v18 + 63) >> 6);
    v42 = 0;
    v43 = v11 + 16;
    v44 = (v11 + 8);
    while (v20)
    {
      v22 = __clz(__rbit64(v20));
      v49 = (v20 - 1) & v20;
LABEL_12:
      v25 = v22 | (a6 << 6);
      v26 = *(v48 + 48) + *(v11 + 9) * v25;
      v14 = v11;
      v27 = *(v11 + 2);
      a5 = v45;
      v28 = v46;
      v27(v45, v26, v46);
      v29 = v50;
      v30 = v47(a5);
      v50 = v29;
      if (v29)
      {
        (*v44)(a5, v28);

        return swift_willThrow();
      }

      v31 = v30;
      v12 = (*v44)(a5, v28);
      v11 = v14;
      v20 = v49;
      if (v31)
      {
        *&v40[(v25 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v25;
        if (__OFADD__(v42++, 1))
        {
          __break(1u);
          return v38(v40, v39, v42, v48);
        }
      }
    }

    v23 = a6;
    while (1)
    {
      a6 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (a6 >= v21)
      {
        return v38(v40, v39, v42, v48);
      }

      v24 = *(a3 + 8 * a6);
      v23 = (v23 + 1);
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v49 = (v24 - 1) & v24;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v34 = v12;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v12 = v34;
  }

  v35 = swift_slowAlloc();
  v36 = v50;
  v37 = sub_22735AC98(v35, v39, a3, v47, a2, a6);

  result = MEMORY[0x22AA9A450](v35, -1, -1);
  if (!v36)
  {
    return v37;
  }

  return result;
}

void *sub_22735A914(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v32 = a1;
  v34[2] = *MEMORY[0x277D85DE8];
  v6 = *(a3 + 32);
  v7 = ((1 << v6) + 63) >> 6;
  if ((v6 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v28 = v7;
    v33 = v3;
    v30 = &v27;
    MEMORY[0x28223BE20](a1);
    v29 = &v27 - ((v8 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v29, v8);
    v31 = 0;
    v9 = 0;
    v7 = v4 + 56;
    v10 = 1 << *(v4 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(v4 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_12:
      v17 = v14 | (v9 << 6);
      v18 = v4;
      v19 = (*(v4 + 48) + 16 * v17);
      v20 = v19[1];
      v34[0] = *v19;
      v34[1] = v20;

      v3 = v33;
      v21 = v32(v34);
      v33 = v3;
      if (v3)
      {

        return swift_willThrow();
      }

      v22 = v21;

      v4 = v18;
      if (v22)
      {
        *&v29[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
          return sub_22726999C(v29, v28, v31, v4);
        }
      }
    }

    v15 = v9;
    while (1)
    {
      v9 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        return sub_22726999C(v29, v28, v31, v4);
      }

      v16 = *(v7 + 8 * v9);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v25 = swift_slowAlloc();
  v26 = sub_22735AC98(v25, v7, v4, v32, a2, sub_2272C563C);

  result = MEMORY[0x22AA9A450](v25, -1, -1);
  if (!v3)
  {
    return v26;
  }

  return result;
}

void *sub_22735AC98(void *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void *, uint64_t, uint64_t, uint64_t, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v8 = result;
      v9 = a2;
      v10 = a5;
      v11 = a4;
      bzero(result, 8 * a2);
      result = v8;
      a2 = v9;
      a4 = v11;
      a5 = v10;
    }

    v12 = a6(result, a2, a3, a4, a5);

    return v12;
  }

  return result;
}

void *sub_22735AD38(uint64_t a1, uint64_t a2)
{
  v4 = sub_227667370();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v27 - v13;
  v15 = *(sub_2276672A0() + 16);

  if (v15)
  {
    v29 = v8;
    sub_22766A630();
    (*(v5 + 16))(v7, a2, v4);
    v16 = sub_22766B380();
    v17 = sub_22766C8B0();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v28 = a1;
      v19 = v18;
      *v18 = 134217984;
      v20 = *(sub_2276672A0() + 16);

      (*(v5 + 8))(v7, v4);
      *(v19 + 1) = v20;
      _os_log_impl(&dword_226E8E000, v16, v17, "Hard filtering %ld workouts", v19, 0xCu);
      v21 = v19;
      a1 = v28;
      MEMORY[0x22AA9A450](v21, -1, -1);
    }

    else
    {
      (*(v5 + 8))(v7, v4);
    }

    v25 = (*(v9 + 8))(v14, v29);
    MEMORY[0x28223BE20](v25);
    *(&v27 - 2) = a2;

    return sub_22735A4E0(sub_22735BC98, (&v27 - 4), a1, MEMORY[0x277D52828], sub_22726A560, sub_2272C557C);
  }

  else
  {
    sub_22766A630();
    v22 = sub_22766B380();
    v23 = sub_22766C8B0();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_226E8E000, v22, v23, "No workouts to hard filter", v24, 2u);
      MEMORY[0x22AA9A450](v24, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }

  return a1;
}

double sub_22735B0EC(uint64_t a1, uint64_t a2, char a3)
{
  v4 = sub_2276681F0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_227667300();
  v9 = sub_227666B00();
  v10 = sub_226F3E6A8(v9);

  if (*(v8 + 16) && *(v10 + 16))
  {
    sub_227359ED8(v8, v10);
    v12 = v11;

    if (v12)
    {
      v13 = 0.0;
    }

    else
    {
      v13 = 1.0;
    }
  }

  else
  {

    v13 = 0.0;
  }

  v14 = sub_2276672E0();
  v15 = sub_227666AE0();
  v16 = sub_226F3E6A8(v15);

  if (*(v14 + 16) && *(v16 + 16))
  {
    sub_227359ED8(v14, v16);
    v18 = v17;

    v19 = 0.0;
    if (v18)
    {
      v20 = 0.0;
    }

    else
    {
      v20 = 1.0;
    }

    if (a3)
    {
      goto LABEL_21;
    }

    goto LABEL_15;
  }

  v20 = 0.0;
  v19 = 0.0;
  if ((a3 & 1) == 0)
  {
LABEL_15:
    v21 = sub_227667290();
    v22 = sub_227666AA0();
    v23 = sub_226F3E6A8(v22);

    if (*(v21 + 16) && *(v23 + 16))
    {
      sub_227359ED8(v21, v23);
      v25 = v24;

      if (v25)
      {
        v19 = 0.0;
      }

      else
      {
        v19 = 1.0;
      }
    }

    else
    {
    }
  }

LABEL_21:
  v26 = sub_227667270();
  v27 = sub_227666B20();
  if (*(v26 + 16) && *(v27 + 16))
  {
    sub_227359C44(v26, v27);
    v29 = v28;

    if (v29)
    {
      v30 = 0.0;
    }

    else
    {
      v30 = 1.0;
    }
  }

  else
  {

    v30 = 0.0;
  }

  v31 = sub_2276672B0();
  v32 = sub_227666A50();
  v34 = sub_22718C70C(v32, v33, v31);

  if (v34)
  {
    v35 = 1.0;
  }

  else
  {
    v35 = 0.0;
  }

  sub_227667240();
  sub_2276680F0();
  v37 = v36;
  v38 = *(v5 + 8);
  v38(v7, v4);
  v39 = v13 * v37;
  sub_227667240();
  sub_2276680C0();
  v41 = v40;
  v38(v7, v4);
  v42 = v20 * v41;
  sub_227667240();
  sub_227668050();
  v44 = v43;
  v38(v7, v4);
  v45 = v19 * v44;
  sub_227667240();
  sub_227668010();
  v47 = v46;
  v38(v7, v4);
  v48 = v30 * v47;
  sub_227667240();
  sub_227667E60();
  v50 = v49;
  v38(v7, v4);
  return v39 + 0.0 + v42 + v45 + v48 + v35 * v50;
}

void sub_22735B514(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_22766B390();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 != 45)
  {
    return;
  }

  v13 = 0;
  v14 = a4 + 64;
  v15 = 1 << *(a4 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a4 + 64);
  v18 = (v15 + 63) >> 6;
  if (!v17)
  {
LABEL_6:
    while (1)
    {
      v19 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v19 >= v18)
      {
        goto LABEL_16;
      }

      v17 = *(v14 + 8 * v19);
      ++v13;
      if (v17)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
    goto LABEL_34;
  }

LABEL_5:
  v19 = v13;
LABEL_9:
  v20 = __clz(__rbit64(v17));
  v17 &= v17 - 1;
  v21 = *(*(a4 + 56) + ((v19 << 9) | (8 * v20)));
  v22 = *(v21 + 16);
  v23 = (v21 + 32);
  do
  {
    if (!v22)
    {
      v13 = v19;
      if (!v17)
      {
        goto LABEL_6;
      }

      goto LABEL_5;
    }

    v24 = *v23++;
    --v22;
  }

  while (v24 != 5);
  if (a2 <= 2)
  {
LABEL_16:
    v25 = 0;
    v26 = 1 << *(a4 + 32);
    v27 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    v28 = v27 & *(a4 + 64);
    v29 = (v26 + 63) >> 6;
    if (v28)
    {
LABEL_19:
      v30 = v25;
LABEL_23:
      v31 = __clz(__rbit64(v28));
      v28 &= v28 - 1;
      v32 = *(*(a4 + 56) + ((v30 << 9) | (8 * v31)));
      v33 = *(v32 + 16);
      v34 = (v32 + 32);
      while (v33)
      {
        v35 = *v34++;
        --v33;
        if (v35 == 45)
        {
          v25 = v30;
          if (!v28)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }
      }

LABEL_29:
      v36 = v10;
      sub_22766A630();
      v37 = sub_22766B380();
      v38 = sub_22766C8B0();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_226E8E000, v37, v38, "Adjusting total daily duration from 45 -> 40", v39, 2u);
        MEMORY[0x22AA9A450](v39, -1, -1);
      }

      (*(v9 + 8))(v12, v36);
      return;
    }

LABEL_20:
    while (1)
    {
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v30 >= v29)
      {
        if (a3 >= a2)
        {
          return;
        }

        goto LABEL_29;
      }

      v28 = *(v14 + 8 * v30);
      ++v25;
      if (v28)
      {
        goto LABEL_23;
      }
    }

LABEL_34:
    __break(1u);
  }
}

void sub_22735B7D0(void *a1, double a2)
{
  v4 = sub_22766B390();
  v34 = *(v4 - 8);
  v35 = v4;
  MEMORY[0x28223BE20](v4);
  v33 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_227664010();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32[1] = a1;
  v36 = a1;
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D7BC9C0, &unk_227676780);
  sub_22735BBDC();
  v10 = sub_22766C220();

  v11 = *(v10 + 16);
  if (!v11)
  {
LABEL_11:

    v22 = v33;
    sub_22766A630();

    v23 = sub_22766B380();
    v24 = sub_22766C890();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v36 = v26;
      *v25 = 134218242;
      *(v25 + 4) = a2;
      *(v25 + 12) = 2080;
      sub_22735BC40();
      v27 = sub_22766C610();
      v29 = sub_226E97AE8(v27, v28, &v36);

      *(v25 + 14) = v29;
      _os_log_impl(&dword_226E8E000, v23, v24, "    Unable to query bucketed duration for duration=%f outside     filterDurations=%s", v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v26);
      MEMORY[0x22AA9A450](v26, -1, -1);
      MEMORY[0x22AA9A450](v25, -1, -1);
    }

    (*(v34 + 8))(v22, v35);
    return;
  }

  v12 = 0;
  v13 = v10 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
  v14 = (v7 + 8);
  while (1)
  {
    if (v12 >= *(v10 + 16))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    (*(v7 + 16))(v9, v13 + *(v7 + 72) * v12, v6);
    v15 = sub_227664000();
    sub_227663FE0();
    v17 = v15 - v16;
    v18 = sub_227664000();
    sub_227663FF0();
    v20 = v18 + v19;
    if (v17 > v20)
    {
      goto LABEL_19;
    }

    if (v17 <= a2 && v20 >= a2)
    {
      break;
    }

    ++v12;
    (*v14)(v9, v6);
    if (v11 == v12)
    {
      goto LABEL_11;
    }
  }

  v30 = sub_227664000();
  (*v14)(v9, v6);
  v31 = v30 / 60.0;
  if (COERCE__INT64(fabs(v30 / 60.0)) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v31 < 9.22337204e18)
  {
    return;
  }

LABEL_22:
  __break(1u);
}

unint64_t sub_22735BBDC()
{
  result = qword_27D7B9E50;
  if (!qword_27D7B9E50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&unk_27D7BC9C0, &unk_227676780);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7B9E50);
  }

  return result;
}

unint64_t sub_22735BC40()
{
  result = qword_28139BA00;
  if (!qword_28139BA00)
  {
    sub_227664010();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_28139BA00);
  }

  return result;
}

unint64_t sub_22735BD88()
{
  result = qword_27D7BCE60;
  if (!qword_27D7BCE60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCE60);
  }

  return result;
}

unint64_t sub_22735BDDC(uint64_t a1)
{
  *(a1 + 8) = sub_22735BE0C();
  result = sub_22735BE60();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_22735BE0C()
{
  result = qword_27D7BCE68;
  if (!qword_27D7BCE68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCE68);
  }

  return result;
}

unint64_t sub_22735BE60()
{
  result = qword_27D7BCE70;
  if (!qword_27D7BCE70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCE70);
  }

  return result;
}

unint64_t sub_22735BEB8()
{
  result = qword_27D7BCE78;
  if (!qword_27D7BCE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7BCE78);
  }

  return result;
}

uint64_t sub_22735BF38@<X0>(uint64_t a1@<X8>)
{
  v84[0] = a1;
  v107 = sub_227667400();
  v1 = *(v107 - 8);
  MEMORY[0x28223BE20](v107);
  v3 = v84 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_227662F10();
  v4 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v6 = v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_227662B60();
  v7 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v103 = v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_227665440();
  v9 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B8540, &qword_22767F770);
  MEMORY[0x28223BE20](v95);
  v94 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v101 = v84 - v13;
  v14 = sub_227665BD0();
  v15 = v14 + 64;
  v16 = 1 << *(v14 + 32);
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & *(v14 + 64);
  v98 = (v16 + 63) >> 6;
  v93 = v9 + 16;
  v92 = v9 + 32;
  v96 = v9;
  v100 = v9 + 8;
  v114 = v1 + 16;
  v116 = v1;
  v109 = (v1 + 8);
  v110 = v4;
  v108 = v4 + 32;
  v19 = v18;
  v84[1] = v7 + 16;
  v85 = v7;
  v86 = (v7 + 8);
  v97 = v14;

  v20 = 0;
  v21 = MEMORY[0x277D84F98];
  v88 = v15;
  v105 = v3;
  v106 = v6;
  while (v19)
  {
    v91 = v21;
    v22 = v20;
LABEL_11:
    v99 = v19;
    v89 = v22;
    v23 = __clz(__rbit64(v19)) | (v22 << 6);
    v24 = v97;
    v25 = v96;
    v26 = v101;
    (*(v96 + 16))(v101, *(v97 + 48) + *(v96 + 72) * v23, v104);
    v27 = v95;
    *(v26 + *(v95 + 48)) = *(*(v24 + 56) + 8 * v23);
    v28 = v94;
    sub_226E93170(v26, v94, &qword_27D7B8540, &qword_22767F770);

    v29 = v104;
    (*(v25 + 32))(v102, v28, v104);
    sub_226E93170(v26, v28, &qword_27D7B8540, &qword_22767F770);
    v30 = *(v28 + *(v27 + 48));
    v90 = *(v25 + 8);
    v90(v28, v29);
    sub_227665400();
    sub_227665410();
    sub_227665420();
    sub_227665430();
    v31 = v30;
    sub_227662B40();
    v32 = *(v30 + 16);
    if (v32)
    {
      v125 = MEMORY[0x277D84F90];
      sub_226F203E8(0, v32, 0);
      v33 = 0;
      v34 = v125;
      v115 = v31 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
      v36 = v106;
      v35 = v107;
      v112 = v32;
      v113 = v31;
      while (v33 < *(v31 + 16))
      {
        v37 = *(v116 + 72);
        v118 = v33;
        (*(v116 + 16))(v3, v115 + v37 * v33, v35);
        v38 = sub_2276673C0();
        v39 = *(v38 + 16);
        if (v39)
        {
          v117 = v34;
          v124 = MEMORY[0x277D84F90];
          sub_226F20408(0, v39, 0);
          v40 = v124;
          v41 = v38 + 56;
          v42 = sub_22766CC90();
          v43 = 0;
          v119 = v38 + 64;
          v120 = v39;
          v121 = v38 + 56;
          while ((v42 & 0x8000000000000000) == 0 && v42 < 1 << *(v38 + 32))
          {
            v45 = v42 >> 6;
            if ((*(v41 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
            {
              goto LABEL_51;
            }

            v46 = *(v38 + 36);
            v122 = v43;
            v123 = v46;
            v47 = *(v38 + 48) + 24 * v42;
            v49 = *v47;
            v48 = *(v47 + 8);
            v50 = *(v47 + 16);
            sub_226EE2880(*v47, v48, v50);
            v51 = v40;
            v124 = v40;
            v52 = v38;
            v54 = *(v51 + 16);
            v53 = *(v51 + 24);
            if (v54 >= v53 >> 1)
            {
              sub_226F20408((v53 > 1), v54 + 1, 1);
              v51 = v124;
            }

            *(v51 + 16) = v54 + 1;
            v55 = v51 + 24 * v54;
            *(v55 + 32) = v49;
            *(v55 + 40) = v48;
            *(v55 + 48) = v50;
            v44 = 1 << *(v52 + 32);
            if (v42 >= v44)
            {
              goto LABEL_52;
            }

            v41 = v121;
            v56 = *(v121 + 8 * v45);
            if ((v56 & (1 << v42)) == 0)
            {
              goto LABEL_53;
            }

            v38 = v52;
            if (v123 != *(v52 + 36))
            {
              goto LABEL_54;
            }

            v40 = v51;
            v57 = v56 & (-2 << (v42 & 0x3F));
            if (v57)
            {
              v44 = __clz(__rbit64(v57)) | v42 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v58 = v45 << 6;
              v59 = v45 + 1;
              v60 = (v119 + 8 * v45);
              while (v59 < (v44 + 63) >> 6)
              {
                v62 = *v60++;
                v61 = v62;
                v58 += 64;
                ++v59;
                if (v62)
                {
                  sub_226EB526C(v42, v123, 0);
                  v44 = __clz(__rbit64(v61)) + v58;
                  goto LABEL_17;
                }
              }

              sub_226EB526C(v42, v123, 0);
            }

LABEL_17:
            v43 = v122 + 1;
            v42 = v44;
            if (v122 + 1 == v120)
            {

              v36 = v106;
              v3 = v105;
              v34 = v117;
              v63 = v40;
              v35 = v107;
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          break;
        }

        v63 = MEMORY[0x277D84F90];
LABEL_34:
        sub_2276673F0();
        sub_226F46500(v63);

        sub_2276673E0();
        sub_227662EF0();
        (*v109)(v3, v35);
        v125 = v34;
        v65 = v34[2];
        v64 = v34[3];
        if (v65 >= v64 >> 1)
        {
          sub_226F203E8((v64 > 1), v65 + 1, 1);
          v34 = v125;
        }

        v33 = v118 + 1;
        v34[2] = v65 + 1;
        (*(v110 + 32))(v34 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v65, v36, v111);
        v31 = v113;
        if (v33 == v112)
        {

          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v34 = MEMORY[0x277D84F90];
LABEL_39:
    v66 = v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125 = v66;
    v68 = sub_226F3A7D0(v103);
    v70 = v66[2];
    v71 = (v69 & 1) == 0;
    v72 = __OFADD__(v70, v71);
    v73 = v70 + v71;
    if (v72)
    {
      goto LABEL_57;
    }

    v74 = v69;
    if (v66[3] >= v73)
    {
      v15 = v88;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v82 = v68;
        sub_226FF4514();
        v15 = v88;
        v68 = v82;
      }
    }

    else
    {
      sub_226FEBD84(v73, isUniquelyReferenced_nonNull_native);
      v68 = sub_226F3A7D0(v103);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_59;
      }

      v15 = v88;
    }

    v19 = (v99 - 1) & v99;
    v21 = v125;
    if (v74)
    {
      *(v125[7] + 8 * v68) = v34;

      (*v86)(v103, v87);
      v90(v102, v104);
      sub_226E97D1C(v101, &qword_27D7B8540, &qword_22767F770);
      v20 = v89;
    }

    else
    {
      v99 &= v99 - 1;
      v125[(v68 >> 6) + 8] |= 1 << v68;
      v76 = v85;
      v77 = v68;
      v78 = v103;
      v79 = v87;
      (*(v85 + 16))(v21[6] + *(v85 + 72) * v68, v103, v87);
      *(v21[7] + 8 * v77) = v34;
      (*(v76 + 8))(v78, v79);
      v90(v102, v104);
      sub_226E97D1C(v101, &qword_27D7B8540, &qword_22767F770);
      v80 = v21[2];
      v72 = __OFADD__(v80, 1);
      v81 = v80 + 1;
      if (v72)
      {
        goto LABEL_58;
      }

      v21[2] = v81;
      v20 = v89;
      v15 = v88;
      v19 = v99;
    }
  }

  while (1)
  {
    v22 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v22 >= v98)
    {

      return sub_227662C70();
    }

    v19 = *(v15 + 8 * v22);
    ++v20;
    if (v19)
    {
      v91 = v21;
      goto LABEL_11;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22735CAE4@<X0>(uint64_t a1@<X8>)
{
  v84[0] = a1;
  v1 = sub_227662F10();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v84 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_227667400();
  v5 = *(v111 - 8);
  MEMORY[0x28223BE20](v111);
  v7 = v84 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_227665440();
  v8 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v103 = v84 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v104 = sub_227662B60();
  v10 = *(v104 - 8);
  MEMORY[0x28223BE20](v104);
  v102 = v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE80, qword_227681C68);
  MEMORY[0x28223BE20](v95);
  v94 = v84 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v101 = v84 - v14;
  v15 = sub_227662C80();
  v16 = v15 + 64;
  v17 = 1 << *(v15 + 32);
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & *(v15 + 64);
  v98 = (v17 + 63) >> 6;
  v93 = v10 + 16;
  v92 = v10 + 32;
  v96 = v10;
  v100 = v10 + 8;
  v114 = v2 + 16;
  v116 = v2;
  v109 = (v2 + 8);
  v110 = v5;
  v108 = v5 + 32;
  v20 = v19;
  v84[1] = v8 + 16;
  v85 = v8;
  v86 = (v8 + 8);
  v97 = v15;

  v21 = 0;
  v22 = MEMORY[0x277D84F98];
  v88 = v16;
  v106 = v7;
  v107 = v1;
  v105 = v4;
  while (v20)
  {
    v91 = v22;
    v23 = v21;
LABEL_11:
    v99 = v20;
    v89 = v23;
    v24 = __clz(__rbit64(v20)) | (v23 << 6);
    v25 = v97;
    v26 = v96;
    v27 = v101;
    (*(v96 + 16))(v101, *(v97 + 48) + *(v96 + 72) * v24, v104);
    v28 = v95;
    *(v27 + *(v95 + 48)) = *(*(v25 + 56) + 8 * v24);
    v29 = v94;
    sub_226E93170(v27, v94, &qword_27D7BCE80, qword_227681C68);

    v30 = v104;
    (*(v26 + 32))(v102, v29, v104);
    sub_226E93170(v27, v29, &qword_27D7BCE80, qword_227681C68);
    v31 = *(v29 + *(v28 + 48));
    v90 = *(v26 + 8);
    v90(v29, v30);
    sub_227662B50();
    sub_2276653F0();
    v32 = *(v31 + 16);
    if (v32)
    {
      v125 = MEMORY[0x277D84F90];
      sub_226F1F1D0(0, v32, 0);
      v33 = 0;
      v34 = v125;
      v115 = v31 + ((*(v116 + 80) + 32) & ~*(v116 + 80));
      v36 = v106;
      v35 = v107;
      v112 = v32;
      v113 = v31;
      while (v33 < *(v31 + 16))
      {
        v37 = *(v116 + 72);
        v118 = v33;
        (*(v116 + 16))(v4, v115 + v37 * v33, v35);
        v38 = sub_227662ED0();
        v39 = *(v38 + 16);
        if (v39)
        {
          v117 = v34;
          v124 = MEMORY[0x277D84F90];
          sub_226F1F1F0(0, v39, 0);
          v40 = v124;
          v41 = v38 + 56;
          v42 = sub_22766CC90();
          v43 = 0;
          v119 = v38 + 64;
          v120 = v39;
          v121 = v38 + 56;
          while ((v42 & 0x8000000000000000) == 0 && v42 < 1 << *(v38 + 32))
          {
            v45 = v42 >> 6;
            if ((*(v41 + 8 * (v42 >> 6)) & (1 << v42)) == 0)
            {
              goto LABEL_51;
            }

            v46 = *(v38 + 36);
            v122 = v43;
            v123 = v46;
            v47 = *(v38 + 48) + 24 * v42;
            v49 = *v47;
            v48 = *(v47 + 8);
            v50 = *(v47 + 16);
            sub_226EE2880(*v47, v48, v50);
            v124 = v40;
            v51 = v38;
            v53 = *(v40 + 16);
            v52 = *(v40 + 24);
            v54 = v40;
            if (v53 >= v52 >> 1)
            {
              sub_226F1F1F0((v52 > 1), v53 + 1, 1);
              v54 = v124;
            }

            *(v54 + 16) = v53 + 1;
            v55 = v54 + 24 * v53;
            *(v55 + 32) = v49;
            *(v55 + 40) = v48;
            *(v55 + 48) = v50;
            v44 = 1 << *(v51 + 32);
            if (v42 >= v44)
            {
              goto LABEL_52;
            }

            v41 = v121;
            v56 = *(v121 + 8 * v45);
            if ((v56 & (1 << v42)) == 0)
            {
              goto LABEL_53;
            }

            v38 = v51;
            if (v123 != *(v51 + 36))
            {
              goto LABEL_54;
            }

            v40 = v54;
            v57 = v56 & (-2 << (v42 & 0x3F));
            if (v57)
            {
              v44 = __clz(__rbit64(v57)) | v42 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v58 = v45 << 6;
              v59 = v45 + 1;
              v60 = (v119 + 8 * v45);
              while (v59 < (v44 + 63) >> 6)
              {
                v62 = *v60++;
                v61 = v62;
                v58 += 64;
                ++v59;
                if (v62)
                {
                  sub_226EB526C(v42, v123, 0);
                  v44 = __clz(__rbit64(v61)) + v58;
                  goto LABEL_17;
                }
              }

              sub_226EB526C(v42, v123, 0);
            }

LABEL_17:
            v43 = v122 + 1;
            v42 = v44;
            if (v122 + 1 == v120)
            {

              v63 = v40;
              v36 = v106;
              v35 = v107;
              v4 = v105;
              v34 = v117;
              goto LABEL_34;
            }
          }

          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
LABEL_53:
          __break(1u);
LABEL_54:
          __break(1u);
          break;
        }

        v63 = MEMORY[0x277D84F90];
LABEL_34:
        sub_227662EE0();
        sub_227662F00();
        sub_226F3EAA8(v63);

        sub_2276673D0();
        (*v109)(v4, v35);
        v125 = v34;
        v65 = v34[2];
        v64 = v34[3];
        if (v65 >= v64 >> 1)
        {
          sub_226F1F1D0((v64 > 1), v65 + 1, 1);
          v34 = v125;
        }

        v33 = v118 + 1;
        v34[2] = v65 + 1;
        (*(v110 + 32))(v34 + ((*(v110 + 80) + 32) & ~*(v110 + 80)) + *(v110 + 72) * v65, v36, v111);
        v31 = v113;
        if (v33 == v112)
        {

          goto LABEL_39;
        }
      }

      __break(1u);
      goto LABEL_56;
    }

    v34 = MEMORY[0x277D84F90];
LABEL_39:
    v66 = v91;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v125 = v66;
    v68 = sub_226F39F04(v103);
    v70 = v66[2];
    v71 = (v69 & 1) == 0;
    v72 = __OFADD__(v70, v71);
    v73 = v70 + v71;
    if (v72)
    {
      goto LABEL_57;
    }

    v74 = v69;
    if (v66[3] >= v73)
    {
      v16 = v88;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v82 = v68;
        sub_226FF46C4();
        v16 = v88;
        v68 = v82;
      }
    }

    else
    {
      sub_226FEC70C(v73, isUniquelyReferenced_nonNull_native);
      v68 = sub_226F39F04(v103);
      if ((v74 & 1) != (v75 & 1))
      {
        goto LABEL_59;
      }

      v16 = v88;
    }

    v20 = (v99 - 1) & v99;
    v22 = v125;
    if (v74)
    {
      *(v125[7] + 8 * v68) = v34;

      (*v86)(v103, v87);
      v90(v102, v104);
      sub_226E97D1C(v101, &qword_27D7BCE80, qword_227681C68);
      v21 = v89;
    }

    else
    {
      v99 &= v99 - 1;
      v125[(v68 >> 6) + 8] |= 1 << v68;
      v76 = v85;
      v77 = v68;
      v78 = v103;
      v79 = v87;
      (*(v85 + 16))(v22[6] + *(v85 + 72) * v68, v103, v87);
      *(v22[7] + 8 * v77) = v34;
      (*(v76 + 8))(v78, v79);
      v90(v102, v104);
      sub_226E97D1C(v101, &qword_27D7BCE80, qword_227681C68);
      v80 = v22[2];
      v72 = __OFADD__(v80, 1);
      v81 = v80 + 1;
      if (v72)
      {
        goto LABEL_58;
      }

      v22[2] = v81;
      v21 = v89;
      v16 = v88;
      v20 = v99;
    }
  }

  while (1)
  {
    v23 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v23 >= v98)
    {

      return sub_227665BC0();
    }

    v20 = *(v16 + 8 * v23);
    ++v21;
    if (v20)
    {
      v91 = v22;
      goto LABEL_11;
    }
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  result = sub_22766D220();
  __break(1u);
  return result;
}

uint64_t sub_22735D678@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D53CC0];
  v3 = sub_2276694E0();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

uint64_t sub_22735D6F8@<X0>(uint64_t *a2@<X8>)
{
  result = sub_2276648F0();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_22735D720(uint64_t a1)
{
  *(a1 + 24) = sub_22735D788(&qword_2813A57B0, &unk_2276791D8);
  result = sub_22735D788(&unk_2813A57A0, MEMORY[0x277D50C28]);
  *(a1 + 32) = result;
  return result;
}

uint64_t sub_22735D788(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_227664900();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_22735D7CC(void *a1)
{
  v2 = [a1 uniqueName];
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = v2;
  v4 = sub_22766C000();
  v6 = v5;

  if (v4 == 0xD00000000000001CLL && 0x800000022769CA20 == v6)
  {

    return 0;
  }

  v8 = sub_22766D190();

  if (v8)
  {
    return 0;
  }

LABEL_7:
  v9 = *(*v1 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_HKWorkoutIdentifier);

  return v9;
}

id sub_22735D8AC@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v37 = a2;
  v5 = sub_227662940();
  v38 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v36 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7B9690, qword_227670B50);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v33 - v8;
  v10 = sub_227662750();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v14);
  v17 = &v33 - v16;
  result = [a1 uniqueName];
  if (result)
  {
    v19 = result;
    v20 = sub_22766C000();
    v22 = v21;

    v41 = v20;
    v42 = v22;
    v39 = 0x507373656E746946;
    v40 = 0xEF6E616C5073756CLL;
    sub_226FB2548();
    LOBYTE(v19) = sub_22766CC00();

    v23 = *v3;
    v34 = v10;
    v35 = v5;
    if (v19)
    {
      sub_226E93170(v23 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_planCompletionDate, v9, &qword_27D7B9690, qword_227670B50);
      if ((*(v11 + 48))(v9, 1, v10) != 1)
      {
        (*(v11 + 32))(v17, v9, v10);
        goto LABEL_7;
      }

      sub_226E97D1C(v9, &qword_27D7B9690, qword_227670B50);
    }

    (*(v11 + 16))(v13, v23 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionStartDate, v10);
    sub_227662690();
    (*(v11 + 8))(v13, v10);
LABEL_7:
    v24 = [objc_opt_self() hk_gregorianCalendar];
    v25 = v36;
    sub_2276628C0();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BB368, &qword_22767C980);
    v26 = sub_227662930();
    v27 = *(v26 - 8);
    v28 = *(v27 + 72);
    v29 = (*(v27 + 80) + 32) & ~*(v27 + 80);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_227675BD0;
    v31 = v30 + v29;
    v32 = *(v27 + 104);
    v32(v31, *MEMORY[0x277CC9968], v26);
    v32(v31 + v28, *MEMORY[0x277CC9998], v26);
    v32(v31 + 2 * v28, *MEMORY[0x277CC9988], v26);
    sub_226F4CE68(v30);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    sub_2276628B0();

    (*(v38 + 8))(v25, v35);
    return (*(v11 + 8))(v17, v34);
  }

  __break(1u);
  return result;
}

id sub_22735DDA0(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_227662190();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v82 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22766B390();
  v89 = *(v10 - 8);
  v90 = v10;
  MEMORY[0x28223BE20](v10);
  v88 = &v82 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v82 - v14;
  result = [a1 uniqueName];
  if (result)
  {
    v17 = result;
    v18 = sub_22766C000();
    v20 = v19;

    if (*(a2 + 16))
    {
      v21 = sub_226E92000(v18, v20);
      v23 = v22;

      if (v23)
      {
        v24 = *(*(a2 + 56) + 8 * v21);
        v25 = *v3;
        v26 = v24;
        if ([v26 evaluateWithObject_])
        {
          v86 = v25;
          sub_22766A610();
          sub_22735EE64(v3, &v94);
          v27 = a1;
          v28 = sub_22766B380();
          v29 = sub_22766C8B0();

          v30 = os_log_type_enabled(v28, v29);
          v87 = v27;
          if (v30)
          {
            v84 = v29;
            v85 = v26;
            v31 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v91[0] = v83;
            *v31 = 136315394;
            v32 = *(v94 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier);
            v33 = *(v94 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier + 8);

            sub_22735EE9C(&v94);
            v34 = sub_226E97AE8(v32, v33, v91);

            *(v31 + 4) = v34;
            *(v31 + 12) = 2080;
            v35 = [v27 uniqueName];
            if (v35)
            {
              v36 = v35;
              v37 = sub_22766C000();
              v39 = v38;
            }

            else
            {
              v37 = 0;
              v39 = 0;
            }

            *&v93[0] = v37;
            *(&v93[0] + 1) = v39;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
            v41 = sub_22766CB80();
            v43 = v42;

            v44 = sub_226E97AE8(v41, v43, v91);

            *(v31 + 14) = v44;
            _os_log_impl(&dword_226E8E000, v28, v84, "Session [%s] satisfies template's predicate: %s", v31, 0x16u);
            v45 = v83;
            swift_arrayDestroy();
            MEMORY[0x22AA9A450](v45, -1, -1);
            MEMORY[0x22AA9A450](v31, -1, -1);

            v40 = *(v89 + 8);
            v40(v15, v90);
            v26 = v85;
          }

          else
          {

            v40 = *(v89 + 8);
            v40(v15, v90);
            sub_22735EE9C(&v94);
          }

          v46 = [objc_allocWithZone(MEMORY[0x277CE8D38]) init];
          v47 = v87;
          v48 = [v87 uniqueName];
          v49 = v46;
          [v46 setTemplateUniqueName_];

          sub_22735D7CC(v47);
          if (v50)
          {
            v51 = sub_22766BFD0();
          }

          else
          {
            v51 = 0;
          }

          [v49 setExternalIdentifier_];

          sub_22735D8AC(v47, v9);
          v52 = sub_227662110();
          (*(v7 + 8))(v9, v6);
          [v49 setEarnedDateComponents_];

          v53 = [v47 valueExpression];
          if (v53)
          {
            v54 = v53;
            sub_22766C000();

            v55 = v87;
            v56 = [v87 canonicalUnit];
            if (v56)
            {
              v57 = v56;
              sub_226E99364(0, &qword_281398B40, 0x277CCA9C0);
              v58 = sub_22766C830();

              if ([v58 expressionValueWithObject:v86 context:0])
              {
                sub_22766CC20();
                swift_unknownObjectRelease();
              }

              else
              {
                v94 = 0u;
                v95 = 0u;
              }

              v59 = v88;
              v93[0] = v94;
              v93[1] = v95;
              sub_226E93170(v93, &v94, &unk_27D7BC990, &qword_227670A30);
              if (*(&v95 + 1))
              {
                sub_226E99364(0, &qword_28139D220, 0x277CCABB0);
                if (swift_dynamicCast())
                {
                  v60 = v91[0];
                  v61 = v57;
                  [v60 doubleValue];
                  v63 = [objc_opt_self() quantityWithUnit:v61 doubleValue:v62];

                  [v49 setValue_];
LABEL_35:
                  sub_226E97D1C(v93, &unk_27D7BC990, &qword_227670A30);
                  return v49;
                }

                v64 = v40;
              }

              else
              {
                v64 = v40;
                sub_226E97D1C(&v94, &unk_27D7BC990, &qword_227670A30);
              }

              sub_22766A610();
              sub_22735EE64(v3, &v94);
              v65 = v55;
              v66 = sub_22766B380();
              v67 = sub_22766C890();

              if (!os_log_type_enabled(v66, v67))
              {

                v64(v59, v90);
                sub_226E97D1C(v93, &unk_27D7BC990, &qword_227670A30);
                sub_22735EE9C(&v94);
                return v49;
              }

              v87 = v58;
              v85 = v26;
              v68 = swift_slowAlloc();
              v69 = swift_slowAlloc();
              v92 = v69;
              *v68 = 136315394;
              v70 = *(v94 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier);
              v71 = *(v94 + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier + 8);

              sub_22735EE9C(&v94);
              v72 = sub_226E97AE8(v70, v71, &v92);

              *(v68 + 4) = v72;
              *(v68 + 12) = 2080;
              v73 = [v65 uniqueName];
              if (v73)
              {
                v74 = v73;
                v75 = sub_22766C000();
                v77 = v76;
              }

              else
              {
                v75 = 0;
                v77 = 0;
              }

              v91[0] = v75;
              v91[1] = v77;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BBC30, &unk_2276720D0);
              v78 = sub_22766CB80();
              v80 = v79;

              v81 = sub_226E97AE8(v78, v80, &v92);

              *(v68 + 14) = v81;
              _os_log_impl(&dword_226E8E000, v66, v67, "Could not determine earnedInstance value for session [%s] and template: %s", v68, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x22AA9A450](v69, -1, -1);
              MEMORY[0x22AA9A450](v68, -1, -1);

              v64(v88, v90);
              goto LABEL_35;
            }
          }

          return v49;
        }
      }
    }

    else
    {
    }

    return 0;
  }

  __break(1u);
  return result;
}

unint64_t *sub_22735E6FC(uint64_t a1)
{
  v82 = sub_22766B390();
  v3 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v5 = &v73 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = v1[5];
  __swift_project_boxed_opaque_existential_0(v1 + 1, v1[4]);
  LOBYTE(v85[0]) = 22;
  v7 = sub_226F19410();
  v77 = sub_226F19464();
  v71 = v77;
  v78 = v7;
  v69 = v6;
  v70 = v7;
  v8 = a1;
  v79 = "ModifyPlanFailure";
  v80 = "AchievementEvaluator.swift";
  sub_22766A130();
  sub_22766A610();
  v81 = v1;
  sub_22735EE64(v1, v85);

  v9 = sub_22766B380();
  v10 = sub_22766C8B0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = v82;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v84 = v13;
    *v12 = 136315394;
    v14 = *(v85[0] + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier);
    v15 = *(v85[0] + OBJC_IVAR____TtC15SeymourServices22AchievementEnvironment_sessionIdentifier + 8);

    sub_22735EE9C(v85);
    v16 = sub_226E97AE8(v14, v15, &v84);

    *(v12 + 4) = v16;
    *(v12 + 12) = 2048;
    v17 = v8 & 0xC000000000000001;
    if ((v8 & 0xC000000000000001) != 0)
    {
      v18 = sub_22766CD20();
    }

    else
    {
      v18 = *(v8 + 16);
    }

    *(v12 + 14) = v18;

    _os_log_impl(&dword_226E8E000, v9, v10, "Evaluating session %s against [%ld] templates", v12, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x22AA9A450](v13, -1, -1);
    MEMORY[0x22AA9A450](v12, -1, -1);

    (*(v3 + 8))(v5, v11);
  }

  else
  {

    (*(v3 + 8))(v5, v82);
    sub_22735EE9C(v85);
    v17 = a1 & 0xC000000000000001;
  }

  v82 = sub_227148D10(MEMORY[0x277D84F90]);
  v75 = v8;
  if (v17)
  {
    swift_unknownObjectRetain();
    sub_22766CCE0();
    sub_226E99364(0, &qword_281398B88, 0x277CE8D50);
    sub_22735EECC();
    sub_22766C700();
    v20 = v85[0];
    v19 = v85[1];
    v21 = v85[2];
    v22 = v85[3];
    v23 = v85[4];
  }

  else
  {
    v24 = -1 << *(v8 + 32);
    v19 = v8 + 56;
    v21 = ~v24;
    v25 = -v24;
    if (v25 < 64)
    {
      v26 = ~(-1 << v25);
    }

    else
    {
      v26 = -1;
    }

    v23 = v26 & *(v8 + 56);

    v22 = 0;
    v20 = v8;
  }

  v76 = v21;
  v27 = (v21 + 64) >> 6;
  while (2)
  {
    while (2)
    {
      v28 = &selRef_setFetchBatchSize_;
      while (1)
      {
        if (v20 < 0)
        {
          v32 = sub_22766CD50();
          if (!v32 || (v83 = v32, sub_226E99364(0, &qword_281398B88, 0x277CE8D50), swift_dynamicCast(), v31 = v84, v28 = &selRef_setFetchBatchSize_, !v84))
          {
LABEL_38:
            v62 = sub_226EBB21C(v20);
            MEMORY[0x28223BE20](v62);
            v63 = v81;
            v71 = v81;
            v72 = v82;
            sub_226FDEC04(sub_22735EF34, &v69, v75);
            v65 = v64;

            v66 = sub_226F41A28(v65);

            v67 = v63[5];
            __swift_project_boxed_opaque_existential_0(v63 + 1, v63[4]);
            LOBYTE(v84) = 22;
            v71 = v77;
            v69 = v67;
            v70 = v78;
            sub_22766A120();
            return v66;
          }
        }

        else
        {
          v29 = v22;
          v30 = v23;
          if (!v23)
          {
            while (1)
            {
              v22 = v29 + 1;
              if (__OFADD__(v29, 1))
              {
                break;
              }

              if (v22 >= v27)
              {
                goto LABEL_38;
              }

              v30 = *(v19 + 8 * v22);
              ++v29;
              if (v30)
              {
                goto LABEL_20;
              }
            }

            __break(1u);
            goto LABEL_40;
          }

LABEL_20:
          v23 = (v30 - 1) & v30;
          v31 = *(*(v20 + 48) + ((v22 << 9) | (8 * __clz(__rbit64(v30)))));
          if (!v31)
          {
            goto LABEL_38;
          }
        }

        v33 = [v31 v28[364]];
        if (v33)
        {
          break;
        }
      }

      v34 = v33;
      sub_22766C000();

      sub_226E99364(0, &qword_281398B58, 0x277CCAC30);
      v35 = sub_22766C7F0();

      v36 = [v31 uniqueName];
      if (!v36)
      {
        goto LABEL_42;
      }

      v37 = v36;
      v38 = sub_22766C000();
      v40 = v39;

      v74 = v35;
      v41 = v82;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v84 = v41;
      v73 = v38;
      v43 = v38;
      v44 = v40;
      v46 = sub_226E92000(v43, v40);
      v47 = *(v41 + 16);
      v48 = (v45 & 1) == 0;
      v49 = v47 + v48;
      if (__OFADD__(v47, v48))
      {
LABEL_40:
        __break(1u);
        goto LABEL_41;
      }

      if (*(v41 + 24) >= v49)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          if ((v45 & 1) == 0)
          {
            break;
          }
        }

        else
        {
          v55 = v45;
          sub_226FF0DC0();
          if ((v55 & 1) == 0)
          {
            break;
          }
        }

        goto LABEL_34;
      }

      LODWORD(v82) = v45;
      sub_226FE3874(v49, isUniquelyReferenced_nonNull_native);
      v50 = sub_226E92000(v73, v44);
      if ((v82 & 1) != (v51 & 1))
      {
        goto LABEL_43;
      }

      v46 = v50;
      if (v82)
      {
LABEL_34:

        v82 = v84;
        v52 = v84[7];
        v53 = *(v52 + 8 * v46);
        v54 = v74;
        *(v52 + 8 * v46) = v74;

        continue;
      }

      break;
    }

    v56 = v84;
    v84[(v46 >> 6) + 8] |= 1 << v46;
    v57 = (v56[6] + 16 * v46);
    *v57 = v73;
    v57[1] = v44;
    v58 = v74;
    *(v56[7] + 8 * v46) = v74;

    v59 = v56[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (!v60)
    {
      v82 = v56;
      v56[2] = v61;
      continue;
    }

    break;
  }

LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  result = sub_22766D220();
  __break(1u);
  return result;
}

unint64_t sub_22735EECC()
{
  result = qword_281398B80;
  if (!qword_281398B80)
  {
    sub_226E99364(255, &qword_281398B88, 0x277CE8D50);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_281398B80);
  }

  return result;
}

id sub_22735EF34@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  result = sub_22735DDA0(*a1, *(v2 + 24));
  *a2 = result;
  return result;
}

uint64_t sub_22735EF78(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_22735EFC0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_22735F01C()
{
  v1 = v0;
  v2 = sub_227669A70();
  v34 = *(v2 - 8);
  v3 = v34;
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22766B390();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22766A730();
  sub_22766B370();
  (*(v7 + 8))(v9, v6);
  v10 = *(v1 + 16);
  v22 = *(v1 + 32);
  v23 = v1;
  ObjectType = swift_getObjectType();
  v35 = v10;
  v31 = *MEMORY[0x277D4E468];
  v33 = *(v3 + 104);
  v33(v5);
  v32 = v3 + 104;
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA20, &qword_227685540);
  v29 = sub_226F62F70(&qword_2813990E0, &qword_27D7BEA20, &qword_227685540);
  v28 = sub_227360068();
  sub_227669ED0();

  v11 = *(v34 + 8);
  v34 += 8;
  v19 = v2;
  v20 = v11;
  v11(v5, v2);
  swift_unknownObjectRelease();
  v35 = v10;
  v27 = *MEMORY[0x277D4E7B0];
  v12 = v33;
  v33(v5);
  swift_allocObject();
  v13 = v23;
  swift_weakInit();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BCE88, &qword_227681D50);
  v25 = sub_226F62F70(&qword_2813990A8, &qword_27D7BCE88, &qword_227681D50);
  v24 = sub_2273601B4();
  sub_227669EE0();

  v14 = v19;
  v15 = v20;
  v20(v5, v19);
  swift_unknownObjectRelease();
  v16 = *(v13 + 40);
  swift_getObjectType();
  v35 = v16;
  (v12)(v5, v31, v14);
  swift_allocObject();
  swift_weakInit();
  swift_unknownObjectRetain_n();
  sub_227669ED0();

  v15(v5, v14);
  swift_unknownObjectRelease();
  v35 = v16;
  (v33)(v5, v27, v14);
  swift_allocObject();
  swift_weakInit();
  sub_227669EE0();

  v15(v5, v14);
  return swift_unknownObjectRelease();
}

uint64_t sub_22735F554(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_22735F574, 0, 0);
}

uint64_t sub_22735F574()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, v0 + 16);

    v2 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v3 = *v2;
    *(v0 + 104) = *v2;
    v4 = v3[7];
    v5 = v3[8];
    __swift_project_boxed_opaque_existential_0(v3 + 4, v4);
    v6 = *(v5 + 24);

    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA20, &qword_227685540);
    *v7 = v0;
    v7[1] = sub_22735F77C;

    return (v11)(v0 + 80, sub_227360400, v3, v8, v4, v5);
  }

  else
  {
    **(v0 + 88) = 0;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_22735F77C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_227360418;
  }

  else
  {

    v2 = sub_226FAD63C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22735F898(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_22735F8BC, 0, 0);
}

uint64_t sub_22735F8BC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_22735F9D0;
    v3 = v0[11];

    return sub_22709500C(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22735F9D0()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_226F618C8;
  }

  else
  {
    v2 = sub_226F62210;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22735FAE4(uint64_t a1, uint64_t a2)
{
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
  return MEMORY[0x2822009F8](sub_22735FB04, 0, 0);
}

uint64_t sub_22735FB04()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, v0 + 16);

    v2 = __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    v3 = *v2;
    *(v0 + 104) = *v2;
    v4 = v3[7];
    v5 = v3[8];
    __swift_project_boxed_opaque_existential_0(v3 + 4, v4);
    v6 = *(v5 + 24);

    v11 = (v6 + *v6);
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7BEA20, &qword_227685540);
    *v7 = v0;
    v7[1] = sub_22735FD0C;

    return (v11)(v0 + 80, sub_2273603E4, v3, v8, v4, v5);
  }

  else
  {
    **(v0 + 88) = 0;
    v10 = *(v0 + 8);

    return v10();
  }
}

uint64_t sub_22735FD0C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_227222EC8;
  }

  else
  {

    v2 = sub_226FABD80;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22735FE28(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  *(v2 + 80) = a2;
  *(v2 + 88) = v3;
  return MEMORY[0x2822009F8](sub_22735FE4C, 0, 0);
}

uint64_t sub_22735FE4C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    sub_226E91B50(Strong + 64, (v0 + 2));

    __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
    v2 = swift_task_alloc();
    v0[12] = v2;
    *v2 = v0;
    v2[1] = sub_226F623A8;
    v3 = v0[11];

    return sub_22709500C(v3);
  }

  else
  {
    v5 = v0[1];

    return v5();
  }
}

uint64_t sub_22735FF60()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 64));

  return swift_deallocClassInstance();
}

uint64_t sub_22735FFCC(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22735F554(a1, v1);
}

unint64_t sub_227360068()
{
  result = qword_2813990D8;
  if (!qword_2813990D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BEA20, &qword_227685540);
    sub_227360268(&unk_28139B920, MEMORY[0x277D50CD0], MEMORY[0x277D50CC8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813990D8);
  }

  return result;
}

uint64_t sub_22736011C(uint64_t *a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_226E93028;

  return sub_22735F898(a1, v1);
}

unint64_t sub_2273601B4()
{
  result = qword_2813990A0;
  if (!qword_2813990A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7BCE88, &qword_227681D50);
    sub_227360268(&qword_28139B850, MEMORY[0x277D51638], MEMORY[0x277D51630]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2813990A0);
  }

  return result;
}