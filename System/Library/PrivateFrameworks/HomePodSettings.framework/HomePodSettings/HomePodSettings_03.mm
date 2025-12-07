id CarrySettings.InstallProfileRequest.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CarrySettings.InstallProfileRequest.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_25430CAE0()
{
  result = qword_27F5E2760;
  if (!qword_27F5E2760)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5E2760);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_3_10(uint64_t a1, uint64_t a2, uint64_t a3, ...)
{

  return swift_beginAccess();
}

uint64_t HPTimerError.hashValue.getter()
{
  v1 = *v0;
  sub_2543A36E8();
  MEMORY[0x259C0A1D0](v1);
  return sub_2543A3728();
}

unint64_t sub_25430CBE8()
{
  result = qword_27F5E05F8;
  if (!qword_27F5E05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E05F8);
  }

  return result;
}

unint64_t sub_25430CC40()
{
  result = qword_27F5E0600;
  if (!qword_27F5E0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0600);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for HPTimerError(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25430CD60);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_25430CDC0(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v90 = a1;
  v83 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3_11(AssociatedTypeWitness, v7, v8, v9, &unk_2543BD7A8);
  swift_getAssociatedConformanceWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_2543A1FF8();
  OUTLINED_FUNCTION_3();
  v81 = v11;
  v82 = v10;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_10_0();
  v79 = v13;
  v80 = *(AssociatedTypeWitness - 8);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_10_0();
  v78 = v15;
  v20 = OUTLINED_FUNCTION_3_11(v16, v17, v18, v19, &unk_2543BD7C8);
  OUTLINED_FUNCTION_2_13();
  v21 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_13();
  v22 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_13();
  v91 = v20;
  v92 = v21;
  v93 = v22;
  v94 = swift_getAssociatedConformanceWitness();
  updated = type metadata accessor for ObservationUpdateScope(255, &v91);
  v23 = sub_2543A30C8();
  OUTLINED_FUNCTION_3();
  v76 = v24;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_10_0();
  v74 = v26;
  v31 = OUTLINED_FUNCTION_3_11(v27, v28, v29, v30, &unk_2543BD7B0);
  v77 = v23;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_3();
  v73 = v32;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_10_0();
  v72 = v34;
  v89 = v31;
  v87 = *(v31 - 8);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_0();
  v71 = v36;
  v37 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_3();
  v85 = v38;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v39);
  OUTLINED_FUNCTION_10_0();
  v84 = v40;
  OUTLINED_FUNCTION_2_13();
  v41 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_13();
  v42 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_13();
  v43 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_2_13();
  v44 = swift_getAssociatedConformanceWitness();
  v91 = v37;
  v92 = AssociatedTypeWitness;
  v93 = v41;
  v94 = v42;
  v95 = v43;
  v96 = v44;
  v97 = AssociatedConformanceWitness;
  v45 = type metadata accessor for UpdateResult(0, &v91);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_134();
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v70 - v48;
  (*(v50 + 16))(&v70 - v48, v90, v45, v47);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v51 = v80;
    v52 = v78;
    (*(v80 + 32))(v78, v49, AssociatedTypeWitness);
    v53 = OUTLINED_FUNCTION_5_10();
    v54(v53);
    v55 = v79;
    (*(v51 + 16))(v79, v52, AssociatedTypeWitness);
    __swift_storeEnumTagSinglePayload(v55, 0, 1, AssociatedTypeWitness);
    sub_2543A2088();

    (*(v81 + 8))(v55, v82);
    return (*(v51 + 8))(v52, AssociatedTypeWitness);
  }

  else
  {
    v57 = v84;
    (*(v85 + 32))(v84, v49, v37);
    v82 = *(a4 + 64);
    v58 = OUTLINED_FUNCTION_5_10();
    v59(v58);
    v60 = v72;
    sub_2543A20A8();

    AssociatedConformanceWitness = *(v87 + 16);
    v81 = a4 + 64;
    v61 = v71;
    AssociatedConformanceWitness(v71, v60, v89);
    v90 = *(v73 + 8);
    v90(v60, TupleTypeMetadata2);
    v62 = v57;
    v63 = v83;
    (*(a4 + 72))(v61, v62, v83, a3, a4);
    v64 = OUTLINED_FUNCTION_5_10();
    v82(v64);
    v65 = updated;
    v66 = v74;
    (*(*(updated - 8) + 16))(v74, v63, updated);
    __swift_storeEnumTagSinglePayload(v66, 0, 1, v65);
    v68 = TupleTypeMetadata2;
    v67 = v89;
    v69 = *(TupleTypeMetadata2 + 48);
    AssociatedConformanceWitness(v60, v61, v89);
    (*(v76 + 32))(v60 + v69, v66, v77);
    sub_2543A2098();

    v90(v60, v68);
    (*(v87 + 8))(v61, v67);
    return (*(v85 + 8))(v84, v37);
  }
}

unint64_t sub_25430D598()
{
  sub_2543A3298();

  v4 = OUTLINED_FUNCTION_6_8(v0, v1, v2, v3, &unk_2543BD7A8);
  OUTLINED_FUNCTION_5_10();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v6 = (*(*(AssociatedConformanceWitness + 8) + 32))(v4);
  MEMORY[0x259C093D0](v6);

  v7 = MEMORY[0x259C093D0](0x6574656772617420, 0xEC0000003D794264);
  OUTLINED_FUNCTION_6_8(v7, v8, v9, v10, &unk_2543BD7C8);
  v11 = sub_2543A37B8();
  MEMORY[0x259C093D0](v11);

  return 0xD000000000000012;
}

uint64_t OUTLINED_FUNCTION_3_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

uint64_t OUTLINED_FUNCTION_6_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return swift_getAssociatedTypeWitness();
}

void sub_25430D714(uint64_t a1)
{
  [objc_allocWithZone(MEMORY[0x277CCAAB0]) initRequiringSecureCoding_];
  OUTLINED_FUNCTION_0_18();
  sub_2543A3018();
  if (!v2)
  {
    [v1 finishEncoding];
    v3 = [v1 encodedData];
    v4 = sub_2543A1EF8();
    v6 = v5;

    v7 = sub_2543A1EC8();
    sub_2542D7D40(v4, v6);
    OUTLINED_FUNCTION_7_2();
    v8 = sub_2543A2858();
    [v1 encodeObject:v7 forKey:v8];

    v1 = v8;
  }
}

uint64_t sub_25430D830@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  sub_25430DA38(a1, a2);
  if (v6 >> 60 == 15)
  {

    return __swift_storeEnumTagSinglePayload(a4, 1, 1, a3);
  }

  else
  {
    v7 = objc_allocWithZone(MEMORY[0x277CCAAC8]);
    v8 = OUTLINED_FUNCTION_7_2();
    sub_2542D61B4(v8, v9);
    v10 = OUTLINED_FUNCTION_7_2();
    sub_25430DAA8(v10, v11);
    OUTLINED_FUNCTION_0_18();
    sub_2543A3028();

    v13 = OUTLINED_FUNCTION_7_2();

    return sub_2542E5880(v13, v14);
  }
}

uint64_t sub_25430D964(uint64_t a1, uint64_t a2)
{
  v3 = sub_2543A2858();
  v4 = [v2 decodeObjectForKey_];

  if (v4)
  {
    sub_2543A3158();
    swift_unknownObjectRelease();
  }

  else
  {
    v7 = 0u;
    v8 = 0u;
  }

  v9[0] = v7;
  v9[1] = v8;
  if (*(&v8 + 1))
  {
    if (swift_dynamicCast())
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_2542E1050(v9);
    return 0;
  }
}

uint64_t sub_25430DA38(uint64_t a1, uint64_t a2)
{
  sub_25430DB88();
  v2 = sub_2543A3088();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = sub_2543A1EF8();

  return v4;
}

id sub_25430DAA8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v11[1] = *MEMORY[0x277D85DE8];
  v6 = sub_2543A1EC8();
  v11[0] = 0;
  v7 = [v3 initForReadingFromData:v6 error:v11];

  if (v7)
  {
    v8 = v11[0];
  }

  else
  {
    v9 = v11[0];
    sub_2543A1E88();

    swift_willThrow();
  }

  sub_2542D7D40(a1, a2);
  return v7;
}

unint64_t sub_25430DB88()
{
  result = qword_27F5E0608;
  if (!qword_27F5E0608)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27F5E0608);
  }

  return result;
}

uint64_t TransportClientCoordinator.__allocating_init()()
{
  v0 = swift_allocObject();
  TransportClientCoordinator.init()();
  return v0;
}

uint64_t TransportClientCoordinator.init()()
{
  sub_2543A1FA8();
  *(v0 + OBJC_IVAR____TtC15HomePodSettings26TransportClientCoordinator_clients) = MEMORY[0x277D84F90];
  return v0;
}

void sub_25430DCAC()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0[7] + OBJC_IVAR____TtC15HomePodSettings26TransportClientCoordinator_clients);
  v0[8] = v1;
  v2 = *(v1 + 16);
  v0[9] = v2;
  v0[10] = 0;
  if (v2)
  {
    if (*(v1 + 16))
    {
      sub_2543004CC(v1 + 32, (v0 + 2));
      OUTLINED_FUNCTION_1_15();
      OUTLINED_FUNCTION_5_6();
      v3 = swift_task_alloc();
      v4 = OUTLINED_FUNCTION_10_7(v3);
      *v4 = v5;
      v6 = OUTLINED_FUNCTION_0_19(v4);

      v7(v6);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    OUTLINED_FUNCTION_27();

    v8();
  }
}

uint64_t sub_25430DE08()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 96) = v0;

  __swift_destroy_boxed_opaque_existential_0((v3 + 16));
  if (v0)
  {
    v6 = sub_2542E9C18;
  }

  else
  {
    v6 = sub_25430DF14;
  }

  return MEMORY[0x2822009F8](v6);
}

void sub_25430DF14()
{
  OUTLINED_FUNCTION_40();
  v1 = v0[9];
  v2 = v0[10] + 1;
  v0[10] = v2;
  if (v2 == v1)
  {
    OUTLINED_FUNCTION_27();

    v3();
  }

  else if (v2 >= *(v0[8] + 16))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_11_6(v2);
    OUTLINED_FUNCTION_1_15();
    OUTLINED_FUNCTION_5_6();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_10_7(v4);
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_0_19(v5);

    v8(v7);
  }
}

uint64_t sub_25430E078()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0[7] + OBJC_IVAR____TtC15HomePodSettings26TransportClientCoordinator_clients);
  v0[8] = v1;
  v2 = *(v1 + 16);
  v0[9] = v2;
  if (v2)
  {
    v0[10] = 0;
    sub_2543004CC(v1 + 32, (v0 + 2));
    OUTLINED_FUNCTION_1_15();
    OUTLINED_FUNCTION_5_6();
    v3 = swift_task_alloc();
    v4 = OUTLINED_FUNCTION_10_7(v3);
    *v4 = v5;
    v6 = OUTLINED_FUNCTION_0_19(v4);

    return v7(v6);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v9();
  }
}

uint64_t sub_25430E1C8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_7();
  *v4 = v3;

  __swift_destroy_boxed_opaque_existential_0((v2 + 16));

  return MEMORY[0x2822009F8](sub_25430E2BC);
}

uint64_t sub_25430E2BC()
{
  OUTLINED_FUNCTION_40();
  v1 = *(v0 + 80) + 1;
  if (v1 == *(v0 + 72))
  {
    OUTLINED_FUNCTION_27();

    return v2();
  }

  else
  {
    *(v0 + 80) = v1;
    OUTLINED_FUNCTION_11_6(v1);
    OUTLINED_FUNCTION_1_15();
    OUTLINED_FUNCTION_5_6();
    v4 = swift_task_alloc();
    v5 = OUTLINED_FUNCTION_10_7(v4);
    *v5 = v6;
    v7 = OUTLINED_FUNCTION_0_19(v5);

    return v8(v7);
  }
}

uint64_t TransportClientCoordinator.deinit()
{
  v1 = OBJC_IVAR____TtC15HomePodSettings26TransportClientCoordinator_logger;
  sub_2543A1FB8();
  OUTLINED_FUNCTION_2_3();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t TransportClientCoordinator.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC15HomePodSettings26TransportClientCoordinator_logger;
  sub_2543A1FB8();
  OUTLINED_FUNCTION_2_3();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for TransportClientCoordinator(uint64_t a1)
{
  result = qword_27F5E0620;
  if (!qword_27F5E0620)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25430E550(uint64_t a1)
{
  result = sub_2543A1FB8();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of TransportClientCoordinator.activate()()
{
  v4 = (*(*v0 + 112) + **(*v0 + 112));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2542D32CC;

  return v4();
}

uint64_t dispatch thunk of TransportClientCoordinator.deactivate()()
{
  v4 = (*(*v0 + 120) + **(*v0 + 120));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_2542D32CC;

  return v4();
}

uint64_t OUTLINED_FUNCTION_1_15()
{
  v1 = v0[6];
  __swift_project_boxed_opaque_existential_0(v0 + 2, v0[5]);
  return v1;
}

uint64_t OUTLINED_FUNCTION_11_6@<X0>(uint64_t a1@<X8>)
{

  return sub_2543004CC(v1 + 40 * a1 + 32, v2 + 16);
}

uint64_t (*sub_25430E8B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4))(uint64_t a1, char *a2)
{
  v8 = swift_allocObject();
  v9 = *(v4 + 88);
  v8[2] = *(v4 + 80);
  v8[3] = a3;
  v8[4] = v9;
  v8[5] = a4;
  v8[6] = a2;
  v8[7] = v4;
  sub_2543A2768();
  return sub_25430F00C;
}

uint64_t sub_25430E938(uint64_t a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v58 = a4;
  v64 = a3;
  v65 = a1;
  v66 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v55 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v54 = &v53 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for ObservationScope(255, AssociatedTypeWitness, AssociatedConformanceWitness, v13);
  v14 = swift_getAssociatedConformanceWitness();
  v15 = swift_getAssociatedConformanceWitness();
  v59 = AssociatedTypeWitness;
  v67 = AssociatedTypeWitness;
  v68 = v14;
  v69 = v15;
  v70 = AssociatedConformanceWitness;
  v53 = AssociatedConformanceWitness;
  updated = type metadata accessor for ObservationUpdateScope(255, &v67);
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v63 = &v53 - v17;
  v61 = *(updated - 8);
  MEMORY[0x28223BE20](v18);
  v60 = &v53 - v19;
  v56 = a8;
  v57 = a6;
  v20 = swift_getAssociatedTypeWitness();
  v21 = sub_2543A30C8();
  v22 = swift_getTupleTypeMetadata2();
  v23 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v25 = &v53 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27.n128_f64[0] = MEMORY[0x28223BE20](v26);
  v29 = &v53 - v28;
  v30 = *(v20 - 8);
  (*(v30 + 16))(&v53 - v28, v65, v20, v27);
  v31 = *(v21 - 8);
  (*(v31 + 16))(&v29[*(v22 + 48)], v66, v21);
  (*(v23 + 16))(v25, v29, v22);
  v32 = *(v22 + 48);
  if (__swift_getEnumTagSinglePayload(&v25[v32], 1, updated) == 1)
  {
    (*(v23 + 8))(v29, v22);
    (*(v31 + 8))(&v25[v32], v21);
    (*(v30 + 8))(v25, v20);
  }

  else
  {
    v66 = v29;
    v33 = v22;
    v35 = v60;
    v34 = v61;
    (*(v61 + 32))(v60, &v25[v32], updated);
    (*(v30 + 8))(v25, v20);
    v36 = v63;
    v37 = *(TupleTypeMetadata2 + 48);
    (*(v34 + 16))(&v63[v37], v35, updated);
    v38 = v34;
    v39 = v35;
    if (!v64)
    {
      v48 = *(v38 + 8);
      v48(v35, updated);
      (*(v23 + 8))(v66, v33);
      v48(&v36[v37], updated);
      v47 = 1;
      return v47 & 1;
    }

    v40 = v59;
    v41 = v33;
    if (__swift_getEnumTagSinglePayload(&v36[v37], 1, v59) != 1)
    {
      v49 = v55;
      v50 = &v36[v37];
      v51 = v54;
      (*(v55 + 32))(v54, v50, v40);
      v47 = sub_2543A2E98();
      (*(v49 + 8))(v51, v40);
      (*(v38 + 8))(v39, updated);
      (*(v23 + 8))(v66, v41);
      return v47 & 1;
    }

    v67 = 0;
    v68 = 0xE000000000000000;
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD000000000000032, 0x80000002543B89A0);
    v42 = (*(*(v56 + 8) + 32))();
    MEMORY[0x259C093D0](v42);

    v43 = v67;
    v44 = v68;
    v45 = v58;
    v46 = sub_2542DF684();
    static Logging.ulog(_:_:extended:)(90, v43, v44, v46 & 1, v45, &off_286648A78);

    (*(v38 + 8))(v39, updated);
    (*(v23 + 8))(v66, v33);
  }

  v47 = 0;
  return v47 & 1;
}

uint64_t sub_25430EFD4()
{

  return MEMORY[0x2821FE8E8](v0);
}

void sub_25430F01C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for ObservationManager.ObservationKey(319, *(a1 + 16), *(a1 + 24), a4);
  if (v4 <= 0x3F)
  {
    sub_25430F4F8();
    if (v5 <= 0x3F)
    {
      sub_25430F558();
      if (v6 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

uint64_t sub_25430F0A8(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = *(swift_getAssociatedTypeWitness() - 8);
  v6 = ((*(v5 + 80) + 16) & ~*(v5 + 80)) + *(v5 + 64);
  v7 = 32;
  if (v6 > 0x20)
  {
    v7 = v6;
  }

  v8 = 252 - (2u >> (8 * v7));
  if (v7 >= 4)
  {
    v8 = 252;
  }

  if (!a2)
  {
    return 0;
  }

  if (v8 >= a2)
  {
    goto LABEL_24;
  }

  v9 = v7 + 1;
  v10 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v13 = ((~(-1 << v10) + a2 - v8) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_24;
      }

      goto LABEL_16;
    }

    if (v13 < 2)
    {
LABEL_24:
      v15 = *(a1 + v7);
      if (v8 <= (v15 ^ 0xFFu))
      {
        return 0;
      }

      else
      {
        return (256 - v15);
      }
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_24;
  }

LABEL_16:
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

    switch(v9)
    {
      case 2:
        LODWORD(v9) = *a1;
        break;
      case 3:
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v9) = *a1;
        break;
      default:
        LODWORD(v9) = *a1;
        break;
    }
  }

  return (v9 | v14) + v8 + 1;
}

void sub_25430F278(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = *(swift_getAssociatedTypeWitness() - 8);
  v8 = ((*(v7 + 80) + 16) & ~*(v7 + 80)) + *(v7 + 64);
  if (v8 <= 0x20)
  {
    v8 = 32;
  }

  if (v8 >= 4)
  {
    v9 = 252;
  }

  else
  {
    v9 = 252 - (2u >> (8 * v8));
  }

  v10 = v8 + 1;
  v11 = 8 * (v8 + 1);
  if (v9 >= a3)
  {
    v12 = 0;
  }

  else if (v10 <= 3)
  {
    v15 = ((~(-1 << v11) + a3 - v9) >> v11) + 1;
    if (HIWORD(v15))
    {
      v12 = 4;
    }

    else
    {
      if (v15 < 0x100)
      {
        v16 = 1;
      }

      else
      {
        v16 = 2;
      }

      if (v15 >= 2)
      {
        v12 = v16;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    v12 = 1;
  }

  if (v9 < a2)
  {
    v13 = ~v9 + a2;
    if (v10 < 4)
    {
      v14 = (v13 >> v11) + 1;
      if (v8 != -1)
      {
        v17 = v13 & ~(-1 << v11);
        bzero(a1, v10);
        if (v10 == 3)
        {
          *a1 = v17;
          a1[2] = BYTE2(v17);
        }

        else if (v10 == 2)
        {
          *a1 = v17;
        }

        else
        {
          *a1 = v13;
        }
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v13;
      v14 = 1;
    }

    switch(v12)
    {
      case 1:
        a1[v10] = v14;
        return;
      case 2:
        *&a1[v10] = v14;
        return;
      case 3:
        goto LABEL_40;
      case 4:
        *&a1[v10] = v14;
        return;
      default:
        return;
    }
  }

  switch(v12)
  {
    case 1:
      a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 2:
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_29;
    case 3:
LABEL_40:
      __break(1u);
      JUMPOUT(0x25430F4B8);
    case 4:
      *&a1[v10] = 0;
      goto LABEL_28;
    default:
LABEL_28:
      if (a2)
      {
LABEL_29:
        a1[v8] = -a2;
      }

      return;
  }
}

void sub_25430F4F8()
{
  if (!qword_27F5E06B0)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &qword_27F5E06B0);
    }
  }
}

unint64_t sub_25430F558()
{
  result = qword_27F5E06B8[0];
  if (!qword_27F5E06B8[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_27F5E06B8);
  }

  return result;
}

uint64_t sub_25430F604()
{
  v0 = swift_allocObject();
  sub_25430F63C();
  return v0;
}

uint64_t *sub_25430F63C()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = sub_2543A26F8();
  return v0;
}

uint64_t sub_25430F6A4(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](a1);
  v6 = &v14[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v9 = &v14[-v8];
  swift_beginAccess();
  sub_2543A2768();
  v10 = sub_2543A2E78();

  (*(v4 + 16))(v6, a1, v3);
  swift_beginAccess();
  sub_2543A2EB8();
  v11 = sub_2543A2E58();
  (*(v4 + 8))(v9, v3);
  swift_endAccess();
  if (v11)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 | v11 & 1u & v10;
}

uint64_t sub_25430F86C(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  swift_beginAccess();
  v5 = *(v4 + 80);
  sub_2543A2EB8();
  sub_2543A2E68();
  swift_endAccess();
  if (__swift_getEnumTagSinglePayload(a1, 1, v5) == 1)
  {
    v6 = 0;
  }

  else
  {
    sub_2543A2768();
    v6 = sub_2543A2E78();
  }

  return v6 & 1;
}

uint64_t sub_25430F960()
{
  sub_2542D3AF4();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_25430FA50(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25430FA8C(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_2543A30C8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v12 - v9;
  LOBYTE(a1) = sub_25430F86C(v7, a1);
  (*(v5 + 32))(v10, v7, v4);
  __swift_getEnumTagSinglePayload(v10, 1, v3);
  (*(v5 + 8))(v10, v4);
  return a1 & 1;
}

HomePodSettings::CarrySettings::ProfileContext __swiftcall CarrySettings.ProfileContext.init(variant:audienceID:)(HomePodSettings::CarrySettings::ProfileVariant variant, Swift::String_optional audienceID)
{
  *v2 = *variant;
  *(v2 + 8) = audienceID;
  result.audienceIdentifier = audienceID;
  result.variant = variant;
  return result;
}

uint64_t sub_25430FBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  v8 = type metadata accessor for CarrySettings.BufferItem(0, a4, a3, a4);
  v9 = *(*(a4 - 8) + 32);
  v10 = a5 + *(v8 + 28);

  return v9(v10, a3, a4);
}

HomePodSettings::CarrySettings::ProfileVariant_optional __swiftcall CarrySettings.ProfileVariant.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_25430FCF8@<X0>(uint64_t *a1@<X8>)
{
  result = CarrySettings.ProfileVariant.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t CarrySettings.ProfileContext.audienceIdentifier.getter()
{
  v1 = *(v0 + 8);
  sub_2543A2768();
  return v1;
}

uint64_t static CarrySettings.ProfileContext.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    v3 = *(a1 + 2);
    v4 = *(a2 + 2);
    if (v3)
    {
      if (v4)
      {
        v5 = *(a1 + 1) == *(a2 + 1) && v3 == v4;
        if (v5 || (sub_2543A3608() & 1) != 0)
        {
          return 1;
        }
      }
    }

    else if (!v4)
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_25430FE7C()
{
  result = qword_27F5E0740[0];
  if (!qword_27F5E0740[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E0740);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CarrySettings(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x25430FF70);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CarrySettings.ProfileVariant(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x254310070);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t sub_2543100A4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 24))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2543100F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
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
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_254310160(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2543101E0(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = *(v4 - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 80);
  if (v6 <= 0xC)
  {
    v8 = 12;
  }

  else
  {
    v8 = *(v5 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v9 = a2 - v8;
  if (a2 <= v8)
  {
    goto LABEL_23;
  }

  v10 = ((v7 + 16) & ~v7) + *(*(v4 - 8) + 64);
  v11 = 8 * v10;
  if (v10 <= 3)
  {
    v14 = ((v9 + ~(-1 << v11)) >> v11) + 1;
    if (HIWORD(v14))
    {
      v12 = *(a1 + v10);
      if (!v12)
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 > 0xFF)
    {
      v12 = *(a1 + v10);
      if (!*(a1 + v10))
      {
        goto LABEL_23;
      }

      goto LABEL_15;
    }

    if (v14 < 2)
    {
LABEL_23:
      if (v6 > 0xC)
      {
        return __swift_getEnumTagSinglePayload((a1 + v7 + 16) & ~v7, v6, v4);
      }

      v16 = *(a1 + 1) >> 60;
      if (((4 * v16) & 0xC) != 0)
      {
        return 16 - ((4 * v16) & 0xC | (v16 >> 2));
      }

      else
      {
        return 0;
      }
    }
  }

  v12 = *(a1 + v10);
  if (!*(a1 + v10))
  {
    goto LABEL_23;
  }

LABEL_15:
  v15 = (v12 - 1) << v11;
  if (v10 > 3)
  {
    v15 = 0;
  }

  if (v10)
  {
    if (v10 > 3)
    {
      LODWORD(v10) = 4;
    }

    switch(v10)
    {
      case 2:
        LODWORD(v10) = *a1;
        break;
      case 3:
        LODWORD(v10) = *a1 | (*(a1 + 2) << 16);
        break;
      case 4:
        LODWORD(v10) = *a1;
        break;
      default:
        LODWORD(v10) = *a1;
        break;
    }
  }

  return v8 + (v10 | v15) + 1;
}

void sub_254310384(char *a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  if (v8 <= 0xC)
  {
    v9 = 12;
  }

  else
  {
    v9 = *(v7 + 84);
  }

  v10 = *(v7 + 80);
  v11 = ((v10 + 16) & ~v10) + *(*(v6 - 8) + 64);
  v12 = 8 * v11;
  v13 = a3 >= v9;
  v14 = a3 - v9;
  if (v14 != 0 && v13)
  {
    if (v11 <= 3)
    {
      v18 = ((v14 + ~(-1 << v12)) >> v12) + 1;
      if (HIWORD(v18))
      {
        v15 = 4;
      }

      else
      {
        if (v18 < 0x100)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2;
        }

        if (v18 >= 2)
        {
          v15 = v19;
        }

        else
        {
          v15 = 0;
        }
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  if (v9 < a2)
  {
    v16 = ~v9 + a2;
    if (v11 < 4)
    {
      v17 = (v16 >> v12) + 1;
      if (v11)
      {
        v20 = v16 & ~(-1 << v12);
        bzero(a1, v11);
        if (v11 == 3)
        {
          *a1 = v20;
          a1[2] = BYTE2(v20);
        }

        else if (v11 == 2)
        {
          *a1 = v20;
        }

        else
        {
          *a1 = v16;
        }
      }
    }

    else
    {
      bzero(a1, v11);
      *a1 = v16;
      v17 = 1;
    }

    switch(v15)
    {
      case 1:
        a1[v11] = v17;
        return;
      case 2:
        *&a1[v11] = v17;
        return;
      case 3:
        goto LABEL_44;
      case 4:
        *&a1[v11] = v17;
        return;
      default:
        return;
    }
  }

  switch(v15)
  {
    case 1:
      a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 2:
      *&a1[v11] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_27;
    case 3:
LABEL_44:
      __break(1u);
      JUMPOUT(0x2543105E4);
    case 4:
      *&a1[v11] = 0;
      goto LABEL_26;
    default:
LABEL_26:
      if (a2)
      {
LABEL_27:
        if (v8 > 0xC)
        {
          v21 = &a1[v10 + 16] & ~v10;

          __swift_storeEnumTagSinglePayload(v21, a2, v8, v6);
        }

        else if (a2 > 0xC)
        {
          *a1 = (a2 - 13);
          *(a1 + 1) = 0;
        }

        else
        {
          *a1 = 0;
          *(a1 + 1) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
        }
      }

      return;
  }
}

uint64_t get_enum_tag_for_layout_string_15HomePodSettings05CarryC0O15NetworkingErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_25431063C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF9 && *(a1 + 16))
  {
    return (*a1 + 2147483641);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 6;
  if (v4 >= 8)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_254310698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFF9)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483641;
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF9)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 6;
    }
  }

  return result;
}

unint64_t sub_2543106F4()
{
  result = qword_27F5E07C8;
  if (!qword_27F5E07C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E07C8);
  }

  return result;
}

uint64_t TransportRequestHandlerService.canHandle<A>(request:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  result = (*(a4 + 24))(a2, a4);
  v10 = result;
  v11 = 0;
  v12 = *(result + 16);
  while (1)
  {
    if (v12 == v11)
    {
LABEL_6:

      return v12 != v11;
    }

    if (v11 >= *(v10 + 16))
    {
      break;
    }

    v13 = *(v10 + 16 * v11 + 32);
    result = sub_254310818(&v13, a2, a3, a4, a5);
    if (result)
    {
      goto LABEL_6;
    }

    ++v11;
  }

  __break(1u);
  return result;
}

uint64_t sub_254310818(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = (*(a1[1] + 32))(*a1);
  v9 = v8;
  if (v7 == (*(a5 + 32))(a3, a5) && v9 == v10)
  {
    v12 = 1;
  }

  else
  {
    v12 = sub_2543A3608();
  }

  return v12 & 1;
}

uint64_t dispatch thunk of TransportRequestHandlerService.activate()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_2542FE220;

  return v7(a1, a2);
}

uint64_t dispatch thunk of TransportRequestHandlerService.handleRequest<A>(_:from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 40) + **(a7 + 40));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = sub_2542DF754;

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of TransportRequestHandlerService.handleLostMember(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 48) + **(a3 + 48));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_2542DF754;

  return v9(a1, a2, a3);
}

id BetaEnrollment.ModelCoder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_254310D40(uint64_t result, char a2)
{
  v3 = v2 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID;
  *v3 = result;
  *(v3 + 8) = a2 & 1;
  return result;
}

id sub_254310D84()
{
  v0[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availability] = 2;
  v0[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_state] = 5;
  v1 = &v0[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID];
  *v1 = 0;
  v1[8] = 1;
  *&v0[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms] = 0;
  v3.receiver = v0;
  v3.super_class = _s10ModelCoderC9ContainerCMa();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_254310E20(void *a1)
{
  v2 = v1;
  v4 = OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availability;
  v2[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availability] = 2;
  v5 = OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_state;
  v2[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_state] = 5;
  v6 = &v2[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID];
  *v6 = 0;
  v6[8] = 1;
  v7 = OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms;
  *&v2[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms] = 0;
  v8 = sub_2543A2858();
  v9 = OUTLINED_FUNCTION_0_20();
  v11 = [v9 v10];

  if (v11)
  {
    v12 = sub_2543A2858();
    v13 = OUTLINED_FUNCTION_0_20();
    v15 = [v13 v14];

    v16 = 5;
    if (v15 < 5)
    {
      v16 = v15;
    }

    v2[v5] = v16;
  }

  v17 = sub_2543A2858();
  v18 = OUTLINED_FUNCTION_0_20();
  v20 = [v18 v19];

  if (v20)
  {
    v21 = sub_2543A2858();
    v22 = OUTLINED_FUNCTION_0_20();
    v24 = [v22 v23];

    if (v24 == 1)
    {
      v25 = 1;
    }

    else
    {
      v25 = 2;
    }

    if (!v24)
    {
      v25 = 0;
    }

    v2[v4] = v25;
  }

  v26 = OUTLINED_FUNCTION_6_4();
  v27 = OUTLINED_FUNCTION_0_20();
  v29 = [v27 v28];

  if (v29)
  {
    v30 = OUTLINED_FUNCTION_6_4();
    v31 = OUTLINED_FUNCTION_0_20();
    v33 = [v31 v32];

    *v6 = v33;
    v6[8] = 0;
  }

  v34 = sub_2543A2858();
  v35 = OUTLINED_FUNCTION_0_20();
  v37 = [v35 v36];

  if (v37)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0800, &qword_2543AAB30);
    v38 = swift_allocObject();
    *(v38 + 16) = xmmword_2543A7DE0;
    *(v38 + 32) = sub_2542D6250(0, &unk_27F5E0808, 0x277CBEA60);
    *(v38 + 40) = type metadata accessor for BetaProgram();
    sub_2543A3098();

    if (v55)
    {
      v39 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0818, qword_2543AAB38);
      OUTLINED_FUNCTION_4_8(v39, v40, v41, v39, v42, v43, v44, v45, v51, v52);
      v46 = swift_dynamicCast();
      v47 = v53;
      if (!v46)
      {
        v47 = 0;
      }
    }

    else
    {
      sub_2542E1050(v54);
      v47 = 0;
    }

    *&v2[v7] = v47;
  }

  v48 = _s10ModelCoderC9ContainerCMa();
  v56.receiver = v2;
  v56.super_class = v48;
  v49 = objc_msgSendSuper2(&v56, sel_init);

  return v49;
}

void sub_254311104(void *a1)
{
  v3 = *(v1 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availability);
  if (v3 != 2)
  {
    v4 = sub_2543A2858();
    [a1 encodeInteger:v3 & 1 forKey:v4];
  }

  if (*(v1 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_state) != 5)
  {
    v5 = sub_2543A2858();
    OUTLINED_FUNCTION_1_16(v5);
  }

  if ((*(v1 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID + 8) & 1) == 0)
  {
    v6 = OUTLINED_FUNCTION_6_4();
    OUTLINED_FUNCTION_1_16(v6);
  }

  if (*(v1 + OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms))
  {
    type metadata accessor for BetaProgram();
    sub_2543A2768();
    v7 = sub_2543A2A38();

    v8 = sub_2543A2858();
    [a1 encodeObject:v7 forKey:v8];
  }
}

void sub_254311378(uint64_t a1, uint64_t a2, void *a3)
{
  sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
  sub_2543A3048();
  if (!v3)
  {
    if (v27)
    {
      v5 = _s10ModelCoderC9ContainerCMa();
      OUTLINED_FUNCTION_4_8(v5, v6, v7, v5, v8, v9, v10, v11, v23, v24);
      if (swift_dynamicCast())
      {
        ObjectType = swift_getObjectType();
        if (dynamic_cast_existential_1_conditional(a3, ObjectType, &protocol descriptor for BetaEnrollmentModelMessaging))
        {
          v14 = v13;
          v15 = swift_getObjectType();
          v26[0] = v25[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availability];
          v16 = *(v14 + 16);
          v17 = a3;
          v16(v26, v15, v14);
          v26[0] = v25[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_state];
          (*(v14 + 40))(v26, v15, v14);
          (*(v14 + 64))(*&v25[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID], v25[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID + 8], v15, v14);
          v18 = *(v14 + 88);
          v19 = sub_2543A2768();
          v18(v19, v15, v14);
        }

        else
        {
          sub_2542E10B8();
          v21 = swift_allocError();
          OUTLINED_FUNCTION_5_11(v21, v22);
        }

        return;
      }
    }

    else
    {
      sub_2542E1050(v26);
    }

    sub_2542E10B8();
    swift_allocError();
    *v20 = 0;
    swift_willThrow();
  }
}

void *sub_254311660(void *a1)
{
  v19[1] = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  if (dynamic_cast_existential_1_conditional(a1, ObjectType, &protocol descriptor for BetaEnrollmentModelMessaging))
  {
    v5 = v4;
    v6 = objc_allocWithZone(_s10ModelCoderC9ContainerCMa());
    v7 = a1;
    v8 = [v6 init];
    v9 = swift_getObjectType();
    (*(v5 + 8))(v19, v9, v5);
    v8[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availability] = v19[0];
    (*(v5 + 32))(v19, v9, v5);
    v8[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_state] = v19[0];
    v10 = (*(v5 + 56))(v9, v5);
    v11 = &v8[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_enrolledProgramID];
    *v11 = v10;
    v11[8] = v12 & 1;
    *&v8[OBJC_IVAR___HPSBetaEnrollmentDeviceModelCoderContainer_availablePrograms] = (*(v5 + 80))(v9, v5);

    v13 = objc_opt_self();
    v19[0] = 0;
    v14 = [v13 archivedDataWithRootObject:v8 requiringSecureCoding:1 error:v19];
    v15 = v19[0];
    if (v14)
    {
      v1 = sub_2543A1EF8();
    }

    else
    {
      v1 = v15;
      sub_2543A1E88();

      swift_willThrow();
    }
  }

  else
  {
    sub_2542E10B8();
    v16 = swift_allocError();
    OUTLINED_FUNCTION_5_11(v16, v17);
  }

  return v1;
}

id BetaEnrollment.ModelCoder.init()(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BetaEnrollment.ModelCoder();
  return objc_msgSendSuper2(&v3, sel_init);
}

id sub_254311A00(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t dynamic_cast_existential_1_conditional(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (swift_conformsToProtocol2())
  {
    return a1;
  }

  else
  {
    return 0;
  }
}

id OUTLINED_FUNCTION_1_16(uint64_t a1)
{

  return [v1 (v3 + 2207)];
}

uint64_t OUTLINED_FUNCTION_5_11(uint64_t a1, _BYTE *a2)
{
  *a2 = 1;

  return swift_willThrow();
}

BOOL sub_254311C3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a4 + 8))(&v33, a2, a4);
  v5 = v33;
  v6 = OUTLINED_FUNCTION_0_21();
  v7(v6);
  if (v5 == 2)
  {
    if (v32 != 2)
    {
      return 0;
    }
  }

  else if (v32 == 2 || ((v32 ^ v5) & 1) != 0)
  {
    return 0;
  }

  v8 = OUTLINED_FUNCTION_1_17();
  v9(v8);
  v10 = OUTLINED_FUNCTION_0_21();
  v11(v10);
  if (v31 == 5)
  {
    if (v30 != 5)
    {
      return 0;
    }
  }

  else if (v30 == 5 || v31 != v30)
  {
    return 0;
  }

  v12 = OUTLINED_FUNCTION_1_17();
  v14 = v13(v12);
  v16 = v15;
  v17 = OUTLINED_FUNCTION_0_21();
  v19 = v18(v17);
  if (v16)
  {
    if ((v20 & 1) == 0)
    {
      return 0;
    }

LABEL_16:
    v23 = OUTLINED_FUNCTION_1_17();
    v25 = v24(v23);
    v26 = OUTLINED_FUNCTION_0_21();
    v28 = v27(v26);
    if (v25)
    {
      if (v28)
      {
        v29 = sub_2542F560C(v25, v28);

        return (v29 & 1) != 0;
      }
    }

    else if (!v28)
    {
      return 1;
    }

    return 0;
  }

  v21 = v19;
  result = 0;
  if ((v20 & 1) == 0 && v14 == v21)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t sub_254311E68()
{
  swift_getObjectType();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v1);
  v4 = *((v3 & v2) + 0x60);
  OUTLINED_FUNCTION_1_2();
  sub_25430D714(v0 + v4);
}

void sub_2543120F8(void *a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = a1;
  sub_254311E68();
}

id sub_254312160(void *a1)
{
  v3 = *((*MEMORY[0x277D85000] & *v1) + 0x50);
  v21 = sub_2543A30C8();
  OUTLINED_FUNCTION_0_2();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v20 - v7;
  OUTLINED_FUNCTION_0_2();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v20 - v15;
  OUTLINED_FUNCTION_1_2();
  sub_25430D830(v17, 0xE800000000000000, v3, v8);

  if (__swift_getEnumTagSinglePayload(v8, 1, v3) == 1)
  {

    (*(v5 + 8))(v8, v21);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    (*(v10 + 32))(v16, v8, v3);
    swift_getObjectType();
    (*(v10 + 16))(v13, v16, v3);
    v18 = sub_2542C6F64(v13);

    (*(v10 + 8))(v16, v3);
    swift_deallocPartialClassInstance();
  }

  return v18;
}

BOOL sub_254312538(void *a1)
{
  v6 = [v1 groupID];
  if (v6)
  {
    v4 = v6;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 groupID])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &HPSHomeKitSetupCompleteNotification && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v8 = [v1 groupName];
  if (v8)
  {
    v4 = v8;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 groupName])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &HPSHomeKitSetupCompleteNotification && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v10 = [v1 model];
  if (v10)
  {
    v4 = v10;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 model])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &HPSHomeKitSetupCompleteNotification && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v12 = [v1 name];
  if (v12)
  {
    v4 = v12;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 name])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &selRef_containsValueForKey_ && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v14 = [v1 pairID];
  if (v14)
  {
    v4 = v14;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 pairID])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &HPSHomeKitSetupCompleteNotification && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v16 = [v1 pairName];
  if (v16)
  {
    v4 = v16;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 pairName])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &HPSHomeKitSetupCompleteNotification && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v18 = [v1 roomID];
  if (v18)
  {
    v4 = v18;
    sub_2543A2878();
    OUTLINED_FUNCTION_4_9();
  }

  else
  {
    OUTLINED_FUNCTION_1_18();
  }

  if ([a1 roomID])
  {
    sub_2543A2878();
    OUTLINED_FUNCTION_3_12();
    if (v2)
    {
      if (!v4)
      {
        goto LABEL_118;
      }

      if (v3 == &HPSHomeKitSetupCompleteNotification && v2 == v4)
      {
      }

      else
      {
        OUTLINED_FUNCTION_0_22();
        OUTLINED_FUNCTION_2_16();

        if ((v3 & 1) == 0)
        {
          return 0;
        }
      }
    }

    else if (v4)
    {
      goto LABEL_118;
    }
  }

  else if (v2)
  {
    goto LABEL_118;
  }

  v21 = [v1 roomName];
  if (v21)
  {
    v22 = v21;
    v23 = sub_2543A2878();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = [a1 roomName];
  if (!v26)
  {
    if (!v25)
    {
      return 1;
    }

LABEL_118:

    return 0;
  }

  v27 = v26;
  v28 = sub_2543A2878();
  v30 = v29;

  if (!v25)
  {
    if (!v30)
    {
      return 1;
    }

    goto LABEL_118;
  }

  if (!v30)
  {
    goto LABEL_118;
  }

  if (v23 != v28 || v25 != v30)
  {
    v32 = sub_2543A3608();

    return (v32 & 1) != 0;
  }

  return 1;
}

uint64_t OUTLINED_FUNCTION_0_22()
{

  return sub_2543A3608();
}

uint64_t OUTLINED_FUNCTION_2_16()
{
}

void OUTLINED_FUNCTION_3_12()
{
}

void OUTLINED_FUNCTION_4_9()
{
}

__n128 AlarmOperationResponse.init(_:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = *a1;
  *a2 = *a1;
  return result;
}

uint64_t AlarmOperationResponse.subscript.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  sub_2542D61B4(*v1, v4);
  swift_getAtKeyPath();
  return sub_2542D7D40(v3, v4);
}

uint64_t sub_254312BBC(uint64_t a1)
{
  v2 = sub_254312D50();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254312BF8(uint64_t a1)
{
  v2 = sub_254312D50();

  return MEMORY[0x2821FE720](a1, v2);
}

void AlarmOperationResponse.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E08A0, &qword_2543AABD0);
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *v0;
  v8 = v0[1];
  OUTLINED_FUNCTION_11_7();
  v9 = sub_254312D50();
  OUTLINED_FUNCTION_8_6(&type metadata for AlarmOperationResponse.CodingKeys, v10, v9);
  v11 = v7;
  v12 = v8;
  sub_254312DA4();
  sub_2543A3578();
  sub_2542D7D40(v11, v12);
  (*(v3 + 8))(v6, v1);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_254312D50()
{
  result = qword_27F5E08A8;
  if (!qword_27F5E08A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08A8);
  }

  return result;
}

unint64_t sub_254312DA4()
{
  result = qword_27F5E08B0;
  if (!qword_27F5E08B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08B0);
  }

  return result;
}

void AlarmOperationResponse.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E08B8, &qword_2543AABD8);
  OUTLINED_FUNCTION_3();
  v7 = v6;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v8);
  v10 = &v11 - v9;
  OUTLINED_FUNCTION_23_1();
  sub_254312D50();
  sub_2543A3768();
  if (!v0)
  {
    sub_254312F38();
    sub_2543A34D8();
    (*(v7 + 8))(v10, v5);
    *v4 = v11;
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_254312F38()
{
  result = qword_27F5E08C0;
  if (!qword_27F5E08C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08C0);
  }

  return result;
}

__n128 AlarmOperationRequest.Payload.init(operation:alarm:)@<Q0>(_BYTE *a1@<X0>, __n128 *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = *a1;
  result = *a2;
  *(a3 + 8) = *a2;
  return result;
}

uint64_t sub_254312FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D72616C61 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2543130B8(char a1)
{
  if (a1)
  {
    return 0x6D72616C61;
  }

  else
  {
    return 0x6F6974617265706FLL;
  }
}

uint64_t sub_2543130F8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254312FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254313120(uint64_t a1)
{
  v2 = sub_254313304();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25431315C(uint64_t a1)
{
  v2 = sub_254313304();

  return MEMORY[0x2821FE720](a1, v2);
}

void AlarmOperationRequest.Payload.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v16 = v1;
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E08C8, &qword_2543AABE0);
  OUTLINED_FUNCTION_3();
  v6 = v5;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v7);
  v9 = &v15 - v8;
  v10 = *v0;
  v11 = *(v0 + 2);
  v15 = *(v0 + 1);
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  v12 = sub_254313304();
  OUTLINED_FUNCTION_8_6(&type metadata for AlarmOperationRequest.Payload.CodingKeys, v13, v12);
  LOBYTE(v17) = v10;
  sub_254313358();
  OUTLINED_FUNCTION_12_7();
  v14 = v16;
  sub_2543A3578();
  if (!v14)
  {
    v17 = v15;
    v18 = v11;
    sub_2542D61B4(v15, v11);
    sub_254312DA4();
    OUTLINED_FUNCTION_12_7();
    sub_2543A3578();
    sub_2542D7D40(v17, v18);
  }

  (*(v6 + 8))(v9, v4);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_254313304()
{
  result = qword_27F5E08D0;
  if (!qword_27F5E08D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08D0);
  }

  return result;
}

unint64_t sub_254313358()
{
  result = qword_27F5E08D8;
  if (!qword_27F5E08D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08D8);
  }

  return result;
}

void AlarmOperationRequest.Payload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_16_1();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v29 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E08E0, &qword_2543AABE8);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v30);
  OUTLINED_FUNCTION_23_1();
  v31 = sub_254313304();
  OUTLINED_FUNCTION_9_6(&type metadata for AlarmOperationRequest.Payload.CodingKeys, v32, v31);
  if (!v23)
  {
    a13 = 0;
    sub_254313510();
    OUTLINED_FUNCTION_2_17(&type metadata for HPAlarmOperation, &a13);
    a13 = 1;
    sub_254312F38();
    OUTLINED_FUNCTION_2_17(&type metadata for HPAlarm, &a13);
    v33 = OUTLINED_FUNCTION_4_10();
    v34(v33);
    *v29 = v35;
    *(v29 + 8) = v35;
  }

  __swift_destroy_boxed_opaque_existential_0(v27);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_254313510()
{
  result = qword_27F5E08E8;
  if (!qword_27F5E08E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08E8);
  }

  return result;
}

uint64_t AlarmOperationRequest.payload.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
  return sub_2542D61B4(v2, v3);
}

__n128 AlarmOperationRequest.init(_:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t AlarmOperationRequest.subscript.getter(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  sub_2542D61B4(v3, v4);
  swift_getAtKeyPath();
  return sub_2542D7D40(v3, v4);
}

uint64_t sub_254313638(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = sub_2543A3608();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

uint64_t sub_2543136CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254313638(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2543136F8(uint64_t a1)
{
  v2 = sub_25431389C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254313734(uint64_t a1)
{
  v2 = sub_25431389C();

  return MEMORY[0x2821FE720](a1, v2);
}

void AlarmOperationRequest.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E08F0, &qword_2543AAC08);
  OUTLINED_FUNCTION_3();
  v3 = v2;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  HIDWORD(v11) = *v0;
  v7 = *(v0 + 1);
  v8 = *(v0 + 2);
  OUTLINED_FUNCTION_11_7();
  v9 = sub_25431389C();
  OUTLINED_FUNCTION_8_6(&type metadata for AlarmOperationRequest.CodingKeys, v10, v9);
  v12 = BYTE4(v11);
  v13 = v7;
  v14 = v8;
  sub_2543138F0();
  sub_2543A3578();
  sub_2542D7D40(v13, v14);
  (*(v3 + 8))(v6, v1);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_25431389C()
{
  result = qword_27F5E08F8;
  if (!qword_27F5E08F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E08F8);
  }

  return result;
}

unint64_t sub_2543138F0()
{
  result = qword_27F5E0900;
  if (!qword_27F5E0900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0900);
  }

  return result;
}

void AlarmOperationRequest.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0908, &qword_2543AAC10);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23_1();
  v6 = sub_25431389C();
  OUTLINED_FUNCTION_9_6(&type metadata for AlarmOperationRequest.CodingKeys, v7, v6);
  if (!v0)
  {
    sub_254313A60();
    OUTLINED_FUNCTION_2_17(&type metadata for AlarmOperationRequest.Payload, v8);
    v9 = OUTLINED_FUNCTION_4_10();
    v10(v9);
    *v4 = v11;
    *(v4 + 8) = v12;
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_254313A60()
{
  result = qword_27F5E0910;
  if (!qword_27F5E0910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0910);
  }

  return result;
}

unint64_t sub_254313AE0()
{
  result = qword_27F5E0918;
  if (!qword_27F5E0918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0918);
  }

  return result;
}

unint64_t sub_254313B34()
{
  result = qword_27F5E0920;
  if (!qword_27F5E0920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0920);
  }

  return result;
}

unint64_t sub_254313B88(uint64_t a1)
{
  result = sub_254313BB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_254313BB0()
{
  result = qword_27F5E0928;
  if (!qword_27F5E0928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0928);
  }

  return result;
}

unint64_t sub_254313C08()
{
  result = qword_27F5E0930;
  if (!qword_27F5E0930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0930);
  }

  return result;
}

unint64_t sub_254313C7C(uint64_t a1)
{
  result = sub_254313CA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_254313CA4()
{
  result = qword_27F5E0938;
  if (!qword_27F5E0938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0938);
  }

  return result;
}

unint64_t sub_254313CF8(uint64_t a1)
{
  result = sub_254313D20();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_254313D20()
{
  result = qword_27F5E0940;
  if (!qword_27F5E0940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0940);
  }

  return result;
}

uint64_t sub_254313DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_254313DDC()
{
  result = qword_27F5E0948;
  if (!qword_27F5E0948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0948);
  }

  return result;
}

unint64_t sub_254313E30()
{
  result = qword_27F5E0950;
  if (!qword_27F5E0950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0950);
  }

  return result;
}

uint64_t sub_254313EC0(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xD && *(a1 + 16))
    {
      v2 = *a1 + 12;
    }

    else
    {
      v2 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
      if (v2 >= 0xC)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return v2 + 1;
}

uint64_t sub_254313F0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_254313F74(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && a1[24])
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 5;
      v2 = v3 - 5;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254313FB4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 252;
    if (a3 >= 0xFC)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for AlarmOperationRequest.Payload.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2543140E4);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_25431411C(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x2543141B8);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_2543141F4()
{
  result = qword_27F5E0958;
  if (!qword_27F5E0958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0958);
  }

  return result;
}

unint64_t sub_25431424C()
{
  result = qword_27F5E0960;
  if (!qword_27F5E0960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0960);
  }

  return result;
}

unint64_t sub_2543142A4()
{
  result = qword_27F5E0968;
  if (!qword_27F5E0968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0968);
  }

  return result;
}

unint64_t sub_2543142FC()
{
  result = qword_27F5E0970;
  if (!qword_27F5E0970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0970);
  }

  return result;
}

unint64_t sub_254314354()
{
  result = qword_27F5E0978;
  if (!qword_27F5E0978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0978);
  }

  return result;
}

unint64_t sub_2543143AC()
{
  result = qword_27F5E0980;
  if (!qword_27F5E0980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0980);
  }

  return result;
}

unint64_t sub_254314404()
{
  result = qword_27F5E0988;
  if (!qword_27F5E0988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0988);
  }

  return result;
}

unint64_t sub_25431445C()
{
  result = qword_27F5E0990;
  if (!qword_27F5E0990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0990);
  }

  return result;
}

unint64_t sub_2543144B4()
{
  result = qword_27F5E0998[0];
  if (!qword_27F5E0998[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5E0998);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_1_19@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return sub_2542D61B4(result, a2);
}

uint64_t OUTLINED_FUNCTION_2_17(uint64_t a1, uint64_t a2)
{

  return sub_2543A34D8();
}

uint64_t OUTLINED_FUNCTION_8_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2543A3778();
}

uint64_t OUTLINED_FUNCTION_9_6(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2543A3768();
}

uint64_t OUTLINED_FUNCTION_11_7()
{
  __swift_project_boxed_opaque_existential_0(v0, v0[3]);

  return sub_2542D61B4(v1, v2);
}

uint64_t sub_254314604(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x624F657461647075 && a2 == 0xEF676E6976726573;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6573624F706F7473 && a2 == 0xED0000676E697672)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2543146DC(char a1)
{
  if (a1)
  {
    return 0x6573624F706F7473;
  }

  else
  {
    return 0x624F657461647075;
  }
}

uint64_t sub_25431472C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v3 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E696E7275746572 && a2 == 0xE900000000000067)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2543147F4(char a1)
{
  if (a1)
  {
    return 0x6E696E7275746572;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_2543148D0(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_254314924(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_254314978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2542FA5E0(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t sub_2543149D8@<X0>(_BYTE *a1@<X8>)
{
  result = OUTLINED_FUNCTION_0_1();
  *a1 = result & 1;
  return result;
}

uint64_t sub_254314A10(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_254314A64(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t sub_254314B1C(uint64_t a1, void *a2, uint64_t a3, uint64_t (*a4)(void *, void, void, void, void, void))
{
  sub_2543A36E8();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return sub_2543A3728();
}

uint64_t sub_254314BC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t sub_254314C34@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t (*a3)(uint64_t, void, void, void, void)@<X3>, _BYTE *a4@<X8>)
{
  result = a3(a1, a2[2], a2[3], a2[4], a2[5]);
  *a4 = result;
  return result;
}

uint64_t sub_254314C70(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t sub_254314CC4(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t ObservationRequestAction.encode(to:)(void *a1, void *a2)
{
  v5 = a2[2];
  v4 = a2[3];
  v6 = a2[4];
  v7 = a2[5];
  v8 = OUTLINED_FUNCTION_13_5();
  v10 = type metadata accessor for ObservationRequestAction.StopObservingCodingKeys(v8, v9);
  OUTLINED_FUNCTION_5_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v36[2] = v11;
  v36[3] = v10;
  sub_2543A3588();
  OUTLINED_FUNCTION_3();
  v41 = v13;
  v42 = v12;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v14);
  v38 = v36 - v15;
  v16 = OUTLINED_FUNCTION_13_5();
  type metadata accessor for ObservationRequestAction.UpdateObservingCodingKeys(v16, v17);
  OUTLINED_FUNCTION_6_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v36[1] = v18;
  sub_2543A3588();
  OUTLINED_FUNCTION_3();
  v39 = v20;
  v40 = v19;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v21);
  v37 = v36 - v22;
  v46 = v5;
  v47 = v6;
  v52[0] = v5;
  v52[1] = v4;
  v52[2] = v6;
  v52[3] = v7;
  v45 = v7;
  type metadata accessor for ObservationRequestAction.CodingKeys(255, v52);
  OUTLINED_FUNCTION_4_11();
  swift_getWitnessTable();
  v44 = sub_2543A3588();
  OUTLINED_FUNCTION_3();
  v48 = v23;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v24);
  v26 = v36 - v25;
  v27 = v2[1];
  v43 = *v2;
  v36[0] = v27;
  LOBYTE(v10) = *(v2 + 16);
  __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  sub_2543A3778();
  if (v10)
  {
    LOBYTE(v52[0]) = 1;
    v28 = v38;
    v29 = v44;
    sub_2543A3508();
    v52[0] = v43;
    sub_2543A2EB8();
    v52[6] = v47;
    OUTLINED_FUNCTION_2_18();
    swift_getWitnessTable();
    v30 = v42;
    sub_2543A3578();
    (*(v41 + 8))(v28, v30);
    return (*(v48 + 8))(v26, v29);
  }

  else
  {
    LOBYTE(v52[0]) = 0;
    v32 = v37;
    v33 = v44;
    sub_2543A3508();
    v52[0] = v43;
    v51 = 0;
    sub_2543A2EB8();
    v50 = v47;
    OUTLINED_FUNCTION_2_18();
    swift_getWitnessTable();
    v34 = v40;
    OUTLINED_FUNCTION_12_8();
    v35 = v49;
    sub_2543A3578();
    if (!v35)
    {
      v52[0] = v36[0];
      v51 = 1;
      OUTLINED_FUNCTION_12_8();
      sub_2543A3578();
    }

    (*(v39 + 8))(v32, v34);
    return (*(v48 + 8))(v26, v33);
  }
}

uint64_t ObservationRequestAction.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v61 = a6;
  *&v73 = a2;
  *(&v73 + 1) = a3;
  *&v74 = a4;
  *(&v74 + 1) = a5;
  v11 = type metadata accessor for ObservationRequestAction.StopObservingCodingKeys(255, &v73);
  OUTLINED_FUNCTION_5_12();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v60 = v11;
  v59 = v12;
  v56 = sub_2543A34F8();
  OUTLINED_FUNCTION_3();
  v55 = v13;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v14);
  v57 = &v50 - v15;
  *&v73 = a2;
  *(&v73 + 1) = a3;
  *&v74 = a4;
  *(&v74 + 1) = a5;
  updated = type metadata accessor for ObservationRequestAction.UpdateObservingCodingKeys(255, &v73);
  OUTLINED_FUNCTION_6_9();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_14_3();
  v58 = v17;
  v54 = sub_2543A34F8();
  OUTLINED_FUNCTION_3();
  v53 = v18;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v19);
  v21 = &v50 - v20;
  *&v73 = a2;
  *(&v73 + 1) = a3;
  v62 = a3;
  v63 = a4;
  *&v74 = a4;
  *(&v74 + 1) = a5;
  v64 = a5;
  type metadata accessor for ObservationRequestAction.CodingKeys(255, &v73);
  OUTLINED_FUNCTION_4_11();
  swift_getWitnessTable();
  sub_2543A34F8();
  OUTLINED_FUNCTION_3();
  v65 = v23;
  v66 = v22;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v24);
  v26 = &v50 - v25;
  v27 = a1[3];
  v68 = a1;
  __swift_project_boxed_opaque_existential_0(a1, v27);
  v28 = v67;
  sub_2543A3768();
  if (!v28)
  {
    v51 = updated;
    v52 = v21;
    v29 = v63;
    v30 = v66;
    v31 = v26;
    *&v71 = sub_2543A34E8();
    sub_2543A2B38();
    swift_getWitnessTable();
    *&v73 = sub_2543A3178();
    *(&v73 + 1) = v32;
    *&v74 = v33;
    *(&v74 + 1) = v34;
    sub_2543A3168();
    swift_getWitnessTable();
    sub_2543A2F68();
    LODWORD(v67) = v71;
    v35 = v30;
    if (v71 == 2 || (v50 = v73, v71 = v73, v72 = v74, (sub_2543A2F88() & 1) == 0))
    {
      v38 = sub_2543A32E8();
      swift_allocError();
      v40 = v39;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E14E0, &unk_2543A6DE0);
      *&v71 = a2;
      *(&v71 + 1) = v62;
      *&v72 = v29;
      *(&v72 + 1) = v64;
      *v40 = type metadata accessor for ObservationRequestAction(0, &v71);
      sub_2543A3468();
      sub_2543A32D8();
      (*(*(v38 - 8) + 104))(v40, *MEMORY[0x277D84160], v38);
      swift_willThrow();
      (*(v65 + 8))(v31, v30);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v67)
      {
        LOBYTE(v71) = 1;
        sub_2543A3458();
        v36 = v61;
        v37 = v65;
        sub_2543A2EB8();
        v75 = v62;
        OUTLINED_FUNCTION_3_13();
        swift_getWitnessTable();
        sub_2543A34D8();
        v44 = OUTLINED_FUNCTION_10_8();
        v45(v44);
        (*(v37 + 8))(v31, v35);
        OUTLINED_FUNCTION_8_7();
        swift_unknownObjectRelease();
        v46 = 0;
        v47 = v71;
      }

      else
      {
        LOBYTE(v71) = 0;
        sub_2543A3458();
        v41 = v65;
        v42 = sub_2543A2EB8();
        LOBYTE(v70[0]) = 0;
        v70[1] = v62;
        OUTLINED_FUNCTION_3_13();
        swift_getWitnessTable();
        OUTLINED_FUNCTION_9_7(v42, v70);
        v47 = v71;
        v69 = 1;
        OUTLINED_FUNCTION_9_7(v42, &v69);
        v48 = OUTLINED_FUNCTION_1_20();
        v49(v48);
        (*(v41 + 8))(v31, v66);
        OUTLINED_FUNCTION_8_7();
        swift_unknownObjectRelease();
        v46 = v70[0];
        v36 = v61;
      }

      *v36 = v47;
      *(v36 + 8) = v46;
      *(v36 + 16) = v67 & 1;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v68);
}

uint64_t sub_25431589C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

_BYTE *sub_2543158FC(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x2543159C8);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *sub_2543159F0(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x254315A8CLL);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_9_7(uint64_t a1, uint64_t a2)
{

  return sub_2543A34D8();
}

uint64_t OUTLINED_FUNCTION_13_5()
{
  *(v4 - 120) = v2;
  *(v4 - 112) = v0;
  *(v4 - 104) = v1;
  *(v4 - 96) = v3;
  return 255;
}

uint64_t sub_254315CE8()
{
  v0 = sub_2543A1FB8();
  __swift_allocate_value_buffer(v0, qword_27F5E0BA0);
  __swift_project_value_buffer(v0, qword_27F5E0BA0);
  return sub_2543A1FA8();
}

uint64_t sub_254315D80()
{
  if (qword_27F5DF078 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_27F5DF078);
  }

  v2 = sub_2543A1FB8();
  *(v0 + 56) = __swift_project_value_buffer(v2, qword_27F5E0BA0);

  v3 = sub_2543A1F98();
  v4 = sub_2543A2FF8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 48);
    v6 = OUTLINED_FUNCTION_129();
    v1 = swift_slowAlloc();
    *v6 = 136315138;
    v7 = *(v5 + 144);
    *(v0 + 16) = *(v5 + 128);
    *(v0 + 32) = v7;
    v8 = sub_2543A2888();
    v9 = sub_2542D5198(v8);

    *(v6 + 4) = v9;
    OUTLINED_FUNCTION_36();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v1);
    OUTLINED_FUNCTION_43();
    OUTLINED_FUNCTION_82();
  }

  v15 = *(v0 + 48);
  v16 = *(v15 + 128);
  v17 = *(v15 + 136);
  switch(*(v15 + 144))
  {
    case 1:
      goto LABEL_12;
    case 2:
      v21 = *(v15 + 168);
      if ((v21 & 0x8000000000000000) == 0 && v21 >= v17)
      {
        goto LABEL_11;
      }

LABEL_12:
      if (*(v15 + 160))
      {
        sub_254317BC4();
        v23 = swift_allocError();
        v24 = 1;
        goto LABEL_14;
      }

      sub_2543169B0(*(v15 + 128));
      *(v15 + 160) = v37;

      goto LABEL_23;
    case 3:
      if (v16 | v17)
      {
        goto LABEL_23;
      }

      v19 = swift_task_alloc();
      *(v0 + 64) = v19;
      *v19 = v0;
      v20 = sub_25431616C;
      goto LABEL_18;
    default:
      v18 = *(v15 + 168);
      if ((v18 & 0x8000000000000000) != 0 || v18 < v16)
      {
        v19 = swift_task_alloc();
        *(v0 + 80) = v19;
        *v19 = v0;
        v20 = sub_254316288;
LABEL_18:
        v19[1] = v20;

        return sub_254316634(v19);
      }

      else
      {
LABEL_11:
        sub_254317BC4();
        v23 = swift_allocError();
        v24 = 2;
LABEL_14:
        *v22 = v24;
        swift_willThrow();
        v25 = v23;
        v26 = sub_2543A1F98();
        v27 = sub_2543A2FF8();

        if (os_log_type_enabled(v26, v27))
        {
          OUTLINED_FUNCTION_129();
          v39 = OUTLINED_FUNCTION_13_6();
          *v1 = 136315138;
          *(v0 + 40) = v23;
          v28 = v23;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
          v29 = sub_2543A2888();
          v30 = sub_2542D5198(v29);

          *(v1 + 4) = v30;
          OUTLINED_FUNCTION_7_8();
          _os_log_impl(v31, v32, v33, v34, v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_0(v39);
          OUTLINED_FUNCTION_82();
          OUTLINED_FUNCTION_43();
        }

        else
        {
        }

LABEL_23:
        OUTLINED_FUNCTION_27();

        return v38();
      }
  }
}

uint64_t sub_25431616C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 72) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2543163A4);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v7();
  }
}

uint64_t sub_254316288()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2543164EC);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v7();
  }
}

uint64_t sub_2543163A4()
{
  v2 = *(v0 + 72);
  v3 = v2;
  v4 = sub_2543A1F98();
  v5 = sub_2543A2FF8();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_129();
    v15 = OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_16_3(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    v6 = sub_2543A2888();
    v7 = sub_2542D5198(v6);

    *(v1 + 4) = v7;
    OUTLINED_FUNCTION_7_8();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_43();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_2543164EC()
{
  v2 = *(v0 + 88);
  v3 = v2;
  v4 = sub_2543A1F98();
  v5 = sub_2543A2FF8();

  if (os_log_type_enabled(v4, v5))
  {
    OUTLINED_FUNCTION_129();
    v15 = OUTLINED_FUNCTION_13_6();
    OUTLINED_FUNCTION_16_3(4.8149e-34);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    v6 = sub_2543A2888();
    v7 = sub_2542D5198(v6);

    *(v1 + 4) = v7;
    OUTLINED_FUNCTION_7_8();
    _os_log_impl(v8, v9, v10, v11, v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v15);
    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_43();
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v13();
}

uint64_t sub_25431664C()
{
  OUTLINED_FUNCTION_31();
  if (qword_27F5DF078 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_27F5DF078);
  }

  v1 = sub_2543A1FB8();
  __swift_project_value_buffer(v1, qword_27F5E0BA0);

  v2 = sub_2543A1F98();
  v3 = sub_2543A3008();
  v4 = OUTLINED_FUNCTION_18_3(v3);
  v5 = *(v0 + 16);
  if (v4)
  {
    v6 = OUTLINED_FUNCTION_129();
    *v6 = 134217984;
    v7 = *(v5 + 168);
    v8 = __OFADD__(v7, 1);
    v9 = v7 + 1;
    if (v8)
    {
      __break(1u);
      return MEMORY[0x2822009F8](v6);
    }

    *(v6 + 4) = v9;

    OUTLINED_FUNCTION_36();
    _os_log_impl(v10, v11, v12, v13, v14, 0xCu);
    OUTLINED_FUNCTION_82();
  }

  else
  {
  }

  *(*(v0 + 16) + 160) = 0;

  sub_2543A2B98();
  *(v0 + 24) = sub_2543A2B88();
  sub_2543A2B58();
  v6 = sub_2543167BC;

  return MEMORY[0x2822009F8](v6);
}

uint64_t sub_2543167BC()
{
  OUTLINED_FUNCTION_31();

  sub_2543179A4();

  return MEMORY[0x2822009F8](sub_25431682C);
}

void sub_25431682C()
{
  if (__OFADD__(*(*(v0 + 16) + 168), 1))
  {
    __break(1u);
  }

  else
  {
    OUTLINED_FUNCTION_28();
    *(v2 + 168) = v3;
    v4 = swift_task_alloc();
    *(v0 + 32) = v4;
    *v4 = v0;
    v4[1] = sub_2543168D0;

    sub_254316F80();
  }
}

uint64_t sub_2543168D0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

void sub_2543169B0(double a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  if (qword_27F5DF078 != -1)
  {
    OUTLINED_FUNCTION_0_24(&qword_27F5DF078);
  }

  v5 = sub_2543A1FB8();
  __swift_project_value_buffer(v5, qword_27F5E0BA0);
  v6 = sub_2543A1F98();
  v7 = sub_2543A3008();
  if (OUTLINED_FUNCTION_18_3(v7))
  {
    v8 = OUTLINED_FUNCTION_129();
    *v8 = 134217984;
    *(v8 + 4) = a1;
    _os_log_impl(&dword_2542B7000, v6, v7, "Scheduling retry after %f seconds", v8, 0xCu);
    OUTLINED_FUNCTION_43();
  }

  v9 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v4, 1, 1, v9);
  v10 = swift_allocObject();
  swift_weakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  *(v11 + 24) = 0;
  *(v11 + 32) = a1;
  *(v11 + 40) = v10;
  sub_25434DFA4();
}

uint64_t sub_254316B58(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a5;
  v7 = swift_task_alloc();
  *(v5 + 48) = v7;
  *v7 = v5;
  v7[1] = sub_254316BF0;

  return sub_25430BE10(a1);
}

uint64_t sub_254316BF0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  OUTLINED_FUNCTION_13_2();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 56) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_27();

    return v7();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_254316D0C);
  }
}

uint64_t sub_254316D0C()
{
  OUTLINED_FUNCTION_31();
  v1 = v0[7];
  sub_2543A2C88();
  if (v1 || (OUTLINED_FUNCTION_30(), Strong = swift_weakLoadStrong(), (v0[8] = Strong) == 0))
  {
    OUTLINED_FUNCTION_27();

    return v2();
  }

  else
  {
    v5 = swift_task_alloc();
    v0[9] = v5;
    *v5 = v0;
    v5[1] = sub_254316E00;

    return sub_254316634(v5);
  }
}

uint64_t sub_254316E00()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_13_2();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_254316F24);
  }

  else
  {

    OUTLINED_FUNCTION_27();

    return v7();
  }
}

uint64_t sub_254316F24()
{
  OUTLINED_FUNCTION_28();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_254316F80()
{
  OUTLINED_FUNCTION_28();
  v1[8] = v0;
  v1[9] = *v0;
  sub_2543A2B98();
  v1[10] = sub_2543A2B88();
  v1[11] = sub_2543A2B58();
  v1[12] = v2;

  return MEMORY[0x2822009F8](sub_25431703C);
}

uint64_t sub_25431703C()
{
  OUTLINED_FUNCTION_31();
  if (*(*(v0 + 64) + 152))
  {

    OUTLINED_FUNCTION_27();

    return v1();
  }

  else
  {
    if (qword_27F5DF078 != -1)
    {
      OUTLINED_FUNCTION_0_24(&qword_27F5DF078);
    }

    v3 = sub_2543A1FB8();
    *(v0 + 104) = __swift_project_value_buffer(v3, qword_27F5E0BA0);
    v4 = sub_2543A1F98();
    v5 = sub_2543A3008();
    if (OUTLINED_FUNCTION_18_3(v5))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_36();
      _os_log_impl(v6, v7, v8, v9, v10, 2u);
      OUTLINED_FUNCTION_82();
    }

    return MEMORY[0x2822009F8](sub_25431717C);
  }
}

uint64_t sub_25431717C()
{
  OUTLINED_FUNCTION_31();
  *(v0 + 112) = *(*(v0 + 64) + 112);
  swift_unknownObjectRetain();

  return MEMORY[0x2822009F8](sub_2543171F8);
}

uint64_t sub_2543171F8()
{
  v1 = v0[14];

  if (v1)
  {
    v2 = sub_25432CB68();
    swift_unknownObjectRelease();
    v3 = v0[8];
    v4 = v0[9];
    v0[6] = sub_254317B8C;
    v0[7] = v3;
    v5 = MEMORY[0x277D85DD0];
    v0[2] = MEMORY[0x277D85DD0];
    v0[3] = 1107296256;
    v0[4] = sub_2542E279C;
    v0[5] = &block_descriptor_2;
    v6 = _Block_copy(v0 + 2);

    [v2 setInterruptionHandler_];
    _Block_release(v6);
    v7 = swift_allocObject();
    *(v7 + 16) = v4;
    v0[6] = sub_254317BBC;
    v0[7] = v7;
    v0[2] = v5;
    v0[3] = 1107296256;
    v0[4] = sub_2542E279C;
    v0[5] = &block_descriptor_24;
    v8 = _Block_copy(v0 + 2);

    [v2 setInvalidationHandler_];
    _Block_release(v8);
    [v2 resume];
    v9 = sub_2543A1F98();
    v10 = sub_2543A3008();
    if (OUTLINED_FUNCTION_18_3(v10))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_7_8();
      _os_log_impl(v11, v12, v13, v14, v15, 2u);
      OUTLINED_FUNCTION_43();
    }

    v16 = v0[8];

    v17 = *(v16 + 152);
    *(v16 + 152) = v2;

    OUTLINED_FUNCTION_27();
  }

  else
  {
    sub_254317BC4();
    swift_allocError();
    *v19 = 0;
    swift_willThrow();
    OUTLINED_FUNCTION_27();
  }

  return v18();
}

uint64_t sub_254317464(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v10 - v2;
  v4 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v3, 1, 1, v4);
  v5 = swift_allocObject();
  swift_weakInit();
  sub_2543A2B98();

  v6 = sub_2543A2B88();
  v7 = swift_allocObject();
  v8 = MEMORY[0x277D85700];
  v7[2] = v6;
  v7[3] = v8;
  v7[4] = v5;

  sub_2542CD000(0, 0, v3);
}

uint64_t sub_254317594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a1;
  v4[6] = a4;
  sub_2543A2B98();
  v4[7] = sub_2543A2B88();
  v4[8] = sub_2543A2B58();
  v4[9] = v5;

  return MEMORY[0x2822009F8](sub_25431762C);
}

uint64_t sub_25431762C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_30();
  Strong = swift_weakLoadStrong();
  *(v0 + 80) = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    *(v0 + 88) = v2;
    *v2 = v0;
    v2[1] = sub_254317718;

    return sub_254315D68(v2);
  }

  else
  {

    **(v0 + 40) = *(v0 + 80) == 0;
    OUTLINED_FUNCTION_27();

    return v4();
  }
}

uint64_t sub_254317718()
{
  OUTLINED_FUNCTION_31();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  return MEMORY[0x2822009F8](sub_254317850);
}

uint64_t sub_254317850()
{
  OUTLINED_FUNCTION_28();

  **(v0 + 40) = *(v0 + 80) == 0;
  OUTLINED_FUNCTION_27();

  return v1();
}

void sub_2543178BC()
{
  if (qword_27F5DF078 != -1)
  {
    swift_once();
  }

  v0 = sub_2543A1FB8();
  __swift_project_value_buffer(v0, qword_27F5E0BA0);
  oslog = sub_2543A1F98();
  v1 = sub_2543A3008();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&dword_2542B7000, oslog, v1, "Invalidated", v2, 2u);
    MEMORY[0x259C0AD90](v2, -1, -1);
  }
}

void sub_2543179A4()
{
  v1 = *(v0 + 152);
  if (v1)
  {
    [v1 invalidate];
    v2 = *(v0 + 152);
    *(v0 + 152) = 0;
  }
}

uint64_t sub_2543179E8()
{
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_254317A20()
{
  sub_2543179E8();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254317A70(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFD && *(a1 + 17))
    {
      v2 = *a1 + 252;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 3)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_254317AB0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_254317AF4(uint64_t a1)
{
  if (*(a1 + 16) <= 2u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_254317B0C(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    *(result + 8) = 0;
    LOBYTE(a2) = 3;
  }

  *(result + 16) = a2;
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_254317BC4()
{
  result = qword_27F5E0BB8;
  if (!qword_27F5E0BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0BB8);
  }

  return result;
}

uint64_t sub_254317C18()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254317C50()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254317C90()
{
  OUTLINED_FUNCTION_31();
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v4 = OUTLINED_FUNCTION_12_9(v3);

  return sub_254317594(v4, v5, v6, v2);
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

uint64_t sub_254317D94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0);
}

uint64_t sub_254317DD4()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v5 = OUTLINED_FUNCTION_12_9(v4);

  return sub_254316B58(v2, v5, v6, v7, v3);
}

_BYTE *sub_254317E88(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x254317F54);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_254317F8C()
{
  result = qword_27F5E0BC0;
  if (!qword_27F5E0BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0BC0);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_24(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_13_6()
{

  return swift_slowAlloc();
}

id OUTLINED_FUNCTION_16_3(float a1)
{
  *v3 = a1;
  *(v2 + 40) = v1;

  return v1;
}

BOOL OUTLINED_FUNCTION_18_3(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

id SettingsObservationUpdate.update.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  *a1 = *v1;
  *(a1 + 8) = v3;
  return sub_2543180C0(v2, v3);
}

id sub_2543180C0(id result, char a2)
{
  if ((a2 & 1) == 0)
  {
    return result;
  }

  return result;
}

uint64_t SettingsObservationUpdate.scope.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_2543A2768();
}

void *SettingsObservationUpdate.init(setting:keyPath:)@<X0>(void *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = 0;
  *(a4 + 16) = a2;
  *(a4 + 24) = a3;
  return result;
}

uint64_t sub_2543180EC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x657461647075 && a2 == 0xE600000000000000;
  if (v4 || (sub_2543A3608() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65706F6373 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_2543A3608();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2543181AC(char a1)
{
  if (a1)
  {
    return 0x65706F6373;
  }

  else
  {
    return 0x657461647075;
  }
}

uint64_t sub_2543181E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2543180EC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_25431820C(uint64_t a1)
{
  v2 = sub_254318474();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254318248(uint64_t a1)
{
  v2 = sub_254318474();

  return MEMORY[0x2821FE720](a1, v2);
}

void SettingsObservationUpdate.encode(to:)()
{
  OUTLINED_FUNCTION_16_1();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0BC8, &qword_2543ABA00);
  OUTLINED_FUNCTION_3();
  v21 = v5;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = *v0;
  v10 = *(v0 + 8);
  v11 = *(v0 + 24);
  v19 = *(v0 + 16);
  v20 = v11;
  __swift_project_boxed_opaque_existential_0(v3, v3[3]);
  sub_2543180C0(v9, v10);
  sub_254318474();
  sub_2543A3778();
  v22 = v9;
  LOBYTE(v23) = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0BD8, &qword_2543ABA08);
  OUTLINED_FUNCTION_15_5();
  sub_2542EE9CC(v12, v13, &qword_2543ABA08, v14);
  OUTLINED_FUNCTION_6_11();
  sub_2543184C8(v22, v23);
  if (!v1)
  {
    v22 = v19;
    v23 = v20;
    sub_2543A2768();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0BE8, &qword_2543ABA10);
    OUTLINED_FUNCTION_15_5();
    sub_2542EE9CC(v15, v16, &qword_2543ABA10, v17);
    OUTLINED_FUNCTION_6_11();
  }

  (*(v21 + 8))(v8, v4);
  OUTLINED_FUNCTION_15_3();
}

unint64_t sub_254318474()
{
  result = qword_27F5E0BD0;
  if (!qword_27F5E0BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0BD0);
  }

  return result;
}

void sub_2543184C8(id a1, char a2)
{
  if ((a2 & 1) == 0)
  {
  }
}

void SettingsObservationUpdate.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, __int16 a11, __int16 a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_16_1();
  v26 = v25;
  v28 = v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0BF8, &unk_2543ABA18);
  OUTLINED_FUNCTION_3();
  v31 = v30;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v32);
  v34 = &v44 - v33;
  OUTLINED_FUNCTION_23_1();
  sub_254318474();
  sub_2543A3768();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0BD8, &qword_2543ABA08);
    OUTLINED_FUNCTION_15_5();
    sub_2542EE9CC(v35, v36, &qword_2543ABA08, v37);
    sub_2543A34D8();
    v45 = v46;
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0BE8, &qword_2543ABA10);
    OUTLINED_FUNCTION_15_5();
    sub_2542EE9CC(v38, v39, &qword_2543ABA10, v40);
    sub_2543A34D8();
    (*(v31 + 8))(v34, v29);
    v41 = v46;
    v42 = v47;
    v43 = v45;
    *v28 = v45;
    *(v28 + 8) = v48;
    *(v28 + 16) = v41;
    *(v28 + 24) = v42;
    sub_2543180C0(v43, v48);
    sub_2543A2768();
    __swift_destroy_boxed_opaque_existential_0(v26);
    sub_2543184C8(v43, v48);
  }

  OUTLINED_FUNCTION_15_3();
}

uint64_t static SettingsObservationUpdate.updateObservedValue(_:withUpdate:scope:)(uint64_t *a1, id *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF528, &qword_2543A6C90);
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v4);
  v6 = &v17 - v5;
  v7 = *a2;
  v8 = [v7 keyPath];
  v9 = sub_2543A2878();
  v11 = v10;

  v12 = sub_2543A1F88();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v12);
  v13 = objc_allocWithZone(HPSResult);
  v14 = sub_254319450(v7, v6, 0, 1);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *a1;
  sub_254319840(v14, v9, v11, isUniquelyReferenced_nonNull_native);

  *a1 = v18;
  return result;
}

uint64_t static SettingsObservationUpdate.mergeObservedValue(_:withPartialValue:)(uint64_t *a1, uint64_t a2)
{
  sub_2543A2768();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *a1;
  result = sub_25431A6B4(a2, sub_25431A95C, 0, isUniquelyReferenced_nonNull_native, &v6);
  *a1 = v6;
  return result;
}

unint64_t *sub_254318920@<X0>(uint64_t *a1@<X0>, unint64_t **a2@<X8>, uint64_t a3@<X1>)
{
  result = static SettingsObservationUpdate.value(from:targeting:)(*a1, a3);
  *a2 = result;
  return result;
}

BOOL sub_254318A08(uint64_t a1, uint64_t a2)
{
  v2 = sub_2543A3438();

  return v2 != 0;
}

BOOL sub_254318A68@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_254318A08(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_254318AD8@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254318A08(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254318B04(uint64_t a1)
{
  v2 = sub_25431A990();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254318B40(uint64_t a1)
{
  v2 = sub_25431A990();

  return MEMORY[0x2821FE720](a1, v2);
}

void HPSSettingWrapper.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0C28, &qword_2543ABA30);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23_1();
  v6 = sub_25431A990();
  OUTLINED_FUNCTION_9_8(&type metadata for HPSSettingWrapper.CodingKeys, v7, v6);
  if (!v0)
  {
    sub_25431AA38();
    OUTLINED_FUNCTION_11_8(MEMORY[0x277CC9318], v8);
    sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
    v11 = sub_2542D6250(0, &qword_27F5E0C38, off_2797737F0);
    v12 = OUTLINED_FUNCTION_16_4(v11);
    if (v12)
    {
      v13 = OUTLINED_FUNCTION_2_19();
      v14(v13);
      OUTLINED_FUNCTION_10_9();
      *v4 = v12;
    }

    else
    {
      sub_25431AA8C();
      swift_allocError();
      swift_willThrow();
      OUTLINED_FUNCTION_10_9();
      v9 = OUTLINED_FUNCTION_2_19();
      v10(v9);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_15_3();
}

BOOL sub_254318DE4(uint64_t a1, uint64_t a2)
{
  v2 = sub_2543A3438();

  return v2 != 0;
}

BOOL sub_254318E3C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_254318DE4(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL sub_254318EAC@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254318DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254318ED8(uint64_t a1)
{
  v2 = sub_25431AAE0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254318F14(uint64_t a1)
{
  v2 = sub_25431AAE0();

  return MEMORY[0x2821FE720](a1, v2);
}

void sub_254318FC8()
{
  OUTLINED_FUNCTION_16_1();
  v3 = v2;
  v23 = v1;
  v5 = v4;
  v25[2] = *MEMORY[0x277D85DE8];
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_3();
  v9 = v8;
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v10);
  v12 = &v22 - v11;
  v13 = *v0;
  __swift_project_boxed_opaque_existential_0(v5, v5[3]);
  v3();
  sub_2543A3778();
  v14 = objc_opt_self();
  v25[0] = 0;
  v15 = [v14 archivedDataWithRootObject:v13 requiringSecureCoding:1 error:v25];
  v16 = v25[0];
  if (v15)
  {
    v17 = sub_2543A1EF8();
    v19 = v18;

    v25[0] = v17;
    v25[1] = v19;
    sub_25431A9E4();
    v20 = v24;
    sub_2543A3578();
    (*(v9 + 8))(v12, v20);
    sub_2542D7D40(v17, v19);
  }

  else
  {
    v21 = v16;
    sub_2543A1E88();

    swift_willThrow();
    (*(v9 + 8))(v12, v24);
  }

  OUTLINED_FUNCTION_15_3();
}

void HPSResultWrapper.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v4 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0C60, &qword_2543ABA40);
  OUTLINED_FUNCTION_3();
  OUTLINED_FUNCTION_134();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_23_1();
  v6 = sub_25431AAE0();
  OUTLINED_FUNCTION_9_8(&type metadata for HPSResultWrapper.CodingKeys, v7, v6);
  if (!v0)
  {
    sub_25431AA38();
    OUTLINED_FUNCTION_11_8(MEMORY[0x277CC9318], v8);
    sub_2542D6250(0, &qword_27F5DF800, 0x277CCAAC8);
    v11 = sub_2542D6250(0, &qword_27F5E0C68, off_2797737E8);
    v12 = OUTLINED_FUNCTION_16_4(v11);
    if (v12)
    {
      v13 = OUTLINED_FUNCTION_2_19();
      v14(v13);
      OUTLINED_FUNCTION_10_9();
      *v4 = v12;
    }

    else
    {
      sub_25431AB34();
      swift_allocError();
      swift_willThrow();
      OUTLINED_FUNCTION_10_9();
      v9 = OUTLINED_FUNCTION_2_19();
      v10(v9);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_15_3();
}

void HPSResultWrapper.subscript.getter(uint64_t a1)
{
  v2 = *v1;
  swift_getAtKeyPath();
}

id sub_254319450(void *a1, uint64_t a2, void *a3, char a4)
{
  v5 = v4;
  v10 = sub_2543A1F88();
  v11 = 0;
  if (__swift_getEnumTagSinglePayload(a2, 1, v10) != 1)
  {
    v11 = sub_2543A1F58();
    (*(*(v10 - 8) + 8))(a2, v10);
  }

  if (a3)
  {
    v12 = sub_2543A1E78();
  }

  else
  {
    v12 = 0;
  }

  v13 = [v5 initWithSetting:a1 accessoryIdentifier:v11 error:v12 result:a4 & 1];

  return v13;
}

uint64_t sub_254319550(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v25 = a2;
  v6 = sub_2543A1F88();
  OUTLINED_FUNCTION_3();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25438E008(a3);
  OUTLINED_FUNCTION_1_21();
  if (v14)
  {
    __break(1u);
    goto LABEL_11;
  }

  v15 = v12;
  v16 = v13;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF508, &qword_2543A6C38);
  if ((OUTLINED_FUNCTION_17_5(v17) & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_25438E008(a3);
  if ((v16 & 1) != (v19 & 1))
  {
LABEL_11:
    result = sub_2543A3648();
    __break(1u);
    return result;
  }

  v15 = v18;
LABEL_5:
  v20 = *v3;
  if (v16)
  {
    v21 = (v20[7] + 16 * v15);
    v22 = v25;
    *v21 = a1;
    v21[1] = v22;
  }

  else
  {
    (*(v8 + 16))(v11, a3, v6);
    return sub_254319D3C(v15, v11, a1, v25, v20);
  }
}

void sub_2543196FC(uint64_t a1, void *a2, char a3)
{
  sub_25438E094(a2);
  OUTLINED_FUNCTION_1_21();
  if (v7)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = v5;
  v9 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF598, &qword_2543A6D68);
  if ((sub_2543A3368() & 1) == 0)
  {
    goto LABEL_5;
  }

  v10 = sub_25438E094(a2);
  if ((v9 & 1) != (v11 & 1))
  {
LABEL_13:
    sub_2542D6250(0, &qword_27F5DF388, 0x277CFD088);
    sub_2543A3648();
    __break(1u);
    return;
  }

  v8 = v10;
LABEL_5:
  v12 = *v3;
  if (v9)
  {
    v13 = v12[7];
    v14 = *(v13 + 8 * v8);
    *(v13 + 8 * v8) = a1;
  }

  else
  {
    sub_254319DFC(v8, a2, a1, v12);

    v15 = a2;
  }
}

void sub_254319840(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v9 = *v4;
  v10 = sub_25438E0D0(a2, a3);
  if (__OFADD__(v9[2], (v11 & 1) == 0))
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = v10;
  v13 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0D60, &qword_2543AC270);
  if ((sub_2543A3368() & 1) == 0)
  {
    goto LABEL_5;
  }

  v14 = sub_25438E0D0(a2, a3);
  if ((v13 & 1) != (v15 & 1))
  {
LABEL_13:
    sub_2543A3648();
    __break(1u);
    return;
  }

  v12 = v14;
LABEL_5:
  v16 = *v5;
  if (v13)
  {
    v17 = v16[7];
    v18 = *(v17 + 8 * v12);
    *(v17 + 8 * v12) = a1;
  }

  else
  {
    sub_254319E40(v12, a2, a3, a1, v16);

    sub_2543A2768();
  }
}

uint64_t sub_254319990(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7)
{
  sub_25438E0D0(a3, a4);
  OUTLINED_FUNCTION_1_21();
  if (v15)
  {
    __break(1u);
    goto LABEL_13;
  }

  v16 = v13;
  v17 = v14;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  if ((OUTLINED_FUNCTION_17_5(v18) & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = sub_25438E0D0(a3, a4);
  if ((v17 & 1) != (v20 & 1))
  {
LABEL_13:
    result = sub_2543A3648();
    __break(1u);
    return result;
  }

  v16 = v19;
LABEL_5:
  v21 = *v7;
  if (v17)
  {
    v22 = (v21[7] + 16 * v16);
    *v22 = a1;
    v22[1] = a2;
  }

  else
  {
    sub_254319E88(v16, a3, a4, a1, a2, v21);

    return sub_2543A2768();
  }
}

_OWORD *sub_254319AD8(_OWORD *a1, uint64_t a2, char a3)
{
  sub_25438E144(a2);
  OUTLINED_FUNCTION_1_21();
  if (v8)
  {
    __break(1u);
    goto LABEL_13;
  }

  v9 = v6;
  v10 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0D40, &qword_2543AC250);
  if ((sub_2543A3368() & 1) == 0)
  {
    goto LABEL_5;
  }

  v11 = sub_25438E144(a2);
  if ((v10 & 1) != (v12 & 1))
  {
LABEL_13:
    result = sub_2543A3648();
    __break(1u);
    return result;
  }

  v9 = v11;
LABEL_5:
  v13 = *v3;
  if (v10)
  {
    v14 = (v13[7] + 32 * v9);
    __swift_destroy_boxed_opaque_existential_0(v14);

    return sub_2542F50C4(a1, v14);
  }

  else
  {

    return sub_254319ED4(v9, a2, a1, v13);
  }
}

uint64_t sub_254319BFC(__int128 *a1, uint64_t a2, uint64_t a3, char a4)
{
  sub_25438E0D0(a2, a3);
  OUTLINED_FUNCTION_1_21();
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = v8;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF540, &unk_2543A6CD0);
  if ((sub_2543A3368() & 1) == 0)
  {
    goto LABEL_5;
  }

  v13 = sub_25438E0D0(a2, a3);
  if ((v12 & 1) != (v14 & 1))
  {
LABEL_13:
    result = sub_2543A3648();
    __break(1u);
    return result;
  }

  v11 = v13;
LABEL_5:
  v15 = *v4;
  if (v12)
  {
    v16 = (v15[7] + 40 * v11);
    __swift_destroy_boxed_opaque_existential_0(v16);

    return sub_2542DA8C0(a1, v16);
  }

  else
  {
    sub_254319F3C(v11, a2, a3, a1, v15);

    return sub_2543A2768();
  }
}

uint64_t sub_254319D3C(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = sub_2543A1F88();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t sub_254319DFC(unint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + 8 * result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

unint64_t sub_254319E40(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(result >> 6) + 8] |= 1 << result;
  v5 = (a5[6] + 16 * result);
  *v5 = a2;
  v5[1] = a3;
  *(a5[7] + 8 * result) = a4;
  v6 = a5[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v8;
  }

  return result;
}

unint64_t sub_254319E88(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  a6[(result >> 6) + 8] |= 1 << result;
  v6 = (a6[6] + 16 * result);
  *v6 = a2;
  v6[1] = a3;
  v7 = (a6[7] + 16 * result);
  *v7 = a4;
  v7[1] = a5;
  v8 = a6[2];
  v9 = __OFADD__(v8, 1);
  v10 = v8 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v10;
  }

  return result;
}

_OWORD *sub_254319ED4(unint64_t a1, char a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + a1) = a2;
  result = sub_2542F50C4(a3, (a4[7] + 32 * a1));
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

uint64_t sub_254319F3C(unint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v6 = (a5[6] + 16 * a1);
  *v6 = a2;
  v6[1] = a3;
  result = sub_2542DA8C0(a4, a5[7] + 40 * a1);
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

unint64_t *sub_254319FAC(uint64_t a1, uint64_t a2)
{
  v4 = a1;
  v13[1] = *MEMORY[0x277D85DE8];
  v5 = *(a1 + 32);
  v6 = v5 & 0x3F;
  v7 = ((1 << v5) + 63) >> 6;
  v8 = swift_bridgeObjectRetain_n();
  if (v6 > 0xD)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      v12 = swift_slowAlloc();
      sub_2543A2768();
      v4 = sub_25431A394(v12, v7, v4, a2);
      MEMORY[0x259C0AD90](v12, -1, -1);
      swift_bridgeObjectRelease_n();
      goto LABEL_6;
    }
  }

  MEMORY[0x28223BE20](v8);
  v9 = (v13 - ((8 * v7 + 15) & 0x3FFFFFFFFFFFFFF0));
  sub_25439F45C(0, v7, v9);
  sub_2543A2768();
  sub_25431A170(v9, v7, v4, a2);
  if (v2)
  {
    swift_willThrow();
  }

  else
  {
    v4 = v10;
  }

  swift_bridgeObjectRelease_n();
LABEL_6:

  return v4;
}

void sub_25431A170(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 0;
  v7 = a3 + 64;
  v8 = 1 << *(a3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(a3 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = a4 + 56;
LABEL_5:
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = v13 | (v6 << 6);
    if (*(a4 + 16))
    {
      v32 = v10;
      v33 = v5;
      v17 = (*(a3 + 48) + 16 * v16);
      v19 = *v17;
      v18 = v17[1];
      v29 = v16;
      v20 = *(*(a3 + 56) + 8 * v16);
      sub_2543A36E8();
      sub_2543A2768();
      v31 = v20;
      sub_2543A28C8();
      v21 = sub_2543A3728();
      v22 = ~(-1 << *(a4 + 32));
      do
      {
        v23 = v21 & v22;
        if (((*(v12 + (((v21 & v22) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v21 & v22)) & 1) == 0)
        {

          v5 = v33;
          v10 = v32;
          goto LABEL_5;
        }

        v24 = (*(a4 + 48) + 16 * v23);
        if (*v24 == v19 && v24[1] == v18)
        {
          break;
        }

        v26 = sub_2543A3608();
        v21 = v23 + 1;
      }

      while ((v26 & 1) == 0);

      *(a1 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      v5 = v33 + 1;
      v10 = v32;
      if (__OFADD__(v33, 1))
      {
        goto LABEL_26;
      }
    }
  }

  v14 = v6;
  while (1)
  {
    v6 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v6 >= v11)
    {
      sub_25431A434(a1, a2, v5, a3);

      return;
    }

    v15 = *(v7 + 8 * v6);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

unint64_t *sub_25431A394(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    swift_bridgeObjectRetain_n();
    sub_25431A170(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

uint64_t sub_25431A434(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return MEMORY[0x277D84F98];
  }

  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) == a3)
  {

    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0D58, &qword_2543AC268);
  result = sub_2543A3418();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 64;
  v32 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_16:
    v16 = v13 | (v11 << 6);
    v17 = *(v4 + 56);
    v18 = (*(v4 + 48) + 16 * v16);
    v19 = *v18;
    v20 = v18[1];
    v21 = *(v17 + 8 * v16);
    sub_2543A36E8();
    sub_2543A2768();
    v33 = v21;
    sub_2543A28C8();
    result = sub_2543A3728();
    v22 = -1 << *(v9 + 32);
    v23 = result & ~v22;
    v24 = v23 >> 6;
    if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
    {
      v26 = 0;
      v27 = (63 - v22) >> 6;
      while (++v24 != v27 || (v26 & 1) == 0)
      {
        v28 = v24 == v27;
        if (v24 == v27)
        {
          v24 = 0;
        }

        v26 |= v28;
        v29 = *(v12 + 8 * v24);
        if (v29 != -1)
        {
          v25 = __clz(__rbit64(~v29)) + (v24 << 6);
          goto LABEL_25;
        }
      }

      goto LABEL_30;
    }

    v25 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_25:
    *(v12 + ((v25 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v25;
    v30 = (*(v9 + 48) + 16 * v25);
    *v30 = v19;
    v30[1] = v20;
    *(*(v9 + 56) + 8 * v25) = v33;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v32;
    if (!v5)
    {
      return v9;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      return v9;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_25431A66C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  *a1 = a4;
  sub_2543A2768();
  v6 = a4;
  return a2;
}

uint64_t sub_25431A6B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v48 = a5;
  sub_25431B804(a1, a2, a3, v47);
  v6 = v47[1];
  v7 = v47[3];
  v8 = v47[4];
  v39 = v47[5];
  v40 = v47[0];
  v9 = (v47[2] + 64) >> 6;
  sub_2543A2768();

  v38 = v6;
  while (1)
  {
    v10 = v8;
    v11 = v7;
    if (!v8)
    {
      break;
    }

LABEL_7:
    v13 = __clz(__rbit64(v10)) | (v11 << 6);
    v14 = (*(v40 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(v40 + 56) + 8 * v13);
    v42[0] = *v14;
    v42[1] = v15;
    v43 = v16;
    sub_2543A2768();
    v17 = v16;
    v39(&v44, v42);

    v18 = v45;
    if (!v45)
    {
LABEL_19:
      sub_2542D6060(v40);
    }

    v19 = v44;
    v41 = v46;
    v20 = *v48;
    v22 = sub_25438E0D0(v44, v45);
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      goto LABEL_21;
    }

    v26 = v21;
    if (v20[3] >= v25)
    {
      if ((a4 & 1) == 0)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5E0D60, &qword_2543AC270);
        sub_2543A3378();
      }
    }

    else
    {
      sub_25439EF90(v25, a4 & 1);
      v27 = sub_25438E0D0(v19, v18);
      if ((v26 & 1) != (v28 & 1))
      {
        goto LABEL_23;
      }

      v22 = v27;
    }

    v29 = (v10 - 1) & v10;
    v30 = *v48;
    if (v26)
    {

      v31 = v30[7];
      v32 = *(v31 + 8 * v22);
      *(v31 + 8 * v22) = v41;
    }

    else
    {
      v30[(v22 >> 6) + 8] |= 1 << v22;
      v33 = (v30[6] + 16 * v22);
      *v33 = v19;
      v33[1] = v18;
      *(v30[7] + 8 * v22) = v41;
      v34 = v30[2];
      v35 = __OFADD__(v34, 1);
      v36 = v34 + 1;
      if (v35)
      {
        goto LABEL_22;
      }

      v30[2] = v36;
    }

    a4 = 1;
    v7 = v11;
    v6 = v38;
    v8 = v29;
  }

  v12 = v7;
  while (1)
  {
    v11 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v11 >= v9)
    {
      goto LABEL_19;
    }

    v10 = *(v6 + 8 * v11);
    ++v12;
    if (v10)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  result = sub_2543A3648();
  __break(1u);
  return result;
}

uint64_t sub_25431A95C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_25431A66C(a2 + 2, *a1, *(a1 + 8), *(a1 + 16));
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t sub_25431A990()
{
  result = qword_27F5E0C18;
  if (!qword_27F5E0C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C18);
  }

  return result;
}

unint64_t sub_25431A9E4()
{
  result = qword_27F5E0C20;
  if (!qword_27F5E0C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C20);
  }

  return result;
}

unint64_t sub_25431AA38()
{
  result = qword_27F5E0C30;
  if (!qword_27F5E0C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C30);
  }

  return result;
}

unint64_t sub_25431AA8C()
{
  result = qword_27F5E0C40;
  if (!qword_27F5E0C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C40);
  }

  return result;
}

unint64_t sub_25431AAE0()
{
  result = qword_27F5E0C58;
  if (!qword_27F5E0C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C58);
  }

  return result;
}

unint64_t sub_25431AB34()
{
  result = qword_27F5E0C70;
  if (!qword_27F5E0C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C70);
  }

  return result;
}

unint64_t sub_25431AB88(uint64_t a1)
{
  result = sub_25431ABB0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25431ABB0()
{
  result = qword_27F5E0C78;
  if (!qword_27F5E0C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C78);
  }

  return result;
}

unint64_t sub_25431AC54()
{
  result = qword_27F5E0C90;
  if (!qword_27F5E0C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0C90);
  }

  return result;
}

uint64_t sub_25431ACF8(unint64_t *a1, void (*a2)(void), uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0C88, &qword_2543ABA68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_25431AD7C()
{
  result = qword_27F5E0CA0;
  if (!qword_27F5E0CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CA0);
  }

  return result;
}

unint64_t sub_25431ADD4()
{
  result = qword_27F5E0CA8;
  if (!qword_27F5E0CA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0C88, &qword_2543ABA68);
    sub_25431AE58();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CA8);
  }

  return result;
}

unint64_t sub_25431AE58()
{
  result = qword_27F5E0CB0;
  if (!qword_27F5E0CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CB0);
  }

  return result;
}

unint64_t sub_25431AEC8()
{
  result = qword_27F5E0CB8;
  if (!qword_27F5E0CB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CB8);
  }

  return result;
}

unint64_t sub_25431AF20()
{
  result = qword_27F5E0CC0;
  if (!qword_27F5E0CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CC0);
  }

  return result;
}

unint64_t sub_25431AF74(uint64_t a1)
{
  result = sub_25431AF9C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25431AF9C()
{
  result = qword_27F5E0CC8;
  if (!qword_27F5E0CC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CC8);
  }

  return result;
}

unint64_t sub_25431AFF0(uint64_t a1)
{
  result = sub_25431B018();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_25431B018()
{
  result = qword_27F5E0CD0;
  if (!qword_27F5E0CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CD0);
  }

  return result;
}

unint64_t sub_25431B06C(uint64_t a1)
{
  *(a1 + 8) = sub_25431B09C();
  result = sub_25431B0F0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_25431B09C()
{
  result = qword_27F5E0CD8;
  if (!qword_27F5E0CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CD8);
  }

  return result;
}

unint64_t sub_25431B0F0()
{
  result = qword_27F5E0CE0;
  if (!qword_27F5E0CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CE0);
  }

  return result;
}

uint64_t sub_25431B150(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 24);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_25431B1A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

_BYTE *sub_25431B264(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

  switch(v5)
  {
    case 1:
      *result = 0;
      break;
    case 2:
      *result = 0;
      break;
    case 3:
LABEL_19:
      __break(1u);
      JUMPOUT(0x25431B300);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SettingsObservationUpdate.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x25431B404);
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_25431B440()
{
  result = qword_27F5E0CE8;
  if (!qword_27F5E0CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CE8);
  }

  return result;
}

unint64_t sub_25431B498()
{
  result = qword_27F5E0CF0;
  if (!qword_27F5E0CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CF0);
  }

  return result;
}

unint64_t sub_25431B4F0()
{
  result = qword_27F5E0CF8;
  if (!qword_27F5E0CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0CF8);
  }

  return result;
}

unint64_t sub_25431B548()
{
  result = qword_27F5E0D00;
  if (!qword_27F5E0D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D00);
  }

  return result;
}

unint64_t sub_25431B5A0()
{
  result = qword_27F5E0D08;
  if (!qword_27F5E0D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D08);
  }

  return result;
}

unint64_t sub_25431B5F8()
{
  result = qword_27F5E0D10;
  if (!qword_27F5E0D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D10);
  }

  return result;
}

unint64_t sub_25431B650()
{
  result = qword_27F5E0D18;
  if (!qword_27F5E0D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D18);
  }

  return result;
}

unint64_t sub_25431B6A8()
{
  result = qword_27F5E0D20;
  if (!qword_27F5E0D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D20);
  }

  return result;
}

unint64_t sub_25431B700()
{
  result = qword_27F5E0D28;
  if (!qword_27F5E0D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D28);
  }

  return result;
}

unint64_t sub_25431B758()
{
  result = qword_27F5E0D30;
  if (!qword_27F5E0D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D30);
  }

  return result;
}

unint64_t sub_25431B7B0()
{
  result = qword_27F5E0D38;
  if (!qword_27F5E0D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5E0D38);
  }

  return result;
}

uint64_t sub_25431B804@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

uint64_t OUTLINED_FUNCTION_6_11()
{

  return sub_2543A3578();
}

uint64_t OUTLINED_FUNCTION_9_8(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return sub_2543A3768();
}

uint64_t OUTLINED_FUNCTION_10_9()
{

  return sub_2542D7D40(v1, v0);
}

uint64_t OUTLINED_FUNCTION_11_8(uint64_t a1, uint64_t a2)
{

  return sub_2543A34D8();
}

uint64_t OUTLINED_FUNCTION_16_4(uint64_t a1)
{

  return sub_2543A3038();
}

uint64_t OUTLINED_FUNCTION_17_5(uint64_t a1)
{

  return sub_2543A3368();
}

void Logging.ulog(_:_:extended:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v7 = Logging.logExt.getter(a5, a6);
  }

  else
  {
    v7 = (*(a6 + 16))(a5, a6, a3);
  }

  v8 = v7;
  OUTLINED_FUNCTION_2_12();
  v9 = sub_2543A2858();
  [v8 ulog:a1 message:v9];
}

id sub_25431BA24()
{
  v0 = sub_25431C504(&type metadata for SettingsObservationUpdate, &qword_27F5E0DB8, &unk_2543B4A50);
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D02878]);
  return sub_25431CDB8(0xD000000000000019, 0x80000002543B7650, v0, v2);
}

id sub_25431BAA4()
{
  v0 = sub_25431C504(&type metadata for AlarmOperationRequest, &qword_27F5E0DC0, &qword_2543AC2D8);
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D02878]);
  return sub_25431CDB8(0xD000000000000019, 0x80000002543B7650, v0, v2);
}

id sub_25431BB24(uint64_t (*a1)(void))
{
  sub_25431C5F4(a1);
  OUTLINED_FUNCTION_12_10();
  v1 = objc_allocWithZone(MEMORY[0x277D02878]);
  v2 = OUTLINED_FUNCTION_0_26();
  return sub_25431CDB8(v2, v3, v4, v5);
}

id sub_25431BB78()
{
  v0 = sub_25431C504(&type metadata for AlarmOperationResponse, &qword_27F5E0DC8, &qword_2543B4A60);
  v2 = v1;
  v3 = objc_allocWithZone(MEMORY[0x277D02878]);
  return sub_25431CDB8(0xD000000000000019, 0x80000002543B7650, v0, v2);
}

id sub_25431BC20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  sub_25431C504(a3, a4, a5);
  OUTLINED_FUNCTION_12_10();
  v5 = objc_allocWithZone(MEMORY[0x277D02878]);
  v6 = OUTLINED_FUNCTION_0_26();
  return sub_25431CDB8(v6, v7, v8, v9);
}

id Logging.log.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(a1);
  OUTLINED_FUNCTION_12_10();
  v2 = objc_allocWithZone(MEMORY[0x277D02878]);
  v3 = OUTLINED_FUNCTION_0_26();
  return sub_25431CDB8(v3, v4, v5, v6);
}

uint64_t Logging.category.getter(uint64_t a1, uint64_t a2)
{
  v2 = static Logging.category.getter(a1, a2);
  v3 = OUTLINED_FUNCTION_2_12();
  v5 = v4(v3);
  v7 = v6;
  sub_2543A2768();
  MEMORY[0x259C093D0](v5, v7);

  return v2;
}

void static Logging.ulog(_:_:extended:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a4)
  {
    v7 = static Logging.logExt.getter(a5, a6);
  }

  else
  {
    v7 = static Logging.log.getter(a5, a6);
  }

  v8 = v7;
  OUTLINED_FUNCTION_2_12();
  v9 = sub_2543A2858();
  [v8 ulog:a1 message:v9];
}

id static Logging.log.getter(uint64_t a1, uint64_t a2)
{
  static Logging.category.getter(a1, a2);
  OUTLINED_FUNCTION_12_10();
  v2 = objc_allocWithZone(MEMORY[0x277D02878]);
  v3 = OUTLINED_FUNCTION_0_26();
  return sub_25431CDB8(v3, v4, v5, v6);
}

uint64_t static Logging.category.getter(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 8))())
  {
    return static Logging.classNameNoGenerics.getter(a1);
  }

  else
  {
    return static Logging.className.getter(a1);
  }
}

id static Logging.logExt.getter(uint64_t a1, uint64_t a2)
{
  static Logging.category.getter(a1, a2);
  OUTLINED_FUNCTION_12_10();
  v2 = objc_allocWithZone(MEMORY[0x277D02878]);
  v3 = OUTLINED_FUNCTION_0_26();
  return sub_25431CE40(v3, v4, v5, v6, 0x10000000);
}

id Logging.logExt.getter(uint64_t a1, uint64_t a2)
{
  (*(a2 + 24))(a1);
  OUTLINED_FUNCTION_12_10();
  v2 = objc_allocWithZone(MEMORY[0x277D02878]);
  v3 = OUTLINED_FUNCTION_0_26();
  return sub_25431CE40(v3, v4, v5, v6, 0x10000000);
}

uint64_t sub_25431C504(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v3 = sub_2543A2888();
  v5 = OUTLINED_FUNCTION_8_8(v3, v4);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_9(v5);
    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_13_7();
  }

  return OUTLINED_FUNCTION_60_0();
}

uint64_t sub_25431C5F4(uint64_t (*a1)(void))
{
  a1(0);
  v1 = OUTLINED_FUNCTION_60_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  v3 = sub_2543A2888();
  v5 = OUTLINED_FUNCTION_8_8(v3, v4);
  if ((v6 & 1) == 0)
  {
    OUTLINED_FUNCTION_11_9(v5);
    OUTLINED_FUNCTION_10_10();
    OUTLINED_FUNCTION_13_7();
  }

  return OUTLINED_FUNCTION_60_0();
}

uint64_t static Logging.classNameNoGenerics.getter(uint64_t a1)
{
  v2 = static Logging.className.getter(a1);
  v4 = OUTLINED_FUNCTION_8_8(v2, v3);
  if (v5)
  {
    return OUTLINED_FUNCTION_60_0();
  }

  OUTLINED_FUNCTION_11_9(v4);
  OUTLINED_FUNCTION_10_10();
  OUTLINED_FUNCTION_13_7();
  OUTLINED_FUNCTION_12_10();

  return v1;
}

unint64_t sub_25431C6E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v6 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v6 = a3 & 0xFFFFFFFFFFFFLL;
  }

  v7 = 4 * v6;
  for (i = 15; ; i = sub_2543A28E8())
  {
    if (i >> 14 == v7)
    {
      return 0;
    }

    if (sub_2543A2938() == a1 && v9 == a2)
    {
      break;
    }

    v11 = sub_2543A3608();

    if (v11)
    {
      return i;
    }
  }

  return i;
}

id sub_25431C800(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_16_5(a1, a2, a3, a4);

  return Logging.log.getter(v5, a2);
}

uint64_t sub_25431C838(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = OUTLINED_FUNCTION_16_5(a1, a2, a3, a4);

  return Logging.category.getter(v5, a2);
}

uint64_t sub_25431C890()
{
  v0 = OUTLINED_FUNCTION_7_9();
  type metadata accessor for ServicesRouter(v0, v1, v2, v3);
  return 1;
}

uint64_t sub_25431C8E0()
{
  v0 = OUTLINED_FUNCTION_7_9();
  type metadata accessor for ServicesRouter(v0, v1, v2, v3);
  return 0;
}

uint64_t sub_25431C91C()
{
  v0 = OUTLINED_FUNCTION_6_12();
  v1(v0);
  return 1;
}

id sub_25431C960(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_6_12();
  v5 = v4(v3);
  return Logging.log.getter(v5, a2);
}

uint64_t sub_25431C9B4(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_6_12();
  v5 = v4(v3);
  return Logging.category.getter(v5, a2);
}

uint64_t sub_25431CA08()
{
  v0 = OUTLINED_FUNCTION_6_12();
  v1(v0);
  return 0;
}

uint64_t sub_25431CA38()
{
  v0 = OUTLINED_FUNCTION_7_9();
  type metadata accessor for RapportTransport(v0, v1, v2, v3);
  return 1;
}

id sub_25431CA70(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_7_9();
  v5 = v4(v3);

  return Logging.log.getter(v5, a2);
}

uint64_t sub_25431CACC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_7_9();
  v5 = v4(v3);

  return Logging.category.getter(v5, a2);
}

uint64_t sub_25431CB10()
{
  v0 = OUTLINED_FUNCTION_7_9();
  type metadata accessor for RapportTransport(v0, v1, v2, v3);
  return 0;
}

id sub_25431CDB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_2543A2858();

  v6 = sub_2543A2858();

  v7 = [v4 initWithSubsystem:v5 category:v6];

  return v7;
}

id sub_25431CE40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = sub_2543A2858();

  OUTLINED_FUNCTION_2_12();
  v8 = sub_2543A2858();

  v9 = [v5 initWithSubsystem:v7 category:v8 logFlags:a5];

  return v9;
}

unint64_t OUTLINED_FUNCTION_8_8(uint64_t a1, unint64_t a2)
{

  return sub_25431C6E0(60, 0xE100000000000000, a1, a2);
}

uint64_t OUTLINED_FUNCTION_10_10()
{
}

uint64_t OUTLINED_FUNCTION_11_9(uint64_t a1)
{

  return sub_2543A2958();
}

void OUTLINED_FUNCTION_13_7()
{

  JUMPOUT(0x259C09390);
}

uint64_t OUTLINED_FUNCTION_16_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a1 + 80);
  v6 = *(a1 + 88);

  return type metadata accessor for ObservationManager(0, v5, v6, a4);
}

uint64_t sub_25431D0D8()
{
  v0 = swift_allocObject();
  sub_254327C6C();
  return v0;
}

uint64_t sub_25431D110(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_48_1();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v3 = MEMORY[0x28223BE20](v2);
  MEMORY[0x259C093D0](*v1, v1[1], v3);
  MEMORY[0x259C093D0](540945696, 0xE400000000000000);
  OUTLINED_FUNCTION_4_7();
  swift_checkMetadataState();
  sub_2543A32A8();
  OUTLINED_FUNCTION_114_0();
  sub_2543A35C8();
  v4 = OUTLINED_FUNCTION_114_0();
  v5(v4);
  return 0;
}

uint64_t sub_25431D284(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (sub_2543A3608() & 1) == 0)
  {
    return 0;
  }

  OUTLINED_FUNCTION_92_0();
  swift_getAssociatedTypeWitness();
  v6 = OUTLINED_FUNCTION_58_0();
  type metadata accessor for ObservationManager.ObservationKey(v6, v7, a4, v8);
  OUTLINED_FUNCTION_41_2();
  swift_getAssociatedConformanceWitness();
  return sub_2543A2848() & 1;
}

uint64_t sub_25431D35C(uint64_t a1, uint64_t a2)
{
  sub_2543A28C8();
  OUTLINED_FUNCTION_92_0();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_62_1();
  return sub_2543A2808();
}

uint64_t sub_25431D3F8(uint64_t a1)
{
  sub_2543A36E8();
  sub_25431D35C(v3, a1);
  return sub_2543A3728();
}

uint64_t sub_25431D440@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  v8 = *(type metadata accessor for ObservationManager.ObservationKey(0, a4, a5, a4) + 36);
  OUTLINED_FUNCTION_45_0();
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_19_0();
  v10 = *(v9 + 32);

  return v10(&a6[v8], a3);
}

uint64_t sub_25431D4F4(uint64_t a1, uint64_t a2)
{
  sub_2543A36E8();
  sub_25431D35C(v4, a2);
  return sub_2543A3728();
}

uint64_t sub_25431D598(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v2[5] = *v1;
  return OUTLINED_FUNCTION_17_6(sub_25431D5DC);
}

uint64_t sub_25431D5DC()
{
  OUTLINED_FUNCTION_194();
  OUTLINED_FUNCTION_40();
  v1 = v0[5];
  v0[2] = v0[4];
  type metadata accessor for ObservationManager(0, *(v1 + 80), *(v1 + 88), v2);
  v3 = sub_2542DF684();
  v4._object = 0xEF293A6874697728;
  v5 = v3 & 1;
  v4._countAndFlagsBits = 0x6574617669746361;
  Logging.ulog(_:extended:)(v4, v5);
  swift_unknownObjectWeakAssign();
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_196();

  return v7(v6, v7, v8, v9, v10, v11, v12, v13);
}

uint64_t sub_25431D6A4()
{
  OUTLINED_FUNCTION_69_0();
  v1[17] = v2;
  v1[18] = v0;
  v1[15] = v3;
  v1[16] = v4;
  v1[13] = v5;
  v1[14] = v6;
  v1[12] = v7;
  v1[19] = *v0;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v1[20] = AssociatedTypeWitness;
  v12 = OUTLINED_FUNCTION_145_0(AssociatedTypeWitness, v9, v10, v11, &associated type descriptor for TransportObservationUpdate.Target);
  v1[21] = v12;
  OUTLINED_FUNCTION_48_1();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_48_1();
  v14 = swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_48_1();
  v15 = swift_getAssociatedConformanceWitness();
  v1[22] = v15;
  v1[7] = v12;
  v1[8] = AssociatedConformanceWitness;
  v1[9] = v14;
  v1[10] = v15;
  type metadata accessor for ObservationUpdateScope(255, (v1 + 7));
  v1[23] = sub_2543A30C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v1[24] = TupleTypeMetadata2;
  OUTLINED_FUNCTION_145_0(TupleTypeMetadata2, v17, v18, v19, &associated type descriptor for TransportObservationUpdate.Failure);
  OUTLINED_FUNCTION_61_0();
  swift_getAssociatedConformanceWitness();
  OUTLINED_FUNCTION_93_0();
  v1[25] = sub_2543A20C8();
  v1[26] = swift_getWitnessTable();
  OUTLINED_FUNCTION_57_0();
  v1[27] = sub_2543A1FE8();
  OUTLINED_FUNCTION_0_2();
  v1[28] = v20;
  v1[29] = OUTLINED_FUNCTION_146();
  v1[30] = swift_getWitnessTable();
  OUTLINED_FUNCTION_57_0();
  v1[31] = sub_2543A1FC8();
  OUTLINED_FUNCTION_0_2();
  v1[32] = v21;
  v1[33] = OUTLINED_FUNCTION_146();
  v1[34] = swift_getWitnessTable();
  OUTLINED_FUNCTION_57_0();
  v22 = sub_2543A1FD8();
  v1[35] = v22;
  OUTLINED_FUNCTION_8(v22);
  v1[36] = v23;
  v1[37] = OUTLINED_FUNCTION_146();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_110_0();
  v24 = sub_2543A2CE8();
  v1[38] = v24;
  OUTLINED_FUNCTION_8(v24);
  v1[39] = v25;
  v1[40] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  v26 = sub_2543A30C8();
  v1[41] = v26;
  OUTLINED_FUNCTION_8(v26);
  v1[42] = v27;
  v1[43] = OUTLINED_FUNCTION_146();
  v1[44] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_0_2();
  v1[45] = v28;
  v1[46] = OUTLINED_FUNCTION_147_0();
  v1[47] = swift_task_alloc();
  v1[48] = swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_110_0();
  v29 = sub_2543A2D08();
  v1[49] = v29;
  OUTLINED_FUNCTION_8(v29);
  v1[50] = v30;
  v1[51] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_110_0();
  v31 = sub_2543A2D38();
  v1[52] = v31;
  OUTLINED_FUNCTION_8(v31);
  v1[53] = v32;
  v1[54] = *(v33 + 64);
  v1[55] = OUTLINED_FUNCTION_147_0();
  v1[56] = swift_task_alloc();
  v1[57] = swift_task_alloc();
  OUTLINED_FUNCTION_58_0();
  OUTLINED_FUNCTION_110_0();
  v34 = sub_2543A2D78();
  v1[58] = v34;
  OUTLINED_FUNCTION_8(v34);
  v1[59] = v35;
  v1[60] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_69_1();
  v1[61] = *(v36 + 88);
  OUTLINED_FUNCTION_69_1();
  v1[62] = *(v37 + 80);
  OUTLINED_FUNCTION_58_0();
  v38 = swift_getAssociatedTypeWitness();
  v1[63] = v38;
  OUTLINED_FUNCTION_8(v38);
  v1[64] = v39;
  v1[65] = OUTLINED_FUNCTION_146();
  OUTLINED_FUNCTION_22_1();
  v44 = type metadata accessor for ObservationManager.ObservationKey(v40, v41, v42, v43);
  v1[66] = v44;
  OUTLINED_FUNCTION_8(v44);
  v1[67] = v45;
  v1[68] = *(v46 + 64);
  v1[69] = swift_task_alloc();
  v1[70] = swift_task_alloc();
  OUTLINED_FUNCTION_15_1();
  OUTLINED_FUNCTION_77_0();

  return MEMORY[0x2822009F8](v47);
}

uint64_t sub_25431DD0C()
{
  OUTLINED_FUNCTION_69_0();
  v1 = v0[65];
  v2 = v0[63];
  v3 = v0[64];
  v4 = v0[61];
  v5 = v0[14];
  OUTLINED_FUNCTION_55_1();
  v6();
  (*(v3 + 16))(v1, v5, v2);
  OUTLINED_FUNCTION_111_0();
  sub_25431D440(v7, v8, v9, v10, v4, v11);
  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  v0[71] = v12;
  *v12 = v13;
  v12[1] = sub_25431DE28;
  OUTLINED_FUNCTION_77_0();

  return sub_25431F7A8();
}

uint64_t sub_25431DE28()
{
  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_176();
  OUTLINED_FUNCTION_11();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 576) = v0;

  OUTLINED_FUNCTION_167();
  OUTLINED_FUNCTION_108_0();

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_25431DF3C()
{
  v1 = v0;
  v3 = v0[20];
  v2 = v0 + 20;
  v5 = v2[30];
  v4 = v2[31];
  v6 = v2[25];
  v70 = v2[29];
  v72 = v2[24];
  v83 = v2[23];
  v85 = v2 - 18;
  v77 = v2[28];
  v7 = v2[1];
  v8 = v2[2];
  v75 = v2[4];
  v78 = *(v2 - 3);
  v9 = *(v2 - 5);
  v52 = sub_25430E8B4(*(v2 - 7), v9, *(v2 - 4), v78);
  v81 = v10;
  v67 = sub_25431E968(v9, v7, v8);
  sub_2542FE93C(v4);
  sub_2543A2CD8();
  (*(v5 + 8))(v4, v70);
  v11 = *(v2 - 15);
  v12 = *(v2 - 14);
  __swift_project_boxed_opaque_existential_0(v2 - 18, v11);
  OUTLINED_FUNCTION_127_0();
  v13(v11, v12);
  sub_2543A20A8();

  v14 = *(v75 + 48);
  v15 = *(v6 + 32);
  OUTLINED_FUNCTION_54_1();
  v15();
  OUTLINED_FUNCTION_19_0();
  (*(v16 + 8))(v72 + v14);
  v17 = sub_25431E968(v9, v7, v8);
  (*(v78 + 168))(v77, v17);

  if (__swift_getEnumTagSinglePayload(v83, 1, v3) == 1)
  {
    v18 = v2 + 23;
    v19 = v1 + 42;
    v2 = v1 + 41;
  }

  else
  {
    v19 = v2 + 25;
    v18 = v1 + 47;
    v21 = v1[39];
    v20 = v1[40];
    v79 = v1[38];
    (v15)(v1[47], v1[43], v1[20]);
    v22 = OUTLINED_FUNCTION_51_1();
    v23(v22);
    sub_2543A2D18();
    (*(v21 + 8))(v20, v79);
  }

  v24 = *v18;
  v25 = *v2;
  v58 = v1[69];
  v59 = v1[70];
  v60 = v1[68];
  v56 = v1[67];
  v57 = v1[66];
  v26 = v1[61];
  v27 = v1[62];
  v66 = v1[60];
  v64 = v1[59];
  v65 = v1[58];
  v76 = v1[55];
  v74 = v1[56];
  v69 = v1[53];
  v71 = v1[57];
  v84 = v1[52];
  v63 = v1[48];
  v61 = v1[45];
  v80 = v1[33];
  v50 = v1[32];
  v49 = v1[31];
  v28 = v1[29];
  v47 = v1[27];
  v48 = v1[28];
  v73 = v1[20];
  v29 = v1[17];
  v30 = v1[16];
  v46 = v1[15];
  v54 = v1[13];
  v55 = v1[18];
  v62 = v1[12];
  (*(*v19 + 8))(v24, v25);
  v31 = v1[5];
  v32 = v1[6];
  __swift_project_boxed_opaque_existential_0(v85, v31);
  OUTLINED_FUNCTION_127_0();
  v1[11] = v33(v31, v32);
  v34 = swift_allocObject();
  v34[2] = v27;
  v34[3] = v30;
  v34[4] = v26;
  v34[5] = v29;
  v34[6] = v52;
  v34[7] = v81;

  sub_2543A2128();

  OUTLINED_FUNCTION_115_0();
  v35 = swift_allocObject();
  v68 = v27;
  v35[2] = v27;
  v35[3] = v30;
  v82 = v26;
  v35[4] = v26;
  v35[5] = v29;
  v35[6] = v46;
  sub_2543A2768();
  sub_2543A20F8();

  (*(v48 + 8))(v28, v47);
  swift_getAssociatedConformanceWitness();
  sub_2543A2138();
  (*(v50 + 8))(v80, v49);
  v53 = *(v69 + 16);
  v53(v74, v71, v84);
  v36 = (*(v69 + 80) + 48) & ~*(v69 + 80);
  v37 = swift_allocObject();
  *(v37 + 2) = v27;
  *(v37 + 3) = v30;
  *(v37 + 4) = v26;
  *(v37 + 5) = v29;
  v51 = *(v69 + 32);
  v51(&v37[v36], v74, v84);
  v53(v76, v71, v84);
  v38 = swift_allocObject();
  *(v38 + 2) = v27;
  *(v38 + 3) = v30;
  *(v38 + 4) = v26;
  *(v38 + 5) = v29;
  v51(&v38[v36], v76, v84);
  swift_getWitnessTable();
  v39 = sub_2543A2118();

  v40 = OUTLINED_FUNCTION_114_0();
  v41(v40);
  (*(v56 + 16))(v58, v59, v57);
  v42 = (*(v56 + 80) + 72) & ~*(v56 + 80);
  v43 = swift_allocObject();
  *(v43 + 2) = v68;
  *(v43 + 3) = v30;
  *(v43 + 4) = v82;
  *(v43 + 5) = v29;
  *(v43 + 6) = v39;
  *(v43 + 7) = v55;
  *(v43 + 8) = v54;
  (*(v56 + 32))(&v43[v42], v58, v57);
  *&v43[(v60 + v42 + 7) & 0xFFFFFFFFFFFFFFF8] = v67;

  sub_2543A2CF8();

  (*(v61 + 8))(v63, v73);
  (*(v69 + 8))(v71, v84);
  (*(v56 + 8))(v59, v57);
  (*(v64 + 32))(v62, v66, v65);
  __swift_destroy_boxed_opaque_existential_0(v85);

  v44 = v1[1];

  return v44();
}

uint64_t sub_25431E820(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_159();
  v30 = v20[47];
  v31 = v20[46];
  v32 = v20[44];
  v33 = v20[43];
  v34 = v20[40];
  v35 = v20[37];
  v36 = v20[33];
  v37 = v20[29];
  (*(v20[67] + 8))(v20[70], v20[66]);

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_85();

  return v22(v21, v22, v23, v24, v25, v26, v27, v28, a9, v30, v31, v32, v33, v34, v35, v36, v37, a18, a19, a20);
}

uint64_t sub_25431E968(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v3 = a1;
  }

  else
  {
    sub_2543A2A88();
    if (sub_2543A2AC8())
    {
      sub_25432B00C();
      v3 = v4;
    }

    else
    {

      v3 = MEMORY[0x277D84FA0];
    }
  }

  sub_2543A2768();
  return v3;
}

uint64_t sub_25431E9EC(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  swift_getAssociatedTypeWitness();
  v11[0] = swift_getAssociatedTypeWitness();
  v11[1] = swift_getAssociatedConformanceWitness();
  v11[2] = swift_getAssociatedConformanceWitness();
  v11[3] = swift_getAssociatedConformanceWitness();
  type metadata accessor for ObservationUpdateScope(255, v11);
  sub_2543A30C8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return a2(a1, a1 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_25431EB3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = sub_25431E968(a2, AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(a6 + 168))(a1, v12, a4, a6);
}

uint64_t sub_25431EC18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v26 - v13;
  swift_getAssociatedConformanceWitness();
  v15 = sub_2543A1FF8();
  v16 = MEMORY[0x28223BE20](v15);
  v18 = &v26 - v17;
  (*(v19 + 16))(&v26 - v17, a1, v16);
  if (__swift_getEnumTagSinglePayload(v18, 1, AssociatedTypeWitness) == 1)
  {
    v27 = 0;
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
    sub_2543A2D38();
    return sub_2543A2D28();
  }

  else
  {
    v26 = a2;
    v21 = v18;
    v22 = *(v9 + 32);
    v22(v14, v21, AssociatedTypeWitness);
    (*(v9 + 16))(v11, v14, AssociatedTypeWitness);
    v23 = sub_2543A35B8();
    if (v23)
    {
      v24 = v23;
      (*(v9 + 8))(v11, AssociatedTypeWitness);
    }

    else
    {
      v24 = swift_allocError();
      v22(v25, v11, AssociatedTypeWitness);
    }

    v27 = v24;
    swift_getAssociatedTypeWitness();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
    sub_2543A2D38();
    sub_2543A2D28();
    return (*(v9 + 8))(v14, AssociatedTypeWitness);
  }
}

uint64_t sub_25431EF80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v10 = &v17 - v9;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5DF1E0, &qword_2543A67A0);
  v11 = sub_2543A2CE8();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v17 - v14;
  (*(v8 + 16))(v10, a1, AssociatedTypeWitness, v13);
  sub_2543A2D38();
  sub_2543A2D18();
  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_25431F14C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a8;
  v30 = a6;
  v27 = a7;
  v28 = a4;
  v9 = *(*a3 + 80);
  v10 = *(*a3 + 88);
  v11 = type metadata accessor for ObservationManager.ObservationKey(0, v9, v10, a4);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  MEMORY[0x28223BE20](v11);
  v15 = &v27 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v27 - v17;
  sub_2543A2028();
  v19 = sub_2543A2BB8();
  __swift_storeEnumTagSinglePayload(v18, 1, 1, v19);
  v20 = swift_allocObject();
  swift_weakInit();
  (*(v12 + 16))(v15, a5, v11);
  v21 = (*(v12 + 80) + 80) & ~*(v12 + 80);
  v22 = swift_allocObject();
  *(v22 + 2) = 0;
  *(v22 + 3) = 0;
  v23 = v27;
  *(v22 + 4) = v9;
  *(v22 + 5) = v23;
  v24 = v28;
  v25 = v29;
  *(v22 + 6) = v10;
  *(v22 + 7) = v25;
  *(v22 + 8) = v20;
  *(v22 + 9) = v24;
  (*(v12 + 32))(&v22[v21], v15, v11);
  *&v22[(v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8] = v30;
  sub_2543A2768();
  sub_2542CCD54(0, 0, v18);
}

uint64_t sub_25431F39C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 152) = v11;
  *(v8 + 136) = v10;
  *(v8 + 120) = a7;
  *(v8 + 128) = a8;
  *(v8 + 104) = a5;
  *(v8 + 112) = a6;
  *(v8 + 96) = a4;
  return MEMORY[0x2822009F8](sub_25431F3D8);
}

uint64_t sub_25431F3D8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_97(v0[12] + 16, (v0 + 2));
  Strong = swift_weakLoadStrong();
  v0[20] = Strong;
  if (Strong)
  {
    v2 = swift_task_alloc();
    v0[21] = v2;
    *v2 = v0;
    v2[1] = sub_25431F4C4;
    v3 = v0[19];
    v4 = v0[17];
    v5 = v0[14];
    v6 = v0[15];
    v7 = v0[13];

    return sub_2543268EC(v7, v5, v6, v4, v3);
  }

  else
  {
    OUTLINED_FUNCTION_27();

    return v9();
  }
}

uint64_t sub_25431F4C4()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 176) = v0;

  if (v0)
  {
    OUTLINED_FUNCTION_139();

    return MEMORY[0x2822009F8](v7);
  }

  else
  {

    OUTLINED_FUNCTION_27();

    return v8();
  }
}

uint64_t sub_25431F5E0()
{
  OUTLINED_FUNCTION_69_0();
  v1 = *(v0 + 96);

  OUTLINED_FUNCTION_97(v1 + 16, v0 + 40);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 144);
    *(v0 + 80) = Strong;
    sub_2543A3298();
    *(v0 + 64) = 0;
    *(v0 + 72) = 0xE000000000000000;
    OUTLINED_FUNCTION_28_2();
    MEMORY[0x259C093D0](0xD000000000000025);
    v5 = OUTLINED_FUNCTION_64_1();
    type metadata accessor for ObservationManager.ObservationKey(v5, v6, v4, v7);
    OUTLINED_FUNCTION_3_15();
    swift_getWitnessTable();
    OUTLINED_FUNCTION_122_0();
    sub_2543A35D8();
    v8 = OUTLINED_FUNCTION_65_1();
    MEMORY[0x259C093D0](v8, 0xE700000000000000);
    *(v0 + 88) = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
    sub_2543A3358();
    v9 = *(v0 + 64);
    v10 = *(v0 + 72);
    v11 = OUTLINED_FUNCTION_64_1();
    v14 = type metadata accessor for ObservationManager(v11, v12, v4, v13);
    v15 = sub_2542DF684();
    Logging.ulog(_:_:extended:)(90, v9, v10, v15 & 1, v14, &off_286648A78);
  }

  else
  {
  }

  OUTLINED_FUNCTION_27();

  return v16();
}

uint64_t sub_25431F7A8()
{
  OUTLINED_FUNCTION_89();
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 16) = v2;
    *v2 = v0;
    v2[1] = sub_2542D32CC;
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_181();

    return sub_25431F9D4();
  }

  else
  {
    v5 = swift_task_alloc();
    *(v0 + 24) = v5;
    *v5 = v0;
    v5[1] = sub_25431F8F4;
    OUTLINED_FUNCTION_48_1();
    OUTLINED_FUNCTION_181();

    return sub_254322C00(v6, v7, v8, v9, v10);
  }
}

uint64_t sub_25431F8F4()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_27();

  return v3();
}

uint64_t sub_25431F9D4()
{
  OUTLINED_FUNCTION_28();
  v1[100] = v0;
  v1[99] = v2;
  v1[98] = v3;
  v1[97] = v4;
  v1[96] = v5;
  v1[95] = v6;
  v1[94] = v7;
  OUTLINED_FUNCTION_15_4();
  v1[101] = *(v8 + 80);
  OUTLINED_FUNCTION_56_0();
  v10 = *(v9 + 88);
  v1[102] = v10;
  v13 = type metadata accessor for ObservationManager.ObservationKey(0, v11, v10, v12);
  v1[103] = v13;
  OUTLINED_FUNCTION_8(v13);
  v1[104] = v14;
  v1[105] = *(v15 + 64);
  v1[106] = OUTLINED_FUNCTION_146();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF328, &qword_2543A68B0);
  OUTLINED_FUNCTION_110(v16);
  v1[107] = OUTLINED_FUNCTION_146();
  v17 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v17);
}

uint64_t sub_25431FAEC()
{
  OUTLINED_FUNCTION_89();
  v1 = *(v0 + 816);
  *(v0 + 744) = *(v0 + 800);
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD00000000000002DLL);
  v2 = OUTLINED_FUNCTION_31_3();
  MEMORY[0x259C093D0](v2, 0xE500000000000000);
  OUTLINED_FUNCTION_3_15();
  *(v0 + 864) = swift_getWitnessTable();
  sub_2543A35D8();
  v3 = OUTLINED_FUNCTION_4_7();
  *(v0 + 872) = type metadata accessor for ObservationManager(v3, v4, v1, v5);
  *(v0 + 145) = sub_2542DF684() & 1;
  v6._countAndFlagsBits = OUTLINED_FUNCTION_107_0();
  Logging.ulog(_:extended:)(v6, v7);

  swift_task_alloc();
  OUTLINED_FUNCTION_36_1();
  *(v0 + 880) = v8;
  *v8 = v9;
  v8[1] = sub_25431FC4C;
  v10 = *(v0 + 768);

  return sub_254321150(v0 + 288, v10);
}

uint64_t sub_25431FC4C()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v3);
}

void sub_25431FD44()
{
  v1 = *(v0 + 145);
  if (!*(v0 + 312))
  {
    v45 = *(v0 + 800);
    v113 = *(v0 + 776);
    sub_25432AFA4(v0 + 288);
    *(v0 + 696) = v45;
    OUTLINED_FUNCTION_63_1();
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD00000000000004FLL, 0x80000002543B8FF0);
    sub_2543A35D8();
    Logging.ulog(_:extended:)(v115, v1);

    OUTLINED_FUNCTION_91_0();
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    OUTLINED_FUNCTION_122_0();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    sub_254322B28(v113, AssociatedTypeWitness, AssociatedConformanceWitness);
    sub_25435FF58();
    *(v0 + 960) = v48;
    *(v0 + 146) = v49;
    swift_task_alloc();
    OUTLINED_FUNCTION_36_1();
    *(v0 + 968) = v50;
    *v50 = v51;
    v50[1] = sub_254320C10;
    OUTLINED_FUNCTION_101_0();

    sub_2543236EC();
    return;
  }

  v112 = *(v0 + 816);
  v2 = *(v0 + 808);
  v3 = *(v0 + 800);
  sub_2542DA8C0((v0 + 288), v0 + 248);
  sub_25432B3CC(v0 + 248, v0 + 488);
  *(v0 + 704) = v3;
  OUTLINED_FUNCTION_63_1();
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000028, 0x80000002543B90B0);
  __swift_project_boxed_opaque_existential_0((v0 + 488), *(v0 + 512));
  sub_2543A35D8();
  MEMORY[0x259C093D0](0x3D79656B202ELL, 0xE600000000000000);
  sub_2543A35D8();
  Logging.ulog(_:extended:)(v115, v1);

  OUTLINED_FUNCTION_97(v3 + 112, v0 + 640);
  v5 = type metadata accessor for ObservationManager.ObservationState(255, v2, v112, v4);
  *(v0 + 888) = v5;
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_45_0();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  OUTLINED_FUNCTION_65();
  sub_2543A27D8();

  if (!*(v0 + 88))
  {
    OUTLINED_FUNCTION_38_1();
    sub_2543A30C8();
    OUTLINED_FUNCTION_2_3();
    (*(v53 + 8))(v0 + 16);
    goto LABEL_13;
  }

  sub_25432B3CC(v0 + 64, v0 + 448);
  OUTLINED_FUNCTION_38_1();
  sub_2543A30C8();
  OUTLINED_FUNCTION_2_3();
  (*(v6 + 8))(v0 + 16);
  OUTLINED_FUNCTION_41_2();
  v7 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_62_1();
  v8 = swift_getAssociatedConformanceWitness();
  v9 = OUTLINED_FUNCTION_38_1();
  type metadata accessor for ObserversCounter(v9, v10, v8, v11);
  if (!swift_dynamicCast())
  {
LABEL_13:
    v54 = *(v0 + 784);
    OUTLINED_FUNCTION_63_1();
    sub_2543A3298();
    MEMORY[0x259C093D0](0xD00000000000001DLL, 0x80000002543B9150);
    OUTLINED_FUNCTION_54_1();
    sub_2543A35D8();
    OUTLINED_FUNCTION_28_2();
    MEMORY[0x259C093D0](0xD000000000000010);
    OUTLINED_FUNCTION_55_1();
    v56 = v55(v54);
    MEMORY[0x259C093D0](v56);

    object = v115._object;
    countAndFlagsBits = v115._countAndFlagsBits;
LABEL_14:
    OUTLINED_FUNCTION_24_3("Fatal error", v57, v58, countAndFlagsBits, object, "HomePodSettings/ObservationManager.swift");
    OUTLINED_FUNCTION_101_0();
    return;
  }

  if (*(v0 + 688) != 1)
  {
    _s16ObservationErrorOMa(0, *(v0 + 808), *(v0 + 816), v12);
    OUTLINED_FUNCTION_0_27();
    WitnessTable = swift_getWitnessTable();
    v62 = OUTLINED_FUNCTION_50_1(WitnessTable);
    OUTLINED_FUNCTION_95_0(v62, v63);
LABEL_17:
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
    __swift_destroy_boxed_opaque_existential_0((v0 + 488));

    OUTLINED_FUNCTION_27();
LABEL_18:
    OUTLINED_FUNCTION_101_0();

    __asm { BRAA            X1, X16 }
  }

  v13 = *(v0 + 680);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 896) = Strong;
  if (!Strong)
  {
    v64 = *(v0 + 816);
    sub_25432B39C(v13, 1);
    v65 = OUTLINED_FUNCTION_45_0();
    _s16ObservationErrorOMa(v65, v66, v64, v67);
    OUTLINED_FUNCTION_0_27();
    v68 = swift_getWitnessTable();
    v69 = OUTLINED_FUNCTION_50_1(v68);
    OUTLINED_FUNCTION_95_0(v69, v70);
    goto LABEL_17;
  }

  v15 = Strong;
  v16 = *(v0 + 776);
  v17 = sub_2543A2768();
  sub_25432B39C(v13, 1);
  *(v0 + 712) = v17;
  OUTLINED_FUNCTION_38_1();
  sub_2543A2758();
  OUTLINED_FUNCTION_42_0();
  swift_getWitnessTable();
  v18 = sub_2543A2EC8();
  sub_2543A2768();
  MEMORY[0x259C098C0](v16, v18, v7, v8);
  sub_2543A2768();
  OUTLINED_FUNCTION_126_0();
  v19 = sub_2543A2DC8();
  *(v0 + 720) = v16;
  OUTLINED_FUNCTION_38_1();
  sub_2543A2EB8();
  sub_2543A2768();
  sub_2543A2768();
  swift_getWitnessTable();
  v20 = sub_2543A2E38();
  *(v0 + 904) = v20;
  OUTLINED_FUNCTION_126_0();
  v21 = sub_2543A2E18();

  if (v21)
  {
    v22 = *(v0 + 792);
    v23 = *(v0 + 784);

    OUTLINED_FUNCTION_112_0();
    sub_254322888(v24, v25, v26, v23, v22);

    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_0((v0 + 248));
    OUTLINED_FUNCTION_81_1();
    v27 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
    v31 = OUTLINED_FUNCTION_11_10(v27, v28, v29, v30, &associated type descriptor for TransportObservationUpdate.InitialValue);
    v35 = OUTLINED_FUNCTION_11_10(v31, v32, v33, v34, &associated type descriptor for TransportObservationUpdate.UpdateValue);
    v39 = OUTLINED_FUNCTION_11_10(v35, v36, v37, v38, &associated type descriptor for TransportObservationUpdate.Target);
    v43 = OUTLINED_FUNCTION_11_10(v39, v40, v41, v42, &associated type descriptor for TransportObservationUpdate.Failure);
    *(v0 + 608) = v31;
    *(v0 + 616) = v35;
    *(v0 + 624) = v39;
    *(v0 + 632) = v43;
    OUTLINED_FUNCTION_1_22();
    ExtendedExistentialTypeMetadata_unique = swift_getExtendedExistentialTypeMetadata_unique();
    if (OUTLINED_FUNCTION_58_1(ExtendedExistentialTypeMetadata_unique))
    {
      OUTLINED_FUNCTION_35_1();

      OUTLINED_FUNCTION_25();
      goto LABEL_18;
    }

    OUTLINED_FUNCTION_63_1();
    sub_2543A3298();

    v87 = OUTLINED_FUNCTION_6_13();
    v89 = v88(v87);
    MEMORY[0x259C093D0](v89);

    countAndFlagsBits = 0xD000000000000027;
    object = 0x80000002543B9080;
    goto LABEL_14;
  }

  v73 = *(v0 + 856);
  v114 = v19;
  v74 = *(v0 + 848);
  v106 = *(v0 + 840);
  v75 = *(v0 + 832);
  v76 = *(v0 + 824);
  v105 = v76;
  v110 = *(v0 + 792);
  v111 = *(v0 + 816);
  v107 = *(v0 + 784);
  v108 = *(v0 + 808);
  v77 = *(v0 + 768);
  v109 = *(v0 + 760);

  v78 = sub_2543A2BB8();
  OUTLINED_FUNCTION_120_0(v73, v79, v80, v78);
  (*(v75 + 16))(v74, v77, v76);
  sub_25432B3CC(v0 + 488, v0 + 528);
  v81 = (*(v75 + 80) + 80) & ~*(v75 + 80);
  v82 = (v106 + v81 + 7) & 0xFFFFFFFFFFFFFFF8;
  v83 = (v82 + 15) & 0xFFFFFFFFFFFFFFF8;
  v84 = swift_allocObject();
  *(v84 + 2) = 0;
  *(v84 + 3) = 0;
  *(v84 + 4) = v108;
  *(v84 + 5) = v107;
  *(v84 + 6) = v111;
  *(v84 + 7) = v110;
  *(v84 + 8) = v15;
  *(v84 + 9) = v109;
  (*(v75 + 32))(&v84[v81], v74, v105);
  *&v84[v82] = v20;
  *&v84[v83] = v114;
  sub_2542DA8C0((v0 + 528), &v84[(v83 + 15) & 0xFFFFFFFFFFFFFFF8]);
  swift_unknownObjectRetain();
  sub_2543A2768();
  OUTLINED_FUNCTION_60_1();
  sub_25434E1A4();
  v86 = v85;
  *(v0 + 912) = v85;
  sub_2543A2C88();
  v90 = *(v0 + 816);
  v91 = *(v0 + 808);
  v92 = *(v0 + 792);
  v93 = *(v0 + 784);
  v94 = swift_task_alloc();
  *v94 = v91;
  v94[1] = v93;
  v94[2] = v90;
  v94[3] = v92;
  swift_getKeyPath();

  *(v0 + 152) = v86;
  *(v0 + 192) = 0;

  OUTLINED_FUNCTION_48_1();
  sub_2543224C8(v95, v96, v97);

  OUTLINED_FUNCTION_19_0();
  v99 = *(v98 + 8);
  *(v0 + 920) = v99;
  *(v0 + 928) = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v99(v0 + 152, v5);
  v100 = swift_task_alloc();
  *(v0 + 936) = v100;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_102_0();
  *(v0 + 944) = v101;
  *v100 = v102;
  v100[1] = sub_2543208A0;
  OUTLINED_FUNCTION_101_0();

  MEMORY[0x282200430](v103);
}

uint64_t sub_2543208A0()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 952) = v0;

  if (v0)
  {

    v7 = sub_254320EA4;
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_0((v3 + 568));
    v7 = sub_2543209B4;
  }

  return MEMORY[0x2822009F8](v7);
}

void sub_2543209B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_159();
  v64 = *(v20 + 920);
  v65 = *(v20 + 928);
  v21 = *(v20 + 904);
  v66 = *(v20 + 912);
  v67 = *(v20 + 896);
  v63 = *(v20 + 888);
  v22 = *(v20 + 816);
  v23 = *(v20 + 808);
  v24 = *(v20 + 792);
  v25 = *(v20 + 784);
  v26 = *(v20 + 768);
  v27 = *(v20 + 760);
  v28 = swift_task_alloc();
  *v28 = v23;
  v28[1] = v25;
  v28[2] = v22;
  v28[3] = v24;
  KeyPath = swift_getKeyPath();

  sub_25432B3CC(v20 + 488, v20 + 104);
  *(v20 + 144) = 1;
  sub_2543224C8(v26, KeyPath, v20 + 104);

  v64(v20 + 104, v63);
  sub_254322888(v27, v26, v21, v25, v24);

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v20 + 248));
  OUTLINED_FUNCTION_81_1();
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  v34 = OUTLINED_FUNCTION_11_10(v30, v31, v32, v33, &associated type descriptor for TransportObservationUpdate.InitialValue);
  v38 = OUTLINED_FUNCTION_11_10(v34, v35, v36, v37, &associated type descriptor for TransportObservationUpdate.UpdateValue);
  v42 = OUTLINED_FUNCTION_11_10(v38, v39, v40, v41, &associated type descriptor for TransportObservationUpdate.Target);
  v46 = OUTLINED_FUNCTION_11_10(v42, v43, v44, v45, &associated type descriptor for TransportObservationUpdate.Failure);
  *(v20 + 608) = v34;
  *(v20 + 616) = v38;
  *(v20 + 624) = v42;
  *(v20 + 632) = v46;
  OUTLINED_FUNCTION_1_22();
  ExtendedExistentialTypeMetadata_unique = swift_getExtendedExistentialTypeMetadata_unique();
  if (OUTLINED_FUNCTION_58_1(ExtendedExistentialTypeMetadata_unique))
  {
    OUTLINED_FUNCTION_35_1();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_85();

    v49(v48, v49, v50, v51, v52, v53, v54, v55, a9, a10, v63, v64, v65, v66, v67, a16, a17, a18, a19, a20);
  }

  else
  {
    sub_2543A3298();

    OUTLINED_FUNCTION_14_5();
    v68 = v57;
    v69 = v56;
    v58 = OUTLINED_FUNCTION_6_13();
    v60 = v59(v58);
    MEMORY[0x259C093D0](v60);

    OUTLINED_FUNCTION_24_3("Fatal error", v61, v62, v68, v69, "HomePodSettings/ObservationManager.swift");
    OUTLINED_FUNCTION_85();
  }
}

uint64_t sub_254320C10()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v3 = v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;
  v5 = *v1;
  OUTLINED_FUNCTION_7();
  *v6 = v5;
  *(v3 + 976) = v0;

  if (v0)
  {
    v7 = sub_2543210D8;
  }

  else
  {
    sub_25432B39C(*(v3 + 960), *(v3 + 146) & 1);
    v7 = sub_254320D28;
  }

  return MEMORY[0x2822009F8](v7);
}

void sub_254320D28()
{
  OUTLINED_FUNCTION_46_0();
  sub_2542DA8C0((v0 + 328), v0 + 488);
  OUTLINED_FUNCTION_81_1();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  v5 = OUTLINED_FUNCTION_11_10(v1, v2, v3, v4, &associated type descriptor for TransportObservationUpdate.InitialValue);
  v9 = OUTLINED_FUNCTION_11_10(v5, v6, v7, v8, &associated type descriptor for TransportObservationUpdate.UpdateValue);
  v13 = OUTLINED_FUNCTION_11_10(v9, v10, v11, v12, &associated type descriptor for TransportObservationUpdate.Target);
  v17 = OUTLINED_FUNCTION_11_10(v13, v14, v15, v16, &associated type descriptor for TransportObservationUpdate.Failure);
  *(v0 + 608) = v5;
  *(v0 + 616) = v9;
  *(v0 + 624) = v13;
  *(v0 + 632) = v17;
  OUTLINED_FUNCTION_1_22();
  ExtendedExistentialTypeMetadata_unique = swift_getExtendedExistentialTypeMetadata_unique();
  if (OUTLINED_FUNCTION_58_1(ExtendedExistentialTypeMetadata_unique))
  {
    OUTLINED_FUNCTION_35_1();

    OUTLINED_FUNCTION_25();
    OUTLINED_FUNCTION_139_0();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_144_0();

  OUTLINED_FUNCTION_14_5();
  v28 = v22;
  v29 = v21;
  v23 = OUTLINED_FUNCTION_6_13();
  v25 = v24(v23);
  MEMORY[0x259C093D0](v25);

  OUTLINED_FUNCTION_24_3("Fatal error", v26, v27, v28, v29, "HomePodSettings/ObservationManager.swift");
  OUTLINED_FUNCTION_139_0();
}

void sub_254320EA4()
{
  v1 = *(v0 + 952);
  v18 = *(v0 + 920);
  v2 = *(v0 + 872);
  v16 = *(v0 + 816);
  v17 = *(v0 + 888);
  v14 = *(v0 + 808);
  v15 = *(v0 + 792);
  v3 = *(v0 + 784);
  *(v0 + 728) = *(v0 + 800);
  sub_2543A3298();
  *(v0 + 664) = 0;
  *(v0 + 672) = 0xE000000000000000;
  OUTLINED_FUNCTION_28_2();
  MEMORY[0x259C093D0](0xD000000000000026);
  sub_2543A35D8();
  v4 = OUTLINED_FUNCTION_65_1();
  MEMORY[0x259C093D0](v4, 0xE700000000000000);
  *(v0 + 736) = v1;
  sub_2543A3358();
  v5 = *(v0 + 664);
  v6 = *(v0 + 672);
  v7 = sub_2542DF684();
  Logging.ulog(_:_:extended:)(90, v5, v6, v7 & 1, v2, &off_286648A78);

  v8 = swift_task_alloc();
  *v8 = v14;
  v8[1] = v3;
  v8[2] = v16;
  v8[3] = v15;
  swift_getKeyPath();

  sub_25432B3CC(v0 + 488, v0 + 200);
  *(v0 + 240) = 1;
  v9 = OUTLINED_FUNCTION_121_0();
  sub_2543224C8(v9, v10, v11);

  v18(v0 + 200, v17);
  swift_willThrow();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_0((v0 + 248));
  __swift_destroy_boxed_opaque_existential_0((v0 + 488));

  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_127();

  __asm { BRAA            X1, X16 }
}

uint64_t sub_2543210D8()
{
  OUTLINED_FUNCTION_28();
  sub_25432B39C(*(v0 + 960), *(v0 + 146) & 1);

  OUTLINED_FUNCTION_27();

  return v1();
}

uint64_t sub_254321150(uint64_t a1, uint64_t a2)
{
  v3[45] = a2;
  v3[46] = v2;
  v3[44] = a1;
  v3[47] = *v2;
  return MEMORY[0x2822009F8](sub_25432119C);
}

uint64_t sub_25432119C()
{
  OUTLINED_FUNCTION_40();
  OUTLINED_FUNCTION_97(*(v0 + 368) + 112, v0 + 328);
  v1 = *(*(v0 + 376) + 88);
  v2 = OUTLINED_FUNCTION_38_1();
  type metadata accessor for ObservationManager.ObservationKey(v2, v3, v1, v4);
  v5 = OUTLINED_FUNCTION_20_3();
  v9 = type metadata accessor for ObservationManager.ObservationState(v5, v6, v7, v8);
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_38_1();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  v10 = OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_87_0(v10);

  if (!*(v0 + 88))
  {
    OUTLINED_FUNCTION_45_0();
    sub_2543A30C8();
    OUTLINED_FUNCTION_2_3();
    (*(v15 + 8))(v0 + 16);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  (*(v13 + 16))(v0 + 192, v0 + 16, v9);
  OUTLINED_FUNCTION_45_0();
  sub_2543A30C8();
  OUTLINED_FUNCTION_2_3();
  (*(v14 + 8))(v0 + 16);
  if (*(v0 + 232) == 1)
  {
    (*(v12 + 8))(v0 + 192, v9);
    goto LABEL_7;
  }

  *(v0 + 384) = *(v0 + 192);
  if (sub_2543A2C78())
  {

LABEL_7:
    sub_2543A2768();
    v16 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_87_0(v16);

    if (*(v0 + 176))
    {
      OUTLINED_FUNCTION_0_2();
      v18 = v17;
      (*(v19 + 16))(v0 + 240, v0 + 104, v9);
      OUTLINED_FUNCTION_45_0();
      sub_2543A30C8();
      OUTLINED_FUNCTION_2_3();
      (*(v20 + 8))(v0 + 104);
      if (*(v0 + 280))
      {
        sub_2542DA8C0((v0 + 240), *(v0 + 352));
        goto LABEL_13;
      }

      (*(v18 + 8))(v0 + 240, v9);
    }

    else
    {
      OUTLINED_FUNCTION_45_0();
      sub_2543A30C8();
      OUTLINED_FUNCTION_2_3();
      (*(v21 + 8))(v0 + 104);
    }

    OUTLINED_FUNCTION_130_0();
LABEL_13:
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_195();

    __asm { BRAA            X1, X16 }
  }

  v24 = swift_task_alloc();
  *(v0 + 392) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_102_0();
  *v24 = v25;
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x282200430](v26);
}

uint64_t sub_254321534()
{
  OUTLINED_FUNCTION_31();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  if (v0)
  {

    v4 = sub_254321B60;
  }

  else
  {
    v4 = sub_254321660;
  }

  return MEMORY[0x2822009F8](v4);
}

uint64_t sub_254321660()
{
  OUTLINED_FUNCTION_28();
  sub_25432AFA4(v0 + 288);
  v1 = swift_task_alloc();
  *(v0 + 400) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_39_2(v1);

  return MEMORY[0x282200490](v2);
}

uint64_t sub_2543216D8()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  v3 = OUTLINED_FUNCTION_15_1();

  return MEMORY[0x2822009F8](v3);
}

uint64_t sub_2543217D0()
{
  OUTLINED_FUNCTION_40();

  v1 = *(*(v0 + 376) + 88);
  v2 = OUTLINED_FUNCTION_38_1();
  type metadata accessor for ObservationManager.ObservationKey(v2, v3, v1, v4);
  v5 = OUTLINED_FUNCTION_20_3();
  v9 = type metadata accessor for ObservationManager.ObservationState(v5, v6, v7, v8);
  sub_2543A2768();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5E0F58, &qword_2543AC580);
  OUTLINED_FUNCTION_38_1();
  swift_getTupleTypeMetadata2();
  OUTLINED_FUNCTION_2_21();
  swift_getWitnessTable();
  v10 = OUTLINED_FUNCTION_61_0();
  OUTLINED_FUNCTION_87_0(v10);

  if (!*(v0 + 88))
  {
    OUTLINED_FUNCTION_45_0();
    sub_2543A30C8();
    OUTLINED_FUNCTION_2_3();
    (*(v15 + 8))(v0 + 16);
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_0_2();
  v12 = v11;
  (*(v13 + 16))(v0 + 192, v0 + 16, v9);
  OUTLINED_FUNCTION_45_0();
  sub_2543A30C8();
  OUTLINED_FUNCTION_2_3();
  (*(v14 + 8))(v0 + 16);
  if (*(v0 + 232) == 1)
  {
    (*(v12 + 8))(v0 + 192, v9);
    goto LABEL_7;
  }

  *(v0 + 384) = *(v0 + 192);
  if (sub_2543A2C78())
  {

LABEL_7:
    sub_2543A2768();
    v16 = OUTLINED_FUNCTION_65();
    OUTLINED_FUNCTION_87_0(v16);

    if (*(v0 + 176))
    {
      OUTLINED_FUNCTION_0_2();
      v18 = v17;
      (*(v19 + 16))(v0 + 240, v0 + 104, v9);
      OUTLINED_FUNCTION_45_0();
      sub_2543A30C8();
      OUTLINED_FUNCTION_2_3();
      (*(v20 + 8))(v0 + 104);
      if (*(v0 + 280))
      {
        sub_2542DA8C0((v0 + 240), *(v0 + 352));
        goto LABEL_13;
      }

      (*(v18 + 8))(v0 + 240, v9);
    }

    else
    {
      OUTLINED_FUNCTION_45_0();
      sub_2543A30C8();
      OUTLINED_FUNCTION_2_3();
      (*(v21 + 8))(v0 + 104);
    }

    OUTLINED_FUNCTION_130_0();
LABEL_13:
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_195();

    __asm { BRAA            X1, X16 }
  }

  v24 = swift_task_alloc();
  *(v0 + 392) = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5DF1E0, &qword_2543A67A0);
  OUTLINED_FUNCTION_102_0();
  *v24 = v25;
  OUTLINED_FUNCTION_40_1();
  OUTLINED_FUNCTION_75_0();
  OUTLINED_FUNCTION_195();

  return MEMORY[0x282200430](v26);
}

uint64_t sub_254321B60()
{
  OUTLINED_FUNCTION_28();
  *(v0 + 320) = 0;
  *(v0 + 288) = 0u;
  *(v0 + 304) = 0u;
  sub_25432AFA4(v0 + 288);
  v1 = swift_task_alloc();
  *(v0 + 400) = v1;
  *v1 = v0;
  v2 = OUTLINED_FUNCTION_39_2(v1);

  return MEMORY[0x282200490](v2);
}

uint64_t sub_254321BE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[27] = v30;
  v9[28] = a9;
  v9[25] = a1;
  v9[26] = v28;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9[29] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = swift_getAssociatedConformanceWitness();
  v14 = swift_getAssociatedConformanceWitness();
  v9[17] = AssociatedTypeWitness;
  v9[18] = AssociatedConformanceWitness;
  v9[19] = v13;
  v9[20] = v14;
  v9[30] = type metadata accessor for ObservationUpdateScope(255, (v9 + 17));
  v15 = sub_2543A30C8();
  v9[31] = v15;
  v9[32] = *(v15 - 8);
  v9[33] = swift_task_alloc();
  v16 = swift_getAssociatedTypeWitness();
  v9[34] = v16;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9[35] = TupleTypeMetadata2;
  v9[36] = *(TupleTypeMetadata2 - 8);
  v9[37] = swift_task_alloc();
  v9[38] = *(v16 - 8);
  v9[39] = swift_task_alloc();
  v18 = swift_task_alloc();
  v9[40] = v18;
  v20 = *(type metadata accessor for ObservationManager.ObservationKey(0, v29, v31, v19) + 36);
  v23 = (*(v31 + 40) + **(v31 + 40));
  v21 = swift_task_alloc();
  v9[41] = v21;
  *v21 = v9;
  v21[1] = sub_254321F64;

  return v23(v18, a5, a6 + v20, a7, a8, v30, a9);
}

uint64_t sub_254321F64()
{
  OUTLINED_FUNCTION_28();
  OUTLINED_FUNCTION_41();
  v2 = *v1;
  OUTLINED_FUNCTION_7();
  *v3 = v2;
  *(v4 + 336) = v0;

  OUTLINED_FUNCTION_139();

  return MEMORY[0x2822009F8](v5);
}

uint64_t sub_254322064()
{
  v1 = *(v0 + 272);
  v2 = *(v0 + 232);
  sub_25432B3CC(*(v0 + 208), v0 + 56);
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F5E0F68, &qword_2543AC5B8);
  OUTLINED_FUNCTION_20_3();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_20_3();
  v4 = swift_getAssociatedTypeWitness();
  *(v0 + 168) = v1;
  *(v0 + 176) = AssociatedTypeWitness;
  *(v0 + 184) = v2;
  *(v0 + 192) = v4;
  OUTLINED_FUNCTION_1_22();
  swift_getExtendedExistentialTypeMetadata_unique();
  if (swift_dynamicCast())
  {
    v41 = *(v0 + 320);
    v5 = *(v0 + 296);
    v6 = *(v0 + 304);
    v7 = *(v0 + 288);
    v8 = *(v0 + 272);
    v32 = *(v0 + 312);
    v34 = *(v0 + 280);
    v35 = *(v0 + 264);
    v37 = *(v0 + 256);
    v38 = *(v0 + 248);
    v36 = *(v0 + 240);
    v10 = *(v0 + 216);
    v9 = *(v0 + 224);
    v40 = *(v0 + 200);
    sub_2542DA8C0((v0 + 96), v0 + 16);
    v11 = *(v0 + 40);
    v12 = *(v0 + 48);
    __swift_project_boxed_opaque_existential_0((v0 + 16), v11);
    OUTLINED_FUNCTION_127_0();
    v13(v11, v12);
    sub_2543A20A8();

    v33 = *(v6 + 16);
    v33(v32, v5, v8);
    (*(v7 + 8))(v5, v34);
    (*(v9 + 160))(v32, v41, v10, v9);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    OUTLINED_FUNCTION_127_0();
    v14 = OUTLINED_FUNCTION_62_1();
    v15(v14);
    OUTLINED_FUNCTION_120_0(v35, v16, v17, v36);
    v18 = *(v34 + 48);
    v33(v5, v32, v8);
    (*(v37 + 32))(v5 + v18, v35, v38);
    sub_2543A20B8();

    v39 = *(v0 + 40);
    __swift_project_boxed_opaque_existential_0((v0 + 16), *(v0 + 40));
    *(v40 + 24) = v39;
    __swift_allocate_boxed_opaque_existential_1(v40);
    OUTLINED_FUNCTION_19_0();
    (*(v19 + 16))();
    v20 = *(v6 + 8);
    v21 = OUTLINED_FUNCTION_61_0();
    v20(v21);
    v22 = OUTLINED_FUNCTION_62_1();
    v20(v22);
    __swift_destroy_boxed_opaque_existential_0((v0 + 16));

    OUTLINED_FUNCTION_25();

    return v23();
  }

  else
  {
    sub_2543A3298();

    OUTLINED_FUNCTION_14_5();
    v42 = v26;
    v43 = v25;
    v27 = OUTLINED_FUNCTION_6_13();
    v29 = v28(v27);
    MEMORY[0x259C093D0](v29);

    return OUTLINED_FUNCTION_24_3("Fatal error", v30, v31, v42, v43, "HomePodSettings/ObservationManager.swift");
  }
}

uint64_t sub_254322444()
{
  OUTLINED_FUNCTION_31();

  OUTLINED_FUNCTION_27();

  return v0();
}

uint64_t sub_2543224C8(uint64_t a1, void *a2, uint64_t a3)
{
  v27 = a3;
  v28 = a2;
  v29 = *a2;
  v26 = *(v29 + *MEMORY[0x277D84308] + 8);
  v25 = *(v26 - 8);
  MEMORY[0x28223BE20](a1);
  v24 = &v24 - v5;
  v7 = *(v6 + 80);
  v8 = *(v6 + 88);
  v10 = type metadata accessor for ObservationManager.ObservationKey(0, v7, v8, v9);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v24 - v13;
  v30[0] = v3;
  v31 = 0;
  v32 = 0xE000000000000000;
  MEMORY[0x259C093D0](0xD000000000000025, 0x80000002543B8D90, v12);
  MEMORY[0x259C093D0](0x3D79656B20, 0xE500000000000000);
  swift_getWitnessTable();
  sub_2543A35D8();
  v15 = v31;
  v16 = v32;
  v18 = type metadata accessor for ObservationManager(0, v7, v8, v17);
  v19 = sub_2542DF684();
  Logging.ulog(_:_:extended:)(20, v15, v16, v19 & 1, v18, &off_286648A78);

  (*(v11 + 16))(v14, a1, v10);
  v20 = sub_25431D548(&v31);
  swift_getWitnessTable();
  sub_2543A27B8();
  v21 = sub_2543A27C8();
  if (*(v22 + 72))
  {
    (*(v25 + 16))(v24, v27, v26);
    swift_setAtWritableKeyPath();
  }

  v21(v30, 0);
  (*(v11 + 8))(v14, v10);
  (v20)(&v31, 0);
  return sub_254327D64(a1);
}

uint64_t sub_254322888(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *v5;
  sub_2543A3298();
  MEMORY[0x259C093D0](0xD000000000000033, 0x80000002543B90E0);
  MEMORY[0x259C093D0](0x3D6570797420, 0xE600000000000000);
  v11 = sub_2543A37B8();
  MEMORY[0x259C093D0](v11);

  MEMORY[0x259C093D0](0x3D79656B20, 0xE500000000000000);
  v12 = *(v10 + 80);
  v13 = *(v10 + 88);
  type metadata accessor for ObservationManager.ObservationKey(0, v12, v13, v14);
  swift_getWitnessTable();
  sub_2543A35D8();
  MEMORY[0x259C093D0](0x5574656772617420, 0xEE003D6574616470);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_2543A2EB8();
  swift_getWitnessTable();
  sub_2543A35D8();
  type metadata accessor for ObservationManager(0, v12, v13, v15);
  v16 = sub_2542DF684() & 1;
  v17._countAndFlagsBits = 0;
  v17._object = 0xE000000000000000;
  Logging.ulog(_:extended:)(v17, v16);

  sub_254328110(a1, a2, sub_25432864C, 0, a3, a4, a5);
}