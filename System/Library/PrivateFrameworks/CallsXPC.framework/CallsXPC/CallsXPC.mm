uint64_t *XPCClient.init()()
{
  v1 = *v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A50, &qword_242A36198);
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = 0u;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0;
  v0[2] = v2;
  v18[0] = sub_242A3532C();
  v3 = *(v1 + 88);
  v4 = *(v1 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v18[1] = type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  swift_getFunctionTypeMetadata();
  v18[0] = sub_242A3533C();
  *(v0 + 6) = 0;
  v0[4] = 0;
  v8 = sub_242A3535C();
  sub_242A1D6B4(v18, (v0 + 4), v8);
  *(v0 + 10) = 0;
  v0[6] = 0;
  v0[7] = 0;
  v9 = v0[2];
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  v11[2] = v4;
  v11[3] = v3;
  v11[4] = v10;
  v12 = *(v9 + 32);
  v13 = *(v9 + 40);
  *(v9 + 32) = sub_242A1D860;
  *(v9 + 40) = v11;

  sub_242A1D2CC(v12, v13);

  v14 = v0[2];
  v15 = *(v14 + 48);
  v16 = *(v14 + 56);
  *(v14 + 48) = sub_242A260EC;
  *(v14 + 56) = 0;

  sub_242A1D2CC(v15, v16);

  return v0;
}

uint64_t sub_242A1D2CC(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_242A1D2DC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242A1D314()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_242A1D34C(uint64_t *a1)
{
  v1 = MEMORY[0x277D84F78] + 8;
  if (MEMORY[0x277D85020])
  {
    sub_242A3532C();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
    swift_getFunctionTypeMetadata();
    sub_242A3535C();
    return sub_242A3513C();
  }

  return v1;
}

uint64_t sub_242A1D44C()
{
  if (MEMORY[0x277D85020])
  {
    return __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A60, &qword_242A36260);
  }

  else
  {
    return MEMORY[0x277D84F78] + 8;
  }
}

uint64_t sub_242A1D47C(void *a1)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  sub_242A3557C();
  return sub_242A3513C();
}

uint64_t sub_242A1D588(uint64_t a1)
{
  sub_242A3557C();
  result = sub_242A3513C();
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

uint64_t sub_242A1D654(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void XPCClient.setCancellationHandler(_:)(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((v2 + 40));
  v5 = *(v2 + 48);
  if (v5)
  {
    sub_242A1D2CC(v5, *(v2 + 56));
  }

  if (a1)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = a1;
    *(v6 + 24) = a2;
    v7 = sub_242A32374;
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *(v2 + 48) = v7;
  *(v2 + 56) = v6;
  sub_242A1D78C(a1, a2);

  os_unfair_lock_unlock((v2 + 40));
}

uint64_t sub_242A1D78C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t TypedPayloadBox.init<A>(value:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X8>)
{
  *(a4 + 24) = a2;
  *(a4 + 32) = *(a3 + 8);
  boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(a4);
  v8 = *(a2 - 8);
  (*(v8 + 16))(boxed_opaque_existential_2, a1, a2);
  v9 = static XPCMessage.messageIdentifier.getter(a2);
  v11 = v10;
  result = (*(v8 + 8))(a1, a2);
  *(a4 + 48) = v9;
  *(a4 + 56) = v11;
  return result;
}

uint64_t sub_242A1D880@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_242A351AC();
  MEMORY[0x28223BE20](v8 - 8);
  (*(a3 + 56))(&v17, a2, a3);
  sub_242A3522C();
  sub_242A3519C();
  result = sub_242A3518C();
  if (!v4)
  {
    v10 = result;
    v11 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v12 = swift_allocObject();
    v12[2] = a2;
    v12[3] = a3;
    v12[4] = v11;

    sub_242A351BC();

    v13 = swift_allocObject();
    swift_beginAccess();
    swift_weakLoadStrong();
    swift_weakInit();

    v14 = swift_allocObject();
    swift_weakInit();

    v15 = swift_allocObject();
    v15[2] = a2;
    v15[3] = a3;
    v15[4] = v13;
    v15[5] = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = sub_242A32798;
    *(v16 + 24) = v15;

    sub_242A351CC();

    sub_242A3520C();

    *a4 = v10;
  }

  return result;
}

uint64_t sub_242A1DB74()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242A1DBB4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t XPCClient.sendSync<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, char *, uint64_t)@<X8>)
{
  v81 = a4;
  v5 = v4;
  v9 = *v4;
  v78 = sub_242A352CC();
  v80 = *(v78 - 8);
  v10 = MEMORY[0x28223BE20](v78);
  v76 = &v71 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v79 = &v71 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v77 = &v71 - v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v71 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, a1, a2);
  v19 = *(v9 + 88);
  v20 = *(v9 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  TypedPayloadBox.init<A>(value:)(v17, a2, a3, v91);
  v75 = v5;
  v84 = v20;
  v85 = a2;
  v86 = v19;
  v87 = a3;
  v88 = v91;
  v74 = a2;
  swift_getAssociatedTypeWitness();

  v23 = v82;
  sub_242A1E468(sub_242A1E578, v83, v81);
  if (v23)
  {
    v82 = AssociatedConformanceWitness;

    v92 = v23;
    MEMORY[0x245D206F0](v23);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A08, &qword_242A35E80);
    v24 = v77;
    v25 = v78;
    if (swift_dynamicCast())
    {

      v26 = v79;
      v27 = v80;
      (*(v80 + 32))(v79, v24, v25);
      if (qword_280B1B358 != -1)
      {
        swift_once();
      }

      v28 = sub_242A3517C();
      __swift_project_value_buffer(v28, qword_280B1B7F8);
      v29 = *(v27 + 16);
      v30 = v76;
      v29(v76, v26, v25);
      v31 = sub_242A3515C();
      v32 = sub_242A3554C();
      v33 = os_log_type_enabled(v31, v32);
      v81 = v29;
      if (v33)
      {
        v34 = swift_slowAlloc();
        v35 = v29;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v90 = v73;
        *v34 = 136315394;
        v89 = v74;
        MetatypeMetadata = swift_getMetatypeMetadata();
        v37 = sub_242A348EC(&v89, MetatypeMetadata);
        v77 = AssociatedTypeWitness;
        v39 = sub_242A2D920(v37, v38, &v90);

        *(v34 + 4) = v39;
        *(v34 + 12) = 2112;
        sub_242A1EC2C();
        swift_allocError();
        v40 = v76;
        v35(v41, v76, v25);
        v42 = _swift_stdlib_bridgeErrorToNSError();
        v43 = *(v80 + 8);
        v43(v40, v25);
        *(v34 + 14) = v42;
        v44 = v72;
        *v72 = v42;
        AssociatedTypeWitness = v77;
        _os_log_impl(&dword_242A1C000, v31, v32, "Encountered XPC error when trying to send sync message %s error: %@", v34, 0x16u);
        sub_242A25820(v44, &qword_27ECD8A10, &qword_242A35DC0);
        MEMORY[0x245D20850](v44, -1, -1);
        v45 = v73;
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x245D20850](v45, -1, -1);
        MEMORY[0x245D20850](v34, -1, -1);
      }

      else
      {

        v43 = *(v27 + 8);
        v43(v30, v25);
      }

      v63 = v75[2];

      os_unfair_lock_lock((v63 + 16));
      v64 = *(v63 + 24);
      *(v63 + 24) = 0;
      os_unfair_lock_unlock((v63 + 16));
      if (v64)
      {
        v90 = v64;
        v65 = *(v63 + 48);
        if (v65)
        {
          v66 = *(v63 + 56);

          v65(&v90);
          sub_242A1D2CC(v65, v66);
        }
      }

      sub_242A1EC2C();
      swift_allocError();
      v67 = v79;
      v81(v68, v79, v25);
      swift_willThrow();
      v43(v67, v25);

      v62 = v82;
    }

    else
    {

      if (qword_280B1B358 != -1)
      {
        swift_once();
      }

      v49 = sub_242A3517C();
      __swift_project_value_buffer(v49, qword_280B1B7F8);
      MEMORY[0x245D206F0](v23);
      v50 = sub_242A3515C();
      v51 = sub_242A3554C();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = swift_slowAlloc();
        v53 = swift_slowAlloc();
        v54 = AssociatedTypeWitness;
        v55 = swift_slowAlloc();
        v92 = v55;
        *v52 = 136315394;
        v90 = v74;
        v56 = swift_getMetatypeMetadata();
        v57 = sub_242A348EC(&v90, v56);
        v59 = sub_242A2D920(v57, v58, &v92);

        *(v52 + 4) = v59;
        *(v52 + 12) = 2112;
        MEMORY[0x245D206F0](v23);
        v60 = _swift_stdlib_bridgeErrorToNSError();
        *(v52 + 14) = v60;
        *v53 = v60;
        _os_log_impl(&dword_242A1C000, v50, v51, "Failed to send sync message %s error: %@", v52, 0x16u);
        sub_242A25820(v53, &qword_27ECD8A10, &qword_242A35DC0);
        MEMORY[0x245D20850](v53, -1, -1);
        __swift_destroy_boxed_opaque_existential_0(v55);
        v61 = v55;
        AssociatedTypeWitness = v54;
        MEMORY[0x245D20850](v61, -1, -1);
        MEMORY[0x245D20850](v52, -1, -1);
      }

      v62 = v82;
      swift_willThrow();
    }

    v47 = AssociatedTypeWitness;
    v48 = v62;
  }

  else
  {

    v47 = AssociatedTypeWitness;
    v48 = AssociatedConformanceWitness;
  }

  v69 = type metadata accessor for TypedPayloadBox(0, v47, v48, v46);
  return (*(*(v69 - 8) + 8))(v91, v69);
}

void sub_242A1E468(void (*a1)(char *)@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>)
{
  v5 = v4;
  v9 = (v4 + *(*v4 + 88));
  os_unfair_lock_lock(v9);
  sub_242A3557C();
  v10 = sub_242A3513C();
  sub_242A1E59C(v9 + *(v10 + 28), a1, a2, v5, &v11, x8_0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A08, &qword_242A35E80);
  j__os_unfair_lock_unlock(v9);
}

void sub_242A1E59C(char *a1@<X0>, void (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X5>, uint64_t a6@<X8>)
{
  v39 = a5;
  v36 = a3;
  v37 = a2;
  v35 = a6;
  v7 = *(*a4 + 80);
  v8 = sub_242A3557C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v33 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v30 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v30 - v16;
  v18 = *(v7 - 8);
  MEMORY[0x28223BE20](v15);
  v20 = &v30 - v19;
  v38 = v9;
  v21 = *(v9 + 16);
  v34 = a1;
  v32 = v21;
  v21(v17, a1, v8);
  v31 = *(v18 + 48);
  if (v31(v17, 1, v7) != 1)
  {
    (*(v18 + 32))(v20, v17, v7);
    v29 = v40;
    v37(v20);
    v28 = v29;
    (*(v18 + 8))(v20, v7);
    goto LABEL_6;
  }

  v22 = v17;
  v23 = *(v38 + 8);
  v23(v22, v8);
  v24 = v40;
  sub_242A1F188();
  if (!v24)
  {
    v40 = 0;
    v25 = v34;
    v23(v34, v8);
    (*(v18 + 56))(v14, 0, 1, v7);
    (*(v38 + 32))(v25, v14, v8);
    v26 = v33;
    v32(v33, v25, v8);
    if (v31(v26, 1, v7) == 1)
    {
      __break(1u);
      return;
    }

    v27 = v40;
    v37(v26);
    v28 = v27;
    (*(v18 + 8))(v26, v7);
LABEL_6:
    v24 = v28;
    if (!v28)
    {
      return;
    }
  }

  *v39 = v24;
}

void XPCClient.setMessageHandler<A>(for:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_242A1E918(a1, a2, a3, a4, a5, sub_242A20178, &parameter_flags_9_0);
}

{
  sub_242A1E918(a1, a2, a3, a4, a5, sub_242A30274, &parameter_flags_11_0);
}

void sub_242A1E918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v13 = *&v7->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v7 + 6);
  a6(&v7[8], a2, a3, *(v13 + 80), a4, *(v13 + 88), a5);
  sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v16);
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  j__os_unfair_lock_unlock(v7 + 6);
}

void sub_242A1EB70(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  if (a4)
  {
    v6 = sub_242A352CC();
    sub_242A1EC2C();
    v7 = swift_allocError();
    (*(*(v6 - 8) + 16))(v8, a1, v6);
    a4(v7);
  }
}

unint64_t sub_242A1EC2C()
{
  result = qword_280B1B6E0[0];
  if (!qword_280B1B6E0[0])
  {
    sub_242A352CC();
    result = swift_getWitnessTable();
    atomic_store(result, qword_280B1B6E0);
  }

  return result;
}

uint64_t sub_242A1EC90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v11 = Strong;
      os_unfair_lock_lock((v9 + 24));
      sub_242A1EDDC(v9 + 32, v11);
      type metadata accessor for XPCHostConnection(255, a4, a5, v12);
      sub_242A3549C();
      os_unfair_lock_unlock((v9 + 24));
      os_unfair_lock_lock((v9 + 40));
      sub_242A1EEF8((v9 + 48), v11, a1, &v13);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
      swift_getFunctionTypeMetadata2();
      sub_242A3557C();
      os_unfair_lock_unlock((v9 + 40));
    }
  }

  return result;
}

uint64_t sub_242A1EDDC(uint64_t a1, void *a2)
{
  sub_242A3549C();
  swift_getWitnessTable();
  swift_getWitnessTable();
  return sub_242A3553C();
}

void (**sub_242A1EEF8@<X0>(void (**result)(uint64_t *, uint64_t *)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, BOOL *a4@<X8>))(uint64_t *, uint64_t *)
{
  v4 = result;
  v7 = *result;
  v6 = result[1];
  if (*result)
  {
    v9 = a2;
    v8 = a3;

    v7(&v9, &v8);
    result = sub_242A1D2CC(v7, v6);
  }

  *a4 = v7 == 0;
  *v4 = v7;
  v4[1] = v6;
  return result;
}

uint64_t XPCHostConnection.__deallocating_deinit()
{
  XPCHostConnection.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t XPCHostConnection.deinit()
{
  v1 = qword_280B1B7E8;
  v2 = sub_242A3512C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t *__swift_allocate_boxed_opaque_existential_2(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_242A1F0C8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_242A1F134()
{
  result = qword_280B1B350;
  if (!qword_280B1B350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1B350);
  }

  return result;
}

void sub_242A1F188()
{
  v1 = v0 + *(*v0 + 96);
  v2 = *v1;
  if (*v1)
  {
    v3 = *(v1 + 8);

    v2(v4);
    sub_242A1D2CC(v2, v3);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_242A1F200@<X0>(uint64_t a1@<X1>, uint64_t a6@<X8>)
{
  v28 = a6;
  *&v29 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v24[1] = sub_242A1F134();
  v25 = sub_242A357BC();
  MEMORY[0x28223BE20](v25);
  v27 = v24 - v7;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = swift_getAssociatedConformanceWitness();
  v10 = type metadata accessor for XPCResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  v26 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v24 - v11;
  v13 = sub_242A3532C();
  v32 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v24 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_getAssociatedTypeWitness();
  v17 = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(0, v16, v17, v18);
  swift_getWitnessTable();
  v19 = v30;
  result = sub_242A3521C();
  if (!v19)
  {
    v22 = v26;
    v21 = v27;
    v23 = v28;
    swift_getWitnessTable();
    sub_242A3530C();
    sub_242A239A8(v10, v21);
    (*(v22 + 8))(v12, v10);
    sub_242A23B18(v25, &v31, v23);
    return (*(v32 + 8))(v15, v13);
  }

  return result;
}

void sub_242A1F5F0(uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v44 = *MEMORY[0x277D85DE8];
  *token.val = a3;
  *&token.val[2] = a4;
  *&token.val[4] = a5;
  *&token.val[6] = a6;
  v14 = SecTaskCreateWithAuditToken(0, &token);
  if (v14)
  {
    v15 = v14;
    error = 0;
    v16 = sub_242A3538C();
    v17 = SecTaskCopyValueForEntitlement(v15, v16, &error);

    v18 = error;
    if (error)
    {
      if (qword_280B1B358 != -1)
      {
        swift_once();
      }

      v19 = sub_242A3517C();
      __swift_project_value_buffer(v19, qword_280B1B7F8);
      v20 = sub_242A3515C();
      v21 = sub_242A3554C();
      if (os_log_type_enabled(v20, v21))
      {
        v40 = a8;
        v22 = swift_slowAlloc();
        v39 = swift_slowAlloc();
        v41 = v39;
        *v22 = 136315394;
        *token.val = a3;
        *&token.val[2] = a4;
        *&token.val[4] = a5;
        *&token.val[6] = a6;
        type metadata accessor for audit_token_t(0);
        v23 = sub_242A353BC();
        v25 = sub_242A2D920(v23, v24, &v41);

        *(v22 + 4) = v25;
        *(v22 + 12) = 2080;
        *token.val = v18;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8AC8, &unk_242A36D20);
        v26 = sub_242A353BC();
        v28 = sub_242A2D920(v26, v27, &v41);

        *(v22 + 14) = v28;
        _os_log_impl(&dword_242A1C000, v20, v21, "Could not get entitlement for %s: %s", v22, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x245D20850](v39, -1, -1);
        v29 = v22;
        a8 = v40;
        MEMORY[0x245D20850](v29, -1, -1);
      }

      swift_unknownObjectRelease();
      (*(*(a7 - 8) + 56))(a8, 1, 1, a7);
    }

    else
    {
      *token.val = v17;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8AC0, &qword_242A36D18);
      v38 = swift_dynamicCast();
      (*(*(a7 - 8) + 56))(a8, v38 ^ 1u, 1, a7);
    }

    if (error)
    {
    }
  }

  else
  {
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v30 = sub_242A3517C();
    __swift_project_value_buffer(v30, qword_280B1B7F8);
    v31 = sub_242A3515C();
    v32 = sub_242A3554C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      error = v34;
      *token.val = a3;
      *v33 = 136315138;
      *&token.val[2] = a4;
      *&token.val[4] = a5;
      *&token.val[6] = a6;
      type metadata accessor for audit_token_t(0);
      v35 = sub_242A353BC();
      v37 = sub_242A2D920(v35, v36, &error);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_242A1C000, v31, v32, "Failed to create task for %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x245D20850](v34, -1, -1);
      MEMORY[0x245D20850](v33, -1, -1);
    }

    (*(*(a7 - 8) + 56))(a8, 1, 1, a7);
  }
}

uint64_t get_enum_tag_for_layout_string_s5Error_pIeghg_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_242A1FA74(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t *), uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return sub_242A3527C();
  }

  v11 = Strong;
  if (swift_getAssociatedTypeWitness() != &type metadata for OneToOne || (os_unfair_lock_lock(v11 + 6), sub_242A2B4B0(a5, a6, v13, &v18), type metadata accessor for XPCHostConnection(255, a5, a6, v14), sub_242A3549C(), os_unfair_lock_unlock(v11 + 6), (v18)) && (v18 = a1, , v15 = a3(&v18), , (v15))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A30, &qword_242A35E98);
    v16 = sub_242A3525C();
    MEMORY[0x28223BE20](v16);
    type metadata accessor for XPCHost.Handler(0, a5, a6, v17);
    swift_getWitnessTable();
    sub_242A3526C();
  }

  else
  {
    sub_242A3527C();
  }
}

uint64_t sub_242A1FD4C@<X0>(uint64_t *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>, uint64_t a4@<X2>, uint64_t a5@<X3>)
{
  result = sub_242A1FD7C(a2, a3, a4, a5);
  *a1 = result;
  a1[1] = v7;
  return result;
}

uint64_t sub_242A1FD7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v37 = *MEMORY[0x277D85DE8];
  *token.val = a1;
  *&token.val[2] = a2;
  *&token.val[4] = a3;
  *&token.val[6] = a4;
  v8 = SecTaskCreateWithAuditToken(0, &token);
  if (!v8)
  {
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v14 = sub_242A3517C();
    __swift_project_value_buffer(v14, qword_280B1B7F8);
    v9 = sub_242A3515C();
    v15 = sub_242A3554C();
    if (os_log_type_enabled(v9, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v33[0] = v17;
      *v16 = 136315138;
      *token.val = a1;
      *&token.val[2] = a2;
      *&token.val[4] = a3;
      *&token.val[6] = a4;
      type metadata accessor for audit_token_t(0);
      v18 = sub_242A353BC();
      v20 = sub_242A2D920(v18, v19, v33);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_242A1C000, v9, v15, "Failed to create task for %s", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v17);
      MEMORY[0x245D20850](v17, -1, -1);
      MEMORY[0x245D20850](v16, -1, -1);
    }

    goto LABEL_19;
  }

  v9 = v8;
  error = 0;
  v10 = SecTaskCopySigningIdentifier(v8, &error);
  if (!v10)
  {
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v21 = sub_242A3517C();
    __swift_project_value_buffer(v21, qword_280B1B7F8);
    v22 = sub_242A3515C();
    v23 = sub_242A3554C();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v34 = v25;
      *v24 = 136315394;
      *token.val = a1;
      *&token.val[2] = a2;
      *&token.val[4] = a3;
      *&token.val[6] = a4;
      type metadata accessor for audit_token_t(0);
      v26 = sub_242A353BC();
      v28 = sub_242A2D920(v26, v27, &v34);

      *(v24 + 4) = v28;
      *(v24 + 12) = 2080;
      swift_beginAccess();
      if (error)
      {
        *token.val = error;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8AC8, &unk_242A36D20);
        v29 = sub_242A353BC();
        v31 = v30;
      }

      else
      {
        v31 = 0xE300000000000000;
        v29 = 7104878;
      }

      v32 = sub_242A2D920(v29, v31, &v34);

      *(v24 + 14) = v32;
      _os_log_impl(&dword_242A1C000, v22, v23, "Could not get signing identifier for %s: %s", v24, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D20850](v25, -1, -1);
      MEMORY[0x245D20850](v24, -1, -1);
    }

    swift_beginAccess();
    if (error)
    {
    }

LABEL_19:

    return 0;
  }

  v11 = v10;
  v12 = sub_242A3539C();

  swift_beginAccess();
  if (error)
  {
  }

  return v12;
}

uint64_t sub_242A20178(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static XPCMessage.messageIdentifier.getter(a5);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = &unk_242A36298;
  v14[7] = v13;

  sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3537C();
}

uint64_t sub_242A20318()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242A2035C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v7 = *(v0 + 96);
  (*(*(v0 + 120) + 16))(v1, *(v0 + 80), v2);
  *(v0 + 136) = swift_getAssociatedTypeWitness();
  *(v0 + 144) = swift_getAssociatedConformanceWitness();
  TypedPayloadBox.init<A>(value:)(v1, v2, v7, v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_242A2782C;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_242A20BE8, v3, v5);
}

uint64_t sub_242A20504(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = sub_242A352CC();
  v12 = MEMORY[0x28223BE20](v11);
  v18[4] = v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v12);
  v18[6] = v18 - v15;
  MEMORY[0x28223BE20](v14);
  v16 = a2[2];
  v20 = *(v10 + 80);
  v21 = a4;
  v18[5] = a4;
  v22 = *(v10 + 88);
  v23 = a5;
  v24 = a3;
  v25 = a1;
  v18[7] = a1;

  os_unfair_lock_lock((v16 + 16));
  sub_242A20BF4((v16 + 24), sub_242A20CE0, v19, v16);
  os_unfair_lock_unlock((v16 + 16));
}

void *sub_242A20BF4(void *result, void (*a2)(uint64_t *), uint64_t a3, uint64_t a4)
{
  if (*result)
  {
    v11 = *result;

    a2(&v11);
  }

  v6 = *(a4 + 32);
  if (v6)
  {
    v7 = result;
    v8 = *(a4 + 40);

    v6(&v11, v9);
    result = sub_242A1D2CC(v6, v8);
    if (!v4)
    {
      v10 = v11;
      *v7 = v11;
      v11 = v10;

      a2(&v11);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_242A20D0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v17[1] = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v17 - v9;
  (*(v8 + 16))(v17 - v9, a3, v7);
  v11 = (*(v8 + 80) + 16) & ~*(v8 + 80);
  v12 = swift_allocObject();
  (*(v8 + 32))(v12 + v11, v10, v7);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  swift_getWitnessTable();
  sub_242A351DC();
}

uint64_t sub_242A20F00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t TypedPayloadBox.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(a2 + 16);
  v17[0] = *(a2 + 24);
  type metadata accessor for TypedPayloadBox.CodingKeys(255, v7, v17[0], a4);
  swift_getWitnessTable();
  v18 = sub_242A356EC();
  v8 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_242A357EC();
  v11 = v5[3];
  v12 = v5[5];
  v13 = __swift_project_boxed_opaque_existential_2(v5, v11);
  v14 = v17[1];
  sub_242A211F0(v13, v10, v7, v11, v17[0], v12);
  if (v14)
  {
    return (*(v8 + 8))(v10, v18);
  }

  v19 = 0;
  swift_beginAccess();
  v16 = v18;
  sub_242A356CC();
  swift_endAccess();
  return (*(v8 + 8))(v10, v16);
}

uint64_t sub_242A211F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  swift_beginAccess();
  type metadata accessor for TypedPayloadBox.CodingKeys(255, a3, a5, v8);
  swift_getWitnessTable();
  sub_242A356EC();
  sub_242A356DC();
  return swift_endAccess();
}

uint64_t sub_242A212E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = sub_242A3581C();
  v11 = v10;
  v14 = type metadata accessor for TypedPayloadDecoder(0, a5, *(a7 + 8), *(a7 + 16));
  v15 = &protocol witness table for TypedPayloadDecoder<A>;
  nullsub_1();
  swift_beginAccess();
  sub_242A213B8(v13, v9, v11);
  return swift_endAccess();
}

uint64_t sub_242A213B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a1 + 24))
  {
    sub_242A215B4(a1, v9);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *v3;
    sub_242A21460(v9, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v8;
  }

  else
  {
    sub_242A23D38(a1);
    sub_242A34CFC(a2, a3, v9);

    return sub_242A23D38(v9);
  }

  return result;
}

uint64_t sub_242A21460(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_242A215CC(a2, a3);
  v13 = v10[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = v10[3];
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_242A34F64();
      v11 = v19;
      goto LABEL_8;
    }

    sub_242A233A8(v16, a4 & 1);
    v11 = sub_242A215CC(a2, a3);
    if ((v17 & 1) != (v20 & 1))
    {
LABEL_16:
      result = sub_242A3572C();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v21 = *v5;
  if (v17)
  {
    v22 = (v21[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0(v22);

    return sub_242A215B4(a1, v22);
  }

  else
  {
    sub_242A23724(v11, a2, a3, a1, v21);
  }
}

uint64_t sub_242A215B4(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t sub_242A215CC(uint64_t a1, uint64_t a2)
{
  sub_242A3578C();
  sub_242A353DC();
  v4 = sub_242A357AC();

  return sub_242A2366C(a1, a2, v4);
}

void sub_242A21644(uint64_t *a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  if (AssociatedTypeWitness == &type metadata for OneToOne)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A48, &qword_242A360C8);
    swift_allocObject();
    v15 = sub_242A3544C();
    *v16 = a2;
    sub_242A3549C();
    *a1 = v15;
  }

  else if (AssociatedTypeWitness == &type metadata for OneToMany)
  {
    sub_242A3549C();

    sub_242A3547C();
  }

  else
  {
    v5 = AssociatedTypeWitness;
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v6 = sub_242A3517C();
    __swift_project_value_buffer(v6, qword_280B1B7F8);
    v7 = sub_242A3515C();
    v8 = sub_242A3554C();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v18 = v10;
      *v9 = 136315138;
      v17 = v5;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v12 = sub_242A348EC(&v17, MetatypeMetadata);
      v14 = sub_242A2D920(v12, v13, &v18);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_242A1C000, v7, v8, "Unsupported XPC interface kind %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v10);
      MEMORY[0x245D20850](v10, -1, -1);
      MEMORY[0x245D20850](v9, -1, -1);
    }
  }
}

uint64_t sub_242A218C8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v39 = a2;
  v7 = *&v3->_os_unfair_lock_opaque;
  v8 = sub_242A3532C();
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v7 + 88);
  v12 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = type metadata accessor for TypedPayloadBox(0, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  swift_getWitnessTable();
  nullsub_1();
  sub_242A3530C();
  v36 = v10;
  v37 = a3;
  v45[0] = v41;
  v45[1] = v42;
  v45[2] = v43;
  v45[3] = v44;
  os_unfair_lock_lock(v4 + 16);
  sub_242A23C00(v12, v11, &v41);
  type metadata accessor for XPCHost.MessageReply(255, v12, v11, v17);
  v40[0] = v8;
  v40[1] = v16;
  v18 = v16;
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  sub_242A3557C();
  os_unfair_lock_unlock(v4 + 16);
  v19 = v41;
  v20 = v36;
  if (v41)
  {
    v21 = *(&v41 + 1);
    (*(v38 + 16))(v36, a1, v8);
    v19(&v41, v20, v45);
    if (!*(&v42 + 1))
    {
      sub_242A1D2CC(v19, v21);
      v34 = v37;
      *(v37 + 32) = 0;
      *v34 = 0u;
      v34[1] = 0u;
      return (*(*(v16 - 8) + 8))(v45, v16);
    }

    v22 = v37;
    if (*(&v42 + 1) == 1)
    {
      if (sub_242A352EC())
      {
        sub_242A351FC();
      }
    }

    else if (*(&v42 + 1) != 2)
    {
      sub_242A1D2CC(v19, v21);
      sub_242A215B4(&v41, v22);
      return (*(*(v16 - 8) + 8))(v45, v16);
    }

    sub_242A1D2CC(v19, v21);
    *(v22 + 32) = 0;
    *v22 = 0u;
    *(v22 + 16) = 0u;
    return (*(*(v16 - 8) + 8))(v45, v16);
  }

  if (qword_280B1B358 != -1)
  {
    swift_once();
  }

  v23 = sub_242A3517C();
  __swift_project_value_buffer(v23, qword_280B1B7F8);
  v24 = *(v16 - 8);
  (*(v24 + 16))(&v41, v45, v16);
  v25 = sub_242A3515C();
  v26 = sub_242A3554C();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v40[0] = v28;
    *v27 = 136315138;
    v29 = v44;
    v30 = *(v24 + 8);

    v30(&v41, v16);
    v31 = sub_242A2D920(v29, *(&v29 + 1), v40);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_242A1C000, v25, v26, "No handler was registered for message %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x245D20850](v28, -1, -1);
    MEMORY[0x245D20850](v27, -1, -1);
  }

  else
  {

    v30 = *(v24 + 8);
    v30(&v41, v16);
  }

  v32 = v37;
  *(v37 + 32) = 0;
  *v32 = 0u;
  v32[1] = 0u;
  return (v30)(v45, v18);
}

uint64_t sub_242A21E9C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_242A21EEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t TypedPayloadBox.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>, uint64_t a5@<X3>)
{
  v39 = a4;
  v8 = type metadata accessor for TypedPayloadBox.CodingKeys(255, a2, a3, a5);
  WitnessTable = swift_getWitnessTable();
  v10 = sub_242A356AC();
  v40 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v35 - v11;
  v13 = (*(a3 + 8))(a2, a3);
  v14 = a1[3];
  v49 = a1;
  __swift_project_boxed_opaque_existential_2(a1, v14);
  v15 = v41;
  sub_242A357DC();
  if (v15)
  {

    v19 = v49;
  }

  else
  {
    v41 = WitnessTable;
    v16 = v40;
    LOBYTE(v43[0]) = 0;
    v17 = sub_242A3567C();
    v21 = v18;
    v38 = v10;
    v22 = *(v13 + 16);
    v23 = v16;
    v37 = v17;
    if (v22 && (v24 = sub_242A215CC(v17, v18), (v25 & 1) != 0))
    {
      v36 = v21;
      sub_242A237BC(*(v13 + 56) + 40 * v24, v43);

      sub_242A215B4(v43, v44);
      v26 = v45;
      v27 = v46;
      __swift_project_boxed_opaque_existential_2(v44, v45);
      v42 = 1;
      (*(v27 + 8))(v43, v12, &v42, v8, v41, v26, v27);
      v28 = v49;
      (*(v23 + 8))(v12, v38);
      sub_242A23BE8(v43, v47);
      *&v48 = v37;
      *(&v48 + 1) = v36;
      __swift_destroy_boxed_opaque_existential_0(v44);
      v32 = v47[1];
      v33 = v39;
      *v39 = v47[0];
      v33[1] = v32;
      v34 = v48;
      v33[2] = v47[2];
      v33[3] = v34;
    }

    else
    {

      v29 = sub_242A355FC();
      swift_allocError();
      v41 = v12;
      v31 = v30;
      v39 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A70, qword_242A36910) + 48);
      *v31 = MEMORY[0x277D84F70] + 8;
      v28 = v49;
      __swift_project_boxed_opaque_existential_2(v49, v49[3]);
      sub_242A357CC();
      *&v43[0] = 0;
      *(&v43[0] + 1) = 0xE000000000000000;
      sub_242A355CC();

      *&v43[0] = 0xD000000000000015;
      *(&v43[0] + 1) = 0x8000000242A36FE0;
      MEMORY[0x245D20070](v37, v21);

      MEMORY[0x245D20070](0xD000000000000010, 0x8000000242A37000);
      sub_242A355EC();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84170], v29);
      swift_willThrow();
      (*(v23 + 8))(v41, v38);
    }

    v19 = v28;
  }

  return __swift_destroy_boxed_opaque_existential_0(v19);
}

uint64_t static XPCMessages._typedPayloadDecoderMap.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = MEMORY[0x277D84F98];
  if (a1)
  {
    v6 = 0;
    v7 = a2 & 0xFFFFFFFFFFFFFFFELL;
    v8 = a3 & 0xFFFFFFFFFFFFFFFELL;
    do
    {
      sub_242A212E4(*(v7 + 8 * v6), &v10, a1, a2, *(v7 + 8 * v6), a3, *(v8 + 8 * v6));
      ++v6;
    }

    while (a1 != v6);
  }

  swift_beginAccess();
  return v10;
}

double (*sub_242A224A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))@<D0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  v7 = *(*v4 + 80);
  v8 = *(*v4 + 88);
  type metadata accessor for XPCHostConnection(0, v7, v8, a4);

  v10 = XPCHostConnection.__allocating_init(session:bundleIdentifier:)(v9, a2, a3);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = v7;
  v13[3] = v8;
  v13[4] = v11;
  v13[5] = v12;
  v14 = swift_allocObject();
  swift_weakInit();
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  v16[2] = v7;
  v16[3] = v8;
  v16[4] = v14;
  v16[5] = v15;
  os_unfair_lock_lock((v4 + 24));
  sub_242A21644((v4 + 32), v10);
  sub_242A3549C();
  os_unfair_lock_unlock((v4 + 24));

  return sub_242A218BC;
}

uint64_t (*sub_242A226B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t (**a3)(uint64_t a1)@<X8>))(uint64_t a1)
{
  result = sub_242A224A0(a1, *(v3 + 24), *(v3 + 32), a2);
  *a3 = result;
  a3[1] = v6;
  a3[2] = v7;
  a3[3] = v8;
  return result;
}

uint64_t XPCHostConnection.__allocating_init(session:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  sub_242A3511C();
  *(v6 + qword_280B1B2C8) = a1;
  v7 = (v6 + qword_280B1B7F0);
  *v7 = a2;
  v7[1] = a3;
  return v6;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

double sub_242A227BC@<D0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      sub_242A218C8(a1, Strong, a4);

      return result;
    }
  }

  *(a4 + 32) = 0;
  result = 0.0;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  return result;
}

void *__swift_project_boxed_opaque_existential_2(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_242A228CC(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_242A2295C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t TypedPayloadBox.CodingKeys.stringValue.getter()
{
  if (*v0)
  {
    return 118;
  }

  else
  {
    return 110;
  }
}

uint64_t sub_242A22A48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v72 = a5;
  v9 = type metadata accessor for XPCResult.FailureCodingKeys(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v70 = v9;
  v63 = sub_242A356AC();
  v62 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v71 = &v58 - v10;
  v11 = type metadata accessor for XPCResult.SuccessCodingKeys(255, a2, a3, a4);
  v12 = swift_getWitnessTable();
  v67 = v11;
  v66 = v12;
  v61 = sub_242A356AC();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v68 = &v58 - v13;
  type metadata accessor for XPCResult.CodingKeys(255, a2, a3, a4);
  v76 = swift_getWitnessTable();
  v14 = sub_242A356AC();
  v15 = *(v14 - 8);
  v74 = v14;
  v75 = v15;
  MEMORY[0x28223BE20](v14);
  v17 = &v58 - v16;
  v64 = a2;
  v65 = a3;
  v18 = type metadata accessor for XPCResult(0, a2, a3, a4);
  v73 = *(v18 - 8);
  v19 = MEMORY[0x28223BE20](v18);
  v21 = &v58 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v24 = &v58 - v23;
  MEMORY[0x28223BE20](v22);
  v26 = &v58 - v25;
  v27 = a1[3];
  v84 = a1;
  __swift_project_boxed_opaque_existential_2(a1, v27);
  v28 = v77;
  sub_242A357DC();
  if (!v28)
  {
    v77 = v24;
    v59 = v21;
    v76 = v26;
    v29 = v74;
    v30 = v17;
    *&v78 = sub_242A3569C();
    sub_242A3549C();
    swift_getWitnessTable();
    *&v82 = sub_242A3559C();
    *(&v82 + 1) = v31;
    *&v83 = v32;
    *(&v83 + 1) = v33;
    sub_242A3558C();
    swift_getWitnessTable();
    sub_242A3550C();
    v34 = v78;
    if (v78 == 2 || (v58 = v82, v78 = v82, v79 = v83, (sub_242A3552C() & 1) == 0))
    {
      v42 = sub_242A355FC();
      swift_allocError();
      v44 = v43;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A70, qword_242A36910);
      *v44 = v18;
      sub_242A3566C();
      sub_242A355EC();
      (*(*(v42 - 8) + 104))(v44, *MEMORY[0x277D84160], v42);
      swift_willThrow();
      (*(v75 + 8))(v17, v29);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v34)
      {
        LOBYTE(v78) = 1;
        v35 = v71;
        v36 = v17;
        sub_242A3565C();
        v37 = v72;
        v38 = v73;
        v39 = v75;
        sub_242A347D8();
        v40 = v35;
        v41 = v63;
        sub_242A3568C();
        (*(v62 + 8))(v40, v41);
        (*(v39 + 8))(v36, v29);
        swift_unknownObjectRelease();
        v51 = v79;
        v52 = v80;
        v53 = v81;
        v54 = v59;
        *v59 = v78;
        v54[1] = v51;
        *(v54 + 4) = v52;
        *(v54 + 5) = v53;
        swift_storeEnumTagMultiPayload();
        v55 = *(v38 + 32);
        v56 = v76;
        v55(v76, v54, v18);
      }

      else
      {
        LOBYTE(v78) = 0;
        v45 = v68;
        v46 = v30;
        sub_242A3565C();
        v47 = v75;
        v48 = v73;
        v49 = v61;
        sub_242A3568C();
        (*(v60 + 8))(v45, v49);
        (*(v47 + 8))(v46, v29);
        swift_unknownObjectRelease();
        v57 = v77;
        swift_storeEnumTagMultiPayload();
        v55 = *(v48 + 32);
        v56 = v76;
        v55(v76, v57, v18);
        v37 = v72;
      }

      v55(v37, v56, v18);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v84);
}

uint64_t sub_242A23290@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_242A232C4(a1, a2);
  *a4 = result;
  return result;
}

uint64_t sub_242A232C4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (sub_242A356FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6572756C696166 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    v6 = sub_242A356FC();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_242A233A8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8AD8, &qword_242A36E68);
  v33 = v4;
  result = sub_242A3563C();
  v7 = result;
  if (*(v5 + 16))
  {
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
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_242A215B4(v24, v34);
      }

      else
      {
        sub_242A237BC(v24, v34);
      }

      sub_242A3578C();
      sub_242A353DC();
      result = sub_242A357AC();
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_242A215B4(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_242A2366C(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_242A356FC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

uint64_t sub_242A23724(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_242A215B4(a4, a5[7] + 40 * a1);
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

uint64_t sub_242A237BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void *TypedPayloadDecoder.decode<A>(fromDecodingContainer:forKey:)@<X0>(uint64_t a1@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 24) = *(a1 + 16);
  *(a4 + 32) = *(a1 + 24);
  __swift_allocate_boxed_opaque_existential_2(a4);
  sub_242A356AC();
  result = sub_242A3568C();
  if (v4)
  {
    return __swift_deallocate_boxed_opaque_existential_2(a4);
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

uint64_t sub_242A23958(char a1)
{
  if (a1)
  {
    return 0x6572756C696166;
  }

  else
  {
    return 0x73736563637573;
  }
}

uint64_t sub_242A239A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v7 = *(v5 + 1);
    v8 = *(v5 + 4);
    v9 = *(v5 + 5);
    *a2 = *v5;
    *(a2 + 16) = v7;
    *(a2 + 32) = v8;
    *(a2 + 40) = v9;
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 32))(a2, v5, *(a1 + 16));
  }

  sub_242A1F134();
  sub_242A357BC();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_242A23B18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a1[2] - 8) + 32))(a3, v3);
  }

  (*(*(a1[3] - 8) + 32))(a2, v3, a1[3]);
  return swift_willThrowTypedImpl();
}

_OWORD *sub_242A23BE8(__int128 *a1, _OWORD *a2)
{
  v2 = *a1;
  v3 = a1[2];
  a2[1] = a1[1];
  a2[2] = v3;
  *a2 = v2;
  return a2;
}

double sub_242A23C00@<D0>(uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  type metadata accessor for XPCHost.MessageReply(255, a3, a4, a4);

  *&v10 = sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(&v10 + 1) = type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  swift_getFunctionTypeMetadata();
  sub_242A3536C();

  result = *&v10;
  *a5 = v10;
  return result;
}

uint64_t sub_242A23D38(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8AD0, &qword_242A36E60);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_242A23DA0(uint64_t a1)
{
  (*(v1 + 48))();
  v3 = sub_242A3532C();
  v4 = *(*(v3 - 8) + 8);

  return v4(a1, v3);
}

void sub_242A23E40(uint64_t a1@<X0>, char *a2@<X1>, void (*a3)(char *)@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v80 = a4;
  v81 = a3;
  v84 = a2;
  v77 = a1;
  v85 = a9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v69 = swift_getAssociatedConformanceWitness();
  v83 = type metadata accessor for XPCResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v69);
  v82 = *(v83 - 8);
  v11 = MEMORY[0x28223BE20](v83);
  v76 = &v69 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v79 = &v69 - v13;
  v75 = type metadata accessor for ReceivedMessage(0, a6, a8, v14);
  v78 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v74 = &v69 - v15;
  v73 = sub_242A3557C();
  v72 = *(v73 - 8);
  v16 = MEMORY[0x28223BE20](v73);
  v18 = &v69 - v17;
  v19 = *(a6 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = &v69 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v24 = &v69 - v23;
  v25 = swift_getAssociatedTypeWitness();
  v26 = swift_getAssociatedConformanceWitness();
  v27 = v25;
  v28 = v19;
  v29 = v84;
  v31 = type metadata accessor for TypedPayloadBox(0, v27, v26, v30);
  TypedPayloadBox.unbox<A>(as:)(a6, v18);
  if ((*(v28 + 48))(v18, 1, a6) == 1)
  {
    (*(v72 + 8))(v18, v73);
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v32 = sub_242A3517C();
    __swift_project_value_buffer(v32, qword_280B1B7F8);
    v33 = *(v31 - 8);
    v34 = *(v33 + 16);
    v34(v88, v29, v31);
    v35 = sub_242A3515C();
    v36 = sub_242A3554C();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v87 = v38;
      *v37 = 136315394;
      v34(v86, v88, v31);
      v39 = sub_242A348EC(v86, v31);
      v41 = v40;
      v42 = sub_242A3557C();
      (*(*(v42 - 8) + 8))(v86, v42);
      (*(v33 + 8))(v88, v31);
      v43 = sub_242A2D920(v39, v41, &v87);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2080;
      v86[0] = a6;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v45 = sub_242A348EC(v86, MetatypeMetadata);
      v47 = sub_242A2D920(v45, v46, &v87);

      *(v37 + 14) = v47;
      _os_log_impl(&dword_242A1C000, v35, v36, "Failed to unbox message %s as type %s", v37, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D20850](v38, -1, -1);
      MEMORY[0x245D20850](v37, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v88, v31);
    }

    v63 = v85;
    *(v85 + 32) = 0;
    *v63 = 0u;
    v63[1] = 0u;
  }

  else
  {
    v48 = *(v28 + 32);
    v48(v24, v18, a6);
    v49 = v28;
    v50 = *(v28 + 16);
    v84 = v24;
    v50(v22, v24, a6);
    v51 = sub_242A352DC();
    v53 = v52;
    v55 = v54;
    v57 = v56;
    v58 = v74;
    v48(v74, v22, a6);
    v59 = v75;
    v60 = &v58[*(v75 + 36)];
    *v60 = v51;
    v60[1] = v53;
    v60[2] = v55;
    v60[3] = v57;
    v61 = v76;
    v81(v58);
    v62 = v59;
    v64 = v83;
    swift_storeEnumTagMultiPayload();
    v65 = v82;
    v66 = v79;
    (*(v82 + 32))(v79, v61, v64);
    v67 = v85;
    *(v85 + 24) = v64;
    v67[4] = swift_getWitnessTable();
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(v67);
    (*(v65 + 32))(boxed_opaque_existential_2, v66, v64);
    (*(v78 + 8))(v58, v62);
    (*(v49 + 8))(v84, a6);
  }
}

uint64_t sub_242A24688(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t TypedPayloadBox.unbox<A>(as:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_242A24688(v3, &v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A68, &qword_242A36308);
  v6 = swift_dynamicCast();
  return (*(*(a1 - 8) + 56))(a2, v6 ^ 1u, 1, a1);
}

uint64_t sub_242A24794(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v4 = result;
    v5 = *(result + 16);

    os_unfair_lock_lock((v5 + 16));
    v6 = *(v5 + 24);
    *(v5 + 24) = 0;
    os_unfair_lock_unlock((v5 + 16));
    if (v6)
    {
      v14 = v6;
      v7 = *(v5 + 48);
      if (v7)
      {
        v8 = *(v5 + 56);

        v7(&v14);

        sub_242A1D2CC(v7, v8);
      }

      else
      {
      }
    }

    os_unfair_lock_lock((v4 + 40));
    v10 = *(v4 + 48);
    v9 = *(v4 + 56);
    if (v10)
    {
      v11 = sub_242A352CC();
      sub_242A1EC2C();
      v12 = swift_allocError();
      (*(*(v11 - 8) + 16))(v13, a1, v11);
      v14 = v12;

      v10(&v14);
      sub_242A1D2CC(v10, v9);
    }

    *(v4 + 48) = v10;
    *(v4 + 56) = v9;
    os_unfair_lock_unlock((v4 + 40));
  }

  return result;
}

uint64_t sub_242A2494C(void *a1, void *a2)
{
  v4 = a2[2];
  v5 = a2[3];
  v6 = a2[4];
  v7 = type metadata accessor for XPCResult.FailureCodingKeys(255, v4, v5, v6);
  WitnessTable = swift_getWitnessTable();
  v42 = v7;
  v46 = sub_242A356EC();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v43 = v35 - v8;
  v9 = type metadata accessor for XPCResult.SuccessCodingKeys(255, v4, v5, v6);
  v10 = swift_getWitnessTable();
  v37 = v9;
  v35[1] = v10;
  v11 = sub_242A356EC();
  v39 = *(v11 - 8);
  v40 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v36 = v35 - v13;
  v38 = *(v4 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v35[0] = v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 - 1);
  MEMORY[0x28223BE20](v14);
  v18 = (v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v47 = v4;
  v45 = v6;
  type metadata accessor for XPCResult.CodingKeys(255, v4, v5, v6);
  swift_getWitnessTable();
  v56 = sub_242A356EC();
  v49 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v20 = v35 - v19;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_242A357EC();
  (*(v16 + 16))(v18, v48, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v21 = *v18;
    v22 = v18[1];
    v24 = v18[2];
    v23 = v18[3];
    v26 = v18[4];
    v25 = v18[5];
    LOBYTE(v50) = 1;
    v27 = v43;
    sub_242A356BC();
    v50 = v21;
    v51 = v22;
    v52 = v24;
    v53 = v23;
    v54 = v26;
    v55 = v25;
    sub_242A3482C();
    v28 = v46;
    sub_242A356DC();
    (*(v44 + 8))(v27, v28);
    (*(v49 + 8))(v20, v56);
  }

  else
  {
    v30 = v38;
    v31 = v35[0];
    v32 = v47;
    (*(v38 + 32))(v35[0], v18, v47);
    LOBYTE(v50) = 0;
    v33 = v36;
    sub_242A356BC();
    v34 = v40;
    sub_242A356DC();
    (*(v39 + 8))(v33, v34);
    (*(v30 + 8))(v31, v32);
    return (*(v49 + 8))(v20, v56);
  }
}

double sub_242A24F1C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v100 = a4;
  v95 = a3;
  v91 = a1;
  v105 = a9;
  v99 = sub_242A3532C();
  v96 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v90 = v16;
  v93 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A38, &qword_242A36078);
  MEMORY[0x28223BE20](v17 - 8);
  v103 = &v85 - v18;
  v104 = type metadata accessor for ReceivedMessage(0, a6, a8, v19);
  v92 = *(v104 - 8);
  v20 = MEMORY[0x28223BE20](v104);
  v89 = &v85 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = v21;
  MEMORY[0x28223BE20](v20);
  v102 = &v85 - v22;
  v87 = sub_242A3557C();
  v86 = *(v87 - 8);
  v23 = MEMORY[0x28223BE20](v87);
  v25 = &v85 - v24;
  v26 = *(a6 - 8);
  v27 = MEMORY[0x28223BE20](v23);
  v29 = &v85 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v101 = &v85 - v30;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v97 = a7;
  v94 = a5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v34 = type metadata accessor for TypedPayloadBox(0, AssociatedTypeWitness, AssociatedConformanceWitness, v33);
  v98 = a8;
  TypedPayloadBox.unbox<A>(as:)(a6, v25);
  v35 = *(v26 + 48);
  v106 = a6;
  if (v35(v25, 1, a6) == 1)
  {
    (*(v86 + 8))(v25, v87);
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v36 = sub_242A3517C();
    __swift_project_value_buffer(v36, qword_280B1B7F8);
    v37 = *(v34 - 8);
    v38 = *(v37 + 16);
    v38(v109, a2, v34);
    v39 = sub_242A3515C();
    v40 = sub_242A3554C();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v108 = v42;
      *v41 = 136315394;
      v38(v107, v109, v34);
      v43 = sub_242A348EC(v107, v34);
      v45 = v44;
      v46 = sub_242A3557C();
      (*(*(v46 - 8) + 8))(v107, v46);
      (*(v37 + 8))(v109, v34);
      v47 = sub_242A2D920(v43, v45, &v108);

      *(v41 + 4) = v47;
      *(v41 + 12) = 2080;
      *v107 = v106;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v49 = sub_242A348EC(v107, MetatypeMetadata);
      v51 = sub_242A2D920(v49, v50, &v108);

      *(v41 + 14) = v51;
      _os_log_impl(&dword_242A1C000, v39, v40, "Failed to unbox message %s as type %s", v41, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D20850](v42, -1, -1);
      MEMORY[0x245D20850](v41, -1, -1);
    }

    else
    {

      (*(v37 + 8))(v109, v34);
    }

    v84 = v105;
    v105[4] = 0;
    result = 0.0;
    *v84 = 0u;
    v84[1] = 0u;
  }

  else
  {
    v87 = a11;
    v86 = a10;
    v85 = v26;
    v52 = *(v26 + 32);
    v53 = v101;
    v54 = v106;
    v52(v101, v25, v106);
    v55 = v53;
    v56 = v54;
    (*(v26 + 16))(v29, v55, v54);
    v57 = v91;
    v58 = sub_242A352DC();
    v60 = v59;
    v62 = v61;
    v64 = v63;
    v65 = v102;
    v52(v102, v29, v56);
    v66 = v104;
    v67 = &v65[*(v104 + 36)];
    *v67 = v58;
    v67[1] = v60;
    v67[2] = v62;
    v67[3] = v64;
    v68 = sub_242A354FC();
    (*(*(v68 - 8) + 56))(v103, 1, 1, v68);
    v69 = v92;
    v70 = v89;
    (*(v92 + 16))(v89, v65, v66);
    v71 = v96;
    v72 = v93;
    v73 = v99;
    (*(v96 + 16))(v93, v57, v99);
    v74 = (*(v69 + 80) + 80) & ~*(v69 + 80);
    v75 = (v88 + *(v71 + 80) + v74) & ~*(v71 + 80);
    v76 = swift_allocObject();
    *(v76 + 2) = 0;
    *(v76 + 3) = 0;
    v77 = v106;
    *(v76 + 4) = v94;
    *(v76 + 5) = v77;
    v78 = v98;
    *(v76 + 6) = v97;
    *(v76 + 7) = v78;
    v79 = v100;
    *(v76 + 8) = v95;
    *(v76 + 9) = v79;
    v80 = &v76[v74];
    v81 = v104;
    (*(v69 + 32))(v80, v70, v104);
    (*(v71 + 32))(&v76[v75], v72, v73);

    sub_242A2EAA0(0, 0, v103, v87, v76);

    (*(v69 + 8))(v102, v81);
    (*(v85 + 8))(v101, v77);
    v82 = v105;
    *v105 = 0;
    v82[1] = 0;
    v82[2] = 0;
    *&result = 2;
    *(v82 + 3) = xmmword_242A35E70;
  }

  return result;
}

uint64_t sub_242A25820(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_242A25880(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_242A271C0;

  return sub_242A25938(a1, v4);
}

uint64_t sub_242A25938(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_242A27698;

  return v6(a1);
}

uint64_t sub_242A25A30(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = *(type metadata accessor for ReceivedMessage(0, v4[5], v4[7], a4) - 8);
  v8 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_242A3532C() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = v4[8];
  v15 = v4[9];
  v16 = swift_task_alloc();
  *(v6 + 16) = v16;
  *v16 = v6;
  v16[1] = sub_242A271C0;

  return sub_242A25BC8(a1, v12, v13, v14, v15, v4 + v8, v4 + v11);
}

uint64_t sub_242A25BC8(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  *(v7 + 72) = a7;
  v11 = (a4 + *a4);
  v9 = swift_task_alloc();
  *(v7 + 80) = v9;
  *v9 = v7;
  v9[1] = sub_242A25CDC;

  return v11(a6);
}

uint64_t sub_242A25CDC()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_242A2D744;
  }

  else
  {
    v2 = sub_242A25DF0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_242A25DF0()
{
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0;
  *(v0 + 16) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
  sub_242A25EAC();
  sub_242A352FC();
  sub_242A26D50(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_242A25EAC()
{
  result = qword_280B1AF98;
  if (!qword_280B1AF98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A28, &qword_242A36090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1AF98);
  }

  return result;
}

uint64_t XPCClient.__deallocating_deinit()
{
  XPCClient.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void *XPCClient.deinit()
{
  v1 = v0;
  v2 = *(v0 + 16);

  os_unfair_lock_lock((v2 + 16));
  v3 = *(v2 + 24);
  *(v2 + 24) = 0;
  os_unfair_lock_unlock((v2 + 16));
  if (v3)
  {
    v11[0] = v3;
    v4 = *(v2 + 48);
    if (v4)
    {
      v5 = *(v2 + 56);

      v4(v11);
      sub_242A1D2CC(v4, v5);
    }
  }

  v11[0] = sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11[1] = type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  v9 = sub_242A3514C();
  sub_242A26414(v9);
  sub_242A25820(v1 + 48, &qword_27ECD8A58, &qword_242A361B0);
  return v1;
}

uint64_t sub_242A26120()
{
  sub_242A26178();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_242A26178()
{
  v1 = v0;
  sub_242A3557C();
  sub_242A3513C();
  v2 = sub_242A3514C();
  sub_242A26414(v2);
  sub_242A1D2CC(*(v1 + *(*v1 + 96)), *(v1 + *(*v1 + 96) + 8));
  sub_242A1D2CC(*(v1 + *(*v1 + 104)), *(v1 + *(*v1 + 104) + 8));
  return v0;
}

uint64_t sub_242A26244()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v8 = *(v0 + 104);
  (*(*(v0 + 128) + 16))(v1, *(v0 + 88), v2);
  *(v0 + 144) = swift_getAssociatedTypeWitness();
  *(v0 + 152) = swift_getAssociatedConformanceWitness();
  TypedPayloadBox.init<A>(value:)(v1, v2, v8, v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v8;
  *(v3 + 40) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v4 = v0;
  v4[1] = sub_242A28834;
  v6 = *(v0 + 80);

  return MEMORY[0x2822008A0](v6, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_242A26424, v3, AssociatedTypeWitness);
}

uint64_t sub_242A2644C(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a2;
  v11 = sub_242A352CC();
  v17[9] = *(v11 - 8);
  v12 = MEMORY[0x28223BE20](v11);
  v13 = MEMORY[0x28223BE20](v12);
  v17[8] = v17 - v14;
  MEMORY[0x28223BE20](v13);
  v15 = a2[2];
  v19 = *(v10 + 80);
  v20 = a4;
  v21 = *(v10 + 88);
  v22 = a5;
  v17[7] = a5;
  v23 = a3;
  v24 = a1;

  os_unfair_lock_lock((v15 + 16));
  sub_242A20BF4((v15 + 24), sub_242A271E0, v18, v15);
  os_unfair_lock_unlock((v15 + 16));
}

uint64_t sub_242A26B94(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A78, &qword_242A36540);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_242A26CE0();
  sub_242A357EC();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_242A26CE0()
{
  result = qword_280B1AFB0;
  if (!qword_280B1AFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1AFB0);
  }

  return result;
}

void sub_242A26D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7)
  {
  }
}

uint64_t sub_242A26DA0(uint64_t a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_242A26E1C(a1, v4);
}

uint64_t sub_242A26E1C(uint64_t a1, uint64_t a2)
{
  v25[1] = a2;
  v3 = sub_242A352CC();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_242A3532C();
  v25[0] = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A18, &qword_242A35DC8);
  MEMORY[0x28223BE20](v10);
  v12 = v25 - v11;
  sub_242A32970(a1, v25 - v11, &qword_27ECD8A18, &qword_242A35DC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v4 + 32))(v6, v12, v3);
    sub_242A1EC2C();
    v13 = swift_allocError();
    (*(v4 + 16))(v14, v6, v3);
    v26 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
    sub_242A354BC();
    return (*(v4 + 8))(v6, v3);
  }

  else
  {
    v16 = v25[0];
    (*(v25[0] + 32))(v9, v12, v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
    sub_242A27790(&qword_280B1AFB8, &unk_242A368E8);
    sub_242A3530C();
    if (v32 == 1)
    {
      v18 = v26;
      v17 = v27;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      v22 = v31;
      sub_242A1F134();
      v23 = swift_allocError();
      *v24 = v18;
      v24[1] = v17;
      v24[2] = v19;
      v24[3] = v20;
      v24[4] = v21;
      v24[5] = v22;
      v26 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
      sub_242A354BC();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
      sub_242A354CC();
    }

    return (*(v16 + 8))(v9, v7);
  }
}

uint64_t sub_242A2720C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A18, &qword_242A35DC8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_242A2727C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_242A27370(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v24 = a7;
  v26 = a2;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  v12 = sub_242A354DC();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v23 - v14;
  v25 = *a1;
  (*(v13 + 16))(&v23 - v14, a3, v12);
  v16 = (*(v13 + 80) + 48) & ~*(v13 + 80);
  v17 = swift_allocObject();
  *(v17 + 2) = a4;
  *(v17 + 3) = a5;
  v18 = v24;
  *(v17 + 4) = a6;
  *(v17 + 5) = v18;
  (*(v13 + 32))(&v17[v16], v15, v12);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(0, AssociatedTypeWitness, AssociatedConformanceWitness, v21);
  swift_getWitnessTable();
  sub_242A351DC();
}

uint64_t sub_242A275B8()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  v1 = sub_242A354DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242A27698()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_242A27790(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A28, &qword_242A36090);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_242A2782C()
{
  *(*v1 + 168) = v0;

  if (v0)
  {
    v2 = sub_242A29900;
  }

  else
  {

    v2 = sub_242A27948;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_242A27948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TypedPayloadBox(0, v4[17], v4[18], a4);
  (*(*(v5 - 8) + 8))(v4 + 2, v5);

  v6 = v4[1];

  return v6();
}

uint64_t sub_242A279EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v7 = *(type metadata accessor for ReceivedMessage(0, v4[5], v4[7], a4) - 8);
  v8 = (*(v7 + 80) + 80) & ~*(v7 + 80);
  v9 = *(v7 + 64);
  v10 = *(sub_242A3532C() - 8);
  v11 = (v8 + v9 + *(v10 + 80)) & ~*(v10 + 80);
  v12 = v4[2];
  v13 = v4[3];
  v14 = v4[8];
  v15 = v4[9];
  v16 = swift_task_alloc();
  *(v6 + 16) = v16;
  *v16 = v6;
  v16[1] = sub_242A2727C;

  return sub_242A27B84(a1, v12, v13, v14, v15, v4 + v8, v4 + v11);
}

uint64_t sub_242A27B84(uint64_t a1, uint64_t a2, uint64_t a3, int *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[3] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7[4] = AssociatedConformanceWitness;
  v12 = swift_getAssociatedConformanceWitness();
  v7[5] = v12;
  v13 = type metadata accessor for XPCResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v7[6] = v13;
  v7[7] = *(v13 - 8);
  v14 = swift_task_alloc();
  v7[8] = v14;
  v7[9] = swift_task_alloc();
  v17 = (a4 + *a4);
  v15 = swift_task_alloc();
  v7[10] = v15;
  *v15 = v7;
  v15[1] = sub_242A27D94;

  return v17(v14, a6);
}

uint64_t sub_242A27D94()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_242A2C9A0;
  }

  else
  {
    v2 = sub_242A27EA8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_242A27EA8()
{
  v1 = v0[8];
  v2 = v0[9];
  v3 = v0[6];
  v4 = v0[7];
  swift_storeEnumTagMultiPayload();
  (*(v4 + 32))(v2, v1, v3);
  v5 = v0[9];
  v6 = v0[6];
  v7 = v0[7];
  swift_getWitnessTable();
  sub_242A352FC();
  (*(v7 + 8))(v5, v6);

  v8 = v0[1];

  return v8();
}

uint64_t sub_242A27FA4(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  v7 = *(sub_242A354DC() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_242A2808C(a1, v8, v3, v4, v5, v6);
}

uint64_t sub_242A2808C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v39 = a1;
  v40 = a2;
  v36 = sub_242A352CC();
  v38 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v37 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = sub_242A1F134();
  v8 = sub_242A357BC();
  v33 = *(v8 - 8);
  v34 = v8;
  MEMORY[0x28223BE20](v8);
  v32 = &v31 - v9;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for XPCResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v31 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v31 - v13;
  v15 = sub_242A3532C();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A18, &qword_242A35DC8);
  MEMORY[0x28223BE20](v19);
  v21 = &v31 - v20;
  sub_242A32970(v39, &v31 - v20, &qword_27ECD8A18, &qword_242A35DC8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v23 = v37;
    v22 = v38;
    v24 = v36;
    (*(v38 + 32))(v37, v21, v36);
    sub_242A1EC2C();
    v25 = swift_allocError();
    (*(v22 + 16))(v26, v23, v24);
    v41 = v25;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
    sub_242A354DC();
    sub_242A354BC();
    return (*(v22 + 8))(v23, v24);
  }

  else
  {
    v28 = v16;
    (*(v16 + 32))(v18, v21, v15);
    swift_getWitnessTable();
    sub_242A3530C();
    v29 = v32;
    sub_242A239A8(v12, v32);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
    v30 = sub_242A354DC();
    sub_242A285D4(v29, v30, &type metadata for XPCResultError, v35);
    (*(v33 + 8))(v29, v34);
    (*(v31 + 8))(v14, v12);
    return (*(v28 + 8))(v18, v15);
  }
}

uint64_t sub_242A285D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a2;
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v8);
  v14 = v23 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_242A357BC();
  MEMORY[0x28223BE20](v15);
  v17 = v23 - v16;
  (*(v18 + 16))(v23 - v16, a1, v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v19 = *(v12 + 32);
    v19(v14, v17, a3);
    v20 = swift_allocError();
    v19(v21, v14, a3);
    v23[3] = v20;
    return sub_242A354BC();
  }

  else
  {
    (*(v7 + 32))(v10, v17, v6);
    return sub_242A354CC();
  }
}

uint64_t sub_242A28834()
{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = sub_242A2A3A8;
  }

  else
  {

    v2 = sub_242A28950;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_242A28950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for TypedPayloadBox(0, v4[18], v4[19], a4);
  (*(*(v5 - 8) + 8))(v4 + 2, v5);

  v6 = v4[1];

  return v6();
}

uint64_t *XPCHost.init(requestHandler:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = *v3;
  v6 = sub_242A3524C();
  MEMORY[0x28223BE20](v6 - 8);
  v3[2] = 0;
  v7 = *(v5 + 80);
  v8 = *(v5 + 88);
  type metadata accessor for XPCHostConnection(0, v7, v8, v9);
  v25 = sub_242A3534C();
  *(v3 + 6) = 0;
  v3[4] = 0;
  v10 = sub_242A3549C();
  (*(*(v10 - 8) + 32))(v3 + 4, &v25, v10);
  v25 = 0;
  v26 = 0;
  *(v3 + 10) = 0;
  v3[7] = 0;
  v3[6] = 0;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  swift_getFunctionTypeMetadata2();
  v11 = sub_242A3557C();
  (*(*(v11 - 8) + 32))(v3 + 6, &v25, v11);
  type metadata accessor for XPCHost.MessageReply(255, v7, v8, v12);
  v25 = sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v26 = type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v15);
  swift_getFunctionTypeMetadata();
  v25 = sub_242A3533C();
  *(v3 + 16) = 0;
  v3[9] = 0;
  v16 = sub_242A3535C();
  (*(*(v16 - 8) + 32))(v3 + 9, &v25, v16);
  v17 = swift_allocObject();
  swift_weakInit();
  v18 = swift_allocObject();
  v18[2] = v7;
  v18[3] = v8;
  v18[4] = v17;
  v18[5] = a1;
  v18[6] = a2;
  v19 = *(v8 + 56);

  v19(&v25, v7, v8);
  sub_242A3523C();
  sub_242A352BC();
  swift_allocObject();
  v20 = v27;
  v21 = sub_242A3529C();
  if (v20)
  {
  }

  else
  {
    v22 = v21;

    v3[2] = v22;
  }

  return v3;
}

uint64_t sub_242A28DC8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_242A28E00()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_242A28E40(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  type metadata accessor for XPCHostConnection(255, *a1, a1[1], a4);
  sub_242A3549C();
  return sub_242A3513C();
}

uint64_t sub_242A28E98(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x277D84F78] + 8;
  if (MEMORY[0x277D85020])
  {
    type metadata accessor for XPCHostConnection(255, *a1, a1[1], a4);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
    swift_getFunctionTypeMetadata2();
    sub_242A3557C();
    return sub_242A3513C();
  }

  return v4;
}

uint64_t sub_242A28F28(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!MEMORY[0x277D85020])
  {
    return MEMORY[0x277D84F78] + 8;
  }

  type metadata accessor for XPCHost.MessageReply(255, *a1, a1[1], a4);
  sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3513C();
}

uint64_t sub_242A2903C()
{
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  v1 = sub_242A354DC();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242A2910C()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_242A291A0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_242A291D8()
{
  sub_242A26D50(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return MEMORY[0x2821FE8E8](v0, 65, 7);
}

uint64_t sub_242A2921C()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242A29270()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242A292A8()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_0((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_242A2933C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = sub_242A332F8(a1, a2);
  *a4 = result & 1;
  return result;
}

uint64_t XPCHostConnection.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = qword_280B1B7E8;
  v4 = sub_242A3512C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t XPCHostConnection.bundleIdentifier.getter()
{
  v1 = *(v0 + qword_280B1B7F0);

  return v1;
}

uint64_t XPCHostConnection.init(session:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_242A3511C();
  *(v3 + qword_280B1B2C8) = a1;
  v7 = (v3 + qword_280B1B7F0);
  *v7 = a2;
  v7[1] = a3;
  return v3;
}

uint64_t XPCHostConnection.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  v6 = &v13[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v6);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  TypedPayloadBox.init<A>(value:)(v6, a2, a3, v13);
  v11 = type metadata accessor for TypedPayloadBox(0, AssociatedTypeWitness, AssociatedConformanceWitness, v10);
  swift_getWitnessTable();
  sub_242A351EC();
  return (*(*(v11 - 8) + 8))(v13, v11);
}

{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = *v3;
  v4[15] = *(a2 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A29758, 0, 0);
}

uint64_t sub_242A29758()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 88);
  v7 = *(v0 + 96);
  (*(*(v0 + 120) + 16))(v1, *(v0 + 80), v2);
  *(v0 + 136) = swift_getAssociatedTypeWitness();
  *(v0 + 144) = swift_getAssociatedConformanceWitness();
  TypedPayloadBox.init<A>(value:)(v1, v2, v7, v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 152) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v7;
  *(v3 + 40) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 160) = v4;
  *v4 = v0;
  v4[1] = sub_242A2782C;
  v5 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822008A0](v4, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_242A29D64, v3, v5);
}

uint64_t sub_242A29900()
{
  v1 = v0[18];
  v2 = v0[17];

  v4 = type metadata accessor for TypedPayloadBox(0, v2, v1, v3);
  (*(*(v4 - 8) + 8))(v0 + 2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_242A299B8(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v15 = a4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  (*(v6 + 16))(&v15 - v7, a1, v5);
  v9 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v10 = swift_allocObject();
  (*(v6 + 32))(v10 + v9, v8, v5);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  swift_getWitnessTable();
  sub_242A351DC();
}

uint64_t sub_242A29D70(uint64_t a1)
{
  v2 = sub_242A352CC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_242A3532C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A18, &qword_242A35DC8);
  MEMORY[0x28223BE20](v10);
  v12 = &v24 - v11;
  sub_242A2720C(a1, &v24 - v11);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v5, v12, v2);
    sub_242A2B18C(qword_280B1B6E0, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    v13 = swift_allocError();
    (*(v3 + 16))(v14, v5, v2);
    v25 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
    sub_242A354BC();
    return (*(v3 + 8))(v5, v2);
  }

  else
  {
    (*(v7 + 32))(v9, v12, v6);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
    sub_242A2B250();
    sub_242A3530C();
    if (v31 == 1)
    {
      v16 = v25;
      v17 = v26;
      v18 = v27;
      v19 = v28;
      v20 = v29;
      v21 = v30;
      sub_242A1F134();
      v22 = swift_allocError();
      *v23 = v16;
      v23[1] = v17;
      v23[2] = v18;
      v23[3] = v19;
      v23[4] = v20;
      v23[5] = v21;
      v25 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
      sub_242A354BC();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);
      sub_242A354CC();
    }

    return (*(v7 + 8))(v9, v6);
  }
}

uint64_t XPCHostConnection.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v5[15] = *v4;
  v5[16] = *(a3 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A2A1DC, 0, 0);
}

uint64_t sub_242A2A1DC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 96);
  v8 = *(v0 + 104);
  (*(*(v0 + 128) + 16))(v1, *(v0 + 88), v2);
  *(v0 + 144) = swift_getAssociatedTypeWitness();
  *(v0 + 152) = swift_getAssociatedConformanceWitness();
  TypedPayloadBox.init<A>(value:)(v1, v2, v8, v0 + 16);
  v3 = swift_task_alloc();
  *(v0 + 160) = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v8;
  *(v3 + 40) = v0 + 16;
  v4 = swift_task_alloc();
  *(v0 + 168) = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *v4 = v0;
  v4[1] = sub_242A28834;
  v6 = *(v0 + 80);

  return MEMORY[0x2822008A0](v6, 0, 0, 0x293A5F28646E6573, 0xE800000000000000, sub_242A2A860, v3, AssociatedTypeWitness);
}

uint64_t sub_242A2A3A8()
{
  v1 = v0[19];
  v2 = v0[18];

  v4 = type metadata accessor for TypedPayloadBox(0, v2, v1, v3);
  (*(*(v4 - 8) + 8))(v0 + 2, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_242A2A460(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v21 = a5;
  v22 = a3;
  v7 = *a2;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  v8 = sub_242A354DC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v20 - v10;
  v12 = *(v9 + 16);
  v20[2] = a1;
  v12(v20 - v10, a1, v8);
  v13 = (*(v9 + 80) + 48) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = *(v7 + 80);
  *(v14 + 3) = a4;
  v20[1] = a4;
  v15 = v21;
  *(v14 + 4) = *(v7 + 88);
  *(v14 + 5) = v15;
  (*(v9 + 32))(&v14[v13], v11, v8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  swift_getWitnessTable();
  sub_242A351DC();
}

uint64_t sub_242A2A86C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v36 = a1;
  v37 = a2;
  v6 = sub_242A352CC();
  v35 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = sub_242A1F134();
  v10 = sub_242A357BC();
  v32 = *(v10 - 8);
  v33 = v10;
  MEMORY[0x28223BE20](v10);
  v31 = &v30 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = type metadata accessor for XPCResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v30 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v30 - v15;
  v17 = sub_242A3532C();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A18, &qword_242A35DC8);
  MEMORY[0x28223BE20](v21);
  v23 = &v30 - v22;
  sub_242A2720C(v36, &v30 - v22);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v24 = v35;
    (*(v35 + 32))(v8, v23, v6);
    sub_242A2B18C(qword_280B1B6E0, MEMORY[0x277D855E8], MEMORY[0x277D855F0]);
    v25 = swift_allocError();
    (*(v24 + 16))(v26, v8, v6);
    v38 = v25;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
    sub_242A354DC();
    sub_242A354BC();
    return (*(v24 + 8))(v8, v6);
  }

  else
  {
    (*(v18 + 32))(v20, v23, v17);
    swift_getWitnessTable();
    sub_242A3530C();
    v28 = v31;
    sub_242A239A8(v14, v31);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
    v29 = sub_242A354DC();
    sub_242A285D4(v28, v29, &type metadata for XPCResultError, v34);
    (*(v32 + 8))(v28, v33);
    (*(v30 + 8))(v16, v14);
    return (*(v18 + 8))(v20, v17);
  }
}

uint64_t sub_242A2AE34(uint64_t a1)
{
  result = sub_242A3512C();
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

__n128 __swift_memcpy32_4(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_242A2AF14(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242A2AF34(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
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

uint64_t sub_242A2AFBC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[4];
  v6 = v1[5];
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  v7 = *(sub_242A354DC() - 8);
  v8 = v1 + ((*(v7 + 80) + 48) & ~*(v7 + 80));

  return sub_242A2A86C(a1, v8, v3, v4, v5, v6);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_242A2B0DC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A10, &qword_242A35DC0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
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

uint64_t sub_242A2B18C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_242A2B1D4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A20, &unk_242A35DD0);

  return sub_242A29D70(a1);
}

unint64_t sub_242A2B250()
{
  result = qword_280B1AFB8;
  if (!qword_280B1AFB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A28, &qword_242A36090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1AFB8);
  }

  return result;
}

void sub_242A2B2C8(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t __swift_deallocate_boxed_opaque_existential_2(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x245D20850);
  }

  return result;
}

uint64_t sub_242A2B38C(unsigned int *a1, int a2)
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

_WORD *sub_242A2B3DC(_WORD *result, int a2, int a3)
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

uint64_t XPCHost.__allocating_init(requestHandler:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  XPCHost.init(requestHandler:)(a1, a2);
  return v4;
}

uint64_t sub_242A2B4B0@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, _BYTE *a4@<X8>)
{
  type metadata accessor for XPCHostConnection(255, a1, a2, a3);
  sub_242A3549C();
  swift_getWitnessTable();
  result = sub_242A3552C();
  *a4 = result & 1;
  return result;
}

Swift::Void __swiftcall XPCHost.start()()
{
  v1 = v0;
  v2 = *v0;
  if (qword_280B1B358 != -1)
  {
    swift_once();
  }

  v3 = sub_242A3517C();
  __swift_project_value_buffer(v3, qword_280B1B7F8);
  v4 = sub_242A3515C();
  v5 = sub_242A3555C();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v13 = v7;
    *v6 = 136315138;
    v12 = *(v2 + 80);
    MetatypeMetadata = swift_getMetatypeMetadata();
    v9 = sub_242A348EC(&v12, MetatypeMetadata);
    v11 = sub_242A2D920(v9, v10, &v13);

    *(v6 + 4) = v11;
    _os_log_impl(&dword_242A1C000, v4, v5, "Starting XPC host for %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x245D20850](v7, -1, -1);
    MEMORY[0x245D20850](v6, -1, -1);
  }

  if (v1[2])
  {

    sub_242A352AC();
  }
}

void *XPCHost.deinit()
{
  v1 = v0;
  v2 = *v0;
  if (v0[2])
  {

    sub_242A3528C();
  }

  v3 = *(v2 + 80);
  v4 = *(v2 + 88);
  type metadata accessor for XPCHostConnection(255, v3, v4, v5);
  sub_242A3549C();
  sub_242A3514C();
  sub_242A3556C();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  swift_getFunctionTypeMetadata2();
  sub_242A3557C();
  sub_242A3514C();
  sub_242A3556C();
  type metadata accessor for XPCHost.MessageReply(255, v3, v4, v6);
  sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v9);
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  sub_242A3514C();
  sub_242A3556C();
  return v1;
}

uint64_t XPCHost.__deallocating_deinit()
{
  XPCHost.deinit();

  return MEMORY[0x2821FE8D8](v0, 80, 7);
}

void XPCHost.setCancellationHandler(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  os_unfair_lock_lock(v2 + 10);
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  sub_242A2BC44(v2 + 6, a1, a2, v6, v7);
  type metadata accessor for XPCHostConnection(255, v6, v7, v8);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27ECD8A08, &qword_242A35E80);
  swift_getFunctionTypeMetadata2();
  sub_242A3557C();

  os_unfair_lock_unlock(v2 + 10);
}

uint64_t sub_242A2BC44(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a1;
  if (v10)
  {
    sub_242A1D2CC(v10, a1[1]);
  }

  if (a2)
  {
    v11 = swift_allocObject();
    v11[2] = a4;
    v11[3] = a5;
    v11[4] = a2;
    v11[5] = a3;
    v12 = sub_242A2E720;
  }

  else
  {
    v12 = 0;
    v11 = 0;
  }

  *a1 = v12;
  a1[1] = v11;
  return sub_242A1D78C(a2, a3);
}

uint64_t XPCHost.ConnectionRequest.bundleIdentifier.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A30, &qword_242A35E98);
  sub_242A3525C();
  return v1;
}

uint64_t XPCHost<>.connection.getter()
{
  v1 = *&v0->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v0 + 6);
  v2 = *(v1 + 80);
  v3 = *(v1 + 88);
  sub_242A2BE8C(&v0[8], v2, v3, v4);
  type metadata accessor for XPCHostConnection(255, v2, v3, v5);
  sub_242A3549C();
  sub_242A3557C();
  os_unfair_lock_unlock(v0 + 6);
  return v7;
}

uint64_t sub_242A2BE8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for XPCHostConnection(255, a2, a3, a4);
  sub_242A3549C();
  swift_getWitnessTable();
  return sub_242A3551C();
}

void XPCHost<>.withConnections(perform:)(void (*a1)(uint64_t))
{
  v3 = v2;
  v5 = *&v1->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v1 + 6);
  v6 = *(v5 + 80);
  v7 = *(v5 + 88);
  v8 = *&v1[8]._os_unfair_lock_opaque;

  if (v3)
  {
    type metadata accessor for XPCHostConnection(255, v6, v7, v9);
    sub_242A3549C();
    os_unfair_lock_unlock(v1 + 6);
    __break(1u);
    return;
  }

  type metadata accessor for XPCHostConnection(255, v6, v7, v9);
  sub_242A3549C();
  os_unfair_lock_unlock(v1 + 6);
  if (!sub_242A3548C())
  {
    goto LABEL_11;
  }

  v10 = 0;
  while (1)
  {
    v11 = sub_242A3546C();
    sub_242A3545C();
    if ((v11 & 1) == 0)
    {
      break;
    }

    v12 = *(v8 + 8 * v10 + 32);

    v13 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_10;
    }

LABEL_6:
    a1(v12);

    ++v10;
    if (v13 == sub_242A3548C())
    {
      goto LABEL_11;
    }
  }

  v12 = sub_242A355DC();
  v13 = v10 + 1;
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
LABEL_11:
}

void XPCHost<>.withConnections(filteredBy:perform:)(uint64_t a1, uint64_t a2, void (*a3)(uint64_t))
{
  v6 = *&v3->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v3 + 6);
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  sub_242A2C288(v7, v8, &v15);
  if (v4)
  {
    type metadata accessor for XPCHostConnection(255, v7, v8, v9);
    sub_242A3549C();
    os_unfair_lock_unlock(v3 + 6);
    __break(1u);
    return;
  }

  type metadata accessor for XPCHostConnection(255, v7, v8, v9);
  sub_242A3549C();
  os_unfair_lock_unlock(v3 + 6);
  v10 = v15;
  if (!sub_242A3548C())
  {
    goto LABEL_11;
  }

  v11 = 0;
  while (1)
  {
    v12 = sub_242A3546C();
    sub_242A3545C();
    if ((v12 & 1) == 0)
    {
      break;
    }

    v13 = *(v10 + 8 * v11 + 32);

    v14 = v11 + 1;
    if (__OFADD__(v11, 1))
    {
      goto LABEL_10;
    }

LABEL_6:
    a3(v13);

    ++v11;
    if (v14 == sub_242A3548C())
    {
      goto LABEL_11;
    }
  }

  v13 = sub_242A355DC();
  v14 = v11 + 1;
  if (!__OFADD__(v11, 1))
  {
    goto LABEL_6;
  }

LABEL_10:
  __break(1u);
LABEL_11:
}

uint64_t sub_242A2C288@<X0>(uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  type metadata accessor for XPCHostConnection(255, a4, a5, a4);
  sub_242A3549C();

  swift_getWitnessTable();
  result = sub_242A3561C();
  *a6 = result;
  return result;
}

void XPCHost<>.withFirstConnection(where:perform:)(uint64_t a1, uint64_t a2, void (*a3)())
{
  v8 = *v3;
  os_unfair_lock_lock(v3 + 6);
  v9 = *(v8 + 80);
  v10 = *(v8 + 88);
  sub_242A2C484(v3 + 4, a1, a2, v9, v10);
  type metadata accessor for XPCHostConnection(255, v9, v10, v11);
  sub_242A3549C();
  sub_242A3557C();
  os_unfair_lock_unlock(v3 + 6);
  if (v4)
  {
    __break(1u);
  }

  else
  {
    a3();
  }
}

uint64_t sub_242A2C484(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  type metadata accessor for XPCHostConnection(255, a4, a5, a4);
  sub_242A3549C();

  swift_getWitnessTable();
  sub_242A3540C();
}

void XPCHost.setMessageHandler<A>(for:perform:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_242A2D368(a1, a2, a3, a4, a5, sub_242A2C57C, &parameter_flags_6);
}

{
  sub_242A2D368(a1, a2, a3, a4, a5, sub_242A2C7F4, &parameter_flags_8);
}

{
  sub_242A2D368(a1, a2, a3, a4, a5, sub_242A2CAB0, &parameter_flags_10);
}

{
  sub_242A2D368(a1, a2, a3, a4, a5, sub_242A2D598, &parameter_flags_12);
}

uint64_t sub_242A2C57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static XPCMessage.messageIdentifier.getter(a5);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = sub_242A23E10;
  v14[7] = v13;
  type metadata accessor for XPCHost.MessageReply(255, a4, a6, v15);

  sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3537C();
}

uint64_t sub_242A2C728@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  (*(*(a6 - 8) + 32))(a8, a1, a6);
  result = type metadata accessor for ReceivedMessage(0, a6, a7, v15);
  v17 = (a8 + *(result + 36));
  *v17 = a2;
  v17[1] = a3;
  v17[2] = a4;
  v17[3] = a5;
  return result;
}

uint64_t sub_242A2C7F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static XPCMessage.messageIdentifier.getter(a5);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = sub_242A277E0;
  v14[7] = v13;
  type metadata accessor for XPCHost.MessageReply(255, a4, a6, v15);

  sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3537C();
}

uint64_t sub_242A2C9A0()
{
  v1 = *(v0 + 88);
  sub_242A32E44(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 72));

  v2 = *(v0 + 72);
  v3 = *(v0 + 48);
  v4 = *(v0 + 56);
  swift_getWitnessTable();
  sub_242A352FC();
  (*(v4 + 8))(v2, v3);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_242A2CAB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static XPCMessage.messageIdentifier.getter(a5);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = sub_242A2E56C;
  v14[7] = v13;
  type metadata accessor for XPCHost.MessageReply(255, a4, a6, v15);

  sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3537C();
}

void sub_242A2CC5C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  *&v66 = a4;
  *&v67 = a3;
  v63 = a1;
  v69 = a9;
  v65 = type metadata accessor for ReceivedMessage(0, a6, a8, a4);
  v68 = *(v65 - 8);
  MEMORY[0x28223BE20](v65);
  v64 = &v60 - v11;
  v62 = sub_242A3557C();
  v61 = *(v62 - 8);
  v12 = MEMORY[0x28223BE20](v62);
  v14 = &v60 - v13;
  v15 = *(a6 - 8);
  v16 = MEMORY[0x28223BE20](v12);
  v60 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v60 - v18;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = type metadata accessor for TypedPayloadBox(0, AssociatedTypeWitness, AssociatedConformanceWitness, v22);
  TypedPayloadBox.unbox<A>(as:)(a6, v14);
  if ((*(v15 + 48))(v14, 1, a6) == 1)
  {
    v24 = a6;
    (*(v61 + 8))(v14, v62);
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v25 = sub_242A3517C();
    __swift_project_value_buffer(v25, qword_280B1B7F8);
    v26 = *(v23 - 8);
    v27 = *(v26 + 16);
    v27(&v72, a2, v23);
    v28 = sub_242A3515C();
    v29 = sub_242A3554C();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v71 = v31;
      *v30 = 136315394;
      v27(v70, &v72, v23);
      v32 = sub_242A348EC(v70, v23);
      v34 = v33;
      v35 = sub_242A3557C();
      (*(*(v35 - 8) + 8))(v70, v35);
      (*(v26 + 8))(&v72, v23);
      v36 = sub_242A2D920(v32, v34, &v71);

      *(v30 + 4) = v36;
      *(v30 + 12) = 2080;
      *&v70[0] = v24;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v38 = sub_242A348EC(v70, MetatypeMetadata);
      v40 = sub_242A2D920(v38, v39, &v71);

      *(v30 + 14) = v40;
      _os_log_impl(&dword_242A1C000, v28, v29, "Failed to unbox message %s as type %s", v30, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D20850](v31, -1, -1);
      MEMORY[0x245D20850](v30, -1, -1);
    }

    else
    {

      (*(v26 + 8))(&v72, v23);
    }

    v55 = v69;
    *(v69 + 32) = 0;
    *v55 = 0u;
    v55[1] = 0u;
  }

  else
  {
    v41 = *(v15 + 32);
    v42 = v19;
    v41(v19, v14, a6);
    v43 = v60;
    (*(v15 + 16))(v60, v42, a6);
    v44 = sub_242A352DC();
    v46 = v45;
    v48 = v47;
    v63 = v49;
    v50 = v64;
    v41(v64, v43, a6);
    v51 = v65;
    v52 = &v50[*(v65 + 36)];
    *v52 = v44;
    v52[1] = v46;
    v53 = v63;
    v52[2] = v48;
    v52[3] = v53;
    (v67)(v50);
    v54 = v42;
    v67 = 0u;
    v66 = 0u;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
    v57 = v69;
    *(v69 + 24) = v56;
    v57[4] = sub_242A25EAC();
    v58 = swift_allocObject();
    *v57 = v58;
    v59 = v66;
    *(v58 + 16) = v67;
    *(v58 + 32) = v59;
    *(v58 + 48) = 0;
    *(v58 + 56) = 0;
    *(v58 + 64) = 0;
    (*(v68 + 8))(v50, v51);
    (*(v15 + 8))(v54, a6);
  }
}

void sub_242A2D368(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(os_unfair_lock_s *, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), uint64_t a7)
{
  v13 = *&v7->_os_unfair_lock_opaque;
  os_unfair_lock_lock(v7 + 16);
  v14 = *(v13 + 80);
  v15 = *(v13 + 88);
  a6(v7 + 18, a2, a3, v14, a4, v15, a5);
  type metadata accessor for XPCHost.MessageReply(255, v14, v15, v16);
  sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v19);
  swift_getFunctionTypeMetadata();
  sub_242A3535C();

  os_unfair_lock_unlock(v7 + 16);
}

uint64_t sub_242A2D598(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static XPCMessage.messageIdentifier.getter(a5);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = sub_242A24EC0;
  v14[7] = v13;
  type metadata accessor for XPCHost.MessageReply(255, a4, a6, v15);

  sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3537C();
}

uint64_t sub_242A2D744()
{
  v9 = v0;
  v1 = *(v0 + 88);
  sub_242A2E8D8(v7);

  v2 = v8;
  v3 = v7[1];
  v4 = v7[2];
  *(v0 + 16) = v7[0];
  *(v0 + 32) = v3;
  *(v0 + 48) = v4;
  *(v0 + 64) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
  sub_242A25EAC();
  sub_242A352FC();
  sub_242A26D50(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_242A2D850(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_242A2D8C4(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_242A2D920(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_242A2D920(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_242A2D9EC(v11, 0, 0, 1, a1, a2);
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
    sub_242A2E750(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_242A2D9EC(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_242A2DAF8(a5, a6);
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
    result = sub_242A3560C();
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

void *sub_242A2DAF8(uint64_t a1, unint64_t a2)
{
  v3 = sub_242A2DB44(a1, a2);
  sub_242A2DC74(&unk_285539AA8);
  return v3;
}

void *sub_242A2DB44(uint64_t a1, unint64_t a2)
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

  v6 = sub_242A2DD60(v5, 0);
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

  result = sub_242A3560C();
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
        v10 = sub_242A353FC();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_242A2DD60(v10, 0);
        result = sub_242A355BC();
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

uint64_t sub_242A2DC74(uint64_t result)
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

  result = sub_242A2DDD4(result, v11, 1, v3);
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

void *sub_242A2DD60(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A40, &qword_242A360C0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_242A2DDD4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A40, &qword_242A360C0);
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

_BYTE **sub_242A2DEC8(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_242A2DF88(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_242A2E078(uint64_t *a1, int a2)
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

uint64_t sub_242A2E0C0(uint64_t result, int a2, int a3)
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

void sub_242A2E114(uint64_t a1)
{
  swift_checkMetadataState();
  if (v1 <= 0x3F)
  {
    type metadata accessor for audit_token_t(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_242A2E19C(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 16) - 8) + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 32;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFFC;
  if ((v6 & 0xFFFFFFFC) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_242A2E2A0(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 32;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFE0)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) == 0xFFFFFFE0)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 3) & 0xFFFFFFFC) != 0xFFFFFFE0)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t sub_242A2E424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t get_enum_tag_for_layout_string_8CallsXPC7XPCHostC12MessageReply33_486BE1C75C58B5FF152E39684162B14CLLOyx_G(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t sub_242A2E48C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 40))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 24);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_242A2E4E8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

double sub_242A2E540(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t objectdestroy_31Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(v4 + 40);
  v6 = *(type metadata accessor for ReceivedMessage(0, v5, *(v4 + 56), a4) - 8);
  v7 = *(v6 + 80);
  v8 = (v7 + 80) & ~v7;
  v9 = *(v6 + 64);
  v10 = sub_242A3532C();
  v11 = *(v10 - 8);
  v12 = *(v11 + 80);
  v13 = (v8 + v9 + v12) & ~v12;
  v14 = *(v11 + 64);
  v15 = v7 | v12;
  swift_unknownObjectRelease();

  (*(*(v5 - 8) + 8))(v4 + v8, v5);
  (*(v11 + 8))(v4 + v13, v10);

  return MEMORY[0x2821FE8E8](v4, v13 + v14, v15 | 7);
}

uint64_t sub_242A2E750(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t objectdestroy_75Tm()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_242A2E7F0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_242A2E82C(uint64_t *a1, int a2)
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

uint64_t sub_242A2E874(uint64_t result, int a2, int a3)
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

uint64_t sub_242A2E8D8@<X0>(uint64_t a2@<X8>)
{
  swift_getErrorValue();
  v3 = sub_242A3573C();
  v5 = v4;
  ErrorValue = swift_getErrorValue();
  MEMORY[0x28223BE20](ErrorValue);
  (*(v8 + 16))(&v17 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_242A353AC();
  v11 = v10;
  v12 = swift_getErrorValue();
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_242A353BC();
  *a2 = v3;
  *(a2 + 8) = v5;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = result;
  *(a2 + 40) = v16;
  *(a2 + 48) = 1;
  return result;
}

uint64_t sub_242A2EAA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A38, &qword_242A36078);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_242A32970(a3, v25 - v10, &qword_27ECD8A38, &qword_242A36078);
  v12 = sub_242A354FC();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_242A25820(v11, &qword_27ECD8A38, &qword_242A36078);
  }

  else
  {
    sub_242A354EC();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_242A354AC();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_242A353CC() + 32;
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

      sub_242A25820(a3, &qword_27ECD8A38, &qword_242A36078);

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

  sub_242A25820(a3, &qword_27ECD8A38, &qword_242A36078);
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

uint64_t XPCClient.__allocating_init()()
{
  v0 = swift_allocObject();
  XPCClient.init()();
  return v0;
}

double sub_242A2EDD8@<D0>(uint64_t a1@<X0>, _OWORD *a4@<X8>)
{
  v6 = sub_242A3532C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    swift_beginAccess();
    if (!swift_weakLoadStrong())
    {
      a4[1] = 0u;
      a4[2] = 0u;
      *a4 = 0u;

      return result;
    }

    if (sub_242A3531C())
    {
      sub_242A351FC();
    }

    else
    {
      (*(v7 + 16))(v9, a1, v6);
      sub_242A2EF70(v9);
    }
  }

  result = 0.0;
  a4[1] = 0u;
  a4[2] = 0u;
  *a4 = 0u;
  return result;
}

uint64_t sub_242A2EF70(uint64_t a1)
{
  v2 = v1;
  v4 = *&v1->_os_unfair_lock_opaque;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A38, &qword_242A36078);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v39[-1] - v6;
  v8 = sub_242A3532C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v39[-1] - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = swift_allocBox();
  v13 = v12;
  (*(v9 + 32))(v12, a1, v8);
  (*(v9 + 16))(v11, v13, v8);
  v14 = *(v4 + 88);
  v15 = *(v4 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for TypedPayloadBox(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  swift_getWitnessTable();
  sub_242A3530C();
  (*(v9 + 8))(v11, v8);
  v44[0] = v40;
  v44[1] = v41;
  v44[2] = v42;
  v44[3] = v43;
  os_unfair_lock_lock(v2 + 6);
  sub_242A31D5C(&v40);
  v39[0] = v8;
  v39[1] = v19;
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  sub_242A3557C();
  j__os_unfair_lock_unlock(v2 + 6);
  v20 = v40;
  if (v40)
  {
    v21 = *(&v40 + 1);
    v22 = swift_allocObject();
    v22[2] = v15;
    v22[3] = v14;
    v22[4] = v20;
    v22[5] = v21;
    v23 = sub_242A354FC();
    (*(*(v23 - 8) + 56))(v7, 1, 1, v23);
    v24 = *(v19 - 8);
    (*(v24 + 16))(&v40, v44, v19);
    v25 = swift_allocObject();
    *(v25 + 16) = 0;
    *(v25 + 24) = 0;
    *(v25 + 32) = v15;
    *(v25 + 40) = v14;
    v26 = v41;
    *(v25 + 72) = v40;
    *(v25 + 88) = v26;
    v27 = v43;
    *(v25 + 104) = v42;
    *(v25 + 48) = &unk_242A362D0;
    *(v25 + 56) = v22;
    *(v25 + 64) = v38;
    *(v25 + 120) = v27;

    sub_242A2EAA0(0, 0, v7, &unk_242A362E0, v25);

    (*(v24 + 8))(v44, v19);
  }

  else
  {
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v29 = sub_242A3517C();
    __swift_project_value_buffer(v29, qword_280B1B7F8);
    v30 = *(v19 - 8);
    (*(v30 + 16))(&v40, v44, v19);
    v31 = sub_242A3515C();
    v32 = sub_242A3554C();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39[0] = v34;
      *v33 = 136315138;
      v35 = v43;
      v36 = *(v30 + 8);

      v36(&v40, v19);
      v37 = sub_242A2D920(v35, *(&v35 + 1), v39);

      *(v33 + 4) = v37;
      _os_log_impl(&dword_242A1C000, v31, v32, "No handler was registered for message %s", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x245D20850](v34, -1, -1);
      MEMORY[0x245D20850](v33, -1, -1);
    }

    else
    {

      v36 = *(v30 + 8);
      v36(&v40, v19);
    }

    v36(v44, v19);
  }
}

double sub_242A2F62C@<D0>(void (*a1)(void *__return_ptr)@<X1>, uint64_t a2@<X8>)
{
  a1(v11);
  v3 = v12;
  if (v12)
  {
    v4 = v13;
    v5 = __swift_project_boxed_opaque_existential_2(v11, v12);
    v9 = v3;
    v10 = v4;
    boxed_opaque_existential_2 = __swift_allocate_boxed_opaque_existential_2(&v8);
    (*(*(v3 - 8) + 16))(boxed_opaque_existential_2, v5, v3);
    sub_242A215B4(&v8, a2);
    __swift_destroy_boxed_opaque_existential_0(v11);
  }

  else
  {
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

Swift::Void __swiftcall XPCClient.destroyConnection()()
{
  v1 = *(v0 + 16);

  os_unfair_lock_lock((v1 + 16));
  v2 = *(v1 + 24);
  *(v1 + 24) = 0;
  os_unfair_lock_unlock((v1 + 16));
  if (v2)
  {
    v5 = v2;
    v3 = *(v1 + 48);
    if (v3)
    {
      v4 = *(v1 + 56);

      v3(&v5);

      sub_242A1D2CC(v3, v4);
    }

    else
    {
    }
  }
}

uint64_t sub_242A2F798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[32] = a7;
  v8[33] = a8;
  v8[30] = a5;
  v8[31] = a6;
  v8[28] = a3;
  v8[29] = a4;
  v8[26] = a1;
  v8[27] = a2;
  v10 = sub_242A3557C();
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = *(a6 - 8);
  v8[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A2F8BC, 0, 0);
}

uint64_t sub_242A2F8BC()
{
  v33 = v0;
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[31];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for TypedPayloadBox(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  TypedPayloadBox.unbox<A>(as:)(v3, v1);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[35] + 8))(v0[36], v0[34]);
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v8 = v0[27];
    v9 = sub_242A3517C();
    __swift_project_value_buffer(v9, qword_280B1B7F8);
    v10 = *(v7 - 8);
    v11 = *(v10 + 16);
    v11(v0 + 2, v8, v7);
    v12 = sub_242A3515C();
    v13 = sub_242A3554C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[31];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v32 = v16;
      *v15 = 136315394;
      v11(v0 + 10, (v0 + 2), v7);
      v17 = sub_242A348EC((v0 + 10), v7);
      v19 = v18;
      v20 = sub_242A3557C();
      (*(*(v20 - 8) + 8))(v0 + 10, v20);
      (*(v10 + 8))(v0 + 2, v7);
      v21 = sub_242A2D920(v17, v19, &v32);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      v0[25] = v14;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v23 = sub_242A348EC((v0 + 25), MetatypeMetadata);
      v25 = sub_242A2D920(v23, v24, &v32);

      *(v15 + 14) = v25;
      _os_log_impl(&dword_242A1C000, v12, v13, "Failed to unbox message %s as type %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D20850](v16, -1, -1);
      MEMORY[0x245D20850](v15, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v0 + 2, v7);
    }

    v30 = v0[1];

    return v30();
  }

  else
  {
    v26 = v0[28];
    (*(v0[37] + 32))(v0[38], v0[36], v0[31]);
    v31 = (v26 + *v26);
    v27 = swift_task_alloc();
    v0[39] = v27;
    *v27 = v0;
    v27[1] = sub_242A2FD44;
    v28 = v0[38];

    return v31(v28);
  }
}

uint64_t sub_242A2FD44()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_242A2FFB0;
  }

  else
  {
    v2 = sub_242A2FE58;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_242A2FE58(uint64_t a1)
{
  if (sub_242A352EC())
  {
    *(v1 + 144) = 0u;
    v3 = *(v1 + 296);
    v2 = *(v1 + 304);
    v4 = *(v1 + 248);
    *(v1 + 160) = 0u;
    *(v1 + 176) = 0u;
    *(v1 + 192) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
    sub_242A27790(&qword_280B1AF98, &unk_242A368C0);
    sub_242A352FC();
    sub_242A26D50(*(v1 + 144), *(v1 + 152), *(v1 + 160), *(v1 + 168), *(v1 + 176), *(v1 + 184), *(v1 + 192));
    (*(v3 + 8))(v2, v4);
  }

  else
  {
    (*(*(v1 + 296) + 8))(*(v1 + 304), *(v1 + 248));
    sub_242A26D50(0, 0, 0, 0, 0, 0, 0);
  }

  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_242A2FFB0()
{
  v16 = v0;
  v1 = *(v0 + 320);
  sub_242A2E8D8(v14);

  v3 = v14[0];
  v2 = v14[1];
  v5 = v14[2];
  v4 = v14[3];
  v7 = v14[4];
  v6 = v14[5];
  v8 = v15;
  if (sub_242A352EC())
  {
    *(v0 + 144) = v3;
    v9 = *(v0 + 296);
    v12 = *(v0 + 248);
    v13 = *(v0 + 304);
    *(v0 + 152) = v2;
    *(v0 + 160) = v5;
    *(v0 + 168) = v4;
    *(v0 + 176) = v7;
    *(v0 + 184) = v6;
    *(v0 + 192) = v8;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
    sub_242A27790(&qword_280B1AF98, &unk_242A368C0);
    sub_242A352FC();
    sub_242A26D50(*(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));
    (*(v9 + 8))(v13, v12);
  }

  else
  {
    (*(*(v0 + 296) + 8))(*(v0 + 304), *(v0 + 248));
    sub_242A26D50(v3, v2, v5, v4, v7, v6, v8);
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_242A30144(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a2;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_242A32A90;

  return v9(a2, a3);
}

uint64_t sub_242A30274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  static XPCMessage.messageIdentifier.getter(a5);
  v13 = swift_allocObject();
  v13[2] = a4;
  v13[3] = a5;
  v13[4] = a6;
  v13[5] = a7;
  v13[6] = a2;
  v13[7] = a3;
  v14 = swift_allocObject();
  v14[2] = a4;
  v14[3] = a5;
  v14[4] = a6;
  v14[5] = a7;
  v14[6] = &unk_242A36270;
  v14[7] = v13;

  sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v17);
  swift_getFunctionTypeMetadata();
  sub_242A3535C();
  return sub_242A3537C();
}

uint64_t sub_242A30414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[25] = a7;
  v8[26] = a8;
  v8[23] = a5;
  v8[24] = a6;
  v8[21] = a3;
  v8[22] = a4;
  v8[19] = a1;
  v8[20] = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8[27] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8[28] = AssociatedConformanceWitness;
  v12 = swift_getAssociatedConformanceWitness();
  v8[29] = v12;
  v13 = type metadata accessor for XPCResult(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v8[30] = v13;
  v8[31] = *(v13 - 8);
  v8[32] = swift_task_alloc();
  v8[33] = swift_task_alloc();
  v14 = sub_242A3557C();
  v8[34] = v14;
  v8[35] = *(v14 - 8);
  v8[36] = swift_task_alloc();
  v8[37] = *(a6 - 8);
  v8[38] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A30630, 0, 0);
}

uint64_t sub_242A30630()
{
  v34 = v0;
  v1 = v0[36];
  v2 = v0[37];
  v3 = v0[24];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v7 = type metadata accessor for TypedPayloadBox(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  TypedPayloadBox.unbox<A>(as:)(v3, v1);
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[35] + 8))(v0[36], v0[34]);
    if (qword_280B1B358 != -1)
    {
      swift_once();
    }

    v8 = v0[20];
    v9 = sub_242A3517C();
    __swift_project_value_buffer(v9, qword_280B1B7F8);
    v10 = *(v7 - 8);
    v11 = *(v10 + 16);
    v11(v0 + 2, v8, v7);
    v12 = sub_242A3515C();
    v13 = sub_242A3554C();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = v0[24];
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v33 = v16;
      *v15 = 136315394;
      v11(v0 + 10, (v0 + 2), v7);
      v17 = sub_242A348EC((v0 + 10), v7);
      v19 = v18;
      v20 = sub_242A3557C();
      (*(*(v20 - 8) + 8))(v0 + 10, v20);
      (*(v10 + 8))(v0 + 2, v7);
      v21 = sub_242A2D920(v17, v19, &v33);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      v0[18] = v14;
      MetatypeMetadata = swift_getMetatypeMetadata();
      v23 = sub_242A348EC((v0 + 18), MetatypeMetadata);
      v25 = sub_242A2D920(v23, v24, &v33);

      *(v15 + 14) = v25;
      _os_log_impl(&dword_242A1C000, v12, v13, "Failed to unbox message %s as type %s", v15, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x245D20850](v16, -1, -1);
      MEMORY[0x245D20850](v15, -1, -1);
    }

    else
    {

      (*(v10 + 8))(v0 + 2, v7);
    }

    v31 = v0[1];

    return v31();
  }

  else
  {
    v26 = v0[21];
    (*(v0[37] + 32))(v0[38], v0[36], v0[24]);
    v32 = (v26 + *v26);
    v27 = swift_task_alloc();
    v0[39] = v27;
    *v27 = v0;
    v27[1] = sub_242A30AD0;
    v28 = v0[38];
    v29 = v0[32];

    return v32(v29, v28);
  }
}

uint64_t sub_242A30AD0()
{
  *(*v1 + 320) = v0;

  if (v0)
  {
    v2 = sub_242A30D20;
  }

  else
  {
    v2 = sub_242A30BE4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_242A30BE4()
{
  v1 = v0[32];
  v2 = v0[33];
  v3 = v0[30];
  v4 = v0[31];
  swift_storeEnumTagMultiPayload();
  (*(v4 + 32))(v2, v1, v3);
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[33];
  v8 = v0[30];
  v9 = v0[31];
  v10 = v0[24];
  swift_getWitnessTable();
  sub_242A352FC();
  (*(v9 + 8))(v7, v8);
  (*(v6 + 8))(v5, v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_242A30D20()
{
  v1 = *(v0 + 320);
  sub_242A32E44(*(v0 + 216), *(v0 + 224), *(v0 + 232), *(v0 + 264));

  v3 = *(v0 + 296);
  v2 = *(v0 + 304);
  v4 = *(v0 + 264);
  v5 = *(v0 + 240);
  v6 = *(v0 + 248);
  v7 = *(v0 + 192);
  swift_getWitnessTable();
  sub_242A352FC();
  (*(v6 + 8))(v4, v5);
  (*(v3 + 8))(v2, v7);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_242A30E48(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  *(v4 + 16) = a2;
  v9 = (a4 + *a4);
  v7 = swift_task_alloc();
  *(v4 + 24) = v7;
  *v7 = v4;
  v7[1] = sub_242A30F50;

  return v9(a2, a3);
}

uint64_t sub_242A30F50()
{
  v1 = *(*v0 + 16);
  v5 = *v0;

  v2 = sub_242A3532C();
  (*(*(v2 - 8) + 8))(v1, v2);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t XPCClient.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v5[15] = *v4;
  v5[16] = *(a3 - 8);
  v5[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A26244, 0, 0);
}

uint64_t XPCClient.send<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[12] = a3;
  v4[13] = v3;
  v4[10] = a1;
  v4[11] = a2;
  v4[14] = *v3;
  v4[15] = *(a2 - 8);
  v4[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_242A2035C, 0, 0);
}

uint64_t XPCClient.sendSync<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  v79 = sub_242A352CC();
  v81 = *(v79 - 8);
  v8 = MEMORY[0x28223BE20](v79);
  v77 = &v71 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v80 = &v71 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v78 = &v71 - v13;
  MEMORY[0x28223BE20](v12);
  v15 = &v71 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15, a1, a2);
  v17 = *(v7 + 88);
  v18 = *(v7 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v21 = v15;
  v22 = AssociatedConformanceWitness;
  TypedPayloadBox.init<A>(value:)(v21, a2, a3, v91);
  v23 = v3[2];
  v84 = v18;
  v85 = a2;
  v76 = a2;
  v86 = v17;
  v87 = a3;
  v88 = v91;

  os_unfair_lock_lock((v23 + 16));
  v24 = v82;
  sub_242A20BF4((v23 + 24), sub_242A323A0, v83, v23);
  v25 = (v23 + 16);
  if (v24)
  {
    os_unfair_lock_unlock(v25);

    v92 = v24;
    MEMORY[0x245D206F0](v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A08, &qword_242A35E80);
    v26 = v78;
    v27 = v79;
    if (swift_dynamicCast())
    {
      v82 = v22;
      v75 = AssociatedTypeWitness;
      v74 = v3;

      v28 = v80;
      v29 = v81;
      (*(v81 + 32))(v80, v26, v27);
      if (qword_280B1B358 != -1)
      {
        swift_once();
      }

      v30 = sub_242A3517C();
      __swift_project_value_buffer(v30, qword_280B1B7F8);
      v31 = v77;
      v32 = v28;
      v33 = *(v29 + 16);
      v33(v77, v32, v27);
      v34 = sub_242A3515C();
      v35 = sub_242A3554C();
      v36 = os_log_type_enabled(v34, v35);
      v78 = v33;
      if (v36)
      {
        v37 = swift_slowAlloc();
        v38 = v33;
        v72 = swift_slowAlloc();
        v73 = swift_slowAlloc();
        v90 = v73;
        *v37 = 136315394;
        v89 = v76;
        MetatypeMetadata = swift_getMetatypeMetadata();
        v40 = sub_242A348EC(&v89, MetatypeMetadata);
        v41 = v27;
        v43 = sub_242A2D920(v40, v42, &v90);

        *(v37 + 4) = v43;
        *(v37 + 12) = 2112;
        sub_242A1EC2C();
        swift_allocError();
        v44 = v77;
        v38(v45, v77, v27);
        v46 = _swift_stdlib_bridgeErrorToNSError();
        v47 = *(v81 + 8);
        v47(v44, v41);
        *(v37 + 14) = v46;
        v48 = v72;
        *v72 = v46;
        v27 = v41;
        _os_log_impl(&dword_242A1C000, v34, v35, "Encountered XPC error when trying to send sync message %s error: %@", v37, 0x16u);
        sub_242A25820(v48, &qword_27ECD8A10, &qword_242A35DC0);
        MEMORY[0x245D20850](v48, -1, -1);
        v49 = v73;
        __swift_destroy_boxed_opaque_existential_0(v73);
        MEMORY[0x245D20850](v49, -1, -1);
        MEMORY[0x245D20850](v37, -1, -1);
      }

      else
      {

        v47 = *(v29 + 8);
        v47(v31, v27);
      }

      v63 = v74[2];

      os_unfair_lock_lock((v63 + 16));
      v64 = *(v63 + 24);
      *(v63 + 24) = 0;
      os_unfair_lock_unlock((v63 + 16));
      if (v64)
      {
        v90 = v64;
        v65 = *(v63 + 48);
        if (v65)
        {
          v66 = *(v63 + 56);

          v65(&v90);
          sub_242A1D2CC(v65, v66);
        }
      }

      sub_242A1EC2C();
      swift_allocError();
      v67 = v80;
      (v78)(v68, v80, v27);
      swift_willThrow();
      v47(v67, v27);

      AssociatedTypeWitness = v75;
      v22 = v82;
    }

    else
    {

      if (qword_280B1B358 != -1)
      {
        swift_once();
      }

      v51 = sub_242A3517C();
      __swift_project_value_buffer(v51, qword_280B1B7F8);
      MEMORY[0x245D206F0](v24);
      v52 = sub_242A3515C();
      v53 = sub_242A3554C();

      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        v55 = swift_slowAlloc();
        v82 = swift_slowAlloc();
        v92 = v82;
        *v54 = 136315394;
        v90 = v76;
        v56 = swift_getMetatypeMetadata();
        v57 = sub_242A348EC(&v90, v56);
        v59 = v22;
        v60 = sub_242A2D920(v57, v58, &v92);

        *(v54 + 4) = v60;
        v22 = v59;
        *(v54 + 12) = 2112;
        MEMORY[0x245D206F0](v24);
        v61 = _swift_stdlib_bridgeErrorToNSError();
        *(v54 + 14) = v61;
        *v55 = v61;
        _os_log_impl(&dword_242A1C000, v52, v53, "Failed to send sync message %s error: %@", v54, 0x16u);
        sub_242A25820(v55, &qword_27ECD8A10, &qword_242A35DC0);
        MEMORY[0x245D20850](v55, -1, -1);
        v62 = v82;
        __swift_destroy_boxed_opaque_existential_0(v82);
        MEMORY[0x245D20850](v62, -1, -1);
        MEMORY[0x245D20850](v54, -1, -1);
      }

      swift_willThrow();
    }
  }

  else
  {
    os_unfair_lock_unlock(v25);
  }

  v69 = type metadata accessor for TypedPayloadBox(0, AssociatedTypeWitness, v22, v50);
  return (*(*(v69 - 8) + 8))(v91, v69);
}

uint64_t sub_242A31AB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = sub_242A3532C();
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for TypedPayloadBox(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  swift_getWitnessTable();
  result = sub_242A3521C();
  if (!v5)
  {
    v13 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A28, &qword_242A36090);
    sub_242A27790(&qword_280B1AFB8, &unk_242A368E8);
    sub_242A3530C();
    if (v28 == 1)
    {
      v20 = v24;
      v21 = v25;
      v22 = v26;
      v23 = v27;
      sub_242A1F134();
      swift_willThrowTypedImpl();
      v18 = v21;
      v19 = v20;
      v14 = v22;
      v15 = v23;
      swift_allocError();
      v16 = v18;
      *v17 = v19;
      *(v17 + 16) = v16;
      *(v17 + 32) = v14;
      *(v17 + 40) = v15;
    }

    return (*(v13 + 8))(v8, v6);
  }

  return result;
}

double sub_242A31D5C@<D0>(_OWORD *a5@<X8>)
{

  *&v10 = sub_242A3532C();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(&v10 + 1) = type metadata accessor for TypedPayloadBox(255, AssociatedTypeWitness, AssociatedConformanceWitness, v8);
  swift_getFunctionTypeMetadata();
  sub_242A3536C();

  result = *&v10;
  *a5 = v10;
  return result;
}

uint64_t sub_242A31E7C(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = (a3 + *a3);
  v4 = swift_task_alloc();
  *(v3 + 16) = v4;
  *v4 = v3;
  v4[1] = sub_242A2727C;

  return v6();
}

uint64_t sub_242A31F7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[6] = a5;
  v7[7] = a7;
  v7[5] = a4;
  v8 = sub_242A3532C();
  v7[8] = v8;
  v7[9] = *(v8 - 8);
  v7[10] = swift_task_alloc();
  v7[11] = swift_projectBox();

  return MEMORY[0x2822009F8](sub_242A32054, 0, 0);
}

uint64_t sub_242A32054()
{
  v1 = v0[10];
  v2 = v0[11];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[5];
  swift_beginAccess();
  (*(v4 + 16))(v1, v2, v3);
  v10 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[12] = v6;
  *v6 = v0;
  v6[1] = sub_242A32190;
  v7 = v0[10];
  v8 = v0[7];

  return v10(v7, v8);
}

uint64_t sub_242A32190()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_242A322A0(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

void sub_242A32300(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t sub_242A323F0(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_242A271C0;

  return sub_242A30414(a1, a2, v11, v10, v6, v7, v8, v9);
}

void sub_242A324C8()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_242A2727C;

  JUMPOUT(0x242A30E48);
}

uint64_t sub_242A325C4(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v11 = v2[6];
  v10 = v2[7];
  v12 = swift_task_alloc();
  *(v3 + 16) = v12;
  *v12 = v3;
  v12[1] = sub_242A271C0;

  return sub_242A2F798(a1, a2, v11, v10, v6, v7, v8, v9);
}

void sub_242A3269C()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_242A271C0;

  JUMPOUT(0x242A30144);
}

uint64_t sub_242A327AC(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 32);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_242A271C0;

  return sub_242A31E7C(a1, a2, v6);
}

uint64_t sub_242A32884(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = v1[7];
  v8 = v1[8];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_242A271C0;

  return sub_242A31F7C(a1, v4, v5, v6, v7, v8, (v1 + 9));
}

uint64_t sub_242A32970(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_242A329D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_242A2727C;

  return sub_242A25938(a1, v4);
}

uint64_t sub_242A32A98@<X0>(char *a3@<X8>)
{
  v4 = sub_242A3564C();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_242A32B14(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837F8];

  return MEMORY[0x2821FE040](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_242A32B88(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A0](a1, a2, WitnessTable, v5);
}

uint64_t sub_242A32BF4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1B0](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_242A32C64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x277D837E0];

  return MEMORY[0x2821FC1A8](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_242A32CE0@<X0>(uint64_t *a1@<X8>)
{
  result = TypedPayloadBox.CodingKeys.stringValue.getter();
  *a1 = result;
  a1[1] = 0xE100000000000000;
  return result;
}

uint64_t sub_242A32D20(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242A32D74(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t TypedPayloadBox.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_242A32E44@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  swift_getErrorValue();
  v9 = sub_242A3573C();
  v11 = v10;
  ErrorValue = swift_getErrorValue();
  MEMORY[0x28223BE20](ErrorValue);
  (*(v14 + 16))(&v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = sub_242A353AC();
  v17 = v16;
  v18 = swift_getErrorValue();
  MEMORY[0x28223BE20](v18);
  (*(v20 + 16))(&v24 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = sub_242A353BC();
  *a5 = v9;
  a5[1] = v11;
  a5[2] = v15;
  a5[3] = v17;
  a5[4] = v21;
  a5[5] = v22;
  type metadata accessor for XPCResult(0, a2, a3, a4);
  return swift_storeEnumTagMultiPayload();
}

void XPCResultError.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  swift_getErrorValue();
  *a2 = sub_242A3573C();
  a2[1] = v4;
  ErrorValue = swift_getErrorValue();
  MEMORY[0x28223BE20](ErrorValue);
  (*(v7 + 16))(&v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  a2[2] = sub_242A353AC();
  a2[3] = v8;
  v9 = swift_getErrorValue();
  MEMORY[0x28223BE20](v9);
  (*(v11 + 16))(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_242A353BC();
  v14 = v13;

  a2[4] = v12;
  a2[5] = v14;
}

uint64_t sub_242A33224(char a1)
{
  sub_242A3578C();
  MEMORY[0x245D20420](a1 & 1);
  return sub_242A357AC();
}

uint64_t sub_242A332AC(uint64_t a1)
{
  sub_242A3578C();
  sub_242A331FC(v3, *v1);
  return sub_242A357AC();
}

uint64_t sub_242A332F8(uint64_t a1, uint64_t a2)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_242A356FC();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_242A33368@<X0>(_BYTE *a2@<X8>)
{
  result = sub_242A343D4();
  *a2 = result;
  return result;
}

uint64_t sub_242A3339C(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242A333F0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_242A3344C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_242A33444();
  *a1 = result & 1;
  return result;
}

uint64_t sub_242A33484(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242A334D8(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_242A3352C()
{
  sub_242A3578C();
  MEMORY[0x245D20420](0);
  return sub_242A357AC();
}

uint64_t sub_242A33570(uint64_t a1)
{
  sub_242A3578C();
  MEMORY[0x245D20420](0);
  return sub_242A357AC();
}

uint64_t sub_242A335B0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_242A33604(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_242A33664@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t sub_242A336A0(uint64_t a1)
{
  v2 = sub_242A26CE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242A336DC(uint64_t a1)
{
  v2 = sub_242A26CE0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CodableVoid.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A78, &qword_242A36540);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_242A26CE0();
  sub_242A357EC();
  return (*(v3 + 8))(v5, v2);
}

uint64_t XPCResultError.localizedDescription.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t XPCResultError.description.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t XPCResultError.debugDescription.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_242A338F8()
{
  v1 = *v0;
  sub_242A3578C();
  MEMORY[0x245D20420](v1);
  return sub_242A357AC();
}

uint64_t sub_242A3396C(uint64_t a1)
{
  v2 = *v1;
  sub_242A3578C();
  MEMORY[0x245D20420](v2);
  return sub_242A357AC();
}

unint64_t sub_242A339B0()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000010;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t sub_242A33A20@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_242A343DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_242A33A54(uint64_t a1)
{
  v2 = sub_242A33C90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_242A33A90(uint64_t a1)
{
  v2 = sub_242A33C90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCResultError.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A80, &qword_242A36548);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v11 - v5;
  v7 = v1[2];
  v11[3] = v1[3];
  v11[4] = v7;
  v8 = v1[4];
  v11[1] = v1[5];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_242A33C90();
  sub_242A357EC();
  v14 = 0;
  v9 = v11[5];
  sub_242A356CC();
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v13 = 1;
  sub_242A356CC();
  v12 = 2;
  sub_242A356CC();
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_242A33C90()
{
  result = qword_27ECD8A88;
  if (!qword_27ECD8A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8A88);
  }

  return result;
}

uint64_t XPCResultError.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8A90, &qword_242A36550);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_2(a1, a1[3]);
  sub_242A33C90();
  sub_242A357DC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v25 = 0;
  v9 = sub_242A3567C();
  v11 = v10;
  v22 = v9;
  v24 = 1;
  v20 = sub_242A3567C();
  v21 = v12;
  v23 = 2;
  v13 = sub_242A3567C();
  v15 = v14;
  v16 = v13;
  (*(v6 + 8))(v8, v5);
  v17 = v21;
  *a2 = v22;
  a2[1] = v11;
  a2[2] = v20;
  a2[3] = v17;
  a2[4] = v16;
  a2[5] = v15;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t sub_242A33F9C()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_242A33FCC()
{
  v1 = *(v0 + 32);

  return v1;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_242A34010(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_242A34058(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for XPCResultError.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for XPCResultError.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_242A34220()
{
  result = qword_27ECD8A98;
  if (!qword_27ECD8A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8A98);
  }

  return result;
}

unint64_t sub_242A34278()
{
  result = qword_27ECD8AA0;
  if (!qword_27ECD8AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8AA0);
  }

  return result;
}

unint64_t sub_242A342D0()
{
  result = qword_27ECD8AA8;
  if (!qword_27ECD8AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8AA8);
  }

  return result;
}

unint64_t sub_242A34328()
{
  result = qword_280B1AFA0;
  if (!qword_280B1AFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1AFA0);
  }

  return result;
}

unint64_t sub_242A34380()
{
  result = qword_280B1AFA8;
  if (!qword_280B1AFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280B1AFA8);
  }

  return result;
}

uint64_t sub_242A343DC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000014 && 0x8000000242A37020 == a2;
  if (v3 || (sub_242A356FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7470697263736564 && a2 == 0xEB000000006E6F69 || (sub_242A356FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000242A37040 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_242A356FC();

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

uint64_t sub_242A34508(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(a3 + 16) - 8);
  v4 = 48;
  if (*(v3 + 64) > 0x30uLL)
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

void sub_242A34620(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (v5 <= 0x30)
  {
    v5 = 48;
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

unint64_t sub_242A347D8()
{
  result = qword_27ECD8AB0;
  if (!qword_27ECD8AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8AB0);
  }

  return result;
}

unint64_t sub_242A3482C()
{
  result = qword_27ECD8AB8;
  if (!qword_27ECD8AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27ECD8AB8);
  }

  return result;
}

uint64_t sub_242A348EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_242A3557C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v17 - v7;
  v9 = *(a2 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v17 - v13;
  (*(v5 + 16))(v8, a1, v4);
  if ((*(v9 + 48))(v8, 1, a2) == 1)
  {
    (*(v5 + 8))(v8, v4);
    return 7104878;
  }

  else
  {
    (*(v9 + 32))(v14, v8, a2);
    (*(v9 + 16))(v12, v14, a2);
    v16 = sub_242A353BC();
    (*(v9 + 8))(v14, a2);
    return v16;
  }
}

uint64_t sub_242A34B10()
{
  v0 = sub_242A3517C();
  __swift_allocate_value_buffer(v0, qword_280B1B7F8);
  __swift_project_value_buffer(v0, qword_280B1B7F8);
  return sub_242A3516C();
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

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_242A34C14(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_242A34C5C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

double sub_242A34CFC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = sub_242A215CC(a1, a2);
  if (v7)
  {
    v8 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    v12 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_242A34F64();
      v10 = v12;
    }

    sub_242A215B4((*(v10 + 56) + 40 * v8), a3);
    sub_242A34DA8(v8, v10);
    *v4 = v10;
  }

  else
  {
    *(a3 + 32) = 0;
    result = 0.0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  return result;
}

uint64_t sub_242A34DA8(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_242A355AC() + 1) & ~v5;
    do
    {
      sub_242A3578C();

      sub_242A353DC();
      v11 = sub_242A357AC();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 16 * v3);
        v15 = (v13 + 16 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = v16 + 40 * v3;
        v18 = (v16 + 40 * v6);
        if (v3 != v6 || v17 >= v18 + 40)
        {
          v9 = *v18;
          v10 = v18[1];
          *(v17 + 32) = *(v18 + 4);
          *v17 = v9;
          *(v17 + 16) = v10;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_242A34F64()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27ECD8AD8, &qword_242A36E68);
  v2 = *v0;
  v3 = sub_242A3562C();
  v4 = v3;
  if (*(v2 + 16))
  {
    v25 = v1;
    v5 = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 64 + 8 * v6)
    {
      memmove(v5, (v2 + 64), 8 * v6);
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
        v22 = 40 * v17;
        sub_242A237BC(*(v2 + 56) + 40 * v17, v26);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_242A215B4(v26, *(v4 + 56) + v22);
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

        v1 = v25;
        goto LABEL_21;
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
    return sub_242A3510C();
  }

  else
  {

LABEL_21:
    *v1 = v4;
  }

  return result;
}