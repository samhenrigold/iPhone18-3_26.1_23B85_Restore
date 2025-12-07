uint64_t ReminderEntity.lastModifiedDate.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB68, &unk_261D11C90);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(a1, v4, &qword_27FEDAB68, &unk_261D11C90);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDAB68, &unk_261D11C90);
}

uint64_t (*ReminderEntity.lastModifiedDate.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDAE84(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &qword_27FEDA160, &qword_261D02220);
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(v7, v5, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  return sub_261AE6A40(v7, &qword_27FEDA160, &qword_261D02220);
}

uint64_t ReminderEntity.dueDateComponents.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(a1, v4, &qword_27FEDA160, &qword_261D02220);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDA160, &qword_261D02220);
}

uint64_t (*ReminderEntity.dueDateComponents.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

double sub_261CDB0FC@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFCA04();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_261CDB150(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  type metadata accessor for ReminderEntity(0);
  sub_261B530B8(v2, v1, v3, v4);
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.earlyAlert.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t sub_261CDB2C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &qword_27FEDA9A0, &unk_261D034A0);
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(v7, v5, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  return sub_261AE6A40(v7, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t ReminderEntity.recurrenceRule.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9A0, &unk_261D034A0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(a1, v4, &qword_27FEDA9A0, &unk_261D034A0);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &qword_27FEDA9A0, &unk_261D034A0);
}

uint64_t (*ReminderEntity.recurrenceRule.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDB538(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  type metadata accessor for ReminderEntity(0);
  sub_261B5306C(v2, v1, v3);
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.spatialEventTrigger.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDB6B0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &unk_27FEDB0B0, &unk_261D035D0);
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(v7, v5, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  return sub_261AE6A40(v7, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t ReminderEntity.contactPerson.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(a1, v4, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*ReminderEntity.contactPerson.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDB928(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &unk_27FEDB0B0, &unk_261D035D0);
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(v7, v5, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  return sub_261AE6A40(v7, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t ReminderEntity.assignedPerson.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB0B0, &unk_261D035D0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(a1, v4, &unk_27FEDB0B0, &unk_261D035D0);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &unk_27FEDB0B0, &unk_261D035D0);
}

uint64_t (*ReminderEntity.assignedPerson.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDBBA0(uint64_t *a1)
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.notes.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t (*ReminderEntity.flags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t (*ReminderEntity.priorityLevel.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDBEEC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &unk_27FEDE110, &unk_261D035B0);
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(v7, v5, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCA14();
  return sub_261AE6A40(v7, &unk_27FEDE110, &unk_261D035B0);
}

uint64_t ReminderEntity.parent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for ReminderEntity(0);
  sub_261AFB668(a1, v4, &unk_27FEDE110, &unk_261D035B0);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &unk_27FEDE110, &unk_261D035B0);
}

uint64_t (*ReminderEntity.parent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDC164(uint64_t *a1)
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDC2B8()
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFCA04();
  return v1;
}

uint64_t (*ReminderEntity.reminderSubtasks.modify(void *a1))(uint64_t *a1, char a2)
{
  a1[2] = *(v1 + *(type metadata accessor for ReminderEntity(0) + 108));
  sub_261CFCA04();
  return sub_261CDC394;
}

uint64_t sub_261CDC394(uint64_t *a1, char a2)
{
  a1[1] = *a1;
  if ((a2 & 1) == 0)
  {
    return sub_261CFCA14();
  }

  sub_261CFD104();
  sub_261CFCA14();
}

uint64_t sub_261CDC408(uint64_t *a1)
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.hashtags.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDC558(uint64_t *a1)
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.images.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDC6A8(uint64_t *a1)
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ReminderEntity.urls.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for ReminderEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CDC7F8()
{
  v25 = sub_261CFF9A4();
  v0 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_261CFFA24();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = v19 - v4;
  v5 = sub_261CFD674();
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x28223BE20](v11);
  v12 = sub_261CFD234();
  __swift_allocate_value_buffer(v12, qword_27FEDE3E0);
  v21 = __swift_project_value_buffer(v12, qword_27FEDE3E0);
  sub_261CFF9B4();
  sub_261CFD874();
  v13 = *MEMORY[0x277CC9110];
  v14 = *(v6 + 104);
  v19[1] = v6 + 104;
  v14(v8, v13, v5);
  sub_261CFD6C4();
  sub_261CFFA14();
  sub_261CFFA04();
  v16 = v24;
  v15 = v25;
  (*(v0 + 104))(v24, *MEMORY[0x277CC9BD8], v25);
  sub_261CFF9C4();
  (*(v0 + 8))(v16, v15);
  sub_261CFFA04();
  sub_261CFFA34();
  sub_261CFD874();
  v14(v8, v13, v20);
  v17 = v26;
  sub_261CFD6C4();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_261CFD224();
}

uint64_t static ReminderEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D60 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE3E0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static ReminderEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9D60 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE3E0);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static ReminderEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FED9D60 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFD234();
  __swift_project_value_buffer(v1, qword_27FEDE3E0);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261CDCED0@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D60 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE3E0);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261CDCF90(uint64_t a1)
{
  if (qword_27FED9D60 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE3E0);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t ReminderEntity.displayRepresentation.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v16 - v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_261CFFA24();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFD6A4();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v16 - v12;
  sub_261CFFA14();
  sub_261CFFA04();
  type metadata accessor for ReminderEntity(0);
  sub_261CFCA04();
  sub_261CFF9E4();

  sub_261CFFA04();
  sub_261CFD684();
  (*(v8 + 16))(v11, v13, v7);
  (*(v8 + 56))(v5, 1, 1, v7);
  v14 = sub_261CFD074();
  (*(*(v14 - 8) + 56))(v2, 1, 1, v14);
  sub_261CFD0A4();
  return (*(v8 + 8))(v13, v7);
}

uint64_t ReminderEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v3[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3[8] = swift_task_alloc();
  sub_261CFFA24();
  v3[9] = swift_task_alloc();
  v4 = sub_261CFD004();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = sub_261CFD6A4();
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261CDD4F8, 0, 0);
}

uint64_t sub_261CDD4F8()
{
  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  sub_261CFD664();
  sub_261CFCFE4();
  sub_261AE83CC(&qword_27FED9F90, MEMORY[0x277CBA238], MEMORY[0x277CBA240]);
  v4 = sub_261D001B4();
  (*(v2 + 8))(v1, v3);
  if (v4)
  {
    v6 = v0[15];
    v5 = v0[16];
    v7 = v0[13];
    v8 = v0[14];
    sub_261CFFA14();
    sub_261CFFA04();
    type metadata accessor for ReminderEntity(0);
    sub_261CFCA04();
    sub_261CFF9E4();

    sub_261CFFA04();
    sub_261CFD684();
    (*(v8 + 8))(v5, v7);
    (*(v8 + 32))(v5, v6, v7);
  }

  v9 = v0[16];
  v10 = v0[13];
  v11 = v0[14];
  v12 = v0[8];
  v13 = v0[7];
  (*(v11 + 16))(v0[15], v9, v10);
  (*(v11 + 56))(v12, 1, 1, v10);
  v14 = sub_261CFD074();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_261CFD0A4();
  (*(v11 + 8))(v9, v10);

  v15 = v0[1];

  return v15();
}

uint64_t sub_261CDD9B0@<X0>(void *a1@<X8>)
{
  if (qword_27FED9D68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDE3F8 + 1);
  *a1 = xmmword_27FEDE3F8;
  a1[1] = v2;
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

uint64_t static ReminderEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9D68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDE3F8 + 1);
  *a1 = xmmword_27FEDE3F8;
  a1[1] = v2;
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

void *sub_261CDDAC0@<X0>(void *a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

uint64_t sub_261CDDB38(uint64_t a1)
{
  v2 = sub_261AE83CC(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261CDDBB8(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return ReminderEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_261CDDC60(uint64_t a1)
{
  v2 = sub_261AE83CC(&qword_280D22330, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261CDDCDC()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  *&xmmword_27FEDE3F8 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDDE90, &qword_261D11470);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *(&xmmword_27FEDE3F8 + 1) = result;
  return result;
}

uint64_t static ReminderEntity.defaultQuery.setter(__int128 *a1)
{
  v2 = *a1;
  if (qword_27FED9D68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27FEDE3F8 = v2;
}

uint64_t (*static ReminderEntity.defaultQuery.modify(uint64_t a1))(void)
{
  if (qword_27FED9D68 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_261CDDEB4()
{
  result = qword_27FEDE408;
  if (!qword_27FEDE408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE408);
  }

  return result;
}

unint64_t sub_261CDDF08(uint64_t a1)
{
  result = sub_261CDDF30();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261CDDF30()
{
  result = qword_27FEDE410;
  if (!qword_27FEDE410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE410);
  }

  return result;
}

unint64_t sub_261CDDF88()
{
  result = qword_27FEDE418;
  if (!qword_27FEDE418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE418);
  }

  return result;
}

unint64_t sub_261CDDFE0()
{
  result = qword_27FEDE420;
  if (!qword_27FEDE420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE420);
  }

  return result;
}

unint64_t sub_261CDE038()
{
  result = qword_27FEDE428;
  if (!qword_27FEDE428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE428);
  }

  return result;
}

unint64_t sub_261CDE0D4()
{
  result = qword_27FEDE440;
  if (!qword_27FEDE440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE440);
  }

  return result;
}

unint64_t sub_261CDE128()
{
  result = qword_280D22368;
  if (!qword_280D22368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22368);
  }

  return result;
}

unint64_t sub_261CDE180()
{
  result = qword_27FEDE448;
  if (!qword_27FEDE448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE448);
  }

  return result;
}

unint64_t sub_261CDE1F0()
{
  result = qword_27FEDE450;
  if (!qword_27FEDE450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE450);
  }

  return result;
}

unint64_t sub_261CDE24C()
{
  result = qword_27FEDE458;
  if (!qword_27FEDE458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE458);
  }

  return result;
}

unint64_t sub_261CDE2A4()
{
  result = qword_27FEDE460;
  if (!qword_27FEDE460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE460);
  }

  return result;
}

unint64_t sub_261CDE2F8(uint64_t a1)
{
  result = sub_261CDE320();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261CDE320()
{
  result = qword_27FEDE468;
  if (!qword_27FEDE468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE468);
  }

  return result;
}

unint64_t sub_261CDE378()
{
  result = qword_27FEDE470;
  if (!qword_27FEDE470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE470);
  }

  return result;
}

unint64_t sub_261CDE3D0()
{
  result = qword_27FEDE478;
  if (!qword_27FEDE478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE478);
  }

  return result;
}

unint64_t sub_261CDE428()
{
  result = qword_27FEDE480;
  if (!qword_27FEDE480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE480);
  }

  return result;
}

unint64_t sub_261CDE4C4()
{
  result = qword_27FEDE498;
  if (!qword_27FEDE498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE498);
  }

  return result;
}

unint64_t sub_261CDE51C()
{
  result = qword_27FEDE4A0;
  if (!qword_27FEDE4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE4A0);
  }

  return result;
}

unint64_t sub_261CDE5E0()
{
  result = qword_27FEDE4A8;
  if (!qword_27FEDE4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE4A8);
  }

  return result;
}

unint64_t sub_261CDE63C()
{
  result = qword_27FEDE4B0;
  if (!qword_27FEDE4B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE4B0);
  }

  return result;
}

unint64_t sub_261CDE694()
{
  result = qword_27FEDE4B8;
  if (!qword_27FEDE4B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE4B8);
  }

  return result;
}

unint64_t sub_261CDE734()
{
  result = qword_27FEDE4C8;
  if (!qword_27FEDE4C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE4C8);
  }

  return result;
}

unint64_t sub_261CDE78C()
{
  result = qword_27FEDE4D0;
  if (!qword_27FEDE4D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE4D0);
  }

  return result;
}

uint64_t sub_261CDE7E0(uint64_t a1)
{
  result = sub_261AE83CC(&qword_27FEDE4D8, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  *(a1 + 8) = result;
  return result;
}

void *keypath_get_57Tm@<X0>(void *a1@<X8>)
{
  type metadata accessor for ReminderEntity(0);
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for ReminderEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v7 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v7 = a1;
    v8 = a2[2];
    a1[1] = a2[1];
    a1[2] = v8;
    v35 = a2[4];
    a1[3] = a2[3];
    a1[4] = v35;
    a1[5] = a2[5];
    v9 = a3[10];
    v10 = a1 + v9;
    v11 = a2 + v9;
    v12 = *(a2 + v9 + 8);
    *v10 = *(a2 + v9);
    *(v10 + 1) = v12;
    v34 = type metadata accessor for AppEntityID(0);
    v13 = *(v34 + 20);
    v14 = sub_261CFD844();
    v33 = *(*(v14 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFD104();
    v33(&v10[v13], &v11[v13], v14);
    v15 = *(v34 + 24);
    v16 = &v10[v15];
    v17 = &v11[v15];
    v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18))
    {
      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v16, v17, *(*(v20 - 8) + 64));
    }

    else
    {
      v21 = sub_261CFD4E4();
      (*(*(v21 - 8) + 16))(v16, v17, v21);
      v16[*(v18 + 20)] = v17[*(v18 + 20)];
      (*(v19 + 56))(v16, 0, 1, v18);
    }

    v22 = a3[12];
    *(v7 + a3[11]) = *(a2 + a3[11]);
    *(v7 + v22) = *(a2 + v22);
    v23 = a3[14];
    *(v7 + a3[13]) = *(a2 + a3[13]);
    *(v7 + v23) = *(a2 + v23);
    v24 = a3[16];
    *(v7 + a3[15]) = *(a2 + a3[15]);
    *(v7 + v24) = *(a2 + v24);
    v25 = a3[18];
    *(v7 + a3[17]) = *(a2 + a3[17]);
    *(v7 + v25) = *(a2 + v25);
    v26 = a3[20];
    *(v7 + a3[19]) = *(a2 + a3[19]);
    *(v7 + v26) = *(a2 + v26);
    v27 = a3[22];
    *(v7 + a3[21]) = *(a2 + a3[21]);
    *(v7 + v27) = *(a2 + v27);
    v28 = a3[24];
    *(v7 + a3[23]) = *(a2 + a3[23]);
    *(v7 + v28) = *(a2 + v28);
    v29 = a3[26];
    *(v7 + a3[25]) = *(a2 + a3[25]);
    *(v7 + v29) = *(a2 + v29);
    v30 = a3[28];
    *(v7 + a3[27]) = *(a2 + a3[27]);
    *(v7 + v30) = *(a2 + v30);
    v31 = a3[30];
    *(v7 + a3[29]) = *(a2 + a3[29]);
    *(v7 + v31) = *(a2 + v31);
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
  }

  sub_261CFCDA4();
  return v7;
}

uint64_t destroy for ReminderEntity(void *a1, int *a2)
{

  v4 = a1 + a2[10];

  v5 = type metadata accessor for AppEntityID(0);
  v6 = *(v5 + 20);
  v7 = sub_261CFD844();
  (*(*(v7 - 8) + 8))(&v4[v6], v7);
  v8 = *(v5 + 24);
  v9 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if (!(*(*(v9 - 8) + 48))(&v4[v8], 1, v9))
  {
    v10 = sub_261CFD4E4();
    (*(*(v10 - 8) + 8))(&v4[v8], v10);
  }
}

uint64_t *initializeWithCopy for ReminderEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  v7 = a2[3];
  a1[2] = a2[2];
  a1[3] = v7;
  v8 = a2[5];
  a1[4] = a2[4];
  a1[5] = v8;
  v9 = a3[10];
  v10 = a1 + v9;
  v11 = a2 + v9;
  v12 = *(a2 + v9 + 8);
  *v10 = *(a2 + v9);
  *(v10 + 1) = v12;
  v34 = type metadata accessor for AppEntityID(0);
  v13 = *(v34 + 20);
  v14 = sub_261CFD844();
  v33 = *(*(v14 - 8) + 16);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v33(&v10[v13], &v11[v13], v14);
  v15 = *(v34 + 24);
  v16 = &v10[v15];
  v17 = &v11[v15];
  v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18))
  {
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v16, v17, *(*(v20 - 8) + 64));
  }

  else
  {
    v21 = sub_261CFD4E4();
    (*(*(v21 - 8) + 16))(v16, v17, v21);
    v16[*(v18 + 20)] = v17[*(v18 + 20)];
    (*(v19 + 56))(v16, 0, 1, v18);
  }

  v22 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v22) = *(a2 + v22);
  v23 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v23) = *(a2 + v23);
  v24 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[18];
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + v25) = *(a2 + v25);
  v26 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v26) = *(a2 + v26);
  v27 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  *(a1 + v27) = *(a2 + v27);
  v28 = a3[24];
  *(a1 + a3[23]) = *(a2 + a3[23]);
  *(a1 + v28) = *(a2 + v28);
  v29 = a3[26];
  *(a1 + a3[25]) = *(a2 + a3[25]);
  *(a1 + v29) = *(a2 + v29);
  v30 = a3[28];
  *(a1 + a3[27]) = *(a2 + a3[27]);
  *(a1 + v30) = *(a2 + v30);
  v31 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + v31) = *(a2 + v31);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for ReminderEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  a1[4] = a2[4];
  sub_261CFCDA4();

  a1[5] = a2[5];
  sub_261CFCDA4();

  v6 = a3[10];
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  *(v7 + 1) = *(a2 + v6 + 8);
  sub_261CFD104();

  v9 = type metadata accessor for AppEntityID(0);
  v10 = *(v9 + 20);
  v11 = sub_261CFD844();
  (*(*(v11 - 8) + 24))(&v7[v10], &v8[v10], v11);
  v12 = *(v9 + 24);
  v13 = &v7[v12];
  v14 = &v8[v12];
  v15 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v16 = *(v15 - 8);
  v17 = *(v16 + 48);
  LODWORD(v10) = v17(v13, 1, v15);
  v18 = v17(v14, 1, v15);
  if (!v10)
  {
    if (!v18)
    {
      v22 = sub_261CFD4E4();
      (*(*(v22 - 8) + 24))(v13, v14, v22);
      v13[*(v15 + 20)] = v14[*(v15 + 20)];
      goto LABEL_7;
    }

    sub_261CDF898(v13, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v18)
  {
LABEL_6:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v13, v14, *(*(v20 - 8) + 64));
    goto LABEL_7;
  }

  v19 = sub_261CFD4E4();
  (*(*(v19 - 8) + 16))(v13, v14, v19);
  v13[*(v15 + 20)] = v14[*(v15 + 20)];
  (*(v16 + 56))(v13, 0, 1, v15);
LABEL_7:
  *(a1 + a3[11]) = *(a2 + a3[11]);
  sub_261CFCDA4();

  *(a1 + a3[12]) = *(a2 + a3[12]);
  sub_261CFCDA4();

  *(a1 + a3[13]) = *(a2 + a3[13]);
  sub_261CFCDA4();

  *(a1 + a3[14]) = *(a2 + a3[14]);
  sub_261CFCDA4();

  *(a1 + a3[15]) = *(a2 + a3[15]);
  sub_261CFCDA4();

  *(a1 + a3[16]) = *(a2 + a3[16]);
  sub_261CFCDA4();

  *(a1 + a3[17]) = *(a2 + a3[17]);
  sub_261CFCDA4();

  *(a1 + a3[18]) = *(a2 + a3[18]);
  sub_261CFCDA4();

  *(a1 + a3[19]) = *(a2 + a3[19]);
  sub_261CFCDA4();

  *(a1 + a3[20]) = *(a2 + a3[20]);
  sub_261CFCDA4();

  *(a1 + a3[21]) = *(a2 + a3[21]);
  sub_261CFCDA4();

  *(a1 + a3[22]) = *(a2 + a3[22]);
  sub_261CFCDA4();

  *(a1 + a3[23]) = *(a2 + a3[23]);
  sub_261CFCDA4();

  *(a1 + a3[24]) = *(a2 + a3[24]);
  sub_261CFCDA4();

  *(a1 + a3[25]) = *(a2 + a3[25]);
  sub_261CFCDA4();

  *(a1 + a3[26]) = *(a2 + a3[26]);
  sub_261CFCDA4();

  *(a1 + a3[27]) = *(a2 + a3[27]);
  sub_261CFCDA4();

  *(a1 + a3[28]) = *(a2 + a3[28]);
  sub_261CFCDA4();

  *(a1 + a3[29]) = *(a2 + a3[29]);
  sub_261CFCDA4();

  *(a1 + a3[30]) = *(a2 + a3[30]);
  sub_261CFCDA4();

  return a1;
}

uint64_t sub_261CDF898(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

_OWORD *initializeWithTake for ReminderEntity(_OWORD *a1, _OWORD *a2, int *a3)
{
  v6 = a2[1];
  *a1 = *a2;
  a1[1] = v6;
  a1[2] = a2[2];
  v7 = a3[10];
  v8 = a1 + v7;
  v9 = a2 + v7;
  *(a1 + v7) = *(a2 + v7);
  v10 = type metadata accessor for AppEntityID(0);
  v11 = *(v10 + 20);
  v12 = sub_261CFD844();
  (*(*(v12 - 8) + 32))(&v8[v11], &v9[v11], v12);
  v13 = *(v10 + 24);
  v14 = &v8[v13];
  v15 = &v9[v13];
  v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v17 = *(v16 - 8);
  if ((*(v17 + 48))(v15, 1, v16))
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v14, v15, *(*(v18 - 8) + 64));
  }

  else
  {
    v19 = sub_261CFD4E4();
    (*(*(v19 - 8) + 32))(v14, v15, v19);
    v14[*(v16 + 20)] = v15[*(v16 + 20)];
    (*(v17 + 56))(v14, 0, 1, v16);
  }

  v20 = a3[12];
  *(a1 + a3[11]) = *(a2 + a3[11]);
  *(a1 + v20) = *(a2 + v20);
  v21 = a3[14];
  *(a1 + a3[13]) = *(a2 + a3[13]);
  *(a1 + v21) = *(a2 + v21);
  v22 = a3[16];
  *(a1 + a3[15]) = *(a2 + a3[15]);
  *(a1 + v22) = *(a2 + v22);
  v23 = a3[18];
  *(a1 + a3[17]) = *(a2 + a3[17]);
  *(a1 + v23) = *(a2 + v23);
  v24 = a3[20];
  *(a1 + a3[19]) = *(a2 + a3[19]);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  *(a1 + v25) = *(a2 + v25);
  v26 = a3[24];
  *(a1 + a3[23]) = *(a2 + a3[23]);
  *(a1 + v26) = *(a2 + v26);
  v27 = a3[26];
  *(a1 + a3[25]) = *(a2 + a3[25]);
  *(a1 + v27) = *(a2 + v27);
  v28 = a3[28];
  *(a1 + a3[27]) = *(a2 + a3[27]);
  *(a1 + v28) = *(a2 + v28);
  v29 = a3[30];
  *(a1 + a3[29]) = *(a2 + a3[29]);
  *(a1 + v29) = *(a2 + v29);
  return a1;
}

uint64_t *assignWithTake for ReminderEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  a1[4] = a2[4];

  a1[5] = a2[5];

  v6 = a3[10];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a2 + v6 + 8);
  *v7 = *(a2 + v6);
  *(v7 + 1) = v9;

  v10 = type metadata accessor for AppEntityID(0);
  v11 = *(v10 + 20);
  v12 = sub_261CFD844();
  (*(*(v12 - 8) + 40))(&v7[v11], &v8[v11], v12);
  v13 = *(v10 + 24);
  v14 = &v7[v13];
  v15 = &v8[v13];
  v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  LODWORD(v11) = v18(v14, 1, v16);
  v19 = v18(v15, 1, v16);
  if (!v11)
  {
    if (!v19)
    {
      v23 = sub_261CFD4E4();
      (*(*(v23 - 8) + 40))(v14, v15, v23);
      v14[*(v16 + 20)] = v15[*(v16 + 20)];
      goto LABEL_7;
    }

    sub_261CDF898(v14, type metadata accessor for RecurrentInstanceSpecifier);
    goto LABEL_6;
  }

  if (v19)
  {
LABEL_6:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v14, v15, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v20 = sub_261CFD4E4();
  (*(*(v20 - 8) + 32))(v14, v15, v20);
  v14[*(v16 + 20)] = v15[*(v16 + 20)];
  (*(v17 + 56))(v14, 0, 1, v16);
LABEL_7:
  *(a1 + a3[11]) = *(a2 + a3[11]);

  *(a1 + a3[12]) = *(a2 + a3[12]);

  *(a1 + a3[13]) = *(a2 + a3[13]);

  *(a1 + a3[14]) = *(a2 + a3[14]);

  *(a1 + a3[15]) = *(a2 + a3[15]);

  *(a1 + a3[16]) = *(a2 + a3[16]);

  *(a1 + a3[17]) = *(a2 + a3[17]);

  *(a1 + a3[18]) = *(a2 + a3[18]);

  *(a1 + a3[19]) = *(a2 + a3[19]);

  *(a1 + a3[20]) = *(a2 + a3[20]);

  *(a1 + a3[21]) = *(a2 + a3[21]);

  *(a1 + a3[22]) = *(a2 + a3[22]);

  *(a1 + a3[23]) = *(a2 + a3[23]);

  *(a1 + a3[24]) = *(a2 + a3[24]);

  *(a1 + a3[25]) = *(a2 + a3[25]);

  *(a1 + a3[26]) = *(a2 + a3[26]);

  *(a1 + a3[27]) = *(a2 + a3[27]);

  *(a1 + a3[28]) = *(a2 + a3[28]);

  *(a1 + a3[29]) = *(a2 + a3[29]);

  *(a1 + a3[30]) = *(a2 + a3[30]);

  return a1;
}

__n128 sub_261CE0010(__n128 *a1, __n128 *a2)
{
  v2 = a2->n128_u64[1];
  if (v2 < 0xFFFFFFFF)
  {
    result = *a2;
    *a1 = *a2;
  }

  else
  {
    a1->n128_u64[0] = a2->n128_u64[0];
    a1->n128_u64[1] = v2;
    sub_261CFD104();
  }

  return result;
}

void *_s17TriggerSyncReasonOwca(void *a1, void *a2)
{
  v3 = a2[1];
  if (a1[1] < 0xFFFFFFFFuLL)
  {
    if (v3 >= 0xFFFFFFFF)
    {
      *a1 = *a2;
      a1[1] = a2[1];
      sub_261CFD104();
      return a1;
    }

    v5 = *a2;
LABEL_8:
    *a1 = v5;
    return a1;
  }

  if (v3 < 0xFFFFFFFF)
  {

    v5 = *a2;
    goto LABEL_8;
  }

  *a1 = *a2;
  a1[1] = a2[1];
  sub_261CFD104();

  return a1;
}

_OWORD *_s17TriggerSyncReasonOwta(_OWORD *result, uint64_t a2)
{
  if (*(result + 1) < 0xFFFFFFFFuLL)
  {
    *result = *a2;
  }

  else
  {
    v2 = *(a2 + 8);
    if (v2 < 0xFFFFFFFF)
    {
      v3 = result;

      *v3 = *a2;
    }

    else
    {
      *result = *a2;
      *(result + 1) = v2;
      v3 = result;
    }

    return v3;
  }

  return result;
}

uint64_t _s17TriggerSyncReasonOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 16))
  {
    return (*a1 + 2147483645);
  }

  v3 = *(a1 + 8);
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

uint64_t _s17TriggerSyncReasonOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_261CE022C(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t ListEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA120, &qword_261D02820);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t ListEntityQuery.suggestedEntities()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261CE0308, 0, 0);
}

uint64_t sub_261CE0308()
{
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261B6EAB8;
  v2 = v0[2];
  v3 = v0[3];

  return sub_261C523B8(v2, "ListEntityQuery.suggestedEntities", 33, 2, v3);
}

uint64_t ListEntityQuery.defaultListEntity()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261CE03F0, 0, 0);
}

uint64_t sub_261CE03F0()
{
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261B6CCA4;
  v2 = v0[2];
  v3 = v0[3];

  return sub_261C538B0(v2, "ListEntityQuery.defaultListEntity", 33, 2, v3);
}

uint64_t ListEntityQuery.entities(for:)(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261CE04D8, 0, 0);
}

uint64_t sub_261CE04D8()
{
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261B0E3F8;
  v3 = v0[2];
  v2 = v0[3];

  return sub_261C61738("ListEntityQuery.entitiesForIdentifiers", 38, 2, v2, v3);
}

uint64_t sub_261CE05A8(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x2822009F8](sub_261CE05C8, 0, 0);
}

uint64_t sub_261CE05C8()
{
  v1 = *(v0 + 72);
  sub_261B6C4A4(0xD000000000000013, 0x8000000261D1B3A0);
  sub_261CFC664();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 56) = v1;
  *(v0 + 96) = 0;
  v7 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_261CE0740;
  v5 = *(v0 + 64);

  return v7(v5, v0 + 56, v0 + 96, v2, v3);
}

uint64_t sub_261CE0740()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_261CE1D6C;
  }

  else
  {
    v2 = sub_261CE1D70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261CE0854(uint64_t a1, uint64_t a2)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
  return MEMORY[0x2822009F8](sub_261CE0874, 0, 0);
}

uint64_t sub_261CE0874()
{
  v1 = *(v0 + 72);
  sub_261B6C4A4(0xD000000000000013, 0x8000000261D23660);
  sub_261CFC664();
  v2 = *(v0 + 40);
  v3 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v2);
  *(v0 + 56) = v1;
  *(v0 + 96) = 0;
  v7 = (*(v3 + 32) + **(v3 + 32));
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  *v4 = v0;
  v4[1] = sub_261CE0740;
  v5 = *(v0 + 64);

  return v7(v5, v0 + 56, v0 + 96, v2, v3);
}

uint64_t ListEntityQuery.SuggestionCriteria.hashValue.getter()
{
  v1 = *v0;
  sub_261D006C4();
  MEMORY[0x26671CDA0](v1);
  return sub_261D006F4();
}

uint64_t sub_261CE0A74(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 97) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  return MEMORY[0x2822009F8](sub_261CE0A98, 0, 0);
}

uint64_t sub_261CE0A98()
{
  v1 = *(v0 + 97);
  v2 = *(v0 + 72);
  sub_261B6C4A4(0xD00000000000001CLL, 0x8000000261D23640);
  sub_261CFC664();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *(v0 + 56) = v2;
  *(v0 + 96) = v1;
  v8 = (*(v4 + 24) + **(v4 + 24));
  v5 = swift_task_alloc();
  *(v0 + 80) = v5;
  *v5 = v0;
  v5[1] = sub_261CE0740;
  v6 = *(v0 + 64);

  return v8(v6, v0 + 56, v0 + 96, v3, v4);
}

uint64_t sub_261CE0C1C(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 97) = a3;
  *(v3 + 64) = a1;
  *(v3 + 72) = a2;
  return MEMORY[0x2822009F8](sub_261CE0C40, 0, 0);
}

uint64_t sub_261CE0C40(uint64_t a1)
{
  v2 = *(v1 + 97);
  v3 = *(v1 + 72);
  sub_261CFC664();
  v4 = *(v1 + 40);
  v5 = *(v1 + 48);
  __swift_project_boxed_opaque_existential_1((v1 + 16), v4);
  *(v1 + 56) = v3;
  *(v1 + 96) = v2;
  v9 = (*(v5 + 32) + **(v5 + 32));
  v6 = swift_task_alloc();
  *(v1 + 80) = v6;
  *v6 = v1;
  v6[1] = sub_261CE0DA8;
  v7 = *(v1 + 64);

  return v9(v7, v1 + 56, v1 + 96, v4, v5);
}

uint64_t sub_261CE0DA8()
{
  *(*v1 + 88) = v0;

  if (v0)
  {
    v2 = sub_261CE0EBC;
  }

  else
  {
    v2 = sub_261B6D1F0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261CE0EBC()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261CE0F20@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA120, &qword_261D02820);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  *a1 = result;
  return result;
}

uint64_t sub_261CE0FAC(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261CE0FD0, 0, 0);
}

uint64_t sub_261CE0FD0()
{
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = sub_261B0D104;
  v3 = v0[2];
  v2 = v0[3];

  return sub_261C61738("ListEntityQuery.entitiesForIdentifiers", 38, 2, v2, v3);
}

uint64_t sub_261CE10A0(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_261CE0308, 0, 0);
}

uint64_t sub_261CE10C4(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_261B0054C();
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t ListEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_261CE11A0, 0, 0);
}

uint64_t sub_261CE11A0()
{
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_261B6EABC;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_261C52BB8(v4, "ListEntityQuery.entitiesMatchingString", 38, 2, v2, v5, v3);
}

uint64_t sub_261CE1274(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[10] = a3;
  v4[11] = a4;
  v4[8] = a1;
  v4[9] = a2;
  return MEMORY[0x2822009F8](sub_261CE1298, 0, 0);
}

uint64_t sub_261CE1298()
{
  v1 = v0[9];
  sub_261B6C4A4(0xD000000000000013, 0x8000000261D19BA0);
  sub_261CFC664();
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[7] = v1;
  v9 = (*(v3 + 16) + **(v3 + 16));
  v4 = swift_task_alloc();
  v0[12] = v4;
  *v4 = v0;
  v4[1] = sub_261CE1408;
  v5 = v0[10];
  v6 = v0[11];
  v7 = v0[8];

  return v9(v7, v0 + 7, v5, v6, v2, v3);
}

uint64_t sub_261CE1408()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_261B6D254;
  }

  else
  {
    v2 = sub_261CE1D70;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_261CE151C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](sub_261CE1544, 0, 0);
}

uint64_t sub_261CE1544()
{
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_261B6D3B4;
  v3 = v0[4];
  v2 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_261C52BB8(v4, "ListEntityQuery.entitiesMatchingString", 38, 2, v2, v5, v3);
}

unint64_t sub_261CE161C()
{
  result = qword_27FEDE500;
  if (!qword_27FEDE500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE500);
  }

  return result;
}

unint64_t sub_261CE1674()
{
  result = qword_27FEDE508;
  if (!qword_27FEDE508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE508);
  }

  return result;
}

unint64_t sub_261CE16CC()
{
  result = qword_27FEDE510;
  if (!qword_27FEDE510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE510);
  }

  return result;
}

unint64_t sub_261CE1758()
{
  result = qword_27FEDE518;
  if (!qword_27FEDE518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE518);
  }

  return result;
}

unint64_t sub_261CE17E4()
{
  result = qword_27FEDA2F8;
  if (!qword_27FEDA2F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA300, qword_261D02728);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA2F8);
  }

  return result;
}

uint64_t dispatch thunk of ListEntityListQueryPerforming.entities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261B01F5C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ListEntityListQueryPerforming.entities(query:matching:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 16) + **(a6 + 16));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_261AF4BDC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of ListEntityListQueryPerforming.suggestedEntities(query:criteria:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_261AF4BDC;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of ListEntityListQueryPerforming.defaultListEntity(query:criteria:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_261AF43A8;

  return v13(a1, a2, a3, a4, a5);
}

uint64_t ColorEntityQuery.init()@<X0>(uint64_t *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE520, &qword_261D128D0);
  swift_getKeyPath();
  *a1 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE528, &qword_261D12900);
  swift_getKeyPath();
  a1[1] = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE530, &qword_261D12930);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  a1[2] = result;
  return result;
}

uint64_t ColorEntityQuery.entities(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_261CE1E88, 0, 0);
}

uint64_t sub_261CE1E88()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_261CE39D0;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_261C61F5C("ColorEntityQuery.entitiesForIdentifiers", 39, 2, v4, v2, v3, v5);
}

uint64_t ColorEntityQuery.suggestedEntities()()
{
  *(v1 + 16) = *v0;
  *(v1 + 32) = *(v0 + 16);
  return MEMORY[0x2822009F8](sub_261CE1FA4, 0, 0);
}

uint64_t sub_261CE1FA4()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[5] = v1;
  *v1 = v0;
  v1[1] = sub_261CE2088;
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[2];

  return sub_261C62794("ColorEntityQuery.suggestedEntities", 34, 2, v4, v2, v3);
}

uint64_t sub_261CE2088(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_261CE21EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[15] = a3;
  v4[16] = a4;
  v4[13] = a1;
  v4[14] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v4[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261CE228C, 0, 0);
}

uint64_t sub_261CE228C()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);
  v9 = *(v0 + 112);
  sub_261B6C640(0xD000000000000013, 0x8000000261D1B3A0);
  sub_261CFC664();
  v3 = *(v0 + 40);
  v4 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v3);
  *&v5 = v1;
  *(&v5 + 1) = v9;
  *(v0 + 72) = v5;
  *(v0 + 56) = v9;
  *(v0 + 88) = *(&v9 + 1);
  *(v0 + 96) = v1;
  sub_261CE2650(v2);
  v10 = (*(v4 + 16) + **(v4 + 16));
  v6 = swift_task_alloc();
  *(v0 + 144) = v6;
  *v6 = v0;
  v6[1] = sub_261CE242C;
  v7 = *(v0 + 136);

  return v10(v0 + 56, v7, v3, v4);
}

uint64_t sub_261CE242C(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 152) = v1;

  if (v1)
  {
    sub_261B59E9C(*(v4 + 136));
    v5 = sub_261CE25E0;
  }

  else
  {
    v6 = *(v4 + 136);
    *(v4 + 160) = a1;
    sub_261B59E9C(v6);
    v5 = sub_261CE2564;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_261CE2564()
{
  **(v0 + 104) = *(v0 + 160);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261CE25E0()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261CE2650@<X0>(char *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v12 - v3;
  if (sub_261CFD1F4())
  {
    swift_getKeyPath();
    sub_261BECB94();
    sub_261CFCD54();

    v5 = type metadata accessor for ListEntity(0);
    v6 = *(*(v5 - 8) + 56);
    v6(v4, 0, 1, v5);
    sub_261B01E2C(v4, a1);
    return (v6)(a1, 0, 1, v5);
  }

  else
  {
    v8 = type metadata accessor for ListEntity(0);
    v9 = *(v8 - 8);
    v10 = *(v9 + 56);
    v11 = 1;
    v10(v4, 1, 1, v8);
    if (sub_261CFD1F4())
    {
      swift_getKeyPath();
      sub_261BECB94();
      sub_261CFCD54();

      v11 = 0;
    }

    v10(a1, v11, 1, v8);
    result = (*(v9 + 48))(v4, 1, v8);
    if (result != 1)
    {
      return sub_261B59E9C(v4);
    }
  }

  return result;
}

uint64_t sub_261CE289C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_261CE28CC, 0, 0);
}

uint64_t sub_261CE28CC()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_261CE29BC;
  v2 = v0[4];
  v3 = v0[5];
  v5 = v0[2];
  v4 = v0[3];

  return sub_261C61F5C("ColorEntityQuery.entitiesForIdentifiers", 39, 2, v4, v2, v3, v5);
}

uint64_t sub_261CE29BC(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_261CE2B3C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_261CE2B6C, 0, 0);
}

uint64_t sub_261CE2B6C()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_261CE2C50;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[3];

  return sub_261C62794("ColorEntityQuery.suggestedEntities", 34, 2, v4, v2, v3);
}

uint64_t sub_261CE2C50(uint64_t a1)
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
    *(v4 + 56) = a1;

    return MEMORY[0x2822009F8](sub_261B0DCB4, 0, 0);
  }
}

uint64_t sub_261CE2E08(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = sub_261BBB340();
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t ColorEntityQuery.entities(matching:)(uint64_t a1, uint64_t a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = *v2;
  *(v3 + 48) = *(v2 + 16);
  return MEMORY[0x2822009F8](sub_261CE2EEC, 0, 0);
}

uint64_t sub_261CE2EEC()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[7] = v1;
  *v1 = v0;
  v1[1] = sub_261CE2FE0;
  v2 = v0[5];
  v3 = v0[6];
  v5 = v0[3];
  v4 = v0[4];
  v6 = v0[2];

  return sub_261C62EC8("ColorEntityQuery.entitiesMatchingString", 39, 2, v4, v2, v3, v6, v5);
}

uint64_t sub_261CE2FE0(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t sub_261CE3160(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  *(v4 + 40) = *v3;
  *(v4 + 56) = *(v3 + 16);
  return MEMORY[0x2822009F8](sub_261CE3194, 0, 0);
}

uint64_t sub_261CE3194()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFD104();
  v1 = swift_task_alloc();
  v0[8] = v1;
  *v1 = v0;
  v1[1] = sub_261CE3288;
  v2 = v0[6];
  v3 = v0[7];
  v5 = v0[4];
  v4 = v0[5];
  v6 = v0[3];

  return sub_261C62EC8("ColorEntityQuery.entitiesMatchingString", 39, 2, v4, v2, v3, v6, v5);
}

uint64_t sub_261CE3288(uint64_t a1)
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
    *(v4 + 72) = a1;

    return MEMORY[0x2822009F8](sub_261CE345C, 0, 0);
  }
}

unint64_t sub_261CE3484()
{
  result = qword_27FEDE538;
  if (!qword_27FEDE538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE538);
  }

  return result;
}

unint64_t sub_261CE34DC()
{
  result = qword_27FEDE540;
  if (!qword_27FEDE540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE540);
  }

  return result;
}

unint64_t sub_261CE3538()
{
  result = qword_27FEDE548;
  if (!qword_27FEDE548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE548);
  }

  return result;
}

unint64_t sub_261CE3594()
{
  result = qword_27FEDE550;
  if (!qword_27FEDE550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDE558, qword_261D129C8);
    sub_261BBB440();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE550);
  }

  return result;
}

uint64_t dispatch thunk of ColorEntityQueryPerforming.entities(query:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261B0E3FC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ColorEntityQueryPerforming.suggestedEntities(query:targetList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261B01F5C;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ColorEntityQueryPerforming.entities(query:matching:targetList:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = sub_261B0E3FC;

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_261CE39D4()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDE560);
  __swift_project_value_buffer(v6, qword_27FEDE560);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static UpdateListAutoCategorizeAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D70 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE560);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static UpdateListAutoCategorizeAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t sub_261CE3F7C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ListEntity(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261B0A18C(a1, &v10 - v7);
  sub_261B0A18C(v8, v6);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B0A1F0(v8);
}

uint64_t UpdateListAutoCategorizeAppIntent.entity.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*UpdateListAutoCategorizeAppIntent.entity.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*UpdateListAutoCategorizeAppIntent.property.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261CE42A0()
{
  result = swift_getKeyPath();
  qword_27FEDE578 = result;
  return result;
}

uint64_t static UpdateListAutoCategorizeAppIntent.binding.getter()
{
  if (qword_27FED9D78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t static UpdateListAutoCategorizeAppIntent.binding.setter(uint64_t a1)
{
  if (qword_27FED9D78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDE578 = a1;
}

uint64_t (*static UpdateListAutoCategorizeAppIntent.binding.modify(uint64_t a1))(void)
{
  if (qword_27FED9D78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261CE4448@<X0>(void *a1@<X8>)
{
  if (qword_27FED9D78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDE578;
  return sub_261CFCDA4();
}

uint64_t sub_261CE44C8(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_27FED9D78;
  sub_261CFCDA4();
  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDE578 = v1;
}

uint64_t UpdateListAutoCategorizeAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v63 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v1 - 8);
  v58 = &v42 - v2;
  v62 = sub_261CFD184();
  v65 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v61 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v55 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v60 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v8 - 8);
  v49 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v42 - v11;
  v13 = sub_261CFD674();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v42 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_261CFD884();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_261CFFA44();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_261CFD6A4();
  v47 = v19;
  v64 = *(v19 - 8);
  v20 = MEMORY[0x28223BE20](v19);
  v57 = &v42 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v56 = &v42 - v23;
  MEMORY[0x28223BE20](v22);
  v59 = &v42 - v24;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA298, &qword_261D02530);
  sub_261CFF9B4();
  sub_261CFD874();
  v25 = *MEMORY[0x277CC9110];
  v27 = v14 + 104;
  v26 = *(v14 + 104);
  v44 = v13;
  v26(v16, v25, v13);
  v43 = v26;
  v45 = v27;
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v26(v16, v25, v13);
  v42 = v12;
  sub_261CFD6C4();
  v28 = *(v64 + 56);
  v64 += 56;
  v48 = v28;
  v28(v12, 0, 1, v19);
  v29 = type metadata accessor for ListEntity(0);
  (*(*(v29 - 8) + 56))(v49, 1, 1, v29);
  v30 = sub_261CFC834();
  v53 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v52 = v32;
  v54 = v31 + 56;
  v32(v60, 1, 1, v30);
  v32(v55, 1, 1, v30);
  v50 = *MEMORY[0x277CBA308];
  v33 = *(v65 + 104);
  v65 += 104;
  v51 = v33;
  v33(v61);
  sub_261B5A458(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v34 = v42;
  *v63 = sub_261CFCC34();
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = v44;
  v36 = v43;
  v43(v16, v25, v44);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v36(v16, v25, v35);
  sub_261CFD6C4();
  v48(v34, 0, 1, v47);
  LOBYTE(v67[0]) = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v36(v16, v25, v35);
  sub_261CFD6B4();
  sub_261CFF9B4();
  sub_261CFD874();
  v36(v16, v25, v35);
  sub_261CFD6B4();
  v37 = v58;
  sub_261CFFCD4();
  v38 = sub_261CFFCE4();
  (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  v52(v60, 1, 1, v53);
  v51(v61, v50, v62);
  v39 = sub_261CFCD44();
  v40 = v63;
  v63[1] = v39;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA0, &qword_261D03830);
  v66 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v40[2] = result;
  return result;
}

uint64_t UpdateListAutoCategorizeAppIntent.perform()(uint64_t a1)
{
  *(v2 + 392) = a1;
  v3 = sub_261CFD754();
  *(v2 + 400) = v3;
  *(v2 + 408) = *(v3 - 8);
  *(v2 + 416) = swift_task_alloc();
  v4 = sub_261CFC9D4();
  *(v2 + 424) = v4;
  *(v2 + 432) = *(v4 - 8);
  *(v2 + 440) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  *(v2 + 448) = swift_task_alloc();
  *(v2 + 456) = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDABA8, &qword_261D03840);
  *(v2 + 464) = v5;
  *(v2 + 472) = *(v5 - 8);
  *(v2 + 480) = swift_task_alloc();
  v6 = type metadata accessor for ListEntity(0);
  *(v2 + 488) = v6;
  *(v2 + 496) = *(v6 - 8);
  *(v2 + 504) = swift_task_alloc();
  *(v2 + 512) = swift_task_alloc();
  *(v2 + 520) = *v1;
  *(v2 + 536) = *(v1 + 16);
  *(v2 + 544) = sub_261CFFD24();
  *(v2 + 552) = sub_261CFFD14();
  v8 = sub_261CFFCF4();
  *(v2 + 560) = v8;
  *(v2 + 568) = v7;

  return MEMORY[0x2822009F8](sub_261CE522C, v8, v7);
}

uint64_t sub_261CE522C()
{
  v12 = v0;
  v1 = *(v0 + 536);
  v2 = *(v0 + 528);
  v3 = *(v0 + 520);
  v4 = *(v0 + 512);
  sub_261CFCBB4();
  sub_261CFC664();
  sub_261B7C4B8(v4, v0 + 352, v11);
  __swift_destroy_boxed_opaque_existential_0((v0 + 352));
  sub_261B0A1F0(v4);
  v5 = v11[5];
  *(v0 + 80) = v11[4];
  *(v0 + 96) = v5;
  *(v0 + 112) = v11[6];
  v6 = v11[1];
  *(v0 + 16) = v11[0];
  *(v0 + 32) = v6;
  v7 = v11[3];
  *(v0 + 48) = v11[2];
  *(v0 + 64) = v7;
  sub_261B59DEC(v0 + 16, v0 + 128);
  sub_261CFCBB4();
  *(v0 + 617) = *(v0 + 616);
  sub_261CFCBC4();
  sub_261B59E48(v0 + 16);
  sub_261B2AC8C(0, v3, v2, v1);
  *(v0 + 576) = sub_261CFFD14();
  v9 = sub_261CFFCF4();
  *(v0 + 584) = v9;
  *(v0 + 592) = v8;

  return MEMORY[0x2822009F8](sub_261CE5384, v9, v8);
}

uint64_t sub_261CE5384()
{
  sub_261B59DEC(v0 + 16, v0 + 240);
  v1 = swift_task_alloc();
  *(v0 + 600) = v1;
  *v1 = v0;
  v1[1] = sub_261B60E34;
  v2 = *(v0 + 480);

  return sub_261C56650(v2, "UpdateListAppIntent", 19, 2, v0 + 16);
}

uint64_t static UpdateListAutoCategorizeAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE580, &qword_261D12B88);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE588, &qword_261D12B90);
  MEMORY[0x28223BE20](v1);
  sub_261B31360();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE590, &qword_261D12BC0);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE598, &unk_261D12BF0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD124();
}

uint64_t sub_261CE5628(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B0A18C(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B0A1F0(a1);
}

uint64_t (*sub_261CE56B8(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*sub_261CE572C(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261CE57A0()
{
  if (qword_27FED9D78 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_261CFCDA4();
}

uint64_t sub_261CE5818@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D70 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE560);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261CE58C8(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_261AF43A8;

  return UpdateListAutoCategorizeAppIntent.perform()(a1);
}

uint64_t sub_261CE5964(uint64_t a1)
{
  v2 = sub_261B31360();

  return MEMORY[0x28210B538](a1, v2);
}

unint64_t sub_261CE59EC()
{
  result = qword_27FEDE5A8;
  if (!qword_27FEDE5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE5A8);
  }

  return result;
}

unint64_t sub_261CE5A44()
{
  result = qword_27FEDE5B0;
  if (!qword_27FEDE5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE5B0);
  }

  return result;
}

uint64_t sub_261CE5AF8()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE5C8);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE5C8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CE5D44()
{
  v89 = v0;
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);
  v3 = *(v0 + 80);
  v4 = *(v0 + 40);
  v5 = *(v0 + 32);

  sub_261CFCBB4();
  sub_261CFCBB4();
  sub_261CE77BC(v1 + *(v3 + 24), v4, type metadata accessor for SectionEntityID);
  sub_261CE682C(v1, type metadata accessor for SectionEntity);
  sub_261CE7824(v4, v5, type metadata accessor for SectionEntityID);
  sub_261CE7824(v5, v2, type metadata accessor for AppEntityID);
  v6 = objc_allocWithZone(MEMORY[0x277D44700]);
  v7 = sub_261CFD814();
  v8 = sub_261CFFA54();
  v9 = [v6 initWithUUID:v7 entityName:v8];

  v10 = [v9 entityName];
  v11 = sub_261CFFA74();
  v13 = v12;

  sub_261B05020(0, &qword_27FEDA5E0, 0x277D44698);
  v14 = [swift_getObjCClassFromMetadata() cdEntityName];
  v15 = sub_261CFFA74();
  v17 = v16;

  if (v15 == v11 && v17 == v13)
  {

LABEL_5:
    v20 = (v0 + 96);
    v19 = *(v0 + 96);
    v21 = *(v0 + 152);
    v22 = *(v0 + 112);
    v81 = *(v0 + 136);
    v83 = *(v0 + 120);

    v86 = v83;
    v87 = v81;
    v88 = v21;
    sub_261CE688C(v19);
LABEL_6:
    sub_261CE682C(v22, type metadata accessor for SectionEntity);
    v23 = *v20;
    v24 = *(v0 + 112);
    v25 = *(v0 + 72);
    sub_261CE7824(v23, v24, type metadata accessor for SectionEntity);
    sub_261CE788C();
    sub_261CFC994();
    sub_261CE682C(v24, type metadata accessor for SectionEntity);
    sub_261CE682C(v25, type metadata accessor for AppEntityID);

    v26 = *(v0 + 8);
    goto LABEL_7;
  }

  v18 = sub_261D00614();

  if (v18)
  {
    goto LABEL_5;
  }

  sub_261B05020(0, &qword_27FEDA5E8, 0x277D44818);
  v28 = [swift_getObjCClassFromMetadata() cdEntityName];
  v29 = sub_261CFFA74();
  v31 = v30;

  if (v29 == v11 && v31 == v13)
  {

LABEL_14:
    v20 = (v0 + 88);
    v33 = *(v0 + 88);
    v34 = *(v0 + 152);
    v22 = *(v0 + 112);
    v82 = *(v0 + 136);
    v84 = *(v0 + 120);

    v86 = v84;
    v87 = v82;
    v88 = v34;
    sub_261CE6F70(v33);
    goto LABEL_6;
  }

  v32 = sub_261D00614();

  if (v32)
  {
    goto LABEL_14;
  }

  sub_261B05020(0, &qword_27FEDA5F0, 0x277D448B8);
  v35 = [swift_getObjCClassFromMetadata() cdEntityName];
  v36 = sub_261CFFA74();
  v38 = v37;

  if (v36 == v11 && v38 == v13)
  {

    goto LABEL_19;
  }

  v39 = sub_261D00614();

  if (v39)
  {
LABEL_19:

    if (qword_27FED9D80 != -1)
    {
      swift_once();
    }

    v40 = *(v0 + 64);
    v41 = *(v0 + 72);
    v42 = sub_261CFF7A4();
    __swift_project_value_buffer(v42, qword_27FEDE5C8);
    sub_261CE77BC(v41, v40, type metadata accessor for AppEntityID);
    v43 = sub_261CFF784();
    v44 = sub_261CFFE74();
    v45 = os_log_type_enabled(v43, v44);
    v46 = *(v0 + 64);
    if (v45)
    {
LABEL_22:
      v47 = swift_slowAlloc();
      v85 = swift_slowAlloc();
      *v47 = 138543362;
      v48 = objc_allocWithZone(MEMORY[0x277D44700]);
      v49 = sub_261CFD814();
      v50 = sub_261CFFA54();
      v51 = [v48 initWithUUID:v49 entityName:v50];

      sub_261CE682C(v46, type metadata accessor for AppEntityID);
      *(v47 + 4) = v51;
      *v85 = v51;
      _os_log_impl(&dword_261AE2000, v43, v44, "[UpdateSectionIntentPerforming] Template section is not currently supported in RemindersAppIntent: %{public}@", v47, 0xCu);
      sub_261BD28E8(v85);
      MEMORY[0x26671D560](v85, -1, -1);
      MEMORY[0x26671D560](v47, -1, -1);

LABEL_39:
      v57 = *(v0 + 112);
      v58 = *(v0 + 72);
      sub_261B01D70();
      swift_allocError();
      v60 = 31;
      goto LABEL_40;
    }

LABEL_38:

    sub_261CE682C(v46, type metadata accessor for AppEntityID);
    goto LABEL_39;
  }

  v52 = [objc_opt_self() cdEntityName];
  v53 = sub_261CFFA74();
  v55 = v54;

  if (v53 == v11 && v55 == v13)
  {
    goto LABEL_25;
  }

  v56 = sub_261D00614();

  if (v56)
  {
    goto LABEL_27;
  }

  v61 = [objc_opt_self() cdEntityName];
  v62 = sub_261CFFA74();
  v64 = v63;

  if (v62 == v11 && v64 == v13)
  {
LABEL_25:
  }

  else
  {
    v65 = sub_261D00614();

    if ((v65 & 1) == 0)
    {
      v66 = [objc_opt_self() cdEntityName];
      v67 = sub_261CFFA74();
      v69 = v68;

      if (v67 == v11 && v69 == v13)
      {
      }

      else
      {
        v70 = sub_261D00614();

        if ((v70 & 1) == 0)
        {
          if (qword_27FED9D80 != -1)
          {
            swift_once();
          }

          v75 = sub_261CFF7A4();
          __swift_project_value_buffer(v75, qword_27FEDE5C8);
          sub_261CFD104();
          v76 = sub_261CFF784();
          v77 = sub_261CFFE74();

          if (os_log_type_enabled(v76, v77))
          {
            v78 = swift_slowAlloc();
            v79 = swift_slowAlloc();
            *&v86 = v79;
            *v78 = 136446210;
            v80 = sub_261B879C8(v11, v13, &v86);

            *(v78 + 4) = v80;
            _os_log_impl(&dword_261AE2000, v76, v77, "[UpdateSectionIntentPerforming] Unknown section entity name: %{public}s", v78, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v79);
            MEMORY[0x26671D560](v79, -1, -1);
            MEMORY[0x26671D560](v78, -1, -1);
          }

          else
          {
          }

          goto LABEL_39;
        }
      }

      if (qword_27FED9D80 != -1)
      {
        swift_once();
      }

      v71 = *(v0 + 72);
      v72 = *(v0 + 56);
      v73 = sub_261CFF7A4();
      __swift_project_value_buffer(v73, qword_27FEDE5C8);
      sub_261CE77BC(v71, v72, type metadata accessor for AppEntityID);
      v43 = sub_261CFF784();
      v44 = sub_261CFFE74();
      v74 = os_log_type_enabled(v43, v44);
      v46 = *(v0 + 56);
      if (v74)
      {
        goto LABEL_22;
      }

      goto LABEL_38;
    }
  }

LABEL_27:
  v57 = *(v0 + 112);
  v58 = *(v0 + 72);

  sub_261B01D70();
  swift_allocError();
  v60 = 27;
LABEL_40:
  *v59 = v60;
  swift_willThrow();
  sub_261CE682C(v57, type metadata accessor for SectionEntity);
  sub_261CE682C(v58, type metadata accessor for AppEntityID);

  v26 = *(v0 + 8);
LABEL_7:

  return v26();
}

uint64_t sub_261CE682C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_261CE688C(uint64_t *a2@<X8>)
{
  v61 = *MEMORY[0x277D85DE8];
  v4 = *(v2 + 16);
  type metadata accessor for AppEntityID(0);
  v5 = objc_allocWithZone(MEMORY[0x277D44700]);
  v6 = sub_261CFD814();
  v7 = sub_261CFFA54();
  v8 = [v5 initWithUUID:v6 entityName:v7];

  v57 = 0;
  v9 = [v4 fetchListSectionWithObjectID:v8 error:&v57];

  if (v9)
  {
    v10 = v57;
    v53 = a2;
    sub_261C66A58(v9, a2);
    v11 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
    [v11 setSaveIsNoopIfNoChangedKeys_];
    v55 = v11;
    v12 = [v11 updateListSection_];
    sub_261CFCBB4();
    v13 = v58;
    if (v58)
    {
      v14 = v57;
      v15 = v12;
      v16 = [v15 displayName];
      v17 = sub_261CFFA74();
      v19 = v18;

      if (v17 == v14 && v13 == v19)
      {
      }

      else
      {
        v21 = sub_261D00614();

        if (v21)
        {
        }

        else
        {
          v22 = sub_261CFFA54();
          [v15 setDisplayName_];

          type metadata accessor for SectionEntity(0);
          v57 = v14;
          v58 = v13;
          sub_261CFD2E4();
        }
      }
    }

    sub_261CFCBB4();
    if (v57 != 2)
    {
      v23 = [v9 objectID];
      v24 = [v9 listID];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE5E0, &qword_261D12DD8);
      v25 = sub_261CFDE54();
      v26 = sub_261CFDDA4();
      v59 = v25;
      v60 = MEMORY[0x277D45CA0];
      v57 = v26;
      sub_261CFE8A4();

      __swift_destroy_boxed_opaque_existential_0(&v57);
    }

    if (qword_27FED9D80 != -1)
    {
      swift_once();
    }

    v27 = sub_261CFF7A4();
    __swift_project_value_buffer(v27, qword_27FEDE5C8);
    v28 = v12;
    v29 = v9;
    v30 = sub_261CFF784();
    v31 = sub_261CFFE84();

    v56 = v28;
    v54 = v29;
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v57 = v52;
      *v32 = 138543618;
      v34 = [v29 objectID];
      *(v32 + 4) = v34;
      *v33 = v34;
      *(v32 + 12) = 2082;
      v35 = [v28 changedKeys];
      sub_261CFFD64();

      v36 = sub_261CFFD74();
      v38 = v37;

      v39 = sub_261B879C8(v36, v38, &v57);

      *(v32 + 14) = v39;
      _os_log_impl(&dword_261AE2000, v30, v31, "[UpdateSectionIntentPerforming] Update list section properties with id: %{public}@, changedKeys: %{public}s", v32, 0x16u);
      sub_261BD28E8(v33);
      MEMORY[0x26671D560](v33, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x26671D560](v52, -1, -1);
      MEMORY[0x26671D560](v32, -1, -1);
    }

    v57 = 0;
    if ([v55 saveSynchronouslyWithError_])
    {
      v40 = v57;
    }

    else
    {
      v41 = v57;
      v42 = sub_261CFD654();

      swift_willThrow();
      v43 = v42;
      v44 = sub_261CFF784();
      v45 = sub_261CFFE64();

      if (os_log_type_enabled(v44, v45))
      {
        v46 = swift_slowAlloc();
        v47 = swift_slowAlloc();
        v57 = v47;
        *v46 = 136315138;
        swift_getErrorValue();
        v48 = sub_261D00674();
        v50 = sub_261B879C8(v48, v49, &v57);

        *(v46 + 4) = v50;
        _os_log_impl(&dword_261AE2000, v44, v45, "[UpdateSectionIntentPerforming] Update list section properties failed with save error: %s", v46, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v47);
        MEMORY[0x26671D560](v47, -1, -1);
        MEMORY[0x26671D560](v46, -1, -1);
      }

      sub_261B01D70();
      swift_allocError();
      *v51 = 19;
      swift_willThrow();

      sub_261CE682C(v53, type metadata accessor for SectionEntity);
    }
  }

  else
  {
    v20 = v57;
    sub_261CFD654();

    swift_willThrow();
  }
}

void sub_261CE6F70(void *a2@<X8>)
{
  v67 = *MEMORY[0x277D85DE8];
  v4 = *(v2 + 16);
  type metadata accessor for AppEntityID(0);
  v5 = objc_allocWithZone(MEMORY[0x277D44700]);
  v6 = sub_261CFD814();
  v7 = sub_261CFFA54();
  v8 = [v5 initWithUUID:v6 entityName:v7];

  v63 = 0;
  v9 = [v4 fetchSmartListSectionWithObjectID:v8 error:&v63];

  if (!v9)
  {
    v15 = v63;
    sub_261CFD654();

    swift_willThrow();
    return;
  }

  v10 = v63;
  v11 = [v9 smartList];
  v12 = [v11 parentListID];

  if (v12)
  {
    v63 = 0;
    v13 = [v4 fetchListWithObjectID:v12 error:&v63];
    v14 = v63;
    if (!v13)
    {
      v26 = v14;
      sub_261CFD654();

      swift_willThrow();
      return;
    }
  }

  else
  {
    v13 = 0;
  }

  v60 = v13;
  v61 = a2;
  sub_261C67444(v9, v13, a2);
  v16 = [objc_allocWithZone(MEMORY[0x277D447D8]) initWithStore_];
  [v16 setSaveIsNoopIfNoChangedKeys_];
  v59 = v16;
  v17 = [v16 updateSmartListSection_];
  sub_261CFCBB4();
  v18 = v64;
  if (v64)
  {
    v19 = v63;
    v20 = v17;
    v21 = [v20 displayName];
    v22 = sub_261CFFA74();
    v24 = v23;

    if (v22 == v19 && v18 == v24)
    {
    }

    else
    {
      v25 = sub_261D00614();

      if (v25)
      {
      }

      else
      {
        v27 = sub_261CFFA54();
        [v20 setDisplayName_];

        type metadata accessor for SectionEntity(0);
        v63 = v19;
        v64 = v18;
        sub_261CFD2E4();
      }
    }
  }

  sub_261CFCBB4();
  if (v63 != 2)
  {
    v28 = [v9 objectID];
    v29 = [v9 smartListID];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE5E0, &qword_261D12DD8);
    v30 = sub_261CFDE54();
    v31 = sub_261CFDDA4();
    v65 = v30;
    v66 = MEMORY[0x277D45CA0];
    v63 = v31;
    sub_261CFE8A4();

    __swift_destroy_boxed_opaque_existential_0(&v63);
  }

  if (qword_27FED9D80 != -1)
  {
    swift_once();
  }

  v32 = sub_261CFF7A4();
  __swift_project_value_buffer(v32, qword_27FEDE5C8);
  v33 = v17;
  v34 = v9;
  v35 = sub_261CFF784();
  v36 = sub_261CFFE84();

  v62 = v33;
  v58 = v34;
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v63 = v57;
    *v37 = 138543618;
    v39 = [v34 objectID];
    *(v37 + 4) = v39;
    *v38 = v39;
    *(v37 + 12) = 2082;
    v40 = [v33 changedKeys];
    sub_261CFFD64();

    v41 = sub_261CFFD74();
    v43 = v42;

    v44 = sub_261B879C8(v41, v43, &v63);

    *(v37 + 14) = v44;
    _os_log_impl(&dword_261AE2000, v35, v36, "[UpdateSectionIntentPerforming] Update smart-list section properties with id: %{public}@, changedKeys: %{public}s", v37, 0x16u);
    sub_261BD28E8(v38);
    MEMORY[0x26671D560](v38, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v57);
    MEMORY[0x26671D560](v57, -1, -1);
    MEMORY[0x26671D560](v37, -1, -1);
  }

  v63 = 0;
  if ([v59 saveSynchronouslyWithError_])
  {
    v45 = v63;
  }

  else
  {
    v46 = v63;
    v47 = sub_261CFD654();

    swift_willThrow();
    v48 = v47;
    v49 = sub_261CFF784();
    v50 = sub_261CFFE64();

    if (os_log_type_enabled(v49, v50))
    {
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v63 = v52;
      *v51 = 136315138;
      swift_getErrorValue();
      v53 = sub_261D00674();
      v55 = sub_261B879C8(v53, v54, &v63);

      *(v51 + 4) = v55;
      _os_log_impl(&dword_261AE2000, v49, v50, "[UpdateSectionIntentPerforming] Update smart-list section properties failed with save error: %s", v51, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v52);
      MEMORY[0x26671D560](v52, -1, -1);
      MEMORY[0x26671D560](v51, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v56 = 19;
    swift_willThrow();

    sub_261CE682C(v61, type metadata accessor for SectionEntity);
  }
}

uint64_t sub_261CE7710(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return REMStoreIntentPerformer.perform(_:)(a1, a2);
}

uint64_t sub_261CE77BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261CE7824(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_261CE788C()
{
  result = qword_280D224D0;
  if (!qword_280D224D0)
  {
    type metadata accessor for SectionEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D224D0);
  }

  return result;
}

uint64_t OpenSectionAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v50 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v1 - 8);
  v51 = &v36[-v2];
  v3 = sub_261CFD184();
  v4 = *(v3 - 8);
  v56 = v3;
  v57 = v4;
  MEMORY[0x28223BE20](v3);
  v55 = &v36[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v49 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v7);
  v54 = &v36[-v9];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E0, &unk_261D02300);
  MEMORY[0x28223BE20](v10 - 8);
  v53 = &v36[-v11];
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v12 - 8);
  v52 = &v36[-v13];
  v14 = sub_261CFD674();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v36[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = sub_261CFD884();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_261CFFA44();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = sub_261CFD6A4();
  v42 = v20;
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v40 = &v36[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA398, &unk_261D02CE0);
  sub_261CFF9B4();
  sub_261CFD874();
  v24 = *(v15 + 104);
  v45 = *MEMORY[0x277CC9110];
  v23 = v45;
  v46 = v14;
  v24(v17, v45, v14);
  v44 = v24;
  v47 = v15 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v24(v17, v23, v14);
  v25 = v52;
  sub_261CFD6C4();
  v26 = *(v21 + 56);
  v41 = v21 + 56;
  v43 = v26;
  v26(v25, 0, 1, v20);
  v27 = type metadata accessor for SectionEntity(0);
  (*(*(v27 - 8) + 56))(v53, 1, 1, v27);
  v28 = sub_261CFC834();
  v29 = *(*(v28 - 8) + 56);
  v39 = v29;
  v29(v54, 1, 1, v28);
  v29(v49, 1, 1, v28);
  v37 = *MEMORY[0x277CBA308];
  v30 = *(v57 + 104);
  v57 += 104;
  v38 = v30;
  v30(v55);
  sub_261AE82B0(&qword_280D224E0, &protocol conformance descriptor for SectionEntity);
  v31 = v52;
  v32 = sub_261CFCC34();
  v33 = v50;
  *v50 = v32;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA30, &unk_261D035F0);
  sub_261CFF9B4();
  sub_261CFD874();
  v44(v17, v45, v46);
  sub_261CFD6C4();
  v43(v31, 1, 1, v42);
  LOBYTE(v59[0]) = 2;
  v34 = sub_261CFFCE4();
  (*(*(v34 - 8) + 56))(v51, 1, 1, v34);
  v39(v54, 1, 1, v28);
  v38(v55, v37, v56);
  v33[1] = sub_261CFCD44();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE600, &qword_261D12DE0);
  v58 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v33[2] = result;
  return result;
}

uint64_t sub_261CE8148(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for SectionEntity(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261B2EAD0(a1, &v10 - v7);
  sub_261B2EAD0(v8, v6);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261B2EB34(v8);
}

uint64_t OpenSectionAppIntent.target.setter(uint64_t a1)
{
  v2 = type metadata accessor for SectionEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B2EAD0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t sub_261CE8310()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDE5E8);
  __swift_project_value_buffer(v6, qword_27FEDE5E8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static OpenSectionAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D88 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE5E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t static OpenSectionAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t (*OpenSectionAppIntent.target.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*OpenSectionAppIntent.showExpanded.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t OpenSectionAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  sub_261CFFD24();
  *(v2 + 48) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x2822009F8](sub_261CE8A6C, v4, v3);
}

uint64_t sub_261CE8A6C()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_261C8C82C;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_261C59AE8(v4, "OpenSectionAppIntent", 20, 2, v5, v2, v3);
}

uint64_t sub_261CE8B50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[12] = a3;
  v4[13] = a4;
  v4[10] = a1;
  v4[11] = a2;
  sub_261CFFD24();
  v4[14] = sub_261CFFD14();
  v6 = sub_261CFFCF4();
  v4[15] = v6;
  v4[16] = v5;

  return MEMORY[0x2822009F8](sub_261CE8BEC, v6, v5);
}

uint64_t sub_261CE8BEC()
{
  v1 = v0[12];
  v2 = v0[13];
  v3 = v0[11];
  sub_261B2BA48(0, v3, v1, v2);
  sub_261CFC664();
  v4 = v0[5];
  v5 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v4);
  v0[7] = v3;
  v0[8] = v1;
  v0[9] = v2;
  v9 = (*(v5 + 8) + **(v5 + 8));
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = sub_261BC2BF8;
  v7 = v0[10];

  return v9(v7, v0 + 7, v4, v5);
}

uint64_t static OpenSectionAppIntent.parameterSummary.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE608, &qword_261D12E08);
  MEMORY[0x28223BE20](v0 - 8);
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE610, &qword_261D12E10);
  MEMORY[0x28223BE20](v1);
  sub_261B3130C();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE618, &qword_261D12E40);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261CE8F14()
{
  swift_getKeyPath();
  sub_261B3130C();
  v0 = sub_261CFCDA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_261D030F0;
  *(v1 + 32) = v0;
  sub_261CFCDA4();
  v2 = sub_261CFD104();

  return v2;
}

unint64_t sub_261CE8FD4()
{
  result = qword_27FEDE620;
  if (!qword_27FEDE620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE620);
  }

  return result;
}

uint64_t sub_261CE905C(uint64_t a1)
{
  v2 = type metadata accessor for SectionEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B2EAD0(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261B2EB34(a1);
}

uint64_t (*sub_261CE90EC(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

unint64_t sub_261CE9168()
{
  result = qword_27FEDE628;
  if (!qword_27FEDE628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE628);
  }

  return result;
}

unint64_t sub_261CE91C0()
{
  result = qword_27FEDE630;
  if (!qword_27FEDE630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE630);
  }

  return result;
}

uint64_t sub_261CE924C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D88 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE5E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261CE92F4(uint64_t a1, uint64_t a2)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE608, &qword_261D12E08);
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE610, &qword_261D12E10);
  MEMORY[0x28223BE20](v3);
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE618, &qword_261D12E40);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  return sub_261CFD134();
}

uint64_t sub_261CE94A4(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  sub_261CFFD24();
  *(v2 + 48) = sub_261CFFD14();
  v4 = sub_261CFFCF4();
  *(v2 + 56) = v4;
  *(v2 + 64) = v3;

  return MEMORY[0x2822009F8](sub_261CE954C, v4, v3);
}

uint64_t sub_261CE954C()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[9] = v1;
  *v1 = v0;
  v1[1] = sub_261C8CF3C;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_261C59AE8(v4, "OpenSectionAppIntent", 20, 2, v5, v2, v3);
}

uint64_t sub_261CE9634(uint64_t a1)
{
  v2 = sub_261B3130C();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of OpenSectionAppIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t RemindersInCalendarEditingReminderProperties.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for RemindersInCalendarEditingReminderProperties(0);
  *a1 = 0u;
  *(a1 + 1) = 0u;
  v3 = v2[6];
  v4 = sub_261CFD4E4();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  *&a1[v2[7]] = 0;
  v5 = v2[8];
  v6 = sub_261CFD754();
  result = (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  *&a1[v2[9]] = 0;
  return result;
}

uint64_t type metadata accessor for RemindersInCalendarEditingReminderProperties(uint64_t a1)
{
  result = qword_27FEDE648;
  if (!qword_27FEDE648)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261CE98D4(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v55 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v58 = &v53 - v6;
  v7 = sub_261CFD754();
  v59 = *(v7 - 8);
  v60 = v7;
  MEMORY[0x28223BE20](v7);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_261CFE304();
  v9 = *(v53 - 8);
  v10 = MEMORY[0x28223BE20](v53);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v53 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v57 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v19 = &v53 - v18;
  v61 = sub_261CFD4E4();
  v20 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v56 = &v53 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a1[1];
  v63 = a1;
  if (v22)
  {
    v23 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v24 = sub_261CFFA54();
    v25 = [v23 initWithString_];

    sub_261CFE0D4();
    a1 = v63;
  }

  v62 = v1;
  if (a1[3])
  {
    v26 = objc_allocWithZone(MEMORY[0x277CCA898]);
    v27 = sub_261CFFA54();
    v28 = [v26 initWithString_];

    sub_261CFE0C4();
    a1 = v63;
  }

  v29 = type metadata accessor for RemindersInCalendarEditingReminderProperties(0);
  sub_261AFB668(a1 + *(v29 + 24), v19, &qword_27FEDA160, &qword_261D02220);
  v30 = v61;
  if ((*(v20 + 48))(v19, 1, v61) == 1)
  {
    sub_261AE6A40(v19, &qword_27FEDA160, &qword_261D02220);
  }

  else
  {
    v31 = v56;
    (*(v20 + 32))(v56, v19, v30);
    v32 = v57;
    (*(v20 + 16))(v57, v31, v30);
    (*(v20 + 56))(v32, 0, 1, v30);
    sub_261CFE094();
    sub_261AE6A40(v32, &qword_27FEDA160, &qword_261D02220);
    (*(v20 + 8))(v31, v30);
  }

  v61 = v29;
  v33 = *(a1 + *(v29 + 28));
  if (v33)
  {
    if (v33 >> 62)
    {
      v34 = sub_261D00274();
    }

    else
    {
      v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v34)
    {
      v64 = MEMORY[0x277D84F90];
      sub_261B3A35C(0, v34 & ~(v34 >> 63), 0);
      if (v34 < 0)
      {
        __break(1u);
        return;
      }

      v35 = v64;
      if ((v33 & 0xC000000000000001) != 0)
      {
        v36 = 0;
        v37 = v53;
        do
        {
          MEMORY[0x26671CA10](v36, v33);
          sub_261CFE2F4();
          v64 = v35;
          v39 = *(v35 + 16);
          v38 = *(v35 + 24);
          if (v39 >= v38 >> 1)
          {
            sub_261B3A35C((v38 > 1), v39 + 1, 1);
            v37 = v53;
            v35 = v64;
          }

          ++v36;
          *(v35 + 16) = v39 + 1;
          (*(v9 + 32))(v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v39, v14, v37);
        }

        while (v34 != v36);
      }

      else
      {
        v40 = (v33 + 32);
        v41 = v53;
        do
        {
          v42 = *v40;
          sub_261CFE2F4();
          v64 = v35;
          v44 = *(v35 + 16);
          v43 = *(v35 + 24);
          if (v44 >= v43 >> 1)
          {
            sub_261B3A35C((v43 > 1), v44 + 1, 1);
            v41 = v53;
            v35 = v64;
          }

          *(v35 + 16) = v44 + 1;
          (*(v9 + 32))(v35 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v44, v12, v41);
          ++v40;
          --v34;
        }

        while (v34);
      }

      a1 = v63;
    }

    sub_261CFE084();
  }

  v45 = v61;
  v46 = v58;
  sub_261AFB668(a1 + *(v61 + 32), v58, &qword_27FEDB238, &unk_261D056F0);
  v48 = v59;
  v47 = v60;
  if ((*(v59 + 48))(v46, 1, v60) == 1)
  {
    sub_261AE6A40(v46, &qword_27FEDB238, &unk_261D056F0);
  }

  else
  {
    v49 = v54;
    (*(v48 + 32))(v54, v46, v47);
    v50 = v55;
    (*(v48 + 16))(v55, v49, v47);
    (*(v48 + 56))(v50, 0, 1, v47);
    sub_261CFE0B4();
    sub_261AE6A40(v50, &qword_27FEDB238, &unk_261D056F0);
    (*(v48 + 8))(v49, v47);
  }

  v51 = *(a1 + *(v45 + 36));
  if (v51)
  {
    v52 = v51;
    sub_261CFE034();
  }
}

uint64_t RemindersInCalendarEditingReminderProperties.title.getter()
{
  v1 = *v0;
  sub_261CFD104();
  return v1;
}

uint64_t RemindersInCalendarEditingReminderProperties.title.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RemindersInCalendarEditingReminderProperties.notes.getter()
{
  v1 = *(v0 + 16);
  sub_261CFD104();
  return v1;
}

uint64_t RemindersInCalendarEditingReminderProperties.notes.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

double RemindersInCalendarEditingReminderProperties.recurrenceRules.getter()
{
  type metadata accessor for RemindersInCalendarEditingReminderProperties(0);

  sub_261CFD104();
  return result;
}

uint64_t RemindersInCalendarEditingReminderProperties.recurrenceRules.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemindersInCalendarEditingReminderProperties(0) + 28);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_261CEA3A0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void *RemindersInCalendarEditingReminderProperties.userActivity.getter()
{
  v1 = *(v0 + *(type metadata accessor for RemindersInCalendarEditingReminderProperties(0) + 36));
  v2 = v1;
  return v1;
}

void RemindersInCalendarEditingReminderProperties.userActivity.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for RemindersInCalendarEditingReminderProperties(0) + 36);

  *(v1 + v3) = a1;
}

char *initializeBufferWithCopyOfBuffer for RemindersInCalendarEditingReminderProperties(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v14 = *a2;
    *v4 = *a2;
    v4 = (v14 + ((v5 + 16) & ~v5));
    sub_261CFCDA4();
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = *(a2 + 3);
    *(a1 + 2) = *(a2 + 2);
    *(a1 + 3) = v8;
    v9 = a3[6];
    v10 = sub_261CFD4E4();
    v11 = *(v10 - 8);
    v12 = *(v11 + 48);
    sub_261CFD104();
    sub_261CFD104();
    if (v12(&a2[v9], 1, v10))
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
      memcpy(&v4[v9], &a2[v9], *(*(v13 - 8) + 64));
    }

    else
    {
      (*(v11 + 16))(&v4[v9], &a2[v9], v10);
      (*(v11 + 56))(&v4[v9], 0, 1, v10);
    }

    v15 = a3[8];
    *&v4[a3[7]] = *&a2[a3[7]];
    v16 = sub_261CFD754();
    v17 = *(v16 - 8);
    v18 = *(v17 + 48);
    sub_261CFD104();
    if (v18(&a2[v15], 1, v16))
    {
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
      memcpy(&v4[v15], &a2[v15], *(*(v19 - 8) + 64));
    }

    else
    {
      (*(v17 + 16))(&v4[v15], &a2[v15], v16);
      (*(v17 + 56))(&v4[v15], 0, 1, v16);
    }

    v20 = a3[9];
    v21 = *&a2[v20];
    *&v4[v20] = v21;
    v22 = v21;
  }

  return v4;
}

void destroy for RemindersInCalendarEditingReminderProperties(uint64_t a1, int *a2)
{

  v4 = a2[6];
  v5 = sub_261CFD4E4();
  v6 = *(v5 - 8);
  if (!(*(v6 + 48))(a1 + v4, 1, v5))
  {
    (*(v6 + 8))(a1 + v4, v5);
  }

  v7 = a2[8];
  v8 = sub_261CFD754();
  v9 = *(v8 - 8);
  if (!(*(v9 + 48))(a1 + v7, 1, v8))
  {
    (*(v9 + 8))(a1 + v7, v8);
  }

  v10 = *(a1 + a2[9]);
}

char *initializeWithCopy for RemindersInCalendarEditingReminderProperties(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;
  v8 = a3[6];
  v9 = sub_261CFD4E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  sub_261CFD104();
  sub_261CFD104();
  if (v11(&a2[v8], 1, v9))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(&a1[v8], &a2[v8], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(v10 + 16))(&a1[v8], &a2[v8], v9);
    (*(v10 + 56))(&a1[v8], 0, 1, v9);
  }

  v13 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v14 = sub_261CFD754();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  sub_261CFD104();
  if (v16(&a2[v13], 1, v14))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
    memcpy(&a1[v13], &a2[v13], *(*(v17 - 8) + 64));
  }

  else
  {
    (*(v15 + 16))(&a1[v13], &a2[v13], v14);
    (*(v15 + 56))(&a1[v13], 0, 1, v14);
  }

  v18 = a3[9];
  v19 = *&a2[v18];
  *&a1[v18] = v19;
  v20 = v19;
  return a1;
}

char *assignWithCopy for RemindersInCalendarEditingReminderProperties(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  sub_261CFD104();

  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = *(a2 + 3);
  sub_261CFD104();

  v6 = a3[6];
  v7 = sub_261CFD4E4();
  v8 = *(v7 - 8);
  v9 = *(v8 + 48);
  v10 = v9(&a1[v6], 1, v7);
  v11 = v9(&a2[v6], 1, v7);
  if (v10)
  {
    if (!v11)
    {
      (*(v8 + 16))(&a1[v6], &a2[v6], v7);
      (*(v8 + 56))(&a1[v6], 0, 1, v7);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v11)
  {
    (*(v8 + 8))(&a1[v6], v7);
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(&a1[v6], &a2[v6], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(v8 + 24))(&a1[v6], &a2[v6], v7);
LABEL_7:
  *&a1[a3[7]] = *&a2[a3[7]];
  sub_261CFD104();

  v13 = a3[8];
  v14 = sub_261CFD754();
  v15 = *(v14 - 8);
  v16 = *(v15 + 48);
  v17 = v16(&a1[v13], 1, v14);
  v18 = v16(&a2[v13], 1, v14);
  if (!v17)
  {
    if (!v18)
    {
      (*(v15 + 24))(&a1[v13], &a2[v13], v14);
      goto LABEL_13;
    }

    (*(v15 + 8))(&a1[v13], v14);
    goto LABEL_12;
  }

  if (v18)
  {
LABEL_12:
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
    memcpy(&a1[v13], &a2[v13], *(*(v19 - 8) + 64));
    goto LABEL_13;
  }

  (*(v15 + 16))(&a1[v13], &a2[v13], v14);
  (*(v15 + 56))(&a1[v13], 0, 1, v14);
LABEL_13:
  v20 = a3[9];
  v21 = *&a1[v20];
  v22 = *&a2[v20];
  *&a1[v20] = v22;
  v23 = v22;

  return a1;
}

char *initializeWithTake for RemindersInCalendarEditingReminderProperties(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[6];
  v8 = sub_261CFD4E4();
  v9 = *(v8 - 8);
  if ((*(v9 + 48))(&a2[v7], 1, v8))
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(&a1[v7], &a2[v7], *(*(v10 - 8) + 64));
  }

  else
  {
    (*(v9 + 32))(&a1[v7], &a2[v7], v8);
    (*(v9 + 56))(&a1[v7], 0, 1, v8);
  }

  v11 = a3[8];
  *&a1[a3[7]] = *&a2[a3[7]];
  v12 = sub_261CFD754();
  v13 = *(v12 - 8);
  if ((*(v13 + 48))(&a2[v11], 1, v12))
  {
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
    memcpy(&a1[v11], &a2[v11], *(*(v14 - 8) + 64));
  }

  else
  {
    (*(v13 + 32))(&a1[v11], &a2[v11], v12);
    (*(v13 + 56))(&a1[v11], 0, 1, v12);
  }

  *&a1[a3[9]] = *&a2[a3[9]];
  return a1;
}

char *assignWithTake for RemindersInCalendarEditingReminderProperties(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = *(a2 + 3);
  *(a1 + 2) = *(a2 + 2);
  *(a1 + 3) = v7;

  v8 = a3[6];
  v9 = sub_261CFD4E4();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(&a1[v8], 1, v9);
  v13 = v11(&a2[v8], 1, v9);
  if (v12)
  {
    if (!v13)
    {
      (*(v10 + 32))(&a1[v8], &a2[v8], v9);
      (*(v10 + 56))(&a1[v8], 0, 1, v9);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v13)
  {
    (*(v10 + 8))(&a1[v8], v9);
LABEL_6:
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    memcpy(&a1[v8], &a2[v8], *(*(v14 - 8) + 64));
    goto LABEL_7;
  }

  (*(v10 + 40))(&a1[v8], &a2[v8], v9);
LABEL_7:
  *&a1[a3[7]] = *&a2[a3[7]];

  v15 = a3[8];
  v16 = sub_261CFD754();
  v17 = *(v16 - 8);
  v18 = *(v17 + 48);
  v19 = v18(&a1[v15], 1, v16);
  v20 = v18(&a2[v15], 1, v16);
  if (!v19)
  {
    if (!v20)
    {
      (*(v17 + 40))(&a1[v15], &a2[v15], v16);
      goto LABEL_13;
    }

    (*(v17 + 8))(&a1[v15], v16);
    goto LABEL_12;
  }

  if (v20)
  {
LABEL_12:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
    memcpy(&a1[v15], &a2[v15], *(*(v21 - 8) + 64));
    goto LABEL_13;
  }

  (*(v17 + 32))(&a1[v15], &a2[v15], v16);
  (*(v17 + 56))(&a1[v15], 0, 1, v16);
LABEL_13:
  v22 = a3[9];
  v23 = *&a1[v22];
  *&a1[v22] = *&a2[v22];

  return a1;
}

void sub_261CEB34C(uint64_t a1)
{
  sub_261CEB460(319, &qword_27FEDA190, MEMORY[0x277CC8990]);
  if (v1 <= 0x3F)
  {
    sub_261CEB460(319, &qword_27FEDE658, MEMORY[0x277CC9260]);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

void sub_261CEB460(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_261D00154();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t CompleteReminderAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v72 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v1 - 8);
  v68 = &v48 - v2;
  v71 = sub_261CFD184();
  v73 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v60 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v69 = &v48 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v8 - 8);
  v51 = &v48 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v59 = &v48 - v11;
  v12 = sub_261CFD674();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_261CFD884();
  MEMORY[0x28223BE20](v16 - 8);
  v17 = sub_261CFFA44();
  MEMORY[0x28223BE20](v17 - 8);
  v18 = sub_261CFD6A4();
  v66 = v18;
  v19 = *(v18 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v53 = &v48 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v20);
  v52 = &v48 - v23;
  MEMORY[0x28223BE20](v22);
  v54 = &v48 - v24;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA68, &unk_261D03630);
  sub_261CFF9B4();
  sub_261CFD874();
  v26 = *(v13 + 104);
  v55 = *MEMORY[0x277CC9110];
  v25 = v55;
  v56 = v12;
  v26(v15, v55, v12);
  v57 = v13 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v26(v15, v25, v12);
  v27 = v59;
  sub_261CFD6C4();
  v28 = *(v19 + 56);
  v65 = v19 + 56;
  v67 = v28;
  v28(v27, 0, 1, v18);
  v29 = type metadata accessor for ReminderEntity(0);
  (*(*(v29 - 8) + 56))(v51, 1, 1, v29);
  v30 = sub_261CFC834();
  v64 = v30;
  v31 = *(v30 - 8);
  v32 = *(v31 + 56);
  v63 = v32;
  v33 = v31 + 56;
  v32(v69, 1, 1, v30);
  v58 = v33;
  v32(v60, 1, 1, v30);
  v62 = *MEMORY[0x277CBA308];
  v34 = *(v73 + 104);
  v73 += 104;
  v61 = v34;
  v34(v70);
  sub_261CEF0F4(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  *v72 = sub_261CFCC34();
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = v55;
  v36 = v56;
  v49 = v26;
  v26(v15, v55, v56);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v26(v15, v35, v36);
  v37 = v59;
  sub_261CFD6C4();
  v67(v37, 0, 1, v66);
  LOBYTE(v75[0]) = 1;
  sub_261CFD664();
  sub_261CFD664();
  v38 = v68;
  sub_261CFFCD4();
  v39 = sub_261CFFCE4();
  v40 = *(v39 - 8);
  v52 = *(v40 + 56);
  v53 = (v40 + 56);
  (v52)(v38, 0, 1, v39);
  v63(v69, 1, 1, v64);
  v61(v70, v62, v71);
  v41 = v37;
  v72[1] = sub_261CFCD44();
  sub_261CFF9B4();
  sub_261CFD874();
  v42 = v55;
  v43 = v56;
  v44 = v49;
  v49(v15, v55, v56);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v44(v15, v42, v43);
  sub_261CFD6C4();
  v67(v41, 0, 1, v66);
  LOBYTE(v75[0]) = 1;
  (v52)(v68, 1, 1, v39);
  v63(v69, 1, 1, v64);
  v61(v70, v62, v71);
  v45 = sub_261CFCD44();
  v46 = v72;
  v72[2] = v45;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE678, &qword_261D130B0);
  v74 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v46[3] = result;
  return result;
}

uint64_t sub_261CEC08C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for ReminderEntity(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_261B4C910(a1, &v10 - v7);
  sub_261B4C910(v8, v6);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
  sub_261CEF13C(v8, type metadata accessor for ReminderEntity);
}

uint64_t CompleteReminderAppIntent.reminder.setter(uint64_t a1)
{
  v2 = type metadata accessor for ReminderEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261B4C910(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_261CFCBC4();
  return sub_261CEF13C(a1, type metadata accessor for ReminderEntity);
}

uint64_t (*CompleteReminderAppIntent.reminder.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*CompleteReminderAppIntent.isCompleted.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t (*CompleteReminderAppIntent.completeSubtasks.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t sub_261CEC480()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDE660);
  __swift_project_value_buffer(v6, qword_27FEDE660);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t static CompleteReminderAppIntent.title.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D90 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE660);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t CompleteReminderAppIntent.init(reminder:isCompleted:completeSubtasks:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, char **a4@<X8>)
{
  v67 = a3;
  v66 = a2;
  v65 = a1;
  v86 = a4;
  v4 = type metadata accessor for ReminderEntity(0);
  v77 = *(v4 - 8);
  v78 = v4;
  v5 = MEMORY[0x28223BE20](v4);
  v64 = &v57 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v63 = &v57 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA390, &unk_261D02F60);
  MEMORY[0x28223BE20](v8 - 8);
  v82 = &v57 - v9;
  v85 = sub_261CFD184();
  v87 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v84 = &v57 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v74 = &v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v83 = &v57 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  MEMORY[0x28223BE20](v15 - 8);
  v62 = &v57 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v17 - 8);
  v59 = &v57 - v18;
  v19 = sub_261CFD674();
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v57 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_261CFD884();
  MEMORY[0x28223BE20](v23 - 8);
  v24 = sub_261CFFA44();
  MEMORY[0x28223BE20](v24 - 8);
  v25 = sub_261CFD6A4();
  v80 = v25;
  v26 = *(v25 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v61 = &v57 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = MEMORY[0x28223BE20](v27);
  v60 = &v57 - v30;
  MEMORY[0x28223BE20](v29);
  v68 = &v57 - v31;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAA68, &unk_261D03630);
  sub_261CFF9B4();
  sub_261CFD874();
  v33 = *(v20 + 104);
  v69 = *MEMORY[0x277CC9110];
  v32 = v69;
  v71 = v19;
  v33(v22, v69, v19);
  v70 = v33;
  v72 = v20 + 104;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v33(v22, v32, v19);
  v34 = v59;
  sub_261CFD6C4();
  v35 = *(v26 + 56);
  v79 = v26 + 56;
  v81 = v35;
  v35(v34, 0, 1, v25);
  v77[7](v62, 1, 1, v78);
  v36 = sub_261CFC834();
  v78 = v36;
  v37 = *(v36 - 8);
  v38 = *(v37 + 56);
  v77 = v38;
  v39 = v37 + 56;
  (v38)(v83, 1, 1, v36);
  v73 = v39;
  (v38)(v74, 1, 1, v36);
  v76 = *MEMORY[0x277CBA308];
  v40 = *(v87 + 104);
  v87 += 104;
  v75 = v40;
  v40(v84);
  sub_261CEF0F4(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  v41 = v34;
  v62 = sub_261CFCC34();
  *v86 = v62;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA3A0, &qword_261D02F70);
  sub_261CFF9B4();
  sub_261CFD874();
  v42 = v69;
  v43 = v71;
  v44 = v70;
  v70(v22, v69, v71);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v44(v22, v42, v43);
  v45 = v41;
  sub_261CFD6C4();
  v81(v41, 0, 1, v80);
  v89 = 1;
  sub_261CFD664();
  sub_261CFD664();
  v46 = v82;
  sub_261CFFCD4();
  v47 = sub_261CFFCE4();
  v48 = *(v47 - 8);
  v58 = *(v48 + 56);
  v60 = (v48 + 56);
  v58(v46, 0, 1, v47);
  (v77)(v83, 1, 1, v78);
  v75(v84, v76, v85);
  v61 = sub_261CFCD44();
  v86[1] = v61;
  sub_261CFF9B4();
  sub_261CFD874();
  v49 = v69;
  v50 = v71;
  v51 = v70;
  v70(v22, v69, v71);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v51(v22, v49, v50);
  sub_261CFD6C4();
  v81(v45, 0, 1, v80);
  v89 = 1;
  v58(v82, 1, 1, v47);
  (v77)(v83, 1, 1, v78);
  v75(v84, v76, v85);
  v52 = sub_261CFCD44();
  v53 = v86;
  v86[2] = v52;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE678, &qword_261D130B0);
  v88 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  v53[3] = sub_261CFC684();
  v54 = v65;
  v55 = v63;
  sub_261B4C910(v65, v63);
  sub_261B4C910(v55, v64);
  sub_261CFCBC4();
  sub_261CEF13C(v55, type metadata accessor for ReminderEntity);
  v89 = v66;
  sub_261CFCBC4();
  v89 = v67;
  sub_261CFCBC4();
  return sub_261CEF13C(v54, type metadata accessor for ReminderEntity);
}

uint64_t CompleteReminderAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261CED440, v5, v4);
}

uint64_t sub_261CED440()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_261B06958;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C56268(v6, "CompleteReminderAppIntent", 25, 2, v4, v5, v2, v3);
}

uint64_t sub_261CED534(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[14] = a4;
  v5[15] = a5;
  v5[12] = a2;
  v5[13] = a3;
  v5[11] = a1;
  v6 = sub_261CFC9D4();
  v5[16] = v6;
  v5[17] = *(v6 - 8);
  v5[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE110, &unk_261D035B0);
  v5[19] = swift_task_alloc();
  v5[20] = swift_task_alloc();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAAF8, &qword_261D13230);
  v5[21] = v7;
  v5[22] = *(v7 - 8);
  v5[23] = swift_task_alloc();
  type metadata accessor for ListEntity(0);
  v5[24] = swift_task_alloc();
  v8 = type metadata accessor for ReminderEntity(0);
  v5[25] = v8;
  v5[26] = *(v8 - 8);
  v5[27] = swift_task_alloc();
  v5[28] = swift_task_alloc();
  v9 = sub_261CFD754();
  v5[29] = v9;
  v5[30] = *(v9 - 8);
  v5[31] = swift_task_alloc();
  v5[32] = swift_task_alloc();
  sub_261CFFD24();
  v5[33] = sub_261CFFD14();
  v11 = sub_261CFFCF4();
  v5[34] = v11;
  v5[35] = v10;

  return MEMORY[0x2822009F8](sub_261CED7D8, v11, v10);
}

uint64_t sub_261CED7D8()
{
  sub_261B2C804(0, *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));
  sub_261CFCBB4();
  v1 = *(v0 + 304);
  sub_261CFCBB4();
  v2 = *(v0 + 256);
  v3 = *(v0 + 224);
  if (v1 == 1)
  {
    v4 = *(v0 + 192);
    sub_261CFCA04();
    sub_261CEF13C(v3, type metadata accessor for ReminderEntity);
    sub_261BBF268(v2, v14, v15);
    v5 = type metadata accessor for ListEntity;
    v6 = v4;
  }

  else
  {
    sub_261BBF818(0, *(v0 + 256));
    v5 = type metadata accessor for ReminderEntity;
    v6 = v3;
  }

  sub_261CEF13C(v6, v5);
  v8 = *(v0 + 112);
  v7 = *(v0 + 120);
  v16 = *(v0 + 96);
  sub_261CFC664();
  v9 = *(v0 + 40);
  v10 = *(v0 + 48);
  __swift_project_boxed_opaque_existential_1((v0 + 16), v9);
  *(v0 + 56) = v16;
  *(v0 + 72) = v8;
  *(v0 + 80) = v7;
  v17 = (*(v10 + 8) + **(v10 + 8));
  v11 = swift_task_alloc();
  *(v0 + 288) = v11;
  *v11 = v0;
  v11[1] = sub_261CEDA08;
  v12 = *(v0 + 184);

  return v17(v12, v0 + 56, v9, v10);
}

uint64_t sub_261CEDA08()
{
  v2 = *v1;
  *(*v1 + 296) = v0;

  v3 = *(v2 + 272);
  v4 = *(v2 + 280);
  if (v0)
  {
    v5 = sub_261CEE094;
  }

  else
  {
    v5 = sub_261CEDB1C;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261CEDB1C()
{
  v40 = v0;
  v1 = v0[25];
  v2 = v0[26];
  v3 = v0[20];
  v4 = v0[19];

  sub_261B01D28(&qword_27FEDE6D8, &qword_27FEDAAF8, &qword_261D13230, MEMORY[0x277CBA268]);
  sub_261CFC964();
  sub_261C90F90(v3, v4);
  if ((*(v2 + 48))(v4, 1, v1) == 1)
  {
    v6 = v0[30];
    v5 = v0[31];
    v7 = v0[29];
    sub_261C91000(v0[19]);
    sub_261CFD704();
    v8 = sub_261CFD714();
    v10 = v9;
    v11 = *(v6 + 8);
    v11(v5, v7);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v12 = sub_261CFF7A4();
    __swift_project_value_buffer(v12, qword_27FED9EF8);
    sub_261CFD104();
    v13 = sub_261CFF784();
    v14 = sub_261CFFE64();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v39[0] = v16;
      *v15 = 136315650;
      v17 = sub_261B879C8(v8, v10, v39);

      *(v15 + 4) = v17;
      *(v15 + 12) = 2048;
      *(v15 + 14) = 326;
      *(v15 + 22) = 2080;
      *(v15 + 24) = sub_261B879C8(0xD00000000000004DLL, 0x8000000261D23DC0, v39);
      _os_log_impl(&dword_261AE2000, v13, v14, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v15, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v16, -1, -1);
      MEMORY[0x26671D560](v15, -1, -1);
    }

    else
    {
    }

    v28 = v0[32];
    v29 = v0[29];
    v30 = v0[22];
    v31 = v0[23];
    v33 = v0[20];
    v32 = v0[21];
    sub_261B01D70();
    swift_allocError();
    *v34 = 20;
    swift_willThrow();
    sub_261C91000(v33);
    (*(v30 + 8))(v31, v32);
    v11(v28, v29);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v27 = v0[1];
  }

  else
  {
    v18 = v0[31];
    v19 = v0[30];
    v36 = v0[29];
    v37 = v0[32];
    v20 = v0[27];
    v21 = v0[22];
    v22 = v0[23];
    v24 = v0[20];
    v23 = v0[21];
    v25 = v0[18];
    v26 = v0[17];
    v38 = v0[16];
    sub_261B837B0(v0[19], v20);
    sub_261C91000(v24);
    (*(v21 + 8))(v22, v23);
    (*(v19 + 16))(v18, v37, v36);
    sub_261CFC9E4();
    sub_261CEF0F4(&qword_280D22350, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
    sub_261CEF0F4(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
    sub_261CFC984();
    (*(v26 + 8))(v25, v38);
    sub_261CEF13C(v20, type metadata accessor for ReminderEntity);
    (*(v19 + 8))(v37, v36);
    __swift_destroy_boxed_opaque_existential_0(v0 + 2);

    v27 = v0[1];
  }

  return v27();
}

uint64_t sub_261CEE094()
{
  v1 = v0[32];
  v2 = v0[29];
  v3 = v0[30];

  (*(v3 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_0(v0 + 2);

  v4 = v0[1];

  return v4();
}

uint64_t static CompleteReminderAppIntent.parameterSummary.getter()
{
  v0 = sub_261CFD254();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v5[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v1 + 104))(v3, *MEMORY[0x277CBA468], v0);
  v5[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE680, &unk_261D13108);
  sub_261B312B8();
  sub_261B01D28(&qword_27FEDE688, &qword_27FEDE680, &unk_261D13108, MEMORY[0x277CBA2C0]);
  sub_261B01D28(&qword_27FEDE690, &qword_27FEDA3A0, &qword_261D02F70, MEMORY[0x277CB9F10]);
  return sub_261CFD2C4();
}

uint64_t sub_261CEE384@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6B8, &qword_261D13240);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6C0, &qword_261D13248);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE680, &unk_261D13108);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_261B312B8();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6C8, &qword_261D13278);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6D0, &qword_261D13280);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  sub_261CFD124();
  v10 = sub_261B01D28(&qword_27FEDE688, &qword_27FEDE680, &unk_261D13108, MEMORY[0x277CBA2C0]);
  MEMORY[0x266719870](v7, &type metadata for CompleteReminderAppIntent, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x266719860](v9, &type metadata for CompleteReminderAppIntent, v3, v10);
  return (v11)(v9, v3);
}

uint64_t sub_261CEE6A8@<X0>(uint64_t a1@<X8>)
{
  v13[1] = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6B8, &qword_261D13240);
  MEMORY[0x28223BE20](v1 - 8);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6C0, &qword_261D13248);
  MEMORY[0x28223BE20](v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE680, &unk_261D13108);
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = v13 - v8;
  sub_261B312B8();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6C8, &qword_261D13278);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE6D0, &qword_261D13280);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  sub_261CFD134();
  v10 = sub_261B01D28(&qword_27FEDE688, &qword_27FEDE680, &unk_261D13108, MEMORY[0x277CBA2C0]);
  MEMORY[0x266719870](v7, &type metadata for CompleteReminderAppIntent, v3, v10);
  v11 = *(v4 + 8);
  v11(v7, v3);
  MEMORY[0x266719860](v9, &type metadata for CompleteReminderAppIntent, v3, v10);
  return (v11)(v9, v3);
}

unint64_t sub_261CEE9EC()
{
  result = qword_27FEDE698;
  if (!qword_27FEDE698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE698);
  }

  return result;
}

uint64_t sub_261CEEA90()
{
  swift_getKeyPath();
  sub_261B312B8();
  v0 = sub_261CFCDA4();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA740, &qword_261D05A10);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_261D030F0;
  *(v1 + 32) = v0;
  sub_261CFCDA4();
  v2 = sub_261CFD104();

  return v2;
}

uint64_t sub_261CEEB4C@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9D90 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD6A4();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE660);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261CEEBF4(uint64_t a1, uint64_t a2)
{
  v2 = sub_261CFD254();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_getKeyPath();
  (*(v3 + 104))(v5, *MEMORY[0x277CBA468], v2);
  v7[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE680, &unk_261D13108);
  sub_261B01D28(&qword_27FEDE688, &qword_27FEDE680, &unk_261D13108, MEMORY[0x277CBA2C0]);
  sub_261B01D28(&qword_27FEDE690, &qword_27FEDA3A0, &qword_261D02F70, MEMORY[0x277CB9F10]);
  return sub_261CFD2C4();
}

uint64_t sub_261CEEDD8(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261CEEE7C, v5, v4);
}

uint64_t sub_261CEEE7C()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_261B07CF8;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C56268(v6, "CompleteReminderAppIntent", 25, 2, v4, v5, v2, v3);
}

uint64_t sub_261CEEF74(uint64_t a1)
{
  v2 = sub_261B312B8();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of CompleteReminderIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_261CEF0F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261CEF13C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AddOrRemoveTagsAppIntent.init()@<X0>(uint64_t *a1@<X8>)
{
  v70 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA280, &unk_261D02510);
  MEMORY[0x28223BE20](v1 - 8);
  v53 = v50 - v2;
  v69 = sub_261CFD184();
  v71 = *(v69 - 8);
  MEMORY[0x28223BE20](v69);
  v66 = v50 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1E8, &unk_261D02310);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v65 = v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v55 = v50 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v8 - 8);
  v68 = v50 - v9;
  v10 = sub_261CFD674();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_261CFD884();
  MEMORY[0x28223BE20](v14 - 8);
  v15 = sub_261CFFA44();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = sub_261CFD6A4();
  v64 = v16;
  v17 = *(v16 - 8);
  v18 = MEMORY[0x28223BE20](v16);
  v50[2] = v50 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = v50 - v20;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE748, &qword_261D132C8);
  sub_261CFF9B4();
  sub_261CFD874();
  v22 = *MEMORY[0x277CC9110];
  v51 = v11;
  v23 = *(v11 + 104);
  v62 = v22;
  v50[0] = v10;
  v23(v13, v22, v10);
  v61 = v23;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v23(v13, v22, v10);
  v24 = v68;
  sub_261CFD6C4();
  v25 = *(v17 + 56);
  v63 = v17 + 56;
  v57 = v25;
  v25(v24, 0, 1, v16);
  LOBYTE(v73) = 0;
  v26 = sub_261CFC834();
  v27 = *(v26 - 8);
  v28 = *(v27 + 56);
  v29 = v27 + 56;
  v30 = v55;
  v28(v55, 1, 1, v26);
  v59 = v28;
  v60 = v26;
  v58 = v29;
  v28(v65, 1, 1, v26);
  v31 = *(v71 + 104);
  v54 = *MEMORY[0x277CBA308];
  v71 += 104;
  v56 = v31;
  v31(v66);
  v32 = v30;
  sub_261C28D0C();
  v33 = v68;
  v34 = sub_261CFCC04();
  v35 = v50[0];
  *v70 = v34;
  v50[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA1F0, &qword_261D132D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v36 = v62;
  v37 = v61;
  v61(v13, v62, v35);
  v67 = v21;
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v52 = v11 + 104;
  v37(v13, v36, v35);
  sub_261CFD6C4();
  v57(v33, 0, 1, v64);
  v73 = 0;
  sub_261CFF9B4();
  if (qword_280D22DA8 != -1)
  {
    swift_once();
  }

  v38 = __swift_project_value_buffer(v35, qword_280D27028);
  (*(v51 + 16))(v13, v38, v35);
  sub_261CFD874();
  sub_261CFD6C4();
  sub_261CFC844();
  v40 = v59;
  v39 = v60;
  v59(v32, 0, 1, v60);
  v41 = v35;
  v40(v65, 1, 1, v39);
  v42 = v66;
  v56(v66, v54, v69);
  sub_261CEF0F4(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  v43 = v68;
  v70[1] = sub_261CFCC34();
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE750, &qword_261D132D8);
  sub_261CFF9B4();
  sub_261CFD874();
  v44 = v62;
  v45 = v61;
  v61(v13, v62, v41);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v45(v13, v44, v41);
  sub_261CFD6C4();
  v57(v43, 0, 1, v64);
  v73 = 0;
  v46 = sub_261CFF994();
  (*(*(v46 - 8) + 56))(v53, 1, 1, v46);
  v59(v55, 1, 1, v60);
  v56(v42, v54, v69);
  v47 = sub_261CFCD24();
  v48 = v70;
  v70[2] = v47;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE758, &qword_261D132E0);
  v72 = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  v48[3] = result;
  return result;
}

void *sub_261CEFD4C@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261CEFDBC@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261CEFDF8(uint64_t *a1, uint64_t *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCBC4();
}

uint64_t AddOrRemoveTagsAppIntent.Operation.rawValue.getter()
{
  if (*v0)
  {
    return 0x65766F6D6572;
  }

  else
  {
    return 6579297;
  }
}

uint64_t sub_261CEFEE4()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDE6E0);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE6E0);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_261CEFFAC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_261CFD674();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_261CFD234();
  __swift_allocate_value_buffer(v10, qword_27FEDE6F8);
  __swift_project_value_buffer(v10, qword_27FEDE6F8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6C4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t sub_261CF02C0()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v0 - 8);
  v35 = &v23 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v23 - v3;
  v37 = sub_261CFD674();
  v4 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v36 = sub_261CFD6A4();
  v39 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE848, &unk_261D137B0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD200, &qword_261D0DB30);
  v38 = v9;
  v10 = *(v9 - 8);
  v33 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v28 = v12;
  *(v12 + 16) = xmmword_261D01400;
  v13 = v12 + v11;
  v29 = *(v9 + 48);
  *(v12 + v11) = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v30 = *MEMORY[0x277CC9110];
  v14 = *(v4 + 104);
  v31 = v4 + 104;
  v32 = v14;
  v24 = v6;
  v14(v6);
  sub_261CFD6C4();
  v15 = *(v39 + 56);
  v39 += 56;
  v26 = v15;
  v16 = v34;
  v15(v34, 1, 1, v36);
  v17 = sub_261CFD074();
  v25 = *(*(v17 - 8) + 56);
  v18 = v35;
  v25(v35, 1, 1, v17);
  v27 = v13;
  v19 = v18;
  sub_261CFD0A4();
  v20 = (v13 + v33);
  v33 = *(v38 + 48);
  *v20 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v32(v24, v30, v37);
  sub_261CFD6C4();
  v26(v16, 1, 1, v36);
  v25(v19, 1, 1, v17);
  sub_261CFD0A4();
  v21 = sub_261C3B040(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FEDE710 = v21;
  return result;
}

double static AddOrRemoveTagsAppIntent.Operation.caseDisplayRepresentations.getter()
{
  if (qword_27FED9DA8 != -1)
  {
    swift_once();
  }

  sub_261CFD104();
  return result;
}

RemindersAppIntents::AddOrRemoveTagsAppIntent::Operation_optional __swiftcall AddOrRemoveTagsAppIntent.Operation.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_261CF08E8@<X0>(char *a2@<X8>)
{
  v3 = sub_261D00554();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

uint64_t sub_261CF0990(uint64_t a1)
{
  v2 = sub_261C28D0C();

  return MEMORY[0x28210B458](a1, v2);
}

double sub_261CF09DC()
{
  if (qword_27FED9DA8 != -1)
  {
    swift_once();
  }

  sub_261CFD104();
  return result;
}

uint64_t sub_261CF0A38(uint64_t a1)
{
  v2 = sub_261CF2578();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t (*AddOrRemoveTagsAppIntent.operation.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*AddOrRemoveTagsAppIntent.reminders.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261B02064;
}

uint64_t (*AddOrRemoveTagsAppIntent.tags.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFCBA4();
  return sub_261AFA230;
}

uint64_t sub_261CF0C54()
{
  v0 = sub_261CFD244();
  __swift_allocate_value_buffer(v0, qword_27FEDE718);
  v1 = __swift_project_value_buffer(v0, qword_27FEDE718);
  v2 = *MEMORY[0x277CBA400];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_261CF0D14()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_261CFD6A4();
  __swift_allocate_value_buffer(v6, qword_27FEDE730);
  __swift_project_value_buffer(v6, qword_27FEDE730);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

uint64_t sub_261CF0F2C@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t static AddOrRemoveTagsAppIntent.description.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15[-v3];
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v6 + 104))(v8, *MEMORY[0x277CC9110], v5);
  sub_261CFD6C4();
  (*(v12 + 56))(v4, 1, 1, v11);
  sub_261CFCF04();
  v13 = sub_261CFCEE4();
  return (*(*(v13 - 8) + 56))(a1, 0, 1, v13);
}

uint64_t AddOrRemoveTagsAppIntent.perform()(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261CF1370, v5, v4);
}

uint64_t sub_261CF1370()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_261B06958;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C54E80(v6, "AddOrRemoveTagsAppIntent", 24, 2, v4, v5, v2, v3);
}

uint64_t sub_261CF1464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[16] = a4;
  v5[17] = a5;
  v5[14] = a2;
  v5[15] = a3;
  v5[13] = a1;
  v6 = sub_261CFC9D4();
  v5[18] = v6;
  v5[19] = *(v6 - 8);
  v5[20] = swift_task_alloc();
  v5[21] = *(type metadata accessor for ReminderEntity(0) - 8);
  v5[22] = swift_task_alloc();
  v7 = sub_261CFD754();
  v5[23] = v7;
  v5[24] = *(v7 - 8);
  v5[25] = swift_task_alloc();
  v5[26] = swift_task_alloc();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA538, &qword_261D030D0);
  v5[27] = v8;
  v5[28] = *(v8 - 8);
  v5[29] = swift_task_alloc();
  sub_261CFFD24();
  v5[30] = sub_261CFFD14();
  v10 = sub_261CFFCF4();
  v5[31] = v10;
  v5[32] = v9;

  return MEMORY[0x2822009F8](sub_261CF1688, v10, v9);
}

uint64_t sub_261CF1688()
{
  v1 = v0[16];
  v2 = v0[17];
  v4 = v0[14];
  v3 = v0[15];
  sub_261B2D5D0(0, v4, v3, v1, v2);
  sub_261CFC664();
  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v0[7] = v4;
  v0[8] = v3;
  v0[9] = v1;
  v0[10] = v2;
  v10 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  v0[33] = v7;
  *v7 = v0;
  v7[1] = sub_261CF180C;
  v8 = v0[29];

  return v10(v8, v0 + 7, v5, v6);
}

uint64_t sub_261CF180C()
{
  v2 = *v1;
  *(*v1 + 272) = v0;

  v3 = *(v2 + 248);
  v4 = *(v2 + 256);
  if (v0)
  {
    v5 = sub_261CF1D30;
  }

  else
  {
    v5 = sub_261CF1920;
  }

  return MEMORY[0x2822009F8](v5, v3, v4);
}

uint64_t sub_261CF1920()
{
  v1 = v0[34];

  sub_261B01D28(&qword_27FEDE840, &qword_27FEDA538, &qword_261D030D0, MEMORY[0x277CBA268]);
  sub_261CFC964();
  v2 = sub_261CF3070(0xD000000000000054, 0x8000000261D24230, 0xD000000000000077, 0x8000000261D24290, 133, v0[11]);
  v3 = v1;
  v4 = v0[29];
  v5 = v0[27];
  v6 = *(v0[28] + 8);
  if (v3)
  {
    v6(v0[29], v0[27]);

    __swift_destroy_boxed_opaque_existential_0(v0 + 2);
LABEL_3:

    v7 = v0[1];
    goto LABEL_6;
  }

  v8 = v2;
  sub_261CFD104();
  v6(v4, v5);

  __swift_destroy_boxed_opaque_existential_0(v0 + 2);
  if (!*(v8 + 16))
  {

    if (qword_27FED9D98 != -1)
    {
      swift_once();
    }

    v18 = sub_261CFF7A4();
    __swift_project_value_buffer(v18, qword_27FEDE6E0);
    v19 = sub_261CFF784();
    v20 = sub_261CFFE64();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_261AE2000, v19, v20, "[AddOrRemoveTagsAppIntent] reminders parameter is an empty array despite requestValueDialog was prompted.", v21, 2u);
      MEMORY[0x26671D560](v21, -1, -1);
    }

    sub_261B01D70();
    swift_allocError();
    *v22 = 24;
    swift_willThrow();
    goto LABEL_3;
  }

  v10 = v0[25];
  v9 = v0[26];
  v12 = v0[23];
  v11 = v0[24];
  v13 = v0[22];
  v15 = v0[19];
  v14 = v0[20];
  v23 = v0[18];
  v16 = *(v0[21] + 80);
  sub_261B4C910(v8 + ((v16 + 32) & ~v16), v13);
  sub_261BBF818(0, v9);
  sub_261B4C974(v13);
  v0[12] = v8;
  (*(v11 + 16))(v10, v9, v12);
  sub_261CFC9E4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0D0, qword_261D11550);
  sub_261B834D8();
  sub_261CEF0F4(&qword_27FEDA3C0, MEMORY[0x277CB9DE0], MEMORY[0x277CB9DD8]);
  sub_261CFC984();
  (*(v15 + 8))(v14, v23);
  (*(v11 + 8))(v9, v12);

  v7 = v0[1];
LABEL_6:

  return v7();
}

uint64_t sub_261CF1D30()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static AddOrRemoveTagsAppIntent.parameterSummary.getter()
{
  KeyPath = swift_getKeyPath();
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE760, &qword_261D13338);
  v2 = sub_261B31264();
  v3 = sub_261B01D28(&qword_27FEDE768, &qword_27FEDE760, &qword_261D13338, MEMORY[0x277CBA4A8]);

  return MEMORY[0x28210C568](KeyPath, sub_261CF1EAC, 0, v1, v2, v3);
}

uint64_t sub_261CF1EAC@<X0>(uint64_t a1@<X8>)
{
  v34 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE7E8, &qword_261D13718);
  v2 = *(v1 - 8);
  v32 = v1;
  v33 = v2;
  v3 = MEMORY[0x28223BE20](v1);
  v30 = v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v31 = v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE7F0, &qword_261D13720);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v28 = v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = v25 - v11;
  MEMORY[0x28223BE20](v10);
  v29 = v25 - v13;
  v38 = 0;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE7F8, &qword_261D13728);
  v25[3] = sub_261B31264();
  v14 = sub_261C0F810();
  v25[2] = sub_261B01D28(&qword_27FEDE800, &qword_27FEDE7F8, &qword_261D13728, MEMORY[0x277CBA2C0]);
  sub_261CFD2B4();
  v25[1] = sub_261B01D28(&qword_27FEDE808, &qword_27FEDE7F0, &qword_261D13720, MEMORY[0x277CBA488]);
  sub_261CFD284();
  v36 = *(v7 + 8);
  v26 = v12;
  v36(v12, v6);
  v27 = v7 + 8;
  v37 = 1;
  v15 = v28;
  v25[0] = v14;
  sub_261CFD2B4();
  sub_261CFD284();
  v36(v15, v6);
  v16 = v30;
  sub_261CFD344();
  sub_261B01D28(&qword_27FEDE810, &qword_27FEDE7E8, &qword_261D13718, MEMORY[0x277CBA4C8]);
  v17 = v31;
  v18 = v16;
  v19 = v32;
  sub_261CFD284();
  v20 = *(v33 + 8);
  v20(v18, v19);
  v21 = v29;
  v22 = v26;
  sub_261CFD264();
  v20(v17, v19);
  v23 = v36;
  v36(v22, v6);
  return v23(v21, v6);
}

unint64_t sub_261CF237C()
{
  result = qword_27FEDE770;
  if (!qword_27FEDE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE770);
  }

  return result;
}

unint64_t sub_261CF2418()
{
  result = qword_27FEDE788;
  if (!qword_27FEDE788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE788);
  }

  return result;
}

unint64_t sub_261CF2470()
{
  result = qword_27FEDE790;
  if (!qword_27FEDE790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE790);
  }

  return result;
}

unint64_t sub_261CF24C8()
{
  result = qword_27FEDE798;
  if (!qword_27FEDE798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE798);
  }

  return result;
}

unint64_t sub_261CF2520()
{
  result = qword_27FEDE7A0;
  if (!qword_27FEDE7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE7A0);
  }

  return result;
}

unint64_t sub_261CF2578()
{
  result = qword_27FEDE7A8;
  if (!qword_27FEDE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE7A8);
  }

  return result;
}

unint64_t sub_261CF2620()
{
  result = qword_27FEDE7B0;
  if (!qword_27FEDE7B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE7B0);
  }

  return result;
}

unint64_t sub_261CF2678()
{
  result = qword_27FEDE7B8;
  if (!qword_27FEDE7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE7B8);
  }

  return result;
}

unint64_t sub_261CF26D0()
{
  result = qword_27FEDE7C0;
  if (!qword_27FEDE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE7C0);
  }

  return result;
}

unint64_t sub_261CF272C()
{
  result = qword_27FEDE7C8;
  if (!qword_27FEDE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE7C8);
  }

  return result;
}

uint64_t sub_261CF27E8@<X0>(uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE818, &qword_261D13730);
  MEMORY[0x28223BE20](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE820, &qword_261D13738);
  MEMORY[0x28223BE20](v5);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE7F8, &qword_261D13728);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = v16 - v11;
  sub_261B31264();
  sub_261CFD164();
  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE828, &qword_261D13740);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE830, &qword_261D13770);
  sub_261CFD144();

  sub_261CFD154();
  swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE838, &qword_261D137A0);
  sub_261CFD144();

  sub_261CFD154();
  sub_261CFD174();
  sub_261CFD124();
  v13 = sub_261B01D28(&qword_27FEDE800, &qword_27FEDE7F8, &qword_261D13728, MEMORY[0x277CBA2C0]);
  MEMORY[0x266719870](v10, &type metadata for AddOrRemoveTagsAppIntent, v6, v13);
  v14 = *(v7 + 8);
  v14(v10, v6);
  MEMORY[0x266719860](v12, &type metadata for AddOrRemoveTagsAppIntent, v6, v13);
  return (v14)(v12, v6);
}

uint64_t sub_261CF2BD0@<X0>(void *a1@<X2>, uint64_t (*a2)(void)@<X3>, uint64_t a3@<X4>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t sub_261CF2C78(uint64_t a1, uint64_t a2)
{
  KeyPath = swift_getKeyPath();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE760, &qword_261D13338);
  v5 = sub_261B01D28(&qword_27FEDE768, &qword_27FEDE760, &qword_261D13338, MEMORY[0x277CBA4A8]);

  return MEMORY[0x28210C568](KeyPath, sub_261CF1EAC, 0, v4, a2, v5);
}

uint64_t sub_261CF2D44(uint64_t a1)
{
  *(v2 + 16) = a1;
  v3 = v1[1];
  *(v2 + 24) = *v1;
  *(v2 + 40) = v3;
  sub_261CFFD24();
  *(v2 + 56) = sub_261CFFD14();
  v5 = sub_261CFFCF4();
  *(v2 + 64) = v5;
  *(v2 + 72) = v4;

  return MEMORY[0x2822009F8](sub_261CF2DE8, v5, v4);
}

uint64_t sub_261CF2DE8()
{
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  v1 = swift_task_alloc();
  v0[10] = v1;
  *v1 = v0;
  v1[1] = sub_261B07CF8;
  v2 = v0[5];
  v3 = v0[6];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return sub_261C54E80(v6, "AddOrRemoveTagsAppIntent", 24, 2, v4, v5, v2, v3);
}

uint64_t sub_261CF2EE0(uint64_t a1)
{
  v2 = sub_261B31264();

  return MEMORY[0x28210B538](a1, v2);
}

uint64_t dispatch thunk of AddOrRemoveTagsIntentPerforming.perform(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

unint64_t sub_261CF3070(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v26[1] = a4;
  v10 = sub_261CFD754();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a6)
  {
    v26[0] = a5;
    sub_261CFD704();
    v14 = sub_261CFD714();
    a6 = v15;
    (*(v11 + 8))(v13, v10);
    if (qword_27FED97C0 != -1)
    {
      swift_once();
    }

    v16 = sub_261CFF7A4();
    __swift_project_value_buffer(v16, qword_27FED9EF8);
    sub_261CFD104();
    sub_261CFD104();
    v17 = sub_261CFF784();
    v18 = sub_261CFFE64();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = a1;
      v20 = a2;
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v27 = v22;
      *v21 = 136315650;
      v23 = sub_261B879C8(v14, a6, &v27);

      *(v21 + 4) = v23;
      *(v21 + 12) = 2048;
      *(v21 + 14) = v26[0];
      *(v21 + 22) = 2080;
      *(v21 + 24) = sub_261B879C8(v19, v20, &v27);
      _os_log_impl(&dword_261AE2000, v17, v18, "Value is unexpectedly nil {source: %s:%ld, description: %s}", v21, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x26671D560](v22, -1, -1);
      MEMORY[0x26671D560](v21, -1, -1);
    }

    else
    {
    }

    sub_261B01D70();
    swift_allocError();
    *v24 = 20;
    swift_willThrow();
  }

  return a6;
}

uint64_t SectionEntity.$isCollapsed.getter()
{
  type metadata accessor for SectionEntity(0);

  return sub_261CFCDA4();
}

uint64_t type metadata accessor for SectionEntity(uint64_t a1)
{
  result = qword_280D22488;
  if (!qword_280D22488)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

BOOL SectionEntity.isUserCreated.getter()
{
  v1 = type metadata accessor for SectionEntityID(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for SectionEntity(0);
  sub_261CBD5B4(v0 + *(v4 + 24), v3, type metadata accessor for SectionEntityID);
  v5 = swift_getEnumCaseMultiPayload() != 1;
  sub_261C2E570(v3, type metadata accessor for SectionEntityID);
  return v5;
}

uint64_t sub_261CF3550(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &unk_27FEDE0C0, &unk_261D02500);
  type metadata accessor for SectionEntity(0);
  sub_261AFB668(v7, v5, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCA14();
  return sub_261AE6A40(v7, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t SectionEntity.parent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for SectionEntity(0);
  sub_261AFB668(a1, v4, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCA14();
  return sub_261AE6A40(a1, &unk_27FEDE0C0, &unk_261D02500);
}

uint64_t SectionEntity.$displayName.getter()
{
  type metadata accessor for SectionEntity(0);

  return sub_261CFCDA4();
}

uint64_t sub_261CF374C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t *a6@<X8>)
{
  v59 = a5;
  v53 = a4;
  v56 = a2;
  v57 = a3;
  v51 = a1;
  v54 = type metadata accessor for ListEntity(0);
  v52 = *(v54 - 8);
  v7 = MEMORY[0x28223BE20](v54);
  v58 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v55 = v37 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v50 = v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = v37 - v13;
  v14 = sub_261CFD674();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_261CFD884();
  MEMORY[0x28223BE20](v18 - 8);
  v19 = sub_261CFFA44();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v48 = sub_261CFCB24();
  v43 = a6;
  *a6 = v48;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  v44 = sub_261CF703C(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v47 = sub_261CFCA64();
  a6[1] = v47;
  v23 = type metadata accessor for SectionEntity(0);
  v45 = *(v23 + 28);
  v39 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
  sub_261CFF9B4();
  sub_261CFD874();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v15 + 104);
  v41 = v15 + 104;
  v25(v17, v24, v14);
  v40 = v25;
  sub_261CFD6B4();
  v46 = MEMORY[0x2667199E0](v22, &type metadata for UpdateSectionDisplayNameAppIntent);
  v26 = v43;
  *(v43 + v45) = v46;
  v42 = *(v23 + 32);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v38 = v14;
  v25(v17, v24, v14);
  sub_261CFD6B4();
  v45 = MEMORY[0x2667199F0](v22, &type metadata for UpdateSectionIsCollapsedAppIntent);
  *(v26 + v42) = v45;
  v27 = v26;
  v28 = v39;
  v42 = *(v39 + 36);
  v37[1] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
  sub_261CFF9B4();
  sub_261CFD874();
  v29 = v40;
  v40(v17, v24, v14);
  sub_261CFD6C4();
  v44 = sub_261CFCA54();
  *(v27 + v42) = v44;
  v42 = *(v28 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  v29(v17, v24, v38);
  sub_261CFD6C4();
  sub_261CF703C(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  *(v27 + v42) = sub_261CFCA54();
  v30 = v51;
  sub_261CBD5B4(v51, v27 + *(v28 + 24), type metadata accessor for SectionEntityID);
  v31 = v53;
  v32 = v49;
  sub_261CBD5B4(v53, v49, type metadata accessor for ListEntity);
  (*(v52 + 56))(v32, 0, 1, v54);
  sub_261AFB668(v32, v50, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCA14();
  sub_261AE6A40(v32, &unk_27FEDE0C0, &unk_261D02500);
  v33 = v56;
  v60 = v56;
  v61 = v57;
  v34 = v57;
  sub_261CFD104();
  sub_261CFD2E4();
  LOBYTE(v60) = v59;
  sub_261CFD2E4();
  v60 = v33;
  v61 = v34;
  sub_261CFCA14();
  v35 = v55;
  sub_261CBD5B4(v31, v55, type metadata accessor for ListEntity);
  sub_261CBD5B4(v35, v58, type metadata accessor for ListEntity);
  sub_261CFCA14();
  sub_261C2E570(v31, type metadata accessor for ListEntity);
  sub_261C2E570(v30, type metadata accessor for SectionEntityID);
  return sub_261C2E570(v35, type metadata accessor for ListEntity);
}

uint64_t sub_261CF3F80@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v60 = &v39[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v59 = &v39[-v7];
  v49 = sub_261CFD674();
  v62 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v45 = &v39[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v39[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = type metadata accessor for ListEntity(0);
  v54 = v14;
  v56 = *(v14 - 8);
  v15 = MEMORY[0x28223BE20](v14);
  v58 = &v39[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v17 = MEMORY[0x28223BE20](v15);
  v57 = &v39[-v18];
  MEMORY[0x28223BE20](v17);
  v20 = &v39[-v19];
  v50 = &v39[-v19];
  v21 = type metadata accessor for SectionEntityID(0);
  MEMORY[0x28223BE20](v21);
  v52 = &v39[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_261CBD5B4(a1 + *(v14 + 20), v52, type metadata accessor for AppEntityID);
  swift_storeEnumTagMultiPayload();
  v51 = type metadata accessor for ListEntity;
  sub_261CBD5B4(a1, v20, type metadata accessor for ListEntity);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v55 = sub_261CFCB24();
  v44 = a2;
  *a2 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC9C8, &unk_261D11CD0);
  v46 = sub_261CF703C(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
  v53 = sub_261CFCA64();
  a2[1] = v53;
  v23 = type metadata accessor for SectionEntity(0);
  v47 = *(v23 + 28);
  v41 = v23;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC2D0, &qword_261D096E8);
  sub_261CFF9B4();
  sub_261CFD874();
  v24 = *MEMORY[0x277CC9110];
  v25 = *(v62 + 104);
  v62 += 104;
  v26 = v45;
  v27 = v49;
  v25(v45, v24, v49);
  v42 = v25;
  v61 = v13;
  sub_261CFD6B4();
  v48 = MEMORY[0x2667199E0](v13, &type metadata for UpdateSectionDisplayNameAppIntent);
  v28 = v44;
  *(v44 + v47) = v48;
  v43 = *(v23 + 32);
  v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8D0, &qword_261D137D0);
  sub_261CFF9B4();
  sub_261CFD874();
  v40 = v24;
  v25(v26, v24, v27);
  v29 = v61;
  sub_261CFD6B4();
  v47 = MEMORY[0x2667199F0](v29, &type metadata for UpdateSectionIsCollapsedAppIntent);
  *(v28 + v43) = v47;
  v30 = v28;
  v31 = v41;
  v43 = *(v41 + 36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDCFD0, &qword_261D0D0D8);
  sub_261CFF9B4();
  sub_261CFD874();
  v32 = v42;
  v42(v26, v24, v27);
  sub_261CFD6C4();
  v46 = sub_261CFCA54();
  *(v30 + v43) = v46;
  v43 = *(v31 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8E0, &unk_261D11D10);
  sub_261CFF9B4();
  sub_261CFD874();
  v32(v26, v40, v27);
  sub_261CFD6C4();
  sub_261CF703C(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  *(v30 + v43) = sub_261CFCA54();
  v33 = v52;
  sub_261CBD5B4(v52, v30 + *(v31 + 24), type metadata accessor for SectionEntityID);
  v35 = v50;
  v34 = v51;
  v36 = v59;
  sub_261CBD5B4(v50, v59, v51);
  (*(v56 + 56))(v36, 0, 1, v54);
  sub_261AFB668(v36, v60, &unk_27FEDE0C0, &unk_261D02500);
  sub_261CFCA14();
  sub_261AE6A40(v36, &unk_27FEDE0C0, &unk_261D02500);
  v63 = xmmword_261D137C0;
  sub_261CFD2E4();
  LOBYTE(v63) = 0;
  sub_261CFD2E4();
  *&v63 = 0;
  *(&v63 + 1) = 0xE000000000000000;
  sub_261CFCA14();
  v37 = v57;
  sub_261CBD5B4(v35, v57, v34);
  sub_261CBD5B4(v37, v58, v34);
  sub_261CFCA14();
  sub_261C2E570(v37, type metadata accessor for ListEntity);
  sub_261C2E570(v35, type metadata accessor for ListEntity);
  return sub_261C2E570(v33, type metadata accessor for SectionEntityID);
}

uint64_t SectionEntity.displayName.getter()
{
  type metadata accessor for SectionEntity(0);
  sub_261CFD2D4();
  return v1;
}

double sub_261CF48D0@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for SectionEntity(0);
  sub_261CFD2D4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_261CF4924(uint64_t *a1)
{
  type metadata accessor for SectionEntity(0);
  sub_261CFD104();
  return sub_261CFD2E4();
}

uint64_t SectionEntity.isCollapsed.getter()
{
  type metadata accessor for SectionEntity(0);
  sub_261CFD2D4();
  return v1;
}

uint64_t (*SectionEntity.name.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CF4B0C(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261CBD5B4(a1, &v9 - v6, type metadata accessor for ListEntity);
  sub_261CBD5B4(v7, v5, type metadata accessor for ListEntity);
  sub_261CFCA14();
  return sub_261C2E570(v7, type metadata accessor for ListEntity);
}

uint64_t SectionEntity.list.setter(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  MEMORY[0x28223BE20](v2 - 8);
  sub_261CBD5B4(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListEntity);
  sub_261CFCA14();
  return sub_261C2E570(a1, type metadata accessor for ListEntity);
}

uint64_t (*SectionEntity.list.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t SectionEntity.id.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for SectionEntity(0) + 24);

  return sub_261CF4F74(a1, v3);
}

void (*SectionEntity.displayName.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = *(v1 + *(type metadata accessor for SectionEntity(0) + 28));
  sub_261CFD2D4();
  *v4 = v4[1];
  return sub_261CF4EBC;
}

void sub_261CF4EBC(uint64_t **a1, char a2)
{
  v2 = *a1;
  v4 = **a1;
  v3 = (*a1)[1];
  v2[2] = v4;
  v2[3] = v3;
  if (a2)
  {
    sub_261CFD104();
    sub_261CFD2E4();
  }

  else
  {
    sub_261CFD2E4();
  }

  free(v2);
}

uint64_t sub_261CF4F74(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SectionEntityID(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t (*SectionEntity.isCollapsed.modify(void *a1))(uint64_t a1)
{
  *a1 = *(v1 + *(type metadata accessor for SectionEntity(0) + 32));
  sub_261CFD2D4();
  return sub_261AFA8A8;
}

uint64_t (*SectionEntity.parent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SectionEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t SectionEntity.reminders.getter()
{
  type metadata accessor for SectionEntity(0);
  sub_261CFCA04();
  return v1;
}

uint64_t sub_261CF5130(uint64_t *a1)
{
  type metadata accessor for SectionEntity(0);
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*SectionEntity.reminders.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  v3 = v2;
  *a1 = v2;
  type metadata accessor for SectionEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t sub_261CF5280()
{
  v25 = sub_261CFF9A4();
  v0 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v24 = v19 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_261CFFA24();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v3 - 8);
  v26 = v19 - v4;
  v5 = sub_261CFD674();
  v20 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  v22 = *(v11 - 8);
  v23 = v11;
  MEMORY[0x28223BE20](v11);
  v12 = sub_261CFD234();
  __swift_allocate_value_buffer(v12, qword_27FEDE850);
  v21 = __swift_project_value_buffer(v12, qword_27FEDE850);
  sub_261CFF9B4();
  sub_261CFD874();
  v13 = *MEMORY[0x277CC9110];
  v14 = *(v6 + 104);
  v19[1] = v6 + 104;
  v14(v8, v13, v5);
  sub_261CFD6C4();
  sub_261CFFA14();
  sub_261CFFA04();
  v16 = v24;
  v15 = v25;
  (*(v0 + 104))(v24, *MEMORY[0x277CC9BD8], v25);
  sub_261CFF9C4();
  (*(v0 + 8))(v16, v15);
  sub_261CFFA04();
  sub_261CFFA34();
  sub_261CFD874();
  v14(v8, v13, v20);
  v17 = v26;
  sub_261CFD6C4();
  (*(v22 + 56))(v17, 0, 1, v23);
  return sub_261CFD224();
}

uint64_t static SectionEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9DC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE850);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SectionEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9DC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE850);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SectionEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FED9DC0 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFD234();
  __swift_project_value_buffer(v1, qword_27FEDE850);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261CF5964@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9DC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE850);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261CF5A24(uint64_t a1)
{
  if (qword_27FED9DC0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE850);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t SectionEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v35 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v1 - 8);
  v34 = &v26 - v2;
  v3 = sub_261CFD0B4();
  v29 = *(v3 - 8);
  v30 = v3;
  MEMORY[0x28223BE20](v3);
  v28 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for ListEntity(0);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v27 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v26 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v10 - 8);
  v33 = &v26 - v11;
  v12 = sub_261CFFA24();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_261CFD6A4();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v19 = &v26 - v18;
  sub_261CFFA14();
  sub_261CFFA04();
  type metadata accessor for SectionEntity(0);
  sub_261CFD2D4();
  sub_261CFF9E4();

  sub_261CFFA04();
  sub_261CFD684();
  (*(v14 + 16))(v17, v19, v13);
  sub_261CFCA04();
  if ((*(v31 + 48))(v9, 1, v32))
  {
    sub_261AE6A40(v9, &unk_27FEDE0C0, &unk_261D02500);
    v20 = 1;
    v21 = v33;
  }

  else
  {
    v22 = v27;
    sub_261CBD5B4(v9, v27, type metadata accessor for ListEntity);
    sub_261AE6A40(v9, &unk_27FEDE0C0, &unk_261D02500);
    v23 = v28;
    ListEntity.displayRepresentation.getter(v28);
    sub_261C2E570(v22, type metadata accessor for ListEntity);
    v21 = v33;
    sub_261CFD084();
    (*(v29 + 8))(v23, v30);
    v20 = 0;
  }

  (*(v14 + 56))(v21, v20, 1, v13);
  v24 = sub_261CFD074();
  (*(*(v24 - 8) + 56))(v34, 1, 1, v24);
  sub_261CFD0A4();
  return (*(v14 + 8))(v19, v13);
}

uint64_t SectionEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  v3[7] = a2;
  v3[8] = v2;
  v3[6] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v3[9] = swift_task_alloc();
  v4 = sub_261CFD0B4();
  v3[10] = v4;
  v3[11] = *(v4 - 8);
  v3[12] = swift_task_alloc();
  v5 = type metadata accessor for ListEntity(0);
  v3[13] = v5;
  v3[14] = *(v5 - 8);
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDE0C0, &unk_261D02500);
  v3[16] = swift_task_alloc();
  v6 = sub_261CFD004();
  v3[17] = v6;
  v3[18] = *(v6 - 8);
  v3[19] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3[20] = swift_task_alloc();
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();
  sub_261CFFA24();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v7 = sub_261CFD6A4();
  v3[25] = v7;
  v3[26] = *(v7 - 8);
  v3[27] = swift_task_alloc();
  v3[28] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261CF62DC, 0, 0);
}

uint64_t sub_261CF62DC()
{
  v1 = v0[26];
  v33 = v0[22];
  v35 = v0[25];
  v3 = v0[18];
  v2 = v0[19];
  v4 = v0[17];
  sub_261CFFA14();
  sub_261CFFA04();
  type metadata accessor for SectionEntity(0);
  sub_261CFD2D4();
  sub_261CFF9E4();

  sub_261CFFA04();
  sub_261CFD684();
  v5 = *(v1 + 56);
  v5(v33, 1, 1, v35);
  sub_261CFCFE4();
  sub_261CF703C(&qword_27FED9F90, MEMORY[0x277CBA238], MEMORY[0x277CBA240]);
  v6 = sub_261D001B4();
  (*(v3 + 8))(v2, v4);
  if (v6)
  {
    sub_261CFD2D4();
    if (v0[5])
    {
      v36 = v5;
      v8 = v0[27];
      v7 = v0[28];
      v9 = v0[25];
      v10 = v0[26];
      v11 = v0[16];
      v12 = v0[14];
      v34 = v0[13];
      sub_261CFFA14();
      sub_261CFFA04();
      sub_261CFF9E4();

      sub_261CFFA04();
      sub_261CFD684();
      (*(v10 + 8))(v7, v9);
      (*(v10 + 32))(v7, v8, v9);
      sub_261CFCA04();
      v13 = (*(v12 + 48))(v11, 1, v34);
      v14 = v0[22];
      if (v13)
      {
        v15 = v0[16];
        sub_261AE6A40(v0[22], &unk_27FEDA6D0, &unk_261D02CD0);
        sub_261AE6A40(v15, &unk_27FEDE0C0, &unk_261D02500);
        v16 = 1;
      }

      else
      {
        v18 = v0[15];
        v17 = v0[16];
        v20 = v0[11];
        v19 = v0[12];
        v21 = v0[10];
        sub_261CBD5B4(v17, v18, type metadata accessor for ListEntity);
        sub_261AE6A40(v17, &unk_27FEDE0C0, &unk_261D02500);
        ListEntity.displayRepresentation.getter(v19);
        sub_261C2E570(v18, type metadata accessor for ListEntity);
        sub_261CFD084();
        (*(v20 + 8))(v19, v21);
        sub_261AE6A40(v14, &unk_27FEDA6D0, &unk_261D02CD0);
        v16 = 0;
      }

      v22 = v0[21];
      v23 = v0[22];
      v36(v22, v16, 1, v0[25]);
      sub_261CF67E8(v22, v23);
    }
  }

  v24 = v0[28];
  v26 = v0[25];
  v25 = v0[26];
  v27 = v0[22];
  v28 = v0[20];
  v29 = v0[9];
  (*(v25 + 16))(v0[27], v24, v26);
  sub_261AFB668(v27, v28, &unk_27FEDA6D0, &unk_261D02CD0);
  v30 = sub_261CFD074();
  (*(*(v30 - 8) + 56))(v29, 1, 1, v30);
  sub_261CFD0A4();
  sub_261AE6A40(v27, &unk_27FEDA6D0, &unk_261D02CD0);
  (*(v25 + 8))(v24, v26);

  v31 = v0[1];

  return v31();
}

uint64_t sub_261CF67E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *sub_261CF6858@<X0>(void *a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

uint64_t sub_261CF6898@<X0>(void *a1@<X8>)
{
  if (qword_27FED9DC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDE868;
  return sub_261CFCDA4();
}

uint64_t static SectionEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9DC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FEDE868;
  return sub_261CFCDA4();
}

uint64_t sub_261CF69D0(uint64_t a1)
{
  v2 = sub_261CF703C(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261CF6A50(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return SectionEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_261CF6AF8(uint64_t a1)
{
  v2 = sub_261CF703C(&qword_280D224A8, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261CF6B74()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAE18, &qword_261D04970);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  qword_27FEDE868 = result;
  return result;
}

uint64_t static SectionEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27FED9DC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FEDE868 = v1;
}

uint64_t (*static SectionEntity.defaultQuery.modify(uint64_t a1))(void)
{
  if (qword_27FED9DC8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

unint64_t sub_261CF6F90()
{
  result = qword_27FEDE878;
  if (!qword_27FEDE878)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDE880, &qword_261D13988);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE878);
  }

  return result;
}

uint64_t sub_261CF703C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *initializeBufferWithCopyOfBuffer for SectionEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  v3 = *(*(a3 - 1) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) == 0)
  {
    v6 = a1;
    a1[1] = a2[1];
    v7 = a3[6];
    v8 = a1 + v7;
    v9 = a2 + v7;
    type metadata accessor for SectionEntityID(0);
    sub_261CFCDA4();
    sub_261CFCDA4();
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v10 = *(v9 + 1);
    *v8 = *v9;
    *(v8 + 1) = v10;
    v11 = type metadata accessor for AppEntityID(0);
    v12 = *(v11 + 20);
    v13 = sub_261CFD844();
    v14 = *(*(v13 - 8) + 16);
    sub_261CFD104();
    v14(&v8[v12], &v9[v12], v13);
    v15 = *(v11 + 24);
    v16 = &v8[v15];
    v17 = &v9[v15];
    v18 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v19 = *(v18 - 8);
    v20 = (*(v19 + 48))(v17, 1, v18);
    if (EnumCaseMultiPayload == 1)
    {
      if (v20)
      {
        goto LABEL_7;
      }
    }

    else if (v20)
    {
LABEL_7:
      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v16, v17, *(*(v21 - 8) + 64));
LABEL_9:
      swift_storeEnumTagMultiPayload();
      v23 = a3[8];
      *(v6 + a3[7]) = *(a2 + a3[7]);
      *(v6 + v23) = *(a2 + v23);
      v24 = a3[10];
      *(v6 + a3[9]) = *(a2 + a3[9]);
      *(v6 + v24) = *(a2 + v24);
      sub_261CFCDA4();
      sub_261CFCDA4();
      sub_261CFCDA4();
      goto LABEL_10;
    }

    v22 = sub_261CFD4E4();
    (*(*(v22 - 8) + 16))(v16, v17, v22);
    v16[*(v18 + 20)] = v17[*(v18 + 20)];
    (*(v19 + 56))(v16, 0, 1, v18);
    goto LABEL_9;
  }

  v6 = (v4 + ((v3 + 16) & ~v3));
LABEL_10:
  sub_261CFCDA4();
  return v6;
}

uint64_t destroy for SectionEntity(void *a1, int *a2)
{

  v4 = a1 + a2[6];
  type metadata accessor for SectionEntityID(0);

  v5 = type metadata accessor for AppEntityID(0);
  v6 = *(v5 + 20);
  v7 = sub_261CFD844();
  (*(*(v7 - 8) + 8))(&v4[v6], v7);
  v8 = *(v5 + 24);
  v9 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if (!(*(*(v9 - 8) + 48))(&v4[v8], 1, v9))
  {
    v10 = sub_261CFD4E4();
    (*(*(v10 - 8) + 8))(&v4[v8], v10);
  }
}

uint64_t *initializeWithCopy for SectionEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  v5 = a2[1];
  *a1 = *a2;
  a1[1] = v5;
  v6 = a3[6];
  v7 = a1 + v6;
  v8 = a2 + v6;
  type metadata accessor for SectionEntityID(0);
  sub_261CFCDA4();
  sub_261CFCDA4();
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v9 = *(v8 + 1);
  *v7 = *v8;
  *(v7 + 1) = v9;
  v10 = type metadata accessor for AppEntityID(0);
  v11 = *(v10 + 20);
  v12 = sub_261CFD844();
  v13 = *(*(v12 - 8) + 16);
  sub_261CFD104();
  v13(&v7[v11], &v8[v11], v12);
  v14 = *(v10 + 24);
  v15 = &v7[v14];
  v16 = &v8[v14];
  v17 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v16, 1, v17);
  if (EnumCaseMultiPayload == 1)
  {
    if (v19)
    {
      goto LABEL_5;
    }

LABEL_6:
    v21 = sub_261CFD4E4();
    (*(*(v21 - 8) + 16))(v15, v16, v21);
    v15[*(v17 + 20)] = v16[*(v17 + 20)];
    (*(v18 + 56))(v15, 0, 1, v17);
    goto LABEL_7;
  }

  if (!v19)
  {
    goto LABEL_6;
  }

LABEL_5:
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  memcpy(v15, v16, *(*(v20 - 8) + 64));
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v22 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v22) = *(a2 + v22);
  v23 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v23) = *(a2 + v23);
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

uint64_t *assignWithCopy for SectionEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;
  sub_261CFCDA4();

  a1[1] = a2[1];
  sub_261CFCDA4();

  if (a1 != a2)
  {
    v6 = a3[6];
    v7 = a1 + v6;
    v8 = a2 + v6;
    sub_261C2E570(a1 + v6, type metadata accessor for SectionEntityID);
    type metadata accessor for SectionEntityID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *v7 = *v8;
    *(v7 + 1) = *(v8 + 1);
    v9 = type metadata accessor for AppEntityID(0);
    v10 = *(v9 + 20);
    v11 = sub_261CFD844();
    v12 = *(*(v11 - 8) + 16);
    sub_261CFD104();
    v12(&v7[v10], &v8[v10], v11);
    v13 = *(v9 + 24);
    v14 = &v7[v13];
    v15 = &v8[v13];
    v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v15, 1, v16);
    if (EnumCaseMultiPayload == 1)
    {
      if (v18)
      {
        goto LABEL_6;
      }
    }

    else if (v18)
    {
LABEL_6:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v14, v15, *(*(v19 - 8) + 64));
LABEL_8:
      swift_storeEnumTagMultiPayload();
      goto LABEL_9;
    }

    v20 = sub_261CFD4E4();
    (*(*(v20 - 8) + 16))(v14, v15, v20);
    v14[*(v16 + 20)] = v15[*(v16 + 20)];
    (*(v17 + 56))(v14, 0, 1, v16);
    goto LABEL_8;
  }

LABEL_9:
  *(a1 + a3[7]) = *(a2 + a3[7]);
  sub_261CFCDA4();

  *(a1 + a3[8]) = *(a2 + a3[8]);
  sub_261CFCDA4();

  *(a1 + a3[9]) = *(a2 + a3[9]);
  sub_261CFCDA4();

  *(a1 + a3[10]) = *(a2 + a3[10]);
  sub_261CFCDA4();

  return a1;
}

_OWORD *initializeWithTake for SectionEntity(_OWORD *a1, _OWORD *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[6];
  v7 = a1 + v6;
  v8 = a2 + v6;
  type metadata accessor for SectionEntityID(0);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  *v7 = *v8;
  v10 = type metadata accessor for AppEntityID(0);
  v11 = *(v10 + 20);
  v12 = sub_261CFD844();
  (*(*(v12 - 8) + 32))(&v7[v11], &v8[v11], v12);
  v13 = *(v10 + 24);
  v14 = &v7[v13];
  v15 = &v8[v13];
  v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v17 = *(v16 - 8);
  v18 = (*(v17 + 48))(v15, 1, v16);
  if (EnumCaseMultiPayload == 1)
  {
    if (v18)
    {
      goto LABEL_5;
    }

LABEL_6:
    v20 = sub_261CFD4E4();
    (*(*(v20 - 8) + 32))(v14, v15, v20);
    v14[*(v16 + 20)] = v15[*(v16 + 20)];
    (*(v17 + 56))(v14, 0, 1, v16);
    goto LABEL_7;
  }

  if (!v18)
  {
    goto LABEL_6;
  }

LABEL_5:
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  memcpy(v14, v15, *(*(v19 - 8) + 64));
LABEL_7:
  swift_storeEnumTagMultiPayload();
  v21 = a3[8];
  *(a1 + a3[7]) = *(a2 + a3[7]);
  *(a1 + v21) = *(a2 + v21);
  v22 = a3[10];
  *(a1 + a3[9]) = *(a2 + a3[9]);
  *(a1 + v22) = *(a2 + v22);
  return a1;
}

uint64_t *assignWithTake for SectionEntity(uint64_t *a1, uint64_t *a2, int *a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  if (a1 != a2)
  {
    v6 = a3[6];
    v7 = a1 + v6;
    v8 = a2 + v6;
    sub_261C2E570(a1 + v6, type metadata accessor for SectionEntityID);
    type metadata accessor for SectionEntityID(0);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    *v7 = *v8;
    v10 = type metadata accessor for AppEntityID(0);
    v11 = *(v10 + 20);
    v12 = sub_261CFD844();
    (*(*(v12 - 8) + 32))(&v7[v11], &v8[v11], v12);
    v13 = *(v10 + 24);
    v14 = &v7[v13];
    v15 = &v8[v13];
    v16 = type metadata accessor for RecurrentInstanceSpecifier(0);
    v17 = *(v16 - 8);
    v18 = (*(v17 + 48))(v15, 1, v16);
    if (EnumCaseMultiPayload == 1)
    {
      if (v18)
      {
        goto LABEL_6;
      }
    }

    else if (v18)
    {
LABEL_6:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      memcpy(v14, v15, *(*(v19 - 8) + 64));
LABEL_8:
      swift_storeEnumTagMultiPayload();
      goto LABEL_9;
    }

    v20 = sub_261CFD4E4();
    (*(*(v20 - 8) + 32))(v14, v15, v20);
    v14[*(v16 + 20)] = v15[*(v16 + 20)];
    (*(v17 + 56))(v14, 0, 1, v16);
    goto LABEL_8;
  }

LABEL_9:
  *(a1 + a3[7]) = *(a2 + a3[7]);

  *(a1 + a3[8]) = *(a2 + a3[8]);

  *(a1 + a3[9]) = *(a2 + a3[9]);

  *(a1 + a3[10]) = *(a2 + a3[10]);

  return a1;
}

uint64_t sub_261CF81C4(uint64_t a1)
{
  result = type metadata accessor for SectionEntityID(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void *sub_261CF8274()
{
  sub_261CFCA04();
  result = sub_261CFCA04();
  if (!__OFSUB__(0, v1))
  {
    return [objc_allocWithZone(MEMORY[0x277D44610]) initWithUnit:v2 count:-v1];
  }

  __break(1u);
  return result;
}

void EarlyAlertEntity.init(dueDateDeltaInterval:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 unit];
  if (v4 >= 5)
  {

    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    v7 = v4;
    v5 = [a1 count];
    if (__OFSUB__(0, v5))
    {
      __break(1u);
    }

    else
    {
      EarlyAlertEntity.init(unit:interval:)(&v7, -v5, &v8);

      v6 = v10;
      *a2 = v8;
      *(a2 + 8) = v9;
      *(a2 + 24) = v6;
    }
  }
}

uint64_t sub_261CF8388(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 6649188;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x7961645F6C6C61;
    }

    else
    {
      v4 = 0x64656C6261736964;
    }

    if (v3 == 2)
    {
      v5 = 0xE700000000000000;
    }

    else
    {
      v5 = 0xE800000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 31348;
    }

    else
    {
      v4 = 6649188;
    }

    if (v3)
    {
      v5 = 0xE200000000000000;
    }

    else
    {
      v5 = 0xE300000000000000;
    }
  }

  v6 = 0xE300000000000000;
  v7 = 0xE700000000000000;
  v8 = 0x7961645F6C6C61;
  if (a2 != 2)
  {
    v8 = 0x64656C6261736964;
    v7 = 0xE800000000000000;
  }

  if (a2)
  {
    v2 = 31348;
    v6 = 0xE200000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261D00614();
  }

  return v11 & 1;
}

uint64_t sub_261CF84AC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 1920298856;
    }

    else
    {
      v4 = 0x6574756E696DLL;
    }

    if (v2)
    {
      v3 = 0xE400000000000000;
    }

    else
    {
      v3 = 0xE600000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE300000000000000;
    v4 = 7954788;
  }

  else if (a1 == 3)
  {
    v3 = 0xE400000000000000;
    v4 = 1801807223;
  }

  else
  {
    v3 = 0xE500000000000000;
    v4 = 0x68746E6F6DLL;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 1920298856;
    }

    else
    {
      v9 = 0x6574756E696DLL;
    }

    if (a2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = 0xE600000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE400000000000000;
    v6 = 1801807223;
    if (a2 != 3)
    {
      v6 = 0x68746E6F6DLL;
      v5 = 0xE500000000000000;
    }

    if (a2 == 2)
    {
      v7 = 7954788;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = sub_261D00614();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_261CF85FC(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 1701736302;
  v3 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v4 = 0x6D756964656DLL;
    }

    else
    {
      v4 = 1751607656;
    }

    if (v3 == 2)
    {
      v5 = 0xE600000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v4 = 7827308;
    }

    else
    {
      v4 = 1701736302;
    }

    if (v3)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  v6 = 0xE400000000000000;
  v7 = 0xE600000000000000;
  v8 = 0x6D756964656DLL;
  if (a2 != 2)
  {
    v8 = 1751607656;
    v7 = 0xE400000000000000;
  }

  if (a2)
  {
    v2 = 7827308;
    v6 = 0xE300000000000000;
  }

  if (a2 <= 1u)
  {
    v9 = v2;
  }

  else
  {
    v9 = v8;
  }

  if (a2 <= 1u)
  {
    v10 = v6;
  }

  else
  {
    v10 = v7;
  }

  if (v4 == v9 && v5 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_261D00614();
  }

  return v11 & 1;
}

uint64_t sub_261CF8710(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x7961646F74;
  v3 = a1;
  v4 = 0xE500000000000000;
  v5 = 0xE700000000000000;
  v6 = 0x64656767616C66;
  v7 = 0xE800000000000000;
  v8 = 0x64656E6769737361;
  if (a1 != 4)
  {
    v8 = 0x6574656C706D6F63;
    v7 = 0xE900000000000064;
  }

  if (a1 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x656C756465686373;
  v10 = 0xE900000000000064;
  if (a1 != 1)
  {
    v9 = 7105633;
    v10 = 0xE300000000000000;
  }

  if (a1)
  {
    v4 = v10;
  }

  else
  {
    v9 = 0x7961646F74;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v3 <= 2)
  {
    v12 = v4;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 == 3)
    {
      v13 = 0xE700000000000000;
      v2 = 0x64656767616C66;
    }

    else
    {
      if (a2 != 4)
      {
        v2 = 0x6574656C706D6F63;
        goto LABEL_27;
      }

      v13 = 0xE800000000000000;
      v2 = 0x64656E6769737361;
    }
  }

  else if (a2)
  {
    if (a2 == 1)
    {
      v2 = 0x656C756465686373;
LABEL_27:
      v13 = 0xE900000000000064;
      goto LABEL_28;
    }

    v13 = 0xE300000000000000;
    v2 = 7105633;
  }

  else
  {
    v13 = 0xE500000000000000;
  }

LABEL_28:
  if (v11 == v2 && v12 == v13)
  {
    v14 = 1;
  }

  else
  {
    v14 = sub_261D00614();
  }

  return v14 & 1;
}

uint64_t sub_261CF88C4(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xD000000000000016;
  v3 = a1;
  if (a1 > 4u)
  {
    v12 = 0x8000000261D141D0;
    v13 = 0x637341656C746974;
    v14 = 0xEE00676E69646E65;
    if (a1 != 8)
    {
      v13 = 0x736544656C746974;
      v14 = 0xEF676E69646E6563;
    }

    if (a1 == 7)
    {
      v13 = 0xD000000000000017;
    }

    else
    {
      v12 = v14;
    }

    v15 = 0x8000000261D14190;
    v16 = 0xD000000000000014;
    if (a1 != 5)
    {
      v16 = 0xD000000000000017;
      v15 = 0x8000000261D141B0;
    }

    if (a1 <= 6u)
    {
      v10 = v16;
    }

    else
    {
      v10 = v13;
    }

    if (v3 <= 6)
    {
      v11 = v15;
    }

    else
    {
      v11 = v12;
    }
  }

  else
  {
    v4 = 0xE700000000000000;
    v5 = 0x8000000261D14130;
    v6 = 0x8000000261D14150;
    v7 = 0xD000000000000013;
    if (a1 == 3)
    {
      v7 = 0xD000000000000016;
    }

    else
    {
      v6 = 0x8000000261D14170;
    }

    if (a1 == 2)
    {
      v8 = 0xD000000000000016;
    }

    else
    {
      v8 = v7;
    }

    if (a1 != 2)
    {
      v5 = v6;
    }

    v9 = 0x6C61756E616DLL;
    if (a1)
    {
      v4 = 0xE600000000000000;
    }

    else
    {
      v9 = 0x746C7561666564;
    }

    if (a1 <= 1u)
    {
      v10 = v9;
    }

    else
    {
      v10 = v8;
    }

    if (v3 <= 1)
    {
      v11 = v4;
    }

    else
    {
      v11 = v5;
    }
  }

  if (a2 > 4u)
  {
    if (a2 <= 6u)
    {
      if (a2 == 5)
      {
        v18 = 0x8000000261D14190;
        v2 = 0xD000000000000014;
        goto LABEL_53;
      }

      v19 = "creationDateOldestFirst";
    }

    else
    {
      if (a2 != 7)
      {
        if (a2 == 8)
        {
          v2 = 0x637341656C746974;
          v18 = 0xEE00676E69646E65;
        }

        else
        {
          v2 = 0x736544656C746974;
          v18 = 0xEF676E69646E6563;
        }

        goto LABEL_53;
      }

      v19 = "creationDateNewestFirst";
    }

    v18 = (v19 - 32) | 0x8000000000000000;
    v2 = 0xD000000000000017;
    goto LABEL_53;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v18 = 0xE600000000000000;
      v2 = 0x6C61756E616DLL;
    }

    else
    {
      v18 = 0xE700000000000000;
      v2 = 0x746C7561666564;
    }
  }

  else
  {
    if (a2 == 2)
    {
      v17 = "displayDateOldestFirst";
    }

    else
    {
      if (a2 != 3)
      {
        v18 = 0x8000000261D14170;
        v2 = 0xD000000000000013;
        goto LABEL_53;
      }

      v17 = "displayDateNewestFirst";
    }

    v18 = (v17 - 32) | 0x8000000000000000;
  }

LABEL_53:
  if (v10 == v2 && v11 == v18)
  {
    v20 = 1;
  }

  else
  {
    v20 = sub_261D00614();
  }

  return v20 & 1;
}

uint64_t EarlyAlertEntity.init(unit:interval:)@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v26 = a2;
  v5 = sub_261CFD674();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_261CFD884();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v11 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v11 - 8);
  v24 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE8D0, &qword_261D13A80);
  sub_261CFF9B4();
  sub_261CFD874();
  v12 = *MEMORY[0x277CC9110];
  v13 = *(v6 + 104);
  v13(v8, v12, v5);
  sub_261CFD6B4();
  sub_261C45260();
  v25 = sub_261CFCA34();
  a3[2] = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE8D8, &qword_261D13A88);
  sub_261CFF9B4();
  sub_261CFD874();
  v14 = v12;
  v15 = v26;
  v16 = v5;
  v17 = v24;
  v13(v8, v14, v16);
  sub_261CFD6B4();
  a3[3] = sub_261CFCB54();
  v27 = v15;
  v28 = sub_261D005F4();
  v29 = v18;
  MEMORY[0x26671C210](58, 0xE100000000000000);
  if (v17 <= 1)
  {
    if (v17)
    {
      v20 = 1920298856;
      v19 = 0xE400000000000000;
    }

    else
    {
      v19 = 0xE600000000000000;
      v20 = 0x6574756E696DLL;
    }
  }

  else if (v17 == 2)
  {
    v19 = 0xE300000000000000;
    v20 = 7954788;
  }

  else if (v17 == 3)
  {
    v19 = 0xE400000000000000;
    v20 = 1801807223;
  }

  else
  {
    v19 = 0xE500000000000000;
    v20 = 0x68746E6F6DLL;
  }

  MEMORY[0x26671C210](v20, v19);

  v21 = v29;
  *a3 = v28;
  a3[1] = v21;
  LOBYTE(v28) = v17;
  sub_261CFCA14();
  v28 = v15;
  return sub_261CFCA14();
}

RemindersAppIntents::EarlyAlertEntity::Unit_optional __swiftcall EarlyAlertEntity.Unit.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 5;
  if (v3 < 5)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t EarlyAlertEntity.Unit.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6574756E696DLL;
  v3 = 7954788;
  v4 = 1801807223;
  if (v1 != 3)
  {
    v4 = 0x68746E6F6DLL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 1920298856;
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

uint64_t sub_261CF90AC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_261CFD674();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_261CFD234();
  __swift_allocate_value_buffer(v10, qword_27FEDE888);
  __swift_project_value_buffer(v10, qword_27FEDE888);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6B4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t static EarlyAlertEntity.Unit.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9DD0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE888);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261CF9444()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v0 - 8);
  v59 = v40 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v62 = v40 - v3;
  v51 = sub_261CFD674();
  v4 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v6 = v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_261CFFA44();
  MEMORY[0x28223BE20](v10 - 8);
  v12 = v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_261CFD6A4();
  v13 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE988, &qword_261D14000);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD1F0, &qword_261D0DB20);
  v61 = v14;
  v15 = *(v14 - 8);
  v50 = *(v15 + 72);
  v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v44 = 4 * v50;
  v17 = swift_allocObject();
  v45 = v17;
  *(v17 + 16) = xmmword_261D06F90;
  v18 = (v17 + v16);
  v43 = *(v14 + 48);
  *v18 = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v60 = *MEMORY[0x277CC9110];
  v19 = *(v4 + 104);
  v52 = v4 + 104;
  v58 = v19;
  v19(v6);
  v20 = v9;
  sub_261CFD6B4();
  v21 = *(v13 + 56);
  v56 = v13 + 56;
  v57 = v21;
  v22 = v54;
  v21(v62, 1, 1, v54);
  v23 = sub_261CFD074();
  v24 = *(v23 - 8);
  v55 = *(v24 + 56);
  v48 = v24 + 56;
  v49 = v23;
  v55(v59, 1, 1, v23);
  v53 = v18;
  sub_261CFD0A4();
  v25 = v50;
  v42 = &v18[v50];
  v43 = *(v61 + 48);
  *v42 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v47 = v6;
  v26 = v51;
  v58(v6, v60, v51);
  v27 = v20;
  sub_261CFD6B4();
  v28 = v22;
  v57(v62, 1, 1, v22);
  v29 = v59;
  v55(v59, 1, 1, v23);
  sub_261CFD0A4();
  v43 = 2 * v25;
  v41 = &v53[2 * v25];
  v42 = *(v61 + 48);
  *v41 = 2;
  v40[1] = v12;
  sub_261CFF9B4();
  v46 = v27;
  sub_261CFD874();
  v30 = v58;
  v58(v47, v60, v26);
  sub_261CFD6B4();
  v31 = v57;
  v57(v62, 1, 1, v28);
  v32 = v29;
  v33 = v49;
  v34 = v55;
  v55(v32, 1, 1, v49);
  sub_261CFD0A4();
  v43 += &v53[v50];
  v50 = *(v61 + 48);
  *v43 = 3;
  sub_261CFF9B4();
  sub_261CFD874();
  v35 = v47;
  v30(v47, v60, v51);
  sub_261CFD6B4();
  v36 = v62;
  v31(v62, 1, 1, v54);
  v37 = v59;
  v34(v59, 1, 1, v33);
  sub_261CFD0A4();
  v53[v44] = 4;
  sub_261CFF9B4();
  sub_261CFD874();
  v58(v35, v60, v51);
  sub_261CFD6B4();
  v57(v36, 1, 1, v54);
  v55(v37, 1, 1, v49);
  sub_261CFD0A4();
  v38 = sub_261C3B228(v45);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  off_27FEDE8A0 = v38;
  return result;
}

double static EarlyAlertEntity.Unit.caseDisplayRepresentations.getter()
{
  if (qword_27FED9DD8 != -1)
  {
    swift_once();
  }

  sub_261CFD104();
  return result;
}

uint64_t sub_261CF9DFC@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9DD0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE888);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_261CF9EA4(uint64_t a1)
{
  v2 = sub_261C45260();

  return MEMORY[0x28210B458](a1, v2);
}

double sub_261CF9EF0()
{
  if (qword_27FED9DD8 != -1)
  {
    swift_once();
  }

  sub_261CFD104();
  return result;
}

uint64_t sub_261CF9F4C(uint64_t a1)
{
  v2 = sub_261CFB8F8();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t EarlyAlertEntity.id.getter()
{
  v1 = *v0;
  sub_261CFD104();
  return v1;
}

uint64_t EarlyAlertEntity.id.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t sub_261CFA030(char *a1, void *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*EarlyAlertEntity.unit.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t sub_261CFA174(uint64_t *a1, void *a2)
{
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  sub_261CFCA14();
}

uint64_t (*EarlyAlertEntity.interval.modify(uint64_t *a1))()
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
  *(v2 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t EarlyAlertEntity.init(id:unit:interval:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v22 = a2;
  v23 = a4;
  v21 = a1;
  v7 = sub_261CFD674();
  v19 = v7;
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_261CFD884();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = sub_261CFFA44();
  MEMORY[0x28223BE20](v12 - 8);
  v13 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v13 - 8);
  v20 = *a3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE8D0, &qword_261D13A80);
  sub_261CFF9B4();
  sub_261CFD874();
  v14 = *MEMORY[0x277CC9110];
  v15 = *(v8 + 104);
  v15(v10, v14, v7);
  sub_261CFD6B4();
  sub_261C45260();
  a5[2] = sub_261CFCA34();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE8D8, &qword_261D13A88);
  sub_261CFF9B4();
  sub_261CFD874();
  v15(v10, v14, v19);
  sub_261CFD6B4();
  a5[3] = sub_261CFCB54();
  v16 = v22;
  *a5 = v21;
  a5[1] = v16;
  v25[0] = v20;
  sub_261CFCA14();
  v24 = v23;
  return sub_261CFCA14();
}

uint64_t sub_261CFA5F4()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = v12 - v1;
  v12[0] = sub_261CFD674();
  v3 = *(v12[0] - 8);
  MEMORY[0x28223BE20](v12[0]);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = sub_261CFD234();
  __swift_allocate_value_buffer(v10, qword_27FEDE8A8);
  __swift_project_value_buffer(v10, qword_27FEDE8A8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6B4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t static EarlyAlertEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE8A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static EarlyAlertEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (qword_27FED9DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE8A8);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static EarlyAlertEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FED9DE0 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFD234();
  __swift_project_value_buffer(v1, qword_27FEDE8A8);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261CFAB40@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FED9DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE8A8);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t sub_261CFAC00(uint64_t a1)
{
  if (qword_27FED9DE0 != -1)
  {
    swift_once();
  }

  v2 = sub_261CFD234();
  v3 = __swift_project_value_buffer(v2, qword_27FEDE8A8);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  return swift_endAccess();
}

uint64_t EarlyAlertEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v2 - 8);
  v39 = &v31 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v4 - 8);
  v38 = &v31 - v5;
  v37 = sub_261CFD674();
  v35 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v36 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_261CFFA24();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = sub_261CFD0B4();
  v33 = *(v10 - 8);
  v34 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v32 = &v31 - v14;
  v15 = sub_261CFD6A4();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v31 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v21 = &v31 - v20;
  v31 = *(v1 + 24);
  if (qword_27FED9DD8 != -1)
  {
    swift_once();
  }

  v22 = off_27FEDE8A0;
  sub_261CFCA04();
  if (v22[2] && (v23 = sub_261B384EC(v41), (v24 & 1) != 0))
  {
    v25 = v22[7];
    v27 = v33;
    v26 = v34;
    (*(v33 + 16))(v13, v25 + *(v33 + 72) * v23, v34);
    v28 = v32;
    (*(v27 + 32))(v32, v13, v26);
    sub_261CFFA14();
    sub_261CFFA04();
    sub_261CFCA04();
    sub_261CFF9D4();
    sub_261CFFA04();
    sub_261CFD084();
    sub_261CFF9F4();
    (*(v16 + 8))(v19, v15);
    sub_261CFFA04();
    sub_261CFD684();
    (*(v27 + 8))(v28, v26);
  }

  else
  {
    sub_261CFF9B4();
    sub_261CFD874();
    (*(v35 + 104))(v36, *MEMORY[0x277CC9110], v37);
    sub_261CFD6C4();
  }

  (*(v16 + 16))(v19, v21, v15);
  (*(v16 + 56))(v38, 1, 1, v15);
  v29 = sub_261CFD074();
  (*(*(v29 - 8) + 56))(v39, 1, 1, v29);
  sub_261CFD0A4();
  return (*(v16 + 8))(v21, v15);
}

uint64_t sub_261CFB2E0@<X0>(void *a1@<X8>)
{
  if (qword_27FED9DE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDE8C0 + 1);
  *a1 = xmmword_27FEDE8C0;
  a1[1] = v2;
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

uint64_t static EarlyAlertEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9DE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = *(&xmmword_27FEDE8C0 + 1);
  *a1 = xmmword_27FEDE8C0;
  a1[1] = v2;
  sub_261CFCDA4();
  return sub_261CFCDA4();
}

uint64_t sub_261CFB3F0(uint64_t a1)
{
  v2 = sub_261B51818();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261CFB440(uint64_t a1)
{
  v2 = sub_261CFBCA4();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261CFB48C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD10, &qword_261D083B0);
  swift_getKeyPath();
  *&xmmword_27FEDE8C0 = sub_261CFD204();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDBD18, &qword_261D083E0);
  swift_getKeyPath();
  result = sub_261CFD204();
  *(&xmmword_27FEDE8C0 + 1) = result;
  return result;
}

uint64_t static EarlyAlertEntity.defaultQuery.setter(__int128 *a1)
{
  v2 = *a1;
  if (qword_27FED9DE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  xmmword_27FEDE8C0 = v2;
}

uint64_t (*static EarlyAlertEntity.defaultQuery.modify(uint64_t a1))(void)
{
  if (qword_27FED9DE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t _s19RemindersAppIntents16EarlyAlertEntityV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v2 = *a1 == *a2 && a1[1] == a2[1];
  if (!v2 && (sub_261D00614() & 1) == 0)
  {
    return 0;
  }

  sub_261CFCA04();
  sub_261CFCA04();
  if ((sub_261CF84AC(v4, v5) & 1) == 0)
  {
    return 0;
  }

  sub_261CFCA04();
  sub_261CFCA04();
  return 1;
}

unint64_t sub_261CFB6EC()
{
  result = qword_27FEDE8E0;
  if (!qword_27FEDE8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE8E0);
  }

  return result;
}

unint64_t sub_261CFB744()
{
  result = qword_27FEDE8E8;
  if (!qword_27FEDE8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE8E8);
  }

  return result;
}

unint64_t sub_261CFB79C()
{
  result = qword_27FEDE8F0;
  if (!qword_27FEDE8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE8F0);
  }

  return result;
}

unint64_t sub_261CFB7F4()
{
  result = qword_27FEDE8F8;
  if (!qword_27FEDE8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE8F8);
  }

  return result;
}

unint64_t sub_261CFB84C()
{
  result = qword_27FEDE900;
  if (!qword_27FEDE900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE900);
  }

  return result;
}

unint64_t sub_261CFB8A0()
{
  result = qword_27FEDE908;
  if (!qword_27FEDE908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE908);
  }

  return result;
}

unint64_t sub_261CFB8F8()
{
  result = qword_27FEDE910;
  if (!qword_27FEDE910)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE910);
  }

  return result;
}

unint64_t sub_261CFB9A0()
{
  result = qword_27FEDE918;
  if (!qword_27FEDE918)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE918);
  }

  return result;
}

unint64_t sub_261CFB9F8()
{
  result = qword_27FEDE920;
  if (!qword_27FEDE920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE920);
  }

  return result;
}

unint64_t sub_261CFBA50()
{
  result = qword_27FEDE928;
  if (!qword_27FEDE928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE928);
  }

  return result;
}

unint64_t sub_261CFBAEC()
{
  result = qword_27FEDE940;
  if (!qword_27FEDE940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE940);
  }

  return result;
}

unint64_t sub_261CFBB44()
{
  result = qword_27FEDE948;
  if (!qword_27FEDE948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE948);
  }

  return result;
}

unint64_t sub_261CFBB9C()
{
  result = qword_27FEDE950;
  if (!qword_27FEDE950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE950);
  }

  return result;
}

unint64_t sub_261CFBBF8()
{
  result = qword_27FEDE958;
  if (!qword_27FEDE958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE958);
  }

  return result;
}

unint64_t sub_261CFBC4C()
{
  result = qword_27FEDE960;
  if (!qword_27FEDE960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE960);
  }

  return result;
}

unint64_t sub_261CFBCA4()
{
  result = qword_27FEDE968;
  if (!qword_27FEDE968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE968);
  }

  return result;
}

unint64_t sub_261CFBD40()
{
  result = qword_27FEDE980;
  if (!qword_27FEDE980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE980);
  }

  return result;
}

uint64_t destroy for EarlyAlertEntity(void *a1)
{
}

void *initializeWithCopy for EarlyAlertEntity(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  sub_261CFD104();
  sub_261CFCDA4();
  sub_261CFCDA4();
  return a1;
}

void *assignWithCopy for EarlyAlertEntity(void *a1, void *a2)
{
  *a1 = *a2;
  a1[1] = a2[1];
  sub_261CFD104();

  a1[2] = a2[2];
  sub_261CFCDA4();

  a1[3] = a2[3];
  sub_261CFCDA4();

  return a1;
}

void *assignWithTake for EarlyAlertEntity(void *a1, uint64_t a2)
{
  *a1 = *a2;

  *(a1 + 1) = *(a2 + 8);

  a1[3] = *(a2 + 24);

  return a1;
}

uint64_t getEnumTagSinglePayload for EarlyAlertEntity(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for EarlyAlertEntity(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

id sub_261CFBFC8(uint64_t a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v3 = *(v1 + 16);
  v4 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
  v9[0] = 0;
  v5 = [v3 fetchReminderWithObjectID:a1 fetchOptions:v4 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    sub_261CFD654();

    swift_willThrow();
  }

  return v5;
}

id sub_261CFC0B8(uint64_t a1)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 16);
  sub_261B05020(0, &qword_280D21DF0, 0x277D44700);
  v3 = sub_261CFFC54();
  v4 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
  v10[0] = 0;
  v5 = [v2 fetchRemindersWithObjectIDs:v3 fetchOptions:v4 error:v10];

  v6 = v10[0];
  if (v5)
  {
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    sub_261B3B918();
    v7 = sub_261CFF8F4();
    v8 = v6;
  }

  else
  {
    v7 = v10[0];
    sub_261CFD654();

    swift_willThrow();
  }

  return v7;
}

uint64_t REMStoreIntentPerformer.__allocating_init(store:)(void *a1)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_now;
  v4 = sub_261CFD7E4();
  (*(*(v4 - 8) + 56))(v2 + v3, 1, 1, v4);
  v5 = v2 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_userDefaults;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *(v2 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer____lazy_storage___contactStore) = 0;
  *(v2 + 16) = a1;
  type metadata accessor for REMRemindersAppIntentDataView();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v2 + 24) = v6;
  v7 = a1;
  return v2;
}

uint64_t REMStoreIntentPerformer.deinit()
{

  sub_261AE6A40(v0 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_now, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v0 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_userDefaults, &unk_27FEDE990, &qword_261D14008);

  return v0;
}

uint64_t REMStoreIntentPerformer.__deallocating_deinit()
{

  sub_261AE6A40(v0 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_now, &qword_27FEDAB68, &unk_261D11C90);
  sub_261AE6A40(v0 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_userDefaults, &unk_27FEDE990, &qword_261D14008);

  return swift_deallocClassInstance();
}

uint64_t sub_261CFC450()
{

  return swift_deallocClassInstance();
}

id sub_261CFC488(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = [a1 subtaskContext];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [objc_opt_self() fetchOptionsIncludingDueDateDeltaAlerts];
  v9[0] = 0;
  v4 = [v2 fetchRemindersWithFetchOptions:v3 error:v9];

  v5 = v9[0];
  if (v4)
  {
    sub_261B05020(0, &qword_27FEDDF20, 0x277D44750);
    v3 = sub_261CFFC64();
    v6 = v5;
  }

  else
  {
    v7 = v9[0];
    sub_261CFD654();

    swift_willThrow();
  }

  return v3;
}