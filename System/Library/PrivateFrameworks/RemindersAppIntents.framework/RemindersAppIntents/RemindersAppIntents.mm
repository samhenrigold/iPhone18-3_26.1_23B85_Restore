void *sub_261AE4110(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t static RemindersInCalendarUtilities.triggerSync(reason:)(uint64_t *a1)
{
  v2 = sub_261CFE1B4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *a1;
  v6 = a1[1];
  if (v6 >= 3)
  {
    *v5 = v7;
    v5[1] = v6;
    v8 = MEMORY[0x277D45D08];
  }

  else
  {
    v8 = qword_279AFAF30[v6];
  }

  (*(v3 + 104))(v5, *v8, v2);
  sub_261AE4288(v7, v6);
  if (qword_280D21E90 != -1)
  {
    swift_once();
  }

  sub_261CFE1A4();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_261AE4288(uint64_t a1, unint64_t a2)
{
  if (a2 >= 3)
  {
    return sub_261CFD104();
  }

  return result;
}

id sub_261AE429C()
{
  result = [objc_allocWithZone(MEMORY[0x277D44850]) initUserInteractive_];
  qword_280D21E98 = result;
  return result;
}

uint64_t AppIntentsServicesRefresher.init()()
{
  result = v0;
  *(v0 + 16) = 0;
  return result;
}

uint64_t type metadata accessor for REMStoreIntentPerformer(uint64_t a1)
{
  result = qword_280D21FF8;
  if (!qword_280D21FF8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261AE4350(uint64_t a1)
{
  sub_261AE4410(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_261AE4410(uint64_t a1)
{
  if (!qword_280D22DA0)
  {
    sub_261CFD7E4();
    v1 = sub_261D00154();
    if (!v2)
    {
      atomic_store(v1, &qword_280D22DA0);
    }
  }
}

uint64_t REMStoreIntentPerformer.init(store:)(void *a1)
{
  v3 = OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_now;
  v4 = sub_261CFD7E4();
  (*(*(v4 - 8) + 56))(v1 + v3, 1, 1, v4);
  v5 = v1 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer__unitTest_userDefaults;
  *v5 = 0u;
  *(v5 + 16) = 0u;
  *(v5 + 32) = 0;
  *(v1 + OBJC_IVAR____TtC19RemindersAppIntents23REMStoreIntentPerformer____lazy_storage___contactStore) = 0;
  *(v1 + 16) = a1;
  type metadata accessor for REMRemindersAppIntentDataView();
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v1 + 24) = v6;
  v7 = a1;
  return v1;
}

uint64_t AppDependencyManager.ttrAdd(dependency:)(void *a1)
{
  sub_261AE4630();
  sub_261D002D4();
  *(swift_allocObject() + 16) = a1;
  sub_261AE46EC();
  v2 = a1;
  sub_261CFC694();

  return sub_261AE47C8(v4);
}

uint64_t sub_261AE45F8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

unint64_t sub_261AE4630()
{
  result = qword_280D22870;
  if (!qword_280D22870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22870);
  }

  return result;
}

unint64_t sub_261AE4688()
{
  result = qword_280D22868;
  if (!qword_280D22868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D22868);
  }

  return result;
}

unint64_t sub_261AE46EC()
{
  result = qword_280D21DD0;
  if (!qword_280D21DD0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D21DD0);
  }

  return result;
}

uint64_t sub_261AE4738()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261AE47C8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE2A0, &qword_261D11748);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t _s17TriggerSyncReasonOwxx(uint64_t a1)
{
  result = *(a1 + 8);
  if (result >= 0xFFFFFFFF)
  {
  }

  return result;
}

uint64_t type metadata accessor for AppEntityID(uint64_t a1)
{
  result = qword_280D22918;
  if (!qword_280D22918)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AppDependencyManager.ttrAdd(dependency:)(uint64_t a1)
{
  LOBYTE(v4[0]) = 0;
  sub_261AE4630();
  sub_261D002D4();
  sub_261AE498C(a1, v4);
  v2 = swift_allocObject();
  sub_261AE49F0(v4, v2 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDE298, &qword_261D11740);
  sub_261CFC694();

  return sub_261AE47C8(v5);
}

uint64_t sub_261AE4954()
{
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_261AE498C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_261AE49F0(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t AppIntentsServicesRefresher.setUpSubscriptionForRefreshUponStoreChange<A>(refreshScheduler:debounceInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v55 = a1;
  v56 = a2;
  v58 = v5;
  v57 = *v5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_261D00154();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v44 - v10;
  v12 = sub_261CFED54();
  v53 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_261AE5058(&qword_280D22D78, MEMORY[0x277D44ED0], MEMORY[0x277D44EC8]);
  v54 = v12;
  v59 = v12;
  v60 = a3;
  v45 = v15;
  v61 = v15;
  v62 = a4;
  v16 = sub_261CFF7C4();
  v50 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v47 = v44 - v17;
  WitnessTable = swift_getWitnessTable();
  v52 = v16;
  v59 = v16;
  v60 = a3;
  v44[2] = WitnessTable;
  v61 = WitnessTable;
  v62 = a4;
  v19 = sub_261CFF7B4();
  v48 = *(v19 - 8);
  v49 = v19;
  MEMORY[0x28223BE20](v19);
  v46 = v44 - v20;
  v21 = sub_261CFECD4();
  v22 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v24 = v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v22 + 104))(v24, *MEMORY[0x277D44DF8], v21);
  v25 = sub_261CFECC4();
  result = (*(v22 + 8))(v24, v21);
  if (v25)
  {
    v27 = v9;
    if (qword_280D21E70 != -1)
    {
      swift_once();
    }

    v28 = v8;
    v29 = sub_261CFF7A4();
    __swift_project_value_buffer(v29, qword_280D21E78);
    v30 = sub_261CFF784();
    v31 = sub_261CFFE84();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_261AE2000, v30, v31, "AppIntentsServicesRefresher will start subscription to refresh upon store change", v32, 2u);
      MEMORY[0x26671D560](v32, -1, -1);
    }

    sub_261CFFB54();
    sub_261AE52A0();
    v33 = v14;
    sub_261CFED44();
    v34 = AssociatedTypeWitness;
    v35 = *(AssociatedTypeWitness - 8);
    v44[0] = *(v35 + 56);
    v44[1] = v35 + 56;
    (v44[0])(v11, 1, 1, AssociatedTypeWitness);
    v36 = v47;
    v37 = v54;
    sub_261CFF854();
    v45 = a4;
    v38 = *(v27 + 8);
    v38(v11, v8);
    (*(v53 + 8))(v33, v37);
    (v44[0])(v11, 1, 1, v34);
    v39 = v46;
    v40 = v52;
    sub_261CFF864();
    v38(v11, v28);
    (*(v50 + 8))(v36, v40);
    v41 = v49;
    swift_getWitnessTable();
    v42 = v58;
    v43 = sub_261CFF7E4();
    (*(v48 + 8))(v39, v41);
    v42[2] = v43;
  }

  return result;
}

uint64_t sub_261AE5058(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261AE50A0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_280D21E78);
  v1 = __swift_project_value_buffer(v0, qword_280D21E78);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
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

uint64_t sub_261AE5228(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return sub_261CFF794();
}

uint64_t sub_261AE52A0()
{
  v0 = sub_261CFFEF4();
  v13 = *(v0 - 8);
  v14 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = v12 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_261CFFED4();
  MEMORY[0x28223BE20](v3);
  v4 = sub_261CFF8C4();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFF8A4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261AE55B4();
  v15 = sub_261CFED54();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA240, &qword_261D024E8);
  v9 = sub_261CFFAC4();
  v12[1] = v10;
  v12[2] = v9;
  (*(v6 + 104))(v8, *MEMORY[0x277D851C8], v5);
  sub_261CFFF24();
  (*(v6 + 8))(v8, v5);
  sub_261CFF8B4();
  v15 = MEMORY[0x277D84F90];
  sub_261AE5058(&unk_280D21DE0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA248, &qword_261D024F0);
  sub_261AE5600();
  sub_261D001D4();
  (*(v13 + 104))(v2, *MEMORY[0x277D85260], v14);
  return sub_261CFFF14();
}

unint64_t sub_261AE55B4()
{
  result = qword_280D21DD8;
  if (!qword_280D21DD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280D21DD8);
  }

  return result;
}

unint64_t sub_261AE5600()
{
  result = qword_280D21DF8;
  if (!qword_280D21DF8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FEDA248, &qword_261D024F0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D21DF8);
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for UpdateSectionIsCollapsedAppIntent(uint64_t result, int a2, int a3)
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

uint64_t RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken.init(dataRepresentation:)@<X0>(uint64_t a3@<X8>)
{
  v5 = sub_261CFF624();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_261CFF614();
  if (!v3)
  {
    return (*(v6 + 32))(a3, v8, v5);
  }

  return result;
}

void sub_261AE57D0(uint64_t a1)
{
  sub_261CFD844();
  if (v1 <= 0x3F)
  {
    sub_261AE58FC(319);
    if (v2 <= 0x3F)
    {
      swift_initStructMetadata();
    }
  }
}

uint64_t sub_261AE58A4(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_261AE58FC(uint64_t a1)
{
  if (!qword_280D21EF8[0])
  {
    type metadata accessor for RecurrentInstanceSpecifier(255);
    v1 = sub_261D00154();
    if (!v2)
    {
      atomic_store(v1, qword_280D21EF8);
    }
  }
}

uint64_t sub_261AE5968(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void static RemindersInCalendarUtilities.fetchScheduledReminders(store:diffingAgainst:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v91 = a3;
  v88 = sub_261CFF5D4();
  v84 = *(v88 - 8);
  v5 = MEMORY[0x28223BE20](v88);
  v86 = &v79[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = MEMORY[0x28223BE20](v5);
  v85 = &v79[-v8];
  v9 = MEMORY[0x28223BE20](v7);
  v83 = &v79[-v10];
  MEMORY[0x28223BE20](v9);
  v87 = &v79[-v11];
  v12 = sub_261CFF5E4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v79[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  ResultToken = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken(0);
  v17 = *(ResultToken - 8);
  MEMORY[0x28223BE20](ResultToken);
  v92 = &v79[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC318, &qword_261D098E0);
  MEMORY[0x28223BE20](v19 - 8);
  v21 = &v79[-v20];
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC320, &qword_261D098E8);
  MEMORY[0x28223BE20](v22 - 8);
  v24 = &v79[-v23];
  v25 = sub_261CFF5F4();
  v89 = *(v25 - 8);
  v90 = v25;
  MEMORY[0x28223BE20](v25);
  v95 = &v79[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v94 = [a1 nonUserInteractiveStore];
  sub_261AE64CC(a2, v21);
  if ((*(v17 + 48))(v21, 1, ResultToken) == 1)
  {
    sub_261AE6A40(v21, &qword_27FEDC318, &qword_261D098E0);
    v27 = sub_261CFF624();
    (*(*(v27 - 8) + 56))(v24, 1, 1, v27);
  }

  else
  {
    v28 = sub_261CFF624();
    v29 = *(v28 - 8);
    (*(v29 + 16))(v24, v21, v28);
    sub_261AE6824(v21);
    (*(v29 + 56))(v24, 0, 1, v28);
  }

  sub_261CFF634();
  v30 = v95;
  v31 = v93;
  v32 = v94;
  sub_261CFF574();
  sub_261AE6A40(v24, &qword_27FEDC320, &qword_261D098E8);
  if (v31)
  {

    return;
  }

  sub_261CFF584();
  sub_261CFF594();
  v33 = (*(v13 + 88))(v15, v12);
  v34 = v33;
  LODWORD(v93) = *MEMORY[0x277D45780];
  if (v33 == v93)
  {
    (*(v13 + 96))(v15, v12);
    v50 = *v15;
    if (qword_280D21E50 != -1)
    {
      swift_once();
    }

    v51 = sub_261CFF7A4();
    __swift_project_value_buffer(v51, qword_280D21E58);
    sub_261CFD104();
    v52 = sub_261CFF784();
    v53 = sub_261CFFE84();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v92;
    if (v54)
    {
      v56 = swift_slowAlloc();
      *v56 = 134217984;
      if ((v50 & 0xC000000000000001) != 0)
      {
        v57 = sub_261D00274();
      }

      else
      {
        v57 = *(v50 + 16);
      }

      *(v56 + 4) = v57;

      _os_log_impl(&dword_261AE2000, v52, v53, "RemindersInCalendarUtilities: finished fetching {resultType: reload, matchedReminderIDs: %ld}", v56, 0xCu);
      MEMORY[0x26671D560](v56, -1, -1);

      v30 = v95;
    }

    else
    {
    }

    sub_261AE6AA0(v50);
    v61 = v60;

    (*(v89 + 8))(v30, v90);
    v62 = 0;
    v63 = 0;
    goto LABEL_32;
  }

  v35 = *MEMORY[0x277D45778];
  v82 = v33;
  if (v33 == v35)
  {
    v81 = 0;
    (*(v13 + 96))(v15, v12);
    v36 = v84;
    v37 = v87;
    v38 = v15;
    v39 = v88;
    (*(v84 + 32))(v87, v38, v88);
    v40 = v86;
    if (qword_280D21E50 != -1)
    {
      swift_once();
    }

    v41 = sub_261CFF7A4();
    __swift_project_value_buffer(v41, qword_280D21E58);
    v42 = *(v36 + 16);
    v43 = v83;
    v42(v83, v37, v39);
    v44 = v85;
    v42(v85, v37, v39);
    v42(v40, v37, v39);
    v45 = sub_261CFF784();
    v46 = sub_261CFFE84();
    if (os_log_type_enabled(v45, v46))
    {
      v80 = v46;
      v47 = swift_slowAlloc();
      *v47 = 134218496;
      v48 = sub_261CFF5A4();
      if ((v48 & 0xC000000000000001) != 0)
      {
        v49 = sub_261D00274();
      }

      else
      {
        v49 = *(v48 + 16);
      }

      v64 = v85;

      v59 = *(v36 + 8);
      v59(v43, v39);
      *(v47 + 4) = v49;
      *(v47 + 12) = 2048;
      v65 = sub_261CFF5B4();
      if ((v65 & 0xC000000000000001) != 0)
      {
        v66 = sub_261D00274();
      }

      else
      {
        v66 = *(v65 + 16);
      }

      v59(v64, v88);
      *(v47 + 14) = v66;
      *(v47 + 22) = 2048;
      v67 = sub_261CFF5C4();
      if ((v67 & 0xC000000000000001) != 0)
      {
        v68 = sub_261D00274();
      }

      else
      {
        v68 = *(v67 + 16);
      }

      v39 = v88;
      v59(v86, v88);
      *(v47 + 24) = v68;
      _os_log_impl(&dword_261AE2000, v45, v80, "RemindersInCalendarUtilities: finished fetching {resultType: incremental, matchedReminderIDs: %ld, removedReminderIDs: %ld, updatedListIDs: %ld}", v47, 0x20u);
      MEMORY[0x26671D560](v47, -1, -1);
    }

    else
    {
      v58 = *(v36 + 8);
      v58(v40, v39);
      v58(v44, v39);
      v59 = v58;
      v58(v43, v39);
    }

    v69 = v87;
    v70 = sub_261CFF5A4();
    sub_261AE6AA0(v70);
    v61 = v71;

    v72 = sub_261CFF5B4();
    sub_261AE6AA0(v72);
    v62 = v73;

    v74 = sub_261CFF5C4();
    sub_261AE6AA0(v74);
    v63 = v75;

    v59(v69, v39);
    (*(v89 + 8))(v95, v90);
    v34 = v82;
    v55 = v92;
LABEL_32:
    v76 = v34 != v93;
    v77 = v91;
    *v91 = v61;
    v77[1] = v62;
    v77[2] = v63;
    *(v77 + 24) = v76;
    Result = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResult(0);
    sub_261AE7010(v55, v77 + *(Result + 20));
    return;
  }

  sub_261D00604();
  __break(1u);
}

uint64_t sub_261AE6438(uint64_t a1)
{
  result = sub_261CFD4E4();
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_261AE64CC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC318, &qword_261D098E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for ListEntity(uint64_t a1)
{
  result = qword_280D22750;
  if (!qword_280D22750)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261AE659C(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_261AE6608(uint64_t a1)
{
  result = type metadata accessor for AppEntityID(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t AppEntityID.init(objectID:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 entityName];
  v5 = sub_261CFFA74();
  v7 = v6;

  v8 = [a1 uuid];
  v9 = type metadata accessor for AppEntityID(0);
  sub_261CFD834();

  v10 = *(v9 + 24);
  v11 = type metadata accessor for RecurrentInstanceSpecifier(0);
  result = (*(*(v11 - 8) + 56))(a2 + v10, 1, 1, v11);
  *a2 = v5;
  a2[1] = v7;
  return result;
}

uint64_t _s34ScheduledRemindersFetchResultTokenVwcp(uint64_t a1, uint64_t a2)
{
  v4 = sub_261CFF624();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  return a1;
}

uint64_t sub_261AE6824(uint64_t a1)
{
  ResultToken = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken(0);
  (*(*(ResultToken - 8) + 8))(a1, ResultToken);
  return a1;
}

uint64_t sub_261AE6894(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_261CFD4E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2 + 1;
  }

  return result;
}

uint64_t sub_261AE694C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s34ScheduledRemindersFetchResultTokenVwxx(uint64_t a1)
{
  v2 = sub_261CFF624();
  v3 = *(*(v2 - 8) + 8);

  return v3(a1, v2);
}

uint64_t sub_261AE6A40(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void sub_261AE6AA0(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = MEMORY[0x277D84FA0];
    goto LABEL_6;
  }

  if (!sub_261D00274())
  {
    goto LABEL_5;
  }

LABEL_3:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDAB78, &unk_261D099C0);
  v3 = sub_261D00314();
LABEL_6:
  if (sub_261B57A9C() == MEMORY[0x277D837D0])
  {
    if (v2)
    {
      sub_261CFCDA4();
      sub_261CFD104();
      sub_261D00234();
      sub_261CFEE04();
      sub_261BEE0C8();
      sub_261CFFDA4();
      v1 = v39;
      v8 = v40;
      v9 = v41;
      v10 = v42;
      v11 = v43;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);
      sub_261CFCDA4();
      sub_261CFD104();
      v10 = 0;
    }

    while ((v1 & 0x8000000000000000) == 0)
    {
      if (v11)
      {
        v33 = v10;
        goto LABEL_44;
      }

      v36 = v10;
      do
      {
        v33 = v36 + 1;
        if (__OFADD__(v36, 1))
        {
          goto LABEL_60;
        }

        if (v33 >= ((v9 + 64) >> 6))
        {
          v37 = v1;
          goto LABEL_56;
        }

        v11 = *(v8 + 8 * v33);
        ++v36;
      }

      while (!v11);
      v10 = v33;
LABEL_44:
      v34 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
LABEL_45:
      sub_261BEE120(v35);
    }

    if (sub_261D002A4())
    {
      sub_261CFEE04();
      swift_dynamicCast();
      v35 = v38;
      goto LABEL_45;
    }

    v37 = v1;
LABEL_56:
    sub_261AE6F74(v37);
LABEL_57:

    return;
  }

  if (v2)
  {
    sub_261CFCDA4();
    sub_261CFD104();
    sub_261D00234();
    sub_261CFEE04();
    sub_261BEE0C8();
    sub_261CFFDA4();
    v1 = v39;
    v4 = v40;
    v5 = v41;
    v6 = v42;
    v7 = v43;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);
    sub_261CFCDA4();
    sub_261CFD104();
    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = v3 + 56;
  while (v1 < 0)
  {
    if (!sub_261D002A4())
    {
LABEL_38:
      sub_261AE6F74(v1);
      goto LABEL_57;
    }

    sub_261CFEE04();
    swift_dynamicCast();
    v19 = v38;
LABEL_29:
    v22 = sub_261D000E4();
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v16 + 8 * (v24 >> 6))) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*(v16 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_59;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *(v16 + 8 * v25);
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    *(*(v3 + 48) + 8 * v17) = v19;
    ++*(v3 + 16);
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v38 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v38;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_38;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t sub_261AE7010(uint64_t a1, uint64_t a2)
{
  ResultToken = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken(0);
  (*(*(ResultToken - 8) + 32))(a2, a1, ResultToken);
  return a2;
}

uint64_t RemindersInCalendarUtilities.ScheduledRemindersFetchResult.latestFetchResultToken.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResult(0) + 20);

  return sub_261AE7110(v3, a1);
}

uint64_t sub_261AE7110(uint64_t a1, uint64_t a2)
{
  ResultToken = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken(0);
  (*(*(ResultToken - 8) + 16))(a2, a1, ResultToken);
  return a2;
}

uint64_t RemindersInCalendarUtilities.ScheduledRemindersFetchResult.remindersResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  *a1 = *v1;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  return sub_261AE7220(v2, v3, v4, v5);
}

uint64_t sub_261AE7220(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {
    sub_261CFD104();
    sub_261CFD104();
    v4 = vars8;
  }

  return sub_261CFD104();
}

char *initializeWithCopy for AppEntityID(char *a1, char *a2, uint64_t a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = *(a3 + 20);
  v8 = sub_261CFD844();
  v9 = *(*(v8 - 8) + 16);
  sub_261CFD104();
  v9(&a1[v7], &a2[v7], v8);
  v10 = *(a3 + 24);
  v11 = &a1[v10];
  v12 = &a2[v10];
  v13 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13))
  {
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v11, v12, *(*(v15 - 8) + 64));
  }

  else
  {
    v16 = sub_261CFD4E4();
    (*(*(v16 - 8) + 16))(v11, v12, v16);
    v11[*(v13 + 20)] = v12[*(v13 + 20)];
    (*(v14 + 56))(v11, 0, 1, v13);
  }

  return a1;
}

uint64_t sub_261AE7468(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD4E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 2)
    {
      return ((v10 + 2147483646) & 0x7FFFFFFF) + 1;
    }

    else
    {
      return 0;
    }
  }
}

__n128 __swift_memcpy24_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t _s29ScheduledRemindersFetchResultVwxx(uint64_t a1, uint64_t a2)
{
  sub_261AE75C4(*a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  v4 = *(a2 + 20);
  v5 = sub_261CFF624();
  v6 = *(*(v5 - 8) + 8);

  return v6(a1 + v4, v5);
}

uint64_t sub_261AE75C4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {
  }

  return result;
}

uint64_t _s29ScheduledRemindersFetchResultV17IncrementalResultVwxx(void *a1)
{
}

uint64_t AppEntityID.entityIdentifierString.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v26 - v3;
  v5 = sub_261CFD414();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_261CFD404();
  sub_261CFD3D4();
  v9 = *v0;
  v10 = v1[1];
  sub_261CFD104();
  MEMORY[0x266719A60](v9, v10);
  v26 = 47;
  v27 = 0xE100000000000000;
  v11 = type metadata accessor for AppEntityID(0);
  v12 = sub_261CFD804();
  MEMORY[0x26671C210](v12);

  MEMORY[0x266719A80](v26, v27);
  sub_261AE7A78(v1 + *(v11 + 24), v4);
  v13 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if ((*(*(v13 - 8) + 48))(v4, 1, v13) == 1)
  {
    sub_261AE6A40(v4, &qword_27FEDA108, &unk_261D020C0);
  }

  else
  {
    sub_261C182AC();
    sub_261C87BE8(v4);
  }

  sub_261CFD374();
  v14 = sub_261CFD3F4();
  if (v15)
  {
    v16 = v14;
  }

  else
  {
    if (qword_27FED9C70 != -1)
    {
      swift_once();
    }

    v17 = sub_261CFF7A4();
    __swift_project_value_buffer(v17, qword_27FEDDBA8);
    v18 = sub_261CFF784();
    v19 = sub_261CFFE74();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v28 = v21;
      *v20 = 136315138;
      swift_beginAccess();
      sub_261C88108(&qword_27FEDDBC0, MEMORY[0x277CC8958], MEMORY[0x277CC8968]);
      v22 = sub_261D005F4();
      v24 = sub_261B879C8(v22, v23, &v28);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_261AE2000, v18, v19, "AppEntityID#entityIdentifierString: failed to obtain URL string from URLComponents {urlComponents: %s}", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x26671D560](v21, -1, -1);
      MEMORY[0x26671D560](v20, -1, -1);
    }

    v16 = 0;
  }

  (*(v6 + 8))(v8, v5);
  return v16;
}

uint64_t sub_261AE7A78(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t destroy for AppEntityID(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_261CFD844();
  (*(*(v5 - 8) + 8))(a1 + v4, v5);
  v6 = *(a2 + 24);
  v7 = type metadata accessor for RecurrentInstanceSpecifier(0);
  result = (*(*(v7 - 8) + 48))(a1 + v6, 1, v7);
  if (!result)
  {
    v9 = sub_261CFD4E4();
    v10 = *(*(v9 - 8) + 8);

    return v10(a1 + v6, v9);
  }

  return result;
}

uint64_t sub_261AE7BF8(const char *a1, uint64_t a2, char a3)
{
  v5 = sub_261CFF6F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_280D21E40 != -1)
  {
    swift_once();
  }

  v9 = sub_261CFF724();
  __swift_project_value_buffer(v9, qword_280D26FD0);
  sub_261CFF6E4();
  v10 = sub_261CFF704();
  v11 = sub_261CFFFF4();
  result = sub_261D00144();
  if ((result & 1) == 0)
  {
    goto LABEL_12;
  }

  if ((a3 & 1) == 0)
  {
    if (a1)
    {
LABEL_11:
      v13 = swift_slowAlloc();
      *v13 = 0;
      v14 = sub_261CFF6D4();
      _os_signpost_emit_with_name_impl(&dword_261AE2000, v10, v11, v14, a1, "", v13, 2u);
      MEMORY[0x26671D560](v13, -1, -1);
LABEL_12:

      return (*(v6 + 8))(v8, v5);
    }

    __break(1u);
  }

  if (a1 >> 32)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if ((a1 & 0xFFFFF800) != 0xD800)
  {
    if (a1 >> 16 <= 0x10)
    {
      a1 = &v16;
      goto LABEL_11;
    }

    goto LABEL_14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_261AE7DD4()
{
  v0 = sub_261CFF724();
  __swift_allocate_value_buffer(v0, qword_280D26FD0);
  __swift_project_value_buffer(v0, qword_280D26FD0);
  return sub_261CFF714();
}

uint64_t sub_261AE7E50(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_261AE7EB8(uint64_t a1)
{
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_261AF4BDC;

  return sub_261AE7F64();
}

uint64_t sub_261AE7F64()
{
  v1 = sub_261CFC6C4();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();
  v2 = sub_261CFC6E4();
  v0[5] = v2;
  v0[6] = *(v2 - 8);
  v0[7] = swift_task_alloc();
  v3 = type metadata accessor for ReminderEntity(0);
  v0[8] = v3;
  v4 = swift_task_alloc();
  v0[9] = v4;
  v5 = sub_261AE5058(&qword_280D22358, type metadata accessor for ReminderEntity, &protocol conformance descriptor for ReminderEntity);
  v0[10] = v5;
  *v4 = v0;
  v4[1] = sub_261AE8618;

  return MEMORY[0x28210B468](v3, v5);
}

uint64_t type metadata accessor for ReminderEntity(uint64_t a1)
{
  result = qword_280D22310;
  if (!qword_280D22310)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261AE814C(uint64_t a1)
{
  result = type metadata accessor for AppEntityID(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

uint64_t sub_261AE8268(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261AE82B0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for SectionEntity(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_261AE82F4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261AE833C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261AE8384(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261AE83CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_261AE8618(char a1)
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
    *(v4 + 88) = a1 & 1;

    return MEMORY[0x2822009F8](sub_261AE877C, 0, 0);
  }
}

uint64_t sub_261AE877C()
{
  if (*(v0 + 88) == 1)
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 40);
    v3 = *(v0 + 48);
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = *(v0 + 16);
    (*(v5 + 104))(v4, *MEMORY[0x277CB9BE0], v6);
    sub_261CFC714();
    (*(v5 + 8))(v4, v6);
    sub_261CFC6D4();
    (*(v3 + 8))(v1, v2);
  }

  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_261AE88A4()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_261AE8978@<X0>(void *a1@<X8>)
{
  type metadata accessor for ListEntity(0);
  result = sub_261CFCA04();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_261AE8A28@<X0>(void *a1@<X8>)
{
  type metadata accessor for ListEntity(0);
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

void *sub_261AE8A80@<X0>(void *a1@<X8>)
{
  type metadata accessor for ListEntity(0);
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

void *sub_261AE8AD8@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ListEntity(0);
  result = sub_261CFD2D4();
  *a1 = v3;
  return result;
}

void *sub_261AE8B7C@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ListEntity(0);
  result = sub_261CFD2D4();
  *a1 = v3;
  return result;
}

void *sub_261AE8C20@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ListEntity(0);
  result = sub_261CFD2D4();
  *a1 = v3;
  return result;
}

void *sub_261AE8CC4@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ListEntity(0);
  result = sub_261CFD2D4();
  *a1 = v3;
  return result;
}

void *sub_261AE8D68@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ListEntity(0);
  result = sub_261CFD2D4();
  *a1 = v3;
  return result;
}

void *sub_261AE8E0C@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ListEntity(0);
  result = sub_261CFD2D4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AE8F20(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppEntityID(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_261AE8FCC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppEntityID(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261AE90D0()
{
  v1 = type metadata accessor for ListEntity(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];

  v7 = type metadata accessor for AppEntityID(0);
  v8 = *(v7 + 20);
  v9 = sub_261CFD844();
  (*(*(v9 - 8) + 8))(v6 + v8, v9);
  v10 = *(v7 + 24);
  v11 = type metadata accessor for RecurrentInstanceSpecifier(0);
  if (!(*(*(v11 - 8) + 48))(v6 + v10, 1, v11))
  {
    v12 = sub_261CFD4E4();
    (*(*(v12 - 8) + 8))(v6 + v10, v12);
  }

  if (*(v5 + v1[19]))
  {
  }

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_261AE9330(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_261AE93EC(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_261AE949C@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AE94DC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AE9544@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDA1D8;
  return result;
}

uint64_t sub_261AE9590(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDA1D8 = v1;
  return result;
}

uint64_t sub_261AE95DC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261AE9618@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AE9644@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AE96B8@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_261AE96F8@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_261AE98AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AE98D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AE992C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AE9A44@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SectionEntity(0) + 32));

  return sub_261CFCDA4();
}

void *sub_261AE9A8C@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AE9ACC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AE9B0C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AE9B4C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDA510;
  return result;
}

uint64_t sub_261AE9B98(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDA510 = v1;
  return result;
}

uint64_t sub_261AE9BE4()
{

  return MEMORY[0x2821FE8E8](v0, 232, 7);
}

uint64_t sub_261AE9CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_261AE9DA0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA9B0, &qword_261D034B8);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *_s19RemindersAppIntents32CreateRemindersPerformingContextV12IntendedListOwCP_0(void *a1, void **a2)
{
  v3 = *a2;
  v4 = a2[1];
  sub_261B49FA0(*a2, v4);
  *a1 = v3;
  a1[1] = v4;
  return a1;
}

void *sub_261AE9E90@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AE9EF8@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AE9F88@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEA018@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDAA08;
  return result;
}

uint64_t sub_261AEA064(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDAA08 = v1;
  return result;
}

double sub_261AEA0D4@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_261AEA164@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_261AEA1CC@<D0>(uint64_t a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

double sub_261AEA264@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AEA2A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AEA2E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AEA358@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AEA398@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AEA3D8@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEA420()
{
  v1 = sub_261CFD7E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_261AEA4A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEA4D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AEA528@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEA63C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity(0) + 52));

  return sub_261CFCDA4();
}

uint64_t sub_261AEA684@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEA6B0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AEA704@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEA790@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity(0) + 72));

  return sub_261CFCDA4();
}

void *sub_261AEA800@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEA88C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity(0) + 68));

  return sub_261CFCDA4();
}

uint64_t sub_261AEA8D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEA900@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AEA954@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEA9E0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity(0) + 64));

  return sub_261CFCDA4();
}

uint64_t sub_261AEAA28@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEAA54@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AEAAA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEAB34@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity(0) + 56));

  return sub_261CFCDA4();
}

uint64_t sub_261AEAB7C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEABA8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEACF8@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity(0) + 40));

  return sub_261CFCDA4();
}

double sub_261AEAD68@<D0>(uint64_t a1@<X8>)
{
  sub_261CFCBB4();
  *a1 = v3;
  result = *&v4;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_261AEADC0@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity(0) + 36));

  return sub_261CFCDA4();
}

double sub_261AEAE30@<D0>(uint64_t a1@<X8>)
{
  sub_261CFCBB4();
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 24) = v5;
  result = *&v6;
  *(a1 + 40) = v6;
  return result;
}

uint64_t sub_261AEAE8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity(0) + 32));

  return sub_261CFCDA4();
}

uint64_t sub_261AEAEDC@<X0>(uint64_t *a1@<X8>)
{
  result = AppEntityID.entityIdentifierString.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261AEAF08@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEAF34@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AEAF88@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_261AEB014@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity(0) + 28));

  return sub_261CFCDA4();
}

uint64_t sub_261AEB05C()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

double sub_261AEB098@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AEB0D8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEB118@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDB108;
  return result;
}

uint64_t sub_261AEB164(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDB108 = v1;
  return result;
}

double sub_261AEB1D4@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_261AEB214@<D0>(uint64_t a1@<X8>)
{
  sub_261CFCBB4();
  *a1 = v3;
  *(a1 + 16) = v4;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

double sub_261AEB264@<D0>(uint64_t a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

void *sub_261AEB2D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AEB314@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AEB354@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AEB394@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AEB3D4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AEB414@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEB458@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AEB4AC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

double sub_261AEB4EC@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_261AEB52C@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AEB56C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEB634@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

BOOL sub_261AEB6E0(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_261AEB72C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderEntity(0);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_261AEB798(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ReminderEntity(0);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t _s20CategorizedRemindersVwxx_0(void *a1)
{
}

uint64_t sub_261AEB884@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = a1[4];
  v4 = a1[5];
  __swift_project_boxed_opaque_existential_1(a1 + 1, v3);
  result = (*(v4 + 8))(v3, v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

void *sub_261AEB90C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

void *sub_261AEB94C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEB994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEB9C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AEBA14@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_261AEBB28@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for GroupEntity(0) + 28));

  return sub_261CFCDA4();
}

uint64_t _s19RemindersAppIntents27QuickReminderViewControllerC13ConfigurationVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = v3;
  return a1;
}

uint64_t _s19RemindersAppIntents27QuickReminderViewControllerC12PlatterStyleVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  *(a1 + 8) = v4;
  *(a1 + 16) = *(a2 + 16);
  v5 = v3;
  return a1;
}

uint64_t sub_261AEBC08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_261AEBD44(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F0, &qword_261D070B0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB6F8, &qword_261D070B8);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t sub_261AEBE80()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261AEBEB8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261AEBEF8()
{
  v1 = *(v0 + 16);
  if (v1 != 1)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

void *sub_261AEBF4C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEBF90@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AEBFBC@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

double sub_261AEC08C@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCA04();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AEC0CC@<X0>(uint64_t a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void *sub_261AEC114@<X0>(uint64_t a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void *sub_261AEC15C@<X0>(uint64_t a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void *sub_261AEC1A4@<X0>(uint64_t a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  *(a1 + 8) = v4;
  return result;
}

void *sub_261AEC1F4@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AEC234@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEC29C@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDB8F8;
  return result;
}

uint64_t sub_261AEC2E8(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDB8F8 = v1;
  return result;
}

uint64_t sub_261AEC3A0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AEC3F8@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AEC438@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AEC478@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEC530@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDBB20;
  return result;
}

uint64_t sub_261AEC57C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDBB20 = v1;
  return result;
}

uint64_t sub_261AEC608@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEC634@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEC660@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEC68C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEC6B8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEC6E4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEC710@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AEC764@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

void *sub_261AEC7A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

void *sub_261AEC7E4@<X0>(void *a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEC82C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEC858@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AEC884@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AEC8C4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

__n128 sub_261AEC9D8@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 28);
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_261AECA14(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0) + 28));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_261AECA50@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *a2 = *(a1 + *(result + 32));
  return result;
}

uint64_t sub_261AECA88(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(a2 + *(result + 32)) = v3;
  return result;
}

uint64_t sub_261AECABC@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *a2 = *(a1 + *(result + 36));
  return result;
}

uint64_t sub_261AECAF4(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_261AECB28@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *a2 = *(a1 + *(result + 40));
  return result;
}

uint64_t sub_261AECB60(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration(0);
  *(a2 + *(result + 40)) = v3;
  return result;
}

uint64_t sub_261AECB94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    v11 = v10 - 1;
    if (v11 < 0)
    {
      v11 = -1;
    }

    return (v11 + 1);
  }
}

uint64_t sub_261AECC5C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderEditingConfiguration.ReminderSpecifier(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = a2;
  }

  return result;
}

uint64_t _s21ReminderEditingModuleVwCP_0(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  v4 = v3;
  swift_unknownObjectRetain();
  return a1;
}

uint64_t sub_261AECD64()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *sub_261AECDA4@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_261AECDE4()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261AECE44@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AECE70@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AECEC4@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_261AECF54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    ResultToken = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken(0);
    v9 = *(*(ResultToken - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, ResultToken);
  }
}

uint64_t sub_261AECFF8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = -a2;
  }

  else
  {
    ResultToken = type metadata accessor for RemindersInCalendarUtilities.ScheduledRemindersFetchResultToken(0);
    v8 = *(*(ResultToken - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, ResultToken);
  }

  return result;
}

uint64_t *_s29ScheduledRemindersFetchResultV12ReloadResultVwCP_0(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFD104();
  return a1;
}

void **_s9ListColorVwCP_0(void **a1, void **a2)
{
  v3 = *a2;
  *a1 = *a2;
  v4 = v3;
  return a1;
}

void **_s9ListColorVwca_0(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  *a1 = *a2;
  v5 = v4;

  return a1;
}

void **_s9ListColorVwta_0(void **a1, void **a2)
{
  v3 = *a1;
  *a1 = *a2;

  return a1;
}

uint64_t sub_261AED170@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AED1A4@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AED1E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AED2AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AED2D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AED304@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AED388()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261AED580@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AED5AC@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AED5EC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AED6B4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

__n128 sub_261AED6E0@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = a1 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0) + 32);
  result = *v3;
  v5 = *(v3 + 16);
  *a2 = *v3;
  a2[1] = v5;
  return result;
}

__n128 sub_261AED71C(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0) + 32));
  result = *a1;
  v5 = *(a1 + 16);
  *v3 = *a1;
  v3[1] = v5;
  return result;
}

uint64_t sub_261AED758@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  *a2 = *(a1 + *(result + 36));
  return result;
}

uint64_t sub_261AED790(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  *(a2 + *(result + 36)) = v3;
  return result;
}

uint64_t sub_261AED7C4@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  *a2 = *(a1 + *(result + 40));
  return result;
}

uint64_t sub_261AED7FC(char *a1, uint64_t a2)
{
  v3 = *a1;
  result = type metadata accessor for RemindersInCalendarUtilities.ReminderCreationConfiguration(0);
  *(a2 + *(result + 40)) = v3;
  return result;
}

uint64_t sub_261AED830(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = type metadata accessor for RemindersInCalendarEditingReminderProperties(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 20);

    return v10(v11, a2, v9);
  }
}

void *sub_261AED8E8(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *result = a2;
  }

  else
  {
    v7 = type metadata accessor for RemindersInCalendarEditingReminderProperties(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261AED98C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFE794();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_261AEDA48(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_261CFE794();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_261AEDB00()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_261AEDB40()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261AEDB78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD7E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1;
  }

  else
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
    v12 = *(v11 - 8);
    if (*(v12 + 84) != a2)
    {
      v14 = *(a1 + *(a3 + 24));
      if (v14 >= 2)
      {
        return ((v14 + 2147483646) & 0x7FFFFFFF) + 1;
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

uint64_t sub_261AEDCA0(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = sub_261CFD7E4();
  v9 = *(v8 - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = v8;
    v11 = *(v9 + 56);
    v12 = a1;
  }

  else
  {
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDC888, &qword_261D0B198);
    v14 = *(result - 8);
    if (*(v14 + 84) != a3)
    {
      *(a1 + *(a4 + 24)) = a2 + 1;
      return result;
    }

    v10 = result;
    v11 = *(v14 + 56);
    v12 = a1 + *(a4 + 20);
  }

  return v11(v12, a2, a2, v10);
}

double sub_261AEDE44@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFEC24();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AEDE84@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEDEC4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEDF74()
{
  v1 = sub_261CFD7E4();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void *sub_261AEDFFC@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE03C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE07C@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE0BC@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE0FC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE13C@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE228@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE370@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

double sub_261AEE3B0@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFEC24();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_261AEE3F0@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFEC24();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AEE464@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

double sub_261AEE4A4@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFEC24();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AEE4E4@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE524@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE564@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE5A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE5E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE624@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE664@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE6A4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEE6E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

double sub_261AEE724@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFEC24();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AEE764@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEEE68@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEEEA8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEEEE8@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEEF28@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEEF68@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEEFA8@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEEFEC@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

double sub_261AEF02C@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFEC24();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AEF06C@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF0D4@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF13C@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

double sub_261AEF1CC@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFEC24();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AEF20C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF24C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF28C@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF2CC@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF30C@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF34C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF3B4@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF444@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF484@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF4DC@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF51C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF55C@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

double sub_261AEF59C@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFEC24();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AEF5DC@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

double sub_261AEF61C@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFEC24();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AEF65C@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF69C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF800@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF840@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEF880@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEFBC8@<X0>(void *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

void *sub_261AEFC08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFEC24();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEFD10@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for SectionEntity(0) + 28));

  return sub_261CFCDA4();
}

double sub_261AEFD60@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_261AEFDA0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDD9F8;
  return result;
}

uint64_t sub_261AEFDEC(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDD9F8 = v1;
  return result;
}

double sub_261AEFE5C@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AEFE9C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AEFEE0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AEFF0C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AEFF80@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

double sub_261AEFFC0@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_261AF00F4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

double sub_261AF0138@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCA04();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_261AF0178@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCA04();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_261AF01C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_261CFD844();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 24);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_261AF02F0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = sub_261CFD844();
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 24);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

double sub_261AF046C@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AF04D4@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AF0518@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

double sub_261AF0544@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AF060C@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AF064C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AF06B4@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDDD30;
  return result;
}

uint64_t sub_261AF0700(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDDD30 = v1;
  return result;
}

uint64_t sub_261AF0748()
{
  v1 = (type metadata accessor for RemindersInCalendarUtilities.SetReminderDueDateRequest(0) - 8);
  v2 = *(*v1 + 80);
  v3 = (v2 + 56) & ~v2;
  v4 = *(*v1 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 16));

  v5 = v1[7];
  v6 = sub_261CFD4E4();
  (*(*(v6 - 8) + 8))(v0 + v3 + v5, v6);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_261AF085C(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_261CFD4E4();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_261AF0908(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_261CFD4E4();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261AF09AC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AF09D8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AF0A4C@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_261AF0AB4@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AF0AF4@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

double sub_261AF0B84@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

double sub_261AF0BC4@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AF0C04@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

double sub_261AF0C6C@<D0>(_OWORD *a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_261AF0CD4@<D0>(uint64_t a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void *sub_261AF0D1C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AF0D5C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AF0DF4@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AF0E34@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AF0EC4@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

id sub_261AF0F90@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v2 = *a1;
  *a2 = *a1;
  return v2;
}

uint64_t sub_261AF0FC0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_261AF1008()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_261AF1048()
{
  v1 = sub_261CFE724();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 65) & ~v3;
  v5 = *(v2 + 64);
  __swift_destroy_boxed_opaque_existential_0((v0 + 24));
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_261AF1130@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AF115C@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AF11E0@<X0>(_BYTE *a1@<X8>)
{
  result = swift_beginAccess();
  *a1 = byte_27FEDE020;
  return result;
}

uint64_t sub_261AF122C(char *a1)
{
  v1 = *a1;
  result = swift_beginAccess();
  byte_27FEDE020 = v1;
  return result;
}

double sub_261AF1274@<D0>(uint64_t a1@<X8>)
{
  sub_261CFCBB4();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

void *sub_261AF12BC@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AF1390@<X0>(void *a1@<X8>)
{
  type metadata accessor for GroupEntity(0);
  result = sub_261CFCA04();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_261AF13E8@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for GroupEntity(0);
  result = sub_261CFD2D4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AF1494(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppEntityID(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_261AF1540(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppEntityID(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t *_s22DeleteRemindersRequestVwCP_0(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  sub_261CFD104();
  v4 = v3;
  return a1;
}

uint64_t _s6ListIDOwCP_0(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  sub_261CCFD68(*a2, v4);
  *a1 = v3;
  *(a1 + 8) = v4;
  return a1;
}

void *_s12ReminderLiteVwCP_0(void *a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  *a1 = *a2;
  a1[1] = v4;
  v5 = v3;
  sub_261CFD104();
  return a1;
}

uint64_t sub_261AF16D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_261CFD7E4();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_261AF1794(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_261CFD7E4();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

void *sub_261AF18D4@<X0>(void *a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

void *sub_261AF19C4@<X0>(void *a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

void *sub_261AF1A3C@<X0>(void *a1@<X8>)
{
  type metadata accessor for ReminderEntity(0);
  result = sub_261CFCA04();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

void *sub_261AF1ADC@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ReminderEntity(0);
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

double sub_261AF1CF0@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFCA04();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  return result;
}

double sub_261AF1DE0@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for ReminderEntity(0);
  sub_261CFCA04();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AF1E38@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ReminderEntity(0);
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

void *sub_261AF1EDC@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for ReminderEntity(0);
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

void *sub_261AF1FD4@<X0>(void *a1@<X8>)
{
  type metadata accessor for ReminderEntity(0);
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

void *sub_261AF202C@<X0>(void *a1@<X8>)
{
  type metadata accessor for ReminderEntity(0);
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

void *sub_261AF2084@<X0>(void *a1@<X8>)
{
  type metadata accessor for ReminderEntity(0);
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

uint64_t sub_261AF20E4(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for AppEntityID(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 40);

    return v9(v10, a2, v8);
  }
}

void *sub_261AF2190(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for AppEntityID(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 40);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_261AF2240@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AF226C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AF22A8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AF22D4@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AF2328@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AF23B4@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(a1 + *(type metadata accessor for ListEntity(0) + 60));

  return sub_261CFCDA4();
}

uint64_t sub_261AF23FC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AF2450@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AF2518@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AF2544(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 2147483646)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    v5 = v4 - 1;
    if (v5 < 0)
    {
      v5 = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    v10 = *(v9 - 8);
    if (*(v10 + 84) == a2)
    {
      v11 = v9;
      v12 = *(v10 + 48);
      v13 = a1 + *(a3 + 24);

      return v12(v13, a2, v11);
    }

    else
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
      v15 = *(*(v14 - 8) + 48);
      v16 = a1 + *(a3 + 32);

      return v15(v16, a2, v14);
    }
  }
}

uint64_t sub_261AF268C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 2147483646)
  {
    *(result + 8) = a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 24);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDB238, &unk_261D056F0);
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 32);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_261AF27C8@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AF281C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AF285C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AF2968@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AF2994@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AF29C0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AF2A08@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AF2A48@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

void *sub_261AF2A88@<X0>(void *a1@<X8>)
{
  result = sub_261CFCBB4();
  *a1 = v3;
  return result;
}

uint64_t sub_261AF2B94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

uint64_t sub_261AF2BC0@<X0>(uint64_t *a1@<X8>)
{
  result = sub_261CFCBD4();
  *a1 = result;
  return result;
}

void *sub_261AF2C94@<X0>(void *a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  a1[1] = v4;
  return result;
}

double sub_261AF2D34@<D0>(_OWORD *a1@<X8>)
{
  type metadata accessor for SectionEntity(0);
  sub_261CFD2D4();
  result = *&v3;
  *a1 = v3;
  return result;
}

void *sub_261AF2D8C@<X0>(_BYTE *a1@<X8>)
{
  type metadata accessor for SectionEntity(0);
  result = sub_261CFD2D4();
  *a1 = v3;
  return result;
}

void *sub_261AF2E78@<X0>(void *a1@<X8>)
{
  type metadata accessor for SectionEntity(0);
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

uint64_t sub_261AF2ED8(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SectionEntityID(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_261AF2F84(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SectionEntityID(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void *sub_261AF3044@<X0>(_BYTE *a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

void *sub_261AF3084@<X0>(void *a1@<X8>)
{
  result = sub_261CFCA04();
  *a1 = v3;
  return result;
}

uint64_t sub_261AF30D4(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return sub_261CFCDA4();
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for ListBadgeEntity(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;
  sub_261CFCDA4();
  return v2 + 16;
}

uint64_t *_s29ScheduledRemindersFetchResultV12ReloadResultVwca(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;
  sub_261CFD104();

  return a1;
}

uint64_t *_s29ScheduledRemindersFetchResultV12ReloadResultVwta(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t sub_261AF31F8(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_261AF3228(uint64_t a1, int a2)
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

uint64_t sub_261AF3248(uint64_t result, int a2, int a3)
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

void sub_261AF32B0(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t sub_261AF338C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v19 - v12;
  v14 = sub_261CFFD44();
  (*(*(v14 - 8) + 56))(v13, 1, 1, v14);
  sub_261CFFD24();
  swift_unknownObjectRetain();
  v15 = sub_261CFFD14();
  v16 = swift_allocObject();
  v17 = MEMORY[0x277D85700];
  *(v16 + 16) = v15;
  *(v16 + 24) = v17;
  *(v16 + 32) = a2;
  *(v16 + 40) = a3;
  *(v16 + 48) = v7;
  *(v16 + 56) = a1;
  sub_261AF38F0(0, 0, v13, a5, v16);
}

uint64_t sub_261AF34C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v5[2] = sub_261CFFD24();
  v5[3] = sub_261CFFD14();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_261AF358C;

  return sub_261CBFAE0((v5 + 5), v6);
}

uint64_t sub_261AF358C()
{

  v1 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261AF4BD8, v1, v0);
}

uint64_t sub_261AF36C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_261CFFD24();
  v7[3] = sub_261CFFD14();
  v13 = (*(a7 + 88) + **(a7 + 88));
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_261AF358C;

  return v13(v7 + 5, a5, a6, a7);
}

uint64_t sub_261AF3818(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_261AF4BDC;

  return sub_261AF36C8(a1, v6, v7, v8, v9, v4, v5);
}

uint64_t sub_261AF38F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v25 - v10;
  sub_261AF4808(a3, v25 - v10);
  v12 = sub_261CFFD44();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);
  sub_261CFCDA4();
  if (v14 == 1)
  {
    sub_261AE7E50(v11);
  }

  else
  {
    sub_261CFFD34();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_261CFFCF4();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = sub_261CFFAD4() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      sub_261CFCDA4();
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

      sub_261AE7E50(a3);

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

  sub_261AE7E50(a3);
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

uint64_t sub_261AF3BB0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a5;
  v5[2] = sub_261CFFD24();
  v5[3] = sub_261CFFD14();
  v7 = swift_task_alloc();
  v5[4] = v7;
  *v7 = v5;
  v7[1] = sub_261AF3C74;

  return sub_261CBFE90((v5 + 5), v6);
}

uint64_t sub_261AF3C74()
{

  v1 = sub_261CFFCF4();

  return MEMORY[0x2822009F8](sub_261AF3DB0, v1, v0);
}

uint64_t sub_261AF3DB0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_261AF3E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = sub_261CFFD24();
  v7[3] = sub_261CFFD14();
  v13 = (*(a7 + 96) + **(a7 + 96));
  v11 = swift_task_alloc();
  v7[4] = v11;
  *v11 = v7;
  v11[1] = sub_261AF358C;

  return v13(v7 + 5, a5, a6, a7);
}

uint64_t objectdestroyTm()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 57, 7);
}

uint64_t sub_261AF3FA0(uint64_t a1)
{
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_261AF4BDC;

  return sub_261AF3E10(a1, v6, v7, v8, v9, v4, v5);
}

uint64_t dispatch thunk of RemindersInCalendarReminderEditingModuleInterface.commitEditing(allowingUserConfirmation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 88) + **(a4 + 88));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF4BDC;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of RemindersInCalendarReminderEditingModuleInterface.cancelEditing(allowingUserConfirmation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 96) + **(a4 + 96));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = sub_261AF43A8;

  return v11(a1, a2, a3, a4);
}

uint64_t sub_261AF43A8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_261AF4518(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = v5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17 - v10;
  v12 = sub_261CFFD44();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  sub_261CFFD24();
  sub_261CFCDA4();
  v13 = sub_261CFFD14();
  v14 = swift_allocObject();
  v15 = MEMORY[0x277D85700];
  *(v14 + 16) = v13;
  *(v14 + 24) = v15;
  *(v14 + 32) = v7;
  *(v14 + 40) = a1;
  sub_261AF38F0(0, 0, v11, a5, v14);
}

uint64_t sub_261AF4640(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_261AF4BDC;

  return sub_261AF3BB0(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_9Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_261AF4744(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_261AF4BDC;

  return sub_261AF34C8(a1, v4, v5, v6, v7);
}

uint64_t sub_261AF4808(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9EF0, &qword_261D012E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_261AF4878(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = sub_261AF4970;

  return v6(a1);
}

uint64_t sub_261AF4970()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_261AF4A68(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF4BDC;

  return sub_261AF4878(a1, v4);
}

uint64_t sub_261AF4B20(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return sub_261AF4878(a1, v4);
}

uint64_t sub_261AF4BE0()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FED9EF8);
  v1 = __swift_project_value_buffer(v0, qword_27FED9EF8);
  if (qword_280D22888 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D27010);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t ListEntity.ListKind.rawValue.getter()
{
  if (*v0)
  {
    return 0x6D536D6F74737563;
  }

  else
  {
    return 1953720684;
  }
}

uint64_t sub_261AF4D00(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6D536D6F74737563;
  }

  else
  {
    v3 = 1953720684;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xEF7473694C747261;
  }

  if (*a2)
  {
    v5 = 0x6D536D6F74737563;
  }

  else
  {
    v5 = 1953720684;
  }

  if (*a2)
  {
    v6 = 0xEF7473694C747261;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_261D00614();
  }

  return v8 & 1;
}

uint64_t sub_261AF4DAC()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261AF4E34(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261AF4EA8(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261AF4F38(uint64_t *a1@<X8>)
{
  v2 = 1953720684;
  if (*v1)
  {
    v2 = 0x6D536D6F74737563;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEF7473694C747261;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261AF4F8C()
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
  __swift_allocate_value_buffer(v10, qword_27FED9F10);
  __swift_project_value_buffer(v10, qword_27FED9F10);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6C4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t sub_261AF528C()
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA140, &qword_261D021E8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2C0, &unk_261D021F0);
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
  v21 = sub_261C39864(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FED9F28 = v21;
  return result;
}

uint64_t ListEntity.ListLayout.rawValue.getter()
{
  if (*v0)
  {
    return 0x736E6D756C6F63;
  }

  else
  {
    return 1953720684;
  }
}

uint64_t sub_261AF585C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x736E6D756C6F63;
  }

  else
  {
    v3 = 1953720684;
  }

  if (v2)
  {
    v4 = 0xE400000000000000;
  }

  else
  {
    v4 = 0xE700000000000000;
  }

  if (*a2)
  {
    v5 = 0x736E6D756C6F63;
  }

  else
  {
    v5 = 1953720684;
  }

  if (*a2)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_261D00614();
  }

  return v8 & 1;
}

uint64_t sub_261AF58FC()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261AF5978(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261AF59E0(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

void sub_261AF5A64(uint64_t *a1@<X8>)
{
  v2 = 1953720684;
  if (*v1)
  {
    v2 = 0x736E6D756C6F63;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xE700000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261AF5AD0(uint64_t a1)
{
  v2 = sub_261AFF648();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261AF5B40(uint64_t a1)
{
  v2 = sub_261AFFB04();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_261AF5B8C()
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
  __swift_allocate_value_buffer(v10, qword_27FED9F30);
  __swift_project_value_buffer(v10, qword_27FED9F30);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6C4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t (*static ListEntity.ListType.typeDisplayRepresentation.modify(uint64_t a1))()
{
  if (qword_27FED97D8 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFD234();
  __swift_project_value_buffer(v1, qword_27FED9F30);
  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_261AF5F48()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v0 - 8);
  v35 = &v24 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v34 = &v24 - v3;
  v31 = sub_261CFD674();
  v4 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v36 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_261CFD884();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_261CFFA44();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFD6A4();
  v24 = v8;
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA138, &qword_261D021D8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2B0, &qword_261D021E0);
  v37 = v9;
  v10 = *(v9 - 8);
  v33 = *(v10 + 72);
  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = swift_allocObject();
  v28 = v12;
  *(v12 + 16) = xmmword_261D01400;
  v27 = *(v9 + 48);
  *(v12 + v11) = 0;
  v13 = v12 + v11;
  sub_261CFF9B4();
  sub_261CFD874();
  v29 = *MEMORY[0x277CC9110];
  v14 = *(v4 + 104);
  v30 = v4 + 104;
  v32 = v14;
  v14(v36);
  sub_261CFD6C4();
  v15 = *(v38 + 56);
  v38 += 56;
  v25 = v15;
  v16 = v34;
  v15(v34, 1, 1, v8);
  v17 = sub_261CFD074();
  v18 = *(*(v17 - 8) + 56);
  v19 = v35;
  v18(v35, 1, 1, v17);
  v26 = v13;
  v20 = v19;
  sub_261CFD0A4();
  v21 = (v13 + v33);
  v33 = *(v37 + 48);
  *v21 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v32(v36, v29, v31);
  sub_261CFD6C4();
  v25(v16, 1, 1, v24);
  v18(v20, 1, 1, v17);
  sub_261CFD0A4();
  v22 = sub_261C39A4C(v28);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FED9F48 = v22;
  return result;
}

uint64_t sub_261AF64E0@<X0>(char *a4@<X8>)
{
  v5 = sub_261D00554();

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *a4 = v7;
  return result;
}

uint64_t ListEntity.ListType.rawValue.getter()
{
  if (*v0)
  {
    return 0x65697265636F7267;
  }

  else
  {
    return 0x647261646E617473;
  }
}

uint64_t sub_261AF658C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x65697265636F7267;
  }

  else
  {
    v3 = 0x647261646E617473;
  }

  if (v2)
  {
    v4 = 0xE800000000000000;
  }

  else
  {
    v4 = 0xE900000000000073;
  }

  if (*a2)
  {
    v5 = 0x65697265636F7267;
  }

  else
  {
    v5 = 0x647261646E617473;
  }

  if (*a2)
  {
    v6 = 0xE900000000000073;
  }

  else
  {
    v6 = 0xE800000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_261D00614();
  }

  return v8 & 1;
}

uint64_t sub_261AF6638()
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261AF66C0(uint64_t a1)
{
  sub_261CFFB14();
}

uint64_t sub_261AF6734(uint64_t a1)
{
  sub_261D006C4();
  sub_261CFFB14();

  return sub_261D006F4();
}

uint64_t sub_261AF67C4@<X0>(char *a3@<X8>)
{
  v4 = sub_261D00554();

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

void sub_261AF6820(uint64_t *a1@<X8>)
{
  v2 = 0x647261646E617473;
  if (*v1)
  {
    v2 = 0x65697265636F7267;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000073;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_261AF6898(uint64_t a1)
{
  v2 = sub_261AFF54C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261AF6908(uint64_t a1)
{
  v2 = sub_261AFFF48();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t sub_261AF6954()
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
  __swift_allocate_value_buffer(v10, qword_27FED9F50);
  __swift_project_value_buffer(v10, qword_27FED9F50);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v3 + 104))(v5, *MEMORY[0x277CC9110], v12[0]);
  sub_261CFD6C4();
  (*(v9 + 56))(v2, 1, 1, v8);
  return sub_261CFD224();
}

uint64_t sub_261AF6C54@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_261CFD234();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_261AF6CEC()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  MEMORY[0x28223BE20](v0 - 8);
  v99 = v72 - v1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v2 - 8);
  v100 = v72 - v3;
  v4 = sub_261CFD674();
  v82 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = v72 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_261CFD884();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = sub_261CFFA44();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_261CFD6A4();
  v91 = v9;
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v95 = v72 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA128, &qword_261D021C0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDD2A0, &qword_261D021C8);
  v98 = v12;
  v13 = *(v12 - 8);
  v84 = *(v13 + 72);
  v14 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v15 = swift_allocObject();
  v77 = v15;
  *(v15 + 16) = xmmword_261D01410;
  v96 = v15 + v14;
  v78 = *(v12 + 48);
  *(v15 + v14) = 0;
  sub_261CFF9B4();
  sub_261CFD874();
  v81 = *MEMORY[0x277CC9110];
  v16 = v82 + 104;
  v17 = *(v82 + 104);
  v17(v6);
  sub_261CFD6C4();
  v89 = *(v10 + 56);
  v89(v100, 1, 1, v9);
  v94 = sub_261CFD074();
  v18 = *(v94 - 8);
  v88 = *(v18 + 56);
  v93 = v18 + 56;
  v88(v99, 1, 1, v94);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA130, &qword_261D021D0);
  v87 = v10 + 56;
  v19 = *(v10 + 72);
  v90 = *(v10 + 80);
  v85 = (v90 + 32) & ~v90;
  v97 = 2 * v19;
  v83 = 3 * v19;
  v86 = v19;
  v20 = swift_allocObject();
  v80 = xmmword_261D01420;
  v76 = v20;
  *(v20 + 16) = xmmword_261D01420;
  sub_261CFF9B4();
  sub_261CFD874();
  v21 = v81;
  v22 = v4;
  v23 = v4;
  v24 = v16;
  (v17)(v6, v81, v23);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v79 = v22;
  (v17)(v6, v21, v22);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v25 = v21;
  (v17)(v6, v21, v22);
  v82 = v24;
  v26 = v17;
  sub_261CFD6C4();
  v27 = v96;
  v29 = v99;
  v28 = v100;
  sub_261CFD094();
  v76 = v27 + v84;
  v78 = *(v98 + 48);
  *v76 = 1;
  sub_261CFF9B4();
  sub_261CFD874();
  v30 = v79;
  v26(v6, v25, v79);
  v31 = v26;
  sub_261CFD6C4();
  v89(v28, 1, 1, v91);
  v88(v29, 1, 1, v94);
  *(swift_allocObject() + 16) = xmmword_261D01400;
  sub_261CFF9B4();
  sub_261CFD874();
  v32 = v81;
  v33 = v30;
  v31(v6, v81, v30);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v6, v32, v30);
  sub_261CFD6C4();
  v34 = v99;
  v35 = v100;
  sub_261CFD094();
  v78 = 2 * v84;
  v73 = v96 + 2 * v84;
  v74 = *(v98 + 48);
  *v73 = 2;
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v6, v81, v33);
  sub_261CFD6C4();
  v89(v35, 1, 1, v91);
  v88(v34, 1, 1, v94);
  v76 = v85 + 4 * v86;
  v36 = swift_allocObject();
  v75 = xmmword_261D01430;
  v72[1] = v36;
  *(v36 + 16) = xmmword_261D01430;
  sub_261CFF9B4();
  sub_261CFD874();
  v37 = v81;
  v38 = v79;
  v31(v6, v81, v79);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v6, v37, v38);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v6, v37, v38);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v6, v37, v38);
  sub_261CFD6C4();
  v40 = v99;
  v39 = v100;
  sub_261CFD094();
  v74 = v96 + v78 + v84;
  v78 = *(v98 + 48);
  *v74 = 3;
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v6, v37, v38);
  sub_261CFD6C4();
  v89(v39, 1, 1, v91);
  v88(v40, 1, 1, v94);
  v76 = swift_allocObject();
  *(v76 + 16) = v75;
  sub_261CFF9B4();
  sub_261CFD874();
  v41 = v79;
  v31(v6, v37, v79);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v6, v37, v41);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v6, v37, v41);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v31(v6, v37, v41);
  v42 = v31;
  sub_261CFD6C4();
  v43 = v99;
  v44 = v100;
  sub_261CFD094();
  v78 = 4 * v84;
  *&v75 = v96 + 4 * v84;
  v76 = *(v98 + 48);
  *v75 = 4;
  sub_261CFF9B4();
  sub_261CFD874();
  v45 = v37;
  v46 = v79;
  v42(v6, v45, v79);
  sub_261CFD6C4();
  v89(v44, 1, 1, v91);
  v88(v43, 1, 1, v94);
  v74 = swift_allocObject();
  *(v74 + 16) = v80;
  sub_261CFF9B4();
  sub_261CFD874();
  v47 = v81;
  v48 = v46;
  v42(v6, v81, v46);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v49 = v46;
  v50 = v42;
  v42(v6, v47, v49);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v51 = v47;
  v50(v6, v47, v48);
  v52 = v50;
  v72[0] = v50;
  sub_261CFD6C4();
  v54 = v99;
  v53 = v100;
  sub_261CFD094();
  v76 = v96 + v78 + v84;
  v78 = *(v98 + 48);
  *v76 = 5;
  sub_261CFF9B4();
  sub_261CFD874();
  v52(v6, v51, v48);
  sub_261CFD6C4();
  v89(v53, 1, 1, v91);
  v88(v54, 1, 1, v94);
  *&v75 = swift_allocObject();
  *(v75 + 16) = v80;
  sub_261CFF9B4();
  sub_261CFD874();
  v55 = v72[0];
  (v72[0])(v6, v51, v48);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v55(v6, v51, v48);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v55(v6, v51, v48);
  sub_261CFD6C4();
  v56 = v99;
  v57 = v100;
  sub_261CFD094();
  v76 = v96 + 6 * v84;
  v78 = *(v98 + 48);
  *v76 = 7;
  sub_261CFF9B4();
  sub_261CFD874();
  v55(v6, v51, v48);
  sub_261CFD6C4();
  v89(v57, 1, 1, v91);
  v88(v56, 1, 1, v94);
  *&v75 = swift_allocObject();
  *(v75 + 16) = v80;
  sub_261CFF9B4();
  sub_261CFD874();
  v55(v6, v51, v48);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v55(v6, v51, v48);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v55(v6, v51, v48);
  sub_261CFD6C4();
  v59 = v99;
  v58 = v100;
  sub_261CFD094();
  v78 = 8 * v84;
  *&v75 = v96 + 7 * v84;
  v76 = *(v98 + 48);
  *v75 = 6;
  sub_261CFF9B4();
  sub_261CFD874();
  v55(v6, v51, v48);
  sub_261CFD6C4();
  v89(v58, 1, 1, v91);
  v88(v59, 1, 1, v94);
  v74 = swift_allocObject();
  *(v74 + 16) = v80;
  sub_261CFF9B4();
  sub_261CFD874();
  v60 = v81;
  v61 = v79;
  v55(v6, v81, v79);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v62 = v55;
  v55(v6, v60, v61);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v63 = v61;
  v55(v6, v60, v61);
  sub_261CFD6C4();
  v64 = v99;
  v65 = v100;
  sub_261CFD094();
  v74 = v96 + v78;
  *&v75 = *(v98 + 48);
  *v74 = 8;
  sub_261CFF9B4();
  sub_261CFD874();
  v62(v6, v60, v63);
  sub_261CFD6C4();
  v89(v65, 1, 1, v91);
  v88(v64, 1, 1, v94);
  v73 = swift_allocObject();
  *(v73 + 16) = v80;
  v76 = 0xD000000000000011;
  sub_261CFF9B4();
  sub_261CFD874();
  v62(v6, v60, v63);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v62(v6, v60, v63);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v62(v6, v60, v63);
  sub_261CFD6C4();
  v67 = v99;
  v66 = v100;
  sub_261CFD094();
  v78 += v96 + v84;
  v84 = *(v98 + 48);
  *v78 = 9;
  sub_261CFF9B4();
  sub_261CFD874();
  v68 = v81;
  v62(v6, v81, v63);
  sub_261CFD6C4();
  v89(v66, 1, 1, v91);
  v88(v67, 1, 1, v94);
  *(swift_allocObject() + 16) = v80;
  sub_261CFF9B4();
  sub_261CFD874();
  v69 = v79;
  v62(v6, v68, v79);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v62(v6, v68, v69);
  sub_261CFD6C4();
  sub_261CFF9B4();
  sub_261CFD874();
  v62(v6, v68, v69);
  sub_261CFD6C4();
  sub_261CFD094();
  v70 = sub_261C39C34(v77);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  qword_27FED9F68 = v70;
  return result;
}

uint64_t sub_261AF8CFC(void *a1, uint64_t *a2, uint64_t a3)
{
  if (*a1 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return sub_261CFD104();
}

RemindersAppIntents::ListEntity::SortingStyle_optional __swiftcall ListEntity.SortingStyle.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_261D00554();

  v5 = 10;
  if (v3 < 0xA)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t ListEntity.SortingStyle.rawValue.getter()
{
  v1 = *v0;
  if (v1 > 4)
  {
    v6 = 0x637341656C746974;
    if (v1 != 8)
    {
      v6 = 0x736544656C746974;
    }

    if (v1 == 7)
    {
      v6 = 0xD000000000000017;
    }

    v7 = 0xD000000000000014;
    if (v1 != 5)
    {
      v7 = 0xD000000000000017;
    }

    if (*v0 <= 6u)
    {
      return v7;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v2 = 0x746C7561666564;
    v3 = 0xD000000000000016;
    v4 = 0xD000000000000016;
    if (v1 != 3)
    {
      v4 = 0xD000000000000013;
    }

    if (v1 != 2)
    {
      v3 = v4;
    }

    if (*v0)
    {
      v2 = 0x6C61756E616DLL;
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
}

uint64_t sub_261AF8F2C()
{
  v1 = *v0;
  sub_261D006C4();
  sub_261C27448(v3, v1);
  return sub_261D006F4();
}

uint64_t sub_261AF8F7C(uint64_t a1)
{
  v2 = *v1;
  sub_261D006C4();
  sub_261C27448(v4, v2);
  return sub_261D006F4();
}

uint64_t sub_261AF8FCC@<X0>(uint64_t *a1@<X8>)
{
  result = ListEntity.SortingStyle.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_261AF907C@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_261CFD234();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

uint64_t sub_261AF9118(uint64_t a1)
{
  v2 = sub_261AFF69C();

  return MEMORY[0x28210B458](a1, v2);
}

uint64_t sub_261AF9188(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, uint64_t a5)
{
  if (*a3 == -1)
  {
  }

  else
  {
    swift_once();
  }

  return sub_261CFD104();
}

uint64_t sub_261AF91EC(uint64_t a1)
{
  v2 = sub_261B0038C();

  return MEMORY[0x28210C300](a1, v2);
}

uint64_t ListEntity.id.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ListEntity(0) + 20);

  return sub_261AF92C8(a1, v3);
}

uint64_t sub_261AF92C8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AppEntityID(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t ListEntity.name.getter()
{
  type metadata accessor for ListEntity(0);
  sub_261CFCA04();
  return v1;
}

uint64_t sub_261AF93B8(uint64_t *a1)
{
  type metadata accessor for ListEntity(0);
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ListEntity.name.modify(uint64_t *a1))()
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
  type metadata accessor for ListEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

uint64_t ListEntity.nameUpdatableProperty.getter()
{
  type metadata accessor for ListEntity(0);

  return sub_261CFCDA4();
}

uint64_t ListEntity.$color.getter()
{
  type metadata accessor for ListEntity(0);

  return sub_261CFCDA4();
}

double sub_261AF95B4@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ListEntity(0);
  sub_261CFD2D4();
  *a1 = v3;
  *(a1 + 16) = v4;
  result = *&v5;
  *(a1 + 32) = v5;
  *(a1 + 48) = v6;
  return result;
}

uint64_t sub_261AF9618(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a1[5];
  v7 = a1[6];
  type metadata accessor for ListEntity(0);
  sub_261AF9844(v2, v1, v3, v4, v5, v6, v7);
  return sub_261CFD2E4();
}

void (*ListEntity.color.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  *a1 = v3;
  *(v3 + 112) = *(v1 + *(type metadata accessor for ListEntity(0) + 32));
  sub_261CFD2D4();
  return sub_261AF97AC;
}

void sub_261AF97AC(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[7] = v4;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  v10 = v3[6];
  v3[8] = v5;
  v3[9] = v6;
  v3[10] = v7;
  v3[11] = v8;
  v3[12] = v9;
  v3[13] = v10;
  if (a2)
  {
    sub_261AF9844(v4, v5, v6, v7, v8, v9, v10);
    sub_261CFD2E4();
    sub_261AF98C8(*v3, v3[1], v3[2], v3[3], v3[4], v3[5], v3[6]);
  }

  else
  {
    sub_261CFD2E4();
  }

  free(v3);
}

void sub_261AF9844(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
    sub_261CFD104();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();
    sub_261CFCDA4();

    sub_261CFCDA4();
  }
}

void sub_261AF98C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2)
  {
  }
}

uint64_t ListEntity.$badge.getter()
{
  type metadata accessor for ListEntity(0);

  return sub_261CFCDA4();
}

double sub_261AF99B8@<D0>(uint64_t a1@<X8>)
{
  type metadata accessor for ListEntity(0);
  sub_261CFD2D4();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_261AF9A14(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  type metadata accessor for ListEntity(0);
  sub_261AF9C0C(v2, v1, v3, v4, v5);
  return sub_261CFD2E4();
}

void (*ListEntity.badge.modify(uint64_t *a1))(uint64_t **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = *(v1 + *(type metadata accessor for ListEntity(0) + 36));
  sub_261CFD2D4();
  return sub_261AF9B80;
}

void sub_261AF9B80(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = **a1;
  v5 = v3[1];
  v3[5] = v4;
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v3[6] = v5;
  v3[7] = v6;
  v3[8] = v7;
  v3[9] = v8;
  if (a2)
  {
    sub_261AF9C0C(v4, v5, v6, v7, v8);
    sub_261CFD2E4();
    sub_261AF9C70(*v3, v3[1], v3[2], v3[3], v3[4]);
  }

  else
  {
    sub_261CFD2E4();
  }

  free(v3);
}

void sub_261AF9C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    sub_261CFCDA4();
    sub_261CFD104();
    sub_261CFCDA4();

    sub_261CFCDA4();
  }
}

void sub_261AF9C70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
  }
}

uint64_t ListEntity.$parent.getter()
{
  type metadata accessor for ListEntity(0);

  return sub_261CFCDA4();
}

uint64_t sub_261AF9D40(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v3 = MEMORY[0x28223BE20](v2 - 8);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = &v9 - v6;
  sub_261AFB668(a1, &v9 - v6, &unk_27FEDD950, &unk_261D01440);
  type metadata accessor for ListEntity(0);
  sub_261AFB668(v7, v5, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  return sub_261AE6A40(v7, &unk_27FEDD950, &unk_261D01440);
}

uint64_t ListEntity.parent.setter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v6 - v3;
  type metadata accessor for ListEntity(0);
  sub_261AFB668(a1, v4, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  return sub_261AE6A40(a1, &unk_27FEDD950, &unk_261D01440);
}

void (*ListEntity.parent.modify(void **a1))(uint64_t a1, char a2)
{
  v3 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440) - 8) + 64);
  if (MEMORY[0x277D84FD8])
  {
    *a1 = swift_coroFrameAlloc();
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    *a1 = malloc(v3);
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  a1[3] = *(v1 + *(type metadata accessor for ListEntity(0) + 40));
  sub_261CFD2D4();
  return sub_261AF9FEC;
}

void sub_261AF9FEC(uint64_t a1, char a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  sub_261AFB668(v5, v4, &unk_27FEDD950, &unk_261D01440);
  v6 = *a1;
  if (a2)
  {
    sub_261AFB668(v4, v6, &unk_27FEDD950, &unk_261D01440);
    sub_261CFD2E4();
    sub_261AE6A40(v4, &unk_27FEDD950, &unk_261D01440);
  }

  else
  {
    sub_261CFD2E4();
  }

  sub_261AE6A40(v5, &unk_27FEDD950, &unk_261D01440);
  free(v5);
  free(v4);

  free(v6);
}

uint64_t ListEntity.participants.getter()
{
  type metadata accessor for ListEntity(0);
  sub_261CFCA04();
  return v1;
}

uint64_t sub_261AFA110(uint64_t *a1)
{
  type metadata accessor for ListEntity(0);
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ListEntity.participants.modify(uint64_t *a1))()
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
  type metadata accessor for ListEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261AFA230;
}

uint64_t ListEntity.sections.getter()
{
  type metadata accessor for ListEntity(0);
  sub_261CFCA04();
  return v1;
}

uint64_t sub_261AFA2A4(uint64_t *a1)
{
  type metadata accessor for ListEntity(0);
  sub_261CFD104();
  return sub_261CFCA14();
}

uint64_t (*ListEntity.sections.modify(uint64_t *a1))()
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
  type metadata accessor for ListEntity(0);
  *(v3 + 32) = sub_261CFC9F4();
  return sub_261B02064;
}

void sub_261AFA3C4(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t ListEntity.$isPinned.getter()
{
  type metadata accessor for ListEntity(0);

  return sub_261CFCDA4();
}

uint64_t ListEntity.isPinned.getter()
{
  type metadata accessor for ListEntity(0);
  sub_261CFD2D4();
  return v1;
}

uint64_t (*ListEntity.isPinned.modify(void *a1))(uint64_t a1)
{
  *a1 = *(v1 + *(type metadata accessor for ListEntity(0) + 52));
  sub_261CFD2D4();
  return sub_261B02088;
}

uint64_t ListEntity.$showsCompleted.getter()
{
  type metadata accessor for ListEntity(0);

  return sub_261CFCDA4();
}

uint64_t ListEntity.showsCompleted.getter()
{
  type metadata accessor for ListEntity(0);
  sub_261CFD2D4();
  return v1;
}

uint64_t (*ListEntity.showsCompleted.modify(void *a1))(uint64_t a1)
{
  *a1 = *(v1 + *(type metadata accessor for ListEntity(0) + 56));
  sub_261CFD2D4();
  return sub_261B02088;
}

uint64_t ListEntity.$autoCategorize.getter()
{
  type metadata accessor for ListEntity(0);

  return sub_261CFCDA4();
}

uint64_t ListEntity.autoCategorize.getter()
{
  type metadata accessor for ListEntity(0);
  sub_261CFD2D4();
  return v1;
}

uint64_t (*ListEntity.autoCategorize.modify(void *a1))(uint64_t a1)
{
  *a1 = *(v1 + *(type metadata accessor for ListEntity(0) + 60));
  sub_261CFD2D4();
  return sub_261B02088;
}

uint64_t ListEntity.$listLayout.getter()
{
  type metadata accessor for ListEntity(0);

  return sub_261CFCDA4();
}

uint64_t (*ListEntity.listLayout.modify(void *a1))(uint64_t a1)
{
  *a1 = *(v1 + *(type metadata accessor for ListEntity(0) + 64));
  sub_261CFD2D4();
  return sub_261AFA8A8;
}

uint64_t ListEntity.$sortingStyle.getter()
{
  type metadata accessor for ListEntity(0);

  return sub_261CFCDA4();
}

uint64_t (*ListEntity.sortingStyle.modify(void *a1))(uint64_t a1)
{
  *a1 = *(v1 + *(type metadata accessor for ListEntity(0) + 68));
  sub_261CFD2D4();
  return sub_261B02088;
}

uint64_t ListEntity.$listType.getter()
{
  type metadata accessor for ListEntity(0);

  return sub_261CFCDA4();
}

uint64_t (*ListEntity.listType.modify(void *a1))(uint64_t a1)
{
  *a1 = *(v1 + *(type metadata accessor for ListEntity(0) + 72));
  sub_261CFD2D4();
  return sub_261B02088;
}

uint64_t sub_261AFAAFC()
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
  __swift_allocate_value_buffer(v12, qword_27FED9F70);
  v21 = __swift_project_value_buffer(v12, qword_27FED9F70);
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

uint64_t sub_261AFAFB4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_261CFD234();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t sub_261AFB080(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (*a2 != -1)
  {
    swift_once();
  }

  v6 = sub_261CFD234();
  v7 = __swift_project_value_buffer(v6, a3);
  swift_beginAccess();
  v8 = *(v6 - 8);
  (*(v8 + 24))(v7, a1, v6);
  swift_endAccess();
  return (*(v8 + 8))(a1, v6);
}

uint64_t (*static ListEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FED97F8 != -1)
  {
    swift_once();
  }

  v1 = sub_261CFD234();
  __swift_project_value_buffer(v1, qword_27FED9F70);
  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t sub_261AFB1F4@<X0>(void *a1@<X3>, uint64_t a2@<X4>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_261CFD234();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t sub_261AFB2A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  if (*a5 != -1)
  {
    swift_once();
  }

  v9 = sub_261CFD234();
  v10 = __swift_project_value_buffer(v9, a6);
  swift_beginAccess();
  (*(*(v9 - 8) + 24))(v10, a1, v9);
  return swift_endAccess();
}

uint64_t ListEntity.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v20 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  MEMORY[0x28223BE20](v1 - 8);
  v19 = &v17 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v4 = MEMORY[0x28223BE20](v3 - 8);
  v18 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v17 - v6;
  v8 = sub_261CFFA24();
  MEMORY[0x28223BE20](v8 - 8);
  v9 = sub_261CFD6A4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v17 - v14;
  sub_261CFFA14();
  sub_261CFFA04();
  type metadata accessor for ListEntity(0);
  sub_261CFCA04();
  sub_261CFF9E4();

  sub_261CFFA04();
  sub_261CFD684();
  AnyListEntityLazyImage.displayRepresentationImage.getter();
  (*(v10 + 16))(v13, v15, v9);
  (*(v10 + 56))(v19, 1, 1, v9);
  sub_261AFB668(v7, v18, &qword_27FEDA6F0, &qword_261D01450);
  sub_261CFD0A4();
  sub_261AE6A40(v7, &qword_27FEDA6F0, &qword_261D01450);
  return (*(v10 + 8))(v15, v9);
}

uint64_t sub_261AFB668(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t ListEntity.displayRepresentation(with:)(uint64_t a1, uint64_t a2)
{
  v3[5] = a2;
  v3[6] = v2;
  v3[4] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDA6D0, &unk_261D02CD0);
  v3[7] = swift_task_alloc();
  sub_261CFFA24();
  v3[8] = swift_task_alloc();
  v4 = sub_261CFD004();
  v3[9] = v4;
  v3[10] = *(v4 - 8);
  v3[11] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v5 = sub_261CFD6A4();
  v3[14] = v5;
  v3[15] = *(v5 - 8);
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_261AFB8A4, 0, 0);
}

uint64_t sub_261AFB8A4()
{
  v1 = v0[13];
  v3 = v0[10];
  v2 = v0[11];
  v4 = v0[9];
  sub_261CFD664();
  v5 = sub_261CFD074();
  (*(*(v5 - 8) + 56))(v1, 1, 1, v5);
  sub_261CFCFE4();
  sub_261AE694C(&qword_27FED9F90, MEMORY[0x277CBA238], MEMORY[0x277CBA240]);
  v6 = sub_261D001B4();
  v7 = *(v3 + 8);
  v7(v2, v4);
  if (v6)
  {
    v8 = v0[16];
    v24 = v0[17];
    v10 = v0[14];
    v9 = v0[15];
    sub_261CFFA14();
    sub_261CFFA04();
    type metadata accessor for ListEntity(0);
    sub_261CFCA04();
    sub_261CFF9E4();

    sub_261CFFA04();
    sub_261CFD684();
    (*(v9 + 8))(v24, v10);
    (*(v9 + 32))(v24, v8, v10);
  }

  v11 = v0[11];
  v12 = v0[9];
  sub_261CFCFF4();
  v13 = sub_261D001B4();
  v7(v11, v12);
  if (v13)
  {
    v15 = v0[12];
    v14 = v0[13];
    type metadata accessor for ListEntity(0);
    AnyListEntityLazyImage.displayRepresentationImage.getter();
    sub_261AE6A40(v14, &qword_27FEDA6F0, &qword_261D01450);
    sub_261AFBC20(v15, v14);
  }

  v16 = v0[17];
  v18 = v0[14];
  v17 = v0[15];
  v19 = v0[12];
  v20 = v0[13];
  v21 = v0[7];
  (*(v17 + 16))(v0[16], v16, v18);
  (*(v17 + 56))(v21, 1, 1, v18);
  sub_261AFB668(v20, v19, &qword_27FEDA6F0, &qword_261D01450);
  sub_261CFD0A4();
  sub_261AE6A40(v20, &qword_27FEDA6F0, &qword_261D01450);
  (*(v17 + 8))(v16, v18);

  v22 = v0[1];

  return v22();
}

uint64_t sub_261AFBC20(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA6F0, &qword_261D01450);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t ListEntity.listKind.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for ListEntity(0);
  *a1 = *(v1 + *(result + 84));
  return result;
}

uint64_t ListEntity.listKind.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for ListEntity(0);
  *(v1 + *(result + 84)) = v2;
  return result;
}

uint64_t ListEntity.init(id:name:listKind:color:badge:parent:cloudKitContainerProvider:existingShare:participants:sections:isPinned:showsCompleted:autoCategorize:listLayout:sortingStyle:type:supportsListAppearance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 *a17, unsigned __int8 *a18, uint64_t *a19, unsigned __int8 a20)
{
  v143 = a8;
  v144 = a7;
  v141 = a3;
  v140 = a2;
  v157 = a1;
  v124 = a20;
  v134 = a16;
  v133 = a15;
  v132 = a14;
  v139 = a13;
  v137 = a12;
  v138 = a11;
  v142 = a10;
  v163 = a19;
  v161 = a18;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v136 = v110 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v135 = v110 - v27;
  v127 = sub_261CFEC94();
  MEMORY[0x28223BE20](v127);
  v128 = v110 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v162 = sub_261CFD674();
  v29 = *(v162 - 8);
  MEMORY[0x28223BE20](v162);
  v31 = v110 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_261CFD884();
  MEMORY[0x28223BE20](v32 - 8);
  v34 = v110 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_261CFFA44();
  MEMORY[0x28223BE20](v35 - 8);
  v36 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v36 - 8);
  v38 = v110 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = *a4;
  v39 = a5[1];
  v152 = *a5;
  v151 = v39;
  v40 = a5[3];
  v150 = a5[2];
  v149 = v40;
  v41 = a5[5];
  v148 = a5[4];
  v147 = v41;
  v146 = a5[6];
  v42 = *a6;
  v155 = a6[1];
  v156 = v42;
  v43 = a6[3];
  v145 = a6[2];
  v154 = v43;
  v153 = a6[4];
  v125 = *a17;
  v126 = *v161;
  v131 = *v163;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v119 = sub_261AFF54C();
  v130 = sub_261CFCA44();
  *a9 = v130;
  v44 = type metadata accessor for ListEntity(0);
  v45 = *(v44 + 24);
  v46 = v44;
  v160 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v129 = sub_261CFCB24();
  *(a9 + v45) = v129;
  v164 = a9;
  v123 = *(v46 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  v47 = v34;
  sub_261CFD874();
  v49 = (v29 + 104);
  v50 = *(v29 + 104);
  v51 = v31;
  v52 = v31;
  LODWORD(v163) = *MEMORY[0x277CC9110];
  v48 = v163;
  v53 = v162;
  v50(v52, v163, v162);
  v158 = v50;
  v161 = v49;
  sub_261CFD6B4();
  v54 = MEMORY[0x2667199E0](v38, &type metadata for UpdateListNameAppIntent);
  *(a9 + v123) = v54;
  v122 = v160[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v50(v51, v48, v53);
  v159 = v38;
  sub_261CFD6B4();
  v55 = sub_261AFF5A0();
  v123 = MEMORY[0x2667199D0](v38, &type metadata for UpdateListColorAppIntent, v55);
  v56 = v164;
  *(v164 + v122) = v123;
  v57 = v160;
  v120 = v160[9];
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  v58 = v47;
  sub_261CFD874();
  v59 = v163;
  v60 = v162;
  v61 = v158;
  v158(v51, v163, v162);
  v62 = v159;
  sub_261CFD6B4();
  v63 = sub_261AFF5F4();
  v122 = MEMORY[0x2667199D0](v62, &type metadata for UpdateListBadgeAppIntent, v63);
  *(v56 + v120) = v122;
  v118 = v57[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  sub_261CFD874();
  v61(v51, v59, v60);
  v64 = v159;
  sub_261CFD6B4();
  v65 = sub_261AE694C(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  v120 = MEMORY[0x2667199D0](v64, &type metadata for UpdateListParentAppIntent, v65);
  *(v56 + v118) = v120;
  v117 = v57[11];
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v66 = v163;
  v67 = v162;
  v68 = v158;
  v158(v51, v163, v162);
  sub_261CFD6B4();
  v118 = sub_261CFCA84();
  *(v164 + v117) = v118;
  v116 = v57[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v68(v51, v66, v67);
  sub_261CFD6B4();
  sub_261AE694C(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v117 = sub_261CFCA54();
  v69 = v164;
  *(v164 + v116) = v117;
  v70 = v160;
  v115 = v160[13];
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v71 = v163;
  v68(v51, v163, v67);
  v72 = v159;
  sub_261CFD6B4();
  v116 = MEMORY[0x2667199F0](v72, &type metadata for UpdateListIsPinnedAppIntent);
  *(v69 + v115) = v116;
  v114 = v70[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v68(v51, v71, v67);
  v73 = v159;
  sub_261CFD6B4();
  v115 = MEMORY[0x2667199F0](v73, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v69 + v114) = v115;
  v74 = v69;
  v113 = v70[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v75 = v163;
  v76 = v162;
  v68(v51, v163, v162);
  sub_261CFD6B4();
  v114 = MEMORY[0x2667199F0](v73, &type metadata for UpdateListAutoCategorizeAppIntent);
  *(v74 + v113) = v114;
  v112 = v70[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  v110[1] = v58;
  sub_261CFD874();
  v68(v51, v75, v76);
  sub_261CFD6B4();
  v77 = sub_261AFF648();
  v113 = MEMORY[0x2667199C0](v73, &type metadata for UpdateListListLayoutAppIntent, v77);
  v78 = v164;
  *(v164 + v112) = v113;
  v111 = v70[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v79 = v158;
  v158(v51, v163, v76);
  sub_261CFD6B4();
  v80 = sub_261AFF69C();
  v112 = MEMORY[0x2667199C0](v73, &type metadata for UpdateListSortingStyleAppIntent, v80);
  *(v78 + v111) = v112;
  v81 = v70[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  v79(v51, v163, v162);
  sub_261CFD6B4();
  v82 = MEMORY[0x2667199C0](v73, &type metadata for UpdateListTypeAppIntent, v119);
  *(v78 + v81) = v82;
  v83 = (v78 + v70[19]);
  *v83 = 0;
  v83[1] = 0;
  v163 = v83;
  v84 = v70[20];
  v161 = v82;
  v162 = v84;
  *(v78 + v84) = 0;
  sub_261B01DC4(v157, v78 + v70[5], type metadata accessor for AppEntityID);
  v85 = v121;
  *(v78 + v70[21]) = v121;
  if (v85 == 1)
  {
    v86 = sub_261D00614();
  }

  else
  {
    v86 = 1;
  }

  LODWORD(v159) = v124 & 1;
  LODWORD(v158) = v86 & 1;
  type metadata accessor for AnyListEntityLazyImage(0);
  v87 = swift_allocObject();
  v165 = MEMORY[0x277D84F90];
  v88 = v154;
  v89 = v153;
  sub_261AF9C0C(v156, v155, v145, v154, v153);
  v90 = v152;
  v91 = v151;
  v92 = v150;
  sub_261AF9844(v152, v151, v150, v149, v148, v147, v146);
  sub_261AE694C(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0, MEMORY[0x277D83970]);
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v87 + 128) = sub_261CFECA4();
  v93 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v94 = sub_261CFD074();
  (*(*(v94 - 8) + 56))(v87 + v93, 1, 1, v94);
  *(v87 + 16) = v158;
  *(v87 + 17) = *v172;
  *(v87 + 20) = *&v172[3];
  v96 = v155;
  v95 = v156;
  *(v87 + 24) = v156;
  *(v87 + 32) = v96;
  v97 = v145;
  *(v87 + 40) = v145;
  *(v87 + 48) = v88;
  *(v87 + 56) = v89;
  *(v87 + 64) = v90;
  *(v87 + 72) = v91;
  *(v87 + 80) = v92;
  v98 = v149;
  v99 = v148;
  *(v87 + 88) = v149;
  *(v87 + 96) = v99;
  v100 = v147;
  v101 = v146;
  *(v87 + 104) = v147;
  *(v87 + 112) = v101;
  *(v87 + 120) = v159;
  *(v87 + 121) = 1;
  *(v164 + v160[22]) = v87;
  LOBYTE(v165) = v132 & 1;
  sub_261CFD2E4();
  LOBYTE(v165) = v133 & 1;
  sub_261CFD2E4();
  LOBYTE(v165) = v134 & 1;
  sub_261CFD2E4();
  LOBYTE(v165) = v125;
  sub_261CFD2E4();
  LOBYTE(v165) = v126;
  sub_261CFD2E4();
  LOBYTE(v89) = v131;
  LOBYTE(v165) = v131;
  sub_261CFD2E4();
  v165 = v152;
  v166 = v151;
  v167 = v150;
  v168 = v98;
  v169 = v99;
  v170 = v100;
  v171 = v101;
  sub_261CFD2E4();
  v165 = v95;
  v166 = v96;
  v167 = v97;
  v168 = v154;
  v169 = v153;
  sub_261CFD2E4();
  v102 = v144;
  v103 = v135;
  sub_261AFB668(v144, v135, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v103, v136, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v103, &unk_27FEDD950, &unk_261D01440);
  v104 = v143;
  v105 = v163;
  v106 = v142;
  *v163 = v143;
  v105[1] = v106;
  v107 = v138;
  *(v164 + v162) = v138;
  v165 = v137;
  sub_261AF30D4(v104, v106);
  v108 = v107;
  sub_261CFCA14();
  v165 = v139;
  sub_261CFCA14();
  v165 = v140;
  v166 = v141;
  sub_261CFCA14();
  LOBYTE(v165) = v89;
  sub_261CFCA14();

  sub_261AF31F8(v104, v106);
  sub_261AE6A40(v102, &unk_27FEDD950, &unk_261D01440);
  return sub_261B013AC(v157, type metadata accessor for AppEntityID);
}

uint64_t ListEntity.init(id:name:listKind:color:badge:parent:cloudKitContainerProvider:existingShare:participants:sections:isPinned:showsCompleted:autoCategorize:listLayout:sortingStyle:listType:supportsListAppearance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned __int8 *a4@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unsigned __int8 a14, unsigned __int8 a15, unsigned __int8 a16, unsigned __int8 *a17, unsigned __int8 *a18, uint64_t *a19, unsigned __int8 a20)
{
  v140 = a8;
  v143 = a7;
  v142 = a3;
  v141 = a2;
  v151 = a1;
  v122 = a20;
  v133 = a16;
  v132 = a15;
  v131 = a14;
  v139 = a13;
  v138 = a12;
  v137 = a11;
  v136 = a10;
  v160 = a19;
  v158 = a18;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD950, &unk_261D01440);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v135 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v134 = &v107 - v27;
  v125 = sub_261CFEC94();
  MEMORY[0x28223BE20](v125);
  v126 = &v107 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v159 = sub_261CFD674();
  v29 = *(v159 - 8);
  MEMORY[0x28223BE20](v159);
  v31 = &v107 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = sub_261CFD884();
  MEMORY[0x28223BE20](v32 - 8);
  v34 = &v107 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_261CFFA44();
  MEMORY[0x28223BE20](v35 - 8);
  v36 = sub_261CFD6A4();
  MEMORY[0x28223BE20](v36 - 8);
  v38 = &v107 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = *a4;
  v39 = a5[1];
  v127 = *a5;
  v149 = v39;
  v40 = a5[3];
  v148 = a5[2];
  v147 = v40;
  v41 = a5[5];
  v146 = a5[4];
  v145 = v41;
  v144 = a5[6];
  v42 = *a6;
  v154 = a6[1];
  v155 = v42;
  v43 = a6[3];
  v153 = a6[2];
  v128 = v43;
  v121 = a6[4];
  v123 = *a17;
  v124 = *v158;
  v150 = *v160;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FED9F98, &qword_261D01460);
  v116 = sub_261AFF54C();
  v130 = sub_261CFCA44();
  *a9 = v130;
  v44 = type metadata accessor for ListEntity(0);
  v45 = *(v44 + 24);
  v46 = v44;
  v157 = v44;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD8C0, &qword_261D01468);
  v129 = sub_261CFCB24();
  *(a9 + v45) = v129;
  v161 = a9;
  v120 = *(v46 + 28);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB020, &unk_261D01470);
  sub_261CFF9B4();
  v47 = v34;
  sub_261CFD874();
  v49 = (v29 + 104);
  v50 = *(v29 + 104);
  v51 = v31;
  v52 = v31;
  LODWORD(v160) = *MEMORY[0x277CC9110];
  v48 = v160;
  v53 = v159;
  v50(v52, v160, v159);
  v152 = v50;
  v158 = v49;
  sub_261CFD6B4();
  v54 = MEMORY[0x2667199E0](v38, &type metadata for UpdateListNameAppIntent);
  *(a9 + v120) = v54;
  v119 = v157[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD960, &qword_261D047C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v50(v51, v48, v53);
  v156 = v38;
  sub_261CFD6B4();
  v55 = sub_261AFF5A0();
  v120 = MEMORY[0x2667199D0](v38, &type metadata for UpdateListColorAppIntent, v55);
  v56 = v161;
  *(v161 + v119) = v120;
  v57 = v157;
  v117 = v157[9];
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD970, &qword_261D01480);
  sub_261CFF9B4();
  v58 = v47;
  sub_261CFD874();
  v59 = v160;
  v60 = v159;
  v61 = v152;
  v152(v51, v160, v159);
  v62 = v156;
  sub_261CFD6B4();
  v63 = sub_261AFF5F4();
  v119 = MEMORY[0x2667199D0](v62, &type metadata for UpdateListBadgeAppIntent, v63);
  *(v56 + v117) = v119;
  v115 = v57[10];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD980, &qword_261D01488);
  sub_261CFF9B4();
  sub_261CFD874();
  v61(v51, v59, v60);
  v64 = v156;
  sub_261CFD6B4();
  v65 = sub_261AE694C(&qword_280D22670, type metadata accessor for GroupEntity, &protocol conformance descriptor for GroupEntity);
  v117 = MEMORY[0x2667199D0](v64, &type metadata for UpdateListParentAppIntent, v65);
  *(v56 + v115) = v117;
  v114 = v57[11];
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD990, &qword_261D01490);
  sub_261CFF9B4();
  sub_261CFD874();
  v66 = v160;
  v67 = v159;
  v68 = v152;
  v152(v51, v160, v159);
  sub_261CFD6B4();
  v115 = sub_261CFCA84();
  *(v161 + v114) = v115;
  v113 = v57[12];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB050, &qword_261D01498);
  sub_261CFF9B4();
  sub_261CFD874();
  v68(v51, v66, v67);
  sub_261CFD6B4();
  sub_261AE694C(&qword_280D224E0, type metadata accessor for SectionEntity, &protocol conformance descriptor for SectionEntity);
  v114 = sub_261CFCA54();
  v69 = v161;
  *(v161 + v113) = v114;
  v70 = v157;
  v112 = v157[13];
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB060, &qword_261D014A0);
  sub_261CFF9B4();
  sub_261CFD874();
  v71 = v160;
  v68(v51, v160, v67);
  v72 = v156;
  sub_261CFD6B4();
  v113 = MEMORY[0x2667199F0](v72, &type metadata for UpdateListIsPinnedAppIntent);
  *(v69 + v112) = v113;
  v111 = v70[14];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9A0, &qword_261D014A8);
  sub_261CFF9B4();
  sub_261CFD874();
  v68(v51, v71, v67);
  v73 = v156;
  sub_261CFD6B4();
  v112 = MEMORY[0x2667199F0](v73, &type metadata for UpdateListShowsCompletedAppIntent);
  *(v69 + v111) = v112;
  v74 = v69;
  v110 = v70[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDB070, &unk_261D014B0);
  sub_261CFF9B4();
  sub_261CFD874();
  v75 = v160;
  v76 = v159;
  v68(v51, v160, v159);
  sub_261CFD6B4();
  v111 = MEMORY[0x2667199F0](v73, &type metadata for UpdateListAutoCategorizeAppIntent);
  *(v74 + v110) = v111;
  v109 = v70[16];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9B0, &qword_261D03F00);
  sub_261CFF9B4();
  v107 = v58;
  sub_261CFD874();
  v68(v51, v75, v76);
  sub_261CFD6B4();
  v77 = sub_261AFF648();
  v110 = MEMORY[0x2667199C0](v73, &type metadata for UpdateListListLayoutAppIntent, v77);
  v78 = v161;
  *(v161 + v109) = v110;
  v108 = v70[17];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9C0, &unk_261D014C0);
  sub_261CFF9B4();
  sub_261CFD874();
  v79 = v152;
  v152(v51, v160, v76);
  sub_261CFD6B4();
  v80 = sub_261AFF69C();
  v109 = MEMORY[0x2667199C0](v73, &type metadata for UpdateListSortingStyleAppIntent, v80);
  *(v78 + v108) = v109;
  v81 = v70[18];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9D0, &qword_261D03B00);
  sub_261CFF9B4();
  sub_261CFD874();
  v79(v51, v160, v159);
  sub_261CFD6B4();
  v82 = MEMORY[0x2667199C0](v73, &type metadata for UpdateListTypeAppIntent, v116);
  *(v78 + v81) = v82;
  v83 = (v78 + v70[19]);
  *v83 = 0;
  v83[1] = 0;
  v160 = v83;
  v84 = v70[20];
  v158 = v82;
  v159 = v84;
  *(v78 + v84) = 0;
  sub_261B01DC4(v151, v78 + v70[5], type metadata accessor for AppEntityID);
  v85 = v118;
  *(v78 + v70[21]) = v118;
  if (v85 == 1)
  {
    v86 = sub_261D00614();
  }

  else
  {
    v86 = 1;
  }

  LODWORD(v156) = v122 & 1;
  v87 = v86 & 1;
  type metadata accessor for AnyListEntityLazyImage(0);
  v88 = swift_allocObject();
  v162 = MEMORY[0x277D84F90];
  v89 = v128;
  v90 = v121;
  sub_261AF9C0C(v155, v154, v153, v128, v121);
  v91 = v127;
  v92 = v146;
  sub_261AF9844(v127, v149, v148, v147, v146, v145, v144);
  sub_261AE694C(&qword_280D22D90, MEMORY[0x277D44D10], MEMORY[0x277D44D18]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27FEDD9E0, &qword_261D014D0);
  sub_261B01D28(&qword_280D21E20, &unk_27FEDD9E0, &qword_261D014D0, MEMORY[0x277D83970]);
  sub_261D001D4();
  sub_261CFECB4();
  swift_allocObject();
  *(v88 + 128) = sub_261CFECA4();
  v93 = OBJC_IVAR____TtC19RemindersAppIntents22AnyListEntityLazyImage_cachedDisplayRepresentationImage;
  v94 = sub_261CFD074();
  (*(*(v94 - 8) + 56))(v88 + v93, 1, 1, v94);
  *(v88 + 16) = v87;
  *(v88 + 17) = *v169;
  *(v88 + 20) = *&v169[3];
  v95 = v154;
  *(v88 + 24) = v155;
  *(v88 + 32) = v95;
  *(v88 + 40) = v153;
  *(v88 + 48) = v89;
  *(v88 + 56) = v90;
  *(v88 + 64) = v91;
  v96 = v149;
  v97 = v148;
  *(v88 + 72) = v149;
  *(v88 + 80) = v97;
  v98 = v147;
  *(v88 + 88) = v147;
  *(v88 + 96) = v92;
  v99 = v145;
  v100 = v144;
  *(v88 + 104) = v145;
  *(v88 + 112) = v100;
  *(v88 + 120) = v156;
  *(v88 + 121) = 1;
  *(v161 + v157[22]) = v88;
  LOBYTE(v162) = v131 & 1;
  sub_261CFD2E4();
  LOBYTE(v162) = v132 & 1;
  sub_261CFD2E4();
  LOBYTE(v162) = v133 & 1;
  sub_261CFD2E4();
  LOBYTE(v162) = v123;
  sub_261CFD2E4();
  LOBYTE(v162) = v124;
  sub_261CFD2E4();
  LOBYTE(v162) = v150;
  sub_261CFD2E4();
  v162 = v91;
  v163 = v96;
  v164 = v97;
  v165 = v98;
  v166 = v146;
  v167 = v99;
  v168 = v100;
  sub_261CFD2E4();
  v162 = v155;
  v163 = v154;
  v164 = v153;
  v165 = v89;
  v166 = v90;
  sub_261CFD2E4();
  v101 = v143;
  v102 = v134;
  sub_261AFB668(v143, v134, &unk_27FEDD950, &unk_261D01440);
  sub_261AFB668(v102, v135, &unk_27FEDD950, &unk_261D01440);
  sub_261CFD2E4();
  sub_261AE6A40(v102, &unk_27FEDD950, &unk_261D01440);
  v103 = v159;
  v104 = v160;
  v105 = v136;
  *v160 = v140;
  v104[1] = v105;
  *(v161 + v103) = v137;
  v162 = v138;
  sub_261CFCA14();
  v162 = v139;
  sub_261CFCA14();
  v162 = v141;
  v163 = v142;
  sub_261CFCA14();
  LOBYTE(v162) = v150 & 1;
  sub_261CFCA14();
  sub_261AE6A40(v101, &unk_27FEDD950, &unk_261D01440);
  return sub_261B013AC(v151, type metadata accessor for AppEntityID);
}

uint64_t sub_261AFE6DC@<X0>(void *a1@<X8>)
{
  if (qword_27FED9800 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FED9F88;
  return sub_261CFCDA4();
}

uint64_t static ListEntity.defaultQuery.getter@<X0>(void *a1@<X8>)
{
  if (qword_27FED9800 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_27FED9F88;
  return sub_261CFCDA4();
}

uint64_t sub_261AFE840@<X0>(void *a1@<X2>, uint64_t a2@<X3>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_261CFD234();
  v7 = __swift_project_value_buffer(v6, a2);
  swift_beginAccess();
  return (*(*(v6 - 8) + 16))(a4, v7, v6);
}

uint64_t sub_261AFE8EC(uint64_t a1)
{
  v2 = sub_261AE694C(&qword_280D227A0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t sub_261AFE96C(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_261AF43A8;

  return ListEntity.displayRepresentation(with:)(a1, a2);
}

uint64_t sub_261AFEA14(uint64_t a1)
{
  v2 = sub_261AE694C(&qword_280D22770, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t sub_261AFEA90()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA120, &qword_261D02820);
  sub_261AE4630();
  sub_261D002D4();
  sub_261CFC6B4();
  sub_261CFC6A4();
  result = sub_261CFC684();
  qword_27FED9F88 = result;
  return result;
}

uint64_t static ListEntity.defaultQuery.setter(uint64_t *a1)
{
  v1 = *a1;
  if (qword_27FED9800 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_27FED9F88 = v1;
}

uint64_t (*static ListEntity.defaultQuery.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_27FED9800 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j_j__swift_endAccess;
}

uint64_t static ListEntity.transferRepresentation.getter()
{
  v0 = type metadata accessor for ListEntity(0);
  v1 = sub_261AE694C(&qword_27FED9FA0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);

  return MEMORY[0x28210DE00](sub_261AFECB0, 0, v0, v1);
}

void sub_261AFECB0(uint64_t a1)
{
  v2 = type metadata accessor for ListEntity(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = *(a1 + *(MEMORY[0x28223BE20](v2) + 76));
  if (v5 && (v6 = v5()) != 0)
  {
    v7 = v6;
    v8 = *(a1 + *(v2 + 80));
    if (v8)
    {
      v9 = objc_opt_self();
      v10 = v8;
      v11 = [v9 standardOptions];
      sub_261AE694C(&qword_27FED9FA0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
      sub_261CFF884();
    }

    else
    {
      sub_261B01DC4(a1, v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for ListEntity);
      v13 = (*(v3 + 80) + 16) & ~*(v3 + 80);
      v14 = swift_allocObject();
      sub_261B01E2C(v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v14 + v13);
      v15 = [objc_opt_self() standardOptions];
      sub_261AE694C(&qword_27FED9FA0, type metadata accessor for ListEntity, &protocol conformance descriptor for ListEntity);
      sub_261CFF874();
    }
  }

  else
  {
    sub_261B01D70();
    swift_allocError();
    *v12 = 12;
    swift_willThrow();
  }
}

uint64_t sub_261AFEF58(uint64_t a1)
{
  *(v1 + 24) = a1;

  return MEMORY[0x2822009F8](sub_261AFEFE8, 0, 0);
}

uint64_t sub_261AFEFE8()
{
  v1 = [objc_allocWithZone(MEMORY[0x277D44850]) init];
  type metadata accessor for ListEntity(0);
  type metadata accessor for AppEntityID(0);
  v2 = objc_allocWithZone(MEMORY[0x277D44700]);
  v3 = sub_261CFD814();
  v4 = sub_261CFFA54();
  v5 = [v2 initWithUUID:v3 entityName:v4];

  *(v0 + 16) = 0;
  v6 = [v1 createShareForListWithID:v5 appIconData:0 error:v0 + 16];

  if (*(v0 + 16))
  {
    *(v0 + 16);

    swift_willThrow();
    v15 = *(v0 + 8);

    return v15();
  }

  else
  {
    sub_261D00334();

    v7 = objc_allocWithZone(MEMORY[0x277D44700]);
    v8 = sub_261CFD814();
    v9 = sub_261CFFA54();
    v10 = [v7 initWithUUID:v8 entityName:v9];

    v11 = [v10 description];
    v12 = sub_261CFFA74();
    v14 = v13;

    MEMORY[0x26671C210](v12, v14);

    v17 = sub_261CF3338(0xD000000000000028, 0x8000000261D148B0, 0xD00000000000006ALL, 0x8000000261D148E0, 383, v6);

    v18 = *(v0 + 8);

    return v18(v17);
  }
}

uint64_t ListEntity.ListKind.localizedStringResource.getter()
{
  v0 = sub_261CFD674();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_261CFD884();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = sub_261CFFA44();
  MEMORY[0x28223BE20](v5 - 8);
  sub_261CFF9B4();
  sub_261CFD874();
  (*(v1 + 104))(v3, *MEMORY[0x277CC9110], v0);
  return sub_261CFD6C4();
}

unint64_t sub_261AFF54C()
{
  result = qword_27FEDB010;
  if (!qword_27FEDB010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB010);
  }

  return result;
}

unint64_t sub_261AFF5A0()
{
  result = qword_27FEDB030;
  if (!qword_27FEDB030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB030);
  }

  return result;
}

unint64_t sub_261AFF5F4()
{
  result = qword_27FEDB040;
  if (!qword_27FEDB040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB040);
  }

  return result;
}

unint64_t sub_261AFF648()
{
  result = qword_27FEDB080;
  if (!qword_27FEDB080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB080);
  }

  return result;
}

unint64_t sub_261AFF69C()
{
  result = qword_27FEDB090;
  if (!qword_27FEDB090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDB090);
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

unint64_t sub_261AFF73C()
{
  result = qword_27FED9FA8;
  if (!qword_27FED9FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FA8);
  }

  return result;
}

unint64_t sub_261AFF7D8()
{
  result = qword_27FED9FC0;
  if (!qword_27FED9FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FC0);
  }

  return result;
}

unint64_t sub_261AFF82C(uint64_t a1)
{
  result = sub_261AFF854();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261AFF854()
{
  result = qword_27FED9FC8;
  if (!qword_27FED9FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FC8);
  }

  return result;
}

unint64_t sub_261AFF8AC()
{
  result = qword_27FED9FD0;
  if (!qword_27FED9FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FD0);
  }

  return result;
}

unint64_t sub_261AFF904()
{
  result = qword_27FED9FD8;
  if (!qword_27FED9FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FD8);
  }

  return result;
}

unint64_t sub_261AFF95C()
{
  result = qword_27FED9FE0;
  if (!qword_27FED9FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FE0);
  }

  return result;
}

unint64_t sub_261AFFA04()
{
  result = qword_27FED9FF8;
  if (!qword_27FED9FF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FED9FF8);
  }

  return result;
}

unint64_t sub_261AFFA58()
{
  result = qword_27FEDA000;
  if (!qword_27FEDA000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA000);
  }

  return result;
}

unint64_t sub_261AFFAAC()
{
  result = qword_280D227B8;
  if (!qword_280D227B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D227B8);
  }

  return result;
}

unint64_t sub_261AFFB04()
{
  result = qword_27FEDA008;
  if (!qword_27FEDA008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA008);
  }

  return result;
}

unint64_t sub_261AFFB74()
{
  result = qword_27FEDA010;
  if (!qword_27FEDA010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA010);
  }

  return result;
}

unint64_t sub_261AFFBD0()
{
  result = qword_27FEDA018;
  if (!qword_27FEDA018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA018);
  }

  return result;
}

unint64_t sub_261AFFC28()
{
  result = qword_27FEDA020;
  if (!qword_27FEDA020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA020);
  }

  return result;
}

unint64_t sub_261AFFC7C(uint64_t a1)
{
  result = sub_261AFFCA4();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261AFFCA4()
{
  result = qword_27FEDA028;
  if (!qword_27FEDA028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA028);
  }

  return result;
}

unint64_t sub_261AFFCFC()
{
  result = qword_27FEDA030;
  if (!qword_27FEDA030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA030);
  }

  return result;
}

unint64_t sub_261AFFD54()
{
  result = qword_27FEDA038;
  if (!qword_27FEDA038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA038);
  }

  return result;
}

unint64_t sub_261AFFDAC()
{
  result = qword_27FEDA040;
  if (!qword_27FEDA040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA040);
  }

  return result;
}

unint64_t sub_261AFFE48()
{
  result = qword_27FEDA058;
  if (!qword_27FEDA058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA058);
  }

  return result;
}

unint64_t sub_261AFFE9C()
{
  result = qword_27FEDA060;
  if (!qword_27FEDA060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA060);
  }

  return result;
}

unint64_t sub_261AFFEF0()
{
  result = qword_280D227C0;
  if (!qword_280D227C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D227C0);
  }

  return result;
}

unint64_t sub_261AFFF48()
{
  result = qword_27FEDA068;
  if (!qword_27FEDA068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA068);
  }

  return result;
}

unint64_t sub_261AFFFB8()
{
  result = qword_27FEDA070;
  if (!qword_27FEDA070)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA070);
  }

  return result;
}

unint64_t sub_261B00014()
{
  result = qword_27FEDA078;
  if (!qword_27FEDA078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA078);
  }

  return result;
}

unint64_t sub_261B0006C()
{
  result = qword_27FEDA080;
  if (!qword_27FEDA080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA080);
  }

  return result;
}

unint64_t sub_261B000C0(uint64_t a1)
{
  result = sub_261B000E8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_261B000E8()
{
  result = qword_27FEDA088;
  if (!qword_27FEDA088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA088);
  }

  return result;
}

unint64_t sub_261B00140()
{
  result = qword_27FEDA090;
  if (!qword_27FEDA090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA090);
  }

  return result;
}

unint64_t sub_261B00198()
{
  result = qword_27FEDA098;
  if (!qword_27FEDA098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA098);
  }

  return result;
}

unint64_t sub_261B001F0()
{
  result = qword_27FEDA0A0;
  if (!qword_27FEDA0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0A0);
  }

  return result;
}

unint64_t sub_261B0028C()
{
  result = qword_27FEDA0B8;
  if (!qword_27FEDA0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0B8);
  }

  return result;
}

unint64_t sub_261B002E0()
{
  result = qword_27FEDA0C0;
  if (!qword_27FEDA0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0C0);
  }

  return result;
}

unint64_t sub_261B00334()
{
  result = qword_280D227B0;
  if (!qword_280D227B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280D227B0);
  }

  return result;
}

unint64_t sub_261B0038C()
{
  result = qword_27FEDA0C8;
  if (!qword_27FEDA0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0C8);
  }

  return result;
}

unint64_t sub_261B00450()
{
  result = qword_27FEDA0D0;
  if (!qword_27FEDA0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0D0);
  }

  return result;
}

unint64_t sub_261B004AC()
{
  result = qword_27FEDA0D8;
  if (!qword_27FEDA0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0D8);
  }

  return result;
}

unint64_t sub_261B0054C()
{
  result = qword_27FEDA0E8;
  if (!qword_27FEDA0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDA0E8);
  }

  return result;
}

void *initializeBufferWithCopyOfBuffer for ListEntity(void *a1, void *a2, int *a3)
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
    v8 = a3[5];
    v9 = a1 + v8;
    v10 = a2 + v8;
    v11 = *(a2 + v8 + 8);
    *v9 = *(a2 + v8);
    *(v9 + 1) = v11;
    v12 = type metadata accessor for AppEntityID(0);
    v13 = *(v12 + 20);
    v14 = sub_261CFD844();
    v37 = *(*(v14 - 8) + 16);
    sub_261CFCDA4();
    sub_261CFD104();
    v37(&v9[v13], &v10[v13], v14);
    v15 = *(v12 + 24);
    v16 = &v9[v15];
    v17 = &v10[v15];
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

    v22 = a3[7];
    *(v7 + a3[6]) = *(a2 + a3[6]);
    *(v7 + v22) = *(a2 + v22);
    v23 = a3[9];
    *(v7 + a3[8]) = *(a2 + a3[8]);
    *(v7 + v23) = *(a2 + v23);
    v24 = a3[11];
    *(v7 + a3[10]) = *(a2 + a3[10]);
    *(v7 + v24) = *(a2 + v24);
    v25 = a3[13];
    *(v7 + a3[12]) = *(a2 + a3[12]);
    *(v7 + v25) = *(a2 + v25);
    v26 = a3[15];
    *(v7 + a3[14]) = *(a2 + a3[14]);
    *(v7 + v26) = *(a2 + v26);
    v27 = a3[17];
    *(v7 + a3[16]) = *(a2 + a3[16]);
    *(v7 + v27) = *(a2 + v27);
    v28 = a3[19];
    *(v7 + a3[18]) = *(a2 + a3[18]);
    v38 = (v7 + v28);
    v36 = a2 + v28;
    v35 = *(a2 + v28);
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
    if (v35)
    {
      v29 = *(v36 + 1);
      *v38 = v35;
      v38[1] = v29;
      sub_261CFCDA4();
    }

    else
    {
      *v38 = *v36;
    }

    v30 = a3[20];
    v31 = a3[21];
    v32 = *(a2 + v30);
    *(v7 + v30) = v32;
    *(v7 + v31) = *(a2 + v31);
    *(v7 + a3[22]) = *(a2 + a3[22]);
    v33 = v32;
  }

  sub_261CFCDA4();
  return v7;
}

uint64_t destroy for ListEntity(void *a1, int *a2)
{

  v4 = a1 + a2[5];

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

  if (*(a1 + a2[19]))
  {
  }
}

void *initializeWithCopy for ListEntity(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a2 + v6 + 8);
  *v7 = *(a2 + v6);
  *(v7 + 1) = v9;
  v10 = type metadata accessor for AppEntityID(0);
  v11 = *(v10 + 20);
  v12 = sub_261CFD844();
  v35 = *(*(v12 - 8) + 16);
  sub_261CFCDA4();
  sub_261CFD104();
  v35(&v7[v11], &v8[v11], v12);
  v13 = *(v10 + 24);
  v14 = &v7[v13];
  v15 = &v8[v13];
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
    (*(*(v19 - 8) + 16))(v14, v15, v19);
    v14[*(v16 + 20)] = v15[*(v16 + 20)];
    (*(v17 + 56))(v14, 0, 1, v16);
  }

  v20 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v20) = *(a2 + v20);
  v21 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v21) = *(a2 + v21);
  v22 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v22) = *(a2 + v22);
  v23 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v23) = *(a2 + v23);
  v24 = a3[15];
  *(a1 + a3[14]) = *(a2 + a3[14]);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[17];
  *(a1 + a3[16]) = *(a2 + a3[16]);
  *(a1 + v25) = *(a2 + v25);
  v26 = a3[19];
  *(a1 + a3[18]) = *(a2 + a3[18]);
  v36 = (a1 + v26);
  v34 = a2 + v26;
  v33 = *(a2 + v26);
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
  if (v33)
  {
    v27 = *(v34 + 1);
    *v36 = v33;
    v36[1] = v27;
    sub_261CFCDA4();
  }

  else
  {
    *v36 = *v34;
  }

  v28 = a3[20];
  v29 = a3[21];
  v30 = *(a2 + v28);
  *(a1 + v28) = v30;
  *(a1 + v29) = *(a2 + v29);
  *(a1 + a3[22]) = *(a2 + a3[22]);
  v31 = v30;
  sub_261CFCDA4();
  return a1;
}

void *assignWithCopy for ListEntity(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  sub_261CFCDA4();

  v6 = a3[5];
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
  if (v10)
  {
    if (!v18)
    {
      v19 = sub_261CFD4E4();
      (*(*(v19 - 8) + 16))(v13, v14, v19);
      v13[*(v15 + 20)] = v14[*(v15 + 20)];
      (*(v16 + 56))(v13, 0, 1, v15);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v18)
  {
    sub_261B013AC(v13, type metadata accessor for RecurrentInstanceSpecifier);
LABEL_6:
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v13, v14, *(*(v20 - 8) + 64));
    goto LABEL_7;
  }

  v33 = sub_261CFD4E4();
  (*(*(v33 - 8) + 24))(v13, v14, v33);
  v13[*(v15 + 20)] = v14[*(v15 + 20)];
LABEL_7:
  *(a1 + a3[6]) = *(a2 + a3[6]);
  sub_261CFCDA4();

  *(a1 + a3[7]) = *(a2 + a3[7]);
  sub_261CFCDA4();

  *(a1 + a3[8]) = *(a2 + a3[8]);
  sub_261CFCDA4();

  *(a1 + a3[9]) = *(a2 + a3[9]);
  sub_261CFCDA4();

  *(a1 + a3[10]) = *(a2 + a3[10]);
  sub_261CFCDA4();

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

  v21 = a3[19];
  v22 = (a1 + v21);
  v23 = a2 + v21;
  v24 = *(a1 + v21);
  v25 = *(a2 + v21);
  if (!v24)
  {
    if (v25)
    {
      v27 = *(v23 + 1);
      *v22 = v25;
      v22[1] = v27;
      sub_261CFCDA4();
      goto LABEL_14;
    }

LABEL_13:
    *v22 = *v23;
    goto LABEL_14;
  }

  if (!v25)
  {

    goto LABEL_13;
  }

  v26 = *(v23 + 1);
  *v22 = v25;
  v22[1] = v26;
  sub_261CFCDA4();

LABEL_14:
  v28 = a3[20];
  v29 = *(a1 + v28);
  v30 = *(a2 + v28);
  *(a1 + v28) = v30;
  v31 = v30;

  *(a1 + a3[21]) = *(a2 + a3[21]);
  *(a1 + a3[22]) = *(a2 + a3[22]);
  sub_261CFCDA4();

  return a1;
}

uint64_t sub_261B013AC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void *initializeWithTake for ListEntity(void *a1, void *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = a1 + v6;
  v8 = a2 + v6;
  *(a1 + v6) = *(a2 + v6);
  v9 = type metadata accessor for AppEntityID(0);
  v10 = *(v9 + 20);
  v11 = sub_261CFD844();
  (*(*(v11 - 8) + 32))(&v7[v10], &v8[v10], v11);
  v12 = *(v9 + 24);
  v13 = &v7[v12];
  v14 = &v8[v12];
  v15 = type metadata accessor for RecurrentInstanceSpecifier(0);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15))
  {
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v13, v14, *(*(v17 - 8) + 64));
  }

  else
  {
    v18 = sub_261CFD4E4();
    (*(*(v18 - 8) + 32))(v13, v14, v18);
    v13[*(v15 + 20)] = v14[*(v15 + 20)];
    (*(v16 + 56))(v13, 0, 1, v15);
  }

  v19 = a3[7];
  *(a1 + a3[6]) = *(a2 + a3[6]);
  *(a1 + v19) = *(a2 + v19);
  v20 = a3[9];
  *(a1 + a3[8]) = *(a2 + a3[8]);
  *(a1 + v20) = *(a2 + v20);
  v21 = a3[11];
  *(a1 + a3[10]) = *(a2 + a3[10]);
  *(a1 + v21) = *(a2 + v21);
  v22 = a3[13];
  *(a1 + a3[12]) = *(a2 + a3[12]);
  *(a1 + v22) = *(a2 + v22);
  v23 = a3[15];
  *(a1 + a3[14]) = *(a2 + a3[14]);
  *(a1 + v23) = *(a2 + v23);
  v24 = a3[17];
  *(a1 + a3[16]) = *(a2 + a3[16]);
  *(a1 + v24) = *(a2 + v24);
  v25 = a3[19];
  *(a1 + a3[18]) = *(a2 + a3[18]);
  *(a1 + v25) = *(a2 + v25);
  v26 = a3[21];
  *(a1 + a3[20]) = *(a2 + a3[20]);
  *(a1 + v26) = *(a2 + v26);
  *(a1 + a3[22]) = *(a2 + a3[22]);
  return a1;
}

void *assignWithTake for ListEntity(void *a1, void *a2, int *a3)
{
  *a1 = *a2;

  v6 = a3[5];
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
  if (v11)
  {
    if (!v19)
    {
      v20 = sub_261CFD4E4();
      (*(*(v20 - 8) + 32))(v14, v15, v20);
      v14[*(v16 + 20)] = v15[*(v16 + 20)];
      (*(v17 + 56))(v14, 0, 1, v16);
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  if (v19)
  {
    sub_261B013AC(v14, type metadata accessor for RecurrentInstanceSpecifier);
LABEL_6:
    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA108, &unk_261D020C0);
    memcpy(v14, v15, *(*(v21 - 8) + 64));
    goto LABEL_7;
  }

  v33 = sub_261CFD4E4();
  (*(*(v33 - 8) + 40))(v14, v15, v33);
  v14[*(v16 + 20)] = v15[*(v16 + 20)];
LABEL_7:
  *(a1 + a3[6]) = *(a2 + a3[6]);

  *(a1 + a3[7]) = *(a2 + a3[7]);

  *(a1 + a3[8]) = *(a2 + a3[8]);

  *(a1 + a3[9]) = *(a2 + a3[9]);

  *(a1 + a3[10]) = *(a2 + a3[10]);

  *(a1 + a3[11]) = *(a2 + a3[11]);

  *(a1 + a3[12]) = *(a2 + a3[12]);

  *(a1 + a3[13]) = *(a2 + a3[13]);

  *(a1 + a3[14]) = *(a2 + a3[14]);

  *(a1 + a3[15]) = *(a2 + a3[15]);

  *(a1 + a3[16]) = *(a2 + a3[16]);

  *(a1 + a3[17]) = *(a2 + a3[17]);

  *(a1 + a3[18]) = *(a2 + a3[18]);

  v22 = a3[19];
  v23 = (a1 + v22);
  v24 = a2 + v22;
  v25 = *(a1 + v22);
  v26 = *(a2 + v22);
  if (!v25)
  {
    if (v26)
    {
      v28 = *(v24 + 1);
      *v23 = v26;
      v23[1] = v28;
      goto LABEL_14;
    }

LABEL_13:
    *v23 = *v24;
    goto LABEL_14;
  }

  if (!v26)
  {

    goto LABEL_13;
  }

  v27 = *(v24 + 1);
  *v23 = v26;
  v23[1] = v27;

LABEL_14:
  v29 = a3[20];
  v30 = *(a1 + v29);
  *(a1 + v29) = *(a2 + v29);

  v31 = a3[22];
  *(a1 + a3[21]) = *(a2 + a3[21]);
  *(a1 + v31) = *(a2 + v31);

  return a1;
}

uint64_t getEnumTagSinglePayload for RemindersAppIntentCategory(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for RemindersAppIntentCategory(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for ListEntity.SortingStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ListEntity.SortingStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_261B01D28(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
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

unint64_t sub_261B01D70()
{
  result = qword_27FEDE0E0;
  if (!qword_27FEDE0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FEDE0E0);
  }

  return result;
}

uint64_t sub_261B01DC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_261B01E2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ListEntity(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_261B01E90()
{
  v2 = *(type metadata accessor for ListEntity(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_261B01F5C;

  return sub_261AFEF58(v0 + v3);
}

uint64_t sub_261B01F5C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t sub_261B02094()
{
  v0 = sub_261CFD674();
  __swift_allocate_value_buffer(v0, qword_280D27028);
  v1 = __swift_project_value_buffer(v0, qword_280D27028);
  *v1 = type metadata accessor for LookupClass();
  v2 = *MEMORY[0x277CC9120];
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_261B02164()
{
  v0 = sub_261CFF7A4();
  __swift_allocate_value_buffer(v0, qword_27FEDA148);
  v1 = __swift_project_value_buffer(v0, qword_27FEDA148);
  if (qword_280D22880 != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, qword_280D26FF8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t RemindersInCalendarUtilities.ReminderSpecifier.dueDateOfRecurrentInstance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);

  return sub_261B022C4(v3, a1);
}

uint64_t type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(uint64_t a1)
{
  result = qword_27FEDA180;
  if (!qword_27FEDA180)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_261B022C4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t RemindersInCalendarUtilities.ReminderSpecifier.init(reminderID:dueDateOfRecurrentInstance:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = a1;
  v4 = a3 + *(type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0) + 20);

  return sub_261B02380(a2, v4);
}

uint64_t sub_261B02380(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t RemindersInCalendarUtilities.ReminderSpecifier.description.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v18 - v3;
  v5 = sub_261CFD4E4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  sub_261B022C4(v1 + *(v9 + 20), v4);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_261AE6A40(v4, &qword_27FEDA160, &qword_261D02220);
    v10 = [*v1 description];
    v11 = sub_261CFFA74();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v18 = 0;
    v19 = 0xE000000000000000;
    sub_261D00334();

    v18 = 0x203A64697BLL;
    v19 = 0xE500000000000000;
    v12 = [*v1 description];
    v13 = sub_261CFFA74();
    v15 = v14;

    MEMORY[0x26671C210](v13, v15);

    MEMORY[0x26671C210](0x746144657564202CLL, 0xEB00000000203A65);
    sub_261B05068(&qword_27FEDA168, MEMORY[0x277CC8990], MEMORY[0x277CC89C0]);
    v16 = sub_261D005F4();
    MEMORY[0x26671C210](v16);

    MEMORY[0x26671C210](125, 0xE100000000000000);
    v11 = v18;
    (*(v6 + 8))(v8, v5);
  }

  return v11;
}

id sub_261B026B0(void *a1, int a2)
{
  LODWORD(v78) = a2;
  v4 = sub_261CFD7E4();
  v81 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5);
  v10 = &v73 - v9;
  v11 = MEMORY[0x28223BE20](v8);
  v79 = &v73 - v12;
  v13 = MEMORY[0x28223BE20](v11);
  v15 = &v73 - v14;
  MEMORY[0x28223BE20](v13);
  v80 = &v73 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FEDA160, &qword_261D02220);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v73 - v18;
  v20 = sub_261CFD4E4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v73 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for RemindersInCalendarUtilities.ReminderSpecifier(0);
  sub_261B022C4(v2 + *(v24 + 20), v19);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_261AE6A40(v19, &qword_27FEDA160, &qword_261D02220);
    return 0;
  }

  v77 = v4;
  (*(v21 + 32))(v23, v19, v20);
  v25 = objc_allocWithZone(MEMORY[0x277D44600]);
  v26 = sub_261CFD464();
  sub_261B05020(0, &qword_27FEDA1A0, 0x277D44570);
  v27 = sub_261CFFC54();
  v28 = [v25 initWithDueDateComponents:v26 alarms:v27];

  if (v28)
  {
    v29 = [a1 displayDate];
    if (v29)
    {
      v30 = v29;
      v31 = [v29 date];

      sub_261CFD7C4();
      v32 = v80;
      (*(v81 + 32))(v80, v15, v77);
      if ([a1 isRecurrent])
      {
        v33 = [v28 date];
        v34 = v79;
        sub_261CFD7C4();

        sub_261CFD784();
        if (v35 > 0.0)
        {
          v36 = *(v81 + 8);
          v37 = v77;
          v36(v34, v77);
          v36(v32, v37);
          goto LABEL_8;
        }

        v49 = v81;
        if (fabs(v35) < 0.0000000149011612)
        {
          v50 = *(v81 + 8);
          v51 = v77;
          v50(v34, v77);
          v50(v32, v51);
          (*(v21 + 8))(v23, v20);
          if ((v78 & 1) == 0)
          {
            return v28;
          }

          return 0;
        }

        if (qword_27FED9810 != -1)
        {
          swift_once();
        }

        v52 = sub_261CFF7A4();
        __swift_project_value_buffer(v52, qword_27FEDA148);
        v53 = *(v49 + 16);
        v54 = v34;
        v55 = v77;
        v53(v10, v54, v77);
        v53(v7, v80, v55);
        v56 = sub_261CFF784();
        v57 = sub_261CFFE64();
        if (os_log_type_enabled(v56, v57))
        {
          v58 = swift_slowAlloc();
          v74 = v58;
          v78 = swift_slowAlloc();
          v82 = v78;
          *v58 = 136315394;
          v73 = sub_261B05068(&qword_27FEDA198, MEMORY[0x277CC9578], MEMORY[0x277CC95B8]);
          v76 = v56;
          v59 = sub_261D005F4();
          v75 = v57;
          v61 = v60;
          v81 = *(v81 + 8);
          (v81)(v10, v55);
          v62 = sub_261B879C8(v59, v61, &v82);

          v63 = v74;
          *(v74 + 1) = v62;
          *(v63 + 6) = 2080;
          v64 = sub_261D005F4();
          v66 = v65;
          v67 = v7;
          v68 = v81;
          (v81)(v67, v55);
          v69 = sub_261B879C8(v64, v66, &v82);

          *(v63 + 14) = v69;
          v70 = v76;
          _os_log_impl(&dword_261AE2000, v76, v75, "RemindersInCalendar: invalid due date of recurrent instance; date is earlier than due date {date: %s, originalDueDate: %s}", v63, 0x16u);
          v71 = v78;
          swift_arrayDestroy();
          MEMORY[0x26671D560](v71, -1, -1);
          MEMORY[0x26671D560](v63, -1, -1);

          v68(v79, v55);
          v68(v80, v55);
        }

        else
        {

          v72 = *(v81 + 8);
          v72(v7, v55);
          v72(v10, v55);
          v72(v79, v55);
          v72(v80, v55);
        }
      }

      else
      {
        if (qword_27FED9810 != -1)
        {
          swift_once();
        }

        v42 = sub_261CFF7A4();
        __swift_project_value_buffer(v42, qword_27FEDA148);
        v43 = sub_261CFF784();
        v44 = sub_261CFFE64();
        v45 = os_log_type_enabled(v43, v44);
        v46 = v80;
        if (v45)
        {
          v47 = swift_slowAlloc();
          *v47 = 0;
          _os_log_impl(&dword_261AE2000, v43, v44, "RemindersInCalendar: invalid due date of recurrent instance; reminder is not recurrent", v47, 2u);
          MEMORY[0x26671D560](v47, -1, -1);
        }

        (*(v81 + 8))(v46, v77);
      }
    }

    else
    {
      if (qword_27FED9810 != -1)
      {
        swift_once();
      }

      v38 = sub_261CFF7A4();
      __swift_project_value_buffer(v38, qword_27FEDA148);
      v39 = sub_261CFF784();
      v40 = sub_261CFFE64();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_261AE2000, v39, v40, "RemindersInCalendar: invalid due date of recurrent instance; reminder does not have due date", v41, 2u);
        MEMORY[0x26671D560](v41, -1, -1);
      }
    }

    (*(v21 + 8))(v23, v20);
    return 0;
  }

LABEL_8:
  (*(v21 + 8))(v23, v20);
  return v28;
}