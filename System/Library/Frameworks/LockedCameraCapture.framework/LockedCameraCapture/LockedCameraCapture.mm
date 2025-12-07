uint64_t sub_238C0EA20()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_238C0EAA0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238C0EAEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238C0EB74()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_238C0EC00()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_238C0EC5C()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_238C0ECA4()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t LockedCameraCaptureExtension.configuration.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x28223BE20](a1);
  (*(v4 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v6, a1);
  v7 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  (*(v4 + 32))(v8 + v7, &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), a1);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return sub_238C19408();
}

uint64_t sub_238C0EEE0()
{
  v0 = sub_238C19448();
  __swift_allocate_value_buffer(v0, qword_27DF6AF38);
  __swift_project_value_buffer(v0, qword_27DF6AF38);
  return sub_238C19428();
}

id LockedCameraCaptureUIScene.init(content:)@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v45 = a4;
  v42 = a5;
  v43 = a1;
  v7 = *(a3 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v44 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v37 - v10;
  v12 = sub_238C193E8();
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27DF6AF30 != -1)
  {
    swift_once();
  }

  v46 = a2;
  v47 = a3;
  v15 = sub_238C19448();
  __swift_project_value_buffer(v15, qword_27DF6AF38);
  v16 = sub_238C19438();
  v38 = v17;
  v39 = v16;
  v18 = [objc_allocWithZone(sub_238C19478()) init];
  sub_238C194E8();
  swift_allocObject();
  v19 = v18;
  v20 = sub_238C19498();
  type metadata accessor for LockedCameraCaptureSession();
  v21 = swift_allocObject();
  *(v21 + 16) = v20;

  v22 = sub_238C19488();
  v23 = [v22 url];

  sub_238C193D8();
  if (qword_2814F3A98 != -1)
  {
    v24 = swift_once();
  }

  v25 = qword_2814F3F20;
  MEMORY[0x28223BE20](v24);
  *(&v37 - 2) = v14;
  v26 = *(*v25 + *MEMORY[0x277D841D0] + 16);
  v27 = *(*v25 + 48) + 3;
  v37 = v14;
  v28 = v27 & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((v25 + (v27 & 0x1FFFFFFFCLL)));
  sub_238C0F5A8(v25 + v26);
  os_unfair_lock_unlock((v25 + v28));
  v43(v21);

  v29 = v47;
  sub_238C19548();
  (*(v7 + 16))(v44, v11, v29);
  v30 = sub_238C19538();
  result = [v30 view];
  if (result)
  {
    v32 = result;
    v33 = [objc_opt_self() clearColor];
    [v32 setBackgroundColor_];

    sub_238C19468();

    (*(v7 + 8))(v11, v29);
    result = (*(v40 + 8))(v37, v41);
    v34 = v42;
    v35 = v38;
    v36 = v39;
    *v42 = v21;
    v34[1] = v36;
    v34[2] = v35;
  }

  else
  {
    __break(1u);
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

uint64_t sub_238C0F3DC(uint64_t a1, uint64_t a2)
{
  sub_238C0F788(a1);
  v4 = sub_238C193E8();
  v5 = *(v4 - 8);
  (*(v5 + 16))(a1, a2, v4);
  return (*(v5 + 56))(a1, 0, 1, v4);
}

uint64_t LockedCameraCaptureUIScene.body.getter(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = swift_allocObject();
  *(v6 + 16) = *(a1 + 16);
  *(v6 + 32) = v3;
  *(v6 + 40) = v4;
  *(v6 + 48) = v5;
  swift_bridgeObjectRetain_n();

  return sub_238C193F8();
}

uint64_t sub_238C0F5EC(uint64_t a1)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_238C0F680(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_238C0F6DC(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_238C0F724(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_238C0F788(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n");
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

uint64_t sub_238C0F8DC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_238C0F8FC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_2814F3A20[0])
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, qword_2814F3A20);
    }
  }
}

uint64_t sub_238C0F974()
{
  v0 = sub_238C19518();
  __swift_allocate_value_buffer(v0, qword_2814F3F08);
  __swift_project_value_buffer(v0, qword_2814F3F08);
  return sub_238C19508();
}

void LockedCameraCaptureSession.sessionContentURL.getter(uint64_t a1)
{
  v1 = sub_238C19488();
  v2 = [v1 url];

  sub_238C193D8();
}

uint64_t sub_238C0FA58()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v6 - v1;
  v3 = sub_238C193E8();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B150, &qword_238C1A2D8);
  v4 = swift_allocObject();
  *(v4 + ((*(*v4 + 48) + 3) & 0x1FFFFFFFCLL)) = 0;
  sub_238C115A4(v2, v4 + *(*v4 + *MEMORY[0x277D841D0] + 16), &qword_27DF6B098, "h\n");
  result = sub_238C1196C(v2, &qword_27DF6B098, "h\n");
  qword_2814F3F20 = v4;
  return result;
}

BOOL static LockedCameraCaptureSession.hasActiveSession.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n");
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9 - v1;
  if (qword_2814F3A98 != -1)
  {
    swift_once();
  }

  v3 = qword_2814F3F20;
  v4 = *(*qword_2814F3F20 + *MEMORY[0x277D841D0] + 16);
  v5 = (*(*qword_2814F3F20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_2814F3F20 + v5));
  sub_238C115A4(v3 + v4, v2, &qword_27DF6B098, "h\n");
  os_unfair_lock_unlock((v3 + v5));
  v6 = sub_238C193E8();
  v7 = (*(*(v6 - 8) + 48))(v2, 1, v6) != 1;
  sub_238C1196C(v2, &qword_27DF6B098, "h\n");
  return v7;
}

uint64_t LockedCameraCaptureSession.urlsToOpen.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B100, "t\n");
  MEMORY[0x28223BE20](v0);
  v1 = sub_238C194A8();
  sub_238C19458();

  sub_238C193E8();
  sub_238C11508(&qword_27DF6B108, &qword_27DF6B100, "t\n", MEMORY[0x277D857C0]);
  return sub_238C197B8();
}

uint64_t sub_238C0FE70(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](sub_238C0FE94, 0, 0);
}

uint64_t sub_238C0FE94()
{
  v1 = [*(v0 + 24) URL];
  sub_238C193D8();

  v2 = *(v0 + 8);

  return v2();
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

uint64_t LockedCameraCaptureSession.openApplication(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  return MEMORY[0x2822009F8](sub_238C0FFA4, 0, 0);
}

uint64_t sub_238C0FFA4()
{
  v1 = swift_task_alloc();
  *(v0 + 40) = v1;
  *v1 = v0;
  v1[1] = sub_238C10044;
  v2 = *(v0 + 16);

  return MEMORY[0x2821AC4E0](v2);
}

uint64_t sub_238C10044()
{
  v2 = *v1;
  *(v2 + 48) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_238C10178, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_238C10178()
{
  v1 = *(v0 + 48);
  sub_238C104EC();
  swift_allocError();
  sub_238C10228(v1, v2);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_238C10228@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B140, &qword_238C1A2C8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v18[-v5];
  v7 = sub_238C194C8();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v18[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v13 = &v18[-v12];
  v19 = a1;
  MEMORY[0x23EE756A0](a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B148, &qword_238C1A2D0);
  result = swift_dynamicCast();
  if (result)
  {
    *a2 = v18[7];
    return result;
  }

  v19 = a1;
  MEMORY[0x23EE756A0](a1);
  v15 = swift_dynamicCast();
  v16 = *(v8 + 56);
  if (!v15)
  {
    v16(v6, 1, 1, v7);
    result = sub_238C1196C(v6, &qword_27DF6B140, &qword_238C1A2C8);
    goto LABEL_8;
  }

  v16(v6, 0, 1, v7);
  v17 = *(v8 + 32);
  v17(v13, v6, v7);
  v17(v11, v13, v7);
  result = (*(v8 + 88))(v11, v7);
  if (result == *MEMORY[0x277D4C8D0])
  {
LABEL_8:
    *a2 = 0;
    return result;
  }

  if (result == *MEMORY[0x277D4C8C0])
  {
    *a2 = 1;
  }

  else if (result == *MEMORY[0x277D4C8C8])
  {
    *a2 = 2;
  }

  else
  {
    *a2 = 0;
    return (*(v8 + 8))(v11, v7);
  }

  return result;
}

unint64_t sub_238C104EC()
{
  result = qword_27DF6B110;
  if (!qword_27DF6B110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6B110);
  }

  return result;
}

uint64_t LockedCameraCaptureSession.openApplicationAfterTransitionCompletion(for:)(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v2[4] = *v1;
  sub_238C19618();
  v2[5] = sub_238C19608();
  v4 = sub_238C195F8();
  v2[6] = v4;
  v2[7] = v3;

  return MEMORY[0x2822009F8](sub_238C10600, v4, v3);
}

uint64_t sub_238C10600()
{
  v1 = swift_task_alloc();
  *(v0 + 64) = v1;
  *v1 = v0;
  v1[1] = sub_238C106A0;
  v2 = *(v0 + 16);

  return MEMORY[0x2821AC4F0](v2);
}

uint64_t sub_238C106A0()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 56);
  v4 = *(v2 + 48);
  if (v0)
  {
    v5 = sub_238C10840;
  }

  else
  {
    v5 = sub_238C107DC;
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

uint64_t sub_238C107DC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238C10840()
{
  v1 = *(v0 + 72);

  sub_238C104EC();
  swift_allocError();
  sub_238C10228(v1, v2);
  swift_willThrow();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t LockedCameraCaptureSession.invalidateSessionContent()()
{
  *(v1 + 16) = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0);
  *(v1 + 24) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_238C10990, 0, 0);
}

uint64_t sub_238C10990()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = sub_238C19638();
  (*(*(v3 - 8) + 56))(v2, 1, 1, v3);
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = 0;
  v4[4] = v1;

  sub_238C10CD4(0, 0, v2, &unk_238C1A0E0, v4);

  v5 = v0[1];

  return v5();
}

uint64_t sub_238C10AB4(uint64_t a1)
{
  v2 = sub_238C19488();
  [v2 invalidate];

  v3 = *(v1 + 8);

  return v3();
}

uint64_t sub_238C10B2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C10BE0;

  return sub_238C10A94(a1, v4, v5, v6);
}

uint64_t sub_238C10BE0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_238C10CD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_238C115A4(a3, v25 - v10, &qword_27DF6B118, &qword_238C1A0D0);
  v12 = sub_238C19638();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_238C1196C(v11, &qword_27DF6B118, &qword_238C1A0D0);
  }

  else
  {
    sub_238C19628();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_238C195F8();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_238C195C8() + 32;
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

      sub_238C1196C(a3, &qword_27DF6B118, &qword_238C1A0D0);

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

  sub_238C1196C(a3, &qword_27DF6B118, &qword_238C1A0D0);
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

unint64_t LockedCameraCaptureSession.ApplicationLaunchError.failureReason.getter()
{
  v1 = 0xD000000000000033;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000042;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t LockedCameraCaptureSession.ApplicationLaunchError.hashValue.getter()
{
  v1 = *v0;
  sub_238C19868();
  MEMORY[0x23EE75380](v1);
  return sub_238C19888();
}

uint64_t sub_238C110EC()
{
  v1 = *v0;
  sub_238C19868();
  MEMORY[0x23EE75380](v1);
  return sub_238C19888();
}

uint64_t sub_238C11160(uint64_t a1)
{
  v2 = *v1;
  sub_238C19868();
  MEMORY[0x23EE75380](v2);
  return sub_238C19888();
}

unint64_t sub_238C111D0()
{
  v1 = 0xD000000000000033;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000042;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000023;
  }
}

uint64_t sub_238C11230(uint64_t a1)
{
  v2 = sub_238C11550();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_238C1126C(uint64_t a1)
{
  v2 = sub_238C11550();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t LockedCameraCaptureSession.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

unint64_t sub_238C1130C()
{
  result = qword_27DF6B120;
  if (!qword_27DF6B120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6B120);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for LockedCameraCaptureSession.ApplicationLaunchError(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for LockedCameraCaptureSession.ApplicationLaunchError(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_238C11508(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_238C11550()
{
  result = qword_27DF6B138;
  if (!qword_27DF6B138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DF6B138);
  }

  return result;
}

uint64_t sub_238C115A4(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_238C1160C(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_238C11704;

  return v6(a1);
}

uint64_t sub_238C11704()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_238C117FC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238C119CC;

  return sub_238C1160C(a1, v4);
}

uint64_t sub_238C118B4(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_238C10BE0;

  return sub_238C1160C(a1, v4);
}

uint64_t sub_238C1196C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *sub_238C119D4(void (*a1)(void *), uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1A0, &qword_238C1A518);
  v5 = MEMORY[0x28223BE20](v4);
  v54 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v53 = &v51 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1A8, &qword_238C1A520);
  MEMORY[0x28223BE20](v8);
  v66 = &v51 - v9;
  locked = type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate(0);
  MEMORY[0x28223BE20](locked);
  v11 = (&v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_238C193E8();
  v13 = *(v12 - 8);
  v64 = v12;
  v65 = v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = &v51 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v18 = &v51 - v17;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B1B0, &qword_238C1A528);
  v57 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v56 = &v51 - v19;
  v20 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_238C16ADC(0, &qword_2814F3A38, 0x277D243F0);
  v21 = sub_238C195E8();

  v60 = a2;
  v61 = a1;
  v59 = v4;
  if (v21 >> 62)
  {
    v22 = sub_238C197D8();
  }

  else
  {
    v22 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v23 = MEMORY[0x277D84F90];
  v51 = v8;
  v52 = v16;
  if (v22)
  {
    v63 = v21;
    v67[0] = MEMORY[0x277D84F90];
    result = sub_238C1791C(0, v22 & ~(v22 >> 63), 0);
    if (v22 < 0)
    {
      __break(1u);
      return result;
    }

    v25 = 0;
    v23 = v67[0];
    v26 = v63;
    v27 = v63 & 0xC000000000000001;
    v28 = v11;
    do
    {
      if (v27)
      {
        v29 = MEMORY[0x23EE752A0](v25);
      }

      else
      {
        v29 = *(v26 + 8 * v25 + 32);
      }

      v30 = v29;
      v31 = [v29 url];
      sub_238C193D8();

      v67[0] = v23;
      v33 = *(v23 + 16);
      v32 = *(v23 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_238C1791C((v32 > 1), v33 + 1, 1);
        v23 = v67[0];
      }

      ++v25;
      *(v23 + 16) = v33 + 1;
      (*(v65 + 32))(v23 + ((*(v65 + 80) + 32) & ~*(v65 + 80)) + *(v65 + 72) * v33, v18, v64);
      v26 = v63;
    }

    while (v22 != v25);
    v11 = v28;
    v21 = v63;
  }

  v35 = sub_238C17FB8(v34, v21);

  v67[0] = v23;
  v36 = v58;
  v67[4] = *(v58 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B1C0, &qword_238C1A530);
  sub_238C11508(&unk_2814F3A68, &unk_27DF6B1C0, &qword_238C1A530, MEMORY[0x277D83958]);
  sub_238C18170(&unk_2814F3EF0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v37 = v56;
  sub_238C19598();
  *(v36 + 120) = v23;

  *(v36 + 128) = v35;

  if (*(v36 + 112))
  {

    v38 = v66;
    v39 = v55;
    (*(v57 + 16))(v66, v37, v55);
    v40 = *(v51 + 36);
    sub_238C11508(&qword_2814F39F8, &unk_27DF6B1B0, &qword_238C1A528, MEMORY[0x277D84490]);
    sub_238C19668();
    v41 = v38;
    sub_238C19678();
    v42 = *&v38[v40];
    v43 = v53;
    v44 = v54;
    v45 = v64;
    v46 = v52;
    if (v42 != v67[0])
    {
      v63 = v65 + 32;
      v58 = v65 + 16;
      v47 = (v65 + 8);
      do
      {
        v48 = sub_238C19698();
        sub_238C115A4(v49, v43, &qword_27DF6B1A0, &qword_238C1A518);
        v48(v67, 0);
        sub_238C19688();
        sub_238C18100(v43, v44);
        swift_getEnumCaseMultiPayload();
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1D0, &qword_238C1A538);
        (*v63)(v46, v44 + *(v50 + 48), v45);
        (*v58)(v11, v46, v45);
        swift_storeEnumTagMultiPayload();
        v61(v11);
        sub_238C180A4(v11);
        (*v47)(v46, v45);
        sub_238C19678();
        v41 = v66;
      }

      while (*&v66[v40] != v67[0]);
    }

    sub_238C1196C(v41, &qword_27DF6B1A8, &qword_238C1A520);
    return (*(v57 + 8))(v56, v39);
  }

  else
  {
    *v11 = v23;
    swift_storeEnumTagMultiPayload();
    v61(v11);
    sub_238C180A4(v11);
    result = (*(v57 + 8))(v37, v55);
    *(v36 + 112) = 1;
  }

  return result;
}

void sub_238C121A0(uint64_t a1)
{
  v2 = *(v1 + 120);
  if (*(v2 + 16))
  {
    v4 = *(v1 + 128);

    sub_238C122AC(a1, v2);
    v6 = v5;

    if (*(v4 + 16) && (v7 = sub_238C17074(a1), (v8 & 1) != 0))
    {
      v9 = *(*(v4 + 56) + 8 * v7);

      if ((v6 & 1) == 0 && ([v9 isTemporaryPath] & 1) == 0)
      {
        [v9 invalidate];
      }
    }

    else
    {
    }
  }
}

uint64_t sub_238C122AC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v4 = *(sub_238C193E8() - 8);
  v5 = a2 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v6 = *(v4 + 72);
  sub_238C18170(&unk_2814F3EF0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v7 = 0;
  while ((sub_238C195A8() & 1) == 0)
  {
    ++v7;
    v5 += v6;
    if (v2 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_238C123CC()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

void sub_238C1240C(uint64_t (**a1)(uint64_t a1), uint64_t a2)
{
  v56 = a1;
  v57 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0);
  MEMORY[0x28223BE20](v3 - 8);
  v62 = &v51 - v4;
  v5 = sub_238C19558();
  v60 = *(v5 - 8);
  v61 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v51 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_238C19578();
  v58 = *(v8 - 8);
  v59 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_238C196F8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_238C193E8();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = v2;
  if (*(v2 + 112))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    if ((sub_238C19718() & 1) == 0)
    {
      if (qword_2814F3A90 != -1)
      {
        swift_once();
      }

      v39 = sub_238C19518();
      __swift_project_value_buffer(v39, qword_2814F3F08);
      v64 = sub_238C194F8();
      v40 = sub_238C196A8();
      if (os_log_type_enabled(v64, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_238C0D000, v64, v40, "Already observing directory changes when beginObservingChanges called, bailing.", v41, 2u);
        MEMORY[0x23EE757D0](v41, -1, -1);
      }

      swift_unknownObjectRelease();
      goto LABEL_17;
    }

    swift_unknownObjectRelease();
  }

  v19 = objc_allocWithZone(MEMORY[0x277D243F8]);
  v20 = sub_238C195B8();
  v64 = [v19 initWithTypeIdentifier_];

  v21 = [v64 finalizedSessionsContainerURLForCurrentApplication];
  if (v21)
  {
    v22 = v21;
    sub_238C193D8();

    v55 = v18;
    sub_238C193C8();
    if (aBlock == -1)
    {
      if (qword_2814F3A90 != -1)
      {
        swift_once();
      }

      v47 = sub_238C19518();
      __swift_project_value_buffer(v47, qword_2814F3F08);
      v48 = sub_238C194F8();
      v49 = sub_238C196C8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_238C0D000, v48, v49, "Unable to acquire fd for session container URL", v50, 2u);
        MEMORY[0x23EE757D0](v50, -1, -1);
      }

      (*(v16 + 8))(v18, v15);
    }

    else
    {
      v52 = aBlock;
      v51 = sub_238C16ADC(0, &unk_2814F3A00, 0x277D85CA0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B178, &qword_238C1A4E0);
      v23 = swift_allocObject();
      *(v23 + 16) = xmmword_238C1A2F0;
      sub_238C196E8();
      aBlock = v23;
      sub_238C18170(&unk_2814F3A10, MEMORY[0x277D85288], MEMORY[0x277D85290]);
      v54 = v16;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B188, &qword_238C1A4E8);
      v53 = v15;
      sub_238C11508(&qword_2814F3A50, &qword_27DF6B188, &qword_238C1A4E8, MEMORY[0x277D83970]);
      sub_238C19778();
      v24 = sub_238C19708();
      (*(v12 + 8))(v14, v11);
      v25 = *(v63 + 152);
      swift_getObjectType();
      v26 = swift_allocObject();
      v26[2] = v24;
      v26[3] = v25;
      v27 = v57;
      v26[4] = v56;
      v26[5] = v27;
      v69 = sub_238C16934;
      v70 = v26;
      aBlock = MEMORY[0x277D85DD0];
      v66 = 1107296256;
      v56 = &v67;
      v67 = sub_238C133E4;
      v68 = &block_descriptor;
      v28 = _Block_copy(&aBlock);
      swift_unknownObjectRetain();

      sub_238C19568();
      sub_238C13518();
      sub_238C19728();
      _Block_release(v28);
      v29 = v61;
      v60 = *(v60 + 8);
      (v60)(v7, v61);
      v30 = v59;
      v58 = *(v58 + 8);
      (v58)(v10, v59);

      v31 = swift_allocObject();
      *(v31 + 16) = v52;
      v69 = sub_238C16958;
      v70 = v31;
      aBlock = MEMORY[0x277D85DD0];
      v66 = 1107296256;
      v67 = sub_238C133E4;
      v68 = &block_descriptor_44;
      v32 = _Block_copy(&aBlock);
      sub_238C19568();
      sub_238C13518();
      sub_238C19738();
      _Block_release(v32);
      (v60)(v7, v29);
      (v58)(v10, v30);

      v33 = v63;
      *(v63 + 112) = v24;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v34 = sub_238C19638();
      v35 = v62;
      (*(*(v34 - 8) + 56))(v62, 1, 1, v34);
      sub_238C19618();

      v36 = sub_238C19608();
      v37 = swift_allocObject();
      v38 = MEMORY[0x277D85700];
      v37[2] = v36;
      v37[3] = v38;
      v37[4] = v33;
      sub_238C10CD4(0, 0, v35, &unk_238C1A4F8, v37);
      swift_unknownObjectRelease();

      (*(v54 + 8))(v55, v53);
    }

    return;
  }

  if (qword_2814F3A90 != -1)
  {
    swift_once();
  }

  v42 = sub_238C19518();
  __swift_project_value_buffer(v42, qword_2814F3F08);
  v43 = sub_238C194F8();
  v44 = sub_238C196C8();
  if (os_log_type_enabled(v43, v44))
  {
    v45 = swift_slowAlloc();
    *v45 = 0;
    _os_log_impl(&dword_238C0D000, v43, v44, "beginObservingChanges: Unable to build sessions container URL for current application.", v45, 2u);
    MEMORY[0x23EE757D0](v45, -1, -1);
  }

LABEL_17:
  v46 = v64;
}

uint64_t sub_238C12E6C@<X0>(uint64_t a1@<X0>, _DWORD *a2@<X8>)
{
  if (a1)
  {
    result = sub_238C19528();
  }

  else
  {
    if (qword_2814F3A90 != -1)
    {
      swift_once();
    }

    v4 = sub_238C19518();
    __swift_project_value_buffer(v4, qword_2814F3F08);
    v5 = sub_238C194F8();
    v6 = sub_238C196C8();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_238C0D000, v5, v6, "unable to get fs path for sessionContainerURL", v7, 2u);
      MEMORY[0x23EE757D0](v7, -1, -1);
    }

    result = 0xFFFFFFFFLL;
  }

  *a2 = result;
  return result;
}

uint64_t sub_238C12F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v35 - v8;
  v10 = sub_238C196F8();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v35 - v15;
  swift_getObjectType();
  sub_238C19758();
  sub_238C196E8();
  sub_238C18170(&unk_2814F3A10, MEMORY[0x277D85288], MEMORY[0x277D85290]);
  v17 = sub_238C19768();
  v18 = *(v11 + 8);
  v18(v14, v10);
  if (v17)
  {
    if (qword_2814F3A90 != -1)
    {
      swift_once();
    }

    v19 = sub_238C19518();
    __swift_project_value_buffer(v19, qword_2814F3F08);
    v20 = sub_238C194F8();
    v21 = sub_238C196D8();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v36 = v18;
      v23 = a2;
      v24 = a4;
      v25 = a3;
      v26 = v22;
      *v22 = 0;
      _os_log_impl(&dword_238C0D000, v20, v21, "Write event received, refreshing session URLs", v22, 2u);
      v27 = v26;
      a3 = v25;
      a4 = v24;
      a2 = v23;
      v18 = v36;
      MEMORY[0x23EE757D0](v27, -1, -1);
    }

    v28 = sub_238C19638();
    (*(*(v28 - 8) + 56))(v9, 1, 1, v28);
    v29 = swift_allocObject();
    v29[2] = 0;
    v29[3] = 0;
    v29[4] = a2;
    v29[5] = a3;
    v29[6] = a4;

    sub_238C10CD4(0, 0, v9, &unk_238C1A510, v29);
  }

  else
  {
    if (qword_2814F3A90 != -1)
    {
      swift_once();
    }

    v30 = sub_238C19518();
    __swift_project_value_buffer(v30, qword_2814F3F08);
    v31 = sub_238C194F8();
    v32 = sub_238C196B8();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&dword_238C0D000, v31, v32, "Event received, was not a write (or self == nil), bailing", v33, 2u);
      MEMORY[0x23EE757D0](v33, -1, -1);
    }
  }

  return (v18)(v16, v10);
}

uint64_t sub_238C1335C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return MEMORY[0x2822009F8](sub_238C13380, a4, 0);
}

uint64_t sub_238C13380()
{
  sub_238C119D4(*(v0 + 24), *(v0 + 32));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238C133E4(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t sub_238C13428(int a1)
{
  if (qword_2814F3A90 != -1)
  {
    swift_once();
  }

  v2 = sub_238C19518();
  __swift_project_value_buffer(v2, qword_2814F3F08);
  v3 = sub_238C194F8();
  v4 = sub_238C196D8();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_238C0D000, v3, v4, "DispatchSource cancelled, closing file handle", v5, 2u);
    MEMORY[0x23EE757D0](v5, -1, -1);
  }

  return close(a1);
}

uint64_t sub_238C13518()
{
  sub_238C19558();
  sub_238C18170(&qword_2814F3A88, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B190, &qword_238C1A500);
  sub_238C11508(&unk_2814F3A58, &unk_27DF6B190, &qword_238C1A500, MEMORY[0x277D83970]);
  return sub_238C19778();
}

uint64_t sub_238C13604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  sub_238C19618();
  v4[3] = sub_238C19608();
  v6 = sub_238C195F8();
  v4[4] = v6;
  v4[5] = v5;

  return MEMORY[0x2822009F8](sub_238C1369C, v6, v5);
}

uint64_t sub_238C1369C()
{
  v1 = [objc_opt_self() sharedApplication];
  v2 = [v1 applicationState];

  if (v2)
  {

    v3 = *(v0 + 8);

    return v3();
  }

  else
  {
    if (qword_2814F3A90 != -1)
    {
      swift_once();
    }

    v5 = sub_238C19518();
    __swift_project_value_buffer(v5, qword_2814F3F08);
    v6 = sub_238C194F8();
    v7 = sub_238C196D8();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_238C0D000, v6, v7, "Application is foreground, begin file system observation", v8, 2u);
      MEMORY[0x23EE757D0](v8, -1, -1);
    }

    v9 = *(v0 + 16);

    return MEMORY[0x2822009F8](sub_238C13834, v9, 0);
  }
}

uint64_t sub_238C13834()
{
  sub_238C13918();
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);

  return MEMORY[0x2822009F8](sub_238C13898, v1, v2);
}

uint64_t sub_238C13898()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_238C13918()
{
  if (*(v0 + 112))
  {
    v1 = v0;
    swift_getObjectType();
    swift_unknownObjectRetain();
    if (sub_238C19718() & 1) != 0 || (*(v0 + 144))
    {
      if (qword_2814F3A90 != -1)
      {
        swift_once();
      }

      v2 = sub_238C19518();
      __swift_project_value_buffer(v2, qword_2814F3F08);
      swift_unknownObjectRetain();

      oslog = sub_238C194F8();
      v3 = sub_238C196D8();
      if (os_log_type_enabled(oslog, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 67109376;
        *(v4 + 4) = *(v0 + 144);

        *(v4 + 8) = 1024;
        *(v4 + 10) = sub_238C19718() & 1;
        swift_unknownObjectRelease();
        _os_log_impl(&dword_238C0D000, oslog, v3, "resumeObservation: Unable to resume file system observation. Already observing: %{BOOL}d, cancelled: %{BOOL}d", v4, 0xEu);
        MEMORY[0x23EE757D0](v4, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease_n();
      }
    }

    else
    {
      if (qword_2814F3A90 != -1)
      {
        swift_once();
      }

      v5 = sub_238C19518();
      __swift_project_value_buffer(v5, qword_2814F3F08);
      v6 = sub_238C194F8();
      v7 = sub_238C196D8();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&dword_238C0D000, v6, v7, "Resuming file system observation", v8, 2u);
        MEMORY[0x23EE757D0](v8, -1, -1);
      }

      sub_238C19748();
      swift_unknownObjectRelease();
      *(v1 + 144) = 1;
    }
  }
}

void sub_238C13BC4(const char *a1, void (*a2)(uint64_t))
{
  v5 = v2;
  if (qword_2814F3A90 != -1)
  {
    swift_once();
  }

  v6 = sub_238C19518();
  __swift_project_value_buffer(v6, qword_2814F3F08);
  v7 = sub_238C194F8();
  v8 = sub_238C196D8();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_238C0D000, v7, v8, a1, v9, 2u);
    MEMORY[0x23EE757D0](v9, -1, -1);
  }

  if (*(v5 + 112))
  {
    ObjectType = swift_getObjectType();
    swift_unknownObjectRetain();
    a2(ObjectType);
    swift_unknownObjectRelease();
  }

  *(v5 + 144) = 0;
}

uint64_t sub_238C13CE0()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

char *sub_238C13D38()
{
  type metadata accessor for LockedCameraCaptureManager(0);
  v0 = swift_allocObject();
  result = sub_238C14014();
  qword_2814F3BA0 = v0;
  return result;
}

uint64_t static LockedCameraCaptureManager.shared.getter()
{
  if (qword_2814F3B90 != -1)
  {
    swift_once();
  }
}

uint64_t LockedCameraCaptureManager.sessionContentURLs.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n");
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v11 - v2;
  if (qword_2814F3A98 != -1)
  {
    swift_once();
  }

  v4 = qword_2814F3F20;
  v5 = *(*qword_2814F3F20 + *MEMORY[0x277D841D0] + 16);
  v6 = (*(*qword_2814F3F20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_2814F3F20 + v6));
  sub_238C115A4(v4 + v5, v3, &qword_27DF6B098, "h\n");
  os_unfair_lock_unlock((v4 + v6));
  v7 = sub_238C193E8();
  LODWORD(v4) = (*(*(v7 - 8) + 48))(v3, 1, v7);
  sub_238C1196C(v3, &qword_27DF6B098, "h\n");
  if (v4 != 1)
  {
    return MEMORY[0x277D84F90];
  }

  v8 = *(v0 + 32);
  os_unfair_lock_lock((v8 + 24));
  v9 = *(v8 + 16);

  os_unfair_lock_unlock((v8 + 24));
  return v9;
}

uint64_t LockedCameraCaptureManager.sessionContentUpdates.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_sessionContentUpdatesStream;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B160, &qword_238C1A318);
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *sub_238C14014()
{
  v1 = v0;
  v2 = sub_238C193E8();
  v60 = *(v2 - 8);
  v61 = v2;
  MEMORY[0x28223BE20](v2);
  v64 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n");
  MEMORY[0x28223BE20](v4 - 8);
  v63 = &v54 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B200, &qword_238C1A580);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v54 - v8;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B168, &qword_238C1A320);
  v10 = *(v62 - 8);
  MEMORY[0x28223BE20](v62);
  v12 = &v54 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B160, &qword_238C1A318);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v54 - v15;
  *&v1[OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didEnterBackgroundObserver] = 0;
  *&v1[OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_willEnterForegroundObserver] = 0;
  *&v1[OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didBecomeActiveObserver] = 0;
  type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate(0);
  (*(v7 + 104))(v9, *MEMORY[0x277D85778], v6);
  sub_238C19648();
  (*(v7 + 8))(v9, v6);
  v54 = v16;
  v55 = v14;
  v17 = *(v14 + 16);
  v56 = v13;
  v18 = v13;
  v19 = v62;
  v17(&v1[OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_sessionContentUpdatesStream], v16, v18);
  v58 = v10;
  v59 = v1;
  v20 = *(v10 + 16);
  v57 = v12;
  v20(&v1[OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_sessionContentUpdatesContinuation], v12, v19);
  if (qword_2814F3A98 != -1)
  {
    swift_once();
  }

  v21 = qword_2814F3F20;
  v22 = *(*qword_2814F3F20 + *MEMORY[0x277D841D0] + 16);
  v23 = (*(*qword_2814F3F20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_2814F3F20 + v23));
  v24 = v21 + v22;
  v25 = v63;
  sub_238C115A4(v24, v63, &qword_27DF6B098, "h\n");
  os_unfair_lock_unlock((v21 + v23));
  v26 = v60;
  LODWORD(v21) = (*(v60 + 48))(v25, 1, v61);
  sub_238C1196C(v25, &qword_27DF6B098, "h\n");
  if (v21 != 1)
  {
    type metadata accessor for CaptureManagerURLs();
    v43 = swift_allocObject();
    v44 = 0;
    v45 = MEMORY[0x277D84F98];
    v30 = MEMORY[0x277D84F90];
    v47 = v57;
    v46 = v58;
    v48 = v55;
    v49 = v19;
LABEL_18:
    v51 = v59;
    swift_defaultActor_initialize();
    *(v43 + 112) = v44;
    *(v43 + 120) = v30;
    *(v43 + 128) = v45;
    *(v51 + 2) = v43;
    type metadata accessor for CaptureManagerFSObserving();
    v52 = swift_allocObject();

    swift_defaultActor_initialize();
    *(v52 + 112) = 0u;
    *(v52 + 128) = 0u;
    *(v52 + 152) = v43;
    *(v52 + 144) = 0;
    *(v51 + 3) = v52;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B208, &qword_238C1A588);
    v53 = swift_allocObject();
    *(v53 + 24) = 0;
    *(v53 + 16) = v30;
    *(v51 + 4) = v53;
    sub_238C14BB0(&unk_284B881C0, &unk_238C1A5B0, &unk_284B881E8, &unk_238C1A5C0);
    sub_238C147CC();
    (*(v46 + 8))(v47, v49);
    (*(v48 + 8))(v54, v56);
    return v51;
  }

  v27 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_238C16ADC(0, &qword_2814F3A38, 0x277D243F0);
  v28 = sub_238C195E8();

  if (v28 >> 62)
  {
    v29 = sub_238C197D8();
  }

  else
  {
    v29 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v30 = MEMORY[0x277D84F90];
  if (!v29)
  {
LABEL_17:

    v45 = sub_238C17FB8(v50, v28);

    type metadata accessor for CaptureManagerURLs();
    v43 = swift_allocObject();

    v44 = 1;
    v49 = v62;
    v47 = v57;
    v46 = v58;
    v48 = v55;
    goto LABEL_18;
  }

  v65 = MEMORY[0x277D84F90];
  result = sub_238C1791C(0, v29 & ~(v29 >> 63), 0);
  if ((v29 & 0x8000000000000000) == 0)
  {
    v32 = 0;
    v33 = v64;
    v30 = v65;
    v34 = v28;
    v63 = v28 & 0xC000000000000001;
    v35 = v26;
    v36 = v61;
    v37 = v34;
    do
    {
      if (v63)
      {
        v38 = MEMORY[0x23EE752A0](v32);
      }

      else
      {
        v38 = *(v34 + 8 * v32 + 32);
      }

      v39 = v38;
      v40 = [v38 url];
      sub_238C193D8();

      v65 = v30;
      v42 = *(v30 + 16);
      v41 = *(v30 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_238C1791C((v41 > 1), v42 + 1, 1);
        v36 = v61;
        v30 = v65;
      }

      ++v32;
      *(v30 + 16) = v42 + 1;
      (*(v35 + 32))(v30 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v42, v33, v36);
      v34 = v37;
    }

    while (v29 != v32);
    v28 = v37;
    goto LABEL_17;
  }

  __break(1u);
  return result;
}

uint64_t sub_238C147CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v14 - v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n");
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  if (qword_2814F3A98 != -1)
  {
    swift_once();
  }

  v7 = qword_2814F3F20;
  v8 = *(*qword_2814F3F20 + *MEMORY[0x277D841D0] + 16);
  v9 = (*(*qword_2814F3F20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_2814F3F20 + v9));
  sub_238C115A4(v7 + v8, v6, &qword_27DF6B098, "h\n");
  os_unfair_lock_unlock((v7 + v9));
  v10 = sub_238C193E8();
  LODWORD(v7) = (*(*(v10 - 8) + 48))(v6, 1, v10);
  result = sub_238C1196C(v6, &qword_27DF6B098, "h\n");
  if (v7 == 1)
  {
    v12 = sub_238C19638();
    (*(*(v12 - 8) + 56))(v3, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v0;

    sub_238C10CD4(0, 0, v3, &unk_238C1A598, v13);
  }

  return result;
}

char *LockedCameraCaptureManager.deinit()
{
  sub_238C14BB0(&unk_284B88148, &unk_238C1A568, &unk_284B88170, &unk_238C1A578);

  v1 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_sessionContentUpdatesStream;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B160, &qword_238C1A318);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_sessionContentUpdatesContinuation;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B168, &qword_238C1A320);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v0;
}

uint64_t sub_238C14BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v6 = v4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v24 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B098, "h\n");
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v24 - v11;
  if (qword_2814F3A98 != -1)
  {
    swift_once();
  }

  v13 = qword_2814F3F20;
  v14 = *(*qword_2814F3F20 + *MEMORY[0x277D841D0] + 16);
  v15 = (*(*qword_2814F3F20 + 48) + 3) & 0x1FFFFFFFCLL;
  os_unfair_lock_lock((qword_2814F3F20 + v15));
  sub_238C115A4(v13 + v14, v12, &qword_27DF6B098, "h\n");
  os_unfair_lock_unlock((v13 + v15));
  v16 = sub_238C193E8();
  LODWORD(v13) = (*(*(v16 - 8) + 48))(v12, 1, v16);
  result = sub_238C1196C(v12, &qword_27DF6B098, "h\n");
  if (v13 == 1)
  {
    v18 = sub_238C19638();
    v19 = *(*(v18 - 8) + 56);
    v19(v9, 1, 1, v18);
    v20 = swift_allocObject();
    v20[2] = 0;
    v20[3] = 0;
    v20[4] = v6;

    sub_238C10CD4(0, 0, v9, a2, v20);

    v19(v9, 1, 1, v18);
    sub_238C19618();

    v21 = sub_238C19608();
    v22 = swift_allocObject();
    v23 = MEMORY[0x277D85700];
    v22[2] = v21;
    v22[3] = v23;
    v22[4] = v6;
    sub_238C10CD4(0, 0, v9, v25, v22);
  }

  return result;
}

uint64_t LockedCameraCaptureManager.__deallocating_deinit()
{
  LockedCameraCaptureManager.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t sub_238C14F14()
{
  v1 = *(*(v0 + 16) + 16);
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_238C14F88, v1, 0);
}

uint64_t sub_238C14F88()
{
  sub_238C183D8(v0[3], v0[2]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_238C14FF4(uint64_t a1)
{
  v3 = sub_238C193E8();
  v34 = *(v3 - 8);
  v35 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v33 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v32 = &v31 - v6;
  locked = type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate(0);
  v8 = MEMORY[0x28223BE20](locked);
  v10 = (&v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v8);
  v12 = &v31 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B210, &qword_238C1A5A0);
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v16 = &v31 - v15;
  sub_238C18BA4(a1, v12);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B168, &qword_238C1A320);
  sub_238C19658();
  (*(v14 + 8))(v16, v13);
  sub_238C18BA4(a1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v19 = v34;
      v18 = v35;
      v20 = v32;
      v21 = (*(v34 + 32))(v32, v10, v35);
      v22 = *(v1 + 32);
      MEMORY[0x28223BE20](v21);
      *(&v31 - 2) = v20;
      os_unfair_lock_lock((v22 + 24));
      sub_238C18C24((v22 + 16));
      os_unfair_lock_unlock((v22 + 24));
      return (*(v19 + 8))(v20, v18);
    }

    else
    {
      v26 = v33;
      v27 = v34;
      v28 = v35;
      v29 = (*(v34 + 32))(v33, v10, v35);
      v30 = *(v1 + 32);
      MEMORY[0x28223BE20](v29);
      *(&v31 - 2) = v26;
      os_unfair_lock_lock(v30 + 6);
      sub_238C18C08(&v30[4]);
      os_unfair_lock_unlock(v30 + 6);
      return (*(v27 + 8))(v26, v28);
    }
  }

  else
  {
    v24 = *v10;
    v25 = *(v1 + 32);
    MEMORY[0x28223BE20](EnumCaseMultiPayload);
    *(&v31 - 2) = v24;
    os_unfair_lock_lock((v25 + 24));
    sub_238C18C40((v25 + 16));
    os_unfair_lock_unlock((v25 + 24));
  }
}

uint64_t sub_238C153AC(uint64_t *a1, uint64_t a2)
{
  v4 = sub_238C193E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a2, v4);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_238C1675C(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_238C1675C((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  result = (*(v5 + 32))(v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, v7, v4);
  *a1 = v8;
  return result;
}

uint64_t sub_238C15524(uint64_t a1, uint64_t a2)
{
  v5[2] = a2;
  result = sub_238C17B14(sub_238C18C88, v5);
  v4 = *(*a1 + 16);
  if (v4 >= result)
  {
    return sub_238C18E00(result, v4);
  }

  __break(1u);
  return result;
}

uint64_t sub_238C155AC()
{
  v1 = *(*(v0 + 16) + 24);
  *(v0 + 24) = v1;

  return MEMORY[0x2822009F8](sub_238C15620, v1, 0);
}

uint64_t sub_238C15620()
{
  sub_238C1240C(sub_238C1932C, *(v0 + 16));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238C156A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 64) = a4;
  sub_238C19618();
  *(v4 + 72) = sub_238C19608();
  v6 = sub_238C195F8();

  return MEMORY[0x2822009F8](sub_238C15738, v6, v5);
}

uint64_t sub_238C15738()
{
  v1 = v0[8];

  v2 = objc_opt_self();
  v3 = [v2 defaultCenter];
  v4 = *MEMORY[0x277D76660];
  v5 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_238C19028;
  v0[7] = v5;
  v31 = MEMORY[0x277D85DD0];
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = sub_238C15C1C;
  v0[5] = &block_descriptor_78;
  v6 = _Block_copy(v0 + 2);

  v7 = [v3 addObserverForName:v4 object:0 queue:0 usingBlock:v6];
  _Block_release(v6);

  v8 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didEnterBackgroundObserver;
  v9 = *(v1 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didEnterBackgroundObserver);
  if (v9)
  {
    swift_unknownObjectRetain();
    v10 = [v2 defaultCenter];
    [v10 removeObserver_];

    swift_unknownObjectRelease();
  }

  v11 = v0[8];
  *(v1 + v8) = v7;
  swift_unknownObjectRelease();
  v12 = [v2 defaultCenter];
  v13 = *MEMORY[0x277D76758];
  v14 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_238C19060;
  v0[7] = v14;
  v0[2] = v31;
  v0[3] = 1107296256;
  v0[4] = sub_238C15C1C;
  v0[5] = &block_descriptor_82;
  v15 = _Block_copy(v0 + 2);

  v16 = [v12 addObserverForName:v13 object:0 queue:0 usingBlock:v15];
  _Block_release(v15);

  v17 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_willEnterForegroundObserver;
  v18 = *(v11 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_willEnterForegroundObserver);
  if (v18)
  {
    swift_unknownObjectRetain();
    v19 = [v2 defaultCenter];
    [v19 removeObserver_];

    swift_unknownObjectRelease();
  }

  v20 = v0[8];
  *(v11 + v17) = v16;
  swift_unknownObjectRelease();
  v21 = [v2 defaultCenter];
  v22 = *MEMORY[0x277D76648];
  v23 = swift_allocObject();
  swift_weakInit();
  v0[6] = sub_238C19098;
  v0[7] = v23;
  v0[2] = v31;
  v0[3] = 1107296256;
  v0[4] = sub_238C15C1C;
  v0[5] = &block_descriptor_86;
  v24 = _Block_copy(v0 + 2);

  v25 = [v21 addObserverForName:v22 object:0 queue:0 usingBlock:v24];
  _Block_release(v24);

  v26 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didBecomeActiveObserver;
  v27 = *(v20 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didBecomeActiveObserver);
  if (v27)
  {
    swift_unknownObjectRetain();
    v28 = [v2 defaultCenter];
    [v28 removeObserver_];

    swift_unknownObjectRelease();
  }

  *(v20 + v26) = v25;
  swift_unknownObjectRelease();
  v29 = v0[1];

  return v29();
}

uint64_t sub_238C15B98()
{
  v1 = *(*(v0 + 16) + 24);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238C15BBC, v1, 0);
}

uint64_t sub_238C15BBC()
{
  sub_238C138F8();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238C15C1C(uint64_t a1, uint64_t a2)
{
  v3 = sub_238C19368();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 32);
  sub_238C19358();

  v7(v6);

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_238C15D30()
{
  v1 = *(*(v0 + 16) + 24);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238C15D54, v1, 0);
}

uint64_t sub_238C15D54()
{
  sub_238C13918();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238C15DB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B118, &qword_238C1A0D0);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v12 - v6;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v9 = result;
    v10 = sub_238C19638();
    (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
    v11 = swift_allocObject();
    v11[2] = 0;
    v11[3] = 0;
    v11[4] = v9;
    sub_238C10CD4(0, 0, v7, a4, v11);
  }

  return result;
}

uint64_t sub_238C15EF0()
{
  v1 = *(*(v0 + 16) + 24);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238C19354, v1, 0);
}

uint64_t sub_238C15F34()
{
  v1 = *(*(v0 + 16) + 24);
  *(v0 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238C15F58, v1, 0);
}

uint64_t sub_238C15F58()
{
  sub_238C13BA4();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_238C15FB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  sub_238C19618();
  *(v4 + 24) = sub_238C19608();
  v6 = sub_238C195F8();

  return MEMORY[0x2822009F8](sub_238C16050, v6, v5);
}

uint64_t sub_238C16050()
{
  v1 = *(v0 + 16);

  v2 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didEnterBackgroundObserver;
  v3 = *(v1 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didEnterBackgroundObserver);
  if (v3)
  {
    v4 = objc_opt_self();
    swift_unknownObjectRetain();
    v5 = [v4 defaultCenter];
    [v5 removeObserver_];

    swift_unknownObjectRelease();
  }

  v6 = *(v0 + 16);
  *(v1 + v2) = 0;
  swift_unknownObjectRelease();
  v7 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_willEnterForegroundObserver;
  v8 = *(v6 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_willEnterForegroundObserver);
  if (v8)
  {
    v9 = objc_opt_self();
    swift_unknownObjectRetain();
    v10 = [v9 defaultCenter];
    [v10 removeObserver_];

    swift_unknownObjectRelease();
  }

  v11 = *(v0 + 16);
  *(v6 + v7) = 0;
  swift_unknownObjectRelease();
  v12 = OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didBecomeActiveObserver;
  v13 = *(v11 + OBJC_IVAR____TtC19LockedCameraCapture26LockedCameraCaptureManager_didBecomeActiveObserver);
  if (v13)
  {
    v14 = objc_opt_self();
    swift_unknownObjectRetain();
    v15 = [v14 defaultCenter];
    [v15 removeObserver_];

    swift_unknownObjectRelease();
  }

  *(v11 + v12) = 0;
  swift_unknownObjectRelease();
  v16 = *(v0 + 8);

  return v16();
}

uint64_t LockedCameraCaptureManager.invalidateSessionContent(at:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](sub_238C16234, 0, 0);
}

uint64_t sub_238C16234()
{
  v1 = *(*(v0 + 24) + 16);
  *(v0 + 32) = v1;
  return MEMORY[0x2822009F8](sub_238C16258, v1, 0);
}

uint64_t sub_238C16258()
{
  sub_238C121A0(*(v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

void sub_238C162E4(SEL *a1)
{
  v2 = [objc_opt_self() sharedInstance];
  [v2 *a1];
}

void sub_238C163BC(uint64_t a1)
{
  sub_238C16574(319, &qword_2814F3A40, type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate, MEMORY[0x277D857B8]);
  if (v1 <= 0x3F)
  {
    sub_238C16574(319, &qword_2814F3A48, type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate, MEMORY[0x277D85788]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_238C1653C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_238C16574(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_238C16628(uint64_t a1)
{
  sub_238C1669C();
  if (v1 <= 0x3F)
  {
    sub_238C16714();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_238C1669C()
{
  if (!qword_2814F3A80)
  {
    sub_238C16574(0, &qword_2814F3A78, MEMORY[0x277CC9260], MEMORY[0x277D83940]);
    if (!v1)
    {
      atomic_store(v0, &qword_2814F3A80);
    }
  }
}

void sub_238C16714()
{
  if (!qword_2814F3F00)
  {
    v0 = sub_238C193E8();
    if (!v1)
    {
      atomic_store(v0, &qword_2814F3F00);
    }
  }
}

void *sub_238C1675C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1F8, &qword_238C1A558);
  v10 = *(sub_238C193E8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_238C193E8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t block_copy_helper(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_238C16960(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C10BE0;

  return sub_238C13604(a1, v4, v5, v6);
}

uint64_t sub_238C16A14(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_238C119CC;

  return sub_238C1335C(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_238C16ADC(uint64_t a1, unint64_t *a2, void *a3)
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

void sub_238C16B24(uint64_t a1, uint64_t a2, char a3, void *a4)
{
  v53 = a4;
  v7 = sub_238C193E8();
  v49 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v54 = v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = v41 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B1E0, &unk_238C1A548);
  MEMORY[0x28223BE20](v12 - 8);
  v48 = v41 - v13;
  v14 = *(a1 + 16);

  v50 = a2;

  v45 = v14;
  if (!v14)
  {
LABEL_28:
    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    return;
  }

  v15 = 0;
  v16 = v50 & 0xFFFFFFFFFFFFFF8;
  if (v50 < 0)
  {
    v17 = v50;
  }

  else
  {
    v17 = v50 & 0xFFFFFFFFFFFFFF8;
  }

  v41[1] = v17;
  v43 = a1;
  v44 = v50 & 0xC000000000000001;
  v18 = (v49 + 32);
  v46 = v50 >> 62;
  v47 = v49 + 16;
  v42 = v50 & 0xFFFFFFFFFFFFFF8;
  while (1)
  {
    if (v15 >= *(a1 + 16))
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      sub_238C19818();
      __break(1u);
      goto LABEL_36;
    }

    v19 = *(v49 + 72);
    (*(v49 + 16))(v11, a1 + ((*(v49 + 80) + 32) & ~*(v49 + 80)) + v19 * v15, v7);
    if (v46)
    {
      if (v15 == sub_238C197D8())
      {
LABEL_29:
        swift_bridgeObjectRelease_n();
        swift_bridgeObjectRelease_n();
        (*(v49 + 8))(v11, v7);
        return;
      }
    }

    else if (v15 == *(v16 + 16))
    {
      goto LABEL_29;
    }

    v51 = v19;
    if (v44)
    {
      v20 = MEMORY[0x23EE752A0](v15, v50);
    }

    else
    {
      if (v15 >= *(v16 + 16))
      {
        goto LABEL_33;
      }

      v20 = *(v50 + 8 * v15 + 32);
    }

    v52 = v20;
    v21 = *v18;
    v22 = v48;
    v23 = v11;
    (*v18)(v48, v11, v7);
    v24 = v54;
    v25 = v7;
    v21(v54, v22, v7);
    v26 = *v53;
    v28 = sub_238C17074(v24);
    v29 = v26[2];
    v30 = (v27 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_32;
    }

    v32 = v27;
    if (v26[3] < v31)
    {
      break;
    }

    if (a3)
    {
      if (v27)
      {
        goto LABEL_26;
      }
    }

    else
    {
      sub_238C1710C();
      if (v32)
      {
        goto LABEL_26;
      }
    }

LABEL_19:
    v35 = v54;
    v36 = *v53;
    *(*v53 + 8 * (v28 >> 6) + 64) |= 1 << v28;
    v7 = v25;
    v21((v36[6] + v28 * v51), v35, v25);
    *(v36[7] + 8 * v28) = v52;
    v37 = v36[2];
    v38 = __OFADD__(v37, 1);
    v39 = v37 + 1;
    if (v38)
    {
      goto LABEL_34;
    }

    ++v15;
    v36[2] = v39;
    a3 = 1;
    v16 = v42;
    a1 = v43;
    v11 = v23;
    if (v45 == v15)
    {
      goto LABEL_28;
    }
  }

  sub_238C17380(v31, a3 & 1);
  v33 = sub_238C17074(v54);
  if ((v32 & 1) != (v34 & 1))
  {
    goto LABEL_35;
  }

  v28 = v33;
  if ((v32 & 1) == 0)
  {
    goto LABEL_19;
  }

LABEL_26:
  v40 = swift_allocError();
  swift_willThrow();
  v57 = v40;
  MEMORY[0x23EE756A0](v40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B148, &qword_238C1A2D0);
  if ((swift_dynamicCast() & 1) == 0)
  {

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
    (*(v49 + 8))(v54, v25);

    return;
  }

LABEL_36:
  v55 = 0;
  v56 = 0xE000000000000000;
  sub_238C19788();
  MEMORY[0x23EE750E0](0xD00000000000001BLL, 0x8000000238C1A9F0);
  sub_238C197A8();
  MEMORY[0x23EE750E0](39, 0xE100000000000000);
  sub_238C197C8();
  __break(1u);
}

unint64_t sub_238C17074(uint64_t a1)
{
  sub_238C193E8();
  sub_238C18170(&qword_27DF6B1F0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  v2 = sub_238C19588();

  return sub_238C1775C(a1, v2);
}

char *sub_238C1710C()
{
  v1 = v0;
  v31 = sub_238C193E8();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v30 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1D8, &qword_238C1A540);
  v3 = *v0;
  v4 = sub_238C197E8();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v26 = v1;
    v27 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v32 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v28 = v33 + 32;
    v29 = v33 + 16;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v34 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v33;
        v20 = *(v33 + 72) * v18;
        v22 = v30;
        v21 = v31;
        (*(v33 + 16))(v30, *(v3 + 48) + v20, v31);
        v23 = *(*(v3 + 56) + 8 * v18);
        v24 = v32;
        (*(v19 + 32))(*(v32 + 48) + v20, v22, v21);
        *(*(v24 + 56) + 8 * v18) = v23;
        result = v23;
        v13 = v34;
      }

      while (v34);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v26;
        v5 = v32;
        goto LABEL_18;
      }

      v17 = *(v27 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v34 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

uint64_t sub_238C17380(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = sub_238C193E8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1D8, &qword_238C1A540);
  v39 = v4;
  result = sub_238C197F8();
  v11 = result;
  if (*(v9 + 16))
  {
    v43 = v8;
    v35 = v2;
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = (v6 + 16);
    v37 = v9;
    v38 = v6;
    v40 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v23 = v20 | (v12 << 6);
      v24 = *(v9 + 48);
      v42 = *(v38 + 72);
      v25 = v24 + v42 * v23;
      if (v39)
      {
        (*v40)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      else
      {
        (*v36)(v43, v25, v5);
        v41 = *(*(v9 + 56) + 8 * v23);
      }

      sub_238C18170(&qword_27DF6B1F0, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
      result = sub_238C19588();
      v26 = -1 << *(v11 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v18 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v18 + 8 * v28);
          if (v32 != -1)
          {
            v19 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v27) & ~*(v18 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = (*v40)(*(v11 + 48) + v42 * v19, v43, v5);
      *(*(v11 + 56) + 8 * v19) = v41;
      ++*(v11 + 16);
      v9 = v37;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v22 = v13[v12];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v39 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_34;
    }

    v33 = 1 << *(v9 + 32);
    v3 = v35;
    if (v33 >= 64)
    {
      bzero(v13, ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v33;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v3 = v11;
  return result;
}

unint64_t sub_238C1775C(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_238C193E8();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_238C18170(&unk_2814F3EF0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
      v15 = sub_238C195A8();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

void *sub_238C1791C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_238C1793C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_238C1793C(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1F8, &qword_238C1A558);
  v10 = *(sub_238C193E8() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_238C193E8() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_238C17B14(uint64_t (*a1)(uint64_t), uint64_t a2)
{
  v5 = sub_238C193E8();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5);
  v9 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v7);
  v12 = &v39 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v39 - v13;
  v15 = *v2;
  v16 = v53;
  result = sub_238C17EB8(a1, a2, *v2);
  if (!v16)
  {
    v49 = v14;
    v53 = 0;
    if (v18)
    {
      return *(v15 + 16);
    }

    v19 = v5;
    v41 = v9;
    v42 = v12;
    v46 = a1;
    v40 = v2;
    v51 = result;
    v20 = result + 1;
    if (!__OFADD__(result, 1))
    {
      v21 = v15;
      v23 = (v15 + 16);
      v22 = *(v15 + 16);
      v24 = v49;
      if (v20 == v22)
      {
        return v51;
      }

      v25 = v19;
      v48 = v6 + 16;
      v44 = v6;
      v45 = (v6 + 8);
      v39 = (v6 + 40);
      v43 = a2;
      while (v20 < v22)
      {
        v26 = *(v6 + 80);
        v52 = v21;
        v47 = (v26 + 32) & ~v26;
        v27 = v21 + v47;
        v28 = *(v6 + 72);
        v29 = *(v6 + 16);
        v50 = v28 * v20;
        v29(v24, &v27[v28 * v20], v25);
        v30 = v53;
        v31 = v46(v24);
        v53 = v30;
        if (v30)
        {
          return (*v45)(v24, v25);
        }

        v32 = v31;
        result = (*v45)(v24, v25);
        if (v32)
        {
          v6 = v44;
          v24 = v49;
          v21 = v52;
        }

        else
        {
          v33 = v51;
          if (v20 == v51)
          {
            v6 = v44;
            v24 = v49;
            v21 = v52;
          }

          else
          {
            if ((v51 & 0x8000000000000000) != 0)
            {
              goto LABEL_26;
            }

            v34 = *v23;
            if (v51 >= v34)
            {
              goto LABEL_27;
            }

            v35 = v28 * v51;
            result = (v29)(v42, &v27[v35], v25);
            if (v20 >= v34)
            {
              goto LABEL_28;
            }

            v36 = v41;
            v29(v41, &v27[v50], v25);
            v21 = v52;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v21 = sub_238C17FA4(v21);
            }

            v37 = v21 + v47;
            v38 = *v39;
            result = (*v39)(v21 + v47 + v35, v36, v25);
            v6 = v44;
            if (v20 >= v21[2])
            {
              goto LABEL_29;
            }

            result = v38(&v37[v50], v42, v25);
            *v40 = v21;
            v33 = v51;
            v24 = v49;
          }

          v51 = v33 + 1;
        }

        ++v20;
        v23 = v21 + 2;
        v22 = v21[2];
        if (v20 == v22)
        {
          return v51;
        }
      }

      __break(1u);
LABEL_26:
      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_238C17EB8(uint64_t (*a1)(uint64_t), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v7 = 0;
  v8 = *(sub_238C193E8() - 8);
  v9 = a3 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
  v10 = *(v8 + 72);
  while (1)
  {
    v11 = a1(v9);
    if (v3 || (v11 & 1) != 0)
    {
      break;
    }

    ++v7;
    v9 += v10;
    if (v4 == v7)
    {
      return 0;
    }
  }

  return v7;
}

uint64_t sub_238C17FB8(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (a2 >> 62)
  {
    v5 = sub_238C197D8();
  }

  else
  {
    v5 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v5 < v4)
  {
    v4 = v5;
  }

  if (v4)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1D8, &qword_238C1A540);
    v6 = sub_238C19808();
  }

  else
  {
    v6 = MEMORY[0x277D84F98];
  }

  v8 = v6;

  sub_238C16B24(a1, a2, 1, &v8);
  return v8;
}

uint64_t sub_238C180A4(uint64_t a1)
{
  locked = type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate(0);
  (*(*(locked - 8) + 8))(a1, locked);
  return a1;
}

uint64_t sub_238C18100(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1A0, &qword_238C1A518);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_238C18170(unint64_t *a1, void (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_238C181BC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C15F14(a1, v4, v5, v6);
}

uint64_t sub_238C18270(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C15FB8(a1, v4, v5, v6);
}

uint64_t sub_238C18324(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C14EF4(a1, v4, v5, v6);
}

void *sub_238C183D8(uint64_t a1, uint64_t a2)
{
  v61 = a1;
  v3 = sub_238C193E8();
  v66 = *(v3 - 8);
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v52 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v52 - v7;
  locked = type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate(0);
  MEMORY[0x28223BE20](locked);
  v11 = &v52 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1A0, &qword_238C1A518);
  v13 = MEMORY[0x28223BE20](v12);
  v54 = &v52 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v53 = &v52 - v15;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1A8, &qword_238C1A520);
  MEMORY[0x28223BE20](v60);
  v67 = &v52 - v16;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B1B0, &qword_238C1A528);
  v59 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v58 = &v52 - v17;
  v18 = [objc_opt_self() finalizedSessionPathsWithType_];
  sub_238C16ADC(0, &qword_2814F3A38, 0x277D243F0);
  v19 = sub_238C195E8();

  v20 = v19;
  v63 = locked;
  v64 = a2;
  v55 = v8;
  v57 = v11;
  v62 = v12;
  if (v19 >> 62)
  {
    v21 = sub_238C197D8();
  }

  else
  {
    v21 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v22 = MEMORY[0x277D84F90];
  v65 = v3;
  if (v21)
  {
    v68[0] = MEMORY[0x277D84F90];
    result = sub_238C1791C(0, v21 & ~(v21 >> 63), 0);
    if (v21 < 0)
    {
      __break(1u);
      return result;
    }

    v24 = 0;
    v22 = v68[0];
    v25 = v19;
    v26 = v19 & 0xC000000000000001;
    v27 = v19;
    do
    {
      if (v26)
      {
        v28 = MEMORY[0x23EE752A0](v24, v25);
      }

      else
      {
        v28 = *(v25 + 8 * v24 + 32);
      }

      v29 = v28;
      v30 = [v28 url];
      sub_238C193D8();

      v68[0] = v22;
      v32 = *(v22 + 16);
      v31 = *(v22 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_238C1791C((v31 > 1), v32 + 1, 1);
        v22 = v68[0];
      }

      ++v24;
      *(v22 + 16) = v32 + 1;
      (*(v66 + 32))(v22 + ((*(v66 + 80) + 32) & ~*(v66 + 80)) + *(v66 + 72) * v32, v6, v65);
      v25 = v27;
    }

    while (v21 != v24);
    v20 = v27;
  }

  v34 = sub_238C17FB8(v33, v20);

  v68[0] = v22;
  v35 = v61;
  v68[4] = *(v61 + 120);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DF6B1C0, &qword_238C1A530);
  sub_238C11508(&unk_2814F3A68, &unk_27DF6B1C0, &qword_238C1A530, MEMORY[0x277D83958]);
  sub_238C18170(&unk_2814F3EF0, MEMORY[0x277CC9260], MEMORY[0x277CC9278]);
  v36 = v58;
  sub_238C19598();
  *(v35 + 120) = v22;

  *(v35 + 128) = v34;
  v37 = v35;

  v38 = v56;
  if (*(v35 + 112) == 1)
  {

    v39 = v67;
    (*(v59 + 16))(v67, v36, v38);
    v40 = *(v60 + 36);
    sub_238C11508(&qword_2814F39F8, &unk_27DF6B1B0, &qword_238C1A528, MEMORY[0x277D84490]);
    sub_238C19668();
    v41 = v39;
    sub_238C19678();
    v42 = v65;
    v44 = v54;
    v43 = v55;
    v45 = v57;
    v46 = v53;
    if (*&v39[v40] != v68[0])
    {
      v60 = v66 + 16;
      v61 = v66 + 32;
      v47 = (v66 + 8);
      do
      {
        v48 = sub_238C19698();
        sub_238C115A4(v49, v46, &qword_27DF6B1A0, &qword_238C1A518);
        v48(v68, 0);
        sub_238C19688();
        sub_238C18100(v46, v44);
        swift_getEnumCaseMultiPayload();
        v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DF6B1D0, &qword_238C1A538);
        (*v61)(v43, v44 + *(v50 + 48), v42);
        (*v60)(v45, v43, v42);
        swift_storeEnumTagMultiPayload();
        sub_238C14FF4(v45);
        sub_238C180A4(v45);
        (*v47)(v43, v42);
        sub_238C19678();
        v41 = v67;
      }

      while (*&v67[v40] != v68[0]);
    }

    sub_238C1196C(v41, &qword_27DF6B1A8, &qword_238C1A520);
    return (*(v59 + 8))(v58, v38);
  }

  else
  {
    v51 = v57;
    *v57 = v22;
    swift_storeEnumTagMultiPayload();
    sub_238C14FF4(v51);
    sub_238C180A4(v51);
    result = (*(v59 + 8))(v36, v38);
    *(v37 + 112) = 1;
  }

  return result;
}

uint64_t sub_238C18BA4(uint64_t a1, uint64_t a2)
{
  locked = type metadata accessor for LockedCameraCaptureManager.SessionContentUpdate(0);
  (*(*(locked - 8) + 16))(a2, a1, locked);
  return a2;
}

uint64_t sub_238C18C40(void *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
}

unint64_t sub_238C18CB8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  result = sub_238C193E8();
  v10 = *(*(result - 8) + 72);
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v9 = *(*(result - 8) + 80);
  v12 = v7 + ((v9 + 32) & ~v9);
  v13 = v12 + v10 * a1;
  result = swift_arrayDestroy();
  v14 = a3 - v11;
  if (__OFSUB__(a3, v11))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v15 = v10 * a3;
  if (v14)
  {
    v16 = *(v7 + 16);
    if (!__OFSUB__(v16, a2))
    {
      result = v13 + v15;
      v17 = v12 + v10 * a2;
      if (v13 + v15 < v17 || result >= v17 + (v16 - a2) * v10)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v17)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v19 = *(v7 + 16);
      v20 = __OFADD__(v19, v14);
      v21 = v19 + v14;
      if (!v20)
      {
        *(v7 + 16) = v21;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v15 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

unint64_t sub_238C18E00(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v4 = *v2;
  v5 = *(*v2 + 16);
  if (v5 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v6 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v7 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = v5 + v7;
  if (__OFADD__(v5, v7))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!isUniquelyReferenced_nonNull_native || v8 > v4[3] >> 1)
  {
    if (v5 <= v8)
    {
      v10 = v8;
    }

    else
    {
      v10 = v5;
    }

    v4 = sub_238C1675C(isUniquelyReferenced_nonNull_native, v10, 1, v4);
    *v2 = v4;
  }

  result = sub_238C18CB8(v6, a2, 0);
  *v2 = v4;
  return result;
}

uint64_t sub_238C18EC0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C1558C(a1, v4, v5, v6);
}

uint64_t sub_238C18F74(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C156A0(a1, v4, v5, v6);
}

uint64_t sub_238C190D0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C15ED0(a1, v4, v5, v6);
}

uint64_t sub_238C19184(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C15D10(a1, v4, v5, v6);
}

uint64_t objectdestroy_46Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_238C19278(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_238C119CC;

  return sub_238C15B78(a1, v4, v5, v6);
}