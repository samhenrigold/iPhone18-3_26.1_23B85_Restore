id sub_22986070C(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TemperatureHumidityReadWriteLogEvent();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_2298607E0(uint64_t a1)
{
  v2 = v1;
  os_unfair_lock_lock((a1 + 16));
  v4 = *(a1 + 32);
  v5 = v4;
  os_unfair_lock_unlock((a1 + 16));
  if (!v4)
  {
    v6 = *(a1 + 88);
    v7 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_0((a1 + 64), v6);
    v5 = (*(v7 + 24))(a1, v6, v7);
  }

  os_unfair_lock_lock((a1 + 16));
  v8 = *(a1 + 48);
  v9 = v8;
  os_unfair_lock_unlock((a1 + 16));
  if (!v8)
  {
    v10 = *(a1 + 88);
    v11 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_0((a1 + 64), v10);
    v9 = (*(v11 + 40))(a1, v10, v11);
  }

  v12 = [objc_opt_self() driver];
  v13 = [v12 coreData];

  v14 = [v13 contextWithRootPartition];
  v15 = v5;
  v16 = v9;
  v17 = v14;
  os_unfair_lock_lock(v2 + 4);
  os_unfair_lock_lock((a1 + 16));
  v18 = *(a1 + 24);
  v19 = v18;
  os_unfair_lock_unlock((a1 + 16));
  if (!v18)
  {
    v20 = [objc_allocWithZone(HMDAccountRegistry) initWithAppleAccountManager:v15 remoteAccountManager:v16 context:v17];
    os_unfair_lock_lock((a1 + 16));
    v19 = v20;
    sub_229860E74(a1 + 24);
    *(a1 + 24) = v20;
    os_unfair_lock_unlock((a1 + 16));
  }

  os_unfair_lock_unlock(v2 + 4);
  return v19;
}

id sub_2298609DC(uint64_t a1)
{
  os_unfair_lock_lock(v1 + 4);
  os_unfair_lock_lock((a1 + 16));
  v3 = *(a1 + 40);
  v4 = v3;
  os_unfair_lock_unlock((a1 + 16));
  if (!v3)
  {
    v5 = [objc_allocWithZone(HMDIDSServiceManager) initWithDefaults];
    [v5 configure];
    os_unfair_lock_lock((a1 + 16));
    v6 = *(a1 + 40);
    v4 = v5;

    *(a1 + 40) = v5;
    os_unfair_lock_unlock((a1 + 16));
  }

  os_unfair_lock_unlock(v1 + 4);
  return v4;
}

uint64_t sub_229860A8C(uint64_t a1, uint64_t a2, uint64_t (*a3)(os_unfair_lock_s *, uint64_t, uint64_t, id))
{
  v5 = v3;
  os_unfair_lock_lock((a1 + 16));
  v7 = *(a1 + 40);
  v8 = v7;
  os_unfair_lock_unlock((a1 + 16));
  if (!v7)
  {
    v9 = *(a1 + 88);
    v10 = *(a1 + 96);
    __swift_project_boxed_opaque_existential_0((a1 + 64), v9);
    v8 = (*(v10 + 32))(a1, v9, v10);
  }

  KeyPath = swift_getKeyPath();
  v12 = v8;
  os_unfair_lock_lock(v5 + 4);
  v13 = a3(v5 + 4, a1, KeyPath, v12);

  os_unfair_lock_unlock(v5 + 4);

  return v13;
}

id sub_229860C78(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, uint64_t a4)
{
  os_unfair_lock_lock(a2 + 4);
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v9 = *v7;
  v6(v13, 0);
  os_unfair_lock_unlock(a2 + 4);
  if (v8)
  {
    return v9;
  }

  v11 = [objc_allocWithZone(HMDAppleAccountManager) initWithIDSServiceManager_];
  os_unfair_lock_lock(a2 + 4);
  v13[0] = v11;
  v12 = v11;
  swift_setAtWritableKeyPath();
  os_unfair_lock_unlock(a2 + 4);
  return v12;
}

id sub_229860D64(uint64_t a1, os_unfair_lock_s *a2, uint64_t a3, void *a4)
{
  os_unfair_lock_lock(a2 + 4);
  v6 = swift_readAtKeyPath();
  v8 = *v7;
  v9 = *v7;
  v6(v13, 0);
  os_unfair_lock_unlock(a2 + 4);
  if (v8)
  {
    return v9;
  }

  v11 = [objc_allocWithZone(HMDRemoteAccountManager) initWithIDSService_];
  swift_unknownObjectRelease();
  os_unfair_lock_lock(a2 + 4);
  v13[0] = v11;
  v12 = v11;
  swift_setAtWritableKeyPath();
  os_unfair_lock_unlock(a2 + 4);
  return v12;
}

uint64_t sub_229860E74(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881CC0, &qword_22A5864E8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_229860F94(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v5 = v3();

  return v5;
}

id sub_2298610C8(uint64_t a1)
{
  v1 = *(a1 + 32);

  v3 = v1(v2);

  return v3;
}

id HMDHomeManagerDataSource.init()()
{
  v0 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v0 init];
}

unint64_t type metadata accessor for HMDHomeManagerDataSource()
{
  result = qword_27D881D50;
  if (!qword_27D881D50)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D881D50);
  }

  return result;
}

id sub_22986165C()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

id sub_229861694()
{
  v1 = (*(*(v0 + 16) + 16))();

  return v1;
}

uint64_t HMDResidentDevice.isDemoDevice.getter()
{
  v1 = [v0 home];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = [v1 appleMediaAccessories];

  sub_229562F68(0, &qword_281401920, off_278666038);
  v4 = sub_22A4DD83C();

  if (v4 >> 62)
  {
    goto LABEL_25;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v6 = 0;
    v17 = v4 & 0xC000000000000001;
    while (1)
    {
      if (v17)
      {
        v8 = MEMORY[0x22AAD13F0](v6, v4);
      }

      else
      {
        if (v6 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v8 = *(v4 + 8 * v6 + 32);
      }

      v9 = v8;
      v10 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = [v8 device];
      v12 = [v18 device];
      v13 = v12;
      if (v11)
      {
        if (!v12)
        {
          v13 = v11;
LABEL_18:

LABEL_19:
          goto LABEL_6;
        }

        sub_229562F68(0, &qword_27D87CEF0, off_278666100);
        v14 = sub_22A4DDEDC();

        if ((v14 & 1) == 0)
        {
          goto LABEL_19;
        }
      }

      else if (v12)
      {
        goto LABEL_18;
      }

      v7 = [v9 isDemoAccessory];

      if (v7)
      {
        v15 = 1;
        goto LABEL_27;
      }

LABEL_6:
      ++v6;
      if (v10 == i)
      {
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    ;
  }

LABEL_26:
  v15 = 0;
LABEL_27:

  return v15;
}

void sub_229861930(uint64_t a1, char a2)
{
  if ([v2 isCurrentDevicePrimaryResident])
  {
    v5 = [v2 actionSetStateObserver];
    if (v5)
    {
      v6 = v5;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D180, &qword_22A5780B0);
      v7 = sub_22A4DB7DC();
      v8 = *(v7 - 8);
      v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      v10 = swift_allocObject();
      *(v10 + 16) = xmmword_22A576180;
      (*(v8 + 16))(v10 + v9, a1, v7);
      v11 = sub_22A4DD81C();

      [v6 stateRegistrationsDidChangeForActionSetUUIDs_];

      swift_unknownObjectRelease();
    }
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D180, &qword_22A5780B0);
    v12 = sub_22A4DB7DC();
    v13 = *(v12 - 8);
    v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
    v15 = swift_allocObject();
    *(v15 + 16) = xmmword_22A576180;
    (*(v13 + 16))(v15 + v14, a1, v12);
    v16 = sub_22A4DD81C();

    [v2 remotelySetNotificationsEnabled:a2 & 1 forActionSetUUIDs:v16];
  }
}

uint64_t sub_229861BCC(uint64_t a1)
{
  result = sub_22A4DDF9C();
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

char *sub_229861C78()
{

  v1 = *(*v0 + 104);
  v2 = sub_22A4DDF9C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_229861D14()
{
  sub_229861C78();

  return MEMORY[0x282200960](v0);
}

uint64_t static PassFileUtilities.createPassDirectory()@<X0>(char *a1@<X8>)
{
  v41 = a1;
  v43[2] = *MEMORY[0x277D85DE8];
  v1 = sub_22A4DB49C();
  v38 = *(v1 - 8);
  v39 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v38 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_22A4DB57C();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v42 = &v38 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = MEMORY[0x28223BE20](v11);
  v16 = &v38 - v15;
  MEMORY[0x28223BE20](v14);
  v18 = &v38 - v17;
  sub_229862298();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v20 = [objc_opt_self() bundleForClass_];
  v21 = [v20 resourceURL];

  if (v21)
  {
    sub_22A4DB51C();

    (*(v5 + 56))(v16, 0, 1, v4);
  }

  else
  {
    (*(v5 + 56))(v16, 1, 1, v4);
  }

  sub_2297193E8(v16, v18);
  sub_229719378(v18, v13);
  if ((*(v5 + 48))(v13, 1, v4) != 1)
  {
    v43[0] = sub_22A4DD5EC();
    v43[1] = v23;
    v25 = v38;
    v24 = v39;
    (*(v38 + 104))(v3, *MEMORY[0x277CC91D8], v39);
    sub_22962F254();
    sub_22A4DB56C();
    (*(v25 + 8))(v3, v24);

    v26 = *(v5 + 8);
    v26(v13, v4);
    v27 = v42;
    (*(v5 + 32))(v42, v8, v4);
    v28 = v40;
    v29 = v41;
    sub_229862600(v41);
    if (v28)
    {
      v30 = v27;
    }

    else
    {
      v40 = v26;
      v31 = [objc_opt_self() defaultManager];
      v32 = sub_22A4DB4EC();
      v33 = sub_22A4DB4EC();
      v43[0] = 0;
      v34 = [v31 copyItemAtURL:v32 toURL:v33 error:v43];

      if (v34)
      {
        v35 = v43[0];
        v40(v42, v4);
        return sub_2298622E4(v18);
      }

      v36 = v43[0];
      sub_22A4DB3EC();

      swift_willThrow();
      sub_229862908(v29, 1);
      swift_willThrow();
      v26 = v40;
      v40(v29, v4);
      v30 = v42;
    }

    v26(v30, v4);
    return sub_2298622E4(v18);
  }

  sub_2298622E4(v13);
  sub_22962F2A8();
  swift_allocError();
  *v22 = 0xD000000000000029;
  *(v22 + 8) = 0x800000022A599870;
  *(v22 + 16) = 0;
  swift_willThrow();
  return sub_2298622E4(v18);
}

unint64_t sub_229862298()
{
  result = qword_27D881D60;
  if (!qword_27D881D60)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27D881D60);
  }

  return result;
}

uint64_t sub_2298622E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static PassFileUtilities.writePassJSON(passJSON:to:)(const void *a1, uint64_t a2)
{
  sub_22A4DB11C();
  swift_allocObject();
  sub_22A4DB10C();
  memcpy(__dst, a1, sizeof(__dst));
  sub_22985B640();
  v4 = sub_22A4DB0FC();
  v6 = v5;

  if (!v2)
  {
    sub_22A4DB64C();
    return sub_2295798D4(v4, v6);
  }

  return result;
}

id static PassFileUtilities.zipPassDirectory(passDirectoryURL:)@<X0>(uint64_t a1@<X8>)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v2 = sub_22A4DB57C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22A4DD5EC();
  sub_22A4DB50C();

  v6 = [objc_allocWithZone(HMDFileManager) init];
  v7 = sub_22A4DB4EC();
  v8 = sub_22A4DB4EC();
  v13[0] = 0;
  v9 = [v6 zipItemAtURL:v7 toURL:v8 error:v13];

  v10 = v13[0];
  if (v9)
  {
    (*(v3 + 32))(a1, v5, v2);
    return v10;
  }

  else
  {
    v12 = v13[0];
    sub_22A4DB3EC();

    swift_willThrow();
    return (*(v3 + 8))(v5, v2);
  }
}

uint64_t sub_229862600@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_22A4DB49C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22A4DB7DC();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22A4DB57C();
  v23 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = HMDCreateHomeKitDaemonCacheDirectory();
  if (v13)
  {
    v22 = v10;
    v14 = v13;
    sub_22A4DD5EC();
    v21[0] = v2;
    v21[1] = a1;

    sub_22A4DB4CC();

    sub_22A4DB7CC();
    v15 = sub_22A4DB76C();
    v17 = v16;
    (*(v7 + 8))(v9, v6);
    v24 = v15;
    v25 = v17;
    v18 = v21[0];
    (*(v3 + 104))(v5, *MEMORY[0x277CC91D8], v21[0]);
    sub_22962F254();
    sub_22A4DB56C();
    (*(v3 + 8))(v5, v18);

    return (*(v23 + 8))(v12, v22);
  }

  else
  {
    sub_22962F2A8();
    swift_allocError();
    *v20 = 0xD00000000000002CLL;
    *(v20 + 8) = 0x800000022A5998C0;
    *(v20 + 16) = 0;
    return swift_willThrow();
  }
}

void sub_229862908(uint64_t a1, char a2)
{
  v11[3] = *MEMORY[0x277D85DE8];
  v3 = [objc_opt_self() defaultManager];
  v4 = sub_22A4DB4EC();
  v11[0] = 0;
  v5 = [v3 removeItemAtURL:v4 error:v11];

  v6 = v11[0];
  if (v5)
  {

    v7 = v6;
  }

  else
  {
    v8 = v11[0];
    v9 = sub_22A4DB3EC();

    swift_willThrow();
    if (a2)
    {
      v11[0] = 0;
      v11[1] = 0xE000000000000000;
      sub_22A4DE1FC();
      MEMORY[0x22AAD08C0](0xD00000000000001ALL, 0x800000022A5998A0);
      sub_22A4DB57C();
      sub_22962E16C();
      v10 = sub_22A4DE5CC();
      MEMORY[0x22AAD08C0](v10);

      MEMORY[0x22AAD08C0](0x7265206874697720, 0xED0000203A726F72);
      swift_getErrorValue();
      sub_22A4DE5EC();
      sub_22A4DBD0C();
    }

    else
    {
    }
  }
}

uint64_t *PassLibrary.shared.unsafeMutableAddressor()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }

  return &static PassLibrary.shared;
}

void sub_229862B74(uint64_t a1, char a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v4 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F308, &qword_22A586680);
    sub_22A4DD8EC();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F308, &qword_22A586680);
    sub_22A4DD8FC();
  }
}

uint64_t sub_229862C18(uint64_t a1, char a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8811F8, &qword_22A5837A0);
  return sub_22A4DD8FC();
}

uint64_t sub_229862C74()
{
  type metadata accessor for PassLibrary();
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  sub_22A4DBA2C();
  result = sub_22A4DBA1C();
  *(v0 + 112) = result;
  static PassLibrary.shared = v0;
  return result;
}

uint64_t static PassLibrary.shared.getter()
{
  if (qword_281402F18 != -1)
  {
    swift_once();
  }
}

uint64_t sub_229862D20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 2024) = v19;
  *(v8 + 1720) = v18;
  *(v8 + 1704) = v17;
  *(v8 + 1696) = a8;
  *(v8 + 1688) = a7;
  *(v8 + 1680) = a6;
  *(v8 + 1672) = a5;
  *(v8 + 1664) = a4;
  *(v8 + 1656) = a3;
  *(v8 + 1648) = a2;
  *(v8 + 1640) = a1;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8811F8, &qword_22A5837A0);
  *(v8 + 1728) = v10;
  *(v8 + 1736) = *(v10 - 8);
  *(v8 + 1744) = swift_task_alloc();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DB0, &qword_22A5866B0);
  *(v8 + 1752) = v11;
  *(v8 + 1760) = *(v11 - 8);
  *(v8 + 1768) = swift_task_alloc();
  v12 = sub_22A4DB57C();
  *(v8 + 1776) = v12;
  *(v8 + 1784) = *(v12 - 8);
  *(v8 + 1792) = swift_task_alloc();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DB8, &qword_22A5866B8);
  *(v8 + 1800) = v13;
  *(v8 + 1808) = *(v13 - 8);
  *(v8 + 1816) = swift_task_alloc();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DC0, &qword_22A5866C0);
  *(v8 + 1824) = v14;
  *(v8 + 1832) = *(v14 - 8);
  *(v8 + 1840) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229862FEC, a6, 0);
}

uint64_t sub_229862FEC()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[194] = v1;
  v8 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();
  v0[231] = 0;
  v2 = v0[230];
  v3 = v0[229];
  v4 = v0[228];

  v0[232] = v0[201];
  v9 = objc_opt_self();
  v5 = sub_22A4DD5AC();
  v0[233] = v5;
  v0[26] = v0;
  v0[31] = v0 + 193;
  v0[27] = sub_22986336C;
  swift_continuation_init();
  v0[167] = v4;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 164);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DC8, &unk_22A5866C8);
  v0[234] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v3 + 32))(boxed_opaque_existential_1, v2, v4);
  v0[160] = MEMORY[0x277D85DD0];
  v0[161] = 1107296256;
  v0[162] = sub_229866440;
  v0[163] = &block_descriptor_30_0;
  [v9 acquireAssertionOfType:1 withReason:v5 completion:v8];
  (*(v3 + 8))(boxed_opaque_existential_1, v4);

  return MEMORY[0x282200938](v0 + 26);
}

uint64_t sub_22986336C()
{
  v1 = *v0;
  v2 = *(*v0 + 240);
  *(*v0 + 1880) = v2;
  v3 = *(v1 + 1680);
  if (v2)
  {
    v4 = sub_229865F84;
  }

  else
  {
    v4 = sub_2298634B8;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_2298634B8()
{
  v1 = *(v0 + 1864);
  v2 = *(v0 + 1544);
  *(v0 + 1888) = v2;

  if (!v2)
  {
    v13 = *(v0 + 1856);
    sub_22962F2A8();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 3;
    swift_willThrow();
    goto LABEL_6;
  }

  v3 = *(v0 + 1856);
  v4 = v2;
  v5 = sub_22A4DD5AC();
  v6 = sub_22A4DD5AC();
  v7 = [v3 passWithPassTypeIdentifier:v5 serialNumber:v6];
  *(v0 + 1896) = v7;

  sub_22A4DE1FC();

  *(v0 + 1528) = v7;
  v8 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87E2C0, &qword_22A585A30);
  v9 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v9);

  sub_22A4DBD0C();

  if (!v8)
  {
    LOBYTE(v17) = 2;
    v18 = 2;
    goto LABEL_34;
  }

  v10 = *(v0 + 1848);
  v11 = v8;
  v12 = sub_2298690C4(v11);
  if (!v10)
  {
    v19 = v12;

    v20 = [v11 secureElementPass];
    if (v20)
    {
      v21 = v20;
      v22 = [v20 paymentApplications];

      if (!v22)
      {
        __break(1u);
        return MEMORY[0x282200938](v23);
      }

      sub_229562F68(0, &qword_281401930, 0x277D37FE0);
      sub_22959E62C(&qword_27D87E2B8, &qword_281401930, 0x277D37FE0);
      v24 = sub_22A4DDB6C();

      if ((v24 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_22A4DE09C();
        sub_22A4DDBAC();
        v24 = *(v0 + 1448);
        v25 = *(v0 + 1456);
        v26 = *(v0 + 1464);
        v27 = *(v0 + 1472);
        v28 = *(v0 + 1480);
      }

      else
      {
        v29 = -1 << *(v24 + 32);
        v25 = v24 + 56;
        v26 = ~v29;
        v30 = -v29;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        else
        {
          v31 = -1;
        }

        v28 = v31 & *(v24 + 56);

        v27 = 0;
      }

      v53 = (v0 + 1624);
      v32 = (v26 + 64) >> 6;
      do
      {
        if (v24 < 0)
        {
          v36 = sub_22A4DE12C();
          if (!v36)
          {
            goto LABEL_31;
          }

          *(v0 + 1632) = v36;
          swift_dynamicCast();
          v17 = *v53;
          if (!*v53)
          {
            goto LABEL_32;
          }
        }

        else
        {
          v34 = v27;
          v35 = v28;
          if (!v28)
          {
            while (1)
            {
              v27 = v34 + 1;
              if (__OFADD__(v34, 1))
              {
                __break(1u);
              }

              if (v27 >= v32)
              {
                break;
              }

              v35 = *(v25 + 8 * v27);
              ++v34;
              if (v35)
              {
                goto LABEL_20;
              }
            }

LABEL_31:
            LOBYTE(v17) = 0;
            goto LABEL_32;
          }

LABEL_20:
          v28 = (v35 - 1) & v35;
          v17 = *(*(v24 + 48) + ((v27 << 9) | (8 * __clz(__rbit64(v35)))));
          if (!v17)
          {
            goto LABEL_32;
          }
        }

        v33 = [v17 supportsUWB];
      }

      while (!v33);
      LOBYTE(v17) = 1;
LABEL_32:
      sub_22953EE84(v24);
    }

    else
    {
      LOBYTE(v17) = 2;
    }

    v18 = v19 & 0x101;
LABEL_34:
    *(v0 + 2026) = v18;
    *(v0 + 2033) = v17;
    v54 = *(v0 + 1856);
    v37 = *(v0 + 1808);
    v51 = *(v0 + 1800);
    v38 = *(v0 + 1704);
    v39 = *(v0 + 1696);
    v40 = *(v0 + 1672);
    v41 = *(v0 + 1664);
    v52 = *(v0 + 1816);
    sub_22A4DE1FC();

    *(v0 + 2030) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DD0, &qword_22A5866D8);
    v42 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v42);

    sub_22A4DBD0C();

    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD00000000000003ALL, 0x800000022A599D70);
    MEMORY[0x22AAD08C0](v41, v40);
    MEMORY[0x22AAD08C0](0xD00000000000001BLL, 0x800000022A599DB0);
    sub_22A4DB7DC();
    sub_229869950(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v43 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v43);

    MEMORY[0x22AAD08C0](0xD000000000000010, 0x800000022A599DD0);
    *(v0 + 1520) = v39;
    v50 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DD8, &qword_22A5866E0);
    v44 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v44);

    MEMORY[0x22AAD08C0](0xD000000000000013, 0x800000022A599DF0);
    *(v0 + 1512) = v38;
    v45 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DE0, &qword_22A5866E8);
    v46 = sub_22A4DD64C();
    MEMORY[0x22AAD08C0](v46);

    sub_22A4DBD0C();

    v47 = sub_22A4DD5AC();
    *(v0 + 1904) = v47;
    v48 = sub_22A4DB77C();
    *(v0 + 1912) = v48;
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 1488;
    *(v0 + 24) = sub_229863DBC;
    swift_continuation_init();
    *(v0 + 1400) = v51;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 1376));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DE8, &unk_22A5866F0);
    sub_22A4DD8DC();
    (*(v37 + 32))(boxed_opaque_existential_1, v52, v51);
    *(v0 + 1344) = MEMORY[0x277D85DD0];
    *(v0 + 1352) = 1107296256;
    *(v0 + 1360) = sub_2298664E8;
    *(v0 + 1368) = &block_descriptor_33_1;
    [v54 configureHomeAuxiliaryCapabilitiesForSerialNumber:v47 homeIdentifier:v48 fromUnifiedAccessDescriptor:v50 andAliroDescriptor:v45 completion:?];
    (*(v37 + 8))(boxed_opaque_existential_1, v51);
    v23 = v0 + 16;

    return MEMORY[0x282200938](v23);
  }

  v13 = *(v0 + 1856);

  [v4 invalidate];
LABEL_6:

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_229863DBC()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 1920) = v2;
  v3 = *(v1 + 1680);
  if (v2)
  {
    v4 = sub_22986606C;
  }

  else
  {
    v4 = sub_229863F08;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229863F08()
{
  v1 = v0[239];
  v2 = v0[238];
  v3 = v0[214];
  v4 = v0[186];
  v0[241] = v4;
  v5 = v0[187];
  v0[242] = v5;

  sub_22A4DE1FC();

  v6 = sub_229562F68(0, &qword_281401930, 0x277D37FE0);
  v0[243] = v6;
  v7 = MEMORY[0x22AAD0A20](v4, v6);
  MEMORY[0x22AAD08C0](v7);

  MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A599E50);
  v8 = MEMORY[0x22AAD0A20](v5, v6);
  MEMORY[0x22AAD08C0](v8);

  sub_22A4DBD0C();

  v12 = (v3 + *v3);
  v9 = swift_task_alloc();
  v0[244] = v9;
  *v9 = v0;
  v9[1] = sub_229864144;
  v10 = v0[224];

  return (v12)(v0 + 89, v10, v4);
}

uint64_t sub_229864144()
{
  v2 = *v1;
  v3 = *v1;
  v3[245] = v0;
  v35 = v2[89];
  v34 = v2[90];
  v33 = v2[91];
  v32 = v2[92];
  v31 = v2[93];
  v30 = v2[94];
  v29 = v2[95];
  v28 = v2[96];
  v27 = v2[97];
  v26 = v2[98];
  v25 = v2[99];
  v24 = v2[100];
  v23 = v2[101];
  v22 = v2[102];
  v21 = v2[103];
  v20 = v2[104];
  v19 = v2[105];
  v18 = v2[106];
  v17 = v2[107];
  v64 = *(v3 + 54);
  v16 = v2[110];
  v4 = v2[111];
  v5 = v2[112];
  v6 = v2[113];
  v7 = v2[114];
  v8 = v2[115];
  v9 = v2[116];
  v10 = v2[117];
  v63 = *(v3 + 944);
  v62 = v2[119];
  v61 = v2[120];
  v60 = v2[121];
  v59 = v2[122];
  v58 = v2[123];
  v57 = v2[124];
  v55 = *(v3 + 1001);
  v56 = *(v3 + 1000);
  v54 = v2[126];
  v53 = v2[127];
  v52 = v2[128];
  v51 = v2[129];
  v50 = v2[130];
  v49 = v2[131];
  v48 = v2[132];
  v47 = v2[133];
  v46 = *(v3 + 1072);
  v45 = v2[135];
  v44 = v2[136];
  v42 = *(v3 + 1097);
  v43 = *(v3 + 1096);
  v41 = *(v3 + 1098);
  v40 = v2[138];
  v39 = v2[139];
  v38 = v2[140];
  v37 = v2[141];
  v36 = v2[142];
  v11 = v2[143];

  if (v0)
  {
    v12 = v3[210];

    v13 = sub_229866188;
    v14 = v12;
  }

  else
  {
    v3[34] = v35;
    v3[35] = v34;
    v3[36] = v33;
    v3[37] = v32;
    v3[38] = v31;
    v3[39] = v30;
    v3[40] = v29;
    v3[41] = v28;
    v3[42] = v27;
    v3[43] = v26;
    v3[44] = v25;
    v3[45] = v24;
    v3[46] = v23;
    v3[47] = v22;
    v3[48] = v21;
    v3[49] = v20;
    v3[50] = v19;
    v3[51] = v18;
    v3[52] = v17;
    v3[55] = v16;
    v3[56] = v4;
    v3[57] = v5;
    v3[58] = v6;
    v3[59] = v7;
    v3[60] = v8;
    v3[61] = v9;
    v3[62] = v10;
    *(v3 + 53) = v64;
    v14 = v3[210];
    *(v3 + 504) = v63;
    v3[64] = v62;
    v3[65] = v61;
    v3[66] = v60;
    v3[67] = v59;
    v3[68] = v58;
    v3[69] = v57;
    *(v3 + 560) = v56;
    *(v3 + 561) = v55;
    v3[71] = v54;
    v3[72] = v53;
    v3[73] = v52;
    v3[74] = v51;
    v3[75] = v50;
    v3[76] = v49;
    v3[77] = v48;
    v3[78] = v47;
    *(v3 + 632) = v46;
    v3[80] = v45;
    v3[81] = v44;
    *(v3 + 656) = v43;
    *(v3 + 657) = v42;
    *(v3 + 658) = v41;
    v3[83] = v40;
    v3[84] = v39;
    v3[85] = v38;
    v3[86] = v37;
    v3[87] = v36;
    v3[88] = v11;
    v13 = sub_2298648B4;
  }

  return MEMORY[0x2822009F8](v13, v14, 0);
}

uint64_t sub_2298648B4()
{
  v1 = v0;
  v22 = v0[232];
  v2 = v0[224];
  if (v0[237])
  {
    v3 = v0 + 10;
    v4 = v0[218];
    v5 = v0[217];
    v6 = v0[216];
    sub_22A4DE1FC();

    sub_229869950(&qword_27D87E238, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v7 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v7);

    sub_22A4DBD0C();

    v8 = sub_22A4DB4EC();
    v0[247] = v8;
    v0[10] = v0;
    v0[15] = v0 + 254;
    v0[11] = sub_2298653DC;
    swift_continuation_init();
    v0[151] = v6;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 148);
    sub_22A4DD8DC();
    (*(v5 + 32))(boxed_opaque_existential_1, v4, v6);
    v0[144] = MEMORY[0x277D85DD0];
    v0[145] = 1107296256;
    v0[146] = sub_229862C18;
    v0[147] = &block_descriptor_42;
    [v22 replaceUnsignedPassAtURL:v8 withCompletionHandler:?];
    (*(v5 + 8))(boxed_opaque_existential_1, v6);
  }

  else
  {
    v3 = v0 + 18;
    v21 = v0 + 192;
    v10 = v0[223];
    v11 = v1[222];
    v12 = v1[221];
    v13 = v1[220];
    v14 = v1[219];
    sub_22A4DE1FC();

    sub_229869950(&qword_27D87E238, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v15 = sub_22A4DE5CC();
    MEMORY[0x22AAD08C0](v15);

    sub_22A4DBD0C();

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D130, &qword_22A578028);
    v16 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_22A576180;
    (*(v10 + 16))(v17 + v16, v2, v11);
    v18 = sub_22A4DD81C();
    v1[246] = v18;

    v1[18] = v1;
    v1[23] = v21;
    v1[19] = sub_229864DCC;
    swift_continuation_init();
    v1[159] = v14;
    v19 = __swift_allocate_boxed_opaque_existential_1(v1 + 156);
    type metadata accessor for PKPassLibraryAddPassesStatus(0);
    sub_22A4DD8DC();
    (*(v13 + 32))(v19, v12, v14);
    v1[152] = MEMORY[0x277D85DD0];
    v1[153] = 1107296256;
    v1[154] = sub_2298665E8;
    v1[155] = &block_descriptor_37_3;
    [v22 addUnsignedPassesAtURLs:v18 withCompletionHandler:?];
    (*(v13 + 8))(v19, v14);
  }

  return MEMORY[0x282200938](v3);
}

uint64_t sub_229864DCC()
{
  v1 = *(*v0 + 1680);

  return MEMORY[0x2822009F8](sub_229864EEC, v1, 0);
}

uint64_t sub_229864EEC()
{
  v1 = *(v0 + 1536);

  if (v1)
  {

    sub_2296EBFB4(v0 + 272);
    sub_22962F2A8();
    swift_allocError();
    *v2 = v1;
    *(v2 + 8) = 0;
    *(v2 + 16) = 2;
    swift_willThrow();
    v3 = [objc_opt_self() defaultManager];
    v4 = sub_22A4DB4EC();
    *(v0 + 1560) = 0;
    v5 = [v3 removeItemAtURL:v4 error:v0 + 1560];

    v6 = *(v0 + 1560);
    if (v5)
    {
      v7 = v6;
    }

    else
    {
      v23 = v6;
      v24 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v25 = *(v0 + 1888);
    v26 = *(v0 + 1856);
    (*(*(v0 + 1784) + 8))(*(v0 + 1792), *(v0 + 1776));
LABEL_15:
    [v25 invalidate];

    v38 = *(v0 + 8);

    return v38();
  }

  *(v0 + 1984) = 0;
  v8 = *(v0 + 1856);
  v9 = sub_22A4DD5AC();
  v10 = sub_22A4DD5AC();
  v11 = [v8 passWithPassTypeIdentifier:v9 serialNumber:v10];
  *(v0 + 1992) = v11;

  if (!v11 || (objc_opt_self(), v12 = swift_dynamicCastObjCClass(), (*(v0 + 2000) = v12) == 0))
  {

    sub_2296EBFB4(v0 + 272);
    sub_22962F2A8();
    swift_allocError();
    *v27 = 0xD000000000000026;
    *(v27 + 8) = 0x800000022A599E90;
    *(v27 + 16) = 0;
    swift_willThrow();

    v28 = [objc_opt_self() defaultManager];
    v29 = sub_22A4DB4EC();
    *(v0 + 1568) = 0;
    v30 = [v28 removeItemAtURL:v29 error:v0 + 1568];

    v31 = *(v0 + 1568);
    if (v30)
    {
      v32 = v31;
    }

    else
    {
      v33 = v31;
      v34 = sub_22A4DB3EC();

      swift_willThrow();
    }

    v25 = *(v0 + 1888);
    v26 = *(v0 + 1856);
    v35 = *(v0 + 1792);
    v36 = *(v0 + 1784);
    v37 = *(v0 + 1776);

    (*(v36 + 8))(v35, v37);
    goto LABEL_15;
  }

  v13 = v12;
  v14 = v11;
  sub_22A4DE1FC();

  v15 = [v13 description];
  v16 = sub_22A4DD5EC();
  v18 = v17;

  MEMORY[0x22AAD08C0](v16, v18);

  sub_22A4DBD0C();

  v19 = swift_task_alloc();
  *(v0 + 2008) = v19;
  *v19 = v0;
  v19[1] = sub_2298659A0;
  v20 = *(v0 + 2026);
  v21 = *(v0 + 2024);

  return sub_229867F40(v13, v21, v20, 0, 0xF000000000000000);
}

uint64_t sub_2298653DC()
{
  v1 = *(*v0 + 1680);

  return MEMORY[0x2822009F8](sub_2298654FC, v1, 0);
}

uint64_t sub_2298654FC()
{
  v1 = *(v0 + 2032);

  if (v1)
  {
    *(v0 + 1984) = 1;
    v2 = *(v0 + 1856);
    v3 = sub_22A4DD5AC();
    v4 = sub_22A4DD5AC();
    v5 = [v2 passWithPassTypeIdentifier:v3 serialNumber:v4];
    *(v0 + 1992) = v5;

    if (v5)
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      *(v0 + 2000) = v6;
      if (v6)
      {
        v7 = v6;
        v8 = v5;
        sub_22A4DE1FC();

        v9 = [v7 description];
        v10 = sub_22A4DD5EC();
        v12 = v11;

        MEMORY[0x22AAD08C0](v10, v12);

        sub_22A4DBD0C();

        v13 = swift_task_alloc();
        *(v0 + 2008) = v13;
        *v13 = v0;
        v13[1] = sub_2298659A0;
        v14 = *(v0 + 2026);
        v15 = *(v0 + 2024);

        return sub_229867F40(v7, v15, v14, 0, 0xF000000000000000);
      }
    }

    sub_2296EBFB4(v0 + 272);
    sub_22962F2A8();
    swift_allocError();
    *v23 = 0xD000000000000026;
    *(v23 + 8) = 0x800000022A599E90;
    *(v23 + 16) = 0;
    swift_willThrow();

    v24 = [objc_opt_self() defaultManager];
    v25 = sub_22A4DB4EC();
    *(v0 + 1568) = 0;
    v26 = [v24 removeItemAtURL:v25 error:v0 + 1568];

    v21 = *(v0 + 1568);
    if (!v26)
    {
      goto LABEL_10;
    }
  }

  else
  {

    sub_2296EBFB4(v0 + 272);
    sub_22962F2A8();
    swift_allocError();
    *v17 = xmmword_22A5865C0;
    *(v17 + 16) = 3;
    swift_willThrow();
    v18 = [objc_opt_self() defaultManager];
    v19 = sub_22A4DB4EC();
    *(v0 + 1616) = 0;
    v20 = [v18 removeItemAtURL:v19 error:v0 + 1616];

    v21 = *(v0 + 1616);
    if (!v20)
    {
LABEL_10:
      v27 = v21;
      v28 = sub_22A4DB3EC();

      swift_willThrow();
      goto LABEL_11;
    }
  }

  v22 = v21;
LABEL_11:
  v29 = *(v0 + 1888);
  v30 = *(v0 + 1856);
  v31 = *(v0 + 1792);
  v32 = *(v0 + 1784);
  v33 = *(v0 + 1776);

  (*(v32 + 8))(v31, v33);
  [v29 invalidate];

  v34 = *(v0 + 8);

  return v34();
}

uint64_t sub_2298659A0(__int16 a1)
{
  v3 = *v2;
  *(v3 + 2028) = a1;
  *(v3 + 2016) = v1;

  if (v1)
  {
    v4 = *(v3 + 1680);

    sub_2296EBFB4(v3 + 272);
    v5 = sub_229866284;
    v6 = v4;
  }

  else
  {
    v6 = *(v3 + 1680);
    v5 = sub_229865B2C;
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

void sub_229865B2C()
{
  v1 = [*(v0 + 2000) secureElementPass];
  if (!v1)
  {
    v9 = *(v0 + 1992);

LABEL_26:
    v22 = 2;
    goto LABEL_27;
  }

  v2 = v1;
  v3 = [v1 paymentApplications];

  if (!v3)
  {
    __break(1u);
    return;
  }

  sub_22959E62C(&qword_27D87E2B8, &qword_281401930, 0x277D37FE0);
  v4 = sub_22A4DDB6C();

  if ((v4 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_22A4DE09C();
    sub_22A4DDBAC();
    v4 = *(v0 + 1408);
    v5 = *(v0 + 1416);
    v6 = *(v0 + 1424);
    v7 = *(v0 + 1432);
    v8 = *(v0 + 1440);
  }

  else
  {
    v10 = -1 << *(v4 + 32);
    v5 = v4 + 56;
    v6 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v8 = v12 & *(v4 + 56);

    v7 = 0;
  }

  v13 = (v6 + 64) >> 6;
  do
  {
    if (v4 < 0)
    {
      v18 = sub_22A4DE12C();
      if (!v18)
      {
        goto LABEL_22;
      }

      *(v0 + 1600) = v18;
      swift_dynamicCast();
      v14 = *(v0 + 1592);
      if (!v14)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v16 = v7;
      v17 = v8;
      if (!v8)
      {
        while (1)
        {
          v7 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
          }

          if (v7 >= v13)
          {
            break;
          }

          v17 = *(v5 + 8 * v7);
          ++v16;
          if (v17)
          {
            goto LABEL_11;
          }
        }

LABEL_22:
        LODWORD(v14) = 0;
        goto LABEL_23;
      }

LABEL_11:
      v8 = (v17 - 1) & v17;
      v14 = *(*(v4 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(v17)))));
      if (!v14)
      {
        goto LABEL_23;
      }
    }

    v15 = [v14 supportsUWB];
  }

  while (!v15);
  LODWORD(v14) = 1;
LABEL_23:
  v19 = *(v0 + 1992);
  v20 = *(v0 + 2033);

  sub_22953EE84(v4);

  if (v20 == 2)
  {
    goto LABEL_26;
  }

  v21 = *(v0 + 2033);
  if (v14 == (v21 & 1))
  {
    goto LABEL_26;
  }

  v22 = v14 & (v21 ^ 1);
LABEL_27:
  v23 = *(v0 + 2028);
  v24 = *(v0 + 1640);
  v25 = *(v0 + 1928);
  *v24 = *(v0 + 1984);
  *(v24 + 8) = v25;
  memcpy((v24 + 24), (v0 + 272), 0x1B8uLL);
  *(v24 + 464) = v23 & 1;
  *(v24 + 465) = HIBYTE(v23) & 1;
  *(v24 + 466) = v22;
  v26 = [objc_opt_self() defaultManager];
  v27 = sub_22A4DB4EC();
  *(v0 + 1584) = 0;
  v28 = [v26 removeItemAtURL:v27 error:v0 + 1584];

  v29 = *(v0 + 1584);
  if (v28)
  {
    v30 = v29;
  }

  else
  {
    v31 = v29;
    v32 = sub_22A4DB3EC();

    swift_willThrow();
  }

  v33 = *(v0 + 1888);
  v34 = *(v0 + 1856);
  v35 = *(v0 + 1792);
  v36 = *(v0 + 1784);
  v37 = *(v0 + 1776);

  (*(v36 + 8))(v35, v37);
  [v33 invalidate];

  v38 = *(v0 + 8);

  v38();
}

uint64_t sub_229865F84(uint64_t a1)
{
  v2 = v1[233];
  v3 = v1[232];
  swift_willThrow();

  v4 = v1[1];

  return v4();
}

uint64_t sub_22986606C(uint64_t a1)
{
  v2 = v1[239];
  v3 = v1[238];
  v4 = v1[237];
  v5 = v1[236];
  v6 = v1[232];
  swift_willThrow();

  [v5 invalidate];

  v7 = v1[1];

  return v7();
}

uint64_t sub_229866188()
{
  v1 = *(v0 + 1888);
  v2 = *(v0 + 1856);

  [v1 invalidate];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_229866284()
{
  v1 = *(v0 + 1992);

  v2 = [objc_opt_self() defaultManager];
  v3 = sub_22A4DB4EC();
  *(v0 + 1576) = 0;
  v4 = [v2 removeItemAtURL:v3 error:v0 + 1576];

  v5 = *(v0 + 1576);
  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v7 = v5;
    v8 = sub_22A4DB3EC();

    swift_willThrow();
  }

  v9 = *(v0 + 1888);
  v10 = *(v0 + 1856);
  v11 = *(v0 + 1792);
  v12 = *(v0 + 1784);
  v13 = *(v0 + 1776);

  (*(v12 + 8))(v11, v13);
  [v9 invalidate];

  v14 = *(v0 + 8);

  return v14();
}

void sub_229866440(uint64_t a1, void *a2, void *a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    v5 = a3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DC0, &qword_22A5866C0);
    sub_22A4DD8EC();
  }

  else
  {
    v6 = a2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DC0, &qword_22A5866C0);
    sub_22A4DD8FC();
  }
}

void sub_2298664E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a5)
  {
    v6 = a5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DB8, &qword_22A5866B8);
    sub_22A4DD8EC();
  }

  else
  {
    sub_229562F68(0, &qword_281401930, 0x277D37FE0);
    sub_22A4DD83C();
    sub_22A4DD83C();
    sub_22A4DD83C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DB8, &qword_22A5866B8);
    sub_22A4DD8FC();
  }
}

uint64_t sub_2298665E8(uint64_t a1, uint64_t a2)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DB0, &qword_22A5866B0);
  return sub_22A4DD8FC();
}

uint64_t sub_229866644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[7] = a4;
  v5[8] = a5;
  v5[5] = a2;
  v5[6] = a3;
  v5[4] = a1;
  return MEMORY[0x2822009F8](sub_22986666C, 0, 0);
}

uint64_t sub_22986666C()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[3] = v1;
  v9 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();
  v2 = v0[4];

  v3 = v0[2];
  v4 = sub_22A4DD5AC();
  v5 = sub_22A4DD5AC();
  v6 = [v3 passWithPassTypeIdentifier:v4 serialNumber:{v5, v9}];

  *v2 = v6;
  v7 = v0[1];

  return v7();
}

uint64_t sub_22986681C()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[3] = v1;
  v15 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();

  v2 = v0[2];
  v3 = [v2 passes];
  sub_229562F68(0, &unk_2814017B8, 0x277D37F98);
  v4 = sub_22A4DD83C();

  v18 = MEMORY[0x277D84F90];
  if (v4 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    v16 = v2;
    v17 = v0;
    v2 = 0;
    while (1)
    {
      if ((v4 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x22AAD13F0](v2, v4);
      }

      else
      {
        if (v2 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_16;
        }

        v6 = *(v4 + 8 * v2 + 32);
      }

      v7 = v6;
      v0 = (v2 + 1);
      if (__OFADD__(v2, 1))
      {
        break;
      }

      v8 = [v6 secureElementPass];
      if (v8 && (v9 = v8, v10 = [v8 isHomeKeyPass], v9, (v10 & 1) != 0))
      {
        sub_22A4DE27C();
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
      }

      else
      {
      }

      ++v2;
      if (v0 == i)
      {
        v0 = v17;
        v11 = v18;
        v2 = v16;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }

  v11 = MEMORY[0x277D84F90];
LABEL_19:
  v12 = v0[4];

  *v12 = v11;
  v13 = v0[1];

  return v13();
}

uint64_t sub_229866AD0(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 40) = a2;
  *(v4 + 48) = v3;
  *(v4 + 26) = a3;
  *(v4 + 32) = a1;
  return MEMORY[0x2822009F8](sub_229866AF8, v3, 0);
}

uint64_t sub_229866AF8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 26);
  v3 = *(v0 + 32);
  v4 = swift_task_alloc();
  *(v0 + 56) = v4;
  *(v4 + 16) = v3;
  *(v4 + 24) = v1;
  *(v4 + 32) = v2;
  v8 = (*MEMORY[0x277D0EF78] + MEMORY[0x277D0EF78]);
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881DA0, &qword_22A586678);
  *v5 = v0;
  v5[1] = sub_229866C08;

  return v8(v0 + 16, &unk_22A586670, v4, v6);
}

uint64_t sub_229866C08()
{
  v2 = *v1;

  v3 = *(v2 + 48);
  if (v0)
  {

    v4 = sub_229866D94;
  }

  else
  {

    v4 = sub_229866D64;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_229866D64()
{
  if (*(v0 + 25))
  {
    v1 = 1;
  }

  else
  {
    v1 = *(v0 + 16);
  }

  return (*(v0 + 8))(v1, (*(v0 + 25) | *(v0 + 24)) & 1);
}

uint64_t sub_229866DB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 194) = a4;
  *(v4 + 240) = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F308, &qword_22A586680);
  *(v4 + 248) = v5;
  *(v4 + 256) = *(v5 - 8);
  *(v4 + 264) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229866E80, 0, 0);
}

uint64_t sub_229866E80()
{
  v1 = [objc_opt_self() sharedInstance];
  *(v0 + 208) = v1;
  v18 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();
  v2 = *(v0 + 194);

  v3 = *(v0 + 200);
  *(v0 + 272) = v3;
  sub_22A4DBD0C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  if (v2)
  {
    if (v2 == 1)
    {
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_22A576190;
      v5 = (v4 + 32);
    }

    else
    {
      v8 = swift_allocObject();
      *(v8 + 16) = xmmword_22A582080;
      *(v8 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
      v5 = (v8 + 40);
    }

    v7 = 139;
  }

  else
  {
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_22A576190;
    v5 = (v6 + 32);
    v7 = 133;
  }

  *v5 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v9 = objc_allocWithZone(MEMORY[0x277D37CF8]);
  sub_229562F68(0, &qword_281401770, 0x277CCABB0);
  v10 = sub_22A4DD81C();

  v11 = [v9 initWithPaymentCredentialTypes_];

  *(v0 + 224) = v11;
  v19 = sub_229562F68(0, &qword_27D881DA8, 0x277D37CF8);
  sub_22A4DBD4C();
  v13 = *(v0 + 256);
  v12 = *(v0 + 264);
  v14 = *(v0 + 248);

  v15 = *(v0 + 216);
  *(v0 + 280) = v15;
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 193;
  *(v0 + 24) = sub_2298673C4;
  swift_continuation_init();
  *(v0 + 136) = v14;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 112));
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87E520, &unk_22A579920);
  sub_22A4DD8DC();
  (*(v13 + 32))(boxed_opaque_existential_1, v12, v14);
  *(v0 + 80) = MEMORY[0x277D85DD0];
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_229862B74;
  *(v0 + 104) = &block_descriptor_24_0;
  [v3 canAddSecureElementPassWithConfiguration:v15 completion:v19];
  (*(v13 + 8))(boxed_opaque_existential_1, v14);

  return MEMORY[0x282200938](v0 + 16);
}

uint64_t sub_2298673C4()
{
  v1 = *(*v0 + 48);
  *(*v0 + 288) = v1;
  if (v1)
  {
    v2 = sub_229867600;
  }

  else
  {
    v2 = sub_2298674D4;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2298674D4()
{
  v1 = (*(v0 + 193) & 1) == 0;
  v2 = *(v0 + 272);
  v3 = *(v0 + 240);
  sub_22A4DE1FC();
  *(v0 + 168) = 0;
  *(v0 + 176) = 0xE000000000000000;
  MEMORY[0x22AAD08C0](0xD000000000000037, 0x800000022A599B80);
  *(v0 + 184) = v1;
  *(v0 + 192) = 1;
  sub_22A4DE31C();
  sub_22A4DBD0C();

  *v3 = v1;
  *(v3 + 8) = 1;

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_229867600(uint64_t a1)
{
  v2 = *(v1 + 280);
  swift_willThrow();

  v3 = *(v1 + 288);
  swift_getErrorValue();
  v4 = sub_22A4DE6EC();

  v5 = *(v1 + 272);
  v6 = *(v1 + 240);
  sub_22A4DE1FC();
  *(v1 + 168) = 0;
  *(v1 + 176) = 0xE000000000000000;
  MEMORY[0x22AAD08C0](0xD000000000000037, 0x800000022A599B80);
  *(v1 + 184) = v4;
  *(v1 + 192) = 0;
  sub_22A4DE31C();
  sub_22A4DBD0C();

  *v6 = v4;
  *(v6 + 8) = 0;

  v7 = *(v1 + 8);

  return v7();
}

uint64_t sub_229867764()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[3] = v1;
  v10 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();
  v2 = v0[4];

  v3 = v0[2];
  sub_22A4DE1FC();

  v4 = [v2 description];
  v5 = sub_22A4DD5EC();
  v7 = v6;

  MEMORY[0x22AAD08C0](v5, v7);

  sub_22A4DBD0C();

  [v3 removePass_];

  v8 = v0[1];

  return v8();
}

uint64_t sub_229867944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v5[4] = a2;
  v5[5] = a3;
  return MEMORY[0x2822009F8](sub_229867968, 0, 0);
}

uint64_t sub_229867968()
{
  v1 = [objc_opt_self() sharedInstance];
  v0[3] = v1;
  v15 = sub_229562F68(0, &unk_281401BC8, 0x277D37FC0);
  sub_22A4DBD4C();

  v2 = v0[2];
  v3 = sub_22A4DD5AC();
  v4 = sub_22A4DD5AC();
  v5 = [v2 passWithPassTypeIdentifier:v3 serialNumber:{v4, v15}];

  v7 = v0[6];
  v6 = v0[7];
  if (v5)
  {
    v8 = v5;
    sub_22A4DE1FC();

    v9 = [v8 description];
    v10 = sub_22A4DD5EC();
    v12 = v11;

    MEMORY[0x22AAD08C0](v10, v12);

    MEMORY[0x22AAD08C0](0xD000000000000014, 0x800000022A599C70);
    MEMORY[0x22AAD08C0](v7, v6);
    sub_22A4DBD0C();

    [v2 removePass_];
  }

  else
  {
    sub_22A4DE1FC();
    MEMORY[0x22AAD08C0](0xD000000000000040, 0x800000022A599C20);
    MEMORY[0x22AAD08C0](v7, v6);
    sub_22A4DBD0C();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_229867C40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = a3;
  return MEMORY[0x2822009F8](sub_229867C5C, a2, 0);
}

uint64_t sub_229867C5C()
{
  v1 = sub_2298690C4(*(v0 + 24));
  v2 = *(v0 + 16);
  *v2 = v1 & 1;
  v2[1] = HIBYTE(v1) & 1;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_229867CF4(uint64_t a1, uint64_t a2, uint64_t a3, __int16 a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a1;
  v6[3] = a2;
  v11 = swift_task_alloc();
  v6[4] = v11;
  *v11 = v6;
  v11[1] = sub_229867DC4;

  return sub_229867F40(a3, a4 & 0x101, 2, a5, a6);
}

uint64_t sub_229867DC4(__int16 a1)
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
    v8 = *(v4 + 24);
    *(v4 + 40) = a1;

    return MEMORY[0x2822009F8](sub_229867F10, v8, 0);
  }
}

uint64_t sub_229867F10()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 16);
  *v2 = v1 & 1;
  v2[1] = HIBYTE(v1) & 1;
  return (*(v0 + 8))();
}

uint64_t sub_229867F40(uint64_t a1, __int16 a2, __int16 a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 408) = a5;
  *(v6 + 416) = v5;
  *(v6 + 482) = a3;
  *(v6 + 480) = a2;
  *(v6 + 392) = a1;
  *(v6 + 400) = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881D68, &qword_22A586648);
  *(v6 + 424) = v7;
  *(v6 + 432) = *(v7 - 8);
  *(v6 + 440) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229868018, v5, 0);
}

uint64_t sub_229868018()
{
  v1 = *(v0 + 480);
  if (v1 == 2)
  {
    v1 = *(v0 + 482);
    v2 = *(v0 + 392);
    if (v1 == 2)
    {
      v3 = sub_2298690C4(*(v0 + 392));
      v4 = *(v0 + 392);
      sub_22A4DE1FC();
      *(v0 + 272) = 0;
      *(v0 + 280) = 0xE000000000000000;
      MEMORY[0x22AAD08C0](0xD000000000000021, 0x800000022A599930);
      v5 = [v4 description];
      v6 = sub_22A4DD5EC();
      v8 = v7;

      MEMORY[0x22AAD08C0](v6, v8);

      MEMORY[0x22AAD08C0](0xD000000000000019, 0x800000022A599960);
      *(v0 + 486) = v3 & 1;
      *(v0 + 487) = HIBYTE(v3) & 1;
      sub_22A4DE31C();
      sub_22A4DBD0C();

      sub_229869270(v4, v3 & 0x101);
      goto LABEL_7;
    }

    sub_22A4DE1FC();
    *(v0 + 352) = 0;
    *(v0 + 360) = 0xE000000000000000;
    MEMORY[0x22AAD08C0](0xD000000000000021, 0x800000022A599930);
    v14 = [v2 description];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](0xD00000000000001ALL, 0x800000022A599A40);
    *(v0 + 488) = v1 & 1;
    *(v0 + 489) = HIBYTE(v1) & 1;
    sub_22A4DE31C();
  }

  else
  {
    v2 = *(v0 + 392);
    sub_22A4DE1FC();
    *(v0 + 368) = 0;
    *(v0 + 376) = 0xE000000000000000;
    MEMORY[0x22AAD08C0](0xD000000000000021, 0x800000022A599930);
    v10 = [v2 description];
    v11 = sub_22A4DD5EC();
    v13 = v12;

    MEMORY[0x22AAD08C0](v11, v13);

    MEMORY[0x22AAD08C0](0xD000000000000021, 0x800000022A599A60);
    *(v0 + 490) = v1 & 1;
    *(v0 + 491) = HIBYTE(v1) & 1;
    sub_22A4DE31C();
  }

  sub_22A4DBD0C();

  sub_229869270(v2, v1 & 0x101);
LABEL_7:
  *(v0 + 448) = v9;
  v18 = v9;
  v19 = objc_allocWithZone(MEMORY[0x277D380F0]);
  v20 = v18;
  v21 = [v19 init];
  *(v0 + 456) = v21;
  sub_22A4DE1FC();

  *(v0 + 384) = v18;
  v22 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881D70, &qword_22A586650);
  v23 = sub_22A4DD64C();
  MEMORY[0x22AAD08C0](v23);

  sub_22A4DBD0C();

  if (v18)
  {
    v24 = *(v0 + 408);
    *(v0 + 484) = sub_2298697AC(*(v0 + 482), v22);
    v43 = v22;
    if (v24 >> 60 == 15)
    {
      v25 = 0;
    }

    else
    {
      v25 = sub_22A4DB61C();
    }

    *(v0 + 472) = v25;
    v31 = *(v0 + 432);
    v32 = *(v0 + 440);
    v33 = *(v0 + 424);
    *(v0 + 80) = v0;
    *(v0 + 120) = v0 + 336;
    *(v0 + 88) = sub_229868A88;
    swift_continuation_init();
    *(v0 + 264) = v33;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 240));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881D78, &qword_22A586658);
    sub_22A4DD8DC();
    (*(v31 + 32))(boxed_opaque_existential_1, v32, v33);
    *(v0 + 208) = MEMORY[0x277D85DD0];
    *(v0 + 216) = 1107296256;
    *(v0 + 224) = sub_229868CBC;
    *(v0 + 232) = &block_descriptor_15_0;
    [v21 setExpressWithPassConfiguration:v43 credential:v25 handler:v0 + 208];
    (*(v31 + 8))(boxed_opaque_existential_1, v33);
    v35 = v0 + 80;
  }

  else
  {
    v26 = [*(v0 + 392) uniqueID];
    if (v26)
    {
      v27 = v26;
      v28 = sub_22A4DD5EC();
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0;
    }

    *(v0 + 304) = v28;
    *(v0 + 312) = v30;
    v42 = MEMORY[0x277D837D0];
    sub_22A4DBD4C();
    v44 = v21;
    v37 = *(v0 + 432);
    v36 = *(v0 + 440);
    v38 = *(v0 + 424);

    v39 = sub_22A4DD5AC();
    *(v0 + 464) = v39;

    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 320;
    *(v0 + 24) = sub_22986886C;
    swift_continuation_init();
    *(v0 + 200) = v38;
    v40 = __swift_allocate_boxed_opaque_existential_1((v0 + 176));
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881D78, &qword_22A586658);
    sub_22A4DD8DC();
    (*(v37 + 32))(v40, v36, v38);
    *(v0 + 144) = MEMORY[0x277D85DD0];
    *(v0 + 152) = 1107296256;
    *(v0 + 160) = sub_229868CBC;
    *(v0 + 168) = &block_descriptor_46;
    [v44 removeExpressPassWithUniqueIdentifierV2:v39 completion:{v0 + 144, v42}];
    (*(v37 + 8))(v40, v38);
    v35 = v0 + 16;
  }

  return MEMORY[0x282200938](v35);
}

uint64_t sub_22986886C()
{
  v1 = *(*v0 + 416);

  return MEMORY[0x2822009F8](sub_229868960, v1, 0);
}

uint64_t sub_229868960()
{
  v1 = *(v0 + 320);

  v3 = *(v0 + 448);
  v2 = *(v0 + 456);
  if (v1)
  {

    v4 = *(v0 + 8);

    return v4(0);
  }

  else
  {
    sub_22962F2A8();
    swift_allocError();
    *v6 = xmmword_22A5865D0;
    *(v6 + 16) = 3;
    swift_willThrow();

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_229868A88()
{
  v1 = *(*v0 + 416);

  return MEMORY[0x2822009F8](sub_229868B7C, v1, 0);
}

uint64_t sub_229868B7C()
{
  v1 = *(v0 + 472);
  v2 = *(v0 + 448);

  v3 = *(v0 + 336);

  if (v3 == 1)
  {
    v4 = *(v0 + 484);
    v5 = *(v0 + 448);

    v6 = *(v0 + 8);

    return v6(v4 & 0x1010101);
  }

  else
  {
    v9 = *(v0 + 448);
    v8 = *(v0 + 456);
    sub_22962F2A8();
    swift_allocError();
    *v10 = xmmword_22A5865D0;
    *(v10 + 16) = 3;
    swift_willThrow();

    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_229868CBC(uint64_t a1, char a2, uint64_t a3)
{
  __swift_project_boxed_opaque_existential_0((a1 + 32), *(a1 + 56));
  if (a3)
  {
    sub_229562F68(0, &qword_27D881D80, 0x277D37E88);
    sub_22959E62C(&qword_27D881D88, &qword_27D881D80, 0x277D37E88);
    sub_22A4DDB6C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881D68, &qword_22A586648);
  return sub_22A4DD8FC();
}

uint64_t sub_229868D84(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](sub_229868DA4, 0, 0);
}

uint64_t sub_229868DA4()
{
  v1 = [*(v0 + 56) uniqueID];
  if (v1)
  {
    v2 = v1;
    v3 = sub_22A4DD5EC();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0;
  }

  *(v0 + 32) = v3;
  *(v0 + 40) = v5;
  v14 = MEMORY[0x277D837D0];
  sub_22A4DBD4C();

  v6 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
  v7 = sub_22A4DD5AC();

  v8 = [v6 expressPassConfigurationWithPassUniqueIdentifier_];

  if (v8)
  {
    v9 = [v8 isNFCExpressEnabled];
    v10 = [v8 isUWBExpressEnabled];
  }

  else
  {

    v9 = 0;
    v10 = 0;
  }

  v11 = *(v0 + 48);
  *v11 = v9;
  v11[1] = v10;
  v12 = *(v0 + 8);

  return v12();
}

uint64_t PassLibrary.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t PassLibrary.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22986901C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = (*a1 == *a2) & ~v2;
  if (*a2)
  {
    v4 = *(a2 + 8);
  }

  else
  {
    v4 = 0;
  }

  if (*a2)
  {
    v2 = 0;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = v2;
  }

  if (*(a1 + 8) == 1)
  {
    return v5;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_2298690C4(void *a1)
{
  v2 = [a1 uniqueID];
  if (v2)
  {
    v3 = v2;
    sub_22A4DD5EC();
  }

  v11 = MEMORY[0x277D837D0];
  sub_22A4DBD4C();

  if (!v1)
  {
    v5 = [objc_allocWithZone(MEMORY[0x277D380F0]) init];
    v6 = sub_22A4DD5AC();

    v7 = [v5 expressPassConfigurationWithPassUniqueIdentifier_];

    if (v7)
    {
      v8 = [v7 isNFCExpressEnabled];
      v9 = [v7 isUWBExpressEnabled];

      if (v9)
      {
        v10 = 256;
      }

      else
      {
        v10 = 0;
      }

      return v10 | v8;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

void sub_229869270(void *a1, __int16 a2)
{
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  if (v5)
  {
    v6 = a1;
  }

  v31 = v5;
  v27 = sub_229562F68(0, &qword_27D881D90, 0x277D38080);
  sub_22A4DBD4C();

  if (!v2)
  {
    v7 = aBlock[0];
    if ((a2 & 0x100) != 0)
    {
      v9 = [a1 secureElementPass];
      if (v9 && (v10 = v9, v11 = [v9 paymentApplications], v10, v11))
      {
        sub_229562F68(0, &qword_281401930, 0x277D37FE0);
        sub_22959E62C(&qword_27D87E2B8, &qword_281401930, 0x277D37FE0);
        v12 = sub_22A4DDB6C();
      }

      else
      {
        v12 = 0;
      }

      v31 = v12;
      v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881D98, &qword_22A586660);
      sub_22A4DBD4C();

      if ((aBlock[0] & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_22A4DE09C();
        sub_229562F68(0, &qword_281401930, 0x277D37FE0);
        sub_22959E62C(&qword_27D87E2B8, &qword_281401930, 0x277D37FE0);
        sub_22A4DDBAC();
        v13 = aBlock[6];
        v14 = aBlock[7];
        v15 = aBlock[8];
        v16 = aBlock[9];
        v17 = aBlock[10];
      }

      else
      {
        v18 = -1 << *(aBlock[0] + 32);
        v14 = aBlock[0] + 56;
        v15 = ~v18;
        v19 = -v18;
        if (v19 < 64)
        {
          v20 = ~(-1 << v19);
        }

        else
        {
          v20 = -1;
        }

        v17 = v20 & *(aBlock[0] + 56);

        v16 = 0;
      }

      v29 = v13;
      while (1)
      {
        if (v13 < 0)
        {
          v23 = sub_22A4DE12C();
          if (!v23)
          {
            v8 = 0;
            v13 = v29;
            goto LABEL_32;
          }

          v31 = v23;
          sub_229562F68(0, &qword_281401930, 0x277D37FE0);
          swift_dynamicCast();
          v8 = aBlock[0];
          if (!aBlock[0])
          {
LABEL_35:
            v13 = v29;
            goto LABEL_32;
          }
        }

        else
        {
          v21 = v16;
          v22 = v17;
          if (!v17)
          {
            while (1)
            {
              v16 = v21 + 1;
              if (__OFADD__(v21, 1))
              {
                break;
              }

              if (v16 >= ((v15 + 64) >> 6))
              {
                v8 = 0;
                goto LABEL_32;
              }

              v22 = *(v14 + 8 * v16);
              ++v21;
              if (v22)
              {
                goto LABEL_23;
              }
            }

            __break(1u);
            goto LABEL_38;
          }

LABEL_23:
          v17 = (v22 - 1) & v22;
          v8 = *(*(v13 + 48) + ((v16 << 9) | (8 * __clz(__rbit64(v22)))));
          if (!v8)
          {
            goto LABEL_35;
          }
        }

        if ([v8 paymentNetworkIdentifier] == 139 && (objc_msgSend(v8, sel_supportsUWB) & 1) != 0)
        {
          v24 = [v8 blockingSupportedUWBDueToHardware];

          v13 = v29;
          if ((v24 & 1) == 0)
          {
            v8 = 1;
LABEL_32:
            sub_22953EE84(v13);

            v7 = aBlock[0];
            goto LABEL_33;
          }
        }

        else
        {

          v13 = v29;
        }
      }
    }

    v8 = 0;
LABEL_33:
    v25 = objc_allocWithZone(MEMORY[0x277D37E88]);
    aBlock[4] = sub_229869058;
    aBlock[5] = 0;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_229869094;
    aBlock[3] = &block_descriptor_18_1;
    v26 = _Block_copy(aBlock);
    [v25 initForPaymentPass:v7 isNFCExpressEnabled:a2 & 1 isUWBExpressEnabled:v8 withTechologyTest:v26];

    _Block_release(v26);

    if (swift_isEscapingClosureAtFileLocation())
    {
LABEL_38:
      __break(1u);
    }
  }
}

uint64_t sub_2298697AC(__int16 a1, id a2)
{
  if (a1 == 2)
  {
    v3 = [a2 isNFCExpressEnabled];
    if (([a2 isUWBExpressEnabled] & 1) == 0)
    {
LABEL_10:
      v5 = 0;
      return v5 | v3;
    }
  }

  else
  {
    if ([a2 isNFCExpressEnabled] == (a1 & 1))
    {
      v3 = 0;
    }

    else
    {
      v3 = [a2 isNFCExpressEnabled];
    }

    if (((((a1 & 0x100) == 0) ^ [a2 isUWBExpressEnabled]) & 1) != 0 || !objc_msgSend(a2, sel_isUWBExpressEnabled))
    {
      goto LABEL_10;
    }
  }

  v5 = 256;
  return v5 | v3;
}

uint64_t block_copy_helper_16_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22986989C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_229569B30;

  return sub_229866DB0(a1, v4, v5, v6);
}

uint64_t sub_229869950(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_229869A20(unint64_t a1, unint64_t *a2, void *a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    v8 = sub_22A4DE0EC();
  }

  else
  {
    v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    return v9;
  }

  v23 = MEMORY[0x277D84F90];
  result = sub_229583754(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v9 = v23;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v11 = 0;
      do
      {
        v12 = MEMORY[0x22AAD13F0](v11, a1);
        v23 = v9;
        v14 = *(v9 + 16);
        v13 = *(v9 + 24);
        if (v14 >= v13 >> 1)
        {
          sub_229583754((v13 > 1), v14 + 1, 1);
          v9 = v23;
        }

        ++v11;
        v21 = sub_229562F68(0, a2, a3);
        v22 = a4;
        *&v20 = v12;
        *(v9 + 16) = v14 + 1;
        sub_229557188(&v20, v9 + 40 * v14 + 32);
      }

      while (v8 != v11);
    }

    else
    {
      v15 = (a1 + 32);
      do
      {
        v16 = *v15;
        v23 = v9;
        v18 = *(v9 + 16);
        v17 = *(v9 + 24);
        v19 = v16;
        if (v18 >= v17 >> 1)
        {
          sub_229583754((v17 > 1), v18 + 1, 1);
          v9 = v23;
        }

        v21 = sub_229562F68(0, a2, a3);
        v22 = a4;
        *&v20 = v19;
        *(v9 + 16) = v18 + 1;
        sub_229557188(&v20, v9 + 40 * v18 + 32);
        ++v15;
        --v8;
      }

      while (v8);
    }

    return v9;
  }

  __break(1u);
  return result;
}

void *sub_229869C38(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22A4DE0EC();
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

  v17 = MEMORY[0x277D84F90];
  result = sub_22958383C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v17;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v5 = 0;
      do
      {
        v6 = MEMORY[0x22AAD13F0](v5, a1);
        v17 = v3;
        v8 = *(v3 + 16);
        v7 = *(v3 + 24);
        if (v8 >= v7 >> 1)
        {
          sub_22958383C((v7 > 1), v8 + 1, 1);
          v3 = v17;
        }

        ++v5;
        v15 = sub_229562F68(0, &qword_281401780, 0x277D289C0);
        v16 = &off_283CE2270;
        *&v14 = v6;
        *(v3 + 16) = v8 + 1;
        sub_229557188(&v14, v3 + 40 * v8 + 32);
      }

      while (v2 != v5);
    }

    else
    {
      v9 = (a1 + 32);
      do
      {
        v10 = *v9;
        v17 = v3;
        v12 = *(v3 + 16);
        v11 = *(v3 + 24);
        v13 = v10;
        if (v12 >= v11 >> 1)
        {
          sub_22958383C((v11 > 1), v12 + 1, 1);
          v3 = v17;
        }

        v15 = sub_229562F68(0, &qword_281401780, 0x277D289C0);
        v16 = &off_283CE2270;
        *&v14 = v13;
        *(v3 + 16) = v12 + 1;
        sub_229557188(&v14, v3 + 40 * v12 + 32);
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

uint64_t sub_229869E18(unint64_t a1)
{
  if (a1 >> 62)
  {

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F00, &unk_22A57CB50);
    v1 = sub_22A4DE3AC();
  }

  else
  {
    v1 = a1;

    sub_22A4DE61C();
  }

  return v1;
}

uint64_t sub_229869E94(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_2295839C0(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881EE0, &qword_22A580BC0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87F058, &unk_22A582DE0);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_2295839C0((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_229869FC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_229583AE4(0, v1, 0);
    v2 = v9;
    v4 = a1 + 40;
    do
    {

      swift_dynamicCast();
      v9 = v2;
      v6 = *(v2 + 16);
      v5 = *(v2 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_229583AE4((v5 > 1), v6 + 1, 1);
        v2 = v9;
      }

      *(v2 + 16) = v6 + 1;
      sub_229543C5C(&v8, (v2 + 32 * v6 + 32));
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

char *sub_22986A0C0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22A4DE0EC();
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
  result = sub_229583AE4(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        MEMORY[0x22AAD13F0](i, a1);
        sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
        swift_dynamicCast();
        v13 = v3;
        v7 = *(v3 + 16);
        v6 = *(v3 + 24);
        if (v7 >= v6 >> 1)
        {
          sub_229583AE4((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v7 + 1;
        sub_229543C5C(v12, (v3 + 32 * v7 + 32));
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_229562F68(0, &qword_27D87CF48, 0x277CD51C0);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = *(v3 + 16);
        v10 = *(v3 + 24);
        if (v11 >= v10 >> 1)
        {
          sub_229583AE4((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        *(v3 + 16) = v11 + 1;
        sub_229543C5C(v12, (v3 + 32 * v11 + 32));
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

uint64_t sub_22986A2BC(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_22A4DE0EC();
  }

  else
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v9 = MEMORY[0x277D84F90];
    result = sub_22A4DE29C();
    if (v2 < 0)
    {
      __break(1u);
    }

    else
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = 0;
        do
        {
          v5 = v4 + 1;
          MEMORY[0x22AAD13F0]();
          sub_229562F68(0, &qword_281401770, 0x277CCABB0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F10, &qword_22A5804F0);
          swift_dynamicCast();
          sub_22A4DE27C();
          sub_22A4DE2AC();
          sub_22A4DE2BC();
          sub_22A4DE28C();
          v4 = v5;
        }

        while (v2 != v5);
      }

      else
      {
        v6 = (a1 + 32);
        sub_229562F68(0, &qword_281401770, 0x277CCABB0);
        do
        {
          v7 = *v6++;
          v8 = v7;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F10, &qword_22A5804F0);
          swift_dynamicCast();
          sub_22A4DE27C();
          sub_22A4DE2AC();
          sub_22A4DE2BC();
          sub_22A4DE28C();
          --v2;
        }

        while (v2);
      }

      return v9;
    }
  }

  return result;
}

uint64_t sub_22986A4B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (v1)
  {
    v9 = MEMORY[0x277D84F90];
    sub_229583B88(0, v1, 0);
    v4 = a1 + 32;
    v2 = v9;
    do
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C370, &qword_22A578090);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      swift_dynamicCast();
      v6 = *(v9 + 16);
      v5 = *(v9 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_229583B88((v5 > 1), v6 + 1, 1);
      }

      *(v9 + 16) = v6 + 1;
      *(v9 + 8 * v6 + 32) = v8;
      v4 += 8;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_22986A5E0(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = (a1)(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_22986A68C(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v14 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (v14)
      {
        v7 = a3;
        v8 = MEMORY[0x22AAD13F0](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);
        swift_unknownObjectRelease();
        if (!v3 && (v10 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v9 != v4)
          {
            continue;
          }
        }

        return v10 & 1;
      }

      if (v5 >= *(v6 + 16))
      {
        goto LABEL_14;
      }

      v7 = a3;
      v8 = *(a3 + 8 * v5 + 32);
      swift_unknownObjectRetain();
      v9 = v5 + 1;
      if (!__OFADD__(v5, 1))
      {
        goto LABEL_7;
      }

LABEL_13:
      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v11 = a3;
      v12 = sub_22A4DE0EC();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_22986A7C8(uint64_t (*a1)(void **), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = *v6++;
      v13 = v8;
      v9 = v8;
      v10 = a1(&v13);

      if (v3)
      {
        break;
      }

      v11 = v7-- == 0;
    }

    while (((v10 | v11) & 1) == 0);
  }

  else
  {
    LOBYTE(v10) = 0;
  }

  return v10 & 1;
}

uint64_t sub_22986A86C(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  v4 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v4)
  {
    do
    {
      v5 = 0;
      v15 = a3 & 0xC000000000000001;
      v6 = a3 & 0xFFFFFFFFFFFFFF8;
      while (1)
      {
        if (v15)
        {
          v7 = a3;
          v8 = MEMORY[0x22AAD13F0](v5, a3);
        }

        else
        {
          if (v5 >= *(v6 + 16))
          {
            goto LABEL_14;
          }

          v7 = a3;
          v8 = *(a3 + 8 * v5 + 32);
        }

        v9 = v8;
        v10 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        v17 = v8;
        v11 = a1(&v17);

        if (!v3 && (v11 & 1) == 0)
        {
          ++v5;
          a3 = v7;
          if (v10 != v4)
          {
            continue;
          }
        }

        return v11 & 1;
      }

      __break(1u);
LABEL_14:
      __break(1u);
LABEL_15:
      v12 = a3;
      v13 = sub_22A4DE0EC();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_22986A994(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v27 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v26 = v1;
    while (1)
    {
      if (v29)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x22AAD13F0](v2, v25);
      }

      else
      {
        if (v2 >= *(v28 + 16))
        {
          goto LABEL_41;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v27 + 8 * v2);
      }

      v4 = isUniquelyReferenced_nonNull_bridgeObject;
      v5 = __OFADD__(v2++, 1);
      if (v5)
      {
        break;
      }

      v6 = [isUniquelyReferenced_nonNull_bridgeObject accessories];
      sub_229562F68(0, &qword_281401C30, off_278665FE8);
      v7 = sub_22A4DD83C();

      v8 = v7 >> 62;
      if (v7 >> 62)
      {
        v9 = sub_22A4DE0EC();
      }

      else
      {
        v9 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v10 = v3 >> 62;
      if (v3 >> 62)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
LABEL_39:
          __break(1u);
          break;
        }
      }

      else
      {
        isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v11 = isUniquelyReferenced_nonNull_bridgeObject + v9;
        if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v9))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v9;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v10)
        {
          goto LABEL_21;
        }

LABEL_20:
        sub_22A4DE0EC();
        goto LABEL_21;
      }

      if (v10)
      {
        goto LABEL_20;
      }

      v12 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v11 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v30 = v3;
        goto LABEL_22;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE22C();
      v30 = isUniquelyReferenced_nonNull_bridgeObject;
      v12 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v13 = *(v12 + 16);
      v14 = *(v12 + 24);
      if (v8)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_22A4DE0EC();
        v15 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_26:
          if (((v14 >> 1) - v13) < v32)
          {
            goto LABEL_43;
          }

          v16 = v12 + 8 * v13 + 32;
          if (v8)
          {
            if (v15 < 1)
            {
              goto LABEL_45;
            }

            sub_22988F9B8();
            for (i = 0; i != v15; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D548, &unk_22A578880);
              v18 = sub_22958C03C(v31, i, v7);
              v20 = *v19;
              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          v3 = v30;
          if (v32 >= 1)
          {
            v21 = *(v12 + 16);
            v5 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v12 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v15 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v15)
        {
          goto LABEL_26;
        }
      }

      v3 = v30;
      if (v32 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

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
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_22A4DE0EC();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

uint64_t sub_22986AD04(unint64_t a1)
{
  v8 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  sub_22A4DE29C();
  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_22A4DE0EC())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = MEMORY[0x22AAD13F0](j, a1);
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = v4;
      v6 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      objc_opt_self();
      if (!swift_dynamicCastObjCClass())
      {

        return 0;
      }

      sub_22A4DE27C();
      sub_22A4DE2AC();
      sub_22A4DE2BC();
      sub_22A4DE28C();
      if (v6 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    sub_22A4DE0EC();
    sub_22A4DE29C();
  }

  return v8;
}

uint64_t sub_22986AE94(uint64_t a1, unint64_t *a2, void *a3)
{
  v10 = MEMORY[0x277D84F90];
  v6 = *(a1 + 16);
  sub_22A4DE29C();
  if (!v6)
  {
    return v10;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_2295404B0(i, v9);
    sub_229562F68(0, a2, a3);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    sub_22A4DE27C();
    sub_22A4DE2AC();
    sub_22A4DE2BC();
    sub_22A4DE28C();
    if (!--v6)
    {
      return v10;
    }
  }

  return 0;
}

uint64_t sub_22986AF98(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_23;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v13 = MEMORY[0x277D84F90];
  sub_229583334(0, v3 & ~(v3 >> 63), 0);
  v4 = v13;
  if (!v2)
  {
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      return v4;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        MEMORY[0x22AAD13F0](i, a1);
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        swift_unknownObjectRetain();
        v6 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_21:
          __break(1u);
LABEL_22:
          __break(1u);
LABEL_23:
          v3 = sub_22A4DE0EC();
          goto LABEL_3;
        }
      }

      if ((swift_dynamicCast() & 1) == 0)
      {

        return 0;
      }

      v8 = *(v13 + 16);
      v7 = *(v13 + 24);
      if (v8 >= v7 >> 1)
      {
        sub_229583334((v7 > 1), v8 + 1, 1);
      }

      *(v13 + 16) = v8 + 1;
      v9 = v13 + 16 * v8;
      *(v9 + 32) = v11;
      *(v9 + 40) = v12;
      if (v6 == v2)
      {
        return v4;
      }
    }
  }

  v2 = sub_22A4DE0EC();
  if (v2)
  {
    goto LABEL_7;
  }

  return v4;
}

uint64_t sub_22986B134(unint64_t a1)
{
  v6 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_15:
    sub_22A4DE0EC();
    sub_22A4DE29C();
    v2 = sub_22A4DE0EC();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_22A4DE29C();
    v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          MEMORY[0x22AAD13F0](v3, a1);
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:
            swift_unknownObjectRelease();

            return 0;
          }
        }

        else
        {
          if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          swift_unknownObjectRetain();
          v4 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
          goto LABEL_13;
        }

        sub_22A4DE27C();
        sub_22A4DE2AC();
        sub_22A4DE2BC();
        sub_22A4DE28C();
        ++v3;
      }

      while (v4 != v2);
    }
  }

  return v6;
}

uint64_t sub_22986B2A8(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = MEMORY[0x277D84F90];
  sub_229583B88(0, v2, 0);
  v3 = v10;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_2295404B0(i, v9);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87C410, &qword_22A576EE0);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = *(v3 + 16);
      v5 = *(v3 + 24);
      if (v6 >= v5 >> 1)
      {
        sub_229583B88((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      *(v3 + 16) = v6 + 1;
      *(v3 + 8 * v6 + 32) = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void sub_22986B3D0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F20, &qword_22A5868D0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  v12 = sub_22A4DBCFC();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  (*(v9 + 32))(&v14[v13], v11, v8);
  aBlock[4] = sub_2298903DC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_116;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  [a2 performBlock_];
  _Block_release(v15);
}

void sub_22986B5B8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F18, &qword_22A5868C8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  v12 = sub_22A4DBCFC();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  (*(v9 + 32))(&v14[v13], v11, v8);
  aBlock[4] = sub_229890384;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_110;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  [a2 performBlock_];
  _Block_release(v15);
}

void sub_22986B7A0(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  v12 = sub_22A4DBCFC();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  (*(v9 + 32))(&v14[v13], v11, v8);
  aBlock[4] = sub_22988FB4C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_47;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  [a2 performBlock_];
  _Block_release(v15);
}

void sub_22986B988(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D881F28, &qword_22A5868D8);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  v12 = sub_22A4DBCFC();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  (*(v9 + 32))(&v14[v13], v11, v8);
  aBlock[4] = sub_229890424;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_122;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  [a2 performBlock_];
  _Block_release(v15);
}

void sub_22986BB70(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881EF8, &qword_22A5868C0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  v12 = sub_22A4DBCFC();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  (*(v9 + 32))(&v14[v13], v11, v8);
  aBlock[4] = sub_2298902AC;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_104;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  [a2 performBlock_];
  _Block_release(v15);
}

void sub_22986BD58(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F38, &qword_22A5868E0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = aBlock - v10;
  v12 = sub_22A4DBCFC();
  (*(v9 + 16))(v11, a1, v8);
  v13 = (*(v9 + 80) + 40) & ~*(v9 + 80);
  v14 = swift_allocObject();
  *(v14 + 2) = v12;
  *(v14 + 3) = a3;
  *(v14 + 4) = a4;
  (*(v9 + 32))(&v14[v13], v11, v8);
  aBlock[4] = sub_22989055C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22953E640;
  aBlock[3] = &block_descriptor_128;
  v15 = _Block_copy(aBlock);
  v16 = v12;

  [a2 performBlock_];
  _Block_release(v15);
}

uint64_t sub_22986BF40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  sub_22A4DD5EC();
  sub_22A4DBCEC();
  sub_22A4DBD1C();
}

void *sub_22986C028(void *(*a1)(__int128 *__return_ptr))
{
  result = a1(&v3);
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D881F20, &qword_22A5868D0);
    return sub_22A4DD8FC();
  }

  return result;
}

uint64_t sub_22986C0A0(uint64_t (*a1)(void))
{
  result = a1();
  if (!v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D8804C0, &qword_22A57B5F0);
    return sub_22A4DD8FC();
  }

  return result;
}

void *sub_22986C100(void *(*a1)(uint64_t *__return_ptr), uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  result = a1(&v9);
  if (!v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
    return sub_22A4DD8FC();
  }

  return result;
}

uint64_t sub_22986C178(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t *a6, uint64_t *a7)
{
  v12 = a4(0);
  v13 = MEMORY[0x28223BE20](v12 - 8);
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v13);
  v18 = v20 - v17;
  result = a1(v16);
  if (!v7)
  {
    sub_2298905CC(v18, v15, a5);
    __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
    sub_22A4DD8FC();
    return sub_229890634(v18, a5);
  }

  return result;
}

void sub_22986C2C4(void *a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = &v84 - v6;
  v7 = sub_22A4DD07C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v91 = (&v84 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v84 - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v84 - v14;
  v90 = ObjectType;
  sub_229541CB0(ObjectType, &off_283CE8678);
  v16 = v2;
  v17 = a1;
  v18 = sub_22A4DD05C();
  v19 = sub_22A4DDCCC();

  v20 = os_log_type_enabled(v18, v19);
  v88 = v7;
  v89 = v16;
  if (v20)
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v87 = v8;
    v84 = v23;
    v94[0] = v23;
    *v21 = 136315394;
    v92 = 91;
    v93 = 0xE100000000000000;
    v24 = v16;
    v25 = [v24 description];
    v86 = v17;
    v26 = v25;
    v27 = v13;
    v28 = sub_22A4DD5EC();
    v30 = v29;

    v31 = v28;
    v13 = v27;
    MEMORY[0x22AAD08C0](v31, v30);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v32 = sub_2295A3E30(v92, v93, v94);

    *(v21 + 4) = v32;
    v17 = v86;
    *(v21 + 12) = 2112;
    *(v21 + 14) = v17;
    *v22 = v17;
    v33 = v17;
    _os_log_impl(&dword_229538000, v18, v19, "%s Received demo mode request message: %@", v21, 0x16u);
    sub_22953EAE4(v22, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v22, -1, -1);
    v34 = v84;
    __swift_destroy_boxed_opaque_existential_0(v84);
    v8 = v87;
    MEMORY[0x22AAD4E50](v34, -1, -1);
    v35 = v21;
    v7 = v88;
    MEMORY[0x22AAD4E50](v35, -1, -1);
  }

  v36 = *(v8 + 8);
  v36(v15, v7);
  v37 = [v17 numberForKey_];
  if (v37 && (v38 = v37, v39 = [v37 unsignedIntValue], v38, v39 == 2))
  {
    v40 = [v17 numberForKey_];
    if (v40)
    {
      v41 = v40;
      v42 = [v40 unsignedIntegerValue];

      v43 = sub_22A4DD9DC();
      v44 = v85;
      (*(*(v43 - 8) + 56))(v85, 1, 1, v43);
      v45 = swift_allocObject();
      v45[2] = 0;
      v45[3] = 0;
      v46 = v89;
      v45[4] = v42;
      v45[5] = v46;
      v45[6] = v17;
      v45[7] = v42;
      v45[8] = v90;
      v47 = v46;
      v48 = v17;
      sub_22957F3C0(0, 0, v44, &unk_22A586878, v45);

      return;
    }

    v86 = v17;
    sub_229541CB0(v90, &off_283CE8678);
    v69 = v89;
    v70 = sub_22A4DD05C();
    v71 = sub_22A4DDCEC();

    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v94[0] = v73;
      *v72 = 136315138;
      v92 = 91;
      v93 = 0xE100000000000000;
      v74 = v69;
      v75 = [v74 description];
      v76 = sub_22A4DD5EC();
      v91 = v36;
      v77 = v76;
      v79 = v78;

      MEMORY[0x22AAD08C0](v77, v79);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v80 = sub_2295A3E30(v92, v93, v94);

      *(v72 + 4) = v80;
      _os_log_impl(&dword_229538000, v70, v71, "%s Invalid demo request type", v72, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v73);
      MEMORY[0x22AAD4E50](v73, -1, -1);
      MEMORY[0x22AAD4E50](v72, -1, -1);

      v91(v13, v88);
    }

    else
    {

      v36(v13, v7);
    }

    type metadata accessor for HMError(0);
    v94[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v82;
    *(inited + 48) = 0xD00000000000001DLL;
    *(inited + 56) = 0x800000022A59A450;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    v83 = v92;
    v68 = sub_22A4DB3DC();

    [v86 respondWithError_];
  }

  else
  {
    v49 = v36;
    v50 = v91;
    sub_229541CB0(v90, &off_283CE8678);
    v51 = v89;
    v52 = sub_22A4DD05C();
    v53 = sub_22A4DDCEC();

    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      v55 = swift_slowAlloc();
      v94[0] = v55;
      *v54 = 136315138;
      v92 = 91;
      v93 = 0xE100000000000000;
      v56 = v51;
      v57 = v17;
      v58 = [v56 description];
      v59 = sub_22A4DD5EC();
      v87 = v8;
      v61 = v60;

      MEMORY[0x22AAD08C0](v59, v61);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v62 = sub_2295A3E30(v92, v93, v94);

      *(v54 + 4) = v62;
      v17 = v57;
      _os_log_impl(&dword_229538000, v52, v53, "%s Invalid demo mode version", v54, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v55);
      MEMORY[0x22AAD4E50](v55, -1, -1);
      MEMORY[0x22AAD4E50](v54, -1, -1);

      v63 = v91;
      v64 = v88;
    }

    else
    {

      v63 = v50;
      v64 = v7;
    }

    v49(v63, v64);
    type metadata accessor for HMError(0);
    v94[0] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v65 = swift_initStackObject();
    *(v65 + 16) = xmmword_22A576180;
    *(v65 + 32) = sub_22A4DD5EC();
    *(v65 + 72) = MEMORY[0x277D837D0];
    *(v65 + 40) = v66;
    *(v65 + 48) = 0xD000000000000019;
    *(v65 + 56) = 0x800000022A59A430;
    sub_22956AD8C(v65);
    swift_setDeallocating();
    sub_22953EAE4(v65 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    v67 = v92;
    v68 = sub_22A4DB3DC();

    [v17 respondWithError_];
  }
}

uint64_t sub_22986CD2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[17] = a7;
  v8[18] = a8;
  v8[15] = a5;
  v8[16] = a6;
  v8[14] = a4;
  v9 = sub_22A4DD07C();
  v8[19] = v9;
  v8[20] = *(v9 - 8);
  v8[21] = swift_task_alloc();
  v8[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22986CE00, 0, 0);
}

uint64_t sub_22986CE00()
{
  v65 = v0;
  v1 = v0[14];
  if (v1 <= 2)
  {
    if (v1 == 1)
    {
      v11 = swift_task_alloc();
      v0[29] = v11;
      *v11 = v0;
      v11[1] = sub_22986D9C8;
      v12 = v0[16];

      return sub_229870DA0(v12);
    }

    else
    {
      if (v1 != 2)
      {
LABEL_22:
        v13 = v0[15];
        sub_229541CB0(v0[18], &off_283CE8678);
        v14 = v13;
        v15 = sub_22A4DD05C();
        v16 = sub_22A4DDCEC();

        v17 = os_log_type_enabled(v15, v16);
        v18 = v0[22];
        v19 = v0[19];
        v20 = v0[20];
        if (v17)
        {
          v58 = v0[17];
          v60 = v0[22];
          v21 = v0[15];
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          *v22 = 136315394;
          v62 = v23;
          v63 = 91;
          v64 = 0xE100000000000000;
          v24 = v21;
          v25 = [v24 description];
          v26 = sub_22A4DD5EC();
          v56 = v19;
          v28 = v27;

          MEMORY[0x22AAD08C0](v26, v28);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v29 = sub_2295A3E30(91, 0xE100000000000000, &v62);

          *(v22 + 4) = v29;
          *(v22 + 12) = 2048;
          *(v22 + 14) = v58;
          _os_log_impl(&dword_229538000, v15, v16, "%s Unsupported request type: %lu", v22, 0x16u);
          __swift_destroy_boxed_opaque_existential_0(v23);
          MEMORY[0x22AAD4E50](v23, -1, -1);
          MEMORY[0x22AAD4E50](v22, -1, -1);

          (*(v20 + 8))(v60, v56);
        }

        else
        {

          (*(v20 + 8))(v18, v19);
        }

        type metadata accessor for HMError(0);
        v0[13] = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22A576180;
        *(inited + 32) = sub_22A4DD5EC();
        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 40) = v31;
        *(inited + 48) = 0xD000000000000018;
        *(inited + 56) = 0x800000022A59A470;
        sub_22956AD8C(inited);
        swift_setDeallocating();
        sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
        sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
        sub_22A4DB3CC();
        v32 = v0[12];
        swift_willThrow();
        v33 = v0[15];
        sub_229541CB0(v0[18], &off_283CE8678);
        v34 = v33;
        v35 = v32;
        v36 = sub_22A4DD05C();
        v37 = sub_22A4DDCEC();

        v38 = os_log_type_enabled(v36, v37);
        v40 = v0[20];
        v39 = v0[21];
        v41 = v0[19];
        if (v38)
        {
          v61 = v0[21];
          v42 = v0[15];
          v43 = swift_slowAlloc();
          v55 = swift_slowAlloc();
          v59 = swift_slowAlloc();
          *v43 = 136315394;
          v62 = v59;
          v63 = 91;
          v64 = 0xE100000000000000;
          v44 = v42;
          v57 = v41;
          v45 = [v44 description];
          v46 = sub_22A4DD5EC();
          v48 = v47;

          MEMORY[0x22AAD08C0](v46, v48);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v49 = sub_2295A3E30(v63, v64, &v62);

          *(v43 + 4) = v49;
          *(v43 + 12) = 2112;
          v50 = v32;
          v51 = _swift_stdlib_bridgeErrorToNSError();
          *(v43 + 14) = v51;
          *v55 = v51;
          _os_log_impl(&dword_229538000, v36, v37, "%s Failed to handle demo accessory request with error: %@", v43, 0x16u);
          sub_22953EAE4(v55, &qword_27D87D7D0, &unk_22A578D90);
          MEMORY[0x22AAD4E50](v55, -1, -1);
          __swift_destroy_boxed_opaque_existential_0(v59);
          MEMORY[0x22AAD4E50](v59, -1, -1);
          MEMORY[0x22AAD4E50](v43, -1, -1);

          (*(v40 + 8))(v61, v57);
        }

        else
        {

          (*(v40 + 8))(v39, v41);
        }

        v52 = v0[16];
        v53 = sub_22A4DB3DC();
        [v52 respondWithError_];

        v54 = v0[1];

        return v54();
      }

      v5 = swift_task_alloc();
      v0[27] = v5;
      *v5 = v0;
      v5[1] = sub_22986D8B4;
      v6 = v0[16];

      return sub_229870130(v6);
    }
  }

  else
  {
    switch(v1)
    {
      case 5:
        v7 = swift_task_alloc();
        v0[31] = v7;
        *v7 = v0;
        v7[1] = sub_22986DADC;
        v8 = v0[16];

        return sub_229872810(v8);
      case 4:
        v9 = swift_task_alloc();
        v0[25] = v9;
        *v9 = v0;
        v9[1] = sub_22986D7A0;
        v10 = v0[16];

        return sub_22986F650(v10);
      case 3:
        v2 = swift_task_alloc();
        v0[23] = v2;
        *v2 = v0;
        v2[1] = sub_22986D614;
        v3 = v0[16];

        return sub_22986EAA4(v3);
      default:
        goto LABEL_22;
    }
  }
}

uint64_t sub_22986D614()
{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = sub_22986DCD0;
  }

  else
  {
    v2 = sub_22986D728;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22986D728()
{
  [*(v0 + 128) respondWithSuccess];

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22986D7A0()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_22986DF94;
  }

  else
  {
    v2 = sub_2298906E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22986D8B4()
{
  *(*v1 + 224) = v0;

  if (v0)
  {
    v2 = sub_22986E258;
  }

  else
  {
    v2 = sub_2298906E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22986D9C8()
{
  *(*v1 + 240) = v0;

  if (v0)
  {
    v2 = sub_22986E51C;
  }

  else
  {
    v2 = sub_2298906E0;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22986DADC(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 256) = v1;

  if (v1)
  {
    v5 = sub_22986E7E0;
  }

  else
  {
    *(v4 + 264) = a1;
    v5 = sub_22986DC04;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_22986DC04()
{
  v1 = *(v0 + 128);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C3B0, &unk_22A576E90);
  v2 = sub_22A4DD47C();

  [v1 respondWithPayload_];

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22986DCD0()
{
  v30 = v0;
  v1 = v0[24];
  v2 = v0[15];
  sub_229541CB0(v0[18], &off_283CE8678);
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  if (v7)
  {
    v28 = v0[21];
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136315394;
    v29[0] = v27;
    v29[1] = 91;
    v29[2] = 0xE100000000000000;
    v13 = v11;
    v26 = v10;
    v14 = [v13 description];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v29);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    v19 = v1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v25 = v20;
    _os_log_impl(&dword_229538000, v5, v6, "%s Failed to handle demo accessory request with error: %@", v12, 0x16u);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v9 + 8))(v28, v26);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v21 = v0[16];
  v22 = sub_22A4DB3DC();
  [v21 respondWithError_];

  v23 = v0[1];

  return v23();
}

uint64_t sub_22986DF94()
{
  v30 = v0;
  v1 = v0[26];
  v2 = v0[15];
  sub_229541CB0(v0[18], &off_283CE8678);
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  if (v7)
  {
    v28 = v0[21];
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136315394;
    v29[0] = v27;
    v29[1] = 91;
    v29[2] = 0xE100000000000000;
    v13 = v11;
    v26 = v10;
    v14 = [v13 description];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v29);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    v19 = v1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v25 = v20;
    _os_log_impl(&dword_229538000, v5, v6, "%s Failed to handle demo accessory request with error: %@", v12, 0x16u);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v9 + 8))(v28, v26);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v21 = v0[16];
  v22 = sub_22A4DB3DC();
  [v21 respondWithError_];

  v23 = v0[1];

  return v23();
}

uint64_t sub_22986E258()
{
  v30 = v0;
  v1 = v0[28];
  v2 = v0[15];
  sub_229541CB0(v0[18], &off_283CE8678);
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  if (v7)
  {
    v28 = v0[21];
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136315394;
    v29[0] = v27;
    v29[1] = 91;
    v29[2] = 0xE100000000000000;
    v13 = v11;
    v26 = v10;
    v14 = [v13 description];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v29);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    v19 = v1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v25 = v20;
    _os_log_impl(&dword_229538000, v5, v6, "%s Failed to handle demo accessory request with error: %@", v12, 0x16u);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v9 + 8))(v28, v26);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v21 = v0[16];
  v22 = sub_22A4DB3DC();
  [v21 respondWithError_];

  v23 = v0[1];

  return v23();
}

uint64_t sub_22986E51C()
{
  v30 = v0;
  v1 = v0[30];
  v2 = v0[15];
  sub_229541CB0(v0[18], &off_283CE8678);
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  if (v7)
  {
    v28 = v0[21];
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136315394;
    v29[0] = v27;
    v29[1] = 91;
    v29[2] = 0xE100000000000000;
    v13 = v11;
    v26 = v10;
    v14 = [v13 description];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v29);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    v19 = v1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v25 = v20;
    _os_log_impl(&dword_229538000, v5, v6, "%s Failed to handle demo accessory request with error: %@", v12, 0x16u);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v9 + 8))(v28, v26);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v21 = v0[16];
  v22 = sub_22A4DB3DC();
  [v21 respondWithError_];

  v23 = v0[1];

  return v23();
}

uint64_t sub_22986E7E0()
{
  v30 = v0;
  v1 = v0[32];
  v2 = v0[15];
  sub_229541CB0(v0[18], &off_283CE8678);
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[20];
  v8 = v0[21];
  v10 = v0[19];
  if (v7)
  {
    v28 = v0[21];
    v11 = v0[15];
    v12 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v12 = 136315394;
    v29[0] = v27;
    v29[1] = 91;
    v29[2] = 0xE100000000000000;
    v13 = v11;
    v26 = v10;
    v14 = [v13 description];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v29);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2112;
    v19 = v1;
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 14) = v20;
    *v25 = v20;
    _os_log_impl(&dword_229538000, v5, v6, "%s Failed to handle demo accessory request with error: %@", v12, 0x16u);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v9 + 8))(v28, v26);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v21 = v0[16];
  v22 = sub_22A4DB3DC();
  [v21 respondWithError_];

  v23 = v0[1];

  return v23();
}

uint64_t sub_22986EAA4(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v2[17] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[18] = v3;
  v2[19] = *(v3 - 8);
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v4 = sub_22A4DB57C();
  v2[22] = v4;
  v2[23] = *(v4 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v2[26] = swift_task_alloc();
  v2[27] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22986EC28, 0, 0);
}

uint64_t sub_22986EC28()
{
  v95 = v0;
  v94[1] = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 120) numberForKey_];
  if (v1)
  {
    v2 = v1;
    if ([v1 BOOLValue])
    {
      sub_2298780EC();
    }

    else
    {
      v79 = v2;
      v20 = *(v0 + 216);
      v21 = *(v0 + 176);
      v22 = *(v0 + 184);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D130, &qword_22A578028);
      v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
      v88 = *(v22 + 72);
      v24 = swift_allocObject() + v23;
      v25 = getStoreDirectoryPath();
      sub_22A4DD5EC();

      sub_22A4DB4CC();

      sub_22A4DB4FC();
      v26 = *(v22 + 8);
      v26(v20, v21);
      v27 = NSTemporaryDirectory();
      if (!v27)
      {
        sub_22A4DD5EC();
        v27 = sub_22A4DD5AC();
      }

      v28 = *(v0 + 208);
      v29 = *(v0 + 176);
      v30 = *(v0 + 184);
      v31 = *(v0 + 152);
      v90 = *(v0 + 128);
      v32 = [objc_opt_self() fileURLWithPath:v27 isDirectory:1];

      sub_22A4DB51C();
      sub_22A4DB4FC();
      v26(v28, v29);
      v89 = OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager;
      v92 = *(v30 + 16);
      v86 = (v31 + 8);
      v33 = 2;
      v34 = v88;
      v35 = v26;
      v87 = v26;
      v92(*(v0 + 200), v24, *(v0 + 176));
      while (1)
      {
        v37 = *(v90 + v89);
        v38 = [v37 fileManager];
        if (!v38)
        {
          __break(1u);
LABEL_27:
          __break(1u);
        }

        v39 = v38;
        v40 = sub_22A4DB4EC();
        v41 = [v39 fileExistsAtURL_];

        swift_unknownObjectRelease();
        if (v41)
        {
          v43 = *(v0 + 192);
          v42 = *(v0 + 200);
          v44 = *(v0 + 176);
          v45 = *(v0 + 128);
          sub_229541CB0(*(v0 + 136), &off_283CE8678);
          v92(v43, v42, v44);
          v46 = v45;
          v47 = sub_22A4DD05C();
          v48 = sub_22A4DDCCC();

          v49 = os_log_type_enabled(v47, v48);
          v50 = *(v0 + 192);
          v51 = *(v0 + 168);
          v52 = *(v0 + 176);
          v53 = *(v0 + 144);
          if (v49)
          {
            log = v47;
            v54 = *(v0 + 128);
            v81 = v48;
            v55 = swift_slowAlloc();
            v83 = swift_slowAlloc();
            v94[0] = v83;
            *v55 = 136315394;
            v56 = v54;
            v84 = v51;
            v57 = [v56 description];
            v82 = v53;
            v58 = sub_22A4DD5EC();
            v80 = v50;
            v60 = v59;

            MEMORY[0x22AAD08C0](v58, v60);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v61 = sub_2295A3E30(91, 0xE100000000000000, v94);

            *(v55 + 4) = v61;
            *(v55 + 12) = 2080;
            sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
            v62 = sub_22A4DE5CC();
            v64 = v63;
            v35 = v87;
            v87(v80, v52);
            v65 = sub_2295A3E30(v62, v64, v94);

            *(v55 + 14) = v65;
            _os_log_impl(&dword_229538000, log, v81, "%s Removing the demo mode backup from: %s", v55, 0x16u);
            swift_arrayDestroy();
            MEMORY[0x22AAD4E50](v83, -1, -1);
            MEMORY[0x22AAD4E50](v55, -1, -1);

            (*v86)(v84, v82);
          }

          else
          {

            v66 = v50;
            v35 = v87;
            v87(v66, v52);
            (*v86)(v51, v53);
          }

          v67 = [v37 fileManager];
          v34 = v88;
          if (!v67)
          {
            goto LABEL_27;
          }

          v68 = v67;
          v69 = sub_22A4DB4EC();
          *(v0 + 112) = 0;
          v70 = [v68 removeItemAtURL:v69 error:v0 + 112];

          swift_unknownObjectRelease();
          v71 = *(v0 + 112);
          if (!v70)
          {
            v72 = *(v0 + 200);
            v73 = *(v0 + 176);
            swift_setDeallocating();
            v74 = v71;
            swift_arrayDestroy();
            swift_deallocClassInstance();
            sub_22A4DB3EC();

            swift_willThrow();
            v35(v72, v73);
            goto LABEL_23;
          }

          v36 = v71;
        }

        v35(*(v0 + 200), *(v0 + 176));
        v24 += v34;
        if (!--v33)
        {
          break;
        }

        v92(*(v0 + 200), v24, *(v0 + 176));
      }

      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();
    }
  }

  else
  {
    v3 = *(v0 + 128);
    sub_229541CB0(*(v0 + 136), &off_283CE8678);
    v4 = v3;
    v5 = sub_22A4DD05C();
    v6 = sub_22A4DDCEC();

    v7 = os_log_type_enabled(v5, v6);
    v9 = *(v0 + 152);
    v8 = *(v0 + 160);
    v10 = *(v0 + 144);
    if (v7)
    {
      v93 = *(v0 + 160);
      v11 = *(v0 + 128);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v94[0] = v13;
      *v12 = 136315138;
      v14 = v11;
      v15 = [v14 description];
      v16 = sub_22A4DD5EC();
      v91 = v10;
      v18 = v17;

      MEMORY[0x22AAD08C0](v16, v18);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v19 = sub_2295A3E30(91, 0xE100000000000000, v94);

      *(v12 + 4) = v19;
      _os_log_impl(&dword_229538000, v5, v6, "%s Invalid demo mode lock state", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v13);
      MEMORY[0x22AAD4E50](v13, -1, -1);
      MEMORY[0x22AAD4E50](v12, -1, -1);

      (*(v9 + 8))(v93, v91);
    }

    else
    {

      (*(v9 + 8))(v8, v10);
    }

    type metadata accessor for HMError(0);
    *(v0 + 104) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v76;
    *(inited + 48) = 0xD00000000000001CLL;
    *(inited + 56) = 0x800000022A59A490;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();
  }

LABEL_23:

  v77 = *(v0 + 8);

  return v77();
}

uint64_t sub_22986F650(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = sub_22A4DB57C();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22986F748, 0, 0);
}

uint64_t sub_22986F748()
{
  v11 = v0;
  v10 = *MEMORY[0x277D85DE8];
  v1 = [*(v0 + 32) numberForKey_];
  if (v1)
  {
    v9 = 2;
    v2 = v1;
    MEMORY[0x22AAD0A90](v1, &v9);

    if (v9 != 2 && (v9 & 1) != 0)
    {
      if (qword_2814028E0 != -1)
      {
        swift_once();
      }

      v3 = qword_281405070;
      *(v0 + 80) = qword_281405070;
      v4 = sub_22986F978;
LABEL_11:

      return MEMORY[0x2822009F8](v4, v3, 0);
    }
  }

  v5 = [*(v0 + 32) stringForKey_];
  if (v5)
  {
    v6 = v5;
    sub_22A4DD5EC();

    sub_22A4DB4CC();

    if (qword_2814028E0 != -1)
    {
      swift_once();
    }

    v3 = qword_281405070;
    *(v0 + 88) = qword_281405070;
    v4 = sub_22986FA4C;
    goto LABEL_11;
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_22986F978()
{
  sub_229797534(1);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22986FA4C()
{
  sub_229797860(*(v0 + 72));
  *(v0 + 96) = 0;

  return MEMORY[0x2822009F8](sub_22986FB0C, 0, 0);
}

uint64_t sub_22986FB0C()
{
  if (qword_2814028E8 != -1)
  {
    swift_once();
  }

  v2 = v0[7];
  v1 = v0[8];
  v4 = v0[5];
  v3 = v0[6];
  v5 = __swift_project_value_buffer(v3, qword_281405088);
  (*(v2 + 16))(v1, v5, v3);
  v6 = *(v4 + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager);
  v7 = [v6 fileManager];
  if (!v7)
  {
    __break(1u);
  }

  v8 = v7;
  v9 = sub_22A4DB4EC();
  v10 = [v8 fileExistsAtURL_];
  swift_unknownObjectRelease();

  if (v10)
  {
    v11 = [v6 fileManager];
    if (!v11)
    {
LABEL_18:
      __break(1u);
      return MEMORY[0x2822009F8](v11, v12, v13);
    }

    v14 = v11;
    v15 = sub_22A4DB4EC();
    v0[3] = 0;
    v16 = [v14 removeItemAtURL:v15 error:v0 + 3];

    swift_unknownObjectRelease();
    v17 = v0[3];
    if (!v16)
    {
      goto LABEL_13;
    }

    v18 = v17;
  }

  v11 = [v6 fileManager];
  if (!v11)
  {
    __break(1u);
    goto LABEL_18;
  }

  v19 = v11;
  v20 = sub_22A4DB4EC();
  v21 = sub_22A4DB4EC();
  v0[2] = 0;
  v22 = [v19 copyItemAtURL:v20 toURL:v21 error:v0 + 2];

  swift_unknownObjectRelease();
  v17 = v0[2];
  if (v22)
  {
    v23 = v0[11];
    v24 = v17;
    v11 = sub_22986FE14;
    v12 = v23;
    v13 = 0;

    return MEMORY[0x2822009F8](v11, v12, v13);
  }

LABEL_13:
  v26 = v0[8];
  v25 = v0[9];
  v27 = v0[6];
  v28 = v0[7];
  v29 = v17;
  sub_22A4DB3EC();

  swift_willThrow();
  v30 = *(v28 + 8);
  v30(v26, v27);
  v30(v25, v27);

  v31 = v0[1];

  return v31();
}

uint64_t sub_22986FE14()
{
  v1 = *(v0 + 96);
  sub_22979704C();
  *(v0 + 104) = v1;
  if (v1)
  {
    v2 = sub_229870058;
  }

  else
  {
    v2 = sub_22986FEC8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22986FEC8()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = *(v0[7] + 8);
  v3(v0[8], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_22986FFA0()
{
  (*(v0[7] + 8))(v0[9], v0[6]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_229870058()
{
  v1 = v0[9];
  v2 = v0[6];
  v3 = *(v0[7] + 8);
  v3(v0[8], v2);
  v3(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_229870130(uint64_t a1)
{
  v2[26] = a1;
  v2[27] = v1;
  v2[28] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[29] = v3;
  v2[30] = *(v3 - 8);
  v2[31] = swift_task_alloc();
  v2[32] = swift_task_alloc();
  v4 = sub_22A4DB57C();
  v2[33] = v4;
  v2[34] = *(v4 - 8);
  v2[35] = swift_task_alloc();
  v2[36] = swift_task_alloc();
  v5 = sub_22A4DB7DC();
  v2[37] = v5;
  v2[38] = *(v5 - 8);
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298702D8, 0, 0);
}

uint64_t sub_2298702D8()
{
  v100 = v0;
  v1 = [*(v0 + 208) uuidForKey_];
  if (!v1)
  {
    goto LABEL_13;
  }

  v2 = *(v0 + 216);
  v3 = v1;
  sub_22A4DB79C();

  v4 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager);
  v5 = sub_22A4DB77C();
  v6 = [v4 _homeWithUUID_];

  if (v6)
  {
    v7 = [*(v0 + 208) uuidForKey_];
    if (v7)
    {
      v8 = v7;
      sub_22A4DB79C();

      v9 = sub_22A4DB77C();
      v10 = [v6 accessoryWithUUID_];

      if (v10)
      {
        objc_opt_self();
        v11 = swift_dynamicCastObjCClass();
        if (v11)
        {
          v12 = v11;
          v13 = [v11 cameraProfiles];
          sub_229562F68(0, &qword_27D87D938, off_278666080);
          sub_22988FF24();
          v14 = sub_22A4DDB6C();

          if ((v14 & 0xC000000000000001) != 0)
          {
            v15 = sub_22A4DE0EC();
          }

          else
          {
            v15 = *(v14 + 16);
          }

          if (v15)
          {
            v26 = [*(v0 + 208) stringForKey_];
            if (v26)
            {
              v27 = *(v0 + 288);
              v28 = v26;
              sub_22A4DD5EC();

              sub_22A4DB4CC();

              sub_229888888(v27, v12);
              v29 = *(v0 + 312);
              v95 = *(v0 + 320);
              v30 = *(v0 + 296);
              v31 = *(v0 + 304);
              v32 = *(v0 + 288);
              v34 = *(v0 + 264);
              v33 = *(v0 + 272);

              (*(v33 + 8))(v32, v34);
              v35 = *(v31 + 8);
              v35(v29, v30);
              v35(v95, v30);
              goto LABEL_13;
            }

            v55 = *(v0 + 216);
            sub_229541CB0(*(v0 + 224), &off_283CE8678);
            v56 = v55;
            v57 = v10;
            v58 = sub_22A4DD05C();
            v59 = sub_22A4DDCEC();

            v60 = os_log_type_enabled(v58, v59);
            v61 = *(v0 + 256);
            v62 = *(v0 + 232);
            v63 = *(v0 + 240);
            v96 = v57;
            if (v60)
            {
              loga = v58;
              v64 = *(v0 + 216);
              v65 = swift_slowAlloc();
              v86 = swift_slowAlloc();
              v92 = swift_slowAlloc();
              *v65 = 136315394;
              v97 = v92;
              v98 = 91;
              v99 = 0xE100000000000000;
              v66 = v64;
              v90 = v61;
              v67 = v57;
              v68 = [v66 description];
              v88 = v62;
              v69 = sub_22A4DD5EC();
              v84 = v59;
              v71 = v70;

              MEMORY[0x22AAD08C0](v69, v71);

              MEMORY[0x22AAD08C0](93, 0xE100000000000000);
              v72 = sub_2295A3E30(91, 0xE100000000000000, &v97);

              *(v65 + 4) = v72;
              *(v65 + 12) = 2112;
              *(v65 + 14) = v12;
              *v86 = v12;
              v73 = v67;
              _os_log_impl(&dword_229538000, loga, v84, "%s Invalid content path: %@", v65, 0x16u);
              sub_22953EAE4(v86, &qword_27D87D7D0, &unk_22A578D90);
              MEMORY[0x22AAD4E50](v86, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v92);
              MEMORY[0x22AAD4E50](v92, -1, -1);
              MEMORY[0x22AAD4E50](v65, -1, -1);

              (*(v63 + 8))(v90, v88);
            }

            else
            {

              (*(v63 + 8))(v61, v62);
            }

            v75 = *(v0 + 312);
            v74 = *(v0 + 320);
            v76 = *(v0 + 296);
            v77 = *(v0 + 304);
            type metadata accessor for HMError(0);
            *(v0 + 184) = 3;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
            inited = swift_initStackObject();
            *(inited + 16) = xmmword_22A576180;
            *(inited + 32) = sub_22A4DD5EC();
            *(inited + 72) = MEMORY[0x277D837D0];
            *(inited + 40) = v81;
            *(inited + 48) = 0xD000000000000017;
            *(inited + 56) = 0x800000022A59A4B0;
            sub_22956AD8C(inited);
            swift_setDeallocating();
            sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
            sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
            sub_22A4DB3CC();
          }

          else
          {
            v36 = *(v0 + 216);
            sub_229541CB0(*(v0 + 224), &off_283CE8678);
            v37 = v36;
            v38 = v10;
            v39 = sub_22A4DD05C();
            v40 = sub_22A4DDCEC();

            v41 = os_log_type_enabled(v39, v40);
            v43 = *(v0 + 240);
            v42 = *(v0 + 248);
            v44 = *(v0 + 232);
            v96 = v38;
            if (v41)
            {
              log = v39;
              v45 = *(v0 + 216);
              v46 = swift_slowAlloc();
              v85 = swift_slowAlloc();
              v91 = swift_slowAlloc();
              *v46 = 136315394;
              v97 = v91;
              v98 = 91;
              v99 = 0xE100000000000000;
              v47 = v45;
              v89 = v42;
              v48 = v38;
              v49 = [v47 description];
              v87 = v44;
              v50 = sub_22A4DD5EC();
              v83 = v40;
              v52 = v51;

              MEMORY[0x22AAD08C0](v50, v52);

              MEMORY[0x22AAD08C0](93, 0xE100000000000000);
              v53 = sub_2295A3E30(91, 0xE100000000000000, &v97);

              *(v46 + 4) = v53;
              *(v46 + 12) = 2112;
              *(v46 + 14) = v12;
              *v85 = v12;
              v54 = v48;
              _os_log_impl(&dword_229538000, log, v83, "%s Accessory is not a camera: %@", v46, 0x16u);
              sub_22953EAE4(v85, &qword_27D87D7D0, &unk_22A578D90);
              MEMORY[0x22AAD4E50](v85, -1, -1);
              __swift_destroy_boxed_opaque_existential_0(v91);
              MEMORY[0x22AAD4E50](v91, -1, -1);
              MEMORY[0x22AAD4E50](v46, -1, -1);

              (*(v43 + 8))(v89, v87);
            }

            else
            {

              (*(v43 + 8))(v42, v44);
            }

            v75 = *(v0 + 312);
            v74 = *(v0 + 320);
            v76 = *(v0 + 296);
            v77 = *(v0 + 304);
            type metadata accessor for HMError(0);
            *(v0 + 200) = 48;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
            v78 = swift_initStackObject();
            *(v78 + 16) = xmmword_22A576180;
            *(v78 + 32) = sub_22A4DD5EC();
            *(v78 + 72) = MEMORY[0x277D837D0];
            *(v78 + 40) = v79;
            *(v78 + 48) = 0xD000000000000019;
            *(v78 + 56) = 0x800000022A59A4D0;
            sub_22956AD8C(v78);
            swift_setDeallocating();
            sub_22953EAE4(v78 + 32, &qword_27D87CDA0, &unk_22A57A930);
            sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
            sub_22A4DB3CC();
          }

          swift_willThrow();

          v82 = *(v77 + 8);
          v82(v75, v76);
          v82(v74, v76);

          v24 = *(v0 + 8);
          goto LABEL_16;
        }
      }

      else
      {
        v10 = v6;
      }

      v16 = *(v0 + 312);
      v17 = *(v0 + 320);
      v18 = *(v0 + 296);
      v19 = *(v0 + 304);

      v20 = *(v19 + 8);
      v20(v16, v18);
      v20(v17, v18);
    }

    else
    {
      (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
    }
  }

  else
  {
    (*(*(v0 + 304) + 8))(*(v0 + 320), *(v0 + 296));
  }

LABEL_13:
  v21 = [*(v0 + 208) stringForKey_];
  if (v21)
  {
    v22 = *(v0 + 280);
    v23 = v21;
    sub_22A4DD5EC();

    sub_22A4DB4CC();

    sub_229889C04(v22);
    (*(*(v0 + 272) + 8))(*(v0 + 280), *(v0 + 264));
  }

  v24 = *(v0 + 8);
LABEL_16:

  return v24();
}

uint64_t sub_229870DA0(uint64_t a1)
{
  v2[42] = a1;
  v2[43] = v1;
  v2[44] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[45] = v3;
  v2[46] = *(v3 - 8);
  v2[47] = swift_task_alloc();
  v2[48] = swift_task_alloc();
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v4 = sub_22A4DB7DC();
  v2[51] = v4;
  v2[52] = *(v4 - 8);
  v2[53] = swift_task_alloc();
  v2[54] = swift_task_alloc();
  v2[55] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229870F04, 0, 0);
}

uint64_t sub_229870F04()
{
  v130 = v0;
  v1 = [*(v0 + 336) uuidForKey_];
  if (!v1)
  {
LABEL_11:
    v35 = *(v0 + 344);
    sub_229541CB0(*(v0 + 352), &off_283CE8678);
    v36 = v35;
    v37 = sub_22A4DD05C();
    v38 = sub_22A4DDCEC();

    v39 = os_log_type_enabled(v37, v38);
    v41 = *(v0 + 368);
    v40 = *(v0 + 376);
    v42 = *(v0 + 360);
    if (v39)
    {
      v125 = *(v0 + 376);
      v43 = *(v0 + 344);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      *v44 = 136315138;
      v127 = v45;
      v128 = 91;
      v129 = 0xE100000000000000;
      v46 = v43;
      v47 = [v46 description];
      v48 = sub_22A4DD5EC();
      v122 = v42;
      v50 = v49;

      MEMORY[0x22AAD08C0](v48, v50);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v51 = sub_2295A3E30(91, 0xE100000000000000, &v127);

      *(v44 + 4) = v51;
      _os_log_impl(&dword_229538000, v37, v38, "%s Unable to find home", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x22AAD4E50](v45, -1, -1);
      MEMORY[0x22AAD4E50](v44, -1, -1);

      (*(v41 + 8))(v125, v122);
    }

    else
    {

      (*(v41 + 8))(v40, v42);
    }

    v52 = *(v0 + 336);
    type metadata accessor for HMError(0);
    *(v0 + 296) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_22A576180;
    *(inited + 32) = sub_22A4DD5EC();
    *(inited + 72) = MEMORY[0x277D837D0];
    *(inited + 40) = v54;
    *(inited + 48) = 0xD000000000000013;
    *(inited + 56) = 0x800000022A59A580;
    sub_22956AD8C(inited);
    swift_setDeallocating();
    sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    v55 = *(v0 + 288);
    v56 = sub_22A4DB3DC();

    [v52 respondWithError_];
    goto LABEL_17;
  }

  v2 = *(v0 + 344);
  v3 = v1;
  sub_22A4DB79C();

  v4 = *(v2 + OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager);
  v5 = sub_22A4DB77C();
  v6 = [v4 _homeWithUUID_];
  *(v0 + 448) = v6;

  if (!v6)
  {
    (*(*(v0 + 416) + 8))(*(v0 + 440), *(v0 + 408));
    goto LABEL_11;
  }

  v7 = [*(v0 + 336) arrayForKey_];
  if (!v7 || (v8 = v7, v9 = sub_22A4DD83C(), v8, v10 = sub_22986B2A8(v9), *(v0 + 456) = v10, , !v10))
  {
    v16 = *(v0 + 344);
    v17 = *(v0 + 336);
    sub_229541CB0(*(v0 + 352), &off_283CE8678);
    v18 = v16;
    v19 = v17;
    v20 = sub_22A4DD05C();
    v21 = sub_22A4DDCEC();

    v22 = os_log_type_enabled(v20, v21);
    v23 = *(v0 + 384);
    v24 = *(v0 + 360);
    v25 = *(v0 + 368);
    if (v22)
    {
      v124 = *(v0 + 384);
      v26 = *(v0 + 344);
      v117 = *(v0 + 336);
      v27 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v121 = swift_slowAlloc();
      *v27 = 136315394;
      v127 = v121;
      v128 = 91;
      v129 = 0xE100000000000000;
      v28 = v26;
      log = v24;
      v29 = [v28 description];
      v30 = sub_22A4DD5EC();
      v32 = v31;

      MEMORY[0x22AAD08C0](v30, v32);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v33 = sub_2295A3E30(91, 0xE100000000000000, &v127);

      *(v27 + 4) = v33;
      *(v27 + 12) = 2112;
      *(v27 + 14) = v117;
      *v115 = v117;
      v34 = v117;
      _os_log_impl(&dword_229538000, v20, v21, "%s No demo accessories list found: %@", v27, 0x16u);
      sub_22953EAE4(v115, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v115, -1, -1);
      __swift_destroy_boxed_opaque_existential_0(v121);
      MEMORY[0x22AAD4E50](v121, -1, -1);
      MEMORY[0x22AAD4E50](v27, -1, -1);

      (*(v25 + 8))(v124, log);
    }

    else
    {

      (*(v25 + 8))(v23, v24);
    }

    v57 = *(v0 + 440);
    v58 = *(v0 + 408);
    v59 = *(v0 + 416);
    type metadata accessor for HMError(0);
    *(v0 + 312) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
    v60 = swift_initStackObject();
    *(v60 + 16) = xmmword_22A576180;
    *(v60 + 32) = sub_22A4DD5EC();
    *(v60 + 72) = MEMORY[0x277D837D0];
    *(v60 + 40) = v61;
    *(v60 + 48) = 0xD00000000000001ELL;
    *(v60 + 56) = 0x800000022A59A5A0;
    sub_22956AD8C(v60);
    swift_setDeallocating();
    sub_22953EAE4(v60 + 32, &qword_27D87CDA0, &unk_22A57A930);
    sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
    sub_22A4DB3CC();
    swift_willThrow();

    (*(v59 + 8))(v57, v58);
    goto LABEL_17;
  }

  v11 = [*(v0 + 336) uuidForKey_];
  if (v11)
  {
    v12 = v11;
    sub_22A4DB79C();

    v13 = sub_22A4DB77C();
    v14 = [v6 roomWithUUID_];

    v15 = *(v0 + 432);
    if (!v14)
    {
      v75 = *(v0 + 416);
      v74 = *(v0 + 424);
      v76 = *(v0 + 408);
      v78 = *(v0 + 344);
      v77 = *(v0 + 352);

      sub_229541CB0(v77, &off_283CE8678);
      (*(v75 + 16))(v74, v15, v76);
      v79 = v78;
      v80 = v6;
      v81 = sub_22A4DD05C();
      v82 = sub_22A4DDCEC();

      v123 = v80;
      v83 = os_log_type_enabled(v81, v82);
      v84 = *(v0 + 416);
      v85 = *(v0 + 424);
      v86 = *(v0 + 400);
      v87 = *(v0 + 408);
      v89 = *(v0 + 360);
      v88 = *(v0 + 368);
      if (v83)
      {
        loga = v81;
        v90 = *(v0 + 344);
        v116 = v82;
        v91 = swift_slowAlloc();
        v118 = swift_slowAlloc();
        *v91 = 136315650;
        v127 = v118;
        v128 = 91;
        v129 = 0xE100000000000000;
        v92 = v90;
        v114 = v89;
        v93 = [v92 description];
        v113 = v86;
        v94 = sub_22A4DD5EC();
        v96 = v95;

        MEMORY[0x22AAD08C0](v94, v96);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v97 = sub_2295A3E30(91, 0xE100000000000000, &v127);

        *(v91 + 4) = v97;
        *(v91 + 12) = 2080;
        sub_22988FA1C(&qword_281403860, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v98 = sub_22A4DE5CC();
        v100 = v99;
        v126 = *(v84 + 8);
        v126(v85, v87);
        v101 = sub_2295A3E30(v98, v100, &v127);

        *(v91 + 14) = v101;
        *(v91 + 22) = 2080;
        v102 = v123;
        v103 = [v123 shortDescription];
        v104 = sub_22A4DD5EC();
        v106 = v105;

        v107 = sub_2295A3E30(v104, v106, &v127);

        *(v91 + 24) = v107;
        _os_log_impl(&dword_229538000, loga, v116, "%s Unable to find room: %s in %s", v91, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v118, -1, -1);
        MEMORY[0x22AAD4E50](v91, -1, -1);

        (*(v88 + 8))(v113, v114);
      }

      else
      {

        v126 = *(v84 + 8);
        v126(v85, v87);
        (*(v88 + 8))(v86, v89);
        v102 = v123;
      }

      v109 = *(v0 + 432);
      v108 = *(v0 + 440);
      v110 = *(v0 + 408);
      type metadata accessor for HMError(0);
      *(v0 + 328) = 2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
      v111 = swift_initStackObject();
      *(v111 + 16) = xmmword_22A576180;
      *(v111 + 32) = sub_22A4DD5EC();
      *(v111 + 72) = MEMORY[0x277D837D0];
      *(v111 + 40) = v112;
      *(v111 + 48) = 0xD000000000000013;
      *(v111 + 56) = 0x800000022A59A5C0;
      sub_22956AD8C(v111);
      swift_setDeallocating();
      sub_22953EAE4(v111 + 32, &qword_27D87CDA0, &unk_22A57A930);
      sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
      sub_22A4DB3CC();
      swift_willThrow();

      v126(v109, v110);
      v126(v108, v110);
      goto LABEL_17;
    }

    (*(*(v0 + 416) + 8))(*(v0 + 432), *(v0 + 408));
  }

  else
  {
    v14 = 0;
  }

  *(v0 + 464) = v14;
  v64 = *(v10 + 16);
  *(v0 + 472) = v64;
  if (v64)
  {
    *(v0 + 480) = 0;
    *(v0 + 488) = 0;
    v65 = *(*(v0 + 456) + 32);
    *(v0 + 496) = v65;

    if (*(v65 + 16) && (v66 = sub_229543DBC(0x424472747461, 0xE600000000000000), (v67 & 1) != 0))
    {
      sub_2295404B0(*(v65 + 56) + 32 * v66, v0 + 256);
      sub_22953EAE4(v0 + 256, &unk_27D87DE60, &unk_22A57A960);
      v68 = swift_task_alloc();
      *(v0 + 520) = v68;
      *v68 = v0;
      v68[1] = sub_2298726E8;
      v69 = *(v0 + 464);
      v70 = *(v0 + 448);

      return sub_22987C38C(v65, v70, v69);
    }

    else
    {
      *(v0 + 256) = 0u;
      *(v0 + 272) = 0u;
      sub_22953EAE4(v0 + 256, &unk_27D87DE60, &unk_22A57A960);
      v71 = swift_task_alloc();
      *(v0 + 504) = v71;
      *v71 = v0;
      v71[1] = sub_229871D8C;
      v72 = *(v0 + 464);
      v73 = *(v0 + 448);

      return sub_2295A8D20(v65, v73, v72);
    }
  }

  (*(*(v0 + 416) + 8))(*(v0 + 440), *(v0 + 408));
LABEL_17:

  v62 = *(v0 + 8);

  return v62();
}

uint64_t sub_229871D8C()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 512) = v0;
    v3 = sub_2298721C0;
  }

  else
  {

    v3 = sub_229871EB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229871EB4()
{
  v1 = *(v0 + 488) + 1;
  if (v1 == *(v0 + 472))
  {
    v2 = *(v0 + 480);

    v3 = *(v0 + 464);
    v4 = *(v0 + 448);
    if (v2)
    {
      v5 = *(v0 + 440);
      v6 = *(v0 + 408);
      v7 = *(v0 + 416);
      swift_willThrow();

      (*(v7 + 8))(v5, v6);
    }

    else
    {

      (*(*(v0 + 416) + 8))(*(v0 + 440), *(v0 + 408));
    }

    v8 = *(v0 + 8);

    return v8();
  }

  else
  {
    *(v0 + 488) = v1;
    v9 = *(*(v0 + 456) + 8 * v1 + 32);
    *(v0 + 496) = v9;

    if (*(v9 + 16) && (v10 = sub_229543DBC(0x424472747461, 0xE600000000000000), (v11 & 1) != 0))
    {
      sub_2295404B0(*(v9 + 56) + 32 * v10, v0 + 256);
      sub_22953EAE4(v0 + 256, &unk_27D87DE60, &unk_22A57A960);
      v12 = swift_task_alloc();
      *(v0 + 520) = v12;
      *v12 = v0;
      v12[1] = sub_2298726E8;
      v13 = *(v0 + 464);
      v14 = *(v0 + 448);

      return sub_22987C38C(v9, v14, v13);
    }

    else
    {
      *(v0 + 256) = 0u;
      *(v0 + 272) = 0u;
      sub_22953EAE4(v0 + 256, &unk_27D87DE60, &unk_22A57A960);
      v16 = swift_task_alloc();
      *(v0 + 504) = v16;
      *v16 = v0;
      v16[1] = sub_229871D8C;
      v17 = *(v0 + 464);
      v18 = *(v0 + 448);

      return sub_2295A8D20(v9, v18, v17);
    }
  }
}

uint64_t sub_2298721C0()
{
  v42 = v0;
  v1 = *(v0 + 512);
  sub_229541CB0(*(v0 + 352), &off_283CE8678);

  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCEC();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 512);
    v37 = *(v0 + 480);
    v38 = *(v0 + 368);
    v39 = *(v0 + 360);
    v40 = *(v0 + 392);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v41 = v8;
    *v6 = 136315394;
    v9 = sub_22A4DD4AC();
    v11 = v10;

    v12 = sub_2295A3E30(v9, v11, &v41);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v14;
    *v7 = v14;
    _os_log_impl(&dword_229538000, v3, v4, "Failed to create demo accessory: %s with error: %@", v6, 0x16u);
    sub_22953EAE4(v7, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v8);
    MEMORY[0x22AAD4E50](v8, -1, -1);
    MEMORY[0x22AAD4E50](v6, -1, -1);

    (*(v38 + 8))(v40, v39);
  }

  else
  {
    v15 = *(v0 + 480);
    v16 = *(v0 + 392);
    v17 = *(v0 + 360);
    v18 = *(v0 + 368);

    (*(v18 + 8))(v16, v17);
  }

  v19 = *(v0 + 512);
  v20 = *(v0 + 488) + 1;
  if (v20 == *(v0 + 472))
  {

    v21 = *(v0 + 464);
    v22 = *(v0 + 448);
    if (v19)
    {
      v23 = *(v0 + 440);
      v24 = *(v0 + 408);
      v25 = *(v0 + 416);
      swift_willThrow();

      (*(v25 + 8))(v23, v24);
    }

    else
    {

      (*(*(v0 + 416) + 8))(*(v0 + 440), *(v0 + 408));
    }

    v26 = *(v0 + 8);

    return v26();
  }

  else
  {
    *(v0 + 480) = v19;
    *(v0 + 488) = v20;
    v27 = *(*(v0 + 456) + 8 * v20 + 32);
    *(v0 + 496) = v27;

    if (*(v27 + 16) && (v28 = sub_229543DBC(0x424472747461, 0xE600000000000000), (v29 & 1) != 0))
    {
      sub_2295404B0(*(v27 + 56) + 32 * v28, v0 + 256);
      sub_22953EAE4(v0 + 256, &unk_27D87DE60, &unk_22A57A960);
      v30 = swift_task_alloc();
      *(v0 + 520) = v30;
      *v30 = v0;
      v30[1] = sub_2298726E8;
      v31 = *(v0 + 464);
      v32 = *(v0 + 448);

      return sub_22987C38C(v27, v32, v31);
    }

    else
    {
      *(v0 + 256) = 0u;
      *(v0 + 272) = 0u;
      sub_22953EAE4(v0 + 256, &unk_27D87DE60, &unk_22A57A960);
      v34 = swift_task_alloc();
      *(v0 + 504) = v34;
      *v34 = v0;
      v34[1] = sub_229871D8C;
      v35 = *(v0 + 464);
      v36 = *(v0 + 448);

      return sub_2295A8D20(v27, v36, v35);
    }
  }
}

uint64_t sub_2298726E8()
{
  v2 = *v1;

  if (v0)
  {
    *(v2 + 512) = v0;
    v3 = sub_2298721C0;
  }

  else
  {

    v3 = sub_229871EB4;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_229872810(uint64_t a1)
{
  v2[85] = v1;
  v2[84] = a1;
  v3 = sub_22A4DB57C();
  v2[86] = v3;
  v2[87] = *(v3 - 8);
  v2[88] = swift_task_alloc();
  v2[89] = swift_task_alloc();
  v2[90] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2298728EC, 0, 0);
}

void sub_2298728EC()
{
  v1 = [*(v0 + 672) numberForKey_];
  if (v1)
  {
    v2 = v1;
    sub_22A4DDFEC();
  }

  type metadata accessor for HMError(0);
  *(v0 + 584) = 3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = 0x6E6F73616552;
  v4 = inited + 32;
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = 0xD000000000000022;
  *(inited + 56) = 0x800000022A59A640;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(v4, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  swift_willThrow();

  v5 = *(v0 + 8);

  v5();
}

uint64_t sub_229873554(uint64_t a1)
{
  v3 = *v2;
  *(*v2 + 744) = a1;

  if (v1)
  {

    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_2298736D8, 0, 0);
  }
}

uint64_t sub_2298736D8()
{
  v1 = *(v0 + 744);
  if (!v1)
  {
    v1 = sub_22956AC5C(MEMORY[0x277D84F90]);
  }

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_229873778(uint64_t a1)
{
  v4 = *v2;

  v6 = *(v4 + 8);
  if (!v1)
  {
    v5 = a1;
  }

  return v6(v5);
}

uint64_t sub_2298738E4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](sub_229873A40, 0, 0);
  }
}

uint64_t sub_229873A40()
{
  v1 = sub_22956AC5C(MEMORY[0x277D84F90]);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_229873AD8()
{
  *(*v1 + 776) = v0;

  if (v0)
  {
    v2 = sub_229873D10;
  }

  else
  {

    v2 = sub_2298906FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229873BF4()
{
  *(*v1 + 800) = v0;

  if (v0)
  {
    v2 = sub_229873D9C;
  }

  else
  {

    v2 = sub_2298906FC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229873D10()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_229873D9C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_229873E90()
{
  v46 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v2 = sub_22A4DD27C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v32[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_22A4DD07C();
  v38 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v32[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = *&v0[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_notificationCenter];
  [v9 addObserver:v0 selector:sel_handleNotification_ name:@"HMDAccessoryConfiguredNotification" object:0];
  [v9 addObserver:v0 selector:sel_handleNotification_ name:@"HMDHomeAccessoryRemovedNotification" object:0];
  [v9 addObserver:v0 selector:sel_handleNotification_ name:@"HMDHomeRemovedNotification" object:0];
  [v9 addObserver:v0 selector:sel_handleNotification_ name:@"HMDHomeAddedNotification" object:0];
  [v9 addObserver:v0 selector:sel_handleNotification_ name:@"HMDAccessoryNameUpdatedNotification" object:0];
  if ([*&v0[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_demoModeDataSource] isDemoModeLocked])
  {
    v36 = v6;
    v37 = v2;
    sub_229541CB0(ObjectType, &off_283CE8678);
    v10 = v0;
    v11 = sub_22A4DD05C();
    v12 = sub_22A4DDCCC();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v35 = ObjectType;
      v14 = v13;
      v34 = swift_slowAlloc();
      *out_token = v34;
      *v14 = 136315138;
      aBlock = 91;
      v40 = 0xE100000000000000;
      v15 = v10;
      v16 = [v15 description];
      v33 = v12;
      v17 = v16;
      v18 = sub_22A4DD5EC();
      v19 = v3;
      v20 = v10;
      v22 = v21;

      MEMORY[0x22AAD08C0](v18, v22);
      v10 = v20;
      v3 = v19;

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v23 = sub_2295A3E30(aBlock, v40, out_token);

      *(v14 + 4) = v23;
      _os_log_impl(&dword_229538000, v11, v33, "%s Registering for shallow refresh", v14, 0xCu);
      v24 = v34;
      __swift_destroy_boxed_opaque_existential_0(v34);
      MEMORY[0x22AAD4E50](v24, -1, -1);
      v25 = v14;
      ObjectType = v35;
      MEMORY[0x22AAD4E50](v25, -1, -1);
    }

    (*(v38 + 8))(v8, v36);
    out_token[0] = -1;
    v26 = *MEMORY[0x277D29558];
    sub_229562F68(0, &qword_281401980, 0x277D85C78);
    v27 = v37;
    (*(v3 + 104))(v5, *MEMORY[0x277D851C8], v37);
    v28 = sub_22A4DDDEC();
    (*(v3 + 8))(v5, v27);
    v29 = swift_allocObject();
    *(v29 + 16) = v10;
    *(v29 + 24) = ObjectType;
    v43 = sub_22988FB94;
    v44 = v29;
    aBlock = MEMORY[0x277D85DD0];
    v40 = 1107296256;
    v41 = sub_2298747B8;
    v42 = &block_descriptor_46_1;
    v30 = _Block_copy(&aBlock);
    v31 = v10;

    notify_register_dispatch(v26, out_token, v28, v30);
    _Block_release(v30);
  }
}

uint64_t sub_2298743A4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  v8 = sub_22A4DD9DC();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a3;
  v10 = a2;
  sub_22957F3C0(0, 0, v7, &unk_22A586840, v9);
}

uint64_t sub_2298744B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = sub_22A4DD07C();
  v5[4] = v6;
  v5[5] = *(v6 - 8);
  v5[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229874570, 0, 0);
}

uint64_t sub_229874570()
{
  v24 = v0;
  v1 = v0[2];
  sub_229541CB0(v0[3], &off_283CE8678);
  v2 = v1;
  v3 = sub_22A4DD05C();
  v4 = sub_22A4DDCCC();

  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[5];
  v6 = v0[6];
  v8 = v0[4];
  if (v5)
  {
    v22 = v0[6];
    v9 = v0[2];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    *v10 = 136315138;
    v23[0] = v11;
    v23[1] = 91;
    v23[2] = 0xE100000000000000;
    v12 = v9;
    v13 = [v12 description];
    v14 = sub_22A4DD5EC();
    v21 = v8;
    v16 = v15;

    MEMORY[0x22AAD08C0](v14, v16);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v17 = sub_2295A3E30(91, 0xE100000000000000, v23);

    *(v10 + 4) = v17;
    _os_log_impl(&dword_229538000, v3, v4, "%s Received shallow refresh notification. Relaunching homed", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v11);
    MEMORY[0x22AAD4E50](v11, -1, -1);
    MEMORY[0x22AAD4E50](v10, -1, -1);

    (*(v7 + 8))(v22, v21);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v18 = [objc_opt_self() driver];
  [v18 relaunch];

  v19 = v0[1];

  return v19();
}

uint64_t sub_2298747B8(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

void sub_22987480C(uint64_t a1)
{
  v132 = *MEMORY[0x277D85DE8];
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  MEMORY[0x28223BE20](v2 - 8);
  v114 = &v109 - v3;
  v4 = sub_22A4DB21C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v109 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = sub_22A4DD07C();
  v116 = *(v117 - 8);
  MEMORY[0x28223BE20](v117);
  v118 = &v109 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v109 - v10;
  v121 = sub_22A4DB57C();
  v119 = *(v121 - 8);
  v12 = MEMORY[0x28223BE20](v121);
  v115 = &v109 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v15 = &v109 - v14;
  v122 = sub_22A4DB1EC();
  v16 = sub_22A4DD5EC();
  v18 = v17;
  if (v16 == sub_22A4DD5EC() && v18 == v19)
  {

    v20 = v122;
  }

  else
  {
    v21 = sub_22A4DE60C();

    v20 = v122;
    if ((v21 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v22 = sub_22A4DB20C();
  if (!v22)
  {
    goto LABEL_14;
  }

  v23 = v22;
  v124 = sub_22A4DD5EC();
  v125 = v24;
  sub_22A4DE18C();
  if (!*(v23 + 16) || (v25 = sub_2295402E8(&v126), (v26 & 1) == 0))
  {

    sub_22954045C(&v126);
LABEL_14:
    v129 = 0u;
    v130 = 0u;
    goto LABEL_15;
  }

  sub_2295404B0(*(v23 + 56) + 32 * v25, &v129);
  sub_22954045C(&v126);

  if (!*(&v130 + 1))
  {
LABEL_15:
    sub_22953EAE4(&v129, &unk_27D87DE60, &unk_22A57A960);
    goto LABEL_16;
  }

  sub_229562F68(0, &qword_2814017B0, off_278666198);
  if (swift_dynamicCast())
  {
    v27 = v126;
    v28 = [v126 hapAccessories];
    sub_229562F68(0, &qword_281401B70, off_278666148);
    v29 = sub_22A4DD83C();

    v116 = v27;
    if (v29 >> 62)
    {
LABEL_73:
      v30 = sub_22A4DE0EC();
      if (v30)
      {
        goto LABEL_12;
      }
    }

    else
    {
      v30 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v30)
      {
LABEL_12:
        v31 = 0;
        v117 = OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager;
        ObjectType = v29 & 0xC000000000000001;
        v118 = (v29 & 0xFFFFFFFFFFFFFF8);
        v119 += 8;
        do
        {
          if (ObjectType)
          {
            v67 = MEMORY[0x22AAD13F0](v31, v29);
          }

          else
          {
            if (v31 >= *(v118 + 2))
            {
              goto LABEL_72;
            }

            v67 = *(v29 + 8 * v31 + 32);
          }

          v68 = v67;
          v69 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            __break(1u);
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v70 = [*&v123[v117] fileManager];
          if (!v70)
          {
            __break(1u);
LABEL_77:
            __break(1u);
            return;
          }

          v71 = v70;
          v72 = [v68 demoModePath];
          sub_22A4DD5EC();

          sub_22A4DB4CC();

          v73 = sub_22A4DB4EC();
          v74 = [v71 fileExistsAtURL_];

          if (v74)
          {
            v75 = sub_22A4DB4EC();
            v126 = 0;
            v76 = [v71 removeItemAtURL:v75 error:&v126];

            if ((v76 & 1) == 0)
            {
              v77 = v126;
              v78 = sub_22A4DB3EC();

              swift_willThrow();
              swift_unknownObjectRelease();
              goto LABEL_30;
            }

            v66 = v126;
          }

          swift_unknownObjectRelease();

LABEL_30:
          (*v119)(v15, v121);
          ++v31;
        }

        while (v69 != v30);
      }
    }

    return;
  }

LABEL_16:
  v32 = sub_22A4DD5EC();
  v34 = v33;
  if (v32 == sub_22A4DD5EC() && v34 == v35)
  {

LABEL_20:
    v37 = sub_22A4DD9DC();
    (*(*(v37 - 8) + 56))(v11, 1, 1, v37);
    v38 = swift_allocObject();
    v38[2] = 0;
    v38[3] = 0;
    v39 = v123;
    v40 = ObjectType;
    v38[4] = v123;
    v38[5] = v40;
    v41 = v39;
    sub_22957F3C0(0, 0, v11, &unk_22A586860, v38);

    return;
  }

  v36 = sub_22A4DE60C();

  if (v36)
  {
    goto LABEL_20;
  }

  sub_22A4DB1FC();
  if (v128)
  {
    sub_229562F68(0, &qword_281401B70, off_278666148);
    if (swift_dynamicCast())
    {
      v42 = v129;
      v131 = v129;
      goto LABEL_24;
    }
  }

  else
  {
    sub_22953EAE4(&v126, &unk_27D87DE60, &unk_22A57A960);
  }

  v79 = sub_22A4DB20C();
  if (!v79)
  {
    goto LABEL_48;
  }

  v80 = v79;
  v124 = sub_22A4DD5EC();
  v125 = v81;
  sub_22A4DE18C();
  if (!*(v80 + 16) || (v82 = sub_2295402E8(&v126), (v83 & 1) == 0))
  {

    sub_22954045C(&v126);
LABEL_48:
    v129 = 0u;
    v130 = 0u;
    goto LABEL_49;
  }

  sub_2295404B0(*(v80 + 56) + 32 * v82, &v129);
  sub_22954045C(&v126);

  if (!*(&v130 + 1))
  {
LABEL_49:
    sub_22953EAE4(&v129, &unk_27D87DE60, &unk_22A57A960);
    v131 = 0;
    goto LABEL_50;
  }

  sub_229562F68(0, &qword_281401B70, off_278666148);
  if (swift_dynamicCast())
  {
    v42 = v131;
  }

  else
  {
    v42 = 0;
    v131 = 0;
  }

LABEL_24:
  if (!v42)
  {
LABEL_50:

    return;
  }

  if (([v42 isDemoAccessory] & 1) == 0)
  {

    return;
  }

  v43 = v118;
  sub_229541CB0(ObjectType, &off_283CE8678);
  v44 = v43;
  (*(v5 + 16))(v7, a1, v4);
  v45 = v123;
  v46 = sub_22A4DD05C();
  v47 = sub_22A4DDCCC();

  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    v123 = v42;
    v49 = v48;
    v110 = v48;
    v113 = swift_slowAlloc();
    *&v129 = v113;
    *v49 = 136315394;
    v126 = 91;
    v127 = 0xE100000000000000;
    v50 = v45;
    v112 = v46;
    v51 = v50;
    v52 = v45;
    v53 = [v50 description];
    v54 = sub_22A4DD5EC();
    v111 = v47;
    v56 = v55;

    v45 = v52;
    v57 = v54;
    v20 = v122;
    MEMORY[0x22AAD08C0](v57, v56);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v58 = sub_2295A3E30(v126, v127, &v129);

    v59 = v110;
    *(v110 + 4) = v58;
    *(v59 + 12) = 2080;
    sub_22988FA1C(&unk_2814038C0, MEMORY[0x277CC8900], MEMORY[0x277CC8910]);
    v60 = sub_22A4DE5CC();
    v62 = v61;
    (*(v5 + 8))(v7, v4);
    v63 = sub_2295A3E30(v60, v62, &v129);

    *(v59 + 14) = v63;
    v64 = v112;
    _os_log_impl(&dword_229538000, v112, v111, "%s Handling notification: %s", v59, 0x16u);
    v65 = v113;
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v65, -1, -1);
    v42 = v123;
    MEMORY[0x22AAD4E50](v59, -1, -1);

    (*(v116 + 1))(v118, v117);
  }

  else
  {

    (*(v5 + 8))(v7, v4);
    (*(v116 + 1))(v44, v117);
  }

  v84 = sub_22A4DD5EC();
  v86 = v85;
  if (v84 == sub_22A4DD5EC() && v86 == v87)
  {
  }

  else
  {
    v88 = sub_22A4DE60C();

    if ((v88 & 1) == 0)
    {
      v93 = sub_22A4DD5EC();
      v95 = v94;
      if (v93 == sub_22A4DD5EC() && v95 == v96)
      {
      }

      else
      {
        v97 = sub_22A4DE60C();

        if ((v97 & 1) == 0)
        {
          v101 = sub_22A4DD5EC();
          v103 = v102;
          if (v101 == sub_22A4DD5EC() && v103 == v104)
          {
          }

          else
          {
            v105 = sub_22A4DE60C();

            if ((v105 & 1) == 0)
            {

              return;
            }
          }

          v106 = sub_22A4DD9DC();
          (*(*(v106 - 8) + 56))(v11, 1, 1, v106);
          v107 = swift_allocObject();
          v107[2] = 0;
          v107[3] = 0;
          v107[4] = v45;
          v107[5] = v42;
          v107[6] = ObjectType;
          v108 = v45;
          sub_22957F3C0(0, 0, v11, &unk_22A586850, v107);

          return;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_22A576190;
      *(inited + 32) = v42;
      v99 = v114;
      (*(v119 + 56))(v114, 1, 1, v121);
      v100 = v42;
      sub_229875850(inited, v99);
      sub_22953EAE4(v99, &qword_27D880180, &unk_22A586590);

      return;
    }
  }

  v89 = [*&v45[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] fileManager];
  if (!v89)
  {
    goto LABEL_77;
  }

  v90 = v89;
  v91 = [v42 demoModePath];
  sub_22A4DD5EC();

  v92 = v115;
  sub_22A4DB4CC();

  sub_2297AF034(v90);
  swift_unknownObjectRelease();

  (*(v119 + 8))(v92, v121);
}

id sub_229875850(unint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  v151 = a2;
  ObjectType = swift_getObjectType();
  v177 = sub_22A4DD07C();
  v149 = *(v177 - 8);
  v7 = MEMORY[0x28223BE20](v177);
  v9 = &v139 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v167 = &v139 - v10;
  v153 = sub_22A4DB7DC();
  v11 = *(v153 - 8);
  MEMORY[0x28223BE20](v153);
  v152 = &v139 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v164 = &v139 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v162 = &v139 - v16;
  v17 = sub_22A4DB57C();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v144 = &v139 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v143 = &v139 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v145 = &v139 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v150 = &v139 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v28 = MEMORY[0x28223BE20](v27);
  v180 = &v139 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v161 = &v139 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v181 = &v139 - v35;
  v36 = v32;
  v168 = v32;
  v166 = v5;
  if (!a1)
  {
    v39 = v164;
    goto LABEL_29;
  }

  v37 = a1 & 0xFFFFFFFFFFFFFF8;
  v141 = a1;
  v173 = v33;
  if (a1 >> 62)
  {
LABEL_43:
    v38 = sub_22A4DE0EC();
  }

  else
  {
    v38 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v39 = v164;
  if (!v38)
  {
LABEL_29:
    sub_229564F88(v151, v39, &qword_27D880180, &unk_22A586590);
    if ((*(v18 + 48))(v39, 1, v36) == 1)
    {
      return sub_22953EAE4(v39, &qword_27D880180, &unk_22A586590);
    }

    v98 = v5;
    v99 = v150;
    (*(v18 + 32))(v150, v39, v36);
    result = [*&v98[OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager] fileManager];
    if (result)
    {
      v100 = result;
      v101 = sub_22A4DB4EC();
      v102 = [v100 fileExistsAtURL_];

      swift_unknownObjectRelease();
      if (v102)
      {
        v103 = v9;
        v104 = v168;
        if (qword_27D87BAB0 != -1)
        {
          swift_once();
        }

        v105 = __swift_project_value_buffer(v104, qword_27D8AB9F8);
        v106 = *(v18 + 16);
        v107 = v145;
        v106(v145, v105, v104);
        sub_229541CB0(ObjectType, &off_283CE8678);
        v106(v143, v150, v104);
        v106(v144, v107, v104);
        v108 = v166;
        v109 = v18;
        v110 = sub_22A4DD05C();
        v111 = sub_22A4DDCCC();

        if (os_log_type_enabled(v110, v111))
        {
          v112 = swift_slowAlloc();
          v140 = v103;
          v113 = v112;
          v184 = swift_slowAlloc();
          v188 = v184;
          *v113 = 136315650;
          v186 = 91;
          v187 = 0xE100000000000000;
          v114 = v108;
          v183 = v111;
          v115 = v114;
          v116 = [v114 description];
          v182 = v110;
          v117 = v116;
          v118 = sub_22A4DD5EC();
          v171 = v4;
          v119 = v118;
          v121 = v120;

          MEMORY[0x22AAD08C0](v119, v121);

          MEMORY[0x22AAD08C0](93, 0xE100000000000000);
          v122 = sub_2295A3E30(v186, v187, &v188);

          *(v113 + 4) = v122;
          *(v113 + 12) = 2080;
          sub_22988FA1C(&qword_27D87E238, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
          v123 = v143;
          v124 = sub_22A4DE5CC();
          v126 = v125;
          v185 = v108;
          v160 = v109;
          v127 = *(v109 + 8);
          v127(v123, v104);
          v128 = sub_2295A3E30(v124, v126, &v188);

          *(v113 + 14) = v128;
          *(v113 + 22) = 2080;
          v129 = v144;
          v130 = sub_22A4DE5CC();
          v132 = v131;
          v127(v129, v104);
          v133 = sub_2295A3E30(v130, v132, &v188);

          *(v113 + 24) = v133;
          v134 = v182;
          _os_log_impl(&dword_229538000, v182, v183, "%s Loading face recongnition from: %s to %s", v113, 0x20u);
          v135 = v184;
          swift_arrayDestroy();
          MEMORY[0x22AAD4E50](v135, -1, -1);
          MEMORY[0x22AAD4E50](v113, -1, -1);

          (*(v149 + 8))(v140, v177);
        }

        else
        {

          v127 = *(v18 + 8);
          v127(v144, v104);
          v127(v143, v104);
          (*(v149 + 8))(v103, v177);
        }

        v136 = v150;
        v137 = v145;
        sub_229881854(v150, v145);
        v138 = v168;
        v127(v137, v168);
        return (v127)(v136, v138);
      }

      else
      {
        return (*(v18 + 8))(v99, v168);
      }
    }

    else
    {
LABEL_45:
      __break(1u);
    }

    return result;
  }

  v158 = OBJC_IVAR____TtC13HomeKitDaemon15DemoModeManager_homeManager;
  v159 = v141 & 0xC000000000000001;
  v157 = v141 + 32;
  v185 = (v18 + 8);
  v156 = (v18 + 56);
  v155 = (v18 + 32);
  v154 = (v18 + 48);
  v142 = (v11 + 8);
  v11 = 0;
  v176 = (v18 + 16);
  v172 = (v149 + 8);
  *&v34 = 136315650;
  v165 = v34;
  v147 = v38;
  v140 = v9;
  v160 = v18;
  v148 = v37;
  while (1)
  {
    if (v159)
    {
      v40 = MEMORY[0x22AAD13F0](v11, v141);
    }

    else
    {
      if (v11 >= *(v37 + 16))
      {
        goto LABEL_42;
      }

      v40 = *(v157 + 8 * v11);
    }

    v182 = v40;
    if (__OFADD__(v11++, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v163 = v11;
    result = [*&v5[v158] fileManager];
    if (!result)
    {
      __break(1u);
      goto LABEL_45;
    }

    v43 = result;
    v44 = [v182 demoModeCameraPath];
    sub_22A4DD5EC();

    v45 = v161;
    sub_22A4DB4CC();

    v46 = sub_22A4DB4EC();
    v47 = [v43 fileExistsAtURL_];

    swift_unknownObjectRelease();
    if (v47)
    {
      v48 = v162;
      v36 = v168;
      (*v155)(v162, v45, v168);
      v49 = 0;
      v18 = v160;
    }

    else
    {
      v36 = v168;
      (*v185)(v45, v168);
      v49 = 1;
      v18 = v160;
      v48 = v162;
    }

    (*v156)(v48, v49, 1, v36);
    v50 = (*v154)(v48, 1, v36);
    v39 = v164;
    v11 = v163;
    if (v50 != 1)
    {
      break;
    }

    sub_22953EAE4(v48, &qword_27D880180, &unk_22A586590);
LABEL_25:
    v37 = v148;
    if (v11 == v147)
    {
      goto LABEL_29;
    }
  }

  (*(v18 + 32))(v181, v48, v36);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D130, &qword_22A578028);
  v51 = *(v18 + 72);
  v52 = v36;
  v53 = (*(v18 + 80) + 32) & ~*(v18 + 80);
  v54 = swift_allocObject();
  if (qword_27D87BAB0 != -1)
  {
    v97 = v54;
    swift_once();
    v54 = v97;
  }

  v146 = v54;
  v55 = v54 + v53;
  __swift_project_value_buffer(v52, qword_27D8AB9F8);
  v56 = v182;
  v57 = [v182 name];
  sub_22A4DD5EC();

  sub_22A4DB4FC();

  v58 = [v56 uuid];
  v59 = v152;
  sub_22A4DB79C();

  sub_22A4DB76C();
  (*v142)(v59, v153);
  v179 = v55;
  sub_22A4DB4FC();

  v60 = 0;
  v61 = 0;
  v174 = *v176;
  v175 = v51;
  v62 = v167;
  v63 = v168;
  v64 = v180;
  while (1)
  {
    v183 = v60;
    v65 = v174;
    v174(v64, v179 + v61 * v51, v63);
    sub_229541CB0(ObjectType, &off_283CE8678);
    v66 = v63;
    v67 = v173;
    v65(v173, v64, v66);
    v68 = v5;
    v69 = v182;
    v70 = v62;
    v71 = sub_22A4DD05C();
    v72 = sub_22A4DDCCC();

    v73 = os_log_type_enabled(v71, v72);
    v184 = v69;
    if (v73)
    {
      v74 = swift_slowAlloc();
      v170 = swift_slowAlloc();
      v188 = v170;
      *v74 = v165;
      v186 = 91;
      v187 = 0xE100000000000000;
      v75 = v68;
      v76 = [v75 description];
      v171 = v4;
      v77 = v76;
      v78 = sub_22A4DD5EC();
      v169 = v72;
      v79 = v78;
      v81 = v80;

      MEMORY[0x22AAD08C0](v79, v81);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v82 = sub_2295A3E30(v186, v187, &v188);

      *(v74 + 4) = v82;
      *(v74 + 12) = 2080;
      v83 = [v69 shortDescription];
      v84 = sub_22A4DD5EC();
      v86 = v85;

      v87 = sub_2295A3E30(v84, v86, &v188);

      *(v74 + 14) = v87;
      *(v74 + 22) = 2080;
      v88 = sub_22A4DB52C();
      v90 = v89;
      v91 = *v185;
      v92 = v67;
      v63 = v168;
      (*v185)(v92, v168);
      v93 = sub_2295A3E30(v88, v90, &v188);
      v4 = v171;

      *(v74 + 24) = v93;
      _os_log_impl(&dword_229538000, v71, v169, "%s Loading camera contents for %s to %s", v74, 0x20u);
      v94 = v170;
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v94, -1, -1);
      v95 = v74;
      v5 = v166;
      MEMORY[0x22AAD4E50](v95, -1, -1);

      v62 = v167;
      (*v172)(v167, v177);
    }

    else
    {

      v91 = *v185;
      (*v185)(v67, v66);
      (*v172)(v70, v177);
      v62 = v70;
      v63 = v66;
    }

    v64 = v180;
    sub_229881854(v181, v180);
    v51 = v175;
    if (v4)
    {
      break;
    }

    v91(v64, v63);
    v60 = 1;
    v61 = 1;
    v96 = v184;
    if (v183)
    {
      swift_setDeallocating();
      swift_arrayDestroy();
      swift_deallocClassInstance();

      v36 = v63;
      v91(v181, v63);
      v9 = v140;
      v18 = v160;
      v39 = v164;
      v11 = v163;
      goto LABEL_25;
    }
  }

  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  v91(v64, v63);
  return (v91)(v181, v63);
}

uint64_t sub_2298769DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[8] = a5;
  v6[9] = a6;
  v6[7] = a4;
  v7 = sub_22A4DD07C();
  v6[10] = v7;
  v6[11] = *(v7 - 8);
  v6[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229876AA0, 0, 0);
}

uint64_t sub_229876AA0()
{
  v1 = v0[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
  inited = swift_initStackObject();
  v0[13] = inited;
  *(inited + 16) = xmmword_22A576190;
  *(inited + 32) = v1;
  v3 = v1;
  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_229876B7C;

  return sub_229876FA0(inited);
}

uint64_t sub_229876B7C()
{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_229876CDC, 0, 0);
  }

  else
  {
    swift_setDeallocating();
    swift_arrayDestroy();

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_229876CDC()
{
  v30 = v0;
  v1 = v0[15];
  v2 = v0[9];
  v3 = v0[7];
  swift_setDeallocating();
  swift_arrayDestroy();
  sub_229541CB0(v2, &off_283CE8678);
  v4 = v3;
  v5 = v1;
  v6 = sub_22A4DD05C();
  v7 = sub_22A4DDCEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[15];
  v11 = v0[11];
  v10 = v0[12];
  v12 = v0[10];
  if (v8)
  {
    v28 = v0[12];
    v13 = v0[7];
    v14 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    *v14 = 136315394;
    v29[0] = v27;
    v29[1] = 91;
    v29[2] = 0xE100000000000000;
    v15 = v13;
    v26 = v12;
    v16 = [v15 description];
    v17 = sub_22A4DD5EC();
    v19 = v18;

    MEMORY[0x22AAD08C0](v17, v19);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v20 = sub_2295A3E30(91, 0xE100000000000000, v29);

    *(v14 + 4) = v20;
    *(v14 + 12) = 2112;
    v21 = v9;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 14) = v22;
    *v25 = v22;
    _os_log_impl(&dword_229538000, v6, v7, "%s Failed to save accessory with error: %@", v14, 0x16u);
    sub_22953EAE4(v25, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v25, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v27);
    MEMORY[0x22AAD4E50](v27, -1, -1);
    MEMORY[0x22AAD4E50](v14, -1, -1);

    (*(v11 + 8))(v28, v26);
  }

  else
  {

    (*(v11 + 8))(v10, v12);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_229876FA0(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v2[12] = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v2[13] = v3;
  v2[14] = *(v3 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229877078, 0, 0);
}

uint64_t sub_229877078(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), void *a7, uint64_t a8)
{
  v61 = v8;
  v9 = v8[10];
  if (v9 >> 62)
  {
    v10 = sub_22A4DE0EC();
    v8[17] = v10;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_16:

    v17 = v8[1];
    goto LABEL_17;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8[17] = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_3:
  v11 = v8[10];
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x22AAD13F0](0);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x2822008A0](v10, v11, a3, a4, a5, a6, a7, a8);
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;
  v8[18] = v12;
  v8[19] = 1;
  v14 = [v12 home];
  v8[20] = v14;
  if (v14)
  {
    v15 = v14;
    v16 = [v14 backingStore];
    v8[9] = v16;
    v54 = sub_229562F68(0, &unk_281401B80, off_278666058);
    sub_22A4DBD4C();
    v18 = v8[11];
    v19 = v8[12];

    v20 = v8[8];
    v21 = [v20 context];
    v8[21] = v21;

    sub_229541CB0(v19, &off_283CE8678);
    v22 = v18;
    v23 = v13;
    v24 = sub_22A4DD05C();
    v25 = sub_22A4DDCDC();

    v26 = os_log_type_enabled(v24, v25);
    v27 = v8[16];
    v28 = v8[13];
    v29 = v8[14];
    if (v26)
    {
      log = v24;
      v30 = v8[11];
      v56 = v25;
      v31 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v60[0] = v58;
      *v31 = 136315394;
      v8[4] = 91;
      v8[5] = 0xE100000000000000;
      v32 = v30;
      v57 = v28;
      v33 = v21;
      v34 = [v32 description];
      v35 = sub_22A4DD5EC();
      v55 = v27;
      v37 = v36;

      v21 = v33;
      MEMORY[0x22AAD08C0](v35, v37);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v38 = sub_2295A3E30(v8[4], v8[5], v60);

      *(v31 + 4) = v38;
      *(v31 + 12) = 2080;
      v39 = [v23 shortDescription];
      v40 = sub_22A4DD5EC();
      v42 = v41;

      v43 = sub_2295A3E30(v40, v42, v60);

      *(v31 + 14) = v43;
      _os_log_impl(&dword_229538000, log, v56, "%s Saving accessory: %s", v31, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v58, -1, -1);
      MEMORY[0x22AAD4E50](v31, -1, -1);

      v44 = *(v29 + 8);
      v44(v55, v57);
    }

    else
    {

      v44 = *(v29 + 8);
      v44(v27, v28);
    }

    v8[22] = v44;
    v46 = v8[11];
    v45 = v8[12];
    v47 = swift_allocObject();
    v8[23] = v47;
    v47[2] = v15;
    v47[3] = v23;
    v47[4] = v46;
    v47[5] = v21;
    v47[6] = v45;
    v48 = v46;
    v49 = v23;
    v50 = v15;
    v51 = v21;
    v52 = swift_task_alloc();
    v8[24] = v52;
    v52[2] = v51;
    v52[3] = sub_22988FE24;
    v52[4] = v47;
    v10 = swift_task_alloc();
    v8[25] = v10;
    *v10 = v8;
    v10[1] = sub_229877640;
    a6 = sub_2296C8C78;
    a5 = 0x800000022A58A7E0;
    a8 = MEMORY[0x277D84F78] + 8;
    v11 = 0;
    a3 = 0;
    a4 = 0xD000000000000016;
    a7 = v52;

    return MEMORY[0x2822008A0](v10, v11, a3, a4, a5, a6, a7, a8);
  }

  type metadata accessor for HMError(0);
  v8[7] = 2;
  sub_22956AD8C(MEMORY[0x277D84F90]);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  swift_willThrow();

  v17 = v8[1];
LABEL_17:

  return v17();
}

uint64_t sub_229877640()
{
  *(*v1 + 208) = v0;

  if (v0)
  {
    v2 = sub_229877F6C;
  }

  else
  {

    v2 = sub_229877764;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_229877764()
{
  v87 = v0;
  v1 = *(v0 + 144);
  v2 = *(v0 + 88);
  sub_229541CB0(*(v0 + 96), &off_283CE8678);
  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCDC();

  if (os_log_type_enabled(v5, v6))
  {
    v76 = *(v0 + 168);
    v77 = *(v0 + 160);
    v7 = *(v0 + 144);
    v82 = *(v0 + 120);
    log = *(v0 + 176);
    v8 = *(v0 + 88);
    v80 = *(v0 + 104);
    v9 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v75 = swift_slowAlloc();
    v86[0] = v75;
    *v9 = 136315394;
    *(v0 + 16) = 91;
    *(v0 + 24) = 0xE100000000000000;
    v10 = v8;
    v11 = [v10 description];
    v12 = sub_22A4DD5EC();
    v14 = v13;

    MEMORY[0x22AAD08C0](v12, v14);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v15 = sub_2295A3E30(*(v0 + 16), *(v0 + 24), v86);

    *(v9 + 4) = v15;
    *(v9 + 12) = 2112;
    *(v9 + 14) = v7;
    *v74 = v7;
    v16 = v7;
    _os_log_impl(&dword_229538000, v5, v6, "%s Did save context for %@", v9, 0x16u);
    sub_22953EAE4(v74, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v74, -1, -1);
    __swift_destroy_boxed_opaque_existential_0(v75);
    MEMORY[0x22AAD4E50](v75, -1, -1);
    MEMORY[0x22AAD4E50](v9, -1, -1);

    v17 = (log)(v82, v80);
  }

  else
  {
    v25 = *(v0 + 168);
    v24 = *(v0 + 176);
    v26 = *(v0 + 144);
    v27 = *(v0 + 120);
    v28 = *(v0 + 104);

    v17 = v24(v27, v28);
  }

  v29 = *(v0 + 152);
  if (v29 != *(v0 + 136))
  {
    v31 = *(v0 + 208);
    v32 = *(v0 + 80);
    if ((v32 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x22AAD13F0](*(v0 + 152));
    }

    else
    {
      if (v29 >= *((v32 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v17 = *(v32 + 8 * v29 + 32);
    }

    v33 = v17;
    *(v0 + 144) = v17;
    *(v0 + 152) = v29 + 1;
    if (!__OFADD__(v29, 1))
    {
      v34 = [v17 home];
      *(v0 + 160) = v34;
      if (!v34)
      {
        type metadata accessor for HMError(0);
        *(v0 + 56) = 2;
        sub_22956AD8C(MEMORY[0x277D84F90]);
        sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
        sub_22A4DB3CC();
        swift_willThrow();
        goto LABEL_14;
      }

      v35 = v34;
      v36 = [v34 backingStore];
      *(v0 + 72) = v36;
      v73 = sub_229562F68(0, &unk_281401B80, off_278666058);
      sub_22A4DBD4C();
      if (v31)
      {

LABEL_14:

        v30 = *(v0 + 8);
        goto LABEL_15;
      }

      v38 = *(v0 + 88);
      v39 = *(v0 + 96);

      v40 = *(v0 + 64);
      v41 = [v40 context];
      *(v0 + 168) = v41;

      sub_229541CB0(v39, &off_283CE8678);
      v42 = v38;
      v43 = v33;
      v44 = sub_22A4DD05C();
      v45 = sub_22A4DDCDC();

      v46 = os_log_type_enabled(v44, v45);
      v47 = *(v0 + 128);
      v48 = *(v0 + 104);
      v49 = *(v0 + 112);
      if (v46)
      {
        loga = v44;
        v50 = *(v0 + 88);
        v79 = v45;
        v51 = swift_slowAlloc();
        v83 = swift_slowAlloc();
        v86[0] = v83;
        *v51 = 136315394;
        *(v0 + 32) = 91;
        *(v0 + 40) = 0xE100000000000000;
        v52 = v50;
        v81 = v48;
        v53 = v41;
        v54 = [v52 description];
        v55 = sub_22A4DD5EC();
        v78 = v47;
        v57 = v56;

        v41 = v53;
        MEMORY[0x22AAD08C0](v55, v57);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v58 = sub_2295A3E30(*(v0 + 32), *(v0 + 40), v86);

        *(v51 + 4) = v58;
        *(v51 + 12) = 2080;
        v59 = [v43 shortDescription];
        v60 = sub_22A4DD5EC();
        v62 = v61;

        v63 = sub_2295A3E30(v60, v62, v86);

        *(v51 + 14) = v63;
        _os_log_impl(&dword_229538000, loga, v79, "%s Saving accessory: %s", v51, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v83, -1, -1);
        MEMORY[0x22AAD4E50](v51, -1, -1);

        v64 = *(v49 + 8);
        v64(v78, v81);
      }

      else
      {

        v64 = *(v49 + 8);
        v64(v47, v48);
      }

      *(v0 + 176) = v64;
      v66 = *(v0 + 88);
      v65 = *(v0 + 96);
      v67 = swift_allocObject();
      *(v0 + 184) = v67;
      v67[2] = v35;
      v67[3] = v43;
      v67[4] = v66;
      v67[5] = v41;
      v67[6] = v65;
      v68 = v66;
      v69 = v43;
      v70 = v35;
      v71 = v41;
      v72 = swift_task_alloc();
      *(v0 + 192) = v72;
      v72[2] = v71;
      v72[3] = sub_22988FE24;
      v72[4] = v67;
      v17 = swift_task_alloc();
      *(v0 + 200) = v17;
      *v17 = v0;
      v17[1] = sub_229877640;
      v21 = sub_2296C8C78;
      v20 = 0x800000022A58A7E0;
      v23 = MEMORY[0x277D84F78] + 8;
      v32 = 0;
      v18 = 0;
      v19 = 0xD000000000000016;
      v22 = v72;

      return MEMORY[0x2822008A0](v17, v32, v18, v19, v20, v21, v22, v23);
    }

    __break(1u);
LABEL_26:
    __break(1u);
    return MEMORY[0x2822008A0](v17, v32, v18, v19, v20, v21, v22, v23);
  }

  v30 = *(v0 + 8);
LABEL_15:

  return v30();
}

uint64_t sub_229877F6C()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[18];

  v4 = v0[1];

  return v4();
}

id sub_2298780EC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_22A4DD07C();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_229541CB0(ObjectType, &off_283CE8678);
  v7 = v1;
  v8 = sub_22A4DD05C();
  v9 = sub_22A4DDCCC();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v20 = v3;
    v11 = v10;
    v12 = swift_slowAlloc();
    *v11 = 136315138;
    v21 = 91;
    v22 = 0xE100000000000000;
    v23 = v12;
    v13 = v7;
    v14 = [v13 description];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(v21, v22, &v23);

    *(v11 + 4) = v18;
    _os_log_impl(&dword_229538000, v8, v9, "%s Creating demo mode backup on boot", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v12);
    MEMORY[0x22AAD4E50](v12, -1, -1);
    MEMORY[0x22AAD4E50](v11, -1, -1);

    (*(v4 + 8))(v6, v20);
  }

  else
  {

    (*(v4 + 8))(v6, v3);
  }

  return [objc_opt_self() writePostCleanupRecordWithReason:9 steps:512];
}

void sub_229878350(void *a1)
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87D8F0, &qword_22A578D70);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v107 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v120 = &v107 - v6;
  v7 = sub_22A4DB7DC();
  v125 = *(v7 - 8);
  v126 = v7;
  MEMORY[0x28223BE20](v7);
  v123 = &v107 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22A4DD07C();
  v116 = *(v9 - 8);
  v117 = v9;
  v10 = MEMORY[0x28223BE20](v9);
  v115 = (&v107 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v10);
  v13 = &v107 - v12;
  v124 = a1;
  v14 = [a1 accessories];
  sub_229562F68(0, &qword_281401C30, off_278665FE8);
  v15 = sub_22A4DD83C();

  v128 = MEMORY[0x277D84F90];
  v16 = v15 & 0xFFFFFFFFFFFFFF8;
  if (v15 >> 62)
  {
LABEL_39:
    v17 = sub_22A4DE0EC();
  }

  else
  {
    v17 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v121 = v13;
  v112 = v5;
  v18 = MEMORY[0x277D84F90];
  if (v17)
  {
    v13 = 0;
    v122 = MEMORY[0x277D84F90];
    while (2)
    {
      v19 = v13;
      while (1)
      {
        if ((v15 & 0xC000000000000001) != 0)
        {
          v20 = MEMORY[0x22AAD13F0](v19, v15);
        }

        else
        {
          if (v19 >= *(v16 + 16))
          {
            goto LABEL_37;
          }

          v20 = *(v15 + 8 * v19 + 32);
        }

        v5 = v20;
        v13 = v19 + 1;
        if (__OFADD__(v19, 1))
        {
          __break(1u);
LABEL_37:
          __break(1u);
LABEL_38:
          __break(1u);
          goto LABEL_39;
        }

        if ([v20 isDemoAccessory])
        {
          objc_opt_self();
          v21 = swift_dynamicCastObjCClass();
          if (v21)
          {
            break;
          }
        }

        ++v19;
        if (v13 == v17)
        {
          goto LABEL_20;
        }
      }

      v5 = v21;
      MEMORY[0x22AAD09E0]();
      if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22A4DD85C();
        v18 = MEMORY[0x277D84F90];
      }

      sub_22A4DD87C();
      v122 = v128;
      if (v13 != v17)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v122 = MEMORY[0x277D84F90];
  }

LABEL_20:

  v22 = [v124 hapAccessories];
  sub_229562F68(0, &qword_281401B70, off_278666148);
  v15 = sub_22A4DD83C();

  v128 = v18;
  if (v15 >> 62)
  {
    v23 = sub_22A4DE0EC();
    if (v23)
    {
      goto LABEL_22;
    }

LABEL_41:
    v28 = MEMORY[0x277D84F90];
    goto LABEL_42;
  }

  v23 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v23)
  {
    goto LABEL_41;
  }

LABEL_22:
  v24 = 0;
  v16 = v15 & 0xC000000000000001;
  v13 = (v15 & 0xFFFFFFFFFFFFFF8);
  v127 = v15 & 0xFFFFFFFFFFFFFF8;
  while (v16)
  {
    v25 = MEMORY[0x22AAD13F0](v24, v15);
    v26 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      goto LABEL_34;
    }

LABEL_29:
    v5 = v25;
    if ([v5 isDemoAccessory])
    {
      v27 = [v5 isPrimary];

      if (v27)
      {
        sub_22A4DE27C();
        sub_22A4DE2AC();
        v13 = v127;
        sub_22A4DE2BC();
        sub_22A4DE28C();
        goto LABEL_25;
      }
    }

    else
    {
    }

LABEL_25:
    ++v24;
    if (v26 == v23)
    {
      goto LABEL_35;
    }
  }

  if (v24 >= *(v13 + 2))
  {
    goto LABEL_38;
  }

  v25 = *(v15 + 8 * v24 + 32);
  v26 = v24 + 1;
  if (!__OFADD__(v24, 1))
  {
    goto LABEL_29;
  }

LABEL_34:
  __break(1u);
LABEL_35:
  v28 = v128;
LABEL_42:

  LODWORD(v29) = v28 < 0 || (v28 & 0x4000000000000000) != 0;
  v30 = (v122 >> 62);
  if (v29 == 1)
  {
    goto LABEL_118;
  }

  v110 = *(v28 + 16);
  v31 = v118;
  if (!v110)
  {
    goto LABEL_47;
  }

  while (2)
  {
    while (2)
    {
      v32 = v121;
      sub_229541CB0(ObjectType, &off_283CE8678);
      swift_retain_n();
      v33 = v122;
      swift_bridgeObjectRetain_n();
      v34 = v31;
      v35 = v124;
      v31 = sub_22A4DD05C();
      v36 = sub_22A4DDCCC();
      v124 = v35;

      v37 = os_log_type_enabled(v31, v36);
      v118 = v34;
      if (!v37)
      {

        swift_bridgeObjectRelease_n();

        (v116[1])(v32, v117);
        v29 = v33;
        goto LABEL_58;
      }

      LODWORD(v127) = v36;
      v38 = swift_slowAlloc();
      v114 = swift_slowAlloc();
      v115 = swift_slowAlloc();
      v134 = v115;
      *v38 = 136315650;
      v128 = 91;
      v129 = 0xE100000000000000;
      v39 = v34;
      v40 = [v39 description];
      v41 = sub_22A4DD5EC();
      v43 = v42;

      MEMORY[0x22AAD08C0](v41, v43);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v44 = sub_2295A3E30(v128, v129, &v134);

      *(v38 + 4) = v44;
      *(v38 + 12) = 2048;
      if (v29)
      {
        v45 = sub_22A4DE0EC();
      }

      else
      {
        v45 = *(v28 + 16);
      }

      v34 = v118;
      v29 = v122;
      if (v30)
      {
        v46 = sub_22A4DE0EC();
      }

      else
      {
        v46 = *((v122 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (__OFADD__(v45, v46))
      {
        __break(1u);
LABEL_123:
        if (!sub_22A4DE0EC())
        {
LABEL_124:

          v95 = v115;
          sub_229541CB0(ObjectType, &off_283CE8678);
          v96 = v31;
          v97 = sub_22A4DD05C();
          v98 = sub_22A4DDCDC();

          if (os_log_type_enabled(v97, v98))
          {
            v99 = swift_slowAlloc();
            v100 = swift_slowAlloc();
            v134 = v100;
            *v99 = 136315138;
            v128 = 91;
            v129 = 0xE100000000000000;
            v101 = v96;
            v102 = [v101 description];
            v103 = sub_22A4DD5EC();
            v105 = v104;

            MEMORY[0x22AAD08C0](v103, v105);

            MEMORY[0x22AAD08C0](93, 0xE100000000000000);
            v106 = sub_2295A3E30(v128, v129, &v134);

            *(v99 + 4) = v106;
            _os_log_impl(&dword_229538000, v97, v98, "%s No demo accessories to load", v99, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v100);
            MEMORY[0x22AAD4E50](v100, -1, -1);
            MEMORY[0x22AAD4E50](v99, -1, -1);
          }

          (v116[1])(v95, v117);
          return;
        }

        continue;
      }

      break;
    }

    *(v38 + 14) = v45 + v46;

    *(v38 + 22) = 2112;
    v47 = v124;
    *(v38 + 24) = v124;
    v48 = v114;
    *v114 = v47;
    v49 = v47;
    _os_log_impl(&dword_229538000, v31, v127, "%s Loading demo %ld accessories in %@", v38, 0x20u);
    sub_22953EAE4(v48, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v48, -1, -1);
    v50 = v115;
    __swift_destroy_boxed_opaque_existential_0(v115);
    MEMORY[0x22AAD4E50](v50, -1, -1);
    MEMORY[0x22AAD4E50](v38, -1, -1);

    (v116[1])(v121, v117);
LABEL_58:
    if (v30)
    {
      v51 = sub_22A4DE0EC();
    }

    else
    {
      v51 = *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v111 = v28;
    if (v51)
    {
      v52 = 0;
      v28 = v29 & 0xC000000000000001;
      while (1)
      {
        if (v28)
        {
          v53 = MEMORY[0x22AAD13F0](v52, v29);
        }

        else
        {
          if (v52 >= *((v29 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_115;
          }

          v53 = *(v29 + 8 * v52 + 32);
        }

        v54 = v53;
        v30 = (v52 + 1);
        if (__OFADD__(v52, 1))
        {
          break;
        }

        v55 = v119;
        sub_2295A9CA4(v53);
        v119 = v55;
        if (v55)
        {

          return;
        }

        ++v52;
        if (v30 == v51)
        {
          goto LABEL_70;
        }
      }

LABEL_114:
      __break(1u);
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
LABEL_117:
      __break(1u);
LABEL_118:
      v110 = sub_22A4DE0EC();
      v31 = v118;
      if (v110)
      {
        continue;
      }

LABEL_47:
      if (!v30)
      {
        if (!*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_124;
        }

        continue;
      }

      goto LABEL_123;
    }

    break;
  }

LABEL_70:

  v30 = MEMORY[0x277D84F90];
  if (v110)
  {
    v56 = 0;
    v109 = v111 & 0xC000000000000001;
    v108 = v111 + 32;
    v121 = (v125 + 8);
    v122 = v125 + 16;
    v107 = xmmword_22A576190;
    do
    {
      if (v109)
      {
        v57 = MEMORY[0x22AAD13F0](v56, v111);
        v58 = __OFADD__(v56, 1);
        v59 = (v56 + 1);
        if (v58)
        {
          goto LABEL_116;
        }
      }

      else
      {
        if (v56 >= *(v111 + 16))
        {
          goto LABEL_117;
        }

        v57 = *(v108 + 8 * v56);
        v58 = __OFADD__(v56, 1);
        v59 = (v56 + 1);
        if (v58)
        {
          goto LABEL_116;
        }
      }

      v114 = v59;
      v115 = v57;
      v116 = v30;
      v60 = [v57 identifiersForBridgedAccessories];
      sub_22988FA1C(&qword_281403880, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v61 = sub_22A4DDB6C();

      v62 = MEMORY[0x277D84F90];
      v127 = v61;
      v128 = MEMORY[0x277D84F90];
      v63 = v61 + 56;
      v64 = 1 << *(v61 + 32);
      if (v64 < 64)
      {
        v65 = ~(-1 << v64);
      }

      else
      {
        v65 = -1;
      }

      v29 = v65 & *(v61 + 56);
      v30 = ((v64 + 63) >> 6);

      v66 = 0;
      v117 = v62;
      while (v29)
      {
LABEL_84:
        v68 = __clz(__rbit64(v29));
        v29 &= v29 - 1;
        v69 = v126;
        v70 = v125;
        v71 = v123;
        (*(v125 + 16))(v123, *(v127 + 48) + *(v125 + 72) * (v68 | (v66 << 6)), v126);
        v72 = sub_22A4DB77C();
        v28 = [v124 accessoryWithUUID_];

        (*(v70 + 8))(v71, v69);
        if (v28)
        {
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            MEMORY[0x22AAD09E0]();
            if (*((v128 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v128 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22A4DD85C();
            }

            sub_22A4DD87C();
            v117 = v128;
          }

          else
          {
          }
        }
      }

      while (1)
      {
        v67 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          __break(1u);
          goto LABEL_114;
        }

        if (v67 >= v30)
        {
          break;
        }

        v29 = *(v63 + 8 * v67);
        ++v66;
        if (v29)
        {
          v66 = v67;
          goto LABEL_84;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D87C350, &qword_22A576E40);
      v73 = swift_allocObject();
      *(v73 + 16) = v107;
      *(v73 + 32) = v115;
      v128 = v73;
      sub_2296F094C(v117);
      v74 = v128;
      v30 = v116;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v30 = sub_22958BEE4(0, v30[2] + 1, 1, v30);
      }

      v34 = v118;
      v56 = v114;
      v76 = v30[2];
      v75 = v30[3];
      if (v76 >= v75 >> 1)
      {
        v30 = sub_22958BEE4((v75 > 1), v76 + 1, 1, v30);
      }

      v30[2] = v76 + 1;
      v30[v76 + 4] = v74;
    }

    while (v56 != v110);
  }

  v77 = v30[2];
  if (v77)
  {
    v78 = sub_22A4DD9DC();
    v79 = *(v78 - 8);
    v80 = *(v79 + 56);
    v123 = (v79 + 56);
    v124 = v80;
    v121 = (v79 + 8);
    v122 = v79 + 48;
    v81 = 32;
    v125 = v78;
    do
    {
      v126 = v81;
      v127 = v77;
      v83 = *(v30 + v81);
      v84 = v120;
      (v124)(v120, 1, 1, v78);
      v85 = swift_allocObject();
      v85[2] = 0;
      v85[3] = 0;
      v85[4] = v34;
      v85[5] = v83;
      v85[6] = ObjectType;
      v86 = v112;
      sub_229564F88(v84, v112, &unk_27D87D8F0, &qword_22A578D70);
      LODWORD(v84) = (*v122)(v86, 1, v78);
      v87 = v34;

      if (v84 == 1)
      {
        sub_22953EAE4(v86, &unk_27D87D8F0, &qword_22A578D70);
      }

      else
      {
        sub_22A4DD9CC();
        (*v121)(v86, v78);
      }

      v88 = v30;
      v89 = v85[2];
      swift_unknownObjectRetain();

      if (v89)
      {
        swift_getObjectType();
        v90 = sub_22A4DD8CC();
        v92 = v91;
        swift_unknownObjectRelease();
      }

      else
      {
        v90 = 0;
        v92 = 0;
      }

      v93 = v127;
      sub_22953EAE4(v120, &unk_27D87D8F0, &qword_22A578D70);
      v94 = swift_allocObject();
      *(v94 + 16) = &unk_22A586828;
      *(v94 + 24) = v85;
      if (v92 | v90)
      {
        v130 = 0;
        v131 = 0;
        v132 = v90;
        v133 = v92;
      }

      v30 = v88;
      v82 = v126;
      swift_task_create();

      v81 = v82 + 8;
      v77 = v93 - 1;
      v34 = v118;
      v78 = v125;
    }

    while (v77);
  }
}

uint64_t sub_229879398(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  v8 = sub_22A4DD07C();
  v6[5] = v8;
  v6[6] = *(v8 - 8);
  v6[7] = swift_task_alloc();
  v9 = swift_task_alloc();
  v6[8] = v9;
  *v9 = v6;
  v9[1] = sub_229879498;

  return sub_229879C54(a5);
}

uint64_t sub_229879498()
{
  *(*v1 + 72) = v0;

  if (v0)
  {
    v2 = sub_229879948;
  }

  else
  {
    v2 = sub_2298795AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_2298795AC()
{
  v36 = v0;
  v1 = v0[9];
  type metadata accessor for DemoAccessoryServer(0);

  v3 = sub_22960AE44(v2, 0);
  if (v1)
  {
    v5 = v0[2];
    sub_229541CB0(v0[4], &off_283CE8678);

    v6 = v5;
    v7 = v1;
    v8 = sub_22A4DD05C();
    v9 = sub_22A4DDCEC();

    v10 = os_log_type_enabled(v8, v9);
    v12 = v0[6];
    v11 = v0[7];
    v13 = v0[5];
    if (v10)
    {
      v30 = v0[3];
      v34 = v0[7];
      v14 = v0[2];
      v15 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *v15 = 136315650;
      v35[0] = v33;
      v35[1] = 91;
      v35[2] = 0xE100000000000000;
      v16 = v14;
      v32 = v13;
      v17 = [v16 description];
      v18 = sub_22A4DD5EC();
      v20 = v19;

      MEMORY[0x22AAD08C0](v18, v20);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v21 = sub_2295A3E30(91, 0xE100000000000000, v35);

      *(v15 + 4) = v21;
      *(v15 + 12) = 2080;
      v22 = sub_229562F68(0, &qword_281401B70, off_278666148);
      v23 = MEMORY[0x22AAD0A20](v30, v22);
      v25 = sub_2295A3E30(v23, v24, v35);

      *(v15 + 14) = v25;
      *(v15 + 22) = 2112;
      v26 = v1;
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 24) = v27;
      *v31 = v27;
      _os_log_impl(&dword_229538000, v8, v9, "%s Failed to load accessories: %s with error: %@", v15, 0x20u);
      sub_22953EAE4(v31, &qword_27D87D7D0, &unk_22A578D90);
      MEMORY[0x22AAD4E50](v31, -1, -1);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v33, -1, -1);
      MEMORY[0x22AAD4E50](v15, -1, -1);

      (*(v12 + 8))(v34, v32);
    }

    else
    {

      (*(v12 + 8))(v11, v13);
    }
  }

  else
  {
    v4 = v3;
    sub_22960FCE0();
    if (qword_27D87B8A0 != -1)
    {
      swift_once();
    }

    sub_22956E358(v4);
  }

  v28 = v0[1];

  return v28();
}

uint64_t sub_229879948()
{
  v33 = v0;
  v1 = v0[9];
  v2 = v0[2];
  sub_229541CB0(v0[4], &off_283CE8678);

  v3 = v2;
  v4 = v1;
  v5 = sub_22A4DD05C();
  v6 = sub_22A4DDCEC();

  v7 = os_log_type_enabled(v5, v6);
  v9 = v0[6];
  v8 = v0[7];
  v10 = v0[5];
  if (v7)
  {
    v27 = v0[3];
    v31 = v0[7];
    v11 = v0[2];
    v12 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v12 = 136315650;
    v32[0] = v30;
    v32[1] = 91;
    v32[2] = 0xE100000000000000;
    v13 = v11;
    v29 = v10;
    v14 = [v13 description];
    v15 = sub_22A4DD5EC();
    v17 = v16;

    MEMORY[0x22AAD08C0](v15, v17);

    MEMORY[0x22AAD08C0](93, 0xE100000000000000);
    v18 = sub_2295A3E30(91, 0xE100000000000000, v32);

    *(v12 + 4) = v18;
    *(v12 + 12) = 2080;
    v19 = sub_229562F68(0, &qword_281401B70, off_278666148);
    v20 = MEMORY[0x22AAD0A20](v27, v19);
    v22 = sub_2295A3E30(v20, v21, v32);

    *(v12 + 14) = v22;
    *(v12 + 22) = 2112;
    v23 = v1;
    v24 = _swift_stdlib_bridgeErrorToNSError();
    *(v12 + 24) = v24;
    *v28 = v24;
    _os_log_impl(&dword_229538000, v5, v6, "%s Failed to load accessories: %s with error: %@", v12, 0x20u);
    sub_22953EAE4(v28, &qword_27D87D7D0, &unk_22A578D90);
    MEMORY[0x22AAD4E50](v28, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x22AAD4E50](v30, -1, -1);
    MEMORY[0x22AAD4E50](v12, -1, -1);

    (*(v9 + 8))(v31, v29);
  }

  else
  {

    (*(v9 + 8))(v8, v10);
  }

  v25 = v0[1];

  return v25();
}

uint64_t sub_229879C54(uint64_t a1)
{
  v2[18] = a1;
  v2[19] = v1;
  v2[20] = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D880180, &unk_22A586590);
  v2[21] = swift_task_alloc();
  v3 = sub_22A4DB57C();
  v2[22] = v3;
  v2[23] = *(v3 - 8);
  v2[24] = swift_task_alloc();
  v2[25] = swift_task_alloc();
  v4 = sub_22A4DD07C();
  v2[26] = v4;
  v2[27] = *(v4 - 8);
  v2[28] = swift_task_alloc();
  v2[29] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_229879DCC, 0, 0);
}

uint64_t sub_229879DCC(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, void (*a6)(uint64_t a1), void *a7, uint64_t a8)
{
  v103 = v8;
  v9 = v8[18];
  if (v9 >> 62)
  {
    v10 = sub_22A4DE0EC();
    v8[30] = v10;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_16:
    v55 = v8[24];
    v56 = v8[25];
    v58 = v8[22];
    v57 = v8[23];
    v59 = v8[21];
    v60 = v8[18];
    v61 = demoModeConfigPath();
    sub_22A4DD5EC();

    sub_22A4DB4CC();

    sub_22A4DD5EC();
    sub_22A4DB4FC();

    v62 = *(v57 + 8);
    v62(v55, v58);
    (*(v57 + 16))(v59, v56, v58);
    (*(v57 + 56))(v59, 0, 1, v58);
    sub_229875850(v60, v59);
    v66 = v8[19];
    v65 = v8[20];
    sub_22953EAE4(v8[21], &qword_27D880180, &unk_22A586590);
    sub_229541CB0(v65, &off_283CE8678);
    swift_bridgeObjectRetain_n();
    v67 = v66;
    v68 = sub_22A4DD05C();
    v69 = sub_22A4DDCCC();

    if (os_log_type_enabled(v68, v69))
    {
      v97 = v69;
      v99 = v62;
      v72 = v8[18];
      v71 = v8[19];
      v73 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *v73 = 136315394;
      v100 = v95;
      v101 = 91;
      v102 = 0xE100000000000000;
      v74 = v71;
      v75 = [v74 description];
      v76 = sub_22A4DD5EC();
      v78 = v77;

      MEMORY[0x22AAD08C0](v76, v78);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v79 = sub_2295A3E30(91, 0xE100000000000000, &v100);

      *(v73 + 4) = v79;
      *(v73 + 12) = 2048;
      if (v72 >> 62)
      {
        v80 = sub_22A4DE0EC();
      }

      else
      {
        v80 = *((v8[18] & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v86 = v8[27];
      v87 = v8[28];
      v88 = v8[26];
      v93 = v8[25];
      v89 = v8[22];

      *(v73 + 14) = v80;

      _os_log_impl(&dword_229538000, v68, v97, "%s Did load %ld accessories", v73, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v95);
      MEMORY[0x22AAD4E50](v95, -1, -1);
      MEMORY[0x22AAD4E50](v73, -1, -1);

      (*(v86 + 8))(v87, v88);
      v99(v93, v89);
    }

    else
    {
      v82 = v8[27];
      v81 = v8[28];
      v84 = v8[25];
      v83 = v8[26];
      v85 = v8[22];
      swift_bridgeObjectRelease_n();

      (*(v82 + 8))(v81, v83);
      v62(v84, v85);
    }

    v63 = v8[1];
    goto LABEL_17;
  }

  v10 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v8[30] = v10;
  if (!v10)
  {
    goto LABEL_16;
  }

LABEL_3:
  v11 = v8[18];
  if ((v11 & 0xC000000000000001) != 0)
  {
    v12 = MEMORY[0x22AAD13F0](0);
  }

  else
  {
    if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return MEMORY[0x2822008A0](v10, v11, a3, a4, a5, a6, a7, a8);
    }

    v12 = *(v11 + 32);
  }

  v13 = v12;
  v8[31] = v12;
  v8[32] = 1;
  v14 = [v12 home];
  v8[33] = v14;
  if (v14)
  {
    v15 = v14;
    v16 = [v14 backingStore];
    v8[17] = v16;
    v90 = sub_229562F68(0, &unk_281401B80, off_278666058);
    sub_22A4DBD4C();
    v24 = v8[19];
    v23 = v8[20];

    v25 = v8[16];
    v26 = [v25 context];
    v8[34] = v26;

    sub_229541CB0(v23, &off_283CE8678);
    v27 = v24;
    v28 = v13;
    v29 = sub_22A4DD05C();
    v30 = sub_22A4DDCDC();

    v31 = os_log_type_enabled(v29, v30);
    v32 = v8[29];
    v33 = v8[26];
    v34 = v8[27];
    if (v31)
    {
      v96 = v8[29];
      v35 = v8[19];
      v98 = v26;
      v36 = swift_slowAlloc();
      v94 = swift_slowAlloc();
      v101 = v94;
      *v36 = 136315394;
      v8[12] = 91;
      v8[13] = 0xE100000000000000;
      v37 = v35;
      v38 = [v37 description];
      v92 = v33;
      v39 = sub_22A4DD5EC();
      v91 = v30;
      v41 = v40;

      MEMORY[0x22AAD08C0](v39, v41);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v42 = sub_2295A3E30(v8[12], v8[13], &v101);

      *(v36 + 4) = v42;
      *(v36 + 12) = 2080;
      v43 = [v28 shortDescription];
      v44 = sub_22A4DD5EC();
      v46 = v45;

      v47 = sub_2295A3E30(v44, v46, &v101);

      *(v36 + 14) = v47;
      _os_log_impl(&dword_229538000, v29, v91, "%s Loading accessory: %s", v36, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x22AAD4E50](v94, -1, -1);
      v48 = v36;
      v26 = v98;
      MEMORY[0x22AAD4E50](v48, -1, -1);

      (*(v34 + 8))(v96, v92);
    }

    else
    {

      (*(v34 + 8))(v32, v33);
    }

    v49 = swift_allocObject();
    v8[35] = v49;
    *(v49 + 16) = v15;
    *(v49 + 24) = v28;
    v50 = *(v8 + 19);
    *(v49 + 32) = v50;
    v51 = v50;
    v52 = v28;
    v53 = v15;
    v54 = swift_task_alloc();
    v8[36] = v54;
    v54[2] = v26;
    v54[3] = sub_22988FB2C;
    v54[4] = v49;
    v10 = swift_task_alloc();
    v8[37] = v10;
    *v10 = v8;
    v10[1] = sub_22987A834;
    a6 = sub_229586C80;
    a5 = 0x800000022A58A7E0;
    a8 = MEMORY[0x277D84F78] + 8;
    v11 = 0;
    a3 = 0;
    a4 = 0xD000000000000016;
    a7 = v54;

    return MEMORY[0x2822008A0](v10, v11, a3, a4, a5, a6, a7, a8);
  }

  type metadata accessor for HMError(0);
  v8[15] = 2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22A576180;
  *(inited + 32) = sub_22A4DD5EC();
  *(inited + 40) = v18;
  sub_22A4DE1FC();

  v101 = 0xD00000000000001DLL;
  v102 = 0x800000022A59A270;
  v19 = [v13 shortDescription];
  v20 = sub_22A4DD5EC();
  v22 = v21;

  MEMORY[0x22AAD08C0](v20, v22);

  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 48) = 0xD00000000000001DLL;
  *(inited + 56) = 0x800000022A59A270;
  sub_22956AD8C(inited);
  swift_setDeallocating();
  sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
  sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
  sub_22A4DB3CC();
  swift_willThrow();

  v63 = v8[1];
LABEL_17:

  return v63();
}

uint64_t sub_22987A834()
{
  *(*v1 + 304) = v0;

  if (v0)
  {
    v2 = sub_22987B3C0;
  }

  else
  {

    v2 = sub_22987A958;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_22987A958()
{
  v108 = v0;
  v1 = *(v0 + 264);
  v2 = *(v0 + 272);
  v3 = *(v0 + 256);
  v4 = *(v0 + 240);

  v12 = *(v0 + 304);
  if (v3 != v4)
  {
    v24 = *(v0 + 256);
    v25 = *(v0 + 144);
    if ((v25 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x22AAD13F0](*(v0 + 256));
    }

    else
    {
      if (v24 >= *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }

      v5 = *(v25 + 8 * v24 + 32);
    }

    v26 = v5;
    *(v0 + 248) = v5;
    *(v0 + 256) = v24 + 1;
    if (!__OFADD__(v24, 1))
    {
      v27 = [v5 home];
      *(v0 + 264) = v27;
      if (!v27)
      {
        type metadata accessor for HMError(0);
        *(v0 + 120) = 2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D87D7B0, &unk_22A578800);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_22A576180;
        *(inited + 32) = sub_22A4DD5EC();
        *(inited + 40) = v46;
        sub_22A4DE1FC();

        v106 = 0xD00000000000001DLL;
        v107 = 0x800000022A59A270;
        v47 = [v26 shortDescription];
        v48 = sub_22A4DD5EC();
        v50 = v49;

        MEMORY[0x22AAD08C0](v48, v50);

        *(inited + 72) = MEMORY[0x277D837D0];
        *(inited + 48) = 0xD00000000000001DLL;
        *(inited + 56) = 0x800000022A59A270;
        sub_22956AD8C(inited);
        swift_setDeallocating();
        sub_22953EAE4(inited + 32, &qword_27D87CDA0, &unk_22A57A930);
        sub_22988FA1C(&qword_27D87D7C0, type metadata accessor for HMError, &unk_22A576D30);
        sub_22A4DB3CC();
        swift_willThrow();
        goto LABEL_15;
      }

      v28 = v27;
      v29 = [v27 backingStore];
      *(v0 + 136) = v29;
      v94 = sub_229562F68(0, &unk_281401B80, off_278666058);
      sub_22A4DBD4C();
      if (v12)
      {

LABEL_15:
        goto LABEL_16;
      }

      v53 = *(v0 + 152);
      v52 = *(v0 + 160);

      v54 = *(v0 + 128);
      v55 = [v54 context];
      *(v0 + 272) = v55;

      sub_229541CB0(v52, &off_283CE8678);
      v56 = v53;
      v57 = v26;
      v58 = sub_22A4DD05C();
      v59 = sub_22A4DDCDC();

      v60 = os_log_type_enabled(v58, v59);
      v61 = *(v0 + 232);
      v62 = *(v0 + 208);
      v63 = *(v0 + 216);
      if (v60)
      {
        v101 = *(v0 + 232);
        v64 = *(v0 + 152);
        v104 = v55;
        v65 = swift_slowAlloc();
        v99 = swift_slowAlloc();
        v106 = v99;
        *v65 = 136315394;
        *(v0 + 96) = 91;
        *(v0 + 104) = 0xE100000000000000;
        v66 = v64;
        v67 = [v66 description];
        v96 = v62;
        v68 = sub_22A4DD5EC();
        v95 = v59;
        v70 = v69;

        MEMORY[0x22AAD08C0](v68, v70);

        MEMORY[0x22AAD08C0](93, 0xE100000000000000);
        v71 = sub_2295A3E30(*(v0 + 96), *(v0 + 104), &v106);

        *(v65 + 4) = v71;
        *(v65 + 12) = 2080;
        v72 = [v57 shortDescription];
        v73 = sub_22A4DD5EC();
        v75 = v74;

        v76 = sub_2295A3E30(v73, v75, &v106);

        *(v65 + 14) = v76;
        _os_log_impl(&dword_229538000, v58, v95, "%s Loading accessory: %s", v65, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x22AAD4E50](v99, -1, -1);
        v77 = v65;
        v55 = v104;
        MEMORY[0x22AAD4E50](v77, -1, -1);

        (*(v63 + 8))(v101, v96);
      }

      else
      {

        (*(v63 + 8))(v61, v62);
      }

      v83 = swift_allocObject();
      *(v0 + 280) = v83;
      *(v83 + 16) = v28;
      *(v83 + 24) = v57;
      v84 = *(v0 + 152);
      *(v83 + 32) = v84;
      v85 = v84;
      v86 = v57;
      v87 = v28;
      v88 = swift_task_alloc();
      *(v0 + 288) = v88;
      v88[2] = v55;
      v88[3] = sub_22988FB2C;
      v88[4] = v83;
      v5 = swift_task_alloc();
      *(v0 + 296) = v5;
      *v5 = v0;
      v5[1] = sub_22987A834;
      v9 = sub_229586C80;
      v8 = 0x800000022A58A7E0;
      v11 = MEMORY[0x277D84F78] + 8;
      v25 = 0;
      v6 = 0;
      v7 = 0xD000000000000016;
      v10 = v88;

      return MEMORY[0x2822008A0](v5, v25, v6, v7, v8, v9, v10, v11);
    }

    __break(1u);
LABEL_32:
    __break(1u);
    return MEMORY[0x2822008A0](v5, v25, v6, v7, v8, v9, v10, v11);
  }

  v102 = *(v0 + 304);
  v13 = *(v0 + 192);
  v14 = *(v0 + 200);
  v16 = *(v0 + 176);
  v15 = *(v0 + 184);
  v17 = *(v0 + 168);
  v18 = *(v0 + 144);
  v19 = demoModeConfigPath();
  sub_22A4DD5EC();

  sub_22A4DB4CC();

  sub_22A4DD5EC();
  sub_22A4DB4FC();

  v20 = *(v15 + 8);
  v20(v13, v16);
  (*(v15 + 16))(v17, v14, v16);
  (*(v15 + 56))(v17, 0, 1, v16);
  sub_229875850(v18, v17);
  v21 = *(v0 + 168);
  if (!v102)
  {
    v31 = *(v0 + 152);
    v30 = *(v0 + 160);
    sub_22953EAE4(v21, &qword_27D880180, &unk_22A586590);
    sub_229541CB0(v30, &off_283CE8678);
    swift_bridgeObjectRetain_n();
    v32 = v31;
    v33 = sub_22A4DD05C();
    v34 = sub_22A4DDCCC();

    if (os_log_type_enabled(v33, v34))
    {
      v100 = v34;
      v103 = v20;
      v36 = *(v0 + 144);
      v35 = *(v0 + 152);
      v37 = swift_slowAlloc();
      v98 = swift_slowAlloc();
      *v37 = 136315394;
      v105 = v98;
      v106 = 91;
      v107 = 0xE100000000000000;
      v38 = v35;
      v39 = [v38 description];
      v40 = sub_22A4DD5EC();
      v42 = v41;

      MEMORY[0x22AAD08C0](v40, v42);

      MEMORY[0x22AAD08C0](93, 0xE100000000000000);
      v43 = sub_2295A3E30(91, 0xE100000000000000, &v105);

      *(v37 + 4) = v43;
      *(v37 + 12) = 2048;
      if (v36 >> 62)
      {
        v44 = sub_22A4DE0EC();
      }

      else
      {
        v44 = *((*(v0 + 144) & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v89 = *(v0 + 216);
      v90 = *(v0 + 224);
      v91 = *(v0 + 208);
      v97 = *(v0 + 200);
      v92 = *(v0 + 176);

      *(v37 + 14) = v44;

      _os_log_impl(&dword_229538000, v33, v100, "%s Did load %ld accessories", v37, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v98);
      MEMORY[0x22AAD4E50](v98, -1, -1);
      MEMORY[0x22AAD4E50](v37, -1, -1);

      (*(v89 + 8))(v90, v91);
      v103(v97, v92);
    }

    else
    {
      v79 = *(v0 + 216);
      v78 = *(v0 + 224);
      v81 = *(v0 + 200);
      v80 = *(v0 + 208);
      v82 = *(v0 + 176);
      swift_bridgeObjectRelease_n();

      (*(v79 + 8))(v78, v80);
      v20(v81, v82);
    }

    v51 = *(v0 + 8);
    goto LABEL_27;
  }

  v22 = *(v0 + 200);
  v23 = *(v0 + 176);
  sub_22953EAE4(v21, &qword_27D880180, &unk_22A586590);
  v20(v22, v23);
LABEL_16:

  v51 = *(v0 + 8);
LABEL_27:

  return v51();
}