uint64_t sub_236DE65D8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEE578();
}

uint64_t sub_236DE6650(uint64_t a1, uint64_t a2, int a3)
{
  v32 = a3;
  v30 = a1;
  v31 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84350, &qword_236DEF050);
  v28 = *(v4 - 8);
  v29 = v4;
  MEMORY[0x28223BE20](v4);
  v27 = &v27 - v5;
  v6 = type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(0);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v27 - v10;
  v12 = type metadata accessor for AddDevicesExtensionStatus(0);
  v13 = MEMORY[0x28223BE20](v12);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v27 - v16;
  type metadata accessor for AutomatedDeviceEnrollmentAdditionExtensionTerminal(0);
  v18 = swift_allocObject();
  v19 = sub_236DEE918();
  (*(*(v19 - 8) + 56))(v17, 1, 4, v19);
  sub_236DE8BEC(v17, v15, type metadata accessor for AddDevicesExtensionStatus);
  sub_236DEE558();
  sub_236DE8C54(v17, type metadata accessor for AddDevicesExtensionStatus);
  v20 = OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_addDevicesExtensionIdentity;
  v21 = sub_236DEE4E8();
  (*(*(v21 - 8) + 56))(v18 + v20, 1, 1, v21);
  *(v18 + OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_extensionXPCConnection) = 0;
  *(v3 + 16) = v18;
  if (MEMORY[0x277D84F90] >> 62 && sub_236DEE988())
  {
    v22 = sub_236DE92AC(MEMORY[0x277D84F90]);
  }

  else
  {
    v22 = MEMORY[0x277D84FA0];
  }

  *(v3 + 24) = v22;
  v23 = OBJC_IVAR____TtC25AutomatedDeviceEnrollment46AddDevicesToAutomatedDeviceEnrollmentViewModel__viewTypeToPresent;
  swift_storeEnumTagMultiPayload();
  sub_236DE8BEC(v11, v9, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
  v24 = v27;
  sub_236DEE558();
  sub_236DE8C54(v11, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
  (*(v28 + 32))(v3 + v23, v24, v29);
  v25 = v31;
  *(v3 + 32) = v30;
  *(v3 + 40) = v25;
  *(v3 + 48) = v32 & 1;
  return v3;
}

uint64_t sub_236DE69B8()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84300, &qword_236DEEFA0);
  MEMORY[0x28223BE20](v2 - 8);
  v23 = &v21 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84310, &qword_236DEF020);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84318, &qword_236DEF028);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v21 - v9;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84320, &unk_236DEF030);
  v11 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v13 = &v21 - v12;
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84328, &unk_236DEF190);
  sub_236DEE568();
  swift_endAccess();
  sub_236DE9078();
  v14 = sub_236DEE8F8();
  v24 = v14;
  v15 = sub_236DEE8E8();
  (*(*(v15 - 8) + 56))(v6, 1, 1, v15);
  sub_236DE9170(&qword_27DE84338, &qword_27DE84318, &qword_236DEF028, MEMORY[0x277CBCEC8]);
  sub_236DE9540(&qword_27DE84340, sub_236DE9078, MEMORY[0x277D85228]);
  sub_236DEE5A8();
  sub_236DE910C(v6, &qword_27DE84310, &qword_236DEF020);

  (*(v8 + 8))(v10, v7);
  sub_236DE9170(&qword_27DE84348, &qword_27DE84320, &unk_236DEF030, MEMORY[0x277CBCD60]);

  v16 = v22;
  sub_236DEE5B8();

  (*(v11 + 8))(v13, v16);
  swift_beginAccess();
  sub_236DEE528();
  swift_endAccess();

  v17 = sub_236DEE898();
  v18 = v23;
  (*(*(v17 - 8) + 56))(v23, 1, 1, v17);
  v19 = swift_allocObject();
  v19[2] = 0;
  v19[3] = 0;
  v19[4] = v1;

  sub_236DE7400(0, 0, v18, &unk_236DEF048, v19);
}

uint64_t sub_236DE6E4C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_236DEE3F8();
  v4[4] = swift_task_alloc();
  sub_236DEE7F8();
  v4[5] = swift_task_alloc();
  v4[6] = type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(0);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236DE6F44, 0, 0);
}

uint64_t sub_236DE6F44()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_236DE6FD8;

  return sub_236DE96E8();
}

uint64_t sub_236DE6FD8()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236DE713C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_236DE713C()
{
  v18 = v0;
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_236DEE518();
  __swift_project_value_buffer(v2, qword_27DE84780);
  MEMORY[0x2383BDD70](v1);
  v3 = sub_236DEE4F8();
  v4 = sub_236DEE8C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    MEMORY[0x2383BDD70](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84308, &qword_236DEF018);
    v8 = sub_236DEE838();
    v10 = sub_236DEB998(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_236DE5000, v3, v4, "queryExtensionAndSetupConfiguration failed with error '%s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2383BDE90](v7, -1, -1);
    MEMORY[0x2383BDE90](v6, -1, -1);
  }

  v11 = v0[10];
  v13 = v0[7];
  v12 = v0[8];
  sub_236DEE7E8();
  sub_236DEE3E8();
  *v12 = sub_236DEE828();
  v12[1] = v14;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DE8BEC(v12, v13, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);

  sub_236DEE588();

  sub_236DE8C54(v12, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);

  v15 = v0[1];

  return v15();
}

uint64_t sub_236DE7400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84300, &qword_236DEEFA0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_236DE8E60(a3, v25 - v10);
  v12 = sub_236DEE898();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_236DE910C(v11, &qword_27DE84300, &qword_236DEEFA0);
  }

  else
  {
    sub_236DEE888();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_236DEE868();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_236DEE848() + 32;
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

      sub_236DE910C(a3, &qword_27DE84300, &qword_236DEEFA0);

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

  sub_236DE910C(a3, &qword_27DE84300, &qword_236DEEFA0);
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

uint64_t sub_236DE76F0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_236DEE3F8();
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_236DEE7F8();
  MEMORY[0x28223BE20](v7 - 8);
  v54 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84300, &qword_236DEEFA0);
  MEMORY[0x28223BE20](v9 - 8);
  v53 = &v49 - v10;
  v11 = sub_236DEE918();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v52 = &v49 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(0);
  v14 = MEMORY[0x28223BE20](v56);
  v58 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v17 = (&v49 - v16);
  v18 = type metadata accessor for AddDevicesExtensionStatus(0);
  v19 = MEMORY[0x28223BE20](v18);
  v55 = &v49 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v23 = &v49 - v22;
  MEMORY[0x28223BE20](v21);
  v25 = &v49 - v24;
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v26 = sub_236DEE518();
  __swift_project_value_buffer(v26, qword_27DE84780);
  v57 = a1;
  sub_236DE8BEC(a1, v25, type metadata accessor for AddDevicesExtensionStatus);
  v27 = sub_236DEE4F8();
  v28 = sub_236DEE8B8();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v49 = v6;
    v30 = v29;
    v31 = swift_slowAlloc();
    v51 = v11;
    v32 = v31;
    v59[0] = v31;
    *v30 = 136315394;
    *(v30 + 4) = sub_236DEB998(0xD000000000000028, 0x8000000236DEF5F0, v59);
    *(v30 + 12) = 2080;
    v50 = v12;
    v33 = v17;
    v34 = v2;
    sub_236DE8BEC(v25, v23, type metadata accessor for AddDevicesExtensionStatus);
    v35 = sub_236DEE838();
    v37 = v36;
    sub_236DE8C54(v25, type metadata accessor for AddDevicesExtensionStatus);
    v38 = sub_236DEB998(v35, v37, v59);

    *(v30 + 14) = v38;
    v2 = v34;
    v17 = v33;
    v12 = v50;
    _os_log_impl(&dword_236DE5000, v27, v28, "%s extension status updated to %s", v30, 0x16u);
    swift_arrayDestroy();
    v39 = v32;
    v11 = v51;
    MEMORY[0x2383BDE90](v39, -1, -1);
    MEMORY[0x2383BDE90](v30, -1, -1);
  }

  else
  {

    sub_236DE8C54(v25, type metadata accessor for AddDevicesExtensionStatus);
  }

  v40 = v55;
  sub_236DE8BEC(v57, v55, type metadata accessor for AddDevicesExtensionStatus);
  v41 = (*(v12 + 48))(v40, 4, v11);
  if ((v41 - 1) < 2)
  {
    goto LABEL_9;
  }

  if ((v41 - 3) < 2)
  {
    sub_236DEE7E8();
    sub_236DEE3E8();
    *v17 = sub_236DEE828();
    v17[1] = v42;
LABEL_9:
    swift_storeEnumTagMultiPayload();
    swift_getKeyPath();
    swift_getKeyPath();
    sub_236DE8BEC(v17, v58, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);

    sub_236DEE588();
    return sub_236DE8C54(v17, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
  }

  v44 = v52;
  (*(v12 + 32))(v52, v40, v11);
  (*(v12 + 16))(v17, v44, v11);
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  v45 = v12;
  swift_getKeyPath();
  sub_236DE8BEC(v17, v58, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);

  sub_236DEE588();
  sub_236DE8C54(v17, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
  v46 = sub_236DEE898();
  v47 = v53;
  (*(*(v46 - 8) + 56))(v53, 1, 1, v46);
  v48 = swift_allocObject();
  v48[2] = 0;
  v48[3] = 0;
  v48[4] = v2;

  sub_236DE7400(0, 0, v47, &unk_236DEEFF8, v48);

  return (*(v45 + 8))(v44, v11);
}

uint64_t sub_236DE7E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[3] = a4;
  sub_236DEE3F8();
  v4[4] = swift_task_alloc();
  sub_236DEE7F8();
  v4[5] = swift_task_alloc();
  v4[6] = type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(0);
  v4[7] = swift_task_alloc();
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236DE7F4C, 0, 0);
}

uint64_t sub_236DE7F4C()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_236DE7FE8;
  v2 = *(v0 + 24);

  return sub_236DEA334(v2);
}

uint64_t sub_236DE7FE8()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_236DE814C, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_236DE814C()
{
  v18 = v0;
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v1 = v0[10];
  v2 = sub_236DEE518();
  __swift_project_value_buffer(v2, qword_27DE84780);
  MEMORY[0x2383BDD70](v1);
  v3 = sub_236DEE4F8();
  v4 = sub_236DEE8C8();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315138;
    v0[2] = v5;
    MEMORY[0x2383BDD70](v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84308, &qword_236DEF018);
    v8 = sub_236DEE838();
    v10 = sub_236DEB998(v8, v9, &v17);

    *(v6 + 4) = v10;
    _os_log_impl(&dword_236DE5000, v3, v4, "setupXPCConnectionWithExtension failed with error '%s'", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
    MEMORY[0x2383BDE90](v7, -1, -1);
    MEMORY[0x2383BDE90](v6, -1, -1);
  }

  v11 = v0[10];
  v13 = v0[7];
  v12 = v0[8];
  sub_236DEE7E8();
  sub_236DEE3E8();
  *v12 = sub_236DEE828();
  v12[1] = v14;
  swift_storeEnumTagMultiPayload();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DE8BEC(v12, v13, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);

  sub_236DEE588();

  sub_236DE8C54(v12, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);

  v15 = v0[1];

  return v15();
}

uint64_t sub_236DE8410()
{

  v1 = OBJC_IVAR____TtC25AutomatedDeviceEnrollment46AddDevicesToAutomatedDeviceEnrollmentViewModel__viewTypeToPresent;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84350, &qword_236DEF050);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_236DE8500(uint64_t a1)
{
  sub_236DE85B8(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_236DE85B8(uint64_t a1)
{
  if (!qword_27DE842E0)
  {
    type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(255);
    v1 = sub_236DEE598();
    if (!v2)
    {
      atomic_store(v1, &qword_27DE842E0);
    }
  }
}

uint64_t sub_236DE8630(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_236DE8668@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel(0);
  result = sub_236DEE548();
  *a2 = result;
  return result;
}

uint64_t sub_236DE86A8()
{
  v1 = v0;
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v2 = sub_236DEE518();
  __swift_project_value_buffer(v2, qword_27DE84780);
  v3 = sub_236DEE4F8();
  v4 = sub_236DEE8D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10[0] = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_236DEB998(0xD000000000000033, 0x8000000236DEF520, v10);
    _os_log_impl(&dword_236DE5000, v3, v4, "%s Dismissing extension UI", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v6);
    MEMORY[0x2383BDE90](v6, -1, -1);
    MEMORY[0x2383BDE90](v5, -1, -1);
  }

  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v10[0] = *(v1 + 32);
  v10[1] = v7;
  v11 = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE842F8, &qword_236DEEF98);
  return sub_236DEE7B8();
}

uint64_t sub_236DE88B4(uint64_t a1)
{
  result = sub_236DEE918();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

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

uint64_t sub_236DE89A8(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_236DE8AA0;

  return v6(a1);
}

uint64_t sub_236DE8AA0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
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

uint64_t sub_236DE8BEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_236DE8C54(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_236DE8CB8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_236DE8D6C;

  return sub_236DE7E54(a1, v4, v5, v6);
}

uint64_t sub_236DE8D6C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_236DE8E60(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84300, &qword_236DEEFA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236DE8ED0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_236DE8F08(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_236DE9590;

  return sub_236DE89A8(a1, v4);
}

uint64_t sub_236DE8FC0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_236DE8D6C;

  return sub_236DE89A8(a1, v4);
}

unint64_t sub_236DE9078()
{
  result = qword_27DE84330;
  if (!qword_27DE84330)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27DE84330);
  }

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

uint64_t sub_236DE910C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_236DE9170(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_236DE91F8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_236DE9590;

  return sub_236DE6E4C(a1, v4, v5, v6);
}

unint64_t sub_236DE92AC(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = sub_236DEE988();
    if (result)
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84358, &qword_236DEF058);
      result = sub_236DEE948();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = sub_236DEE988();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = MEMORY[0x277D84FA0];
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 56;
  v21 = v1 & 0xC000000000000001;
  v18 = v1 + 32;
  v19 = v1 & 0xFFFFFFFFFFFFFF8;
  v20 = v1;
  while (v21)
  {
    result = MEMORY[0x2383BDB20](v6, v1);
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_18:
    sub_236DEE538();
    sub_236DE9540(&qword_27DE84360, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB0]);
    result = sub_236DEE7C8();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *(v7 + 8 * (v11 >> 6));
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      sub_236DE9540(&qword_27DE84368, MEMORY[0x277CBCDA8], MEMORY[0x277CBCDB8]);
      do
      {
        result = sub_236DEE7D8();
        if (result)
        {

          v1 = v20;
          goto LABEL_11;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *(v7 + 8 * (v11 >> 6));
        v14 = 1 << v11;
      }

      while (((1 << v11) & v13) != 0);
      v1 = v20;
    }

    *(v7 + 8 * v12) = v14 | v13;
    *(*(v3 + 48) + 8 * v11) = v8;
    v16 = *(v3 + 16);
    v9 = __OFADD__(v16, 1);
    v17 = v16 + 1;
    if (v9)
    {
      goto LABEL_27;
    }

    *(v3 + 16) = v17;
LABEL_11:
    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v19 + 16))
  {
    goto LABEL_28;
  }

  v8 = *(v18 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
  return result;
}

uint64_t sub_236DE9540(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_236DE9594()
{
  v0 = sub_236DEE518();
  __swift_allocate_value_buffer(v0, qword_27DE84780);
  __swift_project_value_buffer(v0, qword_27DE84780);
  return sub_236DEE508();
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

uint64_t sub_236DE9670()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEE578();
}

uint64_t sub_236DE96E8()
{
  v1[6] = v0;
  sub_236DEE418();
  v1[7] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843B8, &unk_236DEF128);
  v1[8] = swift_task_alloc();
  v2 = sub_236DEE4E8();
  v1[9] = v2;
  v1[10] = *(v2 - 8);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v3 = sub_236DEE438();
  v1[14] = v3;
  v1[15] = *(v3 - 8);
  v1[16] = swift_task_alloc();
  v4 = sub_236DEE448();
  v1[17] = v4;
  v1[18] = *(v4 - 8);
  v1[19] = swift_task_alloc();
  v1[20] = swift_task_alloc();
  v5 = sub_236DEE468();
  v1[21] = v5;
  v1[22] = *(v5 - 8);
  v1[23] = swift_task_alloc();
  type metadata accessor for AddDevicesExtensionStatus(0);
  v1[24] = swift_task_alloc();
  v1[25] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236DE997C, 0, 0);
}

uint64_t sub_236DE997C()
{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[20];
  v5 = v0[17];
  v4 = v0[18];
  v13 = v0[19];
  v6 = sub_236DEE918();
  v0[26] = v6;
  v7 = *(v6 - 8);
  v8 = *(v7 + 56);
  v0[27] = v8;
  v0[28] = (v7 + 56) & 0xFFFFFFFFFFFFLL | 0xA0D1000000000000;
  v8(v1, 2, 4, v6);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEBF88(v1, v2);

  sub_236DEE588();
  sub_236DEBFEC(v1);
  sub_236DEE428();
  sub_236DEE458();
  (*(v4 + 16))(v13, v3, v5);
  sub_236DEC0A8(&qword_27DE843D0, MEMORY[0x277CC5D98], MEMORY[0x277CC5DA0]);
  sub_236DEE8A8();
  v9 = sub_236DEC0A8(&qword_27DE843D8, MEMORY[0x277CC5D88], MEMORY[0x277CC5D90]);
  v10 = swift_task_alloc();
  v0[29] = v10;
  *v10 = v0;
  v10[1] = sub_236DE9BC0;
  v11 = v0[14];

  return MEMORY[0x282200308](v0 + 5, v11, v9);
}

uint64_t sub_236DE9BC0()
{
  v2 = *(*v1 + 128);
  v3 = *(*v1 + 120);
  v4 = *(*v1 + 112);
  *(*v1 + 240) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_236DEA20C;
  }

  else
  {
    v5 = sub_236DE9D30;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_236DE9D30()
{
  v41 = v0;
  v1 = *(v0 + 40);
  v2 = *(v0 + 160);
  v3 = *(v0 + 136);
  v4 = *(v0 + 144);
  if (!v1)
  {
    (*(v4 + 8))(v2, v3);
LABEL_9:
    v23 = *(v0 + 200);
    v24 = *(v0 + 192);
    (*(v0 + 216))(v23, 3, 4, *(v0 + 208));
    swift_getKeyPath();
    swift_getKeyPath();
    sub_236DEBF88(v23, v24);

    sub_236DEE588();
    sub_236DEBFEC(v23);
    goto LABEL_12;
  }

  (*(v4 + 8))(v2, v3);
  if (!*(v1 + 16))
  {

    goto LABEL_9;
  }

  v5 = *(v0 + 80);
  v6 = *(v5 + 16);
  (v6)(*(v0 + 104), v1 + ((*(v5 + 80) + 32) & ~*(v5 + 80)), *(v0 + 72));

  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + 96);
  v7 = *(v0 + 104);
  v9 = *(v0 + 72);
  v10 = sub_236DEE518();
  __swift_project_value_buffer(v10, qword_27DE84780);
  v39 = v6;
  (v6)(v8, v7, v9);
  v11 = sub_236DEE4F8();
  v12 = sub_236DEE8D8();
  v13 = os_log_type_enabled(v11, v12);
  v14 = *(v0 + 96);
  v15 = *(v0 + 72);
  v16 = *(v0 + 80);
  if (v13)
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v40 = v18;
    *v17 = 136315138;
    v19 = sub_236DEE4D8();
    v21 = v20;
    v38 = *(v16 + 8);
    v38(v14, v15);
    v22 = sub_236DEB998(v19, v21, &v40);

    *(v17 + 4) = v22;
    _os_log_impl(&dword_236DE5000, v11, v12, "Add devices extension found with bundle identifier: %s", v17, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x2383BDE90](v18, -1, -1);
    MEMORY[0x2383BDE90](v17, -1, -1);
  }

  else
  {

    v38 = *(v16 + 8);
    v38(v14, v15);
  }

  v36 = *(v0 + 216);
  v25 = *(v0 + 200);
  v37 = *(v0 + 192);
  v33 = *(v0 + 104);
  v26 = *(v0 + 80);
  v34 = *(v0 + 88);
  v35 = *(v0 + 208);
  v28 = *(v0 + 64);
  v27 = *(v0 + 72);
  v29 = *(v0 + 48);
  v39(v28);
  (*(v26 + 56))(v28, 0, 1, v27);
  v30 = OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_addDevicesExtensionIdentity;
  swift_beginAccess();
  sub_236DEC0F0(v28, v29 + v30);
  swift_endAccess();
  (v39)(v34, v33, v27);
  sub_236DEE408();
  sub_236DEE908();
  v36(v25, 0, 4, v35);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEBF88(v25, v37);

  sub_236DEE588();
  sub_236DEBFEC(v25);
  v38(v33, v27);
LABEL_12:
  (*(*(v0 + 176) + 8))(*(v0 + 184), *(v0 + 168));

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_236DEA20C()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  (*(v0[18] + 8))(v0[20], v0[17]);
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_236DEA334(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = sub_236DEE4C8();
  v2[12] = v3;
  v2[13] = *(v3 - 8);
  v2[14] = swift_task_alloc();
  v4 = sub_236DEE498();
  v2[15] = v4;
  v2[16] = *(v4 - 8);
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843B8, &unk_236DEF128);
  v2[19] = swift_task_alloc();
  v5 = sub_236DEE4E8();
  v2[20] = v5;
  v2[21] = *(v5 - 8);
  v2[22] = swift_task_alloc();
  v2[23] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_236DEA4FC, 0, 0);
}

uint64_t sub_236DEA4FC()
{
  v29 = v0;
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v1 = sub_236DEE518();
  v0[24] = __swift_project_value_buffer(v1, qword_27DE84780);
  v2 = sub_236DEE4F8();
  v3 = sub_236DEE8D8();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v28 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_236DEB998(0xD000000000000026, 0x8000000236DEF7B0, &v28);
    _os_log_impl(&dword_236DE5000, v2, v3, "Begin %s", v4, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v5);
    MEMORY[0x2383BDE90](v5, -1, -1);
    MEMORY[0x2383BDE90](v4, -1, -1);
  }

  v6 = v0[20];
  v7 = v0[21];
  v8 = v0[19];
  v9 = v0[11];
  v10 = OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_addDevicesExtensionIdentity;
  swift_beginAccess();
  sub_236DEB748(v9 + v10, v8);
  if ((*(v7 + 48))(v8, 1, v6) == 1)
  {
    sub_236DEB7B8(v0[19]);
    v11 = sub_236DEE4F8();
    v12 = sub_236DEE8C8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v28 = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_236DEB998(0xD000000000000026, 0x8000000236DEF7B0, &v28);
      _os_log_impl(&dword_236DE5000, v11, v12, "%s called when there is no extension identity", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x2383BDE90](v14, -1, -1);
      MEMORY[0x2383BDE90](v13, -1, -1);
    }

    v15 = v0[1];

    return v15();
  }

  else
  {
    v18 = v0[22];
    v17 = v0[23];
    v19 = v0[20];
    v20 = v0[21];
    v21 = v0[18];
    v23 = v0[16];
    v22 = v0[17];
    v24 = v0[15];
    (*(v20 + 32))(v17, v0[19], v19);
    (*(v20 + 16))(v18, v17, v19);
    swift_allocObject();
    swift_weakInit();
    sub_236DEE478();
    sub_236DEE3D8();
    sub_236DEE488();
    (*(v23 + 16))(v22, v21, v24);
    v25 = swift_task_alloc();
    v0[25] = v25;
    *v25 = v0;
    v25[1] = sub_236DEA928;
    v26 = v0[17];
    v27 = v0[14];

    return MEMORY[0x282116960](v27, v26);
  }
}

uint64_t sub_236DEA928()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_236DEAF94;
  }

  else
  {
    v2 = sub_236DEAA3C;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_236DEAA3C()
{
  v47 = v0;
  v1 = *(v0 + 208);
  v2 = sub_236DEE4B8();
  if (v1)
  {
    (*(*(v0 + 104) + 8))(*(v0 + 112), *(v0 + 96));
    v3 = *(v0 + 184);
    v4 = *(v0 + 160);
    v5 = *(v0 + 168);
    (*(*(v0 + 128) + 8))(*(v0 + 144), *(v0 + 120));
    (*(v5 + 8))(v3, v4);

    v6 = *(v0 + 8);
  }

  else
  {
    v7 = v2;
    v8 = *(v0 + 80);
    v9 = objc_opt_self();
    v10 = [v9 interfaceWithProtocol_];
    [v7 setExportedInterface_];

    [v7 setExportedObject_];
    [v7 resume];
    v11 = sub_236DEE4F8();
    v12 = sub_236DEE8D8();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v46[0] = v14;
      *v13 = 136315138;
      *(v13 + 4) = sub_236DEB998(0xD000000000000026, 0x8000000236DEF7B0, v46);
      _os_log_impl(&dword_236DE5000, v11, v12, "%s Successfully setup XPC connection to extension", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v14);
      MEMORY[0x2383BDE90](v14, -1, -1);
      MEMORY[0x2383BDE90](v13, -1, -1);
    }

    v15 = *(v0 + 88);
    v16 = *(v15 + OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_extensionXPCConnection);
    *(v15 + OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_extensionXPCConnection) = v7;
    v17 = v7;

    v18 = [v9 interfaceWithProtocol_];
    [v17 setRemoteObjectInterface_];

    v19 = [v17 remoteObjectProxy];
    sub_236DEE938();
    swift_unknownObjectRelease();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843C0, &qword_236DEF138);
    if (swift_dynamicCast())
    {
      v20 = *(v0 + 168);
      v42 = *(v0 + 160);
      v44 = *(v0 + 184);
      v21 = *(v0 + 144);
      v23 = *(v0 + 120);
      v22 = *(v0 + 128);
      v24 = *(v0 + 104);
      v25 = *(v0 + 112);
      v26 = *(v0 + 96);
      [*(v0 + 72) extensionLoaded];
      swift_unknownObjectRelease();

      (*(v24 + 8))(v25, v26);
      (*(v22 + 8))(v21, v23);
      (*(v20 + 8))(v44, v42);
    }

    else
    {
      v27 = sub_236DEE4F8();
      v28 = sub_236DEE8C8();
      v29 = os_log_type_enabled(v27, v28);
      v30 = *(v0 + 184);
      v31 = *(v0 + 160);
      v32 = *(v0 + 168);
      v33 = *(v0 + 128);
      v43 = *(v0 + 120);
      v45 = *(v0 + 144);
      v34 = *(v0 + 104);
      v41 = *(v0 + 112);
      v35 = *(v0 + 96);
      if (v29)
      {
        v40 = *(v0 + 184);
        v36 = swift_slowAlloc();
        v39 = v31;
        v37 = swift_slowAlloc();
        v46[0] = v37;
        *v36 = 136315138;
        *(v36 + 4) = sub_236DEB998(0xD000000000000026, 0x8000000236DEF7B0, v46);
        _os_log_impl(&dword_236DE5000, v27, v28, "%s Unable to retrieve extension XPC proxy", v36, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v37);
        MEMORY[0x2383BDE90](v37, -1, -1);
        MEMORY[0x2383BDE90](v36, -1, -1);

        (*(v34 + 8))(v41, v35);
        (*(v33 + 8))(v45, v43);
        (*(v32 + 8))(v40, v39);
      }

      else
      {

        (*(v34 + 8))(v41, v35);
        (*(v33 + 8))(v45, v43);
        (*(v32 + 8))(v30, v31);
      }
    }

    v6 = *(v0 + 8);
  }

  return v6();
}

uint64_t sub_236DEAF94()
{
  v1 = v0[23];
  v2 = v0[20];
  v3 = v0[21];
  (*(v0[16] + 8))(v0[18], v0[15]);
  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

void sub_236DEB080(uint64_t a1)
{
  v1 = type metadata accessor for AddDevicesExtensionStatus(0);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v15 - v5;
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v7 = sub_236DEE518();
  __swift_project_value_buffer(v7, qword_27DE84780);
  v8 = sub_236DEE4F8();
  v9 = sub_236DEE8C8();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_236DE5000, v8, v9, "Extension connection got interrupted", v10, 2u);
    MEMORY[0x2383BDE90](v10, -1, -1);
  }

  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v11 = sub_236DEE918();
    (*(*(v11 - 8) + 56))(v6, 4, 4, v11);
    swift_getKeyPath();
    swift_getKeyPath();
    sub_236DEBF88(v6, v4);
    sub_236DEE588();
    sub_236DEBFEC(v6);
  }

  else
  {
    v12 = sub_236DEE4F8();
    v13 = sub_236DEE8D8();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_236DE5000, v12, v13, "Extension terminal got deallocated before we could handle XPC connection interruption", v14, 2u);
      MEMORY[0x2383BDE90](v14, -1, -1);
    }
  }
}

uint64_t sub_236DEB2F4()
{
  v1 = OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal__extensionStatus;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84328, &unk_236DEF190);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_236DEB7B8(v0 + OBJC_IVAR____TtC25AutomatedDeviceEnrollment50AutomatedDeviceEnrollmentAdditionExtensionTerminal_addDevicesExtensionIdentity);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

void sub_236DEB3E4(uint64_t a1)
{
  sub_236DEB534(319, &qword_27DE84398, type metadata accessor for AddDevicesExtensionStatus, MEMORY[0x277CBCED0]);
  if (v1 <= 0x3F)
  {
    sub_236DEB534(319, &qword_27DE843A0, MEMORY[0x277CC5DC0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_236DEB534(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_236DEB5AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_236DEE918();
  v5 = (*(*(v4 - 8) + 48))(a1, a2, v4);
  if (v5 >= 5)
  {
    return v5 - 4;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_236DEB62C(uint64_t a1, int a2, uint64_t a3)
{
  if (a2)
  {
    v5 = (a2 + 4);
  }

  else
  {
    v5 = 0;
  }

  v6 = sub_236DEE918();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, a3, v6);
}

uint64_t sub_236DEB6B0(uint64_t a1)
{
  v1 = sub_236DEE918();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t sub_236DEB708@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for AutomatedDeviceEnrollmentAdditionExtensionTerminal(0);
  result = sub_236DEE548();
  *a2 = result;
  return result;
}

uint64_t sub_236DEB748(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843B8, &unk_236DEF128);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236DEB7B8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843B8, &unk_236DEF128);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_236DEB820(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEE578();
}

uint64_t sub_236DEB89C(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for AddDevicesExtensionStatus(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_236DEBF88(a1, &v10 - v7);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEBF88(v8, v6);

  sub_236DEE588();
  return sub_236DEBFEC(v8);
}

unint64_t sub_236DEB998(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_236DEBA64(v11, 0, 0, 1, a1, a2);
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
    sub_236DEC048(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
  return v7;
}

unint64_t sub_236DEBA64(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = sub_236DEBB70(a5, a6);
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
    result = sub_236DEE978();
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

void *sub_236DEBB70(uint64_t a1, unint64_t a2)
{
  v3 = sub_236DEBBBC(a1, a2);
  sub_236DEBCEC(&unk_2849D09C0);
  return v3;
}

void *sub_236DEBBBC(uint64_t a1, unint64_t a2)
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

  v6 = sub_236DEBDD8(v5, 0);
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

  result = sub_236DEE978();
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
        v10 = sub_236DEE858();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_236DEBDD8(v10, 0);
        result = sub_236DEE958();
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

uint64_t sub_236DEBCEC(uint64_t result)
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

  result = sub_236DEBE4C(result, v11, 1, v3);
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

void *sub_236DEBDD8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843C8, &qword_236DEF188);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *sub_236DEBE4C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843C8, &qword_236DEF188);
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

uint64_t sub_236DEBF40()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_236DEBF88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AddDevicesExtensionStatus(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236DEBFEC(uint64_t a1)
{
  v2 = type metadata accessor for AddDevicesExtensionStatus(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_236DEC048(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_236DEC0A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_236DEC0F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843B8, &unk_236DEF128);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
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

uint64_t sub_236DEC174(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_236DEC1BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_236DEC230@<X0>(uint64_t a2@<X8>)
{
  v57 = a2;
  v54 = type metadata accessor for AddDevicesExtensionView(0);
  MEMORY[0x28223BE20](v54);
  v46 = &v41 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_236DEE918();
  v45 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v44 = &v41 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843E8, &qword_236DEF258);
  MEMORY[0x28223BE20](v55);
  v5 = &v41 - v4;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843F0, &qword_236DEF260);
  MEMORY[0x28223BE20](v50);
  v52 = &v41 - v6;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843F8, &qword_236DEF268);
  MEMORY[0x28223BE20](v56);
  v53 = &v41 - v7;
  v49 = sub_236DEE658();
  v42 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84400, &qword_236DEF270);
  v41 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v41 - v11;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84408, &qword_236DEF278);
  v43 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v48 = (&v41 - v13);
  v14 = type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v41 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEE578();

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = *v16;
      v18 = v16[1];
      v20 = sub_236DEE628();
      v68 = 1;
      sub_236DECC04(v19, v18, &v59);
      v73 = v63;
      v74 = v64;
      v75 = v65;
      v76 = v66;
      v69 = v59;
      v70 = v60;
      v71 = v61;
      v72 = v62;
      v77 = v59;
      v78 = v60;
      v79 = v61;
      v80 = v62;
      v81 = v63;
      v82 = v64;
      v83 = v65;
      v84 = v66;
      sub_236DED5C8(&v69, &v58, &qword_27DE84410, &qword_236DEF2C8);
      sub_236DE910C(&v77, &qword_27DE84410, &qword_236DEF2C8);

      *&v67[71] = v73;
      *&v67[87] = v74;
      *&v67[103] = v75;
      *&v67[7] = v69;
      *&v67[23] = v70;
      *&v67[39] = v71;
      v67[119] = v76;
      *&v67[55] = v72;
      LOBYTE(v18) = v68;
      v21 = sub_236DEE6F8();
      v22 = *&v67[80];
      *(v5 + 81) = *&v67[64];
      *(v5 + 97) = v22;
      *(v5 + 113) = *&v67[96];
      v23 = *&v67[16];
      *(v5 + 17) = *v67;
      *(v5 + 33) = v23;
      v24 = *&v67[48];
      *(v5 + 49) = *&v67[32];
      *v5 = v20;
      *(v5 + 1) = 0;
      v5[16] = v18;
      *(v5 + 129) = *&v67[112];
      *(v5 + 65) = v24;
      v5[144] = v21;
      *(v5 + 168) = 0u;
      *(v5 + 152) = 0u;
      v5[184] = 1;
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84418, &qword_236DEF2D0);
      sub_236DED174();
      sub_236DED338();
      return sub_236DEE638();
    }

    else
    {
      sub_236DEE5C8();
      sub_236DEE648();
      v33 = sub_236DE9170(&qword_27DE84428, &qword_27DE84400, &qword_236DEF270, MEMORY[0x277CDD7F8]);
      v34 = sub_236DED2F0(&qword_27DE84430, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
      v35 = v48;
      v36 = v49;
      sub_236DEE778();
      (*(v42 + 8))(v9, v36);
      (*(v41 + 8))(v12, v10);
      v37 = v43;
      v38 = v35;
      v39 = v51;
      (*(v43 + 16))(v52, v38, v51);
      swift_storeEnumTagMultiPayload();
      *&v77 = v10;
      *(&v77 + 1) = v36;
      *&v78 = v33;
      *(&v78 + 1) = v34;
      swift_getOpaqueTypeConformance2();
      sub_236DED2F0(&qword_27DE84438, type metadata accessor for AddDevicesExtensionView, &unk_236DEF400);
      v40 = v53;
      sub_236DEE638();
      sub_236DED3F0(v40, v5);
      swift_storeEnumTagMultiPayload();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84418, &qword_236DEF2D0);
      sub_236DED174();
      sub_236DED338();
      sub_236DEE638();
      sub_236DED460(v40);
      return (*(v37 + 8))(v48, v39);
    }
  }

  else
  {
    v26 = v44;
    v27 = v45;
    v28 = v47;
    (*(v45 + 32))(v44, v16, v47);
    v29 = v46;
    (*(v27 + 16))(v46, v26, v28);
    v48 = type metadata accessor for AddDevicesExtensionView;
    sub_236DED650(v29, v52, type metadata accessor for AddDevicesExtensionView);
    swift_storeEnumTagMultiPayload();
    v30 = sub_236DE9170(&qword_27DE84428, &qword_27DE84400, &qword_236DEF270, MEMORY[0x277CDD7F8]);
    v31 = sub_236DED2F0(&qword_27DE84430, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    *&v77 = v10;
    *(&v77 + 1) = v49;
    *&v78 = v30;
    *(&v78 + 1) = v31;
    swift_getOpaqueTypeConformance2();
    sub_236DED2F0(&qword_27DE84438, type metadata accessor for AddDevicesExtensionView, &unk_236DEF400);
    v32 = v53;
    sub_236DEE638();
    sub_236DED3F0(v32, v5);
    swift_storeEnumTagMultiPayload();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84418, &qword_236DEF2D0);
    sub_236DED174();
    sub_236DED338();
    sub_236DEE638();
    sub_236DED460(v32);
    sub_236DED6B8(v29, v48);
    return (*(v27 + 8))(v26, v28);
  }
}

uint64_t sub_236DECC04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84458, &qword_236DEF2E0);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v29 = sub_236DEE7A8();
  v9 = sub_236DEE728();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = sub_236DEE738();
  sub_236DE910C(v8, &qword_27DE84458, &qword_236DEF2E0);
  KeyPath = swift_getKeyPath();
  LOBYTE(v8) = sub_236DEE708();
  v12 = sub_236DEE718();
  sub_236DEE718();
  if (sub_236DEE718() != v8)
  {
    v12 = sub_236DEE718();
  }

  v47 = 1;
  *&v36 = a1;
  *(&v36 + 1) = a2;
  sub_236DED520();

  v13 = sub_236DEE748();
  v15 = v14;
  v17 = v16;
  v19 = v18;
  v20 = swift_getKeyPath();
  v21 = v29;
  *&v31 = v29;
  *(&v31 + 1) = KeyPath;
  v22 = v10;
  *&v32 = v10;
  BYTE8(v32) = v12;
  *(&v32 + 9) = v48[0];
  HIDWORD(v32) = *(v48 + 3);
  v34 = 0u;
  v33 = 0u;
  v35 = 1;
  LOBYTE(v40) = 1;
  v38 = 0u;
  v39 = 0u;
  v36 = v31;
  v37 = v32;
  v17 &= 1u;
  v30 = v17;
  v23 = v31;
  v24 = v32;
  v25 = v40;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = v23;
  *(a3 + 16) = v24;
  *(a3 + 64) = v25;
  *(a3 + 72) = v13;
  *(a3 + 80) = v15;
  *(a3 + 88) = v17;
  *(a3 + 96) = v19;
  *(a3 + 104) = v20;
  *(a3 + 112) = 1;
  v26 = v21;
  sub_236DED5C8(&v31, v41, &qword_27DE84468, &qword_236DEF348);
  sub_236DED630(v13, v15, v17);

  sub_236DED640(v13, v15, v17);

  v41[0] = v26;
  v41[1] = KeyPath;
  v41[2] = v22;
  v42 = v12;
  *v43 = v48[0];
  *&v43[3] = *(v48 + 3);
  v44 = 0u;
  v45 = 0u;
  v46 = 1;
  return sub_236DE910C(v41, &qword_27DE84468, &qword_236DEF348);
}

uint64_t sub_236DECF68@<X0>(uint64_t a6@<X8>)
{
  *a6 = sub_236DEE628();
  *(a6 + 8) = 0;
  *(a6 + 16) = 1;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843E0, &qword_236DEF250);
  return sub_236DEC230(a6 + *(v7 + 44));
}

uint64_t sub_236DECFD4(uint64_t *a1)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DEE578();
}

uint64_t sub_236DED054(uint64_t a1, uint64_t *a2)
{
  v3 = type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType(0);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - v7;
  sub_236DED650(a1, &v10 - v7, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
  swift_getKeyPath();
  swift_getKeyPath();
  sub_236DED650(v8, v6, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);

  sub_236DEE588();
  return sub_236DED6B8(v8, type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel.addDevicesExtensionViewType);
}

unint64_t sub_236DED174()
{
  result = qword_27DE84420;
  if (!qword_27DE84420)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE843F8, &qword_236DEF268);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE84400, &qword_236DEF270);
    sub_236DEE658();
    sub_236DE9170(&qword_27DE84428, &qword_27DE84400, &qword_236DEF270, MEMORY[0x277CDD7F8]);
    sub_236DED2F0(&qword_27DE84430, MEMORY[0x277CDE330], MEMORY[0x277CDE318]);
    swift_getOpaqueTypeConformance2();
    sub_236DED2F0(&qword_27DE84438, type metadata accessor for AddDevicesExtensionView, &unk_236DEF400);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84420);
  }

  return result;
}

uint64_t sub_236DED2F0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_236DED338()
{
  result = qword_27DE84440;
  if (!qword_27DE84440)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE84418, &qword_236DEF2D0);
    sub_236DE9170(&qword_27DE84448, &qword_27DE84450, &qword_236DEF2D8, MEMORY[0x277CE1198]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84440);
  }

  return result;
}

uint64_t sub_236DED3F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843F8, &qword_236DEF268);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_236DED460(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE843F8, &qword_236DEF268);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_236DED4C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_236DEE608();
  *a1 = result;
  return result;
}

unint64_t sub_236DED520()
{
  result = qword_27DE84460;
  if (!qword_27DE84460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84460);
  }

  return result;
}

uint64_t sub_236DED574@<X0>(_BYTE *a1@<X8>)
{
  result = sub_236DEE5E8();
  *a1 = result;
  return result;
}

uint64_t sub_236DED5C8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_236DED630(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_236DED640(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_236DED650(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_236DED6B8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t View.automatedDeviceEnrollmentAddition(isPresented:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a3;
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  *(v8 + 32) = v5;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE84480, &unk_236DEF360);
  sub_236DED96C();
  sub_236DEE798();
}

uint64_t sub_236DED858@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel(0);
  swift_allocObject();
  swift_retain_n();
  swift_retain_n();
  sub_236DE6650(a1, a2, a3);
  sub_236DEDAC0();
  v8 = sub_236DEE5D8();
  v10 = v9;

  sub_236DE69B8();

  result = sub_236DEE6F8();
  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = v8;
  *(a4 + 32) = v10;
  *(a4 + 40) = result;
  return result;
}

uint64_t sub_236DED920()
{

  return MEMORY[0x2821FE8E8](v0, 33, 7);
}

unint64_t sub_236DED96C()
{
  result = qword_27DE84488;
  if (!qword_27DE84488)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE84480, &unk_236DEF360);
    sub_236DED9F8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84488);
  }

  return result;
}

unint64_t sub_236DED9F8()
{
  result = qword_27DE84490;
  if (!qword_27DE84490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84490);
  }

  return result;
}

uint64_t sub_236DEDA4C(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DE84480, &unk_236DEF360);
  sub_236DED96C();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_236DEDAC0()
{
  result = qword_27DE84498;
  if (!qword_27DE84498)
  {
    type metadata accessor for AddDevicesToAutomatedDeviceEnrollmentViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DE84498);
  }

  return result;
}

uint64_t sub_236DEDB2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_236DEE918();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_236DEDBAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_236DEE918();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for AddDevicesExtensionView(uint64_t a1)
{
  result = qword_27DE844A0;
  if (!qword_27DE844A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_236DEDC68(uint64_t a1)
{
  result = sub_236DEE918();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

id sub_236DEDD08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DE844B8, &unk_236DEF450);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v9 - v2;
  type metadata accessor for LightContentStatusBarEXHostViewController();
  v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v5 = sub_236DEE918();
  v6 = *(v5 - 8);
  (*(v6 + 16))(v3, v0, v5);
  (*(v6 + 56))(v3, 0, 1, v5);
  v7 = v4;
  sub_236DEE928();

  return v7;
}

uint64_t sub_236DEDE8C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_236DEDFD0(&qword_27DE844B0, &unk_236DEF388);

  return MEMORY[0x28212EF70](a1, a2, a3, v6);
}

uint64_t sub_236DEDF0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_236DEDFD0(&qword_27DE844B0, &unk_236DEF388);

  return MEMORY[0x28212EF38](a1, a2, a3, v6);
}

void sub_236DEDF8C(uint64_t a1)
{
  sub_236DEDFD0(&qword_27DE844B0, &unk_236DEF388);
  sub_236DEE6C8();
  __break(1u);
}

uint64_t sub_236DEDFD0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for AddDevicesExtensionView(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_236DEE014()
{
  if (qword_27DE842C0 != -1)
  {
    swift_once();
  }

  v0 = sub_236DEE518();
  __swift_project_value_buffer(v0, qword_27DE84780);
  oslog = sub_236DEE4F8();
  v1 = sub_236DEE8D8();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136315138;
    *(v2 + 4) = sub_236DEB998(0xD000000000000022, 0x8000000236DEF850, &v5);
    _os_log_impl(&dword_236DE5000, oslog, v1, "%s Nothing to do here yet", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    MEMORY[0x2383BDE90](v3, -1, -1);
    MEMORY[0x2383BDE90](v2, -1, -1);
  }
}

id sub_236DEE380(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for LightContentStatusBarEXHostViewController();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}