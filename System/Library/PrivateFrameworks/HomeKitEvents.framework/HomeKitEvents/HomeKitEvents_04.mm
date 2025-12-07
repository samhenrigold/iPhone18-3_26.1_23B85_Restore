uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25418E210(v2, v9, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return MEMORY[0x259C06AA0](0);
  }

  sub_25418E278(v9, v6, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  MEMORY[0x259C06AA0](1);
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  sub_25424DD88();
  return sub_25418F3C0(v6, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.hashValue.getter()
{
  v1 = v0;
  v2 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424EBD8();
  sub_25418E210(v1, v8, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    MEMORY[0x259C06AA0](0);
  }

  else
  {
    sub_25418E278(v8, v5, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    MEMORY[0x259C06AA0](1);
    sub_25424D948();
    sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_25424DC28();
    sub_25424DD88();
    sub_25418F3C0(v5, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  }

  return sub_25424EC28();
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94A0, &qword_254254890);
  v4 = *(v3 - 8);
  v46 = v3;
  v47 = v4;
  MEMORY[0x28223BE20](v3);
  v48 = &v41 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94A8, &qword_254254898);
  v7 = *(v6 - 8);
  v44 = v6;
  v45 = v7;
  MEMORY[0x28223BE20](v6);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94B0, &unk_2542548A0);
  v50 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v13 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v41 - v17;
  v19 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v19);
  sub_25418E7A8();
  v20 = v51;
  sub_25424EC68();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  v51 = v13;
  v42 = v16;
  v43 = v18;
  v22 = v48;
  v21 = v49;
  v23 = sub_25424E988();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = sub_254140878();
  v26 = v10;
  v27 = v12;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v30 = sub_25424E6F8();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
    *v32 = v51;
    sub_25424E908();
    sub_25424E6E8();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x277D84160], v30);
    swift_willThrow();
    (*(v50 + 8))(v12, v26);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v52);
  }

  if (v25)
  {
    v57 = 1;
    sub_25418E7FC();
    v28 = v22;
    sub_25424E8F8();
    v29 = v50;
    v35 = v21;
    v36 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
    sub_25418E354(&qword_27F5B94B8, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails, &protocol conformance descriptor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    v37 = v42;
    v38 = v46;
    sub_25424E978();
    (*(v47 + 8))(v28, v38);
    (*(v29 + 8))(v27, v26);
    swift_unknownObjectRelease();
    (*(*(v36 - 8) + 56))(v37, 0, 1, v36);
    v39 = v43;
    sub_25418E278(v37, v43, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  }

  else
  {
    v57 = 0;
    sub_25418E850();
    sub_25424E8F8();
    v34 = v50;
    v35 = v21;
    (*(v45 + 8))(v9, v44);
    (*(v34 + 8))(v12, v10);
    swift_unknownObjectRelease();
    v40 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
    v39 = v43;
    (*(*(v40 - 8) + 56))(v43, 1, 1, v40);
  }

  sub_25418E278(v39, v35, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  return __swift_destroy_boxed_opaque_existential_1(v52);
}

uint64_t sub_2541861E0(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25418E210(v2, v9, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    return MEMORY[0x259C06AA0](0);
  }

  sub_25418E278(v9, v7, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  MEMORY[0x259C06AA0](1);
  sub_25424D948();
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  sub_25424DD88();
  return sub_25418F3C0(v7, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
}

uint64_t sub_2541863DC(uint64_t a1)
{
  v2 = v1;
  v3 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25424EBD8();
  sub_25418E210(v2, v9, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    MEMORY[0x259C06AA0](0);
  }

  else
  {
    sub_25418E278(v9, v7, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    MEMORY[0x259C06AA0](1);
    sub_25424D948();
    sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
    sub_25424DC28();
    sub_25424DD88();
    sub_25418F3C0(v7, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  }

  return sub_25424EC28();
}

uint64_t sub_254186664@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0x656C756465686373 && a2 == 0xE800000000000000;
  if (v5 || (sub_25424EAB8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xED00006465646E45)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_25424EAB8();

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

uint64_t sub_254186740(uint64_t a1)
{
  v2 = sub_25418E8A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418677C(uint64_t a1)
{
  v2 = sub_25418E8A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541867B8(uint64_t a1)
{
  v2 = sub_25418E94C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541867F4(uint64_t a1)
{
  v2 = sub_25418E94C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254186830(uint64_t a1)
{
  v2 = sub_25418E8F8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418686C(uint64_t a1)
{
  v2 = sub_25418E8F8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.SleepDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94C0, &qword_2542548B0);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94C8, &qword_2542548B8);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94D0, &qword_2542548C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E8A4();
  sub_25424EC78();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_25418E8F8();
    v14 = v18;
    sub_25424E9A8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_25418E94C();
    sub_25424E9A8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.SleepDetails.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94F0, &qword_2542548C8);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B94F8, &qword_2542548D0);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9500, &qword_2542548D8);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E8A4();
  v12 = v31;
  sub_25424EC68();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_25424E988();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_254140878();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_25424E6F8();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
      *v22 = &type metadata for ThermostatAutomationEvent.ThermostatAutomationTrigger.SleepDetails;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_25418E8F8();
        sub_25424E8F8();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_25418E94C();
        sub_25424E8F8();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

uint64_t sub_254187098(uint64_t a1)
{
  v2 = sub_25418E9F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541870D4(uint64_t a1)
{
  v2 = sub_25418E9F4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254187134@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7974697669746361 && a2 == 0xED00006574617453)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25424EAB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_2541871C4(uint64_t a1)
{
  v2 = sub_25418E9A0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254187200(uint64_t a1)
{
  v2 = sub_25418E9A0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.VacationDetails.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9508, &qword_2542548E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9510, &qword_2542548E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E9A0();
  sub_25424EC78();
  sub_25418E9F4();
  sub_25424E9A8();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.VacationDetails.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9528, &qword_2542548F0);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9530, &qword_2542548F8);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E9A0();
  sub_25424EC68();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_25424E988();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_25414087C() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_25424E6F8();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
    *v16 = &type metadata for ThermostatAutomationEvent.ThermostatAutomationTrigger.VacationDetails;
    sub_25424E908();
    sub_25424E6E8();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_25418E9F4();
  sub_25424E8F8();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_254187784(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9508, &qword_2542548E0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9510, &qword_2542548E8);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418E9A0();
  sub_25424EC78();
  sub_25418E9F4();
  sub_25424E9A8();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_25418798C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64657269707865 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25424EAB8();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_254187A14(uint64_t a1)
{
  v2 = sub_25418EA48();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254187A50(uint64_t a1)
{
  v2 = sub_25418EA48();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254187A8C(uint64_t a1)
{
  v2 = sub_25418EA9C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254187AC8(uint64_t a1)
{
  v2 = sub_25418EA9C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.HoldDetails.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9538, &qword_254254900);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9540, &qword_254254908);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418EA48();
  sub_25424EC78();
  sub_25418EA9C();
  sub_25424E9A8();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.HoldDetails.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9558, &qword_254254910);
  v25 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v19 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9560, &qword_254254918);
  v20 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418EA48();
  sub_25424EC68();
  if (v1)
  {
    goto LABEL_6;
  }

  v19 = a1;
  v9 = v25;
  v10 = v20;
  v11 = sub_25424E988();
  v12 = (2 * *(v11 + 16)) | 1;
  v21 = v11;
  v22 = v11 + 32;
  v23 = 0;
  v24 = v12;
  if ((sub_25414087C() & 1) != 0 || v23 != v24 >> 1)
  {
    v13 = v6;
    v14 = sub_25424E6F8();
    swift_allocError();
    v16 = v15;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
    *v16 = &type metadata for ThermostatAutomationEvent.ThermostatAutomationTrigger.HoldDetails;
    sub_25424E908();
    sub_25424E6E8();
    (*(*(v14 - 8) + 104))(v16, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v10 + 8))(v8, v13);
    swift_unknownObjectRelease();
    a1 = v19;
LABEL_6:
    v18 = a1;
    return __swift_destroy_boxed_opaque_existential_1(v18);
  }

  sub_25418EA9C();
  sub_25424E8F8();
  (*(v9 + 8))(v5, v3);
  (*(v10 + 8))(v8, v6);
  swift_unknownObjectRelease();
  v18 = v19;
  return __swift_destroy_boxed_opaque_existential_1(v18);
}

uint64_t sub_254188078(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9538, &qword_254254900);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9540, &qword_254254908);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418EA48();
  sub_25424EC78();
  sub_25418EA9C();
  sub_25424E9A8();
  (*(v3 + 8))(v5, v2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_254188260(uint64_t a1)
{
  v2 = sub_25418EB44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418829C(uint64_t a1)
{
  v2 = sub_25418EB44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541882D8(uint64_t a1)
{
  v2 = sub_25418EB98();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254188314(uint64_t a1)
{
  v2 = sub_25418EB98();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_254188350()
{
  if (*v0)
  {
    return 0xD000000000000018;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t sub_25418838C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x8000000254250760 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000254250780 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_25424EAB8();

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

uint64_t sub_254188470(uint64_t a1)
{
  v2 = sub_25418EAF0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541884AC(uint64_t a1)
{
  v2 = sub_25418EAF0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.ArrivalPredictionDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9568, &qword_254254920);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x28223BE20](v3);
  v18 = &v16 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9570, &qword_254254928);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9578, &qword_254254930);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418EAF0();
  sub_25424EC78();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_25418EB44();
    v14 = v18;
    sub_25424E9A8();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_25418EB98();
    sub_25424E9A8();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.ArrivalPredictionDetails.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9598, &qword_254254938);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v24 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95A0, &qword_254254940);
  v26 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95A8, &qword_254254948);
  v30 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418EAF0();
  v12 = v31;
  sub_25424EC68();
  if (v12)
  {
    v13 = a1;
  }

  else
  {
    v25 = v6;
    v31 = a1;
    v14 = v28;
    v15 = v29;
    v16 = sub_25424E988();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_254140878();
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v20 = sub_25424E6F8();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
      *v22 = &type metadata for ThermostatAutomationEvent.ThermostatAutomationTrigger.ArrivalPredictionDetails;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x277D84160], v20);
      swift_willThrow();
      (*(v30 + 8))(v11, v9);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = v18;
      if (v18)
      {
        v37 = 1;
        sub_25418EB44();
        sub_25424E8F8();
        v19 = v30;
        (*(v27 + 8))(v5, v14);
      }

      else
      {
        v37 = 0;
        sub_25418EB98();
        sub_25424E8F8();
        v19 = v30;
        (*(v26 + 8))(v8, v25);
      }

      (*(v19 + 8))(v11, v9);
      swift_unknownObjectRelease();
      *v15 = v36 & 1;
    }

    v13 = v31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v13);
}

unint64_t sub_254188CA0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B28, &qword_254257020);
  v1 = MEMORY[0x28223BE20](v0 - 8);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v1);
  v5 = &v22 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B30, &qword_254257028);
  v6 = *(type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_254254840;
  if (qword_27F5B83E8 != -1)
  {
    swift_once();
  }

  v9 = off_27F5B9430;
  v10 = *(off_27F5B9430 + 2);
  if (v10)
  {
    v11 = v8;

    result = sub_25418E184(v10);
    if ((result & 0x8000000000000000) != 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    v13 = result;
    if (result >= v9[2])
    {
LABEL_25:
      __break(1u);
      goto LABEL_26;
    }

    v14 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
    v15 = *(v14 - 8);
    sub_25418E210(v9 + ((*(v15 + 80) + 32) & ~*(v15 + 80)) + *(v15 + 72) * v13, v5, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);

    (*(v15 + 56))(v5, 0, 1, v14);
    v8 = v11;
  }

  else
  {
    v14 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  }

  type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v16 = *(v14 - 8);
  v17 = *(v16 + 48);
  result = v17(v5, 1, v14);
  if (result == 1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v18 = v23 + v8;
  sub_25418E278(v5, v23 + v8, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  swift_storeEnumTagMultiPayload();
  v19 = off_27F5B9430;
  v20 = *(off_27F5B9430 + 2);
  if (v20)
  {

    result = sub_25418E184(v20);
    if ((result & 0x8000000000000000) != 0)
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (result >= v19[2])
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    sub_25418E210(v19 + ((*(v16 + 80) + 32) & ~*(v16 + 80)) + *(v16 + 72) * result, v3, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);

    v21 = 0;
  }

  else
  {
    v21 = 1;
  }

  (*(v16 + 56))(v3, v21, 1, v14);
  result = v17(v3, 1, v14);
  if (result != 1)
  {
    sub_25418E278(v3, v18 + v7, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
    swift_storeEnumTagMultiPayload();
    result = sub_25418E184(2uLL);
    if (result > 1)
    {
      __break(1u);
    }

    else
    {
      *(v18 + 2 * v7) = byte_286632FB8[result + 32];
      swift_storeEnumTagMultiPayload();
      result = sub_25418E184(1uLL);
      if (!result)
      {
        swift_storeEnumTagMultiPayload();
        result = sub_25418E184(1uLL);
        if (!result)
        {
          swift_storeEnumTagMultiPayload();
          result = sub_25418E184(2uLL);
          if (result <= 1)
          {
            *(v18 + 5 * v7) = byte_286632FE0[result + 32];
            result = swift_storeEnumTagMultiPayload();
            off_27F5B9438 = v23;
            return result;
          }

          goto LABEL_23;
        }

LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }
    }

    __break(1u);
    goto LABEL_22;
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_2541891D4(uint64_t a1)
{
  v2 = sub_25418F0CC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254189210(uint64_t a1)
{
  v2 = sub_25418F0CC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25418924C()
{
  v1 = *v0;
  v2 = 0x646569707563636FLL;
  v3 = 0x6E6F697461636176;
  v4 = 1684828008;
  if (v1 != 4)
  {
    v4 = 0xD000000000000011;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x69707563636F6E75;
  if (v1 != 1)
  {
    v5 = 0x7065656C73;
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

uint64_t sub_254189304@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_254191F54(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_254189338(uint64_t a1)
{
  v2 = sub_25418F078();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254189374(uint64_t a1)
{
  v2 = sub_25418F078();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541893B0(uint64_t a1)
{
  v2 = sub_25418F174();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541893EC(uint64_t a1)
{
  v2 = sub_25418F174();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254189428(uint64_t a1)
{
  v2 = sub_25418F420();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254189464(uint64_t a1)
{
  v2 = sub_25418F420();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_2541894A0(uint64_t a1)
{
  v2 = sub_25418F2C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541894DC(uint64_t a1)
{
  v2 = sub_25418F2C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254189518(uint64_t a1)
{
  v2 = sub_25418F36C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254189554(uint64_t a1)
{
  v2 = sub_25418F36C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254189590(uint64_t a1)
{
  v2 = sub_25418F21C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_2541895CC(uint64_t a1)
{
  v2 = sub_25418F21C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95B0, &qword_254254950);
  v54 = *(v2 - 8);
  v55 = v2;
  MEMORY[0x28223BE20](v2);
  v53 = &v38 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95B8, &qword_254254958);
  v51 = *(v4 - 8);
  v52 = v4;
  MEMORY[0x28223BE20](v4);
  v50 = &v38 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95C0, &qword_254254960);
  v48 = *(v6 - 8);
  v49 = v6;
  MEMORY[0x28223BE20](v6);
  v47 = &v38 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95C8, &qword_254254968);
  v45 = *(v8 - 8);
  v46 = v8;
  MEMORY[0x28223BE20](v8);
  v42 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95D0, &qword_254254970);
  v43 = *(v10 - 8);
  v44 = v10;
  MEMORY[0x28223BE20](v10);
  v41 = &v38 - v11;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95D8, &qword_254254978);
  v39 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v13 = &v38 - v12;
  v56 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v14 = MEMORY[0x28223BE20](v56);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  v19 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  MEMORY[0x28223BE20](v19);
  v21 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B95E0, &qword_254254980);
  v23 = *(v22 - 8);
  v57 = v22;
  v58 = v23;
  MEMORY[0x28223BE20](v22);
  v25 = &v38 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418F078();
  sub_25424EC78();
  sub_25418E210(v59, v21, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      v64 = 3;
      sub_25418F21C();
      v30 = v47;
      v28 = v57;
      sub_25424E9A8();
      sub_25418F270();
      v31 = v49;
      sub_25424EA18();
      v32 = v48;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v65 = 4;
      sub_25418F174();
      v30 = v50;
      v28 = v57;
      sub_25424E9A8();
      sub_25418F1C8();
      v31 = v52;
      sub_25424EA18();
      v32 = v51;
    }

    else
    {
      v37 = *v21;
      v67 = 5;
      sub_25418F0CC();
      v30 = v53;
      v28 = v57;
      sub_25424E9A8();
      v66 = v37;
      sub_25418F120();
      v31 = v55;
      sub_25424EA18();
      v32 = v54;
    }

    goto LABEL_12;
  }

  if (!EnumCaseMultiPayload)
  {
    sub_25418E278(v21, v18, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
    v60 = 0;
    sub_25418F420();
    v33 = v57;
    sub_25424E9A8();
    sub_25418E354(&qword_27F5B9638, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails, &protocol conformance descriptor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
    v34 = v40;
    sub_25424EA18();
    (*(v39 + 8))(v13, v34);
    sub_25418F3C0(v18, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
    return (*(v58 + 8))(v25, v33);
  }

  if (EnumCaseMultiPayload != 1)
  {
    v36 = *v21;
    v63 = 2;
    sub_25418F2C4();
    v30 = v42;
    v28 = v57;
    sub_25424E9A8();
    v62 = v36;
    sub_25418F318();
    v31 = v46;
    sub_25424EA18();
    v32 = v45;
LABEL_12:
    (*(v32 + 8))(v30, v31);
    return (*(v58 + 8))(v25, v28);
  }

  sub_25418E278(v21, v16, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  v61 = 1;
  sub_25418F36C();
  v27 = v41;
  v28 = v57;
  sub_25424E9A8();
  sub_25418E354(&qword_27F5B9638, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails, &protocol conformance descriptor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  v29 = v44;
  sub_25424EA18();
  (*(v43 + 8))(v27, v29);
  sub_25418F3C0(v16, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  return (*(v58 + 8))(v25, v28);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v29 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v28 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v28 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v28 - v15;
  v17 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_25418E210(v1, v19, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_25418E278(v19, v16, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      MEMORY[0x259C06AA0](0);
      sub_25418E210(v16, v14, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      if ((*(v3 + 48))(v14, 1, v2) == 1)
      {
        MEMORY[0x259C06AA0](0);
        return sub_25418F3C0(v16, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      }

      v26 = v29;
      sub_25418E278(v14, v29, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
      MEMORY[0x259C06AA0](1);
      sub_25424D948();
      sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_25424DC28();
      sub_25424DD88();
      v27 = v16;
      goto LABEL_20;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_25418E278(v19, v11, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      MEMORY[0x259C06AA0](1);
      sub_25418E210(v11, v8, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      if ((*(v3 + 48))(v8, 1, v2) == 1)
      {
        MEMORY[0x259C06AA0](0);
        return sub_25418F3C0(v11, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      }

      v26 = v29;
      sub_25418E278(v8, v29, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
      MEMORY[0x259C06AA0](1);
      sub_25424D948();
      sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      sub_25424DC28();
      sub_25424DD88();
      v27 = v11;
LABEL_20:
      sub_25418F3C0(v27, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      return sub_25418F3C0(v26, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
    }

    v24 = *v19;
    v25 = 2;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v22 = 3;
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      v24 = *v19;
      v25 = 5;
LABEL_15:
      MEMORY[0x259C06AA0](v25);
      v23 = v24;
      return MEMORY[0x259C06AA0](v23);
    }

    v22 = 4;
  }

  MEMORY[0x259C06AA0](v22);
  v23 = 0;
  return MEMORY[0x259C06AA0](v23);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationTrigger.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9648, &qword_254254988);
  v4 = *(v3 - 8);
  v92 = v3;
  v93 = v4;
  MEMORY[0x28223BE20](v3);
  v102 = &v74 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9650, &qword_254254990);
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x28223BE20](v6);
  v101 = &v74 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9658, &qword_254254998);
  v89 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v100 = &v74 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9660, &qword_2542549A0);
  v86 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v94 = &v74 - v9;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9668, &qword_2542549A8);
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v95 = &v74 - v10;
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9670, &qword_2542549B0);
  v83 = *(v82 - 8);
  MEMORY[0x28223BE20](v82);
  v98 = &v74 - v11;
  v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9678, &qword_2542549B8);
  v103 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v13 = &v74 - v12;
  v97 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  v14 = MEMORY[0x28223BE20](v97);
  v81 = &v74 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v80 = &v74 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v74 - v19;
  v21 = MEMORY[0x28223BE20](v18);
  v23 = &v74 - v22;
  v24 = MEMORY[0x28223BE20](v21);
  v26 = &v74 - v25;
  v27 = MEMORY[0x28223BE20](v24);
  v29 = &v74 - v28;
  MEMORY[0x28223BE20](v27);
  v31 = &v74 - v30;
  v32 = a1[3];
  v106 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  sub_25418F078();
  v104 = v13;
  v33 = v105;
  sub_25424EC68();
  if (!v33)
  {
    v77 = v29;
    v75 = v20;
    v76 = v23;
    v78 = v26;
    v35 = v97;
    v34 = v98;
    v36 = v100;
    v37 = v101;
    v105 = 0;
    v38 = v102;
    v79 = v31;
    v39 = v99;
    v40 = v104;
    v41 = sub_25424E988();
    v42 = (2 * *(v41 + 16)) | 1;
    v107 = v41;
    v108 = v41 + 32;
    v109 = 0;
    v110 = v42;
    v43 = sub_25413B110();
    if (v43 == 6 || v109 != v110 >> 1)
    {
      v50 = v40;
      v51 = sub_25424E6F8();
      swift_allocError();
      v53 = v52;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
      *v53 = v35;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v51 - 8) + 104))(v53, *MEMORY[0x277D84160], v51);
      swift_willThrow();
      (*(v103 + 8))(v50, v39);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1(v106);
    }

    if (v43 <= 2u)
    {
      if (!v43)
      {
        v111 = 0;
        sub_25418F420();
        v60 = v105;
        sub_25424E8F8();
        if (!v60)
        {
          type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
          sub_25418E354(&qword_27F5B96A0, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails, &protocol conformance descriptor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
          v47 = v77;
          v68 = v82;
          sub_25424E978();
          (*(v83 + 8))(v34, v68);
          (*(v103 + 8))(v104, v39);
          swift_unknownObjectRelease();
          goto LABEL_27;
        }

        (*(v103 + 8))(v40, v39);
        goto LABEL_10;
      }

      v44 = v105;
      if (v43 == 1)
      {
        v111 = 1;
        sub_25418F36C();
        v45 = v95;
        v46 = v40;
        sub_25424E8F8();
        if (!v44)
        {
          type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
          sub_25418E354(&qword_27F5B96A0, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails, &protocol conformance descriptor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
          v47 = v78;
          v48 = v85;
          sub_25424E978();
          v49 = v103;
          (*(v84 + 8))(v45, v48);
          (*(v49 + 8))(v104, v39);
          swift_unknownObjectRelease();
LABEL_27:
          swift_storeEnumTagMultiPayload();
          v70 = v47;
LABEL_29:
          v72 = v79;
          sub_25418E278(v70, v79, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
          v55 = v96;
LABEL_31:
          sub_25418E278(v72, v55, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
          return __swift_destroy_boxed_opaque_existential_1(v106);
        }

        goto LABEL_20;
      }

      v111 = 2;
      sub_25418F2C4();
      v64 = v94;
      v57 = v40;
      sub_25424E8F8();
      if (!v44)
      {
        sub_25418F570();
        v65 = v87;
        sub_25424E978();
        (*(v86 + 8))(v64, v65);
        (*(v103 + 8))(v40, v39);
        swift_unknownObjectRelease();
        v69 = v76;
        *v76 = v111;
        goto LABEL_28;
      }

LABEL_25:
      (*(v103 + 8))(v57, v39);
      goto LABEL_10;
    }

    v55 = v96;
    if (v43 == 3)
    {
      v111 = 3;
      sub_25418F21C();
      v61 = v36;
      v46 = v40;
      v62 = v105;
      sub_25424E8F8();
      if (v62)
      {
LABEL_20:
        (*(v103 + 8))(v46, v39);
        goto LABEL_10;
      }

      sub_25418F51C();
      v63 = v88;
      sub_25424E978();
      (*(v89 + 8))(v61, v63);
      (*(v103 + 8))(v40, v39);
      swift_unknownObjectRelease();
      v69 = v75;
LABEL_28:
      swift_storeEnumTagMultiPayload();
      v70 = v69;
      goto LABEL_29;
    }

    if (v43 == 4)
    {
      v111 = 4;
      sub_25418F174();
      v56 = v37;
      v57 = v40;
      v58 = v105;
      sub_25424E8F8();
      if (v58)
      {
        goto LABEL_25;
      }

      sub_25418F4C8();
      v59 = v91;
      sub_25424E978();
      (*(v90 + 8))(v56, v59);
      (*(v103 + 8))(v40, v39);
      swift_unknownObjectRelease();
      v71 = v80;
    }

    else
    {
      v111 = 5;
      sub_25418F0CC();
      v57 = v40;
      v66 = v105;
      sub_25424E8F8();
      if (v66)
      {
        goto LABEL_25;
      }

      sub_25418F474();
      v67 = v92;
      sub_25424E978();
      (*(v93 + 8))(v38, v67);
      (*(v103 + 8))(v40, v39);
      swift_unknownObjectRelease();
      v71 = v81;
      *v81 = v111;
    }

    swift_storeEnumTagMultiPayload();
    v73 = v71;
    v72 = v79;
    sub_25418E278(v73, v79, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
    goto LABEL_31;
  }

  return __swift_destroy_boxed_opaque_existential_1(v106);
}

unint64_t sub_25418B248()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B18, &qword_254257010);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_254254850;
  *(v0 + 32) = 0;
  *(v0 + 40) = 3;
  v1 = sub_2541B1304(0x1000001uLL);
  v2 = (vcvts_n_f32_u32(v1, 0x18uLL) * 3.0) + 17.0;
  v3 = sub_2541B1304(0x1000001uLL);
  *&v4 = (vcvts_n_f32_u32(v3, 0x18uLL) * 5.0) + 21.0;
  if (v1 == 0x1000000)
  {
    v5 = 1101004800;
  }

  else
  {
    v5 = LODWORD(v2);
  }

  if (v3 == 0x1000000)
  {
    v4 = 1104150528;
  }

  else
  {
    v4 = v4;
  }

  *(v0 + 44) = v5 | (v4 << 32);
  *(v0 + 52) = 0;
  v6 = sub_2541B1304(0x1000001uLL);
  *&v7 = (vcvts_n_f32_u32(v6, 0x18uLL) * 5.0) + 21.0;
  if (v6 == 0x1000000)
  {
    v7 = 1104150528;
  }

  else
  {
    v7 = v7;
  }

  *(v0 + 56) = v7;
  *(v0 + 64) = 1;
  result = sub_2541B1304(0x1000001uLL);
  *&v9 = (vcvts_n_f32_u32(result, 0x18uLL) * 3.0) + 17.0;
  if (result == 0x1000000)
  {
    v9 = 1101004800;
  }

  else
  {
    v9 = v9;
  }

  *(v0 + 68) = v9;
  *(v0 + 76) = 2;
  off_27F5B9440 = v0;
  return result;
}

uint64_t sub_25418B3B8(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }
}

uint64_t sub_25418B418()
{
  v1 = 6710895;
  v2 = 0x6F546C6F6F63;
  if (*v0 != 2)
  {
    v2 = 0x6F5474616568;
  }

  if (*v0)
  {
    v1 = 0x65676E6172;
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

uint64_t sub_25418B480@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25419215C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_25418B4B4(uint64_t a1)
{
  v2 = sub_25418F5C4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418B4F0(uint64_t a1)
{
  v2 = sub_25418F5C4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25418B548@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002542507E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_25424EAB8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_25418B5DC(uint64_t a1)
{
  v2 = sub_25418F66C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418B618(uint64_t a1)
{
  v2 = sub_25418F66C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25418B670@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002542507C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_25424EAB8();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_25418B704(uint64_t a1)
{
  v2 = sub_25418F618();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418B740(uint64_t a1)
{
  v2 = sub_25418F618();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25418B77C(uint64_t a1)
{
  v2 = sub_25418F714();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418B7B8(uint64_t a1)
{
  v2 = sub_25418F714();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_25418B824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000002542507C0 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002542507E0 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_25424EAB8();

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

uint64_t sub_25418B90C(uint64_t a1)
{
  v2 = sub_25418F6C0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25418B948(uint64_t a1)
{
  v2 = sub_25418F6C0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationResult.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B96A8, &qword_2542549C0);
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x28223BE20](v4);
  v34 = &v27 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B96B0, &qword_2542549C8);
  v30 = *(v6 - 8);
  v31 = v6;
  MEMORY[0x28223BE20](v6);
  v29 = &v27 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B96B8, &qword_2542549D0);
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v27 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B96C0, &qword_2542549D8);
  v28 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v27 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B96C8, &qword_2542549E0);
  v37 = *(v14 - 8);
  v38 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v27 - v15;
  v17 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418F5C4();
  sub_25424EC78();
  if (v17 > 1)
  {
    if (v17 != 2)
    {
      v40 = 0;
      sub_25418F714();
      v26 = v38;
      sub_25424E9A8();
      (*(v28 + 8))(v13, v11);
      return (*(v37 + 8))(v16, v26);
    }

    v45 = 3;
    sub_25418F618();
    v21 = v34;
    v22 = v38;
    sub_25424E9A8();
    v23 = v36;
    sub_25424E9F8();
    v24 = v35;
LABEL_8:
    (*(v24 + 8))(v21, v23);
    return (*(v37 + 8))(v16, v22);
  }

  if (v17)
  {
    v44 = 2;
    sub_25418F66C();
    v21 = v29;
    v22 = v38;
    sub_25424E9A8();
    v23 = v31;
    sub_25424E9F8();
    v24 = v30;
    goto LABEL_8;
  }

  v43 = 1;
  sub_25418F6C0();
  v18 = v38;
  sub_25424E9A8();
  v42 = 0;
  v19 = v33;
  v20 = v39;
  sub_25424E9F8();
  if (!v20)
  {
    v41 = 1;
    sub_25424E9F8();
  }

  (*(v32 + 8))(v10, v19);
  return (*(v37 + 8))(v16, v18);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationResult.hash(into:)()
{
  if (*(v0 + 8) <= 1u)
  {
    if (!*(v0 + 8))
    {
      MEMORY[0x259C06AA0](1);
      sub_25424EC08();
      return sub_25424EC08();
    }

    v1 = 2;
LABEL_7:
    MEMORY[0x259C06AA0](v1);
    return sub_25424EC08();
  }

  if (*(v0 + 8) == 2)
  {
    v1 = 3;
    goto LABEL_7;
  }

  return MEMORY[0x259C06AA0](0);
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationResult.hashValue.getter()
{
  sub_25424EBD8();
  ThermostatAutomationEvent.ThermostatAutomationResult.hash(into:)();
  return sub_25424EC28();
}

uint64_t ThermostatAutomationEvent.ThermostatAutomationResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a2;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B96F8, &qword_2542549E8);
  v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v49 - v3;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9700, &qword_2542549F0);
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v58 = &v49 - v4;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9708, &qword_2542549F8);
  v56 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v6 = &v49 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9710, &qword_254254A00);
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v49 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9718, &qword_254254A08);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v49 - v12;
  v14 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_25418F5C4();
  v15 = v62;
  sub_25424EC68();
  if (!v15)
  {
    v16 = v9;
    v50 = v7;
    v51 = 0;
    v17 = v6;
    v18 = v58;
    v19 = v59;
    v62 = v11;
    v21 = v60;
    v20 = v61;
    v22 = sub_25424E988();
    v23 = (2 * *(v22 + 16)) | 1;
    v64 = v22;
    v65 = v22 + 32;
    v66 = 0;
    v67 = v23;
    v24 = sub_254140880();
    if (v24 == 4 || v66 != v67 >> 1)
    {
      v29 = sub_25424E6F8();
      swift_allocError();
      v31 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8A70, &qword_254252F40);
      *v31 = &type metadata for ThermostatAutomationEvent.ThermostatAutomationResult;
      sub_25424E908();
      sub_25424E6E8();
      (*(*(v29 - 8) + 104))(v31, *MEMORY[0x277D84160], v29);
      swift_willThrow();
    }

    else
    {
      if (v24 > 1u)
      {
        if (v24 == 2)
        {
          v68 = 2;
          sub_25418F66C();
          v34 = v18;
          v35 = v51;
          sub_25424E8F8();
          v36 = v62;
          if (v35)
          {
            (*(v62 + 8))(v13, v10);
            goto LABEL_11;
          }

          v37 = v53;
          sub_25424E958();
          v42 = v41;
          (*(v55 + 8))(v34, v37);
          (*(v36 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v27 = v42;
          v28 = 1;
        }

        else
        {
          v68 = 3;
          sub_25418F618();
          v40 = v51;
          sub_25424E8F8();
          v32 = v62;
          if (v40)
          {
            goto LABEL_10;
          }

          sub_25424E958();
          v48 = v47;
          (*(v57 + 8))(v19, v21);
          (*(v32 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v27 = v48;
          v28 = 2;
        }

        v26 = v20;
        goto LABEL_22;
      }

      if (v24)
      {
        v68 = 1;
        sub_25418F6C0();
        v38 = v51;
        sub_25424E8F8();
        if (!v38)
        {
          v26 = v20;
          v68 = 0;
          v39 = v54;
          sub_25424E958();
          v44 = v43;
          v68 = 1;
          sub_25424E958();
          v46 = v45;
          (*(v56 + 8))(v17, v39);
          (*(v62 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v28 = 0;
          v27 = v44 | (v46 << 32);
          goto LABEL_22;
        }
      }

      else
      {
        v68 = 0;
        sub_25418F714();
        v25 = v51;
        sub_25424E8F8();
        if (!v25)
        {
          v26 = v20;
          (*(v52 + 8))(v16, v50);
          (*(v62 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v27 = 0;
          v28 = 3;
LABEL_22:
          *v26 = v27;
          *(v26 + 8) = v28;
          return __swift_destroy_boxed_opaque_existential_1(v63);
        }
      }
    }

    v32 = v62;
LABEL_10:
    (*(v32 + 8))(v13, v10);
LABEL_11:
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1(v63);
}

uint64_t sub_25418C7C8()
{
  sub_25424EBD8();
  ThermostatAutomationEvent.ThermostatAutomationResult.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_25418C820(uint64_t a1)
{
  sub_25424EBD8();
  ThermostatAutomationEvent.ThermostatAutomationResult.hash(into:)();
  return sub_25424EC28();
}

uint64_t sub_25418C894@<X0>(void *a1@<X2>, void *a2@<X3>, void *a4@<X8>)
{
  if (*a1 != -1)
  {
    v6 = a2;
    v7 = a4;
    swift_once();
    a4 = v7;
    a2 = v6;
  }

  *a4 = *a2;
}

uint64_t ThermostatAutomationEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t ThermostatAutomationEvent.roomName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 24));

  return v1;
}

uint64_t ThermostatAutomationEvent.accessoryIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AccessoryEventBase(0) + 28);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ThermostatAutomationEvent.accessoryName.getter()
{
  v1 = *(v0 + *(type metadata accessor for AccessoryEventBase(0) + 32));

  return v1;
}

uint64_t ThermostatAutomationEvent.userIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for AccessoryEventBase(0) + 36);

  return sub_254149770(v3, a1);
}

uint64_t ThermostatAutomationEvent.init(date:homeIdentifier:roomIdentifier:roomName:accessoryIdentifier:accessoryName:state:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v16 = type metadata accessor for AccessoryEventBase(0);
  v17 = v16[9];
  v18 = sub_25424D948();
  v19 = *(v18 - 8);
  (*(v19 + 56))(a9 + v17, 1, 1, v18);
  v20 = sub_25424D8B8();
  (*(*(v20 - 8) + 32))(a9, a1, v20);
  v21 = type metadata accessor for EventBase(0);
  v22 = *(v19 + 32);
  v22(a9 + v21[5], a2, v18);
  *(a9 + v21[6]) = 3;
  v23 = (a9 + v21[7]);
  v23[1] = 0;
  v23[2] = 0;
  *v23 = 15;
  v22(a9 + v16[5], a3, v18);
  v24 = (a9 + v16[6]);
  *v24 = a4;
  v24[1] = a5;
  v22(a9 + v16[7], a6, v18);
  v25 = (a9 + v16[8]);
  *v25 = a7;
  v25[1] = a8;
  v26 = type metadata accessor for ThermostatAutomationEvent(0);
  return sub_25418E278(a10, a9 + *(v26 + 20), type metadata accessor for ThermostatAutomationEvent.State);
}

uint64_t ThermostatAutomationEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8F00, &unk_25425B800);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v18 - v6;
  v8 = type metadata accessor for ThermostatAutomationEvent.State(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AccessoryEventBase(0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v21);
  sub_254232240(v21, v13);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v5;
  v20 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25412F1C4();
  sub_25424EC68();
  LOBYTE(v21[0]) = 0;
  sub_25418E354(&qword_27F5B9720, type metadata accessor for ThermostatAutomationEvent.State, &protocol conformance descriptor for ThermostatAutomationEvent.State);
  v14 = v20;
  sub_25424E978();
  (*(v19 + 8))(v7, v4);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v15 = v22;
  sub_25418E278(v13, v22, type metadata accessor for AccessoryEventBase);
  v16 = type metadata accessor for ThermostatAutomationEvent(0);
  return sub_25418E278(v14, v15 + *(v16 + 20), type metadata accessor for ThermostatAutomationEvent.State);
}

uint64_t ThermostatAutomationEvent.encode(to:)(void *a1)
{
  v34 = a1;
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8E60, &qword_254254A10);
  v32 = *(v3 - 8);
  v33 = v3;
  MEMORY[0x28223BE20](v3);
  v31 = &v30 - v4;
  v5 = type metadata accessor for AccessoryEventBase.DocumentLayout(0);
  v6 = (v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_25424D8B8();
  (*(*(v9 - 8) + 16))(v8, v2, v9);
  v10 = type metadata accessor for EventBase(0);
  v11 = *(v10 + 20);
  v12 = v6[7];
  v13 = sub_25424D948();
  v14 = *(*(v13 - 8) + 16);
  v14(&v8[v12], v2 + v11, v13);
  v36 = *(v2 + *(v10 + 24));
  v15 = type metadata accessor for AccessoryEventBase(0);
  v14(&v8[v6[9]], v2 + v15[5], v13);
  v16 = (v2 + v15[6]);
  v18 = *v16;
  v17 = v16[1];
  v14(&v8[v6[11]], v2 + v15[7], v13);
  v19 = v34;
  v20 = v15[9];
  v21 = (v2 + v15[8]);
  v22 = *v21;
  v23 = v21[1];
  sub_254149770(v2 + v20, &v8[v6[13]]);
  v8[v6[8]] = v36;
  v24 = &v8[v6[10]];
  *v24 = v18;
  *(v24 + 1) = v17;
  v25 = &v8[v6[12]];
  *v25 = v22;
  *(v25 + 1) = v23;

  v26 = v35;
  sub_25423298C(v19);
  result = sub_25418F3C0(v8, type metadata accessor for AccessoryEventBase.DocumentLayout);
  if (!v26)
  {
    type metadata accessor for ThermostatAutomationEvent(0);
    __swift_project_boxed_opaque_existential_1(v19, v19[3]);
    sub_25412F1C4();
    v28 = v31;
    sub_25424EC78();
    v37 = 0;
    type metadata accessor for ThermostatAutomationEvent.State(0);
    sub_25418E354(&qword_27F5B9728, type metadata accessor for ThermostatAutomationEvent.State, &protocol conformance descriptor for ThermostatAutomationEvent.State);
    v29 = v33;
    sub_25424EA18();
    return (*(v32 + 8))(v28, v29);
  }

  return result;
}

BOOL static ThermostatAutomationEvent.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (_s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0(a1, a2))
  {
    v4 = *(type metadata accessor for ThermostatAutomationEvent(0) + 20);
    v5 = a1 + v4;
    v6 = a2 + v4;
    if (_s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO2eeoiySbAE_AEtFZ_0(v5, v6))
    {
      v7 = *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20);
      v8 = *(v5 + v7 + 8);
      v14 = *(v5 + v7);
      v15 = v8;
      v9 = v6 + v7;
      v10 = *v9;
      LOBYTE(v9) = *(v9 + 8);
      v12 = v10;
      v13 = v9;
      if (_s13HomeKitEvents25ThermostatAutomationEventV0dE6ResultO2eeoiySbAE_AEtFZ_0(&v14, &v12))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t ThermostatAutomationEvent.hash(into:)(uint64_t a1)
{
  v3 = sub_25424D948();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v16 - v8;
  sub_25424D8B8();
  sub_25418E354(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v10 = type metadata accessor for EventBase(0);
  sub_25418E354(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254257058[*(v1 + *(v10 + 24))]);
  v11 = type metadata accessor for AccessoryEventBase(0);
  sub_25424DC28();
  sub_25424DD88();
  sub_25424DC28();
  sub_25424DD88();
  sub_254149770(v1 + *(v11 + 36), v9);
  if ((*(v4 + 48))(v9, 1, v3) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    (*(v4 + 32))(v6, v9, v3);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v4 + 8))(v6, v3);
  }

  v12 = v1 + *(type metadata accessor for ThermostatAutomationEvent(0) + 20);
  ThermostatAutomationEvent.ThermostatAutomationTrigger.hash(into:)(a1);
  v13 = *(v12 + *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20) + 8);
  if (v13 <= 1)
  {
    if (!v13)
    {
      MEMORY[0x259C06AA0](1);
      sub_25424EC08();
      return sub_25424EC08();
    }

    v15 = 2;
LABEL_11:
    MEMORY[0x259C06AA0](v15);
    return sub_25424EC08();
  }

  if (v13 == 2)
  {
    v15 = 3;
    goto LABEL_11;
  }

  return MEMORY[0x259C06AA0](0);
}

BOOL sub_25418D7DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (j___s13HomeKitEvents9FakeEventV2eeoiySbAC_ACtFZ_0())
  {
    v6 = *(a3 + 20);
    v7 = a1 + v6;
    v8 = a2 + v6;
    if (_s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO2eeoiySbAE_AEtFZ_0(a1 + v6, v8))
    {
      v9 = *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20);
      v10 = *(v7 + v9 + 8);
      v16 = *(v7 + v9);
      v17 = v10;
      v11 = v8 + v9;
      v12 = *v11;
      LOBYTE(v11) = *(v11 + 8);
      v14 = v12;
      v15 = v11;
      if (_s13HomeKitEvents25ThermostatAutomationEventV0dE6ResultO2eeoiySbAE_AEtFZ_0(&v16, &v14))
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_25418D8A0@<X0>(uint64_t (*a1)(void)@<X2>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  v5 = sub_25424D948();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

BOOL static ThermostatAutomationEvent.State.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (_s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v4 = *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20);
    v5 = *(a1 + v4 + 8);
    v12 = *(a1 + v4);
    v13 = v5;
    v6 = a2 + v4;
    v7 = *v6;
    LOBYTE(v6) = *(v6 + 8);
    v10 = v7;
    v11 = v6;
    return _s13HomeKitEvents25ThermostatAutomationEventV0dE6ResultO2eeoiySbAE_AEtFZ_0(&v12, &v10);
  }

  else
  {
    return 0;
  }
}

uint64_t ThermostatAutomationEvent.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9730, &qword_254254A18);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418F788();
  sub_25424EC78();
  v15 = 0;
  type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  sub_25418E354(&qword_27F5B9740, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger, &protocol conformance descriptor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  sub_25424EA18();
  if (!v2)
  {
    v9 = (v3 + *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20));
    v10 = *v9;
    LOBYTE(v9) = *(v9 + 8);
    v13 = v10;
    v14 = v9;
    v12[15] = 1;
    sub_25418F7DC();
    sub_25424EA18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ThermostatAutomationEvent.State.hash(into:)(uint64_t a1)
{
  ThermostatAutomationEvent.ThermostatAutomationTrigger.hash(into:)(a1);
  v2 = *(v1 + *(type metadata accessor for ThermostatAutomationEvent.State(0) + 20) + 8);
  if (v2 <= 1)
  {
    if (!v2)
    {
      MEMORY[0x259C06AA0](1);
      sub_25424EC08();
      return sub_25424EC08();
    }

    v3 = 2;
LABEL_7:
    MEMORY[0x259C06AA0](v3);
    return sub_25424EC08();
  }

  if (v2 == 2)
  {
    v3 = 3;
    goto LABEL_7;
  }

  return MEMORY[0x259C06AA0](0);
}

uint64_t sub_25418DC98(uint64_t (*a1)(void *))
{
  sub_25424EBD8();
  a1(v3);
  return sub_25424EC28();
}

uint64_t ThermostatAutomationEvent.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  MEMORY[0x28223BE20](v4);
  v21 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9750, &qword_254254A20);
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ThermostatAutomationEvent.State(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25418F788();
  sub_25424EC68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v12 = v19;
  v13 = v11;
  v25 = 0;
  sub_25418E354(&qword_27F5B9758, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger, &protocol conformance descriptor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  v14 = v20;
  sub_25424E978();
  sub_25418E278(v21, v13, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  v24 = 1;
  sub_25418F830();
  sub_25424E978();
  (*(v12 + 8))(v8, v14);
  v15 = v23;
  v16 = v13 + *(v9 + 20);
  *v16 = v22;
  *(v16 + 8) = v15;
  sub_25418E210(v13, v18, type metadata accessor for ThermostatAutomationEvent.State);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_25418F3C0(v13, type metadata accessor for ThermostatAutomationEvent.State);
}

uint64_t sub_25418E058(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_25424EBD8();
  a3(v5);
  return sub_25424EC28();
}

uint64_t sub_25418E0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_25424EBD8();
  a4(v6);
  return sub_25424EC28();
}

BOOL sub_25418E100(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (_s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO2eeoiySbAE_AEtFZ_0(a1, a2))
  {
    v6 = *(a3 + 20);
    v7 = *(a1 + v6 + 8);
    v14 = *(a1 + v6);
    v15 = v7;
    v8 = a2 + v6;
    v9 = *v8;
    LOBYTE(v8) = *(v8 + 8);
    v12 = v9;
    v13 = v8;
    return _s13HomeKitEvents25ThermostatAutomationEventV0dE6ResultO2eeoiySbAE_AEtFZ_0(&v14, &v12);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_25418E184(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x259C07350](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x259C07350](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_25418E210(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_25418E278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_25418E300()
{
  result = qword_27F5B9458;
  if (!qword_27F5B9458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9458);
  }

  return result;
}

uint64_t sub_25418E354(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

BOOL _s13HomeKitEvents25ThermostatAutomationEventV0dE6ResultO2eeoiySbAE_AEtFZ_0(uint64_t a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = *(a2 + 8);
  if (*(a1 + 8) <= 1u)
  {
    if (!*(a1 + 8))
    {
      if (!*(a2 + 8) && vabds_f32(COERCE_FLOAT(*a1), *&v2) < 0.00001)
      {
        LODWORD(v4) = HIDWORD(*a1);
        v2 >>= 32;
        return vabds_f32(v4, *&v2) < 0.00001;
      }

      return 0;
    }

    if (v3 == 1)
    {
LABEL_10:
      LODWORD(v4) = *a1;
      return vabds_f32(v4, *&v2) < 0.00001;
    }

    return 0;
  }

  if (*(a1 + 8) == 2)
  {
    if (v3 == 2)
    {
      goto LABEL_10;
    }

    return 0;
  }

  return v3 == 3 && v2 == 0;
}

uint64_t _s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO16OccupancyDetailsO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B38, &qword_254257030);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v23 - v13;
  v15 = *(v12 + 56);
  sub_25418E210(a1, &v23 - v13, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  sub_25418E210(a2, &v14[v15], type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  v16 = *(v5 + 48);
  if (v16(v14, 1, v4) == 1)
  {
    if (v16(&v14[v15], 1, v4) == 1)
    {
      goto LABEL_14;
    }

    goto LABEL_6;
  }

  sub_25418E210(v14, v10, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  if (v16(&v14[v15], 1, v4) == 1)
  {
    sub_25418F3C0(v10, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
LABEL_6:
    sub_254132E5C(v14, &qword_27F5B9B38, &qword_254257030);
    return 0;
  }

  sub_25418E278(&v14[v15], v7, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  if (sub_25424D8F8())
  {
    v17 = *(v4 + 20);
    v18 = *&v10[v17];
    v19 = *&v10[v17 + 8];
    v20 = &v7[v17];
    v21 = v18 == *v20 && v19 == *(v20 + 1);
    if (v21 || (sub_25424EAB8() & 1) != 0)
    {
      sub_25418F3C0(v7, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
      sub_25418F3C0(v10, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
LABEL_14:
      sub_25418F3C0(v14, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
      return 1;
    }
  }

  sub_25418F3C0(v7, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  sub_25418F3C0(v10, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails);
  sub_25418F3C0(v14, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
  return 0;
}

unint64_t sub_25418E7A8()
{
  result = qword_27F5B9480;
  if (!qword_27F5B9480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9480);
  }

  return result;
}

unint64_t sub_25418E7FC()
{
  result = qword_27F5B9488;
  if (!qword_27F5B9488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9488);
  }

  return result;
}

unint64_t sub_25418E850()
{
  result = qword_27F5B9498;
  if (!qword_27F5B9498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9498);
  }

  return result;
}

unint64_t sub_25418E8A4()
{
  result = qword_27F5B94D8;
  if (!qword_27F5B94D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B94D8);
  }

  return result;
}

unint64_t sub_25418E8F8()
{
  result = qword_27F5B94E0;
  if (!qword_27F5B94E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B94E0);
  }

  return result;
}

unint64_t sub_25418E94C()
{
  result = qword_27F5B94E8;
  if (!qword_27F5B94E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B94E8);
  }

  return result;
}

unint64_t sub_25418E9A0()
{
  result = qword_27F5B9518;
  if (!qword_27F5B9518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9518);
  }

  return result;
}

unint64_t sub_25418E9F4()
{
  result = qword_27F5B9520;
  if (!qword_27F5B9520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9520);
  }

  return result;
}

unint64_t sub_25418EA48()
{
  result = qword_27F5B9548;
  if (!qword_27F5B9548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9548);
  }

  return result;
}

unint64_t sub_25418EA9C()
{
  result = qword_27F5B9550;
  if (!qword_27F5B9550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9550);
  }

  return result;
}

unint64_t sub_25418EAF0()
{
  result = qword_27F5B9580;
  if (!qword_27F5B9580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9580);
  }

  return result;
}

unint64_t sub_25418EB44()
{
  result = qword_27F5B9588;
  if (!qword_27F5B9588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9588);
  }

  return result;
}

unint64_t sub_25418EB98()
{
  result = qword_27F5B9590;
  if (!qword_27F5B9590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9590);
  }

  return result;
}

uint64_t _s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v35 = &v35 - v7;
  v8 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v35 - v13;
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v35 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v35 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B20, &qword_254257018);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v23 = &v35 - v22;
  v24 = *(v21 + 56);
  sub_25418E210(a1, &v35 - v22, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  sub_25418E210(a2, &v23[v24], type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      sub_25418E210(v23, v19, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
      if (!swift_getEnumCaseMultiPayload())
      {
        v32 = &v23[v24];
        v33 = v35;
        sub_25418E278(v32, v35, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
        v28 = _s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO16OccupancyDetailsO2eeoiySbAG_AGtFZ_0(v19, v33);
        sub_25418F3C0(v33, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
        v29 = v19;
        goto LABEL_22;
      }

      v17 = v19;
      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 1)
    {
      sub_25418E210(v23, v17, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v26 = &v23[v24];
        v27 = v36;
        sub_25418E278(v26, v36, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
        v28 = _s13HomeKitEvents25ThermostatAutomationEventV0dE7TriggerO16OccupancyDetailsO2eeoiySbAG_AGtFZ_0(v17, v27);
        sub_25418F3C0(v27, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
        v29 = v17;
LABEL_22:
        sub_25418F3C0(v29, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
        sub_25418F3C0(v23, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
        return v28 & 1;
      }

LABEL_12:
      sub_25418F3C0(v17, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails);
LABEL_20:
      sub_254132E5C(v23, &qword_27F5B9B20, &qword_254257018);
      v28 = 0;
      return v28 & 1;
    }

    sub_25418E210(v23, v14, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      goto LABEL_20;
    }

    v30 = *v14;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 3)
  {
    if (swift_getEnumCaseMultiPayload() != 3)
    {
      goto LABEL_20;
    }
  }

  else
  {
    if (EnumCaseMultiPayload != 4)
    {
      sub_25418E210(v23, v11, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_20;
      }

      v30 = *v11;
LABEL_19:
      v31 = v30 ^ v23[v24];
      sub_25418F3C0(v23, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
      v28 = v31 ^ 1;
      return v28 & 1;
    }

    if (swift_getEnumCaseMultiPayload() != 4)
    {
      goto LABEL_20;
    }
  }

  sub_25418F3C0(v23, type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger);
  v28 = 1;
  return v28 & 1;
}

unint64_t sub_25418F078()
{
  result = qword_27F5B95E8;
  if (!qword_27F5B95E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B95E8);
  }

  return result;
}

unint64_t sub_25418F0CC()
{
  result = qword_27F5B95F0;
  if (!qword_27F5B95F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B95F0);
  }

  return result;
}

unint64_t sub_25418F120()
{
  result = qword_27F5B95F8;
  if (!qword_27F5B95F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B95F8);
  }

  return result;
}

unint64_t sub_25418F174()
{
  result = qword_27F5B9600;
  if (!qword_27F5B9600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9600);
  }

  return result;
}

unint64_t sub_25418F1C8()
{
  result = qword_27F5B9608;
  if (!qword_27F5B9608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9608);
  }

  return result;
}

unint64_t sub_25418F21C()
{
  result = qword_27F5B9610;
  if (!qword_27F5B9610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9610);
  }

  return result;
}

unint64_t sub_25418F270()
{
  result = qword_27F5B9618;
  if (!qword_27F5B9618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9618);
  }

  return result;
}

unint64_t sub_25418F2C4()
{
  result = qword_27F5B9620;
  if (!qword_27F5B9620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9620);
  }

  return result;
}

unint64_t sub_25418F318()
{
  result = qword_27F5B9628;
  if (!qword_27F5B9628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9628);
  }

  return result;
}

unint64_t sub_25418F36C()
{
  result = qword_27F5B9630;
  if (!qword_27F5B9630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9630);
  }

  return result;
}

uint64_t sub_25418F3C0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_25418F420()
{
  result = qword_27F5B9640;
  if (!qword_27F5B9640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9640);
  }

  return result;
}

unint64_t sub_25418F474()
{
  result = qword_27F5B9680;
  if (!qword_27F5B9680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9680);
  }

  return result;
}

unint64_t sub_25418F4C8()
{
  result = qword_27F5B9688;
  if (!qword_27F5B9688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9688);
  }

  return result;
}

unint64_t sub_25418F51C()
{
  result = qword_27F5B9690;
  if (!qword_27F5B9690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9690);
  }

  return result;
}

unint64_t sub_25418F570()
{
  result = qword_27F5B9698;
  if (!qword_27F5B9698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9698);
  }

  return result;
}

unint64_t sub_25418F5C4()
{
  result = qword_27F5B96D0;
  if (!qword_27F5B96D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B96D0);
  }

  return result;
}

unint64_t sub_25418F618()
{
  result = qword_27F5B96D8;
  if (!qword_27F5B96D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B96D8);
  }

  return result;
}

unint64_t sub_25418F66C()
{
  result = qword_27F5B96E0;
  if (!qword_27F5B96E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B96E0);
  }

  return result;
}

unint64_t sub_25418F6C0()
{
  result = qword_27F5B96E8;
  if (!qword_27F5B96E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B96E8);
  }

  return result;
}

unint64_t sub_25418F714()
{
  result = qword_27F5B96F0;
  if (!qword_27F5B96F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B96F0);
  }

  return result;
}

unint64_t sub_25418F788()
{
  result = qword_27F5B9738;
  if (!qword_27F5B9738)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9738);
  }

  return result;
}

unint64_t sub_25418F7DC()
{
  result = qword_27F5B9748;
  if (!qword_27F5B9748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9748);
  }

  return result;
}

unint64_t sub_25418F830()
{
  result = qword_27F5B9760;
  if (!qword_27F5B9760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9760);
  }

  return result;
}

unint64_t sub_25418F978()
{
  result = qword_27F5B9798;
  if (!qword_27F5B9798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9798);
  }

  return result;
}

unint64_t sub_25418FA00()
{
  result = qword_27F5B97B0;
  if (!qword_27F5B97B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B97B0);
  }

  return result;
}

unint64_t sub_25418FA88()
{
  result = qword_27F5B97C8;
  if (!qword_27F5B97C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B97C8);
  }

  return result;
}

unint64_t sub_25418FB10()
{
  result = qword_27F5B97E0;
  if (!qword_27F5B97E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B97E0);
  }

  return result;
}

unint64_t sub_25418FC10()
{
  result = qword_27F5B9810;
  if (!qword_27F5B9810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9810);
  }

  return result;
}

uint64_t sub_25418FC94(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_25418FCE8(void *a1)
{
  a1[1] = sub_25418E354(&qword_27F5B9830, type metadata accessor for ThermostatAutomationEvent, &protocol conformance descriptor for ThermostatAutomationEvent);
  a1[2] = sub_25418E354(&qword_27F5B9838, type metadata accessor for ThermostatAutomationEvent, &protocol conformance descriptor for ThermostatAutomationEvent);
  result = sub_25418E354(&qword_27F5B9840, type metadata accessor for ThermostatAutomationEvent, &protocol conformance descriptor for ThermostatAutomationEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25418FDDC(void *a1)
{
  a1[1] = sub_25418E354(&qword_27F5B9850, type metadata accessor for ThermostatAutomationEvent, &protocol conformance descriptor for ThermostatAutomationEvent);
  a1[2] = sub_25418E354(&qword_27F5B9858, type metadata accessor for ThermostatAutomationEvent, &unk_254255238);
  result = sub_25418E354(&qword_27F5B9860, type metadata accessor for ThermostatAutomationEvent, &protocol conformance descriptor for ThermostatAutomationEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_25418FF18(void *a1)
{
  a1[1] = sub_25418E354(&qword_27F5B9720, type metadata accessor for ThermostatAutomationEvent.State, &protocol conformance descriptor for ThermostatAutomationEvent.State);
  a1[2] = sub_25418E354(&qword_27F5B9728, type metadata accessor for ThermostatAutomationEvent.State, &protocol conformance descriptor for ThermostatAutomationEvent.State);
  result = sub_25418E354(&qword_27F5B9870, type metadata accessor for ThermostatAutomationEvent.State, &protocol conformance descriptor for ThermostatAutomationEvent.State);
  a1[3] = result;
  return result;
}

uint64_t sub_25419000C(uint64_t a1)
{
  result = sub_25418E354(&qword_27F5B9868, type metadata accessor for ThermostatAutomationEvent.State, &protocol conformance descriptor for ThermostatAutomationEvent.State);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_25419008C(uint64_t a1)
{
  result = type metadata accessor for AccessoryEventBase(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for ThermostatAutomationEvent.State(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2541901A8(uint64_t a1)
{
  result = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_254190258(uint64_t a1)
{
  v1 = type metadata accessor for ThermostatAutomationEvent.ThermostatAutomationTrigger.OccupancyDetails.RoomDetails(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_2541902F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  result = a4(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_memcpy9_4(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ThermostatAutomationEvent.ThermostatAutomationResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ThermostatAutomationEvent.ThermostatAutomationResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
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

uint64_t sub_25419044C(uint64_t a1)
{
  if (*(a1 + 8) <= 2u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 3);
  }
}

uint64_t sub_254190464(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

unint64_t sub_254190640()
{
  result = qword_27F5B98D0;
  if (!qword_27F5B98D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B98D0);
  }

  return result;
}

unint64_t sub_254190698()
{
  result = qword_27F5B98D8;
  if (!qword_27F5B98D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B98D8);
  }

  return result;
}

unint64_t sub_2541906F0()
{
  result = qword_27F5B98E0;
  if (!qword_27F5B98E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B98E0);
  }

  return result;
}

unint64_t sub_254190748()
{
  result = qword_27F5B98E8;
  if (!qword_27F5B98E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B98E8);
  }

  return result;
}

unint64_t sub_2541907A0()
{
  result = qword_27F5B98F0;
  if (!qword_27F5B98F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B98F0);
  }

  return result;
}

unint64_t sub_2541907F8()
{
  result = qword_27F5B98F8;
  if (!qword_27F5B98F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B98F8);
  }

  return result;
}

unint64_t sub_254190850()
{
  result = qword_27F5B9900;
  if (!qword_27F5B9900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9900);
  }

  return result;
}

unint64_t sub_2541908A8()
{
  result = qword_27F5B9908;
  if (!qword_27F5B9908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9908);
  }

  return result;
}

unint64_t sub_254190900()
{
  result = qword_27F5B9910;
  if (!qword_27F5B9910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9910);
  }

  return result;
}

unint64_t sub_254190958()
{
  result = qword_27F5B9918;
  if (!qword_27F5B9918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9918);
  }

  return result;
}

unint64_t sub_2541909B0()
{
  result = qword_27F5B9920;
  if (!qword_27F5B9920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9920);
  }

  return result;
}

unint64_t sub_254190A08()
{
  result = qword_27F5B9928;
  if (!qword_27F5B9928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9928);
  }

  return result;
}

unint64_t sub_254190A60()
{
  result = qword_27F5B9930;
  if (!qword_27F5B9930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9930);
  }

  return result;
}

unint64_t sub_254190AB8()
{
  result = qword_27F5B9938;
  if (!qword_27F5B9938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9938);
  }

  return result;
}

unint64_t sub_254190B10()
{
  result = qword_27F5B9940;
  if (!qword_27F5B9940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9940);
  }

  return result;
}

unint64_t sub_254190B68()
{
  result = qword_27F5B9948;
  if (!qword_27F5B9948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9948);
  }

  return result;
}

unint64_t sub_254190BC0()
{
  result = qword_27F5B9950;
  if (!qword_27F5B9950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9950);
  }

  return result;
}

unint64_t sub_254190C18()
{
  result = qword_27F5B9958;
  if (!qword_27F5B9958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9958);
  }

  return result;
}

unint64_t sub_254190C70()
{
  result = qword_27F5B9960;
  if (!qword_27F5B9960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9960);
  }

  return result;
}

unint64_t sub_254190CC8()
{
  result = qword_27F5B9968;
  if (!qword_27F5B9968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9968);
  }

  return result;
}

unint64_t sub_254190D20()
{
  result = qword_27F5B9970;
  if (!qword_27F5B9970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9970);
  }

  return result;
}

unint64_t sub_254190D78()
{
  result = qword_27F5B9978;
  if (!qword_27F5B9978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9978);
  }

  return result;
}

unint64_t sub_254190DD0()
{
  result = qword_27F5B9980;
  if (!qword_27F5B9980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9980);
  }

  return result;
}

unint64_t sub_254190E28()
{
  result = qword_27F5B9988;
  if (!qword_27F5B9988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9988);
  }

  return result;
}

unint64_t sub_254190E80()
{
  result = qword_27F5B9990;
  if (!qword_27F5B9990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9990);
  }

  return result;
}

unint64_t sub_254190ED8()
{
  result = qword_27F5B9998;
  if (!qword_27F5B9998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9998);
  }

  return result;
}

unint64_t sub_254190F30()
{
  result = qword_27F5B99A0;
  if (!qword_27F5B99A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99A0);
  }

  return result;
}

unint64_t sub_254190F88()
{
  result = qword_27F5B99A8;
  if (!qword_27F5B99A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99A8);
  }

  return result;
}

unint64_t sub_254190FE0()
{
  result = qword_27F5B99B0;
  if (!qword_27F5B99B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99B0);
  }

  return result;
}

unint64_t sub_254191038()
{
  result = qword_27F5B99B8;
  if (!qword_27F5B99B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99B8);
  }

  return result;
}

unint64_t sub_254191090()
{
  result = qword_27F5B99C0;
  if (!qword_27F5B99C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99C0);
  }

  return result;
}

unint64_t sub_2541910E8()
{
  result = qword_27F5B99C8;
  if (!qword_27F5B99C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99C8);
  }

  return result;
}

unint64_t sub_254191140()
{
  result = qword_27F5B99D0;
  if (!qword_27F5B99D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99D0);
  }

  return result;
}

unint64_t sub_254191198()
{
  result = qword_27F5B99D8;
  if (!qword_27F5B99D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99D8);
  }

  return result;
}

unint64_t sub_2541911F0()
{
  result = qword_27F5B99E0;
  if (!qword_27F5B99E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99E0);
  }

  return result;
}

unint64_t sub_254191248()
{
  result = qword_27F5B99E8;
  if (!qword_27F5B99E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99E8);
  }

  return result;
}

unint64_t sub_2541912A0()
{
  result = qword_27F5B99F0;
  if (!qword_27F5B99F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99F0);
  }

  return result;
}

unint64_t sub_2541912F8()
{
  result = qword_27F5B99F8;
  if (!qword_27F5B99F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B99F8);
  }

  return result;
}

unint64_t sub_254191350()
{
  result = qword_27F5B9A00;
  if (!qword_27F5B9A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A00);
  }

  return result;
}

unint64_t sub_2541913A8()
{
  result = qword_27F5B9A08;
  if (!qword_27F5B9A08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A08);
  }

  return result;
}

unint64_t sub_254191400()
{
  result = qword_27F5B9A10;
  if (!qword_27F5B9A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A10);
  }

  return result;
}

unint64_t sub_254191458()
{
  result = qword_27F5B9A18;
  if (!qword_27F5B9A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A18);
  }

  return result;
}

unint64_t sub_2541914B0()
{
  result = qword_27F5B9A20;
  if (!qword_27F5B9A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A20);
  }

  return result;
}

unint64_t sub_254191508()
{
  result = qword_27F5B9A28;
  if (!qword_27F5B9A28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A28);
  }

  return result;
}

unint64_t sub_254191560()
{
  result = qword_27F5B9A30;
  if (!qword_27F5B9A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A30);
  }

  return result;
}

unint64_t sub_2541915B8()
{
  result = qword_27F5B9A38;
  if (!qword_27F5B9A38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A38);
  }

  return result;
}

unint64_t sub_254191610()
{
  result = qword_27F5B9A40;
  if (!qword_27F5B9A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A40);
  }

  return result;
}

unint64_t sub_254191668()
{
  result = qword_27F5B9A48;
  if (!qword_27F5B9A48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A48);
  }

  return result;
}

unint64_t sub_2541916C0()
{
  result = qword_27F5B9A50;
  if (!qword_27F5B9A50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A50);
  }

  return result;
}

unint64_t sub_254191718()
{
  result = qword_27F5B9A58;
  if (!qword_27F5B9A58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A58);
  }

  return result;
}

unint64_t sub_254191770()
{
  result = qword_27F5B9A60;
  if (!qword_27F5B9A60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A60);
  }

  return result;
}

unint64_t sub_2541917C8()
{
  result = qword_27F5B9A68;
  if (!qword_27F5B9A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A68);
  }

  return result;
}

unint64_t sub_254191820()
{
  result = qword_27F5B9A70;
  if (!qword_27F5B9A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A70);
  }

  return result;
}

unint64_t sub_254191878()
{
  result = qword_27F5B9A78;
  if (!qword_27F5B9A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A78);
  }

  return result;
}

unint64_t sub_2541918D0()
{
  result = qword_27F5B9A80;
  if (!qword_27F5B9A80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A80);
  }

  return result;
}

unint64_t sub_254191928()
{
  result = qword_27F5B9A88;
  if (!qword_27F5B9A88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A88);
  }

  return result;
}

unint64_t sub_254191980()
{
  result = qword_27F5B9A90;
  if (!qword_27F5B9A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A90);
  }

  return result;
}

unint64_t sub_2541919D8()
{
  result = qword_27F5B9A98;
  if (!qword_27F5B9A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9A98);
  }

  return result;
}

unint64_t sub_254191A30()
{
  result = qword_27F5B9AA0;
  if (!qword_27F5B9AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AA0);
  }

  return result;
}

unint64_t sub_254191A88()
{
  result = qword_27F5B9AA8;
  if (!qword_27F5B9AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AA8);
  }

  return result;
}

unint64_t sub_254191AE0()
{
  result = qword_27F5B9AB0;
  if (!qword_27F5B9AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AB0);
  }

  return result;
}

unint64_t sub_254191B38()
{
  result = qword_27F5B9AB8;
  if (!qword_27F5B9AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AB8);
  }

  return result;
}

unint64_t sub_254191B90()
{
  result = qword_27F5B9AC0;
  if (!qword_27F5B9AC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AC0);
  }

  return result;
}

unint64_t sub_254191BE8()
{
  result = qword_27F5B9AC8;
  if (!qword_27F5B9AC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AC8);
  }

  return result;
}

unint64_t sub_254191C40()
{
  result = qword_27F5B9AD0;
  if (!qword_27F5B9AD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AD0);
  }

  return result;
}

unint64_t sub_254191C98()
{
  result = qword_27F5B9AD8;
  if (!qword_27F5B9AD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AD8);
  }

  return result;
}

unint64_t sub_254191CF0()
{
  result = qword_27F5B9AE0;
  if (!qword_27F5B9AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AE0);
  }

  return result;
}

unint64_t sub_254191D48()
{
  result = qword_27F5B9AE8;
  if (!qword_27F5B9AE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AE8);
  }

  return result;
}

unint64_t sub_254191DA0()
{
  result = qword_27F5B9AF0;
  if (!qword_27F5B9AF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AF0);
  }

  return result;
}

unint64_t sub_254191DF8()
{
  result = qword_27F5B9AF8;
  if (!qword_27F5B9AF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9AF8);
  }

  return result;
}

unint64_t sub_254191E50()
{
  result = qword_27F5B9B00;
  if (!qword_27F5B9B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9B00);
  }

  return result;
}

unint64_t sub_254191EA8()
{
  result = qword_27F5B9B08;
  if (!qword_27F5B9B08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9B08);
  }

  return result;
}

unint64_t sub_254191F00()
{
  result = qword_27F5B9B10;
  if (!qword_27F5B9B10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9B10);
  }

  return result;
}

uint64_t sub_254191F54(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646569707563636FLL && a2 == 0xE800000000000000;
  if (v4 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x69707563636F6E75 && a2 == 0xEA00000000006465 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7065656C73 && a2 == 0xE500000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636176 && a2 == 0xE800000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 1684828008 && a2 == 0xE400000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002542507A0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_25424EAB8();

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

uint64_t sub_25419215C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 6710895 && a2 == 0xE300000000000000;
  if (v3 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65676E6172 && a2 == 0xE500000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F546C6F6F63 && a2 == 0xE600000000000000 || (sub_25424EAB8() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6F5474616568 && a2 == 0xE600000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_25424EAB8();

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

uint64_t sub_2541922E4(uint64_t result)
{
  if ((result & 0x8000000000000000) == 0)
  {
    v1 = result;
    v2 = MEMORY[0x277D84F90];
    if (!result)
    {
LABEL_13:
      v13 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B58, &qword_254257090);
      sub_2541924BC();
      return sub_25424DE68();
    }

    v13 = MEMORY[0x277D84F90];
    result = sub_254148238(0, result, 0);
    v3 = 0;
    v2 = v13;
    while (("celsiusCoolingSetpoint" & 0x2F00000000000000) != 0x2000000000000000)
    {
      result = sub_25424DD98();
      if (result < 0)
      {
        goto LABEL_15;
      }

      v4 = result;
      if (!result)
      {
        goto LABEL_16;
      }

      v12 = 0;
      MEMORY[0x259C07350](&v12, 8);
      if (v4 > v12 * v4)
      {
        v5 = -v4 % v4;
        while (v5 > v12 * v4)
        {
          v12 = 0;
          MEMORY[0x259C07350](&v12, 8);
        }
      }

      sub_25424DDC8();
      result = sub_25424DE58();
      v13 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = result;
        v11 = v6;
        sub_254148238((v7 > 1), v8 + 1, 1);
        v6 = v11;
        result = v10;
        v2 = v13;
      }

      ++v3;
      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = result;
      *(v9 + 40) = v6;
      if (v3 == v1)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_2541924BC()
{
  result = qword_27F5B9B60;
  if (!qword_27F5B9B60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B9B58, &qword_254257090);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9B60);
  }

  return result;
}

void sub_254192568()
{
  if (!qword_27F5B9B78)
  {
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5B9B78);
    }
  }
}

uint64_t sub_254192620(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9BA0, &qword_254257220);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541943B4();
  sub_25424EC78();
  v11[15] = 0;
  sub_25424D8B8();
  sub_25419434C(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_25424EA18();
  if (!v2)
  {
    v9 = type metadata accessor for EventBase.DocumentLayout(0);
    v11[14] = 1;
    sub_25424D948();
    sub_25419434C(&qword_27F5B89D8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_25424EA18();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_2541406B4();
    sub_25424EA18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_254192868@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_25424D8B8();
  v23 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v27 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9B90, &qword_254257218);
  v24 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = &v20 - v9;
  v11 = type metadata accessor for EventBase.DocumentLayout(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2541943B4();
  sub_25424EC68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v21 = a1;
  v14 = v13;
  v15 = v26;
  v17 = v24;
  v16 = v25;
  v33 = 0;
  sub_25419434C(&qword_27F5B8CA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_25424E978();
  (*(v23 + 32))(v14, v27, v29);
  v32 = 1;
  sub_25419434C(&qword_27F5B89F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_25424E978();
  (*(v15 + 32))(v14 + *(v20 + 20), v7, v16);
  v30 = 2;
  sub_2541407C8();
  sub_25424E978();
  v18 = v21;
  (*(v17 + 8))(v10, v28);
  *(v14 + *(v20 + 24)) = v31;
  sub_2541944DC(v14, v22, type metadata accessor for EventBase.DocumentLayout);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_254194428(v14, type metadata accessor for EventBase.DocumentLayout);
}

uint64_t sub_254192D40(char *a1, char *a2)
{
  if (qword_254257550[*a1] == qword_254257550[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = sub_25424EAB8();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

uint64_t sub_254192DA8()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254192E04(uint64_t a1)
{
  sub_25424DD88();
}

uint64_t sub_254192E44(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

unint64_t sub_254192E9C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_254194B2C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_254192F00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254194B2C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254192F28(uint64_t a1)
{
  v2 = sub_2541943B4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254192F64(uint64_t a1)
{
  v2 = sub_2541943B4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254192FD0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v32 - v6;
  v8 = sub_25424E848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v32 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EventBase.DocumentLayout(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v39);
  sub_254192868(v39, v14);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v12;
  v35 = 0;
  v40 = a2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_25424EC58();
  sub_25424E838();
  result = (*(v9 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    if (*(v16 + 16) && (v17 = sub_2542208F8(v11), (v18 & 1) != 0))
    {
      sub_25414076C(*(v16 + 56) + 32 * v17, v39);
      (*(v9 + 8))(v11, v8);

      v19 = swift_dynamicCast();
      if (v19)
      {
        v20 = v36[0];
      }

      else
      {
        v20 = 15;
      }

      if (v19)
      {
        v21 = v37;
      }

      else
      {
        v21 = 0;
      }

      v33 = v21;
      if (v19)
      {
        v22 = v38;
      }

      else
      {
        v22 = 0;
      }
    }

    else
    {

      (*(v9 + 8))(v11, v8);
      v33 = 0;
      v22 = 0;
      v20 = 15;
    }

    v23 = sub_25424D8B8();
    v24 = v40;
    (*(*(v23 - 8) + 16))(v40, v14, v23);
    v25 = v34;
    v26 = *(v34 + 20);
    v27 = type metadata accessor for EventBase(0);
    v28 = v27[5];
    v29 = sub_25424D948();
    (*(*(v29 - 8) + 16))(v24 + v28, &v14[v26], v29);
    LOBYTE(v26) = v14[*(v25 + 24)];
    sub_254194428(v14, type metadata accessor for EventBase.DocumentLayout);
    *(v24 + v27[6]) = v26;
    v30 = (v24 + v27[7]);
    v31 = v33;
    *v30 = v20;
    v30[1] = v31;
    v30[2] = v22;
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return result;
}

uint64_t sub_2541933F0(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9BB8, &qword_254257230);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254194488();
  sub_25424EC78();
  v11[15] = 0;
  sub_25424D8B8();
  sub_25419434C(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_25424EA18();
  if (!v2)
  {
    v9 = type metadata accessor for EventBaseLegacy.DocumentLayout(0);
    v11[14] = 1;
    sub_25424D948();
    sub_25419434C(&qword_27F5B89D8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_25424EA18();
    v11[13] = *(v3 + *(v9 + 24));
    v11[12] = 2;
    sub_2541406B4();
    sub_25424EA18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_254193638@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  v25 = v4;
  v26 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_25424D8B8();
  v23 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v27 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9BA8, &qword_254257228);
  v24 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v10 = &v20 - v9;
  v11 = type metadata accessor for EventBaseLegacy.DocumentLayout(0);
  MEMORY[0x28223BE20](v11);
  v13 = &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254194488();
  sub_25424EC68();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v20 = v11;
  v21 = a1;
  v14 = v13;
  v15 = v26;
  v17 = v24;
  v16 = v25;
  v33 = 0;
  sub_25419434C(&qword_27F5B8CA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_25424E978();
  (*(v23 + 32))(v14, v27, v29);
  v32 = 1;
  sub_25419434C(&qword_27F5B89F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_25424E978();
  (*(v15 + 32))(v14 + *(v20 + 20), v7, v16);
  v30 = 2;
  sub_2541407C8();
  sub_25424E978();
  v18 = v21;
  (*(v17 + 8))(v10, v28);
  *(v14 + *(v20 + 24)) = v31;
  sub_2541944DC(v14, v22, type metadata accessor for EventBaseLegacy.DocumentLayout);
  __swift_destroy_boxed_opaque_existential_1(v18);
  return sub_254194428(v14, type metadata accessor for EventBaseLegacy.DocumentLayout);
}

uint64_t sub_254193B10()
{
  v1 = 0x6E656449656D6F68;
  if (*v0 != 1)
  {
    v1 = 0x79726F6765746163;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1702125924;
  }
}

uint64_t sub_254193B70@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_254194B78(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_254193B98(uint64_t a1)
{
  v2 = sub_254194488();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254193BD4(uint64_t a1)
{
  v2 = sub_254194488();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_254193C40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8C98, &qword_254253CF0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v34 - v6;
  v8 = sub_25424E848();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for EventBaseLegacy.DocumentLayout(0);
  MEMORY[0x28223BE20](v12);
  v14 = &v34 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v41);
  sub_254193638(v41, v14);
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v42 = v9;
  v15 = *(v12 + 24);
  if (!sub_2541DA534(v14[v15], &unk_2866331D8))
  {
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    v41[0] = 0;
    v41[1] = 0xE000000000000000;
    sub_25424E688();
    MEMORY[0x259C05CA0](0xD000000000000012, 0x80000002542503A0);
    MEMORY[0x259C05CA0](0x736142746E657645, 0xEF79636167654C65);
    MEMORY[0x259C05CA0](0xD000000000000017, 0x8000000254250840);
    v38[0] = v14[v15];
    sub_25424E7D8();
    sub_25424E6F8();
    swift_allocError();
    static DecodingError.dataCorruptedError<A>(_:_:)(v26);

    swift_willThrow();
    sub_254194428(v14, type metadata accessor for EventBaseLegacy.DocumentLayout);
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = 0;
  v35 = v15;
  v16 = a1[3];
  v36 = a2;
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = sub_25424EC58();
  sub_25424E838();
  v18 = v42;
  result = (*(v42 + 48))(v7, 1, v8);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    (*(v18 + 32))(v11, v7, v8);
    if (*(v17 + 16) && (v20 = sub_2542208F8(v11), (v21 & 1) != 0))
    {
      sub_25414076C(*(v17 + 56) + 32 * v20, v41);
      (*(v18 + 8))(v11, v8);

      v22 = swift_dynamicCast();
      if (v22)
      {
        v23 = v38[0];
      }

      else
      {
        v23 = 15;
      }

      if (v22)
      {
        v24 = v39;
      }

      else
      {
        v24 = 0;
      }

      if (v22)
      {
        v25 = v40;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {

      (*(v18 + 8))(v11, v8);
      v24 = 0;
      v25 = 0;
      v23 = 15;
    }

    v27 = sub_25424D8B8();
    v28 = v36;
    (*(*(v27 - 8) + 16))(v36, v14, v27);
    v29 = *(v12 + 20);
    v30 = type metadata accessor for EventBaseLegacy(0);
    v31 = v30[5];
    v32 = sub_25424D948();
    (*(*(v32 - 8) + 16))(v28 + v31, &v14[v29], v32);
    LOBYTE(v29) = v14[v35];
    sub_254194428(v14, type metadata accessor for EventBaseLegacy.DocumentLayout);
    *(v28 + v30[6]) = v29;
    v33 = (v28 + v30[7]);
    *v33 = v23;
    v33[1] = v24;
    v33[2] = v25;
    return __swift_destroy_boxed_opaque_existential_1(v37);
  }

  return result;
}

uint64_t sub_2541941AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), void (*a5)(uint64_t), uint64_t (*a6)(void))
{
  v21 = a6;
  v9 = v6;
  v11 = (a4)(0, a2, a3);
  v12 = v11 - 8;
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - v13;
  v15 = sub_25424D8B8();
  (*(*(v15 - 8) + 16))(v14, v9, v15);
  v16 = *(a2 + 20);
  v17 = *(v12 + 28);
  v18 = sub_25424D948();
  (*(*(v18 - 8) + 16))(&v14[v17], v9 + v16, v18);
  v14[*(v12 + 32)] = *(v9 + *(a2 + 24));
  a5(a1);
  return sub_254194428(v14, v21);
}

uint64_t sub_25419434C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2541943B4()
{
  result = qword_27F5B9B98;
  if (!qword_27F5B9B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9B98);
  }

  return result;
}

uint64_t sub_254194428(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_254194488()
{
  result = qword_27F5B9BB0;
  if (!qword_27F5B9BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9BB0);
  }

  return result;
}

uint64_t sub_2541944DC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_2541945B4(uint64_t a1)
{
  result = sub_25424D8B8();
  if (v2 <= 0x3F)
  {
    result = sub_25424D948();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_25424D8B8();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = sub_25424D948();
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 7)
      {
        return v14 - 6;
      }

      else
      {
        return 0;
      }
    }

    v8 = v11;
    v9 = *(v12 + 48);
    v10 = a1 + *(a3 + 20);
  }

  return v9(v10, a2, v8);
}

uint64_t __swift_store_extra_inhabitant_indexTm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_25424D8B8();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = sub_25424D948();
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 6;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

void sub_254194878(uint64_t a1)
{
  sub_25424D8B8();
  if (v1 <= 0x3F)
  {
    sub_25424D948();
    if (v2 <= 0x3F)
    {
      sub_254192568();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_254194920()
{
  result = qword_27F5B9BF0;
  if (!qword_27F5B9BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9BF0);
  }

  return result;
}

unint64_t sub_254194978()
{
  result = qword_27F5B9BF8;
  if (!qword_27F5B9BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9BF8);
  }

  return result;
}

unint64_t sub_2541949D0()
{
  result = qword_27F5B9C00;
  if (!qword_27F5B9C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C00);
  }

  return result;
}

unint64_t sub_254194A28()
{
  result = qword_27F5B9C08;
  if (!qword_27F5B9C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C08);
  }

  return result;
}

unint64_t sub_254194A80()
{
  result = qword_27F5B9C10;
  if (!qword_27F5B9C10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C10);
  }

  return result;
}

unint64_t sub_254194AD8()
{
  result = qword_27F5B9C18;
  if (!qword_27F5B9C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C18);
  }

  return result;
}

unint64_t sub_254194B2C(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_254194B78(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1702125924 && a2 == 0xE400000000000000;
  if (v3 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E656449656D6F68 && a2 == 0xEE00726569666974 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_25424EAB8();

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

HomeKitEvents::HomeActivityState_optional __swiftcall HomeActivityState.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 8;
  if (rawValue < 8)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t HomeActivityStateEvent.State.init(activityState:isActivityStateHoldActive:activityStateHoldEndDate:)@<X0>(_BYTE *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, _BYTE *a4@<X8>)
{
  *a4 = *a1;
  a4[1] = a2;
  v6 = type metadata accessor for HomeActivityStateEvent.State(0);
  return sub_25417E6C8(a3, &a4[*(v6 + 24)], &unk_27F5BA1B0, qword_2542544A0);
}

unint64_t static HomeActivityStateEvent.State.randomState.getter@<X0>(_BYTE *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  v13 = 0;
  MEMORY[0x259C07350](&v13, 8);
  v5 = v13;
  if ((v13 & 0x20000) != 0)
  {
    v6 = 1;
  }

  else
  {
    sub_25424D858();
    v6 = 0;
  }

  v7 = sub_25424D8B8();
  (*(*(v7 - 8) + 56))(v4, v6, 1, v7);
  result = sub_25418E184(8uLL);
  if (result > 7)
  {
    __break(1u);
  }

  else
  {
    v9 = (*&v5 & 0x20000) == 0;
    v10 = byte_286633200[result + 32];
    v11 = type metadata accessor for HomeActivityStateEvent.State(0);
    result = sub_25417E6C8(v4, &a1[*(v11 + 24)], &unk_27F5BA1B0, qword_2542544A0);
    *a1 = v10;
    a1[1] = v9;
  }

  return result;
}

unint64_t sub_254194FAC()
{
  v1 = 0xD000000000000019;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000018;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7974697669746361;
  }
}

uint64_t sub_254195020@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_25419890C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_254195048(uint64_t a1)
{
  v2 = sub_254197EB0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254195084(uint64_t a1)
{
  v2 = sub_254197EB0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeActivityStateEvent.State.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9C20, &qword_2542575A8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254197EB0();
  sub_25424EC78();
  v10[15] = *v3;
  v10[14] = 0;
  sub_254197F04();
  sub_25424EA18();
  if (!v2)
  {
    v10[13] = 1;
    sub_25424E9B8();
    type metadata accessor for HomeActivityStateEvent.State(0);
    v10[12] = 2;
    sub_25424D8B8();
    sub_254197F58(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    sub_25424E9C8();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t HomeActivityStateEvent.State.hash(into:)(uint64_t a1)
{
  v2 = sub_25424D8B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v11 - v7;
  MEMORY[0x259C06AA0](*v1);
  if (v1[1] != 2)
  {
    sub_25424EBF8();
  }

  sub_25424EBF8();
  v9 = type metadata accessor for HomeActivityStateEvent.State(0);
  sub_254132DF4(&v1[*(v9 + 24)], v8, &unk_27F5BA1B0, qword_2542544A0);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    return sub_25424EBF8();
  }

  (*(v3 + 32))(v5, v8, v2);
  sub_25424EBF8();
  sub_254197F58(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  return (*(v3 + 8))(v5, v2);
}

uint64_t HomeActivityStateEvent.State.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9C38, &unk_2542575B0);
  v7 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v9 = &v18 - v8;
  v10 = type metadata accessor for HomeActivityStateEvent.State(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_254197EB0();
  sub_25424EC68();
  if (!v2)
  {
    v14 = v6;
    v24 = 0;
    sub_254197FA0();
    sub_25424E978();
    *v12 = v25;
    v23 = 1;
    v15 = v7;
    v12[1] = sub_25424E918();
    sub_25424D8B8();
    v22 = 2;
    sub_254197F58(&qword_27F5B8CA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
    v16 = v20;
    sub_25424E928();
    (*(v15 + 8))(v9, v16);
    sub_25417E6C8(v14, &v12[*(v10 + 24)], &unk_27F5BA1B0, qword_2542544A0);
    sub_254197FF4(v12, v19);
  }

  return __swift_destroy_boxed_opaque_existential_1(v21);
}

uint64_t HomeActivityStateEvent.date.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_25424D8B8();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t HomeActivityStateEvent.homeIdentifier.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventBase(0) + 20);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t HomeActivityStateEvent.category.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for EventBase(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t HomeActivityStateEvent.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v3 = sub_25424D948();
  v26 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v24 = v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v5 - 8);
  v25 = v22 - v6;
  v7 = sub_25424D8B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v23 = v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v22 - v11;
  v22[0] = sub_254197F58(&qword_27F5B89C0, MEMORY[0x277CC9578], MEMORY[0x277CC9588]);
  sub_25424DC28();
  v13 = type metadata accessor for EventBase(0);
  v22[1] = sub_254197F58(&qword_27F5B89A8, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  sub_25424DC28();
  MEMORY[0x259C06AA0](qword_254257C80[*(v1 + *(v13 + 24))]);
  v14 = type metadata accessor for HomeActivityStateEvent(0);
  v15 = (v1 + *(v14 + 20));
  MEMORY[0x259C06AA0](*v15);
  if (v15[1] != 2)
  {
    sub_25424EBF8();
  }

  sub_25424EBF8();
  v16 = type metadata accessor for HomeActivityStateEvent.State(0);
  sub_254132DF4(&v15[*(v16 + 24)], v12, &unk_27F5BA1B0, qword_2542544A0);
  if ((*(v8 + 48))(v12, 1, v7) == 1)
  {
    sub_25424EBF8();
  }

  else
  {
    v17 = v23;
    (*(v8 + 32))(v23, v12, v7);
    sub_25424EBF8();
    sub_25424DC28();
    (*(v8 + 8))(v17, v7);
  }

  v18 = v25;
  sub_254132DF4(v2 + *(v14 + 24), v25, &unk_27F5B8E50, &qword_254254390);
  v19 = v26;
  if ((*(v26 + 48))(v18, 1, v3) == 1)
  {
    return sub_25424EBF8();
  }

  v21 = v24;
  (*(v19 + 32))(v24, v18, v3);
  sub_25424EBF8();
  sub_25424DC28();
  return (*(v19 + 8))(v21, v3);
}

uint64_t sub_254195F10(uint64_t (*a1)(void *))
{
  sub_25424EBD8();
  a1(v3);
  return sub_25424EC28();
}

uint64_t sub_254195F58@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for EventBase(0) + 20);
  v4 = sub_25424D948();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_254195FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void *))
{
  sub_25424EBD8();
  a3(v5);
  return sub_25424EC28();
}

uint64_t sub_254196050(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *))
{
  sub_25424EBD8();
  a4(v6);
  return sub_25424EC28();
}

uint64_t HomeActivityStateEvent.State.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  MEMORY[0x28223BE20](v1);
  v3 = &v9 - v2;
  v11 = 0;
  v12 = 0xE000000000000000;
  sub_25424E688();
  MEMORY[0x259C05CA0](0xD000000000000010, 0x8000000254250860);
  v10 = *v0;
  v4 = sub_25424DD08();
  MEMORY[0x259C05CA0](v4);

  MEMORY[0x259C05CA0](0x41646C6F48736920, 0xEF203A6576697463);
  v10 = v0[1];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9C48, &qword_2542575C0);
  v5 = sub_25424DD08();
  MEMORY[0x259C05CA0](v5);

  MEMORY[0x259C05CA0](0x646E45646C6F6820, 0xEE00203A65746144);
  v6 = type metadata accessor for HomeActivityStateEvent.State(0);
  sub_254132DF4(&v0[*(v6 + 24)], v3, &unk_27F5BA1B0, qword_2542544A0);
  v7 = sub_25424DD08();
  MEMORY[0x259C05CA0](v7);

  MEMORY[0x259C05CA0](41, 0xE100000000000000);
  return v11;
}

uint64_t HomeActivityStateEvent.init(date:homeIdentifier:state:userIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25424D8B8();
  (*(*(v10 - 8) + 32))(a5, a1, v10);
  v11 = type metadata accessor for EventBase(0);
  v12 = v11[5];
  v13 = sub_25424D948();
  (*(*(v13 - 8) + 32))(a5 + v12, a2, v13);
  *(a5 + v11[6]) = 4;
  v14 = (a5 + v11[7]);
  *v14 = 15;
  v15 = type metadata accessor for HomeActivityStateEvent(0);
  v14[1] = 0;
  v14[2] = 0;
  sub_254197FF4(a3, a5 + *(v15 + 20));
  return sub_25417E6C8(a4, a5 + *(v15 + 24), &unk_27F5B8E50, &qword_254254390);
}

uint64_t sub_254196388(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9D00, &qword_254257AF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254198A90();
  sub_25424EC78();
  v17 = 0;
  sub_25424D8B8();
  sub_254197F58(&qword_27F5B8C78, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
  sub_25424EA18();
  if (!v2)
  {
    v9 = type metadata accessor for HomeActivityStateEvent.DocumentLayout(0);
    v16 = 1;
    sub_25424D948();
    sub_254197F58(&qword_27F5B89D8, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    sub_25424EA18();
    v15 = *(v3 + *(v9 + 24));
    v14 = 2;
    sub_2541406B4();
    sub_25424EA18();
    v13 = 3;
    sub_25424E9C8();
    v12 = 4;
    type metadata accessor for HomeActivityStateEvent.State(0);
    sub_254197F58(&qword_27F5B9D10, type metadata accessor for HomeActivityStateEvent.State, &protocol conformance descriptor for HomeActivityStateEvent.State);
    sub_25424EA18();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_254196680@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v30 = type metadata accessor for HomeActivityStateEvent.State(0);
  MEMORY[0x28223BE20](v30);
  v31 = v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v4 - 8);
  v32 = v28 - v5;
  v33 = sub_25424D948();
  v35 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v7 = v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25424D8B8();
  v36 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v37 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9D18, &qword_254257AF8);
  v34 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v11 = v28 - v10;
  v12 = type metadata accessor for HomeActivityStateEvent.DocumentLayout(0);
  MEMORY[0x28223BE20](v12);
  v14 = v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_254198A90();
  v38 = v11;
  v15 = v40;
  sub_25424EC68();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v40 = a1;
  v16 = v35;
  v17 = v36;
  v18 = v33;
  v46 = 0;
  sub_254197F58(&qword_27F5B8CA8, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  sub_25424E978();
  v19 = *(v17 + 32);
  v20 = v14;
  v21 = v37;
  v37 = v8;
  v19(v14, v21, v8);
  v45 = 1;
  sub_254197F58(&qword_27F5B89F0, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
  sub_25424E978();
  v22 = v12;
  (*(v16 + 32))(v20 + *(v12 + 20), v7, v18);
  v43 = 2;
  sub_2541407C8();
  sub_25424E978();
  v28[1] = 0;
  *(v20 + *(v12 + 24)) = v44;
  v42 = 3;
  v23 = v32;
  sub_25424E928();
  v24 = v40;
  v25 = v34;
  sub_25417E6C8(v23, v20 + *(v22 + 28), &unk_27F5B8E50, &qword_254254390);
  v41 = 4;
  sub_254197F58(&qword_27F5B9D20, type metadata accessor for HomeActivityStateEvent.State, &protocol conformance descriptor for HomeActivityStateEvent.State);
  v26 = v31;
  sub_25424E978();
  (*(v25 + 8))(v38, v39);
  sub_254197FF4(v26, v20 + *(v22 + 32));
  sub_254198AE4(v20, v29, type metadata accessor for HomeActivityStateEvent.DocumentLayout);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return sub_254198098(v20);
}

uint64_t sub_254196D34()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_254196D90(uint64_t a1)
{
  sub_25424DD88();
}

uint64_t sub_254196DD0(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

unint64_t sub_254196E28@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_254198DA4(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_254196E8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_254198DA4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_254196EC0(uint64_t a1)
{
  v2 = sub_254198A90();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_254196EFC(uint64_t a1)
{
  v2 = sub_254198A90();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t HomeActivityStateEvent.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for HomeActivityStateEvent.DocumentLayout(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v19[-1] - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_254140708(a1, v19);
  sub_254196680(v19, v7);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    v9 = sub_25424D8B8();
    (*(*(v9 - 8) + 16))(a2, v7, v9);
    v10 = v5[5];
    v11 = type metadata accessor for EventBase(0);
    v12 = v11[5];
    v13 = sub_25424D948();
    (*(*(v13 - 8) + 16))(a2 + v12, &v7[v10], v13);
    v14 = v5[7];
    v15 = v7[v5[6]];
    v16 = type metadata accessor for HomeActivityStateEvent(0);
    sub_254132DF4(&v7[v14], a2 + *(v16 + 24), &unk_27F5B8E50, &qword_254254390);
    sub_254198AE4(&v7[v5[8]], a2 + *(v16 + 20), type metadata accessor for HomeActivityStateEvent.State);
    result = sub_254198098(v7);
    *(a2 + v11[6]) = v15;
    v17 = (a2 + v11[7]);
    v17[1] = 0;
    v17[2] = 0;
    *v17 = 15;
  }

  return result;
}

uint64_t HomeActivityStateEvent.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeActivityStateEvent.DocumentLayout(0);
  v5 = (v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_25424D8B8();
  (*(*(v8 - 8) + 16))(v7, v2, v8);
  v9 = type metadata accessor for EventBase(0);
  v10 = *(v9 + 20);
  v11 = v5[7];
  v12 = sub_25424D948();
  (*(*(v12 - 8) + 16))(&v7[v11], v2 + v10, v12);
  LOBYTE(v10) = *(v2 + *(v9 + 24));
  v13 = type metadata accessor for HomeActivityStateEvent(0);
  sub_254132DF4(v2 + *(v13 + 24), &v7[v5[9]], &unk_27F5B8E50, &qword_254254390);
  sub_254198AE4(v2 + *(v13 + 20), &v7[v5[10]], type metadata accessor for HomeActivityStateEvent.State);
  v7[v5[8]] = v10;
  sub_254196388(a1);
  return sub_254198098(v7);
}

uint64_t sub_2541972F0(void *a1, uint64_t a2)
{
  v4 = v2;
  v6 = type metadata accessor for HomeActivityStateEvent.DocumentLayout(0);
  v7 = (v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_25424D8B8();
  (*(*(v10 - 8) + 16))(v9, v4, v10);
  v11 = type metadata accessor for EventBase(0);
  v12 = *(v11 + 20);
  v13 = v7[7];
  v14 = sub_25424D948();
  (*(*(v14 - 8) + 16))(&v9[v13], v4 + v12, v14);
  LOBYTE(v11) = *(v4 + *(v11 + 24));
  sub_254132DF4(v4 + *(a2 + 24), &v9[v7[9]], &unk_27F5B8E50, &qword_254254390);
  sub_254198AE4(v4 + *(a2 + 20), &v9[v7[10]], type metadata accessor for HomeActivityStateEvent.State);
  v9[v7[8]] = v11;
  sub_254196388(a1);
  return sub_254198098(v9);
}

uint64_t HomeActivityStateEvent.description.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - v2;
  v14 = 0;
  v15 = 0xE000000000000000;
  sub_25424E688();
  MEMORY[0x259C05CA0](32, 0xE100000000000000);
  v4 = type metadata accessor for HomeActivityStateEvent(0);
  v13 = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9C50, &qword_2542575C8);
  v5 = sub_25424DD08();
  MEMORY[0x259C05CA0](v5);

  MEMORY[0x259C05CA0](0x74617473207B203ALL, 0xEB00000000203A65);
  v6 = HomeActivityStateEvent.State.description.getter();
  MEMORY[0x259C05CA0](v6);

  MEMORY[0x259C05CA0](0x6F6765746163202CLL, 0xEC000000203A7972);
  LOBYTE(v13) = *(v0 + *(type metadata accessor for EventBase(0) + 24));
  v7 = sub_25424DD08();
  MEMORY[0x259C05CA0](v7);

  MEMORY[0x259C05CA0](0x203A65746164202CLL, 0xE800000000000000);
  sub_25424D8B8();
  sub_254197F58(&qword_27F5B9208, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
  v8 = sub_25424EA58();
  MEMORY[0x259C05CA0](v8);

  MEMORY[0x259C05CA0](0x203A656D6F6820, 0xE700000000000000);
  sub_25424D948();
  sub_254197F58(&unk_27F5B90D0, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v9 = sub_25424EA58();
  MEMORY[0x259C05CA0](v9);

  MEMORY[0x259C05CA0](0x203A72657375202CLL, 0xE800000000000000);
  sub_254132DF4(v0 + *(v4 + 24), v3, &unk_27F5B8E50, &qword_254254390);
  v10 = sub_25424DD08();
  MEMORY[0x259C05CA0](v10);

  MEMORY[0x259C05CA0](125, 0xE100000000000000);
  return v14;
}

BOOL _s13HomeKitEvents0A18ActivityStateEventV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_25424D948();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B8E50, &qword_254254390);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v22 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9D28, &qword_254257B00);
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - v12;
  if ((_s13HomeKitEvents38ThermostatReducedEnergyAutomationEventV0defG7TriggerO19ReducePeriodDetailsV2eeoiySbAG_AGtFZ_0() & 1) == 0)
  {
    return 0;
  }

  v14 = type metadata accessor for EventBase(0);
  if ((sub_25424D8F8() & 1) == 0)
  {
    return 0;
  }

  if (qword_254257C80[*(a1 + *(v14 + 24))] != qword_254257C80[*(a2 + *(v14 + 24))])
  {
    return 0;
  }

  v15 = type metadata accessor for HomeActivityStateEvent(0);
  if (!_s13HomeKitEvents0A18ActivityStateEventV0E0V2eeoiySbAE_AEtFZ_0((a1 + *(v15 + 20)), (a2 + *(v15 + 20))))
  {
    return 0;
  }

  v16 = *(v15 + 24);
  v17 = *(v11 + 48);
  sub_254132DF4(a1 + v16, v13, &unk_27F5B8E50, &qword_254254390);
  sub_254132DF4(a2 + v16, &v13[v17], &unk_27F5B8E50, &qword_254254390);
  v18 = *(v5 + 48);
  if (v18(v13, 1, v4) == 1)
  {
    if (v18(&v13[v17], 1, v4) == 1)
    {
      sub_254132E5C(v13, &unk_27F5B8E50, &qword_254254390);
      return 1;
    }

    goto LABEL_10;
  }

  sub_254132DF4(v13, v10, &unk_27F5B8E50, &qword_254254390);
  if (v18(&v13[v17], 1, v4) == 1)
  {
    (*(v5 + 8))(v10, v4);
LABEL_10:
    sub_254132E5C(v13, &qword_27F5B9D28, &qword_254257B00);
    return 0;
  }

  (*(v5 + 32))(v7, &v13[v17], v4);
  sub_254197F58(&qword_27F5B9090, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v20 = sub_25424DC98();
  v21 = *(v5 + 8);
  v21(v7, v4);
  v21(v10, v4);
  sub_254132E5C(v13, &unk_27F5B8E50, &qword_254254390);
  return (v20 & 1) != 0;
}

BOOL _s13HomeKitEvents0A18ActivityStateEventV0E0V2eeoiySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v4 = sub_25424D8B8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B9D30, &qword_254257B08);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v25 - v13;
  if (*a1 != *a2)
  {
    return 0;
  }

  v15 = a1[1];
  v16 = a2[1];
  if (v15 == 2)
  {
    if (v16 != 2)
    {
      return 0;
    }

LABEL_7:
    v18 = v12;
    v19 = *(type metadata accessor for HomeActivityStateEvent.State(0) + 24);
    v20 = *(v18 + 48);
    sub_254132DF4(&a1[v19], v14, &unk_27F5BA1B0, qword_2542544A0);
    sub_254132DF4(&a2[v19], &v14[v20], &unk_27F5BA1B0, qword_2542544A0);
    v21 = *(v5 + 48);
    if (v21(v14, 1, v4) == 1)
    {
      if (v21(&v14[v20], 1, v4) == 1)
      {
        sub_254132E5C(v14, &unk_27F5BA1B0, qword_2542544A0);
        return 1;
      }
    }

    else
    {
      sub_254132DF4(v14, v10, &unk_27F5BA1B0, qword_2542544A0);
      if (v21(&v14[v20], 1, v4) != 1)
      {
        (*(v5 + 32))(v7, &v14[v20], v4);
        sub_254197F58(&qword_27F5B9138, MEMORY[0x277CC9578], MEMORY[0x277CC9598]);
        v23 = sub_25424DC98();
        v24 = *(v5 + 8);
        v24(v7, v4);
        v24(v10, v4);
        sub_254132E5C(v14, &unk_27F5BA1B0, qword_2542544A0);
        return (v23 & 1) != 0;
      }

      (*(v5 + 8))(v10, v4);
    }

    sub_254132E5C(v14, &qword_27F5B9D30, &qword_254257B08);
    return 0;
  }

  v17 = 0;
  if (v16 != 2 && ((v16 ^ v15) & 1) == 0)
  {
    goto LABEL_7;
  }

  return v17;
}

unint64_t sub_254197EB0()
{
  result = qword_27F5B9C28;
  if (!qword_27F5B9C28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C28);
  }

  return result;
}

unint64_t sub_254197F04()
{
  result = qword_27F5B9C30;
  if (!qword_27F5B9C30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C30);
  }

  return result;
}

uint64_t sub_254197F58(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_254197FA0()
{
  result = qword_27F5B9C40;
  if (!qword_27F5B9C40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C40);
  }

  return result;
}

uint64_t sub_254197FF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HomeActivityStateEvent.State(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_254198098(uint64_t a1)
{
  v2 = type metadata accessor for HomeActivityStateEvent.DocumentLayout(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_2541980F8()
{
  result = qword_27F5B9C58;
  if (!qword_27F5B9C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C58);
  }

  return result;
}

unint64_t sub_254198150()
{
  result = qword_27F5B9C60;
  if (!qword_27F5B9C60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5B9C68, &qword_2542576C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9C60);
  }

  return result;
}

uint64_t sub_2541981FC(void *a1)
{
  a1[1] = sub_254197F58(&qword_27F5B9C78, type metadata accessor for HomeActivityStateEvent, &protocol conformance descriptor for HomeActivityStateEvent);
  a1[2] = sub_254197F58(&qword_27F5B9C80, type metadata accessor for HomeActivityStateEvent, &protocol conformance descriptor for HomeActivityStateEvent);
  result = sub_254197F58(&qword_27F5B9C88, type metadata accessor for HomeActivityStateEvent, &protocol conformance descriptor for HomeActivityStateEvent);
  a1[3] = result;
  return result;
}

uint64_t sub_2541982F0(uint64_t a1)
{
  result = sub_254197F58(&qword_27F5B9C98, type metadata accessor for HomeActivityStateEvent, &protocol conformance descriptor for HomeActivityStateEvent);
  *(a1 + 8) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SecuritySystemEvent.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SecuritySystemEvent.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_2541984C0(uint64_t a1)
{
  type metadata accessor for EventBase(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for HomeActivityStateEvent.State(319);
    if (v2 <= 0x3F)
    {
      sub_2541986A0(319, &qword_27F5B9068, MEMORY[0x277CC95F0]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_2541985A0(uint64_t a1)
{
  sub_254198650();
  if (v1 <= 0x3F)
  {
    sub_2541986A0(319, &qword_27F5B9CC8, MEMORY[0x277CC9578]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_254198650()
{
  if (!qword_27F5B9CC0)
  {
    v0 = sub_25424E598();
    if (!v1)
    {
      atomic_store(v0, &qword_27F5B9CC0);
    }
  }
}

void sub_2541986A0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_25424E598();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void sub_25419871C(uint64_t a1)
{
  sub_25424D8B8();
  if (v1 <= 0x3F)
  {
    sub_25424D948();
    if (v2 <= 0x3F)
    {
      sub_2541986A0(319, &qword_27F5B9068, MEMORY[0x277CC95F0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for HomeActivityStateEvent.State(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_254198808()
{
  result = qword_27F5B9CE0;
  if (!qword_27F5B9CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9CE0);
  }

  return result;
}

unint64_t sub_254198860()
{
  result = qword_27F5B9CE8;
  if (!qword_27F5B9CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9CE8);
  }

  return result;
}

unint64_t sub_2541988B8()
{
  result = qword_27F5B9CF0;
  if (!qword_27F5B9CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9CF0);
  }

  return result;
}

uint64_t sub_25419890C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7974697669746361 && a2 == 0xED00006574617453;
  if (v4 || (sub_25424EAB8() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000254250880 == a2 || (sub_25424EAB8() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000018 && 0x80000002542508A0 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_25424EAB8();

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

unint64_t sub_254198A3C()
{
  result = qword_27F5B9CF8;
  if (!qword_27F5B9CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9CF8);
  }

  return result;
}

unint64_t sub_254198A90()
{
  result = qword_27F5B9D08;
  if (!qword_27F5B9D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9D08);
  }

  return result;
}

uint64_t sub_254198AE4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t getEnumTagSinglePayload for DoorEvent.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DoorEvent.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_254198CA0()
{
  result = qword_27F5B9D38;
  if (!qword_27F5B9D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9D38);
  }

  return result;
}

unint64_t sub_254198CF8()
{
  result = qword_27F5B9D40;
  if (!qword_27F5B9D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9D40);
  }

  return result;
}

unint64_t sub_254198D50()
{
  result = qword_27F5B9D48;
  if (!qword_27F5B9D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F5B9D48);
  }

  return result;
}

unint64_t sub_254198DA4(uint64_t a1, uint64_t a2)
{
  v2 = sub_25424E8E8();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t RecordType.rawValue.getter()
{
  v1 = 0x746E657645;
  if (*v0 != 1)
  {
    v1 = 0x6974707972636E45;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x694473746E657645;
  }
}

HomeKitEvents::RecordType_optional __swiftcall RecordType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_25424E8E8();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_254198EC4(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x746E657645;
  if (v2 != 1)
  {
    v4 = 0x6974707972636E45;
    v3 = 0xED000079654B6E6FLL;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x694473746E657645;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEC00000074736567;
  }

  v7 = 0xE500000000000000;
  v8 = 0x746E657645;
  if (*a2 != 1)
  {
    v8 = 0x6974707972636E45;
    v7 = 0xED000079654B6E6FLL;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x694473746E657645;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEC00000074736567;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_25424EAB8();
  }

  return v11 & 1;
}

unint64_t sub_254198FE0()
{
  result = qword_27F5B9D50[0];
  if (!qword_27F5B9D50[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F5B9D50);
  }

  return result;
}

uint64_t sub_254199034()
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

uint64_t sub_2541990E8(uint64_t a1)
{
  sub_25424DD88();
}

uint64_t sub_254199188(uint64_t a1)
{
  sub_25424EBD8();
  sub_25424DD88();

  return sub_25424EC28();
}

void sub_254199244(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000074736567;
  v4 = 0xE500000000000000;
  v5 = 0x746E657645;
  if (v2 != 1)
  {
    v5 = 0x6974707972636E45;
    v4 = 0xED000079654B6E6FLL;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x694473746E657645;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t get_enum_tag_for_layout_string_13HomeKitEvents11RecordErrorO(void *a1)
{
  v1 = *a1 >> 61;
  if (v1 == 7)
  {
    return (*a1 >> 3) + 7;
  }

  else
  {
    return v1;
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_2541992F4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x79 && *(a1 + 24))
  {
    return (*a1 + 121);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x78)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_254199350(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x78)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 121;
    if (a3 >= 0x79)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x79)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_2541993B8(void *result, uint64_t a2)
{
  if (a2 < 7)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = (8 * (a2 - 7)) | 0xE000000000000000;
  }

  return result;
}

uint64_t sub_2541993F8(void (*a1)(char *, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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
  v19 = sub_25424E328();
  if (!v19)
  {
    return sub_25424DFD8();
  }

  v41 = v19;
  v45 = sub_25424E778();
  v32 = sub_25424E788();
  sub_25424E738();
  result = sub_25424E318();
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
      v22 = sub_25424E348();
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
      sub_25424E768();
      result = sub_25424E338();
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

uint64_t sub_254199818(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 120) = a1;
}

uint64_t ExpiringAsyncCache.__allocating_init(expirationDuration:)(double a1)
{
  v2 = swift_allocObject();
  ExpiringAsyncCache.init(expirationDuration:)(a1);
  return v2;
}

uint64_t ExpiringAsyncCache.init(expirationDuration:)(double a1)
{
  swift_defaultActor_initialize();
  sub_25424D8B8();
  swift_getTupleTypeMetadata2();
  result = sub_25424DB48();
  *(v1 + 120) = result;
  *(v1 + 128) = 0;
  if (a1 <= 0.0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 112) = a1;
    return v1;
  }

  return result;
}

uint64_t ExpiringAsyncCache.deinit()
{
  if (*(v0 + 128))
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
    sub_25424E1A8();
  }

  swift_defaultActor_destroy();
  return v0;
}

uint64_t ExpiringAsyncCache.__deallocating_deinit()
{
  ExpiringAsyncCache.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_254199A50()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v34 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v34 - v7;
  v9 = sub_25424D8B8();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = MEMORY[0x28223BE20](v9);
  result = MEMORY[0x28223BE20](v12);
  if (!v1[16])
  {
    v35 = v15;
    v38 = &v34 - v14;
    v40 = v5;
    swift_beginAccess();
    v16 = v1[15];
    v17 = *(v2 + 80);
    v18 = *(v2 + 88);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    v39 = &v34;
    v41 = v16;
    MEMORY[0x28223BE20](TupleTypeMetadata2);
    *(&v34 - 4) = v17;
    *(&v34 - 3) = v18;
    v36 = v18;
    v37 = v17;
    *(&v34 - 2) = v20;
    v34 = v20;
    v21 = v10;
    v22 = sub_25424DBB8();

    WitnessTable = swift_getWitnessTable();
    v25 = sub_2541993F8(sub_25419C8AC, (&v34 - 6), v22, v9, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v24);

    sub_25419A020(v25, v8);

    if ((*(v21 + 48))(v8, 1, v9) == 1)
    {
      return sub_25419C8D0(v8);
    }

    else
    {
      v26 = v21;
      v39 = *(v21 + 32);
      v27 = v38;
      (v39)(v38, v8, v9);
      v28 = sub_25424E128();
      (*(*(v28 - 8) + 56))(v40, 1, 1, v28);
      v29 = swift_allocObject();
      swift_weakInit();
      v30 = v35;
      (*(v26 + 16))(v35, v27, v9);
      v31 = (*(v26 + 80) + 56) & ~*(v26 + 80);
      v32 = swift_allocObject();
      v32[2] = 0;
      v32[3] = 0;
      v33 = v36;
      v32[4] = v37;
      v32[5] = v33;
      v32[6] = v34;
      (v39)(v32 + v31, v30, v9);
      *(v32 + ((v11 + v31 + 7) & 0xFFFFFFFFFFFFFFF8)) = v29;
      v1[16] = sub_2541A93F0(0, 0, v40, &unk_254257FB0, v32);

      return (*(v26 + 8))(v27, v9);
    }
  }

  return result;
}

uint64_t sub_254199EBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v6 = sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = v12 - v8;
  (*(v10 + 16))(v12 - v8, a1, TupleTypeMetadata2);
  (*(*(v6 - 8) + 32))(a3, &v9[*(TupleTypeMetadata2 + 48)], v6);
  return (*(*(a2 - 8) + 8))(v9, a2);
}

uint64_t sub_25419A020@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25424D8B8();
  v5 = MEMORY[0x28223BE20](*(v4 - 8));
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v22 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v12 = *(v8 + 16);
    v13 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v25 = v8;
    v23 = a2;
    v24 = v12;
    v12(&v22 - v9, v13, v4);
    result = v25;
    if (v11 == 1)
    {
LABEL_3:
      v15 = v23;
      (*(result + 32))(v23, v10, v4);
      return (*(v25 + 56))(v15, 0, 1, v4);
    }

    else
    {
      v17 = (v25 + 32);
      v18 = 1;
      while (1)
      {
        v19 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v24(v7, v13 + *(result + 72) * v18, v4);
        sub_25419CB08(&qword_27F5B9210, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v20 = sub_25424DC68();
        v21 = *(v25 + 8);
        if (v20)
        {
          v21(v10, v4);
          (*v17)(v10, v7, v4);
        }

        else
        {
          v21(v7, v4);
        }

        ++v18;
        result = v25;
        if (v19 == v11)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }
  }

  else
  {
    v16 = *(v8 + 56);

    return v16(a2, 1, 1, v4);
  }

  return result;
}

uint64_t sub_25419A2D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v6 = sub_25424E7A8();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25419A390, 0, 0);
}

uint64_t sub_25419A390(uint64_t a1)
{
  sub_25424D868();
  if (v2 <= 0.0)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    v1[12] = Strong;
    if (Strong)
    {

      return MEMORY[0x2822009F8](sub_25419A7B4, Strong, 0);
    }

    else
    {

      v9 = v1[1];

      return v9();
    }
  }

  else
  {
    v3 = sub_25424EC88();
    v5 = v4;
    sub_25424EB68();
    v6 = swift_task_alloc();
    v1[10] = v6;
    *v6 = v1;
    v6[1] = sub_25419A51C;

    return sub_25419C31C(v3, v5, 0, 0, 1);
  }
}

uint64_t sub_25419A51C()
{
  v2 = *(*v1 + 72);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  *(*v1 + 88) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_25419A750;
  }

  else
  {
    v5 = sub_25419A68C;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_25419A68C()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 96) = Strong;
  if (Strong)
  {

    return MEMORY[0x2822009F8](sub_25419A7B4, Strong, 0);
  }

  else
  {

    v2 = *(v0 + 8);

    return v2();
  }
}

uint64_t sub_25419A750()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25419A7B4()
{
  sub_25419A828();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25419A828()
{
  v1 = *v0;
  v2 = sub_25424D8B8();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v0[16] = 0;

  sub_25424D898();
  swift_beginAccess();
  v15 = v0;
  v16 = v5;
  v9 = v1[10];
  v10 = v1[11];
  v11 = v1[12];
  v12 = sub_25419CA7C;
  v13 = &v14;

  swift_getTupleTypeMetadata2();
  v6 = sub_25424DBC8();
  swift_beginAccess();
  v0[15] = v6;

  sub_254199A50();
  return (*(v3 + 8))(v5, v2);
}

BOOL sub_25419AA04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v25 = a5;
  v20 = a2;
  v21 = a3;
  v5 = *(*a4 + 88);
  v6 = sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v24 = sub_25424E598();
  v22 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v9 = &v20 - v8;
  v23 = sub_25424E598();
  v10 = *(v23 - 8);
  v11 = MEMORY[0x28223BE20](v23);
  v13 = &v20 - v12;
  v14 = *(TupleTypeMetadata2 - 8);
  MEMORY[0x28223BE20](v11);
  v16 = &v20 - v15;
  v17 = *(v5 - 8);
  (*(v17 + 16))(&v20 - v15, v20, v5);
  (*(*(v6 - 8) + 16))(&v16[*(TupleTypeMetadata2 + 48)], v21, v6);
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  (*(v14 + 16))(v9, v16, TupleTypeMetadata2);
  (*(v14 + 56))(v9, 0, 1, TupleTypeMetadata2);
  sub_25419AD68(v9, v25, v13);
  (*(v22 + 8))(v9, v24);
  (*(v14 + 8))(v16, TupleTypeMetadata2);
  v18 = (*(v17 + 48))(v13, 1, v5) != 1;
  (*(v10 + 8))(v13, v23);
  return v18;
}

uint64_t sub_25419AD68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v23[1] = a2;
  v6 = *(*v3 + 88);
  v23[0] = sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v8 = sub_25424E598();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v23 - v11;
  v13 = *(TupleTypeMetadata2 - 8);
  v14 = MEMORY[0x28223BE20](v10);
  v16 = v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = v23 - v17;
  (*(v9 + 16))(v12, a1, v8);
  if ((*(v13 + 48))(v12, 1, TupleTypeMetadata2) == 1)
  {
    (*(v9 + 8))(v12, v8);
  }

  else
  {
    v19 = *(v13 + 32);
    v19(v18, v12, TupleTypeMetadata2);
    if (sub_25424D828())
    {
      v19(v16, v18, TupleTypeMetadata2);
      v20 = *(TupleTypeMetadata2 + 48);
      v21 = *(v6 - 8);
      (*(v21 + 32))(a3, v16, v6);
      (*(v21 + 56))(a3, 0, 1, v6);
      return (*(*(v23[0] - 8) + 8))(&v16[v20]);
    }

    (*(v13 + 8))(v18, TupleTypeMetadata2);
  }

  return (*(*(v6 - 8) + 56))(a3, 1, 1, v6);
}

uint64_t ExpiringAsyncCache.subscript.getter(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v3[5] = *v2;
  v4 = sub_25424D8B8();
  v3[6] = v4;
  v3[7] = *(v4 - 8);
  v3[8] = swift_task_alloc();
  v3[9] = swift_getTupleTypeMetadata2();
  v5 = sub_25424E598();
  v3[10] = v5;
  v3[11] = *(v5 - 8);
  v3[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25419B22C, v2, 0);
}

uint64_t sub_25419B22C()
{
  v2 = v0[11];
  v1 = v0[12];
  v4 = v0[7];
  v3 = v0[8];
  v8 = v0[6];
  v9 = v0[10];
  v7 = v0[2];
  swift_beginAccess();

  sub_25424DBF8();

  sub_25424D898();
  sub_25419AD68(v1, v3, v7);
  (*(v4 + 8))(v3, v8);
  (*(v2 + 8))(v1, v9);

  v5 = v0[1];

  return v5();
}

uint64_t ExpiringAsyncCache.get(_:)(uint64_t a1)
{
  v3 = sub_25424D8B8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_25424D898();
  swift_beginAccess();
  v14 = *(v1 + 120);

  v13 = sub_25424DB48();
  v10 = a1;
  v11 = v1;
  v12 = v6;
  swift_getTupleTypeMetadata2();
  sub_25424DBE8();
  sub_25424DBE8();
  swift_getWitnessTable();
  sub_25424DED8();

  v7 = v15;
  (*(v4 + 8))(v6, v3);
  return v7;
}

uint64_t sub_25419B578(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v66 = a3;
  v52 = a5;
  v68 = a2;
  v54 = a1;
  v65 = *a4;
  v6 = v65;
  v7 = *(v65 + 88);
  v60 = sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = sub_25424E598();
  v50 = *(v9 - 8);
  v51 = v9;
  MEMORY[0x28223BE20](v9);
  v49 = v47 - v10;
  v11 = sub_25424E598();
  MEMORY[0x28223BE20](v11 - 8);
  v48 = v47 - v12;
  v13 = *(v6 + 80);
  v14 = swift_getTupleTypeMetadata2();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = v47 - v17;
  v64 = *(TupleTypeMetadata2 - 8);
  v19 = MEMORY[0x28223BE20](v16);
  v59 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v63 = v47 - v22;
  v67 = v13;
  v62 = *(v13 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v61 = v47 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v26 = v47 - v25;
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v53 = a4;
  (*(v15 + 16))(v18, v68, v14);
  v27 = &v18[*(v14 + 48)];
  v28 = *(TupleTypeMetadata2 + 48);
  v29 = *(v7 - 8);
  v57 = *(v29 + 32);
  v58 = v29 + 32;
  v30 = v59;
  v57(v59, v27, v7);
  v31 = v60;
  v32 = *(v60 - 8);
  v33 = v7;
  v55 = *(v32 + 32);
  v56 = v32 + 32;
  v68 = TupleTypeMetadata2;
  v55(&v30[v28], &v27[v28], v60);
  v34 = v62;
  v35 = v26;
  v36 = v67;
  (*(v62 + 32))(v26, v18, v67);
  v37 = *(v68 + 48);
  v38 = v63;
  v47[1] = v33;
  v57(v63, v30, v33);
  v39 = &v30[v28];
  v40 = v36;
  v55(&v38[v37], v39, v31);
  v41 = v68;
  v42 = sub_25424E2E8();
  v43 = v64;
  if (v42)
  {
    (*(v34 + 16))(v61, v35, v40);
    v44 = v49;
    (*(v43 + 16))(v49, v38, v41);
    (*(v43 + 56))(v44, 0, 1, v41);
    sub_25419AD68(v44, v52, v48);
    v45 = v44;
    v40 = v67;
    (*(v50 + 8))(v45, v51);
    sub_25424DBE8();
    sub_25424DC08();
  }

  (*(v43 + 8))(v38, v41);
  return (*(v34 + 8))(v35, v40);
}

uint64_t ExpiringAsyncCache.set(_:key:)(uint64_t a1, uint64_t a2)
{
  v28 = a1;
  v3 = *v2;
  v26 = a2;
  v27 = v3;
  v25 = *(v3 + 88);
  v4 = sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = sub_25424E598();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v22 - v8;
  v23 = *(v3 + 80);
  v10 = *(v23 - 8);
  v11 = MEMORY[0x28223BE20](v7);
  v13 = &v22 - v12;
  v14 = *(v4 - 8);
  v15 = MEMORY[0x28223BE20](v11);
  v17 = &v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v22 - v18;
  sub_25424D898();
  sub_25424D848();
  v24 = *(v14 + 8);
  v24(v17, v4);
  (*(v10 + 16))(v13, v26, v23);
  v20 = *(TupleTypeMetadata2 + 48);
  (*(*(v25 - 8) + 16))(v9, v28);
  (*(v14 + 16))(&v9[v20], v19, v4);
  (*(*(TupleTypeMetadata2 - 8) + 56))(v9, 0, 1, TupleTypeMetadata2);
  swift_beginAccess();
  sub_25424DBE8();
  sub_25424DC08();
  swift_endAccess();
  sub_254199A50();
  return (v24)(v19, v4);
}

uint64_t ExpiringAsyncCache.clear(_:)(uint64_t a1)
{
  v2 = v1;
  v4 = *v1;
  sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = sub_25424E598();
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v16 - v8;
  v10 = *(v4 + 80);
  MEMORY[0x28223BE20](v7);
  (*(v12 + 16))(&v16 - v11, a1, v10);
  (*(*(TupleTypeMetadata2 - 8) + 56))(v9, 1, 1, TupleTypeMetadata2);
  swift_beginAccess();
  v13 = *(v4 + 96);
  sub_25424DBE8();
  sub_25424DC08();
  swift_endAccess();
  swift_beginAccess();

  LOBYTE(TupleTypeMetadata2) = MEMORY[0x259C05A90](v14, v10, TupleTypeMetadata2, v13);

  if (TupleTypeMetadata2)
  {
    if (v2[16])
    {
      v2[16] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5BAF10, &qword_254253F40);
      sub_25424E1A8();
    }
  }

  return result;
}

uint64_t sub_25419C0E8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25412F724;

  return ExpiringAsyncCache.subscript.getter(a1, a2);
}

uint64_t sub_25419C194(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25419C1B4, v3, 0);
}

uint64_t sub_25419C1B4()
{
  v1 = ExpiringAsyncCache.get(_:)(*(v0 + 16));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_25419C214(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v4 = *v2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](sub_25419C238, v4, 0);
}

uint64_t sub_25419C238()
{
  ExpiringAsyncCache.set(_:key:)(v0[2], v0[3]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_25419C29C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_25419C2BC, v3, 0);
}

uint64_t sub_25419C2BC()
{
  ExpiringAsyncCache.clear(_:)(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25419C31C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_25424E798();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x2822009F8](sub_25419C41C, 0, 0);
}

uint64_t sub_25419C41C()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_25424E7A8();
  v5 = sub_25419CB08(&qword_27F5B9DD8, MEMORY[0x277D85928], MEMORY[0x277D85930]);
  sub_25424EB48();
  sub_25419CB08(qword_27F5B9DE0, MEMORY[0x277D858F8], MEMORY[0x277D85920]);
  sub_25424E7B8();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_25419C5AC;
  v8 = v0[11];

  return MEMORY[0x2822008C8](v8, v0 + 2, v4, v5);
}

uint64_t sub_25419C5AC()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25419C768, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_25419C768()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25419C8D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5BA1B0, qword_2542544A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25419C938(uint64_t a1)
{
  v4 = *(sub_25424D8B8() - 8);
  v5 = (*(v4 + 80) + 56) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_25412F724;

  return sub_25419A2D0(a1, v6, v7, v1 + v5, v8);
}

uint64_t sub_25419CA84(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_25424D8B8();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  return v5(a1, a2, a2 + *(TupleTypeMetadata2 + 48)) & 1;
}

uint64_t sub_25419CB08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25419CB50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v14[3] = MEMORY[0x277D838B0];
  v14[4] = MEMORY[0x277CC9C18];
  v14[0] = a1;
  v14[1] = a2;
  v4 = __swift_project_boxed_opaque_existential_1(v14, MEMORY[0x277D838B0]);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_2541BEA18(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_2541BEAD0(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_2541BEB4C(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = __swift_destroy_boxed_opaque_existential_1(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

uint64_t sub_25419CC1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_2541A1A98(a3, v25 - v10);
  v12 = sub_25424E128();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_2541A1B08(v11);
  }

  else
  {
    sub_25424E118();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_25424E058();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_25424DD28() + 32;
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

      sub_2541A1B08(a3);

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

  sub_2541A1B08(a3);
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

uint64_t Future.init(closure:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t **a5@<X8>)
{
  type metadata accessor for Promise(0, a2, a2, a3);
  swift_allocObject();
  *a5 = sub_25419EFCC();
  type metadata accessor for Future.ValueType(0, a2, a3, a4);
  swift_storeEnumTagMultiPayload();

  a1(v10);
}

uint64_t Future<>.init()(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Future.ValueType(0, MEMORY[0x277D84F78] + 8, a1, a2);

  return swift_storeEnumTagMultiPayload();
}

uint64_t Future.init(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a2 - 8) + 32))(a5, a1, a2);
  type metadata accessor for Future.ValueType(0, a2, a3, a4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25419D0F0(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 96) = a3;
  *(v3 + 48) = a1;
  *(v3 + 56) = a2;
  return MEMORY[0x2822009F8](sub_25419D114, 0, 0);
}

uint64_t sub_25419D114()
{
  if (*(v0 + 96))
  {
    if (*(v0 + 96) == 1)
    {
      return sub_25424E858();
    }

    else
    {
      v6 = *(v0 + 56);
      sub_2541A1E20(v6, 2);
      v7 = swift_task_alloc();
      *(v0 + 80) = v7;
      *v7 = v0;
      v7[1] = sub_25419D448;
      v8 = *(v0 + 48);
      v9 = MEMORY[0x277D84F78] + 8;

      return MEMORY[0x2822008A0](v8, 0, 0, 0x746C75736572, 0xE600000000000000, sub_2541A1E34, v6, v9);
    }
  }

  else
  {
    v2 = swift_task_alloc();
    *(v0 + 64) = v2;
    v3 = swift_task_alloc();
    *(v0 + 72) = v3;
    *v3 = v0;
    v3[1] = sub_25419D31C;
    v4 = *(v0 + 48);
    v5 = MEMORY[0x277D84F78] + 8;

    return MEMORY[0x2822007B8](v4, 0, 0, 0x746C75736572, 0xE600000000000000, sub_2541A1E50, v2, v5);
  }
}

uint64_t sub_25419D31C()
{

  return MEMORY[0x2822009F8](sub_25419D434, 0, 0);
}

uint64_t sub_25419D448()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_25419D5C0;
  }

  else
  {
    v2 = sub_25419D55C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25419D55C()
{
  sub_2541A1E3C(*(v0 + 56), 2);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25419D5C0()
{
  sub_25424E688();
  MEMORY[0x259C05CA0](0xD000000000000024, 0x8000000254250970);
  swift_getErrorValue();
  sub_25424EA98();
  return sub_25424E858();
}

uint64_t Future<>.result.getter(uint64_t a1, uint64_t a2)
{
  v3[6] = a1;
  v3[7] = v2;
  v4 = *(a2 + 16);
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v5 = type metadata accessor for Future.ValueType(0, v4, MEMORY[0x277D84A98], MEMORY[0x277D84AC0]);
  v3[11] = v5;
  v3[12] = *(v5 - 8);
  v3[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25419D7C0, 0, 0);
}

uint64_t sub_25419D7C0()
{
  (*(v0[12] + 16))(v0[13], v0[7], v0[11]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      return sub_25424E858();
    }

    else
    {
      v0[16] = *v0[13];
      v9 = swift_task_alloc();
      v0[17] = v9;
      *v9 = v0;
      v9[1] = sub_25419DB7C;
      v10 = v0[6];

      return Promise.result.getter(v10);
    }
  }

  else
  {
    v3 = v0[10];
    v4 = v0[8];
    (*(v0[9] + 32))(v3, v0[13], v4);
    v5 = swift_task_alloc();
    v0[14] = v5;
    *(v5 + 16) = v4;
    *(v5 + 24) = v3;
    v6 = swift_task_alloc();
    v0[15] = v6;
    *v6 = v0;
    v6[1] = sub_25419D9E0;
    v7 = v0[8];
    v8 = v0[6];

    return MEMORY[0x2822007B8](v8, 0, 0, 0x746C75736572, 0xE600000000000000, sub_25419E10C, v5, v7);
  }
}

uint64_t sub_25419D9E0()
{

  return MEMORY[0x2822009F8](sub_25419DAF8, 0, 0);
}

uint64_t sub_25419DAF8()
{
  (*(v0[9] + 8))(v0[10], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25419DB7C()
{
  *(*v1 + 144) = v0;

  if (v0)
  {
    v2 = sub_25419DD04;
  }

  else
  {
    v2 = sub_25419DC90;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25419DC90()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25419DD04()
{
  sub_25424E688();
  MEMORY[0x259C05CA0](0xD000000000000024, 0x8000000254250970);
  swift_getErrorValue();
  sub_25424EA98();
  return sub_25424E858();
}

uint64_t sub_25419DDD4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_25424E098();
  return sub_25424E088();
}

uint64_t Promise.result.getter(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_25419DEF4, 0, 0);
}

uint64_t sub_25419DEF4()
{
  v1 = v0[4];
  v2 = swift_task_alloc();
  v0[5] = v2;
  v3 = *(v1 + 80);
  *v2 = v0;
  v2[1] = sub_25419DFC0;
  v4 = v0[2];
  v5 = v0[3];

  return MEMORY[0x2822008A0](v4, 0, 0, 0x746C75736572, 0xE600000000000000, sub_25419F97C, v5, v3);
}

uint64_t sub_25419DFC0()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25419E0F4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t Future.init(throwing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  (*(*(a3 - 8) + 32))(a5, a1);
  type metadata accessor for Future.ValueType(0, a2, a3, a4);

  return swift_storeEnumTagMultiPayload();
}

uint64_t Future.result.getter(uint64_t a1, void *a2)
{
  v3[2] = a1;
  v3[3] = v2;
  v4 = a2[2];
  v3[4] = v4;
  v5 = a2[3];
  v3[5] = v5;
  v6 = a2[4];
  v3[6] = v6;
  v7 = type metadata accessor for Future.ValueType(0, v4, v5, v6);
  v3[7] = v7;
  v3[8] = *(v7 - 8);
  v3[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25419E284, 0, 0);
}

uint64_t sub_25419E284()
{
  (*(*(v0 + 64) + 16))(*(v0 + 72), *(v0 + 24), *(v0 + 56));
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    *(v0 + 80) = **(v0 + 72);
    v1 = swift_task_alloc();
    *(v0 + 88) = v1;
    *v1 = v0;
    v1[1] = sub_25419E430;
    v2 = *(v0 + 16);

    return Promise.result.getter(v2);
  }

  else
  {
    v4 = *(v0 + 48);
    v5 = *(v0 + 24);
    v6 = swift_task_alloc();
    *(v0 + 104) = v6;
    *(v6 + 16) = *(v0 + 32);
    *(v6 + 32) = v4;
    *(v6 + 40) = v5;
    v7 = swift_task_alloc();
    *(v0 + 112) = v7;
    *v7 = v0;
    v7[1] = sub_25419E5B0;
    v8 = *(v0 + 32);
    v9 = *(v0 + 16);

    return MEMORY[0x2822008A0](v9, 0, 0, 0x746C75736572, 0xE600000000000000, sub_25419F984, v6, v8);
  }
}

uint64_t sub_25419E430()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_25419E748;
  }

  else
  {
    v2 = sub_25419E544;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25419E544()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25419E5B0()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_25419E7B4;
  }

  else
  {

    v2 = sub_25419E6CC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_25419E6CC()
{
  (*(v0[8] + 8))(v0[9], v0[7]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_25419E748()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25419E7B4()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[7];

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25419E848(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = *(a4 - 8);
  v36 = a1;
  v7 = MEMORY[0x28223BE20](a1);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v34 - v11;
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v10);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v34 - v18;
  v34 = v20;
  v23 = type metadata accessor for Future.ValueType(0, v21, v22, v20);
  MEMORY[0x28223BE20](v23);
  v25 = &v34 - v24;
  (*(v26 + 16))(&v34 - v24, a2, v23);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v29 = v35;
      v30 = *(v35 + 32);
      v30(v12, v25, a4);
      (*(v29 + 16))(v9, v12, a4);
      v31 = sub_25424EA88();
      if (v31)
      {
        v32 = v31;
        (*(v29 + 8))(v9, a4);
      }

      else
      {
        v32 = swift_allocError();
        v30(v33, v9, a4);
      }

      v37 = v32;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
      sub_25424E098();
      sub_25424E078();
      return (*(v29 + 8))(v12, a4);
    }

    else
    {
      result = sub_25424E858();
      __break(1u);
    }
  }

  else
  {
    (*(v14 + 32))(v19, v25, a3);
    (*(v14 + 16))(v17, v19, a3);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
    sub_25424E098();
    sub_25424E088();
    return (*(v14 + 8))(v19, a3);
  }

  return result;
}

uint64_t Future<>.complete.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_25419ED10;

  return (sub_25419D0F0)();
}

uint64_t sub_25419ED10()
{

  return MEMORY[0x2822009F8](sub_2541A22E8, 0, 0);
}

uint64_t Future<>.complete.getter(void *a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25419EEA0;

  return Future.result.getter(v3, a1);
}

uint64_t sub_25419EEA0()
{
  *(*v1 + 24) = v0;

  if (v0)
  {
    v2 = sub_25419EFB4;
  }

  else
  {
    v2 = sub_25412FA2C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t *sub_25419EFCC()
{
  v1 = *v0;
  swift_defaultActor_initialize();
  v2 = *(*v0 + 96);
  v5 = type metadata accessor for Promise.ValueType(0, *(v1 + 80), v3, v4);
  (*(*(v5 - 8) + 56))(v0 + v2, 1, 1, v5);
  *(v0 + *(*v0 + 104)) = 0;
  return v0;
}

uint64_t Promise.resolve(throwing:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for Promise.ValueType(0, *(*v4 + 80), a3, a4);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v15 - v8;
  *(&v15 - v8) = a1;
  swift_storeEnumTagMultiPayload();
  v10 = a1;
  LOBYTE(a1) = sub_25419F180(v9, v11, v12, v13);
  (*(v7 + 8))(v9, v6);
  return a1 & 1;
}

BOOL sub_25419F180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a1;
  v5 = *v4;
  v33 = *(*v4 + 80);
  v6 = type metadata accessor for Promise.ValueType(0, v33, a3, a4);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v32 = &v29 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v10 - 8);
  v31 = &v29 - v11;
  v12 = sub_25424E598();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v29 - v17;
  v19 = *(v5 + 96);
  swift_beginAccess();
  (*(v13 + 16))(v18, v4 + v19, v12);
  v20 = (*(v7 + 48))(v18, 1, v6);
  (*(v13 + 8))(v18, v12);
  if (v20 == 1)
  {
    v30 = *(v7 + 16);
    v30(v16, v34, v6);
    (*(v7 + 56))(v16, 0, 1, v6);
    swift_beginAccess();
    (*(v13 + 40))(v4 + v19, v16, v12);
    swift_endAccess();
    v21 = *(*v4 + 104);
    v22 = *(v4 + v21);
    if (v22)
    {
      *(v4 + v21) = 0;
      v23 = sub_25424E128();
      v24 = v31;
      (*(*(v23 - 8) + 56))(v31, 1, 1, v23);
      v25 = v32;
      v30(v32, v34, v6);
      v26 = (*(v7 + 80) + 40) & ~*(v7 + 80);
      v27 = swift_allocObject();
      *(v27 + 2) = 0;
      *(v27 + 3) = 0;
      *(v27 + 4) = v33;
      (*(v7 + 32))(&v27[v26], v25, v6);
      *&v27[(v8 + v26 + 7) & 0xFFFFFFFFFFFFFFF8] = v22;
      sub_25419CC1C(0, 0, v24, &unk_2542580F0, v27);
    }
  }

  return v20 != 1;
}

uint64_t sub_25419F570(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v15 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v15 - v9;
  v11 = sub_25424E128();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  (*(v5 + 16))(v7, a1, v4);
  v12 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v13 = swift_allocObject();
  *(v13 + 2) = 0;
  *(v13 + 3) = 0;
  *(v13 + 4) = a2;
  (*(v5 + 32))(&v13[v12], v7, v4);

  sub_25419CC1C(0, 0, v10, &unk_254258108, v13);
}

uint64_t sub_25419F75C(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
  v5 = sub_25424E098();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v16 - v10;
  v12 = sub_25424E128();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v6 + 16))(v8, a1, v5);
  v13 = (*(v6 + 80) + 48) & ~*(v6 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = 0;
  *(v14 + 3) = 0;
  *(v14 + 4) = v4;
  *(v14 + 5) = a2;
  (*(v6 + 32))(&v14[v13], v8, v5);

  sub_25419CC1C(0, 0, v11, &unk_254258120, v14);
}

uint64_t sub_25419F9A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 24) = a4;
  *(v5 + 32) = a5;
  return MEMORY[0x2822009F8](sub_25419F9C8, a4, 0);
}

uint64_t sub_25419F9C8()
{
  v1 = sub_2541A1F90(*(v0 + 32));
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  sub_2541A21AC(v1, v2);

  return MEMORY[0x2822009F8](sub_25419FA3C, 0, 0);
}

uint64_t sub_25419FA3C()
{
  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    if (v1)
    {
      *(v0 + 16) = *(v0 + 40);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
      sub_25424E078();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
      sub_25424E088();
    }
  }

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_25419FAF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v7 = *(*a4 + 80);
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v5[7] = swift_task_alloc();
  v5[8] = swift_task_alloc();
  v10 = type metadata accessor for Promise.ValueType(255, v7, v8, v9);
  v5[9] = v10;
  v11 = sub_25424E598();
  v5[10] = v11;
  v5[11] = *(v11 - 8);
  v5[12] = swift_task_alloc();
  v5[13] = *(v10 - 8);
  v5[14] = swift_task_alloc();
  v5[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25419FCA8, a4, 0);
}

uint64_t sub_25419FCA8()
{
  sub_25419FF58(*(v0 + 32), *(v0 + 96));

  return MEMORY[0x2822009F8](sub_25419FD14, 0, 0);
}

uint64_t sub_25419FD14()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[9];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    (*(v0[11] + 8))(v1, v0[10]);
  }

  else
  {
    v5 = v0[14];
    v4 = v0[15];
    (*(v2 + 32))(v4, v1, v3);
    (*(v2 + 16))(v5, v4, v3);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = v0[14];
    v8 = v0[15];
    v9 = v0[13];
    v10 = v0[9];
    if (EnumCaseMultiPayload == 1)
    {
      v0[2] = *v7;
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
      sub_25424E098();
      sub_25424E078();
    }

    else
    {
      v12 = v0[7];
      v11 = v0[8];
      v13 = v0[5];
      v14 = v0[6];
      (*(v14 + 32))(v11, v7, v13);
      (*(v14 + 16))(v12, v11, v13);
      __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
      sub_25424E098();
      sub_25424E088();
      (*(v14 + 8))(v11, v13);
    }

    (*(v9 + 8))(v8, v10);
  }

  v15 = v0[1];

  return v15();
}

uint64_t sub_25419FF58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a1;
  v4 = *v2;
  v5 = *(*v2 + 80);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
  v6 = sub_25424E098();
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v24 - v7;
  v11 = type metadata accessor for Promise.ValueType(255, v5, v9, v10);
  v12 = sub_25424E598();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v24 - v14;
  v16 = *(v4 + 96);
  swift_beginAccess();
  (*(v13 + 16))(v15, v2 + v16, v12);
  v17 = *(v11 - 8);
  if ((*(v17 + 48))(v15, 1, v11) == 1)
  {
    (*(v13 + 8))(v15, v12);
    v18 = *(*v2 + 104);
    if (*(v2 + v18))
    {
      v26 = *(v2 + v18);
      (*(v24 + 16))(v8, v25, v6);
      sub_25424E048();

      sub_25424E018();

      v19 = 1;
    }

    else
    {
      sub_25424EA68();
      v20 = v24;
      swift_allocObject();
      v19 = 1;
      v21 = sub_25424DFB8();
      (*(v20 + 16))(v22, v25, v6);
      sub_25424E048();
      *(v2 + v18) = v21;
    }
  }

  else
  {
    (*(v17 + 32))(a2, v15, v11);
    v19 = 0;
  }

  return (*(v17 + 56))(a2, v19, 1, v11);
}

uint64_t sub_2541A02B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  *(v6 + 72) = a5;
  *(v6 + 24) = a4;
  *(v6 + 32) = a6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5B8848, &qword_254261820);
  *(v6 + 40) = v7;
  *(v6 + 48) = *(v7 - 8);
  *(v6 + 56) = swift_task_alloc();
  *(v6 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541A0394, 0, 0);
}

uint64_t sub_2541A0394()
{
  v1 = *(v0 + 32);
  if (*(v0 + 72))
  {
    v2 = *(v1 + 16);
    if (v2)
    {
      v23 = *(v0 + 24);
      v3 = *(v0 + 48);
      v6 = *(v3 + 16);
      v4 = v3 + 16;
      v5 = v6;
      v7 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
      v8 = *(v4 + 56);
      do
      {
        v9 = *(v0 + 56);
        v10 = *(v0 + 40);
        v11 = *(v0 + 24);
        v5(v9, v7, v10);
        *(v0 + 16) = v23;
        sub_2541A1CE0(v11, 1);
        sub_25424E078();
        (*(v4 - 8))(v9, v10);
        v7 += v8;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v12 = *(v1 + 16);
    if (v12)
    {
      v13 = *(v0 + 48);
      v16 = *(v13 + 16);
      v14 = v13 + 16;
      v15 = v16;
      v17 = v1 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
      v18 = *(v14 + 56);
      do
      {
        v19 = *(v0 + 64);
        v20 = *(v0 + 40);
        v15(v19, v17, v20);
        sub_25424E088();
        (*(v14 - 8))(v19, v20);
        v17 += v18;
        --v12;
      }

      while (v12);
    }
  }

  v21 = *(v0 + 8);

  return v21();
}

uint64_t sub_2541A0538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F5BAF10, &qword_254253F40);
  v8 = sub_25424E098();
  v6[8] = v8;
  v9 = *(v8 - 8);
  v6[9] = v9;
  v6[10] = *(v9 + 64);
  v6[11] = swift_task_alloc();
  v6[12] = swift_task_alloc();
  v6[13] = *(a6 - 8);
  v6[14] = swift_task_alloc();
  v6[15] = swift_task_alloc();
  v12 = type metadata accessor for Promise.ValueType(0, a6, v10, v11);
  v6[16] = v12;
  v6[17] = *(v12 - 8);
  v6[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2541A06F8, 0, 0);
}

uint64_t sub_2541A06F8()
{
  (*(v0[17] + 16))(v0[18], v0[5], v0[16]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[18];
  if (EnumCaseMultiPayload == 1)
  {
    v3 = *v2;
    if (!sub_25424E008())
    {
      goto LABEL_22;
    }

    v4 = 0;
    v5 = v0[9];
    v24 = v0[10];
    while (1)
    {
      v6 = sub_25424DFF8();
      sub_25424DFC8();
      if (v6)
      {
        (*(v5 + 16))(v0[11], v0[6] + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v4, v0[8]);
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        result = sub_25424E6B8();
        if (v24 != 8)
        {
          __break(1u);
LABEL_28:
          __break(1u);
          return result;
        }

        v12 = v0[11];
        v13 = v0[8];
        v0[2] = result;
        (*(v5 + 16))(v12, v0 + 2, v13);
        swift_unknownObjectRelease();
        v7 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
LABEL_11:
          __break(1u);
          break;
        }
      }

      v8 = v0[11];
      v9 = v0[8];
      v0[3] = v3;
      v10 = v3;
      sub_25424E078();
      (*(v5 + 8))(v8, v9);
      ++v4;
      if (v7 == sub_25424E008())
      {
LABEL_22:

        goto LABEL_24;
      }
    }
  }

  (*(v0[13] + 32))(v0[15], v2, v0[7]);
  if (sub_25424E008())
  {
    v3 = 0;
    v14 = v0[9];
    v23 = v0[10];
    v15 = (v0[13] + 16);
    do
    {
      v16 = sub_25424DFF8();
      sub_25424DFC8();
      if (v16)
      {
        (*(v14 + 16))(v0[12], v0[6] + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v3, v0[8]);
        v17 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        result = sub_25424E6B8();
        if (v23 != 8)
        {
          goto LABEL_28;
        }

        v20 = v0[12];
        v21 = v0[8];
        v0[4] = result;
        (*(v14 + 16))(v20, v0 + 4, v21);
        swift_unknownObjectRelease();
        v17 = v3 + 1;
        if (__OFADD__(v3, 1))
        {
LABEL_21:
          __break(1u);
          goto LABEL_22;
        }
      }

      v18 = v0[12];
      v19 = v0[8];
      (*v15)(v0[14], v0[15], v0[7]);
      sub_25424E088();
      (*(v14 + 8))(v18, v19);
      ++v3;
    }

    while (v17 != sub_25424E008());
  }

  (*(v0[13] + 8))(v0[15], v0[7]);
LABEL_24:

  v22 = v0[1];

  return v22();
}

uint64_t Promise.deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(*v4 + 96);
  type metadata accessor for Promise.ValueType(255, *(*v4 + 80), a3, a4);
  v6 = sub_25424E598();
  (*(*(v6 - 8) + 8))(v4 + v5, v6);

  swift_defaultActor_destroy();
  return v4;
}

uint64_t Promise.__deallocating_deinit(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Promise.deinit(a1, a2, a3, a4);

  return MEMORY[0x282200960](v4);
}

BOOL Promise<>.resolve()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F5B90C0, &qword_254253F20);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9[-v2];
  swift_beginAccess();
  v4 = *(v0 + 120);
  if (v4 == 255)
  {
    *(v0 + 112) = 0;
    *(v0 + 120) = 0;
    v5 = *(v0 + 128);
    if (v5)
    {
      *(v0 + 128) = 0;
      v6 = sub_25424E128();
      (*(*(v6 - 8) + 56))(v3, 1, 1, v6);
      v9[0] = 0;
      v7 = swift_allocObject();
      *(v7 + 24) = 0;
      *(v7 + 32) = 0;
      *(v7 + 16) = 0;
      *(v7 + 40) = v9[0];
      *(v7 + 48) = v5;
      sub_25419CC1C(0, 0, v3, &unk_254257FF8, v7);
    }
  }

  return v4 != 255;
}

uint64_t Promise.resolve(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(*v4 + 80);
  v7 = type metadata accessor for Promise.ValueType(0, v6, a3, a4);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v15 - v9;
  (*(*(v6 - 8) + 16))(&v15 - v9, a1, v6);
  swift_storeEnumTagMultiPayload();
  LOBYTE(a1) = sub_25419F180(v10, v11, v12, v13);
  (*(v8 + 8))(v10, v7);
  return a1 & 1;
}

uint64_t sub_2541A0E54(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_2541A0F4C;

  return v6(a1);
}

uint64_t sub_2541A0F4C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_2541A1044(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *a4;
  v11 = *(a4 + 8);
  v12 = swift_task_alloc();
  *(v5 + 16) = v12;
  *v12 = v5;
  v12[1] = sub_25412F724;

  return sub_2541A02B8(a1, a2, a3, v10, v11, a5);
}

void sub_2541A1114(id a1, char a2)
{
  if (a2)
  {
  }
}

uint64_t sub_2541A1120(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[6];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_25412F818;

  return sub_2541A1044(a1, v4, v5, (v1 + 4), v6);
}

uint64_t sub_2541A11EC(uint64_t *a1)
{
  result = type metadata accessor for Future.ValueType(319, a1[2], a1[3], a1[4]);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2541A1260(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 16) - 8) + 64);
  v4 = *(*(a3 + 24) - 8);
  if (*(v4 + 64) > v3)
  {
    v3 = *(v4 + 64);
  }

  v5 = 8;
  if (v3 > 8)
  {
    v5 = v3;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_27;
  }

  v6 = v5 + 1;
  v7 = 8 * (v5 + 1);
  if ((v5 + 1) <= 3)
  {
    v10 = ((a2 + ~(-1 << v7) - 253) >> v7) + 1;
    if (HIWORD(v10))
    {
      v8 = *(a1 + v6);
      if (!v8)
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 > 0xFF)
    {
      v8 = *(a1 + v6);
      if (!*(a1 + v6))
      {
        goto LABEL_27;
      }

      goto LABEL_16;
    }

    if (v10 < 2)
    {
LABEL_27:
      v12 = *(a1 + v5);
      if (v12 >= 3)
      {
        return (v12 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v8 = *(a1 + v6);
  if (!*(a1 + v6))
  {
    goto LABEL_27;
  }

LABEL_16:
  v11 = (v8 - 1) << v7;
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

  return (v6 | v11) + 254;
}

void sub_2541A1394(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  if (v5 <= 8)
  {
    v5 = 8;
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
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

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
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
LABEL_41:
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
            goto LABEL_41;
          }
        }

LABEL_38:
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
      goto LABEL_41;
    }

    goto LABEL_38;
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

LABEL_27:
      a1[v5] = -a2;
      return;
    }

LABEL_26:
    if (!a2)
    {
      return;
    }

    goto LABEL_27;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_26;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_27;
  }
}

uint64_t sub_2541A1580(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Promise.ValueType(255, *(a1 + 80), a3, a4);
  result = sub_25424E598();
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_2541A1654(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_2541A199C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_2541A16CC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
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