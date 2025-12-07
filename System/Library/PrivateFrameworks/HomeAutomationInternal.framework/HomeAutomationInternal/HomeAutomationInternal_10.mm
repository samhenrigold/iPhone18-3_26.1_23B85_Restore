uint64_t sub_2529E3E28(void **a1, void **a2, void **a3, void **a4)
{
  v75 = sub_252E32E84();
  v8 = *(v75 - 8);
  v9 = MEMORY[0x28223BE20](v75);
  v69 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v9);
  v68 = &v65 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v67 = (&v65 - v14);
  MEMORY[0x28223BE20](v13);
  v66 = &v65 - v15;
  v16 = a2 - a1 + 7;
  if (a2 - a1 >= 0)
  {
    v16 = a2 - a1;
  }

  v17 = v16 >> 3;
  v70 = a3;
  v18 = a3 - a2;
  v19 = v18 / 8;
  if (v16 >> 3 >= v18 / 8)
  {
    if (a4 != a2 || &a2[v19] <= a4)
    {
      memmove(a4, a2, 8 * v19);
    }

    v77 = &a4[v19];
    if (v18 >= 8 && a2 > a1)
    {
      v66 = (v8 + 8);
      v40 = v70;
      v76 = a4;
      v73 = a1;
      v41 = (v8 + 8);
LABEL_27:
      v74 = a2;
      v42 = a2 - 1;
      v43 = v40;
      v44 = v77;
      v67 = a2 - 1;
      do
      {
        v45 = *(v44 - 8);
        v70 = (v44 - 8);
        v46 = *v42;
        v47 = v45;
        v48 = v46;
        v71 = v47;
        v49 = [v47 uniqueIdentifier];
        v50 = v68;
        sub_252E32E64();

        v51 = sub_252E32E24();
        v53 = v52;
        v54 = *v41;
        v55 = v50;
        v56 = v75;
        (*v41)(v55, v75);
        v72 = v48;
        v57 = [v48 uniqueIdentifier];
        v58 = v69;
        sub_252E32E64();

        v59 = sub_252E32E24();
        v61 = v60;
        v54(v58, v56);
        if (v51 == v59 && v53 == v61)
        {

          v40 = v43 - 1;
        }

        else
        {
          v62 = sub_252E37DB4();

          v40 = v43 - 1;
          if (v62)
          {
            a4 = v76;
            v63 = v67;
            if (v43 != v74)
            {
              *v40 = *v67;
            }

            if (v77 <= a4 || (a2 = v63, v63 <= v73))
            {
              a2 = v63;
              goto LABEL_41;
            }

            goto LABEL_27;
          }
        }

        a4 = v76;
        v42 = v67;
        v44 = v70;
        if (v77 != v43)
        {
          *v40 = *v70;
        }

        v77 = v44;
        v43 = v40;
      }

      while (v44 > a4);
      v77 = v44;
      a2 = v74;
    }
  }

  else
  {
    if (a4 != a1 || &a1[v17] <= a4)
    {
      memmove(a4, a1, 8 * v17);
    }

    v77 = &a4[v17];
    if (a2 - a1 >= 8 && a2 < v70)
    {
      v69 = (v8 + 8);
      while (1)
      {
        v73 = a1;
        v74 = a2;
        v20 = *a2;
        v76 = a4;
        v21 = *a4;
        v22 = v20;
        v23 = v21;
        v71 = v22;
        v24 = [v22 uniqueIdentifier];
        v25 = v66;
        sub_252E32E64();

        v26 = sub_252E32E24();
        v28 = v27;
        v29 = *v69;
        v30 = v75;
        (*v69)(v25, v75);
        v72 = v23;
        v31 = [v23 uniqueIdentifier];
        v32 = v67;
        sub_252E32E64();

        v33 = sub_252E32E24();
        v35 = v34;
        v29(v32, v30);
        if (v26 == v33 && v28 == v35)
        {
          break;
        }

        v36 = sub_252E37DB4();

        if ((v36 & 1) == 0)
        {
          goto LABEL_16;
        }

        v37 = v73;
        v38 = v74;
        a2 = v74 + 1;
        v39 = v70;
        a4 = v76;
        if (v73 != v74)
        {
          goto LABEL_17;
        }

LABEL_18:
        a1 = v37 + 1;
        if (a4 >= v77 || a2 >= v39)
        {
          goto LABEL_20;
        }
      }

LABEL_16:
      v38 = v76;
      a4 = v76 + 1;
      v37 = v73;
      a2 = v74;
      v39 = v70;
      if (v73 == v76)
      {
        goto LABEL_18;
      }

LABEL_17:
      *v37 = *v38;
      goto LABEL_18;
    }

LABEL_20:
    a2 = a1;
  }

LABEL_41:
  if (a2 != a4 || a2 >= (a4 + ((v77 - a4 + (v77 - a4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(a2, a4, 8 * (v77 - a4));
  }

  return 1;
}

uint64_t type metadata accessor for HomeStore(uint64_t a1)
{
  result = qword_2814B0E08;
  if (!qword_2814B0E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2529E4490@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_2529E44D4()
{
  if (qword_2814B0A70 != -1)
  {
    swift_once();
  }

  v0 = sub_252E36AD4();
  __swift_project_value_buffer(v0, qword_2814B0A78);
  sub_252CC3D90(0xD000000000000012, 0x8000000252E70940, 0xD00000000000006FLL, 0x8000000252E70160);
  if (qword_2814B0E18 != -1)
  {
    swift_once();
  }

  sub_252E37604();
  v1 = qword_2814B0E30;
  if (qword_2814B0E30)
  {
    v2 = OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock;
    v3 = *(qword_2814B0E30 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock);
    v4 = qword_2814B0E30;
    os_unfair_lock_lock(v3 + 4);
    v5 = sub_252CC4788(MEMORY[0x277D84F90]);
    v6 = &v4[OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults];
    swift_beginAccess();
    v7 = v6[1];
    [v7 lock];
    *v6 = v5;

    [v7 unlock];
    swift_endAccess();
    os_unfair_lock_unlock((*(v1 + v2) + 16));

    v8 = qword_2814B0E30;
  }

  else
  {
    v8 = 0;
  }

  qword_2814B0E30 = 0;

  return sub_252E37614();
}

void sub_2529E4684()
{
  v1 = v0;
  if (qword_2814B0A98 != -1)
  {
    swift_once();
  }

  v2 = sub_252E36AD4();
  __swift_project_value_buffer(v2, qword_2814B0AA0);
  sub_252CC3D90(0xD000000000000026, 0x8000000252E70910, 0xD00000000000006FLL, 0x8000000252E70160);
  v3 = v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation;
  swift_beginAccess();
  v4 = *(v3 + 8);
  [v4 lock];
  *v3 = 1;
  [v4 unlock];
  swift_endAccess();
  v5 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
  swift_beginAccess();
  v6 = *(v5 + 8);
  [v6 lock];
  *v5 = 0;
  [v6 unlock];
  v7 = swift_endAccess();
  v8 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHomeLock);
  v9 = MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  os_unfair_lock_lock(v8 + 4);
  sub_2529E659C();
  os_unfair_lock_unlock(v8 + 4);
}

uint64_t sub_2529E4880(void *a1)
{
  v3 = *(sub_252E36AB4() - 8);
  v4 = *(v1 + 16);
  v5 = v1 + ((*(v3 + 80) + 24) & ~*(v3 + 80));

  return sub_2529DFBF4(a1, v4, v5);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_2529E490C()
{
  v1 = v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation;
  swift_beginAccess();
  v2 = *(v1 + 8);
  [v2 lock];
  *v1 = 1;
  [v2 unlock];
  swift_endAccess();
  v3 = v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
  swift_beginAccess();
  v4 = *(v3 + 8);
  [v4 lock];
  *v3 = 0;
  [v4 unlock];
  swift_endAccess();
  v5 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHomeLock);
  os_unfair_lock_lock(v5 + 4);
  sub_2529E659C();
  os_unfair_lock_unlock(v5 + 4);
}

id sub_2529E4A20(void *a1)
{
  v2 = v1;
  v4 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation;
  swift_beginAccess();
  v5 = *(v4 + 8);
  [v5 lock];
  *v4 = 1;
  [v5 unlock];
  swift_endAccess();
  v6 = v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
  swift_beginAccess();
  v7 = *(v6 + 8);
  [v7 lock];
  *v6 = 0;
  [v7 unlock];
  swift_endAccess();
  v8 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__currentHomeLock);
  os_unfair_lock_lock(v8 + 4);
  sub_2529E659C();
  os_unfair_lock_unlock(v8 + 4);
  return [a1 setDelegate_];
}

id sub_2529E4B50(void *a1)
{
  v3 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation;
  swift_beginAccess();
  v4 = *(v3 + 8);
  [v4 lock];
  *v3 = 1;
  [v4 unlock];
  swift_endAccess();
  v5 = v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__isCachedStableHomeGraphHashValid;
  swift_beginAccess();
  v6 = *(v5 + 8);
  [v6 lock];
  *v5 = 0;
  [v6 unlock];
  swift_endAccess();
  return [a1 setDelegate_];
}

uint64_t sub_2529E4C38(uint64_t a1, unint64_t a2, char *a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  sub_252947DBC();
  v10 = sub_252E377D4();
  v11 = sub_252E37054();
  v12 = *(v10 + 16);
  v43 = a5;
  if (v11 <= a5 && v12 <= a6)
  {

    if (qword_2814B09D0 != -1)
    {
LABEL_36:
      swift_once();
    }

    v13 = sub_252E36AD4();
    __swift_project_value_buffer(v13, qword_2814B09D8);
    MEMORY[0x2530AD570](a1, a2);
    MEMORY[0x2530AD570](2618, 0xE200000000000000);
    MEMORY[0x2530AD570](a3, a4);
    sub_252CC3D90(10, 0xE100000000000000, 0xD00000000000006FLL, 0x8000000252E70160);
  }

  if (!v12)
  {

    if (*(MEMORY[0x277D84F90] + 16))
    {
      goto LABEL_28;
    }
  }

  v14 = 0;
  v40 = a6;
  a4 = (v10 + 56);
  a3 = MEMORY[0x277D84F90];
  v15 = 1;
  do
  {
    v17 = *(a4 - 3);
    v16 = *(a4 - 2);
    v18 = *(a4 - 1);
    v19 = *a4;

    v20 = sub_252E37764();
    if (__OFADD__(v14, v20))
    {
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      goto LABEL_36;
    }

    v45 = v18;
    if (v14 + v20 > v43 || *(a3 + 2) >= v40)
    {
      v44 = v15;
      if (v15 == 1)
      {
        v21 = a1;
      }

      else
      {
        sub_252E379F4();

        MEMORY[0x2530AD570](0x80E2746E6F632820, 0xAC00000023206499);
        v23 = sub_252E37D94();
        MEMORY[0x2530AD570](v23);

        MEMORY[0x2530AD570](41, 0xE100000000000000);
        v21 = a1;
        v22 = a2;
      }

      if (qword_2814B09D0 != -1)
      {
        swift_once();
      }

      v24 = sub_252E36AD4();
      __swift_project_value_buffer(v24, qword_2814B09D8);
      MEMORY[0x2530AD570](2618, 0xE200000000000000);
      v25 = v21;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541330, &qword_252E40468);
      sub_2529E6488(&qword_27F541338, &qword_27F541330, &qword_252E40468, MEMORY[0x277D83970]);
      sub_2529C7C0C();
      v26 = sub_252E371E4();
      v28 = v27;

      MEMORY[0x2530AD570](v26, v28);

      sub_252CC3D90(v25, v22, 0xD00000000000006FLL, 0x8000000252E70160);

      v15 = v44 + 1;
      if (__OFADD__(v44, 1))
      {
        goto LABEL_35;
      }

      v14 = 0;
      a3 = MEMORY[0x277D84F90];
    }

    else
    {

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_20;
      }
    }

    a3 = sub_2529F8778(0, *(a3 + 2) + 1, 1, a3);
LABEL_20:
    v30 = *(a3 + 2);
    v29 = *(a3 + 3);
    if (v30 >= v29 >> 1)
    {
      a3 = sub_2529F8778((v29 > 1), v30 + 1, 1, a3);
    }

    *(a3 + 2) = v30 + 1;
    v31 = &a3[32 * v30];
    *(v31 + 4) = v17;
    *(v31 + 5) = v16;
    *(v31 + 6) = v45;
    *(v31 + 7) = v19;
    v32 = sub_252E37764();

    v33 = __OFADD__(v14, v32);
    v14 += v32;
    if (v33)
    {
      goto LABEL_34;
    }

    a4 += 4;
    --v12;
  }

  while (v12);

  if (!*(a3 + 2))
  {
  }

  if (v15 != 1)
  {
    sub_252E379F4();

    MEMORY[0x2530AD570](0x80E2746E6F632820, 0xAC00000023206499);
    v34 = sub_252E37D94();
    MEMORY[0x2530AD570](v34);

    MEMORY[0x2530AD570](41, 0xE100000000000000);
    goto LABEL_29;
  }

LABEL_28:

LABEL_29:
  if (qword_2814B09D0 != -1)
  {
    swift_once();
  }

  v35 = sub_252E36AD4();
  __swift_project_value_buffer(v35, qword_2814B09D8);
  MEMORY[0x2530AD570](2618, 0xE200000000000000);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541330, &qword_252E40468);
  sub_2529E6488(&qword_27F541338, &qword_27F541330, &qword_252E40468, MEMORY[0x277D83970]);
  sub_2529C7C0C();
  v36 = sub_252E371E4();
  v38 = v37;

  MEMORY[0x2530AD570](v36, v38);

  sub_252CC3D90(a1, a2, 0xD00000000000006FLL, 0x8000000252E70160);
}

uint64_t sub_2529E5340(uint64_t a1)
{
  result = sub_252E36AB4();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

uint64_t dispatch thunk of HomeStore.home(_:didAdd:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x288))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x298))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2B8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2E0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x308))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x328))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x348))();
}

uint64_t dispatch thunk of HomeStore.home(_:didRemove:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x290))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2A0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2C0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2E8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x310))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x330))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x350))();
}

uint64_t dispatch thunk of HomeStore.home(_:didUpdateNameFor:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2A8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2C8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2F0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x318))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x358))();
}

uint64_t dispatch thunk of HomeStore.home(_:didAdd:to:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2D0))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2F8))();
}

uint64_t dispatch thunk of HomeStore.home(_:didRemove:from:)()
{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x2D8))();
}

{
  return (*((*MEMORY[0x277D85000] & *v0) + 0x300))();
}

unint64_t sub_2529E6100()
{
  result = qword_27F53FBB0;
  if (!qword_27F53FBB0)
  {
    v3 = sub_25293F638(255, &qword_27F5412F0, 0x277CD17F8);
    result = swift_getWitnessTable(MEMORY[0x277D85378], v3, v0, v1);
    atomic_store(result, &qword_27F53FBB0);
  }

  return result;
}

uint64_t sub_2529E6168(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
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

uint64_t sub_2529E61B0(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_2529E6204(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529E6274(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540CB8, &qword_252E3F8D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2529E62DC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25294B954;

  return sub_2529E2E20(a1, v4);
}

uint64_t sub_2529E6394(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_25293B808;

  return sub_2529E2E20(a1, v4);
}

uint64_t sub_2529E6488(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2529E65BC(void *a1)
{
  v3 = sub_252E32E84();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = a1;
  v7 = a1;
  v8 = [v7 uniqueIdentifier];
  sub_252E32E64();

  v9 = [v7 name];
  v10 = sub_252E36F34();
  v12 = v11;

  v13 = [v7 assistantIdentifier];
  if (v13)
  {
    v14 = v13;
    v15 = sub_252E36F34();
    v17 = v16;
  }

  else
  {

    v15 = 0;
    v17 = 0;
  }

  (*(v4 + 32))(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v6, v3);
  v18 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
  *v18 = v10;
  v18[1] = v12;
  *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 1;
  v19 = (v1 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
  *v19 = v15;
  v19[1] = v17;
  return v1;
}

uint64_t sub_2529E6788@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v4 = type metadata accessor for Home(0);
  v5 = swift_allocObject();
  result = sub_2529E65BC(v3);
  a1[3] = v4;
  *a1 = v5;
  return result;
}

uint64_t type metadata accessor for Home(uint64_t a1)
{
  result = qword_2814B1008;
  if (!qword_2814B1008)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void *sub_2529E68CC(void *a1)
{
  v3 = sub_252E32E84();
  v51 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540488, &unk_252E3C940);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v40 - v8;
  v10 = a1[3];
  v52 = a1;
  v11 = __swift_project_boxed_opaque_existential_1(a1, v10);
  sub_252950A0C();
  sub_252E37F74();
  if (v1)
  {
    v13 = v52;
LABEL_4:
    __swift_destroy_boxed_opaque_existential_1(v13);
    type metadata accessor for Home(0);
    swift_deallocPartialClassInstance();
    return v11;
  }

  v12 = v7;
  LOBYTE(v53[0]) = 0;
  sub_252950ADC(&qword_27F540498, MEMORY[0x277CC9618]);
  sub_252E37C64();
  v15 = v3;
  LOBYTE(v54) = 1;
  sub_252950A60();
  sub_252E37C64();
  v16 = v52;
  v17 = v5;
  v18 = v53[0];
  LOBYTE(v53[0]) = 2;
  v48 = sub_252E37C04();
  v49 = v18;
  v50 = v19;
  LOBYTE(v53[0]) = 3;
  v20 = sub_252E37BA4();
  v42 = v12;
  v44 = v9;
  v46 = v21;
  v47 = v15;
  v22 = v20;
  v23 = type metadata accessor for HomeStore(0);
  v24 = static HomeStore.shared.getter(v23);
  v25 = sub_2529D8DC0();

  MEMORY[0x28223BE20](v26);
  v28 = v48;
  v27 = v49;
  *(&v40 - 6) = v17;
  *(&v40 - 5) = v28;
  *(&v40 - 4) = v50;
  *(&v40 - 3) = v22;
  v41 = v22;
  *(&v40 - 2) = v46;
  *(&v40 - 1) = v27;
  v29 = sub_2529A3DE8(sub_2529E965C, (&v40 - 8), v25);
  v43 = 0;

  v45 = v29;
  if (!v29)
  {
    if (qword_27F53F4B0 != -1)
    {
      swift_once();
    }

    v34 = sub_252E36AD4();
    v35 = __swift_project_value_buffer(v34, qword_27F544CB8);
    sub_252CC4050(0xD000000000000021, 0x8000000252E70A50, 0xD00000000000006ALL, 0x8000000252E70990, 0x6F72662874696E69, 0xEB00000000293A6DLL, 49);
    strcpy(v53, "identifier: ");
    BYTE5(v53[1]) = 0;
    HIWORD(v53[1]) = -5120;
    sub_252950ADC(&qword_27F5404A8, MEMORY[0x277CC9628]);
    v36 = sub_252E37D94();
    MEMORY[0x2530AD570](v36);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006ALL, 0x8000000252E70990, 0x6F72662874696E69, 0xEB00000000293A6DLL, 50);

    v53[0] = 0x203A656D616ELL;
    v53[1] = 0xE600000000000000;
    MEMORY[0x2530AD570](v48, v50);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006ALL, 0x8000000252E70990, 0x6F72662874696E69, 0xEB00000000293A6DLL, 51);

    v53[0] = 0;
    v53[1] = 0xE000000000000000;
    sub_252E379F4();

    v53[0] = 0xD000000000000015;
    v53[1] = 0x8000000252E6AA20;
    v54 = v41;
    v55 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F541300, &qword_252E3C100);
    v37 = sub_252E36F94();
    MEMORY[0x2530AD570](v37);

    sub_252CC4050(v53[0], v53[1], 0xD00000000000006ALL, 0x8000000252E70990, 0x6F72662874696E69, 0xEB00000000293A6DLL, 52);

    strcpy(v53, "entityType: ");
    BYTE5(v53[1]) = 0;
    HIWORD(v53[1]) = -5120;
    v54 = v49;
    v38 = sub_252E36F94();
    MEMORY[0x2530AD570](v38);

    v11 = v35;
    sub_252CC4050(v53[0], v53[1], 0xD00000000000006ALL, 0x8000000252E70990, 0x6F72662874696E69, 0xEB00000000293A6DLL, 53);

    sub_252950B20();
    swift_allocError();
    swift_willThrow();
    (*(v42 + 8))(v44, v6);
    (*(v51 + 8))(v17, v47);
    v13 = v16;
    goto LABEL_4;
  }

  v30 = v45;

  v31 = *(v30 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);

  v11 = v56;
  *(v56 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) = v31;
  sub_252929E74(v16, v53);
  v32 = v43;
  v33 = Entity.init(from:)(v53);
  if (v32)
  {
    (*(v12 + 8))(v44, v6);

    (*(v51 + 8))(v17, v47);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  else
  {
    v11 = v33;
    (*(v12 + 8))(v44, v6);

    v39 = *(v51 + 8);

    v39(v17, v47);
    __swift_destroy_boxed_opaque_existential_1(v16);
  }

  return v11;
}

BOOL sub_2529E7124(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v12 = *a1;
  if (sub_252E32E54())
  {
    v13 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == a3 && *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == a4;
    if (v13 || (sub_252E37DB4() & 1) != 0)
    {
      v14 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier + 8);
      if (a6)
      {
        if (v14)
        {
          v15 = *(v12 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier) == a5 && v14 == a6;
          if (v15 || (sub_252E37DB4() & 1) != 0)
          {
            return a7 == 1;
          }
        }
      }

      else if (!v14)
      {
        return a7 == 1;
      }
    }
  }

  return 0;
}

uint64_t sub_2529E7220(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for HomeStore(0);
  v5 = static HomeStore.shared.getter(v4);
  v6 = sub_2529F3704(a1);

  v9 = v2;
  v8[2] = &v9;
  LOBYTE(v2) = sub_252A00B58(sub_2529E963C, v8, v6);

  return v2 & 1;
}

uint64_t sub_2529E72B8(uint64_t a1, uint64_t a2)
{
  v4 = sub_2529E7424();
  v5 = v4;
  if (v4 >> 62)
  {
LABEL_20:
    v6 = sub_252E378C4();
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
LABEL_3:
      v7 = 0;
      do
      {
        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x2530ADF00](v7, v5);
          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
LABEL_16:
            __break(1u);
LABEL_17:

            return v8;
          }
        }

        else
        {
          if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_20;
          }

          v8 = *(v5 + 8 * v7 + 32);

          v9 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            goto LABEL_16;
          }
        }

        if (sub_252E32E24() == a1 && v10 == a2)
        {
          goto LABEL_17;
        }

        v12 = sub_252E37DB4();

        if (v12)
        {

          return v8;
        }

        ++v7;
      }

      while (v9 != v6);
    }
  }

  return 0;
}

uint64_t sub_2529E7424()
{
  v1 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) accessories];
  sub_25293F638(0, &qword_2814B0270, 0x277CD1650);
  v2 = sub_252E37264();

  v31 = MEMORY[0x277D84F90];
  if (v2 >> 62)
  {
    goto LABEL_32;
  }

  for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v4 = 0;
    v5 = v2 & 0xC000000000000001;
    v6 = v2 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v5)
      {
        v7 = MEMORY[0x2530ADF00](v4, v2);
      }

      else
      {
        if (v4 >= *(v6 + 16))
        {
          goto LABEL_31;
        }

        v7 = *(v2 + 8 * v4 + 32);
      }

      v8 = v7;
      v9 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v10 = [v7 matterNodeID];
      if (!v10)
      {
        goto LABEL_16;
      }

      v11 = [v8 matterNodeID];
      if (v11)
      {
        v12 = v11;
        v13 = [v11 unsignedLongLongValue];

        if (!v13)
        {
          goto LABEL_16;
        }
      }

      v14 = sub_252E37434();
      v16 = v15;
      if (v14 == sub_252E36F34() && v16 == v17)
      {
      }

      else
      {
        v18 = sub_252E37DB4();

        if ((v18 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

      if (([v8 isBridged] & 1) == 0)
      {
        type metadata accessor for MatterAccessory(0);
        v20 = swift_allocObject();
        v21 = [v8 matterNodeID];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 unsignedLongLongValue];

          *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = v23;
          if (!v23)
          {
LABEL_25:
            if (qword_27F53F4B0 != -1)
            {
              swift_once();
            }

            v24 = sub_252E36AD4();
            __swift_project_value_buffer(v24, qword_27F544CB8);
            sub_252E379F4();

            v25 = [v8 name];
            v26 = sub_252E36F34();
            v28 = v27;

            MEMORY[0x2530AD570](v26, v28);

            MEMORY[0x2530AD570](0xD000000000000015, 0x8000000252E6DF20);
            sub_252CC4050(0xD000000000000018, 0x8000000252E6DF00, 0xD000000000000075, 0x8000000252E6B7C0, 0x293A5F2874696E69, 0xE800000000000000, 19);

            v5 = v2 & 0xC000000000000001;
            v6 = v2 & 0xFFFFFFFFFFFFFF8;
          }

          v19 = v8;
          goto LABEL_17;
        }

        *(v20 + OBJC_IVAR____TtC22HomeAutomationInternal15MatterAccessory_matterNodeID) = 0;
        goto LABEL_25;
      }

LABEL_16:
      type metadata accessor for Accessory(0);
      swift_allocObject();
      v19 = v8;
LABEL_17:
      sub_252D4CE7C(v19);
      MEMORY[0x2530AD700]();
      if (*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
        v6 = v2 & 0xFFFFFFFFFFFFFF8;
      }

      sub_252E372D4();
      ++v4;
      if (v9 == i)
      {
        v29 = v31;
        goto LABEL_34;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    ;
  }

  v29 = MEMORY[0x277D84F90];
LABEL_34:

  return v29;
}

uint64_t sub_2529E789C()
{
  v33 = sub_252E32E84();
  v1 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) actionSets];
  sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
  v5 = sub_252E37264();

  v34 = MEMORY[0x277D84F90];
  if (v5 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
  {
    v7 = 0;
    v31 = v5 & 0xFFFFFFFFFFFFFF8;
    v32 = v5 & 0xC000000000000001;
    v28 = v1 + 4;
    v29 = i;
    v30 = v5;
    while (1)
    {
      if (v32)
      {
        v8 = MEMORY[0x2530ADF00](v7, v5);
      }

      else
      {
        if (v7 >= *(v31 + 16))
        {
          goto LABEL_17;
        }

        v8 = *(v5 + 8 * v7 + 32);
      }

      v1 = v8;
      v9 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      type metadata accessor for Scene(0);
      v10 = swift_allocObject();
      *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) = v1;
      v11 = v1;
      v12 = [v11 uniqueIdentifier];
      v13 = v3;
      sub_252E32E64();

      v14 = [v11 name];
      v15 = sub_252E36F34();
      v17 = v16;

      v18 = [v11 assistantIdentifier];
      if (v18)
      {
        v19 = v18;
        v20 = sub_252E36F34();
        v1 = v21;
      }

      else
      {

        v20 = 0;
        v1 = 0;
      }

      v3 = v13;
      v22 = (*v28)(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v13, v33);
      v23 = (v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v23 = v15;
      v23[1] = v17;
      *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 5;
      v24 = (v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v24 = v20;
      v24[1] = v1;
      MEMORY[0x2530AD700](v22);
      if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v34 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v1 = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10);
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v7;
      v5 = v30;
      if (v9 == v29)
      {
        v25 = v34;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v25 = MEMORY[0x277D84F90];
LABEL_20:

  return v25;
}

uint64_t sub_2529E7C28(SEL *a1, unint64_t *a2, void *a3)
{
  v6 = [*(v3 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) *a1];
  sub_25293F638(0, a2, a3);
  v7 = sub_252E37264();

  return v7;
}

char *sub_2529E7CA0()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v2 = [v1 rooms];
  sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
  v3 = sub_252E37264();

  v4 = sub_252C75928(v3);

  v8 = v4;
  sub_252DA6C70(&v7, [v1 roomForEntireHome]);

  v5 = sub_2529A372C(v8);

  return v5;
}

BOOL sub_2529E7DBC(uint64_t a1)
{
  v25 = a1;
  v2 = sub_252E32E84();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v23 - v7;
  v9 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v10 = [v9 rooms];
  sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
  v11 = sub_252E37264();

  v12 = sub_252C75928(v11);

  v28 = v12;
  sub_252DA6C70(&v27, [v9 roomForEntireHome]);

  v13 = sub_2529A372C(v28);

  if ((v13 & 0x8000000000000000) != 0 || (v13 & 0x4000000000000000) != 0)
  {
LABEL_16:
    v26 = sub_252E378C4();
  }

  else
  {
    v26 = *(v13 + 2);
  }

  v14 = 0;
  v24 = OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate;
  v15 = (v3 + 8);
  do
  {
    v3 = v14;
    if (v26 == v14)
    {
      break;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = MEMORY[0x2530ADF00](v14, v13);
    }

    else
    {
      if (v14 >= *(v13 + 2))
      {
        goto LABEL_15;
      }

      v16 = *&v13[8 * v14 + 32];
    }

    v17 = v16;
    if (__OFADD__(v3, 1))
    {
      __break(1u);
LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

    v18 = [v16 uniqueIdentifier];
    sub_252E32E64();

    v19 = [*(v25 + v24) uniqueIdentifier];
    sub_252E32E64();

    LOBYTE(v19) = sub_252E32E54();
    v20 = *v15;
    (*v15)(v6, v2);
    v20(v8, v2);
    v14 = v3 + 1;
  }

  while ((v19 & 1) == 0);
  v21 = v26 != v3;

  return v21;
}

uint64_t sub_2529E8090()
{
  v1 = v0;
  type metadata accessor for HomeAutomationUserDefaults();
  inited = swift_initStackObject();
  v3 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v4 = sub_252E36F04();
  v5 = [v3 initWithSuiteName_];

  *(inited + 16) = v5;
  v6 = sub_2529AF248();

  if (v6 == 2)
  {
    v6 = [*(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) homeHubState] != 0;
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    v7 = sub_252E36AD4();
    __swift_project_value_buffer(v7, qword_27F544D60);
    sub_252E379F4();

    if (v6)
    {
      v8 = 1702195828;
    }

    else
    {
      v8 = 0x65736C6166;
    }

    if (v6)
    {
      v9 = 0xE400000000000000;
    }

    else
    {
      v9 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v8, v9);

    sub_252CC3D90(0xD00000000000002CLL, 0x8000000252E70960, 0xD00000000000006ALL, 0x8000000252E70990);
  }

  return v6 & 1;
}

uint64_t sub_2529E8258()
{
  v1 = v0;
  v2 = type metadata accessor for HomeStore(0);
  v3 = static HomeStore.shared.getter(v2);
  v4 = sub_2529F1BFC();

  if (!v4)
  {
    return 0;
  }

  v5 = _s22HomeAutomationInternal6EntityC2eeoiySbAC_ACtFZ_0(v4, v1);

  return v5 & 1;
}

unint64_t sub_2529E82CC(void *a1, unint64_t a2)
{
  v5 = [*(v2 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) triggers];
  sub_25293F638(0, &qword_27F541320, 0x277CD1EC0);
  v6 = sub_252E37264();

  v7 = v6;
  v44 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_54;
  }

  v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v10 = 0;
    v37 = v7 & 0xFFFFFFFFFFFFFF8;
    v38 = v7 & 0xC000000000000001;
    v35 = v8;
    v36 = v7 + 32;
    v11 = a2 & 0xFFFFFFFFFFFFFF8;
    v42 = a2 & 0xFFFFFFFFFFFFFF8;
    if ((a2 & 0x8000000000000000) != 0)
    {
      v11 = a2;
    }

    v30 = v11;
    v31 = v7;
    v41 = a2 & 0xC000000000000001;
    v33 = a2;
    v34 = a2 >> 62;
    v32 = a1;
    while (1)
    {
      if (v38)
      {
        v7 = MEMORY[0x2530ADF00](v10, v31);
      }

      else
      {
        if (v10 >= *(v37 + 16))
        {
          goto LABEL_53;
        }

        v7 = *(v36 + 8 * v10);
      }

      v12 = v7;
      if (__OFADD__(v10++, 1))
      {
LABEL_52:
        __break(1u);
LABEL_53:
        __break(1u);
LABEL_54:
        v28 = v7;
        v8 = sub_252E378C4();
        v7 = v28;
        goto LABEL_3;
      }

      if (sub_252BEFAF0(a1))
      {
        v39 = v12;
        v40 = v10;
        v14 = [v12 actionSets];
        sub_25293F638(0, &unk_2814B0260, 0x277CD1800);
        v15 = sub_252E37264();

        v43 = v9;
        if (v15 >> 62)
        {
          v7 = sub_252E378C4();
          v16 = v7;
          if (v7)
          {
LABEL_16:
            v17 = 0;
            a1 = (v15 & 0xFFFFFFFFFFFFFF8);
            while (1)
            {
              if ((v15 & 0xC000000000000001) != 0)
              {
                v7 = MEMORY[0x2530ADF00](v17, v15);
              }

              else
              {
                if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_49;
                }

                v7 = *(v15 + 8 * v17 + 32);
              }

              v18 = v7;
              a2 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              v19 = [v7 actions];
              sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
              sub_2529E6100();
              v20 = sub_252E373A4();

              v7 = sub_25297B314(v20);
              ++v17;
              if (a2 == v16)
              {
                v21 = v43;
                a1 = v32;
                a2 = v33;
                v9 = MEMORY[0x277D84F90];
                goto LABEL_27;
              }
            }

            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
            goto LABEL_52;
          }
        }

        else
        {
          v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v16)
          {
            goto LABEL_16;
          }
        }

        v21 = v9;
LABEL_27:

        if (v21 >> 62)
        {
          v7 = sub_252E378C4();
        }

        else
        {
          v7 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v8 = v35;
        v22 = v39;
        v10 = v40;
        if (v7)
        {
          if (v34)
          {
            v7 = sub_252E378C4();
            v23 = v7;
            if (v7)
            {
LABEL_32:
              v24 = 0;
              while (v23 != v24)
              {
                if (v41)
                {
                  v7 = MEMORY[0x2530ADF00](v24, a2);
                }

                else
                {
                  if (v24 >= *(v42 + 16))
                  {
                    goto LABEL_51;
                  }

                  v7 = *(a2 + 8 * v24 + 32);
                }

                v25 = v7;
                if (__OFADD__(v24, 1))
                {
                  goto LABEL_50;
                }

                v43 = v7;
                MEMORY[0x28223BE20](v7);
                v29[2] = &v43;
                v26 = sub_252A00B74(sub_2529E9684, v29, v21);

                ++v24;
                if ((v26 & 1) == 0)
                {

                  goto LABEL_42;
                }
              }

              sub_252E37A94();
              sub_252E37AC4();
              sub_252E37AD4();
              v7 = sub_252E37AA4();
LABEL_42:
              v8 = v35;
              v10 = v40;
              goto LABEL_8;
            }
          }

          else
          {
            v23 = *(v42 + 16);
            if (v23)
            {
              goto LABEL_32;
            }
          }
        }
      }

      else
      {
      }

LABEL_8:
      if (v10 == v8)
      {
        v9 = v44;
        break;
      }
    }
  }

  return v9;
}

uint64_t sub_2529E8734()
{
  v1 = v0;
  v121 = sub_252E32E84();
  v115 = *(v121 - 8);
  v2 = MEMORY[0x28223BE20](v121);
  v119 = &v112 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v120 = &v112 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v112 - v6;
  if ((sub_252979914() & 1) == 0)
  {
    return 0;
  }

  v8 = 0x65736C6166;
  v124 = 0;
  v125 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](*(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name), *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8));
  MEMORY[0x2530AD570](0xD000000000000016, 0x8000000252E70A00);
  v9 = type metadata accessor for HomeStore(0);
  v10 = static HomeStore.shared.getter(v9);
  v11 = sub_2529D9114();

  if (v11 && (v12 = _s22HomeAutomationInternal6EntityC2eeoiySbAC_ACtFZ_0(v11, v1), , (v12 & 1) != 0))
  {
    v13 = 0xE400000000000000;
    v14 = 1702195828;
  }

  else
  {
    v13 = 0xE500000000000000;
    v14 = 0x65736C6166;
  }

  MEMORY[0x2530AD570](v14, v13);

  v16 = MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E703B0);
  v17 = static HomeStore.shared.getter(v16);
  v18 = sub_2529F1BFC();

  if (v18 && (v19 = _s22HomeAutomationInternal6EntityC2eeoiySbAC_ACtFZ_0(v18, v1), , (v19 & 1) != 0))
  {
    v20 = 0xE400000000000000;
    v8 = 1702195828;
  }

  else
  {
    v20 = 0xE500000000000000;
  }

  MEMORY[0x2530AD570](v8, v20);

  MEMORY[0x2530AD570](0x6E6F7A202020200ALL, 0xEC000000203A7365);
  v21 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
  v22 = [v21 zones];
  sub_25293F638(0, &qword_2814B01E8, 0x277CD1F50);
  v23 = sub_252E37264();

  if (v23 >> 62)
  {
    v24 = sub_252E378C4();
  }

  else
  {
    v24 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v25 = MEMORY[0x277D84F90];
  v113 = v21;
  v114 = v1;
  if (v24)
  {
    v123 = MEMORY[0x277D84F90];
    result = sub_252E37AB4();
    if (v24 < 0)
    {
      __break(1u);
      goto LABEL_58;
    }

    v26 = 0;
    v27 = v23;
    v116 = v23 & 0xC000000000000001;
    v117 = v24;
    v28 = (v115 + 32);
    v118 = v23;
    do
    {
      if (v116)
      {
        v33 = MEMORY[0x2530ADF00](v26, v27);
      }

      else
      {
        v33 = *(v27 + 8 * v26 + 32);
      }

      v34 = v33;
      type metadata accessor for Zone(0);
      v35 = swift_allocObject();
      *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal4Zone_delegate) = v34;
      v36 = v34;
      v37 = [v36 uniqueIdentifier];
      v38 = v7;
      sub_252E32E64();

      v39 = [v36 name];
      v40 = sub_252E36F34();
      v42 = v41;

      v43 = [v36 assistantIdentifier];
      if (v43)
      {
        v44 = v43;
        v29 = sub_252E36F34();
        v30 = v45;
      }

      else
      {

        v29 = 0;
        v30 = 0;
      }

      v26 = (v26 + 1);
      v7 = v38;
      (*v28)(v35 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v38, v121);
      v31 = (v35 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v31 = v40;
      v31[1] = v42;
      *(v35 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 2;
      v32 = (v35 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v32 = v29;
      v32[1] = v30;
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
      v27 = v118;
    }

    while (v117 != v26);

    v46 = v123;
    v21 = v113;
    v25 = MEMORY[0x277D84F90];
  }

  else
  {

    v46 = MEMORY[0x277D84F90];
  }

  v47 = type metadata accessor for Zone(0);
  v48 = MEMORY[0x2530AD730](v46, v47);
  v50 = v49;

  MEMORY[0x2530AD570](v48, v50);

  MEMORY[0x2530AD570](0x6F6F72202020200ALL, 0xEC000000203A736DLL);
  v51 = [v21 rooms];
  sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
  v52 = sub_252E37264();

  v53 = sub_252C75928(v52);

  v123 = v53;
  sub_252DA6C70(&v122, [v21 roomForEntireHome]);

  v54 = sub_2529A372C(v123);

  if ((v54 & 0x8000000000000000) == 0 && (v54 & 0x4000000000000000) == 0)
  {
    v55 = *(v54 + 2);
    if (v55)
    {
      goto LABEL_28;
    }

LABEL_40:

    v75 = MEMORY[0x277D84F90];
    goto LABEL_41;
  }

  v55 = sub_252E378C4();
  if (!v55)
  {
    goto LABEL_40;
  }

LABEL_28:
  v123 = v25;
  result = sub_252E37AB4();
  if (v55 < 0)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v56 = 0;
  v117 = (v115 + 32);
  v118 = v54 & 0xC000000000000001;
  do
  {
    if (v118)
    {
      v61 = MEMORY[0x2530ADF00](v56, v54);
    }

    else
    {
      v61 = *&v54[8 * v56 + 32];
    }

    v62 = v61;
    type metadata accessor for Room(0);
    v63 = swift_allocObject();
    *(v63 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v62;
    v64 = v62;
    v65 = [v64 uniqueIdentifier];
    sub_252E32E64();

    v66 = [v64 name];
    v67 = sub_252E36F34();
    v69 = v68;

    v70 = [v64 assistantIdentifier];
    if (v70)
    {
      v71 = v54;
      v72 = v55;
      v73 = v70;
      v57 = sub_252E36F34();
      v58 = v74;

      v55 = v72;
      v54 = v71;
    }

    else
    {

      v57 = 0;
      v58 = 0;
    }

    ++v56;
    (*v117)(v63 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v120, v121);
    v59 = (v63 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *v59 = v67;
    v59[1] = v69;
    *(v63 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
    v60 = (v63 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
    *v60 = v57;
    v60[1] = v58;
    sub_252E37A94();
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
  }

  while (v55 != v56);

  v75 = v123;
  v21 = v113;
  v25 = MEMORY[0x277D84F90];
LABEL_41:
  v76 = type metadata accessor for Room(0);
  v77 = MEMORY[0x2530AD730](v75, v76);
  v79 = v78;

  MEMORY[0x2530AD570](v77, v79);

  MEMORY[0x2530AD570](0x6F7267202020200ALL, 0xED0000203A737075);
  v80 = [v21 serviceGroups];
  sub_25293F638(0, &unk_2814B0248, 0x277CD1D98);
  v81 = sub_252E37264();

  if (v81 >> 62)
  {
    v82 = sub_252E378C4();
    if (v82)
    {
LABEL_43:
      v123 = v25;
      result = sub_252E37AB4();
      if ((v82 & 0x8000000000000000) == 0)
      {
        v83 = 0;
        v84 = v81;
        v118 = v81 & 0xC000000000000001;
        v85 = (v115 + 32);
        v120 = v81;
        do
        {
          if (v118)
          {
            v92 = MEMORY[0x2530ADF00](v83, v84);
          }

          else
          {
            v92 = *&v84[8 * v83 + 32];
          }

          v93 = v92;
          type metadata accessor for Group(0);
          v94 = swift_allocObject();
          *(v94 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate) = v93;
          v95 = v93;
          v96 = [v95 uniqueIdentifier];
          sub_252E32E64();

          v97 = [v95 name];
          v98 = sub_252E36F34();
          v100 = v99;

          v101 = [v95 assistantIdentifier];
          if (v101)
          {
            v86 = v101;
            v87 = sub_252E36F34();
            v89 = v88;
          }

          else
          {

            v87 = 0;
            v89 = 0;
          }

          ++v83;
          (*v85)(v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v119, v121);
          v90 = (v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
          *v90 = v98;
          v90[1] = v100;
          *(v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 4;
          v91 = (v94 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
          *v91 = v87;
          v91[1] = v89;
          sub_252E37A94();
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
          v84 = v120;
        }

        while (v82 != v83);

        v102 = v123;
        goto LABEL_55;
      }

LABEL_59:
      __break(1u);
      return result;
    }
  }

  else
  {
    v82 = *((v81 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v82)
    {
      goto LABEL_43;
    }
  }

  v102 = MEMORY[0x277D84F90];
LABEL_55:
  v103 = type metadata accessor for Group(0);
  v104 = MEMORY[0x2530AD730](v102, v103);
  v106 = v105;

  MEMORY[0x2530AD570](v104, v106);

  MEMORY[0x2530AD570](0x656373202020200ALL, 0xED0000203A73656ELL);
  v107 = sub_2529E789C();
  v108 = type metadata accessor for Scene(0);
  v109 = MEMORY[0x2530AD730](v107, v108);
  v111 = v110;

  MEMORY[0x2530AD570](v109, v111);

  MEMORY[0x2530AD570](32010, 0xE200000000000000);
  return v124;
}

uint64_t Home.deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t Home.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier;
  v2 = sub_252E32E84();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_2529E96EC()
{
  v1[7] = v0;
  v2 = sub_252E32E04();
  v1[8] = v2;
  v1[9] = *(v2 - 8);
  v1[10] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v1[11] = swift_task_alloc();
  v1[12] = swift_task_alloc();
  v1[13] = swift_task_alloc();
  v1[14] = swift_task_alloc();
  v3 = sub_252E36AB4();
  v1[15] = v3;
  v1[16] = *(v3 - 8);
  v1[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_2529E9864, 0, 0);
}

uint64_t sub_2529E9864()
{
  if (qword_27F53F600 != -1)
  {
    swift_once();
  }

  v1 = qword_27F544F88;
  v0[18] = qword_27F544F88;
  v2 = v1;
  sub_252E36A94();
  sub_252E375D4();
  v3 = sub_252E36A84();
  v4 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v3);
  sub_252929E74((v4 + 240), (v0 + 2));

  v5 = v0[5];
  v6 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v5);
  v9 = (*(v6 + 8) + **(v6 + 8));
  v7 = swift_task_alloc();
  v0[19] = v7;
  *v7 = v0;
  v7[1] = sub_2529E9A1C;

  return v9(v5, v6);
}

uint64_t sub_2529E9A1C(uint64_t a1)
{
  *(*v1 + 160) = a1;

  return MEMORY[0x2822009F8](sub_2529E9B1C, 0, 0);
}

uint64_t sub_2529E9B1C()
{
  v1 = v0[13];
  v2 = v0[14];
  v3 = v0[8];
  v4 = v0[9];
  v5 = v0[7];
  *(v5 + 16) = v0[20];
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v6 = *(v4 + 56);
  v6(v2, 1, 1, v3);
  v6(v1, 1, 1, v3);
  v7 = *(v5 + 16);
  if (v7)
  {
    [v7 lat];
    v8 = *(v5 + 16);
    if (v8)
    {
      [v8 lng];
      v9 = [objc_allocWithZone(MEMORY[0x277D0EAB0]) init];
      GEOLocationCoordinate2DMake();
      [v9 calculateAstronomicalTimeForLocation_];
      v10 = [v9 sunset];
      if (v10)
      {
        v11 = v10;
        sub_252E32DB4();

        v12 = 0;
      }

      else
      {
        v12 = 1;
      }

      v14 = v0[12];
      v13 = v0[13];
      v15 = v0[8];
      sub_2529EB04C(v13);
      v6(v14, v12, 1, v15);
      sub_2529EB0B4(v14, v13);
      v16 = [v9 sunrise];
      v17 = v0[14];
      if (v16)
      {
        v18 = v16;
        sub_252E32DB4();

        sub_2529EB04C(v17);
        v19 = 0;
      }

      else
      {
        sub_2529EB04C(v0[14]);

        v19 = 1;
      }

      v20 = v0[14];
      v21 = v0[11];
      v6(v21, v19, 1, v0[8]);
      sub_2529EB0B4(v21, v20);
    }
  }

  v22 = v0[17];
  v23 = v0[18];
  v24 = v0[16];
  v25 = v0[13];
  v26 = v0[14];
  v35 = v0[15];
  v28 = v0[9];
  v27 = v0[10];
  v29 = v0[7];
  v30 = v0[8];
  sub_2529EAFDC(v25, v29 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_sunsetDate);
  sub_2529EAFDC(v26, v29 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_sunriseDate);
  sub_252E32DC4();
  (*(v28 + 32))(v29 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_currentDate, v27, v30);
  v31 = sub_252E375C4();
  sub_252E36A74(v31, &dword_252917000, v23, "InitializeTimeUtilities", 23, 2, v22, " enableTelemetry=YES ", 21, 2, MEMORY[0x277D84F90]);
  sub_2529EB04C(v25);
  sub_2529EB04C(v26);
  (*(v24 + 8))(v22, v35);

  v32 = v0[1];
  v33 = v0[7];

  return v32(v33);
}

uint64_t sub_2529E9E68()
{
  v1 = v0;
  v105 = sub_252E36AD4();
  v95 = *(v105 - 8);
  MEMORY[0x28223BE20](v105);
  v98 = &v92 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415C8, &qword_252E40550);
  MEMORY[0x28223BE20](v3 - 8);
  v100 = &v92 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v101 = &v92 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v92 - v9;
  MEMORY[0x28223BE20](v8);
  v12 = &v92 - v11;
  v13 = sub_252E32E04();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v94 = &v92 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v97 = &v92 - v18;
  v19 = MEMORY[0x28223BE20](v17);
  v96 = &v92 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v102 = &v92 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v99 = &v92 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v103 = &v92 - v26;
  v27 = MEMORY[0x28223BE20](v25);
  v104 = &v92 - v28;
  MEMORY[0x28223BE20](v27);
  v30 = &v92 - v29;
  type metadata accessor for HomeAutomationUserDefaults();
  inited = swift_initStackObject();
  v32 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v33 = sub_252E36F04();
  v34 = [v32 initWithSuiteName_];

  *(inited + 16) = v34;
  v35 = sub_2529AED1C();

  if (v35 == 2)
  {
    sub_2529EAFDC(v1 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_sunsetDate, v12);
    v36 = *(v14 + 48);
    if (v36(v12, 1, v13) == 1)
    {
      v10 = v12;
LABEL_15:
      sub_2529EB04C(v10);
      v40 = v105;
      if (qword_27F53F4E8 != -1)
      {
        v91 = v105;
        swift_once();
        v40 = v91;
      }

      __swift_project_value_buffer(v40, qword_27F544D60);
      v108 = 0;
      v109 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD000000000000035, 0x8000000252E70B00);
      v106 = *(v1 + 16);
      v41 = v106;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415D0, &qword_252E40558);
      v42 = sub_252E36F94();
      MEMORY[0x2530AD570](v42);

      sub_252CC4050(v108, v109, 0xD000000000000074, 0x8000000252E70B40, 0xD000000000000020, 0x8000000252E70BC0, 68);

      v35 = 0;
      return v35 & 1;
    }

    v39 = *(v14 + 32);
    v39(v30, v12, v13);
    v93 = v1;
    sub_2529EAFDC(v1 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_sunriseDate, v10);
    if (v36(v10, 1, v13) == 1)
    {
      (*(v14 + 8))(v30, v13);
      v1 = v93;
      goto LABEL_15;
    }

    v92 = v30;
    v39(v104, v10, v13);
    v43 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
    v44 = sub_252E36F04();
    [v43 setDateFormat_];

    v45 = v100;
    sub_252E33004();
    v46 = sub_252E33044();
    v47 = *(v46 - 8);
    v48 = 0;
    if ((*(v47 + 48))(v45, 1, v46) != 1)
    {
      v48 = sub_252E33014();
      (*(v47 + 8))(v45, v46);
    }

    [v43 setTimeZone_];

    v49 = sub_252E32D64();
    v50 = [v43 stringFromDate_];

    if (!v50)
    {
      sub_252E36F34();
      v50 = sub_252E36F04();
    }

    v51 = [v43 dateFromString_];

    if (v51)
    {
      v52 = v101;
      sub_252E32DB4();

      v53 = 0;
    }

    else
    {
      v53 = 1;
      v52 = v101;
    }

    (*(v14 + 56))(v52, v53, 1, v13);
    sub_2529EB04C(v52);
    v54 = sub_252E32D64();
    v55 = [v43 stringFromDate_];

    if (!v55)
    {
      sub_252E36F34();
      v55 = sub_252E36F04();
    }

    v56 = [v43 dateFromString_];

    v57 = v103;
    if (v56)
    {
      v58 = v99;
      sub_252E32DB4();

      v39(v57, v58, v13);
      v59 = sub_252E32D64();
      v60 = [v43 stringFromDate_];

      if (!v60)
      {
        sub_252E36F34();
        v60 = sub_252E36F04();
      }

      v61 = [v43 dateFromString_];

      if (v61)
      {
        v62 = v96;
        sub_252E32DB4();

        v39(v102, v62, v13);
        v63 = sub_252E32D64();
        v64 = [v43 stringFromDate_];

        if (!v64)
        {
          sub_252E36F34();
          v64 = sub_252E36F04();
        }

        v65 = [v43 dateFromString_];

        if (v65)
        {
          v66 = v94;
          sub_252E32DB4();

          v39(v97, v66, v13);
          v67 = v105;
          if (qword_27F53F4E8 != -1)
          {
            swift_once();
          }

          v68 = __swift_project_value_buffer(v67, qword_27F544D60);
          v69 = v95;
          (*(v95 + 16))(v98, v68, v67);
          v108 = 0;
          v109 = 0xE000000000000000;
          sub_252E379F4();
          MEMORY[0x2530AD570](0x6E6F697461636F4CLL, 0xEA0000000000203ALL);
          v70 = *(v93 + 16);
          v71 = 0;
          v72 = 0;
          if (v70)
          {
            [v70 lat];
          }

          v106 = v72;
          v107 = v70 == 0;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540740, &unk_252E40560);
          v73 = sub_252E36F94();
          MEMORY[0x2530AD570](v73);

          MEMORY[0x2530AD570](2108704, 0xE300000000000000);
          if (v70)
          {
            [v70 lng];
            v71 = v74;
          }

          v106 = v71;
          v107 = v70 == 0;
          v75 = sub_252E36F94();
          MEMORY[0x2530AD570](v75);

          MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70C30);
          sub_2529EB124();
          v76 = v103;
          v77 = sub_252E37D94();
          MEMORY[0x2530AD570](v77);

          MEMORY[0x2530AD570](0xD000000000000011, 0x8000000252E70C50);
          v78 = sub_252E37D94();
          MEMORY[0x2530AD570](v78);

          MEMORY[0x2530AD570](0xD000000000000012, 0x8000000252E70C70);
          v79 = v97;
          v80 = sub_252E37D94();
          MEMORY[0x2530AD570](v80);

          v81 = v98;
          sub_252CC3D90(v108, v109, 0xD000000000000074, 0x8000000252E70B40);

          (*(v69 + 8))(v81, v105);
          v82 = sub_252E32D74();
          v83 = sub_252E32D74();
          if (v82)
          {
            v84 = v92;
            if (v83)
            {
              v35 = 1;
LABEL_51:

              v89 = *(v14 + 8);
              v89(v79, v13);
              v89(v102, v13);
              v89(v76, v13);
              v89(v104, v13);
              v89(v84, v13);
              return v35 & 1;
            }
          }

          else
          {
            v84 = v92;
            if ((v83 & 1) == 0)
            {
              v35 = 0;
              goto LABEL_51;
            }
          }

          v35 = sub_252E32D84();
          goto LABEL_51;
        }

        v85 = *(v14 + 8);
        v85(v102, v13);
        v85(v57, v13);
      }

      else
      {
        (*(v14 + 8))(v57, v13);
      }
    }

    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v105, qword_27F544D60);
    v108 = 0;
    v109 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD00000000000003ALL, 0x8000000252E70BF0);
    v106 = *(v93 + 16);
    v86 = v106;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415D0, &qword_252E40558);
    v87 = sub_252E36F94();
    MEMORY[0x2530AD570](v87);

    sub_252CC4050(v108, v109, 0xD000000000000074, 0x8000000252E70B40, 0xD000000000000020, 0x8000000252E70BC0, 80);

    v88 = *(v14 + 8);
    v88(v104, v13);
    v88(v92, v13);
    v35 = 0;
  }

  else
  {
    if (qword_27F53F4E8 != -1)
    {
      swift_once();
    }

    __swift_project_value_buffer(v105, qword_27F544D60);
    v108 = 0;
    v109 = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000040, 0x8000000252E70C90);
    if (v35)
    {
      v37 = 1702195828;
    }

    else
    {
      v37 = 0x65736C6166;
    }

    if (v35)
    {
      v38 = 0xE400000000000000;
    }

    else
    {
      v38 = 0xE500000000000000;
    }

    MEMORY[0x2530AD570](v37, v38);

    sub_252CC3D90(v108, v109, 0xD000000000000074, 0x8000000252E70B40);
  }

  return v35 & 1;
}

uint64_t sub_2529EAD94()
{
  v1 = OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_currentDate;
  v2 = sub_252E32E04();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_2529EB04C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_sunriseDate);
  sub_2529EB04C(v0 + OBJC_IVAR____TtC22HomeAutomationInternal13TimeUtilities_sunsetDate);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for TimeUtilities(uint64_t a1)
{
  result = qword_27F5415B0;
  if (!qword_27F5415B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_2529EAEAC(uint64_t a1)
{
  sub_252E32E04();
  if (v1 <= 0x3F)
  {
    sub_2529EAF84(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2529EAF84(uint64_t a1)
{
  if (!qword_27F5415C0)
  {
    sub_252E32E04();
    v1 = sub_252E37734();
    if (!v2)
    {
      atomic_store(v1, &qword_27F5415C0);
    }
  }
}

uint64_t sub_2529EAFDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2529EB04C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2529EB0B4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F540F38, &unk_252E41490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_2529EB124()
{
  result = qword_27F5415D8;
  if (!qword_27F5415D8)
  {
    v3 = sub_252E32E04();
    result = swift_getWitnessTable(MEMORY[0x277CC95B8], v3, v0, v1);
    atomic_store(result, &qword_27F5415D8);
  }

  return result;
}

uint64_t sub_2529EB17C(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x2822009F8](sub_2529EB19C, 0, 0);
}

uint64_t sub_2529EB19C()
{
  v1 = v0[8];
  sub_252929E74(v1 + 24, (v0 + 2));
  v2 = v0[5];
  v3 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v4 = *(v1 + 16);

  sub_252943BD0(sub_2529EB4A4, v4, 1, v2, v3);

  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  v5 = v0[1];

  return v5();
}

uint64_t sub_2529EB2AC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_25293B808;

  return sub_2529EB17C(a1);
}

uint64_t sub_2529EB368()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5415E0, &qword_252E40638);
  v1 = sub_252E34024();
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_2529EB3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  v9 = type metadata accessor for DiscoverHomeUnsupportedValueFlowStrategy();
  *v8 = v4;
  v8[1] = sub_25294B954;

  return MEMORY[0x2821B9E00](a1, a2, v9, a4);
}

uint64_t sub_2529EB4E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1 == 0xD00000000000001CLL && 0x8000000252E70DF0 == a2;
  if (v5 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 19;
LABEL_7:
    result = sub_25299C950(v7);
LABEL_8:
    *(a3 + 24) = MEMORY[0x277D839B0];
    v9 = result & 1;
LABEL_9:
    *a3 = v9;
    return result;
  }

  if (a1 == 0xD000000000000019 && 0x8000000252E70E10 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v10 = &unk_27F545D11;
    v11 = 19;
LABEL_15:
    v12 = sub_252D8D5A8(v10, v11);
    goto LABEL_16;
  }

  if (a1 == 0xD00000000000001CLL && 0x8000000252E70E30 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 17;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000019 && 0x8000000252E70E50 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v10 = &unk_27F545D12;
    v11 = 17;
    goto LABEL_15;
  }

  if (a1 == 0xD000000000000017 && 0x8000000252E70E70 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 6;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000014 && 0x8000000252E70E90 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v10 = &unk_27F545D10;
    v11 = 6;
    goto LABEL_15;
  }

  if (a1 == 0xD00000000000001ALL && 0x8000000252E70EB0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 14;
    goto LABEL_7;
  }

  if (a1 == 0xD00000000000001CLL && 0x8000000252E70ED0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    v7 = 15;
    goto LABEL_7;
  }

  if (a1 == 0xD000000000000017 && 0x8000000252E70EF0 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v10 = &unk_27F545D13;
    v11 = 14;
    goto LABEL_15;
  }

  if (a1 == 0xD000000000000019 && 0x8000000252E70F10 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v10 = &unk_27F545D14;
    v11 = 15;
    goto LABEL_15;
  }

  if (a1 == 0xD000000000000014 && 0x8000000252E70F30 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v12 = sub_252D8D5C0(&unk_27F545D15, 4);
    goto LABEL_16;
  }

  if (a1 == 0xD00000000000001ALL && 0x8000000252E70F50 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    swift_beginAccess();
    v12 = sub_252D8D5C0(&unk_27F545D16, 5);
LABEL_16:
    v13 = v12;
    result = swift_endAccess();
    if (v13)
    {
      result = type metadata accessor for HomeAutomationClimateResponses();
      *(a3 + 24) = result;
      *a3 = v13;
    }

    else
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    return result;
  }

  if (a1 == 0x52776F6C65427369 && a2 == 0xEC00000065676E61 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D8C850();
    goto LABEL_8;
  }

  if (a1 == 0x5265766F62417369 && a2 == 0xEC00000065676E61 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D8CCA4();
    goto LABEL_8;
  }

  if (a1 == 0xD000000000000015 && 0x8000000252E70F70 == a2 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D8D0FC();
    goto LABEL_8;
  }

  if (a1 == 0x656C706D6F437369 && a2 == 0xEF65636976654478 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_252D8D2DC();
    goto LABEL_8;
  }

  if (a1 == 0x7265746165487369 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_25299C950(19);
    if (result)
    {
      v14 = 17;
LABEL_85:
      result = sub_25299C950(v14);
      v15 = result ^ 1;
LABEL_87:
      *(a3 + 24) = MEMORY[0x277D839B0];
      v9 = v15 & 1;
      goto LABEL_9;
    }

    goto LABEL_86;
  }

  if (a1 == 0x72656C6F6F437369 && a2 == 0xE800000000000000 || (sub_252E37DB4() & 1) != 0)
  {
    result = sub_25299C950(17);
    if (result)
    {
      v14 = 19;
      goto LABEL_85;
    }

LABEL_86:
    v15 = 0;
    goto LABEL_87;
  }

  return sub_252CDF514(a1, a2, a3);
}

uint64_t PlaceHintSemantic.rawValue.getter()
{
  result = 0x69685F6573756F68;
  switch(*v0)
  {
    case 1:
      return 0x6E69685F6D6F6F72;
    case 2:
      return 0x657265685F6E69;
    case 3:
      return 0x6572656874;
    case 4:
      return 1936287860;
    case 5:
      return 0x725F6E6F6D6D6F63;
    case 6:
      return 1819042152;
    case 7:
      return 0x6E65686374696BLL;
    case 8:
      v2 = 1769367916;
      return v2 | 0x6F72676E00000000;
    case 9:
      v2 = 1768843620;
      return v2 | 0x6F72676E00000000;
    case 0xA:
      return 0x65636E6172746E65;
    case 0xB:
      return 0x6D6F6F7268746162;
    case 0xC:
      return 0x65636966666FLL;
    case 0xD:
      v3 = 1919182178;
      goto LABEL_23;
    case 0xE:
      return 0x625F72657473616DLL;
    case 0xF:
      return 0x746E656D65736162;
    case 0x10:
      return 1685217657;
    case 0x11:
      return 7174503;
    case 0x12:
      return 0x6F6F725F79616C70;
    case 0x13:
      v3 = 1918858868;
LABEL_23:
      result = v3 | 0x6D6F6F00000000;
      break;
    case 0x14:
      result = 0x706F68736B726F77;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static PlaceHintSemantic.< infix(_:_:)()
{
  v0 = PlaceHintSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == PlaceHintSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

HomeAutomationInternal::PlaceHintSemantic_optional __swiftcall PlaceHintSemantic.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_252E37DE4();

  v5 = 0;
  v6 = 3;
  switch(v3)
  {
    case 0:
      goto LABEL_11;
    case 1:
      v5 = 1;
      goto LABEL_11;
    case 2:
      v5 = 2;
LABEL_11:
      v6 = v5;
      break;
    case 3:
      break;
    case 4:
      v6 = 4;
      break;
    case 5:
      v6 = 5;
      break;
    case 6:
      v6 = 6;
      break;
    case 7:
      v6 = 7;
      break;
    case 8:
      v6 = 8;
      break;
    case 9:
      v6 = 9;
      break;
    case 10:
      v6 = 10;
      break;
    case 11:
      v6 = 11;
      break;
    case 12:
      v6 = 12;
      break;
    case 13:
      v6 = 13;
      break;
    case 14:
      v6 = 14;
      break;
    case 15:
      v6 = 15;
      break;
    case 16:
      v6 = 16;
      break;
    case 17:
      v6 = 17;
      break;
    case 18:
      v6 = 18;
      break;
    case 19:
      v6 = 19;
      break;
    case 20:
      v6 = 20;
      break;
    default:
      v6 = 21;
      break;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_2529EBFB0()
{
  v0 = PlaceHintSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == PlaceHintSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_2529EC04C()
{
  sub_252E37EC4();
  PlaceHintSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529EC0B4(uint64_t a1)
{
  PlaceHintSemantic.rawValue.getter();
  sub_252E37044();
}

uint64_t sub_2529EC118(uint64_t a1)
{
  sub_252E37EC4();
  PlaceHintSemantic.rawValue.getter();
  sub_252E37044();

  return sub_252E37F14();
}

uint64_t sub_2529EC188@<X0>(uint64_t *a1@<X8>)
{
  result = PlaceHintSemantic.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_2529EC1B0()
{
  v0 = PlaceHintSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == PlaceHintSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_2529EC24C()
{
  v0 = PlaceHintSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == PlaceHintSemantic.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_2529EC2FC()
{
  v0 = PlaceHintSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == PlaceHintSemantic.rawValue.getter() && v2 == v3)
  {

    v6 = 1;
  }

  else
  {
    v5 = sub_252E37DB4();

    v6 = v5 ^ 1;
  }

  return v6 & 1;
}

uint64_t sub_2529EC3AC()
{
  v0 = PlaceHintSemantic.rawValue.getter();
  v2 = v1;
  if (v0 == PlaceHintSemantic.rawValue.getter() && v2 == v3)
  {
    v5 = 0;
  }

  else
  {
    v5 = sub_252E37DB4();
  }

  return v5 & 1;
}

uint64_t sub_2529EC508(uint64_t a1, uint64_t a2)
{
  v4 = sub_2529EC838();
  v5 = sub_2529EC88C();
  v6 = sub_2529EC8E0();

  return MEMORY[0x2821C21F8](a1, a2, v4, v5, v6);
}

unint64_t sub_2529EC57C()
{
  result = qword_27F5415E8;
  if (!qword_27F5415E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaceHintSemantic, &type metadata for PlaceHintSemantic, v0, v1);
    atomic_store(result, &qword_27F5415E8);
  }

  return result;
}

unint64_t sub_2529EC5D4()
{
  result = qword_27F5415F0;
  if (!qword_27F5415F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaceHintSemantic, &type metadata for PlaceHintSemantic, v0, v1);
    atomic_store(result, &qword_27F5415F0);
  }

  return result;
}

unint64_t sub_2529EC62C()
{
  result = qword_27F5415F8;
  if (!qword_27F5415F8)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F540960, &qword_252E3DF40);
    result = swift_getWitnessTable(MEMORY[0x277D83988], v3, v0, v1);
    atomic_store(result, &qword_27F5415F8);
  }

  return result;
}

unint64_t sub_2529EC694()
{
  result = qword_27F541600;
  if (!qword_27F541600)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaceHintSemantic, &type metadata for PlaceHintSemantic, v0, v1);
    atomic_store(result, &qword_27F541600);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PlaceHintSemantic(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEC)
  {
    goto LABEL_17;
  }

  if (a2 + 20 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 20) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 20;
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

      return (*a1 | (v4 << 8)) - 20;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 20;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x15;
  v8 = v6 - 21;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PlaceHintSemantic(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 20 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 20) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEC)
  {
    v4 = 0;
  }

  if (a2 > 0xEB)
  {
    v5 = ((a2 - 236) >> 8) + 1;
    *result = a2 + 20;
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
    *result = a2 + 20;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_2529EC838()
{
  result = qword_27F541608;
  if (!qword_27F541608)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaceHintSemantic, &type metadata for PlaceHintSemantic, v0, v1);
    atomic_store(result, &qword_27F541608);
  }

  return result;
}

unint64_t sub_2529EC88C()
{
  result = qword_27F541610;
  if (!qword_27F541610)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaceHintSemantic, &type metadata for PlaceHintSemantic, v0, v1);
    atomic_store(result, &qword_27F541610);
  }

  return result;
}

unint64_t sub_2529EC8E0()
{
  result = qword_27F541618;
  if (!qword_27F541618)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for PlaceHintSemantic, &type metadata for PlaceHintSemantic, v0, v1);
    atomic_store(result, &qword_27F541618);
  }

  return result;
}

uint64_t HomeStore.scenes(matching:)(unint64_t a1)
{
  v137 = sub_252E32E84();
  v130 = *(v137 - 8);
  MEMORY[0x28223BE20](v137);
  v136 = &v116 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v123 = sub_252E36AD4();
  v124 = *(v123 - 8);
  v4 = MEMORY[0x28223BE20](v123);
  v122 = &v116 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v132 = &v116 - v6;
  v7 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v7 != 2 && (v7 & 1) == 0)
  {
    sub_2529318DC();
    v133 = swift_allocError();
    *v36 = 12;
    return v133;
  }

  v131 = v1;
  v8 = sub_2529D8DC0();
  v9 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_43:
    v10 = sub_252E378C4();
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = MEMORY[0x277D84F90];
  if (v10)
  {
    v12 = 0;
    v134 = MEMORY[0x277D84F90];
    while (2)
    {
      v13 = v12;
      while (1)
      {
        if ((a1 & 0xC000000000000001) != 0)
        {
          v14 = MEMORY[0x2530ADF00](v13, a1);
        }

        else
        {
          if (v13 >= *(v9 + 16))
          {
            goto LABEL_41;
          }

          v14 = *(a1 + 8 * v13 + 32);
        }

        v15 = v14;
        v12 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v16 = [v14 homeName];
        if (v16)
        {
          break;
        }

        ++v13;
        if (v12 == v10)
        {
          goto LABEL_23;
        }
      }

      v17 = v8;
      v18 = v16;
      v135 = sub_252E36F34();
      v133 = v19;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v134 = sub_2529F7A80(0, *(v134 + 2) + 1, 1, v134);
      }

      v21 = *(v134 + 2);
      v20 = *(v134 + 3);
      v8 = v17;
      if (v21 >= v20 >> 1)
      {
        v134 = sub_2529F7A80((v20 > 1), v21 + 1, 1, v134);
      }

      v22 = v134;
      v23 = v135;
      *(v134 + 2) = v21 + 1;
      v24 = &v22[16 * v21];
      v25 = v133;
      *(v24 + 4) = v23;
      *(v24 + 5) = v25;
      v11 = MEMORY[0x277D84F90];
      if (v12 != v10)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v134 = MEMORY[0x277D84F90];
  }

LABEL_23:
  v26 = *(v134 + 2);
  v135 = a1;
  if (!v26)
  {
    goto LABEL_47;
  }

  v138 = v11;
  if (v8 >> 62)
  {
    v27 = sub_252E378C4();
    if (v27)
    {
      goto LABEL_26;
    }

LABEL_45:
    v35 = MEMORY[0x277D84F90];
    goto LABEL_46;
  }

  v27 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
    goto LABEL_45;
  }

LABEL_26:
  v28 = 0;
  v133 = v8 & 0xC000000000000001;
  v29 = v8 & 0xFFFFFFFFFFFFFF8;
  while (v133)
  {
    v30 = v8;
    v32 = MEMORY[0x2530ADF00](v28, v8);
    v31 = v32;
    v33 = v28 + 1;
    if (__OFADD__(v28, 1))
    {
      goto LABEL_36;
    }

LABEL_32:
    v34 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    v143[0] = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    v143[1] = v34;
    MEMORY[0x28223BE20](v32);
    *(&v116 - 2) = v143;

    v9 = sub_2529ED970(sub_2529FBFE8, (&v116 - 4), v134);

    if (v9)
    {
      sub_252E37A94();
      v9 = *(v138 + 16);
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    a1 = v135;
    ++v28;
    v8 = v30;
    if (v33 == v27)
    {
      goto LABEL_37;
    }
  }

  if (v28 >= *(v29 + 16))
  {
    goto LABEL_42;
  }

  v30 = v8;
  v31 = *(v8 + 8 * v28 + 32);

  v33 = v28 + 1;
  if (!__OFADD__(v28, 1))
  {
    goto LABEL_32;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  v35 = v138;
LABEL_46:

  v8 = v35;
LABEL_47:
  v37 = sub_2529F442C(v8, a1);
  if (v37)
  {
    v38 = v37;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_252E3C130;
    *(v8 + 32) = v38;
  }

  if (qword_27F53F4C0 == -1)
  {
    goto LABEL_50;
  }

LABEL_149:
  swift_once();
LABEL_50:
  v39 = v123;
  v40 = __swift_project_value_buffer(v123, qword_27F544CE8);
  v143[0] = 0;
  v143[1] = 0xE000000000000000;
  sub_252E379F4();

  v143[0] = 0xD000000000000016;
  v143[1] = 0x8000000252E70FB0;
  v41 = MEMORY[0x277D837D0];
  v42 = v134;
  v43 = MEMORY[0x2530AD730](v134, MEMORY[0x277D837D0]);
  MEMORY[0x2530AD570](v43);

  v121 = "Looking for scenes in ";
  sub_252CC3D90(v143[0], v143[1], 0xD00000000000007FLL, 0x8000000252E70FD0);

  v44 = sub_2529EE06C(v8);

  v45 = *(v124 + 16);
  v120 = v40;
  v119 = v124 + 16;
  v118 = v45;
  v45(v132, v40, v39);
  v143[0] = 0;
  v143[1] = 0xE000000000000000;
  sub_252E379F4();

  strcpy(v143, "All scenes in ");
  HIBYTE(v143[1]) = -18;
  v46 = MEMORY[0x2530AD730](v42, v41);
  v48 = v47;

  MEMORY[0x2530AD570](v46, v48);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  if (v44 >> 62)
  {
    v49 = sub_252E378C4();
  }

  else
  {
    v49 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v50 = MEMORY[0x277D84F90];
  v134 = v49;
  if (v49)
  {
    v51 = 0;
    v52 = v44 & 0xC000000000000001;
    v8 = v44 & 0xFFFFFFFFFFFFFF8;
    v53 = v44;
    do
    {
      if (v52)
      {
        v54 = MEMORY[0x2530ADF00](v51, v44);
        v55 = (v51 + 1);
        if (__OFADD__(v51, 1))
        {
          goto LABEL_142;
        }
      }

      else
      {
        if (v51 >= *(v8 + 16))
        {
          goto LABEL_143;
        }

        v54 = *(v44 + 8 * v51 + 32);

        v55 = (v51 + 1);
        if (__OFADD__(v51, 1))
        {
LABEL_142:
          __break(1u);
LABEL_143:
          __break(1u);
LABEL_144:
          __break(1u);
LABEL_145:
          __break(1u);
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
LABEL_148:
          __break(1u);
          goto LABEL_149;
        }
      }

      v57 = *(v54 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v56 = *(v54 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v50 = sub_2529F7A80(0, *(v50 + 2) + 1, 1, v50);
      }

      v59 = *(v50 + 2);
      v58 = *(v50 + 3);
      if (v59 >= v58 >> 1)
      {
        v50 = sub_2529F7A80((v58 > 1), v59 + 1, 1, v50);
      }

      *(v50 + 2) = v59 + 1;
      v60 = &v50[16 * v59];
      *(v60 + 4) = v57;
      *(v60 + 5) = v56;
      ++v51;
      v49 = v134;
      a1 = v135;
      v44 = v53;
    }

    while (v55 != v134);
  }

  v61 = MEMORY[0x2530AD730](v50, MEMORY[0x277D837D0]);
  v63 = v62;

  MEMORY[0x2530AD570](v61, v63);

  v64 = v132;
  sub_252CC3D90(v143[0], v143[1], 0xD00000000000007FLL, v121 | 0x8000000000000000);

  v65 = *(v124 + 8);
  v124 += 8;
  v117 = v65;
  v65(v64, v123);
  v66 = MEMORY[0x277D84F90];
  v143[0] = MEMORY[0x277D84F90];
  if (!v49)
  {
    v69 = MEMORY[0x277D84F90];
    goto LABEL_80;
  }

  v67 = 0;
  v8 = v44 & 0xFFFFFFFFFFFFFF8;
  while (2)
  {
    if ((v44 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v67, v44);
      v68 = (v67 + 1);
      if (__OFADD__(v67, 1))
      {
        break;
      }

      goto LABEL_73;
    }

    if (v67 >= *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_144;
    }

    v68 = (v67 + 1);
    if (!__OFADD__(v67, 1))
    {
LABEL_73:
      if (sub_252967B6C(a1))
      {
        sub_252E37A94();
        sub_252E37AC4();
        v49 = v134;
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v67;
      if (v68 == v49)
      {
        goto LABEL_78;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_78:
  v69 = v143[0];
LABEL_80:

  v138 = v66;
  if (v69 < 0 || (v69 & 0x4000000000000000) != 0)
  {
    v70 = sub_252E378C4();
  }

  else
  {
    v70 = *(v69 + 16);
  }

  v133 = MEMORY[0x277D84F90];
  if (!v70)
  {
    goto LABEL_125;
  }

  v71 = 0;
  v128 = v69 & 0xC000000000000001;
  v127 = v69 + 32;
  v135 = (v130 + 8);
  v125 = v70;
  v126 = v69;
  while (2)
  {
    while (2)
    {
      if (v128)
      {
        v72 = MEMORY[0x2530ADF00](v71, v69);
        v73 = __OFADD__(v71, 1);
        v74 = (v71 + 1);
        if (v73)
        {
          goto LABEL_147;
        }
      }

      else
      {
        if (v71 >= *(v69 + 16))
        {
          goto LABEL_148;
        }

        v72 = *(v127 + 8 * v71);

        v73 = __OFADD__(v71, 1);
        v74 = (v71 + 1);
        if (v73)
        {
          goto LABEL_147;
        }
      }

      v75 = [*(v72 + OBJC_IVAR____TtC22HomeAutomationInternal5Scene_delegate) actions];
      v76 = sub_25293F638(0, &qword_27F5412F0, 0x277CD17F8);
      sub_2529E6100();
      v8 = sub_252E373A4();

      v142 = MEMORY[0x277D84F90];
      v131 = v72;
      v132 = v74;
      v130 = v8;
      v134 = v76;
      if ((v8 & 0xC000000000000001) != 0)
      {
        swift_unknownObjectRetain();
        sub_252E37874();
        sub_252E373E4();
        v8 = v143[0];
        v77 = v143[1];
        v78 = v143[2];
        v79 = v143[3];
        v80 = v143[4];
      }

      else
      {
        v81 = -1 << *(v8 + 32);
        v77 = v8 + 56;
        v78 = ~v81;
        v82 = -v81;
        if (v82 < 64)
        {
          v83 = ~(-1 << v82);
        }

        else
        {
          v83 = -1;
        }

        v80 = v83 & *(v8 + 56);

        v79 = 0;
      }

      v129 = v78;
      v84 = (v78 + 64) >> 6;
      v85 = MEMORY[0x277D84F90];
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_102;
      }

      while (1)
      {
        v86 = v79;
        v87 = v80;
        a1 = v79;
        if (!v80)
        {
          while (1)
          {
            a1 = v86 + 1;
            if (__OFADD__(v86, 1))
            {
              break;
            }

            if (a1 >= v84)
            {
              goto LABEL_115;
            }

            v87 = *(v77 + 8 * a1);
            ++v86;
            if (v87)
            {
              goto LABEL_100;
            }
          }

          __break(1u);
          goto LABEL_142;
        }

LABEL_100:
        v88 = (v87 - 1) & v87;
        v89 = *(*(v8 + 48) + ((a1 << 9) | (8 * __clz(__rbit64(v87)))));
        if (!v89)
        {
          break;
        }

        while (1)
        {
          type metadata accessor for Action();
          v91 = swift_allocObject();
          *(v91 + 16) = v89;
          v92 = v89;
          v93 = [v92 uniqueIdentifier];
          v94 = v136;
          sub_252E32E64();

          v95 = sub_252E32E24();
          v97 = v96;
          (*v135)(v94, v137);
          *(v91 + 24) = v95;
          *(v91 + 32) = v97;
          objc_opt_self();
          if (swift_dynamicCastObjCClass())
          {
            v98 = 1;
          }

          else
          {
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              v98 = 2;
            }

            else
            {
              objc_opt_self();
              if (swift_dynamicCastObjCClass())
              {
                v98 = 3;
              }

              else
              {
                objc_opt_self();
                v98 = 4 * (swift_dynamicCastObjCClass() != 0);
              }
            }
          }

          *(v91 + 40) = v98;
          MEMORY[0x2530AD700]();
          if (*((v142 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v142 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_252E372A4();
          }

          sub_252E372D4();
          v85 = v142;
          v79 = a1;
          v80 = v88;
          if ((v8 & 0x8000000000000000) == 0)
          {
            break;
          }

LABEL_102:
          v90 = sub_252E37904();
          if (v90)
          {
            v140 = v90;
            swift_dynamicCast();
            v89 = v141;
            a1 = v79;
            v88 = v80;
            if (v141)
            {
              continue;
            }
          }

          goto LABEL_115;
        }
      }

LABEL_115:
      sub_25291AE30(v8);

      if (v85 >> 62)
      {
        v99 = sub_252E378C4();
      }

      else
      {
        v99 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v69 = v126;
      v100 = v125;
      v71 = v132;

      if (v99)
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
        if (v71 == v100)
        {
          goto LABEL_124;
        }

        continue;
      }

      break;
    }

    if (v71 != v100)
    {
      continue;
    }

    break;
  }

LABEL_124:
  v133 = v138;
LABEL_125:

  v118(v122, v120, v123);
  v138 = 0;
  v139 = 0xE000000000000000;
  sub_252E379F4();

  v138 = 0xD000000000000014;
  v139 = 0x8000000252E71050;
  if (v133 < 0 || (v133 & 0x4000000000000000) != 0)
  {
    v101 = sub_252E378C4();
    if (v101)
    {
      goto LABEL_128;
    }
  }

  else
  {
    v101 = *(v133 + 16);
    if (v101)
    {
LABEL_128:
      v102 = 0;
      v103 = v133 & 0xC000000000000001;
      v104 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v103)
        {
          v105 = MEMORY[0x2530ADF00](v102, v133);
          v106 = v102 + 1;
          if (__OFADD__(v102, 1))
          {
            goto LABEL_145;
          }
        }

        else
        {
          if (v102 >= *(v133 + 16))
          {
            goto LABEL_146;
          }

          v105 = *(v133 + 8 * v102 + 32);

          v106 = v102 + 1;
          if (__OFADD__(v102, 1))
          {
            goto LABEL_145;
          }
        }

        v108 = *(v105 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v107 = *(v105 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v104 = sub_2529F7A80(0, *(v104 + 2) + 1, 1, v104);
        }

        a1 = *(v104 + 2);
        v109 = *(v104 + 3);
        if (a1 >= v109 >> 1)
        {
          v104 = sub_2529F7A80((v109 > 1), a1 + 1, 1, v104);
        }

        *(v104 + 2) = a1 + 1;
        v110 = &v104[16 * a1];
        *(v110 + 4) = v108;
        *(v110 + 5) = v107;
        ++v102;
        if (v106 == v101)
        {
          goto LABEL_154;
        }
      }
    }
  }

  v104 = MEMORY[0x277D84F90];
LABEL_154:
  v111 = MEMORY[0x2530AD730](v104, MEMORY[0x277D837D0]);
  v113 = v112;

  MEMORY[0x2530AD570](v111, v113);

  v114 = v122;
  sub_252CC3D90(v138, v139, 0xD00000000000007FLL, v121 | 0x8000000000000000);

  v117(v114, v123);
  return v133;
}

uint64_t sub_2529ED970(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

      v9 = a1(v12);

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

uint64_t sub_2529EDA1C(uint64_t (*a1)(_BYTE *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = (a3 + 32);
    v8 = v5 - 1;
    while (1)
    {
      memcpy(__dst, v7, sizeof(__dst));
      memcpy(__src, v7, sizeof(__src));
      sub_2529353AC(__dst, v12);
      v9 = a1(__src);
      if (v3)
      {
        break;
      }

      v4 = v9;
      memcpy(v12, __src, sizeof(v12));
      sub_252935408(v12);
      v10 = v8-- == 0;
      v7 += 504;
      if ((v4 | v10))
      {
        return v4 & 1;
      }
    }

    memcpy(v12, __src, sizeof(v12));
    sub_252935408(v12);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_2529EDB18(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v11 = *v6;

      v8 = a1(&v11);

      if (v3)
      {
        break;
      }

      v9 = v7-- == 0;
      ++v6;
    }

    while (((v8 | v9) & 1) == 0);
  }

  else
  {
    LOBYTE(v8) = 0;
  }

  return v8 & 1;
}

uint64_t sub_2529EDBC8(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
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
        v8 = MEMORY[0x2530ADF00](v5, a3);
        v9 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_13;
        }

LABEL_7:
        v16 = v8;
        v10 = a1(&v16);

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
      v12 = sub_252E378C4();
      a3 = v11;
      v4 = v12;
    }

    while (v12);
  }

  v10 = 0;
  return v10 & 1;
}

uint64_t sub_2529EDD04(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  if (v5)
  {
    v7 = a3 + 32;
    v8 = v5 - 1;
    while (1)
    {
      v9 = *(v7 + 112);
      v10 = *(v7 + 80);
      v45 = *(v7 + 96);
      v46 = v9;
      v11 = *(v7 + 112);
      v47 = *(v7 + 128);
      v12 = *(v7 + 48);
      v13 = *(v7 + 16);
      v41 = *(v7 + 32);
      v42 = v12;
      v14 = *(v7 + 48);
      v15 = *(v7 + 80);
      v43 = *(v7 + 64);
      v44 = v15;
      v16 = *(v7 + 16);
      v40[0] = *v7;
      v40[1] = v16;
      v36 = v45;
      v37 = v11;
      v38 = *(v7 + 128);
      v32 = v41;
      v33 = v14;
      v34 = v43;
      v35 = v10;
      v48 = *(v7 + 144);
      v39 = *(v7 + 144);
      v30 = v40[0];
      v31 = v13;
      sub_25297DE08(v40, &v20);
      v17 = a1(&v30);
      if (v3)
      {
        break;
      }

      v4 = v17;
      v26 = v36;
      v27 = v37;
      v28 = v38;
      v29 = v39;
      v22 = v32;
      v23 = v33;
      v24 = v34;
      v25 = v35;
      v20 = v30;
      v21 = v31;
      sub_2529AEC80(&v20);
      v18 = v8-- == 0;
      v7 += 152;
      if ((v4 | v18))
      {
        return v4 & 1;
      }
    }

    v26 = v36;
    v27 = v37;
    v28 = v38;
    v29 = v39;
    v22 = v32;
    v23 = v33;
    v24 = v34;
    v25 = v35;
    v20 = v30;
    v21 = v31;
    sub_2529AEC80(&v20);
  }

  else
  {
    LOBYTE(v4) = 0;
  }

  return v4 & 1;
}

uint64_t sub_2529EDE80(uint64_t (*a1)(uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 56);
    do
    {
      v8 = v6;
      v9 = *v7;
      v10 = *(v7 - 1);
      v11 = *(v7 - 8);
      v12 = *(v7 - 2);
      v15[0] = *(v7 - 3);
      v15[1] = v12;
      v16 = v11;
      v17 = v10;
      v18 = v9;

      v13 = a1(v15);

      LOBYTE(v4) = (v3 != 0) | v13;
      if ((v3 != 0) | v13 & 1)
      {
        break;
      }

      v6 = v8 - 1;
      v7 += 32;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t sub_2529EDF44(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
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
          v8 = MEMORY[0x2530ADF00](v5, a3);
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
      v13 = sub_252E378C4();
      a3 = v12;
      v4 = v13;
    }

    while (v13);
  }

  v11 = 0;
  return v11 & 1;
}

unint64_t sub_2529EE06C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v27 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v25 = v1;
    while (1)
    {
      if (v28)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v24);
        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v2 >= *(v27 + 16))
        {
          goto LABEL_42;
        }

        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_41;
        }
      }

      v5 = sub_2529E789C();

      v6 = v5 >> 62;
      v7 = v5 >> 62 ? sub_252E378C4() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
      {
        goto LABEL_40;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v7;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v8)
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v8)
      {
        goto LABEL_19;
      }

      v10 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = v3;
        goto LABEL_21;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v29 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v6)
      {
        v14 = v10;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v10 = v14;
        v13 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v12 >> 1) - v11) < v31)
          {
            goto LABEL_44;
          }

          v15 = v10 + 8 * v11 + 32;
          v26 = v10;
          if (v6)
          {
            if (v13 < 1)
            {
              goto LABEL_46;
            }

            sub_252A00B04(&qword_27F541898, &qword_27F541890, &unk_252E4DC80);
            for (i = 0; i != v13; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541890, &unk_252E4DC80);
              v17 = sub_2529FBE00(v30, i, v5);
              v19 = *v18;

              (v17)(v30, 0);
              *(v15 + 8 * i) = v19;
            }
          }

          else
          {
            type metadata accessor for Scene(0);
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v29;
          if (v31 >= 1)
          {
            v20 = *(v26 + 16);
            v4 = __OFADD__(v20, v31);
            v21 = v20 + v31;
            if (v4)
            {
              goto LABEL_45;
            }

            *(v26 + 16) = v21;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_25;
        }
      }

      v3 = v29;
      if (v31 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
    {
      goto LABEL_13;
    }

LABEL_40:
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
    __break(1u);
LABEL_47:
    v22 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v22;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529EE3C8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v27 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v28 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v25 = v1;
    while (1)
    {
      if (v28)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v24);
        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_41;
        }
      }

      else
      {
        if (v2 >= *(v27 + 16))
        {
          goto LABEL_42;
        }

        v4 = __OFADD__(v2++, 1);
        if (v4)
        {
          goto LABEL_41;
        }
      }

      v5 = sub_2529E7424();

      v6 = v5 >> 62;
      v7 = v5 >> 62 ? sub_252E378C4() : *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v8 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
      {
        goto LABEL_40;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v7;
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v8)
        {
          goto LABEL_20;
        }

LABEL_19:
        sub_252E378C4();
        goto LABEL_20;
      }

      if (v8)
      {
        goto LABEL_19;
      }

      v10 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v9 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v29 = v3;
        goto LABEL_21;
      }

LABEL_20:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v29 = isUniquelyReferenced_nonNull_bridgeObject;
      v10 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_21:
      v11 = *(v10 + 16);
      v12 = *(v10 + 24);
      if (v6)
      {
        v14 = v10;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v10 = v14;
        v13 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_25:
          if (((v12 >> 1) - v11) < v31)
          {
            goto LABEL_44;
          }

          v15 = v10 + 8 * v11 + 32;
          v26 = v10;
          if (v6)
          {
            if (v13 < 1)
            {
              goto LABEL_46;
            }

            sub_252A00B04(&qword_27F541868, &qword_27F541840, &qword_252E40AD8);
            for (i = 0; i != v13; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541840, &qword_252E40AD8);
              v17 = sub_2529FBE00(v30, i, v5);
              v19 = *v18;

              (v17)(v30, 0);
              *(v15 + 8 * i) = v19;
            }
          }

          else
          {
            type metadata accessor for Accessory(0);
            swift_arrayInitWithCopy();
          }

          v1 = v25;
          v3 = v29;
          if (v31 >= 1)
          {
            v20 = *(v26 + 16);
            v4 = __OFADD__(v20, v31);
            v21 = v20 + v31;
            if (v4)
            {
              goto LABEL_45;
            }

            *(v26 + 16) = v21;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v13 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v13)
        {
          goto LABEL_25;
        }
      }

      v3 = v29;
      if (v31 > 0)
      {
        goto LABEL_43;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v9 = isUniquelyReferenced_nonNull_bridgeObject + v7;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v7))
    {
      goto LABEL_13;
    }

LABEL_40:
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
    __break(1u);
LABEL_47:
    v22 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v22;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529EE724(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v25);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_services);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_252E378C4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v32)
          {
            goto LABEL_43;
          }

          v16 = v11 + 8 * v12 + 32;
          v27 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_252A00B04(&qword_27F541360, &unk_27F53FBC0, &unk_252E3B240);
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F53FBC0, &unk_252E3B240);
              v18 = sub_2529FBE00(v31, i, v6);
              v20 = *v19;

              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            type metadata accessor for Service(0);
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          if (v32 >= 1)
          {
            v21 = *(v27 + 16);
            v5 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

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

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
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
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529EEA84(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v7 = [*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) serviceGroups];
      sub_25293F638(0, &unk_2814B0248, 0x277CD1D98);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_252E378C4() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v11)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_43;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_45;
            }

            sub_252A00B04(&qword_27F5413A0, &qword_27F541398, &qword_252E404B0);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541398, &qword_252E404B0);
              v19 = sub_2529FBD80(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_24;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529EEE20(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v7 = [*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) zones];
      sub_25293F638(0, &qword_2814B01E8, 0x277CD1F50);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_252E378C4() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v11)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_43;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_45;
            }

            sub_252A00B04(&unk_27F5413C0, &qword_27F5413B8, &unk_252E404C0);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F5413B8, &unk_252E404C0);
              v19 = sub_2529FBD80(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_24;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529EF1BC(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_51;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v40 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v41 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v36 = isUniquelyReferenced_nonNull_bridgeObject;
    v39 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v4 = &qword_27F5413A8;
    v5 = &qword_252E404B8;
    v38 = v1;
    while (1)
    {
      if (v41)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v36);
        v8 = isUniquelyReferenced_nonNull_bridgeObject;
        v9 = __OFADD__(v2++, 1);
        if (v9)
        {
          goto LABEL_45;
        }
      }

      else
      {
        if (v2 >= *(v40 + 16))
        {
          goto LABEL_46;
        }

        v8 = *(v39 + 8 * v2);

        v9 = __OFADD__(v2++, 1);
        if (v9)
        {
          goto LABEL_45;
        }
      }

      v10 = *(v8 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate);
      v11 = [v10 rooms];
      sub_25293F638(0, &qword_2814B0200, 0x277CD1D88);
      v12 = sub_252E37264();

      v13 = sub_252C75928(v12);

      v44[0] = v13;
      sub_252DA6C70(&v45, [v10 roomForEntireHome]);

      v14 = sub_2529A372C(v44[0]);

      v15 = v14 < 0 || (v14 & 0x4000000000000000) != 0;
      v16 = v15 ? sub_252E378C4() : *(v14 + 16);
      v17 = v3 >> 62;
      v43 = v16;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v18 = isUniquelyReferenced_nonNull_bridgeObject + v16;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v16))
      {
        goto LABEL_44;
      }

LABEL_16:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (!isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v17)
        {
          goto LABEL_23;
        }

LABEL_22:
        sub_252E378C4();
        goto LABEL_23;
      }

      if (v17)
      {
        goto LABEL_22;
      }

      v19 = v3 & 0xFFFFFFFFFFFFFF8;
      if (v18 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v42 = v3;
        goto LABEL_24;
      }

LABEL_23:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v42 = isUniquelyReferenced_nonNull_bridgeObject;
      v19 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_24:
      v20 = v4;
      v21 = *(v19 + 16);
      v22 = *(v19 + 24);
      if (v15)
      {
        v23 = v19;
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v19 = v23;
        v24 = isUniquelyReferenced_nonNull_bridgeObject;
        v25 = v43;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v24 = *(v14 + 16);
        v25 = v43;
        if (v24)
        {
LABEL_28:
          if (((v22 >> 1) - v21) < v25)
          {
            goto LABEL_48;
          }

          v26 = v19 + 8 * v21 + 32;
          v37 = v19;
          if (v15)
          {
            if (v24 < 1)
            {
              goto LABEL_50;
            }

            v27 = v5;
            sub_252A00B04(&qword_27F5413B0, v20, v5);
            for (i = 0; i != v24; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(v20, v27);
              v29 = sub_2529FBD80(v44, i, v14);
              v31 = *v30;
              (v29)(v44, 0);
              *(v26 + 8 * i) = v31;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
            v27 = v5;
          }

          v3 = v42;
          v7 = v38;
          v4 = v20;
          v5 = v27;
          if (v43 >= 1)
          {
            v32 = *(v37 + 16);
            v9 = __OFADD__(v32, v43);
            v33 = v32 + v43;
            if (v9)
            {
              goto LABEL_49;
            }

            *(v37 + 16) = v33;
          }

          goto LABEL_5;
        }
      }

      v6 = v25;

      v3 = v42;
      v4 = v20;
      v7 = v38;
      if (v6 > 0)
      {
        goto LABEL_47;
      }

LABEL_5:
      if (v2 == v7)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v18 = isUniquelyReferenced_nonNull_bridgeObject + v43;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v43))
    {
      goto LABEL_16;
    }

LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    v34 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v34;
  }

  return MEMORY[0x277D84F90];
}

unint64_t sub_2529EF5D8(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v26 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v3 = MEMORY[0x277D84F90];
    v27 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2530ADF00](v2, v26);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2, 1);
        v6 = v2 + 1;
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v7 = [*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) triggers];
      sub_25293F638(0, &qword_27F541320, 0x277CD1EC0);
      v8 = sub_252E37264();

      v9 = v8 >> 62;
      v10 = v8 >> 62 ? sub_252E378C4() : *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v11 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v31 = v6;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v13 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v12 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_252E378C4();
        goto LABEL_19;
      }

      if (v11)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_252E37A54();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v13 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v33 = v3;
      v14 = *(v13 + 16);
      v15 = *(v13 + 24);
      if (v9)
      {
        isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
        v16 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v15 >> 1) - v14) < v10)
          {
            goto LABEL_43;
          }

          v17 = v13 + 8 * v14 + 32;
          if (v9)
          {
            if (v16 < 1)
            {
              goto LABEL_45;
            }

            sub_252A00B04(&qword_27F541370, &qword_27F541368, &qword_252E40498);
            for (i = 0; i != v16; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F541368, &qword_252E40498);
              v19 = sub_2529FBD80(v32, i, v8);
              v21 = *v20;
              (v19)(v32, 0);
              *(v17 + 8 * i) = v21;
            }
          }

          else
          {
            swift_arrayInitWithCopy();
          }

          v1 = v27;
          v3 = v33;
          if (v10 >= 1)
          {
            v22 = *(v13 + 16);
            v5 = __OFADD__(v22, v10);
            v23 = v22 + v10;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v13 + 16) = v23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v16 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v16)
        {
          goto LABEL_24;
        }
      }

      v3 = v33;
      if (v10 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      v2 = v31;
      if (v31 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_252E378C4();
    v12 = isUniquelyReferenced_nonNull_bridgeObject + v10;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v10))
    {
      goto LABEL_13;
    }

LABEL_39:
    __break(1u);
LABEL_40:
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
    v24 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_252E378C4();
    isUniquelyReferenced_nonNull_bridgeObject = v24;
  }

  return MEMORY[0x277D84F90];
}

unint64_t HomeStore.accessories(matching:supporting:)(unint64_t a1, void *a2)
{
  v183 = a2;
  v186 = sub_252E36AD4();
  v184 = *(v186 - 8);
  v4 = MEMORY[0x28223BE20](v186);
  v182 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v4);
  v172 = &v167 - v7;
  v8 = MEMORY[0x28223BE20](v6);
  v175 = &v167 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v176 = &v167 - v11;
  MEMORY[0x28223BE20](v10);
  v177 = &v167 - v12;
  v13 = sub_252E36AB4();
  v14 = MEMORY[0x28223BE20](v13);
  v17 = (&v167 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v185 = v2;
  v18 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v18 != 2 && (v18 & 1) == 0)
  {
    sub_2529318DC();
    v48 = swift_allocError();
    *v49 = 12;
    return v48;
  }

  v169 = v15;
  v170 = v14;
  if (qword_27F53F5B8 != -1)
  {
LABEL_43:
    swift_once();
  }

  v19 = qword_27F544F40;
  sub_252E36A94();
  sub_252E375D4();
  v171 = v19;
  v180 = v17;
  sub_252E36A84();
  v20 = sub_2529D8DC0();
  v21 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
    v50 = v20;
    v22 = sub_252E378C4();
    v20 = v50;
  }

  else
  {
    v22 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v190 = v20;
  v23 = MEMORY[0x277D84F90];
  v181 = MEMORY[0x277D84F90];
  v189 = a1;
  if (v22)
  {
    v24 = 0;
    v17 = (a1 & 0xC000000000000001);
    v188 = MEMORY[0x277D84F90];
    while (2)
    {
      v25 = v24;
      while (1)
      {
        if (v17)
        {
          v26 = MEMORY[0x2530ADF00](v25, a1);
        }

        else
        {
          if (v25 >= *(v21 + 16))
          {
            goto LABEL_41;
          }

          v26 = *(a1 + 8 * v25 + 32);
        }

        v27 = v26;
        v24 = v25 + 1;
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
          goto LABEL_43;
        }

        v28 = [v26 homeName];
        if (v28)
        {
          break;
        }

        ++v25;
        if (v24 == v22)
        {
          goto LABEL_24;
        }
      }

      v29 = v28;
      v187 = sub_252E36F34();
      v31 = v30;

      v32 = v188;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v32 = sub_2529F7A80(0, *(v32 + 2) + 1, 1, v32);
      }

      v34 = *(v32 + 2);
      v33 = *(v32 + 3);
      v188 = v32;
      v23 = MEMORY[0x277D84F90];
      if (v34 >= v33 >> 1)
      {
        v188 = sub_2529F7A80((v33 > 1), v34 + 1, 1, v188);
      }

      v36 = v187;
      v35 = v188;
      *(v188 + 2) = v34 + 1;
      v37 = &v35[16 * v34];
      *(v37 + 4) = v36;
      *(v37 + 5) = v31;
      a1 = v189;
      if (v24 != v22)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v188 = MEMORY[0x277D84F90];
  }

LABEL_24:
  if (!*(v188 + 2))
  {
    goto LABEL_38;
  }

  *&v206 = v23;
  v38 = v190;
  if (!(v190 >> 62))
  {
    v39 = *((v190 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v39)
    {
      goto LABEL_27;
    }

LABEL_46:
    v40 = 0;
LABEL_47:

    v47 = v206;
    v23 = MEMORY[0x277D84F90];
    goto LABEL_48;
  }

  v39 = sub_252E378C4();
  if (!v39)
  {
    goto LABEL_46;
  }

LABEL_27:
  v23 = 0;
  v40 = 0;
  v187 = v38 & 0xC000000000000001;
  v41 = v38 & 0xFFFFFFFFFFFFFF8;
  while (v187)
  {
    v44 = MEMORY[0x2530ADF00](v23, v190);
    v43 = v44;
    a1 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_37;
    }

LABEL_33:
    v17 = &v167;
    v45 = *(v43 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);
    *&v217[0] = *(v43 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
    *(&v217[0] + 1) = v45;
    MEMORY[0x28223BE20](v44);
    *(&v167 - 2) = v217;

    v46 = sub_2529ED970(sub_252A00B98, (&v167 - 4), v188);

    if (v46)
    {
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    ++v23;
    v42 = a1 == v39;
    a1 = v189;
    if (v42)
    {
      goto LABEL_47;
    }
  }

  if (v23 >= *(v41 + 16))
  {
    goto LABEL_42;
  }

  v43 = *(v190 + 8 * v23 + 32);

  a1 = v23 + 1;
  if (!__OFADD__(v23, 1))
  {
    goto LABEL_33;
  }

LABEL_37:
  __break(1u);
LABEL_38:

  v40 = 0;
  v47 = v190;
LABEL_48:
  v51 = sub_2529F442C(v47, a1);
  if (v51)
  {
    v52 = v51;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F544B80, &unk_252E3C190);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_252E3C130;
    *(v47 + 32) = v52;
  }

  v53 = sub_2529F38E8(6513505, 0xE300000000000000, a1, v183);
  v168 = v54;
  v55 = sub_2529D8CA8(v53, v54);
  if (v55)
  {
    v56 = v55;
    v57 = v55 & 0xFFFFFFFFFFFFFF8;
    if (v55 >> 62)
    {
      goto LABEL_72;
    }

    for (i = *((v55 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_252E378C4())
    {

      v59 = v23;
      v23 = 0;
      *&v217[0] = v59;
      v47 = v56 & 0xC000000000000001;
LABEL_54:
      v60 = v23;
      while (v47)
      {
        MEMORY[0x2530ADF00](v60, v56);
        v23 = v60 + 1;
        if (__OFADD__(v60, 1))
        {
          goto LABEL_70;
        }

LABEL_58:
        type metadata accessor for Accessory(0);
        if (swift_dynamicCastClass())
        {
          MEMORY[0x2530AD700]();
          if (*((*&v217[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*&v217[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v190 = v40;
            sub_252E372A4();
            v40 = v190;
          }

          sub_252E372D4();
          v181 = *&v217[0];
          if (v23 == i)
          {
LABEL_67:

            if (qword_27F53F4C0 != -1)
            {
              swift_once();
            }

            __swift_project_value_buffer(v186, qword_27F544CE8);
            *&v217[0] = 0;
            *(&v217[0] + 1) = 0xE000000000000000;
            sub_252E379F4();
            MEMORY[0x2530AD570](0xD00000000000002ALL, 0x8000000252E71190);
            MEMORY[0x2530AD570](v53, v168);

            MEMORY[0x2530AD570](0x6163206D6F726620, 0xEB00000000656863);
            sub_252CC3D90(*&v217[0], *(&v217[0] + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);
            v61 = 1;
            goto LABEL_211;
          }

          goto LABEL_54;
        }

        ++v60;
        if (v23 == i)
        {
          goto LABEL_67;
        }
      }

      if (v60 >= *(v57 + 16))
      {
        goto LABEL_71;
      }

      v23 = v60 + 1;
      if (!__OFADD__(v60, 1))
      {
        goto LABEL_58;
      }

LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      ;
    }
  }

  if (qword_27F53F4C0 != -1)
  {
    goto LABEL_201;
  }

LABEL_75:
  v62 = __swift_project_value_buffer(v186, qword_27F544CE8);
  v63 = *(v184 + 16);
  v179 = v62;
  v181 = v184 + 16;
  v174 = v63;
  (v63)(v177);
  *&v217[0] = 0;
  *(&v217[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v217[0] = 0xD00000000000001BLL;
  *(&v217[0] + 1) = 0x8000000252E71090;
  if (v47 >> 62)
  {
    v64 = sub_252E378C4();
  }

  else
  {
    v64 = *((v47 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v167 = v53;
  v190 = v47;
  v188 = v64;
  if (v64)
  {
    v65 = 0;
    v187 = v47 & 0xC000000000000001;
    v53 = v47 & 0xFFFFFFFFFFFFFF8;
    v66 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v187)
      {
        v47 = MEMORY[0x2530ADF00](v65, v47);
        v67 = (v65 + 1);
        if (__OFADD__(v65, 1))
        {
          goto LABEL_189;
        }
      }

      else
      {
        if (v65 >= *(v53 + 16))
        {
          goto LABEL_190;
        }

        v47 = *(v47 + 8 * v65 + 32);

        v67 = (v65 + 1);
        if (__OFADD__(v65, 1))
        {
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
LABEL_195:
          __break(1u);
LABEL_196:
          __break(1u);
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
LABEL_199:
          __break(1u);
LABEL_200:
          __break(1u);
LABEL_201:
          swift_once();
          goto LABEL_75;
        }
      }

      v68 = v40;
      v69 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v70 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v66 = sub_2529F7A80(0, *(v66 + 2) + 1, 1, v66);
      }

      v72 = *(v66 + 2);
      v71 = *(v66 + 3);
      if (v72 >= v71 >> 1)
      {
        v66 = sub_2529F7A80((v71 > 1), v72 + 1, 1, v66);
      }

      *(v66 + 2) = v72 + 1;
      v73 = &v66[16 * v72];
      *(v73 + 4) = v69;
      *(v73 + 5) = v70;
      ++v65;
      v64 = v188;
      v47 = v190;
      v40 = v68;
      if (v67 == v188)
      {
        goto LABEL_92;
      }
    }
  }

  v66 = MEMORY[0x277D84F90];
LABEL_92:
  v74 = MEMORY[0x2530AD730](v66, MEMORY[0x277D837D0]);
  v76 = v75;

  MEMORY[0x2530AD570](v74, v76);

  v178 = "Looking for scenes in ";
  v77 = v177;
  sub_252CC3D90(*&v217[0], *(&v217[0] + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);

  v78 = *(v184 + 8);
  v79 = v77;
  v80 = v186;
  v177 = (v184 + 8);
  v173 = v78;
  v78(v79, v186);
  v187 = sub_2529EE3C8(v47);
  v174(v176, v179, v80);
  *&v217[0] = 0;
  *(&v217[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v217[0] = 0xD000000000000014;
  *(&v217[0] + 1) = 0x8000000252E710B0;
  if (v64)
  {
    v40 = 0;
    v81 = v47 & 0xC000000000000001;
    v53 = v47 & 0xFFFFFFFFFFFFFF8;
    v82 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v81)
      {
        v47 = MEMORY[0x2530ADF00](v40, v47);
        v83 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
          goto LABEL_191;
        }
      }

      else
      {
        if (v40 >= *(v53 + 16))
        {
          goto LABEL_192;
        }

        v47 = *(v47 + 8 * v40 + 32);

        v83 = (v40 + 1);
        if (__OFADD__(v40, 1))
        {
          goto LABEL_191;
        }
      }

      v85 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v84 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v82 = sub_2529F7A80(0, *(v82 + 2) + 1, 1, v82);
      }

      v87 = *(v82 + 2);
      v86 = *(v82 + 3);
      if (v87 >= v86 >> 1)
      {
        v82 = sub_2529F7A80((v86 > 1), v87 + 1, 1, v82);
      }

      *(v82 + 2) = v87 + 1;
      v88 = &v82[16 * v87];
      *(v88 + 4) = v85;
      *(v88 + 5) = v84;
      ++v40;
      v47 = v190;
      if (v83 == v188)
      {
        goto LABEL_107;
      }
    }
  }

  v82 = MEMORY[0x277D84F90];
LABEL_107:

  v40 = MEMORY[0x2530AD730](v82, MEMORY[0x277D837D0]);
  v90 = v89;

  MEMORY[0x2530AD570](v40, v90);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  v91 = v187;
  if (v187 >> 62)
  {
    v92 = sub_252E378C4();
  }

  else
  {
    v92 = *((v187 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v93 = MEMORY[0x277D84F90];
  v190 = v92;
  if (v92)
  {
    v94 = 0;
    v53 = v91 & 0xC000000000000001;
    v95 = v91 & 0xFFFFFFFFFFFFFF8;
    do
    {
      if (v53)
      {
        v96 = MEMORY[0x2530ADF00](v94, v91);
        v97 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          goto LABEL_193;
        }
      }

      else
      {
        if (v94 >= *(v95 + 16))
        {
          goto LABEL_194;
        }

        v96 = *(v91 + 8 * v94 + 32);

        v97 = v94 + 1;
        if (__OFADD__(v94, 1))
        {
          goto LABEL_193;
        }
      }

      v40 = *(v96 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v47 = *(v96 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v93 = sub_2529F7A80(0, *(v93 + 2) + 1, 1, v93);
      }

      v99 = *(v93 + 2);
      v98 = *(v93 + 3);
      if (v99 >= v98 >> 1)
      {
        v93 = sub_2529F7A80((v98 > 1), v99 + 1, 1, v93);
      }

      *(v93 + 2) = v99 + 1;
      v100 = &v93[16 * v99];
      *(v100 + 4) = v40;
      *(v100 + 5) = v47;
      ++v94;
      v91 = v187;
    }

    while (v97 != v190);
  }

  v101 = MEMORY[0x2530AD730](v93, MEMORY[0x277D837D0]);
  v47 = v102;

  MEMORY[0x2530AD570](v101, v47);

  v103 = v176;
  sub_252CC3D90(*&v217[0], *(&v217[0] + 1), 0xD00000000000007FLL, v178 | 0x8000000000000000);

  v173(v103, v186);
  v53 = MEMORY[0x277D84F90];
  *&v217[0] = MEMORY[0x277D84F90];
  if (!v190)
  {
    goto LABEL_136;
  }

  v40 = 0;
  v53 = v190;
  while (2)
  {
    if ((v91 & 0xC000000000000001) != 0)
    {
      MEMORY[0x2530ADF00](v40, v91);
      v104 = (v40 + 1);
      if (__OFADD__(v40, 1))
      {
        break;
      }

      goto LABEL_130;
    }

    if (v40 >= *((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_195;
    }

    v104 = (v40 + 1);
    if (!__OFADD__(v40, 1))
    {
LABEL_130:
      if (sub_252967B6C(v189))
      {
        sub_252E37A94();
        v47 = *(*&v217[0] + 16);
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v40;
      if (v104 == v53)
      {
        goto LABEL_135;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_135:
  v53 = *&v217[0];
LABEL_136:

  v174(v175, v179, v186);
  *&v217[0] = 0;
  *(&v217[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v217[0] = 0xD000000000000022;
  *(&v217[0] + 1) = 0x8000000252E710D0;
  v105 = (v53 >> 62) & 1;
  if (v53 < 0)
  {
    LODWORD(v105) = 1;
  }

  LODWORD(v189) = v105;
  if (v105 == 1)
  {
    v106 = sub_252E378C4();
  }

  else
  {
    v106 = *(v53 + 16);
  }

  v107 = MEMORY[0x277D84F90];
  if (v106)
  {
    v108 = 0;
    v190 = v53 & 0xC000000000000001;
    v109 = v53;
    do
    {
      if (v190)
      {
        v47 = MEMORY[0x2530ADF00](v108, v53);
        v110 = v108 + 1;
        if (__OFADD__(v108, 1))
        {
          goto LABEL_196;
        }
      }

      else
      {
        if (v108 >= *(v53 + 16))
        {
          goto LABEL_197;
        }

        v47 = *(v53 + 8 * v108 + 32);

        v110 = v108 + 1;
        if (__OFADD__(v108, 1))
        {
          goto LABEL_196;
        }
      }

      v40 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v111 = *(v47 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v107 = sub_2529F7A80(0, *(v107 + 2) + 1, 1, v107);
      }

      v113 = *(v107 + 2);
      v112 = *(v107 + 3);
      v47 = v113 + 1;
      if (v113 >= v112 >> 1)
      {
        v107 = sub_2529F7A80((v112 > 1), v113 + 1, 1, v107);
      }

      *(v107 + 2) = v47;
      v114 = &v107[16 * v113];
      *(v114 + 4) = v40;
      *(v114 + 5) = v111;
      ++v108;
      v53 = v109;
    }

    while (v110 != v106);
  }

  v115 = MEMORY[0x2530AD730](v107, MEMORY[0x277D837D0]);
  v117 = v116;

  MEMORY[0x2530AD570](v115, v117);

  v118 = v175;
  sub_252CC3D90(*&v217[0], *(&v217[0] + 1), 0xD00000000000007FLL, v178 | 0x8000000000000000);

  v173(v118, v186);
  if (!v183)
  {
    v120 = v53;
    goto LABEL_208;
  }

  *&v217[0] = MEMORY[0x277D84F90];
  if (v189)
  {
    v119 = sub_252E378C4();
  }

  else
  {
    v119 = *(v53 + 16);
  }

  v121 = v183;
  v189 = v121;
  if (!v119)
  {
    v120 = MEMORY[0x277D84F90];
    goto LABEL_173;
  }

  v122 = v121;
  v123 = 0;
  while (2)
  {
    if ((v53 & 0xC000000000000001) != 0)
    {
      v47 = MEMORY[0x2530ADF00](v123, v53);
      v40 = v123 + 1;
      if (__OFADD__(v123, 1))
      {
        break;
      }

      goto LABEL_166;
    }

    if (v123 >= *(v53 + 16))
    {
      goto LABEL_198;
    }

    v47 = *(v53 + 8 * v123 + 32);

    v40 = v123 + 1;
    if (!__OFADD__(v123, 1))
    {
LABEL_166:
      if ((*(*v47 + 392))(v122))
      {
        sub_252E37A94();
        sub_252E37AC4();
        sub_252E37AD4();
        sub_252E37AA4();
      }

      else
      {
      }

      ++v123;
      if (v40 == v119)
      {
        goto LABEL_171;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_171:
  v120 = *&v217[0];
LABEL_173:

  v174(v172, v179, v186);
  *&v217[0] = 0;
  *(&v217[0] + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v217[0] = 0xD000000000000024;
  *(&v217[0] + 1) = 0x8000000252E71160;
  v124 = [v189 description];
  v125 = sub_252E36F34();
  v127 = v126;

  MEMORY[0x2530AD570](v125, v127);

  MEMORY[0x2530AD570](8250, 0xE200000000000000);
  if ((v120 & 0x8000000000000000) != 0 || (v120 & 0x4000000000000000) != 0)
  {
    v47 = sub_252E378C4();
    if (v47)
    {
      goto LABEL_176;
    }
  }

  else
  {
    v47 = *(v120 + 16);
    if (v47)
    {
LABEL_176:
      v128 = 0;
      v190 = v120 & 0xC000000000000001;
      v40 = MEMORY[0x277D84F90];
      v129 = v120;
      while (1)
      {
        if (v190)
        {
          v130 = MEMORY[0x2530ADF00](v128, v120);
          v53 = v128 + 1;
          if (__OFADD__(v128, 1))
          {
            goto LABEL_199;
          }
        }

        else
        {
          if (v128 >= *(v120 + 16))
          {
            goto LABEL_200;
          }

          v130 = *(v120 + 8 * v128 + 32);

          v53 = v128 + 1;
          if (__OFADD__(v128, 1))
          {
            goto LABEL_199;
          }
        }

        v131 = *(v130 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        v132 = *(v130 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v40 = sub_2529F7A80(0, *(v40 + 16) + 1, 1, v40);
        }

        v134 = *(v40 + 16);
        v133 = *(v40 + 24);
        if (v134 >= v133 >> 1)
        {
          v40 = sub_2529F7A80((v133 > 1), v134 + 1, 1, v40);
        }

        *(v40 + 16) = v134 + 1;
        v135 = (v40 + 16 * v134);
        *(v135 + 4) = v131;
        *(v135 + 5) = v132;
        ++v128;
        v120 = v129;
        if (v53 == v47)
        {
          goto LABEL_207;
        }
      }
    }
  }

  v40 = MEMORY[0x277D84F90];
LABEL_207:
  v136 = MEMORY[0x2530AD730](v40, MEMORY[0x277D837D0]);
  v138 = v137;

  MEMORY[0x2530AD570](v136, v138);

  v139 = v172;
  sub_252CC3D90(*&v217[0], *(&v217[0] + 1), 0xD00000000000007FLL, v178 | 0x8000000000000000);

  v173(v139, v186);
LABEL_208:
  v181 = v120;
  if (v120 >> 62)
  {
    type metadata accessor for Entity(0);

    v140 = sub_252E37B14();
  }

  else
  {

    sub_252E37DD4();
    type metadata accessor for Entity(0);
    v140 = v120;
  }

  v141 = v185;
  v142 = *(v185 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock);
  os_unfair_lock_lock(v142 + 4);
  v143 = (v141 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults);
  swift_beginAccess();
  v145 = *v143;
  v144 = v143[1];
  v146 = v168;

  [v144 lock];

  [v144 unlock];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&v206 = v145;
  v148 = v167;
  sub_2529FB7E0(v140, v167, v146, isUniquelyReferenced_nonNull_native, sub_252E032C4, sub_252DFE810, sub_252E11364);

  v149 = v206;
  [v144 lock];
  *v143 = v149;

  [v144 unlock];
  swift_endAccess();
  os_unfair_lock_unlock(v142 + 4);

  *&v217[0] = 0;
  *(&v217[0] + 1) = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000039, 0x8000000252E71100);
  MEMORY[0x2530AD570](v148, v146);

  sub_252CC3D90(*&v217[0], *(&v217[0] + 1), 0xD00000000000007FLL, v178 | 0x8000000000000000);
  v61 = 0;
LABEL_211:
  v48 = v181;

  v205 = 1;
  v204 = 1;
  v203 = 1;
  v202 = 1;
  *&v206 = 0;
  BYTE8(v206) = 1;
  v207 = 0u;
  v208 = 0u;
  v209 = 0u;
  v210 = 0u;
  v211 = 0u;
  LOBYTE(v212) = 1;
  *(&v212 + 1) = 0;
  v213 = 0uLL;
  LOBYTE(v214) = 1;
  BYTE1(v214) = v61;
  v215 = 0uLL;
  *(&v214 + 1) = 0;
  v216 = 1;
  GEOLocationCoordinate2DMake();
  v199 = v214;
  v200 = v215;
  v201 = v216;
  v195 = v210;
  v196 = v211;
  v197 = v212;
  v198 = v213;
  v191 = v206;
  v192 = v207;
  v193 = v208;
  v194 = v209;
  _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v171, v180, "GetEntitiesForIntent", 20, 2, &v191);
  v217[8] = v199;
  v217[9] = v200;
  v218 = v201;
  v217[4] = v195;
  v217[5] = v196;
  v217[6] = v197;
  v217[7] = v198;
  v217[0] = v191;
  v217[1] = v192;
  v217[2] = v193;
  v217[3] = v194;
  sub_25293847C(v217, &qword_27F5407B0, &unk_252E42860);
  if (qword_27F53F4C0 != -1)
  {
    goto LABEL_228;
  }

LABEL_212:
  v150 = v186;
  v151 = __swift_project_value_buffer(v186, qword_27F544CE8);
  (*(v184 + 16))(v182, v151, v150);
  *&v191 = 0;
  *(&v191 + 1) = 0xE000000000000000;
  sub_252E379F4();

  *&v191 = 0xD000000000000019;
  *(&v191 + 1) = 0x8000000252E71140;
  if (!(v48 >> 62))
  {
    v152 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v152)
    {
      goto LABEL_230;
    }

    goto LABEL_214;
  }

  v152 = sub_252E378C4();
  if (v152)
  {
LABEL_214:
    v153 = 0;
    v189 = (v48 & 0xFFFFFFFFFFFFFF8);
    v190 = v48 & 0xC000000000000001;
    v154 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v190)
      {
        v155 = MEMORY[0x2530ADF00](v153, v48);
        v156 = v153 + 1;
        if (__OFADD__(v153, 1))
        {
          goto LABEL_226;
        }
      }

      else
      {
        if (v153 >= *(v189 + 2))
        {
          goto LABEL_227;
        }

        v155 = *(v48 + 8 * v153 + 32);

        v156 = v153 + 1;
        if (__OFADD__(v153, 1))
        {
LABEL_226:
          __break(1u);
LABEL_227:
          __break(1u);
LABEL_228:
          swift_once();
          goto LABEL_212;
        }
      }

      v158 = *(v155 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v157 = *(v155 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v154 = sub_2529F7A80(0, *(v154 + 2) + 1, 1, v154);
      }

      v160 = *(v154 + 2);
      v159 = *(v154 + 3);
      if (v160 >= v159 >> 1)
      {
        v154 = sub_2529F7A80((v159 > 1), v160 + 1, 1, v154);
      }

      *(v154 + 2) = v160 + 1;
      v161 = &v154[16 * v160];
      *(v161 + 4) = v158;
      *(v161 + 5) = v157;
      ++v153;
      if (v156 == v152)
      {
        goto LABEL_231;
      }
    }
  }

LABEL_230:
  v154 = MEMORY[0x277D84F90];
LABEL_231:
  v162 = MEMORY[0x2530AD730](v154, MEMORY[0x277D837D0]);
  v164 = v163;

  MEMORY[0x2530AD570](v162, v164);

  v165 = v182;
  sub_252CC3D90(v191, *(&v191 + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);

  (*(v184 + 8))(v165, v186);
  (*(v169 + 8))(v180, v170);
  return v48;
}

void *HomeStore.services(matching:supporting:)(unint64_t a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  result = HomeStore.accessories(matching:supporting:)(a1, a2);
  if (v5)
  {
    return result;
  }

  v52 = result;
  v6 = sub_2529EE724(result);
  v7 = v6;
  v61 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
LABEL_103:
    v8 = sub_252E378C4();
  }

  else
  {
    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = MEMORY[0x277D84F90];
  if (!v8)
  {
    v11 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  v60 = v2;
  v10 = 0;
  while ((v7 & 0xC000000000000001) != 0)
  {
    MEMORY[0x2530ADF00](v10, v7);
    v2 = (v10 + 1);
    if (__OFADD__(v10, 1))
    {
      goto LABEL_15;
    }

LABEL_11:
    if (sub_252967B6C(v3))
    {
      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
    }

    else
    {
    }

    ++v10;
    if (v2 == v8)
    {
      goto LABEL_16;
    }
  }

  if (v10 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_96;
  }

  v2 = (v10 + 1);
  if (!__OFADD__(v10, 1))
  {
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
LABEL_16:
  v11 = v61;
  v2 = v60;
  v9 = MEMORY[0x277D84F90];
LABEL_18:

  if (!v2)
  {
    sub_252A00A2C(v52, 0, MEMORY[0x277D84FB8]);
    return v11;
  }

  v2 = v2;
  v7 = &off_279711000;
  if (![v2 attribute])
  {
    sub_252A00A2C(v52, 0, MEMORY[0x277D84FB8]);

    return v11;
  }

  v61 = v9;
  if (v11 < 0 || (v11 & 0x4000000000000000) != 0)
  {
    v12 = sub_252E378C4();
    if (v12)
    {
LABEL_23:
      v13 = 0;
      v14 = v11 & 0xC000000000000001;
      v58 = v11 + 32;
      v55 = v2;
      v56 = v11;
      v53 = v11 & 0xC000000000000001;
      v54 = v12;
      while (1)
      {
        if (v14)
        {
          v59 = MEMORY[0x2530ADF00](v13, v11);
          v15 = __OFADD__(v13++, 1);
          if (v15)
          {
            goto LABEL_101;
          }
        }

        else
        {
          if (v13 >= *(v11 + 16))
          {
            goto LABEL_102;
          }

          v59 = *(v58 + 8 * v13);

          v15 = __OFADD__(v13++, 1);
          if (v15)
          {
            goto LABEL_101;
          }
        }

        if ([v2 *(v7 + 1624)] == 5)
        {
          break;
        }

        v3 = v59;
        sub_252DE8C4C(v2, v59);
        if (v28)
        {

LABEL_83:
          sub_252E37A94();
          v3 = *(v61 + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

LABEL_25:
        if (v13 == v12)
        {
          v51 = v61;
          goto LABEL_106;
        }
      }

      v57 = OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate;
      v3 = [*(v59 + OBJC_IVAR____TtC22HomeAutomationInternal7Service_delegate) characteristics];
      sub_25293F638(0, &qword_27F5412E0, 0x277CD1970);
      v16 = sub_252E37264();

      if (v16 >> 62)
      {
        v17 = sub_252E378C4();
      }

      else
      {
        v17 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v18 = 0;
      v2 = (v16 & 0xC000000000000001);
      while (1)
      {
        if (v17 == v18)
        {
          goto LABEL_80;
        }

        if (v2)
        {
          v19 = MEMORY[0x2530ADF00](v18, v16);
        }

        else
        {
          if (v18 >= *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_95;
          }

          v19 = *(v16 + 8 * v18 + 32);
        }

        v7 = v19;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        v20 = [(SEL *)v19 characteristicType];
        v21 = sub_252E36F34();
        v23 = v22;

        v24 = sub_252E36F34();
        v3 = v25;
        if (v21 == v24 && v23 == v25)
        {

LABEL_49:

          v29 = [*(v59 + v57) characteristics];
          v3 = sub_252E37264();

          if (v3 >> 62)
          {
            v30 = sub_252E378C4();
          }

          else
          {
            v30 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          v31 = 0;
          v2 = (v3 & 0xC000000000000001);
          while (v30 != v31)
          {
            if (v2)
            {
              v32 = MEMORY[0x2530ADF00](v31, v3);
            }

            else
            {
              if (v31 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_98;
              }

              v32 = *(v3 + 8 * v31 + 32);
            }

            v7 = v32;
            if (__OFADD__(v31, 1))
            {
              goto LABEL_97;
            }

            v33 = [(SEL *)v32 characteristicType];
            v34 = sub_252E36F34();
            v36 = v35;

            if (v34 == sub_252E36F34() && v36 == v37)
            {

LABEL_65:

              v40 = [*(v59 + v57) characteristics];
              v3 = sub_252E37264();

              if (v3 >> 62)
              {
                v41 = sub_252E378C4();
              }

              else
              {
                v41 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
              }

              v42 = 0;
              v2 = (v3 & 0xC000000000000001);
              while (v41 != v42)
              {
                if (v2)
                {
                  v43 = MEMORY[0x2530ADF00](v42, v3);
                }

                else
                {
                  if (v42 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_100;
                  }

                  v43 = *(v3 + 8 * v42 + 32);
                }

                v7 = v43;
                if (__OFADD__(v42, 1))
                {
                  goto LABEL_99;
                }

                v44 = [(SEL *)v43 characteristicType];
                v45 = sub_252E36F34();
                v47 = v46;

                if (v45 == sub_252E36F34() && v47 == v48)
                {

LABEL_82:

                  v2 = v55;
                  v11 = v56;
                  v7 = 0x279711000;
                  v14 = v53;
                  v12 = v54;
                  goto LABEL_83;
                }

                v50 = sub_252E37DB4();

                ++v42;
                if (v50)
                {
                  goto LABEL_82;
                }
              }

              break;
            }

            v39 = sub_252E37DB4();

            ++v31;
            if (v39)
            {
              goto LABEL_65;
            }
          }

LABEL_80:

          v2 = v55;
          v11 = v56;
          v7 = 0x279711000;
          v14 = v53;
          v12 = v54;
          goto LABEL_25;
        }

        v27 = sub_252E37DB4();

        ++v18;
        if (v27)
        {
          goto LABEL_49;
        }
      }

      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      __break(1u);
LABEL_97:
      __break(1u);
LABEL_98:
      __break(1u);
LABEL_99:
      __break(1u);
LABEL_100:
      __break(1u);
LABEL_101:
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }
  }

  else
  {
    v12 = *(v11 + 16);
    if (v12)
    {
      goto LABEL_23;
    }
  }

  v51 = MEMORY[0x277D84F90];
LABEL_106:

  sub_252A00A2C(v52, 0, MEMORY[0x277D84FB8]);

  return v51;
}

uint64_t sub_2529F1BFC()
{
  v0 = sub_2529D8DC0();
  v1 = v0;
  if (v0 >> 62)
  {
LABEL_15:
    v2 = sub_252E378C4();
    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
LABEL_3:
      v3 = 0;
      do
      {
        if ((v1 & 0xC000000000000001) != 0)
        {
          v4 = MEMORY[0x2530ADF00](v3, v1);
          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
LABEL_12:
            __break(1u);
LABEL_13:

            return v4;
          }
        }

        else
        {
          if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_15;
          }

          v4 = *(v1 + 8 * v3 + 32);

          v5 = v3 + 1;
          if (__OFADD__(v3, 1))
          {
            goto LABEL_12;
          }
        }

        if ([*(v4 + OBJC_IVAR____TtC22HomeAutomationInternal4Home_delegate) isPrimary])
        {
          goto LABEL_13;
        }

        ++v3;
      }

      while (v5 != v2);
    }
  }

  return 0;
}

unint64_t sub_2529F1D14(void *a1)
{
  v42 = sub_252E32E84();
  v2 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_2529F3704(a1);
  v6 = sub_2529EEA84(v5);

  v43 = MEMORY[0x277D84F90];
  if (v6 >> 62)
  {
    goto LABEL_39;
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v9 = 0;
    v40 = v6 & 0xFFFFFFFFFFFFFF8;
    v41 = v6 & 0xC000000000000001;
    v36 = a1;
    v37 = (v2 + 32);
    v38 = v7;
    v39 = v6;
    do
    {
      if (v41)
      {
        v10 = MEMORY[0x2530ADF00](v9, v6);
      }

      else
      {
        if (v9 >= *(v40 + 16))
        {
          goto LABEL_37;
        }

        v10 = *(v6 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_36;
      }

      type metadata accessor for Group(0);
      v2 = swift_allocObject();
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal5Group_delegate) = v11;
      v13 = v11;
      v14 = [v13 uniqueIdentifier];
      v15 = v4;
      sub_252E32E64();

      v16 = [v13 name];
      v17 = sub_252E36F34();
      v19 = v18;

      v20 = [v13 assistantIdentifier];
      if (v20)
      {
        v21 = v20;
        v22 = sub_252E36F34();
        a1 = v23;
      }

      else
      {

        v22 = 0;
        a1 = 0;
      }

      v4 = v15;
      v24 = (*v37)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v15, v42);
      v25 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v25 = v17;
      v25[1] = v19;
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 4;
      v26 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v26 = v22;
      v26[1] = a1;
      MEMORY[0x2530AD700](v24);
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v9;
      v6 = v39;
    }

    while (v12 != v38);
    v2 = v43;
    a1 = v36;
    v8 = MEMORY[0x277D84F90];
  }

  else
  {
    v2 = MEMORY[0x277D84F90];
  }

  v27 = [a1 groupName];
  if (v27)
  {
    v6 = v27;
    v28 = sub_252E36F34();
    v30 = v29;

    v43 = v8;
    if (v2 >> 62)
    {
      v31 = sub_252E378C4();
      if (v31)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v31 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v31)
      {
LABEL_21:
        v4 = 0;
        v42 = v2 & 0xC000000000000001;
        do
        {
          if (v42)
          {
            v32 = MEMORY[0x2530ADF00](v4, v2);
            a1 = (v4 + 1);
            if (__OFADD__(v4, 1))
            {
              goto LABEL_35;
            }
          }

          else
          {
            if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_38;
            }

            v32 = *(v2 + 8 * v4 + 32);

            a1 = (v4 + 1);
            if (__OFADD__(v4, 1))
            {
LABEL_35:
              __break(1u);
LABEL_36:
              __break(1u);
LABEL_37:
              __break(1u);
LABEL_38:
              __break(1u);
LABEL_39:
              v7 = sub_252E378C4();
              goto LABEL_3;
            }
          }

          v33 = *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v28 && *(v32 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v30;
          if (v33 || (sub_252E37DB4() & 1) != 0)
          {
            v6 = &v43;
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v4;
        }

        while (a1 != v31);
      }
    }

    return v43;
  }

  return v2;
}

uint64_t sub_2529F219C()
{
  v1 = *(v0 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v1 == 2 || (v1 & 1) == 0)
  {
LABEL_15:
    sub_2529318DC();
    v6 = swift_allocError();
    *v8 = 12;
  }

  else
  {
    v2 = sub_2529D9D50();
    v3 = v2;
    if (v2 >> 62)
    {
      goto LABEL_19;
    }

    v4 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4)
    {
      while (1)
      {
        v5 = 0;
        while ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x2530ADF00](v5, v3);
          v7 = v5 + 1;
          if (__OFADD__(v5, 1))
          {
LABEL_14:
            __break(1u);
            goto LABEL_15;
          }

LABEL_9:
          if ([*(v6 + OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate) isCurrentAccessory])
          {

            return v6;
          }

          ++v5;
          if (v7 == v4)
          {
            goto LABEL_20;
          }
        }

        if (v5 < *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_19:
        v4 = sub_252E378C4();
        if (!v4)
        {
          goto LABEL_20;
        }
      }

      v6 = *(v3 + 8 * v5 + 32);

      v7 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        goto LABEL_14;
      }

      goto LABEL_9;
    }

LABEL_20:

    return 0;
  }

  return v6;
}

uint64_t sub_2529F2320(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v15 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_252DA6CD0(v14, v12, v13);
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2529F2424(uint64_t result, uint64_t a2)
{
  v2 = result;
  v16 = a2;
  if ((result & 0xC000000000000001) != 0)
  {
    sub_252E37874();
    type metadata accessor for Service(0);
    sub_2529FEBDC(&qword_27F541EB0, type metadata accessor for Service, protocol conformance descriptor for Entity);
    result = sub_252E373E4();
    v2 = v17;
    v3 = v18;
    v4 = v19;
    v5 = v20;
    v6 = v21;
  }

  else
  {
    v5 = 0;
    v7 = -1 << *(result + 32);
    v3 = result + 56;
    v4 = ~v7;
    v8 = -v7;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v6 = v9 & *(result + 56);
  }

  if (v2 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v10 = v5;
    v11 = v6;
    v12 = v5;
    if (!v6)
    {
      break;
    }

LABEL_12:
    v13 = (v11 - 1) & v11;
    v14 = *(*(v2 + 48) + ((v12 << 9) | (8 * __clz(__rbit64(v11)))));

    if (!v14)
    {
LABEL_18:
      sub_25291AE30(v2);
      return v16;
    }

    while (1)
    {
      sub_252DA7208(&v15, v14);

      v5 = v12;
      v6 = v13;
      if ((v2 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_252E37904())
      {
        type metadata accessor for Service(0);
        swift_dynamicCast();
        v14 = v15;
        v12 = v5;
        v13 = v6;
        if (v15)
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((v4 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v11 = *(v3 + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2529F261C(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = 0;
  v12 = a2;
  v4 = result + 56;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 56);
  for (i = (v5 + 63) >> 6; v7; result = sub_252DA7E00(&v11, *(*(v2 + 48) + (v10 | (v9 << 6)))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v12;
    }

    v7 = *(v4 + 8 * v9);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_2529F2710(uint64_t result, uint64_t a2, uint64_t (*a3)(uint64_t *, void))
{
  v4 = result;
  v5 = 0;
  v14 = a2;
  v6 = result + 56;
  v7 = 1 << *(result + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(result + 56);
  for (i = (v7 + 63) >> 6; v9; result = a3(&v13, *(*(v4 + 48) + ((v11 << 9) | (8 * v12)))))
  {
    v11 = v5;
LABEL_9:
    v12 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
  }

  while (1)
  {
    v11 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    if (v11 >= i)
    {

      return v14;
    }

    v9 = *(v6 + 8 * v11);
    ++v5;
    if (v9)
    {
      v5 = v11;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_2529F2818(void *a1)
{
  v130 = sub_252E32E84();
  v2 = *(v130 - 8);
  v3 = MEMORY[0x28223BE20](v130);
  v5 = &v125 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v125 - v7;
  v9 = MEMORY[0x28223BE20](v6);
  v11 = &v125 - v10;
  MEMORY[0x28223BE20](v9);
  v13 = &v125 - v12;
  v14 = [a1 roomName];
  if (!v14)
  {
    v128 = v5;
    v129 = v8;
    v31 = [a1 zoneName];
    if (v31)
    {

      v32 = sub_2529F55F8(a1);
      v33 = sub_25291BCB0(v32);

      v131 = MEMORY[0x277D84F90];
      if (v33 >> 62)
      {
        v34 = sub_252E378C4();
        v13 = v129;
        if (v34)
        {
LABEL_24:
          v35 = 0;
          v127 = v33 & 0xFFFFFFFFFFFFFF8;
          v128 = v33 & 0xC000000000000001;
          v125 = (v2 + 32);
          v126 = v33;
          do
          {
            if (v128)
            {
              v36 = MEMORY[0x2530ADF00](v35, v33);
            }

            else
            {
              if (v35 >= *(v127 + 16))
              {
                goto LABEL_116;
              }

              v36 = *(v33 + 8 * v35 + 32);
            }

            v37 = v36;
            v38 = v35 + 1;
            if (__OFADD__(v35, 1))
            {
              goto LABEL_114;
            }

            type metadata accessor for Room(0);
            v2 = swift_allocObject();
            *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v37;
            v39 = v37;
            v40 = [v39 uniqueIdentifier];
            sub_252E32E64();

            v41 = [v39 name];
            v42 = sub_252E36F34();
            v44 = v43;

            v45 = [v39 assistantIdentifier];
            if (v45)
            {
              v46 = v45;
              v47 = sub_252E36F34();
              v49 = v48;
            }

            else
            {

              v47 = 0;
              v49 = 0;
            }

            v13 = v129;
            v50 = (*v125)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v129, v130);
            v51 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
            *v51 = v42;
            v51[1] = v44;
            *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
            v52 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
            *v52 = v47;
            v52[1] = v49;
            MEMORY[0x2530AD700](v50);
            if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_252E372A4();
            }

            sub_252E372D4();
            ++v35;
            v33 = v126;
          }

          while (v38 != v34);
LABEL_90:
          v21 = v131;
LABEL_132:

          return v21;
        }
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v129;
        if (v34)
        {
          goto LABEL_24;
        }
      }

LABEL_131:
      v21 = MEMORY[0x277D84F90];
      goto LABEL_132;
    }

    v84 = sub_2529F3704(a1);
    v85 = sub_2529EF1BC(v84);

    v131 = MEMORY[0x277D84F90];
    if (v85 >> 62)
    {
      v86 = sub_252E378C4();
      v13 = v128;
      if (!v86)
      {
        goto LABEL_131;
      }
    }

    else
    {
      v86 = *((v85 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v13 = v128;
      if (!v86)
      {
        goto LABEL_131;
      }
    }

    v87 = 0;
    v129 = v85 & 0xC000000000000001;
    v126 = v85;
    v127 = v85 & 0xFFFFFFFFFFFFFF8;
    v125 = (v2 + 32);
    do
    {
      if (v129)
      {
        v88 = MEMORY[0x2530ADF00](v87, v85);
      }

      else
      {
        if (v87 >= *(v127 + 16))
        {
          goto LABEL_121;
        }

        v88 = *(v85 + 8 * v87 + 32);
      }

      v89 = v88;
      v90 = v87 + 1;
      if (__OFADD__(v87, 1))
      {
        goto LABEL_120;
      }

      type metadata accessor for Room(0);
      v2 = swift_allocObject();
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v89;
      v91 = v89;
      v92 = [v91 uniqueIdentifier];
      sub_252E32E64();

      v93 = [v91 name];
      v94 = sub_252E36F34();
      v96 = v95;

      v97 = [v91 assistantIdentifier];
      if (v97)
      {
        v98 = v97;
        v99 = sub_252E36F34();
        v101 = v100;
      }

      else
      {

        v99 = 0;
        v101 = 0;
      }

      v13 = v128;
      v102 = (*v125)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v128, v130);
      v103 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      *v103 = v94;
      v103[1] = v96;
      *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
      v104 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
      *v104 = v99;
      v104[1] = v101;
      MEMORY[0x2530AD700](v102);
      if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_252E372A4();
      }

      sub_252E372D4();
      ++v87;
      v85 = v126;
    }

    while (v90 != v86);
    goto LABEL_90;
  }

  v15 = v14;
  v16 = sub_252E36F34();
  v128 = v17;
  v129 = v16;

  v18 = [a1 zoneName];
  if (v18)
  {
    v127 = v13;

    v19 = sub_2529F55F8(a1);
    v13 = sub_25291BCB0(v19);

    v131 = MEMORY[0x277D84F90];
    if (v13 >> 62)
    {
      goto LABEL_122;
    }

    v20 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_5:
    v21 = MEMORY[0x277D84F90];
    if (!v20)
    {
      v129 = MEMORY[0x277D84F90];
LABEL_58:

      v131 = v21;
      if ((v129 & 0x8000000000000000) != 0 || (v129 & 0x4000000000000000) != 0)
      {
        v65 = sub_252E378C4();
        v13 = v127;
        if (!v65)
        {
          goto LABEL_109;
        }
      }

      else
      {
        v65 = *(v129 + 16);
        v13 = v127;
        if (!v65)
        {
          goto LABEL_109;
        }
      }

      v66 = 0;
      v128 = v129 & 0xC000000000000001;
      v126 = (v2 + 32);
      while (1)
      {
        if (v128)
        {
          v67 = MEMORY[0x2530ADF00](v66, v129);
        }

        else
        {
          if (v66 >= *(v129 + 16))
          {
            goto LABEL_113;
          }

          v67 = *(v129 + 8 * v66 + 32);
        }

        v68 = v67;
        v69 = v66 + 1;
        if (__OFADD__(v66, 1))
        {
          goto LABEL_112;
        }

        type metadata accessor for Room(0);
        v2 = swift_allocObject();
        *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v68;
        v70 = v68;
        v71 = [v70 uniqueIdentifier];
        sub_252E32E64();

        v72 = [v70 name];
        v73 = sub_252E36F34();
        v75 = v74;

        v76 = [v70 assistantIdentifier];
        if (v76)
        {
          v77 = v76;
          v78 = sub_252E36F34();
          v80 = v79;
        }

        else
        {

          v78 = 0;
          v80 = 0;
        }

        v13 = v127;
        v81 = (*v126)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v127, v130);
        v82 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v82 = v73;
        v82[1] = v75;
        *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
        v83 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v83 = v78;
        v83[1] = v80;
        MEMORY[0x2530AD700](v81);
        if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v66;
        if (v69 == v65)
        {
          goto LABEL_108;
        }
      }
    }

    v126 = v2;
    v22 = 0;
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v23 = MEMORY[0x2530ADF00](v22, v13);
      }

      else
      {
        if (v22 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_111;
        }

        v23 = *(v13 + 8 * v22 + 32);
      }

      v24 = v23;
      v25 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_111:
        __break(1u);
LABEL_112:
        __break(1u);
LABEL_113:
        __break(1u);
LABEL_114:
        __break(1u);
LABEL_115:
        __break(1u);
LABEL_116:
        __break(1u);
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
LABEL_121:
        __break(1u);
LABEL_122:
        v20 = sub_252E378C4();
        goto LABEL_5;
      }

      v26 = [v23 name];
      v2 = sub_252E36F34();
      v28 = v27;

      if (v2 == v129 && v28 == v128)
      {
      }

      else
      {
        v30 = sub_252E37DB4();

        if ((v30 & 1) == 0)
        {

          goto LABEL_9;
        }
      }

      sub_252E37A94();
      sub_252E37AC4();
      sub_252E37AD4();
      sub_252E37AA4();
LABEL_9:
      ++v22;
      if (v25 == v20)
      {
        v129 = v131;
        v2 = v126;
        v21 = MEMORY[0x277D84F90];
        goto LABEL_58;
      }
    }
  }

  v53 = sub_2529F3704(a1);
  v54 = sub_2529EF1BC(v53);

  v131 = MEMORY[0x277D84F90];
  if (v54 >> 62)
  {
    v55 = sub_252E378C4();
  }

  else
  {
    v55 = *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v21 = MEMORY[0x277D84F90];
  if (!v55)
  {
    v129 = MEMORY[0x277D84F90];
    goto LABEL_92;
  }

  v126 = v2;
  v127 = v11;
  v56 = 0;
  v13 = v54 & 0xC000000000000001;
  do
  {
    if (v13)
    {
      v57 = MEMORY[0x2530ADF00](v56, v54);
    }

    else
    {
      if (v56 >= *((v54 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_117;
      }

      v57 = *(v54 + 8 * v56 + 32);
    }

    v58 = v57;
    v59 = v56 + 1;
    if (__OFADD__(v56, 1))
    {
      goto LABEL_115;
    }

    v60 = [v57 name];
    v2 = sub_252E36F34();
    v62 = v61;

    if (v2 == v129 && v62 == v128)
    {
    }

    else
    {
      v64 = sub_252E37DB4();

      if ((v64 & 1) == 0)
      {

        goto LABEL_43;
      }
    }

    sub_252E37A94();
    sub_252E37AC4();
    sub_252E37AD4();
    sub_252E37AA4();
LABEL_43:
    ++v56;
  }

  while (v59 != v55);
  v129 = v131;
  v2 = v126;
  v11 = v127;
  v21 = MEMORY[0x277D84F90];
LABEL_92:

  v131 = v21;
  if ((v129 & 0x8000000000000000) != 0 || (v129 & 0x4000000000000000) != 0)
  {
    v105 = sub_252E378C4();
    if (v105)
    {
      goto LABEL_95;
    }
  }

  else
  {
    v105 = *(v129 + 16);
    if (v105)
    {
LABEL_95:
      v106 = 0;
      v127 = v105;
      v128 = v129 & 0xC000000000000001;
      v126 = (v2 + 32);
      do
      {
        if (v128)
        {
          v107 = MEMORY[0x2530ADF00](v106, v129);
        }

        else
        {
          if (v106 >= *(v129 + 16))
          {
            goto LABEL_119;
          }

          v107 = *(v129 + 8 * v106 + 32);
        }

        v108 = v107;
        v109 = v106 + 1;
        if (__OFADD__(v106, 1))
        {
          goto LABEL_118;
        }

        type metadata accessor for Room(0);
        v2 = swift_allocObject();
        *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal4Room_delegate) = v108;
        v110 = v108;
        v111 = [v110 uniqueIdentifier];
        v13 = v11;
        sub_252E32E64();

        v112 = [v110 name];
        v113 = sub_252E36F34();
        v115 = v114;

        v116 = [v110 assistantIdentifier];
        if (v116)
        {
          v117 = v116;
          v118 = sub_252E36F34();
          v120 = v119;
        }

        else
        {

          v118 = 0;
          v120 = 0;
        }

        v11 = v13;
        v121 = (*v126)(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_identifier, v13, v130);
        v122 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
        *v122 = v113;
        v122[1] = v115;
        *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_entityType) = 3;
        v123 = (v2 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_assistantIdentifier);
        *v123 = v118;
        v123[1] = v120;
        MEMORY[0x2530AD700](v121);
        if (*((v131 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v131 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_252E372A4();
        }

        sub_252E372D4();
        ++v106;
      }

      while (v109 != v127);
LABEL_108:
      v21 = v131;
    }
  }

LABEL_109:

  return v21;
}

uint64_t sub_2529F35DC(id a1, uint64_t (*a2)(uint64_t, id))
{
  v5 = *(v2 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v5 == 2 || (v5 & 1) != 0)
  {
    v6 = [a1 filters];
    if (v6)
    {
      v7 = v6;
      type metadata accessor for HomeFilter();
      v8 = sub_252E37264();

      v9 = [a1 userTask];
      v10 = a2(v8, v9);

      return v10;
    }

    else
    {
      sub_2529318DC();
      result = swift_allocError();
      *v12 = 1;
    }
  }

  else
  {
    sub_2529318DC();
    result = swift_allocError();
    *v13 = 12;
  }

  return result;
}

uint64_t sub_2529F3704(void *a1)
{
  v1 = [a1 homeName];
  if (v1)
  {
    v2 = v1;
    v3 = sub_252E36F34();
    v5 = v4;

    v6 = sub_2529D8DC0();
    v7 = v6;
    v15 = MEMORY[0x277D84F90];
    if (v6 >> 62)
    {
      goto LABEL_24;
    }

    v8 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v8)
    {
      while (1)
      {
        v9 = 0;
        while ((v7 & 0xC000000000000001) != 0)
        {
          v10 = MEMORY[0x2530ADF00](v9, v7);
          v11 = v9 + 1;
          if (__OFADD__(v9, 1))
          {
LABEL_18:
            __break(1u);
LABEL_19:
            v13 = v15;
            goto LABEL_26;
          }

LABEL_10:
          v12 = *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name) == v3 && *(v10 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8) == v5;
          if (v12 || (sub_252E37DB4() & 1) != 0)
          {
            sub_252E37A94();
            sub_252E37AC4();
            sub_252E37AD4();
            sub_252E37AA4();
          }

          else
          {
          }

          ++v9;
          if (v11 == v8)
          {
            goto LABEL_19;
          }
        }

        if (v9 < *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          break;
        }

        __break(1u);
LABEL_24:
        v8 = sub_252E378C4();
        if (!v8)
        {
          goto LABEL_25;
        }
      }

      v10 = *(v7 + 8 * v9 + 32);

      v11 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_18;
      }

      goto LABEL_10;
    }

LABEL_25:
    v13 = MEMORY[0x277D84F90];
LABEL_26:

    return v13;
  }

  else
  {

    return sub_2529D8DC0();
  }
}

uint64_t sub_2529F38E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v8 = (v4 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cacheRequiresInvalidation);
  swift_beginAccess();
  v9 = *v8;
  v10 = v8[1];
  [v10 lock];
  [v10 unlock];

  if (v9 == 1)
  {
    v36 = a1;
    if (qword_2814B0A98 != -1)
    {
      swift_once();
    }

    v11 = sub_252E36AD4();
    __swift_project_value_buffer(v11, qword_2814B0AA0);
    sub_252CC3D90(0xD000000000000043, 0x8000000252E71430, 0xD00000000000007FLL, 0x8000000252E70FD0);
    v12 = *(v5 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock);
    os_unfair_lock_lock(v12 + 4);
    v13 = sub_252CC4788(MEMORY[0x277D84F90]);
    v14 = (v5 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults);
    swift_beginAccess();
    v15 = v14[1];
    [v15 lock];
    *v14 = v13;

    [v15 unlock];
    swift_endAccess();
    os_unfair_lock_unlock(v12 + 4);
    swift_beginAccess();
    v16 = v8[1];
    [v16 lock];
    *v8 = 0;
    [v16 unlock];
    swift_endAccess();
    a1 = v36;
  }

  v17 = 7104878;
  type metadata accessor for HomeFilter();
  sub_2529FEBDC(&qword_27F541888, type metadata accessor for HomeFilter, MEMORY[0x277D85378]);
  sub_252E37314();
  v18 = sub_252E37D94();
  v20 = v19;

  MEMORY[0x2530AD570](v18, v20);

  MEMORY[0x2530AD570](45, 0xE100000000000000);

  v21 = a1;
  if (a4)
  {
    v22 = [a4 taskType];
    v23 = 0xE700000000000000;
    v24 = 0x6E776F6E6B6E75;
    v25 = 0xE300000000000000;
    v26 = 7628135;
    v27 = 0xE900000000000074;
    v28 = 0x6567726154746567;
    v29 = 0xE600000000000000;
    v30 = 0x656C67676F74;
    if (v22 != 6)
    {
      v30 = 0x6E776F6E6B6E75;
      v29 = 0xE700000000000000;
    }

    if (v22 != 5)
    {
      v28 = v30;
      v27 = v29;
    }

    if (v22 != 4)
    {
      v26 = v28;
      v25 = v27;
    }

    if (v22 == 3)
    {
      v24 = 0x6573616572636564;
      v23 = 0xE800000000000000;
    }

    if (v22 == 2)
    {
      v24 = 0x6573616572636E69;
      v23 = 0xE800000000000000;
    }

    if (v22 == 1)
    {
      v24 = 7628147;
      v23 = 0xE300000000000000;
    }

    if (v22 <= 3)
    {
      v31 = v24;
    }

    else
    {
      v31 = v26;
    }

    if (v22 <= 3)
    {
      v32 = v23;
    }

    else
    {
      v32 = v25;
    }
  }

  else
  {
    v32 = 0xE300000000000000;
    v31 = 7104878;
  }

  MEMORY[0x2530AD570](v31, v32);

  if (a4)
  {
    v17 = HomeAttributeType.description.getter([a4 attribute]);
    v34 = v33;
  }

  else
  {
    v34 = 0xE300000000000000;
  }

  MEMORY[0x2530AD570](v17, v34);

  return v21;
}

uint64_t sub_2529F3D2C(uint64_t a1)
{
  v38 = a1;
  v2 = sub_252E36AB4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_loadSucceeded);
  if (v6 == 2 || (v6 & 1) != 0)
  {
    if (qword_27F53F5B8 != -1)
    {
      swift_once();
    }

    v7 = qword_27F544F40;
    sub_252E36A94();
    sub_252E375D4();
    sub_252E36A84();
    v8 = sub_2529F38E8(7630437, 0xE300000000000000, v38, 0);
    v10 = v9;
    v11 = sub_2529D8CA8(v8, v9);
    if (v11)
    {
      v12 = v11;
      if (v11 >> 62)
      {
        if (sub_252E378C4())
        {
          goto LABEL_8;
        }
      }

      else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_8:
        if (qword_27F53F4C0 != -1)
        {
          swift_once();
        }

        v13 = sub_252E36AD4();
        __swift_project_value_buffer(v13, qword_27F544CE8);
        *&v65[0] = 0;
        *(&v65[0] + 1) = 0xE000000000000000;
        sub_252E379F4();
        MEMORY[0x2530AD570](0xD000000000000027, 0x8000000252E712B0);
        MEMORY[0x2530AD570](v8, v10);

        MEMORY[0x2530AD570](0x6163206D6F726620, 0xEB00000000656863);
        sub_252CC3D90(*&v65[0], *(&v65[0] + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);

        v14 = 1;
LABEL_33:
        v53 = 1;
        v52 = 1;
        v51 = 1;
        v50 = 1;
        *&v54 = 0;
        BYTE8(v54) = 1;
        v55 = 0u;
        v56 = 0u;
        v57 = 0u;
        v58 = 0u;
        v59 = 0u;
        LOBYTE(v60) = 1;
        v61 = 0uLL;
        *(&v60 + 1) = 0;
        LOBYTE(v62) = 1;
        BYTE1(v62) = v14;
        *(&v62 + 1) = 0;
        v63 = 0uLL;
        v64 = 1;
        GEOLocationCoordinate2DMake();
        v47 = v62;
        v48 = v63;
        v49 = v64;
        v43 = v58;
        v44 = v59;
        v45 = v60;
        v46 = v61;
        v39 = v54;
        v40 = v55;
        v41 = v56;
        v42 = v57;
        _s22HomeAutomationInternal8SignpostO3end7logging___ySo9OS_os_logC_0H012OSSignpostIDVs12StaticStringVAC7ContextVSgtFZ_0(v7, v5, "GetEntitiesForIntent", 20, 2, &v39);
        v65[8] = v47;
        v65[9] = v48;
        v66 = v49;
        v65[4] = v43;
        v65[5] = v44;
        v65[6] = v45;
        v65[7] = v46;
        v65[0] = v39;
        v65[1] = v40;
        v65[2] = v41;
        v65[3] = v42;
        sub_25293847C(v65, &qword_27F5407B0, &unk_252E42860);
        (*(v3 + 8))(v5, v2);
        return v12;
      }
    }

    v31 = v1;
    v32 = v8;
    v16 = sub_2529DA8E4();
    v17 = v16;
    *&v65[0] = MEMORY[0x277D84F90];
    if (v16 >> 62)
    {
      goto LABEL_36;
    }

    v18 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_16:
    v33 = v10;
    v34 = v7;
    v35 = v5;
    v36 = v3;
    v37 = v2;
    if (v18)
    {
      v10 = 0;
      v3 = v17 & 0xC000000000000001;
      v7 = (v17 & 0xFFFFFFFFFFFFFF8);
      while (1)
      {
        if (v3)
        {
          v5 = MEMORY[0x2530ADF00](v10, v17);
          v19 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
LABEL_27:
            __break(1u);
LABEL_28:
            v12 = *&v65[0];
            goto LABEL_30;
          }
        }

        else
        {
          if (v10 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
LABEL_36:
            v18 = sub_252E378C4();
            goto LABEL_16;
          }

          v5 = *(v17 + 8 * v10 + 32);

          v19 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_27;
          }
        }

        if (sub_252967B6C(v38))
        {
          sub_252E37A94();
          v2 = *(*&v65[0] + 16);
          sub_252E37AC4();
          sub_252E37AD4();
          sub_252E37AA4();
        }

        else
        {
        }

        ++v10;
        if (v19 == v18)
        {
          goto LABEL_28;
        }
      }
    }

    v12 = MEMORY[0x277D84F90];
LABEL_30:

    v20 = v31;
    v21 = *(v31 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore_cachedResultsLock);
    os_unfair_lock_lock(v21 + 4);
    v22 = (v20 + OBJC_IVAR____TtC22HomeAutomationInternal9HomeStore__cachedResults);
    swift_beginAccess();
    v24 = *v22;
    v23 = v22[1];
    v25 = v33;

    [v23 lock];

    [v23 unlock];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v54 = v24;
    v27 = v32;
    sub_2529FB7E0(v12, v32, v25, isUniquelyReferenced_nonNull_native, sub_252E032C4, sub_252DFE810, sub_252E11364);

    v28 = v54;
    [v23 lock];
    *v22 = v28;

    [v23 unlock];
    swift_endAccess();
    os_unfair_lock_unlock(v21 + 4);
    if (qword_27F53F4C0 != -1)
    {
      swift_once();
    }

    v29 = sub_252E36AD4();
    __swift_project_value_buffer(v29, qword_27F544CE8);
    *&v65[0] = 0;
    *(&v65[0] + 1) = 0xE000000000000000;
    sub_252E379F4();
    MEMORY[0x2530AD570](0xD000000000000036, 0x8000000252E71270);
    MEMORY[0x2530AD570](v27, v25);

    sub_252CC3D90(*&v65[0], *(&v65[0] + 1), 0xD00000000000007FLL, 0x8000000252E70FD0);

    v14 = 0;
    v3 = v36;
    v2 = v37;
    v7 = v34;
    v5 = v35;
    goto LABEL_33;
  }

  sub_2529318DC();
  v12 = swift_allocError();
  *v15 = 12;
  return v12;
}

uint64_t sub_2529F442C(unint64_t a1, uint64_t a2)
{
  v3 = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_58:
    v50 = a2;
    v51 = sub_252E378C4();
    a2 = v50;
    v4 = v51;
    if (v51 < 2)
    {
      return 0;
    }
  }

  else
  {
    v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v4 < 2)
    {
      return 0;
    }
  }

  v53 = v3;
  v52 = a2;
  v54 = MEMORY[0x277D84F90];
  sub_2529AA3A0(0, v4, 0);
  v5 = v54;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v6 = 0;
    do
    {
      v7 = MEMORY[0x2530ADF00](v6, a1);
      v8 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v9 = *(v7 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name + 8);

      swift_unknownObjectRelease();
      v54 = v5;
      v11 = *(v5 + 16);
      v10 = *(v5 + 24);
      if (v11 >= v10 >> 1)
      {
        sub_2529AA3A0((v10 > 1), v11 + 1, 1);
        v5 = v54;
      }

      ++v6;
      *(v5 + 16) = v11 + 1;
      v12 = v5 + 16 * v11;
      *(v12 + 32) = v8;
      *(v12 + 40) = v9;
    }

    while (v4 != v6);
  }

  else
  {
    v13 = (a1 + 32);
    do
    {
      v14 = (*v13 + OBJC_IVAR____TtC22HomeAutomationInternal6Entity_name);
      v15 = *v14;
      v16 = v14[1];
      v54 = v5;
      v18 = *(v5 + 16);
      v17 = *(v5 + 24);

      if (v18 >= v17 >> 1)
      {
        sub_2529AA3A0((v17 > 1), v18 + 1, 1);
        v5 = v54;
      }

      *(v5 + 16) = v18 + 1;
      v19 = v5 + 16 * v18;
      *(v19 + 32) = v15;
      *(v19 + 40) = v16;
      ++v13;
      --v4;
    }

    while (v4);
  }

  v20 = sub_252C75848(v5);

  v21 = *(v20 + 16);

  if (v21 != 1)
  {
    return 0;
  }

  v23 = _s22HomeAutomationInternal18ApplicationContextC6sharedACvgZ_0(v22);
  sub_252929E74((v23 + 16), &v54);

  v24 = v56;
  v25 = v57;
  __swift_project_boxed_opaque_existential_1(&v54, v56);
  LOBYTE(v24) = sub_2529796B4(v24, v25);
  __swift_destroy_boxed_opaque_existential_1(&v54);
  v26 = a1 & 0xC000000000000001;
  if ((v24 & 1) == 0 || (v27 = sub_2529F744C(v52)) == 0)
  {
LABEL_33:
    v35 = type metadata accessor for HomeStore(0);
    v36 = static HomeStore.shared.getter(v35);
    v3 = sub_2529D9114();

    if (v3)
    {
      if (v53)
      {
        v37 = sub_252E378C4();
        if (!v37)
        {
LABEL_48:

          return 0;
        }
      }

      else
      {
        v37 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v37)
        {
          goto LABEL_48;
        }
      }

      v38 = 0;
      while (1)
      {
        if (v26)
        {
          v28 = MEMORY[0x2530ADF00](v38, a1);
          v39 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
LABEL_47:
            __break(1u);
            goto LABEL_48;
          }
        }

        else
        {
          if (v38 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            __break(1u);
            goto LABEL_58;
          }

          v28 = *(a1 + 8 * v38 + 32);

          v39 = v38 + 1;
          if (__OFADD__(v38, 1))
          {
            goto LABEL_47;
          }
        }

        if (sub_252E32E54())
        {
          break;
        }

        ++v38;
        if (v39 == v37)
        {
          goto LABEL_48;
        }
      }

      if (qword_27F53F4C0 != -1)
      {
        goto LABEL_61;
      }

      goto LABEL_52;
    }

    return 0;
  }

  v28 = v27;
  v29 = [*&v27[OBJC_IVAR____TtC22HomeAutomationInternal9Accessory_delegate] home];
  if (!v29 || ((v30 = v29, v31 = type metadata accessor for Home(0), swift_allocObject(), sub_2529E65BC(v30), , v53) ? (v32 = sub_252E378C4()) : (v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10)), !v32))
  {
LABEL_32:

    goto LABEL_33;
  }

  v33 = 0;
  while (v26)
  {
    v28 = MEMORY[0x2530ADF00](v33, a1);
    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

LABEL_26:
    if (sub_252E32E54())
    {
      if (qword_27F53F4C0 != -1)
      {
        swift_once();
      }

      v47 = sub_252E36AD4();
      __swift_project_value_buffer(v47, qword_27F544CE8);
      v54 = 0;
      v55 = 0xE000000000000000;
      sub_252E379F4();
      MEMORY[0x2530AD570](0xD00000000000003BLL, 0x8000000252E714E0);
      v48 = MEMORY[0x2530AD730](a1, v31);
      MEMORY[0x2530AD570](v48);

      MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E714C0);
      v49 = sub_2529E8734();
      MEMORY[0x2530AD570](v49);

      v45 = v54;
      v46 = v55;
      goto LABEL_56;
    }

    ++v33;
    v26 = a1 & 0xC000000000000001;
    if (v34 == v32)
    {
      goto LABEL_32;
    }
  }

  if (v33 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v28 = *(a1 + 8 * v33 + 32);

    v34 = v33 + 1;
    if (__OFADD__(v33, 1))
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

  __break(1u);
LABEL_61:
  swift_once();
LABEL_52:
  v41 = sub_252E36AD4();
  __swift_project_value_buffer(v41, qword_27F544CE8);
  v54 = 0;
  v55 = 0xE000000000000000;
  sub_252E379F4();
  MEMORY[0x2530AD570](0xD000000000000034, 0x8000000252E71480);
  v42 = type metadata accessor for Home(0);
  v43 = MEMORY[0x2530AD730](a1, v42);
  MEMORY[0x2530AD570](v43);

  MEMORY[0x2530AD570](0xD000000000000013, 0x8000000252E714C0);
  v44 = sub_2529E8734();
  MEMORY[0x2530AD570](v44);

  v45 = v54;
  v46 = v55;
LABEL_56:
  sub_252CC3D90(v45, v46, 0xD00000000000007FLL, 0x8000000252E70FD0);

  return v28;
}