id sub_22CFDA510(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014C0C();
  sub_22D016A3C();
  (*(v5 + 8))(v8, v4);
  sub_22D014BFC();
  v9 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CFDA63C(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  if (qword_28143DA78 != -1)
  {
    swift_once();
  }

  v7 = sub_22D01637C();
  __swift_project_value_buffer(v7, qword_2814442C0);
  v8 = sub_22D01636C();
  v9 = sub_22D0168EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22CEE1000, v8, v9, a4, v10, 2u);
    MEMORY[0x2318C6860](v10, -1, -1);
  }

  v11 = *(*(a2 + OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_lock) + 16);
  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v12 = sub_22CF612E8(a3);
  swift_endAccess();

  os_unfair_lock_unlock(v11);
}

void sub_22CFDA87C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    sub_22CFDA944();
  }
}

void sub_22CFDA8D8(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    sub_22CFDAC24(v2, v3);
  }
}

void sub_22CFDA944()
{
  v1 = v0;
  v2 = sub_22D01502C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22D015C2C();
  if (v7)
  {
    sub_22D015C4C();
    v8 = sub_22D014F9C();
    v10 = v9;
    (*(v3 + 8))(v6, v2);
    v11 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v12 = sub_22CEE8CD0(v8, v10, 0);
    if (v12 && (v13 = v12, v14 = [v12 supportsLiveActivitiesFrequentUpdates], v13, (v14 & 1) != 0))
    {
      MEMORY[0x28223BE20](v15, v16);
      v20[-4] = v17;
      v20[-3] = v8;
      v20[-2] = v10;
      LOBYTE(v20[-1]) = 1;
      sub_22D01699C();

      if ((v23[0] & 1) == 0)
      {
        if ([*(v1 + OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_connection) remoteTarget])
        {
          sub_22D016ACC();
          swift_unknownObjectRelease();
        }

        else
        {
          v21 = 0u;
          v22 = 0u;
        }

        v23[0] = v21;
        v23[1] = v22;
        if (!*(&v22 + 1))
        {

          sub_22CEEC3D8(v23, &qword_27D9F2B10, &unk_22D01B930);
          return;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3948, &unk_22D01BEE8);
        if (swift_dynamicCast())
        {
          v18 = v20[1];
          v19 = sub_22D01666C();

          [v18 activityDidExceedReducedPushBudgetForIdentifier_];
          swift_unknownObjectRelease();

          return;
        }
      }
    }

    else
    {
    }
  }
}

void sub_22CFDAC24(uint64_t a1, uint64_t a2)
{
  if ([*(v2 + OBJC_IVAR____TtC11SessionCoreP33_4F2D4625D323D26671D2A7737A69A19536PushFrequentUpdatesObservationClient_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3948, &unk_22D01BEE8);
    if (swift_dynamicCast())
    {
      v3 = sub_22D01666C();
      [v4 activityDidUnsubscribeForIdentifier_];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    sub_22CEEC3D8(v7, &qword_27D9F2B10, &unk_22D01B930);
  }
}

id sub_22CFDAD80(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_22CFDAE24(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  sub_22D016EAC();
  sub_22D0166DC();
  result = sub_22D016ECC();
  v7 = v5 + 56;
  v8 = -1 << *(v5 + 32);
  v9 = result & ~v8;
  v10 = v9 >> 6;
  v11 = *(v5 + 56 + 8 * (v9 >> 6));
  v12 = 1 << v9;
  if (((1 << v9) & v11) != 0)
  {
    v13 = ~v8;
    while (1)
    {
      v14 = (*(v5 + 48) + 16 * v9);
      if (*v14 == a1 && v14[1] == a2)
      {
        break;
      }

      result = sub_22D016DFC();
      if (result)
      {
        break;
      }

      v9 = (v9 + 1) & v13;
      v10 = v9 >> 6;
      v11 = *(v7 + 8 * (v9 >> 6));
      v12 = 1 << v9;
      if (((1 << v9) & v11) == 0)
      {
        goto LABEL_9;
      }
    }

    *v14 = a1;
    v14[1] = a2;
  }

  else
  {
LABEL_9:
    if (*(v5 + 16) >= *(v5 + 24))
    {
      __break(1u);
    }

    else
    {
      *(v7 + 8 * v10) = v12 | v11;
      v16 = (*(v5 + 48) + 16 * v9);
      *v16 = a1;
      v16[1] = a2;
      v17 = *(v5 + 16);
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (!v18)
      {
        *(v5 + 16) = v19;
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_22CFDB00C(uint64_t a1, uint64_t a2)
{
  v13[1] = a2;
  v14 = a1;
  v13[0] = sub_22D01697C();
  v3 = *(v13[0] - 8);
  MEMORY[0x28223BE20](v13[0], v4);
  v6 = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22D01691C();
  MEMORY[0x28223BE20](v7, v8);
  v9 = sub_22D01653C();
  MEMORY[0x28223BE20](v9 - 8, v10);
  sub_22CEEC38C();
  sub_22D0164FC();
  v15 = MEMORY[0x277D84F90];
  sub_22CF65F4C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CF68848();
  sub_22D016ADC();
  (*(v3 + 104))(v6, *MEMORY[0x277D85268], v13[0]);
  v11 = sub_22D0169BC();
  *(v2 + 16) = v14;
  *(v2 + 24) = v11;
  return v2;
}

uint64_t sub_22CFDB220()
{

  return swift_deallocClassInstance();
}

void sub_22CFDB284(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {

    v4 = sub_22CF56C04();
    if (!v2)
    {
      v15 = v4;

      goto LABEL_10;
    }

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v5 = sub_22D01637C();
    __swift_project_value_buffer(v5, qword_2814443C0);
    v6 = v2;
    v7 = sub_22D01636C();
    v8 = sub_22D0168EC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136446210;
      v11 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
      v12 = sub_22D01669C();
      v14 = sub_22CEEE31C(v12, v13, &v16);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_22CEE1000, v7, v8, "Could not fetch metadata from sync engine persistent store: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318C6860](v10, -1, -1);
      MEMORY[0x2318C6860](v9, -1, -1);
    }
  }

  v15 = MEMORY[0x277D84F90];
LABEL_10:
  *a2 = v15;
}

void sub_22CFDB47C(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (!*(a1 + 16))
  {
LABEL_9:
    v15 = MEMORY[0x277D84FA0];
    goto LABEL_10;
  }

  v4 = sub_22CF576CC();
  if (v2)
  {

    if (qword_28143FB00 != -1)
    {
      swift_once();
    }

    v5 = sub_22D01637C();
    __swift_project_value_buffer(v5, qword_2814443C0);
    v6 = v2;
    v7 = sub_22D01636C();
    v8 = sub_22D0168EC();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136446210;
      v11 = v2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
      v12 = sub_22D01669C();
      v14 = sub_22CEEE31C(v12, v13, &v16);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_22CEE1000, v7, v8, "Could not fetch paired device identifiers from sync engine persistent store: %{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x2318C6860](v10, -1, -1);
      MEMORY[0x2318C6860](v9, -1, -1);
    }

    else
    {
    }

    goto LABEL_9;
  }

  v15 = v4;

LABEL_10:
  *a2 = v15;
}

void sub_22CFDB68C(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  if (*(a1 + 16))
  {

    v4 = sub_22CF57C9C();
    if (v2)
    {

      if (qword_28143FB00 != -1)
      {
        swift_once();
      }

      v5 = sub_22D01637C();
      __swift_project_value_buffer(v5, qword_2814443C0);
      v6 = v2;
      v7 = sub_22D01636C();
      v8 = sub_22D0168EC();

      if (os_log_type_enabled(v7, v8))
      {
        v9 = swift_slowAlloc();
        v10 = swift_slowAlloc();
        v16 = v10;
        *v9 = 136446210;
        v11 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2030, &qword_22D018FD0);
        v12 = sub_22D01669C();
        v14 = sub_22CEEE31C(v12, v13, &v16);

        *(v9 + 4) = v14;
        _os_log_impl(&dword_22CEE1000, v7, v8, "Could not fetch sync dates from sync engine persistent store: %{public}s", v9, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v10);
        MEMORY[0x2318C6860](v10, -1, -1);
        MEMORY[0x2318C6860](v9, -1, -1);
      }

      v15 = sub_22CFF7CD8(MEMORY[0x277D84F90]);
    }

    else
    {
      v15 = v4;
    }
  }

  else
  {
    v15 = MEMORY[0x277D84F98];
  }

  *a2 = v15;
}

uint64_t sub_22CFDB898(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v9 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v4);
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    MEMORY[0x28223BE20](v6, v7);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v9;
  }

  return a1();
}

uint64_t sub_22CFDBB80(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v9 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v4);
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    MEMORY[0x28223BE20](v6, v7);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v9;
  }

  return a1();
}

uint64_t sub_22CFDBE68(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v9 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v4);
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    MEMORY[0x28223BE20](v6, v7);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v9;
  }

  return a1();
}

uint64_t sub_22CFDC150(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v9 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v4);
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    MEMORY[0x28223BE20](v6, v7);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v9;
  }

  return a1();
}

uint64_t sub_22CFDC438(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v9 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v4);
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    MEMORY[0x28223BE20](v6, v7);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v9;
  }

  return a1();
}

uint64_t sub_22CFDC720(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v9 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v4);
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    MEMORY[0x28223BE20](v6, v7);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v9;
  }

  return a1();
}

uint64_t sub_22CFDCA08(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    v9 = a1;
    MEMORY[0x28223BE20](a1, a2);
    v4 = *(v3 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v4);
    v5 = *(*(v3 + 96) + 16);

    os_unfair_lock_lock(v5);
    MEMORY[0x28223BE20](v6, v7);
    sub_22D0143FC();
    os_unfair_lock_unlock(v5);

    sub_22CF3DC24();

    a1 = v9;
  }

  return a1();
}

uint64_t sub_22CFDCCF4(uint64_t (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v5 = *(v4 + 16);
    type metadata accessor for ActivityDatabase.MutableStore();
    swift_allocObject();
    sub_22CF3D558(v5);
    v6 = *(*(v4 + 96) + 16);

    os_unfair_lock_lock(v6);
    MEMORY[0x28223BE20](v7, v8);
    sub_22D0143FC();
    os_unfair_lock_unlock(v6);

    sub_22CF3DC24();
  }

  return a1();
}

uint64_t sub_22CFDD040(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  sub_22D01699C();
  return v6;
}

double sub_22CFDD0A0()
{
  sub_22D01566C();

  sub_22D01565C();
  sub_22D01564C();

  return result;
}

double sub_22CFDD1F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = *v6;
  sub_22D01566C();
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;

  sub_22D01565C();
  sub_22D01564C();

  return result;
}

double sub_22CFDD2EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t a5, uint64_t a6)
{
  v8 = (a4)(0, a2, a3);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v17 - v11;
  v13 = *v6;
  sub_22D01566C();
  (*(v9 + 16))(v12, a1, v8);
  v14 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v13;
  (*(v9 + 32))(v15 + v14, v12, v8);

  sub_22D01565C();
  sub_22D01564C();

  return result;
}

double sub_22CFDD464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = a3;
  v30 = a4;
  v25 = a2;
  v26 = a1;
  v5 = sub_22D01430C();
  v24 = v5;
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  MEMORY[0x28223BE20](v5, v8);
  v9 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D0157AC();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10, v13);
  v14 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v4;
  v16 = sub_22D01566C();
  v27 = *(v15 + 24);
  v28 = v16;
  (*(v11 + 16))(v14, v25, v10);
  (*(v6 + 16))(v9, v26, v5);
  v17 = (*(v11 + 80) + 40) & ~*(v11 + 80);
  v18 = (v12 + *(v6 + 80) + v17) & ~*(v6 + 80);
  v19 = swift_allocObject();
  v20 = v29;
  v21 = v30;
  *(v19 + 2) = v15;
  *(v19 + 3) = v20;
  *(v19 + 4) = v21;
  (*(v11 + 32))(&v19[v17], v14, v10);
  (*(v6 + 32))(&v19[v18], v9, v24);

  sub_22D01565C();
  sub_22D01564C();

  return result;
}

uint64_t sub_22CFDD6C4(uint64_t (*a1)(void), uint64_t a2)
{
  sub_22D0157AC();
  sub_22D01430C();
  v5 = *(v2 + 16);

  return sub_22CFDCA08(a1, a2, v5);
}

uint64_t objectdestroy_3Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = *(v3 + 64);

  (*(v3 + 8))(v1 + v5, v2);

  return MEMORY[0x2821FE8E8](v1, v5 + v6, v4 | 7);
}

uint64_t sub_22CFDDA30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v7 = *(a3(0) - 8);
  v8 = *(v4 + 16);
  v9 = v4 + ((*(v7 + 80) + 24) & ~*(v7 + 80));

  return a4(a1, a2, v8, v9);
}

uint64_t sub_22CFDDBA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  swift_beginAccess();
  v7 = *(v3 + 16);
  if (*(v7 + 16))
  {

    v8 = sub_22CEEC698(a1, a2);
    if (v9)
    {
      v10 = v8;
      v11 = *(v7 + 56);
      v12 = type metadata accessor for Activity(0);
      v13 = *(v12 - 8);
      sub_22CF0F9C8(v11 + *(v13 + 72) * v10, a3);

      return (*(v13 + 56))(a3, 0, 1, v12);
    }
  }

  v15 = type metadata accessor for Activity(0);
  return (*(*(v15 - 8) + 56))(a3, 1, 1, v15);
}

uint64_t sub_22CFDDD3C(uint64_t *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v10 - v4;
  v6 = *a1;
  v7 = a1[1];
  sub_22CF0F9C8(a1, &v10 - v4);
  v8 = type metadata accessor for Activity(0);
  (*(*(v8 - 8) + 56))(v5, 0, 1, v8);
  swift_beginAccess();

  sub_22CF0BC5C(v5, v6, v7);
  return swift_endAccess();
}

uint64_t sub_22CFDDE4C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v10 - v6;
  v8 = type metadata accessor for Activity(0);
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  swift_beginAccess();

  sub_22CF0BC5C(v7, a1, a2);
  return swift_endAccess();
}

uint64_t getEnumTagSinglePayload for ActivityManagerEvent.EventType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ActivityManagerEvent.EventType(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t sub_22CFDE1D4(uint64_t a1)
{
  result = type metadata accessor for Activity(319);
  if (v2 <= 0x3F)
  {
    result = sub_22D01486C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_22CFDE270(uint64_t a1)
{
  type metadata accessor for ActivityParticipantEvent.EventType(319);
  if (v1 <= 0x3F)
  {
    sub_22D01483C();
    if (v2 <= 0x3F)
    {
      sub_22CFDE498(319, qword_28143EAD8, &protocol descriptor for ActivityManagerInput);
      if (v3 <= 0x3F)
      {
        sub_22CFDE354(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_22CFDE354(uint64_t a1)
{
  if (!qword_28143F6E0)
  {
    sub_22D0146BC();
    v1 = sub_22D016A8C();
    if (!v2)
    {
      atomic_store(v1, &qword_28143F6E0);
    }
  }
}

uint64_t sub_22CFDE3E4(uint64_t a1)
{
  result = type metadata accessor for Activity(319);
  if (v2 <= 0x3F)
  {
    result = sub_22CFDE498(319, qword_28143E000, &protocol descriptor for ActivityManagerParticipant);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_22CFDE498(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_22CFDE4F0(uint64_t a1)
{
  sub_22CFDE58C();
  if (v1 <= 0x3F)
  {
    sub_22D01430C();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_22CFDE58C()
{
  if (!qword_28143F718)
  {
    v0 = sub_22D016A8C();
    if (!v1)
    {
      atomic_store(v0, &qword_28143F718);
    }
  }
}

unint64_t sub_22CFDE5F0()
{
  result = qword_27D9F3A10;
  if (!qword_27D9F3A10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3A10);
  }

  return result;
}

unint64_t sub_22CFDE648()
{
  result = qword_27D9F3A18;
  if (!qword_27D9F3A18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3A18);
  }

  return result;
}

unint64_t sub_22CFDE6A0()
{
  result = qword_27D9F3A20;
  if (!qword_27D9F3A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D9F3A20);
  }

  return result;
}

uint64_t sub_22CFDE738()
{
  sub_22CF460CC(v0 + 16);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return swift_deallocClassInstance();
}

uint64_t sub_22CFDE7E0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_22CFDE840(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_22CFDE8D4;
}

void sub_22CFDE8D4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_22CFDE958(uint64_t a1, uint64_t a2)
{
  v2 = sub_22D01637C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (swift_unknownObjectWeakLoadStrong())
  {
    swift_getObjectType();
    sub_22D01526C();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_22D01635C();
    v8 = sub_22D01636C();
    v9 = sub_22D0168EC();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_22CEE1000, v8, v9, "Alert presenter has no delegate", v10, 2u);
      MEMORY[0x2318C6860](v10, -1, -1);
    }

    return (*(v3 + 8))(v6, v2);
  }
}

id sub_22CFDEAE8(void *a1)
{
  [a1 selector];
  if (sub_22D0143EC())
  {

    return [a1 copyAsOnewayVoid];
  }

  else
  {

    return a1;
  }
}

void sub_22CFDEB60(uint64_t a1, void *a2)
{
  v25 = a2;
  v26 = a1;
  v24 = sub_22D01697C();
  v3 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v4);
  v23 = v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_22D01691C();
  MEMORY[0x28223BE20](v6, v7);
  v8 = sub_22D01653C();
  MEMORY[0x28223BE20](v8 - 8, v9);
  *&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_listener] = 0;
  *&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_serverStartupToken] = -1;
  v10 = OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_lock;
  type metadata accessor for UnfairLock();
  v11 = swift_allocObject();
  v12 = swift_slowAlloc();
  *(v11 + 16) = v12;
  *v12 = 0;
  *&v2[v10] = v11;
  *&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_clients] = MEMORY[0x277D84FA0];
  v22[1] = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CEEC4C8(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v3 + 104))(v23, *MEMORY[0x277D85268], v24);
  v13 = v25;
  *&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_requestProcessingQueue] = sub_22D0169BC();
  *&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_replicatorParticipant] = v26;
  v14 = type metadata accessor for ActivityRemoteSubscriptionPreferencesObservationServer();
  v30.receiver = v2;
  v30.super_class = v14;

  v15 = objc_msgSendSuper2(&v30, sel_init);
  v28 = v15;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_22CFE0344;
  *(v16 + 24) = &v27;
  aBlock[4] = sub_22CEE5B24;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_48;
  v17 = _Block_copy(aBlock);
  v18 = objc_opt_self();
  v19 = v15;

  v20 = [v18 listenerWithConfigurator_];

  _Block_release(v17);

  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v21 = *&v19[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_listener];
    *&v19[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_listener] = v20;
  }
}

id sub_22CFDEFC4(void *a1, uint64_t a2)
{
  v4 = sub_22D01561C();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getObjectType();
  sub_22D014C2C();
  sub_22D016A3C();
  (*(v5 + 8))(v8, v4);
  sub_22D014C1C();
  v9 = sub_22D01666C();

  [a1 setService_];

  return [a1 setDelegate_];
}

void sub_22CFDF0F0(void *a1, void *a2, char *a3)
{
  sub_22D014C1C();
  v6 = sub_22D01666C();

  v7 = [objc_opt_self() interfaceWithIdentifier_];

  v26 = sub_22CFDEAE8;
  v27 = 0;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22CEE5F40;
  v25 = &block_descriptor_30_1;
  v8 = _Block_copy(&v22);
  v9 = &unk_284040728;

  v10 = objc_opt_self();
  v11 = [v10 protocolForProtocol:v9 interpreter:v8];
  _Block_release(v8);

  [v7 setClient_];
  v12 = [v10 protocolForProtocol_];
  [v7 setServer_];

  v13 = [objc_opt_self() utility];
  [a1 setServiceQuality_];

  [a1 setInterface_];
  [a1 setInterfaceTarget_];
  [a1 setTargetQueue_];
  v14 = swift_allocObject();
  *(v14 + 16) = a3;
  *(v14 + 24) = a2;
  v26 = sub_22CFE02FC;
  v27 = v14;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_36_1;
  v15 = _Block_copy(&v22);
  v16 = a3;
  v17 = a2;

  [a1 setInterruptionHandler_];
  _Block_release(v15);
  v18 = swift_allocObject();
  *(v18 + 16) = v16;
  *(v18 + 24) = v17;
  v26 = sub_22CFE0320;
  v27 = v18;
  v22 = MEMORY[0x277D85DD0];
  v23 = 1107296256;
  v24 = sub_22D008590;
  v25 = &block_descriptor_42;
  v19 = _Block_copy(&v22);
  v20 = v16;
  v21 = v17;

  [a1 setInvalidationHandler_];
  _Block_release(v19);
}

void sub_22CFDF460(uint64_t a1, uint64_t a2, void *a3, const char *a4)
{
  if (qword_28143DAC0 != -1)
  {
    swift_once();
  }

  v7 = sub_22D01637C();
  __swift_project_value_buffer(v7, qword_281444350);
  v8 = sub_22D01636C();
  v9 = sub_22D0168EC();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&dword_22CEE1000, v8, v9, a4, v10, 2u);
    MEMORY[0x2318C6860](v10, -1, -1);
  }

  v11 = *(*(a2 + OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_lock) + 16);
  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v12 = sub_22CF61324(a3);
  swift_endAccess();

  os_unfair_lock_unlock(v11);
}

void sub_22CFDF724(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3B38, qword_22D01C440);
  MEMORY[0x28223BE20](v3 - 8, v4);
  v6 = v21 - v5;
  v7 = sub_22D0150DC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7, v9);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([*(v1 + OBJC_IVAR____TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client_connection) remoteTarget])
  {
    sub_22D016ACC();
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
  }

  v24[0] = v22;
  v24[1] = v23;
  if (*(&v23 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B48, qword_22D01C458);
    if (swift_dynamicCast())
    {
      v12 = v21[1];
      sub_22CFE0014(a1, v6);
      if ((*(v8 + 48))(v6, 1, v7) == 1)
      {
        swift_unknownObjectRelease();
        sub_22CEEC3D8(v6, &unk_27D9F3B38, qword_22D01C440);
      }

      else
      {
        (*(v8 + 32))(v11, v6, v7);
        sub_22D0140BC();
        swift_allocObject();
        sub_22D0140AC();
        sub_22CEEC4C8(&qword_27D9F3B50, MEMORY[0x277CB9868], MEMORY[0x277CB9870]);
        v17 = sub_22D01409C();
        v19 = v18;
        v20 = sub_22D0141DC();
        [v12 subscriptionPreferencesDidChange_];
        sub_22CEE7524(v17, v19);
        swift_unknownObjectRelease();

        (*(v8 + 8))(v11, v7);
      }

      return;
    }
  }

  else
  {
    sub_22CEEC3D8(v24, &qword_27D9F2B10, &unk_22D01B930);
  }

  if (qword_28143DAC0 != -1)
  {
    swift_once();
  }

  v13 = sub_22D01637C();
  __swift_project_value_buffer(v13, qword_281444350);
  v14 = sub_22D01636C();
  v15 = sub_22D0168EC();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_22CEE1000, v14, v15, "No remote target for subscription preferences client connection", v16, 2u);
    MEMORY[0x2318C6860](v16, -1, -1);
  }
}

id sub_22CFDFB34(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

double sub_22CFDFBFC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = &v15 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B08, &qword_22D01C430);
  v6 = *(v5 - 8);
  v15 = v5;
  v16 = v6;
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v15 - v8;
  v17 = sub_22CF8B6A0();
  v10 = *(v0 + OBJC_IVAR____TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client_requestProcessingQueue);
  v18 = v10;
  v11 = sub_22D01693C();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  v12 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3B10, &qword_22D01C438);
  sub_22CEEC38C();
  sub_22CEE8394(&unk_27D9F3B20, &unk_27D9F3B10, &qword_22D01C438, MEMORY[0x277CBCD90]);
  sub_22CEEC4C8(&qword_28143FA10, sub_22CEEC38C, MEMORY[0x277D85228]);
  sub_22D01647C();
  sub_22CEEC3D8(v4, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_22CEE8394(&qword_27D9F3B30, &qword_27D9F3B08, &qword_22D01C430, MEMORY[0x277CBCD60]);
  v13 = v15;
  sub_22D0164AC();

  (*(v16 + 8))(v9, v13);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  return result;
}

void sub_22CFDFF34(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_22CFDF724(a1);
  }
}

uint64_t sub_22CFE0014(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3B38, qword_22D01C440);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_22CFE0084(void *a1)
{
  v2 = v1;
  v4 = *&v1[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_replicatorParticipant];
  v5 = *&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_requestProcessingQueue];
  v6 = _s11SessionCore6ClientCMa_3();
  v7 = objc_allocWithZone(v6);
  *&v7[OBJC_IVAR____TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client_cancellables] = MEMORY[0x277D84FA0];
  *&v7[OBJC_IVAR____TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client_connection] = a1;
  *&v7[OBJC_IVAR____TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client_replicatorParticipant] = v4;
  *&v7[OBJC_IVAR____TtC11SessionCoreP33_B02F3357A3D0A8E8DFCA3AAB9BED3E036Client_requestProcessingQueue] = v5;
  v20.receiver = v7;
  v20.super_class = v6;
  v8 = a1;

  v9 = v5;
  v10 = objc_msgSendSuper2(&v20, sel_init);
  v11 = *(*&v2[OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_lock] + 16);
  os_unfair_lock_lock(v11);
  swift_beginAccess();
  v12 = v10;
  sub_22CF76DDC(&v19, v12);
  swift_endAccess();

  os_unfair_lock_unlock(v11);
  v13 = swift_allocObject();
  *(v13 + 16) = v12;
  *(v13 + 24) = v2;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22CFE02F4;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22CEE5B1C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_27;
  v15 = _Block_copy(aBlock);
  v16 = v12;
  v17 = v2;

  [v8 configureConnection_];
  _Block_release(v15);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
    [v8 activate];
  }
}

id sub_22CFE0388(void *a1, void *a2)
{
  result = [a1 bundleIdentifier];
  if (result)
  {
    v4 = result;
    v5 = sub_22D01667C();
    v7 = v6;

    v8 = a2[5];
    v9 = a2[6];
    __swift_project_boxed_opaque_existential_1(a2 + 2, v8);
    v10 = (*(v9 + 8))(v5, v7, v8, v9);

    return (v10 & 1);
  }

  return result;
}

uint64_t sub_22CFE0450(uint64_t a1, uint64_t a2)
{
  v5 = *(*v2 + 40);
  v6 = *(*v2 + 48);
  __swift_project_boxed_opaque_existential_1((*v2 + 16), v5);
  return (*(v6 + 8))(a1, a2, v5, v6) & 1;
}

id sub_22CFE04C4(uint64_t a1, uint64_t a2)
{
  objc_allocWithZone(MEMORY[0x277CC1E70]);

  result = sub_22CEE8CD0(a1, a2, 0);
  if (result)
  {
    v5 = result;
    v6 = [result entitlements];
    v7 = sub_22D01666C();
    sub_22CFB21B0();
    v8 = [v6 objectForKey:v7 ofClass:swift_getObjCClassFromMetadata()];

    if (v8)
    {
      sub_22D016ACC();
      swift_unknownObjectRelease();
    }

    else
    {

      v10 = 0u;
      v11 = 0u;
    }

    v12[0] = v10;
    v12[1] = v11;
    if (*(&v11 + 1))
    {
      if (swift_dynamicCast())
      {
        return v9;
      }
    }

    else
    {
      sub_22CFAA9A8(v12);
    }

    return 0;
  }

  return result;
}

double sub_22CFE0658(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(*(Strong + 16) + 16);
    v4 = Strong;
    os_unfair_lock_lock(v3);
    sub_22CFE06EC(v4);
    os_unfair_lock_unlock(v3);
    v5 = *(v4[2] + 16);
    os_unfair_lock_lock(v5);
    sub_22CF11D74(v4);
    os_unfair_lock_unlock(v5);
  }

  return result;
}

void sub_22CFE06EC(uint64_t a1)
{
  v2 = type metadata accessor for Activity(0);
  v50 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = (&v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v4, v7);
  v49 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11, v14);
  v16 = (&v46 - v15);
  v54 = MEMORY[0x277D84FA0];
  swift_beginAccess();
  v17 = *(a1 + 120);
  v20 = *(v17 + 64);
  v19 = v17 + 64;
  v18 = v20;
  v21 = 1 << *(*(a1 + 120) + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & v18;
  v24 = (v21 + 63) >> 6;
  v51 = *(a1 + 120);
  v52 = a1;

  v25 = 0;
  v47 = v13;
  v48 = v6;
  v46 = v16;
  while (v23)
  {
    v26 = v25;
LABEL_15:
    v29 = __clz(__rbit64(v23));
    v23 &= v23 - 1;
    v30 = v29 | (v26 << 6);
    v31 = (*(v51 + 48) + 16 * v30);
    v33 = *v31;
    v32 = v31[1];
    v34 = v49;
    sub_22CF0CCBC(*(v51 + 56) + *(v50 + 72) * v30, v49, type metadata accessor for Activity);
    v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    v36 = *(v35 + 48);
    v13 = v47;
    *v47 = v33;
    *(v13 + 1) = v32;
    sub_22CF0A72C(v34, &v13[v36], type metadata accessor for Activity);
    (*(*(v35 - 8) + 56))(v13, 0, 1, v35);

    v28 = v26;
    v6 = v48;
    v16 = v46;
LABEL_16:
    sub_22CF82724(v13, v16);
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
    if ((*(*(v37 - 8) + 48))(v16, 1, v37) == 1)
    {

      v42 = v52;
      MEMORY[0x28223BE20](v41, v43);
      *(&v46 - 2) = &v54;

      v45 = sub_22CFC3D3C(v44, sub_22CFC3A80);

      *(v42 + 120) = v45;

      return;
    }

    v38 = *v16;
    v39 = v16[1];
    sub_22CF0A72C(v16 + *(v37 + 48), v6, type metadata accessor for Activity);
    if (sub_22CFE0BA8(v6))
    {
      sub_22CEE54CC(&v53, v38, v39);

      sub_22CF0F640(v6, type metadata accessor for Activity);
    }

    else
    {
      sub_22CF0F640(v6, type metadata accessor for Activity);
    }

    v25 = v28;
  }

  if (v24 <= v25 + 1)
  {
    v27 = v25 + 1;
  }

  else
  {
    v27 = v24;
  }

  v28 = v27 - 1;
  while (1)
  {
    v26 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v26 >= v24)
    {
      v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      (*(*(v40 - 8) + 56))(v13, 1, 1, v40);
      v23 = 0;
      goto LABEL_16;
    }

    v23 = *(v19 + 8 * v26);
    ++v25;
    if (v23)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
}

uint64_t sub_22CFE0BA8(uint64_t (*a1)(uint64_t a1))
{
  v128 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3810, &unk_22D018FA0);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v124 = &v107 - v4;
  v5 = sub_22D0164CC();
  v119 = *(v5 - 8);
  v120 = v5;
  MEMORY[0x28223BE20](v5, v6);
  v117 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = sub_22D01653C();
  v116 = *(v118 - 8);
  MEMORY[0x28223BE20](v118, v8);
  v115 = &v107 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = type metadata accessor for ActivityParticipantEvent(0);
  v111 = *(v110 - 8);
  v11 = MEMORY[0x28223BE20](v110, v10);
  v113 = &v107 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v114 = &v107 - v14;
  v15 = type metadata accessor for Activity(0);
  v123 = *(v15 - 8);
  v17 = MEMORY[0x28223BE20](v15, v16);
  v122 = (&v107 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = MEMORY[0x28223BE20](v17, v19);
  v108 = (&v107 - v21);
  MEMORY[0x28223BE20](v20, v22);
  v121 = (&v107 - v23);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2648, &unk_22D018BC0);
  MEMORY[0x28223BE20](v24 - 8, v25);
  v27 = &v107 - v26;
  v28 = sub_22D01461C();
  v29 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v30);
  v32 = &v107 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = sub_22D01430C();
  v34 = *(v33 - 8);
  v36 = MEMORY[0x28223BE20](v33, v35);
  v38 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36, v39);
  v41 = &v107 - v40;
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v125 = v1;
    v109 = *(v1 + 136);
    v126 = v15;
    v42 = *(v15 + 56);
    sub_22D01467C();
    sub_22D01460C();
    (*(v29 + 8))(v32, v28);
    if ((*(v34 + 48))(v27, 1, v33) == 1)
    {
      sub_22CEEC3D8(v27, &qword_27D9F2648, &unk_22D018BC0);
      if (qword_28143DAB0 != -1)
      {
        swift_once();
      }

      v43 = sub_22D01637C();
      __swift_project_value_buffer(v43, qword_281444320);
      v44 = v128;
      v45 = v122;
      sub_22CF0CCBC(v128, v122, type metadata accessor for Activity);
      v46 = sub_22D01636C();
      v47 = sub_22D01690C();
      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock[0] = v49;
        *v48 = 136446210;
        v50 = *v45;
        v51 = v45[1];

        sub_22CF0F640(v45, type metadata accessor for Activity);
        v52 = sub_22CEEE31C(v50, v51, aBlock);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_22CEE1000, v46, v47, "Activity has no stale date: %{public}s", v48, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        MEMORY[0x2318C6860](v49, -1, -1);
        MEMORY[0x2318C6860](v48, -1, -1);
      }

      else
      {

        sub_22CF0F640(v45, type metadata accessor for Activity);
      }

      v66 = *(*(v125 + 16) + 16);
      os_unfair_lock_lock(v66);
      v67 = *v44;
      v68 = v44[1];
      v69 = v124;
      v123[7](v124, 1, 1, v126);
      swift_beginAccess();

      sub_22CF0BC5C(v69, v67, v68);
      swift_endAccess();
      os_unfair_lock_unlock(v66);
      goto LABEL_15;
    }

    (*(v34 + 32))(v41, v27, v33);
    sub_22D0142DC();
    v53 = sub_22D01428C();
    v54 = *(v34 + 8);
    v54(v38, v33);
    if ((v53 & 1) == 0)
    {
      v54(v41, v33);
LABEL_15:
      swift_unknownObjectRelease();
      return 0;
    }

    v124 = v54;
    if (qword_28143DAB0 != -1)
    {
      swift_once();
    }

    v55 = sub_22D01637C();
    v56 = __swift_project_value_buffer(v55, qword_281444320);
    v57 = v121;
    sub_22CF0CCBC(v128, v121, type metadata accessor for Activity);
    v123 = v56;
    v58 = sub_22D01636C();
    v59 = sub_22D01690C();
    v60 = os_log_type_enabled(v58, v59);
    v107 = v42;
    if (v60)
    {
      v61 = swift_slowAlloc();
      v62 = swift_slowAlloc();
      aBlock[0] = v62;
      *v61 = 136446210;
      v63 = *v57;
      v64 = v57[1];

      sub_22CF0F640(v57, type metadata accessor for Activity);
      v65 = sub_22CEEE31C(v63, v64, aBlock);

      *(v61 + 4) = v65;
      _os_log_impl(&dword_22CEE1000, v58, v59, "Marking outdated activity as stale: %{public}s", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v62);
      MEMORY[0x2318C6860](v62, -1, -1);
      MEMORY[0x2318C6860](v61, -1, -1);
    }

    else
    {

      sub_22CF0F640(v57, type metadata accessor for Activity);
    }

    v71 = v126;
    v72 = v128;
    v73 = *(v128 + *(v126 + 36));
    if (*(v73 + 16))
    {
      v74 = sub_22D01483C();
      v75 = *(v74 - 8);
      v126 = v33;
      v76 = v75;
      v77 = (*(v75 + 80) + 32) & ~*(v75 + 80);
      v78 = *v72;
      v121 = *(v72 + 1);
      v122 = v78;
      v79 = (v72 + *(v71 + 52));
      v80 = v79[1];
      v108 = *v79;
      v123 = v41;
      v81 = v110;
      type metadata accessor for ActivityParticipantEvent.EventType(0);
      v82 = v114;
      swift_storeEnumTagMultiPayload();
      (*(v76 + 16))(&v82[v81[7]], v73 + v77, v74);
      v83 = v81[9];
      v84 = sub_22D0146BC();
      v85 = *(v84 - 8);
      (*(v85 + 16))(&v82[v83], v72 + v107, v84);
      (*(v85 + 56))(&v82[v83], 0, 1, v84);
      v86 = v121;
      *v82 = v122;
      *(v82 + 1) = v86;
      *(v82 + 2) = v108;
      *(v82 + 3) = v80;
      v87 = &v82[v81[8]];
      v88 = v125;
      *v87 = v125;
      *(v87 + 1) = &off_28402D288;
      v82[v81[10]] = 0;
      v122 = *(v88 + 72);
      v128 = type metadata accessor for ActivityParticipantEvent;
      v89 = v113;
      sub_22CF0CCBC(v82, v113, type metadata accessor for ActivityParticipantEvent);
      v90 = (*(v111 + 80) + 32) & ~*(v111 + 80);
      v91 = swift_allocObject();
      v92 = v109;
      *(v91 + 16) = Strong;
      *(v91 + 24) = v92;
      sub_22CF0A72C(v89, v91 + v90, type metadata accessor for ActivityParticipantEvent);
      aBlock[4] = sub_22CFA5C9C;
      aBlock[5] = v91;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_22CEF8B58;
      aBlock[3] = &block_descriptor_28;
      v93 = _Block_copy(aBlock);

      swift_unknownObjectRetain();

      v94 = v115;
      sub_22D0164EC();
      v129 = MEMORY[0x277D84F90];
      sub_22CF1A1AC(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
      sub_22CF0EDA8();
      v95 = v117;
      v96 = v120;
      sub_22D016ADC();
      MEMORY[0x2318C5B10](0, v94, v95, v93);
      _Block_release(v93);
      swift_unknownObjectRelease();
      (*(v119 + 8))(v95, v96);
      (*(v116 + 8))(v94, v118);
      sub_22CF0F640(v82, v128);
      (v124)(v123, v126);
    }

    else
    {
      v97 = v108;
      sub_22CF0CCBC(v128, v108, type metadata accessor for Activity);
      v98 = sub_22D01636C();
      v99 = sub_22D0168EC();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        v101 = swift_slowAlloc();
        aBlock[0] = v101;
        *v100 = 136446210;
        v102 = v41;
        v103 = *v97;
        v104 = v97[1];

        sub_22CF0F640(v97, type metadata accessor for Activity);
        v105 = sub_22CEEE31C(v103, v104, aBlock);

        *(v100 + 4) = v105;
        _os_log_impl(&dword_22CEE1000, v98, v99, "No content sources exist for outdated activity: %{public}s", v100, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v101);
        MEMORY[0x2318C6860](v101, -1, -1);
        MEMORY[0x2318C6860](v100, -1, -1);
        swift_unknownObjectRelease();

        v106 = v102;
      }

      else
      {
        swift_unknownObjectRelease();

        sub_22CF0F640(v97, type metadata accessor for Activity);
        v106 = v41;
      }

      (v124)(v106, v33);
    }

    return 1;
  }

  else
  {
    result = sub_22D016CFC();
    __break(1u);
  }

  return result;
}

uint64_t sub_22CFE1A30()
{
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
  v2 = MEMORY[0x28223BE20](v70, v1);
  v69 = &v59 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v68 = (&v59 - v6);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v67 = (&v59 - v9);
  v11 = MEMORY[0x28223BE20](v8, v10);
  v66 = (&v59 - v12);
  MEMORY[0x28223BE20](v11, v13);
  v65 = &v59 - v14;
  v59 = *(*(v0 + 16) + 16);
  os_unfair_lock_lock(v59);
  swift_beginAccess();
  v15 = *(v0 + 120);
  v16 = *(v15 + 16);
  v78 = MEMORY[0x277D84F90];
  if (v16)
  {
    v79 = MEMORY[0x277D84F90];

    sub_22CF4414C(0, v16, 0);
    v78 = v79;
    v17 = v15 + 64;
    v18 = sub_22D016AEC();
    v19 = 0;
    v20 = *(v15 + 36);
    v60 = v15 + 72;
    v61 = v16;
    v63 = v15 + 64;
    v62 = v20;
    v64 = v15;
    while ((v18 & 0x8000000000000000) == 0 && v18 < 1 << *(v15 + 32))
    {
      if ((*(v17 + 8 * (v18 >> 6)) & (1 << v18)) == 0)
      {
        goto LABEL_26;
      }

      if (v20 != *(v15 + 36))
      {
        goto LABEL_27;
      }

      v72 = 1 << v18;
      v73 = v18 >> 6;
      v71 = v19;
      v22 = v70;
      v23 = *(v70 + 48);
      v24 = *(v15 + 56);
      v25 = (*(v15 + 48) + 16 * v18);
      v27 = *v25;
      v26 = v25[1];
      v28 = type metadata accessor for Activity(0);
      v29 = v65;
      sub_22CF0CCBC(v24 + *(*(v28 - 8) + 72) * v18, &v65[v23], type metadata accessor for Activity);
      v30 = v66;
      *v66 = v27;
      *(v30 + 8) = v26;
      v31 = *(v22 + 48);
      sub_22CF0A72C(&v29[v23], v30 + v31, type metadata accessor for Activity);
      v32 = v67;
      *v67 = v27;
      *(v32 + 8) = v26;
      sub_22CF0CCBC(v30 + v31, v32 + *(v22 + 48), type metadata accessor for Activity);
      v33 = v68;
      sub_22CEEB6DC(v32, v68, &unk_27D9F3840, &unk_22D01A2B0);
      v34 = *v33;
      v76 = v33[1];
      v77 = v34;
      v74 = *(v22 + 48);
      v35 = v69;
      sub_22CEEB6DC(v32, v69, &unk_27D9F3840, &unk_22D01A2B0);
      swift_bridgeObjectRetain_n();

      v36 = *(v22 + 48);
      v75 = sub_22CF0B174();
      v38 = v37;
      v39 = v32;
      v40 = v78;
      sub_22CEEC3D8(v39, &unk_27D9F3840, &unk_22D01A2B0);
      sub_22CF0F640(v35 + v36, type metadata accessor for Activity);
      sub_22CF0F640(v33 + v74, type metadata accessor for Activity);
      sub_22CEEC3D8(v30, &unk_27D9F3840, &unk_22D01A2B0);
      v79 = v40;
      v42 = *(v40 + 16);
      v41 = *(v40 + 24);
      v78 = v40;
      if (v42 >= v41 >> 1)
      {
        sub_22CF4414C((v41 > 1), v42 + 1, 1);
        v78 = v79;
      }

      v44 = v77;
      v43 = v78;
      *(v78 + 16) = v42 + 1;
      v45 = (v43 + 48 * v42);
      v46 = v75;
      v47 = v76;
      v45[4] = v44;
      v45[5] = v47;
      v45[6] = v46;
      v45[7] = v38;
      v45[9] = MEMORY[0x277D837D0];
      v15 = v64;
      v21 = 1 << *(v64 + 32);
      if (v18 >= v21)
      {
        goto LABEL_28;
      }

      v17 = v63;
      v48 = *(v63 + 8 * v73);
      if ((v48 & v72) == 0)
      {
        goto LABEL_29;
      }

      LODWORD(v20) = v62;
      if (v62 != *(v64 + 36))
      {
        goto LABEL_30;
      }

      v49 = v48 & (-2 << (v18 & 0x3F));
      if (v49)
      {
        v21 = __clz(__rbit64(v49)) | v18 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v50 = v73 << 6;
        v51 = v73 + 1;
        v52 = (v60 + 8 * v73);
        while (v51 < (v21 + 63) >> 6)
        {
          v54 = *v52++;
          v53 = v54;
          v50 += 64;
          ++v51;
          if (v54)
          {
            sub_22CF44CF8(v18, v62, 0);
            v21 = __clz(__rbit64(v53)) + v50;
            goto LABEL_4;
          }
        }

        sub_22CF44CF8(v18, v62, 0);
      }

LABEL_4:
      v19 = v71 + 1;
      v18 = v21;
      if (v71 + 1 == v61)
      {

        goto LABEL_21;
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
LABEL_30:
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_21:
    if (*(v78 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F27A0, &qword_22D019090);
      v55 = sub_22D016D3C();
    }

    else
    {
      v55 = MEMORY[0x277D84F98];
    }

    v79 = v55;

    sub_22CF623EC(v56, 1, &v79);

    v57 = v79;
    os_unfair_lock_unlock(v59);
    return v57;
  }

  return result;
}

double sub_22CFE1FF0(uint64_t a1)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CFE2EE0();
  }

  return result;
}

double sub_22CFE2048(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_22CFE2324(v2);
  }

  return result;
}

void sub_22CFE20A8()
{
  v1 = v0;
  swift_beginAccess();
  v2 = *(v0 + 120);
  if ((v2 & 0xC000000000000001) != 0)
  {

    swift_unknownObjectRetain();
    sub_22D016B3C();
    sub_22D01640C();
    sub_22CF87454();
    sub_22D01689C();
    v4 = v18;
    v3 = v19;
    v5 = v20;
    v6 = v21;
    v7 = v22;
  }

  else
  {
    v8 = -1 << *(v2 + 32);
    v3 = v2 + 56;
    v5 = ~v8;
    v9 = -v8;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v7 = v10 & *(v2 + 56);
    swift_bridgeObjectRetain_n();
    v6 = 0;
    v4 = v2;
  }

  v11 = (v5 + 64) >> 6;
  if (v4 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v12 = v6;
    v13 = v7;
    v14 = v6;
    if (!v7)
    {
      break;
    }

LABEL_12:
    v15 = (v13 - 1) & v13;
    v16 = *(*(v4 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

    if (!v16)
    {
LABEL_18:
      sub_22CEE57FC(v4);

      sub_22CF460CC(v1 + 16);
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 32));
      __swift_destroy_boxed_opaque_existential_1Tm((v1 + 72));

      return;
    }

    while (1)
    {
      sub_22D0163FC();

      v6 = v14;
      v7 = v15;
      if ((v4 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_22D016BAC())
      {
        sub_22D01640C();
        swift_dynamicCast();
        v14 = v6;
        v15 = v7;
        if (v17)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
      goto LABEL_18;
    }

    v13 = *(v3 + 8 * v14);
    ++v12;
    if (v13)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_22CFE22CC()
{
  sub_22CFE20A8();

  return swift_deallocClassInstance();
}

uint64_t sub_22CFE2324(uint64_t a1)
{
  v119 = a1;
  v104 = type metadata accessor for ActivityParticipantEvent(0);
  MEMORY[0x28223BE20](v104, v2);
  v103 = &v94 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_22D01483C();
  v107 = *(v114 - 8);
  MEMORY[0x28223BE20](v114, v4);
  v113 = &v94 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for Activity(0);
  v116 = *(v111 - 8);
  v7 = MEMORY[0x28223BE20](v111, v6);
  v9 = &v94 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v10);
  v115 = &v94 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v14 = MEMORY[0x28223BE20](v12 - 8, v13);
  v16 = (&v94 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14, v17);
  v19 = (&v94 - v18);
  v20 = sub_22D01495C();
  MEMORY[0x28223BE20](v20 - 8, v21);
  v106 = sub_22D01486C();
  v95 = *(v106 - 8);
  MEMORY[0x28223BE20](v106, v22);
  v108 = &v94 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_22D01659C();
  v25 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v26);
  v28 = (&v94 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = v1;
  v29 = v1[14];
  *v28 = v29;
  (*(v25 + 104))(v28, *MEMORY[0x277D85200], v24);
  v30 = v29;
  LOBYTE(v29) = sub_22D0165BC();
  (*(v25 + 8))(v28, v24);
  if ((v29 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v31 = v109;
    v32 = v109[3];

    sub_22CF7BDC4(v33);

    v34 = v31[7];
    v35 = v31[8];
    __swift_project_boxed_opaque_existential_1(v31 + 4, v34);
    v36 = (*(v35 + 8))(v34, v35);
    sub_22D01494C();
    sub_22D01485C();
    v38 = 0;
    v121 = 0;
    v39 = v36 + 64;
    v40 = 1 << *(v36 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(v36 + 64);
    v97 = (v40 + 63) >> 6;
    v112 = v107 + 16;
    v100 = (v95 + 16);
    v102 = v32;
    v99 = v32 + 24;
    v98 = (v107 + 8);
    *&v37 = 136446210;
    v96 = v37;
    v110 = v9;
    v120 = v19;
    v101 = v36;
    v117 = v36 + 64;
    v118 = v16;
    while (v42)
    {
      v54 = v38;
LABEL_18:
      v57 = __clz(__rbit64(v42));
      v42 &= v42 - 1;
      v58 = v57 | (v54 << 6);
      v59 = (*(v36 + 48) + 16 * v58);
      v61 = *v59;
      v60 = v59[1];
      v62 = v115;
      sub_22CF0F9C8(*(v36 + 56) + *(v116 + 72) * v58, v115);
      v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      v64 = *(v63 + 48);
      *v16 = v61;
      v16[1] = v60;
      sub_22CFA8FC0(v62, v16 + v64);
      (*(*(v63 - 8) + 56))(v16, 0, 1, v63);

      v19 = v120;
LABEL_19:
      sub_22CF82724(v16, v19);
      v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      if ((*(*(v65 - 8) + 48))(v19, 1, v65) == 1)
      {
        (*(v95 + 8))(v108, v106);

        return swift_unknownObjectRelease();
      }

      v66 = *v19;
      v67 = v19[1];
      v68 = sub_22CFA8FC0(v19 + *(v65 + 48), v9);
      MEMORY[0x28223BE20](v68, v69);
      v92 = v9;
      v70 = v119;

      v71 = v70;
      v72 = v121;
      v73 = sub_22CF301D4(sub_22CFE3A6C, (&v94 - 4), v71);
      v121 = v72;
      v74 = *(v73 + 16);

      if (v74)
      {
        v75 = *&v9[*(v111 + 36)];
        if (*(v75 + 16))
        {
          v76 = *(v107 + 16);
          v76(v113, v75 + ((*(v107 + 80) + 32) & ~*(v107 + 80)), v114);
          if (qword_28143DAA0 != -1)
          {
            swift_once();
          }

          v77 = sub_22D01637C();
          __swift_project_value_buffer(v77, qword_281444308);

          v78 = sub_22D01636C();
          v79 = sub_22D01690C();

          if (os_log_type_enabled(v78, v79))
          {
            v80 = swift_slowAlloc();
            v81 = swift_slowAlloc();
            v122[0] = v81;
            *v80 = v96;
            *(v80 + 4) = sub_22CEEE31C(v66, v67, v122);
            _os_log_impl(&dword_22CEE1000, v78, v79, "Stopping uninstalled activity: %{public}s", v80, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v81);
            MEMORY[0x2318C6860](v81, -1, -1);
            MEMORY[0x2318C6860](v80, -1, -1);
          }

          v43 = v66;
          v45 = v103;
          v44 = v104;
          (*v100)(&v103[*(v104 + 24)], v108, v106);
          type metadata accessor for ActivityParticipantEvent.EventType(0);
          swift_storeEnumTagMultiPayload();
          v46 = v113;
          v47 = v114;
          v76(&v45[v44[7]], v113, v114);
          v48 = v44[9];
          v49 = sub_22D0146BC();
          (*(*(v49 - 8) + 56))(&v45[v48], 1, 1, v49);
          *v45 = v43;
          *(v45 + 1) = v67;
          *(v45 + 2) = 0;
          *(v45 + 3) = 0;
          v50 = &v45[v44[8]];
          *v50 = v109;
          *(v50 + 1) = &off_28402D340;
          v45[v44[10]] = 0;
          ObjectType = swift_getObjectType();
          v52 = v102;
          v53 = *(v102 + 24);

          v53(v45, ObjectType, v52);
          sub_22CF0A65C(v45, type metadata accessor for ActivityParticipantEvent);
          (*v98)(v46, v47);
          v9 = v110;
          v19 = v120;
          v36 = v101;
        }

        else
        {
          if (qword_28143DAA0 != -1)
          {
            swift_once();
          }

          v82 = sub_22D01637C();
          __swift_project_value_buffer(v82, qword_281444308);

          v83 = sub_22D01636C();
          v84 = sub_22D0168EC();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v122[0] = v86;
            *v85 = v96;
            v87 = sub_22CEEE31C(v66, v67, v122);

            *(v85 + 4) = v87;
            _os_log_impl(&dword_22CEE1000, v83, v84, "No content sources exist for uninstalled activity: %{public}s", v85, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v86);
            v88 = v86;
            v19 = v120;
            MEMORY[0x2318C6860](v88, -1, -1);
            v89 = v85;
            v9 = v110;
            MEMORY[0x2318C6860](v89, -1, -1);
          }

          else
          {
          }
        }
      }

      else
      {
      }

      sub_22CF0A65C(v9, type metadata accessor for Activity);
      v39 = v117;
      v16 = v118;
    }

    if (v97 <= v38 + 1)
    {
      v55 = v38 + 1;
    }

    else
    {
      v55 = v97;
    }

    v56 = v55 - 1;
    while (1)
    {
      v54 = v38 + 1;
      if (__OFADD__(v38, 1))
      {
        break;
      }

      if (v54 >= v97)
      {
        v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
        (*(*(v90 - 8) + 56))(v16, 1, 1, v90);
        v42 = 0;
        v38 = v56;
        goto LABEL_19;
      }

      v42 = *(v39 + 8 * v54);
      ++v38;
      if (v42)
      {
        v38 = v54;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_37:
  v93 = 0;
  v92 = 74;
  result = sub_22D016CFC();
  __break(1u);
  return result;
}

uint64_t sub_22CFE2EE0()
{
  v98 = type metadata accessor for ActivityParticipantEvent(0);
  MEMORY[0x28223BE20](v98, v1);
  v97 = &v90 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_22D01483C();
  v101 = *(v110 - 8);
  MEMORY[0x28223BE20](v110, v3);
  v106 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Activity(0);
  v108 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5, v6);
  v103 = &v90 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7, v9);
  v107 = &v90 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3850, &unk_22D019D30);
  v13 = MEMORY[0x28223BE20](v11 - 8, v12);
  v112 = (&v90 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v13, v15);
  v113 = (&v90 - v16);
  v17 = sub_22D01495C();
  MEMORY[0x28223BE20](v17 - 8, v18);
  v100 = sub_22D01486C();
  v91 = *(v100 - 8);
  MEMORY[0x28223BE20](v100, v19);
  v102 = &v90 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D01659C();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21, v23);
  v25 = (&v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = v0[14];
  *v25 = v26;
  (*(v22 + 104))(v25, *MEMORY[0x277D85200], v21);
  v27 = v26;
  v28 = sub_22D0165BC();
  (*(v22 + 8))(v25, v21);
  if ((v28 & 1) == 0)
  {
LABEL_36:
    __break(1u);
    goto LABEL_37;
  }

  if (swift_unknownObjectWeakLoadStrong())
  {
    v29 = v0[3];
    v30 = v0[7];
    v31 = v0[8];
    v114 = v0;
    __swift_project_boxed_opaque_existential_1(v0 + 4, v30);
    v32 = (*(v31 + 8))(v30, v31);
    sub_22D01494C();
    sub_22D01485C();
    v34 = 0;
    v36 = v32 + 64;
    v35 = *(v32 + 64);
    v109 = v32;
    v37 = 1 << *(v32 + 32);
    v38 = -1;
    if (v37 < 64)
    {
      v38 = ~(-1 << v37);
    }

    v39 = v38 & v35;
    v40 = (v37 + 63) >> 6;
    v105 = v101 + 16;
    v95 = (v91 + 16);
    v96 = v29;
    v94 = v29 + 24;
    v93 = (v101 + 8);
    *&v33 = 136446210;
    v92 = v33;
    v104 = v5;
    v41 = v103;
    v111 = v32 + 64;
    while (v39)
    {
      v42 = v34;
LABEL_18:
      v45 = __clz(__rbit64(v39));
      v39 &= v39 - 1;
      v46 = v45 | (v42 << 6);
      v47 = (*(v109 + 48) + 16 * v46);
      v48 = *v47;
      v49 = v47[1];
      v50 = v107;
      sub_22CF0F9C8(*(v109 + 56) + *(v108 + 72) * v46, v107);
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      v52 = *(v51 + 48);
      v53 = v112;
      *v112 = v48;
      v53[1] = v49;
      v54 = v53;
      sub_22CFA8FC0(v50, v53 + v52);
      (*(*(v51 - 8) + 56))(v54, 0, 1, v51);

LABEL_19:
      v55 = v54;
      v56 = v113;
      sub_22CF82724(v55, v113);
      v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
      if ((*(*(v57 - 8) + 48))(v56, 1, v57) == 1)
      {
        (*(v91 + 8))(v102, v100);

        return swift_unknownObjectRelease();
      }

      v59 = *v56;
      v58 = v56[1];
      sub_22CFA8FC0(v56 + *(v57 + 48), v41);
      __swift_project_boxed_opaque_existential_1(v114 + 9, v114[12]);
      v60 = sub_22D014F9C();
      v62 = sub_22CF04C80(v60, v61);

      if (v62)
      {
        v63 = *(v41 + *(v5 + 36));
        if (*(v63 + 16))
        {
          v64 = *(v101 + 16);
          v64(v106, v63 + ((*(v101 + 80) + 32) & ~*(v101 + 80)), v110);
          if (qword_28143DAA0 != -1)
          {
            swift_once();
          }

          v65 = sub_22D01637C();
          __swift_project_value_buffer(v65, qword_281444308);

          v66 = sub_22D01636C();
          v67 = sub_22D01690C();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v115[0] = v69;
            *v68 = v92;
            *(v68 + 4) = sub_22CEEE31C(v59, v58, v115);
            _os_log_impl(&dword_22CEE1000, v66, v67, "Stopping restricted activity: %{public}s", v68, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v69);
            MEMORY[0x2318C6860](v69, -1, -1);
            MEMORY[0x2318C6860](v68, -1, -1);
          }

          v70 = v59;
          v72 = v97;
          v71 = v98;
          (*v95)(&v97[*(v98 + 24)], v102, v100);
          type metadata accessor for ActivityParticipantEvent.EventType(0);
          swift_storeEnumTagMultiPayload();
          v73 = v106;
          v64(&v72[v71[7]], v106, v110);
          v74 = v71[9];
          v75 = sub_22D0146BC();
          (*(*(v75 - 8) + 56))(&v72[v74], 1, 1, v75);
          *v72 = v70;
          *(v72 + 1) = v58;
          *(v72 + 2) = 0;
          *(v72 + 3) = 0;
          v76 = &v72[v71[8]];
          *v76 = v114;
          *(v76 + 1) = &off_28402D340;
          v72[v71[10]] = 0;
          ObjectType = swift_getObjectType();
          v78 = v96;
          v79 = *(v96 + 24);

          v79(v72, ObjectType, v78);
          sub_22CF0A65C(v72, type metadata accessor for ActivityParticipantEvent);
          (*v93)(v73, v110);
          v41 = v103;
          v5 = v104;
        }

        else
        {
          if (qword_28143DAA0 != -1)
          {
            swift_once();
          }

          v82 = sub_22D01637C();
          __swift_project_value_buffer(v82, qword_281444308);

          v83 = sub_22D01636C();
          v84 = sub_22D0168EC();

          if (os_log_type_enabled(v83, v84))
          {
            v85 = swift_slowAlloc();
            v86 = swift_slowAlloc();
            v115[0] = v86;
            *v85 = v92;
            v87 = sub_22CEEE31C(v59, v58, v115);

            *(v85 + 4) = v87;
            _os_log_impl(&dword_22CEE1000, v83, v84, "No content sources exist for restricted activity: %{public}s", v85, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v86);
            v88 = v86;
            v41 = v103;
            MEMORY[0x2318C6860](v88, -1, -1);
            MEMORY[0x2318C6860](v85, -1, -1);
          }

          else
          {
          }

          v5 = v104;
        }
      }

      else
      {
      }

      sub_22CF0A65C(v41, type metadata accessor for Activity);
      v36 = v111;
    }

    if (v40 <= v34 + 1)
    {
      v43 = v34 + 1;
    }

    else
    {
      v43 = v40;
    }

    v44 = v43 - 1;
    while (1)
    {
      v42 = v34 + 1;
      if (__OFADD__(v34, 1))
      {
        break;
      }

      if (v42 >= v40)
      {
        v80 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3840, &unk_22D01A2B0);
        v81 = v112;
        (*(*(v80 - 8) + 56))(v112, 1, 1, v80);
        v39 = 0;
        v34 = v44;
        v54 = v81;
        goto LABEL_19;
      }

      v39 = *(v36 + 8 * v42);
      ++v34;
      if (v39)
      {
        v34 = v42;
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_36;
  }

LABEL_37:
  result = sub_22D016CFC();
  __break(1u);
  return result;
}

uint64_t sub_22CFE3A28(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();

  return swift_unknownObjectRelease();
}

uint64_t Daemon.__allocating_init(workloop:)(NSObject *a1)
{
  v2 = swift_allocObject();
  Daemon.init(workloop:)(a1);
  return v2;
}

void *Daemon.init(workloop:)(NSObject *a1)
{
  v611 = sub_22D01637C();
  v610 = *(v611 - 8);
  MEMORY[0x28223BE20](v611, v3);
  v595 = &v542 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v590 = (&v542 - v7);
  v596 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3B58, &unk_22D01C630);
  v592 = *(v596 - 8);
  MEMORY[0x28223BE20](v596, v8);
  v591 = &v542 - v9;
  v10 = sub_22D01697C();
  v588 = *(v10 - 8);
  v589 = v10;
  MEMORY[0x28223BE20](v10, v11);
  v587 = &v542 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v585 = sub_22D01691C();
  MEMORY[0x28223BE20](v585, v13);
  v586 = &v542 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D01653C();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v584 = &v542 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D0151BC();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18, v20);
  v22 = &v542 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for StuckClientBugCapturer();
  swift_allocObject();
  v23 = sub_22CF8127C();
  v564 = v1;
  v1[12] = v23;
  sub_22CFF81AC(a1);
  type metadata accessor for WakingTaskScheduler();
  swift_allocObject();
  v24 = sub_22CFB25CC();
  type metadata accessor for NonwakingTaskScheduler();
  swift_allocObject();
  v25 = sub_22D0086B8();
  type metadata accessor for PreciseWakingTaskScheduler(0);
  v26 = swift_allocObject();
  sub_22D01435C();
  v27 = (v26 + OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock_didFire);
  *v27 = 0;
  v27[1] = 0;
  v28 = OBJC_IVAR____TtC11SessionCore26PreciseWakingTaskScheduler_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B60, &qword_22D01C638);
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  *(v26 + v28) = v29;
  v621 = type metadata accessor for TaskScheduler();
  swift_allocObject();

  v622 = sub_22CFC08E8(v26, &off_28402ACF0, v24, &off_28402BA30, v25, &off_28402E9F8);
  v561 = v26;

  v563 = v24;

  v562 = v25;

  v30 = a1;
  v31 = sub_22CFF8680(a1);
  v32 = type metadata accessor for AlertServiceServer();
  v33 = objc_allocWithZone(v32);
  v626 = a1;
  sub_22CFA9AC0(a1);
  v35 = v34;
  *&v629 = &off_28402B5F8;
  *(&v628 + 1) = v32;
  *&v627 = v34;
  type metadata accessor for AlertPresenter();
  v36 = swift_allocObject();
  v37 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v32);
  MEMORY[0x28223BE20](v37, v37);
  v39 = (&v542 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v40 + 16))(v39);
  v41 = *v39;
  v559 = v35;
  v42 = sub_22CFEB948(v41, v36);
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  sub_22CFF8F4C(&unk_2814436A8, type metadata accessor for AlertPresenter, &unk_22D01C37C);

  sub_22D0151AC();
  sub_22D01528C();
  *(&v628 + 1) = v18;
  *&v629 = MEMORY[0x277D4D400];
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v627);
  (*(v19 + 16))(boxed_opaque_existential_1, v22, v18);
  v646 = sub_22D0156CC();
  v647 = MEMORY[0x277D4D6E8];
  *&v645 = v31;

  v560 = v31;
  v44 = v30;

  v45 = sub_22D01527C();
  (*(v19 + 8))(v22, v18);
  v558 = v42;

  type metadata accessor for AlertParticipant();
  v46 = swift_allocObject();
  v619 = type metadata accessor for UnfairLock();
  v47 = swift_allocObject();

  v48 = swift_slowAlloc();
  *(v47 + 16) = v48;
  *v48 = 0;
  v46[4] = v47;
  v49 = MEMORY[0x277D4D428];
  v557 = v45;
  v46[2] = v45;
  v46[3] = v49;
  v620 = v46;
  type metadata accessor for ActivityManager();
  swift_allocObject();
  v593 = sub_22CFCC674();
  v50 = type metadata accessor for StateCaptureService();
  swift_allocObject();
  v51 = sub_22CF68374();
  *&v629 = &off_284029BB0;
  *(&v628 + 1) = v50;
  *&v627 = v51;
  v52 = objc_allocWithZone(type metadata accessor for StateCaptureServiceServer());
  v53 = __swift_mutable_project_boxed_opaque_existential_1(&v627, *(&v628 + 1));
  MEMORY[0x28223BE20](v53, v53);
  v55 = (&v542 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v56 + 16))(v55);
  v57 = *v55;
  v58 = v626;
  v556 = v51;

  sub_22CFEAC30(v57, v30, v52);
  v555 = v59;
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  v618 = type metadata accessor for PersistentActivityStore();
  swift_allocObject();
  v60 = v58;
  v61 = sub_22CFD93D8(v60);
  type metadata accessor for PersistentAssertionStore();
  swift_allocObject();
  v62 = v60;
  v63 = sub_22CFA68C4(v62);
  LaunchDetector = type metadata accessor for FirstLaunchDetector();
  v65 = swift_allocObject();
  v66 = qword_281441818;

  if (v66 != -1)
  {
    swift_once();
  }

  *&v629 = &off_28402BEB0;
  *(&v628 + 1) = LaunchDetector;
  *&v627 = v65;
  v67 = type metadata accessor for AssertionManager();
  v68 = swift_allocObject();
  v69 = __swift_mutable_project_boxed_opaque_existential_1(&v627, LaunchDetector);
  MEMORY[0x28223BE20](v69, v69);
  v71 = (&v542 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v72 + 16))(v71);
  v73 = *v71;
  v74 = v62;
  v75 = sub_22CFF8844(v44, v63, v61, v73, v68);
  v624 = v61;
  v76 = v75;

  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  *&v629 = &off_284029D68;
  *(&v628 + 1) = v67;
  *&v627 = v76;
  v77 = objc_allocWithZone(type metadata accessor for AssertionServiceServer());
  v78 = __swift_mutable_project_boxed_opaque_existential_1(&v627, *(&v628 + 1));
  MEMORY[0x28223BE20](v78, v78);
  v80 = (&v542 - ((v79 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v81 + 16))(v80);
  v82 = *v80;
  v83 = v74;

  sub_22CFEBA70(v44, v82, v77);
  v554 = v84;
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  *&v629 = &off_284029D50;
  *(&v628 + 1) = v67;
  *&v627 = v76;
  v85 = objc_allocWithZone(type metadata accessor for PresentationObservationServiceServer());
  v86 = __swift_mutable_project_boxed_opaque_existential_1(&v627, *(&v628 + 1));
  MEMORY[0x28223BE20](v86, v86);
  v88 = (&v542 - ((v87 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v89 + 16))(v88);
  v90 = *v88;
  v91 = v83;

  sub_22CFEA4F8(v44, v90, v85);
  v553 = v92;
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  *&v629 = &off_284029D40;
  v617 = v67;
  *(&v628 + 1) = v67;
  *&v627 = v76;
  v93 = objc_allocWithZone(type metadata accessor for ProminenceObservationServiceServer());
  v94 = __swift_mutable_project_boxed_opaque_existential_1(&v627, *(&v628 + 1));
  MEMORY[0x28223BE20](v94, v94);
  v96 = (&v542 - ((v95 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v97 + 16))(v96);
  v98 = *v96;
  v99 = v91;

  v100 = v44;
  v623 = v44;
  sub_22CFE9F80(v44, v98, v93);
  v552 = v101;
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  v102 = type metadata accessor for LockStateObserver();
  swift_allocObject();
  v103 = sub_22CF659BC();
  *&v629 = &off_284029998;
  *(&v628 + 1) = v102;
  *&v627 = v103;
  type metadata accessor for QoSManager();
  v104 = swift_allocObject();
  v105 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v102);
  MEMORY[0x28223BE20](v105, v105);
  v606 = v106;
  v107 = (&v542 - ((v106 + 15) & 0xFFFFFFFFFFFFFFF0));
  v109 = *(v108 + 16);
  v608 = v102;
  v607 = v108 + 16;
  v605 = v109;
  v109(v107);
  v110 = *v107;
  v111 = v99;

  v615 = v103;

  v112 = sub_22CFF5EE8(v76, v110, v111, v104);
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  v113 = objc_allocWithZone(type metadata accessor for QoSObservationServiceServer());
  v114 = v111;

  v614 = v112;
  sub_22CFF598C(v100, v112, v113);
  v551 = v115;
  v116 = type metadata accessor for KnownClientStore();
  swift_allocObject();
  v117 = sub_22CFCBE2C(1);
  *&v629 = &off_28402C270;
  *(&v628 + 1) = v116;
  *&v627 = v117;
  v118 = type metadata accessor for AppEventObserver();
  v119 = objc_allocWithZone(v118);
  v120 = __swift_mutable_project_boxed_opaque_existential_1(&v627, *(&v628 + 1));
  MEMORY[0x28223BE20](v120, v120);
  v122 = (&v542 - ((v121 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v123 + 16))(v122);
  v124 = *v122;

  v125 = sub_22CFEB050(v124, v119);
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  *&v629 = &off_28402BFA0;
  *(&v628 + 1) = v118;
  *&v627 = v125;
  v616 = type metadata accessor for AuthorizationManager();
  v126 = swift_allocObject();
  v127 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v118);
  MEMORY[0x28223BE20](v127, v127);
  v129 = (&v542 - ((v128 + 15) & 0xFFFFFFFFFFFFFFF0));
  v131 = *(v130 + 16);
  v612 = v118;
  v603 = v131;
  v604 = v128;
  v609 = (v130 + 16);
  v131(v129);
  v132 = *v129;
  v599 = v125;
  v133 = sub_22CFE9870(v132, v126);
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  v134 = objc_allocWithZone(type metadata accessor for AuthorizationServer());
  v135 = v114;

  v136 = v623;
  v626 = v133;
  sub_22D00DE80(v623, v133);
  v550 = v137;
  type metadata accessor for ProcessMonitor();
  v138 = swift_allocObject();
  v139 = MEMORY[0x277D84FA0];
  v138[2] = 0;
  v138[3] = v139;
  v140 = MEMORY[0x277D84F98];
  v138[4] = MEMORY[0x277D84F98];
  v138[5] = v140;
  v141 = swift_allocObject();
  v142 = swift_slowAlloc();
  *(v141 + 16) = v142;
  *v142 = 0;
  v138[6] = v141;
  *&v629 = &off_28402C270;
  *(&v628 + 1) = v116;
  *&v627 = v117;
  type metadata accessor for ProcessManager();
  v143 = swift_allocObject();
  v144 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v116);
  MEMORY[0x28223BE20](v144, v144);
  v146 = (&v542 - ((v145 + 15) & 0xFFFFFFFFFFFFFFF0));
  v148 = *(v147 + 16);
  v613 = v116;
  v148(v146);
  v149 = *v146;

  v594 = v138;
  v151 = sub_22CFF56A8(v150, v149, v143);
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  v598 = v135;

  v601 = v151;
  v602 = v117;
  v581 = sub_22CFEC1A8(v152, v117, v136, 1);
  if (qword_281442150 != -1)
  {
    swift_once();
  }

  v625 = v76;
  if (qword_2814444F8)
  {
    v153 = type metadata accessor for PushBudgetStore();
    swift_allocObject();
    v154 = swift_retain_n();
    v155 = sub_22D00CFB0(v154);
    v156 = sub_22D015F8C();
    *(&v628 + 1) = v153;
    *&v629 = sub_22CFF8F4C(&unk_28143F348, type metadata accessor for PushBudgetStore, &unk_22D01D4F4);
    *&v627 = v155;

    v600 = v156;
    v157 = sub_22D015F7C();
  }

  else
  {
    v158 = sub_22D015F8C();
    *&v629 = 0;
    v627 = 0u;
    v628 = 0u;
    v600 = v158;
    v157 = sub_22D015F7C();
  }

  v159 = v626;
  v160 = v616;
  v597 = sub_22D0160DC();

  v161 = sub_22D0160CC();
  *(&v628 + 1) = v160;
  *&v629 = sub_22CFF8F4C(&unk_28143EAD0, type metadata accessor for AuthorizationManager, &unk_22D018B00);
  *&v627 = v159;

  sub_22D0160BC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  v162 = sub_22D01611C();
  *(&v628 + 1) = v621;
  v582 = sub_22CFF8F4C(&qword_28143F548, type metadata accessor for TaskScheduler, &unk_22D01B09C);
  *&v629 = v582;
  v163 = v622;
  *&v627 = v622;

  v164 = sub_22D01610C();
  v165 = sub_22D0160FC();
  v166 = sub_22D0160EC();
  v167 = sub_22D01618C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3B68, &unk_22D01C640);
  v168 = swift_allocObject();
  *(v168 + 16) = xmmword_22D0189F0;
  v169 = MEMORY[0x277D4D640];
  *(v168 + 56) = v162;
  *(v168 + 64) = v169;
  *(v168 + 32) = v164;
  v170 = MEMORY[0x277D4D638];
  *(v168 + 96) = v165;
  *(v168 + 104) = v170;
  *(v168 + 72) = v166;
  v547 = v164;

  v546 = v166;

  v171 = sub_22D01617C();
  *&v629 = MEMORY[0x277D4D658];
  *(&v628 + 1) = v167;
  *&v627 = v171;
  v545 = v171;

  sub_22D0160BC();
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  *&v629 = &off_284029998;
  v172 = v608;
  *(&v628 + 1) = v608;
  *&v627 = v615;
  v173 = type metadata accessor for PushBudgetEnforcementPolicyProvider();
  v174 = swift_allocObject();
  v175 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v172);
  MEMORY[0x28223BE20](v175, v175);
  v583 = (v176 + 15) & 0xFFFFFFFFFFFFFFF0;
  v177 = (&v542 - v583);
  v605(&v542 - v583);
  v178 = *v177;

  v179 = sub_22CFEBEDC(v178, v174);
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  v180 = sub_22D015FFC();
  sub_22D015F8C();
  *&v629 = MEMORY[0x277D4D610];
  *(&v628 + 1) = v600;
  v549 = v157;
  *&v627 = v157;
  v646 = v597;
  v647 = MEMORY[0x277D4D630];
  *&v645 = v161;
  v643 = v173;
  v644 = sub_22CFF8F4C(&unk_281440200, type metadata accessor for PushBudgetEnforcementPolicyProvider, &unk_22D01CB94);
  v641 = v582;
  *&v642 = v179;
  v640 = v621;
  v639[0] = v163;

  v548 = v161;

  v544 = v179;

  v582 = v180;
  v181 = sub_22D015FEC();

  v182 = v598;
  v600 = v181;
  v183 = sub_22CFEC38C(v598, v181);

  v621 = v182;
  v184 = v624;

  v185 = v602;

  v186 = v601;

  v187 = v183;
  sub_22CFEC594(v187, v186, v184, v185, v626, v623);
  v543 = v188;
  *&v629 = &off_28402CB48;
  *(&v628 + 1) = v618;
  *&v627 = v184;
  LOBYTE(v186) = *(v184 + 40) != 0;
  v646 = v613;
  v647 = &off_28402C270;
  *&v645 = v185;
  v189 = v612;
  v643 = v612;
  v644 = &off_28402BFA0;
  v190 = v599;
  *&v642 = v599;
  v191 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B70, &qword_22D01C648);
  v192 = swift_allocObject();
  v193 = v625;
  *(v192 + 16) = 4096;
  *(v192 + 24) = v193;
  sub_22CEF44D4(&v627, v192 + 32);
  v580 = xmmword_22D01C620;
  *(v192 + 72) = xmmword_22D01C620;
  *(v192 + 88) = v186;
  *(v192 + 96) = v626;
  sub_22CEF44D4(&v645, v192 + 104);
  sub_22CEF44D4(&v642, v192 + 144);
  v194 = v185;
  swift_retain_n();
  v577 = v621;

  v195 = v190;
  v598 = v195;

  v196 = v187;
  v599 = v196;

  sub_22CFECC9C(v197, v185, v623, v196);
  v621 = v198;
  *&v629 = &off_28402E878;
  *(&v628 + 1) = v191;
  *&v627 = v192;
  started = type metadata accessor for PushToStartAppBundleIDProvider();
  v200 = swift_allocObject();
  sub_22CEF44D4(&v627, v200 + 16);
  *&v629 = &off_28402BFA0;
  *(&v628 + 1) = v189;
  *&v627 = v195;
  v646 = started;
  v647 = &off_28402D240;
  *&v645 = v200;
  v643 = v616;
  v644 = &off_284029420;
  *&v642 = v626;
  v640 = v613;
  v641 = &off_28402C270;
  v639[0] = v194;
  type metadata accessor for PushToStartManager();
  v597 = swift_allocObject();
  v201 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v189);
  v613 = &v542;
  MEMORY[0x28223BE20](v201, v201);
  v578 = (v202 + 15) & 0xFFFFFFFFFFFFFFF0;
  v203 = (&v542 - v578);
  (v603)(&v542 - v578);
  v204 = __swift_mutable_project_boxed_opaque_existential_1(&v645, v646);
  v579 = &v542;
  MEMORY[0x28223BE20](v204, v204);
  v206 = (&v542 - ((v205 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v207 + 16))(v206);
  v208 = __swift_mutable_project_boxed_opaque_existential_1(&v642, v643);
  MEMORY[0x28223BE20](v208, v208);
  v210 = (&v542 - ((v209 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v211 + 16))(v210);
  v212 = __swift_mutable_project_boxed_opaque_existential_1(v639, v640);
  MEMORY[0x28223BE20](v212, v212);
  v214 = (&v542 - ((v213 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v215 + 16))(v214);
  v216 = *v203;
  v217 = *v206;
  v218 = *v210;
  v219 = *v214;

  v576 = v598;

  v220 = v599;
  v575 = v220;
  v599 = v192;

  v542 = sub_22CFF46F0(v216, v220, v217, v218, v219, v597);
  __swift_destroy_boxed_opaque_existential_1Tm(v639);
  __swift_destroy_boxed_opaque_existential_1Tm(&v642);
  __swift_destroy_boxed_opaque_existential_1Tm(&v645);
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  v579 = type metadata accessor for PowerLogger();
  swift_allocObject();
  v598 = sub_22CF8A84C();
  *&v629 = &off_28402CB48;
  *(&v628 + 1) = v618;
  *&v627 = v624;
  type metadata accessor for PersistentParticipant();
  v221 = swift_allocObject();
  *(v221 + 24) = 0;
  swift_unknownObjectWeakInit();
  v222 = swift_allocObject();

  v223 = swift_slowAlloc();
  *(v222 + 16) = v223;
  *v223 = 0;
  *(v221 + 72) = v222;
  v613 = v221;
  sub_22CEF44D4(&v627, v221 + 32);
  v224 = type metadata accessor for XPCInputBudgetManager();
  swift_allocObject();
  v225 = v625;

  v226 = v621;
  sub_22CFFFA0C(0, 1, 0);
  v228 = v227;
  v229 = type metadata accessor for InputServer();
  *&v629 = &off_28402DC90;
  *(&v628 + 1) = v229;
  v597 = v226;
  *&v627 = v226;
  v230 = v617;
  v646 = v617;
  v647 = &off_284029D28;
  *&v645 = v225;
  v643 = v224;
  v644 = &off_28402E6C0;
  *&v642 = v228;
  v640 = v617;
  v641 = &off_284029D50;
  v639[0] = v225;
  type metadata accessor for XPCInputParticipant();
  v621 = swift_allocObject();
  v231 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v229);
  v574 = &v542;
  MEMORY[0x28223BE20](v231, v231);
  v233 = (&v542 - ((v232 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v234 + 16))(v233);
  v235 = __swift_mutable_project_boxed_opaque_existential_1(&v645, v646);
  v573 = &v542;
  MEMORY[0x28223BE20](v235, v235);
  v237 = (&v542 - ((v236 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v238 + 16))(v237);
  v239 = __swift_mutable_project_boxed_opaque_existential_1(&v642, v643);
  v572 = &v542;
  MEMORY[0x28223BE20](v239, v239);
  v241 = (&v542 - ((v240 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v242 + 16))(v241);
  v243 = __swift_mutable_project_boxed_opaque_existential_1(v639, v640);
  v571 = &v542;
  MEMORY[0x28223BE20](v243, v243);
  v245 = (&v542 - ((v244 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v246 + 16))(v245);
  v247 = *v233;
  v248 = *v237;
  v249 = *v241;
  v250 = *v245;
  v638[4] = &off_28402DC90;
  v638[3] = v229;
  v638[0] = v247;
  v637[4] = &off_284029D28;
  v637[3] = v230;
  v637[0] = v248;
  v636[4] = &off_28402E6C0;
  v636[3] = v224;
  v636[0] = v249;
  v635 = &off_284029D50;
  v634 = v230;
  v633[0] = v250;
  v251 = sub_22CEEC38C();
  v569 = "ant has no ActivityManager";

  sub_22D0164EC();
  v631 = MEMORY[0x277D84F90];
  v567 = sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  v568 = sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  v565 = *MEMORY[0x277D85260];
  v252 = v587;
  v588 = v588[13];
  v253 = v589;
  (v588)(v587);
  v570 = v251;
  v254 = sub_22D0169BC();
  v255 = v621;
  *(v621 + 2) = v254;
  v569 = "nCore.XPCInputParticipant";
  sub_22D0164EC();
  v631 = MEMORY[0x277D84F90];
  sub_22D016ADC();
  (v588)(v252, v565, v253);
  v255[3] = sub_22D0169BC();
  v256 = MEMORY[0x277D84F90];
  v255[15] = sub_22CFF7114(MEMORY[0x277D84F90]);
  v255[16] = sub_22CFF72FC(v256);
  v255[17] = sub_22CFF74E4(v256);
  v257 = MEMORY[0x277D84FA0];
  v255[18] = MEMORY[0x277D84FA0];
  sub_22D014EBC();
  v255[19] = sub_22D014EAC();
  v255[25] = v257;
  v589 = v255 + 25;
  v255[27] = 0;
  swift_unknownObjectWeakInit();
  sub_22CEE3A84(v638, (v255 + 4));
  v258 = v626;
  v255[9] = v626;
  sub_22CEE3A84(v637, (v255 + 28));
  sub_22CEE3A84(v633, (v255 + 10));
  sub_22CEE3A84(v636, (v255 + 20));
  __swift_project_boxed_opaque_existential_1(v633, v634);
  v259 = off_284029D58;

  v631 = v259();
  v632 = v255[2];
  v260 = v632;
  v261 = sub_22D01693C();
  v262 = v590;
  (*(*(v261 - 8) + 56))(v590, 1, 1, v261);
  v263 = v260;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B78, &qword_22D01C650);
  sub_22CEE8394(&qword_28143FAB0, &qword_27D9F3B78, &qword_22D01C650, MEMORY[0x277CBCD90]);
  sub_22CFF8F4C(&qword_28143FA10, sub_22CEEC38C, MEMORY[0x277D85228]);
  v264 = v591;
  sub_22D01647C();
  sub_22CEEC3D8(v262, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  sub_22CEE8394(&unk_28143DA18, &unk_27D9F3B58, &unk_22D01C630, MEMORY[0x277CBCD60]);
  v265 = v596;
  sub_22D0164AC();

  (*(v592 + 8))(v264, v265);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v636);
  __swift_destroy_boxed_opaque_existential_1Tm(v637);
  __swift_destroy_boxed_opaque_existential_1Tm(v638);
  __swift_destroy_boxed_opaque_existential_1Tm(v633);
  __swift_destroy_boxed_opaque_existential_1Tm(v639);
  __swift_destroy_boxed_opaque_existential_1Tm(&v642);
  __swift_destroy_boxed_opaque_existential_1Tm(&v645);
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  v266 = objc_allocWithZone(type metadata accessor for PushFrequentUpdatesObservationServer());
  v588 = v577;

  v267 = v575;
  sub_22CFDA090(v267, v258, v623);
  v587 = v268;
  type metadata accessor for XPCOutputParticipant(0);
  v269 = swift_allocObject();
  v270 = v581;
  *(v269 + 16) = v581;
  v271 = qword_28143FB58;
  v272 = v270;
  if (v271 != -1)
  {
    swift_once();
  }

  v273 = v611;
  v274 = __swift_project_value_buffer(v611, qword_281444498);
  (*(v610 + 16))(v595, v274, v273);
  v596 = v269;
  sub_22D01631C();
  v586 = v272;

  type metadata accessor for DismissParticipant();
  v275 = swift_allocObject();

  v611 = sub_22CFF43DC(v276, v275);
  type metadata accessor for DurationEnforcerParticipant();
  v277 = swift_allocObject();

  v610 = sub_22CFF40BC(v278, v277, 28800.0);
  *&v629 = &off_28402BFA0;
  v279 = v612;
  *(&v628 + 1) = v612;
  v280 = v576;
  *&v627 = v576;
  type metadata accessor for AppEventParticipant();
  v281 = swift_allocObject();
  v282 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v279);
  MEMORY[0x28223BE20](v282, v282);
  v283 = (&v542 - v578);
  (v603)(&v542 - v578);
  v284 = *v283;
  v285 = v624;

  v585 = v280;
  v604 = sub_22CFF36C8(v284, v285, v281);
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  *&v629 = &off_284029420;
  v286 = v616;
  *(&v628 + 1) = v616;
  *&v627 = v258;
  type metadata accessor for PushParticipant();
  v287 = swift_allocObject();
  v288 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v286);
  v591 = *(*(v286 - 8) + 64);
  MEMORY[0x28223BE20](v288, v288);
  v592 = (v289 + 15) & 0xFFFFFFFFFFFFFFF0;
  v290 = (&v542 - v592);
  v292 = *(v291 + 16);
  v589 = (v291 + 16);
  v590 = v292;
  v292(&v542 - v592);
  v293 = *v290;
  v294 = v614;

  v295 = v267;
  v603 = v295;
  v296 = v599;

  v297 = v600;

  v612 = sub_22CFF2D14(v295, v297, v294, v293, v296, v287);
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  type metadata accessor for KeepAliveParticipant();
  v298 = swift_allocObject();
  v299 = swift_allocObject();
  v300 = swift_slowAlloc();
  *(v299 + 16) = v300;
  *v300 = 0;
  v298[2] = v299;
  v298[3] = MEMORY[0x277D84FA0];
  v298[4] = 0;
  v298[6] = 0;
  v609 = v298;
  swift_unknownObjectWeakInit();
  *&v629 = &off_284029D68;
  v301 = v617;
  *(&v628 + 1) = v617;
  *&v627 = v625;
  type metadata accessor for AssertionParticipant();
  v302 = swift_allocObject();
  v303 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v301);
  MEMORY[0x28223BE20](v303, v303);
  v305 = (&v542 - ((v304 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v306 + 16))(v305);
  v307 = *v305;
  v302[5] = v301;
  v302[6] = &off_284029D68;
  v617 = v302;
  v302[2] = v307;

  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  type metadata accessor for CountEnforcerParticipant();
  v308 = swift_allocObject();
  *&v629 = &off_28402CB48;
  *(&v628 + 1) = v618;
  *&v627 = v624;
  *(v308 + 24) = 0;
  swift_unknownObjectWeakInit();
  v309 = swift_allocObject();

  v310 = swift_slowAlloc();
  *(v309 + 16) = v310;
  *v310 = 0;
  *(v308 + 88) = v309;
  sub_22CEF44D4(&v627, v308 + 32);
  v619 = v308;
  *(v308 + 72) = v580;
  *&v629 = &off_28402AF20;
  v311 = v579;
  *(&v628 + 1) = v579;
  *&v627 = v598;
  v646 = sub_22D015EDC();
  v647 = MEMORY[0x277D4D608];
  v312 = v603;
  *&v645 = v603;
  v643 = v582;
  v644 = MEMORY[0x277D4D628];
  *&v642 = v297;
  type metadata accessor for PowerLogParticipant();
  v313 = swift_allocObject();
  v314 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v311);
  MEMORY[0x28223BE20](v314, v314);
  v316 = (&v542 - ((v315 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v317 + 16))(v316);
  v318 = *v316;
  v313[5] = v311;
  v313[6] = &off_28402AF20;
  v313[2] = v318;
  sub_22CEF44D4(&v645, (v313 + 7));
  v618 = v313;
  sub_22CEF44D4(&v642, (v313 + 12));
  v584 = v312;

  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  *&v629 = &off_284029420;
  *(&v628 + 1) = v286;
  v319 = v626;
  *&v627 = v626;
  type metadata accessor for AuthorizationParticipant();
  v320 = swift_allocObject();
  v321 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v286);
  MEMORY[0x28223BE20](v321, v321);
  v322 = v592;
  v323 = v590;
  v590(&v542 - v592);
  v324 = *(&v542 - v322);

  v603 = sub_22CFEAA74(v324, v320, sub_22CF46328, &unk_28402DFA0, sub_22CFF8E5C);
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  type metadata accessor for StaleParticipant();
  v325 = swift_allocObject();

  v595 = sub_22CFF29E0(v326, 0, 1, v325);
  *&v629 = &off_284029420;
  *(&v628 + 1) = v286;
  *&v627 = v319;
  type metadata accessor for FrequentPushParticipant();
  v327 = swift_allocObject();
  v328 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v286);
  MEMORY[0x28223BE20](v328, v328);
  v329 = (&v542 - v322);
  v323(v329);
  v330 = *v329;

  v616 = sub_22CFEAA74(v330, v327, sub_22CF463EC, &unk_28402DF78, sub_22CFF8E54);
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  *&v629 = &off_284029998;
  v331 = v608;
  *(&v628 + 1) = v608;
  *&v627 = v615;
  type metadata accessor for MomentaryParticipant();
  v332 = swift_allocObject();
  v333 = __swift_mutable_project_boxed_opaque_existential_1(&v627, v331);
  MEMORY[0x28223BE20](v333, v333);
  v334 = (&v542 - v583);
  v605(&v542 - v583);
  v335 = *v334;

  v608 = sub_22CFEB290(v335, v332);
  __swift_destroy_boxed_opaque_existential_1Tm(&v627);
  type metadata accessor for DelayedStartParticipant();
  v336 = swift_allocObject();

  v607 = sub_22CFF43DC(v337, v336);
  v629 = 0u;
  v630 = 0u;
  v627 = 0u;
  v628 = 0u;
  v338 = type metadata accessor for ActivityPreferenceReplicationFilter();
  v339 = objc_allocWithZone(v338);
  v340 = v624;

  v341 = [v339 init];
  v646 = v338;
  v647 = &off_28402A550;
  *&v645 = v341;
  type metadata accessor for ReplicatorParticipant();
  v342 = swift_allocObject();
  v343 = sub_22CFF22E8(v340, &v627, &v645, v342);
  v344 = objc_allocWithZone(type metadata accessor for ActivityRemoteSubscriptionPreferencesObservationServer());
  v345 = swift_retain_n();
  v606 = v343;
  sub_22CFDEB60(v345, v623);
  v605 = v346;
  *(v597 + OBJC_IVAR____TtC11SessionCore11InputServer_delegate + 8) = &off_28402A2D8;
  swift_unknownObjectWeakAssign();
  v347 = v613;
  v623 = &protocol descriptor for ActivityManagerInput;
  result = swift_conformsToProtocol2();
  v349 = v593;
  if (!result)
  {
    __break(1u);
    goto LABEL_83;
  }

  v350 = result;
  ObjectType = swift_getObjectType();
  v352 = v350[3];
  swift_retain_n();

  v352(v353, &off_28402C2E0, ObjectType, v350);

  v354 = *(v349 + 40);
  v355 = swift_allocObject();
  v355[2] = v347;
  v355[3] = &off_28402E608;
  v355[4] = v349;
  v356 = swift_allocObject();
  *(v356 + 16) = sub_22CFF8D0C;
  *(v356 + 24) = v355;
  *&v629 = sub_22CEF3C50;
  *(&v629 + 1) = v356;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_29;
  v357 = _Block_copy(&v627);

  dispatch_sync(v354, v357);
  _Block_release(v357);
  LOBYTE(v354) = swift_isEscapingClosureAtFileLocation();

  if (v354)
  {
    __break(1u);
    goto LABEL_63;
  }

  v326 = v621;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  v358 = result;
  v359 = swift_getObjectType();
  v360 = v358[3];

  v360(v349, &off_28402C2E0, v359, v358);
  v361 = *(v349 + 40);
  v362 = swift_allocObject();
  v362[2] = v326;
  v362[3] = &off_28402A2D0;
  v362[4] = v349;
  v363 = swift_allocObject();
  *(v363 + 16) = sub_22CFF9090;
  *(v363 + 24) = v362;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v363;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_17;
  v364 = _Block_copy(&v627);

  dispatch_sync(v361, v364);
  _Block_release(v364);
  LOBYTE(v361) = swift_isEscapingClosureAtFileLocation();

  if (v361)
  {
LABEL_63:
    __break(1u);
LABEL_64:
    __break(1u);
LABEL_65:
    __break(1u);
    goto LABEL_66;
  }

  v347 = v625;
  v326 = v623;
  v365 = swift_conformsToProtocol2();
  if (v365)
  {
    v366 = v365;
    v367 = swift_getObjectType();
    v368 = *(v366 + 24);
    swift_retain_n();

    v368(v369, &off_28402C2E0, v367, v366);
  }

  else
  {
  }

  v370 = *(v349 + 40);
  v371 = swift_allocObject();
  v371[2] = v347;
  v371[3] = &off_284029D20;
  v371[4] = v349;
  v372 = swift_allocObject();
  *(v372 + 16) = sub_22CFF9090;
  *(v372 + 24) = v371;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v372;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_28_0;
  v373 = _Block_copy(&v627);

  dispatch_sync(v370, v373);
  _Block_release(v373);
  LOBYTE(v370) = swift_isEscapingClosureAtFileLocation();

  if (v370)
  {
    goto LABEL_64;
  }

  v347 = v596;
  v374 = swift_conformsToProtocol2();
  if (v374)
  {
    v375 = v374;
    v376 = swift_getObjectType();
    v377 = *(v375 + 24);

    v377(v349, &off_28402C2E0, v376, v375);
  }

  else
  {
  }

  v378 = *(v349 + 40);
  v379 = swift_allocObject();
  v379[2] = v347;
  v379[3] = &off_28402E628;
  v379[4] = v349;
  v380 = swift_allocObject();
  *(v380 + 16) = sub_22CFF9090;
  *(v380 + 24) = v379;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v380;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_39;
  v381 = _Block_copy(&v627);

  dispatch_sync(v378, v381);
  _Block_release(v381);
  LOBYTE(v378) = swift_isEscapingClosureAtFileLocation();

  if (v378)
  {
    goto LABEL_65;
  }

  v382 = v612;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v383 = result;
  v384 = swift_getObjectType();
  v385 = v383[3];

  v385(v349, &off_28402C2E0, v384, v383);
  v386 = *(v349 + 40);
  v387 = swift_allocObject();
  v387[2] = v382;
  v387[3] = &off_28402B9D8;
  v387[4] = v349;
  v388 = swift_allocObject();
  *(v388 + 16) = sub_22CFF9090;
  *(v388 + 24) = v387;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v388;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_50_0;
  v389 = _Block_copy(&v627);

  dispatch_sync(v386, v389);
  _Block_release(v389);
  LOBYTE(v386) = swift_isEscapingClosureAtFileLocation();

  v347 = v611;
  if (v386)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_85:
    __break(1u);
    goto LABEL_86;
  }

  v390 = result;
  v391 = swift_getObjectType();
  v392 = v390[3];

  v392(v349, &off_28402C2E0, v391, v390);
  v393 = *(v349 + 40);
  v394 = swift_allocObject();
  v394[2] = v347;
  v394[3] = &off_28402BDB0;
  v394[4] = v349;
  v395 = swift_allocObject();
  *(v395 + 16) = sub_22CFF9090;
  *(v395 + 24) = v394;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v395;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_61;
  v396 = _Block_copy(&v627);

  dispatch_sync(v393, v396);
  _Block_release(v396);
  LOBYTE(v393) = swift_isEscapingClosureAtFileLocation();

  if (v393)
  {
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  v347 = v610;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_86:
    __break(1u);
    goto LABEL_87;
  }

  v397 = result;
  v398 = swift_getObjectType();
  v399 = v397[3];

  v399(v349, &off_28402C2E0, v398, v397);
  v400 = *(v349 + 40);
  v401 = swift_allocObject();
  v401[2] = v347;
  v401[3] = &off_28402C598;
  v401[4] = v349;
  v402 = swift_allocObject();
  *(v402 + 16) = sub_22CFF9090;
  *(v402 + 24) = v401;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v402;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_72_0;
  v403 = _Block_copy(&v627);

  dispatch_sync(v400, v403);
  _Block_release(v403);
  LOBYTE(v400) = swift_isEscapingClosureAtFileLocation();

  if (v400)
  {
LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  v347 = v604;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_87:
    __break(1u);
    goto LABEL_88;
  }

  v404 = result;
  v405 = swift_getObjectType();
  v406 = v404[3];

  v406(v349, &off_28402C2E0, v405, v404);
  v407 = *(v349 + 40);
  v408 = swift_allocObject();
  v408[2] = v347;
  v408[3] = &off_28402D378;
  v408[4] = v349;
  v409 = swift_allocObject();
  *(v409 + 16) = sub_22CFF9090;
  *(v409 + 24) = v408;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v409;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_83;
  v410 = _Block_copy(&v627);

  dispatch_sync(v407, v410);
  _Block_release(v410);
  LOBYTE(v407) = swift_isEscapingClosureAtFileLocation();

  if (v407)
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v347 = v609;
  v411 = swift_conformsToProtocol2();
  if (v411)
  {
    v412 = v411;
    v413 = swift_getObjectType();
    v414 = *(v412 + 24);

    v414(v349, &off_28402C2E0, v413, v412);
  }

  else
  {
  }

  v415 = *(v349 + 40);
  v416 = swift_allocObject();
  v416[2] = v347;
  v416[3] = &off_28402A278;
  v416[4] = v349;
  v417 = swift_allocObject();
  *(v417 + 16) = sub_22CFF9090;
  *(v417 + 24) = v416;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v417;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_94;
  v418 = _Block_copy(&v627);

  dispatch_sync(v415, v418);
  _Block_release(v418);
  LOBYTE(v415) = swift_isEscapingClosureAtFileLocation();

  if (v415)
  {
    goto LABEL_70;
  }

  v347 = v617;
  v419 = swift_conformsToProtocol2();
  if (v419)
  {
    v420 = v419;
    v421 = swift_getObjectType();
    v422 = *(v420 + 24);

    v422(v349, &off_28402C2E0, v421, v420);
  }

  else
  {
  }

  v423 = *(v349 + 40);
  v424 = swift_allocObject();
  v424[2] = v347;
  v424[3] = &off_28402A240;
  v424[4] = v349;
  v425 = swift_allocObject();
  *(v425 + 16) = sub_22CFF9090;
  *(v425 + 24) = v424;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v425;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_105;
  v426 = _Block_copy(&v627);

  dispatch_sync(v423, v426);
  _Block_release(v426);
  LOBYTE(v423) = swift_isEscapingClosureAtFileLocation();

  if (v423)
  {
    goto LABEL_71;
  }

  v347 = v619;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_88:
    __break(1u);
    goto LABEL_89;
  }

  v427 = result;
  v428 = swift_getObjectType();
  v429 = v427[3];

  v429(v349, &off_28402C2E0, v428, v427);
  v430 = *(v349 + 40);
  v431 = swift_allocObject();
  v431[2] = v347;
  v431[3] = &off_28402B5A0;
  v431[4] = v349;
  v432 = swift_allocObject();
  *(v432 + 16) = sub_22CFF9090;
  *(v432 + 24) = v431;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v432;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_116;
  v433 = _Block_copy(&v627);

  dispatch_sync(v430, v433);
  _Block_release(v433);
  LOBYTE(v430) = swift_isEscapingClosureAtFileLocation();

  if (v430)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
    goto LABEL_74;
  }

  v347 = v618;
  v434 = swift_conformsToProtocol2();
  if (v434)
  {
    v435 = v434;
    v436 = swift_getObjectType();
    v437 = *(v435 + 24);

    v437(v349, &off_28402C2E0, v436, v435);
  }

  else
  {
  }

  v438 = *(v349 + 40);
  v439 = swift_allocObject();
  v439[2] = v347;
  v439[3] = &off_28402EAB0;
  v439[4] = v349;
  v440 = swift_allocObject();
  *(v440 + 16) = sub_22CFF9090;
  *(v440 + 24) = v439;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v440;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_127;
  v441 = _Block_copy(&v627);

  dispatch_sync(v438, v441);
  _Block_release(v441);
  LOBYTE(v438) = swift_isEscapingClosureAtFileLocation();

  if (v438)
  {
    goto LABEL_73;
  }

  v347 = v603;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_89:
    __break(1u);
    goto LABEL_90;
  }

  v442 = result;
  v443 = swift_getObjectType();
  v444 = v442[3];

  v444(v349, &off_28402C2E0, v443, v442);
  v445 = *(v349 + 40);
  v446 = swift_allocObject();
  v446[2] = v347;
  v446[3] = &off_28402AB78;
  v446[4] = v349;
  v447 = swift_allocObject();
  *(v447 + 16) = sub_22CFF9090;
  *(v447 + 24) = v446;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v447;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_138;
  v448 = _Block_copy(&v627);

  dispatch_sync(v445, v448);
  _Block_release(v448);
  LOBYTE(v445) = swift_isEscapingClosureAtFileLocation();

  if (v445)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v347 = v595;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_90:
    __break(1u);
    goto LABEL_91;
  }

  v449 = result;
  v450 = swift_getObjectType();
  v451 = v449[3];

  v451(v349, &off_28402C2E0, v450, v449);
  v452 = *(v349 + 40);
  v453 = swift_allocObject();
  v453[2] = v347;
  v453[3] = &off_28402D2C0;
  v453[4] = v349;
  v454 = swift_allocObject();
  *(v454 + 16) = sub_22CFF9090;
  *(v454 + 24) = v453;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v454;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_149;
  v455 = _Block_copy(&v627);

  dispatch_sync(v452, v455);
  _Block_release(v455);
  LOBYTE(v452) = swift_isEscapingClosureAtFileLocation();

  if (v452)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v347 = v616;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v456 = result;
  v457 = swift_getObjectType();
  v458 = v456[3];

  v458(v349, &off_28402C2E0, v457, v456);
  v459 = *(v349 + 40);
  v460 = swift_allocObject();
  v460[2] = v347;
  v460[3] = &off_28402A690;
  v460[4] = v349;
  v461 = swift_allocObject();
  *(v461 + 16) = sub_22CFF9090;
  *(v461 + 24) = v460;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v461;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_160;
  v462 = _Block_copy(&v627);

  dispatch_sync(v459, v462);
  _Block_release(v462);
  LOBYTE(v459) = swift_isEscapingClosureAtFileLocation();

  if (v459)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v463 = v620;
  v464 = swift_conformsToProtocol2();
  if (v464)
  {
    v465 = v464;
    v466 = swift_getObjectType();
    v467 = *(v465 + 24);

    v467(v349, &off_28402C2E0, v466, v465);
    v463 = v620;
  }

  else
  {
  }

  v347 = v608;
  v468 = *(v349 + 40);
  v469 = swift_allocObject();
  v469[2] = v463;
  v469[3] = &off_284029DE0;
  v469[4] = v349;
  v470 = swift_allocObject();
  *(v470 + 16) = sub_22CFF9090;
  *(v470 + 24) = v469;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v470;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_171;
  v471 = _Block_copy(&v627);

  dispatch_sync(v468, v471);
  _Block_release(v471);
  LOBYTE(v468) = swift_isEscapingClosureAtFileLocation();

  if (v468)
  {
    goto LABEL_77;
  }

  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  v472 = result;
  v473 = swift_getObjectType();
  v474 = v472[3];

  v474(v349, &off_28402C2E0, v473, v472);
  v475 = *(v349 + 40);
  v476 = swift_allocObject();
  v476[2] = v347;
  v476[3] = &off_28402C680;
  v476[4] = v349;
  v477 = swift_allocObject();
  *(v477 + 16) = sub_22CFF9090;
  *(v477 + 24) = v476;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v477;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_182;
  v478 = _Block_copy(&v627);

  dispatch_sync(v475, v478);
  _Block_release(v478);
  LOBYTE(v475) = swift_isEscapingClosureAtFileLocation();

  if (v475)
  {
LABEL_78:
    __break(1u);
    goto LABEL_79;
  }

  v347 = v607;
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

  v479 = result;
  v480 = swift_getObjectType();
  v481 = v479[3];

  v481(v349, &off_28402C2E0, v480, v479);
  v482 = *(v349 + 40);
  v483 = swift_allocObject();
  v483[2] = v347;
  v483[3] = &off_28402ECC0;
  v483[4] = v349;
  v484 = swift_allocObject();
  *(v484 + 16) = sub_22CFF9090;
  *(v484 + 24) = v483;
  *&v629 = sub_22CFF9014;
  *(&v629 + 1) = v484;
  *&v627 = MEMORY[0x277D85DD0];
  *(&v627 + 1) = 1107296256;
  *&v628 = sub_22CEF3C20;
  *(&v628 + 1) = &block_descriptor_193;
  v485 = _Block_copy(&v627);

  dispatch_sync(v482, v485);
  _Block_release(v485);
  LOBYTE(v482) = swift_isEscapingClosureAtFileLocation();

  if (v482)
  {
LABEL_79:
    __break(1u);
    goto LABEL_80;
  }

  v486 = v606;
  result = swift_conformsToProtocol2();
  if (result)
  {
    v487 = result;
    v488 = swift_getObjectType();
    v489 = v487[3];
    swift_retain_n();

    v489(v490, &off_28402C2E0, v488, v487);

    v491 = *(v349 + 40);
    v492 = swift_allocObject();
    v492[2] = v486;
    v492[3] = &off_28402B100;
    v492[4] = v349;
    v493 = swift_allocObject();
    *(v493 + 16) = sub_22CFF9090;
    *(v493 + 24) = v492;
    *&v629 = sub_22CFF9014;
    *(&v629 + 1) = v493;
    *&v627 = MEMORY[0x277D85DD0];
    *(&v627 + 1) = 1107296256;
    *&v628 = sub_22CEF3C20;
    *(&v628 + 1) = &block_descriptor_204;
    v494 = _Block_copy(&v627);

    dispatch_sync(v491, v494);
    _Block_release(v494);
    LOBYTE(v491) = swift_isEscapingClosureAtFileLocation();

    v326 = v622;
    v347 = v625;
    if ((v491 & 1) == 0)
    {
      v495 = qword_281441CE0;

      if (v495 == -1)
      {
LABEL_61:
        v496 = off_281441CE8[0];
        v497 = *(off_281441CE8[0] + 16);
        os_unfair_lock_lock(v497);
        v498 = v556;
        sub_22CFF1E30(v347, 0xD000000000000010, 0x800000022D01F9B0, v556);
        os_unfair_lock_unlock(v497);

        v499 = *(v496 + 16);
        v500 = v612;

        os_unfair_lock_lock(v499);
        sub_22CFF1974(v500, 0x7672655368737570, 0xEA00000000007265, v498);
        os_unfair_lock_unlock(v499);

        v501 = *(v496 + 16);
        v502 = v613;

        os_unfair_lock_lock(v501);
        sub_22CFF14BC(v502, 0x7974697669746361, 0xED000065726F7453, v498);
        os_unfair_lock_unlock(v501);

        v503 = *(v496 + 16);
        v504 = v611;

        os_unfair_lock_lock(v503);
        sub_22CFF1004(v504, 0xD000000000000012, 0x800000022D0224F0, v498);
        os_unfair_lock_unlock(v503);

        v505 = *(v496 + 16);
        v506 = v610;

        os_unfair_lock_lock(v505);
        sub_22CFF0B4C(v506, 0xD00000000000001BLL, 0x800000022D022510, v498);
        os_unfair_lock_unlock(v505);

        v507 = *(v496 + 16);
        v508 = v609;

        os_unfair_lock_lock(v507);
        sub_22CFF0694(v508, 0xD000000000000014, 0x800000022D022530, v498);
        os_unfair_lock_unlock(v507);

        v509 = *(v496 + 16);

        os_unfair_lock_lock(v509);
        sub_22CFF01D8(v326, 0x656863536B736174, 0xED000072656C7564, v498);
        os_unfair_lock_unlock(v509);

        v510 = *(v496 + 16);
        v511 = v614;

        os_unfair_lock_lock(v510);
        sub_22CFEFD1C(v511, 0x67616E614D736F71, 0xEA00000000007265, v498);
        os_unfair_lock_unlock(v510);

        v512 = *(v496 + 16);
        v513 = v594;

        os_unfair_lock_lock(v512);
        sub_22CFEF860(v513, 0x4D737365636F7270, 0xEE00726F74696E6FLL, v498);
        os_unfair_lock_unlock(v512);

        v514 = *(v496 + 16);

        os_unfair_lock_lock(v514);
        sub_22CFEF3A4(v349, 0x7974697669746361, 0xEF726567616E614DLL, v498);
        os_unfair_lock_unlock(v514);

        v515 = *(v496 + 16);
        v516 = v626;

        os_unfair_lock_lock(v515);
        sub_22CFEEEEC(v516, 0xD000000000000014, 0x800000022D01FB00, v498);
        os_unfair_lock_unlock(v515);

        v517 = *(v496 + 16);
        v518 = v597;
        v623 = v518;
        os_unfair_lock_lock(v517);
        sub_22CFEEA38(v518, 0x7265537475706E69, 0xEB00000000726576, v498);
        os_unfair_lock_unlock(v517);

        v519 = *(v496 + 16);
        v520 = v595;

        os_unfair_lock_lock(v519);
        sub_22CFEE580(v520, 0xD000000000000010, 0x800000022D022550, v498);
        os_unfair_lock_unlock(v519);

        v521 = *(v496 + 16);
        v522 = v608;

        os_unfair_lock_lock(v521);
        sub_22CFEE0C8(v522, 0xD000000000000014, 0x800000022D022570, v498);
        os_unfair_lock_unlock(v521);

        v523 = *(v496 + 16);
        v524 = v585;
        v597 = v524;
        os_unfair_lock_lock(v523);
        sub_22CFEDC14(v524, 0xD000000000000010, 0x800000022D01DC60, v498);
        os_unfair_lock_unlock(v523);

        v525 = *(v496 + 16);
        v526 = v607;

        os_unfair_lock_lock(v525);
        sub_22CFED75C(v526, 0xD000000000000017, 0x800000022D022590, v498);
        os_unfair_lock_unlock(v525);

        v527 = *(v496 + 16);
        os_unfair_lock_lock(v527);
        v528 = v606;
        sub_22CFED2A4(v606, 0xD000000000000015, 0x800000022D022160, v498);
        os_unfair_lock_unlock(v527);

        result = v564;
        v529 = v587;
        v564[13] = v550;
        result[14] = v529;
        v530 = v615;
        result[15] = v614;
        result[16] = v530;
        v531 = v554;
        result[17] = v625;
        result[18] = v531;
        v533 = v552;
        v532 = v553;
        result[19] = v551;
        result[20] = v532;
        v534 = v599;
        result[21] = v533;
        result[22] = v534;
        v535 = v601;
        result[23] = v623;
        result[24] = v535;
        v536 = v584;
        result[25] = v586;
        result[26] = v536;
        v537 = v597;
        result[27] = v543;
        result[28] = v537;
        result[29] = v542;
        result[30] = v528;
        result[31] = v605;
        v538 = v622;
        result[2] = v588;
        result[3] = v538;
        v539 = v559;
        result[4] = v560;
        result[5] = v539;
        v540 = v557;
        result[6] = v558;
        result[7] = v540;
        result[9] = v349;
        result[8] = MEMORY[0x277D4D428];
        v541 = v555;
        result[10] = v498;
        result[11] = v541;
        return result;
      }

LABEL_81:
      swift_once();
      goto LABEL_61;
    }

LABEL_80:
    __break(1u);
    goto LABEL_81;
  }

LABEL_94:
  __break(1u);
  return result;
}

void sub_22CFE92E0()
{
  v1 = sub_22D01561C();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22CFCCC14();
  v6 = *(v0[11] + OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_listener);
  if (!v6)
  {
    __break(1u);
    goto LABEL_18;
  }

  [v6 activate];
  v7 = *(v0[5] + OBJC_IVAR____TtC11SessionCore18AlertServiceServer_listener);
  if (!v7)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  [v7 activate];
  v8 = *(v0[13] + OBJC_IVAR____TtC11SessionCore19AuthorizationServer_listener);
  if (!v8)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  [v8 activate];
  v9 = *(v0[25] + OBJC_IVAR____TtC11SessionCore12OutputServer_listener);
  if (!v9)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  [v9 activate];
  v10 = *(v0[19] + OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_listener);
  if (!v10)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  [v10 activate];
  v11 = *(v0[20] + OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_listener);
  if (!v11)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  [v11 activate];
  v12 = *(v0[21] + OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_listener);
  if (!v12)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  [v12 activate];
  v13 = *(v0[23] + OBJC_IVAR____TtC11SessionCore11InputServer_listener);
  if (!v13)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  [v13 activate];
  sub_22CFD2258();
  v14 = *(v0[18] + OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_listener);
  if (!v14)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  [v14 activate];
  sub_22D015ECC();
  sub_22D0156BC();
  [*(v0[28] + OBJC_IVAR____TtC11SessionCore16AppEventObserver_applicationWorkspace) addObserver_];
  sub_22CFC4DB0();
  v15 = *(v0[14] + OBJC_IVAR____TtC11SessionCore36PushFrequentUpdatesObservationServer_listener);
  if (!v15)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  [v15 activate];
  if (v0[30])
  {

    sub_22CF8C40C();
  }

  v16 = v0[31];
  if (!v16)
  {
    goto LABEL_16;
  }

  v17 = *(v16 + OBJC_IVAR____TtC11SessionCore54ActivityRemoteSubscriptionPreferencesObservationServer_listener);
  if (v17)
  {
    [v17 activate];
LABEL_16:
    v18 = objc_opt_self();
    sub_22D0155FC();
    sub_22D01560C();
    (*(v2 + 8))(v5, v1);
    v19 = sub_22D01666C();

    v20 = [v18 activateManualDomain_];
    swift_unknownObjectRelease();

    return;
  }

LABEL_27:
  __break(1u);
}

id *Daemon.deinit()
{

  swift_unknownObjectRelease();

  return v0;
}

uint64_t Daemon.__deallocating_deinit()
{
  Daemon.deinit();

  return swift_deallocClassInstance();
}

void sub_22CFE9704(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (qword_27D9F1E40 != -1)
  {
    swift_once();
  }

  v7 = sub_22D01637C();
  __swift_project_value_buffer(v7, qword_27D9F40B8);

  v8 = sub_22D01636C();
  v9 = sub_22D01690C();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v12[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = sub_22CEEE31C(a2, a3, v12);
    _os_log_impl(&dword_22CEE1000, v8, v9, "%{public}s: Received", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x2318C6860](v11, -1, -1);
    MEMORY[0x2318C6860](v10, -1, -1);
  }

  swift_beginAccess();
  *(a4 + 16) = 0;
}

void *sub_22CFE9870(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v32 = v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE0, &qword_22D01C7E0);
  v8 = *(v7 - 8);
  v34 = v7;
  v35 = v8;
  MEMORY[0x28223BE20](v7, v9);
  v33 = v31 - v10;
  v11 = sub_22D01697C();
  v12 = *(v11 - 8);
  v36 = v11;
  v37 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_22D01691C();
  MEMORY[0x28223BE20](v16, v17);
  v18 = sub_22D01653C();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v40[3] = type metadata accessor for AppEventObserver();
  v40[4] = &off_28402BFA0;
  v40[0] = a1;
  a2[2] = 0xD000000000000020;
  a2[3] = 0x800000022D022C50;
  v31[0] = a2;
  sub_22CEEC38C();
  v31[2] = "nStatusEventDate";
  sub_22D01651C();
  v38 = MEMORY[0x277D84F90];
  v31[1] = sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  v20 = *MEMORY[0x277D85268];
  v21 = *(v37 + 104);
  v37 += 104;
  v21(v15, v20, v36);
  a2[9] = sub_22D0169BC();
  sub_22D0164EC();
  v38 = MEMORY[0x277D84F90];
  sub_22D016ADC();
  v21(v15, *MEMORY[0x277D85260], v36);
  v22 = sub_22D0169BC();
  v23 = v31[0];
  *(v31[0] + 80) = v22;
  *(v23 + 88) = MEMORY[0x277D84FA0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
  swift_allocObject();
  *(v23 + 96) = sub_22D01642C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2670, &qword_22D018BE8);
  swift_allocObject();
  *(v23 + 104) = sub_22D01642C();
  swift_allocObject();
  *(v23 + 112) = sub_22D01642C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2668, &qword_22D018BE0);
  swift_allocObject();
  *(v23 + 120) = sub_22D01642C();
  *(v23 + 128) = 0u;
  *(v23 + 144) = 0u;
  sub_22CEE3A84(v40, v23 + 32);
  __swift_project_boxed_opaque_existential_1((v23 + 32), *(v23 + 56));
  v38 = sub_22CFC4AB0();
  v39 = *(v23 + 72);
  v24 = v39;
  v25 = sub_22D01693C();
  v26 = v32;
  (*(*(v25 - 8) + 56))(v32, 1, 1, v25);
  v27 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE8, &qword_22D01C7E8);
  sub_22CEE8394(&qword_28143FAA8, &qword_27D9F3BE8, &qword_22D01C7E8, MEMORY[0x277CBCD90]);
  sub_22CFF8F4C(&qword_28143FA10, sub_22CEEC38C, MEMORY[0x277D85228]);
  v28 = v33;
  sub_22D01647C();
  sub_22CEEC3D8(v26, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  sub_22CEE8394(&qword_28143FAC8, &qword_27D9F3BE0, &qword_22D01C7E0, MEMORY[0x277CBCD60]);
  v29 = v34;
  sub_22D0164AC();

  (*(v35 + 8))(v28, v29);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  sub_22CF471B4();
  __swift_destroy_boxed_opaque_existential_1Tm(v40);
  return v23;
}

void sub_22CFE9F80(void *a1, uint64_t a2, char *a3)
{
  v31 = a1;
  v30 = sub_22D01697C();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v6);
  v28 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01691C();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_22D01653C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v29 = type metadata accessor for AssertionManager();
  v37 = v29;
  v38 = &off_284029D40;
  v36[0] = a2;
  *&a3[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_listener] = 0;
  v12 = OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_lock;
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *(v13 + 16) = v14;
  *v14 = 0;
  *&a3[v12] = v13;
  *&a3[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer__lock_clients] = MEMORY[0x277D84F98];
  v15 = MEMORY[0x277D84F90];
  *&a3[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer__lock_prominentActivityIdentifiers] = MEMORY[0x277D84F90];
  *&a3[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_prominenceSubscription] = 0;
  v27[1] = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = v15;
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v5 + 104))(v28, *MEMORY[0x277D85268], v30);
  v16 = v31;
  *&a3[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_requestProcessingQueue] = sub_22D0169BC();
  v17 = type metadata accessor for ProminenceObservationServiceServer();
  v35.receiver = a3;
  v35.super_class = v17;
  v18 = objc_msgSendSuper2(&v35, sel_init);
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v19 = off_284029D48;
  v20 = v18;
  aBlock[0] = v19();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE8, &qword_22D01C7E8);
  sub_22CEE8394(&qword_28143FAA8, &qword_27D9F3BE8, &qword_22D01C7E8, MEMORY[0x277CBCD90]);
  v21 = sub_22D0164AC();

  *&v20[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_prominenceSubscription] = v21;

  v33 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_22CFF8F2C;
  *(v22 + 24) = &v32;
  aBlock[4] = sub_22CFF908C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_354;
  v23 = _Block_copy(aBlock);
  v24 = objc_opt_self();

  v25 = [v24 listenerWithConfigurator_];

  _Block_release(v23);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v26 = *&v20[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_listener];
    *&v20[OBJC_IVAR____TtC11SessionCore34ProminenceObservationServiceServer_listener] = v25;

    __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }
}

void sub_22CFEA4F8(void *a1, uint64_t a2, char *a3)
{
  v31 = a1;
  v30 = sub_22D01697C();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v6);
  v28 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01691C();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_22D01653C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v29 = type metadata accessor for AssertionManager();
  v37 = v29;
  v38 = &off_284029D50;
  v36[0] = a2;
  *&a3[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_listener] = 0;
  v12 = OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_lock;
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *(v13 + 16) = v14;
  *v14 = 0;
  *&a3[v12] = v13;
  v15 = MEMORY[0x277D84F98];
  *&a3[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer__lock_clients] = MEMORY[0x277D84F98];
  *&a3[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer__lock_presentations] = v15;
  *&a3[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_presentationSubscription] = 0;
  v27[1] = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v5 + 104))(v28, *MEMORY[0x277D85268], v30);
  v16 = v31;
  *&a3[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_requestProcessingQueue] = sub_22D0169BC();
  v17 = type metadata accessor for PresentationObservationServiceServer();
  v35.receiver = a3;
  v35.super_class = v17;
  v18 = objc_msgSendSuper2(&v35, sel_init);
  __swift_project_boxed_opaque_existential_1(v36, v37);
  v19 = off_284029D58;
  v20 = v18;
  aBlock[0] = v19();
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B78, &qword_22D01C650);
  sub_22CEE8394(&qword_28143FAB0, &qword_27D9F3B78, &qword_22D01C650, MEMORY[0x277CBCD90]);
  v21 = sub_22D0164AC();

  *&v20[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_presentationSubscription] = v21;

  v33 = v20;
  v22 = swift_allocObject();
  *(v22 + 16) = sub_22CFF8F34;
  *(v22 + 24) = &v32;
  aBlock[4] = sub_22CFF908C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_364;
  v23 = _Block_copy(aBlock);
  v24 = objc_opt_self();

  v25 = [v24 listenerWithConfigurator_];

  _Block_release(v23);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v26 = *&v20[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_listener];
    *&v20[OBJC_IVAR____TtC11SessionCore36PresentationObservationServiceServer_listener] = v25;

    __swift_destroy_boxed_opaque_existential_1Tm(v36);
  }
}

void *sub_22CFEAA74(uint64_t a1, void *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t a5)
{
  v11[3] = type metadata accessor for AuthorizationManager();
  v11[4] = &off_284029420;
  v11[0] = a1;
  type metadata accessor for UnfairLock();
  v8 = swift_allocObject();
  v9 = swift_slowAlloc();
  *(v8 + 16) = v9;
  *v9 = 0;
  a2[2] = v8;
  a2[8] = MEMORY[0x277D84FA0];
  a2[9] = MEMORY[0x277D84F98];
  a2[11] = 0;
  swift_unknownObjectWeakInit();
  sub_22CEE3A84(v11, (a2 + 3));
  __swift_project_boxed_opaque_existential_1(a2 + 3, a2[6]);
  a3();
  swift_allocObject();
  swift_weakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4080, &qword_22D01C7B0);
  sub_22CEE8394(&qword_28143D9E0, &unk_27D9F4080, &qword_22D01C7B0, MEMORY[0x277CBCD90]);
  sub_22D0164AC();

  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return a2;
}

void sub_22CFEAC30(uint64_t a1, void *a2, char *a3)
{
  v25 = a2;
  v24 = sub_22D01697C();
  v5 = *(v24 - 8);
  MEMORY[0x28223BE20](v24, v6);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01691C();
  MEMORY[0x28223BE20](v9, v10);
  v11 = sub_22D01653C();
  MEMORY[0x28223BE20](v11 - 8, v12);
  v30[3] = type metadata accessor for StateCaptureService();
  v30[4] = &off_284029BB0;
  v30[0] = a1;
  *&a3[OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_listener] = 0;
  v13 = sub_22CEEC38C();
  v23[0] = "tivitiesd.AssertionManager";
  v23[1] = v13;
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v5 + 104))(v8, *MEMORY[0x277D85268], v24);
  v14 = v25;
  *&a3[OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_requestProcessingQueue] = sub_22D0169BC();
  sub_22CEE3A84(v30, &a3[OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_stateCaptureManager]);
  v15 = type metadata accessor for StateCaptureServiceServer();
  v29.receiver = a3;
  v29.super_class = v15;
  v16 = objc_msgSendSuper2(&v29, sel_init);
  v27 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = sub_22CFF8F44;
  *(v17 + 24) = &v26;
  aBlock[4] = sub_22CFF908C;
  aBlock[5] = v17;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_378;
  v18 = _Block_copy(aBlock);
  v19 = objc_opt_self();
  v20 = v16;

  v21 = [v19 listenerWithConfigurator_];
  _Block_release(v18);

  __swift_destroy_boxed_opaque_existential_1Tm(v30);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v22 = *&v20[OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_listener];
    *&v20[OBJC_IVAR____TtC11SessionCore25StateCaptureServiceServer_listener] = v21;
  }
}

id sub_22CFEB050(uint64_t a1, char *a2)
{
  v14[3] = type metadata accessor for KnownClientStore();
  v14[4] = &off_28402C270;
  v14[0] = a1;
  *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver____lazy_storage___addedPublisher] = 0;
  v4 = OBJC_IVAR____TtC11SessionCore16AppEventObserver__addedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3480, &qword_22D01B598);
  swift_allocObject();
  *&a2[v4] = sub_22D01642C();
  *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver____lazy_storage___removedPublisher] = 0;
  v5 = OBJC_IVAR____TtC11SessionCore16AppEventObserver__removedPublisher;
  swift_allocObject();
  *&a2[v5] = sub_22D01642C();
  *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver____lazy_storage___restrictionsChangedPublisher] = 0;
  v6 = OBJC_IVAR____TtC11SessionCore16AppEventObserver__restrictionsChangedPublisher;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3470, &qword_22D018BA0);
  swift_allocObject();
  *&a2[v6] = sub_22D01642C();
  v7 = MEMORY[0x277D84FA0];
  *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver_subscriptions] = MEMORY[0x277D84FA0];
  v8 = OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B60, &qword_22D01C638);
  v9 = swift_allocObject();
  *(v9 + 16) = 0;
  *&a2[v8] = v9;
  *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver_lock_restrictions] = v7;
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver_applicationWorkspace] = result;
    sub_22CEE3A84(v14, &a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver_knownClientStore]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C20, &qword_22D01C820);
    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_22D0189F0;
    *(v11 + 32) = [objc_allocWithZone(type metadata accessor for ManagedConfigRestrictionProvider()) init];
    *(v11 + 40) = &off_28402BF68;
    *(v11 + 48) = [objc_allocWithZone(type metadata accessor for AppProtectionRestrictionProvider()) init];
    *(v11 + 56) = &off_28402BF48;
    *&a2[OBJC_IVAR____TtC11SessionCore16AppEventObserver_restrictionProviders] = v11;
    v13.receiver = a2;
    v13.super_class = type metadata accessor for AppEventObserver();
    v12 = objc_msgSendSuper2(&v13, sel_init);
    __swift_destroy_boxed_opaque_existential_1Tm(v14);
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_22CFEB290(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LockStateObserver();
  v9[3] = v4;
  v9[4] = &off_284029998;
  v9[0] = a1;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  v7 = MEMORY[0x277D84F98];
  a2[2] = v5;
  a2[3] = v7;
  a2[4] = MEMORY[0x277D84FA0];
  a2[6] = 0;
  swift_unknownObjectWeakInit();
  __swift_project_boxed_opaque_existential_1(v9, v4);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BB0, &qword_22D01C7A8);
  sub_22CEE8394(&qword_28143FAA0, &qword_27D9F3BB0, &qword_22D01C7A8, MEMORY[0x277CBCD90]);
  sub_22D0164AC();

  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v9);
  return a2;
}

void sub_22CFEB448(uint64_t a1, uint64_t a2, void *a3, int a4, char *a5)
{
  v33 = a4;
  v32 = a3;
  v31 = sub_22D01697C();
  v8 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v9);
  v30 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_22D01691C();
  MEMORY[0x28223BE20](v11, v12);
  v13 = sub_22D01653C();
  MEMORY[0x28223BE20](v13 - 8, v14);
  v37[3] = type metadata accessor for ProcessManager();
  v37[4] = &off_284029E18;
  v37[0] = a1;
  v36[3] = type metadata accessor for KnownClientStore();
  v36[4] = &off_28402C270;
  v36[0] = a2;
  v15 = MEMORY[0x277D84F98];
  *&a5[OBJC_IVAR____TtC11SessionCore12OutputServer__lock_clients] = MEMORY[0x277D84F98];
  *&a5[OBJC_IVAR____TtC11SessionCore12OutputServer__lock_activities] = v15;
  v16 = OBJC_IVAR____TtC11SessionCore12OutputServer_lock;
  type metadata accessor for UnfairLock();
  v17 = swift_allocObject();
  v18 = swift_slowAlloc();
  *(v17 + 16) = v18;
  *v18 = 0;
  *&a5[v16] = v17;
  *&a5[OBJC_IVAR____TtC11SessionCore12OutputServer_listener] = 0;
  v29 = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v8 + 104))(v30, *MEMORY[0x277D85268], v31);
  v19 = v32;
  *&a5[OBJC_IVAR____TtC11SessionCore12OutputServer_requestProcessingQueue] = sub_22D0169BC();
  sub_22CEE3A84(v37, &a5[OBJC_IVAR____TtC11SessionCore12OutputServer_processManager]);
  sub_22CEE3A84(v36, &a5[OBJC_IVAR____TtC11SessionCore12OutputServer_knownClientStore]);
  v20 = type metadata accessor for OutputServer();
  v35.receiver = a5;
  v35.super_class = v20;
  v21 = objc_msgSendSuper2(&v35, sel_init);
  v23 = v21;
  if (v33)
  {
    MEMORY[0x28223BE20](v21, v22);
    *(&v29 - 2) = v23;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_22CFF8F14;
    *(v24 + 24) = &v29 - 4;
    aBlock[4] = sub_22CFF908C;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEE5AA0;
    aBlock[3] = &block_descriptor_331;
    v25 = _Block_copy(aBlock);
    v26 = objc_opt_self();

    v27 = [v26 listenerWithConfigurator_];
    _Block_release(v25);

    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);

    LOBYTE(v25) = swift_isEscapingClosureAtFileLocation();

    if (v25)
    {
      __break(1u);
    }

    else
    {
      v28 = *&v23[OBJC_IVAR____TtC11SessionCore12OutputServer_listener];
      *&v23[OBJC_IVAR____TtC11SessionCore12OutputServer_listener] = v27;
    }
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v36);
    __swift_destroy_boxed_opaque_existential_1Tm(v37);
  }
}

void *sub_22CFEB948(uint64_t a1, void *a2)
{
  v11[3] = type metadata accessor for AlertServiceServer();
  v11[4] = &off_28402B5F8;
  v11[0] = a1;
  a2[3] = 0;
  swift_unknownObjectWeakInit();
  v4 = sub_22D01666C();
  v5 = [objc_opt_self() serviceForClientIdentifier_];

  a2[9] = v5;
  sub_22CEE3A84(v11, (a2 + 4));
  swift_beginAccess();
  v6 = a2[7];
  v7 = a2[8];
  __swift_mutable_project_boxed_opaque_existential_1((a2 + 4), v6);
  v8 = *(v7 + 32);

  v8(v9, &off_28402D040, v6, v7);
  swift_endAccess();
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return a2;
}

void sub_22CFEBA70(void *a1, uint64_t a2, char *a3)
{
  v29 = a1;
  v28 = sub_22D01697C();
  v5 = *(v28 - 8);
  MEMORY[0x28223BE20](v28, v6);
  v27 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01691C();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_22D01653C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v34[3] = type metadata accessor for AssertionManager();
  v34[4] = &off_284029D68;
  v34[0] = a2;
  v12 = OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_lock;
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *(v13 + 16) = v14;
  *v14 = 0;
  *&a3[v12] = v13;
  v15 = OBJC_IVAR____TtC11SessionCore22AssertionServiceServer__lock_clients;
  v16 = MEMORY[0x277D84F90];
  *&a3[v15] = sub_22CFF7DDC(MEMORY[0x277D84F90]);
  *&a3[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_listener] = 0;
  v26 = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = v16;
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v5 + 104))(v27, *MEMORY[0x277D85268], v28);
  v17 = v29;
  *&a3[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_requestProcessingQueue] = sub_22D0169BC();
  sub_22CEE3A84(v34, &a3[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_assertionManager]);
  v18 = type metadata accessor for AssertionServiceServer();
  v33.receiver = a3;
  v33.super_class = v18;
  v19 = objc_msgSendSuper2(&v33, sel_init);
  v31 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = sub_22CFF8F3C;
  *(v20 + 24) = &v30;
  aBlock[4] = sub_22CFF908C;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_371;
  v21 = _Block_copy(aBlock);
  v22 = objc_opt_self();
  v23 = v19;

  v24 = [v22 listenerWithConfigurator_];
  _Block_release(v21);

  __swift_destroy_boxed_opaque_existential_1Tm(v34);

  LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

  if (v17)
  {
    __break(1u);
  }

  else
  {
    v25 = *&v23[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_listener];
    *&v23[OBJC_IVAR____TtC11SessionCore22AssertionServiceServer_listener] = v24;
  }
}

void *sub_22CFEBEDC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for LockStateObserver();
  v15 = v4;
  v16 = &off_284029998;
  v14[0] = a1;
  a2[4] = 0;
  type metadata accessor for UnfairLock();
  v5 = swift_allocObject();
  v6 = swift_slowAlloc();
  *(v5 + 16) = v6;
  *v6 = 0;
  a2[10] = v5;
  __swift_project_boxed_opaque_existential_1(v14, v4);
  if (off_2840299A8[0]())
  {
    goto LABEL_6;
  }

  if (qword_28143DBD8 != -1)
  {
    swift_once();
  }

  if ((byte_281444380 & 1) == 0)
  {
LABEL_6:
    v12 = sub_22D01616C();
    v13 = MEMORY[0x277D4D650];
    __swift_allocate_boxed_opaque_existential_1(v11);
    sub_22D01615C();
  }

  else
  {
    v12 = sub_22D01616C();
    v13 = MEMORY[0x277D4D650];
    __swift_allocate_boxed_opaque_existential_1(v11);
    sub_22D01614C();
  }

  sub_22CEE3A84(v11, (a2 + 11));
  sub_22CEE3A84(v14, (a2 + 5));
  sub_22CEE3A84(v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C18, &qword_22D01C818);
  swift_allocObject();
  v7 = sub_22D01644C();
  a2[3] = v7;
  v10[0] = v7;
  sub_22CEE8394(&unk_28143FA88, &qword_27D9F3C18, &qword_22D01C818, MEMORY[0x277CBCE48]);
  a2[2] = sub_22D01646C();
  v10[0] = *(*__swift_project_boxed_opaque_existential_1(v14, v15) + 16);
  swift_allocObject();
  swift_weakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BB0, &qword_22D01C7A8);
  sub_22CEE8394(&qword_28143FAA0, &qword_27D9F3BB0, &qword_22D01C7A8, MEMORY[0x277CBCD90]);
  v8 = sub_22D0164AC();

  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  a2[4] = v8;

  __swift_destroy_boxed_opaque_existential_1Tm(v14);
  return a2;
}

uint64_t sub_22CFEC1A8(uint64_t a1, uint64_t a2, void *a3, int a4)
{
  v24 = type metadata accessor for ProcessManager();
  v25 = &off_284029E18;
  v23[0] = a1;
  v21 = type metadata accessor for KnownClientStore();
  v22 = &off_28402C270;
  v20[0] = a2;
  v8 = objc_allocWithZone(type metadata accessor for OutputServer());
  v9 = __swift_mutable_project_boxed_opaque_existential_1(v23, v24);
  MEMORY[0x28223BE20](v9, v9);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v12 + 16))(v11);
  v13 = __swift_mutable_project_boxed_opaque_existential_1(v20, v21);
  MEMORY[0x28223BE20](v13, v13);
  v15 = (v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v16 + 16))(v15);
  sub_22CFEB448(*v11, *v15, a3, a4, v8);
  v18 = v17;
  __swift_destroy_boxed_opaque_existential_1Tm(v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v23);
  return v18;
}

uint64_t sub_22CFEC38C(void *a1, uint64_t a2)
{
  type metadata accessor for PersistentPushSubscriptionStore();
  swift_allocObject();
  v3 = a1;
  sub_22D011CDC(v3);
  type metadata accessor for PersistentPublicTokenStore();
  swift_allocObject();
  v4 = v3;
  sub_22D00BE10(v4);
  type metadata accessor for PersistentPushTokenStore();
  swift_allocObject();
  sub_22CFC8CB8(v4);
  sub_22D01613C();
  sub_22D01612C();
  sub_22D015EDC();
  sub_22CFF8F4C(&unk_2814402C0, type metadata accessor for PersistentPushSubscriptionStore, &unk_22D01D750);
  sub_22CFF8F4C(qword_2814404B0, type metadata accessor for PersistentPublicTokenStore, &unk_22D01D48C);
  sub_22CFF8F4C(qword_2814405D8, type metadata accessor for PersistentPushTokenStore, &unk_22D01B69C);
  sub_22D015FFC();

  return sub_22D015E8C();
}

void sub_22CFEC594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v52 = a6;
  v53 = a4;
  v51 = sub_22D01697C();
  v49 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v10);
  v47 = v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01691C();
  MEMORY[0x28223BE20](v12, v13);
  v46[2] = v46 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_22D01653C();
  MEMORY[0x28223BE20](v15 - 8, v16);
  v46[1] = v46 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = sub_22D015EDC();
  v64[3] = v50;
  v64[4] = MEMORY[0x277D4D608];
  v64[0] = a1;
  v18 = type metadata accessor for ProcessManager();
  v63[3] = v18;
  v63[4] = &off_284029E18;
  v63[0] = a2;
  v62[3] = type metadata accessor for PersistentActivityStore();
  v62[4] = &off_28402CB48;
  v62[0] = a3;
  v19 = type metadata accessor for AuthorizationManager();
  v60 = v19;
  v61 = &off_284029420;
  v59[0] = a5;
  v48 = type metadata accessor for PushTokenServer();
  v20 = objc_allocWithZone(v48);
  v21 = __swift_mutable_project_boxed_opaque_existential_1(v63, v18);
  MEMORY[0x28223BE20](v21, v21);
  v23 = (v46 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v24 + 16))(v23);
  v25 = __swift_mutable_project_boxed_opaque_existential_1(v59, v60);
  MEMORY[0x28223BE20](v25, v25);
  v27 = (v46 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v28 + 16))(v27);
  v29 = *v23;
  v30 = *v27;
  v58[3] = v18;
  v58[4] = &off_284029E18;
  v57[4] = &off_284029420;
  v58[0] = v29;
  v57[3] = v19;
  v57[0] = v30;
  v31 = MEMORY[0x277D84FA0];
  *&v20[OBJC_IVAR____TtC11SessionCore15PushTokenServer_subscriptions] = MEMORY[0x277D84FA0];
  *&v20[OBJC_IVAR____TtC11SessionCore15PushTokenServer_listener] = 0;
  v32 = OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock;
  type metadata accessor for UnfairLock();
  v33 = swift_allocObject();
  v34 = swift_slowAlloc();
  *(v33 + 16) = v34;
  *v34 = 0;
  *&v20[v32] = v33;
  *&v20[OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_clients] = v31;
  v35 = OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_tokens;
  *&v20[OBJC_IVAR____TtC11SessionCore15PushTokenServer_lock_tokens] = v31;
  v46[0] = sub_22CEEC38C();
  sub_22D01651C();
  v55[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v49 + 104))(v47, *MEMORY[0x277D85268], v51);
  v36 = v52;
  *&v20[OBJC_IVAR____TtC11SessionCore15PushTokenServer_requestProcessingQueue] = sub_22D0169BC();
  sub_22CEE3A84(v64, &v20[OBJC_IVAR____TtC11SessionCore15PushTokenServer_pushServer]);
  sub_22CEE3A84(v58, &v20[OBJC_IVAR____TtC11SessionCore15PushTokenServer_processManager]);
  sub_22CEE3A84(v62, &v20[OBJC_IVAR____TtC11SessionCore15PushTokenServer_activityStore]);
  sub_22CEE3A84(v57, &v20[OBJC_IVAR____TtC11SessionCore15PushTokenServer_authorizationManager]);
  *&v20[OBJC_IVAR____TtC11SessionCore15PushTokenServer_knownClientStore] = v53;

  v37 = sub_22D015EEC();
  v38 = sub_22CF7C338(v37);

  *&v20[v35] = v38;

  v56.receiver = v20;
  v56.super_class = v48;
  v39 = objc_msgSendSuper2(&v56, sel_init);
  v54[2] = v39;
  v40 = swift_allocObject();
  *(v40 + 16) = sub_22CFF8F0C;
  *(v40 + 24) = v54;
  v55[4] = sub_22CFF908C;
  v55[5] = v40;
  v55[0] = MEMORY[0x277D85DD0];
  v55[1] = 1107296256;
  v55[2] = sub_22CEE5AA0;
  v55[3] = &block_descriptor_321;
  v41 = _Block_copy(v55);
  v42 = objc_opt_self();
  v43 = v39;

  v44 = [v42 listenerWithConfigurator_];
  _Block_release(v41);

  __swift_destroy_boxed_opaque_existential_1Tm(v62);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);

  LOBYTE(v41) = swift_isEscapingClosureAtFileLocation();

  if (v41)
  {
    __break(1u);
  }

  else
  {
    v45 = *&v43[OBJC_IVAR____TtC11SessionCore15PushTokenServer_listener];
    *&v43[OBJC_IVAR____TtC11SessionCore15PushTokenServer_listener] = v44;

    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    __swift_destroy_boxed_opaque_existential_1Tm(v59);
    __swift_destroy_boxed_opaque_existential_1Tm(v63);
  }
}

void sub_22CFECC9C(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v40 = a3;
  v41 = a4;
  v6 = sub_22D01697C();
  v38 = *(v6 - 8);
  v39 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v37 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22D01691C();
  MEMORY[0x28223BE20](v9, v10);
  v35[1] = v35 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01653C();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v49[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B70, &qword_22D01C648);
  v49[4] = &off_28402E860;
  v49[0] = a1;
  v48[3] = &type metadata for DefaultInputBackoffPolicy;
  v48[4] = &off_28402E710;
  v14 = type metadata accessor for KnownClientStore();
  v47[3] = v14;
  v47[4] = &off_28402C270;
  v47[0] = a2;
  v36 = type metadata accessor for InputServer();
  v15 = objc_allocWithZone(v36);
  __swift_mutable_project_boxed_opaque_existential_1(v48, &type metadata for DefaultInputBackoffPolicy);
  v16 = __swift_mutable_project_boxed_opaque_existential_1(v47, v14);
  MEMORY[0x28223BE20](v16, v16);
  v18 = (v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v19 + 16))(v18);
  v20 = *v18;
  v46[3] = &type metadata for DefaultInputBackoffPolicy;
  v46[4] = &off_28402E710;
  v45[3] = v14;
  v45[4] = &off_28402C270;
  v45[0] = v20;
  *&v15[OBJC_IVAR____TtC11SessionCore11InputServer_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  *&v15[OBJC_IVAR____TtC11SessionCore11InputServer_listener] = 0;
  v21 = OBJC_IVAR____TtC11SessionCore11InputServer_lock;
  type metadata accessor for UnfairLock();
  v22 = swift_allocObject();
  v23 = swift_slowAlloc();
  *(v22 + 16) = v23;
  *v23 = 0;
  *&v15[v21] = v22;
  *&v15[OBJC_IVAR____TtC11SessionCore11InputServer_clients] = MEMORY[0x277D84FA0];
  sub_22CEEC38C();
  sub_22D01651C();
  v43[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v38 + 104))(v37, *MEMORY[0x277D85268], v39);
  v24 = v40;
  *&v15[OBJC_IVAR____TtC11SessionCore11InputServer_queue] = sub_22D0169BC();
  sub_22CEE3A84(v49, &v15[OBJC_IVAR____TtC11SessionCore11InputServer_activityAuthorizer]);
  sub_22CEE3A84(v46, &v15[OBJC_IVAR____TtC11SessionCore11InputServer_backoffPolicy]);
  v25 = &v15[OBJC_IVAR____TtC11SessionCore11InputServer_pushServer];
  v26 = MEMORY[0x277D4D5F0];
  *v25 = v41;
  v25[1] = v26;
  v27 = MEMORY[0x277D4D608];
  v25[2] = MEMORY[0x277D4D600];
  v25[3] = v27;
  sub_22CEE3A84(v45, &v15[OBJC_IVAR____TtC11SessionCore11InputServer_knownClientStore]);
  v44.receiver = v15;
  v44.super_class = v36;
  v28 = objc_msgSendSuper2(&v44, sel_init);
  v42[2] = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = sub_22CFF8F04;
  *(v29 + 24) = v42;
  v43[4] = sub_22CEE5B1C;
  v43[5] = v29;
  v43[0] = MEMORY[0x277D85DD0];
  v43[1] = 1107296256;
  v43[2] = sub_22CEE5AA0;
  v43[3] = &block_descriptor_314;
  v30 = _Block_copy(v43);
  v31 = objc_opt_self();
  v32 = v28;

  v33 = [v31 listenerWithConfigurator_];
  _Block_release(v30);

  __swift_destroy_boxed_opaque_existential_1Tm(v49);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  __swift_destroy_boxed_opaque_existential_1Tm(v46);

  LOBYTE(v24) = swift_isEscapingClosureAtFileLocation();

  if (v24)
  {
    __break(1u);
  }

  else
  {
    v34 = *&v32[OBJC_IVAR____TtC11SessionCore11InputServer_listener];
    *&v32[OBJC_IVAR____TtC11SessionCore11InputServer_listener] = v33;

    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    __swift_destroy_boxed_opaque_existential_1Tm(v48);
  }
}

uint64_t sub_22CFED2A4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for ReplicatorParticipant();
  v28[4] = &off_28402B088;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000015;
    v12[3] = 0x800000022D0227E0;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF8DD4;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF8DD4, v11, 0xD000000000000015, 0x800000022D0227E0, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000015, 0x800000022D0227E0, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFED75C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for DelayedStartParticipant();
  v28[4] = &off_28402EC58;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000017;
    v12[3] = 0x800000022D022860;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000017, 0x800000022D022860, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000017, 0x800000022D022860, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFEDC14(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for AppEventObserver();
  v29[4] = &off_28402BF88;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);
  v9 = a1;
  if (v8 && (, sub_22CEEC698(a2, a3), v11 = v10, , (v11 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v12 = swift_allocObject();
    sub_22CEF44D4(v28, v12 + 16);
    type metadata accessor for StateCaptureItem();
    v13 = swift_allocObject();
    v13[2] = 0xD000000000000010;
    v13[3] = 0x800000022D022880;
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = sub_22CFF9010;
    v13[7] = v12;
    v14 = qword_281441AC8;

    if (v14 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v12, 0xD000000000000010, 0x800000022D022880, qword_281441AD0, (v13 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v15 = sub_22D01637C();
    __swift_project_value_buffer(v15, qword_2814444C8);

    v16 = sub_22D01636C();
    v17 = sub_22D01690C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v28[0] = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_22CEEE31C(0xD000000000000010, 0x800000022D022880, v28);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v16, v17, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v19, -1, -1);
      MEMORY[0x2318C6860](v18, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFEE0C8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for MomentaryParticipant();
  v28[4] = &off_28402C618;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000014;
    v12[3] = 0x800000022D0228A0;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000014, 0x800000022D0228A0, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000014, 0x800000022D0228A0, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFEE580(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for StaleParticipant();
  v28[4] = &off_28402D258;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000010;
    v12[3] = 0x800000022D0228C0;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000010, 0x800000022D0228C0, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000010, 0x800000022D0228C0, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFEEA38(void *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v29[3] = type metadata accessor for InputServer();
  v29[4] = &off_2840291F0;
  v29[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);
  v9 = a1;
  if (v8 && (, sub_22CEEC698(a2, a3), v11 = v10, , (v11 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v22 = sub_22D01637C();
    __swift_project_value_buffer(v22, qword_2814444C8);

    v23 = sub_22D01636C();
    v24 = sub_22D0168EC();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v28[0] = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v23, v24, "[state-capture] identifier [%{public}s] is already in use", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x2318C6860](v26, -1, -1);
      MEMORY[0x2318C6860](v25, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v29, v28);
    v12 = swift_allocObject();
    sub_22CEF44D4(v28, v12 + 16);
    type metadata accessor for StateCaptureItem();
    v13 = swift_allocObject();
    v13[2] = 0x7265537475706E49;
    v13[3] = 0xEB00000000726576;
    v13[4] = a2;
    v13[5] = a3;
    v13[6] = sub_22CFF9010;
    v13[7] = v12;
    v14 = qword_281441AC8;

    if (v14 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v12, 0x7265537475706E49, 0xEB00000000726576, qword_281441AD0, (v13 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v15 = sub_22D01637C();
    __swift_project_value_buffer(v15, qword_2814444C8);

    v16 = sub_22D01636C();
    v17 = sub_22D01690C();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *&v28[0] = v19;
      *v18 = 136446466;
      *(v18 + 4) = sub_22CEEE31C(0x7265537475706E49, 0xEB00000000726576, v28);
      *(v18 + 12) = 2082;
      *(v18 + 14) = sub_22CEEE31C(a2, a3, v28);
      _os_log_impl(&dword_22CEE1000, v16, v17, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v18, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v19, -1, -1);
      MEMORY[0x2318C6860](v18, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v13, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v27;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  return result;
}

uint64_t sub_22CFEEEEC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for AuthorizationManager();
  v28[4] = &off_284029408;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000014;
    v12[3] = 0x800000022D0228E0;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000014, 0x800000022D0228E0, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000014, 0x800000022D0228E0, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFEF3A4(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for ActivityManager();
  v28[4] = &off_28402C2C8;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0x7974697669746341;
    v12[3] = 0xEF726567616E614DLL;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0x7974697669746341, 0xEF726567616E614DLL, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0x7974697669746341, 0xEF726567616E614DLL, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFEF860(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for ProcessMonitor();
  v28[4] = &off_284029838;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    strcpy((v12 + 16), "ProcessMonitor");
    *(v12 + 31) = -18;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;
    *(v12 + 48) = sub_22CFF9010;
    *(v12 + 56) = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0x4D737365636F7250, 0xEE00726F74696E6FLL, qword_281441AD0, v12 + 64);

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0x4D737365636F7250, 0xEE00726F74696E6FLL, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFEFD1C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for QoSManager();
  v28[4] = &off_28402AFD8;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0x67616E614D536F51;
    v12[3] = 0xEA00000000007265;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0x67616E614D536F51, 0xEA00000000007265, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0x67616E614D536F51, 0xEA00000000007265, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFF01D8(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for TaskScheduler();
  v28[4] = &off_28402BB50;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    strcpy((v12 + 16), "TaskScheduler");
    *(v12 + 30) = -4864;
    *(v12 + 32) = a2;
    *(v12 + 40) = a3;
    *(v12 + 48) = sub_22CFF9010;
    *(v12 + 56) = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0x656863536B736154, 0xED000072656C7564, qword_281441AD0, v12 + 64);

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0x656863536B736154, 0xED000072656C7564, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFF0694(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for KeepAliveParticipant();
  v28[4] = &off_28402A248;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000014;
    v12[3] = 0x800000022D022900;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000014, 0x800000022D022900, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000014, 0x800000022D022900, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFF0B4C(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for DurationEnforcerParticipant();
  v28[4] = &off_28402C530;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD00000000000001BLL;
    v12[3] = 0x800000022D022920;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD00000000000001BLL, 0x800000022D022920, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD00000000000001BLL, 0x800000022D022920, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFF1004(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for DismissParticipant();
  v28[4] = &off_28402BD48;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000012;
    v12[3] = 0x800000022D022940;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000012, 0x800000022D022940, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000012, 0x800000022D022940, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFF14BC(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for PersistentParticipant();
  v28[4] = &off_28402E588;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000015;
    v12[3] = 0x800000022D022960;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000015, 0x800000022D022960, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000015, 0x800000022D022960, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFF1974(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for PushParticipant();
  v28[4] = &off_28402B958;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0x7472615068737550;
    v12[3] = 0xEF746E6170696369;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0x7472615068737550, 0xEF746E6170696369, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0x7472615068737550, 0xEF746E6170696369, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFF1E30(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v28[3] = type metadata accessor for AssertionManager();
  v28[4] = &off_284029CC0;
  v28[0] = a1;
  swift_beginAccess();
  v8 = *(*(a4 + 16) + 16);

  if (v8 && (, sub_22CEEC698(a2, a3), v10 = v9, , (v10 & 1) != 0))
  {
    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v21 = sub_22D01637C();
    __swift_project_value_buffer(v21, qword_2814444C8);

    v22 = sub_22D01636C();
    v23 = sub_22D0168EC();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *&v27[0] = v25;
      *v24 = 136446210;
      *(v24 + 4) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v22, v23, "[state-capture] identifier [%{public}s] is already in use", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x2318C6860](v25, -1, -1);
      MEMORY[0x2318C6860](v24, -1, -1);
    }

    result = sub_22D016CFC();
    __break(1u);
  }

  else
  {
    sub_22CEE3A84(v28, v27);
    v11 = swift_allocObject();
    sub_22CEF44D4(v27, v11 + 16);
    type metadata accessor for StateCaptureItem();
    v12 = swift_allocObject();
    v12[2] = 0xD000000000000010;
    v12[3] = 0x800000022D022980;
    v12[4] = a2;
    v12[5] = a3;
    v12[6] = sub_22CFF9010;
    v12[7] = v11;
    v13 = qword_281441AC8;

    if (v13 != -1)
    {
      swift_once();
    }

    sub_22CF67684(sub_22CFF9010, v11, 0xD000000000000010, 0x800000022D022980, qword_281441AD0, (v12 + 8));

    if (qword_28143FB68 != -1)
    {
      swift_once();
    }

    v14 = sub_22D01637C();
    __swift_project_value_buffer(v14, qword_2814444C8);

    v15 = sub_22D01636C();
    v16 = sub_22D01690C();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *&v27[0] = v18;
      *v17 = 136446466;
      *(v17 + 4) = sub_22CEEE31C(0xD000000000000010, 0x800000022D022980, v27);
      *(v17 + 12) = 2082;
      *(v17 + 14) = sub_22CEEE31C(a2, a3, v27);
      _os_log_impl(&dword_22CEE1000, v15, v16, "[state-capture] added StateCaptureItem with title: %{public}s, identifier: %{public}s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x2318C6860](v18, -1, -1);
      MEMORY[0x2318C6860](v17, -1, -1);
    }

    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *(a4 + 16);
    *(a4 + 16) = 0x8000000000000000;
    sub_22CFBEED0(v12, a2, a3, isUniquelyReferenced_nonNull_native);

    *(a4 + 16) = v26;
    swift_endAccess();

    return __swift_destroy_boxed_opaque_existential_1Tm(v28);
  }

  return result;
}

uint64_t sub_22CFF22E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v42 = a4;
  v43 = a2;
  v45 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3B38, qword_22D01C440);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v44 = v38 - v7;
  v40 = sub_22D01697C();
  v8 = *(v40 - 8);
  MEMORY[0x28223BE20](v40, v9);
  v11 = v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22D01691C();
  MEMORY[0x28223BE20](v12, v13);
  v14 = sub_22D01653C();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v50[3] = type metadata accessor for PersistentActivityStore();
  v50[4] = &off_28402CB48;
  v50[0] = a1;
  v41 = sub_22CEEC38C();
  v39 = "AssertionManager";
  sub_22D0164EC();
  *&v46 = MEMORY[0x277D84F90];
  v38[3] = sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v38[2] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  v16 = *MEMORY[0x277D85260];
  v17 = v8 + 104;
  v18 = *(v8 + 104);
  v38[1] = v17;
  v38[0] = v11;
  v19 = v40;
  v18(v11, v16, v40);
  v20 = sub_22D0169BC();
  v21 = v42;
  *(v42 + 16) = v20;
  v39 = "atorParticipant.internal";
  sub_22D0164EC();
  *&v46 = MEMORY[0x277D84F90];
  sub_22D016ADC();
  v18(v38[0], v16, v19);
  v22 = v43;
  v23 = sub_22D0169BC();
  v24 = v21;
  *(v21 + 136) = 0u;
  v25 = v21 + 136;
  *(v25 - 112) = v23;
  *(v25 + 16) = 0u;
  *(v25 + 32) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B60, &qword_22D01C638);
  v26 = swift_allocObject();
  *(v26 + 16) = 0;
  *(v25 + 40) = v26;
  *(v25 + 56) = 0;
  swift_unknownObjectWeakInit();
  v27 = MEMORY[0x277D84F98];
  *(v25 + 64) = MEMORY[0x277D84F98];
  *(v25 + 72) = v27;
  *(v25 + 80) = v27;
  *(v25 + 88) = 0;
  sub_22CEE3A84(v50, v25 - 40);
  if (*(v22 + 24))
  {
    sub_22CEEB6DC(v22, &v46, &qword_27D9F2E28, &unk_22D01A838);
  }

  else
  {
    v31 = sub_22D01591C();
    swift_allocObject();
    v32 = sub_22D01590C();
    *&v48 = MEMORY[0x277D466F8];
    *(&v48 + 1) = MEMORY[0x277D466B0];
    *&v49 = MEMORY[0x277D46690];
    *(&v49 + 1) = MEMORY[0x277D466B8];
    *(&v47 + 1) = v31;
    *&v46 = v32;
  }

  v28 = v45;
  v29 = v47;
  *(v24 + 32) = v46;
  *(v24 + 48) = v29;
  v30 = v49;
  *(v24 + 64) = v48;
  *(v24 + 80) = v30;
  swift_beginAccess();
  sub_22CFF8DDC(v28, v25);
  swift_endAccess();
  v33 = sub_22D0150DC();
  (*(*(v33 - 8) + 56))(v44, 1, 1, v33);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2EF0, &unk_22D01A8C0);
  swift_allocObject();
  *(v24 + 232) = sub_22D01644C();
  swift_beginAccess();
  v34 = *(v24 + 160);
  if (v34)
  {
    v35 = *(v24 + 168);
    __swift_mutable_project_boxed_opaque_existential_1(v25, *(v24 + 160));
    v36 = *(v35 + 24);

    v36(sub_22CFF8E4C, v24, v34, v35);
  }

  swift_endAccess();
  sub_22CEEC3D8(v28, &qword_27D9F2E40, &qword_22D01A858);
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  sub_22CEEC3D8(v22, &qword_27D9F2E28, &unk_22D01A838);
  return v24;
}

uint64_t sub_22CFF29E0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v23 = a3;
  v22 = a2;
  v6 = sub_22D01697C();
  v20 = *(v6 - 8);
  v21 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01691C();
  MEMORY[0x28223BE20](v10, v11);
  v12 = sub_22D01653C();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v26 = type metadata accessor for TaskScheduler();
  v27 = sub_22CFF8F4C(&qword_28143F548, type metadata accessor for TaskScheduler, &unk_22D01B09C);
  *&v25 = a1;
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *(a4 + 16) = v14;
  v19[1] = sub_22CEEC38C();
  sub_22D0164EC();
  v24 = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v20 + 104))(v9, *MEMORY[0x277D85260], v21);
  *(a4 + 72) = sub_22D0169BC();
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0u;
  v16 = MEMORY[0x277D84F98];
  *(a4 + 112) = 0;
  *(a4 + 120) = v16;
  *(a4 + 136) = 0;
  swift_unknownObjectWeakInit();
  sub_22CEF44D4(&v25, a4 + 24);
  v17 = *&v22;
  if (v23)
  {
    v17 = 120.0;
  }

  *(a4 + 64) = v17;
  return a4;
}

void *sub_22CFF2D14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BB8, &qword_22D01C7B8);
  v53 = *(v52 - 8);
  MEMORY[0x28223BE20](v52, v12);
  v51 = &v41 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v46 = &v41 - v16;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BC0, &qword_22D01C7C0);
  v50 = *(v49 - 8);
  MEMORY[0x28223BE20](v49, v17);
  v47 = &v41 - v18;
  v44 = sub_22D01697C();
  v43 = *(v44 - 1);
  MEMORY[0x28223BE20](v44, v19);
  v42 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D01691C();
  MEMORY[0x28223BE20](v21, v22);
  v23 = sub_22D01653C();
  MEMORY[0x28223BE20](v23 - 8, v24);
  v45 = sub_22D015EDC();
  v61[3] = v45;
  v61[4] = MEMORY[0x277D4D608];
  v61[0] = a1;
  v60[3] = sub_22D015FFC();
  v60[4] = MEMORY[0x277D4D628];
  v60[0] = a2;
  v48 = type metadata accessor for QoSManager();
  v59[3] = v48;
  v59[4] = &off_28402AFF0;
  v59[0] = a3;
  v58[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B70, &qword_22D01C648);
  v58[4] = &off_28402E860;
  v58[0] = a5;
  v25 = type metadata accessor for AuthorizationManager();
  v57[4] = &off_284029420;
  v57[3] = v25;
  v57[0] = a4;
  a6[3] = 0;
  swift_unknownObjectWeakInit();
  v54 = sub_22CEEC38C();
  sub_22D0164EC();
  v55[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v43 + 104))(v42, *MEMORY[0x277D85260], v44);
  a6[4] = sub_22D0169BC();
  type metadata accessor for UnfairLock();
  v26 = swift_allocObject();
  v27 = swift_slowAlloc();
  *(v26 + 16) = v27;
  *v27 = 0;
  a6[5] = v26;
  a6[31] = MEMORY[0x277D84FA0];
  sub_22CEE3A84(v61, (a6 + 6));
  sub_22CEE3A84(v60, (a6 + 11));
  sub_22CEE3A84(v59, (a6 + 16));
  sub_22CEE3A84(v57, (a6 + 21));
  sub_22CEE3A84(v58, (a6 + 26));
  v55[0] = sub_22D015C9C();
  v56 = a6[4];
  v28 = v56;
  v29 = sub_22D01693C();
  v30 = *(v29 - 8);
  v44 = *(v30 + 56);
  v45 = v30 + 56;
  v31 = v46;
  v44(v46, 1, 1, v29);
  v32 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BC8, &qword_22D01C7C8);
  v43 = MEMORY[0x277CBCD90];
  sub_22CEE8394(&qword_28143FAC0, &qword_27D9F3BC8, &qword_22D01C7C8, MEMORY[0x277CBCD90]);
  v42 = sub_22CFF8F4C(&qword_28143FA10, sub_22CEEC38C, MEMORY[0x277D85228]);
  v33 = v47;
  sub_22D01647C();
  sub_22CEEC3D8(v31, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  v34 = MEMORY[0x277CBCD60];
  sub_22CEE8394(&unk_28143FAD8, &qword_27D9F3BC0, &qword_22D01C7C0, MEMORY[0x277CBCD60]);

  v35 = v49;
  sub_22D0164AC();

  (*(v50 + 8))(v33, v35);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v55[0] = off_28402AFF8();
  v56 = a6[4];
  v36 = v56;
  v44(v31, 1, 1, v29);
  v37 = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BD0, &qword_22D01C7D0);
  sub_22CEE8394(&qword_28143FAB8, &qword_27D9F3BD0, &qword_22D01C7D0, v43);
  v38 = v51;
  sub_22D01647C();
  sub_22CEEC3D8(v31, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();

  sub_22CEE8394(&qword_28143FAD0, &qword_27D9F3BB8, &qword_22D01C7B8, v34);
  v39 = v52;
  sub_22D0164AC();

  (*(v53 + 8))(v38, v39);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  __swift_destroy_boxed_opaque_existential_1Tm(v60);
  __swift_destroy_boxed_opaque_existential_1Tm(v57);
  __swift_destroy_boxed_opaque_existential_1Tm(v59);
  __swift_destroy_boxed_opaque_existential_1Tm(v61);
  return a6;
}

void *sub_22CFF36C8(uint64_t a1, uint64_t a2, void *a3)
{
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BD8, &qword_22D01C7D8);
  v52 = *(v51 - 8);
  MEMORY[0x28223BE20](v51, v6);
  v50 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v45 = &v44 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE0, &qword_22D01C7E0);
  v12 = *(v11 - 8);
  v59 = v11;
  v60 = v12;
  MEMORY[0x28223BE20](v11, v13);
  v54 = &v44 - v14;
  v58 = sub_22D01697C();
  v15 = *(v58 - 8);
  MEMORY[0x28223BE20](v58, v16);
  v18 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_22D01691C();
  MEMORY[0x28223BE20](v19, v20);
  v21 = sub_22D01653C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v64[3] = type metadata accessor for PersistentActivityStore();
  v64[4] = &off_28402CB48;
  v64[0] = a2;
  v63[3] = type metadata accessor for AppEventObserver();
  v63[4] = &off_28402BFA0;
  v63[0] = a1;
  a3[3] = 0;
  swift_unknownObjectWeakInit();
  v53 = sub_22CEEC38C();
  v57 = "ncore.PushParticipant.internal";
  sub_22D01651C();
  v61 = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v15 + 104))(v18, *MEMORY[0x277D85268], v58);
  a3[14] = sub_22D0169BC();
  a3[15] = MEMORY[0x277D84FA0];
  sub_22CEE3A84(v64, (a3 + 4));
  sub_22CEE3A84(v63, (a3 + 9));
  __swift_project_boxed_opaque_existential_1(a3 + 9, a3[12]);
  v61 = sub_22CFC4AB0();
  v62 = a3[14];
  v23 = v62;
  v57 = sub_22D01693C();
  v24 = *(v57 - 1);
  v56 = *(v24 + 56);
  v58 = v24 + 56;
  v25 = v45;
  v56(v45, 1, 1, v57);
  v26 = v23;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE8, &qword_22D01C7E8);
  v44 = MEMORY[0x277CBCD90];
  v48 = sub_22CEE8394(&qword_28143FAA8, &qword_27D9F3BE8, &qword_22D01C7E8, MEMORY[0x277CBCD90]);
  v55 = sub_22CFF8F4C(&qword_28143FA10, sub_22CEEC38C, MEMORY[0x277D85228]);
  v27 = v54;
  sub_22D01647C();
  sub_22CEEC3D8(v25, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  v28 = MEMORY[0x277CBCD60];
  v47 = sub_22CEE8394(&qword_28143FAC8, &qword_27D9F3BE0, &qword_22D01C7E0, MEMORY[0x277CBCD60]);

  v29 = v59;
  sub_22D0164AC();

  v30 = *(v60 + 8);
  v60 += 8;
  v46 = v30;
  v30(v27, v29);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a3 + 9, a3[12]);
  v61 = sub_22CFC4B98();
  v62 = a3[14];
  v31 = v62;
  v32 = v25;
  v56(v25, 1, 1, v57);
  v33 = v31;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BF0, &qword_22D01C7F0);
  sub_22CEE8394(&unk_28143D9B8, &qword_27D9F3BF0, &qword_22D01C7F0, v44);
  v34 = v50;
  sub_22D01647C();
  sub_22CEEC3D8(v32, &qword_27D9F3670, &qword_22D01BF00);

  v35 = swift_allocObject();
  swift_weakInit();
  v36 = swift_allocObject();
  *(v36 + 16) = sub_22CFF8E74;
  *(v36 + 24) = v35;
  sub_22CEE8394(&qword_28143DA00, &qword_27D9F3BD8, &qword_22D01C7D8, v28);
  v37 = v51;
  sub_22D0164AC();

  (*(v52 + 8))(v34, v37);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a3 + 9, a3[12]);
  v61 = sub_22CFC4A9C();
  v62 = a3[14];
  v38 = v62;
  v39 = v32;
  v56(v32, 1, 1, v57);
  v40 = v38;
  v41 = v54;
  sub_22D01647C();
  sub_22CEEC3D8(v39, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();

  v42 = v59;
  sub_22D0164AC();

  v46(v41, v42);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_destroy_boxed_opaque_existential_1Tm(v64);
  __swift_destroy_boxed_opaque_existential_1Tm(v63);
  return a3;
}

uint64_t sub_22CFF40BC(uint64_t a1, uint64_t a2, double a3)
{
  v6 = sub_22D01697C();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01691C();
  MEMORY[0x28223BE20](v10, v11);
  v12 = sub_22D01653C();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v23 = type metadata accessor for TaskScheduler();
  v24 = sub_22CFF8F4C(&qword_28143F548, type metadata accessor for TaskScheduler, &unk_22D01B09C);
  *&v22 = a1;
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *(a2 + 16) = v14;
  v18[1] = sub_22CEEC38C();
  sub_22D0164EC();
  v21 = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v19 + 104))(v9, *MEMORY[0x277D85260], v20);
  *(a2 + 72) = sub_22D0169BC();
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  v16 = MEMORY[0x277D84F98];
  *(a2 + 112) = 0;
  *(a2 + 120) = v16;
  *(a2 + 136) = 0;
  swift_unknownObjectWeakInit();
  sub_22CEF44D4(&v22, a2 + 24);
  *(a2 + 64) = a3;
  return a2;
}

uint64_t sub_22CFF43DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_22D01697C();
  v17 = *(v4 - 8);
  v18 = v4;
  MEMORY[0x28223BE20](v4, v5);
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01691C();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_22D01653C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v21 = type metadata accessor for TaskScheduler();
  v22 = sub_22CFF8F4C(&qword_28143F548, type metadata accessor for TaskScheduler, &unk_22D01B09C);
  *&v20 = a1;
  type metadata accessor for UnfairLock();
  v12 = swift_allocObject();
  v13 = swift_slowAlloc();
  *(v12 + 16) = v13;
  *v13 = 0;
  *(a2 + 16) = v12;
  v16[1] = sub_22CEEC38C();
  sub_22D0164EC();
  v19 = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v17 + 104))(v7, *MEMORY[0x277D85260], v18);
  *(a2 + 64) = sub_22D0169BC();
  *(a2 + 72) = 0u;
  *(a2 + 88) = 0u;
  v14 = MEMORY[0x277D84F98];
  *(a2 + 104) = 0;
  *(a2 + 112) = v14;
  *(a2 + 128) = 0;
  swift_unknownObjectWeakInit();
  sub_22CEF44D4(&v20, a2 + 24);
  return a2;
}

void *sub_22CFF46F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = sub_22D0164CC();
  v13 = *(v12 - 8);
  v80 = v12;
  v81 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v79 = v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4070, &unk_22D01D5D0);
  v17 = *(v16 - 8);
  v75 = v16;
  v76 = v17;
  MEMORY[0x28223BE20](v16, v18);
  v73 = v67 - v19;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BD8, &qword_22D01C7D8);
  v92 = *(v86 - 8);
  MEMORY[0x28223BE20](v86, v20);
  v85 = v67 - v21;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  MEMORY[0x28223BE20](v22 - 8, v23);
  v69 = v67 - v24;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE0, &qword_22D01C7E0);
  v91 = *(v71 - 8);
  MEMORY[0x28223BE20](v71, v25);
  v70 = v67 - v26;
  v93 = sub_22D01697C();
  v90 = *(v93 - 8);
  MEMORY[0x28223BE20](v93, v27);
  v89 = v67 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = sub_22D01691C();
  MEMORY[0x28223BE20](v29, v30);
  v31 = sub_22D01653C();
  v77 = *(v31 - 8);
  v78 = v31;
  MEMORY[0x28223BE20](v31, v32);
  v34 = v67 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100[3] = sub_22D015EDC();
  v100[4] = MEMORY[0x277D4D608];
  v100[0] = a2;
  v99[3] = type metadata accessor for AppEventObserver();
  v99[4] = &off_28402BFA0;
  v99[0] = a1;
  v98[3] = type metadata accessor for PushToStartAppBundleIDProvider();
  v98[4] = &off_28402D240;
  v98[0] = a3;
  v97[3] = type metadata accessor for AuthorizationManager();
  v97[4] = &off_284029420;
  v97[0] = a4;
  v96[3] = type metadata accessor for KnownClientStore();
  v96[4] = &off_28402C270;
  v96[0] = a5;
  v87 = sub_22CEEC38C();
  v72 = v34;
  sub_22D01651C();
  v94[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  v74 = MEMORY[0x277D83970];
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v90 + 13))(v89, *MEMORY[0x277D85268], v93);
  a6[27] = sub_22D0169BC();
  a6[28] = MEMORY[0x277D84FA0];
  v88 = a6 + 28;
  sub_22CEE3A84(v99, (a6 + 2));
  sub_22CEE3A84(v100, (a6 + 7));
  sub_22CEE3A84(v98, (a6 + 12));
  sub_22CEE3A84(v97, (a6 + 17));
  sub_22CEE3A84(v96, (a6 + 22));
  __swift_project_boxed_opaque_existential_1(a6 + 2, a6[5]);
  v94[0] = sub_22CFC4A9C();
  v95 = a6[27];
  v35 = v95;
  v93 = sub_22D01693C();
  v36 = *(v93 - 8);
  v37 = *(v36 + 56);
  v89 = (v36 + 56);
  v90 = v37;
  v38 = v69;
  v37(v69, 1, 1, v93);
  v39 = v35;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BE8, &qword_22D01C7E8);
  v84 = MEMORY[0x277CBCD90];
  v67[2] = sub_22CEE8394(&qword_28143FAA8, &qword_27D9F3BE8, &qword_22D01C7E8, MEMORY[0x277CBCD90]);
  v82 = sub_22CFF8F4C(&qword_28143FA10, sub_22CEEC38C, MEMORY[0x277D85228]);
  v40 = v70;
  sub_22D01647C();
  sub_22CEEC3D8(v38, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  v83 = MEMORY[0x277CBCD60];
  v67[1] = sub_22CEE8394(&qword_28143FAC8, &qword_27D9F3BE0, &qword_22D01C7E0, MEMORY[0x277CBCD60]);

  v41 = v71;
  sub_22D0164AC();

  v42 = *(v91 + 8);
  v91 += 8;
  v67[0] = v42;
  v43 = v40;
  v42(v40, v41);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a6 + 2, a6[5]);
  v94[0] = sub_22CFC4AB0();
  v95 = a6[27];
  v44 = v95;
  v45 = v90;
  v90(v38, 1, 1, v93);
  v46 = v44;
  sub_22D01647C();
  sub_22CEEC3D8(v38, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  sub_22D0164AC();

  (v67[0])(v43, v41);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a6 + 2, a6[5]);
  v94[0] = sub_22CFC4B98();
  v95 = a6[27];
  v47 = v95;
  v45(v38, 1, 1, v93);
  v48 = v47;
  v71 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BF0, &qword_22D01C7F0);
  v91 = sub_22CEE8394(&unk_28143D9B8, &qword_27D9F3BF0, &qword_22D01C7F0, v84);
  v49 = v85;
  sub_22D01647C();
  sub_22CEEC3D8(v38, &qword_27D9F3670, &qword_22D01BF00);

  v50 = swift_allocObject();
  swift_weakInit();
  v51 = swift_allocObject();
  *(v51 + 16) = sub_22CFF8EEC;
  *(v51 + 24) = v50;
  v70 = sub_22CEE8394(&qword_28143DA00, &qword_27D9F3BD8, &qword_22D01C7D8, v83);
  v52 = v86;
  sub_22D0164AC();

  v53 = *(v92 + 8);
  v92 += 8;
  v68 = v53;
  v53(v49, v52);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a6 + 17, a6[20]);
  v94[0] = sub_22CF46328();
  v95 = a6[27];
  v54 = v95;
  v90(v38, 1, 1, v93);
  v55 = v54;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F4080, &qword_22D01C7B0);
  sub_22CEE8394(&qword_28143D9E0, &unk_27D9F4080, &qword_22D01C7B0, v84);
  v56 = v73;
  sub_22D01647C();
  sub_22CEEC3D8(v38, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();
  sub_22CEE8394(&qword_28143DA28, &unk_27D9F4070, &unk_22D01D5D0, v83);
  v57 = v75;
  sub_22D0164AC();

  (*(v76 + 8))(v56, v57);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  __swift_project_boxed_opaque_existential_1(a6 + 22, a6[25]);
  v94[0] = sub_22CFCBD78();
  v95 = a6[27];
  v58 = v95;
  v90(v38, 1, 1, v93);
  v59 = v58;
  v60 = v85;
  sub_22D01647C();
  sub_22CEEC3D8(v38, &qword_27D9F3670, &qword_22D01BF00);

  swift_allocObject();
  swift_weakInit();

  v61 = v86;
  sub_22D0164AC();

  v68(v60, v61);
  swift_beginAccess();
  sub_22D0163EC();
  swift_endAccess();

  v94[4] = sub_22CFF8EFC;
  v94[5] = a6;
  v94[0] = MEMORY[0x277D85DD0];
  v94[1] = 1107296256;
  v94[2] = sub_22CEF8B58;
  v94[3] = &block_descriptor_308;
  v62 = _Block_copy(v94);

  v63 = v72;
  sub_22D0164EC();
  v95 = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA60, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F2FE0, &qword_22D018B70);
  sub_22CEE8394(&qword_28143FA50, &unk_27D9F2FE0, &qword_22D018B70, v74);
  v65 = v79;
  v64 = v80;
  sub_22D016ADC();
  MEMORY[0x2318C5B10](0, v63, v65, v62);
  _Block_release(v62);
  (*(v81 + 8))(v65, v64);
  (*(v77 + 8))(v63, v78);
  __swift_destroy_boxed_opaque_existential_1Tm(v100);
  __swift_destroy_boxed_opaque_existential_1Tm(v96);
  __swift_destroy_boxed_opaque_existential_1Tm(v97);
  __swift_destroy_boxed_opaque_existential_1Tm(v98);
  __swift_destroy_boxed_opaque_existential_1Tm(v99);

  return a6;
}

uint64_t sub_22CFF56A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22D01697C();
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_22D01691C();
  MEMORY[0x28223BE20](v10, v11);
  v12 = sub_22D01653C();
  MEMORY[0x28223BE20](v12 - 8, v13);
  v25 = type metadata accessor for ProcessMonitor();
  v26 = &off_284029850;
  *&v24 = a1;
  v22 = type metadata accessor for KnownClientStore();
  v23 = &off_28402C270;
  *&v21 = a2;
  type metadata accessor for UnfairLock();
  v14 = swift_allocObject();
  v15 = swift_slowAlloc();
  *(v14 + 16) = v15;
  *v15 = 0;
  *(a3 + 96) = v14;
  v17 = sub_22CEEC38C();
  sub_22D0164EC();
  v20 = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v18 + 104))(v9, *MEMORY[0x277D85260], v19);
  *(a3 + 104) = sub_22D0169BC();
  sub_22CEF44D4(&v24, a3 + 16);
  sub_22CEF44D4(&v21, a3 + 56);
  return a3;
}

void sub_22CFF598C(void *a1, uint64_t a2, char *a3)
{
  v31 = a2;
  v32 = a1;
  v30 = sub_22D01697C();
  v5 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v6);
  v29 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_22D01691C();
  MEMORY[0x28223BE20](v8, v9);
  v10 = sub_22D01653C();
  MEMORY[0x28223BE20](v10 - 8, v11);
  v37 = a2;
  *&a3[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_listener] = 0;
  v12 = OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_lock;
  type metadata accessor for UnfairLock();
  v13 = swift_allocObject();
  v14 = swift_slowAlloc();
  *(v13 + 16) = v14;
  *v14 = 0;
  *&a3[v12] = v13;
  v15 = MEMORY[0x277D84F98];
  *&a3[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer__lock_clients] = MEMORY[0x277D84F98];
  *&a3[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer__lock_qos] = v15;
  *&a3[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_qosSubscription] = 0;
  v28[1] = sub_22CEEC38C();
  sub_22D01651C();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v5 + 104))(v29, *MEMORY[0x277D85268], v30);
  v16 = v32;
  *&a3[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_requestProcessingQueue] = sub_22D0169BC();
  v17 = type metadata accessor for QoSObservationServiceServer();
  v36.receiver = a3;
  v36.super_class = v17;
  v18 = objc_msgSendSuper2(&v36, sel_init);
  v19 = off_28402AFF8;
  type metadata accessor for QoSManager();
  v20 = v18;
  v21 = v19();

  aBlock[0] = v21;
  swift_allocObject();
  swift_unknownObjectWeakInit();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BD0, &qword_22D01C7D0);
  sub_22CEE8394(&qword_28143FAB8, &qword_27D9F3BD0, &qword_22D01C7D0, MEMORY[0x277CBCD90]);
  v22 = sub_22D0164AC();

  *&v20[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_qosSubscription] = v22;

  v34 = v20;
  v23 = swift_allocObject();
  *(v23 + 16) = sub_22CFF8F24;
  *(v23 + 24) = &v33;
  aBlock[4] = sub_22CFF908C;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22CEE5AA0;
  aBlock[3] = &block_descriptor_344;
  v24 = _Block_copy(aBlock);
  v25 = objc_opt_self();

  v26 = [v25 listenerWithConfigurator_];

  _Block_release(v24);

  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  else
  {
    v27 = *&v20[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_listener];
    *&v20[OBJC_IVAR____TtC11SessionCore27QoSObservationServiceServer_listener] = v26;
  }
}

uint64_t sub_22CFF5EE8(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v46 = a3;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C28, &qword_22D01C828);
  v40 = *(v41 - 8);
  MEMORY[0x28223BE20](v41, v7);
  v39 = &v38 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3670, &qword_22D01BF00);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v47 = &v38 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BB8, &qword_22D01C7B8);
  v13 = *(v12 - 8);
  v50 = v12;
  v51 = v13;
  MEMORY[0x28223BE20](v12, v14);
  v48 = &v38 - v15;
  v49 = sub_22D01697C();
  v45 = *(v49 - 1);
  MEMORY[0x28223BE20](v49, v16);
  v44 = &v38 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_22D01691C();
  MEMORY[0x28223BE20](v18, v19);
  v42 = &v38 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_22D01653C();
  MEMORY[0x28223BE20](v21 - 8, v22);
  v43 = type metadata accessor for AssertionManager();
  v58[3] = v43;
  v58[4] = &off_284029D10;
  v58[0] = a1;
  v56 = type metadata accessor for LockStateObserver();
  v57 = &off_284029998;
  v55[0] = a2;
  v23 = MEMORY[0x277D84F90];
  v53 = sub_22CEF4A08(MEMORY[0x277D84F90], &qword_27D9F2A38, &unk_22D0196F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F29E8, &qword_22D019668);
  swift_allocObject();
  *(a4 + 16) = sub_22D01644C();
  *(a4 + 24) = sub_22CEF4A08(v23, &qword_27D9F2A38, &unk_22D0196F0);
  *(a4 + 32) = 0;
  *(a4 + 128) = MEMORY[0x277D84FA0];
  v52 = sub_22CEEC38C();
  sub_22D0164FC();
  v53 = v23;
  sub_22CFF8F4C(&qword_28143FA20, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27D9F3990, &unk_22D0189A0);
  sub_22CEE8394(&qword_28143FA40, &unk_27D9F3990, &unk_22D0189A0, MEMORY[0x277D83970]);
  sub_22D016ADC();
  (*(v45 + 13))(v44, *MEMORY[0x277D85268], v49);
  v49 = v46;
  *(a4 + 120) = sub_22D0169BC();
  sub_22CEE3A84(v58, a4 + 40);
  sub_22CEE3A84(v55, a4 + 80);
  v53 = off_284029D18();
  v54 = *(a4 + 120);
  v24 = v54;
  v25 = sub_22D01693C();
  v26 = *(v25 - 1);
  v27 = *(v26 + 56);
  v28 = v47;
  v46 = v25;
  v45 = v27;
  v44 = (v26 + 56);
  (v27)(v47, 1, 1);
  v29 = v24;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BD0, &qword_22D01C7D0);
  sub_22CEE8394(&qword_28143FAB8, &qword_27D9F3BD0, &qword_22D01C7D0, MEMORY[0x277CBCD90]);
  sub_22CFF8F4C(&qword_28143FA10, sub_22CEEC38C, MEMORY[0x277D85228]);
  v30 = v48;
  v31 = v28;
  sub_22D01647C();
  sub_22CEEC3D8(v28, &qword_27D9F3670, &qword_22D01BF00);

  sub_22CEE8394(&qword_28143FAD0, &qword_27D9F3BB8, &qword_22D01C7B8, MEMORY[0x277CBCD60]);

  v32 = v50;
  sub_22D0164AC();

  (*(v51 + 8))(v30, v32);
  swift_beginAccess();
  v51 = a4 + 128;
  sub_22D0163EC();
  swift_endAccess();

  if (sub_22CEF4850())
  {
    v53 = *(*__swift_project_boxed_opaque_existential_1(v55, v56) + 16);
    v54 = *(a4 + 120);
    v33 = v54;
    v45(v28, 1, 1, v46);

    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BB0, &qword_22D01C7A8);
    sub_22CEE8394(&qword_28143FAA0, &qword_27D9F3BB0, &qword_22D01C7A8, MEMORY[0x277CBCD90]);
    v35 = v39;
    sub_22D01647C();
    sub_22CEEC3D8(v31, &qword_27D9F3670, &qword_22D01BF00);

    sub_22CEE8394(&qword_28143DA08, &qword_27D9F3C28, &qword_22D01C828, MEMORY[0x277CBCD60]);

    v36 = v41;
    sub_22D0164AC();

    (*(v40 + 8))(v35, v36);
    swift_beginAccess();
    sub_22D0163EC();
    swift_endAccess();
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v55);
  __swift_destroy_boxed_opaque_existential_1Tm(v58);
  return a4;
}

unint64_t sub_22CFF67D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B80, &qword_22D01C778);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31A0, &qword_22D01B110);
    v8 = sub_22D016D3C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v10, v6, &qword_27D9F3B80, &qword_22D01C778);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22CEEC698(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_22D01490C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF69BC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3118, &qword_22D01ADA8);
    v3 = sub_22D016D3C();
    v4 = a1 + 32;

    while (1)
    {
      sub_22CEEB6DC(v4, v13, &qword_27D9F2A68, &qword_22D019818);
      result = sub_22CFB6140(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_22CF1D288(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF6AF8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2620, &qword_22D01B1E0);
    v3 = sub_22D016D3C();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22CEEC698(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF6BF4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BA0, &qword_22D01C798);
    v3 = sub_22D016D3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_22CEEC698(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF6CF8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2618, &unk_22D018B80);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3248, &qword_22D01B1D8);
    v8 = sub_22D016D3C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v10, v6, &qword_27D9F2618, &unk_22D018B80);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22CEEC698(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_22D014AFC();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF6EE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31E0, &qword_22D01B180);
    v3 = sub_22D016D3C();
    for (i = a1 + 32; ; i += 48)
    {
      sub_22CEEB6DC(i, &v11, &qword_27D9F3C38, &unk_22D01C838);
      v5 = v11;
      result = sub_22CEE637C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_22CEF44D4(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void *sub_22CFF7004(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C30, &qword_22D01C830);
  v3 = sub_22D016D3C();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_22CEE637C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + 4 * v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 2);
    v15 = *v10;

    v8 = sub_22CEE637C(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22CFF7114(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C08, &qword_22D01C808);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A28, &qword_22D0196C8);
    v8 = sub_22D016D3C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v10, v6, &qword_27D9F3C08, &qword_22D01C808);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22CEEC698(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for Activity(0);
      result = sub_22CFF8E7C(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for Activity);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF72FC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C00, &qword_22D01C800);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2A10, &qword_22D0196B0);
    v8 = sub_22D016D3C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v10, v6, &qword_27D9F3C00, &qword_22D01C800);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22CEEC698(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for XPCInputParticipant.ActivityUpdate(0);
      result = sub_22CFF8E7C(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for XPCInputParticipant.ActivityUpdate);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF74E4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3BF8, &qword_22D01C7F8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31B0, &qword_22D01B128);
    v8 = sub_22D016D3C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v10, v6, &qword_27D9F3BF8, &qword_22D01C7F8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22CEEC698(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_22D01430C();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF76D0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F2E68, &unk_22D01A870);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B88, &qword_22D01C780);
    v8 = sub_22D016D3C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_22CEEB6DC(v10, v6, &qword_27D9F2E68, &unk_22D01A870);
      v12 = *v6;
      result = sub_22CFC1098(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = sub_22D015A1C();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF78C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3138, &qword_22D01AEC8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B98, &qword_22D01C790);
    v8 = sub_22D016D3C();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v10, v6, &qword_27D9F3138, &qword_22D01AEC8);
      result = sub_22CEFF728(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22D0149AC();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 24 * v14;
      v18 = v9[16];
      *v17 = *v9;
      *(v17 + 16) = v18;
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF7ABC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3148, &qword_22D01AED8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3258, &unk_22D01B1F0);
    v8 = sub_22D016D3C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v10, v6, &qword_27D9F3148, &qword_22D01AED8);
      result = sub_22CEFF728(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = sub_22D0149AC();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = sub_22D014EFC();
      result = sub_22CFF8E7C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, MEMORY[0x277CB9790]);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF7CD8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3238, &qword_22D01B1D0);
    v3 = sub_22D016D3C();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_22CEEC698(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF7DDC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31E8, &qword_22D01B188);
  v3 = sub_22D016D3C();
  LODWORD(v4) = *(a1 + 32);
  v5 = *(a1 + 40);
  result = sub_22CEE637C(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v16 = v5;
    return v3;
  }

  v8 = (a1 + 56);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 4 * result) = v4;
    *(v3[7] + 8 * result) = v5;
    v9 = v3[2];
    v10 = __OFADD__(v9, 1);
    v11 = v9 + 1;
    if (v10)
    {
      break;
    }

    v3[2] = v11;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v12 = v8 + 2;
    v4 = *(v8 - 2);
    v13 = *v8;
    v14 = v5;
    result = sub_22CEE637C(v4);
    v8 = v12;
    v5 = v13;
    if (v15)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22CFF7EE0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3C10, &qword_22D01C810);
    v3 = sub_22D016D3C();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 8);
      v6 = *i;
      result = sub_22CF259D0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_22CFF7FC0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F3B90, &qword_22D01C788);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D9F31C8, &qword_22D01B160);
    v8 = sub_22D016D3C();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_22CEEB6DC(v10, v6, &qword_27D9F3B90, &qword_22D01C788);
      v12 = *v6;
      v13 = v6[1];
      result = sub_22CEEC698(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = sub_22D0162BC();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

void sub_22CFF81AC(NSObject *a1)
{
  aBlock[6] = *MEMORY[0x277D85DE8];
  v2 = [objc_opt_self() standardUserDefaults];
  v3 = sub_22D01666C();
  v4 = [v2 BOOLForKey_];

  if (v4)
  {
    out_token = -1;
    v5 = swift_allocObject();
    *(v5 + 16) = 60;
    v6 = (v5 + 16);
    v7 = swift_allocObject();
    v7[2] = 0xD00000000000001FLL;
    v7[3] = 0x800000022D022ED0;
    v7[4] = v5;
    aBlock[4] = sub_22CFF8F94;
    aBlock[5] = v7;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22CEF261C;
    aBlock[3] = &block_descriptor_387;
    v8 = _Block_copy(aBlock);

    LODWORD(v9) = notify_register_dispatch("com.apple.liveactivitiesd.start", &out_token, a1, v8);
    _Block_release(v8);
    if (v9)
    {
      if (qword_27D9F1E40 == -1)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (qword_27D9F1E40 != -1)
      {
        swift_once();
      }

      v16 = sub_22D01637C();
      __swift_project_value_buffer(v16, qword_27D9F40B8);
      v9 = sub_22D01636C();
      v17 = sub_22D01690C();
      if (os_log_type_enabled(v9, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        aBlock[0] = v19;
        *v18 = 136446210;
        *(v18 + 4) = sub_22CEEE31C(0xD00000000000001FLL, 0x800000022D022ED0, aBlock);
        _os_log_impl(&dword_22CEE1000, v9, v17, "%{public}s: Waiting", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x2318C6860](v19, -1, -1);
        MEMORY[0x2318C6860](v18, -1, -1);
      }

      swift_beginAccess();
      if (*v6 < 1)
      {
LABEL_13:
        notify_cancel(out_token);
        v11 = sub_22D01636C();
        v21 = sub_22D01690C();
        if (os_log_type_enabled(v11, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v25 = v23;
          *v22 = 136446210;
          *(v22 + 4) = sub_22CEEE31C(0xD00000000000001FLL, 0x800000022D022ED0, &v25);
          _os_log_impl(&dword_22CEE1000, v11, v21, "%{public}s: Done waiting; startup continues", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v23);
          MEMORY[0x2318C6860](v23, -1, -1);
          v15 = v22;
          goto LABEL_15;
        }

LABEL_16:

        return;
      }

      while (1)
      {
        sleep(1u);
        v20 = *v6 - 1;
        if (__OFSUB__(*v6, 1))
        {
          break;
        }

        *v6 = v20;
        if (v20 <= 0)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
    }

    swift_once();
LABEL_4:
    v10 = sub_22D01637C();
    __swift_project_value_buffer(v10, qword_27D9F40B8);
    v11 = sub_22D01636C();
    v12 = sub_22D0168EC();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock[0] = v14;
      *v13 = 136446466;
      *(v13 + 4) = sub_22CEEE31C(0xD00000000000001FLL, 0x800000022D022ED0, aBlock);
      *(v13 + 12) = 1026;
      *(v13 + 14) = v9;
      _os_log_impl(&dword_22CEE1000, v11, v12, "%{public}s: %{public}u", v13, 0x12u);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x2318C6860](v14, -1, -1);
      v15 = v13;
LABEL_15:
      MEMORY[0x2318C6860](v15, -1, -1);
      goto LABEL_16;
    }

    goto LABEL_16;
  }
}