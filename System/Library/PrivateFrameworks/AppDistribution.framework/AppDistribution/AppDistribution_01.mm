uint64_t AppLibrary.App.presentAgeExceptionApproveInPersonSheet()()
{
  v1[2] = v0;
  sub_23FFD946C();
  v1[3] = sub_23FFD945C();
  v3 = sub_23FFD942C();
  v1[4] = v3;
  v1[5] = v2;

  return MEMORY[0x2822009F8](sub_23FF6CBEC, v3, v2);
}

uint64_t sub_23FF6CBEC()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = *(*(v0 + 16) + 16);
  v2 = swift_task_alloc();
  *(v0 + 48) = v2;
  *v2 = v0;
  v2[1] = sub_23FF6CCEC;

  return sub_23FF55DC8(v1, sub_23FF6CEF0, 0);
}

uint64_t sub_23FF6CCEC()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 40);
  v4 = *(v2 + 32);
  if (v0)
  {
    v5 = sub_23FF6CE8C;
  }

  else
  {
    v5 = sub_23FF6CE28;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_23FF6CE28()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF6CE8C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_23FF6CEF0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_41;
  v9 = _Block_copy(v10);

  [a1 presentAgeExceptionApproveInPersonSheet:v8 reply:v9];
  _Block_release(v9);
}

char *AppLibrary.App.deinit()
{
  sub_23FF6E04C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_23FF6E09C(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_23FF64248(v0 + OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App__installationError, &qword_27E3A28E0, &qword_23FFDBA60);
  v1 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App___observationRegistrar;
  v2 = sub_23FFD900C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AppLibrary.App.__deallocating_deinit()
{
  sub_23FF6E04C(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_23FF6E09C(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136));
  sub_23FF64248(v0 + OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App__installationError, &qword_27E3A28E0, &qword_23FFDBA60);
  v1 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App___observationRegistrar;
  v2 = sub_23FFD900C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t AppLibrary.App.hashValue.getter()
{
  sub_23FFD9A2C();
  MEMORY[0x245CB4210](*(v0 + 16));
  return sub_23FFD9A7C();
}

uint64_t sub_23FF6D1AC()
{
  v1 = *v0;
  sub_23FFD9A2C();
  MEMORY[0x245CB4210](*(v1 + 16));
  return sub_23FFD9A7C();
}

uint64_t sub_23FF6D224()
{
  v1 = *v0;
  sub_23FFD9A2C();
  MEMORY[0x245CB4210](*(v1 + 16));
  return sub_23FFD9A7C();
}

id sub_23FF6D284(uint64_t a1)
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2928, &qword_23FFDBD10);
  v5 = swift_allocObject();
  *(v5 + 32) = 0;
  *(v5 + 16) = 0;
  *(v5 + 24) = 0;
  *&v1[v4] = v5;
  *&v1[OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_id] = a1;
  v8.receiver = v1;
  v8.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v8, sel_initWithParent_userInfo_, 0, 0);
  [v6 setTotalUnitCount_];
  [v6 setPausable_];
  [v6 setCancellable_];
  sub_23FF6AB10(-1.0);

  return v6;
}

void sub_23FF6D46C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, char a6)
{
  v10 = sub_23FFD8F8C();
  if (a6)
  {
    if (a6 == 1)
    {
      v17 = a4;
      v18 = a5;
      v13 = MEMORY[0x277D85DD0];
      v14 = 1107296256;
      v15 = sub_23FF6839C;
      v16 = &block_descriptor_34;
      v11 = _Block_copy(&v13);

      v12 = &selRef_pauseInstall_reply_;
    }

    else
    {
      v17 = a4;
      v18 = a5;
      v13 = MEMORY[0x277D85DD0];
      v14 = 1107296256;
      v15 = sub_23FF6839C;
      v16 = &block_descriptor_2;
      v11 = _Block_copy(&v13);

      v12 = &selRef_cancelInstall_reply_;
    }
  }

  else
  {
    v17 = a4;
    v18 = a5;
    v13 = MEMORY[0x277D85DD0];
    v14 = 1107296256;
    v15 = sub_23FF6839C;
    v16 = &block_descriptor_31_0;
    v11 = _Block_copy(&v13);

    v12 = &selRef_resumeInstall_reply_;
  }

  [a1 *v12];
  _Block_release(v11);
}

uint64_t sub_23FF6D648(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[5] = a7;
  v8[6] = a8;
  v8[3] = a5;
  v8[4] = a6;
  v8[2] = a4;
  v9 = sub_23FFD929C();
  v8[7] = v9;
  v8[8] = *(v9 - 8);
  v8[9] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF6D710, 0, 0);
}

uint64_t sub_23FF6D710()
{
  if (v0[2])
  {
    v1 = swift_task_alloc();
    v0[10] = v1;
    *v1 = v0;
    v1[1] = sub_23FF6D8B4;

    return MEMORY[0x282200460]();
  }

  else if (sub_23FFD950C())
  {

    v2 = v0[1];

    return v2();
  }

  else
  {
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_23FF6DAD4;
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];

    return sub_23FF55DC8(v6, v4, v5);
  }
}

uint64_t sub_23FF6D8B4()
{

  return MEMORY[0x2822009F8](sub_23FF6D9B0, 0, 0);
}

uint64_t sub_23FF6D9B0()
{
  if (sub_23FFD950C())
  {

    v1 = v0[1];

    return v1();
  }

  else
  {
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v3 = swift_task_alloc();
    v0[11] = v3;
    *v3 = v0;
    v3[1] = sub_23FF6DAD4;
    v4 = v0[4];
    v5 = v0[5];
    v6 = v0[3];

    return sub_23FF55DC8(v6, v4, v5);
  }
}

uint64_t sub_23FF6DAD4()
{
  *(*v1 + 96) = v0;

  if (v0)
  {
    v2 = sub_23FF6DC7C;
  }

  else
  {
    v2 = sub_23FF6DBE8;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF6DBE8()
{
  v1 = *(*(v0 + 48) + OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_lock);
  os_unfair_lock_lock((v1 + 32));
  if ((sub_23FFD950C() & 1) == 0)
  {
    *(v1 + 24) = 0;
  }

  os_unfair_lock_unlock((v1 + 32));

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_23FF6DC7C(uint64_t a1)
{
  v2 = v1[12];
  sub_23FFD925C();
  v3 = v2;
  v4 = sub_23FFD927C();
  v5 = sub_23FFD956C();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v1[12];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_23FF4C000, v4, v5, "Error updating progress: %{public}@", v8, 0xCu);
    sub_23FF64248(v9, &qword_27E3A24F0, &unk_23FFDD2B0);
    MEMORY[0x245CB48E0](v9, -1, -1);
    MEMORY[0x245CB48E0](v8, -1, -1);
  }

  else
  {
  }

  (*(v1[8] + 8))(v1[9], v1[7]);
  v12 = *(v1[6] + OBJC_IVAR____TtC15AppDistribution22InstallationNSProgress_lock);
  os_unfair_lock_lock((v12 + 32));
  if ((sub_23FFD950C() & 1) == 0)
  {
    *(v12 + 24) = 0;
  }

  os_unfair_lock_unlock((v12 + 32));

  v13 = v1[1];

  return v13();
}

id sub_23FF6DE68()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s15AppDistribution0A7LibraryC0A0C8MetadataV2eeoiySbAG_AGtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v3 = a1[5];
  v5 = a1[6];
  v6 = a2[3];
  v7 = a2[4];
  v9 = a2[5];
  v8 = a2[6];
  if (a1[1] == a2[1] && a1[2] == a2[2] || (sub_23FFD996C()) && (v2 == v6 && v4 == v7 || (sub_23FFD996C()))
  {
    if (v5)
    {
      if (v8 && (v3 == v9 && v5 == v8 || (sub_23FFD996C() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v8)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t type metadata accessor for AppLibrary.App(uint64_t a1)
{
  result = qword_27E3A28F0;
  if (!qword_27E3A28F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_23FF6DFFC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }
}

void sub_23FF6E04C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a3)
  {
  }
}

void sub_23FF6E09C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  if (a3)
  {
  }
}

void sub_23FF6E158(uint64_t a1)
{
  sub_23FF6E260(319);
  if (v1 <= 0x3F)
  {
    sub_23FFD900C();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_23FF6E260(uint64_t a1)
{
  if (!qword_27E3A2900)
  {
    type metadata accessor for MarketplaceKitError(255);
    v1 = sub_23FFD95CC();
    if (!v2)
    {
      atomic_store(v1, &qword_27E3A2900);
    }
  }
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_23FF6E2D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23FF6E31C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
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

uint64_t sub_23FF6E38C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23FF6E3D4(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for InstallationNSProgress.State(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for InstallationNSProgress.State(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23FF6E5AC()
{
  result = qword_27E3A2918;
  if (!qword_27E3A2918)
  {
    result = swift_getWitnessTable(asc_23FFDBCC0, &type metadata for InstallationNSProgress.State, v0, v1);
    atomic_store(result, &qword_27E3A2918);
  }

  return result;
}

uint64_t sub_23FF6E608(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_23FF6E6E4;

  return sub_23FF6D648(a1, v4, v5, v6, v7, v8, v9, v10);
}

uint64_t sub_23FF6E6E4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23FF6E7F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28E0, &qword_23FFDBA60);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF6E860(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_23FF6E880(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  v11 = *a2;
  v12 = a2[1];
  v14 = a2[2];
  v13 = a2[3];
  v16 = a2[4];
  v15 = a2[5];
  v17 = a2[6];
  v30 = v6;
  if (!v7)
  {
    v29 = a1[6];
    if (!v14)
    {
      sub_23FF642A8(a1, v33, &qword_27E3A2950, &qword_23FFDBD30);
      sub_23FF642A8(a2, v33, &qword_27E3A2950, &qword_23FFDBD30);
      sub_23FF6E04C(v4, v5, 0, v30, v8, v9, v29);
      v19 = 0;
      return v19 & 1;
    }

    v23 = a2[3];
    v24 = a2[4];
    v25 = a2[5];
    v27 = a2[6];
    sub_23FF642A8(a1, v33, &qword_27E3A2950, &qword_23FFDBD30);
    sub_23FF642A8(a2, v33, &qword_27E3A2950, &qword_23FFDBD30);
    v20 = v9;
    v18 = v29;
    v21 = v30;
    goto LABEL_7;
  }

  v33[0] = *a1;
  v33[1] = v5;
  v33[2] = v7;
  v33[3] = v6;
  v33[4] = v8;
  v33[5] = v9;
  v33[6] = v10;
  v28 = v9;
  v18 = v10;
  if (!v14)
  {
    v23 = v13;
    v24 = v16;
    v25 = v15;
    v27 = v17;
    sub_23FF642A8(a1, v32, &qword_27E3A2950, &qword_23FFDBD30);
    sub_23FF642A8(a2, v32, &qword_27E3A2950, &qword_23FFDBD30);
    v20 = v28;
    v21 = v30;
    sub_23FF6DFFC(v4, v5, v7, v30, v8, v28, v18);

LABEL_7:
    sub_23FF6E04C(v4, v5, v7, v21, v8, v20, v18);
    sub_23FF6E04C(v11, v12, v14, v23, v24, v25, v27);
    v19 = 1;
    return v19 & 1;
  }

  v32[0] = v11;
  v32[1] = v12;
  v32[2] = v14;
  v32[3] = v13;
  v32[4] = v16;
  v32[5] = v15;
  v32[6] = v17;
  v26 = _s15AppDistribution0A7LibraryC0A0C8MetadataV2eeoiySbAG_AGtFZ_0(v33, v32);
  sub_23FF642A8(a1, v31, &qword_27E3A2950, &qword_23FFDBD30);
  sub_23FF642A8(a2, v31, &qword_27E3A2950, &qword_23FFDBD30);
  sub_23FF6DFFC(v4, v5, v7, v30, v8, v28, v18);

  sub_23FF6E04C(v4, v5, v7, v30, v8, v28, v18);
  v19 = v26 ^ 1;
  return v19 & 1;
}

uint64_t sub_23FF6EBC0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for MarketplaceKitError(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF6EC24(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FF6EC6C(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_23FF62F84(result, a2);
  }

  return result;
}

uint64_t sub_23FF6EC80(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A28E0, &qword_23FFDBA60);
  MEMORY[0x28223BE20](v2 - 8);
  v58 = &v46 - v3;
  v4 = sub_23FFD91BC();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v47 = &v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v46 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v46 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2958, &qword_23FFDBD38);
  v14 = MEMORY[0x28223BE20](v13 - 8);
  v48 = &v46 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v46 - v17;
  v19 = MEMORY[0x28223BE20](v16);
  v21 = &v46 - v20;
  MEMORY[0x28223BE20](v19);
  v23 = &v46 - v22;
  v57 = sub_23FFD913C();
  v59 = a1;
  sub_23FFD915C();
  sub_23FF642A8(v23, v21, &qword_27E3A2958, &qword_23FFDBD38);
  v24 = *(v5 + 48);
  v25 = v24(v21, 1, v4);
  v49 = v5;
  if (v25 == 1)
  {
    sub_23FF64248(v23, &qword_27E3A2958, &qword_23FFDBD38);
    v56 = 0;
    v55 = 0;
    v54 = 0;
    v53 = 0;
    v52 = 0;
    v51 = 0;
    v50 = 0;
  }

  else
  {
    v46 = v24;
    (*(v5 + 32))(v12, v21, v4);
    sub_23FFD946C();
    sub_23FFD945C();
    sub_23FFD942C();
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v26 = v49;
    (*(v49 + 16))(v10, v12, v4);
    v56 = sub_23FFD918C();
    v55 = sub_23FFD91AC();
    v54 = v27;
    v53 = sub_23FFD917C();
    v52 = v28;
    v51 = sub_23FFD919C();
    v50 = v29;
    v30 = *(v26 + 8);
    v30(v10, v4);
    v30(v12, v4);
    sub_23FF64248(v23, &qword_27E3A2958, &qword_23FFDBD38);

    v24 = v46;
  }

  v31 = v59;
  sub_23FFD916C();
  v32 = v48;
  sub_23FF642A8(v18, v48, &qword_27E3A2958, &qword_23FFDBD38);
  if (v24(v32, 1, v4) == 1)
  {
    sub_23FF64248(v18, &qword_27E3A2958, &qword_23FFDBD38);
    v66 = 0u;
    v67 = 0u;
    v68 = 0u;
    v69 = 0u;
  }

  else
  {
    v33 = v49;
    v34 = v47;
    (*(v49 + 32))(v47, v32, v4);
    sub_23FF69220(v34, v31, &v66);
    (*(v33 + 8))(v34, v4);
    sub_23FF64248(v18, &qword_27E3A2958, &qword_23FFDBD38);
  }

  v70[0] = v66;
  v70[1] = v67;
  v70[2] = v68;
  v70[3] = v69;
  v35 = sub_23FFD914C();
  v37 = v58;
  if (v36 >> 60 == 15)
  {
    v38 = type metadata accessor for MarketplaceKitError(0);
    (*(*(v38 - 8) + 56))(v37, 1, 1, v38);
  }

  else
  {
    v39 = v35;
    v40 = v36;
    sub_23FFD8F3C();
    swift_allocObject();
    sub_23FFD8F2C();
    v38 = type metadata accessor for MarketplaceKitError(0);
    sub_23FF6EC24(&qword_27E3A2208, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    sub_23FFD8F1C();
    sub_23FF6EC6C(v39, v40);

    (*(*(v38 - 8) + 56))(v37, 0, 1, v38);
  }

  type metadata accessor for AppLibrary.App(0);
  v41 = swift_allocObject();
  *(v41 + 24) = 0u;
  *(v41 + 40) = 0u;
  *(v41 + 56) = 0u;
  *(v41 + 72) = 0u;
  *(v41 + 88) = 0u;
  *(v41 + 104) = 0u;
  *(v41 + 120) = 0u;
  *(v41 + 136) = 0;
  v42 = OBJC_IVAR____TtCC15AppDistribution10AppLibrary3App__installationError;
  type metadata accessor for MarketplaceKitError(0);
  (*(*(v38 - 8) + 56))(v41 + v42, 1, 1, v38);
  sub_23FFD8FFC();
  *(v41 + 16) = v57;
  *&v60 = v56;
  *(&v60 + 1) = v55;
  v61 = v54;
  v62 = v53;
  v63 = v52;
  v64 = v51;
  v65 = v50;
  sub_23FF686CC(&v60);
  KeyPath = swift_getKeyPath();
  MEMORY[0x28223BE20](KeyPath);
  *(&v46 - 2) = v41;
  *(&v46 - 1) = v70;
  *&v60 = v41;
  sub_23FF6EC24(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
  sub_23FFD8FDC();
  sub_23FF64248(v70, &qword_27E3A28D0, &qword_23FFDBA30);

  v44 = sub_23FFD91CC();
  (*(*(v44 - 8) + 8))(v31, v44);
  sub_23FF64248(v37, &qword_27E3A28E0, &qword_23FFDBA60);
  return v41;
}

uint64_t static UpdateService.availableUpdate(for:checkInWithServer:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  *(v4 + 48) = a4;
  *(v4 + 24) = a2;
  *(v4 + 32) = a3;
  *(v4 + 16) = a1;
  return MEMORY[0x2822009F8](sub_23FF6F5E0, 0, 0);
}

uint64_t sub_23FF6F5E0()
{
  v1 = qword_27E3A2160;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = sub_23FF6F6E8;
  v3 = *(v0 + 48);
  v4 = *(v0 + 24);
  v5 = *(v0 + 32);
  v6 = *(v0 + 16);

  return sub_23FF55FCC(v6, v4, v5, v3, sub_23FF6F804, 0);
}

uint64_t sub_23FF6F6E8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

AppDistribution::UpdateMetadataRequest __swiftcall UpdateMetadataRequest.init(bundleID:shouldCheckInWithServer:)(AppDistribution::UpdateMetadataRequest bundleID, Swift::Bool shouldCheckInWithServer)
{
  *v2 = bundleID.field23FFF2B4C;
  *(v2 + 16) = shouldCheckInWithServer;
  bundleID.field23FFF2B58 = shouldCheckInWithServer;
  return bundleID;
}

uint64_t static UpdateService.requestUpdate(for:)(_OWORD *a1)
{
  v2 = a1[1];
  v1[1] = *a1;
  v1[2] = v2;
  v3 = a1[3];
  v1[3] = a1[2];
  v1[4] = v3;
  return MEMORY[0x2822009F8](sub_23FF6F844, 0, 0);
}

uint64_t sub_23FF6F844()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_23FF6F93C;

  return sub_23FF562FC((v0 + 16), sub_23FF6FA30, 0);
}

uint64_t sub_23FF6F93C()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t UpdateMetadataRequest.bundleID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_23FF6FA7C()
{
  if (*v0)
  {
    return 0xD000000000000017;
  }

  else
  {
    return 0x4449656C646E7562;
  }
}

uint64_t sub_23FF6FABC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4449656C646E7562 && a2 == 0xE800000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEB000 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF6FBA0(uint64_t a1)
{
  v2 = sub_23FF6FFBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF6FBDC(uint64_t a1)
{
  v2 = sub_23FF6FFBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UpdateMetadataRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2960, &qword_23FFDBD50);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF6FFBC();
  sub_23FFD9ACC();
  v12 = 0;
  v7 = v9[1];
  sub_23FFD98EC();
  if (!v7)
  {
    v11 = 1;
    sub_23FFD98FC();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t UpdateMetadataRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2970, &qword_23FFDBD58);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF6FFBC();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_23FFD980C();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = sub_23FFD981C();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23FF6FFBC()
{
  result = qword_27E3A2968;
  if (!qword_27E3A2968)
  {
    result = swift_getWitnessTable(asc_23FFDBECC, &type metadata for UpdateMetadataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2968);
  }

  return result;
}

uint64_t sub_23FF70020(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_23FF70068(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23FF700CC()
{
  result = qword_27E3A2978;
  if (!qword_27E3A2978)
  {
    result = swift_getWitnessTable(asc_23FFDBEA4, &type metadata for UpdateMetadataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2978);
  }

  return result;
}

unint64_t sub_23FF70124()
{
  result = qword_27E3A2980;
  if (!qword_27E3A2980)
  {
    result = swift_getWitnessTable(byte_23FFDBE14, &type metadata for UpdateMetadataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2980);
  }

  return result;
}

unint64_t sub_23FF7017C()
{
  result = qword_27E3A2988;
  if (!qword_27E3A2988)
  {
    result = swift_getWitnessTable(byte_23FFDBE3C, &type metadata for UpdateMetadataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2988);
  }

  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23FF701F0()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 7;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23FF70224()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 4;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23FF70258()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 3;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23FF7028C()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 23;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

BOOL sub_23FF702C0()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24) >> 1;
  if (v1 != v2)
  {
    if (v1 >= v2)
    {
      __break(1u);
      return result;
    }

    *(v0 + 16) = v1 + 1;
  }

  return v1 == v2;
}

uint64_t sub_23FF702EC()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 10;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23FF70320()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 2;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23FF70354()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 6;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_23FF70388()
{
  v1 = v0[2];
  v2 = v0[3] >> 1;
  if (v1 == v2)
  {
    return 5;
  }

  if (v1 < v2)
  {
    result = *(v0[1] + v1);
    v0[2] = v1 + 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t SecureButtonActionRequest.Action.stringValue.getter()
{
  if (((*(v0 + 8) >> 60) & 3u) > 1)
  {
    return 0x6867696C66657250;
  }

  if (((*(v0 + 8) >> 60) & 3) != 0)
  {
    v1 = 0x68636E75614CLL;
  }

  else
  {
    v1 = 0x6574656C6544;
  }

  v4 = v1 & 0xFFFFFFFFFFFFLL | 0x2D20000000000000;
  v3 = sub_23FFD995C();
  MEMORY[0x245CB3B50](v3);

  return v4;
}

uint64_t sub_23FF7048C()
{
  v1 = 0x6574656C6564;
  if (*v0)
  {
    v1 = 0x68636E75616CLL;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0x6867696C66657270;
  }
}

uint64_t sub_23FF70510@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF74F7C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF70538(uint64_t a1)
{
  v2 = sub_23FF70CBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF70574(uint64_t a1)
{
  v2 = sub_23FF70CBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF705B0(uint64_t a1)
{
  v2 = sub_23FF70E60();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF705EC(uint64_t a1)
{
  v2 = sub_23FF70E60();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF70628(uint64_t a1)
{
  v2 = sub_23FF70E0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF70664(uint64_t a1)
{
  v2 = sub_23FF70E0C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF706A0(uint64_t a1)
{
  v2 = sub_23FF70D10();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF706DC(uint64_t a1)
{
  v2 = sub_23FF70D10();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF70718(uint64_t a1)
{
  v2 = sub_23FF70DB8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF70754(uint64_t a1)
{
  v2 = sub_23FF70DB8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecureButtonActionRequest.Action.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2990, &qword_23FFDBF20);
  v32 = *(v4 - 8);
  v33 = v4;
  MEMORY[0x28223BE20](v4);
  v31 = &v25 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2998, &qword_23FFDBF28);
  v29 = *(v6 - 8);
  v30 = v6;
  MEMORY[0x28223BE20](v6);
  v28 = &v25 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A29A0, &qword_23FFDBF30);
  v27 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v25 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A29A8, &qword_23FFDBF38);
  v26 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A29B0, &qword_23FFDBF40);
  v35 = *(v14 - 8);
  v36 = v14;
  MEMORY[0x28223BE20](v14);
  v16 = &v25 - v15;
  v17 = v2[1];
  v34 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF70CBC();
  sub_23FFD9ACC();
  v18 = (v17 >> 60) & 3;
  if (((v17 >> 60) & 3) > 1)
  {
    if (v18 == 2)
    {
      LOBYTE(v37) = 2;
      sub_23FF70DB8();
      v21 = v28;
      v22 = v36;
      sub_23FFD988C();
      v37 = v34;
      v38 = v17 & 0xCFFFFFFFFFFFFFFFLL;
      sub_23FF70D64();
      v23 = v30;
      sub_23FFD991C();
      v24 = v29;
    }

    else
    {
      LOBYTE(v37) = 3;
      sub_23FF70D10();
      v21 = v31;
      v22 = v36;
      sub_23FFD988C();
      v37 = v34;
      v38 = v17 & 0xCFFFFFFFFFFFFFFFLL;
      sub_23FF70D64();
      v23 = v33;
      sub_23FFD991C();
      v24 = v32;
    }

    (*(v24 + 8))(v21, v23);
  }

  else
  {
    if (!v18)
    {
      LOBYTE(v37) = 0;
      sub_23FF70E60();
      v19 = v36;
      sub_23FFD988C();
      sub_23FFD993C();
      (*(v26 + 8))(v13, v11);
      return (*(v35 + 8))(v16, v19);
    }

    LOBYTE(v37) = 1;
    sub_23FF70E0C();
    v22 = v36;
    sub_23FFD988C();
    sub_23FFD993C();
    (*(v27 + 8))(v10, v8);
  }

  return (*(v35 + 8))(v16, v22);
}

unint64_t sub_23FF70CBC()
{
  result = qword_27E3A29B8;
  if (!qword_27E3A29B8)
  {
    result = swift_getWitnessTable(asc_23FFDCFEC, &type metadata for SecureButtonActionRequest.Action.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A29B8);
  }

  return result;
}

unint64_t sub_23FF70D10()
{
  result = qword_27E3A29C0;
  if (!qword_27E3A29C0)
  {
    result = swift_getWitnessTable(byte_23FFDCF9C, &type metadata for SecureButtonActionRequest.Action.PreflightBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A29C0);
  }

  return result;
}

unint64_t sub_23FF70D64()
{
  result = qword_27E3A29C8;
  if (!qword_27E3A29C8)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9320], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27E3A29C8);
  }

  return result;
}

unint64_t sub_23FF70DB8()
{
  result = qword_27E3A29D0;
  if (!qword_27E3A29D0)
  {
    result = swift_getWitnessTable(byte_23FFDCF4C, &type metadata for SecureButtonActionRequest.Action.PreflightCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A29D0);
  }

  return result;
}

unint64_t sub_23FF70E0C()
{
  result = qword_27E3A29D8;
  if (!qword_27E3A29D8)
  {
    result = swift_getWitnessTable(asc_23FFDCEFC, &type metadata for SecureButtonActionRequest.Action.LaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A29D8);
  }

  return result;
}

unint64_t sub_23FF70E60()
{
  result = qword_27E3A29E0;
  if (!qword_27E3A29E0)
  {
    result = swift_getWitnessTable(asc_23FFDCEAC, &type metadata for SecureButtonActionRequest.Action.DeleteCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A29E0);
  }

  return result;
}

uint64_t SecureButtonActionRequest.Action.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v56 = a2;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A29E8, &qword_23FFDBF48);
  v55 = *(v53 - 8);
  MEMORY[0x28223BE20](v53);
  v58 = &v46 - v3;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A29F0, &qword_23FFDBF50);
  v54 = *(v52 - 8);
  MEMORY[0x28223BE20](v52);
  v57 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A29F8, &qword_23FFDBF58);
  v6 = *(v5 - 8);
  v50 = v5;
  v51 = v6;
  MEMORY[0x28223BE20](v5);
  v8 = &v46 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A00, &qword_23FFDBF60);
  v49 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v46 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A08, &unk_23FFDBF68);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v46 - v14;
  v16 = a1[3];
  v62 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_23FF70CBC();
  v17 = v59;
  sub_23FFD9AAC();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

  v18 = v11;
  v47 = v9;
  v48 = v15;
  v19 = v8;
  v20 = v57;
  v21 = v58;
  v59 = v13;
  v22 = sub_23FFD986C();
  v23 = *(v22 + 16);
  if (!v23 || ((v24 = *(v22 + 32), v23 == 1) ? (v25 = v24 == 4) : (v25 = 1), v25))
  {
    v26 = sub_23FFD970C();
    swift_allocError();
    v28 = v27;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
    *v28 = &type metadata for SecureButtonActionRequest.Action;
    v29 = v48;
    sub_23FFD97AC();
    sub_23FFD96FC();
    (*(*(v26 - 8) + 104))(v28, *MEMORY[0x277D84160], v26);
    swift_willThrow();
    (*(v59 + 8))(v29, v12);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v62);
  }

  if (*(v22 + 32) > 1u)
  {
    if (v24 == 2)
    {
      LOBYTE(v60) = 2;
      sub_23FF70DB8();
      v32 = v20;
      v33 = v48;
      sub_23FFD979C();
      v34 = v59;
      sub_23FF71690();
      v35 = v52;
      sub_23FFD983C();
      (*(v54 + 8))(v32, v35);
      (*(v34 + 8))(v33, v12);
      swift_unknownObjectRelease();
      v40 = v60;
      v41 = v61 | 0x2000000000000000;
    }

    else
    {
      LOBYTE(v60) = 3;
      sub_23FF70D10();
      v37 = v48;
      sub_23FFD979C();
      v38 = v59;
      sub_23FF71690();
      v43 = v53;
      sub_23FFD983C();
      (*(v55 + 8))(v21, v43);
      (*(v38 + 8))(v37, v12);
      swift_unknownObjectRelease();
      v40 = v60;
      v41 = v61 | 0x3000000000000000;
    }
  }

  else if (*(v22 + 32))
  {
    LOBYTE(v60) = 1;
    sub_23FF70E0C();
    v36 = v48;
    sub_23FFD979C();
    v42 = v50;
    v40 = sub_23FFD985C();
    (*(v51 + 8))(v19, v42);
    (*(v59 + 8))(v36, v12);
    swift_unknownObjectRelease();
    v41 = 0x1000000000000000;
  }

  else
  {
    LOBYTE(v60) = 0;
    sub_23FF70E60();
    v30 = v18;
    v31 = v48;
    sub_23FFD979C();
    v39 = v47;
    v40 = sub_23FFD985C();
    (*(v49 + 8))(v30, v39);
    (*(v59 + 8))(v31, v12);
    swift_unknownObjectRelease();
    v41 = 0;
  }

  v45 = v56;
  *v56 = v40;
  v45[1] = v41;
  return __swift_destroy_boxed_opaque_existential_1(v62);
}

unint64_t sub_23FF71690()
{
  result = qword_27E3A2A10;
  if (!qword_27E3A2A10)
  {
    result = swift_getWitnessTable(MEMORY[0x277CC9348], MEMORY[0x277CC9318], v0, v1);
    atomic_store(result, &qword_27E3A2A10);
  }

  return result;
}

uint64_t SecureButtonActionRequest.action.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  return sub_23FF71720(v2, v3);
}

uint64_t sub_23FF71720(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return sub_23FF71730(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  return result;
}

uint64_t sub_23FF71730(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

__n128 SecureButtonActionRequest.init(action:authenticationMessage:)@<Q0>(__n128 *a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  result = *a1;
  *a3 = *a1;
  a3[1].n128_u64[0] = a2;
  return result;
}

uint64_t SecureButtonActionRequest.run()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = *v1;
  *(v2 + 40) = *(v1 + 16);
  return MEMORY[0x2822009F8](sub_23FF717CC, 0, 0);
}

uint64_t sub_23FF717CC()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  v0[6] = v1;
  *v1 = v0;
  v1[1] = sub_23FF718C8;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[2];
  v5 = v0[3];

  return sub_23FF56720(v4, v5, v2, v3, sub_23FF719BC, 0);
}

uint64_t sub_23FF718C8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void sub_23FF719BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_23FFD8F8C();
  v10[4] = a4;
  v10[5] = a5;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_23FF6839C;
  v10[3] = &block_descriptor_4;
  v9 = _Block_copy(v10);

  [a1 handleSecureButtonActionRequest:v8 reply:v9];
  _Block_release(v9);
}

uint64_t sub_23FF71A98()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x6E6F69746361;
  }
}

uint64_t sub_23FF71AD4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F69746361 && a2 == 0xE600000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023FFEB060 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF71BB4(uint64_t a1)
{
  v2 = sub_23FF73BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF71BF0(uint64_t a1)
{
  v2 = sub_23FF73BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecureButtonActionRequest.encode(to:)(void *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A18, &qword_23FFDBF80);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v18 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v18[0] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF71720(v7, v8);
  sub_23FF73BBC();
  sub_23FFD9ACC();
  v20 = v7;
  v21 = v8;
  v19 = 0;
  sub_23FF73C10();
  v9 = v18[1];
  sub_23FFD991C();
  sub_23FF73C64(v20, v21);
  if (v9)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v11 = objc_opt_self();
  v20 = 0;
  v12 = [v11 archivedDataWithRootObject:v18[0] requiringSecureCoding:1 error:&v20];
  v13 = v20;
  if (!v12)
  {
    v17 = v13;
    sub_23FFD8F4C();

    swift_willThrow();
    return (*(v4 + 8))(v6, v3);
  }

  v14 = sub_23FFD8F9C();
  v16 = v15;

  v20 = v14;
  v21 = v16;
  v19 = 1;
  sub_23FF70D64();
  sub_23FFD991C();
  (*(v4 + 8))(v6, v3);
  return sub_23FF62F84(v14, v16);
}

void SecureButtonActionRequest.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A30, &qword_23FFDBF88);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF73BBC();
  sub_23FFD9AAC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    v22 = 0;
    sub_23FF73C74();
    sub_23FFD983C();
    v10 = v20;
    v9 = v21;
    v22 = 1;
    sub_23FF71690();
    sub_23FFD983C();
    v18 = v10;
    v19 = v9;
    v11 = v20;
    v12 = v21;
    sub_23FF73CC8(0, &qword_27E3A2A40, 0x277CCAAC8);
    sub_23FF73CC8(0, &qword_27E3A2A48, 0x277CF0600);
    v13 = sub_23FFD957C();
    if (v13)
    {
      v14 = v13;
      (*(v6 + 8))(v8, v5);
      sub_23FF62F84(v11, v12);
      v16 = v18;
      v15 = v19;
      *a2 = v18;
      a2[1] = v15;
      a2[2] = v14;
      sub_23FF71720(v16, v15);
      v17 = v14;
      __swift_destroy_boxed_opaque_existential_1(a1);
      sub_23FF73C64(v16, v15);
    }

    else
    {
      __break(1u);
    }
  }
}

unint64_t SecureButtonActionResponse.ResponseType.stringValue.getter()
{
  v1 = v0;
  v2 = sub_23FFD8FCC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FF73D30(v1, v8);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload != 1)
    {
      return 1701736270;
    }

    (*(v3 + 32))(v5, v8, v2);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_23FFD96DC();

    v10 = 0x800000023FFEB020;
    v11 = 0xD000000000000018;
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    v15 = 0;
    v16 = 0xE000000000000000;
    sub_23FFD96DC();

    v10 = 0x800000023FFEB040;
    v11 = 0xD000000000000012;
  }

  v15 = v11;
  v16 = v10;
  sub_23FF73E3C(&qword_27E3A2A50, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
  v12 = sub_23FFD995C();
  MEMORY[0x245CB3B50](v12);

  v13 = v15;
  (*(v3 + 8))(v5, v2);
  return v13;
}

unint64_t sub_23FF72404()
{
  v1 = 0x496D7269666E6F63;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_23FF72468@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF750E8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF72490(uint64_t a1)
{
  v2 = sub_23FF73D94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF724CC(uint64_t a1)
{
  v2 = sub_23FF73D94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF72508(uint64_t a1)
{
  v2 = sub_23FF73DE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF72544(uint64_t a1)
{
  v2 = sub_23FF73DE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF72580@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF72600(uint64_t a1)
{
  v2 = sub_23FF73E84();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7263C(uint64_t a1)
{
  v2 = sub_23FF73E84();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF72684(uint64_t a1)
{
  v2 = sub_23FF73ED8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF726C0(uint64_t a1)
{
  v2 = sub_23FF73ED8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecureButtonActionResponse.ResponseType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A58, &qword_23FFDBF90);
  v40 = *(v2 - 8);
  v41 = v2;
  MEMORY[0x28223BE20](v2);
  v39 = &v34 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A60, &qword_23FFDBF98);
  v35 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v34 - v4;
  v5 = sub_23FFD8FCC();
  v42 = *(v5 - 8);
  v43 = v5;
  v6 = MEMORY[0x28223BE20](v5);
  v36 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A68, &qword_23FFDBFA0);
  v34 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  v13 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A70, &qword_23FFDBFA8);
  v45 = *(v16 - 8);
  v46 = v16;
  MEMORY[0x28223BE20](v16);
  v18 = &v34 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF73D94();
  sub_23FFD9ACC();
  sub_23FF73D30(v44, v15);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v28 = v35;
    v20 = v42;
    v29 = v15;
    v23 = v43;
    (*(v42 + 32))(v9, v29, v43);
    v49 = 1;
    sub_23FF73E84();
    v30 = v37;
    v25 = v46;
    sub_23FFD988C();
    sub_23FF73E3C(&qword_27E3A2430, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v31 = v38;
    sub_23FFD991C();
    (*(v28 + 8))(v30, v31);
    goto LABEL_6;
  }

  if (EnumCaseMultiPayload == 1)
  {
    v20 = v42;
    v21 = v36;
    v22 = v15;
    v23 = v43;
    (*(v42 + 32))(v36, v22, v43);
    v50 = 2;
    sub_23FF73DE8();
    v24 = v39;
    v25 = v46;
    sub_23FFD988C();
    sub_23FF73E3C(&qword_27E3A2430, MEMORY[0x277CC95F0], MEMORY[0x277CC95F8]);
    v26 = v41;
    v27 = v47;
    sub_23FFD991C();
    if (!v27)
    {
      (*(v40 + 8))(v24, v26);
      (*(v20 + 8))(v21, v23);
      return (*(v45 + 8))(v18, v25);
    }

    (*(v40 + 8))(v24, v26);
    v9 = v21;
LABEL_6:
    (*(v20 + 8))(v9, v23);
    return (*(v45 + 8))(v18, v25);
  }

  v48 = 0;
  sub_23FF73ED8();
  v33 = v46;
  sub_23FFD988C();
  (*(v34 + 8))(v12, v10);
  return (*(v45 + 8))(v18, v33);
}

uint64_t SecureButtonActionResponse.ResponseType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2A98, &qword_23FFDBFB0);
  v52 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v56 = &v44 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2AA0, &qword_23FFDBFB8);
  v50 = *(v4 - 8);
  v51 = v4;
  MEMORY[0x28223BE20](v4);
  v53 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2AA8, &qword_23FFDBFC0);
  v47 = *(v6 - 8);
  v48 = v6;
  MEMORY[0x28223BE20](v6);
  v55 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2AB0, &qword_23FFDBFC8);
  v54 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v44 - v9;
  v11 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v44 - v18;
  v20 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  sub_23FF73D94();
  v21 = v58;
  sub_23FFD9AAC();
  if (!v21)
  {
    v44 = v14;
    v45 = v17;
    v23 = v55;
    v22 = v56;
    v46 = v19;
    v58 = v11;
    v24 = v54;
    v25 = v57;
    v26 = sub_23FFD986C();
    v27 = *(v26 + 16);
    if (!v27 || ((v28 = *(v26 + 32), v27 == 1) ? (v29 = v28 == 3) : (v29 = 1), v29))
    {
      v30 = sub_23FFD970C();
      swift_allocError();
      v31 = v10;
      v33 = v32;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
      *v33 = v58;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v30 - 8) + 104))(v33, *MEMORY[0x277D84160], v30);
      swift_willThrow();
      (*(v24 + 8))(v31, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      if (*(v26 + 32))
      {
        if (v28 == 1)
        {
          v61 = 1;
          sub_23FF73E84();
          v35 = v53;
          sub_23FFD979C();
          v36 = v24;
          sub_23FFD8FCC();
          sub_23FF73E3C(&qword_27E3A2450, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
          v40 = v51;
          sub_23FFD983C();
          (*(v50 + 8))(v35, v40);
          (*(v36 + 8))(v10, v8);
          swift_unknownObjectRelease();
          v41 = v45;
        }

        else
        {
          v55 = v26;
          v62 = 2;
          sub_23FF73DE8();
          v37 = v22;
          sub_23FFD979C();
          v38 = v25;
          sub_23FFD8FCC();
          sub_23FF73E3C(&qword_27E3A2450, MEMORY[0x277CC95F0], MEMORY[0x277CC9618]);
          v41 = v44;
          v39 = v49;
          sub_23FFD983C();
          (*(v52 + 8))(v37, v39);
          (*(v24 + 8))(v10, v8);
          v25 = v38;
          swift_unknownObjectRelease();
        }

        swift_storeEnumTagMultiPayload();
        v43 = v41;
        v42 = v46;
        sub_23FF73FD8(v43, v46, type metadata accessor for SecureButtonActionResponse.ResponseType);
      }

      else
      {
        v60 = 0;
        sub_23FF73ED8();
        sub_23FFD979C();
        (*(v47 + 8))(v23, v48);
        (*(v24 + 8))(v10, v8);
        swift_unknownObjectRelease();
        v42 = v46;
        swift_storeEnumTagMultiPayload();
      }

      sub_23FF73FD8(v42, v25, type metadata accessor for SecureButtonActionResponse.ResponseType);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_23FF73540@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF735C8(uint64_t a1)
{
  v2 = sub_23FF73F2C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF73604(uint64_t a1)
{
  v2 = sub_23FF73F2C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecureButtonActionResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2AB8, &qword_23FFDBFD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF73F2C();
  sub_23FFD9ACC();
  type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  sub_23FF73E3C(&qword_27E3A2AC8, type metadata accessor for SecureButtonActionResponse.ResponseType, protocol conformance descriptor for SecureButtonActionResponse.ResponseType);
  sub_23FFD991C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t SecureButtonActionResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2AD0, &qword_23FFDBFD8);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SecureButtonActionResponse(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF73F2C();
  sub_23FFD9AAC();
  if (!v2)
  {
    v12 = v15;
    sub_23FF73E3C(&qword_27E3A2AD8, type metadata accessor for SecureButtonActionResponse.ResponseType, protocol conformance descriptor for SecureButtonActionResponse.ResponseType);
    v13 = v17;
    sub_23FFD983C();
    (*(v16 + 8))(v8, v6);
    sub_23FF73FD8(v13, v11, type metadata accessor for SecureButtonActionResponse.ResponseType);
    sub_23FF73FD8(v11, v12, type metadata accessor for SecureButtonActionResponse);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FF73A44(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2AB8, &qword_23FFDBFD0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF73F2C();
  sub_23FFD9ACC();
  type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  sub_23FF73E3C(&qword_27E3A2AC8, type metadata accessor for SecureButtonActionResponse.ResponseType, protocol conformance descriptor for SecureButtonActionResponse.ResponseType);
  sub_23FFD991C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23FF73BBC()
{
  result = qword_27E3A2A20;
  if (!qword_27E3A2A20)
  {
    result = swift_getWitnessTable(byte_23FFDCE5C, &type metadata for SecureButtonActionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2A20);
  }

  return result;
}

unint64_t sub_23FF73C10()
{
  result = qword_27E3A2A28;
  if (!qword_27E3A2A28)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SecureButtonActionRequest.Action, &type metadata for SecureButtonActionRequest.Action, v0, v1);
    atomic_store(result, &qword_27E3A2A28);
  }

  return result;
}

uint64_t sub_23FF73C64(uint64_t result, uint64_t a2)
{
  if ((a2 & 0x2000000000000000) != 0)
  {
    return sub_23FF62F84(result, a2 & 0xCFFFFFFFFFFFFFFFLL);
  }

  return result;
}

unint64_t sub_23FF73C74()
{
  result = qword_27E3A2A38;
  if (!qword_27E3A2A38)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for SecureButtonActionRequest.Action, &type metadata for SecureButtonActionRequest.Action, v0, v1);
    atomic_store(result, &qword_27E3A2A38);
  }

  return result;
}

uint64_t sub_23FF73CC8(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_23FF73D30(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureButtonActionResponse.ResponseType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_23FF73D94()
{
  result = qword_27E3A2A78;
  if (!qword_27E3A2A78)
  {
    result = swift_getWitnessTable(byte_23FFDCE0C, &type metadata for SecureButtonActionResponse.ResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2A78);
  }

  return result;
}

unint64_t sub_23FF73DE8()
{
  result = qword_27E3A2A80;
  if (!qword_27E3A2A80)
  {
    result = swift_getWitnessTable(aM, &type metadata for SecureButtonActionResponse.ResponseType.ConfirmInstallBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2A80);
  }

  return result;
}

uint64_t sub_23FF73E3C(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FF73E84()
{
  result = qword_27E3A2A88;
  if (!qword_27E3A2A88)
  {
    result = swift_getWitnessTable(byte_23FFDCD6C, &type metadata for SecureButtonActionResponse.ResponseType.ConfirmInstallCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2A88);
  }

  return result;
}

unint64_t sub_23FF73ED8()
{
  result = qword_27E3A2A90;
  if (!qword_27E3A2A90)
  {
    result = swift_getWitnessTable(asc_23FFDCD1C, &type metadata for SecureButtonActionResponse.ResponseType.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2A90);
  }

  return result;
}

unint64_t sub_23FF73F2C()
{
  result = qword_27E3A2AC0;
  if (!qword_27E3A2AC0)
  {
    result = swift_getWitnessTable(asc_23FFDCCCC, &type metadata for SecureButtonActionResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2AC0);
  }

  return result;
}

uint64_t sub_23FF73FA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23FF73FD8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
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

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_23FF7407C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_23FF740C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_23FF74170(uint64_t a1)
{
  result = type metadata accessor for SecureButtonActionResponse.ResponseType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_23FF7422C(uint64_t a1)
{
  result = sub_23FFD8FCC();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SecureButtonActionRequest.Action.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for SecureButtonActionRequest.Action.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23FF74480()
{
  result = qword_27E3A2B00;
  if (!qword_27E3A2B00)
  {
    result = swift_getWitnessTable(byte_23FFDC5DC, &type metadata for SecureButtonActionRequest.Action.PreflightBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B00);
  }

  return result;
}

unint64_t sub_23FF744D8()
{
  result = qword_27E3A2B08;
  if (!qword_27E3A2B08)
  {
    result = swift_getWitnessTable(a5, &type metadata for SecureButtonActionRequest.Action.PreflightCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B08);
  }

  return result;
}

unint64_t sub_23FF74530()
{
  result = qword_27E3A2B10;
  if (!qword_27E3A2B10)
  {
    result = swift_getWitnessTable(asc_23FFDC74C, &type metadata for SecureButtonActionRequest.Action.LaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B10);
  }

  return result;
}

unint64_t sub_23FF74588()
{
  result = qword_27E3A2B18;
  if (!qword_27E3A2B18)
  {
    result = swift_getWitnessTable(byte_23FFDC804, &type metadata for SecureButtonActionRequest.Action.DeleteCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B18);
  }

  return result;
}

unint64_t sub_23FF745E0()
{
  result = qword_27E3A2B20;
  if (!qword_27E3A2B20)
  {
    result = swift_getWitnessTable(asc_23FFDC8BC, &type metadata for SecureButtonActionRequest.Action.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B20);
  }

  return result;
}

unint64_t sub_23FF74638()
{
  result = qword_27E3A2B28;
  if (!qword_27E3A2B28)
  {
    result = swift_getWitnessTable(aU_0, &type metadata for SecureButtonActionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B28);
  }

  return result;
}

unint64_t sub_23FF74690()
{
  result = qword_27E3A2B30;
  if (!qword_27E3A2B30)
  {
    result = swift_getWitnessTable(byte_23FFDCA2C, &type metadata for SecureButtonActionResponse.ResponseType.ConfirmInstallBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B30);
  }

  return result;
}

unint64_t sub_23FF746E8()
{
  result = qword_27E3A2B38;
  if (!qword_27E3A2B38)
  {
    result = swift_getWitnessTable(byte_23FFDCAE4, &type metadata for SecureButtonActionResponse.ResponseType.ConfirmInstallCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B38);
  }

  return result;
}

unint64_t sub_23FF74740()
{
  result = qword_27E3A2B40;
  if (!qword_27E3A2B40)
  {
    result = swift_getWitnessTable(byte_23FFDCBEC, &type metadata for SecureButtonActionResponse.ResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B40);
  }

  return result;
}

unint64_t sub_23FF74798()
{
  result = qword_27E3A2B48;
  if (!qword_27E3A2B48)
  {
    result = swift_getWitnessTable(asc_23FFDCCA4, &type metadata for SecureButtonActionResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B48);
  }

  return result;
}

unint64_t sub_23FF747F0()
{
  result = qword_27E3A2B50;
  if (!qword_27E3A2B50)
  {
    result = swift_getWitnessTable(byte_23FFDCC14, &type metadata for SecureButtonActionResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B50);
  }

  return result;
}

unint64_t sub_23FF74848()
{
  result = qword_27E3A2B58;
  if (!qword_27E3A2B58)
  {
    result = swift_getWitnessTable(byte_23FFDCC3C, &type metadata for SecureButtonActionResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B58);
  }

  return result;
}

unint64_t sub_23FF748A0()
{
  result = qword_27E3A2B60;
  if (!qword_27E3A2B60)
  {
    result = swift_getWitnessTable(byte_23FFDCB0C, &type metadata for SecureButtonActionResponse.ResponseType.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B60);
  }

  return result;
}

unint64_t sub_23FF748F8()
{
  result = qword_27E3A2B68;
  if (!qword_27E3A2B68)
  {
    result = swift_getWitnessTable(byte_23FFDCB34, &type metadata for SecureButtonActionResponse.ResponseType.NoneCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B68);
  }

  return result;
}

unint64_t sub_23FF74950()
{
  result = qword_27E3A2B70;
  if (!qword_27E3A2B70)
  {
    result = swift_getWitnessTable(aM_0, &type metadata for SecureButtonActionResponse.ResponseType.ConfirmInstallCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B70);
  }

  return result;
}

unint64_t sub_23FF749A8()
{
  result = qword_27E3A2B78;
  if (!qword_27E3A2B78)
  {
    result = swift_getWitnessTable(asc_23FFDCA7C, &type metadata for SecureButtonActionResponse.ResponseType.ConfirmInstallCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B78);
  }

  return result;
}

unint64_t sub_23FF74A00()
{
  result = qword_27E3A2B80;
  if (!qword_27E3A2B80)
  {
    result = swift_getWitnessTable(byte_23FFDC99C, &type metadata for SecureButtonActionResponse.ResponseType.ConfirmInstallBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B80);
  }

  return result;
}

unint64_t sub_23FF74A58()
{
  result = qword_27E3A2B88;
  if (!qword_27E3A2B88)
  {
    result = swift_getWitnessTable(byte_23FFDC9C4, &type metadata for SecureButtonActionResponse.ResponseType.ConfirmInstallBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B88);
  }

  return result;
}

unint64_t sub_23FF74AB0()
{
  result = qword_27E3A2B90;
  if (!qword_27E3A2B90)
  {
    result = swift_getWitnessTable(aE, &type metadata for SecureButtonActionResponse.ResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B90);
  }

  return result;
}

unint64_t sub_23FF74B08()
{
  result = qword_27E3A2B98;
  if (!qword_27E3A2B98)
  {
    result = swift_getWitnessTable(aU_1, &type metadata for SecureButtonActionResponse.ResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2B98);
  }

  return result;
}

unint64_t sub_23FF74B60()
{
  result = qword_27E3A2BA0;
  if (!qword_27E3A2BA0)
  {
    result = swift_getWitnessTable(byte_23FFDC8E4, &type metadata for SecureButtonActionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2BA0);
  }

  return result;
}

unint64_t sub_23FF74BB8()
{
  result = qword_27E3A2BA8;
  if (!qword_27E3A2BA8)
  {
    result = swift_getWitnessTable(byte_23FFDC90C, &type metadata for SecureButtonActionRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2BA8);
  }

  return result;
}

unint64_t sub_23FF74C10()
{
  result = qword_27E3A2BB0;
  if (!qword_27E3A2BB0)
  {
    result = swift_getWitnessTable(asc_23FFDC774, &type metadata for SecureButtonActionRequest.Action.DeleteCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2BB0);
  }

  return result;
}

unint64_t sub_23FF74C68()
{
  result = qword_27E3A2BB8;
  if (!qword_27E3A2BB8)
  {
    result = swift_getWitnessTable(asc_23FFDC79C, &type metadata for SecureButtonActionRequest.Action.DeleteCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2BB8);
  }

  return result;
}

unint64_t sub_23FF74CC0()
{
  result = qword_27E3A2BC0;
  if (!qword_27E3A2BC0)
  {
    result = swift_getWitnessTable(byte_23FFDC6BC, &type metadata for SecureButtonActionRequest.Action.LaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2BC0);
  }

  return result;
}

unint64_t sub_23FF74D18()
{
  result = qword_27E3A2BC8;
  if (!qword_27E3A2BC8)
  {
    result = swift_getWitnessTable(byte_23FFDC6E4, &type metadata for SecureButtonActionRequest.Action.LaunchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2BC8);
  }

  return result;
}

unint64_t sub_23FF74D70()
{
  result = qword_27E3A2BD0;
  if (!qword_27E3A2BD0)
  {
    result = swift_getWitnessTable(byte_23FFDC604, &type metadata for SecureButtonActionRequest.Action.PreflightCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2BD0);
  }

  return result;
}

unint64_t sub_23FF74DC8()
{
  result = qword_27E3A2BD8;
  if (!qword_27E3A2BD8)
  {
    result = swift_getWitnessTable(byte_23FFDC62C, &type metadata for SecureButtonActionRequest.Action.PreflightCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2BD8);
  }

  return result;
}

unint64_t sub_23FF74E20()
{
  result = qword_27E3A2BE0;
  if (!qword_27E3A2BE0)
  {
    result = swift_getWitnessTable(aU_2, &type metadata for SecureButtonActionRequest.Action.PreflightBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2BE0);
  }

  return result;
}

unint64_t sub_23FF74E78()
{
  result = qword_27E3A2BE8;
  if (!qword_27E3A2BE8)
  {
    result = swift_getWitnessTable(aE_0, &type metadata for SecureButtonActionRequest.Action.PreflightBatchCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2BE8);
  }

  return result;
}

unint64_t sub_23FF74ED0()
{
  result = qword_27E3A2BF0;
  if (!qword_27E3A2BF0)
  {
    result = swift_getWitnessTable(aU_3, &type metadata for SecureButtonActionRequest.Action.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2BF0);
  }

  return result;
}

unint64_t sub_23FF74F28()
{
  result = qword_27E3A2BF8;
  if (!qword_27E3A2BF8)
  {
    result = swift_getWitnessTable(byte_23FFDC854, &type metadata for SecureButtonActionRequest.Action.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2BF8);
  }

  return result;
}

uint64_t sub_23FF74F7C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C6564 && a2 == 0xE600000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x68636E75616CLL && a2 == 0xE600000000000000 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xE900000000000074 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6867696C66657270 && a2 == 0xEE00686374614274)
  {

    return 3;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t sub_23FF750E8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701736302 && a2 == 0xE400000000000000;
  if (v3 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496D7269666E6F63 && a2 == 0xEE006C6C6174736ELL || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x800000023FFEB080 == a2)
  {

    return 2;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_23FF75274()
{
  result = sub_23FF79C5C();
  off_27E3A2C00 = result;
  return result;
}

void sub_23FF75294(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock((a2 + 32));
  *(a2 + 16) = 0;

  *(a2 + 24) = 0;

  os_unfair_lock_unlock((a2 + 32));
  v3 = [objc_opt_self() defaultCenter];
  v4 = sub_23FFD933C();
  [v3 postNotificationName:v4 object:0];
}

uint64_t sub_23FF75374(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);
}

uint64_t sub_23FF753E4()
{
  if (qword_27E3A2150 != -1)
  {
    swift_once();
  }

  v1 = off_27E3A2C00;
  *(v0 + 96) = off_27E3A2C00;
  os_unfair_lock_lock(v1 + 8);
  v2 = *&v1[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v1 + 8);
  if (v2)
  {
    v3 = *(v0 + 8);

    return v3(v2);
  }

  else
  {
    *(v0 + 16) = 1;
    *(v0 + 24) = 0u;
    *(v0 + 40) = 0u;
    *(v0 + 56) = 0x2000000000000000;
    *(v0 + 64) = 1;
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v5 = swift_task_alloc();
    *(v0 + 104) = v5;
    *v5 = v0;
    v5[1] = sub_23FF75598;

    return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
  }
}

uint64_t sub_23FF75598()
{
  *(*v1 + 112) = v0;

  if (v0)
  {
    v2 = sub_23FF75884;
  }

  else
  {
    v2 = sub_23FF756AC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

void sub_23FF756AC()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if (v3 == 3)
  {
    v4 = *(v0 + 112);
    v5 = *(v0 + 96);
    *(swift_task_alloc() + 16) = v1;
    sub_23FF79628(v1, v2, 3u);
    sub_23FF79628(v1, v2, 3u);
    sub_23FF79628(v1, v2, 3u);
    os_unfair_lock_lock((v5 + 32));
    sub_23FF79610((v5 + 16));
    v6 = (*(v0 + 96) + 32);
    if (v4)
    {

      os_unfair_lock_unlock(v6);
      return;
    }

    os_unfair_lock_unlock(v6);
    sub_23FF795B0(v1, v2, 3u);
    sub_23FF795B0(v1, v2, 3u);

    sub_23FF795B0(v1, v2, 3u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v7 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v1, v2, v3);

    v1 = &unk_2851F2238;
  }

  v8 = *(v0 + 8);

  v8(v1);
}

uint64_t sub_23FF75884()
{
  v1 = *(v0 + 8);

  return v1(&unk_2851F2238);
}

uint64_t sub_23FF7590C()
{
  *(v0 + 16) = *(v0 + 72);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  *(v0 + 64) = 2;
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 80) = v1;
  *v1 = v0;
  v1[1] = sub_23FF6F93C;

  return sub_23FF56EC0(v0 + 16, sub_23FF75A28, 0);
}

void *static AppDistributor.synchronousDistributorPriorityList.getter()
{
  if (qword_27E3A2150 != -1)
  {
    swift_once();
  }

  v0 = off_27E3A2C00;
  os_unfair_lock_lock(off_27E3A2C00 + 8);
  v1 = *(v0 + 2);

  os_unfair_lock_unlock(v0 + 8);
  if (!v1)
  {
    v9 = 1;
    v10 = 0u;
    v11 = 0u;
    v12 = 0x2000000000000000;
    v13 = 1;
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v2 = sub_23FF7839C(&v9, sub_23FFBF448, 0, &v7);
    v3 = *(&v7 + 1);
    v1 = v7;
    v4 = v8;
    if (v8 == 3)
    {
      MEMORY[0x28223BE20](v2);
      sub_23FF79628(v1, v3, 3u);
      sub_23FF79628(v1, v3, 3u);
      sub_23FF79628(v1, v3, 3u);
      os_unfair_lock_lock(v0 + 8);
      sub_23FF79FA0(v0 + 2);
      os_unfair_lock_unlock(v0 + 8);
      sub_23FF795B0(v1, v3, 3u);
      sub_23FF795B0(v1, v3, 3u);
      sub_23FF795B0(v1, v3, 3u);
    }

    else
    {
      type metadata accessor for MarketplaceKitError(0);
      sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
      v5 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_23FF795B0(v1, v3, v4);

      return &unk_2851F2268;
    }
  }

  return v1;
}

uint64_t static AppDistributor.synchronousAllApprovedDevelopers.getter()
{
  if (qword_27E3A2150 != -1)
  {
    swift_once();
  }

  v0 = off_27E3A2C00;
  os_unfair_lock_lock(off_27E3A2C00 + 8);
  v1 = *(v0 + 3);

  os_unfair_lock_unlock(v0 + 8);
  if (!v1)
  {
    memset(v9, 0, sizeof(v9));
    v10 = 0;
    v11 = 0x2000000000000000;
    v12 = 1;
    if (qword_27E3A2160 != -1)
    {
      swift_once();
    }

    v2 = sub_23FF7839C(v9, sub_23FFBF448, 0, &v7);
    v3 = *(&v7 + 1);
    v1 = v7;
    v4 = v8;
    if (v8)
    {
      type metadata accessor for MarketplaceKitError(0);
      sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
      v5 = swift_allocError();
      swift_storeEnumTagMultiPayload();
      swift_willThrow();
      sub_23FF795B0(v1, v3, v4);

      return MEMORY[0x277D84F90];
    }

    else
    {
      MEMORY[0x28223BE20](v2);
      sub_23FF79628(v1, v3, 0);
      sub_23FF79628(v1, v3, 0);
      sub_23FF79628(v1, v3, 0);
      os_unfair_lock_lock(v0 + 8);
      sub_23FF796D4(v0 + 16);
      os_unfair_lock_unlock(v0 + 8);
      sub_23FF795B0(v1, v3, 0);
      sub_23FF795B0(v1, v3, 0);
      sub_23FF795B0(v1, v3, 0);
    }
  }

  return v1;
}

uint64_t static AppDistributor.setShouldShowInstallConfirmations(for:shouldShow:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 65) = a3;
  *(v3 + 72) = a1;
  *(v3 + 80) = a2;
  return MEMORY[0x2822009F8](sub_23FF75F34, 0, 0);
}

uint64_t sub_23FF75F34()
{
  *(v0 + 16) = *(v0 + 72);
  v1 = *(v0 + 65);
  *(v0 + 24) = *(v0 + 80);
  *(v0 + 32) = v1;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0;
  *(v0 + 40) = 0;
  *(v0 + 64) = 4;
  v2 = qword_27E3A2160;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = swift_task_alloc();
  *(v0 + 88) = v3;
  *v3 = v0;
  v3[1] = sub_23FF76058;

  return sub_23FF56EC0(v0 + 16, sub_23FFC4D64, 0);
}

uint64_t sub_23FF76058()
{

  if (v0)
  {

    v1 = sub_23FF79FB8;
  }

  else
  {
    v1 = sub_23FF76170;
  }

  return MEMORY[0x2822009F8](v1, 0, 0);
}

uint64_t sub_23FF76170()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static AppDistributor.synchronousSetShouldShowInstallConfirmations(for:shouldShow:)(uint64_t a1, uint64_t a2, char a3)
{
  *&v5 = a1;
  *(&v5 + 1) = a2;
  v6 = a3 & 1;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 4;
  v3 = qword_27E3A2160;

  if (v3 != -1)
  {
    swift_once();
  }

  sub_23FF788A8(&v5, sub_23FFC4D78, 0);
}

uint64_t static AppDistributor.synchronousShouldShowInstallConfirmations(for:)(uint64_t a1, uint64_t a2)
{
  *&v10 = a1;
  *(&v10 + 1) = a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0x3000000000000000;
  v15 = 0;
  v2 = qword_27E3A2160;

  if (v2 != -1)
  {
    swift_once();
  }

  sub_23FF7839C(&v10, sub_23FFBF448, 0, &v8);
  v4 = *(&v8 + 1);
  v3 = v8;
  v5 = v9;
  if (v9 == 5)
  {
    sub_23FF795B0(v8, *(&v8 + 1), 5u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v6 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v3, v4, v5);

    LOBYTE(v3) = 1;
  }

  return v3 & 1;
}

uint64_t static AppDistributor.shouldShowInstallConfirmations(for:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = a2;
  return MEMORY[0x2822009F8](sub_23FF76448, 0, 0);
}

uint64_t sub_23FF76448()
{
  *(v0 + 16) = *(v0 + 96);
  *(v0 + 24) = *(v0 + 104);
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0x3000000000000000;
  *(v0 + 64) = 0;
  v1 = qword_27E3A2160;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_23FF76570;

  return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FF76570()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_23FF767BC;
  }

  else
  {
    v2 = sub_23FF76684;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF76684()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = *(v0 + 88);
  if (v3 == 5)
  {
    sub_23FF795B0(*(v0 + 72), *(v0 + 80), 5u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v4 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v1, v2, v3);

    LOBYTE(v1) = 1;
  }

  v5 = *(v0 + 8);

  return v5(v1 & 1);
}

uint64_t sub_23FF767BC()
{
  v1 = *(v0 + 120);

  v2 = *(v0 + 8);

  return v2(1);
}

uint64_t sub_23FF76848()
{
  if (qword_27E3A2150 != -1)
  {
    swift_once();
  }

  *(v0 + 16) = 2;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0x2000000000000000;
  *(v0 + 64) = 1;
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 96) = v1;
  *v1 = v0;
  v1[1] = sub_23FF76998;

  return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FF76998()
{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = sub_23FF76BC8;
  }

  else
  {
    v2 = sub_23FF76AAC;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF76AAC()
{
  v2 = *(v0 + 72);
  v1 = *(v0 + 80);
  v3 = *(v0 + 88);
  if (v3 == 6)
  {
    sub_23FF795B0(*(v0 + 72), *(v0 + 80), 6u);
  }

  else
  {
    type metadata accessor for MarketplaceKitError(0);
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    v4 = swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    sub_23FF795B0(v2, v1, v3);

    LOBYTE(v2) = 0;
  }

  v5 = *(v0 + 8);

  return v5(v2 & 1);
}

uint64_t sub_23FF76BC8()
{
  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t AvailableAppMetadataRequest.distributorID.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AvailableAppMetadataRequest.init(distributorID:ids:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t sub_23FF76C70()
{
  if (*v0)
  {
    return 7562345;
  }

  else
  {
    return 0x7562697274736964;
  }
}

uint64_t sub_23FF76CB0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7562697274736964 && a2 == 0xED00004449726F74;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7562345 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF76D94(uint64_t a1)
{
  v2 = sub_23FF79720();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF76DD0(uint64_t a1)
{
  v2 = sub_23FF79720();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AvailableAppMetadataRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C08, &qword_23FFDD078);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF79720();
  sub_23FFD9ACC();
  v13 = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C18, &qword_23FFDD080);
    sub_23FF79774(&qword_27E3A2C20, MEMORY[0x277D84D40], MEMORY[0x277D83948]);
    sub_23FFD991C();
  }

  return (*(v10 + 8))(v6, v4);
}

uint64_t AvailableAppMetadataRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C28, &qword_23FFDD088);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF79720();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_23FFD980C();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C18, &qword_23FFDD080);
  v16 = 1;
  sub_23FF79774(&qword_27E3A2C30, MEMORY[0x277D84D68], MEMORY[0x277D83978]);
  sub_23FFD983C();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t static AppDistributor.availableApp(for:distributor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_23FF77274, 0, 0);
}

uint64_t sub_23FF77274()
{
  v1 = v0[3];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C38, &qword_23FFDD098);
  v2 = swift_allocObject();
  v0[6] = v2;
  *(v2 + 16) = xmmword_23FFDD040;
  *(v2 + 32) = v1;
  v3 = qword_27E3A2160;

  if (v3 != -1)
  {
    swift_once();
  }

  v4 = swift_task_alloc();
  v0[7] = v4;
  *v4 = v0;
  v4[1] = sub_23FF773C0;
  v6 = v0[4];
  v5 = v0[5];

  return sub_23FF572EC(v6, v5, v2, sub_23FF77894, 0);
}

uint64_t sub_23FF773C0(uint64_t a1)
{
  *(*v2 + 64) = a1;

  if (v1)
  {

    v3 = sub_23FF77534;
  }

  else
  {

    v3 = sub_23FF7755C;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF77534()
{
  v1 = *(v0 + 16);
  *v1 = 0;
  v1[1] = 0;
  *(*(v0 + 16) + 16) = 1;
  return (*(v0 + 8))();
}

uint64_t sub_23FF7755C()
{
  v1 = v0[8];
  if (v1)
  {
    v2 = v0[2];
    if (v1[2])
    {
      v3 = v1[4];
      v4 = v1[5];

      v5 = 0;
      *v2 = v3;
      v2[1] = v4;
      goto LABEL_7;
    }

    *v2 = 0;
    v2[1] = 0;
  }

  else
  {
    v6 = v0[2];
    *v6 = 0;
    v6[1] = 0;
  }

  v5 = 1;
LABEL_7:
  *(v0[2] + 16) = v5;
  v7 = v0[1];

  return v7();
}

uint64_t static AppDistributor.availableApps(for:distributor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = a2;
  v3[4] = a3;
  v3[2] = a1;
  return MEMORY[0x2822009F8](sub_23FF77628, 0, 0);
}

uint64_t sub_23FF77628()
{
  v1 = qword_27E3A2160;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  v0[5] = v2;
  *v2 = v0;
  v2[1] = sub_23FF7773C;
  v4 = v0[3];
  v3 = v0[4];
  v5 = v0[2];

  return sub_23FF572EC(v4, v3, v5, sub_23FF77894, 0);
}

uint64_t sub_23FF7773C(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {

    a1 = 0;
  }

  v5 = *(v4 + 8);

  return v5(a1);
}

uint64_t static AppDistributor.requestProductPage(_:itemID:versionID:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 25) = a5;
  *(v5 + 48) = a3;
  *(v5 + 56) = a4;
  *(v5 + 32) = a1;
  *(v5 + 40) = a2;
  type metadata accessor for LaunchAngelXPCRequest(0);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF77940, 0, 0);
}

uint64_t sub_23FF77940()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 25);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  *v1 = *(v0 + 48);
  *(v1 + 16) = v2 & 1;
  *(v1 + 24) = v3;
  *(v1 + 32) = v4;
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  *(v0 + 72) = v5;
  *v5 = v0;
  v5[1] = sub_23FF77A20;
  v6 = *(v0 + 64);

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)(v0 + 16, v6);
}

uint64_t sub_23FF77A20()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_23FF79F9C;
  }

  else
  {
    sub_23FF7983C(*(v2 + 16), *(v2 + 24));
    v3 = sub_23FF79FBC;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t static AppDistributor.requestSearchPage(_:searchString:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  type metadata accessor for LaunchAngelXPCRequest(0);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF77BD4, 0, 0);
}

uint64_t sub_23FF77BD4()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  *v2 = v0[6];
  v2[1] = v1;
  v2[2] = v4;
  v2[3] = v3;
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_23FF77CB8;
  v6 = v0[8];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v6);
}

uint64_t sub_23FF77CB8()
{
  v2 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v3 = sub_23FF77E48;
  }

  else
  {
    sub_23FF7983C(*(v2 + 16), *(v2 + 24));
    v3 = sub_23FF77DD8;
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

uint64_t sub_23FF77DD8()
{
  sub_23FF797E0(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF77E48()
{
  sub_23FF797E0(*(v0 + 64));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t static AppDistributor.requestAuthorization(_:account:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[6] = a3;
  v4[7] = a4;
  v4[4] = a1;
  v4[5] = a2;
  type metadata accessor for LaunchAngelXPCRequest(0);
  v4[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_23FF77F4C, 0, 0);
}

uint64_t sub_23FF77F4C()
{
  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[4];
  *v2 = v0[6];
  v2[1] = v1;
  v2[2] = v4;
  v2[3] = v3;
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  swift_storeEnumTagMultiPayload();

  v5 = swift_task_alloc();
  v0[9] = v5;
  *v5 = v0;
  v5[1] = sub_23FF77A20;
  v6 = v0[8];

  return static LaunchAngelConnectionUtilities.handleLaunchAngelRequest(_:)((v0 + 2), v6);
}

uint64_t sub_23FF7804C()
{
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_23FF6E6E4;

  return sub_23FF57684(1, sub_23FF78140, 0);
}

void sub_23FF78140(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7[4] = a4;
  v7[5] = a5;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = sub_23FF6839C;
  v7[3] = &block_descriptor_36;
  v6 = _Block_copy(v7);

  [a1 handleEmergencyResetRequestWithReply_];
  _Block_release(v6);
}

uint64_t static AppDistributor.addAllowedDeveloper(_:name:supportURL:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *&v8 = a1;
  *(&v8 + 1) = a2;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = 0;
  v6 = qword_27E3A2160;

  if (v6 != -1)
  {
    swift_once();
  }

  sub_23FF788A8(&v8, sub_23FF782D8, 0);
}

uint64_t static AppDistributor.addConditionallyAllowedDeveloper(_:)(uint64_t a1, uint64_t a2)
{
  *&v3[0] = a1;
  *(&v3[0] + 1) = a2;
  memset(&v3[1], 0, 32);
  v4 = 1;
  if (qword_27E3A2160 != -1)
  {
    swift_once();
  }

  return sub_23FF788A8(v3, sub_23FF78388, 0);
}

uint64_t sub_23FF7839C@<X0>(__int128 *a1@<X0>, void (*a2)(uint64_t, void, unint64_t, uint64_t (*)(), uint64_t)@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  v35 = a3;
  v36 = a2;
  v7 = *v4;
  v33 = a4;
  v34 = v7;
  v8 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v8);
  v10 = v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2638, &qword_23FFDB0E8);
  MEMORY[0x28223BE20](v11);
  v13 = v32 - v12;
  v14 = a1[1];
  v39 = *a1;
  v40 = v14;
  v41 = a1[2];
  v42 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C80, &qword_23FFDD2D0);
  swift_allocObject();
  v15 = sub_23FFD90CC();
  v16 = sub_23FFD90FC();
  aBlock[4] = sub_23FF79BF0;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_48;
  v17 = _Block_copy(aBlock);

  v18 = [v16 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v17);

  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(v38, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (!swift_dynamicCast())
  {
    v23 = sub_23FFD909C();
    sub_23FF79A54(&qword_27E3A2C60, MEMORY[0x277CD4A58], MEMORY[0x277CD4A60]);
    swift_allocError();
    (*(*(v23 - 8) + 104))(v24, *MEMORY[0x277CD4A50], v23);
    swift_willThrow();
LABEL_5:

    return __swift_destroy_boxed_opaque_existential_1(v38);
  }

  v19 = v43;
  sub_23FF63CF0();
  sub_23FF63D44();
  v20 = sub_23FFD90EC();
  if (v5)
  {
    __swift_destroy_boxed_opaque_existential_1(v38);
    swift_unknownObjectRelease();
  }

  v25 = v21;
  v32[1] = v8;
  v26 = v20;
  v27 = swift_allocObject();
  v28 = v34;
  *(v27 + 16) = v15;
  *(v27 + 24) = v28;

  v34 = v19;
  v36(v19, v26, v25, sub_23FF79C1C, v27);

  sub_23FFD90AC();
  v36 = v26;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF51974(v13, v10);
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    swift_willThrowTypedImpl();
    swift_allocError();
    sub_23FF51974(v10, v29);
    swift_unknownObjectRelease();
    sub_23FF62F84(v36, v25);
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
  sub_23FF62F84(v36, v25);

  result = __swift_destroy_boxed_opaque_existential_1(v38);
  v30 = v13[16];
  v31 = v33;
  *v33 = *v13;
  *(v31 + 16) = v30;
  return result;
}

uint64_t sub_23FF788A8(__int128 *a1, void (*a2)(uint64_t, void, unint64_t, uint64_t (*)(), uint64_t), uint64_t a3)
{
  v30 = a3;
  v31 = a2;
  v29 = *v3;
  v6 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2540, &qword_23FFDB058);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = a1[1];
  v34 = *a1;
  v35 = v12;
  v36 = a1[2];
  v37 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C78, &unk_23FFDD2C0);
  swift_allocObject();
  v13 = sub_23FFD90CC();
  v14 = sub_23FFD90FC();
  aBlock[4] = sub_23FF79B84;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_42_0;
  v15 = _Block_copy(aBlock);

  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(v33, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (!swift_dynamicCast())
  {
    v21 = sub_23FFD909C();
    sub_23FF79A54(&qword_27E3A2C60, MEMORY[0x277CD4A58], MEMORY[0x277CD4A60]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CD4A50], v21);
    swift_willThrow();
LABEL_5:

    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v17 = v38;
  sub_23FF63C30();
  sub_23FF63C84();
  v18 = sub_23FFD90EC();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    swift_unknownObjectRelease();
  }

  v23 = v19;
  v28 = v6;
  v24 = v18;
  v25 = swift_allocObject();
  v26 = v29;
  *(v25 + 16) = v13;
  *(v25 + 24) = v26;

  v29 = v17;
  v31(v17, v24, v23, sub_23FF79BB0, v25);

  sub_23FFD90AC();
  v31 = v24;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF51974(v11, v8);
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    swift_willThrowTypedImpl();
    swift_allocError();
    sub_23FF51974(v8, v27);
    swift_unknownObjectRelease();
    sub_23FF62F84(v31, v23);
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
  sub_23FF62F84(v31, v23);

  __swift_destroy_boxed_opaque_existential_1(v33);
  return *v11;
}

uint64_t sub_23FF78D9C(__int128 *a1, void (*a2)(uint64_t, void, unint64_t, uint64_t (*)(), uint64_t), uint64_t a3)
{
  v30 = a3;
  v31 = a2;
  v29 = *v3;
  v6 = type metadata accessor for MarketplaceKitError(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A25F0, &qword_23FFDB0C0);
  MEMORY[0x28223BE20](v9);
  v11 = &v28 - v10;
  v12 = a1[1];
  v34 = *a1;
  v35 = v12;
  v36 = a1[2];
  v37 = *(a1 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C58, &qword_23FFDD2A8);
  swift_allocObject();
  v13 = sub_23FFD90CC();
  v14 = sub_23FFD90FC();
  aBlock[4] = sub_23FF79A10;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF5E6C0;
  aBlock[3] = &block_descriptor_5;
  v15 = _Block_copy(aBlock);

  v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler_];
  _Block_release(v15);

  sub_23FFD95DC();
  swift_unknownObjectRelease();
  sub_23FF63004(v33, aBlock);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24B8, &qword_23FFDAFF8);
  if (!swift_dynamicCast())
  {
    v21 = sub_23FFD909C();
    sub_23FF79A54(&qword_27E3A2C60, MEMORY[0x277CD4A58], MEMORY[0x277CD4A60]);
    swift_allocError();
    (*(*(v21 - 8) + 104))(v22, *MEMORY[0x277CD4A50], v21);
    swift_willThrow();
LABEL_5:

    return __swift_destroy_boxed_opaque_existential_1(v33);
  }

  v17 = v38;
  sub_23FF79A9C();
  sub_23FF79AF0();
  v18 = sub_23FFD90EC();
  if (v4)
  {
    __swift_destroy_boxed_opaque_existential_1(v33);
    swift_unknownObjectRelease();
  }

  v23 = v19;
  v28 = v6;
  v24 = v18;
  v25 = swift_allocObject();
  v26 = v29;
  *(v25 + 16) = v13;
  *(v25 + 24) = v26;

  v29 = v17;
  v31(v17, v24, v23, sub_23FF79B44, v25);

  sub_23FFD90AC();
  v31 = v24;
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_23FF51974(v11, v8);
    sub_23FF79A54(&qword_27E3A24C0, type metadata accessor for MarketplaceKitError, protocol conformance descriptor for MarketplaceKitError);
    swift_willThrowTypedImpl();
    swift_allocError();
    sub_23FF51974(v8, v27);
    swift_unknownObjectRelease();
    sub_23FF62F84(v31, v23);
    goto LABEL_5;
  }

  swift_unknownObjectRelease();
  sub_23FF62F84(v31, v23);

  __swift_destroy_boxed_opaque_existential_1(v33);
  return *v11;
}

uint64_t sub_23FF79290(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a4;
  v5 = a3;
  v29 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = sub_23FFD929C();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFD923C();
  v14 = a1;
  v15 = sub_23FFD927C();
  v16 = sub_23FFD955C();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v27 = v5;
    v18 = v17;
    v19 = swift_slowAlloc();
    v28 = v4;
    v20 = v19;
    *v18 = 138543362;
    v21 = a1;
    v22 = _swift_stdlib_bridgeErrorToNSError();
    *(v18 + 4) = v22;
    *v20 = v22;
    _os_log_impl(&dword_23FF4C000, v15, v16, "Error fetching synchronous remote object proxy: %{public}@", v18, 0xCu);
    sub_23FF64248(v20, &qword_27E3A24F0, &unk_23FFDD2B0);
    v23 = v20;
    v4 = v28;
    MEMORY[0x245CB48E0](v23, -1, -1);
    v24 = v18;
    v5 = v27;
    MEMORY[0x245CB48E0](v24, -1, -1);
  }

  (*(v11 + 8))(v13, v10);
  type metadata accessor for MarketplaceKitError(0);
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  sub_23FFD90BC();
  return sub_23FF64248(v9, v5, v4);
}

uint64_t sub_23FF794F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t))
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v16 - v13;
  a7(a1, a2);
  sub_23FFD90BC();
  return sub_23FF64248(v14, a5, a6);
}

uint64_t sub_23FF795B0(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (!a3 || a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3 > 7u)
  {
    if (a3 == 8 || a3 == 9)
    {
    }
  }

  else if (a3 == 4)
  {
    return sub_23FF62F84(result, a2);
  }

  else if (a3 == 7)
  {
  }

  return result;
}

uint64_t sub_23FF79628(uint64_t result, unint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 3u)
  {
    if (!a3 || a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3 > 7u)
  {
    if (a3 == 8 || a3 == 9)
    {
    }
  }

  else if (a3 == 4)
  {
    return sub_23FF71730(result, a2);
  }

  else if (a3 == 7)
  {
  }

  return result;
}

uint64_t sub_23FF79688(uint64_t *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return result;
}

uint64_t sub_23FF796D4(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(a1 + 8) = v3;
  return result;
}

unint64_t sub_23FF79720()
{
  result = qword_27E3A2C10;
  if (!qword_27E3A2C10)
  {
    result = swift_getWitnessTable(byte_23FFDD250, &type metadata for AvailableAppMetadataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2C10);
  }

  return result;
}

uint64_t sub_23FF79774(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A2C18, &qword_23FFDD080);
    v8 = a2;
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FF797E0(uint64_t a1)
{
  v2 = type metadata accessor for LaunchAngelXPCRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23FF7983C(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

uint64_t sub_23FF79860(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_23FF798A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23FF7990C()
{
  result = qword_27E3A2C40;
  if (!qword_27E3A2C40)
  {
    result = swift_getWitnessTable(byte_23FFDD228, &type metadata for AvailableAppMetadataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2C40);
  }

  return result;
}

unint64_t sub_23FF79964()
{
  result = qword_27E3A2C48;
  if (!qword_27E3A2C48)
  {
    result = swift_getWitnessTable(asc_23FFDD198, &type metadata for AvailableAppMetadataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2C48);
  }

  return result;
}

unint64_t sub_23FF799BC()
{
  result = qword_27E3A2C50;
  if (!qword_27E3A2C50)
  {
    result = swift_getWitnessTable(byte_23FFDD1C0, &type metadata for AvailableAppMetadataRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2C50);
  }

  return result;
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_23FF79A54(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FF79A9C()
{
  result = qword_27E3A2C68;
  if (!qword_27E3A2C68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InstallRequirements, &type metadata for InstallRequirements, v0, v1);
    atomic_store(result, &qword_27E3A2C68);
  }

  return result;
}

unint64_t sub_23FF79AF0()
{
  result = qword_27E3A2C70;
  if (!qword_27E3A2C70)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for InstallRequirements, &type metadata for InstallRequirements, v0, v1);
    atomic_store(result, &qword_27E3A2C70);
  }

  return result;
}

uint64_t sub_23FF79C5C()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = sub_23FFD92CC();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C88, &qword_23FFDD2D8);
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *(v4 + 32) = 0;
  out_token = -1;
  sub_23FF79E5C();
  (*(v1 + 104))(v3, *MEMORY[0x277D851C8], v0);

  v5 = sub_23FFD95AC();
  (*(v1 + 8))(v3, v0);
  aBlock[4] = sub_23FF79EA8;
  aBlock[5] = v4;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF75374;
  aBlock[3] = &block_descriptor_57;
  v6 = _Block_copy(aBlock);

  notify_register_dispatch("com.apple.managedappdistributiond.priorityOrAllowedDevelopersChanged", &out_token, v5, v6);
  _Block_release(v6);

  return v4;
}

unint64_t sub_23FF79E5C()
{
  result = qword_2814FD798;
  if (!qword_2814FD798)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2814FD798);
  }

  return result;
}

uint64_t sub_23FF79EC0(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23FF79F1C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

unint64_t sub_23FF7A030()
{
  v1 = 0xD000000000000012;
  v2 = *v0;
  v3 = 0xD000000000000017;
  if (v2 != 5)
  {
    v3 = 0xD000000000000015;
  }

  v4 = 0xD000000000000016;
  if (v2 != 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v1 = 0xD000000000000014;
  }

  if (*v0 <= 2u)
  {
    return v1;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_23FF7A0F0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF8015C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF7A124(uint64_t a1)
{
  v2 = sub_23FF7B5F0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A160(uint64_t a1)
{
  v2 = sub_23FF7B5F0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A19C()
{
  if (*v0)
  {
    return 0x7562697274736964;
  }

  else
  {
    return 0x746E756F636361;
  }
}

uint64_t sub_23FF7A1E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F636361 && a2 == 0xE700000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF7A2C8(uint64_t a1)
{
  v2 = sub_23FF7B908();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A304(uint64_t a1)
{
  v2 = sub_23FF7B908();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A340()
{
  v1 = 0x496E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x7562697274736964;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x44496D657469;
  }
}

uint64_t sub_23FF7A3A8@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF803A8(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF7A3D0(uint64_t a1)
{
  v2 = sub_23FF7B9B0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A40C(uint64_t a1)
{
  v2 = sub_23FF7B9B0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A448()
{
  if (*v0)
  {
    return 0x7562697274736964;
  }

  else
  {
    return 0x7972657571;
  }
}

uint64_t sub_23FF7A48C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972657571 && a2 == 0xE500000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF7A56C(uint64_t a1)
{
  v2 = sub_23FF7B95C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A5A8(uint64_t a1)
{
  v2 = sub_23FF7B95C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A5FC(uint64_t a1)
{
  v2 = sub_23FF7B854();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A638(uint64_t a1)
{
  v2 = sub_23FF7B854();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A674(uint64_t a1)
{
  v2 = sub_23FF7B764();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A6B0(uint64_t a1)
{
  v2 = sub_23FF7B764();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A6EC(uint64_t a1)
{
  v2 = sub_23FF7B800();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A728(uint64_t a1)
{
  v2 = sub_23FF7B800();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7A764@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x747865746E6F63 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF7A7EC(uint64_t a1)
{
  v2 = sub_23FF7B710();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7A828(uint64_t a1)
{
  v2 = sub_23FF7B710();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchAngelXPCRequest.RequestType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C90, &qword_23FFDD360);
  v76 = *(v2 - 8);
  v77 = v2;
  MEMORY[0x28223BE20](v2);
  v75 = &v56 - v3;
  v73 = type metadata accessor for ConfirmationSheetContext(0);
  MEMORY[0x28223BE20](v73);
  v74 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2C98, &qword_23FFDD368);
  v71 = *(v5 - 8);
  v72 = v5;
  MEMORY[0x28223BE20](v5);
  v70 = &v56 - v6;
  v68 = type metadata accessor for LicenseResolutionContext(0);
  MEMORY[0x28223BE20](v68);
  v69 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2CA0, &qword_23FFDD370);
  v66 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v65 = &v56 - v8;
  v63 = type metadata accessor for OAuthAuthorizationContext(0);
  MEMORY[0x28223BE20](v63);
  v64 = &v56 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2CA8, &qword_23FFDD378);
  v61 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v60 = &v56 - v10;
  v57 = type metadata accessor for InstallSheetContext(0);
  MEMORY[0x28223BE20](v57);
  v59 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2CB0, &qword_23FFDD380);
  v81 = *(v12 - 8);
  v82 = v12;
  MEMORY[0x28223BE20](v12);
  v80 = &v56 - v13;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2CB8, &qword_23FFDD388);
  v58 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v15 = &v56 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2CC0, &qword_23FFDD390);
  v78 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v56 - v17;
  v19 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  MEMORY[0x28223BE20](v19);
  v21 = (&v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2CC8, &qword_23FFDD398);
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v23 = &v56 - v22;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7B5F0();
  v86 = v23;
  sub_23FFD9ACC();
  sub_23FF7B644(v83, v21);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v31 = v18;
    v32 = v78;
    v33 = v79;
    v34 = v80;
    v35 = v81;
    v36 = v82;
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        v94 = 1;
        sub_23FF7B95C();
        v37 = v15;
        v39 = v86;
        v38 = v87;
        sub_23FFD988C();
        v93 = 0;
        v40 = v84;
        sub_23FFD98EC();

        if (v40)
        {

          (*(v58 + 8))(v37, v33);
          return (*(v85 + 8))(v39, v38);
        }

        else
        {
          v92 = 1;
          sub_23FFD98EC();
          v55 = v58;

          (*(v55 + 8))(v37, v33);
          return (*(v85 + 8))(v39, v87);
        }
      }

      v83 = v21[2];
      v97 = 2;
      sub_23FF7B908();
      v49 = v86;
      v44 = v87;
      sub_23FFD988C();
      v96 = 0;
      v50 = v84;
      sub_23FFD98EC();

      if (!v50)
      {
        v95 = 1;
        sub_23FFD98EC();
      }

      (*(v35 + 8))(v34, v36);
      v47 = *(v85 + 8);
      v48 = v49;
    }

    else
    {
      v83 = v21[1];
      LODWORD(v82) = *(v21 + 16);
      v81 = v21[3];
      v91 = 0;
      sub_23FF7B9B0();
      v45 = v86;
      v44 = v87;
      sub_23FFD988C();
      v90 = 0;
      v46 = v84;
      sub_23FFD993C();
      if (v46)
      {

        (*(v32 + 8))(v31, v16);
        v47 = *(v85 + 8);
        v48 = v45;
      }

      else
      {
        v89 = 1;
        sub_23FFD98DC();
        v88 = 2;
        sub_23FFD98EC();

        (*(v32 + 8))(v31, v16);
        v48 = v86;
        v47 = *(v85 + 8);
      }
    }

    return v47(v48, v44);
  }

  if (EnumCaseMultiPayload > 4)
  {
    v25 = v86;
    if (EnumCaseMultiPayload == 5)
    {
      v26 = v69;
      sub_23FF7B6A8(v21, v69, type metadata accessor for LicenseResolutionContext);
      v100 = 5;
      sub_23FF7B764();
      v42 = v70;
      v28 = v87;
      sub_23FFD988C();
      sub_23FF7B7B8(&qword_27E3A2CF0, type metadata accessor for LicenseResolutionContext, protocol conformance descriptor for LicenseResolutionContext);
      v43 = v72;
      sub_23FFD991C();
      (*(v71 + 8))(v42, v43);
      v30 = type metadata accessor for LicenseResolutionContext;
    }

    else
    {
      v26 = v74;
      sub_23FF7B6A8(v21, v74, type metadata accessor for ConfirmationSheetContext);
      v101 = 6;
      sub_23FF7B710();
      v53 = v75;
      v28 = v87;
      sub_23FFD988C();
      sub_23FF7B7B8(&qword_27E3A2CE0, type metadata accessor for ConfirmationSheetContext, protocol conformance descriptor for ConfirmationSheetContext);
      v54 = v77;
      sub_23FFD991C();
      (*(v76 + 8))(v53, v54);
      v30 = type metadata accessor for ConfirmationSheetContext;
    }
  }

  else
  {
    v25 = v86;
    if (EnumCaseMultiPayload == 3)
    {
      v26 = v59;
      sub_23FF7B6A8(v21, v59, type metadata accessor for InstallSheetContext);
      v98 = 3;
      sub_23FF7B854();
      v27 = v60;
      v28 = v87;
      sub_23FFD988C();
      sub_23FF7B7B8(&qword_27E3A2D10, type metadata accessor for InstallSheetContext, protocol conformance descriptor for InstallSheetContext);
      v29 = v62;
      sub_23FFD991C();
      (*(v61 + 8))(v27, v29);
      v30 = type metadata accessor for InstallSheetContext;
    }

    else
    {
      v26 = v64;
      sub_23FF7B6A8(v21, v64, type metadata accessor for OAuthAuthorizationContext);
      v99 = 4;
      sub_23FF7B800();
      v51 = v65;
      v28 = v87;
      sub_23FFD988C();
      sub_23FF7B7B8(&qword_27E3A2D00, type metadata accessor for OAuthAuthorizationContext, "qr%BԳ");
      v52 = v67;
      sub_23FFD991C();
      (*(v66 + 8))(v51, v52);
      v30 = type metadata accessor for OAuthAuthorizationContext;
    }
  }

  sub_23FF7B8A8(v26, v30);
  return (*(v85 + 8))(v25, v28);
}

unint64_t sub_23FF7B5F0()
{
  result = qword_27E3A2CD0;
  if (!qword_27E3A2CD0)
  {
    result = swift_getWitnessTable(byte_23FFDE770, &type metadata for LaunchAngelXPCRequest.RequestType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2CD0);
  }

  return result;
}

uint64_t sub_23FF7B644(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF7B6A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_23FF7B710()
{
  result = qword_27E3A2CD8;
  if (!qword_27E3A2CD8)
  {
    result = swift_getWitnessTable(asc_23FFDE720, &type metadata for LaunchAngelXPCRequest.RequestType.ShowConfirmationSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2CD8);
  }

  return result;
}

unint64_t sub_23FF7B764()
{
  result = qword_27E3A2CE8;
  if (!qword_27E3A2CE8)
  {
    result = swift_getWitnessTable(aY, &type metadata for LaunchAngelXPCRequest.RequestType.HandleLicenseResolutionCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2CE8);
  }

  return result;
}

uint64_t sub_23FF7B7B8(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3, ...)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FF7B800()
{
  result = qword_27E3A2CF8;
  if (!qword_27E3A2CF8)
  {
    result = swift_getWitnessTable(byte_23FFDE680, &type metadata for LaunchAngelXPCRequest.RequestType.OauthAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2CF8);
  }

  return result;
}

unint64_t sub_23FF7B854()
{
  result = qword_27E3A2D08;
  if (!qword_27E3A2D08)
  {
    result = swift_getWitnessTable(byte_23FFDE630, &type metadata for LaunchAngelXPCRequest.RequestType.GetInstallConfirmationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2D08);
  }

  return result;
}

uint64_t sub_23FF7B8A8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_23FF7B908()
{
  result = qword_27E3A2D18;
  if (!qword_27E3A2D18)
  {
    result = swift_getWitnessTable(aI, &type metadata for LaunchAngelXPCRequest.RequestType.DisplayAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2D18);
  }

  return result;
}

unint64_t sub_23FF7B95C()
{
  result = qword_27E3A2D20;
  if (!qword_27E3A2D20)
  {
    result = swift_getWitnessTable(byte_23FFDE590, &type metadata for LaunchAngelXPCRequest.RequestType.DisplaySearchResultsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2D20);
  }

  return result;
}

unint64_t sub_23FF7B9B0()
{
  result = qword_27E3A2D28;
  if (!qword_27E3A2D28)
  {
    result = swift_getWitnessTable(byte_23FFDE540, &type metadata for LaunchAngelXPCRequest.RequestType.DisplayProductPageCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2D28);
  }

  return result;
}

uint64_t LaunchAngelXPCRequest.RequestType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v153 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D30, &qword_23FFDD3A0);
  v4 = *(v3 - 8);
  v140 = v3;
  v141 = v4;
  MEMORY[0x28223BE20](v3);
  v152 = &v122 - v5;
  v139 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D38, &qword_23FFDD3A8);
  v138 = *(v139 - 8);
  MEMORY[0x28223BE20](v139);
  v145 = &v122 - v6;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D40, &qword_23FFDD3B0);
  v136 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v151 = &v122 - v7;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D48, &qword_23FFDD3B8);
  v134 = *(v135 - 8);
  MEMORY[0x28223BE20](v135);
  v144 = &v122 - v8;
  v133 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D50, &qword_23FFDD3C0);
  v132 = *(v133 - 8);
  MEMORY[0x28223BE20](v133);
  v143 = &v122 - v9;
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D58, &qword_23FFDD3C8);
  v129 = *(v130 - 8);
  MEMORY[0x28223BE20](v130);
  v150 = &v122 - v10;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D60, &qword_23FFDD3D0);
  v142 = *(v131 - 8);
  MEMORY[0x28223BE20](v131);
  v148 = &v122 - v11;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D68, &unk_23FFDD3D8);
  v147 = *(v154 - 8);
  MEMORY[0x28223BE20](v154);
  v13 = &v122 - v12;
  v146 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  v14 = MEMORY[0x28223BE20](v146);
  v128 = &v122 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v14);
  v127 = &v122 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v126 = &v122 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v122 - v21;
  v23 = MEMORY[0x28223BE20](v20);
  v25 = &v122 - v24;
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v122 - v27;
  v29 = MEMORY[0x28223BE20](v26);
  v31 = &v122 - v30;
  MEMORY[0x28223BE20](v29);
  v33 = &v122 - v32;
  v34 = a1[3];
  v155 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v34);
  sub_23FF7B5F0();
  v149 = v13;
  v35 = v156;
  sub_23FFD9AAC();
  v156 = v35;
  if (v35)
  {
    goto LABEL_12;
  }

  v123 = v28;
  v124 = v25;
  v122 = v31;
  v125 = v22;
  v37 = v148;
  v36 = v149;
  v38 = v150;
  v39 = v151;
  v40 = v152;
  v41 = v153;
  v42 = sub_23FFD986C();
  v43 = (2 * *(v42 + 16)) | 1;
  v157 = v42;
  v158 = v42 + 32;
  v159 = 0;
  v160 = v43;
  v44 = sub_23FF701F0();
  if (v44 == 7 || v159 != v160 >> 1)
  {
    v53 = sub_23FFD970C();
    v54 = swift_allocError();
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
    *v56 = v146;
    v57 = v36;
    v58 = v154;
    sub_23FFD97AC();
    sub_23FFD96FC();
    (*(*(v53 - 8) + 104))(v56, *MEMORY[0x277D84160], v53);
    v156 = v54;
    swift_willThrow();
    (*(v147 + 8))(v57, v58);
  }

  else
  {
    if (v44 > 2u)
    {
      v45 = v33;
      if (v44 <= 4u)
      {
        v150 = v33;
        v46 = v154;
        v47 = v147;
        if (v44 == 3)
        {
          v161 = 3;
          sub_23FF7B854();
          v48 = v144;
          v49 = v156;
          sub_23FFD979C();
          v156 = v49;
          if (v49)
          {
LABEL_30:
            (*(v47 + 8))(v36, v46);
            goto LABEL_11;
          }

          type metadata accessor for InstallSheetContext(0);
          sub_23FF7B7B8(&qword_27E3A2D88, type metadata accessor for InstallSheetContext, protocol conformance descriptor for InstallSheetContext);
          v50 = v125;
          v51 = v135;
          v52 = v156;
          sub_23FFD983C();
          v156 = v52;
          if (v52)
          {
            (*(v134 + 8))(v48, v51);
            goto LABEL_30;
          }

          (*(v134 + 8))(v48, v51);
          (*(v47 + 8))(v36, v46);
          swift_unknownObjectRelease();
        }

        else
        {
          v161 = 4;
          sub_23FF7B800();
          v83 = v156;
          sub_23FFD979C();
          v156 = v83;
          if (v83)
          {
            goto LABEL_30;
          }

          type metadata accessor for OAuthAuthorizationContext(0);
          sub_23FF7B7B8(&qword_27E3A2D80, type metadata accessor for OAuthAuthorizationContext, protocol conformance descriptor for OAuthAuthorizationContext);
          v50 = v126;
          v84 = v39;
          v85 = v137;
          v86 = v156;
          sub_23FFD983C();
          v156 = v86;
          if (v86)
          {
            (*(v136 + 8))(v84, v85);
            goto LABEL_30;
          }

          (*(v136 + 8))(v84, v85);
          (*(v47 + 8))(v36, v46);
          swift_unknownObjectRelease();
        }

        swift_storeEnumTagMultiPayload();
        v109 = v155;
        v66 = v41;
        goto LABEL_42;
      }

      v66 = v41;
      v67 = v154;
      v68 = v147;
      if (v44 == 5)
      {
        v161 = 5;
        sub_23FF7B764();
        v69 = v156;
        sub_23FFD979C();
        v156 = v69;
        if (!v69)
        {
          type metadata accessor for LicenseResolutionContext(0);
          sub_23FF7B7B8(&qword_27E3A2D78, type metadata accessor for LicenseResolutionContext, protocol conformance descriptor for LicenseResolutionContext);
          v70 = v127;
          v71 = v139;
          v72 = v145;
          v73 = v156;
          sub_23FFD983C();
          v156 = v73;
          if (v73)
          {
            (*(v138 + 8))(v72, v71);
            goto LABEL_34;
          }

          (*(v138 + 8))(v72, v71);
          (*(v68 + 8))(v36, v67);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v50 = v70;
          v109 = v155;
LABEL_43:
          sub_23FF7B6A8(v50, v45, type metadata accessor for LaunchAngelXPCRequest.RequestType);
          sub_23FF7B6A8(v45, v66, type metadata accessor for LaunchAngelXPCRequest.RequestType);
          v59 = v109;
          return __swift_destroy_boxed_opaque_existential_1(v59);
        }
      }

      else
      {
        v150 = v45;
        v161 = 6;
        sub_23FF7B710();
        v87 = v40;
        v88 = v156;
        sub_23FFD979C();
        v156 = v88;
        if (!v88)
        {
          type metadata accessor for ConfirmationSheetContext(0);
          sub_23FF7B7B8(&qword_27E3A2D70, type metadata accessor for ConfirmationSheetContext, protocol conformance descriptor for ConfirmationSheetContext);
          v89 = v128;
          v90 = v140;
          v91 = v156;
          sub_23FFD983C();
          v156 = v91;
          if (!v91)
          {
            (*(v141 + 8))(v87, v90);
            (*(v68 + 8))(v36, v67);
            swift_unknownObjectRelease();
            swift_storeEnumTagMultiPayload();
            v50 = v89;
            v109 = v155;
LABEL_42:
            v45 = v150;
            goto LABEL_43;
          }

          (*(v141 + 8))(v87, v90);
        }
      }

LABEL_34:
      (*(v68 + 8))(v36, v67);
      goto LABEL_11;
    }

    if (!v44)
    {
      v161 = 0;
      sub_23FF7B9B0();
      v74 = v37;
      v75 = v154;
      v76 = v156;
      sub_23FFD979C();
      v156 = v76;
      if (v76)
      {
        (*(v147 + 8))(v36, v75);
        goto LABEL_11;
      }

      v161 = 0;
      v77 = v131;
      v78 = sub_23FFD985C();
      v156 = 0;
      v94 = v78;
      v161 = 1;
      v95 = sub_23FFD97FC();
      v156 = 0;
      LODWORD(v152) = v102;
      v103 = v95;
      v161 = 2;
      v104 = sub_23FFD980C();
      v156 = 0;
      v116 = v104;
      v117 = v77;
      v119 = v118;
      (*(v142 + 8))(v74, v117);
      v120 = v75;
      v45 = v33;
      (*(v147 + 8))(v36, v120);
      swift_unknownObjectRelease();
      v121 = v122;
      *v122 = v94;
      v121[1] = v103;
      *(v121 + 16) = v152 & 1;
      v121[3] = v116;
      v121[4] = v119;
      swift_storeEnumTagMultiPayload();
      v50 = v121;
      v109 = v155;
      v66 = v41;
      goto LABEL_43;
    }

    if (v44 == 1)
    {
      v161 = 1;
      sub_23FF7B95C();
      v61 = v154;
      v62 = v156;
      sub_23FFD979C();
      v63 = v147;
      v156 = v62;
      if (!v62)
      {
        v161 = 0;
        v64 = v130;
        v65 = sub_23FFD980C();
        v156 = 0;
        v151 = v65;
        v152 = v96;
        v161 = 1;
        v97 = sub_23FFD980C();
        v98 = (v63 + 8);
        v156 = 0;
        v105 = *(v129 + 8);
        v148 = v97;
        v107 = v106;
        v105(v38, v64);
        (*v98)(v36, v61);
        swift_unknownObjectRelease();
        v108 = v152;
        v50 = v123;
        *v123 = v151;
        v50[1] = v108;
        v50[2] = v148;
        v50[3] = v107;
        swift_storeEnumTagMultiPayload();
        v109 = v155;
LABEL_44:
        v66 = v41;
        v45 = v33;
        goto LABEL_43;
      }

      (*(v147 + 8))(v36, v61);
    }

    else
    {
      v161 = 2;
      sub_23FF7B908();
      v79 = v143;
      v80 = v154;
      v81 = v156;
      sub_23FFD979C();
      v82 = v147;
      v156 = v81;
      if (!v81)
      {
        v161 = 0;
        v92 = v133;
        v93 = sub_23FFD980C();
        v156 = 0;
        v152 = v93;
        v100 = v99;
        v161 = 1;
        v101 = sub_23FFD980C();
        v156 = 0;
        v110 = *(v132 + 8);
        v151 = v101;
        v111 = v79;
        v113 = v112;
        v110(v111, v92);
        (*(v82 + 8))(v36, v154);
        swift_unknownObjectRelease();
        v114 = v151;
        v115 = v124;
        *v124 = v152;
        v115[1] = v100;
        v115[2] = v114;
        v115[3] = v113;
        swift_storeEnumTagMultiPayload();
        v109 = v155;
        v50 = v115;
        goto LABEL_44;
      }

      (*(v147 + 8))(v36, v80);
    }
  }

LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v59 = v155;
  return __swift_destroy_boxed_opaque_existential_1(v59);
}

uint64_t sub_23FF7CBF8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5474736575716572 && a2 == 0xEB00000000657079)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF7CC84(uint64_t a1)
{
  v2 = sub_23FF7CE74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7CCC0(uint64_t a1)
{
  v2 = sub_23FF7CE74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchAngelXPCRequest.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D90, &qword_23FFDD3E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7CE74();
  sub_23FFD9ACC();
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  sub_23FF7B7B8(&qword_27E3A2DA0, type metadata accessor for LaunchAngelXPCRequest.RequestType, protocol conformance descriptor for LaunchAngelXPCRequest.RequestType);
  sub_23FFD991C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23FF7CE74()
{
  result = qword_27E3A2D98;
  if (!qword_27E3A2D98)
  {
    result = swift_getWitnessTable(a9_0, &type metadata for LaunchAngelXPCRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2D98);
  }

  return result;
}

uint64_t LaunchAngelXPCRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  MEMORY[0x28223BE20](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DA8, &qword_23FFDD3F0);
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for LaunchAngelXPCRequest(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7CE74();
  sub_23FFD9AAC();
  if (!v2)
  {
    v12 = v15;
    sub_23FF7B7B8(&qword_27E3A2DB0, type metadata accessor for LaunchAngelXPCRequest.RequestType, protocol conformance descriptor for LaunchAngelXPCRequest.RequestType);
    v13 = v17;
    sub_23FFD983C();
    (*(v16 + 8))(v8, v6);
    sub_23FF7B6A8(v13, v11, type metadata accessor for LaunchAngelXPCRequest.RequestType);
    sub_23FF7B6A8(v11, v12, type metadata accessor for LaunchAngelXPCRequest);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FF7D174(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2D90, &qword_23FFDD3E8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7CE74();
  sub_23FFD9ACC();
  type metadata accessor for LaunchAngelXPCRequest.RequestType(0);
  sub_23FF7B7B8(&qword_27E3A2DA0, type metadata accessor for LaunchAngelXPCRequest.RequestType, protocol conformance descriptor for LaunchAngelXPCRequest.RequestType);
  sub_23FFD991C();
  return (*(v3 + 8))(v5, v2);
}

unint64_t sub_23FF7D2EC()
{
  v1 = *v0;
  v2 = 0x6465726F6E6769;
  if (v1 == 2)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = 0xD000000000000018;
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

uint64_t sub_23FF7D370@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_23FF804CC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_23FF7D398(uint64_t a1)
{
  v2 = sub_23FF7DC78();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7D3D4(uint64_t a1)
{
  v2 = sub_23FF7DC78();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7D42C(uint64_t a1)
{
  v2 = sub_23FF7DCCC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7D468(uint64_t a1)
{
  v2 = sub_23FF7DCCC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7D4A4(uint64_t a1)
{
  v2 = sub_23FF7DDC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7D4E0(uint64_t a1)
{
  v2 = sub_23FF7DDC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7D51C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D7269666E6F63 && a2 == 0xE900000000000064)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF7D5AC(uint64_t a1)
{
  v2 = sub_23FF7DD74();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7D5E8(uint64_t a1)
{
  v2 = sub_23FF7DD74();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_23FF7D63C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF7D6C4(uint64_t a1)
{
  v2 = sub_23FF7DD20();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7D700(uint64_t a1)
{
  v2 = sub_23FF7DD20();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchAngelXPCResponse.ResponseType.encode(to:)(void *a1)
{
  v2 = v1;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DB8, &qword_23FFDD3F8);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v26 = &v22 - v4;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DC0, &qword_23FFDD400);
  v27 = *(v29 - 8);
  MEMORY[0x28223BE20](v29);
  v25 = &v22 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DC8, &qword_23FFDD408);
  v24 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DD0, &qword_23FFDD410);
  v23 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DD8, &qword_23FFDD418);
  v32 = *(v12 - 8);
  v33 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v22 - v13;
  v31 = *v2;
  v15 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7DC78();
  sub_23FFD9ACC();
  if (v15 <= 1)
  {
    if (!v15)
    {
      v36 = 1;
      sub_23FF7DD74();
      v16 = v33;
      sub_23FFD988C();
      sub_23FFD98FC();
      (*(v24 + 8))(v8, v6);
      return (*(v32 + 8))(v14, v16);
    }

    v37 = 2;
    sub_23FF7DD20();
    v17 = v25;
    v16 = v33;
    sub_23FFD988C();
    v34 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
    sub_23FF7E5E4(&qword_27E3A2E00, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    v18 = v29;
    sub_23FFD991C();
    v19 = v27;
LABEL_7:
    (*(v19 + 8))(v17, v18);
    return (*(v32 + 8))(v14, v16);
  }

  if (v15 == 2)
  {
    v38 = 3;
    sub_23FF7DCCC();
    v17 = v26;
    v16 = v33;
    sub_23FFD988C();
    v18 = v30;
    sub_23FFD98FC();
    v19 = v28;
    goto LABEL_7;
  }

  v35 = 0;
  sub_23FF7DDC8();
  v21 = v33;
  sub_23FFD988C();
  (*(v23 + 8))(v11, v9);
  return (*(v32 + 8))(v14, v21);
}

unint64_t sub_23FF7DC78()
{
  result = qword_27E3A2DE0;
  if (!qword_27E3A2DE0)
  {
    result = swift_getWitnessTable(byte_23FFDE4A0, &type metadata for LaunchAngelXPCResponse.ResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2DE0);
  }

  return result;
}

unint64_t sub_23FF7DCCC()
{
  result = qword_27E3A2DE8;
  if (!qword_27E3A2DE8)
  {
    result = swift_getWitnessTable(byte_23FFDE450, &type metadata for LaunchAngelXPCResponse.ResponseType.ConfirmationSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2DE8);
  }

  return result;
}

unint64_t sub_23FF7DD20()
{
  result = qword_27E3A2DF0;
  if (!qword_27E3A2DF0)
  {
    result = swift_getWitnessTable(asc_23FFDE400, &type metadata for LaunchAngelXPCResponse.ResponseType.OauthAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2DF0);
  }

  return result;
}

unint64_t sub_23FF7DD74()
{
  result = qword_27E3A2E08;
  if (!qword_27E3A2E08)
  {
    result = swift_getWitnessTable(aY_0, &type metadata for LaunchAngelXPCResponse.ResponseType.InstallSheetConfirmationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2E08);
  }

  return result;
}

unint64_t sub_23FF7DDC8()
{
  result = qword_27E3A2E10;
  if (!qword_27E3A2E10)
  {
    result = swift_getWitnessTable(byte_23FFDE360, &type metadata for LaunchAngelXPCResponse.ResponseType.IgnoredCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2E10);
  }

  return result;
}

uint64_t LaunchAngelXPCResponse.ResponseType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v52 = a2;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E18, &qword_23FFDD428);
  v47 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v41 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E20, &qword_23FFDD430);
  v48 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v49 = &v41 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E28, &qword_23FFDD438);
  v46 = *(v44 - 8);
  MEMORY[0x28223BE20](v44);
  v6 = &v41 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E30, &qword_23FFDD440);
  v43 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v41 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E38, &qword_23FFDD448);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v41 - v12;
  v14 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_23FF7DC78();
  v15 = v53;
  sub_23FFD9AAC();
  if (!v15)
  {
    v16 = v9;
    v41 = v7;
    v42 = 0;
    v17 = v49;
    v18 = v50;
    v53 = v11;
    v20 = v51;
    v19 = v52;
    v21 = sub_23FFD986C();
    v22 = (2 * *(v21 + 16)) | 1;
    v55 = v21;
    v56 = v21 + 32;
    v57 = 0;
    v58 = v22;
    v23 = sub_23FF70224();
    if (v23 == 4 || v57 != v58 >> 1)
    {
      v27 = sub_23FFD970C();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2200, &qword_23FFDA960);
      *v29 = &type metadata for LaunchAngelXPCResponse.ResponseType;
      sub_23FFD97AC();
      sub_23FFD96FC();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x277D84160], v27);
      swift_willThrow();
    }

    else
    {
      if (v23 > 1u)
      {
        if (v23 != 2)
        {
          LOBYTE(v59) = 3;
          sub_23FF7DCCC();
          v38 = v42;
          sub_23FFD979C();
          v39 = v53;
          if (!v38)
          {
            v40 = sub_23FFD981C();
            (*(v47 + 8))(v18, v20);
            (*(v39 + 8))(v13, v10);
            swift_unknownObjectRelease();
            v25 = v40 & 1;
            v26 = 2;
            v19 = v52;
            goto LABEL_21;
          }

          (*(v53 + 8))(v13, v10);
          goto LABEL_11;
        }

        LOBYTE(v59) = 2;
        sub_23FF7DD20();
        v32 = v17;
        v33 = v42;
        sub_23FFD979C();
        v30 = v53;
        if (!v33)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
          sub_23FF7E5E4(&qword_27E3A2E40, MEMORY[0x277D83808], MEMORY[0x277D83528]);
          v34 = v45;
          sub_23FFD983C();
          (*(v48 + 8))(v32, v34);
          (*(v30 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v25 = v59;
          v26 = 1;
          goto LABEL_21;
        }

LABEL_10:
        (*(v30 + 8))(v13, v10);
LABEL_11:
        swift_unknownObjectRelease();
        return __swift_destroy_boxed_opaque_existential_1(v54);
      }

      if (v23)
      {
        LOBYTE(v59) = 1;
        sub_23FF7DD74();
        v35 = v42;
        sub_23FFD979C();
        if (!v35)
        {
          v36 = v44;
          v37 = sub_23FFD981C();
          (*(v46 + 8))(v6, v36);
          (*(v53 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v26 = 0;
          v25 = v37 & 1;
          goto LABEL_21;
        }
      }

      else
      {
        LOBYTE(v59) = 0;
        sub_23FF7DDC8();
        v24 = v42;
        sub_23FFD979C();
        if (!v24)
        {
          (*(v43 + 8))(v16, v41);
          (*(v53 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v25 = 0;
          v26 = 3;
LABEL_21:
          *v19 = v25;
          *(v19 + 8) = v26;
          return __swift_destroy_boxed_opaque_existential_1(v54);
        }
      }
    }

    v30 = v53;
    goto LABEL_10;
  }

  return __swift_destroy_boxed_opaque_existential_1(v54);
}

uint64_t sub_23FF7E5E4(unint64_t *a1, uint64_t a2, const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A2DF8, &qword_23FFDD420);
    v8[0] = a2;
    v8[1] = a2;
    result = swift_getWitnessTable(a3, v7, v8);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t LaunchAngelXPCResponse.responseType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  *a1 = *v1;
  v3 = *(v1 + 8);
  *(a1 + 8) = v3;
  return sub_23FF7E694(v2, v3);
}

uint64_t sub_23FF7E694(uint64_t result, char a2)
{
  if (a2 == 1)
  {
  }

  return v2;
}

uint64_t LaunchAngelXPCResponse.init(responseType:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *(result + 8);
  *a2 = *result;
  *(a2 + 8) = v2;
  return result;
}

uint64_t sub_23FF7E6DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65736E6F70736572 && a2 == 0xEC00000065707954)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF7E768(uint64_t a1)
{
  v2 = sub_23FF7E950();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF7E7A4(uint64_t a1)
{
  v2 = sub_23FF7E950();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LaunchAngelXPCResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E48, &qword_23FFDD450);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7E694(v7, v8);
  sub_23FF7E950();
  sub_23FFD9ACC();
  v10 = v7;
  v11 = v8;
  sub_23FF7E9A4();
  sub_23FFD991C();
  sub_23FF7983C(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FF7E950()
{
  result = qword_27E3A2E50;
  if (!qword_27E3A2E50)
  {
    result = swift_getWitnessTable(byte_23FFDE310, &type metadata for LaunchAngelXPCResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2E50);
  }

  return result;
}

unint64_t sub_23FF7E9A4()
{
  result = qword_27E3A2E58;
  if (!qword_27E3A2E58)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LaunchAngelXPCResponse.ResponseType, &type metadata for LaunchAngelXPCResponse.ResponseType, v0, v1);
    atomic_store(result, &qword_27E3A2E58);
  }

  return result;
}

uint64_t LaunchAngelXPCResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2E60, &qword_23FFDD458);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF7E950();
  sub_23FFD9AAC();
  if (!v2)
  {
    sub_23FF7EB70();
    sub_23FFD983C();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 8) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

unint64_t sub_23FF7EB70()
{
  result = qword_27E3A2E68;
  if (!qword_27E3A2E68)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LaunchAngelXPCResponse.ResponseType, &type metadata for LaunchAngelXPCResponse.ResponseType, v0, v1);
    atomic_store(result, &qword_27E3A2E68);
  }

  return result;
}

uint64_t sub_23FF7EC1C(uint64_t a1)
{
  result = type metadata accessor for LaunchAngelXPCRequest.RequestType(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_23FF7EC88(uint64_t a1)
{
  sub_23FF7EDF0(319);
  if (v1 <= 0x3F)
  {
    sub_23FF7EE70(319, &qword_27E3A2EA0, "query distributorID ");
    if (v2 <= 0x3F)
    {
      sub_23FF7EE70(319, &qword_27E3A2EA8, "account distributorID ");
      if (v3 <= 0x3F)
      {
        sub_23FF7EECC(319, &qword_27E3A2EB0, type metadata accessor for InstallSheetContext);
        if (v4 <= 0x3F)
        {
          sub_23FF7EECC(319, &qword_27E3A2EB8, type metadata accessor for OAuthAuthorizationContext);
          if (v5 <= 0x3F)
          {
            sub_23FF7EECC(319, &qword_27E3A2EC0, type metadata accessor for LicenseResolutionContext);
            if (v6 <= 0x3F)
            {
              sub_23FF7EECC(319, &qword_27E3A2EC8, type metadata accessor for ConfirmationSheetContext);
              if (v7 <= 0x3F)
              {
                swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_23FF7EDF0(uint64_t a1)
{
  if (!qword_27E3A2E90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A2E98, &qword_23FFDD5D8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27E3A2E90);
    }
  }
}

void sub_23FF7EE70(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v5)
    {
      atomic_store(TupleTypeMetadata2, a2);
    }
  }
}

void sub_23FF7EECC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t get_enum_tag_for_layout_string_15AppDistribution22LaunchAngelXPCResponseV12ResponseTypeO(uint64_t a1)
{
  if ((*(a1 + 8) & 3) == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_23FF7EF58(uint64_t a1, unsigned int a2)
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

uint64_t sub_23FF7EFA0(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_23FF7EFE4(uint64_t result, unsigned int a2)
{
  if (a2 >= 3)
  {
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for LaunchAngelXPCRequest.RequestType.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LaunchAngelXPCRequest.RequestType.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_23FF7F240()
{
  result = qword_27E3A2ED0;
  if (!qword_27E3A2ED0)
  {
    result = swift_getWitnessTable(byte_23FFDD940, &type metadata for LaunchAngelXPCRequest.RequestType.ShowConfirmationSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2ED0);
  }

  return result;
}

unint64_t sub_23FF7F298()
{
  result = qword_27E3A2ED8;
  if (!qword_27E3A2ED8)
  {
    result = swift_getWitnessTable(byte_23FFDD9F8, &type metadata for LaunchAngelXPCRequest.RequestType.HandleLicenseResolutionCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2ED8);
  }

  return result;
}

unint64_t sub_23FF7F2F0()
{
  result = qword_27E3A2EE0;
  if (!qword_27E3A2EE0)
  {
    result = swift_getWitnessTable(byte_23FFDDAB0, &type metadata for LaunchAngelXPCRequest.RequestType.OauthAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2EE0);
  }

  return result;
}

unint64_t sub_23FF7F348()
{
  result = qword_27E3A2EE8;
  if (!qword_27E3A2EE8)
  {
    result = swift_getWitnessTable(aA_1, &type metadata for LaunchAngelXPCRequest.RequestType.GetInstallConfirmationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2EE8);
  }

  return result;
}

unint64_t sub_23FF7F3A0()
{
  result = qword_27E3A2EF0;
  if (!qword_27E3A2EF0)
  {
    result = swift_getWitnessTable(byte_23FFDDC20, &type metadata for LaunchAngelXPCRequest.RequestType.DisplayAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2EF0);
  }

  return result;
}

unint64_t sub_23FF7F3F8()
{
  result = qword_27E3A2EF8;
  if (!qword_27E3A2EF8)
  {
    result = swift_getWitnessTable(byte_23FFDDCD8, &type metadata for LaunchAngelXPCRequest.RequestType.DisplaySearchResultsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2EF8);
  }

  return result;
}

unint64_t sub_23FF7F450()
{
  result = qword_27E3A2F00;
  if (!qword_27E3A2F00)
  {
    result = swift_getWitnessTable(a9_1, &type metadata for LaunchAngelXPCRequest.RequestType.DisplayProductPageCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F00);
  }

  return result;
}

unint64_t sub_23FF7F4A8()
{
  result = qword_27E3A2F08;
  if (!qword_27E3A2F08)
  {
    result = swift_getWitnessTable(byte_23FFDDE48, &type metadata for LaunchAngelXPCRequest.RequestType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F08);
  }

  return result;
}

unint64_t sub_23FF7F500()
{
  result = qword_27E3A2F10;
  if (!qword_27E3A2F10)
  {
    result = swift_getWitnessTable(byte_23FFDDF00, &type metadata for LaunchAngelXPCRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F10);
  }

  return result;
}

unint64_t sub_23FF7F558()
{
  result = qword_27E3A2F18;
  if (!qword_27E3A2F18)
  {
    result = swift_getWitnessTable(byte_23FFDDFB8, &type metadata for LaunchAngelXPCResponse.ResponseType.ConfirmationSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F18);
  }

  return result;
}

unint64_t sub_23FF7F5B0()
{
  result = qword_27E3A2F20;
  if (!qword_27E3A2F20)
  {
    result = swift_getWitnessTable(aY_1, &type metadata for LaunchAngelXPCResponse.ResponseType.OauthAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F20);
  }

  return result;
}

unint64_t sub_23FF7F608()
{
  result = qword_27E3A2F28;
  if (!qword_27E3A2F28)
  {
    result = swift_getWitnessTable(byte_23FFDE128, &type metadata for LaunchAngelXPCResponse.ResponseType.InstallSheetConfirmationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F28);
  }

  return result;
}

unint64_t sub_23FF7F660()
{
  result = qword_27E3A2F30;
  if (!qword_27E3A2F30)
  {
    result = swift_getWitnessTable(byte_23FFDE230, &type metadata for LaunchAngelXPCResponse.ResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F30);
  }

  return result;
}

unint64_t sub_23FF7F6B8()
{
  result = qword_27E3A2F38;
  if (!qword_27E3A2F38)
  {
    result = swift_getWitnessTable(byte_23FFDE2E8, &type metadata for LaunchAngelXPCResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F38);
  }

  return result;
}

unint64_t sub_23FF7F710()
{
  result = qword_27E3A2F40;
  if (!qword_27E3A2F40)
  {
    result = swift_getWitnessTable(aI_0, &type metadata for LaunchAngelXPCResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F40);
  }

  return result;
}

unint64_t sub_23FF7F768()
{
  result = qword_27E3A2F48;
  if (!qword_27E3A2F48)
  {
    result = swift_getWitnessTable(aY_2, &type metadata for LaunchAngelXPCResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F48);
  }

  return result;
}

unint64_t sub_23FF7F7C0()
{
  result = qword_27E3A2F50;
  if (!qword_27E3A2F50)
  {
    result = swift_getWitnessTable(aQ_0, &type metadata for LaunchAngelXPCResponse.ResponseType.IgnoredCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F50);
  }

  return result;
}

unint64_t sub_23FF7F818()
{
  result = qword_27E3A2F58;
  if (!qword_27E3A2F58)
  {
    result = swift_getWitnessTable(aA_2, &type metadata for LaunchAngelXPCResponse.ResponseType.IgnoredCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F58);
  }

  return result;
}

unint64_t sub_23FF7F870()
{
  result = qword_27E3A2F60;
  if (!qword_27E3A2F60)
  {
    result = swift_getWitnessTable(asc_23FFDE098, &type metadata for LaunchAngelXPCResponse.ResponseType.InstallSheetConfirmationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F60);
  }

  return result;
}

unint64_t sub_23FF7F8C8()
{
  result = qword_27E3A2F68;
  if (!qword_27E3A2F68)
  {
    result = swift_getWitnessTable(byte_23FFDE0C0, &type metadata for LaunchAngelXPCResponse.ResponseType.InstallSheetConfirmationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F68);
  }

  return result;
}

unint64_t sub_23FF7F920()
{
  result = qword_27E3A2F70;
  if (!qword_27E3A2F70)
  {
    result = swift_getWitnessTable(byte_23FFDDFE0, &type metadata for LaunchAngelXPCResponse.ResponseType.OauthAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F70);
  }

  return result;
}

unint64_t sub_23FF7F978()
{
  result = qword_27E3A2F78;
  if (!qword_27E3A2F78)
  {
    result = swift_getWitnessTable(byte_23FFDE008, &type metadata for LaunchAngelXPCResponse.ResponseType.OauthAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F78);
  }

  return result;
}

unint64_t sub_23FF7F9D0()
{
  result = qword_27E3A2F80;
  if (!qword_27E3A2F80)
  {
    result = swift_getWitnessTable(aY_3, &type metadata for LaunchAngelXPCResponse.ResponseType.ConfirmationSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F80);
  }

  return result;
}

unint64_t sub_23FF7FA28()
{
  result = qword_27E3A2F88;
  if (!qword_27E3A2F88)
  {
    result = swift_getWitnessTable(byte_23FFDDF50, &type metadata for LaunchAngelXPCResponse.ResponseType.ConfirmationSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F88);
  }

  return result;
}

unint64_t sub_23FF7FA80()
{
  result = qword_27E3A2F90;
  if (!qword_27E3A2F90)
  {
    result = swift_getWitnessTable(byte_23FFDE1A0, &type metadata for LaunchAngelXPCResponse.ResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F90);
  }

  return result;
}

unint64_t sub_23FF7FAD8()
{
  result = qword_27E3A2F98;
  if (!qword_27E3A2F98)
  {
    result = swift_getWitnessTable(byte_23FFDE1C8, &type metadata for LaunchAngelXPCResponse.ResponseType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2F98);
  }

  return result;
}

unint64_t sub_23FF7FB30()
{
  result = qword_27E3A2FA0;
  if (!qword_27E3A2FA0)
  {
    result = swift_getWitnessTable(a1_0, &type metadata for LaunchAngelXPCRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2FA0);
  }

  return result;
}

unint64_t sub_23FF7FB88()
{
  result = qword_27E3A2FA8;
  if (!qword_27E3A2FA8)
  {
    result = swift_getWitnessTable(aA_3, &type metadata for LaunchAngelXPCRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2FA8);
  }

  return result;
}

unint64_t sub_23FF7FBE0()
{
  result = qword_27E3A2FB0;
  if (!qword_27E3A2FB0)
  {
    result = swift_getWitnessTable(byte_23FFDDD00, &type metadata for LaunchAngelXPCRequest.RequestType.DisplayProductPageCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2FB0);
  }

  return result;
}

unint64_t sub_23FF7FC38()
{
  result = qword_27E3A2FB8;
  if (!qword_27E3A2FB8)
  {
    result = swift_getWitnessTable(byte_23FFDDD28, &type metadata for LaunchAngelXPCRequest.RequestType.DisplayProductPageCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2FB8);
  }

  return result;
}

unint64_t sub_23FF7FC90()
{
  result = qword_27E3A2FC0;
  if (!qword_27E3A2FC0)
  {
    result = swift_getWitnessTable(aY_4, &type metadata for LaunchAngelXPCRequest.RequestType.DisplaySearchResultsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2FC0);
  }

  return result;
}

unint64_t sub_23FF7FCE8()
{
  result = qword_27E3A2FC8;
  if (!qword_27E3A2FC8)
  {
    result = swift_getWitnessTable(aI_1, &type metadata for LaunchAngelXPCRequest.RequestType.DisplaySearchResultsCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2FC8);
  }

  return result;
}

unint64_t sub_23FF7FD40()
{
  result = qword_27E3A2FD0;
  if (!qword_27E3A2FD0)
  {
    result = swift_getWitnessTable(byte_23FFDDB90, &type metadata for LaunchAngelXPCRequest.RequestType.DisplayAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2FD0);
  }

  return result;
}

unint64_t sub_23FF7FD98()
{
  result = qword_27E3A2FD8;
  if (!qword_27E3A2FD8)
  {
    result = swift_getWitnessTable(asc_23FFDDBB8, &type metadata for LaunchAngelXPCRequest.RequestType.DisplayAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2FD8);
  }

  return result;
}

unint64_t sub_23FF7FDF0()
{
  result = qword_27E3A2FE0;
  if (!qword_27E3A2FE0)
  {
    result = swift_getWitnessTable(byte_23FFDDAD8, &type metadata for LaunchAngelXPCRequest.RequestType.GetInstallConfirmationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2FE0);
  }

  return result;
}

unint64_t sub_23FF7FE48()
{
  result = qword_27E3A2FE8;
  if (!qword_27E3A2FE8)
  {
    result = swift_getWitnessTable(byte_23FFDDB00, &type metadata for LaunchAngelXPCRequest.RequestType.GetInstallConfirmationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2FE8);
  }

  return result;
}

unint64_t sub_23FF7FEA0()
{
  result = qword_27E3A2FF0;
  if (!qword_27E3A2FF0)
  {
    result = swift_getWitnessTable(byte_23FFDDA20, &type metadata for LaunchAngelXPCRequest.RequestType.OauthAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2FF0);
  }

  return result;
}

unint64_t sub_23FF7FEF8()
{
  result = qword_27E3A2FF8;
  if (!qword_27E3A2FF8)
  {
    result = swift_getWitnessTable(byte_23FFDDA48, &type metadata for LaunchAngelXPCRequest.RequestType.OauthAuthorizationCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A2FF8);
  }

  return result;
}

unint64_t sub_23FF7FF50()
{
  result = qword_27E3A3000;
  if (!qword_27E3A3000)
  {
    result = swift_getWitnessTable(a9_2, &type metadata for LaunchAngelXPCRequest.RequestType.HandleLicenseResolutionCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3000);
  }

  return result;
}

unint64_t sub_23FF7FFA8()
{
  result = qword_27E3A3008;
  if (!qword_27E3A3008)
  {
    result = swift_getWitnessTable(aI_2, &type metadata for LaunchAngelXPCRequest.RequestType.HandleLicenseResolutionCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3008);
  }

  return result;
}

unint64_t sub_23FF80000()
{
  result = qword_27E3A3010;
  if (!qword_27E3A3010)
  {
    result = swift_getWitnessTable(byte_23FFDD8B0, &type metadata for LaunchAngelXPCRequest.RequestType.ShowConfirmationSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3010);
  }

  return result;
}

unint64_t sub_23FF80058()
{
  result = qword_27E3A3018;
  if (!qword_27E3A3018)
  {
    result = swift_getWitnessTable(byte_23FFDD8D8, &type metadata for LaunchAngelXPCRequest.RequestType.ShowConfirmationSheetCodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3018);
  }

  return result;
}

unint64_t sub_23FF800B0()
{
  result = qword_27E3A3020;
  if (!qword_27E3A3020)
  {
    result = swift_getWitnessTable(byte_23FFDDDB8, &type metadata for LaunchAngelXPCRequest.RequestType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3020);
  }

  return result;
}

unint64_t sub_23FF80108()
{
  result = qword_27E3A3028;
  if (!qword_27E3A3028)
  {
    result = swift_getWitnessTable(byte_23FFDDDE0, &type metadata for LaunchAngelXPCRequest.RequestType.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3028);
  }

  return result;
}

uint64_t sub_23FF8015C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x800000023FFEB1A0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEB1C0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x800000023FFEB1E0 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x800000023FFEB200 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023FFEB220 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000017 && 0x800000023FFEB240 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x800000023FFEB260 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_23FFD996C();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_23FF803A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x44496D657469 && a2 == 0xE600000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496E6F6973726576 && a2 == 0xE900000000000044 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7562697274736964 && a2 == 0xED00004449726F74)
  {

    return 2;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t sub_23FF804CC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6465726F6E6769 && a2 == 0xE700000000000000;
  if (v4 || (sub_23FFD996C() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000018 && 0x800000023FFEB280 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000023FFEB220 == a2 || (sub_23FFD996C() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEB2A0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_23FFD996C();

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

uint64_t LocalizedStringsRequest.LocalizedString.key.getter()
{
  v1 = *v0;

  return v1;
}

AppDistribution::LocalizedStringsRequest::LocalizedString __swiftcall LocalizedStringsRequest.LocalizedString.init(key:replacementTokens:)(Swift::String key, Swift::OpaquePointer replacementTokens)
{
  *v2 = key;
  *(v2 + 16) = replacementTokens;
  result.field23FFF3194 = key;
  result.field23FFF31A0 = replacementTokens;
  return result;
}

uint64_t sub_23FF806A0()
{
  if (*v0)
  {
    return 0xD000000000000011;
  }

  else
  {
    return 7955819;
  }
}

uint64_t sub_23FF806D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7955819 && a2 == 0xE300000000000000;
  if (v5 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000011 && 0x800000023FFEB2C0 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF807BC(uint64_t a1)
{
  v2 = sub_23FF80A00();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF807F8(uint64_t a1)
{
  v2 = sub_23FF80A00();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocalizedStringsRequest.LocalizedString.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3030, &unk_23FFDE7C0);
  v10 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v8 - v5;
  v9 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF80A00();
  sub_23FFD9ACC();
  v13 = 0;
  sub_23FFD98EC();
  if (!v2)
  {
    v11 = v9;
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
    sub_23FF7E5E4(&qword_27E3A2E00, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    sub_23FFD991C();
  }

  return (*(v10 + 8))(v6, v4);
}

unint64_t sub_23FF80A00()
{
  result = qword_27E3A3038;
  if (!qword_27E3A3038)
  {
    result = swift_getWitnessTable(byte_23FFDEC6C, &type metadata for LocalizedStringsRequest.LocalizedString.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3038);
  }

  return result;
}

uint64_t LocalizedStringsRequest.LocalizedString.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3040, &qword_23FFDE7D0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF80A00();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v17 = 0;
  v9 = sub_23FFD980C();
  v11 = v10;
  v12 = v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
  v16 = 1;
  sub_23FF7E5E4(&qword_27E3A2E40, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  sub_23FFD983C();
  (*(v6 + 8))(v8, v5);
  v13 = v15[1];
  *a2 = v12;
  a2[1] = v11;
  a2[2] = v13;

  __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t LocalizedStringsRequest.run()(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 96) = a1;
  *(v2 + 104) = v3;
  return MEMORY[0x2822009F8](sub_23FF80D00, 0, 0);
}

uint64_t sub_23FF80D00()
{
  *(v0 + 16) = *(v0 + 104);
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0x1000000000000000;
  *(v0 + 64) = 1;
  v1 = qword_27E3A2160;

  if (v1 != -1)
  {
    swift_once();
  }

  v2 = swift_task_alloc();
  *(v0 + 112) = v2;
  *v2 = v0;
  v2[1] = sub_23FF80E2C;

  return sub_23FF56B2C(v0 + 72, v0 + 16, sub_23FFBF434, 0);
}

uint64_t sub_23FF80E2C()
{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = sub_23FF81174;
  }

  else
  {
    v2 = sub_23FF80F40;
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

uint64_t sub_23FF80F40()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 88);
  v3 = *(v0 + 104);
  if (v2 == 8)
  {

LABEL_16:
    **(v0 + 96) = v1;
    v18 = *(v0 + 8);

    return v18();
  }

  v4 = *(v0 + 80);
  v5 = *(v3 + 16);
  if (v5)
  {
    v19 = *(v0 + 80);
    v20 = *(v0 + 88);
    v21 = *(v0 + 72);
    v22 = MEMORY[0x277D84F90];
    sub_23FF81E74(0, v5, 0);
    v6 = v22;
    v7 = *(v22 + 16);
    v8 = 32 * v7 + 56;
    v9 = (v3 + 40);
    do
    {
      v10 = v7;
      v11 = *(v9 - 1);
      v12 = *v9;
      v13 = *(v22 + 24);
      ++v7;
      swift_bridgeObjectRetain_n();
      if (v10 >= v13 >> 1)
      {
        sub_23FF81E74((v13 > 1), v7, 1);
      }

      *(v22 + 16) = v7;
      v14 = (v22 + v8);
      *(v14 - 3) = v11;
      *(v14 - 2) = v12;
      v8 += 32;
      v9 += 3;
      *(v14 - 1) = v11;
      *v14 = v12;
      --v5;
    }

    while (v5);
    v1 = v21;
    LOBYTE(v2) = v20;
    v4 = v19;
    goto LABEL_10;
  }

  v6 = MEMORY[0x277D84F90];
  if (*(MEMORY[0x277D84F90] + 16))
  {
LABEL_10:
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3048, &qword_23FFDE7E0);
    v15 = sub_23FFD977C();
    goto LABEL_11;
  }

  v15 = MEMORY[0x277D84F98];
LABEL_11:
  v16 = *(v0 + 120);
  v23 = v15;
  sub_23FF81B28(v6, 1, sub_23FF811D8);
  if (!v16)
  {

    sub_23FF795B0(v1, v4, v2);
    v1 = v23;
    goto LABEL_16;
  }
}

uint64_t sub_23FF81174()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_23FF811D8@<X0>(void *a1@<X1>, void *a2@<X8>)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
}

uint64_t sub_23FF81210@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73676E69727473 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_23FFD996C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_23FF81298(uint64_t a1)
{
  v2 = sub_23FF81E94();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF812D4(uint64_t a1)
{
  v2 = sub_23FF81E94();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocalizedStringsRequest.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3050, &qword_23FFDE7E8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF81E94();

  sub_23FFD9ACC();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3060, &qword_23FFDE7F0);
  sub_23FF81F3C(&qword_27E3A3068, sub_23FF81EE8, MEMORY[0x277D83948]);
  sub_23FFD991C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t LocalizedStringsRequest.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3078, &qword_23FFDE7F8);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF81E94();
  sub_23FFD9AAC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3060, &qword_23FFDE7F0);
    sub_23FF81F3C(&qword_27E3A3080, sub_23FF81FB4, MEMORY[0x277D83978]);
    sub_23FFD983C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_23FF816B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x800000023FFEB2E0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = sub_23FFD996C();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_23FF81744(uint64_t a1)
{
  v2 = sub_23FF82008();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF81780(uint64_t a1)
{
  v2 = sub_23FF82008();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LocalizedStringsResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3090, &qword_23FFDE800);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF82008();

  sub_23FFD9ACC();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
  sub_23FF7E5E4(&qword_27E3A2E00, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
  sub_23FFD991C();

  return (*(v4 + 8))(v6, v3);
}

uint64_t LocalizedStringsResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A30A0, &qword_23FFDE808);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF82008();
  sub_23FFD9AAC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A2DF8, &qword_23FFDD420);
    sub_23FF7E5E4(&qword_27E3A2E40, MEMORY[0x277D83808], MEMORY[0x277D83528]);
    sub_23FFD983C();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

void sub_23FF81B28(uint64_t a1, char a2, void (*a3)(uint64_t *__return_ptr, id *, void *))
{
  v33 = *(a1 + 16);
  if (!v33)
  {
LABEL_17:

    return;
  }

  v4 = 0;
  v5 = (a1 + 56);
  v32 = a1;
  while (1)
  {
    if (v4 >= *(a1 + 16))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      sub_23FFD99BC();
      __break(1u);
      goto LABEL_25;
    }

    v6 = *(v5 - 2);
    v9 = *(v5 - 1);
    v8 = *v5;
    v39 = *(v5 - 3);
    v7 = v39;
    v40 = v6;
    v38[0] = v9;
    v38[1] = v8;
    v10 = *v41;

    v12 = sub_23FF88F80(v7, v6);
    v13 = v10[2];
    v14 = (v11 & 1) == 0;
    v15 = v13 + v14;
    if (__OFADD__(v13, v14))
    {
      goto LABEL_22;
    }

    v16 = v11;
    if (v10[3] < v15)
    {
      break;
    }

    if (a2)
    {
      if (v11)
      {
        goto LABEL_12;
      }
    }

    else
    {
      sub_23FF89160();
      if (v16)
      {
        goto LABEL_12;
      }
    }

LABEL_15:
    v24 = *v41;
    v24[(v12 >> 6) + 8] |= 1 << v12;
    v25 = (v24[6] + 16 * v12);
    *v25 = v7;
    v25[1] = v6;
    v26 = (v24[7] + 16 * v12);
    *v26 = v9;
    v26[1] = v8;
    v27 = v24[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_23;
    }

    v24[2] = v29;
LABEL_3:
    ++v4;
    v5 += 4;
    a2 = 1;
    a1 = v32;
    if (v33 == v4)
    {
      goto LABEL_17;
    }
  }

  sub_23FF89434(v15, a2 & 1);
  v17 = sub_23FF88F80(v7, v6);
  if ((v16 & 1) != (v18 & 1))
  {
    goto LABEL_24;
  }

  v12 = v17;
  if ((v16 & 1) == 0)
  {
    goto LABEL_15;
  }

LABEL_12:
  v19 = *v41;
  v20 = *(*v41 + 56) + 16 * v12;
  v21 = *(v20 + 8);
  v35[0] = *v20;
  v35[1] = v21;

  a3(&v36, v35, v38);
  if (!v34)
  {

    v22 = (v19[7] + 16 * v12);
    v23 = v37;
    *v22 = v36;
    v22[1] = v23;

    goto LABEL_3;
  }

  v35[0] = v34;
  v30 = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A24E8, &unk_23FFDB010);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

LABEL_25:
  v36 = 0;
  v37 = 0xE000000000000000;
  sub_23FFD96DC();
  MEMORY[0x245CB3B50](0xD00000000000001BLL, 0x800000023FFEB330);
  sub_23FFD972C();
  MEMORY[0x245CB3B50](39, 0xE100000000000000);
  sub_23FFD973C();
  __break(1u);
}

void *sub_23FF81E74(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23FF823F4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

unint64_t sub_23FF81E94()
{
  result = qword_27E3A3058;
  if (!qword_27E3A3058)
  {
    result = swift_getWitnessTable(asc_23FFDEC1C, &type metadata for LocalizedStringsRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3058);
  }

  return result;
}

unint64_t sub_23FF81EE8()
{
  result = qword_27E3A3070;
  if (!qword_27E3A3070)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocalizedStringsRequest.LocalizedString, &type metadata for LocalizedStringsRequest.LocalizedString, v0, v1);
    atomic_store(result, &qword_27E3A3070);
  }

  return result;
}

uint64_t sub_23FF81F3C(unint64_t *a1, uint64_t (*a2)(void), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27E3A3060, &qword_23FFDE7F0);
    v8 = a2();
    result = swift_getWitnessTable(a3, v7, &v8);
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_23FF81FB4()
{
  result = qword_27E3A3088;
  if (!qword_27E3A3088)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for LocalizedStringsRequest.LocalizedString, &type metadata for LocalizedStringsRequest.LocalizedString, v0, v1);
    atomic_store(result, &qword_27E3A3088);
  }

  return result;
}

unint64_t sub_23FF82008()
{
  result = qword_27E3A3098;
  if (!qword_27E3A3098)
  {
    result = swift_getWitnessTable(asc_23FFDEBCC, &type metadata for LocalizedStringsResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3098);
  }

  return result;
}

unint64_t sub_23FF820C0()
{
  result = qword_27E3A30A8;
  if (!qword_27E3A30A8)
  {
    result = swift_getWitnessTable(byte_23FFDEA34, &type metadata for LocalizedStringsRequest.LocalizedString.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A30A8);
  }

  return result;
}

unint64_t sub_23FF82118()
{
  result = qword_27E3A30B0;
  if (!qword_27E3A30B0)
  {
    result = swift_getWitnessTable(aBp, &type metadata for LocalizedStringsRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A30B0);
  }

  return result;
}

unint64_t sub_23FF82170()
{
  result = qword_27E3A30B8;
  if (!qword_27E3A30B8)
  {
    result = swift_getWitnessTable(asc_23FFDEBA4, &type metadata for LocalizedStringsResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A30B8);
  }

  return result;
}

unint64_t sub_23FF821C8()
{
  result = qword_27E3A30C0;
  if (!qword_27E3A30C0)
  {
    result = swift_getWitnessTable(byte_23FFDEB14, &type metadata for LocalizedStringsResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A30C0);
  }

  return result;
}

unint64_t sub_23FF82220()
{
  result = qword_27E3A30C8;
  if (!qword_27E3A30C8)
  {
    result = swift_getWitnessTable(byte_23FFDEB3C, &type metadata for LocalizedStringsResponse.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A30C8);
  }

  return result;
}

unint64_t sub_23FF82278()
{
  result = qword_27E3A30D0;
  if (!qword_27E3A30D0)
  {
    result = swift_getWitnessTable(aE_1, &type metadata for LocalizedStringsRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A30D0);
  }

  return result;
}

unint64_t sub_23FF822D0()
{
  result = qword_27E3A30D8;
  if (!qword_27E3A30D8)
  {
    result = swift_getWitnessTable(aU_4, &type metadata for LocalizedStringsRequest.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A30D8);
  }

  return result;
}

unint64_t sub_23FF82328()
{
  result = qword_27E3A30E0;
  if (!qword_27E3A30E0)
  {
    result = swift_getWitnessTable(byte_23FFDE9A4, &type metadata for LocalizedStringsRequest.LocalizedString.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A30E0);
  }

  return result;
}

unint64_t sub_23FF82380()
{
  result = qword_27E3A30E8;
  if (!qword_27E3A30E8)
  {
    result = swift_getWitnessTable(asc_23FFDE9CC, &type metadata for LocalizedStringsRequest.LocalizedString.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A30E8);
  }

  return result;
}

char *sub_23FF823D4(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_23FF82528(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_23FF823F4(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A30F8, &qword_23FFDECD0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3100, &qword_23FFDECD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_23FF82528(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A30F0, &unk_23FFDECC0);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t LicenseResolutionContext.logKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t LicenseResolutionContext.url.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for LicenseResolutionContext(0) + 20);
  v4 = sub_23FFD8F6C();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for LicenseResolutionContext(uint64_t a1)
{
  result = qword_27E3A3120;
  if (!qword_27E3A3120)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t LicenseResolutionContext.init(logKey:url:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  *a4 = a1;
  *(a4 + 1) = a2;
  v6 = *(type metadata accessor for LicenseResolutionContext(0) + 20);
  v7 = sub_23FFD8F6C();
  v8 = *(*(v7 - 8) + 32);

  return v8(&a4[v6], a3, v7);
}

uint64_t sub_23FF827C4()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x79654B676F6CLL;
  }
}

uint64_t sub_23FF827F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x79654B676F6CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_23FFD996C() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_23FFD996C();

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

uint64_t sub_23FF828CC(uint64_t a1)
{
  v2 = sub_23FF82AE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23FF82908(uint64_t a1)
{
  v2 = sub_23FF82AE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t LicenseResolutionContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3108, &qword_23FFDECE0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF82AE8();
  sub_23FFD9ACC();
  v8[15] = 0;
  sub_23FFD98EC();
  if (!v1)
  {
    type metadata accessor for LicenseResolutionContext(0);
    v8[14] = 1;
    sub_23FFD8F6C();
    sub_23FF82E4C(&qword_27E3A2438, MEMORY[0x277CC9268]);
    sub_23FFD991C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_23FF82AE8()
{
  result = qword_27E3A3110;
  if (!qword_27E3A3110)
  {
    result = swift_getWitnessTable(byte_23FFDEE2C, &type metadata for LicenseResolutionContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3110);
  }

  return result;
}

uint64_t LicenseResolutionContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v19 = sub_23FFD8F6C();
  v16 = *(v19 - 8);
  MEMORY[0x28223BE20](v19);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27E3A3118, &qword_23FFDECE8);
  v18 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v7 = &v15 - v6;
  v8 = type metadata accessor for LicenseResolutionContext(0);
  MEMORY[0x28223BE20](v8);
  v10 = (&v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23FF82AE8();
  sub_23FFD9AAC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v15 = v8;
  v12 = v18;
  v11 = v19;
  v22 = 0;
  *v10 = sub_23FFD980C();
  v10[1] = v13;
  v21 = 1;
  sub_23FF82E4C(&qword_27E3A2458, MEMORY[0x277CC9280]);
  sub_23FFD983C();
  (*(v12 + 8))(v7, v20);
  (*(v16 + 32))(v10 + *(v15 + 20), v5, v11);
  sub_23FF82E90(v10, v17);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_23FF82EF4(v10);
}

uint64_t sub_23FF82E4C(unint64_t *a1, const char *a2)
{
  result = *a1;
  if (!result)
  {
    v5 = sub_23FFD8F6C();
    result = swift_getWitnessTable(a2, v5);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_23FF82E90(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for LicenseResolutionContext(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_23FF82EF4(uint64_t a1)
{
  v2 = type metadata accessor for LicenseResolutionContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_23FF82FA8(uint64_t a1)
{
  result = sub_23FFD8F6C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_23FF83038()
{
  result = qword_27E3A3130;
  if (!qword_27E3A3130)
  {
    result = swift_getWitnessTable(aUB_0, &type metadata for LicenseResolutionContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3130);
  }

  return result;
}

unint64_t sub_23FF83090()
{
  result = qword_27E3A3138;
  if (!qword_27E3A3138)
  {
    result = swift_getWitnessTable(asc_23FFDED74, &type metadata for LicenseResolutionContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3138);
  }

  return result;
}

unint64_t sub_23FF830E8()
{
  result = qword_27E3A3140;
  if (!qword_27E3A3140)
  {
    result = swift_getWitnessTable(asc_23FFDED9C, &type metadata for LicenseResolutionContext.CodingKeys, v0, v1);
    atomic_store(result, &qword_27E3A3140);
  }

  return result;
}

uint64_t sub_23FF83160()
{
  type metadata accessor for AppLibrary(0);
  v0 = swift_allocObject();
  result = sub_23FF8415C();
  qword_27E3A3148 = v0;
  return result;
}

uint64_t static AppLibrary.current.getter()
{
  if (qword_27E3A2158 != -1)
  {
    swift_once();
  }
}

uint64_t AppLibrary.maximumAllowedAgeRating.getter()
{
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FEC();

  return *(v0 + 16);
}

uint64_t sub_23FF8329C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FEC();

  *a2 = *(v3 + 16);
  return result;
}

uint64_t sub_23FF8338C(uint64_t result)
{
  if (*(v1 + 16) != result)
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
    sub_23FFD8FDC();
  }

  return result;
}

uint64_t sub_23FF83490(uint64_t a1)
{

  v4 = sub_23FF8B27C(v3, a1);

  if (v4)
  {
    *(v1 + 32) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
    sub_23FFD8FDC();
  }
}

uint64_t sub_23FF835E8()
{
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FEC();
}

uint64_t sub_23FF8368C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FEC();

  *a2 = *(v3 + 32);
}

uint64_t (*AppLibrary.installedApps.modify(void *a1))()
{
  swift_getKeyPath();
  a1[1] = v1;
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FEC();

  *a1 = *(v1 + 32);

  return sub_23FF8380C;
}

uint64_t sub_23FF83814(uint64_t a1)
{

  v4 = sub_23FF8B27C(v3, a1);

  if (v4)
  {
    *(v1 + 40) = a1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
    sub_23FFD8FDC();
  }
}

uint64_t sub_23FF8396C()
{
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FEC();
}

uint64_t sub_23FF83A44@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FEC();

  *a2 = *(v3 + 40);
}

uint64_t (*AppLibrary.installingApps.modify(void *a1))(void *)
{
  swift_getKeyPath();
  a1[1] = v1;
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FEC();

  *a1 = *(v1 + 40);

  return sub_23FF8C854;
}

uint64_t sub_23FF83BC0()
{
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FEC();

  return *(v0 + 48);
}

uint64_t sub_23FF83C60@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FEC();

  *a2 = *(v3 + 48);
  return result;
}

uint64_t sub_23FF83D08(uint64_t result)
{
  if (*(v1 + 48) == (result & 1))
  {
    *(v1 + 48) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
    sub_23FFD8FDC();
  }

  return result;
}

uint64_t sub_23FF83E18()
{
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FEC();

  return *(v0 + 49);
}

uint64_t sub_23FF83EB8@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FEC();

  *a2 = *(v3 + 49);
  return result;
}

uint64_t sub_23FF83F60(uint64_t result)
{
  if (*(v1 + 49) == (result & 1))
  {
    *(v1 + 49) = result & 1;
  }

  else
  {
    KeyPath = swift_getKeyPath();
    MEMORY[0x28223BE20](KeyPath);
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
    sub_23FFD8FDC();
  }

  return result;
}

uint64_t AppLibrary.isLoading.getter()
{
  swift_getKeyPath();
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FEC();

  if (*(v0 + 48))
  {
    return 1;
  }

  swift_getKeyPath();
  sub_23FFD8FEC();

  return *(v0 + 49);
}

uint64_t sub_23FF8415C()
{
  v1 = v0;
  *(v0 + 16) = 2000;
  v2 = MEMORY[0x277D84F90];
  *(v1 + 24) = sub_23FF8D690(MEMORY[0x277D84F90]);
  if (v2 >> 62)
  {
    if (sub_23FFD963C())
    {
      v7 = sub_23FF8B5A4(MEMORY[0x277D84F90]);
    }

    else
    {
      v7 = MEMORY[0x277D84FA0];
    }

    *(v1 + 32) = v7;
    if (sub_23FFD963C())
    {
      v3 = sub_23FF8B5A4(MEMORY[0x277D84F90]);
    }

    else
    {
      v3 = MEMORY[0x277D84FA0];
    }
  }

  else
  {
    v3 = MEMORY[0x277D84FA0];
    *(v1 + 32) = MEMORY[0x277D84FA0];
  }

  *(v1 + 40) = v3;
  *(v1 + 48) = 257;
  sub_23FFD8FFC();
  sub_23FFD922C();
  v4 = sub_23FFD921C();

  sub_23FFD920C();

  v5 = sub_23FFD921C();

  sub_23FFD91EC();

  return v1;
}

uint64_t sub_23FF842B0(uint64_t a1, uint64_t a2)
{
  v25 = a2;
  v27 = sub_23FFD92EC();
  v3 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_23FFD92BC();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23FFD929C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFD925C();
  v13 = sub_23FFD927C();
  v14 = sub_23FFD954C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v24 = v6;
    v16 = v3;
    v17 = a1;
    v18 = v15;
    *v15 = 134217984;
    *(v15 + 4) = v17;
    _os_log_impl(&dword_23FF4C000, v13, v14, "AppLibrary received new maximum allowed age rating: %ld", v15, 0xCu);
    v19 = v18;
    a1 = v17;
    v3 = v16;
    v6 = v24;
    MEMORY[0x245CB48E0](v19, -1, -1);
  }

  (*(v10 + 8))(v12, v9);
  sub_23FF79E5C();
  v20 = sub_23FFD958C();
  sub_23FFD92AC();
  v21 = swift_allocObject();
  *(v21 + 16) = v25;
  *(v21 + 24) = a1;
  aBlock[4] = sub_23FF8C810;
  aBlock[5] = v21;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF84984;
  aBlock[3] = &block_descriptor_86_0;
  v22 = _Block_copy(aBlock);

  sub_23FFD92DC();
  MEMORY[0x245CB3D50](0, v5, v8, v22);
  _Block_release(v22);

  (*(v3 + 8))(v5, v27);
  (*(v6 + 8))(v8, v26);
}

uint64_t sub_23FF84618(uint64_t a1, uint64_t a2)
{
  v4 = sub_23FFD929C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFD946C();
  v14[1] = sub_23FFD945C();
  sub_23FFD942C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  if (*(a1 + 16) == a2)
  {
    if ((*(a1 + 49) & 1) == 0)
    {
LABEL_5:
      *(a1 + 49) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    KeyPath = swift_getKeyPath();
    v14[0] = v14;
    MEMORY[0x28223BE20](KeyPath);
    v14[-2] = a1;
    v14[-1] = a2;
    v15 = a1;
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
    sub_23FFD8FDC();

    if ((*(a1 + 49) & 1) == 0)
    {
      goto LABEL_5;
    }
  }

  v9 = swift_getKeyPath();
  v14[0] = v14;
  MEMORY[0x28223BE20](v9);
  v14[-2] = a1;
  LOBYTE(v14[-1]) = 0;
  v15 = a1;
  sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
  sub_23FFD8FDC();

LABEL_8:
  sub_23FFD925C();
  v10 = sub_23FFD927C();
  v11 = sub_23FFD954C();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_23FF4C000, v10, v11, "Finished updating maximum allowed age rating", v12, 2u);
    MEMORY[0x245CB48E0](v12, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
}

uint64_t sub_23FF84984(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_23FF849C8(uint64_t a1, uint64_t a2)
{
  v21 = a2;
  v3 = sub_23FFD92EC();
  v23 = *(v3 - 8);
  v24 = v3;
  MEMORY[0x28223BE20](v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_23FFD92BC();
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_23FFD929C();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_23FFD925C();

  v13 = sub_23FFD927C();
  v14 = sub_23FFD954C();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134217984;
    *(v15 + 4) = *(a1 + 16);

    _os_log_impl(&dword_23FF4C000, v13, v14, "Received %ld apps", v15, 0xCu);
    MEMORY[0x245CB48E0](v15, -1, -1);
  }

  else
  {
  }

  (*(v10 + 8))(v12, v9);
  sub_23FF79E5C();
  v16 = sub_23FFD958C();
  sub_23FFD92AC();
  v17 = swift_allocObject();
  v18 = v21;
  *(v17 + 16) = a1;
  *(v17 + 24) = v18;
  aBlock[4] = sub_23FF8C7F0;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_23FF84984;
  aBlock[3] = &block_descriptor_6;
  v19 = _Block_copy(aBlock);

  sub_23FFD92DC();
  MEMORY[0x245CB3D50](0, v5, v8, v19);
  _Block_release(v19);

  (*(v23 + 8))(v5, v24);
  (*(v6 + 8))(v8, v22);
}

void sub_23FF84D40(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = sub_23FFD929C();
  i = *(v3 - 8);
  v78 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v79 = v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v72 = v71 - v6;
  v7 = sub_23FFD91CC();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v80 = (v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v12 = v71 - v11;
  v73 = 0;
  sub_23FFD946C();
  v13 = sub_23FFD945C();
  sub_23FFD942C();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v71[1] = v13;
  v14 = *(a1 + 16);
  if (v14)
  {
    v83 = *(v8 + 16);
    v15 = a1 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v81 = *(v8 + 72);
    v84 = MEMORY[0x277D84FA0];
    v16 = v82;
    v83(v12, v15, v7);
    while (1)
    {
      v20 = sub_23FFD913C();
      v21 = v84;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v86[0] = v21;
      sub_23FF89B64(v20, isUniquelyReferenced_nonNull_native);
      v84 = v86[0];
      v23 = sub_23FFD913C();
      swift_beginAccess();
      v24 = *(v16 + 24);
      if (*(v24 + 16) && (v25 = sub_23FF88FF8(v23), (v26 & 1) != 0))
      {
        v18 = *(*(v24 + 56) + 8 * v25);
        swift_endAccess();
        swift_retain_n();
        sub_23FF6B278(v12);
        v16 = v82;
      }

      else
      {
        swift_endAccess();
        v17 = v80;
        v83(v80, v12, v7);
        v18 = sub_23FF6EC80(v17);

        v16 = v82;
        sub_23FF856C4(v19);
      }

      AppLibrary.updateInstallState(forUpdated:)(v18);

      (*(v8 + 8))(v12, v7);
      v15 += v81;
      if (!--v14)
      {
        break;
      }

      v83(v12, v15, v7);
    }
  }

  else
  {
    v84 = MEMORY[0x277D84FA0];
    v16 = v82;
  }

  swift_beginAccess();
  v27 = *(v16 + 24);
  v28 = v27 + 64;
  v29 = 1 << *(v27 + 32);
  if (v29 < 64)
  {
    v30 = ~(-1 << v29);
  }

  else
  {
    v30 = -1;
  }

  v31 = v30 & *(v27 + 64);
  v32 = (v29 + 63) >> 6;
  v33 = v84;
  v75 = v84 + 56;
  v80 = (i + 8);
  v81 = v27;

  v34 = 0;
  *&v35 = 134217984;
  v74 = v35;
  v36 = v16;
  v37 = v73;
  v76 = v28;
  for (i = v32; v31; v32 = i)
  {
LABEL_23:
    while (1)
    {
      v50 = v37;
      v51 = __clz(__rbit64(v31));
      v31 &= v31 - 1;
      v52 = *(*(v81 + 56) + ((v34 << 9) | (8 * v51)));
      if (*(v33 + 16))
      {
        v53 = *(v52 + 16);
        v54 = sub_23FFD9A1C();
        v55 = -1 << *(v33 + 32);
        v56 = v54 & ~v55;
        if ((*(v75 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56))
        {
          break;
        }
      }

LABEL_28:

      sub_23FFD925C();

      v58 = sub_23FFD927C();
      v59 = sub_23FFD953C();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = v74;
        *(v60 + 4) = *(v52 + 16);

        _os_log_impl(&dword_23FF4C000, v58, v59, "Known app %llu is not installed", v60, 0xCu);
        MEMORY[0x245CB48E0](v60, -1, -1);
      }

      else
      {
      }

      v37 = v50;
      (*v80)(v79, v78);
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
      v87 = 0u;
      v61 = *(v52 + 24);
      v62 = *(v52 + 40);
      v92 = *(v52 + 72);
      v63 = *(v52 + 56);
      v91[1] = v62;
      v91[2] = v63;
      v91[0] = v61;
      sub_23FF642A8(v91, v85, &qword_27E3A2950, &qword_23FFDBD30);
      v64 = sub_23FF6E880(v91, &v87);
      sub_23FF64248(v91, &qword_27E3A2950, &qword_23FFDBD30);
      if (v64)
      {
        KeyPath = swift_getKeyPath();
        v83 = v71;
        MEMORY[0x28223BE20](KeyPath);
        v71[-2] = v52;
        v71[-1] = &v87;
        v85[0] = v52;
        sub_23FF85BE0(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
        sub_23FFD8FDC();
      }

      else
      {
        v38 = *(v52 + 40);
        v39 = *(v52 + 48);
        v40 = v90;
        v41 = v89;
        v42 = v87;
        *(v52 + 40) = v88;
        v43 = *(v52 + 24);
        v44 = *(v52 + 32);
        v45 = *(v52 + 56);
        v46 = *(v52 + 64);
        v47 = *(v52 + 72);
        *(v52 + 24) = v42;
        *(v52 + 56) = v41;
        *(v52 + 72) = v40;
        sub_23FF6E04C(v43, v44, v38, v39, v45, v46, v47);
      }

      memset(v86, 0, sizeof(v86));
      v48 = swift_getKeyPath();
      v83 = v71;
      MEMORY[0x28223BE20](v48);
      v71[-2] = v52;
      v71[-1] = v86;
      v85[0] = v52;
      sub_23FF85BE0(&qword_27E3A28C8, type metadata accessor for AppLibrary.App, protocol conformance descriptor for AppLibrary.App);
      sub_23FFD8FDC();

      v36 = v82;
      AppLibrary.updateInstallState(forUpdated:)(v52);

      v33 = v84;
      v28 = v76;
      v32 = i;
      if (!v31)
      {
        goto LABEL_19;
      }
    }

    v57 = ~v55;
    while (*(*(v33 + 48) + 8 * v56) != v53)
    {
      v56 = (v56 + 1) & v57;
      if (((*(v75 + ((v56 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v56) & 1) == 0)
      {
        goto LABEL_28;
      }
    }

    v37 = v50;
  }

  while (1)
  {
LABEL_19:
    v49 = v34 + 1;
    if (__OFADD__(v34, 1))
    {
      __break(1u);
      return;
    }

    if (v49 >= v32)
    {
      break;
    }

    v31 = *(v28 + 8 * v49);
    ++v34;
    if (v31)
    {
      v34 = v49;
      goto LABEL_23;
    }
  }

  if (*(v36 + 48))
  {
    v66 = swift_getKeyPath();
    MEMORY[0x28223BE20](v66);
    v71[-2] = v36;
    LOBYTE(v71[-1]) = 0;
    v85[0] = v36;
    sub_23FF85BE0(&qword_27E3A3158, type metadata accessor for AppLibrary, protocol conformance descriptor for AppLibrary);
    sub_23FFD8FDC();
  }

  else
  {
    *(v36 + 48) = 0;
  }

  v67 = v72;
  sub_23FFD925C();
  v68 = sub_23FFD927C();
  v69 = sub_23FFD954C();
  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&dword_23FF4C000, v68, v69, "Finished updating catalog", v70, 2u);
    MEMORY[0x245CB48E0](v70, -1, -1);
  }

  (*v80)(v67, v78);
}